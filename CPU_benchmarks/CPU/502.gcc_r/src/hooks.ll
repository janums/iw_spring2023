; ModuleID = 'hooks.bc'
source_filename = "hooks.c"
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
%struct.rtx_def = type opaque
%union.tree_node = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !146 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !159, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !160, metadata !DIExpression()), !dbg !161
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !162
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !163
  ret i32 %call, !dbg !164
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !165 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !169
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !170
  ret i32 %call, !dbg !171
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !172 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !235, metadata !DIExpression()), !dbg !236
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !237
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !237
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !237
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !237
  %cmp = icmp uge i8* %0, %1, !dbg !237
  %conv1 = zext i1 %cmp to i64, !dbg !237
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !237
  %tobool = icmp eq i64 %expval, 0, !dbg !237
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !237

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !237
  br label %cond.end, !dbg !237

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !237
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !237
  %2 = load i8, i8* %0, align 1, !dbg !237
  %conv3 = zext i8 %2 to i32, !dbg !237
  br label %cond.end, !dbg !237

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !237
  ret i32 %cond, !dbg !238
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !239 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !241, metadata !DIExpression()), !dbg !242
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !243
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !243
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !243
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !243
  %cmp = icmp uge i8* %0, %1, !dbg !243
  %conv1 = zext i1 %cmp to i64, !dbg !243
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !243
  %tobool = icmp eq i64 %expval, 0, !dbg !243
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !243

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !243
  br label %cond.end, !dbg !243

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !243
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !243
  %2 = load i8, i8* %0, align 1, !dbg !243
  %conv3 = zext i8 %2 to i32, !dbg !243
  br label %cond.end, !dbg !243

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !243
  ret i32 %cond, !dbg !244
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !245 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !246
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !246
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !246
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !246
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !246
  %cmp = icmp uge i8* %1, %2, !dbg !246
  %conv1 = zext i1 %cmp to i64, !dbg !246
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !246
  %tobool = icmp eq i64 %expval, 0, !dbg !246
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !246

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !246
  br label %cond.end, !dbg !246

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !246
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !246
  %3 = load i8, i8* %1, align 1, !dbg !246
  %conv3 = zext i8 %3 to i32, !dbg !246
  br label %cond.end, !dbg !246

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !246
  ret i32 %cond, !dbg !247
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !248 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !254
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !255
  ret i32 %call, !dbg !256
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !257 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !261, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !262, metadata !DIExpression()), !dbg !263
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !264
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !264
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !264
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !264
  %cmp = icmp uge i8* %0, %1, !dbg !264
  %conv1 = zext i1 %cmp to i64, !dbg !264
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !264
  %tobool = icmp eq i64 %expval, 0, !dbg !264
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !264

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !264
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !264
  br label %cond.end, !dbg !264

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !264
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !264
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !264
  store i8 %conv2, i8* %0, align 1, !dbg !264
  %conv6 = and i32 %__c, 255, !dbg !264
  br label %cond.end, !dbg !264

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !264
  ret i32 %cond, !dbg !265
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !266 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !268, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !269, metadata !DIExpression()), !dbg !270
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !271
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !271
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !271
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !271
  %cmp = icmp uge i8* %0, %1, !dbg !271
  %conv1 = zext i1 %cmp to i64, !dbg !271
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !271
  %tobool = icmp eq i64 %expval, 0, !dbg !271
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !271

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !271
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !271
  br label %cond.end, !dbg !271

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !271
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !271
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !271
  store i8 %conv2, i8* %0, align 1, !dbg !271
  %conv6 = and i32 %__c, 255, !dbg !271
  br label %cond.end, !dbg !271

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !271
  ret i32 %cond, !dbg !272
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !273 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !277
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !277
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !277
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !277
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !277
  %cmp = icmp uge i8* %1, %2, !dbg !277
  %conv1 = zext i1 %cmp to i64, !dbg !277
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !277
  %tobool = icmp eq i64 %expval, 0, !dbg !277
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !277

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !277
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !277
  br label %cond.end, !dbg !277

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !277
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !277
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !277
  store i8 %conv4, i8* %1, align 1, !dbg !277
  %conv6 = and i32 %__c, 255, !dbg !277
  br label %cond.end, !dbg !277

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !277
  ret i32 %cond, !dbg !278
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !279 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !285, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i64* %__n, metadata !286, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !287, metadata !DIExpression()), !dbg !288
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !289
  ret i64 %call, !dbg !290
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !291 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !293, metadata !DIExpression()), !dbg !294
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !295
  %0 = load i32, i32* %_flags, align 8, !dbg !295
  %and = lshr i32 %0, 4, !dbg !295
  %and.lobit = and i32 %and, 1, !dbg !295
  ret i32 %and.lobit, !dbg !296
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !297 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !299, metadata !DIExpression()), !dbg !300
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !301
  %0 = load i32, i32* %_flags, align 8, !dbg !301
  %and = lshr i32 %0, 5, !dbg !301
  %and.lobit = and i32 %and, 1, !dbg !301
  ret i32 %and.lobit, !dbg !302
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !303 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !306, metadata !DIExpression()), !dbg !307
  %__c.off = add i32 %__c, 128, !dbg !308
  %0 = icmp ult i32 %__c.off, 384, !dbg !308
  br i1 %0, label %cond.true, label %cond.end, !dbg !308

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !309
  %1 = load i32*, i32** %call, align 8, !dbg !310
  %idxprom = sext i32 %__c to i64, !dbg !311
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !311
  %2 = load i32, i32* %arrayidx, align 4, !dbg !311
  br label %cond.end, !dbg !312

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !312
  ret i32 %cond, !dbg !313
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !314 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !316, metadata !DIExpression()), !dbg !317
  %__c.off = add i32 %__c, 128, !dbg !318
  %0 = icmp ult i32 %__c.off, 384, !dbg !318
  br i1 %0, label %cond.true, label %cond.end, !dbg !318

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !319
  %1 = load i32*, i32** %call, align 8, !dbg !320
  %idxprom = sext i32 %__c to i64, !dbg !321
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !321
  %2 = load i32, i32* %arrayidx, align 4, !dbg !321
  br label %cond.end, !dbg !322

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !322
  ret i32 %cond, !dbg !323
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !324 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !329, metadata !DIExpression()), !dbg !330
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !331
  %conv = trunc i64 %call to i32, !dbg !332
  ret i32 %conv, !dbg !333
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !334 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !338, metadata !DIExpression()), !dbg !339
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !340
  ret i64 %call, !dbg !341
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !342 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !347, metadata !DIExpression()), !dbg !348
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !349
  ret i64 %call, !dbg !350
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !351 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !362, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i8* %__base, metadata !363, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !364, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %__size, metadata !365, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 0, metadata !367, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !368, metadata !DIExpression()), !dbg !372
  br label %while.cond, !dbg !373

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !374
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !372
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !368, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !367, metadata !DIExpression()), !dbg !372
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !375
  br i1 %cmp, label %while.body, label %cleanup, !dbg !373

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !376
  %div = lshr i64 %add, 1, !dbg !378
  call void @llvm.dbg.value(metadata i64 %div, metadata !369, metadata !DIExpression()), !dbg !372
  %mul = mul i64 %div, %__size, !dbg !379
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !380
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !370, metadata !DIExpression()), !dbg !372
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !381
  call void @llvm.dbg.value(metadata i32 %call, metadata !371, metadata !DIExpression()), !dbg !372
  %cmp1 = icmp slt i32 %call, 0, !dbg !382
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !384

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !385
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !387

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !388
  call void @llvm.dbg.value(metadata i64 %add4, metadata !367, metadata !DIExpression()), !dbg !372
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !372
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !372
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !368, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !367, metadata !DIExpression()), !dbg !372
  br label %while.cond, !dbg !373, !llvm.loop !389

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !372
  ret i8* %retval.0, !dbg !391
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !392 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !398, metadata !DIExpression()), !dbg !399
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !400
  ret double %call, !dbg !401
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !402 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !411, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !412, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i32 %base, metadata !413, metadata !DIExpression()), !dbg !414
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !415
  ret i64 %call, !dbg !416
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !417 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !423, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !424, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i32 %base, metadata !425, metadata !DIExpression()), !dbg !426
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !427
  ret i64 %call, !dbg !428
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !429 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !440, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !441, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 %base, metadata !442, metadata !DIExpression()), !dbg !443
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !444
  ret i64 %call, !dbg !445
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !446 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !450, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !451, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 %base, metadata !452, metadata !DIExpression()), !dbg !453
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !454
  ret i64 %call, !dbg !455
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !456 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !498, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !499, metadata !DIExpression()), !dbg !500
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !501
  ret i32 %call, !dbg !502
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !503 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !505, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !506, metadata !DIExpression()), !dbg !507
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !508
  ret i32 %call, !dbg !509
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !510 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !514, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !515, metadata !DIExpression()), !dbg !516
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !517
  ret i32 %call, !dbg !518
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !519 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !523, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !524, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !525, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !526, metadata !DIExpression()), !dbg !527
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !528
  ret i32 %call, !dbg !529
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !530 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !534, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !535, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !536, metadata !DIExpression()), !dbg !537
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !536, metadata !DIExpression(DW_OP_deref)), !dbg !537
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !538
  ret i32 %call, !dbg !539
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !540 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !544, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i8* %__path, metadata !545, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !546, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !547, metadata !DIExpression(DW_OP_deref)), !dbg !548
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !549
  ret i32 %call, !dbg !550
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !551 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !575, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !576, metadata !DIExpression()), !dbg !577
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !578
  ret i32 %call, !dbg !579
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !580 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !582, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !583, metadata !DIExpression()), !dbg !584
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !585
  ret i32 %call, !dbg !586
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !587 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !591, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !592, metadata !DIExpression()), !dbg !593
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !594
  ret i32 %call, !dbg !595
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !596 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !600, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !601, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !602, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !603, metadata !DIExpression()), !dbg !604
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !605
  ret i32 %call, !dbg !606
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @hook_void_void() local_unnamed_addr #3 !dbg !607 {
entry:
  ret void, !dbg !610
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_void_false() local_unnamed_addr #3 !dbg !611 {
entry:
  ret i8 0, !dbg !614
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_void_true() local_unnamed_addr #3 !dbg !615 {
entry:
  ret i8 1, !dbg !616
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_bool_false(i8 zeroext %a) local_unnamed_addr #3 !dbg !617 {
entry:
  call void @llvm.dbg.value(metadata i8 %a, metadata !621, metadata !DIExpression()), !dbg !622
  ret i8 0, !dbg !623
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_const_int_const_int_true(i32 %a, i32 %b) local_unnamed_addr #3 !dbg !624 {
entry:
  call void @llvm.dbg.value(metadata i32 %a, metadata !629, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32 %b, metadata !630, metadata !DIExpression()), !dbg !631
  ret i8 1, !dbg !632
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_mode_false(i32 %mode) local_unnamed_addr #3 !dbg !633 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !637, metadata !DIExpression()), !dbg !638
  ret i8 0, !dbg !639
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_mode_const_rtx_false(i32 %mode, %struct.rtx_def* %value) local_unnamed_addr #3 !dbg !640 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !649, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata %struct.rtx_def* %value, metadata !650, metadata !DIExpression()), !dbg !651
  ret i8 0, !dbg !652
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_mode_const_rtx_true(i32 %mode, %struct.rtx_def* %value) local_unnamed_addr #3 !dbg !653 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !655, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata %struct.rtx_def* %value, metadata !656, metadata !DIExpression()), !dbg !657
  ret i8 1, !dbg !658
}

