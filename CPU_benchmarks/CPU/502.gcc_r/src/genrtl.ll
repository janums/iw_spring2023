; ModuleID = 'genrtl.bc'
source_filename = "genrtl.c"
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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.basic_block_def = type opaque
%union.tree_node = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !434 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !447, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !448, metadata !DIExpression()), !dbg !449
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !450
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !451
  ret i32 %call, !dbg !452
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !453 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !457
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !458
  ret i32 %call, !dbg !459
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !460 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !519, metadata !DIExpression()), !dbg !520
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !521
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !521
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !521
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !521
  %cmp = icmp uge i8* %0, %1, !dbg !521
  %conv1 = zext i1 %cmp to i64, !dbg !521
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !521
  %tobool = icmp eq i64 %expval, 0, !dbg !521
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !521

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !521
  br label %cond.end, !dbg !521

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !521
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !521
  %2 = load i8, i8* %0, align 1, !dbg !521
  %conv3 = zext i8 %2 to i32, !dbg !521
  br label %cond.end, !dbg !521

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !521
  ret i32 %cond, !dbg !522
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !523 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !525, metadata !DIExpression()), !dbg !526
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !527
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !527
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !527
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !527
  %cmp = icmp uge i8* %0, %1, !dbg !527
  %conv1 = zext i1 %cmp to i64, !dbg !527
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !527
  %tobool = icmp eq i64 %expval, 0, !dbg !527
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !527

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !527
  br label %cond.end, !dbg !527

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !527
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !527
  %2 = load i8, i8* %0, align 1, !dbg !527
  %conv3 = zext i8 %2 to i32, !dbg !527
  br label %cond.end, !dbg !527

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !527
  ret i32 %cond, !dbg !528
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !529 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !530
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !530
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !530
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !530
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !530
  %cmp = icmp uge i8* %1, %2, !dbg !530
  %conv1 = zext i1 %cmp to i64, !dbg !530
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !530
  %tobool = icmp eq i64 %expval, 0, !dbg !530
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !530

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !530
  br label %cond.end, !dbg !530

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !530
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !530
  %3 = load i8, i8* %1, align 1, !dbg !530
  %conv3 = zext i8 %3 to i32, !dbg !530
  br label %cond.end, !dbg !530

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !530
  ret i32 %cond, !dbg !531
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !532 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !538
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !539
  ret i32 %call, !dbg !540
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !541 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !545, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !546, metadata !DIExpression()), !dbg !547
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !548
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !548
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !548
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !548
  %cmp = icmp uge i8* %0, %1, !dbg !548
  %conv1 = zext i1 %cmp to i64, !dbg !548
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !548
  %tobool = icmp eq i64 %expval, 0, !dbg !548
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !548

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !548
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !548
  br label %cond.end, !dbg !548

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !548
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !548
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !548
  store i8 %conv2, i8* %0, align 1, !dbg !548
  %conv6 = and i32 %__c, 255, !dbg !548
  br label %cond.end, !dbg !548

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !548
  ret i32 %cond, !dbg !549
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !550 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !552, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !553, metadata !DIExpression()), !dbg !554
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !555
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !555
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !555
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !555
  %cmp = icmp uge i8* %0, %1, !dbg !555
  %conv1 = zext i1 %cmp to i64, !dbg !555
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !555
  %tobool = icmp eq i64 %expval, 0, !dbg !555
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !555

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !555
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !555
  br label %cond.end, !dbg !555

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !555
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !555
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !555
  store i8 %conv2, i8* %0, align 1, !dbg !555
  %conv6 = and i32 %__c, 255, !dbg !555
  br label %cond.end, !dbg !555

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !555
  ret i32 %cond, !dbg !556
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !557 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !559, metadata !DIExpression()), !dbg !560
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !561
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !561
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !561
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !561
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !561
  %cmp = icmp uge i8* %1, %2, !dbg !561
  %conv1 = zext i1 %cmp to i64, !dbg !561
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !561
  %tobool = icmp eq i64 %expval, 0, !dbg !561
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !561

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !561
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !561
  br label %cond.end, !dbg !561

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !561
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !561
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !561
  store i8 %conv4, i8* %1, align 1, !dbg !561
  %conv6 = and i32 %__c, 255, !dbg !561
  br label %cond.end, !dbg !561

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !561
  ret i32 %cond, !dbg !562
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !563 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !569, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i64* %__n, metadata !570, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !571, metadata !DIExpression()), !dbg !572
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !573
  ret i64 %call, !dbg !574
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !575 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !577, metadata !DIExpression()), !dbg !578
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !579
  %0 = load i32, i32* %_flags, align 8, !dbg !579
  %and = lshr i32 %0, 4, !dbg !579
  %and.lobit = and i32 %and, 1, !dbg !579
  ret i32 %and.lobit, !dbg !580
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !581 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !583, metadata !DIExpression()), !dbg !584
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !585
  %0 = load i32, i32* %_flags, align 8, !dbg !585
  %and = lshr i32 %0, 5, !dbg !585
  %and.lobit = and i32 %and, 1, !dbg !585
  ret i32 %and.lobit, !dbg !586
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !587 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !590, metadata !DIExpression()), !dbg !591
  %__c.off = add i32 %__c, 128, !dbg !592
  %0 = icmp ult i32 %__c.off, 384, !dbg !592
  br i1 %0, label %cond.true, label %cond.end, !dbg !592

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !593
  %1 = load i32*, i32** %call, align 8, !dbg !594
  %idxprom = sext i32 %__c to i64, !dbg !595
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !595
  %2 = load i32, i32* %arrayidx, align 4, !dbg !595
  br label %cond.end, !dbg !596

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !596
  ret i32 %cond, !dbg !597
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !598 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !600, metadata !DIExpression()), !dbg !601
  %__c.off = add i32 %__c, 128, !dbg !602
  %0 = icmp ult i32 %__c.off, 384, !dbg !602
  br i1 %0, label %cond.true, label %cond.end, !dbg !602

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !603
  %1 = load i32*, i32** %call, align 8, !dbg !604
  %idxprom = sext i32 %__c to i64, !dbg !605
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !605
  %2 = load i32, i32* %arrayidx, align 4, !dbg !605
  br label %cond.end, !dbg !606

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !606
  ret i32 %cond, !dbg !607
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !608 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !613, metadata !DIExpression()), !dbg !614
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !615
  %conv = trunc i64 %call to i32, !dbg !616
  ret i32 %conv, !dbg !617
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !618 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !622, metadata !DIExpression()), !dbg !623
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !624
  ret i64 %call, !dbg !625
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !626 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !631, metadata !DIExpression()), !dbg !632
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !633
  ret i64 %call, !dbg !634
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !635 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !646, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i8* %__base, metadata !647, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !648, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i64 %__size, metadata !649, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !650, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i64 0, metadata !651, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !652, metadata !DIExpression()), !dbg !656
  br label %while.cond, !dbg !657

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !658
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !656
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !652, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !651, metadata !DIExpression()), !dbg !656
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !659
  br i1 %cmp, label %while.body, label %cleanup, !dbg !657

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !660
  %div = lshr i64 %add, 1, !dbg !662
  call void @llvm.dbg.value(metadata i64 %div, metadata !653, metadata !DIExpression()), !dbg !656
  %mul = mul i64 %div, %__size, !dbg !663
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !664
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !654, metadata !DIExpression()), !dbg !656
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !665
  call void @llvm.dbg.value(metadata i32 %call, metadata !655, metadata !DIExpression()), !dbg !656
  %cmp1 = icmp slt i32 %call, 0, !dbg !666
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !668

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !669
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !671

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !672
  call void @llvm.dbg.value(metadata i64 %add4, metadata !651, metadata !DIExpression()), !dbg !656
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !656
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !656
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !652, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !651, metadata !DIExpression()), !dbg !656
  br label %while.cond, !dbg !657, !llvm.loop !673

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !656
  ret i8* %retval.0, !dbg !675
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !676 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !682, metadata !DIExpression()), !dbg !683
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !684
  ret double %call, !dbg !685
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !686 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !695, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !696, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i32 %base, metadata !697, metadata !DIExpression()), !dbg !698
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !699
  ret i64 %call, !dbg !700
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !701 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !707, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !708, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32 %base, metadata !709, metadata !DIExpression()), !dbg !710
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !711
  ret i64 %call, !dbg !712
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !713 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !724, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !725, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32 %base, metadata !726, metadata !DIExpression()), !dbg !727
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !728
  ret i64 %call, !dbg !729
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !730 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !734, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !735, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i32 %base, metadata !736, metadata !DIExpression()), !dbg !737
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !738
  ret i64 %call, !dbg !739
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !740 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !780, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !781, metadata !DIExpression()), !dbg !782
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !783
  ret i32 %call, !dbg !784
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !785 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !787, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !788, metadata !DIExpression()), !dbg !789
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !790
  ret i32 %call, !dbg !791
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !792 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !796, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !797, metadata !DIExpression()), !dbg !798
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !799
  ret i32 %call, !dbg !800
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !801 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !805, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !806, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !807, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !808, metadata !DIExpression()), !dbg !809
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !810
  ret i32 %call, !dbg !811
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !812 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !816, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !818, metadata !DIExpression()), !dbg !819
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !818, metadata !DIExpression(DW_OP_deref)), !dbg !819
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !820
  ret i32 %call, !dbg !821
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !822 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !826, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i8* %__path, metadata !827, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !828, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !829, metadata !DIExpression()), !dbg !830
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !829, metadata !DIExpression(DW_OP_deref)), !dbg !830
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !831
  ret i32 %call, !dbg !832
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !833 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !857, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !858, metadata !DIExpression()), !dbg !859
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !860
  ret i32 %call, !dbg !861
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !862 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !864, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !865, metadata !DIExpression()), !dbg !866
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !867
  ret i32 %call, !dbg !868
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !869 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !873, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !874, metadata !DIExpression()), !dbg !875
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !876
  ret i32 %call, !dbg !877
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !878 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !882, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !883, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !884, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !885, metadata !DIExpression()), !dbg !886
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !887
  ret i32 %call, !dbg !888
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_0_stat(i32 %code, i32 %mode) local_unnamed_addr #3 !dbg !889 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !893, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 %mode, metadata !894, metadata !DIExpression()), !dbg !896
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !897
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !895, metadata !DIExpression()), !dbg !896
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !898
  %bf.load = load i32, i32* %0, align 8, !dbg !898
  %bf.value = shl i32 %mode, 16, !dbg !898
  %bf.shl = and i32 %bf.value, 16711680, !dbg !898
  %bf.clear = and i32 %bf.load, -16711681, !dbg !898
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !898
  store i32 %bf.set, i32* %0, align 8, !dbg !898
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !899
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !899
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx, align 8, !dbg !900
  ret %struct.rtx_def* %call, !dbg !901
}

