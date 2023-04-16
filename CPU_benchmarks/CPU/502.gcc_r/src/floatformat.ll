; ModuleID = 'floatformat.bc'
source_filename = "floatformat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.floatformat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, {}*, %struct.floatformat* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [28 x i8] c"floatformat_ieee_single_big\00", align 1
@floatformat_ieee_single_big = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 1, i32 32, i32 0, i32 1, i32 8, i32 127, i32 255, i32 9, i32 23, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [31 x i8] c"floatformat_ieee_single_little\00", align 1
@floatformat_ieee_single_little = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 0, i32 32, i32 0, i32 1, i32 8, i32 127, i32 255, i32 9, i32 23, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !25
@.str.2 = private unnamed_addr constant [28 x i8] c"floatformat_ieee_double_big\00", align 1
@floatformat_ieee_double_big = dso_local constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 1, i32 64, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !53
@.str.3 = private unnamed_addr constant [31 x i8] c"floatformat_ieee_double_little\00", align 1
@floatformat_ieee_double_little = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 0, i32 64, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !55
@.str.4 = private unnamed_addr constant [43 x i8] c"floatformat_ieee_double_littlebyte_bigword\00", align 1
@floatformat_ieee_double_littlebyte_bigword = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 2, i32 64, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !57
@.str.5 = private unnamed_addr constant [18 x i8] c"floatformat_vax_f\00", align 1
@floatformat_vax_f = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 3, i32 32, i32 0, i32 1, i32 8, i32 129, i32 0, i32 9, i32 23, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !59
@.str.6 = private unnamed_addr constant [18 x i8] c"floatformat_vax_d\00", align 1
@floatformat_vax_d = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 3, i32 64, i32 0, i32 1, i32 8, i32 129, i32 0, i32 9, i32 55, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !61
@.str.7 = private unnamed_addr constant [18 x i8] c"floatformat_vax_g\00", align 1
@floatformat_vax_g = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 3, i32 64, i32 0, i32 1, i32 11, i32 1025, i32 0, i32 12, i32 52, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !63
@.str.8 = private unnamed_addr constant [21 x i8] c"floatformat_i387_ext\00", align 1
@floatformat_i387_ext = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 0, i32 80, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 64, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_i387_ext_is_valid, %struct.floatformat* null }, align 8, !dbg !65
@.str.9 = private unnamed_addr constant [23 x i8] c"floatformat_m68881_ext\00", align 1
@floatformat_m68881_ext = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 1, i32 96, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !67
@.str.10 = private unnamed_addr constant [21 x i8] c"floatformat_i960_ext\00", align 1
@floatformat_i960_ext = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 0, i32 96, i32 16, i32 17, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !69
@.str.11 = private unnamed_addr constant [23 x i8] c"floatformat_m88110_ext\00", align 1
@floatformat_m88110_ext = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 1, i32 80, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 64, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !71
@.str.12 = private unnamed_addr constant [30 x i8] c"floatformat_m88110_ext_harris\00", align 1
@floatformat_m88110_harris_ext = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 1, i32 128, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !73
@.str.13 = private unnamed_addr constant [24 x i8] c"floatformat_arm_ext_big\00", align 1
@floatformat_arm_ext_big = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 1, i32 96, i32 0, i32 17, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !75
@.str.14 = private unnamed_addr constant [39 x i8] c"floatformat_arm_ext_littlebyte_bigword\00", align 1
@floatformat_arm_ext_littlebyte_bigword = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 2, i32 96, i32 0, i32 17, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !77
@.str.15 = private unnamed_addr constant [27 x i8] c"floatformat_ia64_spill_big\00", align 1
@floatformat_ia64_spill_big = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 1, i32 128, i32 0, i32 1, i32 17, i32 65535, i32 131071, i32 18, i32 64, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !79
@.str.16 = private unnamed_addr constant [30 x i8] c"floatformat_ia64_spill_little\00", align 1
@floatformat_ia64_spill_little = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 0, i32 128, i32 0, i32 1, i32 17, i32 65535, i32 131071, i32 18, i32 64, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !81
@.str.17 = private unnamed_addr constant [26 x i8] c"floatformat_ia64_quad_big\00", align 1
@floatformat_ia64_quad_big = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 1, i32 128, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 112, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !83
@.str.18 = private unnamed_addr constant [29 x i8] c"floatformat_ia64_quad_little\00", align 1
@floatformat_ia64_quad_little = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 0, i32 128, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 112, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_always_valid, %struct.floatformat* null }, align 8, !dbg !85
@.str.19 = private unnamed_addr constant [28 x i8] c"floatformat_ibm_long_double\00", align 1
@floatformat_ibm_long_double = dso_local local_unnamed_addr constant { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* } { i32 1, i32 128, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.floatformat*, i8*)* @floatformat_ibm_long_double_is_valid, %struct.floatformat* bitcast ({ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 (%struct.floatformat*, i8*)*, %struct.floatformat* }* @floatformat_ieee_double_big to %struct.floatformat*) }, align 8, !dbg !87

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !93 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !107, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !110
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !111
  ret i32 %call, !dbg !112
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !113 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !117
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !118
  ret i32 %call, !dbg !119
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !120 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !183, metadata !DIExpression()), !dbg !184
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !185
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !185
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !185
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !185
  %cmp = icmp uge i8* %0, %1, !dbg !185
  %conv1 = zext i1 %cmp to i64, !dbg !185
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !185
  %tobool = icmp eq i64 %expval, 0, !dbg !185
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !185

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !185
  br label %cond.end, !dbg !185

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !185
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !185
  %2 = load i8, i8* %0, align 1, !dbg !185
  %conv3 = zext i8 %2 to i32, !dbg !185
  br label %cond.end, !dbg !185

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !185
  ret i32 %cond, !dbg !186
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !189, metadata !DIExpression()), !dbg !190
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !191
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !191
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !191
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !191
  %cmp = icmp uge i8* %0, %1, !dbg !191
  %conv1 = zext i1 %cmp to i64, !dbg !191
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !191
  %tobool = icmp eq i64 %expval, 0, !dbg !191
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !191

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !191
  br label %cond.end, !dbg !191

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !191
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !191
  %2 = load i8, i8* %0, align 1, !dbg !191
  %conv3 = zext i8 %2 to i32, !dbg !191
  br label %cond.end, !dbg !191

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !191
  ret i32 %cond, !dbg !192
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !193 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !194
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !194
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !194
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !194
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !194
  %cmp = icmp uge i8* %1, %2, !dbg !194
  %conv1 = zext i1 %cmp to i64, !dbg !194
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !194
  %tobool = icmp eq i64 %expval, 0, !dbg !194
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !194

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !194
  br label %cond.end, !dbg !194

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !194
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !194
  %3 = load i8, i8* %1, align 1, !dbg !194
  %conv3 = zext i8 %3 to i32, !dbg !194
  br label %cond.end, !dbg !194

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !194
  ret i32 %cond, !dbg !195
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !196 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !202
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !203
  ret i32 %call, !dbg !204
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !209, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !210, metadata !DIExpression()), !dbg !211
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !212
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !212
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !212
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !212
  %cmp = icmp uge i8* %0, %1, !dbg !212
  %conv1 = zext i1 %cmp to i64, !dbg !212
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !212
  %tobool = icmp eq i64 %expval, 0, !dbg !212
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !212

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !212
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !212
  br label %cond.end, !dbg !212

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !212
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !212
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !212
  store i8 %conv2, i8* %0, align 1, !dbg !212
  %conv6 = and i32 %__c, 255, !dbg !212
  br label %cond.end, !dbg !212

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !212
  ret i32 %cond, !dbg !213
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !214 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !216, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !217, metadata !DIExpression()), !dbg !218
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !219
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !219
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !219
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !219
  %cmp = icmp uge i8* %0, %1, !dbg !219
  %conv1 = zext i1 %cmp to i64, !dbg !219
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !219
  %tobool = icmp eq i64 %expval, 0, !dbg !219
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !219

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !219
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !219
  br label %cond.end, !dbg !219

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !219
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !219
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !219
  store i8 %conv2, i8* %0, align 1, !dbg !219
  %conv6 = and i32 %__c, 255, !dbg !219
  br label %cond.end, !dbg !219

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !219
  ret i32 %cond, !dbg !220
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !221 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !225
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !225
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !225
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !225
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !225
  %cmp = icmp uge i8* %1, %2, !dbg !225
  %conv1 = zext i1 %cmp to i64, !dbg !225
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !225
  %tobool = icmp eq i64 %expval, 0, !dbg !225
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !225

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !225
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !225
  br label %cond.end, !dbg !225

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !225
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !225
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !225
  store i8 %conv4, i8* %1, align 1, !dbg !225
  %conv6 = and i32 %__c, 255, !dbg !225
  br label %cond.end, !dbg !225

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !225
  ret i32 %cond, !dbg !226
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i64* %__n, metadata !235, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !236, metadata !DIExpression()), !dbg !237
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !238
  ret i64 %call, !dbg !239
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !240 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !242, metadata !DIExpression()), !dbg !243
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !244
  %0 = load i32, i32* %_flags, align 8, !dbg !244
  %and = lshr i32 %0, 4, !dbg !244
  %and.lobit = and i32 %and, 1, !dbg !244
  ret i32 %and.lobit, !dbg !245
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !246 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !248, metadata !DIExpression()), !dbg !249
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !250
  %0 = load i32, i32* %_flags, align 8, !dbg !250
  %and = lshr i32 %0, 5, !dbg !250
  %and.lobit = and i32 %and, 1, !dbg !250
  ret i32 %and.lobit, !dbg !251
}

; Function Attrs: nounwind uwtable
define internal i32 @floatformat_always_valid(%struct.floatformat* %fmt, i8* %from) #3 !dbg !252 {
entry:
  call void @llvm.dbg.value(metadata %struct.floatformat* %fmt, metadata !254, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i8* %from, metadata !255, metadata !DIExpression()), !dbg !256
  ret i32 1, !dbg !257
}

; Function Attrs: nounwind uwtable
define internal i32 @floatformat_i387_ext_is_valid(%struct.floatformat* %fmt, i8* %from) #3 !dbg !258 {
entry:
  call void @llvm.dbg.value(metadata %struct.floatformat* %fmt, metadata !260, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i8* %from, metadata !261, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i8* %from, metadata !264, metadata !DIExpression()), !dbg !265
  %byteorder = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 0, !dbg !266
  %0 = load i32, i32* %byteorder, align 8, !dbg !266
  %totalsize = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 1, !dbg !267
  %1 = load i32, i32* %totalsize, align 4, !dbg !267
  %exp_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 3, !dbg !268
  %2 = load i32, i32* %exp_start, align 4, !dbg !268
  %exp_len = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 4, !dbg !269
  %3 = load i32, i32* %exp_len, align 8, !dbg !269
  %call = tail call fastcc i64 @get_field(i8* %from, i32 %0, i32 %1, i32 %2, i32 %3) #7, !dbg !270
  call void @llvm.dbg.value(metadata i64 %call, metadata !262, metadata !DIExpression()), !dbg !265
  %4 = load i32, i32* %byteorder, align 8, !dbg !271
  %5 = load i32, i32* %totalsize, align 4, !dbg !272
  %man_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 7, !dbg !273
  %6 = load i32, i32* %man_start, align 4, !dbg !273
  %call3 = tail call fastcc i64 @get_field(i8* %from, i32 %4, i32 %5, i32 %6, i32 1) #7, !dbg !274
  call void @llvm.dbg.value(metadata i64 %call3, metadata !263, metadata !DIExpression()), !dbg !265
  %cmp = icmp ne i64 %call, 0, !dbg !275
  %cmp4 = icmp eq i64 %call3, 0, !dbg !277
  %not.cmp6 = xor i1 %cmp4, %cmp, !dbg !278
  %. = zext i1 %not.cmp6 to i32, !dbg !278
  ret i32 %., !dbg !279
}

