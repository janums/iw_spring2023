; ModuleID = 'varray.bc'
source_filename = "varray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.anon = type { i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.varray_head_tag = type { i64, i64, i32, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@element = internal unnamed_addr constant [22 x %struct.anon] [%struct.anon { i8 1, i8 1 }, %struct.anon { i8 1, i8 1 }, %struct.anon { i8 2, i8 1 }, %struct.anon { i8 2, i8 1 }, %struct.anon { i8 4, i8 1 }, %struct.anon { i8 4, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 0 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 0 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }, %struct.anon { i8 8, i8 1 }], align 16, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !136 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !149, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !152
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !153
  ret i32 %call, !dbg !154
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !155 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !159
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !160
  ret i32 %call, !dbg !161
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !162 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !217, metadata !DIExpression()), !dbg !218
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !219
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !219
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !219
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !219
  %cmp = icmp uge i8* %0, %1, !dbg !219
  %conv1 = zext i1 %cmp to i64, !dbg !219
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !219
  %tobool = icmp eq i64 %expval, 0, !dbg !219
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !219

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !219
  br label %cond.end, !dbg !219

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !219
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !219
  %2 = load i8, i8* %0, align 1, !dbg !219
  %conv3 = zext i8 %2 to i32, !dbg !219
  br label %cond.end, !dbg !219

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !219
  ret i32 %cond, !dbg !220
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !221 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !223, metadata !DIExpression()), !dbg !224
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !225
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !225
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !225
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !225
  %cmp = icmp uge i8* %0, %1, !dbg !225
  %conv1 = zext i1 %cmp to i64, !dbg !225
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !225
  %tobool = icmp eq i64 %expval, 0, !dbg !225
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !225

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !225
  br label %cond.end, !dbg !225

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !225
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !225
  %2 = load i8, i8* %0, align 1, !dbg !225
  %conv3 = zext i8 %2 to i32, !dbg !225
  br label %cond.end, !dbg !225

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !225
  ret i32 %cond, !dbg !226
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !227 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !228
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !228
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !228
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !228
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !228
  %cmp = icmp uge i8* %1, %2, !dbg !228
  %conv1 = zext i1 %cmp to i64, !dbg !228
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !228
  %tobool = icmp eq i64 %expval, 0, !dbg !228
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !228

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !228
  br label %cond.end, !dbg !228

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !228
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !228
  %3 = load i8, i8* %1, align 1, !dbg !228
  %conv3 = zext i8 %3 to i32, !dbg !228
  br label %cond.end, !dbg !228

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !228
  ret i32 %cond, !dbg !229
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !230 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !236
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !237
  ret i32 %call, !dbg !238
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !239 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !243, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !244, metadata !DIExpression()), !dbg !245
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !246
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !246
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !246
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !246
  %cmp = icmp uge i8* %0, %1, !dbg !246
  %conv1 = zext i1 %cmp to i64, !dbg !246
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !246
  %tobool = icmp eq i64 %expval, 0, !dbg !246
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !246

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !246
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !246
  br label %cond.end, !dbg !246

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !246
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !246
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !246
  store i8 %conv2, i8* %0, align 1, !dbg !246
  %conv6 = and i32 %__c, 255, !dbg !246
  br label %cond.end, !dbg !246

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !246
  ret i32 %cond, !dbg !247
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !248 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !250, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !251, metadata !DIExpression()), !dbg !252
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !253
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !253
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !253
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !253
  %cmp = icmp uge i8* %0, %1, !dbg !253
  %conv1 = zext i1 %cmp to i64, !dbg !253
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !253
  %tobool = icmp eq i64 %expval, 0, !dbg !253
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !253

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !253
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !253
  br label %cond.end, !dbg !253

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !253
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !253
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !253
  store i8 %conv2, i8* %0, align 1, !dbg !253
  %conv6 = and i32 %__c, 255, !dbg !253
  br label %cond.end, !dbg !253

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !253
  ret i32 %cond, !dbg !254
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !255 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !259
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !259
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !259
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !259
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !259
  %cmp = icmp uge i8* %1, %2, !dbg !259
  %conv1 = zext i1 %cmp to i64, !dbg !259
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !259
  %tobool = icmp eq i64 %expval, 0, !dbg !259
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !259

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !259
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !259
  br label %cond.end, !dbg !259

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !259
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !259
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !259
  store i8 %conv4, i8* %1, align 1, !dbg !259
  %conv6 = and i32 %__c, 255, !dbg !259
  br label %cond.end, !dbg !259

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !259
  ret i32 %cond, !dbg !260
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !261 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !267, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i64* %__n, metadata !268, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !269, metadata !DIExpression()), !dbg !270
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !271
  ret i64 %call, !dbg !272
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !273 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !275, metadata !DIExpression()), !dbg !276
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !277
  %0 = load i32, i32* %_flags, align 8, !dbg !277
  %and = lshr i32 %0, 4, !dbg !277
  %and.lobit = and i32 %and, 1, !dbg !277
  ret i32 %and.lobit, !dbg !278
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !279 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !281, metadata !DIExpression()), !dbg !282
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !283
  %0 = load i32, i32* %_flags, align 8, !dbg !283
  %and = lshr i32 %0, 5, !dbg !283
  %and.lobit = and i32 %and, 1, !dbg !283
  ret i32 %and.lobit, !dbg !284
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !285 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !288, metadata !DIExpression()), !dbg !289
  %__c.off = add i32 %__c, 128, !dbg !290
  %0 = icmp ult i32 %__c.off, 384, !dbg !290
  br i1 %0, label %cond.true, label %cond.end, !dbg !290

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !291
  %1 = load i32*, i32** %call, align 8, !dbg !292
  %idxprom = sext i32 %__c to i64, !dbg !293
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !293
  %2 = load i32, i32* %arrayidx, align 4, !dbg !293
  br label %cond.end, !dbg !294

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !294
  ret i32 %cond, !dbg !295
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !296 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !298, metadata !DIExpression()), !dbg !299
  %__c.off = add i32 %__c, 128, !dbg !300
  %0 = icmp ult i32 %__c.off, 384, !dbg !300
  br i1 %0, label %cond.true, label %cond.end, !dbg !300

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !301
  %1 = load i32*, i32** %call, align 8, !dbg !302
  %idxprom = sext i32 %__c to i64, !dbg !303
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !303
  %2 = load i32, i32* %arrayidx, align 4, !dbg !303
  br label %cond.end, !dbg !304

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !304
  ret i32 %cond, !dbg !305
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !306 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !311, metadata !DIExpression()), !dbg !312
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !313
  %conv = trunc i64 %call to i32, !dbg !314
  ret i32 %conv, !dbg !315
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !316 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !320, metadata !DIExpression()), !dbg !321
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !322
  ret i64 %call, !dbg !323
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !324 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !329, metadata !DIExpression()), !dbg !330
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !331
  ret i64 %call, !dbg !332
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !333 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !344, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i8* %__base, metadata !345, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !346, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i64 %__size, metadata !347, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i64 0, metadata !349, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !350, metadata !DIExpression()), !dbg !354
  br label %while.cond, !dbg !355

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !356
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !354
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !350, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !349, metadata !DIExpression()), !dbg !354
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !357
  br i1 %cmp, label %while.body, label %cleanup, !dbg !355

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !358
  %div = lshr i64 %add, 1, !dbg !360
  call void @llvm.dbg.value(metadata i64 %div, metadata !351, metadata !DIExpression()), !dbg !354
  %mul = mul i64 %div, %__size, !dbg !361
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !362
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !352, metadata !DIExpression()), !dbg !354
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !363
  call void @llvm.dbg.value(metadata i32 %call, metadata !353, metadata !DIExpression()), !dbg !354
  %cmp1 = icmp slt i32 %call, 0, !dbg !364
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !366

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !367
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !369

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !370
  call void @llvm.dbg.value(metadata i64 %add4, metadata !349, metadata !DIExpression()), !dbg !354
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !354
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !354
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !350, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !349, metadata !DIExpression()), !dbg !354
  br label %while.cond, !dbg !355, !llvm.loop !371

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !354
  ret i8* %retval.0, !dbg !373
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !374 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !380, metadata !DIExpression()), !dbg !381
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !382
  ret double %call, !dbg !383
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !384 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !393, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 %base, metadata !395, metadata !DIExpression()), !dbg !396
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !397
  ret i64 %call, !dbg !398
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !399 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !405, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !406, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 %base, metadata !407, metadata !DIExpression()), !dbg !408
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !409
  ret i64 %call, !dbg !410
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !411 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !422, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !423, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i32 %base, metadata !424, metadata !DIExpression()), !dbg !425
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !426
  ret i64 %call, !dbg !427
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !428 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !432, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !433, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 %base, metadata !434, metadata !DIExpression()), !dbg !435
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !436
  ret i64 %call, !dbg !437
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !438 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !480, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !481, metadata !DIExpression()), !dbg !482
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !483
  ret i32 %call, !dbg !484
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !485 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !487, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !488, metadata !DIExpression()), !dbg !489
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !490
  ret i32 %call, !dbg !491
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !492 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !496, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !497, metadata !DIExpression()), !dbg !498
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !499
  ret i32 %call, !dbg !500
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !501 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !505, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !506, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !507, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !508, metadata !DIExpression()), !dbg !509
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !510
  ret i32 %call, !dbg !511
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !512 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !516, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !517, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !518, metadata !DIExpression()), !dbg !519
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !518, metadata !DIExpression(DW_OP_deref)), !dbg !519
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !520
  ret i32 %call, !dbg !521
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !522 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !526, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i8* %__path, metadata !527, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !528, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !529, metadata !DIExpression()), !dbg !530
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !529, metadata !DIExpression(DW_OP_deref)), !dbg !530
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !531
  ret i32 %call, !dbg !532
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !533 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !557, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !558, metadata !DIExpression()), !dbg !559
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !560
  ret i32 %call, !dbg !561
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !562 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !564, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !565, metadata !DIExpression()), !dbg !566
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !567
  ret i32 %call, !dbg !568
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !569 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !573, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !574, metadata !DIExpression()), !dbg !575
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !576
  ret i32 %call, !dbg !577
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !578 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !582, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !583, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !584, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !585, metadata !DIExpression()), !dbg !586
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !587
  ret i32 %call, !dbg !588
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.varray_head_tag* @varray_init(i64 %num_elements, i32 %element_kind, i8* %name) local_unnamed_addr #3 !dbg !589 {
entry:
  call void @llvm.dbg.value(metadata i64 %num_elements, metadata !594, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i32 %element_kind, metadata !595, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i8* %name, metadata !596, metadata !DIExpression()), !dbg !599
  %idxprom = zext i32 %element_kind to i64, !dbg !600
  %size = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @element, i64 0, i64 %idxprom, i32 0, !dbg !601
  %0 = load i8, i8* %size, align 2, !dbg !601
  %conv = zext i8 %0 to i64, !dbg !600
  %mul = mul i64 %conv, %num_elements, !dbg !602
  call void @llvm.dbg.value(metadata i64 %mul, metadata !597, metadata !DIExpression()), !dbg !599
  %1 = icmp ne i32 %element_kind, 11, !dbg !603
  %2 = icmp ne i32 %element_kind, 17, !dbg !603
  %tobool = and i1 %1, %2, !dbg !603
  %add = add i64 %mul, 32, !dbg !605
  br i1 %tobool, label %if.then, label %if.else, !dbg !606

