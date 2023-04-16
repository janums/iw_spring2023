; ModuleID = 'plugin.bc'
source_filename = "plugin.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.callback_info = type { i8*, void (i8*, i8*)*, i8*, %struct.callback_info* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.plugin_name_args = type { i8*, i8*, i32, %struct.plugin_argument*, i8*, i8* }
%struct.plugin_argument = type { i8*, i8* }
%struct.register_pass_info = type { %struct.opt_pass*, i8*, i32, i32 }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.plugin_info = type { i8*, i8* }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.ggc_cache_tab = type { %struct.htab**, i64, i64, void (i8*)*, void (i8*)*, i32 (i8*)* }
%struct.print_options = type { %struct._IO_FILE*, i8* }
%struct.plugin_gcc_version = type { i8*, i8*, i8*, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@plugin_event_name_init = internal global [23 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0)], align 16, !dbg !0
@plugin_event_name = dso_local local_unnamed_addr global i8** getelementptr inbounds ([23 x i8*], [23 x i8*]* @plugin_event_name_init, i64 0, i64 0), align 8, !dbg !410
@plugin_name_args_tab = internal unnamed_addr global %struct.htab* null, align 8, !dbg !420
@.str = private unnamed_addr constant [52 x i8] c"Plugin %s was specified with different paths:\0A%s\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Malformed option -fplugin-arg-%s (multiple '=' signs)\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Malformed option -fplugin-arg-%s (missing -<key>[=<value>])\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"plugin.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Plugin %s should be specified before -fplugin-arg-%s in the command line\00", align 1
@event_tab = internal unnamed_addr global %struct.htab* null, align 8, !dbg !412
@event_last = internal unnamed_addr global i32 23, align 4, !dbg !422
@event_horizon = internal unnamed_addr global i32 23, align 4, !dbg !424
@plugin_callbacks = internal unnamed_addr global %struct.callback_info** getelementptr inbounds ([23 x %struct.callback_info*], [23 x %struct.callback_info*]* @plugin_callbacks_init, i64 0, i64 0), align 8, !dbg !426
@plugin_callbacks_init = internal global [23 x %struct.callback_info*] zeroinitializer, align 16, !dbg !415
@.str.6 = private unnamed_addr constant [47 x i8] c"Unknown callback event registered by plugin %s\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Plugin %s registered a null callback function for event %s\00", align 1
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%sVersions of loaded plugins:\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%sHelp for the loaded plugins:\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%-32s | %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Event\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Plugins\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%-32s |\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [26 x i8] c"PLUGIN_PASS_MANAGER_SETUP\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"PLUGIN_FINISH_TYPE\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"PLUGIN_FINISH_UNIT\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"PLUGIN_PRE_GENERICIZE\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"PLUGIN_FINISH\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"PLUGIN_INFO\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"PLUGIN_GGC_START\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"PLUGIN_GGC_MARKING\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"PLUGIN_GGC_END\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"PLUGIN_REGISTER_GGC_ROOTS\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"PLUGIN_REGISTER_GGC_CACHES\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"PLUGIN_ATTRIBUTES\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"PLUGIN_START_UNIT\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"PLUGIN_PRAGMAS\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"PLUGIN_ALL_PASSES_START\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"PLUGIN_ALL_PASSES_END\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"PLUGIN_ALL_IPA_PASSES_START\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"PLUGIN_ALL_IPA_PASSES_END\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"PLUGIN_OVERRIDE_GATE\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"PLUGIN_PASS_EXECUTION\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"PLUGIN_EARLY_GIMPLE_PASSES_START\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"PLUGIN_EARLY_GIMPLE_PASSES_END\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"PLUGIN_NEW_PASS\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Unknown version.\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c" %s%s: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"No help available .\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c" %s%s:\0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"   %s %s\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !433 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !446, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !447, metadata !DIExpression()), !dbg !448
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !449
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !450
  ret i32 %call, !dbg !451
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !452 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !456
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !457
  ret i32 %call, !dbg !458
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !459 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !463, metadata !DIExpression()), !dbg !464
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !465
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !465
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !465
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !465
  %cmp = icmp uge i8* %0, %1, !dbg !465
  %conv1 = zext i1 %cmp to i64, !dbg !465
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !465
  %tobool = icmp eq i64 %expval, 0, !dbg !465
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !465

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !465
  br label %cond.end, !dbg !465

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !465
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !465
  %2 = load i8, i8* %0, align 1, !dbg !465
  %conv3 = zext i8 %2 to i32, !dbg !465
  br label %cond.end, !dbg !465

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !465
  ret i32 %cond, !dbg !466
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !467 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !469, metadata !DIExpression()), !dbg !470
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !471
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !471
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !471
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !471
  %cmp = icmp uge i8* %0, %1, !dbg !471
  %conv1 = zext i1 %cmp to i64, !dbg !471
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !471
  %tobool = icmp eq i64 %expval, 0, !dbg !471
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !471

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !471
  br label %cond.end, !dbg !471

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !471
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !471
  %2 = load i8, i8* %0, align 1, !dbg !471
  %conv3 = zext i8 %2 to i32, !dbg !471
  br label %cond.end, !dbg !471

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !471
  ret i32 %cond, !dbg !472
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !473 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !474
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !474
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !474
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !474
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !474
  %cmp = icmp uge i8* %1, %2, !dbg !474
  %conv1 = zext i1 %cmp to i64, !dbg !474
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !474
  %tobool = icmp eq i64 %expval, 0, !dbg !474
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !474

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !474
  br label %cond.end, !dbg !474

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !474
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !474
  %3 = load i8, i8* %1, align 1, !dbg !474
  %conv3 = zext i8 %3 to i32, !dbg !474
  br label %cond.end, !dbg !474

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !474
  ret i32 %cond, !dbg !475
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !476 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !480, metadata !DIExpression()), !dbg !481
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !482
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !483
  ret i32 %call, !dbg !484
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !485 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !489, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !490, metadata !DIExpression()), !dbg !491
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !492
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !492
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !492
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !492
  %cmp = icmp uge i8* %0, %1, !dbg !492
  %conv1 = zext i1 %cmp to i64, !dbg !492
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !492
  %tobool = icmp eq i64 %expval, 0, !dbg !492
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !492

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !492
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !492
  br label %cond.end, !dbg !492

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !492
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !492
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !492
  store i8 %conv2, i8* %0, align 1, !dbg !492
  %conv6 = and i32 %__c, 255, !dbg !492
  br label %cond.end, !dbg !492

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !492
  ret i32 %cond, !dbg !493
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !494 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !496, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !497, metadata !DIExpression()), !dbg !498
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !499
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !499
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !499
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !499
  %cmp = icmp uge i8* %0, %1, !dbg !499
  %conv1 = zext i1 %cmp to i64, !dbg !499
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !499
  %tobool = icmp eq i64 %expval, 0, !dbg !499
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !499

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !499
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !499
  br label %cond.end, !dbg !499

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !499
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !499
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !499
  store i8 %conv2, i8* %0, align 1, !dbg !499
  %conv6 = and i32 %__c, 255, !dbg !499
  br label %cond.end, !dbg !499

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !499
  ret i32 %cond, !dbg !500
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !501 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !505
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !505
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !505
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !505
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !505
  %cmp = icmp uge i8* %1, %2, !dbg !505
  %conv1 = zext i1 %cmp to i64, !dbg !505
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !505
  %tobool = icmp eq i64 %expval, 0, !dbg !505
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !505

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !505
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !505
  br label %cond.end, !dbg !505

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !505
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !505
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !505
  store i8 %conv4, i8* %1, align 1, !dbg !505
  %conv6 = and i32 %__c, 255, !dbg !505
  br label %cond.end, !dbg !505

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !505
  ret i32 %cond, !dbg !506
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !507 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !513, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata i64* %__n, metadata !514, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !515, metadata !DIExpression()), !dbg !516
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !517
  ret i64 %call, !dbg !518
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !519 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !521, metadata !DIExpression()), !dbg !522
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !523
  %0 = load i32, i32* %_flags, align 8, !dbg !523
  %and = lshr i32 %0, 4, !dbg !523
  %and.lobit = and i32 %and, 1, !dbg !523
  ret i32 %and.lobit, !dbg !524
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !525 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !527, metadata !DIExpression()), !dbg !528
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !529
  %0 = load i32, i32* %_flags, align 8, !dbg !529
  %and = lshr i32 %0, 5, !dbg !529
  %and.lobit = and i32 %and, 1, !dbg !529
  ret i32 %and.lobit, !dbg !530
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !531 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !534, metadata !DIExpression()), !dbg !535
  %__c.off = add i32 %__c, 128, !dbg !536
  %0 = icmp ult i32 %__c.off, 384, !dbg !536
  br i1 %0, label %cond.true, label %cond.end, !dbg !536

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !537
  %1 = load i32*, i32** %call, align 8, !dbg !538
  %idxprom = sext i32 %__c to i64, !dbg !539
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !539
  %2 = load i32, i32* %arrayidx, align 4, !dbg !539
  br label %cond.end, !dbg !540

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !540
  ret i32 %cond, !dbg !541
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !542 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !544, metadata !DIExpression()), !dbg !545
  %__c.off = add i32 %__c, 128, !dbg !546
  %0 = icmp ult i32 %__c.off, 384, !dbg !546
  br i1 %0, label %cond.true, label %cond.end, !dbg !546

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !547
  %1 = load i32*, i32** %call, align 8, !dbg !548
  %idxprom = sext i32 %__c to i64, !dbg !549
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !549
  %2 = load i32, i32* %arrayidx, align 4, !dbg !549
  br label %cond.end, !dbg !550

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !550
  ret i32 %cond, !dbg !551
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !552 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !557, metadata !DIExpression()), !dbg !558
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !559
  %conv = trunc i64 %call to i32, !dbg !560
  ret i32 %conv, !dbg !561
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !562 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !566, metadata !DIExpression()), !dbg !567
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !568
  ret i64 %call, !dbg !569
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !570 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !575, metadata !DIExpression()), !dbg !576
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !577
  ret i64 %call, !dbg !578
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !579 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !585, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i8* %__base, metadata !586, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !587, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %__size, metadata !588, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !589, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !591, metadata !DIExpression()), !dbg !595
  br label %while.cond, !dbg !596

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !597
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !595
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !591, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !590, metadata !DIExpression()), !dbg !595
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !598
  br i1 %cmp, label %while.body, label %cleanup, !dbg !596

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !599
  %div = lshr i64 %add, 1, !dbg !601
  call void @llvm.dbg.value(metadata i64 %div, metadata !592, metadata !DIExpression()), !dbg !595
  %mul = mul i64 %div, %__size, !dbg !602
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !603
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !593, metadata !DIExpression()), !dbg !595
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !604
  call void @llvm.dbg.value(metadata i32 %call, metadata !594, metadata !DIExpression()), !dbg !595
  %cmp1 = icmp slt i32 %call, 0, !dbg !605
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !607

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !608
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !610

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !611
  call void @llvm.dbg.value(metadata i64 %add4, metadata !590, metadata !DIExpression()), !dbg !595
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !595
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !595
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !591, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !590, metadata !DIExpression()), !dbg !595
  br label %while.cond, !dbg !596, !llvm.loop !612

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !595
  ret i8* %retval.0, !dbg !614
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !615 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !621, metadata !DIExpression()), !dbg !622
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !623
  ret double %call, !dbg !624
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !625 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !634, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !635, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 %base, metadata !636, metadata !DIExpression()), !dbg !637
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !638
  ret i64 %call, !dbg !639
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !640 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !646, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !647, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i32 %base, metadata !648, metadata !DIExpression()), !dbg !649
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !650
  ret i64 %call, !dbg !651
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !652 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !663, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !664, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i32 %base, metadata !665, metadata !DIExpression()), !dbg !666
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !667
  ret i64 %call, !dbg !668
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !669 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !673, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !674, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %base, metadata !675, metadata !DIExpression()), !dbg !676
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !677
  ret i64 %call, !dbg !678
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !679 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !721, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !722, metadata !DIExpression()), !dbg !723
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !724
  ret i32 %call, !dbg !725
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !726 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !728, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !729, metadata !DIExpression()), !dbg !730
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !731
  ret i32 %call, !dbg !732
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !733 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !737, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !738, metadata !DIExpression()), !dbg !739
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !740
  ret i32 %call, !dbg !741
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !742 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !746, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !747, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !748, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !749, metadata !DIExpression()), !dbg !750
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !751
  ret i32 %call, !dbg !752
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !753 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !757, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !758, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !759, metadata !DIExpression()), !dbg !760
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !759, metadata !DIExpression(DW_OP_deref)), !dbg !760
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !761
  ret i32 %call, !dbg !762
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !763 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !767, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %__path, metadata !768, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !769, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !770, metadata !DIExpression()), !dbg !771
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !770, metadata !DIExpression(DW_OP_deref)), !dbg !771
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !772
  ret i32 %call, !dbg !773
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !774 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !798, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !799, metadata !DIExpression()), !dbg !800
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !801
  ret i32 %call, !dbg !802
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !803 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !805, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !806, metadata !DIExpression()), !dbg !807
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !808
  ret i32 %call, !dbg !809
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !810 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !814, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !815, metadata !DIExpression()), !dbg !816
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !817
  ret i32 %call, !dbg !818
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !819 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !823, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !824, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !825, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !826, metadata !DIExpression()), !dbg !827
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !828
  ret i32 %call, !dbg !829
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @add_new_plugin(i8* %plugin_name) local_unnamed_addr #4 !dbg !830 {
entry:
  call void @llvm.dbg.value(metadata i8* %plugin_name, metadata !834, metadata !DIExpression()), !dbg !838
  %call = tail call fastcc i8* @get_plugin_base_name(i8* %plugin_name) #7, !dbg !839
  call void @llvm.dbg.value(metadata i8* %call, metadata !837, metadata !DIExpression()), !dbg !838
  %0 = load %struct.htab*, %struct.htab** @plugin_name_args_tab, align 8, !dbg !840
  %tobool = icmp eq %struct.htab* %0, null, !dbg !840
  br i1 %tobool, label %if.then, label %if.end, !dbg !842

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.htab* @htab_create(i64 10, i32 (i8*)* nonnull @htab_hash_string, i32 (i8*, i8*)* nonnull @htab_str_eq, void (i8*)* null) #6, !dbg !843
  store %struct.htab* %call1, %struct.htab** @plugin_name_args_tab, align 8, !dbg !844
  br label %if.end, !dbg !845

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.htab* [ %0, %entry ], [ %call1, %if.then ], !dbg !846
  %call2 = tail call i8** @htab_find_slot(%struct.htab* %1, i8* %call, i32 1) #6, !dbg !847
  call void @llvm.dbg.value(metadata i8** %call2, metadata !836, metadata !DIExpression()), !dbg !838
  %2 = load i8*, i8** %call2, align 8, !dbg !848
  %tobool3 = icmp eq i8* %2, null, !dbg !848
  br i1 %tobool3, label %if.end11, label %if.then4, !dbg !850

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* %2, metadata !835, metadata !DIExpression()), !dbg !838
  %full_name = getelementptr inbounds i8, i8* %2, i64 8, !dbg !851
  %3 = bitcast i8* %full_name to i8**, !dbg !851
  %4 = load i8*, i8** %3, align 8, !dbg !851
  %call5 = tail call i32 @strcmp(i8* %4, i8* %plugin_name) #6, !dbg !854
  %tobool6 = icmp eq i32 %call5, 0, !dbg !854
  br i1 %tobool6, label %cleanup.cont, label %if.then7, !dbg !855

if.then7:                                         ; preds = %if.then4
  %base_name8 = bitcast i8* %2 to i8**, !dbg !856
  %5 = load i8*, i8** %base_name8, align 8, !dbg !856
  %6 = load i8*, i8** %3, align 8, !dbg !857
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %5, i8* %6, i8* %plugin_name) #6, !dbg !858
  br label %cleanup.cont, !dbg !858

if.end11:                                         ; preds = %if.end
  %call12 = tail call i8* @xcalloc(i64 1, i64 48) #6, !dbg !859
  call void @llvm.dbg.value(metadata i8* %call12, metadata !835, metadata !DIExpression()), !dbg !838
  %base_name13 = bitcast i8* %call12 to i8**, !dbg !860
  store i8* %call, i8** %base_name13, align 8, !dbg !861
  %full_name14 = getelementptr inbounds i8, i8* %call12, i64 8, !dbg !862
  %7 = bitcast i8* %full_name14 to i8**, !dbg !862
  store i8* %plugin_name, i8** %7, align 8, !dbg !863
  store i8* %call12, i8** %call2, align 8, !dbg !864
  br label %cleanup.cont, !dbg !865

cleanup.cont:                                     ; preds = %if.then4, %if.end11, %if.then7
  ret void, !dbg !865
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @get_plugin_base_name(i8* %full_name) unnamed_addr #4 !dbg !866 {
entry:
  call void @llvm.dbg.value(metadata i8* %full_name, metadata !870, metadata !DIExpression()), !dbg !872
  %call = tail call i8* @lbasename(i8* %full_name) #6, !dbg !873
  %call1 = tail call i8* @xstrdup(i8* %call) #6, !dbg !874
  call void @llvm.dbg.value(metadata i8* %call1, metadata !871, metadata !DIExpression()), !dbg !872
  %call2 = tail call i64 @strlen(i8* %call1) #6, !dbg !875
  %conv = trunc i64 %call2 to i32, !dbg !875
  tail call void @strip_off_ending(i8* %call1, i32 %conv) #6, !dbg !876
  ret i8* %call1, !dbg !877
}

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

declare dso_local i32 @htab_hash_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @htab_str_eq(i8* %s1, i8* %s2) #4 !dbg !878 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !880, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8* %s2, metadata !881, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8* %s1, metadata !882, metadata !DIExpression()), !dbg !883
  %base_name = bitcast i8* %s1 to i8**, !dbg !884
  %0 = load i8*, i8** %base_name, align 8, !dbg !884
  %call = tail call i32 @strcmp(i8* %0, i8* %s2) #6, !dbg !885
  %tobool = icmp eq i32 %call, 0, !dbg !886
  %lnot.ext = zext i1 %tobool to i32, !dbg !886
  ret i32 %lnot.ext, !dbg !887
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @parse_plugin_arg_opt(i8* %arg) local_unnamed_addr #4 !dbg !888 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !890, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !891, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !892, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !893, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !894, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %arg, metadata !896, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* null, metadata !897, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* null, metadata !898, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8 0, metadata !903, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8 0, metadata !904, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %arg, metadata !895, metadata !DIExpression()), !dbg !911
  br label %for.cond, !dbg !912

for.cond:                                         ; preds = %for.inc, %entry
  %name_parsed.0 = phi i8 [ 0, %entry ], [ %name_parsed.1, %for.inc ], !dbg !914
  %value_start.0 = phi i8* [ null, %entry ], [ %value_start.1, %for.inc ], !dbg !911
  %key_start.0 = phi i8* [ null, %entry ], [ %key_start.1, %for.inc ], !dbg !915
  %key_parsed.0 = phi i8 [ 0, %entry ], [ %key_parsed.1, %for.inc ], !dbg !911
  %ptr.0 = phi i8* [ %arg, %entry ], [ %incdec.ptr, %for.inc ], !dbg !916
  %key_len.0 = phi i64 [ 0, %entry ], [ %key_len.1, %for.inc ], !dbg !911
  %name_len.0 = phi i64 [ 0, %entry ], [ %name_len.1, %for.inc ], !dbg !917
  %len.0 = phi i64 [ 0, %entry ], [ %len.1, %for.inc ], !dbg !911
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !891, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %name_len.0, metadata !892, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %key_len.0, metadata !893, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %ptr.0, metadata !895, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8 %key_parsed.0, metadata !904, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %key_start.0, metadata !897, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %value_start.0, metadata !898, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8 %name_parsed.0, metadata !903, metadata !DIExpression()), !dbg !911
  %0 = load i8, i8* %ptr.0, align 1, !dbg !918
  %tobool = icmp eq i8 %0, 0, !dbg !920
  br i1 %tobool, label %for.end, label %for.body, !dbg !920

for.body:                                         ; preds = %for.cond
  %cmp = icmp ne i8 %0, 45, !dbg !921
  %tobool2 = icmp ne i8 %name_parsed.0, 0, !dbg !924
  %or.cond = or i1 %cmp, %tobool2, !dbg !925
  br i1 %or.cond, label %if.else, label %if.then, !dbg !925

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !892, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !891, metadata !DIExpression()), !dbg !911
  %add.ptr = getelementptr inbounds i8, i8* %ptr.0, i64 1, !dbg !926
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !897, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8 1, metadata !903, metadata !DIExpression()), !dbg !911
  br label %for.inc, !dbg !928

