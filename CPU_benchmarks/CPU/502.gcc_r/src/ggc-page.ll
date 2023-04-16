; ModuleID = 'ggc-page.bc'
source_filename = "ggc-page.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.globals = type { [84 x %struct.page_entry*], [84 x %struct.page_entry*], %struct.page_table_chain*, i64, i64, i64, i64, i64, i64, i64, i16, %struct.page_entry*, %struct.page_group*, %struct._IO_FILE*, i32, i32, i32*, i32, i32, %struct.page_entry**, i64** }
%struct.page_table_chain = type { %struct.page_table_chain*, i64, [256 x %struct.page_entry**] }
%struct.page_entry = type { %struct.page_entry*, %struct.page_entry*, i64, i8*, %struct.page_group*, i64, i16, i16, i16, i8, [1 x i64] }
%struct.page_group = type { %struct.page_group*, i8*, i64, i32 }
%struct.anon = type { i64, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.alloc_zone = type opaque
%struct.ggc_statistics = type { i32 }
%struct.ggc_pch_data = type { %struct.ggc_pch_ondisk, [84 x i64], [84 x i64] }
%struct.ggc_pch_ondisk = type { [84 x i32] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [19 x i8] c"Head=%p, Tail=%p:\0A\00", align 1
@G = internal unnamed_addr global %struct.globals zeroinitializer, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"%p(%1d|%3d) -> \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@size_lookup = internal unnamed_addr global [512 x i8] c"\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 16, !dbg !379
@object_size_table = internal unnamed_addr global [84 x i64] zeroinitializer, align 16, !dbg !370
@timevar_ggc_mem_total = external dso_local local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"ggc-page.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@inverse_table = internal unnamed_addr global [84 x %struct.anon] zeroinitializer, align 16, !dbg !372
@extra_order_size_table = internal unnamed_addr constant [20 x i64] [i64 24, i64 40, i64 48, i64 56, i64 72, i64 80, i64 88, i64 96, i64 104, i64 112, i64 120, i64 184, i64 152, i64 136, i64 160, i64 168, i64 144, i64 104, i64 312, i64 152], align 16, !dbg !384
@objects_per_page_table = internal unnamed_addr global [84 x i32] zeroinitializer, align 16, !dbg !368
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [62 x i8] c"Memory still allocated at the end of the compilation process\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%-5s %10s  %10s  %10s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Allocated\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Used\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Overhead\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"%-5lu %10lu%c %10lu%c %10lu%c\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%-5s %10lu%c %10lu%c %10lu%c\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@ggc_pch_write_object.emptyBytes = internal constant [256 x i8] zeroinitializer, align 16, !dbg !298
@.str.14 = private unnamed_addr constant [25 x i8] c"can't write PCH file: %m\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"can't write PCH file\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"can't read PCH file: %m\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !417 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !430, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !433
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !434
  ret i32 %call, !dbg !435
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !436 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !440
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !441
  ret i32 %call, !dbg !442
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !443 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !447, metadata !DIExpression()), !dbg !448
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !449
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !449
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !449
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !449
  %cmp = icmp uge i8* %0, %1, !dbg !449
  %conv1 = zext i1 %cmp to i64, !dbg !449
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !449
  %tobool = icmp eq i64 %expval, 0, !dbg !449
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !449

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !449
  br label %cond.end, !dbg !449

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !449
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !449
  %2 = load i8, i8* %0, align 1, !dbg !449
  %conv3 = zext i8 %2 to i32, !dbg !449
  br label %cond.end, !dbg !449

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !449
  ret i32 %cond, !dbg !450
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !451 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !453, metadata !DIExpression()), !dbg !454
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !455
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !455
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !455
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !455
  %cmp = icmp uge i8* %0, %1, !dbg !455
  %conv1 = zext i1 %cmp to i64, !dbg !455
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !455
  %tobool = icmp eq i64 %expval, 0, !dbg !455
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !455

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !455
  br label %cond.end, !dbg !455

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !455
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !455
  %2 = load i8, i8* %0, align 1, !dbg !455
  %conv3 = zext i8 %2 to i32, !dbg !455
  br label %cond.end, !dbg !455

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !455
  ret i32 %cond, !dbg !456
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !457 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !458
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !458
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !458
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !458
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !458
  %cmp = icmp uge i8* %1, %2, !dbg !458
  %conv1 = zext i1 %cmp to i64, !dbg !458
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !458
  %tobool = icmp eq i64 %expval, 0, !dbg !458
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !458

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !458
  br label %cond.end, !dbg !458

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !458
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !458
  %3 = load i8, i8* %1, align 1, !dbg !458
  %conv3 = zext i8 %3 to i32, !dbg !458
  br label %cond.end, !dbg !458

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !458
  ret i32 %cond, !dbg !459
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !460 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !466
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !467
  ret i32 %call, !dbg !468
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !469 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !473, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !474, metadata !DIExpression()), !dbg !475
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !476
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !476
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !476
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !476
  %cmp = icmp uge i8* %0, %1, !dbg !476
  %conv1 = zext i1 %cmp to i64, !dbg !476
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !476
  %tobool = icmp eq i64 %expval, 0, !dbg !476
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !476

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !476
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !476
  br label %cond.end, !dbg !476

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !476
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !476
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !476
  store i8 %conv2, i8* %0, align 1, !dbg !476
  %conv6 = and i32 %__c, 255, !dbg !476
  br label %cond.end, !dbg !476

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !476
  ret i32 %cond, !dbg !477
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !478 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !480, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !481, metadata !DIExpression()), !dbg !482
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !483
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !483
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !483
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !483
  %cmp = icmp uge i8* %0, %1, !dbg !483
  %conv1 = zext i1 %cmp to i64, !dbg !483
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !483
  %tobool = icmp eq i64 %expval, 0, !dbg !483
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !483

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !483
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !483
  br label %cond.end, !dbg !483

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !483
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !483
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !483
  store i8 %conv2, i8* %0, align 1, !dbg !483
  %conv6 = and i32 %__c, 255, !dbg !483
  br label %cond.end, !dbg !483

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !483
  ret i32 %cond, !dbg !484
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !485 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !487, metadata !DIExpression()), !dbg !488
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !489
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !489
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !489
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !489
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !489
  %cmp = icmp uge i8* %1, %2, !dbg !489
  %conv1 = zext i1 %cmp to i64, !dbg !489
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !489
  %tobool = icmp eq i64 %expval, 0, !dbg !489
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !489

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !489
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !489
  br label %cond.end, !dbg !489

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !489
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !489
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !489
  store i8 %conv4, i8* %1, align 1, !dbg !489
  %conv6 = and i32 %__c, 255, !dbg !489
  br label %cond.end, !dbg !489

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !489
  ret i32 %cond, !dbg !490
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !491 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !497, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64* %__n, metadata !498, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !499, metadata !DIExpression()), !dbg !500
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !501
  ret i64 %call, !dbg !502
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !503 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !505, metadata !DIExpression()), !dbg !506
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !507
  %0 = load i32, i32* %_flags, align 8, !dbg !507
  %and = lshr i32 %0, 4, !dbg !507
  %and.lobit = and i32 %and, 1, !dbg !507
  ret i32 %and.lobit, !dbg !508
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !509 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !511, metadata !DIExpression()), !dbg !512
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !513
  %0 = load i32, i32* %_flags, align 8, !dbg !513
  %and = lshr i32 %0, 5, !dbg !513
  %and.lobit = and i32 %and, 1, !dbg !513
  ret i32 %and.lobit, !dbg !514
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !515 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !518, metadata !DIExpression()), !dbg !519
  %__c.off = add i32 %__c, 128, !dbg !520
  %0 = icmp ult i32 %__c.off, 384, !dbg !520
  br i1 %0, label %cond.true, label %cond.end, !dbg !520

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !521
  %1 = load i32*, i32** %call, align 8, !dbg !522
  %idxprom = sext i32 %__c to i64, !dbg !523
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !523
  %2 = load i32, i32* %arrayidx, align 4, !dbg !523
  br label %cond.end, !dbg !524

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !524
  ret i32 %cond, !dbg !525
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !526 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !528, metadata !DIExpression()), !dbg !529
  %__c.off = add i32 %__c, 128, !dbg !530
  %0 = icmp ult i32 %__c.off, 384, !dbg !530
  br i1 %0, label %cond.true, label %cond.end, !dbg !530

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !531
  %1 = load i32*, i32** %call, align 8, !dbg !532
  %idxprom = sext i32 %__c to i64, !dbg !533
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !533
  %2 = load i32, i32* %arrayidx, align 4, !dbg !533
  br label %cond.end, !dbg !534

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !534
  ret i32 %cond, !dbg !535
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !536 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !541, metadata !DIExpression()), !dbg !542
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !543
  %conv = trunc i64 %call to i32, !dbg !544
  ret i32 %conv, !dbg !545
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !546 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !550, metadata !DIExpression()), !dbg !551
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !552
  ret i64 %call, !dbg !553
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !554 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !559, metadata !DIExpression()), !dbg !560
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !561
  ret i64 %call, !dbg !562
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !563 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !572, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i8* %__base, metadata !573, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !574, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 %__size, metadata !575, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !576, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 0, metadata !577, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !578, metadata !DIExpression()), !dbg !582
  br label %while.cond, !dbg !583

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !584
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !582
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !578, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !577, metadata !DIExpression()), !dbg !582
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !585
  br i1 %cmp, label %while.body, label %cleanup, !dbg !583

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !586
  %div = lshr i64 %add, 1, !dbg !588
  call void @llvm.dbg.value(metadata i64 %div, metadata !579, metadata !DIExpression()), !dbg !582
  %mul = mul i64 %div, %__size, !dbg !589
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !590
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !580, metadata !DIExpression()), !dbg !582
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !591
  call void @llvm.dbg.value(metadata i32 %call, metadata !581, metadata !DIExpression()), !dbg !582
  %cmp1 = icmp slt i32 %call, 0, !dbg !592
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !594

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !595
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !597

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !598
  call void @llvm.dbg.value(metadata i64 %add4, metadata !577, metadata !DIExpression()), !dbg !582
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !582
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !582
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !578, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !577, metadata !DIExpression()), !dbg !582
  br label %while.cond, !dbg !583, !llvm.loop !599

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !582
  ret i8* %retval.0, !dbg !601
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !602 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !608, metadata !DIExpression()), !dbg !609
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !610
  ret double %call, !dbg !611
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !612 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !621, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !622, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i32 %base, metadata !623, metadata !DIExpression()), !dbg !624
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !625
  ret i64 %call, !dbg !626
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !627 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !633, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !634, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i32 %base, metadata !635, metadata !DIExpression()), !dbg !636
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !637
  ret i64 %call, !dbg !638
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !639 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !650, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !651, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 %base, metadata !652, metadata !DIExpression()), !dbg !653
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !654
  ret i64 %call, !dbg !655
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !656 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !660, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !661, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i32 %base, metadata !662, metadata !DIExpression()), !dbg !663
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !664
  ret i64 %call, !dbg !665
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !666 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !708, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !709, metadata !DIExpression()), !dbg !710
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !711
  ret i32 %call, !dbg !712
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !713 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !715, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !716, metadata !DIExpression()), !dbg !717
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !718
  ret i32 %call, !dbg !719
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !720 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !724, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !725, metadata !DIExpression()), !dbg !726
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !727
  ret i32 %call, !dbg !728
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !729 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !733, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !734, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !735, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !736, metadata !DIExpression()), !dbg !737
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !738
  ret i32 %call, !dbg !739
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !740 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !744, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !745, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !746, metadata !DIExpression()), !dbg !747
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !746, metadata !DIExpression(DW_OP_deref)), !dbg !747
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !748
  ret i32 %call, !dbg !749
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !750 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !754, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i8* %__path, metadata !755, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !756, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !757, metadata !DIExpression()), !dbg !758
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !757, metadata !DIExpression(DW_OP_deref)), !dbg !758
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !759
  ret i32 %call, !dbg !760
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !761 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !785, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !786, metadata !DIExpression()), !dbg !787
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !788
  ret i32 %call, !dbg !789
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !790 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !792, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !793, metadata !DIExpression()), !dbg !794
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !795
  ret i32 %call, !dbg !796
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !797 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !801, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !802, metadata !DIExpression()), !dbg !803
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !804
  ret i32 %call, !dbg !805
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !806 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !810, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !811, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !812, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !813, metadata !DIExpression()), !dbg !814
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !815
  ret i32 %call, !dbg !816
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_print_page_list(i32 %order) local_unnamed_addr #4 !dbg !817 {
entry:
  call void @llvm.dbg.value(metadata i32 %order, metadata !821, metadata !DIExpression()), !dbg !823
  %idxprom = sext i32 %order to i64, !dbg !824
  %arrayidx = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 0, i64 %idxprom, !dbg !824
  %0 = bitcast %struct.page_entry** %arrayidx to i8**, !dbg !824
  %1 = load i8*, i8** %0, align 8, !dbg !824
  %arrayidx2 = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 1, i64 %idxprom, !dbg !825
  %2 = bitcast %struct.page_entry** %arrayidx2 to i8**, !dbg !825
  %3 = load i8*, i8** %2, align 8, !dbg !825
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %1, i8* %3) #6, !dbg !826
  br label %while.cond, !dbg !827

while.cond:                                       ; preds = %while.body, %entry
  %p.0.in = phi %struct.page_entry** [ %arrayidx, %entry ], [ %next, %while.body ]
  %p.0 = load %struct.page_entry*, %struct.page_entry** %p.0.in, align 8, !dbg !823
  call void @llvm.dbg.value(metadata %struct.page_entry* %p.0, metadata !822, metadata !DIExpression()), !dbg !823
  %cmp = icmp eq %struct.page_entry* %p.0, null, !dbg !828
  br i1 %cmp, label %while.end, label %while.body, !dbg !827

while.body:                                       ; preds = %while.cond
  %context_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 6, !dbg !829
  %4 = load i16, i16* %context_depth, align 8, !dbg !829
  %conv = zext i16 %4 to i32, !dbg !831
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 7, !dbg !832
  %5 = load i16, i16* %num_free_objects, align 2, !dbg !832
  %conv5 = zext i16 %5 to i32, !dbg !833
  %call6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.page_entry* nonnull %p.0, i32 %conv, i32 %conv5) #6, !dbg !834
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 0, !dbg !835
  br label %while.cond, !dbg !827, !llvm.loop !836

while.end:                                        ; preds = %while.cond
  %call7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !838
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !839
  %call8 = tail call i32 @fflush(%struct._IO_FILE* %6) #6, !dbg !840
  ret void, !dbg !841
}

declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #1

declare dso_local i32 @fflush(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @ggc_alloc_typed_stat(i32 %type, i64 %size) local_unnamed_addr #4 !dbg !842 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !846, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 %size, metadata !847, metadata !DIExpression()), !dbg !848
  %call = tail call i8* @ggc_alloc_stat(i64 %size) #7, !dbg !849
  ret i8* %call, !dbg !850
}

; Function Attrs: nounwind uwtable
define dso_local i8* @ggc_alloc_stat(i64 %size) local_unnamed_addr #4 !dbg !851 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !855, metadata !DIExpression()), !dbg !868
  %cmp = icmp ult i64 %size, 512, !dbg !869
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !871

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !872

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* @size_lookup, i64 0, i64 %size, !dbg !874
  %0 = load i8, i8* %arrayidx, align 1, !dbg !874
  %conv = zext i8 %0 to i64, !dbg !874
  call void @llvm.dbg.value(metadata i64 %conv, metadata !856, metadata !DIExpression()), !dbg !868
  %arrayidx2 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %conv, !dbg !876
  %1 = load i64, i64* %arrayidx2, align 8, !dbg !876
  call void @llvm.dbg.value(metadata i64 %1, metadata !860, metadata !DIExpression()), !dbg !868
  br label %if.end, !dbg !877

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %order.0 = phi i64 [ %inc, %while.body ], [ 10, %while.cond.preheader ], !dbg !878
  call void @llvm.dbg.value(metadata i64 %order.0, metadata !856, metadata !DIExpression()), !dbg !868
  %arrayidx3 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %order.0, !dbg !879
  %2 = load i64, i64* %arrayidx3, align 8, !dbg !879
  call void @llvm.dbg.value(metadata i64 %2, metadata !860, metadata !DIExpression()), !dbg !868
  %cmp4 = icmp ult i64 %2, %size, !dbg !880
  br i1 %cmp4, label %while.body, label %if.end.loopexit, !dbg !872

while.body:                                       ; preds = %while.cond
  %inc = add i64 %order.0, 1, !dbg !881
  call void @llvm.dbg.value(metadata i64 %inc, metadata !856, metadata !DIExpression()), !dbg !868
  br label %while.cond, !dbg !872, !llvm.loop !882

if.end.loopexit:                                  ; preds = %while.cond
  %order.0.lcssa = phi i64 [ %order.0, %while.cond ], !dbg !878
  %.lcssa3 = phi i64 [ %2, %while.cond ], !dbg !879
  call void @llvm.dbg.value(metadata i64 %order.0.lcssa, metadata !856, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %order.0.lcssa, metadata !856, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %order.0.lcssa, metadata !856, metadata !DIExpression()), !dbg !868
  br label %if.end, !dbg !883

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %object_size.0 = phi i64 [ %1, %if.then ], [ %.lcssa3, %if.end.loopexit ], !dbg !884
  %order.1 = phi i64 [ %conv, %if.then ], [ %order.0.lcssa, %if.end.loopexit ], !dbg !884
  call void @llvm.dbg.value(metadata i64 %order.1, metadata !856, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %object_size.0, metadata !860, metadata !DIExpression()), !dbg !868
  %arrayidx6 = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 0, i64 %order.1, !dbg !883
  %3 = load %struct.page_entry*, %struct.page_entry** %arrayidx6, align 8, !dbg !883
  call void @llvm.dbg.value(metadata %struct.page_entry* %3, metadata !861, metadata !DIExpression()), !dbg !868
  %cmp7 = icmp eq %struct.page_entry* %3, null, !dbg !885
  br i1 %cmp7, label %if.then12, label %lor.lhs.false, !dbg !886

lor.lhs.false:                                    ; preds = %if.end
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %3, i64 0, i32 7, !dbg !887
  %4 = load i16, i16* %num_free_objects, align 2, !dbg !887
  %cmp10 = icmp eq i16 %4, 0, !dbg !888
  br i1 %cmp10, label %if.then12, label %if.else29, !dbg !889

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  %conv13 = trunc i64 %order.1 to i32, !dbg !890
  %call = tail call fastcc %struct.page_entry* @alloc_page(i32 %conv13) #7, !dbg !891
  call void @llvm.dbg.value(metadata %struct.page_entry* %call, metadata !863, metadata !DIExpression()), !dbg !892
  %5 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 17), align 8, !dbg !893
  %conv14 = zext i32 %5 to i64, !dbg !894
  %index_by_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 5, !dbg !895
  store i64 %conv14, i64* %index_by_depth, align 8, !dbg !896
  tail call fastcc void @push_by_depth(%struct.page_entry* %call, i64* null) #7, !dbg !897
  %context_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 6, !dbg !892
  br label %while.cond15, !dbg !898

while.cond15:                                     ; preds = %while.body19, %if.then12
  %6 = load i16, i16* %context_depth, align 8, !dbg !899
  %conv16 = zext i16 %6 to i32, !dbg !900
  %7 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 14), align 8, !dbg !901
  %cmp17 = icmp ugt i32 %7, %conv16, !dbg !902
  br i1 %cmp17, label %while.end20, label %while.body19, !dbg !898

while.body19:                                     ; preds = %while.cond15
  %8 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 17), align 8, !dbg !903
  %sub = add i32 %8, -1, !dbg !904
  tail call fastcc void @push_depth(i32 %sub) #7, !dbg !905
  br label %while.cond15, !dbg !898, !llvm.loop !906

while.end20:                                      ; preds = %while.cond15
  br i1 %cmp7, label %if.then23, label %if.else25, !dbg !908

if.then23:                                        ; preds = %while.end20
  %arrayidx24 = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 1, i64 %order.1, !dbg !909
  store %struct.page_entry* %call, %struct.page_entry** %arrayidx24, align 8, !dbg !911
  br label %if.end26, !dbg !909

if.else25:                                        ; preds = %while.end20
  %prev = getelementptr inbounds %struct.page_entry, %struct.page_entry* %3, i64 0, i32 1, !dbg !912
  store %struct.page_entry* %call, %struct.page_entry** %prev, align 8, !dbg !913
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then23
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 0, !dbg !914
  store %struct.page_entry* %3, %struct.page_entry** %next, align 8, !dbg !915
  %prev27 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 1, !dbg !916
  store %struct.page_entry* null, %struct.page_entry** %prev27, align 8, !dbg !917
  call void @llvm.dbg.value(metadata %struct.page_entry* %call, metadata !861, metadata !DIExpression()), !dbg !868
  store %struct.page_entry* %call, %struct.page_entry** %arrayidx6, align 8, !dbg !918
  %next_bit_hint = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 8, !dbg !919
  store i16 1, i16* %next_bit_hint, align 4, !dbg !920
  call void @llvm.dbg.value(metadata i64 0, metadata !857, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !858, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !859, metadata !DIExpression()), !dbg !868
  br label %if.end60, !dbg !921

if.else29:                                        ; preds = %lor.lhs.false
  %next_bit_hint30 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %3, i64 0, i32 8, !dbg !922
  %9 = load i16, i16* %next_bit_hint30, align 4, !dbg !922
  %conv31 = zext i16 %9 to i32, !dbg !923
  call void @llvm.dbg.value(metadata i32 %conv31, metadata !866, metadata !DIExpression()), !dbg !924
  %div = lshr i32 %conv31, 6, !dbg !925
  %conv32 = zext i32 %div to i64, !dbg !926
  call void @llvm.dbg.value(metadata i64 %conv32, metadata !857, metadata !DIExpression()), !dbg !868
  %rem = and i32 %conv31, 63, !dbg !927
  %conv33 = zext i32 %rem to i64, !dbg !928
  call void @llvm.dbg.value(metadata i64 %conv33, metadata !858, metadata !DIExpression()), !dbg !868
  %arrayidx34 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %3, i64 0, i32 10, i64 %conv32, !dbg !929
  %10 = load i64, i64* %arrayidx34, align 8, !dbg !929
  %11 = shl i64 1, %conv33, !dbg !931
  %12 = and i64 %10, %11, !dbg !931
  %tobool = icmp eq i64 %12, 0, !dbg !931
  br i1 %tobool, label %if.end54, label %while.cond36.preheader, !dbg !932

while.cond36.preheader:                           ; preds = %if.else29
  br label %while.cond36, !dbg !933

while.cond36:                                     ; preds = %while.cond36.preheader, %while.body41
  %word.0 = phi i64 [ %inc42, %while.body41 ], [ 0, %while.cond36.preheader ], !dbg !935
  call void @llvm.dbg.value(metadata i64 %word.0, metadata !857, metadata !DIExpression()), !dbg !868
  %arrayidx38 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %3, i64 0, i32 10, i64 %word.0, !dbg !936
  %13 = load i64, i64* %arrayidx38, align 8, !dbg !936
  %cmp39 = icmp eq i64 %13, -1, !dbg !937
  br i1 %cmp39, label %while.body41, label %while.cond44.preheader, !dbg !933

while.cond44.preheader:                           ; preds = %while.cond36
  %word.0.lcssa = phi i64 [ %word.0, %while.cond36 ], !dbg !935
  %.lcssa = phi i64 [ %13, %while.cond36 ], !dbg !936
  call void @llvm.dbg.value(metadata i64 %word.0.lcssa, metadata !857, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %word.0.lcssa, metadata !857, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %word.0.lcssa, metadata !857, metadata !DIExpression()), !dbg !868
  br label %while.cond44, !dbg !938

while.body41:                                     ; preds = %while.cond36
  %inc42 = add i64 %word.0, 1, !dbg !939
  call void @llvm.dbg.value(metadata i64 %inc42, metadata !857, metadata !DIExpression()), !dbg !868
  br label %while.cond36, !dbg !933, !llvm.loop !940

while.cond44:                                     ; preds = %while.cond44.preheader, %while.body50
  %bit.0 = phi i64 [ %inc51, %while.body50 ], [ 0, %while.cond44.preheader ], !dbg !935
  call void @llvm.dbg.value(metadata i64 %bit.0, metadata !858, metadata !DIExpression()), !dbg !868
  %14 = shl i64 1, %bit.0, !dbg !938
  %15 = and i64 %.lcssa, %14, !dbg !938
  %tobool49 = icmp eq i64 %15, 0, !dbg !938
  br i1 %tobool49, label %while.end52, label %while.body50, !dbg !938

while.body50:                                     ; preds = %while.cond44
  %inc51 = add i64 %bit.0, 1, !dbg !942
  call void @llvm.dbg.value(metadata i64 %inc51, metadata !858, metadata !DIExpression()), !dbg !868
  br label %while.cond44, !dbg !938, !llvm.loop !943

while.end52:                                      ; preds = %while.cond44
  %bit.0.lcssa = phi i64 [ %bit.0, %while.cond44 ], !dbg !935
  call void @llvm.dbg.value(metadata i64 %bit.0.lcssa, metadata !858, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %bit.0.lcssa, metadata !858, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %bit.0.lcssa, metadata !858, metadata !DIExpression()), !dbg !868
  %mul = shl i64 %word.0.lcssa, 6, !dbg !945
  %add = add i64 %mul, %bit.0.lcssa, !dbg !946
  %conv53 = trunc i64 %add to i32, !dbg !947
  call void @llvm.dbg.value(metadata i32 %conv53, metadata !866, metadata !DIExpression()), !dbg !924
  br label %if.end54, !dbg !948

if.end54:                                         ; preds = %if.else29, %while.end52
  %bit.1 = phi i64 [ %bit.0.lcssa, %while.end52 ], [ %conv33, %if.else29 ], !dbg !924
  %word.1 = phi i64 [ %word.0.lcssa, %while.end52 ], [ %conv32, %if.else29 ], !dbg !924
  %hint.0 = phi i32 [ %conv53, %while.end52 ], [ %conv31, %if.else29 ], !dbg !924
  call void @llvm.dbg.value(metadata i32 %hint.0, metadata !866, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i64 %word.1, metadata !857, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %bit.1, metadata !858, metadata !DIExpression()), !dbg !868
  %16 = trunc i32 %hint.0 to i16, !dbg !949
  %conv56 = add i16 %16, 1, !dbg !949
  store i16 %conv56, i16* %next_bit_hint30, align 4, !dbg !950
  %conv58 = zext i32 %hint.0 to i64, !dbg !951
  %mul59 = mul i64 %object_size.0, %conv58, !dbg !952
  call void @llvm.dbg.value(metadata i64 %mul59, metadata !859, metadata !DIExpression()), !dbg !868
  br label %if.end60

if.end60:                                         ; preds = %if.end54, %if.end26
  %entry1.0 = phi %struct.page_entry* [ %call, %if.end26 ], [ %3, %if.end54 ], !dbg !868
  %object_offset.0 = phi i64 [ 0, %if.end26 ], [ %mul59, %if.end54 ], !dbg !953
  %bit.2 = phi i64 [ 0, %if.end26 ], [ %bit.1, %if.end54 ], !dbg !953
  %word.2 = phi i64 [ 0, %if.end26 ], [ %word.1, %if.end54 ], !dbg !953
  call void @llvm.dbg.value(metadata i64 %word.2, metadata !857, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %bit.2, metadata !858, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %object_offset.0, metadata !859, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata %struct.page_entry* %entry1.0, metadata !861, metadata !DIExpression()), !dbg !868
  %shl = shl i64 1, %bit.2, !dbg !954
  %arrayidx62 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.0, i64 0, i32 10, i64 %word.2, !dbg !955
  %17 = load i64, i64* %arrayidx62, align 8, !dbg !956
  %or = or i64 %17, %shl, !dbg !956
  store i64 %or, i64* %arrayidx62, align 8, !dbg !956
  %num_free_objects63 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.0, i64 0, i32 7, !dbg !957
  %18 = load i16, i16* %num_free_objects63, align 2, !dbg !959
  %dec = add i16 %18, -1, !dbg !959
  store i16 %dec, i16* %num_free_objects63, align 2, !dbg !959
  %cmp65 = icmp eq i16 %dec, 0, !dbg !960
  br i1 %cmp65, label %land.lhs.true, label %if.end87, !dbg !961

land.lhs.true:                                    ; preds = %if.end60
  %next67 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.0, i64 0, i32 0, !dbg !962
  %19 = load %struct.page_entry*, %struct.page_entry** %next67, align 8, !dbg !962
  %cmp68 = icmp eq %struct.page_entry* %19, null, !dbg !963
  %20 = ptrtoint %struct.page_entry* %19 to i64, !dbg !964
  br i1 %cmp68, label %if.end87, label %land.lhs.true70, !dbg !964

land.lhs.true70:                                  ; preds = %land.lhs.true
  %num_free_objects72 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %19, i64 0, i32 7, !dbg !965
  %21 = load i16, i16* %num_free_objects72, align 2, !dbg !965
  %cmp74 = icmp eq i16 %21, 0, !dbg !966
  br i1 %cmp74, label %if.end87, label %if.then76, !dbg !967

if.then76:                                        ; preds = %land.lhs.true70
  %22 = bitcast %struct.page_entry** %arrayidx6 to i64*, !dbg !968
  store i64 %20, i64* %22, align 8, !dbg !968
  %23 = load %struct.page_entry*, %struct.page_entry** %next67, align 8, !dbg !970
  %prev80 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %23, i64 0, i32 1, !dbg !971
  store %struct.page_entry* null, %struct.page_entry** %prev80, align 8, !dbg !972
  store %struct.page_entry* null, %struct.page_entry** %next67, align 8, !dbg !973
  %arrayidx82 = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 1, i64 %order.1, !dbg !974
  %24 = bitcast %struct.page_entry** %arrayidx82 to i64*, !dbg !974
  %25 = load i64, i64* %24, align 8, !dbg !974
  %prev83 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.0, i64 0, i32 1, !dbg !975
  %26 = bitcast %struct.page_entry** %prev83 to i64*, !dbg !976
  store i64 %25, i64* %26, align 8, !dbg !976
  %27 = load %struct.page_entry*, %struct.page_entry** %arrayidx82, align 8, !dbg !977
  %next85 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %27, i64 0, i32 0, !dbg !978
  store %struct.page_entry* %entry1.0, %struct.page_entry** %next85, align 8, !dbg !979
  store %struct.page_entry* %entry1.0, %struct.page_entry** %arrayidx82, align 8, !dbg !980
  br label %if.end87, !dbg !981

if.end87:                                         ; preds = %land.lhs.true70, %land.lhs.true, %if.then76, %if.end60
  %page = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.0, i64 0, i32 3, !dbg !982
  %28 = load i8*, i8** %page, align 8, !dbg !982
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %object_offset.0, !dbg !983
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !862, metadata !DIExpression()), !dbg !868
  %29 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 5), align 8, !dbg !984
  %add88 = add i64 %29, %object_size.0, !dbg !984
  store i64 %add88, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 5), align 8, !dbg !984
  %30 = load i64, i64* @timevar_ggc_mem_total, align 8, !dbg !985
  %add89 = add i64 %30, %object_size.0, !dbg !985
  store i64 %add89, i64* @timevar_ggc_mem_total, align 8, !dbg !985
  ret i8* %add.ptr, !dbg !986
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.page_entry* @alloc_page(i32 %order) unnamed_addr #0 !dbg !987 {
entry:
  call void @llvm.dbg.value(metadata i32 %order, metadata !991, metadata !DIExpression()), !dbg !1015
  %idxprom = zext i32 %order to i64, !dbg !1016
  %arrayidx = getelementptr inbounds [84 x i32], [84 x i32]* @objects_per_page_table, i64 0, i64 %idxprom, !dbg !1016
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1016
  %conv = zext i32 %0 to i64, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %conv, metadata !997, metadata !DIExpression()), !dbg !1015
  %sub = add nuw nsw i64 %conv, 64, !dbg !1017
  %div = lshr i64 %sub, 6, !dbg !1017
  %mul = shl nuw nsw i64 %div, 3, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %mul, metadata !998, metadata !DIExpression()), !dbg !1015
  %add3 = add nuw nsw i64 %mul, 56, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %add3, metadata !999, metadata !DIExpression()), !dbg !1015
  %arrayidx5 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %idxprom, !dbg !1019
  %1 = load i64, i64* %arrayidx5, align 8, !dbg !1019
  %mul6 = mul i64 %1, %conv, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %mul6, metadata !1000, metadata !DIExpression()), !dbg !1015
  %2 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1021
  %cmp = icmp ult i64 %mul6, %2, !dbg !1023
  %spec.select = select i1 %cmp, i64 %2, i64 %mul6, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1000, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata %struct.page_entry* null, metadata !992, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i8* null, metadata !996, metadata !DIExpression()), !dbg !1015
  br label %for.cond, !dbg !1025

for.cond:                                         ; preds = %for.inc, %entry
  %pp.0 = phi %struct.page_entry** [ getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 11), %entry ], [ %next, %for.inc ], !dbg !1027
  %p.0.in = phi %struct.page_entry** [ getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 11), %entry ], [ %next, %for.inc ]
  %p.0 = load %struct.page_entry*, %struct.page_entry** %p.0.in, align 8, !dbg !1027
  call void @llvm.dbg.value(metadata %struct.page_entry* %p.0, metadata !993, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata %struct.page_entry** %pp.0, metadata !994, metadata !DIExpression()), !dbg !1015
  %cond = icmp eq %struct.page_entry* %p.0, null, !dbg !1028
  br i1 %cond, label %if.else24.loopexit, label %for.body, !dbg !1028

for.body:                                         ; preds = %for.cond
  %bytes = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 2, !dbg !1029
  %3 = load i64, i64* %bytes, align 8, !dbg !1029
  %cmp8 = icmp eq i64 %3, %spec.select, !dbg !1032
  br i1 %cmp8, label %for.end, label %for.inc, !dbg !1033

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 0, !dbg !1034
  call void @llvm.dbg.value(metadata %struct.page_entry** %next, metadata !994, metadata !DIExpression()), !dbg !1015
  br label %for.cond, !dbg !1035, !llvm.loop !1036

for.end:                                          ; preds = %for.body
  %pp.0.lcssa6 = phi %struct.page_entry** [ %pp.0, %for.body ], !dbg !1027
  %p.0.lcssa5 = phi %struct.page_entry* [ %p.0, %for.body ], !dbg !1027
  call void @llvm.dbg.value(metadata %struct.page_entry** %pp.0.lcssa6, metadata !994, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata %struct.page_entry** %pp.0.lcssa6, metadata !994, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata %struct.page_entry** %pp.0.lcssa6, metadata !994, metadata !DIExpression()), !dbg !1015
  %4 = bitcast %struct.page_entry* %p.0.lcssa5 to i64*, !dbg !1038
  %5 = load i64, i64* %4, align 8, !dbg !1038
  %6 = bitcast %struct.page_entry** %pp.0.lcssa6 to i64*, !dbg !1040
  store i64 %5, i64* %6, align 8, !dbg !1040
  %page16 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0.lcssa5, i64 0, i32 3, !dbg !1041
  %7 = load i8*, i8** %page16, align 8, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %7, metadata !996, metadata !DIExpression()), !dbg !1015
  %group17 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0.lcssa5, i64 0, i32 4, !dbg !1042
  %8 = load %struct.page_group*, %struct.page_group** %group17, align 8, !dbg !1042
  call void @llvm.dbg.value(metadata %struct.page_group* %8, metadata !1001, metadata !DIExpression()), !dbg !1015
  %order18 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0.lcssa5, i64 0, i32 9, !dbg !1043
  %9 = load i8, i8* %order18, align 2, !dbg !1043
  %conv19 = zext i8 %9 to i32, !dbg !1045
  %cmp20 = icmp eq i32 %conv19, %order, !dbg !1046
  %10 = bitcast %struct.page_entry* %p.0.lcssa5 to i8*, !dbg !1047
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !1048

if.then22:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.page_entry* %p.0.lcssa5, metadata !992, metadata !DIExpression()), !dbg !1015
  %call = tail call i8* @memset(i8* nonnull %10, i32 0, i64 %add3) #6, !dbg !1049
  br label %if.end89, !dbg !1051

if.else:                                          ; preds = %for.end
  tail call void @free(i8* nonnull %10) #6, !dbg !1052
  br label %if.end89

