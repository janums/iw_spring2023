; ModuleID = 'ggc-common.bc'
source_filename = "ggc-common.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.VEC_const_ggc_root_tab_t_heap = type { %struct.VEC_const_ggc_root_tab_t_base }
%struct.VEC_const_ggc_root_tab_t_base = type { i32, i32, [1 x %struct.ggc_root_tab*] }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.VEC_const_ggc_cache_tab_t_heap = type { %struct.VEC_const_ggc_cache_tab_t_base }
%struct.VEC_const_ggc_cache_tab_t_base = type { i32, i32, [1 x %struct.ggc_cache_tab*] }
%struct.ggc_cache_tab = type { %struct.htab**, i64, i64, void (i8*)*, void (i8*)*, i32 (i8*)* }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.ggc_statistics = type { i32 }
%struct.host_hooks = type { void ()*, i8* (i64, i32)*, i32 (i8*, i64, i32, i64)*, i64 ()* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.ptr_data = type { i8*, i8*, void (i8*, i8*, void (i8*, i8*)*, i8*)*, void (i8*, i8*, void (i8*, i8*)*, i8*)*, i64, i8*, i32 }
%struct.traversal_state = type { %struct._IO_FILE*, %struct.ggc_pch_data*, i64, %struct.ptr_data**, i64 }
%struct.ggc_pch_data = type opaque
%struct.mmap_info = type { i64, i64, i8* }
%struct.rlimit = type { i64, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@ggc_protect_identifiers = dso_local local_unnamed_addr global i8 1, align 1, !dbg !0
@extra_root_vec = internal global %struct.VEC_const_ggc_root_tab_t_heap* null, align 8, !dbg !439
@extra_cache_vec = internal global %struct.VEC_const_ggc_cache_tab_t_heap* null, align 8, !dbg !441
@gt_ggc_deletable_rtab = external dso_local local_unnamed_addr constant [0 x %struct.ggc_root_tab*], align 8
@gt_ggc_rtab = external dso_local constant [0 x %struct.ggc_root_tab*], align 8
@gt_ggc_cache_rtab = external dso_local local_unnamed_addr constant [0 x %struct.ggc_cache_tab*], align 8
@.str = private unnamed_addr constant [13 x i8] c"ggc-common.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@ggc_stats = internal unnamed_addr global %struct.ggc_statistics* null, align 8, !dbg !432
@saving_htab = internal unnamed_addr global %struct.htab* null, align 8, !dbg !443
@host_hooks = external dso_local local_unnamed_addr constant %struct.host_hooks, align 8
@gt_pch_cache_rtab = external dso_local constant [0 x %struct.ggc_root_tab*], align 8
@gt_pch_scalar_rtab = external dso_local local_unnamed_addr constant [0 x %struct.ggc_root_tab*], align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"can't write PCH file: %m\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"can't get position in PCH file: %m\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"can't write padding to PCH file: %m\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"can't read PCH file: %m\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"had to relocate PCH\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ggc-min-expand\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ggc-min-heapsize\00", align 1
@ggc_force_collect = common dso_local local_unnamed_addr global i8 0, align 1, !dbg !430

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !450 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !463, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !466
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !467
  ret i32 %call, !dbg !468
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !469 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !473
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !474
  ret i32 %call, !dbg !475
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !476 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !480, metadata !DIExpression()), !dbg !481
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !482
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !482
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !482
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !482
  %cmp = icmp uge i8* %0, %1, !dbg !482
  %conv1 = zext i1 %cmp to i64, !dbg !482
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !482
  %tobool = icmp eq i64 %expval, 0, !dbg !482
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !482

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !482
  br label %cond.end, !dbg !482

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !482
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !482
  %2 = load i8, i8* %0, align 1, !dbg !482
  %conv3 = zext i8 %2 to i32, !dbg !482
  br label %cond.end, !dbg !482

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !482
  ret i32 %cond, !dbg !483
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !484 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !486, metadata !DIExpression()), !dbg !487
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !488
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !488
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !488
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !488
  %cmp = icmp uge i8* %0, %1, !dbg !488
  %conv1 = zext i1 %cmp to i64, !dbg !488
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !488
  %tobool = icmp eq i64 %expval, 0, !dbg !488
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !488

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !488
  br label %cond.end, !dbg !488

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !488
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !488
  %2 = load i8, i8* %0, align 1, !dbg !488
  %conv3 = zext i8 %2 to i32, !dbg !488
  br label %cond.end, !dbg !488

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !488
  ret i32 %cond, !dbg !489
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !490 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !491
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !491
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !491
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !491
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !491
  %cmp = icmp uge i8* %1, %2, !dbg !491
  %conv1 = zext i1 %cmp to i64, !dbg !491
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !491
  %tobool = icmp eq i64 %expval, 0, !dbg !491
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !491

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !491
  br label %cond.end, !dbg !491

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !491
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !491
  %3 = load i8, i8* %1, align 1, !dbg !491
  %conv3 = zext i8 %3 to i32, !dbg !491
  br label %cond.end, !dbg !491

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !491
  ret i32 %cond, !dbg !492
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !493 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !499
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !500
  ret i32 %call, !dbg !501
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !502 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !506, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !507, metadata !DIExpression()), !dbg !508
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !509
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !509
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !509
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !509
  %cmp = icmp uge i8* %0, %1, !dbg !509
  %conv1 = zext i1 %cmp to i64, !dbg !509
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !509
  %tobool = icmp eq i64 %expval, 0, !dbg !509
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !509

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !509
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !509
  br label %cond.end, !dbg !509

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !509
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !509
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !509
  store i8 %conv2, i8* %0, align 1, !dbg !509
  %conv6 = and i32 %__c, 255, !dbg !509
  br label %cond.end, !dbg !509

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !509
  ret i32 %cond, !dbg !510
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !511 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !513, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !514, metadata !DIExpression()), !dbg !515
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !516
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !516
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !516
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !516
  %cmp = icmp uge i8* %0, %1, !dbg !516
  %conv1 = zext i1 %cmp to i64, !dbg !516
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !516
  %tobool = icmp eq i64 %expval, 0, !dbg !516
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !516

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !516
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !516
  br label %cond.end, !dbg !516

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !516
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !516
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !516
  store i8 %conv2, i8* %0, align 1, !dbg !516
  %conv6 = and i32 %__c, 255, !dbg !516
  br label %cond.end, !dbg !516

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !516
  ret i32 %cond, !dbg !517
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !518 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !520, metadata !DIExpression()), !dbg !521
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !522
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !522
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !522
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !522
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !522
  %cmp = icmp uge i8* %1, %2, !dbg !522
  %conv1 = zext i1 %cmp to i64, !dbg !522
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !522
  %tobool = icmp eq i64 %expval, 0, !dbg !522
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !522

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !522
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !522
  br label %cond.end, !dbg !522

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !522
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !522
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !522
  store i8 %conv4, i8* %1, align 1, !dbg !522
  %conv6 = and i32 %__c, 255, !dbg !522
  br label %cond.end, !dbg !522

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !522
  ret i32 %cond, !dbg !523
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !524 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !530, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i64* %__n, metadata !531, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !532, metadata !DIExpression()), !dbg !533
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !534
  ret i64 %call, !dbg !535
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !536 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !538, metadata !DIExpression()), !dbg !539
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !540
  %0 = load i32, i32* %_flags, align 8, !dbg !540
  %and = lshr i32 %0, 4, !dbg !540
  %and.lobit = and i32 %and, 1, !dbg !540
  ret i32 %and.lobit, !dbg !541
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !542 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !544, metadata !DIExpression()), !dbg !545
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !546
  %0 = load i32, i32* %_flags, align 8, !dbg !546
  %and = lshr i32 %0, 5, !dbg !546
  %and.lobit = and i32 %and, 1, !dbg !546
  ret i32 %and.lobit, !dbg !547
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !548 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !551, metadata !DIExpression()), !dbg !552
  %__c.off = add i32 %__c, 128, !dbg !553
  %0 = icmp ult i32 %__c.off, 384, !dbg !553
  br i1 %0, label %cond.true, label %cond.end, !dbg !553

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !554
  %1 = load i32*, i32** %call, align 8, !dbg !555
  %idxprom = sext i32 %__c to i64, !dbg !556
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !556
  %2 = load i32, i32* %arrayidx, align 4, !dbg !556
  br label %cond.end, !dbg !557

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !557
  ret i32 %cond, !dbg !558
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !559 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !561, metadata !DIExpression()), !dbg !562
  %__c.off = add i32 %__c, 128, !dbg !563
  %0 = icmp ult i32 %__c.off, 384, !dbg !563
  br i1 %0, label %cond.true, label %cond.end, !dbg !563

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !564
  %1 = load i32*, i32** %call, align 8, !dbg !565
  %idxprom = sext i32 %__c to i64, !dbg !566
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !566
  %2 = load i32, i32* %arrayidx, align 4, !dbg !566
  br label %cond.end, !dbg !567

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !567
  ret i32 %cond, !dbg !568
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !569 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !574, metadata !DIExpression()), !dbg !575
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !576
  %conv = trunc i64 %call to i32, !dbg !577
  ret i32 %conv, !dbg !578
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !579 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !583, metadata !DIExpression()), !dbg !584
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !585
  ret i64 %call, !dbg !586
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !587 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !592, metadata !DIExpression()), !dbg !593
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !594
  ret i64 %call, !dbg !595
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !596 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !602, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i8* %__base, metadata !603, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !604, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i64 %__size, metadata !605, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !606, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i64 0, metadata !607, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !608, metadata !DIExpression()), !dbg !612
  br label %while.cond, !dbg !613

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !614
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !612
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !608, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !607, metadata !DIExpression()), !dbg !612
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !615
  br i1 %cmp, label %while.body, label %cleanup, !dbg !613

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !616
  %div = lshr i64 %add, 1, !dbg !618
  call void @llvm.dbg.value(metadata i64 %div, metadata !609, metadata !DIExpression()), !dbg !612
  %mul = mul i64 %div, %__size, !dbg !619
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !620
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !610, metadata !DIExpression()), !dbg !612
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !621
  call void @llvm.dbg.value(metadata i32 %call, metadata !611, metadata !DIExpression()), !dbg !612
  %cmp1 = icmp slt i32 %call, 0, !dbg !622
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !624

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !625
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !627

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !628
  call void @llvm.dbg.value(metadata i64 %add4, metadata !607, metadata !DIExpression()), !dbg !612
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !612
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !612
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !608, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !607, metadata !DIExpression()), !dbg !612
  br label %while.cond, !dbg !613, !llvm.loop !629

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !612
  ret i8* %retval.0, !dbg !631
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !632 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !638, metadata !DIExpression()), !dbg !639
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !640
  ret double %call, !dbg !641
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !642 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !651, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !652, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i32 %base, metadata !653, metadata !DIExpression()), !dbg !654
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !655
  ret i64 %call, !dbg !656
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !657 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !663, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !664, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i32 %base, metadata !665, metadata !DIExpression()), !dbg !666
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !667
  ret i64 %call, !dbg !668
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !669 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !680, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !681, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %base, metadata !682, metadata !DIExpression()), !dbg !683
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !684
  ret i64 %call, !dbg !685
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !686 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !690, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !691, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i32 %base, metadata !692, metadata !DIExpression()), !dbg !693
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !694
  ret i64 %call, !dbg !695
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !696 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !738, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !739, metadata !DIExpression()), !dbg !740
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !741
  ret i32 %call, !dbg !742
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !743 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !745, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !746, metadata !DIExpression()), !dbg !747
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !748
  ret i32 %call, !dbg !749
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !750 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !754, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !755, metadata !DIExpression()), !dbg !756
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !757
  ret i32 %call, !dbg !758
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !759 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !763, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !764, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !765, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !766, metadata !DIExpression()), !dbg !767
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !768
  ret i32 %call, !dbg !769
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !770 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !774, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !775, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !776, metadata !DIExpression()), !dbg !777
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !776, metadata !DIExpression(DW_OP_deref)), !dbg !777
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !778
  ret i32 %call, !dbg !779
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !780 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !784, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8* %__path, metadata !785, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !786, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !787, metadata !DIExpression()), !dbg !788
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !787, metadata !DIExpression(DW_OP_deref)), !dbg !788
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !789
  ret i32 %call, !dbg !790
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !791 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !815, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !816, metadata !DIExpression()), !dbg !817
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !818
  ret i32 %call, !dbg !819
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !820 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !822, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !823, metadata !DIExpression()), !dbg !824
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !825
  ret i32 %call, !dbg !826
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !827 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !831, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !832, metadata !DIExpression()), !dbg !833
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !834
  ret i32 %call, !dbg !835
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !836 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !840, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !841, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !842, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !843, metadata !DIExpression()), !dbg !844
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !845
  ret i32 %call, !dbg !846
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ggc_register_root_tab(%struct.ggc_root_tab* %rt) local_unnamed_addr #4 !dbg !847 {
entry:
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rt, metadata !851, metadata !DIExpression()), !dbg !852
  %tobool = icmp eq %struct.ggc_root_tab* %rt, null, !dbg !853
  br i1 %tobool, label %if.end, label %if.then, !dbg !855

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.ggc_root_tab** @VEC_const_ggc_root_tab_t_heap_safe_push(%struct.VEC_const_ggc_root_tab_t_heap** nonnull @extra_root_vec, %struct.ggc_root_tab* nonnull %rt) #7, !dbg !856
  br label %if.end, !dbg !856

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !857
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ggc_root_tab** @VEC_const_ggc_root_tab_t_heap_safe_push(%struct.VEC_const_ggc_root_tab_t_heap** %vec_, %struct.ggc_root_tab* %obj_) unnamed_addr #0 !dbg !858 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_const_ggc_root_tab_t_heap** @extra_root_vec, metadata !864, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %obj_, metadata !865, metadata !DIExpression()), !dbg !866
  %call = tail call fastcc i32 @VEC_const_ggc_root_tab_t_heap_reserve(%struct.VEC_const_ggc_root_tab_t_heap** nonnull @extra_root_vec, i32 1) #7, !dbg !867
  %0 = load %struct.VEC_const_ggc_root_tab_t_heap*, %struct.VEC_const_ggc_root_tab_t_heap** @extra_root_vec, align 8, !dbg !867
  %tobool = icmp eq %struct.VEC_const_ggc_root_tab_t_heap* %0, null, !dbg !867
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !867

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_heap, %struct.VEC_const_ggc_root_tab_t_heap* %0, i64 0, i32 0, !dbg !867
  br label %cond.end, !dbg !867

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_const_ggc_root_tab_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !867
  %call1 = tail call fastcc %struct.ggc_root_tab** @VEC_const_ggc_root_tab_t_base_quick_push(%struct.VEC_const_ggc_root_tab_t_base* %cond, %struct.ggc_root_tab* %obj_) #7, !dbg !867
  ret %struct.ggc_root_tab** %call1, !dbg !867
}

; Function Attrs: nounwind uwtable
define dso_local void @ggc_register_cache_tab(%struct.ggc_cache_tab* %ct) local_unnamed_addr #4 !dbg !868 {
entry:
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab* %ct, metadata !872, metadata !DIExpression()), !dbg !873
  %tobool = icmp eq %struct.ggc_cache_tab* %ct, null, !dbg !874
  br i1 %tobool, label %if.end, label %if.then, !dbg !876

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.ggc_cache_tab** @VEC_const_ggc_cache_tab_t_heap_safe_push(%struct.VEC_const_ggc_cache_tab_t_heap** nonnull @extra_cache_vec, %struct.ggc_cache_tab* nonnull %ct) #7, !dbg !877
  br label %if.end, !dbg !877

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !878
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ggc_cache_tab** @VEC_const_ggc_cache_tab_t_heap_safe_push(%struct.VEC_const_ggc_cache_tab_t_heap** %vec_, %struct.ggc_cache_tab* %obj_) unnamed_addr #0 !dbg !879 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_const_ggc_cache_tab_t_heap** @extra_cache_vec, metadata !885, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab* %obj_, metadata !886, metadata !DIExpression()), !dbg !887
  %call = tail call fastcc i32 @VEC_const_ggc_cache_tab_t_heap_reserve(%struct.VEC_const_ggc_cache_tab_t_heap** nonnull @extra_cache_vec, i32 1) #7, !dbg !888
  %0 = load %struct.VEC_const_ggc_cache_tab_t_heap*, %struct.VEC_const_ggc_cache_tab_t_heap** @extra_cache_vec, align 8, !dbg !888
  %tobool = icmp eq %struct.VEC_const_ggc_cache_tab_t_heap* %0, null, !dbg !888
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !888

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_heap, %struct.VEC_const_ggc_cache_tab_t_heap* %0, i64 0, i32 0, !dbg !888
  br label %cond.end, !dbg !888

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_const_ggc_cache_tab_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !888
  %call1 = tail call fastcc %struct.ggc_cache_tab** @VEC_const_ggc_cache_tab_t_base_quick_push(%struct.VEC_const_ggc_cache_tab_t_base* %cond, %struct.ggc_cache_tab* %obj_) #7, !dbg !888
  ret %struct.ggc_cache_tab** %call1, !dbg !888
}

; Function Attrs: nounwind uwtable
define dso_local void @ggc_mark_roots() local_unnamed_addr #4 !dbg !889 {
entry:
  %rtp = alloca %struct.ggc_root_tab*, align 8
  %ctp = alloca %struct.ggc_cache_tab*, align 8
  %0 = bitcast %struct.ggc_root_tab** %rtp to i8*, !dbg !903
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !903
  %1 = bitcast %struct.ggc_cache_tab** %ctp to i8*, !dbg !904
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !904
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_ggc_deletable_rtab, i64 0, i64 0), metadata !893, metadata !DIExpression()), !dbg !905
  br label %for.cond, !dbg !906

for.cond:                                         ; preds = %for.inc4, %entry
  %rt.0 = phi %struct.ggc_root_tab** [ getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_ggc_deletable_rtab, i64 0, i64 0), %entry ], [ %incdec.ptr5, %for.inc4 ], !dbg !908
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rt.0, metadata !893, metadata !DIExpression()), !dbg !905
  %2 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.0, align 8, !dbg !909
  %tobool = icmp eq %struct.ggc_root_tab* %2, null, !dbg !911
  br i1 %tobool, label %for.cond7.preheader, label %for.body, !dbg !911

for.cond7.preheader:                              ; preds = %for.cond
  br label %for.cond7, !dbg !912

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %2, metadata !896, metadata !DIExpression()), !dbg !905
  br label %for.cond1, !dbg !914

for.cond1:                                        ; preds = %for.body2, %for.body
  %rti.0 = phi %struct.ggc_root_tab* [ %2, %for.body ], [ %incdec.ptr, %for.body2 ], !dbg !916
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.0, metadata !896, metadata !DIExpression()), !dbg !905
  %base = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 0, !dbg !917
  %3 = load i8*, i8** %base, align 8, !dbg !917
  %cmp = icmp eq i8* %3, null, !dbg !919
  br i1 %cmp, label %for.inc4, label %for.body2, !dbg !920

for.body2:                                        ; preds = %for.cond1
  %stride = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 2, !dbg !921
  %4 = load i64, i64* %stride, align 8, !dbg !921
  %call = tail call i8* @memset(i8* nonnull %3, i32 0, i64 %4) #6, !dbg !922
  %incdec.ptr = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 1, !dbg !923
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr, metadata !896, metadata !DIExpression()), !dbg !905
  br label %for.cond1, !dbg !924, !llvm.loop !925

for.inc4:                                         ; preds = %for.cond1
  %incdec.ptr5 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.0, i64 1, !dbg !927
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %incdec.ptr5, metadata !893, metadata !DIExpression()), !dbg !905
  br label %for.cond, !dbg !928, !llvm.loop !929

for.cond7:                                        ; preds = %for.cond7.preheader, %for.inc24
  %rt.1 = phi %struct.ggc_root_tab** [ %incdec.ptr25, %for.inc24 ], [ getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_ggc_rtab, i64 0, i64 0), %for.cond7.preheader ], !dbg !931
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rt.1, metadata !893, metadata !DIExpression()), !dbg !905
  %5 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.1, align 8, !dbg !932
  %tobool8 = icmp eq %struct.ggc_root_tab* %5, null, !dbg !912
  br i1 %tobool8, label %for.cond27.preheader, label %for.body9, !dbg !912

for.cond27.preheader:                             ; preds = %for.cond7
  br label %for.cond27, !dbg !934

for.body9:                                        ; preds = %for.cond7
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %5, metadata !896, metadata !DIExpression()), !dbg !905
  br label %for.cond10, !dbg !936

for.cond10:                                       ; preds = %for.inc21, %for.body9
  %rti.1 = phi %struct.ggc_root_tab* [ %5, %for.body9 ], [ %incdec.ptr22, %for.inc21 ], !dbg !938
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.1, metadata !896, metadata !DIExpression()), !dbg !905
  %base11 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 0, i32 0, !dbg !939
  %6 = load i8*, i8** %base11, align 8, !dbg !939
  %cmp12 = icmp eq i8* %6, null, !dbg !941
  br i1 %cmp12, label %for.inc24, label %for.cond14.preheader, !dbg !942

for.cond14.preheader:                             ; preds = %for.cond10
  %nelt = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 0, i32 1, !dbg !943
  %cb = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 0, i32 3, !dbg !943
  %stride18 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 0, i32 2, !dbg !943
  br label %for.cond14, !dbg !946

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %i.0 = phi i64 [ %inc, %for.body16 ], [ 0, %for.cond14.preheader ], !dbg !947
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !902, metadata !DIExpression()), !dbg !905
  %7 = load i64, i64* %nelt, align 8, !dbg !948
  %cmp15 = icmp ult i64 %i.0, %7, !dbg !949
  br i1 %cmp15, label %for.body16, label %for.inc21, !dbg !946

for.body16:                                       ; preds = %for.cond14
  %8 = load void (i8*)*, void (i8*)** %cb, align 8, !dbg !950
  %9 = load i8*, i8** %base11, align 8, !dbg !951
  %10 = load i64, i64* %stride18, align 8, !dbg !952
  %mul = mul i64 %10, %i.0, !dbg !953
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %mul, !dbg !954
  %11 = bitcast i8* %add.ptr to i8**, !dbg !955
  %12 = load i8*, i8** %11, align 8, !dbg !955
  tail call void %8(i8* %12) #6, !dbg !956
  %inc = add i64 %i.0, 1, !dbg !957
  call void @llvm.dbg.value(metadata i64 %inc, metadata !902, metadata !DIExpression()), !dbg !905
  br label %for.cond14, !dbg !958, !llvm.loop !959

for.inc21:                                        ; preds = %for.cond14
  %incdec.ptr22 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 1, !dbg !961
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr22, metadata !896, metadata !DIExpression()), !dbg !905
  br label %for.cond10, !dbg !962, !llvm.loop !963

for.inc24:                                        ; preds = %for.cond10
  %incdec.ptr25 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.1, i64 1, !dbg !965
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %incdec.ptr25, metadata !893, metadata !DIExpression()), !dbg !905
  br label %for.cond7, !dbg !966, !llvm.loop !967

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc54
  %i.1 = phi i64 [ %inc55, %for.inc54 ], [ 0, %for.cond27.preheader ], !dbg !969
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !902, metadata !DIExpression()), !dbg !905
  %13 = load %struct.VEC_const_ggc_root_tab_t_heap*, %struct.VEC_const_ggc_root_tab_t_heap** @extra_root_vec, align 8, !dbg !970
  %base29 = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_heap, %struct.VEC_const_ggc_root_tab_t_heap* %13, i64 0, i32 0, !dbg !970
  %conv = trunc i64 %i.1 to i32, !dbg !970
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rtp, metadata !897, metadata !DIExpression(DW_OP_deref)), !dbg !905
  %call30 = call fastcc i32 @VEC_const_ggc_root_tab_t_base_iterate(%struct.VEC_const_ggc_root_tab_t_base* %base29, i32 %conv, %struct.ggc_root_tab** nonnull %rtp) #7, !dbg !970
  %tobool31 = icmp eq i32 %call30, 0, !dbg !934
  br i1 %tobool31, label %for.end56, label %for.body32, !dbg !934

for.body32:                                       ; preds = %for.cond27
  %14 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rtp, align 8, !dbg !972
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %14, metadata !897, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %14, metadata !896, metadata !DIExpression()), !dbg !905
  br label %for.cond33, !dbg !975

for.cond33:                                       ; preds = %for.inc51, %for.body32
  %i.2 = phi i64 [ %i.1, %for.body32 ], [ %i.3.lcssa, %for.inc51 ], !dbg !969
  %rti.2 = phi %struct.ggc_root_tab* [ %14, %for.body32 ], [ %incdec.ptr52, %for.inc51 ], !dbg !976
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.2, metadata !896, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !902, metadata !DIExpression()), !dbg !905
  %base34 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 0, i32 0, !dbg !977
  %15 = load i8*, i8** %base34, align 8, !dbg !977
  %cmp35 = icmp eq i8* %15, null, !dbg !979
  br i1 %cmp35, label %for.inc54, label %for.cond38.preheader, !dbg !980

for.cond38.preheader:                             ; preds = %for.cond33
  %nelt39 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 0, i32 1, !dbg !981
  %cb43 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 0, i32 3, !dbg !981
  %stride45 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 0, i32 2, !dbg !981
  br label %for.cond38, !dbg !984

for.cond38:                                       ; preds = %for.cond38.preheader, %for.body42
  %i.3 = phi i64 [ %inc49, %for.body42 ], [ 0, %for.cond38.preheader ], !dbg !985
  call void @llvm.dbg.value(metadata i64 %i.3, metadata !902, metadata !DIExpression()), !dbg !905
  %16 = load i64, i64* %nelt39, align 8, !dbg !986
  %cmp40 = icmp ult i64 %i.3, %16, !dbg !987
  br i1 %cmp40, label %for.body42, label %for.inc51, !dbg !984

for.body42:                                       ; preds = %for.cond38
  %17 = load void (i8*)*, void (i8*)** %cb43, align 8, !dbg !988
  %18 = load i8*, i8** %base34, align 8, !dbg !989
  %19 = load i64, i64* %stride45, align 8, !dbg !990
  %mul46 = mul i64 %19, %i.3, !dbg !991
  %add.ptr47 = getelementptr inbounds i8, i8* %18, i64 %mul46, !dbg !992
  %20 = bitcast i8* %add.ptr47 to i8**, !dbg !993
  %21 = load i8*, i8** %20, align 8, !dbg !993
  call void %17(i8* %21) #6, !dbg !994
  %inc49 = add i64 %i.3, 1, !dbg !995
  call void @llvm.dbg.value(metadata i64 %inc49, metadata !902, metadata !DIExpression()), !dbg !905
  br label %for.cond38, !dbg !996, !llvm.loop !997

for.inc51:                                        ; preds = %for.cond38
  %i.3.lcssa = phi i64 [ %i.3, %for.cond38 ], !dbg !985
  call void @llvm.dbg.value(metadata i64 %i.3.lcssa, metadata !902, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 %i.3.lcssa, metadata !902, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 %i.3.lcssa, metadata !902, metadata !DIExpression()), !dbg !905
  %incdec.ptr52 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 1, !dbg !999
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr52, metadata !896, metadata !DIExpression()), !dbg !905
  br label %for.cond33, !dbg !1000, !llvm.loop !1001

for.inc54:                                        ; preds = %for.cond33
  %i.2.lcssa = phi i64 [ %i.2, %for.cond33 ], !dbg !969
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !902, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !902, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !902, metadata !DIExpression()), !dbg !905
  %inc55 = add i64 %i.2.lcssa, 1, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %inc55, metadata !902, metadata !DIExpression()), !dbg !905
  br label %for.cond27, !dbg !1004, !llvm.loop !1005

for.end56:                                        ; preds = %for.cond27
  %22 = load i8, i8* @ggc_protect_identifiers, align 1, !dbg !1007
  %tobool57 = icmp eq i8 %22, 0, !dbg !1007
  br i1 %tobool57, label %if.end, label %if.then, !dbg !1009

if.then:                                          ; preds = %for.end56
  call void @ggc_mark_stringpool() #6, !dbg !1010
  br label %if.end, !dbg !1010

if.end:                                           ; preds = %for.end56, %if.then
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab** getelementptr inbounds ([0 x %struct.ggc_cache_tab*], [0 x %struct.ggc_cache_tab*]* @gt_ggc_cache_rtab, i64 0, i64 0), metadata !898, metadata !DIExpression()), !dbg !905
  br label %for.cond58, !dbg !1011

for.cond58:                                       ; preds = %for.body60, %if.end
  %ct.0 = phi %struct.ggc_cache_tab** [ getelementptr inbounds ([0 x %struct.ggc_cache_tab*], [0 x %struct.ggc_cache_tab*]* @gt_ggc_cache_rtab, i64 0, i64 0), %if.end ], [ %incdec.ptr62, %for.body60 ], !dbg !1013
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab** %ct.0, metadata !898, metadata !DIExpression()), !dbg !905
  %23 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %ct.0, align 8, !dbg !1014
  %tobool59 = icmp eq %struct.ggc_cache_tab* %23, null, !dbg !1016
  br i1 %tobool59, label %for.cond64.preheader, label %for.body60, !dbg !1016

for.cond64.preheader:                             ; preds = %for.cond58
  br label %for.cond64, !dbg !1017

for.body60:                                       ; preds = %for.cond58
  call fastcc void @ggc_scan_cache_tab(%struct.ggc_cache_tab* nonnull %23) #7, !dbg !1019
  %incdec.ptr62 = getelementptr inbounds %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %ct.0, i64 1, !dbg !1020
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab** %incdec.ptr62, metadata !898, metadata !DIExpression()), !dbg !905
  br label %for.cond58, !dbg !1021, !llvm.loop !1022

for.cond64:                                       ; preds = %for.cond64.preheader, %for.body74
  %i.4 = phi i64 [ %inc76, %for.body74 ], [ 0, %for.cond64.preheader ], !dbg !1024
  call void @llvm.dbg.value(metadata i64 %i.4, metadata !902, metadata !DIExpression()), !dbg !905
  %24 = load %struct.VEC_const_ggc_cache_tab_t_heap*, %struct.VEC_const_ggc_cache_tab_t_heap** @extra_cache_vec, align 8, !dbg !1025
  %base67 = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_heap, %struct.VEC_const_ggc_cache_tab_t_heap* %24, i64 0, i32 0, !dbg !1025
  %conv71 = trunc i64 %i.4 to i32, !dbg !1025
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab** %ctp, metadata !901, metadata !DIExpression(DW_OP_deref)), !dbg !905
  %call72 = call fastcc i32 @VEC_const_ggc_cache_tab_t_base_iterate(%struct.VEC_const_ggc_cache_tab_t_base* %base67, i32 %conv71, %struct.ggc_cache_tab** nonnull %ctp) #7, !dbg !1025
  %tobool73 = icmp eq i32 %call72, 0, !dbg !1017
  br i1 %tobool73, label %for.end77, label %for.body74, !dbg !1017

for.body74:                                       ; preds = %for.cond64
  %25 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %ctp, align 8, !dbg !1027
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab* %25, metadata !901, metadata !DIExpression()), !dbg !905
  call fastcc void @ggc_scan_cache_tab(%struct.ggc_cache_tab* %25) #7, !dbg !1028
  %inc76 = add i64 %i.4, 1, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %inc76, metadata !902, metadata !DIExpression()), !dbg !905
  br label %for.cond64, !dbg !1030, !llvm.loop !1031

for.end77:                                        ; preds = %for.cond64
  %26 = load i8, i8* @ggc_protect_identifiers, align 1, !dbg !1033
  %tobool78 = icmp eq i8 %26, 0, !dbg !1033
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !1035

if.then79:                                        ; preds = %for.end77
  call void @ggc_purge_stringpool() #6, !dbg !1036
  br label %if.end80, !dbg !1036

if.end80:                                         ; preds = %for.end77, %if.then79
  %call81 = call i32 @invoke_plugin_callbacks(i32 7, i8* null) #6, !dbg !1037
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !1038
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1038
  ret void, !dbg !1038
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_const_ggc_root_tab_t_base_iterate(%struct.VEC_const_ggc_root_tab_t_base* %vec_, i32 %ix_, %struct.ggc_root_tab** %ptr) unnamed_addr #0 !dbg !1039 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_const_ggc_root_tab_t_base* %vec_, metadata !1045, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !1046, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %ptr, metadata !1047, metadata !DIExpression()), !dbg !1048
  %tobool = icmp eq %struct.VEC_const_ggc_root_tab_t_base* %vec_, null, !dbg !1049
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !1049

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, %struct.VEC_const_ggc_root_tab_t_base* %vec_, i64 0, i32 0, !dbg !1049
  %0 = load i32, i32* %num, align 8, !dbg !1049
  %cmp = icmp ugt i32 %0, %ix_, !dbg !1049
  br i1 %cmp, label %if.then, label %if.else, !dbg !1051

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !1052
  %arrayidx = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, %struct.VEC_const_ggc_root_tab_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !1052
  %1 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %arrayidx, align 8, !dbg !1052
  br label %return, !dbg !1052

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !1054

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.ggc_root_tab* [ null, %if.else ], [ %1, %if.then ], !dbg !1056
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !1056
  store %struct.ggc_root_tab* %storemerge, %struct.ggc_root_tab** %ptr, align 8, !dbg !1056
  ret i32 %retval.0, !dbg !1051
}