if.else:                                          ; preds = %for.body
  %cmp4 = icmp eq i8 %0, 61, !dbg !929
  br i1 %cmp4, label %if.then6, label %if.else10, !dbg !931

if.then6:                                         ; preds = %if.else
  %tobool7 = icmp eq i8 %key_parsed.0, 0, !dbg !932
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !935

if.then8:                                         ; preds = %if.then6
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %arg) #6, !dbg !936
  br label %cleanup.cont, !dbg !938

if.end:                                           ; preds = %if.then6
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !893, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !891, metadata !DIExpression()), !dbg !911
  %add.ptr9 = getelementptr inbounds i8, i8* %ptr.0, i64 1, !dbg !939
  call void @llvm.dbg.value(metadata i8* %add.ptr9, metadata !898, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8 1, metadata !904, metadata !DIExpression()), !dbg !911
  br label %for.inc, !dbg !940

if.else10:                                        ; preds = %if.else
  %inc = add i64 %len.0, 1, !dbg !941
  call void @llvm.dbg.value(metadata i64 %inc, metadata !891, metadata !DIExpression()), !dbg !911
  br label %for.inc, !dbg !942

for.inc:                                          ; preds = %if.else10, %if.end, %if.then
  %name_parsed.1 = phi i8 [ %name_parsed.0, %if.end ], [ %name_parsed.0, %if.else10 ], [ 1, %if.then ], !dbg !911
  %value_start.1 = phi i8* [ %add.ptr9, %if.end ], [ %value_start.0, %if.else10 ], [ %value_start.0, %if.then ], !dbg !911
  %key_start.1 = phi i8* [ %key_start.0, %if.end ], [ %key_start.0, %if.else10 ], [ %add.ptr, %if.then ], !dbg !911
  %key_parsed.1 = phi i8 [ 1, %if.end ], [ %key_parsed.0, %if.else10 ], [ %key_parsed.0, %if.then ], !dbg !911
  %key_len.1 = phi i64 [ %len.0, %if.end ], [ %key_len.0, %if.else10 ], [ %key_len.0, %if.then ], !dbg !911
  %name_len.1 = phi i64 [ %name_len.0, %if.end ], [ %name_len.0, %if.else10 ], [ %len.0, %if.then ], !dbg !911
  %len.1 = phi i64 [ 0, %if.end ], [ %inc, %if.else10 ], [ 0, %if.then ], !dbg !943
  call void @llvm.dbg.value(metadata i64 %len.1, metadata !891, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %name_len.1, metadata !892, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %key_len.1, metadata !893, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8 %key_parsed.1, metadata !904, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %key_start.1, metadata !897, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %value_start.1, metadata !898, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8 %name_parsed.1, metadata !903, metadata !DIExpression()), !dbg !911
  %incdec.ptr = getelementptr inbounds i8, i8* %ptr.0, i64 1, !dbg !944
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !895, metadata !DIExpression()), !dbg !911
  br label %for.cond, !dbg !945, !llvm.loop !946

for.end:                                          ; preds = %for.cond
  %value_start.0.lcssa = phi i8* [ %value_start.0, %for.cond ], !dbg !911
  %key_start.0.lcssa = phi i8* [ %key_start.0, %for.cond ], !dbg !915
  %key_len.0.lcssa = phi i64 [ %key_len.0, %for.cond ], !dbg !911
  %name_len.0.lcssa = phi i64 [ %name_len.0, %for.cond ], !dbg !917
  %len.0.lcssa = phi i64 [ %len.0, %for.cond ], !dbg !911
  call void @llvm.dbg.value(metadata i8* %value_start.0.lcssa, metadata !898, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %key_start.0.lcssa, metadata !897, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %key_len.0.lcssa, metadata !893, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %name_len.0.lcssa, metadata !892, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %len.0.lcssa, metadata !891, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %value_start.0.lcssa, metadata !898, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %key_start.0.lcssa, metadata !897, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %key_len.0.lcssa, metadata !893, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %name_len.0.lcssa, metadata !892, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %len.0.lcssa, metadata !891, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %value_start.0.lcssa, metadata !898, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %key_start.0.lcssa, metadata !897, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %key_len.0.lcssa, metadata !893, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %name_len.0.lcssa, metadata !892, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %len.0.lcssa, metadata !891, metadata !DIExpression()), !dbg !911
  %tobool13 = icmp eq i8* %key_start.0.lcssa, null, !dbg !948
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !950

if.then14:                                        ; preds = %for.end
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %arg) #6, !dbg !951
  br label %cleanup.cont, !dbg !953

if.end15:                                         ; preds = %for.end
  %tobool16 = icmp ne i8* %value_start.0.lcssa, null, !dbg !954
  %len.0. = select i1 %tobool16, i64 %len.0.lcssa, i64 0
  %key_len.0.len.0 = select i1 %tobool16, i64 %key_len.0.lcssa, i64 %len.0.lcssa
  call void @llvm.dbg.value(metadata i64 %key_len.0.len.0, metadata !893, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %len.0., metadata !894, metadata !DIExpression()), !dbg !911
  %add = add i64 %name_len.0.lcssa, 1, !dbg !956
  %call = tail call i8* @xmalloc(i64 %add) #6, !dbg !956
  call void @llvm.dbg.value(metadata i8* %call, metadata !899, metadata !DIExpression()), !dbg !911
  %call20 = tail call i8* @strncpy(i8* %call, i8* %arg, i64 %name_len.0.lcssa) #6, !dbg !957
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %name_len.0.lcssa, !dbg !958
  store i8 0, i8* %arrayidx, align 1, !dbg !959
  %1 = load %struct.htab*, %struct.htab** @plugin_name_args_tab, align 8, !dbg !960
  %tobool21 = icmp eq %struct.htab* %1, null, !dbg !960
  br i1 %tobool21, label %if.else75, label %land.lhs.true22, !dbg !961

land.lhs.true22:                                  ; preds = %if.end15
  %call23 = tail call i8** @htab_find_slot(%struct.htab* nonnull %1, i8* %call, i32 0) #6, !dbg !962
  call void @llvm.dbg.value(metadata i8** %call23, metadata !902, metadata !DIExpression()), !dbg !911
  %cmp24 = icmp eq i8** %call23, null, !dbg !963
  br i1 %cmp24, label %if.else75, label %if.then26, !dbg !964

if.then26:                                        ; preds = %land.lhs.true22
  %2 = bitcast i8** %call23 to %struct.plugin_name_args**, !dbg !965
  %3 = load %struct.plugin_name_args*, %struct.plugin_name_args** %2, align 8, !dbg !965
  call void @llvm.dbg.value(metadata %struct.plugin_name_args* %3, metadata !905, metadata !DIExpression()), !dbg !966
  %add27 = add i64 %key_len.0.len.0, 1, !dbg !967
  %call29 = tail call i8* @xmalloc(i64 %add27) #6, !dbg !967
  call void @llvm.dbg.value(metadata i8* %call29, metadata !900, metadata !DIExpression()), !dbg !911
  %call30 = tail call i8* @strncpy(i8* %call29, i8* nonnull %key_start.0.lcssa, i64 %key_len.0.len.0) #6, !dbg !968
  %arrayidx31 = getelementptr inbounds i8, i8* %call29, i64 %key_len.0.len.0, !dbg !969
  store i8 0, i8* %arrayidx31, align 1, !dbg !970
  %tobool32 = icmp eq i8* %value_start.0.lcssa, null, !dbg !971
  br i1 %tobool32, label %if.end40, label %if.then33, !dbg !973

if.then33:                                        ; preds = %if.then26
  %add34 = add i64 %len.0., 1, !dbg !974
  %call36 = tail call i8* @xmalloc(i64 %add34) #6, !dbg !974
  call void @llvm.dbg.value(metadata i8* %call36, metadata !901, metadata !DIExpression()), !dbg !911
  %call37 = tail call i8* @strncpy(i8* %call36, i8* nonnull %value_start.0.lcssa, i64 %len.0.) #6, !dbg !976
  %arrayidx38 = getelementptr inbounds i8, i8* %call36, i64 %len.0., !dbg !977
  store i8 0, i8* %arrayidx38, align 1, !dbg !978
  br label %if.end40, !dbg !979

if.end40:                                         ; preds = %if.then26, %if.then33
  %value.0 = phi i8* [ %call36, %if.then33 ], [ null, %if.then26 ], !dbg !980
  call void @llvm.dbg.value(metadata i8* %value.0, metadata !901, metadata !DIExpression()), !dbg !911
  %argc = getelementptr inbounds %struct.plugin_name_args, %struct.plugin_name_args* %3, i64 0, i32 2, !dbg !981
  %4 = load i32, i32* %argc, align 8, !dbg !981
  %cmp41 = icmp sgt i32 %4, 0, !dbg !982
  br i1 %cmp41, label %if.then43, label %if.else57, !dbg !983

if.then43:                                        ; preds = %if.end40
  %add45 = add nsw i32 %4, 1, !dbg !984
  %conv46 = sext i32 %add45 to i64, !dbg !984
  %mul47 = shl nsw i64 %conv46, 4, !dbg !984
  %call48 = tail call i8* @xmalloc(i64 %mul47) #6, !dbg !984
  call void @llvm.dbg.value(metadata i8* %call48, metadata !908, metadata !DIExpression()), !dbg !985
  %argv = getelementptr inbounds %struct.plugin_name_args, %struct.plugin_name_args* %3, i64 0, i32 3, !dbg !986
  %5 = bitcast %struct.plugin_argument** %argv to i8**, !dbg !986
  %6 = load i8*, i8** %5, align 8, !dbg !986
  %7 = load i32, i32* %argc, align 8, !dbg !987
  %conv50 = sext i32 %7 to i64, !dbg !988
  %mul51 = shl nsw i64 %conv50, 4, !dbg !989
  %call52 = tail call i8* @memcpy(i8* %call48, i8* %6, i64 %mul51) #6, !dbg !990
  %8 = load i8*, i8** %5, align 8, !dbg !991
  tail call void @free(i8* %8) #6, !dbg !991
  store i8* %call48, i8** %5, align 8, !dbg !992
  %9 = load i32, i32* %argc, align 8, !dbg !993
  %inc56 = add nsw i32 %9, 1, !dbg !993
  %phitmp = sext i32 %9 to i64, !dbg !994
  br label %if.end64, !dbg !994

if.else57:                                        ; preds = %if.end40
  %argv58 = getelementptr inbounds %struct.plugin_name_args, %struct.plugin_name_args* %3, i64 0, i32 3, !dbg !995
  %10 = load %struct.plugin_argument*, %struct.plugin_argument** %argv58, align 8, !dbg !995
  %cmp59 = icmp eq %struct.plugin_argument* %10, null, !dbg !995
  br i1 %cmp59, label %cond.end, label %cond.true, !dbg !995

cond.true:                                        ; preds = %if.else57
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !995
  br label %cond.end, !dbg !995

cond.end:                                         ; preds = %if.else57, %cond.true
  %call61 = tail call i8* @xmalloc(i64 16) #6, !dbg !997
  %11 = bitcast %struct.plugin_argument** %argv58 to i8**, !dbg !998
  store i8* %call61, i8** %11, align 8, !dbg !998
  br label %if.end64

if.end64:                                         ; preds = %cond.end, %if.then43
  %storemerge = phi i32 [ 1, %cond.end ], [ %inc56, %if.then43 ], !dbg !999
  %12 = phi i64 [ 0, %cond.end ], [ %phitmp, %if.then43 ]
  %.in = phi i8* [ %call61, %cond.end ], [ %call48, %if.then43 ]
  %13 = bitcast i8* %.in to %struct.plugin_argument*, !dbg !1000
  store i32 %storemerge, i32* %argc, align 8, !dbg !999
  %argv65 = getelementptr inbounds %struct.plugin_name_args, %struct.plugin_name_args* %3, i64 0, i32 3, !dbg !1000
  %key68 = getelementptr inbounds %struct.plugin_argument, %struct.plugin_argument* %13, i64 %12, i32 0, !dbg !1001
  store i8* %call29, i8** %key68, align 8, !dbg !1002
  %14 = load %struct.plugin_argument*, %struct.plugin_argument** %argv65, align 8, !dbg !1003
  %15 = load i32, i32* %argc, align 8, !dbg !1004
  %sub71 = add nsw i32 %15, -1, !dbg !1005
  %idxprom72 = sext i32 %sub71 to i64, !dbg !1006
  %value74 = getelementptr inbounds %struct.plugin_argument, %struct.plugin_argument* %14, i64 %idxprom72, i32 1, !dbg !1007
  store i8* %value.0, i8** %value74, align 8, !dbg !1008
  br label %if.end76, !dbg !1009

if.else75:                                        ; preds = %land.lhs.true22, %if.end15
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i8* %call, i8* %arg) #6, !dbg !1010
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.end64
  tail call void @free(i8* %call) #6, !dbg !1011
  br label %cleanup.cont, !dbg !1012

cleanup.cont:                                     ; preds = %if.then8, %if.then14, %if.end76
  ret void, !dbg !1012
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @get_named_event_id(i8* %name, i32 %insert) local_unnamed_addr #4 !dbg !1013 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !1017, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %insert, metadata !1018, metadata !DIExpression()), !dbg !1023
  %0 = load %struct.htab*, %struct.htab** @event_tab, align 8, !dbg !1024
  %tobool = icmp eq %struct.htab* %0, null, !dbg !1024
  br i1 %tobool, label %if.then, label %if.end, !dbg !1025

if.then:                                          ; preds = %entry
  %call = tail call %struct.htab* @htab_create(i64 150, i32 (i8*)* nonnull @htab_hash_string, i32 (i8*, i8*)* nonnull @htab_event_eq, void (i8*)* null) #6, !dbg !1026
  store %struct.htab* %call, %struct.htab** @event_tab, align 8, !dbg !1027
  call void @llvm.dbg.value(metadata i32 0, metadata !1020, metadata !DIExpression()), !dbg !1028
  br label %for.cond, !dbg !1029

for.cond:                                         ; preds = %cond.end, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end ], [ 0, %if.then ], !dbg !1031
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1020, metadata !DIExpression()), !dbg !1028
  %1 = load i32, i32* @event_last, align 4, !dbg !1032
  %2 = sext i32 %1 to i64, !dbg !1034
  %cmp = icmp slt i64 %indvars.iv, %2, !dbg !1034
  br i1 %cmp, label %for.body, label %if.end.loopexit, !dbg !1035

for.body:                                         ; preds = %for.cond
  %3 = load %struct.htab*, %struct.htab** @event_tab, align 8, !dbg !1036
  %4 = load i8**, i8*** @plugin_event_name, align 8, !dbg !1038
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %indvars.iv, !dbg !1038
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !1038
  %call1 = tail call i8** @htab_find_slot(%struct.htab* %3, i8* %5, i32 1) #6, !dbg !1039
  call void @llvm.dbg.value(metadata i8** %call1, metadata !1019, metadata !DIExpression()), !dbg !1023
  %6 = load i8*, i8** %call1, align 8, !dbg !1040
  %cmp2 = icmp eq i8* %6, null, !dbg !1040
  br i1 %cmp2, label %cond.end, label %cond.true, !dbg !1040

cond.true:                                        ; preds = %for.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 322, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1040
  br label %cond.end, !dbg !1040

cond.end:                                         ; preds = %for.body, %cond.true
  %7 = load i8**, i8*** @plugin_event_name, align 8, !dbg !1041
  %arrayidx4 = getelementptr inbounds i8*, i8** %7, i64 %indvars.iv, !dbg !1041
  %8 = bitcast i8** %call1 to i8***, !dbg !1042
  store i8** %arrayidx4, i8*** %8, align 8, !dbg !1042
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !1020, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1028
  br label %for.cond, !dbg !1044, !llvm.loop !1045

if.end.loopexit:                                  ; preds = %for.cond
  %.pre = load %struct.htab*, %struct.htab** @event_tab, align 8, !dbg !1047
  br label %if.end, !dbg !1047

if.end:                                           ; preds = %if.end.loopexit, %entry
  %9 = phi %struct.htab* [ %.pre, %if.end.loopexit ], [ %0, %entry ], !dbg !1047
  %call5 = tail call i8** @htab_find_slot(%struct.htab* %9, i8* %name, i32 %insert) #6, !dbg !1048
  call void @llvm.dbg.value(metadata i8** %call5, metadata !1019, metadata !DIExpression()), !dbg !1023
  %cmp6 = icmp eq i8** %call5, null, !dbg !1049
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !1051

if.end8:                                          ; preds = %if.end
  %10 = load i8*, i8** %call5, align 8, !dbg !1052
  %cmp9 = icmp eq i8* %10, null, !dbg !1054
  br i1 %cmp9, label %if.end12, label %if.then10, !dbg !1055

if.then10:                                        ; preds = %if.end8
  %11 = ptrtoint i8* %10 to i64, !dbg !1055
  %12 = load i64, i64* bitcast (i8*** @plugin_event_name to i64*), align 8, !dbg !1056
  %sub.ptr.sub = sub i64 %11, %12, !dbg !1057
  %13 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1057
  %conv = trunc i64 %13 to i32, !dbg !1058
  br label %cleanup, !dbg !1059

if.end12:                                         ; preds = %if.end8
  %14 = load i32, i32* @event_last, align 4, !dbg !1060
  %15 = load i32, i32* @event_horizon, align 4, !dbg !1062
  %cmp13 = icmp slt i32 %14, %15, !dbg !1063
  br i1 %cmp13, label %if.else34, label %if.then15, !dbg !1064

if.then15:                                        ; preds = %if.end12
  %mul = shl nsw i32 %14, 1, !dbg !1065
  store i32 %mul, i32* @event_horizon, align 4, !dbg !1067
  %16 = load i8**, i8*** @plugin_event_name, align 8, !dbg !1068
  %cmp16 = icmp eq i8** %16, getelementptr inbounds ([23 x i8*], [23 x i8*]* @plugin_event_name_init, i64 0, i64 0), !dbg !1070
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !1071

if.then18:                                        ; preds = %if.then15
  %conv19 = sext i32 %mul to i64, !dbg !1072
  %mul20 = shl nsw i64 %conv19, 3, !dbg !1072
  %call21 = tail call i8* @xmalloc(i64 %mul20) #6, !dbg !1072
  store i8* %call21, i8** bitcast (i8*** @plugin_event_name to i8**), align 8, !dbg !1074
  %call22 = tail call i8* @memcpy(i8* %call21, i8* bitcast ([23 x i8*]* @plugin_event_name_init to i8*), i64 184) #6, !dbg !1075
  %17 = load i32, i32* @event_horizon, align 4, !dbg !1076
  %conv23 = sext i32 %17 to i64, !dbg !1076
  %mul24 = shl nsw i64 %conv23, 3, !dbg !1076
  %call25 = tail call i8* @xmalloc(i64 %mul24) #6, !dbg !1076
  store i8* %call25, i8** bitcast (%struct.callback_info*** @plugin_callbacks to i8**), align 8, !dbg !1077
  %call26 = tail call i8* @memcpy(i8* %call25, i8* bitcast ([23 x %struct.callback_info*]* @plugin_callbacks_init to i8*), i64 184) #6, !dbg !1078
  br label %if.end33, !dbg !1079

if.else:                                          ; preds = %if.then15
  %18 = bitcast i8** %16 to i8*, !dbg !1071
  %conv27 = sext i32 %mul to i64, !dbg !1080
  %mul28 = shl nsw i64 %conv27, 3, !dbg !1080
  %call29 = tail call i8* @xrealloc(i8* %18, i64 %mul28) #6, !dbg !1080
  store i8* %call29, i8** bitcast (i8*** @plugin_event_name to i8**), align 8, !dbg !1082
  %19 = load i8*, i8** bitcast (%struct.callback_info*** @plugin_callbacks to i8**), align 8, !dbg !1083
  %20 = load i32, i32* @event_horizon, align 4, !dbg !1083
  %conv30 = sext i32 %20 to i64, !dbg !1083
  %mul31 = shl nsw i64 %conv30, 3, !dbg !1083
  %call32 = tail call i8* @xrealloc(i8* %19, i64 %mul31) #6, !dbg !1083
  store i8* %call32, i8** bitcast (%struct.callback_info*** @plugin_callbacks to i8**), align 8, !dbg !1084
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then18
  %21 = load %struct.htab*, %struct.htab** @event_tab, align 8, !dbg !1085
  tail call void @htab_delete(%struct.htab* %21) #6, !dbg !1086
  store %struct.htab* null, %struct.htab** @event_tab, align 8, !dbg !1087
  %.pre1 = load i32, i32* @event_last, align 4, !dbg !1088
  %.pre2 = sext i32 %.pre1 to i64, !dbg !1089
  br label %if.end37, !dbg !1090