if.else24.loopexit:                               ; preds = %for.cond
  %cmp25 = icmp uge i64 %2, %mul6, !dbg !1053
  call void @llvm.dbg.value(metadata i1 %cmp25, metadata !1010, metadata !DIExpression()), !dbg !1054
  %mul29 = shl i64 %2, 4, !dbg !1055
  %add31 = add i64 %spec.select, %2, !dbg !1055
  %sub32 = add i64 %add31, -1, !dbg !1055
  %alloc_size.0 = select i1 %cmp25, i64 %mul29, i64 %sub32, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %alloc_size.0, metadata !1007, metadata !DIExpression()), !dbg !1054
  %call35 = tail call i8* @xmalloc(i64 %alloc_size.0) #6, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %call35, metadata !1002, metadata !DIExpression()), !dbg !1054
  %11 = ptrtoint i8* %call35 to i64, !dbg !1057
  %12 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1058
  %add36 = add i64 %12, %11, !dbg !1059
  %sub37 = add i64 %add36, -1, !dbg !1060
  %sub38 = sub i64 0, %12, !dbg !1061
  %and = and i64 %sub37, %sub38, !dbg !1062
  %13 = inttoptr i64 %and to i8*, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %13, metadata !996, metadata !DIExpression()), !dbg !1015
  %sub.ptr.sub = sub i64 %and, %11, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1008, metadata !DIExpression()), !dbg !1054
  br i1 %cmp25, label %if.then40, label %if.else44, !dbg !1065

if.then40:                                        ; preds = %if.else24.loopexit
  %add41 = add i64 %alloc_size.0, %11, !dbg !1066
  %sub42 = add i64 %12, -1, !dbg !1068
  %and43 = and i64 %add41, %sub42, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %and43, metadata !1009, metadata !DIExpression()), !dbg !1054
  br label %if.end47, !dbg !1070

if.else44:                                        ; preds = %if.else24.loopexit
  %sub45 = sub i64 %alloc_size.0, %spec.select, !dbg !1071
  %sub46 = sub i64 %sub45, %sub.ptr.sub, !dbg !1072
  call void @llvm.dbg.value(metadata i64 %sub46, metadata !1009, metadata !DIExpression()), !dbg !1054
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then40
  %tail_slop.0 = phi i64 [ %and43, %if.then40 ], [ %sub46, %if.else44 ], !dbg !1073
  call void @llvm.dbg.value(metadata i64 %tail_slop.0, metadata !1009, metadata !DIExpression()), !dbg !1054
  %add.ptr = getelementptr inbounds i8, i8* %call35, i64 %alloc_size.0, !dbg !1074
  %idx.neg = sub i64 0, %tail_slop.0, !dbg !1075
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg, !dbg !1075
  call void @llvm.dbg.value(metadata i8* %add.ptr48, metadata !1006, metadata !DIExpression()), !dbg !1054
  %cmp49 = icmp ugt i64 %sub.ptr.sub, 31, !dbg !1076
  br i1 %cmp49, label %if.then51, label %if.else53, !dbg !1078

if.then51:                                        ; preds = %if.end47
  %14 = inttoptr i64 %and to %struct.page_group*, !dbg !1079
  %add.ptr52 = getelementptr inbounds %struct.page_group, %struct.page_group* %14, i64 -1, !dbg !1080
  call void @llvm.dbg.value(metadata %struct.page_group* %add.ptr52, metadata !1001, metadata !DIExpression()), !dbg !1015
  br label %if.end64, !dbg !1081

if.else53:                                        ; preds = %if.end47
  %cmp54 = icmp eq i64 %tail_slop.0, 0, !dbg !1082
  br i1 %cmp54, label %if.then56, label %if.end60, !dbg !1085

if.then56:                                        ; preds = %if.else53
  %add.ptr58 = getelementptr inbounds i8, i8* %add.ptr48, i64 %sub38, !dbg !1086
  call void @llvm.dbg.value(metadata i8* %add.ptr58, metadata !1006, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %12, metadata !1009, metadata !DIExpression()), !dbg !1054
  br label %if.end60, !dbg !1088

if.end60:                                         ; preds = %if.then56, %if.else53
  %enda.0 = phi i8* [ %add.ptr58, %if.then56 ], [ %add.ptr48, %if.else53 ], !dbg !1054
  %tail_slop.1 = phi i64 [ %12, %if.then56 ], [ %tail_slop.0, %if.else53 ], !dbg !1054
  call void @llvm.dbg.value(metadata i64 %tail_slop.1, metadata !1009, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %enda.0, metadata !1006, metadata !DIExpression()), !dbg !1054
  %cmp61 = icmp ugt i64 %tail_slop.1, 31, !dbg !1089
  br i1 %cmp61, label %cond.end, label %cond.true, !dbg !1089

cond.true:                                        ; preds = %if.end60
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 847, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1089
  br label %cond.end, !dbg !1089

cond.end:                                         ; preds = %if.end60, %cond.true
  %15 = bitcast i8* %enda.0 to %struct.page_group*, !dbg !1090
  call void @llvm.dbg.value(metadata %struct.page_group* %15, metadata !1001, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i64 %tail_slop.1, metadata !1009, metadata !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value)), !dbg !1054
  br label %if.end64

if.end64:                                         ; preds = %cond.end, %if.then51
  %group.0 = phi %struct.page_group* [ %add.ptr52, %if.then51 ], [ %15, %cond.end ], !dbg !1091
  %enda.1 = phi i8* [ %add.ptr48, %if.then51 ], [ %enda.0, %cond.end ], !dbg !1054
  call void @llvm.dbg.value(metadata i8* %enda.1, metadata !1006, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata %struct.page_group* %group.0, metadata !1001, metadata !DIExpression()), !dbg !1015
  %16 = load i64, i64* bitcast (%struct.page_group** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 12) to i64*), align 8, !dbg !1092
  %17 = bitcast %struct.page_group* %group.0 to i64*, !dbg !1093
  store i64 %16, i64* %17, align 8, !dbg !1093
  %allocation66 = getelementptr inbounds %struct.page_group, %struct.page_group* %group.0, i64 0, i32 1, !dbg !1094
  store i8* %call35, i8** %allocation66, align 8, !dbg !1095
  %alloc_size67 = getelementptr inbounds %struct.page_group, %struct.page_group* %group.0, i64 0, i32 2, !dbg !1096
  store i64 %alloc_size.0, i64* %alloc_size67, align 8, !dbg !1097
  %in_use = getelementptr inbounds %struct.page_group, %struct.page_group* %group.0, i64 0, i32 3, !dbg !1098
  store i32 0, i32* %in_use, align 8, !dbg !1099
  store %struct.page_group* %group.0, %struct.page_group** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 12), align 8, !dbg !1100
  %18 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 7), align 8, !dbg !1101
  %add68 = add i64 %18, %alloc_size.0, !dbg !1101
  store i64 %add68, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 7), align 8, !dbg !1101
  br i1 %cmp25, label %if.then70, label %if.end89, !dbg !1102

if.then70:                                        ; preds = %if.end64
  %19 = load %struct.page_entry*, %struct.page_entry** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 11), align 8, !dbg !1103
  call void @llvm.dbg.value(metadata %struct.page_entry* %19, metadata !1014, metadata !DIExpression()), !dbg !1104
  %20 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1105
  %idx.neg71 = sub i64 0, %20, !dbg !1107
  %add.ptr72 = getelementptr inbounds i8, i8* %enda.1, i64 %idx.neg71, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %add.ptr72, metadata !1005, metadata !DIExpression()), !dbg !1054
  %conv78 = trunc i32 %order to i8, !dbg !1108
  br label %for.cond73, !dbg !1111

for.cond73:                                       ; preds = %for.body76, %if.then70
  %a.0 = phi i8* [ %add.ptr72, %if.then70 ], [ %add.ptr86, %for.body76 ], !dbg !1112
  %f.0 = phi %struct.page_entry* [ %19, %if.then70 ], [ %21, %for.body76 ], !dbg !1104
  call void @llvm.dbg.value(metadata %struct.page_entry* %f.0, metadata !1014, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %a.0, metadata !1005, metadata !DIExpression()), !dbg !1054
  %cmp74 = icmp eq i8* %a.0, %13, !dbg !1113
  br i1 %cmp74, label %for.end87, label %for.body76, !dbg !1114

for.body76:                                       ; preds = %for.cond73
  %call77 = tail call i8* @xcalloc(i64 1, i64 %add3) #6, !dbg !1115
  %21 = bitcast i8* %call77 to %struct.page_entry*, !dbg !1115
  call void @llvm.dbg.value(metadata %struct.page_entry* %21, metadata !1011, metadata !DIExpression()), !dbg !1104
  %22 = getelementptr inbounds i8, i8* %call77, i64 54, !dbg !1116
  store i8 %conv78, i8* %22, align 2, !dbg !1117
  %23 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1118
  %bytes80 = getelementptr inbounds i8, i8* %call77, i64 16, !dbg !1119
  %24 = bitcast i8* %bytes80 to i64*, !dbg !1119
  store i64 %23, i64* %24, align 8, !dbg !1120
  %page81 = getelementptr inbounds i8, i8* %call77, i64 24, !dbg !1121
  %25 = bitcast i8* %page81 to i8**, !dbg !1121
  store i8* %a.0, i8** %25, align 8, !dbg !1122
  %group82 = getelementptr inbounds i8, i8* %call77, i64 32, !dbg !1123
  %26 = bitcast i8* %group82 to %struct.page_group**, !dbg !1123
  store %struct.page_group* %group.0, %struct.page_group** %26, align 8, !dbg !1124
  %next83 = bitcast i8* %call77 to %struct.page_entry**, !dbg !1125
  store %struct.page_entry* %f.0, %struct.page_entry** %next83, align 8, !dbg !1126
  call void @llvm.dbg.value(metadata %struct.page_entry* %21, metadata !1014, metadata !DIExpression()), !dbg !1104
  %27 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1127
  %idx.neg85 = sub i64 0, %27, !dbg !1128
  %add.ptr86 = getelementptr inbounds i8, i8* %a.0, i64 %idx.neg85, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %add.ptr86, metadata !1005, metadata !DIExpression()), !dbg !1054
  br label %for.cond73, !dbg !1129, !llvm.loop !1130

for.end87:                                        ; preds = %for.cond73
  %f.0.lcssa = phi %struct.page_entry* [ %f.0, %for.cond73 ], !dbg !1104
  call void @llvm.dbg.value(metadata %struct.page_entry* %f.0.lcssa, metadata !1014, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata %struct.page_entry* %f.0.lcssa, metadata !1014, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata %struct.page_entry* %f.0.lcssa, metadata !1014, metadata !DIExpression()), !dbg !1104
  store %struct.page_entry* %f.0.lcssa, %struct.page_entry** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 11), align 8, !dbg !1132
  br label %if.end89, !dbg !1133

if.end89:                                         ; preds = %if.end64, %for.end87, %if.then22, %if.else
  %group.1 = phi %struct.page_group* [ %8, %if.else ], [ %8, %if.then22 ], [ %group.0, %for.end87 ], [ %group.0, %if.end64 ], !dbg !1134
  %page.0 = phi i8* [ %7, %if.else ], [ %7, %if.then22 ], [ %13, %for.end87 ], [ %13, %if.end64 ], !dbg !1134
  %entry1.1 = phi %struct.page_entry* [ null, %if.else ], [ %p.0.lcssa5, %if.then22 ], [ null, %for.end87 ], [ null, %if.end64 ], !dbg !1015
  call void @llvm.dbg.value(metadata %struct.page_entry* %entry1.1, metadata !992, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i8* %page.0, metadata !996, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata %struct.page_group* %group.1, metadata !1001, metadata !DIExpression()), !dbg !1015
  %cmp90 = icmp eq %struct.page_entry* %entry1.1, null, !dbg !1135
  br i1 %cmp90, label %if.then92, label %if.end94, !dbg !1137

if.then92:                                        ; preds = %if.end89
  %call93 = tail call i8* @xcalloc(i64 1, i64 %add3) #6, !dbg !1138
  %28 = bitcast i8* %call93 to %struct.page_entry*, !dbg !1138
  call void @llvm.dbg.value(metadata %struct.page_entry* %28, metadata !992, metadata !DIExpression()), !dbg !1015
  br label %if.end94, !dbg !1139

if.end94:                                         ; preds = %if.then92, %if.end89
  %entry1.2 = phi %struct.page_entry* [ %28, %if.then92 ], [ %entry1.1, %if.end89 ], !dbg !1015
  call void @llvm.dbg.value(metadata %struct.page_entry* %entry1.2, metadata !992, metadata !DIExpression()), !dbg !1015
  %bytes95 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.2, i64 0, i32 2, !dbg !1140
  store i64 %spec.select, i64* %bytes95, align 8, !dbg !1141
  %page96 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.2, i64 0, i32 3, !dbg !1142
  store i8* %page.0, i8** %page96, align 8, !dbg !1143
  %29 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 10), align 8, !dbg !1144
  %context_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.2, i64 0, i32 6, !dbg !1145
  store i16 %29, i16* %context_depth, align 8, !dbg !1146
  %conv97 = trunc i32 %order to i8, !dbg !1147
  %order98 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.2, i64 0, i32 9, !dbg !1148
  store i8 %conv97, i8* %order98, align 2, !dbg !1149
  %conv99 = trunc i32 %0 to i16, !dbg !1150
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.2, i64 0, i32 7, !dbg !1151
  store i16 %conv99, i16* %num_free_objects, align 2, !dbg !1152
  %next_bit_hint = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.2, i64 0, i32 8, !dbg !1153
  store i16 1, i16* %next_bit_hint, align 4, !dbg !1154
  %30 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 10), align 8, !dbg !1155
  %sh_prom = zext i16 %30 to i64, !dbg !1156
  %shl = shl i64 1, %sh_prom, !dbg !1156
  %31 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 8), align 8, !dbg !1157
  %or = or i64 %31, %shl, !dbg !1157
  store i64 %or, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 8), align 8, !dbg !1157
  %group101 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.2, i64 0, i32 4, !dbg !1158
  store %struct.page_group* %group.1, %struct.page_group** %group101, align 8, !dbg !1159
  tail call fastcc void @set_page_group_in_use(%struct.page_group* %group.1, i8* %page.0) #7, !dbg !1160
  %rem = and i64 %conv, 63, !dbg !1161
  %shl102 = shl i64 1, %rem, !dbg !1162
  %div103 = lshr i64 %conv, 6, !dbg !1163
  %arrayidx104 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %entry1.2, i64 0, i32 10, i64 %div103, !dbg !1164
  store i64 %shl102, i64* %arrayidx104, align 8, !dbg !1165
  tail call fastcc void @set_page_table_entry(i8* %page.0, %struct.page_entry* %entry1.2) #7, !dbg !1166
  ret %struct.page_entry* %entry1.2, !dbg !1167
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @push_by_depth(%struct.page_entry* %p, i64* %s) unnamed_addr #0 !dbg !1168 {
entry:
  call void @llvm.dbg.value(metadata %struct.page_entry* %p, metadata !1172, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64* null, metadata !1173, metadata !DIExpression()), !dbg !1174
  %0 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 17), align 8, !dbg !1175
  %1 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 18), align 4, !dbg !1177
  %cmp = icmp ult i32 %0, %1, !dbg !1178
  br i1 %cmp, label %if.end, label %if.then, !dbg !1179

if.then:                                          ; preds = %entry
  %mul = shl i32 %1, 1, !dbg !1180
  store i32 %mul, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 18), align 4, !dbg !1180
  %2 = load i8*, i8** bitcast (%struct.page_entry*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 19) to i8**), align 8, !dbg !1182
  %conv = zext i32 %mul to i64, !dbg !1182
  %mul1 = shl nuw nsw i64 %conv, 3, !dbg !1182
  %call = tail call i8* @xrealloc(i8* %2, i64 %mul1) #6, !dbg !1182
  store i8* %call, i8** bitcast (%struct.page_entry*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 19) to i8**), align 8, !dbg !1183
  %3 = load i8*, i8** bitcast (i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20) to i8**), align 8, !dbg !1184
  %4 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 18), align 4, !dbg !1184
  %conv2 = zext i32 %4 to i64, !dbg !1184
  %mul3 = shl nuw nsw i64 %conv2, 3, !dbg !1184
  %call4 = tail call i8* @xrealloc(i8* %3, i64 %mul3) #6, !dbg !1184
  store i8* %call4, i8** bitcast (i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20) to i8**), align 8, !dbg !1185
  %.pre = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 17), align 8, !dbg !1186
  br label %if.end, !dbg !1187

if.end:                                           ; preds = %entry, %if.then
  %5 = phi i32 [ %0, %entry ], [ %.pre, %if.then ], !dbg !1186
  %6 = load %struct.page_entry**, %struct.page_entry*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 19), align 8, !dbg !1188
  %idxprom = zext i32 %5 to i64, !dbg !1189
  %arrayidx = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %6, i64 %idxprom, !dbg !1189
  store %struct.page_entry* %p, %struct.page_entry** %arrayidx, align 8, !dbg !1190
  %7 = load i64**, i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20), align 8, !dbg !1191
  %8 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 17), align 8, !dbg !1192
  %inc = add i32 %8, 1, !dbg !1192
  store i32 %inc, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 17), align 8, !dbg !1192
  %idxprom5 = zext i32 %8 to i64, !dbg !1193
  %arrayidx6 = getelementptr inbounds i64*, i64** %7, i64 %idxprom5, !dbg !1193
  store i64* null, i64** %arrayidx6, align 8, !dbg !1194
  ret void, !dbg !1195
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @push_depth(i32 %i) unnamed_addr #0 !dbg !1196 {
entry:
  call void @llvm.dbg.value(metadata i32 %i, metadata !1200, metadata !DIExpression()), !dbg !1201
  %0 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 14), align 8, !dbg !1202
  %1 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 15), align 4, !dbg !1204
  %cmp = icmp ult i32 %0, %1, !dbg !1205
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then, !dbg !1206

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i32*, i32** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 16), align 8, !dbg !1207
  br label %if.end, !dbg !1206

if.then:                                          ; preds = %entry
  %mul = shl i32 %1, 1, !dbg !1208
  store i32 %mul, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 15), align 4, !dbg !1208
  %2 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 16) to i8**), align 8, !dbg !1210
  %conv = zext i32 %mul to i64, !dbg !1210
  %mul1 = shl nuw nsw i64 %conv, 2, !dbg !1210
  %call = tail call i8* @xrealloc(i8* %2, i64 %mul1) #6, !dbg !1210
  store i8* %call, i8** bitcast (i32** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 16) to i8**), align 8, !dbg !1211
  %3 = bitcast i8* %call to i32*, !dbg !1212
  %.pre1 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 14), align 8, !dbg !1213
  br label %if.end, !dbg !1212

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %4 = phi i32 [ %0, %entry.if.end_crit_edge ], [ %.pre1, %if.then ], !dbg !1213
  %5 = phi i32* [ %.pre, %entry.if.end_crit_edge ], [ %3, %if.then ], !dbg !1207
  %inc = add i32 %4, 1, !dbg !1213
  store i32 %inc, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 14), align 8, !dbg !1213
  %idxprom = zext i32 %4 to i64, !dbg !1214
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !1214
  store i32 %i, i32* %arrayidx, align 4, !dbg !1215
  ret void, !dbg !1216
}

; Function Attrs: nounwind uwtable
define dso_local void @gt_ggc_m_S(i8* %p) local_unnamed_addr #4 !dbg !1217 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1221, metadata !DIExpression()), !dbg !1227
  %tobool = icmp eq i8* %p, null, !dbg !1228
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !1230

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc i32 @ggc_allocated_p(i8* nonnull %p) #7, !dbg !1231
  %tobool2 = icmp eq i32 %call, 0, !dbg !1231
  br i1 %tobool2, label %cleanup, label %if.end, !dbg !1232

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call fastcc %struct.page_entry* @lookup_page_table_entry(i8* nonnull %p) #7, !dbg !1233
  call void @llvm.dbg.value(metadata %struct.page_entry* %call3, metadata !1222, metadata !DIExpression()), !dbg !1227
  %tobool4 = icmp eq %struct.page_entry* %call3, null, !dbg !1234
  br i1 %tobool4, label %cond.true, label %cond.end, !dbg !1234

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1294, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1234
  br label %cond.end, !dbg !1234

cond.end:                                         ; preds = %if.end, %cond.true
  %page = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call3, i64 0, i32 3, !dbg !1235
  %0 = bitcast i8** %page to i64*, !dbg !1235
  %1 = load i64, i64* %0, align 8, !dbg !1235
  %sub.ptr.lhs.cast = ptrtoint i8* %p to i64, !dbg !1236
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %1, !dbg !1236
  %order = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call3, i64 0, i32 9, !dbg !1237
  %2 = load i8, i8* %order, align 2, !dbg !1237
  %idxprom = zext i8 %2 to i64, !dbg !1238
  %arrayidx = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %idxprom, !dbg !1238
  %3 = load i64, i64* %arrayidx, align 8, !dbg !1238
  %rem = urem i64 %sub.ptr.sub, %3, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %rem, metadata !1226, metadata !DIExpression()), !dbg !1227
  switch i64 %rem, label %cond.true7 [
    i64 0, label %if.end11
    i64 28, label %cond.end9
  ], !dbg !1240

cond.true7:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1306, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1241
  br label %cond.end9, !dbg !1241

cond.end9:                                        ; preds = %cond.end, %cond.true7
  %idx.neg = sub i64 0, %rem, !dbg !1244
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 %idx.neg, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1221, metadata !DIExpression()), !dbg !1227
  tail call void @gt_ggc_mx_lang_tree_node(i8* nonnull %add.ptr) #6, !dbg !1245
  br label %cleanup, !dbg !1246

if.end11:                                         ; preds = %cond.end
  %mult = getelementptr inbounds [84 x %struct.anon], [84 x %struct.anon]* @inverse_table, i64 0, i64 %idxprom, i32 0, !dbg !1247
  %4 = load i64, i64* %mult, align 16, !dbg !1247
  %mul = mul i64 %sub.ptr.sub, %4, !dbg !1247
  %shift = getelementptr inbounds [84 x %struct.anon], [84 x %struct.anon]* @inverse_table, i64 0, i64 %idxprom, i32 1, !dbg !1247
  %5 = load i32, i32* %shift, align 8, !dbg !1247
  %sh_prom = zext i32 %5 to i64, !dbg !1247
  %shr = lshr i64 %mul, %sh_prom, !dbg !1247
  %div = lshr i64 %shr, 6, !dbg !1248
  %rem22 = and i64 %shr, 63, !dbg !1249
  %shl = shl i64 1, %rem22, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1225, metadata !DIExpression()), !dbg !1227
  %idxprom24 = and i64 %div, 67108863, !dbg !1251
  %arrayidx25 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call3, i64 0, i32 10, i64 %idxprom24, !dbg !1251
  %6 = load i64, i64* %arrayidx25, align 8, !dbg !1251
  %and = and i64 %6, %shl, !dbg !1253
  %tobool26 = icmp eq i64 %and, 0, !dbg !1253
  br i1 %tobool26, label %if.end28, label %cleanup, !dbg !1254

if.end28:                                         ; preds = %if.end11
  %or = or i64 %6, %shl, !dbg !1255
  store i64 %or, i64* %arrayidx25, align 8, !dbg !1255
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call3, i64 0, i32 7, !dbg !1256
  %7 = load i16, i16* %num_free_objects, align 2, !dbg !1257
  %sub = add i16 %7, -1, !dbg !1257
  store i16 %sub, i16* %num_free_objects, align 2, !dbg !1257
  br label %cleanup, !dbg !1258

cleanup:                                          ; preds = %if.end11, %lor.lhs.false, %entry, %if.end28, %cond.end9
  ret void, !dbg !1259
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ggc_allocated_p(i8* %p) unnamed_addr #0 !dbg !1260 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1264, metadata !DIExpression()), !dbg !1271
  %0 = ptrtoint i8* %p to i64, !dbg !1272
  %and = and i64 %0, -4294967296, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %and, metadata !1270, metadata !DIExpression()), !dbg !1271
  br label %while.cond, !dbg !1274

while.cond:                                       ; preds = %if.end4, %entry
  %table.0.in = phi %struct.page_table_chain** [ getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 2), %entry ], [ %next, %if.end4 ]
  %table.0 = load %struct.page_table_chain*, %struct.page_table_chain** %table.0.in, align 8, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.page_table_chain* %table.0, metadata !1269, metadata !DIExpression()), !dbg !1271
  %cmp = icmp eq %struct.page_table_chain* %table.0, null, !dbg !1275
  br i1 %cmp, label %cleanup.loopexit, label %if.end, !dbg !1278

if.end:                                           ; preds = %while.cond
  %high_bits1 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %table.0, i64 0, i32 1, !dbg !1279
  %1 = load i64, i64* %high_bits1, align 8, !dbg !1279
  %cmp2 = icmp eq i64 %1, %and, !dbg !1281
  br i1 %cmp2, label %while.end, label %if.end4, !dbg !1282

if.end4:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %table.0, i64 0, i32 0, !dbg !1283
  br label %while.cond, !dbg !1274, !llvm.loop !1284

while.end:                                        ; preds = %if.end
  %table.0.lcssa3 = phi %struct.page_table_chain* [ %table.0, %if.end ], !dbg !1271
  call void @llvm.dbg.value(metadata %struct.page_table_chain* %table.0.lcssa3, metadata !1265, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !1271
  %shr = lshr i64 %0, 24, !dbg !1286
  %and6 = and i64 %shr, 255, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %and6, metadata !1267, metadata !DIExpression()), !dbg !1271
  %2 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 4), align 8, !dbg !1287
  call void @llvm.dbg.value(metadata i64 undef, metadata !1268, metadata !DIExpression()), !dbg !1271
  %arrayidx10 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %table.0.lcssa3, i64 0, i32 2, i64 %and6, !dbg !1288
  %3 = load %struct.page_entry**, %struct.page_entry*** %arrayidx10, align 8, !dbg !1288
  %tobool = icmp eq %struct.page_entry** %3, null, !dbg !1288
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !1289

land.rhs:                                         ; preds = %while.end
  call void @llvm.dbg.value(metadata %struct.page_table_chain* %table.0, metadata !1265, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !1271
  %shr7 = lshr i64 %0, %2, !dbg !1287
  %4 = trunc i64 %2 to i32, !dbg !1287
  %sh_prom = sub i32 24, %4, !dbg !1287
  %notmask = shl nsw i32 -1, %sh_prom, !dbg !1287
  %sub8 = xor i32 %notmask, -1, !dbg !1287
  %conv = sext i32 %sub8 to i64, !dbg !1287
  %and9 = and i64 %shr7, %conv, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %and9, metadata !1268, metadata !DIExpression()), !dbg !1271
  %arrayidx12 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %3, i64 %and9, !dbg !1290
  %5 = load %struct.page_entry*, %struct.page_entry** %arrayidx12, align 8, !dbg !1290
  %tobool13 = icmp ne %struct.page_entry* %5, null, !dbg !1289
  %phitmp = zext i1 %tobool13 to i32
  br label %land.end

land.end:                                         ; preds = %while.end, %land.rhs
  %6 = phi i32 [ 0, %while.end ], [ %phitmp, %land.rhs ]
  br label %cleanup, !dbg !1291

cleanup.loopexit:                                 ; preds = %while.cond
  br label %cleanup, !dbg !1292

cleanup:                                          ; preds = %cleanup.loopexit, %land.end
  %retval.0 = phi i32 [ %6, %land.end ], [ 0, %cleanup.loopexit ], !dbg !1271
  ret i32 %retval.0, !dbg !1292
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.page_entry* @lookup_page_table_entry(i8* %p) unnamed_addr #0 !dbg !1293 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1297, metadata !DIExpression()), !dbg !1303
  %0 = ptrtoint i8* %p to i64, !dbg !1304
  %and = and i64 %0, -4294967296, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %and, metadata !1302, metadata !DIExpression()), !dbg !1303
  br label %while.cond, !dbg !1306

while.cond:                                       ; preds = %while.body, %entry
  %table.0.in = phi %struct.page_table_chain** [ getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 2), %entry ], [ %next, %while.body ]
  %table.0 = load %struct.page_table_chain*, %struct.page_table_chain** %table.0.in, align 8, !dbg !1303
  call void @llvm.dbg.value(metadata %struct.page_table_chain* %table.0, metadata !1301, metadata !DIExpression()), !dbg !1303
  %high_bits1 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %table.0, i64 0, i32 1, !dbg !1307
  %1 = load i64, i64* %high_bits1, align 8, !dbg !1307
  %cmp = icmp eq i64 %1, %and, !dbg !1308
  br i1 %cmp, label %while.end, label %while.body, !dbg !1306

while.body:                                       ; preds = %while.cond
  %next = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %table.0, i64 0, i32 0, !dbg !1309
  br label %while.cond, !dbg !1306, !llvm.loop !1310

while.end:                                        ; preds = %while.cond
  %table.0.lcssa = phi %struct.page_table_chain* [ %table.0, %while.cond ], !dbg !1303
  call void @llvm.dbg.value(metadata %struct.page_table_chain* %table.0.lcssa, metadata !1298, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !1303
  %shr = lshr i64 %0, 24, !dbg !1311
  %and3 = and i64 %shr, 255, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %and3, metadata !1299, metadata !DIExpression()), !dbg !1303
  %2 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 4), align 8, !dbg !1312
  %shr4 = lshr i64 %0, %2, !dbg !1312
  %3 = trunc i64 %2 to i32, !dbg !1312
  %sh_prom = sub i32 24, %3, !dbg !1312
  %notmask = shl nsw i32 -1, %sh_prom, !dbg !1312
  %sub5 = xor i32 %notmask, -1, !dbg !1312
  %conv = sext i32 %sub5 to i64, !dbg !1312
  %and6 = and i64 %shr4, %conv, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %and6, metadata !1300, metadata !DIExpression()), !dbg !1303
  %arrayidx7 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %table.0.lcssa, i64 0, i32 2, i64 %and3, !dbg !1313
  %4 = load %struct.page_entry**, %struct.page_entry*** %arrayidx7, align 8, !dbg !1313
  %arrayidx8 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %4, i64 %and6, !dbg !1313
  %5 = load %struct.page_entry*, %struct.page_entry** %arrayidx8, align 8, !dbg !1313
  ret %struct.page_entry* %5, !dbg !1314
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local void @gt_ggc_mx_lang_tree_node(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ggc_set_mark(i8* %p) local_unnamed_addr #4 !dbg !1315 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1317, metadata !DIExpression()), !dbg !1322
  %call = tail call fastcc %struct.page_entry* @lookup_page_table_entry(i8* %p) #7, !dbg !1323
  call void @llvm.dbg.value(metadata %struct.page_entry* %call, metadata !1318, metadata !DIExpression()), !dbg !1322
  %tobool = icmp eq %struct.page_entry* %call, null, !dbg !1324
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !1324

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1344, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1324
  br label %cond.end, !dbg !1324

cond.end:                                         ; preds = %entry, %cond.true
  %page = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 3, !dbg !1325
  %0 = bitcast i8** %page to i64*, !dbg !1325
  %1 = load i64, i64* %0, align 8, !dbg !1325
  %sub.ptr.lhs.cast = ptrtoint i8* %p to i64, !dbg !1325
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %1, !dbg !1325
  %order = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 9, !dbg !1325
  %2 = load i8, i8* %order, align 2, !dbg !1325
  %idxprom = zext i8 %2 to i64, !dbg !1325
  %mult = getelementptr inbounds [84 x %struct.anon], [84 x %struct.anon]* @inverse_table, i64 0, i64 %idxprom, i32 0, !dbg !1325
  %3 = load i64, i64* %mult, align 16, !dbg !1325
  %mul = mul i64 %sub.ptr.sub, %3, !dbg !1325
  %shift = getelementptr inbounds [84 x %struct.anon], [84 x %struct.anon]* @inverse_table, i64 0, i64 %idxprom, i32 1, !dbg !1325
  %4 = load i32, i32* %shift, align 8, !dbg !1325
  %sh_prom = zext i32 %4 to i64, !dbg !1325
  %shr = lshr i64 %mul, %sh_prom, !dbg !1325
  %div = lshr i64 %shr, 6, !dbg !1326
  %rem = and i64 %shr, 63, !dbg !1327
  %shl = shl i64 1, %rem, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1321, metadata !DIExpression()), !dbg !1322
  %idxprom6 = and i64 %div, 67108863, !dbg !1329
  %arrayidx7 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 10, i64 %idxprom6, !dbg !1329
  %5 = load i64, i64* %arrayidx7, align 8, !dbg !1329
  %and = and i64 %5, %shl, !dbg !1331
  %tobool8 = icmp eq i64 %and, 0, !dbg !1331
  br i1 %tobool8, label %if.end, label %cleanup, !dbg !1332

if.end:                                           ; preds = %cond.end
  %or = or i64 %5, %shl, !dbg !1333
  store i64 %or, i64* %arrayidx7, align 8, !dbg !1333
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 7, !dbg !1334
  %6 = load i16, i16* %num_free_objects, align 2, !dbg !1335
  %sub = add i16 %6, -1, !dbg !1335
  store i16 %sub, i16* %num_free_objects, align 2, !dbg !1335
  br label %cleanup, !dbg !1336

cleanup:                                          ; preds = %cond.end, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %cond.end ], !dbg !1322
  ret i32 %retval.0, !dbg !1337
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ggc_marked_p(i8* %p) local_unnamed_addr #4 !dbg !1338 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1340, metadata !DIExpression()), !dbg !1345
  %call = tail call fastcc %struct.page_entry* @lookup_page_table_entry(i8* %p) #7, !dbg !1346
  call void @llvm.dbg.value(metadata %struct.page_entry* %call, metadata !1341, metadata !DIExpression()), !dbg !1345
  %tobool = icmp eq %struct.page_entry* %call, null, !dbg !1347
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !1347

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1380, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1347
  br label %cond.end, !dbg !1347

cond.end:                                         ; preds = %entry, %cond.true
  %page = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 3, !dbg !1348
  %0 = bitcast i8** %page to i64*, !dbg !1348
  %1 = load i64, i64* %0, align 8, !dbg !1348
  %sub.ptr.lhs.cast = ptrtoint i8* %p to i64, !dbg !1348
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %1, !dbg !1348
  %order = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 9, !dbg !1348
  %2 = load i8, i8* %order, align 2, !dbg !1348
  %idxprom = zext i8 %2 to i64, !dbg !1348
  %mult = getelementptr inbounds [84 x %struct.anon], [84 x %struct.anon]* @inverse_table, i64 0, i64 %idxprom, i32 0, !dbg !1348
  %3 = load i64, i64* %mult, align 16, !dbg !1348
  %mul = mul i64 %sub.ptr.sub, %3, !dbg !1348
  %shift = getelementptr inbounds [84 x %struct.anon], [84 x %struct.anon]* @inverse_table, i64 0, i64 %idxprom, i32 1, !dbg !1348
  %4 = load i32, i32* %shift, align 8, !dbg !1348
  %sh_prom = zext i32 %4 to i64, !dbg !1348
  %shr = lshr i64 %mul, %sh_prom, !dbg !1348
  %div = lshr i64 %shr, 6, !dbg !1349
  %rem = and i64 %shr, 63, !dbg !1350
  %shl = shl i64 1, %rem, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1344, metadata !DIExpression()), !dbg !1345
  %idxprom6 = and i64 %div, 67108863, !dbg !1352
  %arrayidx7 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 10, i64 %idxprom6, !dbg !1352
  %5 = load i64, i64* %arrayidx7, align 8, !dbg !1352
  %and = and i64 %5, %shl, !dbg !1353
  %cmp = icmp ne i64 %and, 0, !dbg !1354
  %conv8 = zext i1 %cmp to i32, !dbg !1354
  ret i32 %conv8, !dbg !1355
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ggc_get_size(i8* %p) local_unnamed_addr #4 !dbg !1356 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1360, metadata !DIExpression()), !dbg !1362
  %call = tail call fastcc %struct.page_entry* @lookup_page_table_entry(i8* %p) #7, !dbg !1363
  call void @llvm.dbg.value(metadata %struct.page_entry* %call, metadata !1361, metadata !DIExpression()), !dbg !1362
  %order = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 9, !dbg !1364
  %0 = load i8, i8* %order, align 2, !dbg !1364
  %idxprom = zext i8 %0 to i64, !dbg !1364
  %arrayidx = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %idxprom, !dbg !1364
  %1 = load i64, i64* %arrayidx, align 8, !dbg !1364
  ret i64 %1, !dbg !1365
}