; Function Attrs: nounwind uwtable
define internal i32 @floatformat_ibm_long_double_is_valid(%struct.floatformat* %fmt, i8* %from) #3 !dbg !280 {
entry:
  call void @llvm.dbg.value(metadata %struct.floatformat* %fmt, metadata !282, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8* %from, metadata !283, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8* %from, metadata !284, metadata !DIExpression()), !dbg !294
  %split_half = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 12, !dbg !295
  %0 = load %struct.floatformat*, %struct.floatformat** %split_half, align 8, !dbg !295
  call void @llvm.dbg.value(metadata %struct.floatformat* %0, metadata !285, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !294
  %byteorder = getelementptr inbounds %struct.floatformat, %struct.floatformat* %0, i64 0, i32 0, !dbg !296
  %1 = load i32, i32* %byteorder, align 8, !dbg !296
  %totalsize = getelementptr inbounds %struct.floatformat, %struct.floatformat* %0, i64 0, i32 1, !dbg !297
  %2 = load i32, i32* %totalsize, align 4, !dbg !297
  %exp_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %0, i64 0, i32 3, !dbg !298
  %3 = load i32, i32* %exp_start, align 4, !dbg !298
  %exp_len = getelementptr inbounds %struct.floatformat, %struct.floatformat* %0, i64 0, i32 4, !dbg !299
  %4 = load i32, i32* %exp_len, align 8, !dbg !299
  %call = tail call fastcc i64 @get_field(i8* %from, i32 %1, i32 %2, i32 %3, i32 %4) #7, !dbg !300
  call void @llvm.dbg.value(metadata i64 %call, metadata !286, metadata !DIExpression()), !dbg !294
  %add.ptr = getelementptr inbounds i8, i8* %from, i64 8, !dbg !301
  %5 = load i32, i32* %byteorder, align 8, !dbg !302
  %6 = load i32, i32* %totalsize, align 4, !dbg !303
  %7 = load i32, i32* %exp_start, align 4, !dbg !304
  %8 = load i32, i32* %exp_len, align 8, !dbg !305
  %call5 = tail call fastcc i64 @get_field(i8* nonnull %add.ptr, i32 %5, i32 %6, i32 %7, i32 %8) #7, !dbg !306
  call void @llvm.dbg.value(metadata i64 %call5, metadata !287, metadata !DIExpression()), !dbg !294
  %exp_nan = getelementptr inbounds %struct.floatformat, %struct.floatformat* %0, i64 0, i32 6, !dbg !307
  %9 = load i32, i32* %exp_nan, align 8, !dbg !307
  %conv = zext i32 %9 to i64, !dbg !309
  %cmp = icmp eq i64 %call, %conv, !dbg !310
  br i1 %cmp, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  %call7 = tail call fastcc i32 @mant_bits_set(%struct.floatformat* %0, i8* %from) #7, !dbg !312
  call void @llvm.dbg.value(metadata i32 %call7, metadata !288, metadata !DIExpression()), !dbg !294
  %phitmp = icmp ne i32 %call7, 0, !dbg !313
  br label %if.end, !dbg !313

if.end:                                           ; preds = %if.then, %entry
  %top_nan.0 = phi i1 [ %phitmp, %if.then ], [ false, %entry ]
  br i1 %top_nan.0, label %cleanup102, label %if.end9, !dbg !314

if.end9:                                          ; preds = %if.end
  %10 = load i32, i32* %exp_nan, align 8, !dbg !315
  %conv11 = zext i32 %10 to i64, !dbg !317
  %cmp12 = icmp eq i64 %call, %conv11, !dbg !318
  %cmp14 = icmp eq i64 %call, 0, !dbg !319
  %or.cond = or i1 %cmp12, %cmp14, !dbg !320
  br i1 %or.cond, label %if.then16, label %if.end24, !dbg !320

if.then16:                                        ; preds = %if.end9
  %cmp17 = icmp eq i64 %call5, 0, !dbg !321
  br i1 %cmp17, label %if.end20, label %cleanup102, !dbg !324

if.end20:                                         ; preds = %if.then16
  %call22 = tail call fastcc i32 @mant_bits_set(%struct.floatformat* %0, i8* nonnull %add.ptr) #7, !dbg !325
  %tobool23 = icmp eq i32 %call22, 0, !dbg !326
  br label %cleanup102, !dbg !327

if.end24:                                         ; preds = %if.end9
  %sub = add nsw i64 %call, -53, !dbg !328
  %cmp25 = icmp slt i64 %call5, %sub, !dbg !330
  br i1 %cmp25, label %cleanup102, label %if.end28, !dbg !331

if.end28:                                         ; preds = %if.end24
  %cmp30 = icmp sgt i64 %call5, %sub, !dbg !332
  %cmp32 = icmp ne i64 %call5, 0, !dbg !334
  %or.cond1 = and i1 %cmp30, %cmp32, !dbg !335
  br i1 %or.cond1, label %cleanup102, label %if.end35, !dbg !335

if.end35:                                         ; preds = %if.end28
  %cmp36 = icmp eq i64 %call5, 0, !dbg !336
  br i1 %cmp36, label %for.cond.preheader, label %if.else86, !dbg !337

for.cond.preheader:                               ; preds = %if.end35
  %man_len = getelementptr inbounds %struct.floatformat, %struct.floatformat* %0, i64 0, i32 8, !dbg !338
  %man_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %0, i64 0, i32 7, !dbg !341
  br label %for.cond, !dbg !343

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %first_bit.0 = phi i32 [ %first_bit.1, %for.inc ], [ -1, %for.cond.preheader ], !dbg !344
  %cur_bit.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !345
  call void @llvm.dbg.value(metadata i32 %cur_bit.0, metadata !293, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 %first_bit.0, metadata !289, metadata !DIExpression()), !dbg !344
  %11 = load i32, i32* %man_len, align 8, !dbg !346
  %cmp39 = icmp ult i32 %cur_bit.0, %11, !dbg !347
  br i1 %cmp39, label %for.body, label %for.end, !dbg !343

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %byteorder, align 8, !dbg !348
  %13 = load i32, i32* %totalsize, align 4, !dbg !349
  %14 = load i32, i32* %man_start, align 4, !dbg !350
  %add = add i32 %14, %cur_bit.0, !dbg !351
  %call44 = tail call fastcc i64 @get_field(i8* nonnull %add.ptr, i32 %12, i32 %13, i32 %add, i32 1) #7, !dbg !352
  %tobool45 = icmp eq i64 %call44, 0, !dbg !352
  br i1 %tobool45, label %for.inc, label %if.then46, !dbg !353

if.then46:                                        ; preds = %for.body
  %cmp47 = icmp eq i32 %first_bit.0, -1, !dbg !354
  br i1 %cmp47, label %for.inc, label %for.end, !dbg !357

for.inc:                                          ; preds = %for.body, %if.then46
  %first_bit.1 = phi i32 [ %first_bit.0, %for.body ], [ %cur_bit.0, %if.then46 ], !dbg !344
  call void @llvm.dbg.value(metadata i32 %first_bit.1, metadata !289, metadata !DIExpression()), !dbg !344
  %inc = add nuw nsw i32 %cur_bit.0, 1, !dbg !358
  call void @llvm.dbg.value(metadata i32 %inc, metadata !293, metadata !DIExpression()), !dbg !344
  br label %for.cond, !dbg !359, !llvm.loop !360

for.end:                                          ; preds = %if.then46, %for.cond
  %first_bit.0.lcssa = phi i32 [ %first_bit.0, %if.then46 ], [ %first_bit.0, %for.cond ], !dbg !344
  %second_bit.0 = phi i32 [ -1, %for.cond ], [ %cur_bit.0, %if.then46 ], !dbg !344
  call void @llvm.dbg.value(metadata i32 %first_bit.0.lcssa, metadata !289, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 %first_bit.0.lcssa, metadata !289, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 %first_bit.0.lcssa, metadata !289, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 %first_bit.0.lcssa, metadata !289, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 %first_bit.0.lcssa, metadata !289, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 %first_bit.0.lcssa, metadata !289, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 %second_bit.0, metadata !292, metadata !DIExpression()), !dbg !344
  %cmp52 = icmp eq i32 %first_bit.0.lcssa, -1, !dbg !362
  br i1 %cmp52, label %cleanup102, label %if.end55, !dbg !364

if.end55:                                         ; preds = %for.end
  %sub56 = sub nsw i32 0, %first_bit.0.lcssa, !dbg !365
  %conv57 = sext i32 %sub56 to i64, !dbg !365
  %cmp59 = icmp sgt i64 %sub, %conv57, !dbg !367
  br i1 %cmp59, label %cleanup102, label %if.end62, !dbg !368

if.end62:                                         ; preds = %if.end55
  %cmp66 = icmp slt i64 %sub, %conv57, !dbg !369
  %cmp70 = icmp ne i32 %second_bit.0, -1, !dbg !371
  %or.cond2 = or i1 %cmp66, %cmp70, !dbg !373
  br i1 %or.cond2, label %cleanup102, label %if.end73, !dbg !373

if.end73:                                         ; preds = %if.end62
  %15 = load i32, i32* %byteorder, align 8, !dbg !374
  %16 = load i32, i32* %totalsize, align 4, !dbg !375
  %17 = load i32, i32* %man_start, align 4, !dbg !376
  %18 = load i32, i32* %man_len, align 8, !dbg !377
  %add78 = add i32 %17, %18, !dbg !378
  %sub79 = add i32 %add78, -1, !dbg !379
  %call80 = tail call fastcc i64 @get_field(i8* %from, i32 %15, i32 %16, i32 %sub79, i32 1) #7, !dbg !380
  %tobool81 = icmp eq i64 %call80, 0, !dbg !381
  br label %cleanup102, !dbg !382

if.else86:                                        ; preds = %if.end35
  %19 = load i32, i32* %byteorder, align 8, !dbg !383
  %20 = load i32, i32* %totalsize, align 4, !dbg !386
  %man_start89 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %0, i64 0, i32 7, !dbg !387
  %21 = load i32, i32* %man_start89, align 4, !dbg !387
  %man_len90 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %0, i64 0, i32 8, !dbg !388
  %22 = load i32, i32* %man_len90, align 8, !dbg !388
  %add91 = add i32 %21, %22, !dbg !389
  %sub92 = add i32 %add91, -1, !dbg !390
  %call93 = tail call fastcc i64 @get_field(i8* %from, i32 %19, i32 %20, i32 %sub92, i32 1) #7, !dbg !391
  %tobool94 = icmp eq i64 %call93, 0, !dbg !391
  br i1 %tobool94, label %if.end96, label %cleanup102, !dbg !392

if.end96:                                         ; preds = %if.else86
  %call98 = tail call fastcc i32 @mant_bits_set(%struct.floatformat* %0, i8* nonnull %add.ptr) #7, !dbg !393
  %tobool99 = icmp eq i32 %call98, 0, !dbg !394
  br label %cleanup102, !dbg !395

cleanup102:                                       ; preds = %if.then16, %if.else86, %if.end73, %for.end, %if.end55, %if.end62, %if.end28, %if.end24, %if.end, %if.end96, %if.end20
  %retval.1.shrunk = phi i1 [ %tobool23, %if.end20 ], [ %tobool99, %if.end96 ], [ true, %if.end ], [ false, %if.then16 ], [ true, %if.end24 ], [ false, %if.end28 ], [ %tobool81, %if.end73 ], [ true, %for.end ], [ true, %if.end55 ], [ false, %if.end62 ], [ false, %if.else86 ]
  %retval.1 = zext i1 %retval.1.shrunk to i32, !dbg !294
  ret i32 %retval.1, !dbg !396
}

; Function Attrs: nounwind uwtable
define dso_local void @floatformat_to_double(%struct.floatformat* %fmt, i8* %from, double* %to) local_unnamed_addr #3 !dbg !397 {
entry:
  call void @llvm.dbg.value(metadata %struct.floatformat* %fmt, metadata !402, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i8* %from, metadata !403, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double* %to, metadata !404, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i8* %from, metadata !405, metadata !DIExpression()), !dbg !416
  %byteorder = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 0, !dbg !417
  %0 = load i32, i32* %byteorder, align 8, !dbg !417
  %totalsize = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 1, !dbg !418
  %1 = load i32, i32* %totalsize, align 4, !dbg !418
  %exp_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 3, !dbg !419
  %2 = load i32, i32* %exp_start, align 4, !dbg !419
  %exp_len = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 4, !dbg !420
  %3 = load i32, i32* %exp_len, align 8, !dbg !420
  %call = tail call fastcc i64 @get_field(i8* %from, i32 %0, i32 %1, i32 %2, i32 %3) #7, !dbg !421
  call void @llvm.dbg.value(metadata i64 %call, metadata !407, metadata !DIExpression()), !dbg !416
  %exp_nan = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 6, !dbg !422
  %4 = load i32, i32* %exp_nan, align 8, !dbg !422
  %conv = zext i32 %4 to i64, !dbg !423
  %cmp = icmp eq i64 %call, %conv, !dbg !424
  br i1 %cmp, label %if.then, label %if.end10, !dbg !425

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @mant_bits_set(%struct.floatformat* %fmt, i8* %from) #7, !dbg !426
  call void @llvm.dbg.value(metadata i32 %call2, metadata !413, metadata !DIExpression()), !dbg !427
  %tobool = icmp eq i32 %call2, 0, !dbg !428
  %. = select i1 %tobool, double 0x7FF0000000000000, double 0x7FF8000000000000
  call void @llvm.dbg.value(metadata double %., metadata !406, metadata !DIExpression()), !dbg !416
  %5 = load i32, i32* %byteorder, align 8, !dbg !430
  %6 = load i32, i32* %totalsize, align 4, !dbg !432
  %sign_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 2, !dbg !433
  %7 = load i32, i32* %sign_start, align 8, !dbg !433
  %call6 = tail call fastcc i64 @get_field(i8* %from, i32 %5, i32 %6, i32 %7, i32 1) #7, !dbg !434
  %tobool7 = icmp eq i64 %call6, 0, !dbg !434
  %sub = fsub double -0.000000e+00, %., !dbg !435
  %dto.1 = select i1 %tobool7, double %., double %sub, !dbg !435
  call void @llvm.dbg.value(metadata double %dto.1, metadata !406, metadata !DIExpression()), !dbg !416
  br label %cleanup.cont

if.end10:                                         ; preds = %entry
  %man_len = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 8, !dbg !436
  %8 = load i32, i32* %man_len, align 8, !dbg !436
  call void @llvm.dbg.value(metadata i32 %8, metadata !411, metadata !DIExpression()), !dbg !416
  %man_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 7, !dbg !437
  %9 = load i32, i32* %man_start, align 4, !dbg !437
  call void @llvm.dbg.value(metadata i32 %9, metadata !410, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !406, metadata !DIExpression()), !dbg !416
  %cmp11 = icmp eq i64 %call, 0, !dbg !438
  br i1 %cmp11, label %lor.end, label %lor.rhs, !dbg !439

lor.rhs:                                          ; preds = %if.end10
  br label %lor.end, !dbg !439

lor.end:                                          ; preds = %lor.rhs, %if.end10
  %10 = phi i1 [ true, %if.end10 ], [ false, %lor.rhs ]
  br i1 %10, label %if.end21, label %if.then18, !dbg !440

if.then18:                                        ; preds = %lor.end
  %exp_bias = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 5, !dbg !441
  %11 = load i32, i32* %exp_bias, align 4, !dbg !441
  %conv19 = sext i32 %11 to i64, !dbg !443
  %sub20 = sub nsw i64 %call, %conv19, !dbg !444
  call void @llvm.dbg.value(metadata i64 %sub20, metadata !407, metadata !DIExpression()), !dbg !416
  br label %if.end21, !dbg !445

if.end21:                                         ; preds = %if.then18, %lor.end
  %exponent.0 = phi i64 [ %call, %lor.end ], [ %sub20, %if.then18 ], !dbg !416
  call void @llvm.dbg.value(metadata i64 %exponent.0, metadata !407, metadata !DIExpression()), !dbg !416
  br i1 %10, label %if.end31, label %if.then23, !dbg !446

if.then23:                                        ; preds = %if.end21
  %intbit = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 9, !dbg !447
  %12 = load i32, i32* %intbit, align 4, !dbg !447
  %cmp24 = icmp eq i32 %12, 1, !dbg !451
  br i1 %cmp24, label %if.then26, label %if.else29, !dbg !452

if.then26:                                        ; preds = %if.then23
  %conv27 = trunc i64 %exponent.0 to i32, !dbg !453
  %call28 = tail call double @ldexp(double 1.000000e+00, i32 %conv27) #6, !dbg !454
  call void @llvm.dbg.value(metadata double %call28, metadata !406, metadata !DIExpression()), !dbg !416
  br label %if.end31, !dbg !455

if.else29:                                        ; preds = %if.then23
  %inc = add nsw i64 %exponent.0, 1, !dbg !456
  call void @llvm.dbg.value(metadata i64 %inc, metadata !407, metadata !DIExpression()), !dbg !416
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.else29, %if.end21
  %dto.3 = phi double [ 0.000000e+00, %if.end21 ], [ %call28, %if.then26 ], [ 0.000000e+00, %if.else29 ], !dbg !416
  %exponent.2 = phi i64 [ %exponent.0, %if.end21 ], [ %exponent.0, %if.then26 ], [ %inc, %if.else29 ], !dbg !457
  call void @llvm.dbg.value(metadata i64 %exponent.2, metadata !407, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double %dto.3, metadata !406, metadata !DIExpression()), !dbg !416
  %exp_bias47 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 5, !dbg !458
  br i1 %10, label %if.end31.split.us, label %if.end31.if.end31.split_crit_edge, !dbg !461