if.then:                                          ; preds = %entry
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 %add) #5, !dbg !607
  call void @llvm.dbg.value(metadata i8* %call, metadata !598, metadata !DIExpression()), !dbg !599
  br label %if.end, !dbg !608

if.else:                                          ; preds = %entry
  %call4 = tail call i8* @xcalloc(i64 1, i64 %add) #5, !dbg !609
  call void @llvm.dbg.value(metadata i8* %call4, metadata !598, metadata !DIExpression()), !dbg !599
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ptr.0.in = phi i8* [ %call, %if.then ], [ %call4, %if.else ]
  %ptr.0 = bitcast i8* %ptr.0.in to %struct.varray_head_tag*, !dbg !605
  call void @llvm.dbg.value(metadata %struct.varray_head_tag* %ptr.0, metadata !598, metadata !DIExpression()), !dbg !599
  %num_elements5 = bitcast i8* %ptr.0.in to i64*, !dbg !610
  store i64 %num_elements, i64* %num_elements5, align 8, !dbg !611
  %elements_used = getelementptr inbounds i8, i8* %ptr.0.in, i64 8, !dbg !612
  %3 = bitcast i8* %elements_used to i64*, !dbg !612
  store i64 0, i64* %3, align 8, !dbg !613
  %type = getelementptr inbounds i8, i8* %ptr.0.in, i64 16, !dbg !614
  %4 = bitcast i8* %type to i32*, !dbg !614
  store i32 %element_kind, i32* %4, align 8, !dbg !615
  %name6 = getelementptr inbounds i8, i8* %ptr.0.in, i64 24, !dbg !616
  %5 = bitcast i8* %name6 to i8**, !dbg !616
  store i8* %name, i8** %5, align 8, !dbg !617
  ret %struct.varray_head_tag* %ptr.0, !dbg !618
}

declare dso_local i8* @ggc_alloc_cleared_stat(i64) local_unnamed_addr #1

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %va, i64 %n) local_unnamed_addr #3 !dbg !619 {
entry:
  call void @llvm.dbg.value(metadata %struct.varray_head_tag* %va, metadata !623, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i64 %n, metadata !624, metadata !DIExpression()), !dbg !631
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %va, i64 0, i32 0, !dbg !632
  %0 = load i64, i64* %num_elements, align 8, !dbg !632
  call void @llvm.dbg.value(metadata i64 %0, metadata !625, metadata !DIExpression()), !dbg !631
  %cmp = icmp eq i64 %0, %n, !dbg !633
  br i1 %cmp, label %if.end15, label %if.then, !dbg !634

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %va, i64 0, i32 2, !dbg !635
  %1 = load i32, i32* %type, align 8, !dbg !635
  %idxprom = zext i32 %1 to i64, !dbg !636
  %size = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @element, i64 0, i64 %idxprom, i32 0, !dbg !637
  %2 = load i8, i8* %size, align 2, !dbg !637
  %conv = zext i8 %2 to i64, !dbg !636
  call void @llvm.dbg.value(metadata i64 %conv, metadata !626, metadata !DIExpression()), !dbg !638
  %mul = mul i64 %0, %conv, !dbg !639
  call void @llvm.dbg.value(metadata i64 %mul, metadata !629, metadata !DIExpression()), !dbg !638
  %mul1 = mul i64 %conv, %n, !dbg !640
  call void @llvm.dbg.value(metadata i64 %mul1, metadata !630, metadata !DIExpression()), !dbg !638
  %3 = icmp ne i32 %1, 11, !dbg !641
  %4 = icmp ne i32 %1, 17, !dbg !641
  %tobool = and i1 %3, %4, !dbg !641
  %5 = bitcast %struct.varray_head_tag* %va to i8*, !dbg !643
  %add = add i64 %mul1, 32, !dbg !643
  br i1 %tobool, label %if.then5, label %if.else, !dbg !644