; Function Attrs: nounwind uwtable
define dso_local void @ggc_free(i8* %p) local_unnamed_addr #4 !dbg !1366 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1370, metadata !DIExpression()), !dbg !1382
  %call = tail call fastcc %struct.page_entry* @lookup_page_table_entry(i8* %p) #7, !dbg !1383
  call void @llvm.dbg.value(metadata %struct.page_entry* %call, metadata !1371, metadata !DIExpression()), !dbg !1382
  %order1 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 9, !dbg !1384
  %0 = load i8, i8* %order1, align 2, !dbg !1384
  %conv = zext i8 %0 to i64, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1372, metadata !DIExpression()), !dbg !1382
  %arrayidx = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %conv, !dbg !1386
  %1 = load i64, i64* %arrayidx, align 8, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %1, metadata !1373, metadata !DIExpression()), !dbg !1382
  %2 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 5), align 8, !dbg !1387
  %sub = sub i64 %2, %1, !dbg !1387
  store i64 %sub, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 5), align 8, !dbg !1387
  %page = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 3, !dbg !1388
  %3 = bitcast i8** %page to i64*, !dbg !1388
  %4 = load i64, i64* %3, align 8, !dbg !1388
  %sub.ptr.lhs.cast = ptrtoint i8* %p to i64, !dbg !1388
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %4, !dbg !1388
  %mult = getelementptr inbounds [84 x %struct.anon], [84 x %struct.anon]* @inverse_table, i64 0, i64 %conv, i32 0, !dbg !1388
  %5 = load i64, i64* %mult, align 16, !dbg !1388
  %mul = mul i64 %sub.ptr.sub, %5, !dbg !1388
  %shift = getelementptr inbounds [84 x %struct.anon], [84 x %struct.anon]* @inverse_table, i64 0, i64 %conv, i32 1, !dbg !1388
  %6 = load i32, i32* %shift, align 8, !dbg !1388
  %sh_prom = zext i32 %6 to i64, !dbg !1388
  %shr = lshr i64 %mul, %sh_prom, !dbg !1388
  %div = lshr i64 %shr, 6, !dbg !1389
  %rem = and i64 %shr, 63, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %rem, metadata !1377, metadata !DIExpression()), !dbg !1391
  %shl = shl i64 1, %rem, !dbg !1392
  %neg = xor i64 %shl, -1, !dbg !1393
  %idxprom = and i64 %div, 67108863, !dbg !1394
  %arrayidx6 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 10, i64 %idxprom, !dbg !1394
  %7 = load i64, i64* %arrayidx6, align 8, !dbg !1395
  %and = and i64 %7, %neg, !dbg !1395
  store i64 %and, i64* %arrayidx6, align 8, !dbg !1395
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 7, !dbg !1396
  %8 = load i16, i16* %num_free_objects, align 2, !dbg !1397
  %inc = add i16 %8, 1, !dbg !1397
  store i16 %inc, i16* %num_free_objects, align 2, !dbg !1397
  %cmp = icmp eq i16 %8, 0, !dbg !1398
  br i1 %cmp, label %if.then, label %if.end28, !dbg !1399

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 1, !dbg !1400
  %9 = load %struct.page_entry*, %struct.page_entry** %prev, align 8, !dbg !1400
  call void @llvm.dbg.value(metadata %struct.page_entry* %9, metadata !1381, metadata !DIExpression()), !dbg !1401
  %tobool = icmp eq %struct.page_entry* %9, null, !dbg !1402
  br i1 %tobool, label %if.end26, label %land.lhs.true, !dbg !1404

land.lhs.true:                                    ; preds = %if.then
  %num_free_objects10 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %9, i64 0, i32 7, !dbg !1405
  %10 = load i16, i16* %num_free_objects10, align 2, !dbg !1405
  %cmp12 = icmp eq i16 %10, 0, !dbg !1406
  br i1 %cmp12, label %if.then14, label %if.end26, !dbg !1407

if.then14:                                        ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 0, !dbg !1408
  %11 = load %struct.page_entry*, %struct.page_entry** %next, align 8, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.page_entry* %11, metadata !1378, metadata !DIExpression()), !dbg !1401
  %next15 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %9, i64 0, i32 0, !dbg !1410
  store %struct.page_entry* %11, %struct.page_entry** %next15, align 8, !dbg !1411
  %tobool16 = icmp eq %struct.page_entry* %11, null, !dbg !1412
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !1414

if.then17:                                        ; preds = %if.then14
  %arrayidx18 = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 1, i64 %conv, !dbg !1415
  store %struct.page_entry* %9, %struct.page_entry** %arrayidx18, align 8, !dbg !1416
  br label %if.end, !dbg !1415

if.else:                                          ; preds = %if.then14
  %prev19 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %11, i64 0, i32 1, !dbg !1417
  store %struct.page_entry* %9, %struct.page_entry** %prev19, align 8, !dbg !1418
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then17
  %arrayidx20 = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 0, i64 %conv, !dbg !1419
  %12 = bitcast %struct.page_entry** %arrayidx20 to i64*, !dbg !1419
  %13 = load i64, i64* %12, align 8, !dbg !1419
  %14 = bitcast %struct.page_entry* %call to i64*, !dbg !1420
  store i64 %13, i64* %14, align 8, !dbg !1420
  store %struct.page_entry* null, %struct.page_entry** %prev, align 8, !dbg !1421
  %15 = load %struct.page_entry*, %struct.page_entry** %arrayidx20, align 8, !dbg !1422
  %prev24 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %15, i64 0, i32 1, !dbg !1423
  store %struct.page_entry* %call, %struct.page_entry** %prev24, align 8, !dbg !1424
  store %struct.page_entry* %call, %struct.page_entry** %arrayidx20, align 8, !dbg !1425
  br label %if.end26, !dbg !1426

if.end26:                                         ; preds = %if.then, %if.end, %land.lhs.true
  %conv27 = trunc i64 %shr to i16, !dbg !1427
  %next_bit_hint = getelementptr inbounds %struct.page_entry, %struct.page_entry* %call, i64 0, i32 8, !dbg !1428
  store i16 %conv27, i16* %next_bit_hint, align 4, !dbg !1429
  br label %if.end28, !dbg !1430

if.end28:                                         ; preds = %if.end26, %entry
  ret void, !dbg !1431
}

; Function Attrs: nounwind uwtable
define dso_local void @init_ggc() local_unnamed_addr #4 !dbg !1432 {
entry:
  store i64 4096, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1446
  %call = tail call i32 @exact_log2(i64 4096) #6, !dbg !1447
  %conv = sext i32 %call to i64, !dbg !1447
  store i64 %conv, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 4), align 8, !dbg !1448
  %0 = load i64, i64* bitcast (%struct._IO_FILE** @stdout to i64*), align 8, !dbg !1449
  store i64 %0, i64* bitcast (%struct._IO_FILE** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 13) to i64*), align 8, !dbg !1450
  call void @llvm.dbg.value(metadata i32 0, metadata !1436, metadata !DIExpression()), !dbg !1451
  br label %for.cond, !dbg !1452

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.body ], [ 0, %entry ], !dbg !1454
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !1436, metadata !DIExpression()), !dbg !1451
  %exitcond12 = icmp eq i64 %indvars.iv10, 64, !dbg !1455
  br i1 %exitcond12, label %for.cond2.preheader, label %for.body, !dbg !1457

for.cond2.preheader:                              ; preds = %for.cond
  br label %for.cond2, !dbg !1458

for.body:                                         ; preds = %for.cond
  %shl = shl i64 1, %indvars.iv10, !dbg !1459
  %arrayidx = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %indvars.iv10, !dbg !1460
  store i64 %shl, i64* %arrayidx, align 8, !dbg !1461
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !1462
  call void @llvm.dbg.value(metadata i32 undef, metadata !1436, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1451
  br label %for.cond, !dbg !1463, !llvm.loop !1464

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body6
  %indvars.iv6 = phi i64 [ 64, %for.cond2.preheader ], [ %indvars.iv.next7, %for.body6 ], !dbg !1466
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !1436, metadata !DIExpression()), !dbg !1451
  %exitcond9 = icmp eq i64 %indvars.iv6, 84, !dbg !1467
  br i1 %exitcond9, label %for.cond15.preheader, label %for.body6, !dbg !1458

for.cond15.preheader:                             ; preds = %for.cond2
  br label %for.cond15, !dbg !1468

for.body6:                                        ; preds = %for.cond2
  %1 = add nsw i64 %indvars.iv6, -64, !dbg !1470
  %arrayidx8 = getelementptr inbounds [20 x i64], [20 x i64]* @extra_order_size_table, i64 0, i64 %1, !dbg !1471
  %2 = load i64, i64* %arrayidx8, align 8, !dbg !1471
  call void @llvm.dbg.value(metadata i64 %2, metadata !1437, metadata !DIExpression()), !dbg !1472
  %sub9 = add i64 %2, 7, !dbg !1473
  %div = and i64 %sub9, -8, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %div, metadata !1437, metadata !DIExpression()), !dbg !1472
  %arrayidx11 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %indvars.iv6, !dbg !1474
  store i64 %div, i64* %arrayidx11, align 8, !dbg !1475
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !1476
  call void @llvm.dbg.value(metadata i32 undef, metadata !1436, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1451
  br label %for.cond2, !dbg !1477, !llvm.loop !1478

for.cond15:                                       ; preds = %for.cond15.preheader, %if.end
  %indvars.iv3 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next4, %if.end ], !dbg !1480
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !1436, metadata !DIExpression()), !dbg !1451
  %exitcond5 = icmp eq i64 %indvars.iv3, 84, !dbg !1481
  br i1 %exitcond5, label %for.cond35.preheader, label %for.body19, !dbg !1468

for.cond35.preheader:                             ; preds = %for.cond15
  br label %for.cond35, !dbg !1483

for.body19:                                       ; preds = %for.cond15
  %3 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1484
  %arrayidx21 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %indvars.iv3, !dbg !1486
  %4 = load i64, i64* %arrayidx21, align 8, !dbg !1486
  %div22 = udiv i64 %3, %4, !dbg !1487
  %conv23 = trunc i64 %div22 to i32, !dbg !1488
  %arrayidx25 = getelementptr inbounds [84 x i32], [84 x i32]* @objects_per_page_table, i64 0, i64 %indvars.iv3, !dbg !1489
  %cmp28 = icmp eq i32 %conv23, 0, !dbg !1490
  br i1 %cmp28, label %if.then, label %if.end, !dbg !1492

if.then:                                          ; preds = %for.body19
  br label %if.end, !dbg !1493

if.end:                                           ; preds = %if.then, %for.body19
  %storemerge = phi i32 [ 1, %if.then ], [ %conv23, %for.body19 ], !dbg !1494
  store i32 %storemerge, i32* %arrayidx25, align 4, !dbg !1494
  %5 = trunc i64 %indvars.iv3 to i32, !dbg !1495
  tail call fastcc void @compute_inverse(i32 %5) #7, !dbg !1495
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !1496
  call void @llvm.dbg.value(metadata i32 undef, metadata !1436, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1451
  br label %for.cond15, !dbg !1497, !llvm.loop !1498

for.cond35:                                       ; preds = %for.cond35.preheader, %cleanup
  %indvars.iv1 = phi i64 [ 64, %for.cond35.preheader ], [ %indvars.iv.next2, %cleanup ], !dbg !1500
  %order.3 = phi i32 [ 64, %for.cond35.preheader ], [ %inc64, %cleanup ], !dbg !1500
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !1436, metadata !DIExpression()), !dbg !1451
  %exitcond = icmp eq i64 %indvars.iv1, 84, !dbg !1501
  br i1 %exitcond, label %for.end65, label %for.body39, !dbg !1483

for.body39:                                       ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %indvars.iv1, !dbg !1502
  %6 = load i64, i64* %arrayidx41, align 8, !dbg !1502
  %conv42 = trunc i64 %6 to i32, !dbg !1502
  call void @llvm.dbg.value(metadata i32 %conv42, metadata !1445, metadata !DIExpression()), !dbg !1503
  %cmp43 = icmp sgt i32 %conv42, 511, !dbg !1504
  br i1 %cmp43, label %cleanup, label %if.end46, !dbg !1506

if.end46:                                         ; preds = %for.body39
  %sext = shl i64 %6, 32, !dbg !1507
  %idxprom47 = ashr exact i64 %sext, 32, !dbg !1507
  %arrayidx48 = getelementptr inbounds [512 x i8], [512 x i8]* @size_lookup, i64 0, i64 %idxprom47, !dbg !1507
  %7 = load i8, i8* %arrayidx48, align 1, !dbg !1507
  call void @llvm.dbg.value(metadata i8 %7, metadata !1441, metadata !DIExpression()), !dbg !1503
  %conv57 = trunc i32 %order.3 to i8, !dbg !1509
  %sext13 = shl i64 %6, 32, !dbg !1511
  %8 = ashr exact i64 %sext13, 32, !dbg !1511
  br label %for.cond50, !dbg !1511

for.cond50:                                       ; preds = %for.body56, %if.end46
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body56 ], [ %8, %if.end46 ], !dbg !1503
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1445, metadata !DIExpression()), !dbg !1503
  %arrayidx52 = getelementptr inbounds [512 x i8], [512 x i8]* @size_lookup, i64 0, i64 %indvars.iv, !dbg !1512
  %9 = load i8, i8* %arrayidx52, align 1, !dbg !1512
  %cmp54 = icmp eq i8 %7, %9, !dbg !1513
  br i1 %cmp54, label %for.body56, label %cleanup.loopexit, !dbg !1514

for.body56:                                       ; preds = %for.cond50
  store i8 %conv57, i8* %arrayidx52, align 1, !dbg !1515
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !1516
  call void @llvm.dbg.value(metadata i32 undef, metadata !1445, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1503
  br label %for.cond50, !dbg !1517, !llvm.loop !1518

cleanup.loopexit:                                 ; preds = %for.cond50
  br label %cleanup, !dbg !1520

cleanup:                                          ; preds = %cleanup.loopexit, %for.body39
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !1520
  %inc64 = add nuw nsw i32 %order.3, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %inc64, metadata !1436, metadata !DIExpression()), !dbg !1451
  br label %for.cond35, !dbg !1521, !llvm.loop !1522

for.end65:                                        ; preds = %for.cond35
  store i32 0, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 14), align 8, !dbg !1524
  store i32 10, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 15), align 4, !dbg !1525
  %call68 = tail call i8* @xmalloc(i64 40) #6, !dbg !1526
  store i8* %call68, i8** bitcast (i32** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 16) to i8**), align 8, !dbg !1527
  store i32 0, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 17), align 8, !dbg !1528
  store i32 128, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 18), align 4, !dbg !1529
  %call71 = tail call i8* @xmalloc(i64 1024) #6, !dbg !1530
  store i8* %call71, i8** bitcast (%struct.page_entry*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 19) to i8**), align 8, !dbg !1531
  %10 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 18), align 4, !dbg !1532
  %conv72 = zext i32 %10 to i64, !dbg !1532
  %mul73 = shl nuw nsw i64 %conv72, 3, !dbg !1532
  %call74 = tail call i8* @xmalloc(i64 %mul73) #6, !dbg !1532
  store i8* %call74, i8** bitcast (i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20) to i8**), align 8, !dbg !1533
  ret void, !dbg !1534
}

declare dso_local i32 @exact_log2(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_inverse(i32 %order) unnamed_addr #4 !dbg !1535 {
entry:
  call void @llvm.dbg.value(metadata i32 %order, metadata !1537, metadata !DIExpression()), !dbg !1541
  %idxprom = zext i32 %order to i64, !dbg !1542
  %arrayidx = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %idxprom, !dbg !1542
  %0 = load i64, i64* %arrayidx, align 8, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %0, metadata !1538, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i32 0, metadata !1540, metadata !DIExpression()), !dbg !1541
  br label %while.cond, !dbg !1543

while.cond:                                       ; preds = %while.body, %entry
  %size.0 = phi i64 [ %0, %entry ], [ %shr, %while.body ], !dbg !1541
  %e.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ], !dbg !1541
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !1540, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %size.0, metadata !1538, metadata !DIExpression()), !dbg !1541
  %rem = and i64 %size.0, 1, !dbg !1544
  %cmp = icmp eq i64 %rem, 0, !dbg !1545
  br i1 %cmp, label %while.body, label %while.cond1.preheader, !dbg !1543

while.cond1.preheader:                            ; preds = %while.cond
  %size.0.lcssa = phi i64 [ %size.0, %while.cond ], !dbg !1541
  %e.0.lcssa = phi i32 [ %e.0, %while.cond ], !dbg !1541
  call void @llvm.dbg.value(metadata i64 %size.0.lcssa, metadata !1538, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i32 %e.0.lcssa, metadata !1540, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %size.0.lcssa, metadata !1538, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i32 %e.0.lcssa, metadata !1540, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %size.0.lcssa, metadata !1538, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i32 %e.0.lcssa, metadata !1540, metadata !DIExpression()), !dbg !1541
  br label %while.cond1, !dbg !1546

while.body:                                       ; preds = %while.cond
  %inc = add i32 %e.0, 1, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1540, metadata !DIExpression()), !dbg !1541
  %shr = lshr i64 %size.0, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %shr, metadata !1538, metadata !DIExpression()), !dbg !1541
  br label %while.cond, !dbg !1543, !llvm.loop !1550

while.cond1:                                      ; preds = %while.cond1.preheader, %while.body3
  %inv.0 = phi i64 [ %mul5, %while.body3 ], [ %size.0.lcssa, %while.cond1.preheader ], !dbg !1541
  call void @llvm.dbg.value(metadata i64 %inv.0, metadata !1539, metadata !DIExpression()), !dbg !1541
  %mul = mul i64 %inv.0, %size.0.lcssa, !dbg !1552
  %cmp2 = icmp eq i64 %mul, 1, !dbg !1553
  br i1 %cmp2, label %while.end6, label %while.body3, !dbg !1546

while.body3:                                      ; preds = %while.cond1
  %sub = sub i64 2, %mul, !dbg !1554
  %mul5 = mul i64 %inv.0, %sub, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %mul5, metadata !1539, metadata !DIExpression()), !dbg !1541
  br label %while.cond1, !dbg !1546, !llvm.loop !1556

while.end6:                                       ; preds = %while.cond1
  %inv.0.lcssa = phi i64 [ %inv.0, %while.cond1 ], !dbg !1541
  call void @llvm.dbg.value(metadata i64 %inv.0.lcssa, metadata !1539, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %inv.0.lcssa, metadata !1539, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %inv.0.lcssa, metadata !1539, metadata !DIExpression()), !dbg !1541
  %mult = getelementptr inbounds [84 x %struct.anon], [84 x %struct.anon]* @inverse_table, i64 0, i64 %idxprom, i32 0, !dbg !1558
  store i64 %inv.0.lcssa, i64* %mult, align 16, !dbg !1559
  %shift = getelementptr inbounds [84 x %struct.anon], [84 x %struct.anon]* @inverse_table, i64 0, i64 %idxprom, i32 1, !dbg !1560
  store i32 %e.0.lcssa, i32* %shift, align 8, !dbg !1561
  ret void, !dbg !1562
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.alloc_zone* @new_ggc_zone(i8* %name) local_unnamed_addr #4 !dbg !1563 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !1570, metadata !DIExpression()), !dbg !1571
  ret %struct.alloc_zone* null, !dbg !1572
}

; Function Attrs: nounwind uwtable
define dso_local void @destroy_ggc_zone(%struct.alloc_zone* %zone) local_unnamed_addr #4 !dbg !1573 {
entry:
  call void @llvm.dbg.value(metadata %struct.alloc_zone* %zone, metadata !1577, metadata !DIExpression()), !dbg !1578
  ret void, !dbg !1579
}

; Function Attrs: nounwind uwtable
define dso_local void @ggc_collect() local_unnamed_addr #4 !dbg !1580 {
entry:
  ret void, !dbg !1581
}

; Function Attrs: nounwind uwtable
define dso_local void @ggc_print_statistics() local_unnamed_addr #4 !dbg !1582 {
entry:
  %stats = alloca %struct.ggc_statistics, align 4
  %0 = bitcast %struct.ggc_statistics* %stats to i8*, !dbg !1597
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !1597
  call void @llvm.dbg.value(metadata i64 0, metadata !1589, metadata !DIExpression()), !dbg !1598
  %call = call i8* @memset(i8* nonnull %0, i32 0, i64 4) #6, !dbg !1599
  store i64 0, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 6), align 8, !dbg !1600
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1601
  call void @llvm.dbg.value(metadata %struct.ggc_statistics* %stats, metadata !1584, metadata !DIExpression(DW_OP_deref)), !dbg !1598
  call void @ggc_print_common_statistics(%struct._IO_FILE* %1, %struct.ggc_statistics* nonnull %stats) #6, !dbg !1602
  call fastcc void @release_pages() #7, !dbg !1603
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1604
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1605
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1606
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1607
  call void @llvm.dbg.value(metadata i32 0, metadata !1588, metadata !DIExpression()), !dbg !1598
  br label %for.cond, !dbg !1608

for.cond:                                         ; preds = %cleanup, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %entry ], !dbg !1598
  %total_overhead.0 = phi i64 [ %total_overhead.1, %cleanup ], [ 0, %entry ], !dbg !1598
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1588, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i64 %total_overhead.0, metadata !1589, metadata !DIExpression()), !dbg !1598
  %exitcond = icmp eq i64 %indvars.iv, 84, !dbg !1609
  br i1 %exitcond, label %for.end101, label %for.body, !dbg !1610

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 0, i64 %indvars.iv, !dbg !1611
  %4 = load %struct.page_entry*, %struct.page_entry** %arrayidx, align 8, !dbg !1611
  %tobool = icmp eq %struct.page_entry* %4, null, !dbg !1611
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1613

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1614
  %arrayidx14 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %indvars.iv, !dbg !1615
  br label %for.cond6, !dbg !1619

for.cond6:                                        ; preds = %for.body8, %if.end
  %p.0 = phi %struct.page_entry* [ %4, %if.end ], [ %p.0.pre, %for.body8 ], !dbg !1620
  %overhead.0 = phi i64 [ 0, %if.end ], [ %add27, %for.body8 ], !dbg !1614
  %in_use.0 = phi i64 [ 0, %if.end ], [ %add15, %for.body8 ], !dbg !1614
  %allocated.0 = phi i64 [ 0, %if.end ], [ %add, %for.body8 ], !dbg !1614
  call void @llvm.dbg.value(metadata %struct.page_entry* %p.0, metadata !1590, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %allocated.0, metadata !1594, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %in_use.0, metadata !1595, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %overhead.0, metadata !1596, metadata !DIExpression()), !dbg !1614
  %tobool7 = icmp eq %struct.page_entry* %p.0, null, !dbg !1621
  br i1 %tobool7, label %for.end, label %for.body8, !dbg !1621

for.body8:                                        ; preds = %for.cond6
  %bytes = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 2, !dbg !1622
  %5 = load i64, i64* %bytes, align 8, !dbg !1622
  %add = add i64 %allocated.0, %5, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %add, metadata !1594, metadata !DIExpression()), !dbg !1614
  %order = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 9, !dbg !1624
  %6 = load i8, i8* %order, align 2, !dbg !1624
  %idxprom10 = zext i8 %6 to i64, !dbg !1624
  %arrayidx11 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %idxprom10, !dbg !1624
  %7 = load i64, i64* %arrayidx11, align 8, !dbg !1624
  %div = udiv i64 %5, %7, !dbg !1624
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 7, !dbg !1625
  %8 = load i16, i16* %num_free_objects, align 2, !dbg !1625
  %conv12 = zext i16 %8 to i64, !dbg !1626
  %sub = sub i64 %div, %conv12, !dbg !1627
  %9 = load i64, i64* %arrayidx14, align 8, !dbg !1628
  %mul = mul i64 %sub, %9, !dbg !1629
  %add15 = add i64 %in_use.0, %mul, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %add15, metadata !1595, metadata !DIExpression()), !dbg !1614
  %sub23 = add i64 %div, 64, !dbg !1631
  %div24 = lshr i64 %sub23, 6, !dbg !1631
  %mul25 = shl nuw nsw i64 %div24, 3, !dbg !1631
  %add26 = add nuw nsw i64 %mul25, 56, !dbg !1632
  %add27 = add i64 %overhead.0, %add26, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %add27, metadata !1596, metadata !DIExpression()), !dbg !1614
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 0, !dbg !1634
  %p.0.pre = load %struct.page_entry*, %struct.page_entry** %next, align 8, !dbg !1620
  br label %for.cond6, !dbg !1635, !llvm.loop !1636

for.end:                                          ; preds = %for.cond6
  %overhead.0.lcssa = phi i64 [ %overhead.0, %for.cond6 ], !dbg !1614
  %in_use.0.lcssa = phi i64 [ %in_use.0, %for.cond6 ], !dbg !1614
  %allocated.0.lcssa = phi i64 [ %allocated.0, %for.cond6 ], !dbg !1614
  call void @llvm.dbg.value(metadata i64 %overhead.0.lcssa, metadata !1596, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %in_use.0.lcssa, metadata !1595, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %allocated.0.lcssa, metadata !1594, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %overhead.0.lcssa, metadata !1596, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %in_use.0.lcssa, metadata !1595, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %allocated.0.lcssa, metadata !1594, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %overhead.0.lcssa, metadata !1596, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %in_use.0.lcssa, metadata !1595, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %allocated.0.lcssa, metadata !1594, metadata !DIExpression()), !dbg !1614
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1638
  %11 = load i64, i64* %arrayidx14, align 8, !dbg !1639
  %cmp30 = icmp ult i64 %allocated.0.lcssa, 10240, !dbg !1640
  br i1 %cmp30, label %cond.end38, label %cond.false, !dbg !1640

cond.false:                                       ; preds = %for.end
  %cmp32 = icmp ult i64 %allocated.0.lcssa, 10485760, !dbg !1640
  br i1 %cmp32, label %cond.true34, label %cond.false36, !dbg !1640

cond.true34:                                      ; preds = %cond.false
  %div35 = lshr i64 %allocated.0.lcssa, 10, !dbg !1640
  br label %cond.end38, !dbg !1640

cond.false36:                                     ; preds = %cond.false
  %div37 = lshr i64 %allocated.0.lcssa, 20, !dbg !1640
  br label %cond.end38, !dbg !1640

cond.end38:                                       ; preds = %cond.true34, %cond.false36, %for.end
  %cond39 = phi i64 [ %allocated.0.lcssa, %for.end ], [ %div35, %cond.true34 ], [ %div37, %cond.false36 ], !dbg !1640
  br i1 %cmp30, label %cond.end47, label %cond.false43, !dbg !1641

cond.false43:                                     ; preds = %cond.end38
  %cmp44 = icmp ult i64 %allocated.0.lcssa, 10485760, !dbg !1641
  %cond46 = select i1 %cmp44, i32 107, i32 77, !dbg !1641
  br label %cond.end47, !dbg !1641

cond.end47:                                       ; preds = %cond.end38, %cond.false43
  %cond48 = phi i32 [ %cond46, %cond.false43 ], [ 32, %cond.end38 ], !dbg !1641
  %cmp49 = icmp ult i64 %in_use.0.lcssa, 10240, !dbg !1642
  br i1 %cmp49, label %cond.end61, label %cond.false52, !dbg !1642

cond.false52:                                     ; preds = %cond.end47
  %cmp53 = icmp ult i64 %in_use.0.lcssa, 10485760, !dbg !1642
  br i1 %cmp53, label %cond.true55, label %cond.false57, !dbg !1642

cond.true55:                                      ; preds = %cond.false52
  %div56 = lshr i64 %in_use.0.lcssa, 10, !dbg !1642
  br label %cond.end61, !dbg !1642

cond.false57:                                     ; preds = %cond.false52
  %div58 = lshr i64 %in_use.0.lcssa, 20, !dbg !1642
  br label %cond.end61, !dbg !1642

cond.end61:                                       ; preds = %cond.true55, %cond.false57, %cond.end47
  %cond62 = phi i64 [ %in_use.0.lcssa, %cond.end47 ], [ %div56, %cond.true55 ], [ %div58, %cond.false57 ], !dbg !1642
  br i1 %cmp49, label %cond.end70, label %cond.false66, !dbg !1643

cond.false66:                                     ; preds = %cond.end61
  %cmp67 = icmp ult i64 %in_use.0.lcssa, 10485760, !dbg !1643
  %cond69 = select i1 %cmp67, i32 107, i32 77, !dbg !1643
  br label %cond.end70, !dbg !1643

cond.end70:                                       ; preds = %cond.end61, %cond.false66
  %cond71 = phi i32 [ %cond69, %cond.false66 ], [ 32, %cond.end61 ], !dbg !1643
  %cmp72 = icmp ult i64 %overhead.0.lcssa, 10240, !dbg !1644
  br i1 %cmp72, label %cond.end84, label %cond.false75, !dbg !1644

cond.false75:                                     ; preds = %cond.end70
  %cmp76 = icmp ult i64 %overhead.0.lcssa, 10485760, !dbg !1644
  br i1 %cmp76, label %cond.true78, label %cond.false80, !dbg !1644

cond.true78:                                      ; preds = %cond.false75
  %div79 = lshr i64 %overhead.0.lcssa, 10, !dbg !1644
  br label %cond.end84, !dbg !1644

cond.false80:                                     ; preds = %cond.false75
  %div81 = lshr i64 %overhead.0.lcssa, 20, !dbg !1644
  br label %cond.end84, !dbg !1644

cond.end84:                                       ; preds = %cond.true78, %cond.false80, %cond.end70
  %cond85 = phi i64 [ %overhead.0.lcssa, %cond.end70 ], [ %div79, %cond.true78 ], [ %div81, %cond.false80 ], !dbg !1644
  br i1 %cmp72, label %cond.end93, label %cond.false89, !dbg !1645

cond.false89:                                     ; preds = %cond.end84
  %cmp90 = icmp ult i64 %overhead.0.lcssa, 10485760, !dbg !1645
  %cond92 = select i1 %cmp90, i32 107, i32 77, !dbg !1645
  br label %cond.end93, !dbg !1645

cond.end93:                                       ; preds = %cond.end84, %cond.false89
  %cond94 = phi i32 [ %cond92, %cond.false89 ], [ 32, %cond.end84 ], !dbg !1645
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 %11, i64 %cond39, i32 %cond48, i64 %cond62, i32 %cond71, i64 %cond85, i32 %cond94) #6, !dbg !1646
  %add96 = add i64 %total_overhead.0, %overhead.0.lcssa, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %add96, metadata !1589, metadata !DIExpression()), !dbg !1598
  br label %cleanup, !dbg !1648

cleanup:                                          ; preds = %for.body, %cond.end93
  %total_overhead.1 = phi i64 [ %add96, %cond.end93 ], [ %total_overhead.0, %for.body ], !dbg !1598
  call void @llvm.dbg.value(metadata i64 %total_overhead.1, metadata !1589, metadata !DIExpression()), !dbg !1598
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i32 undef, metadata !1588, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1598
  br label %for.cond, !dbg !1650, !llvm.loop !1651

for.end101:                                       ; preds = %for.cond
  %total_overhead.0.lcssa = phi i64 [ %total_overhead.0, %for.cond ], !dbg !1598
  call void @llvm.dbg.value(metadata i64 %total_overhead.0.lcssa, metadata !1589, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i64 %total_overhead.0.lcssa, metadata !1589, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i64 %total_overhead.0.lcssa, metadata !1589, metadata !DIExpression()), !dbg !1598
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1653
  %13 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 7), align 8, !dbg !1654
  %cmp102 = icmp ult i64 %13, 10240, !dbg !1654
  br i1 %cmp102, label %cond.end114, label %cond.false105, !dbg !1654

cond.false105:                                    ; preds = %for.end101
  %cmp106 = icmp ult i64 %13, 10485760, !dbg !1654
  br i1 %cmp106, label %cond.true108, label %cond.false110, !dbg !1654

cond.true108:                                     ; preds = %cond.false105
  %div109 = lshr i64 %13, 10, !dbg !1654
  br label %cond.end114, !dbg !1654

cond.false110:                                    ; preds = %cond.false105
  %div111 = lshr i64 %13, 20, !dbg !1654
  br label %cond.end114, !dbg !1654

cond.end114:                                      ; preds = %cond.true108, %cond.false110, %for.end101
  %cond115 = phi i64 [ %13, %for.end101 ], [ %div109, %cond.true108 ], [ %div111, %cond.false110 ], !dbg !1654
  br i1 %cmp102, label %cond.end123, label %cond.false119, !dbg !1655

cond.false119:                                    ; preds = %cond.end114
  %cmp120 = icmp ult i64 %13, 10485760, !dbg !1655
  %cond122 = select i1 %cmp120, i32 107, i32 77, !dbg !1655
  br label %cond.end123, !dbg !1655

cond.end123:                                      ; preds = %cond.end114, %cond.false119
  %cond124 = phi i32 [ %cond122, %cond.false119 ], [ 32, %cond.end114 ], !dbg !1655
  %14 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 5), align 8, !dbg !1656
  %cmp125 = icmp ult i64 %14, 10240, !dbg !1656
  br i1 %cmp125, label %cond.end137, label %cond.false128, !dbg !1656

cond.false128:                                    ; preds = %cond.end123
  %cmp129 = icmp ult i64 %14, 10485760, !dbg !1656
  br i1 %cmp129, label %cond.true131, label %cond.false133, !dbg !1656

cond.true131:                                     ; preds = %cond.false128
  %div132 = lshr i64 %14, 10, !dbg !1656
  br label %cond.end137, !dbg !1656

cond.false133:                                    ; preds = %cond.false128
  %div134 = lshr i64 %14, 20, !dbg !1656
  br label %cond.end137, !dbg !1656

cond.end137:                                      ; preds = %cond.true131, %cond.false133, %cond.end123
  %cond138 = phi i64 [ %14, %cond.end123 ], [ %div132, %cond.true131 ], [ %div134, %cond.false133 ], !dbg !1656
  br i1 %cmp125, label %cond.end146, label %cond.false142, !dbg !1657

cond.false142:                                    ; preds = %cond.end137
  %cmp143 = icmp ult i64 %14, 10485760, !dbg !1657
  %cond145 = select i1 %cmp143, i32 107, i32 77, !dbg !1657
  br label %cond.end146, !dbg !1657

cond.end146:                                      ; preds = %cond.end137, %cond.false142
  %cond147 = phi i32 [ %cond145, %cond.false142 ], [ 32, %cond.end137 ], !dbg !1657
  %cmp148 = icmp ult i64 %total_overhead.0.lcssa, 10240, !dbg !1658
  br i1 %cmp148, label %cond.end160, label %cond.false151, !dbg !1658

cond.false151:                                    ; preds = %cond.end146
  %cmp152 = icmp ult i64 %total_overhead.0.lcssa, 10485760, !dbg !1658
  br i1 %cmp152, label %cond.true154, label %cond.false156, !dbg !1658

cond.true154:                                     ; preds = %cond.false151
  %div155 = lshr i64 %total_overhead.0.lcssa, 10, !dbg !1658
  br label %cond.end160, !dbg !1658

cond.false156:                                    ; preds = %cond.false151
  %div157 = lshr i64 %total_overhead.0.lcssa, 20, !dbg !1658
  br label %cond.end160, !dbg !1658

cond.end160:                                      ; preds = %cond.true154, %cond.false156, %cond.end146
  %cond161 = phi i64 [ %total_overhead.0.lcssa, %cond.end146 ], [ %div155, %cond.true154 ], [ %div157, %cond.false156 ], !dbg !1658
  br i1 %cmp148, label %cond.end169, label %cond.false165, !dbg !1659

cond.false165:                                    ; preds = %cond.end160
  %cmp166 = icmp ult i64 %total_overhead.0.lcssa, 10485760, !dbg !1659
  %cond168 = select i1 %cmp166, i32 107, i32 77, !dbg !1659
  br label %cond.end169, !dbg !1659

cond.end169:                                      ; preds = %cond.end160, %cond.false165
  %cond170 = phi i32 [ %cond168, %cond.false165 ], [ 32, %cond.end160 ], !dbg !1659
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 %cond115, i32 %cond124, i64 %cond138, i32 %cond147, i64 %cond161, i32 %cond170) #6, !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !1661
  ret void, !dbg !1661
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

declare dso_local void @ggc_print_common_statistics(%struct._IO_FILE*, %struct.ggc_statistics*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @release_pages() unnamed_addr #4 !dbg !1662 {
entry:
  br label %while.cond, !dbg !1669

while.cond:                                       ; preds = %if.end, %entry
  %pp.0 = phi %struct.page_entry** [ getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 11), %entry ], [ %pp.1, %if.end ], !dbg !1670
  call void @llvm.dbg.value(metadata %struct.page_entry** %pp.0, metadata !1664, metadata !DIExpression()), !dbg !1671
  %0 = load %struct.page_entry*, %struct.page_entry** %pp.0, align 8, !dbg !1672
  call void @llvm.dbg.value(metadata %struct.page_entry* %0, metadata !1665, metadata !DIExpression()), !dbg !1671
  %cmp = icmp eq %struct.page_entry* %0, null, !dbg !1673
  br i1 %cmp, label %while.cond3.preheader, label %while.body, !dbg !1669

while.cond3.preheader:                            ; preds = %while.cond
  br label %while.cond3, !dbg !1674

while.body:                                       ; preds = %while.cond
  %group = getelementptr inbounds %struct.page_entry, %struct.page_entry* %0, i64 0, i32 4, !dbg !1675
  %1 = load %struct.page_group*, %struct.page_group** %group, align 8, !dbg !1675
  %in_use = getelementptr inbounds %struct.page_group, %struct.page_group* %1, i64 0, i32 3, !dbg !1677
  %2 = load i32, i32* %in_use, align 8, !dbg !1677
  %cmp1 = icmp eq i32 %2, 0, !dbg !1678
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %0, i64 0, i32 0, !dbg !1679
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1680