if.else34:                                        ; preds = %if.end12
  %22 = load i8**, i8*** @plugin_event_name, align 8, !dbg !1091
  %idxprom35 = sext i32 %14 to i64, !dbg !1091
  %arrayidx36 = getelementptr inbounds i8*, i8** %22, i64 %idxprom35, !dbg !1091
  %23 = bitcast i8** %call5 to i8***, !dbg !1092
  store i8** %arrayidx36, i8*** %23, align 8, !dbg !1092
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.end33
  %idxprom38.pre-phi = phi i64 [ %idxprom35, %if.else34 ], [ %.pre2, %if.end33 ], !dbg !1089
  %24 = phi i32 [ %14, %if.else34 ], [ %.pre1, %if.end33 ], !dbg !1088
  %25 = load i8**, i8*** @plugin_event_name, align 8, !dbg !1089
  %arrayidx39 = getelementptr inbounds i8*, i8** %25, i64 %idxprom38.pre-phi, !dbg !1089
  store i8* %name, i8** %arrayidx39, align 8, !dbg !1093
  %inc40 = add nsw i32 %24, 1, !dbg !1094
  store i32 %inc40, i32* @event_last, align 4, !dbg !1094
  br label %cleanup, !dbg !1095

cleanup:                                          ; preds = %if.end, %if.end37, %if.then10
  %retval.0 = phi i32 [ %conv, %if.then10 ], [ %24, %if.end37 ], [ -1, %if.end ], !dbg !1023
  ret i32 %retval.0, !dbg !1096
}

; Function Attrs: nounwind uwtable
define internal i32 @htab_event_eq(i8* %e1, i8* %s2) #4 !dbg !1097 {
entry:
  call void @llvm.dbg.value(metadata i8* %e1, metadata !1099, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %s2, metadata !1100, metadata !DIExpression()), !dbg !1102
  %0 = bitcast i8* %e1 to i8**, !dbg !1103
  %1 = load i8*, i8** %0, align 8, !dbg !1104
  call void @llvm.dbg.value(metadata i8* %1, metadata !1101, metadata !DIExpression()), !dbg !1102
  %call = tail call i32 @strcmp(i8* %1, i8* %s2) #6, !dbg !1105
  %tobool = icmp eq i32 %call, 0, !dbg !1106
  %lnot.ext = zext i1 %tobool to i32, !dbg !1106
  ret i32 %lnot.ext, !dbg !1107
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @register_callback(i8* %plugin_name, i32 %event, void (i8*, i8*)* %callback, i8* %user_data) local_unnamed_addr #4 !dbg !1108 {
entry:
  call void @llvm.dbg.value(metadata i8* %plugin_name, metadata !1112, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %event, metadata !1113, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %callback, metadata !1114, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8* %user_data, metadata !1115, metadata !DIExpression()), !dbg !1119
  switch i32 %event, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb1
    i32 9, label %sw.bb7
    i32 10, label %sw.bb13
    i32 22, label %sw.bb21
    i32 1, label %sw.bb21
    i32 12, label %sw.bb21
    i32 2, label %sw.bb21
    i32 3, label %sw.bb21
    i32 6, label %sw.bb21
    i32 7, label %sw.bb21
    i32 8, label %sw.bb21
    i32 11, label %sw.bb21
    i32 13, label %sw.bb21
    i32 4, label %sw.bb21
    i32 14, label %sw.bb21
    i32 15, label %sw.bb21
    i32 16, label %sw.bb21
    i32 17, label %sw.bb21
    i32 18, label %sw.bb21
    i32 19, label %sw.bb21
    i32 20, label %sw.bb21
    i32 21, label %sw.bb21
  ], !dbg !1120

sw.bb:                                            ; preds = %entry
  %tobool = icmp eq void (i8*, i8*)* %callback, null, !dbg !1121
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1121

cond.true:                                        ; preds = %sw.bb
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 378, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1121
  br label %cond.end, !dbg !1121

cond.end:                                         ; preds = %sw.bb, %cond.true
  %0 = bitcast i8* %user_data to %struct.register_pass_info*, !dbg !1122
  tail call void @register_pass(%struct.register_pass_info* %0) #6, !dbg !1123
  br label %sw.epilog, !dbg !1124

sw.bb1:                                           ; preds = %entry
  %tobool2 = icmp eq void (i8*, i8*)* %callback, null, !dbg !1125
  br i1 %tobool2, label %cond.end5, label %cond.true3, !dbg !1125

cond.true3:                                       ; preds = %sw.bb1
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 382, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1125
  br label %cond.end5, !dbg !1125

cond.end5:                                        ; preds = %sw.bb1, %cond.true3
  %1 = bitcast i8* %user_data to %struct.plugin_info*, !dbg !1126
  tail call fastcc void @register_plugin_info(i8* %plugin_name, %struct.plugin_info* %1) #7, !dbg !1127
  br label %sw.epilog, !dbg !1128

sw.bb7:                                           ; preds = %entry
  %tobool8 = icmp eq void (i8*, i8*)* %callback, null, !dbg !1129
  br i1 %tobool8, label %cond.end11, label %cond.true9, !dbg !1129

cond.true9:                                       ; preds = %sw.bb7
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1129
  br label %cond.end11, !dbg !1129

cond.end11:                                       ; preds = %sw.bb7, %cond.true9
  %2 = bitcast i8* %user_data to %struct.ggc_root_tab*, !dbg !1130
  tail call void @ggc_register_root_tab(%struct.ggc_root_tab* %2) #6, !dbg !1131
  br label %sw.epilog, !dbg !1132

sw.bb13:                                          ; preds = %entry
  %tobool14 = icmp eq void (i8*, i8*)* %callback, null, !dbg !1133
  br i1 %tobool14, label %cond.end17, label %cond.true15, !dbg !1133

cond.true15:                                      ; preds = %sw.bb13
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 390, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1133
  br label %cond.end17, !dbg !1133

cond.end17:                                       ; preds = %sw.bb13, %cond.true15
  %3 = bitcast i8* %user_data to %struct.ggc_cache_tab*, !dbg !1134
  tail call void @ggc_register_cache_tab(%struct.ggc_cache_tab* %3) #6, !dbg !1135
  br label %sw.epilog, !dbg !1136

sw.default:                                       ; preds = %entry
  %cmp = icmp slt i32 %event, 23, !dbg !1137
  %4 = load i32, i32* @event_last, align 4, !dbg !1139
  %cmp20 = icmp sle i32 %4, %event, !dbg !1140
  %or.cond = or i1 %cmp, %cmp20, !dbg !1141
  br i1 %or.cond, label %if.then, label %sw.bb21, !dbg !1141

if.then:                                          ; preds = %sw.default
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %plugin_name) #6, !dbg !1142
  br label %sw.epilog, !dbg !1144

sw.bb21:                                          ; preds = %entry, %sw.default, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %tobool22 = icmp eq void (i8*, i8*)* %callback, null, !dbg !1145
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !1147

if.then23:                                        ; preds = %sw.bb21
  %5 = load i8**, i8*** @plugin_event_name, align 8, !dbg !1148
  %idxprom = sext i32 %event to i64, !dbg !1148
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom, !dbg !1148
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !1148
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8* %plugin_name, i8* %6) #6, !dbg !1150
  br label %cleanup, !dbg !1151

if.end24:                                         ; preds = %sw.bb21
  %call = tail call i8* @xmalloc(i64 32) #6, !dbg !1152
  call void @llvm.dbg.value(metadata i8* %call, metadata !1116, metadata !DIExpression()), !dbg !1153
  %plugin_name25 = bitcast i8* %call to i8**, !dbg !1154
  store i8* %plugin_name, i8** %plugin_name25, align 8, !dbg !1155
  %func = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1156
  %7 = bitcast i8* %func to void (i8*, i8*)**, !dbg !1156
  store void (i8*, i8*)* %callback, void (i8*, i8*)** %7, align 8, !dbg !1157
  %user_data26 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !1158
  %8 = bitcast i8* %user_data26 to i8**, !dbg !1158
  store i8* %user_data, i8** %8, align 8, !dbg !1159
  %9 = load %struct.callback_info**, %struct.callback_info*** @plugin_callbacks, align 8, !dbg !1160
  %idxprom27 = sext i32 %event to i64, !dbg !1160
  %arrayidx28 = getelementptr inbounds %struct.callback_info*, %struct.callback_info** %9, i64 %idxprom27, !dbg !1160
  %10 = bitcast %struct.callback_info** %arrayidx28 to i64*, !dbg !1160
  %11 = load i64, i64* %10, align 8, !dbg !1160
  %next = getelementptr inbounds i8, i8* %call, i64 24, !dbg !1161
  %12 = bitcast i8* %next to i64*, !dbg !1162
  store i64 %11, i64* %12, align 8, !dbg !1162
  %13 = bitcast %struct.callback_info** %arrayidx28 to i8**, !dbg !1163
  store i8* %call, i8** %13, align 8, !dbg !1163
  br label %cleanup, !dbg !1164

cleanup:                                          ; preds = %if.end24, %if.then23
  ret void

sw.epilog:                                        ; preds = %if.then, %cond.end17, %cond.end11, %cond.end5, %cond.end
  ret void, !dbg !1165
}

declare dso_local void @register_pass(%struct.register_pass_info*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @register_plugin_info(i8* %name, %struct.plugin_info* %info) unnamed_addr #4 !dbg !1166 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !1170, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata %struct.plugin_info* %info, metadata !1171, metadata !DIExpression()), !dbg !1174
  %0 = load %struct.htab*, %struct.htab** @plugin_name_args_tab, align 8, !dbg !1175
  %call = tail call i8** @htab_find_slot(%struct.htab* %0, i8* %name, i32 0) #6, !dbg !1176
  call void @llvm.dbg.value(metadata i8** %call, metadata !1172, metadata !DIExpression()), !dbg !1174
  %1 = bitcast i8** %call to %struct.plugin_name_args**, !dbg !1177
  %2 = load %struct.plugin_name_args*, %struct.plugin_name_args** %1, align 8, !dbg !1177
  call void @llvm.dbg.value(metadata %struct.plugin_name_args* %2, metadata !1173, metadata !DIExpression()), !dbg !1174
  %3 = bitcast %struct.plugin_info* %info to i64*, !dbg !1178
  %4 = load i64, i64* %3, align 8, !dbg !1178
  %version1 = getelementptr inbounds %struct.plugin_name_args, %struct.plugin_name_args* %2, i64 0, i32 4, !dbg !1179
  %5 = bitcast i8** %version1 to i64*, !dbg !1180
  store i64 %4, i64* %5, align 8, !dbg !1180
  %help = getelementptr inbounds %struct.plugin_info, %struct.plugin_info* %info, i64 0, i32 1, !dbg !1181
  %6 = bitcast i8** %help to i64*, !dbg !1181
  %7 = load i64, i64* %6, align 8, !dbg !1181
  %help2 = getelementptr inbounds %struct.plugin_name_args, %struct.plugin_name_args* %2, i64 0, i32 5, !dbg !1182
  %8 = bitcast i8** %help2 to i64*, !dbg !1183
  store i64 %7, i64* %8, align 8, !dbg !1183
  ret void, !dbg !1184
}

declare dso_local void @ggc_register_root_tab(%struct.ggc_root_tab*) local_unnamed_addr #1

declare dso_local void @ggc_register_cache_tab(%struct.ggc_cache_tab*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @unregister_callback(i8* %plugin_name, i32 %event) local_unnamed_addr #4 !dbg !1185 {
entry:
  call void @llvm.dbg.value(metadata i8* %plugin_name, metadata !1189, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 %event, metadata !1190, metadata !DIExpression()), !dbg !1193
  %0 = load i32, i32* @event_last, align 4, !dbg !1194
  %cmp = icmp sgt i32 %0, %event, !dbg !1196
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1197

if.end:                                           ; preds = %entry
  %1 = load %struct.callback_info**, %struct.callback_info*** @plugin_callbacks, align 8, !dbg !1198
  %idxprom = sext i32 %event to i64, !dbg !1198
  %arrayidx = getelementptr inbounds %struct.callback_info*, %struct.callback_info** %1, i64 %idxprom, !dbg !1198
  call void @llvm.dbg.value(metadata %struct.callback_info** %arrayidx, metadata !1192, metadata !DIExpression()), !dbg !1193
  br label %for.cond, !dbg !1200

for.cond:                                         ; preds = %for.body, %if.end
  %cbp.0 = phi %struct.callback_info** [ %arrayidx, %if.end ], [ %next, %for.body ], !dbg !1201
  call void @llvm.dbg.value(metadata %struct.callback_info** %cbp.0, metadata !1192, metadata !DIExpression()), !dbg !1193
  %2 = load %struct.callback_info*, %struct.callback_info** %cbp.0, align 8, !dbg !1202
  call void @llvm.dbg.value(metadata %struct.callback_info* %2, metadata !1191, metadata !DIExpression()), !dbg !1193
  %tobool = icmp eq %struct.callback_info* %2, null, !dbg !1204
  br i1 %tobool, label %cleanup.loopexit, label %for.body, !dbg !1204

for.body:                                         ; preds = %for.cond
  %plugin_name1 = getelementptr inbounds %struct.callback_info, %struct.callback_info* %2, i64 0, i32 0, !dbg !1205
  %3 = load i8*, i8** %plugin_name1, align 8, !dbg !1205
  %call = tail call i32 @strcmp(i8* %3, i8* %plugin_name) #6, !dbg !1207
  %cmp2 = icmp eq i32 %call, 0, !dbg !1208
  %next = getelementptr inbounds %struct.callback_info, %struct.callback_info* %2, i64 0, i32 3, !dbg !1209
  br i1 %cmp2, label %if.then3, label %for.cond, !dbg !1210, !llvm.loop !1211

if.then3:                                         ; preds = %for.body
  %next.lcssa = phi %struct.callback_info** [ %next, %for.body ], !dbg !1209
  %cbp.0.lcssa3 = phi %struct.callback_info** [ %cbp.0, %for.body ], !dbg !1201
  call void @llvm.dbg.value(metadata %struct.callback_info** %cbp.0.lcssa3, metadata !1192, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata %struct.callback_info** %cbp.0.lcssa3, metadata !1192, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata %struct.callback_info** %cbp.0.lcssa3, metadata !1192, metadata !DIExpression()), !dbg !1193
  %4 = bitcast %struct.callback_info** %next.lcssa to i64*, !dbg !1213
  %5 = load i64, i64* %4, align 8, !dbg !1213
  %6 = bitcast %struct.callback_info** %cbp.0.lcssa3 to i64*, !dbg !1215
  store i64 %5, i64* %6, align 8, !dbg !1215
  br label %cleanup, !dbg !1216

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !1217

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 2, %entry ], [ 3, %cleanup.loopexit ], !dbg !1193
  ret i32 %retval.0, !dbg !1217
}

; Function Attrs: nounwind uwtable
define dso_local i32 @invoke_plugin_callbacks(i32 %event, i8* %gcc_data) local_unnamed_addr #4 !dbg !1218 {
entry:
  call void @llvm.dbg.value(metadata i32 %event, metadata !1222, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i8* %gcc_data, metadata !1223, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i32 0, metadata !1224, metadata !DIExpression()), !dbg !1228
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !1229
  %tobool = icmp eq i8 %0, 0, !dbg !1229
  br i1 %tobool, label %do.end, label %if.then, !dbg !1232

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 170) #6, !dbg !1229
  br label %do.end, !dbg !1229

do.end:                                           ; preds = %entry, %if.then
  switch i32 %event, label %sw.default [
    i32 10, label %sw.bb12
    i32 1, label %sw.bb7
    i32 12, label %sw.bb7
    i32 2, label %sw.bb7
    i32 3, label %sw.bb7
    i32 11, label %sw.bb7
    i32 13, label %sw.bb7
    i32 4, label %sw.bb7
    i32 6, label %sw.bb7
    i32 7, label %sw.bb7
    i32 8, label %sw.bb7
    i32 14, label %sw.bb7
    i32 15, label %sw.bb7
    i32 16, label %sw.bb7
    i32 17, label %sw.bb7
    i32 18, label %sw.bb7
    i32 19, label %sw.bb7
    i32 20, label %sw.bb7
    i32 21, label %sw.bb7
    i32 22, label %sw.bb7
    i32 0, label %sw.bb12
    i32 9, label %sw.bb12
  ], !dbg !1233

sw.default:                                       ; preds = %do.end
  %cmp = icmp sgt i32 %event, 22, !dbg !1234
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1234

cond.true:                                        ; preds = %sw.default
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 480, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1234
  br label %cond.end, !dbg !1234

cond.end:                                         ; preds = %sw.default, %cond.true
  %1 = load i32, i32* @event_last, align 4, !dbg !1235
  %cmp2 = icmp sgt i32 %1, %event, !dbg !1235
  br i1 %cmp2, label %sw.bb7, label %cond.true3, !dbg !1235

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 481, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1235
  br label %sw.bb7, !dbg !1235

sw.bb7:                                           ; preds = %cond.true3, %cond.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end
  %2 = load %struct.callback_info**, %struct.callback_info*** @plugin_callbacks, align 8, !dbg !1236
  %idxprom = sext i32 %event to i64, !dbg !1236
  %arrayidx = getelementptr inbounds %struct.callback_info*, %struct.callback_info** %2, i64 %idxprom, !dbg !1236
  %3 = load %struct.callback_info*, %struct.callback_info** %arrayidx, align 8, !dbg !1236
  call void @llvm.dbg.value(metadata %struct.callback_info* %3, metadata !1225, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1224, metadata !DIExpression()), !dbg !1228
  br label %for.cond, !dbg !1238

for.cond:                                         ; preds = %for.body, %sw.bb7
  %callback.0 = phi %struct.callback_info* [ %3, %sw.bb7 ], [ %6, %for.body ], !dbg !1237
  call void @llvm.dbg.value(metadata %struct.callback_info* %callback.0, metadata !1225, metadata !DIExpression()), !dbg !1237
  %tobool11 = icmp eq %struct.callback_info* %callback.0, null, !dbg !1239
  br i1 %tobool11, label %do.body13.loopexit, label %for.body, !dbg !1239

for.body:                                         ; preds = %for.cond
  %func = getelementptr inbounds %struct.callback_info, %struct.callback_info* %callback.0, i64 0, i32 1, !dbg !1241
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %func, align 8, !dbg !1241
  %user_data = getelementptr inbounds %struct.callback_info, %struct.callback_info* %callback.0, i64 0, i32 2, !dbg !1243
  %5 = load i8*, i8** %user_data, align 8, !dbg !1243
  tail call void %4(i8* %gcc_data, i8* %5) #6, !dbg !1244
  %next = getelementptr inbounds %struct.callback_info, %struct.callback_info* %callback.0, i64 0, i32 3, !dbg !1245
  %6 = load %struct.callback_info*, %struct.callback_info** %next, align 8, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.callback_info* %6, metadata !1225, metadata !DIExpression()), !dbg !1237
  br label %for.cond, !dbg !1246, !llvm.loop !1247

sw.bb12:                                          ; preds = %do.end, %do.end, %do.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 517, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1249
  br label %do.body13, !dbg !1250

do.body13.loopexit:                               ; preds = %for.cond
  %tobool8 = icmp eq %struct.callback_info* %3, null, !dbg !1251
  %spec.select = select i1 %tobool8, i32 3, i32 0, !dbg !1253
  br label %do.body13, !dbg !1254

do.body13:                                        ; preds = %do.body13.loopexit, %sw.bb12
  %retval1.1 = phi i32 [ 0, %sw.bb12 ], [ %spec.select, %do.body13.loopexit ], !dbg !1257
  call void @llvm.dbg.value(metadata i32 %retval1.1, metadata !1224, metadata !DIExpression()), !dbg !1228
  %7 = load i8, i8* @timevar_enable, align 1, !dbg !1254
  %tobool14 = icmp eq i8 %7, 0, !dbg !1254
  br i1 %tobool14, label %do.end18, label %if.then15, !dbg !1258

if.then15:                                        ; preds = %do.body13
  tail call void @timevar_pop_1(i32 170) #6, !dbg !1254
  br label %do.end18, !dbg !1254

do.end18:                                         ; preds = %do.body13, %if.then15
  ret i32 %retval1.1, !dbg !1259
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #1

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @initialize_plugins() local_unnamed_addr #4 !dbg !1260 {
entry:
  %0 = load %struct.htab*, %struct.htab** @plugin_name_args_tab, align 8, !dbg !1263
  %tobool = icmp eq %struct.htab* %0, null, !dbg !1263
  br i1 %tobool, label %do.end8, label %do.body, !dbg !1265