declare dso_local %struct.rtx_def* @rtx_alloc_stat(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtx_def* %arg1) local_unnamed_addr #3 !dbg !902 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !906, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i32 %mode, metadata !907, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg0, metadata !908, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !909, metadata !DIExpression()), !dbg !911
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !912
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !910, metadata !DIExpression()), !dbg !911
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !913
  %bf.load = load i32, i32* %0, align 8, !dbg !913
  %bf.value = shl i32 %mode, 16, !dbg !913
  %bf.shl = and i32 %bf.value, 16711680, !dbg !913
  %bf.clear = and i32 %bf.load, -16711681, !dbg !913
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !913
  store i32 %bf.set, i32* %0, align 8, !dbg !913
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !914
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !914
  store %struct.rtx_def* %arg0, %struct.rtx_def** %rt_rtx, align 8, !dbg !915
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !916
  %rt_rtx4 = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !916
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx4, align 8, !dbg !917
  ret %struct.rtx_def* %call, !dbg !918
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_ue_stat(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtx_def* %arg1) local_unnamed_addr #3 !dbg !919 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !921, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i32 %mode, metadata !922, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg0, metadata !923, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !924, metadata !DIExpression()), !dbg !926
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !927
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !925, metadata !DIExpression()), !dbg !926
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !928
  %bf.load = load i32, i32* %0, align 8, !dbg !928
  %bf.value = shl i32 %mode, 16, !dbg !928
  %bf.shl = and i32 %bf.value, 16711680, !dbg !928
  %bf.clear = and i32 %bf.load, -16711681, !dbg !928
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !928
  store i32 %bf.set, i32* %0, align 8, !dbg !928
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !929
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !929
  store %struct.rtx_def* %arg0, %struct.rtx_def** %rt_rtx, align 8, !dbg !930
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !931
  %rt_rtx4 = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !931
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx4, align 8, !dbg !932
  ret %struct.rtx_def* %call, !dbg !933
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_E_stat(i32 %code, i32 %mode, %struct.rtvec_def* %arg0) local_unnamed_addr #3 !dbg !934 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !938, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %mode, metadata !939, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg0, metadata !940, metadata !DIExpression()), !dbg !942
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !943
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !941, metadata !DIExpression()), !dbg !942
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !944
  %bf.load = load i32, i32* %0, align 8, !dbg !944
  %bf.value = shl i32 %mode, 16, !dbg !944
  %bf.shl = and i32 %bf.value, 16711680, !dbg !944
  %bf.clear = and i32 %bf.load, -16711681, !dbg !944
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !944
  store i32 %bf.set, i32* %0, align 8, !dbg !944
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !945
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**, !dbg !945
  store %struct.rtvec_def* %arg0, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !946
  ret %struct.rtx_def* %call, !dbg !947
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_e_stat(i32 %code, i32 %mode, %struct.rtx_def* %arg0) local_unnamed_addr #3 !dbg !948 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !952, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 %mode, metadata !953, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg0, metadata !954, metadata !DIExpression()), !dbg !956
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !957
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !955, metadata !DIExpression()), !dbg !956
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !958
  %bf.load = load i32, i32* %0, align 8, !dbg !958
  %bf.value = shl i32 %mode, 16, !dbg !958
  %bf.shl = and i32 %bf.value, 16711680, !dbg !958
  %bf.clear = and i32 %bf.load, -16711681, !dbg !958
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !958
  store i32 %bf.set, i32* %0, align 8, !dbg !958
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !959
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !959
  store %struct.rtx_def* %arg0, %struct.rtx_def** %rt_rtx, align 8, !dbg !960
  ret %struct.rtx_def* %call, !dbg !961
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_iuuBieie_stat(i32 %code, i32 %mode, i32 %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2, %struct.basic_block_def* %arg3, i32 %arg4, %struct.rtx_def* %arg5, i32 %arg6, %struct.rtx_def* %arg7) local_unnamed_addr #3 !dbg !962 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !966, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i32 %mode, metadata !967, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !968, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !969, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg2, metadata !970, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %arg3, metadata !971, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i32 %arg4, metadata !972, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg5, metadata !973, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i32 %arg6, metadata !974, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg7, metadata !975, metadata !DIExpression()), !dbg !977
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !978
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !976, metadata !DIExpression()), !dbg !977
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !979
  %bf.load = load i32, i32* %0, align 8, !dbg !979
  %bf.value = shl i32 %mode, 16, !dbg !979
  %bf.shl = and i32 %bf.value, 16711680, !dbg !979
  %bf.clear = and i32 %bf.load, -16711681, !dbg !979
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !979
  store i32 %bf.set, i32* %0, align 8, !dbg !979
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !980
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !980
  store i32 %arg0, i32* %rt_int, align 8, !dbg !981
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !982
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !982
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx, align 8, !dbg !983
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !984
  %rt_rtx7 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !984
  store %struct.rtx_def* %arg2, %struct.rtx_def** %rt_rtx7, align 8, !dbg !985
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 1, !dbg !986
  %rt_bb = bitcast %struct.object_block** %arrayidx10 to %struct.basic_block_def**, !dbg !986
  store %struct.basic_block_def* %arg3, %struct.basic_block_def** %rt_bb, align 8, !dbg !987
  %arrayidx13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 2, !dbg !988
  %rt_int14 = bitcast i64* %arrayidx13 to i32*, !dbg !988
  store i32 %arg4, i32* %rt_int14, align 8, !dbg !989
  %u15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, !dbg !990
  %3 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 0, !dbg !990
  %rt_rtx18 = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !990
  store %struct.rtx_def* %arg5, %struct.rtx_def** %rt_rtx18, align 8, !dbg !991
  %4 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 1, !dbg !992
  %rt_int22 = bitcast %union.rtunion_def* %4 to i32*, !dbg !992
  store i32 %arg6, i32* %rt_int22, align 8, !dbg !993
  %5 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 2, !dbg !994
  %rt_rtx26 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !994
  store %struct.rtx_def* %arg7, %struct.rtx_def** %rt_rtx26, align 8, !dbg !995
  ret %struct.rtx_def* %call, !dbg !996
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_iuuBieie0_stat(i32 %code, i32 %mode, i32 %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2, %struct.basic_block_def* %arg3, i32 %arg4, %struct.rtx_def* %arg5, i32 %arg6, %struct.rtx_def* %arg7) local_unnamed_addr #3 !dbg !997 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !999, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1000, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1001, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !1002, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg2, metadata !1003, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %arg3, metadata !1004, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i32 %arg4, metadata !1005, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg5, metadata !1006, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i32 %arg6, metadata !1007, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg7, metadata !1008, metadata !DIExpression()), !dbg !1010
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1009, metadata !DIExpression()), !dbg !1010
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1012
  %bf.load = load i32, i32* %0, align 8, !dbg !1012
  %bf.value = shl i32 %mode, 16, !dbg !1012
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1012
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1012
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1012
  store i32 %bf.set, i32* %0, align 8, !dbg !1012
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1013
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1013
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1014
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1015
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1015
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx, align 8, !dbg !1016
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1017
  %rt_rtx7 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !1017
  store %struct.rtx_def* %arg2, %struct.rtx_def** %rt_rtx7, align 8, !dbg !1018
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 1, !dbg !1019
  %rt_bb = bitcast %struct.object_block** %arrayidx10 to %struct.basic_block_def**, !dbg !1019
  store %struct.basic_block_def* %arg3, %struct.basic_block_def** %rt_bb, align 8, !dbg !1020
  %arrayidx13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 2, !dbg !1021
  %rt_int14 = bitcast i64* %arrayidx13 to i32*, !dbg !1021
  store i32 %arg4, i32* %rt_int14, align 8, !dbg !1022
  %u15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, !dbg !1023
  %3 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 0, !dbg !1023
  %rt_rtx18 = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !1023
  store %struct.rtx_def* %arg5, %struct.rtx_def** %rt_rtx18, align 8, !dbg !1024
  %4 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 1, !dbg !1025
  %rt_int22 = bitcast %union.rtunion_def* %4 to i32*, !dbg !1025
  store i32 %arg6, i32* %rt_int22, align 8, !dbg !1026
  %5 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 2, !dbg !1027
  %rt_rtx26 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !1027
  store %struct.rtx_def* %arg7, %struct.rtx_def** %rt_rtx26, align 8, !dbg !1028
  %arrayidx29 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 1, !dbg !1029
  %rt_rtx30 = bitcast %struct.object_block** %arrayidx29 to %struct.rtx_def**, !dbg !1029
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx30, align 8, !dbg !1030
  ret %struct.rtx_def* %call, !dbg !1031
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_iuuBieiee_stat(i32 %code, i32 %mode, i32 %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2, %struct.basic_block_def* %arg3, i32 %arg4, %struct.rtx_def* %arg5, i32 %arg6, %struct.rtx_def* %arg7, %struct.rtx_def* %arg8) local_unnamed_addr #3 !dbg !1032 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1036, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1037, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1038, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !1039, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg2, metadata !1040, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %arg3, metadata !1041, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %arg4, metadata !1042, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg5, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %arg6, metadata !1044, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg7, metadata !1045, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg8, metadata !1046, metadata !DIExpression()), !dbg !1048
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1047, metadata !DIExpression()), !dbg !1048
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1050
  %bf.load = load i32, i32* %0, align 8, !dbg !1050
  %bf.value = shl i32 %mode, 16, !dbg !1050
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1050
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1050
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1050
  store i32 %bf.set, i32* %0, align 8, !dbg !1050
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1051
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1051
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1052
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1053
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1053
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx, align 8, !dbg !1054
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1055
  %rt_rtx7 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !1055
  store %struct.rtx_def* %arg2, %struct.rtx_def** %rt_rtx7, align 8, !dbg !1056
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 1, !dbg !1057
  %rt_bb = bitcast %struct.object_block** %arrayidx10 to %struct.basic_block_def**, !dbg !1057
  store %struct.basic_block_def* %arg3, %struct.basic_block_def** %rt_bb, align 8, !dbg !1058
  %arrayidx13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 2, !dbg !1059
  %rt_int14 = bitcast i64* %arrayidx13 to i32*, !dbg !1059
  store i32 %arg4, i32* %rt_int14, align 8, !dbg !1060
  %u15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, !dbg !1061
  %3 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 0, !dbg !1061
  %rt_rtx18 = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !1061
  store %struct.rtx_def* %arg5, %struct.rtx_def** %rt_rtx18, align 8, !dbg !1062
  %4 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 1, !dbg !1063
  %rt_int22 = bitcast %union.rtunion_def* %4 to i32*, !dbg !1063
  store i32 %arg6, i32* %rt_int22, align 8, !dbg !1064
  %5 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 2, !dbg !1065
  %rt_rtx26 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !1065
  store %struct.rtx_def* %arg7, %struct.rtx_def** %rt_rtx26, align 8, !dbg !1066
  %arrayidx29 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 1, !dbg !1067
  %rt_rtx30 = bitcast %struct.object_block** %arrayidx29 to %struct.rtx_def**, !dbg !1067
  store %struct.rtx_def* %arg8, %struct.rtx_def** %rt_rtx30, align 8, !dbg !1068
  ret %struct.rtx_def* %call, !dbg !1069
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_iuu00000_stat(i32 %code, i32 %mode, i32 %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2) local_unnamed_addr #3 !dbg !1070 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1074, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1075, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1076, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !1077, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg2, metadata !1078, metadata !DIExpression()), !dbg !1080
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1079, metadata !DIExpression()), !dbg !1080
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1082
  %bf.load = load i32, i32* %0, align 8, !dbg !1082
  %bf.value = shl i32 %mode, 16, !dbg !1082
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1082
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1082
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1082
  store i32 %bf.set, i32* %0, align 8, !dbg !1082
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1083
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1083
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1084
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1085
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1085
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx, align 8, !dbg !1086
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1087
  %rt_rtx7 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !1087
  store %struct.rtx_def* %arg2, %struct.rtx_def** %rt_rtx7, align 8, !dbg !1088
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 1, !dbg !1089
  %rt_rtx11 = bitcast %struct.object_block** %arrayidx10 to %struct.rtx_def**, !dbg !1089
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx11, align 8, !dbg !1090
  %arrayidx14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 2, !dbg !1091
  %rt_rtx15 = bitcast i64* %arrayidx14 to %struct.rtx_def**, !dbg !1091
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx15, align 8, !dbg !1092
  %u16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, !dbg !1093
  %3 = getelementptr inbounds %union.u, %union.u* %u16, i64 1, i32 0, i32 0, i64 0, !dbg !1093
  %rt_rtx19 = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !1093
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx19, align 8, !dbg !1094
  %4 = getelementptr inbounds %union.u, %union.u* %u16, i64 1, i32 0, i32 0, i64 1, !dbg !1095
  %rt_rtx23 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !1095
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx23, align 8, !dbg !1096
  %5 = getelementptr inbounds %union.u, %union.u* %u16, i64 1, i32 0, i32 0, i64 2, !dbg !1097
  %rt_rtx27 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !1097
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx27, align 8, !dbg !1098
  ret %struct.rtx_def* %call, !dbg !1099
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_iuuB00is_stat(i32 %code, i32 %mode, i32 %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2, %struct.basic_block_def* %arg3, i32 %arg4, i8* %arg5) local_unnamed_addr #3 !dbg !1100 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1104, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1105, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1106, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !1107, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg2, metadata !1108, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %arg3, metadata !1109, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %arg4, metadata !1110, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %arg5, metadata !1111, metadata !DIExpression()), !dbg !1113
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1114
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1112, metadata !DIExpression()), !dbg !1113
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1115
  %bf.load = load i32, i32* %0, align 8, !dbg !1115
  %bf.value = shl i32 %mode, 16, !dbg !1115
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1115
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1115
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1115
  store i32 %bf.set, i32* %0, align 8, !dbg !1115
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1116
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1116
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1117
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1118
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1118
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx, align 8, !dbg !1119
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1120
  %rt_rtx7 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !1120
  store %struct.rtx_def* %arg2, %struct.rtx_def** %rt_rtx7, align 8, !dbg !1121
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 1, !dbg !1122
  %rt_bb = bitcast %struct.object_block** %arrayidx10 to %struct.basic_block_def**, !dbg !1122
  store %struct.basic_block_def* %arg3, %struct.basic_block_def** %rt_bb, align 8, !dbg !1123
  %arrayidx13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 2, !dbg !1124
  %rt_rtx14 = bitcast i64* %arrayidx13 to %struct.rtx_def**, !dbg !1124
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx14, align 8, !dbg !1125
  %u15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, !dbg !1126
  %3 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 0, !dbg !1126
  %rt_rtx18 = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !1126
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx18, align 8, !dbg !1127
  %4 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 1, !dbg !1128
  %rt_int22 = bitcast %union.rtunion_def* %4 to i32*, !dbg !1128
  store i32 %arg4, i32* %rt_int22, align 8, !dbg !1129
  %rt_str = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 2, i32 0, !dbg !1130
  store i8* %arg5, i8** %rt_str, align 8, !dbg !1131
  ret %struct.rtx_def* %call, !dbg !1132
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_si_stat(i32 %code, i32 %mode, i8* %arg0, i32 %arg1) local_unnamed_addr #3 !dbg !1133 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1137, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1138, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1139, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !1140, metadata !DIExpression()), !dbg !1142
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1143
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1141, metadata !DIExpression()), !dbg !1142
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1144
  %bf.load = load i32, i32* %0, align 8, !dbg !1144
  %bf.value = shl i32 %mode, 16, !dbg !1144
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1144
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1144
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1144
  store i32 %bf.set, i32* %0, align 8, !dbg !1144
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1145
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1146
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1147
  %rt_int = bitcast %union.rtunion_def* %1 to i32*, !dbg !1147
  store i32 %arg1, i32* %rt_int, align 8, !dbg !1148
  ret %struct.rtx_def* %call, !dbg !1149
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_ssiEEEi_stat(i32 %code, i32 %mode, i8* %arg0, i8* %arg1, i32 %arg2, %struct.rtvec_def* %arg3, %struct.rtvec_def* %arg4, %struct.rtvec_def* %arg5, i32 %arg6) local_unnamed_addr #3 !dbg !1150 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1154, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1155, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1156, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8* %arg1, metadata !1157, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i32 %arg2, metadata !1158, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg3, metadata !1159, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg4, metadata !1160, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg5, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i32 %arg6, metadata !1162, metadata !DIExpression()), !dbg !1164
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1165
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1163, metadata !DIExpression()), !dbg !1164
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1166
  %bf.load = load i32, i32* %0, align 8, !dbg !1166
  %bf.value = shl i32 %mode, 16, !dbg !1166
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1166
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1166
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1166
  store i32 %bf.set, i32* %0, align 8, !dbg !1166
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1167
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1168
  %rt_str4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, i32 0, !dbg !1169
  store i8* %arg1, i8** %rt_str4, align 8, !dbg !1170
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1171
  %rt_int = bitcast %union.rtunion_def* %1 to i32*, !dbg !1171
  store i32 %arg2, i32* %rt_int, align 8, !dbg !1172
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 1, !dbg !1173
  %rt_rtvec = bitcast %struct.object_block** %arrayidx10 to %struct.rtvec_def**, !dbg !1173
  store %struct.rtvec_def* %arg3, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1174
  %arrayidx13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 2, !dbg !1175
  %rt_rtvec14 = bitcast i64* %arrayidx13 to %struct.rtvec_def**, !dbg !1175
  store %struct.rtvec_def* %arg4, %struct.rtvec_def** %rt_rtvec14, align 8, !dbg !1176
  %u15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, !dbg !1177
  %2 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 0, !dbg !1177
  %rt_rtvec18 = bitcast %union.rtunion_def* %2 to %struct.rtvec_def**, !dbg !1177
  store %struct.rtvec_def* %arg5, %struct.rtvec_def** %rt_rtvec18, align 8, !dbg !1178
  %3 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 1, !dbg !1179
  %rt_int22 = bitcast %union.rtunion_def* %3 to i32*, !dbg !1179
  store i32 %arg6, i32* %rt_int22, align 8, !dbg !1180
  ret %struct.rtx_def* %call, !dbg !1181
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_Ei_stat(i32 %code, i32 %mode, %struct.rtvec_def* %arg0, i32 %arg1) local_unnamed_addr #3 !dbg !1182 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1187, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg0, metadata !1188, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !1189, metadata !DIExpression()), !dbg !1191
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1192
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1190, metadata !DIExpression()), !dbg !1191
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1193
  %bf.load = load i32, i32* %0, align 8, !dbg !1193
  %bf.value = shl i32 %mode, 16, !dbg !1193
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1193
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1193
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1193
  store i32 %bf.set, i32* %0, align 8, !dbg !1193
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1194
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**, !dbg !1194
  store %struct.rtvec_def* %arg0, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1195
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1196
  %rt_int = bitcast %union.rtunion_def* %1 to i32*, !dbg !1196
  store i32 %arg1, i32* %rt_int, align 8, !dbg !1197
  ret %struct.rtx_def* %call, !dbg !1198
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_eEee0_stat(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtvec_def* %arg1, %struct.rtx_def* %arg2, %struct.rtx_def* %arg3) local_unnamed_addr #3 !dbg !1199 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1203, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg0, metadata !1205, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg1, metadata !1206, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg2, metadata !1207, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg3, metadata !1208, metadata !DIExpression()), !dbg !1210
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1211
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1209, metadata !DIExpression()), !dbg !1210
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1212
  %bf.load = load i32, i32* %0, align 8, !dbg !1212
  %bf.value = shl i32 %mode, 16, !dbg !1212
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1212
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1212
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1212
  store i32 %bf.set, i32* %0, align 8, !dbg !1212
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1213
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !1213
  store %struct.rtx_def* %arg0, %struct.rtx_def** %rt_rtx, align 8, !dbg !1214
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1215
  %rt_rtvec = bitcast %union.rtunion_def* %1 to %struct.rtvec_def**, !dbg !1215
  store %struct.rtvec_def* %arg1, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1216
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1217
  %rt_rtx7 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !1217
  store %struct.rtx_def* %arg2, %struct.rtx_def** %rt_rtx7, align 8, !dbg !1218
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 1, !dbg !1219
  %rt_rtx11 = bitcast %struct.object_block** %arrayidx10 to %struct.rtx_def**, !dbg !1219
  store %struct.rtx_def* %arg3, %struct.rtx_def** %rt_rtx11, align 8, !dbg !1220
  %arrayidx14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 2, !dbg !1221
  %rt_rtx15 = bitcast i64* %arrayidx14 to %struct.rtx_def**, !dbg !1221
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx15, align 8, !dbg !1222
  ret %struct.rtx_def* %call, !dbg !1223
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_eee_stat(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2) local_unnamed_addr #3 !dbg !1224 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1228, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1229, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg0, metadata !1230, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !1231, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg2, metadata !1232, metadata !DIExpression()), !dbg !1234
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1235
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1233, metadata !DIExpression()), !dbg !1234
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1236
  %bf.load = load i32, i32* %0, align 8, !dbg !1236
  %bf.value = shl i32 %mode, 16, !dbg !1236
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1236
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1236
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1236
  store i32 %bf.set, i32* %0, align 8, !dbg !1236
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1237
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !1237
  store %struct.rtx_def* %arg0, %struct.rtx_def** %rt_rtx, align 8, !dbg !1238
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1239
  %rt_rtx4 = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1239
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx4, align 8, !dbg !1240
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1241
  %rt_rtx8 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !1241
  store %struct.rtx_def* %arg2, %struct.rtx_def** %rt_rtx8, align 8, !dbg !1242
  ret %struct.rtx_def* %call, !dbg !1243
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt__stat(i32 %code, i32 %mode) local_unnamed_addr #3 !dbg !1244 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1246, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1247, metadata !DIExpression()), !dbg !1249
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1250
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1248, metadata !DIExpression()), !dbg !1249
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1251
  %bf.load = load i32, i32* %0, align 8, !dbg !1251
  %bf.value = shl i32 %mode, 16, !dbg !1251
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1251
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1251
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1251
  store i32 %bf.set, i32* %0, align 8, !dbg !1251
  ret %struct.rtx_def* %call, !dbg !1252
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_w_stat(i32 %code, i32 %mode, i64 %arg0) local_unnamed_addr #3 !dbg !1253 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1257, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1258, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 %arg0, metadata !1259, metadata !DIExpression()), !dbg !1261
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1262
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1260, metadata !DIExpression()), !dbg !1261
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1263
  %bf.load = load i32, i32* %0, align 8, !dbg !1263
  %bf.value = shl i32 %mode, 16, !dbg !1263
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1263
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1263
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1263
  store i32 %bf.set, i32* %0, align 8, !dbg !1263
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, !dbg !1264
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !1264
  store i64 %arg0, i64* %arrayidx, align 8, !dbg !1265
  ret %struct.rtx_def* %call, !dbg !1266
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_www_stat(i32 %code, i32 %mode, i64 %arg0, i64 %arg1, i64 %arg2) local_unnamed_addr #3 !dbg !1267 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1271, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %arg0, metadata !1273, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !1274, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %arg2, metadata !1275, metadata !DIExpression()), !dbg !1277
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1278
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1276, metadata !DIExpression()), !dbg !1277
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1279
  %bf.load = load i32, i32* %0, align 8, !dbg !1279
  %bf.value = shl i32 %mode, 16, !dbg !1279
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1279
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1279
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1279
  store i32 %bf.set, i32* %0, align 8, !dbg !1279
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, !dbg !1280
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !1280
  store i64 %arg0, i64* %arrayidx, align 8, !dbg !1281
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1282
  %1 = bitcast %union.rtunion_def* %arrayidx3 to i64*, !dbg !1282
  store i64 %arg1, i64* %1, align 8, !dbg !1283
  %arrayidx6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1284
  %2 = bitcast %union.rtunion_def* %arrayidx6 to i64*, !dbg !1284
  store i64 %arg2, i64* %2, align 8, !dbg !1285
  ret %struct.rtx_def* %call, !dbg !1286
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_s_stat(i32 %code, i32 %mode, i8* %arg0) local_unnamed_addr #3 !dbg !1287 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1291, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1292, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1293, metadata !DIExpression()), !dbg !1295
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1296
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1294, metadata !DIExpression()), !dbg !1295
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1297
  %bf.load = load i32, i32* %0, align 8, !dbg !1297
  %bf.value = shl i32 %mode, 16, !dbg !1297
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1297
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1297
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1297
  store i32 %bf.set, i32* %0, align 8, !dbg !1297
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1298
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1299
  ret %struct.rtx_def* %call, !dbg !1300
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_i00_stat(i32 %code, i32 %mode, i32 %arg0) local_unnamed_addr #3 !dbg !1301 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1306, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1307, metadata !DIExpression()), !dbg !1309
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1310
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1308, metadata !DIExpression()), !dbg !1309
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1311
  %bf.load = load i32, i32* %0, align 8, !dbg !1311
  %bf.value = shl i32 %mode, 16, !dbg !1311
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1311
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1311
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1311
  store i32 %bf.set, i32* %0, align 8, !dbg !1311
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1312
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1312
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1313
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1314
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1314
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx, align 8, !dbg !1315
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1316
  %rt_rtx7 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !1316
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx7, align 8, !dbg !1317
  ret %struct.rtx_def* %call, !dbg !1318
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_ei_stat(i32 %code, i32 %mode, %struct.rtx_def* %arg0, i32 %arg1) local_unnamed_addr #3 !dbg !1319 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1323, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1324, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg0, metadata !1325, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !1326, metadata !DIExpression()), !dbg !1328
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1329
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1327, metadata !DIExpression()), !dbg !1328
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1330
  %bf.load = load i32, i32* %0, align 8, !dbg !1330
  %bf.value = shl i32 %mode, 16, !dbg !1330
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1330
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1330
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1330
  store i32 %bf.set, i32* %0, align 8, !dbg !1330
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1331
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !1331
  store %struct.rtx_def* %arg0, %struct.rtx_def** %rt_rtx, align 8, !dbg !1332
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1333
  %rt_int = bitcast %union.rtunion_def* %1 to i32*, !dbg !1333
  store i32 %arg1, i32* %rt_int, align 8, !dbg !1334
  ret %struct.rtx_def* %call, !dbg !1335
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_e0_stat(i32 %code, i32 %mode, %struct.rtx_def* %arg0) local_unnamed_addr #3 !dbg !1336 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1338, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1339, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg0, metadata !1340, metadata !DIExpression()), !dbg !1342
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1343
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1341, metadata !DIExpression()), !dbg !1342
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1344
  %bf.load = load i32, i32* %0, align 8, !dbg !1344
  %bf.value = shl i32 %mode, 16, !dbg !1344
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1344
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1344
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1344
  store i32 %bf.set, i32* %0, align 8, !dbg !1344
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1345
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !1345
  store %struct.rtx_def* %arg0, %struct.rtx_def** %rt_rtx, align 8, !dbg !1346
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1347
  %rt_rtx4 = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1347
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx4, align 8, !dbg !1348
  ret %struct.rtx_def* %call, !dbg !1349
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_u_stat(i32 %code, i32 %mode, %struct.rtx_def* %arg0) local_unnamed_addr #3 !dbg !1350 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1352, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1353, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg0, metadata !1354, metadata !DIExpression()), !dbg !1356
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1357
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1355, metadata !DIExpression()), !dbg !1356
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1358
  %bf.load = load i32, i32* %0, align 8, !dbg !1358
  %bf.value = shl i32 %mode, 16, !dbg !1358
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1358
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1358
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1358
  store i32 %bf.set, i32* %0, align 8, !dbg !1358
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1359
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !1359
  store %struct.rtx_def* %arg0, %struct.rtx_def** %rt_rtx, align 8, !dbg !1360
  ret %struct.rtx_def* %call, !dbg !1361
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_s00_stat(i32 %code, i32 %mode, i8* %arg0) local_unnamed_addr #3 !dbg !1362 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1364, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1365, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1366, metadata !DIExpression()), !dbg !1368
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1369
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1367, metadata !DIExpression()), !dbg !1368
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1370
  %bf.load = load i32, i32* %0, align 8, !dbg !1370
  %bf.value = shl i32 %mode, 16, !dbg !1370
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1370
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1370
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1370
  store i32 %bf.set, i32* %0, align 8, !dbg !1370
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1371
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1372
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1373
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1373
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx, align 8, !dbg !1374
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1375
  %rt_rtx7 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !1375
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx7, align 8, !dbg !1376
  ret %struct.rtx_def* %call, !dbg !1377
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_tei_stat(i32 %code, i32 %mode, %union.tree_node* %arg0, %struct.rtx_def* %arg1, i32 %arg2) local_unnamed_addr #3 !dbg !1378 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1382, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1383, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata %union.tree_node* %arg0, metadata !1384, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !1385, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i32 %arg2, metadata !1386, metadata !DIExpression()), !dbg !1388
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1389
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1387, metadata !DIExpression()), !dbg !1388
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1390
  %bf.load = load i32, i32* %0, align 8, !dbg !1390
  %bf.value = shl i32 %mode, 16, !dbg !1390
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1390
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1390
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1390
  store i32 %bf.set, i32* %0, align 8, !dbg !1390
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1391
  %rt_tree = bitcast %union.rtunion_def* %arrayidx to %union.tree_node**, !dbg !1391
  store %union.tree_node* %arg0, %union.tree_node** %rt_tree, align 8, !dbg !1392
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1393
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1393
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx, align 8, !dbg !1394
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1395
  %rt_int = bitcast %union.rtunion_def* %2 to i32*, !dbg !1395
  store i32 %arg2, i32* %rt_int, align 8, !dbg !1396
  ret %struct.rtx_def* %call, !dbg !1397
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_iss_stat(i32 %code, i32 %mode, i32 %arg0, i8* %arg1, i8* %arg2) local_unnamed_addr #3 !dbg !1398 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1402, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1404, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %arg1, metadata !1405, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %arg2, metadata !1406, metadata !DIExpression()), !dbg !1408
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1407, metadata !DIExpression()), !dbg !1408
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1410
  %bf.load = load i32, i32* %0, align 8, !dbg !1410
  %bf.value = shl i32 %mode, 16, !dbg !1410
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1410
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1410
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1410
  store i32 %bf.set, i32* %0, align 8, !dbg !1410
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1411
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1411
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1412
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, i32 0, !dbg !1413
  store i8* %arg1, i8** %rt_str, align 8, !dbg !1414
  %rt_str7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, i32 0, !dbg !1415
  store i8* %arg2, i8** %rt_str7, align 8, !dbg !1416
  ret %struct.rtx_def* %call, !dbg !1417
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_is_stat(i32 %code, i32 %mode, i32 %arg0, i8* %arg1) local_unnamed_addr #3 !dbg !1418 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1422, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1423, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1424, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i8* %arg1, metadata !1425, metadata !DIExpression()), !dbg !1427
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1428
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1426, metadata !DIExpression()), !dbg !1427
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1429
  %bf.load = load i32, i32* %0, align 8, !dbg !1429
  %bf.value = shl i32 %mode, 16, !dbg !1429
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1429
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1429
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1429
  store i32 %bf.set, i32* %0, align 8, !dbg !1429
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1430
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1430
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1431
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, i32 0, !dbg !1432
  store i8* %arg1, i8** %rt_str, align 8, !dbg !1433
  ret %struct.rtx_def* %call, !dbg !1434
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_isE_stat(i32 %code, i32 %mode, i32 %arg0, i8* %arg1, %struct.rtvec_def* %arg2) local_unnamed_addr #3 !dbg !1435 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1439, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1440, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1441, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8* %arg1, metadata !1442, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg2, metadata !1443, metadata !DIExpression()), !dbg !1445
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1446
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1444, metadata !DIExpression()), !dbg !1445
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1447
  %bf.load = load i32, i32* %0, align 8, !dbg !1447
  %bf.value = shl i32 %mode, 16, !dbg !1447
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1447
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1447
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1447
  store i32 %bf.set, i32* %0, align 8, !dbg !1447
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1448
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1448
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1449
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, i32 0, !dbg !1450
  store i8* %arg1, i8** %rt_str, align 8, !dbg !1451
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1452
  %rt_rtvec = bitcast %union.rtunion_def* %1 to %struct.rtvec_def**, !dbg !1452
  store %struct.rtvec_def* %arg2, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1453
  ret %struct.rtx_def* %call, !dbg !1454
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_i_stat(i32 %code, i32 %mode, i32 %arg0) local_unnamed_addr #3 !dbg !1455 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1457, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1458, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1459, metadata !DIExpression()), !dbg !1461
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1462
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1460, metadata !DIExpression()), !dbg !1461
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1463
  %bf.load = load i32, i32* %0, align 8, !dbg !1463
  %bf.value = shl i32 %mode, 16, !dbg !1463
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1463
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1463
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1463
  store i32 %bf.set, i32* %0, align 8, !dbg !1463
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1464
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1464
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1465
  ret %struct.rtx_def* %call, !dbg !1466
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_iE_stat(i32 %code, i32 %mode, i32 %arg0, %struct.rtvec_def* %arg1) local_unnamed_addr #3 !dbg !1467 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1471, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1472, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1473, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg1, metadata !1474, metadata !DIExpression()), !dbg !1476
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1477
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1475, metadata !DIExpression()), !dbg !1476
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1478
  %bf.load = load i32, i32* %0, align 8, !dbg !1478
  %bf.value = shl i32 %mode, 16, !dbg !1478
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1478
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1478
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1478
  store i32 %bf.set, i32* %0, align 8, !dbg !1478
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1479
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1479
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1480
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1481
  %rt_rtvec = bitcast %union.rtunion_def* %1 to %struct.rtvec_def**, !dbg !1481
  store %struct.rtvec_def* %arg1, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1482
  ret %struct.rtx_def* %call, !dbg !1483
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_ss_stat(i32 %code, i32 %mode, i8* %arg0, i8* %arg1) local_unnamed_addr #3 !dbg !1484 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1488, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1489, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1490, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %arg1, metadata !1491, metadata !DIExpression()), !dbg !1493
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1494
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1492, metadata !DIExpression()), !dbg !1493
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1495
  %bf.load = load i32, i32* %0, align 8, !dbg !1495
  %bf.value = shl i32 %mode, 16, !dbg !1495
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1495
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1495
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1495
  store i32 %bf.set, i32* %0, align 8, !dbg !1495
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1496
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1497
  %rt_str4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, i32 0, !dbg !1498
  store i8* %arg1, i8** %rt_str4, align 8, !dbg !1499
  ret %struct.rtx_def* %call, !dbg !1500
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_sEss_stat(i32 %code, i32 %mode, i8* %arg0, %struct.rtvec_def* %arg1, i8* %arg2, i8* %arg3) local_unnamed_addr #3 !dbg !1501 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1505, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1506, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1507, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg1, metadata !1508, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i8* %arg2, metadata !1509, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i8* %arg3, metadata !1510, metadata !DIExpression()), !dbg !1512
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1513
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1511, metadata !DIExpression()), !dbg !1512
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1514
  %bf.load = load i32, i32* %0, align 8, !dbg !1514
  %bf.value = shl i32 %mode, 16, !dbg !1514
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1514
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1514
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1514
  store i32 %bf.set, i32* %0, align 8, !dbg !1514
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1515
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1516
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1517
  %rt_rtvec = bitcast %union.rtunion_def* %1 to %struct.rtvec_def**, !dbg !1517
  store %struct.rtvec_def* %arg1, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1518
  %rt_str7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, i32 0, !dbg !1519
  store i8* %arg2, i8** %rt_str7, align 8, !dbg !1520
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 1, !dbg !1521
  %rt_str11 = bitcast %struct.object_block** %arrayidx10 to i8**, !dbg !1521
  store i8* %arg3, i8** %rt_str11, align 8, !dbg !1522
  ret %struct.rtx_def* %call, !dbg !1523
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_eE_stat(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtvec_def* %arg1) local_unnamed_addr #3 !dbg !1524 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1528, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1529, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg0, metadata !1530, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg1, metadata !1531, metadata !DIExpression()), !dbg !1533
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1534
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1532, metadata !DIExpression()), !dbg !1533
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1535
  %bf.load = load i32, i32* %0, align 8, !dbg !1535
  %bf.value = shl i32 %mode, 16, !dbg !1535
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1535
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1535
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1535
  store i32 %bf.set, i32* %0, align 8, !dbg !1535
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1536
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !1536
  store %struct.rtx_def* %arg0, %struct.rtx_def** %rt_rtx, align 8, !dbg !1537
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1538
  %rt_rtvec = bitcast %union.rtunion_def* %1 to %struct.rtvec_def**, !dbg !1538
  store %struct.rtvec_def* %arg1, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1539
  ret %struct.rtx_def* %call, !dbg !1540
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_Ess_stat(i32 %code, i32 %mode, %struct.rtvec_def* %arg0, i8* %arg1, i8* %arg2) local_unnamed_addr #3 !dbg !1541 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1545, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1546, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg0, metadata !1547, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %arg1, metadata !1548, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %arg2, metadata !1549, metadata !DIExpression()), !dbg !1551
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1552
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1550, metadata !DIExpression()), !dbg !1551
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1553
  %bf.load = load i32, i32* %0, align 8, !dbg !1553
  %bf.value = shl i32 %mode, 16, !dbg !1553
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1553
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1553
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1553
  store i32 %bf.set, i32* %0, align 8, !dbg !1553
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1554
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**, !dbg !1554
  store %struct.rtvec_def* %arg0, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1555
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, i32 0, !dbg !1556
  store i8* %arg1, i8** %rt_str, align 8, !dbg !1557
  %rt_str7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, i32 0, !dbg !1558
  store i8* %arg2, i8** %rt_str7, align 8, !dbg !1559
  ret %struct.rtx_def* %call, !dbg !1560
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_ses_stat(i32 %code, i32 %mode, i8* %arg0, %struct.rtx_def* %arg1, i8* %arg2) local_unnamed_addr #3 !dbg !1561 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1565, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1566, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1567, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !1568, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i8* %arg2, metadata !1569, metadata !DIExpression()), !dbg !1571
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1572
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1570, metadata !DIExpression()), !dbg !1571
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1573
  %bf.load = load i32, i32* %0, align 8, !dbg !1573
  %bf.value = shl i32 %mode, 16, !dbg !1573
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1573
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1573
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1573
  store i32 %bf.set, i32* %0, align 8, !dbg !1573
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1574
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1575
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1576
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1576
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx, align 8, !dbg !1577
  %rt_str7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, i32 0, !dbg !1578
  store i8* %arg2, i8** %rt_str7, align 8, !dbg !1579
  ret %struct.rtx_def* %call, !dbg !1580
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_sss_stat(i32 %code, i32 %mode, i8* %arg0, i8* %arg1, i8* %arg2) local_unnamed_addr #3 !dbg !1581 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1585, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1586, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1587, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8* %arg1, metadata !1588, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8* %arg2, metadata !1589, metadata !DIExpression()), !dbg !1591
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1592
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1590, metadata !DIExpression()), !dbg !1591
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1593
  %bf.load = load i32, i32* %0, align 8, !dbg !1593
  %bf.value = shl i32 %mode, 16, !dbg !1593
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1593
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1593
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1593
  store i32 %bf.set, i32* %0, align 8, !dbg !1593
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1594
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1595
  %rt_str4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, i32 0, !dbg !1596
  store i8* %arg1, i8** %rt_str4, align 8, !dbg !1597
  %rt_str8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, i32 0, !dbg !1598
  store i8* %arg2, i8** %rt_str8, align 8, !dbg !1599
  ret %struct.rtx_def* %call, !dbg !1600
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_sse_stat(i32 %code, i32 %mode, i8* %arg0, i8* %arg1, %struct.rtx_def* %arg2) local_unnamed_addr #3 !dbg !1601 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1605, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1606, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1607, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %arg1, metadata !1608, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg2, metadata !1609, metadata !DIExpression()), !dbg !1611
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1612
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1610, metadata !DIExpression()), !dbg !1611
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1613
  %bf.load = load i32, i32* %0, align 8, !dbg !1613
  %bf.value = shl i32 %mode, 16, !dbg !1613
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1613
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1613
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1613
  store i32 %bf.set, i32* %0, align 8, !dbg !1613
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1614
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1615
  %rt_str4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, i32 0, !dbg !1616
  store i8* %arg1, i8** %rt_str4, align 8, !dbg !1617
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1618
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1618
  store %struct.rtx_def* %arg2, %struct.rtx_def** %rt_rtx, align 8, !dbg !1619
  ret %struct.rtx_def* %call, !dbg !1620
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_sies_stat(i32 %code, i32 %mode, i8* %arg0, i32 %arg1, %struct.rtx_def* %arg2, i8* %arg3) local_unnamed_addr #3 !dbg !1621 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1625, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1626, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1627, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !1628, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg2, metadata !1629, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8* %arg3, metadata !1630, metadata !DIExpression()), !dbg !1632
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1633
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1631, metadata !DIExpression()), !dbg !1632
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1634
  %bf.load = load i32, i32* %0, align 8, !dbg !1634
  %bf.value = shl i32 %mode, 16, !dbg !1634
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1634
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1634
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1634
  store i32 %bf.set, i32* %0, align 8, !dbg !1634
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1635
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1636
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1637
  %rt_int = bitcast %union.rtunion_def* %1 to i32*, !dbg !1637
  store i32 %arg1, i32* %rt_int, align 8, !dbg !1638
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !1639
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !1639
  store %struct.rtx_def* %arg2, %struct.rtx_def** %rt_rtx, align 8, !dbg !1640
  %arrayidx9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 1, !dbg !1641
  %rt_str10 = bitcast %struct.object_block** %arrayidx9 to i8**, !dbg !1641
  store i8* %arg3, i8** %rt_str10, align 8, !dbg !1642
  ret %struct.rtx_def* %call, !dbg !1643
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_sE_stat(i32 %code, i32 %mode, i8* %arg0, %struct.rtvec_def* %arg1) local_unnamed_addr #3 !dbg !1644 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1648, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1649, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %arg0, metadata !1650, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg1, metadata !1651, metadata !DIExpression()), !dbg !1653
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1654
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1652, metadata !DIExpression()), !dbg !1653
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1655
  %bf.load = load i32, i32* %0, align 8, !dbg !1655
  %bf.value = shl i32 %mode, 16, !dbg !1655
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1655
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1655
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1655
  store i32 %bf.set, i32* %0, align 8, !dbg !1655
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !1656
  store i8* %arg0, i8** %rt_str, align 8, !dbg !1657
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1658
  %rt_rtvec = bitcast %union.rtunion_def* %1 to %struct.rtvec_def**, !dbg !1658
  store %struct.rtvec_def* %arg1, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1659
  ret %struct.rtx_def* %call, !dbg !1660
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_ii_stat(i32 %code, i32 %mode, i32 %arg0, i32 %arg1) local_unnamed_addr #3 !dbg !1661 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1665, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1666, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %arg0, metadata !1667, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !1668, metadata !DIExpression()), !dbg !1670
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1671
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1669, metadata !DIExpression()), !dbg !1670
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1672
  %bf.load = load i32, i32* %0, align 8, !dbg !1672
  %bf.value = shl i32 %mode, 16, !dbg !1672
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1672
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1672
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1672
  store i32 %bf.set, i32* %0, align 8, !dbg !1672
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1673
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !1673
  store i32 %arg0, i32* %rt_int, align 8, !dbg !1674
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1675
  %rt_int4 = bitcast %union.rtunion_def* %1 to i32*, !dbg !1675
  store i32 %arg1, i32* %rt_int4, align 8, !dbg !1676
  ret %struct.rtx_def* %call, !dbg !1677
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_rtx_fmt_Ee_stat(i32 %code, i32 %mode, %struct.rtvec_def* %arg0, %struct.rtx_def* %arg1) local_unnamed_addr #3 !dbg !1678 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1682, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1683, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %arg0, metadata !1684, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1, metadata !1685, metadata !DIExpression()), !dbg !1687
  %call = tail call %struct.rtx_def* @rtx_alloc_stat(i32 %code) #5, !dbg !1688
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1686, metadata !DIExpression()), !dbg !1687
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !1689
  %bf.load = load i32, i32* %0, align 8, !dbg !1689
  %bf.value = shl i32 %mode, 16, !dbg !1689
  %bf.shl = and i32 %bf.value, 16711680, !dbg !1689
  %bf.clear = and i32 %bf.load, -16711681, !dbg !1689
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1689
  store i32 %bf.set, i32* %0, align 8, !dbg !1689
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1690
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**, !dbg !1690
  store %struct.rtvec_def* %arg0, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1691
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1692
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !1692
  store %struct.rtx_def* %arg1, %struct.rtx_def** %rt_rtx, align 8, !dbg !1693
  ret %struct.rtx_def* %call, !dbg !1694
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
!llvm.module.flags = !{!430, !431, !432}
!llvm.ident = !{!433}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !275, nameTableKind: None)
!1 = !DIFile(filename: "genrtl.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132}
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
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !133, line: 45, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!135 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!139 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!140 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!141 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!142 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!143 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!144 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!145 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!146 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!147 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!148 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!149 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!150 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!151 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!152 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!153 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!154 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!155 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!156 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!157 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!158 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!159 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!160 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!161 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!162 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!163 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!164 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!165 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!166 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!167 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!168 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!169 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!170 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!171 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!172 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!173 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!174 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!175 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!176 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!177 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!178 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!179 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!180 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!181 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!182 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!183 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!184 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!185 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!186 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!187 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!188 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!189 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!190 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!191 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!192 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!193 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!194 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!195 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!196 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!197 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!198 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!199 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!200 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!201 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!202 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!203 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!204 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!205 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!206 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!207 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!208 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!209 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!210 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!211 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!212 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!213 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!214 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!215 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!216 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!217 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!218 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!219 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!220 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!221 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!222 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!223 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!224 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!225 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!226 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!227 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!228 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!229 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!230 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!231 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!232 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!233 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!234 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!235 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!236 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!237 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!238 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!239 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!240 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!241 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!242 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!243 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!244 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!245 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!246 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!247 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!248 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!249 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!250 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!251 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!252 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!253 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!254 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!255 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!256 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!257 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!258 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!259 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!260 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!261 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!262 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!263 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!264 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!265 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!266 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!267 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!268 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!269 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!270 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!271 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!272 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!273 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!274 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!275 = !{!276, !277, !278, !279, !282, !283, !285}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!278 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !286, line: 50, baseType: !287)
!286 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !133, line: 240, size: 384, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !288, file: !133, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !288, file: !133, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !288, file: !133, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !288, file: !133, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !288, file: !133, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !288, file: !133, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !288, file: !133, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !288, file: !133, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !288, file: !133, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !288, file: !133, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !288, file: !133, line: 321, baseType: !301, size: 320, offset: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !133, line: 315, size: 320, elements: !302)
!302 = !{!303, !372, !374, !405, !418}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !301, file: !133, line: 316, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 64, elements: !320)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !133, line: 183, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !133, line: 166, size: 64, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !322, !323, !335, !338, !341, !345, !348, !361, !369}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !306, file: !133, line: 168, baseType: !278, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !306, file: !133, line: 169, baseType: !5, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !306, file: !133, line: 170, baseType: !283, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !306, file: !133, line: 171, baseType: !285, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !306, file: !133, line: 172, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !286, line: 53, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !133, line: 359, size: 128, elements: !316)
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !315, file: !133, line: 360, baseType: !278, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !315, file: !133, line: 361, baseType: !319, size: 64, offset: 64)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 64, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 1)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !306, file: !133, line: 173, baseType: !3, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !306, file: !133, line: 174, baseType: !324, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !133, line: 133, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 115, size: 32, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !325, file: !133, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !325, file: !133, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !325, file: !133, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !325, file: !133, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !325, file: !133, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !325, file: !133, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !325, file: !133, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !325, file: !133, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !306, file: !133, line: 175, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !133, line: 175, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !306, file: !133, line: 176, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !286, line: 46, flags: DIFlagFwdDecl)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !306, file: !133, line: 177, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !286, line: 56, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !286, line: 55, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !306, file: !133, line: 178, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !286, line: 110, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !306, file: !133, line: 179, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !133, line: 150, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !133, line: 142, size: 320, elements: !352)
!352 = !{!353, !354, !355, !356, !359, !360}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !351, file: !133, line: 144, baseType: !342, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !351, file: !133, line: 145, baseType: !285, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !351, file: !133, line: 146, baseType: !285, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !351, file: !133, line: 147, baseType: !357, size: 32, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !358, line: 31, baseType: !278)
!358 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!359 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !351, file: !133, line: 148, baseType: !5, size: 32, offset: 224)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !351, file: !133, line: 149, baseType: !277, size: 8, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !306, file: !133, line: 180, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !133, line: 162, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !133, line: 159, size: 128, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !364, file: !133, line: 160, baseType: !342, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !364, file: !133, line: 161, baseType: !368, size: 64, offset: 64)
!368 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !306, file: !133, line: 181, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !133, line: 181, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !301, file: !133, line: 317, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 64, elements: !320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !301, file: !133, line: 318, baseType: !375, size: 320)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !133, line: 188, size: 320, elements: !376)
!376 = !{!377, !381, !404}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !375, file: !133, line: 190, baseType: !378, size: 192)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 192, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 3)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !375, file: !133, line: 193, baseType: !382, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !133, line: 206, size: 320, elements: !384)
!384 = !{!385, !389, !390, !391, !403}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !383, file: !133, line: 208, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !286, line: 62, baseType: !388)
!388 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !286, line: 61, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !383, file: !133, line: 211, baseType: !5, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !383, file: !133, line: 214, baseType: !368, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !383, file: !133, line: 224, baseType: !392, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !133, line: 202, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !133, line: 202, size: 128, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !394, file: !133, line: 202, baseType: !397, size: 128)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !133, line: 200, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !133, line: 200, size: 128, elements: !399)
!399 = !{!400, !401, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !398, file: !133, line: 200, baseType: !5, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !398, file: !133, line: 200, baseType: !5, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !398, file: !133, line: 200, baseType: !319, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !383, file: !133, line: 234, baseType: !392, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !375, file: !133, line: 197, baseType: !368, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !301, file: !133, line: 319, baseType: !406, size: 256)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !407, line: 52, size: 256, elements: !408)
!407 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!408 = !{!409, !410, !411, !412, !413, !414, !415}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !406, file: !407, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !406, file: !407, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !406, file: !407, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !406, file: !407, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !406, file: !407, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !406, file: !407, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !406, file: !407, line: 62, baseType: !416, size: 192, offset: 64)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 192, elements: !379)
!417 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !301, file: !133, line: 320, baseType: !419, size: 192)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !420, line: 27, size: 192, elements: !421)
!420 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!421 = !{!422, !429}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !419, file: !420, line: 29, baseType: !423, size: 128)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !424, line: 58, baseType: !425)
!424 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 54, size: 128, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !425, file: !424, line: 56, baseType: !417, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !425, file: !424, line: 57, baseType: !368, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !419, file: !420, line: 30, baseType: !3, size: 32, offset: 128)
!430 = !{i32 2, !"Dwarf Version", i32 4}
!431 = !{i32 2, !"Debug Info Version", i32 3}
!432 = !{i32 1, !"wchar_size", i32 4}
!433 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!434 = distinct !DISubprogram(name: "vprintf", scope: !435, file: !435, line: 39, type: !436, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !446)
!435 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!436 = !DISubroutineType(types: !437)
!437 = !{!278, !438, !439}
!438 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !283)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !441)
!441 = !{!442, !443, !444, !445}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !440, file: !1, baseType: !5, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !440, file: !1, baseType: !5, size: 32, offset: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !440, file: !1, baseType: !282, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !440, file: !1, baseType: !282, size: 64, offset: 128)
!446 = !{!447, !448}
!447 = !DILocalVariable(name: "__fmt", arg: 1, scope: !434, file: !435, line: 39, type: !438)
!448 = !DILocalVariable(name: "__arg", arg: 2, scope: !434, file: !435, line: 39, type: !439)
!449 = !DILocation(line: 0, scope: !434)
!450 = !DILocation(line: 41, column: 20, scope: !434)
!451 = !DILocation(line: 41, column: 10, scope: !434)
!452 = !DILocation(line: 41, column: 3, scope: !434)
!453 = distinct !DISubprogram(name: "getchar", scope: !435, file: !435, line: 47, type: !454, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!278}
!456 = !{}
!457 = !DILocation(line: 49, column: 16, scope: !453)
!458 = !DILocation(line: 49, column: 10, scope: !453)
!459 = !DILocation(line: 49, column: 3, scope: !453)
!460 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !435, file: !435, line: 56, type: !461, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !518)
!461 = !DISubroutineType(types: !462)
!462 = !{!278, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !465, line: 7, baseType: !466)
!465 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !467, line: 49, size: 1728, elements: !468)
!467 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !484, !486, !487, !488, !491, !493, !495, !497, !500, !502, !505, !508, !509, !510, !513, !514}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !466, file: !467, line: 51, baseType: !278, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !466, file: !467, line: 54, baseType: !280, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !466, file: !467, line: 55, baseType: !280, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !466, file: !467, line: 56, baseType: !280, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !466, file: !467, line: 57, baseType: !280, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !466, file: !467, line: 58, baseType: !280, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !466, file: !467, line: 59, baseType: !280, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !466, file: !467, line: 60, baseType: !280, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !466, file: !467, line: 61, baseType: !280, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !466, file: !467, line: 64, baseType: !280, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !466, file: !467, line: 65, baseType: !280, size: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !466, file: !467, line: 66, baseType: !280, size: 64, offset: 704)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !466, file: !467, line: 68, baseType: !482, size: 64, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !467, line: 36, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !466, file: !467, line: 70, baseType: !485, size: 64, offset: 832)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !466, file: !467, line: 72, baseType: !278, size: 32, offset: 896)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !466, file: !467, line: 73, baseType: !278, size: 32, offset: 928)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !466, file: !467, line: 74, baseType: !489, size: 64, offset: 960)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !490, line: 152, baseType: !368)
!490 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !466, file: !467, line: 77, baseType: !492, size: 16, offset: 1024)
!492 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !466, file: !467, line: 78, baseType: !494, size: 8, offset: 1040)
!494 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !466, file: !467, line: 79, baseType: !496, size: 8, offset: 1048)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 8, elements: !320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !466, file: !467, line: 81, baseType: !498, size: 64, offset: 1088)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !467, line: 43, baseType: null)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !466, file: !467, line: 89, baseType: !501, size: 64, offset: 1152)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !490, line: 153, baseType: !368)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !466, file: !467, line: 91, baseType: !503, size: 64, offset: 1216)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !467, line: 37, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !466, file: !467, line: 92, baseType: !506, size: 64, offset: 1280)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !467, line: 38, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !466, file: !467, line: 93, baseType: !485, size: 64, offset: 1344)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !466, file: !467, line: 94, baseType: !282, size: 64, offset: 1408)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !466, file: !467, line: 95, baseType: !511, size: 64, offset: 1472)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !512, line: 46, baseType: !417)
!512 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !466, file: !467, line: 96, baseType: !278, size: 32, offset: 1536)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !466, file: !467, line: 98, baseType: !515, size: 160, offset: 1568)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 160, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 20)
!518 = !{!519}
!519 = !DILocalVariable(name: "__fp", arg: 1, scope: !460, file: !435, line: 56, type: !463)
!520 = !DILocation(line: 0, scope: !460)
!521 = !DILocation(line: 58, column: 10, scope: !460)
!522 = !DILocation(line: 58, column: 3, scope: !460)
!523 = distinct !DISubprogram(name: "getc_unlocked", scope: !435, file: !435, line: 66, type: !461, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !524)
!524 = !{!525}
!525 = !DILocalVariable(name: "__fp", arg: 1, scope: !523, file: !435, line: 66, type: !463)
!526 = !DILocation(line: 0, scope: !523)
!527 = !DILocation(line: 68, column: 10, scope: !523)
!528 = !DILocation(line: 68, column: 3, scope: !523)
!529 = distinct !DISubprogram(name: "getchar_unlocked", scope: !435, file: !435, line: 73, type: !454, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !456)
!530 = !DILocation(line: 75, column: 10, scope: !529)
!531 = !DILocation(line: 75, column: 3, scope: !529)
!532 = distinct !DISubprogram(name: "putchar", scope: !435, file: !435, line: 82, type: !533, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !535)
!533 = !DISubroutineType(types: !534)
!534 = !{!278, !278}
!535 = !{!536}
!536 = !DILocalVariable(name: "__c", arg: 1, scope: !532, file: !435, line: 82, type: !278)
!537 = !DILocation(line: 0, scope: !532)
!538 = !DILocation(line: 84, column: 21, scope: !532)
!539 = !DILocation(line: 84, column: 10, scope: !532)
!540 = !DILocation(line: 84, column: 3, scope: !532)
!541 = distinct !DISubprogram(name: "fputc_unlocked", scope: !435, file: !435, line: 91, type: !542, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{!278, !278, !463}
!544 = !{!545, !546}
!545 = !DILocalVariable(name: "__c", arg: 1, scope: !541, file: !435, line: 91, type: !278)
!546 = !DILocalVariable(name: "__stream", arg: 2, scope: !541, file: !435, line: 91, type: !463)
!547 = !DILocation(line: 0, scope: !541)
!548 = !DILocation(line: 93, column: 10, scope: !541)
!549 = !DILocation(line: 93, column: 3, scope: !541)
!550 = distinct !DISubprogram(name: "putc_unlocked", scope: !435, file: !435, line: 101, type: !542, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !551)
!551 = !{!552, !553}
!552 = !DILocalVariable(name: "__c", arg: 1, scope: !550, file: !435, line: 101, type: !278)
!553 = !DILocalVariable(name: "__stream", arg: 2, scope: !550, file: !435, line: 101, type: !463)
!554 = !DILocation(line: 0, scope: !550)
!555 = !DILocation(line: 103, column: 10, scope: !550)
!556 = !DILocation(line: 103, column: 3, scope: !550)
!557 = distinct !DISubprogram(name: "putchar_unlocked", scope: !435, file: !435, line: 108, type: !533, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !558)
!558 = !{!559}
!559 = !DILocalVariable(name: "__c", arg: 1, scope: !557, file: !435, line: 108, type: !278)
!560 = !DILocation(line: 0, scope: !557)
!561 = !DILocation(line: 110, column: 10, scope: !557)
!562 = !DILocation(line: 110, column: 3, scope: !557)
!563 = distinct !DISubprogram(name: "getline", scope: !435, file: !435, line: 118, type: !564, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !568)
!564 = !DISubroutineType(types: !565)
!565 = !{!566, !279, !567, !463}
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !490, line: 193, baseType: !368)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!568 = !{!569, !570, !571}
!569 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !563, file: !435, line: 118, type: !279)
!570 = !DILocalVariable(name: "__n", arg: 2, scope: !563, file: !435, line: 118, type: !567)
!571 = !DILocalVariable(name: "__stream", arg: 3, scope: !563, file: !435, line: 118, type: !463)
!572 = !DILocation(line: 0, scope: !563)
!573 = !DILocation(line: 120, column: 10, scope: !563)
!574 = !DILocation(line: 120, column: 3, scope: !563)
!575 = distinct !DISubprogram(name: "feof_unlocked", scope: !435, file: !435, line: 128, type: !461, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !576)
!576 = !{!577}
!577 = !DILocalVariable(name: "__stream", arg: 1, scope: !575, file: !435, line: 128, type: !463)
!578 = !DILocation(line: 0, scope: !575)
!579 = !DILocation(line: 130, column: 10, scope: !575)
!580 = !DILocation(line: 130, column: 3, scope: !575)
!581 = distinct !DISubprogram(name: "ferror_unlocked", scope: !435, file: !435, line: 135, type: !461, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !582)
!582 = !{!583}
!583 = !DILocalVariable(name: "__stream", arg: 1, scope: !581, file: !435, line: 135, type: !463)
!584 = !DILocation(line: 0, scope: !581)
!585 = !DILocation(line: 137, column: 10, scope: !581)
!586 = !DILocation(line: 137, column: 3, scope: !581)
!587 = distinct !DISubprogram(name: "tolower", scope: !588, file: !588, line: 207, type: !533, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !589)
!588 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!589 = !{!590}
!590 = !DILocalVariable(name: "__c", arg: 1, scope: !587, file: !588, line: 207, type: !278)
!591 = !DILocation(line: 0, scope: !587)
!592 = !DILocation(line: 209, column: 22, scope: !587)
!593 = !DILocation(line: 209, column: 39, scope: !587)
!594 = !DILocation(line: 209, column: 38, scope: !587)
!595 = !DILocation(line: 209, column: 37, scope: !587)
!596 = !DILocation(line: 209, column: 10, scope: !587)
!597 = !DILocation(line: 209, column: 3, scope: !587)
!598 = distinct !DISubprogram(name: "toupper", scope: !588, file: !588, line: 213, type: !533, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !599)
!599 = !{!600}
!600 = !DILocalVariable(name: "__c", arg: 1, scope: !598, file: !588, line: 213, type: !278)
!601 = !DILocation(line: 0, scope: !598)
!602 = !DILocation(line: 215, column: 22, scope: !598)
!603 = !DILocation(line: 215, column: 39, scope: !598)
!604 = !DILocation(line: 215, column: 38, scope: !598)
!605 = !DILocation(line: 215, column: 37, scope: !598)
!606 = !DILocation(line: 215, column: 10, scope: !598)
!607 = !DILocation(line: 215, column: 3, scope: !598)
!608 = distinct !DISubprogram(name: "atoi", scope: !609, file: !609, line: 361, type: !610, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !612)
!609 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!610 = !DISubroutineType(types: !611)
!611 = !{!278, !283}
!612 = !{!613}
!613 = !DILocalVariable(name: "__nptr", arg: 1, scope: !608, file: !609, line: 361, type: !283)
!614 = !DILocation(line: 0, scope: !608)
!615 = !DILocation(line: 363, column: 16, scope: !608)
!616 = !DILocation(line: 363, column: 10, scope: !608)
!617 = !DILocation(line: 363, column: 3, scope: !608)
!618 = distinct !DISubprogram(name: "atol", scope: !609, file: !609, line: 366, type: !619, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !621)
!619 = !DISubroutineType(types: !620)
!620 = !{!368, !283}
!621 = !{!622}
!622 = !DILocalVariable(name: "__nptr", arg: 1, scope: !618, file: !609, line: 366, type: !283)
!623 = !DILocation(line: 0, scope: !618)
!624 = !DILocation(line: 368, column: 10, scope: !618)
!625 = !DILocation(line: 368, column: 3, scope: !618)
!626 = distinct !DISubprogram(name: "atoll", scope: !609, file: !609, line: 373, type: !627, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !630)
!627 = !DISubroutineType(types: !628)
!628 = !{!629, !283}
!629 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!630 = !{!631}
!631 = !DILocalVariable(name: "__nptr", arg: 1, scope: !626, file: !609, line: 373, type: !283)
!632 = !DILocation(line: 0, scope: !626)
!633 = !DILocation(line: 375, column: 10, scope: !626)
!634 = !DILocation(line: 375, column: 3, scope: !626)
!635 = distinct !DISubprogram(name: "bsearch", scope: !636, file: !636, line: 20, type: !637, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !645)
!636 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!637 = !DISubroutineType(types: !638)
!638 = !{!282, !639, !639, !511, !511, !641}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !609, line: 808, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!278, !639, !639}
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!646 = !DILocalVariable(name: "__key", arg: 1, scope: !635, file: !636, line: 20, type: !639)
!647 = !DILocalVariable(name: "__base", arg: 2, scope: !635, file: !636, line: 20, type: !639)
!648 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !635, file: !636, line: 20, type: !511)
!649 = !DILocalVariable(name: "__size", arg: 4, scope: !635, file: !636, line: 20, type: !511)
!650 = !DILocalVariable(name: "__compar", arg: 5, scope: !635, file: !636, line: 21, type: !641)
!651 = !DILocalVariable(name: "__l", scope: !635, file: !636, line: 23, type: !511)
!652 = !DILocalVariable(name: "__u", scope: !635, file: !636, line: 23, type: !511)
!653 = !DILocalVariable(name: "__idx", scope: !635, file: !636, line: 23, type: !511)
!654 = !DILocalVariable(name: "__p", scope: !635, file: !636, line: 24, type: !639)
!655 = !DILocalVariable(name: "__comparison", scope: !635, file: !636, line: 25, type: !278)
!656 = !DILocation(line: 0, scope: !635)
!657 = !DILocation(line: 29, column: 3, scope: !635)
!658 = !DILocation(line: 27, column: 7, scope: !635)
!659 = !DILocation(line: 29, column: 14, scope: !635)
!660 = !DILocation(line: 31, column: 20, scope: !661)
!661 = distinct !DILexicalBlock(scope: !635, file: !636, line: 30, column: 5)
!662 = !DILocation(line: 31, column: 27, scope: !661)
!663 = !DILocation(line: 32, column: 56, scope: !661)
!664 = !DILocation(line: 32, column: 47, scope: !661)
!665 = !DILocation(line: 33, column: 22, scope: !661)
!666 = !DILocation(line: 34, column: 24, scope: !667)
!667 = distinct !DILexicalBlock(scope: !661, file: !636, line: 34, column: 11)
!668 = !DILocation(line: 34, column: 11, scope: !661)
!669 = !DILocation(line: 36, column: 29, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !636, line: 36, column: 16)
!671 = !DILocation(line: 36, column: 16, scope: !667)
!672 = !DILocation(line: 37, column: 14, scope: !670)
!673 = distinct !{!673, !657, !674}
!674 = !DILocation(line: 40, column: 5, scope: !635)
!675 = !DILocation(line: 43, column: 1, scope: !635)
!676 = distinct !DISubprogram(name: "atof", scope: !677, file: !677, line: 25, type: !678, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !681)
!677 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!678 = !DISubroutineType(types: !679)
!679 = !{!680, !283}
!680 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!681 = !{!682}
!682 = !DILocalVariable(name: "__nptr", arg: 1, scope: !676, file: !677, line: 25, type: !283)
!683 = !DILocation(line: 0, scope: !676)
!684 = !DILocation(line: 27, column: 10, scope: !676)
!685 = !DILocation(line: 27, column: 3, scope: !676)
!686 = distinct !DISubprogram(name: "strtoimax", scope: !687, file: !687, line: 324, type: !688, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !694)
!687 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!688 = !DISubroutineType(types: !689)
!689 = !{!690, !438, !693, !278}
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !691, line: 101, baseType: !692)
!691 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !490, line: 72, baseType: !368)
!693 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !279)
!694 = !{!695, !696, !697}
!695 = !DILocalVariable(name: "nptr", arg: 1, scope: !686, file: !687, line: 324, type: !438)
!696 = !DILocalVariable(name: "endptr", arg: 2, scope: !686, file: !687, line: 324, type: !693)
!697 = !DILocalVariable(name: "base", arg: 3, scope: !686, file: !687, line: 324, type: !278)
!698 = !DILocation(line: 0, scope: !686)
!699 = !DILocation(line: 327, column: 10, scope: !686)
!700 = !DILocation(line: 327, column: 3, scope: !686)
!701 = distinct !DISubprogram(name: "strtoumax", scope: !687, file: !687, line: 336, type: !702, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !706)
!702 = !DISubroutineType(types: !703)
!703 = !{!704, !438, !693, !278}
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !691, line: 102, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !490, line: 73, baseType: !417)
!706 = !{!707, !708, !709}
!707 = !DILocalVariable(name: "nptr", arg: 1, scope: !701, file: !687, line: 336, type: !438)
!708 = !DILocalVariable(name: "endptr", arg: 2, scope: !701, file: !687, line: 336, type: !693)
!709 = !DILocalVariable(name: "base", arg: 3, scope: !701, file: !687, line: 336, type: !278)
!710 = !DILocation(line: 0, scope: !701)
!711 = !DILocation(line: 339, column: 10, scope: !701)
!712 = !DILocation(line: 339, column: 3, scope: !701)
!713 = distinct !DISubprogram(name: "wcstoimax", scope: !687, file: !687, line: 348, type: !714, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !723)
!714 = !DISubroutineType(types: !715)
!715 = !{!690, !716, !720, !278}
!716 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !687, line: 34, baseType: !278)
!720 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!723 = !{!724, !725, !726}
!724 = !DILocalVariable(name: "nptr", arg: 1, scope: !713, file: !687, line: 348, type: !716)
!725 = !DILocalVariable(name: "endptr", arg: 2, scope: !713, file: !687, line: 348, type: !720)
!726 = !DILocalVariable(name: "base", arg: 3, scope: !713, file: !687, line: 348, type: !278)
!727 = !DILocation(line: 0, scope: !713)
!728 = !DILocation(line: 351, column: 10, scope: !713)
!729 = !DILocation(line: 351, column: 3, scope: !713)
!730 = distinct !DISubprogram(name: "wcstoumax", scope: !687, file: !687, line: 362, type: !731, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!704, !716, !720, !278}
!733 = !{!734, !735, !736}
!734 = !DILocalVariable(name: "nptr", arg: 1, scope: !730, file: !687, line: 362, type: !716)
!735 = !DILocalVariable(name: "endptr", arg: 2, scope: !730, file: !687, line: 362, type: !720)
!736 = !DILocalVariable(name: "base", arg: 3, scope: !730, file: !687, line: 362, type: !278)
!737 = !DILocation(line: 0, scope: !730)
!738 = !DILocation(line: 365, column: 10, scope: !730)
!739 = !DILocation(line: 365, column: 3, scope: !730)
!740 = distinct !DISubprogram(name: "stat", scope: !741, file: !741, line: 453, type: !742, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !779)
!741 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!742 = !DISubroutineType(types: !743)
!743 = !{!278, !283, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !746, line: 46, size: 1152, elements: !747)
!746 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!747 = !{!748, !750, !752, !754, !756, !758, !760, !761, !762, !763, !765, !767, !775, !776, !777}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !745, file: !746, line: 48, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !490, line: 145, baseType: !417)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !745, file: !746, line: 53, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !490, line: 148, baseType: !417)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !745, file: !746, line: 61, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !490, line: 151, baseType: !417)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !745, file: !746, line: 62, baseType: !755, size: 32, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !490, line: 150, baseType: !5)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !745, file: !746, line: 64, baseType: !757, size: 32, offset: 224)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !490, line: 146, baseType: !5)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !745, file: !746, line: 65, baseType: !759, size: 32, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !490, line: 147, baseType: !5)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !745, file: !746, line: 67, baseType: !278, size: 32, offset: 288)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !745, file: !746, line: 69, baseType: !749, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !745, file: !746, line: 74, baseType: !489, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !745, file: !746, line: 78, baseType: !764, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !490, line: 174, baseType: !368)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !745, file: !746, line: 80, baseType: !766, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !490, line: 179, baseType: !368)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !745, file: !746, line: 91, baseType: !768, size: 128, offset: 576)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !769, line: 10, size: 128, elements: !770)
!769 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!770 = !{!771, !773}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !768, file: !769, line: 12, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !490, line: 160, baseType: !368)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !768, file: !769, line: 16, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !490, line: 196, baseType: !368)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !745, file: !746, line: 92, baseType: !768, size: 128, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !745, file: !746, line: 93, baseType: !768, size: 128, offset: 832)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !745, file: !746, line: 106, baseType: !778, size: 192, offset: 960)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 192, elements: !379)
!779 = !{!780, !781}
!780 = !DILocalVariable(name: "__path", arg: 1, scope: !740, file: !741, line: 453, type: !283)
!781 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !740, file: !741, line: 453, type: !744)
!782 = !DILocation(line: 0, scope: !740)
!783 = !DILocation(line: 455, column: 10, scope: !740)
!784 = !DILocation(line: 455, column: 3, scope: !740)
!785 = distinct !DISubprogram(name: "lstat", scope: !741, file: !741, line: 460, type: !742, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !786)
!786 = !{!787, !788}
!787 = !DILocalVariable(name: "__path", arg: 1, scope: !785, file: !741, line: 460, type: !283)
!788 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !785, file: !741, line: 460, type: !744)
!789 = !DILocation(line: 0, scope: !785)
!790 = !DILocation(line: 462, column: 10, scope: !785)
!791 = !DILocation(line: 462, column: 3, scope: !785)
!792 = distinct !DISubprogram(name: "fstat", scope: !741, file: !741, line: 467, type: !793, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{!278, !278, !744}
!795 = !{!796, !797}
!796 = !DILocalVariable(name: "__fd", arg: 1, scope: !792, file: !741, line: 467, type: !278)
!797 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !792, file: !741, line: 467, type: !744)
!798 = !DILocation(line: 0, scope: !792)
!799 = !DILocation(line: 469, column: 10, scope: !792)
!800 = !DILocation(line: 469, column: 3, scope: !792)
!801 = distinct !DISubprogram(name: "fstatat", scope: !741, file: !741, line: 474, type: !802, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{!278, !278, !283, !744, !278}
!804 = !{!805, !806, !807, !808}
!805 = !DILocalVariable(name: "__fd", arg: 1, scope: !801, file: !741, line: 474, type: !278)
!806 = !DILocalVariable(name: "__filename", arg: 2, scope: !801, file: !741, line: 474, type: !283)
!807 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !801, file: !741, line: 474, type: !744)
!808 = !DILocalVariable(name: "__flag", arg: 4, scope: !801, file: !741, line: 474, type: !278)
!809 = !DILocation(line: 0, scope: !801)
!810 = !DILocation(line: 477, column: 10, scope: !801)
!811 = !DILocation(line: 477, column: 3, scope: !801)
!812 = distinct !DISubprogram(name: "mknod", scope: !741, file: !741, line: 483, type: !813, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!278, !283, !755, !749}
!815 = !{!816, !817, !818}
!816 = !DILocalVariable(name: "__path", arg: 1, scope: !812, file: !741, line: 483, type: !283)
!817 = !DILocalVariable(name: "__mode", arg: 2, scope: !812, file: !741, line: 483, type: !755)
!818 = !DILocalVariable(name: "__dev", arg: 3, scope: !812, file: !741, line: 483, type: !749)
!819 = !DILocation(line: 0, scope: !812)
!820 = !DILocation(line: 485, column: 10, scope: !812)
!821 = !DILocation(line: 485, column: 3, scope: !812)
!822 = distinct !DISubprogram(name: "mknodat", scope: !741, file: !741, line: 491, type: !823, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{!278, !278, !283, !755, !749}
!825 = !{!826, !827, !828, !829}
!826 = !DILocalVariable(name: "__fd", arg: 1, scope: !822, file: !741, line: 491, type: !278)
!827 = !DILocalVariable(name: "__path", arg: 2, scope: !822, file: !741, line: 491, type: !283)
!828 = !DILocalVariable(name: "__mode", arg: 3, scope: !822, file: !741, line: 491, type: !755)
!829 = !DILocalVariable(name: "__dev", arg: 4, scope: !822, file: !741, line: 491, type: !749)
!830 = !DILocation(line: 0, scope: !822)
!831 = !DILocation(line: 494, column: 10, scope: !822)
!832 = !DILocation(line: 494, column: 3, scope: !822)
!833 = distinct !DISubprogram(name: "stat64", scope: !741, file: !741, line: 502, type: !834, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !856)
!834 = !DISubroutineType(types: !835)
!835 = !{!278, !283, !836}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !746, line: 119, size: 1152, elements: !838)
!838 = !{!839, !840, !842, !843, !844, !845, !846, !847, !848, !849, !850, !852, !853, !854, !855}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !837, file: !746, line: 121, baseType: !749, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !837, file: !746, line: 123, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !490, line: 149, baseType: !417)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !837, file: !746, line: 124, baseType: !753, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !837, file: !746, line: 125, baseType: !755, size: 32, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !837, file: !746, line: 132, baseType: !757, size: 32, offset: 224)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !837, file: !746, line: 133, baseType: !759, size: 32, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !837, file: !746, line: 135, baseType: !278, size: 32, offset: 288)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !837, file: !746, line: 136, baseType: !749, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !837, file: !746, line: 137, baseType: !489, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !837, file: !746, line: 143, baseType: !764, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !837, file: !746, line: 144, baseType: !851, size: 64, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !490, line: 180, baseType: !368)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !837, file: !746, line: 152, baseType: !768, size: 128, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !837, file: !746, line: 153, baseType: !768, size: 128, offset: 704)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !837, file: !746, line: 154, baseType: !768, size: 128, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !837, file: !746, line: 164, baseType: !778, size: 192, offset: 960)
!856 = !{!857, !858}
!857 = !DILocalVariable(name: "__path", arg: 1, scope: !833, file: !741, line: 502, type: !283)
!858 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !833, file: !741, line: 502, type: !836)
!859 = !DILocation(line: 0, scope: !833)
!860 = !DILocation(line: 504, column: 10, scope: !833)
!861 = !DILocation(line: 504, column: 3, scope: !833)
!862 = distinct !DISubprogram(name: "lstat64", scope: !741, file: !741, line: 509, type: !834, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !863)
!863 = !{!864, !865}
!864 = !DILocalVariable(name: "__path", arg: 1, scope: !862, file: !741, line: 509, type: !283)
!865 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !862, file: !741, line: 509, type: !836)
!866 = !DILocation(line: 0, scope: !862)
!867 = !DILocation(line: 511, column: 10, scope: !862)
!868 = !DILocation(line: 511, column: 3, scope: !862)
!869 = distinct !DISubprogram(name: "fstat64", scope: !741, file: !741, line: 516, type: !870, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !872)
!870 = !DISubroutineType(types: !871)
!871 = !{!278, !278, !836}
!872 = !{!873, !874}
!873 = !DILocalVariable(name: "__fd", arg: 1, scope: !869, file: !741, line: 516, type: !278)
!874 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !869, file: !741, line: 516, type: !836)
!875 = !DILocation(line: 0, scope: !869)
!876 = !DILocation(line: 518, column: 10, scope: !869)
!877 = !DILocation(line: 518, column: 3, scope: !869)
!878 = distinct !DISubprogram(name: "fstatat64", scope: !741, file: !741, line: 523, type: !879, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!278, !278, !283, !836, !278}
!881 = !{!882, !883, !884, !885}
!882 = !DILocalVariable(name: "__fd", arg: 1, scope: !878, file: !741, line: 523, type: !278)
!883 = !DILocalVariable(name: "__filename", arg: 2, scope: !878, file: !741, line: 523, type: !283)
!884 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !878, file: !741, line: 523, type: !836)
!885 = !DILocalVariable(name: "__flag", arg: 4, scope: !878, file: !741, line: 523, type: !278)
!886 = !DILocation(line: 0, scope: !878)
!887 = !DILocation(line: 526, column: 10, scope: !878)
!888 = !DILocation(line: 526, column: 3, scope: !878)
!889 = distinct !DISubprogram(name: "gen_rtx_fmt_0_stat", scope: !1, file: !1, line: 12, type: !890, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{!285, !132, !3}
!892 = !{!893, !894, !895}
!893 = !DILocalVariable(name: "code", arg: 1, scope: !889, file: !1, line: 12, type: !132)
!894 = !DILocalVariable(name: "mode", arg: 2, scope: !889, file: !1, line: 12, type: !3)
!895 = !DILocalVariable(name: "rt", scope: !889, file: !1, line: 14, type: !285)
!896 = !DILocation(line: 0, scope: !889)
!897 = !DILocation(line: 15, column: 8, scope: !889)
!898 = !DILocation(line: 17, column: 3, scope: !889)
!899 = !DILocation(line: 18, column: 3, scope: !889)
!900 = !DILocation(line: 18, column: 17, scope: !889)
!901 = !DILocation(line: 20, column: 3, scope: !889)
!902 = distinct !DISubprogram(name: "gen_rtx_fmt_ee_stat", scope: !1, file: !1, line: 24, type: !903, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!285, !132, !3, !285, !285}
!905 = !{!906, !907, !908, !909, !910}
!906 = !DILocalVariable(name: "code", arg: 1, scope: !902, file: !1, line: 24, type: !132)
!907 = !DILocalVariable(name: "mode", arg: 2, scope: !902, file: !1, line: 24, type: !3)
!908 = !DILocalVariable(name: "arg0", arg: 3, scope: !902, file: !1, line: 25, type: !285)
!909 = !DILocalVariable(name: "arg1", arg: 4, scope: !902, file: !1, line: 26, type: !285)
!910 = !DILocalVariable(name: "rt", scope: !902, file: !1, line: 28, type: !285)
!911 = !DILocation(line: 0, scope: !902)
!912 = !DILocation(line: 29, column: 8, scope: !902)
!913 = !DILocation(line: 31, column: 3, scope: !902)
!914 = !DILocation(line: 32, column: 3, scope: !902)
!915 = !DILocation(line: 32, column: 16, scope: !902)
!916 = !DILocation(line: 33, column: 3, scope: !902)
!917 = !DILocation(line: 33, column: 16, scope: !902)
!918 = !DILocation(line: 35, column: 3, scope: !902)
!919 = distinct !DISubprogram(name: "gen_rtx_fmt_ue_stat", scope: !1, file: !1, line: 39, type: !903, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !920)
!920 = !{!921, !922, !923, !924, !925}
!921 = !DILocalVariable(name: "code", arg: 1, scope: !919, file: !1, line: 39, type: !132)
!922 = !DILocalVariable(name: "mode", arg: 2, scope: !919, file: !1, line: 39, type: !3)
!923 = !DILocalVariable(name: "arg0", arg: 3, scope: !919, file: !1, line: 40, type: !285)
!924 = !DILocalVariable(name: "arg1", arg: 4, scope: !919, file: !1, line: 41, type: !285)
!925 = !DILocalVariable(name: "rt", scope: !919, file: !1, line: 43, type: !285)
!926 = !DILocation(line: 0, scope: !919)
!927 = !DILocation(line: 44, column: 8, scope: !919)
!928 = !DILocation(line: 46, column: 3, scope: !919)
!929 = !DILocation(line: 47, column: 3, scope: !919)
!930 = !DILocation(line: 47, column: 16, scope: !919)
!931 = !DILocation(line: 48, column: 3, scope: !919)
!932 = !DILocation(line: 48, column: 16, scope: !919)
!933 = !DILocation(line: 50, column: 3, scope: !919)
!934 = distinct !DISubprogram(name: "gen_rtx_fmt_E_stat", scope: !1, file: !1, line: 54, type: !935, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!285, !132, !3, !313}
!937 = !{!938, !939, !940, !941}
!938 = !DILocalVariable(name: "code", arg: 1, scope: !934, file: !1, line: 54, type: !132)
!939 = !DILocalVariable(name: "mode", arg: 2, scope: !934, file: !1, line: 54, type: !3)
!940 = !DILocalVariable(name: "arg0", arg: 3, scope: !934, file: !1, line: 55, type: !313)
!941 = !DILocalVariable(name: "rt", scope: !934, file: !1, line: 57, type: !285)
!942 = !DILocation(line: 0, scope: !934)
!943 = !DILocation(line: 58, column: 8, scope: !934)
!944 = !DILocation(line: 60, column: 3, scope: !934)
!945 = !DILocation(line: 61, column: 3, scope: !934)
!946 = !DILocation(line: 61, column: 16, scope: !934)
!947 = !DILocation(line: 63, column: 3, scope: !934)
!948 = distinct !DISubprogram(name: "gen_rtx_fmt_e_stat", scope: !1, file: !1, line: 67, type: !949, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!285, !132, !3, !285}
!951 = !{!952, !953, !954, !955}
!952 = !DILocalVariable(name: "code", arg: 1, scope: !948, file: !1, line: 67, type: !132)
!953 = !DILocalVariable(name: "mode", arg: 2, scope: !948, file: !1, line: 67, type: !3)
!954 = !DILocalVariable(name: "arg0", arg: 3, scope: !948, file: !1, line: 68, type: !285)
!955 = !DILocalVariable(name: "rt", scope: !948, file: !1, line: 70, type: !285)
!956 = !DILocation(line: 0, scope: !948)
!957 = !DILocation(line: 71, column: 8, scope: !948)
!958 = !DILocation(line: 73, column: 3, scope: !948)
!959 = !DILocation(line: 74, column: 3, scope: !948)
!960 = !DILocation(line: 74, column: 16, scope: !948)
!961 = !DILocation(line: 76, column: 3, scope: !948)
!962 = distinct !DISubprogram(name: "gen_rtx_fmt_iuuBieie_stat", scope: !1, file: !1, line: 80, type: !963, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !965)
!963 = !DISubroutineType(types: !964)
!964 = !{!285, !132, !3, !278, !285, !285, !346, !278, !285, !278, !285}
!965 = !{!966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976}
!966 = !DILocalVariable(name: "code", arg: 1, scope: !962, file: !1, line: 80, type: !132)
!967 = !DILocalVariable(name: "mode", arg: 2, scope: !962, file: !1, line: 80, type: !3)
!968 = !DILocalVariable(name: "arg0", arg: 3, scope: !962, file: !1, line: 81, type: !278)
!969 = !DILocalVariable(name: "arg1", arg: 4, scope: !962, file: !1, line: 82, type: !285)
!970 = !DILocalVariable(name: "arg2", arg: 5, scope: !962, file: !1, line: 83, type: !285)
!971 = !DILocalVariable(name: "arg3", arg: 6, scope: !962, file: !1, line: 84, type: !346)
!972 = !DILocalVariable(name: "arg4", arg: 7, scope: !962, file: !1, line: 85, type: !278)
!973 = !DILocalVariable(name: "arg5", arg: 8, scope: !962, file: !1, line: 86, type: !285)
!974 = !DILocalVariable(name: "arg6", arg: 9, scope: !962, file: !1, line: 87, type: !278)
!975 = !DILocalVariable(name: "arg7", arg: 10, scope: !962, file: !1, line: 88, type: !285)
!976 = !DILocalVariable(name: "rt", scope: !962, file: !1, line: 90, type: !285)
!977 = !DILocation(line: 0, scope: !962)
!978 = !DILocation(line: 91, column: 8, scope: !962)
!979 = !DILocation(line: 93, column: 3, scope: !962)
!980 = !DILocation(line: 94, column: 3, scope: !962)
!981 = !DILocation(line: 94, column: 16, scope: !962)
!982 = !DILocation(line: 95, column: 3, scope: !962)
!983 = !DILocation(line: 95, column: 16, scope: !962)
!984 = !DILocation(line: 96, column: 3, scope: !962)
!985 = !DILocation(line: 96, column: 16, scope: !962)
!986 = !DILocation(line: 97, column: 3, scope: !962)
!987 = !DILocation(line: 97, column: 18, scope: !962)
!988 = !DILocation(line: 98, column: 3, scope: !962)
!989 = !DILocation(line: 98, column: 16, scope: !962)
!990 = !DILocation(line: 99, column: 3, scope: !962)
!991 = !DILocation(line: 99, column: 16, scope: !962)
!992 = !DILocation(line: 100, column: 3, scope: !962)
!993 = !DILocation(line: 100, column: 16, scope: !962)
!994 = !DILocation(line: 101, column: 3, scope: !962)
!995 = !DILocation(line: 101, column: 16, scope: !962)
!996 = !DILocation(line: 103, column: 3, scope: !962)
!997 = distinct !DISubprogram(name: "gen_rtx_fmt_iuuBieie0_stat", scope: !1, file: !1, line: 107, type: !963, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009}
!999 = !DILocalVariable(name: "code", arg: 1, scope: !997, file: !1, line: 107, type: !132)
!1000 = !DILocalVariable(name: "mode", arg: 2, scope: !997, file: !1, line: 107, type: !3)
!1001 = !DILocalVariable(name: "arg0", arg: 3, scope: !997, file: !1, line: 108, type: !278)
!1002 = !DILocalVariable(name: "arg1", arg: 4, scope: !997, file: !1, line: 109, type: !285)
!1003 = !DILocalVariable(name: "arg2", arg: 5, scope: !997, file: !1, line: 110, type: !285)
!1004 = !DILocalVariable(name: "arg3", arg: 6, scope: !997, file: !1, line: 111, type: !346)
!1005 = !DILocalVariable(name: "arg4", arg: 7, scope: !997, file: !1, line: 112, type: !278)
!1006 = !DILocalVariable(name: "arg5", arg: 8, scope: !997, file: !1, line: 113, type: !285)
!1007 = !DILocalVariable(name: "arg6", arg: 9, scope: !997, file: !1, line: 114, type: !278)
!1008 = !DILocalVariable(name: "arg7", arg: 10, scope: !997, file: !1, line: 115, type: !285)
!1009 = !DILocalVariable(name: "rt", scope: !997, file: !1, line: 117, type: !285)
!1010 = !DILocation(line: 0, scope: !997)
!1011 = !DILocation(line: 118, column: 8, scope: !997)
!1012 = !DILocation(line: 120, column: 3, scope: !997)
!1013 = !DILocation(line: 121, column: 3, scope: !997)
!1014 = !DILocation(line: 121, column: 16, scope: !997)
!1015 = !DILocation(line: 122, column: 3, scope: !997)
!1016 = !DILocation(line: 122, column: 16, scope: !997)
!1017 = !DILocation(line: 123, column: 3, scope: !997)
!1018 = !DILocation(line: 123, column: 16, scope: !997)
!1019 = !DILocation(line: 124, column: 3, scope: !997)
!1020 = !DILocation(line: 124, column: 18, scope: !997)
!1021 = !DILocation(line: 125, column: 3, scope: !997)
!1022 = !DILocation(line: 125, column: 16, scope: !997)
!1023 = !DILocation(line: 126, column: 3, scope: !997)
!1024 = !DILocation(line: 126, column: 16, scope: !997)
!1025 = !DILocation(line: 127, column: 3, scope: !997)
!1026 = !DILocation(line: 127, column: 16, scope: !997)
!1027 = !DILocation(line: 128, column: 3, scope: !997)
!1028 = !DILocation(line: 128, column: 16, scope: !997)
!1029 = !DILocation(line: 129, column: 3, scope: !997)
!1030 = !DILocation(line: 129, column: 17, scope: !997)
!1031 = !DILocation(line: 131, column: 3, scope: !997)
!1032 = distinct !DISubprogram(name: "gen_rtx_fmt_iuuBieiee_stat", scope: !1, file: !1, line: 135, type: !1033, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1035)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!285, !132, !3, !278, !285, !285, !346, !278, !285, !278, !285, !285}
!1035 = !{!1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047}
!1036 = !DILocalVariable(name: "code", arg: 1, scope: !1032, file: !1, line: 135, type: !132)
!1037 = !DILocalVariable(name: "mode", arg: 2, scope: !1032, file: !1, line: 135, type: !3)
!1038 = !DILocalVariable(name: "arg0", arg: 3, scope: !1032, file: !1, line: 136, type: !278)
!1039 = !DILocalVariable(name: "arg1", arg: 4, scope: !1032, file: !1, line: 137, type: !285)
!1040 = !DILocalVariable(name: "arg2", arg: 5, scope: !1032, file: !1, line: 138, type: !285)
!1041 = !DILocalVariable(name: "arg3", arg: 6, scope: !1032, file: !1, line: 139, type: !346)
!1042 = !DILocalVariable(name: "arg4", arg: 7, scope: !1032, file: !1, line: 140, type: !278)
!1043 = !DILocalVariable(name: "arg5", arg: 8, scope: !1032, file: !1, line: 141, type: !285)
!1044 = !DILocalVariable(name: "arg6", arg: 9, scope: !1032, file: !1, line: 142, type: !278)
!1045 = !DILocalVariable(name: "arg7", arg: 10, scope: !1032, file: !1, line: 143, type: !285)
!1046 = !DILocalVariable(name: "arg8", arg: 11, scope: !1032, file: !1, line: 144, type: !285)
!1047 = !DILocalVariable(name: "rt", scope: !1032, file: !1, line: 146, type: !285)
!1048 = !DILocation(line: 0, scope: !1032)
!1049 = !DILocation(line: 147, column: 8, scope: !1032)
!1050 = !DILocation(line: 149, column: 3, scope: !1032)
!1051 = !DILocation(line: 150, column: 3, scope: !1032)
!1052 = !DILocation(line: 150, column: 16, scope: !1032)
!1053 = !DILocation(line: 151, column: 3, scope: !1032)
!1054 = !DILocation(line: 151, column: 16, scope: !1032)
!1055 = !DILocation(line: 152, column: 3, scope: !1032)
!1056 = !DILocation(line: 152, column: 16, scope: !1032)
!1057 = !DILocation(line: 153, column: 3, scope: !1032)
!1058 = !DILocation(line: 153, column: 18, scope: !1032)
!1059 = !DILocation(line: 154, column: 3, scope: !1032)
!1060 = !DILocation(line: 154, column: 16, scope: !1032)
!1061 = !DILocation(line: 155, column: 3, scope: !1032)
!1062 = !DILocation(line: 155, column: 16, scope: !1032)
!1063 = !DILocation(line: 156, column: 3, scope: !1032)
!1064 = !DILocation(line: 156, column: 16, scope: !1032)
!1065 = !DILocation(line: 157, column: 3, scope: !1032)
!1066 = !DILocation(line: 157, column: 16, scope: !1032)
!1067 = !DILocation(line: 158, column: 3, scope: !1032)
!1068 = !DILocation(line: 158, column: 16, scope: !1032)
!1069 = !DILocation(line: 160, column: 3, scope: !1032)
!1070 = distinct !DISubprogram(name: "gen_rtx_fmt_iuu00000_stat", scope: !1, file: !1, line: 164, type: !1071, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!285, !132, !3, !278, !285, !285}
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079}
!1074 = !DILocalVariable(name: "code", arg: 1, scope: !1070, file: !1, line: 164, type: !132)
!1075 = !DILocalVariable(name: "mode", arg: 2, scope: !1070, file: !1, line: 164, type: !3)
!1076 = !DILocalVariable(name: "arg0", arg: 3, scope: !1070, file: !1, line: 165, type: !278)
!1077 = !DILocalVariable(name: "arg1", arg: 4, scope: !1070, file: !1, line: 166, type: !285)
!1078 = !DILocalVariable(name: "arg2", arg: 5, scope: !1070, file: !1, line: 167, type: !285)
!1079 = !DILocalVariable(name: "rt", scope: !1070, file: !1, line: 169, type: !285)
!1080 = !DILocation(line: 0, scope: !1070)
!1081 = !DILocation(line: 170, column: 8, scope: !1070)
!1082 = !DILocation(line: 172, column: 3, scope: !1070)
!1083 = !DILocation(line: 173, column: 3, scope: !1070)
!1084 = !DILocation(line: 173, column: 16, scope: !1070)
!1085 = !DILocation(line: 174, column: 3, scope: !1070)
!1086 = !DILocation(line: 174, column: 16, scope: !1070)
!1087 = !DILocation(line: 175, column: 3, scope: !1070)
!1088 = !DILocation(line: 175, column: 16, scope: !1070)
!1089 = !DILocation(line: 176, column: 3, scope: !1070)
!1090 = !DILocation(line: 176, column: 17, scope: !1070)
!1091 = !DILocation(line: 177, column: 3, scope: !1070)
!1092 = !DILocation(line: 177, column: 17, scope: !1070)
!1093 = !DILocation(line: 178, column: 3, scope: !1070)
!1094 = !DILocation(line: 178, column: 17, scope: !1070)
!1095 = !DILocation(line: 179, column: 3, scope: !1070)
!1096 = !DILocation(line: 179, column: 17, scope: !1070)
!1097 = !DILocation(line: 180, column: 3, scope: !1070)
!1098 = !DILocation(line: 180, column: 17, scope: !1070)
!1099 = !DILocation(line: 182, column: 3, scope: !1070)
!1100 = distinct !DISubprogram(name: "gen_rtx_fmt_iuuB00is_stat", scope: !1, file: !1, line: 186, type: !1101, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!285, !132, !3, !278, !285, !285, !346, !278, !283}
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112}
!1104 = !DILocalVariable(name: "code", arg: 1, scope: !1100, file: !1, line: 186, type: !132)
!1105 = !DILocalVariable(name: "mode", arg: 2, scope: !1100, file: !1, line: 186, type: !3)
!1106 = !DILocalVariable(name: "arg0", arg: 3, scope: !1100, file: !1, line: 187, type: !278)
!1107 = !DILocalVariable(name: "arg1", arg: 4, scope: !1100, file: !1, line: 188, type: !285)
!1108 = !DILocalVariable(name: "arg2", arg: 5, scope: !1100, file: !1, line: 189, type: !285)
!1109 = !DILocalVariable(name: "arg3", arg: 6, scope: !1100, file: !1, line: 190, type: !346)
!1110 = !DILocalVariable(name: "arg4", arg: 7, scope: !1100, file: !1, line: 191, type: !278)
!1111 = !DILocalVariable(name: "arg5", arg: 8, scope: !1100, file: !1, line: 192, type: !283)
!1112 = !DILocalVariable(name: "rt", scope: !1100, file: !1, line: 194, type: !285)
!1113 = !DILocation(line: 0, scope: !1100)
!1114 = !DILocation(line: 195, column: 8, scope: !1100)
!1115 = !DILocation(line: 197, column: 3, scope: !1100)
!1116 = !DILocation(line: 198, column: 3, scope: !1100)
!1117 = !DILocation(line: 198, column: 16, scope: !1100)
!1118 = !DILocation(line: 199, column: 3, scope: !1100)
!1119 = !DILocation(line: 199, column: 16, scope: !1100)
!1120 = !DILocation(line: 200, column: 3, scope: !1100)
!1121 = !DILocation(line: 200, column: 16, scope: !1100)
!1122 = !DILocation(line: 201, column: 3, scope: !1100)
!1123 = !DILocation(line: 201, column: 18, scope: !1100)
!1124 = !DILocation(line: 202, column: 3, scope: !1100)
!1125 = !DILocation(line: 202, column: 17, scope: !1100)
!1126 = !DILocation(line: 203, column: 3, scope: !1100)
!1127 = !DILocation(line: 203, column: 17, scope: !1100)
!1128 = !DILocation(line: 204, column: 3, scope: !1100)
!1129 = !DILocation(line: 204, column: 16, scope: !1100)
!1130 = !DILocation(line: 205, column: 3, scope: !1100)
!1131 = !DILocation(line: 205, column: 16, scope: !1100)
!1132 = !DILocation(line: 207, column: 3, scope: !1100)
!1133 = distinct !DISubprogram(name: "gen_rtx_fmt_si_stat", scope: !1, file: !1, line: 211, type: !1134, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!285, !132, !3, !283, !278}
!1136 = !{!1137, !1138, !1139, !1140, !1141}
!1137 = !DILocalVariable(name: "code", arg: 1, scope: !1133, file: !1, line: 211, type: !132)
!1138 = !DILocalVariable(name: "mode", arg: 2, scope: !1133, file: !1, line: 211, type: !3)
!1139 = !DILocalVariable(name: "arg0", arg: 3, scope: !1133, file: !1, line: 212, type: !283)
!1140 = !DILocalVariable(name: "arg1", arg: 4, scope: !1133, file: !1, line: 213, type: !278)
!1141 = !DILocalVariable(name: "rt", scope: !1133, file: !1, line: 215, type: !285)
!1142 = !DILocation(line: 0, scope: !1133)
!1143 = !DILocation(line: 216, column: 8, scope: !1133)
!1144 = !DILocation(line: 218, column: 3, scope: !1133)
!1145 = !DILocation(line: 219, column: 3, scope: !1133)
!1146 = !DILocation(line: 219, column: 16, scope: !1133)
!1147 = !DILocation(line: 220, column: 3, scope: !1133)
!1148 = !DILocation(line: 220, column: 16, scope: !1133)
!1149 = !DILocation(line: 222, column: 3, scope: !1133)
!1150 = distinct !DISubprogram(name: "gen_rtx_fmt_ssiEEEi_stat", scope: !1, file: !1, line: 226, type: !1151, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!285, !132, !3, !283, !283, !278, !313, !313, !313, !278}
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163}
!1154 = !DILocalVariable(name: "code", arg: 1, scope: !1150, file: !1, line: 226, type: !132)
!1155 = !DILocalVariable(name: "mode", arg: 2, scope: !1150, file: !1, line: 226, type: !3)
!1156 = !DILocalVariable(name: "arg0", arg: 3, scope: !1150, file: !1, line: 227, type: !283)
!1157 = !DILocalVariable(name: "arg1", arg: 4, scope: !1150, file: !1, line: 228, type: !283)
!1158 = !DILocalVariable(name: "arg2", arg: 5, scope: !1150, file: !1, line: 229, type: !278)
!1159 = !DILocalVariable(name: "arg3", arg: 6, scope: !1150, file: !1, line: 230, type: !313)
!1160 = !DILocalVariable(name: "arg4", arg: 7, scope: !1150, file: !1, line: 231, type: !313)
!1161 = !DILocalVariable(name: "arg5", arg: 8, scope: !1150, file: !1, line: 232, type: !313)
!1162 = !DILocalVariable(name: "arg6", arg: 9, scope: !1150, file: !1, line: 233, type: !278)
!1163 = !DILocalVariable(name: "rt", scope: !1150, file: !1, line: 235, type: !285)
!1164 = !DILocation(line: 0, scope: !1150)
!1165 = !DILocation(line: 236, column: 8, scope: !1150)
!1166 = !DILocation(line: 238, column: 3, scope: !1150)
!1167 = !DILocation(line: 239, column: 3, scope: !1150)
!1168 = !DILocation(line: 239, column: 16, scope: !1150)
!1169 = !DILocation(line: 240, column: 3, scope: !1150)
!1170 = !DILocation(line: 240, column: 16, scope: !1150)
!1171 = !DILocation(line: 241, column: 3, scope: !1150)
!1172 = !DILocation(line: 241, column: 16, scope: !1150)
!1173 = !DILocation(line: 242, column: 3, scope: !1150)
!1174 = !DILocation(line: 242, column: 16, scope: !1150)
!1175 = !DILocation(line: 243, column: 3, scope: !1150)
!1176 = !DILocation(line: 243, column: 16, scope: !1150)
!1177 = !DILocation(line: 244, column: 3, scope: !1150)
!1178 = !DILocation(line: 244, column: 16, scope: !1150)
!1179 = !DILocation(line: 245, column: 3, scope: !1150)
!1180 = !DILocation(line: 245, column: 16, scope: !1150)
!1181 = !DILocation(line: 247, column: 3, scope: !1150)
!1182 = distinct !DISubprogram(name: "gen_rtx_fmt_Ei_stat", scope: !1, file: !1, line: 251, type: !1183, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!285, !132, !3, !313, !278}
!1185 = !{!1186, !1187, !1188, !1189, !1190}
!1186 = !DILocalVariable(name: "code", arg: 1, scope: !1182, file: !1, line: 251, type: !132)
!1187 = !DILocalVariable(name: "mode", arg: 2, scope: !1182, file: !1, line: 251, type: !3)
!1188 = !DILocalVariable(name: "arg0", arg: 3, scope: !1182, file: !1, line: 252, type: !313)
!1189 = !DILocalVariable(name: "arg1", arg: 4, scope: !1182, file: !1, line: 253, type: !278)
!1190 = !DILocalVariable(name: "rt", scope: !1182, file: !1, line: 255, type: !285)
!1191 = !DILocation(line: 0, scope: !1182)
!1192 = !DILocation(line: 256, column: 8, scope: !1182)
!1193 = !DILocation(line: 258, column: 3, scope: !1182)
!1194 = !DILocation(line: 259, column: 3, scope: !1182)
!1195 = !DILocation(line: 259, column: 16, scope: !1182)
!1196 = !DILocation(line: 260, column: 3, scope: !1182)
!1197 = !DILocation(line: 260, column: 16, scope: !1182)
!1198 = !DILocation(line: 262, column: 3, scope: !1182)
!1199 = distinct !DISubprogram(name: "gen_rtx_fmt_eEee0_stat", scope: !1, file: !1, line: 266, type: !1200, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1202)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!285, !132, !3, !285, !313, !285, !285}
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1203 = !DILocalVariable(name: "code", arg: 1, scope: !1199, file: !1, line: 266, type: !132)
!1204 = !DILocalVariable(name: "mode", arg: 2, scope: !1199, file: !1, line: 266, type: !3)
!1205 = !DILocalVariable(name: "arg0", arg: 3, scope: !1199, file: !1, line: 267, type: !285)
!1206 = !DILocalVariable(name: "arg1", arg: 4, scope: !1199, file: !1, line: 268, type: !313)
!1207 = !DILocalVariable(name: "arg2", arg: 5, scope: !1199, file: !1, line: 269, type: !285)
!1208 = !DILocalVariable(name: "arg3", arg: 6, scope: !1199, file: !1, line: 270, type: !285)
!1209 = !DILocalVariable(name: "rt", scope: !1199, file: !1, line: 272, type: !285)
!1210 = !DILocation(line: 0, scope: !1199)
!1211 = !DILocation(line: 273, column: 8, scope: !1199)
!1212 = !DILocation(line: 275, column: 3, scope: !1199)
!1213 = !DILocation(line: 276, column: 3, scope: !1199)
!1214 = !DILocation(line: 276, column: 16, scope: !1199)
!1215 = !DILocation(line: 277, column: 3, scope: !1199)
!1216 = !DILocation(line: 277, column: 16, scope: !1199)
!1217 = !DILocation(line: 278, column: 3, scope: !1199)
!1218 = !DILocation(line: 278, column: 16, scope: !1199)
!1219 = !DILocation(line: 279, column: 3, scope: !1199)
!1220 = !DILocation(line: 279, column: 16, scope: !1199)
!1221 = !DILocation(line: 280, column: 3, scope: !1199)
!1222 = !DILocation(line: 280, column: 17, scope: !1199)
!1223 = !DILocation(line: 282, column: 3, scope: !1199)
!1224 = distinct !DISubprogram(name: "gen_rtx_fmt_eee_stat", scope: !1, file: !1, line: 286, type: !1225, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!285, !132, !3, !285, !285, !285}
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233}
!1228 = !DILocalVariable(name: "code", arg: 1, scope: !1224, file: !1, line: 286, type: !132)
!1229 = !DILocalVariable(name: "mode", arg: 2, scope: !1224, file: !1, line: 286, type: !3)
!1230 = !DILocalVariable(name: "arg0", arg: 3, scope: !1224, file: !1, line: 287, type: !285)
!1231 = !DILocalVariable(name: "arg1", arg: 4, scope: !1224, file: !1, line: 288, type: !285)
!1232 = !DILocalVariable(name: "arg2", arg: 5, scope: !1224, file: !1, line: 289, type: !285)
!1233 = !DILocalVariable(name: "rt", scope: !1224, file: !1, line: 291, type: !285)
!1234 = !DILocation(line: 0, scope: !1224)
!1235 = !DILocation(line: 292, column: 8, scope: !1224)
!1236 = !DILocation(line: 294, column: 3, scope: !1224)
!1237 = !DILocation(line: 295, column: 3, scope: !1224)
!1238 = !DILocation(line: 295, column: 16, scope: !1224)
!1239 = !DILocation(line: 296, column: 3, scope: !1224)
!1240 = !DILocation(line: 296, column: 16, scope: !1224)
!1241 = !DILocation(line: 297, column: 3, scope: !1224)
!1242 = !DILocation(line: 297, column: 16, scope: !1224)
!1243 = !DILocation(line: 299, column: 3, scope: !1224)
!1244 = distinct !DISubprogram(name: "gen_rtx_fmt__stat", scope: !1, file: !1, line: 303, type: !890, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1245)
!1245 = !{!1246, !1247, !1248}
!1246 = !DILocalVariable(name: "code", arg: 1, scope: !1244, file: !1, line: 303, type: !132)
!1247 = !DILocalVariable(name: "mode", arg: 2, scope: !1244, file: !1, line: 303, type: !3)
!1248 = !DILocalVariable(name: "rt", scope: !1244, file: !1, line: 305, type: !285)
!1249 = !DILocation(line: 0, scope: !1244)
!1250 = !DILocation(line: 306, column: 8, scope: !1244)
!1251 = !DILocation(line: 308, column: 3, scope: !1244)
!1252 = !DILocation(line: 310, column: 3, scope: !1244)
!1253 = distinct !DISubprogram(name: "gen_rtx_fmt_w_stat", scope: !1, file: !1, line: 314, type: !1254, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!285, !132, !3, !368}
!1256 = !{!1257, !1258, !1259, !1260}
!1257 = !DILocalVariable(name: "code", arg: 1, scope: !1253, file: !1, line: 314, type: !132)
!1258 = !DILocalVariable(name: "mode", arg: 2, scope: !1253, file: !1, line: 314, type: !3)
!1259 = !DILocalVariable(name: "arg0", arg: 3, scope: !1253, file: !1, line: 315, type: !368)
!1260 = !DILocalVariable(name: "rt", scope: !1253, file: !1, line: 317, type: !285)
!1261 = !DILocation(line: 0, scope: !1253)
!1262 = !DILocation(line: 318, column: 8, scope: !1253)
!1263 = !DILocation(line: 320, column: 3, scope: !1253)
!1264 = !DILocation(line: 321, column: 3, scope: !1253)
!1265 = !DILocation(line: 321, column: 17, scope: !1253)
!1266 = !DILocation(line: 323, column: 3, scope: !1253)
!1267 = distinct !DISubprogram(name: "gen_rtx_fmt_www_stat", scope: !1, file: !1, line: 327, type: !1268, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!285, !132, !3, !368, !368, !368}
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276}
!1271 = !DILocalVariable(name: "code", arg: 1, scope: !1267, file: !1, line: 327, type: !132)
!1272 = !DILocalVariable(name: "mode", arg: 2, scope: !1267, file: !1, line: 327, type: !3)
!1273 = !DILocalVariable(name: "arg0", arg: 3, scope: !1267, file: !1, line: 328, type: !368)
!1274 = !DILocalVariable(name: "arg1", arg: 4, scope: !1267, file: !1, line: 329, type: !368)
!1275 = !DILocalVariable(name: "arg2", arg: 5, scope: !1267, file: !1, line: 330, type: !368)
!1276 = !DILocalVariable(name: "rt", scope: !1267, file: !1, line: 332, type: !285)
!1277 = !DILocation(line: 0, scope: !1267)
!1278 = !DILocation(line: 333, column: 8, scope: !1267)
!1279 = !DILocation(line: 335, column: 3, scope: !1267)
!1280 = !DILocation(line: 336, column: 3, scope: !1267)
!1281 = !DILocation(line: 336, column: 17, scope: !1267)
!1282 = !DILocation(line: 337, column: 3, scope: !1267)
!1283 = !DILocation(line: 337, column: 17, scope: !1267)
!1284 = !DILocation(line: 338, column: 3, scope: !1267)
!1285 = !DILocation(line: 338, column: 17, scope: !1267)
!1286 = !DILocation(line: 340, column: 3, scope: !1267)
!1287 = distinct !DISubprogram(name: "gen_rtx_fmt_s_stat", scope: !1, file: !1, line: 344, type: !1288, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1290)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!285, !132, !3, !283}
!1290 = !{!1291, !1292, !1293, !1294}
!1291 = !DILocalVariable(name: "code", arg: 1, scope: !1287, file: !1, line: 344, type: !132)
!1292 = !DILocalVariable(name: "mode", arg: 2, scope: !1287, file: !1, line: 344, type: !3)
!1293 = !DILocalVariable(name: "arg0", arg: 3, scope: !1287, file: !1, line: 345, type: !283)
!1294 = !DILocalVariable(name: "rt", scope: !1287, file: !1, line: 347, type: !285)
!1295 = !DILocation(line: 0, scope: !1287)
!1296 = !DILocation(line: 348, column: 8, scope: !1287)
!1297 = !DILocation(line: 350, column: 3, scope: !1287)
!1298 = !DILocation(line: 351, column: 3, scope: !1287)
!1299 = !DILocation(line: 351, column: 16, scope: !1287)
!1300 = !DILocation(line: 353, column: 3, scope: !1287)
!1301 = distinct !DISubprogram(name: "gen_rtx_fmt_i00_stat", scope: !1, file: !1, line: 357, type: !1302, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!285, !132, !3, !278}
!1304 = !{!1305, !1306, !1307, !1308}
!1305 = !DILocalVariable(name: "code", arg: 1, scope: !1301, file: !1, line: 357, type: !132)
!1306 = !DILocalVariable(name: "mode", arg: 2, scope: !1301, file: !1, line: 357, type: !3)
!1307 = !DILocalVariable(name: "arg0", arg: 3, scope: !1301, file: !1, line: 358, type: !278)
!1308 = !DILocalVariable(name: "rt", scope: !1301, file: !1, line: 360, type: !285)
!1309 = !DILocation(line: 0, scope: !1301)
!1310 = !DILocation(line: 361, column: 8, scope: !1301)
!1311 = !DILocation(line: 363, column: 3, scope: !1301)
!1312 = !DILocation(line: 364, column: 3, scope: !1301)
!1313 = !DILocation(line: 364, column: 16, scope: !1301)
!1314 = !DILocation(line: 365, column: 3, scope: !1301)
!1315 = !DILocation(line: 365, column: 17, scope: !1301)
!1316 = !DILocation(line: 366, column: 3, scope: !1301)
!1317 = !DILocation(line: 366, column: 17, scope: !1301)
!1318 = !DILocation(line: 368, column: 3, scope: !1301)
!1319 = distinct !DISubprogram(name: "gen_rtx_fmt_ei_stat", scope: !1, file: !1, line: 372, type: !1320, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1322)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!285, !132, !3, !285, !278}
!1322 = !{!1323, !1324, !1325, !1326, !1327}
!1323 = !DILocalVariable(name: "code", arg: 1, scope: !1319, file: !1, line: 372, type: !132)
!1324 = !DILocalVariable(name: "mode", arg: 2, scope: !1319, file: !1, line: 372, type: !3)
!1325 = !DILocalVariable(name: "arg0", arg: 3, scope: !1319, file: !1, line: 373, type: !285)
!1326 = !DILocalVariable(name: "arg1", arg: 4, scope: !1319, file: !1, line: 374, type: !278)
!1327 = !DILocalVariable(name: "rt", scope: !1319, file: !1, line: 376, type: !285)
!1328 = !DILocation(line: 0, scope: !1319)
!1329 = !DILocation(line: 377, column: 8, scope: !1319)
!1330 = !DILocation(line: 379, column: 3, scope: !1319)
!1331 = !DILocation(line: 380, column: 3, scope: !1319)
!1332 = !DILocation(line: 380, column: 16, scope: !1319)
!1333 = !DILocation(line: 381, column: 3, scope: !1319)
!1334 = !DILocation(line: 381, column: 16, scope: !1319)
!1335 = !DILocation(line: 383, column: 3, scope: !1319)
!1336 = distinct !DISubprogram(name: "gen_rtx_fmt_e0_stat", scope: !1, file: !1, line: 387, type: !949, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1337)
!1337 = !{!1338, !1339, !1340, !1341}
!1338 = !DILocalVariable(name: "code", arg: 1, scope: !1336, file: !1, line: 387, type: !132)
!1339 = !DILocalVariable(name: "mode", arg: 2, scope: !1336, file: !1, line: 387, type: !3)
!1340 = !DILocalVariable(name: "arg0", arg: 3, scope: !1336, file: !1, line: 388, type: !285)
!1341 = !DILocalVariable(name: "rt", scope: !1336, file: !1, line: 390, type: !285)
!1342 = !DILocation(line: 0, scope: !1336)
!1343 = !DILocation(line: 391, column: 8, scope: !1336)
!1344 = !DILocation(line: 393, column: 3, scope: !1336)
!1345 = !DILocation(line: 394, column: 3, scope: !1336)
!1346 = !DILocation(line: 394, column: 16, scope: !1336)
!1347 = !DILocation(line: 395, column: 3, scope: !1336)
!1348 = !DILocation(line: 395, column: 17, scope: !1336)
!1349 = !DILocation(line: 397, column: 3, scope: !1336)
!1350 = distinct !DISubprogram(name: "gen_rtx_fmt_u_stat", scope: !1, file: !1, line: 401, type: !949, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1351)
!1351 = !{!1352, !1353, !1354, !1355}
!1352 = !DILocalVariable(name: "code", arg: 1, scope: !1350, file: !1, line: 401, type: !132)
!1353 = !DILocalVariable(name: "mode", arg: 2, scope: !1350, file: !1, line: 401, type: !3)
!1354 = !DILocalVariable(name: "arg0", arg: 3, scope: !1350, file: !1, line: 402, type: !285)
!1355 = !DILocalVariable(name: "rt", scope: !1350, file: !1, line: 404, type: !285)
!1356 = !DILocation(line: 0, scope: !1350)
!1357 = !DILocation(line: 405, column: 8, scope: !1350)
!1358 = !DILocation(line: 407, column: 3, scope: !1350)
!1359 = !DILocation(line: 408, column: 3, scope: !1350)
!1360 = !DILocation(line: 408, column: 16, scope: !1350)
!1361 = !DILocation(line: 410, column: 3, scope: !1350)
!1362 = distinct !DISubprogram(name: "gen_rtx_fmt_s00_stat", scope: !1, file: !1, line: 414, type: !1288, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1363)
!1363 = !{!1364, !1365, !1366, !1367}
!1364 = !DILocalVariable(name: "code", arg: 1, scope: !1362, file: !1, line: 414, type: !132)
!1365 = !DILocalVariable(name: "mode", arg: 2, scope: !1362, file: !1, line: 414, type: !3)
!1366 = !DILocalVariable(name: "arg0", arg: 3, scope: !1362, file: !1, line: 415, type: !283)
!1367 = !DILocalVariable(name: "rt", scope: !1362, file: !1, line: 417, type: !285)
!1368 = !DILocation(line: 0, scope: !1362)
!1369 = !DILocation(line: 418, column: 8, scope: !1362)
!1370 = !DILocation(line: 420, column: 3, scope: !1362)
!1371 = !DILocation(line: 421, column: 3, scope: !1362)
!1372 = !DILocation(line: 421, column: 16, scope: !1362)
!1373 = !DILocation(line: 422, column: 3, scope: !1362)
!1374 = !DILocation(line: 422, column: 17, scope: !1362)
!1375 = !DILocation(line: 423, column: 3, scope: !1362)
!1376 = !DILocation(line: 423, column: 17, scope: !1362)
!1377 = !DILocation(line: 425, column: 3, scope: !1362)
!1378 = distinct !DISubprogram(name: "gen_rtx_fmt_tei_stat", scope: !1, file: !1, line: 429, type: !1379, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!285, !132, !3, !343, !285, !278}
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387}
!1382 = !DILocalVariable(name: "code", arg: 1, scope: !1378, file: !1, line: 429, type: !132)
!1383 = !DILocalVariable(name: "mode", arg: 2, scope: !1378, file: !1, line: 429, type: !3)
!1384 = !DILocalVariable(name: "arg0", arg: 3, scope: !1378, file: !1, line: 430, type: !343)
!1385 = !DILocalVariable(name: "arg1", arg: 4, scope: !1378, file: !1, line: 431, type: !285)
!1386 = !DILocalVariable(name: "arg2", arg: 5, scope: !1378, file: !1, line: 432, type: !278)
!1387 = !DILocalVariable(name: "rt", scope: !1378, file: !1, line: 434, type: !285)
!1388 = !DILocation(line: 0, scope: !1378)
!1389 = !DILocation(line: 435, column: 8, scope: !1378)
!1390 = !DILocation(line: 437, column: 3, scope: !1378)
!1391 = !DILocation(line: 438, column: 3, scope: !1378)
!1392 = !DILocation(line: 438, column: 17, scope: !1378)
!1393 = !DILocation(line: 439, column: 3, scope: !1378)
!1394 = !DILocation(line: 439, column: 16, scope: !1378)
!1395 = !DILocation(line: 440, column: 3, scope: !1378)
!1396 = !DILocation(line: 440, column: 16, scope: !1378)
!1397 = !DILocation(line: 442, column: 3, scope: !1378)
!1398 = distinct !DISubprogram(name: "gen_rtx_fmt_iss_stat", scope: !1, file: !1, line: 446, type: !1399, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1401)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!285, !132, !3, !278, !283, !283}
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407}
!1402 = !DILocalVariable(name: "code", arg: 1, scope: !1398, file: !1, line: 446, type: !132)
!1403 = !DILocalVariable(name: "mode", arg: 2, scope: !1398, file: !1, line: 446, type: !3)
!1404 = !DILocalVariable(name: "arg0", arg: 3, scope: !1398, file: !1, line: 447, type: !278)
!1405 = !DILocalVariable(name: "arg1", arg: 4, scope: !1398, file: !1, line: 448, type: !283)
!1406 = !DILocalVariable(name: "arg2", arg: 5, scope: !1398, file: !1, line: 449, type: !283)
!1407 = !DILocalVariable(name: "rt", scope: !1398, file: !1, line: 451, type: !285)
!1408 = !DILocation(line: 0, scope: !1398)
!1409 = !DILocation(line: 452, column: 8, scope: !1398)
!1410 = !DILocation(line: 454, column: 3, scope: !1398)
!1411 = !DILocation(line: 455, column: 3, scope: !1398)
!1412 = !DILocation(line: 455, column: 16, scope: !1398)
!1413 = !DILocation(line: 456, column: 3, scope: !1398)
!1414 = !DILocation(line: 456, column: 16, scope: !1398)
!1415 = !DILocation(line: 457, column: 3, scope: !1398)
!1416 = !DILocation(line: 457, column: 16, scope: !1398)
!1417 = !DILocation(line: 459, column: 3, scope: !1398)
!1418 = distinct !DISubprogram(name: "gen_rtx_fmt_is_stat", scope: !1, file: !1, line: 463, type: !1419, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!285, !132, !3, !278, !283}
!1421 = !{!1422, !1423, !1424, !1425, !1426}
!1422 = !DILocalVariable(name: "code", arg: 1, scope: !1418, file: !1, line: 463, type: !132)
!1423 = !DILocalVariable(name: "mode", arg: 2, scope: !1418, file: !1, line: 463, type: !3)
!1424 = !DILocalVariable(name: "arg0", arg: 3, scope: !1418, file: !1, line: 464, type: !278)
!1425 = !DILocalVariable(name: "arg1", arg: 4, scope: !1418, file: !1, line: 465, type: !283)
!1426 = !DILocalVariable(name: "rt", scope: !1418, file: !1, line: 467, type: !285)
!1427 = !DILocation(line: 0, scope: !1418)
!1428 = !DILocation(line: 468, column: 8, scope: !1418)
!1429 = !DILocation(line: 470, column: 3, scope: !1418)
!1430 = !DILocation(line: 471, column: 3, scope: !1418)
!1431 = !DILocation(line: 471, column: 16, scope: !1418)
!1432 = !DILocation(line: 472, column: 3, scope: !1418)
!1433 = !DILocation(line: 472, column: 16, scope: !1418)
!1434 = !DILocation(line: 474, column: 3, scope: !1418)
!1435 = distinct !DISubprogram(name: "gen_rtx_fmt_isE_stat", scope: !1, file: !1, line: 478, type: !1436, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!285, !132, !3, !278, !283, !313}
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444}
!1439 = !DILocalVariable(name: "code", arg: 1, scope: !1435, file: !1, line: 478, type: !132)
!1440 = !DILocalVariable(name: "mode", arg: 2, scope: !1435, file: !1, line: 478, type: !3)
!1441 = !DILocalVariable(name: "arg0", arg: 3, scope: !1435, file: !1, line: 479, type: !278)
!1442 = !DILocalVariable(name: "arg1", arg: 4, scope: !1435, file: !1, line: 480, type: !283)
!1443 = !DILocalVariable(name: "arg2", arg: 5, scope: !1435, file: !1, line: 481, type: !313)
!1444 = !DILocalVariable(name: "rt", scope: !1435, file: !1, line: 483, type: !285)
!1445 = !DILocation(line: 0, scope: !1435)
!1446 = !DILocation(line: 484, column: 8, scope: !1435)
!1447 = !DILocation(line: 486, column: 3, scope: !1435)
!1448 = !DILocation(line: 487, column: 3, scope: !1435)
!1449 = !DILocation(line: 487, column: 16, scope: !1435)
!1450 = !DILocation(line: 488, column: 3, scope: !1435)
!1451 = !DILocation(line: 488, column: 16, scope: !1435)
!1452 = !DILocation(line: 489, column: 3, scope: !1435)
!1453 = !DILocation(line: 489, column: 16, scope: !1435)
!1454 = !DILocation(line: 491, column: 3, scope: !1435)
!1455 = distinct !DISubprogram(name: "gen_rtx_fmt_i_stat", scope: !1, file: !1, line: 495, type: !1302, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1456)
!1456 = !{!1457, !1458, !1459, !1460}
!1457 = !DILocalVariable(name: "code", arg: 1, scope: !1455, file: !1, line: 495, type: !132)
!1458 = !DILocalVariable(name: "mode", arg: 2, scope: !1455, file: !1, line: 495, type: !3)
!1459 = !DILocalVariable(name: "arg0", arg: 3, scope: !1455, file: !1, line: 496, type: !278)
!1460 = !DILocalVariable(name: "rt", scope: !1455, file: !1, line: 498, type: !285)
!1461 = !DILocation(line: 0, scope: !1455)
!1462 = !DILocation(line: 499, column: 8, scope: !1455)
!1463 = !DILocation(line: 501, column: 3, scope: !1455)
!1464 = !DILocation(line: 502, column: 3, scope: !1455)
!1465 = !DILocation(line: 502, column: 16, scope: !1455)
!1466 = !DILocation(line: 504, column: 3, scope: !1455)
!1467 = distinct !DISubprogram(name: "gen_rtx_fmt_iE_stat", scope: !1, file: !1, line: 508, type: !1468, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!285, !132, !3, !278, !313}
!1470 = !{!1471, !1472, !1473, !1474, !1475}
!1471 = !DILocalVariable(name: "code", arg: 1, scope: !1467, file: !1, line: 508, type: !132)
!1472 = !DILocalVariable(name: "mode", arg: 2, scope: !1467, file: !1, line: 508, type: !3)
!1473 = !DILocalVariable(name: "arg0", arg: 3, scope: !1467, file: !1, line: 509, type: !278)
!1474 = !DILocalVariable(name: "arg1", arg: 4, scope: !1467, file: !1, line: 510, type: !313)
!1475 = !DILocalVariable(name: "rt", scope: !1467, file: !1, line: 512, type: !285)
!1476 = !DILocation(line: 0, scope: !1467)
!1477 = !DILocation(line: 513, column: 8, scope: !1467)
!1478 = !DILocation(line: 515, column: 3, scope: !1467)
!1479 = !DILocation(line: 516, column: 3, scope: !1467)
!1480 = !DILocation(line: 516, column: 16, scope: !1467)
!1481 = !DILocation(line: 517, column: 3, scope: !1467)
!1482 = !DILocation(line: 517, column: 16, scope: !1467)
!1483 = !DILocation(line: 519, column: 3, scope: !1467)
!1484 = distinct !DISubprogram(name: "gen_rtx_fmt_ss_stat", scope: !1, file: !1, line: 523, type: !1485, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1487)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!285, !132, !3, !283, !283}
!1487 = !{!1488, !1489, !1490, !1491, !1492}
!1488 = !DILocalVariable(name: "code", arg: 1, scope: !1484, file: !1, line: 523, type: !132)
!1489 = !DILocalVariable(name: "mode", arg: 2, scope: !1484, file: !1, line: 523, type: !3)
!1490 = !DILocalVariable(name: "arg0", arg: 3, scope: !1484, file: !1, line: 524, type: !283)
!1491 = !DILocalVariable(name: "arg1", arg: 4, scope: !1484, file: !1, line: 525, type: !283)
!1492 = !DILocalVariable(name: "rt", scope: !1484, file: !1, line: 527, type: !285)
!1493 = !DILocation(line: 0, scope: !1484)
!1494 = !DILocation(line: 528, column: 8, scope: !1484)
!1495 = !DILocation(line: 530, column: 3, scope: !1484)
!1496 = !DILocation(line: 531, column: 3, scope: !1484)
!1497 = !DILocation(line: 531, column: 16, scope: !1484)
!1498 = !DILocation(line: 532, column: 3, scope: !1484)
!1499 = !DILocation(line: 532, column: 16, scope: !1484)
!1500 = !DILocation(line: 534, column: 3, scope: !1484)
!1501 = distinct !DISubprogram(name: "gen_rtx_fmt_sEss_stat", scope: !1, file: !1, line: 538, type: !1502, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!285, !132, !3, !283, !313, !283, !283}
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511}
!1505 = !DILocalVariable(name: "code", arg: 1, scope: !1501, file: !1, line: 538, type: !132)
!1506 = !DILocalVariable(name: "mode", arg: 2, scope: !1501, file: !1, line: 538, type: !3)
!1507 = !DILocalVariable(name: "arg0", arg: 3, scope: !1501, file: !1, line: 539, type: !283)
!1508 = !DILocalVariable(name: "arg1", arg: 4, scope: !1501, file: !1, line: 540, type: !313)
!1509 = !DILocalVariable(name: "arg2", arg: 5, scope: !1501, file: !1, line: 541, type: !283)
!1510 = !DILocalVariable(name: "arg3", arg: 6, scope: !1501, file: !1, line: 542, type: !283)
!1511 = !DILocalVariable(name: "rt", scope: !1501, file: !1, line: 544, type: !285)
!1512 = !DILocation(line: 0, scope: !1501)
!1513 = !DILocation(line: 545, column: 8, scope: !1501)
!1514 = !DILocation(line: 547, column: 3, scope: !1501)
!1515 = !DILocation(line: 548, column: 3, scope: !1501)
!1516 = !DILocation(line: 548, column: 16, scope: !1501)
!1517 = !DILocation(line: 549, column: 3, scope: !1501)
!1518 = !DILocation(line: 549, column: 16, scope: !1501)
!1519 = !DILocation(line: 550, column: 3, scope: !1501)
!1520 = !DILocation(line: 550, column: 16, scope: !1501)
!1521 = !DILocation(line: 551, column: 3, scope: !1501)
!1522 = !DILocation(line: 551, column: 16, scope: !1501)
!1523 = !DILocation(line: 553, column: 3, scope: !1501)
!1524 = distinct !DISubprogram(name: "gen_rtx_fmt_eE_stat", scope: !1, file: !1, line: 557, type: !1525, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1527)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!285, !132, !3, !285, !313}
!1527 = !{!1528, !1529, !1530, !1531, !1532}
!1528 = !DILocalVariable(name: "code", arg: 1, scope: !1524, file: !1, line: 557, type: !132)
!1529 = !DILocalVariable(name: "mode", arg: 2, scope: !1524, file: !1, line: 557, type: !3)
!1530 = !DILocalVariable(name: "arg0", arg: 3, scope: !1524, file: !1, line: 558, type: !285)
!1531 = !DILocalVariable(name: "arg1", arg: 4, scope: !1524, file: !1, line: 559, type: !313)
!1532 = !DILocalVariable(name: "rt", scope: !1524, file: !1, line: 561, type: !285)
!1533 = !DILocation(line: 0, scope: !1524)
!1534 = !DILocation(line: 562, column: 8, scope: !1524)
!1535 = !DILocation(line: 564, column: 3, scope: !1524)
!1536 = !DILocation(line: 565, column: 3, scope: !1524)
!1537 = !DILocation(line: 565, column: 16, scope: !1524)
!1538 = !DILocation(line: 566, column: 3, scope: !1524)
!1539 = !DILocation(line: 566, column: 16, scope: !1524)
!1540 = !DILocation(line: 568, column: 3, scope: !1524)
!1541 = distinct !DISubprogram(name: "gen_rtx_fmt_Ess_stat", scope: !1, file: !1, line: 572, type: !1542, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!285, !132, !3, !313, !283, !283}
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550}
!1545 = !DILocalVariable(name: "code", arg: 1, scope: !1541, file: !1, line: 572, type: !132)
!1546 = !DILocalVariable(name: "mode", arg: 2, scope: !1541, file: !1, line: 572, type: !3)
!1547 = !DILocalVariable(name: "arg0", arg: 3, scope: !1541, file: !1, line: 573, type: !313)
!1548 = !DILocalVariable(name: "arg1", arg: 4, scope: !1541, file: !1, line: 574, type: !283)
!1549 = !DILocalVariable(name: "arg2", arg: 5, scope: !1541, file: !1, line: 575, type: !283)
!1550 = !DILocalVariable(name: "rt", scope: !1541, file: !1, line: 577, type: !285)
!1551 = !DILocation(line: 0, scope: !1541)
!1552 = !DILocation(line: 578, column: 8, scope: !1541)
!1553 = !DILocation(line: 580, column: 3, scope: !1541)
!1554 = !DILocation(line: 581, column: 3, scope: !1541)
!1555 = !DILocation(line: 581, column: 16, scope: !1541)
!1556 = !DILocation(line: 582, column: 3, scope: !1541)
!1557 = !DILocation(line: 582, column: 16, scope: !1541)
!1558 = !DILocation(line: 583, column: 3, scope: !1541)
!1559 = !DILocation(line: 583, column: 16, scope: !1541)
!1560 = !DILocation(line: 585, column: 3, scope: !1541)
!1561 = distinct !DISubprogram(name: "gen_rtx_fmt_ses_stat", scope: !1, file: !1, line: 589, type: !1562, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!285, !132, !3, !283, !285, !283}
!1564 = !{!1565, !1566, !1567, !1568, !1569, !1570}
!1565 = !DILocalVariable(name: "code", arg: 1, scope: !1561, file: !1, line: 589, type: !132)
!1566 = !DILocalVariable(name: "mode", arg: 2, scope: !1561, file: !1, line: 589, type: !3)
!1567 = !DILocalVariable(name: "arg0", arg: 3, scope: !1561, file: !1, line: 590, type: !283)
!1568 = !DILocalVariable(name: "arg1", arg: 4, scope: !1561, file: !1, line: 591, type: !285)
!1569 = !DILocalVariable(name: "arg2", arg: 5, scope: !1561, file: !1, line: 592, type: !283)
!1570 = !DILocalVariable(name: "rt", scope: !1561, file: !1, line: 594, type: !285)
!1571 = !DILocation(line: 0, scope: !1561)
!1572 = !DILocation(line: 595, column: 8, scope: !1561)
!1573 = !DILocation(line: 597, column: 3, scope: !1561)
!1574 = !DILocation(line: 598, column: 3, scope: !1561)
!1575 = !DILocation(line: 598, column: 16, scope: !1561)
!1576 = !DILocation(line: 599, column: 3, scope: !1561)
!1577 = !DILocation(line: 599, column: 16, scope: !1561)
!1578 = !DILocation(line: 600, column: 3, scope: !1561)
!1579 = !DILocation(line: 600, column: 16, scope: !1561)
!1580 = !DILocation(line: 602, column: 3, scope: !1561)
!1581 = distinct !DISubprogram(name: "gen_rtx_fmt_sss_stat", scope: !1, file: !1, line: 606, type: !1582, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1584)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!285, !132, !3, !283, !283, !283}
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590}
!1585 = !DILocalVariable(name: "code", arg: 1, scope: !1581, file: !1, line: 606, type: !132)
!1586 = !DILocalVariable(name: "mode", arg: 2, scope: !1581, file: !1, line: 606, type: !3)
!1587 = !DILocalVariable(name: "arg0", arg: 3, scope: !1581, file: !1, line: 607, type: !283)
!1588 = !DILocalVariable(name: "arg1", arg: 4, scope: !1581, file: !1, line: 608, type: !283)
!1589 = !DILocalVariable(name: "arg2", arg: 5, scope: !1581, file: !1, line: 609, type: !283)
!1590 = !DILocalVariable(name: "rt", scope: !1581, file: !1, line: 611, type: !285)
!1591 = !DILocation(line: 0, scope: !1581)
!1592 = !DILocation(line: 612, column: 8, scope: !1581)
!1593 = !DILocation(line: 614, column: 3, scope: !1581)
!1594 = !DILocation(line: 615, column: 3, scope: !1581)
!1595 = !DILocation(line: 615, column: 16, scope: !1581)
!1596 = !DILocation(line: 616, column: 3, scope: !1581)
!1597 = !DILocation(line: 616, column: 16, scope: !1581)
!1598 = !DILocation(line: 617, column: 3, scope: !1581)
!1599 = !DILocation(line: 617, column: 16, scope: !1581)
!1600 = !DILocation(line: 619, column: 3, scope: !1581)
!1601 = distinct !DISubprogram(name: "gen_rtx_fmt_sse_stat", scope: !1, file: !1, line: 623, type: !1602, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!285, !132, !3, !283, !283, !285}
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610}
!1605 = !DILocalVariable(name: "code", arg: 1, scope: !1601, file: !1, line: 623, type: !132)
!1606 = !DILocalVariable(name: "mode", arg: 2, scope: !1601, file: !1, line: 623, type: !3)
!1607 = !DILocalVariable(name: "arg0", arg: 3, scope: !1601, file: !1, line: 624, type: !283)
!1608 = !DILocalVariable(name: "arg1", arg: 4, scope: !1601, file: !1, line: 625, type: !283)
!1609 = !DILocalVariable(name: "arg2", arg: 5, scope: !1601, file: !1, line: 626, type: !285)
!1610 = !DILocalVariable(name: "rt", scope: !1601, file: !1, line: 628, type: !285)
!1611 = !DILocation(line: 0, scope: !1601)
!1612 = !DILocation(line: 629, column: 8, scope: !1601)
!1613 = !DILocation(line: 631, column: 3, scope: !1601)
!1614 = !DILocation(line: 632, column: 3, scope: !1601)
!1615 = !DILocation(line: 632, column: 16, scope: !1601)
!1616 = !DILocation(line: 633, column: 3, scope: !1601)
!1617 = !DILocation(line: 633, column: 16, scope: !1601)
!1618 = !DILocation(line: 634, column: 3, scope: !1601)
!1619 = !DILocation(line: 634, column: 16, scope: !1601)
!1620 = !DILocation(line: 636, column: 3, scope: !1601)
!1621 = distinct !DISubprogram(name: "gen_rtx_fmt_sies_stat", scope: !1, file: !1, line: 640, type: !1622, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!285, !132, !3, !283, !278, !285, !283}
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1625 = !DILocalVariable(name: "code", arg: 1, scope: !1621, file: !1, line: 640, type: !132)
!1626 = !DILocalVariable(name: "mode", arg: 2, scope: !1621, file: !1, line: 640, type: !3)
!1627 = !DILocalVariable(name: "arg0", arg: 3, scope: !1621, file: !1, line: 641, type: !283)
!1628 = !DILocalVariable(name: "arg1", arg: 4, scope: !1621, file: !1, line: 642, type: !278)
!1629 = !DILocalVariable(name: "arg2", arg: 5, scope: !1621, file: !1, line: 643, type: !285)
!1630 = !DILocalVariable(name: "arg3", arg: 6, scope: !1621, file: !1, line: 644, type: !283)
!1631 = !DILocalVariable(name: "rt", scope: !1621, file: !1, line: 646, type: !285)
!1632 = !DILocation(line: 0, scope: !1621)
!1633 = !DILocation(line: 647, column: 8, scope: !1621)
!1634 = !DILocation(line: 649, column: 3, scope: !1621)
!1635 = !DILocation(line: 650, column: 3, scope: !1621)
!1636 = !DILocation(line: 650, column: 16, scope: !1621)
!1637 = !DILocation(line: 651, column: 3, scope: !1621)
!1638 = !DILocation(line: 651, column: 16, scope: !1621)
!1639 = !DILocation(line: 652, column: 3, scope: !1621)
!1640 = !DILocation(line: 652, column: 16, scope: !1621)
!1641 = !DILocation(line: 653, column: 3, scope: !1621)
!1642 = !DILocation(line: 653, column: 16, scope: !1621)
!1643 = !DILocation(line: 655, column: 3, scope: !1621)
!1644 = distinct !DISubprogram(name: "gen_rtx_fmt_sE_stat", scope: !1, file: !1, line: 659, type: !1645, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!285, !132, !3, !283, !313}
!1647 = !{!1648, !1649, !1650, !1651, !1652}
!1648 = !DILocalVariable(name: "code", arg: 1, scope: !1644, file: !1, line: 659, type: !132)
!1649 = !DILocalVariable(name: "mode", arg: 2, scope: !1644, file: !1, line: 659, type: !3)
!1650 = !DILocalVariable(name: "arg0", arg: 3, scope: !1644, file: !1, line: 660, type: !283)
!1651 = !DILocalVariable(name: "arg1", arg: 4, scope: !1644, file: !1, line: 661, type: !313)
!1652 = !DILocalVariable(name: "rt", scope: !1644, file: !1, line: 663, type: !285)
!1653 = !DILocation(line: 0, scope: !1644)
!1654 = !DILocation(line: 664, column: 8, scope: !1644)
!1655 = !DILocation(line: 666, column: 3, scope: !1644)
!1656 = !DILocation(line: 667, column: 3, scope: !1644)
!1657 = !DILocation(line: 667, column: 16, scope: !1644)
!1658 = !DILocation(line: 668, column: 3, scope: !1644)
!1659 = !DILocation(line: 668, column: 16, scope: !1644)
!1660 = !DILocation(line: 670, column: 3, scope: !1644)
!1661 = distinct !DISubprogram(name: "gen_rtx_fmt_ii_stat", scope: !1, file: !1, line: 674, type: !1662, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1664)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!285, !132, !3, !278, !278}
!1664 = !{!1665, !1666, !1667, !1668, !1669}
!1665 = !DILocalVariable(name: "code", arg: 1, scope: !1661, file: !1, line: 674, type: !132)
!1666 = !DILocalVariable(name: "mode", arg: 2, scope: !1661, file: !1, line: 674, type: !3)
!1667 = !DILocalVariable(name: "arg0", arg: 3, scope: !1661, file: !1, line: 675, type: !278)
!1668 = !DILocalVariable(name: "arg1", arg: 4, scope: !1661, file: !1, line: 676, type: !278)
!1669 = !DILocalVariable(name: "rt", scope: !1661, file: !1, line: 678, type: !285)
!1670 = !DILocation(line: 0, scope: !1661)
!1671 = !DILocation(line: 679, column: 8, scope: !1661)
!1672 = !DILocation(line: 681, column: 3, scope: !1661)
!1673 = !DILocation(line: 682, column: 3, scope: !1661)
!1674 = !DILocation(line: 682, column: 16, scope: !1661)
!1675 = !DILocation(line: 683, column: 3, scope: !1661)
!1676 = !DILocation(line: 683, column: 16, scope: !1661)
!1677 = !DILocation(line: 685, column: 3, scope: !1661)
!1678 = distinct !DISubprogram(name: "gen_rtx_fmt_Ee_stat", scope: !1, file: !1, line: 689, type: !1679, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!285, !132, !3, !313, !285}
!1681 = !{!1682, !1683, !1684, !1685, !1686}
!1682 = !DILocalVariable(name: "code", arg: 1, scope: !1678, file: !1, line: 689, type: !132)
!1683 = !DILocalVariable(name: "mode", arg: 2, scope: !1678, file: !1, line: 689, type: !3)
!1684 = !DILocalVariable(name: "arg0", arg: 3, scope: !1678, file: !1, line: 690, type: !313)
!1685 = !DILocalVariable(name: "arg1", arg: 4, scope: !1678, file: !1, line: 691, type: !285)
!1686 = !DILocalVariable(name: "rt", scope: !1678, file: !1, line: 693, type: !285)
!1687 = !DILocation(line: 0, scope: !1678)
!1688 = !DILocation(line: 694, column: 8, scope: !1678)
!1689 = !DILocation(line: 696, column: 3, scope: !1678)
!1690 = !DILocation(line: 697, column: 3, scope: !1678)
!1691 = !DILocation(line: 697, column: 16, scope: !1678)
!1692 = !DILocation(line: 698, column: 3, scope: !1678)
!1693 = !DILocation(line: 698, column: 16, scope: !1678)
!1694 = !DILocation(line: 700, column: 3, scope: !1678)