if.end31.if.end31.split_crit_edge:                ; preds = %if.end31
  br label %while.cond, !dbg !461

if.end31.split.us:                                ; preds = %if.end31
  br label %while.cond.us, !dbg !461

while.cond.us:                                    ; preds = %if.end62.us, %if.end31.split.us
  %dto.4.us = phi double [ %dto.3, %if.end31.split.us ], [ %dto.5.us, %if.end62.us ], !dbg !416
  %exponent.3.us = phi i64 [ %exponent.2, %if.end31.split.us ], [ %exponent.4.us, %if.end62.us ], !dbg !416
  %mant_off.0.us = phi i32 [ %9, %if.end31.split.us ], [ %add69.us, %if.end62.us ], !dbg !416
  %mant_bits_left.0.us = phi i32 [ %8, %if.end31.split.us ], [ %sub70.us, %if.end62.us ], !dbg !416
  call void @llvm.dbg.value(metadata i32 %mant_bits_left.0.us, metadata !411, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i32 %mant_off.0.us, metadata !410, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 %exponent.3.us, metadata !407, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double %dto.4.us, metadata !406, metadata !DIExpression()), !dbg !416
  %cmp32.us = icmp sgt i32 %mant_bits_left.0.us, 0, !dbg !462
  br i1 %cmp32.us, label %while.body.us, label %while.end.us-lcssa.us, !dbg !461

while.body.us:                                    ; preds = %while.cond.us
  %cmp34.us = icmp slt i32 %mant_bits_left.0.us, 32, !dbg !463
  %mant_bits_left.0..us = select i1 %cmp34.us, i32 %mant_bits_left.0.us, i32 32, !dbg !463
  call void @llvm.dbg.value(metadata i32 %mant_bits_left.0..us, metadata !409, metadata !DIExpression()), !dbg !416
  %13 = load i32, i32* %byteorder, align 8, !dbg !464
  %14 = load i32, i32* %totalsize, align 4, !dbg !465
  %call38.us = tail call fastcc i64 @get_field(i8* %from, i32 %13, i32 %14, i32 %mant_off.0.us, i32 %mant_bits_left.0..us) #7, !dbg !466
  call void @llvm.dbg.value(metadata i64 %call38.us, metadata !408, metadata !DIExpression()), !dbg !416
  %cmp40.us = icmp eq i64 %exponent.3.us, 0, !dbg !467
  %cmp43.us = icmp ne i64 %call38.us, 0, !dbg !468
  %or.cond1.us = and i1 %cmp40.us, %cmp43.us, !dbg !469
  %conv46.us = uitofp i64 %call38.us to double, !dbg !458
  br i1 %or.cond1.us, label %if.then45.us, label %if.else55.us, !dbg !469

if.else55.us:                                     ; preds = %while.body.us
  %15 = trunc i64 %exponent.3.us to i32, !dbg !470
  %conv59.us = sub i32 %15, %mant_bits_left.0..us, !dbg !470
  %call60.us = tail call double @ldexp(double %conv46.us, i32 %conv59.us) #6, !dbg !471
  br label %if.end62.us

if.then45.us:                                     ; preds = %while.body.us
  %16 = load i32, i32* %exp_bias47, align 4, !dbg !472
  %sub48.us = sub nsw i32 0, %16, !dbg !473
  %sub49.us = sub i32 %sub48.us, %mant_bits_left.0..us, !dbg !474
  %17 = load i32, i32* %man_start, align 4, !dbg !475
  %sub513.us = sub i32 %17, %mant_off.0.us, !dbg !476
  %sub52.us = add i32 %sub49.us, %sub513.us, !dbg !476
  %add.us = add i32 %sub52.us, 1, !dbg !477
  %call53.us = tail call double @ldexp(double %conv46.us, i32 %add.us) #6, !dbg !478
  br label %if.end62.us, !dbg !479

if.end62.us:                                      ; preds = %if.then45.us, %if.else55.us
  %call53.pn.us = phi double [ %call53.us, %if.then45.us ], [ %call60.us, %if.else55.us ]
  %dto.5.us = fadd double %dto.4.us, %call53.pn.us, !dbg !458
  call void @llvm.dbg.value(metadata double %dto.5.us, metadata !406, metadata !DIExpression()), !dbg !416
  %conv66.us = zext i32 %mant_bits_left.0..us to i64, !dbg !480
  %sub67.us = sub nsw i64 %exponent.3.us, %conv66.us, !dbg !480
  %exponent.4.us = select i1 %cmp40.us, i64 0, i64 %sub67.us, !dbg !480
  call void @llvm.dbg.value(metadata i64 %exponent.4.us, metadata !407, metadata !DIExpression()), !dbg !416
  %add69.us = add i32 %mant_off.0.us, %mant_bits_left.0..us, !dbg !481
  call void @llvm.dbg.value(metadata i32 %add69.us, metadata !410, metadata !DIExpression()), !dbg !416
  %sub70.us = sub i32 %mant_bits_left.0.us, %mant_bits_left.0..us, !dbg !482
  call void @llvm.dbg.value(metadata i32 %sub70.us, metadata !411, metadata !DIExpression()), !dbg !416
  br label %while.cond.us, !dbg !461, !llvm.loop !483

while.end.us-lcssa.us:                            ; preds = %while.cond.us
  %dto.4.us.lcssa = phi double [ %dto.4.us, %while.cond.us ], !dbg !416
  call void @llvm.dbg.value(metadata double %dto.4.us.lcssa, metadata !406, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double %dto.4.us.lcssa, metadata !406, metadata !DIExpression()), !dbg !416
  br label %while.end, !dbg !485

while.cond:                                       ; preds = %while.body, %if.end31.if.end31.split_crit_edge
  %dto.4 = phi double [ %dto.3, %if.end31.if.end31.split_crit_edge ], [ %dto.5, %while.body ], !dbg !416
  %exponent.3 = phi i64 [ %exponent.2, %if.end31.if.end31.split_crit_edge ], [ %exponent.4, %while.body ], !dbg !416
  %mant_off.0 = phi i32 [ %9, %if.end31.if.end31.split_crit_edge ], [ %add69, %while.body ], !dbg !416
  %mant_bits_left.0 = phi i32 [ %8, %if.end31.if.end31.split_crit_edge ], [ %sub70, %while.body ], !dbg !416
  call void @llvm.dbg.value(metadata i32 %mant_bits_left.0, metadata !411, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i32 %mant_off.0, metadata !410, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 %exponent.3, metadata !407, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double %dto.4, metadata !406, metadata !DIExpression()), !dbg !416
  %cmp32 = icmp sgt i32 %mant_bits_left.0, 0, !dbg !462
  br i1 %cmp32, label %while.body, label %while.end.us-lcssa, !dbg !461

while.body:                                       ; preds = %while.cond
  %cmp34 = icmp slt i32 %mant_bits_left.0, 32, !dbg !463
  %mant_bits_left.0. = select i1 %cmp34, i32 %mant_bits_left.0, i32 32, !dbg !463
  call void @llvm.dbg.value(metadata i32 %mant_bits_left.0., metadata !409, metadata !DIExpression()), !dbg !416
  %18 = load i32, i32* %byteorder, align 8, !dbg !464
  %19 = load i32, i32* %totalsize, align 4, !dbg !465
  %call38 = tail call fastcc i64 @get_field(i8* %from, i32 %18, i32 %19, i32 %mant_off.0, i32 %mant_bits_left.0.) #7, !dbg !466
  call void @llvm.dbg.value(metadata i64 %call38, metadata !408, metadata !DIExpression()), !dbg !416
  %conv46 = uitofp i64 %call38 to double, !dbg !458
  %20 = trunc i64 %exponent.3 to i32, !dbg !470
  %conv59 = sub i32 %20, %mant_bits_left.0., !dbg !470
  %call60 = tail call double @ldexp(double %conv46, i32 %conv59) #6, !dbg !471
  %dto.5 = fadd double %dto.4, %call60, !dbg !458
  call void @llvm.dbg.value(metadata double %dto.5, metadata !406, metadata !DIExpression()), !dbg !416
  %cmp63 = icmp eq i64 %exponent.3, 0, !dbg !487
  %conv66 = zext i32 %mant_bits_left.0. to i64, !dbg !480
  %sub67 = sub nsw i64 %exponent.3, %conv66, !dbg !480
  %exponent.4 = select i1 %cmp63, i64 0, i64 %sub67, !dbg !480
  call void @llvm.dbg.value(metadata i64 %exponent.4, metadata !407, metadata !DIExpression()), !dbg !416
  %add69 = add i32 %mant_off.0, %mant_bits_left.0., !dbg !481
  call void @llvm.dbg.value(metadata i32 %add69, metadata !410, metadata !DIExpression()), !dbg !416
  %sub70 = sub i32 %mant_bits_left.0, %mant_bits_left.0., !dbg !482
  call void @llvm.dbg.value(metadata i32 %sub70, metadata !411, metadata !DIExpression()), !dbg !416
  br label %while.cond, !dbg !461, !llvm.loop !483

while.end.us-lcssa:                               ; preds = %while.cond
  %dto.4.lcssa5 = phi double [ %dto.4, %while.cond ], !dbg !416
  call void @llvm.dbg.value(metadata double %dto.4.lcssa5, metadata !406, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double %dto.4.lcssa5, metadata !406, metadata !DIExpression()), !dbg !416
  br label %while.end, !dbg !485

while.end:                                        ; preds = %while.end.us-lcssa.us, %while.end.us-lcssa
  %dto.4.lcssa = phi double [ %dto.4.lcssa5, %while.end.us-lcssa ], [ %dto.4.us.lcssa, %while.end.us-lcssa.us ], !dbg !416
  call void @llvm.dbg.value(metadata double %dto.4.lcssa, metadata !406, metadata !DIExpression()), !dbg !416
  %21 = load i32, i32* %byteorder, align 8, !dbg !485
  %22 = load i32, i32* %totalsize, align 4, !dbg !489
  %sign_start73 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 2, !dbg !490
  %23 = load i32, i32* %sign_start73, align 8, !dbg !490
  %call74 = tail call fastcc i64 @get_field(i8* %from, i32 %21, i32 %22, i32 %23, i32 1) #7, !dbg !491
  %tobool75 = icmp eq i64 %call74, 0, !dbg !491
  %sub77 = fsub double -0.000000e+00, %dto.4.lcssa, !dbg !492
  %spec.select = select i1 %tobool75, double %dto.4.lcssa, double %sub77, !dbg !493
  call void @llvm.dbg.value(metadata double %spec.select, metadata !406, metadata !DIExpression()), !dbg !416
  br label %cleanup.cont, !dbg !494

cleanup.cont:                                     ; preds = %if.then, %while.end
  %storemerge = phi double [ %spec.select, %while.end ], [ %dto.1, %if.then ], !dbg !416
  store double %storemerge, double* %to, align 8, !dbg !416
  ret void, !dbg !494
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define internal fastcc i64 @get_field(i8* %data, i32 %order, i32 %total_len, i32 %start, i32 %len) unnamed_addr #3 !dbg !495 {
entry:
  call void @llvm.dbg.value(metadata i8* %data, metadata !499, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %order, metadata !500, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %total_len, metadata !501, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %start, metadata !502, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %len, metadata !503, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i64 0, metadata !504, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 0, metadata !508, metadata !DIExpression()), !dbg !514
  %cmp = icmp eq i32 %order, 0, !dbg !515
  %cond = select i1 %cmp, i32 1, i32 -1, !dbg !516
  call void @llvm.dbg.value(metadata i32 %cond, metadata !509, metadata !DIExpression()), !dbg !514
  %add = add i32 %start, %len, !dbg !517
  %sub = sub i32 %total_len, %add, !dbg !518
  call void @llvm.dbg.value(metadata i32 %sub, metadata !502, metadata !DIExpression()), !dbg !514
  br i1 %cmp, label %if.then, label %if.else, !dbg !519

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %sub, metadata !505, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value)), !dbg !514
  br label %if.end, !dbg !520

if.else:                                          ; preds = %entry
  %sub3 = add i32 %add, -1, !dbg !522
  call void @llvm.dbg.value(metadata i32 %sub3, metadata !505, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value)), !dbg !514
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cur_byte.0.in = phi i32 [ %sub, %if.then ], [ %sub3, %if.else ]
  %cur_byte.0 = lshr i32 %cur_byte.0.in, 3, !dbg !523
  call void @llvm.dbg.value(metadata i32 %cur_byte.0, metadata !505, metadata !DIExpression()), !dbg !514
  %rem = and i32 %sub, 7, !dbg !524
  call void @llvm.dbg.value(metadata i32 %rem, metadata !506, metadata !DIExpression()), !dbg !514
  %add5 = add i32 %rem, %len, !dbg !525
  %cmp6 = icmp ult i32 %add5, 8, !dbg !525
  %cond8 = select i1 %cmp6, i32 %add5, i32 8, !dbg !525
  call void @llvm.dbg.value(metadata i32 %cond8, metadata !507, metadata !DIExpression()), !dbg !514
  br label %do.body, !dbg !526

