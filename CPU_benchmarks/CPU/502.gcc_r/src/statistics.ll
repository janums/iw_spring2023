; ModuleID = 'statistics.bc'
source_filename = "statistics.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type opaque
%struct.control_flow_graph = type opaque
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.statistics_counter_s = type { i8*, i32, i8, i64, i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.dump_file_info = type { i8*, i8*, i8*, i32, i32, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@current_pass = external dso_local local_unnamed_addr global %struct.opt_pass*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Pass statistics:\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@statistics_dump_file = internal unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !0
@statistics_dump_flags = internal unnamed_addr global i32 0, align 4, !dbg !522
@nr_statistics_hashes = internal unnamed_addr global i32 0, align 4, !dbg !528
@statistics_hashes = internal unnamed_addr global %struct.htab** null, align 8, !dbg !524
@statistics_dump_nr = internal unnamed_addr global i32 0, align 4, !dbg !520
@.str.3 = private unnamed_addr constant [12 x i8] c".statistics\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"statistics.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%d %s \22%s\22 \22%s\22 %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(nofn)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%d %s \22%s == %d\22 \22%s\22 1\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%s == %d: %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%s: %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%d %s \22%s == %d\22 \22%s\22 %ld\0A\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"%d %s \22%s\22 \22%s\22 %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"%d %s \22%s == %d\22 %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"%d %s \22%s\22 %ld\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !590 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !603, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !606
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !607
  ret i32 %call, !dbg !608
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !609 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !613
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !614
  ret i32 %call, !dbg !615
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !616 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !620, metadata !DIExpression()), !dbg !621
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !622
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !622
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !622
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !622
  %cmp = icmp uge i8* %0, %1, !dbg !622
  %conv1 = zext i1 %cmp to i64, !dbg !622
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !622
  %tobool = icmp eq i64 %expval, 0, !dbg !622
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !622

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !622
  br label %cond.end, !dbg !622

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !622
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !622
  %2 = load i8, i8* %0, align 1, !dbg !622
  %conv3 = zext i8 %2 to i32, !dbg !622
  br label %cond.end, !dbg !622

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !622
  ret i32 %cond, !dbg !623
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !624 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !626, metadata !DIExpression()), !dbg !627
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !628
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !628
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !628
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !628
  %cmp = icmp uge i8* %0, %1, !dbg !628
  %conv1 = zext i1 %cmp to i64, !dbg !628
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !628
  %tobool = icmp eq i64 %expval, 0, !dbg !628
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !628

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !628
  br label %cond.end, !dbg !628

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !628
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !628
  %2 = load i8, i8* %0, align 1, !dbg !628
  %conv3 = zext i8 %2 to i32, !dbg !628
  br label %cond.end, !dbg !628

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !628
  ret i32 %cond, !dbg !629
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !630 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !631
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !631
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !631
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !631
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !631
  %cmp = icmp uge i8* %1, %2, !dbg !631
  %conv1 = zext i1 %cmp to i64, !dbg !631
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !631
  %tobool = icmp eq i64 %expval, 0, !dbg !631
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !631

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !631
  br label %cond.end, !dbg !631

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !631
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !631
  %3 = load i8, i8* %1, align 1, !dbg !631
  %conv3 = zext i8 %3 to i32, !dbg !631
  br label %cond.end, !dbg !631

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !631
  ret i32 %cond, !dbg !632
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !633 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !637, metadata !DIExpression()), !dbg !638
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !639
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !640
  ret i32 %call, !dbg !641
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !642 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !646, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !647, metadata !DIExpression()), !dbg !648
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !649
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !649
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !649
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !649
  %cmp = icmp uge i8* %0, %1, !dbg !649
  %conv1 = zext i1 %cmp to i64, !dbg !649
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !649
  %tobool = icmp eq i64 %expval, 0, !dbg !649
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !649

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !649
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !649
  br label %cond.end, !dbg !649

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !649
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !649
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !649
  store i8 %conv2, i8* %0, align 1, !dbg !649
  %conv6 = and i32 %__c, 255, !dbg !649
  br label %cond.end, !dbg !649

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !649
  ret i32 %cond, !dbg !650
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !651 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !653, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !654, metadata !DIExpression()), !dbg !655
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !656
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !656
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !656
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !656
  %cmp = icmp uge i8* %0, %1, !dbg !656
  %conv1 = zext i1 %cmp to i64, !dbg !656
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !656
  %tobool = icmp eq i64 %expval, 0, !dbg !656
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !656

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !656
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !656
  br label %cond.end, !dbg !656

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !656
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !656
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !656
  store i8 %conv2, i8* %0, align 1, !dbg !656
  %conv6 = and i32 %__c, 255, !dbg !656
  br label %cond.end, !dbg !656

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !656
  ret i32 %cond, !dbg !657
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !658 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !662
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !662
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !662
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !662
  %cmp = icmp uge i8* %1, %2, !dbg !662
  %conv1 = zext i1 %cmp to i64, !dbg !662
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !662
  %tobool = icmp eq i64 %expval, 0, !dbg !662
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !662

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !662
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !662
  br label %cond.end, !dbg !662

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !662
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !662
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !662
  store i8 %conv4, i8* %1, align 1, !dbg !662
  %conv6 = and i32 %__c, 255, !dbg !662
  br label %cond.end, !dbg !662

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !662
  ret i32 %cond, !dbg !663
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !664 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !670, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i64* %__n, metadata !671, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !672, metadata !DIExpression()), !dbg !673
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !674
  ret i64 %call, !dbg !675
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !676 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !678, metadata !DIExpression()), !dbg !679
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !680
  %0 = load i32, i32* %_flags, align 8, !dbg !680
  %and = lshr i32 %0, 4, !dbg !680
  %and.lobit = and i32 %and, 1, !dbg !680
  ret i32 %and.lobit, !dbg !681
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !682 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !684, metadata !DIExpression()), !dbg !685
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !686
  %0 = load i32, i32* %_flags, align 8, !dbg !686
  %and = lshr i32 %0, 5, !dbg !686
  %and.lobit = and i32 %and, 1, !dbg !686
  ret i32 %and.lobit, !dbg !687
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !688 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !691, metadata !DIExpression()), !dbg !692
  %__c.off = add i32 %__c, 128, !dbg !693
  %0 = icmp ult i32 %__c.off, 384, !dbg !693
  br i1 %0, label %cond.true, label %cond.end, !dbg !693

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !694
  %1 = load i32*, i32** %call, align 8, !dbg !695
  %idxprom = sext i32 %__c to i64, !dbg !696
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !696
  %2 = load i32, i32* %arrayidx, align 4, !dbg !696
  br label %cond.end, !dbg !697

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !697
  ret i32 %cond, !dbg !698
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !699 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !701, metadata !DIExpression()), !dbg !702
  %__c.off = add i32 %__c, 128, !dbg !703
  %0 = icmp ult i32 %__c.off, 384, !dbg !703
  br i1 %0, label %cond.true, label %cond.end, !dbg !703

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !704
  %1 = load i32*, i32** %call, align 8, !dbg !705
  %idxprom = sext i32 %__c to i64, !dbg !706
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !706
  %2 = load i32, i32* %arrayidx, align 4, !dbg !706
  br label %cond.end, !dbg !707

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !707
  ret i32 %cond, !dbg !708
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !709 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !714, metadata !DIExpression()), !dbg !715
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !716
  %conv = trunc i64 %call to i32, !dbg !717
  ret i32 %conv, !dbg !718
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !719 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !723, metadata !DIExpression()), !dbg !724
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !725
  ret i64 %call, !dbg !726
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !727 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !732, metadata !DIExpression()), !dbg !733
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !734
  ret i64 %call, !dbg !735
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !736 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !742, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8* %__base, metadata !743, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !744, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %__size, metadata !745, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !746, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 0, metadata !747, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !748, metadata !DIExpression()), !dbg !752
  br label %while.cond, !dbg !753

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !754
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !752
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !748, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !747, metadata !DIExpression()), !dbg !752
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !755
  br i1 %cmp, label %while.body, label %cleanup, !dbg !753

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !756
  %div = lshr i64 %add, 1, !dbg !758
  call void @llvm.dbg.value(metadata i64 %div, metadata !749, metadata !DIExpression()), !dbg !752
  %mul = mul i64 %div, %__size, !dbg !759
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !760
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !750, metadata !DIExpression()), !dbg !752
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !761
  call void @llvm.dbg.value(metadata i32 %call, metadata !751, metadata !DIExpression()), !dbg !752
  %cmp1 = icmp slt i32 %call, 0, !dbg !762
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !764

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !765
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !767

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !768
  call void @llvm.dbg.value(metadata i64 %add4, metadata !747, metadata !DIExpression()), !dbg !752
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !752
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !752
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !748, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !747, metadata !DIExpression()), !dbg !752
  br label %while.cond, !dbg !753, !llvm.loop !769

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !752
  ret i8* %retval.0, !dbg !771
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !772 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !778, metadata !DIExpression()), !dbg !779
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !780
  ret double %call, !dbg !781
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !782 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !791, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !792, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i32 %base, metadata !793, metadata !DIExpression()), !dbg !794
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !795
  ret i64 %call, !dbg !796
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !797 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !803, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !804, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %base, metadata !805, metadata !DIExpression()), !dbg !806
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !807
  ret i64 %call, !dbg !808
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !809 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !820, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !821, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 %base, metadata !822, metadata !DIExpression()), !dbg !823
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !824
  ret i64 %call, !dbg !825
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !826 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !830, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !831, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i32 %base, metadata !832, metadata !DIExpression()), !dbg !833
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !834
  ret i64 %call, !dbg !835
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !836 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !878, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !879, metadata !DIExpression()), !dbg !880
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !881
  ret i32 %call, !dbg !882
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !883 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !885, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !886, metadata !DIExpression()), !dbg !887
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !888
  ret i32 %call, !dbg !889
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !890 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !894, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !895, metadata !DIExpression()), !dbg !896
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !897
  ret i32 %call, !dbg !898
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !899 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !903, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !904, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !905, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !906, metadata !DIExpression()), !dbg !907
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !908
  ret i32 %call, !dbg !909
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !910 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !914, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !915, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !916, metadata !DIExpression()), !dbg !917
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !916, metadata !DIExpression(DW_OP_deref)), !dbg !917
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !918
  ret i32 %call, !dbg !919
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !920 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !924, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i8* %__path, metadata !925, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !926, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !927, metadata !DIExpression()), !dbg !928
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !927, metadata !DIExpression(DW_OP_deref)), !dbg !928
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !929
  ret i32 %call, !dbg !930
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !931 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !955, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !956, metadata !DIExpression()), !dbg !957
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !958
  ret i32 %call, !dbg !959
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !960 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !962, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !963, metadata !DIExpression()), !dbg !964
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !965
  ret i32 %call, !dbg !966
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !967 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !971, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !972, metadata !DIExpression()), !dbg !973
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !974
  ret i32 %call, !dbg !975
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !976 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !980, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !981, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !982, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !983, metadata !DIExpression()), !dbg !984
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !985
  ret i32 %call, !dbg !986
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @statistics_fini_pass() local_unnamed_addr #4 !dbg !987 {
entry:
  %0 = load %struct.opt_pass*, %struct.opt_pass** @current_pass, align 8, !dbg !990
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %0, i64 0, i32 6, !dbg !992
  %1 = load i32, i32* %static_pass_number, align 8, !dbg !992
  %cmp = icmp eq i32 %1, -1, !dbg !993
  br i1 %cmp, label %return, label %if.end, !dbg !994

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !995
  %tobool = icmp eq %struct._IO_FILE* %2, null, !dbg !995
  br i1 %tobool, label %if.end7, label %land.lhs.true, !dbg !997

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* @dump_flags, align 4, !dbg !998
  %and = and i32 %3, 16, !dbg !999
  %tobool1 = icmp eq i32 %and, 0, !dbg !999
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !1000

if.then2:                                         ; preds = %land.lhs.true
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1001
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1003
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1004
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1005
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1006
  %call5 = tail call fastcc %struct.htab* @curr_statistics_hash() #7, !dbg !1007
  tail call void @htab_traverse_noresize(%struct.htab* %call5, i32 (i8**, i8*)* nonnull @statistics_fini_pass_1, i8* null) #6, !dbg !1008
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1009
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1010
  br label %if.end7, !dbg !1011

if.end7:                                          ; preds = %land.lhs.true, %if.end, %if.then2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @statistics_dump_file, align 8, !dbg !1012
  %tobool8 = icmp eq %struct._IO_FILE* %7, null, !dbg !1012
  br i1 %tobool8, label %if.end16, label %land.lhs.true9, !dbg !1014

land.lhs.true9:                                   ; preds = %if.end7
  %8 = load i32, i32* @statistics_dump_flags, align 4, !dbg !1015
  %and10 = and i32 %8, 16, !dbg !1016
  %tobool11 = icmp eq i32 %and10, 0, !dbg !1016
  br i1 %tobool11, label %lor.lhs.false, label %if.end16, !dbg !1017

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %and12 = and i32 %8, 8, !dbg !1018
  %tobool13 = icmp eq i32 %and12, 0, !dbg !1018
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !1019

if.then14:                                        ; preds = %lor.lhs.false
  %call15 = tail call fastcc %struct.htab* @curr_statistics_hash() #7, !dbg !1020
  tail call void @htab_traverse_noresize(%struct.htab* %call15, i32 (i8**, i8*)* nonnull @statistics_fini_pass_2, i8* null) #6, !dbg !1021
  br label %if.end16, !dbg !1021

if.end16:                                         ; preds = %lor.lhs.false, %land.lhs.true9, %if.end7, %if.then14
  %call17 = tail call fastcc %struct.htab* @curr_statistics_hash() #7, !dbg !1022
  tail call void @htab_traverse_noresize(%struct.htab* %call17, i32 (i8**, i8*)* nonnull @statistics_fini_pass_3, i8* null) #6, !dbg !1023
  br label %return, !dbg !1024

return:                                           ; preds = %entry, %if.end16
  ret void, !dbg !1024
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local void @htab_traverse_noresize(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.htab* @curr_statistics_hash() unnamed_addr #4 !dbg !1025 {
entry:
  %0 = load %struct.opt_pass*, %struct.opt_pass** @current_pass, align 8, !dbg !1030
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %0, i64 0, i32 6, !dbg !1030
  %1 = load i32, i32* %static_pass_number, align 8, !dbg !1030
  %cmp = icmp sgt i32 %1, -1, !dbg !1030
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1030

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1030
  %.pre = load %struct.opt_pass*, %struct.opt_pass** @current_pass, align 8, !dbg !1031
  %static_pass_number1.phi.trans.insert = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %.pre, i64 0, i32 6, !dbg !1032
  %.pre1 = load i32, i32* %static_pass_number1.phi.trans.insert, align 8, !dbg !1033
  br label %cond.end, !dbg !1030

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i32 [ %1, %entry ], [ %.pre1, %cond.true ], !dbg !1033
  call void @llvm.dbg.value(metadata i32 %2, metadata !1029, metadata !DIExpression()), !dbg !1032
  %3 = load i32, i32* @nr_statistics_hashes, align 4, !dbg !1034
  %cmp2 = icmp ult i32 %2, %3, !dbg !1036
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !1037

land.lhs.true:                                    ; preds = %cond.end
  %4 = load %struct.htab**, %struct.htab*** @statistics_hashes, align 8, !dbg !1038
  %idxprom = zext i32 %2 to i64, !dbg !1038
  %arrayidx = getelementptr inbounds %struct.htab*, %struct.htab** %4, i64 %idxprom, !dbg !1038
  %5 = load %struct.htab*, %struct.htab** %arrayidx, align 8, !dbg !1038
  %cmp3 = icmp eq %struct.htab* %5, null, !dbg !1039
  br i1 %cmp3, label %if.end, label %if.then, !dbg !1040

if.then:                                          ; preds = %land.lhs.true
  br label %cleanup, !dbg !1041

if.end:                                           ; preds = %land.lhs.true, %cond.end
  br i1 %cmp2, label %if.end13, label %if.then7, !dbg !1042

if.then7:                                         ; preds = %if.end
  %6 = load i8*, i8** bitcast (%struct.htab*** @statistics_hashes to i8**), align 8, !dbg !1043
  %add = add i32 %2, 1, !dbg !1043
  %conv = zext i32 %add to i64, !dbg !1043
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1043
  %call = tail call i8* @xrealloc(i8* %6, i64 %mul) #6, !dbg !1043
  store i8* %call, i8** bitcast (%struct.htab*** @statistics_hashes to i8**), align 8, !dbg !1046
  %.cast = bitcast i8* %call to %struct.htab**, !dbg !1047
  %7 = load i32, i32* @nr_statistics_hashes, align 4, !dbg !1048
  %idx.ext = zext i32 %7 to i64, !dbg !1049
  %add.ptr = getelementptr inbounds %struct.htab*, %struct.htab** %.cast, i64 %idx.ext, !dbg !1049
  %8 = bitcast %struct.htab** %add.ptr to i8*, !dbg !1047
  %sub = sub i32 %add, %7, !dbg !1050
  %conv9 = zext i32 %sub to i64, !dbg !1051
  %mul10 = shl nuw nsw i64 %conv9, 3, !dbg !1052
  %call11 = tail call i8* @memset(i8* %8, i32 0, i64 %mul10) #6, !dbg !1053
  store i32 %add, i32* @nr_statistics_hashes, align 4, !dbg !1054
  br label %if.end13, !dbg !1055

if.end13:                                         ; preds = %if.end, %if.then7
  %call14 = tail call %struct.htab* @htab_create(i64 15, i32 (i8*)* nonnull @hash_statistics_hash, i32 (i8*, i8*)* nonnull @hash_statistics_eq, void (i8*)* nonnull @hash_statistics_free) #6, !dbg !1056
  %9 = load %struct.htab**, %struct.htab*** @statistics_hashes, align 8, !dbg !1057
  %idxprom15 = zext i32 %2 to i64, !dbg !1057
  %arrayidx16 = getelementptr inbounds %struct.htab*, %struct.htab** %9, i64 %idxprom15, !dbg !1057
  store %struct.htab* %call14, %struct.htab** %arrayidx16, align 8, !dbg !1058
  %10 = load %struct.htab**, %struct.htab*** @statistics_hashes, align 8, !dbg !1059
  %arrayidx18 = getelementptr inbounds %struct.htab*, %struct.htab** %10, i64 %idxprom15, !dbg !1059
  %retval.0.pre = load %struct.htab*, %struct.htab** %arrayidx18, align 8, !dbg !1032
  br label %cleanup, !dbg !1060

cleanup:                                          ; preds = %if.end13, %if.then
  %retval.0 = phi %struct.htab* [ %5, %if.then ], [ %retval.0.pre, %if.end13 ], !dbg !1032
  ret %struct.htab* %retval.0, !dbg !1061
}

