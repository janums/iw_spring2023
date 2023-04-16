; ModuleID = 'dbgcnt.bc'
source_filename = "dbgcnt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.string2counter_map = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@count = internal unnamed_addr global [38 x i32] zeroinitializer, align 16, !dbg !0
@limit = internal unnamed_addr global [38 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16, !dbg !59
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [37 x i8] c"***dbgcnt: limit reached for %s.***\0A\00", align 1
@map = internal unnamed_addr constant [38 x %struct.string2counter_map] [%struct.string2counter_map { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 0 }, %struct.string2counter_map { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 1 }, %struct.string2counter_map { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 2 }, %struct.string2counter_map { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 3 }, %struct.string2counter_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 4 }, %struct.string2counter_map { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 5 }, %struct.string2counter_map { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 6 }, %struct.string2counter_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 7 }, %struct.string2counter_map { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 8 }, %struct.string2counter_map { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 9 }, %struct.string2counter_map { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 10 }, %struct.string2counter_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 11 }, %struct.string2counter_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 12 }, %struct.string2counter_map { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 13 }, %struct.string2counter_map { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 14 }, %struct.string2counter_map { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i32 15 }, %struct.string2counter_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 16 }, %struct.string2counter_map { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 17 }, %struct.string2counter_map { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 18 }, %struct.string2counter_map { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i32 19 }, %struct.string2counter_map { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i32 20 }, %struct.string2counter_map { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i32 21 }, %struct.string2counter_map { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 22 }, %struct.string2counter_map { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 23 }, %struct.string2counter_map { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 24 }, %struct.string2counter_map { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i32 25 }, %struct.string2counter_map { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i32 26 }, %struct.string2counter_map { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 27 }, %struct.string2counter_map { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 28 }, %struct.string2counter_map { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 29 }, %struct.string2counter_map { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i32 30 }, %struct.string2counter_map { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i32 31 }, %struct.string2counter_map { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0), i32 32 }, %struct.string2counter_map { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i32 33 }, %struct.string2counter_map { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i32 34 }, %struct.string2counter_map { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 35 }, %struct.string2counter_map { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i32 36 }, %struct.string2counter_map { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 37 }], align 16, !dbg !64
@.str.1 = private unnamed_addr constant [4 x i8] c"%*c\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Can not find a valid counter:value pair:\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-fdbg-cnt=%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"          %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"  %-30s %-5s %-5s\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"counter name\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"----------------------------------------------\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"  %-30s %5d %5u\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"auto_inc_dec\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ccp\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"cfg_cleanup\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"cse2_move2add\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"cprop\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dce\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"dce_fast\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"dce_ud\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"delete_trivial_dead\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"df_byte_scan\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"dse\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"dse1\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"dse2\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"gcse2_delete\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"global_alloc_at_func\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"global_alloc_at_reg\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"hoist\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"ia64_sched2\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"if_conversion\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"if_after_combine\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"if_after_reload\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"local_alloc_for_sched\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"postreload_cse\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"pre_insn\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"treepre_insert\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"sched2_func\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"sched_block\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"sched_func\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"sched_insn\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"sched_region\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"sel_sched_cnt\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"sel_sched_region_cnt\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"sel_sched_insn_cnt\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"sms_sched_loop\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"store_motion\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"split_for_sched2\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"tail_call\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.50 = private unnamed_addr constant [24 x i8] c"dbg_cnt '%s' set to %d\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !75 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !88, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !91
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !92
  ret i32 %call, !dbg !93
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !94 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !98
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !99
  ret i32 %call, !dbg !100
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !101 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !164, metadata !DIExpression()), !dbg !165
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !166
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !166
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !166
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !166
  %cmp = icmp uge i8* %0, %1, !dbg !166
  %conv1 = zext i1 %cmp to i64, !dbg !166
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !166
  %tobool = icmp eq i64 %expval, 0, !dbg !166
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !166

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !166
  br label %cond.end, !dbg !166

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !166
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !166
  %2 = load i8, i8* %0, align 1, !dbg !166
  %conv3 = zext i8 %2 to i32, !dbg !166
  br label %cond.end, !dbg !166

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !166
  ret i32 %cond, !dbg !167
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !170, metadata !DIExpression()), !dbg !171
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !172
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !172
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !172
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !172
  %cmp = icmp uge i8* %0, %1, !dbg !172
  %conv1 = zext i1 %cmp to i64, !dbg !172
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !172
  %tobool = icmp eq i64 %expval, 0, !dbg !172
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !172

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !172
  br label %cond.end, !dbg !172

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !172
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !172
  %2 = load i8, i8* %0, align 1, !dbg !172
  %conv3 = zext i8 %2 to i32, !dbg !172
  br label %cond.end, !dbg !172

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !172
  ret i32 %cond, !dbg !173
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !174 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !175
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !175
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !175
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !175
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !175
  %cmp = icmp uge i8* %1, %2, !dbg !175
  %conv1 = zext i1 %cmp to i64, !dbg !175
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !175
  %tobool = icmp eq i64 %expval, 0, !dbg !175
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !175

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !175
  br label %cond.end, !dbg !175

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !175
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !175
  %3 = load i8, i8* %1, align 1, !dbg !175
  %conv3 = zext i8 %3 to i32, !dbg !175
  br label %cond.end, !dbg !175

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !175
  ret i32 %cond, !dbg !176
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !183
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !184
  ret i32 %call, !dbg !185
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !186 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !190, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !191, metadata !DIExpression()), !dbg !192
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !193
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !193
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !193
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !193
  %cmp = icmp uge i8* %0, %1, !dbg !193
  %conv1 = zext i1 %cmp to i64, !dbg !193
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !193
  %tobool = icmp eq i64 %expval, 0, !dbg !193
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !193

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !193
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !193
  br label %cond.end, !dbg !193

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !193
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !193
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !193
  store i8 %conv2, i8* %0, align 1, !dbg !193
  %conv6 = and i32 %__c, 255, !dbg !193
  br label %cond.end, !dbg !193

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !193
  ret i32 %cond, !dbg !194
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !195 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !197, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !198, metadata !DIExpression()), !dbg !199
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !200
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !200
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !200
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !200
  %cmp = icmp uge i8* %0, %1, !dbg !200
  %conv1 = zext i1 %cmp to i64, !dbg !200
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !200
  %tobool = icmp eq i64 %expval, 0, !dbg !200
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !200

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !200
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !200
  br label %cond.end, !dbg !200

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !200
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !200
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !200
  store i8 %conv2, i8* %0, align 1, !dbg !200
  %conv6 = and i32 %__c, 255, !dbg !200
  br label %cond.end, !dbg !200

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !200
  ret i32 %cond, !dbg !201
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !202 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !206
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !206
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !206
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !206
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !206
  %cmp = icmp uge i8* %1, %2, !dbg !206
  %conv1 = zext i1 %cmp to i64, !dbg !206
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !206
  %tobool = icmp eq i64 %expval, 0, !dbg !206
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !206

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !206
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !206
  br label %cond.end, !dbg !206

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !206
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !206
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !206
  store i8 %conv4, i8* %1, align 1, !dbg !206
  %conv6 = and i32 %__c, 255, !dbg !206
  br label %cond.end, !dbg !206

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !206
  ret i32 %cond, !dbg !207
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !208 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !214, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i64* %__n, metadata !215, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !216, metadata !DIExpression()), !dbg !217
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !218
  ret i64 %call, !dbg !219
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !220 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !222, metadata !DIExpression()), !dbg !223
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !224
  %0 = load i32, i32* %_flags, align 8, !dbg !224
  %and = lshr i32 %0, 4, !dbg !224
  %and.lobit = and i32 %and, 1, !dbg !224
  ret i32 %and.lobit, !dbg !225
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !226 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !228, metadata !DIExpression()), !dbg !229
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !230
  %0 = load i32, i32* %_flags, align 8, !dbg !230
  %and = lshr i32 %0, 5, !dbg !230
  %and.lobit = and i32 %and, 1, !dbg !230
  ret i32 %and.lobit, !dbg !231
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !235, metadata !DIExpression()), !dbg !236
  %__c.off = add i32 %__c, 128, !dbg !237
  %0 = icmp ult i32 %__c.off, 384, !dbg !237
  br i1 %0, label %cond.true, label %cond.end, !dbg !237

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !238
  %1 = load i32*, i32** %call, align 8, !dbg !239
  %idxprom = sext i32 %__c to i64, !dbg !240
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !240
  %2 = load i32, i32* %arrayidx, align 4, !dbg !240
  br label %cond.end, !dbg !241

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !241
  ret i32 %cond, !dbg !242
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !245, metadata !DIExpression()), !dbg !246
  %__c.off = add i32 %__c, 128, !dbg !247
  %0 = icmp ult i32 %__c.off, 384, !dbg !247
  br i1 %0, label %cond.true, label %cond.end, !dbg !247

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !248
  %1 = load i32*, i32** %call, align 8, !dbg !249
  %idxprom = sext i32 %__c to i64, !dbg !250
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !250
  %2 = load i32, i32* %arrayidx, align 4, !dbg !250
  br label %cond.end, !dbg !251

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !251
  ret i32 %cond, !dbg !252
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !253 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !258, metadata !DIExpression()), !dbg !259
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !260
  %conv = trunc i64 %call to i32, !dbg !261
  ret i32 %conv, !dbg !262
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !263 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !267, metadata !DIExpression()), !dbg !268
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !269
  ret i64 %call, !dbg !270
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !271 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !276, metadata !DIExpression()), !dbg !277
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !278
  ret i64 %call, !dbg !279
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !280 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !291, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i8* %__base, metadata !292, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !293, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %__size, metadata !294, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !295, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 0, metadata !296, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !297, metadata !DIExpression()), !dbg !301
  br label %while.cond, !dbg !302

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !303
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !301
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !297, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !296, metadata !DIExpression()), !dbg !301
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !304
  br i1 %cmp, label %while.body, label %cleanup, !dbg !302

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !305
  %div = lshr i64 %add, 1, !dbg !307
  call void @llvm.dbg.value(metadata i64 %div, metadata !298, metadata !DIExpression()), !dbg !301
  %mul = mul i64 %div, %__size, !dbg !308
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !309
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !299, metadata !DIExpression()), !dbg !301
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !310
  call void @llvm.dbg.value(metadata i32 %call, metadata !300, metadata !DIExpression()), !dbg !301
  %cmp1 = icmp slt i32 %call, 0, !dbg !311
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !313

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !314
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !316

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !317
  call void @llvm.dbg.value(metadata i64 %add4, metadata !296, metadata !DIExpression()), !dbg !301
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !301
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !301
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !297, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !296, metadata !DIExpression()), !dbg !301
  br label %while.cond, !dbg !302, !llvm.loop !318

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !301
  ret i8* %retval.0, !dbg !320
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !321 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !327, metadata !DIExpression()), !dbg !328
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !329
  ret double %call, !dbg !330
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !331 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !340, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !341, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %base, metadata !342, metadata !DIExpression()), !dbg !343
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !344
  ret i64 %call, !dbg !345
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !346 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !352, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !353, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i32 %base, metadata !354, metadata !DIExpression()), !dbg !355
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !356
  ret i64 %call, !dbg !357
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !358 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !369, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !370, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %base, metadata !371, metadata !DIExpression()), !dbg !372
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !373
  ret i64 %call, !dbg !374
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !375 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !379, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %base, metadata !381, metadata !DIExpression()), !dbg !382
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !383
  ret i64 %call, !dbg !384
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !385 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !428, metadata !DIExpression()), !dbg !429
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !430
  ret i32 %call, !dbg !431
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !432 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !434, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !435, metadata !DIExpression()), !dbg !436
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !437
  ret i32 %call, !dbg !438
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !439 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !443, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !444, metadata !DIExpression()), !dbg !445
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !446
  ret i32 %call, !dbg !447
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !448 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !452, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !453, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !454, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !455, metadata !DIExpression()), !dbg !456
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !457
  ret i32 %call, !dbg !458
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !459 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !463, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !464, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !465, metadata !DIExpression()), !dbg !466
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !466
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !467
  ret i32 %call, !dbg !468
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !469 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !473, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i8* %__path, metadata !474, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !475, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !476, metadata !DIExpression()), !dbg !477
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !476, metadata !DIExpression(DW_OP_deref)), !dbg !477
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !478
  ret i32 %call, !dbg !479
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !480 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !504, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !505, metadata !DIExpression()), !dbg !506
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !507
  ret i32 %call, !dbg !508
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !509 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !511, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !512, metadata !DIExpression()), !dbg !513
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !514
  ret i32 %call, !dbg !515
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !520, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !521, metadata !DIExpression()), !dbg !522
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !523
  ret i32 %call, !dbg !524
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !525 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !529, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !530, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !531, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !532, metadata !DIExpression()), !dbg !533
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !534
  ret i32 %call, !dbg !535
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @dbg_cnt_is_enabled(i32 %index) local_unnamed_addr #4 !dbg !536 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !540, metadata !DIExpression()), !dbg !541
  %idxprom = zext i32 %index to i64, !dbg !542
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* @count, i64 0, i64 %idxprom, !dbg !542
  %0 = load i32, i32* %arrayidx, align 4, !dbg !542
  %arrayidx2 = getelementptr inbounds [38 x i32], [38 x i32]* @limit, i64 0, i64 %idxprom, !dbg !543
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !543
  %cmp = icmp ule i32 %0, %1, !dbg !544
  %conv3 = zext i1 %cmp to i8, !dbg !542
  ret i8 %conv3, !dbg !545
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @dbg_cnt(i32 %index) local_unnamed_addr #4 !dbg !546 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !548, metadata !DIExpression()), !dbg !549
  %idxprom = zext i32 %index to i64, !dbg !550
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* @count, i64 0, i64 %idxprom, !dbg !550
  %0 = load i32, i32* %arrayidx, align 4, !dbg !551
  %inc = add i32 %0, 1, !dbg !551
  store i32 %inc, i32* %arrayidx, align 4, !dbg !551
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !552
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !552
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !554

