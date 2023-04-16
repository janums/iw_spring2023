; ModuleID = 'fixed-value.bc'
source_filename = "fixed-value.c"
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
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct.real_value = type { i32, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@mode_fbit = external dso_local local_unnamed_addr constant [87 x i8], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [68 x i8] c"large fixed-point constant implicitly truncated to fixed-point type\00", align 1
@mode_ibit = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"fixed-value.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@mode_precision = external dso_local local_unnamed_addr constant [87 x i16], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !371 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !384, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !387
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !388
  ret i32 %call, !dbg !389
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !390 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !394
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !395
  ret i32 %call, !dbg !396
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !397 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !459, metadata !DIExpression()), !dbg !460
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !461
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !461
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !461
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !461
  %cmp = icmp uge i8* %0, %1, !dbg !461
  %conv1 = zext i1 %cmp to i64, !dbg !461
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !461
  %tobool = icmp eq i64 %expval, 0, !dbg !461
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !461

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !461
  br label %cond.end, !dbg !461

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !461
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !461
  %2 = load i8, i8* %0, align 1, !dbg !461
  %conv3 = zext i8 %2 to i32, !dbg !461
  br label %cond.end, !dbg !461

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !461
  ret i32 %cond, !dbg !462
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !463 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !465, metadata !DIExpression()), !dbg !466
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !467
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !467
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !467
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !467
  %cmp = icmp uge i8* %0, %1, !dbg !467
  %conv1 = zext i1 %cmp to i64, !dbg !467
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !467
  %tobool = icmp eq i64 %expval, 0, !dbg !467
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !467

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !467
  br label %cond.end, !dbg !467

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !467
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !467
  %2 = load i8, i8* %0, align 1, !dbg !467
  %conv3 = zext i8 %2 to i32, !dbg !467
  br label %cond.end, !dbg !467

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !467
  ret i32 %cond, !dbg !468
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !469 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !470
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !470
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !470
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !470
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !470
  %cmp = icmp uge i8* %1, %2, !dbg !470
  %conv1 = zext i1 %cmp to i64, !dbg !470
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !470
  %tobool = icmp eq i64 %expval, 0, !dbg !470
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !470

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !470
  br label %cond.end, !dbg !470

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !470
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !470
  %3 = load i8, i8* %1, align 1, !dbg !470
  %conv3 = zext i8 %3 to i32, !dbg !470
  br label %cond.end, !dbg !470

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !470
  ret i32 %cond, !dbg !471
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !472 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !478
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !479
  ret i32 %call, !dbg !480
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !481 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !485, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !486, metadata !DIExpression()), !dbg !487
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !488
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !488
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !488
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !488
  %cmp = icmp uge i8* %0, %1, !dbg !488
  %conv1 = zext i1 %cmp to i64, !dbg !488
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !488
  %tobool = icmp eq i64 %expval, 0, !dbg !488
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !488

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !488
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !488
  br label %cond.end, !dbg !488

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !488
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !488
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !488
  store i8 %conv2, i8* %0, align 1, !dbg !488
  %conv6 = and i32 %__c, 255, !dbg !488
  br label %cond.end, !dbg !488

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !488
  ret i32 %cond, !dbg !489
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !490 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !492, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !493, metadata !DIExpression()), !dbg !494
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !495
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !495
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !495
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !495
  %cmp = icmp uge i8* %0, %1, !dbg !495
  %conv1 = zext i1 %cmp to i64, !dbg !495
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !495
  %tobool = icmp eq i64 %expval, 0, !dbg !495
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !495

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !495
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !495
  br label %cond.end, !dbg !495

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !495
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !495
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !495
  store i8 %conv2, i8* %0, align 1, !dbg !495
  %conv6 = and i32 %__c, 255, !dbg !495
  br label %cond.end, !dbg !495

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !495
  ret i32 %cond, !dbg !496
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !497 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !501
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !501
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !501
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !501
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !501
  %cmp = icmp uge i8* %1, %2, !dbg !501
  %conv1 = zext i1 %cmp to i64, !dbg !501
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !501
  %tobool = icmp eq i64 %expval, 0, !dbg !501
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !501

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !501
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !501
  br label %cond.end, !dbg !501

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !501
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !501
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !501
  store i8 %conv4, i8* %1, align 1, !dbg !501
  %conv6 = and i32 %__c, 255, !dbg !501
  br label %cond.end, !dbg !501

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !501
  ret i32 %cond, !dbg !502
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !503 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !509, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64* %__n, metadata !510, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !511, metadata !DIExpression()), !dbg !512
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !513
  ret i64 %call, !dbg !514
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !515 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !517, metadata !DIExpression()), !dbg !518
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !519
  %0 = load i32, i32* %_flags, align 8, !dbg !519
  %and = lshr i32 %0, 4, !dbg !519
  %and.lobit = and i32 %and, 1, !dbg !519
  ret i32 %and.lobit, !dbg !520
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !521 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !523, metadata !DIExpression()), !dbg !524
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !525
  %0 = load i32, i32* %_flags, align 8, !dbg !525
  %and = lshr i32 %0, 5, !dbg !525
  %and.lobit = and i32 %and, 1, !dbg !525
  ret i32 %and.lobit, !dbg !526
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !527 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !530, metadata !DIExpression()), !dbg !531
  %__c.off = add i32 %__c, 128, !dbg !532
  %0 = icmp ult i32 %__c.off, 384, !dbg !532
  br i1 %0, label %cond.true, label %cond.end, !dbg !532

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !533
  %1 = load i32*, i32** %call, align 8, !dbg !534
  %idxprom = sext i32 %__c to i64, !dbg !535
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !535
  %2 = load i32, i32* %arrayidx, align 4, !dbg !535
  br label %cond.end, !dbg !536

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !536
  ret i32 %cond, !dbg !537
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !538 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !540, metadata !DIExpression()), !dbg !541
  %__c.off = add i32 %__c, 128, !dbg !542
  %0 = icmp ult i32 %__c.off, 384, !dbg !542
  br i1 %0, label %cond.true, label %cond.end, !dbg !542

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !543
  %1 = load i32*, i32** %call, align 8, !dbg !544
  %idxprom = sext i32 %__c to i64, !dbg !545
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !545
  %2 = load i32, i32* %arrayidx, align 4, !dbg !545
  br label %cond.end, !dbg !546

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !546
  ret i32 %cond, !dbg !547
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !548 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !553, metadata !DIExpression()), !dbg !554
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !555
  %conv = trunc i64 %call to i32, !dbg !556
  ret i32 %conv, !dbg !557
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !558 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !562, metadata !DIExpression()), !dbg !563
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !564
  ret i64 %call, !dbg !565
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !566 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !571, metadata !DIExpression()), !dbg !572
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !573
  ret i64 %call, !dbg !574
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !575 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !586, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i8* %__base, metadata !587, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !588, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %__size, metadata !589, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !592, metadata !DIExpression()), !dbg !596
  br label %while.cond, !dbg !597

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !598
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !596
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !592, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !591, metadata !DIExpression()), !dbg !596
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !599
  br i1 %cmp, label %while.body, label %cleanup, !dbg !597

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !600
  %div = lshr i64 %add, 1, !dbg !602
  call void @llvm.dbg.value(metadata i64 %div, metadata !593, metadata !DIExpression()), !dbg !596
  %mul = mul i64 %div, %__size, !dbg !603
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !604
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !594, metadata !DIExpression()), !dbg !596
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !605
  call void @llvm.dbg.value(metadata i32 %call, metadata !595, metadata !DIExpression()), !dbg !596
  %cmp1 = icmp slt i32 %call, 0, !dbg !606
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !608

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !609
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !611

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !612
  call void @llvm.dbg.value(metadata i64 %add4, metadata !591, metadata !DIExpression()), !dbg !596
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !596
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !596
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !592, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !591, metadata !DIExpression()), !dbg !596
  br label %while.cond, !dbg !597, !llvm.loop !613

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !596
  ret i8* %retval.0, !dbg !615
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !616 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !622, metadata !DIExpression()), !dbg !623
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !624
  ret double %call, !dbg !625
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !626 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !635, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !636, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i32 %base, metadata !637, metadata !DIExpression()), !dbg !638
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !639
  ret i64 %call, !dbg !640
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !641 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !647, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !648, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i32 %base, metadata !649, metadata !DIExpression()), !dbg !650
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !651
  ret i64 %call, !dbg !652
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !653 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !664, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !665, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %base, metadata !666, metadata !DIExpression()), !dbg !667
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !668
  ret i64 %call, !dbg !669
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !670 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !674, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !675, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %base, metadata !676, metadata !DIExpression()), !dbg !677
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !678
  ret i64 %call, !dbg !679
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !680 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !722, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !723, metadata !DIExpression()), !dbg !724
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !725
  ret i32 %call, !dbg !726
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !727 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !729, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !730, metadata !DIExpression()), !dbg !731
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !732
  ret i32 %call, !dbg !733
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !734 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !738, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !739, metadata !DIExpression()), !dbg !740
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !741
  ret i32 %call, !dbg !742
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !743 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !747, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !748, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !749, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !750, metadata !DIExpression()), !dbg !751
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !752
  ret i32 %call, !dbg !753
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !754 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !758, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !759, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !760, metadata !DIExpression()), !dbg !761
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !760, metadata !DIExpression(DW_OP_deref)), !dbg !761
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !762
  ret i32 %call, !dbg !763
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !764 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !768, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata i8* %__path, metadata !769, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !770, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !771, metadata !DIExpression()), !dbg !772
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !771, metadata !DIExpression(DW_OP_deref)), !dbg !772
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !773
  ret i32 %call, !dbg !774
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !775 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !799, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !800, metadata !DIExpression()), !dbg !801
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !802
  ret i32 %call, !dbg !803
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !804 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !806, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !807, metadata !DIExpression()), !dbg !808
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !809
  ret i32 %call, !dbg !810
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !811 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !815, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !816, metadata !DIExpression()), !dbg !817
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !818
  ret i32 %call, !dbg !819
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !820 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !824, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !825, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !826, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !827, metadata !DIExpression()), !dbg !828
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !829
  ret i32 %call, !dbg !830
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @fixed_identical(%struct.fixed_value* %a, %struct.fixed_value* %b) local_unnamed_addr #4 !dbg !831 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixed_value* %a, metadata !848, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata %struct.fixed_value* %b, metadata !849, metadata !DIExpression()), !dbg !850
  %mode = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 1, !dbg !851
  %0 = load i32, i32* %mode, align 8, !dbg !851
  %mode1 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 1, !dbg !852
  %1 = load i32, i32* %mode1, align 8, !dbg !852
  %cmp = icmp eq i32 %0, %1, !dbg !853
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !854

land.lhs.true:                                    ; preds = %entry
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !855
  %2 = load i64, i64* %high, align 8, !dbg !855
  %high3 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 1, !dbg !856
  %3 = load i64, i64* %high3, align 8, !dbg !856
  %cmp4 = icmp eq i64 %2, %3, !dbg !857
  br i1 %cmp4, label %land.rhs, label %land.end, !dbg !858

land.rhs:                                         ; preds = %land.lhs.true
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !859
  %4 = load i64, i64* %low, align 8, !dbg !859
  %low7 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !860
  %5 = load i64, i64* %low7, align 8, !dbg !860
  %cmp8 = icmp eq i64 %4, %5, !dbg !861
  %phitmp = zext i1 %cmp8 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %6, !dbg !862
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fixed_hash(%struct.fixed_value* %f) local_unnamed_addr #4 !dbg !863 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !867, metadata !DIExpression()), !dbg !868
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !869
  %0 = load i64, i64* %low, align 8, !dbg !869
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !870
  %1 = load i64, i64* %high, align 8, !dbg !870
  %xor = xor i64 %0, %1, !dbg !871
  %conv = trunc i64 %xor to i32, !dbg !872
  ret i32 %conv, !dbg !873
}

; Function Attrs: nounwind uwtable
define dso_local void @fixed_from_string(%struct.fixed_value* %f, i8* %str, i32 %mode) local_unnamed_addr #4 !dbg !874 {
entry:
  %real_value = alloca %struct.real_value, align 8
  %fixed_value = alloca %struct.real_value, align 8
  %base_value = alloca %struct.real_value, align 8
  %tmp = alloca %struct.double_int, align 8
  %tmp87 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !879, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i8* %str, metadata !880, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %mode, metadata !881, metadata !DIExpression()), !dbg !898
  %0 = bitcast %struct.real_value* %real_value to i8*, !dbg !899
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !899
  %1 = bitcast %struct.real_value* %fixed_value to i8*, !dbg !899
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !899
  %2 = bitcast %struct.real_value* %base_value to i8*, !dbg !899
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !899
  %mode1 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !900
  store i32 %mode, i32* %mode1, align 8, !dbg !901
  %idxprom = zext i32 %mode to i64, !dbg !902
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !902
  %3 = load i8, i8* %arrayidx, align 1, !dbg !902
  %conv = zext i8 %3 to i32, !dbg !902
  call void @llvm.dbg.value(metadata i32 %conv, metadata !896, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata %struct.real_value* %real_value, metadata !882, metadata !DIExpression(DW_OP_deref)), !dbg !898
  %call = call i32 @real_from_string(%struct.real_value* nonnull %real_value, i8* %str) #6, !dbg !903
  %4 = load i32, i32* %mode1, align 8, !dbg !904
  call void @llvm.dbg.value(metadata %struct.real_value* %real_value, metadata !882, metadata !DIExpression(DW_OP_deref)), !dbg !898
  %call3 = call fastcc i32 @check_real_for_fixed_mode(%struct.real_value* nonnull %real_value, i32 %4) #8, !dbg !905
  call void @llvm.dbg.value(metadata i32 %call3, metadata !897, metadata !DIExpression()), !dbg !898
  switch i32 %call3, label %if.end [
    i32 1, label %if.then
    i32 2, label %if.then
    i32 3, label %land.lhs.true
  ], !dbg !906

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %mode1, align 8, !dbg !908
  %idxprom11 = zext i32 %5 to i64, !dbg !908
  %arrayidx12 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom11, !dbg !908
  %6 = load i8, i8* %arrayidx12, align 1, !dbg !908
  %cmp14 = icmp eq i8 %6, 6, !dbg !908
  br i1 %cmp14, label %if.then, label %lor.lhs.false16, !dbg !908

lor.lhs.false16:                                  ; preds = %land.lhs.true
  %cmp21 = icmp eq i8 %6, 15, !dbg !908
  br i1 %cmp21, label %if.then, label %lor.lhs.false23, !dbg !908

lor.lhs.false23:                                  ; preds = %lor.lhs.false16
  %cmp28 = icmp eq i8 %6, 7, !dbg !908
  br i1 %cmp28, label %if.then, label %lor.lhs.false30, !dbg !908

lor.lhs.false30:                                  ; preds = %lor.lhs.false23
  %cmp35 = icmp eq i8 %6, 16, !dbg !908
  br i1 %cmp35, label %if.then, label %if.end, !dbg !909

if.then:                                          ; preds = %entry, %entry, %lor.lhs.false30, %lor.lhs.false23, %lor.lhs.false16, %land.lhs.true
  %call37 = call zeroext i8 (i32, i8*, ...) @warning(i32 151, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0)) #6, !dbg !910
  br label %if.end, !dbg !910

if.end:                                           ; preds = %entry, %if.then, %lor.lhs.false30
  call void @llvm.dbg.value(metadata %struct.real_value* %base_value, metadata !895, metadata !DIExpression(DW_OP_deref)), !dbg !898
  call void @real_2expN(%struct.real_value* nonnull %base_value, i32 %conv, i32 %mode) #6, !dbg !911
  call void @llvm.dbg.value(metadata %struct.real_value* %real_value, metadata !882, metadata !DIExpression(DW_OP_deref)), !dbg !898
  call void @llvm.dbg.value(metadata %struct.real_value* %fixed_value, metadata !894, metadata !DIExpression(DW_OP_deref)), !dbg !898
  call void @llvm.dbg.value(metadata %struct.real_value* %base_value, metadata !895, metadata !DIExpression(DW_OP_deref)), !dbg !898
  %call38 = call zeroext i8 @real_arithmetic(%struct.real_value* nonnull %fixed_value, i32 65, %struct.real_value* nonnull %real_value, %struct.real_value* nonnull %base_value) #6, !dbg !912
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !913
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !914
  call void @llvm.dbg.value(metadata %struct.real_value* %fixed_value, metadata !894, metadata !DIExpression(DW_OP_deref)), !dbg !898
  call void @real_to_integer2(i64* %low, i64* nonnull %high, %struct.real_value* nonnull %fixed_value) #6, !dbg !915
  %cmp40 = icmp eq i32 %call3, 3, !dbg !916
  br i1 %cmp40, label %land.lhs.true42, label %if.end.if.else_crit_edge, !dbg !918

if.end.if.else_crit_edge:                         ; preds = %if.end
  %.pre = load i32, i32* %mode1, align 8, !dbg !919
  %idxprom90.phi.trans.insert = zext i32 %.pre to i64, !dbg !920
  %arrayidx91.phi.trans.insert = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom90.phi.trans.insert, !dbg !920
  %.pre2 = load i8, i8* %arrayidx91.phi.trans.insert, align 1, !dbg !919
  br label %if.else, !dbg !918

land.lhs.true42:                                  ; preds = %if.end
  %7 = load i32, i32* %mode1, align 8, !dbg !921
  %idxprom44 = zext i32 %7 to i64, !dbg !921
  %arrayidx45 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom44, !dbg !921
  %8 = load i8, i8* %arrayidx45, align 1, !dbg !921
  %cmp47 = icmp eq i8 %8, 4, !dbg !921
  br i1 %cmp47, label %if.then70, label %lor.lhs.false49, !dbg !921

lor.lhs.false49:                                  ; preds = %land.lhs.true42
  %cmp54 = icmp eq i8 %8, 13, !dbg !921
  br i1 %cmp54, label %if.then70, label %lor.lhs.false56, !dbg !921

lor.lhs.false56:                                  ; preds = %lor.lhs.false49
  %cmp61 = icmp eq i8 %8, 5, !dbg !921
  br i1 %cmp61, label %if.then70, label %lor.lhs.false63, !dbg !921

lor.lhs.false63:                                  ; preds = %lor.lhs.false56
  %cmp68 = icmp eq i8 %8, 14, !dbg !921
  br i1 %cmp68, label %if.then70, label %if.else, !dbg !922

if.then70:                                        ; preds = %lor.lhs.false63, %lor.lhs.false56, %lor.lhs.false49, %land.lhs.true42
  store i64 -1, i64* %low, align 8, !dbg !923
  store i64 -1, i64* %high, align 8, !dbg !925
  %9 = bitcast %struct.double_int* %tmp to i8*, !dbg !926
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #7, !dbg !926
  %arrayidx79 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom44, !dbg !927
  %10 = load i8, i8* %arrayidx79, align 1, !dbg !927
  %conv80 = zext i8 %10 to i32, !dbg !927
  %arrayidx83 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom44, !dbg !928
  %11 = load i8, i8* %arrayidx83, align 1, !dbg !928
  %conv84 = zext i8 %11 to i32, !dbg !928
  %add = add nuw nsw i32 %conv80, %conv84, !dbg !929
  %call85 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 %add, i8 zeroext 1) #6, !dbg !926
  %12 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !926
  %13 = extractvalue { i64, i64 } %call85, 0, !dbg !926
  store i64 %13, i64* %12, align 8, !dbg !926
  %14 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !926
  %15 = extractvalue { i64, i64 } %call85, 1, !dbg !926
  store i64 %15, i64* %14, align 8, !dbg !926
  %16 = bitcast %struct.fixed_value* %f to i8*, !dbg !926
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !926
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #7, !dbg !926
  br label %if.end159, !dbg !930

if.else:                                          ; preds = %if.end.if.else_crit_edge, %lor.lhs.false63
  %idxprom90.pre-phi = phi i64 [ %idxprom90.phi.trans.insert, %if.end.if.else_crit_edge ], [ %idxprom44, %lor.lhs.false63 ], !dbg !919
  %17 = phi i8 [ %.pre2, %if.end.if.else_crit_edge ], [ %8, %lor.lhs.false63 ], !dbg !919
  %18 = bitcast %struct.double_int* %tmp87 to i8*, !dbg !931
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !931
  %cmp93 = icmp eq i8 %17, 4, !dbg !919
  br i1 %cmp93, label %lor.end115, label %lor.lhs.false95, !dbg !919

lor.lhs.false95:                                  ; preds = %if.else
  %cmp100 = icmp eq i8 %17, 13, !dbg !919
  br i1 %cmp100, label %lor.end115, label %lor.rhs, !dbg !919

lor.rhs:                                          ; preds = %lor.lhs.false95
  %cmp106 = icmp eq i8 %17, 6, !dbg !919
  br i1 %cmp106, label %lor.end115, label %lor.rhs108, !dbg !919

lor.rhs108:                                       ; preds = %lor.rhs
  %cmp113 = icmp eq i8 %17, 15, !dbg !919
  %phitmp = zext i1 %cmp113 to i32, !dbg !919
  br label %lor.end115, !dbg !919

lor.end115:                                       ; preds = %lor.rhs, %lor.rhs108, %lor.lhs.false95, %if.else
  %19 = phi i32 [ 1, %lor.lhs.false95 ], [ 1, %if.else ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs108 ]
  %arrayidx118 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom90.pre-phi, !dbg !932
  %20 = load i8, i8* %arrayidx118, align 1, !dbg !932
  %conv119 = zext i8 %20 to i32, !dbg !932
  %add120 = add nuw nsw i32 %19, %conv119, !dbg !933
  %arrayidx123 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom90.pre-phi, !dbg !934
  %21 = load i8, i8* %arrayidx123, align 1, !dbg !934
  %conv124 = zext i8 %21 to i32, !dbg !934
  %add125 = add nuw nsw i32 %add120, %conv124, !dbg !935
  %cmp130 = icmp eq i8 %17, 5, !dbg !936
  br i1 %cmp130, label %lor.end155, label %lor.lhs.false132, !dbg !936

lor.lhs.false132:                                 ; preds = %lor.end115
  %cmp137 = icmp eq i8 %17, 14, !dbg !936
  br i1 %cmp137, label %lor.end155, label %lor.rhs139, !dbg !936

lor.rhs139:                                       ; preds = %lor.lhs.false132
  %cmp144 = icmp eq i8 %17, 7, !dbg !936
  br i1 %cmp144, label %lor.end155, label %lor.rhs146, !dbg !936

lor.rhs146:                                       ; preds = %lor.rhs139
  %cmp151 = icmp eq i8 %17, 16, !dbg !936
  %phitmp1 = zext i1 %cmp151 to i8, !dbg !936
  br label %lor.end155, !dbg !936

lor.end155:                                       ; preds = %lor.rhs139, %lor.rhs146, %lor.lhs.false132, %lor.end115
  %22 = phi i8 [ 1, %lor.lhs.false132 ], [ 1, %lor.end115 ], [ 1, %lor.rhs139 ], [ %phitmp1, %lor.rhs146 ]
  %23 = load i64, i64* %low, align 8, !dbg !931
  %24 = load i64, i64* %high, align 8, !dbg !931
  %call158 = call { i64, i64 } @double_int_ext(i64 %23, i64 %24, i32 %add125, i8 zeroext %22) #6, !dbg !931
  %25 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp87, i64 0, i32 0, !dbg !931
  %26 = extractvalue { i64, i64 } %call158, 0, !dbg !931
  store i64 %26, i64* %25, align 8, !dbg !931
  %27 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp87, i64 0, i32 1, !dbg !931
  %28 = extractvalue { i64, i64 } %call158, 1, !dbg !931
  store i64 %28, i64* %27, align 8, !dbg !931
  %29 = bitcast %struct.fixed_value* %f to i8*, !dbg !931
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !931
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !931
  br label %if.end159

if.end159:                                        ; preds = %lor.end155, %if.then70
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !937
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !937
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !937
  ret void, !dbg !937
}

declare dso_local i32 @real_from_string(%struct.real_value*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_real_for_fixed_mode(%struct.real_value* %real_value, i32 %mode) unnamed_addr #4 !dbg !938 {
entry:
  %max_value = alloca %struct.real_value, align 8
  %min_value = alloca %struct.real_value, align 8
  %epsilon_value = alloca %struct.real_value, align 8
  %tmp = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %real_value, metadata !943, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i32 %mode, metadata !944, metadata !DIExpression()), !dbg !948
  %0 = bitcast %struct.real_value* %max_value to i8*, !dbg !949
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !949
  %1 = bitcast %struct.real_value* %min_value to i8*, !dbg !949
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !949
  %2 = bitcast %struct.real_value* %epsilon_value to i8*, !dbg !949
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !949
  %idxprom = zext i32 %mode to i64, !dbg !950
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !950
  %3 = load i8, i8* %arrayidx, align 1, !dbg !950
  %conv = zext i8 %3 to i32, !dbg !950
  call void @llvm.dbg.value(metadata %struct.real_value* %max_value, metadata !945, metadata !DIExpression(DW_OP_deref)), !dbg !948
  call void @real_2expN(%struct.real_value* nonnull %max_value, i32 %conv, i32 %mode) #6, !dbg !951
  %arrayidx2 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !952
  %4 = load i8, i8* %arrayidx2, align 1, !dbg !952
  %conv3 = zext i8 %4 to i32, !dbg !952
  %sub = sub nsw i32 0, %conv3, !dbg !953
  call void @llvm.dbg.value(metadata %struct.real_value* %epsilon_value, metadata !947, metadata !DIExpression(DW_OP_deref)), !dbg !948
  call void @real_2expN(%struct.real_value* nonnull %epsilon_value, i32 %sub, i32 %mode) #6, !dbg !954
  %arrayidx5 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !955
  %5 = load i8, i8* %arrayidx5, align 1, !dbg !955
  %cmp = icmp eq i8 %5, 4, !dbg !955
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !955

lor.lhs.false:                                    ; preds = %entry
  %cmp11 = icmp eq i8 %5, 13, !dbg !955
  br i1 %cmp11, label %if.then, label %lor.lhs.false13, !dbg !955

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %cmp17 = icmp eq i8 %5, 6, !dbg !955
  br i1 %cmp17, label %if.then, label %lor.lhs.false19, !dbg !955

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %cmp23 = icmp eq i8 %5, 15, !dbg !955
  br i1 %cmp23, label %if.then, label %if.else, !dbg !957

if.then:                                          ; preds = %lor.lhs.false19, %lor.lhs.false13, %lor.lhs.false, %entry
  %6 = bitcast %struct.real_value* %tmp to i8*, !dbg !958
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7, !dbg !958
  call void @llvm.dbg.value(metadata %struct.real_value* %max_value, metadata !945, metadata !DIExpression(DW_OP_deref)), !dbg !948
  call void @real_arithmetic2(%struct.real_value* nonnull sret %tmp, i32 79, %struct.real_value* nonnull %max_value, %struct.real_value* null) #6, !dbg !958
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %6, i64 32, i1 false), !dbg !958
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7, !dbg !958
  br label %if.end, !dbg !959

if.else:                                          ; preds = %lor.lhs.false19
  call void @llvm.dbg.value(metadata %struct.real_value* %min_value, metadata !946, metadata !DIExpression(DW_OP_deref)), !dbg !948
  %call = call i32 @real_from_string(%struct.real_value* nonnull %min_value, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !960
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.value(metadata %struct.real_value* %min_value, metadata !946, metadata !DIExpression(DW_OP_deref)), !dbg !948
  %call25 = call zeroext i8 @real_compare(i32 97, %struct.real_value* %real_value, %struct.real_value* nonnull %min_value) #6, !dbg !961
  %tobool = icmp eq i8 %call25, 0, !dbg !961
  br i1 %tobool, label %if.end27, label %cleanup, !dbg !963

if.end27:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.real_value* %max_value, metadata !945, metadata !DIExpression(DW_OP_deref)), !dbg !948
  %call28 = call zeroext i8 @real_compare(i32 101, %struct.real_value* %real_value, %struct.real_value* nonnull %max_value) #6, !dbg !964
  %tobool29 = icmp eq i8 %call28, 0, !dbg !964
  br i1 %tobool29, label %if.end31, label %cleanup, !dbg !966

if.end31:                                         ; preds = %if.end27
  call void @llvm.dbg.value(metadata %struct.real_value* %max_value, metadata !945, metadata !DIExpression(DW_OP_deref)), !dbg !948
  call void @llvm.dbg.value(metadata %struct.real_value* %max_value, metadata !945, metadata !DIExpression(DW_OP_deref)), !dbg !948
  call void @llvm.dbg.value(metadata %struct.real_value* %epsilon_value, metadata !947, metadata !DIExpression(DW_OP_deref)), !dbg !948
  %call32 = call zeroext i8 @real_arithmetic(%struct.real_value* nonnull %max_value, i32 64, %struct.real_value* nonnull %max_value, %struct.real_value* nonnull %epsilon_value) #6, !dbg !967
  call void @llvm.dbg.value(metadata %struct.real_value* %max_value, metadata !945, metadata !DIExpression(DW_OP_deref)), !dbg !948
  %call33 = call zeroext i8 @real_compare(i32 99, %struct.real_value* %real_value, %struct.real_value* nonnull %max_value) #6, !dbg !968
  %tobool34 = icmp eq i8 %call33, 0, !dbg !968
  %. = select i1 %tobool34, i32 0, i32 2, !dbg !948
  br label %cleanup, !dbg !948

cleanup:                                          ; preds = %if.end27, %if.end, %if.end31
  %retval.0 = phi i32 [ 1, %if.end ], [ 3, %if.end27 ], [ %., %if.end31 ], !dbg !948
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !970
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !970
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !970
  ret i32 %retval.0, !dbg !970
}

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #1

declare dso_local void @real_2expN(%struct.real_value*, i32, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @real_arithmetic(%struct.real_value*, i32, %struct.real_value*, %struct.real_value*) local_unnamed_addr #1

declare dso_local void @real_to_integer2(i64*, i64*, %struct.real_value*) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_ext(i64, i64, i32, i8 zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @fixed_to_decimal(i8* %str, %struct.fixed_value* %f_orig, i64 %buf_size) local_unnamed_addr #4 !dbg !971 {
entry:
  %real_value = alloca %struct.real_value, align 8
  %base_value = alloca %struct.real_value, align 8
  %fixed_value = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !975, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f_orig, metadata !976, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %buf_size, metadata !977, metadata !DIExpression()), !dbg !981
  %0 = bitcast %struct.real_value* %real_value to i8*, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !982
  %1 = bitcast %struct.real_value* %base_value to i8*, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !982
  %2 = bitcast %struct.real_value* %fixed_value to i8*, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !982
  %mode = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f_orig, i64 0, i32 1, !dbg !983
  %3 = load i32, i32* %mode, align 8, !dbg !983
  %idxprom = zext i32 %3 to i64, !dbg !983
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !983
  %4 = load i8, i8* %arrayidx, align 1, !dbg !983
  %conv = zext i8 %4 to i32, !dbg !983
  call void @llvm.dbg.value(metadata %struct.real_value* %base_value, metadata !979, metadata !DIExpression(DW_OP_deref)), !dbg !981
  call void @real_2expN(%struct.real_value* nonnull %base_value, i32 %conv, i32 %3) #6, !dbg !984
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f_orig, i64 0, i32 0, i32 0, !dbg !985
  %5 = load i64, i64* %low, align 8, !dbg !985
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f_orig, i64 0, i32 0, i32 1, !dbg !986
  %6 = load i64, i64* %high, align 8, !dbg !986
  %7 = load i32, i32* %mode, align 8, !dbg !987
  %idxprom4 = zext i32 %7 to i64, !dbg !987
  %arrayidx5 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom4, !dbg !987
  %8 = load i8, i8* %arrayidx5, align 1, !dbg !987
  %cmp = icmp eq i8 %8, 5, !dbg !987
  br i1 %cmp, label %lor.end27, label %lor.lhs.false, !dbg !987

lor.lhs.false:                                    ; preds = %entry
  %cmp12 = icmp eq i8 %8, 14, !dbg !987
  br i1 %cmp12, label %lor.end27, label %lor.rhs, !dbg !987

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp18 = icmp eq i8 %8, 7, !dbg !987
  br i1 %cmp18, label %lor.end27, label %lor.rhs20, !dbg !987

lor.rhs20:                                        ; preds = %lor.rhs
  %cmp25 = icmp eq i8 %8, 16, !dbg !987
  %phitmp = zext i1 %cmp25 to i32, !dbg !987
  br label %lor.end27, !dbg !987

lor.end27:                                        ; preds = %lor.rhs, %lor.rhs20, %lor.lhs.false, %entry
  %9 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs20 ]
  call void @llvm.dbg.value(metadata %struct.real_value* %real_value, metadata !978, metadata !DIExpression(DW_OP_deref)), !dbg !981
  call void @real_from_integer(%struct.real_value* nonnull %real_value, i32 0, i64 %5, i64 %6, i32 %9) #6, !dbg !988
  call void @llvm.dbg.value(metadata %struct.real_value* %real_value, metadata !978, metadata !DIExpression(DW_OP_deref)), !dbg !981
  call void @llvm.dbg.value(metadata %struct.real_value* %base_value, metadata !979, metadata !DIExpression(DW_OP_deref)), !dbg !981
  call void @llvm.dbg.value(metadata %struct.real_value* %fixed_value, metadata !980, metadata !DIExpression(DW_OP_deref)), !dbg !981
  %call = call zeroext i8 @real_arithmetic(%struct.real_value* nonnull %fixed_value, i32 75, %struct.real_value* nonnull %real_value, %struct.real_value* nonnull %base_value) #6, !dbg !989
  call void @llvm.dbg.value(metadata %struct.real_value* %fixed_value, metadata !980, metadata !DIExpression(DW_OP_deref)), !dbg !981
  call void @real_to_decimal(i8* %str, %struct.real_value* nonnull %fixed_value, i64 %buf_size, i64 0, i32 1) #6, !dbg !990
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !991
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !991
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !991
  ret void, !dbg !991
}

declare dso_local void @real_from_integer(%struct.real_value*, i32, i64, i64, i32) local_unnamed_addr #1

declare dso_local void @real_to_decimal(i8*, %struct.real_value*, i64, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @fixed_arithmetic(%struct.fixed_value* %f, i32 %icode, %struct.fixed_value* %op0, %struct.fixed_value* %op1, i8 zeroext %sat_p) local_unnamed_addr #4 !dbg !992 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !996, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i32 %icode, metadata !997, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata %struct.fixed_value* %op0, metadata !998, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata %struct.fixed_value* %op1, metadata !999, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !1000, metadata !DIExpression()), !dbg !1001
  switch i32 %icode, label %sw.default [
    i32 79, label %sw.bb
    i32 63, label %sw.bb1
    i32 64, label %sw.bb4
    i32 65, label %sw.bb13
    i32 67, label %sw.bb22
    i32 83, label %sw.bb31
    i32 84, label %sw.bb33
  ], !dbg !1002

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc zeroext i8 @do_fixed_neg(%struct.fixed_value* %f, %struct.fixed_value* %op0, i8 zeroext %sat_p) #8, !dbg !1003
  br label %return, !dbg !1005

sw.bb1:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 1, !dbg !1006
  %0 = load i32, i32* %mode, align 8, !dbg !1006
  %mode2 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 1, !dbg !1006
  %1 = load i32, i32* %mode2, align 8, !dbg !1006
  %cmp = icmp eq i32 %0, %1, !dbg !1006
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1006

cond.true:                                        ; preds = %sw.bb1
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1006
  br label %cond.end, !dbg !1006

cond.end:                                         ; preds = %sw.bb1, %cond.true
  %call3 = tail call fastcc zeroext i8 @do_fixed_add(%struct.fixed_value* %f, %struct.fixed_value* %op0, %struct.fixed_value* %op1, i8 zeroext 0, i8 zeroext %sat_p) #8, !dbg !1007
  br label %return, !dbg !1008

sw.bb4:                                           ; preds = %entry
  %mode5 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 1, !dbg !1009
  %2 = load i32, i32* %mode5, align 8, !dbg !1009
  %mode6 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 1, !dbg !1009
  %3 = load i32, i32* %mode6, align 8, !dbg !1009
  %cmp7 = icmp eq i32 %2, %3, !dbg !1009
  br i1 %cmp7, label %cond.end10, label %cond.true8, !dbg !1009

cond.true8:                                       ; preds = %sw.bb4
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 752, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1009
  br label %cond.end10, !dbg !1009

cond.end10:                                       ; preds = %sw.bb4, %cond.true8
  %call12 = tail call fastcc zeroext i8 @do_fixed_add(%struct.fixed_value* %f, %struct.fixed_value* %op0, %struct.fixed_value* %op1, i8 zeroext 1, i8 zeroext %sat_p) #8, !dbg !1010
  br label %return, !dbg !1011

sw.bb13:                                          ; preds = %entry
  %mode14 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 1, !dbg !1012
  %4 = load i32, i32* %mode14, align 8, !dbg !1012
  %mode15 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 1, !dbg !1012
  %5 = load i32, i32* %mode15, align 8, !dbg !1012
  %cmp16 = icmp eq i32 %4, %5, !dbg !1012
  br i1 %cmp16, label %cond.end19, label %cond.true17, !dbg !1012

cond.true17:                                      ; preds = %sw.bb13
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 757, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1012
  br label %cond.end19, !dbg !1012

cond.end19:                                       ; preds = %sw.bb13, %cond.true17
  %call21 = tail call fastcc zeroext i8 @do_fixed_multiply(%struct.fixed_value* %f, %struct.fixed_value* %op0, %struct.fixed_value* %op1, i8 zeroext %sat_p) #8, !dbg !1013
  br label %return, !dbg !1014

sw.bb22:                                          ; preds = %entry
  %mode23 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 1, !dbg !1015
  %6 = load i32, i32* %mode23, align 8, !dbg !1015
  %mode24 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 1, !dbg !1015
  %7 = load i32, i32* %mode24, align 8, !dbg !1015
  %cmp25 = icmp eq i32 %6, %7, !dbg !1015
  br i1 %cmp25, label %cond.end28, label %cond.true26, !dbg !1015

cond.true26:                                      ; preds = %sw.bb22
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 762, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1015
  br label %cond.end28, !dbg !1015

cond.end28:                                       ; preds = %sw.bb22, %cond.true26
  %call30 = tail call fastcc zeroext i8 @do_fixed_divide(%struct.fixed_value* %f, %struct.fixed_value* %op0, %struct.fixed_value* %op1, i8 zeroext %sat_p) #8, !dbg !1016
  br label %return, !dbg !1017

sw.bb31:                                          ; preds = %entry
  %call32 = tail call fastcc zeroext i8 @do_fixed_shift(%struct.fixed_value* %f, %struct.fixed_value* %op0, %struct.fixed_value* %op1, i8 zeroext 1, i8 zeroext %sat_p) #8, !dbg !1018
  br label %return, !dbg !1019

sw.bb33:                                          ; preds = %entry
  %call34 = tail call fastcc zeroext i8 @do_fixed_shift(%struct.fixed_value* %f, %struct.fixed_value* %op0, %struct.fixed_value* %op1, i8 zeroext 0, i8 zeroext %sat_p) #8, !dbg !1020
  br label %return, !dbg !1021

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 775, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1022
  br label %return, !dbg !1023

return:                                           ; preds = %sw.default, %sw.bb33, %sw.bb31, %cond.end28, %cond.end19, %cond.end10, %cond.end, %sw.bb
  %retval.0 = phi i8 [ 0, %sw.default ], [ %call34, %sw.bb33 ], [ %call32, %sw.bb31 ], [ %call30, %cond.end28 ], [ %call21, %cond.end19 ], [ %call12, %cond.end10 ], [ %call3, %cond.end ], [ %call, %sw.bb ], !dbg !1001
  ret i8 %retval.0, !dbg !1024
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @do_fixed_neg(%struct.fixed_value* %f, %struct.fixed_value* %a, i8 zeroext %sat_p) unnamed_addr #4 !dbg !1025 {
entry:
  %tmp = alloca %struct.double_int, align 8
  %tmp35 = alloca %struct.double_int, align 8
  %tmp86 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !1029, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata %struct.fixed_value* %a, metadata !1030, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !1031, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, metadata !1032, metadata !DIExpression()), !dbg !1035
  %mode = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 1, !dbg !1036
  %0 = load i32, i32* %mode, align 8, !dbg !1036
  %idxprom = zext i32 %0 to i64, !dbg !1036
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1036
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1036
  %cmp = icmp eq i8 %1, 5, !dbg !1036
  br i1 %cmp, label %lor.end21, label %lor.lhs.false, !dbg !1036

lor.lhs.false:                                    ; preds = %entry
  %cmp6 = icmp eq i8 %1, 14, !dbg !1036
  br i1 %cmp6, label %lor.end21, label %lor.rhs, !dbg !1036

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp12 = icmp eq i8 %1, 7, !dbg !1036
  br i1 %cmp12, label %lor.end21, label %lor.rhs14, !dbg !1036

lor.rhs14:                                        ; preds = %lor.rhs
  %cmp19 = icmp eq i8 %1, 16, !dbg !1036
  %phitmp = zext i1 %cmp19 to i8, !dbg !1036
  br label %lor.end21, !dbg !1036

lor.end21:                                        ; preds = %lor.rhs, %lor.rhs14, %lor.lhs.false, %entry
  %2 = phi i8 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs14 ]
  call void @llvm.dbg.value(metadata i8 %2, metadata !1033, metadata !DIExpression()), !dbg !1035
  %arrayidx25 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !1037
  %3 = load i8, i8* %arrayidx25, align 1, !dbg !1037
  %conv26 = zext i8 %3 to i32, !dbg !1037
  %arrayidx29 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !1038
  %4 = load i8, i8* %arrayidx29, align 1, !dbg !1038
  %conv30 = zext i8 %4 to i32, !dbg !1038
  %add = add nuw nsw i32 %conv26, %conv30, !dbg !1039
  call void @llvm.dbg.value(metadata i32 %add, metadata !1034, metadata !DIExpression()), !dbg !1035
  %mode32 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !1040
  store i32 %0, i32* %mode32, align 8, !dbg !1041
  %5 = bitcast %struct.double_int* %tmp to i8*, !dbg !1042
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1042
  %6 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !1042
  %7 = load i64, i64* %6, align 8, !dbg !1042
  %8 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1042
  %9 = load i64, i64* %8, align 8, !dbg !1042
  %call = tail call { i64, i64 } @double_int_neg(i64 %7, i64 %9) #6, !dbg !1042
  %10 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1042
  %11 = extractvalue { i64, i64 } %call, 0, !dbg !1042
  store i64 %11, i64* %10, align 8, !dbg !1042
  %12 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1042
  %13 = extractvalue { i64, i64 } %call, 1, !dbg !1042
  store i64 %13, i64* %12, align 8, !dbg !1042
  %14 = bitcast %struct.fixed_value* %f to i8*, !dbg !1042
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !1042
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1042
  %15 = bitcast %struct.double_int* %tmp35 to i8*, !dbg !1043
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !1043
  %16 = xor i8 %2, 1, !dbg !1044
  %17 = zext i8 %16 to i32, !dbg !1044
  %add37 = add nuw nsw i32 %add, %17, !dbg !1045
  %18 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1043
  %19 = load i64, i64* %18, align 8, !dbg !1043
  %20 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1043
  %21 = load i64, i64* %20, align 8, !dbg !1043
  %call38 = tail call { i64, i64 } @double_int_ext(i64 %19, i64 %21, i32 %add37, i8 zeroext %2) #6, !dbg !1043
  %22 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp35, i64 0, i32 0, !dbg !1043
  %23 = extractvalue { i64, i64 } %call38, 0, !dbg !1043
  store i64 %23, i64* %22, align 8, !dbg !1043
  %24 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp35, i64 0, i32 1, !dbg !1043
  %25 = extractvalue { i64, i64 } %call38, 1, !dbg !1043
  store i64 %25, i64* %24, align 8, !dbg !1043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !1043
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !1043
  %tobool39 = icmp eq i8 %2, 0, !dbg !1046
  br i1 %tobool39, label %if.else55, label %if.then, !dbg !1048

if.then:                                          ; preds = %lor.end21
  %26 = load i64, i64* %18, align 8, !dbg !1049
  %cmp41 = icmp eq i64 %26, 0, !dbg !1052
  br i1 %cmp41, label %lor.lhs.false43, label %if.then47, !dbg !1053

lor.lhs.false43:                                  ; preds = %if.then
  %27 = load i64, i64* %20, align 8, !dbg !1054
  %cmp45 = icmp eq i64 %27, 0, !dbg !1055
  br i1 %cmp45, label %if.end92, label %if.then47, !dbg !1056

if.then47:                                        ; preds = %lor.lhs.false43, %if.then
  %tobool48 = icmp eq i8 %sat_p, 0, !dbg !1057
  br i1 %tobool48, label %if.end92, label %if.then49, !dbg !1060

if.then49:                                        ; preds = %if.then47
  store i64 0, i64* %18, align 8, !dbg !1061
  store i64 0, i64* %20, align 8, !dbg !1063
  br label %if.end92, !dbg !1064

if.else55:                                        ; preds = %lor.end21
  %28 = load i64, i64* %20, align 8, !dbg !1065
  %cmp58 = icmp eq i64 %28, 0, !dbg !1068
  br i1 %cmp58, label %land.lhs.true, label %land.lhs.true64, !dbg !1069

land.lhs.true:                                    ; preds = %if.else55
  %29 = load i64, i64* %18, align 8, !dbg !1070
  %cmp62 = icmp eq i64 %29, 0, !dbg !1071
  br i1 %cmp62, label %if.end92, label %land.lhs.true64, !dbg !1072

land.lhs.true64:                                  ; preds = %land.lhs.true, %if.else55
  %30 = load i64, i64* %8, align 8, !dbg !1073
  %cmp69 = icmp eq i64 %28, %30, !dbg !1074
  br i1 %cmp69, label %land.lhs.true71, label %if.end92, !dbg !1075

land.lhs.true71:                                  ; preds = %land.lhs.true64
  %31 = load i64, i64* %18, align 8, !dbg !1076
  %32 = load i64, i64* %6, align 8, !dbg !1077
  %cmp76 = icmp eq i64 %31, %32, !dbg !1078
  br i1 %cmp76, label %if.then78, label %if.end92, !dbg !1079

if.then78:                                        ; preds = %land.lhs.true71
  %tobool79 = icmp eq i8 %sat_p, 0, !dbg !1080
  br i1 %tobool79, label %if.end92, label %if.then80, !dbg !1083

if.then80:                                        ; preds = %if.then78
  store i64 -1, i64* %18, align 8, !dbg !1084
  store i64 -1, i64* %20, align 8, !dbg !1086
  %33 = bitcast %struct.double_int* %tmp86 to i8*, !dbg !1087
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #7, !dbg !1087
  %call88 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 %add, i8 zeroext 1) #6, !dbg !1087
  %34 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp86, i64 0, i32 0, !dbg !1087
  %35 = extractvalue { i64, i64 } %call88, 0, !dbg !1087
  store i64 %35, i64* %34, align 8, !dbg !1087
  %36 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp86, i64 0, i32 1, !dbg !1087
  %37 = extractvalue { i64, i64 } %call88, 1, !dbg !1087
  store i64 %37, i64* %36, align 8, !dbg !1087
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* nonnull align 8 %33, i64 16, i1 false), !dbg !1087
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #7, !dbg !1087
  br label %if.end92, !dbg !1088

if.end92:                                         ; preds = %if.then47, %lor.lhs.false43, %if.then78, %land.lhs.true, %land.lhs.true64, %land.lhs.true71, %if.then80, %if.then49
  %overflow_p.4 = phi i8 [ 0, %lor.lhs.false43 ], [ 0, %if.then49 ], [ 1, %if.then47 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true71 ], [ 0, %land.lhs.true64 ], [ 0, %if.then80 ], [ 1, %if.then78 ], !dbg !1089
  call void @llvm.dbg.value(metadata i8 %overflow_p.4, metadata !1032, metadata !DIExpression()), !dbg !1035
  ret i8 %overflow_p.4, !dbg !1090
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @do_fixed_add(%struct.fixed_value* %f, %struct.fixed_value* %a, %struct.fixed_value* %b, i8 zeroext %subtract_p, i8 zeroext %sat_p) unnamed_addr #4 !dbg !1091 {
entry:
  %temp = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %tmp35 = alloca %struct.double_int, align 8
  %tmp57 = alloca %struct.double_int, align 8
  %tmp138 = alloca %struct.double_int, align 8
  %tmp148 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !1095, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %struct.fixed_value* %a, metadata !1096, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %struct.fixed_value* %b, metadata !1097, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %subtract_p, metadata !1098, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !1099, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 0, metadata !1100, metadata !DIExpression()), !dbg !1113
  %0 = bitcast %struct.double_int* %temp to i8*, !dbg !1114
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !1114
  %tobool = icmp eq i8 %subtract_p, 0, !dbg !1115
  br i1 %tobool, label %if.else, label %if.then, !dbg !1117

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.double_int* %tmp to i8*, !dbg !1118
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !1118
  %2 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !1118
  %3 = load i64, i64* %2, align 8, !dbg !1118
  %4 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 1, !dbg !1118
  %5 = load i64, i64* %4, align 8, !dbg !1118
  %call = tail call { i64, i64 } @double_int_neg(i64 %3, i64 %5) #6, !dbg !1118
  %6 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1118
  %7 = extractvalue { i64, i64 } %call, 0, !dbg !1118
  store i64 %7, i64* %6, align 8, !dbg !1118
  %8 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1118
  %9 = extractvalue { i64, i64 } %call, 1, !dbg !1118
  store i64 %9, i64* %8, align 8, !dbg !1118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !1118
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !1118
  br label %if.end, !dbg !1119

if.else:                                          ; preds = %entry
  %10 = bitcast %struct.fixed_value* %b to i8*, !dbg !1120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %10, i64 16, i1 false), !dbg !1120
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mode = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 1, !dbg !1121
  %11 = load i32, i32* %mode, align 8, !dbg !1121
  %idxprom = zext i32 %11 to i64, !dbg !1121
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1121
  %12 = load i8, i8* %arrayidx, align 1, !dbg !1121
  %cmp = icmp eq i8 %12, 5, !dbg !1121
  br i1 %cmp, label %lor.end22, label %lor.lhs.false, !dbg !1121

lor.lhs.false:                                    ; preds = %if.end
  %cmp7 = icmp eq i8 %12, 14, !dbg !1121
  br i1 %cmp7, label %lor.end22, label %lor.rhs, !dbg !1121

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp13 = icmp eq i8 %12, 7, !dbg !1121
  br i1 %cmp13, label %lor.end22, label %lor.rhs15, !dbg !1121

lor.rhs15:                                        ; preds = %lor.rhs
  %cmp20 = icmp eq i8 %12, 16, !dbg !1121
  %phitmp = zext i1 %cmp20 to i8, !dbg !1121
  br label %lor.end22, !dbg !1121

lor.end22:                                        ; preds = %lor.rhs, %lor.rhs15, %lor.lhs.false, %if.end
  %13 = phi i8 [ 1, %lor.lhs.false ], [ 1, %if.end ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs15 ]
  call void @llvm.dbg.value(metadata i8 %13, metadata !1101, metadata !DIExpression()), !dbg !1113
  %arrayidx26 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !1122
  %14 = load i8, i8* %arrayidx26, align 1, !dbg !1122
  %conv27 = zext i8 %14 to i32, !dbg !1122
  %arrayidx30 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !1123
  %15 = load i8, i8* %arrayidx30, align 1, !dbg !1123
  %conv31 = zext i8 %15 to i32, !dbg !1123
  %add = add nuw nsw i32 %conv27, %conv31, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %add, metadata !1103, metadata !DIExpression()), !dbg !1113
  %mode33 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !1125
  store i32 %11, i32* %mode33, align 8, !dbg !1126
  %16 = bitcast %struct.double_int* %tmp35 to i8*, !dbg !1127
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !1127
  %17 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !1127
  %18 = load i64, i64* %17, align 8, !dbg !1127
  %19 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1127
  %20 = load i64, i64* %19, align 8, !dbg !1127
  %21 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp, i64 0, i32 0, !dbg !1127
  %22 = load i64, i64* %21, align 8, !dbg !1127
  %23 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp, i64 0, i32 1, !dbg !1127
  %24 = load i64, i64* %23, align 8, !dbg !1127
  %call37 = tail call { i64, i64 } @double_int_add(i64 %18, i64 %20, i64 %22, i64 %24) #6, !dbg !1127
  %25 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp35, i64 0, i32 0, !dbg !1127
  %26 = extractvalue { i64, i64 } %call37, 0, !dbg !1127
  store i64 %26, i64* %25, align 8, !dbg !1127
  %27 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp35, i64 0, i32 1, !dbg !1127
  %28 = extractvalue { i64, i64 } %call37, 1, !dbg !1127
  store i64 %28, i64* %27, align 8, !dbg !1127
  %29 = bitcast %struct.fixed_value* %f to i8*, !dbg !1127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !1127
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !1127
  %tobool38 = icmp eq i8 %13, 0, !dbg !1128
  %tobool40 = icmp ne i8 %subtract_p, 0, !dbg !1129
  br i1 %tobool38, label %if.else82, label %if.then39, !dbg !1130

if.then39:                                        ; preds = %lor.end22
  br i1 %tobool40, label %if.then41, label %if.else55, !dbg !1131

if.then41:                                        ; preds = %if.then39
  %30 = load i64, i64* %17, align 8, !dbg !1133
  %31 = load i64, i64* %19, align 8, !dbg !1133
  %32 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !1133
  %33 = load i64, i64* %32, align 8, !dbg !1133
  %34 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 1, !dbg !1133
  %35 = load i64, i64* %34, align 8, !dbg !1133
  %call44 = tail call i32 @double_int_cmp(i64 %30, i64 %31, i64 %33, i64 %35, i8 zeroext 1) #6, !dbg !1133
  %cmp45 = icmp eq i32 %call44, -1, !dbg !1137
  br i1 %cmp45, label %if.then47, label %if.end146, !dbg !1138

if.then47:                                        ; preds = %if.then41
  %tobool48 = icmp eq i8 %sat_p, 0, !dbg !1139
  br i1 %tobool48, label %if.end146, label %if.then49, !dbg !1142

if.then49:                                        ; preds = %if.then47
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1143
  store i64 0, i64* %high, align 8, !dbg !1145
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1146
  store i64 0, i64* %low, align 8, !dbg !1147
  br label %if.end146, !dbg !1148

if.else55:                                        ; preds = %if.then39
  %36 = bitcast %struct.double_int* %tmp57 to i8*, !dbg !1149
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %36) #7, !dbg !1149
  %37 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1149
  %38 = load i64, i64* %37, align 8, !dbg !1149
  %39 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1149
  %40 = load i64, i64* %39, align 8, !dbg !1149
  %call59 = tail call { i64, i64 } @double_int_ext(i64 %38, i64 %40, i32 %add, i8 zeroext 1) #6, !dbg !1149
  %41 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp57, i64 0, i32 0, !dbg !1149
  %42 = extractvalue { i64, i64 } %call59, 0, !dbg !1149
  store i64 %42, i64* %41, align 8, !dbg !1149
  %43 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp57, i64 0, i32 1, !dbg !1149
  %44 = extractvalue { i64, i64 } %call59, 1, !dbg !1149
  store i64 %44, i64* %43, align 8, !dbg !1149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* nonnull align 8 %36, i64 16, i1 false), !dbg !1149
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36) #7, !dbg !1149
  %45 = load i64, i64* %37, align 8, !dbg !1151
  %46 = load i64, i64* %39, align 8, !dbg !1151
  %47 = load i64, i64* %17, align 8, !dbg !1151
  %48 = load i64, i64* %19, align 8, !dbg !1151
  %call62 = tail call i32 @double_int_cmp(i64 %45, i64 %46, i64 %47, i64 %48, i8 zeroext 1) #6, !dbg !1151
  %cmp63 = icmp eq i32 %call62, -1, !dbg !1153
  br i1 %cmp63, label %if.then71, label %lor.lhs.false65, !dbg !1154

lor.lhs.false65:                                  ; preds = %if.else55
  %49 = load i64, i64* %37, align 8, !dbg !1155
  %50 = load i64, i64* %39, align 8, !dbg !1155
  %51 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !1155
  %52 = load i64, i64* %51, align 8, !dbg !1155
  %53 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 1, !dbg !1155
  %54 = load i64, i64* %53, align 8, !dbg !1155
  %call68 = tail call i32 @double_int_cmp(i64 %49, i64 %50, i64 %52, i64 %54, i8 zeroext 1) #6, !dbg !1155
  %cmp69 = icmp eq i32 %call68, -1, !dbg !1156
  br i1 %cmp69, label %if.then71, label %if.end146, !dbg !1157

if.then71:                                        ; preds = %lor.lhs.false65, %if.else55
  %tobool72 = icmp eq i8 %sat_p, 0, !dbg !1158
  br i1 %tobool72, label %if.end146, label %if.then73, !dbg !1161

if.then73:                                        ; preds = %if.then71
  store i64 -1, i64* %39, align 8, !dbg !1162
  store i64 -1, i64* %37, align 8, !dbg !1164
  br label %if.end146, !dbg !1165

if.else82:                                        ; preds = %lor.end22
  br i1 %tobool40, label %lor.lhs.false97, label %land.lhs.true, !dbg !1166

land.lhs.true:                                    ; preds = %if.else82
  %55 = load i64, i64* %17, align 8, !dbg !1167
  %56 = load i64, i64* %19, align 8, !dbg !1167
  %call85 = tail call fastcc i32 @get_fixed_sign_bit(i64 %55, i64 %56, i32 %add) #8, !dbg !1167
  %57 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !1168
  %58 = load i64, i64* %57, align 8, !dbg !1168
  %59 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 1, !dbg !1168
  %60 = load i64, i64* %59, align 8, !dbg !1168
  %call87 = tail call fastcc i32 @get_fixed_sign_bit(i64 %58, i64 %60, i32 %add) #8, !dbg !1168
  %cmp88 = icmp eq i32 %call85, %call87, !dbg !1169
  br i1 %cmp88, label %land.lhs.true90, label %lor.lhs.false97, !dbg !1170

land.lhs.true90:                                  ; preds = %land.lhs.true
  %61 = load i64, i64* %17, align 8, !dbg !1171
  %62 = load i64, i64* %19, align 8, !dbg !1171
  %call92 = tail call fastcc i32 @get_fixed_sign_bit(i64 %61, i64 %62, i32 %add) #8, !dbg !1171
  %63 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1172
  %64 = load i64, i64* %63, align 8, !dbg !1172
  %65 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1172
  %66 = load i64, i64* %65, align 8, !dbg !1172
  %call94 = tail call fastcc i32 @get_fixed_sign_bit(i64 %64, i64 %66, i32 %add) #8, !dbg !1172
  %cmp95 = icmp eq i32 %call92, %call94, !dbg !1173
  br i1 %cmp95, label %lor.lhs.false97, label %if.then114, !dbg !1174

lor.lhs.false97:                                  ; preds = %land.lhs.true90, %land.lhs.true, %if.else82
  br i1 %tobool, label %if.end146, label %land.lhs.true100, !dbg !1175

land.lhs.true100:                                 ; preds = %lor.lhs.false97
  %67 = load i64, i64* %17, align 8, !dbg !1176
  %68 = load i64, i64* %19, align 8, !dbg !1176
  %call102 = tail call fastcc i32 @get_fixed_sign_bit(i64 %67, i64 %68, i32 %add) #8, !dbg !1176
  %69 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !1177
  %70 = load i64, i64* %69, align 8, !dbg !1177
  %71 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 1, !dbg !1177
  %72 = load i64, i64* %71, align 8, !dbg !1177
  %call104 = tail call fastcc i32 @get_fixed_sign_bit(i64 %70, i64 %72, i32 %add) #8, !dbg !1177
  %cmp105 = icmp eq i32 %call102, %call104, !dbg !1178
  br i1 %cmp105, label %if.end146, label %land.lhs.true107, !dbg !1179

land.lhs.true107:                                 ; preds = %land.lhs.true100
  %73 = load i64, i64* %17, align 8, !dbg !1180
  %74 = load i64, i64* %19, align 8, !dbg !1180
  %call109 = tail call fastcc i32 @get_fixed_sign_bit(i64 %73, i64 %74, i32 %add) #8, !dbg !1180
  %75 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1181
  %76 = load i64, i64* %75, align 8, !dbg !1181
  %77 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1181
  %78 = load i64, i64* %77, align 8, !dbg !1181
  %call111 = tail call fastcc i32 @get_fixed_sign_bit(i64 %76, i64 %78, i32 %add) #8, !dbg !1181
  %cmp112 = icmp eq i32 %call109, %call111, !dbg !1182
  br i1 %cmp112, label %if.end146, label %if.then114, !dbg !1183

if.then114:                                       ; preds = %land.lhs.true90, %land.lhs.true107
  %tobool115 = icmp eq i8 %sat_p, 0, !dbg !1184
  br i1 %tobool115, label %if.end146, label %if.then116, !dbg !1185

if.then116:                                       ; preds = %if.then114
  %low118 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1186
  store i64 1, i64* %low118, align 8, !dbg !1187
  %high120 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1188
  store i64 0, i64* %high120, align 8, !dbg !1189
  %conv125 = zext i32 %add to i64, !dbg !1190
  tail call void @lshift_double(i64 1, i64 0, i64 %conv125, i32 128, i64* %low118, i64* nonnull %high120, i32 1) #6, !dbg !1191
  %79 = load i64, i64* %17, align 8, !dbg !1192
  %80 = load i64, i64* %19, align 8, !dbg !1192
  %call131 = tail call fastcc i32 @get_fixed_sign_bit(i64 %79, i64 %80, i32 %add) #8, !dbg !1192
  %cmp132 = icmp eq i32 %call131, 0, !dbg !1193
  br i1 %cmp132, label %if.then134, label %if.end146, !dbg !1194

if.then134:                                       ; preds = %if.then116
  %81 = bitcast %struct.double_int* %tmp138 to i8*, !dbg !1195
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %81) #7, !dbg !1195
  %call140 = tail call { i64, i64 } @double_int_neg(i64 1, i64 0) #6, !dbg !1196
  %82 = extractvalue { i64, i64 } %call140, 0, !dbg !1196
  %83 = extractvalue { i64, i64 } %call140, 1, !dbg !1196
  %84 = load i64, i64* %low118, align 8, !dbg !1195
  %85 = load i64, i64* %high120, align 8, !dbg !1195
  %call141 = tail call { i64, i64 } @double_int_add(i64 %84, i64 %85, i64 %82, i64 %83) #6, !dbg !1195
  %86 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp138, i64 0, i32 0, !dbg !1195
  %87 = extractvalue { i64, i64 } %call141, 0, !dbg !1195
  store i64 %87, i64* %86, align 8, !dbg !1195
  %88 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp138, i64 0, i32 1, !dbg !1195
  %89 = extractvalue { i64, i64 } %call141, 1, !dbg !1195
  store i64 %89, i64* %88, align 8, !dbg !1195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* nonnull align 8 %81, i64 16, i1 false), !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %81) #7, !dbg !1195
  br label %if.end146, !dbg !1197

if.end146:                                        ; preds = %if.then47, %if.then71, %if.then114, %land.lhs.true107, %land.lhs.true100, %lor.lhs.false97, %if.then116, %if.then134, %if.then49, %if.then41, %if.then73, %lor.lhs.false65
  %overflow_p.7 = phi i8 [ 0, %if.then41 ], [ 0, %if.then49 ], [ 1, %if.then47 ], [ 0, %lor.lhs.false65 ], [ 0, %if.then73 ], [ 1, %if.then71 ], [ 0, %land.lhs.true107 ], [ 0, %land.lhs.true100 ], [ 0, %lor.lhs.false97 ], [ 0, %if.then134 ], [ 0, %if.then116 ], [ 1, %if.then114 ], !dbg !1198
  call void @llvm.dbg.value(metadata i8 %overflow_p.7, metadata !1100, metadata !DIExpression()), !dbg !1113
  %90 = bitcast %struct.double_int* %tmp148 to i8*, !dbg !1199
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %90) #7, !dbg !1199
  %91 = xor i8 %13, 1, !dbg !1200
  %92 = zext i8 %91 to i32, !dbg !1200
  %add151 = add nuw nsw i32 %add, %92, !dbg !1201
  %93 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1199
  %94 = load i64, i64* %93, align 8, !dbg !1199
  %95 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1199
  %96 = load i64, i64* %95, align 8, !dbg !1199
  %call152 = tail call { i64, i64 } @double_int_ext(i64 %94, i64 %96, i32 %add151, i8 zeroext %13) #6, !dbg !1199
  %97 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp148, i64 0, i32 0, !dbg !1199
  %98 = extractvalue { i64, i64 } %call152, 0, !dbg !1199
  store i64 %98, i64* %97, align 8, !dbg !1199
  %99 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp148, i64 0, i32 1, !dbg !1199
  %100 = extractvalue { i64, i64 } %call152, 1, !dbg !1199
  store i64 %100, i64* %99, align 8, !dbg !1199
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* nonnull align 8 %90, i64 16, i1 false), !dbg !1199
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %90) #7, !dbg !1199
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !1202
  ret i8 %overflow_p.7, !dbg !1203
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @do_fixed_multiply(%struct.fixed_value* %f, %struct.fixed_value* %a, %struct.fixed_value* %b, i8 zeroext %sat_p) unnamed_addr #4 !dbg !1204 {
entry:
  %tmp = alloca %struct.double_int, align 8
  %high_high = alloca %struct.double_int, align 8
  %high_low = alloca %struct.double_int, align 8
  %low_high = alloca %struct.double_int, align 8
  %low_low = alloca %struct.double_int, align 8
  %r = alloca %struct.double_int, align 8
  %s = alloca %struct.double_int, align 8
  %tmp72 = alloca %struct.double_int, align 8
  %tmp74 = alloca %struct.double_int, align 8
  %tmp76 = alloca %struct.double_int, align 8
  %tmp78 = alloca %struct.double_int, align 8
  %tmp83 = alloca %struct.double_int, align 8
  %tmp100 = alloca %struct.double_int, align 8
  %tmp115 = alloca %struct.double_int, align 8
  %tmp120 = alloca %struct.double_int, align 8
  %tmp125 = alloca %struct.double_int, align 8
  %tmp133 = alloca %struct.double_int, align 8
  %tmp145 = alloca %struct.double_int, align 8
  %tmp235 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !1208, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata %struct.fixed_value* %a, metadata !1209, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata %struct.fixed_value* %b, metadata !1210, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !1211, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 0, metadata !1212, metadata !DIExpression()), !dbg !1230
  %mode = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 1, !dbg !1231
  %0 = load i32, i32* %mode, align 8, !dbg !1231
  %idxprom = zext i32 %0 to i64, !dbg !1231
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1231
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1231
  %cmp = icmp eq i8 %1, 5, !dbg !1231
  br i1 %cmp, label %lor.end21, label %lor.lhs.false, !dbg !1231

lor.lhs.false:                                    ; preds = %entry
  %cmp6 = icmp eq i8 %1, 14, !dbg !1231
  br i1 %cmp6, label %lor.end21, label %lor.rhs, !dbg !1231

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp12 = icmp eq i8 %1, 7, !dbg !1231
  br i1 %cmp12, label %lor.end21, label %lor.rhs14, !dbg !1231

lor.rhs14:                                        ; preds = %lor.rhs
  %cmp19 = icmp eq i8 %1, 16, !dbg !1231
  %phitmp = zext i1 %cmp19 to i8, !dbg !1231
  br label %lor.end21, !dbg !1231

lor.end21:                                        ; preds = %lor.rhs, %lor.rhs14, %lor.lhs.false, %entry
  %2 = phi i8 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs14 ]
  call void @llvm.dbg.value(metadata i8 %2, metadata !1213, metadata !DIExpression()), !dbg !1230
  %arrayidx25 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !1232
  %3 = load i8, i8* %arrayidx25, align 1, !dbg !1232
  %conv26 = zext i8 %3 to i32, !dbg !1232
  %arrayidx29 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !1233
  %4 = load i8, i8* %arrayidx29, align 1, !dbg !1233
  %conv30 = zext i8 %4 to i32, !dbg !1233
  %add = add nuw nsw i32 %conv26, %conv30, !dbg !1234
  call void @llvm.dbg.value(metadata i32 %add, metadata !1214, metadata !DIExpression()), !dbg !1230
  %mode32 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !1235
  store i32 %0, i32* %mode32, align 8, !dbg !1236
  %arrayidx35 = getelementptr inbounds [87 x i16], [87 x i16]* @mode_precision, i64 0, i64 %idxprom, !dbg !1237
  %5 = load i16, i16* %arrayidx35, align 2, !dbg !1237
  %cmp37 = icmp ult i16 %5, 65, !dbg !1238
  br i1 %cmp37, label %if.then, label %if.else, !dbg !1239

if.then:                                          ; preds = %lor.end21
  %6 = bitcast %struct.double_int* %tmp to i8*, !dbg !1240
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !1240
  %7 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !1240
  %8 = load i64, i64* %7, align 8, !dbg !1240
  %9 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1240
  %10 = load i64, i64* %9, align 8, !dbg !1240
  %11 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !1240
  %12 = load i64, i64* %11, align 8, !dbg !1240
  %13 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 1, !dbg !1240
  %14 = load i64, i64* %13, align 8, !dbg !1240
  %call = tail call { i64, i64 } @double_int_mul(i64 %8, i64 %10, i64 %12, i64 %14) #6, !dbg !1240
  %15 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1240
  %16 = extractvalue { i64, i64 } %call, 0, !dbg !1240
  store i64 %16, i64* %15, align 8, !dbg !1240
  %17 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1240
  %18 = extractvalue { i64, i64 } %call, 1, !dbg !1240
  store i64 %18, i64* %17, align 8, !dbg !1240
  %19 = bitcast %struct.fixed_value* %f to i8*, !dbg !1240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !1240
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1242
  %20 = load i64, i64* %low, align 8, !dbg !1242
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1243
  %21 = load i64, i64* %high, align 8, !dbg !1243
  %22 = load i32, i32* %mode32, align 8, !dbg !1244
  %idxprom44 = zext i32 %22 to i64, !dbg !1244
  %arrayidx45 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom44, !dbg !1244
  %23 = load i8, i8* %arrayidx45, align 1, !dbg !1244
  %conv46 = zext i8 %23 to i64, !dbg !1244
  %sub = sub nsw i64 0, %conv46, !dbg !1245
  %24 = xor i8 %2, 1, !dbg !1246
  %25 = zext i8 %24 to i32, !dbg !1246
  tail call void @lshift_double(i64 %20, i64 %21, i64 %sub, i32 128, i64* %low, i64* nonnull %high, i32 %25) #6, !dbg !1247
  %26 = load i32, i32* %mode32, align 8, !dbg !1248
  %data54 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1249
  %27 = load i64, i64* %low, align 8, !dbg !1250
  %28 = load i64, i64* %high, align 8, !dbg !1250
  %call55 = tail call fastcc zeroext i8 @fixed_saturate1(i32 %26, i64 %27, i64 %28, %struct.double_int* %data54, i8 zeroext %sat_p) #8, !dbg !1250
  call void @llvm.dbg.value(metadata i8 %call55, metadata !1212, metadata !DIExpression()), !dbg !1230
  br label %if.end233, !dbg !1251

if.else:                                          ; preds = %lor.end21
  %29 = bitcast %struct.double_int* %high_high to i8*, !dbg !1252
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #7, !dbg !1252
  %30 = bitcast %struct.double_int* %high_low to i8*, !dbg !1252
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #7, !dbg !1252
  %31 = bitcast %struct.double_int* %low_high to i8*, !dbg !1252
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #7, !dbg !1252
  %32 = bitcast %struct.double_int* %low_low to i8*, !dbg !1252
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #7, !dbg !1252
  %33 = bitcast %struct.double_int* %r to i8*, !dbg !1253
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #7, !dbg !1253
  %34 = bitcast %struct.double_int* %s to i8*, !dbg !1253
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34) #7, !dbg !1253
  call void @llvm.dbg.value(metadata i32 0, metadata !1229, metadata !DIExpression()), !dbg !1254
  %high57 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1255
  %35 = load i64, i64* %high57, align 8, !dbg !1255
  %low61 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !1256
  %36 = load i64, i64* %low61, align 8, !dbg !1256
  %high65 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 1, !dbg !1257
  %37 = load i64, i64* %high65, align 8, !dbg !1257
  %low69 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !1258
  %38 = load i64, i64* %low69, align 8, !dbg !1258
  %39 = bitcast %struct.double_int* %tmp72 to i8*, !dbg !1259
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %39) #7, !dbg !1259
  %call73 = tail call { i64, i64 } @double_int_mul(i64 %36, i64 0, i64 %38, i64 0) #6, !dbg !1259
  %40 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp72, i64 0, i32 0, !dbg !1259
  %41 = extractvalue { i64, i64 } %call73, 0, !dbg !1259
  store i64 %41, i64* %40, align 8, !dbg !1259
  %42 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp72, i64 0, i32 1, !dbg !1259
  %43 = extractvalue { i64, i64 } %call73, 1, !dbg !1259
  store i64 %43, i64* %42, align 8, !dbg !1259
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %32, i8* nonnull align 8 %39, i64 16, i1 false), !dbg !1259
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %39) #7, !dbg !1259
  %44 = bitcast %struct.double_int* %tmp74 to i8*, !dbg !1260
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44) #7, !dbg !1260
  %call75 = tail call { i64, i64 } @double_int_mul(i64 %36, i64 0, i64 %37, i64 0) #6, !dbg !1260
  %45 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp74, i64 0, i32 0, !dbg !1260
  %46 = extractvalue { i64, i64 } %call75, 0, !dbg !1260
  store i64 %46, i64* %45, align 8, !dbg !1260
  %47 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp74, i64 0, i32 1, !dbg !1260
  %48 = extractvalue { i64, i64 } %call75, 1, !dbg !1260
  store i64 %48, i64* %47, align 8, !dbg !1260
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %31, i8* nonnull align 8 %44, i64 16, i1 false), !dbg !1260
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #7, !dbg !1260
  %49 = bitcast %struct.double_int* %tmp76 to i8*, !dbg !1261
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #7, !dbg !1261
  %call77 = tail call { i64, i64 } @double_int_mul(i64 %35, i64 0, i64 %38, i64 0) #6, !dbg !1261
  %50 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp76, i64 0, i32 0, !dbg !1261
  %51 = extractvalue { i64, i64 } %call77, 0, !dbg !1261
  store i64 %51, i64* %50, align 8, !dbg !1261
  %52 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp76, i64 0, i32 1, !dbg !1261
  %53 = extractvalue { i64, i64 } %call77, 1, !dbg !1261
  store i64 %53, i64* %52, align 8, !dbg !1261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %30, i8* nonnull align 8 %49, i64 16, i1 false), !dbg !1261
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %49) #7, !dbg !1261
  %54 = bitcast %struct.double_int* %tmp78 to i8*, !dbg !1262
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %54) #7, !dbg !1262
  %call79 = tail call { i64, i64 } @double_int_mul(i64 %35, i64 0, i64 %37, i64 0) #6, !dbg !1262
  %55 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp78, i64 0, i32 0, !dbg !1262
  %56 = extractvalue { i64, i64 } %call79, 0, !dbg !1262
  store i64 %56, i64* %55, align 8, !dbg !1262
  %57 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp78, i64 0, i32 1, !dbg !1262
  %58 = extractvalue { i64, i64 } %call79, 1, !dbg !1262
  store i64 %58, i64* %57, align 8, !dbg !1262
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %29, i8* nonnull align 8 %54, i64 16, i1 false), !dbg !1262
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %54) #7, !dbg !1262
  %low80 = getelementptr inbounds %struct.double_int, %struct.double_int* %high_low, i64 0, i32 0, !dbg !1263
  %59 = load i64, i64* %low80, align 8, !dbg !1263
  %60 = bitcast %struct.double_int* %tmp83 to i8*, !dbg !1264
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #7, !dbg !1264
  %61 = getelementptr inbounds %struct.double_int, %struct.double_int* %low_low, i64 0, i32 0, !dbg !1264
  %62 = load i64, i64* %61, align 8, !dbg !1264
  %63 = getelementptr inbounds %struct.double_int, %struct.double_int* %low_low, i64 0, i32 1, !dbg !1264
  %64 = load i64, i64* %63, align 8, !dbg !1264
  %call84 = tail call { i64, i64 } @double_int_add(i64 %62, i64 %64, i64 0, i64 %59) #6, !dbg !1264
  %65 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp83, i64 0, i32 0, !dbg !1264
  %66 = extractvalue { i64, i64 } %call84, 0, !dbg !1264
  store i64 %66, i64* %65, align 8, !dbg !1264
  %67 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp83, i64 0, i32 1, !dbg !1264
  %68 = extractvalue { i64, i64 } %call84, 1, !dbg !1264
  store i64 %68, i64* %67, align 8, !dbg !1264
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %34, i8* nonnull align 8 %60, i64 16, i1 false), !dbg !1264
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #7, !dbg !1264
  %69 = getelementptr inbounds %struct.double_int, %struct.double_int* %s, i64 0, i32 0, !dbg !1265
  %70 = load i64, i64* %69, align 8, !dbg !1265
  %71 = getelementptr inbounds %struct.double_int, %struct.double_int* %s, i64 0, i32 1, !dbg !1265
  %72 = load i64, i64* %71, align 8, !dbg !1265
  %call85 = tail call i32 @double_int_cmp(i64 %70, i64 %72, i64 %62, i64 %64, i8 zeroext 1) #6, !dbg !1265
  %cmp86 = icmp eq i32 %call85, -1, !dbg !1267
  br i1 %cmp86, label %if.then92, label %lor.lhs.false88, !dbg !1268

lor.lhs.false88:                                  ; preds = %if.else
  %call89 = tail call i32 @double_int_cmp(i64 %70, i64 %72, i64 0, i64 %59, i8 zeroext 1) #6, !dbg !1269
  %cmp90 = icmp eq i32 %call89, -1, !dbg !1270
  br i1 %cmp90, label %if.then92, label %if.end, !dbg !1271

if.then92:                                        ; preds = %lor.lhs.false88, %if.else
  call void @llvm.dbg.value(metadata i32 1, metadata !1229, metadata !DIExpression()), !dbg !1254
  br label %if.end, !dbg !1272

if.end:                                           ; preds = %if.then92, %lor.lhs.false88
  %carry.0 = phi i32 [ 1, %if.then92 ], [ 0, %lor.lhs.false88 ], !dbg !1254
  call void @llvm.dbg.value(metadata i32 %carry.0, metadata !1229, metadata !DIExpression()), !dbg !1254
  %low97 = getelementptr inbounds %struct.double_int, %struct.double_int* %low_high, i64 0, i32 0, !dbg !1273
  %73 = load i64, i64* %low97, align 8, !dbg !1273
  %74 = bitcast %struct.double_int* %tmp100 to i8*, !dbg !1274
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %74) #7, !dbg !1274
  %call101 = tail call { i64, i64 } @double_int_add(i64 %70, i64 %72, i64 0, i64 %73) #6, !dbg !1274
  %75 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp100, i64 0, i32 0, !dbg !1274
  %76 = extractvalue { i64, i64 } %call101, 0, !dbg !1274
  store i64 %76, i64* %75, align 8, !dbg !1274
  %77 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp100, i64 0, i32 1, !dbg !1274
  %78 = extractvalue { i64, i64 } %call101, 1, !dbg !1274
  store i64 %78, i64* %77, align 8, !dbg !1274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %34, i8* nonnull align 8 %74, i64 16, i1 false), !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %74) #7, !dbg !1274
  %79 = load i64, i64* %69, align 8, !dbg !1275
  %80 = load i64, i64* %71, align 8, !dbg !1275
  %call102 = tail call i32 @double_int_cmp(i64 %79, i64 %80, i64 %70, i64 %72, i8 zeroext 1) #6, !dbg !1275
  %cmp103 = icmp eq i32 %call102, -1, !dbg !1277
  br i1 %cmp103, label %if.then109, label %lor.lhs.false105, !dbg !1278

lor.lhs.false105:                                 ; preds = %if.end
  %call106 = tail call i32 @double_int_cmp(i64 %79, i64 %80, i64 0, i64 %73, i8 zeroext 1) #6, !dbg !1279
  %cmp107 = icmp eq i32 %call106, -1, !dbg !1280
  br i1 %cmp107, label %if.then109, label %if.end111, !dbg !1281

if.then109:                                       ; preds = %lor.lhs.false105, %if.end
  %inc110 = add nuw nsw i32 %carry.0, 1, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %inc110, metadata !1229, metadata !DIExpression()), !dbg !1254
  br label %if.end111, !dbg !1283

if.end111:                                        ; preds = %if.then109, %lor.lhs.false105
  %carry.1 = phi i32 [ %inc110, %if.then109 ], [ %carry.0, %lor.lhs.false105 ], !dbg !1254
  call void @llvm.dbg.value(metadata i32 %carry.1, metadata !1229, metadata !DIExpression()), !dbg !1254
  %high112 = getelementptr inbounds %struct.double_int, %struct.double_int* %high_low, i64 0, i32 1, !dbg !1284
  %81 = load i64, i64* %high112, align 8, !dbg !1284
  %82 = bitcast %struct.double_int* %tmp115 to i8*, !dbg !1285
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %82) #7, !dbg !1285
  %83 = getelementptr inbounds %struct.double_int, %struct.double_int* %high_high, i64 0, i32 0, !dbg !1285
  %84 = load i64, i64* %83, align 8, !dbg !1285
  %85 = getelementptr inbounds %struct.double_int, %struct.double_int* %high_high, i64 0, i32 1, !dbg !1285
  %86 = load i64, i64* %85, align 8, !dbg !1285
  %call116 = tail call { i64, i64 } @double_int_add(i64 %84, i64 %86, i64 %81, i64 0) #6, !dbg !1285
  %87 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp115, i64 0, i32 0, !dbg !1285
  %88 = extractvalue { i64, i64 } %call116, 0, !dbg !1285
  store i64 %88, i64* %87, align 8, !dbg !1285
  %89 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp115, i64 0, i32 1, !dbg !1285
  %90 = extractvalue { i64, i64 } %call116, 1, !dbg !1285
  store i64 %90, i64* %89, align 8, !dbg !1285
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %33, i8* nonnull align 8 %82, i64 16, i1 false), !dbg !1285
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %82) #7, !dbg !1285
  %high117 = getelementptr inbounds %struct.double_int, %struct.double_int* %low_high, i64 0, i32 1, !dbg !1286
  %91 = load i64, i64* %high117, align 8, !dbg !1286
  %92 = bitcast %struct.double_int* %tmp120 to i8*, !dbg !1287
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %92) #7, !dbg !1287
  %93 = getelementptr inbounds %struct.double_int, %struct.double_int* %r, i64 0, i32 0, !dbg !1287
  %94 = load i64, i64* %93, align 8, !dbg !1287
  %95 = getelementptr inbounds %struct.double_int, %struct.double_int* %r, i64 0, i32 1, !dbg !1287
  %96 = load i64, i64* %95, align 8, !dbg !1287
  %call121 = tail call { i64, i64 } @double_int_add(i64 %94, i64 %96, i64 %91, i64 0) #6, !dbg !1287
  %97 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp120, i64 0, i32 0, !dbg !1287
  %98 = extractvalue { i64, i64 } %call121, 0, !dbg !1287
  store i64 %98, i64* %97, align 8, !dbg !1287
  %99 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp120, i64 0, i32 1, !dbg !1287
  %100 = extractvalue { i64, i64 } %call121, 1, !dbg !1287
  store i64 %100, i64* %99, align 8, !dbg !1287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %33, i8* nonnull align 8 %92, i64 16, i1 false), !dbg !1287
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %92) #7, !dbg !1287
  %conv122 = sext i32 %carry.1 to i64, !dbg !1288
  %101 = bitcast %struct.double_int* %tmp125 to i8*, !dbg !1289
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %101) #7, !dbg !1289
  %102 = load i64, i64* %93, align 8, !dbg !1289
  %103 = load i64, i64* %95, align 8, !dbg !1289
  %call126 = tail call { i64, i64 } @double_int_add(i64 %102, i64 %103, i64 %conv122, i64 0) #6, !dbg !1289
  %104 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp125, i64 0, i32 0, !dbg !1289
  %105 = extractvalue { i64, i64 } %call126, 0, !dbg !1289
  store i64 %105, i64* %104, align 8, !dbg !1289
  %106 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp125, i64 0, i32 1, !dbg !1289
  %107 = extractvalue { i64, i64 } %call126, 1, !dbg !1289
  store i64 %107, i64* %106, align 8, !dbg !1289
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %33, i8* nonnull align 8 %101, i64 16, i1 false), !dbg !1289
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %101) #7, !dbg !1289
  %cond = icmp eq i8 %2, 0, !dbg !1290
  br i1 %cond, label %land.lhs.true, label %if.end150, !dbg !1290

land.lhs.true:                                    ; preds = %if.end111
  %108 = load i64, i64* %high57, align 8, !dbg !1292
  %cmp130 = icmp slt i64 %108, 0, !dbg !1293
  br i1 %cmp130, label %if.then132, label %if.end137, !dbg !1294

if.then132:                                       ; preds = %land.lhs.true
  %109 = bitcast %struct.double_int* %tmp133 to i8*, !dbg !1295
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %109) #7, !dbg !1295
  %110 = load i64, i64* %low69, align 8, !dbg !1296
  %111 = load i64, i64* %high65, align 8, !dbg !1296
  %call135 = tail call { i64, i64 } @double_int_neg(i64 %110, i64 %111) #6, !dbg !1296
  %112 = extractvalue { i64, i64 } %call135, 0, !dbg !1296
  %113 = extractvalue { i64, i64 } %call135, 1, !dbg !1296
  %114 = load i64, i64* %93, align 8, !dbg !1295
  %115 = load i64, i64* %95, align 8, !dbg !1295
  %call136 = tail call { i64, i64 } @double_int_add(i64 %114, i64 %115, i64 %112, i64 %113) #6, !dbg !1295
  %116 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp133, i64 0, i32 0, !dbg !1295
  %117 = extractvalue { i64, i64 } %call136, 0, !dbg !1295
  store i64 %117, i64* %116, align 8, !dbg !1295
  %118 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp133, i64 0, i32 1, !dbg !1295
  %119 = extractvalue { i64, i64 } %call136, 1, !dbg !1295
  store i64 %119, i64* %118, align 8, !dbg !1295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %33, i8* nonnull align 8 %109, i64 16, i1 false), !dbg !1295
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %109) #7, !dbg !1295
  br label %if.end137, !dbg !1297

if.end137:                                        ; preds = %if.then132, %land.lhs.true
  br i1 true, label %land.lhs.true139, label %if.end137.if.end150_crit_edge, !dbg !1298

if.end137.if.end150_crit_edge:                    ; preds = %if.end137
  br label %if.end150, !dbg !1298

land.lhs.true139:                                 ; preds = %if.end137
  %120 = load i64, i64* %high65, align 8, !dbg !1300
  %cmp142 = icmp slt i64 %120, 0, !dbg !1301
  br i1 %cmp142, label %if.then144, label %if.end150, !dbg !1302

if.then144:                                       ; preds = %land.lhs.true139
  %121 = bitcast %struct.double_int* %tmp145 to i8*, !dbg !1303
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %121) #7, !dbg !1303
  %122 = load i64, i64* %low61, align 8, !dbg !1304
  %123 = load i64, i64* %high57, align 8, !dbg !1304
  %call148 = tail call { i64, i64 } @double_int_neg(i64 %122, i64 %123) #6, !dbg !1304
  %124 = extractvalue { i64, i64 } %call148, 0, !dbg !1304
  %125 = extractvalue { i64, i64 } %call148, 1, !dbg !1304
  %126 = load i64, i64* %93, align 8, !dbg !1303
  %127 = load i64, i64* %95, align 8, !dbg !1303
  %call149 = tail call { i64, i64 } @double_int_add(i64 %126, i64 %127, i64 %124, i64 %125) #6, !dbg !1303
  %128 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp145, i64 0, i32 0, !dbg !1303
  %129 = extractvalue { i64, i64 } %call149, 0, !dbg !1303
  store i64 %129, i64* %128, align 8, !dbg !1303
  %130 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp145, i64 0, i32 1, !dbg !1303
  %131 = extractvalue { i64, i64 } %call149, 1, !dbg !1303
  store i64 %131, i64* %130, align 8, !dbg !1303
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %33, i8* nonnull align 8 %121, i64 16, i1 false), !dbg !1303
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %121) #7, !dbg !1303
  br label %if.end150, !dbg !1305

if.end150:                                        ; preds = %if.end137.if.end150_crit_edge, %if.end111, %if.then144, %land.lhs.true139
  %132 = load i32, i32* %mode32, align 8, !dbg !1306
  %idxprom152 = zext i32 %132 to i64, !dbg !1306
  %arrayidx153 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom152, !dbg !1306
  %133 = load i8, i8* %arrayidx153, align 1, !dbg !1306
  %cmp155 = icmp eq i8 %133, -128, !dbg !1308
  br i1 %cmp155, label %if.then157, label %if.else176, !dbg !1309

if.then157:                                       ; preds = %if.end150
  %134 = load i64, i64* %93, align 8, !dbg !1310
  store i64 %134, i64* %69, align 8, !dbg !1312
  %135 = load i64, i64* %95, align 8, !dbg !1313
  store i64 %135, i64* %71, align 8, !dbg !1314
  br i1 %cond, label %if.else166, label %if.then163, !dbg !1315

if.then163:                                       ; preds = %if.then157
  br label %if.end169, !dbg !1316

if.else166:                                       ; preds = %if.then157
  br label %if.end169

if.end169:                                        ; preds = %if.else166, %if.then163
  %storemerge12 = phi i64 [ -1, %if.else166 ], [ 0, %if.then163 ], !dbg !1319
  %storemerge = phi i64 [ -1, %if.else166 ], [ 0, %if.then163 ], !dbg !1319
  %136 = phi i64 [ -1, %if.else166 ], [ 0, %if.then163 ]
  store i64 %storemerge12, i64* %93, align 8, !dbg !1319
  store i64 %storemerge, i64* %95, align 8, !dbg !1319
  %low172 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1320
  store i64 %134, i64* %low172, align 8, !dbg !1321
  %high175 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1322
  store i64 %135, i64* %high175, align 8, !dbg !1323
  %.pre10 = xor i8 %2, 1, !dbg !1324
  %.pre11 = zext i8 %.pre10 to i32, !dbg !1324
  br label %if.end229, !dbg !1325

if.else176:                                       ; preds = %if.end150
  %conv182 = zext i8 %133 to i64, !dbg !1326
  %sub183 = sub nsw i64 0, %conv182, !dbg !1328
  call void @lshift_double(i64 %79, i64 %80, i64 %sub183, i32 128, i64* nonnull %69, i64* nonnull %71, i32 0) #6, !dbg !1329
  %137 = load i64, i64* %93, align 8, !dbg !1330
  %138 = load i64, i64* %95, align 8, !dbg !1331
  %139 = load i32, i32* %mode32, align 8, !dbg !1332
  %idxprom190 = zext i32 %139 to i64, !dbg !1332
  %arrayidx191 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom190, !dbg !1332
  %140 = load i8, i8* %arrayidx191, align 1, !dbg !1332
  %conv192 = zext i8 %140 to i64, !dbg !1332
  %sub193 = sub nsw i64 128, %conv192, !dbg !1333
  %low196 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1334
  %high198 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1335
  call void @lshift_double(i64 %137, i64 %138, i64 %sub193, i32 128, i64* %low196, i64* nonnull %high198, i32 0) #6, !dbg !1336
  %141 = load i64, i64* %low196, align 8, !dbg !1337
  %142 = load i64, i64* %69, align 8, !dbg !1338
  %or = or i64 %141, %142, !dbg !1339
  store i64 %or, i64* %low196, align 8, !dbg !1340
  %143 = load i64, i64* %high198, align 8, !dbg !1341
  %144 = load i64, i64* %71, align 8, !dbg !1342
  %or207 = or i64 %143, %144, !dbg !1343
  store i64 %or207, i64* %high198, align 8, !dbg !1344
  store i64 %or, i64* %69, align 8, !dbg !1345
  store i64 %or207, i64* %71, align 8, !dbg !1346
  %145 = load i32, i32* %mode32, align 8, !dbg !1347
  %idxprom219 = zext i32 %145 to i64, !dbg !1347
  %arrayidx220 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom219, !dbg !1347
  %146 = load i8, i8* %arrayidx220, align 1, !dbg !1347
  %conv221 = zext i8 %146 to i64, !dbg !1347
  %sub222 = sub nsw i64 0, %conv221, !dbg !1348
  %147 = xor i8 %2, 1, !dbg !1349
  %148 = zext i8 %147 to i32, !dbg !1349
  call void @lshift_double(i64 %137, i64 %138, i64 %sub222, i32 128, i64* nonnull %93, i64* nonnull %95, i32 %148) #6, !dbg !1350
  %.pre = load i32, i32* %mode32, align 8, !dbg !1351
  %.pre1 = load i64, i64* %93, align 8, !dbg !1352
  %.pre2 = load i64, i64* %95, align 8, !dbg !1352
  %.pre3 = load i64, i64* %69, align 8, !dbg !1352
  %.pre4 = load i64, i64* %71, align 8, !dbg !1352
  br label %if.end229

if.end229:                                        ; preds = %if.else176, %if.end169
  %.pre6.pre-phi = phi i32 [ %148, %if.else176 ], [ %.pre11, %if.end169 ], !dbg !1324
  %149 = phi i64 [ %.pre4, %if.else176 ], [ %135, %if.end169 ], !dbg !1352
  %150 = phi i64 [ %.pre3, %if.else176 ], [ %134, %if.end169 ], !dbg !1352
  %151 = phi i64 [ %.pre2, %if.else176 ], [ %136, %if.end169 ], !dbg !1352
  %152 = phi i64 [ %.pre1, %if.else176 ], [ %136, %if.end169 ], !dbg !1352
  %153 = phi i32 [ %.pre, %if.else176 ], [ %132, %if.end169 ], !dbg !1351
  %data231 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1353
  %call232 = call fastcc zeroext i8 @fixed_saturate2(i32 %153, i64 %152, i64 %151, i64 %150, i64 %149, %struct.double_int* %data231, i8 zeroext %sat_p) #8, !dbg !1352
  call void @llvm.dbg.value(metadata i8 %call232, metadata !1212, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34) #7, !dbg !1354
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #7, !dbg !1354
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #7, !dbg !1354
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #7, !dbg !1354
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #7, !dbg !1354
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #7, !dbg !1354
  %.pre8 = bitcast %struct.fixed_value* %f to i8*, !dbg !1355
  br label %if.end233

if.end233:                                        ; preds = %if.end229, %if.then
  %.pre-phi9 = phi i8* [ %.pre8, %if.end229 ], [ %19, %if.then ], !dbg !1355
  %.pre-phi7 = phi i32 [ %.pre6.pre-phi, %if.end229 ], [ %25, %if.then ], !dbg !1324
  %overflow_p.0 = phi i8 [ %call232, %if.end229 ], [ %call55, %if.then ], !dbg !1356
  call void @llvm.dbg.value(metadata i8 %overflow_p.0, metadata !1212, metadata !DIExpression()), !dbg !1230
  %154 = bitcast %struct.double_int* %tmp235 to i8*, !dbg !1355
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %154) #7, !dbg !1355
  %add240 = add nuw nsw i32 %add, %.pre-phi7, !dbg !1357
  %155 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1355
  %156 = load i64, i64* %155, align 8, !dbg !1355
  %157 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1355
  %158 = load i64, i64* %157, align 8, !dbg !1355
  %call241 = call { i64, i64 } @double_int_ext(i64 %156, i64 %158, i32 %add240, i8 zeroext %2) #6, !dbg !1355
  %159 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp235, i64 0, i32 0, !dbg !1355
  %160 = extractvalue { i64, i64 } %call241, 0, !dbg !1355
  store i64 %160, i64* %159, align 8, !dbg !1355
  %161 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp235, i64 0, i32 1, !dbg !1355
  %162 = extractvalue { i64, i64 } %call241, 1, !dbg !1355
  store i64 %162, i64* %161, align 8, !dbg !1355
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %.pre-phi9, i8* nonnull align 8 %154, i64 16, i1 false), !dbg !1355
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %154) #7, !dbg !1355
  ret i8 %overflow_p.0, !dbg !1358
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @do_fixed_divide(%struct.fixed_value* %f, %struct.fixed_value* %a, %struct.fixed_value* %b, i8 zeroext %sat_p) unnamed_addr #4 !dbg !1359 {
entry:
  %tmp = alloca %struct.double_int, align 8
  %pos_a = alloca %struct.double_int, align 8
  %pos_b = alloca %struct.double_int, align 8
  %r = alloca %struct.double_int, align 8
  %s = alloca %struct.double_int, align 8
  %quo_r = alloca %struct.double_int, align 8
  %quo_s = alloca %struct.double_int, align 8
  %mod = alloca %struct.double_int, align 8
  %temp = alloca %struct.double_int, align 8
  %tmp61 = alloca %struct.double_int, align 8
  %tmp73 = alloca %struct.double_int, align 8
  %tmp140 = alloca %struct.double_int, align 8
  %tmp161 = alloca %struct.double_int, align 8
  %tmp171 = alloca %struct.double_int, align 8
  %tmp187 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !1361, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.fixed_value* %a, metadata !1362, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.fixed_value* %b, metadata !1363, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !1364, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8 0, metadata !1365, metadata !DIExpression()), !dbg !1384
  %mode = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 1, !dbg !1385
  %0 = load i32, i32* %mode, align 8, !dbg !1385
  %idxprom = zext i32 %0 to i64, !dbg !1385
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1385
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1385
  %cmp = icmp eq i8 %1, 5, !dbg !1385
  br i1 %cmp, label %lor.end21, label %lor.lhs.false, !dbg !1385

lor.lhs.false:                                    ; preds = %entry
  %cmp6 = icmp eq i8 %1, 14, !dbg !1385
  br i1 %cmp6, label %lor.end21, label %lor.rhs, !dbg !1385

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp12 = icmp eq i8 %1, 7, !dbg !1385
  br i1 %cmp12, label %lor.end21, label %lor.rhs14, !dbg !1385

lor.rhs14:                                        ; preds = %lor.rhs
  %cmp19 = icmp eq i8 %1, 16, !dbg !1385
  %phitmp = zext i1 %cmp19 to i8, !dbg !1385
  br label %lor.end21, !dbg !1385

lor.end21:                                        ; preds = %lor.rhs, %lor.rhs14, %lor.lhs.false, %entry
  %2 = phi i8 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs14 ]
  call void @llvm.dbg.value(metadata i8 %2, metadata !1366, metadata !DIExpression()), !dbg !1384
  %arrayidx25 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !1386
  %3 = load i8, i8* %arrayidx25, align 1, !dbg !1386
  %conv26 = zext i8 %3 to i32, !dbg !1386
  %arrayidx29 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !1387
  %4 = load i8, i8* %arrayidx29, align 1, !dbg !1387
  %conv30 = zext i8 %4 to i32, !dbg !1387
  %add = add nuw nsw i32 %conv26, %conv30, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %add, metadata !1367, metadata !DIExpression()), !dbg !1384
  %mode32 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !1389
  store i32 %0, i32* %mode32, align 8, !dbg !1390
  %arrayidx35 = getelementptr inbounds [87 x i16], [87 x i16]* @mode_precision, i64 0, i64 %idxprom, !dbg !1391
  %5 = load i16, i16* %arrayidx35, align 2, !dbg !1391
  %cmp37 = icmp ult i16 %5, 65, !dbg !1392
  br i1 %cmp37, label %if.then, label %if.else, !dbg !1393

if.then:                                          ; preds = %lor.end21
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !1394
  %6 = load i64, i64* %low, align 8, !dbg !1394
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1396
  %7 = load i64, i64* %high, align 8, !dbg !1396
  %conv43 = zext i8 %4 to i64, !dbg !1397
  %low45 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1398
  %high47 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1399
  %8 = xor i8 %2, 1, !dbg !1400
  %9 = zext i8 %8 to i32, !dbg !1400
  tail call void @lshift_double(i64 %6, i64 %7, i64 %conv43, i32 128, i64* %low45, i64* nonnull %high47, i32 %9) #6, !dbg !1401
  %10 = bitcast %struct.double_int* %tmp to i8*, !dbg !1402
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1402
  %11 = load i64, i64* %low45, align 8, !dbg !1402
  %12 = load i64, i64* %high47, align 8, !dbg !1402
  %13 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !1402
  %14 = load i64, i64* %13, align 8, !dbg !1402
  %15 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 1, !dbg !1402
  %16 = load i64, i64* %15, align 8, !dbg !1402
  %call = tail call { i64, i64 } @double_int_div(i64 %11, i64 %12, i64 %14, i64 %16, i8 zeroext %2, i32 67) #6, !dbg !1402
  %17 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1402
  %18 = extractvalue { i64, i64 } %call, 0, !dbg !1402
  store i64 %18, i64* %17, align 8, !dbg !1402
  %19 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1402
  %20 = extractvalue { i64, i64 } %call, 1, !dbg !1402
  store i64 %20, i64* %19, align 8, !dbg !1402
  %21 = bitcast %struct.fixed_value* %f to i8*, !dbg !1402
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !1402
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1402
  %22 = load i32, i32* %mode32, align 8, !dbg !1403
  %data53 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1404
  %23 = load i64, i64* %low45, align 8, !dbg !1405
  %24 = load i64, i64* %high47, align 8, !dbg !1405
  %call54 = tail call fastcc zeroext i8 @fixed_saturate1(i32 %22, i64 %23, i64 %24, %struct.double_int* %data53, i8 zeroext %sat_p) #8, !dbg !1405
  call void @llvm.dbg.value(metadata i8 %call54, metadata !1365, metadata !DIExpression()), !dbg !1384
  br label %if.end185, !dbg !1406

if.else:                                          ; preds = %lor.end21
  %25 = bitcast %struct.double_int* %pos_a to i8*, !dbg !1407
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #7, !dbg !1407
  %26 = bitcast %struct.double_int* %pos_b to i8*, !dbg !1407
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #7, !dbg !1407
  %27 = bitcast %struct.double_int* %r to i8*, !dbg !1407
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #7, !dbg !1407
  %28 = bitcast %struct.double_int* %s to i8*, !dbg !1407
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #7, !dbg !1407
  %29 = bitcast %struct.double_int* %quo_r to i8*, !dbg !1408
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #7, !dbg !1408
  %30 = bitcast %struct.double_int* %quo_s to i8*, !dbg !1408
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #7, !dbg !1408
  %31 = bitcast %struct.double_int* %mod to i8*, !dbg !1408
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #7, !dbg !1408
  %32 = bitcast %struct.double_int* %temp to i8*, !dbg !1408
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #7, !dbg !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1378, metadata !DIExpression()), !dbg !1409
  %tobool55 = icmp eq i8 %2, 0, !dbg !1410
  br i1 %tobool55, label %land.lhs.true, label %if.else64, !dbg !1412

land.lhs.true:                                    ; preds = %if.else
  %high57 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1413
  %33 = load i64, i64* %high57, align 8, !dbg !1413
  %cmp58 = icmp slt i64 %33, 0, !dbg !1414
  br i1 %cmp58, label %if.then60, label %if.else64, !dbg !1415

if.then60:                                        ; preds = %land.lhs.true
  %34 = bitcast %struct.double_int* %tmp61 to i8*, !dbg !1416
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34) #7, !dbg !1416
  %35 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !1416
  %36 = load i64, i64* %35, align 8, !dbg !1416
  %call63 = tail call { i64, i64 } @double_int_neg(i64 %36, i64 %33) #6, !dbg !1416
  %37 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp61, i64 0, i32 0, !dbg !1416
  %38 = extractvalue { i64, i64 } %call63, 0, !dbg !1416
  store i64 %38, i64* %37, align 8, !dbg !1416
  %39 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp61, i64 0, i32 1, !dbg !1416
  %40 = extractvalue { i64, i64 } %call63, 1, !dbg !1416
  store i64 %40, i64* %39, align 8, !dbg !1416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %25, i8* nonnull align 8 %34, i64 16, i1 false), !dbg !1416
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34) #7, !dbg !1416
  call void @llvm.dbg.value(metadata i32 1, metadata !1378, metadata !DIExpression()), !dbg !1409
  br label %if.end, !dbg !1418

if.else64:                                        ; preds = %if.else, %land.lhs.true
  %41 = bitcast %struct.fixed_value* %a to i8*, !dbg !1419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %25, i8* align 8 %41, i64 16, i1 false), !dbg !1419
  br label %if.end

if.end:                                           ; preds = %if.else64, %if.then60
  %num_of_neg.0 = phi i32 [ 0, %if.else64 ], [ 1, %if.then60 ], !dbg !1409
  call void @llvm.dbg.value(metadata i32 %num_of_neg.0, metadata !1378, metadata !DIExpression()), !dbg !1409
  br i1 %tobool55, label %land.lhs.true67, label %if.else77, !dbg !1420

land.lhs.true67:                                  ; preds = %if.end
  %high69 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 1, !dbg !1422
  %42 = load i64, i64* %high69, align 8, !dbg !1422
  %cmp70 = icmp slt i64 %42, 0, !dbg !1423
  br i1 %cmp70, label %if.then72, label %if.else77, !dbg !1424

if.then72:                                        ; preds = %land.lhs.true67
  %43 = bitcast %struct.double_int* %tmp73 to i8*, !dbg !1425
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43) #7, !dbg !1425
  %44 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !1425
  %45 = load i64, i64* %44, align 8, !dbg !1425
  %call75 = tail call { i64, i64 } @double_int_neg(i64 %45, i64 %42) #6, !dbg !1425
  %46 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp73, i64 0, i32 0, !dbg !1425
  %47 = extractvalue { i64, i64 } %call75, 0, !dbg !1425
  store i64 %47, i64* %46, align 8, !dbg !1425
  %48 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp73, i64 0, i32 1, !dbg !1425
  %49 = extractvalue { i64, i64 } %call75, 1, !dbg !1425
  store i64 %49, i64* %48, align 8, !dbg !1425
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %26, i8* nonnull align 8 %43, i64 16, i1 false), !dbg !1425
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43) #7, !dbg !1425
  %inc76 = add nuw nsw i32 %num_of_neg.0, 1, !dbg !1427
  call void @llvm.dbg.value(metadata i32 %inc76, metadata !1378, metadata !DIExpression()), !dbg !1409
  br label %if.end79, !dbg !1428

if.else77:                                        ; preds = %if.end, %land.lhs.true67
  %50 = bitcast %struct.fixed_value* %b to i8*, !dbg !1429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %26, i8* align 8 %50, i64 16, i1 false), !dbg !1429
  br label %if.end79

if.end79:                                         ; preds = %if.else77, %if.then72
  %num_of_neg.1 = phi i32 [ %num_of_neg.0, %if.else77 ], [ %inc76, %if.then72 ], !dbg !1409
  call void @llvm.dbg.value(metadata i32 %num_of_neg.1, metadata !1378, metadata !DIExpression()), !dbg !1409
  %51 = load i32, i32* %mode32, align 8, !dbg !1430
  %idxprom81 = zext i32 %51 to i64, !dbg !1430
  %arrayidx82 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom81, !dbg !1430
  %52 = load i8, i8* %arrayidx82, align 1, !dbg !1430
  %cmp84 = icmp eq i8 %52, -128, !dbg !1432
  br i1 %cmp84, label %if.then86, label %if.else89, !dbg !1433

if.then86:                                        ; preds = %if.end79
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %27, i8* nonnull align 8 %25, i64 16, i1 false), !dbg !1434
  %high87 = getelementptr inbounds %struct.double_int, %struct.double_int* %s, i64 0, i32 1, !dbg !1436
  store i64 0, i64* %high87, align 8, !dbg !1437
  %low88 = getelementptr inbounds %struct.double_int, %struct.double_int* %s, i64 0, i32 0, !dbg !1438
  store i64 0, i64* %low88, align 8, !dbg !1439
  br label %if.end108, !dbg !1440

if.else89:                                        ; preds = %if.end79
  %low90 = getelementptr inbounds %struct.double_int, %struct.double_int* %pos_a, i64 0, i32 0, !dbg !1441
  %53 = load i64, i64* %low90, align 8, !dbg !1441
  %high91 = getelementptr inbounds %struct.double_int, %struct.double_int* %pos_a, i64 0, i32 1, !dbg !1443
  %54 = load i64, i64* %high91, align 8, !dbg !1443
  %conv95 = zext i8 %52 to i64, !dbg !1444
  %low96 = getelementptr inbounds %struct.double_int, %struct.double_int* %s, i64 0, i32 0, !dbg !1445
  %high97 = getelementptr inbounds %struct.double_int, %struct.double_int* %s, i64 0, i32 1, !dbg !1446
  call void @lshift_double(i64 %53, i64 %54, i64 %conv95, i32 128, i64* nonnull %low96, i64* nonnull %high97, i32 0) #6, !dbg !1447
  %55 = load i32, i32* %mode32, align 8, !dbg !1448
  %idxprom101 = zext i32 %55 to i64, !dbg !1448
  %arrayidx102 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom101, !dbg !1448
  %56 = load i8, i8* %arrayidx102, align 1, !dbg !1448
  %conv103 = zext i8 %56 to i64, !dbg !1448
  %sub104 = add nsw i64 %conv103, -128, !dbg !1449
  %low106 = getelementptr inbounds %struct.double_int, %struct.double_int* %r, i64 0, i32 0, !dbg !1450
  %high107 = getelementptr inbounds %struct.double_int, %struct.double_int* %r, i64 0, i32 1, !dbg !1451
  call void @lshift_double(i64 %53, i64 %54, i64 %sub104, i32 128, i64* nonnull %low106, i64* nonnull %high107, i32 0) #6, !dbg !1452
  br label %if.end108

if.end108:                                        ; preds = %if.else89, %if.then86
  %low109 = getelementptr inbounds %struct.double_int, %struct.double_int* %r, i64 0, i32 0, !dbg !1453
  %57 = load i64, i64* %low109, align 8, !dbg !1453
  %high110 = getelementptr inbounds %struct.double_int, %struct.double_int* %r, i64 0, i32 1, !dbg !1454
  %58 = load i64, i64* %high110, align 8, !dbg !1454
  %low111 = getelementptr inbounds %struct.double_int, %struct.double_int* %pos_b, i64 0, i32 0, !dbg !1455
  %59 = load i64, i64* %low111, align 8, !dbg !1455
  %high112 = getelementptr inbounds %struct.double_int, %struct.double_int* %pos_b, i64 0, i32 1, !dbg !1456
  %60 = load i64, i64* %high112, align 8, !dbg !1456
  %low113 = getelementptr inbounds %struct.double_int, %struct.double_int* %quo_r, i64 0, i32 0, !dbg !1457
  %high114 = getelementptr inbounds %struct.double_int, %struct.double_int* %quo_r, i64 0, i32 1, !dbg !1458
  %low115 = getelementptr inbounds %struct.double_int, %struct.double_int* %mod, i64 0, i32 0, !dbg !1459
  %high116 = getelementptr inbounds %struct.double_int, %struct.double_int* %mod, i64 0, i32 1, !dbg !1460
  %call117 = call i32 @div_and_round_double(i32 67, i32 1, i64 %57, i64 %58, i64 %59, i64 %60, i64* nonnull %low113, i64* nonnull %high114, i64* nonnull %low115, i64* nonnull %high116) #6, !dbg !1461
  %high118 = getelementptr inbounds %struct.double_int, %struct.double_int* %quo_s, i64 0, i32 1, !dbg !1462
  store i64 0, i64* %high118, align 8, !dbg !1463
  %low119 = getelementptr inbounds %struct.double_int, %struct.double_int* %quo_s, i64 0, i32 0, !dbg !1464
  store i64 0, i64* %low119, align 8, !dbg !1465
  call void @llvm.dbg.value(metadata i32 0, metadata !1379, metadata !DIExpression()), !dbg !1409
  %high129 = getelementptr inbounds %struct.double_int, %struct.double_int* %s, i64 0, i32 1, !dbg !1466
  %61 = bitcast %struct.double_int* %tmp140 to i8*, !dbg !1468
  %62 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp140, i64 0, i32 0, !dbg !1468
  %63 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp140, i64 0, i32 1, !dbg !1468
  %low153 = getelementptr inbounds %struct.double_int, %struct.double_int* %s, i64 0, i32 0, !dbg !1468
  br label %for.cond, !dbg !1469

for.cond:                                         ; preds = %if.end152, %if.end108
  %i.0 = phi i32 [ 0, %if.end108 ], [ %inc157, %if.end152 ], !dbg !1470
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1379, metadata !DIExpression()), !dbg !1409
  %exitcond = icmp eq i32 %i.0, 128, !dbg !1471
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1472

for.body:                                         ; preds = %for.cond
  %64 = load i64, i64* %high116, align 8, !dbg !1473
  %65 = load i64, i64* %low115, align 8, !dbg !1474
  call void @lshift_double(i64 %65, i64 %64, i64 1, i32 128, i64* nonnull %low115, i64* nonnull %high116, i32 0) #6, !dbg !1475
  %66 = load i64, i64* %high129, align 8, !dbg !1476
  %cmp130 = icmp slt i64 %66, 0, !dbg !1477
  br i1 %cmp130, label %if.then132, label %if.end135, !dbg !1478

if.then132:                                       ; preds = %for.body
  %67 = load i64, i64* %low115, align 8, !dbg !1479
  %add134 = add i64 %67, 1, !dbg !1479
  store i64 %add134, i64* %low115, align 8, !dbg !1479
  br label %if.end135, !dbg !1480

if.end135:                                        ; preds = %if.then132, %for.body
  %68 = load i64, i64* %low119, align 8, !dbg !1481
  %69 = load i64, i64* %high118, align 8, !dbg !1482
  call void @lshift_double(i64 %68, i64 %69, i64 1, i32 128, i64* nonnull %low119, i64* nonnull %high118, i32 0) #6, !dbg !1483
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #7, !dbg !1484
  %call141 = call { i64, i64 } @double_int_neg(i64 %59, i64 %60) #6, !dbg !1485
  %70 = extractvalue { i64, i64 } %call141, 0, !dbg !1485
  %71 = extractvalue { i64, i64 } %call141, 1, !dbg !1485
  %72 = load i64, i64* %low115, align 8, !dbg !1484
  %73 = load i64, i64* %high116, align 8, !dbg !1484
  %call142 = call { i64, i64 } @double_int_add(i64 %72, i64 %73, i64 %70, i64 %71) #6, !dbg !1484
  %74 = extractvalue { i64, i64 } %call142, 0, !dbg !1484
  store i64 %74, i64* %62, align 8, !dbg !1484
  %75 = extractvalue { i64, i64 } %call142, 1, !dbg !1484
  store i64 %75, i64* %63, align 8, !dbg !1484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %32, i8* nonnull align 8 %61, i64 16, i1 false), !dbg !1484
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #7, !dbg !1484
  %cmp143 = icmp slt i64 %64, 0, !dbg !1486
  br i1 %cmp143, label %if.then149, label %lor.lhs.false145, !dbg !1488

lor.lhs.false145:                                 ; preds = %if.end135
  %76 = load i64, i64* %low115, align 8, !dbg !1489
  %77 = load i64, i64* %high116, align 8, !dbg !1489
  %call146 = call i32 @double_int_cmp(i64 %76, i64 %77, i64 %59, i64 %60, i8 zeroext 1) #6, !dbg !1489
  %cmp147 = icmp eq i32 %call146, -1, !dbg !1490
  br i1 %cmp147, label %if.end152, label %if.then149, !dbg !1491

if.then149:                                       ; preds = %lor.lhs.false145, %if.end135
  %78 = load i64, i64* %low119, align 8, !dbg !1492
  %add151 = add i64 %78, 1, !dbg !1492
  store i64 %add151, i64* %low119, align 8, !dbg !1492
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %31, i8* nonnull align 8 %32, i64 16, i1 false), !dbg !1494
  br label %if.end152, !dbg !1495

if.end152:                                        ; preds = %lor.lhs.false145, %if.then149
  %79 = load i64, i64* %low153, align 8, !dbg !1496
  %80 = load i64, i64* %high129, align 8, !dbg !1497
  call void @lshift_double(i64 %79, i64 %80, i64 1, i32 128, i64* nonnull %low153, i64* nonnull %high129, i32 0) #6, !dbg !1498
  %inc157 = add nuw nsw i32 %i.0, 1, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %inc157, metadata !1379, metadata !DIExpression()), !dbg !1409
  br label %for.cond, !dbg !1500, !llvm.loop !1501

for.end:                                          ; preds = %for.cond
  %cmp158 = icmp eq i32 %num_of_neg.1, 1, !dbg !1503
  br i1 %cmp158, label %if.then160, label %if.end180, !dbg !1505

if.then160:                                       ; preds = %for.end
  %81 = bitcast %struct.double_int* %tmp161 to i8*, !dbg !1506
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %81) #7, !dbg !1506
  %82 = load i64, i64* %low119, align 8, !dbg !1506
  %83 = load i64, i64* %high118, align 8, !dbg !1506
  %call162 = call { i64, i64 } @double_int_neg(i64 %82, i64 %83) #6, !dbg !1506
  %84 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp161, i64 0, i32 0, !dbg !1506
  %85 = extractvalue { i64, i64 } %call162, 0, !dbg !1506
  store i64 %85, i64* %84, align 8, !dbg !1506
  %86 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp161, i64 0, i32 1, !dbg !1506
  %87 = extractvalue { i64, i64 } %call162, 1, !dbg !1506
  store i64 %87, i64* %86, align 8, !dbg !1506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %30, i8* nonnull align 8 %81, i64 16, i1 false), !dbg !1506
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %81) #7, !dbg !1506
  %88 = load i64, i64* %high118, align 8, !dbg !1508
  %cmp164 = icmp eq i64 %88, 0, !dbg !1510
  br i1 %cmp164, label %land.lhs.true166, label %if.else173, !dbg !1511

land.lhs.true166:                                 ; preds = %if.then160
  %89 = load i64, i64* %low119, align 8, !dbg !1512
  %cmp168 = icmp eq i64 %89, 0, !dbg !1513
  br i1 %cmp168, label %if.then170, label %if.else173, !dbg !1514

if.then170:                                       ; preds = %land.lhs.true166
  %90 = bitcast %struct.double_int* %tmp171 to i8*, !dbg !1515
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %90) #7, !dbg !1515
  %91 = load i64, i64* %low113, align 8, !dbg !1515
  %92 = load i64, i64* %high114, align 8, !dbg !1515
  %call172 = call { i64, i64 } @double_int_neg(i64 %91, i64 %92) #6, !dbg !1515
  %93 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp171, i64 0, i32 0, !dbg !1515
  %94 = extractvalue { i64, i64 } %call172, 0, !dbg !1515
  store i64 %94, i64* %93, align 8, !dbg !1515
  %95 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp171, i64 0, i32 1, !dbg !1515
  %96 = extractvalue { i64, i64 } %call172, 1, !dbg !1515
  store i64 %96, i64* %95, align 8, !dbg !1515
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %29, i8* nonnull align 8 %90, i64 16, i1 false), !dbg !1515
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %90) #7, !dbg !1515
  br label %if.end180, !dbg !1516

if.else173:                                       ; preds = %land.lhs.true166, %if.then160
  %97 = load i64, i64* %low113, align 8, !dbg !1517
  %neg = xor i64 %97, -1, !dbg !1519
  store i64 %neg, i64* %low113, align 8, !dbg !1520
  %98 = load i64, i64* %high114, align 8, !dbg !1521
  %neg177 = xor i64 %98, -1, !dbg !1522
  store i64 %neg177, i64* %high114, align 8, !dbg !1523
  br label %if.end180

if.end180:                                        ; preds = %if.then170, %if.else173, %for.end
  %99 = bitcast %struct.fixed_value* %f to i8*, !dbg !1524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* nonnull align 8 %30, i64 16, i1 false), !dbg !1524
  %100 = load i32, i32* %mode32, align 8, !dbg !1525
  %data183 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1526
  %101 = load i64, i64* %low113, align 8, !dbg !1527
  %102 = load i64, i64* %high114, align 8, !dbg !1527
  %103 = load i64, i64* %low119, align 8, !dbg !1527
  %104 = load i64, i64* %high118, align 8, !dbg !1527
  %call184 = call fastcc zeroext i8 @fixed_saturate2(i32 %100, i64 %101, i64 %102, i64 %103, i64 %104, %struct.double_int* %data183, i8 zeroext %sat_p) #8, !dbg !1527
  call void @llvm.dbg.value(metadata i8 %call184, metadata !1365, metadata !DIExpression()), !dbg !1384
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #7, !dbg !1528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #7, !dbg !1528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #7, !dbg !1528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #7, !dbg !1528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #7, !dbg !1528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7, !dbg !1528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #7, !dbg !1528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #7, !dbg !1528
  %.pre = xor i8 %2, 1, !dbg !1529
  %.pre3 = zext i8 %.pre to i32, !dbg !1529
  br label %if.end185

if.end185:                                        ; preds = %if.end180, %if.then
  %.pre-phi5 = phi i8* [ %99, %if.end180 ], [ %21, %if.then ], !dbg !1530
  %.pre-phi4 = phi i32 [ %.pre3, %if.end180 ], [ %9, %if.then ], !dbg !1529
  %overflow_p.0 = phi i8 [ %call184, %if.end180 ], [ %call54, %if.then ], !dbg !1531
  call void @llvm.dbg.value(metadata i8 %overflow_p.0, metadata !1365, metadata !DIExpression()), !dbg !1384
  %105 = bitcast %struct.double_int* %tmp187 to i8*, !dbg !1530
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %105) #7, !dbg !1530
  %add192 = add nuw nsw i32 %add, %.pre-phi4, !dbg !1532
  %106 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1530
  %107 = load i64, i64* %106, align 8, !dbg !1530
  %108 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1530
  %109 = load i64, i64* %108, align 8, !dbg !1530
  %call193 = call { i64, i64 } @double_int_ext(i64 %107, i64 %109, i32 %add192, i8 zeroext %2) #6, !dbg !1530
  %110 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp187, i64 0, i32 0, !dbg !1530
  %111 = extractvalue { i64, i64 } %call193, 0, !dbg !1530
  store i64 %111, i64* %110, align 8, !dbg !1530
  %112 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp187, i64 0, i32 1, !dbg !1530
  %113 = extractvalue { i64, i64 } %call193, 1, !dbg !1530
  store i64 %113, i64* %112, align 8, !dbg !1530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %.pre-phi5, i8* nonnull align 8 %105, i64 16, i1 false), !dbg !1530
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %105) #7, !dbg !1530
  ret i8 %overflow_p.0, !dbg !1533
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @do_fixed_shift(%struct.fixed_value* %f, %struct.fixed_value* %a, %struct.fixed_value* %b, i8 zeroext %left_p, i8 zeroext %sat_p) unnamed_addr #4 !dbg !1534 {
entry:
  %temp_high = alloca %struct.double_int, align 8
  %temp_low = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %tmp112 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !1536, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata %struct.fixed_value* %a, metadata !1537, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata %struct.fixed_value* %b, metadata !1538, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %left_p, metadata !1539, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !1540, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 0, metadata !1541, metadata !DIExpression()), !dbg !1548
  %mode = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 1, !dbg !1549
  %0 = load i32, i32* %mode, align 8, !dbg !1549
  %idxprom = zext i32 %0 to i64, !dbg !1549
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1549
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1549
  %cmp = icmp eq i8 %1, 5, !dbg !1549
  br i1 %cmp, label %lor.end21, label %lor.lhs.false, !dbg !1549

lor.lhs.false:                                    ; preds = %entry
  %cmp6 = icmp eq i8 %1, 14, !dbg !1549
  br i1 %cmp6, label %lor.end21, label %lor.rhs, !dbg !1549

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp12 = icmp eq i8 %1, 7, !dbg !1549
  br i1 %cmp12, label %lor.end21, label %lor.rhs14, !dbg !1549

lor.rhs14:                                        ; preds = %lor.rhs
  %cmp19 = icmp eq i8 %1, 16, !dbg !1549
  %phitmp = zext i1 %cmp19 to i8, !dbg !1549
  br label %lor.end21, !dbg !1549

lor.end21:                                        ; preds = %lor.rhs, %lor.rhs14, %lor.lhs.false, %entry
  %2 = phi i8 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs14 ]
  call void @llvm.dbg.value(metadata i8 %2, metadata !1542, metadata !DIExpression()), !dbg !1548
  %arrayidx25 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !1550
  %3 = load i8, i8* %arrayidx25, align 1, !dbg !1550
  %conv26 = zext i8 %3 to i32, !dbg !1550
  %arrayidx29 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !1551
  %4 = load i8, i8* %arrayidx29, align 1, !dbg !1551
  %conv30 = zext i8 %4 to i32, !dbg !1551
  %add = add nuw nsw i32 %conv26, %conv30, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %add, metadata !1543, metadata !DIExpression()), !dbg !1548
  %mode32 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !1553
  store i32 %0, i32* %mode32, align 8, !dbg !1554
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %b, i64 0, i32 0, i32 0, !dbg !1555
  %5 = load i64, i64* %low, align 8, !dbg !1555
  %cmp33 = icmp eq i64 %5, 0, !dbg !1557
  br i1 %cmp33, label %if.then, label %if.end, !dbg !1558

if.then:                                          ; preds = %lor.end21
  %6 = bitcast %struct.fixed_value* %f to i8*, !dbg !1559
  %7 = bitcast %struct.fixed_value* %a to i8*, !dbg !1559
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false), !dbg !1559
  br label %cleanup, !dbg !1561

if.end:                                           ; preds = %lor.end21
  %arrayidx39 = getelementptr inbounds [87 x i16], [87 x i16]* @mode_precision, i64 0, i64 %idxprom, !dbg !1562
  %8 = load i16, i16* %arrayidx39, align 2, !dbg !1562
  %cmp41 = icmp ugt i16 %8, 64, !dbg !1563
  %tobool = icmp ne i8 %left_p, 0, !dbg !1564
  %or.cond = and i1 %cmp41, %tobool, !dbg !1565
  br i1 %or.cond, label %if.else, label %if.then44, !dbg !1565

if.then44:                                        ; preds = %if.end
  %low46 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !1566
  %9 = load i64, i64* %low46, align 8, !dbg !1566
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1568
  %10 = load i64, i64* %high, align 8, !dbg !1568
  %tobool49 = icmp eq i8 %left_p, 0, !dbg !1569
  %sub = sub i64 0, %5, !dbg !1569
  %cond = select i1 %tobool49, i64 %sub, i64 %5, !dbg !1569
  %low55 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1570
  %high57 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1571
  %11 = xor i8 %2, 1, !dbg !1572
  %12 = zext i8 %11 to i32, !dbg !1572
  tail call void @lshift_double(i64 %9, i64 %10, i64 %cond, i32 128, i64* %low55, i64* nonnull %high57, i32 %12) #6, !dbg !1573
  br i1 %tobool49, label %if.end110, label %if.then60, !dbg !1574

if.then60:                                        ; preds = %if.then44
  %13 = load i32, i32* %mode32, align 8, !dbg !1575
  %data63 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1577
  %14 = load i64, i64* %low55, align 8, !dbg !1578
  %15 = load i64, i64* %high57, align 8, !dbg !1578
  %call = tail call fastcc zeroext i8 @fixed_saturate1(i32 %13, i64 %14, i64 %15, %struct.double_int* %data63, i8 zeroext %sat_p) #8, !dbg !1578
  call void @llvm.dbg.value(metadata i8 %call, metadata !1541, metadata !DIExpression()), !dbg !1548
  br label %if.end110, !dbg !1579

if.else:                                          ; preds = %if.end
  %16 = bitcast %struct.double_int* %temp_high to i8*, !dbg !1580
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !1580
  %17 = bitcast %struct.double_int* %temp_low to i8*, !dbg !1580
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #7, !dbg !1580
  %cmp67 = icmp eq i64 %5, 128, !dbg !1581
  br i1 %cmp67, label %if.then69, label %if.else73, !dbg !1583

if.then69:                                        ; preds = %if.else
  %18 = bitcast %struct.fixed_value* %a to i8*, !dbg !1584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* align 8 %18, i64 16, i1 false), !dbg !1584
  %high71 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 1, !dbg !1586
  store i64 0, i64* %high71, align 8, !dbg !1587
  %low72 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 0, !dbg !1588
  store i64 0, i64* %low72, align 8, !dbg !1589
  br label %if.end94, !dbg !1590

if.else73:                                        ; preds = %if.else
  %low75 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !1591
  %19 = load i64, i64* %low75, align 8, !dbg !1591
  %high77 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1593
  %20 = load i64, i64* %high77, align 8, !dbg !1593
  %low80 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 0, !dbg !1594
  %high81 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 1, !dbg !1595
  %21 = xor i8 %2, 1, !dbg !1596
  %22 = zext i8 %21 to i32, !dbg !1596
  call void @lshift_double(i64 %19, i64 %20, i64 %5, i32 128, i64* nonnull %low80, i64* nonnull %high81, i32 %22) #6, !dbg !1597
  %23 = load i64, i64* %low75, align 8, !dbg !1598
  %24 = load i64, i64* %high77, align 8, !dbg !1599
  %25 = load i64, i64* %low, align 8, !dbg !1600
  %sub91 = add i64 %25, -128, !dbg !1601
  %low92 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 0, !dbg !1602
  %high93 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 1, !dbg !1603
  call void @lshift_double(i64 %23, i64 %24, i64 %sub91, i32 128, i64* nonnull %low92, i64* nonnull %high93, i32 0) #6, !dbg !1604
  br label %if.end94

if.end94:                                         ; preds = %if.else73, %if.then69
  %tobool95 = icmp eq i8 %2, 0, !dbg !1605
  br i1 %tobool95, label %land.lhs.true, label %if.end105, !dbg !1607

land.lhs.true:                                    ; preds = %if.end94
  %high97 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1608
  %26 = load i64, i64* %high97, align 8, !dbg !1608
  %cmp98 = icmp slt i64 %26, 0, !dbg !1609
  br i1 %cmp98, label %if.then100, label %if.end105, !dbg !1610

if.then100:                                       ; preds = %land.lhs.true
  %27 = bitcast %struct.double_int* %tmp to i8*, !dbg !1611
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #7, !dbg !1611
  %28 = load i64, i64* %low, align 8, !dbg !1612
  %conv103 = trunc i64 %28 to i32, !dbg !1613
  %29 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 0, !dbg !1611
  %30 = load i64, i64* %29, align 8, !dbg !1611
  %31 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 1, !dbg !1611
  %32 = load i64, i64* %31, align 8, !dbg !1611
  %call104 = call { i64, i64 } @double_int_ext(i64 %30, i64 %32, i32 %conv103, i8 zeroext 0) #6, !dbg !1611
  %33 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1611
  %34 = extractvalue { i64, i64 } %call104, 0, !dbg !1611
  store i64 %34, i64* %33, align 8, !dbg !1611
  %35 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1611
  %36 = extractvalue { i64, i64 } %call104, 1, !dbg !1611
  store i64 %36, i64* %35, align 8, !dbg !1611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* nonnull align 8 %27, i64 16, i1 false), !dbg !1611
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7, !dbg !1611
  br label %if.end105, !dbg !1614

if.end105:                                        ; preds = %if.end94, %if.then100, %land.lhs.true
  %37 = bitcast %struct.fixed_value* %f to i8*, !dbg !1615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* nonnull align 8 %17, i64 16, i1 false), !dbg !1615
  %38 = load i32, i32* %mode32, align 8, !dbg !1616
  %data108 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1617
  %39 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 0, !dbg !1618
  %40 = load i64, i64* %39, align 8, !dbg !1618
  %41 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 1, !dbg !1618
  %42 = load i64, i64* %41, align 8, !dbg !1618
  %43 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 0, !dbg !1618
  %44 = load i64, i64* %43, align 8, !dbg !1618
  %45 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 1, !dbg !1618
  %46 = load i64, i64* %45, align 8, !dbg !1618
  %call109 = call fastcc zeroext i8 @fixed_saturate2(i32 %38, i64 %40, i64 %42, i64 %44, i64 %46, %struct.double_int* %data108, i8 zeroext %sat_p) #8, !dbg !1618
  call void @llvm.dbg.value(metadata i8 %call109, metadata !1541, metadata !DIExpression()), !dbg !1548
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #7, !dbg !1619
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !1619
  %.pre = xor i8 %2, 1, !dbg !1620
  %.pre1 = zext i8 %.pre to i32, !dbg !1620
  br label %if.end110

if.end110:                                        ; preds = %if.then44, %if.then60, %if.end105
  %.pre-phi2 = phi i32 [ %12, %if.then44 ], [ %12, %if.then60 ], [ %.pre1, %if.end105 ], !dbg !1620
  %overflow_p.1 = phi i8 [ 0, %if.then44 ], [ %call, %if.then60 ], [ %call109, %if.end105 ], !dbg !1621
  call void @llvm.dbg.value(metadata i8 %overflow_p.1, metadata !1541, metadata !DIExpression()), !dbg !1548
  %47 = bitcast %struct.double_int* %tmp112 to i8*, !dbg !1622
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %47) #7, !dbg !1622
  %add117 = add nuw nsw i32 %add, %.pre-phi2, !dbg !1623
  %48 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1622
  %49 = load i64, i64* %48, align 8, !dbg !1622
  %50 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1622
  %51 = load i64, i64* %50, align 8, !dbg !1622
  %call118 = call { i64, i64 } @double_int_ext(i64 %49, i64 %51, i32 %add117, i8 zeroext %2) #6, !dbg !1622
  %52 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp112, i64 0, i32 0, !dbg !1622
  %53 = extractvalue { i64, i64 } %call118, 0, !dbg !1622
  store i64 %53, i64* %52, align 8, !dbg !1622
  %54 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp112, i64 0, i32 1, !dbg !1622
  %55 = extractvalue { i64, i64 } %call118, 1, !dbg !1622
  store i64 %55, i64* %54, align 8, !dbg !1622
  %56 = bitcast %struct.fixed_value* %f to i8*, !dbg !1622
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* nonnull align 8 %47, i64 16, i1 false), !dbg !1622
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %47) #7, !dbg !1622
  br label %cleanup, !dbg !1624

cleanup:                                          ; preds = %if.end110, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ %overflow_p.1, %if.end110 ], !dbg !1548
  ret i8 %retval.0, !dbg !1625
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @fixed_compare(i32 %icode, %struct.fixed_value* %op0, %struct.fixed_value* %op1) local_unnamed_addr #4 !dbg !1626 {
entry:
  call void @llvm.dbg.value(metadata i32 %icode, metadata !1630, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata %struct.fixed_value* %op0, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata %struct.fixed_value* %op1, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %icode, metadata !1633, metadata !DIExpression()), !dbg !1634
  %mode = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 1, !dbg !1635
  %0 = load i32, i32* %mode, align 8, !dbg !1635
  %mode1 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 1, !dbg !1635
  %1 = load i32, i32* %mode1, align 8, !dbg !1635
  %cmp = icmp eq i32 %0, %1, !dbg !1635
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1635

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 788, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1635
  br label %cond.end, !dbg !1635

cond.end:                                         ; preds = %entry, %cond.true
  switch i32 %icode, label %sw.default [
    i32 102, label %sw.bb
    i32 101, label %sw.bb3
    i32 97, label %sw.bb7
    i32 98, label %sw.bb39
    i32 99, label %sw.bb78
    i32 100, label %sw.bb117
  ], !dbg !1636

sw.bb:                                            ; preds = %cond.end
  %2 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 0, !dbg !1637
  %3 = load i64, i64* %2, align 8, !dbg !1637
  %4 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 1, !dbg !1637
  %5 = load i64, i64* %4, align 8, !dbg !1637
  %6 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 0, !dbg !1637
  %7 = load i64, i64* %6, align 8, !dbg !1637
  %8 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 1, !dbg !1637
  %9 = load i64, i64* %8, align 8, !dbg !1637
  %call = tail call fastcc zeroext i8 @double_int_equal_p(i64 %3, i64 %5, i64 %7, i64 %9) #8, !dbg !1637
  %tobool = icmp eq i8 %call, 0, !dbg !1639
  %conv = zext i1 %tobool to i8, !dbg !1639
  br label %cleanup, !dbg !1640

sw.bb3:                                           ; preds = %cond.end
  %10 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 0, !dbg !1641
  %11 = load i64, i64* %10, align 8, !dbg !1641
  %12 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 1, !dbg !1641
  %13 = load i64, i64* %12, align 8, !dbg !1641
  %14 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 0, !dbg !1641
  %15 = load i64, i64* %14, align 8, !dbg !1641
  %16 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 1, !dbg !1641
  %17 = load i64, i64* %16, align 8, !dbg !1641
  %call6 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %11, i64 %13, i64 %15, i64 %17) #8, !dbg !1641
  br label %cleanup, !dbg !1642

sw.bb7:                                           ; preds = %cond.end
  %18 = load i32, i32* %mode, align 8, !dbg !1643
  %idxprom = zext i32 %18 to i64, !dbg !1643
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1643
  %19 = load i8, i8* %arrayidx, align 1, !dbg !1643
  %cmp12 = icmp eq i8 %19, 5, !dbg !1643
  br i1 %cmp12, label %lor.end33, label %lor.lhs.false, !dbg !1643

lor.lhs.false:                                    ; preds = %sw.bb7
  %cmp18 = icmp eq i8 %19, 14, !dbg !1643
  br i1 %cmp18, label %lor.end33, label %lor.rhs, !dbg !1643

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp24 = icmp eq i8 %19, 7, !dbg !1643
  br i1 %cmp24, label %lor.end33, label %lor.rhs26, !dbg !1643

lor.rhs26:                                        ; preds = %lor.rhs
  %cmp31 = icmp eq i8 %19, 16, !dbg !1643
  %phitmp3 = zext i1 %cmp31 to i8, !dbg !1643
  br label %lor.end33, !dbg !1643

lor.end33:                                        ; preds = %lor.rhs, %lor.rhs26, %lor.lhs.false, %sw.bb7
  %20 = phi i8 [ 1, %lor.lhs.false ], [ 1, %sw.bb7 ], [ 1, %lor.rhs ], [ %phitmp3, %lor.rhs26 ]
  %21 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 0, !dbg !1644
  %22 = load i64, i64* %21, align 8, !dbg !1644
  %23 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 1, !dbg !1644
  %24 = load i64, i64* %23, align 8, !dbg !1644
  %25 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 0, !dbg !1644
  %26 = load i64, i64* %25, align 8, !dbg !1644
  %27 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 1, !dbg !1644
  %28 = load i64, i64* %27, align 8, !dbg !1644
  %call35 = tail call i32 @double_int_cmp(i64 %22, i64 %24, i64 %26, i64 %28, i8 zeroext %20) #6, !dbg !1644
  %cmp36 = icmp eq i32 %call35, -1, !dbg !1645
  %conv38 = zext i1 %cmp36 to i8, !dbg !1644
  br label %cleanup, !dbg !1646

sw.bb39:                                          ; preds = %cond.end
  %29 = load i32, i32* %mode, align 8, !dbg !1647
  %idxprom43 = zext i32 %29 to i64, !dbg !1647
  %arrayidx44 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom43, !dbg !1647
  %30 = load i8, i8* %arrayidx44, align 1, !dbg !1647
  %cmp46 = icmp eq i8 %30, 5, !dbg !1647
  br i1 %cmp46, label %lor.end71, label %lor.lhs.false48, !dbg !1647

lor.lhs.false48:                                  ; preds = %sw.bb39
  %cmp53 = icmp eq i8 %30, 14, !dbg !1647
  br i1 %cmp53, label %lor.end71, label %lor.rhs55, !dbg !1647

lor.rhs55:                                        ; preds = %lor.lhs.false48
  %cmp60 = icmp eq i8 %30, 7, !dbg !1647
  br i1 %cmp60, label %lor.end71, label %lor.rhs62, !dbg !1647

lor.rhs62:                                        ; preds = %lor.rhs55
  %cmp67 = icmp eq i8 %30, 16, !dbg !1647
  %phitmp2 = zext i1 %cmp67 to i8, !dbg !1647
  br label %lor.end71, !dbg !1647

lor.end71:                                        ; preds = %lor.rhs55, %lor.rhs62, %lor.lhs.false48, %sw.bb39
  %31 = phi i8 [ 1, %lor.lhs.false48 ], [ 1, %sw.bb39 ], [ 1, %lor.rhs55 ], [ %phitmp2, %lor.rhs62 ]
  %32 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 0, !dbg !1648
  %33 = load i64, i64* %32, align 8, !dbg !1648
  %34 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 1, !dbg !1648
  %35 = load i64, i64* %34, align 8, !dbg !1648
  %36 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 0, !dbg !1648
  %37 = load i64, i64* %36, align 8, !dbg !1648
  %38 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 1, !dbg !1648
  %39 = load i64, i64* %38, align 8, !dbg !1648
  %call74 = tail call i32 @double_int_cmp(i64 %33, i64 %35, i64 %37, i64 %39, i8 zeroext %31) #6, !dbg !1648
  %cmp75 = icmp ne i32 %call74, 1, !dbg !1649
  %conv77 = zext i1 %cmp75 to i8, !dbg !1648
  br label %cleanup, !dbg !1650

sw.bb78:                                          ; preds = %cond.end
  %40 = load i32, i32* %mode, align 8, !dbg !1651
  %idxprom82 = zext i32 %40 to i64, !dbg !1651
  %arrayidx83 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom82, !dbg !1651
  %41 = load i8, i8* %arrayidx83, align 1, !dbg !1651
  %cmp85 = icmp eq i8 %41, 5, !dbg !1651
  br i1 %cmp85, label %lor.end110, label %lor.lhs.false87, !dbg !1651

lor.lhs.false87:                                  ; preds = %sw.bb78
  %cmp92 = icmp eq i8 %41, 14, !dbg !1651
  br i1 %cmp92, label %lor.end110, label %lor.rhs94, !dbg !1651

lor.rhs94:                                        ; preds = %lor.lhs.false87
  %cmp99 = icmp eq i8 %41, 7, !dbg !1651
  br i1 %cmp99, label %lor.end110, label %lor.rhs101, !dbg !1651

lor.rhs101:                                       ; preds = %lor.rhs94
  %cmp106 = icmp eq i8 %41, 16, !dbg !1651
  %phitmp1 = zext i1 %cmp106 to i8, !dbg !1651
  br label %lor.end110, !dbg !1651

lor.end110:                                       ; preds = %lor.rhs94, %lor.rhs101, %lor.lhs.false87, %sw.bb78
  %42 = phi i8 [ 1, %lor.lhs.false87 ], [ 1, %sw.bb78 ], [ 1, %lor.rhs94 ], [ %phitmp1, %lor.rhs101 ]
  %43 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 0, !dbg !1652
  %44 = load i64, i64* %43, align 8, !dbg !1652
  %45 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 1, !dbg !1652
  %46 = load i64, i64* %45, align 8, !dbg !1652
  %47 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 0, !dbg !1652
  %48 = load i64, i64* %47, align 8, !dbg !1652
  %49 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 1, !dbg !1652
  %50 = load i64, i64* %49, align 8, !dbg !1652
  %call113 = tail call i32 @double_int_cmp(i64 %44, i64 %46, i64 %48, i64 %50, i8 zeroext %42) #6, !dbg !1652
  %cmp114 = icmp eq i32 %call113, 1, !dbg !1653
  %conv116 = zext i1 %cmp114 to i8, !dbg !1652
  br label %cleanup, !dbg !1654

sw.bb117:                                         ; preds = %cond.end
  %51 = load i32, i32* %mode, align 8, !dbg !1655
  %idxprom121 = zext i32 %51 to i64, !dbg !1655
  %arrayidx122 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom121, !dbg !1655
  %52 = load i8, i8* %arrayidx122, align 1, !dbg !1655
  %cmp124 = icmp eq i8 %52, 5, !dbg !1655
  br i1 %cmp124, label %lor.end149, label %lor.lhs.false126, !dbg !1655

lor.lhs.false126:                                 ; preds = %sw.bb117
  %cmp131 = icmp eq i8 %52, 14, !dbg !1655
  br i1 %cmp131, label %lor.end149, label %lor.rhs133, !dbg !1655

lor.rhs133:                                       ; preds = %lor.lhs.false126
  %cmp138 = icmp eq i8 %52, 7, !dbg !1655
  br i1 %cmp138, label %lor.end149, label %lor.rhs140, !dbg !1655

lor.rhs140:                                       ; preds = %lor.rhs133
  %cmp145 = icmp eq i8 %52, 16, !dbg !1655
  %phitmp = zext i1 %cmp145 to i8, !dbg !1655
  br label %lor.end149, !dbg !1655

lor.end149:                                       ; preds = %lor.rhs133, %lor.rhs140, %lor.lhs.false126, %sw.bb117
  %53 = phi i8 [ 1, %lor.lhs.false126 ], [ 1, %sw.bb117 ], [ 1, %lor.rhs133 ], [ %phitmp, %lor.rhs140 ]
  %54 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 0, !dbg !1656
  %55 = load i64, i64* %54, align 8, !dbg !1656
  %56 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op0, i64 0, i32 0, i32 1, !dbg !1656
  %57 = load i64, i64* %56, align 8, !dbg !1656
  %58 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 0, !dbg !1656
  %59 = load i64, i64* %58, align 8, !dbg !1656
  %60 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %op1, i64 0, i32 0, i32 1, !dbg !1656
  %61 = load i64, i64* %60, align 8, !dbg !1656
  %call152 = tail call i32 @double_int_cmp(i64 %55, i64 %57, i64 %59, i64 %61, i8 zeroext %53) #6, !dbg !1656
  %cmp153 = icmp ne i32 %call152, -1, !dbg !1657
  %conv155 = zext i1 %cmp153 to i8, !dbg !1656
  br label %cleanup, !dbg !1658

sw.default:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 815, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1659
  br label %cleanup, !dbg !1660

cleanup:                                          ; preds = %sw.default, %lor.end149, %lor.end110, %lor.end71, %lor.end33, %sw.bb3, %sw.bb
  %retval.0 = phi i8 [ 0, %sw.default ], [ %conv155, %lor.end149 ], [ %conv116, %lor.end110 ], [ %conv77, %lor.end71 ], [ %conv38, %lor.end33 ], [ %call6, %sw.bb3 ], [ %conv, %sw.bb ], !dbg !1634
  ret i8 %retval.0, !dbg !1661
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @double_int_equal_p(i64 %cst1.coerce0, i64 %cst1.coerce1, i64 %cst2.coerce0, i64 %cst2.coerce1) unnamed_addr #0 !dbg !1662 {
entry:
  %cmp = icmp eq i64 %cst1.coerce0, %cst2.coerce0, !dbg !1668
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1669

land.rhs:                                         ; preds = %entry
  %cmp3 = icmp eq i64 %cst1.coerce1, %cst2.coerce1, !dbg !1670
  %phitmp = zext i1 %cmp3 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !1671
}

declare dso_local i32 @double_int_cmp(i64, i64, i64, i64, i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @fixed_convert(%struct.fixed_value* %f, i32 %mode, %struct.fixed_value* %a, i8 zeroext %sat_p) local_unnamed_addr #4 !dbg !1672 {
entry:
  %temp_high = alloca %struct.double_int, align 8
  %temp_low = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %tmp214 = alloca %struct.double_int, align 8
  %temp = alloca %struct.double_int, align 8
  %tmp412 = alloca %struct.double_int, align 8
  %tmp436 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !1676, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1677, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata %struct.fixed_value* %a, metadata !1678, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !1679, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i8 0, metadata !1680, metadata !DIExpression()), !dbg !1688
  %mode1 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 1, !dbg !1689
  %0 = load i32, i32* %mode1, align 8, !dbg !1689
  %cmp = icmp eq i32 %0, %mode, !dbg !1691
  br i1 %cmp, label %if.then, label %if.end, !dbg !1692

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.fixed_value* %f to i8*, !dbg !1693
  %2 = bitcast %struct.fixed_value* %a to i8*, !dbg !1693
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false), !dbg !1693
  br label %cleanup, !dbg !1695

if.end:                                           ; preds = %entry
  %idxprom = zext i32 %mode to i64, !dbg !1696
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !1696
  %3 = load i8, i8* %arrayidx, align 1, !dbg !1696
  %idxprom3 = zext i32 %0 to i64, !dbg !1697
  %arrayidx4 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom3, !dbg !1697
  %4 = load i8, i8* %arrayidx4, align 1, !dbg !1697
  %cmp6 = icmp ugt i8 %3, %4, !dbg !1698
  br i1 %cmp6, label %if.then8, label %if.else234, !dbg !1699

if.then8:                                         ; preds = %if.end
  %5 = bitcast %struct.double_int* %temp_high to i8*, !dbg !1700
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1700
  %6 = bitcast %struct.double_int* %temp_low to i8*, !dbg !1700
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !1700
  %conv11 = zext i8 %3 to i32, !dbg !1701
  %conv15 = zext i8 %4 to i32, !dbg !1702
  %sub = sub nsw i32 %conv11, %conv15, !dbg !1703
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1685, metadata !DIExpression()), !dbg !1704
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !1705
  %7 = load i64, i64* %low, align 8, !dbg !1705
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1706
  %8 = load i64, i64* %high, align 8, !dbg !1706
  %conv17 = sext i32 %sub to i64, !dbg !1707
  %low18 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 0, !dbg !1708
  %high19 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 1, !dbg !1709
  %arrayidx22 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom3, !dbg !1710
  %9 = load i8, i8* %arrayidx22, align 1, !dbg !1710
  %cmp24 = icmp eq i8 %9, 4, !dbg !1710
  br i1 %cmp24, label %lor.end45, label %lor.lhs.false, !dbg !1710

lor.lhs.false:                                    ; preds = %if.then8
  %cmp30 = icmp eq i8 %9, 13, !dbg !1710
  br i1 %cmp30, label %lor.end45, label %lor.rhs, !dbg !1710

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp36 = icmp eq i8 %9, 6, !dbg !1710
  br i1 %cmp36, label %lor.end45, label %lor.rhs38, !dbg !1710

lor.rhs38:                                        ; preds = %lor.rhs
  %cmp43 = icmp eq i8 %9, 15, !dbg !1710
  br label %lor.end45, !dbg !1710

lor.end45:                                        ; preds = %lor.rhs, %lor.rhs38, %lor.lhs.false, %if.then8
  %10 = phi i1 [ true, %lor.lhs.false ], [ true, %if.then8 ], [ true, %lor.rhs ], [ %cmp43, %lor.rhs38 ]
  %lor.ext = zext i1 %10 to i32, !dbg !1710
  call void @lshift_double(i64 %7, i64 %8, i64 %conv17, i32 128, i64* nonnull %low18, i64* nonnull %high19, i32 %lor.ext) #6, !dbg !1711
  %11 = load i64, i64* %low, align 8, !dbg !1712
  %12 = load i64, i64* %high, align 8, !dbg !1713
  %sub50 = add nsw i32 %sub, -128, !dbg !1714
  %conv51 = sext i32 %sub50 to i64, !dbg !1715
  %low52 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 0, !dbg !1716
  %high53 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 1, !dbg !1717
  call void @lshift_double(i64 %11, i64 %12, i64 %conv51, i32 128, i64* nonnull %low52, i64* nonnull %high53, i32 0) #6, !dbg !1718
  %13 = load i32, i32* %mode1, align 8, !dbg !1719
  %idxprom55 = zext i32 %13 to i64, !dbg !1719
  %arrayidx56 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom55, !dbg !1719
  %14 = load i8, i8* %arrayidx56, align 1, !dbg !1719
  %cmp58 = icmp eq i8 %14, 4, !dbg !1719
  br i1 %cmp58, label %land.lhs.true, label %lor.lhs.false60, !dbg !1719

lor.lhs.false60:                                  ; preds = %lor.end45
  %cmp65 = icmp eq i8 %14, 13, !dbg !1719
  br i1 %cmp65, label %land.lhs.true, label %lor.lhs.false67, !dbg !1719

lor.lhs.false67:                                  ; preds = %lor.lhs.false60
  %cmp72 = icmp eq i8 %14, 6, !dbg !1719
  br i1 %cmp72, label %land.lhs.true, label %lor.lhs.false74, !dbg !1719

lor.lhs.false74:                                  ; preds = %lor.lhs.false67
  %cmp79 = icmp eq i8 %14, 15, !dbg !1719
  br i1 %cmp79, label %land.lhs.true, label %if.end86, !dbg !1721

land.lhs.true:                                    ; preds = %lor.lhs.false74, %lor.lhs.false67, %lor.lhs.false60, %lor.end45
  %15 = load i64, i64* %high, align 8, !dbg !1722
  %cmp83 = icmp slt i64 %15, 0, !dbg !1723
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !1724

if.then85:                                        ; preds = %land.lhs.true
  %16 = bitcast %struct.double_int* %tmp to i8*, !dbg !1725
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !1725
  %17 = load i64, i64* %low52, align 8, !dbg !1725
  %18 = load i64, i64* %high53, align 8, !dbg !1725
  %call = call { i64, i64 } @double_int_ext(i64 %17, i64 %18, i32 %sub, i8 zeroext 0) #6, !dbg !1725
  %19 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1725
  %20 = extractvalue { i64, i64 } %call, 0, !dbg !1725
  store i64 %20, i64* %19, align 8, !dbg !1725
  %21 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1725
  %22 = extractvalue { i64, i64 } %call, 1, !dbg !1725
  store i64 %22, i64* %21, align 8, !dbg !1725
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !1725
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !1725
  br label %if.end86, !dbg !1726

if.end86:                                         ; preds = %if.then85, %land.lhs.true, %lor.lhs.false74
  %mode87 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !1727
  store i32 %mode, i32* %mode87, align 8, !dbg !1728
  %23 = bitcast %struct.fixed_value* %f to i8*, !dbg !1729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !1729
  %24 = load i32, i32* %mode1, align 8, !dbg !1730
  %idxprom90 = zext i32 %24 to i64, !dbg !1730
  %arrayidx91 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom90, !dbg !1730
  %25 = load i8, i8* %arrayidx91, align 1, !dbg !1730
  %cmp93 = icmp eq i8 %25, 4, !dbg !1730
  br i1 %cmp93, label %lor.end118, label %lor.lhs.false95, !dbg !1730

lor.lhs.false95:                                  ; preds = %if.end86
  %cmp100 = icmp eq i8 %25, 13, !dbg !1730
  br i1 %cmp100, label %lor.end118, label %lor.rhs102, !dbg !1730

lor.rhs102:                                       ; preds = %lor.lhs.false95
  %cmp107 = icmp eq i8 %25, 6, !dbg !1730
  br i1 %cmp107, label %lor.end118, label %lor.rhs109, !dbg !1730

lor.rhs109:                                       ; preds = %lor.rhs102
  %cmp114 = icmp eq i8 %25, 15, !dbg !1730
  %phitmp4 = zext i1 %cmp114 to i32, !dbg !1730
  br label %lor.end118, !dbg !1730

lor.end118:                                       ; preds = %lor.rhs102, %lor.rhs109, %lor.lhs.false95, %if.end86
  %26 = phi i32 [ 1, %lor.lhs.false95 ], [ 1, %if.end86 ], [ 1, %lor.rhs102 ], [ %phitmp4, %lor.rhs109 ]
  %arrayidx122 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1732
  %27 = load i8, i8* %arrayidx122, align 1, !dbg !1732
  %cmp124 = icmp eq i8 %27, 4, !dbg !1732
  br i1 %cmp124, label %lor.end149, label %lor.lhs.false126, !dbg !1732

lor.lhs.false126:                                 ; preds = %lor.end118
  %cmp131 = icmp eq i8 %27, 13, !dbg !1732
  br i1 %cmp131, label %lor.end149, label %lor.rhs133, !dbg !1732

lor.rhs133:                                       ; preds = %lor.lhs.false126
  %cmp138 = icmp eq i8 %27, 6, !dbg !1732
  br i1 %cmp138, label %lor.end149, label %lor.rhs140, !dbg !1732

lor.rhs140:                                       ; preds = %lor.rhs133
  %cmp145 = icmp eq i8 %27, 15, !dbg !1732
  %phitmp5 = zext i1 %cmp145 to i32, !dbg !1732
  br label %lor.end149, !dbg !1732

lor.end149:                                       ; preds = %lor.rhs133, %lor.rhs140, %lor.lhs.false126, %lor.end118
  %28 = phi i32 [ 1, %lor.lhs.false126 ], [ 1, %lor.end118 ], [ 1, %lor.rhs133 ], [ %phitmp5, %lor.rhs140 ]
  %cmp151 = icmp eq i32 %26, %28, !dbg !1733
  br i1 %cmp151, label %if.then153, label %if.else, !dbg !1734

if.then153:                                       ; preds = %lor.end149
  %data155 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1735
  %29 = load i64, i64* %low52, align 8, !dbg !1736
  %30 = load i64, i64* %high53, align 8, !dbg !1736
  %31 = load i64, i64* %low18, align 8, !dbg !1736
  %32 = load i64, i64* %high19, align 8, !dbg !1736
  %call156 = call fastcc zeroext i8 @fixed_saturate2(i32 %mode, i64 %29, i64 %30, i64 %31, i64 %32, %struct.double_int* %data155, i8 zeroext %sat_p) #8, !dbg !1736
  call void @llvm.dbg.value(metadata i8 %call156, metadata !1680, metadata !DIExpression()), !dbg !1688
  br label %if.end233, !dbg !1737

if.else:                                          ; preds = %lor.end149
  br i1 %cmp93, label %if.then184, label %lor.lhs.false163, !dbg !1738

lor.lhs.false163:                                 ; preds = %if.else
  %cmp168 = icmp eq i8 %25, 13, !dbg !1738
  br i1 %cmp168, label %if.then184, label %lor.lhs.false170, !dbg !1738

lor.lhs.false170:                                 ; preds = %lor.lhs.false163
  %cmp175 = icmp eq i8 %25, 6, !dbg !1738
  br i1 %cmp175, label %if.then184, label %lor.lhs.false177, !dbg !1738

lor.lhs.false177:                                 ; preds = %lor.lhs.false170
  %cmp182 = icmp eq i8 %25, 15, !dbg !1738
  br i1 %cmp182, label %if.then184, label %if.else202, !dbg !1741

if.then184:                                       ; preds = %lor.lhs.false177, %lor.lhs.false170, %lor.lhs.false163, %if.else
  %33 = load i64, i64* %high, align 8, !dbg !1742
  %cmp187 = icmp slt i64 %33, 0, !dbg !1745
  br i1 %cmp187, label %if.then189, label %if.else197, !dbg !1746

if.then189:                                       ; preds = %if.then184
  %tobool = icmp eq i8 %sat_p, 0, !dbg !1747
  br i1 %tobool, label %if.end233, label %if.then190, !dbg !1750

if.then190:                                       ; preds = %if.then189
  %low192 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1751
  store i64 0, i64* %low192, align 8, !dbg !1753
  %high194 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1754
  store i64 0, i64* %high194, align 8, !dbg !1755
  br label %if.end233, !dbg !1756

if.else197:                                       ; preds = %if.then184
  %data199 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1757
  %34 = load i64, i64* %low52, align 8, !dbg !1758
  %35 = load i64, i64* %high53, align 8, !dbg !1758
  %36 = load i64, i64* %low18, align 8, !dbg !1758
  %37 = load i64, i64* %high19, align 8, !dbg !1758
  %call200 = call fastcc zeroext i8 @fixed_saturate2(i32 %mode, i64 %34, i64 %35, i64 %36, i64 %37, %struct.double_int* %data199, i8 zeroext %sat_p) #8, !dbg !1758
  call void @llvm.dbg.value(metadata i8 %call200, metadata !1680, metadata !DIExpression()), !dbg !1688
  br label %if.end233

if.else202:                                       ; preds = %lor.lhs.false177
  %38 = load i64, i64* %high53, align 8, !dbg !1759
  %cmp204 = icmp slt i64 %38, 0, !dbg !1762
  br i1 %cmp204, label %if.then206, label %if.else227, !dbg !1763

if.then206:                                       ; preds = %if.else202
  %tobool207 = icmp eq i8 %sat_p, 0, !dbg !1764
  br i1 %tobool207, label %if.end233, label %if.then208, !dbg !1767

if.then208:                                       ; preds = %if.then206
  %low210 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1768
  store i64 -1, i64* %low210, align 8, !dbg !1770
  %high212 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1771
  store i64 -1, i64* %high212, align 8, !dbg !1772
  %39 = bitcast %struct.double_int* %tmp214 to i8*, !dbg !1773
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %39) #7, !dbg !1773
  %arrayidx222 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !1774
  %40 = load i8, i8* %arrayidx222, align 1, !dbg !1774
  %conv223 = zext i8 %40 to i32, !dbg !1774
  %add = add nuw nsw i32 %conv11, %conv223, !dbg !1775
  %call224 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 %add, i8 zeroext 1) #6, !dbg !1773
  %41 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp214, i64 0, i32 0, !dbg !1773
  %42 = extractvalue { i64, i64 } %call224, 0, !dbg !1773
  store i64 %42, i64* %41, align 8, !dbg !1773
  %43 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp214, i64 0, i32 1, !dbg !1773
  %44 = extractvalue { i64, i64 } %call224, 1, !dbg !1773
  store i64 %44, i64* %43, align 8, !dbg !1773
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* nonnull align 8 %39, i64 16, i1 false), !dbg !1773
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %39) #7, !dbg !1773
  br label %if.end233, !dbg !1776

if.else227:                                       ; preds = %if.else202
  %data229 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1777
  %45 = load i64, i64* %low52, align 8, !dbg !1778
  %46 = load i64, i64* %low18, align 8, !dbg !1778
  %47 = load i64, i64* %high19, align 8, !dbg !1778
  %call230 = call fastcc zeroext i8 @fixed_saturate2(i32 %mode, i64 %45, i64 %38, i64 %46, i64 %47, %struct.double_int* %data229, i8 zeroext %sat_p) #8, !dbg !1778
  call void @llvm.dbg.value(metadata i8 %call230, metadata !1680, metadata !DIExpression()), !dbg !1688
  br label %if.end233

if.end233:                                        ; preds = %if.then189, %if.then206, %if.then190, %if.else197, %if.then208, %if.else227, %if.then153
  %overflow_p.5 = phi i8 [ %call156, %if.then153 ], [ %call200, %if.else197 ], [ 0, %if.then190 ], [ 1, %if.then189 ], [ %call230, %if.else227 ], [ 0, %if.then208 ], [ 1, %if.then206 ], !dbg !1688
  call void @llvm.dbg.value(metadata i8 %overflow_p.5, metadata !1680, metadata !DIExpression()), !dbg !1688
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !1779
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1779
  br label %if.end434, !dbg !1780

if.else234:                                       ; preds = %if.end
  %48 = bitcast %struct.double_int* %temp to i8*, !dbg !1781
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48) #7, !dbg !1781
  %low236 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 0, !dbg !1782
  %49 = load i64, i64* %low236, align 8, !dbg !1782
  %high238 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %a, i64 0, i32 0, i32 1, !dbg !1783
  %50 = load i64, i64* %high238, align 8, !dbg !1783
  %conv241 = zext i8 %3 to i64, !dbg !1784
  %conv245 = zext i8 %4 to i64, !dbg !1785
  %sub246 = sub nsw i64 %conv241, %conv245, !dbg !1786
  %low248 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp, i64 0, i32 0, !dbg !1787
  %high249 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp, i64 0, i32 1, !dbg !1788
  %arrayidx252 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom3, !dbg !1789
  %51 = load i8, i8* %arrayidx252, align 1, !dbg !1789
  %cmp254 = icmp eq i8 %51, 4, !dbg !1789
  br i1 %cmp254, label %lor.end279, label %lor.lhs.false256, !dbg !1789

lor.lhs.false256:                                 ; preds = %if.else234
  %cmp261 = icmp eq i8 %51, 13, !dbg !1789
  br i1 %cmp261, label %lor.end279, label %lor.rhs263, !dbg !1789

lor.rhs263:                                       ; preds = %lor.lhs.false256
  %cmp268 = icmp eq i8 %51, 6, !dbg !1789
  br i1 %cmp268, label %lor.end279, label %lor.rhs270, !dbg !1789

lor.rhs270:                                       ; preds = %lor.rhs263
  %cmp275 = icmp eq i8 %51, 15, !dbg !1789
  br label %lor.end279, !dbg !1789

lor.end279:                                       ; preds = %lor.rhs263, %lor.rhs270, %lor.lhs.false256, %if.else234
  %52 = phi i1 [ true, %lor.lhs.false256 ], [ true, %if.else234 ], [ true, %lor.rhs263 ], [ %cmp275, %lor.rhs270 ]
  %lor.ext280 = zext i1 %52 to i32, !dbg !1789
  call void @lshift_double(i64 %49, i64 %50, i64 %sub246, i32 128, i64* nonnull %low248, i64* nonnull %high249, i32 %lor.ext280) #6, !dbg !1790
  %mode281 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !1791
  store i32 %mode, i32* %mode281, align 8, !dbg !1792
  %53 = bitcast %struct.fixed_value* %f to i8*, !dbg !1793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* nonnull align 8 %48, i64 16, i1 false), !dbg !1793
  %54 = load i32, i32* %mode1, align 8, !dbg !1794
  %idxprom284 = zext i32 %54 to i64, !dbg !1794
  %arrayidx285 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom284, !dbg !1794
  %55 = load i8, i8* %arrayidx285, align 1, !dbg !1794
  %cmp287 = icmp eq i8 %55, 4, !dbg !1794
  br i1 %cmp287, label %lor.end312, label %lor.lhs.false289, !dbg !1794

lor.lhs.false289:                                 ; preds = %lor.end279
  %cmp294 = icmp eq i8 %55, 13, !dbg !1794
  br i1 %cmp294, label %lor.end312, label %lor.rhs296, !dbg !1794

lor.rhs296:                                       ; preds = %lor.lhs.false289
  %cmp301 = icmp eq i8 %55, 6, !dbg !1794
  br i1 %cmp301, label %lor.end312, label %lor.rhs303, !dbg !1794

lor.rhs303:                                       ; preds = %lor.rhs296
  %cmp308 = icmp eq i8 %55, 15, !dbg !1794
  %phitmp = zext i1 %cmp308 to i32, !dbg !1794
  br label %lor.end312, !dbg !1794

lor.end312:                                       ; preds = %lor.rhs296, %lor.rhs303, %lor.lhs.false289, %lor.end279
  %56 = phi i32 [ 1, %lor.lhs.false289 ], [ 1, %lor.end279 ], [ 1, %lor.rhs296 ], [ %phitmp, %lor.rhs303 ]
  %arrayidx316 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1796
  %57 = load i8, i8* %arrayidx316, align 1, !dbg !1796
  %cmp318 = icmp eq i8 %57, 4, !dbg !1796
  br i1 %cmp318, label %lor.end343, label %lor.lhs.false320, !dbg !1796

lor.lhs.false320:                                 ; preds = %lor.end312
  %cmp325 = icmp eq i8 %57, 13, !dbg !1796
  br i1 %cmp325, label %lor.end343, label %lor.rhs327, !dbg !1796

lor.rhs327:                                       ; preds = %lor.lhs.false320
  %cmp332 = icmp eq i8 %57, 6, !dbg !1796
  br i1 %cmp332, label %lor.end343, label %lor.rhs334, !dbg !1796

lor.rhs334:                                       ; preds = %lor.rhs327
  %cmp339 = icmp eq i8 %57, 15, !dbg !1796
  %phitmp1 = zext i1 %cmp339 to i32, !dbg !1796
  br label %lor.end343, !dbg !1796

lor.end343:                                       ; preds = %lor.rhs327, %lor.rhs334, %lor.lhs.false320, %lor.end312
  %58 = phi i32 [ 1, %lor.lhs.false320 ], [ 1, %lor.end312 ], [ 1, %lor.rhs327 ], [ %phitmp1, %lor.rhs334 ]
  %cmp345 = icmp eq i32 %56, %58, !dbg !1797
  br i1 %cmp345, label %if.then347, label %if.else352, !dbg !1798

if.then347:                                       ; preds = %lor.end343
  %data350 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1799
  %59 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1800
  %60 = load i64, i64* %59, align 8, !dbg !1800
  %61 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1800
  %62 = load i64, i64* %61, align 8, !dbg !1800
  %call351 = call fastcc zeroext i8 @fixed_saturate1(i32 %mode, i64 %60, i64 %62, %struct.double_int* %data350, i8 zeroext %sat_p) #8, !dbg !1800
  call void @llvm.dbg.value(metadata i8 %call351, metadata !1680, metadata !DIExpression()), !dbg !1688
  br label %if.end433, !dbg !1801

if.else352:                                       ; preds = %lor.end343
  br i1 %cmp287, label %if.then380, label %lor.lhs.false359, !dbg !1802

lor.lhs.false359:                                 ; preds = %if.else352
  %cmp364 = icmp eq i8 %55, 13, !dbg !1802
  br i1 %cmp364, label %if.then380, label %lor.lhs.false366, !dbg !1802

lor.lhs.false366:                                 ; preds = %lor.lhs.false359
  %cmp371 = icmp eq i8 %55, 6, !dbg !1802
  br i1 %cmp371, label %if.then380, label %lor.lhs.false373, !dbg !1802

lor.lhs.false373:                                 ; preds = %lor.lhs.false366
  %cmp378 = icmp eq i8 %55, 15, !dbg !1802
  br i1 %cmp378, label %if.then380, label %if.else400, !dbg !1805

if.then380:                                       ; preds = %lor.lhs.false373, %lor.lhs.false366, %lor.lhs.false359, %if.else352
  %63 = load i64, i64* %high238, align 8, !dbg !1806
  %cmp383 = icmp slt i64 %63, 0, !dbg !1809
  br i1 %cmp383, label %if.then385, label %if.else394, !dbg !1810

if.then385:                                       ; preds = %if.then380
  %tobool386 = icmp eq i8 %sat_p, 0, !dbg !1811
  br i1 %tobool386, label %if.end433, label %if.then387, !dbg !1814

if.then387:                                       ; preds = %if.then385
  %low389 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1815
  store i64 0, i64* %low389, align 8, !dbg !1817
  %high391 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1818
  store i64 0, i64* %high391, align 8, !dbg !1819
  br label %if.end433, !dbg !1820

if.else394:                                       ; preds = %if.then380
  %data397 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1821
  %64 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1822
  %65 = load i64, i64* %64, align 8, !dbg !1822
  %66 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1822
  %67 = load i64, i64* %66, align 8, !dbg !1822
  %call398 = call fastcc zeroext i8 @fixed_saturate1(i32 %mode, i64 %65, i64 %67, %struct.double_int* %data397, i8 zeroext %sat_p) #8, !dbg !1822
  call void @llvm.dbg.value(metadata i8 %call398, metadata !1680, metadata !DIExpression()), !dbg !1688
  br label %if.end433

if.else400:                                       ; preds = %lor.lhs.false373
  %68 = load i64, i64* %high249, align 8, !dbg !1823
  %cmp402 = icmp slt i64 %68, 0, !dbg !1826
  br i1 %cmp402, label %if.then404, label %if.else426, !dbg !1827

if.then404:                                       ; preds = %if.else400
  %tobool405 = icmp eq i8 %sat_p, 0, !dbg !1828
  br i1 %tobool405, label %if.end433, label %if.then406, !dbg !1831

if.then406:                                       ; preds = %if.then404
  %low408 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1832
  store i64 -1, i64* %low408, align 8, !dbg !1834
  %high410 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1835
  store i64 -1, i64* %high410, align 8, !dbg !1836
  %69 = bitcast %struct.double_int* %tmp412 to i8*, !dbg !1837
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #7, !dbg !1837
  %conv417 = zext i8 %3 to i32, !dbg !1838
  %arrayidx420 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !1839
  %70 = load i8, i8* %arrayidx420, align 1, !dbg !1839
  %conv421 = zext i8 %70 to i32, !dbg !1839
  %add422 = add nuw nsw i32 %conv417, %conv421, !dbg !1840
  %call423 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 %add422, i8 zeroext 1) #6, !dbg !1837
  %71 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp412, i64 0, i32 0, !dbg !1837
  %72 = extractvalue { i64, i64 } %call423, 0, !dbg !1837
  store i64 %72, i64* %71, align 8, !dbg !1837
  %73 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp412, i64 0, i32 1, !dbg !1837
  %74 = extractvalue { i64, i64 } %call423, 1, !dbg !1837
  store i64 %74, i64* %73, align 8, !dbg !1837
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* nonnull align 8 %69, i64 16, i1 false), !dbg !1837
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #7, !dbg !1837
  br label %if.end433, !dbg !1841

if.else426:                                       ; preds = %if.else400
  %data429 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !1842
  %75 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1843
  %76 = load i64, i64* %75, align 8, !dbg !1843
  %77 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1843
  %78 = load i64, i64* %77, align 8, !dbg !1843
  %call430 = call fastcc zeroext i8 @fixed_saturate1(i32 %mode, i64 %76, i64 %78, %struct.double_int* %data429, i8 zeroext %sat_p) #8, !dbg !1843
  call void @llvm.dbg.value(metadata i8 %call430, metadata !1680, metadata !DIExpression()), !dbg !1688
  br label %if.end433

if.end433:                                        ; preds = %if.then385, %if.then404, %if.then387, %if.else394, %if.then406, %if.else426, %if.then347
  %overflow_p.11 = phi i8 [ %call351, %if.then347 ], [ %call398, %if.else394 ], [ 0, %if.then387 ], [ 1, %if.then385 ], [ %call430, %if.else426 ], [ 0, %if.then406 ], [ 1, %if.then404 ], !dbg !1688
  call void @llvm.dbg.value(metadata i8 %overflow_p.11, metadata !1680, metadata !DIExpression()), !dbg !1688
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48) #7, !dbg !1844
  br label %if.end434

if.end434:                                        ; preds = %if.end433, %if.end233
  %overflow_p.12 = phi i8 [ %overflow_p.5, %if.end233 ], [ %overflow_p.11, %if.end433 ], !dbg !1845
  call void @llvm.dbg.value(metadata i8 %overflow_p.12, metadata !1680, metadata !DIExpression()), !dbg !1688
  %79 = bitcast %struct.double_int* %tmp436 to i8*, !dbg !1846
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %79) #7, !dbg !1846
  %mode438 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !1847
  %80 = load i32, i32* %mode438, align 8, !dbg !1847
  %idxprom439 = zext i32 %80 to i64, !dbg !1847
  %arrayidx440 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom439, !dbg !1847
  %81 = load i8, i8* %arrayidx440, align 1, !dbg !1847
  %cmp442 = icmp eq i8 %81, 4, !dbg !1847
  br i1 %cmp442, label %lor.end467, label %lor.lhs.false444, !dbg !1847

lor.lhs.false444:                                 ; preds = %if.end434
  %cmp449 = icmp eq i8 %81, 13, !dbg !1847
  br i1 %cmp449, label %lor.end467, label %lor.rhs451, !dbg !1847

lor.rhs451:                                       ; preds = %lor.lhs.false444
  %cmp456 = icmp eq i8 %81, 6, !dbg !1847
  br i1 %cmp456, label %lor.end467, label %lor.rhs458, !dbg !1847

lor.rhs458:                                       ; preds = %lor.rhs451
  %cmp463 = icmp eq i8 %81, 15, !dbg !1847
  %phitmp2 = zext i1 %cmp463 to i32, !dbg !1847
  br label %lor.end467, !dbg !1847

lor.end467:                                       ; preds = %lor.rhs451, %lor.rhs458, %lor.lhs.false444, %if.end434
  %82 = phi i32 [ 1, %lor.lhs.false444 ], [ 1, %if.end434 ], [ 1, %lor.rhs451 ], [ %phitmp2, %lor.rhs458 ]
  %arrayidx471 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom439, !dbg !1848
  %83 = load i8, i8* %arrayidx471, align 1, !dbg !1848
  %conv472 = zext i8 %83 to i32, !dbg !1848
  %add473 = add nuw nsw i32 %82, %conv472, !dbg !1849
  %arrayidx476 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom439, !dbg !1850
  %84 = load i8, i8* %arrayidx476, align 1, !dbg !1850
  %conv477 = zext i8 %84 to i32, !dbg !1850
  %add478 = add nuw nsw i32 %add473, %conv477, !dbg !1851
  %cmp483 = icmp eq i8 %81, 5, !dbg !1852
  br i1 %cmp483, label %lor.end508, label %lor.lhs.false485, !dbg !1852

lor.lhs.false485:                                 ; preds = %lor.end467
  %cmp490 = icmp eq i8 %81, 14, !dbg !1852
  br i1 %cmp490, label %lor.end508, label %lor.rhs492, !dbg !1852

lor.rhs492:                                       ; preds = %lor.lhs.false485
  %cmp497 = icmp eq i8 %81, 7, !dbg !1852
  br i1 %cmp497, label %lor.end508, label %lor.rhs499, !dbg !1852

lor.rhs499:                                       ; preds = %lor.rhs492
  %cmp504 = icmp eq i8 %81, 16, !dbg !1852
  %phitmp3 = zext i1 %cmp504 to i8, !dbg !1852
  br label %lor.end508, !dbg !1852

lor.end508:                                       ; preds = %lor.rhs492, %lor.rhs499, %lor.lhs.false485, %lor.end467
  %85 = phi i8 [ 1, %lor.lhs.false485 ], [ 1, %lor.end467 ], [ 1, %lor.rhs492 ], [ %phitmp3, %lor.rhs499 ]
  %86 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !1846
  %87 = load i64, i64* %86, align 8, !dbg !1846
  %88 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !1846
  %89 = load i64, i64* %88, align 8, !dbg !1846
  %call511 = call { i64, i64 } @double_int_ext(i64 %87, i64 %89, i32 %add478, i8 zeroext %85) #6, !dbg !1846
  %90 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp436, i64 0, i32 0, !dbg !1846
  %91 = extractvalue { i64, i64 } %call511, 0, !dbg !1846
  store i64 %91, i64* %90, align 8, !dbg !1846
  %92 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp436, i64 0, i32 1, !dbg !1846
  %93 = extractvalue { i64, i64 } %call511, 1, !dbg !1846
  store i64 %93, i64* %92, align 8, !dbg !1846
  %94 = bitcast %struct.fixed_value* %f to i8*, !dbg !1846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* nonnull align 8 %79, i64 16, i1 false), !dbg !1846
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %79) #7, !dbg !1846
  br label %cleanup, !dbg !1853

cleanup:                                          ; preds = %lor.end508, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ %overflow_p.12, %lor.end508 ], !dbg !1688
  ret i8 %retval.0, !dbg !1854
}

declare dso_local void @lshift_double(i64, i64, i64, i32, i64*, i64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @fixed_saturate2(i32 %mode, i64 %a_high.coerce0, i64 %a_high.coerce1, i64 %a_low.coerce0, i64 %a_low.coerce1, %struct.double_int* %f, i8 zeroext %sat_p) unnamed_addr #4 !dbg !1855 {
entry:
  %max_s = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %max_s44 = alloca %struct.double_int, align 8
  %min_s = alloca %struct.double_int, align 8
  %tmp49 = alloca %struct.double_int, align 8
  %tmp60 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1860, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %struct.double_int* %f, metadata !1863, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !1864, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 0, metadata !1865, metadata !DIExpression()), !dbg !1877
  %idxprom = zext i32 %mode to i64, !dbg !1878
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1878
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1878
  %cmp = icmp eq i8 %0, 5, !dbg !1878
  br i1 %cmp, label %lor.end18, label %lor.lhs.false, !dbg !1878

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i8 %0, 14, !dbg !1878
  br i1 %cmp5, label %lor.end18, label %lor.rhs, !dbg !1878

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp10 = icmp eq i8 %0, 7, !dbg !1878
  br i1 %cmp10, label %lor.end18, label %lor.rhs12, !dbg !1878

lor.rhs12:                                        ; preds = %lor.rhs
  %cmp16 = icmp eq i8 %0, 16, !dbg !1878
  br label %lor.end18, !dbg !1878

lor.end18:                                        ; preds = %lor.rhs, %lor.rhs12, %lor.lhs.false, %entry
  %1 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ true, %lor.rhs ], [ %cmp16, %lor.rhs12 ]
  %arrayidx21 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !1879
  %2 = load i8, i8* %arrayidx21, align 1, !dbg !1879
  %conv22 = zext i8 %2 to i32, !dbg !1879
  %arrayidx24 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !1880
  %3 = load i8, i8* %arrayidx24, align 1, !dbg !1880
  %conv25 = zext i8 %3 to i32, !dbg !1880
  %add = add nuw nsw i32 %conv22, %conv25, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %add, metadata !1867, metadata !DIExpression()), !dbg !1877
  br i1 %1, label %if.then, label %if.else42, !dbg !1882

if.then:                                          ; preds = %lor.end18
  %4 = bitcast %struct.double_int* %max_s to i8*, !dbg !1883
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !1883
  %high26 = getelementptr inbounds %struct.double_int, %struct.double_int* %max_s, i64 0, i32 1, !dbg !1884
  %low27 = getelementptr inbounds %struct.double_int, %struct.double_int* %max_s, i64 0, i32 0, !dbg !1885
  %5 = bitcast %struct.double_int* %tmp to i8*, !dbg !1886
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1886
  %call = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 %add, i8 zeroext 1) #6, !dbg !1886
  %6 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1886
  %7 = extractvalue { i64, i64 } %call, 0, !dbg !1886
  store i64 %7, i64* %6, align 8, !dbg !1886
  %8 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1886
  %9 = extractvalue { i64, i64 } %call, 1, !dbg !1886
  store i64 %9, i64* %8, align 8, !dbg !1886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !1886
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1886
  %call28 = tail call i32 @double_int_cmp(i64 %a_high.coerce0, i64 %a_high.coerce1, i64 0, i64 0, i8 zeroext 1) #6, !dbg !1887
  %cmp29 = icmp eq i32 %call28, 1, !dbg !1889
  br i1 %cmp29, label %if.then38, label %lor.lhs.false31, !dbg !1890

lor.lhs.false31:                                  ; preds = %if.then
  %call32 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %a_high.coerce0, i64 %a_high.coerce1, i64 0, i64 0) #8, !dbg !1891
  %tobool34 = icmp eq i8 %call32, 0, !dbg !1891
  br i1 %tobool34, label %if.end41, label %land.lhs.true, !dbg !1892

land.lhs.true:                                    ; preds = %lor.lhs.false31
  %10 = load i64, i64* %low27, align 8, !dbg !1893
  %11 = load i64, i64* %high26, align 8, !dbg !1893
  %call35 = tail call i32 @double_int_cmp(i64 %a_low.coerce0, i64 %a_low.coerce1, i64 %10, i64 %11, i8 zeroext 1) #6, !dbg !1893
  %cmp36 = icmp eq i32 %call35, 1, !dbg !1894
  br i1 %cmp36, label %if.then38, label %if.end41, !dbg !1895

if.then38:                                        ; preds = %land.lhs.true, %if.then
  %tobool39 = icmp eq i8 %sat_p, 0, !dbg !1896
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1899

if.then40:                                        ; preds = %if.then38
  %12 = bitcast %struct.double_int* %f to i8*, !dbg !1900
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !1900
  br label %if.end41, !dbg !1901

if.end41:                                         ; preds = %if.then38, %lor.lhs.false31, %if.then40, %land.lhs.true
  %overflow_p.1 = phi i8 [ 0, %land.lhs.true ], [ 0, %lor.lhs.false31 ], [ 0, %if.then40 ], [ 1, %if.then38 ], !dbg !1902
  call void @llvm.dbg.value(metadata i8 %overflow_p.1, metadata !1865, metadata !DIExpression()), !dbg !1877
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !1903
  br label %if.end98, !dbg !1904

if.else42:                                        ; preds = %lor.end18
  %13 = bitcast %struct.double_int* %max_s44 to i8*, !dbg !1905
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !1905
  %14 = bitcast %struct.double_int* %min_s to i8*, !dbg !1905
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #7, !dbg !1905
  %high47 = getelementptr inbounds %struct.double_int, %struct.double_int* %max_s44, i64 0, i32 1, !dbg !1906
  %low48 = getelementptr inbounds %struct.double_int, %struct.double_int* %max_s44, i64 0, i32 0, !dbg !1907
  %15 = bitcast %struct.double_int* %tmp49 to i8*, !dbg !1908
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !1908
  %call50 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 %add, i8 zeroext 1) #6, !dbg !1908
  %16 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp49, i64 0, i32 0, !dbg !1908
  %17 = extractvalue { i64, i64 } %call50, 0, !dbg !1908
  store i64 %17, i64* %16, align 8, !dbg !1908
  %18 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp49, i64 0, i32 1, !dbg !1908
  %19 = extractvalue { i64, i64 } %call50, 1, !dbg !1908
  store i64 %19, i64* %18, align 8, !dbg !1908
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !1908
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !1908
  %high53 = getelementptr inbounds %struct.double_int, %struct.double_int* %min_s, i64 0, i32 1, !dbg !1909
  store i64 0, i64* %high53, align 8, !dbg !1910
  %low54 = getelementptr inbounds %struct.double_int, %struct.double_int* %min_s, i64 0, i32 0, !dbg !1911
  store i64 1, i64* %low54, align 8, !dbg !1912
  %conv57 = zext i32 %add to i64, !dbg !1913
  call void @lshift_double(i64 1, i64 0, i64 %conv57, i32 128, i64* nonnull %low54, i64* nonnull %high53, i32 1) #6, !dbg !1914
  %20 = bitcast %struct.double_int* %tmp60 to i8*, !dbg !1915
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !1915
  %add61 = add nuw nsw i32 %add, 1, !dbg !1916
  %21 = load i64, i64* %low54, align 8, !dbg !1915
  %22 = load i64, i64* %high53, align 8, !dbg !1915
  %call62 = call { i64, i64 } @double_int_ext(i64 %21, i64 %22, i32 %add61, i8 zeroext 0) #6, !dbg !1915
  %23 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp60, i64 0, i32 0, !dbg !1915
  %24 = extractvalue { i64, i64 } %call62, 0, !dbg !1915
  store i64 %24, i64* %23, align 8, !dbg !1915
  %25 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp60, i64 0, i32 1, !dbg !1915
  %26 = extractvalue { i64, i64 } %call62, 1, !dbg !1915
  store i64 %26, i64* %25, align 8, !dbg !1915
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %14, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !1915
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !1915
  %call63 = call i32 @double_int_cmp(i64 %a_high.coerce0, i64 %a_high.coerce1, i64 0, i64 0, i8 zeroext 0) #6, !dbg !1917
  %cmp64 = icmp eq i32 %call63, 1, !dbg !1919
  br i1 %cmp64, label %if.then74, label %lor.lhs.false66, !dbg !1920

lor.lhs.false66:                                  ; preds = %if.else42
  %call67 = call fastcc zeroext i8 @double_int_equal_p(i64 %a_high.coerce0, i64 %a_high.coerce1, i64 0, i64 0) #8, !dbg !1921
  %tobool69 = icmp eq i8 %call67, 0, !dbg !1921
  br i1 %tobool69, label %if.else79, label %land.lhs.true70, !dbg !1922

land.lhs.true70:                                  ; preds = %lor.lhs.false66
  %27 = load i64, i64* %low48, align 8, !dbg !1923
  %28 = load i64, i64* %high47, align 8, !dbg !1923
  %call71 = call i32 @double_int_cmp(i64 %a_low.coerce0, i64 %a_low.coerce1, i64 %27, i64 %28, i8 zeroext 1) #6, !dbg !1923
  %cmp72 = icmp eq i32 %call71, 1, !dbg !1924
  br i1 %cmp72, label %if.then74, label %if.else79, !dbg !1925

if.then74:                                        ; preds = %land.lhs.true70, %if.else42
  %tobool75 = icmp eq i8 %sat_p, 0, !dbg !1926
  br i1 %tobool75, label %if.end97, label %if.then76, !dbg !1929

if.then76:                                        ; preds = %if.then74
  %29 = bitcast %struct.double_int* %f to i8*, !dbg !1930
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !1930
  br label %if.end97, !dbg !1931

if.else79:                                        ; preds = %lor.lhs.false66, %land.lhs.true70
  %call80 = call i32 @double_int_cmp(i64 %a_high.coerce0, i64 %a_high.coerce1, i64 -1, i64 -1, i8 zeroext 0) #6, !dbg !1932
  %cmp81 = icmp eq i32 %call80, -1, !dbg !1934
  br i1 %cmp81, label %if.then91, label %lor.lhs.false83, !dbg !1935

lor.lhs.false83:                                  ; preds = %if.else79
  %call84 = call fastcc zeroext i8 @double_int_equal_p(i64 %a_high.coerce0, i64 %a_high.coerce1, i64 -1, i64 -1) #8, !dbg !1936
  %tobool86 = icmp eq i8 %call84, 0, !dbg !1936
  br i1 %tobool86, label %if.end97, label %land.lhs.true87, !dbg !1937

land.lhs.true87:                                  ; preds = %lor.lhs.false83
  %30 = load i64, i64* %low54, align 8, !dbg !1938
  %31 = load i64, i64* %high53, align 8, !dbg !1938
  %call88 = call i32 @double_int_cmp(i64 %a_low.coerce0, i64 %a_low.coerce1, i64 %30, i64 %31, i8 zeroext 1) #6, !dbg !1938
  %cmp89 = icmp eq i32 %call88, -1, !dbg !1939
  br i1 %cmp89, label %if.then91, label %if.end97, !dbg !1940

if.then91:                                        ; preds = %land.lhs.true87, %if.else79
  %tobool92 = icmp eq i8 %sat_p, 0, !dbg !1941
  br i1 %tobool92, label %if.end97, label %if.then93, !dbg !1944

if.then93:                                        ; preds = %if.then91
  %32 = bitcast %struct.double_int* %f to i8*, !dbg !1945
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* nonnull align 8 %14, i64 16, i1 false), !dbg !1945
  br label %if.end97, !dbg !1946

if.end97:                                         ; preds = %if.then74, %if.then91, %lor.lhs.false83, %land.lhs.true87, %if.then93, %if.then76
  %overflow_p.5 = phi i8 [ 0, %if.then76 ], [ 1, %if.then74 ], [ 0, %land.lhs.true87 ], [ 0, %lor.lhs.false83 ], [ 0, %if.then93 ], [ 1, %if.then91 ], !dbg !1902
  call void @llvm.dbg.value(metadata i8 %overflow_p.5, metadata !1865, metadata !DIExpression()), !dbg !1877
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #7, !dbg !1947
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !1947
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end41
  %overflow_p.6 = phi i8 [ %overflow_p.1, %if.end41 ], [ %overflow_p.5, %if.end97 ], !dbg !1902
  call void @llvm.dbg.value(metadata i8 %overflow_p.6, metadata !1865, metadata !DIExpression()), !dbg !1877
  ret i8 %overflow_p.6, !dbg !1948
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @fixed_saturate1(i32 %mode, i64 %a.coerce0, i64 %a.coerce1, %struct.double_int* %f, i8 zeroext %sat_p) unnamed_addr #4 !dbg !1949 {
entry:
  %max = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %max34 = alloca %struct.double_int, align 8
  %min = alloca %struct.double_int, align 8
  %tmp37 = alloca %struct.double_int, align 8
  %tmp46 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1953, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata %struct.double_int* %f, metadata !1955, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !1956, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 0, metadata !1957, metadata !DIExpression()), !dbg !1966
  %idxprom = zext i32 %mode to i64, !dbg !1967
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1967
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1967
  %cmp = icmp eq i8 %0, 5, !dbg !1967
  br i1 %cmp, label %lor.end18, label %lor.lhs.false, !dbg !1967

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i8 %0, 14, !dbg !1967
  br i1 %cmp5, label %lor.end18, label %lor.rhs, !dbg !1967

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp10 = icmp eq i8 %0, 7, !dbg !1967
  br i1 %cmp10, label %lor.end18, label %lor.rhs12, !dbg !1967

lor.rhs12:                                        ; preds = %lor.rhs
  %cmp16 = icmp eq i8 %0, 16, !dbg !1967
  br label %lor.end18, !dbg !1967

lor.end18:                                        ; preds = %lor.rhs, %lor.rhs12, %lor.lhs.false, %entry
  %1 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ true, %lor.rhs ], [ %cmp16, %lor.rhs12 ]
  %arrayidx21 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !1968
  %2 = load i8, i8* %arrayidx21, align 1, !dbg !1968
  %conv22 = zext i8 %2 to i32, !dbg !1968
  %arrayidx24 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !1969
  %3 = load i8, i8* %arrayidx24, align 1, !dbg !1969
  %conv25 = zext i8 %3 to i32, !dbg !1969
  %add = add nuw nsw i32 %conv22, %conv25, !dbg !1970
  call void @llvm.dbg.value(metadata i32 %add, metadata !1959, metadata !DIExpression()), !dbg !1966
  br i1 %1, label %if.then, label %if.else33, !dbg !1971

if.then:                                          ; preds = %lor.end18
  %4 = bitcast %struct.double_int* %max to i8*, !dbg !1972
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !1972
  %low = getelementptr inbounds %struct.double_int, %struct.double_int* %max, i64 0, i32 0, !dbg !1973
  %high = getelementptr inbounds %struct.double_int, %struct.double_int* %max, i64 0, i32 1, !dbg !1974
  %5 = bitcast %struct.double_int* %tmp to i8*, !dbg !1975
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1975
  %call = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 %add, i8 zeroext 1) #6, !dbg !1975
  %6 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1975
  %7 = extractvalue { i64, i64 } %call, 0, !dbg !1975
  store i64 %7, i64* %6, align 8, !dbg !1975
  %8 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1975
  %9 = extractvalue { i64, i64 } %call, 1, !dbg !1975
  store i64 %9, i64* %8, align 8, !dbg !1975
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !1975
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1975
  %10 = load i64, i64* %low, align 8, !dbg !1976
  %11 = load i64, i64* %high, align 8, !dbg !1976
  %call26 = tail call i32 @double_int_cmp(i64 %a.coerce0, i64 %a.coerce1, i64 %10, i64 %11, i8 zeroext 1) #6, !dbg !1976
  %cmp27 = icmp eq i32 %call26, 1, !dbg !1978
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !1979

if.then29:                                        ; preds = %if.then
  %tobool30 = icmp eq i8 %sat_p, 0, !dbg !1980
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !1983

if.then31:                                        ; preds = %if.then29
  %12 = bitcast %struct.double_int* %f to i8*, !dbg !1984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !1984
  br label %if.end32, !dbg !1985

if.end32:                                         ; preds = %if.then29, %if.then31, %if.then
  %overflow_p.1 = phi i8 [ 0, %if.then ], [ 0, %if.then31 ], [ 1, %if.then29 ], !dbg !1986
  call void @llvm.dbg.value(metadata i8 %overflow_p.1, metadata !1957, metadata !DIExpression()), !dbg !1966
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !1987
  br label %if.end68, !dbg !1988

if.else33:                                        ; preds = %lor.end18
  %13 = bitcast %struct.double_int* %max34 to i8*, !dbg !1989
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !1989
  %14 = bitcast %struct.double_int* %min to i8*, !dbg !1989
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #7, !dbg !1989
  %high35 = getelementptr inbounds %struct.double_int, %struct.double_int* %max34, i64 0, i32 1, !dbg !1990
  %low36 = getelementptr inbounds %struct.double_int, %struct.double_int* %max34, i64 0, i32 0, !dbg !1991
  %15 = bitcast %struct.double_int* %tmp37 to i8*, !dbg !1992
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !1992
  %call38 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 %add, i8 zeroext 1) #6, !dbg !1992
  %16 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp37, i64 0, i32 0, !dbg !1992
  %17 = extractvalue { i64, i64 } %call38, 0, !dbg !1992
  store i64 %17, i64* %16, align 8, !dbg !1992
  %18 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp37, i64 0, i32 1, !dbg !1992
  %19 = extractvalue { i64, i64 } %call38, 1, !dbg !1992
  store i64 %19, i64* %18, align 8, !dbg !1992
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !1992
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !1992
  %high39 = getelementptr inbounds %struct.double_int, %struct.double_int* %min, i64 0, i32 1, !dbg !1993
  store i64 0, i64* %high39, align 8, !dbg !1994
  %low40 = getelementptr inbounds %struct.double_int, %struct.double_int* %min, i64 0, i32 0, !dbg !1995
  store i64 1, i64* %low40, align 8, !dbg !1996
  %conv43 = zext i32 %add to i64, !dbg !1997
  call void @lshift_double(i64 1, i64 0, i64 %conv43, i32 128, i64* nonnull %low40, i64* nonnull %high39, i32 1) #6, !dbg !1998
  %20 = bitcast %struct.double_int* %tmp46 to i8*, !dbg !1999
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !1999
  %add47 = add nuw nsw i32 %add, 1, !dbg !2000
  %21 = load i64, i64* %low40, align 8, !dbg !1999
  %22 = load i64, i64* %high39, align 8, !dbg !1999
  %call48 = call { i64, i64 } @double_int_ext(i64 %21, i64 %22, i32 %add47, i8 zeroext 0) #6, !dbg !1999
  %23 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp46, i64 0, i32 0, !dbg !1999
  %24 = extractvalue { i64, i64 } %call48, 0, !dbg !1999
  store i64 %24, i64* %23, align 8, !dbg !1999
  %25 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp46, i64 0, i32 1, !dbg !1999
  %26 = extractvalue { i64, i64 } %call48, 1, !dbg !1999
  store i64 %26, i64* %25, align 8, !dbg !1999
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %14, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !1999
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !1999
  %27 = load i64, i64* %low36, align 8, !dbg !2001
  %28 = load i64, i64* %high35, align 8, !dbg !2001
  %call49 = call i32 @double_int_cmp(i64 %a.coerce0, i64 %a.coerce1, i64 %27, i64 %28, i8 zeroext 0) #6, !dbg !2001
  %cmp50 = icmp eq i32 %call49, 1, !dbg !2003
  br i1 %cmp50, label %if.then52, label %if.else57, !dbg !2004

if.then52:                                        ; preds = %if.else33
  %tobool53 = icmp eq i8 %sat_p, 0, !dbg !2005
  br i1 %tobool53, label %if.end67, label %if.then54, !dbg !2008

if.then54:                                        ; preds = %if.then52
  %29 = bitcast %struct.double_int* %f to i8*, !dbg !2009
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !2009
  br label %if.end67, !dbg !2010

if.else57:                                        ; preds = %if.else33
  %30 = load i64, i64* %low40, align 8, !dbg !2011
  %31 = load i64, i64* %high39, align 8, !dbg !2011
  %call58 = call i32 @double_int_cmp(i64 %a.coerce0, i64 %a.coerce1, i64 %30, i64 %31, i8 zeroext 0) #6, !dbg !2011
  %cmp59 = icmp eq i32 %call58, -1, !dbg !2013
  br i1 %cmp59, label %if.then61, label %if.end67, !dbg !2014

if.then61:                                        ; preds = %if.else57
  %tobool62 = icmp eq i8 %sat_p, 0, !dbg !2015
  br i1 %tobool62, label %if.end67, label %if.then63, !dbg !2018

if.then63:                                        ; preds = %if.then61
  %32 = bitcast %struct.double_int* %f to i8*, !dbg !2019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* nonnull align 8 %14, i64 16, i1 false), !dbg !2019
  br label %if.end67, !dbg !2020

if.end67:                                         ; preds = %if.then52, %if.then61, %if.else57, %if.then63, %if.then54
  %overflow_p.5 = phi i8 [ 0, %if.then54 ], [ 1, %if.then52 ], [ 0, %if.else57 ], [ 0, %if.then63 ], [ 1, %if.then61 ], !dbg !1986
  call void @llvm.dbg.value(metadata i8 %overflow_p.5, metadata !1957, metadata !DIExpression()), !dbg !1966
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #7, !dbg !2021
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !2021
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end32
  %overflow_p.6 = phi i8 [ %overflow_p.1, %if.end32 ], [ %overflow_p.5, %if.end67 ], !dbg !1986
  call void @llvm.dbg.value(metadata i8 %overflow_p.6, metadata !1957, metadata !DIExpression()), !dbg !1966
  ret i8 %overflow_p.6, !dbg !2022
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @fixed_convert_from_int(%struct.fixed_value* %f, i32 %mode, i64 %a.coerce0, i64 %a.coerce1, i8 zeroext %unsigned_p, i8 zeroext %sat_p) local_unnamed_addr #4 !dbg !2023 {
entry:
  %a = alloca %struct.double_int, align 8
  %temp_high = alloca %struct.double_int, align 8
  %temp_low = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %tmp83 = alloca %struct.double_int, align 8
  %tmp104 = alloca %struct.double_int, align 8
  %0 = getelementptr inbounds %struct.double_int, %struct.double_int* %a, i64 0, i32 0
  store i64 %a.coerce0, i64* %0, align 8
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %a, i64 0, i32 1
  store i64 %a.coerce1, i64* %1, align 8
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !2027, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2028, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %unsigned_p, metadata !2030, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !2031, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 0, metadata !2032, metadata !DIExpression()), !dbg !2036
  %2 = bitcast %struct.double_int* %temp_high to i8*, !dbg !2037
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2037
  %3 = bitcast %struct.double_int* %temp_low to i8*, !dbg !2037
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2037
  %idxprom = zext i32 %mode to i64, !dbg !2038
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !2038
  %4 = load i8, i8* %arrayidx, align 1, !dbg !2038
  %conv = zext i8 %4 to i32, !dbg !2038
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2035, metadata !DIExpression()), !dbg !2036
  %cmp = icmp eq i8 %4, -128, !dbg !2039
  br i1 %cmp, label %if.then, label %if.else, !dbg !2041

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.double_int* %a to i8*, !dbg !2042
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !2042
  %low = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 0, !dbg !2044
  store i64 0, i64* %low, align 8, !dbg !2045
  %high = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 1, !dbg !2046
  store i64 0, i64* %high, align 8, !dbg !2047
  br label %if.end, !dbg !2048

if.else:                                          ; preds = %entry
  %conv4 = zext i8 %4 to i64, !dbg !2049
  %low5 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 0, !dbg !2051
  %high6 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 1, !dbg !2052
  call void @lshift_double(i64 %a.coerce0, i64 %a.coerce1, i64 %conv4, i32 128, i64* nonnull %low5, i64* nonnull %high6, i32 0) #6, !dbg !2053
  %sub = add nsw i32 %conv, -128, !dbg !2054
  %conv9 = sext i32 %sub to i64, !dbg !2055
  %low10 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 0, !dbg !2056
  %high11 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 1, !dbg !2057
  call void @lshift_double(i64 %a.coerce0, i64 %a.coerce1, i64 %conv9, i32 128, i64* nonnull %low10, i64* nonnull %high11, i32 0) #6, !dbg !2058
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool = icmp eq i8 %unsigned_p, 0, !dbg !2059
  br i1 %tobool, label %land.lhs.true, label %if.end16, !dbg !2061

land.lhs.true:                                    ; preds = %if.end
  %cmp13 = icmp slt i64 %a.coerce1, 0, !dbg !2062
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !2063

if.then15:                                        ; preds = %land.lhs.true
  %6 = bitcast %struct.double_int* %tmp to i8*, !dbg !2064
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !2064
  %7 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 0, !dbg !2064
  %8 = load i64, i64* %7, align 8, !dbg !2064
  %9 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 1, !dbg !2064
  %10 = load i64, i64* %9, align 8, !dbg !2064
  %call = call { i64, i64 } @double_int_ext(i64 %8, i64 %10, i32 %conv, i8 zeroext 0) #6, !dbg !2064
  %11 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2064
  %12 = extractvalue { i64, i64 } %call, 0, !dbg !2064
  store i64 %12, i64* %11, align 8, !dbg !2064
  %13 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2064
  %14 = extractvalue { i64, i64 } %call, 1, !dbg !2064
  store i64 %14, i64* %13, align 8, !dbg !2064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !2064
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !2064
  br label %if.end16, !dbg !2065

if.end16:                                         ; preds = %if.end, %if.then15, %land.lhs.true
  %mode17 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !2066
  store i32 %mode, i32* %mode17, align 8, !dbg !2067
  %15 = bitcast %struct.fixed_value* %f to i8*, !dbg !2068
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !2068
  %conv18 = zext i8 %unsigned_p to i32, !dbg !2069
  %arrayidx21 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2071
  %16 = load i8, i8* %arrayidx21, align 1, !dbg !2071
  %cmp23 = icmp eq i8 %16, 5, !dbg !2071
  br i1 %cmp23, label %lor.end44, label %lor.lhs.false, !dbg !2071

lor.lhs.false:                                    ; preds = %if.end16
  %cmp29 = icmp eq i8 %16, 14, !dbg !2071
  br i1 %cmp29, label %lor.end44, label %lor.rhs, !dbg !2071

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp35 = icmp eq i8 %16, 7, !dbg !2071
  br i1 %cmp35, label %lor.end44, label %lor.rhs37, !dbg !2071

lor.rhs37:                                        ; preds = %lor.rhs
  %cmp42 = icmp eq i8 %16, 16, !dbg !2071
  %phitmp = zext i1 %cmp42 to i32, !dbg !2071
  br label %lor.end44, !dbg !2071

lor.end44:                                        ; preds = %lor.rhs, %lor.rhs37, %lor.lhs.false, %if.end16
  %17 = phi i32 [ 1, %lor.lhs.false ], [ 1, %if.end16 ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs37 ]
  %cmp45 = icmp eq i32 %17, %conv18, !dbg !2072
  br i1 %cmp45, label %if.then47, label %if.else51, !dbg !2073

if.then47:                                        ; preds = %lor.end44
  %data49 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !2074
  %18 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 0, !dbg !2075
  %19 = load i64, i64* %18, align 8, !dbg !2075
  %20 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 1, !dbg !2075
  %21 = load i64, i64* %20, align 8, !dbg !2075
  %22 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 0, !dbg !2075
  %23 = load i64, i64* %22, align 8, !dbg !2075
  %24 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 1, !dbg !2075
  %25 = load i64, i64* %24, align 8, !dbg !2075
  %call50 = call fastcc zeroext i8 @fixed_saturate2(i32 %mode, i64 %19, i64 %21, i64 %23, i64 %25, %struct.double_int* %data49, i8 zeroext %sat_p) #8, !dbg !2075
  call void @llvm.dbg.value(metadata i8 %call50, metadata !2032, metadata !DIExpression()), !dbg !2036
  br label %if.end102, !dbg !2076

if.else51:                                        ; preds = %lor.end44
  br i1 %tobool, label %if.then53, label %if.else71, !dbg !2077

if.then53:                                        ; preds = %if.else51
  %cmp55 = icmp slt i64 %a.coerce1, 0, !dbg !2079
  br i1 %cmp55, label %if.then57, label %if.else66, !dbg !2083

if.then57:                                        ; preds = %if.then53
  %tobool58 = icmp eq i8 %sat_p, 0, !dbg !2084
  br i1 %tobool58, label %if.end102, label %if.then59, !dbg !2087

if.then59:                                        ; preds = %if.then57
  %low61 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !2088
  store i64 0, i64* %low61, align 8, !dbg !2090
  %high63 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !2091
  store i64 0, i64* %high63, align 8, !dbg !2092
  br label %if.end102, !dbg !2093

if.else66:                                        ; preds = %if.then53
  %data68 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !2094
  %26 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 0, !dbg !2095
  %27 = load i64, i64* %26, align 8, !dbg !2095
  %28 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 1, !dbg !2095
  %29 = load i64, i64* %28, align 8, !dbg !2095
  %30 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 0, !dbg !2095
  %31 = load i64, i64* %30, align 8, !dbg !2095
  %32 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 1, !dbg !2095
  %33 = load i64, i64* %32, align 8, !dbg !2095
  %call69 = call fastcc zeroext i8 @fixed_saturate2(i32 %mode, i64 %27, i64 %29, i64 %31, i64 %33, %struct.double_int* %data68, i8 zeroext %sat_p) #8, !dbg !2095
  call void @llvm.dbg.value(metadata i8 %call69, metadata !2032, metadata !DIExpression()), !dbg !2036
  br label %if.end102

if.else71:                                        ; preds = %if.else51
  %high72 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 1, !dbg !2096
  %34 = load i64, i64* %high72, align 8, !dbg !2096
  %cmp73 = icmp slt i64 %34, 0, !dbg !2099
  br i1 %cmp73, label %if.then75, label %if.else96, !dbg !2100

if.then75:                                        ; preds = %if.else71
  %tobool76 = icmp eq i8 %sat_p, 0, !dbg !2101
  br i1 %tobool76, label %if.end102, label %if.then77, !dbg !2104

if.then77:                                        ; preds = %if.then75
  %low79 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !2105
  store i64 -1, i64* %low79, align 8, !dbg !2107
  %high81 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !2108
  store i64 -1, i64* %high81, align 8, !dbg !2109
  %35 = bitcast %struct.double_int* %tmp83 to i8*, !dbg !2110
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35) #7, !dbg !2110
  %arrayidx91 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !2111
  %36 = load i8, i8* %arrayidx91, align 1, !dbg !2111
  %conv92 = zext i8 %36 to i32, !dbg !2111
  %add = add nuw nsw i32 %conv, %conv92, !dbg !2112
  %call93 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 %add, i8 zeroext 1) #6, !dbg !2110
  %37 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp83, i64 0, i32 0, !dbg !2110
  %38 = extractvalue { i64, i64 } %call93, 0, !dbg !2110
  store i64 %38, i64* %37, align 8, !dbg !2110
  %39 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp83, i64 0, i32 1, !dbg !2110
  %40 = extractvalue { i64, i64 } %call93, 1, !dbg !2110
  store i64 %40, i64* %39, align 8, !dbg !2110
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* nonnull align 8 %35, i64 16, i1 false), !dbg !2110
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35) #7, !dbg !2110
  br label %if.end102, !dbg !2113

if.else96:                                        ; preds = %if.else71
  %data98 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, !dbg !2114
  %41 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_high, i64 0, i32 0, !dbg !2115
  %42 = load i64, i64* %41, align 8, !dbg !2115
  %43 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 0, !dbg !2115
  %44 = load i64, i64* %43, align 8, !dbg !2115
  %45 = getelementptr inbounds %struct.double_int, %struct.double_int* %temp_low, i64 0, i32 1, !dbg !2115
  %46 = load i64, i64* %45, align 8, !dbg !2115
  %call99 = call fastcc zeroext i8 @fixed_saturate2(i32 %mode, i64 %42, i64 %34, i64 %44, i64 %46, %struct.double_int* %data98, i8 zeroext %sat_p) #8, !dbg !2115
  call void @llvm.dbg.value(metadata i8 %call99, metadata !2032, metadata !DIExpression()), !dbg !2036
  br label %if.end102

if.end102:                                        ; preds = %if.then75, %if.then57, %if.then59, %if.else66, %if.then77, %if.else96, %if.then47
  %overflow_p.5 = phi i8 [ %call50, %if.then47 ], [ %call69, %if.else66 ], [ 0, %if.then59 ], [ 1, %if.then57 ], [ %call99, %if.else96 ], [ 0, %if.then77 ], [ 1, %if.then75 ], !dbg !2036
  call void @llvm.dbg.value(metadata i8 %overflow_p.5, metadata !2032, metadata !DIExpression()), !dbg !2036
  %47 = bitcast %struct.double_int* %tmp104 to i8*, !dbg !2116
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %47) #7, !dbg !2116
  %48 = load i32, i32* %mode17, align 8, !dbg !2117
  %idxprom107 = zext i32 %48 to i64, !dbg !2117
  %arrayidx108 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom107, !dbg !2117
  %49 = load i8, i8* %arrayidx108, align 1, !dbg !2117
  %cmp110 = icmp eq i8 %49, 4, !dbg !2117
  br i1 %cmp110, label %lor.end135, label %lor.lhs.false112, !dbg !2117

lor.lhs.false112:                                 ; preds = %if.end102
  %cmp117 = icmp eq i8 %49, 13, !dbg !2117
  br i1 %cmp117, label %lor.end135, label %lor.rhs119, !dbg !2117

lor.rhs119:                                       ; preds = %lor.lhs.false112
  %cmp124 = icmp eq i8 %49, 6, !dbg !2117
  br i1 %cmp124, label %lor.end135, label %lor.rhs126, !dbg !2117

lor.rhs126:                                       ; preds = %lor.rhs119
  %cmp131 = icmp eq i8 %49, 15, !dbg !2117
  %phitmp1 = zext i1 %cmp131 to i32, !dbg !2117
  br label %lor.end135, !dbg !2117

lor.end135:                                       ; preds = %lor.rhs119, %lor.rhs126, %lor.lhs.false112, %if.end102
  %50 = phi i32 [ 1, %lor.lhs.false112 ], [ 1, %if.end102 ], [ 1, %lor.rhs119 ], [ %phitmp1, %lor.rhs126 ]
  %arrayidx139 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom107, !dbg !2118
  %51 = load i8, i8* %arrayidx139, align 1, !dbg !2118
  %conv140 = zext i8 %51 to i32, !dbg !2118
  %add141 = add nuw nsw i32 %50, %conv140, !dbg !2119
  %arrayidx144 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom107, !dbg !2120
  %52 = load i8, i8* %arrayidx144, align 1, !dbg !2120
  %conv145 = zext i8 %52 to i32, !dbg !2120
  %add146 = add nuw nsw i32 %add141, %conv145, !dbg !2121
  %cmp151 = icmp eq i8 %49, 5, !dbg !2122
  br i1 %cmp151, label %lor.end176, label %lor.lhs.false153, !dbg !2122

lor.lhs.false153:                                 ; preds = %lor.end135
  %cmp158 = icmp eq i8 %49, 14, !dbg !2122
  br i1 %cmp158, label %lor.end176, label %lor.rhs160, !dbg !2122

lor.rhs160:                                       ; preds = %lor.lhs.false153
  %cmp165 = icmp eq i8 %49, 7, !dbg !2122
  br i1 %cmp165, label %lor.end176, label %lor.rhs167, !dbg !2122

lor.rhs167:                                       ; preds = %lor.rhs160
  %cmp172 = icmp eq i8 %49, 16, !dbg !2122
  %phitmp2 = zext i1 %cmp172 to i8, !dbg !2122
  br label %lor.end176, !dbg !2122

lor.end176:                                       ; preds = %lor.rhs160, %lor.rhs167, %lor.lhs.false153, %lor.end135
  %53 = phi i8 [ 1, %lor.lhs.false153 ], [ 1, %lor.end135 ], [ 1, %lor.rhs160 ], [ %phitmp2, %lor.rhs167 ]
  %54 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !2116
  %55 = load i64, i64* %54, align 8, !dbg !2116
  %56 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !2116
  %57 = load i64, i64* %56, align 8, !dbg !2116
  %call179 = call { i64, i64 } @double_int_ext(i64 %55, i64 %57, i32 %add146, i8 zeroext %53) #6, !dbg !2116
  %58 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp104, i64 0, i32 0, !dbg !2116
  %59 = extractvalue { i64, i64 } %call179, 0, !dbg !2116
  store i64 %59, i64* %58, align 8, !dbg !2116
  %60 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp104, i64 0, i32 1, !dbg !2116
  %61 = extractvalue { i64, i64 } %call179, 1, !dbg !2116
  store i64 %61, i64* %60, align 8, !dbg !2116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* nonnull align 8 %47, i64 16, i1 false), !dbg !2116
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %47) #7, !dbg !2116
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2123
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2123
  ret i8 %overflow_p.5, !dbg !2124
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @fixed_convert_from_real(%struct.fixed_value* %f, i32 %mode, %struct.real_value* %a, i8 zeroext %sat_p) local_unnamed_addr #4 !dbg !2125 {
entry:
  %real_value = alloca %struct.real_value, align 8
  %fixed_value = alloca %struct.real_value, align 8
  %base_value = alloca %struct.real_value, align 8
  %tmp = alloca %struct.double_int, align 8
  %tmp74 = alloca %struct.double_int, align 8
  %tmp82 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !2131, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2132, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !2133, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %sat_p, metadata !2134, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2143
  %0 = bitcast %struct.real_value* %real_value to i8*, !dbg !2144
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !2144
  %1 = bitcast %struct.real_value* %fixed_value to i8*, !dbg !2144
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2144
  %2 = bitcast %struct.real_value* %base_value to i8*, !dbg !2144
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !2144
  %idxprom = zext i32 %mode to i64, !dbg !2145
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2145
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2145
  %cmp = icmp eq i8 %3, 5, !dbg !2145
  br i1 %cmp, label %lor.end18, label %lor.lhs.false, !dbg !2145

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i8 %3, 14, !dbg !2145
  br i1 %cmp5, label %lor.end18, label %lor.rhs, !dbg !2145

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp10 = icmp eq i8 %3, 7, !dbg !2145
  br i1 %cmp10, label %lor.end18, label %lor.rhs12, !dbg !2145

lor.rhs12:                                        ; preds = %lor.rhs
  %cmp16 = icmp eq i8 %3, 16, !dbg !2145
  %phitmp = zext i1 %cmp16 to i8, !dbg !2145
  br label %lor.end18, !dbg !2145

lor.end18:                                        ; preds = %lor.rhs, %lor.rhs12, %lor.lhs.false, %entry
  %4 = phi i8 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs12 ]
  call void @llvm.dbg.value(metadata i8 %4, metadata !2139, metadata !DIExpression()), !dbg !2143
  %arrayidx21 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !2146
  %5 = load i8, i8* %arrayidx21, align 1, !dbg !2146
  %conv22 = zext i8 %5 to i32, !dbg !2146
  %arrayidx24 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !2147
  %6 = load i8, i8* %arrayidx24, align 1, !dbg !2147
  %conv25 = zext i8 %6 to i32, !dbg !2147
  %add = add nuw nsw i32 %conv22, %conv25, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %add, metadata !2140, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 %conv25, metadata !2141, metadata !DIExpression()), !dbg !2143
  %7 = bitcast %struct.real_value* %a to i8*, !dbg !2149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %7, i64 32, i1 false), !dbg !2149
  %mode29 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !2150
  store i32 %mode, i32* %mode29, align 8, !dbg !2151
  call void @llvm.dbg.value(metadata %struct.real_value* %base_value, metadata !2138, metadata !DIExpression(DW_OP_deref)), !dbg !2143
  call void @real_2expN(%struct.real_value* nonnull %base_value, i32 %conv25, i32 %mode) #6, !dbg !2152
  call void @llvm.dbg.value(metadata %struct.real_value* %real_value, metadata !2136, metadata !DIExpression(DW_OP_deref)), !dbg !2143
  call void @llvm.dbg.value(metadata %struct.real_value* %fixed_value, metadata !2137, metadata !DIExpression(DW_OP_deref)), !dbg !2143
  call void @llvm.dbg.value(metadata %struct.real_value* %base_value, metadata !2138, metadata !DIExpression(DW_OP_deref)), !dbg !2143
  %call = call zeroext i8 @real_arithmetic(%struct.real_value* nonnull %fixed_value, i32 65, %struct.real_value* nonnull %real_value, %struct.real_value* nonnull %base_value) #6, !dbg !2153
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !2154
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !2155
  call void @llvm.dbg.value(metadata %struct.real_value* %fixed_value, metadata !2137, metadata !DIExpression(DW_OP_deref)), !dbg !2143
  call void @real_to_integer2(i64* %low, i64* nonnull %high, %struct.real_value* nonnull %fixed_value) #6, !dbg !2156
  call void @llvm.dbg.value(metadata %struct.real_value* %real_value, metadata !2136, metadata !DIExpression(DW_OP_deref)), !dbg !2143
  %call31 = call fastcc i32 @check_real_for_fixed_mode(%struct.real_value* nonnull %real_value, i32 %mode) #8, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %call31, metadata !2142, metadata !DIExpression()), !dbg !2143
  switch i32 %call31, label %if.end80 [
    i32 1, label %if.then
    i32 2, label %if.then66
    i32 3, label %if.then66
  ], !dbg !2158

if.then:                                          ; preds = %lor.end18
  %tobool = icmp eq i8 %sat_p, 0, !dbg !2159
  br i1 %tobool, label %if.end80, label %if.then34, !dbg !2163

if.then34:                                        ; preds = %if.then
  %tobool35 = icmp eq i8 %4, 0, !dbg !2164
  br i1 %tobool35, label %if.else, label %if.then36, !dbg !2167

if.then36:                                        ; preds = %if.then34
  store i64 0, i64* %low, align 8, !dbg !2168
  store i64 0, i64* %high, align 8, !dbg !2170
  br label %if.end80, !dbg !2171

if.else:                                          ; preds = %if.then34
  store i64 1, i64* %low, align 8, !dbg !2172
  store i64 0, i64* %high, align 8, !dbg !2174
  %conv49 = zext i32 %add to i64, !dbg !2175
  call void @lshift_double(i64 1, i64 0, i64 %conv49, i32 128, i64* %low, i64* nonnull %high, i32 1) #6, !dbg !2176
  %8 = bitcast %struct.double_int* %tmp to i8*, !dbg !2177
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !2177
  %add56 = add nuw nsw i32 %add, 1, !dbg !2178
  %9 = load i64, i64* %low, align 8, !dbg !2177
  %10 = load i64, i64* %high, align 8, !dbg !2177
  %call57 = call { i64, i64 } @double_int_ext(i64 %9, i64 %10, i32 %add56, i8 zeroext 0) #6, !dbg !2177
  %11 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2177
  %12 = extractvalue { i64, i64 } %call57, 0, !dbg !2177
  store i64 %12, i64* %11, align 8, !dbg !2177
  %13 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2177
  %14 = extractvalue { i64, i64 } %call57, 1, !dbg !2177
  store i64 %14, i64* %13, align 8, !dbg !2177
  %15 = bitcast %struct.fixed_value* %f to i8*, !dbg !2177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !2177
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !2177
  br label %if.end80

if.then66:                                        ; preds = %lor.end18, %lor.end18
  %tobool67 = icmp eq i8 %sat_p, 0, !dbg !2179
  br i1 %tobool67, label %if.end80, label %if.then68, !dbg !2183

if.then68:                                        ; preds = %if.then66
  store i64 -1, i64* %low, align 8, !dbg !2184
  store i64 -1, i64* %high, align 8, !dbg !2186
  %16 = bitcast %struct.double_int* %tmp74 to i8*, !dbg !2187
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !2187
  %call76 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 %add, i8 zeroext 1) #6, !dbg !2187
  %17 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp74, i64 0, i32 0, !dbg !2187
  %18 = extractvalue { i64, i64 } %call76, 0, !dbg !2187
  store i64 %18, i64* %17, align 8, !dbg !2187
  %19 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp74, i64 0, i32 1, !dbg !2187
  %20 = extractvalue { i64, i64 } %call76, 1, !dbg !2187
  store i64 %20, i64* %19, align 8, !dbg !2187
  %21 = bitcast %struct.fixed_value* %f to i8*, !dbg !2187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !2187
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !2187
  br label %if.end80, !dbg !2188

if.end80:                                         ; preds = %if.then, %if.then66, %lor.end18, %if.then68, %if.else, %if.then36
  %overflow_p.3 = phi i8 [ 0, %if.else ], [ 0, %if.then36 ], [ 1, %if.then ], [ 0, %lor.end18 ], [ 0, %if.then68 ], [ 1, %if.then66 ], !dbg !2189
  call void @llvm.dbg.value(metadata i8 %overflow_p.3, metadata !2135, metadata !DIExpression()), !dbg !2143
  %22 = bitcast %struct.double_int* %tmp82 to i8*, !dbg !2190
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #7, !dbg !2190
  %23 = xor i8 %4, 1, !dbg !2191
  %24 = zext i8 %23 to i32, !dbg !2191
  %add85 = add nuw nsw i32 %add, %24, !dbg !2192
  %25 = load i64, i64* %low, align 8, !dbg !2190
  %26 = load i64, i64* %high, align 8, !dbg !2190
  %call86 = call { i64, i64 } @double_int_ext(i64 %25, i64 %26, i32 %add85, i8 zeroext %4) #6, !dbg !2190
  %27 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp82, i64 0, i32 0, !dbg !2190
  %28 = extractvalue { i64, i64 } %call86, 0, !dbg !2190
  store i64 %28, i64* %27, align 8, !dbg !2190
  %29 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp82, i64 0, i32 1, !dbg !2190
  %30 = extractvalue { i64, i64 } %call86, 1, !dbg !2190
  store i64 %30, i64* %29, align 8, !dbg !2190
  %31 = bitcast %struct.fixed_value* %f to i8*, !dbg !2190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* nonnull align 8 %22, i64 16, i1 false), !dbg !2190
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #7, !dbg !2190
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !2193
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2193
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !2193
  ret i8 %overflow_p.3, !dbg !2194
}

; Function Attrs: nounwind uwtable
define dso_local void @real_convert_from_fixed(%struct.real_value* %r, i32 %mode, %struct.fixed_value* %f) local_unnamed_addr #4 !dbg !2195 {
entry:
  %base_value = alloca %struct.real_value, align 8
  %fixed_value = alloca %struct.real_value, align 8
  %real_value = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2199, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2200, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !2201, metadata !DIExpression()), !dbg !2205
  %0 = bitcast %struct.real_value* %base_value to i8*, !dbg !2206
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !2206
  %1 = bitcast %struct.real_value* %fixed_value to i8*, !dbg !2206
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2206
  %2 = bitcast %struct.real_value* %real_value to i8*, !dbg !2206
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !2206
  %mode1 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !2207
  %3 = load i32, i32* %mode1, align 8, !dbg !2207
  %idxprom = zext i32 %3 to i64, !dbg !2207
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !2207
  %4 = load i8, i8* %arrayidx, align 1, !dbg !2207
  %conv = zext i8 %4 to i32, !dbg !2207
  call void @llvm.dbg.value(metadata %struct.real_value* %base_value, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  call void @real_2expN(%struct.real_value* nonnull %base_value, i32 %conv, i32 %3) #6, !dbg !2208
  %low = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !2209
  %5 = load i64, i64* %low, align 8, !dbg !2209
  %high = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !2210
  %6 = load i64, i64* %high, align 8, !dbg !2210
  %7 = load i32, i32* %mode1, align 8, !dbg !2211
  %idxprom5 = zext i32 %7 to i64, !dbg !2211
  %arrayidx6 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom5, !dbg !2211
  %8 = load i8, i8* %arrayidx6, align 1, !dbg !2211
  %cmp = icmp eq i8 %8, 5, !dbg !2211
  br i1 %cmp, label %lor.end28, label %lor.lhs.false, !dbg !2211

lor.lhs.false:                                    ; preds = %entry
  %cmp13 = icmp eq i8 %8, 14, !dbg !2211
  br i1 %cmp13, label %lor.end28, label %lor.rhs, !dbg !2211

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp19 = icmp eq i8 %8, 7, !dbg !2211
  br i1 %cmp19, label %lor.end28, label %lor.rhs21, !dbg !2211

lor.rhs21:                                        ; preds = %lor.rhs
  %cmp26 = icmp eq i8 %8, 16, !dbg !2211
  %phitmp = zext i1 %cmp26 to i32, !dbg !2211
  br label %lor.end28, !dbg !2211

lor.end28:                                        ; preds = %lor.rhs, %lor.rhs21, %lor.lhs.false, %entry
  %9 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs21 ]
  call void @llvm.dbg.value(metadata %struct.real_value* %fixed_value, metadata !2203, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  call void @real_from_integer(%struct.real_value* nonnull %fixed_value, i32 0, i64 %5, i64 %6, i32 %9) #6, !dbg !2212
  call void @llvm.dbg.value(metadata %struct.real_value* %base_value, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.real_value* %fixed_value, metadata !2203, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.real_value* %real_value, metadata !2204, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  %call = call zeroext i8 @real_arithmetic(%struct.real_value* nonnull %real_value, i32 75, %struct.real_value* nonnull %fixed_value, %struct.real_value* nonnull %base_value) #6, !dbg !2213
  call void @llvm.dbg.value(metadata %struct.real_value* %real_value, metadata !2204, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  call void @real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* nonnull %real_value) #6, !dbg !2214
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !2215
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2215
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !2215
  ret void, !dbg !2215
}

declare dso_local void @real_convert(%struct.real_value*, i32, %struct.real_value*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @fixed_isneg(%struct.fixed_value* %f) local_unnamed_addr #4 !dbg !2216 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixed_value* %f, metadata !2220, metadata !DIExpression()), !dbg !2225
  %mode = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 1, !dbg !2226
  %0 = load i32, i32* %mode, align 8, !dbg !2226
  %idxprom = zext i32 %0 to i64, !dbg !2226
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2226
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2226
  %cmp = icmp eq i8 %1, 4, !dbg !2226
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2226

lor.lhs.false:                                    ; preds = %entry
  %cmp6 = icmp eq i8 %1, 13, !dbg !2226
  br i1 %cmp6, label %if.then, label %lor.lhs.false8, !dbg !2226

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %cmp13 = icmp eq i8 %1, 6, !dbg !2226
  br i1 %cmp13, label %if.then, label %lor.lhs.false15, !dbg !2226

lor.lhs.false15:                                  ; preds = %lor.lhs.false8
  %cmp20 = icmp eq i8 %1, 15, !dbg !2226
  br i1 %cmp20, label %if.then, label %if.end34, !dbg !2227

if.then:                                          ; preds = %lor.lhs.false15, %lor.lhs.false8, %lor.lhs.false, %entry
  %arrayidx24 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom, !dbg !2228
  %2 = load i8, i8* %arrayidx24, align 1, !dbg !2228
  %conv25 = zext i8 %2 to i32, !dbg !2228
  %arrayidx28 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !2229
  %3 = load i8, i8* %arrayidx28, align 1, !dbg !2229
  %conv29 = zext i8 %3 to i32, !dbg !2229
  %add = add nuw nsw i32 %conv25, %conv29, !dbg !2230
  call void @llvm.dbg.value(metadata i32 %add, metadata !2221, metadata !DIExpression()), !dbg !2231
  %4 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 0, !dbg !2232
  %5 = load i64, i64* %4, align 8, !dbg !2232
  %6 = getelementptr inbounds %struct.fixed_value, %struct.fixed_value* %f, i64 0, i32 0, i32 1, !dbg !2232
  %7 = load i64, i64* %6, align 8, !dbg !2232
  %call = tail call fastcc i32 @get_fixed_sign_bit(i64 %5, i64 %7, i32 %add) #8, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %call, metadata !2224, metadata !DIExpression()), !dbg !2231
  %cmp30 = icmp eq i32 %call, 1, !dbg !2233
  br i1 %cmp30, label %return, label %if.end34

if.end34:                                         ; preds = %if.then, %lor.lhs.false15
  br label %return, !dbg !2235

return:                                           ; preds = %if.then, %if.end34
  %retval.1 = phi i8 [ 1, %if.then ], [ 0, %if.end34 ], !dbg !2225
  ret i8 %retval.1, !dbg !2236
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_fixed_sign_bit(i64 %a.coerce0, i64 %a.coerce1, i32 %i_f_bits) unnamed_addr #0 !dbg !2237 {
entry:
  call void @llvm.dbg.value(metadata i32 %i_f_bits, metadata !2242, metadata !DIExpression()), !dbg !2243
  %cmp = icmp slt i32 %i_f_bits, 64, !dbg !2244
  br i1 %cmp, label %if.then, label %if.else, !dbg !2246

if.then:                                          ; preds = %entry
  %sh_prom = zext i32 %i_f_bits to i64, !dbg !2247
  %shr = lshr i64 %a.coerce0, %sh_prom, !dbg !2247
  br label %return, !dbg !2248

if.else:                                          ; preds = %entry
  %sub = add nsw i32 %i_f_bits, -64, !dbg !2249
  %sh_prom1 = zext i32 %sub to i64, !dbg !2250
  %shr21 = lshr i64 %a.coerce1, %sh_prom1, !dbg !2250
  br label %return, !dbg !2251

return:                                           ; preds = %if.else, %if.then
  %retval.0.in.in = phi i64 [ %shr, %if.then ], [ %shr21, %if.else ]
  %retval.0.in = trunc i64 %retval.0.in.in to i32, !dbg !2252
  %retval.0 = and i32 %retval.0.in, 1, !dbg !2252
  ret i32 %retval.0, !dbg !2253
}

declare dso_local void @real_arithmetic2(%struct.real_value* sret, i32, %struct.real_value*, %struct.real_value*) local_unnamed_addr #1

declare dso_local zeroext i8 @real_compare(i32, %struct.real_value*, %struct.real_value*) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_div(i64, i64, i64, i64, i8 zeroext, i32) local_unnamed_addr #1

declare dso_local i32 @div_and_round_double(i32, i32, i64, i64, i64, i64, i64*, i64*, i64*, i64*) local_unnamed_addr #1

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
!llvm.module.flags = !{!367, !368, !369}
!llvm.ident = !{!370}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !355, nameTableKind: None)
!1 = !DIFile(filename: "fixed-value.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !138, !160}
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
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fixed_value_range_code", file: !1, line: 47, baseType: !5, size: 32, elements: !133)
!133 = !{!134, !135, !136, !137}
!134 = !DIEnumerator(name: "FIXED_OK", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "FIXED_UNDERFLOW", value: 1, isUnsigned: true)
!136 = !DIEnumerator(name: "FIXED_GT_MAX_EPS", value: 2, isUnsigned: true)
!137 = !DIEnumerator(name: "FIXED_MAX_EPS", value: 3, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !139, line: 36, baseType: !5, size: 32, elements: !140)
!139 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!141 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!144 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!145 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!146 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!147 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!148 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!149 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!150 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!151 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!152 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!153 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!154 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!155 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!156 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!157 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!158 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!159 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !161, line: 39, baseType: !5, size: 32, elements: !162)
!161 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354}
!163 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!164 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!165 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!166 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!167 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!168 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!169 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!170 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!171 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!172 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!173 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!174 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!175 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!176 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!177 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!178 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!179 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!180 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!181 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!182 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!183 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!184 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!185 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!186 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!187 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!188 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!189 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!190 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!191 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!192 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!193 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!194 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!195 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!196 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!197 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!198 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!199 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!200 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!201 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!202 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!203 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!204 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!205 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!206 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!207 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!208 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!209 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!210 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!211 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!212 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!213 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!214 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!215 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!216 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!217 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!218 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!219 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!220 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!221 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!222 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!223 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!224 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!225 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!226 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!227 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!228 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!229 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!230 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!231 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!232 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!233 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!234 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!235 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!236 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!237 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!238 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!239 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!240 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!241 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!242 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!243 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!244 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!245 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!246 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!247 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!248 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!249 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!250 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!251 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!252 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!253 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!254 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!255 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!256 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!257 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!258 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!259 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!260 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!261 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!262 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!263 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!264 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!265 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!266 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!267 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!268 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!269 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!270 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!271 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!272 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!273 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!274 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!275 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!276 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!277 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!278 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!279 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!280 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!281 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!282 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!283 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!284 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!285 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!286 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!287 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!288 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!289 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!290 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!291 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!292 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!293 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!294 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!295 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!296 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!297 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!298 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!299 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!300 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!301 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!302 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!303 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!304 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!305 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!306 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!307 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!308 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!309 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!310 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!311 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!312 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!313 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!314 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!315 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!316 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!317 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!318 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!319 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!320 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!321 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!322 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!323 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!324 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!325 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!326 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!327 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!328 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!329 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!330 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!331 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!332 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!333 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!334 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!335 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!336 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!337 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!338 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!339 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!340 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!341 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!342 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!343 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!344 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!345 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!346 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!347 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!348 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!349 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!350 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!351 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!352 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!353 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!354 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!355 = !{!356, !357, !358, !359, !362, !363, !5, !138, !365, !160}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!358 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!367 = !{i32 2, !"Dwarf Version", i32 4}
!368 = !{i32 2, !"Debug Info Version", i32 3}
!369 = !{i32 1, !"wchar_size", i32 4}
!370 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!371 = distinct !DISubprogram(name: "vprintf", scope: !372, file: !372, line: 39, type: !373, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !383)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!373 = !DISubroutineType(types: !374)
!374 = !{!358, !375, !376}
!375 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !363)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !378)
!378 = !{!379, !380, !381, !382}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !377, file: !1, baseType: !5, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !377, file: !1, baseType: !5, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !377, file: !1, baseType: !362, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !377, file: !1, baseType: !362, size: 64, offset: 128)
!383 = !{!384, !385}
!384 = !DILocalVariable(name: "__fmt", arg: 1, scope: !371, file: !372, line: 39, type: !375)
!385 = !DILocalVariable(name: "__arg", arg: 2, scope: !371, file: !372, line: 39, type: !376)
!386 = !DILocation(line: 0, scope: !371)
!387 = !DILocation(line: 41, column: 20, scope: !371)
!388 = !DILocation(line: 41, column: 10, scope: !371)
!389 = !DILocation(line: 41, column: 3, scope: !371)
!390 = distinct !DISubprogram(name: "getchar", scope: !372, file: !372, line: 47, type: !391, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!358}
!393 = !{}
!394 = !DILocation(line: 49, column: 16, scope: !390)
!395 = !DILocation(line: 49, column: 10, scope: !390)
!396 = !DILocation(line: 49, column: 3, scope: !390)
!397 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !372, file: !372, line: 56, type: !398, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !458)
!398 = !DISubroutineType(types: !399)
!399 = !{!358, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !402, line: 7, baseType: !403)
!402 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !404, line: 49, size: 1728, elements: !405)
!404 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!405 = !{!406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !421, !423, !424, !425, !428, !430, !432, !436, !439, !441, !444, !447, !448, !449, !453, !454}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !403, file: !404, line: 51, baseType: !358, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !403, file: !404, line: 54, baseType: !360, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !403, file: !404, line: 55, baseType: !360, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !403, file: !404, line: 56, baseType: !360, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !403, file: !404, line: 57, baseType: !360, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !403, file: !404, line: 58, baseType: !360, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !403, file: !404, line: 59, baseType: !360, size: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !403, file: !404, line: 60, baseType: !360, size: 64, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !403, file: !404, line: 61, baseType: !360, size: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !403, file: !404, line: 64, baseType: !360, size: 64, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !403, file: !404, line: 65, baseType: !360, size: 64, offset: 640)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !403, file: !404, line: 66, baseType: !360, size: 64, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !403, file: !404, line: 68, baseType: !419, size: 64, offset: 768)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !404, line: 36, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !403, file: !404, line: 70, baseType: !422, size: 64, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !403, file: !404, line: 72, baseType: !358, size: 32, offset: 896)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !403, file: !404, line: 73, baseType: !358, size: 32, offset: 928)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !403, file: !404, line: 74, baseType: !426, size: 64, offset: 960)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !427, line: 152, baseType: !366)
!427 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !403, file: !404, line: 77, baseType: !429, size: 16, offset: 1024)
!429 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !403, file: !404, line: 78, baseType: !431, size: 8, offset: 1040)
!431 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !403, file: !404, line: 79, baseType: !433, size: 8, offset: 1048)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 8, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 1)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !403, file: !404, line: 81, baseType: !437, size: 64, offset: 1088)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !404, line: 43, baseType: null)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !403, file: !404, line: 89, baseType: !440, size: 64, offset: 1152)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !427, line: 153, baseType: !366)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !403, file: !404, line: 91, baseType: !442, size: 64, offset: 1216)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !404, line: 37, flags: DIFlagFwdDecl)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !403, file: !404, line: 92, baseType: !445, size: 64, offset: 1280)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !404, line: 38, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !403, file: !404, line: 93, baseType: !422, size: 64, offset: 1344)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !403, file: !404, line: 94, baseType: !362, size: 64, offset: 1408)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !403, file: !404, line: 95, baseType: !450, size: 64, offset: 1472)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !451, line: 46, baseType: !452)
!451 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!452 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !403, file: !404, line: 96, baseType: !358, size: 32, offset: 1536)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !403, file: !404, line: 98, baseType: !455, size: 160, offset: 1568)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 160, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 20)
!458 = !{!459}
!459 = !DILocalVariable(name: "__fp", arg: 1, scope: !397, file: !372, line: 56, type: !400)
!460 = !DILocation(line: 0, scope: !397)
!461 = !DILocation(line: 58, column: 10, scope: !397)
!462 = !DILocation(line: 58, column: 3, scope: !397)
!463 = distinct !DISubprogram(name: "getc_unlocked", scope: !372, file: !372, line: 66, type: !398, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !464)
!464 = !{!465}
!465 = !DILocalVariable(name: "__fp", arg: 1, scope: !463, file: !372, line: 66, type: !400)
!466 = !DILocation(line: 0, scope: !463)
!467 = !DILocation(line: 68, column: 10, scope: !463)
!468 = !DILocation(line: 68, column: 3, scope: !463)
!469 = distinct !DISubprogram(name: "getchar_unlocked", scope: !372, file: !372, line: 73, type: !391, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !393)
!470 = !DILocation(line: 75, column: 10, scope: !469)
!471 = !DILocation(line: 75, column: 3, scope: !469)
!472 = distinct !DISubprogram(name: "putchar", scope: !372, file: !372, line: 82, type: !473, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!358, !358}
!475 = !{!476}
!476 = !DILocalVariable(name: "__c", arg: 1, scope: !472, file: !372, line: 82, type: !358)
!477 = !DILocation(line: 0, scope: !472)
!478 = !DILocation(line: 84, column: 21, scope: !472)
!479 = !DILocation(line: 84, column: 10, scope: !472)
!480 = !DILocation(line: 84, column: 3, scope: !472)
!481 = distinct !DISubprogram(name: "fputc_unlocked", scope: !372, file: !372, line: 91, type: !482, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!358, !358, !400}
!484 = !{!485, !486}
!485 = !DILocalVariable(name: "__c", arg: 1, scope: !481, file: !372, line: 91, type: !358)
!486 = !DILocalVariable(name: "__stream", arg: 2, scope: !481, file: !372, line: 91, type: !400)
!487 = !DILocation(line: 0, scope: !481)
!488 = !DILocation(line: 93, column: 10, scope: !481)
!489 = !DILocation(line: 93, column: 3, scope: !481)
!490 = distinct !DISubprogram(name: "putc_unlocked", scope: !372, file: !372, line: 101, type: !482, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !491)
!491 = !{!492, !493}
!492 = !DILocalVariable(name: "__c", arg: 1, scope: !490, file: !372, line: 101, type: !358)
!493 = !DILocalVariable(name: "__stream", arg: 2, scope: !490, file: !372, line: 101, type: !400)
!494 = !DILocation(line: 0, scope: !490)
!495 = !DILocation(line: 103, column: 10, scope: !490)
!496 = !DILocation(line: 103, column: 3, scope: !490)
!497 = distinct !DISubprogram(name: "putchar_unlocked", scope: !372, file: !372, line: 108, type: !473, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!498 = !{!499}
!499 = !DILocalVariable(name: "__c", arg: 1, scope: !497, file: !372, line: 108, type: !358)
!500 = !DILocation(line: 0, scope: !497)
!501 = !DILocation(line: 110, column: 10, scope: !497)
!502 = !DILocation(line: 110, column: 3, scope: !497)
!503 = distinct !DISubprogram(name: "getline", scope: !372, file: !372, line: 118, type: !504, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !508)
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !359, !507, !400}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !427, line: 193, baseType: !366)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!508 = !{!509, !510, !511}
!509 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !503, file: !372, line: 118, type: !359)
!510 = !DILocalVariable(name: "__n", arg: 2, scope: !503, file: !372, line: 118, type: !507)
!511 = !DILocalVariable(name: "__stream", arg: 3, scope: !503, file: !372, line: 118, type: !400)
!512 = !DILocation(line: 0, scope: !503)
!513 = !DILocation(line: 120, column: 10, scope: !503)
!514 = !DILocation(line: 120, column: 3, scope: !503)
!515 = distinct !DISubprogram(name: "feof_unlocked", scope: !372, file: !372, line: 128, type: !398, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !516)
!516 = !{!517}
!517 = !DILocalVariable(name: "__stream", arg: 1, scope: !515, file: !372, line: 128, type: !400)
!518 = !DILocation(line: 0, scope: !515)
!519 = !DILocation(line: 130, column: 10, scope: !515)
!520 = !DILocation(line: 130, column: 3, scope: !515)
!521 = distinct !DISubprogram(name: "ferror_unlocked", scope: !372, file: !372, line: 135, type: !398, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !522)
!522 = !{!523}
!523 = !DILocalVariable(name: "__stream", arg: 1, scope: !521, file: !372, line: 135, type: !400)
!524 = !DILocation(line: 0, scope: !521)
!525 = !DILocation(line: 137, column: 10, scope: !521)
!526 = !DILocation(line: 137, column: 3, scope: !521)
!527 = distinct !DISubprogram(name: "tolower", scope: !528, file: !528, line: 207, type: !473, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !529)
!528 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!529 = !{!530}
!530 = !DILocalVariable(name: "__c", arg: 1, scope: !527, file: !528, line: 207, type: !358)
!531 = !DILocation(line: 0, scope: !527)
!532 = !DILocation(line: 209, column: 22, scope: !527)
!533 = !DILocation(line: 209, column: 39, scope: !527)
!534 = !DILocation(line: 209, column: 38, scope: !527)
!535 = !DILocation(line: 209, column: 37, scope: !527)
!536 = !DILocation(line: 209, column: 10, scope: !527)
!537 = !DILocation(line: 209, column: 3, scope: !527)
!538 = distinct !DISubprogram(name: "toupper", scope: !528, file: !528, line: 213, type: !473, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !539)
!539 = !{!540}
!540 = !DILocalVariable(name: "__c", arg: 1, scope: !538, file: !528, line: 213, type: !358)
!541 = !DILocation(line: 0, scope: !538)
!542 = !DILocation(line: 215, column: 22, scope: !538)
!543 = !DILocation(line: 215, column: 39, scope: !538)
!544 = !DILocation(line: 215, column: 38, scope: !538)
!545 = !DILocation(line: 215, column: 37, scope: !538)
!546 = !DILocation(line: 215, column: 10, scope: !538)
!547 = !DILocation(line: 215, column: 3, scope: !538)
!548 = distinct !DISubprogram(name: "atoi", scope: !549, file: !549, line: 361, type: !550, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !552)
!549 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!550 = !DISubroutineType(types: !551)
!551 = !{!358, !363}
!552 = !{!553}
!553 = !DILocalVariable(name: "__nptr", arg: 1, scope: !548, file: !549, line: 361, type: !363)
!554 = !DILocation(line: 0, scope: !548)
!555 = !DILocation(line: 363, column: 16, scope: !548)
!556 = !DILocation(line: 363, column: 10, scope: !548)
!557 = !DILocation(line: 363, column: 3, scope: !548)
!558 = distinct !DISubprogram(name: "atol", scope: !549, file: !549, line: 366, type: !559, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !561)
!559 = !DISubroutineType(types: !560)
!560 = !{!366, !363}
!561 = !{!562}
!562 = !DILocalVariable(name: "__nptr", arg: 1, scope: !558, file: !549, line: 366, type: !363)
!563 = !DILocation(line: 0, scope: !558)
!564 = !DILocation(line: 368, column: 10, scope: !558)
!565 = !DILocation(line: 368, column: 3, scope: !558)
!566 = distinct !DISubprogram(name: "atoll", scope: !549, file: !549, line: 373, type: !567, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !570)
!567 = !DISubroutineType(types: !568)
!568 = !{!569, !363}
!569 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!570 = !{!571}
!571 = !DILocalVariable(name: "__nptr", arg: 1, scope: !566, file: !549, line: 373, type: !363)
!572 = !DILocation(line: 0, scope: !566)
!573 = !DILocation(line: 375, column: 10, scope: !566)
!574 = !DILocation(line: 375, column: 3, scope: !566)
!575 = distinct !DISubprogram(name: "bsearch", scope: !576, file: !576, line: 20, type: !577, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !585)
!576 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!577 = !DISubroutineType(types: !578)
!578 = !{!362, !579, !579, !450, !450, !581}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !549, line: 808, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!358, !579, !579}
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!586 = !DILocalVariable(name: "__key", arg: 1, scope: !575, file: !576, line: 20, type: !579)
!587 = !DILocalVariable(name: "__base", arg: 2, scope: !575, file: !576, line: 20, type: !579)
!588 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !575, file: !576, line: 20, type: !450)
!589 = !DILocalVariable(name: "__size", arg: 4, scope: !575, file: !576, line: 20, type: !450)
!590 = !DILocalVariable(name: "__compar", arg: 5, scope: !575, file: !576, line: 21, type: !581)
!591 = !DILocalVariable(name: "__l", scope: !575, file: !576, line: 23, type: !450)
!592 = !DILocalVariable(name: "__u", scope: !575, file: !576, line: 23, type: !450)
!593 = !DILocalVariable(name: "__idx", scope: !575, file: !576, line: 23, type: !450)
!594 = !DILocalVariable(name: "__p", scope: !575, file: !576, line: 24, type: !579)
!595 = !DILocalVariable(name: "__comparison", scope: !575, file: !576, line: 25, type: !358)
!596 = !DILocation(line: 0, scope: !575)
!597 = !DILocation(line: 29, column: 3, scope: !575)
!598 = !DILocation(line: 27, column: 7, scope: !575)
!599 = !DILocation(line: 29, column: 14, scope: !575)
!600 = !DILocation(line: 31, column: 20, scope: !601)
!601 = distinct !DILexicalBlock(scope: !575, file: !576, line: 30, column: 5)
!602 = !DILocation(line: 31, column: 27, scope: !601)
!603 = !DILocation(line: 32, column: 56, scope: !601)
!604 = !DILocation(line: 32, column: 47, scope: !601)
!605 = !DILocation(line: 33, column: 22, scope: !601)
!606 = !DILocation(line: 34, column: 24, scope: !607)
!607 = distinct !DILexicalBlock(scope: !601, file: !576, line: 34, column: 11)
!608 = !DILocation(line: 34, column: 11, scope: !601)
!609 = !DILocation(line: 36, column: 29, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !576, line: 36, column: 16)
!611 = !DILocation(line: 36, column: 16, scope: !607)
!612 = !DILocation(line: 37, column: 14, scope: !610)
!613 = distinct !{!613, !597, !614}
!614 = !DILocation(line: 40, column: 5, scope: !575)
!615 = !DILocation(line: 43, column: 1, scope: !575)
!616 = distinct !DISubprogram(name: "atof", scope: !617, file: !617, line: 25, type: !618, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !621)
!617 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!618 = !DISubroutineType(types: !619)
!619 = !{!620, !363}
!620 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!621 = !{!622}
!622 = !DILocalVariable(name: "__nptr", arg: 1, scope: !616, file: !617, line: 25, type: !363)
!623 = !DILocation(line: 0, scope: !616)
!624 = !DILocation(line: 27, column: 10, scope: !616)
!625 = !DILocation(line: 27, column: 3, scope: !616)
!626 = distinct !DISubprogram(name: "strtoimax", scope: !627, file: !627, line: 324, type: !628, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !634)
!627 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!628 = !DISubroutineType(types: !629)
!629 = !{!630, !375, !633, !358}
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !631, line: 101, baseType: !632)
!631 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !427, line: 72, baseType: !366)
!633 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !359)
!634 = !{!635, !636, !637}
!635 = !DILocalVariable(name: "nptr", arg: 1, scope: !626, file: !627, line: 324, type: !375)
!636 = !DILocalVariable(name: "endptr", arg: 2, scope: !626, file: !627, line: 324, type: !633)
!637 = !DILocalVariable(name: "base", arg: 3, scope: !626, file: !627, line: 324, type: !358)
!638 = !DILocation(line: 0, scope: !626)
!639 = !DILocation(line: 327, column: 10, scope: !626)
!640 = !DILocation(line: 327, column: 3, scope: !626)
!641 = distinct !DISubprogram(name: "strtoumax", scope: !627, file: !627, line: 336, type: !642, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !646)
!642 = !DISubroutineType(types: !643)
!643 = !{!644, !375, !633, !358}
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !631, line: 102, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !427, line: 73, baseType: !452)
!646 = !{!647, !648, !649}
!647 = !DILocalVariable(name: "nptr", arg: 1, scope: !641, file: !627, line: 336, type: !375)
!648 = !DILocalVariable(name: "endptr", arg: 2, scope: !641, file: !627, line: 336, type: !633)
!649 = !DILocalVariable(name: "base", arg: 3, scope: !641, file: !627, line: 336, type: !358)
!650 = !DILocation(line: 0, scope: !641)
!651 = !DILocation(line: 339, column: 10, scope: !641)
!652 = !DILocation(line: 339, column: 3, scope: !641)
!653 = distinct !DISubprogram(name: "wcstoimax", scope: !627, file: !627, line: 348, type: !654, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !663)
!654 = !DISubroutineType(types: !655)
!655 = !{!630, !656, !660, !358}
!656 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !627, line: 34, baseType: !358)
!660 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!663 = !{!664, !665, !666}
!664 = !DILocalVariable(name: "nptr", arg: 1, scope: !653, file: !627, line: 348, type: !656)
!665 = !DILocalVariable(name: "endptr", arg: 2, scope: !653, file: !627, line: 348, type: !660)
!666 = !DILocalVariable(name: "base", arg: 3, scope: !653, file: !627, line: 348, type: !358)
!667 = !DILocation(line: 0, scope: !653)
!668 = !DILocation(line: 351, column: 10, scope: !653)
!669 = !DILocation(line: 351, column: 3, scope: !653)
!670 = distinct !DISubprogram(name: "wcstoumax", scope: !627, file: !627, line: 362, type: !671, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{!644, !656, !660, !358}
!673 = !{!674, !675, !676}
!674 = !DILocalVariable(name: "nptr", arg: 1, scope: !670, file: !627, line: 362, type: !656)
!675 = !DILocalVariable(name: "endptr", arg: 2, scope: !670, file: !627, line: 362, type: !660)
!676 = !DILocalVariable(name: "base", arg: 3, scope: !670, file: !627, line: 362, type: !358)
!677 = !DILocation(line: 0, scope: !670)
!678 = !DILocation(line: 365, column: 10, scope: !670)
!679 = !DILocation(line: 365, column: 3, scope: !670)
!680 = distinct !DISubprogram(name: "stat", scope: !681, file: !681, line: 453, type: !682, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !721)
!681 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!682 = !DISubroutineType(types: !683)
!683 = !{!358, !363, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !686, line: 46, size: 1152, elements: !687)
!686 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!687 = !{!688, !690, !692, !694, !696, !698, !700, !701, !702, !703, !705, !707, !715, !716, !717}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !685, file: !686, line: 48, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !427, line: 145, baseType: !452)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !685, file: !686, line: 53, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !427, line: 148, baseType: !452)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !685, file: !686, line: 61, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !427, line: 151, baseType: !452)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !685, file: !686, line: 62, baseType: !695, size: 32, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !427, line: 150, baseType: !5)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !685, file: !686, line: 64, baseType: !697, size: 32, offset: 224)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !427, line: 146, baseType: !5)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !685, file: !686, line: 65, baseType: !699, size: 32, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !427, line: 147, baseType: !5)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !685, file: !686, line: 67, baseType: !358, size: 32, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !685, file: !686, line: 69, baseType: !689, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !685, file: !686, line: 74, baseType: !426, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !685, file: !686, line: 78, baseType: !704, size: 64, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !427, line: 174, baseType: !366)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !685, file: !686, line: 80, baseType: !706, size: 64, offset: 512)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !427, line: 179, baseType: !366)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !685, file: !686, line: 91, baseType: !708, size: 128, offset: 576)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !709, line: 10, size: 128, elements: !710)
!709 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!710 = !{!711, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !708, file: !709, line: 12, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !427, line: 160, baseType: !366)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !708, file: !709, line: 16, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !427, line: 196, baseType: !366)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !685, file: !686, line: 92, baseType: !708, size: 128, offset: 704)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !685, file: !686, line: 93, baseType: !708, size: 128, offset: 832)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !685, file: !686, line: 106, baseType: !718, size: 192, offset: 960)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 192, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 3)
!721 = !{!722, !723}
!722 = !DILocalVariable(name: "__path", arg: 1, scope: !680, file: !681, line: 453, type: !363)
!723 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !680, file: !681, line: 453, type: !684)
!724 = !DILocation(line: 0, scope: !680)
!725 = !DILocation(line: 455, column: 10, scope: !680)
!726 = !DILocation(line: 455, column: 3, scope: !680)
!727 = distinct !DISubprogram(name: "lstat", scope: !681, file: !681, line: 460, type: !682, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !728)
!728 = !{!729, !730}
!729 = !DILocalVariable(name: "__path", arg: 1, scope: !727, file: !681, line: 460, type: !363)
!730 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !727, file: !681, line: 460, type: !684)
!731 = !DILocation(line: 0, scope: !727)
!732 = !DILocation(line: 462, column: 10, scope: !727)
!733 = !DILocation(line: 462, column: 3, scope: !727)
!734 = distinct !DISubprogram(name: "fstat", scope: !681, file: !681, line: 467, type: !735, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!358, !358, !684}
!737 = !{!738, !739}
!738 = !DILocalVariable(name: "__fd", arg: 1, scope: !734, file: !681, line: 467, type: !358)
!739 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !734, file: !681, line: 467, type: !684)
!740 = !DILocation(line: 0, scope: !734)
!741 = !DILocation(line: 469, column: 10, scope: !734)
!742 = !DILocation(line: 469, column: 3, scope: !734)
!743 = distinct !DISubprogram(name: "fstatat", scope: !681, file: !681, line: 474, type: !744, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{!358, !358, !363, !684, !358}
!746 = !{!747, !748, !749, !750}
!747 = !DILocalVariable(name: "__fd", arg: 1, scope: !743, file: !681, line: 474, type: !358)
!748 = !DILocalVariable(name: "__filename", arg: 2, scope: !743, file: !681, line: 474, type: !363)
!749 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !743, file: !681, line: 474, type: !684)
!750 = !DILocalVariable(name: "__flag", arg: 4, scope: !743, file: !681, line: 474, type: !358)
!751 = !DILocation(line: 0, scope: !743)
!752 = !DILocation(line: 477, column: 10, scope: !743)
!753 = !DILocation(line: 477, column: 3, scope: !743)
!754 = distinct !DISubprogram(name: "mknod", scope: !681, file: !681, line: 483, type: !755, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!358, !363, !695, !689}
!757 = !{!758, !759, !760}
!758 = !DILocalVariable(name: "__path", arg: 1, scope: !754, file: !681, line: 483, type: !363)
!759 = !DILocalVariable(name: "__mode", arg: 2, scope: !754, file: !681, line: 483, type: !695)
!760 = !DILocalVariable(name: "__dev", arg: 3, scope: !754, file: !681, line: 483, type: !689)
!761 = !DILocation(line: 0, scope: !754)
!762 = !DILocation(line: 485, column: 10, scope: !754)
!763 = !DILocation(line: 485, column: 3, scope: !754)
!764 = distinct !DISubprogram(name: "mknodat", scope: !681, file: !681, line: 491, type: !765, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!358, !358, !363, !695, !689}
!767 = !{!768, !769, !770, !771}
!768 = !DILocalVariable(name: "__fd", arg: 1, scope: !764, file: !681, line: 491, type: !358)
!769 = !DILocalVariable(name: "__path", arg: 2, scope: !764, file: !681, line: 491, type: !363)
!770 = !DILocalVariable(name: "__mode", arg: 3, scope: !764, file: !681, line: 491, type: !695)
!771 = !DILocalVariable(name: "__dev", arg: 4, scope: !764, file: !681, line: 491, type: !689)
!772 = !DILocation(line: 0, scope: !764)
!773 = !DILocation(line: 494, column: 10, scope: !764)
!774 = !DILocation(line: 494, column: 3, scope: !764)
!775 = distinct !DISubprogram(name: "stat64", scope: !681, file: !681, line: 502, type: !776, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !798)
!776 = !DISubroutineType(types: !777)
!777 = !{!358, !363, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !686, line: 119, size: 1152, elements: !780)
!780 = !{!781, !782, !784, !785, !786, !787, !788, !789, !790, !791, !792, !794, !795, !796, !797}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !779, file: !686, line: 121, baseType: !689, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !779, file: !686, line: 123, baseType: !783, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !427, line: 149, baseType: !452)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !779, file: !686, line: 124, baseType: !693, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !779, file: !686, line: 125, baseType: !695, size: 32, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !779, file: !686, line: 132, baseType: !697, size: 32, offset: 224)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !779, file: !686, line: 133, baseType: !699, size: 32, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !779, file: !686, line: 135, baseType: !358, size: 32, offset: 288)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !779, file: !686, line: 136, baseType: !689, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !779, file: !686, line: 137, baseType: !426, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !779, file: !686, line: 143, baseType: !704, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !779, file: !686, line: 144, baseType: !793, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !427, line: 180, baseType: !366)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !779, file: !686, line: 152, baseType: !708, size: 128, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !779, file: !686, line: 153, baseType: !708, size: 128, offset: 704)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !779, file: !686, line: 154, baseType: !708, size: 128, offset: 832)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !779, file: !686, line: 164, baseType: !718, size: 192, offset: 960)
!798 = !{!799, !800}
!799 = !DILocalVariable(name: "__path", arg: 1, scope: !775, file: !681, line: 502, type: !363)
!800 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !775, file: !681, line: 502, type: !778)
!801 = !DILocation(line: 0, scope: !775)
!802 = !DILocation(line: 504, column: 10, scope: !775)
!803 = !DILocation(line: 504, column: 3, scope: !775)
!804 = distinct !DISubprogram(name: "lstat64", scope: !681, file: !681, line: 509, type: !776, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !805)
!805 = !{!806, !807}
!806 = !DILocalVariable(name: "__path", arg: 1, scope: !804, file: !681, line: 509, type: !363)
!807 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !804, file: !681, line: 509, type: !778)
!808 = !DILocation(line: 0, scope: !804)
!809 = !DILocation(line: 511, column: 10, scope: !804)
!810 = !DILocation(line: 511, column: 3, scope: !804)
!811 = distinct !DISubprogram(name: "fstat64", scope: !681, file: !681, line: 516, type: !812, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!358, !358, !778}
!814 = !{!815, !816}
!815 = !DILocalVariable(name: "__fd", arg: 1, scope: !811, file: !681, line: 516, type: !358)
!816 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !811, file: !681, line: 516, type: !778)
!817 = !DILocation(line: 0, scope: !811)
!818 = !DILocation(line: 518, column: 10, scope: !811)
!819 = !DILocation(line: 518, column: 3, scope: !811)
!820 = distinct !DISubprogram(name: "fstatat64", scope: !681, file: !681, line: 523, type: !821, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !823)
!821 = !DISubroutineType(types: !822)
!822 = !{!358, !358, !363, !778, !358}
!823 = !{!824, !825, !826, !827}
!824 = !DILocalVariable(name: "__fd", arg: 1, scope: !820, file: !681, line: 523, type: !358)
!825 = !DILocalVariable(name: "__filename", arg: 2, scope: !820, file: !681, line: 523, type: !363)
!826 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !820, file: !681, line: 523, type: !778)
!827 = !DILocalVariable(name: "__flag", arg: 4, scope: !820, file: !681, line: 523, type: !358)
!828 = !DILocation(line: 0, scope: !820)
!829 = !DILocation(line: 526, column: 10, scope: !820)
!830 = !DILocation(line: 526, column: 3, scope: !820)
!831 = distinct !DISubprogram(name: "fixed_identical", scope: !1, file: !1, line: 31, type: !832, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !847)
!832 = !DISubroutineType(types: !833)
!833 = !{!357, !834, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !837, line: 27, size: 192, elements: !838)
!837 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!838 = !{!839, !846}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !836, file: !837, line: 29, baseType: !840, size: 128)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !841, line: 58, baseType: !842)
!841 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !841, line: 54, size: 128, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !842, file: !841, line: 56, baseType: !452, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !842, file: !841, line: 57, baseType: !366, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !836, file: !837, line: 30, baseType: !3, size: 32, offset: 128)
!847 = !{!848, !849}
!848 = !DILocalVariable(name: "a", arg: 1, scope: !831, file: !1, line: 31, type: !834)
!849 = !DILocalVariable(name: "b", arg: 2, scope: !831, file: !1, line: 31, type: !834)
!850 = !DILocation(line: 0, scope: !831)
!851 = !DILocation(line: 33, column: 14, scope: !831)
!852 = !DILocation(line: 33, column: 25, scope: !831)
!853 = !DILocation(line: 33, column: 19, scope: !831)
!854 = !DILocation(line: 34, column: 4, scope: !831)
!855 = !DILocation(line: 34, column: 15, scope: !831)
!856 = !DILocation(line: 34, column: 31, scope: !831)
!857 = !DILocation(line: 34, column: 20, scope: !831)
!858 = !DILocation(line: 35, column: 4, scope: !831)
!859 = !DILocation(line: 35, column: 15, scope: !831)
!860 = !DILocation(line: 35, column: 30, scope: !831)
!861 = !DILocation(line: 35, column: 19, scope: !831)
!862 = !DILocation(line: 33, column: 3, scope: !831)
!863 = distinct !DISubprogram(name: "fixed_hash", scope: !1, file: !1, line: 41, type: !864, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{!5, !834}
!866 = !{!867}
!867 = !DILocalVariable(name: "f", arg: 1, scope: !863, file: !1, line: 41, type: !834)
!868 = !DILocation(line: 0, scope: !863)
!869 = !DILocation(line: 43, column: 34, scope: !863)
!870 = !DILocation(line: 43, column: 48, scope: !863)
!871 = !DILocation(line: 43, column: 38, scope: !863)
!872 = !DILocation(line: 43, column: 10, scope: !863)
!873 = !DILocation(line: 43, column: 3, scope: !863)
!874 = distinct !DISubprogram(name: "fixed_from_string", scope: !1, file: !1, line: 88, type: !875, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !878)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !877, !363, !3}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!878 = !{!879, !880, !881, !882, !894, !895, !896, !897}
!879 = !DILocalVariable(name: "f", arg: 1, scope: !874, file: !1, line: 88, type: !877)
!880 = !DILocalVariable(name: "str", arg: 2, scope: !874, file: !1, line: 88, type: !363)
!881 = !DILocalVariable(name: "mode", arg: 3, scope: !874, file: !1, line: 88, type: !3)
!882 = !DILocalVariable(name: "real_value", scope: !874, file: !1, line: 90, type: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !884, line: 52, size: 256, elements: !885)
!884 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!885 = !{!886, !887, !888, !889, !890, !891, !892}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !883, file: !884, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !883, file: !884, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !883, file: !884, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !883, file: !884, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !883, file: !884, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !883, file: !884, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !883, file: !884, line: 62, baseType: !893, size: 192, offset: 64)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 192, elements: !719)
!894 = !DILocalVariable(name: "fixed_value", scope: !874, file: !1, line: 90, type: !883)
!895 = !DILocalVariable(name: "base_value", scope: !874, file: !1, line: 90, type: !883)
!896 = !DILocalVariable(name: "fbit", scope: !874, file: !1, line: 91, type: !5)
!897 = !DILocalVariable(name: "temp", scope: !874, file: !1, line: 92, type: !132)
!898 = !DILocation(line: 0, scope: !874)
!899 = !DILocation(line: 90, column: 3, scope: !874)
!900 = !DILocation(line: 94, column: 6, scope: !874)
!901 = !DILocation(line: 94, column: 11, scope: !874)
!902 = !DILocation(line: 95, column: 10, scope: !874)
!903 = !DILocation(line: 97, column: 3, scope: !874)
!904 = !DILocation(line: 98, column: 53, scope: !874)
!905 = !DILocation(line: 98, column: 10, scope: !874)
!906 = !DILocation(line: 101, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !874, file: !1, line: 100, column: 7)
!908 = !DILocation(line: 102, column: 36, scope: !907)
!909 = !DILocation(line: 100, column: 7, scope: !874)
!910 = !DILocation(line: 103, column: 5, scope: !907)
!911 = !DILocation(line: 105, column: 3, scope: !874)
!912 = !DILocation(line: 106, column: 3, scope: !874)
!913 = !DILocation(line: 107, column: 47, scope: !874)
!914 = !DILocation(line: 107, column: 61, scope: !874)
!915 = !DILocation(line: 107, column: 3, scope: !874)
!916 = !DILocation(line: 110, column: 12, scope: !917)
!917 = distinct !DILexicalBlock(scope: !874, file: !1, line: 110, column: 7)
!918 = !DILocation(line: 110, column: 29, scope: !917)
!919 = !DILocation(line: 121, column: 10, scope: !917)
!920 = !DILocation(line: 0, scope: !917)
!921 = !DILocation(line: 110, column: 32, scope: !917)
!922 = !DILocation(line: 110, column: 7, scope: !874)
!923 = !DILocation(line: 113, column: 19, scope: !924)
!924 = distinct !DILexicalBlock(scope: !917, file: !1, line: 111, column: 5)
!925 = !DILocation(line: 114, column: 20, scope: !924)
!926 = !DILocation(line: 115, column: 17, scope: !924)
!927 = !DILocation(line: 116, column: 5, scope: !924)
!928 = !DILocation(line: 117, column: 7, scope: !924)
!929 = !DILocation(line: 117, column: 5, scope: !924)
!930 = !DILocation(line: 118, column: 5, scope: !924)
!931 = !DILocation(line: 120, column: 15, scope: !917)
!932 = !DILocation(line: 122, column: 12, scope: !917)
!933 = !DILocation(line: 122, column: 10, scope: !917)
!934 = !DILocation(line: 123, column: 12, scope: !917)
!935 = !DILocation(line: 123, column: 10, scope: !917)
!936 = !DILocation(line: 124, column: 10, scope: !917)
!937 = !DILocation(line: 125, column: 1, scope: !874)
!938 = distinct !DISubprogram(name: "check_real_for_fixed_mode", scope: !1, file: !1, line: 63, type: !939, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !942)
!939 = !DISubroutineType(types: !940)
!940 = !{!132, !941, !3}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!942 = !{!943, !944, !945, !946, !947}
!943 = !DILocalVariable(name: "real_value", arg: 1, scope: !938, file: !1, line: 63, type: !941)
!944 = !DILocalVariable(name: "mode", arg: 2, scope: !938, file: !1, line: 63, type: !3)
!945 = !DILocalVariable(name: "max_value", scope: !938, file: !1, line: 65, type: !883)
!946 = !DILocalVariable(name: "min_value", scope: !938, file: !1, line: 65, type: !883)
!947 = !DILocalVariable(name: "epsilon_value", scope: !938, file: !1, line: 65, type: !883)
!948 = !DILocation(line: 0, scope: !938)
!949 = !DILocation(line: 65, column: 3, scope: !938)
!950 = !DILocation(line: 67, column: 27, scope: !938)
!951 = !DILocation(line: 67, column: 3, scope: !938)
!952 = !DILocation(line: 68, column: 32, scope: !938)
!953 = !DILocation(line: 68, column: 31, scope: !938)
!954 = !DILocation(line: 68, column: 3, scope: !938)
!955 = !DILocation(line: 70, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !938, file: !1, line: 70, column: 7)
!957 = !DILocation(line: 70, column: 7, scope: !938)
!958 = !DILocation(line: 71, column: 17, scope: !956)
!959 = !DILocation(line: 71, column: 5, scope: !956)
!960 = !DILocation(line: 73, column: 5, scope: !956)
!961 = !DILocation(line: 75, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !938, file: !1, line: 75, column: 7)
!963 = !DILocation(line: 75, column: 7, scope: !938)
!964 = !DILocation(line: 77, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !938, file: !1, line: 77, column: 7)
!966 = !DILocation(line: 77, column: 7, scope: !938)
!967 = !DILocation(line: 79, column: 3, scope: !938)
!968 = !DILocation(line: 80, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !938, file: !1, line: 80, column: 7)
!970 = !DILocation(line: 83, column: 1, scope: !938)
!971 = distinct !DISubprogram(name: "fixed_to_decimal", scope: !1, file: !1, line: 130, type: !972, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !360, !834, !450}
!974 = !{!975, !976, !977, !978, !979, !980}
!975 = !DILocalVariable(name: "str", arg: 1, scope: !971, file: !1, line: 130, type: !360)
!976 = !DILocalVariable(name: "f_orig", arg: 2, scope: !971, file: !1, line: 130, type: !834)
!977 = !DILocalVariable(name: "buf_size", arg: 3, scope: !971, file: !1, line: 131, type: !450)
!978 = !DILocalVariable(name: "real_value", scope: !971, file: !1, line: 133, type: !883)
!979 = !DILocalVariable(name: "base_value", scope: !971, file: !1, line: 133, type: !883)
!980 = !DILocalVariable(name: "fixed_value", scope: !971, file: !1, line: 133, type: !883)
!981 = !DILocation(line: 0, scope: !971)
!982 = !DILocation(line: 133, column: 3, scope: !971)
!983 = !DILocation(line: 135, column: 28, scope: !971)
!984 = !DILocation(line: 135, column: 3, scope: !971)
!985 = !DILocation(line: 136, column: 58, scope: !971)
!986 = !DILocation(line: 136, column: 76, scope: !971)
!987 = !DILocation(line: 137, column: 8, scope: !971)
!988 = !DILocation(line: 136, column: 3, scope: !971)
!989 = !DILocation(line: 138, column: 3, scope: !971)
!990 = !DILocation(line: 139, column: 3, scope: !971)
!991 = !DILocation(line: 140, column: 1, scope: !971)
!992 = distinct !DISubprogram(name: "fixed_arithmetic", scope: !1, file: !1, line: 737, type: !993, scopeLine: 739, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{!357, !877, !358, !834, !834, !357}
!995 = !{!996, !997, !998, !999, !1000}
!996 = !DILocalVariable(name: "f", arg: 1, scope: !992, file: !1, line: 737, type: !877)
!997 = !DILocalVariable(name: "icode", arg: 2, scope: !992, file: !1, line: 737, type: !358)
!998 = !DILocalVariable(name: "op0", arg: 3, scope: !992, file: !1, line: 737, type: !834)
!999 = !DILocalVariable(name: "op1", arg: 4, scope: !992, file: !1, line: 738, type: !834)
!1000 = !DILocalVariable(name: "sat_p", arg: 5, scope: !992, file: !1, line: 738, type: !357)
!1001 = !DILocation(line: 0, scope: !992)
!1002 = !DILocation(line: 740, column: 3, scope: !992)
!1003 = !DILocation(line: 743, column: 14, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !992, file: !1, line: 741, column: 5)
!1005 = !DILocation(line: 743, column: 7, scope: !1004)
!1006 = !DILocation(line: 747, column: 7, scope: !1004)
!1007 = !DILocation(line: 748, column: 14, scope: !1004)
!1008 = !DILocation(line: 748, column: 7, scope: !1004)
!1009 = !DILocation(line: 752, column: 7, scope: !1004)
!1010 = !DILocation(line: 753, column: 14, scope: !1004)
!1011 = !DILocation(line: 753, column: 7, scope: !1004)
!1012 = !DILocation(line: 757, column: 7, scope: !1004)
!1013 = !DILocation(line: 758, column: 14, scope: !1004)
!1014 = !DILocation(line: 758, column: 7, scope: !1004)
!1015 = !DILocation(line: 762, column: 7, scope: !1004)
!1016 = !DILocation(line: 763, column: 14, scope: !1004)
!1017 = !DILocation(line: 763, column: 7, scope: !1004)
!1018 = !DILocation(line: 767, column: 14, scope: !1004)
!1019 = !DILocation(line: 767, column: 7, scope: !1004)
!1020 = !DILocation(line: 771, column: 14, scope: !1004)
!1021 = !DILocation(line: 771, column: 7, scope: !1004)
!1022 = !DILocation(line: 775, column: 7, scope: !1004)
!1023 = !DILocation(line: 777, column: 3, scope: !992)
!1024 = !DILocation(line: 778, column: 1, scope: !992)
!1025 = distinct !DISubprogram(name: "do_fixed_neg", scope: !1, file: !1, line: 690, type: !1026, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!357, !877, !834, !357}
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034}
!1029 = !DILocalVariable(name: "f", arg: 1, scope: !1025, file: !1, line: 690, type: !877)
!1030 = !DILocalVariable(name: "a", arg: 2, scope: !1025, file: !1, line: 690, type: !834)
!1031 = !DILocalVariable(name: "sat_p", arg: 3, scope: !1025, file: !1, line: 690, type: !357)
!1032 = !DILocalVariable(name: "overflow_p", scope: !1025, file: !1, line: 692, type: !357)
!1033 = !DILocalVariable(name: "unsigned_p", scope: !1025, file: !1, line: 693, type: !357)
!1034 = !DILocalVariable(name: "i_f_bits", scope: !1025, file: !1, line: 694, type: !358)
!1035 = !DILocation(line: 0, scope: !1025)
!1036 = !DILocation(line: 693, column: 21, scope: !1025)
!1037 = !DILocation(line: 694, column: 18, scope: !1025)
!1038 = !DILocation(line: 694, column: 44, scope: !1025)
!1039 = !DILocation(line: 694, column: 42, scope: !1025)
!1040 = !DILocation(line: 695, column: 6, scope: !1025)
!1041 = !DILocation(line: 695, column: 11, scope: !1025)
!1042 = !DILocation(line: 696, column: 13, scope: !1025)
!1043 = !DILocation(line: 697, column: 13, scope: !1025)
!1044 = !DILocation(line: 697, column: 39, scope: !1025)
!1045 = !DILocation(line: 697, column: 52, scope: !1025)
!1046 = !DILocation(line: 699, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 699, column: 7)
!1048 = !DILocation(line: 699, column: 7, scope: !1025)
!1049 = !DILocation(line: 701, column: 19, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 701, column: 11)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 700, column: 5)
!1052 = !DILocation(line: 701, column: 23, scope: !1050)
!1053 = !DILocation(line: 701, column: 28, scope: !1050)
!1054 = !DILocation(line: 701, column: 39, scope: !1050)
!1055 = !DILocation(line: 701, column: 44, scope: !1050)
!1056 = !DILocation(line: 701, column: 11, scope: !1051)
!1057 = !DILocation(line: 703, column: 8, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 703, column: 8)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 702, column: 2)
!1060 = !DILocation(line: 703, column: 8, scope: !1059)
!1061 = !DILocation(line: 705, column: 20, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 704, column: 6)
!1063 = !DILocation(line: 706, column: 21, scope: !1062)
!1064 = !DILocation(line: 707, column: 6, scope: !1062)
!1065 = !DILocation(line: 714, column: 21, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 714, column: 11)
!1067 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 713, column: 5)
!1068 = !DILocation(line: 714, column: 26, scope: !1066)
!1069 = !DILocation(line: 714, column: 31, scope: !1066)
!1070 = !DILocation(line: 714, column: 42, scope: !1066)
!1071 = !DILocation(line: 714, column: 46, scope: !1066)
!1072 = !DILocation(line: 715, column: 4, scope: !1066)
!1073 = !DILocation(line: 715, column: 31, scope: !1066)
!1074 = !DILocation(line: 715, column: 20, scope: !1066)
!1075 = !DILocation(line: 715, column: 36, scope: !1066)
!1076 = !DILocation(line: 715, column: 47, scope: !1066)
!1077 = !DILocation(line: 715, column: 62, scope: !1066)
!1078 = !DILocation(line: 715, column: 51, scope: !1066)
!1079 = !DILocation(line: 714, column: 11, scope: !1067)
!1080 = !DILocation(line: 717, column: 8, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 717, column: 8)
!1082 = distinct !DILexicalBlock(scope: !1066, file: !1, line: 716, column: 2)
!1083 = !DILocation(line: 717, column: 8, scope: !1082)
!1084 = !DILocation(line: 720, column: 20, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 718, column: 6)
!1086 = !DILocation(line: 721, column: 21, scope: !1085)
!1087 = !DILocation(line: 722, column: 18, scope: !1085)
!1088 = !DILocation(line: 723, column: 6, scope: !1085)
!1089 = !DILocation(line: 692, column: 8, scope: !1025)
!1090 = !DILocation(line: 728, column: 3, scope: !1025)
!1091 = distinct !DISubprogram(name: "do_fixed_add", scope: !1, file: !1, line: 290, type: !1092, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1094)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!357, !877, !834, !834, !357, !357}
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104}
!1095 = !DILocalVariable(name: "f", arg: 1, scope: !1091, file: !1, line: 290, type: !877)
!1096 = !DILocalVariable(name: "a", arg: 2, scope: !1091, file: !1, line: 290, type: !834)
!1097 = !DILocalVariable(name: "b", arg: 3, scope: !1091, file: !1, line: 291, type: !834)
!1098 = !DILocalVariable(name: "subtract_p", arg: 4, scope: !1091, file: !1, line: 291, type: !357)
!1099 = !DILocalVariable(name: "sat_p", arg: 5, scope: !1091, file: !1, line: 291, type: !357)
!1100 = !DILocalVariable(name: "overflow_p", scope: !1091, file: !1, line: 293, type: !357)
!1101 = !DILocalVariable(name: "unsigned_p", scope: !1091, file: !1, line: 294, type: !357)
!1102 = !DILocalVariable(name: "temp", scope: !1091, file: !1, line: 295, type: !840)
!1103 = !DILocalVariable(name: "i_f_bits", scope: !1091, file: !1, line: 296, type: !358)
!1104 = !DILocalVariable(name: "one", scope: !1105, file: !1, line: 362, type: !840)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 361, column: 3)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 360, column: 12)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 354, column: 6)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 353, column: 8)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 352, column: 2)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 342, column: 11)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 341, column: 5)
!1112 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 309, column: 7)
!1113 = !DILocation(line: 0, scope: !1091)
!1114 = !DILocation(line: 295, column: 3, scope: !1091)
!1115 = !DILocation(line: 300, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 300, column: 7)
!1117 = !DILocation(line: 300, column: 7, scope: !1091)
!1118 = !DILocation(line: 301, column: 12, scope: !1116)
!1119 = !DILocation(line: 301, column: 5, scope: !1116)
!1120 = !DILocation(line: 303, column: 15, scope: !1116)
!1121 = !DILocation(line: 305, column: 16, scope: !1091)
!1122 = !DILocation(line: 306, column: 14, scope: !1091)
!1123 = !DILocation(line: 306, column: 40, scope: !1091)
!1124 = !DILocation(line: 306, column: 38, scope: !1091)
!1125 = !DILocation(line: 307, column: 6, scope: !1091)
!1126 = !DILocation(line: 307, column: 11, scope: !1091)
!1127 = !DILocation(line: 308, column: 13, scope: !1091)
!1128 = !DILocation(line: 309, column: 7, scope: !1112)
!1129 = !DILocation(line: 0, scope: !1112)
!1130 = !DILocation(line: 309, column: 7, scope: !1091)
!1131 = !DILocation(line: 311, column: 11, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 310, column: 5)
!1133 = !DILocation(line: 313, column: 8, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 313, column: 8)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 312, column: 2)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 311, column: 11)
!1137 = !DILocation(line: 313, column: 45, scope: !1134)
!1138 = !DILocation(line: 313, column: 8, scope: !1135)
!1139 = !DILocation(line: 315, column: 12, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 315, column: 12)
!1141 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 314, column: 6)
!1142 = !DILocation(line: 315, column: 12, scope: !1141)
!1143 = !DILocation(line: 317, column: 13, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 316, column: 3)
!1145 = !DILocation(line: 317, column: 18, scope: !1144)
!1146 = !DILocation(line: 318, column: 13, scope: !1144)
!1147 = !DILocation(line: 318, column: 17, scope: !1144)
!1148 = !DILocation(line: 319, column: 4, scope: !1144)
!1149 = !DILocation(line: 326, column: 14, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 325, column: 2)
!1151 = !DILocation(line: 327, column: 8, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 327, column: 8)
!1153 = !DILocation(line: 327, column: 45, scope: !1152)
!1154 = !DILocation(line: 328, column: 8, scope: !1152)
!1155 = !DILocation(line: 328, column: 11, scope: !1152)
!1156 = !DILocation(line: 328, column: 48, scope: !1152)
!1157 = !DILocation(line: 327, column: 8, scope: !1150)
!1158 = !DILocation(line: 330, column: 12, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 330, column: 12)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 329, column: 6)
!1161 = !DILocation(line: 330, column: 12, scope: !1160)
!1162 = !DILocation(line: 332, column: 18, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 331, column: 3)
!1164 = !DILocation(line: 333, column: 17, scope: !1163)
!1165 = !DILocation(line: 334, column: 3, scope: !1163)
!1166 = !DILocation(line: 343, column: 5, scope: !1110)
!1167 = !DILocation(line: 343, column: 9, scope: !1110)
!1168 = !DILocation(line: 344, column: 12, scope: !1110)
!1169 = !DILocation(line: 344, column: 9, scope: !1110)
!1170 = !DILocation(line: 345, column: 5, scope: !1110)
!1171 = !DILocation(line: 345, column: 9, scope: !1110)
!1172 = !DILocation(line: 346, column: 12, scope: !1110)
!1173 = !DILocation(line: 346, column: 9, scope: !1110)
!1174 = !DILocation(line: 347, column: 4, scope: !1110)
!1175 = !DILocation(line: 348, column: 8, scope: !1110)
!1176 = !DILocation(line: 348, column: 12, scope: !1110)
!1177 = !DILocation(line: 349, column: 8, scope: !1110)
!1178 = !DILocation(line: 349, column: 5, scope: !1110)
!1179 = !DILocation(line: 350, column: 8, scope: !1110)
!1180 = !DILocation(line: 350, column: 12, scope: !1110)
!1181 = !DILocation(line: 351, column: 8, scope: !1110)
!1182 = !DILocation(line: 351, column: 5, scope: !1110)
!1183 = !DILocation(line: 342, column: 11, scope: !1111)
!1184 = !DILocation(line: 353, column: 8, scope: !1108)
!1185 = !DILocation(line: 353, column: 8, scope: !1109)
!1186 = !DILocation(line: 355, column: 16, scope: !1107)
!1187 = !DILocation(line: 355, column: 20, scope: !1107)
!1188 = !DILocation(line: 356, column: 16, scope: !1107)
!1189 = !DILocation(line: 356, column: 21, scope: !1107)
!1190 = !DILocation(line: 357, column: 50, scope: !1107)
!1191 = !DILocation(line: 357, column: 8, scope: !1107)
!1192 = !DILocation(line: 360, column: 12, scope: !1106)
!1193 = !DILocation(line: 360, column: 51, scope: !1106)
!1194 = !DILocation(line: 360, column: 12, scope: !1107)
!1195 = !DILocation(line: 365, column: 15, scope: !1105)
!1196 = !DILocation(line: 365, column: 40, scope: !1105)
!1197 = !DILocation(line: 366, column: 3, scope: !1105)
!1198 = !DILocation(line: 293, column: 8, scope: !1091)
!1199 = !DILocation(line: 372, column: 13, scope: !1091)
!1200 = !DILocation(line: 372, column: 39, scope: !1091)
!1201 = !DILocation(line: 372, column: 52, scope: !1091)
!1202 = !DILocation(line: 374, column: 1, scope: !1091)
!1203 = !DILocation(line: 373, column: 3, scope: !1091)
!1204 = distinct !DISubprogram(name: "do_fixed_multiply", scope: !1, file: !1, line: 381, type: !1205, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!357, !877, !834, !834, !357}
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1208 = !DILocalVariable(name: "f", arg: 1, scope: !1204, file: !1, line: 381, type: !877)
!1209 = !DILocalVariable(name: "a", arg: 2, scope: !1204, file: !1, line: 381, type: !834)
!1210 = !DILocalVariable(name: "b", arg: 3, scope: !1204, file: !1, line: 382, type: !834)
!1211 = !DILocalVariable(name: "sat_p", arg: 4, scope: !1204, file: !1, line: 382, type: !357)
!1212 = !DILocalVariable(name: "overflow_p", scope: !1204, file: !1, line: 384, type: !357)
!1213 = !DILocalVariable(name: "unsigned_p", scope: !1204, file: !1, line: 385, type: !357)
!1214 = !DILocalVariable(name: "i_f_bits", scope: !1204, file: !1, line: 386, type: !358)
!1215 = !DILocalVariable(name: "a_high", scope: !1216, file: !1, line: 400, type: !840)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 398, column: 5)
!1217 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 388, column: 7)
!1218 = !DILocalVariable(name: "a_low", scope: !1216, file: !1, line: 400, type: !840)
!1219 = !DILocalVariable(name: "b_high", scope: !1216, file: !1, line: 400, type: !840)
!1220 = !DILocalVariable(name: "b_low", scope: !1216, file: !1, line: 400, type: !840)
!1221 = !DILocalVariable(name: "high_high", scope: !1216, file: !1, line: 401, type: !840)
!1222 = !DILocalVariable(name: "high_low", scope: !1216, file: !1, line: 401, type: !840)
!1223 = !DILocalVariable(name: "low_high", scope: !1216, file: !1, line: 401, type: !840)
!1224 = !DILocalVariable(name: "low_low", scope: !1216, file: !1, line: 401, type: !840)
!1225 = !DILocalVariable(name: "r", scope: !1216, file: !1, line: 402, type: !840)
!1226 = !DILocalVariable(name: "s", scope: !1216, file: !1, line: 402, type: !840)
!1227 = !DILocalVariable(name: "temp1", scope: !1216, file: !1, line: 402, type: !840)
!1228 = !DILocalVariable(name: "temp2", scope: !1216, file: !1, line: 402, type: !840)
!1229 = !DILocalVariable(name: "carry", scope: !1216, file: !1, line: 403, type: !358)
!1230 = !DILocation(line: 0, scope: !1204)
!1231 = !DILocation(line: 385, column: 21, scope: !1204)
!1232 = !DILocation(line: 386, column: 18, scope: !1204)
!1233 = !DILocation(line: 386, column: 44, scope: !1204)
!1234 = !DILocation(line: 386, column: 42, scope: !1204)
!1235 = !DILocation(line: 387, column: 6, scope: !1204)
!1236 = !DILocation(line: 387, column: 11, scope: !1204)
!1237 = !DILocation(line: 388, column: 7, scope: !1217)
!1238 = !DILocation(line: 388, column: 36, scope: !1217)
!1239 = !DILocation(line: 388, column: 7, scope: !1204)
!1240 = !DILocation(line: 390, column: 17, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 389, column: 5)
!1242 = !DILocation(line: 391, column: 30, scope: !1241)
!1243 = !DILocation(line: 391, column: 43, scope: !1241)
!1244 = !DILocation(line: 392, column: 10, scope: !1241)
!1245 = !DILocation(line: 392, column: 9, scope: !1241)
!1246 = !DILocation(line: 394, column: 37, scope: !1241)
!1247 = !DILocation(line: 391, column: 7, scope: !1241)
!1248 = !DILocation(line: 395, column: 40, scope: !1241)
!1249 = !DILocation(line: 395, column: 59, scope: !1241)
!1250 = !DILocation(line: 395, column: 20, scope: !1241)
!1251 = !DILocation(line: 396, column: 5, scope: !1241)
!1252 = !DILocation(line: 401, column: 7, scope: !1216)
!1253 = !DILocation(line: 402, column: 7, scope: !1216)
!1254 = !DILocation(line: 0, scope: !1216)
!1255 = !DILocation(line: 406, column: 28, scope: !1216)
!1256 = !DILocation(line: 408, column: 27, scope: !1216)
!1257 = !DILocation(line: 410, column: 28, scope: !1216)
!1258 = !DILocation(line: 412, column: 27, scope: !1216)
!1259 = !DILocation(line: 416, column: 17, scope: !1216)
!1260 = !DILocation(line: 417, column: 18, scope: !1216)
!1261 = !DILocation(line: 418, column: 18, scope: !1216)
!1262 = !DILocation(line: 419, column: 19, scope: !1216)
!1263 = !DILocation(line: 422, column: 29, scope: !1216)
!1264 = !DILocation(line: 424, column: 11, scope: !1216)
!1265 = !DILocation(line: 425, column: 11, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 425, column: 11)
!1267 = !DILocation(line: 425, column: 42, scope: !1266)
!1268 = !DILocation(line: 426, column: 4, scope: !1266)
!1269 = !DILocation(line: 426, column: 7, scope: !1266)
!1270 = !DILocation(line: 426, column: 36, scope: !1266)
!1271 = !DILocation(line: 425, column: 11, scope: !1216)
!1272 = !DILocation(line: 427, column: 2, scope: !1266)
!1273 = !DILocation(line: 430, column: 29, scope: !1216)
!1274 = !DILocation(line: 432, column: 11, scope: !1216)
!1275 = !DILocation(line: 433, column: 11, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 433, column: 11)
!1277 = !DILocation(line: 433, column: 40, scope: !1276)
!1278 = !DILocation(line: 434, column: 4, scope: !1276)
!1279 = !DILocation(line: 434, column: 7, scope: !1276)
!1280 = !DILocation(line: 434, column: 36, scope: !1276)
!1281 = !DILocation(line: 433, column: 11, scope: !1216)
!1282 = !DILocation(line: 435, column: 8, scope: !1276)
!1283 = !DILocation(line: 435, column: 2, scope: !1276)
!1284 = !DILocation(line: 437, column: 28, scope: !1216)
!1285 = !DILocation(line: 439, column: 11, scope: !1216)
!1286 = !DILocation(line: 440, column: 28, scope: !1216)
!1287 = !DILocation(line: 442, column: 11, scope: !1216)
!1288 = !DILocation(line: 443, column: 19, scope: !1216)
!1289 = !DILocation(line: 445, column: 11, scope: !1216)
!1290 = !DILocation(line: 448, column: 23, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 448, column: 11)
!1292 = !DILocation(line: 448, column: 34, scope: !1291)
!1293 = !DILocation(line: 448, column: 39, scope: !1291)
!1294 = !DILocation(line: 448, column: 11, scope: !1216)
!1295 = !DILocation(line: 449, column: 6, scope: !1291)
!1296 = !DILocation(line: 449, column: 25, scope: !1291)
!1297 = !DILocation(line: 449, column: 2, scope: !1291)
!1298 = !DILocation(line: 451, column: 23, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 451, column: 11)
!1300 = !DILocation(line: 451, column: 34, scope: !1299)
!1301 = !DILocation(line: 451, column: 39, scope: !1299)
!1302 = !DILocation(line: 451, column: 11, scope: !1216)
!1303 = !DILocation(line: 452, column: 6, scope: !1299)
!1304 = !DILocation(line: 452, column: 25, scope: !1299)
!1305 = !DILocation(line: 452, column: 2, scope: !1299)
!1306 = !DILocation(line: 455, column: 11, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 455, column: 11)
!1308 = !DILocation(line: 455, column: 35, scope: !1307)
!1309 = !DILocation(line: 455, column: 11, scope: !1216)
!1310 = !DILocation(line: 457, column: 14, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 456, column: 2)
!1312 = !DILocation(line: 457, column: 10, scope: !1311)
!1313 = !DILocation(line: 458, column: 15, scope: !1311)
!1314 = !DILocation(line: 458, column: 11, scope: !1311)
!1315 = !DILocation(line: 459, column: 8, scope: !1311)
!1316 = !DILocation(line: 463, column: 6, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 460, column: 6)
!1318 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 459, column: 8)
!1319 = !DILocation(line: 0, scope: !1318)
!1320 = !DILocation(line: 469, column: 12, scope: !1311)
!1321 = !DILocation(line: 469, column: 16, scope: !1311)
!1322 = !DILocation(line: 470, column: 12, scope: !1311)
!1323 = !DILocation(line: 470, column: 17, scope: !1311)
!1324 = !DILocation(line: 496, column: 39, scope: !1204)
!1325 = !DILocation(line: 471, column: 2, scope: !1311)
!1326 = !DILocation(line: 475, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 473, column: 2)
!1328 = !DILocation(line: 475, column: 6, scope: !1327)
!1329 = !DILocation(line: 474, column: 4, scope: !1327)
!1330 = !DILocation(line: 478, column: 21, scope: !1327)
!1331 = !DILocation(line: 478, column: 28, scope: !1327)
!1332 = !DILocation(line: 480, column: 8, scope: !1327)
!1333 = !DILocation(line: 480, column: 6, scope: !1327)
!1334 = !DILocation(line: 482, column: 14, scope: !1327)
!1335 = !DILocation(line: 482, column: 28, scope: !1327)
!1336 = !DILocation(line: 478, column: 4, scope: !1327)
!1337 = !DILocation(line: 483, column: 26, scope: !1327)
!1338 = !DILocation(line: 483, column: 34, scope: !1327)
!1339 = !DILocation(line: 483, column: 30, scope: !1327)
!1340 = !DILocation(line: 483, column: 16, scope: !1327)
!1341 = !DILocation(line: 484, column: 27, scope: !1327)
!1342 = !DILocation(line: 484, column: 36, scope: !1327)
!1343 = !DILocation(line: 484, column: 32, scope: !1327)
!1344 = !DILocation(line: 484, column: 17, scope: !1327)
!1345 = !DILocation(line: 485, column: 10, scope: !1327)
!1346 = !DILocation(line: 486, column: 11, scope: !1327)
!1347 = !DILocation(line: 488, column: 7, scope: !1327)
!1348 = !DILocation(line: 488, column: 6, scope: !1327)
!1349 = !DILocation(line: 490, column: 22, scope: !1327)
!1350 = !DILocation(line: 487, column: 4, scope: !1327)
!1351 = !DILocation(line: 493, column: 40, scope: !1216)
!1352 = !DILocation(line: 493, column: 20, scope: !1216)
!1353 = !DILocation(line: 493, column: 56, scope: !1216)
!1354 = !DILocation(line: 494, column: 5, scope: !1217)
!1355 = !DILocation(line: 496, column: 13, scope: !1204)
!1356 = !DILocation(line: 0, scope: !1217)
!1357 = !DILocation(line: 496, column: 52, scope: !1204)
!1358 = !DILocation(line: 497, column: 3, scope: !1204)
!1359 = distinct !DISubprogram(name: "do_fixed_divide", scope: !1, file: !1, line: 505, type: !1205, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1361 = !DILocalVariable(name: "f", arg: 1, scope: !1359, file: !1, line: 505, type: !877)
!1362 = !DILocalVariable(name: "a", arg: 2, scope: !1359, file: !1, line: 505, type: !834)
!1363 = !DILocalVariable(name: "b", arg: 3, scope: !1359, file: !1, line: 506, type: !834)
!1364 = !DILocalVariable(name: "sat_p", arg: 4, scope: !1359, file: !1, line: 506, type: !357)
!1365 = !DILocalVariable(name: "overflow_p", scope: !1359, file: !1, line: 508, type: !357)
!1366 = !DILocalVariable(name: "unsigned_p", scope: !1359, file: !1, line: 509, type: !357)
!1367 = !DILocalVariable(name: "i_f_bits", scope: !1359, file: !1, line: 510, type: !358)
!1368 = !DILocalVariable(name: "pos_a", scope: !1369, file: !1, line: 523, type: !840)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 522, column: 5)
!1370 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 512, column: 7)
!1371 = !DILocalVariable(name: "pos_b", scope: !1369, file: !1, line: 523, type: !840)
!1372 = !DILocalVariable(name: "r", scope: !1369, file: !1, line: 523, type: !840)
!1373 = !DILocalVariable(name: "s", scope: !1369, file: !1, line: 523, type: !840)
!1374 = !DILocalVariable(name: "quo_r", scope: !1369, file: !1, line: 524, type: !840)
!1375 = !DILocalVariable(name: "quo_s", scope: !1369, file: !1, line: 524, type: !840)
!1376 = !DILocalVariable(name: "mod", scope: !1369, file: !1, line: 524, type: !840)
!1377 = !DILocalVariable(name: "temp", scope: !1369, file: !1, line: 524, type: !840)
!1378 = !DILocalVariable(name: "num_of_neg", scope: !1369, file: !1, line: 525, type: !358)
!1379 = !DILocalVariable(name: "i", scope: !1369, file: !1, line: 526, type: !358)
!1380 = !DILocalVariable(name: "leftmost_mod", scope: !1381, file: !1, line: 577, type: !358)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 575, column: 2)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 574, column: 7)
!1383 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 574, column: 7)
!1384 = !DILocation(line: 0, scope: !1359)
!1385 = !DILocation(line: 509, column: 21, scope: !1359)
!1386 = !DILocation(line: 510, column: 18, scope: !1359)
!1387 = !DILocation(line: 510, column: 44, scope: !1359)
!1388 = !DILocation(line: 510, column: 42, scope: !1359)
!1389 = !DILocation(line: 511, column: 6, scope: !1359)
!1390 = !DILocation(line: 511, column: 11, scope: !1359)
!1391 = !DILocation(line: 512, column: 7, scope: !1370)
!1392 = !DILocation(line: 512, column: 36, scope: !1370)
!1393 = !DILocation(line: 512, column: 7, scope: !1359)
!1394 = !DILocation(line: 514, column: 30, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 513, column: 5)
!1396 = !DILocation(line: 514, column: 43, scope: !1395)
!1397 = !DILocation(line: 515, column: 8, scope: !1395)
!1398 = !DILocation(line: 517, column: 17, scope: !1395)
!1399 = !DILocation(line: 517, column: 31, scope: !1395)
!1400 = !DILocation(line: 517, column: 37, scope: !1395)
!1401 = !DILocation(line: 514, column: 7, scope: !1395)
!1402 = !DILocation(line: 518, column: 17, scope: !1395)
!1403 = !DILocation(line: 519, column: 40, scope: !1395)
!1404 = !DILocation(line: 519, column: 59, scope: !1395)
!1405 = !DILocation(line: 519, column: 20, scope: !1395)
!1406 = !DILocation(line: 520, column: 5, scope: !1395)
!1407 = !DILocation(line: 523, column: 7, scope: !1369)
!1408 = !DILocation(line: 524, column: 7, scope: !1369)
!1409 = !DILocation(line: 0, scope: !1369)
!1410 = !DILocation(line: 529, column: 12, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 529, column: 11)
!1412 = !DILocation(line: 529, column: 23, scope: !1411)
!1413 = !DILocation(line: 529, column: 34, scope: !1411)
!1414 = !DILocation(line: 529, column: 39, scope: !1411)
!1415 = !DILocation(line: 529, column: 11, scope: !1369)
!1416 = !DILocation(line: 531, column: 12, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 530, column: 2)
!1418 = !DILocation(line: 533, column: 2, scope: !1417)
!1419 = !DILocation(line: 535, column: 13, scope: !1411)
!1420 = !DILocation(line: 538, column: 23, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 538, column: 11)
!1422 = !DILocation(line: 538, column: 34, scope: !1421)
!1423 = !DILocation(line: 538, column: 39, scope: !1421)
!1424 = !DILocation(line: 538, column: 11, scope: !1369)
!1425 = !DILocation(line: 540, column: 12, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 539, column: 2)
!1427 = !DILocation(line: 541, column: 15, scope: !1426)
!1428 = !DILocation(line: 542, column: 2, scope: !1426)
!1429 = !DILocation(line: 544, column: 13, scope: !1421)
!1430 = !DILocation(line: 547, column: 11, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 547, column: 11)
!1432 = !DILocation(line: 547, column: 35, scope: !1431)
!1433 = !DILocation(line: 547, column: 11, scope: !1369)
!1434 = !DILocation(line: 549, column: 8, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 548, column: 2)
!1436 = !DILocation(line: 550, column: 6, scope: !1435)
!1437 = !DILocation(line: 550, column: 11, scope: !1435)
!1438 = !DILocation(line: 551, column: 6, scope: !1435)
!1439 = !DILocation(line: 551, column: 10, scope: !1435)
!1440 = !DILocation(line: 552, column: 2, scope: !1435)
!1441 = !DILocation(line: 555, column: 25, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 554, column: 3)
!1443 = !DILocation(line: 555, column: 36, scope: !1442)
!1444 = !DILocation(line: 556, column: 5, scope: !1442)
!1445 = !DILocation(line: 558, column: 8, scope: !1442)
!1446 = !DILocation(line: 558, column: 16, scope: !1442)
!1447 = !DILocation(line: 555, column: 4, scope: !1442)
!1448 = !DILocation(line: 561, column: 10, scope: !1442)
!1449 = !DILocation(line: 560, column: 5, scope: !1442)
!1450 = !DILocation(line: 563, column: 8, scope: !1442)
!1451 = !DILocation(line: 563, column: 16, scope: !1442)
!1452 = !DILocation(line: 559, column: 4, scope: !1442)
!1453 = !DILocation(line: 567, column: 50, scope: !1369)
!1454 = !DILocation(line: 567, column: 57, scope: !1369)
!1455 = !DILocation(line: 567, column: 69, scope: !1369)
!1456 = !DILocation(line: 568, column: 14, scope: !1369)
!1457 = !DILocation(line: 568, column: 27, scope: !1369)
!1458 = !DILocation(line: 568, column: 39, scope: !1369)
!1459 = !DILocation(line: 568, column: 50, scope: !1369)
!1460 = !DILocation(line: 569, column: 13, scope: !1369)
!1461 = !DILocation(line: 567, column: 7, scope: !1369)
!1462 = !DILocation(line: 571, column: 13, scope: !1369)
!1463 = !DILocation(line: 571, column: 18, scope: !1369)
!1464 = !DILocation(line: 572, column: 13, scope: !1369)
!1465 = !DILocation(line: 572, column: 17, scope: !1369)
!1466 = !DILocation(line: 0, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 584, column: 8)
!1468 = !DILocation(line: 0, scope: !1381)
!1469 = !DILocation(line: 574, column: 12, scope: !1383)
!1470 = !DILocation(line: 0, scope: !1383)
!1471 = !DILocation(line: 574, column: 21, scope: !1382)
!1472 = !DILocation(line: 574, column: 7, scope: !1383)
!1473 = !DILocation(line: 577, column: 28, scope: !1381)
!1474 = !DILocation(line: 580, column: 23, scope: !1381)
!1475 = !DILocation(line: 580, column: 4, scope: !1381)
!1476 = !DILocation(line: 584, column: 10, scope: !1467)
!1477 = !DILocation(line: 584, column: 15, scope: !1467)
!1478 = !DILocation(line: 584, column: 8, scope: !1381)
!1479 = !DILocation(line: 585, column: 14, scope: !1467)
!1480 = !DILocation(line: 585, column: 6, scope: !1467)
!1481 = !DILocation(line: 588, column: 25, scope: !1381)
!1482 = !DILocation(line: 588, column: 36, scope: !1381)
!1483 = !DILocation(line: 588, column: 4, scope: !1381)
!1484 = !DILocation(line: 592, column: 11, scope: !1381)
!1485 = !DILocation(line: 592, column: 32, scope: !1381)
!1486 = !DILocation(line: 594, column: 21, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 594, column: 8)
!1488 = !DILocation(line: 594, column: 26, scope: !1487)
!1489 = !DILocation(line: 594, column: 29, scope: !1487)
!1490 = !DILocation(line: 594, column: 60, scope: !1487)
!1491 = !DILocation(line: 594, column: 8, scope: !1381)
!1492 = !DILocation(line: 596, column: 18, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 595, column: 6)
!1494 = !DILocation(line: 597, column: 14, scope: !1493)
!1495 = !DILocation(line: 598, column: 6, scope: !1493)
!1496 = !DILocation(line: 601, column: 21, scope: !1381)
!1497 = !DILocation(line: 601, column: 28, scope: !1381)
!1498 = !DILocation(line: 601, column: 4, scope: !1381)
!1499 = !DILocation(line: 574, column: 52, scope: !1382)
!1500 = !DILocation(line: 574, column: 7, scope: !1382)
!1501 = distinct !{!1501, !1472, !1502}
!1502 = !DILocation(line: 604, column: 2, scope: !1383)
!1503 = !DILocation(line: 606, column: 22, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 606, column: 11)
!1505 = !DILocation(line: 606, column: 11, scope: !1369)
!1506 = !DILocation(line: 608, column: 12, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 607, column: 2)
!1508 = !DILocation(line: 609, column: 14, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 609, column: 8)
!1510 = !DILocation(line: 609, column: 19, scope: !1509)
!1511 = !DILocation(line: 609, column: 24, scope: !1509)
!1512 = !DILocation(line: 609, column: 33, scope: !1509)
!1513 = !DILocation(line: 609, column: 37, scope: !1509)
!1514 = !DILocation(line: 609, column: 8, scope: !1507)
!1515 = !DILocation(line: 610, column: 14, scope: !1509)
!1516 = !DILocation(line: 610, column: 6, scope: !1509)
!1517 = !DILocation(line: 613, column: 27, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1509, file: !1, line: 612, column: 6)
!1519 = !DILocation(line: 613, column: 20, scope: !1518)
!1520 = !DILocation(line: 613, column: 18, scope: !1518)
!1521 = !DILocation(line: 614, column: 28, scope: !1518)
!1522 = !DILocation(line: 614, column: 21, scope: !1518)
!1523 = !DILocation(line: 614, column: 19, scope: !1518)
!1524 = !DILocation(line: 618, column: 17, scope: !1369)
!1525 = !DILocation(line: 619, column: 40, scope: !1369)
!1526 = !DILocation(line: 619, column: 64, scope: !1369)
!1527 = !DILocation(line: 619, column: 20, scope: !1369)
!1528 = !DILocation(line: 620, column: 5, scope: !1370)
!1529 = !DILocation(line: 622, column: 39, scope: !1359)
!1530 = !DILocation(line: 622, column: 13, scope: !1359)
!1531 = !DILocation(line: 0, scope: !1370)
!1532 = !DILocation(line: 622, column: 52, scope: !1359)
!1533 = !DILocation(line: 623, column: 3, scope: !1359)
!1534 = distinct !DISubprogram(name: "do_fixed_shift", scope: !1, file: !1, line: 631, type: !1092, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1535)
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1547}
!1536 = !DILocalVariable(name: "f", arg: 1, scope: !1534, file: !1, line: 631, type: !877)
!1537 = !DILocalVariable(name: "a", arg: 2, scope: !1534, file: !1, line: 631, type: !834)
!1538 = !DILocalVariable(name: "b", arg: 3, scope: !1534, file: !1, line: 632, type: !834)
!1539 = !DILocalVariable(name: "left_p", arg: 4, scope: !1534, file: !1, line: 632, type: !357)
!1540 = !DILocalVariable(name: "sat_p", arg: 5, scope: !1534, file: !1, line: 632, type: !357)
!1541 = !DILocalVariable(name: "overflow_p", scope: !1534, file: !1, line: 634, type: !357)
!1542 = !DILocalVariable(name: "unsigned_p", scope: !1534, file: !1, line: 635, type: !357)
!1543 = !DILocalVariable(name: "i_f_bits", scope: !1534, file: !1, line: 636, type: !358)
!1544 = !DILocalVariable(name: "temp_high", scope: !1545, file: !1, line: 656, type: !840)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 655, column: 5)
!1546 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 645, column: 7)
!1547 = !DILocalVariable(name: "temp_low", scope: !1545, file: !1, line: 656, type: !840)
!1548 = !DILocation(line: 0, scope: !1534)
!1549 = !DILocation(line: 635, column: 21, scope: !1534)
!1550 = !DILocation(line: 636, column: 18, scope: !1534)
!1551 = !DILocation(line: 636, column: 44, scope: !1534)
!1552 = !DILocation(line: 636, column: 42, scope: !1534)
!1553 = !DILocation(line: 637, column: 6, scope: !1534)
!1554 = !DILocation(line: 637, column: 11, scope: !1534)
!1555 = !DILocation(line: 639, column: 15, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 639, column: 7)
!1557 = !DILocation(line: 639, column: 19, scope: !1556)
!1558 = !DILocation(line: 639, column: 7, scope: !1534)
!1559 = !DILocation(line: 641, column: 20, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 640, column: 5)
!1561 = !DILocation(line: 642, column: 7, scope: !1560)
!1562 = !DILocation(line: 645, column: 7, scope: !1546)
!1563 = !DILocation(line: 645, column: 36, scope: !1546)
!1564 = !DILocation(line: 645, column: 67, scope: !1546)
!1565 = !DILocation(line: 645, column: 62, scope: !1546)
!1566 = !DILocation(line: 647, column: 30, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 646, column: 5)
!1568 = !DILocation(line: 647, column: 43, scope: !1567)
!1569 = !DILocation(line: 648, column: 8, scope: !1567)
!1570 = !DILocation(line: 650, column: 17, scope: !1567)
!1571 = !DILocation(line: 650, column: 31, scope: !1567)
!1572 = !DILocation(line: 650, column: 37, scope: !1567)
!1573 = !DILocation(line: 647, column: 7, scope: !1567)
!1574 = !DILocation(line: 651, column: 11, scope: !1567)
!1575 = !DILocation(line: 652, column: 35, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 651, column: 11)
!1577 = !DILocation(line: 652, column: 54, scope: !1576)
!1578 = !DILocation(line: 652, column: 15, scope: !1576)
!1579 = !DILocation(line: 652, column: 2, scope: !1576)
!1580 = !DILocation(line: 656, column: 7, scope: !1545)
!1581 = !DILocation(line: 657, column: 23, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 657, column: 11)
!1583 = !DILocation(line: 657, column: 11, scope: !1545)
!1584 = !DILocation(line: 659, column: 19, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !1, line: 658, column: 2)
!1586 = !DILocation(line: 660, column: 13, scope: !1585)
!1587 = !DILocation(line: 660, column: 18, scope: !1585)
!1588 = !DILocation(line: 661, column: 13, scope: !1585)
!1589 = !DILocation(line: 661, column: 17, scope: !1585)
!1590 = !DILocation(line: 662, column: 2, scope: !1585)
!1591 = !DILocation(line: 665, column: 27, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1582, file: !1, line: 664, column: 2)
!1593 = !DILocation(line: 665, column: 40, scope: !1592)
!1594 = !DILocation(line: 668, column: 15, scope: !1592)
!1595 = !DILocation(line: 668, column: 30, scope: !1592)
!1596 = !DILocation(line: 668, column: 36, scope: !1592)
!1597 = !DILocation(line: 665, column: 4, scope: !1592)
!1598 = !DILocation(line: 670, column: 27, scope: !1592)
!1599 = !DILocation(line: 670, column: 40, scope: !1592)
!1600 = !DILocation(line: 671, column: 13, scope: !1592)
!1601 = !DILocation(line: 671, column: 17, scope: !1592)
!1602 = !DILocation(line: 673, column: 16, scope: !1592)
!1603 = !DILocation(line: 673, column: 32, scope: !1592)
!1604 = !DILocation(line: 670, column: 4, scope: !1592)
!1605 = !DILocation(line: 675, column: 12, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 675, column: 11)
!1607 = !DILocation(line: 675, column: 23, scope: !1606)
!1608 = !DILocation(line: 675, column: 34, scope: !1606)
!1609 = !DILocation(line: 675, column: 39, scope: !1606)
!1610 = !DILocation(line: 675, column: 11, scope: !1545)
!1611 = !DILocation(line: 676, column: 14, scope: !1606)
!1612 = !DILocation(line: 676, column: 49, scope: !1606)
!1613 = !DILocation(line: 676, column: 41, scope: !1606)
!1614 = !DILocation(line: 676, column: 2, scope: !1606)
!1615 = !DILocation(line: 677, column: 17, scope: !1545)
!1616 = !DILocation(line: 678, column: 40, scope: !1545)
!1617 = !DILocation(line: 678, column: 71, scope: !1545)
!1618 = !DILocation(line: 678, column: 20, scope: !1545)
!1619 = !DILocation(line: 680, column: 5, scope: !1546)
!1620 = !DILocation(line: 681, column: 39, scope: !1534)
!1621 = !DILocation(line: 0, scope: !1546)
!1622 = !DILocation(line: 681, column: 13, scope: !1534)
!1623 = !DILocation(line: 681, column: 52, scope: !1534)
!1624 = !DILocation(line: 682, column: 3, scope: !1534)
!1625 = !DILocation(line: 683, column: 1, scope: !1534)
!1626 = distinct !DISubprogram(name: "fixed_compare", scope: !1, file: !1, line: 784, type: !1627, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!357, !358, !834, !834}
!1629 = !{!1630, !1631, !1632, !1633}
!1630 = !DILocalVariable(name: "icode", arg: 1, scope: !1626, file: !1, line: 784, type: !358)
!1631 = !DILocalVariable(name: "op0", arg: 2, scope: !1626, file: !1, line: 784, type: !834)
!1632 = !DILocalVariable(name: "op1", arg: 3, scope: !1626, file: !1, line: 785, type: !834)
!1633 = !DILocalVariable(name: "code", scope: !1626, file: !1, line: 787, type: !160)
!1634 = !DILocation(line: 0, scope: !1626)
!1635 = !DILocation(line: 788, column: 3, scope: !1626)
!1636 = !DILocation(line: 790, column: 3, scope: !1626)
!1637 = !DILocation(line: 793, column: 15, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 791, column: 5)
!1639 = !DILocation(line: 793, column: 14, scope: !1638)
!1640 = !DILocation(line: 793, column: 7, scope: !1638)
!1641 = !DILocation(line: 796, column: 14, scope: !1638)
!1642 = !DILocation(line: 796, column: 7, scope: !1638)
!1643 = !DILocation(line: 800, column: 9, scope: !1638)
!1644 = !DILocation(line: 799, column: 14, scope: !1638)
!1645 = !DILocation(line: 800, column: 50, scope: !1638)
!1646 = !DILocation(line: 799, column: 7, scope: !1638)
!1647 = !DILocation(line: 804, column: 9, scope: !1638)
!1648 = !DILocation(line: 803, column: 14, scope: !1638)
!1649 = !DILocation(line: 804, column: 50, scope: !1638)
!1650 = !DILocation(line: 803, column: 7, scope: !1638)
!1651 = !DILocation(line: 808, column: 9, scope: !1638)
!1652 = !DILocation(line: 807, column: 14, scope: !1638)
!1653 = !DILocation(line: 808, column: 50, scope: !1638)
!1654 = !DILocation(line: 807, column: 7, scope: !1638)
!1655 = !DILocation(line: 812, column: 9, scope: !1638)
!1656 = !DILocation(line: 811, column: 14, scope: !1638)
!1657 = !DILocation(line: 812, column: 50, scope: !1638)
!1658 = !DILocation(line: 811, column: 7, scope: !1638)
!1659 = !DILocation(line: 815, column: 7, scope: !1638)
!1660 = !DILocation(line: 818, column: 5, scope: !1626)
!1661 = !DILocation(line: 820, column: 1, scope: !1626)
!1662 = distinct !DISubprogram(name: "double_int_equal_p", scope: !841, file: !841, line: 176, type: !1663, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1665)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!357, !840, !840}
!1665 = !{!1666, !1667}
!1666 = !DILocalVariable(name: "cst1", arg: 1, scope: !1662, file: !841, line: 176, type: !840)
!1667 = !DILocalVariable(name: "cst2", arg: 2, scope: !1662, file: !841, line: 176, type: !840)
!1668 = !DILocation(line: 178, column: 19, scope: !1662)
!1669 = !DILocation(line: 178, column: 31, scope: !1662)
!1670 = !DILocation(line: 178, column: 44, scope: !1662)
!1671 = !DILocation(line: 178, column: 3, scope: !1662)
!1672 = distinct !DISubprogram(name: "fixed_convert", scope: !1, file: !1, line: 827, type: !1673, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1675)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!357, !877, !3, !834, !357}
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1684, !1685, !1686}
!1676 = !DILocalVariable(name: "f", arg: 1, scope: !1672, file: !1, line: 827, type: !877)
!1677 = !DILocalVariable(name: "mode", arg: 2, scope: !1672, file: !1, line: 827, type: !3)
!1678 = !DILocalVariable(name: "a", arg: 3, scope: !1672, file: !1, line: 828, type: !834)
!1679 = !DILocalVariable(name: "sat_p", arg: 4, scope: !1672, file: !1, line: 828, type: !357)
!1680 = !DILocalVariable(name: "overflow_p", scope: !1672, file: !1, line: 830, type: !357)
!1681 = !DILocalVariable(name: "temp_high", scope: !1682, file: !1, line: 840, type: !840)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !1, line: 838, column: 5)
!1683 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 837, column: 7)
!1684 = !DILocalVariable(name: "temp_low", scope: !1682, file: !1, line: 840, type: !840)
!1685 = !DILocalVariable(name: "amount", scope: !1682, file: !1, line: 841, type: !358)
!1686 = !DILocalVariable(name: "temp", scope: !1687, file: !1, line: 909, type: !840)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !1, line: 907, column: 5)
!1688 = !DILocation(line: 0, scope: !1672)
!1689 = !DILocation(line: 831, column: 18, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 831, column: 7)
!1691 = !DILocation(line: 831, column: 12, scope: !1690)
!1692 = !DILocation(line: 831, column: 7, scope: !1672)
!1693 = !DILocation(line: 833, column: 12, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !1, line: 832, column: 5)
!1695 = !DILocation(line: 834, column: 7, scope: !1694)
!1696 = !DILocation(line: 837, column: 7, scope: !1683)
!1697 = !DILocation(line: 837, column: 30, scope: !1683)
!1698 = !DILocation(line: 837, column: 28, scope: !1683)
!1699 = !DILocation(line: 837, column: 7, scope: !1672)
!1700 = !DILocation(line: 840, column: 7, scope: !1682)
!1701 = !DILocation(line: 841, column: 20, scope: !1682)
!1702 = !DILocation(line: 841, column: 43, scope: !1682)
!1703 = !DILocation(line: 841, column: 41, scope: !1682)
!1704 = !DILocation(line: 0, scope: !1682)
!1705 = !DILocation(line: 842, column: 30, scope: !1682)
!1706 = !DILocation(line: 842, column: 43, scope: !1682)
!1707 = !DILocation(line: 843, column: 8, scope: !1682)
!1708 = !DILocation(line: 845, column: 18, scope: !1682)
!1709 = !DILocation(line: 845, column: 33, scope: !1682)
!1710 = !DILocation(line: 846, column: 8, scope: !1682)
!1711 = !DILocation(line: 842, column: 7, scope: !1682)
!1712 = !DILocation(line: 848, column: 30, scope: !1682)
!1713 = !DILocation(line: 848, column: 43, scope: !1682)
!1714 = !DILocation(line: 849, column: 15, scope: !1682)
!1715 = !DILocation(line: 849, column: 8, scope: !1682)
!1716 = !DILocation(line: 851, column: 19, scope: !1682)
!1717 = !DILocation(line: 851, column: 35, scope: !1682)
!1718 = !DILocation(line: 848, column: 7, scope: !1682)
!1719 = !DILocation(line: 852, column: 11, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 852, column: 11)
!1721 = !DILocation(line: 853, column: 4, scope: !1720)
!1722 = !DILocation(line: 853, column: 15, scope: !1720)
!1723 = !DILocation(line: 853, column: 20, scope: !1720)
!1724 = !DILocation(line: 852, column: 11, scope: !1682)
!1725 = !DILocation(line: 854, column: 14, scope: !1720)
!1726 = !DILocation(line: 854, column: 2, scope: !1720)
!1727 = !DILocation(line: 855, column: 10, scope: !1682)
!1728 = !DILocation(line: 855, column: 15, scope: !1682)
!1729 = !DILocation(line: 856, column: 17, scope: !1682)
!1730 = !DILocation(line: 857, column: 11, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 857, column: 11)
!1732 = !DILocation(line: 858, column: 4, scope: !1731)
!1733 = !DILocation(line: 857, column: 47, scope: !1731)
!1734 = !DILocation(line: 857, column: 11, scope: !1682)
!1735 = !DILocation(line: 859, column: 66, scope: !1731)
!1736 = !DILocation(line: 859, column: 15, scope: !1731)
!1737 = !DILocation(line: 859, column: 2, scope: !1731)
!1738 = !DILocation(line: 865, column: 8, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 865, column: 8)
!1740 = distinct !DILexicalBlock(scope: !1731, file: !1, line: 862, column: 2)
!1741 = !DILocation(line: 865, column: 8, scope: !1740)
!1742 = !DILocation(line: 868, column: 20, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !1, line: 868, column: 12)
!1744 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 866, column: 6)
!1745 = !DILocation(line: 868, column: 25, scope: !1743)
!1746 = !DILocation(line: 868, column: 12, scope: !1744)
!1747 = !DILocation(line: 870, column: 9, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 870, column: 9)
!1749 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 869, column: 3)
!1750 = !DILocation(line: 870, column: 9, scope: !1749)
!1751 = !DILocation(line: 872, column: 17, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !1, line: 871, column: 7)
!1753 = !DILocation(line: 872, column: 21, scope: !1752)
!1754 = !DILocation(line: 873, column: 17, scope: !1752)
!1755 = !DILocation(line: 873, column: 22, scope: !1752)
!1756 = !DILocation(line: 874, column: 7, scope: !1752)
!1757 = !DILocation(line: 880, column: 16, scope: !1743)
!1758 = !DILocation(line: 879, column: 16, scope: !1743)
!1759 = !DILocation(line: 885, column: 22, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !1, line: 885, column: 12)
!1761 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 883, column: 6)
!1762 = !DILocation(line: 885, column: 27, scope: !1760)
!1763 = !DILocation(line: 885, column: 12, scope: !1761)
!1764 = !DILocation(line: 887, column: 9, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 887, column: 9)
!1766 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 886, column: 3)
!1767 = !DILocation(line: 887, column: 9, scope: !1766)
!1768 = !DILocation(line: 890, column: 17, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !1, line: 888, column: 7)
!1770 = !DILocation(line: 890, column: 21, scope: !1769)
!1771 = !DILocation(line: 891, column: 17, scope: !1769)
!1772 = !DILocation(line: 891, column: 22, scope: !1769)
!1773 = !DILocation(line: 892, column: 19, scope: !1769)
!1774 = !DILocation(line: 894, column: 9, scope: !1769)
!1775 = !DILocation(line: 894, column: 7, scope: !1769)
!1776 = !DILocation(line: 896, column: 7, scope: !1769)
!1777 = !DILocation(line: 902, column: 16, scope: !1760)
!1778 = !DILocation(line: 901, column: 16, scope: !1760)
!1779 = !DILocation(line: 905, column: 5, scope: !1683)
!1780 = !DILocation(line: 905, column: 5, scope: !1682)
!1781 = !DILocation(line: 909, column: 7, scope: !1687)
!1782 = !DILocation(line: 910, column: 30, scope: !1687)
!1783 = !DILocation(line: 910, column: 43, scope: !1687)
!1784 = !DILocation(line: 911, column: 8, scope: !1687)
!1785 = !DILocation(line: 911, column: 31, scope: !1687)
!1786 = !DILocation(line: 911, column: 29, scope: !1687)
!1787 = !DILocation(line: 913, column: 14, scope: !1687)
!1788 = !DILocation(line: 913, column: 25, scope: !1687)
!1789 = !DILocation(line: 914, column: 8, scope: !1687)
!1790 = !DILocation(line: 910, column: 7, scope: !1687)
!1791 = !DILocation(line: 915, column: 10, scope: !1687)
!1792 = !DILocation(line: 915, column: 15, scope: !1687)
!1793 = !DILocation(line: 916, column: 17, scope: !1687)
!1794 = !DILocation(line: 917, column: 11, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1687, file: !1, line: 917, column: 11)
!1796 = !DILocation(line: 918, column: 4, scope: !1795)
!1797 = !DILocation(line: 917, column: 47, scope: !1795)
!1798 = !DILocation(line: 917, column: 11, scope: !1687)
!1799 = !DILocation(line: 919, column: 54, scope: !1795)
!1800 = !DILocation(line: 919, column: 15, scope: !1795)
!1801 = !DILocation(line: 919, column: 2, scope: !1795)
!1802 = !DILocation(line: 924, column: 8, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !1, line: 924, column: 8)
!1804 = distinct !DILexicalBlock(scope: !1795, file: !1, line: 921, column: 2)
!1805 = !DILocation(line: 924, column: 8, scope: !1804)
!1806 = !DILocation(line: 927, column: 20, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 927, column: 12)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !1, line: 925, column: 6)
!1809 = !DILocation(line: 927, column: 25, scope: !1807)
!1810 = !DILocation(line: 927, column: 12, scope: !1808)
!1811 = !DILocation(line: 929, column: 9, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 929, column: 9)
!1813 = distinct !DILexicalBlock(scope: !1807, file: !1, line: 928, column: 3)
!1814 = !DILocation(line: 929, column: 9, scope: !1813)
!1815 = !DILocation(line: 931, column: 17, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1812, file: !1, line: 930, column: 7)
!1817 = !DILocation(line: 931, column: 21, scope: !1816)
!1818 = !DILocation(line: 932, column: 17, scope: !1816)
!1819 = !DILocation(line: 932, column: 22, scope: !1816)
!1820 = !DILocation(line: 933, column: 7, scope: !1816)
!1821 = !DILocation(line: 938, column: 55, scope: !1807)
!1822 = !DILocation(line: 938, column: 16, scope: !1807)
!1823 = !DILocation(line: 944, column: 17, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !1, line: 944, column: 12)
!1825 = distinct !DILexicalBlock(scope: !1803, file: !1, line: 942, column: 6)
!1826 = !DILocation(line: 944, column: 22, scope: !1824)
!1827 = !DILocation(line: 944, column: 12, scope: !1825)
!1828 = !DILocation(line: 946, column: 9, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 946, column: 9)
!1830 = distinct !DILexicalBlock(scope: !1824, file: !1, line: 945, column: 3)
!1831 = !DILocation(line: 946, column: 9, scope: !1830)
!1832 = !DILocation(line: 949, column: 17, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 947, column: 7)
!1834 = !DILocation(line: 949, column: 21, scope: !1833)
!1835 = !DILocation(line: 950, column: 17, scope: !1833)
!1836 = !DILocation(line: 950, column: 22, scope: !1833)
!1837 = !DILocation(line: 951, column: 19, scope: !1833)
!1838 = !DILocation(line: 952, column: 7, scope: !1833)
!1839 = !DILocation(line: 953, column: 9, scope: !1833)
!1840 = !DILocation(line: 953, column: 7, scope: !1833)
!1841 = !DILocation(line: 955, column: 7, scope: !1833)
!1842 = !DILocation(line: 960, column: 55, scope: !1824)
!1843 = !DILocation(line: 960, column: 16, scope: !1824)
!1844 = !DILocation(line: 964, column: 5, scope: !1683)
!1845 = !DILocation(line: 0, scope: !1683)
!1846 = !DILocation(line: 966, column: 13, scope: !1672)
!1847 = !DILocation(line: 967, column: 8, scope: !1672)
!1848 = !DILocation(line: 968, column: 10, scope: !1672)
!1849 = !DILocation(line: 968, column: 8, scope: !1672)
!1850 = !DILocation(line: 969, column: 10, scope: !1672)
!1851 = !DILocation(line: 969, column: 8, scope: !1672)
!1852 = !DILocation(line: 970, column: 8, scope: !1672)
!1853 = !DILocation(line: 971, column: 3, scope: !1672)
!1854 = !DILocation(line: 972, column: 1, scope: !1672)
!1855 = distinct !DISubprogram(name: "fixed_saturate2", scope: !1, file: !1, line: 211, type: !1856, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1859)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!357, !3, !840, !840, !1858, !357}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1871, !1872, !1874, !1875, !1876}
!1860 = !DILocalVariable(name: "mode", arg: 1, scope: !1855, file: !1, line: 211, type: !3)
!1861 = !DILocalVariable(name: "a_high", arg: 2, scope: !1855, file: !1, line: 211, type: !840)
!1862 = !DILocalVariable(name: "a_low", arg: 3, scope: !1855, file: !1, line: 211, type: !840)
!1863 = !DILocalVariable(name: "f", arg: 4, scope: !1855, file: !1, line: 212, type: !1858)
!1864 = !DILocalVariable(name: "sat_p", arg: 5, scope: !1855, file: !1, line: 212, type: !357)
!1865 = !DILocalVariable(name: "overflow_p", scope: !1855, file: !1, line: 214, type: !357)
!1866 = !DILocalVariable(name: "unsigned_p", scope: !1855, file: !1, line: 215, type: !357)
!1867 = !DILocalVariable(name: "i_f_bits", scope: !1855, file: !1, line: 216, type: !358)
!1868 = !DILocalVariable(name: "max_r", scope: !1869, file: !1, line: 220, type: !840)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !1, line: 219, column: 5)
!1870 = distinct !DILexicalBlock(scope: !1855, file: !1, line: 218, column: 7)
!1871 = !DILocalVariable(name: "max_s", scope: !1869, file: !1, line: 220, type: !840)
!1872 = !DILocalVariable(name: "max_r", scope: !1873, file: !1, line: 238, type: !840)
!1873 = distinct !DILexicalBlock(scope: !1870, file: !1, line: 237, column: 5)
!1874 = !DILocalVariable(name: "max_s", scope: !1873, file: !1, line: 238, type: !840)
!1875 = !DILocalVariable(name: "min_r", scope: !1873, file: !1, line: 238, type: !840)
!1876 = !DILocalVariable(name: "min_s", scope: !1873, file: !1, line: 238, type: !840)
!1877 = !DILocation(line: 0, scope: !1855)
!1878 = !DILocation(line: 215, column: 21, scope: !1855)
!1879 = !DILocation(line: 216, column: 18, scope: !1855)
!1880 = !DILocation(line: 216, column: 41, scope: !1855)
!1881 = !DILocation(line: 216, column: 39, scope: !1855)
!1882 = !DILocation(line: 218, column: 7, scope: !1855)
!1883 = !DILocation(line: 220, column: 7, scope: !1869)
!1884 = !DILocation(line: 223, column: 13, scope: !1869)
!1885 = !DILocation(line: 224, column: 13, scope: !1869)
!1886 = !DILocation(line: 225, column: 15, scope: !1869)
!1887 = !DILocation(line: 226, column: 11, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 226, column: 11)
!1889 = !DILocation(line: 226, column: 45, scope: !1888)
!1890 = !DILocation(line: 227, column: 4, scope: !1888)
!1891 = !DILocation(line: 227, column: 8, scope: !1888)
!1892 = !DILocation(line: 227, column: 43, scope: !1888)
!1893 = !DILocation(line: 228, column: 8, scope: !1888)
!1894 = !DILocation(line: 228, column: 41, scope: !1888)
!1895 = !DILocation(line: 226, column: 11, scope: !1869)
!1896 = !DILocation(line: 230, column: 8, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !1, line: 230, column: 8)
!1898 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 229, column: 2)
!1899 = !DILocation(line: 230, column: 8, scope: !1898)
!1900 = !DILocation(line: 231, column: 11, scope: !1897)
!1901 = !DILocation(line: 231, column: 6, scope: !1897)
!1902 = !DILocation(line: 214, column: 8, scope: !1855)
!1903 = !DILocation(line: 235, column: 5, scope: !1870)
!1904 = !DILocation(line: 235, column: 5, scope: !1869)
!1905 = !DILocation(line: 238, column: 7, scope: !1873)
!1906 = !DILocation(line: 241, column: 13, scope: !1873)
!1907 = !DILocation(line: 242, column: 13, scope: !1873)
!1908 = !DILocation(line: 243, column: 15, scope: !1873)
!1909 = !DILocation(line: 246, column: 13, scope: !1873)
!1910 = !DILocation(line: 246, column: 18, scope: !1873)
!1911 = !DILocation(line: 247, column: 13, scope: !1873)
!1912 = !DILocation(line: 247, column: 17, scope: !1873)
!1913 = !DILocation(line: 248, column: 45, scope: !1873)
!1914 = !DILocation(line: 248, column: 7, scope: !1873)
!1915 = !DILocation(line: 251, column: 15, scope: !1873)
!1916 = !DILocation(line: 251, column: 40, scope: !1873)
!1917 = !DILocation(line: 252, column: 11, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 252, column: 11)
!1919 = !DILocation(line: 252, column: 45, scope: !1918)
!1920 = !DILocation(line: 253, column: 4, scope: !1918)
!1921 = !DILocation(line: 253, column: 8, scope: !1918)
!1922 = !DILocation(line: 253, column: 43, scope: !1918)
!1923 = !DILocation(line: 254, column: 8, scope: !1918)
!1924 = !DILocation(line: 254, column: 41, scope: !1918)
!1925 = !DILocation(line: 252, column: 11, scope: !1873)
!1926 = !DILocation(line: 256, column: 8, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 256, column: 8)
!1928 = distinct !DILexicalBlock(scope: !1918, file: !1, line: 255, column: 2)
!1929 = !DILocation(line: 256, column: 8, scope: !1928)
!1930 = !DILocation(line: 257, column: 11, scope: !1927)
!1931 = !DILocation(line: 257, column: 6, scope: !1927)
!1932 = !DILocation(line: 261, column: 16, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1918, file: !1, line: 261, column: 16)
!1934 = !DILocation(line: 261, column: 50, scope: !1933)
!1935 = !DILocation(line: 262, column: 9, scope: !1933)
!1936 = !DILocation(line: 262, column: 13, scope: !1933)
!1937 = !DILocation(line: 262, column: 48, scope: !1933)
!1938 = !DILocation(line: 263, column: 6, scope: !1933)
!1939 = !DILocation(line: 263, column: 39, scope: !1933)
!1940 = !DILocation(line: 261, column: 16, scope: !1918)
!1941 = !DILocation(line: 265, column: 8, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !1, line: 265, column: 8)
!1943 = distinct !DILexicalBlock(scope: !1933, file: !1, line: 264, column: 2)
!1944 = !DILocation(line: 265, column: 8, scope: !1943)
!1945 = !DILocation(line: 266, column: 11, scope: !1942)
!1946 = !DILocation(line: 266, column: 6, scope: !1942)
!1947 = !DILocation(line: 270, column: 5, scope: !1870)
!1948 = !DILocation(line: 271, column: 3, scope: !1855)
!1949 = distinct !DISubprogram(name: "fixed_saturate1", scope: !1, file: !1, line: 151, type: !1950, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!357, !3, !840, !1858, !357}
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1963, !1965}
!1953 = !DILocalVariable(name: "mode", arg: 1, scope: !1949, file: !1, line: 151, type: !3)
!1954 = !DILocalVariable(name: "a", arg: 2, scope: !1949, file: !1, line: 151, type: !840)
!1955 = !DILocalVariable(name: "f", arg: 3, scope: !1949, file: !1, line: 151, type: !1858)
!1956 = !DILocalVariable(name: "sat_p", arg: 4, scope: !1949, file: !1, line: 152, type: !357)
!1957 = !DILocalVariable(name: "overflow_p", scope: !1949, file: !1, line: 154, type: !357)
!1958 = !DILocalVariable(name: "unsigned_p", scope: !1949, file: !1, line: 155, type: !357)
!1959 = !DILocalVariable(name: "i_f_bits", scope: !1949, file: !1, line: 156, type: !358)
!1960 = !DILocalVariable(name: "max", scope: !1961, file: !1, line: 160, type: !840)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !1, line: 159, column: 5)
!1962 = distinct !DILexicalBlock(scope: !1949, file: !1, line: 158, column: 7)
!1963 = !DILocalVariable(name: "max", scope: !1964, file: !1, line: 174, type: !840)
!1964 = distinct !DILexicalBlock(scope: !1962, file: !1, line: 173, column: 5)
!1965 = !DILocalVariable(name: "min", scope: !1964, file: !1, line: 174, type: !840)
!1966 = !DILocation(line: 0, scope: !1949)
!1967 = !DILocation(line: 155, column: 21, scope: !1949)
!1968 = !DILocation(line: 156, column: 18, scope: !1949)
!1969 = !DILocation(line: 156, column: 41, scope: !1949)
!1970 = !DILocation(line: 156, column: 39, scope: !1949)
!1971 = !DILocation(line: 158, column: 7, scope: !1949)
!1972 = !DILocation(line: 160, column: 7, scope: !1961)
!1973 = !DILocation(line: 161, column: 11, scope: !1961)
!1974 = !DILocation(line: 162, column: 11, scope: !1961)
!1975 = !DILocation(line: 163, column: 13, scope: !1961)
!1976 = !DILocation(line: 164, column: 11, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 164, column: 11)
!1978 = !DILocation(line: 164, column: 38, scope: !1977)
!1979 = !DILocation(line: 164, column: 11, scope: !1961)
!1980 = !DILocation(line: 166, column: 8, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !1, line: 166, column: 8)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !1, line: 165, column: 2)
!1983 = !DILocation(line: 166, column: 8, scope: !1982)
!1984 = !DILocation(line: 167, column: 11, scope: !1981)
!1985 = !DILocation(line: 167, column: 6, scope: !1981)
!1986 = !DILocation(line: 154, column: 8, scope: !1949)
!1987 = !DILocation(line: 171, column: 5, scope: !1962)
!1988 = !DILocation(line: 171, column: 5, scope: !1961)
!1989 = !DILocation(line: 174, column: 7, scope: !1964)
!1990 = !DILocation(line: 175, column: 11, scope: !1964)
!1991 = !DILocation(line: 176, column: 11, scope: !1964)
!1992 = !DILocation(line: 177, column: 13, scope: !1964)
!1993 = !DILocation(line: 178, column: 11, scope: !1964)
!1994 = !DILocation(line: 178, column: 16, scope: !1964)
!1995 = !DILocation(line: 179, column: 11, scope: !1964)
!1996 = !DILocation(line: 179, column: 15, scope: !1964)
!1997 = !DILocation(line: 180, column: 41, scope: !1964)
!1998 = !DILocation(line: 180, column: 7, scope: !1964)
!1999 = !DILocation(line: 183, column: 13, scope: !1964)
!2000 = !DILocation(line: 183, column: 36, scope: !1964)
!2001 = !DILocation(line: 184, column: 11, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 184, column: 11)
!2003 = !DILocation(line: 184, column: 38, scope: !2002)
!2004 = !DILocation(line: 184, column: 11, scope: !1964)
!2005 = !DILocation(line: 186, column: 8, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !1, line: 186, column: 8)
!2007 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 185, column: 2)
!2008 = !DILocation(line: 186, column: 8, scope: !2007)
!2009 = !DILocation(line: 187, column: 11, scope: !2006)
!2010 = !DILocation(line: 187, column: 6, scope: !2006)
!2011 = !DILocation(line: 191, column: 16, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 191, column: 16)
!2013 = !DILocation(line: 191, column: 43, scope: !2012)
!2014 = !DILocation(line: 191, column: 16, scope: !2002)
!2015 = !DILocation(line: 193, column: 8, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !1, line: 193, column: 8)
!2017 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 192, column: 2)
!2018 = !DILocation(line: 193, column: 8, scope: !2017)
!2019 = !DILocation(line: 194, column: 11, scope: !2016)
!2020 = !DILocation(line: 194, column: 6, scope: !2016)
!2021 = !DILocation(line: 198, column: 5, scope: !1962)
!2022 = !DILocation(line: 199, column: 3, scope: !1949)
!2023 = distinct !DISubprogram(name: "fixed_convert_from_int", scope: !1, file: !1, line: 980, type: !2024, scopeLine: 982, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!357, !877, !3, !840, !357, !357}
!2026 = !{!2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2027 = !DILocalVariable(name: "f", arg: 1, scope: !2023, file: !1, line: 980, type: !877)
!2028 = !DILocalVariable(name: "mode", arg: 2, scope: !2023, file: !1, line: 980, type: !3)
!2029 = !DILocalVariable(name: "a", arg: 3, scope: !2023, file: !1, line: 981, type: !840)
!2030 = !DILocalVariable(name: "unsigned_p", arg: 4, scope: !2023, file: !1, line: 981, type: !357)
!2031 = !DILocalVariable(name: "sat_p", arg: 5, scope: !2023, file: !1, line: 981, type: !357)
!2032 = !DILocalVariable(name: "overflow_p", scope: !2023, file: !1, line: 983, type: !357)
!2033 = !DILocalVariable(name: "temp_high", scope: !2023, file: !1, line: 985, type: !840)
!2034 = !DILocalVariable(name: "temp_low", scope: !2023, file: !1, line: 985, type: !840)
!2035 = !DILocalVariable(name: "amount", scope: !2023, file: !1, line: 986, type: !358)
!2036 = !DILocation(line: 0, scope: !2023)
!2037 = !DILocation(line: 985, column: 3, scope: !2023)
!2038 = !DILocation(line: 986, column: 16, scope: !2023)
!2039 = !DILocation(line: 987, column: 14, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 987, column: 7)
!2041 = !DILocation(line: 987, column: 7, scope: !2023)
!2042 = !DILocation(line: 989, column: 20, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 988, column: 5)
!2044 = !DILocation(line: 990, column: 17, scope: !2043)
!2045 = !DILocation(line: 990, column: 21, scope: !2043)
!2046 = !DILocation(line: 991, column: 17, scope: !2043)
!2047 = !DILocation(line: 991, column: 22, scope: !2043)
!2048 = !DILocation(line: 992, column: 5, scope: !2043)
!2049 = !DILocation(line: 996, column: 8, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 994, column: 5)
!2051 = !DILocation(line: 998, column: 18, scope: !2050)
!2052 = !DILocation(line: 998, column: 33, scope: !2050)
!2053 = !DILocation(line: 995, column: 7, scope: !2050)
!2054 = !DILocation(line: 1002, column: 15, scope: !2050)
!2055 = !DILocation(line: 1002, column: 8, scope: !2050)
!2056 = !DILocation(line: 1004, column: 19, scope: !2050)
!2057 = !DILocation(line: 1004, column: 35, scope: !2050)
!2058 = !DILocation(line: 1001, column: 7, scope: !2050)
!2059 = !DILocation(line: 1006, column: 8, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 1006, column: 7)
!2061 = !DILocation(line: 1006, column: 19, scope: !2060)
!2062 = !DILocation(line: 1006, column: 29, scope: !2060)
!2063 = !DILocation(line: 1006, column: 7, scope: !2023)
!2064 = !DILocation(line: 1007, column: 17, scope: !2060)
!2065 = !DILocation(line: 1007, column: 5, scope: !2060)
!2066 = !DILocation(line: 1009, column: 6, scope: !2023)
!2067 = !DILocation(line: 1009, column: 11, scope: !2023)
!2068 = !DILocation(line: 1010, column: 13, scope: !2023)
!2069 = !DILocation(line: 1012, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 1012, column: 7)
!2071 = !DILocation(line: 1012, column: 21, scope: !2070)
!2072 = !DILocation(line: 1012, column: 18, scope: !2070)
!2073 = !DILocation(line: 1012, column: 7, scope: !2023)
!2074 = !DILocation(line: 1013, column: 69, scope: !2070)
!2075 = !DILocation(line: 1013, column: 18, scope: !2070)
!2076 = !DILocation(line: 1013, column: 5, scope: !2070)
!2077 = !DILocation(line: 1018, column: 11, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 1016, column: 5)
!2079 = !DILocation(line: 1021, column: 15, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !1, line: 1021, column: 8)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 1019, column: 2)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 1018, column: 11)
!2083 = !DILocation(line: 1021, column: 8, scope: !2081)
!2084 = !DILocation(line: 1023, column: 12, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !1, line: 1023, column: 12)
!2086 = distinct !DILexicalBlock(scope: !2080, file: !1, line: 1022, column: 6)
!2087 = !DILocation(line: 1023, column: 12, scope: !2086)
!2088 = !DILocation(line: 1025, column: 13, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 1024, column: 3)
!2090 = !DILocation(line: 1025, column: 17, scope: !2089)
!2091 = !DILocation(line: 1026, column: 13, scope: !2089)
!2092 = !DILocation(line: 1026, column: 18, scope: !2089)
!2093 = !DILocation(line: 1027, column: 3, scope: !2089)
!2094 = !DILocation(line: 1033, column: 12, scope: !2080)
!2095 = !DILocation(line: 1032, column: 19, scope: !2080)
!2096 = !DILocation(line: 1038, column: 18, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !1, line: 1038, column: 8)
!2098 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 1036, column: 2)
!2099 = !DILocation(line: 1038, column: 23, scope: !2097)
!2100 = !DILocation(line: 1038, column: 8, scope: !2098)
!2101 = !DILocation(line: 1040, column: 12, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 1040, column: 12)
!2103 = distinct !DILexicalBlock(scope: !2097, file: !1, line: 1039, column: 6)
!2104 = !DILocation(line: 1040, column: 12, scope: !2103)
!2105 = !DILocation(line: 1043, column: 13, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 1041, column: 3)
!2107 = !DILocation(line: 1043, column: 17, scope: !2106)
!2108 = !DILocation(line: 1044, column: 13, scope: !2106)
!2109 = !DILocation(line: 1044, column: 18, scope: !2106)
!2110 = !DILocation(line: 1045, column: 15, scope: !2106)
!2111 = !DILocation(line: 1047, column: 12, scope: !2106)
!2112 = !DILocation(line: 1047, column: 10, scope: !2106)
!2113 = !DILocation(line: 1049, column: 3, scope: !2106)
!2114 = !DILocation(line: 1055, column: 12, scope: !2097)
!2115 = !DILocation(line: 1054, column: 19, scope: !2097)
!2116 = !DILocation(line: 1058, column: 13, scope: !2023)
!2117 = !DILocation(line: 1059, column: 8, scope: !2023)
!2118 = !DILocation(line: 1060, column: 10, scope: !2023)
!2119 = !DILocation(line: 1060, column: 8, scope: !2023)
!2120 = !DILocation(line: 1061, column: 10, scope: !2023)
!2121 = !DILocation(line: 1061, column: 8, scope: !2023)
!2122 = !DILocation(line: 1062, column: 8, scope: !2023)
!2123 = !DILocation(line: 1064, column: 1, scope: !2023)
!2124 = !DILocation(line: 1063, column: 3, scope: !2023)
!2125 = distinct !DISubprogram(name: "fixed_convert_from_real", scope: !1, file: !1, line: 1071, type: !2126, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2130)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!357, !877, !3, !2128, !357}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142}
!2131 = !DILocalVariable(name: "f", arg: 1, scope: !2125, file: !1, line: 1071, type: !877)
!2132 = !DILocalVariable(name: "mode", arg: 2, scope: !2125, file: !1, line: 1071, type: !3)
!2133 = !DILocalVariable(name: "a", arg: 3, scope: !2125, file: !1, line: 1072, type: !2128)
!2134 = !DILocalVariable(name: "sat_p", arg: 4, scope: !2125, file: !1, line: 1072, type: !357)
!2135 = !DILocalVariable(name: "overflow_p", scope: !2125, file: !1, line: 1074, type: !357)
!2136 = !DILocalVariable(name: "real_value", scope: !2125, file: !1, line: 1075, type: !883)
!2137 = !DILocalVariable(name: "fixed_value", scope: !2125, file: !1, line: 1075, type: !883)
!2138 = !DILocalVariable(name: "base_value", scope: !2125, file: !1, line: 1075, type: !883)
!2139 = !DILocalVariable(name: "unsigned_p", scope: !2125, file: !1, line: 1076, type: !357)
!2140 = !DILocalVariable(name: "i_f_bits", scope: !2125, file: !1, line: 1077, type: !358)
!2141 = !DILocalVariable(name: "fbit", scope: !2125, file: !1, line: 1078, type: !5)
!2142 = !DILocalVariable(name: "temp", scope: !2125, file: !1, line: 1079, type: !132)
!2143 = !DILocation(line: 0, scope: !2125)
!2144 = !DILocation(line: 1075, column: 3, scope: !2125)
!2145 = !DILocation(line: 1076, column: 21, scope: !2125)
!2146 = !DILocation(line: 1077, column: 18, scope: !2125)
!2147 = !DILocation(line: 1077, column: 41, scope: !2125)
!2148 = !DILocation(line: 1077, column: 39, scope: !2125)
!2149 = !DILocation(line: 1081, column: 16, scope: !2125)
!2150 = !DILocation(line: 1082, column: 6, scope: !2125)
!2151 = !DILocation(line: 1082, column: 11, scope: !2125)
!2152 = !DILocation(line: 1083, column: 3, scope: !2125)
!2153 = !DILocation(line: 1084, column: 3, scope: !2125)
!2154 = !DILocation(line: 1085, column: 47, scope: !2125)
!2155 = !DILocation(line: 1085, column: 61, scope: !2125)
!2156 = !DILocation(line: 1085, column: 3, scope: !2125)
!2157 = !DILocation(line: 1086, column: 10, scope: !2125)
!2158 = !DILocation(line: 1087, column: 7, scope: !2125)
!2159 = !DILocation(line: 1089, column: 11, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !1, line: 1089, column: 11)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !1, line: 1088, column: 5)
!2162 = distinct !DILexicalBlock(scope: !2125, file: !1, line: 1087, column: 7)
!2163 = !DILocation(line: 1089, column: 11, scope: !2161)
!2164 = !DILocation(line: 1091, column: 8, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !1, line: 1091, column: 8)
!2166 = distinct !DILexicalBlock(scope: !2160, file: !1, line: 1090, column: 2)
!2167 = !DILocation(line: 1091, column: 8, scope: !2166)
!2168 = !DILocation(line: 1093, column: 20, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !1, line: 1092, column: 6)
!2170 = !DILocation(line: 1094, column: 21, scope: !2169)
!2171 = !DILocation(line: 1095, column: 6, scope: !2169)
!2172 = !DILocation(line: 1098, column: 20, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2165, file: !1, line: 1097, column: 6)
!2174 = !DILocation(line: 1099, column: 21, scope: !2173)
!2175 = !DILocation(line: 1100, column: 50, scope: !2173)
!2176 = !DILocation(line: 1100, column: 8, scope: !2173)
!2177 = !DILocation(line: 1103, column: 18, scope: !2173)
!2178 = !DILocation(line: 1103, column: 45, scope: !2173)
!2179 = !DILocation(line: 1111, column: 11, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 1111, column: 11)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !1, line: 1110, column: 5)
!2182 = distinct !DILexicalBlock(scope: !2162, file: !1, line: 1109, column: 12)
!2183 = !DILocation(line: 1111, column: 11, scope: !2181)
!2184 = !DILocation(line: 1113, column: 16, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2180, file: !1, line: 1112, column: 2)
!2186 = !DILocation(line: 1114, column: 17, scope: !2185)
!2187 = !DILocation(line: 1115, column: 14, scope: !2185)
!2188 = !DILocation(line: 1116, column: 2, scope: !2185)
!2189 = !DILocation(line: 1074, column: 8, scope: !2125)
!2190 = !DILocation(line: 1120, column: 13, scope: !2125)
!2191 = !DILocation(line: 1120, column: 39, scope: !2125)
!2192 = !DILocation(line: 1120, column: 52, scope: !2125)
!2193 = !DILocation(line: 1122, column: 1, scope: !2125)
!2194 = !DILocation(line: 1121, column: 3, scope: !2125)
!2195 = distinct !DISubprogram(name: "real_convert_from_fixed", scope: !1, file: !1, line: 1127, type: !2196, scopeLine: 1129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !941, !3, !834}
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204}
!2199 = !DILocalVariable(name: "r", arg: 1, scope: !2195, file: !1, line: 1127, type: !941)
!2200 = !DILocalVariable(name: "mode", arg: 2, scope: !2195, file: !1, line: 1127, type: !3)
!2201 = !DILocalVariable(name: "f", arg: 3, scope: !2195, file: !1, line: 1128, type: !834)
!2202 = !DILocalVariable(name: "base_value", scope: !2195, file: !1, line: 1130, type: !883)
!2203 = !DILocalVariable(name: "fixed_value", scope: !2195, file: !1, line: 1130, type: !883)
!2204 = !DILocalVariable(name: "real_value", scope: !2195, file: !1, line: 1130, type: !883)
!2205 = !DILocation(line: 0, scope: !2195)
!2206 = !DILocation(line: 1130, column: 3, scope: !2195)
!2207 = !DILocation(line: 1132, column: 28, scope: !2195)
!2208 = !DILocation(line: 1132, column: 3, scope: !2195)
!2209 = !DILocation(line: 1133, column: 54, scope: !2195)
!2210 = !DILocation(line: 1133, column: 67, scope: !2195)
!2211 = !DILocation(line: 1134, column: 8, scope: !2195)
!2212 = !DILocation(line: 1133, column: 3, scope: !2195)
!2213 = !DILocation(line: 1135, column: 3, scope: !2195)
!2214 = !DILocation(line: 1136, column: 3, scope: !2195)
!2215 = !DILocation(line: 1137, column: 1, scope: !2195)
!2216 = distinct !DISubprogram(name: "fixed_isneg", scope: !1, file: !1, line: 1142, type: !2217, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!357, !834}
!2219 = !{!2220, !2221, !2224}
!2220 = !DILocalVariable(name: "f", arg: 1, scope: !2216, file: !1, line: 1142, type: !834)
!2221 = !DILocalVariable(name: "i_f_bits", scope: !2222, file: !1, line: 1146, type: !358)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 1145, column: 5)
!2223 = distinct !DILexicalBlock(scope: !2216, file: !1, line: 1144, column: 7)
!2224 = !DILocalVariable(name: "sign_bit", scope: !2222, file: !1, line: 1147, type: !358)
!2225 = !DILocation(line: 0, scope: !2216)
!2226 = !DILocation(line: 1144, column: 7, scope: !2223)
!2227 = !DILocation(line: 1144, column: 7, scope: !2216)
!2228 = !DILocation(line: 1146, column: 22, scope: !2222)
!2229 = !DILocation(line: 1146, column: 48, scope: !2222)
!2230 = !DILocation(line: 1146, column: 46, scope: !2222)
!2231 = !DILocation(line: 0, scope: !2222)
!2232 = !DILocation(line: 1147, column: 22, scope: !2222)
!2233 = !DILocation(line: 1148, column: 20, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 1148, column: 11)
!2235 = !DILocation(line: 1152, column: 3, scope: !2216)
!2236 = !DILocation(line: 1153, column: 1, scope: !2216)
!2237 = distinct !DISubprogram(name: "get_fixed_sign_bit", scope: !1, file: !1, line: 277, type: !2238, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!358, !840, !358}
!2240 = !{!2241, !2242}
!2241 = !DILocalVariable(name: "a", arg: 1, scope: !2237, file: !1, line: 277, type: !840)
!2242 = !DILocalVariable(name: "i_f_bits", arg: 2, scope: !2237, file: !1, line: 277, type: !358)
!2243 = !DILocation(line: 0, scope: !2237)
!2244 = !DILocation(line: 279, column: 16, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 279, column: 7)
!2246 = !DILocation(line: 279, column: 7, scope: !2237)
!2247 = !DILocation(line: 280, column: 19, scope: !2245)
!2248 = !DILocation(line: 280, column: 5, scope: !2245)
!2249 = !DILocation(line: 282, column: 33, scope: !2245)
!2250 = !DILocation(line: 282, column: 20, scope: !2245)
!2251 = !DILocation(line: 282, column: 5, scope: !2245)
!2252 = !DILocation(line: 0, scope: !2245)
!2253 = !DILocation(line: 283, column: 1, scope: !2237)