; Function Attrs: nounwind uwtable
define internal i32 @statistics_fini_pass_1(i8** %slot, i8* %data) #4 !dbg !1062 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1066, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i8* %data, metadata !1067, metadata !DIExpression()), !dbg !1070
  %0 = bitcast i8** %slot to %struct.statistics_counter_s**, !dbg !1071
  %1 = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %0, align 8, !dbg !1071
  call void @llvm.dbg.value(metadata %struct.statistics_counter_s* %1, metadata !1068, metadata !DIExpression()), !dbg !1070
  %count1 = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 3, !dbg !1072
  %2 = load i64, i64* %count1, align 8, !dbg !1072
  %prev_dumped_count = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 4, !dbg !1073
  %3 = load i64, i64* %prev_dumped_count, align 8, !dbg !1073
  %sub = sub i64 %2, %3, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1069, metadata !DIExpression()), !dbg !1070
  %cmp = icmp eq i64 %sub, 0, !dbg !1075
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1077

if.end:                                           ; preds = %entry
  %histogram_p = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 2, !dbg !1078
  %4 = load i8, i8* %histogram_p, align 4, !dbg !1078
  %tobool = icmp eq i8 %4, 0, !dbg !1080
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1081
  %id = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 0, !dbg !1081
  %6 = load i8*, i8** %id, align 8, !dbg !1081
  br i1 %tobool, label %if.else, label %if.then2, !dbg !1082

if.then2:                                         ; preds = %if.end
  %val = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 1, !dbg !1083
  %7 = load i32, i32* %val, align 8, !dbg !1083
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %6, i32 %7, i64 %sub) #6, !dbg !1084
  br label %if.end5, !dbg !1084

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %6, i64 %sub) #6, !dbg !1085
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %8 = load i64, i64* %count1, align 8, !dbg !1086
  store i64 %8, i64* %prev_dumped_count, align 8, !dbg !1087
  br label %cleanup, !dbg !1088

cleanup:                                          ; preds = %entry, %if.end5
  ret i32 1, !dbg !1089
}

; Function Attrs: nounwind uwtable
define internal i32 @statistics_fini_pass_2(i8** %slot, i8* %data) #4 !dbg !1090 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1092, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %data, metadata !1093, metadata !DIExpression()), !dbg !1096
  %0 = bitcast i8** %slot to %struct.statistics_counter_s**, !dbg !1097
  %1 = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %0, align 8, !dbg !1097
  call void @llvm.dbg.value(metadata %struct.statistics_counter_s* %1, metadata !1094, metadata !DIExpression()), !dbg !1096
  %count1 = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 3, !dbg !1098
  %2 = load i64, i64* %count1, align 8, !dbg !1098
  %prev_dumped_count = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 4, !dbg !1099
  %3 = load i64, i64* %prev_dumped_count, align 8, !dbg !1099
  %sub = sub i64 %2, %3, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1095, metadata !DIExpression()), !dbg !1096
  %cmp = icmp eq i64 %sub, 0, !dbg !1101
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1103

if.end:                                           ; preds = %entry
  store i64 %2, i64* %prev_dumped_count, align 8, !dbg !1104
  %histogram_p = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 2, !dbg !1105
  %4 = load i8, i8* %histogram_p, align 4, !dbg !1105
  %tobool = icmp eq i8 %4, 0, !dbg !1107
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @statistics_dump_file, align 8, !dbg !1108
  %6 = load %struct.opt_pass*, %struct.opt_pass** @current_pass, align 8, !dbg !1108
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %6, i64 0, i32 6, !dbg !1108
  %7 = load i32, i32* %static_pass_number, align 8, !dbg !1108
  %name = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %6, i64 0, i32 1, !dbg !1108
  %8 = load i8*, i8** %name, align 8, !dbg !1108
  %id = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 0, !dbg !1108
  %9 = load i8*, i8** %id, align 8, !dbg !1108
  br i1 %tobool, label %if.else, label %if.then4, !dbg !1109

if.then4:                                         ; preds = %if.end
  %val = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 1, !dbg !1110
  %10 = load i32, i32* %val, align 8, !dbg !1110
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1111
  %tobool5 = icmp eq %struct.function* %11, null, !dbg !1111
  br i1 %tobool5, label %cond.end, label %cond.true, !dbg !1111

cond.true:                                        ; preds = %if.then4
  %decl = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 6, !dbg !1112
  %12 = bitcast %union.tree_node** %decl to %struct.tree_decl_minimal**, !dbg !1112
  %13 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %12, align 8, !dbg !1112
  %name7 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %13, i64 0, i32 3, !dbg !1112
  %14 = bitcast %union.tree_node** %name7 to %struct.tree_identifier**, !dbg !1112
  %15 = load %struct.tree_identifier*, %struct.tree_identifier** %14, align 8, !dbg !1112
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %15, i64 0, i32 1, i32 0, !dbg !1112
  %16 = load i8*, i8** %str, align 8, !dbg !1112
  br label %cond.end, !dbg !1111

cond.end:                                         ; preds = %if.then4, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %if.then4 ], !dbg !1111
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %7, i8* %8, i8* %9, i32 %10, i8* %cond, i64 %sub) #6, !dbg !1113
  br label %if.end26, !dbg !1113

if.else:                                          ; preds = %if.end
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1114
  %tobool13 = icmp eq %struct.function* %17, null, !dbg !1114
  br i1 %tobool13, label %cond.end23, label %cond.true14, !dbg !1114

cond.true14:                                      ; preds = %if.else
  %decl16 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 6, !dbg !1115
  %18 = bitcast %union.tree_node** %decl16 to %struct.tree_decl_minimal**, !dbg !1115
  %19 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %18, align 8, !dbg !1115
  %name18 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %19, i64 0, i32 3, !dbg !1115
  %20 = bitcast %union.tree_node** %name18 to %struct.tree_identifier**, !dbg !1115
  %21 = load %struct.tree_identifier*, %struct.tree_identifier** %20, align 8, !dbg !1115
  %str21 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %21, i64 0, i32 1, i32 0, !dbg !1115
  %22 = load i8*, i8** %str21, align 8, !dbg !1115
  br label %cond.end23, !dbg !1114

cond.end23:                                       ; preds = %if.else, %cond.true14
  %cond24 = phi i8* [ %22, %cond.true14 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %if.else ], !dbg !1114
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %7, i8* %8, i8* %9, i8* %cond24, i64 %sub) #6, !dbg !1116
  br label %if.end26

if.end26:                                         ; preds = %cond.end23, %cond.end
  %23 = load i64, i64* %count1, align 8, !dbg !1117
  store i64 %23, i64* %prev_dumped_count, align 8, !dbg !1118
  br label %cleanup, !dbg !1119

cleanup:                                          ; preds = %entry, %if.end26
  ret i32 1, !dbg !1120
}

; Function Attrs: nounwind uwtable
define internal i32 @statistics_fini_pass_3(i8** %slot, i8* %data) #4 !dbg !1121 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1123, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8* %data, metadata !1124, metadata !DIExpression()), !dbg !1126
  %0 = bitcast i8** %slot to %struct.statistics_counter_s**, !dbg !1127
  %1 = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %0, align 8, !dbg !1127
  call void @llvm.dbg.value(metadata %struct.statistics_counter_s* %1, metadata !1125, metadata !DIExpression()), !dbg !1126
  %count = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 3, !dbg !1128
  %2 = load i64, i64* %count, align 8, !dbg !1128
  %prev_dumped_count = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 4, !dbg !1129
  store i64 %2, i64* %prev_dumped_count, align 8, !dbg !1130
  ret i32 1, !dbg !1131
}

; Function Attrs: nounwind uwtable
define dso_local void @statistics_fini() local_unnamed_addr #4 !dbg !1132 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @statistics_dump_file, align 8, !dbg !1137
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !1137
  br i1 %tobool, label %return, label %if.end, !dbg !1139

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @statistics_dump_flags, align 4, !dbg !1140
  %and = and i32 %1, 16, !dbg !1141
  %tobool1 = icmp eq i32 %and, 0, !dbg !1141
  br i1 %tobool1, label %if.end10, label %for.cond.preheader, !dbg !1142

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !1143

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !1145
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1134, metadata !DIExpression()), !dbg !1146
  %2 = load i32, i32* @nr_statistics_hashes, align 4, !dbg !1147
  %3 = zext i32 %2 to i64, !dbg !1149
  %cmp = icmp ult i64 %indvars.iv, %3, !dbg !1149
  br i1 %cmp, label %for.body, label %if.end10.loopexit, !dbg !1143

for.body:                                         ; preds = %for.cond
  %4 = load %struct.htab**, %struct.htab*** @statistics_hashes, align 8, !dbg !1150
  %arrayidx = getelementptr inbounds %struct.htab*, %struct.htab** %4, i64 %indvars.iv, !dbg !1150
  %5 = load %struct.htab*, %struct.htab** %arrayidx, align 8, !dbg !1150
  %cmp3 = icmp eq %struct.htab* %5, null, !dbg !1152
  br i1 %cmp3, label %for.inc, label %land.lhs.true, !dbg !1153

land.lhs.true:                                    ; preds = %for.body
  %6 = trunc i64 %indvars.iv to i32, !dbg !1154
  %call = tail call %struct.opt_pass* @get_pass_for_id(i32 %6) #6, !dbg !1154
  %cmp4 = icmp eq %struct.opt_pass* %call, null, !dbg !1155
  br i1 %cmp4, label %for.inc, label %if.then5, !dbg !1156

if.then5:                                         ; preds = %land.lhs.true
  %7 = load %struct.htab**, %struct.htab*** @statistics_hashes, align 8, !dbg !1157
  %arrayidx7 = getelementptr inbounds %struct.htab*, %struct.htab** %7, i64 %indvars.iv, !dbg !1157
  %8 = load %struct.htab*, %struct.htab** %arrayidx7, align 8, !dbg !1157
  %9 = trunc i64 %indvars.iv to i32, !dbg !1158
  %call8 = tail call %struct.opt_pass* @get_pass_for_id(i32 %9) #6, !dbg !1158
  %10 = bitcast %struct.opt_pass* %call8 to i8*, !dbg !1158
  tail call void @htab_traverse_noresize(%struct.htab* %8, i32 (i8**, i8*)* nonnull @statistics_fini_1, i8* %10) #6, !dbg !1159
  br label %for.inc, !dbg !1159

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1160
  br label %for.cond, !dbg !1161, !llvm.loop !1162

if.end10.loopexit:                                ; preds = %for.cond
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** @statistics_dump_file, align 8, !dbg !1164
  br label %if.end10, !dbg !1165

if.end10:                                         ; preds = %if.end10.loopexit, %if.end
  %11 = phi %struct._IO_FILE* [ %.pre, %if.end10.loopexit ], [ %0, %if.end ], !dbg !1164
  %12 = load i32, i32* @statistics_dump_nr, align 4, !dbg !1165
  tail call void @dump_end(i32 %12, %struct._IO_FILE* %11) #6, !dbg !1166
  br label %return, !dbg !1167

return:                                           ; preds = %entry, %if.end10
  ret void, !dbg !1167
}

declare dso_local %struct.opt_pass* @get_pass_for_id(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @statistics_fini_1(i8** %slot, i8* %data) #4 !dbg !1168 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1170, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %data, metadata !1171, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %data, metadata !1172, metadata !DIExpression()), !dbg !1174
  %0 = bitcast i8** %slot to %struct.statistics_counter_s**, !dbg !1175
  %1 = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %0, align 8, !dbg !1175
  call void @llvm.dbg.value(metadata %struct.statistics_counter_s* %1, metadata !1173, metadata !DIExpression()), !dbg !1174
  %count = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 3, !dbg !1176
  %2 = load i64, i64* %count, align 8, !dbg !1176
  %cmp = icmp eq i64 %2, 0, !dbg !1178
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1179

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %data, metadata !1172, metadata !DIExpression()), !dbg !1174
  %histogram_p = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 2, !dbg !1180
  %3 = load i8, i8* %histogram_p, align 4, !dbg !1180
  %tobool = icmp eq i8 %3, 0, !dbg !1182
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @statistics_dump_file, align 8, !dbg !1183
  %static_pass_number = getelementptr inbounds i8, i8* %data, i64 48, !dbg !1183
  %5 = bitcast i8* %static_pass_number to i32*, !dbg !1183
  %6 = load i32, i32* %5, align 8, !dbg !1183
  %name = getelementptr inbounds i8, i8* %data, i64 8, !dbg !1183
  %7 = bitcast i8* %name to i8**, !dbg !1183
  %8 = load i8*, i8** %7, align 8, !dbg !1183
  %id = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 0, !dbg !1183
  %9 = load i8*, i8** %id, align 8, !dbg !1183
  br i1 %tobool, label %if.else, label %if.then1, !dbg !1184

if.then1:                                         ; preds = %if.end
  %val = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %1, i64 0, i32 1, !dbg !1185
  %10 = load i32, i32* %val, align 8, !dbg !1185
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %6, i8* %8, i8* %9, i32 %10, i64 %2) #6, !dbg !1186
  br label %cleanup, !dbg !1186

if.else:                                          ; preds = %if.end
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %6, i8* %8, i8* %9, i64 %2) #6, !dbg !1187
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.else, %entry
  ret i32 1, !dbg !1188
}

declare dso_local void @dump_end(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @statistics_early_init() local_unnamed_addr #4 !dbg !1189 {
entry:
  %call = tail call i32 @dump_register(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 512) #6, !dbg !1190
  store i32 %call, i32* @statistics_dump_nr, align 4, !dbg !1191
  ret void, !dbg !1192
}

declare dso_local i32 @dump_register(i8*, i8*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @statistics_init() local_unnamed_addr #4 !dbg !1193 {
entry:
  %0 = load i32, i32* @statistics_dump_nr, align 4, !dbg !1194
  %call = tail call %struct._IO_FILE* @dump_begin(i32 %0, i32* null) #6, !dbg !1195
  store %struct._IO_FILE* %call, %struct._IO_FILE** @statistics_dump_file, align 8, !dbg !1196
  %1 = load i32, i32* @statistics_dump_nr, align 4, !dbg !1197
  %call1 = tail call %struct.dump_file_info* @get_dump_file_info(i32 %1) #6, !dbg !1198
  %flags = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %call1, i64 0, i32 3, !dbg !1199
  %2 = load i32, i32* %flags, align 8, !dbg !1199
  store i32 %2, i32* @statistics_dump_flags, align 4, !dbg !1200
  ret void, !dbg !1201
}

declare dso_local %struct._IO_FILE* @dump_begin(i32, i32*) local_unnamed_addr #1