do.body:                                          ; preds = %do.body, %if.end
  %cur_byte.1 = phi i32 [ %cur_byte.0, %if.end ], [ %add15, %do.body ], !dbg !514
  %result.0 = phi i64 [ 0, %if.end ], [ %or, %do.body ], !dbg !514
  %len.addr.0 = phi i32 [ %len, %if.end ], [ %sub13, %do.body ]
  %lo_bit.0 = phi i32 [ %rem, %if.end ], [ 0, %do.body ], !dbg !514
  %hi_bit.0 = phi i32 [ %cond8, %if.end ], [ %sub13., %do.body ], !dbg !514
  %cur_bitshift.0 = phi i32 [ 0, %if.end ], [ %add14, %do.body ], !dbg !514
  call void @llvm.dbg.value(metadata i32 %cur_bitshift.0, metadata !508, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %hi_bit.0, metadata !507, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %lo_bit.0, metadata !506, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %len.addr.0, metadata !503, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i64 %result.0, metadata !504, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %cur_byte.1, metadata !505, metadata !DIExpression()), !dbg !514
  %idx.ext = zext i32 %cur_byte.1 to i64, !dbg !527
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %idx.ext, !dbg !527
  %0 = load i8, i8* %add.ptr, align 1, !dbg !528
  %conv = zext i8 %0 to i32, !dbg !528
  %shr = lshr i32 %conv, %lo_bit.0, !dbg !529
  call void @llvm.dbg.value(metadata i32 %shr, metadata !510, metadata !DIExpression()), !dbg !530
  %sub9 = sub nsw i32 %hi_bit.0, %lo_bit.0, !dbg !531
  call void @llvm.dbg.value(metadata i32 %sub9, metadata !512, metadata !DIExpression()), !dbg !530
  %notmask = shl nsw i32 -1, %sub9, !dbg !532
  %sub10 = xor i32 %notmask, -1, !dbg !532
  call void @llvm.dbg.value(metadata i32 %sub10, metadata !513, metadata !DIExpression()), !dbg !530
  %and = and i32 %shr, %sub10, !dbg !533
  %shl11 = shl i32 %and, %cur_bitshift.0, !dbg !534
  %conv12 = zext i32 %shl11 to i64, !dbg !535
  %or = or i64 %result.0, %conv12, !dbg !536
  call void @llvm.dbg.value(metadata i64 %or, metadata !504, metadata !DIExpression()), !dbg !514
  %sub13 = sub i32 %len.addr.0, %sub9, !dbg !537
  call void @llvm.dbg.value(metadata i32 %sub13, metadata !503, metadata !DIExpression()), !dbg !514
  %add14 = add i32 %cur_bitshift.0, %sub9, !dbg !538
  call void @llvm.dbg.value(metadata i32 %add14, metadata !508, metadata !DIExpression()), !dbg !514
  %add15 = add i32 %cur_byte.1, %cond, !dbg !539
  call void @llvm.dbg.value(metadata i32 %add15, metadata !505, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !514
  %cmp16 = icmp ult i32 %sub13, 8, !dbg !540
  %sub13. = select i1 %cmp16, i32 %sub13, i32 8, !dbg !540
  call void @llvm.dbg.value(metadata i32 %sub13., metadata !507, metadata !DIExpression()), !dbg !514
  %cmp22 = icmp eq i32 %sub13, 0, !dbg !541
  br i1 %cmp22, label %do.end, label %do.body, !dbg !542, !llvm.loop !543

do.end:                                           ; preds = %do.body
  %or.lcssa = phi i64 [ %or, %do.body ], !dbg !536
  ret i64 %or.lcssa, !dbg !545
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mant_bits_set(%struct.floatformat* %fmt, i8* %ufrom) unnamed_addr #3 !dbg !546 {
entry:
  call void @llvm.dbg.value(metadata %struct.floatformat* %fmt, metadata !550, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i8* %ufrom, metadata !551, metadata !DIExpression()), !dbg !555
  %man_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 7, !dbg !556
  %0 = load i32, i32* %man_start, align 4, !dbg !556
  call void @llvm.dbg.value(metadata i32 %0, metadata !553, metadata !DIExpression()), !dbg !555
  %man_len = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 8, !dbg !557
  %1 = load i32, i32* %man_len, align 8, !dbg !557
  call void @llvm.dbg.value(metadata i32 %1, metadata !554, metadata !DIExpression()), !dbg !555
  %byteorder = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 0, !dbg !558
  %totalsize = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 1, !dbg !558
  br label %while.cond, !dbg !561

while.cond:                                       ; preds = %if.end, %entry
  %mant_off.0 = phi i32 [ %0, %entry ], [ %add, %if.end ], !dbg !555
  %mant_bits_left.0 = phi i32 [ %1, %entry ], [ %sub, %if.end ], !dbg !555
  call void @llvm.dbg.value(metadata i32 %mant_bits_left.0, metadata !554, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 %mant_off.0, metadata !553, metadata !DIExpression()), !dbg !555
  %cmp = icmp sgt i32 %mant_bits_left.0, 0, !dbg !562
  br i1 %cmp, label %while.body, label %cleanup, !dbg !561

while.body:                                       ; preds = %while.cond
  %cmp1 = icmp slt i32 %mant_bits_left.0, 32, !dbg !563
  %mant_bits_left.0. = select i1 %cmp1, i32 %mant_bits_left.0, i32 32, !dbg !563
  call void @llvm.dbg.value(metadata i32 %mant_bits_left.0., metadata !552, metadata !DIExpression()), !dbg !555
  %2 = load i32, i32* %byteorder, align 8, !dbg !564
  %3 = load i32, i32* %totalsize, align 4, !dbg !565
  %call = tail call fastcc i64 @get_field(i8* %ufrom, i32 %2, i32 %3, i32 %mant_off.0, i32 %mant_bits_left.0.) #7, !dbg !566
  %cmp2 = icmp eq i64 %call, 0, !dbg !567
  br i1 %cmp2, label %if.end, label %cleanup, !dbg !568

if.end:                                           ; preds = %while.body
  %add = add i32 %mant_off.0, %mant_bits_left.0., !dbg !569
  call void @llvm.dbg.value(metadata i32 %add, metadata !553, metadata !DIExpression()), !dbg !555
  %sub = sub i32 %mant_bits_left.0, %mant_bits_left.0., !dbg !570
  call void @llvm.dbg.value(metadata i32 %sub, metadata !554, metadata !DIExpression()), !dbg !555
  br label %while.cond, !dbg !561, !llvm.loop !571

cleanup:                                          ; preds = %while.body, %while.cond
  %retval.0 = phi i32 [ 1, %while.body ], [ 0, %while.cond ], !dbg !555
  ret i32 %retval.0, !dbg !573
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local double @ldexp(double, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @floatformat_from_double(%struct.floatformat* %fmt, double* %from, i8* %to) local_unnamed_addr #3 !dbg !574 {
entry:
  %exponent = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.floatformat* %fmt, metadata !580, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double* %from, metadata !581, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %to, metadata !582, metadata !DIExpression()), !dbg !592
  %0 = bitcast i32* %exponent to i8*, !dbg !593
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !593
  call void @llvm.dbg.value(metadata i8* %to, metadata !589, metadata !DIExpression()), !dbg !592
  %1 = load double, double* %from, align 8, !dbg !594
  call void @llvm.dbg.value(metadata double %1, metadata !583, metadata !DIExpression()), !dbg !592
  %totalsize = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 1, !dbg !595
  %2 = load i32, i32* %totalsize, align 4, !dbg !595
  %div = lshr i32 %2, 3, !dbg !596
  %conv = zext i32 %div to i64, !dbg !597
  %call = tail call i8* @memset(i8* %to, i32 0, i64 %conv) #6, !dbg !598
  %cmp = fcmp olt double %1, 0.000000e+00, !dbg !599
  br i1 %cmp, label %if.then, label %if.end, !dbg !601

if.then:                                          ; preds = %entry
  %byteorder = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 0, !dbg !602
  %3 = load i32, i32* %byteorder, align 8, !dbg !602
  %4 = load i32, i32* %totalsize, align 4, !dbg !604
  %sign_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 2, !dbg !605
  %5 = load i32, i32* %sign_start, align 8, !dbg !605
  tail call fastcc void @put_field(i8* %to, i32 %3, i32 %4, i32 %5, i32 1, i64 1) #7, !dbg !606
  %sub = fsub double -0.000000e+00, %1, !dbg !607
  call void @llvm.dbg.value(metadata double %sub, metadata !583, metadata !DIExpression()), !dbg !592
  br label %if.end, !dbg !608

if.end:                                           ; preds = %if.then, %entry
  %dfrom.0 = phi double [ %sub, %if.then ], [ %1, %entry ], !dbg !592
  call void @llvm.dbg.value(metadata double %dfrom.0, metadata !583, metadata !DIExpression()), !dbg !592
  %cmp3 = fcmp oeq double %dfrom.0, 0.000000e+00, !dbg !609
  br i1 %cmp3, label %cleanup, label %if.end6, !dbg !611

if.end6:                                          ; preds = %if.end
  %cmp7 = fcmp uno double %dfrom.0, 0.000000e+00, !dbg !612
  br i1 %cmp7, label %if.then9, label %if.end15, !dbg !614

if.then9:                                         ; preds = %if.end6
  %byteorder10 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 0, !dbg !615
  %6 = load i32, i32* %byteorder10, align 8, !dbg !615
  %7 = load i32, i32* %totalsize, align 4, !dbg !617
  %exp_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 3, !dbg !618
  %8 = load i32, i32* %exp_start, align 4, !dbg !618
  %exp_len = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 4, !dbg !619
  %9 = load i32, i32* %exp_len, align 8, !dbg !619
  %exp_nan = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 6, !dbg !620
  %10 = load i32, i32* %exp_nan, align 8, !dbg !620
  %conv12 = zext i32 %10 to i64, !dbg !621
  tail call fastcc void @put_field(i8* %to, i32 %6, i32 %7, i32 %8, i32 %9, i64 %conv12) #7, !dbg !622
  %11 = load i32, i32* %byteorder10, align 8, !dbg !623
  %12 = load i32, i32* %totalsize, align 4, !dbg !624
  %man_start = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 7, !dbg !625
  %13 = load i32, i32* %man_start, align 4, !dbg !625
  tail call fastcc void @put_field(i8* %to, i32 %11, i32 %12, i32 %13, i32 32, i64 1) #7, !dbg !626
  br label %cleanup, !dbg !627

if.end15:                                         ; preds = %if.end6
  %add = fadd double %dfrom.0, %dfrom.0, !dbg !628
  %cmp16 = fcmp oeq double %add, %dfrom.0, !dbg !630
  br i1 %cmp16, label %if.then18, label %if.end25, !dbg !631

if.then18:                                        ; preds = %if.end15
  %byteorder19 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 0, !dbg !632
  %14 = load i32, i32* %byteorder19, align 8, !dbg !632
  %15 = load i32, i32* %totalsize, align 4, !dbg !634
  %exp_start21 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 3, !dbg !635
  %16 = load i32, i32* %exp_start21, align 4, !dbg !635
  %exp_len22 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 4, !dbg !636
  %17 = load i32, i32* %exp_len22, align 8, !dbg !636
  %exp_nan23 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 6, !dbg !637
  %18 = load i32, i32* %exp_nan23, align 8, !dbg !637
  %conv24 = zext i32 %18 to i64, !dbg !638
  tail call fastcc void @put_field(i8* %to, i32 %14, i32 %15, i32 %16, i32 %17, i64 %conv24) #7, !dbg !639
  br label %cleanup, !dbg !640

if.end25:                                         ; preds = %if.end15
  call void @llvm.dbg.value(metadata i32* %exponent, metadata !584, metadata !DIExpression(DW_OP_deref)), !dbg !592
  %call26 = call double @frexp(double %dfrom.0, i32* nonnull %exponent) #6, !dbg !641
  call void @llvm.dbg.value(metadata double %call26, metadata !585, metadata !DIExpression()), !dbg !592
  %19 = load i32, i32* %exponent, align 4, !dbg !642
  call void @llvm.dbg.value(metadata i32 %19, metadata !584, metadata !DIExpression()), !dbg !592
  %exp_bias = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 5, !dbg !644
  %20 = load i32, i32* %exp_bias, align 4, !dbg !644
  %add27 = add nsw i32 %19, %20, !dbg !645
  %cmp29 = icmp sgt i32 %add27, 1, !dbg !646
  %byteorder32 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 0, !dbg !647
  %21 = load i32, i32* %byteorder32, align 8, !dbg !647
  %22 = load i32, i32* %totalsize, align 4, !dbg !647
  %exp_start34 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 3, !dbg !647
  %23 = load i32, i32* %exp_start34, align 4, !dbg !647
  %exp_len35 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 4, !dbg !647
  %24 = load i32, i32* %exp_len35, align 8, !dbg !647
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !648

if.then31:                                        ; preds = %if.end25
  call void @llvm.dbg.value(metadata i32 %19, metadata !584, metadata !DIExpression()), !dbg !592
  %sub38 = add nsw i32 %add27, -1, !dbg !649
  %conv39 = sext i32 %sub38 to i64, !dbg !650
  call fastcc void @put_field(i8* %to, i32 %21, i32 %22, i32 %23, i32 %24, i64 %conv39) #7, !dbg !651
  br label %if.end48, !dbg !651

if.else:                                          ; preds = %if.end25
  call fastcc void @put_field(i8* %to, i32 %21, i32 %22, i32 %23, i32 %24, i64 0) #7, !dbg !652
  %25 = load i32, i32* %exponent, align 4, !dbg !654
  call void @llvm.dbg.value(metadata i32 %25, metadata !584, metadata !DIExpression()), !dbg !592
  %26 = load i32, i32* %exp_bias, align 4, !dbg !655
  %add45 = add nsw i32 %25, %26, !dbg !656
  %sub46 = add nsw i32 %add45, -1, !dbg !657
  %call47 = call double @ldexp(double %call26, i32 %sub46) #6, !dbg !658
  call void @llvm.dbg.value(metadata double %call47, metadata !585, metadata !DIExpression()), !dbg !592
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then31
  %mant.0 = phi double [ %call26, %if.then31 ], [ %call47, %if.else ], !dbg !592
  call void @llvm.dbg.value(metadata double %mant.0, metadata !585, metadata !DIExpression()), !dbg !592
  %man_len = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 8, !dbg !659
  %27 = load i32, i32* %man_len, align 8, !dbg !659
  call void @llvm.dbg.value(metadata i32 %27, metadata !588, metadata !DIExpression()), !dbg !592
  %man_start49 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 7, !dbg !660
  %28 = load i32, i32* %man_start49, align 4, !dbg !660
  call void @llvm.dbg.value(metadata i32 %28, metadata !587, metadata !DIExpression()), !dbg !592
  %intbit = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 9, !dbg !661
  br label %while.cond, !dbg !663

while.cond:                                       ; preds = %if.end76, %if.end48
  %mant_off.0 = phi i32 [ %28, %if.end48 ], [ %add79, %if.end76 ], !dbg !592
  %mant.1 = phi double [ %mant.0, %if.end48 ], [ %sub56, %if.end76 ], !dbg !592
  %mant_bits_left.0 = phi i32 [ %27, %if.end48 ], [ %sub80, %if.end76 ], !dbg !592
  call void @llvm.dbg.value(metadata i32 %mant_bits_left.0, metadata !588, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %mant.1, metadata !585, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 %mant_off.0, metadata !587, metadata !DIExpression()), !dbg !592
  %cmp50 = icmp sgt i32 %mant_bits_left.0, 0, !dbg !664
  br i1 %cmp50, label %while.body, label %cleanup.loopexit, !dbg !663

while.body:                                       ; preds = %while.cond
  %cmp52 = icmp slt i32 %mant_bits_left.0, 32, !dbg !665
  %mant_bits_left.0. = select i1 %cmp52, i32 %mant_bits_left.0, i32 32, !dbg !666
  call void @llvm.dbg.value(metadata i32 %mant_bits_left.0., metadata !586, metadata !DIExpression()), !dbg !592
  %mul = fmul double %mant.1, 0x41F0000000000000, !dbg !667
  call void @llvm.dbg.value(metadata double %mul, metadata !585, metadata !DIExpression()), !dbg !592
  %conv54 = fptoui double %mul to i64, !dbg !668
  call void @llvm.dbg.value(metadata i64 %conv54, metadata !590, metadata !DIExpression()), !dbg !669
  %conv55 = uitofp i64 %conv54 to double, !dbg !670
  %sub56 = fsub double %mul, %conv55, !dbg !671
  call void @llvm.dbg.value(metadata double %sub56, metadata !585, metadata !DIExpression()), !dbg !592
  %29 = load i32, i32* %man_len, align 8, !dbg !672
  %cmp58 = icmp eq i32 %mant_bits_left.0, %29, !dbg !673
  br i1 %cmp58, label %land.lhs.true, label %if.else70, !dbg !674

land.lhs.true:                                    ; preds = %while.body
  %30 = load i32, i32* %intbit, align 4, !dbg !675
  %cmp60 = icmp eq i32 %30, 1, !dbg !676
  br i1 %cmp60, label %land.lhs.true62, label %if.else70, !dbg !677

land.lhs.true62:                                  ; preds = %land.lhs.true
  %31 = load i32, i32* %exponent, align 4, !dbg !678
  call void @llvm.dbg.value(metadata i32 %31, metadata !584, metadata !DIExpression()), !dbg !592
  %32 = load i32, i32* %exp_bias, align 4, !dbg !679
  %add64 = add nsw i32 %31, %32, !dbg !680
  %cmp66 = icmp sgt i32 %add64, 1, !dbg !681
  br i1 %cmp66, label %if.then68, label %if.else70, !dbg !682

if.then68:                                        ; preds = %land.lhs.true62
  %and = and i64 %conv54, 2147483647, !dbg !683
  call void @llvm.dbg.value(metadata i64 %and, metadata !590, metadata !DIExpression()), !dbg !669
  %sub69 = add i32 %mant_bits_left.0., -1, !dbg !685
  call void @llvm.dbg.value(metadata i32 %sub69, metadata !586, metadata !DIExpression()), !dbg !592
  br label %if.end76, !dbg !686

if.else70:                                        ; preds = %land.lhs.true62, %land.lhs.true, %while.body
  %33 = call i32 @llvm.usub.sat.i32(i32 32, i32 %mant_bits_left.0.), !dbg !687
  %shr = zext i32 %33 to i64, !dbg !687
  %mant_long.0 = lshr i64 %conv54, %shr, !dbg !687
  br label %if.end76, !dbg !687

if.end76:                                         ; preds = %if.else70, %if.then68
  %mant_bits.0 = phi i32 [ %sub69, %if.then68 ], [ %mant_bits_left.0., %if.else70 ], !dbg !669
  %mant_long.1 = phi i64 [ %and, %if.then68 ], [ %mant_long.0, %if.else70 ], !dbg !661
  call void @llvm.dbg.value(metadata i64 %mant_long.1, metadata !590, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 %mant_bits.0, metadata !586, metadata !DIExpression()), !dbg !592
  %34 = load i32, i32* %byteorder32, align 8, !dbg !688
  %35 = load i32, i32* %totalsize, align 4, !dbg !689
  call fastcc void @put_field(i8* %to, i32 %34, i32 %35, i32 %mant_off.0, i32 %mant_bits.0, i64 %mant_long.1) #7, !dbg !690
  %add79 = add i32 %mant_off.0, %mant_bits.0, !dbg !691
  call void @llvm.dbg.value(metadata i32 %add79, metadata !587, metadata !DIExpression()), !dbg !592
  %sub80 = sub i32 %mant_bits_left.0, %mant_bits.0, !dbg !692
  call void @llvm.dbg.value(metadata i32 %sub80, metadata !588, metadata !DIExpression()), !dbg !592
  br label %while.cond, !dbg !663, !llvm.loop !693

cleanup.loopexit:                                 ; preds = %while.cond
  br label %cleanup, !dbg !695

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %if.then18, %if.then9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !695
  ret void, !dbg !695
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @put_field(i8* %data, i32 %order, i32 %total_len, i32 %start, i32 %len, i64 %stuff_to_put) unnamed_addr #3 !dbg !696 {
entry:
  call void @llvm.dbg.value(metadata i8* %data, metadata !700, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 %order, metadata !701, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 %total_len, metadata !702, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 %start, metadata !703, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 %len, metadata !704, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i64 %stuff_to_put, metadata !705, metadata !DIExpression()), !dbg !714
  %cmp = icmp eq i32 %order, 0, !dbg !715
  %cond = select i1 %cmp, i32 1, i32 -1, !dbg !716
  call void @llvm.dbg.value(metadata i32 %cond, metadata !709, metadata !DIExpression()), !dbg !714
  %add = add i32 %start, %len, !dbg !717
  %sub = sub i32 %total_len, %add, !dbg !718
  call void @llvm.dbg.value(metadata i32 %sub, metadata !703, metadata !DIExpression()), !dbg !714
  br i1 %cmp, label %if.then, label %if.else, !dbg !719

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %sub, metadata !706, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value)), !dbg !714
  br label %if.end, !dbg !720

