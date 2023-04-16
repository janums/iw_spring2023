; ModuleID = 'auto-inc-dec.bc'
source_filename = "auto-inc-dec.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"auto_inc_dec\00", align 1
@pass_inc_dec = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_auto_inc_dec, i32 ()* @rest_of_handle_auto_inc_dec, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 136, i32 0, i32 0, i32 0, i32 0, i32 131073 } }, align 8, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !230 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !243, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !246
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !247
  ret i32 %call, !dbg !248
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !249 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !253
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !254
  ret i32 %call, !dbg !255
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !256 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !319, metadata !DIExpression()), !dbg !320
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !321
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !321
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !321
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !321
  %cmp = icmp uge i8* %0, %1, !dbg !321
  %conv1 = zext i1 %cmp to i64, !dbg !321
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !321
  %tobool = icmp eq i64 %expval, 0, !dbg !321
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !321

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !321
  br label %cond.end, !dbg !321

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !321
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !321
  %2 = load i8, i8* %0, align 1, !dbg !321
  %conv3 = zext i8 %2 to i32, !dbg !321
  br label %cond.end, !dbg !321

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !321
  ret i32 %cond, !dbg !322
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !323 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !325, metadata !DIExpression()), !dbg !326
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !327
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !327
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !327
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !327
  %cmp = icmp uge i8* %0, %1, !dbg !327
  %conv1 = zext i1 %cmp to i64, !dbg !327
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !327
  %tobool = icmp eq i64 %expval, 0, !dbg !327
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !327

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !327
  br label %cond.end, !dbg !327

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !327
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !327
  %2 = load i8, i8* %0, align 1, !dbg !327
  %conv3 = zext i8 %2 to i32, !dbg !327
  br label %cond.end, !dbg !327

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !327
  ret i32 %cond, !dbg !328
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !329 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !330
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !330
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !330
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !330
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !330
  %cmp = icmp uge i8* %1, %2, !dbg !330
  %conv1 = zext i1 %cmp to i64, !dbg !330
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !330
  %tobool = icmp eq i64 %expval, 0, !dbg !330
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !330

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !330
  br label %cond.end, !dbg !330

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !330
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !330
  %3 = load i8, i8* %1, align 1, !dbg !330
  %conv3 = zext i8 %3 to i32, !dbg !330
  br label %cond.end, !dbg !330

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !330
  ret i32 %cond, !dbg !331
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !332 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !338
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !339
  ret i32 %call, !dbg !340
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !341 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !345, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !346, metadata !DIExpression()), !dbg !347
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !348
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !348
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !348
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !348
  %cmp = icmp uge i8* %0, %1, !dbg !348
  %conv1 = zext i1 %cmp to i64, !dbg !348
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !348
  %tobool = icmp eq i64 %expval, 0, !dbg !348
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !348

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !348
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !348
  br label %cond.end, !dbg !348

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !348
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !348
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !348
  store i8 %conv2, i8* %0, align 1, !dbg !348
  %conv6 = and i32 %__c, 255, !dbg !348
  br label %cond.end, !dbg !348

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !348
  ret i32 %cond, !dbg !349
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !350 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !352, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !353, metadata !DIExpression()), !dbg !354
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !355
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !355
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !355
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !355
  %cmp = icmp uge i8* %0, %1, !dbg !355
  %conv1 = zext i1 %cmp to i64, !dbg !355
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !355
  %tobool = icmp eq i64 %expval, 0, !dbg !355
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !355

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !355
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !355
  br label %cond.end, !dbg !355

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !355
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !355
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !355
  store i8 %conv2, i8* %0, align 1, !dbg !355
  %conv6 = and i32 %__c, 255, !dbg !355
  br label %cond.end, !dbg !355

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !355
  ret i32 %cond, !dbg !356
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !357 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !361
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !361
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !361
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !361
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !361
  %cmp = icmp uge i8* %1, %2, !dbg !361
  %conv1 = zext i1 %cmp to i64, !dbg !361
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !361
  %tobool = icmp eq i64 %expval, 0, !dbg !361
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !361

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !361
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !361
  br label %cond.end, !dbg !361

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !361
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !361
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !361
  store i8 %conv4, i8* %1, align 1, !dbg !361
  %conv6 = and i32 %__c, 255, !dbg !361
  br label %cond.end, !dbg !361

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !361
  ret i32 %cond, !dbg !362
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !363 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !369, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64* %__n, metadata !370, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !371, metadata !DIExpression()), !dbg !372
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !373
  ret i64 %call, !dbg !374
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !375 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !377, metadata !DIExpression()), !dbg !378
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !379
  %0 = load i32, i32* %_flags, align 8, !dbg !379
  %and = lshr i32 %0, 4, !dbg !379
  %and.lobit = and i32 %and, 1, !dbg !379
  ret i32 %and.lobit, !dbg !380
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !381 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !383, metadata !DIExpression()), !dbg !384
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !385
  %0 = load i32, i32* %_flags, align 8, !dbg !385
  %and = lshr i32 %0, 5, !dbg !385
  %and.lobit = and i32 %and, 1, !dbg !385
  ret i32 %and.lobit, !dbg !386
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !387 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !390, metadata !DIExpression()), !dbg !391
  %__c.off = add i32 %__c, 128, !dbg !392
  %0 = icmp ult i32 %__c.off, 384, !dbg !392
  br i1 %0, label %cond.true, label %cond.end, !dbg !392

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !393
  %1 = load i32*, i32** %call, align 8, !dbg !394
  %idxprom = sext i32 %__c to i64, !dbg !395
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !395
  %2 = load i32, i32* %arrayidx, align 4, !dbg !395
  br label %cond.end, !dbg !396

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !396
  ret i32 %cond, !dbg !397
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !398 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !400, metadata !DIExpression()), !dbg !401
  %__c.off = add i32 %__c, 128, !dbg !402
  %0 = icmp ult i32 %__c.off, 384, !dbg !402
  br i1 %0, label %cond.true, label %cond.end, !dbg !402

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !403
  %1 = load i32*, i32** %call, align 8, !dbg !404
  %idxprom = sext i32 %__c to i64, !dbg !405
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !405
  %2 = load i32, i32* %arrayidx, align 4, !dbg !405
  br label %cond.end, !dbg !406

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !406
  ret i32 %cond, !dbg !407
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !408 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !413, metadata !DIExpression()), !dbg !414
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !415
  %conv = trunc i64 %call to i32, !dbg !416
  ret i32 %conv, !dbg !417
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !418 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !422, metadata !DIExpression()), !dbg !423
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !424
  ret i64 %call, !dbg !425
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !426 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !431, metadata !DIExpression()), !dbg !432
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !433
  ret i64 %call, !dbg !434
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !435 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !446, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i8* %__base, metadata !447, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !448, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %__size, metadata !449, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !450, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 0, metadata !451, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !452, metadata !DIExpression()), !dbg !456
  br label %while.cond, !dbg !457

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !458
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !452, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !451, metadata !DIExpression()), !dbg !456
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !459
  br i1 %cmp, label %while.body, label %cleanup, !dbg !457

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !460
  %div = lshr i64 %add, 1, !dbg !462
  call void @llvm.dbg.value(metadata i64 %div, metadata !453, metadata !DIExpression()), !dbg !456
  %mul = mul i64 %div, %__size, !dbg !463
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !464
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !454, metadata !DIExpression()), !dbg !456
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !465
  call void @llvm.dbg.value(metadata i32 %call, metadata !455, metadata !DIExpression()), !dbg !456
  %cmp1 = icmp slt i32 %call, 0, !dbg !466
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !468

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !469
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !471

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !472
  call void @llvm.dbg.value(metadata i64 %add4, metadata !451, metadata !DIExpression()), !dbg !456
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !456
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !452, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !451, metadata !DIExpression()), !dbg !456
  br label %while.cond, !dbg !457, !llvm.loop !473

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !456
  ret i8* %retval.0, !dbg !475
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !476 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !482, metadata !DIExpression()), !dbg !483
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !484
  ret double %call, !dbg !485
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !486 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !495, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !496, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i32 %base, metadata !497, metadata !DIExpression()), !dbg !498
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !499
  ret i64 %call, !dbg !500
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !501 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !507, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !508, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i32 %base, metadata !509, metadata !DIExpression()), !dbg !510
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !511
  ret i64 %call, !dbg !512
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !513 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !524, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !525, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32 %base, metadata !526, metadata !DIExpression()), !dbg !527
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !528
  ret i64 %call, !dbg !529
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !530 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !534, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !535, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 %base, metadata !536, metadata !DIExpression()), !dbg !537
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !538
  ret i64 %call, !dbg !539
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !540 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !582, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !583, metadata !DIExpression()), !dbg !584
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !585
  ret i32 %call, !dbg !586
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !587 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !589, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !590, metadata !DIExpression()), !dbg !591
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !592
  ret i32 %call, !dbg !593
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !594 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !598, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !599, metadata !DIExpression()), !dbg !600
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !601
  ret i32 %call, !dbg !602
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !603 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !607, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !608, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !609, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !610, metadata !DIExpression()), !dbg !611
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !612
  ret i32 %call, !dbg !613
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !614 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !618, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !619, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !620, metadata !DIExpression()), !dbg !621
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !620, metadata !DIExpression(DW_OP_deref)), !dbg !621
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !622
  ret i32 %call, !dbg !623
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !624 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !628, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i8* %__path, metadata !629, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !630, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !631, metadata !DIExpression()), !dbg !632
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !631, metadata !DIExpression(DW_OP_deref)), !dbg !632
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !633
  ret i32 %call, !dbg !634
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !635 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !659, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !660, metadata !DIExpression()), !dbg !661
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !662
  ret i32 %call, !dbg !663
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !664 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !666, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !667, metadata !DIExpression()), !dbg !668
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !669
  ret i32 %call, !dbg !670
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !671 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !675, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !676, metadata !DIExpression()), !dbg !677
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !678
  ret i32 %call, !dbg !679
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !680 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !684, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !685, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !686, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !687, metadata !DIExpression()), !dbg !688
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !689
  ret i32 %call, !dbg !690
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_auto_inc_dec() #3 !dbg !691 {
entry:
  ret i8 0, !dbg !692
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_auto_inc_dec() #3 !dbg !693 {
entry:
  ret i32 0, !dbg !694
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
!llvm.module.flags = !{!226, !227, !228}
!llvm.ident = !{!229}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_inc_dec", scope: !2, file: !3, line: 1511, type: !200, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !189, globals: !199, nameTableKind: None)
!3 = !DIFile(filename: "auto-inc-dec.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !6, line: 104, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 74, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!16 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!27 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!28 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!29 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!30 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!31 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!32 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!33 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!34 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!35 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!36 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!37 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!38 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!39 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!40 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!41 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!42 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!43 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!44 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!45 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!46 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!47 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!48 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!49 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!50 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!51 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!52 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!53 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!54 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!55 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!56 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!57 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!58 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!59 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!60 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!61 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!62 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!63 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!64 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!65 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!66 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!67 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!68 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!69 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!70 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!71 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!72 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!73 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!74 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!75 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!76 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!77 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!78 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!79 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!80 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!81 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!82 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!83 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!84 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!85 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!86 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!87 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!88 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!89 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!90 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!91 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!92 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!93 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!94 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!95 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!96 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!97 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!98 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!99 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!100 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!101 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!102 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!103 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!104 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!105 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!106 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!107 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!108 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!109 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!110 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!111 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!112 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!113 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!114 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!115 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!116 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!117 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!118 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!119 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!120 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!121 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!122 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!123 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!124 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!125 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!126 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!127 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!128 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!129 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!130 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!131 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!132 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!133 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!134 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!135 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!136 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!137 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!138 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!139 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!140 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!141 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!142 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!143 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!144 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!145 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!146 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!147 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!148 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!149 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!150 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!151 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!152 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!153 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!154 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!155 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!156 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!157 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!158 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!159 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!160 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!161 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!162 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!163 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!164 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!165 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!166 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!167 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!168 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!169 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!170 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!171 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!172 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!173 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!174 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!175 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!176 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!177 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!178 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!179 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!180 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!181 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!182 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!183 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!184 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!185 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!186 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!187 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!188 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!189 = !{!190, !191, !192, !193, !196, !197}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!192 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!199 = !{!0}
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !200, file: !6, line: 164, baseType: !203, size: 640)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !204)
!204 = !{!205, !206, !207, !211, !215, !217, !218, !219, !221, !222, !223, !224, !225}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !6, line: 117, baseType: !5, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !6, line: 121, baseType: !197, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !203, file: !6, line: 125, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!191}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !203, file: !6, line: 130, baseType: !212, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!7}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !203, file: !6, line: 133, baseType: !216, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !6, line: 136, baseType: !216, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !203, file: !6, line: 139, baseType: !192, size: 32, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !203, file: !6, line: 143, baseType: !220, size: 32, offset: 416)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !203, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !203, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !203, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !203, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !203, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!226 = !{i32 2, !"Dwarf Version", i32 4}
!227 = !{i32 2, !"Debug Info Version", i32 3}
!228 = !{i32 1, !"wchar_size", i32 4}
!229 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!230 = distinct !DISubprogram(name: "vprintf", scope: !231, file: !231, line: 39, type: !232, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !242)
!231 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!232 = !DISubroutineType(types: !233)
!233 = !{!192, !234, !235}
!234 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !197)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !237)
!237 = !{!238, !239, !240, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !236, file: !3, baseType: !7, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !236, file: !3, baseType: !7, size: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !236, file: !3, baseType: !196, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !236, file: !3, baseType: !196, size: 64, offset: 128)
!242 = !{!243, !244}
!243 = !DILocalVariable(name: "__fmt", arg: 1, scope: !230, file: !231, line: 39, type: !234)
!244 = !DILocalVariable(name: "__arg", arg: 2, scope: !230, file: !231, line: 39, type: !235)
!245 = !DILocation(line: 0, scope: !230)
!246 = !DILocation(line: 41, column: 20, scope: !230)
!247 = !DILocation(line: 41, column: 10, scope: !230)
!248 = !DILocation(line: 41, column: 3, scope: !230)
!249 = distinct !DISubprogram(name: "getchar", scope: !231, file: !231, line: 47, type: !250, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{!192}
!252 = !{}
!253 = !DILocation(line: 49, column: 16, scope: !249)
!254 = !DILocation(line: 49, column: 10, scope: !249)
!255 = !DILocation(line: 49, column: 3, scope: !249)
!256 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !231, file: !231, line: 56, type: !257, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!257 = !DISubroutineType(types: !258)
!258 = !{!192, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !261, line: 7, baseType: !262)
!261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !263, line: 49, size: 1728, elements: !264)
!263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !280, !282, !283, !284, !288, !290, !292, !296, !299, !301, !304, !307, !308, !309, !313, !314}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !262, file: !263, line: 51, baseType: !192, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !262, file: !263, line: 54, baseType: !194, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !262, file: !263, line: 55, baseType: !194, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !262, file: !263, line: 56, baseType: !194, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !262, file: !263, line: 57, baseType: !194, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !262, file: !263, line: 58, baseType: !194, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !262, file: !263, line: 59, baseType: !194, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !262, file: !263, line: 60, baseType: !194, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !262, file: !263, line: 61, baseType: !194, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !262, file: !263, line: 64, baseType: !194, size: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !262, file: !263, line: 65, baseType: !194, size: 64, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !262, file: !263, line: 66, baseType: !194, size: 64, offset: 704)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !262, file: !263, line: 68, baseType: !278, size: 64, offset: 768)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !263, line: 36, flags: DIFlagFwdDecl)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !262, file: !263, line: 70, baseType: !281, size: 64, offset: 832)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !262, file: !263, line: 72, baseType: !192, size: 32, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !262, file: !263, line: 73, baseType: !192, size: 32, offset: 928)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !262, file: !263, line: 74, baseType: !285, size: 64, offset: 960)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !286, line: 152, baseType: !287)
!286 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!287 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !262, file: !263, line: 77, baseType: !289, size: 16, offset: 1024)
!289 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !262, file: !263, line: 78, baseType: !291, size: 8, offset: 1040)
!291 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !262, file: !263, line: 79, baseType: !293, size: 8, offset: 1048)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 8, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 1)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !262, file: !263, line: 81, baseType: !297, size: 64, offset: 1088)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !263, line: 43, baseType: null)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !262, file: !263, line: 89, baseType: !300, size: 64, offset: 1152)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !286, line: 153, baseType: !287)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !262, file: !263, line: 91, baseType: !302, size: 64, offset: 1216)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !263, line: 37, flags: DIFlagFwdDecl)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !262, file: !263, line: 92, baseType: !305, size: 64, offset: 1280)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !263, line: 38, flags: DIFlagFwdDecl)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !262, file: !263, line: 93, baseType: !281, size: 64, offset: 1344)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !262, file: !263, line: 94, baseType: !196, size: 64, offset: 1408)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !262, file: !263, line: 95, baseType: !310, size: 64, offset: 1472)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !311, line: 46, baseType: !312)
!311 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!312 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !262, file: !263, line: 96, baseType: !192, size: 32, offset: 1536)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !262, file: !263, line: 98, baseType: !315, size: 160, offset: 1568)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 160, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 20)
!318 = !{!319}
!319 = !DILocalVariable(name: "__fp", arg: 1, scope: !256, file: !231, line: 56, type: !259)
!320 = !DILocation(line: 0, scope: !256)
!321 = !DILocation(line: 58, column: 10, scope: !256)
!322 = !DILocation(line: 58, column: 3, scope: !256)
!323 = distinct !DISubprogram(name: "getc_unlocked", scope: !231, file: !231, line: 66, type: !257, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !324)
!324 = !{!325}
!325 = !DILocalVariable(name: "__fp", arg: 1, scope: !323, file: !231, line: 66, type: !259)
!326 = !DILocation(line: 0, scope: !323)
!327 = !DILocation(line: 68, column: 10, scope: !323)
!328 = !DILocation(line: 68, column: 3, scope: !323)
!329 = distinct !DISubprogram(name: "getchar_unlocked", scope: !231, file: !231, line: 73, type: !250, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !252)
!330 = !DILocation(line: 75, column: 10, scope: !329)
!331 = !DILocation(line: 75, column: 3, scope: !329)
!332 = distinct !DISubprogram(name: "putchar", scope: !231, file: !231, line: 82, type: !333, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{!192, !192}
!335 = !{!336}
!336 = !DILocalVariable(name: "__c", arg: 1, scope: !332, file: !231, line: 82, type: !192)
!337 = !DILocation(line: 0, scope: !332)
!338 = !DILocation(line: 84, column: 21, scope: !332)
!339 = !DILocation(line: 84, column: 10, scope: !332)
!340 = !DILocation(line: 84, column: 3, scope: !332)
!341 = distinct !DISubprogram(name: "fputc_unlocked", scope: !231, file: !231, line: 91, type: !342, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!342 = !DISubroutineType(types: !343)
!343 = !{!192, !192, !259}
!344 = !{!345, !346}
!345 = !DILocalVariable(name: "__c", arg: 1, scope: !341, file: !231, line: 91, type: !192)
!346 = !DILocalVariable(name: "__stream", arg: 2, scope: !341, file: !231, line: 91, type: !259)
!347 = !DILocation(line: 0, scope: !341)
!348 = !DILocation(line: 93, column: 10, scope: !341)
!349 = !DILocation(line: 93, column: 3, scope: !341)
!350 = distinct !DISubprogram(name: "putc_unlocked", scope: !231, file: !231, line: 101, type: !342, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !351)
!351 = !{!352, !353}
!352 = !DILocalVariable(name: "__c", arg: 1, scope: !350, file: !231, line: 101, type: !192)
!353 = !DILocalVariable(name: "__stream", arg: 2, scope: !350, file: !231, line: 101, type: !259)
!354 = !DILocation(line: 0, scope: !350)
!355 = !DILocation(line: 103, column: 10, scope: !350)
!356 = !DILocation(line: 103, column: 3, scope: !350)
!357 = distinct !DISubprogram(name: "putchar_unlocked", scope: !231, file: !231, line: 108, type: !333, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !358)
!358 = !{!359}
!359 = !DILocalVariable(name: "__c", arg: 1, scope: !357, file: !231, line: 108, type: !192)
!360 = !DILocation(line: 0, scope: !357)
!361 = !DILocation(line: 110, column: 10, scope: !357)
!362 = !DILocation(line: 110, column: 3, scope: !357)
!363 = distinct !DISubprogram(name: "getline", scope: !231, file: !231, line: 118, type: !364, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !193, !367, !259}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !286, line: 193, baseType: !287)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!368 = !{!369, !370, !371}
!369 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !363, file: !231, line: 118, type: !193)
!370 = !DILocalVariable(name: "__n", arg: 2, scope: !363, file: !231, line: 118, type: !367)
!371 = !DILocalVariable(name: "__stream", arg: 3, scope: !363, file: !231, line: 118, type: !259)
!372 = !DILocation(line: 0, scope: !363)
!373 = !DILocation(line: 120, column: 10, scope: !363)
!374 = !DILocation(line: 120, column: 3, scope: !363)
!375 = distinct !DISubprogram(name: "feof_unlocked", scope: !231, file: !231, line: 128, type: !257, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!376 = !{!377}
!377 = !DILocalVariable(name: "__stream", arg: 1, scope: !375, file: !231, line: 128, type: !259)
!378 = !DILocation(line: 0, scope: !375)
!379 = !DILocation(line: 130, column: 10, scope: !375)
!380 = !DILocation(line: 130, column: 3, scope: !375)
!381 = distinct !DISubprogram(name: "ferror_unlocked", scope: !231, file: !231, line: 135, type: !257, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!382 = !{!383}
!383 = !DILocalVariable(name: "__stream", arg: 1, scope: !381, file: !231, line: 135, type: !259)
!384 = !DILocation(line: 0, scope: !381)
!385 = !DILocation(line: 137, column: 10, scope: !381)
!386 = !DILocation(line: 137, column: 3, scope: !381)
!387 = distinct !DISubprogram(name: "tolower", scope: !388, file: !388, line: 207, type: !333, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!388 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!389 = !{!390}
!390 = !DILocalVariable(name: "__c", arg: 1, scope: !387, file: !388, line: 207, type: !192)
!391 = !DILocation(line: 0, scope: !387)
!392 = !DILocation(line: 209, column: 22, scope: !387)
!393 = !DILocation(line: 209, column: 39, scope: !387)
!394 = !DILocation(line: 209, column: 38, scope: !387)
!395 = !DILocation(line: 209, column: 37, scope: !387)
!396 = !DILocation(line: 209, column: 10, scope: !387)
!397 = !DILocation(line: 209, column: 3, scope: !387)
!398 = distinct !DISubprogram(name: "toupper", scope: !388, file: !388, line: 213, type: !333, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !399)
!399 = !{!400}
!400 = !DILocalVariable(name: "__c", arg: 1, scope: !398, file: !388, line: 213, type: !192)
!401 = !DILocation(line: 0, scope: !398)
!402 = !DILocation(line: 215, column: 22, scope: !398)
!403 = !DILocation(line: 215, column: 39, scope: !398)
!404 = !DILocation(line: 215, column: 38, scope: !398)
!405 = !DILocation(line: 215, column: 37, scope: !398)
!406 = !DILocation(line: 215, column: 10, scope: !398)
!407 = !DILocation(line: 215, column: 3, scope: !398)
!408 = distinct !DISubprogram(name: "atoi", scope: !409, file: !409, line: 361, type: !410, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!409 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!410 = !DISubroutineType(types: !411)
!411 = !{!192, !197}
!412 = !{!413}
!413 = !DILocalVariable(name: "__nptr", arg: 1, scope: !408, file: !409, line: 361, type: !197)
!414 = !DILocation(line: 0, scope: !408)
!415 = !DILocation(line: 363, column: 16, scope: !408)
!416 = !DILocation(line: 363, column: 10, scope: !408)
!417 = !DILocation(line: 363, column: 3, scope: !408)
!418 = distinct !DISubprogram(name: "atol", scope: !409, file: !409, line: 366, type: !419, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!287, !197}
!421 = !{!422}
!422 = !DILocalVariable(name: "__nptr", arg: 1, scope: !418, file: !409, line: 366, type: !197)
!423 = !DILocation(line: 0, scope: !418)
!424 = !DILocation(line: 368, column: 10, scope: !418)
!425 = !DILocation(line: 368, column: 3, scope: !418)
!426 = distinct !DISubprogram(name: "atoll", scope: !409, file: !409, line: 373, type: !427, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !430)
!427 = !DISubroutineType(types: !428)
!428 = !{!429, !197}
!429 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!430 = !{!431}
!431 = !DILocalVariable(name: "__nptr", arg: 1, scope: !426, file: !409, line: 373, type: !197)
!432 = !DILocation(line: 0, scope: !426)
!433 = !DILocation(line: 375, column: 10, scope: !426)
!434 = !DILocation(line: 375, column: 3, scope: !426)
!435 = distinct !DISubprogram(name: "bsearch", scope: !436, file: !436, line: 20, type: !437, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !445)
!436 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!437 = !DISubroutineType(types: !438)
!438 = !{!196, !439, !439, !310, !310, !441}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !409, line: 808, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!192, !439, !439}
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!446 = !DILocalVariable(name: "__key", arg: 1, scope: !435, file: !436, line: 20, type: !439)
!447 = !DILocalVariable(name: "__base", arg: 2, scope: !435, file: !436, line: 20, type: !439)
!448 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !435, file: !436, line: 20, type: !310)
!449 = !DILocalVariable(name: "__size", arg: 4, scope: !435, file: !436, line: 20, type: !310)
!450 = !DILocalVariable(name: "__compar", arg: 5, scope: !435, file: !436, line: 21, type: !441)
!451 = !DILocalVariable(name: "__l", scope: !435, file: !436, line: 23, type: !310)
!452 = !DILocalVariable(name: "__u", scope: !435, file: !436, line: 23, type: !310)
!453 = !DILocalVariable(name: "__idx", scope: !435, file: !436, line: 23, type: !310)
!454 = !DILocalVariable(name: "__p", scope: !435, file: !436, line: 24, type: !439)
!455 = !DILocalVariable(name: "__comparison", scope: !435, file: !436, line: 25, type: !192)
!456 = !DILocation(line: 0, scope: !435)
!457 = !DILocation(line: 29, column: 3, scope: !435)
!458 = !DILocation(line: 27, column: 7, scope: !435)
!459 = !DILocation(line: 29, column: 14, scope: !435)
!460 = !DILocation(line: 31, column: 20, scope: !461)
!461 = distinct !DILexicalBlock(scope: !435, file: !436, line: 30, column: 5)
!462 = !DILocation(line: 31, column: 27, scope: !461)
!463 = !DILocation(line: 32, column: 56, scope: !461)
!464 = !DILocation(line: 32, column: 47, scope: !461)
!465 = !DILocation(line: 33, column: 22, scope: !461)
!466 = !DILocation(line: 34, column: 24, scope: !467)
!467 = distinct !DILexicalBlock(scope: !461, file: !436, line: 34, column: 11)
!468 = !DILocation(line: 34, column: 11, scope: !461)
!469 = !DILocation(line: 36, column: 29, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !436, line: 36, column: 16)
!471 = !DILocation(line: 36, column: 16, scope: !467)
!472 = !DILocation(line: 37, column: 14, scope: !470)
!473 = distinct !{!473, !457, !474}
!474 = !DILocation(line: 40, column: 5, scope: !435)
!475 = !DILocation(line: 43, column: 1, scope: !435)
!476 = distinct !DISubprogram(name: "atof", scope: !477, file: !477, line: 25, type: !478, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!477 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !197}
!480 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!481 = !{!482}
!482 = !DILocalVariable(name: "__nptr", arg: 1, scope: !476, file: !477, line: 25, type: !197)
!483 = !DILocation(line: 0, scope: !476)
!484 = !DILocation(line: 27, column: 10, scope: !476)
!485 = !DILocation(line: 27, column: 3, scope: !476)
!486 = distinct !DISubprogram(name: "strtoimax", scope: !487, file: !487, line: 324, type: !488, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !494)
!487 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !234, !493, !192}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !491, line: 101, baseType: !492)
!491 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !286, line: 72, baseType: !287)
!493 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !193)
!494 = !{!495, !496, !497}
!495 = !DILocalVariable(name: "nptr", arg: 1, scope: !486, file: !487, line: 324, type: !234)
!496 = !DILocalVariable(name: "endptr", arg: 2, scope: !486, file: !487, line: 324, type: !493)
!497 = !DILocalVariable(name: "base", arg: 3, scope: !486, file: !487, line: 324, type: !192)
!498 = !DILocation(line: 0, scope: !486)
!499 = !DILocation(line: 327, column: 10, scope: !486)
!500 = !DILocation(line: 327, column: 3, scope: !486)
!501 = distinct !DISubprogram(name: "strtoumax", scope: !487, file: !487, line: 336, type: !502, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !506)
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !234, !493, !192}
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !491, line: 102, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !286, line: 73, baseType: !312)
!506 = !{!507, !508, !509}
!507 = !DILocalVariable(name: "nptr", arg: 1, scope: !501, file: !487, line: 336, type: !234)
!508 = !DILocalVariable(name: "endptr", arg: 2, scope: !501, file: !487, line: 336, type: !493)
!509 = !DILocalVariable(name: "base", arg: 3, scope: !501, file: !487, line: 336, type: !192)
!510 = !DILocation(line: 0, scope: !501)
!511 = !DILocation(line: 339, column: 10, scope: !501)
!512 = !DILocation(line: 339, column: 3, scope: !501)
!513 = distinct !DISubprogram(name: "wcstoimax", scope: !487, file: !487, line: 348, type: !514, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !523)
!514 = !DISubroutineType(types: !515)
!515 = !{!490, !516, !520, !192}
!516 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !487, line: 34, baseType: !192)
!520 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!523 = !{!524, !525, !526}
!524 = !DILocalVariable(name: "nptr", arg: 1, scope: !513, file: !487, line: 348, type: !516)
!525 = !DILocalVariable(name: "endptr", arg: 2, scope: !513, file: !487, line: 348, type: !520)
!526 = !DILocalVariable(name: "base", arg: 3, scope: !513, file: !487, line: 348, type: !192)
!527 = !DILocation(line: 0, scope: !513)
!528 = !DILocation(line: 351, column: 10, scope: !513)
!529 = !DILocation(line: 351, column: 3, scope: !513)
!530 = distinct !DISubprogram(name: "wcstoumax", scope: !487, file: !487, line: 362, type: !531, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!531 = !DISubroutineType(types: !532)
!532 = !{!504, !516, !520, !192}
!533 = !{!534, !535, !536}
!534 = !DILocalVariable(name: "nptr", arg: 1, scope: !530, file: !487, line: 362, type: !516)
!535 = !DILocalVariable(name: "endptr", arg: 2, scope: !530, file: !487, line: 362, type: !520)
!536 = !DILocalVariable(name: "base", arg: 3, scope: !530, file: !487, line: 362, type: !192)
!537 = !DILocation(line: 0, scope: !530)
!538 = !DILocation(line: 365, column: 10, scope: !530)
!539 = !DILocation(line: 365, column: 3, scope: !530)
!540 = distinct !DISubprogram(name: "stat", scope: !541, file: !541, line: 453, type: !542, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !581)
!541 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!542 = !DISubroutineType(types: !543)
!543 = !{!192, !197, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !546, line: 46, size: 1152, elements: !547)
!546 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!547 = !{!548, !550, !552, !554, !556, !558, !560, !561, !562, !563, !565, !567, !575, !576, !577}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !545, file: !546, line: 48, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !286, line: 145, baseType: !312)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !545, file: !546, line: 53, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !286, line: 148, baseType: !312)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !545, file: !546, line: 61, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !286, line: 151, baseType: !312)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !545, file: !546, line: 62, baseType: !555, size: 32, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !286, line: 150, baseType: !7)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !545, file: !546, line: 64, baseType: !557, size: 32, offset: 224)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !286, line: 146, baseType: !7)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !545, file: !546, line: 65, baseType: !559, size: 32, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !286, line: 147, baseType: !7)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !545, file: !546, line: 67, baseType: !192, size: 32, offset: 288)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !545, file: !546, line: 69, baseType: !549, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !545, file: !546, line: 74, baseType: !285, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !545, file: !546, line: 78, baseType: !564, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !286, line: 174, baseType: !287)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !545, file: !546, line: 80, baseType: !566, size: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !286, line: 179, baseType: !287)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !545, file: !546, line: 91, baseType: !568, size: 128, offset: 576)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !569, line: 10, size: 128, elements: !570)
!569 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!570 = !{!571, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !568, file: !569, line: 12, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !286, line: 160, baseType: !287)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !568, file: !569, line: 16, baseType: !574, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !286, line: 196, baseType: !287)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !545, file: !546, line: 92, baseType: !568, size: 128, offset: 704)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !545, file: !546, line: 93, baseType: !568, size: 128, offset: 832)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !545, file: !546, line: 106, baseType: !578, size: 192, offset: 960)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 192, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 3)
!581 = !{!582, !583}
!582 = !DILocalVariable(name: "__path", arg: 1, scope: !540, file: !541, line: 453, type: !197)
!583 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !540, file: !541, line: 453, type: !544)
!584 = !DILocation(line: 0, scope: !540)
!585 = !DILocation(line: 455, column: 10, scope: !540)
!586 = !DILocation(line: 455, column: 3, scope: !540)
!587 = distinct !DISubprogram(name: "lstat", scope: !541, file: !541, line: 460, type: !542, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !588)
!588 = !{!589, !590}
!589 = !DILocalVariable(name: "__path", arg: 1, scope: !587, file: !541, line: 460, type: !197)
!590 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !587, file: !541, line: 460, type: !544)
!591 = !DILocation(line: 0, scope: !587)
!592 = !DILocation(line: 462, column: 10, scope: !587)
!593 = !DILocation(line: 462, column: 3, scope: !587)
!594 = distinct !DISubprogram(name: "fstat", scope: !541, file: !541, line: 467, type: !595, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!192, !192, !544}
!597 = !{!598, !599}
!598 = !DILocalVariable(name: "__fd", arg: 1, scope: !594, file: !541, line: 467, type: !192)
!599 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !594, file: !541, line: 467, type: !544)
!600 = !DILocation(line: 0, scope: !594)
!601 = !DILocation(line: 469, column: 10, scope: !594)
!602 = !DILocation(line: 469, column: 3, scope: !594)
!603 = distinct !DISubprogram(name: "fstatat", scope: !541, file: !541, line: 474, type: !604, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!192, !192, !197, !544, !192}
!606 = !{!607, !608, !609, !610}
!607 = !DILocalVariable(name: "__fd", arg: 1, scope: !603, file: !541, line: 474, type: !192)
!608 = !DILocalVariable(name: "__filename", arg: 2, scope: !603, file: !541, line: 474, type: !197)
!609 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !603, file: !541, line: 474, type: !544)
!610 = !DILocalVariable(name: "__flag", arg: 4, scope: !603, file: !541, line: 474, type: !192)
!611 = !DILocation(line: 0, scope: !603)
!612 = !DILocation(line: 477, column: 10, scope: !603)
!613 = !DILocation(line: 477, column: 3, scope: !603)
!614 = distinct !DISubprogram(name: "mknod", scope: !541, file: !541, line: 483, type: !615, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{!192, !197, !555, !549}
!617 = !{!618, !619, !620}
!618 = !DILocalVariable(name: "__path", arg: 1, scope: !614, file: !541, line: 483, type: !197)
!619 = !DILocalVariable(name: "__mode", arg: 2, scope: !614, file: !541, line: 483, type: !555)
!620 = !DILocalVariable(name: "__dev", arg: 3, scope: !614, file: !541, line: 483, type: !549)
!621 = !DILocation(line: 0, scope: !614)
!622 = !DILocation(line: 485, column: 10, scope: !614)
!623 = !DILocation(line: 485, column: 3, scope: !614)
!624 = distinct !DISubprogram(name: "mknodat", scope: !541, file: !541, line: 491, type: !625, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{!192, !192, !197, !555, !549}
!627 = !{!628, !629, !630, !631}
!628 = !DILocalVariable(name: "__fd", arg: 1, scope: !624, file: !541, line: 491, type: !192)
!629 = !DILocalVariable(name: "__path", arg: 2, scope: !624, file: !541, line: 491, type: !197)
!630 = !DILocalVariable(name: "__mode", arg: 3, scope: !624, file: !541, line: 491, type: !555)
!631 = !DILocalVariable(name: "__dev", arg: 4, scope: !624, file: !541, line: 491, type: !549)
!632 = !DILocation(line: 0, scope: !624)
!633 = !DILocation(line: 494, column: 10, scope: !624)
!634 = !DILocation(line: 494, column: 3, scope: !624)
!635 = distinct !DISubprogram(name: "stat64", scope: !541, file: !541, line: 502, type: !636, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !658)
!636 = !DISubroutineType(types: !637)
!637 = !{!192, !197, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !546, line: 119, size: 1152, elements: !640)
!640 = !{!641, !642, !644, !645, !646, !647, !648, !649, !650, !651, !652, !654, !655, !656, !657}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !639, file: !546, line: 121, baseType: !549, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !639, file: !546, line: 123, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !286, line: 149, baseType: !312)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !639, file: !546, line: 124, baseType: !553, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !639, file: !546, line: 125, baseType: !555, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !639, file: !546, line: 132, baseType: !557, size: 32, offset: 224)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !639, file: !546, line: 133, baseType: !559, size: 32, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !639, file: !546, line: 135, baseType: !192, size: 32, offset: 288)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !639, file: !546, line: 136, baseType: !549, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !639, file: !546, line: 137, baseType: !285, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !639, file: !546, line: 143, baseType: !564, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !639, file: !546, line: 144, baseType: !653, size: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !286, line: 180, baseType: !287)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !639, file: !546, line: 152, baseType: !568, size: 128, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !639, file: !546, line: 153, baseType: !568, size: 128, offset: 704)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !639, file: !546, line: 154, baseType: !568, size: 128, offset: 832)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !639, file: !546, line: 164, baseType: !578, size: 192, offset: 960)
!658 = !{!659, !660}
!659 = !DILocalVariable(name: "__path", arg: 1, scope: !635, file: !541, line: 502, type: !197)
!660 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !635, file: !541, line: 502, type: !638)
!661 = !DILocation(line: 0, scope: !635)
!662 = !DILocation(line: 504, column: 10, scope: !635)
!663 = !DILocation(line: 504, column: 3, scope: !635)
!664 = distinct !DISubprogram(name: "lstat64", scope: !541, file: !541, line: 509, type: !636, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!665 = !{!666, !667}
!666 = !DILocalVariable(name: "__path", arg: 1, scope: !664, file: !541, line: 509, type: !197)
!667 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !664, file: !541, line: 509, type: !638)
!668 = !DILocation(line: 0, scope: !664)
!669 = !DILocation(line: 511, column: 10, scope: !664)
!670 = !DILocation(line: 511, column: 3, scope: !664)
!671 = distinct !DISubprogram(name: "fstat64", scope: !541, file: !541, line: 516, type: !672, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{!192, !192, !638}
!674 = !{!675, !676}
!675 = !DILocalVariable(name: "__fd", arg: 1, scope: !671, file: !541, line: 516, type: !192)
!676 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !671, file: !541, line: 516, type: !638)
!677 = !DILocation(line: 0, scope: !671)
!678 = !DILocation(line: 518, column: 10, scope: !671)
!679 = !DILocation(line: 518, column: 3, scope: !671)
!680 = distinct !DISubprogram(name: "fstatat64", scope: !541, file: !541, line: 523, type: !681, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{!192, !192, !197, !638, !192}
!683 = !{!684, !685, !686, !687}
!684 = !DILocalVariable(name: "__fd", arg: 1, scope: !680, file: !541, line: 523, type: !192)
!685 = !DILocalVariable(name: "__filename", arg: 2, scope: !680, file: !541, line: 523, type: !197)
!686 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !680, file: !541, line: 523, type: !638)
!687 = !DILocalVariable(name: "__flag", arg: 4, scope: !680, file: !541, line: 523, type: !192)
!688 = !DILocation(line: 0, scope: !680)
!689 = !DILocation(line: 526, column: 10, scope: !680)
!690 = !DILocation(line: 526, column: 3, scope: !680)
!691 = distinct !DISubprogram(name: "gate_auto_inc_dec", scope: !3, file: !3, line: 1501, type: !209, scopeLine: 1502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !252)
!692 = !DILocation(line: 1506, column: 3, scope: !691)
!693 = distinct !DISubprogram(name: "rest_of_handle_auto_inc_dec", scope: !3, file: !3, line: 1468, type: !213, scopeLine: 1469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !252)
!694 = !DILocation(line: 1494, column: 3, scope: !693)
