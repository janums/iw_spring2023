; ModuleID = 'dfp.bc'
source_filename = "dfp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.real_format = type { {}*, void (%struct.real_format*, %struct.real_value*, i64*)*, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.decNumber = type { i32, i32, i8, [12 x i16] }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.decimal128 = type { [16 x i8] }
%struct.decimal32 = type { [4 x i8] }
%struct.decimal64 = type { [8 x i8] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@decimal_quad_format = external dso_local constant %struct.real_format, align 8
@decimal_single_format = external dso_local constant %struct.real_format, align 8
@decimal_double_format = external dso_local constant %struct.real_format, align 8
@.str = private unnamed_addr constant [6 x i8] c"dfp.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@real_format_for_mode = external dso_local local_unnamed_addr global [7 x %struct.real_format*], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"9.999999E96\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"9.999999999999999E384\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"9.999999999999999999999999999999999E6144\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"snan\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"nan\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !390 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !403, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !406
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !407
  ret i32 %call, !dbg !408
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !409 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !413
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !414
  ret i32 %call, !dbg !415
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !416 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !478, metadata !DIExpression()), !dbg !479
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !480
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !480
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !480
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !480
  %cmp = icmp uge i8* %0, %1, !dbg !480
  %conv1 = zext i1 %cmp to i64, !dbg !480
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !480
  %tobool = icmp eq i64 %expval, 0, !dbg !480
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !480

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !480
  br label %cond.end, !dbg !480

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !480
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !480
  %2 = load i8, i8* %0, align 1, !dbg !480
  %conv3 = zext i8 %2 to i32, !dbg !480
  br label %cond.end, !dbg !480

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !480
  ret i32 %cond, !dbg !481
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !482 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !484, metadata !DIExpression()), !dbg !485
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !486
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !486
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !486
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !486
  %cmp = icmp uge i8* %0, %1, !dbg !486
  %conv1 = zext i1 %cmp to i64, !dbg !486
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !486
  %tobool = icmp eq i64 %expval, 0, !dbg !486
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !486

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !486
  br label %cond.end, !dbg !486

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !486
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !486
  %2 = load i8, i8* %0, align 1, !dbg !486
  %conv3 = zext i8 %2 to i32, !dbg !486
  br label %cond.end, !dbg !486

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !486
  ret i32 %cond, !dbg !487
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !488 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !489
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !489
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !489
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !489
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !489
  %cmp = icmp uge i8* %1, %2, !dbg !489
  %conv1 = zext i1 %cmp to i64, !dbg !489
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !489
  %tobool = icmp eq i64 %expval, 0, !dbg !489
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !489

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !489
  br label %cond.end, !dbg !489

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !489
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !489
  %3 = load i8, i8* %1, align 1, !dbg !489
  %conv3 = zext i8 %3 to i32, !dbg !489
  br label %cond.end, !dbg !489

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !489
  ret i32 %cond, !dbg !490
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !491 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !495, metadata !DIExpression()), !dbg !496
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !497
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !498
  ret i32 %call, !dbg !499
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !500 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !504, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !505, metadata !DIExpression()), !dbg !506
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !507
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !507
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !507
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !507
  %cmp = icmp uge i8* %0, %1, !dbg !507
  %conv1 = zext i1 %cmp to i64, !dbg !507
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !507
  %tobool = icmp eq i64 %expval, 0, !dbg !507
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !507

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !507
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !507
  br label %cond.end, !dbg !507

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !507
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !507
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !507
  store i8 %conv2, i8* %0, align 1, !dbg !507
  %conv6 = and i32 %__c, 255, !dbg !507
  br label %cond.end, !dbg !507

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !507
  ret i32 %cond, !dbg !508
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !509 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !511, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !512, metadata !DIExpression()), !dbg !513
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !514
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !514
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !514
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !514
  %cmp = icmp uge i8* %0, %1, !dbg !514
  %conv1 = zext i1 %cmp to i64, !dbg !514
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !514
  %tobool = icmp eq i64 %expval, 0, !dbg !514
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !514

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !514
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !514
  br label %cond.end, !dbg !514

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !514
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !514
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !514
  store i8 %conv2, i8* %0, align 1, !dbg !514
  %conv6 = and i32 %__c, 255, !dbg !514
  br label %cond.end, !dbg !514

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !514
  ret i32 %cond, !dbg !515
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !520
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !520
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !520
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !520
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !520
  %cmp = icmp uge i8* %1, %2, !dbg !520
  %conv1 = zext i1 %cmp to i64, !dbg !520
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !520
  %tobool = icmp eq i64 %expval, 0, !dbg !520
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !520

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !520
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !520
  br label %cond.end, !dbg !520

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !520
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !520
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !520
  store i8 %conv4, i8* %1, align 1, !dbg !520
  %conv6 = and i32 %__c, 255, !dbg !520
  br label %cond.end, !dbg !520

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !520
  ret i32 %cond, !dbg !521
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !522 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !528, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64* %__n, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !530, metadata !DIExpression()), !dbg !531
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !532
  ret i64 %call, !dbg !533
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !534 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !536, metadata !DIExpression()), !dbg !537
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !538
  %0 = load i32, i32* %_flags, align 8, !dbg !538
  %and = lshr i32 %0, 4, !dbg !538
  %and.lobit = and i32 %and, 1, !dbg !538
  ret i32 %and.lobit, !dbg !539
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !540 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !542, metadata !DIExpression()), !dbg !543
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !544
  %0 = load i32, i32* %_flags, align 8, !dbg !544
  %and = lshr i32 %0, 5, !dbg !544
  %and.lobit = and i32 %and, 1, !dbg !544
  ret i32 %and.lobit, !dbg !545
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !546 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !549, metadata !DIExpression()), !dbg !550
  %__c.off = add i32 %__c, 128, !dbg !551
  %0 = icmp ult i32 %__c.off, 384, !dbg !551
  br i1 %0, label %cond.true, label %cond.end, !dbg !551

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !552
  %1 = load i32*, i32** %call, align 8, !dbg !553
  %idxprom = sext i32 %__c to i64, !dbg !554
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !554
  %2 = load i32, i32* %arrayidx, align 4, !dbg !554
  br label %cond.end, !dbg !555

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !555
  ret i32 %cond, !dbg !556
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !557 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !559, metadata !DIExpression()), !dbg !560
  %__c.off = add i32 %__c, 128, !dbg !561
  %0 = icmp ult i32 %__c.off, 384, !dbg !561
  br i1 %0, label %cond.true, label %cond.end, !dbg !561

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !562
  %1 = load i32*, i32** %call, align 8, !dbg !563
  %idxprom = sext i32 %__c to i64, !dbg !564
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !564
  %2 = load i32, i32* %arrayidx, align 4, !dbg !564
  br label %cond.end, !dbg !565

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !565
  ret i32 %cond, !dbg !566
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !567 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !572, metadata !DIExpression()), !dbg !573
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !574
  %conv = trunc i64 %call to i32, !dbg !575
  ret i32 %conv, !dbg !576
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !577 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !581, metadata !DIExpression()), !dbg !582
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !583
  ret i64 %call, !dbg !584
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !585 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !590, metadata !DIExpression()), !dbg !591
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !592
  ret i64 %call, !dbg !593
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !594 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !605, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i8* %__base, metadata !606, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !607, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i64 %__size, metadata !608, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !609, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i64 0, metadata !610, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !611, metadata !DIExpression()), !dbg !615
  br label %while.cond, !dbg !616

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !617
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !615
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !611, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !610, metadata !DIExpression()), !dbg !615
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !618
  br i1 %cmp, label %while.body, label %cleanup, !dbg !616

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !619
  %div = lshr i64 %add, 1, !dbg !621
  call void @llvm.dbg.value(metadata i64 %div, metadata !612, metadata !DIExpression()), !dbg !615
  %mul = mul i64 %div, %__size, !dbg !622
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !623
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !613, metadata !DIExpression()), !dbg !615
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !624
  call void @llvm.dbg.value(metadata i32 %call, metadata !614, metadata !DIExpression()), !dbg !615
  %cmp1 = icmp slt i32 %call, 0, !dbg !625
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !627

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !628
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !630

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !631
  call void @llvm.dbg.value(metadata i64 %add4, metadata !610, metadata !DIExpression()), !dbg !615
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !615
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !615
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !611, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !610, metadata !DIExpression()), !dbg !615
  br label %while.cond, !dbg !616, !llvm.loop !632

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !615
  ret i8* %retval.0, !dbg !634
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !635 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !641, metadata !DIExpression()), !dbg !642
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !643
  ret double %call, !dbg !644
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !645 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !654, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !655, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i32 %base, metadata !656, metadata !DIExpression()), !dbg !657
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !658
  ret i64 %call, !dbg !659
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !660 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !666, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !667, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 %base, metadata !668, metadata !DIExpression()), !dbg !669
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !670
  ret i64 %call, !dbg !671
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !672 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !683, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !684, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i32 %base, metadata !685, metadata !DIExpression()), !dbg !686
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !687
  ret i64 %call, !dbg !688
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !689 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !693, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !694, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32 %base, metadata !695, metadata !DIExpression()), !dbg !696
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !697
  ret i64 %call, !dbg !698
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !699 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !741, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !742, metadata !DIExpression()), !dbg !743
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !744
  ret i32 %call, !dbg !745
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !746 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !748, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !749, metadata !DIExpression()), !dbg !750
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !751
  ret i32 %call, !dbg !752
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !753 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !757, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !758, metadata !DIExpression()), !dbg !759
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !760
  ret i32 %call, !dbg !761
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !762 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !766, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !767, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !768, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !769, metadata !DIExpression()), !dbg !770
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !771
  ret i32 %call, !dbg !772
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !773 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !777, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !778, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !779, metadata !DIExpression()), !dbg !780
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !779, metadata !DIExpression(DW_OP_deref)), !dbg !780
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !781
  ret i32 %call, !dbg !782
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !783 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !787, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8* %__path, metadata !788, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !789, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !790, metadata !DIExpression()), !dbg !791
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !790, metadata !DIExpression(DW_OP_deref)), !dbg !791
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !792
  ret i32 %call, !dbg !793
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !794 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !818, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !819, metadata !DIExpression()), !dbg !820
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !821
  ret i32 %call, !dbg !822
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !823 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !825, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !826, metadata !DIExpression()), !dbg !827
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !828
  ret i32 %call, !dbg !829
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !830 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !834, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !835, metadata !DIExpression()), !dbg !836
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !837
  ret i32 %call, !dbg !838
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !839 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !843, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !844, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !845, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !846, metadata !DIExpression()), !dbg !847
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !848
  ret i32 %call, !dbg !849
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decimal_real_from_string(%struct.real_value* %r, i8* %s) local_unnamed_addr #5 !dbg !850 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %set = alloca %struct.decContext, align 4
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !866, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i8* %s, metadata !867, metadata !DIExpression()), !dbg !898
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !899
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #7, !dbg !899
  %1 = bitcast %struct.decContext* %set to i8*, !dbg !900
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #7, !dbg !900
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !885, metadata !DIExpression(DW_OP_deref)), !dbg !898
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !901
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !902
  store i32 0, i32* %traps, align 4, !dbg !903
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !868, metadata !DIExpression(DW_OP_deref)), !dbg !898
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !885, metadata !DIExpression(DW_OP_deref)), !dbg !898
  %call1 = call %struct.decNumber* @decNumberFromString(%struct.decNumber* nonnull %dn, i8* %s, %struct.decContext* nonnull %set) #6, !dbg !904
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !868, metadata !DIExpression(DW_OP_deref)), !dbg !898
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !885, metadata !DIExpression(DW_OP_deref)), !dbg !898
  call fastcc void @decimal_from_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #8, !dbg !905
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #7, !dbg !906
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #7, !dbg !906
  ret void, !dbg !906
}

declare dso_local %struct.decContext* @decContextDefault(%struct.decContext*, i32) local_unnamed_addr #2

declare dso_local %struct.decNumber* @decNumberFromString(%struct.decNumber*, i8*, %struct.decContext*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_from_decnumber(%struct.real_value* %r, %struct.decNumber* %dn, %struct.decContext* %context) unnamed_addr #5 !dbg !907 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !913, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !914, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !915, metadata !DIExpression()), !dbg !916
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !917
  %call = tail call i8* @memset(i8* %0, i32 0, i64 32) #6, !dbg !918
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !919
  %bf.load = load i32, i32* %1, align 8, !dbg !920
  %bf.clear = and i32 %bf.load, -4, !dbg !920
  %bf.set = or i32 %bf.clear, 1, !dbg !920
  store i32 %bf.set, i32* %1, align 8, !dbg !920
  %bits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !921
  %2 = load i8, i8* %bits, align 4, !dbg !921
  %3 = and i8 %2, 48, !dbg !921
  %cmp = icmp eq i8 %3, 0, !dbg !921
  br i1 %cmp, label %if.end, label %if.then, !dbg !923

if.then:                                          ; preds = %entry
  %bf.set4 = or i32 %bf.load, 3, !dbg !924
  store i32 %bf.set4, i32* %1, align 8, !dbg !924
  %.pre = load i8, i8* %bits, align 4, !dbg !925
  br label %if.end, !dbg !927

if.end:                                           ; preds = %entry, %if.then
  %bf.load11 = phi i32 [ %bf.set, %entry ], [ %bf.set4, %if.then ]
  %4 = phi i8 [ %2, %entry ], [ %.pre, %if.then ], !dbg !925
  %5 = and i8 %4, 64, !dbg !925
  %cmp8 = icmp eq i8 %5, 0, !dbg !925
  br i1 %cmp8, label %if.end14, label %if.then10, !dbg !928

if.then10:                                        ; preds = %if.end
  %bf.clear12 = and i32 %bf.load11, -4, !dbg !929
  %bf.set13 = or i32 %bf.clear12, 2, !dbg !929
  store i32 %bf.set13, i32* %1, align 8, !dbg !929
  br label %if.end14, !dbg !930

if.end14:                                         ; preds = %if.end, %if.then10
  %bf.load17 = phi i32 [ %bf.load11, %if.end ], [ %bf.set13, %if.then10 ]
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !931
  %6 = load i32, i32* %status, align 4, !dbg !931
  %and15 = and i32 %6, 512, !dbg !933
  %tobool = icmp eq i32 %and15, 0, !dbg !933
  br i1 %tobool, label %if.end20, label %if.then16, !dbg !934

if.then16:                                        ; preds = %if.end14
  %bf.clear18 = and i32 %bf.load17, -4, !dbg !935
  %bf.set19 = or i32 %bf.clear18, 2, !dbg !935
  store i32 %bf.set19, i32* %1, align 8, !dbg !935
  br label %if.end20, !dbg !936

if.end20:                                         ; preds = %if.end14, %if.then16
  %bf.load27 = phi i32 [ %bf.load17, %if.end14 ], [ %bf.set19, %if.then16 ]
  %7 = load i8, i8* %bits, align 4, !dbg !937
  %cmp24 = icmp slt i8 %7, 0, !dbg !937
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !939

if.then26:                                        ; preds = %if.end20
  %bf.set29 = or i32 %bf.load27, 8, !dbg !940
  store i32 %bf.set29, i32* %1, align 8, !dbg !940
  br label %if.end30, !dbg !941

if.end30:                                         ; preds = %if.then26, %if.end20
  %bf.load31 = phi i32 [ %bf.set29, %if.then26 ], [ %bf.load27, %if.end20 ], !dbg !942
  %bf.set33 = or i32 %bf.load31, 4, !dbg !942
  store i32 %bf.set33, i32* %1, align 8, !dbg !942
  %bf.clear35 = and i32 %bf.load31, 3, !dbg !943
  %cmp36 = icmp eq i32 %bf.clear35, 1, !dbg !945
  br i1 %cmp36, label %if.end39, label %return, !dbg !946

if.end39:                                         ; preds = %if.end30
  %call40 = tail call %struct.decContext* @decContextDefault(%struct.decContext* %context, i32 128) #6, !dbg !947
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 4, !dbg !948
  store i32 0, i32* %traps, align 4, !dbg !949
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !950
  %8 = bitcast i64* %arraydecay to %struct.decimal128*, !dbg !951
  %call41 = tail call %struct.decimal128* @decimal128FromNumber(%struct.decimal128* nonnull %8, %struct.decNumber* %dn, %struct.decContext* %context) #6, !dbg !952
  br label %return, !dbg !953

return:                                           ; preds = %if.end30, %if.end39
  ret void, !dbg !953
}

; Function Attrs: nounwind uwtable
define dso_local void @encode_decimal32(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) local_unnamed_addr #5 !dbg !954 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %d32 = alloca %struct.decimal32, align 1
  %set = alloca %struct.decContext, align 4
  %image = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !988, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64* %buf, metadata !989, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !990, metadata !DIExpression()), !dbg !1003
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1004
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1004
  %1 = getelementptr inbounds %struct.decimal32, %struct.decimal32* %d32, i64 0, i32 0, i64 0, !dbg !1005
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !1005
  %2 = bitcast %struct.decContext* %set to i8*, !dbg !1006
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1006
  %3 = bitcast i32* %image to i8*, !dbg !1007
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1007
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1001, metadata !DIExpression(DW_OP_deref)), !dbg !1003
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1008
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1009
  store i32 0, i32* %traps, align 4, !dbg !1010
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !991, metadata !DIExpression(DW_OP_deref)), !dbg !1003
  call fastcc void @decimal_to_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn) #8, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !991, metadata !DIExpression(DW_OP_deref)), !dbg !1003
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !992, metadata !DIExpression(DW_OP_deref)), !dbg !1003
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1001, metadata !DIExpression(DW_OP_deref)), !dbg !1003
  %call1 = call %struct.decimal32* @decimal32FromNumber(%struct.decimal32* nonnull %d32, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #6, !dbg !1012
  %call2 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %1, i64 4) #6, !dbg !1013
  %4 = load i32, i32* %image, align 4, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %4, metadata !1002, metadata !DIExpression()), !dbg !1003
  %conv = sext i32 %4 to i64, !dbg !1014
  store i64 %conv, i64* %buf, align 8, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1016
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1016
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !1016
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1016
  ret void, !dbg !1016
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_to_decnumber(%struct.real_value* %r, %struct.decNumber* %dn) unnamed_addr #5 !dbg !1017 {
entry:
  %set = alloca %struct.decContext, align 4
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1021, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1022, metadata !DIExpression()), !dbg !1024
  %0 = bitcast %struct.decContext* %set to i8*, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1025
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1023, metadata !DIExpression(DW_OP_deref)), !dbg !1024
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1026
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1027
  store i32 0, i32* %traps, align 4, !dbg !1028
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1029
  %bf.load = load i32, i32* %1, align 8, !dbg !1029
  %bf.clear = and i32 %bf.load, 3, !dbg !1029
  switch i32 %bf.clear, label %sw.default1 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 1, label %sw.bb9
  ], !dbg !1030

sw.bb:                                            ; preds = %entry
  %call1 = call %struct.decNumber* @decNumberZero(%struct.decNumber* %dn) #6, !dbg !1031
  br label %sw.epilog, !dbg !1033

sw.bb2:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1023, metadata !DIExpression(DW_OP_deref)), !dbg !1024
  %call3 = call %struct.decNumber* @decNumberFromString(%struct.decNumber* %dn, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.decContext* nonnull %set) #6, !dbg !1034
  br label %sw.epilog, !dbg !1035

sw.bb4:                                           ; preds = %entry
  %bf.clear6 = and i32 %bf.load, 16, !dbg !1036
  %tobool = icmp eq i32 %bf.clear6, 0, !dbg !1038
  br i1 %tobool, label %if.else, label %if.then, !dbg !1039

if.then:                                          ; preds = %sw.bb4
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1023, metadata !DIExpression(DW_OP_deref)), !dbg !1024
  %call7 = call %struct.decNumber* @decNumberFromString(%struct.decNumber* %dn, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.decContext* nonnull %set) #6, !dbg !1040
  br label %sw.epilog, !dbg !1040

if.else:                                          ; preds = %sw.bb4
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1023, metadata !DIExpression(DW_OP_deref)), !dbg !1024
  %call8 = call %struct.decNumber* @decNumberFromString(%struct.decNumber* %dn, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.decContext* nonnull %set) #6, !dbg !1041
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %bf.clear12 = and i32 %bf.load, 4, !dbg !1042
  %tobool13 = icmp eq i32 %bf.clear12, 0, !dbg !1042
  br i1 %tobool13, label %cond.true, label %cond.end, !dbg !1042

cond.true:                                        ; preds = %sw.bb9
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1042
  br label %cond.end, !dbg !1042