declare dso_local %struct.dump_file_info* @get_dump_file_info(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @statistics_counter_event(%struct.function* %fn, i8* %id, i32 %incr) local_unnamed_addr #4 !dbg !1202 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fn, metadata !1912, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8* %id, metadata !1913, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 %incr, metadata !1914, metadata !DIExpression()), !dbg !1916
  %0 = load i32, i32* @dump_flags, align 4, !dbg !1917
  %and = and i32 %0, 16, !dbg !1919
  %tobool = icmp eq i32 %and, 0, !dbg !1919
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @statistics_dump_file, align 8, !dbg !1920
  %tobool1 = icmp eq %struct._IO_FILE* %1, null, !dbg !1920
  %or.cond.not = and i1 %tobool1, %tobool, !dbg !1921
  %cmp = icmp eq i32 %incr, 0, !dbg !1922
  %or.cond1 = or i1 %or.cond.not, %cmp, !dbg !1921
  br i1 %or.cond1, label %cleanup.cont, label %if.end, !dbg !1921

if.end:                                           ; preds = %entry
  %2 = load %struct.opt_pass*, %struct.opt_pass** @current_pass, align 8, !dbg !1923
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %2, i64 0, i32 6, !dbg !1925
  %3 = load i32, i32* %static_pass_number, align 8, !dbg !1925
  %cmp2 = icmp eq i32 %3, -1, !dbg !1926
  br i1 %cmp2, label %if.end6, label %if.then3, !dbg !1927

if.then3:                                         ; preds = %if.end
  %call = tail call fastcc %struct.htab* @curr_statistics_hash() #7, !dbg !1928
  %call4 = tail call fastcc %struct.statistics_counter_s* @lookup_or_add_counter(%struct.htab* %call, i8* %id, i32 0, i8 zeroext 0) #7, !dbg !1930
  call void @llvm.dbg.value(metadata %struct.statistics_counter_s* %call4, metadata !1915, metadata !DIExpression()), !dbg !1916
  %histogram_p = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %call4, i64 0, i32 2, !dbg !1931
  %4 = load i8, i8* %histogram_p, align 4, !dbg !1931
  %tobool5 = icmp eq i8 %4, 0, !dbg !1931
  br i1 %tobool5, label %cond.end, label %cond.true, !dbg !1931

cond.true:                                        ; preds = %if.then3
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 303, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1931
  br label %cond.end, !dbg !1931

cond.end:                                         ; preds = %if.then3, %cond.true
  %conv = sext i32 %incr to i64, !dbg !1932
  %count = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %call4, i64 0, i32 3, !dbg !1933
  %5 = load i64, i64* %count, align 8, !dbg !1934
  %add = add i64 %5, %conv, !dbg !1934
  store i64 %add, i64* %count, align 8, !dbg !1934
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** @statistics_dump_file, align 8, !dbg !1935
  br label %if.end6, !dbg !1937

if.end6:                                          ; preds = %if.end, %cond.end
  %6 = phi %struct._IO_FILE* [ %1, %if.end ], [ %.pre, %cond.end ], !dbg !1935
  %tobool7 = icmp eq %struct._IO_FILE* %6, null, !dbg !1935
  br i1 %tobool7, label %cleanup.cont, label %lor.lhs.false8, !dbg !1938

lor.lhs.false8:                                   ; preds = %if.end6
  %7 = load i32, i32* @statistics_dump_flags, align 4, !dbg !1939
  %and9 = and i32 %7, 8, !dbg !1940
  %tobool10 = icmp eq i32 %and9, 0, !dbg !1940
  br i1 %tobool10, label %cleanup.cont, label %if.end12, !dbg !1941

if.end12:                                         ; preds = %lor.lhs.false8
  %8 = load %struct.opt_pass*, %struct.opt_pass** @current_pass, align 8, !dbg !1942
  %static_pass_number13 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %8, i64 0, i32 6, !dbg !1943
  %9 = load i32, i32* %static_pass_number13, align 8, !dbg !1943
  %name = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %8, i64 0, i32 1, !dbg !1944
  %10 = load i8*, i8** %name, align 8, !dbg !1944
  %tobool14 = icmp eq %struct.function* %fn, null, !dbg !1945
  br i1 %tobool14, label %cond.end19, label %cond.true15, !dbg !1945

cond.true15:                                      ; preds = %if.end12
  %decl = getelementptr inbounds %struct.function, %struct.function* %fn, i64 0, i32 6, !dbg !1946
  %11 = bitcast %union.tree_node** %decl to %struct.tree_decl_minimal**, !dbg !1946
  %12 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %11, align 8, !dbg !1946
  %name16 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %12, i64 0, i32 3, !dbg !1946
  %13 = bitcast %union.tree_node** %name16 to %struct.tree_identifier**, !dbg !1946
  %14 = load %struct.tree_identifier*, %struct.tree_identifier** %13, align 8, !dbg !1946
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %14, i64 0, i32 1, i32 0, !dbg !1946
  %15 = load i8*, i8** %str, align 8, !dbg !1946
  br label %cond.end19, !dbg !1945

cond.end19:                                       ; preds = %if.end12, %cond.true15
  %cond20 = phi i8* [ %15, %cond.true15 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %if.end12 ], !dbg !1945
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %9, i8* %10, i8* %id, i8* %cond20, i32 %incr) #6, !dbg !1947
  br label %cleanup.cont, !dbg !1948

cleanup.cont:                                     ; preds = %lor.lhs.false8, %if.end6, %cond.end19, %entry
  ret void, !dbg !1948
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.statistics_counter_s* @lookup_or_add_counter(%struct.htab* %hash, i8* %id, i32 %val, i8 zeroext %histogram_p) unnamed_addr #4 !dbg !1949 {
entry:
  %c = alloca %struct.statistics_counter_s, align 8
  call void @llvm.dbg.value(metadata %struct.htab* %hash, metadata !1953, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8* %id, metadata !1954, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i32 %val, metadata !1955, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 %histogram_p, metadata !1956, metadata !DIExpression()), !dbg !1959
  %0 = bitcast %struct.statistics_counter_s* %c to i8*, !dbg !1960
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !1960
  %id1 = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %c, i64 0, i32 0, !dbg !1961
  store i8* %id, i8** %id1, align 8, !dbg !1962
  %val2 = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %c, i64 0, i32 1, !dbg !1963
  store i32 %val, i32* %val2, align 8, !dbg !1964
  %call = call i8** @htab_find_slot(%struct.htab* %hash, i8* nonnull %0, i32 1) #6, !dbg !1965
  %1 = bitcast i8** %call to %struct.statistics_counter_s**, !dbg !1966
  call void @llvm.dbg.value(metadata %struct.statistics_counter_s** %1, metadata !1957, metadata !DIExpression()), !dbg !1959
  %2 = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %1, align 8, !dbg !1967
  %tobool = icmp eq %struct.statistics_counter_s* %2, null, !dbg !1967
  br i1 %tobool, label %if.then, label %if.end, !dbg !1969

if.then:                                          ; preds = %entry
  %call3 = call i8* @xmalloc(i64 32) #6, !dbg !1970
  store i8* %call3, i8** %call, align 8, !dbg !1972
  %call4 = call i8* @xstrdup(i8* %id) #6, !dbg !1973
  %3 = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %1, align 8, !dbg !1974
  %id5 = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %3, i64 0, i32 0, !dbg !1975
  store i8* %call4, i8** %id5, align 8, !dbg !1976
  %4 = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %1, align 8, !dbg !1977
  %val6 = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %4, i64 0, i32 1, !dbg !1978
  store i32 %val, i32* %val6, align 8, !dbg !1979
  %5 = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %1, align 8, !dbg !1980
  %histogram_p7 = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %5, i64 0, i32 2, !dbg !1981
  store i8 %histogram_p, i8* %histogram_p7, align 4, !dbg !1982
  %6 = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %1, align 8, !dbg !1983
  %prev_dumped_count = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %6, i64 0, i32 4, !dbg !1984
  store i64 0, i64* %prev_dumped_count, align 8, !dbg !1985
  %7 = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %1, align 8, !dbg !1986
  %count = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %7, i64 0, i32 3, !dbg !1987
  store i64 0, i64* %count, align 8, !dbg !1988
  %.pre = load %struct.statistics_counter_s*, %struct.statistics_counter_s** %1, align 8, !dbg !1989
  br label %if.end, !dbg !1990

if.end:                                           ; preds = %entry, %if.then
  %8 = phi %struct.statistics_counter_s* [ %2, %entry ], [ %.pre, %if.then ], !dbg !1989
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !1991
  ret %struct.statistics_counter_s* %8, !dbg !1992
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @statistics_histogram_event(%struct.function* %fn, i8* %id, i32 %val) local_unnamed_addr #4 !dbg !1993 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fn, metadata !1995, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8* %id, metadata !1996, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i32 %val, metadata !1997, metadata !DIExpression()), !dbg !1999
  %0 = load i32, i32* @dump_flags, align 4, !dbg !2000
  %and = and i32 %0, 16, !dbg !2002
  %tobool = icmp ne i32 %and, 0, !dbg !2002
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @statistics_dump_file, align 8, !dbg !2003
  %tobool1 = icmp ne %struct._IO_FILE* %1, null, !dbg !2003
  %or.cond = or i1 %tobool, %tobool1, !dbg !2004
  br i1 %or.cond, label %if.end, label %cleanup.cont, !dbg !2004

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.htab* @curr_statistics_hash() #7, !dbg !2005
  %call2 = tail call fastcc %struct.statistics_counter_s* @lookup_or_add_counter(%struct.htab* %call, i8* %id, i32 %val, i8 zeroext 1) #7, !dbg !2006
  call void @llvm.dbg.value(metadata %struct.statistics_counter_s* %call2, metadata !1998, metadata !DIExpression()), !dbg !1999
  %histogram_p = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %call2, i64 0, i32 2, !dbg !2007
  %2 = load i8, i8* %histogram_p, align 4, !dbg !2007
  %tobool3 = icmp eq i8 %2, 0, !dbg !2007
  br i1 %tobool3, label %cond.true, label %cond.end, !dbg !2007

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 334, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2007
  br label %cond.end, !dbg !2007

cond.end:                                         ; preds = %if.end, %cond.true
  %count = getelementptr inbounds %struct.statistics_counter_s, %struct.statistics_counter_s* %call2, i64 0, i32 3, !dbg !2008
  %3 = load i64, i64* %count, align 8, !dbg !2009
  %add = add i64 %3, 1, !dbg !2009
  store i64 %add, i64* %count, align 8, !dbg !2009
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @statistics_dump_file, align 8, !dbg !2010
  %tobool4 = icmp eq %struct._IO_FILE* %4, null, !dbg !2010
  br i1 %tobool4, label %cleanup.cont, label %lor.lhs.false, !dbg !2012

lor.lhs.false:                                    ; preds = %cond.end
  %5 = load i32, i32* @statistics_dump_flags, align 4, !dbg !2013
  %and5 = and i32 %5, 8, !dbg !2014
  %tobool6 = icmp eq i32 %and5, 0, !dbg !2014
  br i1 %tobool6, label %cleanup.cont, label %if.end8, !dbg !2015

if.end8:                                          ; preds = %lor.lhs.false
  %6 = load %struct.opt_pass*, %struct.opt_pass** @current_pass, align 8, !dbg !2016
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %6, i64 0, i32 6, !dbg !2017
  %7 = load i32, i32* %static_pass_number, align 8, !dbg !2017
  %name = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %6, i64 0, i32 1, !dbg !2018
  %8 = load i8*, i8** %name, align 8, !dbg !2018
  %tobool9 = icmp eq %struct.function* %fn, null, !dbg !2019
  br i1 %tobool9, label %cond.end14, label %cond.true10, !dbg !2019

cond.true10:                                      ; preds = %if.end8
  %decl = getelementptr inbounds %struct.function, %struct.function* %fn, i64 0, i32 6, !dbg !2020
  %9 = bitcast %union.tree_node** %decl to %struct.tree_decl_minimal**, !dbg !2020
  %10 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %9, align 8, !dbg !2020
  %name11 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %10, i64 0, i32 3, !dbg !2020
  %11 = bitcast %union.tree_node** %name11 to %struct.tree_identifier**, !dbg !2020
  %12 = load %struct.tree_identifier*, %struct.tree_identifier** %11, align 8, !dbg !2020
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %12, i64 0, i32 1, i32 0, !dbg !2020
  %13 = load i8*, i8** %str, align 8, !dbg !2020
  br label %cond.end14, !dbg !2019

cond.end14:                                       ; preds = %if.end8, %cond.true10
  %cond15 = phi i8* [ %13, %cond.true10 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %if.end8 ], !dbg !2019
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %7, i8* %8, i8* %id, i32 %val, i8* %cond15) #6, !dbg !2021
  br label %cleanup.cont, !dbg !2022

cleanup.cont:                                     ; preds = %lor.lhs.false, %cond.end, %cond.end14, %entry
  ret void, !dbg !2022
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @hash_statistics_hash(i8* %p) #4 !dbg !2023 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2025, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8* %p, metadata !2026, metadata !DIExpression()), !dbg !2028
  %id = bitcast i8* %p to i8**, !dbg !2029
  %0 = load i8*, i8** %id, align 8, !dbg !2029
  %call = tail call i32 @htab_hash_string(i8* %0) #6, !dbg !2030
  %val = getelementptr inbounds i8, i8* %p, i64 8, !dbg !2031
  %1 = bitcast i8* %val to i32*, !dbg !2031
  %2 = load i32, i32* %1, align 8, !dbg !2031
  %add = add i32 %call, %2, !dbg !2032
  ret i32 %add, !dbg !2033
}

; Function Attrs: nounwind uwtable
define internal i32 @hash_statistics_eq(i8* %p, i8* %q) #4 !dbg !2034 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2036, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8* %q, metadata !2037, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8* %p, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8* %q, metadata !2039, metadata !DIExpression()), !dbg !2040
  %val = getelementptr inbounds i8, i8* %p, i64 8, !dbg !2041
  %0 = bitcast i8* %val to i32*, !dbg !2041
  %1 = load i32, i32* %0, align 8, !dbg !2041
  %val1 = getelementptr inbounds i8, i8* %q, i64 8, !dbg !2042
  %2 = bitcast i8* %val1 to i32*, !dbg !2042
  %3 = load i32, i32* %2, align 8, !dbg !2042
  %cmp = icmp eq i32 %1, %3, !dbg !2043
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2044

land.rhs:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %q, metadata !2039, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8* %p, metadata !2038, metadata !DIExpression()), !dbg !2040
  %id = bitcast i8* %p to i8**, !dbg !2045
  %4 = load i8*, i8** %id, align 8, !dbg !2045
  %id2 = bitcast i8* %q to i8**, !dbg !2046
  %5 = load i8*, i8** %id2, align 8, !dbg !2046
  %call = tail call i32 @strcmp(i8* %4, i8* %5) #6, !dbg !2047
  %cmp3 = icmp eq i32 %call, 0, !dbg !2048
  %phitmp = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %6, !dbg !2049
}

; Function Attrs: nounwind uwtable
define internal void @hash_statistics_free(i8* %p) #4 !dbg !2050 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2052, metadata !DIExpression()), !dbg !2053
  %id = bitcast i8* %p to i8**, !dbg !2054
  %0 = load i8*, i8** %id, align 8, !dbg !2054
  tail call void @free(i8* %0) #6, !dbg !2055
  tail call void @free(i8* %p) #6, !dbg !2056
  ret void, !dbg !2057
}