land.lhs.true:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [38 x i32], [38 x i32]* @limit, i64 0, i64 %idxprom, !dbg !555
  %2 = load i32, i32* %arrayidx4, align 4, !dbg !555
  %cmp = icmp eq i32 %inc, %2, !dbg !556
  br i1 %cmp, label %if.then, label %if.end, !dbg !557

if.then:                                          ; preds = %land.lhs.true
  %name = getelementptr inbounds [38 x %struct.string2counter_map], [38 x %struct.string2counter_map]* @map, i64 0, i64 %idxprom, i32 0, !dbg !558
  %3 = load i8*, i8** %name, align 16, !dbg !558
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %3) #6, !dbg !559
  br label %if.end, !dbg !559

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  %call7 = tail call zeroext i8 @dbg_cnt_is_enabled(i32 %index) #7, !dbg !560
  ret i8 %call7, !dbg !561
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dbg_cnt_process_opt(i8* %arg) local_unnamed_addr #4 !dbg !562 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !566, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i8* %arg, metadata !567, metadata !DIExpression()), !dbg !572
  br label %do.body, !dbg !573

do.body:                                          ; preds = %do.cond, %entry
  %arg.addr.0 = phi i8* [ %arg, %entry ], [ %arg.addr.1, %do.cond ]
  call void @llvm.dbg.value(metadata i8* %arg.addr.0, metadata !566, metadata !DIExpression()), !dbg !572
  %call = tail call fastcc i8* @dbg_cnt_process_single_pair(i8* %arg.addr.0) #7, !dbg !574
  call void @llvm.dbg.value(metadata i8* %call, metadata !568, metadata !DIExpression()), !dbg !572
  %cmp = icmp eq i8* %call, null, !dbg !576
  br i1 %cmp, label %do.end, label %do.cond, !dbg !578

do.cond:                                          ; preds = %do.body
  %0 = load i8, i8* %call, align 1, !dbg !579
  %cmp1 = icmp eq i8 %0, 44, !dbg !580
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1, !dbg !581
  %arg.addr.1 = select i1 %cmp1, i8* %add.ptr, i8* %arg.addr.0, !dbg !581
  call void @llvm.dbg.value(metadata i8* %arg.addr.1, metadata !566, metadata !DIExpression()), !dbg !572
  br i1 %cmp1, label %do.body, label %do.end, !dbg !582, !llvm.loop !583