if.else:                                          ; preds = %entry
  %sub3 = add i32 %add, -1, !dbg !722
  call void @llvm.dbg.value(metadata i32 %sub3, metadata !706, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value)), !dbg !714
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cur_byte.0.in = phi i32 [ %sub, %if.then ], [ %sub3, %if.else ]
  %cur_byte.0 = lshr i32 %cur_byte.0.in, 3, !dbg !723
  call void @llvm.dbg.value(metadata i32 %cur_byte.0, metadata !706, metadata !DIExpression()), !dbg !714
  %rem = and i32 %sub, 7, !dbg !724
  call void @llvm.dbg.value(metadata i32 %rem, metadata !707, metadata !DIExpression()), !dbg !714
  %add5 = add i32 %rem, %len, !dbg !725
  %cmp6 = icmp ult i32 %add5, 8, !dbg !725
  %cond8 = select i1 %cmp6, i32 %add5, i32 8, !dbg !725
  call void @llvm.dbg.value(metadata i32 %cond8, metadata !708, metadata !DIExpression()), !dbg !714
  br label %do.body, !dbg !726

do.body:                                          ; preds = %do.body, %if.end
  %stuff_to_put.addr.0 = phi i64 [ %stuff_to_put, %if.end ], [ %shr, %do.body ]
  %len.addr.0 = phi i32 [ %len, %if.end ], [ %sub18, %do.body ]
  %cur_byte.1 = phi i32 [ %cur_byte.0, %if.end ], [ %add19, %do.body ], !dbg !714
  %lo_bit.0 = phi i32 [ %rem, %if.end ], [ 0, %do.body ], !dbg !714
  %hi_bit.0 = phi i32 [ %cond8, %if.end ], [ %sub18., %do.body ], !dbg !714
  call void @llvm.dbg.value(metadata i32 %hi_bit.0, metadata !708, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 %lo_bit.0, metadata !707, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 %cur_byte.1, metadata !706, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 %len.addr.0, metadata !704, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i64 %stuff_to_put.addr.0, metadata !705, metadata !DIExpression()), !dbg !714
  %idx.ext = zext i32 %cur_byte.1 to i64, !dbg !727
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %idx.ext, !dbg !727
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !710, metadata !DIExpression()), !dbg !728
  %sub9 = sub nsw i32 %hi_bit.0, %lo_bit.0, !dbg !729
  call void @llvm.dbg.value(metadata i32 %sub9, metadata !712, metadata !DIExpression()), !dbg !728
  %notmask = shl nsw i32 -1, %sub9, !dbg !730
  %sub10 = xor i32 %notmask, -1, !dbg !730
  %shl11 = shl i32 %sub10, %lo_bit.0, !dbg !731
  call void @llvm.dbg.value(metadata i32 %shl11, metadata !713, metadata !DIExpression()), !dbg !728
  %0 = load i8, i8* %add.ptr, align 1, !dbg !732
  %conv = zext i8 %0 to i32, !dbg !732
  %neg = xor i32 %shl11, 255, !dbg !733
  %and = and i32 %neg, %conv, !dbg !734
  %conv12 = zext i32 %and to i64, !dbg !735
  %sh_prom = zext i32 %lo_bit.0 to i64, !dbg !736
  %shl13 = shl i64 %stuff_to_put.addr.0, %sh_prom, !dbg !736
  %conv14 = zext i32 %shl11 to i64, !dbg !737
  %and15 = and i64 %shl13, %conv14, !dbg !738
  %or = or i64 %and15, %conv12, !dbg !739
  %conv16 = trunc i64 %or to i8, !dbg !735
  store i8 %conv16, i8* %add.ptr, align 1, !dbg !740
  %sh_prom17 = zext i32 %sub9 to i64, !dbg !741
  %shr = lshr i64 %stuff_to_put.addr.0, %sh_prom17, !dbg !741
  call void @llvm.dbg.value(metadata i64 %shr, metadata !705, metadata !DIExpression()), !dbg !714
  %sub18 = sub i32 %len.addr.0, %sub9, !dbg !742
  call void @llvm.dbg.value(metadata i32 %sub18, metadata !704, metadata !DIExpression()), !dbg !714
  %add19 = add i32 %cur_byte.1, %cond, !dbg !743
  call void @llvm.dbg.value(metadata i32 %add19, metadata !706, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 0, metadata !707, metadata !DIExpression()), !dbg !714
  %cmp20 = icmp ult i32 %sub18, 8, !dbg !744
  %sub18. = select i1 %cmp20, i32 %sub18, i32 8, !dbg !744
  call void @llvm.dbg.value(metadata i32 %sub18., metadata !708, metadata !DIExpression()), !dbg !714
  %cmp26 = icmp eq i32 %sub18, 0, !dbg !745
  br i1 %cmp26, label %do.end, label %do.body, !dbg !746, !llvm.loop !747

do.end:                                           ; preds = %do.body
  ret void, !dbg !749
}