declare dso_local i32 @htab_hash_string(i8*) local_unnamed_addr #1

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #1

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
!llvm.module.flags = !{!586, !587, !588}
!llvm.ident = !{!589}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "statistics_dump_file", scope: !2, file: !3, line: 34, type: !530, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !421, globals: !519, nameTableKind: None)
!3 = !DIFile(filename: "statistics.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !25, !32, !39, !233, !238, !245}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !6, line: 280, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!9 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !6, line: 1817, baseType: !7, size: 32, elements: !26)
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!31 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !6, line: 1805, baseType: !7, size: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38}
!34 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!37 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!38 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !6, line: 39, baseType: !7, size: 32, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!41 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!46 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!47 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!48 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!49 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!50 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!51 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!52 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!53 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!54 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!55 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!56 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!57 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!58 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!59 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!60 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!61 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!62 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!63 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!64 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!65 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!66 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!67 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!68 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!69 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!70 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!71 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!72 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!73 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!74 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!75 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!76 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!77 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!78 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!79 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!80 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!81 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!82 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!83 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!84 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!85 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!86 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!87 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!88 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!89 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!90 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!91 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!92 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!93 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!94 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!95 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!96 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!97 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!98 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!99 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!100 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!101 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!102 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!103 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!104 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!105 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!106 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!107 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!108 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!109 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!110 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!111 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!112 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!113 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!114 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!115 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!116 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!117 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!118 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!119 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!120 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!123 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!124 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!125 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!126 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!127 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!128 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!129 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!130 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!131 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!132 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!133 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!134 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!135 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!136 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!137 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!138 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!139 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!140 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!141 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!142 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!143 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!144 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!145 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!146 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!147 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!148 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!149 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!150 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!151 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!152 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!153 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!154 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!155 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!156 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!157 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!158 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!159 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!160 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!161 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!162 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!163 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!164 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!165 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!166 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!167 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!168 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!169 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!170 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!171 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!172 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!173 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!174 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!175 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!176 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!177 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!178 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!179 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!180 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!181 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!182 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!183 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!184 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!185 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!186 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!187 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!188 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!189 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!190 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!191 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!192 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!193 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!196 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!197 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!198 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!199 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!200 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!201 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!202 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!203 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!204 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!205 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!206 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!207 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!208 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!209 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!210 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!211 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!212 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!213 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!214 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!215 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!216 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!217 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!218 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!219 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!220 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!221 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!222 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!223 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!224 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!225 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!226 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!227 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!228 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!229 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!230 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!231 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!232 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !234, line: 474, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!235 = !{!236, !237}
!236 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!237 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !239, line: 104, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!240 = !{!241, !242, !243, !244}
!241 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!242 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!243 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!244 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !246, line: 74, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!248 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!249 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!250 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!251 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!252 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!253 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!254 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!255 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!256 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!257 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!258 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!259 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!260 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!261 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!262 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!263 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!264 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!265 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!266 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!267 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!268 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!269 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!270 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!271 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!272 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!273 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!274 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!275 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!276 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!277 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!278 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!279 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!280 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!281 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!282 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!283 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!284 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!285 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!286 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!287 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!288 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!289 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!290 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!291 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!292 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!293 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!294 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!295 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!296 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!297 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!298 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!299 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!300 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!301 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!302 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!303 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!304 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!305 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!306 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!307 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!308 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!309 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!310 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!311 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!312 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!313 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!314 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!315 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!316 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!317 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!318 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!319 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!320 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!321 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!322 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!323 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!324 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!325 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!326 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!327 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!328 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!329 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!330 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!331 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!332 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!333 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!334 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!335 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!336 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!337 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!338 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!339 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!340 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!341 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!342 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!343 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!344 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!345 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!346 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!347 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!348 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!349 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!350 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!351 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!352 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!353 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!354 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!355 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!356 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!357 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!358 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!359 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!360 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!361 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!362 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!363 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!364 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!365 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!366 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!367 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!368 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!369 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!370 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!371 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!372 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!373 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!374 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!375 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!376 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!377 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!378 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!379 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!380 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!381 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!382 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!383 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!384 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!385 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!386 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!387 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!388 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!389 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!390 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!420 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!421 = !{!422, !423, !424, !425, !428, !429, !431, !483, !426, !493, !494, !517, !518}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!424 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !434, line: 100, size: 896, elements: !435)
!434 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!435 = !{!436, !444, !449, !454, !456, !460, !461, !462, !463, !464, !469, !471, !472, !477, !482}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !433, file: !434, line: 102, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !434, line: 52, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !434, line: 47, baseType: !7)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !433, file: !434, line: 105, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !434, line: 59, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!424, !442, !442}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !433, file: !434, line: 108, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !434, line: 63, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !428}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !433, file: !434, line: 111, baseType: !455, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !433, file: !434, line: 114, baseType: !457, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !458, line: 46, baseType: !459)
!458 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!459 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !433, file: !434, line: 117, baseType: !457, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !433, file: !434, line: 120, baseType: !457, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !433, file: !434, line: 124, baseType: !7, size: 32, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !433, file: !434, line: 128, baseType: !7, size: 32, offset: 480)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !433, file: !434, line: 131, baseType: !465, size: 64, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !434, line: 75, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!428, !457, !457}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !433, file: !434, line: 132, baseType: !470, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !434, line: 78, baseType: !451)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !433, file: !434, line: 135, baseType: !428, size: 64, offset: 640)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !433, file: !434, line: 136, baseType: !473, size: 64, offset: 704)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !434, line: 82, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!428, !428, !457, !457}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !433, file: !434, line: 137, baseType: !478, size: 64, offset: 768)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !434, line: 83, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !428, !428}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !433, file: !434, line: 141, baseType: !7, size: 32, offset: 832)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "statistics_counter_t", file: !3, line: 45, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statistics_counter_s", file: !3, line: 39, size: 256, elements: !487)
!487 = !{!488, !489, !490, !491, !492}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !486, file: !3, line: 40, baseType: !429, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !486, file: !3, line: 41, baseType: !424, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "histogram_p", scope: !486, file: !3, line: 42, baseType: !423, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !486, file: !3, line: 43, baseType: !459, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "prev_dumped_count", scope: !486, file: !3, line: 44, baseType: !459, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !239, line: 114, size: 640, elements: !496)
!496 = !{!497, !498, !499, !503, !507, !508, !509, !510, !512, !513, !514, !515, !516}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !239, line: 117, baseType: !238, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !495, file: !239, line: 121, baseType: !429, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !495, file: !239, line: 125, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!423}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !495, file: !239, line: 130, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!7}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !495, file: !239, line: 133, baseType: !494, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !239, line: 136, baseType: !494, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !495, file: !239, line: 139, baseType: !424, size: 32, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !495, file: !239, line: 143, baseType: !511, size: 32, offset: 416)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !246, line: 80, baseType: !245)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !495, file: !239, line: 146, baseType: !7, size: 32, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !495, file: !239, line: 147, baseType: !7, size: 32, offset: 480)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !495, file: !239, line: 148, baseType: !7, size: 32, offset: 512)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !495, file: !239, line: 151, baseType: !7, size: 32, offset: 544)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !495, file: !239, line: 152, baseType: !7, size: 32, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!519 = !{!520, !522, !0, !524, !528}
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "statistics_dump_nr", scope: !2, file: !3, line: 32, type: !424, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "statistics_dump_flags", scope: !2, file: !3, line: 33, type: !424, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "statistics_hashes", scope: !2, file: !3, line: 48, type: !526, isLocal: true, isDefinition: true)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !434, line: 144, baseType: !432)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "nr_statistics_hashes", scope: !2, file: !3, line: 49, type: !7, isLocal: true, isDefinition: true)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !532, line: 7, baseType: !533)
!532 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !534, line: 49, size: 1728, elements: !535)
!534 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !551, !553, !554, !555, !559, !561, !563, !567, !570, !572, !575, !578, !579, !580, !581, !582}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !533, file: !534, line: 51, baseType: !424, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !533, file: !534, line: 54, baseType: !426, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !533, file: !534, line: 55, baseType: !426, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !533, file: !534, line: 56, baseType: !426, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !533, file: !534, line: 57, baseType: !426, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !533, file: !534, line: 58, baseType: !426, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !533, file: !534, line: 59, baseType: !426, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !533, file: !534, line: 60, baseType: !426, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !533, file: !534, line: 61, baseType: !426, size: 64, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !533, file: !534, line: 64, baseType: !426, size: 64, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !533, file: !534, line: 65, baseType: !426, size: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !533, file: !534, line: 66, baseType: !426, size: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !533, file: !534, line: 68, baseType: !549, size: 64, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !534, line: 36, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !533, file: !534, line: 70, baseType: !552, size: 64, offset: 832)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !533, file: !534, line: 72, baseType: !424, size: 32, offset: 896)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !533, file: !534, line: 73, baseType: !424, size: 32, offset: 928)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !533, file: !534, line: 74, baseType: !556, size: 64, offset: 960)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !557, line: 152, baseType: !558)
!557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!558 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !533, file: !534, line: 77, baseType: !560, size: 16, offset: 1024)
!560 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !533, file: !534, line: 78, baseType: !562, size: 8, offset: 1040)
!562 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !533, file: !534, line: 79, baseType: !564, size: 8, offset: 1048)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 8, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 1)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !533, file: !534, line: 81, baseType: !568, size: 64, offset: 1088)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !534, line: 43, baseType: null)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !533, file: !534, line: 89, baseType: !571, size: 64, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !557, line: 153, baseType: !558)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !533, file: !534, line: 91, baseType: !573, size: 64, offset: 1216)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !534, line: 37, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !533, file: !534, line: 92, baseType: !576, size: 64, offset: 1280)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !534, line: 38, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !533, file: !534, line: 93, baseType: !552, size: 64, offset: 1344)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !533, file: !534, line: 94, baseType: !428, size: 64, offset: 1408)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !533, file: !534, line: 95, baseType: !457, size: 64, offset: 1472)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !533, file: !534, line: 96, baseType: !424, size: 32, offset: 1536)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !533, file: !534, line: 98, baseType: !583, size: 160, offset: 1568)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 160, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 20)
!586 = !{i32 2, !"Dwarf Version", i32 4}
!587 = !{i32 2, !"Debug Info Version", i32 3}
!588 = !{i32 1, !"wchar_size", i32 4}
!589 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!590 = distinct !DISubprogram(name: "vprintf", scope: !591, file: !591, line: 39, type: !592, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !602)
!591 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!592 = !DISubroutineType(types: !593)
!593 = !{!424, !594, !595}
!594 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !429)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !597)
!597 = !{!598, !599, !600, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !596, file: !3, baseType: !7, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !596, file: !3, baseType: !7, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !596, file: !3, baseType: !428, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !596, file: !3, baseType: !428, size: 64, offset: 128)
!602 = !{!603, !604}
!603 = !DILocalVariable(name: "__fmt", arg: 1, scope: !590, file: !591, line: 39, type: !594)
!604 = !DILocalVariable(name: "__arg", arg: 2, scope: !590, file: !591, line: 39, type: !595)
!605 = !DILocation(line: 0, scope: !590)
!606 = !DILocation(line: 41, column: 20, scope: !590)
!607 = !DILocation(line: 41, column: 10, scope: !590)
!608 = !DILocation(line: 41, column: 3, scope: !590)
!609 = distinct !DISubprogram(name: "getchar", scope: !591, file: !591, line: 47, type: !610, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!424}
!612 = !{}
!613 = !DILocation(line: 49, column: 16, scope: !609)
!614 = !DILocation(line: 49, column: 10, scope: !609)
!615 = !DILocation(line: 49, column: 3, scope: !609)
!616 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !591, file: !591, line: 56, type: !617, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{!424, !530}
!619 = !{!620}
!620 = !DILocalVariable(name: "__fp", arg: 1, scope: !616, file: !591, line: 56, type: !530)
!621 = !DILocation(line: 0, scope: !616)
!622 = !DILocation(line: 58, column: 10, scope: !616)
!623 = !DILocation(line: 58, column: 3, scope: !616)
!624 = distinct !DISubprogram(name: "getc_unlocked", scope: !591, file: !591, line: 66, type: !617, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !625)
!625 = !{!626}
!626 = !DILocalVariable(name: "__fp", arg: 1, scope: !624, file: !591, line: 66, type: !530)
!627 = !DILocation(line: 0, scope: !624)
!628 = !DILocation(line: 68, column: 10, scope: !624)
!629 = !DILocation(line: 68, column: 3, scope: !624)
!630 = distinct !DISubprogram(name: "getchar_unlocked", scope: !591, file: !591, line: 73, type: !610, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!631 = !DILocation(line: 75, column: 10, scope: !630)
!632 = !DILocation(line: 75, column: 3, scope: !630)
!633 = distinct !DISubprogram(name: "putchar", scope: !591, file: !591, line: 82, type: !634, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{!424, !424}
!636 = !{!637}
!637 = !DILocalVariable(name: "__c", arg: 1, scope: !633, file: !591, line: 82, type: !424)
!638 = !DILocation(line: 0, scope: !633)
!639 = !DILocation(line: 84, column: 21, scope: !633)
!640 = !DILocation(line: 84, column: 10, scope: !633)
!641 = !DILocation(line: 84, column: 3, scope: !633)
!642 = distinct !DISubprogram(name: "fputc_unlocked", scope: !591, file: !591, line: 91, type: !643, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!424, !424, !530}
!645 = !{!646, !647}
!646 = !DILocalVariable(name: "__c", arg: 1, scope: !642, file: !591, line: 91, type: !424)
!647 = !DILocalVariable(name: "__stream", arg: 2, scope: !642, file: !591, line: 91, type: !530)
!648 = !DILocation(line: 0, scope: !642)
!649 = !DILocation(line: 93, column: 10, scope: !642)
!650 = !DILocation(line: 93, column: 3, scope: !642)
!651 = distinct !DISubprogram(name: "putc_unlocked", scope: !591, file: !591, line: 101, type: !643, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !652)
!652 = !{!653, !654}
!653 = !DILocalVariable(name: "__c", arg: 1, scope: !651, file: !591, line: 101, type: !424)
!654 = !DILocalVariable(name: "__stream", arg: 2, scope: !651, file: !591, line: 101, type: !530)
!655 = !DILocation(line: 0, scope: !651)
!656 = !DILocation(line: 103, column: 10, scope: !651)
!657 = !DILocation(line: 103, column: 3, scope: !651)
!658 = distinct !DISubprogram(name: "putchar_unlocked", scope: !591, file: !591, line: 108, type: !634, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!659 = !{!660}
!660 = !DILocalVariable(name: "__c", arg: 1, scope: !658, file: !591, line: 108, type: !424)
!661 = !DILocation(line: 0, scope: !658)
!662 = !DILocation(line: 110, column: 10, scope: !658)
!663 = !DILocation(line: 110, column: 3, scope: !658)
!664 = distinct !DISubprogram(name: "getline", scope: !591, file: !591, line: 118, type: !665, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !669)
!665 = !DISubroutineType(types: !666)
!666 = !{!667, !425, !668, !530}
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !557, line: 193, baseType: !558)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!669 = !{!670, !671, !672}
!670 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !664, file: !591, line: 118, type: !425)
!671 = !DILocalVariable(name: "__n", arg: 2, scope: !664, file: !591, line: 118, type: !668)
!672 = !DILocalVariable(name: "__stream", arg: 3, scope: !664, file: !591, line: 118, type: !530)
!673 = !DILocation(line: 0, scope: !664)
!674 = !DILocation(line: 120, column: 10, scope: !664)
!675 = !DILocation(line: 120, column: 3, scope: !664)
!676 = distinct !DISubprogram(name: "feof_unlocked", scope: !591, file: !591, line: 128, type: !617, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !677)
!677 = !{!678}
!678 = !DILocalVariable(name: "__stream", arg: 1, scope: !676, file: !591, line: 128, type: !530)
!679 = !DILocation(line: 0, scope: !676)
!680 = !DILocation(line: 130, column: 10, scope: !676)
!681 = !DILocation(line: 130, column: 3, scope: !676)
!682 = distinct !DISubprogram(name: "ferror_unlocked", scope: !591, file: !591, line: 135, type: !617, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!683 = !{!684}
!684 = !DILocalVariable(name: "__stream", arg: 1, scope: !682, file: !591, line: 135, type: !530)
!685 = !DILocation(line: 0, scope: !682)
!686 = !DILocation(line: 137, column: 10, scope: !682)
!687 = !DILocation(line: 137, column: 3, scope: !682)
!688 = distinct !DISubprogram(name: "tolower", scope: !689, file: !689, line: 207, type: !634, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!689 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!690 = !{!691}
!691 = !DILocalVariable(name: "__c", arg: 1, scope: !688, file: !689, line: 207, type: !424)
!692 = !DILocation(line: 0, scope: !688)
!693 = !DILocation(line: 209, column: 22, scope: !688)
!694 = !DILocation(line: 209, column: 39, scope: !688)
!695 = !DILocation(line: 209, column: 38, scope: !688)
!696 = !DILocation(line: 209, column: 37, scope: !688)
!697 = !DILocation(line: 209, column: 10, scope: !688)
!698 = !DILocation(line: 209, column: 3, scope: !688)
!699 = distinct !DISubprogram(name: "toupper", scope: !689, file: !689, line: 213, type: !634, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !700)
!700 = !{!701}
!701 = !DILocalVariable(name: "__c", arg: 1, scope: !699, file: !689, line: 213, type: !424)
!702 = !DILocation(line: 0, scope: !699)
!703 = !DILocation(line: 215, column: 22, scope: !699)
!704 = !DILocation(line: 215, column: 39, scope: !699)
!705 = !DILocation(line: 215, column: 38, scope: !699)
!706 = !DILocation(line: 215, column: 37, scope: !699)
!707 = !DILocation(line: 215, column: 10, scope: !699)
!708 = !DILocation(line: 215, column: 3, scope: !699)
!709 = distinct !DISubprogram(name: "atoi", scope: !710, file: !710, line: 361, type: !711, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !713)
!710 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!711 = !DISubroutineType(types: !712)
!712 = !{!424, !429}
!713 = !{!714}
!714 = !DILocalVariable(name: "__nptr", arg: 1, scope: !709, file: !710, line: 361, type: !429)
!715 = !DILocation(line: 0, scope: !709)
!716 = !DILocation(line: 363, column: 16, scope: !709)
!717 = !DILocation(line: 363, column: 10, scope: !709)
!718 = !DILocation(line: 363, column: 3, scope: !709)
!719 = distinct !DISubprogram(name: "atol", scope: !710, file: !710, line: 366, type: !720, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{!558, !429}
!722 = !{!723}
!723 = !DILocalVariable(name: "__nptr", arg: 1, scope: !719, file: !710, line: 366, type: !429)
!724 = !DILocation(line: 0, scope: !719)
!725 = !DILocation(line: 368, column: 10, scope: !719)
!726 = !DILocation(line: 368, column: 3, scope: !719)
!727 = distinct !DISubprogram(name: "atoll", scope: !710, file: !710, line: 373, type: !728, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !731)
!728 = !DISubroutineType(types: !729)
!729 = !{!730, !429}
!730 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!731 = !{!732}
!732 = !DILocalVariable(name: "__nptr", arg: 1, scope: !727, file: !710, line: 373, type: !429)
!733 = !DILocation(line: 0, scope: !727)
!734 = !DILocation(line: 375, column: 10, scope: !727)
!735 = !DILocation(line: 375, column: 3, scope: !727)
!736 = distinct !DISubprogram(name: "bsearch", scope: !737, file: !737, line: 20, type: !738, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !741)
!737 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!738 = !DISubroutineType(types: !739)
!739 = !{!428, !442, !442, !457, !457, !740}
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !710, line: 808, baseType: !446)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!742 = !DILocalVariable(name: "__key", arg: 1, scope: !736, file: !737, line: 20, type: !442)
!743 = !DILocalVariable(name: "__base", arg: 2, scope: !736, file: !737, line: 20, type: !442)
!744 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !736, file: !737, line: 20, type: !457)
!745 = !DILocalVariable(name: "__size", arg: 4, scope: !736, file: !737, line: 20, type: !457)
!746 = !DILocalVariable(name: "__compar", arg: 5, scope: !736, file: !737, line: 21, type: !740)
!747 = !DILocalVariable(name: "__l", scope: !736, file: !737, line: 23, type: !457)
!748 = !DILocalVariable(name: "__u", scope: !736, file: !737, line: 23, type: !457)
!749 = !DILocalVariable(name: "__idx", scope: !736, file: !737, line: 23, type: !457)
!750 = !DILocalVariable(name: "__p", scope: !736, file: !737, line: 24, type: !442)
!751 = !DILocalVariable(name: "__comparison", scope: !736, file: !737, line: 25, type: !424)
!752 = !DILocation(line: 0, scope: !736)
!753 = !DILocation(line: 29, column: 3, scope: !736)
!754 = !DILocation(line: 27, column: 7, scope: !736)
!755 = !DILocation(line: 29, column: 14, scope: !736)
!756 = !DILocation(line: 31, column: 20, scope: !757)
!757 = distinct !DILexicalBlock(scope: !736, file: !737, line: 30, column: 5)
!758 = !DILocation(line: 31, column: 27, scope: !757)
!759 = !DILocation(line: 32, column: 56, scope: !757)
!760 = !DILocation(line: 32, column: 47, scope: !757)
!761 = !DILocation(line: 33, column: 22, scope: !757)
!762 = !DILocation(line: 34, column: 24, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !737, line: 34, column: 11)
!764 = !DILocation(line: 34, column: 11, scope: !757)
!765 = !DILocation(line: 36, column: 29, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !737, line: 36, column: 16)
!767 = !DILocation(line: 36, column: 16, scope: !763)
!768 = !DILocation(line: 37, column: 14, scope: !766)
!769 = distinct !{!769, !753, !770}
!770 = !DILocation(line: 40, column: 5, scope: !736)
!771 = !DILocation(line: 43, column: 1, scope: !736)
!772 = distinct !DISubprogram(name: "atof", scope: !773, file: !773, line: 25, type: !774, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !777)
!773 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!774 = !DISubroutineType(types: !775)
!775 = !{!776, !429}
!776 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!777 = !{!778}
!778 = !DILocalVariable(name: "__nptr", arg: 1, scope: !772, file: !773, line: 25, type: !429)
!779 = !DILocation(line: 0, scope: !772)
!780 = !DILocation(line: 27, column: 10, scope: !772)
!781 = !DILocation(line: 27, column: 3, scope: !772)
!782 = distinct !DISubprogram(name: "strtoimax", scope: !783, file: !783, line: 324, type: !784, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !790)
!783 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!784 = !DISubroutineType(types: !785)
!785 = !{!786, !594, !789, !424}
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !787, line: 101, baseType: !788)
!787 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !557, line: 72, baseType: !558)
!789 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !425)
!790 = !{!791, !792, !793}
!791 = !DILocalVariable(name: "nptr", arg: 1, scope: !782, file: !783, line: 324, type: !594)
!792 = !DILocalVariable(name: "endptr", arg: 2, scope: !782, file: !783, line: 324, type: !789)
!793 = !DILocalVariable(name: "base", arg: 3, scope: !782, file: !783, line: 324, type: !424)
!794 = !DILocation(line: 0, scope: !782)
!795 = !DILocation(line: 327, column: 10, scope: !782)
!796 = !DILocation(line: 327, column: 3, scope: !782)
!797 = distinct !DISubprogram(name: "strtoumax", scope: !783, file: !783, line: 336, type: !798, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!798 = !DISubroutineType(types: !799)
!799 = !{!800, !594, !789, !424}
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !787, line: 102, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !557, line: 73, baseType: !459)
!802 = !{!803, !804, !805}
!803 = !DILocalVariable(name: "nptr", arg: 1, scope: !797, file: !783, line: 336, type: !594)
!804 = !DILocalVariable(name: "endptr", arg: 2, scope: !797, file: !783, line: 336, type: !789)
!805 = !DILocalVariable(name: "base", arg: 3, scope: !797, file: !783, line: 336, type: !424)
!806 = !DILocation(line: 0, scope: !797)
!807 = !DILocation(line: 339, column: 10, scope: !797)
!808 = !DILocation(line: 339, column: 3, scope: !797)
!809 = distinct !DISubprogram(name: "wcstoimax", scope: !783, file: !783, line: 348, type: !810, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !819)
!810 = !DISubroutineType(types: !811)
!811 = !{!786, !812, !816, !424}
!812 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !783, line: 34, baseType: !424)
!816 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!819 = !{!820, !821, !822}
!820 = !DILocalVariable(name: "nptr", arg: 1, scope: !809, file: !783, line: 348, type: !812)
!821 = !DILocalVariable(name: "endptr", arg: 2, scope: !809, file: !783, line: 348, type: !816)
!822 = !DILocalVariable(name: "base", arg: 3, scope: !809, file: !783, line: 348, type: !424)
!823 = !DILocation(line: 0, scope: !809)
!824 = !DILocation(line: 351, column: 10, scope: !809)
!825 = !DILocation(line: 351, column: 3, scope: !809)
!826 = distinct !DISubprogram(name: "wcstoumax", scope: !783, file: !783, line: 362, type: !827, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{!800, !812, !816, !424}
!829 = !{!830, !831, !832}
!830 = !DILocalVariable(name: "nptr", arg: 1, scope: !826, file: !783, line: 362, type: !812)
!831 = !DILocalVariable(name: "endptr", arg: 2, scope: !826, file: !783, line: 362, type: !816)
!832 = !DILocalVariable(name: "base", arg: 3, scope: !826, file: !783, line: 362, type: !424)
!833 = !DILocation(line: 0, scope: !826)
!834 = !DILocation(line: 365, column: 10, scope: !826)
!835 = !DILocation(line: 365, column: 3, scope: !826)
!836 = distinct !DISubprogram(name: "stat", scope: !837, file: !837, line: 453, type: !838, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !877)
!837 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!838 = !DISubroutineType(types: !839)
!839 = !{!424, !429, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !842, line: 46, size: 1152, elements: !843)
!842 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!843 = !{!844, !846, !848, !850, !852, !854, !856, !857, !858, !859, !861, !863, !871, !872, !873}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !841, file: !842, line: 48, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !557, line: 145, baseType: !459)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !841, file: !842, line: 53, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !557, line: 148, baseType: !459)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !841, file: !842, line: 61, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !557, line: 151, baseType: !459)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !841, file: !842, line: 62, baseType: !851, size: 32, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !557, line: 150, baseType: !7)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !841, file: !842, line: 64, baseType: !853, size: 32, offset: 224)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !557, line: 146, baseType: !7)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !841, file: !842, line: 65, baseType: !855, size: 32, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !557, line: 147, baseType: !7)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !841, file: !842, line: 67, baseType: !424, size: 32, offset: 288)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !841, file: !842, line: 69, baseType: !845, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !841, file: !842, line: 74, baseType: !556, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !841, file: !842, line: 78, baseType: !860, size: 64, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !557, line: 174, baseType: !558)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !841, file: !842, line: 80, baseType: !862, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !557, line: 179, baseType: !558)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !841, file: !842, line: 91, baseType: !864, size: 128, offset: 576)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !865, line: 10, size: 128, elements: !866)
!865 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!866 = !{!867, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !864, file: !865, line: 12, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !557, line: 160, baseType: !558)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !864, file: !865, line: 16, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !557, line: 196, baseType: !558)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !841, file: !842, line: 92, baseType: !864, size: 128, offset: 704)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !841, file: !842, line: 93, baseType: !864, size: 128, offset: 832)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !841, file: !842, line: 106, baseType: !874, size: 192, offset: 960)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 192, elements: !875)
!875 = !{!876}
!876 = !DISubrange(count: 3)
!877 = !{!878, !879}
!878 = !DILocalVariable(name: "__path", arg: 1, scope: !836, file: !837, line: 453, type: !429)
!879 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !836, file: !837, line: 453, type: !840)
!880 = !DILocation(line: 0, scope: !836)
!881 = !DILocation(line: 455, column: 10, scope: !836)
!882 = !DILocation(line: 455, column: 3, scope: !836)
!883 = distinct !DISubprogram(name: "lstat", scope: !837, file: !837, line: 460, type: !838, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !884)
!884 = !{!885, !886}
!885 = !DILocalVariable(name: "__path", arg: 1, scope: !883, file: !837, line: 460, type: !429)
!886 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !883, file: !837, line: 460, type: !840)
!887 = !DILocation(line: 0, scope: !883)
!888 = !DILocation(line: 462, column: 10, scope: !883)
!889 = !DILocation(line: 462, column: 3, scope: !883)
!890 = distinct !DISubprogram(name: "fstat", scope: !837, file: !837, line: 467, type: !891, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{!424, !424, !840}
!893 = !{!894, !895}
!894 = !DILocalVariable(name: "__fd", arg: 1, scope: !890, file: !837, line: 467, type: !424)
!895 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !890, file: !837, line: 467, type: !840)
!896 = !DILocation(line: 0, scope: !890)
!897 = !DILocation(line: 469, column: 10, scope: !890)
!898 = !DILocation(line: 469, column: 3, scope: !890)
!899 = distinct !DISubprogram(name: "fstatat", scope: !837, file: !837, line: 474, type: !900, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !902)
!900 = !DISubroutineType(types: !901)
!901 = !{!424, !424, !429, !840, !424}
!902 = !{!903, !904, !905, !906}
!903 = !DILocalVariable(name: "__fd", arg: 1, scope: !899, file: !837, line: 474, type: !424)
!904 = !DILocalVariable(name: "__filename", arg: 2, scope: !899, file: !837, line: 474, type: !429)
!905 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !899, file: !837, line: 474, type: !840)
!906 = !DILocalVariable(name: "__flag", arg: 4, scope: !899, file: !837, line: 474, type: !424)
!907 = !DILocation(line: 0, scope: !899)
!908 = !DILocation(line: 477, column: 10, scope: !899)
!909 = !DILocation(line: 477, column: 3, scope: !899)
!910 = distinct !DISubprogram(name: "mknod", scope: !837, file: !837, line: 483, type: !911, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{!424, !429, !851, !845}
!913 = !{!914, !915, !916}
!914 = !DILocalVariable(name: "__path", arg: 1, scope: !910, file: !837, line: 483, type: !429)
!915 = !DILocalVariable(name: "__mode", arg: 2, scope: !910, file: !837, line: 483, type: !851)
!916 = !DILocalVariable(name: "__dev", arg: 3, scope: !910, file: !837, line: 483, type: !845)
!917 = !DILocation(line: 0, scope: !910)
!918 = !DILocation(line: 485, column: 10, scope: !910)
!919 = !DILocation(line: 485, column: 3, scope: !910)
!920 = distinct !DISubprogram(name: "mknodat", scope: !837, file: !837, line: 491, type: !921, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{!424, !424, !429, !851, !845}
!923 = !{!924, !925, !926, !927}
!924 = !DILocalVariable(name: "__fd", arg: 1, scope: !920, file: !837, line: 491, type: !424)
!925 = !DILocalVariable(name: "__path", arg: 2, scope: !920, file: !837, line: 491, type: !429)
!926 = !DILocalVariable(name: "__mode", arg: 3, scope: !920, file: !837, line: 491, type: !851)
!927 = !DILocalVariable(name: "__dev", arg: 4, scope: !920, file: !837, line: 491, type: !845)
!928 = !DILocation(line: 0, scope: !920)
!929 = !DILocation(line: 494, column: 10, scope: !920)
!930 = !DILocation(line: 494, column: 3, scope: !920)
!931 = distinct !DISubprogram(name: "stat64", scope: !837, file: !837, line: 502, type: !932, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !954)
!932 = !DISubroutineType(types: !933)
!933 = !{!424, !429, !934}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !842, line: 119, size: 1152, elements: !936)
!936 = !{!937, !938, !940, !941, !942, !943, !944, !945, !946, !947, !948, !950, !951, !952, !953}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !935, file: !842, line: 121, baseType: !845, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !935, file: !842, line: 123, baseType: !939, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !557, line: 149, baseType: !459)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !935, file: !842, line: 124, baseType: !849, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !935, file: !842, line: 125, baseType: !851, size: 32, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !935, file: !842, line: 132, baseType: !853, size: 32, offset: 224)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !935, file: !842, line: 133, baseType: !855, size: 32, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !935, file: !842, line: 135, baseType: !424, size: 32, offset: 288)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !935, file: !842, line: 136, baseType: !845, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !935, file: !842, line: 137, baseType: !556, size: 64, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !935, file: !842, line: 143, baseType: !860, size: 64, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !935, file: !842, line: 144, baseType: !949, size: 64, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !557, line: 180, baseType: !558)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !935, file: !842, line: 152, baseType: !864, size: 128, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !935, file: !842, line: 153, baseType: !864, size: 128, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !935, file: !842, line: 154, baseType: !864, size: 128, offset: 832)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !935, file: !842, line: 164, baseType: !874, size: 192, offset: 960)
!954 = !{!955, !956}
!955 = !DILocalVariable(name: "__path", arg: 1, scope: !931, file: !837, line: 502, type: !429)
!956 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !931, file: !837, line: 502, type: !934)
!957 = !DILocation(line: 0, scope: !931)
!958 = !DILocation(line: 504, column: 10, scope: !931)
!959 = !DILocation(line: 504, column: 3, scope: !931)
!960 = distinct !DISubprogram(name: "lstat64", scope: !837, file: !837, line: 509, type: !932, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !961)
!961 = !{!962, !963}
!962 = !DILocalVariable(name: "__path", arg: 1, scope: !960, file: !837, line: 509, type: !429)
!963 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !960, file: !837, line: 509, type: !934)
!964 = !DILocation(line: 0, scope: !960)
!965 = !DILocation(line: 511, column: 10, scope: !960)
!966 = !DILocation(line: 511, column: 3, scope: !960)
!967 = distinct !DISubprogram(name: "fstat64", scope: !837, file: !837, line: 516, type: !968, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!424, !424, !934}
!970 = !{!971, !972}
!971 = !DILocalVariable(name: "__fd", arg: 1, scope: !967, file: !837, line: 516, type: !424)
!972 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !967, file: !837, line: 516, type: !934)
!973 = !DILocation(line: 0, scope: !967)
!974 = !DILocation(line: 518, column: 10, scope: !967)
!975 = !DILocation(line: 518, column: 3, scope: !967)
!976 = distinct !DISubprogram(name: "fstatat64", scope: !837, file: !837, line: 523, type: !977, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{!424, !424, !429, !934, !424}
!979 = !{!980, !981, !982, !983}
!980 = !DILocalVariable(name: "__fd", arg: 1, scope: !976, file: !837, line: 523, type: !424)
!981 = !DILocalVariable(name: "__filename", arg: 2, scope: !976, file: !837, line: 523, type: !429)
!982 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !976, file: !837, line: 523, type: !934)
!983 = !DILocalVariable(name: "__flag", arg: 4, scope: !976, file: !837, line: 523, type: !424)
!984 = !DILocation(line: 0, scope: !976)
!985 = !DILocation(line: 526, column: 10, scope: !976)
!986 = !DILocation(line: 526, column: 3, scope: !976)
!987 = distinct !DISubprogram(name: "statistics_fini_pass", scope: !3, file: !3, line: 173, type: !988, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!988 = !DISubroutineType(types: !989)
!989 = !{null}
!990 = !DILocation(line: 175, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !3, line: 175, column: 7)
!992 = !DILocation(line: 175, column: 21, scope: !991)
!993 = !DILocation(line: 175, column: 40, scope: !991)
!994 = !DILocation(line: 175, column: 7, scope: !987)
!995 = !DILocation(line: 178, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !987, file: !3, line: 178, column: 7)
!997 = !DILocation(line: 179, column: 7, scope: !996)
!998 = !DILocation(line: 179, column: 10, scope: !996)
!999 = !DILocation(line: 179, column: 21, scope: !996)
!1000 = !DILocation(line: 178, column: 7, scope: !987)
!1001 = !DILocation(line: 181, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 180, column: 5)
!1003 = !DILocation(line: 182, column: 16, scope: !1002)
!1004 = !DILocation(line: 182, column: 7, scope: !1002)
!1005 = !DILocation(line: 183, column: 16, scope: !1002)
!1006 = !DILocation(line: 183, column: 7, scope: !1002)
!1007 = !DILocation(line: 184, column: 31, scope: !1002)
!1008 = !DILocation(line: 184, column: 7, scope: !1002)
!1009 = !DILocation(line: 186, column: 16, scope: !1002)
!1010 = !DILocation(line: 186, column: 7, scope: !1002)
!1011 = !DILocation(line: 187, column: 5, scope: !1002)
!1012 = !DILocation(line: 188, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !987, file: !3, line: 188, column: 7)
!1014 = !DILocation(line: 189, column: 7, scope: !1013)
!1015 = !DILocation(line: 189, column: 12, scope: !1013)
!1016 = !DILocation(line: 189, column: 34, scope: !1013)
!1017 = !DILocation(line: 190, column: 5, scope: !1013)
!1018 = !DILocation(line: 190, column: 30, scope: !1013)
!1019 = !DILocation(line: 188, column: 7, scope: !987)
!1020 = !DILocation(line: 191, column: 29, scope: !1013)
!1021 = !DILocation(line: 191, column: 5, scope: !1013)
!1022 = !DILocation(line: 193, column: 27, scope: !987)
!1023 = !DILocation(line: 193, column: 3, scope: !987)
!1024 = !DILocation(line: 195, column: 1, scope: !987)
!1025 = distinct !DISubprogram(name: "curr_statistics_hash", scope: !3, file: !3, line: 83, type: !1026, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!527}
!1028 = !{!1029}
!1029 = !DILocalVariable(name: "idx", scope: !1025, file: !3, line: 85, type: !7)
!1030 = !DILocation(line: 87, column: 3, scope: !1025)
!1031 = !DILocation(line: 88, column: 9, scope: !1025)
!1032 = !DILocation(line: 0, scope: !1025)
!1033 = !DILocation(line: 88, column: 23, scope: !1025)
!1034 = !DILocation(line: 90, column: 13, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 90, column: 7)
!1036 = !DILocation(line: 90, column: 11, scope: !1035)
!1037 = !DILocation(line: 91, column: 7, scope: !1035)
!1038 = !DILocation(line: 91, column: 10, scope: !1035)
!1039 = !DILocation(line: 91, column: 33, scope: !1035)
!1040 = !DILocation(line: 90, column: 7, scope: !1025)
!1041 = !DILocation(line: 92, column: 5, scope: !1035)
!1042 = !DILocation(line: 94, column: 7, scope: !1025)
!1043 = !DILocation(line: 96, column: 27, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 95, column: 5)
!1045 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 94, column: 7)
!1046 = !DILocation(line: 96, column: 25, scope: !1044)
!1047 = !DILocation(line: 97, column: 15, scope: !1044)
!1048 = !DILocation(line: 97, column: 35, scope: !1044)
!1049 = !DILocation(line: 97, column: 33, scope: !1044)
!1050 = !DILocation(line: 98, column: 17, scope: !1044)
!1051 = !DILocation(line: 98, column: 8, scope: !1044)
!1052 = !DILocation(line: 98, column: 41, scope: !1044)
!1053 = !DILocation(line: 97, column: 7, scope: !1044)
!1054 = !DILocation(line: 99, column: 28, scope: !1044)
!1055 = !DILocation(line: 100, column: 5, scope: !1044)
!1056 = !DILocation(line: 102, column: 28, scope: !1025)
!1057 = !DILocation(line: 102, column: 3, scope: !1025)
!1058 = !DILocation(line: 102, column: 26, scope: !1025)
!1059 = !DILocation(line: 106, column: 10, scope: !1025)
!1060 = !DILocation(line: 106, column: 3, scope: !1025)
!1061 = !DILocation(line: 107, column: 1, scope: !1025)
!1062 = distinct !DISubprogram(name: "statistics_fini_pass_1", scope: !3, file: !3, line: 113, type: !1063, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1065)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!424, !455, !428}
!1065 = !{!1066, !1067, !1068, !1069}
!1066 = !DILocalVariable(name: "slot", arg: 1, scope: !1062, file: !3, line: 113, type: !455)
!1067 = !DILocalVariable(name: "data", arg: 2, scope: !1062, file: !3, line: 113, type: !428)
!1068 = !DILocalVariable(name: "counter", scope: !1062, file: !3, line: 115, type: !493)
!1069 = !DILocalVariable(name: "count", scope: !1062, file: !3, line: 116, type: !459)
!1070 = !DILocation(line: 0, scope: !1062)
!1071 = !DILocation(line: 115, column: 59, scope: !1062)
!1072 = !DILocation(line: 116, column: 43, scope: !1062)
!1073 = !DILocation(line: 116, column: 60, scope: !1062)
!1074 = !DILocation(line: 116, column: 49, scope: !1062)
!1075 = !DILocation(line: 117, column: 13, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 117, column: 7)
!1077 = !DILocation(line: 117, column: 7, scope: !1062)
!1078 = !DILocation(line: 119, column: 16, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 119, column: 7)
!1080 = !DILocation(line: 119, column: 7, scope: !1079)
!1081 = !DILocation(line: 0, scope: !1079)
!1082 = !DILocation(line: 119, column: 7, scope: !1062)
!1083 = !DILocation(line: 121, column: 29, scope: !1079)
!1084 = !DILocation(line: 120, column: 5, scope: !1079)
!1085 = !DILocation(line: 123, column: 5, scope: !1079)
!1086 = !DILocation(line: 125, column: 41, scope: !1062)
!1087 = !DILocation(line: 125, column: 30, scope: !1062)
!1088 = !DILocation(line: 126, column: 3, scope: !1062)
!1089 = !DILocation(line: 127, column: 1, scope: !1062)
!1090 = distinct !DISubprogram(name: "statistics_fini_pass_2", scope: !3, file: !3, line: 133, type: !1063, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1091)
!1091 = !{!1092, !1093, !1094, !1095}
!1092 = !DILocalVariable(name: "slot", arg: 1, scope: !1090, file: !3, line: 133, type: !455)
!1093 = !DILocalVariable(name: "data", arg: 2, scope: !1090, file: !3, line: 133, type: !428)
!1094 = !DILocalVariable(name: "counter", scope: !1090, file: !3, line: 135, type: !493)
!1095 = !DILocalVariable(name: "count", scope: !1090, file: !3, line: 136, type: !459)
!1096 = !DILocation(line: 0, scope: !1090)
!1097 = !DILocation(line: 135, column: 59, scope: !1090)
!1098 = !DILocation(line: 136, column: 43, scope: !1090)
!1099 = !DILocation(line: 136, column: 60, scope: !1090)
!1100 = !DILocation(line: 136, column: 49, scope: !1090)
!1101 = !DILocation(line: 137, column: 13, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 137, column: 7)
!1103 = !DILocation(line: 137, column: 7, scope: !1090)
!1104 = !DILocation(line: 139, column: 30, scope: !1090)
!1105 = !DILocation(line: 140, column: 16, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 140, column: 7)
!1107 = !DILocation(line: 140, column: 7, scope: !1106)
!1108 = !DILocation(line: 0, scope: !1106)
!1109 = !DILocation(line: 140, column: 7, scope: !1090)
!1110 = !DILocation(line: 145, column: 29, scope: !1106)
!1111 = !DILocation(line: 146, column: 7, scope: !1106)
!1112 = !DILocation(line: 146, column: 14, scope: !1106)
!1113 = !DILocation(line: 141, column: 5, scope: !1106)
!1114 = !DILocation(line: 154, column: 7, scope: !1106)
!1115 = !DILocation(line: 154, column: 14, scope: !1106)
!1116 = !DILocation(line: 149, column: 5, scope: !1106)
!1117 = !DILocation(line: 156, column: 41, scope: !1090)
!1118 = !DILocation(line: 156, column: 30, scope: !1090)
!1119 = !DILocation(line: 157, column: 3, scope: !1090)
!1120 = !DILocation(line: 158, column: 1, scope: !1090)
!1121 = distinct !DISubprogram(name: "statistics_fini_pass_3", scope: !3, file: !3, line: 163, type: !1063, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1122)
!1122 = !{!1123, !1124, !1125}
!1123 = !DILocalVariable(name: "slot", arg: 1, scope: !1121, file: !3, line: 163, type: !455)
!1124 = !DILocalVariable(name: "data", arg: 2, scope: !1121, file: !3, line: 163, type: !428)
!1125 = !DILocalVariable(name: "counter", scope: !1121, file: !3, line: 165, type: !493)
!1126 = !DILocation(line: 0, scope: !1121)
!1127 = !DILocation(line: 165, column: 59, scope: !1121)
!1128 = !DILocation(line: 166, column: 41, scope: !1121)
!1129 = !DILocation(line: 166, column: 12, scope: !1121)
!1130 = !DILocation(line: 166, column: 30, scope: !1121)
!1131 = !DILocation(line: 167, column: 3, scope: !1121)
!1132 = distinct !DISubprogram(name: "statistics_fini", scope: !3, file: !3, line: 226, type: !988, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1133)
!1133 = !{!1134}
!1134 = !DILocalVariable(name: "i", scope: !1135, file: !3, line: 233, type: !7)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 232, column: 5)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 231, column: 7)
!1137 = !DILocation(line: 228, column: 8, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 228, column: 7)
!1139 = !DILocation(line: 228, column: 7, scope: !1132)
!1140 = !DILocation(line: 231, column: 7, scope: !1136)
!1141 = !DILocation(line: 231, column: 29, scope: !1136)
!1142 = !DILocation(line: 231, column: 7, scope: !1132)
!1143 = !DILocation(line: 234, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 234, column: 7)
!1145 = !DILocation(line: 0, scope: !1144)
!1146 = !DILocation(line: 0, scope: !1135)
!1147 = !DILocation(line: 234, column: 23, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 234, column: 7)
!1149 = !DILocation(line: 234, column: 21, scope: !1148)
!1150 = !DILocation(line: 235, column: 6, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 235, column: 6)
!1152 = !DILocation(line: 235, column: 27, scope: !1151)
!1153 = !DILocation(line: 236, column: 6, scope: !1151)
!1154 = !DILocation(line: 236, column: 9, scope: !1151)
!1155 = !DILocation(line: 236, column: 29, scope: !1151)
!1156 = !DILocation(line: 235, column: 6, scope: !1148)
!1157 = !DILocation(line: 237, column: 28, scope: !1151)
!1158 = !DILocation(line: 238, column: 26, scope: !1151)
!1159 = !DILocation(line: 237, column: 4, scope: !1151)
!1160 = !DILocation(line: 234, column: 45, scope: !1148)
!1161 = !DILocation(line: 234, column: 7, scope: !1148)
!1162 = distinct !{!1162, !1143, !1163}
!1163 = !DILocation(line: 238, column: 45, scope: !1144)
!1164 = !DILocation(line: 241, column: 33, scope: !1132)
!1165 = !DILocation(line: 241, column: 13, scope: !1132)
!1166 = !DILocation(line: 241, column: 3, scope: !1132)
!1167 = !DILocation(line: 242, column: 1, scope: !1132)
!1168 = distinct !DISubprogram(name: "statistics_fini_1", scope: !3, file: !3, line: 200, type: !1063, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1169)
!1169 = !{!1170, !1171, !1172, !1173}
!1170 = !DILocalVariable(name: "slot", arg: 1, scope: !1168, file: !3, line: 200, type: !455)
!1171 = !DILocalVariable(name: "data", arg: 2, scope: !1168, file: !3, line: 200, type: !428)
!1172 = !DILocalVariable(name: "pass", scope: !1168, file: !3, line: 202, type: !494)
!1173 = !DILocalVariable(name: "counter", scope: !1168, file: !3, line: 203, type: !493)
!1174 = !DILocation(line: 0, scope: !1168)
!1175 = !DILocation(line: 203, column: 59, scope: !1168)
!1176 = !DILocation(line: 204, column: 16, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 204, column: 7)
!1178 = !DILocation(line: 204, column: 22, scope: !1177)
!1179 = !DILocation(line: 204, column: 7, scope: !1168)
!1180 = !DILocation(line: 206, column: 16, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 206, column: 7)
!1182 = !DILocation(line: 206, column: 7, scope: !1181)
!1183 = !DILocation(line: 0, scope: !1181)
!1184 = !DILocation(line: 206, column: 7, scope: !1168)
!1185 = !DILocation(line: 211, column: 29, scope: !1181)
!1186 = !DILocation(line: 207, column: 5, scope: !1181)
!1187 = !DILocation(line: 214, column: 5, scope: !1181)
!1188 = !DILocation(line: 221, column: 1, scope: !1168)
!1189 = distinct !DISubprogram(name: "statistics_early_init", scope: !3, file: !3, line: 247, type: !988, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!1190 = !DILocation(line: 249, column: 24, scope: !1189)
!1191 = !DILocation(line: 249, column: 22, scope: !1189)
!1192 = !DILocation(line: 251, column: 1, scope: !1189)
!1193 = distinct !DISubprogram(name: "statistics_init", scope: !3, file: !3, line: 256, type: !988, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!1194 = !DILocation(line: 258, column: 38, scope: !1193)
!1195 = !DILocation(line: 258, column: 26, scope: !1193)
!1196 = !DILocation(line: 258, column: 24, scope: !1193)
!1197 = !DILocation(line: 259, column: 47, scope: !1193)
!1198 = !DILocation(line: 259, column: 27, scope: !1193)
!1199 = !DILocation(line: 259, column: 68, scope: !1193)
!1200 = !DILocation(line: 259, column: 25, scope: !1193)
!1201 = !DILocation(line: 260, column: 1, scope: !1193)
!1202 = distinct !DISubprogram(name: "statistics_counter_event", scope: !3, file: !3, line: 291, type: !1203, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !1205, !429, !424}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1207, line: 463, size: 1152, elements: !1208)
!1207 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1208 = !{!1209, !1212, !1215, !1219, !1222, !1225, !1226, !1855, !1856, !1857, !1858, !1884, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1206, file: !1207, line: 464, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1207, line: 464, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1206, file: !1207, line: 467, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !1207, line: 467, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1206, file: !1207, line: 470, baseType: !1216, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !1218, line: 65, flags: DIFlagFwdDecl)
!1218 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1206, file: !1207, line: 473, baseType: !1220, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1207, line: 166, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1206, file: !1207, line: 476, baseType: !1223, size: 64, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1207, line: 476, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1206, file: !1207, line: 479, baseType: !527, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1206, file: !1207, line: 484, baseType: !1227, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !1218, line: 56, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !1230)
!1230 = !{!1231, !1264, !1270, !1281, !1288, !1295, !1300, !1306, !1312, !1325, !1337, !1375, !1383, !1411, !1419, !1420, !1425, !1434, !1440, !1445, !1449, !1453, !1479, !1528, !1534, !1541, !1548, !1574, !1599, !1616, !1628, !1650, !1666, !1837}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1229, file: !6, line: 3372, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1232, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1232, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1232, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1232, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1232, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1232, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1232, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1232, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1232, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1232, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1232, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1232, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1232, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1232, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1232, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1232, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1232, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1232, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1232, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1232, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1232, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1232, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1232, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1232, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1232, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1232, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1232, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1232, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1232, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1232, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1229, file: !6, line: 3373, baseType: !1265, size: 192)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1265, file: !6, line: 403, baseType: !1232, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1265, file: !6, line: 404, baseType: !1227, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1265, file: !6, line: 405, baseType: !1227, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1229, file: !6, line: 3374, baseType: !1271, size: 320)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1271, file: !6, line: 1385, baseType: !1265, size: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1271, file: !6, line: 1386, baseType: !1275, size: 128, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1276, line: 58, baseType: !1277)
!1276 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1276, line: 54, size: 128, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1277, file: !1276, line: 56, baseType: !459, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1277, file: !1276, line: 57, baseType: !558, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1229, file: !6, line: 3375, baseType: !1282, size: 256)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !1283)
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1282, file: !6, line: 1398, baseType: !1265, size: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1282, file: !6, line: 1399, baseType: !1286, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1229, file: !6, line: 3376, baseType: !1289, size: 256)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1289, file: !6, line: 1409, baseType: !1265, size: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1289, file: !6, line: 1410, baseType: !1293, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1229, file: !6, line: 3377, baseType: !1296, size: 256)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1296, file: !6, line: 1438, baseType: !1265, size: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1296, file: !6, line: 1439, baseType: !1227, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1229, file: !6, line: 3378, baseType: !1301, size: 256)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !1302)
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1301, file: !6, line: 1419, baseType: !1265, size: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1301, file: !6, line: 1420, baseType: !424, size: 32, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1301, file: !6, line: 1421, baseType: !564, size: 8, offset: 224)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1229, file: !6, line: 3379, baseType: !1307, size: 320)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1307, file: !6, line: 1429, baseType: !1265, size: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1307, file: !6, line: 1430, baseType: !1227, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1307, file: !6, line: 1431, baseType: !1227, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1229, file: !6, line: 3380, baseType: !1313, size: 320)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !6, line: 1461, baseType: !1265, size: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1313, file: !6, line: 1462, baseType: !1317, size: 128, offset: 192)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1318, line: 31, size: 128, elements: !1319)
!1318 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1319 = !{!1320, !1323, !1324}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1317, file: !1318, line: 32, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1317, file: !1318, line: 33, baseType: !7, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1317, file: !1318, line: 34, baseType: !7, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1229, file: !6, line: 3381, baseType: !1326, size: 384)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !1327)
!1327 = !{!1328, !1329, !1334, !1335, !1336}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1326, file: !6, line: 2508, baseType: !1265, size: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1326, file: !6, line: 2509, baseType: !1330, size: 32, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1331, line: 58, baseType: !1332)
!1331 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1333, line: 44, baseType: !7)
!1333 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1326, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1326, file: !6, line: 2511, baseType: !1227, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1326, file: !6, line: 2512, baseType: !1227, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1229, file: !6, line: 3382, baseType: !1338, size: 896)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1338, file: !6, line: 2653, baseType: !1326, size: 384)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1338, file: !6, line: 2654, baseType: !1227, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1338, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1338, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1338, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1338, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1338, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1338, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1338, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1338, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1338, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1338, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1338, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1338, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1338, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1338, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1338, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1338, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1338, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1338, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1338, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1338, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1338, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1338, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1338, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1338, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1338, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1338, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1338, file: !6, line: 2705, baseType: !1227, size: 64, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1338, file: !6, line: 2706, baseType: !1227, size: 64, offset: 640)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1338, file: !6, line: 2707, baseType: !1227, size: 64, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1338, file: !6, line: 2708, baseType: !1227, size: 64, offset: 768)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1338, file: !6, line: 2711, baseType: !1373, size: 64, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1229, file: !6, line: 3383, baseType: !1376, size: 960)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1376, file: !6, line: 2757, baseType: !1338, size: 896)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1376, file: !6, line: 2758, baseType: !1380, size: 64, offset: 896)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !1218, line: 50, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !1218, line: 49, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1229, file: !6, line: 3384, baseType: !1384, size: 1472)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !1385)
!1385 = !{!1386, !1407, !1408, !1409, !1410}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1384, file: !6, line: 3115, baseType: !1387, size: 1216)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1387, file: !6, line: 2985, baseType: !1376, size: 960)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1387, file: !6, line: 2986, baseType: !1227, size: 64, offset: 960)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1387, file: !6, line: 2987, baseType: !1227, size: 64, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1387, file: !6, line: 2988, baseType: !1227, size: 64, offset: 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1387, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1387, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1387, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1387, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1387, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1387, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1387, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1387, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1387, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1387, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1387, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1387, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1387, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1387, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1384, file: !6, line: 3117, baseType: !1227, size: 64, offset: 1216)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1384, file: !6, line: 3119, baseType: !1227, size: 64, offset: 1280)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1384, file: !6, line: 3121, baseType: !1227, size: 64, offset: 1344)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1384, file: !6, line: 3123, baseType: !1227, size: 64, offset: 1408)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1229, file: !6, line: 3385, baseType: !1412, size: 1088)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !1413)
!1413 = !{!1414, !1415, !1416}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1412, file: !6, line: 2875, baseType: !1376, size: 960)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1412, file: !6, line: 2876, baseType: !1380, size: 64, offset: 960)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1412, file: !6, line: 2877, baseType: !1417, size: 64, offset: 1024)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !6, line: 2856, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1229, file: !6, line: 3386, baseType: !1387, size: 1216)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1229, file: !6, line: 3387, baseType: !1421, size: 1280)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1421, file: !6, line: 3094, baseType: !1387, size: 1216)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1421, file: !6, line: 3095, baseType: !1417, size: 64, offset: 1216)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1229, file: !6, line: 3388, baseType: !1426, size: 1216)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1426, file: !6, line: 2825, baseType: !1338, size: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1426, file: !6, line: 2827, baseType: !1227, size: 64, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1426, file: !6, line: 2828, baseType: !1227, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1426, file: !6, line: 2829, baseType: !1227, size: 64, offset: 1024)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1426, file: !6, line: 2830, baseType: !1227, size: 64, offset: 1088)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1426, file: !6, line: 2831, baseType: !1227, size: 64, offset: 1152)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1229, file: !6, line: 3389, baseType: !1435, size: 1024)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !1436)
!1436 = !{!1437, !1438, !1439}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1435, file: !6, line: 2851, baseType: !1376, size: 960)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1435, file: !6, line: 2852, baseType: !424, size: 32, offset: 960)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1435, file: !6, line: 2853, baseType: !424, size: 32, offset: 992)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1229, file: !6, line: 3390, baseType: !1441, size: 1024)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1441, file: !6, line: 2858, baseType: !1376, size: 960)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1441, file: !6, line: 2859, baseType: !1417, size: 64, offset: 960)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1229, file: !6, line: 3391, baseType: !1446, size: 960)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1446, file: !6, line: 2863, baseType: !1376, size: 960)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1229, file: !6, line: 3392, baseType: !1450, size: 1472)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1450, file: !6, line: 3305, baseType: !1384, size: 1472)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1229, file: !6, line: 3393, baseType: !1454, size: 1792)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1454, file: !6, line: 3249, baseType: !1384, size: 1472)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1454, file: !6, line: 3251, baseType: !1205, size: 64, offset: 1472)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1454, file: !6, line: 3254, baseType: !1227, size: 64, offset: 1536)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1454, file: !6, line: 3257, baseType: !1227, size: 64, offset: 1600)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1454, file: !6, line: 3258, baseType: !1227, size: 64, offset: 1664)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1454, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1454, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1454, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1454, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1454, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1454, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1454, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1454, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1454, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1454, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1454, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1454, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1454, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1454, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1454, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1454, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1454, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1454, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1229, file: !6, line: 3394, baseType: !1480, size: 1344)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1507, !1508, !1509, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1480, file: !6, line: 2280, baseType: !1265, size: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1480, file: !6, line: 2281, baseType: !1227, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1480, file: !6, line: 2282, baseType: !1227, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1480, file: !6, line: 2283, baseType: !1227, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1480, file: !6, line: 2284, baseType: !1227, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1480, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1480, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1480, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1480, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1480, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1480, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1480, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1480, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1480, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1480, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1480, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1480, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1480, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1480, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1480, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1480, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1480, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1480, file: !6, line: 2306, baseType: !1505, size: 32, offset: 544)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1506, line: 31, baseType: !424)
!1506 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1480, file: !6, line: 2307, baseType: !1227, size: 64, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1480, file: !6, line: 2308, baseType: !1227, size: 64, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1480, file: !6, line: 2314, baseType: !1510, size: 64, offset: 704)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1511)
!1511 = !{!1512, !1513, !1514}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1510, file: !6, line: 2310, baseType: !424, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1510, file: !6, line: 2311, baseType: !429, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1510, file: !6, line: 2312, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1480, file: !6, line: 2315, baseType: !1227, size: 64, offset: 768)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1480, file: !6, line: 2316, baseType: !1227, size: 64, offset: 832)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1480, file: !6, line: 2317, baseType: !1227, size: 64, offset: 896)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1480, file: !6, line: 2318, baseType: !1227, size: 64, offset: 960)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1480, file: !6, line: 2319, baseType: !1227, size: 64, offset: 1024)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1480, file: !6, line: 2320, baseType: !1227, size: 64, offset: 1088)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1480, file: !6, line: 2321, baseType: !1227, size: 64, offset: 1152)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1480, file: !6, line: 2322, baseType: !1227, size: 64, offset: 1216)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1480, file: !6, line: 2324, baseType: !1526, size: 64, offset: 1280)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1229, file: !6, line: 3395, baseType: !1529, size: 320)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1529, file: !6, line: 1470, baseType: !1265, size: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1529, file: !6, line: 1471, baseType: !1227, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1529, file: !6, line: 1472, baseType: !1227, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1229, file: !6, line: 3396, baseType: !1535, size: 320)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1536)
!1536 = !{!1537, !1538, !1539}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1535, file: !6, line: 1483, baseType: !1265, size: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1535, file: !6, line: 1484, baseType: !424, size: 32, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1535, file: !6, line: 1485, baseType: !1540, size: 64, offset: 256)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1227, size: 64, elements: !565)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1229, file: !6, line: 3397, baseType: !1542, size: 384)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1547}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1542, file: !6, line: 1830, baseType: !1265, size: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1542, file: !6, line: 1831, baseType: !1330, size: 32, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1542, file: !6, line: 1832, baseType: !1227, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1542, file: !6, line: 1835, baseType: !1540, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1229, file: !6, line: 3398, baseType: !1549, size: 704)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1557, !1558, !1561}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1549, file: !6, line: 1899, baseType: !1265, size: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1549, file: !6, line: 1902, baseType: !1227, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1549, file: !6, line: 1905, baseType: !1554, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !1218, line: 58, baseType: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !1218, line: 57, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1549, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1549, file: !6, line: 1911, baseType: !1559, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !6, line: 1876, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1549, file: !6, line: 1914, baseType: !1562, size: 256, offset: 448)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !1563)
!1563 = !{!1564, !1566, !1567, !1572}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1562, file: !6, line: 1884, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1562, file: !6, line: 1885, baseType: !1565, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1562, file: !6, line: 1891, baseType: !1568, size: 64, offset: 128)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !6, line: 1891, size: 64, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1568, file: !6, line: 1891, baseType: !1554, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1568, file: !6, line: 1891, baseType: !1227, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1562, file: !6, line: 1892, baseType: !1573, size: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1229, file: !6, line: 3399, baseType: !1575, size: 704)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1594, !1595, !1596, !1597, !1598}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1575, file: !6, line: 2009, baseType: !1265, size: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1575, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1575, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1575, file: !6, line: 2014, baseType: !1330, size: 32, offset: 224)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1575, file: !6, line: 2016, baseType: !1227, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1575, file: !6, line: 2017, baseType: !1583, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1585, file: !6, line: 183, baseType: !1588, size: 128)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !1590)
!1590 = !{!1591, !1592, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1589, file: !6, line: 182, baseType: !7, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1589, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1589, file: !6, line: 182, baseType: !1540, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1575, file: !6, line: 2019, baseType: !1227, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1575, file: !6, line: 2020, baseType: !1227, size: 64, offset: 448)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1575, file: !6, line: 2021, baseType: !1227, size: 64, offset: 512)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1575, file: !6, line: 2022, baseType: !1227, size: 64, offset: 576)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1575, file: !6, line: 2023, baseType: !1227, size: 64, offset: 640)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1229, file: !6, line: 3400, baseType: !1600, size: 832)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1601)
!1601 = !{!1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1600, file: !6, line: 2431, baseType: !1265, size: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1600, file: !6, line: 2433, baseType: !1227, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1600, file: !6, line: 2434, baseType: !1227, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1600, file: !6, line: 2435, baseType: !1227, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1600, file: !6, line: 2436, baseType: !1227, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1600, file: !6, line: 2437, baseType: !1583, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1600, file: !6, line: 2438, baseType: !1227, size: 64, offset: 512)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1600, file: !6, line: 2440, baseType: !1227, size: 64, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1600, file: !6, line: 2441, baseType: !1227, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1600, file: !6, line: 2443, baseType: !1612, size: 128, offset: 704)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1614)
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1613, file: !6, line: 182, baseType: !1588, size: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1229, file: !6, line: 3401, baseType: !1617, size: 320)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1618)
!1618 = !{!1619, !1620, !1627}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1617, file: !6, line: 3329, baseType: !1265, size: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1617, file: !6, line: 3330, baseType: !1621, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !1623)
!1623 = !{!1624, !1625, !1626}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1622, file: !6, line: 3322, baseType: !1621, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1622, file: !6, line: 3323, baseType: !1621, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1622, file: !6, line: 3324, baseType: !1227, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1617, file: !6, line: 3331, baseType: !1621, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1229, file: !6, line: 3402, baseType: !1629, size: 256)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1629, file: !6, line: 1541, baseType: !1265, size: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1629, file: !6, line: 1542, baseType: !1633, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1635, file: !6, line: 1538, baseType: !1638, size: 192)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1639, file: !6, line: 1537, baseType: !7, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1639, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1639, file: !6, line: 1537, baseType: !1644, size: 128, offset: 64)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1645, size: 128, elements: !565)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1646, file: !6, line: 1533, baseType: !1227, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1646, file: !6, line: 1534, baseType: !1227, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1229, file: !6, line: 3403, baseType: !1651, size: 512)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1662, !1664, !1665}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1651, file: !6, line: 1939, baseType: !1265, size: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1651, file: !6, line: 1940, baseType: !1330, size: 32, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1651, file: !6, line: 1941, baseType: !5, size: 32, offset: 224)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1651, file: !6, line: 1946, baseType: !1657, size: 32, offset: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1658)
!1658 = !{!1659, !1660, !1661}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1657, file: !6, line: 1943, baseType: !25, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1657, file: !6, line: 1944, baseType: !32, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1657, file: !6, line: 1945, baseType: !39, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1651, file: !6, line: 1950, baseType: !1663, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !1218, line: 66, baseType: !1216)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1651, file: !6, line: 1951, baseType: !1663, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1651, file: !6, line: 1953, baseType: !1540, size: 64, offset: 448)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1229, file: !6, line: 3404, baseType: !1667, size: 1664)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1668)
!1668 = !{!1669, !1670}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1667, file: !6, line: 3338, baseType: !1265, size: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1667, file: !6, line: 3341, baseType: !1671, size: 1472, offset: 192)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1672, line: 410, size: 1472, elements: !1673)
!1672 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1671, file: !1672, line: 412, baseType: !424, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1671, file: !1672, line: 413, baseType: !424, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1671, file: !1672, line: 414, baseType: !424, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1671, file: !1672, line: 415, baseType: !424, size: 32, offset: 96)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1671, file: !1672, line: 416, baseType: !424, size: 32, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1671, file: !1672, line: 417, baseType: !424, size: 32, offset: 160)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1671, file: !1672, line: 418, baseType: !423, size: 8, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1671, file: !1672, line: 419, baseType: !423, size: 8, offset: 200)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1671, file: !1672, line: 420, baseType: !562, size: 8, offset: 208)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1671, file: !1672, line: 421, baseType: !562, size: 8, offset: 216)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1671, file: !1672, line: 422, baseType: !562, size: 8, offset: 224)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1671, file: !1672, line: 423, baseType: !562, size: 8, offset: 232)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1671, file: !1672, line: 424, baseType: !562, size: 8, offset: 240)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1671, file: !1672, line: 425, baseType: !562, size: 8, offset: 248)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1671, file: !1672, line: 426, baseType: !562, size: 8, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1671, file: !1672, line: 427, baseType: !562, size: 8, offset: 264)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1671, file: !1672, line: 428, baseType: !562, size: 8, offset: 272)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1671, file: !1672, line: 429, baseType: !562, size: 8, offset: 280)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1671, file: !1672, line: 430, baseType: !562, size: 8, offset: 288)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1671, file: !1672, line: 431, baseType: !562, size: 8, offset: 296)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1671, file: !1672, line: 432, baseType: !562, size: 8, offset: 304)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1671, file: !1672, line: 433, baseType: !562, size: 8, offset: 312)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1671, file: !1672, line: 434, baseType: !562, size: 8, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1671, file: !1672, line: 435, baseType: !562, size: 8, offset: 328)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1671, file: !1672, line: 436, baseType: !562, size: 8, offset: 336)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1671, file: !1672, line: 437, baseType: !562, size: 8, offset: 344)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1671, file: !1672, line: 438, baseType: !562, size: 8, offset: 352)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1671, file: !1672, line: 439, baseType: !562, size: 8, offset: 360)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1671, file: !1672, line: 440, baseType: !562, size: 8, offset: 368)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1671, file: !1672, line: 441, baseType: !562, size: 8, offset: 376)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1671, file: !1672, line: 442, baseType: !562, size: 8, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1671, file: !1672, line: 443, baseType: !562, size: 8, offset: 392)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1671, file: !1672, line: 444, baseType: !562, size: 8, offset: 400)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1671, file: !1672, line: 445, baseType: !562, size: 8, offset: 408)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1671, file: !1672, line: 446, baseType: !562, size: 8, offset: 416)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1671, file: !1672, line: 447, baseType: !562, size: 8, offset: 424)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1671, file: !1672, line: 448, baseType: !562, size: 8, offset: 432)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1671, file: !1672, line: 449, baseType: !562, size: 8, offset: 440)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1671, file: !1672, line: 450, baseType: !562, size: 8, offset: 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1671, file: !1672, line: 451, baseType: !562, size: 8, offset: 456)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1671, file: !1672, line: 452, baseType: !562, size: 8, offset: 464)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1671, file: !1672, line: 453, baseType: !562, size: 8, offset: 472)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1671, file: !1672, line: 454, baseType: !562, size: 8, offset: 480)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1671, file: !1672, line: 455, baseType: !562, size: 8, offset: 488)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1671, file: !1672, line: 456, baseType: !562, size: 8, offset: 496)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1671, file: !1672, line: 457, baseType: !562, size: 8, offset: 504)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1671, file: !1672, line: 458, baseType: !562, size: 8, offset: 512)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1671, file: !1672, line: 459, baseType: !562, size: 8, offset: 520)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1671, file: !1672, line: 460, baseType: !562, size: 8, offset: 528)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1671, file: !1672, line: 461, baseType: !562, size: 8, offset: 536)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1671, file: !1672, line: 462, baseType: !562, size: 8, offset: 544)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1671, file: !1672, line: 463, baseType: !562, size: 8, offset: 552)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1671, file: !1672, line: 464, baseType: !562, size: 8, offset: 560)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1671, file: !1672, line: 465, baseType: !562, size: 8, offset: 568)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1671, file: !1672, line: 466, baseType: !562, size: 8, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1671, file: !1672, line: 467, baseType: !562, size: 8, offset: 584)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1671, file: !1672, line: 468, baseType: !562, size: 8, offset: 592)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1671, file: !1672, line: 469, baseType: !562, size: 8, offset: 600)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1671, file: !1672, line: 470, baseType: !562, size: 8, offset: 608)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1671, file: !1672, line: 471, baseType: !562, size: 8, offset: 616)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1671, file: !1672, line: 472, baseType: !562, size: 8, offset: 624)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1671, file: !1672, line: 473, baseType: !562, size: 8, offset: 632)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1671, file: !1672, line: 474, baseType: !562, size: 8, offset: 640)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1671, file: !1672, line: 475, baseType: !562, size: 8, offset: 648)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1671, file: !1672, line: 476, baseType: !562, size: 8, offset: 656)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1671, file: !1672, line: 477, baseType: !562, size: 8, offset: 664)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1671, file: !1672, line: 478, baseType: !562, size: 8, offset: 672)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1671, file: !1672, line: 479, baseType: !562, size: 8, offset: 680)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1671, file: !1672, line: 480, baseType: !562, size: 8, offset: 688)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1671, file: !1672, line: 481, baseType: !562, size: 8, offset: 696)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1671, file: !1672, line: 482, baseType: !562, size: 8, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1671, file: !1672, line: 483, baseType: !562, size: 8, offset: 712)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1671, file: !1672, line: 484, baseType: !562, size: 8, offset: 720)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1671, file: !1672, line: 485, baseType: !562, size: 8, offset: 728)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1671, file: !1672, line: 486, baseType: !562, size: 8, offset: 736)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1671, file: !1672, line: 487, baseType: !562, size: 8, offset: 744)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1671, file: !1672, line: 488, baseType: !562, size: 8, offset: 752)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1671, file: !1672, line: 489, baseType: !562, size: 8, offset: 760)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1671, file: !1672, line: 490, baseType: !562, size: 8, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1671, file: !1672, line: 491, baseType: !562, size: 8, offset: 776)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1671, file: !1672, line: 492, baseType: !562, size: 8, offset: 784)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1671, file: !1672, line: 493, baseType: !562, size: 8, offset: 792)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1671, file: !1672, line: 494, baseType: !562, size: 8, offset: 800)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1671, file: !1672, line: 495, baseType: !562, size: 8, offset: 808)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1671, file: !1672, line: 496, baseType: !562, size: 8, offset: 816)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1671, file: !1672, line: 497, baseType: !562, size: 8, offset: 824)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1671, file: !1672, line: 498, baseType: !562, size: 8, offset: 832)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1671, file: !1672, line: 499, baseType: !562, size: 8, offset: 840)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1671, file: !1672, line: 500, baseType: !562, size: 8, offset: 848)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1671, file: !1672, line: 501, baseType: !562, size: 8, offset: 856)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1671, file: !1672, line: 502, baseType: !562, size: 8, offset: 864)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1671, file: !1672, line: 503, baseType: !562, size: 8, offset: 872)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1671, file: !1672, line: 504, baseType: !562, size: 8, offset: 880)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1671, file: !1672, line: 505, baseType: !562, size: 8, offset: 888)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1671, file: !1672, line: 506, baseType: !562, size: 8, offset: 896)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1671, file: !1672, line: 507, baseType: !562, size: 8, offset: 904)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1671, file: !1672, line: 508, baseType: !562, size: 8, offset: 912)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1671, file: !1672, line: 509, baseType: !562, size: 8, offset: 920)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1671, file: !1672, line: 510, baseType: !562, size: 8, offset: 928)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1671, file: !1672, line: 511, baseType: !562, size: 8, offset: 936)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1671, file: !1672, line: 512, baseType: !562, size: 8, offset: 944)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1671, file: !1672, line: 513, baseType: !562, size: 8, offset: 952)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1671, file: !1672, line: 514, baseType: !562, size: 8, offset: 960)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1671, file: !1672, line: 515, baseType: !562, size: 8, offset: 968)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1671, file: !1672, line: 516, baseType: !562, size: 8, offset: 976)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1671, file: !1672, line: 517, baseType: !562, size: 8, offset: 984)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1671, file: !1672, line: 518, baseType: !562, size: 8, offset: 992)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1671, file: !1672, line: 519, baseType: !562, size: 8, offset: 1000)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1671, file: !1672, line: 520, baseType: !562, size: 8, offset: 1008)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1671, file: !1672, line: 521, baseType: !562, size: 8, offset: 1016)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1671, file: !1672, line: 522, baseType: !562, size: 8, offset: 1024)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1671, file: !1672, line: 523, baseType: !562, size: 8, offset: 1032)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1671, file: !1672, line: 524, baseType: !562, size: 8, offset: 1040)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1671, file: !1672, line: 525, baseType: !562, size: 8, offset: 1048)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1671, file: !1672, line: 526, baseType: !562, size: 8, offset: 1056)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1671, file: !1672, line: 527, baseType: !562, size: 8, offset: 1064)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1671, file: !1672, line: 528, baseType: !562, size: 8, offset: 1072)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1671, file: !1672, line: 529, baseType: !562, size: 8, offset: 1080)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1671, file: !1672, line: 530, baseType: !562, size: 8, offset: 1088)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1671, file: !1672, line: 531, baseType: !562, size: 8, offset: 1096)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1671, file: !1672, line: 532, baseType: !562, size: 8, offset: 1104)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1671, file: !1672, line: 533, baseType: !562, size: 8, offset: 1112)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1671, file: !1672, line: 534, baseType: !562, size: 8, offset: 1120)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1671, file: !1672, line: 535, baseType: !562, size: 8, offset: 1128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1671, file: !1672, line: 536, baseType: !562, size: 8, offset: 1136)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1671, file: !1672, line: 537, baseType: !562, size: 8, offset: 1144)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1671, file: !1672, line: 538, baseType: !562, size: 8, offset: 1152)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1671, file: !1672, line: 539, baseType: !562, size: 8, offset: 1160)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1671, file: !1672, line: 540, baseType: !562, size: 8, offset: 1168)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1671, file: !1672, line: 541, baseType: !562, size: 8, offset: 1176)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1671, file: !1672, line: 542, baseType: !562, size: 8, offset: 1184)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1671, file: !1672, line: 543, baseType: !562, size: 8, offset: 1192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1671, file: !1672, line: 544, baseType: !562, size: 8, offset: 1200)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1671, file: !1672, line: 545, baseType: !562, size: 8, offset: 1208)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1671, file: !1672, line: 546, baseType: !562, size: 8, offset: 1216)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1671, file: !1672, line: 547, baseType: !562, size: 8, offset: 1224)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1671, file: !1672, line: 548, baseType: !562, size: 8, offset: 1232)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1671, file: !1672, line: 549, baseType: !562, size: 8, offset: 1240)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1671, file: !1672, line: 550, baseType: !562, size: 8, offset: 1248)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1671, file: !1672, line: 551, baseType: !562, size: 8, offset: 1256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1671, file: !1672, line: 552, baseType: !562, size: 8, offset: 1264)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1671, file: !1672, line: 553, baseType: !562, size: 8, offset: 1272)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1671, file: !1672, line: 554, baseType: !562, size: 8, offset: 1280)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1671, file: !1672, line: 555, baseType: !562, size: 8, offset: 1288)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1671, file: !1672, line: 556, baseType: !562, size: 8, offset: 1296)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1671, file: !1672, line: 557, baseType: !562, size: 8, offset: 1304)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1671, file: !1672, line: 558, baseType: !562, size: 8, offset: 1312)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1671, file: !1672, line: 559, baseType: !562, size: 8, offset: 1320)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1671, file: !1672, line: 560, baseType: !562, size: 8, offset: 1328)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1671, file: !1672, line: 561, baseType: !562, size: 8, offset: 1336)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1671, file: !1672, line: 562, baseType: !562, size: 8, offset: 1344)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1671, file: !1672, line: 563, baseType: !562, size: 8, offset: 1352)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1671, file: !1672, line: 564, baseType: !562, size: 8, offset: 1360)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1671, file: !1672, line: 565, baseType: !562, size: 8, offset: 1368)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1671, file: !1672, line: 566, baseType: !562, size: 8, offset: 1376)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1671, file: !1672, line: 567, baseType: !562, size: 8, offset: 1384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1671, file: !1672, line: 568, baseType: !562, size: 8, offset: 1392)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1671, file: !1672, line: 569, baseType: !562, size: 8, offset: 1400)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1671, file: !1672, line: 570, baseType: !562, size: 8, offset: 1408)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1671, file: !1672, line: 571, baseType: !562, size: 8, offset: 1416)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1671, file: !1672, line: 572, baseType: !562, size: 8, offset: 1424)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1671, file: !1672, line: 573, baseType: !562, size: 8, offset: 1432)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1671, file: !1672, line: 574, baseType: !562, size: 8, offset: 1440)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1229, file: !6, line: 3405, baseType: !1838, size: 384)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1838, file: !6, line: 3353, baseType: !1265, size: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1838, file: !6, line: 3356, baseType: !1842, size: 192, offset: 192)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1672, line: 578, size: 192, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1842, file: !1672, line: 580, baseType: !424, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1842, file: !1672, line: 581, baseType: !424, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1842, file: !1672, line: 582, baseType: !424, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1842, file: !1672, line: 583, baseType: !424, size: 32, offset: 96)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1842, file: !1672, line: 584, baseType: !423, size: 8, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1842, file: !1672, line: 585, baseType: !423, size: 8, offset: 136)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1842, file: !1672, line: 586, baseType: !423, size: 8, offset: 144)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1842, file: !1672, line: 587, baseType: !423, size: 8, offset: 152)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1842, file: !1672, line: 588, baseType: !423, size: 8, offset: 160)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1842, file: !1672, line: 589, baseType: !423, size: 8, offset: 168)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1842, file: !1672, line: 590, baseType: !423, size: 8, offset: 176)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1206, file: !1207, line: 488, baseType: !1227, size: 64, offset: 448)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1206, file: !1207, line: 493, baseType: !1227, size: 64, offset: 512)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1206, file: !1207, line: 496, baseType: !1227, size: 64, offset: 576)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1206, file: !1207, line: 501, baseType: !1859, size: 64, offset: 640)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !234, line: 2355, size: 576, elements: !1861)
!1861 = !{!1862, !1865, !1866, !1867, !1868, !1872, !1873, !1878, !1879, !1880, !1881, !1882, !1883}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1860, file: !234, line: 2356, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !234, line: 2356, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1860, file: !234, line: 2357, baseType: !429, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1860, file: !234, line: 2358, baseType: !424, size: 32, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1860, file: !234, line: 2359, baseType: !424, size: 32, offset: 160)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1860, file: !234, line: 2360, baseType: !1869, size: 128, offset: 192)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 128, elements: !1870)
!1870 = !{!1871}
!1871 = !DISubrange(count: 4)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1860, file: !234, line: 2364, baseType: !424, size: 32, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1860, file: !234, line: 2367, baseType: !1874, size: 128, offset: 384)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !234, line: 2349, size: 128, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1874, file: !234, line: 2351, baseType: !1380, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1874, file: !234, line: 2352, baseType: !558, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1860, file: !234, line: 2371, baseType: !233, size: 32, offset: 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1860, file: !234, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1860, file: !234, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1860, file: !234, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1860, file: !234, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1860, file: !234, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1206, file: !1207, line: 504, baseType: !1885, size: 64, offset: 704)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1207, line: 504, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1206, file: !1207, line: 507, baseType: !527, size: 64, offset: 768)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1206, file: !1207, line: 510, baseType: !424, size: 32, offset: 832)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1206, file: !1207, line: 513, baseType: !424, size: 32, offset: 864)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1206, file: !1207, line: 516, baseType: !1330, size: 32, offset: 896)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1206, file: !1207, line: 519, baseType: !1330, size: 32, offset: 928)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1206, file: !1207, line: 522, baseType: !7, size: 32, offset: 960)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1206, file: !1207, line: 523, baseType: !7, size: 32, offset: 992)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1206, file: !1207, line: 528, baseType: !429, size: 64, offset: 1024)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1206, file: !1207, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1206, file: !1207, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1206, file: !1207, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1206, file: !1207, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1206, file: !1207, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1206, file: !1207, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1206, file: !1207, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1206, file: !1207, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1206, file: !1207, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1206, file: !1207, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1206, file: !1207, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1206, file: !1207, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1206, file: !1207, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1206, file: !1207, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1206, file: !1207, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1206, file: !1207, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1911 = !{!1912, !1913, !1914, !1915}
!1912 = !DILocalVariable(name: "fn", arg: 1, scope: !1202, file: !3, line: 291, type: !1205)
!1913 = !DILocalVariable(name: "id", arg: 2, scope: !1202, file: !3, line: 291, type: !429)
!1914 = !DILocalVariable(name: "incr", arg: 3, scope: !1202, file: !3, line: 291, type: !424)
!1915 = !DILocalVariable(name: "counter", scope: !1202, file: !3, line: 293, type: !493)
!1916 = !DILocation(line: 0, scope: !1202)
!1917 = !DILocation(line: 295, column: 10, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 295, column: 7)
!1919 = !DILocation(line: 295, column: 21, scope: !1918)
!1920 = !DILocation(line: 296, column: 12, scope: !1918)
!1921 = !DILocation(line: 296, column: 8, scope: !1918)
!1922 = !DILocation(line: 297, column: 15, scope: !1918)
!1923 = !DILocation(line: 300, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 300, column: 7)
!1925 = !DILocation(line: 300, column: 21, scope: !1924)
!1926 = !DILocation(line: 300, column: 40, scope: !1924)
!1927 = !DILocation(line: 300, column: 7, scope: !1202)
!1928 = !DILocation(line: 302, column: 40, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 301, column: 5)
!1930 = !DILocation(line: 302, column: 17, scope: !1929)
!1931 = !DILocation(line: 303, column: 7, scope: !1929)
!1932 = !DILocation(line: 304, column: 25, scope: !1929)
!1933 = !DILocation(line: 304, column: 16, scope: !1929)
!1934 = !DILocation(line: 304, column: 22, scope: !1929)
!1935 = !DILocation(line: 307, column: 8, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 307, column: 7)
!1937 = !DILocation(line: 305, column: 5, scope: !1929)
!1938 = !DILocation(line: 308, column: 7, scope: !1936)
!1939 = !DILocation(line: 308, column: 12, scope: !1936)
!1940 = !DILocation(line: 308, column: 34, scope: !1936)
!1941 = !DILocation(line: 307, column: 7, scope: !1202)
!1942 = !DILocation(line: 313, column: 5, scope: !1202)
!1943 = !DILocation(line: 313, column: 19, scope: !1202)
!1944 = !DILocation(line: 314, column: 19, scope: !1202)
!1945 = !DILocation(line: 316, column: 5, scope: !1202)
!1946 = !DILocation(line: 316, column: 10, scope: !1202)
!1947 = !DILocation(line: 311, column: 3, scope: !1202)
!1948 = !DILocation(line: 318, column: 1, scope: !1202)
!1949 = distinct !DISubprogram(name: "lookup_or_add_counter", scope: !3, file: !3, line: 266, type: !1950, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!493, !527, !429, !424, !423}
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958}
!1953 = !DILocalVariable(name: "hash", arg: 1, scope: !1949, file: !3, line: 266, type: !527)
!1954 = !DILocalVariable(name: "id", arg: 2, scope: !1949, file: !3, line: 266, type: !429)
!1955 = !DILocalVariable(name: "val", arg: 3, scope: !1949, file: !3, line: 266, type: !424)
!1956 = !DILocalVariable(name: "histogram_p", arg: 4, scope: !1949, file: !3, line: 267, type: !423)
!1957 = !DILocalVariable(name: "counter", scope: !1949, file: !3, line: 269, type: !517)
!1958 = !DILocalVariable(name: "c", scope: !1949, file: !3, line: 270, type: !485)
!1959 = !DILocation(line: 0, scope: !1949)
!1960 = !DILocation(line: 270, column: 3, scope: !1949)
!1961 = !DILocation(line: 271, column: 5, scope: !1949)
!1962 = !DILocation(line: 271, column: 8, scope: !1949)
!1963 = !DILocation(line: 272, column: 5, scope: !1949)
!1964 = !DILocation(line: 272, column: 9, scope: !1949)
!1965 = !DILocation(line: 273, column: 39, scope: !1949)
!1966 = !DILocation(line: 273, column: 13, scope: !1949)
!1967 = !DILocation(line: 274, column: 8, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 274, column: 7)
!1969 = !DILocation(line: 274, column: 7, scope: !1949)
!1970 = !DILocation(line: 276, column: 18, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 275, column: 5)
!1972 = !DILocation(line: 276, column: 16, scope: !1971)
!1973 = !DILocation(line: 277, column: 24, scope: !1971)
!1974 = !DILocation(line: 277, column: 8, scope: !1971)
!1975 = !DILocation(line: 277, column: 19, scope: !1971)
!1976 = !DILocation(line: 277, column: 22, scope: !1971)
!1977 = !DILocation(line: 278, column: 8, scope: !1971)
!1978 = !DILocation(line: 278, column: 19, scope: !1971)
!1979 = !DILocation(line: 278, column: 23, scope: !1971)
!1980 = !DILocation(line: 279, column: 8, scope: !1971)
!1981 = !DILocation(line: 279, column: 19, scope: !1971)
!1982 = !DILocation(line: 279, column: 31, scope: !1971)
!1983 = !DILocation(line: 280, column: 8, scope: !1971)
!1984 = !DILocation(line: 280, column: 19, scope: !1971)
!1985 = !DILocation(line: 280, column: 37, scope: !1971)
!1986 = !DILocation(line: 281, column: 8, scope: !1971)
!1987 = !DILocation(line: 281, column: 19, scope: !1971)
!1988 = !DILocation(line: 281, column: 25, scope: !1971)
!1989 = !DILocation(line: 283, column: 10, scope: !1949)
!1990 = !DILocation(line: 282, column: 5, scope: !1971)
!1991 = !DILocation(line: 284, column: 1, scope: !1949)
!1992 = !DILocation(line: 283, column: 3, scope: !1949)
!1993 = distinct !DISubprogram(name: "statistics_histogram_event", scope: !3, file: !3, line: 325, type: !1203, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1994)
!1994 = !{!1995, !1996, !1997, !1998}
!1995 = !DILocalVariable(name: "fn", arg: 1, scope: !1993, file: !3, line: 325, type: !1205)
!1996 = !DILocalVariable(name: "id", arg: 2, scope: !1993, file: !3, line: 325, type: !429)
!1997 = !DILocalVariable(name: "val", arg: 3, scope: !1993, file: !3, line: 325, type: !424)
!1998 = !DILocalVariable(name: "counter", scope: !1993, file: !3, line: 327, type: !493)
!1999 = !DILocation(line: 0, scope: !1993)
!2000 = !DILocation(line: 329, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 329, column: 7)
!2002 = !DILocation(line: 329, column: 20, scope: !2001)
!2003 = !DILocation(line: 330, column: 11, scope: !2001)
!2004 = !DILocation(line: 330, column: 7, scope: !2001)
!2005 = !DILocation(line: 333, column: 36, scope: !1993)
!2006 = !DILocation(line: 333, column: 13, scope: !1993)
!2007 = !DILocation(line: 334, column: 3, scope: !1993)
!2008 = !DILocation(line: 335, column: 12, scope: !1993)
!2009 = !DILocation(line: 335, column: 18, scope: !1993)
!2010 = !DILocation(line: 337, column: 8, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 337, column: 7)
!2012 = !DILocation(line: 338, column: 7, scope: !2011)
!2013 = !DILocation(line: 338, column: 12, scope: !2011)
!2014 = !DILocation(line: 338, column: 34, scope: !2011)
!2015 = !DILocation(line: 337, column: 7, scope: !1993)
!2016 = !DILocation(line: 343, column: 5, scope: !1993)
!2017 = !DILocation(line: 343, column: 19, scope: !1993)
!2018 = !DILocation(line: 344, column: 19, scope: !1993)
!2019 = !DILocation(line: 346, column: 5, scope: !1993)
!2020 = !DILocation(line: 346, column: 10, scope: !1993)
!2021 = !DILocation(line: 341, column: 3, scope: !1993)
!2022 = !DILocation(line: 347, column: 1, scope: !1993)
!2023 = distinct !DISubprogram(name: "hash_statistics_hash", scope: !3, file: !3, line: 54, type: !439, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2024)
!2024 = !{!2025, !2026}
!2025 = !DILocalVariable(name: "p", arg: 1, scope: !2023, file: !3, line: 54, type: !442)
!2026 = !DILocalVariable(name: "c", scope: !2023, file: !3, line: 56, type: !2027)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!2028 = !DILocation(line: 0, scope: !2023)
!2029 = !DILocation(line: 57, column: 31, scope: !2023)
!2030 = !DILocation(line: 57, column: 10, scope: !2023)
!2031 = !DILocation(line: 57, column: 40, scope: !2023)
!2032 = !DILocation(line: 57, column: 35, scope: !2023)
!2033 = !DILocation(line: 57, column: 3, scope: !2023)
!2034 = distinct !DISubprogram(name: "hash_statistics_eq", scope: !3, file: !3, line: 63, type: !447, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2035 = !{!2036, !2037, !2038, !2039}
!2036 = !DILocalVariable(name: "p", arg: 1, scope: !2034, file: !3, line: 63, type: !442)
!2037 = !DILocalVariable(name: "q", arg: 2, scope: !2034, file: !3, line: 63, type: !442)
!2038 = !DILocalVariable(name: "c1", scope: !2034, file: !3, line: 65, type: !2027)
!2039 = !DILocalVariable(name: "c2", scope: !2034, file: !3, line: 66, type: !2027)
!2040 = !DILocation(line: 0, scope: !2034)
!2041 = !DILocation(line: 67, column: 14, scope: !2034)
!2042 = !DILocation(line: 67, column: 25, scope: !2034)
!2043 = !DILocation(line: 67, column: 18, scope: !2034)
!2044 = !DILocation(line: 67, column: 29, scope: !2034)
!2045 = !DILocation(line: 67, column: 44, scope: !2034)
!2046 = !DILocation(line: 67, column: 52, scope: !2034)
!2047 = !DILocation(line: 67, column: 32, scope: !2034)
!2048 = !DILocation(line: 67, column: 56, scope: !2034)
!2049 = !DILocation(line: 67, column: 3, scope: !2034)
!2050 = distinct !DISubprogram(name: "hash_statistics_free", scope: !3, file: !3, line: 73, type: !452, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2051)
!2051 = !{!2052}
!2052 = !DILocalVariable(name: "p", arg: 1, scope: !2050, file: !3, line: 73, type: !428)
!2053 = !DILocation(line: 0, scope: !2050)
!2054 = !DILocation(line: 75, column: 9, scope: !2050)
!2055 = !DILocation(line: 75, column: 3, scope: !2050)
!2056 = !DILocation(line: 76, column: 3, scope: !2050)
!2057 = !DILocation(line: 77, column: 1, scope: !2050)