declare dso_local void @ggc_mark_stringpool() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ggc_scan_cache_tab(%struct.ggc_cache_tab* %ctp) unnamed_addr #4 !dbg !1057 {
entry:
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab* %ctp, metadata !1061, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab* %ctp, metadata !1062, metadata !DIExpression()), !dbg !1063
  br label %for.cond, !dbg !1064

for.cond:                                         ; preds = %for.inc, %entry
  %cti.0 = phi %struct.ggc_cache_tab* [ %ctp, %entry ], [ %incdec.ptr, %for.inc ], !dbg !1066
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab* %cti.0, metadata !1062, metadata !DIExpression()), !dbg !1063
  %base = getelementptr inbounds %struct.ggc_cache_tab, %struct.ggc_cache_tab* %cti.0, i64 0, i32 0, !dbg !1067
  %0 = load %struct.htab**, %struct.htab*** %base, align 8, !dbg !1067
  %cmp = icmp eq %struct.htab** %0, null, !dbg !1069
  br i1 %cmp, label %for.end, label %for.body, !dbg !1070

for.body:                                         ; preds = %for.cond
  %1 = load %struct.htab*, %struct.htab** %0, align 8, !dbg !1071
  %tobool = icmp eq %struct.htab* %1, null, !dbg !1071
  br i1 %tobool, label %for.inc, label %if.then, !dbg !1073

if.then:                                          ; preds = %for.body
  %2 = bitcast %struct.htab* %1 to i8*, !dbg !1073
  %call = tail call i32 @ggc_set_mark(i8* nonnull %2) #6, !dbg !1074
  %3 = load %struct.htab**, %struct.htab*** %base, align 8, !dbg !1076
  %4 = load %struct.htab*, %struct.htab** %3, align 8, !dbg !1077
  %5 = bitcast %struct.ggc_cache_tab* %cti.0 to i8*, !dbg !1078
  tail call void @htab_traverse_noresize(%struct.htab* %4, i32 (i8**, i8*)* nonnull @ggc_htab_delete, i8* %5) #6, !dbg !1079
  %6 = load %struct.htab**, %struct.htab*** %base, align 8, !dbg !1080
  %7 = load %struct.htab*, %struct.htab** %6, align 8, !dbg !1081
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %7, i64 0, i32 3, !dbg !1082
  %8 = bitcast i8*** %entries to i8**, !dbg !1082
  %9 = load i8*, i8** %8, align 8, !dbg !1082
  %call5 = tail call i32 @ggc_set_mark(i8* %9) #6, !dbg !1083
  br label %for.inc, !dbg !1084

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr inbounds %struct.ggc_cache_tab, %struct.ggc_cache_tab* %cti.0, i64 1, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab* %incdec.ptr, metadata !1062, metadata !DIExpression()), !dbg !1063
  br label %for.cond, !dbg !1086, !llvm.loop !1087

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1089
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_const_ggc_cache_tab_t_base_iterate(%struct.VEC_const_ggc_cache_tab_t_base* %vec_, i32 %ix_, %struct.ggc_cache_tab** %ptr) unnamed_addr #0 !dbg !1090 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_const_ggc_cache_tab_t_base* %vec_, metadata !1096, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !1097, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab** %ptr, metadata !1098, metadata !DIExpression()), !dbg !1099
  %tobool = icmp eq %struct.VEC_const_ggc_cache_tab_t_base* %vec_, null, !dbg !1100
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !1100

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, %struct.VEC_const_ggc_cache_tab_t_base* %vec_, i64 0, i32 0, !dbg !1100
  %0 = load i32, i32* %num, align 8, !dbg !1100
  %cmp = icmp ugt i32 %0, %ix_, !dbg !1100
  br i1 %cmp, label %if.then, label %if.else, !dbg !1102

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !1103
  %arrayidx = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, %struct.VEC_const_ggc_cache_tab_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !1103
  %1 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %arrayidx, align 8, !dbg !1103
  br label %return, !dbg !1103

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !1105

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.ggc_cache_tab* [ null, %if.else ], [ %1, %if.then ], !dbg !1107
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !1107
  store %struct.ggc_cache_tab* %storemerge, %struct.ggc_cache_tab** %ptr, align 8, !dbg !1107
  ret i32 %retval.0, !dbg !1102
}

declare dso_local void @ggc_purge_stringpool() local_unnamed_addr #1

declare dso_local i32 @invoke_plugin_callbacks(i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @ggc_alloc_cleared_stat(i64 %size) local_unnamed_addr #4 !dbg !1108 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !1112, metadata !DIExpression()), !dbg !1114
  %call = tail call i8* @ggc_alloc_stat(i64 %size) #6, !dbg !1115
  call void @llvm.dbg.value(metadata i8* %call, metadata !1113, metadata !DIExpression()), !dbg !1114
  %call1 = tail call i8* @memset(i8* %call, i32 0, i64 %size) #6, !dbg !1116
  ret i8* %call, !dbg !1117
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @ggc_realloc_stat(i8* %x, i64 %size) local_unnamed_addr #4 !dbg !1118 {
entry:
  call void @llvm.dbg.value(metadata i8* %x, metadata !1122, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %size, metadata !1123, metadata !DIExpression()), !dbg !1126
  %cmp = icmp eq i8* %x, null, !dbg !1127
  br i1 %cmp, label %if.then, label %if.end, !dbg !1129

if.then:                                          ; preds = %entry
  %call = tail call i8* @ggc_alloc_stat(i64 %size) #6, !dbg !1130
  br label %cleanup, !dbg !1131

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @ggc_get_size(i8* nonnull %x) #6, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1125, metadata !DIExpression()), !dbg !1126
  %cmp2 = icmp ult i64 %call1, %size, !dbg !1133
  br i1 %cmp2, label %if.end4, label %cleanup, !dbg !1135

if.end4:                                          ; preds = %if.end
  %call5 = tail call i8* @ggc_alloc_stat(i64 %size) #6, !dbg !1136
  call void @llvm.dbg.value(metadata i8* %call5, metadata !1124, metadata !DIExpression()), !dbg !1126
  %call6 = tail call i8* @memcpy(i8* %call5, i8* nonnull %x, i64 %call1) #6, !dbg !1137
  tail call void @ggc_free(i8* nonnull %x) #6, !dbg !1138
  br label %cleanup, !dbg !1139

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %call5, %if.end4 ], [ %x, %if.end ], !dbg !1126
  ret i8* %retval.0, !dbg !1140
}

declare dso_local i64 @ggc_get_size(i8*) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local void @ggc_free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @ggc_calloc(i64 %s1, i64 %s2) local_unnamed_addr #4 !dbg !1141 {
entry:
  call void @llvm.dbg.value(metadata i64 %s1, metadata !1143, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i64 %s2, metadata !1144, metadata !DIExpression()), !dbg !1145
  %mul = mul i64 %s1, %s2, !dbg !1146
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 %mul) #7, !dbg !1146
  ret i8* %call, !dbg !1147
}

; Function Attrs: nounwind uwtable
define dso_local i8* @ggc_splay_alloc(i32 %sz, i8* %nl) local_unnamed_addr #4 !dbg !1148 {
entry:
  call void @llvm.dbg.value(metadata i32 %sz, metadata !1152, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i8* %nl, metadata !1153, metadata !DIExpression()), !dbg !1154
  %tobool = icmp eq i8* %nl, null, !dbg !1155
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1155

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1155
  br label %cond.end, !dbg !1155

cond.end:                                         ; preds = %entry, %cond.true
  %conv = sext i32 %sz to i64, !dbg !1156
  %call = tail call i8* @ggc_alloc_stat(i64 %conv) #6, !dbg !1156
  ret i8* %call, !dbg !1157
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ggc_splay_dont_free(i8* %x, i8* %nl) local_unnamed_addr #4 !dbg !1158 {
entry:
  call void @llvm.dbg.value(metadata i8* %x, metadata !1160, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %nl, metadata !1161, metadata !DIExpression()), !dbg !1162
  %tobool = icmp eq i8* %nl, null, !dbg !1163
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1163

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1163
  br label %cond.end, !dbg !1163

cond.end:                                         ; preds = %entry, %cond.true
  ret void, !dbg !1164
}

; Function Attrs: nounwind uwtable
define dso_local void @ggc_print_common_statistics(%struct._IO_FILE* %stream, %struct.ggc_statistics* %stats) local_unnamed_addr #4 !dbg !1165 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, metadata !1169, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata %struct.ggc_statistics* %stats, metadata !1170, metadata !DIExpression()), !dbg !1171
  store %struct.ggc_statistics* %stats, %struct.ggc_statistics** @ggc_stats, align 8, !dbg !1172
  tail call void @ggc_collect() #6, !dbg !1173
  ret void, !dbg !1174
}

declare dso_local void @ggc_collect() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gt_pch_note_object(i8* %obj, i8* %note_ptr_cookie, void (i8*, i8*, void (i8*, i8*)*, i8*)* %note_ptr_fn, i32 %type) local_unnamed_addr #4 !dbg !1175 {
entry:
  call void @llvm.dbg.value(metadata i8* %obj, metadata !1179, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %note_ptr_cookie, metadata !1180, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata void (i8*, i8*, void (i8*, i8*)*, i8*)* %note_ptr_fn, metadata !1181, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 %type, metadata !1182, metadata !DIExpression()), !dbg !1184
  %switch = icmp ult i8* %obj, inttoptr (i64 2 to i8*), !dbg !1185
  br i1 %switch, label %cleanup, label %if.end, !dbg !1185

if.end:                                           ; preds = %entry
  %0 = load %struct.htab*, %struct.htab** @saving_htab, align 8, !dbg !1187
  %1 = ptrtoint i8* %obj to i64, !dbg !1188
  %2 = lshr i64 %1, 3, !dbg !1188
  %conv = trunc i64 %2 to i32, !dbg !1188
  %call = tail call i8** @htab_find_slot_with_hash(%struct.htab* %0, i8* %obj, i32 %conv, i32 1) #6, !dbg !1189
  %3 = bitcast i8** %call to %struct.ptr_data**, !dbg !1190
  call void @llvm.dbg.value(metadata %struct.ptr_data** %3, metadata !1183, metadata !DIExpression()), !dbg !1184
  %4 = load %struct.ptr_data*, %struct.ptr_data** %3, align 8, !dbg !1191
  %cmp2 = icmp eq %struct.ptr_data* %4, null, !dbg !1193
  br i1 %cmp2, label %if.end11, label %if.then4, !dbg !1194

if.then4:                                         ; preds = %if.end
  %note_ptr_fn5 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %4, i64 0, i32 2, !dbg !1195
  %5 = load void (i8*, i8*, void (i8*, i8*)*, i8*)*, void (i8*, i8*, void (i8*, i8*)*, i8*)** %note_ptr_fn5, align 8, !dbg !1195
  %cmp6 = icmp eq void (i8*, i8*, void (i8*, i8*)*, i8*)* %5, %note_ptr_fn, !dbg !1195
  br i1 %cmp6, label %land.lhs.true, label %cond.true, !dbg !1195

land.lhs.true:                                    ; preds = %if.then4
  %note_ptr_cookie8 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %4, i64 0, i32 1, !dbg !1195
  %6 = load i8*, i8** %note_ptr_cookie8, align 8, !dbg !1195
  %cmp9 = icmp eq i8* %6, %note_ptr_cookie, !dbg !1195
  br i1 %cmp9, label %cleanup, label %cond.true, !dbg !1195

cond.true:                                        ; preds = %land.lhs.true, %if.then4
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 330, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1195
  br label %cleanup, !dbg !1195

if.end11:                                         ; preds = %if.end
  %call12 = tail call i8* @xcalloc(i64 1, i64 56) #6, !dbg !1197
  store i8* %call12, i8** %call, align 8, !dbg !1198
  %obj13 = bitcast i8* %call12 to i8**, !dbg !1199
  store i8* %obj, i8** %obj13, align 8, !dbg !1200
  %7 = load %struct.ptr_data*, %struct.ptr_data** %3, align 8, !dbg !1201
  %note_ptr_fn14 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %7, i64 0, i32 2, !dbg !1202
  store void (i8*, i8*, void (i8*, i8*)*, i8*)* %note_ptr_fn, void (i8*, i8*, void (i8*, i8*)*, i8*)** %note_ptr_fn14, align 8, !dbg !1203
  %8 = load %struct.ptr_data*, %struct.ptr_data** %3, align 8, !dbg !1204
  %note_ptr_cookie15 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %8, i64 0, i32 1, !dbg !1205
  store i8* %note_ptr_cookie, i8** %note_ptr_cookie15, align 8, !dbg !1206
  %cmp16 = icmp eq void (i8*, i8*, void (i8*, i8*)*, i8*)* %note_ptr_fn, @gt_pch_p_S, !dbg !1207
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !1209

if.then18:                                        ; preds = %if.end11
  %call19 = tail call i64 @strlen(i8* %obj) #6, !dbg !1210
  %add = add i64 %call19, 1, !dbg !1211
  %9 = load %struct.ptr_data*, %struct.ptr_data** %3, align 8, !dbg !1212
  %size = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %9, i64 0, i32 4, !dbg !1213
  store i64 %add, i64* %size, align 8, !dbg !1214
  br label %if.end22, !dbg !1215

if.else:                                          ; preds = %if.end11
  %call20 = tail call i64 @ggc_get_size(i8* %obj) #6, !dbg !1216
  %10 = load %struct.ptr_data*, %struct.ptr_data** %3, align 8, !dbg !1217
  %size21 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %10, i64 0, i32 4, !dbg !1218
  store i64 %call20, i64* %size21, align 8, !dbg !1219
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18
  %11 = load %struct.ptr_data*, %struct.ptr_data** %3, align 8, !dbg !1220
  %type23 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %11, i64 0, i32 6, !dbg !1221
  store i32 %type, i32* %type23, align 8, !dbg !1222
  br label %cleanup, !dbg !1223

cleanup:                                          ; preds = %entry, %cond.true, %land.lhs.true, %if.end22
  %retval.0 = phi i32 [ 1, %if.end22 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %cond.true ], !dbg !1184
  ret i32 %retval.0, !dbg !1224
}

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #1

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local void @gt_pch_p_S(i8*, i8*, void (i8*, i8*)*, i8*) #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_note_reorder(i8* %obj, i8* %note_ptr_cookie, void (i8*, i8*, void (i8*, i8*)*, i8*)* %reorder_fn) local_unnamed_addr #4 !dbg !1225 {
entry:
  call void @llvm.dbg.value(metadata i8* %obj, metadata !1229, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %note_ptr_cookie, metadata !1230, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata void (i8*, i8*, void (i8*, i8*)*, i8*)* %reorder_fn, metadata !1231, metadata !DIExpression()), !dbg !1233
  %switch = icmp ult i8* %obj, inttoptr (i64 2 to i8*), !dbg !1234
  br i1 %switch, label %cleanup.cont, label %if.end, !dbg !1234

if.end:                                           ; preds = %entry
  %0 = load %struct.htab*, %struct.htab** @saving_htab, align 8, !dbg !1236
  %1 = ptrtoint i8* %obj to i64, !dbg !1237
  %2 = lshr i64 %1, 3, !dbg !1237
  %conv = trunc i64 %2 to i32, !dbg !1237
  %call = tail call i8* @htab_find_with_hash(%struct.htab* %0, i8* %obj, i32 %conv) #6, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %call, metadata !1232, metadata !DIExpression()), !dbg !1233
  %tobool = icmp eq i8* %call, null, !dbg !1239
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !1239

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* %call, metadata !1232, metadata !DIExpression()), !dbg !1233
  %note_ptr_cookie2 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1239
  %3 = bitcast i8* %note_ptr_cookie2 to i8**, !dbg !1239
  %4 = load i8*, i8** %3, align 8, !dbg !1239
  %cmp3 = icmp eq i8* %4, %note_ptr_cookie, !dbg !1239
  br i1 %cmp3, label %cond.end, label %cond.true, !dbg !1239

cond.true:                                        ; preds = %if.end, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 359, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1239
  br label %cond.end, !dbg !1239

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %reorder_fn5 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !1240
  %5 = bitcast i8* %reorder_fn5 to void (i8*, i8*, void (i8*, i8*)*, i8*)**, !dbg !1240
  store void (i8*, i8*, void (i8*, i8*)*, i8*)* %reorder_fn, void (i8*, i8*, void (i8*, i8*)*, i8*)** %5, align 8, !dbg !1241
  br label %cleanup.cont, !dbg !1242

cleanup.cont:                                     ; preds = %entry, %cond.end
  ret void, !dbg !1242
}

declare dso_local i8* @htab_find_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_save(%struct._IO_FILE* %f) local_unnamed_addr #4 !dbg !1243 {
entry:
  %state = alloca %struct.traversal_state, align 8
  %mmi = alloca %struct.mmap_info, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !1247, metadata !DIExpression()), !dbg !1264
  %0 = bitcast %struct.traversal_state* %state to i8*, !dbg !1265
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !1265
  call void @llvm.dbg.value(metadata i8* null, metadata !1252, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i64 0, metadata !1253, metadata !DIExpression()), !dbg !1264
  %1 = bitcast %struct.mmap_info* %mmi to i8*, !dbg !1266
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !1266
  %2 = load i64 ()*, i64 ()** getelementptr inbounds (%struct.host_hooks, %struct.host_hooks* @host_hooks, i64 0, i32 3), align 8, !dbg !1267
  %call = tail call i64 %2() #6, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %call, metadata !1260, metadata !DIExpression()), !dbg !1264
  tail call void @gt_pch_save_stringpool() #6, !dbg !1269
  %call1 = tail call %struct.htab* @htab_create(i64 50000, i32 (i8*)* nonnull @saving_htab_hash, i32 (i8*, i8*)* nonnull @saving_htab_eq, void (i8*)* nonnull @free) #6, !dbg !1270
  store %struct.htab* %call1, %struct.htab** @saving_htab, align 8, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_ggc_rtab, i64 0, i64 0), metadata !1248, metadata !DIExpression()), !dbg !1264
  br label %for.cond, !dbg !1272

for.cond:                                         ; preds = %for.inc10, %entry
  %rt.0 = phi %struct.ggc_root_tab** [ getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_ggc_rtab, i64 0, i64 0), %entry ], [ %incdec.ptr11, %for.inc10 ], !dbg !1274
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rt.0, metadata !1248, metadata !DIExpression()), !dbg !1264
  %3 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.0, align 8, !dbg !1275
  %tobool = icmp eq %struct.ggc_root_tab* %3, null, !dbg !1277
  br i1 %tobool, label %for.cond13.preheader, label %for.body, !dbg !1277

for.cond13.preheader:                             ; preds = %for.cond
  br label %for.cond13, !dbg !1278

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %3, metadata !1249, metadata !DIExpression()), !dbg !1264
  br label %for.cond2, !dbg !1280

for.cond2:                                        ; preds = %for.inc8, %for.body
  %rti.0 = phi %struct.ggc_root_tab* [ %3, %for.body ], [ %incdec.ptr, %for.inc8 ], !dbg !1282
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.0, metadata !1249, metadata !DIExpression()), !dbg !1264
  %base = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 0, !dbg !1283
  %4 = load i8*, i8** %base, align 8, !dbg !1283
  %cmp = icmp eq i8* %4, null, !dbg !1285
  br i1 %cmp, label %for.inc10, label %for.cond4.preheader, !dbg !1286

for.cond4.preheader:                              ; preds = %for.cond2
  %nelt = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 1, !dbg !1287
  %pchw = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 4, !dbg !1287
  %stride = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 2, !dbg !1287
  br label %for.cond4, !dbg !1290

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %i.0 = phi i64 [ %inc, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1291
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1250, metadata !DIExpression()), !dbg !1264
  %5 = load i64, i64* %nelt, align 8, !dbg !1292
  %cmp5 = icmp ult i64 %i.0, %5, !dbg !1293
  br i1 %cmp5, label %for.body6, label %for.inc8, !dbg !1290

for.body6:                                        ; preds = %for.cond4
  %6 = load void (i8*)*, void (i8*)** %pchw, align 8, !dbg !1294
  %7 = load i8*, i8** %base, align 8, !dbg !1295
  %8 = load i64, i64* %stride, align 8, !dbg !1296
  %mul = mul i64 %8, %i.0, !dbg !1297
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %mul, !dbg !1298
  %9 = bitcast i8* %add.ptr to i8**, !dbg !1299
  %10 = load i8*, i8** %9, align 8, !dbg !1299
  tail call void %6(i8* %10) #6, !dbg !1300
  %inc = add i64 %i.0, 1, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1250, metadata !DIExpression()), !dbg !1264
  br label %for.cond4, !dbg !1302, !llvm.loop !1303

for.inc8:                                         ; preds = %for.cond4
  %incdec.ptr = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 1, !dbg !1305
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr, metadata !1249, metadata !DIExpression()), !dbg !1264
  br label %for.cond2, !dbg !1306, !llvm.loop !1307

for.inc10:                                        ; preds = %for.cond2
  %incdec.ptr11 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.0, i64 1, !dbg !1309
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %incdec.ptr11, metadata !1248, metadata !DIExpression()), !dbg !1264
  br label %for.cond, !dbg !1310, !llvm.loop !1311

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc35
  %rt.1 = phi %struct.ggc_root_tab** [ %incdec.ptr36, %for.inc35 ], [ getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_pch_cache_rtab, i64 0, i64 0), %for.cond13.preheader ], !dbg !1313
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rt.1, metadata !1248, metadata !DIExpression()), !dbg !1264
  %11 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.1, align 8, !dbg !1314
  %tobool14 = icmp eq %struct.ggc_root_tab* %11, null, !dbg !1278
  br i1 %tobool14, label %for.end37, label %for.body15, !dbg !1278

for.body15:                                       ; preds = %for.cond13
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %11, metadata !1249, metadata !DIExpression()), !dbg !1264
  br label %for.cond16, !dbg !1316

for.cond16:                                       ; preds = %for.inc32, %for.body15
  %rti.1 = phi %struct.ggc_root_tab* [ %11, %for.body15 ], [ %incdec.ptr33, %for.inc32 ], !dbg !1318
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.1, metadata !1249, metadata !DIExpression()), !dbg !1264
  %base17 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 0, i32 0, !dbg !1319
  %12 = load i8*, i8** %base17, align 8, !dbg !1319
  %cmp18 = icmp eq i8* %12, null, !dbg !1321
  br i1 %cmp18, label %for.inc35, label %for.cond20.preheader, !dbg !1322

for.cond20.preheader:                             ; preds = %for.cond16
  %nelt21 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 0, i32 1, !dbg !1323
  %pchw24 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 0, i32 4, !dbg !1323
  %stride26 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 0, i32 2, !dbg !1323
  br label %for.cond20, !dbg !1326

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body23
  %i.1 = phi i64 [ %inc30, %for.body23 ], [ 0, %for.cond20.preheader ], !dbg !1327
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1250, metadata !DIExpression()), !dbg !1264
  %13 = load i64, i64* %nelt21, align 8, !dbg !1328
  %cmp22 = icmp ult i64 %i.1, %13, !dbg !1329
  br i1 %cmp22, label %for.body23, label %for.inc32, !dbg !1326

for.body23:                                       ; preds = %for.cond20
  %14 = load void (i8*)*, void (i8*)** %pchw24, align 8, !dbg !1330
  %15 = load i8*, i8** %base17, align 8, !dbg !1331
  %16 = load i64, i64* %stride26, align 8, !dbg !1332
  %mul27 = mul i64 %16, %i.1, !dbg !1333
  %add.ptr28 = getelementptr inbounds i8, i8* %15, i64 %mul27, !dbg !1334
  %17 = bitcast i8* %add.ptr28 to i8**, !dbg !1335
  %18 = load i8*, i8** %17, align 8, !dbg !1335
  tail call void %14(i8* %18) #6, !dbg !1336
  %inc30 = add i64 %i.1, 1, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %inc30, metadata !1250, metadata !DIExpression()), !dbg !1264
  br label %for.cond20, !dbg !1338, !llvm.loop !1339

for.inc32:                                        ; preds = %for.cond20
  %incdec.ptr33 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 1, !dbg !1341
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr33, metadata !1249, metadata !DIExpression()), !dbg !1264
  br label %for.cond16, !dbg !1342, !llvm.loop !1343

for.inc35:                                        ; preds = %for.cond16
  %incdec.ptr36 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.1, i64 1, !dbg !1345
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %incdec.ptr36, metadata !1248, metadata !DIExpression()), !dbg !1264
  br label %for.cond13, !dbg !1346, !llvm.loop !1347

for.end37:                                        ; preds = %for.cond13
  %f38 = getelementptr inbounds %struct.traversal_state, %struct.traversal_state* %state, i64 0, i32 0, !dbg !1349
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f38, align 8, !dbg !1350
  %call39 = tail call %struct.ggc_pch_data* @init_ggc_pch() #6, !dbg !1351
  %d = getelementptr inbounds %struct.traversal_state, %struct.traversal_state* %state, i64 0, i32 1, !dbg !1352
  store %struct.ggc_pch_data* %call39, %struct.ggc_pch_data** %d, align 8, !dbg !1353
  %count = getelementptr inbounds %struct.traversal_state, %struct.traversal_state* %state, i64 0, i32 2, !dbg !1354
  store i64 0, i64* %count, align 8, !dbg !1355
  %19 = load %struct.htab*, %struct.htab** @saving_htab, align 8, !dbg !1356
  call void @htab_traverse(%struct.htab* %19, i32 (i8**, i8*)* nonnull @call_count, i8* nonnull %0) #6, !dbg !1357
  %20 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %d, align 8, !dbg !1358
  %call41 = call i64 @ggc_pch_total_size(%struct.ggc_pch_data* %20) #6, !dbg !1359
  %size = getelementptr inbounds %struct.mmap_info, %struct.mmap_info* %mmi, i64 0, i32 1, !dbg !1360
  store i64 %call41, i64* %size, align 8, !dbg !1361
  %21 = load i8* (i64, i32)*, i8* (i64, i32)** getelementptr inbounds (%struct.host_hooks, %struct.host_hooks* @host_hooks, i64 0, i32 1), align 8, !dbg !1362
  %call43 = call i32 @fileno(%struct._IO_FILE* %f) #6, !dbg !1363
  %call44 = call i8* %21(i64 %call41, i32 %call43) #6, !dbg !1364
  %preferred_base = getelementptr inbounds %struct.mmap_info, %struct.mmap_info* %mmi, i64 0, i32 2, !dbg !1365
  store i8* %call44, i8** %preferred_base, align 8, !dbg !1366
  %22 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %d, align 8, !dbg !1367
  call void @ggc_pch_this_base(%struct.ggc_pch_data* %22, i8* %call44) #6, !dbg !1368
  %23 = load i64, i64* %count, align 8, !dbg !1369
  %mul48 = shl i64 %23, 3, !dbg !1369
  %call49 = call i8* @xmalloc(i64 %mul48) #6, !dbg !1369
  %ptrs = getelementptr inbounds %struct.traversal_state, %struct.traversal_state* %state, i64 0, i32 3, !dbg !1370
  %24 = bitcast %struct.ptr_data*** %ptrs to i8**, !dbg !1371
  store i8* %call49, i8** %24, align 8, !dbg !1371
  %ptrs_i = getelementptr inbounds %struct.traversal_state, %struct.traversal_state* %state, i64 0, i32 4, !dbg !1372
  store i64 0, i64* %ptrs_i, align 8, !dbg !1373
  %25 = load %struct.htab*, %struct.htab** @saving_htab, align 8, !dbg !1374
  call void @htab_traverse(%struct.htab* %25, i32 (i8**, i8*)* nonnull @call_alloc, i8* nonnull %0) #6, !dbg !1375
  %26 = load i8*, i8** %24, align 8, !dbg !1376
  %27 = load i64, i64* %count, align 8, !dbg !1377
  call void @spec_qsort(i8* %26, i64 %27, i64 8, i32 (i8*, i8*)* nonnull @compare_ptr_data) #6, !dbg !1378
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_pch_scalar_rtab, i64 0, i64 0), metadata !1248, metadata !DIExpression()), !dbg !1264
  br label %for.cond52, !dbg !1379

for.cond52:                                       ; preds = %for.inc66, %for.end37
  %rt.2 = phi %struct.ggc_root_tab** [ getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_pch_scalar_rtab, i64 0, i64 0), %for.end37 ], [ %incdec.ptr67, %for.inc66 ], !dbg !1381
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rt.2, metadata !1248, metadata !DIExpression()), !dbg !1264
  %28 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.2, align 8, !dbg !1382
  %tobool53 = icmp eq %struct.ggc_root_tab* %28, null, !dbg !1384
  br i1 %tobool53, label %for.end68, label %for.body54, !dbg !1384

for.body54:                                       ; preds = %for.cond52
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %28, metadata !1249, metadata !DIExpression()), !dbg !1264
  br label %for.cond55, !dbg !1385

for.cond55:                                       ; preds = %for.inc63, %for.body54
  %rti.2 = phi %struct.ggc_root_tab* [ %28, %for.body54 ], [ %incdec.ptr64, %for.inc63 ], !dbg !1387
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.2, metadata !1249, metadata !DIExpression()), !dbg !1264
  %base56 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 0, i32 0, !dbg !1388
  %29 = load i8*, i8** %base56, align 8, !dbg !1388
  %cmp57 = icmp eq i8* %29, null, !dbg !1390
  br i1 %cmp57, label %for.inc66, label %for.body58, !dbg !1391

for.body58:                                       ; preds = %for.cond55
  %stride60 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 0, i32 2, !dbg !1392
  %30 = load i64, i64* %stride60, align 8, !dbg !1392
  %call61 = call i64 @fwrite(i8* nonnull %29, i64 %30, i64 1, %struct._IO_FILE* %f) #6, !dbg !1394
  %cmp62 = icmp eq i64 %call61, 1, !dbg !1395
  br i1 %cmp62, label %for.inc63, label %if.then, !dbg !1396

if.then:                                          ; preds = %for.body58
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1397
  br label %for.inc63, !dbg !1397

for.inc63:                                        ; preds = %for.body58, %if.then
  %incdec.ptr64 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 1, !dbg !1398
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr64, metadata !1249, metadata !DIExpression()), !dbg !1264
  br label %for.cond55, !dbg !1399, !llvm.loop !1400

for.inc66:                                        ; preds = %for.cond55
  %incdec.ptr67 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.2, i64 1, !dbg !1402
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %incdec.ptr67, metadata !1248, metadata !DIExpression()), !dbg !1264
  br label %for.cond52, !dbg !1403, !llvm.loop !1404

for.end68:                                        ; preds = %for.cond52
  call void @llvm.dbg.value(metadata %struct.traversal_state* %state, metadata !1251, metadata !DIExpression(DW_OP_deref)), !dbg !1264
  call fastcc void @write_pch_globals(%struct.ggc_root_tab** getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_ggc_rtab, i64 0, i64 0), %struct.traversal_state* nonnull %state) #7, !dbg !1406
  call void @llvm.dbg.value(metadata %struct.traversal_state* %state, metadata !1251, metadata !DIExpression(DW_OP_deref)), !dbg !1264
  call fastcc void @write_pch_globals(%struct.ggc_root_tab** getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_pch_cache_rtab, i64 0, i64 0), %struct.traversal_state* nonnull %state) #7, !dbg !1407
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %f38, align 8, !dbg !1408
  %call70 = call i64 @ftell(%struct._IO_FILE* %31) #6, !dbg !1409
  %add = add i64 %call70, 24, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %add, metadata !1262, metadata !DIExpression()), !dbg !1411
  %cmp71 = icmp eq i64 %add, -1, !dbg !1412
  br i1 %cmp71, label %if.then72, label %if.end73, !dbg !1414

if.then72:                                        ; preds = %for.end68
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1415
  br label %if.end73, !dbg !1415

if.end73:                                         ; preds = %if.then72, %for.end68
  %rem = urem i64 %add, %call, !dbg !1416
  %sub = sub i64 %call, %rem, !dbg !1417
  %offset = getelementptr inbounds %struct.mmap_info, %struct.mmap_info* %mmi, i64 0, i32 0, !dbg !1418
  %cmp75 = icmp eq i64 %rem, 0, !dbg !1419
  br i1 %cmp75, label %if.then76, label %if.end78, !dbg !1421

if.then76:                                        ; preds = %if.end73
  br label %if.end78, !dbg !1422

if.end78:                                         ; preds = %if.then76, %if.end73
  %32 = phi i64 [ 0, %if.then76 ], [ %sub, %if.end73 ], !dbg !1423
  %add80 = add i64 %32, %add, !dbg !1423
  store i64 %add80, i64* %offset, align 8, !dbg !1423
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f38, align 8, !dbg !1424
  %call82 = call i64 @fwrite(i8* nonnull %1, i64 24, i64 1, %struct._IO_FILE* %33) #6, !dbg !1426
  %cmp83 = icmp eq i64 %call82, 1, !dbg !1427
  br i1 %cmp83, label %if.end85, label %if.then84, !dbg !1428