declare dso_local double @frexp(double, i32*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @floatformat_is_valid(%struct.floatformat* %fmt, i8* %from) local_unnamed_addr #3 !dbg !750 {
entry:
  call void @llvm.dbg.value(metadata %struct.floatformat* %fmt, metadata !752, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i8* %from, metadata !753, metadata !DIExpression()), !dbg !754
  %is_valid = getelementptr inbounds %struct.floatformat, %struct.floatformat* %fmt, i64 0, i32 11, !dbg !755
  %is_valid1 = bitcast {}** %is_valid to i32 (%struct.floatformat*, i8*)**, !dbg !755
  %0 = load i32 (%struct.floatformat*, i8*)*, i32 (%struct.floatformat*, i8*)** %is_valid1, align 8, !dbg !755
  %call = tail call i32 %0(%struct.floatformat* %fmt, i8* %from) #6, !dbg !756
  ret i32 %call, !dbg !757
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!89, !90, !91}
!llvm.ident = !{!92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "floatformat_ieee_single_big", scope: !2, file: !3, line: 81, type: !27, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !24, nameTableKind: None)
!3 = !DIFile(filename: "floatformat.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "floatformat_byteorders", file: !6, line: 34, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/floatformat.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "floatformat_little", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "floatformat_big", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "floatformat_littlebyte_bigword", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "floatformat_vax", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "floatformat_intbit", file: !6, line: 54, baseType: !7, size: 32, elements: !14)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "floatformat_intbit_yes", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "floatformat_intbit_no", value: 1, isUnsigned: true)
!17 = !{!18, !19, !20, !22, !23, !7}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!24 = !{!0, !25, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "floatformat_ieee_single_little", scope: !2, file: !3, line: 89, type: !27, isLocal: false, isDefinition: true)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "floatformat", file: !6, line: 56, size: 512, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !45, !52}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "byteorder", scope: !28, file: !6, line: 58, baseType: !5, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "totalsize", scope: !28, file: !6, line: 59, baseType: !7, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "sign_start", scope: !28, file: !6, line: 62, baseType: !7, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "exp_start", scope: !28, file: !6, line: 64, baseType: !7, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "exp_len", scope: !28, file: !6, line: 65, baseType: !7, size: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "exp_bias", scope: !28, file: !6, line: 71, baseType: !36, size: 32, offset: 160)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "exp_nan", scope: !28, file: !6, line: 75, baseType: !7, size: 32, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "man_start", scope: !28, file: !6, line: 77, baseType: !7, size: 32, offset: 224)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "man_len", scope: !28, file: !6, line: 78, baseType: !7, size: 32, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "intbit", scope: !28, file: !6, line: 81, baseType: !13, size: 32, offset: 288)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !28, file: !6, line: 84, baseType: !42, size: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !28, file: !6, line: 87, baseType: !46, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!36, !49, !50}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "split_half", scope: !28, file: !6, line: 94, baseType: !49, size: 64, offset: 448)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "floatformat_ieee_double_big", scope: !2, file: !3, line: 97, type: !27, isLocal: false, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "floatformat_ieee_double_little", scope: !2, file: !3, line: 105, type: !27, isLocal: false, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "floatformat_ieee_double_littlebyte_bigword", scope: !2, file: !3, line: 117, type: !27, isLocal: false, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "floatformat_vax_f", scope: !2, file: !3, line: 128, type: !27, isLocal: false, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "floatformat_vax_d", scope: !2, file: !3, line: 136, type: !27, isLocal: false, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "floatformat_vax_g", scope: !2, file: !3, line: 144, type: !27, isLocal: false, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "floatformat_i387_ext", scope: !2, file: !3, line: 177, type: !27, isLocal: false, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "floatformat_m68881_ext", scope: !2, file: !3, line: 185, type: !27, isLocal: false, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "floatformat_i960_ext", scope: !2, file: !3, line: 194, type: !27, isLocal: false, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "floatformat_m88110_ext", scope: !2, file: !3, line: 203, type: !27, isLocal: false, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "floatformat_m88110_harris_ext", scope: !2, file: !3, line: 211, type: !27, isLocal: false, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "floatformat_arm_ext_big", scope: !2, file: !3, line: 221, type: !27, isLocal: false, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "floatformat_arm_ext_littlebyte_bigword", scope: !2, file: !3, line: 230, type: !27, isLocal: false, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "floatformat_ia64_spill_big", scope: !2, file: !3, line: 239, type: !27, isLocal: false, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "floatformat_ia64_spill_little", scope: !2, file: !3, line: 247, type: !27, isLocal: false, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "floatformat_ia64_quad_big", scope: !2, file: !3, line: 255, type: !27, isLocal: false, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "floatformat_ia64_quad_little", scope: !2, file: !3, line: 263, type: !27, isLocal: false, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "floatformat_ibm_long_double", scope: !2, file: !3, line: 358, type: !27, isLocal: false, isDefinition: true)
!89 = !{i32 2, !"Dwarf Version", i32 4}
!90 = !{i32 2, !"Debug Info Version", i32 3}
!91 = !{i32 1, !"wchar_size", i32 4}
!92 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!93 = distinct !DISubprogram(name: "vprintf", scope: !94, file: !94, line: 39, type: !95, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !106)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!95 = !DISubroutineType(types: !96)
!96 = !{!36, !97, !98}
!97 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !100)
!100 = !{!101, !102, !103, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !99, file: !3, baseType: !7, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !99, file: !3, baseType: !7, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !99, file: !3, baseType: !104, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !99, file: !3, baseType: !104, size: 64, offset: 128)
!106 = !{!107, !108}
!107 = !DILocalVariable(name: "__fmt", arg: 1, scope: !93, file: !94, line: 39, type: !97)
!108 = !DILocalVariable(name: "__arg", arg: 2, scope: !93, file: !94, line: 39, type: !98)
!109 = !DILocation(line: 0, scope: !93)
!110 = !DILocation(line: 41, column: 20, scope: !93)
!111 = !DILocation(line: 41, column: 10, scope: !93)
!112 = !DILocation(line: 41, column: 3, scope: !93)
!113 = distinct !DISubprogram(name: "getchar", scope: !94, file: !94, line: 47, type: !114, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{!36}
!116 = !{}
!117 = !DILocation(line: 49, column: 16, scope: !113)
!118 = !DILocation(line: 49, column: 10, scope: !113)
!119 = !DILocation(line: 49, column: 3, scope: !113)
!120 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !94, file: !94, line: 56, type: !121, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !182)
!121 = !DISubroutineType(types: !122)
!122 = !{!36, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !125, line: 7, baseType: !126)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !127, line: 49, size: 1728, elements: !128)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!128 = !{!129, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !145, !147, !148, !149, !153, !155, !157, !161, !164, !166, !169, !172, !173, !174, !177, !178}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !126, file: !127, line: 51, baseType: !36, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !126, file: !127, line: 54, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !126, file: !127, line: 55, baseType: !131, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !126, file: !127, line: 56, baseType: !131, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !126, file: !127, line: 57, baseType: !131, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !126, file: !127, line: 58, baseType: !131, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !126, file: !127, line: 59, baseType: !131, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !126, file: !127, line: 60, baseType: !131, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !126, file: !127, line: 61, baseType: !131, size: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !126, file: !127, line: 64, baseType: !131, size: 64, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !126, file: !127, line: 65, baseType: !131, size: 64, offset: 640)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !126, file: !127, line: 66, baseType: !131, size: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !126, file: !127, line: 68, baseType: !143, size: 64, offset: 768)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !127, line: 36, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !126, file: !127, line: 70, baseType: !146, size: 64, offset: 832)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !126, file: !127, line: 72, baseType: !36, size: 32, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !126, file: !127, line: 73, baseType: !36, size: 32, offset: 928)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !126, file: !127, line: 74, baseType: !150, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !151, line: 152, baseType: !152)
!151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!152 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !126, file: !127, line: 77, baseType: !154, size: 16, offset: 1024)
!154 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !126, file: !127, line: 78, baseType: !156, size: 8, offset: 1040)
!156 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !126, file: !127, line: 79, baseType: !158, size: 8, offset: 1048)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 1)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !126, file: !127, line: 81, baseType: !162, size: 64, offset: 1088)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !127, line: 43, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !126, file: !127, line: 89, baseType: !165, size: 64, offset: 1152)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !151, line: 153, baseType: !152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !126, file: !127, line: 91, baseType: !167, size: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !127, line: 37, flags: DIFlagFwdDecl)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !126, file: !127, line: 92, baseType: !170, size: 64, offset: 1280)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !127, line: 38, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !126, file: !127, line: 93, baseType: !146, size: 64, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !126, file: !127, line: 94, baseType: !104, size: 64, offset: 1408)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !126, file: !127, line: 95, baseType: !175, size: 64, offset: 1472)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 46, baseType: !22)
!176 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !126, file: !127, line: 96, baseType: !36, size: 32, offset: 1536)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !126, file: !127, line: 98, baseType: !179, size: 160, offset: 1568)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 20)
!182 = !{!183}
!183 = !DILocalVariable(name: "__fp", arg: 1, scope: !120, file: !94, line: 56, type: !123)
!184 = !DILocation(line: 0, scope: !120)
!185 = !DILocation(line: 58, column: 10, scope: !120)
!186 = !DILocation(line: 58, column: 3, scope: !120)
!187 = distinct !DISubprogram(name: "getc_unlocked", scope: !94, file: !94, line: 66, type: !121, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !188)
!188 = !{!189}
!189 = !DILocalVariable(name: "__fp", arg: 1, scope: !187, file: !94, line: 66, type: !123)
!190 = !DILocation(line: 0, scope: !187)
!191 = !DILocation(line: 68, column: 10, scope: !187)
!192 = !DILocation(line: 68, column: 3, scope: !187)
!193 = distinct !DISubprogram(name: "getchar_unlocked", scope: !94, file: !94, line: 73, type: !114, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!194 = !DILocation(line: 75, column: 10, scope: !193)
!195 = !DILocation(line: 75, column: 3, scope: !193)
!196 = distinct !DISubprogram(name: "putchar", scope: !94, file: !94, line: 82, type: !197, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{!36, !36}
!199 = !{!200}
!200 = !DILocalVariable(name: "__c", arg: 1, scope: !196, file: !94, line: 82, type: !36)
!201 = !DILocation(line: 0, scope: !196)
!202 = !DILocation(line: 84, column: 21, scope: !196)
!203 = !DILocation(line: 84, column: 10, scope: !196)
!204 = !DILocation(line: 84, column: 3, scope: !196)
!205 = distinct !DISubprogram(name: "fputc_unlocked", scope: !94, file: !94, line: 91, type: !206, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!36, !36, !123}
!208 = !{!209, !210}
!209 = !DILocalVariable(name: "__c", arg: 1, scope: !205, file: !94, line: 91, type: !36)
!210 = !DILocalVariable(name: "__stream", arg: 2, scope: !205, file: !94, line: 91, type: !123)
!211 = !DILocation(line: 0, scope: !205)
!212 = !DILocation(line: 93, column: 10, scope: !205)
!213 = !DILocation(line: 93, column: 3, scope: !205)
!214 = distinct !DISubprogram(name: "putc_unlocked", scope: !94, file: !94, line: 101, type: !206, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !215)
!215 = !{!216, !217}
!216 = !DILocalVariable(name: "__c", arg: 1, scope: !214, file: !94, line: 101, type: !36)
!217 = !DILocalVariable(name: "__stream", arg: 2, scope: !214, file: !94, line: 101, type: !123)
!218 = !DILocation(line: 0, scope: !214)
!219 = !DILocation(line: 103, column: 10, scope: !214)
!220 = !DILocation(line: 103, column: 3, scope: !214)
!221 = distinct !DISubprogram(name: "putchar_unlocked", scope: !94, file: !94, line: 108, type: !197, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!222 = !{!223}
!223 = !DILocalVariable(name: "__c", arg: 1, scope: !221, file: !94, line: 108, type: !36)
!224 = !DILocation(line: 0, scope: !221)
!225 = !DILocation(line: 110, column: 10, scope: !221)
!226 = !DILocation(line: 110, column: 3, scope: !221)
!227 = distinct !DISubprogram(name: "getline", scope: !94, file: !94, line: 118, type: !228, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !233)
!228 = !DISubroutineType(types: !229)
!229 = !{!230, !231, !232, !123}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !151, line: 193, baseType: !152)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!233 = !{!234, !235, !236}
!234 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !227, file: !94, line: 118, type: !231)
!235 = !DILocalVariable(name: "__n", arg: 2, scope: !227, file: !94, line: 118, type: !232)
!236 = !DILocalVariable(name: "__stream", arg: 3, scope: !227, file: !94, line: 118, type: !123)
!237 = !DILocation(line: 0, scope: !227)
!238 = !DILocation(line: 120, column: 10, scope: !227)
!239 = !DILocation(line: 120, column: 3, scope: !227)
!240 = distinct !DISubprogram(name: "feof_unlocked", scope: !94, file: !94, line: 128, type: !121, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !241)
!241 = !{!242}
!242 = !DILocalVariable(name: "__stream", arg: 1, scope: !240, file: !94, line: 128, type: !123)
!243 = !DILocation(line: 0, scope: !240)
!244 = !DILocation(line: 130, column: 10, scope: !240)
!245 = !DILocation(line: 130, column: 3, scope: !240)
!246 = distinct !DISubprogram(name: "ferror_unlocked", scope: !94, file: !94, line: 135, type: !121, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !247)
!247 = !{!248}
!248 = !DILocalVariable(name: "__stream", arg: 1, scope: !246, file: !94, line: 135, type: !123)
!249 = !DILocation(line: 0, scope: !246)
!250 = !DILocation(line: 137, column: 10, scope: !246)
!251 = !DILocation(line: 137, column: 3, scope: !246)
!252 = distinct !DISubprogram(name: "floatformat_always_valid", scope: !3, file: !3, line: 69, type: !47, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!253 = !{!254, !255}
!254 = !DILocalVariable(name: "fmt", arg: 1, scope: !252, file: !3, line: 69, type: !49)
!255 = !DILocalVariable(name: "from", arg: 2, scope: !252, file: !3, line: 70, type: !50)
!256 = !DILocation(line: 0, scope: !252)
!257 = !DILocation(line: 72, column: 3, scope: !252)
!258 = distinct !DISubprogram(name: "floatformat_i387_ext_is_valid", scope: !3, file: !3, line: 157, type: !47, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !259)
!259 = !{!260, !261, !262, !263, !264}
!260 = !DILocalVariable(name: "fmt", arg: 1, scope: !258, file: !3, line: 157, type: !49)
!261 = !DILocalVariable(name: "from", arg: 2, scope: !258, file: !3, line: 157, type: !50)
!262 = !DILocalVariable(name: "exponent", scope: !258, file: !3, line: 163, type: !22)
!263 = !DILocalVariable(name: "int_bit", scope: !258, file: !3, line: 163, type: !22)
!264 = !DILocalVariable(name: "ufrom", scope: !258, file: !3, line: 164, type: !20)
!265 = !DILocation(line: 0, scope: !258)
!266 = !DILocation(line: 166, column: 37, scope: !258)
!267 = !DILocation(line: 166, column: 53, scope: !258)
!268 = !DILocation(line: 167, column: 9, scope: !258)
!269 = !DILocation(line: 167, column: 25, scope: !258)
!270 = !DILocation(line: 166, column: 14, scope: !258)
!271 = !DILocation(line: 168, column: 36, scope: !258)
!272 = !DILocation(line: 168, column: 52, scope: !258)
!273 = !DILocation(line: 169, column: 15, scope: !258)
!274 = !DILocation(line: 168, column: 13, scope: !258)
!275 = !DILocation(line: 171, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !258, file: !3, line: 171, column: 7)
!277 = !DILocation(line: 171, column: 35, scope: !276)
!278 = !DILocation(line: 0, scope: !276)
!279 = !DILocation(line: 175, column: 1, scope: !258)
!280 = distinct !DISubprogram(name: "floatformat_ibm_long_double_is_valid", scope: !3, file: !3, line: 273, type: !47, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !292, !293}
!282 = !DILocalVariable(name: "fmt", arg: 1, scope: !280, file: !3, line: 273, type: !49)
!283 = !DILocalVariable(name: "from", arg: 2, scope: !280, file: !3, line: 274, type: !50)
!284 = !DILocalVariable(name: "ufrom", scope: !280, file: !3, line: 276, type: !20)
!285 = !DILocalVariable(name: "hfmt", scope: !280, file: !3, line: 277, type: !49)
!286 = !DILocalVariable(name: "top_exp", scope: !280, file: !3, line: 278, type: !152)
!287 = !DILocalVariable(name: "bot_exp", scope: !280, file: !3, line: 278, type: !152)
!288 = !DILocalVariable(name: "top_nan", scope: !280, file: !3, line: 279, type: !36)
!289 = !DILocalVariable(name: "first_bit", scope: !290, file: !3, line: 317, type: !36)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 314, column: 5)
!291 = distinct !DILexicalBlock(scope: !280, file: !3, line: 313, column: 7)
!292 = !DILocalVariable(name: "second_bit", scope: !290, file: !3, line: 317, type: !36)
!293 = !DILocalVariable(name: "cur_bit", scope: !290, file: !3, line: 317, type: !36)
!294 = !DILocation(line: 0, scope: !280)
!295 = !DILocation(line: 277, column: 41, scope: !280)
!296 = !DILocation(line: 281, column: 37, scope: !280)
!297 = !DILocation(line: 281, column: 54, scope: !280)
!298 = !DILocation(line: 282, column: 16, scope: !280)
!299 = !DILocation(line: 282, column: 33, scope: !280)
!300 = !DILocation(line: 281, column: 13, scope: !280)
!301 = !DILocation(line: 283, column: 30, scope: !280)
!302 = !DILocation(line: 283, column: 41, scope: !280)
!303 = !DILocation(line: 283, column: 58, scope: !280)
!304 = !DILocation(line: 284, column: 16, scope: !280)
!305 = !DILocation(line: 284, column: 33, scope: !280)
!306 = !DILocation(line: 283, column: 13, scope: !280)
!307 = !DILocation(line: 286, column: 40, scope: !308)
!308 = distinct !DILexicalBlock(scope: !280, file: !3, line: 286, column: 7)
!309 = !DILocation(line: 286, column: 34, scope: !308)
!310 = !DILocation(line: 286, column: 31, scope: !308)
!311 = !DILocation(line: 286, column: 7, scope: !280)
!312 = !DILocation(line: 287, column: 15, scope: !308)
!313 = !DILocation(line: 287, column: 5, scope: !308)
!314 = !DILocation(line: 290, column: 7, scope: !280)
!315 = !DILocation(line: 295, column: 40, scope: !316)
!316 = distinct !DILexicalBlock(scope: !280, file: !3, line: 295, column: 7)
!317 = !DILocation(line: 295, column: 34, scope: !316)
!318 = !DILocation(line: 295, column: 31, scope: !316)
!319 = !DILocation(line: 295, column: 59, scope: !316)
!320 = !DILocation(line: 295, column: 48, scope: !316)
!321 = !DILocation(line: 297, column: 19, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 297, column: 11)
!323 = distinct !DILexicalBlock(scope: !316, file: !3, line: 296, column: 5)
!324 = !DILocation(line: 297, column: 11, scope: !323)
!325 = !DILocation(line: 300, column: 15, scope: !323)
!326 = !DILocation(line: 300, column: 14, scope: !323)
!327 = !DILocation(line: 300, column: 7, scope: !323)
!328 = !DILocation(line: 309, column: 25, scope: !329)
!329 = distinct !DILexicalBlock(scope: !280, file: !3, line: 309, column: 7)
!330 = !DILocation(line: 309, column: 15, scope: !329)
!331 = !DILocation(line: 309, column: 7, scope: !280)
!332 = !DILocation(line: 311, column: 15, scope: !333)
!333 = distinct !DILexicalBlock(scope: !280, file: !3, line: 311, column: 7)
!334 = !DILocation(line: 311, column: 41, scope: !333)
!335 = !DILocation(line: 311, column: 30, scope: !333)
!336 = !DILocation(line: 313, column: 15, scope: !291)
!337 = !DILocation(line: 313, column: 7, scope: !280)
!338 = !DILocation(line: 0, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 318, column: 7)
!340 = distinct !DILexicalBlock(scope: !290, file: !3, line: 318, column: 7)
!341 = !DILocation(line: 0, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !3, line: 319, column: 6)
!343 = !DILocation(line: 318, column: 7, scope: !340)
!344 = !DILocation(line: 0, scope: !290)
!345 = !DILocation(line: 0, scope: !340)
!346 = !DILocation(line: 318, column: 56, scope: !339)
!347 = !DILocation(line: 318, column: 48, scope: !339)
!348 = !DILocation(line: 319, column: 34, scope: !342)
!349 = !DILocation(line: 319, column: 51, scope: !342)
!350 = !DILocation(line: 320, column: 16, scope: !342)
!351 = !DILocation(line: 320, column: 26, scope: !342)
!352 = !DILocation(line: 319, column: 6, scope: !342)
!353 = !DILocation(line: 319, column: 6, scope: !339)
!354 = !DILocation(line: 322, column: 20, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 322, column: 10)
!356 = distinct !DILexicalBlock(scope: !342, file: !3, line: 321, column: 4)
!357 = !DILocation(line: 322, column: 10, scope: !356)
!358 = !DILocation(line: 318, column: 72, scope: !339)
!359 = !DILocation(line: 318, column: 7, scope: !339)
!360 = distinct !{!360, !343, !361}
!361 = !DILocation(line: 329, column: 4, scope: !340)
!362 = !DILocation(line: 331, column: 21, scope: !363)
!363 = distinct !DILexicalBlock(scope: !290, file: !3, line: 331, column: 11)
!364 = !DILocation(line: 331, column: 11, scope: !290)
!365 = !DILocation(line: 334, column: 11, scope: !366)
!366 = distinct !DILexicalBlock(scope: !290, file: !3, line: 334, column: 11)
!367 = !DILocation(line: 334, column: 22, scope: !366)
!368 = !DILocation(line: 334, column: 11, scope: !290)
!369 = !DILocation(line: 336, column: 22, scope: !370)
!370 = distinct !DILexicalBlock(scope: !290, file: !3, line: 336, column: 11)
!371 = !DILocation(line: 341, column: 22, scope: !372)
!372 = distinct !DILexicalBlock(scope: !290, file: !3, line: 341, column: 11)
!373 = !DILocation(line: 336, column: 11, scope: !290)
!374 = !DILocation(line: 343, column: 39, scope: !290)
!375 = !DILocation(line: 343, column: 56, scope: !290)
!376 = !DILocation(line: 344, column: 11, scope: !290)
!377 = !DILocation(line: 344, column: 29, scope: !290)
!378 = !DILocation(line: 344, column: 21, scope: !290)
!379 = !DILocation(line: 344, column: 37, scope: !290)
!380 = !DILocation(line: 343, column: 15, scope: !290)
!381 = !DILocation(line: 343, column: 14, scope: !290)
!382 = !DILocation(line: 343, column: 7, scope: !290)
!383 = !DILocation(line: 351, column: 35, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 351, column: 11)
!385 = distinct !DILexicalBlock(scope: !291, file: !3, line: 347, column: 5)
!386 = !DILocation(line: 351, column: 52, scope: !384)
!387 = !DILocation(line: 352, column: 14, scope: !384)
!388 = !DILocation(line: 352, column: 32, scope: !384)
!389 = !DILocation(line: 352, column: 24, scope: !384)
!390 = !DILocation(line: 352, column: 40, scope: !384)
!391 = !DILocation(line: 351, column: 11, scope: !384)
!392 = !DILocation(line: 351, column: 11, scope: !385)
!393 = !DILocation(line: 354, column: 15, scope: !385)
!394 = !DILocation(line: 354, column: 14, scope: !385)
!395 = !DILocation(line: 354, column: 7, scope: !385)
!396 = !DILocation(line: 356, column: 1, scope: !280)
!397 = distinct !DISubprogram(name: "floatformat_to_double", scope: !3, file: !3, line: 441, type: !398, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !49, !50, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!402 = !DILocalVariable(name: "fmt", arg: 1, scope: !397, file: !3, line: 441, type: !49)
!403 = !DILocalVariable(name: "from", arg: 2, scope: !397, file: !3, line: 442, type: !50)
!404 = !DILocalVariable(name: "to", arg: 3, scope: !397, file: !3, line: 442, type: !400)
!405 = !DILocalVariable(name: "ufrom", scope: !397, file: !3, line: 444, type: !20)
!406 = !DILocalVariable(name: "dto", scope: !397, file: !3, line: 445, type: !23)
!407 = !DILocalVariable(name: "exponent", scope: !397, file: !3, line: 446, type: !152)
!408 = !DILocalVariable(name: "mant", scope: !397, file: !3, line: 447, type: !22)
!409 = !DILocalVariable(name: "mant_bits", scope: !397, file: !3, line: 448, type: !7)
!410 = !DILocalVariable(name: "mant_off", scope: !397, file: !3, line: 448, type: !7)
!411 = !DILocalVariable(name: "mant_bits_left", scope: !397, file: !3, line: 449, type: !36)
!412 = !DILocalVariable(name: "special_exponent", scope: !397, file: !3, line: 450, type: !36)
!413 = !DILocalVariable(name: "nan", scope: !414, file: !3, line: 464, type: !36)
!414 = distinct !DILexicalBlock(scope: !415, file: !3, line: 463, column: 5)
!415 = distinct !DILexicalBlock(scope: !397, file: !3, line: 462, column: 7)
!416 = !DILocation(line: 0, scope: !397)
!417 = !DILocation(line: 456, column: 37, scope: !397)
!418 = !DILocation(line: 456, column: 53, scope: !397)
!419 = !DILocation(line: 457, column: 9, scope: !397)
!420 = !DILocation(line: 457, column: 25, scope: !397)
!421 = !DILocation(line: 456, column: 14, scope: !397)
!422 = !DILocation(line: 462, column: 40, scope: !415)
!423 = !DILocation(line: 462, column: 35, scope: !415)
!424 = !DILocation(line: 462, column: 32, scope: !415)
!425 = !DILocation(line: 462, column: 7, scope: !397)
!426 = !DILocation(line: 464, column: 17, scope: !414)
!427 = !DILocation(line: 0, scope: !414)
!428 = !DILocation(line: 476, column: 11, scope: !429)
!429 = distinct !DILexicalBlock(scope: !414, file: !3, line: 476, column: 11)
!430 = !DILocation(line: 482, column: 34, scope: !431)
!431 = distinct !DILexicalBlock(scope: !414, file: !3, line: 482, column: 11)
!432 = !DILocation(line: 482, column: 50, scope: !431)
!433 = !DILocation(line: 482, column: 66, scope: !431)
!434 = !DILocation(line: 482, column: 11, scope: !431)
!435 = !DILocation(line: 482, column: 11, scope: !414)
!436 = !DILocation(line: 490, column: 25, scope: !397)
!437 = !DILocation(line: 491, column: 19, scope: !397)
!438 = !DILocation(line: 494, column: 31, scope: !397)
!439 = !DILocation(line: 494, column: 36, scope: !397)
!440 = !DILocation(line: 497, column: 7, scope: !397)
!441 = !DILocation(line: 498, column: 22, scope: !442)
!442 = distinct !DILexicalBlock(scope: !397, file: !3, line: 497, column: 7)
!443 = !DILocation(line: 498, column: 17, scope: !442)
!444 = !DILocation(line: 498, column: 14, scope: !442)
!445 = !DILocation(line: 498, column: 5, scope: !442)
!446 = !DILocation(line: 506, column: 7, scope: !397)
!447 = !DILocation(line: 508, column: 16, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 508, column: 11)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 507, column: 5)
!450 = distinct !DILexicalBlock(scope: !397, file: !3, line: 506, column: 7)
!451 = !DILocation(line: 508, column: 23, scope: !448)
!452 = !DILocation(line: 508, column: 11, scope: !449)
!453 = !DILocation(line: 509, column: 20, scope: !448)
!454 = !DILocation(line: 509, column: 8, scope: !448)
!455 = !DILocation(line: 509, column: 2, scope: !448)
!456 = !DILocation(line: 511, column: 10, scope: !448)
!457 = !DILocation(line: 456, column: 12, scope: !397)
!458 = !DILocation(line: 0, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !3, line: 523, column: 11)
!460 = distinct !DILexicalBlock(scope: !397, file: !3, line: 515, column: 5)
!461 = !DILocation(line: 514, column: 3, scope: !397)
!462 = !DILocation(line: 514, column: 25, scope: !397)
!463 = !DILocation(line: 516, column: 19, scope: !460)
!464 = !DILocation(line: 518, column: 37, scope: !460)
!465 = !DILocation(line: 518, column: 53, scope: !460)
!466 = !DILocation(line: 518, column: 14, scope: !460)
!467 = !DILocation(line: 523, column: 40, scope: !459)
!468 = !DILocation(line: 523, column: 53, scope: !459)
!469 = !DILocation(line: 523, column: 28, scope: !459)
!470 = !DILocation(line: 530, column: 30, scope: !459)
!471 = !DILocation(line: 530, column: 9, scope: !459)
!472 = !DILocation(line: 525, column: 17, scope: !459)
!473 = !DILocation(line: 525, column: 10, scope: !459)
!474 = !DILocation(line: 526, column: 10, scope: !459)
!475 = !DILocation(line: 527, column: 29, scope: !459)
!476 = !DILocation(line: 527, column: 10, scope: !459)
!477 = !DILocation(line: 528, column: 10, scope: !459)
!478 = !DILocation(line: 524, column: 9, scope: !459)
!479 = !DILocation(line: 524, column: 2, scope: !459)
!480 = !DILocation(line: 531, column: 11, scope: !460)
!481 = !DILocation(line: 533, column: 16, scope: !460)
!482 = !DILocation(line: 534, column: 22, scope: !460)
!483 = distinct !{!483, !461, !484}
!484 = !DILocation(line: 535, column: 5, scope: !397)
!485 = !DILocation(line: 538, column: 30, scope: !486)
!486 = distinct !DILexicalBlock(scope: !397, file: !3, line: 538, column: 7)
!487 = !DILocation(line: 531, column: 20, scope: !488)
!488 = distinct !DILexicalBlock(scope: !460, file: !3, line: 531, column: 11)
!489 = !DILocation(line: 538, column: 46, scope: !486)
!490 = !DILocation(line: 538, column: 62, scope: !486)
!491 = !DILocation(line: 538, column: 7, scope: !486)
!492 = !DILocation(line: 539, column: 11, scope: !486)
!493 = !DILocation(line: 538, column: 7, scope: !397)
!494 = !DILocation(line: 541, column: 1, scope: !397)
!495 = distinct !DISubprogram(name: "get_field", scope: !3, file: !3, line: 399, type: !496, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!22, !20, !5, !7, !7, !7}
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !512, !513}
!499 = !DILocalVariable(name: "data", arg: 1, scope: !495, file: !3, line: 399, type: !20)
!500 = !DILocalVariable(name: "order", arg: 2, scope: !495, file: !3, line: 399, type: !5)
!501 = !DILocalVariable(name: "total_len", arg: 3, scope: !495, file: !3, line: 400, type: !7)
!502 = !DILocalVariable(name: "start", arg: 4, scope: !495, file: !3, line: 400, type: !7)
!503 = !DILocalVariable(name: "len", arg: 5, scope: !495, file: !3, line: 400, type: !7)
!504 = !DILocalVariable(name: "result", scope: !495, file: !3, line: 402, type: !22)
!505 = !DILocalVariable(name: "cur_byte", scope: !495, file: !3, line: 403, type: !7)
!506 = !DILocalVariable(name: "lo_bit", scope: !495, file: !3, line: 404, type: !36)
!507 = !DILocalVariable(name: "hi_bit", scope: !495, file: !3, line: 404, type: !36)
!508 = !DILocalVariable(name: "cur_bitshift", scope: !495, file: !3, line: 404, type: !36)
!509 = !DILocalVariable(name: "nextbyte", scope: !495, file: !3, line: 405, type: !36)
!510 = !DILocalVariable(name: "shifted", scope: !511, file: !3, line: 421, type: !7)
!511 = distinct !DILexicalBlock(scope: !495, file: !3, line: 420, column: 5)
!512 = !DILocalVariable(name: "bits", scope: !511, file: !3, line: 422, type: !7)
!513 = !DILocalVariable(name: "mask", scope: !511, file: !3, line: 423, type: !7)
!514 = !DILocation(line: 0, scope: !495)
!515 = !DILocation(line: 405, column: 25, scope: !495)
!516 = !DILocation(line: 405, column: 18, scope: !495)
!517 = !DILocation(line: 408, column: 30, scope: !495)
!518 = !DILocation(line: 408, column: 21, scope: !495)
!519 = !DILocation(line: 411, column: 7, scope: !495)
!520 = !DILocation(line: 412, column: 5, scope: !521)
!521 = distinct !DILexicalBlock(scope: !495, file: !3, line: 411, column: 7)
!522 = !DILocation(line: 414, column: 35, scope: !521)
!523 = !DILocation(line: 0, scope: !521)
!524 = !DILocation(line: 416, column: 18, scope: !495)
!525 = !DILocation(line: 417, column: 12, scope: !495)
!526 = !DILocation(line: 419, column: 3, scope: !495)
!527 = !DILocation(line: 421, column: 37, scope: !511)
!528 = !DILocation(line: 421, column: 30, scope: !511)
!529 = !DILocation(line: 421, column: 49, scope: !511)
!530 = !DILocation(line: 0, scope: !511)
!531 = !DILocation(line: 422, column: 34, scope: !511)
!532 = !DILocation(line: 423, column: 39, scope: !511)
!533 = !DILocation(line: 424, column: 26, scope: !511)
!534 = !DILocation(line: 424, column: 34, scope: !511)
!535 = !DILocation(line: 424, column: 17, scope: !511)
!536 = !DILocation(line: 424, column: 14, scope: !511)
!537 = !DILocation(line: 425, column: 11, scope: !511)
!538 = !DILocation(line: 426, column: 20, scope: !511)
!539 = !DILocation(line: 427, column: 16, scope: !511)
!540 = !DILocation(line: 429, column: 16, scope: !511)
!541 = !DILocation(line: 431, column: 14, scope: !495)
!542 = !DILocation(line: 430, column: 5, scope: !511)
!543 = distinct !{!543, !526, !544}
!544 = !DILocation(line: 431, column: 18, scope: !495)
!545 = !DILocation(line: 433, column: 3, scope: !495)
!546 = distinct !DISubprogram(name: "mant_bits_set", scope: !3, file: !3, line: 375, type: !547, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{!36, !49, !20}
!549 = !{!550, !551, !552, !553, !554}
!550 = !DILocalVariable(name: "fmt", arg: 1, scope: !546, file: !3, line: 375, type: !49)
!551 = !DILocalVariable(name: "ufrom", arg: 2, scope: !546, file: !3, line: 375, type: !20)
!552 = !DILocalVariable(name: "mant_bits", scope: !546, file: !3, line: 377, type: !7)
!553 = !DILocalVariable(name: "mant_off", scope: !546, file: !3, line: 377, type: !7)
!554 = !DILocalVariable(name: "mant_bits_left", scope: !546, file: !3, line: 378, type: !36)
!555 = !DILocation(line: 0, scope: !546)
!556 = !DILocation(line: 380, column: 19, scope: !546)
!557 = !DILocation(line: 381, column: 25, scope: !546)
!558 = !DILocation(line: 0, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 386, column: 11)
!560 = distinct !DILexicalBlock(scope: !546, file: !3, line: 383, column: 5)
!561 = !DILocation(line: 382, column: 3, scope: !546)
!562 = !DILocation(line: 382, column: 25, scope: !546)
!563 = !DILocation(line: 384, column: 19, scope: !560)
!564 = !DILocation(line: 386, column: 34, scope: !559)
!565 = !DILocation(line: 386, column: 50, scope: !559)
!566 = !DILocation(line: 386, column: 11, scope: !559)
!567 = !DILocation(line: 387, column: 29, scope: !559)
!568 = !DILocation(line: 386, column: 11, scope: !560)
!569 = !DILocation(line: 390, column: 16, scope: !560)
!570 = !DILocation(line: 391, column: 22, scope: !560)
!571 = distinct !{!571, !561, !572}
!572 = !DILocation(line: 392, column: 5, scope: !546)
!573 = !DILocation(line: 394, column: 1, scope: !546)
!574 = distinct !DISubprogram(name: "floatformat_from_double", scope: !3, file: !3, line: 592, type: !575, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !49, !577, !104}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!580 = !DILocalVariable(name: "fmt", arg: 1, scope: !574, file: !3, line: 592, type: !49)
!581 = !DILocalVariable(name: "from", arg: 2, scope: !574, file: !3, line: 593, type: !577)
!582 = !DILocalVariable(name: "to", arg: 3, scope: !574, file: !3, line: 593, type: !104)
!583 = !DILocalVariable(name: "dfrom", scope: !574, file: !3, line: 595, type: !23)
!584 = !DILocalVariable(name: "exponent", scope: !574, file: !3, line: 596, type: !36)
!585 = !DILocalVariable(name: "mant", scope: !574, file: !3, line: 597, type: !23)
!586 = !DILocalVariable(name: "mant_bits", scope: !574, file: !3, line: 598, type: !7)
!587 = !DILocalVariable(name: "mant_off", scope: !574, file: !3, line: 598, type: !7)
!588 = !DILocalVariable(name: "mant_bits_left", scope: !574, file: !3, line: 599, type: !36)
!589 = !DILocalVariable(name: "uto", scope: !574, file: !3, line: 600, type: !18)
!590 = !DILocalVariable(name: "mant_long", scope: !591, file: !3, line: 659, type: !22)
!591 = distinct !DILexicalBlock(scope: !574, file: !3, line: 658, column: 5)
!592 = !DILocation(line: 0, scope: !574)
!593 = !DILocation(line: 596, column: 3, scope: !574)
!594 = !DILocation(line: 602, column: 11, scope: !574)
!595 = !DILocation(line: 603, column: 24, scope: !574)
!596 = !DILocation(line: 603, column: 34, scope: !574)
!597 = !DILocation(line: 603, column: 19, scope: !574)
!598 = !DILocation(line: 603, column: 3, scope: !574)
!599 = !DILocation(line: 610, column: 13, scope: !600)
!600 = distinct !DILexicalBlock(scope: !574, file: !3, line: 610, column: 7)
!601 = !DILocation(line: 610, column: 7, scope: !574)
!602 = !DILocation(line: 612, column: 28, scope: !603)
!603 = distinct !DILexicalBlock(scope: !600, file: !3, line: 611, column: 5)
!604 = !DILocation(line: 612, column: 44, scope: !603)
!605 = !DILocation(line: 612, column: 60, scope: !603)
!606 = !DILocation(line: 612, column: 7, scope: !603)
!607 = !DILocation(line: 613, column: 15, scope: !603)
!608 = !DILocation(line: 614, column: 5, scope: !603)
!609 = !DILocation(line: 616, column: 13, scope: !610)
!610 = distinct !DILexicalBlock(scope: !574, file: !3, line: 616, column: 7)
!611 = !DILocation(line: 616, column: 7, scope: !574)
!612 = !DILocation(line: 622, column: 13, scope: !613)
!613 = distinct !DILexicalBlock(scope: !574, file: !3, line: 622, column: 7)
!614 = !DILocation(line: 622, column: 7, scope: !574)
!615 = !DILocation(line: 625, column: 28, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !3, line: 623, column: 5)
!617 = !DILocation(line: 625, column: 44, scope: !616)
!618 = !DILocation(line: 625, column: 60, scope: !616)
!619 = !DILocation(line: 626, column: 9, scope: !616)
!620 = !DILocation(line: 626, column: 23, scope: !616)
!621 = !DILocation(line: 626, column: 18, scope: !616)
!622 = !DILocation(line: 625, column: 7, scope: !616)
!623 = !DILocation(line: 628, column: 28, scope: !616)
!624 = !DILocation(line: 628, column: 44, scope: !616)
!625 = !DILocation(line: 628, column: 60, scope: !616)
!626 = !DILocation(line: 628, column: 7, scope: !616)
!627 = !DILocation(line: 630, column: 7, scope: !616)
!628 = !DILocation(line: 633, column: 13, scope: !629)
!629 = distinct !DILexicalBlock(scope: !574, file: !3, line: 633, column: 7)
!630 = !DILocation(line: 633, column: 21, scope: !629)
!631 = !DILocation(line: 633, column: 7, scope: !574)
!632 = !DILocation(line: 637, column: 28, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !3, line: 634, column: 5)
!634 = !DILocation(line: 637, column: 44, scope: !633)
!635 = !DILocation(line: 637, column: 60, scope: !633)
!636 = !DILocation(line: 638, column: 9, scope: !633)
!637 = !DILocation(line: 638, column: 23, scope: !633)
!638 = !DILocation(line: 638, column: 18, scope: !633)
!639 = !DILocation(line: 637, column: 7, scope: !633)
!640 = !DILocation(line: 639, column: 7, scope: !633)
!641 = !DILocation(line: 642, column: 10, scope: !574)
!642 = !DILocation(line: 643, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !574, file: !3, line: 643, column: 7)
!644 = !DILocation(line: 643, column: 23, scope: !643)
!645 = !DILocation(line: 643, column: 16, scope: !643)
!646 = !DILocation(line: 643, column: 36, scope: !643)
!647 = !DILocation(line: 0, scope: !643)
!648 = !DILocation(line: 643, column: 7, scope: !574)
!649 = !DILocation(line: 645, column: 48, scope: !643)
!650 = !DILocation(line: 645, column: 23, scope: !643)
!651 = !DILocation(line: 644, column: 5, scope: !643)
!652 = !DILocation(line: 650, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !643, file: !3, line: 647, column: 5)
!654 = !DILocation(line: 652, column: 27, scope: !653)
!655 = !DILocation(line: 652, column: 43, scope: !653)
!656 = !DILocation(line: 652, column: 36, scope: !653)
!657 = !DILocation(line: 652, column: 52, scope: !653)
!658 = !DILocation(line: 652, column: 14, scope: !653)
!659 = !DILocation(line: 655, column: 25, scope: !574)
!660 = !DILocation(line: 656, column: 19, scope: !574)
!661 = !DILocation(line: 0, scope: !662)
!662 = distinct !DILexicalBlock(scope: !591, file: !3, line: 668, column: 11)
!663 = !DILocation(line: 657, column: 3, scope: !574)
!664 = !DILocation(line: 657, column: 25, scope: !574)
!665 = !DILocation(line: 660, column: 34, scope: !591)
!666 = !DILocation(line: 660, column: 19, scope: !591)
!667 = !DILocation(line: 662, column: 12, scope: !591)
!668 = !DILocation(line: 663, column: 19, scope: !591)
!669 = !DILocation(line: 0, scope: !591)
!670 = !DILocation(line: 664, column: 15, scope: !591)
!671 = !DILocation(line: 664, column: 12, scope: !591)
!672 = !DILocation(line: 668, column: 49, scope: !662)
!673 = !DILocation(line: 668, column: 41, scope: !662)
!674 = !DILocation(line: 669, column: 4, scope: !662)
!675 = !DILocation(line: 669, column: 12, scope: !662)
!676 = !DILocation(line: 669, column: 19, scope: !662)
!677 = !DILocation(line: 670, column: 4, scope: !662)
!678 = !DILocation(line: 670, column: 7, scope: !662)
!679 = !DILocation(line: 670, column: 23, scope: !662)
!680 = !DILocation(line: 670, column: 16, scope: !662)
!681 = !DILocation(line: 670, column: 36, scope: !662)
!682 = !DILocation(line: 668, column: 11, scope: !591)
!683 = !DILocation(line: 672, column: 14, scope: !684)
!684 = distinct !DILexicalBlock(scope: !662, file: !3, line: 671, column: 2)
!685 = !DILocation(line: 673, column: 14, scope: !684)
!686 = !DILocation(line: 674, column: 2, scope: !684)
!687 = !DILocation(line: 675, column: 16, scope: !662)
!688 = !DILocation(line: 682, column: 28, scope: !591)
!689 = !DILocation(line: 682, column: 44, scope: !591)
!690 = !DILocation(line: 682, column: 7, scope: !591)
!691 = !DILocation(line: 684, column: 16, scope: !591)
!692 = !DILocation(line: 685, column: 22, scope: !591)
!693 = distinct !{!693, !663, !694}
!694 = !DILocation(line: 686, column: 5, scope: !574)
!695 = !DILocation(line: 687, column: 1, scope: !574)
!696 = distinct !DISubprogram(name: "put_field", scope: !3, file: !3, line: 552, type: !697, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !18, !5, !7, !7, !7, !22}
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !712, !713}
!700 = !DILocalVariable(name: "data", arg: 1, scope: !696, file: !3, line: 552, type: !18)
!701 = !DILocalVariable(name: "order", arg: 2, scope: !696, file: !3, line: 552, type: !5)
!702 = !DILocalVariable(name: "total_len", arg: 3, scope: !696, file: !3, line: 553, type: !7)
!703 = !DILocalVariable(name: "start", arg: 4, scope: !696, file: !3, line: 553, type: !7)
!704 = !DILocalVariable(name: "len", arg: 5, scope: !696, file: !3, line: 553, type: !7)
!705 = !DILocalVariable(name: "stuff_to_put", arg: 6, scope: !696, file: !3, line: 554, type: !22)
!706 = !DILocalVariable(name: "cur_byte", scope: !696, file: !3, line: 556, type: !7)
!707 = !DILocalVariable(name: "lo_bit", scope: !696, file: !3, line: 557, type: !36)
!708 = !DILocalVariable(name: "hi_bit", scope: !696, file: !3, line: 557, type: !36)
!709 = !DILocalVariable(name: "nextbyte", scope: !696, file: !3, line: 558, type: !36)
!710 = !DILocalVariable(name: "byte_ptr", scope: !711, file: !3, line: 574, type: !18)
!711 = distinct !DILexicalBlock(scope: !696, file: !3, line: 573, column: 5)
!712 = !DILocalVariable(name: "bits", scope: !711, file: !3, line: 575, type: !7)
!713 = !DILocalVariable(name: "mask", scope: !711, file: !3, line: 576, type: !7)
!714 = !DILocation(line: 0, scope: !696)
!715 = !DILocation(line: 558, column: 25, scope: !696)
!716 = !DILocation(line: 558, column: 18, scope: !696)
!717 = !DILocation(line: 561, column: 30, scope: !696)
!718 = !DILocation(line: 561, column: 21, scope: !696)
!719 = !DILocation(line: 564, column: 7, scope: !696)
!720 = !DILocation(line: 565, column: 5, scope: !721)
!721 = distinct !DILexicalBlock(scope: !696, file: !3, line: 564, column: 7)
!722 = !DILocation(line: 567, column: 35, scope: !721)
!723 = !DILocation(line: 0, scope: !721)
!724 = !DILocation(line: 569, column: 18, scope: !696)
!725 = !DILocation(line: 570, column: 12, scope: !696)
!726 = !DILocation(line: 572, column: 3, scope: !696)
!727 = !DILocation(line: 574, column: 38, scope: !711)
!728 = !DILocation(line: 0, scope: !711)
!729 = !DILocation(line: 575, column: 34, scope: !711)
!730 = !DILocation(line: 576, column: 40, scope: !711)
!731 = !DILocation(line: 576, column: 45, scope: !711)
!732 = !DILocation(line: 577, column: 20, scope: !711)
!733 = !DILocation(line: 577, column: 32, scope: !711)
!734 = !DILocation(line: 577, column: 30, scope: !711)
!735 = !DILocation(line: 577, column: 19, scope: !711)
!736 = !DILocation(line: 577, column: 56, scope: !711)
!737 = !DILocation(line: 577, column: 69, scope: !711)
!738 = !DILocation(line: 577, column: 67, scope: !711)
!739 = !DILocation(line: 577, column: 39, scope: !711)
!740 = !DILocation(line: 577, column: 17, scope: !711)
!741 = !DILocation(line: 578, column: 20, scope: !711)
!742 = !DILocation(line: 579, column: 11, scope: !711)
!743 = !DILocation(line: 580, column: 16, scope: !711)
!744 = !DILocation(line: 582, column: 16, scope: !711)
!745 = !DILocation(line: 584, column: 14, scope: !696)
!746 = !DILocation(line: 583, column: 5, scope: !711)
!747 = distinct !{!747, !726, !748}
!748 = !DILocation(line: 584, column: 18, scope: !696)
!749 = !DILocation(line: 585, column: 1, scope: !696)
!750 = distinct !DISubprogram(name: "floatformat_is_valid", scope: !3, file: !3, line: 692, type: !47, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !751)
!751 = !{!752, !753}
!752 = !DILocalVariable(name: "fmt", arg: 1, scope: !750, file: !3, line: 692, type: !49)
!753 = !DILocalVariable(name: "from", arg: 2, scope: !750, file: !3, line: 692, type: !50)
!754 = !DILocation(line: 0, scope: !750)
!755 = !DILocation(line: 694, column: 15, scope: !750)
!756 = !DILocation(line: 694, column: 10, scope: !750)
!757 = !DILocation(line: 694, column: 3, scope: !750)