if.then:                                          ; preds = %while.body
  %3 = bitcast %struct.page_entry* %0 to i64*, !dbg !1681
  %4 = load i64, i64* %3, align 8, !dbg !1681
  %5 = bitcast %struct.page_entry** %pp.0 to i64*, !dbg !1683
  store i64 %4, i64* %5, align 8, !dbg !1683
  %6 = bitcast %struct.page_entry* %0 to i8*, !dbg !1684
  tail call void @free(i8* nonnull %6) #6, !dbg !1685
  br label %if.end, !dbg !1686

if.end:                                           ; preds = %while.body, %if.then
  %pp.1 = phi %struct.page_entry** [ %pp.0, %if.then ], [ %next, %while.body ], !dbg !1671
  call void @llvm.dbg.value(metadata %struct.page_entry** %pp.1, metadata !1664, metadata !DIExpression()), !dbg !1671
  br label %while.cond, !dbg !1669, !llvm.loop !1687

while.cond3:                                      ; preds = %while.cond3.preheader, %if.end12
  %gp.0 = phi %struct.page_group** [ %gp.1, %if.end12 ], [ getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 12), %while.cond3.preheader ], !dbg !1689
  call void @llvm.dbg.value(metadata %struct.page_group** %gp.0, metadata !1666, metadata !DIExpression()), !dbg !1671
  %7 = load %struct.page_group*, %struct.page_group** %gp.0, align 8, !dbg !1690
  call void @llvm.dbg.value(metadata %struct.page_group* %7, metadata !1668, metadata !DIExpression()), !dbg !1671
  %cmp4 = icmp eq %struct.page_group* %7, null, !dbg !1691
  br i1 %cmp4, label %while.end13, label %while.body5, !dbg !1674

while.body5:                                      ; preds = %while.cond3
  %in_use6 = getelementptr inbounds %struct.page_group, %struct.page_group* %7, i64 0, i32 3, !dbg !1692
  %8 = load i32, i32* %in_use6, align 8, !dbg !1692
  %cmp7 = icmp eq i32 %8, 0, !dbg !1694
  %next9 = getelementptr inbounds %struct.page_group, %struct.page_group* %7, i64 0, i32 0, !dbg !1695
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !1696

if.then8:                                         ; preds = %while.body5
  %9 = bitcast %struct.page_group* %7 to i64*, !dbg !1697
  %10 = load i64, i64* %9, align 8, !dbg !1697
  %11 = bitcast %struct.page_group** %gp.0 to i64*, !dbg !1699
  store i64 %10, i64* %11, align 8, !dbg !1699
  %alloc_size = getelementptr inbounds %struct.page_group, %struct.page_group* %7, i64 0, i32 2, !dbg !1700
  %12 = load i64, i64* %alloc_size, align 8, !dbg !1700
  %13 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 7), align 8, !dbg !1701
  %sub = sub i64 %13, %12, !dbg !1701
  store i64 %sub, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 7), align 8, !dbg !1701
  %allocation = getelementptr inbounds %struct.page_group, %struct.page_group* %7, i64 0, i32 1, !dbg !1702
  %14 = load i8*, i8** %allocation, align 8, !dbg !1702
  tail call void @free(i8* %14) #6, !dbg !1703
  br label %if.end12, !dbg !1704

if.end12:                                         ; preds = %while.body5, %if.then8
  %gp.1 = phi %struct.page_group** [ %gp.0, %if.then8 ], [ %next9, %while.body5 ], !dbg !1671
  call void @llvm.dbg.value(metadata %struct.page_group** %gp.1, metadata !1666, metadata !DIExpression()), !dbg !1671
  br label %while.cond3, !dbg !1674, !llvm.loop !1705

while.end13:                                      ; preds = %while.cond3
  ret void, !dbg !1707
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.ggc_pch_data* @init_ggc_pch() local_unnamed_addr #4 !dbg !1708 {
entry:
  %call = tail call i8* @xcalloc(i64 1, i64 1680) #6, !dbg !1711
  %0 = bitcast i8* %call to %struct.ggc_pch_data*, !dbg !1711
  ret %struct.ggc_pch_data* %0, !dbg !1712
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ggc_pch_count_object(%struct.ggc_pch_data* %d, i8* %x, i64 %size, i8 zeroext %is_string, i32 %type) local_unnamed_addr #4 !dbg !1713 {
entry:
  call void @llvm.dbg.value(metadata %struct.ggc_pch_data* %d, metadata !1717, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %x, metadata !1718, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %size, metadata !1719, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 %is_string, metadata !1720, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i32 %type, metadata !1721, metadata !DIExpression()), !dbg !1723
  %cmp = icmp ult i64 %size, 512, !dbg !1724
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !1726

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !1727

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* @size_lookup, i64 0, i64 %size, !dbg !1729
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1729
  %.pre = zext i8 %0 to i64, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %.pre, metadata !1722, metadata !DIExpression()), !dbg !1723
  br label %if.end, !dbg !1731

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %order.0 = phi i32 [ %inc, %while.body ], [ 10, %while.cond.preheader ], !dbg !1732
  call void @llvm.dbg.value(metadata i32 %order.0, metadata !1722, metadata !DIExpression()), !dbg !1723
  %idxprom = zext i32 %order.0 to i64, !dbg !1733
  %arrayidx1 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %idxprom, !dbg !1733
  %1 = load i64, i64* %arrayidx1, align 8, !dbg !1733
  %cmp2 = icmp ult i64 %1, %size, !dbg !1734
  br i1 %cmp2, label %while.body, label %if.end.loopexit, !dbg !1727

while.body:                                       ; preds = %while.cond
  %inc = add i32 %order.0, 1, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1722, metadata !DIExpression()), !dbg !1723
  br label %while.cond, !dbg !1727, !llvm.loop !1736

if.end.loopexit:                                  ; preds = %while.cond
  %idxprom.lcssa = phi i64 [ %idxprom, %while.cond ], !dbg !1733
  call void @llvm.dbg.value(metadata i32 %order.0, metadata !1722, metadata !DIExpression()), !dbg !1723
  br label %if.end, !dbg !1730

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %idxprom5.pre-phi = phi i64 [ %idxprom.lcssa, %if.end.loopexit ], [ %.pre, %if.then ], !dbg !1730
  %arrayidx6 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %d, i64 0, i32 0, i32 0, i64 %idxprom5.pre-phi, !dbg !1730
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !1737
  %inc7 = add i32 %2, 1, !dbg !1737
  store i32 %inc7, i32* %arrayidx6, align 4, !dbg !1737
  ret void, !dbg !1738
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ggc_pch_total_size(%struct.ggc_pch_data* %d) local_unnamed_addr #4 !dbg !1739 {
entry:
  call void @llvm.dbg.value(metadata %struct.ggc_pch_data* %d, metadata !1743, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i64 0, metadata !1744, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i32 0, metadata !1745, metadata !DIExpression()), !dbg !1746
  %0 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1747
  br label %for.cond, !dbg !1750

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !1746
  %a.0 = phi i64 [ %add7, %for.body ], [ 0, %entry ], !dbg !1746
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1745, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %a.0, metadata !1744, metadata !DIExpression()), !dbg !1746
  %exitcond = icmp eq i64 %indvars.iv, 84, !dbg !1751
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1752

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %d, i64 0, i32 0, i32 0, i64 %indvars.iv, !dbg !1753
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1753
  %conv3 = zext i32 %1 to i64, !dbg !1753
  %arrayidx5 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %indvars.iv, !dbg !1753
  %2 = load i64, i64* %arrayidx5, align 8, !dbg !1753
  %mul = mul i64 %2, %conv3, !dbg !1753
  %add = add i64 %mul, %0, !dbg !1753
  %sub = add i64 %add, -1, !dbg !1753
  %3 = urem i64 %sub, %0, !dbg !1753
  %mul6 = sub i64 %sub, %3, !dbg !1753
  %add7 = add i64 %a.0, %mul6, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %add7, metadata !1744, metadata !DIExpression()), !dbg !1746
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1755
  call void @llvm.dbg.value(metadata i32 undef, metadata !1745, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1746
  br label %for.cond, !dbg !1756, !llvm.loop !1757

for.end:                                          ; preds = %for.cond
  %a.0.lcssa = phi i64 [ %a.0, %for.cond ], !dbg !1746
  call void @llvm.dbg.value(metadata i64 %a.0.lcssa, metadata !1744, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %a.0.lcssa, metadata !1744, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %a.0.lcssa, metadata !1744, metadata !DIExpression()), !dbg !1746
  ret i64 %a.0.lcssa, !dbg !1759
}

; Function Attrs: nounwind uwtable
define dso_local void @ggc_pch_this_base(%struct.ggc_pch_data* %d, i8* %base) local_unnamed_addr #4 !dbg !1760 {
entry:
  call void @llvm.dbg.value(metadata %struct.ggc_pch_data* %d, metadata !1764, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8* %base, metadata !1765, metadata !DIExpression()), !dbg !1768
  %0 = ptrtoint i8* %base to i64, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %0, metadata !1766, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1767, metadata !DIExpression()), !dbg !1768
  br label %for.cond, !dbg !1770

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !1768
  %a.0 = phi i64 [ %add10, %for.body ], [ %0, %entry ], !dbg !1768
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1767, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %a.0, metadata !1766, metadata !DIExpression()), !dbg !1768
  %exitcond = icmp eq i64 %indvars.iv, 84, !dbg !1772
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1774

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %d, i64 0, i32 1, i64 %indvars.iv, !dbg !1775
  store i64 %a.0, i64* %arrayidx, align 8, !dbg !1777
  %arrayidx5 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %d, i64 0, i32 0, i32 0, i64 %indvars.iv, !dbg !1778
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !1778
  %conv6 = zext i32 %1 to i64, !dbg !1778
  %arrayidx8 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %indvars.iv, !dbg !1778
  %2 = load i64, i64* %arrayidx8, align 8, !dbg !1778
  %mul = mul i64 %2, %conv6, !dbg !1778
  %3 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1778
  %add = add i64 %mul, %3, !dbg !1778
  %sub = add i64 %add, -1, !dbg !1778
  %4 = urem i64 %sub, %3, !dbg !1778
  %mul9 = sub i64 %sub, %4, !dbg !1778
  %add10 = add i64 %a.0, %mul9, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %add10, metadata !1766, metadata !DIExpression()), !dbg !1768
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i32 undef, metadata !1767, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1768
  br label %for.cond, !dbg !1781, !llvm.loop !1782

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1784
}

; Function Attrs: nounwind uwtable
define dso_local i8* @ggc_pch_alloc_object(%struct.ggc_pch_data* %d, i8* %x, i64 %size, i8 zeroext %is_string, i32 %type) local_unnamed_addr #4 !dbg !1785 {
entry:
  call void @llvm.dbg.value(metadata %struct.ggc_pch_data* %d, metadata !1789, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8* %x, metadata !1790, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %size, metadata !1791, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %is_string, metadata !1792, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %type, metadata !1793, metadata !DIExpression()), !dbg !1796
  %cmp = icmp ult i64 %size, 512, !dbg !1797
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !1799

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !1800

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* @size_lookup, i64 0, i64 %size, !dbg !1802
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1802
  %.pre = zext i8 %0 to i64, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %.pre, metadata !1794, metadata !DIExpression()), !dbg !1796
  %arrayidx7.phi.trans.insert = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %.pre, !dbg !1796
  %.pre1 = load i64, i64* %arrayidx7.phi.trans.insert, align 8, !dbg !1804
  br label %if.end, !dbg !1805

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %order.0 = phi i32 [ %inc, %while.body ], [ 10, %while.cond.preheader ], !dbg !1806
  call void @llvm.dbg.value(metadata i32 %order.0, metadata !1794, metadata !DIExpression()), !dbg !1796
  %idxprom = zext i32 %order.0 to i64, !dbg !1807
  %arrayidx1 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %idxprom, !dbg !1807
  %1 = load i64, i64* %arrayidx1, align 8, !dbg !1807
  %cmp2 = icmp ult i64 %1, %size, !dbg !1808
  br i1 %cmp2, label %while.body, label %if.end.loopexit, !dbg !1800

while.body:                                       ; preds = %while.cond
  %inc = add i32 %order.0, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1794, metadata !DIExpression()), !dbg !1796
  br label %while.cond, !dbg !1800, !llvm.loop !1810

if.end.loopexit:                                  ; preds = %while.cond
  %idxprom.lcssa = phi i64 [ %idxprom, %while.cond ], !dbg !1807
  %.lcssa = phi i64 [ %1, %while.cond ], !dbg !1807
  call void @llvm.dbg.value(metadata i32 %order.0, metadata !1794, metadata !DIExpression()), !dbg !1796
  br label %if.end, !dbg !1803

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %2 = phi i64 [ %.lcssa, %if.end.loopexit ], [ %.pre1, %if.then ], !dbg !1804
  %idxprom4.pre-phi = phi i64 [ %idxprom.lcssa, %if.end.loopexit ], [ %.pre, %if.then ], !dbg !1803
  %arrayidx5 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %d, i64 0, i32 1, i64 %idxprom4.pre-phi, !dbg !1803
  %3 = bitcast i64* %arrayidx5 to i8**, !dbg !1803
  %4 = load i8*, i8** %3, align 8, !dbg !1803
  call void @llvm.dbg.value(metadata i8* %4, metadata !1795, metadata !DIExpression()), !dbg !1796
  %5 = ptrtoint i8* %4 to i64, !dbg !1811
  %add = add i64 %2, %5, !dbg !1811
  store i64 %add, i64* %arrayidx5, align 8, !dbg !1811
  ret i8* %4, !dbg !1812
}

; Function Attrs: nounwind uwtable
define dso_local void @ggc_pch_prepare_write(%struct.ggc_pch_data* %d, %struct._IO_FILE* %f) local_unnamed_addr #4 !dbg !1813 {
entry:
  call void @llvm.dbg.value(metadata %struct.ggc_pch_data* %d, metadata !1817, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !1818, metadata !DIExpression()), !dbg !1819
  ret void, !dbg !1820
}

; Function Attrs: nounwind uwtable
define dso_local void @ggc_pch_write_object(%struct.ggc_pch_data* %d, %struct._IO_FILE* %f, i8* %x, i8* %newx, i64 %size, i8 zeroext %is_string) local_unnamed_addr #4 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata %struct.ggc_pch_data* %d, metadata !357, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !358, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8* %x, metadata !359, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8* %newx, metadata !360, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %size, metadata !361, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 %is_string, metadata !362, metadata !DIExpression()), !dbg !1821
  %cmp = icmp ult i64 %size, 512, !dbg !1822
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !1824

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !1825

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* @size_lookup, i64 0, i64 %size, !dbg !1827
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1827
  %conv = zext i8 %0 to i32, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %conv, metadata !363, metadata !DIExpression()), !dbg !1821
  br label %if.end, !dbg !1828

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %order.0 = phi i32 [ %inc, %while.body ], [ 10, %while.cond.preheader ], !dbg !1829
  call void @llvm.dbg.value(metadata i32 %order.0, metadata !363, metadata !DIExpression()), !dbg !1821
  %idxprom = zext i32 %order.0 to i64, !dbg !1830
  %arrayidx1 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %idxprom, !dbg !1830
  %1 = load i64, i64* %arrayidx1, align 8, !dbg !1830
  %cmp2 = icmp ult i64 %1, %size, !dbg !1831
  br i1 %cmp2, label %while.body, label %if.end.loopexit, !dbg !1825

while.body:                                       ; preds = %while.cond
  %inc = add i32 %order.0, 1, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %inc, metadata !363, metadata !DIExpression()), !dbg !1821
  br label %while.cond, !dbg !1825, !llvm.loop !1833

if.end.loopexit:                                  ; preds = %while.cond
  %order.0.lcssa = phi i32 [ %order.0, %while.cond ], !dbg !1829
  call void @llvm.dbg.value(metadata i32 %order.0.lcssa, metadata !363, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i32 %order.0.lcssa, metadata !363, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i32 %order.0.lcssa, metadata !363, metadata !DIExpression()), !dbg !1821
  br label %if.end, !dbg !1834

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %order.1 = phi i32 [ %conv, %if.then ], [ %order.0.lcssa, %if.end.loopexit ], !dbg !1836
  call void @llvm.dbg.value(metadata i32 %order.1, metadata !363, metadata !DIExpression()), !dbg !1821
  %call = tail call i64 @fwrite(i8* %x, i64 %size, i64 1, %struct._IO_FILE* %f) #6, !dbg !1834
  %cmp4 = icmp eq i64 %call, 1, !dbg !1837
  br i1 %cmp4, label %if.end7, label %if.then6, !dbg !1838

if.then6:                                         ; preds = %if.end
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !1839
  br label %if.end7, !dbg !1839

if.end7:                                          ; preds = %if.end, %if.then6
  %idxprom8 = zext i32 %order.1 to i64, !dbg !1840
  %arrayidx9 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %idxprom8, !dbg !1840
  %2 = load i64, i64* %arrayidx9, align 8, !dbg !1840
  %cmp10 = icmp eq i64 %2, %size, !dbg !1841
  br i1 %cmp10, label %if.end35, label %if.then12, !dbg !1842

if.then12:                                        ; preds = %if.end7
  %sub = sub i64 %2, %size, !dbg !1843
  call void @llvm.dbg.value(metadata i32 undef, metadata !364, metadata !DIExpression()), !dbg !1844
  %conv16 = and i64 %sub, 4294967295, !dbg !1845
  %cmp17 = icmp ult i64 %conv16, 257, !dbg !1847
  br i1 %cmp17, label %if.then19, label %if.else27, !dbg !1848

if.then19:                                        ; preds = %if.then12
  %call21 = tail call i64 @fwrite(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ggc_pch_write_object.emptyBytes, i64 0, i64 0), i64 1, i64 %conv16, %struct._IO_FILE* %f) #6, !dbg !1849
  %cmp23 = icmp eq i64 %call21, %conv16, !dbg !1852
  br i1 %cmp23, label %if.end35, label %if.then25, !dbg !1853

if.then25:                                        ; preds = %if.then19
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !1854
  br label %if.end35, !dbg !1854

if.else27:                                        ; preds = %if.then12
  %call29 = tail call i32 @fseek(%struct._IO_FILE* %f, i64 %conv16, i32 1) #6, !dbg !1855
  %cmp30 = icmp eq i32 %call29, 0, !dbg !1858
  br i1 %cmp30, label %if.end35, label %if.then32, !dbg !1859

if.then32:                                        ; preds = %if.else27
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !1860
  br label %if.end35, !dbg !1860

if.end35:                                         ; preds = %if.then19, %if.else27, %if.end7, %if.then25, %if.then32
  %arrayidx37 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %d, i64 0, i32 2, i64 %idxprom8, !dbg !1861
  %3 = load i64, i64* %arrayidx37, align 8, !dbg !1862
  %inc38 = add i64 %3, 1, !dbg !1862
  store i64 %inc38, i64* %arrayidx37, align 8, !dbg !1862
  %arrayidx44 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %d, i64 0, i32 0, i32 0, i64 %idxprom8, !dbg !1863
  %4 = load i32, i32* %arrayidx44, align 4, !dbg !1863
  %conv45 = zext i32 %4 to i64, !dbg !1863
  %cmp46 = icmp eq i64 %inc38, %conv45, !dbg !1865
  br i1 %cmp46, label %land.lhs.true, label %if.end62, !dbg !1866

land.lhs.true:                                    ; preds = %if.end35
  %5 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1867
  %sub49 = add i64 %5, -1, !dbg !1867
  %6 = load i64, i64* %arrayidx9, align 8, !dbg !1867
  %mul = mul i64 %6, %inc38, !dbg !1867
  %add = add i64 %sub49, %mul, !dbg !1867
  %rem = urem i64 %add, %5, !dbg !1867
  %7 = xor i64 %rem, -1, !dbg !1867
  %sub57 = add i64 %5, %7, !dbg !1867
  %call58 = tail call i32 @fseek(%struct._IO_FILE* %f, i64 %sub57, i32 1) #6, !dbg !1868
  %cmp59 = icmp eq i32 %call58, 0, !dbg !1869
  br i1 %cmp59, label %if.end62, label %if.then61, !dbg !1870

if.then61:                                        ; preds = %land.lhs.true
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !1871
  br label %if.end62, !dbg !1871

if.end62:                                         ; preds = %land.lhs.true, %if.then61, %if.end35
  ret void, !dbg !1872
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @fatal_error(i8*, ...) local_unnamed_addr #1

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ggc_pch_finish(%struct.ggc_pch_data* %d, %struct._IO_FILE* %f) local_unnamed_addr #4 !dbg !1873 {
entry:
  call void @llvm.dbg.value(metadata %struct.ggc_pch_data* %d, metadata !1875, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !1876, metadata !DIExpression()), !dbg !1877
  %0 = bitcast %struct.ggc_pch_data* %d to i8*, !dbg !1878
  %call = tail call i64 @fwrite(i8* %0, i64 336, i64 1, %struct._IO_FILE* %f) #6, !dbg !1880
  %cmp = icmp eq i64 %call, 1, !dbg !1881
  br i1 %cmp, label %if.end, label %if.then, !dbg !1882

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !1883
  br label %if.end, !dbg !1883

if.end:                                           ; preds = %entry, %if.then
  tail call void @free(i8* %0) #6, !dbg !1884
  ret void, !dbg !1885
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ggc_pch_read(%struct._IO_FILE* %f, i8* %addr) local_unnamed_addr #4 !dbg !1886 {
entry:
  %d = alloca %struct.ggc_pch_ondisk, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !1890, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8* %addr, metadata !1891, metadata !DIExpression()), !dbg !1909
  %0 = bitcast %struct.ggc_pch_ondisk* %d to i8*, !dbg !1910
  call void @llvm.lifetime.start.p0i8(i64 336, i8* nonnull %0) #8, !dbg !1910
  call void @llvm.dbg.value(metadata i8* %addr, metadata !1894, metadata !DIExpression()), !dbg !1909
  %1 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 17), align 8, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %1, metadata !1895, metadata !DIExpression()), !dbg !1909
  tail call fastcc void @clear_marks() #7, !dbg !1912
  %2 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 10), align 8, !dbg !1913
  %tobool = icmp eq i16 %2, 0, !dbg !1913
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1913

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 2328, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1913
  br label %cond.end, !dbg !1913

cond.end:                                         ; preds = %entry, %cond.true
  store i16 1, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 10), align 8, !dbg !1914
  call void @llvm.dbg.value(metadata i32 0, metadata !1893, metadata !DIExpression()), !dbg !1909
  br label %for.cond, !dbg !1915

for.cond:                                         ; preds = %for.inc7, %cond.end
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc7 ], [ 0, %cond.end ], !dbg !1916
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !1893, metadata !DIExpression()), !dbg !1909
  %exitcond4 = icmp eq i64 %indvars.iv2, 84, !dbg !1917
  br i1 %exitcond4, label %for.end8, label %for.body, !dbg !1918

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 0, i64 %indvars.iv2, !dbg !1919
  br label %for.cond3, !dbg !1921

for.cond3:                                        ; preds = %for.body6, %for.body
  %p.0.in = phi %struct.page_entry** [ %arrayidx, %for.body ], [ %next, %for.body6 ]
  %p.0 = load %struct.page_entry*, %struct.page_entry** %p.0.in, align 8, !dbg !1922
  call void @llvm.dbg.value(metadata %struct.page_entry* %p.0, metadata !1897, metadata !DIExpression()), !dbg !1923
  %cmp4 = icmp eq %struct.page_entry* %p.0, null, !dbg !1924
  br i1 %cmp4, label %for.inc7, label %for.body6, !dbg !1926

for.body6:                                        ; preds = %for.cond3
  %3 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 10), align 8, !dbg !1927
  %context_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 6, !dbg !1928
  store i16 %3, i16* %context_depth, align 8, !dbg !1929
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 0, !dbg !1930
  br label %for.cond3, !dbg !1931, !llvm.loop !1932

for.inc7:                                         ; preds = %for.cond3
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i32 undef, metadata !1893, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1909
  br label %for.cond, !dbg !1935, !llvm.loop !1936

for.end8:                                         ; preds = %for.cond
  %call = call i64 @fread(i8* nonnull %0, i64 336, i64 1, %struct._IO_FILE* %f) #6, !dbg !1938
  %cmp9 = icmp eq i64 %call, 1, !dbg !1940
  br i1 %cmp9, label %if.end, label %if.then, !dbg !1941

if.then:                                          ; preds = %for.end8
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !1942
  br label %if.end, !dbg !1942

if.end:                                           ; preds = %for.end8, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !1893, metadata !DIExpression()), !dbg !1909
  br label %for.cond11, !dbg !1943

for.cond11:                                       ; preds = %cleanup, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %if.end ], !dbg !1944
  %4 = phi i8* [ %offs.1, %cleanup ], [ %addr, %if.end ], !dbg !1944
  %i.1 = phi i32 [ %inc94, %cleanup ], [ 0, %if.end ], !dbg !1945
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1893, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8* %4, metadata !1894, metadata !DIExpression()), !dbg !1909
  %exitcond = icmp eq i64 %indvars.iv, 84, !dbg !1946
  br i1 %exitcond, label %for.end95, label %for.body15, !dbg !1947

for.body15:                                       ; preds = %for.cond11
  %arrayidx18 = getelementptr inbounds %struct.ggc_pch_ondisk, %struct.ggc_pch_ondisk* %d, i64 0, i32 0, i64 %indvars.iv, !dbg !1948
  %5 = load i32, i32* %arrayidx18, align 4, !dbg !1948
  %cmp19 = icmp eq i32 %5, 0, !dbg !1950
  br i1 %cmp19, label %cleanup, label %if.end22, !dbg !1951

if.end22:                                         ; preds = %for.body15
  %conv26 = zext i32 %5 to i64, !dbg !1952
  %arrayidx28 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %indvars.iv, !dbg !1952
  %6 = load i64, i64* %arrayidx28, align 8, !dbg !1952
  %mul = mul i64 %6, %conv26, !dbg !1952
  %7 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !1952
  %add = add i64 %mul, %7, !dbg !1952
  %sub = add i64 %add, -1, !dbg !1952
  %8 = urem i64 %sub, %7, !dbg !1952
  %mul29 = sub i64 %sub, %8, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %mul29, metadata !1906, metadata !DIExpression()), !dbg !1953
  %div32 = udiv i64 %mul29, %6, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %div32, metadata !1907, metadata !DIExpression()), !dbg !1953
  %sub35 = add i64 %div32, 64, !dbg !1955
  %div36 = lshr i64 %sub35, 6, !dbg !1955
  %mul37 = shl nuw nsw i64 %div36, 3, !dbg !1955
  %add38 = add nuw nsw i64 %mul37, 56, !dbg !1955
  %call39 = call i8* @xcalloc(i64 1, i64 %add38) #6, !dbg !1955
  call void @llvm.dbg.value(metadata %struct.page_entry* %16, metadata !1901, metadata !DIExpression()), !dbg !1953
  %bytes40 = getelementptr inbounds i8, i8* %call39, i64 16, !dbg !1956
  %9 = bitcast i8* %bytes40 to i64*, !dbg !1956
  store i64 %mul29, i64* %9, align 8, !dbg !1957
  %page = getelementptr inbounds i8, i8* %call39, i64 24, !dbg !1958
  %10 = bitcast i8* %page to i8**, !dbg !1958
  store i8* %4, i8** %10, align 8, !dbg !1959
  %context_depth41 = getelementptr inbounds i8, i8* %call39, i64 48, !dbg !1960
  %11 = bitcast i8* %context_depth41 to i16*, !dbg !1960
  store i16 0, i16* %11, align 8, !dbg !1961
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1894, metadata !DIExpression()), !dbg !1909
  %num_free_objects = getelementptr inbounds i8, i8* %call39, i64 50, !dbg !1962
  %12 = bitcast i8* %num_free_objects to i16*, !dbg !1962
  store i16 0, i16* %12, align 2, !dbg !1963
  %conv42 = trunc i32 %i.1 to i8, !dbg !1964
  %13 = getelementptr inbounds i8, i8* %call39, i64 54, !dbg !1965
  store i8 %conv42, i8* %13, align 2, !dbg !1966
  call void @llvm.dbg.value(metadata i64 0, metadata !1908, metadata !DIExpression()), !dbg !1953
  %add45 = add i64 %div32, 1, !dbg !1967
  %in_use_p = getelementptr inbounds i8, i8* %call39, i64 56, !dbg !1967
  %14 = bitcast i8* %in_use_p to [1 x i64]*, !dbg !1967
  br label %for.cond43, !dbg !1970

for.cond43:                                       ; preds = %for.body48, %if.end22
  %j.0 = phi i64 [ 0, %if.end22 ], [ %add44, %for.body48 ], !dbg !1971
  call void @llvm.dbg.value(metadata i64 %j.0, metadata !1908, metadata !DIExpression()), !dbg !1953
  %add44 = add i64 %j.0, 64, !dbg !1972
  %cmp46 = icmp ugt i64 %add44, %add45, !dbg !1973
  br i1 %cmp46, label %for.cond54.preheader, label %for.body48, !dbg !1974

for.cond54.preheader:                             ; preds = %for.cond43
  %j.0.lcssa = phi i64 [ %j.0, %for.cond43 ], !dbg !1971
  call void @llvm.dbg.value(metadata i64 %j.0.lcssa, metadata !1908, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %j.0.lcssa, metadata !1908, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %j.0.lcssa, metadata !1908, metadata !DIExpression()), !dbg !1953
  br label %for.cond54, !dbg !1975

for.body48:                                       ; preds = %for.cond43
  %div49 = lshr exact i64 %j.0, 6, !dbg !1977
  %arrayidx50 = getelementptr inbounds [1 x i64], [1 x i64]* %14, i64 0, i64 %div49, !dbg !1978
  store i64 -1, i64* %arrayidx50, align 8, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %add44, metadata !1908, metadata !DIExpression()), !dbg !1953
  br label %for.cond43, !dbg !1980, !llvm.loop !1981

for.cond54:                                       ; preds = %for.cond54.preheader, %for.body58
  %j.1 = phi i64 [ %inc63, %for.body58 ], [ %j.0.lcssa, %for.cond54.preheader ], !dbg !1953
  call void @llvm.dbg.value(metadata i64 %j.1, metadata !1908, metadata !DIExpression()), !dbg !1953
  %cmp56 = icmp ult i64 %j.1, %add45, !dbg !1983
  br i1 %cmp56, label %for.body58, label %for.end64, !dbg !1975

for.body58:                                       ; preds = %for.cond54
  %rem = and i64 %j.1, 63, !dbg !1985
  %shl = shl i64 1, %rem, !dbg !1986
  %div60 = lshr i64 %j.1, 6, !dbg !1987
  %arrayidx61 = getelementptr inbounds [1 x i64], [1 x i64]* %14, i64 0, i64 %div60, !dbg !1988
  %15 = load i64, i64* %arrayidx61, align 8, !dbg !1989
  %or = or i64 %15, %shl, !dbg !1989
  store i64 %or, i64* %arrayidx61, align 8, !dbg !1989
  %inc63 = add i64 %j.1, 1, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %inc63, metadata !1908, metadata !DIExpression()), !dbg !1953
  br label %for.cond54, !dbg !1991, !llvm.loop !1992

for.end64:                                        ; preds = %for.cond54
  %16 = bitcast i8* %call39 to %struct.page_entry*, !dbg !1955
  call void @llvm.dbg.value(metadata i8* %4, metadata !1905, metadata !DIExpression()), !dbg !1953
  br label %for.cond66, !dbg !1994

for.cond66:                                       ; preds = %for.body72, %for.end64
  %17 = phi i64 [ %mul29, %for.end64 ], [ %.pre1, %for.body72 ], !dbg !1996
  %18 = phi i8* [ %4, %for.end64 ], [ %.pre, %for.body72 ], !dbg !1998
  %pte.0 = phi i8* [ %4, %for.end64 ], [ %add.ptr74, %for.body72 ], !dbg !1999
  call void @llvm.dbg.value(metadata i8* %pte.0, metadata !1905, metadata !DIExpression()), !dbg !1953
  %add.ptr69 = getelementptr inbounds i8, i8* %18, i64 %17, !dbg !2000
  %cmp70 = icmp ult i8* %pte.0, %add.ptr69, !dbg !2001
  br i1 %cmp70, label %for.body72, label %for.end75, !dbg !2002

for.body72:                                       ; preds = %for.cond66
  call fastcc void @set_page_table_entry(i8* %pte.0, %struct.page_entry* %16) #7, !dbg !2003
  %19 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !2004
  %add.ptr74 = getelementptr inbounds i8, i8* %pte.0, i64 %19, !dbg !2005
  call void @llvm.dbg.value(metadata i8* %add.ptr74, metadata !1905, metadata !DIExpression()), !dbg !1953
  %.pre = load i8*, i8** %10, align 8, !dbg !1998
  %.pre1 = load i64, i64* %9, align 8, !dbg !1996
  br label %for.cond66, !dbg !2006, !llvm.loop !2007

for.end75:                                        ; preds = %for.cond66
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %mul29, !dbg !2009
  %arrayidx77 = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 1, i64 %indvars.iv, !dbg !2010
  %20 = load %struct.page_entry*, %struct.page_entry** %arrayidx77, align 8, !dbg !2010
  %cmp78 = icmp eq %struct.page_entry* %20, null, !dbg !2012
  br i1 %cmp78, label %if.else, label %if.then80, !dbg !2013

if.then80:                                        ; preds = %for.end75
  %21 = bitcast %struct.page_entry* %20 to i8**, !dbg !2013
  store i8* %call39, i8** %21, align 8, !dbg !2014
  br label %if.end86, !dbg !2015

if.else:                                          ; preds = %for.end75
  %arrayidx85 = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 0, i64 %indvars.iv, !dbg !2016
  %22 = bitcast %struct.page_entry** %arrayidx85 to i8**, !dbg !2017
  store i8* %call39, i8** %22, align 8, !dbg !2017
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then80
  %23 = bitcast %struct.page_entry** %arrayidx77 to i8**, !dbg !2018
  store i8* %call39, i8** %23, align 8, !dbg !2018
  call fastcc void @push_by_depth(%struct.page_entry* %16, i64* null) #7, !dbg !2019
  br label %cleanup, !dbg !2020

cleanup:                                          ; preds = %for.body15, %if.end86
  %offs.1 = phi i8* [ %add.ptr, %if.end86 ], [ %4, %for.body15 ], !dbg !1909
  call void @llvm.dbg.value(metadata i8* %offs.1, metadata !1894, metadata !DIExpression()), !dbg !1909
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2021
  %inc94 = add nuw nsw i32 %i.1, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %inc94, metadata !1893, metadata !DIExpression()), !dbg !1909
  br label %for.cond11, !dbg !2022, !llvm.loop !2023

for.end95:                                        ; preds = %for.cond11
  %.lcssa = phi i8* [ %4, %for.cond11 ], !dbg !1944
  call void @llvm.dbg.value(metadata i8* %.lcssa, metadata !1894, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8* %.lcssa, metadata !1894, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8* %.lcssa, metadata !1894, metadata !DIExpression()), !dbg !1909
  %24 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 17), align 8, !dbg !2025
  %sub97 = sub i32 %24, %1, !dbg !2026
  call fastcc void @move_ptes_to_front(i32 %1, i32 %sub97) #7, !dbg !2027
  %sub.ptr.lhs.cast = ptrtoint i8* %.lcssa to i64, !dbg !2028
  %sub.ptr.rhs.cast = ptrtoint i8* %addr to i64, !dbg !2028
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2028
  store i64 %sub.ptr.sub, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 6), align 8, !dbg !2029
  store i64 %sub.ptr.sub, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 5), align 8, !dbg !2030
  call void @llvm.lifetime.end.p0i8(i64 336, i8* nonnull %0) #8, !dbg !2031
  ret void, !dbg !2031
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clear_marks() unnamed_addr #4 !dbg !2032 {
entry:
  call void @llvm.dbg.value(metadata i32 2, metadata !2034, metadata !DIExpression()), !dbg !2044
  br label %for.cond, !dbg !2045

for.cond:                                         ; preds = %for.inc32, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc32 ], [ 2, %entry ], !dbg !2046
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2034, metadata !DIExpression()), !dbg !2044
  %exitcond = icmp eq i64 %indvars.iv, 84, !dbg !2047
  br i1 %exitcond, label %for.end33, label %for.body, !dbg !2048

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.globals, %struct.globals* @G, i64 0, i32 0, i64 %indvars.iv, !dbg !2049
  br label %for.cond2, !dbg !2050

for.cond2:                                        ; preds = %if.end24, %for.body
  %p.0.in = phi %struct.page_entry** [ %arrayidx, %for.body ], [ %next, %if.end24 ]
  %p.0 = load %struct.page_entry*, %struct.page_entry** %p.0.in, align 8, !dbg !2051
  call void @llvm.dbg.value(metadata %struct.page_entry* %p.0, metadata !2035, metadata !DIExpression()), !dbg !2052
  %cmp3 = icmp eq %struct.page_entry* %p.0, null, !dbg !2053
  br i1 %cmp3, label %for.inc32, label %for.body5, !dbg !2054