do.end:                                           ; preds = %do.body, %do.cond
  %call.lcssa = phi i8* [ %call, %do.body ], [ %call, %do.cond ], !dbg !574
  %cmp.lcssa = phi i1 [ %cmp, %do.body ], [ %cmp, %do.cond ], !dbg !576
  %arg.addr.2 = phi i8* [ %arg.addr.1, %do.cond ], [ %arg.addr.0, %do.body ]
  call void @llvm.dbg.value(metadata i8* %arg.addr.2, metadata !566, metadata !DIExpression()), !dbg !572
  br i1 %cmp.lcssa, label %if.then8, label %lor.lhs.false, !dbg !585

lor.lhs.false:                                    ; preds = %do.end
  %1 = load i8, i8* %call.lcssa, align 1, !dbg !586
  %cmp6 = icmp eq i8 %1, 0, !dbg !587
  br i1 %cmp6, label %if.end15, label %if.then8, !dbg !588

if.then8:                                         ; preds = %lor.lhs.false, %do.end
  %sub.ptr.lhs.cast = ptrtoint i8* %arg.addr.2 to i64, !dbg !589
  %sub.ptr.rhs.cast = ptrtoint i8* %arg to i64, !dbg !589
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !589
  %add = add nsw i64 %sub.ptr.sub, 2, !dbg !589
  %2 = alloca i8, i64 %add, align 16, !dbg !589
  call void @llvm.dbg.value(metadata i8* %2, metadata !569, metadata !DIExpression()), !dbg !590
  %3 = trunc i64 %sub.ptr.sub to i32, !dbg !591
  %conv13 = add i32 %3, 1, !dbg !591
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %conv13, i32 94) #6, !dbg !592
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !593
  call void (i8*, ...) @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %arg) #6, !dbg !594
  call void (i8*, ...) @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %2) #6, !dbg !595
  br label %if.end15, !dbg !596

if.end15:                                         ; preds = %lor.lhs.false, %if.then8
  ret void, !dbg !597
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @dbg_cnt_process_single_pair(i8* %arg) unnamed_addr #4 !dbg !598 {
entry:
  %endptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %arg, metadata !602, metadata !DIExpression()), !dbg !606
  %call = tail call i8* @strchr(i8* %arg, i32 58) #6, !dbg !607
  call void @llvm.dbg.value(metadata i8* %call, metadata !603, metadata !DIExpression()), !dbg !606
  %0 = bitcast i8** %endptr to i8*, !dbg !608
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !608
  call void @llvm.dbg.value(metadata i8* null, metadata !604, metadata !DIExpression()), !dbg !606
  store i8* null, i8** %endptr, align 8, !dbg !609
  %cmp = icmp eq i8* %call, null, !dbg !610
  br i1 %cmp, label %cleanup, label %if.end, !dbg !612

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1, !dbg !613
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !604, metadata !DIExpression(DW_OP_deref)), !dbg !606
  %call1 = call i64 @strtol(i8* nonnull %add.ptr, i8** nonnull %endptr, i32 10) #6, !dbg !614
  %conv = trunc i64 %call1 to i32, !dbg !614
  call void @llvm.dbg.value(metadata i32 %conv, metadata !605, metadata !DIExpression()), !dbg !606
  %1 = load i8*, i8** %endptr, align 8, !dbg !615
  call void @llvm.dbg.value(metadata i8* %1, metadata !604, metadata !DIExpression()), !dbg !606
  %cmp2 = icmp eq i8* %1, null, !dbg !617
  br i1 %cmp2, label %cleanup, label %land.lhs.true, !dbg !618

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* %1, metadata !604, metadata !DIExpression()), !dbg !606
  %cmp5 = icmp eq i8* %1, %add.ptr, !dbg !619
  br i1 %cmp5, label %cleanup, label %land.lhs.true7, !dbg !620

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64, !dbg !621
  %sub.ptr.rhs.cast = ptrtoint i8* %arg to i64, !dbg !621
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !621
  %conv8 = trunc i64 %sub.ptr.sub to i32, !dbg !622
  %call9 = call fastcc zeroext i8 @dbg_cnt_set_limit_by_name(i8* %arg, i32 %conv8, i32 %conv) #7, !dbg !623
  %tobool = icmp eq i8 %call9, 0, !dbg !623
  %2 = load i8*, i8** %endptr, align 8, !dbg !624
  call void @llvm.dbg.value(metadata i8* %2, metadata !604, metadata !DIExpression()), !dbg !606
  %spec.select = select i1 %tobool, i8* null, i8* %2, !dbg !625
  br label %cleanup, !dbg !625

cleanup:                                          ; preds = %land.lhs.true, %if.end, %land.lhs.true7, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %land.lhs.true ], [ null, %if.end ], [ %spec.select, %land.lhs.true7 ], !dbg !606
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !626
  ret i8* %retval.0, !dbg !626
}

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #1

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dbg_cnt_list_all_counters() local_unnamed_addr #4 !dbg !627 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !632
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !633
  call void @llvm.dbg.value(metadata i32 0, metadata !631, metadata !DIExpression()), !dbg !634
  br label %for.cond, !dbg !635

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !637
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !631, metadata !DIExpression()), !dbg !634
  %exitcond = icmp eq i64 %indvars.iv, 38, !dbg !638
  br i1 %exitcond, label %for.end, label %for.body, !dbg !640

for.body:                                         ; preds = %for.cond
  %name = getelementptr inbounds [38 x %struct.string2counter_map], [38 x %struct.string2counter_map]* @map, i64 0, i64 %indvars.iv, i32 0, !dbg !641
  %0 = load i8*, i8** %name, align 16, !dbg !641
  %counter = getelementptr inbounds [38 x %struct.string2counter_map], [38 x %struct.string2counter_map]* @map, i64 0, i64 %indvars.iv, i32 1, !dbg !642
  %1 = load i32, i32* %counter, align 8, !dbg !642
  %idxprom4 = zext i32 %1 to i64, !dbg !643
  %arrayidx5 = getelementptr inbounds [38 x i32], [38 x i32]* @limit, i64 0, i64 %idxprom4, !dbg !643
  %2 = load i32, i32* %arrayidx5, align 4, !dbg !643
  %arrayidx10 = getelementptr inbounds [38 x i32], [38 x i32]* @count, i64 0, i64 %idxprom4, !dbg !644
  %3 = load i32, i32* %arrayidx10, align 4, !dbg !644
  %call11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %0, i32 %2, i32 %3) #6, !dbg !645
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !646
  call void @llvm.dbg.value(metadata i32 undef, metadata !631, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !634
  br label %for.cond, !dbg !647, !llvm.loop !648

for.end:                                          ; preds = %for.cond
  %call12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !650
  ret void, !dbg !651
}

declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #1

declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @dbg_cnt_set_limit_by_name(i8* %name, i32 %len, i32 %value) unnamed_addr #4 !dbg !652 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !656, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32 %len, metadata !657, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32 %value, metadata !658, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32 37, metadata !659, metadata !DIExpression()), !dbg !660
  %conv = sext i32 %len to i64, !dbg !661
  br label %for.cond, !dbg !665

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 37, %entry ], !dbg !666
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !659, metadata !DIExpression()), !dbg !660
  %cmp = icmp sgt i64 %indvars.iv, -1, !dbg !667
  %0 = trunc i64 %indvars.iv to i32, !dbg !668
  br i1 %cmp, label %for.body, label %for.end, !dbg !668

for.body:                                         ; preds = %for.cond
  %name1 = getelementptr inbounds [38 x %struct.string2counter_map], [38 x %struct.string2counter_map]* @map, i64 0, i64 %indvars.iv, i32 0, !dbg !669
  %1 = load i8*, i8** %name1, align 16, !dbg !669
  %call = tail call i32 @strncmp(i8* %1, i8* %name, i64 %conv) #6, !dbg !670
  %cmp2 = icmp eq i32 %call, 0, !dbg !671
  br i1 %cmp2, label %land.lhs.true, label %for.inc, !dbg !672

land.lhs.true:                                    ; preds = %for.body
  %arrayidx8 = getelementptr inbounds i8, i8* %1, i64 %conv, !dbg !673
  %2 = load i8, i8* %arrayidx8, align 1, !dbg !673
  %cmp10 = icmp eq i8 %2, 0, !dbg !674
  br i1 %cmp10, label %for.end, label %for.inc, !dbg !675

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !676
  call void @llvm.dbg.value(metadata i32 undef, metadata !659, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !660
  br label %for.cond, !dbg !677, !llvm.loop !678

for.end:                                          ; preds = %land.lhs.true, %for.cond
  %.lcssa = phi i32 [ %0, %land.lhs.true ], [ %0, %for.cond ], !dbg !668
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !659, metadata !DIExpression()), !dbg !660
  %cmp12 = icmp slt i32 %.lcssa, 0, !dbg !680
  br i1 %cmp12, label %cleanup, label %if.end15, !dbg !682