if.then84:                                        ; preds = %if.end78
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1429
  br label %if.end85, !dbg !1429

if.end85:                                         ; preds = %if.end78, %if.then84
  %34 = load i64, i64* %offset, align 8, !dbg !1430
  %cmp87 = icmp eq i64 %34, 0, !dbg !1432
  br i1 %cmp87, label %if.end93, label %land.lhs.true, !dbg !1433

land.lhs.true:                                    ; preds = %if.end85
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f38, align 8, !dbg !1434
  %call90 = call i32 @fseek(%struct._IO_FILE* %35, i64 %34, i32 0) #6, !dbg !1435
  %cmp91 = icmp eq i32 %call90, 0, !dbg !1436
  br i1 %cmp91, label %if.end93, label %if.then92, !dbg !1437

if.then92:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1438
  br label %if.end93, !dbg !1438

if.end93:                                         ; preds = %land.lhs.true, %if.end85, %if.then92
  %36 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %d, align 8, !dbg !1439
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f38, align 8, !dbg !1440
  call void @ggc_pch_prepare_write(%struct.ggc_pch_data* %36, %struct._IO_FILE* %37) #6, !dbg !1441
  call void @llvm.dbg.value(metadata i64 0, metadata !1250, metadata !DIExpression()), !dbg !1264
  br label %for.cond96, !dbg !1442

for.cond96:                                       ; preds = %for.inc165, %if.end93
  %this_object.0 = phi i8* [ null, %if.end93 ], [ %this_object.1, %for.inc165 ], !dbg !1264
  %i.2 = phi i64 [ 0, %if.end93 ], [ %inc166, %for.inc165 ], !dbg !1444
  %this_object_size.0 = phi i64 [ 0, %if.end93 ], [ %this_object_size.1, %for.inc165 ], !dbg !1264
  call void @llvm.dbg.value(metadata i64 %this_object_size.0, metadata !1253, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !1250, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i8* %this_object.0, metadata !1252, metadata !DIExpression()), !dbg !1264
  %38 = load i64, i64* %count, align 8, !dbg !1445
  %cmp98 = icmp ult i64 %i.2, %38, !dbg !1447
  br i1 %cmp98, label %for.body99, label %for.end167, !dbg !1448

for.body99:                                       ; preds = %for.cond96
  %39 = load %struct.ptr_data**, %struct.ptr_data*** %ptrs, align 8, !dbg !1449
  %arrayidx = getelementptr inbounds %struct.ptr_data*, %struct.ptr_data** %39, i64 %i.2, !dbg !1452
  %40 = load %struct.ptr_data*, %struct.ptr_data** %arrayidx, align 8, !dbg !1452
  %size101 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %40, i64 0, i32 4, !dbg !1453
  %41 = load i64, i64* %size101, align 8, !dbg !1453
  %cmp102 = icmp ult i64 %this_object_size.0, %41, !dbg !1454
  br i1 %cmp102, label %if.then103, label %if.end108, !dbg !1455

if.then103:                                       ; preds = %for.body99
  call void @llvm.dbg.value(metadata i64 %41, metadata !1253, metadata !DIExpression()), !dbg !1264
  %call107 = call i8* @xrealloc(i8* %this_object.0, i64 %41) #6, !dbg !1456
  call void @llvm.dbg.value(metadata i8* %call107, metadata !1252, metadata !DIExpression()), !dbg !1264
  %.pre = load %struct.ptr_data**, %struct.ptr_data*** %ptrs, align 8, !dbg !1458
  %arrayidx110.phi.trans.insert = getelementptr inbounds %struct.ptr_data*, %struct.ptr_data** %.pre, i64 %i.2, !dbg !1459
  %.pre1 = load %struct.ptr_data*, %struct.ptr_data** %arrayidx110.phi.trans.insert, align 8, !dbg !1460
  %size113.phi.trans.insert = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %.pre1, i64 0, i32 4, !dbg !1459
  %.pre2 = load i64, i64* %size113.phi.trans.insert, align 8, !dbg !1461
  br label %if.end108, !dbg !1462

if.end108:                                        ; preds = %if.then103, %for.body99
  %42 = phi i64 [ %.pre2, %if.then103 ], [ %41, %for.body99 ], !dbg !1461
  %43 = phi %struct.ptr_data* [ %.pre1, %if.then103 ], [ %40, %for.body99 ], !dbg !1460
  %this_object.1 = phi i8* [ %call107, %if.then103 ], [ %this_object.0, %for.body99 ], !dbg !1264
  %this_object_size.1 = phi i64 [ %41, %if.then103 ], [ %this_object_size.0, %for.body99 ], !dbg !1264
  call void @llvm.dbg.value(metadata i64 %this_object_size.1, metadata !1253, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i8* %this_object.1, metadata !1252, metadata !DIExpression()), !dbg !1264
  %obj = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %43, i64 0, i32 0, !dbg !1463
  %44 = load i8*, i8** %obj, align 8, !dbg !1463
  %call114 = call i8* @memcpy(i8* %this_object.1, i8* %44, i64 %42) #6, !dbg !1464
  %45 = load %struct.ptr_data**, %struct.ptr_data*** %ptrs, align 8, !dbg !1465
  %arrayidx116 = getelementptr inbounds %struct.ptr_data*, %struct.ptr_data** %45, i64 %i.2, !dbg !1467
  %46 = load %struct.ptr_data*, %struct.ptr_data** %arrayidx116, align 8, !dbg !1467
  %reorder_fn = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %46, i64 0, i32 3, !dbg !1468
  %47 = load void (i8*, i8*, void (i8*, i8*)*, i8*)*, void (i8*, i8*, void (i8*, i8*)*, i8*)** %reorder_fn, align 8, !dbg !1468
  %cmp117 = icmp eq void (i8*, i8*, void (i8*, i8*)*, i8*)* %47, null, !dbg !1469
  br i1 %cmp117, label %if.end127, label %if.then118, !dbg !1470

if.then118:                                       ; preds = %if.end108
  %obj124 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %46, i64 0, i32 0, !dbg !1471
  %48 = load i8*, i8** %obj124, align 8, !dbg !1471
  %note_ptr_cookie = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %46, i64 0, i32 1, !dbg !1472
  %49 = load i8*, i8** %note_ptr_cookie, align 8, !dbg !1472
  call void %47(i8* %48, i8* %49, void (i8*, i8*)* nonnull @relocate_ptrs, i8* nonnull %0) #6, !dbg !1473
  %.pre3 = load %struct.ptr_data**, %struct.ptr_data*** %ptrs, align 8, !dbg !1474
  %arrayidx129.phi.trans.insert = getelementptr inbounds %struct.ptr_data*, %struct.ptr_data** %.pre3, i64 %i.2, !dbg !1459
  %.pre4 = load %struct.ptr_data*, %struct.ptr_data** %arrayidx129.phi.trans.insert, align 8, !dbg !1475
  br label %if.end127, !dbg !1473

if.end127:                                        ; preds = %if.end108, %if.then118
  %50 = phi %struct.ptr_data* [ %46, %if.end108 ], [ %.pre4, %if.then118 ], !dbg !1476
  %note_ptr_fn = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %50, i64 0, i32 2, !dbg !1477
  %51 = load void (i8*, i8*, void (i8*, i8*)*, i8*)*, void (i8*, i8*, void (i8*, i8*)*, i8*)** %note_ptr_fn, align 8, !dbg !1477
  %obj132 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %50, i64 0, i32 0, !dbg !1478
  %52 = load i8*, i8** %obj132, align 8, !dbg !1478
  %note_ptr_cookie135 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %50, i64 0, i32 1, !dbg !1479
  %53 = load i8*, i8** %note_ptr_cookie135, align 8, !dbg !1479
  call void %51(i8* %52, i8* %53, void (i8*, i8*)* nonnull @relocate_ptrs, i8* nonnull %0) #6, !dbg !1475
  %54 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %d, align 8, !dbg !1480
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %f38, align 8, !dbg !1481
  %56 = load %struct.ptr_data**, %struct.ptr_data*** %ptrs, align 8, !dbg !1482
  %arrayidx139 = getelementptr inbounds %struct.ptr_data*, %struct.ptr_data** %56, i64 %i.2, !dbg !1483
  %57 = load %struct.ptr_data*, %struct.ptr_data** %arrayidx139, align 8, !dbg !1483
  %obj140 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %57, i64 0, i32 0, !dbg !1484
  %58 = load i8*, i8** %obj140, align 8, !dbg !1484
  %new_addr = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %57, i64 0, i32 5, !dbg !1485
  %59 = load i8*, i8** %new_addr, align 8, !dbg !1485
  %size145 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %57, i64 0, i32 4, !dbg !1486
  %60 = load i64, i64* %size145, align 8, !dbg !1486
  %note_ptr_fn148 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %57, i64 0, i32 2, !dbg !1487
  %61 = load void (i8*, i8*, void (i8*, i8*)*, i8*)*, void (i8*, i8*, void (i8*, i8*)*, i8*)** %note_ptr_fn148, align 8, !dbg !1487
  %cmp149 = icmp eq void (i8*, i8*, void (i8*, i8*)*, i8*)* %61, @gt_pch_p_S, !dbg !1488
  %conv150 = zext i1 %cmp149 to i8, !dbg !1489
  call void @ggc_pch_write_object(%struct.ggc_pch_data* %54, %struct._IO_FILE* %55, i8* %58, i8* %59, i64 %60, i8 zeroext %conv150) #6, !dbg !1490
  %62 = load %struct.ptr_data**, %struct.ptr_data*** %ptrs, align 8, !dbg !1491
  %arrayidx152 = getelementptr inbounds %struct.ptr_data*, %struct.ptr_data** %62, i64 %i.2, !dbg !1493
  %63 = load %struct.ptr_data*, %struct.ptr_data** %arrayidx152, align 8, !dbg !1493
  %note_ptr_fn153 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %63, i64 0, i32 2, !dbg !1494
  %64 = load void (i8*, i8*, void (i8*, i8*)*, i8*)*, void (i8*, i8*, void (i8*, i8*)*, i8*)** %note_ptr_fn153, align 8, !dbg !1494
  %cmp154 = icmp eq void (i8*, i8*, void (i8*, i8*)*, i8*)* %64, @gt_pch_p_S, !dbg !1495
  br i1 %cmp154, label %for.inc165, label %if.then156, !dbg !1496

if.then156:                                       ; preds = %if.end127
  %obj159 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %63, i64 0, i32 0, !dbg !1497
  %65 = load i8*, i8** %obj159, align 8, !dbg !1497
  %size162 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %63, i64 0, i32 4, !dbg !1498
  %66 = load i64, i64* %size162, align 8, !dbg !1498
  %call163 = call i8* @memcpy(i8* %65, i8* %this_object.1, i64 %66) #6, !dbg !1499
  br label %for.inc165, !dbg !1499

for.inc165:                                       ; preds = %if.end127, %if.then156
  %inc166 = add i64 %i.2, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %inc166, metadata !1250, metadata !DIExpression()), !dbg !1264
  br label %for.cond96, !dbg !1501, !llvm.loop !1502

for.end167:                                       ; preds = %for.cond96
  %67 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %d, align 8, !dbg !1504
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %f38, align 8, !dbg !1505
  call void @ggc_pch_finish(%struct.ggc_pch_data* %67, %struct._IO_FILE* %68) #6, !dbg !1506
  call void @gt_pch_fixup_stringpool() #6, !dbg !1507
  %69 = load i8*, i8** %24, align 8, !dbg !1508
  call void @free(i8* %69) #6, !dbg !1509
  %70 = load %struct.htab*, %struct.htab** @saving_htab, align 8, !dbg !1510
  call void @htab_delete(%struct.htab* %70) #6, !dbg !1511
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !1512
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !1512
  ret void, !dbg !1512
}

declare dso_local void @gt_pch_save_stringpool() local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @saving_htab_hash(i8* %p) #4 !dbg !1513 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1515, metadata !DIExpression()), !dbg !1516
  %0 = bitcast i8* %p to i64*, !dbg !1517
  %1 = load i64, i64* %0, align 8, !dbg !1517
  %2 = lshr i64 %1, 3, !dbg !1517
  %conv = trunc i64 %2 to i32, !dbg !1517
  ret i32 %conv, !dbg !1518
}

; Function Attrs: nounwind uwtable
define internal i32 @saving_htab_eq(i8* %p1, i8* %p2) #4 !dbg !1519 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !1521, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %p2, metadata !1522, metadata !DIExpression()), !dbg !1523
  %obj = bitcast i8* %p1 to i8**, !dbg !1524
  %0 = load i8*, i8** %obj, align 8, !dbg !1524
  %cmp = icmp eq i8* %0, %p2, !dbg !1525
  %conv = zext i1 %cmp to i32, !dbg !1525
  ret i32 %conv, !dbg !1526
}

declare dso_local void @free(i8*) #1

declare dso_local %struct.ggc_pch_data* @init_ggc_pch() local_unnamed_addr #1

declare dso_local void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @call_count(i8** %slot, i8* %state_p) #4 !dbg !1527 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1531, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8* %state_p, metadata !1532, metadata !DIExpression()), !dbg !1535
  %0 = bitcast i8** %slot to %struct.ptr_data**, !dbg !1536
  %1 = load %struct.ptr_data*, %struct.ptr_data** %0, align 8, !dbg !1536
  call void @llvm.dbg.value(metadata %struct.ptr_data* %1, metadata !1533, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8* %state_p, metadata !1534, metadata !DIExpression()), !dbg !1535
  %d1 = getelementptr inbounds i8, i8* %state_p, i64 8, !dbg !1537
  %2 = bitcast i8* %d1 to %struct.ggc_pch_data**, !dbg !1537
  %3 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %2, align 8, !dbg !1537
  %obj = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %1, i64 0, i32 0, !dbg !1538
  %4 = load i8*, i8** %obj, align 8, !dbg !1538
  %size = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %1, i64 0, i32 4, !dbg !1539
  %5 = load i64, i64* %size, align 8, !dbg !1539
  %note_ptr_fn = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %1, i64 0, i32 2, !dbg !1540
  %6 = load void (i8*, i8*, void (i8*, i8*)*, i8*)*, void (i8*, i8*, void (i8*, i8*)*, i8*)** %note_ptr_fn, align 8, !dbg !1540
  %cmp = icmp eq void (i8*, i8*, void (i8*, i8*)*, i8*)* %6, @gt_pch_p_S, !dbg !1541
  %conv2 = zext i1 %cmp to i8, !dbg !1542
  %type = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %1, i64 0, i32 6, !dbg !1543
  %7 = load i32, i32* %type, align 8, !dbg !1543
  tail call void @ggc_pch_count_object(%struct.ggc_pch_data* %3, i8* %4, i64 %5, i8 zeroext %conv2, i32 %7) #6, !dbg !1544
  %count = getelementptr inbounds i8, i8* %state_p, i64 16, !dbg !1545
  %8 = bitcast i8* %count to i64*, !dbg !1545
  %9 = load i64, i64* %8, align 8, !dbg !1546
  %inc = add i64 %9, 1, !dbg !1546
  store i64 %inc, i64* %8, align 8, !dbg !1546
  ret i32 1, !dbg !1547
}

declare dso_local i64 @ggc_pch_total_size(%struct.ggc_pch_data*) local_unnamed_addr #1

declare dso_local i32 @fileno(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @ggc_pch_this_base(%struct.ggc_pch_data*, i8*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @call_alloc(i8** %slot, i8* %state_p) #4 !dbg !1548 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1550, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %state_p, metadata !1551, metadata !DIExpression()), !dbg !1554
  %0 = bitcast i8** %slot to %struct.ptr_data**, !dbg !1555
  %1 = load %struct.ptr_data*, %struct.ptr_data** %0, align 8, !dbg !1555
  call void @llvm.dbg.value(metadata %struct.ptr_data* %1, metadata !1552, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %state_p, metadata !1553, metadata !DIExpression()), !dbg !1554
  %d1 = getelementptr inbounds i8, i8* %state_p, i64 8, !dbg !1556
  %2 = bitcast i8* %d1 to %struct.ggc_pch_data**, !dbg !1556
  %3 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %2, align 8, !dbg !1556
  %obj = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %1, i64 0, i32 0, !dbg !1557
  %4 = load i8*, i8** %obj, align 8, !dbg !1557
  %size = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %1, i64 0, i32 4, !dbg !1558
  %5 = load i64, i64* %size, align 8, !dbg !1558
  %note_ptr_fn = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %1, i64 0, i32 2, !dbg !1559
  %6 = load void (i8*, i8*, void (i8*, i8*)*, i8*)*, void (i8*, i8*, void (i8*, i8*)*, i8*)** %note_ptr_fn, align 8, !dbg !1559
  %cmp = icmp eq void (i8*, i8*, void (i8*, i8*)*, i8*)* %6, @gt_pch_p_S, !dbg !1560
  %conv2 = zext i1 %cmp to i8, !dbg !1561
  %type = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %1, i64 0, i32 6, !dbg !1562
  %7 = load i32, i32* %type, align 8, !dbg !1562
  %call = tail call i8* @ggc_pch_alloc_object(%struct.ggc_pch_data* %3, i8* %4, i64 %5, i8 zeroext %conv2, i32 %7) #6, !dbg !1563
  %new_addr = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %1, i64 0, i32 5, !dbg !1564
  store i8* %call, i8** %new_addr, align 8, !dbg !1565
  %ptrs = getelementptr inbounds i8, i8* %state_p, i64 24, !dbg !1566
  %8 = bitcast i8* %ptrs to %struct.ptr_data***, !dbg !1566
  %9 = load %struct.ptr_data**, %struct.ptr_data*** %8, align 8, !dbg !1566
  %ptrs_i = getelementptr inbounds i8, i8* %state_p, i64 32, !dbg !1567
  %10 = bitcast i8* %ptrs_i to i64*, !dbg !1567
  %11 = load i64, i64* %10, align 8, !dbg !1568
  %inc = add i64 %11, 1, !dbg !1568
  store i64 %inc, i64* %10, align 8, !dbg !1568
  %arrayidx = getelementptr inbounds %struct.ptr_data*, %struct.ptr_data** %9, i64 %11, !dbg !1569
  store %struct.ptr_data* %1, %struct.ptr_data** %arrayidx, align 8, !dbg !1570
  ret i32 1, !dbg !1571
}

declare dso_local void @spec_qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @compare_ptr_data(i8* %p1_p, i8* %p2_p) #4 !dbg !1572 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1_p, metadata !1574, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i8* %p2_p, metadata !1575, metadata !DIExpression()), !dbg !1578
  %0 = bitcast i8* %p1_p to %struct.ptr_data**, !dbg !1579
  %1 = load %struct.ptr_data*, %struct.ptr_data** %0, align 8, !dbg !1580
  call void @llvm.dbg.value(metadata %struct.ptr_data* %1, metadata !1576, metadata !DIExpression()), !dbg !1578
  %2 = bitcast i8* %p2_p to %struct.ptr_data**, !dbg !1581
  %3 = load %struct.ptr_data*, %struct.ptr_data** %2, align 8, !dbg !1582
  call void @llvm.dbg.value(metadata %struct.ptr_data* %3, metadata !1577, metadata !DIExpression()), !dbg !1578
  %new_addr = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %1, i64 0, i32 5, !dbg !1583
  %4 = bitcast i8** %new_addr to i64*, !dbg !1583
  %5 = load i64, i64* %4, align 8, !dbg !1583
  %new_addr1 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %3, i64 0, i32 5, !dbg !1584
  %6 = bitcast i8** %new_addr1 to i64*, !dbg !1584
  %7 = load i64, i64* %6, align 8, !dbg !1584
  %cmp = icmp ugt i64 %5, %7, !dbg !1585
  %conv = zext i1 %cmp to i32, !dbg !1585
  %cmp4 = icmp ult i64 %5, %7, !dbg !1586
  %conv5 = zext i1 %cmp4 to i32, !dbg !1586
  %sub = sub nsw i32 %conv, %conv5, !dbg !1587
  ret i32 %sub, !dbg !1588
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @fatal_error(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @write_pch_globals(%struct.ggc_root_tab** %tab, %struct.traversal_state* %state) unnamed_addr #4 !dbg !1589 {
entry:
  %ptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %tab, metadata !1593, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata %struct.traversal_state* %state, metadata !1594, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %tab, metadata !1595, metadata !DIExpression()), !dbg !1607
  %0 = bitcast i8** %ptr to i8*, !dbg !1608
  %1 = bitcast i8** %ptr to i64*, !dbg !1608
  %f12 = getelementptr inbounds %struct.traversal_state, %struct.traversal_state* %state, i64 0, i32 0, !dbg !1609
  br label %for.cond, !dbg !1613

for.cond:                                         ; preds = %for.inc21, %entry
  %rt.0 = phi %struct.ggc_root_tab** [ %tab, %entry ], [ %incdec.ptr22, %for.inc21 ], !dbg !1614
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rt.0, metadata !1595, metadata !DIExpression()), !dbg !1607
  %2 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.0, align 8, !dbg !1615
  %tobool = icmp eq %struct.ggc_root_tab* %2, null, !dbg !1616
  br i1 %tobool, label %for.end23, label %for.body, !dbg !1616

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %2, metadata !1596, metadata !DIExpression()), !dbg !1607
  br label %for.cond1, !dbg !1617

for.cond1:                                        ; preds = %for.inc19, %for.body
  %rti.0 = phi %struct.ggc_root_tab* [ %2, %for.body ], [ %incdec.ptr, %for.inc19 ], !dbg !1618
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.0, metadata !1596, metadata !DIExpression()), !dbg !1607
  %base = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 0, !dbg !1619
  %3 = load i8*, i8** %base, align 8, !dbg !1619
  %cmp = icmp eq i8* %3, null, !dbg !1620
  br i1 %cmp, label %for.inc21, label %for.cond3.preheader, !dbg !1621

for.cond3.preheader:                              ; preds = %for.cond1
  %nelt = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 1, !dbg !1622
  %stride = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 2, !dbg !1608
  br label %for.cond3, !dbg !1623

for.cond3:                                        ; preds = %for.cond3.preheader, %if.end18
  %i.0 = phi i64 [ %inc, %if.end18 ], [ 0, %for.cond3.preheader ], !dbg !1624
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1597, metadata !DIExpression()), !dbg !1607
  %4 = load i64, i64* %nelt, align 8, !dbg !1625
  %cmp4 = icmp ult i64 %i.0, %4, !dbg !1626
  br i1 %cmp4, label %for.body5, label %for.inc19, !dbg !1623

for.body5:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1627
  %5 = load i8*, i8** %base, align 8, !dbg !1628
  %6 = load i64, i64* %stride, align 8, !dbg !1629
  %mul = mul i64 %6, %i.0, !dbg !1630
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul, !dbg !1631
  %7 = bitcast i8* %add.ptr to i64*, !dbg !1632
  %8 = load i64, i64* %7, align 8, !dbg !1632
  store i64 %8, i64* %1, align 8, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %8, metadata !1598, metadata !DIExpression()), !dbg !1608
  %cmp7 = icmp eq i64 %8, 0, !dbg !1634
  %.cast = inttoptr i64 %8 to i8*, !dbg !1635
  call void @llvm.dbg.value(metadata i8* %.cast, metadata !1598, metadata !DIExpression()), !dbg !1608
  %cmp8 = icmp eq i8* %.cast, inttoptr (i64 1 to i8*), !dbg !1636
  %or.cond = or i1 %cmp7, %cmp8, !dbg !1637
  br i1 %or.cond, label %if.then, label %if.else, !dbg !1637

if.then:                                          ; preds = %for.body5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f12, align 8, !dbg !1638
  %call = call i64 @fwrite(i8* nonnull %0, i64 8, i64 1, %struct._IO_FILE* %9) #6, !dbg !1641
  %cmp9 = icmp eq i64 %call, 1, !dbg !1642
  br i1 %cmp9, label %if.end18, label %if.then10, !dbg !1643

if.then10:                                        ; preds = %if.then
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1644
  br label %if.end18, !dbg !1644

if.else:                                          ; preds = %for.body5
  %10 = load %struct.htab*, %struct.htab** @saving_htab, align 8, !dbg !1645
  call void @llvm.dbg.value(metadata i8* %.cast, metadata !1598, metadata !DIExpression()), !dbg !1608
  %11 = lshr i64 %8, 3, !dbg !1646
  %conv = trunc i64 %11 to i32, !dbg !1646
  %call11 = call i8* @htab_find_with_hash(%struct.htab* %10, i8* %.cast, i32 %conv) #6, !dbg !1647
  call void @llvm.dbg.value(metadata i8* %call11, metadata !1606, metadata !DIExpression()), !dbg !1608
  %new_addr = getelementptr inbounds i8, i8* %call11, i64 40, !dbg !1648
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f12, align 8, !dbg !1649
  %call13 = call i64 @fwrite(i8* nonnull %new_addr, i64 8, i64 1, %struct._IO_FILE* %12) #6, !dbg !1650
  %cmp14 = icmp eq i64 %call13, 1, !dbg !1651
  br i1 %cmp14, label %if.end18, label %if.then16, !dbg !1652

if.then16:                                        ; preds = %if.else
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1653
  br label %if.end18, !dbg !1653

if.end18:                                         ; preds = %if.then, %if.else, %if.then16, %if.then10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1654
  %inc = add i64 %i.0, 1, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1597, metadata !DIExpression()), !dbg !1607
  br label %for.cond3, !dbg !1656, !llvm.loop !1657

for.inc19:                                        ; preds = %for.cond3
  %incdec.ptr = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 1, !dbg !1659
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr, metadata !1596, metadata !DIExpression()), !dbg !1607
  br label %for.cond1, !dbg !1660, !llvm.loop !1661

for.inc21:                                        ; preds = %for.cond1
  %incdec.ptr22 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.0, i64 1, !dbg !1663
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %incdec.ptr22, metadata !1595, metadata !DIExpression()), !dbg !1607
  br label %for.cond, !dbg !1664, !llvm.loop !1665

for.end23:                                        ; preds = %for.cond
  ret void, !dbg !1667
}

declare dso_local i64 @ftell(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) local_unnamed_addr #1

declare dso_local void @ggc_pch_prepare_write(%struct.ggc_pch_data*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @relocate_ptrs(i8* %ptr_p, i8* %state_p) #4 !dbg !1668 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr_p, metadata !1670, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %state_p, metadata !1671, metadata !DIExpression()), !dbg !1675
  %0 = bitcast i8* %ptr_p to i8**, !dbg !1676
  call void @llvm.dbg.value(metadata i8** %0, metadata !1672, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %state_p, metadata !1673, metadata !DIExpression()), !dbg !1675
  %1 = load i8*, i8** %0, align 8, !dbg !1677
  %cmp = icmp eq i8* %1, null, !dbg !1679
  br i1 %cmp, label %cleanup.cont, label %lor.lhs.false, !dbg !1680

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq i8* %1, inttoptr (i64 1 to i8*), !dbg !1681
  br i1 %cmp1, label %cleanup.cont, label %if.end, !dbg !1682

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.htab*, %struct.htab** @saving_htab, align 8, !dbg !1683
  %.cast = ptrtoint i8* %1 to i64, !dbg !1684
  %3 = lshr i64 %.cast, 3, !dbg !1684
  %conv = trunc i64 %3 to i32, !dbg !1684
  %call = tail call i8* @htab_find_with_hash(%struct.htab* %2, i8* nonnull %1, i32 %conv) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i8* %call, metadata !1674, metadata !DIExpression()), !dbg !1675
  %tobool = icmp eq i8* %call, null, !dbg !1686
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !1686

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 443, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1686
  br label %cond.end, !dbg !1686

cond.end:                                         ; preds = %if.end, %cond.true
  %new_addr = getelementptr inbounds i8, i8* %call, i64 40, !dbg !1687
  %4 = bitcast i8* %new_addr to i64*, !dbg !1687
  %5 = load i64, i64* %4, align 8, !dbg !1687
  %6 = bitcast i8* %ptr_p to i64*, !dbg !1688
  store i64 %5, i64* %6, align 8, !dbg !1688
  br label %cleanup.cont, !dbg !1689

cleanup.cont:                                     ; preds = %cond.end, %lor.lhs.false, %entry
  ret void, !dbg !1689
}

declare dso_local void @ggc_pch_write_object(%struct.ggc_pch_data*, %struct._IO_FILE*, i8*, i8*, i64, i8 zeroext) local_unnamed_addr #1

declare dso_local void @ggc_pch_finish(%struct.ggc_pch_data*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @gt_pch_fixup_stringpool() local_unnamed_addr #1

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_restore(%struct._IO_FILE* %f) local_unnamed_addr #4 !dbg !1690 {
entry:
  %mmi = alloca %struct.mmap_info, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !1692, metadata !DIExpression()), !dbg !1698
  %0 = bitcast %struct.mmap_info* %mmi to i8*, !dbg !1699
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !1699
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_ggc_deletable_rtab, i64 0, i64 0), metadata !1693, metadata !DIExpression()), !dbg !1698
  br label %for.cond, !dbg !1700

for.cond:                                         ; preds = %for.inc4, %entry
  %rt.0 = phi %struct.ggc_root_tab** [ getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_ggc_deletable_rtab, i64 0, i64 0), %entry ], [ %incdec.ptr5, %for.inc4 ], !dbg !1702
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rt.0, metadata !1693, metadata !DIExpression()), !dbg !1698
  %1 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.0, align 8, !dbg !1703
  %tobool = icmp eq %struct.ggc_root_tab* %1, null, !dbg !1705
  br i1 %tobool, label %for.cond7.preheader, label %for.body, !dbg !1705

for.cond7.preheader:                              ; preds = %for.cond
  br label %for.cond7, !dbg !1706

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %1, metadata !1694, metadata !DIExpression()), !dbg !1698
  br label %for.cond1, !dbg !1708

for.cond1:                                        ; preds = %for.body2, %for.body
  %rti.0 = phi %struct.ggc_root_tab* [ %1, %for.body ], [ %incdec.ptr, %for.body2 ], !dbg !1710
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.0, metadata !1694, metadata !DIExpression()), !dbg !1698
  %base = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 0, !dbg !1711
  %2 = load i8*, i8** %base, align 8, !dbg !1711
  %cmp = icmp eq i8* %2, null, !dbg !1713
  br i1 %cmp, label %for.inc4, label %for.body2, !dbg !1714

for.body2:                                        ; preds = %for.cond1
  %stride = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 0, i32 2, !dbg !1715
  %3 = load i64, i64* %stride, align 8, !dbg !1715
  %call = tail call i8* @memset(i8* nonnull %2, i32 0, i64 %3) #6, !dbg !1716
  %incdec.ptr = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.0, i64 1, !dbg !1717
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr, metadata !1694, metadata !DIExpression()), !dbg !1698
  br label %for.cond1, !dbg !1718, !llvm.loop !1719

for.inc4:                                         ; preds = %for.cond1
  %incdec.ptr5 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.0, i64 1, !dbg !1721
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %incdec.ptr5, metadata !1693, metadata !DIExpression()), !dbg !1698
  br label %for.cond, !dbg !1722, !llvm.loop !1723

for.cond7:                                        ; preds = %for.cond7.preheader, %for.inc21
  %rt.1 = phi %struct.ggc_root_tab** [ %incdec.ptr22, %for.inc21 ], [ getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_pch_scalar_rtab, i64 0, i64 0), %for.cond7.preheader ], !dbg !1725
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rt.1, metadata !1693, metadata !DIExpression()), !dbg !1698
  %4 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.1, align 8, !dbg !1726
  %tobool8 = icmp eq %struct.ggc_root_tab* %4, null, !dbg !1706
  br i1 %tobool8, label %for.cond24.preheader, label %for.body9, !dbg !1706

for.cond24.preheader:                             ; preds = %for.cond7
  br label %for.cond24, !dbg !1728

for.body9:                                        ; preds = %for.cond7
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %4, metadata !1694, metadata !DIExpression()), !dbg !1698
  br label %for.cond10, !dbg !1730

for.cond10:                                       ; preds = %for.inc18, %for.body9
  %rti.1 = phi %struct.ggc_root_tab* [ %4, %for.body9 ], [ %incdec.ptr19, %for.inc18 ], !dbg !1732
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.1, metadata !1694, metadata !DIExpression()), !dbg !1698
  %base11 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 0, i32 0, !dbg !1733
  %5 = load i8*, i8** %base11, align 8, !dbg !1733
  %cmp12 = icmp eq i8* %5, null, !dbg !1735
  br i1 %cmp12, label %for.inc21, label %for.body13, !dbg !1736

for.body13:                                       ; preds = %for.cond10
  %stride15 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 0, i32 2, !dbg !1737
  %6 = load i64, i64* %stride15, align 8, !dbg !1737
  %call16 = tail call i64 @fread(i8* nonnull %5, i64 %6, i64 1, %struct._IO_FILE* %f) #6, !dbg !1739
  %cmp17 = icmp eq i64 %call16, 1, !dbg !1740
  br i1 %cmp17, label %for.inc18, label %if.then, !dbg !1741