for.body5:                                        ; preds = %for.cond2
  %bytes = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 2, !dbg !2055
  %0 = load i64, i64* %bytes, align 8, !dbg !2055
  %order6 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 9, !dbg !2055
  %1 = load i8, i8* %order6, align 2, !dbg !2055
  %idxprom7 = zext i8 %1 to i64, !dbg !2055
  %arrayidx8 = getelementptr inbounds [84 x i64], [84 x i64]* @object_size_table, i64 0, i64 %idxprom7, !dbg !2055
  %2 = load i64, i64* %arrayidx8, align 8, !dbg !2055
  %div = udiv i64 %0, %2, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %div, metadata !2039, metadata !DIExpression()), !dbg !2056
  %sub = add i64 %div, 64, !dbg !2057
  %div10 = lshr i64 %sub, 6, !dbg !2057
  %mul = shl nuw nsw i64 %div10, 3, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %mul, metadata !2043, metadata !DIExpression()), !dbg !2056
  %page = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 3, !dbg !2058
  %3 = bitcast i8** %page to i64*, !dbg !2058
  %4 = load i64, i64* %3, align 8, !dbg !2058
  %5 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 3), align 8, !dbg !2058
  %sub11 = add i64 %5, -1, !dbg !2058
  %and = and i64 %4, %sub11, !dbg !2058
  %tobool = icmp eq i64 %and, 0, !dbg !2058
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2058

cond.true:                                        ; preds = %for.body5
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1685, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2058
  br label %cond.end, !dbg !2058

cond.end:                                         ; preds = %for.body5, %cond.true
  %context_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 6, !dbg !2059
  %6 = load i16, i16* %context_depth, align 8, !dbg !2059
  %7 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 10), align 8, !dbg !2061
  %cmp14 = icmp ult i16 %6, %7, !dbg !2062
  br i1 %cmp14, label %if.then, label %cond.end.if.end24_crit_edge, !dbg !2063

cond.end.if.end24_crit_edge:                      ; preds = %cond.end
  br label %if.end24, !dbg !2063

if.then:                                          ; preds = %cond.end
  %8 = load i64**, i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20), align 8, !dbg !2064
  %index_by_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 5, !dbg !2064
  %9 = load i64, i64* %index_by_depth, align 8, !dbg !2064
  %arrayidx16 = getelementptr inbounds i64*, i64** %8, i64 %9, !dbg !2064
  %10 = load i64*, i64** %arrayidx16, align 8, !dbg !2064
  %tobool17 = icmp eq i64* %10, null, !dbg !2064
  br i1 %tobool17, label %if.then18, label %if.end, !dbg !2067

if.then18:                                        ; preds = %if.then
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2068
  %11 = load i64**, i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20), align 8, !dbg !2069
  %12 = load i64, i64* %index_by_depth, align 8, !dbg !2069
  %arrayidx20 = getelementptr inbounds i64*, i64** %11, i64 %12, !dbg !2069
  %13 = bitcast i64** %arrayidx20 to i8**, !dbg !2070
  store i8* %call, i8** %13, align 8, !dbg !2070
  %.pre = load i64**, i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20), align 8, !dbg !2071
  %.pre1 = load i64, i64* %index_by_depth, align 8, !dbg !2071
  br label %if.end, !dbg !2069

if.end:                                           ; preds = %if.then, %if.then18
  %14 = phi i64 [ %9, %if.then ], [ %.pre1, %if.then18 ], !dbg !2071
  %15 = phi i64** [ %8, %if.then ], [ %.pre, %if.then18 ], !dbg !2071
  %arrayidx22 = getelementptr inbounds i64*, i64** %15, i64 %14, !dbg !2071
  %16 = bitcast i64** %arrayidx22 to i8**, !dbg !2071
  %17 = load i8*, i8** %16, align 8, !dbg !2071
  %arraydecay = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 10, i64 0, !dbg !2072
  %18 = bitcast i64* %arraydecay to i8*, !dbg !2072
  %call23 = tail call i8* @memcpy(i8* %17, i8* nonnull %18, i64 %mul) #6, !dbg !2073
  br label %if.end24, !dbg !2074

if.end24:                                         ; preds = %cond.end.if.end24_crit_edge, %if.end
  %conv25 = trunc i64 %div to i16, !dbg !2075
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 7, !dbg !2076
  store i16 %conv25, i16* %num_free_objects, align 2, !dbg !2077
  %arraydecay27 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 10, i64 0, !dbg !2078
  %19 = bitcast i64* %arraydecay27 to i8*, !dbg !2078
  %call28 = tail call i8* @memset(i8* nonnull %19, i32 0, i64 %mul) #6, !dbg !2079
  %rem = and i64 %div, 63, !dbg !2080
  %shl = shl i64 1, %rem, !dbg !2081
  %div30 = lshr i64 %div, 6, !dbg !2082
  %arrayidx31 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 10, i64 %div30, !dbg !2083
  store i64 %shl, i64* %arrayidx31, align 8, !dbg !2084
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %p.0, i64 0, i32 0, !dbg !2085
  br label %for.cond2, !dbg !2086, !llvm.loop !2087

for.inc32:                                        ; preds = %for.cond2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i32 undef, metadata !2034, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2044
  br label %for.cond, !dbg !2090, !llvm.loop !2091

for.end33:                                        ; preds = %for.cond
  ret void, !dbg !2093
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @set_page_table_entry(i8* %p, %struct.page_entry* %entry1) unnamed_addr #4 !dbg !2094 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2098, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata %struct.page_entry* %entry1, metadata !2099, metadata !DIExpression()), !dbg !2106
  %0 = ptrtoint i8* %p to i64, !dbg !2107
  %and = and i64 %0, -4294967296, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %and, metadata !2104, metadata !DIExpression()), !dbg !2106
  br label %for.cond, !dbg !2109

for.cond:                                         ; preds = %for.inc, %entry
  %table.0.in = phi %struct.page_table_chain** [ getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 2), %entry ], [ %next, %for.inc ]
  %table.0 = load %struct.page_table_chain*, %struct.page_table_chain** %table.0.in, align 8, !dbg !2111
  call void @llvm.dbg.value(metadata %struct.page_table_chain* %table.0, metadata !2103, metadata !DIExpression()), !dbg !2106
  %tobool = icmp eq %struct.page_table_chain* %table.0, null, !dbg !2112
  br i1 %tobool, label %for.end, label %for.body, !dbg !2112

for.body:                                         ; preds = %for.cond
  %high_bits2 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %table.0, i64 0, i32 1, !dbg !2113
  %1 = load i64, i64* %high_bits2, align 8, !dbg !2113
  %cmp = icmp eq i64 %1, %and, !dbg !2116
  br i1 %cmp, label %found.loopexit, label %for.inc, !dbg !2117

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %table.0, i64 0, i32 0, !dbg !2118
  br label %for.cond, !dbg !2119, !llvm.loop !2120

for.end:                                          ; preds = %for.cond
  %call = tail call i8* @xcalloc(i64 1, i64 2064) #6, !dbg !2122
  %2 = bitcast i8* %call to %struct.page_table_chain*, !dbg !2122
  call void @llvm.dbg.value(metadata %struct.page_table_chain* %2, metadata !2103, metadata !DIExpression()), !dbg !2106
  %3 = load i64, i64* bitcast (%struct.page_table_chain** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 2) to i64*), align 8, !dbg !2123
  %4 = bitcast i8* %call to i64*, !dbg !2124
  store i64 %3, i64* %4, align 8, !dbg !2124
  %high_bits4 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2125
  %5 = bitcast i8* %high_bits4 to i64*, !dbg !2125
  store i64 %and, i64* %5, align 8, !dbg !2126
  store i8* %call, i8** bitcast (%struct.page_table_chain** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 2) to i8**), align 8, !dbg !2127
  br label %found, !dbg !2128

found.loopexit:                                   ; preds = %for.body
  %table.0.lcssa3 = phi %struct.page_table_chain* [ %table.0, %for.body ], !dbg !2111
  br label %found, !dbg !2129

found:                                            ; preds = %found.loopexit, %for.end
  %table.1 = phi %struct.page_table_chain* [ %2, %for.end ], [ %table.0.lcssa3, %found.loopexit ], !dbg !2106
  call void @llvm.dbg.value(metadata %struct.page_table_chain* %table.1, metadata !2103, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.label(metadata !2105), !dbg !2130
  call void @llvm.dbg.value(metadata %struct.page_table_chain* %table.1, metadata !2100, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !2106
  %shr = lshr i64 %0, 24, !dbg !2129
  %and6 = and i64 %shr, 255, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %and6, metadata !2101, metadata !DIExpression()), !dbg !2106
  %6 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 4), align 8, !dbg !2131
  %shr7 = lshr i64 %0, %6, !dbg !2131
  %7 = trunc i64 %6 to i32, !dbg !2131
  %sh_prom = sub i32 24, %7, !dbg !2131
  %notmask = shl nsw i32 -1, %sh_prom, !dbg !2131
  %sub8 = xor i32 %notmask, -1, !dbg !2131
  %conv = sext i32 %sub8 to i64, !dbg !2131
  %and9 = and i64 %shr7, %conv, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %and9, metadata !2102, metadata !DIExpression()), !dbg !2106
  %arrayidx10 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %table.1, i64 0, i32 2, i64 %and6, !dbg !2132
  %8 = load %struct.page_entry**, %struct.page_entry*** %arrayidx10, align 8, !dbg !2132
  %cmp11 = icmp eq %struct.page_entry** %8, null, !dbg !2134
  br i1 %cmp11, label %if.then13, label %if.end18, !dbg !2135

if.then13:                                        ; preds = %found
  call void @llvm.dbg.value(metadata %struct.page_table_chain* %table.1, metadata !2100, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !2106
  %sub14 = sub i64 24, %6, !dbg !2136
  %shl15 = shl i64 1, %sub14, !dbg !2136
  %call16 = tail call i8* @xcalloc(i64 %shl15, i64 8) #6, !dbg !2136
  %9 = bitcast %struct.page_entry*** %arrayidx10 to i8**, !dbg !2137
  store i8* %call16, i8** %9, align 8, !dbg !2137
  %10 = bitcast i8* %call16 to %struct.page_entry**, !dbg !2138
  br label %if.end18, !dbg !2138

if.end18:                                         ; preds = %if.then13, %found
  %11 = phi %struct.page_entry** [ %10, %if.then13 ], [ %8, %found ], !dbg !2139
  %arrayidx20 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %11, i64 %and9, !dbg !2139
  store %struct.page_entry* %entry1, %struct.page_entry** %arrayidx20, align 8, !dbg !2140
  ret void, !dbg !2141
}

; Function Attrs: nounwind uwtable
define internal fastcc void @move_ptes_to_front(i32 %count_old_page_tables, i32 %count_new_page_tables) unnamed_addr #4 !dbg !2142 {
entry:
  call void @llvm.dbg.value(metadata i32 %count_old_page_tables, metadata !2146, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i32 %count_new_page_tables, metadata !2147, metadata !DIExpression()), !dbg !2155
  %0 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 18), align 4, !dbg !2156
  %conv = zext i32 %0 to i64, !dbg !2156
  %mul = shl nuw nsw i64 %conv, 3, !dbg !2156
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2156
  %1 = bitcast i8* %call to %struct.page_entry**, !dbg !2156
  call void @llvm.dbg.value(metadata %struct.page_entry** %1, metadata !2149, metadata !DIExpression()), !dbg !2155
  %2 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 18), align 4, !dbg !2157
  %conv1 = zext i32 %2 to i64, !dbg !2157
  %mul2 = shl nuw nsw i64 %conv1, 3, !dbg !2157
  %call3 = tail call i8* @xmalloc(i64 %mul2) #6, !dbg !2157
  %3 = bitcast i8* %call3 to i64**, !dbg !2157
  call void @llvm.dbg.value(metadata i64** %3, metadata !2150, metadata !DIExpression()), !dbg !2155
  %4 = load %struct.page_entry**, %struct.page_entry*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 19), align 8, !dbg !2158
  %idxprom = sext i32 %count_old_page_tables to i64, !dbg !2159
  %arrayidx4 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %4, i64 %idxprom, !dbg !2159
  %5 = bitcast %struct.page_entry** %arrayidx4 to i8*, !dbg !2160
  %conv5 = sext i32 %count_new_page_tables to i64, !dbg !2161
  %mul6 = shl nsw i64 %conv5, 3, !dbg !2162
  %call7 = tail call i8* @memcpy(i8* %call, i8* %5, i64 %mul6) #6, !dbg !2163
  %arrayidx9 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %1, i64 %conv5, !dbg !2164
  %6 = bitcast %struct.page_entry** %arrayidx9 to i8*, !dbg !2165
  %7 = load i8*, i8** bitcast (%struct.page_entry*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 19) to i8**), align 8, !dbg !2166
  %mul12 = shl nsw i64 %idxprom, 3, !dbg !2167
  %call13 = tail call i8* @memcpy(i8* %6, i8* %7, i64 %mul12) #6, !dbg !2168
  %8 = load i64**, i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20), align 8, !dbg !2169
  %arrayidx16 = getelementptr inbounds i64*, i64** %8, i64 %idxprom, !dbg !2170
  %9 = bitcast i64** %arrayidx16 to i8*, !dbg !2171
  %call19 = tail call i8* @memcpy(i8* %call3, i8* %9, i64 %mul6) #6, !dbg !2172
  %arrayidx21 = getelementptr inbounds i64*, i64** %3, i64 %conv5, !dbg !2173
  %10 = bitcast i64** %arrayidx21 to i8*, !dbg !2174
  %11 = load i8*, i8** bitcast (i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20) to i8**), align 8, !dbg !2175
  %call25 = tail call i8* @memcpy(i8* %10, i8* %11, i64 %mul12) #6, !dbg !2176
  %12 = load i8*, i8** bitcast (%struct.page_entry*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 19) to i8**), align 8, !dbg !2177
  tail call void @free(i8* %12) #6, !dbg !2178
  %13 = load i8*, i8** bitcast (i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20) to i8**), align 8, !dbg !2179
  tail call void @free(i8* %13) #6, !dbg !2180
  store i8* %call, i8** bitcast (%struct.page_entry*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 19) to i8**), align 8, !dbg !2181
  store i8* %call3, i8** bitcast (i64*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 20) to i8**), align 8, !dbg !2182
  %14 = load i32, i32* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 17), align 8, !dbg !2183
  call void @llvm.dbg.value(metadata i32 %14, metadata !2148, metadata !DIExpression()), !dbg !2155
  %15 = zext i32 %14 to i64, !dbg !2184
  br label %for.cond, !dbg !2184

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %15, %entry ], !dbg !2185
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2148, metadata !DIExpression()), !dbg !2155
  %cmp = icmp eq i64 %indvars.iv, 0, !dbg !2186
  br i1 %cmp, label %for.end, label %for.body, !dbg !2187

for.body:                                         ; preds = %for.cond
  %16 = load %struct.page_entry**, %struct.page_entry*** getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 19), align 8, !dbg !2188
  %sub = add nuw nsw i64 %indvars.iv, 4294967295, !dbg !2189
  %idxprom27 = and i64 %sub, 4294967295, !dbg !2190
  %arrayidx28 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %16, i64 %idxprom27, !dbg !2190
  %17 = load %struct.page_entry*, %struct.page_entry** %arrayidx28, align 8, !dbg !2190
  call void @llvm.dbg.value(metadata %struct.page_entry* %17, metadata !2151, metadata !DIExpression()), !dbg !2191
  %index_by_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %17, i64 0, i32 5, !dbg !2192
  store i64 %idxprom27, i64* %index_by_depth, align 8, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2148, metadata !DIExpression()), !dbg !2155
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2189
  br label %for.cond, !dbg !2194, !llvm.loop !2195

for.end:                                          ; preds = %for.cond
  %tobool = icmp eq i32 %count_old_page_tables, 0, !dbg !2197
  br i1 %tobool, label %if.end, label %if.then, !dbg !2199

if.then:                                          ; preds = %for.end
  tail call fastcc void @push_depth(i32 %count_new_page_tables) #7, !dbg !2200
  br label %if.end, !dbg !2200