if.end15:                                         ; preds = %for.end
  tail call fastcc void @dbg_cnt_set_limit_by_index(i32 %.lcssa, i32 %value) #7, !dbg !683
  br label %cleanup, !dbg !684

cleanup:                                          ; preds = %for.end, %if.end15
  %retval.0 = phi i8 [ 1, %if.end15 ], [ 0, %for.end ], !dbg !660
  ret i8 %retval.0, !dbg !685
}

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dbg_cnt_set_limit_by_index(i32 %index, i32 %value) unnamed_addr #4 !dbg !686 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !690, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i32 %value, metadata !691, metadata !DIExpression()), !dbg !692
  %idxprom = zext i32 %index to i64, !dbg !693
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* @limit, i64 0, i64 %idxprom, !dbg !693
  store i32 %value, i32* %arrayidx, align 4, !dbg !694
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !695
  %name = getelementptr inbounds [38 x %struct.string2counter_map], [38 x %struct.string2counter_map]* @map, i64 0, i64 %idxprom, i32 0, !dbg !696
  %1 = load i8*, i8** %name, align 16, !dbg !696
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0), i8* %1, i32 %value) #6, !dbg !697
  ret void, !dbg !698
}

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
!llvm.module.flags = !{!71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "count", scope: !2, file: !3, line: 52, type: !61, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !48, globals: !58, nameTableKind: None)
!3 = !DIFile(filename: "dbgcnt.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "debug_counter", file: !6, line: 27, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./dbgcnt.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!9 = !DIEnumerator(name: "auto_inc_dec", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "ccp", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "cfg_cleanup", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "cse2_move2add", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "cprop", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "dce", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "dce_fast", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "dce_ud", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "delete_trivial_dead", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "df_byte_scan", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "dse", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "dse1", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "dse2", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "gcse2_delete", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "global_alloc_at_func", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "global_alloc_at_reg", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "hoist", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "ia64_sched2", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "if_conversion", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "if_after_combine", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "if_after_reload", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "local_alloc_for_sched", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "postreload_cse", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "pre", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "pre_insn", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "treepre_insert", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "sched2_func", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "sched_block", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "sched_func", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "sched_insn", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "sched_region", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "sel_sched_cnt", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "sel_sched_region_cnt", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "sel_sched_insn_cnt", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "sms_sched_loop", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "store_motion", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "split_for_sched2", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "tail_call", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "debug_counter_number_of_counters", value: 38, isUnsigned: true)
!48 = !{!49, !50, !51, !52, !55, !56, !53, !5}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!58 = !{!0, !59, !64}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "limit", scope: !2, file: !3, line: 46, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1216, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 38)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "map", scope: !2, file: !3, line: 39, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 4864, elements: !62)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string2counter_map", file: !3, line: 32, size: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !3, line: 33, baseType: !56, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !67, file: !3, line: 34, baseType: !5, size: 32, offset: 64)
!71 = !{i32 2, !"Dwarf Version", i32 4}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{i32 1, !"wchar_size", i32 4}
!74 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!75 = distinct !DISubprogram(name: "vprintf", scope: !76, file: !76, line: 39, type: !77, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!77 = !DISubroutineType(types: !78)
!78 = !{!51, !79, !80}
!79 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !81, file: !3, baseType: !7, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !81, file: !3, baseType: !7, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !81, file: !3, baseType: !55, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !81, file: !3, baseType: !55, size: 64, offset: 128)
!87 = !{!88, !89}
!88 = !DILocalVariable(name: "__fmt", arg: 1, scope: !75, file: !76, line: 39, type: !79)
!89 = !DILocalVariable(name: "__arg", arg: 2, scope: !75, file: !76, line: 39, type: !80)
!90 = !DILocation(line: 0, scope: !75)
!91 = !DILocation(line: 41, column: 20, scope: !75)
!92 = !DILocation(line: 41, column: 10, scope: !75)
!93 = !DILocation(line: 41, column: 3, scope: !75)
!94 = distinct !DISubprogram(name: "getchar", scope: !76, file: !76, line: 47, type: !95, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!51}
!97 = !{}
!98 = !DILocation(line: 49, column: 16, scope: !94)
!99 = !DILocation(line: 49, column: 10, scope: !94)
!100 = !DILocation(line: 49, column: 3, scope: !94)
!101 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !76, file: !76, line: 56, type: !102, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!102 = !DISubroutineType(types: !103)
!103 = !{!51, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !106, line: 7, baseType: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !108, line: 49, size: 1728, elements: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !125, !127, !128, !129, !133, !135, !137, !141, !144, !146, !149, !152, !153, !154, !158, !159}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !107, file: !108, line: 51, baseType: !51, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !107, file: !108, line: 54, baseType: !53, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !107, file: !108, line: 55, baseType: !53, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !107, file: !108, line: 56, baseType: !53, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !107, file: !108, line: 57, baseType: !53, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !107, file: !108, line: 58, baseType: !53, size: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !107, file: !108, line: 59, baseType: !53, size: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !107, file: !108, line: 60, baseType: !53, size: 64, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !107, file: !108, line: 61, baseType: !53, size: 64, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !107, file: !108, line: 64, baseType: !53, size: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !107, file: !108, line: 65, baseType: !53, size: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !107, file: !108, line: 66, baseType: !53, size: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !107, file: !108, line: 68, baseType: !123, size: 64, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !108, line: 36, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !107, file: !108, line: 70, baseType: !126, size: 64, offset: 832)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !107, file: !108, line: 72, baseType: !51, size: 32, offset: 896)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !107, file: !108, line: 73, baseType: !51, size: 32, offset: 928)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !107, file: !108, line: 74, baseType: !130, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !131, line: 152, baseType: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!132 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !107, file: !108, line: 77, baseType: !134, size: 16, offset: 1024)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !107, file: !108, line: 78, baseType: !136, size: 8, offset: 1040)
!136 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !107, file: !108, line: 79, baseType: !138, size: 8, offset: 1048)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 1)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !107, file: !108, line: 81, baseType: !142, size: 64, offset: 1088)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !108, line: 43, baseType: null)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !107, file: !108, line: 89, baseType: !145, size: 64, offset: 1152)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !131, line: 153, baseType: !132)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !107, file: !108, line: 91, baseType: !147, size: 64, offset: 1216)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !108, line: 37, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !107, file: !108, line: 92, baseType: !150, size: 64, offset: 1280)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !108, line: 38, flags: DIFlagFwdDecl)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !107, file: !108, line: 93, baseType: !126, size: 64, offset: 1344)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !107, file: !108, line: 94, baseType: !55, size: 64, offset: 1408)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !107, file: !108, line: 95, baseType: !155, size: 64, offset: 1472)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 46, baseType: !157)
!156 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!157 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !107, file: !108, line: 96, baseType: !51, size: 32, offset: 1536)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !107, file: !108, line: 98, baseType: !160, size: 160, offset: 1568)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 20)
!163 = !{!164}
!164 = !DILocalVariable(name: "__fp", arg: 1, scope: !101, file: !76, line: 56, type: !104)
!165 = !DILocation(line: 0, scope: !101)
!166 = !DILocation(line: 58, column: 10, scope: !101)
!167 = !DILocation(line: 58, column: 3, scope: !101)
!168 = distinct !DISubprogram(name: "getc_unlocked", scope: !76, file: !76, line: 66, type: !102, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "__fp", arg: 1, scope: !168, file: !76, line: 66, type: !104)
!171 = !DILocation(line: 0, scope: !168)
!172 = !DILocation(line: 68, column: 10, scope: !168)
!173 = !DILocation(line: 68, column: 3, scope: !168)
!174 = distinct !DISubprogram(name: "getchar_unlocked", scope: !76, file: !76, line: 73, type: !95, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!175 = !DILocation(line: 75, column: 10, scope: !174)
!176 = !DILocation(line: 75, column: 3, scope: !174)
!177 = distinct !DISubprogram(name: "putchar", scope: !76, file: !76, line: 82, type: !178, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!51, !51}
!180 = !{!181}
!181 = !DILocalVariable(name: "__c", arg: 1, scope: !177, file: !76, line: 82, type: !51)
!182 = !DILocation(line: 0, scope: !177)
!183 = !DILocation(line: 84, column: 21, scope: !177)
!184 = !DILocation(line: 84, column: 10, scope: !177)
!185 = !DILocation(line: 84, column: 3, scope: !177)
!186 = distinct !DISubprogram(name: "fputc_unlocked", scope: !76, file: !76, line: 91, type: !187, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!51, !51, !104}
!189 = !{!190, !191}
!190 = !DILocalVariable(name: "__c", arg: 1, scope: !186, file: !76, line: 91, type: !51)
!191 = !DILocalVariable(name: "__stream", arg: 2, scope: !186, file: !76, line: 91, type: !104)
!192 = !DILocation(line: 0, scope: !186)
!193 = !DILocation(line: 93, column: 10, scope: !186)
!194 = !DILocation(line: 93, column: 3, scope: !186)
!195 = distinct !DISubprogram(name: "putc_unlocked", scope: !76, file: !76, line: 101, type: !187, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !196)
!196 = !{!197, !198}
!197 = !DILocalVariable(name: "__c", arg: 1, scope: !195, file: !76, line: 101, type: !51)
!198 = !DILocalVariable(name: "__stream", arg: 2, scope: !195, file: !76, line: 101, type: !104)
!199 = !DILocation(line: 0, scope: !195)
!200 = !DILocation(line: 103, column: 10, scope: !195)
!201 = !DILocation(line: 103, column: 3, scope: !195)
!202 = distinct !DISubprogram(name: "putchar_unlocked", scope: !76, file: !76, line: 108, type: !178, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!203 = !{!204}
!204 = !DILocalVariable(name: "__c", arg: 1, scope: !202, file: !76, line: 108, type: !51)
!205 = !DILocation(line: 0, scope: !202)
!206 = !DILocation(line: 110, column: 10, scope: !202)
!207 = !DILocation(line: 110, column: 3, scope: !202)
!208 = distinct !DISubprogram(name: "getline", scope: !76, file: !76, line: 118, type: !209, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !52, !212, !104}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !131, line: 193, baseType: !132)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!213 = !{!214, !215, !216}
!214 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !208, file: !76, line: 118, type: !52)
!215 = !DILocalVariable(name: "__n", arg: 2, scope: !208, file: !76, line: 118, type: !212)
!216 = !DILocalVariable(name: "__stream", arg: 3, scope: !208, file: !76, line: 118, type: !104)
!217 = !DILocation(line: 0, scope: !208)
!218 = !DILocation(line: 120, column: 10, scope: !208)
!219 = !DILocation(line: 120, column: 3, scope: !208)
!220 = distinct !DISubprogram(name: "feof_unlocked", scope: !76, file: !76, line: 128, type: !102, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !221)
!221 = !{!222}
!222 = !DILocalVariable(name: "__stream", arg: 1, scope: !220, file: !76, line: 128, type: !104)
!223 = !DILocation(line: 0, scope: !220)
!224 = !DILocation(line: 130, column: 10, scope: !220)
!225 = !DILocation(line: 130, column: 3, scope: !220)
!226 = distinct !DISubprogram(name: "ferror_unlocked", scope: !76, file: !76, line: 135, type: !102, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !227)
!227 = !{!228}
!228 = !DILocalVariable(name: "__stream", arg: 1, scope: !226, file: !76, line: 135, type: !104)
!229 = !DILocation(line: 0, scope: !226)
!230 = !DILocation(line: 137, column: 10, scope: !226)
!231 = !DILocation(line: 137, column: 3, scope: !226)
!232 = distinct !DISubprogram(name: "tolower", scope: !233, file: !233, line: 207, type: !178, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !234)
!233 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!234 = !{!235}
!235 = !DILocalVariable(name: "__c", arg: 1, scope: !232, file: !233, line: 207, type: !51)
!236 = !DILocation(line: 0, scope: !232)
!237 = !DILocation(line: 209, column: 22, scope: !232)
!238 = !DILocation(line: 209, column: 39, scope: !232)
!239 = !DILocation(line: 209, column: 38, scope: !232)
!240 = !DILocation(line: 209, column: 37, scope: !232)
!241 = !DILocation(line: 209, column: 10, scope: !232)
!242 = !DILocation(line: 209, column: 3, scope: !232)
!243 = distinct !DISubprogram(name: "toupper", scope: !233, file: !233, line: 213, type: !178, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!244 = !{!245}
!245 = !DILocalVariable(name: "__c", arg: 1, scope: !243, file: !233, line: 213, type: !51)
!246 = !DILocation(line: 0, scope: !243)
!247 = !DILocation(line: 215, column: 22, scope: !243)
!248 = !DILocation(line: 215, column: 39, scope: !243)
!249 = !DILocation(line: 215, column: 38, scope: !243)
!250 = !DILocation(line: 215, column: 37, scope: !243)
!251 = !DILocation(line: 215, column: 10, scope: !243)
!252 = !DILocation(line: 215, column: 3, scope: !243)
!253 = distinct !DISubprogram(name: "atoi", scope: !254, file: !254, line: 361, type: !255, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !257)
!254 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!255 = !DISubroutineType(types: !256)
!256 = !{!51, !56}
!257 = !{!258}
!258 = !DILocalVariable(name: "__nptr", arg: 1, scope: !253, file: !254, line: 361, type: !56)
!259 = !DILocation(line: 0, scope: !253)
!260 = !DILocation(line: 363, column: 16, scope: !253)
!261 = !DILocation(line: 363, column: 10, scope: !253)
!262 = !DILocation(line: 363, column: 3, scope: !253)
!263 = distinct !DISubprogram(name: "atol", scope: !254, file: !254, line: 366, type: !264, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!132, !56}
!266 = !{!267}
!267 = !DILocalVariable(name: "__nptr", arg: 1, scope: !263, file: !254, line: 366, type: !56)
!268 = !DILocation(line: 0, scope: !263)
!269 = !DILocation(line: 368, column: 10, scope: !263)
!270 = !DILocation(line: 368, column: 3, scope: !263)
!271 = distinct !DISubprogram(name: "atoll", scope: !254, file: !254, line: 373, type: !272, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !56}
!274 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!275 = !{!276}
!276 = !DILocalVariable(name: "__nptr", arg: 1, scope: !271, file: !254, line: 373, type: !56)
!277 = !DILocation(line: 0, scope: !271)
!278 = !DILocation(line: 375, column: 10, scope: !271)
!279 = !DILocation(line: 375, column: 3, scope: !271)
!280 = distinct !DISubprogram(name: "bsearch", scope: !281, file: !281, line: 20, type: !282, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!282 = !DISubroutineType(types: !283)
!283 = !{!55, !284, !284, !155, !155, !286}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !254, line: 808, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!51, !284, !284}
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!291 = !DILocalVariable(name: "__key", arg: 1, scope: !280, file: !281, line: 20, type: !284)
!292 = !DILocalVariable(name: "__base", arg: 2, scope: !280, file: !281, line: 20, type: !284)
!293 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !280, file: !281, line: 20, type: !155)
!294 = !DILocalVariable(name: "__size", arg: 4, scope: !280, file: !281, line: 20, type: !155)
!295 = !DILocalVariable(name: "__compar", arg: 5, scope: !280, file: !281, line: 21, type: !286)
!296 = !DILocalVariable(name: "__l", scope: !280, file: !281, line: 23, type: !155)
!297 = !DILocalVariable(name: "__u", scope: !280, file: !281, line: 23, type: !155)
!298 = !DILocalVariable(name: "__idx", scope: !280, file: !281, line: 23, type: !155)
!299 = !DILocalVariable(name: "__p", scope: !280, file: !281, line: 24, type: !284)
!300 = !DILocalVariable(name: "__comparison", scope: !280, file: !281, line: 25, type: !51)
!301 = !DILocation(line: 0, scope: !280)
!302 = !DILocation(line: 29, column: 3, scope: !280)
!303 = !DILocation(line: 27, column: 7, scope: !280)
!304 = !DILocation(line: 29, column: 14, scope: !280)
!305 = !DILocation(line: 31, column: 20, scope: !306)
!306 = distinct !DILexicalBlock(scope: !280, file: !281, line: 30, column: 5)
!307 = !DILocation(line: 31, column: 27, scope: !306)
!308 = !DILocation(line: 32, column: 56, scope: !306)
!309 = !DILocation(line: 32, column: 47, scope: !306)
!310 = !DILocation(line: 33, column: 22, scope: !306)
!311 = !DILocation(line: 34, column: 24, scope: !312)
!312 = distinct !DILexicalBlock(scope: !306, file: !281, line: 34, column: 11)
!313 = !DILocation(line: 34, column: 11, scope: !306)
!314 = !DILocation(line: 36, column: 29, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !281, line: 36, column: 16)
!316 = !DILocation(line: 36, column: 16, scope: !312)
!317 = !DILocation(line: 37, column: 14, scope: !315)
!318 = distinct !{!318, !302, !319}
!319 = !DILocation(line: 40, column: 5, scope: !280)
!320 = !DILocation(line: 43, column: 1, scope: !280)
!321 = distinct !DISubprogram(name: "atof", scope: !322, file: !322, line: 25, type: !323, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !326)
!322 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !56}
!325 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!326 = !{!327}
!327 = !DILocalVariable(name: "__nptr", arg: 1, scope: !321, file: !322, line: 25, type: !56)
!328 = !DILocation(line: 0, scope: !321)
!329 = !DILocation(line: 27, column: 10, scope: !321)
!330 = !DILocation(line: 27, column: 3, scope: !321)
!331 = distinct !DISubprogram(name: "strtoimax", scope: !332, file: !332, line: 324, type: !333, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !339)
!332 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!333 = !DISubroutineType(types: !334)
!334 = !{!335, !79, !338, !51}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !336, line: 101, baseType: !337)
!336 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !131, line: 72, baseType: !132)
!338 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!339 = !{!340, !341, !342}
!340 = !DILocalVariable(name: "nptr", arg: 1, scope: !331, file: !332, line: 324, type: !79)
!341 = !DILocalVariable(name: "endptr", arg: 2, scope: !331, file: !332, line: 324, type: !338)
!342 = !DILocalVariable(name: "base", arg: 3, scope: !331, file: !332, line: 324, type: !51)
!343 = !DILocation(line: 0, scope: !331)
!344 = !DILocation(line: 327, column: 10, scope: !331)
!345 = !DILocation(line: 327, column: 3, scope: !331)
!346 = distinct !DISubprogram(name: "strtoumax", scope: !332, file: !332, line: 336, type: !347, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !351)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !79, !338, !51}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !336, line: 102, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !131, line: 73, baseType: !157)
!351 = !{!352, !353, !354}
!352 = !DILocalVariable(name: "nptr", arg: 1, scope: !346, file: !332, line: 336, type: !79)
!353 = !DILocalVariable(name: "endptr", arg: 2, scope: !346, file: !332, line: 336, type: !338)
!354 = !DILocalVariable(name: "base", arg: 3, scope: !346, file: !332, line: 336, type: !51)
!355 = !DILocation(line: 0, scope: !346)
!356 = !DILocation(line: 339, column: 10, scope: !346)
!357 = !DILocation(line: 339, column: 3, scope: !346)
!358 = distinct !DISubprogram(name: "wcstoimax", scope: !332, file: !332, line: 348, type: !359, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!359 = !DISubroutineType(types: !360)
!360 = !{!335, !361, !365, !51}
!361 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !332, line: 34, baseType: !51)
!365 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!368 = !{!369, !370, !371}
!369 = !DILocalVariable(name: "nptr", arg: 1, scope: !358, file: !332, line: 348, type: !361)
!370 = !DILocalVariable(name: "endptr", arg: 2, scope: !358, file: !332, line: 348, type: !365)
!371 = !DILocalVariable(name: "base", arg: 3, scope: !358, file: !332, line: 348, type: !51)
!372 = !DILocation(line: 0, scope: !358)
!373 = !DILocation(line: 351, column: 10, scope: !358)
!374 = !DILocation(line: 351, column: 3, scope: !358)
!375 = distinct !DISubprogram(name: "wcstoumax", scope: !332, file: !332, line: 362, type: !376, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!376 = !DISubroutineType(types: !377)
!377 = !{!349, !361, !365, !51}
!378 = !{!379, !380, !381}
!379 = !DILocalVariable(name: "nptr", arg: 1, scope: !375, file: !332, line: 362, type: !361)
!380 = !DILocalVariable(name: "endptr", arg: 2, scope: !375, file: !332, line: 362, type: !365)
!381 = !DILocalVariable(name: "base", arg: 3, scope: !375, file: !332, line: 362, type: !51)
!382 = !DILocation(line: 0, scope: !375)
!383 = !DILocation(line: 365, column: 10, scope: !375)
!384 = !DILocation(line: 365, column: 3, scope: !375)
!385 = distinct !DISubprogram(name: "stat", scope: !386, file: !386, line: 453, type: !387, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!386 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!387 = !DISubroutineType(types: !388)
!388 = !{!51, !56, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !391, line: 46, size: 1152, elements: !392)
!391 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!392 = !{!393, !395, !397, !399, !401, !403, !405, !406, !407, !408, !410, !412, !420, !421, !422}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !390, file: !391, line: 48, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !131, line: 145, baseType: !157)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !390, file: !391, line: 53, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !131, line: 148, baseType: !157)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !390, file: !391, line: 61, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !131, line: 151, baseType: !157)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !390, file: !391, line: 62, baseType: !400, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !131, line: 150, baseType: !7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !390, file: !391, line: 64, baseType: !402, size: 32, offset: 224)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !131, line: 146, baseType: !7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !390, file: !391, line: 65, baseType: !404, size: 32, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !131, line: 147, baseType: !7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !390, file: !391, line: 67, baseType: !51, size: 32, offset: 288)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !390, file: !391, line: 69, baseType: !394, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !390, file: !391, line: 74, baseType: !130, size: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !390, file: !391, line: 78, baseType: !409, size: 64, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !131, line: 174, baseType: !132)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !390, file: !391, line: 80, baseType: !411, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !131, line: 179, baseType: !132)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !390, file: !391, line: 91, baseType: !413, size: 128, offset: 576)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !414, line: 10, size: 128, elements: !415)
!414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!415 = !{!416, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !413, file: !414, line: 12, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !131, line: 160, baseType: !132)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !413, file: !414, line: 16, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !131, line: 196, baseType: !132)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !390, file: !391, line: 92, baseType: !413, size: 128, offset: 704)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !390, file: !391, line: 93, baseType: !413, size: 128, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !390, file: !391, line: 106, baseType: !423, size: 192, offset: 960)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 192, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 3)
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "__path", arg: 1, scope: !385, file: !386, line: 453, type: !56)
!428 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !385, file: !386, line: 453, type: !389)
!429 = !DILocation(line: 0, scope: !385)
!430 = !DILocation(line: 455, column: 10, scope: !385)
!431 = !DILocation(line: 455, column: 3, scope: !385)
!432 = distinct !DISubprogram(name: "lstat", scope: !386, file: !386, line: 460, type: !387, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!433 = !{!434, !435}
!434 = !DILocalVariable(name: "__path", arg: 1, scope: !432, file: !386, line: 460, type: !56)
!435 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !432, file: !386, line: 460, type: !389)
!436 = !DILocation(line: 0, scope: !432)
!437 = !DILocation(line: 462, column: 10, scope: !432)
!438 = !DILocation(line: 462, column: 3, scope: !432)
!439 = distinct !DISubprogram(name: "fstat", scope: !386, file: !386, line: 467, type: !440, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!51, !51, !389}
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "__fd", arg: 1, scope: !439, file: !386, line: 467, type: !51)
!444 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !439, file: !386, line: 467, type: !389)
!445 = !DILocation(line: 0, scope: !439)
!446 = !DILocation(line: 469, column: 10, scope: !439)
!447 = !DILocation(line: 469, column: 3, scope: !439)
!448 = distinct !DISubprogram(name: "fstatat", scope: !386, file: !386, line: 474, type: !449, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{!51, !51, !56, !389, !51}
!451 = !{!452, !453, !454, !455}
!452 = !DILocalVariable(name: "__fd", arg: 1, scope: !448, file: !386, line: 474, type: !51)
!453 = !DILocalVariable(name: "__filename", arg: 2, scope: !448, file: !386, line: 474, type: !56)
!454 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !448, file: !386, line: 474, type: !389)
!455 = !DILocalVariable(name: "__flag", arg: 4, scope: !448, file: !386, line: 474, type: !51)
!456 = !DILocation(line: 0, scope: !448)
!457 = !DILocation(line: 477, column: 10, scope: !448)
!458 = !DILocation(line: 477, column: 3, scope: !448)
!459 = distinct !DISubprogram(name: "mknod", scope: !386, file: !386, line: 483, type: !460, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!51, !56, !400, !394}
!462 = !{!463, !464, !465}
!463 = !DILocalVariable(name: "__path", arg: 1, scope: !459, file: !386, line: 483, type: !56)
!464 = !DILocalVariable(name: "__mode", arg: 2, scope: !459, file: !386, line: 483, type: !400)
!465 = !DILocalVariable(name: "__dev", arg: 3, scope: !459, file: !386, line: 483, type: !394)
!466 = !DILocation(line: 0, scope: !459)
!467 = !DILocation(line: 485, column: 10, scope: !459)
!468 = !DILocation(line: 485, column: 3, scope: !459)
!469 = distinct !DISubprogram(name: "mknodat", scope: !386, file: !386, line: 491, type: !470, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!51, !51, !56, !400, !394}
!472 = !{!473, !474, !475, !476}
!473 = !DILocalVariable(name: "__fd", arg: 1, scope: !469, file: !386, line: 491, type: !51)
!474 = !DILocalVariable(name: "__path", arg: 2, scope: !469, file: !386, line: 491, type: !56)
!475 = !DILocalVariable(name: "__mode", arg: 3, scope: !469, file: !386, line: 491, type: !400)
!476 = !DILocalVariable(name: "__dev", arg: 4, scope: !469, file: !386, line: 491, type: !394)
!477 = !DILocation(line: 0, scope: !469)
!478 = !DILocation(line: 494, column: 10, scope: !469)
!479 = !DILocation(line: 494, column: 3, scope: !469)
!480 = distinct !DISubprogram(name: "stat64", scope: !386, file: !386, line: 502, type: !481, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !503)
!481 = !DISubroutineType(types: !482)
!482 = !{!51, !56, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !391, line: 119, size: 1152, elements: !485)
!485 = !{!486, !487, !489, !490, !491, !492, !493, !494, !495, !496, !497, !499, !500, !501, !502}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !484, file: !391, line: 121, baseType: !394, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !484, file: !391, line: 123, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !131, line: 149, baseType: !157)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !484, file: !391, line: 124, baseType: !398, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !484, file: !391, line: 125, baseType: !400, size: 32, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !484, file: !391, line: 132, baseType: !402, size: 32, offset: 224)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !484, file: !391, line: 133, baseType: !404, size: 32, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !484, file: !391, line: 135, baseType: !51, size: 32, offset: 288)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !484, file: !391, line: 136, baseType: !394, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !484, file: !391, line: 137, baseType: !130, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !484, file: !391, line: 143, baseType: !409, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !484, file: !391, line: 144, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !131, line: 180, baseType: !132)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !484, file: !391, line: 152, baseType: !413, size: 128, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !484, file: !391, line: 153, baseType: !413, size: 128, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !484, file: !391, line: 154, baseType: !413, size: 128, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !484, file: !391, line: 164, baseType: !423, size: 192, offset: 960)
!503 = !{!504, !505}
!504 = !DILocalVariable(name: "__path", arg: 1, scope: !480, file: !386, line: 502, type: !56)
!505 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !480, file: !386, line: 502, type: !483)
!506 = !DILocation(line: 0, scope: !480)
!507 = !DILocation(line: 504, column: 10, scope: !480)
!508 = !DILocation(line: 504, column: 3, scope: !480)
!509 = distinct !DISubprogram(name: "lstat64", scope: !386, file: !386, line: 509, type: !481, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !510)
!510 = !{!511, !512}
!511 = !DILocalVariable(name: "__path", arg: 1, scope: !509, file: !386, line: 509, type: !56)
!512 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !509, file: !386, line: 509, type: !483)
!513 = !DILocation(line: 0, scope: !509)
!514 = !DILocation(line: 511, column: 10, scope: !509)
!515 = !DILocation(line: 511, column: 3, scope: !509)
!516 = distinct !DISubprogram(name: "fstat64", scope: !386, file: !386, line: 516, type: !517, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !519)
!517 = !DISubroutineType(types: !518)
!518 = !{!51, !51, !483}
!519 = !{!520, !521}
!520 = !DILocalVariable(name: "__fd", arg: 1, scope: !516, file: !386, line: 516, type: !51)
!521 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !516, file: !386, line: 516, type: !483)
!522 = !DILocation(line: 0, scope: !516)
!523 = !DILocation(line: 518, column: 10, scope: !516)
!524 = !DILocation(line: 518, column: 3, scope: !516)
!525 = distinct !DISubprogram(name: "fstatat64", scope: !386, file: !386, line: 523, type: !526, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!51, !51, !56, !483, !51}
!528 = !{!529, !530, !531, !532}
!529 = !DILocalVariable(name: "__fd", arg: 1, scope: !525, file: !386, line: 523, type: !51)
!530 = !DILocalVariable(name: "__filename", arg: 2, scope: !525, file: !386, line: 523, type: !56)
!531 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !525, file: !386, line: 523, type: !483)
!532 = !DILocalVariable(name: "__flag", arg: 4, scope: !525, file: !386, line: 523, type: !51)
!533 = !DILocation(line: 0, scope: !525)
!534 = !DILocation(line: 526, column: 10, scope: !525)
!535 = !DILocation(line: 526, column: 3, scope: !525)
!536 = distinct !DISubprogram(name: "dbg_cnt_is_enabled", scope: !3, file: !3, line: 55, type: !537, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!50, !5}
!539 = !{!540}
!540 = !DILocalVariable(name: "index", arg: 1, scope: !536, file: !3, line: 55, type: !5)
!541 = !DILocation(line: 0, scope: !536)
!542 = !DILocation(line: 57, column: 10, scope: !536)
!543 = !DILocation(line: 57, column: 26, scope: !536)
!544 = !DILocation(line: 57, column: 23, scope: !536)
!545 = !DILocation(line: 57, column: 3, scope: !536)
!546 = distinct !DISubprogram(name: "dbg_cnt", scope: !3, file: !3, line: 61, type: !537, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!547 = !{!548}
!548 = !DILocalVariable(name: "index", arg: 1, scope: !546, file: !3, line: 61, type: !5)
!549 = !DILocation(line: 0, scope: !546)
!550 = !DILocation(line: 63, column: 3, scope: !546)
!551 = !DILocation(line: 63, column: 15, scope: !546)
!552 = !DILocation(line: 64, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !546, file: !3, line: 64, column: 7)
!554 = !DILocation(line: 64, column: 17, scope: !553)
!555 = !DILocation(line: 64, column: 36, scope: !553)
!556 = !DILocation(line: 64, column: 33, scope: !553)
!557 = !DILocation(line: 64, column: 7, scope: !546)
!558 = !DILocation(line: 66, column: 18, scope: !553)
!559 = !DILocation(line: 65, column: 5, scope: !553)
!560 = !DILocation(line: 68, column: 10, scope: !546)
!561 = !DILocation(line: 68, column: 3, scope: !546)
!562 = distinct !DISubprogram(name: "dbg_cnt_process_opt", scope: !3, file: !3, line: 121, type: !563, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !56}
!565 = !{!566, !567, !568, !569}
!566 = !DILocalVariable(name: "arg", arg: 1, scope: !562, file: !3, line: 121, type: !56)
!567 = !DILocalVariable(name: "start", scope: !562, file: !3, line: 123, type: !56)
!568 = !DILocalVariable(name: "next", scope: !562, file: !3, line: 124, type: !56)
!569 = !DILocalVariable(name: "buffer", scope: !570, file: !3, line: 133, type: !53)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 132, column: 6)
!571 = distinct !DILexicalBlock(scope: !562, file: !3, line: 131, column: 8)
!572 = !DILocation(line: 0, scope: !562)
!573 = !DILocation(line: 125, column: 4, scope: !562)
!574 = !DILocation(line: 126, column: 13, scope: !575)
!575 = distinct !DILexicalBlock(scope: !562, file: !3, line: 125, column: 7)
!576 = !DILocation(line: 127, column: 15, scope: !577)
!577 = distinct !DILexicalBlock(scope: !575, file: !3, line: 127, column: 10)
!578 = !DILocation(line: 127, column: 10, scope: !575)
!579 = !DILocation(line: 129, column: 13, scope: !562)
!580 = !DILocation(line: 129, column: 19, scope: !562)
!581 = !DILocation(line: 129, column: 26, scope: !562)
!582 = !DILocation(line: 129, column: 4, scope: !575)
!583 = distinct !{!583, !573, !584}
!584 = !DILocation(line: 129, column: 45, scope: !562)
!585 = !DILocation(line: 131, column: 21, scope: !571)
!586 = !DILocation(line: 131, column: 24, scope: !571)
!587 = !DILocation(line: 131, column: 30, scope: !571)
!588 = !DILocation(line: 131, column: 8, scope: !562)
!589 = !DILocation(line: 133, column: 23, scope: !570)
!590 = !DILocation(line: 0, scope: !570)
!591 = !DILocation(line: 134, column: 32, scope: !570)
!592 = !DILocation(line: 134, column: 8, scope: !570)
!593 = !DILocation(line: 135, column: 8, scope: !570)
!594 = !DILocation(line: 136, column: 8, scope: !570)
!595 = !DILocation(line: 137, column: 8, scope: !570)
!596 = !DILocation(line: 138, column: 6, scope: !570)
!597 = !DILocation(line: 139, column: 1, scope: !562)
!598 = distinct !DISubprogram(name: "dbg_cnt_process_single_pair", scope: !3, file: !3, line: 102, type: !599, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{!56, !56}
!601 = !{!602, !603, !604, !605}
!602 = !DILocalVariable(name: "arg", arg: 1, scope: !598, file: !3, line: 102, type: !56)
!603 = !DILocalVariable(name: "colon", scope: !598, file: !3, line: 104, type: !56)
!604 = !DILocalVariable(name: "endptr", scope: !598, file: !3, line: 105, type: !53)
!605 = !DILocalVariable(name: "value", scope: !598, file: !3, line: 106, type: !51)
!606 = !DILocation(line: 0, scope: !598)
!607 = !DILocation(line: 104, column: 24, scope: !598)
!608 = !DILocation(line: 105, column: 4, scope: !598)
!609 = !DILocation(line: 105, column: 10, scope: !598)
!610 = !DILocation(line: 108, column: 14, scope: !611)
!611 = distinct !DILexicalBlock(scope: !598, file: !3, line: 108, column: 8)
!612 = !DILocation(line: 108, column: 8, scope: !598)
!613 = !DILocation(line: 111, column: 26, scope: !598)
!614 = !DILocation(line: 111, column: 12, scope: !598)
!615 = !DILocation(line: 113, column: 8, scope: !616)
!616 = distinct !DILexicalBlock(scope: !598, file: !3, line: 113, column: 8)
!617 = !DILocation(line: 113, column: 15, scope: !616)
!618 = !DILocation(line: 113, column: 23, scope: !616)
!619 = !DILocation(line: 113, column: 33, scope: !616)
!620 = !DILocation(line: 114, column: 8, scope: !616)
!621 = !DILocation(line: 114, column: 49, scope: !616)
!622 = !DILocation(line: 114, column: 43, scope: !616)
!623 = !DILocation(line: 114, column: 11, scope: !616)
!624 = !DILocation(line: 115, column: 13, scope: !616)
!625 = !DILocation(line: 113, column: 8, scope: !598)
!626 = !DILocation(line: 118, column: 1, scope: !598)
!627 = distinct !DISubprogram(name: "dbg_cnt_list_all_counters", scope: !3, file: !3, line: 144, type: !628, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{null}
!630 = !{!631}
!631 = !DILocalVariable(name: "i", scope: !627, file: !3, line: 146, type: !51)
!632 = !DILocation(line: 147, column: 3, scope: !627)
!633 = !DILocation(line: 148, column: 3, scope: !627)
!634 = !DILocation(line: 0, scope: !627)
!635 = !DILocation(line: 149, column: 8, scope: !636)
!636 = distinct !DILexicalBlock(scope: !627, file: !3, line: 149, column: 3)
!637 = !DILocation(line: 0, scope: !636)
!638 = !DILocation(line: 149, column: 17, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !3, line: 149, column: 3)
!640 = !DILocation(line: 149, column: 3, scope: !636)
!641 = !DILocation(line: 151, column: 20, scope: !639)
!642 = !DILocation(line: 151, column: 39, scope: !639)
!643 = !DILocation(line: 151, column: 26, scope: !639)
!644 = !DILocation(line: 151, column: 49, scope: !639)
!645 = !DILocation(line: 150, column: 5, scope: !639)
!646 = !DILocation(line: 149, column: 54, scope: !639)
!647 = !DILocation(line: 149, column: 3, scope: !639)
!648 = distinct !{!648, !640, !649}
!649 = !DILocation(line: 151, column: 70, scope: !636)
!650 = !DILocation(line: 152, column: 3, scope: !627)
!651 = !DILocation(line: 153, column: 1, scope: !627)
!652 = distinct !DISubprogram(name: "dbg_cnt_set_limit_by_name", scope: !3, file: !3, line: 81, type: !653, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{!50, !56, !51, !51}
!655 = !{!656, !657, !658, !659}
!656 = !DILocalVariable(name: "name", arg: 1, scope: !652, file: !3, line: 81, type: !56)
!657 = !DILocalVariable(name: "len", arg: 2, scope: !652, file: !3, line: 81, type: !51)
!658 = !DILocalVariable(name: "value", arg: 3, scope: !652, file: !3, line: 81, type: !51)
!659 = !DILocalVariable(name: "i", scope: !652, file: !3, line: 83, type: !51)
!660 = !DILocation(line: 0, scope: !652)
!661 = !DILocation(line: 0, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !3, line: 85, column: 9)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 84, column: 3)
!664 = distinct !DILexicalBlock(scope: !652, file: !3, line: 84, column: 3)
!665 = !DILocation(line: 84, column: 8, scope: !664)
!666 = !DILocation(line: 0, scope: !664)
!667 = !DILocation(line: 84, column: 52, scope: !663)
!668 = !DILocation(line: 84, column: 3, scope: !664)
!669 = !DILocation(line: 85, column: 25, scope: !662)
!670 = !DILocation(line: 85, column: 9, scope: !662)
!671 = !DILocation(line: 85, column: 42, scope: !662)
!672 = !DILocation(line: 86, column: 9, scope: !662)
!673 = !DILocation(line: 86, column: 12, scope: !662)
!674 = !DILocation(line: 86, column: 29, scope: !662)
!675 = !DILocation(line: 85, column: 9, scope: !663)
!676 = !DILocation(line: 84, column: 59, scope: !663)
!677 = !DILocation(line: 84, column: 3, scope: !663)
!678 = distinct !{!678, !668, !679}
!679 = !DILocation(line: 87, column: 7, scope: !664)
!680 = !DILocation(line: 89, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !652, file: !3, line: 89, column: 7)
!682 = !DILocation(line: 89, column: 7, scope: !652)
!683 = !DILocation(line: 92, column: 3, scope: !652)
!684 = !DILocation(line: 93, column: 3, scope: !652)
!685 = !DILocation(line: 94, column: 1, scope: !652)
!686 = distinct !DISubprogram(name: "dbg_cnt_set_limit_by_index", scope: !3, file: !3, line: 73, type: !687, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !5, !51}
!689 = !{!690, !691}
!690 = !DILocalVariable(name: "index", arg: 1, scope: !686, file: !3, line: 73, type: !5)
!691 = !DILocalVariable(name: "value", arg: 2, scope: !686, file: !3, line: 73, type: !51)
!692 = !DILocation(line: 0, scope: !686)
!693 = !DILocation(line: 75, column: 3, scope: !686)
!694 = !DILocation(line: 75, column: 16, scope: !686)
!695 = !DILocation(line: 77, column: 12, scope: !686)
!696 = !DILocation(line: 77, column: 59, scope: !686)
!697 = !DILocation(line: 77, column: 3, scope: !686)
!698 = !DILocation(line: 78, column: 1, scope: !686)