do.body:                                          ; preds = %entry
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !1266
  %tobool1 = icmp eq i8 %1, 0, !dbg !1266
  br i1 %tobool1, label %do.body4, label %if.then2, !dbg !1269

if.then2:                                         ; preds = %do.body
  tail call void @timevar_push_1(i32 169) #6, !dbg !1266
  %.pre = load i8, i8* @timevar_enable, align 1, !dbg !1270
  %phitmp = icmp eq i8 %.pre, 0, !dbg !1266
  br label %do.body4, !dbg !1266

do.body4:                                         ; preds = %do.body, %if.then2
  %2 = phi i1 [ true, %do.body ], [ %phitmp, %if.then2 ]
  br i1 %2, label %do.end8, label %if.then6, !dbg !1273

if.then6:                                         ; preds = %do.body4
  tail call void @timevar_pop_1(i32 169) #6, !dbg !1270
  br label %do.end8, !dbg !1270

do.end8:                                          ; preds = %do.body4, %entry, %if.then6
  ret void, !dbg !1274
}

; Function Attrs: nounwind uwtable
define dso_local void @finalize_plugins() local_unnamed_addr #4 !dbg !1275 {
entry:
  %0 = load %struct.htab*, %struct.htab** @plugin_name_args_tab, align 8, !dbg !1276
  %tobool = icmp eq %struct.htab* %0, null, !dbg !1276
  br i1 %tobool, label %return, label %if.end, !dbg !1278

if.end:                                           ; preds = %entry
  tail call void @htab_traverse_noresize(%struct.htab* nonnull %0, i32 (i8**, i8*)* nonnull @finalize_one_plugin, i8* null) #6, !dbg !1279
  %1 = load %struct.htab*, %struct.htab** @plugin_name_args_tab, align 8, !dbg !1280
  tail call void @htab_delete(%struct.htab* %1) #6, !dbg !1281
  store %struct.htab* null, %struct.htab** @plugin_name_args_tab, align 8, !dbg !1282
  br label %return, !dbg !1283

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !1283
}

declare dso_local void @htab_traverse_noresize(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @finalize_one_plugin(i8** %slot, i8* %info) #4 !dbg !1284 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1288, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8* %info, metadata !1289, metadata !DIExpression()), !dbg !1291
  %0 = load i8*, i8** %slot, align 8, !dbg !1292
  tail call void @free(i8* %0) #6, !dbg !1293
  ret i32 1, !dbg !1294
}

; Function Attrs: nounwind uwtable
define dso_local void @print_plugins_versions(%struct._IO_FILE* %file, i8* %indent) local_unnamed_addr #4 !dbg !1295 {
entry:
  %opt = alloca %struct.print_options, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !1299, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %indent, metadata !1300, metadata !DIExpression()), !dbg !1302
  %0 = bitcast %struct.print_options* %opt to i8*, !dbg !1303
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1303
  %file1 = getelementptr inbounds %struct.print_options, %struct.print_options* %opt, i64 0, i32 0, !dbg !1304
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file1, align 8, !dbg !1305
  %indent2 = getelementptr inbounds %struct.print_options, %struct.print_options* %opt, i64 0, i32 1, !dbg !1306
  store i8* %indent, i8** %indent2, align 8, !dbg !1307
  %1 = load %struct.htab*, %struct.htab** @plugin_name_args_tab, align 8, !dbg !1308
  %tobool = icmp eq %struct.htab* %1, null, !dbg !1308
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !1310

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i64 @htab_elements(%struct.htab* nonnull %1) #6, !dbg !1311
  %cmp = icmp eq i64 %call, 0, !dbg !1312
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1313

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %indent) #6, !dbg !1314
  %2 = load %struct.htab*, %struct.htab** @plugin_name_args_tab, align 8, !dbg !1315
  call void @htab_traverse_noresize(%struct.htab* %2, i32 (i8**, i8*)* nonnull @print_version_one_plugin, i8* nonnull %0) #6, !dbg !1316
  br label %cleanup, !dbg !1317

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1317
  ret void, !dbg !1317
}

declare dso_local i64 @htab_elements(%struct.htab*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @print_version_one_plugin(i8** %slot, i8* %data) #4 !dbg !1318 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1320, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %data, metadata !1321, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %data, metadata !1322, metadata !DIExpression()), !dbg !1325
  %0 = bitcast i8** %slot to %struct.plugin_name_args**, !dbg !1326
  %1 = load %struct.plugin_name_args*, %struct.plugin_name_args** %0, align 8, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.plugin_name_args* %1, metadata !1323, metadata !DIExpression()), !dbg !1325
  %version1 = getelementptr inbounds %struct.plugin_name_args, %struct.plugin_name_args* %1, i64 0, i32 4, !dbg !1327
  %2 = load i8*, i8** %version1, align 8, !dbg !1327
  %tobool = icmp eq i8* %2, null, !dbg !1328
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1328

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1328

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), %entry ], !dbg !1328
  call void @llvm.dbg.value(metadata i8* %cond, metadata !1324, metadata !DIExpression()), !dbg !1325
  %file = bitcast i8* %data to %struct._IO_FILE**, !dbg !1329
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !dbg !1329
  %indent = getelementptr inbounds i8, i8* %data, i64 8, !dbg !1330
  %4 = bitcast i8* %indent to i8**, !dbg !1330
  %5 = load i8*, i8** %4, align 8, !dbg !1330
  %base_name = getelementptr inbounds %struct.plugin_name_args, %struct.plugin_name_args* %1, i64 0, i32 0, !dbg !1331
  %6 = load i8*, i8** %base_name, align 8, !dbg !1331
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i8* %5, i8* %6, i8* %cond) #6, !dbg !1332
  ret i32 1, !dbg !1333
}

; Function Attrs: nounwind uwtable
define dso_local void @print_plugins_help(%struct._IO_FILE* %file, i8* %indent) local_unnamed_addr #4 !dbg !1334 {
entry:
  %opt = alloca %struct.print_options, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !1336, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i8* %indent, metadata !1337, metadata !DIExpression()), !dbg !1339
  %0 = bitcast %struct.print_options* %opt to i8*, !dbg !1340
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1340
  %file1 = getelementptr inbounds %struct.print_options, %struct.print_options* %opt, i64 0, i32 0, !dbg !1341
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file1, align 8, !dbg !1342
  %indent2 = getelementptr inbounds %struct.print_options, %struct.print_options* %opt, i64 0, i32 1, !dbg !1343
  store i8* %indent, i8** %indent2, align 8, !dbg !1344
  %1 = load %struct.htab*, %struct.htab** @plugin_name_args_tab, align 8, !dbg !1345
  %tobool = icmp eq %struct.htab* %1, null, !dbg !1345
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !1347

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i64 @htab_elements(%struct.htab* nonnull %1) #6, !dbg !1348
  %cmp = icmp eq i64 %call, 0, !dbg !1349
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1350

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %indent) #6, !dbg !1351
  %2 = load %struct.htab*, %struct.htab** @plugin_name_args_tab, align 8, !dbg !1352
  call void @htab_traverse_noresize(%struct.htab* %2, i32 (i8**, i8*)* nonnull @print_help_one_plugin, i8* nonnull %0) #6, !dbg !1353
  br label %cleanup, !dbg !1354

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1354
  ret void, !dbg !1354
}

; Function Attrs: nounwind uwtable
define internal i32 @print_help_one_plugin(i8** %slot, i8* %data) #4 !dbg !1355 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1357, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %data, metadata !1358, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %data, metadata !1359, metadata !DIExpression()), !dbg !1365
  %0 = bitcast i8** %slot to %struct.plugin_name_args**, !dbg !1366
  %1 = load %struct.plugin_name_args*, %struct.plugin_name_args** %0, align 8, !dbg !1366
  call void @llvm.dbg.value(metadata %struct.plugin_name_args* %1, metadata !1360, metadata !DIExpression()), !dbg !1365
  %help1 = getelementptr inbounds %struct.plugin_name_args, %struct.plugin_name_args* %1, i64 0, i32 5, !dbg !1367
  %2 = load i8*, i8** %help1, align 8, !dbg !1367
  %tobool = icmp eq i8* %2, null, !dbg !1368
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1368

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1368

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), %entry ], !dbg !1368
  call void @llvm.dbg.value(metadata i8* %cond, metadata !1361, metadata !DIExpression()), !dbg !1365
  %call = tail call i8* @xstrdup(i8* %cond) #6, !dbg !1369
  call void @llvm.dbg.value(metadata i8* %call, metadata !1362, metadata !DIExpression()), !dbg !1365
  %file = bitcast i8* %data to %struct._IO_FILE**, !dbg !1370
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !dbg !1370
  %indent = getelementptr inbounds i8, i8* %data, i64 8, !dbg !1371
  %4 = bitcast i8* %indent to i8**, !dbg !1371
  %5 = load i8*, i8** %4, align 8, !dbg !1371
  %base_name = getelementptr inbounds %struct.plugin_name_args, %struct.plugin_name_args* %1, i64 0, i32 0, !dbg !1372
  %6 = load i8*, i8** %base_name, align 8, !dbg !1372
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i8* %5, i8* %6) #6, !dbg !1373
  call void @llvm.dbg.value(metadata i8* %call, metadata !1364, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %call, metadata !1363, metadata !DIExpression()), !dbg !1365
  br label %for.cond, !dbg !1374

for.cond:                                         ; preds = %if.end, %cond.end
  %p.0 = phi i8* [ %call, %cond.end ], [ %nl.1, %if.end ], !dbg !1376
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !1364, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !1363, metadata !DIExpression()), !dbg !1365
  %tobool4 = icmp eq i8* %p.0, null, !dbg !1377
  br i1 %tobool4, label %for.end, label %for.body, !dbg !1377

for.body:                                         ; preds = %for.cond
  %call5 = tail call i8* @strchr(i8* nonnull %p.0, i32 10) #6, !dbg !1378
  call void @llvm.dbg.value(metadata i8* %call5, metadata !1364, metadata !DIExpression()), !dbg !1365
  %tobool6 = icmp eq i8* %call5, null, !dbg !1381
  br i1 %tobool6, label %if.end, label %if.then, !dbg !1383

if.then:                                          ; preds = %for.body
  store i8 0, i8* %call5, align 1, !dbg !1384
  %incdec.ptr = getelementptr inbounds i8, i8* %call5, i64 1, !dbg !1386
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1364, metadata !DIExpression()), !dbg !1365
  br label %if.end, !dbg !1387

if.end:                                           ; preds = %for.body, %if.then
  %nl.1 = phi i8* [ %incdec.ptr, %if.then ], [ null, %for.body ], !dbg !1388
  call void @llvm.dbg.value(metadata i8* %nl.1, metadata !1364, metadata !DIExpression()), !dbg !1365
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !dbg !1389
  %8 = load i8*, i8** %4, align 8, !dbg !1390
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* %8, i8* nonnull %p.0) #6, !dbg !1391
  call void @llvm.dbg.value(metadata i8* %nl.1, metadata !1363, metadata !DIExpression()), !dbg !1365
  br label %for.cond, !dbg !1392, !llvm.loop !1393

for.end:                                          ; preds = %for.cond
  tail call void @free(i8* %call) #6, !dbg !1395
  ret i32 1, !dbg !1396
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @plugins_active_p() local_unnamed_addr #4 !dbg !1397 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1400
  %0 = load i32, i32* @event_last, align 4, !dbg !1401
  %1 = load %struct.callback_info**, %struct.callback_info*** @plugin_callbacks, align 8, !dbg !1404
  %2 = sext i32 %0 to i64, !dbg !1406
  br label %for.cond, !dbg !1406

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !1407
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1399, metadata !DIExpression()), !dbg !1400
  %cmp = icmp slt i64 %indvars.iv, %2, !dbg !1408
  br i1 %cmp, label %for.body, label %cleanup, !dbg !1409

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.callback_info*, %struct.callback_info** %1, i64 %indvars.iv, !dbg !1410
  %3 = load %struct.callback_info*, %struct.callback_info** %arrayidx, align 8, !dbg !1410
  %tobool = icmp eq %struct.callback_info* %3, null, !dbg !1410
  br i1 %tobool, label %for.inc, label %cleanup, !dbg !1411

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i32 undef, metadata !1399, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1400
  br label %for.cond, !dbg !1413, !llvm.loop !1414

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !1400
  ret i8 %retval.0, !dbg !1416
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_active_plugins(%struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !1417 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !1421, metadata !DIExpression()), !dbg !1428
  %call = tail call zeroext i8 @plugins_active_p() #7, !dbg !1429
  %tobool = icmp eq i8 %call, 0, !dbg !1429
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !1431

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !1432
  call void @llvm.dbg.value(metadata i32 0, metadata !1422, metadata !DIExpression()), !dbg !1428
  br label %for.cond, !dbg !1433

for.cond:                                         ; preds = %for.inc15, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc15 ], [ 0, %if.end ], !dbg !1434
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1422, metadata !DIExpression()), !dbg !1428
  %0 = load i32, i32* @event_last, align 4, !dbg !1435
  %1 = sext i32 %0 to i64, !dbg !1436
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !1436
  br i1 %cmp, label %for.body, label %cleanup.cont.loopexit, !dbg !1437

for.body:                                         ; preds = %for.cond
  %2 = load %struct.callback_info**, %struct.callback_info*** @plugin_callbacks, align 8, !dbg !1438
  %arrayidx = getelementptr inbounds %struct.callback_info*, %struct.callback_info** %2, i64 %indvars.iv, !dbg !1438
  %3 = load %struct.callback_info*, %struct.callback_info** %arrayidx, align 8, !dbg !1438
  %tobool2 = icmp eq %struct.callback_info* %3, null, !dbg !1438
  br i1 %tobool2, label %for.inc15, label %if.then3, !dbg !1439

if.then3:                                         ; preds = %for.body
  %4 = load i8**, i8*** @plugin_event_name, align 8, !dbg !1440
  %arrayidx5 = getelementptr inbounds i8*, i8** %4, i64 %indvars.iv, !dbg !1440
  %5 = load i8*, i8** %arrayidx5, align 8, !dbg !1440
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %5) #6, !dbg !1441
  %6 = load %struct.callback_info**, %struct.callback_info*** @plugin_callbacks, align 8, !dbg !1442
  %arrayidx8 = getelementptr inbounds %struct.callback_info*, %struct.callback_info** %6, i64 %indvars.iv, !dbg !1442
  br label %for.cond9, !dbg !1444

for.cond9:                                        ; preds = %for.body11, %if.then3
  %ci.0.in = phi %struct.callback_info** [ %arrayidx8, %if.then3 ], [ %next, %for.body11 ]
  %ci.0 = load %struct.callback_info*, %struct.callback_info** %ci.0.in, align 8, !dbg !1445
  call void @llvm.dbg.value(metadata %struct.callback_info* %ci.0, metadata !1423, metadata !DIExpression()), !dbg !1446
  %tobool10 = icmp eq %struct.callback_info* %ci.0, null, !dbg !1447
  br i1 %tobool10, label %for.end, label %for.body11, !dbg !1447

for.body11:                                       ; preds = %for.cond9
  %plugin_name = getelementptr inbounds %struct.callback_info, %struct.callback_info* %ci.0, i64 0, i32 0, !dbg !1448
  %7 = load i8*, i8** %plugin_name, align 8, !dbg !1448
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %7) #6, !dbg !1450
  %next = getelementptr inbounds %struct.callback_info, %struct.callback_info* %ci.0, i64 0, i32 3, !dbg !1451
  br label %for.cond9, !dbg !1452, !llvm.loop !1453

for.end:                                          ; preds = %for.cond9
  %call13 = tail call i32 @putc(i32 10, %struct._IO_FILE* %file) #6, !dbg !1455
  br label %for.inc15, !dbg !1456

for.inc15:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1457
  call void @llvm.dbg.value(metadata i32 undef, metadata !1422, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1428
  br label %for.cond, !dbg !1458, !llvm.loop !1459

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !1461

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !1461
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_active_plugins() local_unnamed_addr #4 !dbg !1462 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1463
  tail call void @dump_active_plugins(%struct._IO_FILE* %0) #7, !dbg !1464
  ret void, !dbg !1465
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @plugin_default_version_check(%struct.plugin_gcc_version* %gcc_version, %struct.plugin_gcc_version* %plugin_version) local_unnamed_addr #4 !dbg !1466 {
entry:
  call void @llvm.dbg.value(metadata %struct.plugin_gcc_version* %gcc_version, metadata !1478, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata %struct.plugin_gcc_version* %plugin_version, metadata !1479, metadata !DIExpression()), !dbg !1480
  %tobool = icmp ne %struct.plugin_gcc_version* %gcc_version, null, !dbg !1481
  %tobool1 = icmp ne %struct.plugin_gcc_version* %plugin_version, null, !dbg !1483
  %or.cond = and i1 %tobool, %tobool1, !dbg !1484
  br i1 %or.cond, label %if.end, label %return, !dbg !1484

if.end:                                           ; preds = %entry
  %basever = getelementptr inbounds %struct.plugin_gcc_version, %struct.plugin_gcc_version* %gcc_version, i64 0, i32 0, !dbg !1485
  %0 = load i8*, i8** %basever, align 8, !dbg !1485
  %basever2 = getelementptr inbounds %struct.plugin_gcc_version, %struct.plugin_gcc_version* %plugin_version, i64 0, i32 0, !dbg !1487
  %1 = load i8*, i8** %basever2, align 8, !dbg !1487
  %call = tail call i32 @strcmp(i8* %0, i8* %1) #6, !dbg !1488
  %tobool3 = icmp eq i32 %call, 0, !dbg !1488
  br i1 %tobool3, label %if.end5, label %return, !dbg !1489

if.end5:                                          ; preds = %if.end
  %datestamp = getelementptr inbounds %struct.plugin_gcc_version, %struct.plugin_gcc_version* %gcc_version, i64 0, i32 1, !dbg !1490
  %2 = load i8*, i8** %datestamp, align 8, !dbg !1490
  %datestamp6 = getelementptr inbounds %struct.plugin_gcc_version, %struct.plugin_gcc_version* %plugin_version, i64 0, i32 1, !dbg !1492
  %3 = load i8*, i8** %datestamp6, align 8, !dbg !1492
  %call7 = tail call i32 @strcmp(i8* %2, i8* %3) #6, !dbg !1493
  %tobool8 = icmp eq i32 %call7, 0, !dbg !1493
  br i1 %tobool8, label %if.end10, label %return, !dbg !1494

if.end10:                                         ; preds = %if.end5
  %devphase = getelementptr inbounds %struct.plugin_gcc_version, %struct.plugin_gcc_version* %gcc_version, i64 0, i32 2, !dbg !1495
  %4 = load i8*, i8** %devphase, align 8, !dbg !1495
  %devphase11 = getelementptr inbounds %struct.plugin_gcc_version, %struct.plugin_gcc_version* %plugin_version, i64 0, i32 2, !dbg !1497
  %5 = load i8*, i8** %devphase11, align 8, !dbg !1497
  %call12 = tail call i32 @strcmp(i8* %4, i8* %5) #6, !dbg !1498
  %tobool13 = icmp eq i32 %call12, 0, !dbg !1498
  br i1 %tobool13, label %if.end15, label %return, !dbg !1499

if.end15:                                         ; preds = %if.end10
  %revision = getelementptr inbounds %struct.plugin_gcc_version, %struct.plugin_gcc_version* %gcc_version, i64 0, i32 3, !dbg !1500
  %6 = load i8*, i8** %revision, align 8, !dbg !1500
  %revision16 = getelementptr inbounds %struct.plugin_gcc_version, %struct.plugin_gcc_version* %plugin_version, i64 0, i32 3, !dbg !1502
  %7 = load i8*, i8** %revision16, align 8, !dbg !1502
  %call17 = tail call i32 @strcmp(i8* %6, i8* %7) #6, !dbg !1503
  %tobool18 = icmp eq i32 %call17, 0, !dbg !1503
  br i1 %tobool18, label %if.end20, label %return, !dbg !1504

if.end20:                                         ; preds = %if.end15
  %configuration_arguments = getelementptr inbounds %struct.plugin_gcc_version, %struct.plugin_gcc_version* %gcc_version, i64 0, i32 4, !dbg !1505
  %8 = load i8*, i8** %configuration_arguments, align 8, !dbg !1505
  %configuration_arguments21 = getelementptr inbounds %struct.plugin_gcc_version, %struct.plugin_gcc_version* %plugin_version, i64 0, i32 4, !dbg !1507
  %9 = load i8*, i8** %configuration_arguments21, align 8, !dbg !1507
  %call22 = tail call i32 @strcmp(i8* %8, i8* %9) #6, !dbg !1508
  %tobool23 = icmp eq i32 %call22, 0, !dbg !1508
  %. = zext i1 %tobool23 to i8, !dbg !1480
  br label %return, !dbg !1480

return:                                           ; preds = %if.end15, %if.end10, %if.end5, %if.end, %if.end20, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end5 ], [ 0, %if.end10 ], [ 0, %if.end15 ], [ %., %if.end20 ], !dbg !1480
  ret i8 %retval.0, !dbg !1509
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_event_last() local_unnamed_addr #4 !dbg !1510 {
entry:
  %0 = load i32, i32* @event_last, align 4, !dbg !1511
  ret i32 %0, !dbg !1512
}

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #1