cond.end:                                         ; preds = %sw.bb9, %cond.true
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !1043
  %2 = bitcast i64* %arraydecay to %struct.decimal128*, !dbg !1044
  %call14 = call %struct.decNumber* @decimal128ToNumber(%struct.decimal128* nonnull %2, %struct.decNumber* %dn) #6, !dbg !1045
  br label %sw.epilog, !dbg !1046

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %if.then, %if.else, %cond.end, %sw.bb2, %sw.bb
  %bf.load15 = load i32, i32* %1, align 8, !dbg !1047
  %bf.lshr16 = lshr i32 %bf.load15, 3, !dbg !1047
  %bf.clear17 = and i32 %bf.lshr16, 1, !dbg !1047
  %bits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !1049
  %3 = load i8, i8* %bits, align 4, !dbg !1049
  %.lobit = lshr i8 %3, 7, !dbg !1049
  %4 = zext i8 %.lobit to i32, !dbg !1049
  %cmp19 = icmp eq i32 %bf.clear17, %4, !dbg !1050
  br i1 %cmp19, label %if.end25, label %if.then21, !dbg !1051

if.then21:                                        ; preds = %sw.epilog
  %5 = xor i8 %3, -128, !dbg !1052
  store i8 %5, i8* %bits, align 4, !dbg !1052
  br label %if.end25, !dbg !1053

if.end25:                                         ; preds = %sw.epilog, %if.then21
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1054
  ret void, !dbg !1054
}

declare dso_local %struct.decimal32* @decimal32FromNumber(%struct.decimal32*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decode_decimal32(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) local_unnamed_addr #5 !dbg !1055 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %d32 = alloca %struct.decimal32, align 1
  %set = alloca %struct.decContext, align 4
  %image = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !1057, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1058, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i64* %buf, metadata !1059, metadata !DIExpression()), !dbg !1064
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1065
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1065
  %1 = getelementptr inbounds %struct.decimal32, %struct.decimal32* %d32, i64 0, i32 0, i64 0, !dbg !1066
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !1066
  %2 = bitcast %struct.decContext* %set to i8*, !dbg !1067
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1067
  %3 = bitcast i32* %image to i8*, !dbg !1068
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1068
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1062, metadata !DIExpression(DW_OP_deref)), !dbg !1064
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1069
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1070
  store i32 0, i32* %traps, align 4, !dbg !1071
  %4 = load i64, i64* %buf, align 8, !dbg !1072
  %conv = trunc i64 %4 to i32, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1063, metadata !DIExpression()), !dbg !1064
  store i32 %conv, i32* %image, align 4, !dbg !1073
  %call1 = call i8* @memcpy(i8* nonnull %1, i8* nonnull %3, i64 4) #6, !dbg !1074
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1060, metadata !DIExpression(DW_OP_deref)), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !1061, metadata !DIExpression(DW_OP_deref)), !dbg !1064
  %call2 = call %struct.decNumber* @decimal32ToNumber(%struct.decimal32* nonnull %d32, %struct.decNumber* nonnull %dn) #6, !dbg !1075
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1060, metadata !DIExpression(DW_OP_deref)), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1062, metadata !DIExpression(DW_OP_deref)), !dbg !1064
  call fastcc void @decimal_from_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #8, !dbg !1076
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1077
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1077
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !1077
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1077
  ret void, !dbg !1077
}

declare dso_local %struct.decNumber* @decimal32ToNumber(%struct.decimal32*, %struct.decNumber*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @encode_decimal64(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) local_unnamed_addr #5 !dbg !1078 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %d64 = alloca %struct.decimal64, align 1
  %set = alloca %struct.decContext, align 4
  %image = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !1080, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64* %buf, metadata !1081, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1082, metadata !DIExpression()), !dbg !1095
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1096
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1096
  %1 = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 0, !dbg !1097
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !1097
  %2 = bitcast %struct.decContext* %set to i8*, !dbg !1098
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1098
  %3 = bitcast i32* %image to i8*, !dbg !1099
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1099
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1093, metadata !DIExpression(DW_OP_deref)), !dbg !1095
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1100
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1101
  store i32 0, i32* %traps, align 4, !dbg !1102
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1083, metadata !DIExpression(DW_OP_deref)), !dbg !1095
  call fastcc void @decimal_to_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn) #8, !dbg !1103
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1083, metadata !DIExpression(DW_OP_deref)), !dbg !1095
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !1084, metadata !DIExpression(DW_OP_deref)), !dbg !1095
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1093, metadata !DIExpression(DW_OP_deref)), !dbg !1095
  %call1 = call %struct.decimal64* @decimal64FromNumber(%struct.decimal64* nonnull %d64, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #6, !dbg !1104
  %call2 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %1, i64 4) #6, !dbg !1105
  %4 = load i32, i32* %image, align 4, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %4, metadata !1094, metadata !DIExpression()), !dbg !1095
  %conv = sext i32 %4 to i64, !dbg !1108
  store i64 %conv, i64* %buf, align 8, !dbg !1109
  %arrayidx5 = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 4, !dbg !1110
  %call6 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %arrayidx5, i64 4) #6, !dbg !1111
  %5 = load i32, i32* %image, align 4, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %5, metadata !1094, metadata !DIExpression()), !dbg !1095
  %conv7 = sext i32 %5 to i64, !dbg !1112
  %arrayidx8 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !1113
  store i64 %conv7, i64* %arrayidx8, align 8, !dbg !1114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1115
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1115
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !1115
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1115
  ret void, !dbg !1115
}

declare dso_local %struct.decimal64* @decimal64FromNumber(%struct.decimal64*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decode_decimal64(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) local_unnamed_addr #5 !dbg !1116 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %d64 = alloca %struct.decimal64, align 1
  %set = alloca %struct.decContext, align 4
  %image = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !1118, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1119, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64* %buf, metadata !1120, metadata !DIExpression()), !dbg !1125
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1126
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1126
  %1 = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 0, !dbg !1127
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !1127
  %2 = bitcast %struct.decContext* %set to i8*, !dbg !1128
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1128
  %3 = bitcast i32* %image to i8*, !dbg !1129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1129
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1123, metadata !DIExpression(DW_OP_deref)), !dbg !1125
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1130
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1131
  store i32 0, i32* %traps, align 4, !dbg !1132
  %4 = load i64, i64* %buf, align 8, !dbg !1133
  %conv = trunc i64 %4 to i32, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1124, metadata !DIExpression()), !dbg !1125
  store i32 %conv, i32* %image, align 4, !dbg !1136
  %call2 = call i8* @memcpy(i8* nonnull %1, i8* nonnull %3, i64 4) #6, !dbg !1137
  %arrayidx3 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !1138
  %5 = load i64, i64* %arrayidx3, align 8, !dbg !1138
  %conv4 = trunc i64 %5 to i32, !dbg !1138
  call void @llvm.dbg.value(metadata i32 %conv4, metadata !1124, metadata !DIExpression()), !dbg !1125
  store i32 %conv4, i32* %image, align 4, !dbg !1139
  %arrayidx6 = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 4, !dbg !1140
  %call7 = call i8* @memcpy(i8* nonnull %arrayidx6, i8* nonnull %3, i64 4) #6, !dbg !1141
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1121, metadata !DIExpression(DW_OP_deref)), !dbg !1125
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !1122, metadata !DIExpression(DW_OP_deref)), !dbg !1125
  %call8 = call %struct.decNumber* @decimal64ToNumber(%struct.decimal64* nonnull %d64, %struct.decNumber* nonnull %dn) #6, !dbg !1142
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1121, metadata !DIExpression(DW_OP_deref)), !dbg !1125
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1123, metadata !DIExpression(DW_OP_deref)), !dbg !1125
  call fastcc void @decimal_from_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #8, !dbg !1143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1144
  ret void, !dbg !1144
}

declare dso_local %struct.decNumber* @decimal64ToNumber(%struct.decimal64*, %struct.decNumber*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @encode_decimal128(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) local_unnamed_addr #5 !dbg !1145 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %set = alloca %struct.decContext, align 4
  %d128 = alloca %struct.decimal128, align 1
  %image = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !1147, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64* %buf, metadata !1148, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1149, metadata !DIExpression()), !dbg !1154
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1155
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1155
  %1 = bitcast %struct.decContext* %set to i8*, !dbg !1156
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #7, !dbg !1156
  %2 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 0, !dbg !1157
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1157
  %3 = bitcast i32* %image to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1158
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1151, metadata !DIExpression(DW_OP_deref)), !dbg !1154
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1159
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1160
  store i32 0, i32* %traps, align 4, !dbg !1161
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1150, metadata !DIExpression(DW_OP_deref)), !dbg !1154
  call fastcc void @decimal_to_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn) #8, !dbg !1162
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1150, metadata !DIExpression(DW_OP_deref)), !dbg !1154
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1151, metadata !DIExpression(DW_OP_deref)), !dbg !1154
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !1152, metadata !DIExpression(DW_OP_deref)), !dbg !1154
  %call1 = call %struct.decimal128* @decimal128FromNumber(%struct.decimal128* nonnull %d128, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #6, !dbg !1163
  %call2 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %2, i64 4) #6, !dbg !1164
  %4 = load i32, i32* %image, align 4, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %4, metadata !1153, metadata !DIExpression()), !dbg !1154
  %conv = sext i32 %4 to i64, !dbg !1167
  store i64 %conv, i64* %buf, align 8, !dbg !1168
  %arrayidx5 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 4, !dbg !1169
  %call6 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %arrayidx5, i64 4) #6, !dbg !1170
  %5 = load i32, i32* %image, align 4, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %5, metadata !1153, metadata !DIExpression()), !dbg !1154
  %conv7 = sext i32 %5 to i64, !dbg !1171
  %arrayidx8 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !1172
  store i64 %conv7, i64* %arrayidx8, align 8, !dbg !1173
  %arrayidx10 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 8, !dbg !1174
  %call11 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %arrayidx10, i64 4) #6, !dbg !1175
  %6 = load i32, i32* %image, align 4, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %6, metadata !1153, metadata !DIExpression()), !dbg !1154
  %conv12 = sext i32 %6 to i64, !dbg !1176
  %arrayidx13 = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !1177
  store i64 %conv12, i64* %arrayidx13, align 8, !dbg !1178
  %arrayidx15 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 12, !dbg !1179
  %call16 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %arrayidx15, i64 4) #6, !dbg !1180
  %7 = load i32, i32* %image, align 4, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %7, metadata !1153, metadata !DIExpression()), !dbg !1154
  %conv17 = sext i32 %7 to i64, !dbg !1181
  %arrayidx18 = getelementptr inbounds i64, i64* %buf, i64 3, !dbg !1182
  store i64 %conv17, i64* %arrayidx18, align 8, !dbg !1183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1184
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1184
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #7, !dbg !1184
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1184
  ret void, !dbg !1184
}

declare dso_local %struct.decimal128* @decimal128FromNumber(%struct.decimal128*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decode_decimal128(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) local_unnamed_addr #5 !dbg !1185 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %d128 = alloca %struct.decimal128, align 1
  %set = alloca %struct.decContext, align 4
  %image = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !1187, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i64* %buf, metadata !1189, metadata !DIExpression()), !dbg !1194
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1195
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1195
  %1 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 0, !dbg !1196
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !1196
  %2 = bitcast %struct.decContext* %set to i8*, !dbg !1197
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1197
  %3 = bitcast i32* %image to i8*, !dbg !1198
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1198
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1192, metadata !DIExpression(DW_OP_deref)), !dbg !1194
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1199
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1200
  store i32 0, i32* %traps, align 4, !dbg !1201
  %4 = load i64, i64* %buf, align 8, !dbg !1202
  %conv = trunc i64 %4 to i32, !dbg !1202
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1193, metadata !DIExpression()), !dbg !1194
  store i32 %conv, i32* %image, align 4, !dbg !1205
  %call2 = call i8* @memcpy(i8* nonnull %1, i8* nonnull %3, i64 4) #6, !dbg !1206
  %arrayidx3 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !1207
  %5 = load i64, i64* %arrayidx3, align 8, !dbg !1207
  %conv4 = trunc i64 %5 to i32, !dbg !1207
  call void @llvm.dbg.value(metadata i32 %conv4, metadata !1193, metadata !DIExpression()), !dbg !1194
  store i32 %conv4, i32* %image, align 4, !dbg !1208
  %arrayidx6 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 4, !dbg !1209
  %call7 = call i8* @memcpy(i8* nonnull %arrayidx6, i8* nonnull %3, i64 4) #6, !dbg !1210
  %arrayidx8 = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !1211
  %6 = load i64, i64* %arrayidx8, align 8, !dbg !1211
  %conv9 = trunc i64 %6 to i32, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !1193, metadata !DIExpression()), !dbg !1194
  store i32 %conv9, i32* %image, align 4, !dbg !1212
  %arrayidx11 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 8, !dbg !1213
  %call12 = call i8* @memcpy(i8* nonnull %arrayidx11, i8* nonnull %3, i64 4) #6, !dbg !1214
  %arrayidx13 = getelementptr inbounds i64, i64* %buf, i64 3, !dbg !1215
  %7 = load i64, i64* %arrayidx13, align 8, !dbg !1215
  %conv14 = trunc i64 %7 to i32, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %conv14, metadata !1193, metadata !DIExpression()), !dbg !1194
  store i32 %conv14, i32* %image, align 4, !dbg !1216
  %arrayidx16 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 12, !dbg !1217
  %call17 = call i8* @memcpy(i8* nonnull %arrayidx16, i8* nonnull %3, i64 4) #6, !dbg !1218
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1190, metadata !DIExpression(DW_OP_deref)), !dbg !1194
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !1191, metadata !DIExpression(DW_OP_deref)), !dbg !1194
  %call18 = call %struct.decNumber* @decimal128ToNumber(%struct.decimal128* nonnull %d128, %struct.decNumber* nonnull %dn) #6, !dbg !1219
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1190, metadata !DIExpression(DW_OP_deref)), !dbg !1194
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1192, metadata !DIExpression(DW_OP_deref)), !dbg !1194
  call fastcc void @decimal_from_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #8, !dbg !1220
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1221
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1221
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !1221
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1221
  ret void, !dbg !1221
}

declare dso_local %struct.decNumber* @decimal128ToNumber(%struct.decimal128*, %struct.decNumber*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @decimal_do_compare(%struct.real_value* %a, %struct.real_value* %b, i32 %nan_result) local_unnamed_addr #5 !dbg !1222 {
entry:
  %set = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  %dn2 = alloca %struct.decNumber, align 4
  %dn3 = alloca %struct.decNumber, align 4
  %a1 = alloca %struct.real_value, align 8
  %b1 = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1226, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !1227, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 %nan_result, metadata !1228, metadata !DIExpression()), !dbg !1235
  %0 = bitcast %struct.decContext* %set to i8*, !dbg !1236
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1236
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !1237
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1237
  %2 = bitcast %struct.decNumber* %dn2 to i8*, !dbg !1237
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1237
  %3 = bitcast %struct.decNumber* %dn3 to i8*, !dbg !1237
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1237
  %4 = bitcast %struct.real_value* %a1 to i8*, !dbg !1238
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1238
  %5 = bitcast %struct.real_value* %b1 to i8*, !dbg !1238
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !1238
  %6 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 0, !dbg !1239
  %bf.load = load i32, i32* %6, align 8, !dbg !1239
  %bf.clear = and i32 %bf.load, 4, !dbg !1239
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !1241
  br i1 %tobool, label %if.then, label %if.end, !dbg !1242

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.real_value* %a1, metadata !1233, metadata !DIExpression(DW_OP_deref)), !dbg !1235
  call fastcc void @decimal_from_binary(%struct.real_value* nonnull %a1, %struct.real_value* %a) #8, !dbg !1243
  call void @llvm.dbg.value(metadata %struct.real_value* %a1, metadata !1226, metadata !DIExpression()), !dbg !1235
  br label %if.end, !dbg !1245

if.end:                                           ; preds = %entry, %if.then
  %a.addr.0 = phi %struct.real_value* [ %a, %entry ], [ %a1, %if.then ]
  call void @llvm.dbg.value(metadata %struct.real_value* %a.addr.0, metadata !1226, metadata !DIExpression()), !dbg !1235
  %7 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 0, !dbg !1246
  %bf.load1 = load i32, i32* %7, align 8, !dbg !1246
  %bf.clear3 = and i32 %bf.load1, 4, !dbg !1246
  %tobool4 = icmp eq i32 %bf.clear3, 0, !dbg !1248
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1249

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.real_value* %b1, metadata !1234, metadata !DIExpression(DW_OP_deref)), !dbg !1235
  call fastcc void @decimal_from_binary(%struct.real_value* nonnull %b1, %struct.real_value* %b) #8, !dbg !1250
  call void @llvm.dbg.value(metadata %struct.real_value* %b1, metadata !1227, metadata !DIExpression()), !dbg !1235
  br label %if.end6, !dbg !1252

if.end6:                                          ; preds = %if.end, %if.then5
  %b.addr.0 = phi %struct.real_value* [ %b, %if.end ], [ %b1, %if.then5 ]
  call void @llvm.dbg.value(metadata %struct.real_value* %b.addr.0, metadata !1227, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1229, metadata !DIExpression(DW_OP_deref)), !dbg !1235
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1253
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1254
  store i32 0, i32* %traps, align 4, !dbg !1255
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %a.addr.0, i64 0, i32 1, i64 0, !dbg !1256
  %8 = bitcast i64* %arraydecay to %struct.decimal128*, !dbg !1257
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1231, metadata !DIExpression(DW_OP_deref)), !dbg !1235
  %call7 = call %struct.decNumber* @decimal128ToNumber(%struct.decimal128* nonnull %8, %struct.decNumber* nonnull %dn2) #6, !dbg !1258
  %arraydecay9 = getelementptr inbounds %struct.real_value, %struct.real_value* %b.addr.0, i64 0, i32 1, i64 0, !dbg !1259
  %9 = bitcast i64* %arraydecay9 to %struct.decimal128*, !dbg !1260
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1232, metadata !DIExpression(DW_OP_deref)), !dbg !1235
  %call10 = call %struct.decNumber* @decimal128ToNumber(%struct.decimal128* nonnull %9, %struct.decNumber* nonnull %dn3) #6, !dbg !1261
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1229, metadata !DIExpression(DW_OP_deref)), !dbg !1235
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1230, metadata !DIExpression(DW_OP_deref)), !dbg !1235
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1231, metadata !DIExpression(DW_OP_deref)), !dbg !1235
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1232, metadata !DIExpression(DW_OP_deref)), !dbg !1235
  %call11 = call %struct.decNumber* @decNumberCompare(%struct.decNumber* nonnull %dn, %struct.decNumber* nonnull %dn2, %struct.decNumber* nonnull %dn3, %struct.decContext* nonnull %set) #6, !dbg !1262
  %bits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !1263
  %10 = load i8, i8* %bits, align 4, !dbg !1263
  %11 = and i8 %10, 48, !dbg !1263
  %cmp = icmp eq i8 %11, 0, !dbg !1263
  br i1 %cmp, label %if.else, label %cleanup, !dbg !1265

if.else:                                          ; preds = %if.end6
  %arraydecay14 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 3, i64 0, !dbg !1266
  %12 = load i16, i16* %arraydecay14, align 2, !dbg !1266
  %cmp16 = icmp eq i16 %12, 0, !dbg !1266
  br i1 %cmp16, label %land.lhs.true, label %if.else27, !dbg !1266

land.lhs.true:                                    ; preds = %if.else
  %digits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 0, !dbg !1266
  %13 = load i32, i32* %digits, align 4, !dbg !1266
  %cmp18 = icmp eq i32 %13, 1, !dbg !1266
  br i1 %cmp18, label %land.lhs.true20, label %if.else27, !dbg !1266

land.lhs.true20:                                  ; preds = %land.lhs.true
  %14 = and i8 %10, 112, !dbg !1266
  %cmp24 = icmp eq i8 %14, 0, !dbg !1266
  br i1 %cmp24, label %cleanup, label %if.else27, !dbg !1268

if.else27:                                        ; preds = %land.lhs.true20, %land.lhs.true, %if.else
  %cmp31 = icmp slt i8 %10, 0, !dbg !1269
  %. = select i1 %cmp31, i32 -1, i32 1, !dbg !1271
  br label %cleanup, !dbg !1271

cleanup:                                          ; preds = %if.end6, %if.else27, %land.lhs.true20
  %retval.0 = phi i32 [ %nan_result, %if.end6 ], [ 0, %land.lhs.true20 ], [ %., %if.else27 ], !dbg !1272
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !1273
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1273
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1273
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1273
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1273
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1273
  ret i32 %retval.0, !dbg !1273
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_from_binary(%struct.real_value* %to, %struct.real_value* %from) unnamed_addr #5 !dbg !1274 {
entry:
  %string = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.real_value* %to, metadata !1278, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %struct.real_value* %from, metadata !1279, metadata !DIExpression()), !dbg !1284
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i64 0, i64 0, !dbg !1285
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #7, !dbg !1285
  call void @llvm.dbg.declare(metadata [256 x i8]* %string, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @real_to_decimal(i8* nonnull %0, %struct.real_value* %from, i64 256, i64 0, i32 1) #6, !dbg !1287
  call void @decimal_real_from_string(%struct.real_value* %to, i8* nonnull %0) #8, !dbg !1288
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #7, !dbg !1289
  ret void, !dbg !1289
}