if.then:                                          ; preds = %for.body13
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1742
  br label %for.inc18, !dbg !1742

for.inc18:                                        ; preds = %for.body13, %if.then
  %incdec.ptr19 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.1, i64 1, !dbg !1743
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr19, metadata !1694, metadata !DIExpression()), !dbg !1698
  br label %for.cond10, !dbg !1744, !llvm.loop !1745

for.inc21:                                        ; preds = %for.cond10
  %incdec.ptr22 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.1, i64 1, !dbg !1747
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %incdec.ptr22, metadata !1693, metadata !DIExpression()), !dbg !1698
  br label %for.cond7, !dbg !1748, !llvm.loop !1749

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc45
  %rt.2 = phi %struct.ggc_root_tab** [ %incdec.ptr46, %for.inc45 ], [ getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_ggc_rtab, i64 0, i64 0), %for.cond24.preheader ], !dbg !1751
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rt.2, metadata !1693, metadata !DIExpression()), !dbg !1698
  %7 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.2, align 8, !dbg !1752
  %tobool25 = icmp eq %struct.ggc_root_tab* %7, null, !dbg !1728
  br i1 %tobool25, label %for.cond48.preheader, label %for.body26, !dbg !1728

for.cond48.preheader:                             ; preds = %for.cond24
  br label %for.cond48, !dbg !1754

for.body26:                                       ; preds = %for.cond24
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %7, metadata !1694, metadata !DIExpression()), !dbg !1698
  br label %for.cond27, !dbg !1756

for.cond27:                                       ; preds = %for.inc42, %for.body26
  %rti.2 = phi %struct.ggc_root_tab* [ %7, %for.body26 ], [ %incdec.ptr43, %for.inc42 ], !dbg !1758
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.2, metadata !1694, metadata !DIExpression()), !dbg !1698
  %base28 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 0, i32 0, !dbg !1759
  %8 = load i8*, i8** %base28, align 8, !dbg !1759
  %cmp29 = icmp eq i8* %8, null, !dbg !1761
  br i1 %cmp29, label %for.inc45, label %for.cond31.preheader, !dbg !1762

for.cond31.preheader:                             ; preds = %for.cond27
  %nelt = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 0, i32 1, !dbg !1763
  %stride35 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 0, i32 2, !dbg !1766
  br label %for.cond31, !dbg !1768

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc40
  %i.0 = phi i64 [ %inc, %for.inc40 ], [ 0, %for.cond31.preheader ], !dbg !1769
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1695, metadata !DIExpression()), !dbg !1698
  %9 = load i64, i64* %nelt, align 8, !dbg !1770
  %cmp32 = icmp ult i64 %i.0, %9, !dbg !1771
  br i1 %cmp32, label %for.body33, label %for.inc42, !dbg !1768

for.body33:                                       ; preds = %for.cond31
  %10 = load i8*, i8** %base28, align 8, !dbg !1772
  %11 = load i64, i64* %stride35, align 8, !dbg !1773
  %mul = mul i64 %11, %i.0, !dbg !1774
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %mul, !dbg !1775
  %call36 = tail call i64 @fread(i8* %add.ptr, i64 8, i64 1, %struct._IO_FILE* %f) #6, !dbg !1776
  %cmp37 = icmp eq i64 %call36, 1, !dbg !1777
  br i1 %cmp37, label %for.inc40, label %if.then38, !dbg !1778

if.then38:                                        ; preds = %for.body33
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1779
  br label %for.inc40, !dbg !1779

for.inc40:                                        ; preds = %for.body33, %if.then38
  %inc = add i64 %i.0, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1695, metadata !DIExpression()), !dbg !1698
  br label %for.cond31, !dbg !1781, !llvm.loop !1782

for.inc42:                                        ; preds = %for.cond31
  %incdec.ptr43 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.2, i64 1, !dbg !1784
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr43, metadata !1694, metadata !DIExpression()), !dbg !1698
  br label %for.cond27, !dbg !1785, !llvm.loop !1786

for.inc45:                                        ; preds = %for.cond27
  %incdec.ptr46 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.2, i64 1, !dbg !1788
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %incdec.ptr46, metadata !1693, metadata !DIExpression()), !dbg !1698
  br label %for.cond24, !dbg !1789, !llvm.loop !1790

for.cond48:                                       ; preds = %for.cond48.preheader, %for.inc73
  %rt.3 = phi %struct.ggc_root_tab** [ %incdec.ptr74, %for.inc73 ], [ getelementptr inbounds ([0 x %struct.ggc_root_tab*], [0 x %struct.ggc_root_tab*]* @gt_pch_cache_rtab, i64 0, i64 0), %for.cond48.preheader ], !dbg !1792
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %rt.3, metadata !1693, metadata !DIExpression()), !dbg !1698
  %12 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.3, align 8, !dbg !1793
  %tobool49 = icmp eq %struct.ggc_root_tab* %12, null, !dbg !1754
  br i1 %tobool49, label %for.end75, label %for.body50, !dbg !1754

for.body50:                                       ; preds = %for.cond48
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %12, metadata !1694, metadata !DIExpression()), !dbg !1698
  br label %for.cond51, !dbg !1795

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %rti.3 = phi %struct.ggc_root_tab* [ %12, %for.body50 ], [ %incdec.ptr71, %for.inc70 ], !dbg !1797
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %rti.3, metadata !1694, metadata !DIExpression()), !dbg !1698
  %base52 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.3, i64 0, i32 0, !dbg !1798
  %13 = load i8*, i8** %base52, align 8, !dbg !1798
  %cmp53 = icmp eq i8* %13, null, !dbg !1800
  br i1 %cmp53, label %for.inc73, label %for.cond55.preheader, !dbg !1801

for.cond55.preheader:                             ; preds = %for.cond51
  %nelt56 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.3, i64 0, i32 1, !dbg !1802
  %stride60 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.3, i64 0, i32 2, !dbg !1805
  br label %for.cond55, !dbg !1807

for.cond55:                                       ; preds = %for.cond55.preheader, %for.inc67
  %i.1 = phi i64 [ %inc68, %for.inc67 ], [ 0, %for.cond55.preheader ], !dbg !1808
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1695, metadata !DIExpression()), !dbg !1698
  %14 = load i64, i64* %nelt56, align 8, !dbg !1809
  %cmp57 = icmp ult i64 %i.1, %14, !dbg !1810
  br i1 %cmp57, label %for.body58, label %for.inc70, !dbg !1807

for.body58:                                       ; preds = %for.cond55
  %15 = load i8*, i8** %base52, align 8, !dbg !1811
  %16 = load i64, i64* %stride60, align 8, !dbg !1812
  %mul61 = mul i64 %16, %i.1, !dbg !1813
  %add.ptr62 = getelementptr inbounds i8, i8* %15, i64 %mul61, !dbg !1814
  %call63 = tail call i64 @fread(i8* %add.ptr62, i64 8, i64 1, %struct._IO_FILE* %f) #6, !dbg !1815
  %cmp64 = icmp eq i64 %call63, 1, !dbg !1816
  br i1 %cmp64, label %for.inc67, label %if.then65, !dbg !1817

if.then65:                                        ; preds = %for.body58
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1818
  br label %for.inc67, !dbg !1818

for.inc67:                                        ; preds = %for.body58, %if.then65
  %inc68 = add i64 %i.1, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %inc68, metadata !1695, metadata !DIExpression()), !dbg !1698
  br label %for.cond55, !dbg !1820, !llvm.loop !1821

for.inc70:                                        ; preds = %for.cond55
  %incdec.ptr71 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %rti.3, i64 1, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %incdec.ptr71, metadata !1694, metadata !DIExpression()), !dbg !1698
  br label %for.cond51, !dbg !1824, !llvm.loop !1825

for.inc73:                                        ; preds = %for.cond51
  %incdec.ptr74 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %rt.3, i64 1, !dbg !1827
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %incdec.ptr74, metadata !1693, metadata !DIExpression()), !dbg !1698
  br label %for.cond48, !dbg !1828, !llvm.loop !1829

for.end75:                                        ; preds = %for.cond48
  %call76 = call i64 @fread(i8* nonnull %0, i64 24, i64 1, %struct._IO_FILE* %f) #6, !dbg !1831
  %cmp77 = icmp eq i64 %call76, 1, !dbg !1833
  br i1 %cmp77, label %if.end79, label %if.then78, !dbg !1834

if.then78:                                        ; preds = %for.end75
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1835
  br label %if.end79, !dbg !1835

if.end79:                                         ; preds = %for.end75, %if.then78
  %17 = load i32 (i8*, i64, i32, i64)*, i32 (i8*, i64, i32, i64)** getelementptr inbounds (%struct.host_hooks, %struct.host_hooks* @host_hooks, i64 0, i32 2), align 8, !dbg !1836
  %preferred_base = getelementptr inbounds %struct.mmap_info, %struct.mmap_info* %mmi, i64 0, i32 2, !dbg !1837
  %18 = load i8*, i8** %preferred_base, align 8, !dbg !1837
  %size = getelementptr inbounds %struct.mmap_info, %struct.mmap_info* %mmi, i64 0, i32 1, !dbg !1838
  %19 = load i64, i64* %size, align 8, !dbg !1838
  %call80 = call i32 @fileno(%struct._IO_FILE* %f) #6, !dbg !1839
  %offset = getelementptr inbounds %struct.mmap_info, %struct.mmap_info* %mmi, i64 0, i32 0, !dbg !1840
  %20 = load i64, i64* %offset, align 8, !dbg !1840
  %call81 = call i32 %17(i8* %18, i64 %19, i32 %call80, i64 %20) #6, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %call81, metadata !1697, metadata !DIExpression()), !dbg !1698
  %cmp82 = icmp slt i32 %call81, 0, !dbg !1842
  br i1 %cmp82, label %if.then83, label %if.end84, !dbg !1844

if.then83:                                        ; preds = %if.end79
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1845
  br label %if.end84, !dbg !1845

if.end84:                                         ; preds = %if.then83, %if.end79
  %cmp85 = icmp eq i32 %call81, 0, !dbg !1846
  %21 = load i64, i64* %offset, align 8, !dbg !1848
  br i1 %cmp85, label %if.then86, label %if.else, !dbg !1849

if.then86:                                        ; preds = %if.end84
  %call88 = call i32 @fseek(%struct._IO_FILE* %f, i64 %21, i32 0) #6, !dbg !1850
  %cmp89 = icmp eq i32 %call88, 0, !dbg !1853
  br i1 %cmp89, label %lor.lhs.false, label %if.then94, !dbg !1854

lor.lhs.false:                                    ; preds = %if.then86
  %22 = load i8*, i8** %preferred_base, align 8, !dbg !1855
  %23 = load i64, i64* %size, align 8, !dbg !1856
  %call92 = call i64 @fread(i8* %22, i64 %23, i64 1, %struct._IO_FILE* %f) #6, !dbg !1857
  %cmp93 = icmp eq i64 %call92, 1, !dbg !1858
  br i1 %cmp93, label %if.end102, label %if.then94, !dbg !1859

if.then94:                                        ; preds = %lor.lhs.false, %if.then86
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1860
  br label %if.end102, !dbg !1860

if.else:                                          ; preds = %if.end84
  %24 = load i64, i64* %size, align 8, !dbg !1861
  %add = add i64 %21, %24, !dbg !1863
  %call98 = call i32 @fseek(%struct._IO_FILE* %f, i64 %add, i32 0) #6, !dbg !1864
  %cmp99 = icmp eq i32 %call98, 0, !dbg !1865
  br i1 %cmp99, label %if.end102, label %if.then100, !dbg !1866

if.then100:                                       ; preds = %if.else
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1867
  br label %if.end102, !dbg !1867

if.end102:                                        ; preds = %lor.lhs.false, %if.else, %if.then100, %if.then94
  %25 = load i8*, i8** %preferred_base, align 8, !dbg !1868
  call void @ggc_pch_read(%struct._IO_FILE* %f, i8* %25) #6, !dbg !1869
  call void @gt_pch_restore_stringpool() #6, !dbg !1870
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !1871
  ret void, !dbg !1871
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @ggc_pch_read(%struct._IO_FILE*, i8*) local_unnamed_addr #1

declare dso_local void @gt_pch_restore_stringpool() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @default_gt_pch_get_address(i64 %size, i32 %fd) local_unnamed_addr #4 !dbg !1872 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !1876, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1877, metadata !DIExpression()), !dbg !1878
  ret i8* null, !dbg !1879
}

; Function Attrs: nounwind uwtable
define dso_local i32 @default_gt_pch_use_address(i8* %base, i64 %size, i32 %fd, i64 %offset) local_unnamed_addr #4 !dbg !1880 {
entry:
  call void @llvm.dbg.value(metadata i8* %base, metadata !1884, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %size, metadata !1885, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1886, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %offset, metadata !1887, metadata !DIExpression()), !dbg !1889
  %call = tail call i8* @xmalloc(i64 %size) #6, !dbg !1890
  call void @llvm.dbg.value(metadata i8* %call, metadata !1888, metadata !DIExpression()), !dbg !1889
  %cmp = icmp ne i8* %call, %base, !dbg !1891
  %sub = sext i1 %cmp to i32, !dbg !1892
  ret i32 %sub, !dbg !1893
}

; Function Attrs: nounwind uwtable
define dso_local i64 @default_gt_pch_alloc_granularity() local_unnamed_addr #4 !dbg !1894 {
entry:
  ret i64 0, !dbg !1897
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ggc_min_expand_heuristic() local_unnamed_addr #4 !dbg !1898 {
entry:
  %call = tail call double @physmem_total() #6, !dbg !1901
  call void @llvm.dbg.value(metadata double %call, metadata !1900, metadata !DIExpression()), !dbg !1902
  %call1 = tail call fastcc double @ggc_rlimit_bound(double %call) #7, !dbg !1903
  call void @llvm.dbg.value(metadata double %call1, metadata !1900, metadata !DIExpression()), !dbg !1902
  %div = fmul double %call1, 0x3E10000000000000, !dbg !1904
  call void @llvm.dbg.value(metadata double %div, metadata !1900, metadata !DIExpression()), !dbg !1902
  %mul = fmul double %div, 7.000000e+01, !dbg !1905
  call void @llvm.dbg.value(metadata double %mul, metadata !1900, metadata !DIExpression()), !dbg !1902
  %cmp = fcmp olt double %mul, 7.000000e+01, !dbg !1906
  %mul. = select i1 %cmp, double %mul, double 7.000000e+01, !dbg !1906
  call void @llvm.dbg.value(metadata double %mul., metadata !1900, metadata !DIExpression()), !dbg !1902
  %add = fadd double %mul., 3.000000e+01, !dbg !1907
  call void @llvm.dbg.value(metadata double %add, metadata !1900, metadata !DIExpression()), !dbg !1902
  %conv = fptosi double %add to i32, !dbg !1908
  ret i32 %conv, !dbg !1909
}

declare dso_local double @physmem_total() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc double @ggc_rlimit_bound(double %limit) unnamed_addr #4 !dbg !1910 {
entry:
  %rlim = alloca %struct.rlimit, align 8
  call void @llvm.dbg.value(metadata double %limit, metadata !1914, metadata !DIExpression()), !dbg !1920
  %0 = bitcast %struct.rlimit* %rlim to i8*, !dbg !1921
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1921
  call void @llvm.dbg.value(metadata %struct.rlimit* %rlim, metadata !1915, metadata !DIExpression(DW_OP_deref)), !dbg !1920
  %call = call i32 @getrlimit(i32 9, %struct.rlimit* nonnull %rlim) #6, !dbg !1922
  %cmp = icmp eq i32 %call, 0, !dbg !1924
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1925

land.lhs.true:                                    ; preds = %entry
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i64 0, i32 0, !dbg !1926
  %1 = load i64, i64* %rlim_cur, align 8, !dbg !1926
  %cmp1 = icmp eq i64 %1, -1, !dbg !1927
  br i1 %cmp1, label %if.end, label %land.lhs.true2, !dbg !1928

land.lhs.true2:                                   ; preds = %land.lhs.true
  %conv = uitofp i64 %1 to double, !dbg !1929
  %cmp4 = fcmp olt double %conv, %limit, !dbg !1930
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1931

if.then:                                          ; preds = %land.lhs.true2
  call void @llvm.dbg.value(metadata double %conv, metadata !1914, metadata !DIExpression()), !dbg !1920
  br label %if.end, !dbg !1932

if.end:                                           ; preds = %land.lhs.true, %if.then, %land.lhs.true2, %entry
  %limit.addr.0 = phi double [ %conv, %if.then ], [ %limit, %land.lhs.true2 ], [ %limit, %land.lhs.true ], [ %limit, %entry ]
  call void @llvm.dbg.value(metadata double %limit.addr.0, metadata !1914, metadata !DIExpression()), !dbg !1920
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1933
  ret double %limit.addr.0, !dbg !1934
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ggc_min_heapsize_heuristic() local_unnamed_addr #4 !dbg !1935 {
entry:
  %rlim = alloca %struct.rlimit, align 8
  %call = tail call double @physmem_total() #6, !dbg !1941
  call void @llvm.dbg.value(metadata double %call, metadata !1937, metadata !DIExpression()), !dbg !1942
  %mul = fmul double %call, 2.000000e+00, !dbg !1943
  %call1 = tail call fastcc double @ggc_rlimit_bound(double %mul) #7, !dbg !1944
  call void @llvm.dbg.value(metadata double %call1, metadata !1938, metadata !DIExpression()), !dbg !1942
  %div = fmul double %call, 0x3F50000000000000, !dbg !1945
  call void @llvm.dbg.value(metadata double %div, metadata !1937, metadata !DIExpression()), !dbg !1942
  %div2 = fmul double %call1, 0x3F50000000000000, !dbg !1946
  call void @llvm.dbg.value(metadata double %div2, metadata !1938, metadata !DIExpression()), !dbg !1942
  %div3 = fmul double %div, 1.250000e-01, !dbg !1947
  call void @llvm.dbg.value(metadata double %div3, metadata !1937, metadata !DIExpression()), !dbg !1942
  %0 = bitcast %struct.rlimit* %rlim to i8*, !dbg !1948
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1948
  call void @llvm.dbg.value(metadata %struct.rlimit* %rlim, metadata !1939, metadata !DIExpression(DW_OP_deref)), !dbg !1949
  %call4 = call i32 @getrlimit(i32 5, %struct.rlimit* nonnull %rlim) #6, !dbg !1950
  %cmp = icmp eq i32 %call4, 0, !dbg !1952
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1953

land.lhs.true:                                    ; preds = %entry
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i64 0, i32 0, !dbg !1954
  %1 = load i64, i64* %rlim_cur, align 8, !dbg !1954
  %cmp5 = icmp eq i64 %1, -1, !dbg !1955
  br i1 %cmp5, label %if.end, label %if.then, !dbg !1956

if.then:                                          ; preds = %land.lhs.true
  %div7 = lshr i64 %1, 10, !dbg !1957
  %conv = uitofp i64 %div7 to double, !dbg !1957
  %cmp8 = fcmp olt double %div3, %conv, !dbg !1957
  br i1 %cmp8, label %if.end, label %cond.false, !dbg !1957

cond.false:                                       ; preds = %if.then
  br label %if.end, !dbg !1957

if.end:                                           ; preds = %land.lhs.true, %cond.false, %if.then, %entry
  %phys_kbytes.0 = phi double [ %div3, %land.lhs.true ], [ %div3, %entry ], [ %conv, %cond.false ], [ %div3, %if.then ], !dbg !1942
  call void @llvm.dbg.value(metadata double %phys_kbytes.0, metadata !1937, metadata !DIExpression()), !dbg !1942
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1958
  %div13 = fmul double %div2, 2.500000e-01, !dbg !1959
  %cmp14 = fcmp ogt double %div13, 2.048000e+04, !dbg !1959
  %cond20 = select i1 %cmp14, double %div13, double 2.048000e+04, !dbg !1959
  %sub = fsub double %div2, %cond20, !dbg !1959
  %cmp21 = fcmp olt double %sub, 0.000000e+00, !dbg !1959
  br i1 %cmp21, label %cond.end34, label %cond.false24, !dbg !1959

cond.false24:                                     ; preds = %if.end
  %phitmp = fmul double %sub, 1.000000e+02, !dbg !1959
  br label %cond.end34, !dbg !1959

cond.end34:                                       ; preds = %if.end, %cond.false24
  %cond35 = phi double [ %phitmp, %cond.false24 ], [ 0.000000e+00, %if.end ]
  %call37 = call i32 @ggc_min_expand_heuristic() #7, !dbg !1960
  %add = add nsw i32 %call37, 110, !dbg !1961
  %conv38 = sitofp i32 %add to double, !dbg !1962
  %div39 = fdiv double %cond35, %conv38, !dbg !1963
  call void @llvm.dbg.value(metadata double %div39, metadata !1938, metadata !DIExpression()), !dbg !1942
  %cmp40 = fcmp olt double %phys_kbytes.0, %div39, !dbg !1964
  %phys_kbytes.0.div39 = select i1 %cmp40, double %phys_kbytes.0, double %div39, !dbg !1964
  call void @llvm.dbg.value(metadata double %phys_kbytes.0.div39, metadata !1937, metadata !DIExpression()), !dbg !1942
  %cmp46 = fcmp ogt double %phys_kbytes.0.div39, 4.096000e+03, !dbg !1965
  %cond51 = select i1 %cmp46, double %phys_kbytes.0.div39, double 4.096000e+03, !dbg !1965
  call void @llvm.dbg.value(metadata double %cond51, metadata !1937, metadata !DIExpression()), !dbg !1942
  %cmp52 = fcmp olt double %cond51, 1.310720e+05, !dbg !1966
  %cond51. = select i1 %cmp52, double %cond51, double 1.310720e+05, !dbg !1966
  call void @llvm.dbg.value(metadata double %cond51., metadata !1937, metadata !DIExpression()), !dbg !1942
  %conv58 = fptosi double %cond51. to i32, !dbg !1967
  ret i32 %conv58, !dbg !1968
}

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_ggc_heuristics() local_unnamed_addr #4 !dbg !1969 {
entry:
  %call = tail call i32 @ggc_min_expand_heuristic() #7, !dbg !1970
  tail call void @set_param_value(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %call) #6, !dbg !1971
  %call1 = tail call i32 @ggc_min_heapsize_heuristic() #7, !dbg !1972
  tail call void @set_param_value(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %call1) #6, !dbg !1973
  ret void, !dbg !1974
}

declare dso_local void @set_param_value(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_ggc_loc_statistics(i8 zeroext %final) local_unnamed_addr #4 !dbg !1975 {
entry:
  call void @llvm.dbg.value(metadata i8 %final, metadata !1979, metadata !DIExpression()), !dbg !1980
  ret void, !dbg !1981
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_const_ggc_root_tab_t_heap_reserve(%struct.VEC_const_ggc_root_tab_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !1982 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_const_ggc_root_tab_t_heap** @extra_root_vec, metadata !1986, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i32 1, metadata !1987, metadata !DIExpression()), !dbg !1989
  %0 = load %struct.VEC_const_ggc_root_tab_t_heap*, %struct.VEC_const_ggc_root_tab_t_heap** @extra_root_vec, align 8, !dbg !1990
  %tobool = icmp eq %struct.VEC_const_ggc_root_tab_t_heap* %0, null, !dbg !1990
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1990

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_heap, %struct.VEC_const_ggc_root_tab_t_heap* %0, i64 0, i32 0, !dbg !1990
  br label %cond.end, !dbg !1990

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_const_ggc_root_tab_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !1990
  %call = tail call fastcc i32 @VEC_const_ggc_root_tab_t_base_space(%struct.VEC_const_ggc_root_tab_t_base* %cond, i32 1) #7, !dbg !1990
  %tobool1 = icmp eq i32 %call, 0, !dbg !1990
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !1990
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !1988, metadata !DIExpression()), !dbg !1989
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1990

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_const_ggc_root_tab_t_heap** @extra_root_vec to i8**), align 8, !dbg !1991
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %1, i32 1) #6, !dbg !1991
  store i8* %call3, i8** bitcast (%struct.VEC_const_ggc_root_tab_t_heap** @extra_root_vec to i8**), align 8, !dbg !1991
  br label %if.end, !dbg !1991

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !1990
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ggc_root_tab** @VEC_const_ggc_root_tab_t_base_quick_push(%struct.VEC_const_ggc_root_tab_t_base* %vec_, %struct.ggc_root_tab* %obj_) unnamed_addr #0 !dbg !1993 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_const_ggc_root_tab_t_base* %vec_, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab* %obj_, metadata !1999, metadata !DIExpression()), !dbg !2001
  %num1 = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, %struct.VEC_const_ggc_root_tab_t_base* %vec_, i64 0, i32 0, !dbg !2002
  %0 = load i32, i32* %num1, align 8, !dbg !2002
  %inc = add i32 %0, 1, !dbg !2002
  store i32 %inc, i32* %num1, align 8, !dbg !2002
  %idxprom = zext i32 %0 to i64, !dbg !2002
  %arrayidx = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, %struct.VEC_const_ggc_root_tab_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2002
  call void @llvm.dbg.value(metadata %struct.ggc_root_tab** %arrayidx, metadata !2000, metadata !DIExpression()), !dbg !2001
  store %struct.ggc_root_tab* %obj_, %struct.ggc_root_tab** %arrayidx, align 8, !dbg !2002
  ret %struct.ggc_root_tab** %arrayidx, !dbg !2002
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_const_ggc_root_tab_t_base_space(%struct.VEC_const_ggc_root_tab_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2003 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_const_ggc_root_tab_t_base* %vec_, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 1, metadata !2008, metadata !DIExpression()), !dbg !2009
  %tobool = icmp eq %struct.VEC_const_ggc_root_tab_t_base* %vec_, null, !dbg !2010
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2010

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, %struct.VEC_const_ggc_root_tab_t_base* %vec_, i64 0, i32 1, !dbg !2010
  %0 = load i32, i32* %alloc, align 4, !dbg !2010
  %num = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, %struct.VEC_const_ggc_root_tab_t_base* %vec_, i64 0, i32 0, !dbg !2010
  %1 = load i32, i32* %num, align 8, !dbg !2010
  %cmp1 = icmp ne i32 %0, %1, !dbg !2010
  %phitmp = zext i1 %cmp1 to i32, !dbg !2010
  br label %cond.end, !dbg !2010

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2010

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !2010
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_const_ggc_cache_tab_t_heap_reserve(%struct.VEC_const_ggc_cache_tab_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2011 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_const_ggc_cache_tab_t_heap** @extra_cache_vec, metadata !2015, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i32 1, metadata !2016, metadata !DIExpression()), !dbg !2018
  %0 = load %struct.VEC_const_ggc_cache_tab_t_heap*, %struct.VEC_const_ggc_cache_tab_t_heap** @extra_cache_vec, align 8, !dbg !2019
  %tobool = icmp eq %struct.VEC_const_ggc_cache_tab_t_heap* %0, null, !dbg !2019
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2019

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_heap, %struct.VEC_const_ggc_cache_tab_t_heap* %0, i64 0, i32 0, !dbg !2019
  br label %cond.end, !dbg !2019

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_const_ggc_cache_tab_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2019
  %call = tail call fastcc i32 @VEC_const_ggc_cache_tab_t_base_space(%struct.VEC_const_ggc_cache_tab_t_base* %cond, i32 1) #7, !dbg !2019
  %tobool1 = icmp eq i32 %call, 0, !dbg !2019
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2017, metadata !DIExpression()), !dbg !2018
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2019

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_const_ggc_cache_tab_t_heap** @extra_cache_vec to i8**), align 8, !dbg !2020
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %1, i32 1) #6, !dbg !2020
  store i8* %call3, i8** bitcast (%struct.VEC_const_ggc_cache_tab_t_heap** @extra_cache_vec to i8**), align 8, !dbg !2020
  br label %if.end, !dbg !2020

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2019
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ggc_cache_tab** @VEC_const_ggc_cache_tab_t_base_quick_push(%struct.VEC_const_ggc_cache_tab_t_base* %vec_, %struct.ggc_cache_tab* %obj_) unnamed_addr #0 !dbg !2022 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_const_ggc_cache_tab_t_base* %vec_, metadata !2027, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab* %obj_, metadata !2028, metadata !DIExpression()), !dbg !2030
  %num1 = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, %struct.VEC_const_ggc_cache_tab_t_base* %vec_, i64 0, i32 0, !dbg !2031
  %0 = load i32, i32* %num1, align 8, !dbg !2031
  %inc = add i32 %0, 1, !dbg !2031
  store i32 %inc, i32* %num1, align 8, !dbg !2031
  %idxprom = zext i32 %0 to i64, !dbg !2031
  %arrayidx = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, %struct.VEC_const_ggc_cache_tab_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2031
  call void @llvm.dbg.value(metadata %struct.ggc_cache_tab** %arrayidx, metadata !2029, metadata !DIExpression()), !dbg !2030
  store %struct.ggc_cache_tab* %obj_, %struct.ggc_cache_tab** %arrayidx, align 8, !dbg !2031
  ret %struct.ggc_cache_tab** %arrayidx, !dbg !2031
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_const_ggc_cache_tab_t_base_space(%struct.VEC_const_ggc_cache_tab_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2032 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_const_ggc_cache_tab_t_base* %vec_, metadata !2036, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i32 1, metadata !2037, metadata !DIExpression()), !dbg !2038
  %tobool = icmp eq %struct.VEC_const_ggc_cache_tab_t_base* %vec_, null, !dbg !2039
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2039

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, %struct.VEC_const_ggc_cache_tab_t_base* %vec_, i64 0, i32 1, !dbg !2039
  %0 = load i32, i32* %alloc, align 4, !dbg !2039
  %num = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, %struct.VEC_const_ggc_cache_tab_t_base* %vec_, i64 0, i32 0, !dbg !2039
  %1 = load i32, i32* %num, align 8, !dbg !2039
  %cmp1 = icmp ne i32 %0, %1, !dbg !2039
  %phitmp = zext i1 %cmp1 to i32, !dbg !2039
  br label %cond.end, !dbg !2039

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2039

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !2039
}

declare dso_local i32 @ggc_set_mark(i8*) local_unnamed_addr #1

declare dso_local void @htab_traverse_noresize(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ggc_htab_delete(i8** %slot, i8* %info) #4 !dbg !2040 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !2042, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8* %info, metadata !2043, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8* %info, metadata !2044, metadata !DIExpression()), !dbg !2045
  %marked_p = getelementptr inbounds i8, i8* %info, i64 40, !dbg !2046
  %0 = bitcast i8* %marked_p to i32 (i8*)**, !dbg !2046
  %1 = load i32 (i8*)*, i32 (i8*)** %0, align 8, !dbg !2046
  %2 = load i8*, i8** %slot, align 8, !dbg !2048
  %call = tail call i32 %1(i8* %2) #6, !dbg !2049
  %tobool = icmp eq i32 %call, 0, !dbg !2049
  br i1 %tobool, label %if.then, label %if.else, !dbg !2050

if.then:                                          ; preds = %entry
  %base = bitcast i8* %info to %struct.htab***, !dbg !2051
  %3 = load %struct.htab**, %struct.htab*** %base, align 8, !dbg !2051
  %4 = load %struct.htab*, %struct.htab** %3, align 8, !dbg !2052
  tail call void @htab_clear_slot(%struct.htab* %4, i8** %slot) #6, !dbg !2053
  br label %if.end, !dbg !2053

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %info, metadata !2044, metadata !DIExpression()), !dbg !2045
  %cb = getelementptr inbounds i8, i8* %info, i64 24, !dbg !2054
  %5 = bitcast i8* %cb to void (i8*)**, !dbg !2054
  %6 = load void (i8*)*, void (i8*)** %5, align 8, !dbg !2054
  %7 = load i8*, i8** %slot, align 8, !dbg !2055
  tail call void %6(i8* %7) #6, !dbg !2056
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1, !dbg !2057
}

declare dso_local void @htab_clear_slot(%struct.htab*, i8**) local_unnamed_addr #1

declare dso_local void @ggc_pch_count_object(%struct.ggc_pch_data*, i8*, i64, i8 zeroext, i32) local_unnamed_addr #1