declare dso_local i8* @lbasename(i8*) local_unnamed_addr #1

declare dso_local void @strip_off_ending(i8*, i32) local_unnamed_addr #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

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
!llvm.module.flags = !{!429, !430, !431}
!llvm.ident = !{!432}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "plugin_event_name_init", scope: !2, file: !3, line: 51, type: !428, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !199, globals: !409, nameTableKind: None)
!3 = !DIFile(filename: "plugin.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !11, !18, !194}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insert_option", file: !6, line: 147, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "NO_INSERT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "INSERT", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !12, line: 104, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 74, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193}
!21 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!25 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!26 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!27 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!28 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!29 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!30 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!31 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!32 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!33 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!34 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!35 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!36 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!37 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!38 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!39 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!40 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!41 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!42 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!43 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!44 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!45 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!46 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!47 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!48 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!49 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!50 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!51 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!52 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!53 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!54 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!55 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!56 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!57 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!58 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!59 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!60 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!61 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!62 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!63 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!64 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!65 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!66 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!67 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!68 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!69 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!70 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!71 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!72 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!73 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!74 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!75 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!76 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!77 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!78 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!79 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!80 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!81 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!82 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!83 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!84 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!85 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!86 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!87 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!88 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!89 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!90 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!91 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!92 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!93 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!94 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!95 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!96 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!97 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!98 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!99 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!100 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!101 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!102 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!103 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!104 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!105 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!106 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!107 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!108 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!109 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!110 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!111 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!112 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!113 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!114 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!115 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!116 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!117 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!118 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!119 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!120 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!121 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!122 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!123 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!124 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!125 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!126 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!127 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!128 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!129 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!130 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!131 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!132 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!133 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!134 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!135 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!136 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!137 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!138 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!139 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!140 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!141 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!142 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!143 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!144 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!145 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!146 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!147 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!148 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!149 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!150 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!151 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!152 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!153 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!154 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!155 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!156 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!157 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!158 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!159 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!160 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!161 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!162 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!163 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!164 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!165 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!166 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!167 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!168 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!169 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!170 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!171 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!172 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!173 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!174 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!175 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!176 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!177 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!178 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!179 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!180 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!181 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!182 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!183 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!184 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!185 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!186 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!187 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!188 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!189 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!190 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!191 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!192 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!193 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pass_positioning_ops", file: !12, line: 319, baseType: !7, size: 32, elements: !195)
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "PASS_POS_INSERT_AFTER", value: 0, isUnsigned: true)
!197 = !DIEnumerator(name: "PASS_POS_INSERT_BEFORE", value: 1, isUnsigned: true)
!198 = !DIEnumerator(name: "PASS_POS_REPLACE", value: 2, isUnsigned: true)
!199 = !{!200, !201, !202, !203, !206, !207, !209, !204, !217, !224, !225, !237, !267, !272, !289, !226, !344, !346, !348}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!202 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plugin_name_args", file: !211, line: 69, size: 384, elements: !212)
!211 = !DIFile(filename: "./gcc-plugin.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!212 = !{!213, !214, !215, !216, !222, !223}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "base_name", scope: !210, file: !211, line: 71, baseType: !204, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !210, file: !211, line: 73, baseType: !207, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !210, file: !211, line: 75, baseType: !202, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !210, file: !211, line: 77, baseType: !217, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plugin_argument", file: !211, line: 43, size: 128, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !218, file: !211, line: 45, baseType: !204, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !211, line: 46, baseType: !204, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !210, file: !211, line: 78, baseType: !207, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "help", scope: !210, file: !211, line: 79, baseType: !207, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_info", file: !3, line: 77, size: 256, elements: !228)
!228 = !{!229, !230, !235, !236}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_name", scope: !227, file: !3, line: 79, baseType: !207, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !227, file: !3, line: 80, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "plugin_callback_func", file: !211, line: 115, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !206, !206}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !227, file: !3, line: 81, baseType: !206, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !227, file: !3, line: 82, baseType: !226, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "register_pass_info", file: !12, line: 326, size: 192, elements: !239)
!239 = !{!240, !264, !265, !266}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !238, file: !12, line: 328, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !12, line: 114, size: 640, elements: !243)
!243 = !{!244, !245, !246, !250, !254, !255, !256, !257, !259, !260, !261, !262, !263}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !12, line: 117, baseType: !11, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !12, line: 121, baseType: !207, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !242, file: !12, line: 125, baseType: !247, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!201}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !242, file: !12, line: 130, baseType: !251, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!7}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !242, file: !12, line: 133, baseType: !241, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !12, line: 136, baseType: !241, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !242, file: !12, line: 139, baseType: !202, size: 32, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !242, file: !12, line: 143, baseType: !258, size: 32, offset: 416)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !19, line: 80, baseType: !18)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !242, file: !12, line: 146, baseType: !7, size: 32, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !242, file: !12, line: 147, baseType: !7, size: 32, offset: 480)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !242, file: !12, line: 148, baseType: !7, size: 32, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !242, file: !12, line: 151, baseType: !7, size: 32, offset: 544)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !242, file: !12, line: 152, baseType: !7, size: 32, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "reference_pass_name", scope: !238, file: !12, line: 329, baseType: !207, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pass_instance_number", scope: !238, file: !12, line: 331, baseType: !202, size: 32, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pos_op", scope: !238, file: !12, line: 334, baseType: !194, size: 32, offset: 160)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plugin_info", file: !211, line: 51, size: 128, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !268, file: !211, line: 53, baseType: !207, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "help", scope: !268, file: !211, line: 54, baseType: !207, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !275, line: 69, size: 320, elements: !276)
!275 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!276 = !{!277, !278, !282, !283, !288}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !274, file: !275, line: 70, baseType: !206, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !274, file: !275, line: 71, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !280, line: 46, baseType: !281)
!280 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!281 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !274, file: !275, line: 72, baseType: !279, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !274, file: !275, line: 73, baseType: !284, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !275, line: 65, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !206}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !274, file: !275, line: 74, baseType: !284, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_cache_tab", file: !275, line: 85, size: 384, elements: !292)
!292 = !{!293, !336, !337, !338, !339, !340}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !291, file: !275, line: 86, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !6, line: 100, size: 896, elements: !297)
!297 = !{!298, !306, !311, !313, !315, !316, !317, !318, !319, !320, !325, !327, !328, !333, !335}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !296, file: !6, line: 102, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !6, line: 52, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !6, line: 47, baseType: !7)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !296, file: !6, line: 105, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !6, line: 59, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!202, !304, !304}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !296, file: !6, line: 108, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !6, line: 63, baseType: !285)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !296, file: !6, line: 111, baseType: !314, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !296, file: !6, line: 114, baseType: !279, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !296, file: !6, line: 117, baseType: !279, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !296, file: !6, line: 120, baseType: !279, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !296, file: !6, line: 124, baseType: !7, size: 32, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !296, file: !6, line: 128, baseType: !7, size: 32, offset: 480)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !296, file: !6, line: 131, baseType: !321, size: 64, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !6, line: 75, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!206, !279, !279}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !296, file: !6, line: 132, baseType: !326, size: 64, offset: 576)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !6, line: 78, baseType: !285)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !296, file: !6, line: 135, baseType: !206, size: 64, offset: 640)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !296, file: !6, line: 136, baseType: !329, size: 64, offset: 704)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !6, line: 82, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!206, !206, !279, !279}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !296, file: !6, line: 137, baseType: !334, size: 64, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !6, line: 83, baseType: !232)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !296, file: !6, line: 141, baseType: !7, size: 32, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !291, file: !275, line: 87, baseType: !279, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !291, file: !275, line: 88, baseType: !279, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !291, file: !275, line: 89, baseType: !284, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !291, file: !275, line: 90, baseType: !284, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "marked_p", scope: !291, file: !275, line: 91, baseType: !341, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!202, !304}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "print_options", file: !3, line: 659, size: 128, elements: !350)
!350 = !{!351, !408}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !349, file: !3, line: 661, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !354, line: 7, baseType: !355)
!354 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !356, line: 49, size: 1728, elements: !357)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !373, !375, !376, !377, !381, !383, !385, !389, !392, !394, !397, !400, !401, !402, !403, !404}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !355, file: !356, line: 51, baseType: !202, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !355, file: !356, line: 54, baseType: !204, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !355, file: !356, line: 55, baseType: !204, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !355, file: !356, line: 56, baseType: !204, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !355, file: !356, line: 57, baseType: !204, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !355, file: !356, line: 58, baseType: !204, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !355, file: !356, line: 59, baseType: !204, size: 64, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !355, file: !356, line: 60, baseType: !204, size: 64, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !355, file: !356, line: 61, baseType: !204, size: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !355, file: !356, line: 64, baseType: !204, size: 64, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !355, file: !356, line: 65, baseType: !204, size: 64, offset: 640)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !355, file: !356, line: 66, baseType: !204, size: 64, offset: 704)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !355, file: !356, line: 68, baseType: !371, size: 64, offset: 768)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !356, line: 36, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !355, file: !356, line: 70, baseType: !374, size: 64, offset: 832)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !355, file: !356, line: 72, baseType: !202, size: 32, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !355, file: !356, line: 73, baseType: !202, size: 32, offset: 928)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !355, file: !356, line: 74, baseType: !378, size: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !379, line: 152, baseType: !380)
!379 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!380 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !355, file: !356, line: 77, baseType: !382, size: 16, offset: 1024)
!382 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !355, file: !356, line: 78, baseType: !384, size: 8, offset: 1040)
!384 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !355, file: !356, line: 79, baseType: !386, size: 8, offset: 1048)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 8, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 1)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !355, file: !356, line: 81, baseType: !390, size: 64, offset: 1088)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !356, line: 43, baseType: null)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !355, file: !356, line: 89, baseType: !393, size: 64, offset: 1152)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !379, line: 153, baseType: !380)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !355, file: !356, line: 91, baseType: !395, size: 64, offset: 1216)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !356, line: 37, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !355, file: !356, line: 92, baseType: !398, size: 64, offset: 1280)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !356, line: 38, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !355, file: !356, line: 93, baseType: !374, size: 64, offset: 1344)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !355, file: !356, line: 94, baseType: !206, size: 64, offset: 1408)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !355, file: !356, line: 95, baseType: !279, size: 64, offset: 1472)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !355, file: !356, line: 96, baseType: !202, size: 32, offset: 1536)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !355, file: !356, line: 98, baseType: !405, size: 160, offset: 1568)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 160, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 20)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !349, file: !3, line: 662, baseType: !207, size: 64, offset: 64)
!409 = !{!410, !412, !415, !0, !420, !422, !424, !426}
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "plugin_event_name", scope: !2, file: !3, line: 61, type: !224, isLocal: false, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "event_tab", scope: !2, file: !3, line: 65, type: !414, isLocal: true, isDefinition: true)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !6, line: 144, baseType: !295)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "plugin_callbacks_init", scope: !2, file: !3, line: 86, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 1472, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 23)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "plugin_name_args_tab", scope: !2, file: !3, line: 74, type: !414, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "event_last", scope: !2, file: !3, line: 69, type: !202, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "event_horizon", scope: !2, file: !3, line: 70, type: !202, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "plugin_callbacks", scope: !2, file: !3, line: 87, type: !225, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 1472, elements: !418)
!429 = !{i32 2, !"Dwarf Version", i32 4}
!430 = !{i32 2, !"Debug Info Version", i32 3}
!431 = !{i32 1, !"wchar_size", i32 4}
!432 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!433 = distinct !DISubprogram(name: "vprintf", scope: !434, file: !434, line: 39, type: !435, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !445)
!434 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!435 = !DISubroutineType(types: !436)
!436 = !{!202, !437, !438}
!437 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !207)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !440)
!440 = !{!441, !442, !443, !444}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !439, file: !3, baseType: !7, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !439, file: !3, baseType: !7, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !439, file: !3, baseType: !206, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !439, file: !3, baseType: !206, size: 64, offset: 128)
!445 = !{!446, !447}
!446 = !DILocalVariable(name: "__fmt", arg: 1, scope: !433, file: !434, line: 39, type: !437)
!447 = !DILocalVariable(name: "__arg", arg: 2, scope: !433, file: !434, line: 39, type: !438)
!448 = !DILocation(line: 0, scope: !433)
!449 = !DILocation(line: 41, column: 20, scope: !433)
!450 = !DILocation(line: 41, column: 10, scope: !433)
!451 = !DILocation(line: 41, column: 3, scope: !433)
!452 = distinct !DISubprogram(name: "getchar", scope: !434, file: !434, line: 47, type: !453, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!202}
!455 = !{}
!456 = !DILocation(line: 49, column: 16, scope: !452)
!457 = !DILocation(line: 49, column: 10, scope: !452)
!458 = !DILocation(line: 49, column: 3, scope: !452)
!459 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !434, file: !434, line: 56, type: !460, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!202, !352}
!462 = !{!463}
!463 = !DILocalVariable(name: "__fp", arg: 1, scope: !459, file: !434, line: 56, type: !352)
!464 = !DILocation(line: 0, scope: !459)
!465 = !DILocation(line: 58, column: 10, scope: !459)
!466 = !DILocation(line: 58, column: 3, scope: !459)
!467 = distinct !DISubprogram(name: "getc_unlocked", scope: !434, file: !434, line: 66, type: !460, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!468 = !{!469}
!469 = !DILocalVariable(name: "__fp", arg: 1, scope: !467, file: !434, line: 66, type: !352)
!470 = !DILocation(line: 0, scope: !467)
!471 = !DILocation(line: 68, column: 10, scope: !467)
!472 = !DILocation(line: 68, column: 3, scope: !467)
!473 = distinct !DISubprogram(name: "getchar_unlocked", scope: !434, file: !434, line: 73, type: !453, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!474 = !DILocation(line: 75, column: 10, scope: !473)
!475 = !DILocation(line: 75, column: 3, scope: !473)
!476 = distinct !DISubprogram(name: "putchar", scope: !434, file: !434, line: 82, type: !477, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!202, !202}
!479 = !{!480}
!480 = !DILocalVariable(name: "__c", arg: 1, scope: !476, file: !434, line: 82, type: !202)
!481 = !DILocation(line: 0, scope: !476)
!482 = !DILocation(line: 84, column: 21, scope: !476)
!483 = !DILocation(line: 84, column: 10, scope: !476)
!484 = !DILocation(line: 84, column: 3, scope: !476)
!485 = distinct !DISubprogram(name: "fputc_unlocked", scope: !434, file: !434, line: 91, type: !486, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!202, !202, !352}
!488 = !{!489, !490}
!489 = !DILocalVariable(name: "__c", arg: 1, scope: !485, file: !434, line: 91, type: !202)
!490 = !DILocalVariable(name: "__stream", arg: 2, scope: !485, file: !434, line: 91, type: !352)
!491 = !DILocation(line: 0, scope: !485)
!492 = !DILocation(line: 93, column: 10, scope: !485)
!493 = !DILocation(line: 93, column: 3, scope: !485)
!494 = distinct !DISubprogram(name: "putc_unlocked", scope: !434, file: !434, line: 101, type: !486, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!495 = !{!496, !497}
!496 = !DILocalVariable(name: "__c", arg: 1, scope: !494, file: !434, line: 101, type: !202)
!497 = !DILocalVariable(name: "__stream", arg: 2, scope: !494, file: !434, line: 101, type: !352)
!498 = !DILocation(line: 0, scope: !494)
!499 = !DILocation(line: 103, column: 10, scope: !494)
!500 = !DILocation(line: 103, column: 3, scope: !494)
!501 = distinct !DISubprogram(name: "putchar_unlocked", scope: !434, file: !434, line: 108, type: !477, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !502)
!502 = !{!503}
!503 = !DILocalVariable(name: "__c", arg: 1, scope: !501, file: !434, line: 108, type: !202)
!504 = !DILocation(line: 0, scope: !501)
!505 = !DILocation(line: 110, column: 10, scope: !501)
!506 = !DILocation(line: 110, column: 3, scope: !501)
!507 = distinct !DISubprogram(name: "getline", scope: !434, file: !434, line: 118, type: !508, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!508 = !DISubroutineType(types: !509)
!509 = !{!510, !203, !511, !352}
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !379, line: 193, baseType: !380)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!512 = !{!513, !514, !515}
!513 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !507, file: !434, line: 118, type: !203)
!514 = !DILocalVariable(name: "__n", arg: 2, scope: !507, file: !434, line: 118, type: !511)
!515 = !DILocalVariable(name: "__stream", arg: 3, scope: !507, file: !434, line: 118, type: !352)
!516 = !DILocation(line: 0, scope: !507)
!517 = !DILocation(line: 120, column: 10, scope: !507)
!518 = !DILocation(line: 120, column: 3, scope: !507)
!519 = distinct !DISubprogram(name: "feof_unlocked", scope: !434, file: !434, line: 128, type: !460, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !520)
!520 = !{!521}
!521 = !DILocalVariable(name: "__stream", arg: 1, scope: !519, file: !434, line: 128, type: !352)
!522 = !DILocation(line: 0, scope: !519)
!523 = !DILocation(line: 130, column: 10, scope: !519)
!524 = !DILocation(line: 130, column: 3, scope: !519)
!525 = distinct !DISubprogram(name: "ferror_unlocked", scope: !434, file: !434, line: 135, type: !460, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !526)
!526 = !{!527}
!527 = !DILocalVariable(name: "__stream", arg: 1, scope: !525, file: !434, line: 135, type: !352)
!528 = !DILocation(line: 0, scope: !525)
!529 = !DILocation(line: 137, column: 10, scope: !525)
!530 = !DILocation(line: 137, column: 3, scope: !525)
!531 = distinct !DISubprogram(name: "tolower", scope: !532, file: !532, line: 207, type: !477, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!532 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!533 = !{!534}
!534 = !DILocalVariable(name: "__c", arg: 1, scope: !531, file: !532, line: 207, type: !202)
!535 = !DILocation(line: 0, scope: !531)
!536 = !DILocation(line: 209, column: 22, scope: !531)
!537 = !DILocation(line: 209, column: 39, scope: !531)
!538 = !DILocation(line: 209, column: 38, scope: !531)
!539 = !DILocation(line: 209, column: 37, scope: !531)
!540 = !DILocation(line: 209, column: 10, scope: !531)
!541 = !DILocation(line: 209, column: 3, scope: !531)
!542 = distinct !DISubprogram(name: "toupper", scope: !532, file: !532, line: 213, type: !477, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!543 = !{!544}
!544 = !DILocalVariable(name: "__c", arg: 1, scope: !542, file: !532, line: 213, type: !202)
!545 = !DILocation(line: 0, scope: !542)
!546 = !DILocation(line: 215, column: 22, scope: !542)
!547 = !DILocation(line: 215, column: 39, scope: !542)
!548 = !DILocation(line: 215, column: 38, scope: !542)
!549 = !DILocation(line: 215, column: 37, scope: !542)
!550 = !DILocation(line: 215, column: 10, scope: !542)
!551 = !DILocation(line: 215, column: 3, scope: !542)
!552 = distinct !DISubprogram(name: "atoi", scope: !553, file: !553, line: 361, type: !554, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !556)
!553 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!554 = !DISubroutineType(types: !555)
!555 = !{!202, !207}
!556 = !{!557}
!557 = !DILocalVariable(name: "__nptr", arg: 1, scope: !552, file: !553, line: 361, type: !207)
!558 = !DILocation(line: 0, scope: !552)
!559 = !DILocation(line: 363, column: 16, scope: !552)
!560 = !DILocation(line: 363, column: 10, scope: !552)
!561 = !DILocation(line: 363, column: 3, scope: !552)
!562 = distinct !DISubprogram(name: "atol", scope: !553, file: !553, line: 366, type: !563, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!380, !207}
!565 = !{!566}
!566 = !DILocalVariable(name: "__nptr", arg: 1, scope: !562, file: !553, line: 366, type: !207)
!567 = !DILocation(line: 0, scope: !562)
!568 = !DILocation(line: 368, column: 10, scope: !562)
!569 = !DILocation(line: 368, column: 3, scope: !562)
!570 = distinct !DISubprogram(name: "atoll", scope: !553, file: !553, line: 373, type: !571, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !574)
!571 = !DISubroutineType(types: !572)
!572 = !{!573, !207}
!573 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!574 = !{!575}
!575 = !DILocalVariable(name: "__nptr", arg: 1, scope: !570, file: !553, line: 373, type: !207)
!576 = !DILocation(line: 0, scope: !570)
!577 = !DILocation(line: 375, column: 10, scope: !570)
!578 = !DILocation(line: 375, column: 3, scope: !570)
!579 = distinct !DISubprogram(name: "bsearch", scope: !580, file: !580, line: 20, type: !581, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !584)
!580 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!581 = !DISubroutineType(types: !582)
!582 = !{!206, !304, !304, !279, !279, !583}
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !553, line: 808, baseType: !308)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!585 = !DILocalVariable(name: "__key", arg: 1, scope: !579, file: !580, line: 20, type: !304)
!586 = !DILocalVariable(name: "__base", arg: 2, scope: !579, file: !580, line: 20, type: !304)
!587 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !579, file: !580, line: 20, type: !279)
!588 = !DILocalVariable(name: "__size", arg: 4, scope: !579, file: !580, line: 20, type: !279)
!589 = !DILocalVariable(name: "__compar", arg: 5, scope: !579, file: !580, line: 21, type: !583)
!590 = !DILocalVariable(name: "__l", scope: !579, file: !580, line: 23, type: !279)
!591 = !DILocalVariable(name: "__u", scope: !579, file: !580, line: 23, type: !279)
!592 = !DILocalVariable(name: "__idx", scope: !579, file: !580, line: 23, type: !279)
!593 = !DILocalVariable(name: "__p", scope: !579, file: !580, line: 24, type: !304)
!594 = !DILocalVariable(name: "__comparison", scope: !579, file: !580, line: 25, type: !202)
!595 = !DILocation(line: 0, scope: !579)
!596 = !DILocation(line: 29, column: 3, scope: !579)
!597 = !DILocation(line: 27, column: 7, scope: !579)
!598 = !DILocation(line: 29, column: 14, scope: !579)
!599 = !DILocation(line: 31, column: 20, scope: !600)
!600 = distinct !DILexicalBlock(scope: !579, file: !580, line: 30, column: 5)
!601 = !DILocation(line: 31, column: 27, scope: !600)
!602 = !DILocation(line: 32, column: 56, scope: !600)
!603 = !DILocation(line: 32, column: 47, scope: !600)
!604 = !DILocation(line: 33, column: 22, scope: !600)
!605 = !DILocation(line: 34, column: 24, scope: !606)
!606 = distinct !DILexicalBlock(scope: !600, file: !580, line: 34, column: 11)
!607 = !DILocation(line: 34, column: 11, scope: !600)
!608 = !DILocation(line: 36, column: 29, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !580, line: 36, column: 16)
!610 = !DILocation(line: 36, column: 16, scope: !606)
!611 = !DILocation(line: 37, column: 14, scope: !609)
!612 = distinct !{!612, !596, !613}
!613 = !DILocation(line: 40, column: 5, scope: !579)
!614 = !DILocation(line: 43, column: 1, scope: !579)
!615 = distinct !DISubprogram(name: "atof", scope: !616, file: !616, line: 25, type: !617, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !620)
!616 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!617 = !DISubroutineType(types: !618)
!618 = !{!619, !207}
!619 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!620 = !{!621}
!621 = !DILocalVariable(name: "__nptr", arg: 1, scope: !615, file: !616, line: 25, type: !207)
!622 = !DILocation(line: 0, scope: !615)
!623 = !DILocation(line: 27, column: 10, scope: !615)
!624 = !DILocation(line: 27, column: 3, scope: !615)
!625 = distinct !DISubprogram(name: "strtoimax", scope: !626, file: !626, line: 324, type: !627, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !633)
!626 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!627 = !DISubroutineType(types: !628)
!628 = !{!629, !437, !632, !202}
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !630, line: 101, baseType: !631)
!630 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !379, line: 72, baseType: !380)
!632 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !203)
!633 = !{!634, !635, !636}
!634 = !DILocalVariable(name: "nptr", arg: 1, scope: !625, file: !626, line: 324, type: !437)
!635 = !DILocalVariable(name: "endptr", arg: 2, scope: !625, file: !626, line: 324, type: !632)
!636 = !DILocalVariable(name: "base", arg: 3, scope: !625, file: !626, line: 324, type: !202)
!637 = !DILocation(line: 0, scope: !625)
!638 = !DILocation(line: 327, column: 10, scope: !625)
!639 = !DILocation(line: 327, column: 3, scope: !625)
!640 = distinct !DISubprogram(name: "strtoumax", scope: !626, file: !626, line: 336, type: !641, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!641 = !DISubroutineType(types: !642)
!642 = !{!643, !437, !632, !202}
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !630, line: 102, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !379, line: 73, baseType: !281)
!645 = !{!646, !647, !648}
!646 = !DILocalVariable(name: "nptr", arg: 1, scope: !640, file: !626, line: 336, type: !437)
!647 = !DILocalVariable(name: "endptr", arg: 2, scope: !640, file: !626, line: 336, type: !632)
!648 = !DILocalVariable(name: "base", arg: 3, scope: !640, file: !626, line: 336, type: !202)
!649 = !DILocation(line: 0, scope: !640)
!650 = !DILocation(line: 339, column: 10, scope: !640)
!651 = !DILocation(line: 339, column: 3, scope: !640)
!652 = distinct !DISubprogram(name: "wcstoimax", scope: !626, file: !626, line: 348, type: !653, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !662)
!653 = !DISubroutineType(types: !654)
!654 = !{!629, !655, !659, !202}
!655 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !626, line: 34, baseType: !202)
!659 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!662 = !{!663, !664, !665}
!663 = !DILocalVariable(name: "nptr", arg: 1, scope: !652, file: !626, line: 348, type: !655)
!664 = !DILocalVariable(name: "endptr", arg: 2, scope: !652, file: !626, line: 348, type: !659)
!665 = !DILocalVariable(name: "base", arg: 3, scope: !652, file: !626, line: 348, type: !202)
!666 = !DILocation(line: 0, scope: !652)
!667 = !DILocation(line: 351, column: 10, scope: !652)
!668 = !DILocation(line: 351, column: 3, scope: !652)
!669 = distinct !DISubprogram(name: "wcstoumax", scope: !626, file: !626, line: 362, type: !670, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !672)
!670 = !DISubroutineType(types: !671)
!671 = !{!643, !655, !659, !202}
!672 = !{!673, !674, !675}
!673 = !DILocalVariable(name: "nptr", arg: 1, scope: !669, file: !626, line: 362, type: !655)
!674 = !DILocalVariable(name: "endptr", arg: 2, scope: !669, file: !626, line: 362, type: !659)
!675 = !DILocalVariable(name: "base", arg: 3, scope: !669, file: !626, line: 362, type: !202)
!676 = !DILocation(line: 0, scope: !669)
!677 = !DILocation(line: 365, column: 10, scope: !669)
!678 = !DILocation(line: 365, column: 3, scope: !669)
!679 = distinct !DISubprogram(name: "stat", scope: !680, file: !680, line: 453, type: !681, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !720)
!680 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!681 = !DISubroutineType(types: !682)
!682 = !{!202, !207, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !685, line: 46, size: 1152, elements: !686)
!685 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!686 = !{!687, !689, !691, !693, !695, !697, !699, !700, !701, !702, !704, !706, !714, !715, !716}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !684, file: !685, line: 48, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !379, line: 145, baseType: !281)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !684, file: !685, line: 53, baseType: !690, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !379, line: 148, baseType: !281)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !684, file: !685, line: 61, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !379, line: 151, baseType: !281)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !684, file: !685, line: 62, baseType: !694, size: 32, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !379, line: 150, baseType: !7)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !684, file: !685, line: 64, baseType: !696, size: 32, offset: 224)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !379, line: 146, baseType: !7)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !684, file: !685, line: 65, baseType: !698, size: 32, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !379, line: 147, baseType: !7)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !684, file: !685, line: 67, baseType: !202, size: 32, offset: 288)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !684, file: !685, line: 69, baseType: !688, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !684, file: !685, line: 74, baseType: !378, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !684, file: !685, line: 78, baseType: !703, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !379, line: 174, baseType: !380)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !684, file: !685, line: 80, baseType: !705, size: 64, offset: 512)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !379, line: 179, baseType: !380)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !684, file: !685, line: 91, baseType: !707, size: 128, offset: 576)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !708, line: 10, size: 128, elements: !709)
!708 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!709 = !{!710, !712}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !707, file: !708, line: 12, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !379, line: 160, baseType: !380)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !707, file: !708, line: 16, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !379, line: 196, baseType: !380)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !684, file: !685, line: 92, baseType: !707, size: 128, offset: 704)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !684, file: !685, line: 93, baseType: !707, size: 128, offset: 832)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !684, file: !685, line: 106, baseType: !717, size: 192, offset: 960)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 192, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 3)
!720 = !{!721, !722}
!721 = !DILocalVariable(name: "__path", arg: 1, scope: !679, file: !680, line: 453, type: !207)
!722 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !679, file: !680, line: 453, type: !683)
!723 = !DILocation(line: 0, scope: !679)
!724 = !DILocation(line: 455, column: 10, scope: !679)
!725 = !DILocation(line: 455, column: 3, scope: !679)
!726 = distinct !DISubprogram(name: "lstat", scope: !680, file: !680, line: 460, type: !681, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !727)
!727 = !{!728, !729}
!728 = !DILocalVariable(name: "__path", arg: 1, scope: !726, file: !680, line: 460, type: !207)
!729 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !726, file: !680, line: 460, type: !683)
!730 = !DILocation(line: 0, scope: !726)
!731 = !DILocation(line: 462, column: 10, scope: !726)
!732 = !DILocation(line: 462, column: 3, scope: !726)
!733 = distinct !DISubprogram(name: "fstat", scope: !680, file: !680, line: 467, type: !734, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!202, !202, !683}
!736 = !{!737, !738}
!737 = !DILocalVariable(name: "__fd", arg: 1, scope: !733, file: !680, line: 467, type: !202)
!738 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !733, file: !680, line: 467, type: !683)
!739 = !DILocation(line: 0, scope: !733)
!740 = !DILocation(line: 469, column: 10, scope: !733)
!741 = !DILocation(line: 469, column: 3, scope: !733)
!742 = distinct !DISubprogram(name: "fstatat", scope: !680, file: !680, line: 474, type: !743, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !745)
!743 = !DISubroutineType(types: !744)
!744 = !{!202, !202, !207, !683, !202}
!745 = !{!746, !747, !748, !749}
!746 = !DILocalVariable(name: "__fd", arg: 1, scope: !742, file: !680, line: 474, type: !202)
!747 = !DILocalVariable(name: "__filename", arg: 2, scope: !742, file: !680, line: 474, type: !207)
!748 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !742, file: !680, line: 474, type: !683)
!749 = !DILocalVariable(name: "__flag", arg: 4, scope: !742, file: !680, line: 474, type: !202)
!750 = !DILocation(line: 0, scope: !742)
!751 = !DILocation(line: 477, column: 10, scope: !742)
!752 = !DILocation(line: 477, column: 3, scope: !742)
!753 = distinct !DISubprogram(name: "mknod", scope: !680, file: !680, line: 483, type: !754, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!202, !207, !694, !688}
!756 = !{!757, !758, !759}
!757 = !DILocalVariable(name: "__path", arg: 1, scope: !753, file: !680, line: 483, type: !207)
!758 = !DILocalVariable(name: "__mode", arg: 2, scope: !753, file: !680, line: 483, type: !694)
!759 = !DILocalVariable(name: "__dev", arg: 3, scope: !753, file: !680, line: 483, type: !688)
!760 = !DILocation(line: 0, scope: !753)
!761 = !DILocation(line: 485, column: 10, scope: !753)
!762 = !DILocation(line: 485, column: 3, scope: !753)
!763 = distinct !DISubprogram(name: "mknodat", scope: !680, file: !680, line: 491, type: !764, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!202, !202, !207, !694, !688}
!766 = !{!767, !768, !769, !770}
!767 = !DILocalVariable(name: "__fd", arg: 1, scope: !763, file: !680, line: 491, type: !202)
!768 = !DILocalVariable(name: "__path", arg: 2, scope: !763, file: !680, line: 491, type: !207)
!769 = !DILocalVariable(name: "__mode", arg: 3, scope: !763, file: !680, line: 491, type: !694)
!770 = !DILocalVariable(name: "__dev", arg: 4, scope: !763, file: !680, line: 491, type: !688)
!771 = !DILocation(line: 0, scope: !763)
!772 = !DILocation(line: 494, column: 10, scope: !763)
!773 = !DILocation(line: 494, column: 3, scope: !763)
!774 = distinct !DISubprogram(name: "stat64", scope: !680, file: !680, line: 502, type: !775, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !797)
!775 = !DISubroutineType(types: !776)
!776 = !{!202, !207, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !685, line: 119, size: 1152, elements: !779)
!779 = !{!780, !781, !783, !784, !785, !786, !787, !788, !789, !790, !791, !793, !794, !795, !796}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !778, file: !685, line: 121, baseType: !688, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !778, file: !685, line: 123, baseType: !782, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !379, line: 149, baseType: !281)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !778, file: !685, line: 124, baseType: !692, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !778, file: !685, line: 125, baseType: !694, size: 32, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !778, file: !685, line: 132, baseType: !696, size: 32, offset: 224)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !778, file: !685, line: 133, baseType: !698, size: 32, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !778, file: !685, line: 135, baseType: !202, size: 32, offset: 288)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !778, file: !685, line: 136, baseType: !688, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !778, file: !685, line: 137, baseType: !378, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !778, file: !685, line: 143, baseType: !703, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !778, file: !685, line: 144, baseType: !792, size: 64, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !379, line: 180, baseType: !380)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !778, file: !685, line: 152, baseType: !707, size: 128, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !778, file: !685, line: 153, baseType: !707, size: 128, offset: 704)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !778, file: !685, line: 154, baseType: !707, size: 128, offset: 832)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !778, file: !685, line: 164, baseType: !717, size: 192, offset: 960)
!797 = !{!798, !799}
!798 = !DILocalVariable(name: "__path", arg: 1, scope: !774, file: !680, line: 502, type: !207)
!799 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !774, file: !680, line: 502, type: !777)
!800 = !DILocation(line: 0, scope: !774)
!801 = !DILocation(line: 504, column: 10, scope: !774)
!802 = !DILocation(line: 504, column: 3, scope: !774)
!803 = distinct !DISubprogram(name: "lstat64", scope: !680, file: !680, line: 509, type: !775, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !804)
!804 = !{!805, !806}
!805 = !DILocalVariable(name: "__path", arg: 1, scope: !803, file: !680, line: 509, type: !207)
!806 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !803, file: !680, line: 509, type: !777)
!807 = !DILocation(line: 0, scope: !803)
!808 = !DILocation(line: 511, column: 10, scope: !803)
!809 = !DILocation(line: 511, column: 3, scope: !803)
!810 = distinct !DISubprogram(name: "fstat64", scope: !680, file: !680, line: 516, type: !811, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!202, !202, !777}
!813 = !{!814, !815}
!814 = !DILocalVariable(name: "__fd", arg: 1, scope: !810, file: !680, line: 516, type: !202)
!815 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !810, file: !680, line: 516, type: !777)
!816 = !DILocation(line: 0, scope: !810)
!817 = !DILocation(line: 518, column: 10, scope: !810)
!818 = !DILocation(line: 518, column: 3, scope: !810)
!819 = distinct !DISubprogram(name: "fstatat64", scope: !680, file: !680, line: 523, type: !820, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!202, !202, !207, !777, !202}
!822 = !{!823, !824, !825, !826}
!823 = !DILocalVariable(name: "__fd", arg: 1, scope: !819, file: !680, line: 523, type: !202)
!824 = !DILocalVariable(name: "__filename", arg: 2, scope: !819, file: !680, line: 523, type: !207)
!825 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !819, file: !680, line: 523, type: !777)
!826 = !DILocalVariable(name: "__flag", arg: 4, scope: !819, file: !680, line: 523, type: !202)
!827 = !DILocation(line: 0, scope: !819)
!828 = !DILocation(line: 526, column: 10, scope: !819)
!829 = !DILocation(line: 526, column: 3, scope: !819)
!830 = distinct !DISubprogram(name: "add_new_plugin", scope: !3, file: !3, line: 132, type: !831, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !207}
!833 = !{!834, !835, !836, !837}
!834 = !DILocalVariable(name: "plugin_name", arg: 1, scope: !830, file: !3, line: 132, type: !207)
!835 = !DILocalVariable(name: "plugin", scope: !830, file: !3, line: 134, type: !209)
!836 = !DILocalVariable(name: "slot", scope: !830, file: !3, line: 135, type: !314)
!837 = !DILocalVariable(name: "base_name", scope: !830, file: !3, line: 136, type: !204)
!838 = !DILocation(line: 0, scope: !830)
!839 = !DILocation(line: 136, column: 21, scope: !830)
!840 = !DILocation(line: 140, column: 8, scope: !841)
!841 = distinct !DILexicalBlock(scope: !830, file: !3, line: 140, column: 7)
!842 = !DILocation(line: 140, column: 7, scope: !830)
!843 = !DILocation(line: 141, column: 28, scope: !841)
!844 = !DILocation(line: 141, column: 26, scope: !841)
!845 = !DILocation(line: 141, column: 5, scope: !841)
!846 = !DILocation(line: 144, column: 26, scope: !830)
!847 = !DILocation(line: 144, column: 10, scope: !830)
!848 = !DILocation(line: 149, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !830, file: !3, line: 149, column: 7)
!850 = !DILocation(line: 149, column: 7, scope: !830)
!851 = !DILocation(line: 152, column: 27, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 152, column: 11)
!853 = distinct !DILexicalBlock(scope: !849, file: !3, line: 150, column: 5)
!854 = !DILocation(line: 152, column: 11, scope: !852)
!855 = !DILocation(line: 152, column: 11, scope: !853)
!856 = !DILocation(line: 154, column: 24, scope: !852)
!857 = !DILocation(line: 154, column: 43, scope: !852)
!858 = !DILocation(line: 153, column: 9, scope: !852)
!859 = !DILocation(line: 158, column: 12, scope: !830)
!860 = !DILocation(line: 159, column: 11, scope: !830)
!861 = !DILocation(line: 159, column: 21, scope: !830)
!862 = !DILocation(line: 160, column: 11, scope: !830)
!863 = !DILocation(line: 160, column: 21, scope: !830)
!864 = !DILocation(line: 162, column: 9, scope: !830)
!865 = !DILocation(line: 163, column: 1, scope: !830)
!866 = distinct !DISubprogram(name: "get_plugin_base_name", scope: !3, file: !3, line: 115, type: !867, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!204, !207}
!869 = !{!870, !871}
!870 = !DILocalVariable(name: "full_name", arg: 1, scope: !866, file: !3, line: 115, type: !207)
!871 = !DILocalVariable(name: "base_name", scope: !866, file: !3, line: 118, type: !204)
!872 = !DILocation(line: 0, scope: !866)
!873 = !DILocation(line: 118, column: 30, scope: !866)
!874 = !DILocation(line: 118, column: 21, scope: !866)
!875 = !DILocation(line: 121, column: 32, scope: !866)
!876 = !DILocation(line: 121, column: 3, scope: !866)
!877 = !DILocation(line: 123, column: 3, scope: !866)
!878 = distinct !DISubprogram(name: "htab_str_eq", scope: !3, file: !3, line: 104, type: !309, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !879)
!879 = !{!880, !881, !882}
!880 = !DILocalVariable(name: "s1", arg: 1, scope: !878, file: !3, line: 104, type: !304)
!881 = !DILocalVariable(name: "s2", arg: 2, scope: !878, file: !3, line: 104, type: !304)
!882 = !DILocalVariable(name: "plugin", scope: !878, file: !3, line: 106, type: !344)
!883 = !DILocation(line: 0, scope: !878)
!884 = !DILocation(line: 107, column: 27, scope: !878)
!885 = !DILocation(line: 107, column: 11, scope: !878)
!886 = !DILocation(line: 107, column: 10, scope: !878)
!887 = !DILocation(line: 107, column: 3, scope: !878)
!888 = distinct !DISubprogram(name: "parse_plugin_arg_opt", scope: !3, file: !3, line: 171, type: !831, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!889 = !{!890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !908}
!890 = !DILocalVariable(name: "arg", arg: 1, scope: !888, file: !3, line: 171, type: !207)
!891 = !DILocalVariable(name: "len", scope: !888, file: !3, line: 173, type: !279)
!892 = !DILocalVariable(name: "name_len", scope: !888, file: !3, line: 173, type: !279)
!893 = !DILocalVariable(name: "key_len", scope: !888, file: !3, line: 173, type: !279)
!894 = !DILocalVariable(name: "value_len", scope: !888, file: !3, line: 173, type: !279)
!895 = !DILocalVariable(name: "ptr", scope: !888, file: !3, line: 174, type: !207)
!896 = !DILocalVariable(name: "name_start", scope: !888, file: !3, line: 174, type: !207)
!897 = !DILocalVariable(name: "key_start", scope: !888, file: !3, line: 174, type: !207)
!898 = !DILocalVariable(name: "value_start", scope: !888, file: !3, line: 174, type: !207)
!899 = !DILocalVariable(name: "name", scope: !888, file: !3, line: 175, type: !204)
!900 = !DILocalVariable(name: "key", scope: !888, file: !3, line: 175, type: !204)
!901 = !DILocalVariable(name: "value", scope: !888, file: !3, line: 175, type: !204)
!902 = !DILocalVariable(name: "slot", scope: !888, file: !3, line: 176, type: !314)
!903 = !DILocalVariable(name: "name_parsed", scope: !888, file: !3, line: 177, type: !201)
!904 = !DILocalVariable(name: "key_parsed", scope: !888, file: !3, line: 177, type: !201)
!905 = !DILocalVariable(name: "plugin", scope: !906, file: !3, line: 237, type: !209)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 236, column: 5)
!907 = distinct !DILexicalBlock(scope: !888, file: !3, line: 233, column: 7)
!908 = !DILocalVariable(name: "args", scope: !909, file: !3, line: 258, type: !217)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 257, column: 9)
!910 = distinct !DILexicalBlock(scope: !906, file: !3, line: 256, column: 11)
!911 = !DILocation(line: 0, scope: !888)
!912 = !DILocation(line: 181, column: 8, scope: !913)
!913 = distinct !DILexicalBlock(scope: !888, file: !3, line: 181, column: 3)
!914 = !DILocation(line: 177, column: 8, scope: !888)
!915 = !DILocation(line: 174, column: 40, scope: !888)
!916 = !DILocation(line: 0, scope: !913)
!917 = !DILocation(line: 173, column: 19, scope: !888)
!918 = !DILocation(line: 181, column: 19, scope: !919)
!919 = distinct !DILexicalBlock(scope: !913, file: !3, line: 181, column: 3)
!920 = !DILocation(line: 181, column: 3, scope: !913)
!921 = !DILocation(line: 187, column: 16, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 187, column: 11)
!923 = distinct !DILexicalBlock(scope: !919, file: !3, line: 182, column: 5)
!924 = !DILocation(line: 187, column: 27, scope: !922)
!925 = !DILocation(line: 187, column: 23, scope: !922)
!926 = !DILocation(line: 191, column: 27, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !3, line: 188, column: 9)
!928 = !DILocation(line: 193, column: 11, scope: !927)
!929 = !DILocation(line: 195, column: 21, scope: !930)
!930 = distinct !DILexicalBlock(scope: !922, file: !3, line: 195, column: 16)
!931 = !DILocation(line: 195, column: 16, scope: !922)
!932 = !DILocation(line: 197, column: 15, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 197, column: 15)
!934 = distinct !DILexicalBlock(scope: !930, file: !3, line: 196, column: 9)
!935 = !DILocation(line: 197, column: 15, scope: !934)
!936 = !DILocation(line: 199, column: 15, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !3, line: 198, column: 13)
!938 = !DILocation(line: 201, column: 15, scope: !937)
!939 = !DILocation(line: 205, column: 29, scope: !934)
!940 = !DILocation(line: 207, column: 11, scope: !934)
!941 = !DILocation(line: 210, column: 9, scope: !930)
!942 = !DILocation(line: 211, column: 5, scope: !923)
!943 = !DILocation(line: 0, scope: !922)
!944 = !DILocation(line: 181, column: 25, scope: !919)
!945 = !DILocation(line: 181, column: 3, scope: !919)
!946 = distinct !{!946, !920, !947}
!947 = !DILocation(line: 211, column: 5, scope: !913)
!948 = !DILocation(line: 213, column: 8, scope: !949)
!949 = distinct !DILexicalBlock(scope: !888, file: !3, line: 213, column: 7)
!950 = !DILocation(line: 213, column: 7, scope: !888)
!951 = !DILocation(line: 215, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !3, line: 214, column: 5)
!953 = !DILocation(line: 217, column: 7, scope: !952)
!954 = !DILocation(line: 222, column: 8, scope: !955)
!955 = distinct !DILexicalBlock(scope: !888, file: !3, line: 222, column: 7)
!956 = !DILocation(line: 227, column: 10, scope: !888)
!957 = !DILocation(line: 228, column: 3, scope: !888)
!958 = !DILocation(line: 229, column: 3, scope: !888)
!959 = !DILocation(line: 229, column: 18, scope: !888)
!960 = !DILocation(line: 233, column: 7, scope: !907)
!961 = !DILocation(line: 234, column: 7, scope: !907)
!962 = !DILocation(line: 234, column: 19, scope: !907)
!963 = !DILocation(line: 235, column: 11, scope: !907)
!964 = !DILocation(line: 233, column: 7, scope: !888)
!965 = !DILocation(line: 237, column: 69, scope: !906)
!966 = !DILocation(line: 0, scope: !906)
!967 = !DILocation(line: 239, column: 13, scope: !906)
!968 = !DILocation(line: 240, column: 7, scope: !906)
!969 = !DILocation(line: 241, column: 7, scope: !906)
!970 = !DILocation(line: 241, column: 20, scope: !906)
!971 = !DILocation(line: 242, column: 11, scope: !972)
!972 = distinct !DILexicalBlock(scope: !906, file: !3, line: 242, column: 11)
!973 = !DILocation(line: 242, column: 11, scope: !906)
!974 = !DILocation(line: 244, column: 19, scope: !975)
!975 = distinct !DILexicalBlock(scope: !972, file: !3, line: 243, column: 9)
!976 = !DILocation(line: 245, column: 11, scope: !975)
!977 = !DILocation(line: 246, column: 11, scope: !975)
!978 = !DILocation(line: 246, column: 28, scope: !975)
!979 = !DILocation(line: 247, column: 9, scope: !975)
!980 = !DILocation(line: 0, scope: !972)
!981 = !DILocation(line: 256, column: 19, scope: !910)
!982 = !DILocation(line: 256, column: 24, scope: !910)
!983 = !DILocation(line: 256, column: 11, scope: !906)
!984 = !DILocation(line: 258, column: 42, scope: !909)
!985 = !DILocation(line: 0, scope: !909)
!986 = !DILocation(line: 260, column: 33, scope: !909)
!987 = !DILocation(line: 261, column: 61, scope: !909)
!988 = !DILocation(line: 261, column: 53, scope: !909)
!989 = !DILocation(line: 261, column: 51, scope: !909)
!990 = !DILocation(line: 260, column: 11, scope: !909)
!991 = !DILocation(line: 262, column: 11, scope: !909)
!992 = !DILocation(line: 263, column: 24, scope: !909)
!993 = !DILocation(line: 264, column: 11, scope: !909)
!994 = !DILocation(line: 265, column: 9, scope: !909)
!995 = !DILocation(line: 268, column: 11, scope: !996)
!996 = distinct !DILexicalBlock(scope: !910, file: !3, line: 267, column: 9)
!997 = !DILocation(line: 269, column: 26, scope: !996)
!998 = !DILocation(line: 269, column: 24, scope: !996)
!999 = !DILocation(line: 0, scope: !910)
!1000 = !DILocation(line: 273, column: 15, scope: !906)
!1001 = !DILocation(line: 273, column: 38, scope: !906)
!1002 = !DILocation(line: 273, column: 42, scope: !906)
!1003 = !DILocation(line: 274, column: 15, scope: !906)
!1004 = !DILocation(line: 274, column: 28, scope: !906)
!1005 = !DILocation(line: 274, column: 33, scope: !906)
!1006 = !DILocation(line: 274, column: 7, scope: !906)
!1007 = !DILocation(line: 274, column: 38, scope: !906)
!1008 = !DILocation(line: 274, column: 44, scope: !906)
!1009 = !DILocation(line: 275, column: 5, scope: !906)
!1010 = !DILocation(line: 277, column: 5, scope: !907)
!1011 = !DILocation(line: 281, column: 3, scope: !888)
!1012 = !DILocation(line: 282, column: 1, scope: !888)
!1013 = distinct !DISubprogram(name: "get_named_event_id", scope: !3, file: !3, line: 310, type: !1014, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1016)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!202, !207, !5}
!1016 = !{!1017, !1018, !1019, !1020}
!1017 = !DILocalVariable(name: "name", arg: 1, scope: !1013, file: !3, line: 310, type: !207)
!1018 = !DILocalVariable(name: "insert", arg: 2, scope: !1013, file: !3, line: 310, type: !5)
!1019 = !DILocalVariable(name: "slot", scope: !1013, file: !3, line: 312, type: !314)
!1020 = !DILocalVariable(name: "i", scope: !1021, file: !3, line: 316, type: !202)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 315, column: 5)
!1022 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 314, column: 7)
!1023 = !DILocation(line: 0, scope: !1013)
!1024 = !DILocation(line: 314, column: 8, scope: !1022)
!1025 = !DILocation(line: 314, column: 7, scope: !1013)
!1026 = !DILocation(line: 318, column: 19, scope: !1021)
!1027 = !DILocation(line: 318, column: 17, scope: !1021)
!1028 = !DILocation(line: 0, scope: !1021)
!1029 = !DILocation(line: 319, column: 12, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 319, column: 7)
!1031 = !DILocation(line: 0, scope: !1030)
!1032 = !DILocation(line: 319, column: 23, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 319, column: 7)
!1034 = !DILocation(line: 319, column: 21, scope: !1033)
!1035 = !DILocation(line: 319, column: 7, scope: !1030)
!1036 = !DILocation(line: 321, column: 27, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 320, column: 2)
!1038 = !DILocation(line: 321, column: 38, scope: !1037)
!1039 = !DILocation(line: 321, column: 11, scope: !1037)
!1040 = !DILocation(line: 322, column: 4, scope: !1037)
!1041 = !DILocation(line: 323, column: 13, scope: !1037)
!1042 = !DILocation(line: 323, column: 10, scope: !1037)
!1043 = !DILocation(line: 319, column: 36, scope: !1033)
!1044 = !DILocation(line: 319, column: 7, scope: !1033)
!1045 = distinct !{!1045, !1035, !1046}
!1046 = !DILocation(line: 324, column: 2, scope: !1030)
!1047 = !DILocation(line: 326, column: 26, scope: !1013)
!1048 = !DILocation(line: 326, column: 10, scope: !1013)
!1049 = !DILocation(line: 327, column: 12, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 327, column: 7)
!1051 = !DILocation(line: 327, column: 7, scope: !1013)
!1052 = !DILocation(line: 329, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 329, column: 7)
!1054 = !DILocation(line: 329, column: 13, scope: !1053)
!1055 = !DILocation(line: 329, column: 7, scope: !1013)
!1056 = !DILocation(line: 330, column: 37, scope: !1053)
!1057 = !DILocation(line: 330, column: 34, scope: !1053)
!1058 = !DILocation(line: 330, column: 12, scope: !1053)
!1059 = !DILocation(line: 330, column: 5, scope: !1053)
!1060 = !DILocation(line: 332, column: 7, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 332, column: 7)
!1062 = !DILocation(line: 332, column: 21, scope: !1061)
!1063 = !DILocation(line: 332, column: 18, scope: !1061)
!1064 = !DILocation(line: 332, column: 7, scope: !1013)
!1065 = !DILocation(line: 334, column: 34, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 333, column: 5)
!1067 = !DILocation(line: 334, column: 21, scope: !1066)
!1068 = !DILocation(line: 335, column: 11, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 335, column: 11)
!1070 = !DILocation(line: 335, column: 29, scope: !1069)
!1071 = !DILocation(line: 335, column: 11, scope: !1066)
!1072 = !DILocation(line: 337, column: 24, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 336, column: 2)
!1074 = !DILocation(line: 337, column: 22, scope: !1073)
!1075 = !DILocation(line: 338, column: 4, scope: !1073)
!1076 = !DILocation(line: 340, column: 23, scope: !1073)
!1077 = !DILocation(line: 340, column: 21, scope: !1073)
!1078 = !DILocation(line: 341, column: 4, scope: !1073)
!1079 = !DILocation(line: 343, column: 2, scope: !1073)
!1080 = !DILocation(line: 347, column: 8, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 345, column: 2)
!1082 = !DILocation(line: 347, column: 6, scope: !1081)
!1083 = !DILocation(line: 348, column: 23, scope: !1081)
!1084 = !DILocation(line: 348, column: 21, scope: !1081)
!1085 = !DILocation(line: 352, column: 20, scope: !1066)
!1086 = !DILocation(line: 352, column: 7, scope: !1066)
!1087 = !DILocation(line: 353, column: 17, scope: !1066)
!1088 = !DILocation(line: 357, column: 21, scope: !1013)
!1089 = !DILocation(line: 357, column: 3, scope: !1013)
!1090 = !DILocation(line: 354, column: 5, scope: !1066)
!1091 = !DILocation(line: 356, column: 14, scope: !1061)
!1092 = !DILocation(line: 356, column: 11, scope: !1061)
!1093 = !DILocation(line: 357, column: 33, scope: !1013)
!1094 = !DILocation(line: 358, column: 20, scope: !1013)
!1095 = !DILocation(line: 358, column: 3, scope: !1013)
!1096 = !DILocation(line: 359, column: 1, scope: !1013)
!1097 = distinct !DISubprogram(name: "htab_event_eq", scope: !3, file: !3, line: 300, type: !309, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DILocalVariable(name: "e1", arg: 1, scope: !1097, file: !3, line: 300, type: !304)
!1100 = !DILocalVariable(name: "s2", arg: 2, scope: !1097, file: !3, line: 300, type: !304)
!1101 = !DILocalVariable(name: "s1", scope: !1097, file: !3, line: 302, type: !207)
!1102 = !DILocation(line: 0, scope: !1097)
!1103 = !DILocation(line: 302, column: 20, scope: !1097)
!1104 = !DILocation(line: 302, column: 19, scope: !1097)
!1105 = !DILocation(line: 303, column: 11, scope: !1097)
!1106 = !DILocation(line: 303, column: 10, scope: !1097)
!1107 = !DILocation(line: 303, column: 3, scope: !1097)
!1108 = distinct !DISubprogram(name: "register_callback", scope: !3, file: !3, line: 370, type: !1109, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !207, !202, !231, !206}
!1111 = !{!1112, !1113, !1114, !1115, !1116}
!1112 = !DILocalVariable(name: "plugin_name", arg: 1, scope: !1108, file: !3, line: 370, type: !207)
!1113 = !DILocalVariable(name: "event", arg: 2, scope: !1108, file: !3, line: 371, type: !202)
!1114 = !DILocalVariable(name: "callback", arg: 3, scope: !1108, file: !3, line: 372, type: !231)
!1115 = !DILocalVariable(name: "user_data", arg: 4, scope: !1108, file: !3, line: 373, type: !206)
!1116 = !DILocalVariable(name: "new_callback", scope: !1117, file: !3, line: 422, type: !226)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 421, column: 9)
!1118 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 376, column: 5)
!1119 = !DILocation(line: 0, scope: !1108)
!1120 = !DILocation(line: 375, column: 3, scope: !1108)
!1121 = !DILocation(line: 378, column: 2, scope: !1118)
!1122 = !DILocation(line: 379, column: 24, scope: !1118)
!1123 = !DILocation(line: 379, column: 9, scope: !1118)
!1124 = !DILocation(line: 380, column: 9, scope: !1118)
!1125 = !DILocation(line: 382, column: 2, scope: !1118)
!1126 = !DILocation(line: 383, column: 37, scope: !1118)
!1127 = !DILocation(line: 383, column: 2, scope: !1118)
!1128 = !DILocation(line: 384, column: 2, scope: !1118)
!1129 = !DILocation(line: 386, column: 2, scope: !1118)
!1130 = !DILocation(line: 387, column: 32, scope: !1118)
!1131 = !DILocation(line: 387, column: 9, scope: !1118)
!1132 = !DILocation(line: 388, column: 2, scope: !1118)
!1133 = !DILocation(line: 390, column: 2, scope: !1118)
!1134 = !DILocation(line: 391, column: 33, scope: !1118)
!1135 = !DILocation(line: 391, column: 9, scope: !1118)
!1136 = !DILocation(line: 392, column: 2, scope: !1118)
!1137 = !DILocation(line: 395, column: 12, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 395, column: 6)
!1139 = !DILocation(line: 395, column: 53, scope: !1138)
!1140 = !DILocation(line: 395, column: 50, scope: !1138)
!1141 = !DILocation(line: 395, column: 41, scope: !1138)
!1142 = !DILocation(line: 397, column: 6, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 396, column: 4)
!1144 = !DILocation(line: 399, column: 6, scope: !1143)
!1145 = !DILocation(line: 423, column: 16, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 423, column: 15)
!1147 = !DILocation(line: 423, column: 15, scope: !1117)
!1148 = !DILocation(line: 426, column: 37, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 424, column: 13)
!1150 = !DILocation(line: 425, column: 15, scope: !1149)
!1151 = !DILocation(line: 427, column: 15, scope: !1149)
!1152 = !DILocation(line: 429, column: 26, scope: !1117)
!1153 = !DILocation(line: 0, scope: !1117)
!1154 = !DILocation(line: 430, column: 25, scope: !1117)
!1155 = !DILocation(line: 430, column: 37, scope: !1117)
!1156 = !DILocation(line: 431, column: 25, scope: !1117)
!1157 = !DILocation(line: 431, column: 30, scope: !1117)
!1158 = !DILocation(line: 432, column: 25, scope: !1117)
!1159 = !DILocation(line: 432, column: 35, scope: !1117)
!1160 = !DILocation(line: 433, column: 32, scope: !1117)
!1161 = !DILocation(line: 433, column: 25, scope: !1117)
!1162 = !DILocation(line: 433, column: 30, scope: !1117)
!1163 = !DILocation(line: 434, column: 35, scope: !1117)
!1164 = !DILocation(line: 435, column: 9, scope: !1118)
!1165 = !DILocation(line: 438, column: 1, scope: !1108)
!1166 = distinct !DISubprogram(name: "register_plugin_info", scope: !3, file: !3, line: 288, type: !1167, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1169)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !207, !267}
!1169 = !{!1170, !1171, !1172, !1173}
!1170 = !DILocalVariable(name: "name", arg: 1, scope: !1166, file: !3, line: 288, type: !207)
!1171 = !DILocalVariable(name: "info", arg: 2, scope: !1166, file: !3, line: 288, type: !267)
!1172 = !DILocalVariable(name: "slot", scope: !1166, file: !3, line: 290, type: !314)
!1173 = !DILocalVariable(name: "plugin", scope: !1166, file: !3, line: 291, type: !209)
!1174 = !DILocation(line: 0, scope: !1166)
!1175 = !DILocation(line: 290, column: 33, scope: !1166)
!1176 = !DILocation(line: 290, column: 17, scope: !1166)
!1177 = !DILocation(line: 291, column: 65, scope: !1166)
!1178 = !DILocation(line: 292, column: 27, scope: !1166)
!1179 = !DILocation(line: 292, column: 11, scope: !1166)
!1180 = !DILocation(line: 292, column: 19, scope: !1166)
!1181 = !DILocation(line: 293, column: 24, scope: !1166)
!1182 = !DILocation(line: 293, column: 11, scope: !1166)
!1183 = !DILocation(line: 293, column: 16, scope: !1166)
!1184 = !DILocation(line: 294, column: 1, scope: !1166)
!1185 = distinct !DISubprogram(name: "unregister_callback", scope: !3, file: !3, line: 445, type: !1186, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1188)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!202, !207, !202}
!1188 = !{!1189, !1190, !1191, !1192}
!1189 = !DILocalVariable(name: "plugin_name", arg: 1, scope: !1185, file: !3, line: 445, type: !207)
!1190 = !DILocalVariable(name: "event", arg: 2, scope: !1185, file: !3, line: 445, type: !202)
!1191 = !DILocalVariable(name: "callback", scope: !1185, file: !3, line: 447, type: !226)
!1192 = !DILocalVariable(name: "cbp", scope: !1185, file: !3, line: 447, type: !225)
!1193 = !DILocation(line: 0, scope: !1185)
!1194 = !DILocation(line: 449, column: 16, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 449, column: 7)
!1196 = !DILocation(line: 449, column: 13, scope: !1195)
!1197 = !DILocation(line: 449, column: 7, scope: !1185)
!1198 = !DILocation(line: 452, column: 15, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 452, column: 3)
!1200 = !DILocation(line: 452, column: 8, scope: !1199)
!1201 = !DILocation(line: 0, scope: !1199)
!1202 = !DILocation(line: 452, column: 52, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 452, column: 3)
!1204 = !DILocation(line: 452, column: 3, scope: !1199)
!1205 = !DILocation(line: 453, column: 27, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 453, column: 9)
!1207 = !DILocation(line: 453, column: 9, scope: !1206)
!1208 = !DILocation(line: 453, column: 53, scope: !1206)
!1209 = !DILocation(line: 0, scope: !1203)
!1210 = !DILocation(line: 453, column: 9, scope: !1203)
!1211 = distinct !{!1211, !1204, !1212}
!1212 = !DILocation(line: 457, column: 7, scope: !1199)
!1213 = !DILocation(line: 455, column: 19, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 454, column: 7)
!1215 = !DILocation(line: 455, column: 7, scope: !1214)
!1216 = !DILocation(line: 456, column: 2, scope: !1214)
!1217 = !DILocation(line: 459, column: 1, scope: !1185)
!1218 = distinct !DISubprogram(name: "invoke_plugin_callbacks", scope: !3, file: !3, line: 470, type: !1219, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!202, !202, !206}
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DILocalVariable(name: "event", arg: 1, scope: !1218, file: !3, line: 470, type: !202)
!1223 = !DILocalVariable(name: "gcc_data", arg: 2, scope: !1218, file: !3, line: 470, type: !206)
!1224 = !DILocalVariable(name: "retval", scope: !1218, file: !3, line: 472, type: !202)
!1225 = !DILocalVariable(name: "callback", scope: !1226, file: !3, line: 505, type: !226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 502, column: 9)
!1227 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 477, column: 5)
!1228 = !DILocation(line: 0, scope: !1218)
!1229 = !DILocation(line: 474, column: 3, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 474, column: 3)
!1231 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 474, column: 3)
!1232 = !DILocation(line: 474, column: 3, scope: !1231)
!1233 = !DILocation(line: 476, column: 3, scope: !1218)
!1234 = !DILocation(line: 480, column: 2, scope: !1227)
!1235 = !DILocation(line: 481, column: 2, scope: !1227)
!1236 = !DILocation(line: 505, column: 44, scope: !1226)
!1237 = !DILocation(line: 0, scope: !1226)
!1238 = !DILocation(line: 509, column: 11, scope: !1226)
!1239 = !DILocation(line: 509, column: 11, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 509, column: 11)
!1241 = !DILocation(line: 510, column: 25, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 509, column: 11)
!1243 = !DILocation(line: 510, column: 52, scope: !1242)
!1244 = !DILocation(line: 510, column: 13, scope: !1242)
!1245 = !DILocation(line: 509, column: 50, scope: !1242)
!1246 = !DILocation(line: 509, column: 11, scope: !1242)
!1247 = distinct !{!1247, !1239, !1248}
!1248 = !DILocation(line: 510, column: 61, scope: !1240)
!1249 = !DILocation(line: 517, column: 9, scope: !1227)
!1250 = !DILocation(line: 518, column: 5, scope: !1227)
!1251 = !DILocation(line: 507, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 507, column: 8)
!1253 = !DILocation(line: 507, column: 8, scope: !1226)
!1254 = !DILocation(line: 520, column: 3, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 520, column: 3)
!1256 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 520, column: 3)
!1257 = !DILocation(line: 472, column: 7, scope: !1218)
!1258 = !DILocation(line: 520, column: 3, scope: !1256)
!1259 = !DILocation(line: 521, column: 3, scope: !1218)
!1260 = distinct !DISubprogram(name: "initialize_plugins", scope: !3, file: !3, line: 611, type: !1261, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null}
!1263 = !DILocation(line: 614, column: 8, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 614, column: 7)
!1265 = !DILocation(line: 614, column: 7, scope: !1260)
!1266 = !DILocation(line: 617, column: 3, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 617, column: 3)
!1268 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 617, column: 3)
!1269 = !DILocation(line: 617, column: 3, scope: !1268)
!1270 = !DILocation(line: 624, column: 3, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 624, column: 3)
!1272 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 624, column: 3)
!1273 = !DILocation(line: 624, column: 3, scope: !1272)
!1274 = !DILocation(line: 625, column: 1, scope: !1260)
!1275 = distinct !DISubprogram(name: "finalize_plugins", scope: !3, file: !3, line: 640, type: !1261, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!1276 = !DILocation(line: 642, column: 8, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 642, column: 7)
!1278 = !DILocation(line: 642, column: 7, scope: !1275)
!1279 = !DILocation(line: 650, column: 3, scope: !1275)
!1280 = !DILocation(line: 653, column: 16, scope: !1275)
!1281 = !DILocation(line: 653, column: 3, scope: !1275)
!1282 = !DILocation(line: 654, column: 24, scope: !1275)
!1283 = !DILocation(line: 655, column: 1, scope: !1275)
!1284 = distinct !DISubprogram(name: "finalize_one_plugin", scope: !3, file: !3, line: 630, type: !1285, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!202, !314, !206}
!1287 = !{!1288, !1289, !1290}
!1288 = !DILocalVariable(name: "slot", arg: 1, scope: !1284, file: !3, line: 630, type: !314)
!1289 = !DILocalVariable(name: "info", arg: 2, scope: !1284, file: !3, line: 630, type: !206)
!1290 = !DILocalVariable(name: "plugin", scope: !1284, file: !3, line: 632, type: !209)
!1291 = !DILocation(line: 0, scope: !1284)
!1292 = !DILocation(line: 632, column: 65, scope: !1284)
!1293 = !DILocation(line: 633, column: 3, scope: !1284)
!1294 = !DILocation(line: 634, column: 3, scope: !1284)
!1295 = distinct !DISubprogram(name: "print_plugins_versions", scope: !3, file: !3, line: 681, type: !1296, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1298)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !352, !207}
!1298 = !{!1299, !1300, !1301}
!1299 = !DILocalVariable(name: "file", arg: 1, scope: !1295, file: !3, line: 681, type: !352)
!1300 = !DILocalVariable(name: "indent", arg: 2, scope: !1295, file: !3, line: 681, type: !207)
!1301 = !DILocalVariable(name: "opt", scope: !1295, file: !3, line: 683, type: !349)
!1302 = !DILocation(line: 0, scope: !1295)
!1303 = !DILocation(line: 683, column: 3, scope: !1295)
!1304 = !DILocation(line: 684, column: 7, scope: !1295)
!1305 = !DILocation(line: 684, column: 12, scope: !1295)
!1306 = !DILocation(line: 685, column: 7, scope: !1295)
!1307 = !DILocation(line: 685, column: 14, scope: !1295)
!1308 = !DILocation(line: 686, column: 8, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 686, column: 7)
!1310 = !DILocation(line: 686, column: 29, scope: !1309)
!1311 = !DILocation(line: 686, column: 32, scope: !1309)
!1312 = !DILocation(line: 686, column: 69, scope: !1309)
!1313 = !DILocation(line: 686, column: 7, scope: !1295)
!1314 = !DILocation(line: 689, column: 3, scope: !1295)
!1315 = !DILocation(line: 690, column: 27, scope: !1295)
!1316 = !DILocation(line: 690, column: 3, scope: !1295)
!1317 = !DILocation(line: 691, column: 1, scope: !1295)
!1318 = distinct !DISubprogram(name: "print_version_one_plugin", scope: !3, file: !3, line: 668, type: !1285, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324}
!1320 = !DILocalVariable(name: "slot", arg: 1, scope: !1318, file: !3, line: 668, type: !314)
!1321 = !DILocalVariable(name: "data", arg: 2, scope: !1318, file: !3, line: 668, type: !206)
!1322 = !DILocalVariable(name: "opt", scope: !1318, file: !3, line: 670, type: !348)
!1323 = !DILocalVariable(name: "plugin", scope: !1318, file: !3, line: 671, type: !209)
!1324 = !DILocalVariable(name: "version", scope: !1318, file: !3, line: 672, type: !207)
!1325 = !DILocation(line: 0, scope: !1318)
!1326 = !DILocation(line: 671, column: 65, scope: !1318)
!1327 = !DILocation(line: 672, column: 33, scope: !1318)
!1328 = !DILocation(line: 672, column: 25, scope: !1318)
!1329 = !DILocation(line: 674, column: 17, scope: !1318)
!1330 = !DILocation(line: 674, column: 43, scope: !1318)
!1331 = !DILocation(line: 674, column: 59, scope: !1318)
!1332 = !DILocation(line: 674, column: 3, scope: !1318)
!1333 = !DILocation(line: 675, column: 3, scope: !1318)
!1334 = distinct !DISubprogram(name: "print_plugins_help", scope: !3, file: !3, line: 726, type: !1296, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1335)
!1335 = !{!1336, !1337, !1338}
!1336 = !DILocalVariable(name: "file", arg: 1, scope: !1334, file: !3, line: 726, type: !352)
!1337 = !DILocalVariable(name: "indent", arg: 2, scope: !1334, file: !3, line: 726, type: !207)
!1338 = !DILocalVariable(name: "opt", scope: !1334, file: !3, line: 728, type: !349)
!1339 = !DILocation(line: 0, scope: !1334)
!1340 = !DILocation(line: 728, column: 3, scope: !1334)
!1341 = !DILocation(line: 729, column: 7, scope: !1334)
!1342 = !DILocation(line: 729, column: 12, scope: !1334)
!1343 = !DILocation(line: 730, column: 7, scope: !1334)
!1344 = !DILocation(line: 730, column: 14, scope: !1334)
!1345 = !DILocation(line: 731, column: 8, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 731, column: 7)
!1347 = !DILocation(line: 731, column: 29, scope: !1346)
!1348 = !DILocation(line: 731, column: 32, scope: !1346)
!1349 = !DILocation(line: 731, column: 69, scope: !1346)
!1350 = !DILocation(line: 731, column: 7, scope: !1334)
!1351 = !DILocation(line: 734, column: 3, scope: !1334)
!1352 = !DILocation(line: 735, column: 27, scope: !1334)
!1353 = !DILocation(line: 735, column: 3, scope: !1334)
!1354 = !DILocation(line: 736, column: 1, scope: !1334)
!1355 = distinct !DISubprogram(name: "print_help_one_plugin", scope: !3, file: !3, line: 697, type: !1285, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1356)
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364}
!1357 = !DILocalVariable(name: "slot", arg: 1, scope: !1355, file: !3, line: 697, type: !314)
!1358 = !DILocalVariable(name: "data", arg: 2, scope: !1355, file: !3, line: 697, type: !206)
!1359 = !DILocalVariable(name: "opt", scope: !1355, file: !3, line: 699, type: !348)
!1360 = !DILocalVariable(name: "plugin", scope: !1355, file: !3, line: 700, type: !209)
!1361 = !DILocalVariable(name: "help", scope: !1355, file: !3, line: 701, type: !207)
!1362 = !DILocalVariable(name: "dup", scope: !1355, file: !3, line: 703, type: !204)
!1363 = !DILocalVariable(name: "p", scope: !1355, file: !3, line: 704, type: !204)
!1364 = !DILocalVariable(name: "nl", scope: !1355, file: !3, line: 704, type: !204)
!1365 = !DILocation(line: 0, scope: !1355)
!1366 = !DILocation(line: 700, column: 65, scope: !1355)
!1367 = !DILocation(line: 701, column: 30, scope: !1355)
!1368 = !DILocation(line: 701, column: 22, scope: !1355)
!1369 = !DILocation(line: 703, column: 15, scope: !1355)
!1370 = !DILocation(line: 705, column: 17, scope: !1355)
!1371 = !DILocation(line: 705, column: 40, scope: !1355)
!1372 = !DILocation(line: 705, column: 56, scope: !1355)
!1373 = !DILocation(line: 705, column: 3, scope: !1355)
!1374 = !DILocation(line: 707, column: 8, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 707, column: 3)
!1376 = !DILocation(line: 0, scope: !1375)
!1377 = !DILocation(line: 707, column: 3, scope: !1375)
!1378 = !DILocation(line: 709, column: 12, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 708, column: 5)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 707, column: 3)
!1381 = !DILocation(line: 710, column: 11, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 710, column: 11)
!1383 = !DILocation(line: 710, column: 11, scope: !1379)
!1384 = !DILocation(line: 712, column: 8, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 711, column: 2)
!1386 = !DILocation(line: 713, column: 6, scope: !1385)
!1387 = !DILocation(line: 714, column: 2, scope: !1385)
!1388 = !DILocation(line: 0, scope: !1379)
!1389 = !DILocation(line: 715, column: 21, scope: !1379)
!1390 = !DILocation(line: 715, column: 46, scope: !1379)
!1391 = !DILocation(line: 715, column: 7, scope: !1379)
!1392 = !DILocation(line: 707, column: 3, scope: !1380)
!1393 = distinct !{!1393, !1377, !1394}
!1394 = !DILocation(line: 716, column: 5, scope: !1375)
!1395 = !DILocation(line: 718, column: 3, scope: !1355)
!1396 = !DILocation(line: 719, column: 3, scope: !1355)
!1397 = distinct !DISubprogram(name: "plugins_active_p", scope: !3, file: !3, line: 742, type: !248, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1398)
!1398 = !{!1399}
!1399 = !DILocalVariable(name: "event", scope: !1397, file: !3, line: 744, type: !202)
!1400 = !DILocation(line: 0, scope: !1397)
!1401 = !DILocation(line: 0, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 746, column: 3)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 746, column: 3)
!1404 = !DILocation(line: 0, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 747, column: 9)
!1406 = !DILocation(line: 746, column: 8, scope: !1403)
!1407 = !DILocation(line: 0, scope: !1403)
!1408 = !DILocation(line: 746, column: 49, scope: !1402)
!1409 = !DILocation(line: 746, column: 3, scope: !1403)
!1410 = !DILocation(line: 747, column: 9, scope: !1405)
!1411 = !DILocation(line: 747, column: 9, scope: !1402)
!1412 = !DILocation(line: 746, column: 68, scope: !1402)
!1413 = !DILocation(line: 746, column: 3, scope: !1402)
!1414 = distinct !{!1414, !1409, !1415}
!1415 = !DILocation(line: 748, column: 14, scope: !1403)
!1416 = !DILocation(line: 751, column: 1, scope: !1397)
!1417 = distinct !DISubprogram(name: "dump_active_plugins", scope: !3, file: !3, line: 758, type: !1418, scopeLine: 759, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !352}
!1420 = !{!1421, !1422, !1423}
!1421 = !DILocalVariable(name: "file", arg: 1, scope: !1417, file: !3, line: 758, type: !352)
!1422 = !DILocalVariable(name: "event", scope: !1417, file: !3, line: 760, type: !202)
!1423 = !DILocalVariable(name: "ci", scope: !1424, file: !3, line: 769, type: !226)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 768, column: 7)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 767, column: 9)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 766, column: 3)
!1427 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 766, column: 3)
!1428 = !DILocation(line: 0, scope: !1417)
!1429 = !DILocation(line: 762, column: 8, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 762, column: 7)
!1431 = !DILocation(line: 762, column: 7, scope: !1417)
!1432 = !DILocation(line: 765, column: 3, scope: !1417)
!1433 = !DILocation(line: 766, column: 8, scope: !1427)
!1434 = !DILocation(line: 0, scope: !1427)
!1435 = !DILocation(line: 766, column: 51, scope: !1426)
!1436 = !DILocation(line: 766, column: 49, scope: !1426)
!1437 = !DILocation(line: 766, column: 3, scope: !1427)
!1438 = !DILocation(line: 767, column: 9, scope: !1425)
!1439 = !DILocation(line: 767, column: 9, scope: !1426)
!1440 = !DILocation(line: 771, column: 44, scope: !1424)
!1441 = !DILocation(line: 771, column: 2, scope: !1424)
!1442 = !DILocation(line: 773, column: 12, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 773, column: 2)
!1444 = !DILocation(line: 773, column: 7, scope: !1443)
!1445 = !DILocation(line: 0, scope: !1443)
!1446 = !DILocation(line: 0, scope: !1424)
!1447 = !DILocation(line: 773, column: 2, scope: !1443)
!1448 = !DILocation(line: 774, column: 30, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 773, column: 2)
!1450 = !DILocation(line: 774, column: 4, scope: !1449)
!1451 = !DILocation(line: 773, column: 50, scope: !1449)
!1452 = !DILocation(line: 773, column: 2, scope: !1449)
!1453 = distinct !{!1453, !1447, !1454}
!1454 = !DILocation(line: 774, column: 41, scope: !1443)
!1455 = !DILocation(line: 776, column: 2, scope: !1424)
!1456 = !DILocation(line: 777, column: 7, scope: !1424)
!1457 = !DILocation(line: 766, column: 68, scope: !1426)
!1458 = !DILocation(line: 766, column: 3, scope: !1426)
!1459 = distinct !{!1459, !1437, !1460}
!1460 = !DILocation(line: 777, column: 7, scope: !1427)
!1461 = !DILocation(line: 778, column: 1, scope: !1417)
!1462 = distinct !DISubprogram(name: "debug_active_plugins", scope: !3, file: !3, line: 784, type: !1261, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!1463 = !DILocation(line: 786, column: 24, scope: !1462)
!1464 = !DILocation(line: 786, column: 3, scope: !1462)
!1465 = !DILocation(line: 787, column: 1, scope: !1462)
!1466 = distinct !DISubprogram(name: "plugin_default_version_check", scope: !3, file: !3, line: 792, type: !1467, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1477)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!201, !1469, !1469}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plugin_gcc_version", file: !211, line: 59, size: 320, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1475, !1476}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "basever", scope: !1470, file: !211, line: 61, baseType: !207, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "datestamp", scope: !1470, file: !211, line: 62, baseType: !207, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "devphase", scope: !1470, file: !211, line: 63, baseType: !207, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1470, file: !211, line: 64, baseType: !207, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "configuration_arguments", scope: !1470, file: !211, line: 65, baseType: !207, size: 64, offset: 256)
!1477 = !{!1478, !1479}
!1478 = !DILocalVariable(name: "gcc_version", arg: 1, scope: !1466, file: !3, line: 792, type: !1469)
!1479 = !DILocalVariable(name: "plugin_version", arg: 2, scope: !1466, file: !3, line: 793, type: !1469)
!1480 = !DILocation(line: 0, scope: !1466)
!1481 = !DILocation(line: 795, column: 8, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 795, column: 7)
!1483 = !DILocation(line: 795, column: 24, scope: !1482)
!1484 = !DILocation(line: 795, column: 20, scope: !1482)
!1485 = !DILocation(line: 798, column: 28, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 798, column: 7)
!1487 = !DILocation(line: 798, column: 53, scope: !1486)
!1488 = !DILocation(line: 798, column: 7, scope: !1486)
!1489 = !DILocation(line: 798, column: 7, scope: !1466)
!1490 = !DILocation(line: 800, column: 28, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 800, column: 7)
!1492 = !DILocation(line: 800, column: 55, scope: !1491)
!1493 = !DILocation(line: 800, column: 7, scope: !1491)
!1494 = !DILocation(line: 800, column: 7, scope: !1466)
!1495 = !DILocation(line: 802, column: 28, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 802, column: 7)
!1497 = !DILocation(line: 802, column: 54, scope: !1496)
!1498 = !DILocation(line: 802, column: 7, scope: !1496)
!1499 = !DILocation(line: 802, column: 7, scope: !1466)
!1500 = !DILocation(line: 804, column: 28, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 804, column: 7)
!1502 = !DILocation(line: 804, column: 54, scope: !1501)
!1503 = !DILocation(line: 804, column: 7, scope: !1501)
!1504 = !DILocation(line: 804, column: 7, scope: !1466)
!1505 = !DILocation(line: 806, column: 28, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 806, column: 7)
!1507 = !DILocation(line: 807, column: 24, scope: !1506)
!1508 = !DILocation(line: 806, column: 7, scope: !1506)
!1509 = !DILocation(line: 810, column: 1, scope: !1466)
!1510 = distinct !DISubprogram(name: "get_event_last", scope: !3, file: !3, line: 817, type: !453, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!1511 = !DILocation(line: 819, column: 10, scope: !1510)
!1512 = !DILocation(line: 819, column: 3, scope: !1510)