declare dso_local %struct.decNumber* @decNumberCompare(%struct.decNumber*, %struct.decNumber*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decimal_round_for_format(%struct.real_format* %fmt, %struct.real_value* %r) local_unnamed_addr #5 !dbg !1290 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %set = alloca %struct.decContext, align 4
  %d32 = alloca %struct.decimal32, align 1
  %d64 = alloca %struct.decimal64, align 1
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !1294, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1295, metadata !DIExpression()), !dbg !1305
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1306
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1306
  %1 = bitcast %struct.decContext* %set to i8*, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #7, !dbg !1307
  %2 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1308
  %bf.load = load i32, i32* %2, align 8, !dbg !1308
  %bf.clear = and i32 %bf.load, 3, !dbg !1308
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !1310
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1311

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1297, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1312
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1313
  store i32 0, i32* %traps, align 4, !dbg !1314
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !1315
  %3 = bitcast i64* %arraydecay to %struct.decimal128*, !dbg !1316
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1296, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  %call1 = call %struct.decNumber* @decimal128ToNumber(%struct.decimal128* nonnull %3, %struct.decNumber* nonnull %dn) #6, !dbg !1317
  %cmp2 = icmp eq %struct.real_format* %fmt, @decimal_quad_format, !dbg !1318
  br i1 %cmp2, label %cleanup, label %if.else, !dbg !1319

if.else:                                          ; preds = %if.end
  %cmp4 = icmp eq %struct.real_format* %fmt, @decimal_single_format, !dbg !1320
  br i1 %cmp4, label %if.then5, label %if.else10, !dbg !1321

if.then5:                                         ; preds = %if.else
  %4 = getelementptr inbounds %struct.decimal32, %struct.decimal32* %d32, i64 0, i32 0, i64 0, !dbg !1322
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !1322
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1297, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  %call6 = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 32) #6, !dbg !1323
  store i32 0, i32* %traps, align 4, !dbg !1324
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1296, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1297, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !1298, metadata !DIExpression(DW_OP_deref)), !dbg !1325
  %call8 = call %struct.decimal32* @decimal32FromNumber(%struct.decimal32* nonnull %d32, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #6, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1296, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !1298, metadata !DIExpression(DW_OP_deref)), !dbg !1325
  %call9 = call %struct.decNumber* @decimal32ToNumber(%struct.decimal32* nonnull %d32, %struct.decNumber* nonnull %dn) #6, !dbg !1327
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !1328
  br label %if.end20, !dbg !1329

if.else10:                                        ; preds = %if.else
  %cmp11 = icmp eq %struct.real_format* %fmt, @decimal_double_format, !dbg !1330
  br i1 %cmp11, label %if.then12, label %if.else17, !dbg !1331

if.then12:                                        ; preds = %if.else10
  %5 = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 0, !dbg !1332
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1297, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  %call13 = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 64) #6, !dbg !1333
  store i32 0, i32* %traps, align 4, !dbg !1334
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1296, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1297, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !1302, metadata !DIExpression(DW_OP_deref)), !dbg !1335
  %call15 = call %struct.decimal64* @decimal64FromNumber(%struct.decimal64* nonnull %d64, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #6, !dbg !1336
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1296, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !1302, metadata !DIExpression(DW_OP_deref)), !dbg !1335
  %call16 = call %struct.decNumber* @decimal64ToNumber(%struct.decimal64* nonnull %d64, %struct.decNumber* nonnull %dn) #6, !dbg !1337
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1338
  br label %if.end20, !dbg !1339

if.else17:                                        ; preds = %if.else10
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 429, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1340
  br label %if.end20

if.end20:                                         ; preds = %if.then5, %if.else17, %if.then12
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1296, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1297, metadata !DIExpression(DW_OP_deref)), !dbg !1305
  call fastcc void @decimal_from_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #8, !dbg !1341
  br label %cleanup, !dbg !1342

cleanup:                                          ; preds = %entry, %if.end, %if.end20
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #7, !dbg !1342
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1342
  ret void, !dbg !1342
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decimal_real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* %a) local_unnamed_addr #5 !dbg !1343 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1347, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1348, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1349, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata %struct.real_format* undef, metadata !1350, metadata !DIExpression()), !dbg !1351
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 0, !dbg !1352
  %bf.load = load i32, i32* %0, align 8, !dbg !1352
  %bf.clear = and i32 %bf.load, 4, !dbg !1352
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !1354
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1355

land.lhs.true:                                    ; preds = %entry
  %cond = add i32 %mode, -38, !dbg !1356
  %idxprom3 = zext i32 %cond to i64, !dbg !1356
  %arrayidx4 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom3, !dbg !1356
  %1 = load %struct.real_format*, %struct.real_format** %arrayidx4, align 8, !dbg !1356
  call void @llvm.dbg.value(metadata %struct.real_format* %1, metadata !1350, metadata !DIExpression()), !dbg !1351
  %b = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 2, !dbg !1357
  %2 = load i32, i32* %b, align 8, !dbg !1357
  %cmp5 = icmp eq i32 %2, 10, !dbg !1358
  br i1 %cmp5, label %cleanup.cont, label %if.end, !dbg !1359

if.end:                                           ; preds = %entry, %land.lhs.true
  br i1 %tobool, label %if.else, label %if.then11, !dbg !1360

if.then11:                                        ; preds = %if.end
  tail call fastcc void @decimal_to_binary(%struct.real_value* %r, %struct.real_value* %a, i32 %mode) #8, !dbg !1361
  br label %cleanup.cont, !dbg !1361

if.else:                                          ; preds = %if.end
  tail call fastcc void @decimal_from_binary(%struct.real_value* %r, %struct.real_value* %a) #8, !dbg !1363
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %land.lhs.true, %if.else, %if.then11
  ret void, !dbg !1364
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_to_binary(%struct.real_value* %to, %struct.real_value* %from, i32 %mode) unnamed_addr #5 !dbg !1365 {
entry:
  %string = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.real_value* %to, metadata !1369, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata %struct.real_value* %from, metadata !1370, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1371, metadata !DIExpression()), !dbg !1375
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i64 0, i64 0, !dbg !1376
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #7, !dbg !1376
  call void @llvm.dbg.declare(metadata [256 x i8]* %string, metadata !1372, metadata !DIExpression()), !dbg !1377
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %from, i64 0, i32 1, i64 0, !dbg !1378
  %1 = bitcast i64* %arraydecay to %struct.decimal128*, !dbg !1379
  call void @llvm.dbg.value(metadata %struct.decimal128* %1, metadata !1373, metadata !DIExpression()), !dbg !1375
  %call = call i8* @decimal128ToString(%struct.decimal128* nonnull %1, i8* nonnull %0) #6, !dbg !1380
  call void @real_from_string3(%struct.real_value* %to, i8* nonnull %0, i32 %mode) #6, !dbg !1381
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #7, !dbg !1382
  ret void, !dbg !1382
}

; Function Attrs: nounwind uwtable
define dso_local void @decimal_real_to_decimal(i8* %str, %struct.real_value* %r_orig, i64 %buf_size, i64 %digits, i32 %crop_trailing_zeros) local_unnamed_addr #5 !dbg !1383 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !1387, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata %struct.real_value* %r_orig, metadata !1388, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %buf_size, metadata !1389, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %digits, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %crop_trailing_zeros, metadata !1391, metadata !DIExpression()), !dbg !1393
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %r_orig, i64 0, i32 1, i64 0, !dbg !1394
  %0 = bitcast i64* %arraydecay to %struct.decimal128*, !dbg !1395
  call void @llvm.dbg.value(metadata %struct.decimal128* %0, metadata !1392, metadata !DIExpression()), !dbg !1393
  %cmp = icmp ugt i64 %buf_size, 23, !dbg !1396
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1396

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 467, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1396
  br label %cond.end, !dbg !1396

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call i8* @decimal128ToString(%struct.decimal128* nonnull %0, i8* %str) #6, !dbg !1397
  ret void, !dbg !1398
}

declare dso_local i8* @decimal128ToString(%struct.decimal128*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decimal_do_fix_trunc(%struct.real_value* %r, %struct.real_value* %a) local_unnamed_addr #5 !dbg !1399 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %dn2 = alloca %struct.decNumber, align 4
  %set = alloca %struct.decContext, align 4
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1401, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1402, metadata !DIExpression()), !dbg !1406
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1407
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1407
  %1 = bitcast %struct.decNumber* %dn2 to i8*, !dbg !1407
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1407
  %2 = bitcast %struct.decContext* %set to i8*, !dbg !1408
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1405, metadata !DIExpression(DW_OP_deref)), !dbg !1406
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1409
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1410
  store i32 0, i32* %traps, align 4, !dbg !1411
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !1412
  store i32 5, i32* %round, align 4, !dbg !1413
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 0, !dbg !1414
  %3 = bitcast i64* %arraydecay to %struct.decimal128*, !dbg !1415
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1404, metadata !DIExpression(DW_OP_deref)), !dbg !1406
  %call1 = call %struct.decNumber* @decimal128ToNumber(%struct.decimal128* nonnull %3, %struct.decNumber* nonnull %dn2) #6, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1403, metadata !DIExpression(DW_OP_deref)), !dbg !1406
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1404, metadata !DIExpression(DW_OP_deref)), !dbg !1406
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1405, metadata !DIExpression(DW_OP_deref)), !dbg !1406
  %call2 = call %struct.decNumber* @decNumberToIntegralValue(%struct.decNumber* nonnull %dn, %struct.decNumber* nonnull %dn2, %struct.decContext* nonnull %set) #6, !dbg !1417
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1403, metadata !DIExpression(DW_OP_deref)), !dbg !1406
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1405, metadata !DIExpression(DW_OP_deref)), !dbg !1406
  call fastcc void @decimal_from_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #8, !dbg !1418
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #7, !dbg !1419
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1419
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1419
  ret void, !dbg !1419
}

declare dso_local %struct.decNumber* @decNumberToIntegralValue(%struct.decNumber*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @decimal_real_to_integer(%struct.real_value* %r) local_unnamed_addr #5 !dbg !1420 {
entry:
  %set = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  %dn2 = alloca %struct.decNumber, align 4
  %dn3 = alloca %struct.decNumber, align 4
  %to = alloca %struct.real_value, align 8
  %string = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1424, metadata !DIExpression()), !dbg !1431
  %0 = bitcast %struct.decContext* %set to i8*, !dbg !1432
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1432
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !1433
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1433
  %2 = bitcast %struct.decNumber* %dn2 to i8*, !dbg !1433
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1433
  %3 = bitcast %struct.decNumber* %dn3 to i8*, !dbg !1433
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1433
  %4 = bitcast %struct.real_value* %to to i8*, !dbg !1434
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1434
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i64 0, i64 0, !dbg !1435
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #7, !dbg !1435
  call void @llvm.dbg.declare(metadata [256 x i8]* %string, metadata !1430, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1425, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1437
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1438
  store i32 0, i32* %traps, align 4, !dbg !1439
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !1440
  store i32 5, i32* %round, align 4, !dbg !1441
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !1442
  %6 = bitcast i64* %arraydecay to %struct.decimal128*, !dbg !1443
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1426, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  %call1 = call %struct.decNumber* @decimal128ToNumber(%struct.decimal128* nonnull %6, %struct.decNumber* nonnull %dn) #6, !dbg !1444
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1425, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1426, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1427, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  %call2 = call %struct.decNumber* @decNumberToIntegralValue(%struct.decNumber* nonnull %dn2, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #6, !dbg !1445
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1428, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  %call3 = call %struct.decNumber* @decNumberZero(%struct.decNumber* nonnull %dn3) #6, !dbg !1446
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1425, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1426, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1427, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1428, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  %call4 = call %struct.decNumber* @decNumberRescale(%struct.decNumber* nonnull %dn, %struct.decNumber* nonnull %dn2, %struct.decNumber* nonnull %dn3, %struct.decContext* nonnull %set) #6, !dbg !1447
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1426, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  %call6 = call i8* @decNumberToString(%struct.decNumber* nonnull %dn, i8* nonnull %5) #6, !dbg !1448
  call void @llvm.dbg.value(metadata %struct.real_value* %to, metadata !1429, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  %call8 = call i32 @real_from_string(%struct.real_value* nonnull %to, i8* nonnull %5) #6, !dbg !1449
  call void @llvm.dbg.value(metadata %struct.real_value* %to, metadata !1429, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  %call9 = call i64 @real_to_integer(%struct.real_value* nonnull %to) #6, !dbg !1450
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #7, !dbg !1451
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1451
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1451
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1451
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1451
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1451
  ret i64 %call9, !dbg !1452
}

declare dso_local %struct.decNumber* @decNumberZero(%struct.decNumber*) local_unnamed_addr #2

declare dso_local %struct.decNumber* @decNumberRescale(%struct.decNumber*, %struct.decNumber*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

declare dso_local i8* @decNumberToString(%struct.decNumber*, i8*) local_unnamed_addr #2

declare dso_local i32 @real_from_string(%struct.real_value*, i8*) local_unnamed_addr #2

declare dso_local i64 @real_to_integer(%struct.real_value*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decimal_real_to_integer2(i64* %plow, i64* %phigh, %struct.real_value* %r) local_unnamed_addr #5 !dbg !1453 {
entry:
  %set = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  %dn2 = alloca %struct.decNumber, align 4
  %dn3 = alloca %struct.decNumber, align 4
  %to = alloca %struct.real_value, align 8
  %string = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i64* %plow, metadata !1457, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64* %phigh, metadata !1458, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1459, metadata !DIExpression()), !dbg !1466
  %0 = bitcast %struct.decContext* %set to i8*, !dbg !1467
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1467
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !1468
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1468
  %2 = bitcast %struct.decNumber* %dn2 to i8*, !dbg !1468
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1468
  %3 = bitcast %struct.decNumber* %dn3 to i8*, !dbg !1468
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1468
  %4 = bitcast %struct.real_value* %to to i8*, !dbg !1469
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1469
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i64 0, i64 0, !dbg !1470
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #7, !dbg !1470
  call void @llvm.dbg.declare(metadata [256 x i8]* %string, metadata !1465, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1460, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1472
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1473
  store i32 0, i32* %traps, align 4, !dbg !1474
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !1475
  store i32 5, i32* %round, align 4, !dbg !1476
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !1477
  %6 = bitcast i64* %arraydecay to %struct.decimal128*, !dbg !1478
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1461, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  %call1 = call %struct.decNumber* @decimal128ToNumber(%struct.decimal128* nonnull %6, %struct.decNumber* nonnull %dn) #6, !dbg !1479
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1460, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1461, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1462, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  %call2 = call %struct.decNumber* @decNumberToIntegralValue(%struct.decNumber* nonnull %dn2, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #6, !dbg !1480
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1463, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  %call3 = call %struct.decNumber* @decNumberZero(%struct.decNumber* nonnull %dn3) #6, !dbg !1481
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1460, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1461, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1462, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1463, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  %call4 = call %struct.decNumber* @decNumberRescale(%struct.decNumber* nonnull %dn, %struct.decNumber* nonnull %dn2, %struct.decNumber* nonnull %dn3, %struct.decContext* nonnull %set) #6, !dbg !1482
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1461, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  %call6 = call i8* @decNumberToString(%struct.decNumber* nonnull %dn, i8* nonnull %5) #6, !dbg !1483
  call void @llvm.dbg.value(metadata %struct.real_value* %to, metadata !1464, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  %call8 = call i32 @real_from_string(%struct.real_value* nonnull %to, i8* nonnull %5) #6, !dbg !1484
  call void @llvm.dbg.value(metadata %struct.real_value* %to, metadata !1464, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  call void @real_to_integer2(i64* %plow, i64* %phigh, %struct.real_value* nonnull %to) #6, !dbg !1485
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #7, !dbg !1486
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1486
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1486
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1486
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1486
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1486
  ret void, !dbg !1486
}

declare dso_local void @real_to_integer2(i64*, i64*, %struct.real_value*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @decimal_real_arithmetic(%struct.real_value* %r, i32 %code, %struct.real_value* %op0, %struct.real_value* %op1) local_unnamed_addr #5 !dbg !1487 {
entry:
  %a = alloca %struct.real_value, align 8
  %b = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1491, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %code, metadata !1492, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata %struct.real_value* %op0, metadata !1493, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata %struct.real_value* %op1, metadata !1494, metadata !DIExpression()), !dbg !1497
  %0 = bitcast %struct.real_value* %a to i8*, !dbg !1498
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1498
  %1 = bitcast %struct.real_value* %b to i8*, !dbg !1498
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !1498
  %2 = getelementptr inbounds %struct.real_value, %struct.real_value* %op0, i64 0, i32 0, !dbg !1499
  %bf.load = load i32, i32* %2, align 8, !dbg !1499
  %bf.clear = and i32 %bf.load, 4, !dbg !1499
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !1501
  br i1 %tobool, label %if.then, label %if.end, !dbg !1502

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1495, metadata !DIExpression(DW_OP_deref)), !dbg !1497
  call fastcc void @decimal_from_binary(%struct.real_value* nonnull %a, %struct.real_value* %op0) #8, !dbg !1503
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1493, metadata !DIExpression()), !dbg !1497
  br label %if.end, !dbg !1505

if.end:                                           ; preds = %entry, %if.then
  %op0.addr.0 = phi %struct.real_value* [ %op0, %entry ], [ %a, %if.then ]
  call void @llvm.dbg.value(metadata %struct.real_value* %op0.addr.0, metadata !1493, metadata !DIExpression()), !dbg !1497
  %tobool1 = icmp eq %struct.real_value* %op1, null, !dbg !1506
  br i1 %tobool1, label %if.end7, label %land.lhs.true, !dbg !1508

land.lhs.true:                                    ; preds = %if.end
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %op1, i64 0, i32 0, !dbg !1509
  %bf.load2 = load i32, i32* %3, align 8, !dbg !1509
  %bf.clear4 = and i32 %bf.load2, 4, !dbg !1509
  %tobool5 = icmp eq i32 %bf.clear4, 0, !dbg !1510
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1511

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !1496, metadata !DIExpression(DW_OP_deref)), !dbg !1497
  call fastcc void @decimal_from_binary(%struct.real_value* nonnull %b, %struct.real_value* nonnull %op1) #8, !dbg !1512
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !1494, metadata !DIExpression()), !dbg !1497
  br label %if.end7, !dbg !1514

if.end7:                                          ; preds = %land.lhs.true, %if.end, %if.then6
  %op1.addr.0 = phi %struct.real_value* [ %op1, %land.lhs.true ], [ %b, %if.then6 ], [ null, %if.end ]
  call void @llvm.dbg.value(metadata %struct.real_value* %op1.addr.0, metadata !1494, metadata !DIExpression()), !dbg !1497
  switch i32 %code, label %sw.default [
    i32 63, label %sw.bb
    i32 64, label %sw.bb8
    i32 65, label %sw.bb10
    i32 75, label %sw.bb12
    i32 80, label %sw.bb14
    i32 81, label %sw.bb24
    i32 79, label %sw.bb36
    i32 82, label %sw.bb44
    i32 77, label %sw.bb53
  ], !dbg !1515

sw.bb:                                            ; preds = %if.end7
  %call = call fastcc zeroext i8 @decimal_do_add(%struct.real_value* %r, %struct.real_value* %op0.addr.0, %struct.real_value* %op1.addr.0, i32 0) #8, !dbg !1516
  br label %cleanup, !dbg !1518

sw.bb8:                                           ; preds = %if.end7
  %call9 = call fastcc zeroext i8 @decimal_do_add(%struct.real_value* %r, %struct.real_value* %op0.addr.0, %struct.real_value* %op1.addr.0, i32 1) #8, !dbg !1519
  br label %cleanup, !dbg !1520

sw.bb10:                                          ; preds = %if.end7
  %call11 = call fastcc zeroext i8 @decimal_do_multiply(%struct.real_value* %r, %struct.real_value* %op0.addr.0, %struct.real_value* %op1.addr.0) #8, !dbg !1521
  br label %cleanup, !dbg !1522

sw.bb12:                                          ; preds = %if.end7
  %call13 = call fastcc zeroext i8 @decimal_do_divide(%struct.real_value* %r, %struct.real_value* %op0.addr.0, %struct.real_value* %op1.addr.0) #8, !dbg !1523
  br label %cleanup, !dbg !1524

sw.bb14:                                          ; preds = %if.end7
  %4 = getelementptr inbounds %struct.real_value, %struct.real_value* %op1.addr.0, i64 0, i32 0, !dbg !1525
  %bf.load15 = load i32, i32* %4, align 8, !dbg !1525
  %bf.clear16 = and i32 %bf.load15, 3, !dbg !1525
  %cmp = icmp eq i32 %bf.clear16, 3, !dbg !1527
  br i1 %cmp, label %if.then17, label %if.else, !dbg !1528

if.then17:                                        ; preds = %sw.bb14
  %5 = bitcast %struct.real_value* %r to i8*, !dbg !1529
  %6 = bitcast %struct.real_value* %op1.addr.0 to i8*, !dbg !1529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 32, i1 false), !dbg !1529
  br label %cleanup, !dbg !1530

if.else:                                          ; preds = %sw.bb14
  %call18 = call zeroext i8 @real_compare(i32 105, %struct.real_value* %op0.addr.0, %struct.real_value* %op1.addr.0) #6, !dbg !1531
  %tobool19 = icmp eq i8 %call18, 0, !dbg !1531
  %7 = bitcast %struct.real_value* %r to i8*, !dbg !1533
  br i1 %tobool19, label %if.else21, label %if.then20, !dbg !1534

if.then20:                                        ; preds = %if.else
  %8 = bitcast %struct.real_value* %op0.addr.0 to i8*, !dbg !1535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 32, i1 false), !dbg !1535
  br label %cleanup, !dbg !1536

if.else21:                                        ; preds = %if.else
  %9 = bitcast %struct.real_value* %op1.addr.0 to i8*, !dbg !1537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %9, i64 32, i1 false), !dbg !1537
  br label %cleanup