; Function Attrs: nounwind uwtable
define dso_local void @hook_void_FILEptr_constcharptr(%struct._IO_FILE* %a, i8* %b) local_unnamed_addr #3 !dbg !659 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %a, metadata !663, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i8* %b, metadata !664, metadata !DIExpression()), !dbg !665
  ret void, !dbg !666
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_const_tree_hwi_hwi_const_tree_false(%union.tree_node* %a, i64 %b, i64 %c, %union.tree_node* %d) local_unnamed_addr #3 !dbg !667 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !675, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i64 %b, metadata !676, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i64 %c, metadata !677, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata %union.tree_node* %d, metadata !678, metadata !DIExpression()), !dbg !679
  ret i8 0, !dbg !680
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_const_tree_hwi_hwi_const_tree_true(%union.tree_node* %a, i64 %b, i64 %c, %union.tree_node* %d) local_unnamed_addr #3 !dbg !681 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !683, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i64 %b, metadata !684, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i64 %c, metadata !685, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata %union.tree_node* %d, metadata !686, metadata !DIExpression()), !dbg !687
  ret i8 1, !dbg !688
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_constcharptr_size_t_false(i8* %a, i64 %b) local_unnamed_addr #3 !dbg !689 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !693, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i64 %b, metadata !694, metadata !DIExpression()), !dbg !695
  ret i8 0, !dbg !696
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_size_t_constcharptr_int_true(i64 %a, i8* %b, i32 %c) local_unnamed_addr #3 !dbg !697 {
entry:
  call void @llvm.dbg.value(metadata i64 %a, metadata !701, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i8* %b, metadata !702, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i32 %c, metadata !703, metadata !DIExpression()), !dbg !704
  ret i8 1, !dbg !705
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @default_can_output_mi_thunk_no_vcall(%union.tree_node* %a, i64 %b, i64 %c, %union.tree_node* %d) local_unnamed_addr #3 !dbg !706 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !708, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i64 %b, metadata !709, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i64 %c, metadata !710, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata %union.tree_node* %d, metadata !711, metadata !DIExpression()), !dbg !712
  %cmp = icmp eq i64 %c, 0, !dbg !713
  %conv1 = zext i1 %cmp to i8, !dbg !714
  ret i8 %conv1, !dbg !715
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hook_int_const_tree_0(%union.tree_node* %a) local_unnamed_addr #3 !dbg !716 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !720, metadata !DIExpression()), !dbg !721
  ret i32 0, !dbg !722
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hook_int_const_tree_const_tree_1(%union.tree_node* %a, %union.tree_node* %b) local_unnamed_addr #3 !dbg !723 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !727, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata %union.tree_node* %b, metadata !728, metadata !DIExpression()), !dbg !729
  ret i32 1, !dbg !730
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hook_int_rtx_0(%struct.rtx_def* %a) local_unnamed_addr #3 !dbg !731 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %a, metadata !737, metadata !DIExpression()), !dbg !738
  ret i32 0, !dbg !739
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hook_int_rtx_bool_0(%struct.rtx_def* %a, i8 zeroext %b) local_unnamed_addr #3 !dbg !740 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %a, metadata !744, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8 %b, metadata !745, metadata !DIExpression()), !dbg !746
  ret i32 0, !dbg !747
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hook_int_size_t_constcharptr_int_0(i64 %a, i8* %b, i32 %c) local_unnamed_addr #3 !dbg !748 {
entry:
  call void @llvm.dbg.value(metadata i64 %a, metadata !752, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i8* %b, metadata !753, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i32 %c, metadata !754, metadata !DIExpression()), !dbg !755
  ret i32 0, !dbg !756
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hook_uint_uint_constcharptrptr_0(i32 %a, i8** %b) local_unnamed_addr #3 !dbg !757 {
entry:
  call void @llvm.dbg.value(metadata i32 %a, metadata !762, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8** %b, metadata !763, metadata !DIExpression()), !dbg !764
  ret i32 0, !dbg !765
}

; Function Attrs: nounwind uwtable
define dso_local void @hook_void_tree(%union.tree_node* %a) local_unnamed_addr #3 !dbg !766 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !772, metadata !DIExpression()), !dbg !773
  ret void, !dbg !774
}

; Function Attrs: nounwind uwtable
define dso_local void @hook_void_constcharptr(i8* %a) local_unnamed_addr #3 !dbg !775 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !779, metadata !DIExpression()), !dbg !780
  ret void, !dbg !781
}