if.then5:                                         ; preds = %if.then
  %call = tail call i8* @ggc_realloc_stat(i8* %5, i64 %add) #5, !dbg !645
  call void @llvm.dbg.value(metadata i8* %call, metadata !623, metadata !DIExpression()), !dbg !631
  br label %if.end, !dbg !646

if.else:                                          ; preds = %if.then
  %call7 = tail call i8* @xrealloc(i8* %5, i64 %add) #5, !dbg !647
  call void @llvm.dbg.value(metadata i8* %call7, metadata !623, metadata !DIExpression()), !dbg !631
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %va.addr.0.in = phi i8* [ %call, %if.then5 ], [ %call7, %if.else ]
  %va.addr.0 = bitcast i8* %va.addr.0.in to %struct.varray_head_tag*, !dbg !643
  call void @llvm.dbg.value(metadata %struct.varray_head_tag* %va.addr.0, metadata !623, metadata !DIExpression()), !dbg !631
  %num_elements8 = bitcast i8* %va.addr.0.in to i64*, !dbg !648
  store i64 %n, i64* %num_elements8, align 8, !dbg !649
  %cmp9 = icmp ult i64 %0, %n, !dbg !650
  br i1 %cmp9, label %if.then11, label %if.end15, !dbg !652

if.then11:                                        ; preds = %if.end
  %data = getelementptr inbounds i8, i8* %va.addr.0.in, i64 32, !dbg !653
  %arrayidx12 = getelementptr inbounds i8, i8* %data, i64 %mul, !dbg !654
  %sub = sub i64 %mul1, %mul, !dbg !655
  %call13 = tail call i8* @memset(i8* nonnull %arrayidx12, i32 0, i64 %sub) #5, !dbg !656
  br label %if.end15, !dbg !656

if.end15:                                         ; preds = %entry, %if.end, %if.then11
  %va.addr.1 = phi %struct.varray_head_tag* [ %va, %entry ], [ %va.addr.0, %if.then11 ], [ %va.addr.0, %if.end ]
  call void @llvm.dbg.value(metadata %struct.varray_head_tag* %va.addr.1, metadata !623, metadata !DIExpression()), !dbg !631
  ret %struct.varray_head_tag* %va.addr.1, !dbg !657
}