sw.bb24:                                          ; preds = %if.end7
  %10 = getelementptr inbounds %struct.real_value, %struct.real_value* %op1.addr.0, i64 0, i32 0, !dbg !1538
  %bf.load25 = load i32, i32* %10, align 8, !dbg !1538
  %bf.clear26 = and i32 %bf.load25, 3, !dbg !1538
  %cmp27 = icmp eq i32 %bf.clear26, 3, !dbg !1540
  br i1 %cmp27, label %if.then28, label %if.else29, !dbg !1541

if.then28:                                        ; preds = %sw.bb24
  %11 = bitcast %struct.real_value* %r to i8*, !dbg !1542
  %12 = bitcast %struct.real_value* %op1.addr.0 to i8*, !dbg !1542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1542
  br label %cleanup, !dbg !1543

if.else29:                                        ; preds = %sw.bb24
  %call30 = call zeroext i8 @real_compare(i32 97, %struct.real_value* %op0.addr.0, %struct.real_value* %op1.addr.0) #6, !dbg !1544
  %tobool31 = icmp eq i8 %call30, 0, !dbg !1544
  %13 = bitcast %struct.real_value* %r to i8*, !dbg !1546
  br i1 %tobool31, label %if.else33, label %if.then32, !dbg !1547

if.then32:                                        ; preds = %if.else29
  %14 = bitcast %struct.real_value* %op1.addr.0 to i8*, !dbg !1548
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1548
  br label %cleanup, !dbg !1549

if.else33:                                        ; preds = %if.else29
  %15 = bitcast %struct.real_value* %op0.addr.0 to i8*, !dbg !1550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %15, i64 32, i1 false), !dbg !1550
  br label %cleanup

sw.bb36:                                          ; preds = %if.end7
  %16 = bitcast %struct.real_value* %r to i8*, !dbg !1551
  %17 = bitcast %struct.real_value* %op0.addr.0 to i8*, !dbg !1551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !1551
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !1553
  %bytes = bitcast i64* %arraydecay to [16 x i8]*, !dbg !1553
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %bytes, i64 0, i64 15, !dbg !1553
  %18 = load i8, i8* %arrayidx, align 1, !dbg !1553
  %19 = xor i8 %18, -128, !dbg !1553
  store i8 %19, i8* %arrayidx, align 1, !dbg !1553
  %20 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1555
  %bf.load38 = load i32, i32* %20, align 8, !dbg !1556
  %bf.set = xor i32 %bf.load38, 8, !dbg !1556
  store i32 %bf.set, i32* %20, align 8, !dbg !1556
  br label %cleanup, !dbg !1557

sw.bb44:                                          ; preds = %if.end7
  %21 = bitcast %struct.real_value* %r to i8*, !dbg !1558
  %22 = bitcast %struct.real_value* %op0.addr.0 to i8*, !dbg !1558
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1558
  %arraydecay46 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !1560
  %bytes47 = bitcast i64* %arraydecay46 to [16 x i8]*, !dbg !1560
  %arrayidx48 = getelementptr inbounds [16 x i8], [16 x i8]* %bytes47, i64 0, i64 15, !dbg !1560
  %23 = load i8, i8* %arrayidx48, align 1, !dbg !1560
  %24 = and i8 %23, 127, !dbg !1560
  store i8 %24, i8* %arrayidx48, align 1, !dbg !1560
  %25 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1562
  %bf.load51 = load i32, i32* %25, align 8, !dbg !1563
  %bf.clear52 = and i32 %bf.load51, -9, !dbg !1563
  store i32 %bf.clear52, i32* %25, align 8, !dbg !1563
  br label %cleanup, !dbg !1564

sw.bb53:                                          ; preds = %if.end7
  call void @decimal_do_fix_trunc(%struct.real_value* %r, %struct.real_value* %op0.addr.0) #8, !dbg !1565
  br label %cleanup, !dbg !1566

sw.default:                                       ; preds = %if.end7
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 691, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1567
  br label %cleanup, !dbg !1568

cleanup:                                          ; preds = %if.then28, %if.else33, %if.then32, %if.then17, %if.else21, %if.then20, %sw.default, %sw.bb53, %sw.bb44, %sw.bb36, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  %retval.0 = phi i8 [ 0, %sw.default ], [ 0, %sw.bb53 ], [ 0, %sw.bb44 ], [ 0, %sw.bb36 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call, %sw.bb ], [ 0, %if.then20 ], [ 0, %if.else21 ], [ 0, %if.then17 ], [ 0, %if.then32 ], [ 0, %if.else33 ], [ 0, %if.then28 ], !dbg !1497
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !1569
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1569
  ret i8 %retval.0, !dbg !1569
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @decimal_do_add(%struct.real_value* %r, %struct.real_value* %op0, %struct.real_value* %op1, i32 %subtract_p) unnamed_addr #5 !dbg !1570 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %set = alloca %struct.decContext, align 4
  %dn2 = alloca %struct.decNumber, align 4
  %dn3 = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1574, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.real_value* %op0, metadata !1575, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.real_value* %op1, metadata !1576, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i32 %subtract_p, metadata !1577, metadata !DIExpression()), !dbg !1582
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1583
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1583
  %1 = bitcast %struct.decContext* %set to i8*, !dbg !1584
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #7, !dbg !1584
  %2 = bitcast %struct.decNumber* %dn2 to i8*, !dbg !1585
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1585
  %3 = bitcast %struct.decNumber* %dn3 to i8*, !dbg !1585
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1585
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1580, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call fastcc void @decimal_to_decnumber(%struct.real_value* %op0, %struct.decNumber* nonnull %dn2) #8, !dbg !1586
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1581, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call fastcc void @decimal_to_decnumber(%struct.real_value* %op1, %struct.decNumber* nonnull %dn3) #8, !dbg !1587
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1579, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1588
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1589
  store i32 0, i32* %traps, align 4, !dbg !1590
  %tobool = icmp eq i32 %subtract_p, 0, !dbg !1591
  br i1 %tobool, label %if.else, label %if.then, !dbg !1593

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1578, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1579, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1580, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1581, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  %call1 = call %struct.decNumber* @decNumberSubtract(%struct.decNumber* nonnull %dn, %struct.decNumber* nonnull %dn2, %struct.decNumber* nonnull %dn3, %struct.decContext* nonnull %set) #6, !dbg !1594
  br label %if.end, !dbg !1594

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1578, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1579, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1580, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1581, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  %call2 = call %struct.decNumber* @decNumberAdd(%struct.decNumber* nonnull %dn, %struct.decNumber* nonnull %dn2, %struct.decNumber* nonnull %dn3, %struct.decContext* nonnull %set) #6, !dbg !1595
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1578, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1579, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call fastcc void @decimal_from_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #8, !dbg !1596
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 5, !dbg !1597
  %4 = load i32, i32* %status, align 4, !dbg !1597
  %5 = trunc i32 %4 to i8, !dbg !1598
  %conv = and i8 %5, 32, !dbg !1598
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1599
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1599
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #7, !dbg !1599
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #7, !dbg !1599
  ret i8 %conv, !dbg !1600
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @decimal_do_multiply(%struct.real_value* %r, %struct.real_value* %op0, %struct.real_value* %op1) unnamed_addr #5 !dbg !1601 {
entry:
  %set = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  %dn2 = alloca %struct.decNumber, align 4
  %dn3 = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1605, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata %struct.real_value* %op0, metadata !1606, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata %struct.real_value* %op1, metadata !1607, metadata !DIExpression()), !dbg !1612
  %0 = bitcast %struct.decContext* %set to i8*, !dbg !1613
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1613
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !1614
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1614
  %2 = bitcast %struct.decNumber* %dn2 to i8*, !dbg !1614
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1614
  %3 = bitcast %struct.decNumber* %dn3 to i8*, !dbg !1614
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1614
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1610, metadata !DIExpression(DW_OP_deref)), !dbg !1612
  call fastcc void @decimal_to_decnumber(%struct.real_value* %op0, %struct.decNumber* nonnull %dn2) #8, !dbg !1615
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1611, metadata !DIExpression(DW_OP_deref)), !dbg !1612
  call fastcc void @decimal_to_decnumber(%struct.real_value* %op1, %struct.decNumber* nonnull %dn3) #8, !dbg !1616
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1608, metadata !DIExpression(DW_OP_deref)), !dbg !1612
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1617
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1618
  store i32 0, i32* %traps, align 4, !dbg !1619
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1608, metadata !DIExpression(DW_OP_deref)), !dbg !1612
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1609, metadata !DIExpression(DW_OP_deref)), !dbg !1612
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1610, metadata !DIExpression(DW_OP_deref)), !dbg !1612
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1611, metadata !DIExpression(DW_OP_deref)), !dbg !1612
  %call1 = call %struct.decNumber* @decNumberMultiply(%struct.decNumber* nonnull %dn, %struct.decNumber* nonnull %dn2, %struct.decNumber* nonnull %dn3, %struct.decContext* nonnull %set) #6, !dbg !1620
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1608, metadata !DIExpression(DW_OP_deref)), !dbg !1612
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1609, metadata !DIExpression(DW_OP_deref)), !dbg !1612
  call fastcc void @decimal_from_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #8, !dbg !1621
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 5, !dbg !1622
  %4 = load i32, i32* %status, align 4, !dbg !1622
  %5 = trunc i32 %4 to i8, !dbg !1623
  %conv = and i8 %5, 32, !dbg !1623
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1624
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1624
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1624
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1624
  ret i8 %conv, !dbg !1625
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @decimal_do_divide(%struct.real_value* %r, %struct.real_value* %op0, %struct.real_value* %op1) unnamed_addr #5 !dbg !1626 {
entry:
  %set = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  %dn2 = alloca %struct.decNumber, align 4
  %dn3 = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1628, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata %struct.real_value* %op0, metadata !1629, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata %struct.real_value* %op1, metadata !1630, metadata !DIExpression()), !dbg !1635
  %0 = bitcast %struct.decContext* %set to i8*, !dbg !1636
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1636
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !1637
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1637
  %2 = bitcast %struct.decNumber* %dn2 to i8*, !dbg !1637
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1637
  %3 = bitcast %struct.decNumber* %dn3 to i8*, !dbg !1637
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1637
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1633, metadata !DIExpression(DW_OP_deref)), !dbg !1635
  call fastcc void @decimal_to_decnumber(%struct.real_value* %op0, %struct.decNumber* nonnull %dn2) #8, !dbg !1638
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1634, metadata !DIExpression(DW_OP_deref)), !dbg !1635
  call fastcc void @decimal_to_decnumber(%struct.real_value* %op1, %struct.decNumber* nonnull %dn3) #8, !dbg !1639
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1631, metadata !DIExpression(DW_OP_deref)), !dbg !1635
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %set, i32 128) #6, !dbg !1640
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 4, !dbg !1641
  store i32 0, i32* %traps, align 4, !dbg !1642
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1631, metadata !DIExpression(DW_OP_deref)), !dbg !1635
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1632, metadata !DIExpression(DW_OP_deref)), !dbg !1635
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn2, metadata !1633, metadata !DIExpression(DW_OP_deref)), !dbg !1635
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn3, metadata !1634, metadata !DIExpression(DW_OP_deref)), !dbg !1635
  %call1 = call %struct.decNumber* @decNumberDivide(%struct.decNumber* nonnull %dn, %struct.decNumber* nonnull %dn2, %struct.decNumber* nonnull %dn3, %struct.decContext* nonnull %set) #6, !dbg !1643
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1631, metadata !DIExpression(DW_OP_deref)), !dbg !1635
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1632, metadata !DIExpression(DW_OP_deref)), !dbg !1635
  call fastcc void @decimal_from_decnumber(%struct.real_value* %r, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %set) #8, !dbg !1644
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 5, !dbg !1645
  %4 = load i32, i32* %status, align 4, !dbg !1645
  %5 = trunc i32 %4 to i8, !dbg !1646
  %conv = and i8 %5, 32, !dbg !1646
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %3) #7, !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %2) #7, !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %1) #7, !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #7, !dbg !1647
  ret i8 %conv, !dbg !1648
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

declare dso_local zeroext i8 @real_compare(i32, %struct.real_value*, %struct.real_value*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decimal_real_maxval(%struct.real_value* %r, i32 %sign, i32 %mode) local_unnamed_addr #5 !dbg !1649 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1653, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32 %sign, metadata !1654, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1655, metadata !DIExpression()), !dbg !1657
  switch i32 %mode, label %sw.default [
    i32 42, label %sw.epilog
    i32 43, label %sw.bb1
    i32 44, label %sw.bb2
  ], !dbg !1658

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), metadata !1656, metadata !DIExpression()), !dbg !1657
  br label %sw.epilog, !dbg !1659

sw.bb2:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), metadata !1656, metadata !DIExpression()), !dbg !1657
  br label %sw.epilog, !dbg !1661

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 718, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1662
  br label %sw.epilog, !dbg !1663

sw.epilog:                                        ; preds = %entry, %sw.default, %sw.bb2, %sw.bb1
  %max.0 = phi i8* [ undef, %sw.default ], [ getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %entry ]
  call void @llvm.dbg.value(metadata i8* %max.0, metadata !1656, metadata !DIExpression()), !dbg !1657
  tail call void @decimal_real_from_string(%struct.real_value* %r, i8* %max.0) #8, !dbg !1664
  %tobool = icmp eq i32 %sign, 0, !dbg !1665
  br i1 %tobool, label %if.end, label %if.then, !dbg !1667

if.then:                                          ; preds = %sw.epilog
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !1668
  %bytes = bitcast i64* %arraydecay to [16 x i8]*, !dbg !1668
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %bytes, i64 0, i64 15, !dbg !1668
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1668
  %1 = or i8 %0, -128, !dbg !1668
  store i8 %1, i8* %arrayidx, align 1, !dbg !1668
  br label %if.end, !dbg !1668

if.end:                                           ; preds = %sw.epilog, %if.then
  ret void, !dbg !1670
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local void @real_to_decimal(i8*, %struct.real_value*, i64, i64, i32) local_unnamed_addr #2

declare dso_local void @real_from_string3(%struct.real_value*, i8*, i32) local_unnamed_addr #2