; Function Attrs: nounwind uwtable
define dso_local void @hook_void_tree_treeptr(%union.tree_node* %a, %union.tree_node** %b) local_unnamed_addr #3 !dbg !782 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !787, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata %union.tree_node** %b, metadata !788, metadata !DIExpression()), !dbg !789
  ret void, !dbg !790
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_tree_false(%union.tree_node* %a) local_unnamed_addr #3 !dbg !791 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !795, metadata !DIExpression()), !dbg !796
  ret i8 0, !dbg !797
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_const_tree_false(%union.tree_node* %a) local_unnamed_addr #3 !dbg !798 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !802, metadata !DIExpression()), !dbg !803
  ret i8 0, !dbg !804
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_tree_true(%union.tree_node* %a) local_unnamed_addr #3 !dbg !805 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !807, metadata !DIExpression()), !dbg !808
  ret i8 1, !dbg !809
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_const_tree_true(%union.tree_node* %a) local_unnamed_addr #3 !dbg !810 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !812, metadata !DIExpression()), !dbg !813
  ret i8 1, !dbg !814
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_tree_tree_false(%union.tree_node* %a, %union.tree_node* %b) local_unnamed_addr #3 !dbg !815 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !819, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata %union.tree_node* %b, metadata !820, metadata !DIExpression()), !dbg !821
  ret i8 0, !dbg !822
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_tree_tree_true(%union.tree_node* %a, %union.tree_node* %b) local_unnamed_addr #3 !dbg !823 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !825, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata %union.tree_node* %b, metadata !826, metadata !DIExpression()), !dbg !827
  ret i8 1, !dbg !828
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_tree_bool_false(%union.tree_node* %a, i8 zeroext %b) local_unnamed_addr #3 !dbg !829 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !833, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i8 %b, metadata !834, metadata !DIExpression()), !dbg !835
  ret i8 0, !dbg !836
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_rtx_false(%struct.rtx_def* %a) local_unnamed_addr #3 !dbg !837 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %a, metadata !841, metadata !DIExpression()), !dbg !842
  ret i8 0, !dbg !843
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_uintp_uintp_false(i32* %a, i32* %b) local_unnamed_addr #3 !dbg !844 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !849, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32* %b, metadata !850, metadata !DIExpression()), !dbg !851
  ret i8 0, !dbg !852
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @hook_bool_rtx_int_int_intp_bool_false(%struct.rtx_def* %a, i32 %b, i32 %c, i32* %d, i8 zeroext %speed_p) local_unnamed_addr #3 !dbg !853 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %a, metadata !858, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i32 %b, metadata !859, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i32 %c, metadata !860, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i32* %d, metadata !861, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i8 %speed_p, metadata !862, metadata !DIExpression()), !dbg !863
  ret i8 0, !dbg !864
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @hook_rtx_rtx_identity(%struct.rtx_def* %x) local_unnamed_addr #3 !dbg !865 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !869, metadata !DIExpression()), !dbg !870
  ret %struct.rtx_def* %x, !dbg !871
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @hook_rtx_rtx_null(%struct.rtx_def* %x) local_unnamed_addr #3 !dbg !872 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !874, metadata !DIExpression()), !dbg !875
  ret %struct.rtx_def* null, !dbg !876
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @hook_rtx_tree_int_null(%union.tree_node* %a, i32 %b) local_unnamed_addr #3 !dbg !877 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !881, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i32 %b, metadata !882, metadata !DIExpression()), !dbg !883
  ret %struct.rtx_def* null, !dbg !884
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @hook_tree_tree_tree_tree_3rd_identity(%union.tree_node* %a, %union.tree_node* %b, %union.tree_node* %c) local_unnamed_addr #3 !dbg !885 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !889, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata %union.tree_node* %b, metadata !890, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata %union.tree_node* %c, metadata !891, metadata !DIExpression()), !dbg !892
  ret %union.tree_node* %c, !dbg !893
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hook_constcharptr_const_tree_null(%union.tree_node* %t) local_unnamed_addr #3 !dbg !894 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !898, metadata !DIExpression()), !dbg !899
  ret i8* null, !dbg !900
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @hook_tree_tree_tree_bool_null(%union.tree_node* %t0, %union.tree_node* %t1, i8 zeroext %ignore) local_unnamed_addr #3 !dbg !901 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t0, metadata !905, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata %union.tree_node* %t1, metadata !906, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i8 %ignore, metadata !907, metadata !DIExpression()), !dbg !908
  ret %union.tree_node* null, !dbg !909
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @hook_tree_tree_tree_null(%union.tree_node* %t0, %union.tree_node* %t1) local_unnamed_addr #3 !dbg !910 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t0, metadata !914, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata %union.tree_node* %t1, metadata !915, metadata !DIExpression()), !dbg !916
  ret %union.tree_node* null, !dbg !917
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @hook_tree_tree_tree_tree_null(%union.tree_node* %t0, %union.tree_node* %t1, %union.tree_node* %t2) local_unnamed_addr #3 !dbg !918 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t0, metadata !920, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata %union.tree_node* %t1, metadata !921, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata %union.tree_node* %t2, metadata !922, metadata !DIExpression()), !dbg !923
  ret %union.tree_node* null, !dbg !924
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hook_constcharptr_const_rtx_null(%struct.rtx_def* %r) local_unnamed_addr #3 !dbg !925 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %r, metadata !929, metadata !DIExpression()), !dbg !930
  ret i8* null, !dbg !931
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hook_constcharptr_const_tree_const_tree_null(%union.tree_node* %t0, %union.tree_node* %t1) local_unnamed_addr #3 !dbg !932 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t0, metadata !936, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata %union.tree_node* %t1, metadata !937, metadata !DIExpression()), !dbg !938
  ret i8* null, !dbg !939
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hook_constcharptr_int_const_tree_null(i32 %i, %union.tree_node* %t0) local_unnamed_addr #3 !dbg !940 {
entry:
  call void @llvm.dbg.value(metadata i32 %i, metadata !944, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata %union.tree_node* %t0, metadata !945, metadata !DIExpression()), !dbg !946
  ret i8* null, !dbg !947
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hook_constcharptr_int_const_tree_const_tree_null(i32 %i, %union.tree_node* %t0, %union.tree_node* %t1) local_unnamed_addr #3 !dbg !948 {
entry:
  call void @llvm.dbg.value(metadata i32 %i, metadata !952, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata %union.tree_node* %t0, metadata !953, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata %union.tree_node* %t1, metadata !954, metadata !DIExpression()), !dbg !955
  ret i8* null, !dbg !956
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @hook_tree_const_tree_null(%union.tree_node* %t) local_unnamed_addr #3 !dbg !957 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !961, metadata !DIExpression()), !dbg !962
  ret %union.tree_node* null, !dbg !963
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!142, !143, !144}
!llvm.ident = !{!145}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !132, nameTableKind: None)
!1 = !DIFile(filename: "hooks.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3}
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
!132 = !{!133, !134, !135, !136, !139, !140}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!142 = !{i32 2, !"Dwarf Version", i32 4}
!143 = !{i32 2, !"Debug Info Version", i32 3}
!144 = !{i32 1, !"wchar_size", i32 4}
!145 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!146 = distinct !DISubprogram(name: "vprintf", scope: !147, file: !147, line: 39, type: !148, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!147 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!148 = !DISubroutineType(types: !149)
!149 = !{!135, !150, !151}
!150 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !152, file: !1, baseType: !5, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !152, file: !1, baseType: !5, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !152, file: !1, baseType: !139, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !152, file: !1, baseType: !139, size: 64, offset: 128)
!158 = !{!159, !160}
!159 = !DILocalVariable(name: "__fmt", arg: 1, scope: !146, file: !147, line: 39, type: !150)
!160 = !DILocalVariable(name: "__arg", arg: 2, scope: !146, file: !147, line: 39, type: !151)
!161 = !DILocation(line: 0, scope: !146)
!162 = !DILocation(line: 41, column: 20, scope: !146)
!163 = !DILocation(line: 41, column: 10, scope: !146)
!164 = !DILocation(line: 41, column: 3, scope: !146)
!165 = distinct !DISubprogram(name: "getchar", scope: !147, file: !147, line: 47, type: !166, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{!135}
!168 = !{}
!169 = !DILocation(line: 49, column: 16, scope: !165)
!170 = !DILocation(line: 49, column: 10, scope: !165)
!171 = !DILocation(line: 49, column: 3, scope: !165)
!172 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !147, file: !147, line: 56, type: !173, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !234)
!173 = !DISubroutineType(types: !174)
!174 = !{!135, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !177, line: 7, baseType: !178)
!177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !179, line: 49, size: 1728, elements: !180)
!179 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !196, !198, !199, !200, !204, !206, !208, !212, !215, !217, !220, !223, !224, !225, !229, !230}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !178, file: !179, line: 51, baseType: !135, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !178, file: !179, line: 54, baseType: !137, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !178, file: !179, line: 55, baseType: !137, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !178, file: !179, line: 56, baseType: !137, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !178, file: !179, line: 57, baseType: !137, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !178, file: !179, line: 58, baseType: !137, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !178, file: !179, line: 59, baseType: !137, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !178, file: !179, line: 60, baseType: !137, size: 64, offset: 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !178, file: !179, line: 61, baseType: !137, size: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !178, file: !179, line: 64, baseType: !137, size: 64, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !178, file: !179, line: 65, baseType: !137, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !178, file: !179, line: 66, baseType: !137, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !178, file: !179, line: 68, baseType: !194, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !179, line: 36, flags: DIFlagFwdDecl)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !178, file: !179, line: 70, baseType: !197, size: 64, offset: 832)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !178, file: !179, line: 72, baseType: !135, size: 32, offset: 896)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !178, file: !179, line: 73, baseType: !135, size: 32, offset: 928)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !178, file: !179, line: 74, baseType: !201, size: 64, offset: 960)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !202, line: 152, baseType: !203)
!202 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!203 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !178, file: !179, line: 77, baseType: !205, size: 16, offset: 1024)
!205 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !178, file: !179, line: 78, baseType: !207, size: 8, offset: 1040)
!207 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !178, file: !179, line: 79, baseType: !209, size: 8, offset: 1048)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 8, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 1)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !178, file: !179, line: 81, baseType: !213, size: 64, offset: 1088)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !179, line: 43, baseType: null)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !178, file: !179, line: 89, baseType: !216, size: 64, offset: 1152)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !202, line: 153, baseType: !203)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !178, file: !179, line: 91, baseType: !218, size: 64, offset: 1216)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !179, line: 37, flags: DIFlagFwdDecl)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !178, file: !179, line: 92, baseType: !221, size: 64, offset: 1280)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !179, line: 38, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !178, file: !179, line: 93, baseType: !197, size: 64, offset: 1344)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !178, file: !179, line: 94, baseType: !139, size: 64, offset: 1408)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !178, file: !179, line: 95, baseType: !226, size: 64, offset: 1472)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !227, line: 46, baseType: !228)
!227 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!228 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !178, file: !179, line: 96, baseType: !135, size: 32, offset: 1536)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !178, file: !179, line: 98, baseType: !231, size: 160, offset: 1568)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 160, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 20)
!234 = !{!235}
!235 = !DILocalVariable(name: "__fp", arg: 1, scope: !172, file: !147, line: 56, type: !175)
!236 = !DILocation(line: 0, scope: !172)
!237 = !DILocation(line: 58, column: 10, scope: !172)
!238 = !DILocation(line: 58, column: 3, scope: !172)
!239 = distinct !DISubprogram(name: "getc_unlocked", scope: !147, file: !147, line: 66, type: !173, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!240 = !{!241}
!241 = !DILocalVariable(name: "__fp", arg: 1, scope: !239, file: !147, line: 66, type: !175)
!242 = !DILocation(line: 0, scope: !239)
!243 = !DILocation(line: 68, column: 10, scope: !239)
!244 = !DILocation(line: 68, column: 3, scope: !239)
!245 = distinct !DISubprogram(name: "getchar_unlocked", scope: !147, file: !147, line: 73, type: !166, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!246 = !DILocation(line: 75, column: 10, scope: !245)
!247 = !DILocation(line: 75, column: 3, scope: !245)
!248 = distinct !DISubprogram(name: "putchar", scope: !147, file: !147, line: 82, type: !249, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{!135, !135}
!251 = !{!252}
!252 = !DILocalVariable(name: "__c", arg: 1, scope: !248, file: !147, line: 82, type: !135)
!253 = !DILocation(line: 0, scope: !248)
!254 = !DILocation(line: 84, column: 21, scope: !248)
!255 = !DILocation(line: 84, column: 10, scope: !248)
!256 = !DILocation(line: 84, column: 3, scope: !248)
!257 = distinct !DISubprogram(name: "fputc_unlocked", scope: !147, file: !147, line: 91, type: !258, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{!135, !135, !175}
!260 = !{!261, !262}
!261 = !DILocalVariable(name: "__c", arg: 1, scope: !257, file: !147, line: 91, type: !135)
!262 = !DILocalVariable(name: "__stream", arg: 2, scope: !257, file: !147, line: 91, type: !175)
!263 = !DILocation(line: 0, scope: !257)
!264 = !DILocation(line: 93, column: 10, scope: !257)
!265 = !DILocation(line: 93, column: 3, scope: !257)
!266 = distinct !DISubprogram(name: "putc_unlocked", scope: !147, file: !147, line: 101, type: !258, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!267 = !{!268, !269}
!268 = !DILocalVariable(name: "__c", arg: 1, scope: !266, file: !147, line: 101, type: !135)
!269 = !DILocalVariable(name: "__stream", arg: 2, scope: !266, file: !147, line: 101, type: !175)
!270 = !DILocation(line: 0, scope: !266)
!271 = !DILocation(line: 103, column: 10, scope: !266)
!272 = !DILocation(line: 103, column: 3, scope: !266)
!273 = distinct !DISubprogram(name: "putchar_unlocked", scope: !147, file: !147, line: 108, type: !249, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !274)
!274 = !{!275}
!275 = !DILocalVariable(name: "__c", arg: 1, scope: !273, file: !147, line: 108, type: !135)
!276 = !DILocation(line: 0, scope: !273)
!277 = !DILocation(line: 110, column: 10, scope: !273)
!278 = !DILocation(line: 110, column: 3, scope: !273)
!279 = distinct !DISubprogram(name: "getline", scope: !147, file: !147, line: 118, type: !280, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !284)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !136, !283, !175}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !202, line: 193, baseType: !203)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!284 = !{!285, !286, !287}
!285 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !279, file: !147, line: 118, type: !136)
!286 = !DILocalVariable(name: "__n", arg: 2, scope: !279, file: !147, line: 118, type: !283)
!287 = !DILocalVariable(name: "__stream", arg: 3, scope: !279, file: !147, line: 118, type: !175)
!288 = !DILocation(line: 0, scope: !279)
!289 = !DILocation(line: 120, column: 10, scope: !279)
!290 = !DILocation(line: 120, column: 3, scope: !279)
!291 = distinct !DISubprogram(name: "feof_unlocked", scope: !147, file: !147, line: 128, type: !173, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !292)
!292 = !{!293}
!293 = !DILocalVariable(name: "__stream", arg: 1, scope: !291, file: !147, line: 128, type: !175)
!294 = !DILocation(line: 0, scope: !291)
!295 = !DILocation(line: 130, column: 10, scope: !291)
!296 = !DILocation(line: 130, column: 3, scope: !291)
!297 = distinct !DISubprogram(name: "ferror_unlocked", scope: !147, file: !147, line: 135, type: !173, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!298 = !{!299}
!299 = !DILocalVariable(name: "__stream", arg: 1, scope: !297, file: !147, line: 135, type: !175)
!300 = !DILocation(line: 0, scope: !297)
!301 = !DILocation(line: 137, column: 10, scope: !297)
!302 = !DILocation(line: 137, column: 3, scope: !297)
!303 = distinct !DISubprogram(name: "tolower", scope: !304, file: !304, line: 207, type: !249, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !305)
!304 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!305 = !{!306}
!306 = !DILocalVariable(name: "__c", arg: 1, scope: !303, file: !304, line: 207, type: !135)
!307 = !DILocation(line: 0, scope: !303)
!308 = !DILocation(line: 209, column: 22, scope: !303)
!309 = !DILocation(line: 209, column: 39, scope: !303)
!310 = !DILocation(line: 209, column: 38, scope: !303)
!311 = !DILocation(line: 209, column: 37, scope: !303)
!312 = !DILocation(line: 209, column: 10, scope: !303)
!313 = !DILocation(line: 209, column: 3, scope: !303)
!314 = distinct !DISubprogram(name: "toupper", scope: !304, file: !304, line: 213, type: !249, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !315)
!315 = !{!316}
!316 = !DILocalVariable(name: "__c", arg: 1, scope: !314, file: !304, line: 213, type: !135)
!317 = !DILocation(line: 0, scope: !314)
!318 = !DILocation(line: 215, column: 22, scope: !314)
!319 = !DILocation(line: 215, column: 39, scope: !314)
!320 = !DILocation(line: 215, column: 38, scope: !314)
!321 = !DILocation(line: 215, column: 37, scope: !314)
!322 = !DILocation(line: 215, column: 10, scope: !314)
!323 = !DILocation(line: 215, column: 3, scope: !314)
!324 = distinct !DISubprogram(name: "atoi", scope: !325, file: !325, line: 361, type: !326, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !328)
!325 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!326 = !DISubroutineType(types: !327)
!327 = !{!135, !140}
!328 = !{!329}
!329 = !DILocalVariable(name: "__nptr", arg: 1, scope: !324, file: !325, line: 361, type: !140)
!330 = !DILocation(line: 0, scope: !324)
!331 = !DILocation(line: 363, column: 16, scope: !324)
!332 = !DILocation(line: 363, column: 10, scope: !324)
!333 = !DILocation(line: 363, column: 3, scope: !324)
!334 = distinct !DISubprogram(name: "atol", scope: !325, file: !325, line: 366, type: !335, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!203, !140}
!337 = !{!338}
!338 = !DILocalVariable(name: "__nptr", arg: 1, scope: !334, file: !325, line: 366, type: !140)
!339 = !DILocation(line: 0, scope: !334)
!340 = !DILocation(line: 368, column: 10, scope: !334)
!341 = !DILocation(line: 368, column: 3, scope: !334)
!342 = distinct !DISubprogram(name: "atoll", scope: !325, file: !325, line: 373, type: !343, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !346)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !140}
!345 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!346 = !{!347}
!347 = !DILocalVariable(name: "__nptr", arg: 1, scope: !342, file: !325, line: 373, type: !140)
!348 = !DILocation(line: 0, scope: !342)
!349 = !DILocation(line: 375, column: 10, scope: !342)
!350 = !DILocation(line: 375, column: 3, scope: !342)
!351 = distinct !DISubprogram(name: "bsearch", scope: !352, file: !352, line: 20, type: !353, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!352 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!353 = !DISubroutineType(types: !354)
!354 = !{!139, !355, !355, !226, !226, !357}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !325, line: 808, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!135, !355, !355}
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!362 = !DILocalVariable(name: "__key", arg: 1, scope: !351, file: !352, line: 20, type: !355)
!363 = !DILocalVariable(name: "__base", arg: 2, scope: !351, file: !352, line: 20, type: !355)
!364 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !351, file: !352, line: 20, type: !226)
!365 = !DILocalVariable(name: "__size", arg: 4, scope: !351, file: !352, line: 20, type: !226)
!366 = !DILocalVariable(name: "__compar", arg: 5, scope: !351, file: !352, line: 21, type: !357)
!367 = !DILocalVariable(name: "__l", scope: !351, file: !352, line: 23, type: !226)
!368 = !DILocalVariable(name: "__u", scope: !351, file: !352, line: 23, type: !226)
!369 = !DILocalVariable(name: "__idx", scope: !351, file: !352, line: 23, type: !226)
!370 = !DILocalVariable(name: "__p", scope: !351, file: !352, line: 24, type: !355)
!371 = !DILocalVariable(name: "__comparison", scope: !351, file: !352, line: 25, type: !135)
!372 = !DILocation(line: 0, scope: !351)
!373 = !DILocation(line: 29, column: 3, scope: !351)
!374 = !DILocation(line: 27, column: 7, scope: !351)
!375 = !DILocation(line: 29, column: 14, scope: !351)
!376 = !DILocation(line: 31, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !351, file: !352, line: 30, column: 5)
!378 = !DILocation(line: 31, column: 27, scope: !377)
!379 = !DILocation(line: 32, column: 56, scope: !377)
!380 = !DILocation(line: 32, column: 47, scope: !377)
!381 = !DILocation(line: 33, column: 22, scope: !377)
!382 = !DILocation(line: 34, column: 24, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !352, line: 34, column: 11)
!384 = !DILocation(line: 34, column: 11, scope: !377)
!385 = !DILocation(line: 36, column: 29, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !352, line: 36, column: 16)
!387 = !DILocation(line: 36, column: 16, scope: !383)
!388 = !DILocation(line: 37, column: 14, scope: !386)
!389 = distinct !{!389, !373, !390}
!390 = !DILocation(line: 40, column: 5, scope: !351)
!391 = !DILocation(line: 43, column: 1, scope: !351)
!392 = distinct !DISubprogram(name: "atof", scope: !393, file: !393, line: 25, type: !394, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !397)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!394 = !DISubroutineType(types: !395)
!395 = !{!396, !140}
!396 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!397 = !{!398}
!398 = !DILocalVariable(name: "__nptr", arg: 1, scope: !392, file: !393, line: 25, type: !140)
!399 = !DILocation(line: 0, scope: !392)
!400 = !DILocation(line: 27, column: 10, scope: !392)
!401 = !DILocation(line: 27, column: 3, scope: !392)
!402 = distinct !DISubprogram(name: "strtoimax", scope: !403, file: !403, line: 324, type: !404, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !410)
!403 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!404 = !DISubroutineType(types: !405)
!405 = !{!406, !150, !409, !135}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !407, line: 101, baseType: !408)
!407 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !202, line: 72, baseType: !203)
!409 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!410 = !{!411, !412, !413}
!411 = !DILocalVariable(name: "nptr", arg: 1, scope: !402, file: !403, line: 324, type: !150)
!412 = !DILocalVariable(name: "endptr", arg: 2, scope: !402, file: !403, line: 324, type: !409)
!413 = !DILocalVariable(name: "base", arg: 3, scope: !402, file: !403, line: 324, type: !135)
!414 = !DILocation(line: 0, scope: !402)
!415 = !DILocation(line: 327, column: 10, scope: !402)
!416 = !DILocation(line: 327, column: 3, scope: !402)
!417 = distinct !DISubprogram(name: "strtoumax", scope: !403, file: !403, line: 336, type: !418, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !422)
!418 = !DISubroutineType(types: !419)
!419 = !{!420, !150, !409, !135}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !407, line: 102, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !202, line: 73, baseType: !228)
!422 = !{!423, !424, !425}
!423 = !DILocalVariable(name: "nptr", arg: 1, scope: !417, file: !403, line: 336, type: !150)
!424 = !DILocalVariable(name: "endptr", arg: 2, scope: !417, file: !403, line: 336, type: !409)
!425 = !DILocalVariable(name: "base", arg: 3, scope: !417, file: !403, line: 336, type: !135)
!426 = !DILocation(line: 0, scope: !417)
!427 = !DILocation(line: 339, column: 10, scope: !417)
!428 = !DILocation(line: 339, column: 3, scope: !417)
!429 = distinct !DISubprogram(name: "wcstoimax", scope: !403, file: !403, line: 348, type: !430, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !439)
!430 = !DISubroutineType(types: !431)
!431 = !{!406, !432, !436, !135}
!432 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !403, line: 34, baseType: !135)
!436 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!439 = !{!440, !441, !442}
!440 = !DILocalVariable(name: "nptr", arg: 1, scope: !429, file: !403, line: 348, type: !432)
!441 = !DILocalVariable(name: "endptr", arg: 2, scope: !429, file: !403, line: 348, type: !436)
!442 = !DILocalVariable(name: "base", arg: 3, scope: !429, file: !403, line: 348, type: !135)
!443 = !DILocation(line: 0, scope: !429)
!444 = !DILocation(line: 351, column: 10, scope: !429)
!445 = !DILocation(line: 351, column: 3, scope: !429)
!446 = distinct !DISubprogram(name: "wcstoumax", scope: !403, file: !403, line: 362, type: !447, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!420, !432, !436, !135}
!449 = !{!450, !451, !452}
!450 = !DILocalVariable(name: "nptr", arg: 1, scope: !446, file: !403, line: 362, type: !432)
!451 = !DILocalVariable(name: "endptr", arg: 2, scope: !446, file: !403, line: 362, type: !436)
!452 = !DILocalVariable(name: "base", arg: 3, scope: !446, file: !403, line: 362, type: !135)
!453 = !DILocation(line: 0, scope: !446)
!454 = !DILocation(line: 365, column: 10, scope: !446)
!455 = !DILocation(line: 365, column: 3, scope: !446)
!456 = distinct !DISubprogram(name: "stat", scope: !457, file: !457, line: 453, type: !458, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !497)
!457 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!458 = !DISubroutineType(types: !459)
!459 = !{!135, !140, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !462, line: 46, size: 1152, elements: !463)
!462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!463 = !{!464, !466, !468, !470, !472, !474, !476, !477, !478, !479, !481, !483, !491, !492, !493}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !461, file: !462, line: 48, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !202, line: 145, baseType: !228)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !461, file: !462, line: 53, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !202, line: 148, baseType: !228)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !461, file: !462, line: 61, baseType: !469, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !202, line: 151, baseType: !228)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !461, file: !462, line: 62, baseType: !471, size: 32, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !202, line: 150, baseType: !5)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !461, file: !462, line: 64, baseType: !473, size: 32, offset: 224)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !202, line: 146, baseType: !5)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !461, file: !462, line: 65, baseType: !475, size: 32, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !202, line: 147, baseType: !5)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !461, file: !462, line: 67, baseType: !135, size: 32, offset: 288)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !461, file: !462, line: 69, baseType: !465, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !461, file: !462, line: 74, baseType: !201, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !461, file: !462, line: 78, baseType: !480, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !202, line: 174, baseType: !203)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !461, file: !462, line: 80, baseType: !482, size: 64, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !202, line: 179, baseType: !203)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !461, file: !462, line: 91, baseType: !484, size: 128, offset: 576)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !485, line: 10, size: 128, elements: !486)
!485 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!486 = !{!487, !489}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !484, file: !485, line: 12, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !202, line: 160, baseType: !203)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !484, file: !485, line: 16, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !202, line: 196, baseType: !203)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !461, file: !462, line: 92, baseType: !484, size: 128, offset: 704)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !461, file: !462, line: 93, baseType: !484, size: 128, offset: 832)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !461, file: !462, line: 106, baseType: !494, size: 192, offset: 960)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 192, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 3)
!497 = !{!498, !499}
!498 = !DILocalVariable(name: "__path", arg: 1, scope: !456, file: !457, line: 453, type: !140)
!499 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !456, file: !457, line: 453, type: !460)
!500 = !DILocation(line: 0, scope: !456)
!501 = !DILocation(line: 455, column: 10, scope: !456)
!502 = !DILocation(line: 455, column: 3, scope: !456)
!503 = distinct !DISubprogram(name: "lstat", scope: !457, file: !457, line: 460, type: !458, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !504)
!504 = !{!505, !506}
!505 = !DILocalVariable(name: "__path", arg: 1, scope: !503, file: !457, line: 460, type: !140)
!506 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !503, file: !457, line: 460, type: !460)
!507 = !DILocation(line: 0, scope: !503)
!508 = !DILocation(line: 462, column: 10, scope: !503)
!509 = !DILocation(line: 462, column: 3, scope: !503)
!510 = distinct !DISubprogram(name: "fstat", scope: !457, file: !457, line: 467, type: !511, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!135, !135, !460}
!513 = !{!514, !515}
!514 = !DILocalVariable(name: "__fd", arg: 1, scope: !510, file: !457, line: 467, type: !135)
!515 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !510, file: !457, line: 467, type: !460)
!516 = !DILocation(line: 0, scope: !510)
!517 = !DILocation(line: 469, column: 10, scope: !510)
!518 = !DILocation(line: 469, column: 3, scope: !510)
!519 = distinct !DISubprogram(name: "fstatat", scope: !457, file: !457, line: 474, type: !520, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!135, !135, !140, !460, !135}
!522 = !{!523, !524, !525, !526}
!523 = !DILocalVariable(name: "__fd", arg: 1, scope: !519, file: !457, line: 474, type: !135)
!524 = !DILocalVariable(name: "__filename", arg: 2, scope: !519, file: !457, line: 474, type: !140)
!525 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !519, file: !457, line: 474, type: !460)
!526 = !DILocalVariable(name: "__flag", arg: 4, scope: !519, file: !457, line: 474, type: !135)
!527 = !DILocation(line: 0, scope: !519)
!528 = !DILocation(line: 477, column: 10, scope: !519)
!529 = !DILocation(line: 477, column: 3, scope: !519)
!530 = distinct !DISubprogram(name: "mknod", scope: !457, file: !457, line: 483, type: !531, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !533)
!531 = !DISubroutineType(types: !532)
!532 = !{!135, !140, !471, !465}
!533 = !{!534, !535, !536}
!534 = !DILocalVariable(name: "__path", arg: 1, scope: !530, file: !457, line: 483, type: !140)
!535 = !DILocalVariable(name: "__mode", arg: 2, scope: !530, file: !457, line: 483, type: !471)
!536 = !DILocalVariable(name: "__dev", arg: 3, scope: !530, file: !457, line: 483, type: !465)
!537 = !DILocation(line: 0, scope: !530)
!538 = !DILocation(line: 485, column: 10, scope: !530)
!539 = !DILocation(line: 485, column: 3, scope: !530)
!540 = distinct !DISubprogram(name: "mknodat", scope: !457, file: !457, line: 491, type: !541, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!135, !135, !140, !471, !465}
!543 = !{!544, !545, !546, !547}
!544 = !DILocalVariable(name: "__fd", arg: 1, scope: !540, file: !457, line: 491, type: !135)
!545 = !DILocalVariable(name: "__path", arg: 2, scope: !540, file: !457, line: 491, type: !140)
!546 = !DILocalVariable(name: "__mode", arg: 3, scope: !540, file: !457, line: 491, type: !471)
!547 = !DILocalVariable(name: "__dev", arg: 4, scope: !540, file: !457, line: 491, type: !465)
!548 = !DILocation(line: 0, scope: !540)
!549 = !DILocation(line: 494, column: 10, scope: !540)
!550 = !DILocation(line: 494, column: 3, scope: !540)
!551 = distinct !DISubprogram(name: "stat64", scope: !457, file: !457, line: 502, type: !552, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !574)
!552 = !DISubroutineType(types: !553)
!553 = !{!135, !140, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !462, line: 119, size: 1152, elements: !556)
!556 = !{!557, !558, !560, !561, !562, !563, !564, !565, !566, !567, !568, !570, !571, !572, !573}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !555, file: !462, line: 121, baseType: !465, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !555, file: !462, line: 123, baseType: !559, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !202, line: 149, baseType: !228)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !555, file: !462, line: 124, baseType: !469, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !555, file: !462, line: 125, baseType: !471, size: 32, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !555, file: !462, line: 132, baseType: !473, size: 32, offset: 224)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !555, file: !462, line: 133, baseType: !475, size: 32, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !555, file: !462, line: 135, baseType: !135, size: 32, offset: 288)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !555, file: !462, line: 136, baseType: !465, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !555, file: !462, line: 137, baseType: !201, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !555, file: !462, line: 143, baseType: !480, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !555, file: !462, line: 144, baseType: !569, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !202, line: 180, baseType: !203)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !555, file: !462, line: 152, baseType: !484, size: 128, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !555, file: !462, line: 153, baseType: !484, size: 128, offset: 704)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !555, file: !462, line: 154, baseType: !484, size: 128, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !555, file: !462, line: 164, baseType: !494, size: 192, offset: 960)
!574 = !{!575, !576}
!575 = !DILocalVariable(name: "__path", arg: 1, scope: !551, file: !457, line: 502, type: !140)
!576 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !551, file: !457, line: 502, type: !554)
!577 = !DILocation(line: 0, scope: !551)
!578 = !DILocation(line: 504, column: 10, scope: !551)
!579 = !DILocation(line: 504, column: 3, scope: !551)
!580 = distinct !DISubprogram(name: "lstat64", scope: !457, file: !457, line: 509, type: !552, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !581)
!581 = !{!582, !583}
!582 = !DILocalVariable(name: "__path", arg: 1, scope: !580, file: !457, line: 509, type: !140)
!583 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !580, file: !457, line: 509, type: !554)
!584 = !DILocation(line: 0, scope: !580)
!585 = !DILocation(line: 511, column: 10, scope: !580)
!586 = !DILocation(line: 511, column: 3, scope: !580)
!587 = distinct !DISubprogram(name: "fstat64", scope: !457, file: !457, line: 516, type: !588, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !590)
!588 = !DISubroutineType(types: !589)
!589 = !{!135, !135, !554}
!590 = !{!591, !592}
!591 = !DILocalVariable(name: "__fd", arg: 1, scope: !587, file: !457, line: 516, type: !135)
!592 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !587, file: !457, line: 516, type: !554)
!593 = !DILocation(line: 0, scope: !587)
!594 = !DILocation(line: 518, column: 10, scope: !587)
!595 = !DILocation(line: 518, column: 3, scope: !587)
!596 = distinct !DISubprogram(name: "fstatat64", scope: !457, file: !457, line: 523, type: !597, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{!135, !135, !140, !554, !135}
!599 = !{!600, !601, !602, !603}
!600 = !DILocalVariable(name: "__fd", arg: 1, scope: !596, file: !457, line: 523, type: !135)
!601 = !DILocalVariable(name: "__filename", arg: 2, scope: !596, file: !457, line: 523, type: !140)
!602 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !596, file: !457, line: 523, type: !554)
!603 = !DILocalVariable(name: "__flag", arg: 4, scope: !596, file: !457, line: 523, type: !135)
!604 = !DILocation(line: 0, scope: !596)
!605 = !DILocation(line: 526, column: 10, scope: !596)
!606 = !DILocation(line: 526, column: 3, scope: !596)
!607 = distinct !DISubprogram(name: "hook_void_void", scope: !1, file: !1, line: 34, type: !608, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!608 = !DISubroutineType(types: !609)
!609 = !{null}
!610 = !DILocation(line: 36, column: 1, scope: !607)
!611 = distinct !DISubprogram(name: "hook_bool_void_false", scope: !1, file: !1, line: 40, type: !612, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!612 = !DISubroutineType(types: !613)
!613 = !{!134}
!614 = !DILocation(line: 42, column: 3, scope: !611)
!615 = distinct !DISubprogram(name: "hook_bool_void_true", scope: !1, file: !1, line: 47, type: !612, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!616 = !DILocation(line: 49, column: 3, scope: !615)
!617 = distinct !DISubprogram(name: "hook_bool_bool_false", scope: !1, file: !1, line: 54, type: !618, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !620)
!618 = !DISubroutineType(types: !619)
!619 = !{!134, !134}
!620 = !{!621}
!621 = !DILocalVariable(name: "a", arg: 1, scope: !617, file: !1, line: 54, type: !134)
!622 = !DILocation(line: 0, scope: !617)
!623 = !DILocation(line: 56, column: 3, scope: !617)
!624 = distinct !DISubprogram(name: "hook_bool_const_int_const_int_true", scope: !1, file: !1, line: 60, type: !625, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !628)
!625 = !DISubroutineType(types: !626)
!626 = !{!134, !627, !627}
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!628 = !{!629, !630}
!629 = !DILocalVariable(name: "a", arg: 1, scope: !624, file: !1, line: 60, type: !627)
!630 = !DILocalVariable(name: "b", arg: 2, scope: !624, file: !1, line: 61, type: !627)
!631 = !DILocation(line: 0, scope: !624)
!632 = !DILocation(line: 63, column: 3, scope: !624)
!633 = distinct !DISubprogram(name: "hook_bool_mode_false", scope: !1, file: !1, line: 68, type: !634, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{!134, !3}
!636 = !{!637}
!637 = !DILocalVariable(name: "mode", arg: 1, scope: !633, file: !1, line: 68, type: !3)
!638 = !DILocation(line: 0, scope: !633)
!639 = !DILocation(line: 70, column: 3, scope: !633)
!640 = distinct !DISubprogram(name: "hook_bool_mode_const_rtx_false", scope: !1, file: !1, line: 75, type: !641, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !648)
!641 = !DISubroutineType(types: !642)
!642 = !{!134, !3, !643}
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !644, line: 51, baseType: !645)
!644 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !644, line: 49, flags: DIFlagFwdDecl)
!648 = !{!649, !650}
!649 = !DILocalVariable(name: "mode", arg: 1, scope: !640, file: !1, line: 75, type: !3)
!650 = !DILocalVariable(name: "value", arg: 2, scope: !640, file: !1, line: 76, type: !643)
!651 = !DILocation(line: 0, scope: !640)
!652 = !DILocation(line: 78, column: 3, scope: !640)
!653 = distinct !DISubprogram(name: "hook_bool_mode_const_rtx_true", scope: !1, file: !1, line: 83, type: !641, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !654)
!654 = !{!655, !656}
!655 = !DILocalVariable(name: "mode", arg: 1, scope: !653, file: !1, line: 83, type: !3)
!656 = !DILocalVariable(name: "value", arg: 2, scope: !653, file: !1, line: 84, type: !643)
!657 = !DILocation(line: 0, scope: !653)
!658 = !DILocation(line: 86, column: 3, scope: !653)
!659 = distinct !DISubprogram(name: "hook_void_FILEptr_constcharptr", scope: !1, file: !1, line: 91, type: !660, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !175, !140}
!662 = !{!663, !664}
!663 = !DILocalVariable(name: "a", arg: 1, scope: !659, file: !1, line: 91, type: !175)
!664 = !DILocalVariable(name: "b", arg: 2, scope: !659, file: !1, line: 91, type: !140)
!665 = !DILocation(line: 0, scope: !659)
!666 = !DILocation(line: 93, column: 1, scope: !659)
!667 = distinct !DISubprogram(name: "hook_bool_const_tree_hwi_hwi_const_tree_false", scope: !1, file: !1, line: 97, type: !668, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !674)
!668 = !DISubroutineType(types: !669)
!669 = !{!134, !670, !203, !203, !670}
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !644, line: 59, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !644, line: 55, flags: DIFlagFwdDecl)
!674 = !{!675, !676, !677, !678}
!675 = !DILocalVariable(name: "a", arg: 1, scope: !667, file: !1, line: 97, type: !670)
!676 = !DILocalVariable(name: "b", arg: 2, scope: !667, file: !1, line: 98, type: !203)
!677 = !DILocalVariable(name: "c", arg: 3, scope: !667, file: !1, line: 99, type: !203)
!678 = !DILocalVariable(name: "d", arg: 4, scope: !667, file: !1, line: 100, type: !670)
!679 = !DILocation(line: 0, scope: !667)
!680 = !DILocation(line: 102, column: 3, scope: !667)
!681 = distinct !DISubprogram(name: "hook_bool_const_tree_hwi_hwi_const_tree_true", scope: !1, file: !1, line: 106, type: !668, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !682)
!682 = !{!683, !684, !685, !686}
!683 = !DILocalVariable(name: "a", arg: 1, scope: !681, file: !1, line: 106, type: !670)
!684 = !DILocalVariable(name: "b", arg: 2, scope: !681, file: !1, line: 107, type: !203)
!685 = !DILocalVariable(name: "c", arg: 3, scope: !681, file: !1, line: 108, type: !203)
!686 = !DILocalVariable(name: "d", arg: 4, scope: !681, file: !1, line: 109, type: !670)
!687 = !DILocation(line: 0, scope: !681)
!688 = !DILocation(line: 111, column: 3, scope: !681)
!689 = distinct !DISubprogram(name: "hook_bool_constcharptr_size_t_false", scope: !1, file: !1, line: 115, type: !690, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!134, !140, !226}
!692 = !{!693, !694}
!693 = !DILocalVariable(name: "a", arg: 1, scope: !689, file: !1, line: 115, type: !140)
!694 = !DILocalVariable(name: "b", arg: 2, scope: !689, file: !1, line: 116, type: !226)
!695 = !DILocation(line: 0, scope: !689)
!696 = !DILocation(line: 118, column: 3, scope: !689)
!697 = distinct !DISubprogram(name: "hook_bool_size_t_constcharptr_int_true", scope: !1, file: !1, line: 122, type: !698, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{!134, !226, !140, !135}
!700 = !{!701, !702, !703}
!701 = !DILocalVariable(name: "a", arg: 1, scope: !697, file: !1, line: 122, type: !226)
!702 = !DILocalVariable(name: "b", arg: 2, scope: !697, file: !1, line: 123, type: !140)
!703 = !DILocalVariable(name: "c", arg: 3, scope: !697, file: !1, line: 124, type: !135)
!704 = !DILocation(line: 0, scope: !697)
!705 = !DILocation(line: 126, column: 3, scope: !697)
!706 = distinct !DISubprogram(name: "default_can_output_mi_thunk_no_vcall", scope: !1, file: !1, line: 130, type: !668, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !707)
!707 = !{!708, !709, !710, !711}
!708 = !DILocalVariable(name: "a", arg: 1, scope: !706, file: !1, line: 130, type: !670)
!709 = !DILocalVariable(name: "b", arg: 2, scope: !706, file: !1, line: 131, type: !203)
!710 = !DILocalVariable(name: "c", arg: 3, scope: !706, file: !1, line: 132, type: !203)
!711 = !DILocalVariable(name: "d", arg: 4, scope: !706, file: !1, line: 133, type: !670)
!712 = !DILocation(line: 0, scope: !706)
!713 = !DILocation(line: 135, column: 12, scope: !706)
!714 = !DILocation(line: 135, column: 10, scope: !706)
!715 = !DILocation(line: 135, column: 3, scope: !706)
!716 = distinct !DISubprogram(name: "hook_int_const_tree_0", scope: !1, file: !1, line: 139, type: !717, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{!135, !670}
!719 = !{!720}
!720 = !DILocalVariable(name: "a", arg: 1, scope: !716, file: !1, line: 139, type: !670)
!721 = !DILocation(line: 0, scope: !716)
!722 = !DILocation(line: 141, column: 3, scope: !716)
!723 = distinct !DISubprogram(name: "hook_int_const_tree_const_tree_1", scope: !1, file: !1, line: 146, type: !724, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!135, !670, !670}
!726 = !{!727, !728}
!727 = !DILocalVariable(name: "a", arg: 1, scope: !723, file: !1, line: 146, type: !670)
!728 = !DILocalVariable(name: "b", arg: 2, scope: !723, file: !1, line: 146, type: !670)
!729 = !DILocation(line: 0, scope: !723)
!730 = !DILocation(line: 148, column: 3, scope: !723)
!731 = distinct !DISubprogram(name: "hook_int_rtx_0", scope: !1, file: !1, line: 152, type: !732, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !736)
!732 = !DISubroutineType(types: !733)
!733 = !{!135, !734}
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !644, line: 50, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!736 = !{!737}
!737 = !DILocalVariable(name: "a", arg: 1, scope: !731, file: !1, line: 152, type: !734)
!738 = !DILocation(line: 0, scope: !731)
!739 = !DILocation(line: 154, column: 3, scope: !731)
!740 = distinct !DISubprogram(name: "hook_int_rtx_bool_0", scope: !1, file: !1, line: 158, type: !741, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!135, !734, !134}
!743 = !{!744, !745}
!744 = !DILocalVariable(name: "a", arg: 1, scope: !740, file: !1, line: 158, type: !734)
!745 = !DILocalVariable(name: "b", arg: 2, scope: !740, file: !1, line: 158, type: !134)
!746 = !DILocation(line: 0, scope: !740)
!747 = !DILocation(line: 160, column: 3, scope: !740)
!748 = distinct !DISubprogram(name: "hook_int_size_t_constcharptr_int_0", scope: !1, file: !1, line: 164, type: !749, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{!135, !226, !140, !135}
!751 = !{!752, !753, !754}
!752 = !DILocalVariable(name: "a", arg: 1, scope: !748, file: !1, line: 164, type: !226)
!753 = !DILocalVariable(name: "b", arg: 2, scope: !748, file: !1, line: 165, type: !140)
!754 = !DILocalVariable(name: "c", arg: 3, scope: !748, file: !1, line: 166, type: !135)
!755 = !DILocation(line: 0, scope: !748)
!756 = !DILocation(line: 168, column: 3, scope: !748)
!757 = distinct !DISubprogram(name: "hook_uint_uint_constcharptrptr_0", scope: !1, file: !1, line: 172, type: !758, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !761)
!758 = !DISubroutineType(types: !759)
!759 = !{!5, !5, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!761 = !{!762, !763}
!762 = !DILocalVariable(name: "a", arg: 1, scope: !757, file: !1, line: 172, type: !5)
!763 = !DILocalVariable(name: "b", arg: 2, scope: !757, file: !1, line: 173, type: !760)
!764 = !DILocation(line: 0, scope: !757)
!765 = !DILocation(line: 175, column: 3, scope: !757)
!766 = distinct !DISubprogram(name: "hook_void_tree", scope: !1, file: !1, line: 179, type: !767, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !771)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !769}
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !644, line: 56, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!771 = !{!772}
!772 = !DILocalVariable(name: "a", arg: 1, scope: !766, file: !1, line: 179, type: !769)
!773 = !DILocation(line: 0, scope: !766)
!774 = !DILocation(line: 181, column: 1, scope: !766)
!775 = distinct !DISubprogram(name: "hook_void_constcharptr", scope: !1, file: !1, line: 184, type: !776, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !778)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !140}
!778 = !{!779}
!779 = !DILocalVariable(name: "a", arg: 1, scope: !775, file: !1, line: 184, type: !140)
!780 = !DILocation(line: 0, scope: !775)
!781 = !DILocation(line: 186, column: 1, scope: !775)
!782 = distinct !DISubprogram(name: "hook_void_tree_treeptr", scope: !1, file: !1, line: 189, type: !783, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !786)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !769, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!786 = !{!787, !788}
!787 = !DILocalVariable(name: "a", arg: 1, scope: !782, file: !1, line: 189, type: !769)
!788 = !DILocalVariable(name: "b", arg: 2, scope: !782, file: !1, line: 189, type: !785)
!789 = !DILocation(line: 0, scope: !782)
!790 = !DILocation(line: 191, column: 1, scope: !782)
!791 = distinct !DISubprogram(name: "hook_bool_tree_false", scope: !1, file: !1, line: 194, type: !792, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{!134, !769}
!794 = !{!795}
!795 = !DILocalVariable(name: "a", arg: 1, scope: !791, file: !1, line: 194, type: !769)
!796 = !DILocation(line: 0, scope: !791)
!797 = !DILocation(line: 196, column: 3, scope: !791)
!798 = distinct !DISubprogram(name: "hook_bool_const_tree_false", scope: !1, file: !1, line: 200, type: !799, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{!134, !670}
!801 = !{!802}
!802 = !DILocalVariable(name: "a", arg: 1, scope: !798, file: !1, line: 200, type: !670)
!803 = !DILocation(line: 0, scope: !798)
!804 = !DILocation(line: 202, column: 3, scope: !798)
!805 = distinct !DISubprogram(name: "hook_bool_tree_true", scope: !1, file: !1, line: 206, type: !792, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !806)
!806 = !{!807}
!807 = !DILocalVariable(name: "a", arg: 1, scope: !805, file: !1, line: 206, type: !769)
!808 = !DILocation(line: 0, scope: !805)
!809 = !DILocation(line: 208, column: 3, scope: !805)
!810 = distinct !DISubprogram(name: "hook_bool_const_tree_true", scope: !1, file: !1, line: 212, type: !799, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !811)
!811 = !{!812}
!812 = !DILocalVariable(name: "a", arg: 1, scope: !810, file: !1, line: 212, type: !670)
!813 = !DILocation(line: 0, scope: !810)
!814 = !DILocation(line: 214, column: 3, scope: !810)
!815 = distinct !DISubprogram(name: "hook_bool_tree_tree_false", scope: !1, file: !1, line: 218, type: !816, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !818)
!816 = !DISubroutineType(types: !817)
!817 = !{!134, !769, !769}
!818 = !{!819, !820}
!819 = !DILocalVariable(name: "a", arg: 1, scope: !815, file: !1, line: 218, type: !769)
!820 = !DILocalVariable(name: "b", arg: 2, scope: !815, file: !1, line: 218, type: !769)
!821 = !DILocation(line: 0, scope: !815)
!822 = !DILocation(line: 220, column: 3, scope: !815)
!823 = distinct !DISubprogram(name: "hook_bool_tree_tree_true", scope: !1, file: !1, line: 224, type: !816, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !824)
!824 = !{!825, !826}
!825 = !DILocalVariable(name: "a", arg: 1, scope: !823, file: !1, line: 224, type: !769)
!826 = !DILocalVariable(name: "b", arg: 2, scope: !823, file: !1, line: 224, type: !769)
!827 = !DILocation(line: 0, scope: !823)
!828 = !DILocation(line: 226, column: 3, scope: !823)
!829 = distinct !DISubprogram(name: "hook_bool_tree_bool_false", scope: !1, file: !1, line: 230, type: !830, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{!134, !769, !134}
!832 = !{!833, !834}
!833 = !DILocalVariable(name: "a", arg: 1, scope: !829, file: !1, line: 230, type: !769)
!834 = !DILocalVariable(name: "b", arg: 2, scope: !829, file: !1, line: 230, type: !134)
!835 = !DILocation(line: 0, scope: !829)
!836 = !DILocation(line: 232, column: 3, scope: !829)
!837 = distinct !DISubprogram(name: "hook_bool_rtx_false", scope: !1, file: !1, line: 236, type: !838, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{!134, !734}
!840 = !{!841}
!841 = !DILocalVariable(name: "a", arg: 1, scope: !837, file: !1, line: 236, type: !734)
!842 = !DILocation(line: 0, scope: !837)
!843 = !DILocation(line: 238, column: 3, scope: !837)
!844 = distinct !DISubprogram(name: "hook_bool_uintp_uintp_false", scope: !1, file: !1, line: 242, type: !845, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !848)
!845 = !DISubroutineType(types: !846)
!846 = !{!134, !847, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!848 = !{!849, !850}
!849 = !DILocalVariable(name: "a", arg: 1, scope: !844, file: !1, line: 242, type: !847)
!850 = !DILocalVariable(name: "b", arg: 2, scope: !844, file: !1, line: 243, type: !847)
!851 = !DILocation(line: 0, scope: !844)
!852 = !DILocation(line: 245, column: 3, scope: !844)
!853 = distinct !DISubprogram(name: "hook_bool_rtx_int_int_intp_bool_false", scope: !1, file: !1, line: 249, type: !854, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !857)
!854 = !DISubroutineType(types: !855)
!855 = !{!134, !734, !135, !135, !856, !134}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!857 = !{!858, !859, !860, !861, !862}
!858 = !DILocalVariable(name: "a", arg: 1, scope: !853, file: !1, line: 249, type: !734)
!859 = !DILocalVariable(name: "b", arg: 2, scope: !853, file: !1, line: 250, type: !135)
!860 = !DILocalVariable(name: "c", arg: 3, scope: !853, file: !1, line: 251, type: !135)
!861 = !DILocalVariable(name: "d", arg: 4, scope: !853, file: !1, line: 252, type: !856)
!862 = !DILocalVariable(name: "speed_p", arg: 5, scope: !853, file: !1, line: 253, type: !134)
!863 = !DILocation(line: 0, scope: !853)
!864 = !DILocation(line: 255, column: 3, scope: !853)
!865 = distinct !DISubprogram(name: "hook_rtx_rtx_identity", scope: !1, file: !1, line: 260, type: !866, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{!734, !734}
!868 = !{!869}
!869 = !DILocalVariable(name: "x", arg: 1, scope: !865, file: !1, line: 260, type: !734)
!870 = !DILocation(line: 0, scope: !865)
!871 = !DILocation(line: 262, column: 3, scope: !865)
!872 = distinct !DISubprogram(name: "hook_rtx_rtx_null", scope: !1, file: !1, line: 267, type: !866, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !873)
!873 = !{!874}
!874 = !DILocalVariable(name: "x", arg: 1, scope: !872, file: !1, line: 267, type: !734)
!875 = !DILocation(line: 0, scope: !872)
!876 = !DILocation(line: 269, column: 3, scope: !872)
!877 = distinct !DISubprogram(name: "hook_rtx_tree_int_null", scope: !1, file: !1, line: 274, type: !878, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{!734, !769, !135}
!880 = !{!881, !882}
!881 = !DILocalVariable(name: "a", arg: 1, scope: !877, file: !1, line: 274, type: !769)
!882 = !DILocalVariable(name: "b", arg: 2, scope: !877, file: !1, line: 274, type: !135)
!883 = !DILocation(line: 0, scope: !877)
!884 = !DILocation(line: 276, column: 3, scope: !877)
!885 = distinct !DISubprogram(name: "hook_tree_tree_tree_tree_3rd_identity", scope: !1, file: !1, line: 281, type: !886, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{!769, !769, !769, !769}
!888 = !{!889, !890, !891}
!889 = !DILocalVariable(name: "a", arg: 1, scope: !885, file: !1, line: 281, type: !769)
!890 = !DILocalVariable(name: "b", arg: 2, scope: !885, file: !1, line: 282, type: !769)
!891 = !DILocalVariable(name: "c", arg: 3, scope: !885, file: !1, line: 282, type: !769)
!892 = !DILocation(line: 0, scope: !885)
!893 = !DILocation(line: 284, column: 3, scope: !885)
!894 = distinct !DISubprogram(name: "hook_constcharptr_const_tree_null", scope: !1, file: !1, line: 289, type: !895, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!140, !670}
!897 = !{!898}
!898 = !DILocalVariable(name: "t", arg: 1, scope: !894, file: !1, line: 289, type: !670)
!899 = !DILocation(line: 0, scope: !894)
!900 = !DILocation(line: 291, column: 3, scope: !894)
!901 = distinct !DISubprogram(name: "hook_tree_tree_tree_bool_null", scope: !1, file: !1, line: 295, type: !902, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{!769, !769, !769, !134}
!904 = !{!905, !906, !907}
!905 = !DILocalVariable(name: "t0", arg: 1, scope: !901, file: !1, line: 295, type: !769)
!906 = !DILocalVariable(name: "t1", arg: 2, scope: !901, file: !1, line: 296, type: !769)
!907 = !DILocalVariable(name: "ignore", arg: 3, scope: !901, file: !1, line: 297, type: !134)
!908 = !DILocation(line: 0, scope: !901)
!909 = !DILocation(line: 299, column: 3, scope: !901)
!910 = distinct !DISubprogram(name: "hook_tree_tree_tree_null", scope: !1, file: !1, line: 303, type: !911, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{!769, !769, !769}
!913 = !{!914, !915}
!914 = !DILocalVariable(name: "t0", arg: 1, scope: !910, file: !1, line: 303, type: !769)
!915 = !DILocalVariable(name: "t1", arg: 2, scope: !910, file: !1, line: 303, type: !769)
!916 = !DILocation(line: 0, scope: !910)
!917 = !DILocation(line: 305, column: 3, scope: !910)
!918 = distinct !DISubprogram(name: "hook_tree_tree_tree_tree_null", scope: !1, file: !1, line: 309, type: !886, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !919)
!919 = !{!920, !921, !922}
!920 = !DILocalVariable(name: "t0", arg: 1, scope: !918, file: !1, line: 309, type: !769)
!921 = !DILocalVariable(name: "t1", arg: 2, scope: !918, file: !1, line: 310, type: !769)
!922 = !DILocalVariable(name: "t2", arg: 3, scope: !918, file: !1, line: 311, type: !769)
!923 = !DILocation(line: 0, scope: !918)
!924 = !DILocation(line: 313, column: 3, scope: !918)
!925 = distinct !DISubprogram(name: "hook_constcharptr_const_rtx_null", scope: !1, file: !1, line: 318, type: !926, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!140, !643}
!928 = !{!929}
!929 = !DILocalVariable(name: "r", arg: 1, scope: !925, file: !1, line: 318, type: !643)
!930 = !DILocation(line: 0, scope: !925)
!931 = !DILocation(line: 320, column: 3, scope: !925)
!932 = distinct !DISubprogram(name: "hook_constcharptr_const_tree_const_tree_null", scope: !1, file: !1, line: 324, type: !933, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!140, !670, !670}
!935 = !{!936, !937}
!936 = !DILocalVariable(name: "t0", arg: 1, scope: !932, file: !1, line: 324, type: !670)
!937 = !DILocalVariable(name: "t1", arg: 2, scope: !932, file: !1, line: 325, type: !670)
!938 = !DILocation(line: 0, scope: !932)
!939 = !DILocation(line: 327, column: 3, scope: !932)
!940 = distinct !DISubprogram(name: "hook_constcharptr_int_const_tree_null", scope: !1, file: !1, line: 331, type: !941, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{!140, !135, !670}
!943 = !{!944, !945}
!944 = !DILocalVariable(name: "i", arg: 1, scope: !940, file: !1, line: 331, type: !135)
!945 = !DILocalVariable(name: "t0", arg: 2, scope: !940, file: !1, line: 332, type: !670)
!946 = !DILocation(line: 0, scope: !940)
!947 = !DILocation(line: 334, column: 3, scope: !940)
!948 = distinct !DISubprogram(name: "hook_constcharptr_int_const_tree_const_tree_null", scope: !1, file: !1, line: 338, type: !949, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!140, !135, !670, !670}
!951 = !{!952, !953, !954}
!952 = !DILocalVariable(name: "i", arg: 1, scope: !948, file: !1, line: 338, type: !135)
!953 = !DILocalVariable(name: "t0", arg: 2, scope: !948, file: !1, line: 339, type: !670)
!954 = !DILocalVariable(name: "t1", arg: 3, scope: !948, file: !1, line: 340, type: !670)
!955 = !DILocation(line: 0, scope: !948)
!956 = !DILocation(line: 342, column: 3, scope: !948)
!957 = distinct !DISubprogram(name: "hook_tree_const_tree_null", scope: !1, file: !1, line: 347, type: !958, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !960)
!958 = !DISubroutineType(types: !959)
!959 = !{!769, !670}
!960 = !{!961}
!961 = !DILocalVariable(name: "t", arg: 1, scope: !957, file: !1, line: 347, type: !670)
!962 = !DILocation(line: 0, scope: !957)
!963 = !DILocation(line: 349, column: 3, scope: !957)