if.end:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2201
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_page_group_in_use(%struct.page_group* %group, i8* %page) unnamed_addr #0 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata %struct.page_group* %group, metadata !2206, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8* %page, metadata !2207, metadata !DIExpression()), !dbg !2208
  %allocation = getelementptr inbounds %struct.page_group, %struct.page_group* %group, i64 0, i32 1, !dbg !2209
  %0 = load i8*, i8** %allocation, align 8, !dbg !2209
  %call = tail call fastcc i64 @page_group_index(i8* %0, i8* %page) #7, !dbg !2210
  %sh_prom = trunc i64 %call to i32, !dbg !2211
  %shl = shl i32 1, %sh_prom, !dbg !2211
  %in_use = getelementptr inbounds %struct.page_group, %struct.page_group* %group, i64 0, i32 3, !dbg !2212
  %1 = load i32, i32* %in_use, align 8, !dbg !2213
  %or = or i32 %1, %shl, !dbg !2213
  store i32 %or, i32* %in_use, align 8, !dbg !2213
  ret void, !dbg !2214
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @page_group_index(i8* %allocation, i8* %page) unnamed_addr #0 !dbg !2215 {
entry:
  call void @llvm.dbg.value(metadata i8* %allocation, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i8* %page, metadata !2220, metadata !DIExpression()), !dbg !2221
  %sub.ptr.lhs.cast = ptrtoint i8* %page to i64, !dbg !2222
  %sub.ptr.rhs.cast = ptrtoint i8* %allocation to i64, !dbg !2222
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2222
  %0 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i64 0, i32 4), align 8, !dbg !2223
  %shr = lshr i64 %sub.ptr.sub, %0, !dbg !2224
  ret i64 %shr, !dbg !2225
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

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
!llvm.module.flags = !{!413, !414, !415}
!llvm.ident = !{!416}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "G", scope: !2, file: !3, line: 471, type: !388, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !227, globals: !297, nameTableKind: None)
!3 = !DIFile(filename: "ggc-page.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!227 = !{!228, !229, !230, !231, !234, !235, !237, !238, !240, !242, !243, !271, !273, !232, !249, !286, !272, !288}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!230 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!237 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !241, line: 46, baseType: !237)
!241 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "page_entry", file: !3, line: 304, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_entry", file: !3, line: 260, size: 512, elements: !247)
!247 = !{!248, !250, !251, !252, !253, !261, !262, !264, !265, !266, !267}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !246, file: !3, line: 264, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !246, file: !3, line: 269, baseType: !249, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !246, file: !3, line: 273, baseType: !240, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !246, file: !3, line: 276, baseType: !232, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !246, file: !3, line: 280, baseType: !254, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_group", file: !3, line: 309, size: 256, elements: !256)
!256 = !{!257, !258, !259, !260}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !3, line: 312, baseType: !254, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "allocation", scope: !255, file: !3, line: 315, baseType: !232, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_size", scope: !255, file: !3, line: 318, baseType: !240, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !255, file: !3, line: 321, baseType: !7, size: 32, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "index_by_depth", scope: !246, file: !3, line: 285, baseType: !237, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "context_depth", scope: !246, file: !3, line: 288, baseType: !263, size: 16, offset: 384)
!263 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "num_free_objects", scope: !246, file: !3, line: 291, baseType: !263, size: 16, offset: 400)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next_bit_hint", scope: !246, file: !3, line: 295, baseType: !263, size: 16, offset: 416)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !246, file: !3, line: 298, baseType: !229, size: 8, offset: 432)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "in_use_p", scope: !246, file: !3, line: 303, baseType: !268, size: 64, offset: 448)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 64, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 1)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_pch_data", file: !3, line: 2108, size: 13440, elements: !275)
!275 = !{!276, !283, !285}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !274, file: !3, line: 2110, baseType: !277, size: 2688)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_pch_ondisk", file: !3, line: 2103, size: 2688, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "totals", scope: !277, file: !3, line: 2105, baseType: !280, size: 2688)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2688, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 84)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !274, file: !3, line: 2111, baseType: !284, size: 5376, offset: 2688)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 5376, elements: !281)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !274, file: !3, line: 2112, baseType: !284, size: 5376, offset: 8064)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "page_group", file: !3, line: 322, baseType: !255)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_table_chain", file: !3, line: 335, size: 16512, elements: !290)
!290 = !{!291, !292, !293}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !3, line: 337, baseType: !288, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "high_bits", scope: !289, file: !3, line: 338, baseType: !240, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !289, file: !3, line: 339, baseType: !294, size: 16384, offset: 128)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 16384, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 256)
!297 = !{!298, !368, !370, !372, !0, !379, !384}
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "emptyBytes", scope: !300, file: !3, line: 2200, type: !367, isLocal: true, isDefinition: true)
!300 = distinct !DISubprogram(name: "ggc_pch_write_object", scope: !3, file: !3, line: 2195, type: !301, scopeLine: 2198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !273, !303, !234, !234, !240, !229}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !305, line: 7, baseType: !306)
!305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !307, line: 49, size: 1728, elements: !308)
!307 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !324, !326, !327, !328, !332, !333, !335, !337, !340, !342, !345, !348, !349, !350, !351, !352}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !306, file: !307, line: 51, baseType: !230, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !306, file: !307, line: 54, baseType: !232, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !306, file: !307, line: 55, baseType: !232, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !306, file: !307, line: 56, baseType: !232, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !306, file: !307, line: 57, baseType: !232, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !306, file: !307, line: 58, baseType: !232, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !306, file: !307, line: 59, baseType: !232, size: 64, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !306, file: !307, line: 60, baseType: !232, size: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !306, file: !307, line: 61, baseType: !232, size: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !306, file: !307, line: 64, baseType: !232, size: 64, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !306, file: !307, line: 65, baseType: !232, size: 64, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !306, file: !307, line: 66, baseType: !232, size: 64, offset: 704)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !306, file: !307, line: 68, baseType: !322, size: 64, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !307, line: 36, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !306, file: !307, line: 70, baseType: !325, size: 64, offset: 832)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !306, file: !307, line: 72, baseType: !230, size: 32, offset: 896)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !306, file: !307, line: 73, baseType: !230, size: 32, offset: 928)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !306, file: !307, line: 74, baseType: !329, size: 64, offset: 960)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !330, line: 152, baseType: !331)
!330 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!331 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !306, file: !307, line: 77, baseType: !263, size: 16, offset: 1024)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !306, file: !307, line: 78, baseType: !334, size: 8, offset: 1040)
!334 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !306, file: !307, line: 79, baseType: !336, size: 8, offset: 1048)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 8, elements: !269)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !306, file: !307, line: 81, baseType: !338, size: 64, offset: 1088)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !307, line: 43, baseType: null)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !306, file: !307, line: 89, baseType: !341, size: 64, offset: 1152)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !330, line: 153, baseType: !331)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !306, file: !307, line: 91, baseType: !343, size: 64, offset: 1216)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !307, line: 37, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !306, file: !307, line: 92, baseType: !346, size: 64, offset: 1280)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !307, line: 38, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !306, file: !307, line: 93, baseType: !325, size: 64, offset: 1344)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !306, file: !307, line: 94, baseType: !234, size: 64, offset: 1408)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !306, file: !307, line: 95, baseType: !240, size: 64, offset: 1472)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !306, file: !307, line: 96, baseType: !230, size: 32, offset: 1536)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !306, file: !307, line: 98, baseType: !353, size: 160, offset: 1568)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 160, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 20)
!356 = !{!357, !358, !359, !360, !361, !362, !363, !364}
!357 = !DILocalVariable(name: "d", arg: 1, scope: !300, file: !3, line: 2195, type: !273)
!358 = !DILocalVariable(name: "f", arg: 2, scope: !300, file: !3, line: 2196, type: !303)
!359 = !DILocalVariable(name: "x", arg: 3, scope: !300, file: !3, line: 2196, type: !234)
!360 = !DILocalVariable(name: "newx", arg: 4, scope: !300, file: !3, line: 2196, type: !234)
!361 = !DILocalVariable(name: "size", arg: 5, scope: !300, file: !3, line: 2197, type: !240)
!362 = !DILocalVariable(name: "is_string", arg: 6, scope: !300, file: !3, line: 2197, type: !229)
!363 = !DILocalVariable(name: "order", scope: !300, file: !3, line: 2199, type: !7)
!364 = !DILocalVariable(name: "padding", scope: !365, file: !3, line: 2219, type: !7)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 2218, column: 5)
!366 = distinct !DILexicalBlock(scope: !300, file: !3, line: 2217, column: 7)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 2048, elements: !295)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "objects_per_page_table", scope: !2, file: !3, line: 241, type: !280, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "object_size_table", scope: !2, file: !3, line: 245, type: !284, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "inverse_table", scope: !2, file: !3, line: 256, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 10752, elements: !281)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 251, size: 128, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !375, file: !3, line: 253, baseType: !240, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !375, file: !3, line: 254, baseType: !7, size: 32, offset: 64)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "size_lookup", scope: !2, file: !3, line: 1041, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 4096, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 512)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "extra_order_size_table", scope: !2, file: !3, line: 200, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 1280, elements: !354)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "globals", file: !3, line: 355, size: 11840, elements: !389)
!389 = !{!390, !392, !393, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !388, file: !3, line: 361, baseType: !391, size: 5376)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 5376, elements: !281)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "page_tails", scope: !388, file: !3, line: 366, baseType: !391, size: 5376, offset: 5376)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !388, file: !3, line: 369, baseType: !394, size: 64, offset: 10752)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "page_table", file: !3, line: 340, baseType: !288)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !388, file: !3, line: 372, baseType: !240, size: 64, offset: 10816)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lg_pagesize", scope: !388, file: !3, line: 373, baseType: !240, size: 64, offset: 10880)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !388, file: !3, line: 376, baseType: !240, size: 64, offset: 10944)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_last_gc", scope: !388, file: !3, line: 379, baseType: !240, size: 64, offset: 11008)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_mapped", scope: !388, file: !3, line: 382, baseType: !240, size: 64, offset: 11072)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "context_depth_allocations", scope: !388, file: !3, line: 385, baseType: !237, size: 64, offset: 11136)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "context_depth_collections", scope: !388, file: !3, line: 388, baseType: !237, size: 64, offset: 11200)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "context_depth", scope: !388, file: !3, line: 391, baseType: !263, size: 16, offset: 11264)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !388, file: !3, line: 399, baseType: !244, size: 64, offset: 11328)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "page_groups", scope: !388, file: !3, line: 402, baseType: !286, size: 64, offset: 11392)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "debug_file", scope: !388, file: !3, line: 406, baseType: !303, size: 64, offset: 11456)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "depth_in_use", scope: !388, file: !3, line: 409, baseType: !7, size: 32, offset: 11520)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "depth_max", scope: !388, file: !3, line: 412, baseType: !7, size: 32, offset: 11552)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !388, file: !3, line: 417, baseType: !242, size: 64, offset: 11584)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "by_depth_in_use", scope: !388, file: !3, line: 420, baseType: !7, size: 32, offset: 11648)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "by_depth_max", scope: !388, file: !3, line: 423, baseType: !7, size: 32, offset: 11680)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "by_depth", scope: !388, file: !3, line: 430, baseType: !243, size: 64, offset: 11712)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "save_in_use", scope: !388, file: !3, line: 435, baseType: !271, size: 64, offset: 11776)
!413 = !{i32 2, !"Dwarf Version", i32 4}
!414 = !{i32 2, !"Debug Info Version", i32 3}
!415 = !{i32 1, !"wchar_size", i32 4}
!416 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!417 = distinct !DISubprogram(name: "vprintf", scope: !418, file: !418, line: 39, type: !419, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !429)
!418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!419 = !DISubroutineType(types: !420)
!420 = !{!230, !421, !422}
!421 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !424)
!424 = !{!425, !426, !427, !428}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !423, file: !3, baseType: !7, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !423, file: !3, baseType: !7, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !423, file: !3, baseType: !234, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !423, file: !3, baseType: !234, size: 64, offset: 128)
!429 = !{!430, !431}
!430 = !DILocalVariable(name: "__fmt", arg: 1, scope: !417, file: !418, line: 39, type: !421)
!431 = !DILocalVariable(name: "__arg", arg: 2, scope: !417, file: !418, line: 39, type: !422)
!432 = !DILocation(line: 0, scope: !417)
!433 = !DILocation(line: 41, column: 20, scope: !417)
!434 = !DILocation(line: 41, column: 10, scope: !417)
!435 = !DILocation(line: 41, column: 3, scope: !417)
!436 = distinct !DISubprogram(name: "getchar", scope: !418, file: !418, line: 47, type: !437, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!230}
!439 = !{}
!440 = !DILocation(line: 49, column: 16, scope: !436)
!441 = !DILocation(line: 49, column: 10, scope: !436)
!442 = !DILocation(line: 49, column: 3, scope: !436)
!443 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !418, file: !418, line: 56, type: !444, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{!230, !303}
!446 = !{!447}
!447 = !DILocalVariable(name: "__fp", arg: 1, scope: !443, file: !418, line: 56, type: !303)
!448 = !DILocation(line: 0, scope: !443)
!449 = !DILocation(line: 58, column: 10, scope: !443)
!450 = !DILocation(line: 58, column: 3, scope: !443)
!451 = distinct !DISubprogram(name: "getc_unlocked", scope: !418, file: !418, line: 66, type: !444, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!452 = !{!453}
!453 = !DILocalVariable(name: "__fp", arg: 1, scope: !451, file: !418, line: 66, type: !303)
!454 = !DILocation(line: 0, scope: !451)
!455 = !DILocation(line: 68, column: 10, scope: !451)
!456 = !DILocation(line: 68, column: 3, scope: !451)
!457 = distinct !DISubprogram(name: "getchar_unlocked", scope: !418, file: !418, line: 73, type: !437, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!458 = !DILocation(line: 75, column: 10, scope: !457)
!459 = !DILocation(line: 75, column: 3, scope: !457)
!460 = distinct !DISubprogram(name: "putchar", scope: !418, file: !418, line: 82, type: !461, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!230, !230}
!463 = !{!464}
!464 = !DILocalVariable(name: "__c", arg: 1, scope: !460, file: !418, line: 82, type: !230)
!465 = !DILocation(line: 0, scope: !460)
!466 = !DILocation(line: 84, column: 21, scope: !460)
!467 = !DILocation(line: 84, column: 10, scope: !460)
!468 = !DILocation(line: 84, column: 3, scope: !460)
!469 = distinct !DISubprogram(name: "fputc_unlocked", scope: !418, file: !418, line: 91, type: !470, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!230, !230, !303}
!472 = !{!473, !474}
!473 = !DILocalVariable(name: "__c", arg: 1, scope: !469, file: !418, line: 91, type: !230)
!474 = !DILocalVariable(name: "__stream", arg: 2, scope: !469, file: !418, line: 91, type: !303)
!475 = !DILocation(line: 0, scope: !469)
!476 = !DILocation(line: 93, column: 10, scope: !469)
!477 = !DILocation(line: 93, column: 3, scope: !469)
!478 = distinct !DISubprogram(name: "putc_unlocked", scope: !418, file: !418, line: 101, type: !470, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!479 = !{!480, !481}
!480 = !DILocalVariable(name: "__c", arg: 1, scope: !478, file: !418, line: 101, type: !230)
!481 = !DILocalVariable(name: "__stream", arg: 2, scope: !478, file: !418, line: 101, type: !303)
!482 = !DILocation(line: 0, scope: !478)
!483 = !DILocation(line: 103, column: 10, scope: !478)
!484 = !DILocation(line: 103, column: 3, scope: !478)
!485 = distinct !DISubprogram(name: "putchar_unlocked", scope: !418, file: !418, line: 108, type: !461, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !486)
!486 = !{!487}
!487 = !DILocalVariable(name: "__c", arg: 1, scope: !485, file: !418, line: 108, type: !230)
!488 = !DILocation(line: 0, scope: !485)
!489 = !DILocation(line: 110, column: 10, scope: !485)
!490 = !DILocation(line: 110, column: 3, scope: !485)
!491 = distinct !DISubprogram(name: "getline", scope: !418, file: !418, line: 118, type: !492, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !231, !495, !303}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !330, line: 193, baseType: !331)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!496 = !{!497, !498, !499}
!497 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !491, file: !418, line: 118, type: !231)
!498 = !DILocalVariable(name: "__n", arg: 2, scope: !491, file: !418, line: 118, type: !495)
!499 = !DILocalVariable(name: "__stream", arg: 3, scope: !491, file: !418, line: 118, type: !303)
!500 = !DILocation(line: 0, scope: !491)
!501 = !DILocation(line: 120, column: 10, scope: !491)
!502 = !DILocation(line: 120, column: 3, scope: !491)
!503 = distinct !DISubprogram(name: "feof_unlocked", scope: !418, file: !418, line: 128, type: !444, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!504 = !{!505}
!505 = !DILocalVariable(name: "__stream", arg: 1, scope: !503, file: !418, line: 128, type: !303)
!506 = !DILocation(line: 0, scope: !503)
!507 = !DILocation(line: 130, column: 10, scope: !503)
!508 = !DILocation(line: 130, column: 3, scope: !503)
!509 = distinct !DISubprogram(name: "ferror_unlocked", scope: !418, file: !418, line: 135, type: !444, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !510)
!510 = !{!511}
!511 = !DILocalVariable(name: "__stream", arg: 1, scope: !509, file: !418, line: 135, type: !303)
!512 = !DILocation(line: 0, scope: !509)
!513 = !DILocation(line: 137, column: 10, scope: !509)
!514 = !DILocation(line: 137, column: 3, scope: !509)
!515 = distinct !DISubprogram(name: "tolower", scope: !516, file: !516, line: 207, type: !461, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !517)
!516 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!517 = !{!518}
!518 = !DILocalVariable(name: "__c", arg: 1, scope: !515, file: !516, line: 207, type: !230)
!519 = !DILocation(line: 0, scope: !515)
!520 = !DILocation(line: 209, column: 22, scope: !515)
!521 = !DILocation(line: 209, column: 39, scope: !515)
!522 = !DILocation(line: 209, column: 38, scope: !515)
!523 = !DILocation(line: 209, column: 37, scope: !515)
!524 = !DILocation(line: 209, column: 10, scope: !515)
!525 = !DILocation(line: 209, column: 3, scope: !515)
!526 = distinct !DISubprogram(name: "toupper", scope: !516, file: !516, line: 213, type: !461, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!527 = !{!528}
!528 = !DILocalVariable(name: "__c", arg: 1, scope: !526, file: !516, line: 213, type: !230)
!529 = !DILocation(line: 0, scope: !526)
!530 = !DILocation(line: 215, column: 22, scope: !526)
!531 = !DILocation(line: 215, column: 39, scope: !526)
!532 = !DILocation(line: 215, column: 38, scope: !526)
!533 = !DILocation(line: 215, column: 37, scope: !526)
!534 = !DILocation(line: 215, column: 10, scope: !526)
!535 = !DILocation(line: 215, column: 3, scope: !526)
!536 = distinct !DISubprogram(name: "atoi", scope: !537, file: !537, line: 361, type: !538, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !540)
!537 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!538 = !DISubroutineType(types: !539)
!539 = !{!230, !235}
!540 = !{!541}
!541 = !DILocalVariable(name: "__nptr", arg: 1, scope: !536, file: !537, line: 361, type: !235)
!542 = !DILocation(line: 0, scope: !536)
!543 = !DILocation(line: 363, column: 16, scope: !536)
!544 = !DILocation(line: 363, column: 10, scope: !536)
!545 = !DILocation(line: 363, column: 3, scope: !536)
!546 = distinct !DISubprogram(name: "atol", scope: !537, file: !537, line: 366, type: !547, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{!331, !235}
!549 = !{!550}
!550 = !DILocalVariable(name: "__nptr", arg: 1, scope: !546, file: !537, line: 366, type: !235)
!551 = !DILocation(line: 0, scope: !546)
!552 = !DILocation(line: 368, column: 10, scope: !546)
!553 = !DILocation(line: 368, column: 3, scope: !546)
!554 = distinct !DISubprogram(name: "atoll", scope: !537, file: !537, line: 373, type: !555, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !558)
!555 = !DISubroutineType(types: !556)
!556 = !{!557, !235}
!557 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!558 = !{!559}
!559 = !DILocalVariable(name: "__nptr", arg: 1, scope: !554, file: !537, line: 373, type: !235)
!560 = !DILocation(line: 0, scope: !554)
!561 = !DILocation(line: 375, column: 10, scope: !554)
!562 = !DILocation(line: 375, column: 3, scope: !554)
!563 = distinct !DISubprogram(name: "bsearch", scope: !564, file: !564, line: 20, type: !565, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !571)
!564 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!565 = !DISubroutineType(types: !566)
!566 = !{!234, !238, !238, !240, !240, !567}
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !537, line: 808, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!230, !238, !238}
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!572 = !DILocalVariable(name: "__key", arg: 1, scope: !563, file: !564, line: 20, type: !238)
!573 = !DILocalVariable(name: "__base", arg: 2, scope: !563, file: !564, line: 20, type: !238)
!574 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !563, file: !564, line: 20, type: !240)
!575 = !DILocalVariable(name: "__size", arg: 4, scope: !563, file: !564, line: 20, type: !240)
!576 = !DILocalVariable(name: "__compar", arg: 5, scope: !563, file: !564, line: 21, type: !567)
!577 = !DILocalVariable(name: "__l", scope: !563, file: !564, line: 23, type: !240)
!578 = !DILocalVariable(name: "__u", scope: !563, file: !564, line: 23, type: !240)
!579 = !DILocalVariable(name: "__idx", scope: !563, file: !564, line: 23, type: !240)
!580 = !DILocalVariable(name: "__p", scope: !563, file: !564, line: 24, type: !238)
!581 = !DILocalVariable(name: "__comparison", scope: !563, file: !564, line: 25, type: !230)
!582 = !DILocation(line: 0, scope: !563)
!583 = !DILocation(line: 29, column: 3, scope: !563)
!584 = !DILocation(line: 27, column: 7, scope: !563)
!585 = !DILocation(line: 29, column: 14, scope: !563)
!586 = !DILocation(line: 31, column: 20, scope: !587)
!587 = distinct !DILexicalBlock(scope: !563, file: !564, line: 30, column: 5)
!588 = !DILocation(line: 31, column: 27, scope: !587)
!589 = !DILocation(line: 32, column: 56, scope: !587)
!590 = !DILocation(line: 32, column: 47, scope: !587)
!591 = !DILocation(line: 33, column: 22, scope: !587)
!592 = !DILocation(line: 34, column: 24, scope: !593)
!593 = distinct !DILexicalBlock(scope: !587, file: !564, line: 34, column: 11)
!594 = !DILocation(line: 34, column: 11, scope: !587)
!595 = !DILocation(line: 36, column: 29, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !564, line: 36, column: 16)
!597 = !DILocation(line: 36, column: 16, scope: !593)
!598 = !DILocation(line: 37, column: 14, scope: !596)
!599 = distinct !{!599, !583, !600}
!600 = !DILocation(line: 40, column: 5, scope: !563)
!601 = !DILocation(line: 43, column: 1, scope: !563)
!602 = distinct !DISubprogram(name: "atof", scope: !603, file: !603, line: 25, type: !604, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !607)
!603 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!604 = !DISubroutineType(types: !605)
!605 = !{!606, !235}
!606 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!607 = !{!608}
!608 = !DILocalVariable(name: "__nptr", arg: 1, scope: !602, file: !603, line: 25, type: !235)
!609 = !DILocation(line: 0, scope: !602)
!610 = !DILocation(line: 27, column: 10, scope: !602)
!611 = !DILocation(line: 27, column: 3, scope: !602)
!612 = distinct !DISubprogram(name: "strtoimax", scope: !613, file: !613, line: 324, type: !614, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !620)
!613 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!614 = !DISubroutineType(types: !615)
!615 = !{!616, !421, !619, !230}
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !617, line: 101, baseType: !618)
!617 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !330, line: 72, baseType: !331)
!619 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!620 = !{!621, !622, !623}
!621 = !DILocalVariable(name: "nptr", arg: 1, scope: !612, file: !613, line: 324, type: !421)
!622 = !DILocalVariable(name: "endptr", arg: 2, scope: !612, file: !613, line: 324, type: !619)
!623 = !DILocalVariable(name: "base", arg: 3, scope: !612, file: !613, line: 324, type: !230)
!624 = !DILocation(line: 0, scope: !612)
!625 = !DILocation(line: 327, column: 10, scope: !612)
!626 = !DILocation(line: 327, column: 3, scope: !612)
!627 = distinct !DISubprogram(name: "strtoumax", scope: !613, file: !613, line: 336, type: !628, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !632)
!628 = !DISubroutineType(types: !629)
!629 = !{!630, !421, !619, !230}
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !617, line: 102, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !330, line: 73, baseType: !237)
!632 = !{!633, !634, !635}
!633 = !DILocalVariable(name: "nptr", arg: 1, scope: !627, file: !613, line: 336, type: !421)
!634 = !DILocalVariable(name: "endptr", arg: 2, scope: !627, file: !613, line: 336, type: !619)
!635 = !DILocalVariable(name: "base", arg: 3, scope: !627, file: !613, line: 336, type: !230)
!636 = !DILocation(line: 0, scope: !627)
!637 = !DILocation(line: 339, column: 10, scope: !627)
!638 = !DILocation(line: 339, column: 3, scope: !627)
!639 = distinct !DISubprogram(name: "wcstoimax", scope: !613, file: !613, line: 348, type: !640, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !649)
!640 = !DISubroutineType(types: !641)
!641 = !{!616, !642, !646, !230}
!642 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !613, line: 34, baseType: !230)
!646 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!649 = !{!650, !651, !652}
!650 = !DILocalVariable(name: "nptr", arg: 1, scope: !639, file: !613, line: 348, type: !642)
!651 = !DILocalVariable(name: "endptr", arg: 2, scope: !639, file: !613, line: 348, type: !646)
!652 = !DILocalVariable(name: "base", arg: 3, scope: !639, file: !613, line: 348, type: !230)
!653 = !DILocation(line: 0, scope: !639)
!654 = !DILocation(line: 351, column: 10, scope: !639)
!655 = !DILocation(line: 351, column: 3, scope: !639)
!656 = distinct !DISubprogram(name: "wcstoumax", scope: !613, file: !613, line: 362, type: !657, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!630, !642, !646, !230}
!659 = !{!660, !661, !662}
!660 = !DILocalVariable(name: "nptr", arg: 1, scope: !656, file: !613, line: 362, type: !642)
!661 = !DILocalVariable(name: "endptr", arg: 2, scope: !656, file: !613, line: 362, type: !646)
!662 = !DILocalVariable(name: "base", arg: 3, scope: !656, file: !613, line: 362, type: !230)
!663 = !DILocation(line: 0, scope: !656)
!664 = !DILocation(line: 365, column: 10, scope: !656)
!665 = !DILocation(line: 365, column: 3, scope: !656)
!666 = distinct !DISubprogram(name: "stat", scope: !667, file: !667, line: 453, type: !668, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !707)
!667 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!668 = !DISubroutineType(types: !669)
!669 = !{!230, !235, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !672, line: 46, size: 1152, elements: !673)
!672 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!673 = !{!674, !676, !678, !680, !682, !684, !686, !687, !688, !689, !691, !693, !701, !702, !703}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !671, file: !672, line: 48, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !330, line: 145, baseType: !237)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !671, file: !672, line: 53, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !330, line: 148, baseType: !237)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !671, file: !672, line: 61, baseType: !679, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !330, line: 151, baseType: !237)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !671, file: !672, line: 62, baseType: !681, size: 32, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !330, line: 150, baseType: !7)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !671, file: !672, line: 64, baseType: !683, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !330, line: 146, baseType: !7)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !671, file: !672, line: 65, baseType: !685, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !330, line: 147, baseType: !7)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !671, file: !672, line: 67, baseType: !230, size: 32, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !671, file: !672, line: 69, baseType: !675, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !671, file: !672, line: 74, baseType: !329, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !671, file: !672, line: 78, baseType: !690, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !330, line: 174, baseType: !331)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !671, file: !672, line: 80, baseType: !692, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !330, line: 179, baseType: !331)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !671, file: !672, line: 91, baseType: !694, size: 128, offset: 576)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !695, line: 10, size: 128, elements: !696)
!695 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!696 = !{!697, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !694, file: !695, line: 12, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !330, line: 160, baseType: !331)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !694, file: !695, line: 16, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !330, line: 196, baseType: !331)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !671, file: !672, line: 92, baseType: !694, size: 128, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !671, file: !672, line: 93, baseType: !694, size: 128, offset: 832)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !671, file: !672, line: 106, baseType: !704, size: 192, offset: 960)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 192, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 3)
!707 = !{!708, !709}
!708 = !DILocalVariable(name: "__path", arg: 1, scope: !666, file: !667, line: 453, type: !235)
!709 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !666, file: !667, line: 453, type: !670)
!710 = !DILocation(line: 0, scope: !666)
!711 = !DILocation(line: 455, column: 10, scope: !666)
!712 = !DILocation(line: 455, column: 3, scope: !666)
!713 = distinct !DISubprogram(name: "lstat", scope: !667, file: !667, line: 460, type: !668, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !714)
!714 = !{!715, !716}
!715 = !DILocalVariable(name: "__path", arg: 1, scope: !713, file: !667, line: 460, type: !235)
!716 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !713, file: !667, line: 460, type: !670)
!717 = !DILocation(line: 0, scope: !713)
!718 = !DILocation(line: 462, column: 10, scope: !713)
!719 = !DILocation(line: 462, column: 3, scope: !713)
!720 = distinct !DISubprogram(name: "fstat", scope: !667, file: !667, line: 467, type: !721, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{!230, !230, !670}
!723 = !{!724, !725}
!724 = !DILocalVariable(name: "__fd", arg: 1, scope: !720, file: !667, line: 467, type: !230)
!725 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !720, file: !667, line: 467, type: !670)
!726 = !DILocation(line: 0, scope: !720)
!727 = !DILocation(line: 469, column: 10, scope: !720)
!728 = !DILocation(line: 469, column: 3, scope: !720)
!729 = distinct !DISubprogram(name: "fstatat", scope: !667, file: !667, line: 474, type: !730, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{!230, !230, !235, !670, !230}
!732 = !{!733, !734, !735, !736}
!733 = !DILocalVariable(name: "__fd", arg: 1, scope: !729, file: !667, line: 474, type: !230)
!734 = !DILocalVariable(name: "__filename", arg: 2, scope: !729, file: !667, line: 474, type: !235)
!735 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !729, file: !667, line: 474, type: !670)
!736 = !DILocalVariable(name: "__flag", arg: 4, scope: !729, file: !667, line: 474, type: !230)
!737 = !DILocation(line: 0, scope: !729)
!738 = !DILocation(line: 477, column: 10, scope: !729)
!739 = !DILocation(line: 477, column: 3, scope: !729)
!740 = distinct !DISubprogram(name: "mknod", scope: !667, file: !667, line: 483, type: !741, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!230, !235, !681, !675}
!743 = !{!744, !745, !746}
!744 = !DILocalVariable(name: "__path", arg: 1, scope: !740, file: !667, line: 483, type: !235)
!745 = !DILocalVariable(name: "__mode", arg: 2, scope: !740, file: !667, line: 483, type: !681)
!746 = !DILocalVariable(name: "__dev", arg: 3, scope: !740, file: !667, line: 483, type: !675)
!747 = !DILocation(line: 0, scope: !740)
!748 = !DILocation(line: 485, column: 10, scope: !740)
!749 = !DILocation(line: 485, column: 3, scope: !740)
!750 = distinct !DISubprogram(name: "mknodat", scope: !667, file: !667, line: 491, type: !751, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!230, !230, !235, !681, !675}
!753 = !{!754, !755, !756, !757}
!754 = !DILocalVariable(name: "__fd", arg: 1, scope: !750, file: !667, line: 491, type: !230)
!755 = !DILocalVariable(name: "__path", arg: 2, scope: !750, file: !667, line: 491, type: !235)
!756 = !DILocalVariable(name: "__mode", arg: 3, scope: !750, file: !667, line: 491, type: !681)
!757 = !DILocalVariable(name: "__dev", arg: 4, scope: !750, file: !667, line: 491, type: !675)
!758 = !DILocation(line: 0, scope: !750)
!759 = !DILocation(line: 494, column: 10, scope: !750)
!760 = !DILocation(line: 494, column: 3, scope: !750)
!761 = distinct !DISubprogram(name: "stat64", scope: !667, file: !667, line: 502, type: !762, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!762 = !DISubroutineType(types: !763)
!763 = !{!230, !235, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !672, line: 119, size: 1152, elements: !766)
!766 = !{!767, !768, !770, !771, !772, !773, !774, !775, !776, !777, !778, !780, !781, !782, !783}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !765, file: !672, line: 121, baseType: !675, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !765, file: !672, line: 123, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !330, line: 149, baseType: !237)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !765, file: !672, line: 124, baseType: !679, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !765, file: !672, line: 125, baseType: !681, size: 32, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !765, file: !672, line: 132, baseType: !683, size: 32, offset: 224)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !765, file: !672, line: 133, baseType: !685, size: 32, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !765, file: !672, line: 135, baseType: !230, size: 32, offset: 288)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !765, file: !672, line: 136, baseType: !675, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !765, file: !672, line: 137, baseType: !329, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !765, file: !672, line: 143, baseType: !690, size: 64, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !765, file: !672, line: 144, baseType: !779, size: 64, offset: 512)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !330, line: 180, baseType: !331)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !765, file: !672, line: 152, baseType: !694, size: 128, offset: 576)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !765, file: !672, line: 153, baseType: !694, size: 128, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !765, file: !672, line: 154, baseType: !694, size: 128, offset: 832)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !765, file: !672, line: 164, baseType: !704, size: 192, offset: 960)
!784 = !{!785, !786}
!785 = !DILocalVariable(name: "__path", arg: 1, scope: !761, file: !667, line: 502, type: !235)
!786 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !761, file: !667, line: 502, type: !764)
!787 = !DILocation(line: 0, scope: !761)
!788 = !DILocation(line: 504, column: 10, scope: !761)
!789 = !DILocation(line: 504, column: 3, scope: !761)
!790 = distinct !DISubprogram(name: "lstat64", scope: !667, file: !667, line: 509, type: !762, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !791)
!791 = !{!792, !793}
!792 = !DILocalVariable(name: "__path", arg: 1, scope: !790, file: !667, line: 509, type: !235)
!793 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !790, file: !667, line: 509, type: !764)
!794 = !DILocation(line: 0, scope: !790)
!795 = !DILocation(line: 511, column: 10, scope: !790)
!796 = !DILocation(line: 511, column: 3, scope: !790)
!797 = distinct !DISubprogram(name: "fstat64", scope: !667, file: !667, line: 516, type: !798, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!230, !230, !764}
!800 = !{!801, !802}
!801 = !DILocalVariable(name: "__fd", arg: 1, scope: !797, file: !667, line: 516, type: !230)
!802 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !797, file: !667, line: 516, type: !764)
!803 = !DILocation(line: 0, scope: !797)
!804 = !DILocation(line: 518, column: 10, scope: !797)
!805 = !DILocation(line: 518, column: 3, scope: !797)
!806 = distinct !DISubprogram(name: "fstatat64", scope: !667, file: !667, line: 523, type: !807, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!230, !230, !235, !764, !230}
!809 = !{!810, !811, !812, !813}
!810 = !DILocalVariable(name: "__fd", arg: 1, scope: !806, file: !667, line: 523, type: !230)
!811 = !DILocalVariable(name: "__filename", arg: 2, scope: !806, file: !667, line: 523, type: !235)
!812 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !806, file: !667, line: 523, type: !764)
!813 = !DILocalVariable(name: "__flag", arg: 4, scope: !806, file: !667, line: 523, type: !230)
!814 = !DILocation(line: 0, scope: !806)
!815 = !DILocation(line: 526, column: 10, scope: !806)
!816 = !DILocation(line: 526, column: 3, scope: !806)
!817 = distinct !DISubprogram(name: "debug_print_page_list", scope: !3, file: !3, line: 655, type: !818, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !230}
!820 = !{!821, !822}
!821 = !DILocalVariable(name: "order", arg: 1, scope: !817, file: !3, line: 655, type: !230)
!822 = !DILocalVariable(name: "p", scope: !817, file: !3, line: 657, type: !244)
!823 = !DILocation(line: 0, scope: !817)
!824 = !DILocation(line: 658, column: 43, scope: !817)
!825 = !DILocation(line: 659, column: 13, scope: !817)
!826 = !DILocation(line: 658, column: 3, scope: !817)
!827 = !DILocation(line: 661, column: 3, scope: !817)
!828 = !DILocation(line: 661, column: 12, scope: !817)
!829 = !DILocation(line: 663, column: 49, scope: !830)
!830 = distinct !DILexicalBlock(scope: !817, file: !3, line: 662, column: 5)
!831 = !DILocation(line: 663, column: 46, scope: !830)
!832 = !DILocation(line: 664, column: 11, scope: !830)
!833 = !DILocation(line: 664, column: 8, scope: !830)
!834 = !DILocation(line: 663, column: 7, scope: !830)
!835 = !DILocation(line: 665, column: 14, scope: !830)
!836 = distinct !{!836, !827, !837}
!837 = !DILocation(line: 666, column: 5, scope: !817)
!838 = !DILocation(line: 667, column: 3, scope: !817)
!839 = !DILocation(line: 668, column: 11, scope: !817)
!840 = !DILocation(line: 668, column: 3, scope: !817)
!841 = !DILocation(line: 669, column: 1, scope: !817)
!842 = distinct !DISubprogram(name: "ggc_alloc_typed_stat", scope: !3, file: !3, line: 1080, type: !843, scopeLine: 1082, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{!234, !5, !240}
!845 = !{!846, !847}
!846 = !DILocalVariable(name: "type", arg: 1, scope: !842, file: !3, line: 1080, type: !5)
!847 = !DILocalVariable(name: "size", arg: 2, scope: !842, file: !3, line: 1080, type: !240)
!848 = !DILocation(line: 0, scope: !842)
!849 = !DILocation(line: 1083, column: 10, scope: !842)
!850 = !DILocation(line: 1083, column: 3, scope: !842)
!851 = distinct !DISubprogram(name: "ggc_alloc_stat", scope: !3, file: !3, line: 1089, type: !852, scopeLine: 1090, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{!234, !240}
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862, !863, !866}
!855 = !DILocalVariable(name: "size", arg: 1, scope: !851, file: !3, line: 1089, type: !240)
!856 = !DILocalVariable(name: "order", scope: !851, file: !3, line: 1091, type: !240)
!857 = !DILocalVariable(name: "word", scope: !851, file: !3, line: 1091, type: !240)
!858 = !DILocalVariable(name: "bit", scope: !851, file: !3, line: 1091, type: !240)
!859 = !DILocalVariable(name: "object_offset", scope: !851, file: !3, line: 1091, type: !240)
!860 = !DILocalVariable(name: "object_size", scope: !851, file: !3, line: 1091, type: !240)
!861 = !DILocalVariable(name: "entry", scope: !851, file: !3, line: 1092, type: !249)
!862 = !DILocalVariable(name: "result", scope: !851, file: !3, line: 1093, type: !234)
!863 = !DILocalVariable(name: "new_entry", scope: !864, file: !3, line: 1115, type: !249)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 1114, column: 5)
!865 = distinct !DILexicalBlock(scope: !851, file: !3, line: 1113, column: 7)
!866 = !DILocalVariable(name: "hint", scope: !867, file: !3, line: 1154, type: !7)
!867 = distinct !DILexicalBlock(scope: !865, file: !3, line: 1149, column: 5)
!868 = !DILocation(line: 0, scope: !851)
!869 = !DILocation(line: 1095, column: 12, scope: !870)
!870 = distinct !DILexicalBlock(scope: !851, file: !3, line: 1095, column: 7)
!871 = !DILocation(line: 1095, column: 7, scope: !851)
!872 = !DILocation(line: 1103, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !3, line: 1101, column: 5)
!874 = !DILocation(line: 1097, column: 15, scope: !875)
!875 = distinct !DILexicalBlock(scope: !870, file: !3, line: 1096, column: 5)
!876 = !DILocation(line: 1098, column: 21, scope: !875)
!877 = !DILocation(line: 1099, column: 5, scope: !875)
!878 = !DILocation(line: 0, scope: !873)
!879 = !DILocation(line: 1103, column: 36, scope: !873)
!880 = !DILocation(line: 1103, column: 19, scope: !873)
!881 = !DILocation(line: 1104, column: 7, scope: !873)
!882 = distinct !{!882, !872, !881}
!883 = !DILocation(line: 1109, column: 11, scope: !851)
!884 = !DILocation(line: 0, scope: !870)
!885 = !DILocation(line: 1113, column: 13, scope: !865)
!886 = !DILocation(line: 1113, column: 21, scope: !865)
!887 = !DILocation(line: 1113, column: 31, scope: !865)
!888 = !DILocation(line: 1113, column: 48, scope: !865)
!889 = !DILocation(line: 1113, column: 7, scope: !851)
!890 = !DILocation(line: 1116, column: 31, scope: !864)
!891 = !DILocation(line: 1116, column: 19, scope: !864)
!892 = !DILocation(line: 0, scope: !864)
!893 = !DILocation(line: 1118, column: 37, scope: !864)
!894 = !DILocation(line: 1118, column: 35, scope: !864)
!895 = !DILocation(line: 1118, column: 18, scope: !864)
!896 = !DILocation(line: 1118, column: 33, scope: !864)
!897 = !DILocation(line: 1119, column: 7, scope: !864)
!898 = !DILocation(line: 1123, column: 7, scope: !864)
!899 = !DILocation(line: 1123, column: 25, scope: !864)
!900 = !DILocation(line: 1123, column: 14, scope: !864)
!901 = !DILocation(line: 1123, column: 44, scope: !864)
!902 = !DILocation(line: 1123, column: 39, scope: !864)
!903 = !DILocation(line: 1124, column: 16, scope: !864)
!904 = !DILocation(line: 1124, column: 31, scope: !864)
!905 = !DILocation(line: 1124, column: 2, scope: !864)
!906 = distinct !{!906, !898, !907}
!907 = !DILocation(line: 1124, column: 33, scope: !864)
!908 = !DILocation(line: 1129, column: 11, scope: !864)
!909 = !DILocation(line: 1130, column: 2, scope: !910)
!910 = distinct !DILexicalBlock(scope: !864, file: !3, line: 1129, column: 11)
!911 = !DILocation(line: 1130, column: 22, scope: !910)
!912 = !DILocation(line: 1132, column: 9, scope: !910)
!913 = !DILocation(line: 1132, column: 14, scope: !910)
!914 = !DILocation(line: 1136, column: 18, scope: !864)
!915 = !DILocation(line: 1136, column: 23, scope: !864)
!916 = !DILocation(line: 1137, column: 18, scope: !864)
!917 = !DILocation(line: 1137, column: 23, scope: !864)
!918 = !DILocation(line: 1139, column: 22, scope: !864)
!919 = !DILocation(line: 1143, column: 18, scope: !864)
!920 = !DILocation(line: 1143, column: 32, scope: !864)
!921 = !DILocation(line: 1147, column: 5, scope: !864)
!922 = !DILocation(line: 1154, column: 30, scope: !867)
!923 = !DILocation(line: 1154, column: 23, scope: !867)
!924 = !DILocation(line: 0, scope: !867)
!925 = !DILocation(line: 1155, column: 19, scope: !867)
!926 = !DILocation(line: 1155, column: 14, scope: !867)
!927 = !DILocation(line: 1156, column: 18, scope: !867)
!928 = !DILocation(line: 1156, column: 13, scope: !867)
!929 = !DILocation(line: 1159, column: 12, scope: !930)
!930 = distinct !DILexicalBlock(scope: !867, file: !3, line: 1159, column: 11)
!931 = !DILocation(line: 1159, column: 42, scope: !930)
!932 = !DILocation(line: 1159, column: 11, scope: !867)
!933 = !DILocation(line: 1162, column: 4, scope: !934)
!934 = distinct !DILexicalBlock(scope: !930, file: !3, line: 1160, column: 2)
!935 = !DILocation(line: 0, scope: !934)
!936 = !DILocation(line: 1162, column: 12, scope: !934)
!937 = !DILocation(line: 1162, column: 34, scope: !934)
!938 = !DILocation(line: 1168, column: 4, scope: !934)
!939 = !DILocation(line: 1163, column: 6, scope: !934)
!940 = distinct !{!940, !933, !941}
!941 = !DILocation(line: 1163, column: 8, scope: !934)
!942 = !DILocation(line: 1169, column: 6, scope: !934)
!943 = distinct !{!943, !938, !944}
!944 = !DILocation(line: 1169, column: 8, scope: !934)
!945 = !DILocation(line: 1172, column: 16, scope: !934)
!946 = !DILocation(line: 1172, column: 37, scope: !934)
!947 = !DILocation(line: 1172, column: 11, scope: !934)
!948 = !DILocation(line: 1173, column: 2, scope: !934)
!949 = !DILocation(line: 1176, column: 30, scope: !867)
!950 = !DILocation(line: 1176, column: 28, scope: !867)
!951 = !DILocation(line: 1178, column: 23, scope: !867)
!952 = !DILocation(line: 1178, column: 28, scope: !867)
!953 = !DILocation(line: 0, scope: !865)
!954 = !DILocation(line: 1182, column: 47, scope: !851)
!955 = !DILocation(line: 1182, column: 3, scope: !851)
!956 = !DILocation(line: 1182, column: 25, scope: !851)
!957 = !DILocation(line: 1188, column: 16, scope: !958)
!958 = distinct !DILexicalBlock(scope: !851, file: !3, line: 1188, column: 7)
!959 = !DILocation(line: 1188, column: 7, scope: !958)
!960 = !DILocation(line: 1188, column: 33, scope: !958)
!961 = !DILocation(line: 1189, column: 7, scope: !958)
!962 = !DILocation(line: 1189, column: 17, scope: !958)
!963 = !DILocation(line: 1189, column: 22, scope: !958)
!964 = !DILocation(line: 1190, column: 7, scope: !958)
!965 = !DILocation(line: 1190, column: 23, scope: !958)
!966 = !DILocation(line: 1190, column: 40, scope: !958)
!967 = !DILocation(line: 1188, column: 7, scope: !851)
!968 = !DILocation(line: 1193, column: 22, scope: !969)
!969 = distinct !DILexicalBlock(scope: !958, file: !3, line: 1191, column: 5)
!970 = !DILocation(line: 1198, column: 14, scope: !969)
!971 = !DILocation(line: 1198, column: 20, scope: !969)
!972 = !DILocation(line: 1198, column: 25, scope: !969)
!973 = !DILocation(line: 1199, column: 19, scope: !969)
!974 = !DILocation(line: 1202, column: 21, scope: !969)
!975 = !DILocation(line: 1202, column: 14, scope: !969)
!976 = !DILocation(line: 1202, column: 19, scope: !969)
!977 = !DILocation(line: 1203, column: 7, scope: !969)
!978 = !DILocation(line: 1203, column: 28, scope: !969)
!979 = !DILocation(line: 1203, column: 33, scope: !969)
!980 = !DILocation(line: 1204, column: 27, scope: !969)
!981 = !DILocation(line: 1205, column: 5, scope: !969)
!982 = !DILocation(line: 1208, column: 19, scope: !851)
!983 = !DILocation(line: 1208, column: 24, scope: !851)
!984 = !DILocation(line: 1238, column: 15, scope: !851)
!985 = !DILocation(line: 1241, column: 25, scope: !851)
!986 = !DILocation(line: 1276, column: 3, scope: !851)
!987 = distinct !DISubprogram(name: "alloc_page", scope: !3, file: !3, line: 734, type: !988, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !990)
!988 = !DISubroutineType(types: !989)
!989 = !{!249, !7}
!990 = !{!991, !992, !993, !994, !996, !997, !998, !999, !1000, !1001, !1002, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1014}
!991 = !DILocalVariable(name: "order", arg: 1, scope: !987, file: !3, line: 734, type: !7)
!992 = !DILocalVariable(name: "entry", scope: !987, file: !3, line: 736, type: !249)
!993 = !DILocalVariable(name: "p", scope: !987, file: !3, line: 736, type: !249)
!994 = !DILocalVariable(name: "pp", scope: !987, file: !3, line: 736, type: !995)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!996 = !DILocalVariable(name: "page", scope: !987, file: !3, line: 737, type: !232)
!997 = !DILocalVariable(name: "num_objects", scope: !987, file: !3, line: 738, type: !240)
!998 = !DILocalVariable(name: "bitmap_size", scope: !987, file: !3, line: 739, type: !240)
!999 = !DILocalVariable(name: "page_entry_size", scope: !987, file: !3, line: 740, type: !240)
!1000 = !DILocalVariable(name: "entry_size", scope: !987, file: !3, line: 741, type: !240)
!1001 = !DILocalVariable(name: "group", scope: !987, file: !3, line: 743, type: !286)
!1002 = !DILocalVariable(name: "allocation", scope: !1003, file: !3, line: 815, type: !232)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 810, column: 5)
!1004 = distinct !DILexicalBlock(scope: !987, file: !3, line: 761, column: 7)
!1005 = !DILocalVariable(name: "a", scope: !1003, file: !3, line: 815, type: !232)
!1006 = !DILocalVariable(name: "enda", scope: !1003, file: !3, line: 815, type: !232)
!1007 = !DILocalVariable(name: "alloc_size", scope: !1003, file: !3, line: 816, type: !240)
!1008 = !DILocalVariable(name: "head_slop", scope: !1003, file: !3, line: 816, type: !240)
!1009 = !DILocalVariable(name: "tail_slop", scope: !1003, file: !3, line: 816, type: !240)
!1010 = !DILocalVariable(name: "multiple_pages", scope: !1003, file: !3, line: 817, type: !230)
!1011 = !DILocalVariable(name: "e", scope: !1012, file: !3, line: 863, type: !249)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 862, column: 2)
!1013 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 861, column: 11)
!1014 = !DILocalVariable(name: "f", scope: !1012, file: !3, line: 863, type: !249)
!1015 = !DILocation(line: 0, scope: !987)
!1016 = !DILocation(line: 746, column: 17, scope: !987)
!1017 = !DILocation(line: 747, column: 17, scope: !987)
!1018 = !DILocation(line: 748, column: 57, scope: !987)
!1019 = !DILocation(line: 749, column: 30, scope: !987)
!1020 = !DILocation(line: 749, column: 28, scope: !987)
!1021 = !DILocation(line: 750, column: 22, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !987, file: !3, line: 750, column: 7)
!1023 = !DILocation(line: 750, column: 18, scope: !1022)
!1024 = !DILocation(line: 750, column: 7, scope: !987)
!1025 = !DILocation(line: 757, column: 8, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !987, file: !3, line: 757, column: 3)
!1027 = !DILocation(line: 0, scope: !1026)
!1028 = !DILocation(line: 757, column: 3, scope: !1026)
!1029 = !DILocation(line: 758, column: 12, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 758, column: 9)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 757, column: 3)
!1032 = !DILocation(line: 758, column: 18, scope: !1030)
!1033 = !DILocation(line: 758, column: 9, scope: !1031)
!1034 = !DILocation(line: 757, column: 49, scope: !1031)
!1035 = !DILocation(line: 757, column: 3, scope: !1031)
!1036 = distinct !{!1036, !1028, !1037}
!1037 = !DILocation(line: 759, column: 7, scope: !1026)
!1038 = !DILocation(line: 764, column: 16, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 762, column: 5)
!1040 = !DILocation(line: 764, column: 11, scope: !1039)
!1041 = !DILocation(line: 765, column: 17, scope: !1039)
!1042 = !DILocation(line: 768, column: 18, scope: !1039)
!1043 = !DILocation(line: 772, column: 14, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 772, column: 11)
!1045 = !DILocation(line: 772, column: 11, scope: !1044)
!1046 = !DILocation(line: 772, column: 20, scope: !1044)
!1047 = !DILocation(line: 0, scope: !1044)
!1048 = !DILocation(line: 772, column: 11, scope: !1039)
!1049 = !DILocation(line: 775, column: 4, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 773, column: 2)
!1051 = !DILocation(line: 776, column: 2, scope: !1050)
!1052 = !DILocation(line: 778, column: 2, scope: !1044)
!1053 = !DILocation(line: 817, column: 40, scope: !1003)
!1054 = !DILocation(line: 0, scope: !1003)
!1055 = !DILocation(line: 819, column: 11, scope: !1003)
!1056 = !DILocation(line: 823, column: 20, scope: !1003)
!1057 = !DILocation(line: 825, column: 25, scope: !1003)
!1058 = !DILocation(line: 825, column: 49, scope: !1003)
!1059 = !DILocation(line: 825, column: 45, scope: !1003)
!1060 = !DILocation(line: 825, column: 58, scope: !1003)
!1061 = !DILocation(line: 825, column: 65, scope: !1003)
!1062 = !DILocation(line: 825, column: 63, scope: !1003)
!1063 = !DILocation(line: 825, column: 14, scope: !1003)
!1064 = !DILocation(line: 826, column: 24, scope: !1003)
!1065 = !DILocation(line: 827, column: 11, scope: !1003)
!1066 = !DILocation(line: 828, column: 35, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 827, column: 11)
!1068 = !DILocation(line: 828, column: 63, scope: !1067)
!1069 = !DILocation(line: 828, column: 49, scope: !1067)
!1070 = !DILocation(line: 828, column: 2, scope: !1067)
!1071 = !DILocation(line: 830, column: 25, scope: !1067)
!1072 = !DILocation(line: 830, column: 38, scope: !1067)
!1073 = !DILocation(line: 0, scope: !1067)
!1074 = !DILocation(line: 831, column: 25, scope: !1003)
!1075 = !DILocation(line: 831, column: 38, scope: !1003)
!1076 = !DILocation(line: 836, column: 21, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 836, column: 11)
!1078 = !DILocation(line: 836, column: 11, scope: !1003)
!1079 = !DILocation(line: 837, column: 10, scope: !1077)
!1080 = !DILocation(line: 837, column: 29, scope: !1077)
!1081 = !DILocation(line: 837, column: 2, scope: !1077)
!1082 = !DILocation(line: 842, column: 18, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 842, column: 8)
!1084 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 839, column: 2)
!1085 = !DILocation(line: 842, column: 8, scope: !1084)
!1086 = !DILocation(line: 844, column: 13, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 843, column: 6)
!1088 = !DILocation(line: 846, column: 6, scope: !1087)
!1089 = !DILocation(line: 847, column: 4, scope: !1084)
!1090 = !DILocation(line: 848, column: 12, scope: !1084)
!1091 = !DILocation(line: 0, scope: !1077)
!1092 = !DILocation(line: 853, column: 23, scope: !1003)
!1093 = !DILocation(line: 853, column: 19, scope: !1003)
!1094 = !DILocation(line: 854, column: 14, scope: !1003)
!1095 = !DILocation(line: 854, column: 25, scope: !1003)
!1096 = !DILocation(line: 855, column: 14, scope: !1003)
!1097 = !DILocation(line: 855, column: 25, scope: !1003)
!1098 = !DILocation(line: 856, column: 14, scope: !1003)
!1099 = !DILocation(line: 856, column: 21, scope: !1003)
!1100 = !DILocation(line: 857, column: 21, scope: !1003)
!1101 = !DILocation(line: 858, column: 22, scope: !1003)
!1102 = !DILocation(line: 861, column: 11, scope: !1003)
!1103 = !DILocation(line: 863, column: 33, scope: !1012)
!1104 = !DILocation(line: 0, scope: !1012)
!1105 = !DILocation(line: 864, column: 22, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 864, column: 4)
!1107 = !DILocation(line: 864, column: 18, scope: !1106)
!1108 = !DILocation(line: 0, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 865, column: 6)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 864, column: 4)
!1111 = !DILocation(line: 864, column: 9, scope: !1106)
!1112 = !DILocation(line: 0, scope: !1106)
!1113 = !DILocation(line: 864, column: 34, scope: !1110)
!1114 = !DILocation(line: 864, column: 4, scope: !1106)
!1115 = !DILocation(line: 866, column: 12, scope: !1109)
!1116 = !DILocation(line: 867, column: 11, scope: !1109)
!1117 = !DILocation(line: 867, column: 17, scope: !1109)
!1118 = !DILocation(line: 868, column: 21, scope: !1109)
!1119 = !DILocation(line: 868, column: 11, scope: !1109)
!1120 = !DILocation(line: 868, column: 17, scope: !1109)
!1121 = !DILocation(line: 869, column: 11, scope: !1109)
!1122 = !DILocation(line: 869, column: 16, scope: !1109)
!1123 = !DILocation(line: 870, column: 11, scope: !1109)
!1124 = !DILocation(line: 870, column: 17, scope: !1109)
!1125 = !DILocation(line: 871, column: 11, scope: !1109)
!1126 = !DILocation(line: 871, column: 16, scope: !1109)
!1127 = !DILocation(line: 864, column: 50, scope: !1110)
!1128 = !DILocation(line: 864, column: 45, scope: !1110)
!1129 = !DILocation(line: 864, column: 4, scope: !1110)
!1130 = distinct !{!1130, !1114, !1131}
!1131 = !DILocation(line: 873, column: 6, scope: !1106)
!1132 = !DILocation(line: 874, column: 17, scope: !1012)
!1133 = !DILocation(line: 875, column: 2, scope: !1012)
!1134 = !DILocation(line: 0, scope: !1004)
!1135 = !DILocation(line: 879, column: 13, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !987, file: !3, line: 879, column: 7)
!1137 = !DILocation(line: 879, column: 7, scope: !987)
!1138 = !DILocation(line: 880, column: 13, scope: !1136)
!1139 = !DILocation(line: 880, column: 5, scope: !1136)
!1140 = !DILocation(line: 882, column: 10, scope: !987)
!1141 = !DILocation(line: 882, column: 16, scope: !987)
!1142 = !DILocation(line: 883, column: 10, scope: !987)
!1143 = !DILocation(line: 883, column: 15, scope: !987)
!1144 = !DILocation(line: 884, column: 28, scope: !987)
!1145 = !DILocation(line: 884, column: 10, scope: !987)
!1146 = !DILocation(line: 884, column: 24, scope: !987)
!1147 = !DILocation(line: 885, column: 18, scope: !987)
!1148 = !DILocation(line: 885, column: 10, scope: !987)
!1149 = !DILocation(line: 885, column: 16, scope: !987)
!1150 = !DILocation(line: 886, column: 29, scope: !987)
!1151 = !DILocation(line: 886, column: 10, scope: !987)
!1152 = !DILocation(line: 886, column: 27, scope: !987)
!1153 = !DILocation(line: 887, column: 10, scope: !987)
!1154 = !DILocation(line: 887, column: 24, scope: !987)
!1155 = !DILocation(line: 889, column: 56, scope: !987)
!1156 = !DILocation(line: 889, column: 51, scope: !987)
!1157 = !DILocation(line: 889, column: 31, scope: !987)
!1158 = !DILocation(line: 892, column: 10, scope: !987)
!1159 = !DILocation(line: 892, column: 16, scope: !987)
!1160 = !DILocation(line: 893, column: 3, scope: !987)
!1161 = !DILocation(line: 899, column: 41, scope: !987)
!1162 = !DILocation(line: 899, column: 25, scope: !987)
!1163 = !DILocation(line: 898, column: 31, scope: !987)
!1164 = !DILocation(line: 898, column: 3, scope: !987)
!1165 = !DILocation(line: 899, column: 5, scope: !987)
!1166 = !DILocation(line: 901, column: 3, scope: !987)
!1167 = !DILocation(line: 909, column: 3, scope: !987)
!1168 = distinct !DISubprogram(name: "push_by_depth", scope: !3, file: !3, line: 535, type: !1169, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !244, !272}
!1171 = !{!1172, !1173}
!1172 = !DILocalVariable(name: "p", arg: 1, scope: !1168, file: !3, line: 535, type: !244)
!1173 = !DILocalVariable(name: "s", arg: 2, scope: !1168, file: !3, line: 535, type: !272)
!1174 = !DILocation(line: 0, scope: !1168)
!1175 = !DILocation(line: 537, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 537, column: 7)
!1177 = !DILocation(line: 537, column: 30, scope: !1176)
!1178 = !DILocation(line: 537, column: 25, scope: !1176)
!1179 = !DILocation(line: 537, column: 7, scope: !1168)
!1180 = !DILocation(line: 539, column: 22, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 538, column: 5)
!1182 = !DILocation(line: 540, column: 20, scope: !1181)
!1183 = !DILocation(line: 540, column: 18, scope: !1181)
!1184 = !DILocation(line: 541, column: 23, scope: !1181)
!1185 = !DILocation(line: 541, column: 21, scope: !1181)
!1186 = !DILocation(line: 544, column: 16, scope: !1168)
!1187 = !DILocation(line: 543, column: 5, scope: !1181)
!1188 = !DILocation(line: 544, column: 5, scope: !1168)
!1189 = !DILocation(line: 544, column: 3, scope: !1168)
!1190 = !DILocation(line: 544, column: 33, scope: !1168)
!1191 = !DILocation(line: 545, column: 5, scope: !1168)
!1192 = !DILocation(line: 545, column: 34, scope: !1168)
!1193 = !DILocation(line: 545, column: 3, scope: !1168)
!1194 = !DILocation(line: 545, column: 38, scope: !1168)
!1195 = !DILocation(line: 546, column: 1, scope: !1168)
!1196 = distinct !DISubprogram(name: "push_depth", scope: !3, file: !3, line: 522, type: !1197, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !7}
!1199 = !{!1200}
!1200 = !DILocalVariable(name: "i", arg: 1, scope: !1196, file: !3, line: 522, type: !7)
!1201 = !DILocation(line: 0, scope: !1196)
!1202 = !DILocation(line: 524, column: 9, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 524, column: 7)
!1204 = !DILocation(line: 524, column: 27, scope: !1203)
!1205 = !DILocation(line: 524, column: 22, scope: !1203)
!1206 = !DILocation(line: 524, column: 7, scope: !1196)
!1207 = !DILocation(line: 529, column: 5, scope: !1196)
!1208 = !DILocation(line: 526, column: 19, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 525, column: 5)
!1210 = !DILocation(line: 527, column: 17, scope: !1209)
!1211 = !DILocation(line: 527, column: 15, scope: !1209)
!1212 = !DILocation(line: 528, column: 5, scope: !1209)
!1213 = !DILocation(line: 529, column: 25, scope: !1196)
!1214 = !DILocation(line: 529, column: 3, scope: !1196)
!1215 = !DILocation(line: 529, column: 29, scope: !1196)
!1216 = !DILocation(line: 530, column: 1, scope: !1196)
!1217 = distinct !DISubprogram(name: "gt_ggc_m_S", scope: !3, file: !3, line: 1282, type: !1218, scopeLine: 1283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !238}
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226}
!1221 = !DILocalVariable(name: "p", arg: 1, scope: !1217, file: !3, line: 1282, type: !238)
!1222 = !DILocalVariable(name: "entry", scope: !1217, file: !3, line: 1284, type: !244)
!1223 = !DILocalVariable(name: "bit", scope: !1217, file: !3, line: 1285, type: !7)
!1224 = !DILocalVariable(name: "word", scope: !1217, file: !3, line: 1285, type: !7)
!1225 = !DILocalVariable(name: "mask", scope: !1217, file: !3, line: 1286, type: !237)
!1226 = !DILocalVariable(name: "offset", scope: !1217, file: !3, line: 1287, type: !237)
!1227 = !DILocation(line: 0, scope: !1217)
!1228 = !DILocation(line: 1289, column: 8, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 1289, column: 7)
!1230 = !DILocation(line: 1289, column: 10, scope: !1229)
!1231 = !DILocation(line: 1289, column: 14, scope: !1229)
!1232 = !DILocation(line: 1289, column: 7, scope: !1217)
!1233 = !DILocation(line: 1293, column: 11, scope: !1217)
!1234 = !DILocation(line: 1294, column: 3, scope: !1217)
!1235 = !DILocation(line: 1300, column: 39, scope: !1217)
!1236 = !DILocation(line: 1300, column: 30, scope: !1217)
!1237 = !DILocation(line: 1300, column: 72, scope: !1217)
!1238 = !DILocation(line: 1300, column: 47, scope: !1217)
!1239 = !DILocation(line: 1300, column: 45, scope: !1217)
!1240 = !DILocation(line: 1301, column: 7, scope: !1217)
!1241 = !DILocation(line: 1306, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 1302, column: 5)
!1243 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 1301, column: 7)
!1244 = !DILocation(line: 1307, column: 30, scope: !1242)
!1245 = !DILocation(line: 1308, column: 7, scope: !1242)
!1246 = !DILocation(line: 1309, column: 7, scope: !1242)
!1247 = !DILocation(line: 1312, column: 9, scope: !1217)
!1248 = !DILocation(line: 1313, column: 14, scope: !1217)
!1249 = !DILocation(line: 1314, column: 36, scope: !1217)
!1250 = !DILocation(line: 1314, column: 28, scope: !1217)
!1251 = !DILocation(line: 1317, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 1317, column: 7)
!1253 = !DILocation(line: 1317, column: 29, scope: !1252)
!1254 = !DILocation(line: 1317, column: 7, scope: !1217)
!1255 = !DILocation(line: 1321, column: 25, scope: !1217)
!1256 = !DILocation(line: 1322, column: 10, scope: !1217)
!1257 = !DILocation(line: 1322, column: 27, scope: !1217)
!1258 = !DILocation(line: 1327, column: 3, scope: !1217)
!1259 = !DILocation(line: 1328, column: 1, scope: !1217)
!1260 = distinct !DISubprogram(name: "ggc_allocated_p", scope: !3, file: !3, line: 562, type: !1261, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!230, !238}
!1263 = !{!1264, !1265, !1267, !1268, !1269, !1270}
!1264 = !DILocalVariable(name: "p", arg: 1, scope: !1260, file: !3, line: 562, type: !238)
!1265 = !DILocalVariable(name: "base", scope: !1260, file: !3, line: 564, type: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1267 = !DILocalVariable(name: "L1", scope: !1260, file: !3, line: 565, type: !240)
!1268 = !DILocalVariable(name: "L2", scope: !1260, file: !3, line: 565, type: !240)
!1269 = !DILocalVariable(name: "table", scope: !1260, file: !3, line: 570, type: !394)
!1270 = !DILocalVariable(name: "high_bits", scope: !1260, file: !3, line: 571, type: !240)
!1271 = !DILocation(line: 0, scope: !1260)
!1272 = !DILocation(line: 571, column: 22, scope: !1260)
!1273 = !DILocation(line: 571, column: 33, scope: !1260)
!1274 = !DILocation(line: 572, column: 3, scope: !1260)
!1275 = !DILocation(line: 574, column: 17, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 574, column: 11)
!1277 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 573, column: 5)
!1278 = !DILocation(line: 574, column: 11, scope: !1277)
!1279 = !DILocation(line: 576, column: 18, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 576, column: 11)
!1281 = !DILocation(line: 576, column: 28, scope: !1280)
!1282 = !DILocation(line: 576, column: 11, scope: !1277)
!1283 = !DILocation(line: 578, column: 22, scope: !1277)
!1284 = distinct !{!1284, !1274, !1285}
!1285 = !DILocation(line: 579, column: 5, scope: !1260)
!1286 = !DILocation(line: 584, column: 8, scope: !1260)
!1287 = !DILocation(line: 585, column: 8, scope: !1260)
!1288 = !DILocation(line: 587, column: 10, scope: !1260)
!1289 = !DILocation(line: 587, column: 19, scope: !1260)
!1290 = !DILocation(line: 587, column: 22, scope: !1260)
!1291 = !DILocation(line: 587, column: 3, scope: !1260)
!1292 = !DILocation(line: 588, column: 1, scope: !1260)
!1293 = distinct !DISubprogram(name: "lookup_page_table_entry", scope: !3, file: !3, line: 594, type: !1294, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1296)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!244, !238}
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302}
!1297 = !DILocalVariable(name: "p", arg: 1, scope: !1293, file: !3, line: 594, type: !238)
!1298 = !DILocalVariable(name: "base", scope: !1293, file: !3, line: 596, type: !1266)
!1299 = !DILocalVariable(name: "L1", scope: !1293, file: !3, line: 597, type: !240)
!1300 = !DILocalVariable(name: "L2", scope: !1293, file: !3, line: 597, type: !240)
!1301 = !DILocalVariable(name: "table", scope: !1293, file: !3, line: 602, type: !394)
!1302 = !DILocalVariable(name: "high_bits", scope: !1293, file: !3, line: 603, type: !240)
!1303 = !DILocation(line: 0, scope: !1293)
!1304 = !DILocation(line: 603, column: 22, scope: !1293)
!1305 = !DILocation(line: 603, column: 33, scope: !1293)
!1306 = !DILocation(line: 604, column: 3, scope: !1293)
!1307 = !DILocation(line: 604, column: 17, scope: !1293)
!1308 = !DILocation(line: 604, column: 27, scope: !1293)
!1309 = !DILocation(line: 605, column: 20, scope: !1293)
!1310 = distinct !{!1310, !1306, !1309}
!1311 = !DILocation(line: 610, column: 8, scope: !1293)
!1312 = !DILocation(line: 611, column: 8, scope: !1293)
!1313 = !DILocation(line: 613, column: 10, scope: !1293)
!1314 = !DILocation(line: 613, column: 3, scope: !1293)
!1315 = distinct !DISubprogram(name: "ggc_set_mark", scope: !3, file: !3, line: 1335, type: !1261, scopeLine: 1336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321}
!1317 = !DILocalVariable(name: "p", arg: 1, scope: !1315, file: !3, line: 1335, type: !238)
!1318 = !DILocalVariable(name: "entry", scope: !1315, file: !3, line: 1337, type: !244)
!1319 = !DILocalVariable(name: "bit", scope: !1315, file: !3, line: 1338, type: !7)
!1320 = !DILocalVariable(name: "word", scope: !1315, file: !3, line: 1338, type: !7)
!1321 = !DILocalVariable(name: "mask", scope: !1315, file: !3, line: 1339, type: !237)
!1322 = !DILocation(line: 0, scope: !1315)
!1323 = !DILocation(line: 1343, column: 11, scope: !1315)
!1324 = !DILocation(line: 1344, column: 3, scope: !1315)
!1325 = !DILocation(line: 1348, column: 9, scope: !1315)
!1326 = !DILocation(line: 1349, column: 14, scope: !1315)
!1327 = !DILocation(line: 1350, column: 36, scope: !1315)
!1328 = !DILocation(line: 1350, column: 28, scope: !1315)
!1329 = !DILocation(line: 1353, column: 7, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 1353, column: 7)
!1331 = !DILocation(line: 1353, column: 29, scope: !1330)
!1332 = !DILocation(line: 1353, column: 7, scope: !1315)
!1333 = !DILocation(line: 1357, column: 25, scope: !1315)
!1334 = !DILocation(line: 1358, column: 10, scope: !1315)
!1335 = !DILocation(line: 1358, column: 27, scope: !1315)
!1336 = !DILocation(line: 1363, column: 3, scope: !1315)
!1337 = !DILocation(line: 1364, column: 1, scope: !1315)
!1338 = distinct !DISubprogram(name: "ggc_marked_p", scope: !3, file: !3, line: 1371, type: !1261, scopeLine: 1372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344}
!1340 = !DILocalVariable(name: "p", arg: 1, scope: !1338, file: !3, line: 1371, type: !238)
!1341 = !DILocalVariable(name: "entry", scope: !1338, file: !3, line: 1373, type: !244)
!1342 = !DILocalVariable(name: "bit", scope: !1338, file: !3, line: 1374, type: !7)
!1343 = !DILocalVariable(name: "word", scope: !1338, file: !3, line: 1374, type: !7)
!1344 = !DILocalVariable(name: "mask", scope: !1338, file: !3, line: 1375, type: !237)
!1345 = !DILocation(line: 0, scope: !1338)
!1346 = !DILocation(line: 1379, column: 11, scope: !1338)
!1347 = !DILocation(line: 1380, column: 3, scope: !1338)
!1348 = !DILocation(line: 1384, column: 9, scope: !1338)
!1349 = !DILocation(line: 1385, column: 14, scope: !1338)
!1350 = !DILocation(line: 1386, column: 36, scope: !1338)
!1351 = !DILocation(line: 1386, column: 28, scope: !1338)
!1352 = !DILocation(line: 1388, column: 11, scope: !1338)
!1353 = !DILocation(line: 1388, column: 33, scope: !1338)
!1354 = !DILocation(line: 1388, column: 41, scope: !1338)
!1355 = !DILocation(line: 1388, column: 3, scope: !1338)
!1356 = distinct !DISubprogram(name: "ggc_get_size", scope: !3, file: !3, line: 1394, type: !1357, scopeLine: 1395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!240, !238}
!1359 = !{!1360, !1361}
!1360 = !DILocalVariable(name: "p", arg: 1, scope: !1356, file: !3, line: 1394, type: !238)
!1361 = !DILocalVariable(name: "pe", scope: !1356, file: !3, line: 1396, type: !244)
!1362 = !DILocation(line: 0, scope: !1356)
!1363 = !DILocation(line: 1396, column: 20, scope: !1356)
!1364 = !DILocation(line: 1397, column: 10, scope: !1356)
!1365 = !DILocation(line: 1397, column: 3, scope: !1356)
!1366 = distinct !DISubprogram(name: "ggc_free", scope: !3, file: !3, line: 1403, type: !1367, scopeLine: 1404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1369)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{null, !234}
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1376, !1377, !1378, !1381}
!1370 = !DILocalVariable(name: "p", arg: 1, scope: !1366, file: !3, line: 1403, type: !234)
!1371 = !DILocalVariable(name: "pe", scope: !1366, file: !3, line: 1405, type: !244)
!1372 = !DILocalVariable(name: "order", scope: !1366, file: !3, line: 1406, type: !240)
!1373 = !DILocalVariable(name: "size", scope: !1366, file: !3, line: 1407, type: !240)
!1374 = !DILocalVariable(name: "bit_offset", scope: !1375, file: !3, line: 1438, type: !7)
!1375 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1437, column: 3)
!1376 = !DILocalVariable(name: "word", scope: !1375, file: !3, line: 1438, type: !7)
!1377 = !DILocalVariable(name: "bit", scope: !1375, file: !3, line: 1438, type: !7)
!1378 = !DILocalVariable(name: "p", scope: !1379, file: !3, line: 1450, type: !244)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 1449, column: 7)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 1448, column: 9)
!1381 = !DILocalVariable(name: "q", scope: !1379, file: !3, line: 1450, type: !244)
!1382 = !DILocation(line: 0, scope: !1366)
!1383 = !DILocation(line: 1405, column: 20, scope: !1366)
!1384 = !DILocation(line: 1406, column: 22, scope: !1366)
!1385 = !DILocation(line: 1406, column: 18, scope: !1366)
!1386 = !DILocation(line: 1407, column: 17, scope: !1366)
!1387 = !DILocation(line: 1440, column: 17, scope: !1375)
!1388 = !DILocation(line: 1443, column: 18, scope: !1375)
!1389 = !DILocation(line: 1444, column: 23, scope: !1375)
!1390 = !DILocation(line: 1445, column: 22, scope: !1375)
!1391 = !DILocation(line: 0, scope: !1375)
!1392 = !DILocation(line: 1446, column: 33, scope: !1375)
!1393 = !DILocation(line: 1446, column: 27, scope: !1375)
!1394 = !DILocation(line: 1446, column: 5, scope: !1375)
!1395 = !DILocation(line: 1446, column: 24, scope: !1375)
!1396 = !DILocation(line: 1448, column: 13, scope: !1380)
!1397 = !DILocation(line: 1448, column: 29, scope: !1380)
!1398 = !DILocation(line: 1448, column: 32, scope: !1380)
!1399 = !DILocation(line: 1448, column: 9, scope: !1375)
!1400 = !DILocation(line: 1459, column: 10, scope: !1379)
!1401 = !DILocation(line: 0, scope: !1379)
!1402 = !DILocation(line: 1460, column: 6, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 1460, column: 6)
!1404 = !DILocation(line: 1460, column: 8, scope: !1403)
!1405 = !DILocation(line: 1460, column: 14, scope: !1403)
!1406 = !DILocation(line: 1460, column: 31, scope: !1403)
!1407 = !DILocation(line: 1460, column: 6, scope: !1379)
!1408 = !DILocation(line: 1462, column: 14, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 1461, column: 4)
!1410 = !DILocation(line: 1464, column: 9, scope: !1409)
!1411 = !DILocation(line: 1464, column: 14, scope: !1409)
!1412 = !DILocation(line: 1469, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 1469, column: 10)
!1414 = !DILocation(line: 1469, column: 10, scope: !1409)
!1415 = !DILocation(line: 1470, column: 8, scope: !1413)
!1416 = !DILocation(line: 1470, column: 28, scope: !1413)
!1417 = !DILocation(line: 1472, column: 11, scope: !1413)
!1418 = !DILocation(line: 1472, column: 16, scope: !1413)
!1419 = !DILocation(line: 1475, column: 17, scope: !1409)
!1420 = !DILocation(line: 1475, column: 15, scope: !1409)
!1421 = !DILocation(line: 1476, column: 15, scope: !1409)
!1422 = !DILocation(line: 1477, column: 6, scope: !1409)
!1423 = !DILocation(line: 1477, column: 22, scope: !1409)
!1424 = !DILocation(line: 1477, column: 27, scope: !1409)
!1425 = !DILocation(line: 1478, column: 21, scope: !1409)
!1426 = !DILocation(line: 1479, column: 4, scope: !1409)
!1427 = !DILocation(line: 1482, column: 22, scope: !1379)
!1428 = !DILocation(line: 1482, column: 6, scope: !1379)
!1429 = !DILocation(line: 1482, column: 20, scope: !1379)
!1430 = !DILocation(line: 1483, column: 7, scope: !1379)
!1431 = !DILocation(line: 1486, column: 1, scope: !1366)
!1432 = distinct !DISubprogram(name: "init_ggc", scope: !3, file: !3, line: 1520, type: !1433, scopeLine: 1521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null}
!1435 = !{!1436, !1437, !1441, !1445}
!1436 = !DILocalVariable(name: "order", scope: !1432, file: !3, line: 1522, type: !7)
!1437 = !DILocalVariable(name: "s", scope: !1438, file: !3, line: 1574, type: !240)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 1573, column: 5)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1572, column: 3)
!1440 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 1572, column: 3)
!1441 = !DILocalVariable(name: "o", scope: !1442, file: !3, line: 1597, type: !230)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 1596, column: 5)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 1595, column: 3)
!1444 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 1595, column: 3)
!1445 = !DILocalVariable(name: "i", scope: !1442, file: !3, line: 1598, type: !230)
!1446 = !DILocation(line: 1527, column: 14, scope: !1432)
!1447 = !DILocation(line: 1529, column: 19, scope: !1432)
!1448 = !DILocation(line: 1529, column: 17, scope: !1432)
!1449 = !DILocation(line: 1540, column: 18, scope: !1432)
!1450 = !DILocation(line: 1540, column: 16, scope: !1432)
!1451 = !DILocation(line: 0, scope: !1432)
!1452 = !DILocation(line: 1570, column: 8, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 1570, column: 3)
!1454 = !DILocation(line: 0, scope: !1453)
!1455 = !DILocation(line: 1570, column: 25, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 1570, column: 3)
!1457 = !DILocation(line: 1570, column: 3, scope: !1453)
!1458 = !DILocation(line: 1572, column: 3, scope: !1440)
!1459 = !DILocation(line: 1571, column: 43, scope: !1456)
!1460 = !DILocation(line: 1571, column: 5, scope: !1456)
!1461 = !DILocation(line: 1571, column: 30, scope: !1456)
!1462 = !DILocation(line: 1570, column: 46, scope: !1456)
!1463 = !DILocation(line: 1570, column: 3, scope: !1456)
!1464 = distinct !{!1464, !1457, !1465}
!1465 = !DILocation(line: 1571, column: 46, scope: !1453)
!1466 = !DILocation(line: 0, scope: !1440)
!1467 = !DILocation(line: 1572, column: 41, scope: !1439)
!1468 = !DILocation(line: 1583, column: 3, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 1583, column: 3)
!1470 = !DILocation(line: 1574, column: 47, scope: !1438)
!1471 = !DILocation(line: 1574, column: 18, scope: !1438)
!1472 = !DILocation(line: 0, scope: !1438)
!1473 = !DILocation(line: 1578, column: 11, scope: !1438)
!1474 = !DILocation(line: 1579, column: 7, scope: !1438)
!1475 = !DILocation(line: 1579, column: 32, scope: !1438)
!1476 = !DILocation(line: 1572, column: 55, scope: !1439)
!1477 = !DILocation(line: 1572, column: 3, scope: !1439)
!1478 = distinct !{!1478, !1458, !1479}
!1479 = !DILocation(line: 1580, column: 5, scope: !1440)
!1480 = !DILocation(line: 0, scope: !1469)
!1481 = !DILocation(line: 1583, column: 25, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 1583, column: 3)
!1483 = !DILocation(line: 1595, column: 3, scope: !1444)
!1484 = !DILocation(line: 1585, column: 41, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 1584, column: 5)
!1486 = !DILocation(line: 1585, column: 52, scope: !1485)
!1487 = !DILocation(line: 1585, column: 50, scope: !1485)
!1488 = !DILocation(line: 1585, column: 39, scope: !1485)
!1489 = !DILocation(line: 1585, column: 7, scope: !1485)
!1490 = !DILocation(line: 1586, column: 41, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 1586, column: 11)
!1492 = !DILocation(line: 1586, column: 11, scope: !1485)
!1493 = !DILocation(line: 1587, column: 2, scope: !1491)
!1494 = !DILocation(line: 0, scope: !1485)
!1495 = !DILocation(line: 1588, column: 7, scope: !1485)
!1496 = !DILocation(line: 1583, column: 39, scope: !1482)
!1497 = !DILocation(line: 1583, column: 3, scope: !1482)
!1498 = distinct !{!1498, !1468, !1499}
!1499 = !DILocation(line: 1589, column: 5, scope: !1469)
!1500 = !DILocation(line: 0, scope: !1444)
!1501 = !DILocation(line: 1595, column: 41, scope: !1443)
!1502 = !DILocation(line: 1600, column: 11, scope: !1442)
!1503 = !DILocation(line: 0, scope: !1442)
!1504 = !DILocation(line: 1601, column: 13, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 1601, column: 11)
!1506 = !DILocation(line: 1601, column: 11, scope: !1442)
!1507 = !DILocation(line: 1604, column: 16, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 1604, column: 7)
!1509 = !DILocation(line: 0, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 1604, column: 7)
!1511 = !DILocation(line: 1604, column: 12, scope: !1508)
!1512 = !DILocation(line: 1604, column: 37, scope: !1510)
!1513 = !DILocation(line: 1604, column: 34, scope: !1510)
!1514 = !DILocation(line: 1604, column: 7, scope: !1508)
!1515 = !DILocation(line: 1605, column: 17, scope: !1510)
!1516 = !DILocation(line: 1604, column: 54, scope: !1510)
!1517 = !DILocation(line: 1604, column: 7, scope: !1510)
!1518 = distinct !{!1518, !1514, !1519}
!1519 = !DILocation(line: 1605, column: 19, scope: !1508)
!1520 = !DILocation(line: 1595, column: 55, scope: !1443)
!1521 = !DILocation(line: 1595, column: 3, scope: !1443)
!1522 = distinct !{!1522, !1483, !1523}
!1523 = !DILocation(line: 1606, column: 5, scope: !1444)
!1524 = !DILocation(line: 1608, column: 18, scope: !1432)
!1525 = !DILocation(line: 1609, column: 15, scope: !1432)
!1526 = !DILocation(line: 1610, column: 13, scope: !1432)
!1527 = !DILocation(line: 1610, column: 11, scope: !1432)
!1528 = !DILocation(line: 1612, column: 21, scope: !1432)
!1529 = !DILocation(line: 1613, column: 18, scope: !1432)
!1530 = !DILocation(line: 1614, column: 16, scope: !1432)
!1531 = !DILocation(line: 1614, column: 14, scope: !1432)
!1532 = !DILocation(line: 1615, column: 19, scope: !1432)
!1533 = !DILocation(line: 1615, column: 17, scope: !1432)
!1534 = !DILocation(line: 1616, column: 1, scope: !1432)
!1535 = distinct !DISubprogram(name: "compute_inverse", scope: !3, file: !3, line: 1497, type: !1197, scopeLine: 1498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1536)
!1536 = !{!1537, !1538, !1539, !1540}
!1537 = !DILocalVariable(name: "order", arg: 1, scope: !1535, file: !3, line: 1497, type: !7)
!1538 = !DILocalVariable(name: "size", scope: !1535, file: !3, line: 1499, type: !240)
!1539 = !DILocalVariable(name: "inv", scope: !1535, file: !3, line: 1499, type: !240)
!1540 = !DILocalVariable(name: "e", scope: !1535, file: !3, line: 1500, type: !7)
!1541 = !DILocation(line: 0, scope: !1535)
!1542 = !DILocation(line: 1502, column: 10, scope: !1535)
!1543 = !DILocation(line: 1504, column: 3, scope: !1535)
!1544 = !DILocation(line: 1504, column: 15, scope: !1535)
!1545 = !DILocation(line: 1504, column: 19, scope: !1535)
!1546 = !DILocation(line: 1511, column: 3, scope: !1535)
!1547 = !DILocation(line: 1506, column: 8, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 1505, column: 5)
!1549 = !DILocation(line: 1507, column: 12, scope: !1548)
!1550 = distinct !{!1550, !1543, !1551}
!1551 = !DILocation(line: 1508, column: 5, scope: !1535)
!1552 = !DILocation(line: 1511, column: 14, scope: !1535)
!1553 = !DILocation(line: 1511, column: 21, scope: !1535)
!1554 = !DILocation(line: 1512, column: 20, scope: !1535)
!1555 = !DILocation(line: 1512, column: 15, scope: !1535)
!1556 = distinct !{!1556, !1546, !1557}
!1557 = !DILocation(line: 1512, column: 30, scope: !1535)
!1558 = !DILocation(line: 1514, column: 3, scope: !1535)
!1559 = !DILocation(line: 1514, column: 20, scope: !1535)
!1560 = !DILocation(line: 1515, column: 3, scope: !1535)
!1561 = !DILocation(line: 1515, column: 21, scope: !1535)
!1562 = !DILocation(line: 1516, column: 1, scope: !1535)
!1563 = distinct !DISubprogram(name: "new_ggc_zone", scope: !3, file: !3, line: 1621, type: !1564, scopeLine: 1622, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1569)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!1566, !235}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_zone", file: !1568, line: 150, flags: DIFlagFwdDecl)
!1568 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1569 = !{!1570}
!1570 = !DILocalVariable(name: "name", arg: 1, scope: !1563, file: !3, line: 1621, type: !235)
!1571 = !DILocation(line: 0, scope: !1563)
!1572 = !DILocation(line: 1623, column: 3, scope: !1563)
!1573 = distinct !DISubprogram(name: "destroy_ggc_zone", scope: !3, file: !3, line: 1628, type: !1574, scopeLine: 1629, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1576)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1566}
!1576 = !{!1577}
!1577 = !DILocalVariable(name: "zone", arg: 1, scope: !1573, file: !3, line: 1628, type: !1566)
!1578 = !DILocation(line: 0, scope: !1573)
!1579 = !DILocation(line: 1630, column: 1, scope: !1573)
!1580 = distinct !DISubprogram(name: "ggc_collect", scope: !3, file: !3, line: 1939, type: !1433, scopeLine: 1940, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!1581 = !DILocation(line: 1942, column: 2, scope: !1580)
!1582 = distinct !DISubprogram(name: "ggc_print_statistics", scope: !3, file: !3, line: 2005, type: !1433, scopeLine: 2006, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1583)
!1583 = !{!1584, !1588, !1589, !1590, !1594, !1595, !1596}
!1584 = !DILocalVariable(name: "stats", scope: !1582, file: !3, line: 2007, type: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_statistics", file: !1568, line: 295, size: 32, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1585, file: !1568, line: 298, baseType: !230, size: 32)
!1588 = !DILocalVariable(name: "i", scope: !1582, file: !3, line: 2008, type: !7)
!1589 = !DILocalVariable(name: "total_overhead", scope: !1582, file: !3, line: 2009, type: !240)
!1590 = !DILocalVariable(name: "p", scope: !1591, file: !3, line: 2032, type: !244)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 2031, column: 5)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 2030, column: 3)
!1593 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 2030, column: 3)
!1594 = !DILocalVariable(name: "allocated", scope: !1591, file: !3, line: 2033, type: !240)
!1595 = !DILocalVariable(name: "in_use", scope: !1591, file: !3, line: 2034, type: !240)
!1596 = !DILocalVariable(name: "overhead", scope: !1591, file: !3, line: 2035, type: !240)
!1597 = !DILocation(line: 2007, column: 3, scope: !1582)
!1598 = !DILocation(line: 0, scope: !1582)
!1599 = !DILocation(line: 2012, column: 3, scope: !1582)
!1600 = !DILocation(line: 2015, column: 23, scope: !1582)
!1601 = !DILocation(line: 2018, column: 32, scope: !1582)
!1602 = !DILocation(line: 2018, column: 3, scope: !1582)
!1603 = !DILocation(line: 2022, column: 3, scope: !1582)
!1604 = !DILocation(line: 2026, column: 12, scope: !1582)
!1605 = !DILocation(line: 2026, column: 3, scope: !1582)
!1606 = !DILocation(line: 2028, column: 12, scope: !1582)
!1607 = !DILocation(line: 2028, column: 3, scope: !1582)
!1608 = !DILocation(line: 2030, column: 8, scope: !1593)
!1609 = !DILocation(line: 2030, column: 17, scope: !1592)
!1610 = !DILocation(line: 2030, column: 3, scope: !1593)
!1611 = !DILocation(line: 2038, column: 12, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 2038, column: 11)
!1613 = !DILocation(line: 2038, column: 11, scope: !1591)
!1614 = !DILocation(line: 0, scope: !1591)
!1615 = !DILocation(line: 0, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 2047, column: 2)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 2046, column: 7)
!1618 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 2046, column: 7)
!1619 = !DILocation(line: 2046, column: 12, scope: !1618)
!1620 = !DILocation(line: 0, scope: !1618)
!1621 = !DILocation(line: 2046, column: 7, scope: !1618)
!1622 = !DILocation(line: 2048, column: 20, scope: !1616)
!1623 = !DILocation(line: 2048, column: 14, scope: !1616)
!1624 = !DILocation(line: 2050, column: 7, scope: !1616)
!1625 = !DILocation(line: 2050, column: 32, scope: !1616)
!1626 = !DILocation(line: 2050, column: 29, scope: !1616)
!1627 = !DILocation(line: 2050, column: 27, scope: !1616)
!1628 = !DILocation(line: 2050, column: 52, scope: !1616)
!1629 = !DILocation(line: 2050, column: 50, scope: !1616)
!1630 = !DILocation(line: 2049, column: 11, scope: !1616)
!1631 = !DILocation(line: 2053, column: 12, scope: !1616)
!1632 = !DILocation(line: 2053, column: 10, scope: !1616)
!1633 = !DILocation(line: 2052, column: 13, scope: !1616)
!1634 = !DILocation(line: 2046, column: 38, scope: !1617)
!1635 = !DILocation(line: 2046, column: 7, scope: !1617)
!1636 = distinct !{!1636, !1621, !1637}
!1637 = !DILocation(line: 2054, column: 2, scope: !1618)
!1638 = !DILocation(line: 2055, column: 16, scope: !1591)
!1639 = !DILocation(line: 2056, column: 25, scope: !1591)
!1640 = !DILocation(line: 2057, column: 9, scope: !1591)
!1641 = !DILocation(line: 2057, column: 28, scope: !1591)
!1642 = !DILocation(line: 2058, column: 9, scope: !1591)
!1643 = !DILocation(line: 2058, column: 25, scope: !1591)
!1644 = !DILocation(line: 2059, column: 9, scope: !1591)
!1645 = !DILocation(line: 2059, column: 27, scope: !1591)
!1646 = !DILocation(line: 2055, column: 7, scope: !1591)
!1647 = !DILocation(line: 2060, column: 22, scope: !1591)
!1648 = !DILocation(line: 2061, column: 5, scope: !1592)
!1649 = !DILocation(line: 2030, column: 31, scope: !1592)
!1650 = !DILocation(line: 2030, column: 3, scope: !1592)
!1651 = distinct !{!1651, !1610, !1652}
!1652 = !DILocation(line: 2061, column: 5, scope: !1593)
!1653 = !DILocation(line: 2062, column: 12, scope: !1582)
!1654 = !DILocation(line: 2063, column: 5, scope: !1582)
!1655 = !DILocation(line: 2063, column: 29, scope: !1582)
!1656 = !DILocation(line: 2064, column: 5, scope: !1582)
!1657 = !DILocation(line: 2064, column: 26, scope: !1582)
!1658 = !DILocation(line: 2065, column: 5, scope: !1582)
!1659 = !DILocation(line: 2065, column: 29, scope: !1582)
!1660 = !DILocation(line: 2062, column: 3, scope: !1582)
!1661 = !DILocation(line: 2101, column: 1, scope: !1582)
!1662 = distinct !DISubprogram(name: "release_pages", scope: !3, file: !3, line: 977, type: !1433, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1663)
!1663 = !{!1664, !1665, !1666, !1668}
!1664 = !DILocalVariable(name: "pp", scope: !1662, file: !3, line: 1010, type: !243)
!1665 = !DILocalVariable(name: "p", scope: !1662, file: !3, line: 1010, type: !244)
!1666 = !DILocalVariable(name: "gp", scope: !1662, file: !3, line: 1011, type: !1667)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!1668 = !DILocalVariable(name: "g", scope: !1662, file: !3, line: 1011, type: !286)
!1669 = !DILocation(line: 1015, column: 3, scope: !1662)
!1670 = !DILocation(line: 1014, column: 6, scope: !1662)
!1671 = !DILocation(line: 0, scope: !1662)
!1672 = !DILocation(line: 1015, column: 15, scope: !1662)
!1673 = !DILocation(line: 1015, column: 20, scope: !1662)
!1674 = !DILocation(line: 1026, column: 3, scope: !1662)
!1675 = !DILocation(line: 1016, column: 12, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 1016, column: 9)
!1677 = !DILocation(line: 1016, column: 19, scope: !1676)
!1678 = !DILocation(line: 1016, column: 26, scope: !1676)
!1679 = !DILocation(line: 0, scope: !1676)
!1680 = !DILocation(line: 1016, column: 9, scope: !1662)
!1681 = !DILocation(line: 1018, column: 11, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 1017, column: 7)
!1683 = !DILocation(line: 1018, column: 6, scope: !1682)
!1684 = !DILocation(line: 1019, column: 8, scope: !1682)
!1685 = !DILocation(line: 1019, column: 2, scope: !1682)
!1686 = !DILocation(line: 1020, column: 7, scope: !1682)
!1687 = distinct !{!1687, !1669, !1688}
!1688 = !DILocation(line: 1022, column: 16, scope: !1662)
!1689 = !DILocation(line: 1025, column: 6, scope: !1662)
!1690 = !DILocation(line: 1026, column: 15, scope: !1662)
!1691 = !DILocation(line: 1026, column: 20, scope: !1662)
!1692 = !DILocation(line: 1027, column: 12, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 1027, column: 9)
!1694 = !DILocation(line: 1027, column: 19, scope: !1693)
!1695 = !DILocation(line: 0, scope: !1693)
!1696 = !DILocation(line: 1027, column: 9, scope: !1662)
!1697 = !DILocation(line: 1029, column: 11, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 1028, column: 7)
!1699 = !DILocation(line: 1029, column: 6, scope: !1698)
!1700 = !DILocation(line: 1030, column: 23, scope: !1698)
!1701 = !DILocation(line: 1030, column: 17, scope: !1698)
!1702 = !DILocation(line: 1031, column: 11, scope: !1698)
!1703 = !DILocation(line: 1031, column: 2, scope: !1698)
!1704 = !DILocation(line: 1032, column: 7, scope: !1698)
!1705 = distinct !{!1705, !1674, !1706}
!1706 = !DILocation(line: 1034, column: 16, scope: !1662)
!1707 = !DILocation(line: 1036, column: 1, scope: !1662)
!1708 = distinct !DISubprogram(name: "init_ggc_pch", scope: !3, file: !3, line: 2116, type: !1709, scopeLine: 2117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!273}
!1711 = !DILocation(line: 2118, column: 10, scope: !1708)
!1712 = !DILocation(line: 2118, column: 3, scope: !1708)
!1713 = distinct !DISubprogram(name: "ggc_pch_count_object", scope: !3, file: !3, line: 2122, type: !1714, scopeLine: 2125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null, !273, !234, !240, !229, !5}
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722}
!1717 = !DILocalVariable(name: "d", arg: 1, scope: !1713, file: !3, line: 2122, type: !273)
!1718 = !DILocalVariable(name: "x", arg: 2, scope: !1713, file: !3, line: 2122, type: !234)
!1719 = !DILocalVariable(name: "size", arg: 3, scope: !1713, file: !3, line: 2123, type: !240)
!1720 = !DILocalVariable(name: "is_string", arg: 4, scope: !1713, file: !3, line: 2123, type: !229)
!1721 = !DILocalVariable(name: "type", arg: 5, scope: !1713, file: !3, line: 2124, type: !5)
!1722 = !DILocalVariable(name: "order", scope: !1713, file: !3, line: 2126, type: !7)
!1723 = !DILocation(line: 0, scope: !1713)
!1724 = !DILocation(line: 2128, column: 12, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 2128, column: 7)
!1726 = !DILocation(line: 2128, column: 7, scope: !1713)
!1727 = !DILocation(line: 2133, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 2131, column: 5)
!1729 = !DILocation(line: 2129, column: 13, scope: !1725)
!1730 = !DILocation(line: 2137, column: 3, scope: !1713)
!1731 = !DILocation(line: 2129, column: 5, scope: !1725)
!1732 = !DILocation(line: 0, scope: !1728)
!1733 = !DILocation(line: 2133, column: 21, scope: !1728)
!1734 = !DILocation(line: 2133, column: 19, scope: !1728)
!1735 = !DILocation(line: 2134, column: 7, scope: !1728)
!1736 = distinct !{!1736, !1727, !1735}
!1737 = !DILocation(line: 2137, column: 21, scope: !1713)
!1738 = !DILocation(line: 2138, column: 1, scope: !1713)
!1739 = distinct !DISubprogram(name: "ggc_pch_total_size", scope: !3, file: !3, line: 2141, type: !1740, scopeLine: 2142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!240, !273}
!1742 = !{!1743, !1744, !1745}
!1743 = !DILocalVariable(name: "d", arg: 1, scope: !1739, file: !3, line: 2141, type: !273)
!1744 = !DILocalVariable(name: "a", scope: !1739, file: !3, line: 2143, type: !240)
!1745 = !DILocalVariable(name: "i", scope: !1739, file: !3, line: 2144, type: !7)
!1746 = !DILocation(line: 0, scope: !1739)
!1747 = !DILocation(line: 0, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 2146, column: 3)
!1749 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 2146, column: 3)
!1750 = !DILocation(line: 2146, column: 8, scope: !1749)
!1751 = !DILocation(line: 2146, column: 17, scope: !1748)
!1752 = !DILocation(line: 2146, column: 3, scope: !1749)
!1753 = !DILocation(line: 2147, column: 10, scope: !1748)
!1754 = !DILocation(line: 2147, column: 7, scope: !1748)
!1755 = !DILocation(line: 2146, column: 32, scope: !1748)
!1756 = !DILocation(line: 2146, column: 3, scope: !1748)
!1757 = distinct !{!1757, !1752, !1758}
!1758 = !DILocation(line: 2147, column: 10, scope: !1749)
!1759 = !DILocation(line: 2148, column: 3, scope: !1739)
!1760 = distinct !DISubprogram(name: "ggc_pch_this_base", scope: !3, file: !3, line: 2152, type: !1761, scopeLine: 2153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !273, !234}
!1763 = !{!1764, !1765, !1766, !1767}
!1764 = !DILocalVariable(name: "d", arg: 1, scope: !1760, file: !3, line: 2152, type: !273)
!1765 = !DILocalVariable(name: "base", arg: 2, scope: !1760, file: !3, line: 2152, type: !234)
!1766 = !DILocalVariable(name: "a", scope: !1760, file: !3, line: 2154, type: !240)
!1767 = !DILocalVariable(name: "i", scope: !1760, file: !3, line: 2155, type: !7)
!1768 = !DILocation(line: 0, scope: !1760)
!1769 = !DILocation(line: 2154, column: 14, scope: !1760)
!1770 = !DILocation(line: 2157, column: 8, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 2157, column: 3)
!1772 = !DILocation(line: 2157, column: 17, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 2157, column: 3)
!1774 = !DILocation(line: 2157, column: 3, scope: !1771)
!1775 = !DILocation(line: 2159, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 2158, column: 5)
!1777 = !DILocation(line: 2159, column: 18, scope: !1776)
!1778 = !DILocation(line: 2160, column: 12, scope: !1776)
!1779 = !DILocation(line: 2160, column: 9, scope: !1776)
!1780 = !DILocation(line: 2157, column: 32, scope: !1773)
!1781 = !DILocation(line: 2157, column: 3, scope: !1773)
!1782 = distinct !{!1782, !1774, !1783}
!1783 = !DILocation(line: 2161, column: 5, scope: !1771)
!1784 = !DILocation(line: 2162, column: 1, scope: !1760)
!1785 = distinct !DISubprogram(name: "ggc_pch_alloc_object", scope: !3, file: !3, line: 2166, type: !1786, scopeLine: 2169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!232, !273, !234, !240, !229, !5}
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795}
!1789 = !DILocalVariable(name: "d", arg: 1, scope: !1785, file: !3, line: 2166, type: !273)
!1790 = !DILocalVariable(name: "x", arg: 2, scope: !1785, file: !3, line: 2166, type: !234)
!1791 = !DILocalVariable(name: "size", arg: 3, scope: !1785, file: !3, line: 2167, type: !240)
!1792 = !DILocalVariable(name: "is_string", arg: 4, scope: !1785, file: !3, line: 2167, type: !229)
!1793 = !DILocalVariable(name: "type", arg: 5, scope: !1785, file: !3, line: 2168, type: !5)
!1794 = !DILocalVariable(name: "order", scope: !1785, file: !3, line: 2170, type: !7)
!1795 = !DILocalVariable(name: "result", scope: !1785, file: !3, line: 2171, type: !232)
!1796 = !DILocation(line: 0, scope: !1785)
!1797 = !DILocation(line: 2173, column: 12, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 2173, column: 7)
!1799 = !DILocation(line: 2173, column: 7, scope: !1785)
!1800 = !DILocation(line: 2178, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 2176, column: 5)
!1802 = !DILocation(line: 2174, column: 13, scope: !1798)
!1803 = !DILocation(line: 2182, column: 21, scope: !1785)
!1804 = !DILocation(line: 2183, column: 21, scope: !1785)
!1805 = !DILocation(line: 2174, column: 5, scope: !1798)
!1806 = !DILocation(line: 0, scope: !1801)
!1807 = !DILocation(line: 2178, column: 21, scope: !1801)
!1808 = !DILocation(line: 2178, column: 19, scope: !1801)
!1809 = !DILocation(line: 2179, column: 7, scope: !1801)
!1810 = distinct !{!1810, !1800, !1809}
!1811 = !DILocation(line: 2183, column: 18, scope: !1785)
!1812 = !DILocation(line: 2184, column: 3, scope: !1785)
!1813 = distinct !DISubprogram(name: "ggc_pch_prepare_write", scope: !3, file: !3, line: 2188, type: !1814, scopeLine: 2190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !273, !303}
!1816 = !{!1817, !1818}
!1817 = !DILocalVariable(name: "d", arg: 1, scope: !1813, file: !3, line: 2188, type: !273)
!1818 = !DILocalVariable(name: "f", arg: 2, scope: !1813, file: !3, line: 2189, type: !303)
!1819 = !DILocation(line: 0, scope: !1813)
!1820 = !DILocation(line: 2192, column: 1, scope: !1813)
!1821 = !DILocation(line: 0, scope: !300)
!1822 = !DILocation(line: 2202, column: 12, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !300, file: !3, line: 2202, column: 7)
!1824 = !DILocation(line: 2202, column: 7, scope: !300)
!1825 = !DILocation(line: 2207, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 2205, column: 5)
!1827 = !DILocation(line: 2203, column: 13, scope: !1823)
!1828 = !DILocation(line: 2203, column: 5, scope: !1823)
!1829 = !DILocation(line: 0, scope: !1826)
!1830 = !DILocation(line: 2207, column: 21, scope: !1826)
!1831 = !DILocation(line: 2207, column: 19, scope: !1826)
!1832 = !DILocation(line: 2208, column: 7, scope: !1826)
!1833 = distinct !{!1833, !1825, !1832}
!1834 = !DILocation(line: 2211, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !300, file: !3, line: 2211, column: 7)
!1836 = !DILocation(line: 0, scope: !1823)
!1837 = !DILocation(line: 2211, column: 30, scope: !1835)
!1838 = !DILocation(line: 2211, column: 7, scope: !300)
!1839 = !DILocation(line: 2212, column: 5, scope: !1835)
!1840 = !DILocation(line: 2217, column: 15, scope: !366)
!1841 = !DILocation(line: 2217, column: 12, scope: !366)
!1842 = !DILocation(line: 2217, column: 7, scope: !300)
!1843 = !DILocation(line: 2219, column: 45, scope: !365)
!1844 = !DILocation(line: 0, scope: !365)
!1845 = !DILocation(line: 2225, column: 11, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !365, file: !3, line: 2225, column: 11)
!1847 = !DILocation(line: 2225, column: 19, scope: !1846)
!1848 = !DILocation(line: 2225, column: 11, scope: !365)
!1849 = !DILocation(line: 2227, column: 15, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 2227, column: 15)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 2226, column: 9)
!1852 = !DILocation(line: 2227, column: 50, scope: !1850)
!1853 = !DILocation(line: 2227, column: 15, scope: !1851)
!1854 = !DILocation(line: 2228, column: 13, scope: !1850)
!1855 = !DILocation(line: 2233, column: 15, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 2233, column: 15)
!1857 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 2231, column: 9)
!1858 = !DILocation(line: 2233, column: 44, scope: !1856)
!1859 = !DILocation(line: 2233, column: 15, scope: !1857)
!1860 = !DILocation(line: 2234, column: 13, scope: !1856)
!1861 = !DILocation(line: 2238, column: 3, scope: !300)
!1862 = !DILocation(line: 2238, column: 20, scope: !300)
!1863 = !DILocation(line: 2239, column: 28, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !300, file: !3, line: 2239, column: 7)
!1865 = !DILocation(line: 2239, column: 25, scope: !1864)
!1866 = !DILocation(line: 2240, column: 7, scope: !1864)
!1867 = !DILocation(line: 2240, column: 20, scope: !1864)
!1868 = !DILocation(line: 2240, column: 10, scope: !1864)
!1869 = !DILocation(line: 2242, column: 13, scope: !1864)
!1870 = !DILocation(line: 2239, column: 7, scope: !300)
!1871 = !DILocation(line: 2243, column: 5, scope: !1864)
!1872 = !DILocation(line: 2244, column: 1, scope: !300)
!1873 = distinct !DISubprogram(name: "ggc_pch_finish", scope: !3, file: !3, line: 2247, type: !1814, scopeLine: 2248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1874)
!1874 = !{!1875, !1876}
!1875 = !DILocalVariable(name: "d", arg: 1, scope: !1873, file: !3, line: 2247, type: !273)
!1876 = !DILocalVariable(name: "f", arg: 2, scope: !1873, file: !3, line: 2247, type: !303)
!1877 = !DILocation(line: 0, scope: !1873)
!1878 = !DILocation(line: 2249, column: 15, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 2249, column: 7)
!1880 = !DILocation(line: 2249, column: 7, scope: !1879)
!1881 = !DILocation(line: 2249, column: 43, scope: !1879)
!1882 = !DILocation(line: 2249, column: 7, scope: !1873)
!1883 = !DILocation(line: 2250, column: 5, scope: !1879)
!1884 = !DILocation(line: 2251, column: 3, scope: !1873)
!1885 = !DILocation(line: 2252, column: 1, scope: !1873)
!1886 = distinct !DISubprogram(name: "ggc_pch_read", scope: !3, file: !3, line: 2305, type: !1887, scopeLine: 2306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !303, !234}
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1901, !1905, !1906, !1907, !1908}
!1890 = !DILocalVariable(name: "f", arg: 1, scope: !1886, file: !3, line: 2305, type: !303)
!1891 = !DILocalVariable(name: "addr", arg: 2, scope: !1886, file: !3, line: 2305, type: !234)
!1892 = !DILocalVariable(name: "d", scope: !1886, file: !3, line: 2307, type: !277)
!1893 = !DILocalVariable(name: "i", scope: !1886, file: !3, line: 2308, type: !7)
!1894 = !DILocalVariable(name: "offs", scope: !1886, file: !3, line: 2309, type: !232)
!1895 = !DILocalVariable(name: "count_old_page_tables", scope: !1886, file: !3, line: 2310, type: !237)
!1896 = !DILocalVariable(name: "count_new_page_tables", scope: !1886, file: !3, line: 2311, type: !237)
!1897 = !DILocalVariable(name: "p", scope: !1898, file: !3, line: 2332, type: !244)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 2331, column: 5)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 2330, column: 3)
!1900 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 2330, column: 3)
!1901 = !DILocalVariable(name: "entry", scope: !1902, file: !3, line: 2344, type: !249)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 2343, column: 5)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 2342, column: 3)
!1904 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 2342, column: 3)
!1905 = !DILocalVariable(name: "pte", scope: !1902, file: !3, line: 2345, type: !232)
!1906 = !DILocalVariable(name: "bytes", scope: !1902, file: !3, line: 2346, type: !240)
!1907 = !DILocalVariable(name: "num_objs", scope: !1902, file: !3, line: 2347, type: !240)
!1908 = !DILocalVariable(name: "j", scope: !1902, file: !3, line: 2348, type: !240)
!1909 = !DILocation(line: 0, scope: !1886)
!1910 = !DILocation(line: 2307, column: 3, scope: !1886)
!1911 = !DILocation(line: 2313, column: 29, scope: !1886)
!1912 = !DILocation(line: 2317, column: 3, scope: !1886)
!1913 = !DILocation(line: 2328, column: 3, scope: !1886)
!1914 = !DILocation(line: 2329, column: 19, scope: !1886)
!1915 = !DILocation(line: 2330, column: 8, scope: !1900)
!1916 = !DILocation(line: 0, scope: !1900)
!1917 = !DILocation(line: 2330, column: 17, scope: !1899)
!1918 = !DILocation(line: 2330, column: 3, scope: !1900)
!1919 = !DILocation(line: 2333, column: 16, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 2333, column: 7)
!1921 = !DILocation(line: 2333, column: 12, scope: !1920)
!1922 = !DILocation(line: 0, scope: !1920)
!1923 = !DILocation(line: 0, scope: !1898)
!1924 = !DILocation(line: 2333, column: 30, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 2333, column: 7)
!1926 = !DILocation(line: 2333, column: 7, scope: !1920)
!1927 = !DILocation(line: 2334, column: 23, scope: !1925)
!1928 = !DILocation(line: 2334, column: 5, scope: !1925)
!1929 = !DILocation(line: 2334, column: 19, scope: !1925)
!1930 = !DILocation(line: 2333, column: 46, scope: !1925)
!1931 = !DILocation(line: 2333, column: 7, scope: !1925)
!1932 = distinct !{!1932, !1926, !1933}
!1933 = !DILocation(line: 2334, column: 23, scope: !1920)
!1934 = !DILocation(line: 2330, column: 32, scope: !1899)
!1935 = !DILocation(line: 2330, column: 3, scope: !1899)
!1936 = distinct !{!1936, !1918, !1937}
!1937 = !DILocation(line: 2335, column: 5, scope: !1900)
!1938 = !DILocation(line: 2339, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 2339, column: 7)
!1940 = !DILocation(line: 2339, column: 36, scope: !1939)
!1941 = !DILocation(line: 2339, column: 7, scope: !1886)
!1942 = !DILocation(line: 2340, column: 5, scope: !1939)
!1943 = !DILocation(line: 2342, column: 8, scope: !1904)
!1944 = !DILocation(line: 2309, column: 9, scope: !1886)
!1945 = !DILocation(line: 0, scope: !1904)
!1946 = !DILocation(line: 2342, column: 17, scope: !1903)
!1947 = !DILocation(line: 2342, column: 3, scope: !1904)
!1948 = !DILocation(line: 2350, column: 11, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 2350, column: 11)
!1950 = !DILocation(line: 2350, column: 23, scope: !1949)
!1951 = !DILocation(line: 2350, column: 11, scope: !1902)
!1952 = !DILocation(line: 2353, column: 15, scope: !1902)
!1953 = !DILocation(line: 0, scope: !1902)
!1954 = !DILocation(line: 2354, column: 24, scope: !1902)
!1955 = !DILocation(line: 2355, column: 15, scope: !1902)
!1956 = !DILocation(line: 2358, column: 14, scope: !1902)
!1957 = !DILocation(line: 2358, column: 20, scope: !1902)
!1958 = !DILocation(line: 2359, column: 14, scope: !1902)
!1959 = !DILocation(line: 2359, column: 19, scope: !1902)
!1960 = !DILocation(line: 2360, column: 14, scope: !1902)
!1961 = !DILocation(line: 2360, column: 28, scope: !1902)
!1962 = !DILocation(line: 2362, column: 14, scope: !1902)
!1963 = !DILocation(line: 2362, column: 31, scope: !1902)
!1964 = !DILocation(line: 2363, column: 22, scope: !1902)
!1965 = !DILocation(line: 2363, column: 14, scope: !1902)
!1966 = !DILocation(line: 2363, column: 20, scope: !1902)
!1967 = !DILocation(line: 0, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 2365, column: 7)
!1969 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 2365, column: 7)
!1970 = !DILocation(line: 2365, column: 12, scope: !1969)
!1971 = !DILocation(line: 0, scope: !1969)
!1972 = !DILocation(line: 2366, column: 7, scope: !1968)
!1973 = !DILocation(line: 2366, column: 28, scope: !1968)
!1974 = !DILocation(line: 2365, column: 7, scope: !1969)
!1975 = !DILocation(line: 2369, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 2369, column: 7)
!1977 = !DILocation(line: 2368, column: 20, scope: !1968)
!1978 = !DILocation(line: 2368, column: 2, scope: !1968)
!1979 = !DILocation(line: 2368, column: 42, scope: !1968)
!1980 = !DILocation(line: 2365, column: 7, scope: !1968)
!1981 = distinct !{!1981, !1974, !1982}
!1982 = !DILocation(line: 2368, column: 45, scope: !1969)
!1983 = !DILocation(line: 2369, column: 16, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 2369, column: 7)
!1985 = !DILocation(line: 2371, column: 16, scope: !1984)
!1986 = !DILocation(line: 2371, column: 10, scope: !1984)
!1987 = !DILocation(line: 2370, column: 20, scope: !1984)
!1988 = !DILocation(line: 2370, column: 2, scope: !1984)
!1989 = !DILocation(line: 2371, column: 4, scope: !1984)
!1990 = !DILocation(line: 2369, column: 33, scope: !1984)
!1991 = !DILocation(line: 2369, column: 7, scope: !1984)
!1992 = distinct !{!1992, !1975, !1993}
!1993 = !DILocation(line: 2371, column: 36, scope: !1976)
!1994 = !DILocation(line: 2373, column: 12, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 2373, column: 7)
!1996 = !DILocation(line: 2374, column: 32, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 2373, column: 7)
!1998 = !DILocation(line: 2374, column: 18, scope: !1997)
!1999 = !DILocation(line: 0, scope: !1995)
!2000 = !DILocation(line: 2374, column: 23, scope: !1997)
!2001 = !DILocation(line: 2374, column: 9, scope: !1997)
!2002 = !DILocation(line: 2373, column: 7, scope: !1995)
!2003 = !DILocation(line: 2376, column: 2, scope: !1997)
!2004 = !DILocation(line: 2375, column: 14, scope: !1997)
!2005 = !DILocation(line: 2375, column: 9, scope: !1997)
!2006 = !DILocation(line: 2373, column: 7, scope: !1997)
!2007 = distinct !{!2007, !2002, !2008}
!2008 = !DILocation(line: 2376, column: 34, scope: !1995)
!2009 = !DILocation(line: 2361, column: 12, scope: !1902)
!2010 = !DILocation(line: 2378, column: 11, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 2378, column: 11)
!2012 = !DILocation(line: 2378, column: 27, scope: !2011)
!2013 = !DILocation(line: 2378, column: 11, scope: !1902)
!2014 = !DILocation(line: 2379, column: 24, scope: !2011)
!2015 = !DILocation(line: 2379, column: 2, scope: !2011)
!2016 = !DILocation(line: 2381, column: 2, scope: !2011)
!2017 = !DILocation(line: 2381, column: 13, scope: !2011)
!2018 = !DILocation(line: 2382, column: 23, scope: !1902)
!2019 = !DILocation(line: 2388, column: 7, scope: !1902)
!2020 = !DILocation(line: 2389, column: 5, scope: !1903)
!2021 = !DILocation(line: 2342, column: 32, scope: !1903)
!2022 = !DILocation(line: 2342, column: 3, scope: !1903)
!2023 = distinct !{!2023, !1947, !2024}
!2024 = !DILocation(line: 2389, column: 5, scope: !1904)
!2025 = !DILocation(line: 2393, column: 29, scope: !1886)
!2026 = !DILocation(line: 2393, column: 45, scope: !1886)
!2027 = !DILocation(line: 2395, column: 3, scope: !1886)
!2028 = !DILocation(line: 2398, column: 44, scope: !1886)
!2029 = !DILocation(line: 2398, column: 37, scope: !1886)
!2030 = !DILocation(line: 2398, column: 15, scope: !1886)
!2031 = !DILocation(line: 2399, column: 1, scope: !1886)
!2032 = distinct !DISubprogram(name: "clear_marks", scope: !3, file: !3, line: 1671, type: !1433, scopeLine: 1672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2033)
!2033 = !{!2034, !2035, !2039, !2043}
!2034 = !DILocalVariable(name: "order", scope: !2032, file: !3, line: 1673, type: !7)
!2035 = !DILocalVariable(name: "p", scope: !2036, file: !3, line: 1677, type: !244)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 1676, column: 5)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 1675, column: 3)
!2038 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 1675, column: 3)
!2039 = !DILocalVariable(name: "num_objects", scope: !2040, file: !3, line: 1681, type: !240)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 1680, column: 2)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1679, column: 7)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 1679, column: 7)
!2043 = !DILocalVariable(name: "bitmap_size", scope: !2040, file: !3, line: 1682, type: !240)
!2044 = !DILocation(line: 0, scope: !2032)
!2045 = !DILocation(line: 1675, column: 8, scope: !2038)
!2046 = !DILocation(line: 0, scope: !2038)
!2047 = !DILocation(line: 1675, column: 25, scope: !2037)
!2048 = !DILocation(line: 1675, column: 3, scope: !2038)
!2049 = !DILocation(line: 1679, column: 16, scope: !2042)
!2050 = !DILocation(line: 1679, column: 12, scope: !2042)
!2051 = !DILocation(line: 0, scope: !2042)
!2052 = !DILocation(line: 0, scope: !2036)
!2053 = !DILocation(line: 1679, column: 34, scope: !2041)
!2054 = !DILocation(line: 1679, column: 7, scope: !2042)
!2055 = !DILocation(line: 1681, column: 25, scope: !2040)
!2056 = !DILocation(line: 0, scope: !2040)
!2057 = !DILocation(line: 1682, column: 25, scope: !2040)
!2058 = !DILocation(line: 1685, column: 4, scope: !2040)
!2059 = !DILocation(line: 1690, column: 11, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1690, column: 8)
!2061 = !DILocation(line: 1690, column: 29, scope: !2060)
!2062 = !DILocation(line: 1690, column: 25, scope: !2060)
!2063 = !DILocation(line: 1690, column: 8, scope: !2040)
!2064 = !DILocation(line: 1692, column: 14, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1692, column: 12)
!2066 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 1691, column: 6)
!2067 = !DILocation(line: 1692, column: 12, scope: !2066)
!2068 = !DILocation(line: 1693, column: 23, scope: !2065)
!2069 = !DILocation(line: 1693, column: 3, scope: !2065)
!2070 = !DILocation(line: 1693, column: 21, scope: !2065)
!2071 = !DILocation(line: 1694, column: 16, scope: !2066)
!2072 = !DILocation(line: 1694, column: 35, scope: !2066)
!2073 = !DILocation(line: 1694, column: 8, scope: !2066)
!2074 = !DILocation(line: 1695, column: 6, scope: !2066)
!2075 = !DILocation(line: 1699, column: 26, scope: !2040)
!2076 = !DILocation(line: 1699, column: 7, scope: !2040)
!2077 = !DILocation(line: 1699, column: 24, scope: !2040)
!2078 = !DILocation(line: 1700, column: 12, scope: !2040)
!2079 = !DILocation(line: 1700, column: 4, scope: !2040)
!2080 = !DILocation(line: 1704, column: 43, scope: !2040)
!2081 = !DILocation(line: 1704, column: 27, scope: !2040)
!2082 = !DILocation(line: 1703, column: 28, scope: !2040)
!2083 = !DILocation(line: 1703, column: 4, scope: !2040)
!2084 = !DILocation(line: 1704, column: 6, scope: !2040)
!2085 = !DILocation(line: 1679, column: 50, scope: !2041)
!2086 = !DILocation(line: 1679, column: 7, scope: !2041)
!2087 = distinct !{!2087, !2054, !2088}
!2088 = !DILocation(line: 1705, column: 2, scope: !2042)
!2089 = !DILocation(line: 1675, column: 44, scope: !2037)
!2090 = !DILocation(line: 1675, column: 3, scope: !2037)
!2091 = distinct !{!2091, !2048, !2092}
!2092 = !DILocation(line: 1706, column: 5, scope: !2038)
!2093 = !DILocation(line: 1707, column: 1, scope: !2032)
!2094 = distinct !DISubprogram(name: "set_page_table_entry", scope: !3, file: !3, line: 619, type: !2095, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !234, !244}
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105}
!2098 = !DILocalVariable(name: "p", arg: 1, scope: !2094, file: !3, line: 619, type: !234)
!2099 = !DILocalVariable(name: "entry", arg: 2, scope: !2094, file: !3, line: 619, type: !244)
!2100 = !DILocalVariable(name: "base", scope: !2094, file: !3, line: 621, type: !1266)
!2101 = !DILocalVariable(name: "L1", scope: !2094, file: !3, line: 622, type: !240)
!2102 = !DILocalVariable(name: "L2", scope: !2094, file: !3, line: 622, type: !240)
!2103 = !DILocalVariable(name: "table", scope: !2094, file: !3, line: 627, type: !394)
!2104 = !DILocalVariable(name: "high_bits", scope: !2094, file: !3, line: 628, type: !240)
!2105 = !DILabel(scope: !2094, name: "found", file: !3, line: 638)
!2106 = !DILocation(line: 0, scope: !2094)
!2107 = !DILocation(line: 628, column: 22, scope: !2094)
!2108 = !DILocation(line: 628, column: 33, scope: !2094)
!2109 = !DILocation(line: 629, column: 8, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 629, column: 3)
!2111 = !DILocation(line: 0, scope: !2110)
!2112 = !DILocation(line: 629, column: 3, scope: !2110)
!2113 = !DILocation(line: 630, column: 16, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 630, column: 9)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 629, column: 3)
!2116 = !DILocation(line: 630, column: 26, scope: !2114)
!2117 = !DILocation(line: 630, column: 9, scope: !2115)
!2118 = !DILocation(line: 629, column: 48, scope: !2115)
!2119 = !DILocation(line: 629, column: 3, scope: !2115)
!2120 = distinct !{!2120, !2112, !2121}
!2121 = !DILocation(line: 631, column: 12, scope: !2110)
!2122 = !DILocation(line: 634, column: 11, scope: !2094)
!2123 = !DILocation(line: 635, column: 19, scope: !2094)
!2124 = !DILocation(line: 635, column: 15, scope: !2094)
!2125 = !DILocation(line: 636, column: 10, scope: !2094)
!2126 = !DILocation(line: 636, column: 20, scope: !2094)
!2127 = !DILocation(line: 637, column: 12, scope: !2094)
!2128 = !DILocation(line: 637, column: 3, scope: !2094)
!2129 = !DILocation(line: 643, column: 8, scope: !2094)
!2130 = !DILocation(line: 638, column: 1, scope: !2094)
!2131 = !DILocation(line: 644, column: 8, scope: !2094)
!2132 = !DILocation(line: 646, column: 7, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 646, column: 7)
!2134 = !DILocation(line: 646, column: 16, scope: !2133)
!2135 = !DILocation(line: 646, column: 7, scope: !2094)
!2136 = !DILocation(line: 647, column: 16, scope: !2133)
!2137 = !DILocation(line: 647, column: 14, scope: !2133)
!2138 = !DILocation(line: 647, column: 5, scope: !2133)
!2139 = !DILocation(line: 649, column: 3, scope: !2094)
!2140 = !DILocation(line: 649, column: 16, scope: !2094)
!2141 = !DILocation(line: 650, column: 1, scope: !2094)
!2142 = distinct !DISubprogram(name: "move_ptes_to_front", scope: !3, file: !3, line: 2258, type: !2143, scopeLine: 2259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !230, !230}
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151}
!2146 = !DILocalVariable(name: "count_old_page_tables", arg: 1, scope: !2142, file: !3, line: 2258, type: !230)
!2147 = !DILocalVariable(name: "count_new_page_tables", arg: 2, scope: !2142, file: !3, line: 2258, type: !230)
!2148 = !DILocalVariable(name: "i", scope: !2142, file: !3, line: 2260, type: !7)
!2149 = !DILocalVariable(name: "new_by_depth", scope: !2142, file: !3, line: 2263, type: !243)
!2150 = !DILocalVariable(name: "new_save_in_use", scope: !2142, file: !3, line: 2264, type: !271)
!2151 = !DILocalVariable(name: "p", scope: !2152, file: !3, line: 2291, type: !244)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 2290, column: 5)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 2289, column: 3)
!2154 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 2289, column: 3)
!2155 = !DILocation(line: 0, scope: !2142)
!2156 = !DILocation(line: 2266, column: 18, scope: !2142)
!2157 = !DILocation(line: 2267, column: 21, scope: !2142)
!2158 = !DILocation(line: 2270, column: 7, scope: !2142)
!2159 = !DILocation(line: 2270, column: 5, scope: !2142)
!2160 = !DILocation(line: 2270, column: 4, scope: !2142)
!2161 = !DILocation(line: 2271, column: 4, scope: !2142)
!2162 = !DILocation(line: 2271, column: 26, scope: !2142)
!2163 = !DILocation(line: 2269, column: 3, scope: !2142)
!2164 = !DILocation(line: 2272, column: 12, scope: !2142)
!2165 = !DILocation(line: 2272, column: 11, scope: !2142)
!2166 = !DILocation(line: 2273, column: 7, scope: !2142)
!2167 = !DILocation(line: 2274, column: 26, scope: !2142)
!2168 = !DILocation(line: 2272, column: 3, scope: !2142)
!2169 = !DILocation(line: 2276, column: 7, scope: !2142)
!2170 = !DILocation(line: 2276, column: 5, scope: !2142)
!2171 = !DILocation(line: 2276, column: 4, scope: !2142)
!2172 = !DILocation(line: 2275, column: 3, scope: !2142)
!2173 = !DILocation(line: 2278, column: 12, scope: !2142)
!2174 = !DILocation(line: 2278, column: 11, scope: !2142)
!2175 = !DILocation(line: 2279, column: 7, scope: !2142)
!2176 = !DILocation(line: 2278, column: 3, scope: !2142)
!2177 = !DILocation(line: 2282, column: 11, scope: !2142)
!2178 = !DILocation(line: 2282, column: 3, scope: !2142)
!2179 = !DILocation(line: 2283, column: 11, scope: !2142)
!2180 = !DILocation(line: 2283, column: 3, scope: !2142)
!2181 = !DILocation(line: 2285, column: 14, scope: !2142)
!2182 = !DILocation(line: 2286, column: 17, scope: !2142)
!2183 = !DILocation(line: 2289, column: 14, scope: !2154)
!2184 = !DILocation(line: 2289, column: 8, scope: !2154)
!2185 = !DILocation(line: 0, scope: !2154)
!2186 = !DILocation(line: 2289, column: 33, scope: !2153)
!2187 = !DILocation(line: 2289, column: 3, scope: !2154)
!2188 = !DILocation(line: 2291, column: 25, scope: !2152)
!2189 = !DILocation(line: 2291, column: 35, scope: !2152)
!2190 = !DILocation(line: 2291, column: 23, scope: !2152)
!2191 = !DILocation(line: 0, scope: !2152)
!2192 = !DILocation(line: 2292, column: 10, scope: !2152)
!2193 = !DILocation(line: 2292, column: 25, scope: !2152)
!2194 = !DILocation(line: 2289, column: 3, scope: !2153)
!2195 = distinct !{!2195, !2187, !2196}
!2196 = !DILocation(line: 2293, column: 5, scope: !2154)
!2197 = !DILocation(line: 2300, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 2300, column: 7)
!2199 = !DILocation(line: 2300, column: 7, scope: !2142)
!2200 = !DILocation(line: 2301, column: 5, scope: !2198)
!2201 = !DILocation(line: 2302, column: 1, scope: !2142)
!2202 = distinct !DISubprogram(name: "set_page_group_in_use", scope: !3, file: !3, line: 717, type: !2203, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !286, !232}
!2205 = !{!2206, !2207}
!2206 = !DILocalVariable(name: "group", arg: 1, scope: !2202, file: !3, line: 717, type: !286)
!2207 = !DILocalVariable(name: "page", arg: 2, scope: !2202, file: !3, line: 717, type: !232)
!2208 = !DILocation(line: 0, scope: !2202)
!2209 = !DILocation(line: 719, column: 50, scope: !2202)
!2210 = !DILocation(line: 719, column: 25, scope: !2202)
!2211 = !DILocation(line: 719, column: 22, scope: !2202)
!2212 = !DILocation(line: 719, column: 10, scope: !2202)
!2213 = !DILocation(line: 719, column: 17, scope: !2202)
!2214 = !DILocation(line: 720, column: 1, scope: !2202)
!2215 = distinct !DISubprogram(name: "page_group_index", scope: !3, file: !3, line: 709, type: !2216, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!240, !232, !232}
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "allocation", arg: 1, scope: !2215, file: !3, line: 709, type: !232)
!2220 = !DILocalVariable(name: "page", arg: 2, scope: !2215, file: !3, line: 709, type: !232)
!2221 = !DILocation(line: 0, scope: !2215)
!2222 = !DILocation(line: 711, column: 25, scope: !2215)
!2223 = !DILocation(line: 711, column: 44, scope: !2215)
!2224 = !DILocation(line: 711, column: 39, scope: !2215)
!2225 = !DILocation(line: 711, column: 3, scope: !2215)