declare dso_local %struct.decNumber* @decNumberSubtract(%struct.decNumber*, %struct.decNumber*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

declare dso_local %struct.decNumber* @decNumberAdd(%struct.decNumber*, %struct.decNumber*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

declare dso_local %struct.decNumber* @decNumberMultiply(%struct.decNumber*, %struct.decNumber*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

declare dso_local %struct.decNumber* @decNumberDivide(%struct.decNumber*, %struct.decNumber*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!386, !387, !388}
!llvm.ident = !{!389}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !361, nameTableKind: None)
!1 = !DIFile(filename: "dfp.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !16, !144, !166}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rounding", file: !4, line: 69, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./decContext.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15}
!7 = !DIEnumerator(name: "DEC_ROUND_CEILING", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "DEC_ROUND_UP", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "DEC_ROUND_HALF_UP", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "DEC_ROUND_HALF_EVEN", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "DEC_ROUND_HALF_DOWN", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "DEC_ROUND_DOWN", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "DEC_ROUND_FLOOR", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "DEC_ROUND_05UP", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "DEC_ROUND_MAX", value: 8, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !17, line: 7, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!19 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!22 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!23 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!24 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!25 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!26 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!27 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!28 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!29 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!30 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!31 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!32 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!33 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!34 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!35 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!36 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!37 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!38 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!39 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!40 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!41 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!42 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!43 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!44 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!45 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!46 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!47 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!48 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!49 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!50 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!51 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!52 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!53 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!54 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!55 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!56 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!57 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!58 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!59 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!60 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!61 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!62 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!63 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!64 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!65 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!66 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!67 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!68 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!69 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!70 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!71 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!72 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!73 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!74 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!75 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!76 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!77 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!78 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!79 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!80 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!81 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!82 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!83 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!84 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!85 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!86 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!87 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!88 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!89 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!90 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!91 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!92 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!93 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!94 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!95 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!96 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!97 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!98 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!99 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!100 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!101 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!102 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!103 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!104 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!105 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!106 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!107 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!108 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!109 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!110 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!111 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!112 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!113 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!116 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!117 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!118 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!123 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!124 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!125 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!126 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!127 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!128 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!129 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!130 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!131 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!132 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!133 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!137 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!140 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!142 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!143 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !145, line: 36, baseType: !5, size: 32, elements: !146)
!145 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!147 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!149 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!150 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!151 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!152 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!153 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!154 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!155 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!156 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!157 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!158 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!159 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!160 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!161 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!162 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!163 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!164 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!165 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !167, line: 39, baseType: !5, size: 32, elements: !168)
!167 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!169 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!170 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!171 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!173 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!174 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!175 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!176 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!177 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!178 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!179 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!180 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!181 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!182 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!183 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!184 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!185 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!186 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!187 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!188 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!189 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!190 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!191 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!192 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!193 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!194 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!195 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!196 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!197 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!198 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!199 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!200 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!201 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!202 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!203 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!204 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!205 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!206 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!207 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!208 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!209 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!210 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!211 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!212 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!213 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!214 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!215 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!216 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!217 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!218 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!219 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!220 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!221 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!222 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!223 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!224 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!225 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!226 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!227 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!228 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!229 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!230 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!231 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!232 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!233 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!234 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!235 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!236 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!237 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!238 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!239 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!240 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!241 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!242 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!243 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!244 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!245 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!246 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!247 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!248 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!249 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!250 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!251 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!252 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!253 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!254 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!255 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!256 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!257 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!258 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!259 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!260 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!261 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!262 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!263 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!264 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!265 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!266 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!267 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!268 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!269 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!270 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!271 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!272 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!273 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!274 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!275 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!276 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!277 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!278 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!279 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!280 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!281 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!282 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!283 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!284 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!285 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!286 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!287 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!288 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!289 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!290 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!291 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!292 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!293 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!294 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!295 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!296 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!297 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!298 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!299 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!300 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!301 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!302 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!303 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!304 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!305 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!306 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!307 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!308 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!309 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!310 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!311 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!312 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!313 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!314 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!315 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!316 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!317 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!318 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!319 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!320 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!321 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!322 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!323 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!324 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!325 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!326 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!327 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!328 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!329 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!330 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!331 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!332 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!333 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!334 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!335 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!336 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!337 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!338 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!339 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!340 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!341 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!342 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!343 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!344 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!345 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!346 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!347 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!348 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!349 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!350 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!351 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!352 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!353 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!354 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!355 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!356 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!357 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!358 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!359 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!360 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!361 = !{!362, !363, !364, !365, !368, !369, !371, !385, !144, !5}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!364 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "decimal128", file: !374, line: 64, baseType: !375)
!374 = !DIFile(filename: "./decimal128.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 62, size: 128, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !375, file: !374, line: 63, baseType: !378, size: 128)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 128, elements: !383)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !380, line: 24, baseType: !381)
!380 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !382, line: 38, baseType: !363)
!382 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!383 = !{!384}
!384 = !DISubrange(count: 16)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!386 = !{i32 2, !"Dwarf Version", i32 4}
!387 = !{i32 2, !"Debug Info Version", i32 3}
!388 = !{i32 1, !"wchar_size", i32 4}
!389 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!390 = distinct !DISubprogram(name: "vprintf", scope: !391, file: !391, line: 39, type: !392, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!391 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!392 = !DISubroutineType(types: !393)
!393 = !{!364, !394, !395}
!394 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !369)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !397)
!397 = !{!398, !399, !400, !401}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !396, file: !1, baseType: !5, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !396, file: !1, baseType: !5, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !396, file: !1, baseType: !368, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !396, file: !1, baseType: !368, size: 64, offset: 128)
!402 = !{!403, !404}
!403 = !DILocalVariable(name: "__fmt", arg: 1, scope: !390, file: !391, line: 39, type: !394)
!404 = !DILocalVariable(name: "__arg", arg: 2, scope: !390, file: !391, line: 39, type: !395)
!405 = !DILocation(line: 0, scope: !390)
!406 = !DILocation(line: 41, column: 20, scope: !390)
!407 = !DILocation(line: 41, column: 10, scope: !390)
!408 = !DILocation(line: 41, column: 3, scope: !390)
!409 = distinct !DISubprogram(name: "getchar", scope: !391, file: !391, line: 47, type: !410, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!364}
!412 = !{}
!413 = !DILocation(line: 49, column: 16, scope: !409)
!414 = !DILocation(line: 49, column: 10, scope: !409)
!415 = !DILocation(line: 49, column: 3, scope: !409)
!416 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !391, file: !391, line: 56, type: !417, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !477)
!417 = !DISubroutineType(types: !418)
!418 = !{!364, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !421, line: 7, baseType: !422)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !423, line: 49, size: 1728, elements: !424)
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !440, !442, !443, !444, !447, !449, !451, !455, !458, !460, !463, !466, !467, !468, !472, !473}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !422, file: !423, line: 51, baseType: !364, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !422, file: !423, line: 54, baseType: !366, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !422, file: !423, line: 55, baseType: !366, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !422, file: !423, line: 56, baseType: !366, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !422, file: !423, line: 57, baseType: !366, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !422, file: !423, line: 58, baseType: !366, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !422, file: !423, line: 59, baseType: !366, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !422, file: !423, line: 60, baseType: !366, size: 64, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !422, file: !423, line: 61, baseType: !366, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !422, file: !423, line: 64, baseType: !366, size: 64, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !422, file: !423, line: 65, baseType: !366, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !422, file: !423, line: 66, baseType: !366, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !422, file: !423, line: 68, baseType: !438, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !423, line: 36, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !422, file: !423, line: 70, baseType: !441, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !422, file: !423, line: 72, baseType: !364, size: 32, offset: 896)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !422, file: !423, line: 73, baseType: !364, size: 32, offset: 928)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !422, file: !423, line: 74, baseType: !445, size: 64, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !382, line: 152, baseType: !446)
!446 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !422, file: !423, line: 77, baseType: !448, size: 16, offset: 1024)
!448 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !422, file: !423, line: 78, baseType: !450, size: 8, offset: 1040)
!450 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !422, file: !423, line: 79, baseType: !452, size: 8, offset: 1048)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 8, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 1)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !422, file: !423, line: 81, baseType: !456, size: 64, offset: 1088)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !423, line: 43, baseType: null)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !422, file: !423, line: 89, baseType: !459, size: 64, offset: 1152)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !382, line: 153, baseType: !446)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !422, file: !423, line: 91, baseType: !461, size: 64, offset: 1216)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !423, line: 37, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !422, file: !423, line: 92, baseType: !464, size: 64, offset: 1280)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !423, line: 38, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !422, file: !423, line: 93, baseType: !441, size: 64, offset: 1344)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !422, file: !423, line: 94, baseType: !368, size: 64, offset: 1408)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !422, file: !423, line: 95, baseType: !469, size: 64, offset: 1472)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !470, line: 46, baseType: !471)
!470 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!471 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !422, file: !423, line: 96, baseType: !364, size: 32, offset: 1536)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !422, file: !423, line: 98, baseType: !474, size: 160, offset: 1568)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 160, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 20)
!477 = !{!478}
!478 = !DILocalVariable(name: "__fp", arg: 1, scope: !416, file: !391, line: 56, type: !419)
!479 = !DILocation(line: 0, scope: !416)
!480 = !DILocation(line: 58, column: 10, scope: !416)
!481 = !DILocation(line: 58, column: 3, scope: !416)
!482 = distinct !DISubprogram(name: "getc_unlocked", scope: !391, file: !391, line: 66, type: !417, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !483)
!483 = !{!484}
!484 = !DILocalVariable(name: "__fp", arg: 1, scope: !482, file: !391, line: 66, type: !419)
!485 = !DILocation(line: 0, scope: !482)
!486 = !DILocation(line: 68, column: 10, scope: !482)
!487 = !DILocation(line: 68, column: 3, scope: !482)
!488 = distinct !DISubprogram(name: "getchar_unlocked", scope: !391, file: !391, line: 73, type: !410, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !412)
!489 = !DILocation(line: 75, column: 10, scope: !488)
!490 = !DILocation(line: 75, column: 3, scope: !488)
!491 = distinct !DISubprogram(name: "putchar", scope: !391, file: !391, line: 82, type: !492, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{!364, !364}
!494 = !{!495}
!495 = !DILocalVariable(name: "__c", arg: 1, scope: !491, file: !391, line: 82, type: !364)
!496 = !DILocation(line: 0, scope: !491)
!497 = !DILocation(line: 84, column: 21, scope: !491)
!498 = !DILocation(line: 84, column: 10, scope: !491)
!499 = !DILocation(line: 84, column: 3, scope: !491)
!500 = distinct !DISubprogram(name: "fputc_unlocked", scope: !391, file: !391, line: 91, type: !501, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!364, !364, !419}
!503 = !{!504, !505}
!504 = !DILocalVariable(name: "__c", arg: 1, scope: !500, file: !391, line: 91, type: !364)
!505 = !DILocalVariable(name: "__stream", arg: 2, scope: !500, file: !391, line: 91, type: !419)
!506 = !DILocation(line: 0, scope: !500)
!507 = !DILocation(line: 93, column: 10, scope: !500)
!508 = !DILocation(line: 93, column: 3, scope: !500)
!509 = distinct !DISubprogram(name: "putc_unlocked", scope: !391, file: !391, line: 101, type: !501, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !510)
!510 = !{!511, !512}
!511 = !DILocalVariable(name: "__c", arg: 1, scope: !509, file: !391, line: 101, type: !364)
!512 = !DILocalVariable(name: "__stream", arg: 2, scope: !509, file: !391, line: 101, type: !419)
!513 = !DILocation(line: 0, scope: !509)
!514 = !DILocation(line: 103, column: 10, scope: !509)
!515 = !DILocation(line: 103, column: 3, scope: !509)
!516 = distinct !DISubprogram(name: "putchar_unlocked", scope: !391, file: !391, line: 108, type: !492, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !517)
!517 = !{!518}
!518 = !DILocalVariable(name: "__c", arg: 1, scope: !516, file: !391, line: 108, type: !364)
!519 = !DILocation(line: 0, scope: !516)
!520 = !DILocation(line: 110, column: 10, scope: !516)
!521 = !DILocation(line: 110, column: 3, scope: !516)
!522 = distinct !DISubprogram(name: "getline", scope: !391, file: !391, line: 118, type: !523, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !527)
!523 = !DISubroutineType(types: !524)
!524 = !{!525, !365, !526, !419}
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !382, line: 193, baseType: !446)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!527 = !{!528, !529, !530}
!528 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !522, file: !391, line: 118, type: !365)
!529 = !DILocalVariable(name: "__n", arg: 2, scope: !522, file: !391, line: 118, type: !526)
!530 = !DILocalVariable(name: "__stream", arg: 3, scope: !522, file: !391, line: 118, type: !419)
!531 = !DILocation(line: 0, scope: !522)
!532 = !DILocation(line: 120, column: 10, scope: !522)
!533 = !DILocation(line: 120, column: 3, scope: !522)
!534 = distinct !DISubprogram(name: "feof_unlocked", scope: !391, file: !391, line: 128, type: !417, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !535)
!535 = !{!536}
!536 = !DILocalVariable(name: "__stream", arg: 1, scope: !534, file: !391, line: 128, type: !419)
!537 = !DILocation(line: 0, scope: !534)
!538 = !DILocation(line: 130, column: 10, scope: !534)
!539 = !DILocation(line: 130, column: 3, scope: !534)
!540 = distinct !DISubprogram(name: "ferror_unlocked", scope: !391, file: !391, line: 135, type: !417, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !541)
!541 = !{!542}
!542 = !DILocalVariable(name: "__stream", arg: 1, scope: !540, file: !391, line: 135, type: !419)
!543 = !DILocation(line: 0, scope: !540)
!544 = !DILocation(line: 137, column: 10, scope: !540)
!545 = !DILocation(line: 137, column: 3, scope: !540)
!546 = distinct !DISubprogram(name: "tolower", scope: !547, file: !547, line: 207, type: !492, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !548)
!547 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!548 = !{!549}
!549 = !DILocalVariable(name: "__c", arg: 1, scope: !546, file: !547, line: 207, type: !364)
!550 = !DILocation(line: 0, scope: !546)
!551 = !DILocation(line: 209, column: 22, scope: !546)
!552 = !DILocation(line: 209, column: 39, scope: !546)
!553 = !DILocation(line: 209, column: 38, scope: !546)
!554 = !DILocation(line: 209, column: 37, scope: !546)
!555 = !DILocation(line: 209, column: 10, scope: !546)
!556 = !DILocation(line: 209, column: 3, scope: !546)
!557 = distinct !DISubprogram(name: "toupper", scope: !547, file: !547, line: 213, type: !492, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !558)
!558 = !{!559}
!559 = !DILocalVariable(name: "__c", arg: 1, scope: !557, file: !547, line: 213, type: !364)
!560 = !DILocation(line: 0, scope: !557)
!561 = !DILocation(line: 215, column: 22, scope: !557)
!562 = !DILocation(line: 215, column: 39, scope: !557)
!563 = !DILocation(line: 215, column: 38, scope: !557)
!564 = !DILocation(line: 215, column: 37, scope: !557)
!565 = !DILocation(line: 215, column: 10, scope: !557)
!566 = !DILocation(line: 215, column: 3, scope: !557)
!567 = distinct !DISubprogram(name: "atoi", scope: !568, file: !568, line: 361, type: !569, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !571)
!568 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!569 = !DISubroutineType(types: !570)
!570 = !{!364, !369}
!571 = !{!572}
!572 = !DILocalVariable(name: "__nptr", arg: 1, scope: !567, file: !568, line: 361, type: !369)
!573 = !DILocation(line: 0, scope: !567)
!574 = !DILocation(line: 363, column: 16, scope: !567)
!575 = !DILocation(line: 363, column: 10, scope: !567)
!576 = !DILocation(line: 363, column: 3, scope: !567)
!577 = distinct !DISubprogram(name: "atol", scope: !568, file: !568, line: 366, type: !578, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{!446, !369}
!580 = !{!581}
!581 = !DILocalVariable(name: "__nptr", arg: 1, scope: !577, file: !568, line: 366, type: !369)
!582 = !DILocation(line: 0, scope: !577)
!583 = !DILocation(line: 368, column: 10, scope: !577)
!584 = !DILocation(line: 368, column: 3, scope: !577)
!585 = distinct !DISubprogram(name: "atoll", scope: !568, file: !568, line: 373, type: !586, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !589)
!586 = !DISubroutineType(types: !587)
!587 = !{!588, !369}
!588 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!589 = !{!590}
!590 = !DILocalVariable(name: "__nptr", arg: 1, scope: !585, file: !568, line: 373, type: !369)
!591 = !DILocation(line: 0, scope: !585)
!592 = !DILocation(line: 375, column: 10, scope: !585)
!593 = !DILocation(line: 375, column: 3, scope: !585)
!594 = distinct !DISubprogram(name: "bsearch", scope: !595, file: !595, line: 20, type: !596, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !604)
!595 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!596 = !DISubroutineType(types: !597)
!597 = !{!368, !598, !598, !469, !469, !600}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !568, line: 808, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!364, !598, !598}
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!605 = !DILocalVariable(name: "__key", arg: 1, scope: !594, file: !595, line: 20, type: !598)
!606 = !DILocalVariable(name: "__base", arg: 2, scope: !594, file: !595, line: 20, type: !598)
!607 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !594, file: !595, line: 20, type: !469)
!608 = !DILocalVariable(name: "__size", arg: 4, scope: !594, file: !595, line: 20, type: !469)
!609 = !DILocalVariable(name: "__compar", arg: 5, scope: !594, file: !595, line: 21, type: !600)
!610 = !DILocalVariable(name: "__l", scope: !594, file: !595, line: 23, type: !469)
!611 = !DILocalVariable(name: "__u", scope: !594, file: !595, line: 23, type: !469)
!612 = !DILocalVariable(name: "__idx", scope: !594, file: !595, line: 23, type: !469)
!613 = !DILocalVariable(name: "__p", scope: !594, file: !595, line: 24, type: !598)
!614 = !DILocalVariable(name: "__comparison", scope: !594, file: !595, line: 25, type: !364)
!615 = !DILocation(line: 0, scope: !594)
!616 = !DILocation(line: 29, column: 3, scope: !594)
!617 = !DILocation(line: 27, column: 7, scope: !594)
!618 = !DILocation(line: 29, column: 14, scope: !594)
!619 = !DILocation(line: 31, column: 20, scope: !620)
!620 = distinct !DILexicalBlock(scope: !594, file: !595, line: 30, column: 5)
!621 = !DILocation(line: 31, column: 27, scope: !620)
!622 = !DILocation(line: 32, column: 56, scope: !620)
!623 = !DILocation(line: 32, column: 47, scope: !620)
!624 = !DILocation(line: 33, column: 22, scope: !620)
!625 = !DILocation(line: 34, column: 24, scope: !626)
!626 = distinct !DILexicalBlock(scope: !620, file: !595, line: 34, column: 11)
!627 = !DILocation(line: 34, column: 11, scope: !620)
!628 = !DILocation(line: 36, column: 29, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !595, line: 36, column: 16)
!630 = !DILocation(line: 36, column: 16, scope: !626)
!631 = !DILocation(line: 37, column: 14, scope: !629)
!632 = distinct !{!632, !616, !633}
!633 = !DILocation(line: 40, column: 5, scope: !594)
!634 = !DILocation(line: 43, column: 1, scope: !594)
!635 = distinct !DISubprogram(name: "atof", scope: !636, file: !636, line: 25, type: !637, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !640)
!636 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!637 = !DISubroutineType(types: !638)
!638 = !{!639, !369}
!639 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!640 = !{!641}
!641 = !DILocalVariable(name: "__nptr", arg: 1, scope: !635, file: !636, line: 25, type: !369)
!642 = !DILocation(line: 0, scope: !635)
!643 = !DILocation(line: 27, column: 10, scope: !635)
!644 = !DILocation(line: 27, column: 3, scope: !635)
!645 = distinct !DISubprogram(name: "strtoimax", scope: !646, file: !646, line: 324, type: !647, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !653)
!646 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!647 = !DISubroutineType(types: !648)
!648 = !{!649, !394, !652, !364}
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !650, line: 101, baseType: !651)
!650 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !382, line: 72, baseType: !446)
!652 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !365)
!653 = !{!654, !655, !656}
!654 = !DILocalVariable(name: "nptr", arg: 1, scope: !645, file: !646, line: 324, type: !394)
!655 = !DILocalVariable(name: "endptr", arg: 2, scope: !645, file: !646, line: 324, type: !652)
!656 = !DILocalVariable(name: "base", arg: 3, scope: !645, file: !646, line: 324, type: !364)
!657 = !DILocation(line: 0, scope: !645)
!658 = !DILocation(line: 327, column: 10, scope: !645)
!659 = !DILocation(line: 327, column: 3, scope: !645)
!660 = distinct !DISubprogram(name: "strtoumax", scope: !646, file: !646, line: 336, type: !661, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !665)
!661 = !DISubroutineType(types: !662)
!662 = !{!663, !394, !652, !364}
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !650, line: 102, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !382, line: 73, baseType: !471)
!665 = !{!666, !667, !668}
!666 = !DILocalVariable(name: "nptr", arg: 1, scope: !660, file: !646, line: 336, type: !394)
!667 = !DILocalVariable(name: "endptr", arg: 2, scope: !660, file: !646, line: 336, type: !652)
!668 = !DILocalVariable(name: "base", arg: 3, scope: !660, file: !646, line: 336, type: !364)
!669 = !DILocation(line: 0, scope: !660)
!670 = !DILocation(line: 339, column: 10, scope: !660)
!671 = !DILocation(line: 339, column: 3, scope: !660)
!672 = distinct !DISubprogram(name: "wcstoimax", scope: !646, file: !646, line: 348, type: !673, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !682)
!673 = !DISubroutineType(types: !674)
!674 = !{!649, !675, !679, !364}
!675 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !646, line: 34, baseType: !364)
!679 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!682 = !{!683, !684, !685}
!683 = !DILocalVariable(name: "nptr", arg: 1, scope: !672, file: !646, line: 348, type: !675)
!684 = !DILocalVariable(name: "endptr", arg: 2, scope: !672, file: !646, line: 348, type: !679)
!685 = !DILocalVariable(name: "base", arg: 3, scope: !672, file: !646, line: 348, type: !364)
!686 = !DILocation(line: 0, scope: !672)
!687 = !DILocation(line: 351, column: 10, scope: !672)
!688 = !DILocation(line: 351, column: 3, scope: !672)
!689 = distinct !DISubprogram(name: "wcstoumax", scope: !646, file: !646, line: 362, type: !690, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!663, !675, !679, !364}
!692 = !{!693, !694, !695}
!693 = !DILocalVariable(name: "nptr", arg: 1, scope: !689, file: !646, line: 362, type: !675)
!694 = !DILocalVariable(name: "endptr", arg: 2, scope: !689, file: !646, line: 362, type: !679)
!695 = !DILocalVariable(name: "base", arg: 3, scope: !689, file: !646, line: 362, type: !364)
!696 = !DILocation(line: 0, scope: !689)
!697 = !DILocation(line: 365, column: 10, scope: !689)
!698 = !DILocation(line: 365, column: 3, scope: !689)
!699 = distinct !DISubprogram(name: "stat", scope: !700, file: !700, line: 453, type: !701, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !740)
!700 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!701 = !DISubroutineType(types: !702)
!702 = !{!364, !369, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !705, line: 46, size: 1152, elements: !706)
!705 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!706 = !{!707, !709, !711, !713, !715, !717, !719, !720, !721, !722, !724, !726, !734, !735, !736}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !704, file: !705, line: 48, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !382, line: 145, baseType: !471)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !704, file: !705, line: 53, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !382, line: 148, baseType: !471)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !704, file: !705, line: 61, baseType: !712, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !382, line: 151, baseType: !471)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !704, file: !705, line: 62, baseType: !714, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !382, line: 150, baseType: !5)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !704, file: !705, line: 64, baseType: !716, size: 32, offset: 224)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !382, line: 146, baseType: !5)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !704, file: !705, line: 65, baseType: !718, size: 32, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !382, line: 147, baseType: !5)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !704, file: !705, line: 67, baseType: !364, size: 32, offset: 288)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !704, file: !705, line: 69, baseType: !708, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !704, file: !705, line: 74, baseType: !445, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !704, file: !705, line: 78, baseType: !723, size: 64, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !382, line: 174, baseType: !446)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !704, file: !705, line: 80, baseType: !725, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !382, line: 179, baseType: !446)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !704, file: !705, line: 91, baseType: !727, size: 128, offset: 576)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !728, line: 10, size: 128, elements: !729)
!728 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!729 = !{!730, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !727, file: !728, line: 12, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !382, line: 160, baseType: !446)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !727, file: !728, line: 16, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !382, line: 196, baseType: !446)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !704, file: !705, line: 92, baseType: !727, size: 128, offset: 704)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !704, file: !705, line: 93, baseType: !727, size: 128, offset: 832)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !704, file: !705, line: 106, baseType: !737, size: 192, offset: 960)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 192, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 3)
!740 = !{!741, !742}
!741 = !DILocalVariable(name: "__path", arg: 1, scope: !699, file: !700, line: 453, type: !369)
!742 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !699, file: !700, line: 453, type: !703)
!743 = !DILocation(line: 0, scope: !699)
!744 = !DILocation(line: 455, column: 10, scope: !699)
!745 = !DILocation(line: 455, column: 3, scope: !699)
!746 = distinct !DISubprogram(name: "lstat", scope: !700, file: !700, line: 460, type: !701, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !747)
!747 = !{!748, !749}
!748 = !DILocalVariable(name: "__path", arg: 1, scope: !746, file: !700, line: 460, type: !369)
!749 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !746, file: !700, line: 460, type: !703)
!750 = !DILocation(line: 0, scope: !746)
!751 = !DILocation(line: 462, column: 10, scope: !746)
!752 = !DILocation(line: 462, column: 3, scope: !746)
!753 = distinct !DISubprogram(name: "fstat", scope: !700, file: !700, line: 467, type: !754, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!364, !364, !703}
!756 = !{!757, !758}
!757 = !DILocalVariable(name: "__fd", arg: 1, scope: !753, file: !700, line: 467, type: !364)
!758 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !753, file: !700, line: 467, type: !703)
!759 = !DILocation(line: 0, scope: !753)
!760 = !DILocation(line: 469, column: 10, scope: !753)
!761 = !DILocation(line: 469, column: 3, scope: !753)
!762 = distinct !DISubprogram(name: "fstatat", scope: !700, file: !700, line: 474, type: !763, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{!364, !364, !369, !703, !364}
!765 = !{!766, !767, !768, !769}
!766 = !DILocalVariable(name: "__fd", arg: 1, scope: !762, file: !700, line: 474, type: !364)
!767 = !DILocalVariable(name: "__filename", arg: 2, scope: !762, file: !700, line: 474, type: !369)
!768 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !762, file: !700, line: 474, type: !703)
!769 = !DILocalVariable(name: "__flag", arg: 4, scope: !762, file: !700, line: 474, type: !364)
!770 = !DILocation(line: 0, scope: !762)
!771 = !DILocation(line: 477, column: 10, scope: !762)
!772 = !DILocation(line: 477, column: 3, scope: !762)
!773 = distinct !DISubprogram(name: "mknod", scope: !700, file: !700, line: 483, type: !774, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{!364, !369, !714, !708}
!776 = !{!777, !778, !779}
!777 = !DILocalVariable(name: "__path", arg: 1, scope: !773, file: !700, line: 483, type: !369)
!778 = !DILocalVariable(name: "__mode", arg: 2, scope: !773, file: !700, line: 483, type: !714)
!779 = !DILocalVariable(name: "__dev", arg: 3, scope: !773, file: !700, line: 483, type: !708)
!780 = !DILocation(line: 0, scope: !773)
!781 = !DILocation(line: 485, column: 10, scope: !773)
!782 = !DILocation(line: 485, column: 3, scope: !773)
!783 = distinct !DISubprogram(name: "mknodat", scope: !700, file: !700, line: 491, type: !784, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!364, !364, !369, !714, !708}
!786 = !{!787, !788, !789, !790}
!787 = !DILocalVariable(name: "__fd", arg: 1, scope: !783, file: !700, line: 491, type: !364)
!788 = !DILocalVariable(name: "__path", arg: 2, scope: !783, file: !700, line: 491, type: !369)
!789 = !DILocalVariable(name: "__mode", arg: 3, scope: !783, file: !700, line: 491, type: !714)
!790 = !DILocalVariable(name: "__dev", arg: 4, scope: !783, file: !700, line: 491, type: !708)
!791 = !DILocation(line: 0, scope: !783)
!792 = !DILocation(line: 494, column: 10, scope: !783)
!793 = !DILocation(line: 494, column: 3, scope: !783)
!794 = distinct !DISubprogram(name: "stat64", scope: !700, file: !700, line: 502, type: !795, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !817)
!795 = !DISubroutineType(types: !796)
!796 = !{!364, !369, !797}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !705, line: 119, size: 1152, elements: !799)
!799 = !{!800, !801, !803, !804, !805, !806, !807, !808, !809, !810, !811, !813, !814, !815, !816}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !798, file: !705, line: 121, baseType: !708, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !798, file: !705, line: 123, baseType: !802, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !382, line: 149, baseType: !471)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !798, file: !705, line: 124, baseType: !712, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !798, file: !705, line: 125, baseType: !714, size: 32, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !798, file: !705, line: 132, baseType: !716, size: 32, offset: 224)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !798, file: !705, line: 133, baseType: !718, size: 32, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !798, file: !705, line: 135, baseType: !364, size: 32, offset: 288)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !798, file: !705, line: 136, baseType: !708, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !798, file: !705, line: 137, baseType: !445, size: 64, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !798, file: !705, line: 143, baseType: !723, size: 64, offset: 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !798, file: !705, line: 144, baseType: !812, size: 64, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !382, line: 180, baseType: !446)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !798, file: !705, line: 152, baseType: !727, size: 128, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !798, file: !705, line: 153, baseType: !727, size: 128, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !798, file: !705, line: 154, baseType: !727, size: 128, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !798, file: !705, line: 164, baseType: !737, size: 192, offset: 960)
!817 = !{!818, !819}
!818 = !DILocalVariable(name: "__path", arg: 1, scope: !794, file: !700, line: 502, type: !369)
!819 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !794, file: !700, line: 502, type: !797)
!820 = !DILocation(line: 0, scope: !794)
!821 = !DILocation(line: 504, column: 10, scope: !794)
!822 = !DILocation(line: 504, column: 3, scope: !794)
!823 = distinct !DISubprogram(name: "lstat64", scope: !700, file: !700, line: 509, type: !795, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !824)
!824 = !{!825, !826}
!825 = !DILocalVariable(name: "__path", arg: 1, scope: !823, file: !700, line: 509, type: !369)
!826 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !823, file: !700, line: 509, type: !797)
!827 = !DILocation(line: 0, scope: !823)
!828 = !DILocation(line: 511, column: 10, scope: !823)
!829 = !DILocation(line: 511, column: 3, scope: !823)
!830 = distinct !DISubprogram(name: "fstat64", scope: !700, file: !700, line: 516, type: !831, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!364, !364, !797}
!833 = !{!834, !835}
!834 = !DILocalVariable(name: "__fd", arg: 1, scope: !830, file: !700, line: 516, type: !364)
!835 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !830, file: !700, line: 516, type: !797)
!836 = !DILocation(line: 0, scope: !830)
!837 = !DILocation(line: 518, column: 10, scope: !830)
!838 = !DILocation(line: 518, column: 3, scope: !830)
!839 = distinct !DISubprogram(name: "fstatat64", scope: !700, file: !700, line: 523, type: !840, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{!364, !364, !369, !797, !364}
!842 = !{!843, !844, !845, !846}
!843 = !DILocalVariable(name: "__fd", arg: 1, scope: !839, file: !700, line: 523, type: !364)
!844 = !DILocalVariable(name: "__filename", arg: 2, scope: !839, file: !700, line: 523, type: !369)
!845 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !839, file: !700, line: 523, type: !797)
!846 = !DILocalVariable(name: "__flag", arg: 4, scope: !839, file: !700, line: 523, type: !364)
!847 = !DILocation(line: 0, scope: !839)
!848 = !DILocation(line: 526, column: 10, scope: !839)
!849 = !DILocation(line: 526, column: 3, scope: !839)
!850 = distinct !DISubprogram(name: "decimal_real_from_string", scope: !1, file: !1, line: 76, type: !851, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !865)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !853, !369}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !855, line: 52, size: 256, elements: !856)
!855 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!856 = !{!857, !858, !859, !860, !861, !862, !863}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !854, file: !855, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !854, file: !855, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !854, file: !855, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !854, file: !855, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !854, file: !855, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !854, file: !855, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !854, file: !855, line: 62, baseType: !864, size: 192, offset: 64)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 192, elements: !738)
!865 = !{!866, !867, !868, !885}
!866 = !DILocalVariable(name: "r", arg: 1, scope: !850, file: !1, line: 76, type: !853)
!867 = !DILocalVariable(name: "s", arg: 2, scope: !850, file: !1, line: 76, type: !369)
!868 = !DILocalVariable(name: "dn", scope: !850, file: !1, line: 78, type: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "decNumber", file: !870, line: 84, baseType: !871)
!870 = !DIFile(filename: "./decNumber.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !870, line: 77, size: 288, elements: !872)
!872 = !{!873, !877, !878, !879}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !871, file: !870, line: 78, baseType: !874, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !875, line: 26, baseType: !876)
!875 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !382, line: 41, baseType: !364)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "exponent", scope: !871, file: !870, line: 79, baseType: !874, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !871, file: !870, line: 81, baseType: !379, size: 8, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "lsu", scope: !871, file: !870, line: 83, baseType: !880, size: 192, offset: 80)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !881, size: 192, elements: !883)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !380, line: 25, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !382, line: 40, baseType: !448)
!883 = !{!884}
!884 = !DISubrange(count: 12)
!885 = !DILocalVariable(name: "set", scope: !850, file: !1, line: 79, type: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "decContext", file: !4, line: 93, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 82, size: 224, elements: !888)
!888 = !{!889, !890, !891, !892, !893, !896, !897}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !887, file: !4, line: 83, baseType: !874, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !887, file: !4, line: 84, baseType: !874, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !887, file: !4, line: 85, baseType: !874, size: 32, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "round", scope: !887, file: !4, line: 86, baseType: !3, size: 32, offset: 96)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !887, file: !4, line: 87, baseType: !894, size: 32, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !380, line: 26, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !382, line: 42, baseType: !5)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !887, file: !4, line: 88, baseType: !894, size: 32, offset: 160)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "clamp", scope: !887, file: !4, line: 89, baseType: !379, size: 8, offset: 192)
!898 = !DILocation(line: 0, scope: !850)
!899 = !DILocation(line: 78, column: 3, scope: !850)
!900 = !DILocation(line: 79, column: 3, scope: !850)
!901 = !DILocation(line: 80, column: 3, scope: !850)
!902 = !DILocation(line: 81, column: 7, scope: !850)
!903 = !DILocation(line: 81, column: 13, scope: !850)
!904 = !DILocation(line: 83, column: 3, scope: !850)
!905 = !DILocation(line: 88, column: 3, scope: !850)
!906 = !DILocation(line: 89, column: 1, scope: !850)
!907 = distinct !DISubprogram(name: "decimal_from_decnumber", scope: !1, file: !1, line: 49, type: !908, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !912)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !853, !910, !911}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!912 = !{!913, !914, !915}
!913 = !DILocalVariable(name: "r", arg: 1, scope: !907, file: !1, line: 49, type: !853)
!914 = !DILocalVariable(name: "dn", arg: 2, scope: !907, file: !1, line: 49, type: !910)
!915 = !DILocalVariable(name: "context", arg: 3, scope: !907, file: !1, line: 49, type: !911)
!916 = !DILocation(line: 0, scope: !907)
!917 = !DILocation(line: 51, column: 11, scope: !907)
!918 = !DILocation(line: 51, column: 3, scope: !907)
!919 = !DILocation(line: 53, column: 6, scope: !907)
!920 = !DILocation(line: 53, column: 9, scope: !907)
!921 = !DILocation(line: 54, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !907, file: !1, line: 54, column: 7)
!923 = !DILocation(line: 54, column: 7, scope: !907)
!924 = !DILocation(line: 55, column: 11, scope: !922)
!925 = !DILocation(line: 56, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !907, file: !1, line: 56, column: 7)
!927 = !DILocation(line: 55, column: 5, scope: !922)
!928 = !DILocation(line: 56, column: 7, scope: !907)
!929 = !DILocation(line: 57, column: 11, scope: !926)
!930 = !DILocation(line: 57, column: 5, scope: !926)
!931 = !DILocation(line: 58, column: 16, scope: !932)
!932 = distinct !DILexicalBlock(scope: !907, file: !1, line: 58, column: 7)
!933 = !DILocation(line: 58, column: 23, scope: !932)
!934 = !DILocation(line: 58, column: 7, scope: !907)
!935 = !DILocation(line: 59, column: 11, scope: !932)
!936 = !DILocation(line: 59, column: 5, scope: !932)
!937 = !DILocation(line: 60, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !907, file: !1, line: 60, column: 7)
!939 = !DILocation(line: 60, column: 7, scope: !907)
!940 = !DILocation(line: 61, column: 13, scope: !938)
!941 = !DILocation(line: 61, column: 5, scope: !938)
!942 = !DILocation(line: 62, column: 14, scope: !907)
!943 = !DILocation(line: 64, column: 10, scope: !944)
!944 = distinct !DILexicalBlock(scope: !907, file: !1, line: 64, column: 7)
!945 = !DILocation(line: 64, column: 13, scope: !944)
!946 = !DILocation(line: 64, column: 7, scope: !907)
!947 = !DILocation(line: 67, column: 3, scope: !907)
!948 = !DILocation(line: 68, column: 12, scope: !907)
!949 = !DILocation(line: 68, column: 18, scope: !907)
!950 = !DILocation(line: 70, column: 40, scope: !907)
!951 = !DILocation(line: 70, column: 25, scope: !907)
!952 = !DILocation(line: 70, column: 3, scope: !907)
!953 = !DILocation(line: 71, column: 1, scope: !907)
!954 = distinct !DISubprogram(name: "encode_decimal32", scope: !1, file: !1, line: 130, type: !955, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !987)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !957, !984, !985}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_format", file: !855, line: 124, size: 448, elements: !960)
!960 = !{!961, !963, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "encode", scope: !959, file: !855, line: 127, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !959, file: !855, line: 129, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !957, !853, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !959, file: !855, line: 133, baseType: !364, size: 32, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !959, file: !855, line: 136, baseType: !364, size: 32, offset: 160)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pnan", scope: !959, file: !855, line: 139, baseType: !364, size: 32, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !959, file: !855, line: 142, baseType: !364, size: 32, offset: 224)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !959, file: !855, line: 145, baseType: !364, size: 32, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "signbit_ro", scope: !959, file: !855, line: 149, baseType: !364, size: 32, offset: 288)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "signbit_rw", scope: !959, file: !855, line: 153, baseType: !364, size: 32, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "round_towards_zero", scope: !959, file: !855, line: 156, baseType: !363, size: 8, offset: 352)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "has_sign_dependent_rounding", scope: !959, file: !855, line: 157, baseType: !363, size: 8, offset: 360)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "has_nans", scope: !959, file: !855, line: 160, baseType: !363, size: 8, offset: 368)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "has_inf", scope: !959, file: !855, line: 161, baseType: !363, size: 8, offset: 376)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm", scope: !959, file: !855, line: 162, baseType: !363, size: 8, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "has_signed_zero", scope: !959, file: !855, line: 163, baseType: !363, size: 8, offset: 392)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "qnan_msb_set", scope: !959, file: !855, line: 164, baseType: !363, size: 8, offset: 400)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_nan_lsbs_set", scope: !959, file: !855, line: 165, baseType: !363, size: 8, offset: 408)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!987 = !{!988, !989, !990, !991, !992, !1001, !1002}
!988 = !DILocalVariable(name: "fmt", arg: 1, scope: !954, file: !1, line: 130, type: !957)
!989 = !DILocalVariable(name: "buf", arg: 2, scope: !954, file: !1, line: 131, type: !984)
!990 = !DILocalVariable(name: "r", arg: 3, scope: !954, file: !1, line: 131, type: !985)
!991 = !DILocalVariable(name: "dn", scope: !954, file: !1, line: 133, type: !869)
!992 = !DILocalVariable(name: "d32", scope: !954, file: !1, line: 134, type: !993)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "decimal32", file: !994, line: 64, baseType: !995)
!994 = !DIFile(filename: "./decimal32.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !994, line: 62, size: 32, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !995, file: !994, line: 63, baseType: !998, size: 32)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 32, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 4)
!1001 = !DILocalVariable(name: "set", scope: !954, file: !1, line: 135, type: !886)
!1002 = !DILocalVariable(name: "image", scope: !954, file: !1, line: 136, type: !874)
!1003 = !DILocation(line: 0, scope: !954)
!1004 = !DILocation(line: 133, column: 3, scope: !954)
!1005 = !DILocation(line: 134, column: 3, scope: !954)
!1006 = !DILocation(line: 135, column: 3, scope: !954)
!1007 = !DILocation(line: 136, column: 3, scope: !954)
!1008 = !DILocation(line: 138, column: 3, scope: !954)
!1009 = !DILocation(line: 139, column: 7, scope: !954)
!1010 = !DILocation(line: 139, column: 13, scope: !954)
!1011 = !DILocation(line: 141, column: 3, scope: !954)
!1012 = !DILocation(line: 142, column: 3, scope: !954)
!1013 = !DILocation(line: 144, column: 3, scope: !954)
!1014 = !DILocation(line: 145, column: 12, scope: !954)
!1015 = !DILocation(line: 145, column: 10, scope: !954)
!1016 = !DILocation(line: 146, column: 1, scope: !954)
!1017 = distinct !DISubprogram(name: "decimal_to_decnumber", scope: !1, file: !1, line: 94, type: !1018, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !985, !910}
!1020 = !{!1021, !1022, !1023}
!1021 = !DILocalVariable(name: "r", arg: 1, scope: !1017, file: !1, line: 94, type: !985)
!1022 = !DILocalVariable(name: "dn", arg: 2, scope: !1017, file: !1, line: 94, type: !910)
!1023 = !DILocalVariable(name: "set", scope: !1017, file: !1, line: 96, type: !886)
!1024 = !DILocation(line: 0, scope: !1017)
!1025 = !DILocation(line: 96, column: 3, scope: !1017)
!1026 = !DILocation(line: 97, column: 3, scope: !1017)
!1027 = !DILocation(line: 98, column: 7, scope: !1017)
!1028 = !DILocation(line: 98, column: 13, scope: !1017)
!1029 = !DILocation(line: 100, column: 14, scope: !1017)
!1030 = !DILocation(line: 100, column: 3, scope: !1017)
!1031 = !DILocation(line: 103, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 101, column: 5)
!1033 = !DILocation(line: 104, column: 7, scope: !1032)
!1034 = !DILocation(line: 106, column: 7, scope: !1032)
!1035 = !DILocation(line: 107, column: 7, scope: !1032)
!1036 = !DILocation(line: 109, column: 14, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 109, column: 11)
!1038 = !DILocation(line: 109, column: 11, scope: !1037)
!1039 = !DILocation(line: 109, column: 11, scope: !1032)
!1040 = !DILocation(line: 110, column: 9, scope: !1037)
!1041 = !DILocation(line: 112, column: 9, scope: !1037)
!1042 = !DILocation(line: 115, column: 7, scope: !1032)
!1043 = !DILocation(line: 116, column: 48, scope: !1032)
!1044 = !DILocation(line: 116, column: 27, scope: !1032)
!1045 = !DILocation(line: 116, column: 7, scope: !1032)
!1046 = !DILocation(line: 117, column: 7, scope: !1032)
!1047 = !DILocation(line: 123, column: 10, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 123, column: 7)
!1049 = !DILocation(line: 123, column: 18, scope: !1048)
!1050 = !DILocation(line: 123, column: 15, scope: !1048)
!1051 = !DILocation(line: 123, column: 7, scope: !1017)
!1052 = !DILocation(line: 124, column: 14, scope: !1048)
!1053 = !DILocation(line: 124, column: 5, scope: !1048)
!1054 = !DILocation(line: 125, column: 1, scope: !1017)
!1055 = distinct !DISubprogram(name: "decode_decimal32", scope: !1, file: !1, line: 151, type: !965, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1057 = !DILocalVariable(name: "fmt", arg: 1, scope: !1055, file: !1, line: 151, type: !957)
!1058 = !DILocalVariable(name: "r", arg: 2, scope: !1055, file: !1, line: 152, type: !853)
!1059 = !DILocalVariable(name: "buf", arg: 3, scope: !1055, file: !1, line: 152, type: !967)
!1060 = !DILocalVariable(name: "dn", scope: !1055, file: !1, line: 154, type: !869)
!1061 = !DILocalVariable(name: "d32", scope: !1055, file: !1, line: 155, type: !993)
!1062 = !DILocalVariable(name: "set", scope: !1055, file: !1, line: 156, type: !886)
!1063 = !DILocalVariable(name: "image", scope: !1055, file: !1, line: 157, type: !874)
!1064 = !DILocation(line: 0, scope: !1055)
!1065 = !DILocation(line: 154, column: 3, scope: !1055)
!1066 = !DILocation(line: 155, column: 3, scope: !1055)
!1067 = !DILocation(line: 156, column: 3, scope: !1055)
!1068 = !DILocation(line: 157, column: 3, scope: !1055)
!1069 = !DILocation(line: 159, column: 3, scope: !1055)
!1070 = !DILocation(line: 160, column: 7, scope: !1055)
!1071 = !DILocation(line: 160, column: 13, scope: !1055)
!1072 = !DILocation(line: 162, column: 11, scope: !1055)
!1073 = !DILocation(line: 162, column: 9, scope: !1055)
!1074 = !DILocation(line: 163, column: 3, scope: !1055)
!1075 = !DILocation(line: 165, column: 3, scope: !1055)
!1076 = !DILocation(line: 166, column: 3, scope: !1055)
!1077 = !DILocation(line: 167, column: 1, scope: !1055)
!1078 = distinct !DISubprogram(name: "encode_decimal64", scope: !1, file: !1, line: 172, type: !955, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1093, !1094}
!1080 = !DILocalVariable(name: "fmt", arg: 1, scope: !1078, file: !1, line: 172, type: !957)
!1081 = !DILocalVariable(name: "buf", arg: 2, scope: !1078, file: !1, line: 173, type: !984)
!1082 = !DILocalVariable(name: "r", arg: 3, scope: !1078, file: !1, line: 173, type: !985)
!1083 = !DILocalVariable(name: "dn", scope: !1078, file: !1, line: 175, type: !869)
!1084 = !DILocalVariable(name: "d64", scope: !1078, file: !1, line: 176, type: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "decimal64", file: !1086, line: 66, baseType: !1087)
!1086 = !DIFile(filename: "./decimal64.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1086, line: 64, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1087, file: !1086, line: 65, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 8)
!1093 = !DILocalVariable(name: "set", scope: !1078, file: !1, line: 177, type: !886)
!1094 = !DILocalVariable(name: "image", scope: !1078, file: !1, line: 178, type: !874)
!1095 = !DILocation(line: 0, scope: !1078)
!1096 = !DILocation(line: 175, column: 3, scope: !1078)
!1097 = !DILocation(line: 176, column: 3, scope: !1078)
!1098 = !DILocation(line: 177, column: 3, scope: !1078)
!1099 = !DILocation(line: 178, column: 3, scope: !1078)
!1100 = !DILocation(line: 180, column: 3, scope: !1078)
!1101 = !DILocation(line: 181, column: 7, scope: !1078)
!1102 = !DILocation(line: 181, column: 13, scope: !1078)
!1103 = !DILocation(line: 183, column: 3, scope: !1078)
!1104 = !DILocation(line: 184, column: 3, scope: !1078)
!1105 = !DILocation(line: 188, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 187, column: 5)
!1107 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 186, column: 7)
!1108 = !DILocation(line: 189, column: 16, scope: !1106)
!1109 = !DILocation(line: 189, column: 14, scope: !1106)
!1110 = !DILocation(line: 190, column: 24, scope: !1106)
!1111 = !DILocation(line: 190, column: 7, scope: !1106)
!1112 = !DILocation(line: 191, column: 16, scope: !1106)
!1113 = !DILocation(line: 191, column: 7, scope: !1106)
!1114 = !DILocation(line: 191, column: 14, scope: !1106)
!1115 = !DILocation(line: 200, column: 1, scope: !1078)
!1116 = distinct !DISubprogram(name: "decode_decimal64", scope: !1, file: !1, line: 205, type: !965, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1118 = !DILocalVariable(name: "fmt", arg: 1, scope: !1116, file: !1, line: 205, type: !957)
!1119 = !DILocalVariable(name: "r", arg: 2, scope: !1116, file: !1, line: 206, type: !853)
!1120 = !DILocalVariable(name: "buf", arg: 3, scope: !1116, file: !1, line: 206, type: !967)
!1121 = !DILocalVariable(name: "dn", scope: !1116, file: !1, line: 208, type: !869)
!1122 = !DILocalVariable(name: "d64", scope: !1116, file: !1, line: 209, type: !1085)
!1123 = !DILocalVariable(name: "set", scope: !1116, file: !1, line: 210, type: !886)
!1124 = !DILocalVariable(name: "image", scope: !1116, file: !1, line: 211, type: !874)
!1125 = !DILocation(line: 0, scope: !1116)
!1126 = !DILocation(line: 208, column: 3, scope: !1116)
!1127 = !DILocation(line: 209, column: 3, scope: !1116)
!1128 = !DILocation(line: 210, column: 3, scope: !1116)
!1129 = !DILocation(line: 211, column: 3, scope: !1116)
!1130 = !DILocation(line: 213, column: 3, scope: !1116)
!1131 = !DILocation(line: 214, column: 7, scope: !1116)
!1132 = !DILocation(line: 214, column: 13, scope: !1116)
!1133 = !DILocation(line: 218, column: 15, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 217, column: 5)
!1135 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 216, column: 7)
!1136 = !DILocation(line: 218, column: 13, scope: !1134)
!1137 = !DILocation(line: 219, column: 7, scope: !1134)
!1138 = !DILocation(line: 220, column: 15, scope: !1134)
!1139 = !DILocation(line: 220, column: 13, scope: !1134)
!1140 = !DILocation(line: 221, column: 16, scope: !1134)
!1141 = !DILocation(line: 221, column: 7, scope: !1134)
!1142 = !DILocation(line: 231, column: 3, scope: !1116)
!1143 = !DILocation(line: 232, column: 3, scope: !1116)
!1144 = !DILocation(line: 233, column: 1, scope: !1116)
!1145 = distinct !DISubprogram(name: "encode_decimal128", scope: !1, file: !1, line: 238, type: !955, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1147 = !DILocalVariable(name: "fmt", arg: 1, scope: !1145, file: !1, line: 238, type: !957)
!1148 = !DILocalVariable(name: "buf", arg: 2, scope: !1145, file: !1, line: 239, type: !984)
!1149 = !DILocalVariable(name: "r", arg: 3, scope: !1145, file: !1, line: 239, type: !985)
!1150 = !DILocalVariable(name: "dn", scope: !1145, file: !1, line: 241, type: !869)
!1151 = !DILocalVariable(name: "set", scope: !1145, file: !1, line: 242, type: !886)
!1152 = !DILocalVariable(name: "d128", scope: !1145, file: !1, line: 243, type: !373)
!1153 = !DILocalVariable(name: "image", scope: !1145, file: !1, line: 244, type: !874)
!1154 = !DILocation(line: 0, scope: !1145)
!1155 = !DILocation(line: 241, column: 3, scope: !1145)
!1156 = !DILocation(line: 242, column: 3, scope: !1145)
!1157 = !DILocation(line: 243, column: 3, scope: !1145)
!1158 = !DILocation(line: 244, column: 3, scope: !1145)
!1159 = !DILocation(line: 246, column: 3, scope: !1145)
!1160 = !DILocation(line: 247, column: 7, scope: !1145)
!1161 = !DILocation(line: 247, column: 13, scope: !1145)
!1162 = !DILocation(line: 249, column: 3, scope: !1145)
!1163 = !DILocation(line: 250, column: 3, scope: !1145)
!1164 = !DILocation(line: 254, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 253, column: 5)
!1166 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 252, column: 7)
!1167 = !DILocation(line: 255, column: 16, scope: !1165)
!1168 = !DILocation(line: 255, column: 14, scope: !1165)
!1169 = !DILocation(line: 256, column: 24, scope: !1165)
!1170 = !DILocation(line: 256, column: 7, scope: !1165)
!1171 = !DILocation(line: 257, column: 16, scope: !1165)
!1172 = !DILocation(line: 257, column: 7, scope: !1165)
!1173 = !DILocation(line: 257, column: 14, scope: !1165)
!1174 = !DILocation(line: 258, column: 24, scope: !1165)
!1175 = !DILocation(line: 258, column: 7, scope: !1165)
!1176 = !DILocation(line: 259, column: 16, scope: !1165)
!1177 = !DILocation(line: 259, column: 7, scope: !1165)
!1178 = !DILocation(line: 259, column: 14, scope: !1165)
!1179 = !DILocation(line: 260, column: 24, scope: !1165)
!1180 = !DILocation(line: 260, column: 7, scope: !1165)
!1181 = !DILocation(line: 261, column: 16, scope: !1165)
!1182 = !DILocation(line: 261, column: 7, scope: !1165)
!1183 = !DILocation(line: 261, column: 14, scope: !1165)
!1184 = !DILocation(line: 274, column: 1, scope: !1145)
!1185 = distinct !DISubprogram(name: "decode_decimal128", scope: !1, file: !1, line: 279, type: !965, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193}
!1187 = !DILocalVariable(name: "fmt", arg: 1, scope: !1185, file: !1, line: 279, type: !957)
!1188 = !DILocalVariable(name: "r", arg: 2, scope: !1185, file: !1, line: 280, type: !853)
!1189 = !DILocalVariable(name: "buf", arg: 3, scope: !1185, file: !1, line: 280, type: !967)
!1190 = !DILocalVariable(name: "dn", scope: !1185, file: !1, line: 282, type: !869)
!1191 = !DILocalVariable(name: "d128", scope: !1185, file: !1, line: 283, type: !373)
!1192 = !DILocalVariable(name: "set", scope: !1185, file: !1, line: 284, type: !886)
!1193 = !DILocalVariable(name: "image", scope: !1185, file: !1, line: 285, type: !874)
!1194 = !DILocation(line: 0, scope: !1185)
!1195 = !DILocation(line: 282, column: 3, scope: !1185)
!1196 = !DILocation(line: 283, column: 3, scope: !1185)
!1197 = !DILocation(line: 284, column: 3, scope: !1185)
!1198 = !DILocation(line: 285, column: 3, scope: !1185)
!1199 = !DILocation(line: 287, column: 3, scope: !1185)
!1200 = !DILocation(line: 288, column: 7, scope: !1185)
!1201 = !DILocation(line: 288, column: 13, scope: !1185)
!1202 = !DILocation(line: 292, column: 15, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 291, column: 5)
!1204 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 290, column: 7)
!1205 = !DILocation(line: 292, column: 13, scope: !1203)
!1206 = !DILocation(line: 293, column: 7, scope: !1203)
!1207 = !DILocation(line: 294, column: 15, scope: !1203)
!1208 = !DILocation(line: 294, column: 13, scope: !1203)
!1209 = !DILocation(line: 295, column: 16, scope: !1203)
!1210 = !DILocation(line: 295, column: 7, scope: !1203)
!1211 = !DILocation(line: 296, column: 15, scope: !1203)
!1212 = !DILocation(line: 296, column: 13, scope: !1203)
!1213 = !DILocation(line: 297, column: 16, scope: !1203)
!1214 = !DILocation(line: 297, column: 7, scope: !1203)
!1215 = !DILocation(line: 298, column: 15, scope: !1203)
!1216 = !DILocation(line: 298, column: 13, scope: !1203)
!1217 = !DILocation(line: 299, column: 16, scope: !1203)
!1218 = !DILocation(line: 299, column: 7, scope: !1203)
!1219 = !DILocation(line: 313, column: 3, scope: !1185)
!1220 = !DILocation(line: 314, column: 3, scope: !1185)
!1221 = !DILocation(line: 315, column: 1, scope: !1185)
!1222 = distinct !DISubprogram(name: "decimal_do_compare", scope: !1, file: !1, line: 350, type: !1223, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!364, !985, !985, !364}
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234}
!1226 = !DILocalVariable(name: "a", arg: 1, scope: !1222, file: !1, line: 350, type: !985)
!1227 = !DILocalVariable(name: "b", arg: 2, scope: !1222, file: !1, line: 350, type: !985)
!1228 = !DILocalVariable(name: "nan_result", arg: 3, scope: !1222, file: !1, line: 351, type: !364)
!1229 = !DILocalVariable(name: "set", scope: !1222, file: !1, line: 353, type: !886)
!1230 = !DILocalVariable(name: "dn", scope: !1222, file: !1, line: 354, type: !869)
!1231 = !DILocalVariable(name: "dn2", scope: !1222, file: !1, line: 354, type: !869)
!1232 = !DILocalVariable(name: "dn3", scope: !1222, file: !1, line: 354, type: !869)
!1233 = !DILocalVariable(name: "a1", scope: !1222, file: !1, line: 355, type: !854)
!1234 = !DILocalVariable(name: "b1", scope: !1222, file: !1, line: 355, type: !854)
!1235 = !DILocation(line: 0, scope: !1222)
!1236 = !DILocation(line: 353, column: 3, scope: !1222)
!1237 = !DILocation(line: 354, column: 3, scope: !1222)
!1238 = !DILocation(line: 355, column: 3, scope: !1222)
!1239 = !DILocation(line: 358, column: 11, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 358, column: 7)
!1241 = !DILocation(line: 358, column: 8, scope: !1240)
!1242 = !DILocation(line: 358, column: 7, scope: !1222)
!1243 = !DILocation(line: 360, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 359, column: 5)
!1245 = !DILocation(line: 362, column: 5, scope: !1244)
!1246 = !DILocation(line: 363, column: 11, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 363, column: 7)
!1248 = !DILocation(line: 363, column: 8, scope: !1247)
!1249 = !DILocation(line: 363, column: 7, scope: !1222)
!1250 = !DILocation(line: 365, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 364, column: 5)
!1252 = !DILocation(line: 367, column: 5, scope: !1251)
!1253 = !DILocation(line: 370, column: 3, scope: !1222)
!1254 = !DILocation(line: 371, column: 7, scope: !1222)
!1255 = !DILocation(line: 371, column: 13, scope: !1222)
!1256 = !DILocation(line: 372, column: 44, scope: !1222)
!1257 = !DILocation(line: 372, column: 23, scope: !1222)
!1258 = !DILocation(line: 372, column: 3, scope: !1222)
!1259 = !DILocation(line: 373, column: 44, scope: !1222)
!1260 = !DILocation(line: 373, column: 23, scope: !1222)
!1261 = !DILocation(line: 373, column: 3, scope: !1222)
!1262 = !DILocation(line: 376, column: 3, scope: !1222)
!1263 = !DILocation(line: 379, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 379, column: 7)
!1265 = !DILocation(line: 379, column: 7, scope: !1222)
!1266 = !DILocation(line: 381, column: 12, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 381, column: 12)
!1268 = !DILocation(line: 381, column: 12, scope: !1264)
!1269 = !DILocation(line: 383, column: 12, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 383, column: 12)
!1271 = !DILocation(line: 0, scope: !1270)
!1272 = !DILocation(line: 0, scope: !1264)
!1273 = !DILocation(line: 387, column: 1, scope: !1222)
!1274 = distinct !DISubprogram(name: "decimal_from_binary", scope: !1, file: !1, line: 336, type: !1275, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !853, !985}
!1277 = !{!1278, !1279, !1280}
!1278 = !DILocalVariable(name: "to", arg: 1, scope: !1274, file: !1, line: 336, type: !853)
!1279 = !DILocalVariable(name: "from", arg: 2, scope: !1274, file: !1, line: 336, type: !985)
!1280 = !DILocalVariable(name: "string", scope: !1274, file: !1, line: 338, type: !1281)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 2048, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 256)
!1284 = !DILocation(line: 0, scope: !1274)
!1285 = !DILocation(line: 338, column: 3, scope: !1274)
!1286 = !DILocation(line: 338, column: 8, scope: !1274)
!1287 = !DILocation(line: 341, column: 3, scope: !1274)
!1288 = !DILocation(line: 342, column: 3, scope: !1274)
!1289 = !DILocation(line: 343, column: 1, scope: !1274)
!1290 = distinct !DISubprogram(name: "decimal_round_for_format", scope: !1, file: !1, line: 392, type: !1291, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1293)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !957, !853}
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1302}
!1294 = !DILocalVariable(name: "fmt", arg: 1, scope: !1290, file: !1, line: 392, type: !957)
!1295 = !DILocalVariable(name: "r", arg: 2, scope: !1290, file: !1, line: 392, type: !853)
!1296 = !DILocalVariable(name: "dn", scope: !1290, file: !1, line: 394, type: !869)
!1297 = !DILocalVariable(name: "set", scope: !1290, file: !1, line: 395, type: !886)
!1298 = !DILocalVariable(name: "d32", scope: !1299, file: !1, line: 412, type: !993)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 411, column: 5)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 410, column: 12)
!1301 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 405, column: 7)
!1302 = !DILocalVariable(name: "d64", scope: !1303, file: !1, line: 421, type: !1085)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 420, column: 5)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 419, column: 12)
!1305 = !DILocation(line: 0, scope: !1290)
!1306 = !DILocation(line: 394, column: 3, scope: !1290)
!1307 = !DILocation(line: 395, column: 3, scope: !1290)
!1308 = !DILocation(line: 398, column: 10, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 398, column: 7)
!1310 = !DILocation(line: 398, column: 13, scope: !1309)
!1311 = !DILocation(line: 398, column: 7, scope: !1290)
!1312 = !DILocation(line: 401, column: 3, scope: !1290)
!1313 = !DILocation(line: 402, column: 7, scope: !1290)
!1314 = !DILocation(line: 402, column: 13, scope: !1290)
!1315 = !DILocation(line: 403, column: 38, scope: !1290)
!1316 = !DILocation(line: 403, column: 23, scope: !1290)
!1317 = !DILocation(line: 403, column: 3, scope: !1290)
!1318 = !DILocation(line: 405, column: 11, scope: !1301)
!1319 = !DILocation(line: 405, column: 7, scope: !1290)
!1320 = !DILocation(line: 410, column: 16, scope: !1300)
!1321 = !DILocation(line: 410, column: 12, scope: !1301)
!1322 = !DILocation(line: 412, column: 7, scope: !1299)
!1323 = !DILocation(line: 413, column: 7, scope: !1299)
!1324 = !DILocation(line: 414, column: 17, scope: !1299)
!1325 = !DILocation(line: 0, scope: !1299)
!1326 = !DILocation(line: 416, column: 7, scope: !1299)
!1327 = !DILocation(line: 417, column: 7, scope: !1299)
!1328 = !DILocation(line: 418, column: 5, scope: !1300)
!1329 = !DILocation(line: 418, column: 5, scope: !1299)
!1330 = !DILocation(line: 419, column: 16, scope: !1304)
!1331 = !DILocation(line: 419, column: 12, scope: !1300)
!1332 = !DILocation(line: 421, column: 7, scope: !1303)
!1333 = !DILocation(line: 422, column: 7, scope: !1303)
!1334 = !DILocation(line: 423, column: 17, scope: !1303)
!1335 = !DILocation(line: 0, scope: !1303)
!1336 = !DILocation(line: 425, column: 7, scope: !1303)
!1337 = !DILocation(line: 426, column: 7, scope: !1303)
!1338 = !DILocation(line: 427, column: 5, scope: !1304)
!1339 = !DILocation(line: 427, column: 5, scope: !1303)
!1340 = !DILocation(line: 429, column: 5, scope: !1304)
!1341 = !DILocation(line: 431, column: 3, scope: !1290)
!1342 = !DILocation(line: 432, column: 1, scope: !1290)
!1343 = distinct !DISubprogram(name: "decimal_real_convert", scope: !1, file: !1, line: 438, type: !1344, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !853, !16, !985}
!1346 = !{!1347, !1348, !1349, !1350}
!1347 = !DILocalVariable(name: "r", arg: 1, scope: !1343, file: !1, line: 438, type: !853)
!1348 = !DILocalVariable(name: "mode", arg: 2, scope: !1343, file: !1, line: 438, type: !16)
!1349 = !DILocalVariable(name: "a", arg: 3, scope: !1343, file: !1, line: 439, type: !985)
!1350 = !DILocalVariable(name: "fmt", scope: !1343, file: !1, line: 441, type: !957)
!1351 = !DILocation(line: 0, scope: !1343)
!1352 = !DILocation(line: 443, column: 10, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 443, column: 7)
!1354 = !DILocation(line: 443, column: 7, scope: !1353)
!1355 = !DILocation(line: 443, column: 18, scope: !1353)
!1356 = !DILocation(line: 441, column: 35, scope: !1343)
!1357 = !DILocation(line: 443, column: 26, scope: !1353)
!1358 = !DILocation(line: 443, column: 28, scope: !1353)
!1359 = !DILocation(line: 443, column: 7, scope: !1343)
!1360 = !DILocation(line: 445, column: 7, scope: !1343)
!1361 = !DILocation(line: 446, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 445, column: 7)
!1363 = !DILocation(line: 448, column: 7, scope: !1362)
!1364 = !DILocation(line: 449, column: 1, scope: !1343)
!1365 = distinct !DISubprogram(name: "decimal_to_binary", scope: !1, file: !1, line: 321, type: !1366, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !853, !985, !16}
!1368 = !{!1369, !1370, !1371, !1372, !1373}
!1369 = !DILocalVariable(name: "to", arg: 1, scope: !1365, file: !1, line: 321, type: !853)
!1370 = !DILocalVariable(name: "from", arg: 2, scope: !1365, file: !1, line: 321, type: !985)
!1371 = !DILocalVariable(name: "mode", arg: 3, scope: !1365, file: !1, line: 322, type: !16)
!1372 = !DILocalVariable(name: "string", scope: !1365, file: !1, line: 324, type: !1281)
!1373 = !DILocalVariable(name: "d128", scope: !1365, file: !1, line: 325, type: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!1375 = !DILocation(line: 0, scope: !1365)
!1376 = !DILocation(line: 324, column: 3, scope: !1365)
!1377 = !DILocation(line: 324, column: 8, scope: !1365)
!1378 = !DILocation(line: 325, column: 55, scope: !1365)
!1379 = !DILocation(line: 325, column: 34, scope: !1365)
!1380 = !DILocation(line: 327, column: 3, scope: !1365)
!1381 = !DILocation(line: 328, column: 3, scope: !1365)
!1382 = !DILocation(line: 329, column: 1, scope: !1365)
!1383 = distinct !DISubprogram(name: "decimal_real_to_decimal", scope: !1, file: !1, line: 458, type: !1384, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !366, !985, !469, !469, !364}
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392}
!1387 = !DILocalVariable(name: "str", arg: 1, scope: !1383, file: !1, line: 458, type: !366)
!1388 = !DILocalVariable(name: "r_orig", arg: 2, scope: !1383, file: !1, line: 458, type: !985)
!1389 = !DILocalVariable(name: "buf_size", arg: 3, scope: !1383, file: !1, line: 459, type: !469)
!1390 = !DILocalVariable(name: "digits", arg: 4, scope: !1383, file: !1, line: 460, type: !469)
!1391 = !DILocalVariable(name: "crop_trailing_zeros", arg: 5, scope: !1383, file: !1, line: 461, type: !364)
!1392 = !DILocalVariable(name: "d128", scope: !1383, file: !1, line: 463, type: !1374)
!1393 = !DILocation(line: 0, scope: !1383)
!1394 = !DILocation(line: 463, column: 54, scope: !1383)
!1395 = !DILocation(line: 463, column: 34, scope: !1383)
!1396 = !DILocation(line: 467, column: 3, scope: !1383)
!1397 = !DILocation(line: 468, column: 3, scope: !1383)
!1398 = !DILocation(line: 469, column: 1, scope: !1383)
!1399 = distinct !DISubprogram(name: "decimal_do_fix_trunc", scope: !1, file: !1, line: 544, type: !1275, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405}
!1401 = !DILocalVariable(name: "r", arg: 1, scope: !1399, file: !1, line: 544, type: !853)
!1402 = !DILocalVariable(name: "a", arg: 2, scope: !1399, file: !1, line: 544, type: !985)
!1403 = !DILocalVariable(name: "dn", scope: !1399, file: !1, line: 546, type: !869)
!1404 = !DILocalVariable(name: "dn2", scope: !1399, file: !1, line: 546, type: !869)
!1405 = !DILocalVariable(name: "set", scope: !1399, file: !1, line: 547, type: !886)
!1406 = !DILocation(line: 0, scope: !1399)
!1407 = !DILocation(line: 546, column: 3, scope: !1399)
!1408 = !DILocation(line: 547, column: 3, scope: !1399)
!1409 = !DILocation(line: 549, column: 3, scope: !1399)
!1410 = !DILocation(line: 550, column: 7, scope: !1399)
!1411 = !DILocation(line: 550, column: 13, scope: !1399)
!1412 = !DILocation(line: 551, column: 7, scope: !1399)
!1413 = !DILocation(line: 551, column: 13, scope: !1399)
!1414 = !DILocation(line: 552, column: 44, scope: !1399)
!1415 = !DILocation(line: 552, column: 23, scope: !1399)
!1416 = !DILocation(line: 552, column: 3, scope: !1399)
!1417 = !DILocation(line: 554, column: 3, scope: !1399)
!1418 = !DILocation(line: 555, column: 3, scope: !1399)
!1419 = !DILocation(line: 556, column: 1, scope: !1399)
!1420 = distinct !DISubprogram(name: "decimal_real_to_integer", scope: !1, file: !1, line: 561, type: !1421, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1423)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!446, !985}
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429, !1430}
!1424 = !DILocalVariable(name: "r", arg: 1, scope: !1420, file: !1, line: 561, type: !985)
!1425 = !DILocalVariable(name: "set", scope: !1420, file: !1, line: 563, type: !886)
!1426 = !DILocalVariable(name: "dn", scope: !1420, file: !1, line: 564, type: !869)
!1427 = !DILocalVariable(name: "dn2", scope: !1420, file: !1, line: 564, type: !869)
!1428 = !DILocalVariable(name: "dn3", scope: !1420, file: !1, line: 564, type: !869)
!1429 = !DILocalVariable(name: "to", scope: !1420, file: !1, line: 565, type: !854)
!1430 = !DILocalVariable(name: "string", scope: !1420, file: !1, line: 566, type: !1281)
!1431 = !DILocation(line: 0, scope: !1420)
!1432 = !DILocation(line: 563, column: 3, scope: !1420)
!1433 = !DILocation(line: 564, column: 3, scope: !1420)
!1434 = !DILocation(line: 565, column: 3, scope: !1420)
!1435 = !DILocation(line: 566, column: 3, scope: !1420)
!1436 = !DILocation(line: 566, column: 8, scope: !1420)
!1437 = !DILocation(line: 568, column: 3, scope: !1420)
!1438 = !DILocation(line: 569, column: 7, scope: !1420)
!1439 = !DILocation(line: 569, column: 13, scope: !1420)
!1440 = !DILocation(line: 570, column: 7, scope: !1420)
!1441 = !DILocation(line: 570, column: 13, scope: !1420)
!1442 = !DILocation(line: 571, column: 44, scope: !1420)
!1443 = !DILocation(line: 571, column: 23, scope: !1420)
!1444 = !DILocation(line: 571, column: 3, scope: !1420)
!1445 = !DILocation(line: 573, column: 3, scope: !1420)
!1446 = !DILocation(line: 574, column: 3, scope: !1420)
!1447 = !DILocation(line: 575, column: 3, scope: !1420)
!1448 = !DILocation(line: 579, column: 3, scope: !1420)
!1449 = !DILocation(line: 580, column: 3, scope: !1420)
!1450 = !DILocation(line: 581, column: 10, scope: !1420)
!1451 = !DILocation(line: 582, column: 1, scope: !1420)
!1452 = !DILocation(line: 581, column: 3, scope: !1420)
!1453 = distinct !DISubprogram(name: "decimal_real_to_integer2", scope: !1, file: !1, line: 587, type: !1454, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !984, !984, !985}
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465}
!1457 = !DILocalVariable(name: "plow", arg: 1, scope: !1453, file: !1, line: 587, type: !984)
!1458 = !DILocalVariable(name: "phigh", arg: 2, scope: !1453, file: !1, line: 587, type: !984)
!1459 = !DILocalVariable(name: "r", arg: 3, scope: !1453, file: !1, line: 588, type: !985)
!1460 = !DILocalVariable(name: "set", scope: !1453, file: !1, line: 590, type: !886)
!1461 = !DILocalVariable(name: "dn", scope: !1453, file: !1, line: 591, type: !869)
!1462 = !DILocalVariable(name: "dn2", scope: !1453, file: !1, line: 591, type: !869)
!1463 = !DILocalVariable(name: "dn3", scope: !1453, file: !1, line: 591, type: !869)
!1464 = !DILocalVariable(name: "to", scope: !1453, file: !1, line: 592, type: !854)
!1465 = !DILocalVariable(name: "string", scope: !1453, file: !1, line: 593, type: !1281)
!1466 = !DILocation(line: 0, scope: !1453)
!1467 = !DILocation(line: 590, column: 3, scope: !1453)
!1468 = !DILocation(line: 591, column: 3, scope: !1453)
!1469 = !DILocation(line: 592, column: 3, scope: !1453)
!1470 = !DILocation(line: 593, column: 3, scope: !1453)
!1471 = !DILocation(line: 593, column: 8, scope: !1453)
!1472 = !DILocation(line: 595, column: 3, scope: !1453)
!1473 = !DILocation(line: 596, column: 7, scope: !1453)
!1474 = !DILocation(line: 596, column: 13, scope: !1453)
!1475 = !DILocation(line: 597, column: 7, scope: !1453)
!1476 = !DILocation(line: 597, column: 13, scope: !1453)
!1477 = !DILocation(line: 598, column: 44, scope: !1453)
!1478 = !DILocation(line: 598, column: 23, scope: !1453)
!1479 = !DILocation(line: 598, column: 3, scope: !1453)
!1480 = !DILocation(line: 600, column: 3, scope: !1453)
!1481 = !DILocation(line: 601, column: 3, scope: !1453)
!1482 = !DILocation(line: 602, column: 3, scope: !1453)
!1483 = !DILocation(line: 606, column: 3, scope: !1453)
!1484 = !DILocation(line: 607, column: 3, scope: !1453)
!1485 = !DILocation(line: 608, column: 3, scope: !1453)
!1486 = !DILocation(line: 609, column: 1, scope: !1453)
!1487 = distinct !DISubprogram(name: "decimal_real_arithmetic", scope: !1, file: !1, line: 616, type: !1488, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!363, !853, !166, !985, !985}
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496}
!1491 = !DILocalVariable(name: "r", arg: 1, scope: !1487, file: !1, line: 616, type: !853)
!1492 = !DILocalVariable(name: "code", arg: 2, scope: !1487, file: !1, line: 616, type: !166)
!1493 = !DILocalVariable(name: "op0", arg: 3, scope: !1487, file: !1, line: 617, type: !985)
!1494 = !DILocalVariable(name: "op1", arg: 4, scope: !1487, file: !1, line: 618, type: !985)
!1495 = !DILocalVariable(name: "a", scope: !1487, file: !1, line: 620, type: !854)
!1496 = !DILocalVariable(name: "b", scope: !1487, file: !1, line: 620, type: !854)
!1497 = !DILocation(line: 0, scope: !1487)
!1498 = !DILocation(line: 620, column: 3, scope: !1487)
!1499 = !DILocation(line: 623, column: 13, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 623, column: 7)
!1501 = !DILocation(line: 623, column: 8, scope: !1500)
!1502 = !DILocation(line: 623, column: 7, scope: !1487)
!1503 = !DILocation(line: 625, column: 7, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !1, line: 624, column: 5)
!1505 = !DILocation(line: 627, column: 5, scope: !1504)
!1506 = !DILocation(line: 628, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 628, column: 7)
!1508 = !DILocation(line: 628, column: 11, scope: !1507)
!1509 = !DILocation(line: 628, column: 20, scope: !1507)
!1510 = !DILocation(line: 628, column: 15, scope: !1507)
!1511 = !DILocation(line: 628, column: 7, scope: !1487)
!1512 = !DILocation(line: 630, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 629, column: 5)
!1514 = !DILocation(line: 632, column: 5, scope: !1513)
!1515 = !DILocation(line: 634, column: 3, scope: !1487)
!1516 = !DILocation(line: 637, column: 14, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 635, column: 5)
!1518 = !DILocation(line: 637, column: 7, scope: !1517)
!1519 = !DILocation(line: 640, column: 14, scope: !1517)
!1520 = !DILocation(line: 640, column: 7, scope: !1517)
!1521 = !DILocation(line: 643, column: 14, scope: !1517)
!1522 = !DILocation(line: 643, column: 7, scope: !1517)
!1523 = !DILocation(line: 646, column: 14, scope: !1517)
!1524 = !DILocation(line: 646, column: 7, scope: !1517)
!1525 = !DILocation(line: 649, column: 16, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 649, column: 11)
!1527 = !DILocation(line: 649, column: 19, scope: !1526)
!1528 = !DILocation(line: 649, column: 11, scope: !1517)
!1529 = !DILocation(line: 650, column: 14, scope: !1526)
!1530 = !DILocation(line: 650, column: 9, scope: !1526)
!1531 = !DILocation(line: 651, column: 16, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 651, column: 16)
!1533 = !DILocation(line: 0, scope: !1532)
!1534 = !DILocation(line: 651, column: 16, scope: !1526)
!1535 = !DILocation(line: 652, column: 14, scope: !1532)
!1536 = !DILocation(line: 652, column: 9, scope: !1532)
!1537 = !DILocation(line: 654, column: 14, scope: !1532)
!1538 = !DILocation(line: 658, column: 16, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 658, column: 11)
!1540 = !DILocation(line: 658, column: 19, scope: !1539)
!1541 = !DILocation(line: 658, column: 11, scope: !1517)
!1542 = !DILocation(line: 659, column: 14, scope: !1539)
!1543 = !DILocation(line: 659, column: 9, scope: !1539)
!1544 = !DILocation(line: 660, column: 16, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !1, line: 660, column: 16)
!1546 = !DILocation(line: 0, scope: !1545)
!1547 = !DILocation(line: 660, column: 16, scope: !1539)
!1548 = !DILocation(line: 661, column: 14, scope: !1545)
!1549 = !DILocation(line: 661, column: 9, scope: !1545)
!1550 = !DILocation(line: 663, column: 14, scope: !1545)
!1551 = !DILocation(line: 668, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 667, column: 7)
!1553 = !DILocation(line: 670, column: 2, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1552, file: !1, line: 670, column: 2)
!1555 = !DILocation(line: 672, column: 5, scope: !1552)
!1556 = !DILocation(line: 672, column: 10, scope: !1552)
!1557 = !DILocation(line: 674, column: 7, scope: !1517)
!1558 = !DILocation(line: 678, column: 14, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 677, column: 7)
!1560 = !DILocation(line: 680, column: 2, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 680, column: 2)
!1562 = !DILocation(line: 682, column: 5, scope: !1559)
!1563 = !DILocation(line: 682, column: 10, scope: !1559)
!1564 = !DILocation(line: 684, column: 7, scope: !1517)
!1565 = !DILocation(line: 687, column: 7, scope: !1517)
!1566 = !DILocation(line: 688, column: 7, scope: !1517)
!1567 = !DILocation(line: 691, column: 7, scope: !1517)
!1568 = !DILocation(line: 694, column: 5, scope: !1487)
!1569 = !DILocation(line: 696, column: 1, scope: !1487)
!1570 = distinct !DISubprogram(name: "decimal_do_add", scope: !1, file: !1, line: 472, type: !1571, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1573)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!363, !853, !985, !985, !364}
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581}
!1574 = !DILocalVariable(name: "r", arg: 1, scope: !1570, file: !1, line: 472, type: !853)
!1575 = !DILocalVariable(name: "op0", arg: 2, scope: !1570, file: !1, line: 472, type: !985)
!1576 = !DILocalVariable(name: "op1", arg: 3, scope: !1570, file: !1, line: 473, type: !985)
!1577 = !DILocalVariable(name: "subtract_p", arg: 4, scope: !1570, file: !1, line: 473, type: !364)
!1578 = !DILocalVariable(name: "dn", scope: !1570, file: !1, line: 475, type: !869)
!1579 = !DILocalVariable(name: "set", scope: !1570, file: !1, line: 476, type: !886)
!1580 = !DILocalVariable(name: "dn2", scope: !1570, file: !1, line: 477, type: !869)
!1581 = !DILocalVariable(name: "dn3", scope: !1570, file: !1, line: 477, type: !869)
!1582 = !DILocation(line: 0, scope: !1570)
!1583 = !DILocation(line: 475, column: 3, scope: !1570)
!1584 = !DILocation(line: 476, column: 3, scope: !1570)
!1585 = !DILocation(line: 477, column: 3, scope: !1570)
!1586 = !DILocation(line: 479, column: 3, scope: !1570)
!1587 = !DILocation(line: 480, column: 3, scope: !1570)
!1588 = !DILocation(line: 482, column: 3, scope: !1570)
!1589 = !DILocation(line: 483, column: 7, scope: !1570)
!1590 = !DILocation(line: 483, column: 13, scope: !1570)
!1591 = !DILocation(line: 485, column: 7, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 485, column: 7)
!1593 = !DILocation(line: 485, column: 7, scope: !1570)
!1594 = !DILocation(line: 486, column: 5, scope: !1592)
!1595 = !DILocation(line: 488, column: 5, scope: !1592)
!1596 = !DILocation(line: 490, column: 3, scope: !1570)
!1597 = !DILocation(line: 493, column: 15, scope: !1570)
!1598 = !DILocation(line: 493, column: 10, scope: !1570)
!1599 = !DILocation(line: 494, column: 1, scope: !1570)
!1600 = !DILocation(line: 493, column: 3, scope: !1570)
!1601 = distinct !DISubprogram(name: "decimal_do_multiply", scope: !1, file: !1, line: 499, type: !1602, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!363, !853, !985, !985}
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611}
!1605 = !DILocalVariable(name: "r", arg: 1, scope: !1601, file: !1, line: 499, type: !853)
!1606 = !DILocalVariable(name: "op0", arg: 2, scope: !1601, file: !1, line: 499, type: !985)
!1607 = !DILocalVariable(name: "op1", arg: 3, scope: !1601, file: !1, line: 500, type: !985)
!1608 = !DILocalVariable(name: "set", scope: !1601, file: !1, line: 502, type: !886)
!1609 = !DILocalVariable(name: "dn", scope: !1601, file: !1, line: 503, type: !869)
!1610 = !DILocalVariable(name: "dn2", scope: !1601, file: !1, line: 503, type: !869)
!1611 = !DILocalVariable(name: "dn3", scope: !1601, file: !1, line: 503, type: !869)
!1612 = !DILocation(line: 0, scope: !1601)
!1613 = !DILocation(line: 502, column: 3, scope: !1601)
!1614 = !DILocation(line: 503, column: 3, scope: !1601)
!1615 = !DILocation(line: 505, column: 3, scope: !1601)
!1616 = !DILocation(line: 506, column: 3, scope: !1601)
!1617 = !DILocation(line: 508, column: 3, scope: !1601)
!1618 = !DILocation(line: 509, column: 7, scope: !1601)
!1619 = !DILocation(line: 509, column: 13, scope: !1601)
!1620 = !DILocation(line: 511, column: 3, scope: !1601)
!1621 = !DILocation(line: 512, column: 3, scope: !1601)
!1622 = !DILocation(line: 515, column: 15, scope: !1601)
!1623 = !DILocation(line: 515, column: 10, scope: !1601)
!1624 = !DILocation(line: 516, column: 1, scope: !1601)
!1625 = !DILocation(line: 515, column: 3, scope: !1601)
!1626 = distinct !DISubprogram(name: "decimal_do_divide", scope: !1, file: !1, line: 521, type: !1602, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1634}
!1628 = !DILocalVariable(name: "r", arg: 1, scope: !1626, file: !1, line: 521, type: !853)
!1629 = !DILocalVariable(name: "op0", arg: 2, scope: !1626, file: !1, line: 521, type: !985)
!1630 = !DILocalVariable(name: "op1", arg: 3, scope: !1626, file: !1, line: 522, type: !985)
!1631 = !DILocalVariable(name: "set", scope: !1626, file: !1, line: 524, type: !886)
!1632 = !DILocalVariable(name: "dn", scope: !1626, file: !1, line: 525, type: !869)
!1633 = !DILocalVariable(name: "dn2", scope: !1626, file: !1, line: 525, type: !869)
!1634 = !DILocalVariable(name: "dn3", scope: !1626, file: !1, line: 525, type: !869)
!1635 = !DILocation(line: 0, scope: !1626)
!1636 = !DILocation(line: 524, column: 3, scope: !1626)
!1637 = !DILocation(line: 525, column: 3, scope: !1626)
!1638 = !DILocation(line: 527, column: 3, scope: !1626)
!1639 = !DILocation(line: 528, column: 3, scope: !1626)
!1640 = !DILocation(line: 530, column: 3, scope: !1626)
!1641 = !DILocation(line: 531, column: 7, scope: !1626)
!1642 = !DILocation(line: 531, column: 13, scope: !1626)
!1643 = !DILocation(line: 533, column: 3, scope: !1626)
!1644 = !DILocation(line: 534, column: 3, scope: !1626)
!1645 = !DILocation(line: 537, column: 15, scope: !1626)
!1646 = !DILocation(line: 537, column: 10, scope: !1626)
!1647 = !DILocation(line: 538, column: 1, scope: !1626)
!1648 = !DILocation(line: 537, column: 3, scope: !1626)
!1649 = distinct !DISubprogram(name: "decimal_real_maxval", scope: !1, file: !1, line: 702, type: !1650, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1652)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !853, !364, !16}
!1652 = !{!1653, !1654, !1655, !1656}
!1653 = !DILocalVariable(name: "r", arg: 1, scope: !1649, file: !1, line: 702, type: !853)
!1654 = !DILocalVariable(name: "sign", arg: 2, scope: !1649, file: !1, line: 702, type: !364)
!1655 = !DILocalVariable(name: "mode", arg: 3, scope: !1649, file: !1, line: 702, type: !16)
!1656 = !DILocalVariable(name: "max", scope: !1649, file: !1, line: 704, type: !369)
!1657 = !DILocation(line: 0, scope: !1649)
!1658 = !DILocation(line: 706, column: 3, scope: !1649)
!1659 = !DILocation(line: 713, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 707, column: 5)
!1661 = !DILocation(line: 716, column: 7, scope: !1660)
!1662 = !DILocation(line: 718, column: 7, scope: !1660)
!1663 = !DILocation(line: 719, column: 5, scope: !1660)
!1664 = !DILocation(line: 721, column: 3, scope: !1649)
!1665 = !DILocation(line: 722, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 722, column: 7)
!1667 = !DILocation(line: 722, column: 7, scope: !1649)
!1668 = !DILocation(line: 723, column: 5, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !1, line: 723, column: 5)
!1670 = !DILocation(line: 724, column: 1, scope: !1649)