declare dso_local i8* @ggc_realloc_stat(i8*, i64) local_unnamed_addr #1

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @varray_clear(%struct.varray_head_tag* %va) local_unnamed_addr #3 !dbg !658 {
entry:
  call void @llvm.dbg.value(metadata %struct.varray_head_tag* %va, metadata !662, metadata !DIExpression()), !dbg !664
  %type = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %va, i64 0, i32 2, !dbg !665
  %0 = load i32, i32* %type, align 8, !dbg !665
  %idxprom = zext i32 %0 to i64, !dbg !666
  %size = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @element, i64 0, i64 %idxprom, i32 0, !dbg !667
  %1 = load i8, i8* %size, align 2, !dbg !667
  %conv = zext i8 %1 to i64, !dbg !666
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %va, i64 0, i32 0, !dbg !668
  %2 = load i64, i64* %num_elements, align 8, !dbg !668
  %mul = mul i64 %2, %conv, !dbg !669
  call void @llvm.dbg.value(metadata i64 %mul, metadata !663, metadata !DIExpression()), !dbg !664
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %va, i64 0, i32 4, !dbg !670
  %arraydecay = bitcast %union.varray_data_tag* %data to i8*, !dbg !671
  %call = tail call i8* @memset(i8* nonnull %arraydecay, i32 0, i64 %mul) #5, !dbg !672
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %va, i64 0, i32 1, !dbg !673
  store i64 0, i64* %elements_used, align 8, !dbg !674
  ret void, !dbg !675
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_varray_statistics() local_unnamed_addr #3 !dbg !676 {
entry:
  ret void, !dbg !679
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
!llvm.module.flags = !{!132, !133, !134}
!llvm.ident = !{!135}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "element", scope: !2, file: !3, line: 89, type: !124, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !123, nameTableKind: None)
!3 = !DIFile(filename: "varray.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "varray_data_enum", file: !6, line: 38, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./varray.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!9 = !DIEnumerator(name: "VARRAY_DATA_C", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "VARRAY_DATA_UC", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "VARRAY_DATA_S", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "VARRAY_DATA_US", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "VARRAY_DATA_I", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "VARRAY_DATA_U", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "VARRAY_DATA_L", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "VARRAY_DATA_UL", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "VARRAY_DATA_HINT", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "VARRAY_DATA_UHINT", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "VARRAY_DATA_GENERIC", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "VARRAY_DATA_GENERIC_NOGC", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "VARRAY_DATA_CPTR", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "VARRAY_DATA_RTX", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "VARRAY_DATA_RTVEC", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "VARRAY_DATA_TREE", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "VARRAY_DATA_BITMAP", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "VARRAY_DATA_REG", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "VARRAY_DATA_BB", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "VARRAY_DATA_TE", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "VARRAY_DATA_EDGE", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "VARRAY_DATA_TREE_PTR", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "NUM_VARRAY_DATA", value: 22, isUnsigned: true)
!32 = !{!33, !34, !35, !36, !39, !40, !42}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varray_head_tag", file: !6, line: 113, size: 320, elements: !44)
!44 = !{!45, !49, !50, !51, !52}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "num_elements", scope: !43, file: !6, line: 114, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "elements_used", scope: !43, file: !6, line: 115, baseType: !46, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !6, line: 117, baseType: !5, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !43, file: !6, line: 118, baseType: !40, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !43, file: !6, line: 119, baseType: !53, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "varray_data", file: !6, line: 110, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "varray_data_tag", file: !6, line: 65, size: 64, elements: !55)
!55 = !{!56, !60, !62, !65, !68, !70, !72, !75, !77, !78, !79, !81, !82, !84, !90, !95, !100, !104, !108, !112, !116, !120}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_c", scope: !54, file: !6, line: 67, baseType: !57, size: 8)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 1)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_uc", scope: !54, file: !6, line: 69, baseType: !61, size: 8)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, elements: !58)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_s", scope: !54, file: !6, line: 71, baseType: !63, size: 16)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 16, elements: !58)
!64 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_us", scope: !54, file: !6, line: 73, baseType: !66, size: 16)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 16, elements: !58)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_i", scope: !54, file: !6, line: 75, baseType: !69, size: 32)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !58)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_u", scope: !54, file: !6, line: 77, baseType: !71, size: 32)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !58)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_l", scope: !54, file: !6, line: 79, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !58)
!74 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_ul", scope: !54, file: !6, line: 81, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !58)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_hint", scope: !54, file: !6, line: 83, baseType: !73, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_uhint", scope: !54, file: !6, line: 85, baseType: !76, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_generic", scope: !54, file: !6, line: 87, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !58)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_generic_nogc", scope: !54, file: !6, line: 89, baseType: !80, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_cptr", scope: !54, file: !6, line: 91, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !58)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_rtx", scope: !54, file: !6, line: 93, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 64, elements: !58)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !87, line: 50, baseType: !88)
!87 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !87, line: 49, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_rtvec", scope: !54, file: !6, line: 95, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !58)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !87, line: 53, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !87, line: 52, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_tree", scope: !54, file: !6, line: 97, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !58)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !87, line: 56, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !87, line: 55, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_bitmap", scope: !54, file: !6, line: 99, baseType: !101, size: 64)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !58)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !87, line: 46, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_reg", scope: !54, file: !6, line: 101, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !58)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "reg_info_def", file: !6, line: 100, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_bb", scope: !54, file: !6, line: 103, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !58)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !87, line: 110, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_te", scope: !54, file: !6, line: 105, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !58)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "elt_list", file: !6, line: 104, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_e", scope: !54, file: !6, line: 107, baseType: !117, size: 64)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !58)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !87, line: 107, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_tp", scope: !54, file: !6, line: 109, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64, elements: !58)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!123 = !{!0}
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 352, elements: !130)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 86, size: 16, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !126, file: !3, line: 87, baseType: !34, size: 8)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "uses_ggc", scope: !126, file: !3, line: 88, baseType: !34, size: 8, offset: 8)
!130 = !{!131}
!131 = !DISubrange(count: 22)
!132 = !{i32 2, !"Dwarf Version", i32 4}
!133 = !{i32 2, !"Debug Info Version", i32 3}
!134 = !{i32 1, !"wchar_size", i32 4}
!135 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!136 = distinct !DISubprogram(name: "vprintf", scope: !137, file: !137, line: 39, type: !138, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!138 = !DISubroutineType(types: !139)
!139 = !{!35, !140, !141}
!140 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !143)
!143 = !{!144, !145, !146, !147}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !142, file: !3, baseType: !7, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !142, file: !3, baseType: !7, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !142, file: !3, baseType: !39, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !142, file: !3, baseType: !39, size: 64, offset: 128)
!148 = !{!149, !150}
!149 = !DILocalVariable(name: "__fmt", arg: 1, scope: !136, file: !137, line: 39, type: !140)
!150 = !DILocalVariable(name: "__arg", arg: 2, scope: !136, file: !137, line: 39, type: !141)
!151 = !DILocation(line: 0, scope: !136)
!152 = !DILocation(line: 41, column: 20, scope: !136)
!153 = !DILocation(line: 41, column: 10, scope: !136)
!154 = !DILocation(line: 41, column: 3, scope: !136)
!155 = distinct !DISubprogram(name: "getchar", scope: !137, file: !137, line: 47, type: !156, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{!35}
!158 = !{}
!159 = !DILocation(line: 49, column: 16, scope: !155)
!160 = !DILocation(line: 49, column: 10, scope: !155)
!161 = !DILocation(line: 49, column: 3, scope: !155)
!162 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !137, file: !137, line: 56, type: !163, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !216)
!163 = !DISubroutineType(types: !164)
!164 = !{!35, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !167, line: 7, baseType: !168)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !169, line: 49, size: 1728, elements: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !186, !188, !189, !190, !193, !194, !196, !197, !200, !202, !205, !208, !209, !210, !211, !212}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !168, file: !169, line: 51, baseType: !35, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !168, file: !169, line: 54, baseType: !37, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !168, file: !169, line: 55, baseType: !37, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !168, file: !169, line: 56, baseType: !37, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !168, file: !169, line: 57, baseType: !37, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !168, file: !169, line: 58, baseType: !37, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !168, file: !169, line: 59, baseType: !37, size: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !168, file: !169, line: 60, baseType: !37, size: 64, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !168, file: !169, line: 61, baseType: !37, size: 64, offset: 512)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !168, file: !169, line: 64, baseType: !37, size: 64, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !168, file: !169, line: 65, baseType: !37, size: 64, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !168, file: !169, line: 66, baseType: !37, size: 64, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !168, file: !169, line: 68, baseType: !184, size: 64, offset: 768)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !169, line: 36, flags: DIFlagFwdDecl)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !168, file: !169, line: 70, baseType: !187, size: 64, offset: 832)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !168, file: !169, line: 72, baseType: !35, size: 32, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !168, file: !169, line: 73, baseType: !35, size: 32, offset: 928)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !168, file: !169, line: 74, baseType: !191, size: 64, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !192, line: 152, baseType: !74)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !168, file: !169, line: 77, baseType: !67, size: 16, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !168, file: !169, line: 78, baseType: !195, size: 8, offset: 1040)
!195 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !168, file: !169, line: 79, baseType: !57, size: 8, offset: 1048)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !168, file: !169, line: 81, baseType: !198, size: 64, offset: 1088)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !169, line: 43, baseType: null)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !168, file: !169, line: 89, baseType: !201, size: 64, offset: 1152)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !192, line: 153, baseType: !74)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !168, file: !169, line: 91, baseType: !203, size: 64, offset: 1216)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !169, line: 37, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !168, file: !169, line: 92, baseType: !206, size: 64, offset: 1280)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !169, line: 38, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !168, file: !169, line: 93, baseType: !187, size: 64, offset: 1344)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !168, file: !169, line: 94, baseType: !39, size: 64, offset: 1408)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !168, file: !169, line: 95, baseType: !46, size: 64, offset: 1472)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !168, file: !169, line: 96, baseType: !35, size: 32, offset: 1536)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !168, file: !169, line: 98, baseType: !213, size: 160, offset: 1568)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 20)
!216 = !{!217}
!217 = !DILocalVariable(name: "__fp", arg: 1, scope: !162, file: !137, line: 56, type: !165)
!218 = !DILocation(line: 0, scope: !162)
!219 = !DILocation(line: 58, column: 10, scope: !162)
!220 = !DILocation(line: 58, column: 3, scope: !162)
!221 = distinct !DISubprogram(name: "getc_unlocked", scope: !137, file: !137, line: 66, type: !163, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!222 = !{!223}
!223 = !DILocalVariable(name: "__fp", arg: 1, scope: !221, file: !137, line: 66, type: !165)
!224 = !DILocation(line: 0, scope: !221)
!225 = !DILocation(line: 68, column: 10, scope: !221)
!226 = !DILocation(line: 68, column: 3, scope: !221)
!227 = distinct !DISubprogram(name: "getchar_unlocked", scope: !137, file: !137, line: 73, type: !156, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!228 = !DILocation(line: 75, column: 10, scope: !227)
!229 = !DILocation(line: 75, column: 3, scope: !227)
!230 = distinct !DISubprogram(name: "putchar", scope: !137, file: !137, line: 82, type: !231, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{!35, !35}
!233 = !{!234}
!234 = !DILocalVariable(name: "__c", arg: 1, scope: !230, file: !137, line: 82, type: !35)
!235 = !DILocation(line: 0, scope: !230)
!236 = !DILocation(line: 84, column: 21, scope: !230)
!237 = !DILocation(line: 84, column: 10, scope: !230)
!238 = !DILocation(line: 84, column: 3, scope: !230)
!239 = distinct !DISubprogram(name: "fputc_unlocked", scope: !137, file: !137, line: 91, type: !240, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{!35, !35, !165}
!242 = !{!243, !244}
!243 = !DILocalVariable(name: "__c", arg: 1, scope: !239, file: !137, line: 91, type: !35)
!244 = !DILocalVariable(name: "__stream", arg: 2, scope: !239, file: !137, line: 91, type: !165)
!245 = !DILocation(line: 0, scope: !239)
!246 = !DILocation(line: 93, column: 10, scope: !239)
!247 = !DILocation(line: 93, column: 3, scope: !239)
!248 = distinct !DISubprogram(name: "putc_unlocked", scope: !137, file: !137, line: 101, type: !240, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!249 = !{!250, !251}
!250 = !DILocalVariable(name: "__c", arg: 1, scope: !248, file: !137, line: 101, type: !35)
!251 = !DILocalVariable(name: "__stream", arg: 2, scope: !248, file: !137, line: 101, type: !165)
!252 = !DILocation(line: 0, scope: !248)
!253 = !DILocation(line: 103, column: 10, scope: !248)
!254 = !DILocation(line: 103, column: 3, scope: !248)
!255 = distinct !DISubprogram(name: "putchar_unlocked", scope: !137, file: !137, line: 108, type: !231, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!256 = !{!257}
!257 = !DILocalVariable(name: "__c", arg: 1, scope: !255, file: !137, line: 108, type: !35)
!258 = !DILocation(line: 0, scope: !255)
!259 = !DILocation(line: 110, column: 10, scope: !255)
!260 = !DILocation(line: 110, column: 3, scope: !255)
!261 = distinct !DISubprogram(name: "getline", scope: !137, file: !137, line: 118, type: !262, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !36, !265, !165}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !192, line: 193, baseType: !74)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!266 = !{!267, !268, !269}
!267 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !261, file: !137, line: 118, type: !36)
!268 = !DILocalVariable(name: "__n", arg: 2, scope: !261, file: !137, line: 118, type: !265)
!269 = !DILocalVariable(name: "__stream", arg: 3, scope: !261, file: !137, line: 118, type: !165)
!270 = !DILocation(line: 0, scope: !261)
!271 = !DILocation(line: 120, column: 10, scope: !261)
!272 = !DILocation(line: 120, column: 3, scope: !261)
!273 = distinct !DISubprogram(name: "feof_unlocked", scope: !137, file: !137, line: 128, type: !163, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !274)
!274 = !{!275}
!275 = !DILocalVariable(name: "__stream", arg: 1, scope: !273, file: !137, line: 128, type: !165)
!276 = !DILocation(line: 0, scope: !273)
!277 = !DILocation(line: 130, column: 10, scope: !273)
!278 = !DILocation(line: 130, column: 3, scope: !273)
!279 = distinct !DISubprogram(name: "ferror_unlocked", scope: !137, file: !137, line: 135, type: !163, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !280)
!280 = !{!281}
!281 = !DILocalVariable(name: "__stream", arg: 1, scope: !279, file: !137, line: 135, type: !165)
!282 = !DILocation(line: 0, scope: !279)
!283 = !DILocation(line: 137, column: 10, scope: !279)
!284 = !DILocation(line: 137, column: 3, scope: !279)
!285 = distinct !DISubprogram(name: "tolower", scope: !286, file: !286, line: 207, type: !231, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!286 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!287 = !{!288}
!288 = !DILocalVariable(name: "__c", arg: 1, scope: !285, file: !286, line: 207, type: !35)
!289 = !DILocation(line: 0, scope: !285)
!290 = !DILocation(line: 209, column: 22, scope: !285)
!291 = !DILocation(line: 209, column: 39, scope: !285)
!292 = !DILocation(line: 209, column: 38, scope: !285)
!293 = !DILocation(line: 209, column: 37, scope: !285)
!294 = !DILocation(line: 209, column: 10, scope: !285)
!295 = !DILocation(line: 209, column: 3, scope: !285)
!296 = distinct !DISubprogram(name: "toupper", scope: !286, file: !286, line: 213, type: !231, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !297)
!297 = !{!298}
!298 = !DILocalVariable(name: "__c", arg: 1, scope: !296, file: !286, line: 213, type: !35)
!299 = !DILocation(line: 0, scope: !296)
!300 = !DILocation(line: 215, column: 22, scope: !296)
!301 = !DILocation(line: 215, column: 39, scope: !296)
!302 = !DILocation(line: 215, column: 38, scope: !296)
!303 = !DILocation(line: 215, column: 37, scope: !296)
!304 = !DILocation(line: 215, column: 10, scope: !296)
!305 = !DILocation(line: 215, column: 3, scope: !296)
!306 = distinct !DISubprogram(name: "atoi", scope: !307, file: !307, line: 361, type: !308, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !310)
!307 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!308 = !DISubroutineType(types: !309)
!309 = !{!35, !40}
!310 = !{!311}
!311 = !DILocalVariable(name: "__nptr", arg: 1, scope: !306, file: !307, line: 361, type: !40)
!312 = !DILocation(line: 0, scope: !306)
!313 = !DILocation(line: 363, column: 16, scope: !306)
!314 = !DILocation(line: 363, column: 10, scope: !306)
!315 = !DILocation(line: 363, column: 3, scope: !306)
!316 = distinct !DISubprogram(name: "atol", scope: !307, file: !307, line: 366, type: !317, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{!74, !40}
!319 = !{!320}
!320 = !DILocalVariable(name: "__nptr", arg: 1, scope: !316, file: !307, line: 366, type: !40)
!321 = !DILocation(line: 0, scope: !316)
!322 = !DILocation(line: 368, column: 10, scope: !316)
!323 = !DILocation(line: 368, column: 3, scope: !316)
!324 = distinct !DISubprogram(name: "atoll", scope: !307, file: !307, line: 373, type: !325, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !40}
!327 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!328 = !{!329}
!329 = !DILocalVariable(name: "__nptr", arg: 1, scope: !324, file: !307, line: 373, type: !40)
!330 = !DILocation(line: 0, scope: !324)
!331 = !DILocation(line: 375, column: 10, scope: !324)
!332 = !DILocation(line: 375, column: 3, scope: !324)
!333 = distinct !DISubprogram(name: "bsearch", scope: !334, file: !334, line: 20, type: !335, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !343)
!334 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!335 = !DISubroutineType(types: !336)
!336 = !{!39, !337, !337, !46, !46, !339}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !307, line: 808, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!35, !337, !337}
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353}
!344 = !DILocalVariable(name: "__key", arg: 1, scope: !333, file: !334, line: 20, type: !337)
!345 = !DILocalVariable(name: "__base", arg: 2, scope: !333, file: !334, line: 20, type: !337)
!346 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !333, file: !334, line: 20, type: !46)
!347 = !DILocalVariable(name: "__size", arg: 4, scope: !333, file: !334, line: 20, type: !46)
!348 = !DILocalVariable(name: "__compar", arg: 5, scope: !333, file: !334, line: 21, type: !339)
!349 = !DILocalVariable(name: "__l", scope: !333, file: !334, line: 23, type: !46)
!350 = !DILocalVariable(name: "__u", scope: !333, file: !334, line: 23, type: !46)
!351 = !DILocalVariable(name: "__idx", scope: !333, file: !334, line: 23, type: !46)
!352 = !DILocalVariable(name: "__p", scope: !333, file: !334, line: 24, type: !337)
!353 = !DILocalVariable(name: "__comparison", scope: !333, file: !334, line: 25, type: !35)
!354 = !DILocation(line: 0, scope: !333)
!355 = !DILocation(line: 29, column: 3, scope: !333)
!356 = !DILocation(line: 27, column: 7, scope: !333)
!357 = !DILocation(line: 29, column: 14, scope: !333)
!358 = !DILocation(line: 31, column: 20, scope: !359)
!359 = distinct !DILexicalBlock(scope: !333, file: !334, line: 30, column: 5)
!360 = !DILocation(line: 31, column: 27, scope: !359)
!361 = !DILocation(line: 32, column: 56, scope: !359)
!362 = !DILocation(line: 32, column: 47, scope: !359)
!363 = !DILocation(line: 33, column: 22, scope: !359)
!364 = !DILocation(line: 34, column: 24, scope: !365)
!365 = distinct !DILexicalBlock(scope: !359, file: !334, line: 34, column: 11)
!366 = !DILocation(line: 34, column: 11, scope: !359)
!367 = !DILocation(line: 36, column: 29, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !334, line: 36, column: 16)
!369 = !DILocation(line: 36, column: 16, scope: !365)
!370 = !DILocation(line: 37, column: 14, scope: !368)
!371 = distinct !{!371, !355, !372}
!372 = !DILocation(line: 40, column: 5, scope: !333)
!373 = !DILocation(line: 43, column: 1, scope: !333)
!374 = distinct !DISubprogram(name: "atof", scope: !375, file: !375, line: 25, type: !376, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!375 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !40}
!378 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!379 = !{!380}
!380 = !DILocalVariable(name: "__nptr", arg: 1, scope: !374, file: !375, line: 25, type: !40)
!381 = !DILocation(line: 0, scope: !374)
!382 = !DILocation(line: 27, column: 10, scope: !374)
!383 = !DILocation(line: 27, column: 3, scope: !374)
!384 = distinct !DISubprogram(name: "strtoimax", scope: !385, file: !385, line: 324, type: !386, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!385 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!386 = !DISubroutineType(types: !387)
!387 = !{!388, !140, !391, !35}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !389, line: 101, baseType: !390)
!389 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !192, line: 72, baseType: !74)
!391 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!392 = !{!393, !394, !395}
!393 = !DILocalVariable(name: "nptr", arg: 1, scope: !384, file: !385, line: 324, type: !140)
!394 = !DILocalVariable(name: "endptr", arg: 2, scope: !384, file: !385, line: 324, type: !391)
!395 = !DILocalVariable(name: "base", arg: 3, scope: !384, file: !385, line: 324, type: !35)
!396 = !DILocation(line: 0, scope: !384)
!397 = !DILocation(line: 327, column: 10, scope: !384)
!398 = !DILocation(line: 327, column: 3, scope: !384)
!399 = distinct !DISubprogram(name: "strtoumax", scope: !385, file: !385, line: 336, type: !400, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !140, !391, !35}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !389, line: 102, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !192, line: 73, baseType: !48)
!404 = !{!405, !406, !407}
!405 = !DILocalVariable(name: "nptr", arg: 1, scope: !399, file: !385, line: 336, type: !140)
!406 = !DILocalVariable(name: "endptr", arg: 2, scope: !399, file: !385, line: 336, type: !391)
!407 = !DILocalVariable(name: "base", arg: 3, scope: !399, file: !385, line: 336, type: !35)
!408 = !DILocation(line: 0, scope: !399)
!409 = !DILocation(line: 339, column: 10, scope: !399)
!410 = !DILocation(line: 339, column: 3, scope: !399)
!411 = distinct !DISubprogram(name: "wcstoimax", scope: !385, file: !385, line: 348, type: !412, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!412 = !DISubroutineType(types: !413)
!413 = !{!388, !414, !418, !35}
!414 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !385, line: 34, baseType: !35)
!418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!421 = !{!422, !423, !424}
!422 = !DILocalVariable(name: "nptr", arg: 1, scope: !411, file: !385, line: 348, type: !414)
!423 = !DILocalVariable(name: "endptr", arg: 2, scope: !411, file: !385, line: 348, type: !418)
!424 = !DILocalVariable(name: "base", arg: 3, scope: !411, file: !385, line: 348, type: !35)
!425 = !DILocation(line: 0, scope: !411)
!426 = !DILocation(line: 351, column: 10, scope: !411)
!427 = !DILocation(line: 351, column: 3, scope: !411)
!428 = distinct !DISubprogram(name: "wcstoumax", scope: !385, file: !385, line: 362, type: !429, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!402, !414, !418, !35}
!431 = !{!432, !433, !434}
!432 = !DILocalVariable(name: "nptr", arg: 1, scope: !428, file: !385, line: 362, type: !414)
!433 = !DILocalVariable(name: "endptr", arg: 2, scope: !428, file: !385, line: 362, type: !418)
!434 = !DILocalVariable(name: "base", arg: 3, scope: !428, file: !385, line: 362, type: !35)
!435 = !DILocation(line: 0, scope: !428)
!436 = !DILocation(line: 365, column: 10, scope: !428)
!437 = !DILocation(line: 365, column: 3, scope: !428)
!438 = distinct !DISubprogram(name: "stat", scope: !439, file: !439, line: 453, type: !440, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!439 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!440 = !DISubroutineType(types: !441)
!441 = !{!35, !40, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !444, line: 46, size: 1152, elements: !445)
!444 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!445 = !{!446, !448, !450, !452, !454, !456, !458, !459, !460, !461, !463, !465, !473, !474, !475}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !443, file: !444, line: 48, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !192, line: 145, baseType: !48)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !443, file: !444, line: 53, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !192, line: 148, baseType: !48)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !443, file: !444, line: 61, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !192, line: 151, baseType: !48)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !443, file: !444, line: 62, baseType: !453, size: 32, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !192, line: 150, baseType: !7)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !443, file: !444, line: 64, baseType: !455, size: 32, offset: 224)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !192, line: 146, baseType: !7)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !443, file: !444, line: 65, baseType: !457, size: 32, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !192, line: 147, baseType: !7)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !443, file: !444, line: 67, baseType: !35, size: 32, offset: 288)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !443, file: !444, line: 69, baseType: !447, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !443, file: !444, line: 74, baseType: !191, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !443, file: !444, line: 78, baseType: !462, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !192, line: 174, baseType: !74)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !443, file: !444, line: 80, baseType: !464, size: 64, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !192, line: 179, baseType: !74)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !443, file: !444, line: 91, baseType: !466, size: 128, offset: 576)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !467, line: 10, size: 128, elements: !468)
!467 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!468 = !{!469, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !466, file: !467, line: 12, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !192, line: 160, baseType: !74)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !466, file: !467, line: 16, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !192, line: 196, baseType: !74)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !443, file: !444, line: 92, baseType: !466, size: 128, offset: 704)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !443, file: !444, line: 93, baseType: !466, size: 128, offset: 832)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !443, file: !444, line: 106, baseType: !476, size: 192, offset: 960)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 192, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 3)
!479 = !{!480, !481}
!480 = !DILocalVariable(name: "__path", arg: 1, scope: !438, file: !439, line: 453, type: !40)
!481 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !438, file: !439, line: 453, type: !442)
!482 = !DILocation(line: 0, scope: !438)
!483 = !DILocation(line: 455, column: 10, scope: !438)
!484 = !DILocation(line: 455, column: 3, scope: !438)
!485 = distinct !DISubprogram(name: "lstat", scope: !439, file: !439, line: 460, type: !440, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !486)
!486 = !{!487, !488}
!487 = !DILocalVariable(name: "__path", arg: 1, scope: !485, file: !439, line: 460, type: !40)
!488 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !485, file: !439, line: 460, type: !442)
!489 = !DILocation(line: 0, scope: !485)
!490 = !DILocation(line: 462, column: 10, scope: !485)
!491 = !DILocation(line: 462, column: 3, scope: !485)
!492 = distinct !DISubprogram(name: "fstat", scope: !439, file: !439, line: 467, type: !493, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{!35, !35, !442}
!495 = !{!496, !497}
!496 = !DILocalVariable(name: "__fd", arg: 1, scope: !492, file: !439, line: 467, type: !35)
!497 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !492, file: !439, line: 467, type: !442)
!498 = !DILocation(line: 0, scope: !492)
!499 = !DILocation(line: 469, column: 10, scope: !492)
!500 = !DILocation(line: 469, column: 3, scope: !492)
!501 = distinct !DISubprogram(name: "fstatat", scope: !439, file: !439, line: 474, type: !502, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!35, !35, !40, !442, !35}
!504 = !{!505, !506, !507, !508}
!505 = !DILocalVariable(name: "__fd", arg: 1, scope: !501, file: !439, line: 474, type: !35)
!506 = !DILocalVariable(name: "__filename", arg: 2, scope: !501, file: !439, line: 474, type: !40)
!507 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !501, file: !439, line: 474, type: !442)
!508 = !DILocalVariable(name: "__flag", arg: 4, scope: !501, file: !439, line: 474, type: !35)
!509 = !DILocation(line: 0, scope: !501)
!510 = !DILocation(line: 477, column: 10, scope: !501)
!511 = !DILocation(line: 477, column: 3, scope: !501)
!512 = distinct !DISubprogram(name: "mknod", scope: !439, file: !439, line: 483, type: !513, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!35, !40, !453, !447}
!515 = !{!516, !517, !518}
!516 = !DILocalVariable(name: "__path", arg: 1, scope: !512, file: !439, line: 483, type: !40)
!517 = !DILocalVariable(name: "__mode", arg: 2, scope: !512, file: !439, line: 483, type: !453)
!518 = !DILocalVariable(name: "__dev", arg: 3, scope: !512, file: !439, line: 483, type: !447)
!519 = !DILocation(line: 0, scope: !512)
!520 = !DILocation(line: 485, column: 10, scope: !512)
!521 = !DILocation(line: 485, column: 3, scope: !512)
!522 = distinct !DISubprogram(name: "mknodat", scope: !439, file: !439, line: 491, type: !523, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{!35, !35, !40, !453, !447}
!525 = !{!526, !527, !528, !529}
!526 = !DILocalVariable(name: "__fd", arg: 1, scope: !522, file: !439, line: 491, type: !35)
!527 = !DILocalVariable(name: "__path", arg: 2, scope: !522, file: !439, line: 491, type: !40)
!528 = !DILocalVariable(name: "__mode", arg: 3, scope: !522, file: !439, line: 491, type: !453)
!529 = !DILocalVariable(name: "__dev", arg: 4, scope: !522, file: !439, line: 491, type: !447)
!530 = !DILocation(line: 0, scope: !522)
!531 = !DILocation(line: 494, column: 10, scope: !522)
!532 = !DILocation(line: 494, column: 3, scope: !522)
!533 = distinct !DISubprogram(name: "stat64", scope: !439, file: !439, line: 502, type: !534, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !556)
!534 = !DISubroutineType(types: !535)
!535 = !{!35, !40, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !444, line: 119, size: 1152, elements: !538)
!538 = !{!539, !540, !542, !543, !544, !545, !546, !547, !548, !549, !550, !552, !553, !554, !555}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !537, file: !444, line: 121, baseType: !447, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !537, file: !444, line: 123, baseType: !541, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !192, line: 149, baseType: !48)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !537, file: !444, line: 124, baseType: !451, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !537, file: !444, line: 125, baseType: !453, size: 32, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !537, file: !444, line: 132, baseType: !455, size: 32, offset: 224)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !537, file: !444, line: 133, baseType: !457, size: 32, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !537, file: !444, line: 135, baseType: !35, size: 32, offset: 288)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !537, file: !444, line: 136, baseType: !447, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !537, file: !444, line: 137, baseType: !191, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !537, file: !444, line: 143, baseType: !462, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !537, file: !444, line: 144, baseType: !551, size: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !192, line: 180, baseType: !74)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !537, file: !444, line: 152, baseType: !466, size: 128, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !537, file: !444, line: 153, baseType: !466, size: 128, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !537, file: !444, line: 154, baseType: !466, size: 128, offset: 832)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !537, file: !444, line: 164, baseType: !476, size: 192, offset: 960)
!556 = !{!557, !558}
!557 = !DILocalVariable(name: "__path", arg: 1, scope: !533, file: !439, line: 502, type: !40)
!558 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !533, file: !439, line: 502, type: !536)
!559 = !DILocation(line: 0, scope: !533)
!560 = !DILocation(line: 504, column: 10, scope: !533)
!561 = !DILocation(line: 504, column: 3, scope: !533)
!562 = distinct !DISubprogram(name: "lstat64", scope: !439, file: !439, line: 509, type: !534, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!563 = !{!564, !565}
!564 = !DILocalVariable(name: "__path", arg: 1, scope: !562, file: !439, line: 509, type: !40)
!565 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !562, file: !439, line: 509, type: !536)
!566 = !DILocation(line: 0, scope: !562)
!567 = !DILocation(line: 511, column: 10, scope: !562)
!568 = !DILocation(line: 511, column: 3, scope: !562)
!569 = distinct !DISubprogram(name: "fstat64", scope: !439, file: !439, line: 516, type: !570, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{!35, !35, !536}
!572 = !{!573, !574}
!573 = !DILocalVariable(name: "__fd", arg: 1, scope: !569, file: !439, line: 516, type: !35)
!574 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !569, file: !439, line: 516, type: !536)
!575 = !DILocation(line: 0, scope: !569)
!576 = !DILocation(line: 518, column: 10, scope: !569)
!577 = !DILocation(line: 518, column: 3, scope: !569)
!578 = distinct !DISubprogram(name: "fstatat64", scope: !439, file: !439, line: 523, type: !579, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{!35, !35, !40, !536, !35}
!581 = !{!582, !583, !584, !585}
!582 = !DILocalVariable(name: "__fd", arg: 1, scope: !578, file: !439, line: 523, type: !35)
!583 = !DILocalVariable(name: "__filename", arg: 2, scope: !578, file: !439, line: 523, type: !40)
!584 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !578, file: !439, line: 523, type: !536)
!585 = !DILocalVariable(name: "__flag", arg: 4, scope: !578, file: !439, line: 523, type: !35)
!586 = !DILocation(line: 0, scope: !578)
!587 = !DILocation(line: 526, column: 10, scope: !578)
!588 = !DILocation(line: 526, column: 3, scope: !578)
!589 = distinct !DISubprogram(name: "varray_init", scope: !3, file: !3, line: 117, type: !590, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!590 = !DISubroutineType(types: !591)
!591 = !{!592, !46, !5, !40}
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "varray_type", file: !6, line: 122, baseType: !42)
!593 = !{!594, !595, !596, !597, !598}
!594 = !DILocalVariable(name: "num_elements", arg: 1, scope: !589, file: !3, line: 117, type: !46)
!595 = !DILocalVariable(name: "element_kind", arg: 2, scope: !589, file: !3, line: 117, type: !5)
!596 = !DILocalVariable(name: "name", arg: 3, scope: !589, file: !3, line: 118, type: !40)
!597 = !DILocalVariable(name: "data_size", scope: !589, file: !3, line: 120, type: !46)
!598 = !DILocalVariable(name: "ptr", scope: !589, file: !3, line: 121, type: !592)
!599 = !DILocation(line: 0, scope: !589)
!600 = !DILocation(line: 120, column: 37, scope: !589)
!601 = !DILocation(line: 120, column: 59, scope: !589)
!602 = !DILocation(line: 120, column: 35, scope: !589)
!603 = !DILocation(line: 128, column: 7, scope: !604)
!604 = distinct !DILexicalBlock(scope: !589, file: !3, line: 128, column: 7)
!605 = !DILocation(line: 0, scope: !604)
!606 = !DILocation(line: 128, column: 7, scope: !589)
!607 = !DILocation(line: 129, column: 11, scope: !604)
!608 = !DILocation(line: 129, column: 5, scope: !604)
!609 = !DILocation(line: 131, column: 11, scope: !604)
!610 = !DILocation(line: 133, column: 8, scope: !589)
!611 = !DILocation(line: 133, column: 21, scope: !589)
!612 = !DILocation(line: 134, column: 8, scope: !589)
!613 = !DILocation(line: 134, column: 22, scope: !589)
!614 = !DILocation(line: 135, column: 8, scope: !589)
!615 = !DILocation(line: 135, column: 13, scope: !589)
!616 = !DILocation(line: 136, column: 8, scope: !589)
!617 = !DILocation(line: 136, column: 13, scope: !589)
!618 = !DILocation(line: 137, column: 3, scope: !589)
!619 = distinct !DISubprogram(name: "varray_grow", scope: !3, file: !3, line: 143, type: !620, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{!592, !592, !46}
!622 = !{!623, !624, !625, !626, !629, !630}
!623 = !DILocalVariable(name: "va", arg: 1, scope: !619, file: !3, line: 143, type: !592)
!624 = !DILocalVariable(name: "n", arg: 2, scope: !619, file: !3, line: 143, type: !46)
!625 = !DILocalVariable(name: "old_elements", scope: !619, file: !3, line: 145, type: !46)
!626 = !DILocalVariable(name: "elem_size", scope: !627, file: !3, line: 148, type: !46)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 147, column: 5)
!628 = distinct !DILexicalBlock(scope: !619, file: !3, line: 146, column: 7)
!629 = !DILocalVariable(name: "old_data_size", scope: !627, file: !3, line: 149, type: !46)
!630 = !DILocalVariable(name: "data_size", scope: !627, file: !3, line: 150, type: !46)
!631 = !DILocation(line: 0, scope: !619)
!632 = !DILocation(line: 145, column: 29, scope: !619)
!633 = !DILocation(line: 146, column: 9, scope: !628)
!634 = !DILocation(line: 146, column: 7, scope: !619)
!635 = !DILocation(line: 148, column: 38, scope: !627)
!636 = !DILocation(line: 148, column: 26, scope: !627)
!637 = !DILocation(line: 148, column: 44, scope: !627)
!638 = !DILocation(line: 0, scope: !627)
!639 = !DILocation(line: 149, column: 43, scope: !627)
!640 = !DILocation(line: 150, column: 28, scope: !627)
!641 = !DILocation(line: 161, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !627, file: !3, line: 161, column: 11)
!643 = !DILocation(line: 0, scope: !642)
!644 = !DILocation(line: 161, column: 11, scope: !627)
!645 = !DILocation(line: 162, column: 7, scope: !642)
!646 = !DILocation(line: 162, column: 2, scope: !642)
!647 = !DILocation(line: 165, column: 7, scope: !642)
!648 = !DILocation(line: 167, column: 11, scope: !627)
!649 = !DILocation(line: 167, column: 24, scope: !627)
!650 = !DILocation(line: 168, column: 13, scope: !651)
!651 = distinct !DILexicalBlock(scope: !627, file: !3, line: 168, column: 11)
!652 = !DILocation(line: 168, column: 11, scope: !627)
!653 = !DILocation(line: 169, column: 15, scope: !651)
!654 = !DILocation(line: 169, column: 11, scope: !651)
!655 = !DILocation(line: 169, column: 55, scope: !651)
!656 = !DILocation(line: 169, column: 2, scope: !651)
!657 = !DILocation(line: 176, column: 3, scope: !619)
!658 = distinct !DISubprogram(name: "varray_clear", scope: !3, file: !3, line: 181, type: !659, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !661)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !592}
!661 = !{!662, !663}
!662 = !DILocalVariable(name: "va", arg: 1, scope: !658, file: !3, line: 181, type: !592)
!663 = !DILocalVariable(name: "data_size", scope: !658, file: !3, line: 183, type: !46)
!664 = !DILocation(line: 0, scope: !658)
!665 = !DILocation(line: 183, column: 34, scope: !658)
!666 = !DILocation(line: 183, column: 22, scope: !658)
!667 = !DILocation(line: 183, column: 40, scope: !658)
!668 = !DILocation(line: 183, column: 51, scope: !658)
!669 = !DILocation(line: 183, column: 45, scope: !658)
!670 = !DILocation(line: 185, column: 15, scope: !658)
!671 = !DILocation(line: 185, column: 11, scope: !658)
!672 = !DILocation(line: 185, column: 3, scope: !658)
!673 = !DILocation(line: 186, column: 7, scope: !658)
!674 = !DILocation(line: 186, column: 21, scope: !658)
!675 = !DILocation(line: 187, column: 1, scope: !658)
!676 = distinct !DISubprogram(name: "dump_varray_statistics", scope: !3, file: !3, line: 245, type: !677, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!677 = !DISubroutineType(types: !678)
!678 = !{null}
!679 = !DILocation(line: 263, column: 1, scope: !676)