declare dso_local i8* @ggc_pch_alloc_object(%struct.ggc_pch_data*, i8*, i64, i8 zeroext, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!446, !447, !448}
!llvm.ident = !{!449}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ggc_protect_identifiers", scope: !2, file: !3, line: 56, type: !229, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !227, globals: !429, nameTableKind: None)
!3 = !DIFile(filename: "ggc-common.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gt_types_enum", file: !6, line: 23, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./gtype-desc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!9 = !DIEnumerator(name: "gt_ggc_e_15interface_tuple", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "gt_ggc_e_16volatilized_type", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "gt_ggc_e_17string_descriptor", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "gt_ggc_e_15c_inline_static", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "gt_ggc_e_24VEC_c_goto_bindings_p_gc", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "gt_ggc_e_15c_goto_bindings", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "gt_ggc_e_7c_scope", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "gt_ggc_e_9c_binding", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "gt_ggc_e_12c_label_vars", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "gt_ggc_e_8c_parser", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "gt_ggc_e_9imp_entry", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "gt_ggc_e_16hashed_attribute", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "gt_ggc_e_12hashed_entry", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "gt_ggc_e_14type_assertion", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "gt_ggc_e_18treetreehash_entry", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "gt_ggc_e_5CPool", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "gt_ggc_e_3JCF", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "gt_ggc_e_17module_htab_entry", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "gt_ggc_e_13binding_level", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "gt_ggc_e_9opt_stack", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "gt_ggc_e_11align_stack", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "gt_ggc_e_18VEC_tree_gc_vec_gc", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "gt_ggc_e_19VEC_const_char_p_gc", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "gt_ggc_e_21pending_abstract_type", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "gt_ggc_e_15VEC_tree_int_gc", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "gt_ggc_e_9cp_parser", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "gt_ggc_e_17cp_parser_context", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "gt_ggc_e_8cp_lexer", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "gt_ggc_e_10tree_check", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "gt_ggc_e_22VEC_deferred_access_gc", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "gt_ggc_e_10spec_entry", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "gt_ggc_e_16pending_template", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "gt_ggc_e_21named_label_use_entry", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "gt_ggc_e_28VEC_deferred_access_check_gc", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "gt_ggc_e_18sorted_fields_type", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "gt_ggc_e_18VEC_tree_pair_s_gc", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "gt_ggc_e_17named_label_entry", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "gt_ggc_e_32VEC_qualified_typedef_usage_t_gc", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "gt_ggc_e_14cp_token_cache", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "gt_ggc_e_11saved_scope", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "gt_ggc_e_16cxx_int_tree_map", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "gt_ggc_e_23VEC_cp_class_binding_gc", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "gt_ggc_e_24VEC_cxx_saved_binding_gc", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "gt_ggc_e_16cp_binding_level", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "gt_ggc_e_11cxx_binding", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "gt_ggc_e_15binding_entry_s", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "gt_ggc_e_15binding_table_s", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "gt_ggc_e_11tinst_level", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "gt_ggc_e_14VEC_tinfo_s_gc", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "gt_ggc_e_18gnat_binding_level", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "gt_ggc_e_9elab_info", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "gt_ggc_e_10stmt_group", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "gt_ggc_e_16VEC_parm_attr_gc", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "gt_ggc_e_11parm_attr_d", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "gt_ggc_e_22VEC_ipa_edge_args_t_gc", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "gt_ggc_e_20lto_symtab_entry_def", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "gt_ggc_e_20ssa_operand_memory_d", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "gt_ggc_e_13scev_info_str", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "gt_ggc_e_24VEC_mem_addr_template_gc", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "gt_ggc_e_13VEC_gimple_gc", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "gt_ggc_e_9type_hash", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "gt_ggc_e_16string_pool_data", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "gt_ggc_e_13libfunc_entry", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "gt_ggc_e_23temp_slot_address_entry", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "gt_ggc_e_15throw_stmt_node", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "gt_ggc_e_21VEC_eh_landing_pad_gc", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "gt_ggc_e_16VEC_eh_region_gc", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "gt_ggc_e_10eh_catch_d", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "gt_ggc_e_16eh_landing_pad_d", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "gt_ggc_e_11eh_region_d", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "gt_ggc_e_10vcall_insn", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "gt_ggc_e_18VEC_vcall_entry_gc", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "gt_ggc_e_18VEC_dcall_entry_gc", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "gt_ggc_e_16var_loc_list_def", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "gt_ggc_e_12var_loc_node", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "gt_ggc_e_20VEC_die_arg_entry_gc", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "gt_ggc_e_16limbo_die_struct", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "gt_ggc_e_20VEC_pubname_entry_gc", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "gt_ggc_e_19VEC_dw_attr_node_gc", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "gt_ggc_e_18comdat_type_struct", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "gt_ggc_e_25dw_ranges_by_label_struct", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "gt_ggc_e_16dw_ranges_struct", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "gt_ggc_e_28dw_separate_line_info_struct", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "gt_ggc_e_19dw_line_info_struct", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "gt_ggc_e_25VEC_deferred_locations_gc", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "gt_ggc_e_18dw_loc_list_struct", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "gt_ggc_e_15dwarf_file_data", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "gt_ggc_e_15queued_reg_save", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "gt_ggc_e_20indirect_string_node", value: 88, isUnsigned: true)
!98 = !DIEnumerator(name: "gt_ggc_e_19dw_loc_descr_struct", value: 89, isUnsigned: true)
!99 = !DIEnumerator(name: "gt_ggc_e_13dw_fde_struct", value: 90, isUnsigned: true)
!100 = !DIEnumerator(name: "gt_ggc_e_13dw_cfi_struct", value: 91, isUnsigned: true)
!101 = !DIEnumerator(name: "gt_ggc_e_8typeinfo", value: 92, isUnsigned: true)
!102 = !DIEnumerator(name: "gt_ggc_e_22VEC_alias_set_entry_gc", value: 93, isUnsigned: true)
!103 = !DIEnumerator(name: "gt_ggc_e_17alias_set_entry_d", value: 94, isUnsigned: true)
!104 = !DIEnumerator(name: "gt_ggc_e_24constant_descriptor_tree", value: 95, isUnsigned: true)
!105 = !DIEnumerator(name: "gt_ggc_e_15cgraph_asm_node", value: 96, isUnsigned: true)
!106 = !DIEnumerator(name: "gt_ggc_e_12varpool_node", value: 97, isUnsigned: true)
!107 = !DIEnumerator(name: "gt_ggc_e_22VEC_cgraph_node_set_gc", value: 98, isUnsigned: true)
!108 = !DIEnumerator(name: "gt_ggc_e_19cgraph_node_set_def", value: 99, isUnsigned: true)
!109 = !DIEnumerator(name: "gt_ggc_e_27cgraph_node_set_element_def", value: 100, isUnsigned: true)
!110 = !DIEnumerator(name: "gt_ggc_e_22VEC_cgraph_node_ptr_gc", value: 101, isUnsigned: true)
!111 = !DIEnumerator(name: "gt_ggc_e_11cgraph_edge", value: 102, isUnsigned: true)
!112 = !DIEnumerator(name: "gt_ggc_e_24VEC_ipa_replace_map_p_gc", value: 103, isUnsigned: true)
!113 = !DIEnumerator(name: "gt_ggc_e_15ipa_replace_map", value: 104, isUnsigned: true)
!114 = !DIEnumerator(name: "gt_ggc_e_11cgraph_node", value: 105, isUnsigned: true)
!115 = !DIEnumerator(name: "gt_ggc_e_18VEC_basic_block_gc", value: 106, isUnsigned: true)
!116 = !DIEnumerator(name: "gt_ggc_e_14gimple_bb_info", value: 107, isUnsigned: true)
!117 = !DIEnumerator(name: "gt_ggc_e_11rtl_bb_info", value: 108, isUnsigned: true)
!118 = !DIEnumerator(name: "gt_ggc_e_11VEC_edge_gc", value: 109, isUnsigned: true)
!119 = !DIEnumerator(name: "gt_ggc_e_17cselib_val_struct", value: 110, isUnsigned: true)
!120 = !DIEnumerator(name: "gt_ggc_e_12elt_loc_list", value: 111, isUnsigned: true)
!121 = !DIEnumerator(name: "gt_ggc_e_13VEC_loop_p_gc", value: 112, isUnsigned: true)
!122 = !DIEnumerator(name: "gt_ggc_e_4loop", value: 113, isUnsigned: true)
!123 = !DIEnumerator(name: "gt_ggc_e_9loop_exit", value: 114, isUnsigned: true)
!124 = !DIEnumerator(name: "gt_ggc_e_13nb_iter_bound", value: 115, isUnsigned: true)
!125 = !DIEnumerator(name: "gt_ggc_e_24types_used_by_vars_entry", value: 116, isUnsigned: true)
!126 = !DIEnumerator(name: "gt_ggc_e_17language_function", value: 117, isUnsigned: true)
!127 = !DIEnumerator(name: "gt_ggc_e_5loops", value: 118, isUnsigned: true)
!128 = !DIEnumerator(name: "gt_ggc_e_18control_flow_graph", value: 119, isUnsigned: true)
!129 = !DIEnumerator(name: "gt_ggc_e_9eh_status", value: 120, isUnsigned: true)
!130 = !DIEnumerator(name: "gt_ggc_e_20initial_value_struct", value: 121, isUnsigned: true)
!131 = !DIEnumerator(name: "gt_ggc_e_17rtx_constant_pool", value: 122, isUnsigned: true)
!132 = !DIEnumerator(name: "gt_ggc_e_18VEC_temp_slot_p_gc", value: 123, isUnsigned: true)
!133 = !DIEnumerator(name: "gt_ggc_e_9temp_slot", value: 124, isUnsigned: true)
!134 = !DIEnumerator(name: "gt_ggc_e_9gimple_df", value: 125, isUnsigned: true)
!135 = !DIEnumerator(name: "gt_ggc_e_23VEC_call_site_record_gc", value: 126, isUnsigned: true)
!136 = !DIEnumerator(name: "gt_ggc_e_18call_site_record_d", value: 127, isUnsigned: true)
!137 = !DIEnumerator(name: "gt_ggc_e_14sequence_stack", value: 128, isUnsigned: true)
!138 = !DIEnumerator(name: "gt_ggc_e_8elt_list", value: 129, isUnsigned: true)
!139 = !DIEnumerator(name: "gt_ggc_e_17tree_priority_map", value: 130, isUnsigned: true)
!140 = !DIEnumerator(name: "gt_ggc_e_12tree_int_map", value: 131, isUnsigned: true)
!141 = !DIEnumerator(name: "gt_ggc_e_8tree_map", value: 132, isUnsigned: true)
!142 = !DIEnumerator(name: "gt_ggc_e_14lang_tree_node", value: 133, isUnsigned: true)
!143 = !DIEnumerator(name: "gt_ggc_e_24tree_statement_list_node", value: 134, isUnsigned: true)
!144 = !DIEnumerator(name: "gt_ggc_e_9var_ann_d", value: 135, isUnsigned: true)
!145 = !DIEnumerator(name: "gt_ggc_e_9lang_decl", value: 136, isUnsigned: true)
!146 = !DIEnumerator(name: "gt_ggc_e_9lang_type", value: 137, isUnsigned: true)
!147 = !DIEnumerator(name: "gt_ggc_e_10die_struct", value: 138, isUnsigned: true)
!148 = !DIEnumerator(name: "gt_ggc_e_15varray_head_tag", value: 139, isUnsigned: true)
!149 = !DIEnumerator(name: "gt_ggc_e_12ptr_info_def", value: 140, isUnsigned: true)
!150 = !DIEnumerator(name: "gt_ggc_e_22VEC_constructor_elt_gc", value: 141, isUnsigned: true)
!151 = !DIEnumerator(name: "gt_ggc_e_17VEC_alias_pair_gc", value: 142, isUnsigned: true)
!152 = !DIEnumerator(name: "gt_ggc_e_11VEC_tree_gc", value: 143, isUnsigned: true)
!153 = !DIEnumerator(name: "gt_ggc_e_12VEC_uchar_gc", value: 144, isUnsigned: true)
!154 = !DIEnumerator(name: "gt_ggc_e_8function", value: 145, isUnsigned: true)
!155 = !DIEnumerator(name: "gt_ggc_e_23constant_descriptor_rtx", value: 146, isUnsigned: true)
!156 = !DIEnumerator(name: "gt_ggc_e_11fixed_value", value: 147, isUnsigned: true)
!157 = !DIEnumerator(name: "gt_ggc_e_10real_value", value: 148, isUnsigned: true)
!158 = !DIEnumerator(name: "gt_ggc_e_10VEC_rtx_gc", value: 149, isUnsigned: true)
!159 = !DIEnumerator(name: "gt_ggc_e_12object_block", value: 150, isUnsigned: true)
!160 = !DIEnumerator(name: "gt_ggc_e_9reg_attrs", value: 151, isUnsigned: true)
!161 = !DIEnumerator(name: "gt_ggc_e_9mem_attrs", value: 152, isUnsigned: true)
!162 = !DIEnumerator(name: "gt_ggc_e_14bitmap_obstack", value: 153, isUnsigned: true)
!163 = !DIEnumerator(name: "gt_ggc_e_18bitmap_element_def", value: 154, isUnsigned: true)
!164 = !DIEnumerator(name: "gt_ggc_e_16machine_function", value: 155, isUnsigned: true)
!165 = !DIEnumerator(name: "gt_ggc_e_17stack_local_entry", value: 156, isUnsigned: true)
!166 = !DIEnumerator(name: "gt_ggc_e_15basic_block_def", value: 157, isUnsigned: true)
!167 = !DIEnumerator(name: "gt_ggc_e_8edge_def", value: 158, isUnsigned: true)
!168 = !DIEnumerator(name: "gt_ggc_e_17gimple_seq_node_d", value: 159, isUnsigned: true)
!169 = !DIEnumerator(name: "gt_ggc_e_12gimple_seq_d", value: 160, isUnsigned: true)
!170 = !DIEnumerator(name: "gt_ggc_e_7section", value: 161, isUnsigned: true)
!171 = !DIEnumerator(name: "gt_ggc_e_18gimple_statement_d", value: 162, isUnsigned: true)
!172 = !DIEnumerator(name: "gt_ggc_e_9rtvec_def", value: 163, isUnsigned: true)
!173 = !DIEnumerator(name: "gt_ggc_e_7rtx_def", value: 164, isUnsigned: true)
!174 = !DIEnumerator(name: "gt_ggc_e_15bitmap_head_def", value: 165, isUnsigned: true)
!175 = !DIEnumerator(name: "gt_ggc_e_9tree_node", value: 166, isUnsigned: true)
!176 = !DIEnumerator(name: "gt_ggc_e_6answer", value: 167, isUnsigned: true)
!177 = !DIEnumerator(name: "gt_ggc_e_9cpp_macro", value: 168, isUnsigned: true)
!178 = !DIEnumerator(name: "gt_ggc_e_9cpp_token", value: 169, isUnsigned: true)
!179 = !DIEnumerator(name: "gt_ggc_e_9line_maps", value: 170, isUnsigned: true)
!180 = !DIEnumerator(name: "gt_e_II17splay_tree_node_s", value: 171, isUnsigned: true)
!181 = !DIEnumerator(name: "gt_e_SP9tree_node17splay_tree_node_s", value: 172, isUnsigned: true)
!182 = !DIEnumerator(name: "gt_e_P9tree_nodeP9tree_node17splay_tree_node_s", value: 173, isUnsigned: true)
!183 = !DIEnumerator(name: "gt_e_IP9tree_node17splay_tree_node_s", value: 174, isUnsigned: true)
!184 = !DIEnumerator(name: "gt_e_P15interface_tuple4htab", value: 175, isUnsigned: true)
!185 = !DIEnumerator(name: "gt_e_P16volatilized_type4htab", value: 176, isUnsigned: true)
!186 = !DIEnumerator(name: "gt_e_P17string_descriptor4htab", value: 177, isUnsigned: true)
!187 = !DIEnumerator(name: "gt_e_P14type_assertion4htab", value: 178, isUnsigned: true)
!188 = !DIEnumerator(name: "gt_e_P18treetreehash_entry4htab", value: 179, isUnsigned: true)
!189 = !DIEnumerator(name: "gt_e_P17module_htab_entry4htab", value: 180, isUnsigned: true)
!190 = !DIEnumerator(name: "gt_e_P21pending_abstract_type4htab", value: 181, isUnsigned: true)
!191 = !DIEnumerator(name: "gt_e_P10spec_entry4htab", value: 182, isUnsigned: true)
!192 = !DIEnumerator(name: "gt_e_P16cxx_int_tree_map4htab", value: 183, isUnsigned: true)
!193 = !DIEnumerator(name: "gt_e_P17named_label_entry4htab", value: 184, isUnsigned: true)
!194 = !DIEnumerator(name: "gt_e_P12tree_int_map4htab", value: 185, isUnsigned: true)
!195 = !DIEnumerator(name: "gt_e_P20lto_symtab_entry_def4htab", value: 186, isUnsigned: true)
!196 = !DIEnumerator(name: "gt_e_IP9tree_node12splay_tree_s", value: 187, isUnsigned: true)
!197 = !DIEnumerator(name: "gt_e_P9tree_nodeP9tree_node12splay_tree_s", value: 188, isUnsigned: true)
!198 = !DIEnumerator(name: "gt_e_P12varpool_node4htab", value: 189, isUnsigned: true)
!199 = !DIEnumerator(name: "gt_e_P13scev_info_str4htab", value: 190, isUnsigned: true)
!200 = !DIEnumerator(name: "gt_e_P23constant_descriptor_rtx4htab", value: 191, isUnsigned: true)
!201 = !DIEnumerator(name: "gt_e_P24constant_descriptor_tree4htab", value: 192, isUnsigned: true)
!202 = !DIEnumerator(name: "gt_e_P12object_block4htab", value: 193, isUnsigned: true)
!203 = !DIEnumerator(name: "gt_e_P7section4htab", value: 194, isUnsigned: true)
!204 = !DIEnumerator(name: "gt_e_P17tree_priority_map4htab", value: 195, isUnsigned: true)
!205 = !DIEnumerator(name: "gt_e_P8tree_map4htab", value: 196, isUnsigned: true)
!206 = !DIEnumerator(name: "gt_e_P9type_hash4htab", value: 197, isUnsigned: true)
!207 = !DIEnumerator(name: "gt_e_P13libfunc_entry4htab", value: 198, isUnsigned: true)
!208 = !DIEnumerator(name: "gt_e_P23temp_slot_address_entry4htab", value: 199, isUnsigned: true)
!209 = !DIEnumerator(name: "gt_e_P15throw_stmt_node4htab", value: 200, isUnsigned: true)
!210 = !DIEnumerator(name: "gt_e_P9reg_attrs4htab", value: 201, isUnsigned: true)
!211 = !DIEnumerator(name: "gt_e_P9mem_attrs4htab", value: 202, isUnsigned: true)
!212 = !DIEnumerator(name: "gt_e_P7rtx_def4htab", value: 203, isUnsigned: true)
!213 = !DIEnumerator(name: "gt_e_SP9tree_node12splay_tree_s", value: 204, isUnsigned: true)
!214 = !DIEnumerator(name: "gt_e_P10vcall_insn4htab", value: 205, isUnsigned: true)
!215 = !DIEnumerator(name: "gt_e_P16var_loc_list_def4htab", value: 206, isUnsigned: true)
!216 = !DIEnumerator(name: "gt_e_P10die_struct4htab", value: 207, isUnsigned: true)
!217 = !DIEnumerator(name: "gt_e_P15dwarf_file_data4htab", value: 208, isUnsigned: true)
!218 = !DIEnumerator(name: "gt_e_P20indirect_string_node4htab", value: 209, isUnsigned: true)
!219 = !DIEnumerator(name: "gt_e_P11cgraph_node4htab", value: 210, isUnsigned: true)
!220 = !DIEnumerator(name: "gt_e_II12splay_tree_s", value: 211, isUnsigned: true)
!221 = !DIEnumerator(name: "gt_e_P27cgraph_node_set_element_def4htab", value: 212, isUnsigned: true)
!222 = !DIEnumerator(name: "gt_e_P11cgraph_edge4htab", value: 213, isUnsigned: true)
!223 = !DIEnumerator(name: "gt_e_P9loop_exit4htab", value: 214, isUnsigned: true)
!224 = !DIEnumerator(name: "gt_e_P24types_used_by_vars_entry4htab", value: 215, isUnsigned: true)
!225 = !DIEnumerator(name: "gt_e_P9tree_node4htab", value: 216, isUnsigned: true)
!226 = !DIEnumerator(name: "gt_types_enum_last", value: 217, isUnsigned: true)
!227 = !{!228, !229, !230, !231, !234, !235, !237, !232, !238, !262, !264, !239, !265, !267, !269, !7, !297, !281, !324, !310, !309, !363, !365, !427, !257}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!230 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_data", file: !3, line: 299, size: 448, elements: !241)
!241 = !{!242, !243, !244, !254, !256, !260, !261}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !240, file: !3, line: 301, baseType: !234, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "note_ptr_cookie", scope: !240, file: !3, line: 302, baseType: !234, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "note_ptr_fn", scope: !240, file: !3, line: 303, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_note_pointers", file: !246, line: 45, baseType: !247)
!246 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !234, !234, !250, !234}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_operator", file: !246, line: 38, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !234, !234}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "reorder_fn", scope: !240, file: !3, line: 304, baseType: !255, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_handle_reorder", file: !246, line: 53, baseType: !247)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !240, file: !3, line: 305, baseType: !257, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !258, line: 46, baseType: !259)
!258 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!259 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "new_addr", scope: !240, file: !3, line: 306, baseType: !234, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !240, file: !3, line: 307, baseType: !5, size: 32, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !263, line: 47, baseType: !7)
!263 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!264 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !266, line: 131, baseType: !267)
!266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "")
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !268, line: 157, baseType: !259)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_const_ggc_root_tab_t_heap", file: !3, line: 98, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_const_ggc_root_tab_t_heap", file: !3, line: 98, size: 128, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !271, file: !3, line: 98, baseType: !274, size: 128)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_const_ggc_root_tab_t_base", file: !3, line: 97, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_const_ggc_root_tab_t_base", file: !3, line: 97, size: 128, elements: !276)
!276 = !{!277, !278, !279}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !275, file: !3, line: 97, baseType: !7, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !275, file: !3, line: 97, baseType: !7, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !275, file: !3, line: 97, baseType: !280, size: 64, offset: 64)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 64, elements: !295)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_ggc_root_tab_t", file: !3, line: 96, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !246, line: 69, size: 320, elements: !285)
!285 = !{!286, !287, !288, !289, !294}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !284, file: !246, line: 70, baseType: !234, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !284, file: !246, line: 71, baseType: !257, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !284, file: !246, line: 72, baseType: !257, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !284, file: !246, line: 73, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !246, line: 65, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !234}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !284, file: !246, line: 74, baseType: !290, size: 64, offset: 256)
!295 = !{!296}
!296 = !DISubrange(count: 1)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_const_ggc_cache_tab_t_heap", file: !3, line: 117, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_const_ggc_cache_tab_t_heap", file: !3, line: 117, size: 128, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !299, file: !3, line: 117, baseType: !302, size: 128)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_const_ggc_cache_tab_t_base", file: !3, line: 116, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_const_ggc_cache_tab_t_base", file: !3, line: 116, size: 128, elements: !304)
!304 = !{!305, !306, !307}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !303, file: !3, line: 116, baseType: !7, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !303, file: !3, line: 116, baseType: !7, size: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !303, file: !3, line: 116, baseType: !308, size: 64, offset: 64)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 64, elements: !295)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_ggc_cache_tab_t", file: !3, line: 115, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_cache_tab", file: !246, line: 85, size: 384, elements: !313)
!313 = !{!314, !355, !356, !357, !358, !359}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !312, file: !246, line: 86, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !263, line: 100, size: 896, elements: !318)
!318 = !{!319, !326, !331, !333, !334, !335, !336, !337, !338, !339, !344, !346, !347, !352, !354}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !317, file: !263, line: 102, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !263, line: 52, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!262, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !317, file: !263, line: 105, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !263, line: 59, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!230, !324, !324}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !317, file: !263, line: 108, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !263, line: 63, baseType: !291)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !317, file: !263, line: 111, baseType: !237, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !317, file: !263, line: 114, baseType: !257, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !317, file: !263, line: 117, baseType: !257, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !317, file: !263, line: 120, baseType: !257, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !317, file: !263, line: 124, baseType: !7, size: 32, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !317, file: !263, line: 128, baseType: !7, size: 32, offset: 480)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !317, file: !263, line: 131, baseType: !340, size: 64, offset: 512)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !263, line: 75, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!234, !257, !257}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !317, file: !263, line: 132, baseType: !345, size: 64, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !263, line: 78, baseType: !291)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !317, file: !263, line: 135, baseType: !234, size: 64, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !317, file: !263, line: 136, baseType: !348, size: 64, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !263, line: 82, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!234, !234, !257, !257}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !317, file: !263, line: 137, baseType: !353, size: 64, offset: 768)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !263, line: 83, baseType: !251)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !317, file: !263, line: 141, baseType: !7, size: 32, offset: 832)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !312, file: !246, line: 87, baseType: !257, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !312, file: !246, line: 88, baseType: !257, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !312, file: !246, line: 89, baseType: !290, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !312, file: !246, line: 90, baseType: !290, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "marked_p", scope: !312, file: !246, line: 91, baseType: !360, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!230, !324}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "traversal_state", file: !3, line: 380, size: 320, elements: !367)
!367 = !{!368, !421, !424, !425, !426}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !366, file: !3, line: 382, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !371, line: 7, baseType: !372)
!371 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !373, line: 49, size: 1728, elements: !374)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !390, !392, !393, !394, !396, !398, !400, !402, !405, !407, !410, !413, !414, !415, !416, !417}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !372, file: !373, line: 51, baseType: !230, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !372, file: !373, line: 54, baseType: !232, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !372, file: !373, line: 55, baseType: !232, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !372, file: !373, line: 56, baseType: !232, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !372, file: !373, line: 57, baseType: !232, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !372, file: !373, line: 58, baseType: !232, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !372, file: !373, line: 59, baseType: !232, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !372, file: !373, line: 60, baseType: !232, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !372, file: !373, line: 61, baseType: !232, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !372, file: !373, line: 64, baseType: !232, size: 64, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !372, file: !373, line: 65, baseType: !232, size: 64, offset: 640)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !372, file: !373, line: 66, baseType: !232, size: 64, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !372, file: !373, line: 68, baseType: !388, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !373, line: 36, flags: DIFlagFwdDecl)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !372, file: !373, line: 70, baseType: !391, size: 64, offset: 832)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !372, file: !373, line: 72, baseType: !230, size: 32, offset: 896)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !372, file: !373, line: 73, baseType: !230, size: 32, offset: 928)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !372, file: !373, line: 74, baseType: !395, size: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !268, line: 152, baseType: !264)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !372, file: !373, line: 77, baseType: !397, size: 16, offset: 1024)
!397 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !372, file: !373, line: 78, baseType: !399, size: 8, offset: 1040)
!399 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !372, file: !373, line: 79, baseType: !401, size: 8, offset: 1048)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 8, elements: !295)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !372, file: !373, line: 81, baseType: !403, size: 64, offset: 1088)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !373, line: 43, baseType: null)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !372, file: !373, line: 89, baseType: !406, size: 64, offset: 1152)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !268, line: 153, baseType: !264)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !372, file: !373, line: 91, baseType: !408, size: 64, offset: 1216)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !373, line: 37, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !372, file: !373, line: 92, baseType: !411, size: 64, offset: 1280)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !373, line: 38, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !372, file: !373, line: 93, baseType: !391, size: 64, offset: 1344)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !372, file: !373, line: 94, baseType: !234, size: 64, offset: 1408)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !372, file: !373, line: 95, baseType: !257, size: 64, offset: 1472)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !372, file: !373, line: 96, baseType: !230, size: 32, offset: 1536)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !372, file: !373, line: 98, baseType: !418, size: 160, offset: 1568)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 160, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 20)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !366, file: !3, line: 383, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_pch_data", file: !246, line: 161, flags: DIFlagFwdDecl)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !366, file: !3, line: 384, baseType: !257, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ptrs", scope: !366, file: !3, line: 385, baseType: !238, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ptrs_i", scope: !366, file: !3, line: 386, baseType: !257, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!429 = !{!0, !430, !432, !439, !441, !443}
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "ggc_force_collect", scope: !2, file: !3, line: 53, type: !229, isLocal: false, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "ggc_stats", scope: !2, file: !3, line: 59, type: !434, isLocal: true, isDefinition: true)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "ggc_statistics", file: !246, line: 299, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_statistics", file: !246, line: 295, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !436, file: !246, line: 298, baseType: !230, size: 32)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "extra_root_vec", scope: !2, file: !3, line: 99, type: !269, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "extra_cache_vec", scope: !2, file: !3, line: 118, type: !297, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "saving_htab", scope: !2, file: !3, line: 297, type: !445, isLocal: true, isDefinition: true)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !263, line: 144, baseType: !316)
!446 = !{i32 2, !"Dwarf Version", i32 4}
!447 = !{i32 2, !"Debug Info Version", i32 3}
!448 = !{i32 1, !"wchar_size", i32 4}
!449 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!450 = distinct !DISubprogram(name: "vprintf", scope: !451, file: !451, line: 39, type: !452, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!451 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!452 = !DISubroutineType(types: !453)
!453 = !{!230, !454, !455}
!454 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !457)
!457 = !{!458, !459, !460, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !456, file: !3, baseType: !7, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !456, file: !3, baseType: !7, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !456, file: !3, baseType: !234, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !456, file: !3, baseType: !234, size: 64, offset: 128)
!462 = !{!463, !464}
!463 = !DILocalVariable(name: "__fmt", arg: 1, scope: !450, file: !451, line: 39, type: !454)
!464 = !DILocalVariable(name: "__arg", arg: 2, scope: !450, file: !451, line: 39, type: !455)
!465 = !DILocation(line: 0, scope: !450)
!466 = !DILocation(line: 41, column: 20, scope: !450)
!467 = !DILocation(line: 41, column: 10, scope: !450)
!468 = !DILocation(line: 41, column: 3, scope: !450)
!469 = distinct !DISubprogram(name: "getchar", scope: !451, file: !451, line: 47, type: !470, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!230}
!472 = !{}
!473 = !DILocation(line: 49, column: 16, scope: !469)
!474 = !DILocation(line: 49, column: 10, scope: !469)
!475 = !DILocation(line: 49, column: 3, scope: !469)
!476 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !451, file: !451, line: 56, type: !477, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!230, !369}
!479 = !{!480}
!480 = !DILocalVariable(name: "__fp", arg: 1, scope: !476, file: !451, line: 56, type: !369)
!481 = !DILocation(line: 0, scope: !476)
!482 = !DILocation(line: 58, column: 10, scope: !476)
!483 = !DILocation(line: 58, column: 3, scope: !476)
!484 = distinct !DISubprogram(name: "getc_unlocked", scope: !451, file: !451, line: 66, type: !477, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!485 = !{!486}
!486 = !DILocalVariable(name: "__fp", arg: 1, scope: !484, file: !451, line: 66, type: !369)
!487 = !DILocation(line: 0, scope: !484)
!488 = !DILocation(line: 68, column: 10, scope: !484)
!489 = !DILocation(line: 68, column: 3, scope: !484)
!490 = distinct !DISubprogram(name: "getchar_unlocked", scope: !451, file: !451, line: 73, type: !470, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!491 = !DILocation(line: 75, column: 10, scope: !490)
!492 = !DILocation(line: 75, column: 3, scope: !490)
!493 = distinct !DISubprogram(name: "putchar", scope: !451, file: !451, line: 82, type: !494, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!230, !230}
!496 = !{!497}
!497 = !DILocalVariable(name: "__c", arg: 1, scope: !493, file: !451, line: 82, type: !230)
!498 = !DILocation(line: 0, scope: !493)
!499 = !DILocation(line: 84, column: 21, scope: !493)
!500 = !DILocation(line: 84, column: 10, scope: !493)
!501 = !DILocation(line: 84, column: 3, scope: !493)
!502 = distinct !DISubprogram(name: "fputc_unlocked", scope: !451, file: !451, line: 91, type: !503, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!230, !230, !369}
!505 = !{!506, !507}
!506 = !DILocalVariable(name: "__c", arg: 1, scope: !502, file: !451, line: 91, type: !230)
!507 = !DILocalVariable(name: "__stream", arg: 2, scope: !502, file: !451, line: 91, type: !369)
!508 = !DILocation(line: 0, scope: !502)
!509 = !DILocation(line: 93, column: 10, scope: !502)
!510 = !DILocation(line: 93, column: 3, scope: !502)
!511 = distinct !DISubprogram(name: "putc_unlocked", scope: !451, file: !451, line: 101, type: !503, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!512 = !{!513, !514}
!513 = !DILocalVariable(name: "__c", arg: 1, scope: !511, file: !451, line: 101, type: !230)
!514 = !DILocalVariable(name: "__stream", arg: 2, scope: !511, file: !451, line: 101, type: !369)
!515 = !DILocation(line: 0, scope: !511)
!516 = !DILocation(line: 103, column: 10, scope: !511)
!517 = !DILocation(line: 103, column: 3, scope: !511)
!518 = distinct !DISubprogram(name: "putchar_unlocked", scope: !451, file: !451, line: 108, type: !494, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !519)
!519 = !{!520}
!520 = !DILocalVariable(name: "__c", arg: 1, scope: !518, file: !451, line: 108, type: !230)
!521 = !DILocation(line: 0, scope: !518)
!522 = !DILocation(line: 110, column: 10, scope: !518)
!523 = !DILocation(line: 110, column: 3, scope: !518)
!524 = distinct !DISubprogram(name: "getline", scope: !451, file: !451, line: 118, type: !525, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !529)
!525 = !DISubroutineType(types: !526)
!526 = !{!527, !231, !528, !369}
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !268, line: 193, baseType: !264)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!529 = !{!530, !531, !532}
!530 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !524, file: !451, line: 118, type: !231)
!531 = !DILocalVariable(name: "__n", arg: 2, scope: !524, file: !451, line: 118, type: !528)
!532 = !DILocalVariable(name: "__stream", arg: 3, scope: !524, file: !451, line: 118, type: !369)
!533 = !DILocation(line: 0, scope: !524)
!534 = !DILocation(line: 120, column: 10, scope: !524)
!535 = !DILocation(line: 120, column: 3, scope: !524)
!536 = distinct !DISubprogram(name: "feof_unlocked", scope: !451, file: !451, line: 128, type: !477, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !537)
!537 = !{!538}
!538 = !DILocalVariable(name: "__stream", arg: 1, scope: !536, file: !451, line: 128, type: !369)
!539 = !DILocation(line: 0, scope: !536)
!540 = !DILocation(line: 130, column: 10, scope: !536)
!541 = !DILocation(line: 130, column: 3, scope: !536)
!542 = distinct !DISubprogram(name: "ferror_unlocked", scope: !451, file: !451, line: 135, type: !477, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!543 = !{!544}
!544 = !DILocalVariable(name: "__stream", arg: 1, scope: !542, file: !451, line: 135, type: !369)
!545 = !DILocation(line: 0, scope: !542)
!546 = !DILocation(line: 137, column: 10, scope: !542)
!547 = !DILocation(line: 137, column: 3, scope: !542)
!548 = distinct !DISubprogram(name: "tolower", scope: !549, file: !549, line: 207, type: !494, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !550)
!549 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!550 = !{!551}
!551 = !DILocalVariable(name: "__c", arg: 1, scope: !548, file: !549, line: 207, type: !230)
!552 = !DILocation(line: 0, scope: !548)
!553 = !DILocation(line: 209, column: 22, scope: !548)
!554 = !DILocation(line: 209, column: 39, scope: !548)
!555 = !DILocation(line: 209, column: 38, scope: !548)
!556 = !DILocation(line: 209, column: 37, scope: !548)
!557 = !DILocation(line: 209, column: 10, scope: !548)
!558 = !DILocation(line: 209, column: 3, scope: !548)
!559 = distinct !DISubprogram(name: "toupper", scope: !549, file: !549, line: 213, type: !494, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !560)
!560 = !{!561}
!561 = !DILocalVariable(name: "__c", arg: 1, scope: !559, file: !549, line: 213, type: !230)
!562 = !DILocation(line: 0, scope: !559)
!563 = !DILocation(line: 215, column: 22, scope: !559)
!564 = !DILocation(line: 215, column: 39, scope: !559)
!565 = !DILocation(line: 215, column: 38, scope: !559)
!566 = !DILocation(line: 215, column: 37, scope: !559)
!567 = !DILocation(line: 215, column: 10, scope: !559)
!568 = !DILocation(line: 215, column: 3, scope: !559)
!569 = distinct !DISubprogram(name: "atoi", scope: !570, file: !570, line: 361, type: !571, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !573)
!570 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!571 = !DISubroutineType(types: !572)
!572 = !{!230, !235}
!573 = !{!574}
!574 = !DILocalVariable(name: "__nptr", arg: 1, scope: !569, file: !570, line: 361, type: !235)
!575 = !DILocation(line: 0, scope: !569)
!576 = !DILocation(line: 363, column: 16, scope: !569)
!577 = !DILocation(line: 363, column: 10, scope: !569)
!578 = !DILocation(line: 363, column: 3, scope: !569)
!579 = distinct !DISubprogram(name: "atol", scope: !570, file: !570, line: 366, type: !580, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !582)
!580 = !DISubroutineType(types: !581)
!581 = !{!264, !235}
!582 = !{!583}
!583 = !DILocalVariable(name: "__nptr", arg: 1, scope: !579, file: !570, line: 366, type: !235)
!584 = !DILocation(line: 0, scope: !579)
!585 = !DILocation(line: 368, column: 10, scope: !579)
!586 = !DILocation(line: 368, column: 3, scope: !579)
!587 = distinct !DISubprogram(name: "atoll", scope: !570, file: !570, line: 373, type: !588, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !591)
!588 = !DISubroutineType(types: !589)
!589 = !{!590, !235}
!590 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!591 = !{!592}
!592 = !DILocalVariable(name: "__nptr", arg: 1, scope: !587, file: !570, line: 373, type: !235)
!593 = !DILocation(line: 0, scope: !587)
!594 = !DILocation(line: 375, column: 10, scope: !587)
!595 = !DILocation(line: 375, column: 3, scope: !587)
!596 = distinct !DISubprogram(name: "bsearch", scope: !597, file: !597, line: 20, type: !598, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !601)
!597 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!598 = !DISubroutineType(types: !599)
!599 = !{!234, !324, !324, !257, !257, !600}
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !570, line: 808, baseType: !328)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!602 = !DILocalVariable(name: "__key", arg: 1, scope: !596, file: !597, line: 20, type: !324)
!603 = !DILocalVariable(name: "__base", arg: 2, scope: !596, file: !597, line: 20, type: !324)
!604 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !596, file: !597, line: 20, type: !257)
!605 = !DILocalVariable(name: "__size", arg: 4, scope: !596, file: !597, line: 20, type: !257)
!606 = !DILocalVariable(name: "__compar", arg: 5, scope: !596, file: !597, line: 21, type: !600)
!607 = !DILocalVariable(name: "__l", scope: !596, file: !597, line: 23, type: !257)
!608 = !DILocalVariable(name: "__u", scope: !596, file: !597, line: 23, type: !257)
!609 = !DILocalVariable(name: "__idx", scope: !596, file: !597, line: 23, type: !257)
!610 = !DILocalVariable(name: "__p", scope: !596, file: !597, line: 24, type: !324)
!611 = !DILocalVariable(name: "__comparison", scope: !596, file: !597, line: 25, type: !230)
!612 = !DILocation(line: 0, scope: !596)
!613 = !DILocation(line: 29, column: 3, scope: !596)
!614 = !DILocation(line: 27, column: 7, scope: !596)
!615 = !DILocation(line: 29, column: 14, scope: !596)
!616 = !DILocation(line: 31, column: 20, scope: !617)
!617 = distinct !DILexicalBlock(scope: !596, file: !597, line: 30, column: 5)
!618 = !DILocation(line: 31, column: 27, scope: !617)
!619 = !DILocation(line: 32, column: 56, scope: !617)
!620 = !DILocation(line: 32, column: 47, scope: !617)
!621 = !DILocation(line: 33, column: 22, scope: !617)
!622 = !DILocation(line: 34, column: 24, scope: !623)
!623 = distinct !DILexicalBlock(scope: !617, file: !597, line: 34, column: 11)
!624 = !DILocation(line: 34, column: 11, scope: !617)
!625 = !DILocation(line: 36, column: 29, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !597, line: 36, column: 16)
!627 = !DILocation(line: 36, column: 16, scope: !623)
!628 = !DILocation(line: 37, column: 14, scope: !626)
!629 = distinct !{!629, !613, !630}
!630 = !DILocation(line: 40, column: 5, scope: !596)
!631 = !DILocation(line: 43, column: 1, scope: !596)
!632 = distinct !DISubprogram(name: "atof", scope: !633, file: !633, line: 25, type: !634, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !637)
!633 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!634 = !DISubroutineType(types: !635)
!635 = !{!636, !235}
!636 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!637 = !{!638}
!638 = !DILocalVariable(name: "__nptr", arg: 1, scope: !632, file: !633, line: 25, type: !235)
!639 = !DILocation(line: 0, scope: !632)
!640 = !DILocation(line: 27, column: 10, scope: !632)
!641 = !DILocation(line: 27, column: 3, scope: !632)
!642 = distinct !DISubprogram(name: "strtoimax", scope: !643, file: !643, line: 324, type: !644, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !650)
!643 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!644 = !DISubroutineType(types: !645)
!645 = !{!646, !454, !649, !230}
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !647, line: 101, baseType: !648)
!647 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !268, line: 72, baseType: !264)
!649 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!650 = !{!651, !652, !653}
!651 = !DILocalVariable(name: "nptr", arg: 1, scope: !642, file: !643, line: 324, type: !454)
!652 = !DILocalVariable(name: "endptr", arg: 2, scope: !642, file: !643, line: 324, type: !649)
!653 = !DILocalVariable(name: "base", arg: 3, scope: !642, file: !643, line: 324, type: !230)
!654 = !DILocation(line: 0, scope: !642)
!655 = !DILocation(line: 327, column: 10, scope: !642)
!656 = !DILocation(line: 327, column: 3, scope: !642)
!657 = distinct !DISubprogram(name: "strtoumax", scope: !643, file: !643, line: 336, type: !658, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !662)
!658 = !DISubroutineType(types: !659)
!659 = !{!660, !454, !649, !230}
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !647, line: 102, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !268, line: 73, baseType: !259)
!662 = !{!663, !664, !665}
!663 = !DILocalVariable(name: "nptr", arg: 1, scope: !657, file: !643, line: 336, type: !454)
!664 = !DILocalVariable(name: "endptr", arg: 2, scope: !657, file: !643, line: 336, type: !649)
!665 = !DILocalVariable(name: "base", arg: 3, scope: !657, file: !643, line: 336, type: !230)
!666 = !DILocation(line: 0, scope: !657)
!667 = !DILocation(line: 339, column: 10, scope: !657)
!668 = !DILocation(line: 339, column: 3, scope: !657)
!669 = distinct !DISubprogram(name: "wcstoimax", scope: !643, file: !643, line: 348, type: !670, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!670 = !DISubroutineType(types: !671)
!671 = !{!646, !672, !676, !230}
!672 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !643, line: 34, baseType: !230)
!676 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!679 = !{!680, !681, !682}
!680 = !DILocalVariable(name: "nptr", arg: 1, scope: !669, file: !643, line: 348, type: !672)
!681 = !DILocalVariable(name: "endptr", arg: 2, scope: !669, file: !643, line: 348, type: !676)
!682 = !DILocalVariable(name: "base", arg: 3, scope: !669, file: !643, line: 348, type: !230)
!683 = !DILocation(line: 0, scope: !669)
!684 = !DILocation(line: 351, column: 10, scope: !669)
!685 = !DILocation(line: 351, column: 3, scope: !669)
!686 = distinct !DISubprogram(name: "wcstoumax", scope: !643, file: !643, line: 362, type: !687, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!660, !672, !676, !230}
!689 = !{!690, !691, !692}
!690 = !DILocalVariable(name: "nptr", arg: 1, scope: !686, file: !643, line: 362, type: !672)
!691 = !DILocalVariable(name: "endptr", arg: 2, scope: !686, file: !643, line: 362, type: !676)
!692 = !DILocalVariable(name: "base", arg: 3, scope: !686, file: !643, line: 362, type: !230)
!693 = !DILocation(line: 0, scope: !686)
!694 = !DILocation(line: 365, column: 10, scope: !686)
!695 = !DILocation(line: 365, column: 3, scope: !686)
!696 = distinct !DISubprogram(name: "stat", scope: !697, file: !697, line: 453, type: !698, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !737)
!697 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!698 = !DISubroutineType(types: !699)
!699 = !{!230, !235, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !702, line: 46, size: 1152, elements: !703)
!702 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!703 = !{!704, !706, !708, !710, !712, !714, !716, !717, !718, !719, !721, !723, !731, !732, !733}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !701, file: !702, line: 48, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !268, line: 145, baseType: !259)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !701, file: !702, line: 53, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !268, line: 148, baseType: !259)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !701, file: !702, line: 61, baseType: !709, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !268, line: 151, baseType: !259)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !701, file: !702, line: 62, baseType: !711, size: 32, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !268, line: 150, baseType: !7)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !701, file: !702, line: 64, baseType: !713, size: 32, offset: 224)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !268, line: 146, baseType: !7)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !701, file: !702, line: 65, baseType: !715, size: 32, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !268, line: 147, baseType: !7)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !701, file: !702, line: 67, baseType: !230, size: 32, offset: 288)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !701, file: !702, line: 69, baseType: !705, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !701, file: !702, line: 74, baseType: !395, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !701, file: !702, line: 78, baseType: !720, size: 64, offset: 448)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !268, line: 174, baseType: !264)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !701, file: !702, line: 80, baseType: !722, size: 64, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !268, line: 179, baseType: !264)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !701, file: !702, line: 91, baseType: !724, size: 128, offset: 576)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !725, line: 10, size: 128, elements: !726)
!725 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!726 = !{!727, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !724, file: !725, line: 12, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !268, line: 160, baseType: !264)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !724, file: !725, line: 16, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !268, line: 196, baseType: !264)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !701, file: !702, line: 92, baseType: !724, size: 128, offset: 704)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !701, file: !702, line: 93, baseType: !724, size: 128, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !701, file: !702, line: 106, baseType: !734, size: 192, offset: 960)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 192, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 3)
!737 = !{!738, !739}
!738 = !DILocalVariable(name: "__path", arg: 1, scope: !696, file: !697, line: 453, type: !235)
!739 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !696, file: !697, line: 453, type: !700)
!740 = !DILocation(line: 0, scope: !696)
!741 = !DILocation(line: 455, column: 10, scope: !696)
!742 = !DILocation(line: 455, column: 3, scope: !696)
!743 = distinct !DISubprogram(name: "lstat", scope: !697, file: !697, line: 460, type: !698, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!744 = !{!745, !746}
!745 = !DILocalVariable(name: "__path", arg: 1, scope: !743, file: !697, line: 460, type: !235)
!746 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !743, file: !697, line: 460, type: !700)
!747 = !DILocation(line: 0, scope: !743)
!748 = !DILocation(line: 462, column: 10, scope: !743)
!749 = !DILocation(line: 462, column: 3, scope: !743)
!750 = distinct !DISubprogram(name: "fstat", scope: !697, file: !697, line: 467, type: !751, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!230, !230, !700}
!753 = !{!754, !755}
!754 = !DILocalVariable(name: "__fd", arg: 1, scope: !750, file: !697, line: 467, type: !230)
!755 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !750, file: !697, line: 467, type: !700)
!756 = !DILocation(line: 0, scope: !750)
!757 = !DILocation(line: 469, column: 10, scope: !750)
!758 = !DILocation(line: 469, column: 3, scope: !750)
!759 = distinct !DISubprogram(name: "fstatat", scope: !697, file: !697, line: 474, type: !760, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{!230, !230, !235, !700, !230}
!762 = !{!763, !764, !765, !766}
!763 = !DILocalVariable(name: "__fd", arg: 1, scope: !759, file: !697, line: 474, type: !230)
!764 = !DILocalVariable(name: "__filename", arg: 2, scope: !759, file: !697, line: 474, type: !235)
!765 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !759, file: !697, line: 474, type: !700)
!766 = !DILocalVariable(name: "__flag", arg: 4, scope: !759, file: !697, line: 474, type: !230)
!767 = !DILocation(line: 0, scope: !759)
!768 = !DILocation(line: 477, column: 10, scope: !759)
!769 = !DILocation(line: 477, column: 3, scope: !759)
!770 = distinct !DISubprogram(name: "mknod", scope: !697, file: !697, line: 483, type: !771, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!230, !235, !711, !705}
!773 = !{!774, !775, !776}
!774 = !DILocalVariable(name: "__path", arg: 1, scope: !770, file: !697, line: 483, type: !235)
!775 = !DILocalVariable(name: "__mode", arg: 2, scope: !770, file: !697, line: 483, type: !711)
!776 = !DILocalVariable(name: "__dev", arg: 3, scope: !770, file: !697, line: 483, type: !705)
!777 = !DILocation(line: 0, scope: !770)
!778 = !DILocation(line: 485, column: 10, scope: !770)
!779 = !DILocation(line: 485, column: 3, scope: !770)
!780 = distinct !DISubprogram(name: "mknodat", scope: !697, file: !697, line: 491, type: !781, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!230, !230, !235, !711, !705}
!783 = !{!784, !785, !786, !787}
!784 = !DILocalVariable(name: "__fd", arg: 1, scope: !780, file: !697, line: 491, type: !230)
!785 = !DILocalVariable(name: "__path", arg: 2, scope: !780, file: !697, line: 491, type: !235)
!786 = !DILocalVariable(name: "__mode", arg: 3, scope: !780, file: !697, line: 491, type: !711)
!787 = !DILocalVariable(name: "__dev", arg: 4, scope: !780, file: !697, line: 491, type: !705)
!788 = !DILocation(line: 0, scope: !780)
!789 = !DILocation(line: 494, column: 10, scope: !780)
!790 = !DILocation(line: 494, column: 3, scope: !780)
!791 = distinct !DISubprogram(name: "stat64", scope: !697, file: !697, line: 502, type: !792, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !814)
!792 = !DISubroutineType(types: !793)
!793 = !{!230, !235, !794}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !702, line: 119, size: 1152, elements: !796)
!796 = !{!797, !798, !800, !801, !802, !803, !804, !805, !806, !807, !808, !810, !811, !812, !813}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !795, file: !702, line: 121, baseType: !705, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !795, file: !702, line: 123, baseType: !799, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !268, line: 149, baseType: !259)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !795, file: !702, line: 124, baseType: !709, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !795, file: !702, line: 125, baseType: !711, size: 32, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !795, file: !702, line: 132, baseType: !713, size: 32, offset: 224)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !795, file: !702, line: 133, baseType: !715, size: 32, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !795, file: !702, line: 135, baseType: !230, size: 32, offset: 288)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !795, file: !702, line: 136, baseType: !705, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !795, file: !702, line: 137, baseType: !395, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !795, file: !702, line: 143, baseType: !720, size: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !795, file: !702, line: 144, baseType: !809, size: 64, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !268, line: 180, baseType: !264)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !795, file: !702, line: 152, baseType: !724, size: 128, offset: 576)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !795, file: !702, line: 153, baseType: !724, size: 128, offset: 704)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !795, file: !702, line: 154, baseType: !724, size: 128, offset: 832)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !795, file: !702, line: 164, baseType: !734, size: 192, offset: 960)
!814 = !{!815, !816}
!815 = !DILocalVariable(name: "__path", arg: 1, scope: !791, file: !697, line: 502, type: !235)
!816 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !791, file: !697, line: 502, type: !794)
!817 = !DILocation(line: 0, scope: !791)
!818 = !DILocation(line: 504, column: 10, scope: !791)
!819 = !DILocation(line: 504, column: 3, scope: !791)
!820 = distinct !DISubprogram(name: "lstat64", scope: !697, file: !697, line: 509, type: !792, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !821)
!821 = !{!822, !823}
!822 = !DILocalVariable(name: "__path", arg: 1, scope: !820, file: !697, line: 509, type: !235)
!823 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !820, file: !697, line: 509, type: !794)
!824 = !DILocation(line: 0, scope: !820)
!825 = !DILocation(line: 511, column: 10, scope: !820)
!826 = !DILocation(line: 511, column: 3, scope: !820)
!827 = distinct !DISubprogram(name: "fstat64", scope: !697, file: !697, line: 516, type: !828, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{!230, !230, !794}
!830 = !{!831, !832}
!831 = !DILocalVariable(name: "__fd", arg: 1, scope: !827, file: !697, line: 516, type: !230)
!832 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !827, file: !697, line: 516, type: !794)
!833 = !DILocation(line: 0, scope: !827)
!834 = !DILocation(line: 518, column: 10, scope: !827)
!835 = !DILocation(line: 518, column: 3, scope: !827)
!836 = distinct !DISubprogram(name: "fstatat64", scope: !697, file: !697, line: 523, type: !837, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{!230, !230, !235, !794, !230}
!839 = !{!840, !841, !842, !843}
!840 = !DILocalVariable(name: "__fd", arg: 1, scope: !836, file: !697, line: 523, type: !230)
!841 = !DILocalVariable(name: "__filename", arg: 2, scope: !836, file: !697, line: 523, type: !235)
!842 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !836, file: !697, line: 523, type: !794)
!843 = !DILocalVariable(name: "__flag", arg: 4, scope: !836, file: !697, line: 523, type: !230)
!844 = !DILocation(line: 0, scope: !836)
!845 = !DILocation(line: 526, column: 10, scope: !836)
!846 = !DILocation(line: 526, column: 3, scope: !836)
!847 = distinct !DISubprogram(name: "ggc_register_root_tab", scope: !3, file: !3, line: 105, type: !848, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !282}
!850 = !{!851}
!851 = !DILocalVariable(name: "rt", arg: 1, scope: !847, file: !3, line: 105, type: !282)
!852 = !DILocation(line: 0, scope: !847)
!853 = !DILocation(line: 107, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !847, file: !3, line: 107, column: 7)
!855 = !DILocation(line: 107, column: 7, scope: !847)
!856 = !DILocation(line: 108, column: 5, scope: !854)
!857 = !DILocation(line: 109, column: 1, scope: !847)
!858 = distinct !DISubprogram(name: "VEC_const_ggc_root_tab_t_heap_safe_push", scope: !3, file: !3, line: 98, type: !859, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!859 = !DISubroutineType(types: !860)
!860 = !{!861, !862, !281}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!863 = !{!864, !865}
!864 = !DILocalVariable(name: "vec_", arg: 1, scope: !858, file: !3, line: 98, type: !862)
!865 = !DILocalVariable(name: "obj_", arg: 2, scope: !858, file: !3, line: 98, type: !281)
!866 = !DILocation(line: 0, scope: !858)
!867 = !DILocation(line: 98, column: 1, scope: !858)
!868 = distinct !DISubprogram(name: "ggc_register_cache_tab", scope: !3, file: !3, line: 124, type: !869, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !310}
!871 = !{!872}
!872 = !DILocalVariable(name: "ct", arg: 1, scope: !868, file: !3, line: 124, type: !310)
!873 = !DILocation(line: 0, scope: !868)
!874 = !DILocation(line: 126, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !868, file: !3, line: 126, column: 7)
!876 = !DILocation(line: 126, column: 7, scope: !868)
!877 = !DILocation(line: 127, column: 5, scope: !875)
!878 = !DILocation(line: 128, column: 1, scope: !868)
!879 = distinct !DISubprogram(name: "VEC_const_ggc_cache_tab_t_heap_safe_push", scope: !3, file: !3, line: 117, type: !880, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !884)
!880 = !DISubroutineType(types: !881)
!881 = !{!882, !883, !309}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!884 = !{!885, !886}
!885 = !DILocalVariable(name: "vec_", arg: 1, scope: !879, file: !3, line: 117, type: !883)
!886 = !DILocalVariable(name: "obj_", arg: 2, scope: !879, file: !3, line: 117, type: !309)
!887 = !DILocation(line: 0, scope: !879)
!888 = !DILocation(line: 117, column: 1, scope: !879)
!889 = distinct !DISubprogram(name: "ggc_mark_roots", scope: !3, file: !3, line: 151, type: !890, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{null}
!892 = !{!893, !896, !897, !898, !901, !902}
!893 = !DILocalVariable(name: "rt", scope: !889, file: !3, line: 153, type: !894)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!896 = !DILocalVariable(name: "rti", scope: !889, file: !3, line: 154, type: !282)
!897 = !DILocalVariable(name: "rtp", scope: !889, file: !3, line: 155, type: !281)
!898 = !DILocalVariable(name: "ct", scope: !889, file: !3, line: 156, type: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!901 = !DILocalVariable(name: "ctp", scope: !889, file: !3, line: 157, type: !309)
!902 = !DILocalVariable(name: "i", scope: !889, file: !3, line: 158, type: !257)
!903 = !DILocation(line: 155, column: 3, scope: !889)
!904 = !DILocation(line: 157, column: 3, scope: !889)
!905 = !DILocation(line: 0, scope: !889)
!906 = !DILocation(line: 160, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !889, file: !3, line: 160, column: 3)
!908 = !DILocation(line: 0, scope: !907)
!909 = !DILocation(line: 160, column: 36, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !3, line: 160, column: 3)
!911 = !DILocation(line: 160, column: 3, scope: !907)
!912 = !DILocation(line: 164, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !889, file: !3, line: 164, column: 3)
!914 = !DILocation(line: 161, column: 10, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 161, column: 5)
!916 = !DILocation(line: 0, scope: !915)
!917 = !DILocation(line: 161, column: 26, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !3, line: 161, column: 5)
!919 = !DILocation(line: 161, column: 31, scope: !918)
!920 = !DILocation(line: 161, column: 5, scope: !915)
!921 = !DILocation(line: 162, column: 34, scope: !918)
!922 = !DILocation(line: 162, column: 7, scope: !918)
!923 = !DILocation(line: 161, column: 43, scope: !918)
!924 = !DILocation(line: 161, column: 5, scope: !918)
!925 = distinct !{!925, !920, !926}
!926 = !DILocation(line: 162, column: 40, scope: !915)
!927 = !DILocation(line: 160, column: 43, scope: !910)
!928 = !DILocation(line: 160, column: 3, scope: !910)
!929 = distinct !{!929, !911, !930}
!930 = !DILocation(line: 162, column: 40, scope: !907)
!931 = !DILocation(line: 0, scope: !913)
!932 = !DILocation(line: 164, column: 26, scope: !933)
!933 = distinct !DILexicalBlock(scope: !913, file: !3, line: 164, column: 3)
!934 = !DILocation(line: 169, column: 3, scope: !935)
!935 = distinct !DILexicalBlock(scope: !889, file: !3, line: 169, column: 3)
!936 = !DILocation(line: 165, column: 10, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !3, line: 165, column: 5)
!938 = !DILocation(line: 0, scope: !937)
!939 = !DILocation(line: 165, column: 26, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 165, column: 5)
!941 = !DILocation(line: 165, column: 31, scope: !940)
!942 = !DILocation(line: 165, column: 5, scope: !937)
!943 = !DILocation(line: 0, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 166, column: 7)
!945 = distinct !DILexicalBlock(scope: !940, file: !3, line: 166, column: 7)
!946 = !DILocation(line: 166, column: 7, scope: !945)
!947 = !DILocation(line: 0, scope: !945)
!948 = !DILocation(line: 166, column: 28, scope: !944)
!949 = !DILocation(line: 166, column: 21, scope: !944)
!950 = !DILocation(line: 167, column: 9, scope: !944)
!951 = !DILocation(line: 167, column: 38, scope: !944)
!952 = !DILocation(line: 167, column: 50, scope: !944)
!953 = !DILocation(line: 167, column: 57, scope: !944)
!954 = !DILocation(line: 167, column: 43, scope: !944)
!955 = !DILocation(line: 167, column: 14, scope: !944)
!956 = !DILocation(line: 167, column: 2, scope: !944)
!957 = !DILocation(line: 166, column: 35, scope: !944)
!958 = !DILocation(line: 166, column: 7, scope: !944)
!959 = distinct !{!959, !946, !960}
!960 = !DILocation(line: 167, column: 61, scope: !945)
!961 = !DILocation(line: 165, column: 43, scope: !940)
!962 = !DILocation(line: 165, column: 5, scope: !940)
!963 = distinct !{!963, !942, !964}
!964 = !DILocation(line: 167, column: 61, scope: !937)
!965 = !DILocation(line: 164, column: 33, scope: !933)
!966 = !DILocation(line: 164, column: 3, scope: !933)
!967 = distinct !{!967, !912, !968}
!968 = !DILocation(line: 167, column: 61, scope: !913)
!969 = !DILocation(line: 0, scope: !935)
!970 = !DILocation(line: 169, column: 15, scope: !971)
!971 = distinct !DILexicalBlock(scope: !935, file: !3, line: 169, column: 3)
!972 = !DILocation(line: 171, column: 18, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 171, column: 7)
!974 = distinct !DILexicalBlock(scope: !971, file: !3, line: 170, column: 5)
!975 = !DILocation(line: 171, column: 12, scope: !973)
!976 = !DILocation(line: 0, scope: !973)
!977 = !DILocation(line: 171, column: 28, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !3, line: 171, column: 7)
!979 = !DILocation(line: 171, column: 33, scope: !978)
!980 = !DILocation(line: 171, column: 7, scope: !973)
!981 = !DILocation(line: 0, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 172, column: 9)
!983 = distinct !DILexicalBlock(scope: !978, file: !3, line: 172, column: 9)
!984 = !DILocation(line: 172, column: 9, scope: !983)
!985 = !DILocation(line: 0, scope: !983)
!986 = !DILocation(line: 172, column: 30, scope: !982)
!987 = !DILocation(line: 172, column: 23, scope: !982)
!988 = !DILocation(line: 173, column: 18, scope: !982)
!989 = !DILocation(line: 173, column: 48, scope: !982)
!990 = !DILocation(line: 173, column: 60, scope: !982)
!991 = !DILocation(line: 173, column: 67, scope: !982)
!992 = !DILocation(line: 173, column: 53, scope: !982)
!993 = !DILocation(line: 173, column: 23, scope: !982)
!994 = !DILocation(line: 173, column: 11, scope: !982)
!995 = !DILocation(line: 172, column: 37, scope: !982)
!996 = !DILocation(line: 172, column: 9, scope: !982)
!997 = distinct !{!997, !984, !998}
!998 = !DILocation(line: 173, column: 71, scope: !983)
!999 = !DILocation(line: 171, column: 45, scope: !978)
!1000 = !DILocation(line: 171, column: 7, scope: !978)
!1001 = distinct !{!1001, !980, !1002}
!1002 = !DILocation(line: 173, column: 71, scope: !973)
!1003 = !DILocation(line: 169, column: 76, scope: !971)
!1004 = !DILocation(line: 169, column: 3, scope: !971)
!1005 = distinct !{!1005, !934, !1006}
!1006 = !DILocation(line: 174, column: 5, scope: !935)
!1007 = !DILocation(line: 176, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !889, file: !3, line: 176, column: 7)
!1009 = !DILocation(line: 176, column: 7, scope: !889)
!1010 = !DILocation(line: 177, column: 5, scope: !1008)
!1011 = !DILocation(line: 181, column: 8, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !889, file: !3, line: 181, column: 3)
!1013 = !DILocation(line: 0, scope: !1012)
!1014 = !DILocation(line: 181, column: 32, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 181, column: 3)
!1016 = !DILocation(line: 181, column: 3, scope: !1012)
!1017 = !DILocation(line: 184, column: 3, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !889, file: !3, line: 184, column: 3)
!1019 = !DILocation(line: 182, column: 5, scope: !1015)
!1020 = !DILocation(line: 181, column: 39, scope: !1015)
!1021 = !DILocation(line: 181, column: 3, scope: !1015)
!1022 = distinct !{!1022, !1016, !1023}
!1023 = !DILocation(line: 182, column: 28, scope: !1012)
!1024 = !DILocation(line: 0, scope: !1018)
!1025 = !DILocation(line: 184, column: 15, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 184, column: 3)
!1027 = !DILocation(line: 185, column: 25, scope: !1026)
!1028 = !DILocation(line: 185, column: 5, scope: !1026)
!1029 = !DILocation(line: 184, column: 78, scope: !1026)
!1030 = !DILocation(line: 184, column: 3, scope: !1026)
!1031 = distinct !{!1031, !1017, !1032}
!1032 = !DILocation(line: 185, column: 28, scope: !1018)
!1033 = !DILocation(line: 187, column: 9, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !889, file: !3, line: 187, column: 7)
!1035 = !DILocation(line: 187, column: 7, scope: !889)
!1036 = !DILocation(line: 188, column: 5, scope: !1034)
!1037 = !DILocation(line: 191, column: 3, scope: !889)
!1038 = !DILocation(line: 192, column: 1, scope: !889)
!1039 = distinct !DISubprogram(name: "VEC_const_ggc_root_tab_t_base_iterate", scope: !3, file: !3, line: 97, type: !1040, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1044)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!230, !1042, !7, !861}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!1044 = !{!1045, !1046, !1047}
!1045 = !DILocalVariable(name: "vec_", arg: 1, scope: !1039, file: !3, line: 97, type: !1042)
!1046 = !DILocalVariable(name: "ix_", arg: 2, scope: !1039, file: !3, line: 97, type: !7)
!1047 = !DILocalVariable(name: "ptr", arg: 3, scope: !1039, file: !3, line: 97, type: !861)
!1048 = !DILocation(line: 0, scope: !1039)
!1049 = !DILocation(line: 97, column: 1, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 97, column: 1)
!1051 = !DILocation(line: 97, column: 1, scope: !1039)
!1052 = !DILocation(line: 97, column: 1, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 97, column: 1)
!1054 = !DILocation(line: 97, column: 1, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 97, column: 1)
!1056 = !DILocation(line: 0, scope: !1050)
!1057 = distinct !DISubprogram(name: "ggc_scan_cache_tab", scope: !3, file: !3, line: 134, type: !1058, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1060)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !309}
!1060 = !{!1061, !1062}
!1061 = !DILocalVariable(name: "ctp", arg: 1, scope: !1057, file: !3, line: 134, type: !309)
!1062 = !DILocalVariable(name: "cti", scope: !1057, file: !3, line: 136, type: !310)
!1063 = !DILocation(line: 0, scope: !1057)
!1064 = !DILocation(line: 138, column: 8, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 138, column: 3)
!1066 = !DILocation(line: 0, scope: !1065)
!1067 = !DILocation(line: 138, column: 24, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 138, column: 3)
!1069 = !DILocation(line: 138, column: 29, scope: !1068)
!1070 = !DILocation(line: 138, column: 3, scope: !1065)
!1071 = !DILocation(line: 139, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 139, column: 9)
!1073 = !DILocation(line: 139, column: 9, scope: !1068)
!1074 = !DILocation(line: 141, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 140, column: 7)
!1076 = !DILocation(line: 142, column: 39, scope: !1075)
!1077 = !DILocation(line: 142, column: 33, scope: !1075)
!1078 = !DILocation(line: 143, column: 33, scope: !1075)
!1079 = !DILocation(line: 142, column: 9, scope: !1075)
!1080 = !DILocation(line: 144, column: 30, scope: !1075)
!1081 = !DILocation(line: 144, column: 24, scope: !1075)
!1082 = !DILocation(line: 144, column: 37, scope: !1075)
!1083 = !DILocation(line: 144, column: 9, scope: !1075)
!1084 = !DILocation(line: 145, column: 7, scope: !1075)
!1085 = !DILocation(line: 138, column: 41, scope: !1068)
!1086 = !DILocation(line: 138, column: 3, scope: !1068)
!1087 = distinct !{!1087, !1070, !1088}
!1088 = !DILocation(line: 145, column: 7, scope: !1065)
!1089 = !DILocation(line: 146, column: 1, scope: !1057)
!1090 = distinct !DISubprogram(name: "VEC_const_ggc_cache_tab_t_base_iterate", scope: !3, file: !3, line: 116, type: !1091, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1095)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!230, !1093, !7, !882}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!1095 = !{!1096, !1097, !1098}
!1096 = !DILocalVariable(name: "vec_", arg: 1, scope: !1090, file: !3, line: 116, type: !1093)
!1097 = !DILocalVariable(name: "ix_", arg: 2, scope: !1090, file: !3, line: 116, type: !7)
!1098 = !DILocalVariable(name: "ptr", arg: 3, scope: !1090, file: !3, line: 116, type: !882)
!1099 = !DILocation(line: 0, scope: !1090)
!1100 = !DILocation(line: 116, column: 1, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 116, column: 1)
!1102 = !DILocation(line: 116, column: 1, scope: !1090)
!1103 = !DILocation(line: 116, column: 1, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 116, column: 1)
!1105 = !DILocation(line: 116, column: 1, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 116, column: 1)
!1107 = !DILocation(line: 0, scope: !1101)
!1108 = distinct !DISubprogram(name: "ggc_alloc_cleared_stat", scope: !3, file: !3, line: 196, type: !1109, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!234, !257}
!1111 = !{!1112, !1113}
!1112 = !DILocalVariable(name: "size", arg: 1, scope: !1108, file: !3, line: 196, type: !257)
!1113 = !DILocalVariable(name: "buf", scope: !1108, file: !3, line: 198, type: !234)
!1114 = !DILocation(line: 0, scope: !1108)
!1115 = !DILocation(line: 198, column: 15, scope: !1108)
!1116 = !DILocation(line: 199, column: 3, scope: !1108)
!1117 = !DILocation(line: 200, column: 3, scope: !1108)
!1118 = distinct !DISubprogram(name: "ggc_realloc_stat", scope: !3, file: !3, line: 205, type: !1119, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1121)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!234, !234, !257}
!1121 = !{!1122, !1123, !1124, !1125}
!1122 = !DILocalVariable(name: "x", arg: 1, scope: !1118, file: !3, line: 205, type: !234)
!1123 = !DILocalVariable(name: "size", arg: 2, scope: !1118, file: !3, line: 205, type: !257)
!1124 = !DILocalVariable(name: "r", scope: !1118, file: !3, line: 207, type: !234)
!1125 = !DILocalVariable(name: "old_size", scope: !1118, file: !3, line: 208, type: !257)
!1126 = !DILocation(line: 0, scope: !1118)
!1127 = !DILocation(line: 210, column: 9, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 210, column: 7)
!1129 = !DILocation(line: 210, column: 7, scope: !1118)
!1130 = !DILocation(line: 211, column: 12, scope: !1128)
!1131 = !DILocation(line: 211, column: 5, scope: !1128)
!1132 = !DILocation(line: 213, column: 14, scope: !1118)
!1133 = !DILocation(line: 215, column: 12, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 215, column: 7)
!1135 = !DILocation(line: 215, column: 7, scope: !1118)
!1136 = !DILocation(line: 233, column: 7, scope: !1118)
!1137 = !DILocation(line: 241, column: 3, scope: !1118)
!1138 = !DILocation(line: 244, column: 3, scope: !1118)
!1139 = !DILocation(line: 246, column: 3, scope: !1118)
!1140 = !DILocation(line: 247, column: 1, scope: !1118)
!1141 = distinct !DISubprogram(name: "ggc_calloc", scope: !3, file: !3, line: 251, type: !342, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1142)
!1142 = !{!1143, !1144}
!1143 = !DILocalVariable(name: "s1", arg: 1, scope: !1141, file: !3, line: 251, type: !257)
!1144 = !DILocalVariable(name: "s2", arg: 2, scope: !1141, file: !3, line: 251, type: !257)
!1145 = !DILocation(line: 0, scope: !1141)
!1146 = !DILocation(line: 253, column: 10, scope: !1141)
!1147 = !DILocation(line: 253, column: 3, scope: !1141)
!1148 = distinct !DISubprogram(name: "ggc_splay_alloc", scope: !3, file: !3, line: 258, type: !1149, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!234, !230, !234}
!1151 = !{!1152, !1153}
!1152 = !DILocalVariable(name: "sz", arg: 1, scope: !1148, file: !3, line: 258, type: !230)
!1153 = !DILocalVariable(name: "nl", arg: 2, scope: !1148, file: !3, line: 258, type: !234)
!1154 = !DILocation(line: 0, scope: !1148)
!1155 = !DILocation(line: 260, column: 3, scope: !1148)
!1156 = !DILocation(line: 261, column: 10, scope: !1148)
!1157 = !DILocation(line: 261, column: 3, scope: !1148)
!1158 = distinct !DISubprogram(name: "ggc_splay_dont_free", scope: !3, file: !3, line: 265, type: !252, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1159 = !{!1160, !1161}
!1160 = !DILocalVariable(name: "x", arg: 1, scope: !1158, file: !3, line: 265, type: !234)
!1161 = !DILocalVariable(name: "nl", arg: 2, scope: !1158, file: !3, line: 265, type: !234)
!1162 = !DILocation(line: 0, scope: !1158)
!1163 = !DILocation(line: 267, column: 3, scope: !1158)
!1164 = !DILocation(line: 268, column: 1, scope: !1158)
!1165 = distinct !DISubprogram(name: "ggc_print_common_statistics", scope: !3, file: !3, line: 279, type: !1166, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !369, !434}
!1168 = !{!1169, !1170}
!1169 = !DILocalVariable(name: "stream", arg: 1, scope: !1165, file: !3, line: 279, type: !369)
!1170 = !DILocalVariable(name: "stats", arg: 2, scope: !1165, file: !3, line: 280, type: !434)
!1171 = !DILocation(line: 0, scope: !1165)
!1172 = !DILocation(line: 284, column: 13, scope: !1165)
!1173 = !DILocation(line: 287, column: 3, scope: !1165)
!1174 = !DILocation(line: 293, column: 1, scope: !1165)
!1175 = distinct !DISubprogram(name: "gt_pch_note_object", scope: !3, file: !3, line: 315, type: !1176, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1178)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!230, !234, !234, !245, !5}
!1178 = !{!1179, !1180, !1181, !1182, !1183}
!1179 = !DILocalVariable(name: "obj", arg: 1, scope: !1175, file: !3, line: 315, type: !234)
!1180 = !DILocalVariable(name: "note_ptr_cookie", arg: 2, scope: !1175, file: !3, line: 315, type: !234)
!1181 = !DILocalVariable(name: "note_ptr_fn", arg: 3, scope: !1175, file: !3, line: 316, type: !245)
!1182 = !DILocalVariable(name: "type", arg: 4, scope: !1175, file: !3, line: 317, type: !5)
!1183 = !DILocalVariable(name: "slot", scope: !1175, file: !3, line: 319, type: !238)
!1184 = !DILocation(line: 0, scope: !1175)
!1185 = !DILocation(line: 321, column: 19, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 321, column: 7)
!1187 = !DILocation(line: 325, column: 31, scope: !1175)
!1188 = !DILocation(line: 325, column: 49, scope: !1175)
!1189 = !DILocation(line: 325, column: 5, scope: !1175)
!1190 = !DILocation(line: 324, column: 10, scope: !1175)
!1191 = !DILocation(line: 327, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 327, column: 7)
!1193 = !DILocation(line: 327, column: 13, scope: !1192)
!1194 = !DILocation(line: 327, column: 7, scope: !1175)
!1195 = !DILocation(line: 329, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 328, column: 5)
!1197 = !DILocation(line: 334, column: 11, scope: !1175)
!1198 = !DILocation(line: 334, column: 9, scope: !1175)
!1199 = !DILocation(line: 335, column: 12, scope: !1175)
!1200 = !DILocation(line: 335, column: 16, scope: !1175)
!1201 = !DILocation(line: 336, column: 4, scope: !1175)
!1202 = !DILocation(line: 336, column: 12, scope: !1175)
!1203 = !DILocation(line: 336, column: 24, scope: !1175)
!1204 = !DILocation(line: 337, column: 4, scope: !1175)
!1205 = !DILocation(line: 337, column: 12, scope: !1175)
!1206 = !DILocation(line: 337, column: 28, scope: !1175)
!1207 = !DILocation(line: 338, column: 19, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 338, column: 7)
!1209 = !DILocation(line: 338, column: 7, scope: !1175)
!1210 = !DILocation(line: 339, column: 21, scope: !1208)
!1211 = !DILocation(line: 339, column: 48, scope: !1208)
!1212 = !DILocation(line: 339, column: 6, scope: !1208)
!1213 = !DILocation(line: 339, column: 14, scope: !1208)
!1214 = !DILocation(line: 339, column: 19, scope: !1208)
!1215 = !DILocation(line: 339, column: 5, scope: !1208)
!1216 = !DILocation(line: 341, column: 21, scope: !1208)
!1217 = !DILocation(line: 341, column: 6, scope: !1208)
!1218 = !DILocation(line: 341, column: 14, scope: !1208)
!1219 = !DILocation(line: 341, column: 19, scope: !1208)
!1220 = !DILocation(line: 342, column: 4, scope: !1175)
!1221 = !DILocation(line: 342, column: 12, scope: !1175)
!1222 = !DILocation(line: 342, column: 17, scope: !1175)
!1223 = !DILocation(line: 343, column: 3, scope: !1175)
!1224 = !DILocation(line: 344, column: 1, scope: !1175)
!1225 = distinct !DISubprogram(name: "gt_pch_note_reorder", scope: !3, file: !3, line: 349, type: !1226, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !234, !234, !255}
!1228 = !{!1229, !1230, !1231, !1232}
!1229 = !DILocalVariable(name: "obj", arg: 1, scope: !1225, file: !3, line: 349, type: !234)
!1230 = !DILocalVariable(name: "note_ptr_cookie", arg: 2, scope: !1225, file: !3, line: 349, type: !234)
!1231 = !DILocalVariable(name: "reorder_fn", arg: 3, scope: !1225, file: !3, line: 350, type: !255)
!1232 = !DILocalVariable(name: "data", scope: !1225, file: !3, line: 352, type: !239)
!1233 = !DILocation(line: 0, scope: !1225)
!1234 = !DILocation(line: 354, column: 19, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 354, column: 7)
!1236 = !DILocation(line: 358, column: 26, scope: !1225)
!1237 = !DILocation(line: 358, column: 44, scope: !1225)
!1238 = !DILocation(line: 358, column: 5, scope: !1225)
!1239 = !DILocation(line: 359, column: 3, scope: !1225)
!1240 = !DILocation(line: 361, column: 9, scope: !1225)
!1241 = !DILocation(line: 361, column: 20, scope: !1225)
!1242 = !DILocation(line: 362, column: 1, scope: !1225)
!1243 = distinct !DISubprogram(name: "gt_pch_save", scope: !3, file: !3, line: 491, type: !1244, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1246)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !369}
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1260, !1262}
!1247 = !DILocalVariable(name: "f", arg: 1, scope: !1243, file: !3, line: 491, type: !369)
!1248 = !DILocalVariable(name: "rt", scope: !1243, file: !3, line: 493, type: !894)
!1249 = !DILocalVariable(name: "rti", scope: !1243, file: !3, line: 494, type: !282)
!1250 = !DILocalVariable(name: "i", scope: !1243, file: !3, line: 495, type: !257)
!1251 = !DILocalVariable(name: "state", scope: !1243, file: !3, line: 496, type: !366)
!1252 = !DILocalVariable(name: "this_object", scope: !1243, file: !3, line: 497, type: !232)
!1253 = !DILocalVariable(name: "this_object_size", scope: !1243, file: !3, line: 498, type: !257)
!1254 = !DILocalVariable(name: "mmi", scope: !1243, file: !3, line: 499, type: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmap_info", file: !3, line: 481, size: 192, elements: !1256)
!1256 = !{!1257, !1258, !1259}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1255, file: !3, line: 483, baseType: !257, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1255, file: !3, line: 484, baseType: !257, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_base", scope: !1255, file: !3, line: 485, baseType: !234, size: 64, offset: 128)
!1260 = !DILocalVariable(name: "mmap_offset_alignment", scope: !1243, file: !3, line: 500, type: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!1262 = !DILocalVariable(name: "o", scope: !1263, file: !3, line: 555, type: !264)
!1263 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 554, column: 3)
!1264 = !DILocation(line: 0, scope: !1243)
!1265 = !DILocation(line: 496, column: 3, scope: !1243)
!1266 = !DILocation(line: 499, column: 3, scope: !1243)
!1267 = !DILocation(line: 500, column: 51, scope: !1243)
!1268 = !DILocation(line: 500, column: 40, scope: !1243)
!1269 = !DILocation(line: 502, column: 3, scope: !1243)
!1270 = !DILocation(line: 504, column: 17, scope: !1243)
!1271 = !DILocation(line: 504, column: 15, scope: !1243)
!1272 = !DILocation(line: 506, column: 8, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 506, column: 3)
!1274 = !DILocation(line: 0, scope: !1273)
!1275 = !DILocation(line: 506, column: 26, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 506, column: 3)
!1277 = !DILocation(line: 506, column: 3, scope: !1273)
!1278 = !DILocation(line: 511, column: 3, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 511, column: 3)
!1280 = !DILocation(line: 507, column: 10, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 507, column: 5)
!1282 = !DILocation(line: 0, scope: !1281)
!1283 = !DILocation(line: 507, column: 26, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 507, column: 5)
!1285 = !DILocation(line: 507, column: 31, scope: !1284)
!1286 = !DILocation(line: 507, column: 5, scope: !1281)
!1287 = !DILocation(line: 0, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 508, column: 7)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 508, column: 7)
!1290 = !DILocation(line: 508, column: 7, scope: !1289)
!1291 = !DILocation(line: 0, scope: !1289)
!1292 = !DILocation(line: 508, column: 28, scope: !1288)
!1293 = !DILocation(line: 508, column: 21, scope: !1288)
!1294 = !DILocation(line: 509, column: 9, scope: !1288)
!1295 = !DILocation(line: 509, column: 39, scope: !1288)
!1296 = !DILocation(line: 509, column: 51, scope: !1288)
!1297 = !DILocation(line: 509, column: 58, scope: !1288)
!1298 = !DILocation(line: 509, column: 44, scope: !1288)
!1299 = !DILocation(line: 509, column: 15, scope: !1288)
!1300 = !DILocation(line: 509, column: 2, scope: !1288)
!1301 = !DILocation(line: 508, column: 35, scope: !1288)
!1302 = !DILocation(line: 508, column: 7, scope: !1288)
!1303 = distinct !{!1303, !1290, !1304}
!1304 = !DILocation(line: 509, column: 62, scope: !1289)
!1305 = !DILocation(line: 507, column: 43, scope: !1284)
!1306 = !DILocation(line: 507, column: 5, scope: !1284)
!1307 = distinct !{!1307, !1286, !1308}
!1308 = !DILocation(line: 509, column: 62, scope: !1281)
!1309 = !DILocation(line: 506, column: 33, scope: !1276)
!1310 = !DILocation(line: 506, column: 3, scope: !1276)
!1311 = distinct !{!1311, !1277, !1312}
!1312 = !DILocation(line: 509, column: 62, scope: !1273)
!1313 = !DILocation(line: 0, scope: !1279)
!1314 = !DILocation(line: 511, column: 32, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 511, column: 3)
!1316 = !DILocation(line: 512, column: 10, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 512, column: 5)
!1318 = !DILocation(line: 0, scope: !1317)
!1319 = !DILocation(line: 512, column: 26, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 512, column: 5)
!1321 = !DILocation(line: 512, column: 31, scope: !1320)
!1322 = !DILocation(line: 512, column: 5, scope: !1317)
!1323 = !DILocation(line: 0, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 513, column: 7)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 513, column: 7)
!1326 = !DILocation(line: 513, column: 7, scope: !1325)
!1327 = !DILocation(line: 0, scope: !1325)
!1328 = !DILocation(line: 513, column: 28, scope: !1324)
!1329 = !DILocation(line: 513, column: 21, scope: !1324)
!1330 = !DILocation(line: 514, column: 9, scope: !1324)
!1331 = !DILocation(line: 514, column: 39, scope: !1324)
!1332 = !DILocation(line: 514, column: 51, scope: !1324)
!1333 = !DILocation(line: 514, column: 58, scope: !1324)
!1334 = !DILocation(line: 514, column: 44, scope: !1324)
!1335 = !DILocation(line: 514, column: 15, scope: !1324)
!1336 = !DILocation(line: 514, column: 2, scope: !1324)
!1337 = !DILocation(line: 513, column: 35, scope: !1324)
!1338 = !DILocation(line: 513, column: 7, scope: !1324)
!1339 = distinct !{!1339, !1326, !1340}
!1340 = !DILocation(line: 514, column: 62, scope: !1325)
!1341 = !DILocation(line: 512, column: 43, scope: !1320)
!1342 = !DILocation(line: 512, column: 5, scope: !1320)
!1343 = distinct !{!1343, !1322, !1344}
!1344 = !DILocation(line: 514, column: 62, scope: !1317)
!1345 = !DILocation(line: 511, column: 39, scope: !1315)
!1346 = !DILocation(line: 511, column: 3, scope: !1315)
!1347 = distinct !{!1347, !1278, !1348}
!1348 = !DILocation(line: 514, column: 62, scope: !1279)
!1349 = !DILocation(line: 517, column: 9, scope: !1243)
!1350 = !DILocation(line: 517, column: 11, scope: !1243)
!1351 = !DILocation(line: 518, column: 13, scope: !1243)
!1352 = !DILocation(line: 518, column: 9, scope: !1243)
!1353 = !DILocation(line: 518, column: 11, scope: !1243)
!1354 = !DILocation(line: 519, column: 9, scope: !1243)
!1355 = !DILocation(line: 519, column: 15, scope: !1243)
!1356 = !DILocation(line: 520, column: 18, scope: !1243)
!1357 = !DILocation(line: 520, column: 3, scope: !1243)
!1358 = !DILocation(line: 522, column: 40, scope: !1243)
!1359 = !DILocation(line: 522, column: 14, scope: !1243)
!1360 = !DILocation(line: 522, column: 7, scope: !1243)
!1361 = !DILocation(line: 522, column: 12, scope: !1243)
!1362 = !DILocation(line: 529, column: 35, scope: !1243)
!1363 = !DILocation(line: 529, column: 65, scope: !1243)
!1364 = !DILocation(line: 529, column: 24, scope: !1243)
!1365 = !DILocation(line: 529, column: 7, scope: !1243)
!1366 = !DILocation(line: 529, column: 22, scope: !1243)
!1367 = !DILocation(line: 531, column: 28, scope: !1243)
!1368 = !DILocation(line: 531, column: 3, scope: !1243)
!1369 = !DILocation(line: 533, column: 16, scope: !1243)
!1370 = !DILocation(line: 533, column: 9, scope: !1243)
!1371 = !DILocation(line: 533, column: 14, scope: !1243)
!1372 = !DILocation(line: 534, column: 9, scope: !1243)
!1373 = !DILocation(line: 534, column: 16, scope: !1243)
!1374 = !DILocation(line: 535, column: 18, scope: !1243)
!1375 = !DILocation(line: 535, column: 3, scope: !1243)
!1376 = !DILocation(line: 537, column: 21, scope: !1243)
!1377 = !DILocation(line: 537, column: 33, scope: !1243)
!1378 = !DILocation(line: 537, column: 3, scope: !1243)
!1379 = !DILocation(line: 543, column: 8, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 543, column: 3)
!1381 = !DILocation(line: 0, scope: !1380)
!1382 = !DILocation(line: 543, column: 33, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 543, column: 3)
!1384 = !DILocation(line: 543, column: 3, scope: !1380)
!1385 = !DILocation(line: 544, column: 10, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 544, column: 5)
!1387 = !DILocation(line: 0, scope: !1386)
!1388 = !DILocation(line: 544, column: 26, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 544, column: 5)
!1390 = !DILocation(line: 544, column: 31, scope: !1389)
!1391 = !DILocation(line: 544, column: 5, scope: !1386)
!1392 = !DILocation(line: 545, column: 35, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 545, column: 11)
!1394 = !DILocation(line: 545, column: 11, scope: !1393)
!1395 = !DILocation(line: 545, column: 49, scope: !1393)
!1396 = !DILocation(line: 545, column: 11, scope: !1389)
!1397 = !DILocation(line: 546, column: 2, scope: !1393)
!1398 = !DILocation(line: 544, column: 43, scope: !1389)
!1399 = !DILocation(line: 544, column: 5, scope: !1389)
!1400 = distinct !{!1400, !1391, !1401}
!1401 = !DILocation(line: 546, column: 41, scope: !1386)
!1402 = !DILocation(line: 543, column: 40, scope: !1383)
!1403 = !DILocation(line: 543, column: 3, scope: !1383)
!1404 = distinct !{!1404, !1384, !1405}
!1405 = !DILocation(line: 546, column: 41, scope: !1380)
!1406 = !DILocation(line: 549, column: 3, scope: !1243)
!1407 = !DILocation(line: 550, column: 3, scope: !1243)
!1408 = !DILocation(line: 556, column: 22, scope: !1263)
!1409 = !DILocation(line: 556, column: 9, scope: !1263)
!1410 = !DILocation(line: 556, column: 25, scope: !1263)
!1411 = !DILocation(line: 0, scope: !1263)
!1412 = !DILocation(line: 557, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 557, column: 9)
!1414 = !DILocation(line: 557, column: 9, scope: !1263)
!1415 = !DILocation(line: 558, column: 7, scope: !1413)
!1416 = !DILocation(line: 559, column: 44, scope: !1263)
!1417 = !DILocation(line: 559, column: 40, scope: !1263)
!1418 = !DILocation(line: 559, column: 9, scope: !1263)
!1419 = !DILocation(line: 560, column: 20, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 560, column: 9)
!1421 = !DILocation(line: 560, column: 9, scope: !1263)
!1422 = !DILocation(line: 561, column: 7, scope: !1420)
!1423 = !DILocation(line: 562, column: 16, scope: !1263)
!1424 = !DILocation(line: 564, column: 44, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 564, column: 7)
!1426 = !DILocation(line: 564, column: 7, scope: !1425)
!1427 = !DILocation(line: 564, column: 47, scope: !1425)
!1428 = !DILocation(line: 564, column: 7, scope: !1243)
!1429 = !DILocation(line: 565, column: 5, scope: !1425)
!1430 = !DILocation(line: 566, column: 11, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 566, column: 7)
!1432 = !DILocation(line: 566, column: 18, scope: !1431)
!1433 = !DILocation(line: 567, column: 7, scope: !1431)
!1434 = !DILocation(line: 567, column: 23, scope: !1431)
!1435 = !DILocation(line: 567, column: 10, scope: !1431)
!1436 = !DILocation(line: 567, column: 48, scope: !1431)
!1437 = !DILocation(line: 566, column: 7, scope: !1243)
!1438 = !DILocation(line: 568, column: 5, scope: !1431)
!1439 = !DILocation(line: 570, column: 32, scope: !1243)
!1440 = !DILocation(line: 570, column: 41, scope: !1243)
!1441 = !DILocation(line: 570, column: 3, scope: !1243)
!1442 = !DILocation(line: 573, column: 8, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 573, column: 3)
!1444 = !DILocation(line: 0, scope: !1443)
!1445 = !DILocation(line: 573, column: 25, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 573, column: 3)
!1447 = !DILocation(line: 573, column: 17, scope: !1446)
!1448 = !DILocation(line: 573, column: 3, scope: !1443)
!1449 = !DILocation(line: 575, column: 36, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 575, column: 11)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 574, column: 5)
!1452 = !DILocation(line: 575, column: 30, scope: !1450)
!1453 = !DILocation(line: 575, column: 45, scope: !1450)
!1454 = !DILocation(line: 575, column: 28, scope: !1450)
!1455 = !DILocation(line: 575, column: 11, scope: !1451)
!1456 = !DILocation(line: 578, column: 18, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 576, column: 2)
!1458 = !DILocation(line: 580, column: 34, scope: !1451)
!1459 = !DILocation(line: 0, scope: !1451)
!1460 = !DILocation(line: 580, column: 28, scope: !1451)
!1461 = !DILocation(line: 580, column: 63, scope: !1451)
!1462 = !DILocation(line: 579, column: 2, scope: !1457)
!1463 = !DILocation(line: 580, column: 43, scope: !1451)
!1464 = !DILocation(line: 580, column: 7, scope: !1451)
!1465 = !DILocation(line: 581, column: 17, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 581, column: 11)
!1467 = !DILocation(line: 581, column: 11, scope: !1466)
!1468 = !DILocation(line: 581, column: 26, scope: !1466)
!1469 = !DILocation(line: 581, column: 37, scope: !1466)
!1470 = !DILocation(line: 581, column: 11, scope: !1451)
!1471 = !DILocation(line: 582, column: 44, scope: !1466)
!1472 = !DILocation(line: 583, column: 23, scope: !1466)
!1473 = !DILocation(line: 582, column: 2, scope: !1466)
!1474 = !DILocation(line: 585, column: 13, scope: !1451)
!1475 = !DILocation(line: 585, column: 7, scope: !1451)
!1476 = !DILocation(line: 586, column: 7, scope: !1451)
!1477 = !DILocation(line: 585, column: 22, scope: !1451)
!1478 = !DILocation(line: 585, column: 50, scope: !1451)
!1479 = !DILocation(line: 586, column: 22, scope: !1451)
!1480 = !DILocation(line: 588, column: 35, scope: !1451)
!1481 = !DILocation(line: 588, column: 44, scope: !1451)
!1482 = !DILocation(line: 588, column: 53, scope: !1451)
!1483 = !DILocation(line: 588, column: 47, scope: !1451)
!1484 = !DILocation(line: 588, column: 62, scope: !1451)
!1485 = !DILocation(line: 589, column: 23, scope: !1451)
!1486 = !DILocation(line: 589, column: 48, scope: !1451)
!1487 = !DILocation(line: 590, column: 23, scope: !1451)
!1488 = !DILocation(line: 590, column: 35, scope: !1451)
!1489 = !DILocation(line: 590, column: 8, scope: !1451)
!1490 = !DILocation(line: 588, column: 7, scope: !1451)
!1491 = !DILocation(line: 591, column: 17, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 591, column: 11)
!1493 = !DILocation(line: 591, column: 11, scope: !1492)
!1494 = !DILocation(line: 591, column: 26, scope: !1492)
!1495 = !DILocation(line: 591, column: 38, scope: !1492)
!1496 = !DILocation(line: 591, column: 11, scope: !1451)
!1497 = !DILocation(line: 592, column: 25, scope: !1492)
!1498 = !DILocation(line: 592, column: 58, scope: !1492)
!1499 = !DILocation(line: 592, column: 2, scope: !1492)
!1500 = !DILocation(line: 573, column: 33, scope: !1446)
!1501 = !DILocation(line: 573, column: 3, scope: !1446)
!1502 = distinct !{!1502, !1448, !1503}
!1503 = !DILocation(line: 593, column: 5, scope: !1443)
!1504 = !DILocation(line: 594, column: 25, scope: !1243)
!1505 = !DILocation(line: 594, column: 34, scope: !1243)
!1506 = !DILocation(line: 594, column: 3, scope: !1243)
!1507 = !DILocation(line: 595, column: 3, scope: !1243)
!1508 = !DILocation(line: 597, column: 15, scope: !1243)
!1509 = !DILocation(line: 597, column: 3, scope: !1243)
!1510 = !DILocation(line: 598, column: 16, scope: !1243)
!1511 = !DILocation(line: 598, column: 3, scope: !1243)
!1512 = !DILocation(line: 599, column: 1, scope: !1243)
!1513 = distinct !DISubprogram(name: "saving_htab_hash", scope: !3, file: !3, line: 367, type: !322, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1514)
!1514 = !{!1515}
!1515 = !DILocalVariable(name: "p", arg: 1, scope: !1513, file: !3, line: 367, type: !324)
!1516 = !DILocation(line: 0, scope: !1513)
!1517 = !DILocation(line: 369, column: 10, scope: !1513)
!1518 = !DILocation(line: 369, column: 3, scope: !1513)
!1519 = distinct !DISubprogram(name: "saving_htab_eq", scope: !3, file: !3, line: 373, type: !329, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1520)
!1520 = !{!1521, !1522}
!1521 = !DILocalVariable(name: "p1", arg: 1, scope: !1519, file: !3, line: 373, type: !324)
!1522 = !DILocalVariable(name: "p2", arg: 2, scope: !1519, file: !3, line: 373, type: !324)
!1523 = !DILocation(line: 0, scope: !1519)
!1524 = !DILocation(line: 375, column: 41, scope: !1519)
!1525 = !DILocation(line: 375, column: 45, scope: !1519)
!1526 = !DILocation(line: 375, column: 3, scope: !1519)
!1527 = distinct !DISubprogram(name: "call_count", scope: !3, file: !3, line: 392, type: !1528, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!230, !237, !234}
!1530 = !{!1531, !1532, !1533, !1534}
!1531 = !DILocalVariable(name: "slot", arg: 1, scope: !1527, file: !3, line: 392, type: !237)
!1532 = !DILocalVariable(name: "state_p", arg: 2, scope: !1527, file: !3, line: 392, type: !234)
!1533 = !DILocalVariable(name: "d", scope: !1527, file: !3, line: 394, type: !239)
!1534 = !DILocalVariable(name: "state", scope: !1527, file: !3, line: 395, type: !365)
!1535 = !DILocation(line: 0, scope: !1527)
!1536 = !DILocation(line: 394, column: 43, scope: !1527)
!1537 = !DILocation(line: 397, column: 32, scope: !1527)
!1538 = !DILocation(line: 397, column: 38, scope: !1527)
!1539 = !DILocation(line: 397, column: 46, scope: !1527)
!1540 = !DILocation(line: 398, column: 7, scope: !1527)
!1541 = !DILocation(line: 398, column: 19, scope: !1527)
!1542 = !DILocation(line: 398, column: 4, scope: !1527)
!1543 = !DILocation(line: 399, column: 7, scope: !1527)
!1544 = !DILocation(line: 397, column: 3, scope: !1527)
!1545 = !DILocation(line: 400, column: 10, scope: !1527)
!1546 = !DILocation(line: 400, column: 15, scope: !1527)
!1547 = !DILocation(line: 401, column: 3, scope: !1527)
!1548 = distinct !DISubprogram(name: "call_alloc", scope: !3, file: !3, line: 405, type: !1528, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1549)
!1549 = !{!1550, !1551, !1552, !1553}
!1550 = !DILocalVariable(name: "slot", arg: 1, scope: !1548, file: !3, line: 405, type: !237)
!1551 = !DILocalVariable(name: "state_p", arg: 2, scope: !1548, file: !3, line: 405, type: !234)
!1552 = !DILocalVariable(name: "d", scope: !1548, file: !3, line: 407, type: !239)
!1553 = !DILocalVariable(name: "state", scope: !1548, file: !3, line: 408, type: !365)
!1554 = !DILocation(line: 0, scope: !1548)
!1555 = !DILocation(line: 407, column: 43, scope: !1548)
!1556 = !DILocation(line: 410, column: 46, scope: !1548)
!1557 = !DILocation(line: 410, column: 52, scope: !1548)
!1558 = !DILocation(line: 410, column: 60, scope: !1548)
!1559 = !DILocation(line: 411, column: 14, scope: !1548)
!1560 = !DILocation(line: 411, column: 26, scope: !1548)
!1561 = !DILocation(line: 411, column: 11, scope: !1548)
!1562 = !DILocation(line: 412, column: 14, scope: !1548)
!1563 = !DILocation(line: 410, column: 17, scope: !1548)
!1564 = !DILocation(line: 410, column: 6, scope: !1548)
!1565 = !DILocation(line: 410, column: 15, scope: !1548)
!1566 = !DILocation(line: 413, column: 10, scope: !1548)
!1567 = !DILocation(line: 413, column: 22, scope: !1548)
!1568 = !DILocation(line: 413, column: 28, scope: !1548)
!1569 = !DILocation(line: 413, column: 3, scope: !1548)
!1570 = !DILocation(line: 413, column: 32, scope: !1548)
!1571 = !DILocation(line: 414, column: 3, scope: !1548)
!1572 = distinct !DISubprogram(name: "compare_ptr_data", scope: !3, file: !3, line: 420, type: !329, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1573)
!1573 = !{!1574, !1575, !1576, !1577}
!1574 = !DILocalVariable(name: "p1_p", arg: 1, scope: !1572, file: !3, line: 420, type: !324)
!1575 = !DILocalVariable(name: "p2_p", arg: 2, scope: !1572, file: !3, line: 420, type: !324)
!1576 = !DILocalVariable(name: "p1", scope: !1572, file: !3, line: 422, type: !428)
!1577 = !DILocalVariable(name: "p2", scope: !1572, file: !3, line: 423, type: !428)
!1578 = !DILocation(line: 0, scope: !1572)
!1579 = !DILocation(line: 422, column: 38, scope: !1572)
!1580 = !DILocation(line: 422, column: 37, scope: !1572)
!1581 = !DILocation(line: 423, column: 38, scope: !1572)
!1582 = !DILocation(line: 423, column: 37, scope: !1572)
!1583 = !DILocation(line: 424, column: 24, scope: !1572)
!1584 = !DILocation(line: 424, column: 47, scope: !1572)
!1585 = !DILocation(line: 424, column: 33, scope: !1572)
!1586 = !DILocation(line: 425, column: 28, scope: !1572)
!1587 = !DILocation(line: 425, column: 4, scope: !1572)
!1588 = !DILocation(line: 424, column: 3, scope: !1572)
!1589 = distinct !DISubprogram(name: "write_pch_globals", scope: !3, file: !3, line: 449, type: !1590, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !894, !365}
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1606}
!1593 = !DILocalVariable(name: "tab", arg: 1, scope: !1589, file: !3, line: 449, type: !894)
!1594 = !DILocalVariable(name: "state", arg: 2, scope: !1589, file: !3, line: 450, type: !365)
!1595 = !DILocalVariable(name: "rt", scope: !1589, file: !3, line: 452, type: !894)
!1596 = !DILocalVariable(name: "rti", scope: !1589, file: !3, line: 453, type: !282)
!1597 = !DILocalVariable(name: "i", scope: !1589, file: !3, line: 454, type: !257)
!1598 = !DILocalVariable(name: "ptr", scope: !1599, file: !3, line: 460, type: !234)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 459, column: 2)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 458, column: 7)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 458, column: 7)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 457, column: 5)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 457, column: 5)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 456, column: 3)
!1605 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 456, column: 3)
!1606 = !DILocalVariable(name: "new_ptr", scope: !1599, file: !3, line: 461, type: !239)
!1607 = !DILocation(line: 0, scope: !1589)
!1608 = !DILocation(line: 0, scope: !1599)
!1609 = !DILocation(line: 0, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 472, column: 12)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 469, column: 6)
!1612 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 462, column: 8)
!1613 = !DILocation(line: 456, column: 8, scope: !1605)
!1614 = !DILocation(line: 0, scope: !1605)
!1615 = !DILocation(line: 456, column: 18, scope: !1604)
!1616 = !DILocation(line: 456, column: 3, scope: !1605)
!1617 = !DILocation(line: 457, column: 10, scope: !1603)
!1618 = !DILocation(line: 0, scope: !1603)
!1619 = !DILocation(line: 457, column: 26, scope: !1602)
!1620 = !DILocation(line: 457, column: 31, scope: !1602)
!1621 = !DILocation(line: 457, column: 5, scope: !1603)
!1622 = !DILocation(line: 0, scope: !1600)
!1623 = !DILocation(line: 458, column: 7, scope: !1601)
!1624 = !DILocation(line: 0, scope: !1601)
!1625 = !DILocation(line: 458, column: 28, scope: !1600)
!1626 = !DILocation(line: 458, column: 21, scope: !1600)
!1627 = !DILocation(line: 460, column: 4, scope: !1599)
!1628 = !DILocation(line: 460, column: 40, scope: !1599)
!1629 = !DILocation(line: 460, column: 52, scope: !1599)
!1630 = !DILocation(line: 460, column: 59, scope: !1599)
!1631 = !DILocation(line: 460, column: 45, scope: !1599)
!1632 = !DILocation(line: 460, column: 16, scope: !1599)
!1633 = !DILocation(line: 460, column: 10, scope: !1599)
!1634 = !DILocation(line: 462, column: 12, scope: !1612)
!1635 = !DILocation(line: 462, column: 23, scope: !1612)
!1636 = !DILocation(line: 462, column: 27, scope: !1612)
!1637 = !DILocation(line: 462, column: 20, scope: !1612)
!1638 = !DILocation(line: 464, column: 53, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 464, column: 12)
!1640 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 463, column: 6)
!1641 = !DILocation(line: 464, column: 12, scope: !1639)
!1642 = !DILocation(line: 465, column: 5, scope: !1639)
!1643 = !DILocation(line: 464, column: 12, scope: !1640)
!1644 = !DILocation(line: 466, column: 3, scope: !1639)
!1645 = !DILocation(line: 471, column: 24, scope: !1611)
!1646 = !DILocation(line: 471, column: 42, scope: !1611)
!1647 = !DILocation(line: 471, column: 3, scope: !1611)
!1648 = !DILocation(line: 472, column: 30, scope: !1610)
!1649 = !DILocation(line: 472, column: 67, scope: !1610)
!1650 = !DILocation(line: 472, column: 12, scope: !1610)
!1651 = !DILocation(line: 473, column: 5, scope: !1610)
!1652 = !DILocation(line: 472, column: 12, scope: !1611)
!1653 = !DILocation(line: 474, column: 3, scope: !1610)
!1654 = !DILocation(line: 476, column: 2, scope: !1600)
!1655 = !DILocation(line: 458, column: 35, scope: !1600)
!1656 = !DILocation(line: 458, column: 7, scope: !1600)
!1657 = distinct !{!1657, !1623, !1658}
!1658 = !DILocation(line: 476, column: 2, scope: !1601)
!1659 = !DILocation(line: 457, column: 43, scope: !1602)
!1660 = !DILocation(line: 457, column: 5, scope: !1602)
!1661 = distinct !{!1661, !1621, !1662}
!1662 = !DILocation(line: 476, column: 2, scope: !1603)
!1663 = !DILocation(line: 456, column: 25, scope: !1604)
!1664 = !DILocation(line: 456, column: 3, scope: !1604)
!1665 = distinct !{!1665, !1616, !1666}
!1666 = !DILocation(line: 476, column: 2, scope: !1605)
!1667 = !DILocation(line: 477, column: 1, scope: !1589)
!1668 = distinct !DISubprogram(name: "relocate_ptrs", scope: !3, file: !3, line: 431, type: !252, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674}
!1670 = !DILocalVariable(name: "ptr_p", arg: 1, scope: !1668, file: !3, line: 431, type: !234)
!1671 = !DILocalVariable(name: "state_p", arg: 2, scope: !1668, file: !3, line: 431, type: !234)
!1672 = !DILocalVariable(name: "ptr", scope: !1668, file: !3, line: 433, type: !237)
!1673 = !DILocalVariable(name: "state", scope: !1668, file: !3, line: 434, type: !365)
!1674 = !DILocalVariable(name: "result", scope: !1668, file: !3, line: 436, type: !239)
!1675 = !DILocation(line: 0, scope: !1668)
!1676 = !DILocation(line: 433, column: 16, scope: !1668)
!1677 = !DILocation(line: 438, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 438, column: 7)
!1679 = !DILocation(line: 438, column: 12, scope: !1678)
!1680 = !DILocation(line: 438, column: 20, scope: !1678)
!1681 = !DILocation(line: 438, column: 28, scope: !1678)
!1682 = !DILocation(line: 438, column: 7, scope: !1668)
!1683 = !DILocation(line: 442, column: 26, scope: !1668)
!1684 = !DILocation(line: 442, column: 45, scope: !1668)
!1685 = !DILocation(line: 442, column: 5, scope: !1668)
!1686 = !DILocation(line: 443, column: 3, scope: !1668)
!1687 = !DILocation(line: 444, column: 18, scope: !1668)
!1688 = !DILocation(line: 444, column: 8, scope: !1668)
!1689 = !DILocation(line: 445, column: 1, scope: !1668)
!1690 = distinct !DISubprogram(name: "gt_pch_restore", scope: !3, file: !3, line: 604, type: !1244, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697}
!1692 = !DILocalVariable(name: "f", arg: 1, scope: !1690, file: !3, line: 604, type: !369)
!1693 = !DILocalVariable(name: "rt", scope: !1690, file: !3, line: 606, type: !894)
!1694 = !DILocalVariable(name: "rti", scope: !1690, file: !3, line: 607, type: !282)
!1695 = !DILocalVariable(name: "i", scope: !1690, file: !3, line: 608, type: !257)
!1696 = !DILocalVariable(name: "mmi", scope: !1690, file: !3, line: 609, type: !1255)
!1697 = !DILocalVariable(name: "result", scope: !1690, file: !3, line: 610, type: !230)
!1698 = !DILocation(line: 0, scope: !1690)
!1699 = !DILocation(line: 609, column: 3, scope: !1690)
!1700 = !DILocation(line: 615, column: 8, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 615, column: 3)
!1702 = !DILocation(line: 0, scope: !1701)
!1703 = !DILocation(line: 615, column: 36, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 615, column: 3)
!1705 = !DILocation(line: 615, column: 3, scope: !1701)
!1706 = !DILocation(line: 620, column: 3, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 620, column: 3)
!1708 = !DILocation(line: 616, column: 10, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 616, column: 5)
!1710 = !DILocation(line: 0, scope: !1709)
!1711 = !DILocation(line: 616, column: 26, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 616, column: 5)
!1713 = !DILocation(line: 616, column: 31, scope: !1712)
!1714 = !DILocation(line: 616, column: 5, scope: !1709)
!1715 = !DILocation(line: 617, column: 34, scope: !1712)
!1716 = !DILocation(line: 617, column: 7, scope: !1712)
!1717 = !DILocation(line: 616, column: 43, scope: !1712)
!1718 = !DILocation(line: 616, column: 5, scope: !1712)
!1719 = distinct !{!1719, !1714, !1720}
!1720 = !DILocation(line: 617, column: 40, scope: !1709)
!1721 = !DILocation(line: 615, column: 43, scope: !1704)
!1722 = !DILocation(line: 615, column: 3, scope: !1704)
!1723 = distinct !{!1723, !1705, !1724}
!1724 = !DILocation(line: 617, column: 40, scope: !1701)
!1725 = !DILocation(line: 0, scope: !1707)
!1726 = !DILocation(line: 620, column: 33, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 620, column: 3)
!1728 = !DILocation(line: 626, column: 3, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 626, column: 3)
!1730 = !DILocation(line: 621, column: 10, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 621, column: 5)
!1732 = !DILocation(line: 0, scope: !1731)
!1733 = !DILocation(line: 621, column: 26, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 621, column: 5)
!1735 = !DILocation(line: 621, column: 31, scope: !1734)
!1736 = !DILocation(line: 621, column: 5, scope: !1731)
!1737 = !DILocation(line: 622, column: 34, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 622, column: 11)
!1739 = !DILocation(line: 622, column: 11, scope: !1738)
!1740 = !DILocation(line: 622, column: 48, scope: !1738)
!1741 = !DILocation(line: 622, column: 11, scope: !1734)
!1742 = !DILocation(line: 623, column: 2, scope: !1738)
!1743 = !DILocation(line: 621, column: 43, scope: !1734)
!1744 = !DILocation(line: 621, column: 5, scope: !1734)
!1745 = distinct !{!1745, !1736, !1746}
!1746 = !DILocation(line: 623, column: 40, scope: !1731)
!1747 = !DILocation(line: 620, column: 40, scope: !1727)
!1748 = !DILocation(line: 620, column: 3, scope: !1727)
!1749 = distinct !{!1749, !1706, !1750}
!1750 = !DILocation(line: 623, column: 40, scope: !1707)
!1751 = !DILocation(line: 0, scope: !1729)
!1752 = !DILocation(line: 626, column: 26, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 626, column: 3)
!1754 = !DILocation(line: 633, column: 3, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 633, column: 3)
!1756 = !DILocation(line: 627, column: 10, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 627, column: 5)
!1758 = !DILocation(line: 0, scope: !1757)
!1759 = !DILocation(line: 627, column: 26, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 627, column: 5)
!1761 = !DILocation(line: 627, column: 31, scope: !1760)
!1762 = !DILocation(line: 627, column: 5, scope: !1757)
!1763 = !DILocation(line: 0, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 628, column: 7)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 628, column: 7)
!1766 = !DILocation(line: 0, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 629, column: 6)
!1768 = !DILocation(line: 628, column: 7, scope: !1765)
!1769 = !DILocation(line: 0, scope: !1765)
!1770 = !DILocation(line: 628, column: 28, scope: !1764)
!1771 = !DILocation(line: 628, column: 21, scope: !1764)
!1772 = !DILocation(line: 629, column: 26, scope: !1767)
!1773 = !DILocation(line: 629, column: 38, scope: !1767)
!1774 = !DILocation(line: 629, column: 45, scope: !1767)
!1775 = !DILocation(line: 629, column: 31, scope: !1767)
!1776 = !DILocation(line: 629, column: 6, scope: !1767)
!1777 = !DILocation(line: 630, column: 29, scope: !1767)
!1778 = !DILocation(line: 629, column: 6, scope: !1764)
!1779 = !DILocation(line: 631, column: 4, scope: !1767)
!1780 = !DILocation(line: 628, column: 35, scope: !1764)
!1781 = !DILocation(line: 628, column: 7, scope: !1764)
!1782 = distinct !{!1782, !1768, !1783}
!1783 = !DILocation(line: 631, column: 42, scope: !1765)
!1784 = !DILocation(line: 627, column: 43, scope: !1760)
!1785 = !DILocation(line: 627, column: 5, scope: !1760)
!1786 = distinct !{!1786, !1762, !1787}
!1787 = !DILocation(line: 631, column: 42, scope: !1757)
!1788 = !DILocation(line: 626, column: 33, scope: !1753)
!1789 = !DILocation(line: 626, column: 3, scope: !1753)
!1790 = distinct !{!1790, !1728, !1791}
!1791 = !DILocation(line: 631, column: 42, scope: !1729)
!1792 = !DILocation(line: 0, scope: !1755)
!1793 = !DILocation(line: 633, column: 32, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 633, column: 3)
!1795 = !DILocation(line: 634, column: 10, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 634, column: 5)
!1797 = !DILocation(line: 0, scope: !1796)
!1798 = !DILocation(line: 634, column: 26, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 634, column: 5)
!1800 = !DILocation(line: 634, column: 31, scope: !1799)
!1801 = !DILocation(line: 634, column: 5, scope: !1796)
!1802 = !DILocation(line: 0, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 635, column: 7)
!1804 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 635, column: 7)
!1805 = !DILocation(line: 0, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 636, column: 6)
!1807 = !DILocation(line: 635, column: 7, scope: !1804)
!1808 = !DILocation(line: 0, scope: !1804)
!1809 = !DILocation(line: 635, column: 28, scope: !1803)
!1810 = !DILocation(line: 635, column: 21, scope: !1803)
!1811 = !DILocation(line: 636, column: 26, scope: !1806)
!1812 = !DILocation(line: 636, column: 38, scope: !1806)
!1813 = !DILocation(line: 636, column: 45, scope: !1806)
!1814 = !DILocation(line: 636, column: 31, scope: !1806)
!1815 = !DILocation(line: 636, column: 6, scope: !1806)
!1816 = !DILocation(line: 637, column: 29, scope: !1806)
!1817 = !DILocation(line: 636, column: 6, scope: !1803)
!1818 = !DILocation(line: 638, column: 4, scope: !1806)
!1819 = !DILocation(line: 635, column: 35, scope: !1803)
!1820 = !DILocation(line: 635, column: 7, scope: !1803)
!1821 = distinct !{!1821, !1807, !1822}
!1822 = !DILocation(line: 638, column: 42, scope: !1804)
!1823 = !DILocation(line: 634, column: 43, scope: !1799)
!1824 = !DILocation(line: 634, column: 5, scope: !1799)
!1825 = distinct !{!1825, !1801, !1826}
!1826 = !DILocation(line: 638, column: 42, scope: !1796)
!1827 = !DILocation(line: 633, column: 39, scope: !1794)
!1828 = !DILocation(line: 633, column: 3, scope: !1794)
!1829 = distinct !{!1829, !1754, !1830}
!1830 = !DILocation(line: 638, column: 42, scope: !1755)
!1831 = !DILocation(line: 640, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 640, column: 7)
!1833 = !DILocation(line: 640, column: 40, scope: !1832)
!1834 = !DILocation(line: 640, column: 7, scope: !1690)
!1835 = !DILocation(line: 641, column: 5, scope: !1832)
!1836 = !DILocation(line: 643, column: 23, scope: !1690)
!1837 = !DILocation(line: 643, column: 47, scope: !1690)
!1838 = !DILocation(line: 643, column: 67, scope: !1690)
!1839 = !DILocation(line: 644, column: 8, scope: !1690)
!1840 = !DILocation(line: 644, column: 24, scope: !1690)
!1841 = !DILocation(line: 643, column: 12, scope: !1690)
!1842 = !DILocation(line: 645, column: 14, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 645, column: 7)
!1844 = !DILocation(line: 645, column: 7, scope: !1690)
!1845 = !DILocation(line: 646, column: 5, scope: !1843)
!1846 = !DILocation(line: 647, column: 14, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 647, column: 7)
!1848 = !DILocation(line: 0, scope: !1847)
!1849 = !DILocation(line: 647, column: 7, scope: !1690)
!1850 = !DILocation(line: 649, column: 11, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 649, column: 11)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 648, column: 5)
!1853 = !DILocation(line: 649, column: 43, scope: !1851)
!1854 = !DILocation(line: 650, column: 4, scope: !1851)
!1855 = !DILocation(line: 650, column: 18, scope: !1851)
!1856 = !DILocation(line: 650, column: 38, scope: !1851)
!1857 = !DILocation(line: 650, column: 7, scope: !1851)
!1858 = !DILocation(line: 650, column: 50, scope: !1851)
!1859 = !DILocation(line: 649, column: 11, scope: !1852)
!1860 = !DILocation(line: 651, column: 2, scope: !1851)
!1861 = !DILocation(line: 653, column: 39, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 653, column: 12)
!1863 = !DILocation(line: 653, column: 33, scope: !1862)
!1864 = !DILocation(line: 653, column: 12, scope: !1862)
!1865 = !DILocation(line: 653, column: 55, scope: !1862)
!1866 = !DILocation(line: 653, column: 12, scope: !1847)
!1867 = !DILocation(line: 654, column: 5, scope: !1862)
!1868 = !DILocation(line: 656, column: 24, scope: !1690)
!1869 = !DILocation(line: 656, column: 3, scope: !1690)
!1870 = !DILocation(line: 658, column: 3, scope: !1690)
!1871 = !DILocation(line: 659, column: 1, scope: !1690)
!1872 = distinct !DISubprogram(name: "default_gt_pch_get_address", scope: !3, file: !3, line: 666, type: !1873, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!234, !257, !230}
!1875 = !{!1876, !1877}
!1876 = !DILocalVariable(name: "size", arg: 1, scope: !1872, file: !3, line: 666, type: !257)
!1877 = !DILocalVariable(name: "fd", arg: 2, scope: !1872, file: !3, line: 667, type: !230)
!1878 = !DILocation(line: 0, scope: !1872)
!1879 = !DILocation(line: 669, column: 3, scope: !1872)
!1880 = distinct !DISubprogram(name: "default_gt_pch_use_address", scope: !3, file: !3, line: 679, type: !1881, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!230, !234, !257, !230, !257}
!1883 = !{!1884, !1885, !1886, !1887, !1888}
!1884 = !DILocalVariable(name: "base", arg: 1, scope: !1880, file: !3, line: 679, type: !234)
!1885 = !DILocalVariable(name: "size", arg: 2, scope: !1880, file: !3, line: 679, type: !257)
!1886 = !DILocalVariable(name: "fd", arg: 3, scope: !1880, file: !3, line: 679, type: !230)
!1887 = !DILocalVariable(name: "offset", arg: 4, scope: !1880, file: !3, line: 680, type: !257)
!1888 = !DILocalVariable(name: "addr", scope: !1880, file: !3, line: 682, type: !234)
!1889 = !DILocation(line: 0, scope: !1880)
!1890 = !DILocation(line: 682, column: 16, scope: !1880)
!1891 = !DILocation(line: 683, column: 16, scope: !1880)
!1892 = !DILocation(line: 683, column: 25, scope: !1880)
!1893 = !DILocation(line: 683, column: 3, scope: !1880)
!1894 = distinct !DISubprogram(name: "default_gt_pch_alloc_granularity", scope: !3, file: !3, line: 691, type: !1895, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!257}
!1897 = !DILocation(line: 696, column: 3, scope: !1894)
!1898 = distinct !DISubprogram(name: "ggc_min_expand_heuristic", scope: !3, file: !3, line: 781, type: !470, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1899)
!1899 = !{!1900}
!1900 = !DILocalVariable(name: "min_expand", scope: !1898, file: !3, line: 783, type: !636)
!1901 = !DILocation(line: 783, column: 23, scope: !1898)
!1902 = !DILocation(line: 0, scope: !1898)
!1903 = !DILocation(line: 786, column: 16, scope: !1898)
!1904 = !DILocation(line: 790, column: 14, scope: !1898)
!1905 = !DILocation(line: 791, column: 14, scope: !1898)
!1906 = !DILocation(line: 792, column: 16, scope: !1898)
!1907 = !DILocation(line: 793, column: 14, scope: !1898)
!1908 = !DILocation(line: 795, column: 10, scope: !1898)
!1909 = !DILocation(line: 795, column: 3, scope: !1898)
!1910 = distinct !DISubprogram(name: "ggc_rlimit_bound", scope: !3, file: !3, line: 748, type: !1911, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!636, !636}
!1913 = !{!1914, !1915}
!1914 = !DILocalVariable(name: "limit", arg: 1, scope: !1910, file: !3, line: 748, type: !636)
!1915 = !DILocalVariable(name: "rlim", scope: !1910, file: !3, line: 751, type: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !266, line: 139, size: 128, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1916, file: !266, line: 142, baseType: !265, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1916, file: !266, line: 144, baseType: !265, size: 64, offset: 64)
!1920 = !DILocation(line: 0, scope: !1910)
!1921 = !DILocation(line: 751, column: 3, scope: !1910)
!1922 = !DILocation(line: 755, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 755, column: 7)
!1924 = !DILocation(line: 755, column: 36, scope: !1923)
!1925 = !DILocation(line: 756, column: 7, scope: !1923)
!1926 = !DILocation(line: 756, column: 15, scope: !1923)
!1927 = !DILocation(line: 756, column: 24, scope: !1923)
!1928 = !DILocation(line: 757, column: 7, scope: !1923)
!1929 = !DILocation(line: 757, column: 10, scope: !1923)
!1930 = !DILocation(line: 757, column: 24, scope: !1923)
!1931 = !DILocation(line: 755, column: 7, scope: !1910)
!1932 = !DILocation(line: 758, column: 5, scope: !1923)
!1933 = !DILocation(line: 777, column: 1, scope: !1910)
!1934 = !DILocation(line: 776, column: 3, scope: !1910)
!1935 = distinct !DISubprogram(name: "ggc_min_heapsize_heuristic", scope: !3, file: !3, line: 800, type: !470, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1936)
!1936 = !{!1937, !1938, !1939}
!1937 = !DILocalVariable(name: "phys_kbytes", scope: !1935, file: !3, line: 802, type: !636)
!1938 = !DILocalVariable(name: "limit_kbytes", scope: !1935, file: !3, line: 803, type: !636)
!1939 = !DILocalVariable(name: "rlim", scope: !1940, file: !3, line: 816, type: !1916)
!1940 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 815, column: 2)
!1941 = !DILocation(line: 802, column: 24, scope: !1935)
!1942 = !DILocation(line: 0, scope: !1935)
!1943 = !DILocation(line: 803, column: 55, scope: !1935)
!1944 = !DILocation(line: 803, column: 25, scope: !1935)
!1945 = !DILocation(line: 805, column: 15, scope: !1935)
!1946 = !DILocation(line: 806, column: 16, scope: !1935)
!1947 = !DILocation(line: 810, column: 15, scope: !1935)
!1948 = !DILocation(line: 816, column: 4, scope: !1940)
!1949 = !DILocation(line: 0, scope: !1940)
!1950 = !DILocation(line: 817, column: 8, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 817, column: 8)
!1952 = !DILocation(line: 817, column: 38, scope: !1951)
!1953 = !DILocation(line: 818, column: 8, scope: !1951)
!1954 = !DILocation(line: 818, column: 16, scope: !1951)
!1955 = !DILocation(line: 818, column: 25, scope: !1951)
!1956 = !DILocation(line: 817, column: 8, scope: !1940)
!1957 = !DILocation(line: 819, column: 20, scope: !1951)
!1958 = !DILocation(line: 820, column: 2, scope: !1935)
!1959 = !DILocation(line: 827, column: 18, scope: !1935)
!1960 = !DILocation(line: 828, column: 48, scope: !1935)
!1961 = !DILocation(line: 828, column: 46, scope: !1935)
!1962 = !DILocation(line: 828, column: 41, scope: !1935)
!1963 = !DILocation(line: 828, column: 39, scope: !1935)
!1964 = !DILocation(line: 829, column: 17, scope: !1935)
!1965 = !DILocation(line: 831, column: 17, scope: !1935)
!1966 = !DILocation(line: 832, column: 17, scope: !1935)
!1967 = !DILocation(line: 834, column: 10, scope: !1935)
!1968 = !DILocation(line: 834, column: 3, scope: !1935)
!1969 = distinct !DISubprogram(name: "init_ggc_heuristics", scope: !3, file: !3, line: 838, type: !890, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!1970 = !DILocation(line: 841, column: 38, scope: !1969)
!1971 = !DILocation(line: 841, column: 3, scope: !1969)
!1972 = !DILocation(line: 842, column: 40, scope: !1969)
!1973 = !DILocation(line: 842, column: 3, scope: !1969)
!1974 = !DILocation(line: 844, column: 1, scope: !1969)
!1975 = distinct !DISubprogram(name: "dump_ggc_loc_statistics", scope: !3, file: !3, line: 1037, type: !1976, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !229}
!1978 = !{!1979}
!1979 = !DILocalVariable(name: "final", arg: 1, scope: !1975, file: !3, line: 1037, type: !229)
!1980 = !DILocation(line: 0, scope: !1975)
!1981 = !DILocation(line: 1103, column: 1, scope: !1975)
!1982 = distinct !DISubprogram(name: "VEC_const_ggc_root_tab_t_heap_reserve", scope: !3, file: !3, line: 98, type: !1983, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!230, !862, !230}
!1985 = !{!1986, !1987, !1988}
!1986 = !DILocalVariable(name: "vec_", arg: 1, scope: !1982, file: !3, line: 98, type: !862)
!1987 = !DILocalVariable(name: "alloc_", arg: 2, scope: !1982, file: !3, line: 98, type: !230)
!1988 = !DILocalVariable(name: "extend", scope: !1982, file: !3, line: 98, type: !230)
!1989 = !DILocation(line: 0, scope: !1982)
!1990 = !DILocation(line: 98, column: 1, scope: !1982)
!1991 = !DILocation(line: 98, column: 1, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 98, column: 1)
!1993 = distinct !DISubprogram(name: "VEC_const_ggc_root_tab_t_base_quick_push", scope: !3, file: !3, line: 97, type: !1994, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1997)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!861, !1996, !281}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!1997 = !{!1998, !1999, !2000}
!1998 = !DILocalVariable(name: "vec_", arg: 1, scope: !1993, file: !3, line: 97, type: !1996)
!1999 = !DILocalVariable(name: "obj_", arg: 2, scope: !1993, file: !3, line: 97, type: !281)
!2000 = !DILocalVariable(name: "slot_", scope: !1993, file: !3, line: 97, type: !861)
!2001 = !DILocation(line: 0, scope: !1993)
!2002 = !DILocation(line: 97, column: 1, scope: !1993)
!2003 = distinct !DISubprogram(name: "VEC_const_ggc_root_tab_t_base_space", scope: !3, file: !3, line: 97, type: !2004, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!230, !1996, !230}
!2006 = !{!2007, !2008}
!2007 = !DILocalVariable(name: "vec_", arg: 1, scope: !2003, file: !3, line: 97, type: !1996)
!2008 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2003, file: !3, line: 97, type: !230)
!2009 = !DILocation(line: 0, scope: !2003)
!2010 = !DILocation(line: 97, column: 1, scope: !2003)
!2011 = distinct !DISubprogram(name: "VEC_const_ggc_cache_tab_t_heap_reserve", scope: !3, file: !3, line: 117, type: !2012, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2014)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!230, !883, !230}
!2014 = !{!2015, !2016, !2017}
!2015 = !DILocalVariable(name: "vec_", arg: 1, scope: !2011, file: !3, line: 117, type: !883)
!2016 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2011, file: !3, line: 117, type: !230)
!2017 = !DILocalVariable(name: "extend", scope: !2011, file: !3, line: 117, type: !230)
!2018 = !DILocation(line: 0, scope: !2011)
!2019 = !DILocation(line: 117, column: 1, scope: !2011)
!2020 = !DILocation(line: 117, column: 1, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 117, column: 1)
!2022 = distinct !DISubprogram(name: "VEC_const_ggc_cache_tab_t_base_quick_push", scope: !3, file: !3, line: 116, type: !2023, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2026)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!882, !2025, !309}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!2026 = !{!2027, !2028, !2029}
!2027 = !DILocalVariable(name: "vec_", arg: 1, scope: !2022, file: !3, line: 116, type: !2025)
!2028 = !DILocalVariable(name: "obj_", arg: 2, scope: !2022, file: !3, line: 116, type: !309)
!2029 = !DILocalVariable(name: "slot_", scope: !2022, file: !3, line: 116, type: !882)
!2030 = !DILocation(line: 0, scope: !2022)
!2031 = !DILocation(line: 116, column: 1, scope: !2022)
!2032 = distinct !DISubprogram(name: "VEC_const_ggc_cache_tab_t_base_space", scope: !3, file: !3, line: 116, type: !2033, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!230, !2025, !230}
!2035 = !{!2036, !2037}
!2036 = !DILocalVariable(name: "vec_", arg: 1, scope: !2032, file: !3, line: 116, type: !2025)
!2037 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2032, file: !3, line: 116, type: !230)
!2038 = !DILocation(line: 0, scope: !2032)
!2039 = !DILocation(line: 116, column: 1, scope: !2032)
!2040 = distinct !DISubprogram(name: "ggc_htab_delete", scope: !3, file: !3, line: 79, type: !1528, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2041)
!2041 = !{!2042, !2043, !2044}
!2042 = !DILocalVariable(name: "slot", arg: 1, scope: !2040, file: !3, line: 79, type: !237)
!2043 = !DILocalVariable(name: "info", arg: 2, scope: !2040, file: !3, line: 79, type: !234)
!2044 = !DILocalVariable(name: "r", scope: !2040, file: !3, line: 81, type: !310)
!2045 = !DILocation(line: 0, scope: !2040)
!2046 = !DILocation(line: 83, column: 14, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 83, column: 7)
!2048 = !DILocation(line: 83, column: 25, scope: !2047)
!2049 = !DILocation(line: 83, column: 9, scope: !2047)
!2050 = !DILocation(line: 83, column: 7, scope: !2040)
!2051 = !DILocation(line: 84, column: 26, scope: !2047)
!2052 = !DILocation(line: 84, column: 22, scope: !2047)
!2053 = !DILocation(line: 84, column: 5, scope: !2047)
!2054 = !DILocation(line: 86, column: 10, scope: !2047)
!2055 = !DILocation(line: 86, column: 15, scope: !2047)
!2056 = !DILocation(line: 86, column: 5, scope: !2047)
!2057 = !DILocation(line: 88, column: 3, scope: !2040)
