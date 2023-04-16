; ModuleID = 'real.bc'
source_filename = "real.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.real_format = type { void (%struct.real_format*, i64*, %struct.real_value*)*, void (%struct.real_format*, %struct.real_value*, i64*)*, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"real.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@real_format_for_mode = external dso_local local_unnamed_addr global [7 x %struct.real_format*], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@mode_inner = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"-0.0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%c%cNaN\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"e%+d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"p%+d\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"QNaN\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"SNaN\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@_hex_value = external dso_local local_unnamed_addr constant [256 x i8], align 16
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@dconst_e_ptr.value = internal global %struct.real_value zeroinitializer, align 8, !dbg !0
@dconst_third_ptr.value = internal global %struct.real_value zeroinitializer, align 8, !dbg !382
@dconst1 = external dso_local global %struct.real_value, align 8
@dconst_sqrt2_ptr.value = internal global %struct.real_value zeroinitializer, align 8, !dbg !386
@ieee_single_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_single, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 128, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !393
@mips_single_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_single, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 128, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8, !dbg !427
@motorola_single_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_single, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 128, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 }, align 8, !dbg !429
@spu_single_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_single, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 129, i32 31, i32 31, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 8, !dbg !431
@ieee_double_format = dso_local constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_double, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_double, i32 2, i32 53, i32 53, i32 -1021, i32 1024, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !433
@mips_double_format = dso_local constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_double, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_double, i32 2, i32 53, i32 53, i32 -1021, i32 1024, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8, !dbg !435
@motorola_double_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_double, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_double, i32 2, i32 53, i32 53, i32 -1021, i32 1024, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 }, align 8, !dbg !437
@ieee_extended_motorola_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_extended_motorola, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_extended_motorola, i32 2, i32 64, i32 64, i32 -16382, i32 16384, i32 95, i32 95, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 }, align 8, !dbg !439
@ieee_extended_intel_96_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_extended_intel_96, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_extended_intel_96, i32 2, i32 64, i32 64, i32 -16381, i32 16384, i32 79, i32 79, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !441
@ieee_extended_intel_128_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_extended_intel_128, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_extended_intel_128, i32 2, i32 64, i32 64, i32 -16381, i32 16384, i32 79, i32 79, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !443
@ieee_extended_intel_96_round_53_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_extended_intel_96, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_extended_intel_96, i32 2, i32 53, i32 53, i32 -16381, i32 16384, i32 79, i32 79, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !445
@ibm_extended_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ibm_extended, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ibm_extended, i32 2, i32 106, i32 53, i32 -968, i32 1024, i32 127, i32 -1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !447
@mips_extended_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ibm_extended, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ibm_extended, i32 2, i32 106, i32 53, i32 -968, i32 1024, i32 127, i32 -1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8, !dbg !449
@ieee_quad_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_quad, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_quad, i32 2, i32 113, i32 113, i32 -16381, i32 16384, i32 127, i32 127, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !451
@mips_quad_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_quad, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_quad, i32 2, i32 113, i32 113, i32 -16381, i32 16384, i32 127, i32 127, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8, !dbg !453
@vax_f_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_vax_f, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_vax_f, i32 2, i32 24, i32 24, i32 -127, i32 127, i32 15, i32 15, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8, !dbg !455
@vax_d_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_vax_d, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_vax_d, i32 2, i32 56, i32 56, i32 -127, i32 127, i32 15, i32 15, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8, !dbg !457
@vax_g_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_vax_g, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_vax_g, i32 2, i32 53, i32 53, i32 -1023, i32 1023, i32 15, i32 15, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8, !dbg !459
@decimal_single_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_decimal_single, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_decimal_single, i32 10, i32 7, i32 7, i32 -94, i32 97, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !461
@decimal_double_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_decimal_double, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_decimal_double, i32 10, i32 16, i32 16, i32 -382, i32 385, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !463
@decimal_quad_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_decimal_quad, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_decimal_quad, i32 10, i32 34, i32 34, i32 -6142, i32 6145, i32 127, i32 127, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !465
@ieee_half_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_half, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_half, i32 2, i32 11, i32 11, i32 -13, i32 16, i32 15, i32 15, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8, !dbg !467
@arm_half_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_ieee_half, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_ieee_half, i32 2, i32 11, i32 11, i32 -13, i32 17, i32 15, i32 15, i8 0, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 8, !dbg !469
@real_internal_format = dso_local local_unnamed_addr constant %struct.real_format { void (%struct.real_format*, i64*, %struct.real_value*)* @encode_internal, void (%struct.real_format*, %struct.real_value*, i64*)* @decode_internal, i32 2, i32 190, i32 190, i32 -33554431, i32 33554431, i32 -1, i32 -1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0 }, align 8, !dbg !471
@real_sqrt.halfthree = internal global %struct.real_value zeroinitializer, align 8, !dbg !473
@real_sqrt.init = internal unnamed_addr global i1 false, align 1, !dbg !524
@dconsthalf = external dso_local global %struct.real_value, align 8
@dconstm1 = external dso_local global %struct.real_value, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"0x0.\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"08ce\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"p%d\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"7bde\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"0.\00", align 1
@ten_to_ptwo.tens = internal global [26 x %struct.real_value] zeroinitializer, align 16, !dbg !489
@ten_to_mptwo.tens = internal global [26 x %struct.real_value] zeroinitializer, align 16, !dbg !507
@real_digit.num = internal global [10 x %struct.real_value] zeroinitializer, align 16, !dbg !512

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !529 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !542, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !545
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !546
  ret i32 %call, !dbg !547
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !548 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !551
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !552
  ret i32 %call, !dbg !553
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !554 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !614, metadata !DIExpression()), !dbg !615
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !616
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !616
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !616
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !616
  %cmp = icmp uge i8* %0, %1, !dbg !616
  %conv1 = zext i1 %cmp to i64, !dbg !616
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !616
  %tobool = icmp eq i64 %expval, 0, !dbg !616
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !616

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !616
  br label %cond.end, !dbg !616

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !616
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !616
  %2 = load i8, i8* %0, align 1, !dbg !616
  %conv3 = zext i8 %2 to i32, !dbg !616
  br label %cond.end, !dbg !616

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !616
  ret i32 %cond, !dbg !617
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !618 {
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !624 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !625
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !625
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !625
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !625
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !625
  %cmp = icmp uge i8* %1, %2, !dbg !625
  %conv1 = zext i1 %cmp to i64, !dbg !625
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !625
  %tobool = icmp eq i64 %expval, 0, !dbg !625
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !625

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !625
  br label %cond.end, !dbg !625

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !625
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !625
  %3 = load i8, i8* %1, align 1, !dbg !625
  %conv3 = zext i8 %3 to i32, !dbg !625
  br label %cond.end, !dbg !625

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !625
  ret i32 %cond, !dbg !626
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !627 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !631, metadata !DIExpression()), !dbg !632
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !633
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !634
  ret i32 %call, !dbg !635
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !636 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !640, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !641, metadata !DIExpression()), !dbg !642
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !643
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !643
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !643
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !643
  %cmp = icmp uge i8* %0, %1, !dbg !643
  %conv1 = zext i1 %cmp to i64, !dbg !643
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !643
  %tobool = icmp eq i64 %expval, 0, !dbg !643
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !643

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !643
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !643
  br label %cond.end, !dbg !643

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !643
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !643
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !643
  store i8 %conv2, i8* %0, align 1, !dbg !643
  %conv6 = and i32 %__c, 255, !dbg !643
  br label %cond.end, !dbg !643

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !643
  ret i32 %cond, !dbg !644
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !645 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !647, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !648, metadata !DIExpression()), !dbg !649
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !650
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !650
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !650
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !650
  %cmp = icmp uge i8* %0, %1, !dbg !650
  %conv1 = zext i1 %cmp to i64, !dbg !650
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !650
  %tobool = icmp eq i64 %expval, 0, !dbg !650
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !650

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !650
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !650
  br label %cond.end, !dbg !650

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !650
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !650
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !650
  store i8 %conv2, i8* %0, align 1, !dbg !650
  %conv6 = and i32 %__c, 255, !dbg !650
  br label %cond.end, !dbg !650

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !650
  ret i32 %cond, !dbg !651
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !652 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !654, metadata !DIExpression()), !dbg !655
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !656
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !656
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !656
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !656
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !656
  %cmp = icmp uge i8* %1, %2, !dbg !656
  %conv1 = zext i1 %cmp to i64, !dbg !656
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !656
  %tobool = icmp eq i64 %expval, 0, !dbg !656
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !656

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !656
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !656
  br label %cond.end, !dbg !656

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !656
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !656
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !656
  store i8 %conv4, i8* %1, align 1, !dbg !656
  %conv6 = and i32 %__c, 255, !dbg !656
  br label %cond.end, !dbg !656

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !656
  ret i32 %cond, !dbg !657
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !658 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !664, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64* %__n, metadata !665, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !666, metadata !DIExpression()), !dbg !667
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !668
  ret i64 %call, !dbg !669
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !670 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !672, metadata !DIExpression()), !dbg !673
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !674
  %0 = load i32, i32* %_flags, align 8, !dbg !674
  %and = lshr i32 %0, 4, !dbg !674
  %and.lobit = and i32 %and, 1, !dbg !674
  ret i32 %and.lobit, !dbg !675
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !676 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !678, metadata !DIExpression()), !dbg !679
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !680
  %0 = load i32, i32* %_flags, align 8, !dbg !680
  %and = lshr i32 %0, 5, !dbg !680
  %and.lobit = and i32 %and, 1, !dbg !680
  ret i32 %and.lobit, !dbg !681
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !682 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !685, metadata !DIExpression()), !dbg !686
  %__c.off = add i32 %__c, 128, !dbg !687
  %0 = icmp ult i32 %__c.off, 384, !dbg !687
  br i1 %0, label %cond.true, label %cond.end, !dbg !687

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !688
  %1 = load i32*, i32** %call, align 8, !dbg !689
  %idxprom = sext i32 %__c to i64, !dbg !690
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !690
  %2 = load i32, i32* %arrayidx, align 4, !dbg !690
  br label %cond.end, !dbg !691

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !691
  ret i32 %cond, !dbg !692
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !693 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !695, metadata !DIExpression()), !dbg !696
  %__c.off = add i32 %__c, 128, !dbg !697
  %0 = icmp ult i32 %__c.off, 384, !dbg !697
  br i1 %0, label %cond.true, label %cond.end, !dbg !697

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !698
  %1 = load i32*, i32** %call, align 8, !dbg !699
  %idxprom = sext i32 %__c to i64, !dbg !700
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !700
  %2 = load i32, i32* %arrayidx, align 4, !dbg !700
  br label %cond.end, !dbg !701

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !701
  ret i32 %cond, !dbg !702
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !703 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !708, metadata !DIExpression()), !dbg !709
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !710
  %conv = trunc i64 %call to i32, !dbg !711
  ret i32 %conv, !dbg !712
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !713 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !717, metadata !DIExpression()), !dbg !718
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !719
  ret i64 %call, !dbg !720
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !721 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !726, metadata !DIExpression()), !dbg !727
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !728
  ret i64 %call, !dbg !729
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !730 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !741, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i8* %__base, metadata !742, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !743, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 %__size, metadata !744, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !745, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 0, metadata !746, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !747, metadata !DIExpression()), !dbg !751
  br label %while.cond, !dbg !752

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !753
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !751
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !747, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !746, metadata !DIExpression()), !dbg !751
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !754
  br i1 %cmp, label %while.body, label %cleanup, !dbg !752

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !755
  %div = lshr i64 %add, 1, !dbg !757
  call void @llvm.dbg.value(metadata i64 %div, metadata !748, metadata !DIExpression()), !dbg !751
  %mul = mul i64 %div, %__size, !dbg !758
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !759
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !749, metadata !DIExpression()), !dbg !751
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !760
  call void @llvm.dbg.value(metadata i32 %call, metadata !750, metadata !DIExpression()), !dbg !751
  %cmp1 = icmp slt i32 %call, 0, !dbg !761
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !763

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !764
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !766

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !767
  call void @llvm.dbg.value(metadata i64 %add4, metadata !746, metadata !DIExpression()), !dbg !751
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !751
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !751
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !747, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !746, metadata !DIExpression()), !dbg !751
  br label %while.cond, !dbg !752, !llvm.loop !768

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !751
  ret i8* %retval.0, !dbg !770
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !771 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !777, metadata !DIExpression()), !dbg !778
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !779
  ret double %call, !dbg !780
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !781 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !790, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !791, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i32 %base, metadata !792, metadata !DIExpression()), !dbg !793
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !794
  ret i64 %call, !dbg !795
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !796 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !802, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !803, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i32 %base, metadata !804, metadata !DIExpression()), !dbg !805
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !806
  ret i64 %call, !dbg !807
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !808 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !819, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !820, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i32 %base, metadata !821, metadata !DIExpression()), !dbg !822
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !823
  ret i64 %call, !dbg !824
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !825 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !829, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !830, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata i32 %base, metadata !831, metadata !DIExpression()), !dbg !832
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !833
  ret i64 %call, !dbg !834
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !835 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !875, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !876, metadata !DIExpression()), !dbg !877
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !878
  ret i32 %call, !dbg !879
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !880 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !882, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !883, metadata !DIExpression()), !dbg !884
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !885
  ret i32 %call, !dbg !886
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !887 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !891, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !892, metadata !DIExpression()), !dbg !893
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !894
  ret i32 %call, !dbg !895
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !896 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !900, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !902, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !903, metadata !DIExpression()), !dbg !904
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !905
  ret i32 %call, !dbg !906
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !907 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !911, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !912, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !913, metadata !DIExpression()), !dbg !914
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !913, metadata !DIExpression(DW_OP_deref)), !dbg !914
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !915
  ret i32 %call, !dbg !916
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !917 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i8* %__path, metadata !922, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !923, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !924, metadata !DIExpression()), !dbg !925
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !924, metadata !DIExpression(DW_OP_deref)), !dbg !925
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !926
  ret i32 %call, !dbg !927
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !928 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !952, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !953, metadata !DIExpression()), !dbg !954
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !955
  ret i32 %call, !dbg !956
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !957 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !959, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !960, metadata !DIExpression()), !dbg !961
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !962
  ret i32 %call, !dbg !963
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !964 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !968, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !969, metadata !DIExpression()), !dbg !970
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !971
  ret i32 %call, !dbg !972
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !973 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !977, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !978, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !979, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !980, metadata !DIExpression()), !dbg !981
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !982
  ret i32 %call, !dbg !983
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_arithmetic(%struct.real_value* %r, i32 %icode, %struct.real_value* %op0, %struct.real_value* %op1) local_unnamed_addr #5 !dbg !984 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !988, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i32 %icode, metadata !989, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata %struct.real_value* %op0, metadata !990, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata %struct.real_value* %op1, metadata !991, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i32 %icode, metadata !992, metadata !DIExpression()), !dbg !993
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %op0, i64 0, i32 0, !dbg !994
  %bf.load = load i32, i32* %0, align 8, !dbg !994
  %bf.clear = and i32 %bf.load, 4, !dbg !994
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !996
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !997

lor.lhs.false:                                    ; preds = %entry
  %tobool1 = icmp eq %struct.real_value* %op1, null, !dbg !998
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !999

land.lhs.true:                                    ; preds = %lor.lhs.false
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %op1, i64 0, i32 0, !dbg !1000
  %bf.load2 = load i32, i32* %1, align 8, !dbg !1000
  %bf.clear4 = and i32 %bf.load2, 4, !dbg !1000
  %tobool5 = icmp eq i32 %bf.clear4, 0, !dbg !1001
  br i1 %tobool5, label %if.end, label %if.then, !dbg !1002

if.then:                                          ; preds = %land.lhs.true, %entry
  %call = tail call zeroext i8 @decimal_real_arithmetic(%struct.real_value* %r, i32 %icode, %struct.real_value* %op0, %struct.real_value* %op1) #6, !dbg !1003
  br label %cleanup, !dbg !1004

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  switch i32 %icode, label %sw.default [
    i32 63, label %sw.bb
    i32 64, label %sw.bb7
    i32 65, label %sw.bb9
    i32 75, label %sw.bb11
    i32 80, label %sw.bb13
    i32 81, label %sw.bb23
    i32 79, label %sw.bb35
    i32 82, label %sw.bb41
    i32 77, label %sw.bb44
  ], !dbg !1005

sw.bb:                                            ; preds = %if.end
  %call6 = tail call fastcc zeroext i8 @do_add(%struct.real_value* %r, %struct.real_value* %op0, %struct.real_value* %op1, i32 0) #7, !dbg !1006
  br label %cleanup, !dbg !1008

sw.bb7:                                           ; preds = %if.end
  %call8 = tail call fastcc zeroext i8 @do_add(%struct.real_value* %r, %struct.real_value* %op0, %struct.real_value* %op1, i32 1) #7, !dbg !1009
  br label %cleanup, !dbg !1010

sw.bb9:                                           ; preds = %if.end
  %call10 = tail call fastcc zeroext i8 @do_multiply(%struct.real_value* %r, %struct.real_value* %op0, %struct.real_value* %op1) #7, !dbg !1011
  br label %cleanup, !dbg !1012

sw.bb11:                                          ; preds = %if.end
  %call12 = tail call fastcc zeroext i8 @do_divide(%struct.real_value* %r, %struct.real_value* %op0, %struct.real_value* %op1) #7, !dbg !1013
  br label %cleanup, !dbg !1014

sw.bb13:                                          ; preds = %if.end
  %2 = getelementptr inbounds %struct.real_value, %struct.real_value* %op1, i64 0, i32 0, !dbg !1015
  %bf.load14 = load i32, i32* %2, align 8, !dbg !1015
  %bf.clear15 = and i32 %bf.load14, 3, !dbg !1015
  %cmp = icmp eq i32 %bf.clear15, 3, !dbg !1017
  br i1 %cmp, label %if.then16, label %if.else, !dbg !1018

if.then16:                                        ; preds = %sw.bb13
  %3 = bitcast %struct.real_value* %r to i8*, !dbg !1019
  %4 = bitcast %struct.real_value* %op1 to i8*, !dbg !1019
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 32, i1 false), !dbg !1019
  br label %cleanup, !dbg !1020

if.else:                                          ; preds = %sw.bb13
  %call17 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 -1) #7, !dbg !1021
  %cmp18 = icmp slt i32 %call17, 0, !dbg !1023
  %5 = bitcast %struct.real_value* %r to i8*, !dbg !1024
  br i1 %cmp18, label %if.then19, label %if.else20, !dbg !1025

if.then19:                                        ; preds = %if.else
  %6 = bitcast %struct.real_value* %op0 to i8*, !dbg !1026
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 32, i1 false), !dbg !1026
  br label %cleanup, !dbg !1027

if.else20:                                        ; preds = %if.else
  %7 = bitcast %struct.real_value* %op1 to i8*, !dbg !1028
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %7, i64 32, i1 false), !dbg !1028
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  %8 = getelementptr inbounds %struct.real_value, %struct.real_value* %op1, i64 0, i32 0, !dbg !1029
  %bf.load24 = load i32, i32* %8, align 8, !dbg !1029
  %bf.clear25 = and i32 %bf.load24, 3, !dbg !1029
  %cmp26 = icmp eq i32 %bf.clear25, 3, !dbg !1031
  br i1 %cmp26, label %if.then27, label %if.else28, !dbg !1032

if.then27:                                        ; preds = %sw.bb23
  %9 = bitcast %struct.real_value* %r to i8*, !dbg !1033
  %10 = bitcast %struct.real_value* %op1 to i8*, !dbg !1033
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 32, i1 false), !dbg !1033
  br label %cleanup, !dbg !1034

if.else28:                                        ; preds = %sw.bb23
  %call29 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 1) #7, !dbg !1035
  %cmp30 = icmp slt i32 %call29, 0, !dbg !1037
  %11 = bitcast %struct.real_value* %r to i8*, !dbg !1038
  br i1 %cmp30, label %if.then31, label %if.else32, !dbg !1039

if.then31:                                        ; preds = %if.else28
  %12 = bitcast %struct.real_value* %op1 to i8*, !dbg !1040
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1040
  br label %cleanup, !dbg !1041

if.else32:                                        ; preds = %if.else28
  %13 = bitcast %struct.real_value* %op0 to i8*, !dbg !1042
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %13, i64 32, i1 false), !dbg !1042
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  %14 = bitcast %struct.real_value* %r to i8*, !dbg !1043
  %15 = bitcast %struct.real_value* %op0 to i8*, !dbg !1043
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 32, i1 false), !dbg !1043
  %16 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1044
  %bf.load36 = load i32, i32* %16, align 8, !dbg !1045
  %bf.set = xor i32 %bf.load36, 8, !dbg !1045
  store i32 %bf.set, i32* %16, align 8, !dbg !1045
  br label %cleanup, !dbg !1046

sw.bb41:                                          ; preds = %if.end
  %17 = bitcast %struct.real_value* %r to i8*, !dbg !1047
  %18 = bitcast %struct.real_value* %op0 to i8*, !dbg !1047
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 32, i1 false), !dbg !1047
  %19 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1048
  %bf.load42 = load i32, i32* %19, align 8, !dbg !1049
  %bf.clear43 = and i32 %bf.load42, -9, !dbg !1049
  store i32 %bf.clear43, i32* %19, align 8, !dbg !1049
  br label %cleanup, !dbg !1050

sw.bb44:                                          ; preds = %if.end
  tail call fastcc void @do_fix_trunc(%struct.real_value* %r, %struct.real_value* %op0) #7, !dbg !1051
  br label %cleanup, !dbg !1052

sw.default:                                       ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1055, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1053
  br label %cleanup, !dbg !1054

cleanup:                                          ; preds = %sw.bb35, %sw.bb41, %sw.bb44, %sw.default, %if.then19, %if.else20, %if.then16, %if.then31, %if.else32, %if.then27, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb, %if.then
  %retval.0 = phi i8 [ %call, %if.then ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb ], [ 0, %if.then27 ], [ 0, %if.else32 ], [ 0, %if.then31 ], [ 0, %if.then16 ], [ 0, %if.else20 ], [ 0, %if.then19 ], [ 0, %sw.default ], [ 0, %sw.bb44 ], [ 0, %sw.bb41 ], [ 0, %sw.bb35 ], !dbg !993
  ret i8 %retval.0, !dbg !1055
}

declare dso_local zeroext i8 @decimal_real_arithmetic(%struct.real_value*, i32, %struct.real_value*, %struct.real_value*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @do_add(%struct.real_value* %r, %struct.real_value* %a, %struct.real_value* %b, i32 %subtract_p) unnamed_addr #5 !dbg !1056 {
entry:
  %t = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1060, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1061, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !1062, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i32 %subtract_p, metadata !1063, metadata !DIExpression()), !dbg !1072
  %0 = bitcast %struct.real_value* %t to i8*, !dbg !1073
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !1073
  call void @llvm.dbg.value(metadata i8 0, metadata !1068, metadata !DIExpression()), !dbg !1072
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 0, !dbg !1074
  %bf.load = load i32, i32* %1, align 8, !dbg !1074
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !1074
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !1065, metadata !DIExpression()), !dbg !1072
  %2 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 0, !dbg !1075
  %bf.load1 = load i32, i32* %2, align 8, !dbg !1075
  %bf.lshr2 = lshr i32 %bf.load1, 3, !dbg !1075
  %bf.clear3 = and i32 %bf.lshr2, 1, !dbg !1075
  %xor = xor i32 %bf.clear, %bf.clear3, !dbg !1076
  %xor4 = xor i32 %xor, %subtract_p, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %xor4, metadata !1063, metadata !DIExpression()), !dbg !1072
  %bf.clear6 = shl i32 %bf.load, 2, !dbg !1078
  %shl = and i32 %bf.clear6, 12, !dbg !1078
  %bf.clear8 = and i32 %bf.load1, 3, !dbg !1078
  %or = or i32 %shl, %bf.clear8, !dbg !1078
  switch i32 %or, label %sw.default1 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb9
    i32 3, label %sw.bb9
    i32 7, label %sw.bb9
    i32 11, label %sw.bb9
    i32 15, label %sw.bb9
    i32 6, label %sw.bb9
    i32 4, label %sw.bb13
    i32 8, label %sw.bb13
    i32 12, label %sw.bb13
    i32 13, label %sw.bb13
    i32 14, label %sw.bb13
    i32 9, label %sw.bb13
    i32 10, label %sw.bb14
    i32 5, label %sw.epilog
  ], !dbg !1079

sw.bb:                                            ; preds = %entry
  %tobool = icmp eq i32 %xor4, 0, !dbg !1080
  %lnot.ext = zext i1 %tobool to i32, !dbg !1080
  %and = and i32 %bf.lshr, %lnot.ext, !dbg !1082
  tail call fastcc void @get_zero(%struct.real_value* %r, i32 %and) #7, !dbg !1083
  br label %cleanup, !dbg !1084

sw.bb9:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3 = bitcast %struct.real_value* %r to i8*, !dbg !1085
  %4 = bitcast %struct.real_value* %b to i8*, !dbg !1085
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 32, i1 false), !dbg !1085
  %xor10 = xor i32 %bf.lshr2, %subtract_p, !dbg !1086
  %5 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1087
  %bf.load11 = load i32, i32* %5, align 8, !dbg !1088
  %bf.value = shl i32 %xor10, 3, !dbg !1088
  %bf.shl = and i32 %bf.value, 8, !dbg !1088
  %bf.clear12 = and i32 %bf.load11, -9, !dbg !1088
  %bf.set = or i32 %bf.clear12, %bf.shl, !dbg !1088
  store i32 %bf.set, i32* %5, align 8, !dbg !1088
  br label %cleanup, !dbg !1089

sw.bb13:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %6 = bitcast %struct.real_value* %r to i8*, !dbg !1090
  %7 = bitcast %struct.real_value* %a to i8*, !dbg !1090
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 32, i1 false), !dbg !1090
  br label %cleanup, !dbg !1091

sw.bb14:                                          ; preds = %entry
  %tobool15 = icmp eq i32 %xor4, 0, !dbg !1092
  br i1 %tobool15, label %if.else, label %if.then, !dbg !1094

if.then:                                          ; preds = %sw.bb14
  tail call fastcc void @get_canonical_qnan(%struct.real_value* %r, i32 0) #7, !dbg !1095
  br label %cleanup, !dbg !1095

if.else:                                          ; preds = %sw.bb14
  %8 = bitcast %struct.real_value* %r to i8*, !dbg !1096
  %9 = bitcast %struct.real_value* %a to i8*, !dbg !1096
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false), !dbg !1096
  br label %cleanup

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry
  %sub = ashr i32 %bf.load, 6, !dbg !1097
  %sub22 = ashr i32 %bf.load1, 6, !dbg !1098
  %sub23 = sub nsw i32 %sub, %sub22, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %sub23, metadata !1064, metadata !DIExpression()), !dbg !1072
  %cmp = icmp slt i32 %sub23, 0, !dbg !1100
  br i1 %cmp, label %if.then24, label %if.end28, !dbg !1101

if.then24:                                        ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1069, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !1061, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1062, metadata !DIExpression()), !dbg !1072
  %sub26 = sub nsw i32 0, %sub23, !dbg !1103
  call void @llvm.dbg.value(metadata i32 %sub26, metadata !1064, metadata !DIExpression()), !dbg !1072
  %xor27 = xor i32 %bf.clear3, %subtract_p, !dbg !1104
  call void @llvm.dbg.value(metadata i32 %xor27, metadata !1065, metadata !DIExpression()), !dbg !1072
  br label %if.end28, !dbg !1105

if.end28:                                         ; preds = %if.then24, %sw.epilog
  %sub32.pre-phi = phi i32 [ %sub22, %if.then24 ], [ %sub, %sw.epilog ], !dbg !1106
  %bf.load29 = phi i32 [ %bf.load1, %if.then24 ], [ %bf.load, %sw.epilog ], !dbg !1106
  %sign.0 = phi i32 [ %xor27, %if.then24 ], [ %bf.clear, %sw.epilog ], !dbg !1072
  %dexp.0 = phi i32 [ %sub26, %if.then24 ], [ %sub23, %sw.epilog ], !dbg !1072
  %b.addr.0 = phi %struct.real_value* [ %a, %if.then24 ], [ %b, %sw.epilog ]
  %a.addr.0 = phi %struct.real_value* [ %b, %if.then24 ], [ %a, %sw.epilog ]
  call void @llvm.dbg.value(metadata %struct.real_value* %a.addr.0, metadata !1061, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata %struct.real_value* %b.addr.0, metadata !1062, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i32 %dexp.0, metadata !1064, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i32 %sign.0, metadata !1065, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i32 %sub32.pre-phi, metadata !1066, metadata !DIExpression()), !dbg !1072
  %cmp33 = icmp sgt i32 %dexp.0, 0, !dbg !1107
  br i1 %cmp33, label %if.then34, label %if.end46, !dbg !1109

if.then34:                                        ; preds = %if.end28
  %cmp35 = icmp sgt i32 %dexp.0, 191, !dbg !1110
  br i1 %cmp35, label %if.then36, label %if.end42, !dbg !1113

if.then36:                                        ; preds = %if.then34
  %10 = bitcast %struct.real_value* %r to i8*, !dbg !1114
  %11 = bitcast %struct.real_value* %a.addr.0 to i8*, !dbg !1114
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 32, i1 false), !dbg !1114
  %12 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1116
  %bf.load37 = load i32, i32* %12, align 8, !dbg !1117
  %bf.value38 = shl i32 %sign.0, 3, !dbg !1117
  %bf.shl39 = and i32 %bf.value38, 8, !dbg !1117
  %bf.clear40 = and i32 %bf.load37, -9, !dbg !1117
  %bf.set41 = or i32 %bf.clear40, %bf.shl39, !dbg !1117
  store i32 %bf.set41, i32* %12, align 8, !dbg !1117
  br label %cleanup, !dbg !1118

if.end42:                                         ; preds = %if.then34
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !1067, metadata !DIExpression(DW_OP_deref)), !dbg !1072
  %call = call fastcc zeroext i8 @sticky_rshift_significand(%struct.real_value* nonnull %t, %struct.real_value* %b.addr.0, i32 %dexp.0) #7, !dbg !1119
  call void @llvm.dbg.value(metadata i8 %call, metadata !1068, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !1062, metadata !DIExpression()), !dbg !1072
  br label %if.end46, !dbg !1120

if.end46:                                         ; preds = %if.end42, %if.end28
  %inexact.0 = phi i8 [ %call, %if.end42 ], [ 0, %if.end28 ], !dbg !1072
  %b.addr.1 = phi %struct.real_value* [ %t, %if.end42 ], [ %b.addr.0, %if.end28 ], !dbg !1072
  call void @llvm.dbg.value(metadata %struct.real_value* %b.addr.1, metadata !1062, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i8 %inexact.0, metadata !1068, metadata !DIExpression()), !dbg !1072
  %tobool47 = icmp eq i32 %xor4, 0, !dbg !1121
  br i1 %tobool47, label %if.else55, label %if.then48, !dbg !1123

if.then48:                                        ; preds = %if.end46
  %conv49 = zext i8 %inexact.0 to i32, !dbg !1124
  %call50 = call fastcc zeroext i8 @sub_significands(%struct.real_value* %r, %struct.real_value* %a.addr.0, %struct.real_value* %b.addr.1, i32 %conv49) #7, !dbg !1127
  %tobool51 = icmp eq i8 %call50, 0, !dbg !1127
  br i1 %tobool51, label %if.end70, label %if.then52, !dbg !1128

if.then52:                                        ; preds = %if.then48
  %xor53 = xor i32 %sign.0, 1, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %xor53, metadata !1065, metadata !DIExpression()), !dbg !1072
  call fastcc void @neg_significand(%struct.real_value* %r, %struct.real_value* %r) #7, !dbg !1131
  br label %if.end70, !dbg !1132

if.else55:                                        ; preds = %if.end46
  %call56 = call fastcc zeroext i8 @add_significands(%struct.real_value* %r, %struct.real_value* %a.addr.0, %struct.real_value* %b.addr.1) #7, !dbg !1133
  %tobool57 = icmp eq i8 %call56, 0, !dbg !1133
  br i1 %tobool57, label %if.end70, label %if.then58, !dbg !1136

if.then58:                                        ; preds = %if.else55
  %call59 = call fastcc zeroext i8 @sticky_rshift_significand(%struct.real_value* %r, %struct.real_value* %r, i32 1) #7, !dbg !1137
  %or622 = or i8 %inexact.0, %call59, !dbg !1139
  call void @llvm.dbg.value(metadata i8 %or622, metadata !1068, metadata !DIExpression()), !dbg !1072
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !1140
  %13 = load i64, i64* %arrayidx, align 8, !dbg !1141
  %or64 = or i64 %13, -9223372036854775808, !dbg !1141
  store i64 %or64, i64* %arrayidx, align 8, !dbg !1141
  %inc = add nsw i32 %sub32.pre-phi, 1, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1066, metadata !DIExpression()), !dbg !1072
  %cmp65 = icmp sgt i32 %bf.load29, 2147483583, !dbg !1144
  br i1 %cmp65, label %if.then67, label %if.end70, !dbg !1145

if.then67:                                        ; preds = %if.then58
  call fastcc void @get_inf(%struct.real_value* %r, i32 %sign.0) #7, !dbg !1146
  br label %cleanup, !dbg !1148

if.end70:                                         ; preds = %if.then48, %if.else55, %if.then58, %if.then52
  %inexact.2 = phi i8 [ %inexact.0, %if.then52 ], [ %inexact.0, %if.then48 ], [ %inexact.0, %if.else55 ], [ %or622, %if.then58 ], !dbg !1072
  %exp.1 = phi i32 [ %sub32.pre-phi, %if.then52 ], [ %sub32.pre-phi, %if.then48 ], [ %sub32.pre-phi, %if.else55 ], [ %inc, %if.then58 ], !dbg !1072
  %sign.2 = phi i32 [ %xor53, %if.then52 ], [ %sign.0, %if.then48 ], [ %sign.0, %if.else55 ], [ %sign.0, %if.then58 ], !dbg !1072
  call void @llvm.dbg.value(metadata i32 %sign.2, metadata !1065, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i32 %exp.1, metadata !1066, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i8 %inexact.2, metadata !1068, metadata !DIExpression()), !dbg !1072
  %bf.value75 = shl i32 %sign.2, 3, !dbg !1149
  %bf.shl76 = and i32 %bf.value75, 8, !dbg !1149
  %bf.shl82 = shl i32 %exp.1, 6, !dbg !1150
  %bf.set78 = or i32 %bf.shl76, %bf.shl82, !dbg !1150
  %bf.set84 = or i32 %bf.set78, 1, !dbg !1150
  %14 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1151
  store i32 %bf.set84, i32* %14, align 8, !dbg !1152
  call fastcc void @normalize(%struct.real_value* %r) #7, !dbg !1153
  %bf.load91 = load i32, i32* %14, align 8, !dbg !1154
  %bf.clear92 = and i32 %bf.load91, 3, !dbg !1154
  %cmp93 = icmp eq i32 %bf.clear92, 0, !dbg !1156
  br i1 %cmp93, label %if.then95, label %if.else98, !dbg !1157

if.then95:                                        ; preds = %if.end70
  %bf.clear97 = and i32 %bf.load91, -9, !dbg !1158
  store i32 %bf.clear97, i32* %14, align 8, !dbg !1158
  br label %cleanup, !dbg !1159

if.else98:                                        ; preds = %if.end70
  %conv99 = zext i8 %inexact.2 to i64, !dbg !1160
  %arrayidx101 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !1161
  %15 = load i64, i64* %arrayidx101, align 8, !dbg !1162
  %or102 = or i64 %15, %conv99, !dbg !1162
  store i64 %or102, i64* %arrayidx101, align 8, !dbg !1162
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.else98, %if.then, %if.else, %if.then67, %if.then36, %sw.bb13, %sw.bb9, %sw.bb
  %retval.0 = phi i8 [ 1, %if.then36 ], [ 1, %if.then67 ], [ 0, %sw.bb13 ], [ 0, %sw.bb9 ], [ 0, %sw.bb ], [ 0, %if.else ], [ 0, %if.then ], [ %inexact.2, %if.else98 ], [ %inexact.2, %if.then95 ], !dbg !1072
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !1163
  ret i8 %retval.0, !dbg !1163
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @do_multiply(%struct.real_value* %r, %struct.real_value* %a, %struct.real_value* %b) unnamed_addr #5 !dbg !1164 {
entry:
  %u = alloca %struct.real_value, align 8
  %t = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1168, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1169, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !1170, metadata !DIExpression()), !dbg !1191
  %0 = bitcast %struct.real_value* %u to i8*, !dbg !1192
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !1192
  %1 = bitcast %struct.real_value* %t to i8*, !dbg !1192
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !1192
  %2 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 0, !dbg !1193
  %bf.load = load i32, i32* %2, align 8, !dbg !1193
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 0, !dbg !1194
  %bf.load1 = load i32, i32* %3, align 8, !dbg !1194
  %bf.lshr3 = xor i32 %bf.load, %bf.load1, !dbg !1195
  %bf.clear2 = lshr i32 %bf.lshr3, 3, !dbg !1195
  %xor = and i32 %bf.clear2, 1, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1177, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 0, metadata !1178, metadata !DIExpression()), !dbg !1191
  %bf.clear5 = shl i32 %bf.load, 2, !dbg !1196
  %shl = and i32 %bf.clear5, 12, !dbg !1196
  %bf.clear7 = and i32 %bf.load1, 3, !dbg !1196
  %or = or i32 %shl, %bf.clear7, !dbg !1196
  switch i32 %or, label %sw.default1 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 3, label %sw.bb8
    i32 7, label %sw.bb8
    i32 11, label %sw.bb8
    i32 15, label %sw.bb8
    i32 12, label %sw.bb11
    i32 13, label %sw.bb11
    i32 14, label %sw.bb11
    i32 2, label %sw.bb17
    i32 8, label %sw.bb17
    i32 10, label %sw.bb18
    i32 6, label %sw.bb18
    i32 9, label %sw.bb18
    i32 5, label %sw.epilog
  ], !dbg !1197

sw.bb:                                            ; preds = %entry, %entry, %entry
  tail call fastcc void @get_zero(%struct.real_value* %r, i32 %xor) #7, !dbg !1198
  br label %cleanup99, !dbg !1200

sw.bb8:                                           ; preds = %entry, %entry, %entry, %entry
  %4 = bitcast %struct.real_value* %r to i8*, !dbg !1201
  %5 = bitcast %struct.real_value* %b to i8*, !dbg !1201
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 32, i1 false), !dbg !1201
  %6 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1202
  %bf.load9 = load i32, i32* %6, align 8, !dbg !1203
  %bf.shl = shl nuw nsw i32 %xor, 3, !dbg !1203
  %bf.clear10 = and i32 %bf.load9, -9, !dbg !1203
  %bf.set = or i32 %bf.clear10, %bf.shl, !dbg !1203
  store i32 %bf.set, i32* %6, align 8, !dbg !1203
  br label %cleanup99, !dbg !1204

sw.bb11:                                          ; preds = %entry, %entry, %entry
  %7 = bitcast %struct.real_value* %r to i8*, !dbg !1205
  %8 = bitcast %struct.real_value* %a to i8*, !dbg !1205
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 32, i1 false), !dbg !1205
  %9 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1206
  %bf.load12 = load i32, i32* %9, align 8, !dbg !1207
  %bf.shl14 = shl nuw nsw i32 %xor, 3, !dbg !1207
  %bf.clear15 = and i32 %bf.load12, -9, !dbg !1207
  %bf.set16 = or i32 %bf.clear15, %bf.shl14, !dbg !1207
  store i32 %bf.set16, i32* %9, align 8, !dbg !1207
  br label %cleanup99, !dbg !1208

sw.bb17:                                          ; preds = %entry, %entry
  tail call fastcc void @get_canonical_qnan(%struct.real_value* %r, i32 %xor) #7, !dbg !1209
  br label %cleanup99, !dbg !1210

sw.bb18:                                          ; preds = %entry, %entry, %entry
  tail call fastcc void @get_inf(%struct.real_value* %r, i32 %xor) #7, !dbg !1211
  br label %cleanup99, !dbg !1212

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry
  %cmp = icmp eq %struct.real_value* %r, %a, !dbg !1213
  %cmp19 = icmp eq %struct.real_value* %r, %b, !dbg !1215
  %or.cond = or i1 %cmp, %cmp19, !dbg !1216
  %rr.0 = select i1 %or.cond, %struct.real_value* %t, %struct.real_value* %r, !dbg !1216
  call void @llvm.dbg.value(metadata %struct.real_value* %rr.0, metadata !1173, metadata !DIExpression()), !dbg !1191
  call fastcc void @get_zero(%struct.real_value* %rr.0, i32 0) #7, !dbg !1217
  call void @llvm.dbg.value(metadata i32 0, metadata !1174, metadata !DIExpression()), !dbg !1191
  %10 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 0, !dbg !1218
  br label %for.cond, !dbg !1219

for.cond:                                         ; preds = %for.inc87, %sw.epilog
  %inexact.0 = phi i8 [ 0, %sw.epilog ], [ %inexact.3, %for.inc87 ], !dbg !1220
  %i.0 = phi i32 [ 0, %sw.epilog ], [ %inc88, %for.inc87 ], !dbg !1221
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1174, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %inexact.0, metadata !1178, metadata !DIExpression()), !dbg !1191
  %exitcond14 = icmp eq i32 %i.0, 6, !dbg !1222
  br i1 %exitcond14, label %for.end89, label %for.body, !dbg !1223

for.body:                                         ; preds = %for.cond
  %div = lshr i32 %i.0, 1, !dbg !1224
  %idxprom = zext i32 %div to i64, !dbg !1225
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %idxprom, !dbg !1225
  %11 = load i64, i64* %arrayidx, align 8, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %11, metadata !1179, metadata !DIExpression()), !dbg !1226
  %and = and i32 %i.0, 1, !dbg !1227
  %tobool = icmp eq i32 %and, 0, !dbg !1227
  %shr = lshr i64 %11, 32, !dbg !1229
  %and23 = and i64 %11, 4294967295, !dbg !1229
  %ai.0 = select i1 %tobool, i64 %and23, i64 %shr, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %ai.0, metadata !1179, metadata !DIExpression()), !dbg !1226
  %cmp25 = icmp eq i64 %ai.0, 0, !dbg !1230
  br i1 %cmp25, label %cleanup84, label %for.cond28.preheader, !dbg !1232

for.cond28.preheader:                             ; preds = %for.body
  %sub34 = shl i32 %i.0, 5, !dbg !1218
  %mul4 = add nsw i32 %sub34, -160, !dbg !1218
  br label %for.cond28, !dbg !1233

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc82
  %indvars.iv9 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next10, %for.inc82 ], !dbg !1220
  %indvars.iv = phi i1 [ false, %for.cond28.preheader ], [ %indvars.iv.next, %for.inc82 ], !dbg !1220
  %inexact.1 = phi i8 [ %inexact.0, %for.cond28.preheader ], [ %inexact.2, %for.inc82 ], !dbg !1220
  %j.0 = phi i32 [ 0, %for.cond28.preheader ], [ %inc, %for.inc82 ], !dbg !1234
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1175, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %inexact.1, metadata !1178, metadata !DIExpression()), !dbg !1191
  %exitcond = icmp eq i64 %indvars.iv9, 2, !dbg !1235
  br i1 %exitcond, label %cleanup84.loopexit, label %for.body30, !dbg !1233

for.body30:                                       ; preds = %for.cond28
  %bf.load31 = load i32, i32* %2, align 8, !dbg !1236
  %sub = ashr i32 %bf.load31, 6, !dbg !1236
  %sub35 = add i32 %sub, %mul4, !dbg !1237
  %bf.load36 = load i32, i32* %3, align 8, !dbg !1238
  %sub39 = ashr i32 %bf.load36, 6, !dbg !1238
  %sub40 = shl i32 %j.0, 5, !dbg !1239
  %mul415 = add nsw i32 %sub40, -32, !dbg !1240
  %sub42 = add i32 %sub39, %mul415, !dbg !1240
  %add = add i32 %sub35, %sub42, !dbg !1241
  call void @llvm.dbg.value(metadata i32 %add, metadata !1183, metadata !DIExpression()), !dbg !1218
  %cmp43 = icmp sgt i32 %add, 33554431, !dbg !1242
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !1244

if.then44:                                        ; preds = %for.body30
  call fastcc void @get_inf(%struct.real_value* %r, i32 %xor) #7, !dbg !1245
  br label %cleanup, !dbg !1247

if.end45:                                         ; preds = %for.body30
  %cmp46 = icmp slt i32 %add, -33554431, !dbg !1248
  br i1 %cmp46, label %cleanup, label %if.end48, !dbg !1250

if.end48:                                         ; preds = %if.end45
  %call = call i8* @memset(i8* nonnull %0, i32 0, i64 32) #6, !dbg !1251
  %bf.load49 = load i32, i32* %10, align 8, !dbg !1252
  %bf.shl55 = shl i32 %add, 6, !dbg !1253
  %bf.set51 = and i32 %bf.load49, 60, !dbg !1253
  %bf.clear56 = or i32 %bf.set51, %bf.shl55, !dbg !1253
  %bf.set57 = or i32 %bf.clear56, 1, !dbg !1253
  store i32 %bf.set57, i32* %10, align 8, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1176, metadata !DIExpression()), !dbg !1191
  br label %for.cond58, !dbg !1254

for.cond58:                                       ; preds = %for.body60, %if.end48
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.body60 ], [ %indvars.iv9, %if.end48 ], !dbg !1255
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !1176, metadata !DIExpression()), !dbg !1191
  %cmp59 = icmp ult i64 %indvars.iv11, 6, !dbg !1256
  br i1 %cmp59, label %for.body60, label %for.end, !dbg !1257

for.body60:                                       ; preds = %for.cond58
  %12 = lshr i64 %indvars.iv11, 1, !dbg !1258
  %arrayidx64 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 1, i64 %12, !dbg !1259
  %13 = load i64, i64* %arrayidx64, align 8, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %13, metadata !1187, metadata !DIExpression()), !dbg !1260
  %shr68 = lshr i64 %13, 32, !dbg !1261
  %and70 = and i64 %13, 4294967295, !dbg !1261
  %bi.0 = select i1 %indvars.iv, i64 %shr68, i64 %and70, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %bi.0, metadata !1187, metadata !DIExpression()), !dbg !1260
  %mul72 = mul nuw i64 %ai.0, %bi.0, !dbg !1262
  %arrayidx76 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 1, i64 %12, !dbg !1263
  store i64 %mul72, i64* %arrayidx76, align 8, !dbg !1264
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 2, !dbg !1265
  call void @llvm.dbg.value(metadata i32 undef, metadata !1176, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1191
  br label %for.cond58, !dbg !1266, !llvm.loop !1267

for.end:                                          ; preds = %for.cond58
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !1171, metadata !DIExpression(DW_OP_deref)), !dbg !1191
  call fastcc void @normalize(%struct.real_value* nonnull %u) #7, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !1171, metadata !DIExpression(DW_OP_deref)), !dbg !1191
  %call78 = call fastcc zeroext i8 @do_add(%struct.real_value* %rr.0, %struct.real_value* %rr.0, %struct.real_value* nonnull %u, i32 0) #7, !dbg !1270
  %or806 = or i8 %inexact.1, %call78, !dbg !1271
  call void @llvm.dbg.value(metadata i8 %or806, metadata !1178, metadata !DIExpression()), !dbg !1191
  br label %cleanup, !dbg !1272

cleanup:                                          ; preds = %if.end45, %for.end, %if.then44
  %inexact.2 = phi i8 [ %inexact.1, %if.then44 ], [ %or806, %for.end ], [ 1, %if.end45 ], !dbg !1191
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then44 ], [ 0, %for.end ], [ 8, %if.end45 ]
  call void @llvm.dbg.value(metadata i8 %inexact.2, metadata !1178, metadata !DIExpression()), !dbg !1191
  switch i32 %cleanup.dest.slot.0, label %cleanup84.loopexit [
    i32 0, label %for.inc82
    i32 8, label %for.inc82
  ]

for.inc82:                                        ; preds = %cleanup, %cleanup
  %inc = add nuw nsw i32 %j.0, 1, !dbg !1273
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1175, metadata !DIExpression()), !dbg !1191
  %indvars.iv.next = xor i1 %indvars.iv, true, !dbg !1274
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !1274
  br label %for.cond28, !dbg !1274, !llvm.loop !1275

cleanup84.loopexit:                               ; preds = %for.cond28, %cleanup
  %inexact.3.ph = phi i8 [ %inexact.1, %for.cond28 ], [ %inexact.2, %cleanup ]
  %cleanup.dest.slot.1.ph = phi i32 [ 0, %for.cond28 ], [ %cleanup.dest.slot.0, %cleanup ]
  br label %cleanup84

cleanup84:                                        ; preds = %cleanup84.loopexit, %for.body
  %inexact.3 = phi i8 [ %inexact.0, %for.body ], [ %inexact.3.ph, %cleanup84.loopexit ], !dbg !1220
  %cleanup.dest.slot.1 = phi i32 [ 5, %for.body ], [ %cleanup.dest.slot.1.ph, %cleanup84.loopexit ]
  call void @llvm.dbg.value(metadata i8 %inexact.3, metadata !1178, metadata !DIExpression()), !dbg !1191
  switch i32 %cleanup.dest.slot.1, label %cleanup99.loopexit [
    i32 0, label %for.inc87
    i32 5, label %for.inc87
  ]

for.inc87:                                        ; preds = %cleanup84, %cleanup84
  %inc88 = add nuw nsw i32 %i.0, 1, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %inc88, metadata !1174, metadata !DIExpression()), !dbg !1191
  br label %for.cond, !dbg !1278, !llvm.loop !1279

for.end89:                                        ; preds = %for.cond
  %inexact.0.lcssa = phi i8 [ %inexact.0, %for.cond ], !dbg !1220
  call void @llvm.dbg.value(metadata i8 %inexact.0.lcssa, metadata !1178, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %inexact.0.lcssa, metadata !1178, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %inexact.0.lcssa, metadata !1178, metadata !DIExpression()), !dbg !1191
  %14 = getelementptr inbounds %struct.real_value, %struct.real_value* %rr.0, i64 0, i32 0, !dbg !1281
  %bf.load90 = load i32, i32* %14, align 8, !dbg !1282
  %bf.shl92 = shl nuw nsw i32 %xor, 3, !dbg !1282
  %bf.clear93 = and i32 %bf.load90, -9, !dbg !1282
  %bf.set94 = or i32 %bf.clear93, %bf.shl92, !dbg !1282
  store i32 %bf.set94, i32* %14, align 8, !dbg !1282
  %cmp95 = icmp eq %struct.real_value* %rr.0, %r, !dbg !1283
  br i1 %cmp95, label %cleanup99, label %if.then97, !dbg !1285

if.then97:                                        ; preds = %for.end89
  %15 = bitcast %struct.real_value* %r to i8*, !dbg !1286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* nonnull align 8 %1, i64 32, i1 false), !dbg !1286
  br label %cleanup99, !dbg !1287

cleanup99.loopexit:                               ; preds = %cleanup84
  br label %cleanup99, !dbg !1288

cleanup99:                                        ; preds = %cleanup99.loopexit, %for.end89, %if.then97, %sw.bb18, %sw.bb17, %sw.bb11, %sw.bb8, %sw.bb
  %retval.4 = phi i8 [ 0, %sw.bb18 ], [ 0, %sw.bb17 ], [ 0, %sw.bb11 ], [ 0, %sw.bb8 ], [ 0, %sw.bb ], [ %inexact.0.lcssa, %if.then97 ], [ %inexact.0.lcssa, %for.end89 ], [ 1, %cleanup99.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !1288
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !1288
  ret i8 %retval.4, !dbg !1288
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @do_divide(%struct.real_value* %r, %struct.real_value* %a, %struct.real_value* %b) unnamed_addr #5 !dbg !1289 {
entry:
  %t = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1291, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1292, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !1293, metadata !DIExpression()), !dbg !1299
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 0, !dbg !1300
  %bf.load = load i32, i32* %0, align 8, !dbg !1300
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 0, !dbg !1301
  %bf.load1 = load i32, i32* %1, align 8, !dbg !1301
  %bf.lshr3 = xor i32 %bf.load, %bf.load1, !dbg !1302
  %bf.clear2 = lshr i32 %bf.lshr3, 3, !dbg !1302
  %xor = and i32 %bf.clear2, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1295, metadata !DIExpression()), !dbg !1299
  %2 = bitcast %struct.real_value* %t to i8*, !dbg !1303
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #8, !dbg !1303
  %bf.clear5 = shl i32 %bf.load, 2, !dbg !1304
  %shl = and i32 %bf.clear5, 12, !dbg !1304
  %bf.clear7 = and i32 %bf.load1, 3, !dbg !1304
  %or = or i32 %shl, %bf.clear7, !dbg !1304
  switch i32 %or, label %sw.default1 [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb8
    i32 6, label %sw.bb8
    i32 4, label %sw.bb9
    i32 8, label %sw.bb9
    i32 3, label %sw.bb10
    i32 7, label %sw.bb10
    i32 11, label %sw.bb10
    i32 15, label %sw.bb10
    i32 12, label %sw.bb13
    i32 13, label %sw.bb13
    i32 14, label %sw.bb13
    i32 9, label %sw.bb19
    i32 5, label %sw.epilog
  ], !dbg !1305

sw.bb:                                            ; preds = %entry, %entry
  tail call fastcc void @get_canonical_qnan(%struct.real_value* %r, i32 %xor) #7, !dbg !1306
  br label %cleanup, !dbg !1308

sw.bb8:                                           ; preds = %entry, %entry, %entry
  tail call fastcc void @get_zero(%struct.real_value* %r, i32 %xor) #7, !dbg !1309
  br label %cleanup, !dbg !1310

sw.bb9:                                           ; preds = %entry, %entry
  tail call fastcc void @get_inf(%struct.real_value* %r, i32 %xor) #7, !dbg !1311
  br label %cleanup, !dbg !1312

sw.bb10:                                          ; preds = %entry, %entry, %entry, %entry
  %3 = bitcast %struct.real_value* %r to i8*, !dbg !1313
  %4 = bitcast %struct.real_value* %b to i8*, !dbg !1313
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 32, i1 false), !dbg !1313
  %5 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1314
  %bf.load11 = load i32, i32* %5, align 8, !dbg !1315
  %bf.shl = shl nuw nsw i32 %xor, 3, !dbg !1315
  %bf.clear12 = and i32 %bf.load11, -9, !dbg !1315
  %bf.set = or i32 %bf.clear12, %bf.shl, !dbg !1315
  store i32 %bf.set, i32* %5, align 8, !dbg !1315
  br label %cleanup, !dbg !1316

sw.bb13:                                          ; preds = %entry, %entry, %entry
  %6 = bitcast %struct.real_value* %r to i8*, !dbg !1317
  %7 = bitcast %struct.real_value* %a to i8*, !dbg !1317
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 32, i1 false), !dbg !1317
  %8 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1318
  %bf.load14 = load i32, i32* %8, align 8, !dbg !1319
  %bf.shl16 = shl nuw nsw i32 %xor, 3, !dbg !1319
  %bf.clear17 = and i32 %bf.load14, -9, !dbg !1319
  %bf.set18 = or i32 %bf.clear17, %bf.shl16, !dbg !1319
  store i32 %bf.set18, i32* %8, align 8, !dbg !1319
  br label %cleanup, !dbg !1320

sw.bb19:                                          ; preds = %entry
  tail call fastcc void @get_inf(%struct.real_value* %r, i32 %xor) #7, !dbg !1321
  br label %cleanup, !dbg !1322

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry
  %cmp = icmp eq %struct.real_value* %r, %a, !dbg !1323
  %cmp20 = icmp eq %struct.real_value* %r, %b, !dbg !1325
  %or.cond = or i1 %cmp, %cmp20, !dbg !1326
  %rr.0 = select i1 %or.cond, %struct.real_value* %t, %struct.real_value* %r, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.real_value* %rr.0, metadata !1297, metadata !DIExpression()), !dbg !1299
  call fastcc void @get_zero(%struct.real_value* %rr.0, i32 0) #7, !dbg !1327
  %9 = getelementptr inbounds %struct.real_value, %struct.real_value* %rr.0, i64 0, i32 0, !dbg !1328
  %bf.load21 = load i32, i32* %9, align 8, !dbg !1329
  %bf.shl26 = shl nuw nsw i32 %xor, 3, !dbg !1330
  %bf.set23 = and i32 %bf.load21, -12, !dbg !1330
  %bf.clear27 = or i32 %bf.set23, %bf.shl26, !dbg !1330
  %bf.set28 = or i32 %bf.clear27, 1, !dbg !1330
  store i32 %bf.set28, i32* %9, align 8, !dbg !1330
  %bf.load29 = load i32, i32* %0, align 8, !dbg !1331
  %sub = ashr i32 %bf.load29, 6, !dbg !1331
  %bf.load32 = load i32, i32* %1, align 8, !dbg !1332
  %sub35 = ashr i32 %bf.load32, 6, !dbg !1332
  %sub36 = sub nsw i32 %sub, %sub35, !dbg !1333
  %add = add nsw i32 %sub36, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i32 %add, metadata !1294, metadata !DIExpression()), !dbg !1299
  %cmp37 = icmp sgt i32 %sub36, 33554430, !dbg !1335
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !1337

if.then38:                                        ; preds = %sw.epilog
  call fastcc void @get_inf(%struct.real_value* %r, i32 %xor) #7, !dbg !1338
  br label %cleanup, !dbg !1340

if.end39:                                         ; preds = %sw.epilog
  %cmp40 = icmp slt i32 %add, -33554431, !dbg !1341
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !1343

if.then41:                                        ; preds = %if.end39
  call fastcc void @get_zero(%struct.real_value* %r, i32 %xor) #7, !dbg !1344
  br label %cleanup, !dbg !1346

if.end42:                                         ; preds = %if.end39
  %bf.shl45 = shl i32 %add, 6, !dbg !1347
  %bf.clear46 = and i32 %bf.set28, 61, !dbg !1347
  %bf.set47 = or i32 %bf.clear46, %bf.shl45, !dbg !1347
  store i32 %bf.set47, i32* %9, align 8, !dbg !1347
  %call = call fastcc zeroext i8 @div_significands(%struct.real_value* %rr.0, %struct.real_value* %a, %struct.real_value* %b) #7, !dbg !1348
  call void @llvm.dbg.value(metadata i8 %call, metadata !1298, metadata !DIExpression()), !dbg !1299
  call fastcc void @normalize(%struct.real_value* %rr.0) #7, !dbg !1349
  %conv = zext i8 %call to i64, !dbg !1350
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %rr.0, i64 0, i32 1, i64 0, !dbg !1351
  %10 = load i64, i64* %arrayidx, align 8, !dbg !1352
  %or48 = or i64 %10, %conv, !dbg !1352
  store i64 %or48, i64* %arrayidx, align 8, !dbg !1352
  %cmp49 = icmp eq %struct.real_value* %rr.0, %r, !dbg !1353
  br i1 %cmp49, label %cleanup, label %if.then51, !dbg !1355

if.then51:                                        ; preds = %if.end42
  %11 = bitcast %struct.real_value* %r to i8*, !dbg !1356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* nonnull align 8 %2, i64 32, i1 false), !dbg !1356
  br label %cleanup, !dbg !1357

cleanup:                                          ; preds = %if.end42, %if.then51, %if.then41, %if.then38, %sw.bb19, %sw.bb13, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb
  %retval.0 = phi i8 [ 1, %if.then38 ], [ 1, %if.then41 ], [ 0, %sw.bb19 ], [ 0, %sw.bb13 ], [ 0, %sw.bb10 ], [ 0, %sw.bb9 ], [ 0, %sw.bb8 ], [ 0, %sw.bb ], [ %call, %if.then51 ], [ %call, %if.end42 ], !dbg !1299
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #8, !dbg !1358
  ret i8 %retval.0, !dbg !1358
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_compare(%struct.real_value* %a, %struct.real_value* %b, i32 %nan_result) unnamed_addr #5 !dbg !1359 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1363, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !1364, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 %nan_result, metadata !1365, metadata !DIExpression()), !dbg !1367
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 0, !dbg !1368
  %bf.load = load i32, i32* %0, align 8, !dbg !1368
  %bf.clear = shl i32 %bf.load, 2, !dbg !1368
  %shl = and i32 %bf.clear, 12, !dbg !1368
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 0, !dbg !1368
  %bf.load1 = load i32, i32* %1, align 8, !dbg !1368
  %bf.clear2 = and i32 %bf.load1, 3, !dbg !1368
  %or = or i32 %shl, %bf.clear2, !dbg !1368
  switch i32 %or, label %sw.default1 [
    i32 0, label %cleanup
    i32 4, label %sw.bb3
    i32 8, label %sw.bb6
    i32 9, label %sw.bb6
    i32 10, label %sw.bb11
    i32 1, label %sw.bb20
    i32 2, label %sw.bb28
    i32 6, label %sw.bb28
    i32 3, label %sw.bb34
    i32 7, label %sw.bb34
    i32 11, label %sw.bb34
    i32 15, label %sw.bb34
    i32 12, label %sw.bb34
    i32 13, label %sw.bb34
    i32 14, label %sw.bb34
    i32 5, label %sw.epilog
  ], !dbg !1369

sw.bb3:                                           ; preds = %entry
  %bf.clear5 = and i32 %bf.load, 4, !dbg !1370
  %tobool = icmp eq i32 %bf.clear5, 0, !dbg !1373
  br i1 %tobool, label %sw.bb6, label %if.then, !dbg !1374

if.then:                                          ; preds = %sw.bb3
  %call = tail call i32 @decimal_do_compare(%struct.real_value* %a, %struct.real_value* %b, i32 %nan_result) #6, !dbg !1375
  br label %cleanup, !dbg !1376

sw.bb6:                                           ; preds = %sw.bb3, %entry, %entry
  %bf.clear9 = and i32 %bf.load, 8, !dbg !1377
  %tobool10 = icmp eq i32 %bf.clear9, 0, !dbg !1378
  %cond = select i1 %tobool10, i32 1, i32 -1, !dbg !1378
  br label %cleanup, !dbg !1379

sw.bb11:                                          ; preds = %entry
  %bf.lshr13 = lshr i32 %bf.load, 3, !dbg !1380
  %bf.clear14 = and i32 %bf.lshr13, 1, !dbg !1380
  %bf.lshr16 = lshr i32 %bf.load1, 3, !dbg !1381
  %bf.clear17 = and i32 %bf.lshr16, 1, !dbg !1381
  %sub19 = sub nsw i32 %bf.clear17, %bf.clear14, !dbg !1382
  br label %cleanup, !dbg !1383

sw.bb20:                                          ; preds = %entry
  %bf.clear23 = and i32 %bf.load1, 4, !dbg !1384
  %tobool24 = icmp eq i32 %bf.clear23, 0, !dbg !1386
  br i1 %tobool24, label %sw.bb28, label %if.then25, !dbg !1387

if.then25:                                        ; preds = %sw.bb20
  %call26 = tail call i32 @decimal_do_compare(%struct.real_value* %a, %struct.real_value* %b, i32 %nan_result) #6, !dbg !1388
  br label %cleanup, !dbg !1389

sw.bb28:                                          ; preds = %sw.bb20, %entry, %entry
  %bf.clear31 = and i32 %bf.load1, 8, !dbg !1390
  %tobool32 = icmp eq i32 %bf.clear31, 0, !dbg !1391
  %cond33 = select i1 %tobool32, i32 -1, i32 1, !dbg !1391
  br label %cleanup, !dbg !1392

sw.bb34:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %cleanup, !dbg !1393

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry
  %bf.lshr362 = xor i32 %bf.load, %bf.load1, !dbg !1394
  %2 = and i32 %bf.lshr362, 8, !dbg !1394
  %cmp = icmp eq i32 %2, 0, !dbg !1394
  br i1 %cmp, label %if.end51, label %if.then41, !dbg !1396

if.then41:                                        ; preds = %sw.epilog
  %bf.lshr43 = lshr i32 %bf.load, 3, !dbg !1397
  %bf.clear44 = and i32 %bf.lshr43, 1, !dbg !1397
  %bf.lshr47 = lshr i32 %bf.load1, 3, !dbg !1398
  %bf.clear48 = and i32 %bf.lshr47, 1, !dbg !1398
  %sub50 = sub nsw i32 %bf.clear48, %bf.clear44, !dbg !1399
  br label %cleanup, !dbg !1400

if.end51:                                         ; preds = %sw.epilog
  %bf.clear54 = and i32 %bf.load, 4, !dbg !1401
  %tobool55 = icmp eq i32 %bf.clear54, 0, !dbg !1403
  br i1 %tobool55, label %lor.lhs.false, label %if.then60, !dbg !1404

lor.lhs.false:                                    ; preds = %if.end51
  %bf.clear58 = and i32 %bf.load1, 4, !dbg !1405
  %tobool59 = icmp eq i32 %bf.clear58, 0, !dbg !1406
  br i1 %tobool59, label %if.end62, label %if.then60, !dbg !1407

if.then60:                                        ; preds = %lor.lhs.false, %if.end51
  %call61 = tail call i32 @decimal_do_compare(%struct.real_value* %a, %struct.real_value* %b, i32 %nan_result) #6, !dbg !1408
  br label %cleanup, !dbg !1409

if.end62:                                         ; preds = %lor.lhs.false
  %sub65 = ashr i32 %bf.load, 6, !dbg !1410
  %sub69 = ashr i32 %bf.load1, 6, !dbg !1412
  %cmp70 = icmp sgt i32 %sub65, %sub69, !dbg !1413
  br i1 %cmp70, label %if.end85, label %if.else, !dbg !1414

if.else:                                          ; preds = %if.end62
  %cmp80 = icmp slt i32 %sub65, %sub69, !dbg !1415
  br i1 %cmp80, label %if.end85, label %if.else82, !dbg !1417

if.else82:                                        ; preds = %if.else
  %call83 = tail call fastcc i32 @cmp_significands(%struct.real_value* %a, %struct.real_value* %b) #7, !dbg !1418
  call void @llvm.dbg.value(metadata i32 %call83, metadata !1366, metadata !DIExpression()), !dbg !1367
  %bf.load86.pre = load i32, i32* %0, align 8, !dbg !1419
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.else, %if.end62
  %bf.load86 = phi i32 [ %bf.load, %if.end62 ], [ %bf.load86.pre, %if.else82 ], [ %bf.load, %if.else ], !dbg !1419
  %ret.1 = phi i32 [ 1, %if.end62 ], [ %call83, %if.else82 ], [ -1, %if.else ], !dbg !1420
  call void @llvm.dbg.value(metadata i32 %ret.1, metadata !1366, metadata !DIExpression()), !dbg !1367
  %bf.clear88 = and i32 %bf.load86, 8, !dbg !1419
  %tobool89 = icmp eq i32 %bf.clear88, 0, !dbg !1421
  %sub90 = sub nsw i32 0, %ret.1, !dbg !1421
  %cond91 = select i1 %tobool89, i32 %ret.1, i32 %sub90, !dbg !1421
  br label %cleanup, !dbg !1421

cleanup:                                          ; preds = %if.end85, %entry, %if.then60, %if.then41, %sw.bb34, %sw.bb28, %if.then25, %sw.bb11, %sw.bb6, %if.then
  %retval.0 = phi i32 [ %sub50, %if.then41 ], [ %call61, %if.then60 ], [ %nan_result, %sw.bb34 ], [ %cond33, %sw.bb28 ], [ %call26, %if.then25 ], [ %sub19, %sw.bb11 ], [ %cond, %sw.bb6 ], [ %call, %if.then ], [ 0, %entry ], [ %cond91, %if.end85 ], !dbg !1367
  ret i32 %retval.0, !dbg !1422
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_fix_trunc(%struct.real_value* %r, %struct.real_value* %a) unnamed_addr #5 !dbg !1423 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1427, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1428, metadata !DIExpression()), !dbg !1429
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !1430
  %1 = bitcast %struct.real_value* %a to i8*, !dbg !1430
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 32, i1 false), !dbg !1430
  %2 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1431
  %bf.load = load i32, i32* %2, align 8, !dbg !1431
  %bf.clear = and i32 %bf.load, 3, !dbg !1431
  %switch = icmp eq i32 %bf.clear, 1, !dbg !1432
  br i1 %switch, label %sw.bb1, label %sw.epilog, !dbg !1432

sw.bb1:                                           ; preds = %entry
  %bf.clear3 = and i32 %bf.load, 4, !dbg !1433
  %tobool = icmp eq i32 %bf.clear3, 0, !dbg !1436
  br i1 %tobool, label %if.end, label %if.then, !dbg !1437

if.then:                                          ; preds = %sw.bb1
  tail call void @decimal_do_fix_trunc(%struct.real_value* %r, %struct.real_value* %a) #6, !dbg !1438
  br label %sw.epilog, !dbg !1440

if.end:                                           ; preds = %sw.bb1
  %cmp = icmp slt i32 %bf.load, 64, !dbg !1441
  br i1 %cmp, label %if.then6, label %if.else, !dbg !1443

if.then6:                                         ; preds = %if.end
  %bf.lshr8 = lshr i32 %bf.load, 3, !dbg !1444
  %bf.clear9 = and i32 %bf.lshr8, 1, !dbg !1444
  tail call fastcc void @get_zero(%struct.real_value* %r, i32 %bf.clear9) #7, !dbg !1445
  br label %sw.epilog, !dbg !1445

if.else:                                          ; preds = %if.end
  %cmp14 = icmp slt i32 %bf.load, 12288, !dbg !1446
  br i1 %cmp14, label %if.then15, label %sw.epilog, !dbg !1448

if.then15:                                        ; preds = %if.else
  %sub19 = ashr i32 %bf.load, 6, !dbg !1449
  %sub20 = sub nsw i32 192, %sub19, !dbg !1450
  tail call fastcc void @clear_significand_below(%struct.real_value* %r, i32 %sub20) #7, !dbg !1451
  br label %sw.epilog, !dbg !1451

sw.epilog:                                        ; preds = %if.then6, %if.then15, %if.else, %entry, %if.then
  ret void, !dbg !1452
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @real_arithmetic2(%struct.real_value* noalias sret %agg.result, i32 %icode, %struct.real_value* %op0, %struct.real_value* %op1) local_unnamed_addr #5 !dbg !1453 {
entry:
  call void @llvm.dbg.value(metadata i32 %icode, metadata !1457, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata %struct.real_value* %op0, metadata !1458, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata %struct.real_value* %op1, metadata !1459, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.declare(metadata %struct.real_value* %agg.result, metadata !1460, metadata !DIExpression()), !dbg !1462
  %call = tail call zeroext i8 @real_arithmetic(%struct.real_value* %agg.result, i32 %icode, %struct.real_value* %op0, %struct.real_value* %op1) #7, !dbg !1463
  ret void, !dbg !1464
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_compare(i32 %icode, %struct.real_value* %op0, %struct.real_value* %op1) local_unnamed_addr #5 !dbg !1465 {
entry:
  call void @llvm.dbg.value(metadata i32 %icode, metadata !1469, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata %struct.real_value* %op0, metadata !1470, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata %struct.real_value* %op1, metadata !1471, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %icode, metadata !1472, metadata !DIExpression()), !dbg !1473
  switch i32 %icode, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb2
    i32 99, label %sw.bb7
    i32 100, label %sw.bb12
    i32 101, label %sw.bb17
    i32 102, label %sw.bb22
    i32 103, label %sw.bb27
    i32 104, label %sw.bb35
    i32 105, label %sw.bb45
    i32 106, label %sw.bb50
    i32 107, label %sw.bb55
    i32 108, label %sw.bb60
    i32 109, label %sw.bb65
    i32 110, label %sw.bb70
  ], !dbg !1474

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 1) #7, !dbg !1475
  %call.lobit = lshr i32 %call, 31, !dbg !1475
  %0 = trunc i32 %call.lobit to i8, !dbg !1475
  br label %cleanup, !dbg !1477

sw.bb2:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 1) #7, !dbg !1478
  %cmp4 = icmp slt i32 %call3, 1, !dbg !1479
  %conv6 = zext i1 %cmp4 to i8, !dbg !1478
  br label %cleanup, !dbg !1480

sw.bb7:                                           ; preds = %entry
  %call8 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 -1) #7, !dbg !1481
  %cmp9 = icmp sgt i32 %call8, 0, !dbg !1482
  %conv11 = zext i1 %cmp9 to i8, !dbg !1481
  br label %cleanup, !dbg !1483

sw.bb12:                                          ; preds = %entry
  %call13 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 -1) #7, !dbg !1484
  %call13.lobit = lshr i32 %call13, 31, !dbg !1484
  %1 = trunc i32 %call13.lobit to i8, !dbg !1484
  %.not2 = xor i8 %1, 1, !dbg !1484
  br label %cleanup, !dbg !1485

sw.bb17:                                          ; preds = %entry
  %call18 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 -1) #7, !dbg !1486
  %cmp19 = icmp eq i32 %call18, 0, !dbg !1487
  %conv21 = zext i1 %cmp19 to i8, !dbg !1486
  br label %cleanup, !dbg !1488

sw.bb22:                                          ; preds = %entry
  %call23 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 -1) #7, !dbg !1489
  %cmp24 = icmp ne i32 %call23, 0, !dbg !1490
  %conv26 = zext i1 %cmp24 to i8, !dbg !1489
  br label %cleanup, !dbg !1491

sw.bb27:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.real_value, %struct.real_value* %op0, i64 0, i32 0, !dbg !1492
  %bf.load = load i32, i32* %2, align 8, !dbg !1492
  %bf.clear = and i32 %bf.load, 3, !dbg !1492
  %cmp28 = icmp eq i32 %bf.clear, 3, !dbg !1493
  br i1 %cmp28, label %lor.end, label %lor.rhs, !dbg !1494

lor.rhs:                                          ; preds = %sw.bb27
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %op1, i64 0, i32 0, !dbg !1495
  %bf.load30 = load i32, i32* %3, align 8, !dbg !1495
  %bf.clear31 = and i32 %bf.load30, 3, !dbg !1495
  %cmp32 = icmp eq i32 %bf.clear31, 3, !dbg !1496
  %phitmp1 = zext i1 %cmp32 to i8, !dbg !1494
  br label %lor.end, !dbg !1494

lor.end:                                          ; preds = %lor.rhs, %sw.bb27
  %4 = phi i8 [ 1, %sw.bb27 ], [ %phitmp1, %lor.rhs ]
  br label %cleanup, !dbg !1497

sw.bb35:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.real_value, %struct.real_value* %op0, i64 0, i32 0, !dbg !1498
  %bf.load36 = load i32, i32* %5, align 8, !dbg !1498
  %bf.clear37 = and i32 %bf.load36, 3, !dbg !1498
  %cmp38 = icmp eq i32 %bf.clear37, 3, !dbg !1499
  br i1 %cmp38, label %land.end, label %land.rhs, !dbg !1500

land.rhs:                                         ; preds = %sw.bb35
  %6 = getelementptr inbounds %struct.real_value, %struct.real_value* %op1, i64 0, i32 0, !dbg !1501
  %bf.load40 = load i32, i32* %6, align 8, !dbg !1501
  %bf.clear41 = and i32 %bf.load40, 3, !dbg !1501
  %cmp42 = icmp ne i32 %bf.clear41, 3, !dbg !1502
  %phitmp = zext i1 %cmp42 to i8
  br label %land.end

land.end:                                         ; preds = %sw.bb35, %land.rhs
  %7 = phi i8 [ 0, %sw.bb35 ], [ %phitmp, %land.rhs ]
  br label %cleanup, !dbg !1503

sw.bb45:                                          ; preds = %entry
  %call46 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 -1) #7, !dbg !1504
  %call46.lobit = lshr i32 %call46, 31, !dbg !1504
  %8 = trunc i32 %call46.lobit to i8, !dbg !1504
  br label %cleanup, !dbg !1505

sw.bb50:                                          ; preds = %entry
  %call51 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 -1) #7, !dbg !1506
  %cmp52 = icmp slt i32 %call51, 1, !dbg !1507
  %conv54 = zext i1 %cmp52 to i8, !dbg !1506
  br label %cleanup, !dbg !1508

sw.bb55:                                          ; preds = %entry
  %call56 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 1) #7, !dbg !1509
  %cmp57 = icmp sgt i32 %call56, 0, !dbg !1510
  %conv59 = zext i1 %cmp57 to i8, !dbg !1509
  br label %cleanup, !dbg !1511

sw.bb60:                                          ; preds = %entry
  %call61 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 1) #7, !dbg !1512
  %call61.lobit = lshr i32 %call61, 31, !dbg !1512
  %9 = trunc i32 %call61.lobit to i8, !dbg !1512
  %.not = xor i8 %9, 1, !dbg !1512
  br label %cleanup, !dbg !1513

sw.bb65:                                          ; preds = %entry
  %call66 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 0) #7, !dbg !1514
  %cmp67 = icmp eq i32 %call66, 0, !dbg !1515
  %conv69 = zext i1 %cmp67 to i8, !dbg !1514
  br label %cleanup, !dbg !1516

sw.bb70:                                          ; preds = %entry
  %call71 = tail call fastcc i32 @do_compare(%struct.real_value* %op0, %struct.real_value* %op1, i32 0) #7, !dbg !1517
  %cmp72 = icmp ne i32 %call71, 0, !dbg !1518
  %conv74 = zext i1 %cmp72 to i8, !dbg !1517
  br label %cleanup, !dbg !1519

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1520
  br label %cleanup, !dbg !1521

cleanup:                                          ; preds = %sw.default, %sw.bb70, %sw.bb65, %sw.bb60, %sw.bb55, %sw.bb50, %sw.bb45, %land.end, %lor.end, %sw.bb22, %sw.bb17, %sw.bb12, %sw.bb7, %sw.bb2, %sw.bb
  %retval.0 = phi i8 [ 0, %sw.default ], [ %conv74, %sw.bb70 ], [ %conv69, %sw.bb65 ], [ %.not, %sw.bb60 ], [ %conv59, %sw.bb55 ], [ %conv54, %sw.bb50 ], [ %8, %sw.bb45 ], [ %7, %land.end ], [ %4, %lor.end ], [ %conv26, %sw.bb22 ], [ %conv21, %sw.bb17 ], [ %.not2, %sw.bb12 ], [ %conv11, %sw.bb7 ], [ %conv6, %sw.bb2 ], [ %0, %sw.bb ], !dbg !1473
  ret i8 %retval.0, !dbg !1522
}

; Function Attrs: nounwind uwtable
define dso_local i32 @real_exponent(%struct.real_value* %r) local_unnamed_addr #5 !dbg !1523 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1527, metadata !DIExpression()), !dbg !1528
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1529
  %bf.load = load i32, i32* %0, align 8, !dbg !1529
  %bf.clear = and i32 %bf.load, 3, !dbg !1529
  switch i32 %bf.clear, label %sw.default1 [
    i32 0, label %return
    i32 2, label %sw.bb1
    i32 3, label %sw.bb1
    i32 1, label %sw.bb2
  ], !dbg !1530

sw.bb1:                                           ; preds = %entry, %entry
  br label %return, !dbg !1531

sw.bb2:                                           ; preds = %entry
  %sub = ashr i32 %bf.load, 6, !dbg !1533
  br label %return, !dbg !1534

sw.default1:                                      ; preds = %entry
  unreachable

return:                                           ; preds = %entry, %sw.bb2, %sw.bb1
  %retval.0 = phi i32 [ %sub, %sw.bb2 ], [ 2147483647, %sw.bb1 ], [ 0, %entry ], !dbg !1528
  ret i32 %retval.0, !dbg !1535
}

; Function Attrs: nounwind uwtable
define dso_local void @real_ldexp(%struct.real_value* %r, %struct.real_value* %op0, i32 %exp) local_unnamed_addr #5 !dbg !1536 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1540, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata %struct.real_value* %op0, metadata !1541, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i32 %exp, metadata !1542, metadata !DIExpression()), !dbg !1543
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !1544
  %1 = bitcast %struct.real_value* %op0 to i8*, !dbg !1544
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 32, i1 false), !dbg !1544
  %2 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1545
  %bf.load = load i32, i32* %2, align 8, !dbg !1545
  %bf.clear = and i32 %bf.load, 3, !dbg !1545
  %switch = icmp eq i32 %bf.clear, 1, !dbg !1546
  br i1 %switch, label %sw.bb1, label %sw.epilog, !dbg !1546

sw.bb1:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %op0, i64 0, i32 0, !dbg !1547
  %bf.load2 = load i32, i32* %3, align 8, !dbg !1547
  %sub = ashr i32 %bf.load2, 6, !dbg !1547
  %add = add nsw i32 %sub, %exp, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %add, metadata !1542, metadata !DIExpression()), !dbg !1543
  %cmp = icmp sgt i32 %add, 33554431, !dbg !1550
  br i1 %cmp, label %if.then, label %if.else, !dbg !1552

if.then:                                          ; preds = %sw.bb1
  %bf.lshr4 = lshr i32 %bf.load, 3, !dbg !1553
  %bf.clear5 = and i32 %bf.lshr4, 1, !dbg !1553
  tail call fastcc void @get_inf(%struct.real_value* %r, i32 %bf.clear5) #7, !dbg !1554
  br label %sw.epilog, !dbg !1554

if.else:                                          ; preds = %sw.bb1
  %cmp6 = icmp slt i32 %add, -33554431, !dbg !1555
  br i1 %cmp6, label %if.then7, label %if.else11, !dbg !1557

if.then7:                                         ; preds = %if.else
  %bf.lshr9 = lshr i32 %bf.load, 3, !dbg !1558
  %bf.clear10 = and i32 %bf.lshr9, 1, !dbg !1558
  tail call fastcc void @get_zero(%struct.real_value* %r, i32 %bf.clear10) #7, !dbg !1559
  br label %sw.epilog, !dbg !1559

if.else11:                                        ; preds = %if.else
  %bf.shl = shl i32 %add, 6, !dbg !1560
  %bf.clear13 = and i32 %bf.load, 63, !dbg !1560
  %bf.set = or i32 %bf.clear13, %bf.shl, !dbg !1560
  store i32 %bf.set, i32* %2, align 8, !dbg !1560
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.else11, %if.then7, %entry
  ret void, !dbg !1561
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @get_inf(%struct.real_value* %r, i32 %sign) unnamed_addr #0 !dbg !1562 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1566, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 %sign, metadata !1567, metadata !DIExpression()), !dbg !1568
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !1569
  %call = tail call i8* @memset(i8* %0, i32 0, i64 32) #6, !dbg !1570
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1571
  %bf.load = load i32, i32* %1, align 8, !dbg !1572
  %bf.value = shl i32 %sign, 3, !dbg !1573
  %bf.shl = and i32 %bf.value, 8, !dbg !1573
  %bf.set = and i32 %bf.load, -12, !dbg !1573
  %bf.clear2 = or i32 %bf.set, %bf.shl, !dbg !1573
  %bf.set3 = or i32 %bf.clear2, 2, !dbg !1573
  store i32 %bf.set3, i32* %1, align 8, !dbg !1573
  ret void, !dbg !1574
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @get_zero(%struct.real_value* %r, i32 %sign) unnamed_addr #0 !dbg !1575 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1577, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i32 %sign, metadata !1578, metadata !DIExpression()), !dbg !1579
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !1580
  %call = tail call i8* @memset(i8* %0, i32 0, i64 32) #6, !dbg !1581
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1582
  %bf.load = load i32, i32* %1, align 8, !dbg !1583
  %bf.value = shl i32 %sign, 3, !dbg !1583
  %bf.shl = and i32 %bf.value, 8, !dbg !1583
  %bf.clear = and i32 %bf.load, -9, !dbg !1583
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !1583
  store i32 %bf.set, i32* %1, align 8, !dbg !1583
  ret void, !dbg !1584
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_isinf(%struct.real_value* %r) local_unnamed_addr #5 !dbg !1585 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1589, metadata !DIExpression()), !dbg !1590
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1591
  %bf.load = load i32, i32* %0, align 8, !dbg !1591
  %bf.clear = and i32 %bf.load, 3, !dbg !1591
  %cmp = icmp eq i32 %bf.clear, 2, !dbg !1592
  %conv1 = zext i1 %cmp to i8, !dbg !1593
  ret i8 %conv1, !dbg !1594
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_isnan(%struct.real_value* %r) local_unnamed_addr #5 !dbg !1595 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1597, metadata !DIExpression()), !dbg !1598
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1599
  %bf.load = load i32, i32* %0, align 8, !dbg !1599
  %bf.clear = and i32 %bf.load, 3, !dbg !1599
  %cmp = icmp eq i32 %bf.clear, 3, !dbg !1600
  %conv1 = zext i1 %cmp to i8, !dbg !1601
  ret i8 %conv1, !dbg !1602
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_isfinite(%struct.real_value* %r) local_unnamed_addr #5 !dbg !1603 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1605, metadata !DIExpression()), !dbg !1606
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1607
  %bf.load = load i32, i32* %0, align 8, !dbg !1607
  %bf.clear = and i32 %bf.load, 3, !dbg !1607
  %cmp = icmp eq i32 %bf.clear, 3, !dbg !1608
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !1609

land.rhs:                                         ; preds = %entry
  %cmp3 = icmp ne i32 %bf.clear, 2, !dbg !1610
  %phitmp = zext i1 %cmp3 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %1 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %1, !dbg !1611
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_isneg(%struct.real_value* %r) local_unnamed_addr #5 !dbg !1612 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1614, metadata !DIExpression()), !dbg !1615
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1616
  %bf.load = load i32, i32* %0, align 8, !dbg !1616
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !1616
  %1 = trunc i32 %bf.lshr to i8, !dbg !1617
  %conv = and i8 %1, 1, !dbg !1617
  ret i8 %conv, !dbg !1618
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_isnegzero(%struct.real_value* %r) local_unnamed_addr #5 !dbg !1619 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1621, metadata !DIExpression()), !dbg !1622
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1623
  %bf.load = load i32, i32* %0, align 8, !dbg !1623
  %bf.clear = and i32 %bf.load, 8, !dbg !1623
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !1624
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !1625

land.rhs:                                         ; preds = %entry
  %bf.clear2 = and i32 %bf.load, 3, !dbg !1626
  %cmp = icmp eq i32 %bf.clear2, 0, !dbg !1627
  %phitmp = zext i1 %cmp to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %1 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %1, !dbg !1628
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_identical(%struct.real_value* %a, %struct.real_value* %b) local_unnamed_addr #5 !dbg !1629 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1633, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !1634, metadata !DIExpression()), !dbg !1636
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 0, !dbg !1637
  %bf.load = load i32, i32* %0, align 8, !dbg !1637
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 0, !dbg !1639
  %bf.load1 = load i32, i32* %1, align 8, !dbg !1639
  %2 = xor i32 %bf.load, %bf.load1, !dbg !1640
  %3 = and i32 %2, 3, !dbg !1640
  %cmp = icmp eq i32 %3, 0, !dbg !1640
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1641

if.end:                                           ; preds = %entry
  %4 = and i32 %2, 8, !dbg !1642
  %cmp8 = icmp eq i32 %4, 0, !dbg !1642
  br i1 %cmp8, label %if.end10, label %cleanup, !dbg !1644

if.end10:                                         ; preds = %if.end
  %bf.clear12 = and i32 %bf.load, 3, !dbg !1645
  switch i32 %bf.clear12, label %sw.default1 [
    i32 0, label %cleanup
    i32 2, label %cleanup
    i32 1, label %sw.bb13
    i32 3, label %sw.bb32
  ], !dbg !1646

sw.bb13:                                          ; preds = %if.end10
  %5 = and i32 %2, 4, !dbg !1647
  %cmp20 = icmp eq i32 %5, 0, !dbg !1647
  br i1 %cmp20, label %if.end22, label %cleanup, !dbg !1650

if.end22:                                         ; preds = %sw.bb13
  %cmp29 = icmp ugt i32 %2, 63, !dbg !1651
  br i1 %cmp29, label %cleanup, label %sw.epilog, !dbg !1653

sw.bb32:                                          ; preds = %if.end10
  %6 = and i32 %2, 16, !dbg !1654
  %cmp39 = icmp eq i32 %6, 0, !dbg !1654
  br i1 %cmp39, label %if.end41, label %cleanup, !dbg !1656

if.end41:                                         ; preds = %sw.bb32
  %bf.clear44 = and i32 %bf.load, 32, !dbg !1657
  %tobool = icmp eq i32 %bf.clear44, 0, !dbg !1659
  br i1 %tobool, label %lor.lhs.false, label %if.then49, !dbg !1660

lor.lhs.false:                                    ; preds = %if.end41
  %bf.clear47 = and i32 %bf.load1, 32, !dbg !1661
  %tobool48 = icmp eq i32 %bf.clear47, 0, !dbg !1662
  br i1 %tobool48, label %sw.epilog, label %if.then49, !dbg !1663

if.then49:                                        ; preds = %lor.lhs.false, %if.end41
  %7 = lshr i32 %2, 5, !dbg !1664
  %8 = trunc i32 %7 to i8, !dbg !1665
  %9 = and i8 %8, 1, !dbg !1665
  %10 = xor i8 %9, 1, !dbg !1665
  br label %cleanup, !dbg !1666

sw.default1:                                      ; preds = %if.end10
  unreachable

sw.epilog:                                        ; preds = %lor.lhs.false, %if.end22
  call void @llvm.dbg.value(metadata i32 0, metadata !1635, metadata !DIExpression()), !dbg !1636
  br label %for.cond, !dbg !1667

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %sw.epilog ], !dbg !1669
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1635, metadata !DIExpression()), !dbg !1636
  %exitcond = icmp eq i64 %indvars.iv, 3, !dbg !1670
  br i1 %exitcond, label %cleanup.loopexit, label %for.body, !dbg !1672

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %indvars.iv, !dbg !1673
  %11 = load i64, i64* %arrayidx, align 8, !dbg !1673
  %arrayidx63 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 1, i64 %indvars.iv, !dbg !1675
  %12 = load i64, i64* %arrayidx63, align 8, !dbg !1675
  %cmp64 = icmp eq i64 %11, %12, !dbg !1676
  br i1 %cmp64, label %for.inc, label %cleanup.loopexit, !dbg !1677

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i32 undef, metadata !1635, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1636
  br label %for.cond, !dbg !1679, !llvm.loop !1680

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %for.body ]
  br label %cleanup, !dbg !1682

cleanup:                                          ; preds = %cleanup.loopexit, %sw.bb13, %sw.bb32, %if.end, %entry, %if.end22, %if.end10, %if.end10, %if.then49
  %retval.0 = phi i8 [ %10, %if.then49 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end10 ], [ 1, %if.end10 ], [ 0, %sw.bb13 ], [ 0, %if.end22 ], [ 0, %sw.bb32 ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !1636
  ret i8 %retval.0, !dbg !1682
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @exact_real_inverse(i32 %mode, %struct.real_value* %r) local_unnamed_addr #5 !dbg !1683 {
entry:
  %u = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1687, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1688, metadata !DIExpression()), !dbg !1692
  %call = tail call fastcc %struct.real_value* @real_digit(i32 1) #7, !dbg !1693
  call void @llvm.dbg.value(metadata %struct.real_value* %call, metadata !1689, metadata !DIExpression()), !dbg !1692
  %0 = bitcast %struct.real_value* %u to i8*, !dbg !1694
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !1694
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1695
  %bf.load = load i32, i32* %1, align 8, !dbg !1695
  %bf.clear = and i32 %bf.load, 3, !dbg !1695
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !1697
  br i1 %cmp, label %for.cond.preheader, label %cleanup, !dbg !1698

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !1699

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv2 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next3, %for.inc ], !dbg !1701
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !1691, metadata !DIExpression()), !dbg !1692
  %exitcond4 = icmp eq i64 %indvars.iv2, 2, !dbg !1702
  br i1 %exitcond4, label %for.end, label %for.body, !dbg !1699

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv2, !dbg !1704
  %2 = load i64, i64* %arrayidx, align 8, !dbg !1704
  %cmp2 = icmp eq i64 %2, 0, !dbg !1706
  br i1 %cmp2, label %for.inc, label %cleanup.loopexit1, !dbg !1707

for.inc:                                          ; preds = %for.body
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i32 undef, metadata !1691, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1692
  br label %for.cond, !dbg !1709, !llvm.loop !1710

for.end:                                          ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !1712
  %3 = load i64, i64* %arrayidx6, align 8, !dbg !1712
  %cmp7 = icmp eq i64 %3, -9223372036854775808, !dbg !1714
  br i1 %cmp7, label %if.end9, label %cleanup, !dbg !1715

if.end9:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !1690, metadata !DIExpression(DW_OP_deref)), !dbg !1692
  %call10 = call fastcc zeroext i8 @do_divide(%struct.real_value* nonnull %u, %struct.real_value* %call, %struct.real_value* %r) #7, !dbg !1716
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !1690, metadata !DIExpression(DW_OP_deref)), !dbg !1692
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !1690, metadata !DIExpression(DW_OP_deref)), !dbg !1692
  call void @real_convert(%struct.real_value* nonnull %u, i32 %mode, %struct.real_value* nonnull %u) #7, !dbg !1717
  %4 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 0, !dbg !1718
  %bf.load11 = load i32, i32* %4, align 8, !dbg !1718
  %bf.clear12 = and i32 %bf.load11, 3, !dbg !1718
  %cmp13 = icmp eq i32 %bf.clear12, 1, !dbg !1720
  br i1 %cmp13, label %for.cond16.preheader, label %cleanup, !dbg !1721

for.cond16.preheader:                             ; preds = %if.end9
  br label %for.cond16, !dbg !1722

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc25
  %indvars.iv = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next, %for.inc25 ], !dbg !1724
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1691, metadata !DIExpression()), !dbg !1692
  %exitcond = icmp eq i64 %indvars.iv, 2, !dbg !1725
  br i1 %exitcond, label %for.end27, label %for.body18, !dbg !1722

for.body18:                                       ; preds = %for.cond16
  %arrayidx21 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 1, i64 %indvars.iv, !dbg !1727
  %5 = load i64, i64* %arrayidx21, align 8, !dbg !1727
  %cmp22 = icmp eq i64 %5, 0, !dbg !1729
  br i1 %cmp22, label %for.inc25, label %cleanup.loopexit, !dbg !1730

for.inc25:                                        ; preds = %for.body18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1731
  call void @llvm.dbg.value(metadata i32 undef, metadata !1691, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1692
  br label %for.cond16, !dbg !1732, !llvm.loop !1733

for.end27:                                        ; preds = %for.cond16
  %arrayidx29 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 1, i64 2, !dbg !1735
  %6 = load i64, i64* %arrayidx29, align 8, !dbg !1735
  %cmp30 = icmp eq i64 %6, -9223372036854775808, !dbg !1737
  br i1 %cmp30, label %if.end32, label %cleanup, !dbg !1738

if.end32:                                         ; preds = %for.end27
  %7 = bitcast %struct.real_value* %r to i8*, !dbg !1739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* nonnull align 8 %0, i64 32, i1 false), !dbg !1739
  br label %cleanup, !dbg !1740

cleanup.loopexit:                                 ; preds = %for.body18
  br label %cleanup, !dbg !1741

cleanup.loopexit1:                                ; preds = %for.body
  br label %cleanup, !dbg !1741

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit, %for.end27, %if.end9, %for.end, %entry, %if.end32
  %retval.0 = phi i8 [ 1, %if.end32 ], [ 0, %entry ], [ 0, %for.end ], [ 0, %if.end9 ], [ 0, %for.end27 ], [ 0, %cleanup.loopexit ], [ 0, %cleanup.loopexit1 ], !dbg !1692
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !1741
  ret i8 %retval.0, !dbg !1741
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.real_value* @real_digit(i32 %n) unnamed_addr #5 !dbg !514 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !516, metadata !DIExpression()), !dbg !1742
  %cmp = icmp sgt i32 %n, -1, !dbg !1743
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1743

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1743
  br label %cond.end, !dbg !1743

cond.end:                                         ; preds = %entry, %cond.true
  %cmp1 = icmp slt i32 %n, 10, !dbg !1744
  br i1 %cmp1, label %cond.end4, label %cond.true2, !dbg !1744

cond.true2:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2303, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1744
  br label %cond.end4, !dbg !1744

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %cmp6 = icmp sgt i32 %n, 0, !dbg !1745
  br i1 %cmp6, label %land.lhs.true, label %cond.end4.if.end_crit_edge, !dbg !1747

cond.end4.if.end_crit_edge:                       ; preds = %cond.end4
  %.pre = sext i32 %n to i64, !dbg !1748
  br label %if.end, !dbg !1747

land.lhs.true:                                    ; preds = %cond.end4
  %idxprom = sext i32 %n to i64, !dbg !1749
  %0 = getelementptr inbounds [10 x %struct.real_value], [10 x %struct.real_value]* @real_digit.num, i64 0, i64 %idxprom, i32 0, !dbg !1750
  %bf.load = load i32, i32* %0, align 16, !dbg !1750
  %bf.clear = and i32 %bf.load, 3, !dbg !1750
  %cmp7 = icmp eq i32 %bf.clear, 0, !dbg !1751
  br i1 %cmp7, label %if.then, label %if.end, !dbg !1752

if.then:                                          ; preds = %land.lhs.true
  %arrayidx9 = getelementptr inbounds [10 x %struct.real_value], [10 x %struct.real_value]* @real_digit.num, i64 0, i64 %idxprom, !dbg !1753
  tail call void @real_from_integer(%struct.real_value* nonnull %arrayidx9, i32 0, i64 %idxprom, i64 0, i32 1) #7, !dbg !1754
  br label %if.end, !dbg !1754

if.end:                                           ; preds = %cond.end4.if.end_crit_edge, %if.then, %land.lhs.true
  %idxprom10.pre-phi = phi i64 [ %.pre, %cond.end4.if.end_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %land.lhs.true ], !dbg !1748
  %arrayidx11 = getelementptr inbounds [10 x %struct.real_value], [10 x %struct.real_value]* @real_digit.num, i64 0, i64 %idxprom10.pre-phi, !dbg !1748
  ret %struct.real_value* %arrayidx11, !dbg !1755
}

; Function Attrs: nounwind uwtable
define dso_local void @real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* %a) local_unnamed_addr #5 !dbg !1756 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1760, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1761, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1762, metadata !DIExpression()), !dbg !1764
  %cond = add i32 %mode, -38, !dbg !1765
  %idxprom3 = zext i32 %cond to i64, !dbg !1765
  %arrayidx4 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom3, !dbg !1765
  %0 = load %struct.real_format*, %struct.real_format** %arrayidx4, align 8, !dbg !1765
  call void @llvm.dbg.value(metadata %struct.real_format* %0, metadata !1763, metadata !DIExpression()), !dbg !1764
  %tobool = icmp eq %struct.real_format* %0, null, !dbg !1766
  br i1 %tobool, label %cond.true5, label %cond.end7, !dbg !1766

cond.true5:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2741, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1766
  br label %cond.end7, !dbg !1766

cond.end7:                                        ; preds = %entry, %cond.true5
  %1 = bitcast %struct.real_value* %r to i8*, !dbg !1767
  %2 = bitcast %struct.real_value* %a to i8*, !dbg !1767
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false), !dbg !1767
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 0, !dbg !1768
  %bf.load = load i32, i32* %3, align 8, !dbg !1768
  %bf.clear = and i32 %bf.load, 4, !dbg !1768
  %tobool9 = icmp eq i32 %bf.clear, 0, !dbg !1770
  br i1 %tobool9, label %lor.lhs.false, label %if.then, !dbg !1771

lor.lhs.false:                                    ; preds = %cond.end7
  %b = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 2, !dbg !1772
  %4 = load i32, i32* %b, align 8, !dbg !1772
  %cmp10 = icmp eq i32 %4, 10, !dbg !1773
  br i1 %cmp10, label %if.then, label %if.end, !dbg !1774

if.then:                                          ; preds = %cond.end7, %lor.lhs.false
  tail call void @decimal_real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* %a) #6, !dbg !1775
  br label %if.end, !dbg !1775

if.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call fastcc void @round_for_format(%struct.real_format* %0, %struct.real_value* %r) #7, !dbg !1776
  %5 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1777
  %bf.load12 = load i32, i32* %5, align 8, !dbg !1777
  %bf.clear13 = and i32 %bf.load12, 3, !dbg !1777
  %cmp14 = icmp eq i32 %bf.clear13, 1, !dbg !1779
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1780

if.then16:                                        ; preds = %if.end
  tail call fastcc void @normalize(%struct.real_value* %r) #7, !dbg !1781
  br label %if.end17, !dbg !1781

if.end17:                                         ; preds = %if.then16, %if.end
  ret void, !dbg !1782
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_can_shorten_arithmetic(i32 %imode, i32 %tmode) local_unnamed_addr #5 !dbg !1783 {
entry:
  call void @llvm.dbg.value(metadata i32 %imode, metadata !1787, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i32 %tmode, metadata !1788, metadata !DIExpression()), !dbg !1791
  %cond = add i32 %tmode, -38, !dbg !1792
  %idxprom3 = zext i32 %cond to i64, !dbg !1792
  %arrayidx4 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom3, !dbg !1792
  %0 = load %struct.real_format*, %struct.real_format** %arrayidx4, align 8, !dbg !1792
  call void @llvm.dbg.value(metadata %struct.real_format* %0, metadata !1789, metadata !DIExpression()), !dbg !1791
  %cond16 = add i32 %imode, -38, !dbg !1793
  %idxprom17 = zext i32 %cond16 to i64, !dbg !1793
  %arrayidx18 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom17, !dbg !1793
  %1 = load %struct.real_format*, %struct.real_format** %arrayidx18, align 8, !dbg !1793
  call void @llvm.dbg.value(metadata %struct.real_format* %1, metadata !1790, metadata !DIExpression()), !dbg !1791
  %b = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 2, !dbg !1794
  %2 = load i32, i32* %b, align 8, !dbg !1794
  %b19 = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 2, !dbg !1795
  %3 = load i32, i32* %b19, align 8, !dbg !1795
  %cmp20 = icmp eq i32 %2, %3, !dbg !1796
  br i1 %cmp20, label %land.lhs.true, label %land.end416, !dbg !1797

land.lhs.true:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 3, !dbg !1798
  %4 = load i32, i32* %p, align 4, !dbg !1798
  %p22 = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 3, !dbg !1799
  %5 = load i32, i32* %p22, align 4, !dbg !1799
  %mul = shl nsw i32 %5, 1, !dbg !1800
  %cmp23 = icmp sgt i32 %4, %mul, !dbg !1801
  br i1 %cmp23, label %land.lhs.true25, label %land.end416, !dbg !1802

land.lhs.true25:                                  ; preds = %land.lhs.true
  %emin = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 5, !dbg !1803
  %6 = load i32, i32* %emin, align 4, !dbg !1803
  %emin26 = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 5, !dbg !1804
  %7 = load i32, i32* %emin26, align 4, !dbg !1804
  %mul27 = shl nsw i32 %7, 1, !dbg !1805
  %sub29 = sub nsw i32 %mul27, %5, !dbg !1806
  %sub30 = add nsw i32 %sub29, -2, !dbg !1807
  %cmp31 = icmp slt i32 %6, %sub30, !dbg !1808
  br i1 %cmp31, label %land.lhs.true33, label %land.end416, !dbg !1809

land.lhs.true33:                                  ; preds = %land.lhs.true25
  %emax = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 6, !dbg !1810
  %8 = load i32, i32* %emax, align 8, !dbg !1810
  %sub36 = sub nsw i32 %7, %8, !dbg !1811
  %sub38 = sub nsw i32 %sub36, %5, !dbg !1812
  %sub39 = add nsw i32 %sub38, -2, !dbg !1813
  %cmp40 = icmp slt i32 %6, %sub39, !dbg !1814
  br i1 %cmp40, label %land.lhs.true42, label %land.end416, !dbg !1815

land.lhs.true42:                                  ; preds = %land.lhs.true33
  %emax43 = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 6, !dbg !1816
  %9 = load i32, i32* %emax43, align 8, !dbg !1816
  %mul45 = shl nsw i32 %8, 1, !dbg !1817
  %add46 = add nsw i32 %mul45, 2, !dbg !1818
  %cmp47 = icmp sgt i32 %9, %add46, !dbg !1819
  br i1 %cmp47, label %land.lhs.true49, label %land.end416, !dbg !1820

land.lhs.true49:                                  ; preds = %land.lhs.true42
  %sub53 = sub nsw i32 %8, %7, !dbg !1821
  %add55 = add nsw i32 %sub53, %5, !dbg !1822
  %add56 = add nsw i32 %add55, 2, !dbg !1823
  %cmp57 = icmp sgt i32 %9, %add56, !dbg !1824
  br i1 %cmp57, label %land.lhs.true59, label %land.end416, !dbg !1825

land.lhs.true59:                                  ; preds = %land.lhs.true49
  %round_towards_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 9, !dbg !1826
  %10 = load i8, i8* %round_towards_zero, align 4, !dbg !1826
  %round_towards_zero61 = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 9, !dbg !1827
  %11 = load i8, i8* %round_towards_zero61, align 4, !dbg !1827
  %cmp63 = icmp eq i8 %10, %11, !dbg !1828
  br i1 %cmp63, label %land.lhs.true65, label %land.end416, !dbg !1829

land.lhs.true65:                                  ; preds = %land.lhs.true59
  %has_sign_dependent_rounding = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 10, !dbg !1830
  %12 = load i8, i8* %has_sign_dependent_rounding, align 1, !dbg !1830
  %has_sign_dependent_rounding67 = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 10, !dbg !1831
  %13 = load i8, i8* %has_sign_dependent_rounding67, align 1, !dbg !1831
  %cmp69 = icmp eq i8 %12, %13, !dbg !1832
  br i1 %cmp69, label %land.lhs.true71, label %land.end416, !dbg !1833

land.lhs.true71:                                  ; preds = %land.lhs.true65
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 11, !dbg !1834
  %14 = load i8, i8* %has_nans, align 2, !dbg !1834
  %has_nans73 = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 11, !dbg !1835
  %15 = load i8, i8* %has_nans73, align 2, !dbg !1835
  %cmp75 = icmp ult i8 %14, %15, !dbg !1836
  br i1 %cmp75, label %land.end416, label %land.lhs.true77, !dbg !1837

land.lhs.true77:                                  ; preds = %land.lhs.true71
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 12, !dbg !1838
  %16 = load i8, i8* %has_inf, align 1, !dbg !1838
  %has_inf79 = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 12, !dbg !1839
  %17 = load i8, i8* %has_inf79, align 1, !dbg !1839
  %cmp81 = icmp ult i8 %16, %17, !dbg !1840
  br i1 %cmp81, label %land.end416, label %land.lhs.true83, !dbg !1841

land.lhs.true83:                                  ; preds = %land.lhs.true77
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 14, !dbg !1842
  %18 = load i8, i8* %has_signed_zero, align 1, !dbg !1842
  %has_signed_zero85 = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 14, !dbg !1843
  %19 = load i8, i8* %has_signed_zero85, align 1, !dbg !1843
  %cmp87 = icmp ult i8 %18, %19, !dbg !1844
  br i1 %cmp87, label %land.end416, label %land.lhs.true89, !dbg !1845

land.lhs.true89:                                  ; preds = %land.lhs.true83
  %idxprom90 = zext i32 %tmode to i64, !dbg !1846
  %arrayidx91 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom90, !dbg !1846
  %20 = load i8, i8* %arrayidx91, align 1, !dbg !1846
  %cmp93 = icmp eq i8 %20, 8, !dbg !1846
  br i1 %cmp93, label %land.lhs.true112, label %lor.lhs.false, !dbg !1846

lor.lhs.false:                                    ; preds = %land.lhs.true89
  %cmp98 = icmp eq i8 %20, 9, !dbg !1846
  br i1 %cmp98, label %land.lhs.true112, label %lor.lhs.false100, !dbg !1846

lor.lhs.false100:                                 ; preds = %lor.lhs.false
  %cmp104 = icmp eq i8 %20, 11, !dbg !1846
  br i1 %cmp104, label %land.lhs.true112, label %lor.lhs.false106, !dbg !1846

lor.lhs.false106:                                 ; preds = %lor.lhs.false100
  %cmp110 = icmp eq i8 %20, 17, !dbg !1846
  br i1 %cmp110, label %land.lhs.true112, label %land.rhs, !dbg !1846

land.lhs.true112:                                 ; preds = %lor.lhs.false106, %lor.lhs.false100, %lor.lhs.false, %land.lhs.true89
  br i1 %cmp93, label %cond.end129, label %lor.lhs.false118, !dbg !1846

lor.lhs.false118:                                 ; preds = %land.lhs.true112
  %cmp122 = icmp eq i8 %20, 9, !dbg !1846
  br i1 %cmp122, label %cond.end129, label %cond.false125, !dbg !1846

cond.false125:                                    ; preds = %lor.lhs.false118
  %arrayidx127 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom90, !dbg !1846
  %21 = load i8, i8* %arrayidx127, align 1, !dbg !1846
  %.pre = zext i8 %21 to i64, !dbg !1846
  %arrayidx132.phi.trans.insert = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %.pre, !dbg !1791
  %.pre3 = load i8, i8* %arrayidx132.phi.trans.insert, align 1, !dbg !1846
  br label %cond.end129, !dbg !1846

cond.end129:                                      ; preds = %land.lhs.true112, %lor.lhs.false118, %cond.false125
  %22 = phi i8 [ 8, %land.lhs.true112 ], [ 9, %lor.lhs.false118 ], [ %.pre3, %cond.false125 ], !dbg !1846
  %cmp134 = icmp eq i8 %22, 9, !dbg !1846
  br i1 %cmp134, label %cond.true136, label %cond.false157, !dbg !1846

cond.true136:                                     ; preds = %cond.end129
  br i1 %cmp93, label %cond.end153, label %lor.lhs.false142, !dbg !1846

lor.lhs.false142:                                 ; preds = %cond.true136
  %cmp146 = icmp eq i8 %20, 9, !dbg !1846
  br i1 %cmp146, label %cond.end153, label %cond.false149, !dbg !1846

cond.false149:                                    ; preds = %lor.lhs.false142
  %arrayidx151 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom90, !dbg !1846
  %23 = load i8, i8* %arrayidx151, align 1, !dbg !1846
  %conv152 = zext i8 %23 to i32, !dbg !1846
  br label %cond.end153, !dbg !1846

cond.end153:                                      ; preds = %cond.true136, %lor.lhs.false142, %cond.false149
  %cond154 = phi i32 [ %conv152, %cond.false149 ], [ %tmode, %lor.lhs.false142 ], [ %tmode, %cond.true136 ], !dbg !1846
  br label %cond.end177, !dbg !1846

cond.false157:                                    ; preds = %cond.end129
  br i1 %cmp93, label %cond.end174, label %lor.lhs.false163, !dbg !1846

lor.lhs.false163:                                 ; preds = %cond.false157
  %cmp167 = icmp eq i8 %20, 9, !dbg !1846
  br i1 %cmp167, label %cond.end174, label %cond.false170, !dbg !1846

cond.false170:                                    ; preds = %lor.lhs.false163
  %arrayidx172 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom90, !dbg !1846
  %24 = load i8, i8* %arrayidx172, align 1, !dbg !1846
  %conv173 = zext i8 %24 to i32, !dbg !1846
  br label %cond.end174, !dbg !1846

cond.end174:                                      ; preds = %cond.false157, %lor.lhs.false163, %cond.false170
  %cond175 = phi i32 [ %conv173, %cond.false170 ], [ %tmode, %lor.lhs.false163 ], [ %tmode, %cond.false157 ], !dbg !1846
  br label %cond.end177, !dbg !1846

cond.end177:                                      ; preds = %cond.end174, %cond.end153
  %cond178.in = phi i32 [ %cond154, %cond.end153 ], [ %cond175, %cond.end174 ]
  %cond178 = add i32 %cond178.in, -38, !dbg !1846
  %idxprom179 = zext i32 %cond178 to i64, !dbg !1846
  %arrayidx180 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom179, !dbg !1846
  %25 = load %struct.real_format*, %struct.real_format** %arrayidx180, align 8, !dbg !1846
  %pnan = getelementptr inbounds %struct.real_format, %struct.real_format* %25, i64 0, i32 4, !dbg !1846
  %26 = load i32, i32* %pnan, align 8, !dbg !1846
  br i1 %cmp93, label %cond.end197, label %lor.lhs.false186, !dbg !1846

lor.lhs.false186:                                 ; preds = %cond.end177
  %cmp190 = icmp eq i8 %20, 9, !dbg !1846
  br i1 %cmp190, label %cond.end197, label %cond.false193, !dbg !1846

cond.false193:                                    ; preds = %lor.lhs.false186
  %arrayidx195 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom90, !dbg !1846
  %27 = load i8, i8* %arrayidx195, align 1, !dbg !1846
  %.pre4 = zext i8 %27 to i64, !dbg !1846
  %arrayidx200.phi.trans.insert = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %.pre4, !dbg !1791
  %.pre5 = load i8, i8* %arrayidx200.phi.trans.insert, align 1, !dbg !1846
  br label %cond.end197, !dbg !1846

cond.end197:                                      ; preds = %cond.end177, %lor.lhs.false186, %cond.false193
  %28 = phi i8 [ 8, %cond.end177 ], [ 9, %lor.lhs.false186 ], [ %.pre5, %cond.false193 ], !dbg !1846
  %cmp202 = icmp eq i8 %28, 9, !dbg !1846
  br i1 %cmp202, label %cond.true204, label %cond.false225, !dbg !1846

cond.true204:                                     ; preds = %cond.end197
  br i1 %cmp93, label %cond.end221, label %lor.lhs.false210, !dbg !1846

lor.lhs.false210:                                 ; preds = %cond.true204
  %cmp214 = icmp eq i8 %20, 9, !dbg !1846
  br i1 %cmp214, label %cond.end221, label %cond.false217, !dbg !1846

cond.false217:                                    ; preds = %lor.lhs.false210
  %arrayidx219 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom90, !dbg !1846
  %29 = load i8, i8* %arrayidx219, align 1, !dbg !1846
  %conv220 = zext i8 %29 to i32, !dbg !1846
  br label %cond.end221, !dbg !1846

cond.end221:                                      ; preds = %cond.true204, %lor.lhs.false210, %cond.false217
  %cond222 = phi i32 [ %conv220, %cond.false217 ], [ %tmode, %lor.lhs.false210 ], [ %tmode, %cond.true204 ], !dbg !1846
  br label %cond.end245, !dbg !1846

cond.false225:                                    ; preds = %cond.end197
  br i1 %cmp93, label %cond.end242, label %lor.lhs.false231, !dbg !1846

lor.lhs.false231:                                 ; preds = %cond.false225
  %cmp235 = icmp eq i8 %20, 9, !dbg !1846
  br i1 %cmp235, label %cond.end242, label %cond.false238, !dbg !1846

cond.false238:                                    ; preds = %lor.lhs.false231
  %arrayidx240 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom90, !dbg !1846
  %30 = load i8, i8* %arrayidx240, align 1, !dbg !1846
  %conv241 = zext i8 %30 to i32, !dbg !1846
  br label %cond.end242, !dbg !1846

cond.end242:                                      ; preds = %cond.false225, %lor.lhs.false231, %cond.false238
  %cond243 = phi i32 [ %conv241, %cond.false238 ], [ %tmode, %lor.lhs.false231 ], [ %tmode, %cond.false225 ], !dbg !1846
  br label %cond.end245, !dbg !1846

cond.end245:                                      ; preds = %cond.end242, %cond.end221
  %cond246.in = phi i32 [ %cond222, %cond.end221 ], [ %cond243, %cond.end242 ]
  %cond246 = add i32 %cond246.in, -38, !dbg !1846
  %idxprom247 = zext i32 %cond246 to i64, !dbg !1846
  %arrayidx248 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom247, !dbg !1846
  %31 = load %struct.real_format*, %struct.real_format** %arrayidx248, align 8, !dbg !1846
  %p249 = getelementptr inbounds %struct.real_format, %struct.real_format* %31, i64 0, i32 3, !dbg !1846
  %32 = load i32, i32* %p249, align 4, !dbg !1846
  %cmp250 = icmp slt i32 %26, %32, !dbg !1846
  br i1 %cmp250, label %land.end416, label %land.rhs, !dbg !1847

land.rhs:                                         ; preds = %cond.end245, %lor.lhs.false106
  %idxprom252 = zext i32 %imode to i64, !dbg !1848
  %arrayidx253 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom252, !dbg !1848
  %33 = load i8, i8* %arrayidx253, align 1, !dbg !1848
  %cmp255 = icmp eq i8 %33, 8, !dbg !1848
  br i1 %cmp255, label %land.rhs275, label %lor.lhs.false257, !dbg !1848

lor.lhs.false257:                                 ; preds = %land.rhs
  %cmp261 = icmp eq i8 %33, 9, !dbg !1848
  br i1 %cmp261, label %land.rhs275, label %lor.lhs.false263, !dbg !1848

lor.lhs.false263:                                 ; preds = %lor.lhs.false257
  %cmp267 = icmp eq i8 %33, 11, !dbg !1848
  br i1 %cmp267, label %land.rhs275, label %lor.lhs.false269, !dbg !1848

lor.lhs.false269:                                 ; preds = %lor.lhs.false263
  %cmp273 = icmp eq i8 %33, 17, !dbg !1848
  br i1 %cmp273, label %land.rhs275, label %land.end, !dbg !1848

land.rhs275:                                      ; preds = %lor.lhs.false269, %lor.lhs.false263, %lor.lhs.false257, %land.rhs
  br i1 %cmp255, label %cond.end292, label %lor.lhs.false281, !dbg !1848

lor.lhs.false281:                                 ; preds = %land.rhs275
  %cmp285 = icmp eq i8 %33, 9, !dbg !1848
  br i1 %cmp285, label %cond.end292, label %cond.false288, !dbg !1848

cond.false288:                                    ; preds = %lor.lhs.false281
  %arrayidx290 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom252, !dbg !1848
  %34 = load i8, i8* %arrayidx290, align 1, !dbg !1848
  %.pre6 = zext i8 %34 to i64, !dbg !1848
  %arrayidx295.phi.trans.insert = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %.pre6, !dbg !1791
  %.pre7 = load i8, i8* %arrayidx295.phi.trans.insert, align 1, !dbg !1848
  %phitmp = icmp eq i8 %.pre7, 9, !dbg !1848
  br label %cond.end292, !dbg !1848

cond.end292:                                      ; preds = %land.rhs275, %lor.lhs.false281, %cond.false288
  %35 = phi i1 [ false, %land.rhs275 ], [ true, %lor.lhs.false281 ], [ %phitmp, %cond.false288 ]
  br i1 %35, label %cond.true299, label %cond.false320, !dbg !1848

cond.true299:                                     ; preds = %cond.end292
  br i1 %cmp255, label %cond.end316, label %lor.lhs.false305, !dbg !1848

lor.lhs.false305:                                 ; preds = %cond.true299
  %cmp309 = icmp eq i8 %33, 9, !dbg !1848
  br i1 %cmp309, label %cond.end316, label %cond.false312, !dbg !1848

cond.false312:                                    ; preds = %lor.lhs.false305
  %arrayidx314 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom252, !dbg !1848
  %36 = load i8, i8* %arrayidx314, align 1, !dbg !1848
  %conv315 = zext i8 %36 to i32, !dbg !1848
  br label %cond.end316, !dbg !1848

cond.end316:                                      ; preds = %cond.true299, %lor.lhs.false305, %cond.false312
  %cond317 = phi i32 [ %conv315, %cond.false312 ], [ %imode, %lor.lhs.false305 ], [ %imode, %cond.true299 ], !dbg !1848
  br label %cond.end340, !dbg !1848

cond.false320:                                    ; preds = %cond.end292
  br i1 %cmp255, label %cond.end337, label %lor.lhs.false326, !dbg !1848

lor.lhs.false326:                                 ; preds = %cond.false320
  %cmp330 = icmp eq i8 %33, 9, !dbg !1848
  br i1 %cmp330, label %cond.end337, label %cond.false333, !dbg !1848

cond.false333:                                    ; preds = %lor.lhs.false326
  %arrayidx335 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom252, !dbg !1848
  %37 = load i8, i8* %arrayidx335, align 1, !dbg !1848
  %conv336 = zext i8 %37 to i32, !dbg !1848
  br label %cond.end337, !dbg !1848

cond.end337:                                      ; preds = %cond.false320, %lor.lhs.false326, %cond.false333
  %cond338 = phi i32 [ %conv336, %cond.false333 ], [ %imode, %lor.lhs.false326 ], [ %imode, %cond.false320 ], !dbg !1848
  br label %cond.end340, !dbg !1848

cond.end340:                                      ; preds = %cond.end337, %cond.end316
  %cond341.in = phi i32 [ %cond317, %cond.end316 ], [ %cond338, %cond.end337 ]
  %cond341 = add i32 %cond341.in, -38, !dbg !1848
  %idxprom342 = zext i32 %cond341 to i64, !dbg !1848
  %arrayidx343 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom342, !dbg !1848
  %38 = load %struct.real_format*, %struct.real_format** %arrayidx343, align 8, !dbg !1848
  %pnan344 = getelementptr inbounds %struct.real_format, %struct.real_format* %38, i64 0, i32 4, !dbg !1848
  %39 = load i32, i32* %pnan344, align 8, !dbg !1848
  br i1 %cmp255, label %cond.end361, label %lor.lhs.false350, !dbg !1848

lor.lhs.false350:                                 ; preds = %cond.end340
  %cmp354 = icmp eq i8 %33, 9, !dbg !1848
  br i1 %cmp354, label %cond.end361, label %cond.false357, !dbg !1848

cond.false357:                                    ; preds = %lor.lhs.false350
  %arrayidx359 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom252, !dbg !1848
  %40 = load i8, i8* %arrayidx359, align 1, !dbg !1848
  %.pre8 = zext i8 %40 to i64, !dbg !1848
  %arrayidx364.phi.trans.insert = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %.pre8, !dbg !1791
  %.pre9 = load i8, i8* %arrayidx364.phi.trans.insert, align 1, !dbg !1848
  %phitmp10 = icmp eq i8 %.pre9, 9, !dbg !1848
  br label %cond.end361, !dbg !1848

cond.end361:                                      ; preds = %cond.end340, %lor.lhs.false350, %cond.false357
  %41 = phi i1 [ false, %cond.end340 ], [ true, %lor.lhs.false350 ], [ %phitmp10, %cond.false357 ]
  br i1 %41, label %cond.true368, label %cond.false389, !dbg !1848

cond.true368:                                     ; preds = %cond.end361
  br i1 %cmp255, label %cond.end385, label %lor.lhs.false374, !dbg !1848

lor.lhs.false374:                                 ; preds = %cond.true368
  %cmp378 = icmp eq i8 %33, 9, !dbg !1848
  br i1 %cmp378, label %cond.end385, label %cond.false381, !dbg !1848

cond.false381:                                    ; preds = %lor.lhs.false374
  %arrayidx383 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom252, !dbg !1848
  %42 = load i8, i8* %arrayidx383, align 1, !dbg !1848
  %conv384 = zext i8 %42 to i32, !dbg !1848
  br label %cond.end385, !dbg !1848

cond.end385:                                      ; preds = %cond.true368, %lor.lhs.false374, %cond.false381
  %cond386 = phi i32 [ %conv384, %cond.false381 ], [ %imode, %lor.lhs.false374 ], [ %imode, %cond.true368 ], !dbg !1848
  br label %cond.end409, !dbg !1848

cond.false389:                                    ; preds = %cond.end361
  br i1 %cmp255, label %cond.end406, label %lor.lhs.false395, !dbg !1848

lor.lhs.false395:                                 ; preds = %cond.false389
  %cmp399 = icmp eq i8 %33, 9, !dbg !1848
  br i1 %cmp399, label %cond.end406, label %cond.false402, !dbg !1848

cond.false402:                                    ; preds = %lor.lhs.false395
  %arrayidx404 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom252, !dbg !1848
  %43 = load i8, i8* %arrayidx404, align 1, !dbg !1848
  %conv405 = zext i8 %43 to i32, !dbg !1848
  br label %cond.end406, !dbg !1848

cond.end406:                                      ; preds = %cond.false389, %lor.lhs.false395, %cond.false402
  %cond407 = phi i32 [ %conv405, %cond.false402 ], [ %imode, %lor.lhs.false395 ], [ %imode, %cond.false389 ], !dbg !1848
  br label %cond.end409, !dbg !1848

cond.end409:                                      ; preds = %cond.end406, %cond.end385
  %cond410.in = phi i32 [ %cond386, %cond.end385 ], [ %cond407, %cond.end406 ]
  %cond410 = add i32 %cond410.in, -38, !dbg !1848
  %idxprom411 = zext i32 %cond410 to i64, !dbg !1848
  %arrayidx412 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom411, !dbg !1848
  %44 = load %struct.real_format*, %struct.real_format** %arrayidx412, align 8, !dbg !1848
  %p413 = getelementptr inbounds %struct.real_format, %struct.real_format* %44, i64 0, i32 3, !dbg !1848
  %45 = load i32, i32* %p413, align 4, !dbg !1848
  %cmp414 = icmp sge i32 %39, %45, !dbg !1848
  %phitmp2 = zext i1 %cmp414 to i8
  br label %land.end

land.end:                                         ; preds = %cond.end409, %lor.lhs.false269
  %46 = phi i8 [ 1, %lor.lhs.false269 ], [ %phitmp2, %cond.end409 ]
  br label %land.end416

land.end416:                                      ; preds = %land.lhs.true83, %land.lhs.true77, %land.lhs.true71, %land.end, %cond.end245, %land.lhs.true65, %land.lhs.true59, %land.lhs.true49, %land.lhs.true42, %land.lhs.true33, %land.lhs.true25, %land.lhs.true, %entry
  %47 = phi i8 [ 0, %cond.end245 ], [ 0, %land.lhs.true83 ], [ 0, %land.lhs.true77 ], [ 0, %land.lhs.true71 ], [ 0, %land.lhs.true65 ], [ 0, %land.lhs.true59 ], [ 0, %land.lhs.true49 ], [ 0, %land.lhs.true42 ], [ 0, %land.lhs.true33 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %46, %land.end ]
  ret i8 %47, !dbg !1849
}

; Function Attrs: nounwind uwtable
define dso_local i64 @real_to_integer(%struct.real_value* %r) local_unnamed_addr #5 !dbg !1850 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1854, metadata !DIExpression()), !dbg !1859
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1860
  %bf.load = load i32, i32* %0, align 8, !dbg !1860
  %bf.clear = and i32 %bf.load, 3, !dbg !1860
  switch i32 %bf.clear, label %sw.default1 [
    i32 0, label %cleanup
    i32 2, label %overflow
    i32 3, label %overflow
    i32 1, label %sw.bb4
  ], !dbg !1861

overflow:                                         ; preds = %if.end14, %entry, %entry
  call void @llvm.dbg.label(metadata !1858), !dbg !1862
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !1855, metadata !DIExpression()), !dbg !1859
  %bf.clear3 = and i32 %bf.load, 8, !dbg !1863
  %tobool = icmp eq i32 %bf.clear3, 0, !dbg !1865
  %spec.select = select i1 %tobool, i64 9223372036854775807, i64 -9223372036854775808, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1855, metadata !DIExpression()), !dbg !1859
  br label %cleanup, !dbg !1867

sw.bb4:                                           ; preds = %entry
  %bf.clear7 = and i32 %bf.load, 4, !dbg !1868
  %tobool8 = icmp eq i32 %bf.clear7, 0, !dbg !1870
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1871

if.then9:                                         ; preds = %sw.bb4
  %call = tail call i64 @decimal_real_to_integer(%struct.real_value* %r) #6, !dbg !1872
  br label %cleanup, !dbg !1873

if.end10:                                         ; preds = %sw.bb4
  %cmp = icmp slt i32 %bf.load, 64, !dbg !1874
  br i1 %cmp, label %cleanup, label %if.end14, !dbg !1876

if.end14:                                         ; preds = %if.end10
  %cmp19 = icmp sgt i32 %bf.load, 4159, !dbg !1877
  br i1 %cmp19, label %overflow, label %if.end21, !dbg !1879

if.end21:                                         ; preds = %if.end14
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !1880
  %1 = load i64, i64* %arrayidx, align 8, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %1, metadata !1855, metadata !DIExpression()), !dbg !1859
  %sub25 = ashr i32 %bf.load, 6, !dbg !1882
  %sub26 = sub nsw i32 64, %sub25, !dbg !1883
  %sh_prom = zext i32 %sub26 to i64, !dbg !1884
  %shr = lshr i64 %1, %sh_prom, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %shr, metadata !1855, metadata !DIExpression()), !dbg !1859
  %bf.clear29 = and i32 %bf.load, 8, !dbg !1885
  %tobool30 = icmp eq i32 %bf.clear29, 0, !dbg !1887
  %sub32 = sub i64 0, %shr, !dbg !1888
  %spec.select2 = select i1 %tobool30, i64 %shr, i64 %sub32, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %spec.select2, metadata !1855, metadata !DIExpression()), !dbg !1859
  br label %cleanup, !dbg !1890

sw.default1:                                      ; preds = %entry
  unreachable

cleanup:                                          ; preds = %if.end10, %entry, %if.end21, %if.then9, %overflow
  %retval.0 = phi i64 [ %call, %if.then9 ], [ %spec.select, %overflow ], [ %spec.select2, %if.end21 ], [ 0, %entry ], [ 0, %if.end10 ], !dbg !1859
  ret i64 %retval.0, !dbg !1891
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local i64 @decimal_real_to_integer(%struct.real_value*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @real_to_integer2(i64* %plow, i64* %phigh, %struct.real_value* %r) local_unnamed_addr #5 !dbg !1892 {
entry:
  %t = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata i64* %plow, metadata !1896, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64* %phigh, metadata !1897, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1898, metadata !DIExpression()), !dbg !1906
  %0 = bitcast %struct.real_value* %t to i8*, !dbg !1907
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !1907
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !1908
  %bf.load = load i32, i32* %1, align 8, !dbg !1908
  %bf.clear = and i32 %bf.load, 3, !dbg !1908
  switch i32 %bf.clear, label %sw.default1 [
    i32 0, label %sw.epilog
    i32 2, label %overflow
    i32 3, label %overflow
    i32 1, label %sw.bb4
  ], !dbg !1909

overflow:                                         ; preds = %if.end14, %entry, %entry
  call void @llvm.dbg.label(metadata !1905), !dbg !1910
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !1901, metadata !DIExpression()), !dbg !1906
  %bf.clear3 = and i32 %bf.load, 8, !dbg !1911
  %tobool = icmp ne i32 %bf.clear3, 0, !dbg !1913
  %not.tobool = xor i1 %tobool, true, !dbg !1914
  %low.0 = sext i1 %not.tobool to i64, !dbg !1914
  %high.0 = select i1 %tobool, i64 -9223372036854775808, i64 9223372036854775807, !dbg !1914
  br label %sw.epilog, !dbg !1914

sw.bb4:                                           ; preds = %entry
  %bf.clear7 = and i32 %bf.load, 4, !dbg !1915
  %tobool8 = icmp eq i32 %bf.clear7, 0, !dbg !1917
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1918

if.then9:                                         ; preds = %sw.bb4
  tail call void @decimal_real_to_integer2(i64* %plow, i64* %phigh, %struct.real_value* %r) #6, !dbg !1919
  br label %cleanup, !dbg !1921

if.end10:                                         ; preds = %sw.bb4
  %sub = ashr i32 %bf.load, 6, !dbg !1922
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1902, metadata !DIExpression()), !dbg !1906
  %cmp = icmp slt i32 %bf.load, 64, !dbg !1923
  br i1 %cmp, label %sw.epilog, label %if.end14, !dbg !1925

if.end14:                                         ; preds = %if.end10
  %cmp15 = icmp sgt i32 %bf.load, 8255, !dbg !1926
  br i1 %cmp15, label %overflow, label %if.end17, !dbg !1928

if.end17:                                         ; preds = %if.end14
  %sub18 = sub nsw i32 128, %sub, !dbg !1929
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !1899, metadata !DIExpression(DW_OP_deref)), !dbg !1906
  call fastcc void @rshift_significand(%struct.real_value* nonnull %t, %struct.real_value* %r, i32 %sub18) #7, !dbg !1930
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %t, i64 0, i32 1, i64 2, !dbg !1931
  %2 = load i64, i64* %arrayidx, align 8, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %2, metadata !1901, metadata !DIExpression()), !dbg !1906
  %arrayidx20 = getelementptr inbounds %struct.real_value, %struct.real_value* %t, i64 0, i32 1, i64 1, !dbg !1934
  %3 = load i64, i64* %arrayidx20, align 8, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %3, metadata !1900, metadata !DIExpression()), !dbg !1906
  %bf.load21 = load i32, i32* %1, align 8, !dbg !1935
  %bf.clear23 = and i32 %bf.load21, 8, !dbg !1935
  %tobool24 = icmp eq i32 %bf.clear23, 0, !dbg !1937
  br i1 %tobool24, label %sw.epilog, label %if.then25, !dbg !1938

if.then25:                                        ; preds = %if.end17
  %cmp26 = icmp eq i64 %3, 0, !dbg !1939
  %sub28 = sub nsw i64 0, %2, !dbg !1942
  %sub30 = sub nsw i64 0, %3, !dbg !1942
  %neg = xor i64 %2, -1, !dbg !1942
  %low.1 = select i1 %cmp26, i64 0, i64 %sub30, !dbg !1942
  %high.1 = select i1 %cmp26, i64 %sub28, i64 %neg, !dbg !1942
  br label %sw.epilog, !dbg !1942

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %if.end17, %if.then25, %if.end10, %overflow, %entry
  %low.3 = phi i64 [ 0, %entry ], [ %low.0, %overflow ], [ 0, %if.end10 ], [ %3, %if.end17 ], [ %low.1, %if.then25 ]
  %high.3 = phi i64 [ 0, %entry ], [ %high.0, %overflow ], [ 0, %if.end10 ], [ %2, %if.end17 ], [ %high.1, %if.then25 ]
  call void @llvm.dbg.value(metadata i64 %high.3, metadata !1901, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %low.3, metadata !1900, metadata !DIExpression()), !dbg !1906
  store i64 %low.3, i64* %plow, align 8, !dbg !1943
  store i64 %high.3, i64* %phigh, align 8, !dbg !1944
  br label %cleanup, !dbg !1945

cleanup:                                          ; preds = %sw.epilog, %if.then9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !1945
  ret void, !dbg !1945
}

declare dso_local void @decimal_real_to_integer2(i64*, i64*, %struct.real_value*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rshift_significand(%struct.real_value* %r, %struct.real_value* %a, i32 %n) unnamed_addr #5 !dbg !1946 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !1950, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !1951, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i32 %n, metadata !1952, metadata !DIExpression()), !dbg !1955
  %div = lshr i32 %n, 6, !dbg !1956
  call void @llvm.dbg.value(metadata i32 %div, metadata !1954, metadata !DIExpression()), !dbg !1955
  %and = and i32 %n, 63, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %and, metadata !1952, metadata !DIExpression()), !dbg !1955
  %cmp = icmp eq i32 %and, 0, !dbg !1958
  call void @llvm.dbg.value(metadata i32 0, metadata !1953, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i32 0, metadata !1953, metadata !DIExpression()), !dbg !1955
  br i1 %cmp, label %for.cond20.preheader, label %for.cond.preheader, !dbg !1960

for.cond.preheader:                               ; preds = %entry
  %sh_prom = zext i32 %and to i64, !dbg !1961
  %sub = sub nuw nsw i32 64, %and, !dbg !1961
  %sh_prom16 = zext i32 %sub to i64, !dbg !1961
  %0 = zext i32 %div to i64, !dbg !1966
  br label %for.cond, !dbg !1966

for.cond20.preheader:                             ; preds = %entry
  %1 = zext i32 %div to i64, !dbg !1967
  br label %for.cond20, !dbg !1967

for.cond:                                         ; preds = %for.cond.preheader, %cond.end14
  %indvars.iv5 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next6, %cond.end14 ], !dbg !1970
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !1953, metadata !DIExpression()), !dbg !1955
  %exitcond9 = icmp eq i64 %indvars.iv5, 3, !dbg !1971
  br i1 %exitcond9, label %if.end.loopexit1, label %for.body, !dbg !1966

for.body:                                         ; preds = %for.cond
  %2 = add nuw nsw i64 %indvars.iv5, %0, !dbg !1972
  %cmp2 = icmp ugt i64 %2, 2, !dbg !1973
  br i1 %cmp2, label %cond.end, label %cond.false, !dbg !1974

cond.false:                                       ; preds = %for.body
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %2, !dbg !1975
  %3 = load i64, i64* %arrayidx, align 8, !dbg !1975
  br label %cond.end, !dbg !1974

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i64 [ %3, %cond.false ], [ 0, %for.body ], !dbg !1974
  %shr = lshr i64 %cond, %sh_prom, !dbg !1976
  %cmp6 = icmp ugt i64 %2, 1, !dbg !1977
  br i1 %cmp6, label %cond.end14, label %cond.false8, !dbg !1978

cond.false8:                                      ; preds = %cond.end
  %4 = add nuw nsw i64 %2, 1, !dbg !1979
  %arrayidx13 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %4, !dbg !1980
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !1980
  br label %cond.end14, !dbg !1978

cond.end14:                                       ; preds = %cond.end, %cond.false8
  %cond15 = phi i64 [ %5, %cond.false8 ], [ 0, %cond.end ], !dbg !1978
  %shl = shl i64 %cond15, %sh_prom16, !dbg !1981
  %or = or i64 %shr, %shl, !dbg !1982
  %arrayidx19 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv5, !dbg !1983
  store i64 %or, i64* %arrayidx19, align 8, !dbg !1984
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i32 undef, metadata !1953, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1955
  br label %for.cond, !dbg !1986, !llvm.loop !1987

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body23
  %indvars.iv2 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next3, %for.body23 ], !dbg !1989
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !1953, metadata !DIExpression()), !dbg !1955
  %6 = add nuw nsw i64 %indvars.iv2, %1, !dbg !1990
  %cmp22 = icmp ult i64 %6, 3, !dbg !1992
  br i1 %cmp22, label %for.body23, label %for.cond34.preheader, !dbg !1967

for.cond34.preheader:                             ; preds = %for.cond20
  %indvars.iv2.lcssa = phi i64 [ %indvars.iv2, %for.cond20 ], !dbg !1989
  call void @llvm.dbg.value(metadata i64 %indvars.iv2.lcssa, metadata !1953, metadata !DIExpression()), !dbg !1955
  %7 = and i64 %indvars.iv2.lcssa, 4294967295, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %indvars.iv2.lcssa, metadata !1953, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %indvars.iv2.lcssa, metadata !1953, metadata !DIExpression()), !dbg !1955
  br label %for.cond34, !dbg !1993

for.body23:                                       ; preds = %for.cond20
  %arrayidx27 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %6, !dbg !1995
  %8 = load i64, i64* %arrayidx27, align 8, !dbg !1995
  %arrayidx30 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv2, !dbg !1996
  store i64 %8, i64* %arrayidx30, align 8, !dbg !1997
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !1998
  call void @llvm.dbg.value(metadata i32 undef, metadata !1953, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1955
  br label %for.cond20, !dbg !1999, !llvm.loop !2000

for.cond34:                                       ; preds = %for.cond34.preheader, %for.body36
  %indvars.iv = phi i64 [ %7, %for.cond34.preheader ], [ %indvars.iv.next, %for.body36 ], !dbg !2002
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1953, metadata !DIExpression()), !dbg !1955
  %exitcond = icmp eq i64 %indvars.iv, 3, !dbg !2003
  br i1 %exitcond, label %if.end.loopexit, label %for.body36, !dbg !1993

for.body36:                                       ; preds = %for.cond34
  %arrayidx39 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv, !dbg !2005
  store i64 0, i64* %arrayidx39, align 8, !dbg !2006
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i32 undef, metadata !1953, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1955
  br label %for.cond34, !dbg !2008, !llvm.loop !2009

if.end.loopexit:                                  ; preds = %for.cond34
  br label %if.end, !dbg !2011

if.end.loopexit1:                                 ; preds = %for.cond
  br label %if.end, !dbg !2011

if.end:                                           ; preds = %if.end.loopexit1, %if.end.loopexit
  ret void, !dbg !2011
}

; Function Attrs: nounwind uwtable
define dso_local void @real_to_decimal_for_mode(i8* %str, %struct.real_value* %r_orig, i64 %buf_size, i64 %digits, i32 %crop_trailing_zeros, i32 %mode) local_unnamed_addr #5 !dbg !2012 {
entry:
  %r = alloca %struct.real_value, align 8
  %pten = alloca %struct.real_value, align 8
  %u = alloca %struct.real_value, align 8
  %v = alloca %struct.real_value, align 8
  %t = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !2016, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %r_orig, metadata !2017, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %buf_size, metadata !2018, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %digits, metadata !2019, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %crop_trailing_zeros, metadata !2020, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2021, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_format* null, metadata !2022, metadata !DIExpression()), !dbg !2053
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !2054
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2054
  %1 = bitcast %struct.real_value* %pten to i8*, !dbg !2054
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2054
  %2 = bitcast %struct.real_value* %u to i8*, !dbg !2054
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #8, !dbg !2054
  %3 = bitcast %struct.real_value* %v to i8*, !dbg !2054
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #8, !dbg !2054
  %cmp = icmp eq i32 %mode, 0, !dbg !2055
  br i1 %cmp, label %if.end, label %if.then, !dbg !2057

if.then:                                          ; preds = %entry
  %cond = add i32 %mode, -38, !dbg !2058
  %idxprom4 = zext i32 %cond to i64, !dbg !2058
  %arrayidx5 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom4, !dbg !2058
  %4 = load %struct.real_format*, %struct.real_format** %arrayidx5, align 8, !dbg !2058
  call void @llvm.dbg.value(metadata %struct.real_format* %4, metadata !2022, metadata !DIExpression()), !dbg !2053
  %tobool = icmp eq %struct.real_format* %4, null, !dbg !2060
  br i1 %tobool, label %cond.true6, label %if.end, !dbg !2060

cond.true6:                                       ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1517, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2060
  br label %if.end, !dbg !2060

if.end:                                           ; preds = %if.then, %entry, %cond.true6
  %fmt.0 = phi %struct.real_format* [ null, %entry ], [ %4, %if.then ], [ null, %cond.true6 ], !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt.0, metadata !2022, metadata !DIExpression()), !dbg !2053
  %5 = bitcast %struct.real_value* %r_orig to i8*, !dbg !2061
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %5, i64 32, i1 false), !dbg !2061
  %6 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !2062
  %bf.load = load i32, i32* %6, align 8, !dbg !2062
  %bf.clear = and i32 %bf.load, 3, !dbg !2062
  switch i32 %bf.clear, label %sw.default1 [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
    i32 2, label %sw.bb14
    i32 3, label %sw.bb21
  ], !dbg !2063

sw.bb:                                            ; preds = %if.end
  %bf.clear11 = and i32 %bf.load, 8, !dbg !2064
  %tobool12 = icmp eq i32 %bf.clear11, 0, !dbg !2066
  %cond13 = select i1 %tobool12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), !dbg !2066
  %call = tail call i8* @strcpy(i8* %str, i8* %cond13) #6, !dbg !2067
  br label %cleanup, !dbg !2068

sw.bb14:                                          ; preds = %if.end
  %bf.clear17 = and i32 %bf.load, 8, !dbg !2069
  %tobool18 = icmp eq i32 %bf.clear17, 0, !dbg !2070
  %cond19 = select i1 %tobool18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !2070
  %call20 = tail call i8* @strcpy(i8* %str, i8* %cond19) #6, !dbg !2071
  br label %cleanup, !dbg !2072

sw.bb21:                                          ; preds = %if.end
  %7 = getelementptr inbounds %struct.real_value, %struct.real_value* %r_orig, i64 0, i32 0, !dbg !2073
  %bf.load22 = load i32, i32* %7, align 8, !dbg !2073
  %bf.clear24 = and i32 %bf.load22, 8, !dbg !2073
  %tobool25 = icmp eq i32 %bf.clear24, 0, !dbg !2074
  %cond26 = select i1 %tobool25, i32 43, i32 45, !dbg !2074
  %bf.clear29 = and i32 %bf.load22, 16, !dbg !2075
  %tobool30 = icmp eq i32 %bf.clear29, 0, !dbg !2076
  %cond31 = select i1 %tobool30, i32 81, i32 83, !dbg !2076
  %call32 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %cond26, i32 %cond31) #6, !dbg !2077
  br label %cleanup, !dbg !2078

sw.default1:                                      ; preds = %if.end
  unreachable

sw.epilog:                                        ; preds = %if.end
  %bf.clear35 = and i32 %bf.load, 4, !dbg !2079
  %tobool36 = icmp eq i32 %bf.clear35, 0, !dbg !2081
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !2082

if.then37:                                        ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @decimal_real_to_decimal(i8* %str, %struct.real_value* nonnull %r, i64 %buf_size, i64 %digits, i32 %crop_trailing_zeros) #6, !dbg !2083
  br label %cleanup, !dbg !2085

if.end38:                                         ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata i64 57, metadata !2032, metadata !DIExpression()), !dbg !2053
  %8 = add i64 %digits, -1, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %digits.addr.0, metadata !2019, metadata !DIExpression()), !dbg !2053
  %sub47 = ashr i32 %bf.load, 6, !dbg !2088
  %conv48 = sitofp i32 %sub47 to double, !dbg !2088
  %mul = fmul double %conv48, 0x3FD34413509F79FF, !dbg !2089
  %conv49 = fptosi double %mul to i32, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %conv49, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 1, metadata !2032, metadata !DIExpression()), !dbg !2053
  br label %for.cond, !dbg !2090

for.cond:                                         ; preds = %for.body, %if.end38
  %dec_exp.0 = phi i32 [ %conv49, %if.end38 ], [ %div, %for.body ], !dbg !2053
  %max_digits.0 = phi i64 [ 1, %if.end38 ], [ %inc, %for.body ], !dbg !2092
  call void @llvm.dbg.value(metadata i64 %max_digits.0, metadata !2032, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.0, metadata !2029, metadata !DIExpression()), !dbg !2053
  %tobool50 = icmp eq i32 %dec_exp.0, 0, !dbg !2093
  br i1 %tobool50, label %for.end, label %for.body, !dbg !2093

for.body:                                         ; preds = %for.cond
  %div = sdiv i32 %dec_exp.0, 10, !dbg !2094
  call void @llvm.dbg.value(metadata i32 %div, metadata !2029, metadata !DIExpression()), !dbg !2053
  %inc = add i64 %max_digits.0, 1, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2032, metadata !DIExpression()), !dbg !2053
  br label %for.cond, !dbg !2097, !llvm.loop !2098

for.end:                                          ; preds = %for.cond
  %max_digits.0.lcssa = phi i64 [ %max_digits.0, %for.cond ], !dbg !2092
  %9 = icmp ugt i64 %8, 56, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %max_digits.0.lcssa, metadata !2032, metadata !DIExpression()), !dbg !2053
  %digits.addr.0 = select i1 %9, i64 57, i64 %digits, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %max_digits.0.lcssa, metadata !2032, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %max_digits.0.lcssa, metadata !2032, metadata !DIExpression()), !dbg !2053
  %sub53 = add i64 %buf_size, -4, !dbg !2100
  %10 = xor i64 %max_digits.0.lcssa, -1, !dbg !2101
  %sub55 = add i64 %sub53, %10, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %sub55, metadata !2032, metadata !DIExpression()), !dbg !2053
  %cmp56 = icmp ugt i64 %sub55, %buf_size, !dbg !2102
  br i1 %cmp56, label %cond.true58, label %cond.end60, !dbg !2102

cond.true58:                                      ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1560, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2102
  br label %cond.end60, !dbg !2102

cond.end60:                                       ; preds = %for.end, %cond.true58
  %cmp62 = icmp ugt i64 %digits.addr.0, %sub55, !dbg !2103
  %spec.select = select i1 %cmp62, i64 %sub55, i64 %digits.addr.0, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2019, metadata !DIExpression()), !dbg !2053
  %call66 = tail call fastcc %struct.real_value* @real_digit(i32 1) #7, !dbg !2106
  call void @llvm.dbg.value(metadata %struct.real_value* %call66, metadata !2023, metadata !DIExpression()), !dbg !2053
  %call67 = tail call fastcc %struct.real_value* @ten_to_ptwo(i32 0) #7, !dbg !2107
  call void @llvm.dbg.value(metadata %struct.real_value* %call67, metadata !2024, metadata !DIExpression()), !dbg !2053
  %bf.clear73 = and i32 %bf.load, -9, !dbg !2108
  store i32 %bf.clear73, i32* %6, align 8, !dbg !2108
  call void @llvm.dbg.value(metadata i32 0, metadata !2029, metadata !DIExpression()), !dbg !2053
  %11 = bitcast %struct.real_value* %call66 to i8*, !dbg !2109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* align 8 %11, i64 32, i1 false), !dbg !2109
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call74 = call fastcc i32 @do_compare(%struct.real_value* nonnull %r, %struct.real_value* %call66, i32 0) #7, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %call74, metadata !2030, metadata !DIExpression()), !dbg !2053
  %cmp75 = icmp sgt i32 %call74, 0, !dbg !2111
  br i1 %cmp75, label %if.then77, label %if.end138, !dbg !2112

if.then77:                                        ; preds = %cond.end60
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %0, i64 32, i1 false), !dbg !2113
  %12 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 0, !dbg !2114
  %bf.load78 = load i32, i32* %12, align 8, !dbg !2114
  %bf.clear79 = and i32 %bf.load78, 63, !dbg !2114
  %bf.set = or i32 %bf.clear79, 12224, !dbg !2114
  store i32 %bf.set, i32* %12, align 8, !dbg !2114
  %call80 = call i32 @floor_log2(i64 %sub55) #6, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %call80, metadata !2038, metadata !DIExpression()), !dbg !2116
  %13 = bitcast %struct.real_value* %t to i8*, !dbg !2117
  br label %do.body, !dbg !2118

do.body:                                          ; preds = %if.end88, %if.then77
  %dec_exp.1 = phi i32 [ 0, %if.then77 ], [ %dec_exp.2, %if.end88 ], !dbg !2053
  %m.0 = phi i32 [ %call80, %if.then77 ], [ %dec, %if.end88 ], !dbg !2116
  call void @llvm.dbg.value(metadata i32 %m.0, metadata !2038, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i32 %dec_exp.1, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #8, !dbg !2119
  %call81 = call fastcc %struct.real_value* @ten_to_ptwo(i32 %m.0) #7, !dbg !2120
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !2027, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !2041, metadata !DIExpression(DW_OP_deref)), !dbg !2117
  %call82 = call fastcc zeroext i8 @do_divide(%struct.real_value* nonnull %t, %struct.real_value* nonnull %u, %struct.real_value* %call81) #7, !dbg !2121
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !2028, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !2041, metadata !DIExpression(DW_OP_deref)), !dbg !2117
  call fastcc void @do_fix_trunc(%struct.real_value* nonnull %v, %struct.real_value* nonnull %t) #7, !dbg !2122
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !2028, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !2041, metadata !DIExpression(DW_OP_deref)), !dbg !2117
  %call83 = call fastcc i32 @cmp_significands(%struct.real_value* nonnull %v, %struct.real_value* nonnull %t) #7, !dbg !2123
  %cmp84 = icmp eq i32 %call83, 0, !dbg !2125
  br i1 %cmp84, label %if.then86, label %if.end88, !dbg !2126

if.then86:                                        ; preds = %do.body
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %13, i64 32, i1 false), !dbg !2127
  %shl = shl i32 1, %m.0, !dbg !2129
  %add87 = add nsw i32 %dec_exp.1, %shl, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %add87, metadata !2029, metadata !DIExpression()), !dbg !2053
  br label %if.end88, !dbg !2131

if.end88:                                         ; preds = %if.then86, %do.body
  %dec_exp.2 = phi i32 [ %add87, %if.then86 ], [ %dec_exp.1, %do.body ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.2, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #8, !dbg !2132
  %dec = add nsw i32 %m.0, -1, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2038, metadata !DIExpression()), !dbg !2116
  %cmp89 = icmp sgt i32 %m.0, 0, !dbg !2134
  br i1 %cmp89, label %do.body, label %do.end, !dbg !2135, !llvm.loop !2136

do.end:                                           ; preds = %if.end88
  %dec_exp.2.lcssa = phi i32 [ %dec_exp.2, %if.end88 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.2.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.2.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.2.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  %bf.load91 = load i32, i32* %12, align 8, !dbg !2138
  %14 = and i32 %bf.load91, -64, !dbg !2138
  %bf.load95 = load i32, i32* %6, align 8, !dbg !2138
  %15 = add i32 %14, %bf.load95, !dbg !2138
  %sub1007 = add i32 %15, -12224, !dbg !2138
  %bf.shl = and i32 %sub1007, -64, !dbg !2138
  %bf.clear102 = and i32 %bf.load91, 63, !dbg !2138
  %bf.set103 = or i32 %bf.clear102, %bf.shl, !dbg !2138
  store i32 %bf.set103, i32* %12, align 8, !dbg !2138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 32, i1 false), !dbg !2139
  %bf.load104 = load i32, i32* %6, align 8, !dbg !2140
  %cmp108 = icmp sgt i32 %bf.load104, 63, !dbg !2141
  br i1 %cmp108, label %if.then110, label %if.end138, !dbg !2142

if.then110:                                       ; preds = %do.end
  %sub114 = ashr i32 %bf.load104, 6, !dbg !2143
  %conv115 = sitofp i32 %sub114 to double, !dbg !2143
  %mul116 = fmul double %conv115, 0x3FD34413509F79FF, !dbg !2144
  %conv117 = fptosi double %mul116 to i32, !dbg !2145
  %conv118 = sext i32 %conv117 to i64, !dbg !2145
  %call119 = call i32 @floor_log2(i64 %conv118) #6, !dbg !2146
  %add120 = add nsw i32 %call119, 1, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %add120, metadata !2038, metadata !DIExpression()), !dbg !2116
  br label %do.body121, !dbg !2148

do.body121:                                       ; preds = %do.cond132, %if.then110
  %dec_exp.3 = phi i32 [ %dec_exp.2.lcssa, %if.then110 ], [ %dec_exp.4, %do.cond132 ], !dbg !2116
  %m.1 = phi i32 [ %add120, %if.then110 ], [ %dec133, %do.cond132 ], !dbg !2149
  call void @llvm.dbg.value(metadata i32 %m.1, metadata !2038, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i32 %dec_exp.3, metadata !2029, metadata !DIExpression()), !dbg !2053
  %call122 = call fastcc %struct.real_value* @ten_to_ptwo(i32 %m.1) #7, !dbg !2150
  call void @llvm.dbg.value(metadata %struct.real_value* %call122, metadata !2043, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !2027, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call123 = call fastcc i32 @do_compare(%struct.real_value* nonnull %u, %struct.real_value* %call122, i32 0) #7, !dbg !2152
  %cmp124 = icmp sgt i32 %call123, -1, !dbg !2154
  br i1 %cmp124, label %if.then126, label %do.cond132, !dbg !2155

if.then126:                                       ; preds = %do.body121
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !2027, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !2027, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call127 = call fastcc zeroext i8 @do_divide(%struct.real_value* nonnull %u, %struct.real_value* nonnull %u, %struct.real_value* %call122) #7, !dbg !2156
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2026, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2026, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call128 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %pten, %struct.real_value* nonnull %pten, %struct.real_value* %call122) #7, !dbg !2158
  %shl129 = shl i32 1, %m.1, !dbg !2159
  %add130 = add nsw i32 %dec_exp.3, %shl129, !dbg !2160
  call void @llvm.dbg.value(metadata i32 %add130, metadata !2029, metadata !DIExpression()), !dbg !2053
  br label %do.cond132, !dbg !2161

do.cond132:                                       ; preds = %do.body121, %if.then126
  %dec_exp.4 = phi i32 [ %add130, %if.then126 ], [ %dec_exp.3, %do.body121 ], !dbg !2116
  call void @llvm.dbg.value(metadata i32 %dec_exp.4, metadata !2029, metadata !DIExpression()), !dbg !2053
  %dec133 = add nsw i32 %m.1, -1, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %dec133, metadata !2038, metadata !DIExpression()), !dbg !2116
  %cmp134 = icmp sgt i32 %m.1, 0, !dbg !2163
  br i1 %cmp134, label %do.body121, label %if.end138.loopexit, !dbg !2164, !llvm.loop !2165

if.end138.loopexit:                               ; preds = %do.cond132
  %dec_exp.4.lcssa = phi i32 [ %dec_exp.4, %do.cond132 ], !dbg !2116
  call void @llvm.dbg.value(metadata i32 %dec_exp.4.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.4.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.4.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  br label %if.end138, !dbg !2167

if.end138:                                        ; preds = %if.end138.loopexit, %do.end, %cond.end60
  %cmp_one.1 = phi i32 [ %call74, %cond.end60 ], [ -1, %do.end ], [ %call74, %if.end138.loopexit ], !dbg !2168
  %dec_exp.6 = phi i32 [ 0, %cond.end60 ], [ %dec_exp.2.lcssa, %do.end ], [ %dec_exp.4.lcssa, %if.end138.loopexit ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.6, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %cmp_one.1, metadata !2030, metadata !DIExpression()), !dbg !2053
  %cmp139 = icmp slt i32 %cmp_one.1, 0, !dbg !2167
  br i1 %cmp139, label %if.then141, label %if.end188, !dbg !2169

if.then141:                                       ; preds = %if.end138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %0, i64 32, i1 false), !dbg !2170
  %arrayidx143 = getelementptr inbounds %struct.real_value, %struct.real_value* %v, i64 0, i32 1, i64 0, !dbg !2171
  %16 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 0, !dbg !2174
  br label %while.cond, !dbg !2176

while.cond:                                       ; preds = %if.end156, %if.then141
  %dec_exp.7 = phi i32 [ %dec_exp.6, %if.then141 ], [ %sub157, %if.end156 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.7, metadata !2029, metadata !DIExpression()), !dbg !2053
  %17 = load i64, i64* %arrayidx143, align 8, !dbg !2177
  %and144 = and i64 %17, 7, !dbg !2178
  %tobool145 = icmp eq i64 %and144, 0, !dbg !2178
  br i1 %tobool145, label %if.end147, label %while.end, !dbg !2179

if.end147:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !2027, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !2028, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call148 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %u, %struct.real_value* nonnull %v, %struct.real_value* %call67) #7, !dbg !2180
  %bf.load149 = load i32, i32* %16, align 8, !dbg !2181
  %cmp153 = icmp sgt i32 %bf.load149, 63, !dbg !2182
  br i1 %cmp153, label %while.end, label %if.end156, !dbg !2183

if.end156:                                        ; preds = %if.end147
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %2, i64 32, i1 false), !dbg !2184
  %sub157 = add nsw i32 %dec_exp.7, -1, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %sub157, metadata !2029, metadata !DIExpression()), !dbg !2053
  br label %while.cond, !dbg !2176, !llvm.loop !2186

while.end:                                        ; preds = %while.cond, %if.end147
  %dec_exp.7.lcssa = phi i32 [ %dec_exp.7, %while.cond ], [ %dec_exp.7, %if.end147 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.7.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.7.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.7.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.7.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.7.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.7.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %3, i64 32, i1 false), !dbg !2188
  %bf.load158 = load i32, i32* %6, align 8, !dbg !2189
  %sub161 = ashr i32 %bf.load158, 6, !dbg !2189
  %sub162 = sub nsw i32 0, %sub161, !dbg !2190
  %conv163 = sitofp i32 %sub162 to double, !dbg !2190
  %mul164 = fmul double %conv163, 0x3FD34413509F79FF, !dbg !2191
  %conv165 = fptosi double %mul164 to i32, !dbg !2192
  %conv166 = sext i32 %conv165 to i64, !dbg !2192
  %call167 = call i32 @floor_log2(i64 %conv166) #6, !dbg !2193
  %add168 = add nsw i32 %call167, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %add168, metadata !2047, metadata !DIExpression()), !dbg !2195
  br label %do.body169, !dbg !2196

do.body169:                                       ; preds = %do.cond182, %while.end
  %dec_exp.8 = phi i32 [ %dec_exp.7.lcssa, %while.end ], [ %dec_exp.9, %do.cond182 ], !dbg !2053
  %m142.0 = phi i32 [ %add168, %while.end ], [ %dec183, %do.cond182 ], !dbg !2195
  call void @llvm.dbg.value(metadata i32 %m142.0, metadata !2047, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i32 %dec_exp.8, metadata !2029, metadata !DIExpression()), !dbg !2053
  %call171 = call fastcc %struct.real_value* @ten_to_ptwo(i32 %m142.0) #7, !dbg !2197
  call void @llvm.dbg.value(metadata %struct.real_value* %call171, metadata !2050, metadata !DIExpression()), !dbg !2198
  %call172 = call fastcc %struct.real_value* @ten_to_mptwo(i32 %m142.0) #7, !dbg !2199
  call void @llvm.dbg.value(metadata %struct.real_value* %call172, metadata !2052, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !2028, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call173 = call fastcc i32 @do_compare(%struct.real_value* nonnull %v, %struct.real_value* %call172, i32 0) #7, !dbg !2200
  %cmp174 = icmp slt i32 %call173, 1, !dbg !2202
  br i1 %cmp174, label %if.then176, label %do.cond182, !dbg !2203

if.then176:                                       ; preds = %do.body169
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !2028, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !2028, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call177 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %v, %struct.real_value* nonnull %v, %struct.real_value* %call171) #7, !dbg !2204
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2026, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2026, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call178 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %pten, %struct.real_value* nonnull %pten, %struct.real_value* %call171) #7, !dbg !2206
  %shl179 = shl i32 1, %m142.0, !dbg !2207
  %sub180 = sub nsw i32 %dec_exp.8, %shl179, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %sub180, metadata !2029, metadata !DIExpression()), !dbg !2053
  br label %do.cond182, !dbg !2209

do.cond182:                                       ; preds = %do.body169, %if.then176
  %dec_exp.9 = phi i32 [ %sub180, %if.then176 ], [ %dec_exp.8, %do.body169 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.9, metadata !2029, metadata !DIExpression()), !dbg !2053
  %dec183 = add nsw i32 %m142.0, -1, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %dec183, metadata !2047, metadata !DIExpression()), !dbg !2195
  %cmp184 = icmp sgt i32 %m142.0, 0, !dbg !2211
  br i1 %cmp184, label %do.body169, label %do.end186, !dbg !2212, !llvm.loop !2213

do.end186:                                        ; preds = %do.cond182
  %dec_exp.9.lcssa = phi i32 [ %dec_exp.9, %do.cond182 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.9.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.9.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.9.lcssa, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2026, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2026, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call187 = call fastcc zeroext i8 @do_divide(%struct.real_value* nonnull %pten, %struct.real_value* %call66, %struct.real_value* nonnull %pten) #7, !dbg !2215
  br label %if.end188, !dbg !2216

if.end188:                                        ; preds = %do.end186, %if.end138
  %dec_exp.10 = phi i32 [ %dec_exp.9.lcssa, %do.end186 ], [ %dec_exp.6, %if.end138 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.10, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8* %str, metadata !2033, metadata !DIExpression()), !dbg !2053
  %conv714 = and i32 %bf.load, 8, !dbg !2217
  %tobool189 = icmp eq i32 %conv714, 0, !dbg !2217
  br i1 %tobool189, label %if.end191, label %if.then190, !dbg !2219

if.then190:                                       ; preds = %if.end188
  %incdec.ptr = getelementptr inbounds i8, i8* %str, i64 1, !dbg !2220
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2033, metadata !DIExpression()), !dbg !2053
  store i8 45, i8* %str, align 1, !dbg !2221
  br label %if.end191, !dbg !2222

if.end191:                                        ; preds = %if.end188, %if.then190
  %p.0 = phi i8* [ %incdec.ptr, %if.then190 ], [ %str, %if.end188 ], !dbg !2053
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2033, metadata !DIExpression()), !dbg !2053
  %incdec.ptr192.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !2053
  call void @llvm.dbg.value(metadata i8* %incdec.ptr192.ptr, metadata !2033, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2034, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2026, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call193 = call fastcc i64 @rtd_divmod(%struct.real_value* nonnull %r, %struct.real_value* nonnull %pten) #7, !dbg !2223
  %conv194 = trunc i64 %call193 to i32, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %conv194, metadata !2031, metadata !DIExpression()), !dbg !2053
  %cmp195 = icmp eq i32 %conv194, 0, !dbg !2224
  br i1 %cmp195, label %land.lhs.true, label %if.end210, !dbg !2226

land.lhs.true:                                    ; preds = %if.end191
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call197 = call fastcc i32 @cmp_significand_0(%struct.real_value* nonnull %r) #7, !dbg !2227
  %tobool198 = icmp eq i32 %call197, 0, !dbg !2227
  br i1 %tobool198, label %if.end210, label %if.then199, !dbg !2228

if.then199:                                       ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call200 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %r, %struct.real_value* nonnull %r, %struct.real_value* %call67) #7, !dbg !2229
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2026, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call201 = call fastcc i64 @rtd_divmod(%struct.real_value* nonnull %r, %struct.real_value* nonnull %pten) #7, !dbg !2231
  %conv202 = trunc i64 %call201 to i32, !dbg !2231
  call void @llvm.dbg.value(metadata i32 %conv202, metadata !2031, metadata !DIExpression()), !dbg !2053
  %sub203 = add nsw i32 %dec_exp.10, -1, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %sub203, metadata !2029, metadata !DIExpression()), !dbg !2053
  %cmp204 = icmp eq i32 %conv202, 0, !dbg !2233
  br i1 %cmp204, label %cond.true206, label %if.end210, !dbg !2233

cond.true206:                                     ; preds = %if.then199
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1703, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2233
  br label %if.end210, !dbg !2233

if.end210:                                        ; preds = %if.then199, %land.lhs.true, %cond.true206, %if.end191
  %digit.0 = phi i32 [ 0, %land.lhs.true ], [ %conv194, %if.end191 ], [ %conv202, %if.then199 ], [ 0, %cond.true206 ], !dbg !2053
  %dec_exp.11 = phi i32 [ %dec_exp.10, %land.lhs.true ], [ %dec_exp.10, %if.end191 ], [ %sub203, %if.then199 ], [ %sub203, %cond.true206 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.11, metadata !2029, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %digit.0, metadata !2031, metadata !DIExpression()), !dbg !2053
  %cmp211 = icmp eq i32 %digit.0, 10, !dbg !2234
  br i1 %cmp211, label %if.then213, label %if.else222, !dbg !2236

if.then213:                                       ; preds = %if.end210
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2033, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2053
  store i8 49, i8* %incdec.ptr192.ptr, align 1, !dbg !2237
  %dec215 = add i64 %spec.select, -1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %dec215, metadata !2019, metadata !DIExpression()), !dbg !2053
  %cmp216 = icmp eq i64 %dec215, 0, !dbg !2241
  br i1 %cmp216, label %if.end220, label %if.then218, !dbg !2242

if.then218:                                       ; preds = %if.then213
  %incdec.ptr214.ptr = getelementptr inbounds i8, i8* %p.0, i64 2, !dbg !2053
  call void @llvm.dbg.value(metadata i8* %incdec.ptr214.ptr, metadata !2033, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2033, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !2053
  store i8 48, i8* %incdec.ptr214.ptr, align 1, !dbg !2243
  br label %if.end220, !dbg !2244

if.end220:                                        ; preds = %if.then213, %if.then218
  %p.1.idx = phi i64 [ 3, %if.then218 ], [ 2, %if.then213 ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !2033, metadata !DIExpression()), !dbg !2053
  %add221 = add nsw i32 %dec_exp.11, 1, !dbg !2245
  call void @llvm.dbg.value(metadata i32 %add221, metadata !2029, metadata !DIExpression()), !dbg !2053
  br label %if.end232, !dbg !2246

if.else222:                                       ; preds = %if.end210
  %cmp223 = icmp slt i32 %digit.0, 11, !dbg !2247
  br i1 %cmp223, label %cond.end227, label %cond.true225, !dbg !2247

cond.true225:                                     ; preds = %if.else222
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1716, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2247
  br label %cond.end227, !dbg !2247

cond.end227:                                      ; preds = %if.else222, %cond.true225
  %18 = trunc i32 %digit.0 to i8, !dbg !2249
  %conv230 = add i8 %18, 48, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2033, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2053
  store i8 %conv230, i8* %incdec.ptr192.ptr, align 1, !dbg !2250
  br label %if.end232

if.end232:                                        ; preds = %cond.end227, %if.end220
  %dec_exp.12 = phi i32 [ %add221, %if.end220 ], [ %dec_exp.11, %cond.end227 ], !dbg !2053
  %p.2.idx = phi i64 [ %p.1.idx, %if.end220 ], [ 2, %cond.end227 ]
  %digits.addr.2 = phi i64 [ %dec215, %if.end220 ], [ %spec.select, %cond.end227 ], !dbg !2053
  call void @llvm.dbg.value(metadata i64 %digits.addr.2, metadata !2019, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.12, metadata !2029, metadata !DIExpression()), !dbg !2053
  br label %while.cond233, !dbg !2251

while.cond233:                                    ; preds = %while.body237, %if.end232
  %p.3.idx = phi i64 [ %p.2.idx, %if.end232 ], [ %p.3.add, %while.body237 ]
  %digits.addr.3 = phi i64 [ %digits.addr.2, %if.end232 ], [ %dec234, %while.body237 ], !dbg !2053
  %p.3.ptr = getelementptr inbounds i8, i8* %p.0, i64 %p.3.idx, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %digits.addr.3, metadata !2019, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8* %p.3.ptr, metadata !2033, metadata !DIExpression()), !dbg !2053
  %dec234 = add i64 %digits.addr.3, -1, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %dec234, metadata !2019, metadata !DIExpression()), !dbg !2053
  %cmp235 = icmp eq i64 %dec234, 0, !dbg !2253
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call238 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %r, %struct.real_value* nonnull %r, %struct.real_value* %call67) #7, !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2026, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call239 = call fastcc i64 @rtd_divmod(%struct.real_value* nonnull %r, %struct.real_value* nonnull %pten) #7, !dbg !2053
  br i1 %cmp235, label %while.end244, label %while.body237, !dbg !2251

while.body237:                                    ; preds = %while.cond233
  %19 = trunc i64 %call239 to i8, !dbg !2254
  %conv242 = add i8 %19, 48, !dbg !2254
  %p.3.add = add nuw nsw i64 %p.3.idx, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i8* undef, metadata !2033, metadata !DIExpression()), !dbg !2053
  store i8 %conv242, i8* %p.3.ptr, align 1, !dbg !2257
  br label %while.cond233, !dbg !2251, !llvm.loop !2258

while.end244:                                     ; preds = %while.cond233
  %p.3.idx.lcssa = phi i64 [ %p.3.idx, %while.cond233 ]
  %p.3.ptr.lcssa = phi i8* [ %p.3.ptr, %while.cond233 ], !dbg !2053
  %call239.lcssa = phi i64 [ %call239, %while.cond233 ], !dbg !2053
  %conv240.le = trunc i64 %call239.lcssa to i32, !dbg !2053
  call void @llvm.dbg.value(metadata i8* %p.3.ptr.lcssa, metadata !2035, metadata !DIExpression()), !dbg !2053
  %tobool248 = icmp eq %struct.real_format* %fmt.0, null, !dbg !2260
  br i1 %tobool248, label %if.else261, label %land.lhs.true249, !dbg !2262

land.lhs.true249:                                 ; preds = %while.end244
  %round_towards_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt.0, i64 0, i32 9, !dbg !2263
  %20 = load i8, i8* %round_towards_zero, align 4, !dbg !2263
  %tobool251 = icmp eq i8 %20, 0, !dbg !2264
  br i1 %tobool251, label %if.else261, label %if.then252, !dbg !2265

if.then252:                                       ; preds = %land.lhs.true249
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call253 = call fastcc i32 @cmp_significand_0(%struct.real_value* nonnull %r) #7, !dbg !2266
  %tobool254 = icmp ne i32 %call253, 0, !dbg !2266
  %inc256 = zext i1 %tobool254 to i32, !dbg !2269
  %spec.select2 = add nsw i32 %inc256, %conv240.le, !dbg !2269
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !2031, metadata !DIExpression()), !dbg !2053
  %cmp258 = icmp sgt i32 %spec.select2, 0, !dbg !2270
  call void @llvm.dbg.value(metadata i1 %cmp258, metadata !2037, metadata !DIExpression()), !dbg !2053
  br label %if.end283, !dbg !2271

if.else261:                                       ; preds = %land.lhs.true249, %while.end244
  %cmp262 = icmp eq i32 %conv240.le, 5, !dbg !2272
  br i1 %cmp262, label %if.then264, label %if.end279, !dbg !2275

if.then264:                                       ; preds = %if.else261
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %call265 = call fastcc i32 @cmp_significand_0(%struct.real_value* nonnull %r) #7, !dbg !2276
  %tobool266 = icmp eq i32 %call265, 0, !dbg !2276
  br i1 %tobool266, label %if.else269, label %if.then267, !dbg !2279

if.then267:                                       ; preds = %if.then264
  call void @llvm.dbg.value(metadata i32 6, metadata !2031, metadata !DIExpression()), !dbg !2053
  br label %if.end279, !dbg !2280

if.else269:                                       ; preds = %if.then264
  %arrayidx270 = getelementptr inbounds i8, i8* %p.3.ptr.lcssa, i64 -1, !dbg !2281
  %21 = load i8, i8* %arrayidx270, align 1, !dbg !2281
  %22 = and i8 %21, 1, !dbg !2283
  %narrow = add nuw nsw i8 %22, 5, !dbg !2284
  %spec.select3 = zext i8 %narrow to i32, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %spec.select3, metadata !2031, metadata !DIExpression()), !dbg !2053
  br label %if.end279

if.end279:                                        ; preds = %if.then267, %if.else269, %if.else261
  %digit.4 = phi i32 [ %conv240.le, %if.else261 ], [ 6, %if.then267 ], [ %spec.select3, %if.else269 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %digit.4, metadata !2031, metadata !DIExpression()), !dbg !2053
  %cmp280 = icmp sgt i32 %digit.4, 5, !dbg !2285
  call void @llvm.dbg.value(metadata i1 %cmp280, metadata !2037, metadata !DIExpression()), !dbg !2053
  br label %if.end283

if.end283:                                        ; preds = %if.end279, %if.then252
  %round_up.0.in = phi i1 [ %cmp258, %if.then252 ], [ %cmp280, %if.end279 ]
  call void @llvm.dbg.value(metadata i1 %round_up.0.in, metadata !2037, metadata !DIExpression()), !dbg !2053
  br i1 %round_up.0.in, label %while.cond286.preheader, label %if.end306, !dbg !2286

while.cond286.preheader:                          ; preds = %if.end283
  br label %while.cond286, !dbg !2287

while.cond286:                                    ; preds = %while.cond286.preheader, %if.then294
  %p.4 = phi i8* [ %incdec.ptr290, %if.then294 ], [ %p.3.ptr.lcssa, %while.cond286.preheader ], !dbg !2053
  call void @llvm.dbg.value(metadata i8* %p.4, metadata !2033, metadata !DIExpression()), !dbg !2053
  %cmp287 = icmp ugt i8* %p.4, %p.0, !dbg !2290
  br i1 %cmp287, label %while.body289, label %while.end299.loopexit, !dbg !2287

while.body289:                                    ; preds = %while.cond286
  %incdec.ptr290 = getelementptr inbounds i8, i8* %p.4, i64 -1, !dbg !2291
  call void @llvm.dbg.value(metadata i8* %incdec.ptr290, metadata !2033, metadata !DIExpression()), !dbg !2053
  %23 = load i8, i8* %incdec.ptr290, align 1, !dbg !2293
  call void @llvm.dbg.value(metadata i32 undef, metadata !2031, metadata !DIExpression()), !dbg !2053
  %cmp292 = icmp eq i8 %23, 57, !dbg !2294
  br i1 %cmp292, label %if.then294, label %if.else295, !dbg !2296

if.then294:                                       ; preds = %while.body289
  store i8 48, i8* %incdec.ptr290, align 1, !dbg !2297
  br label %while.cond286, !dbg !2287, !llvm.loop !2298

if.else295:                                       ; preds = %while.body289
  %incdec.ptr290.lcssa = phi i8* [ %incdec.ptr290, %while.body289 ], !dbg !2291
  %.lcssa = phi i8 [ %23, %while.body289 ], !dbg !2293
  %add296 = add i8 %.lcssa, 1, !dbg !2300
  store i8 %add296, i8* %incdec.ptr290.lcssa, align 1, !dbg !2302
  br label %while.end299, !dbg !2303

while.end299.loopexit:                            ; preds = %while.cond286
  %p.4.lcssa = phi i8* [ %p.4, %while.cond286 ], !dbg !2053
  call void @llvm.dbg.value(metadata i8* %p.4.lcssa, metadata !2033, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8* %p.4.lcssa, metadata !2033, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8* %p.4.lcssa, metadata !2033, metadata !DIExpression()), !dbg !2053
  br label %while.end299, !dbg !2304

while.end299:                                     ; preds = %while.end299.loopexit, %if.else295
  %p.5 = phi i8* [ %incdec.ptr290.lcssa, %if.else295 ], [ %p.4.lcssa, %while.end299.loopexit ], !dbg !2053
  call void @llvm.dbg.value(metadata i8* %p.5, metadata !2033, metadata !DIExpression()), !dbg !2053
  %cmp300 = icmp eq i8* %p.5, %p.0, !dbg !2304
  br i1 %cmp300, label %if.then302, label %if.end306, !dbg !2306

if.then302:                                       ; preds = %while.end299
  store i8 49, i8* %incdec.ptr192.ptr, align 1, !dbg !2307
  %inc304 = add nsw i32 %dec_exp.12, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i32 %inc304, metadata !2029, metadata !DIExpression()), !dbg !2053
  br label %if.end306, !dbg !2310

if.end306:                                        ; preds = %if.end283, %while.end299, %if.then302
  %dec_exp.14 = phi i32 [ %dec_exp.12, %if.end283 ], [ %inc304, %if.then302 ], [ %dec_exp.12, %while.end299 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %dec_exp.14, metadata !2029, metadata !DIExpression()), !dbg !2053
  %24 = load i8, i8* %incdec.ptr192.ptr, align 1, !dbg !2311
  store i8 %24, i8* %p.0, align 1, !dbg !2312
  store i8 46, i8* %incdec.ptr192.ptr, align 1, !dbg !2313
  %tobool310 = icmp eq i32 %crop_trailing_zeros, 0, !dbg !2314
  br i1 %tobool310, label %if.end322, label %while.cond312.preheader, !dbg !2316

while.cond312.preheader:                          ; preds = %if.end306
  br label %while.cond312, !dbg !2317

while.cond312:                                    ; preds = %while.cond312.preheader, %while.body319
  %last.0.idx = phi i64 [ %last.0.add, %while.body319 ], [ %p.3.idx.lcssa, %while.cond312.preheader ]
  %last.0.ptr = getelementptr inbounds i8, i8* %p.0, i64 %last.0.idx, !dbg !2053
  call void @llvm.dbg.value(metadata i8* %last.0.ptr, metadata !2035, metadata !DIExpression()), !dbg !2053
  %cmp313 = icmp sgt i64 %last.0.idx, 3, !dbg !2318
  br i1 %cmp313, label %land.rhs, label %if.end322.loopexit, !dbg !2319

land.rhs:                                         ; preds = %while.cond312
  %arrayidx315 = getelementptr inbounds i8, i8* %last.0.ptr, i64 -1, !dbg !2320
  %25 = load i8, i8* %arrayidx315, align 1, !dbg !2320
  %cmp317 = icmp eq i8 %25, 48, !dbg !2321
  br i1 %cmp317, label %while.body319, label %if.end322.loopexit, !dbg !2317

while.body319:                                    ; preds = %land.rhs
  %last.0.add = add nsw i64 %last.0.idx, -1, !dbg !2322
  call void @llvm.dbg.value(metadata i8* undef, metadata !2035, metadata !DIExpression()), !dbg !2053
  br label %while.cond312, !dbg !2317, !llvm.loop !2323

if.end322.loopexit:                               ; preds = %while.cond312, %land.rhs
  %last.0.ptr.lcssa = phi i8* [ %last.0.ptr, %while.cond312 ], [ %last.0.ptr, %land.rhs ], !dbg !2053
  br label %if.end322, !dbg !2324

if.end322:                                        ; preds = %if.end322.loopexit, %if.end306
  %last.1 = phi i8* [ %p.3.ptr.lcssa, %if.end306 ], [ %last.0.ptr.lcssa, %if.end322.loopexit ], !dbg !2325
  call void @llvm.dbg.value(metadata i8* %last.1, metadata !2035, metadata !DIExpression()), !dbg !2053
  %call323 = call i32 (i8*, i8*, ...) @sprintf(i8* %last.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %dec_exp.14) #6, !dbg !2324
  br label %cleanup, !dbg !2326

cleanup:                                          ; preds = %if.end322, %if.then37, %sw.bb21, %sw.bb14, %sw.bb
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #8, !dbg !2326
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #8, !dbg !2326
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2326
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2326
  ret void, !dbg !2326
}

declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #2

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

declare dso_local void @decimal_real_to_decimal(i8*, %struct.real_value*, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.real_value* @ten_to_ptwo(i32 %n) unnamed_addr #5 !dbg !491 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !495, metadata !DIExpression()), !dbg !2327
  %cmp = icmp sgt i32 %n, -1, !dbg !2328
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2328

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2328
  br label %cond.end, !dbg !2328

cond.end:                                         ; preds = %entry, %cond.true
  %cmp1 = icmp slt i32 %n, 26, !dbg !2329
  br i1 %cmp1, label %cond.end4, label %cond.true2, !dbg !2329

cond.true2:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2329
  br label %cond.end4, !dbg !2329

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %idxprom = sext i32 %n to i64, !dbg !2330
  %0 = getelementptr inbounds [26 x %struct.real_value], [26 x %struct.real_value]* @ten_to_ptwo.tens, i64 0, i64 %idxprom, i32 0, !dbg !2331
  %bf.load = load i32, i32* %0, align 16, !dbg !2331
  %bf.clear = and i32 %bf.load, 3, !dbg !2331
  %cmp6 = icmp eq i32 %bf.clear, 0, !dbg !2332
  br i1 %cmp6, label %if.then, label %if.end16, !dbg !2333

if.then:                                          ; preds = %cond.end4
  %cmp7 = icmp slt i32 %n, 5, !dbg !2334
  br i1 %cmp7, label %for.cond.preheader, label %if.else, !dbg !2335

for.cond.preheader:                               ; preds = %if.then
  br label %for.cond, !dbg !2336

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %t.0 = phi i64 [ %mul, %for.body ], [ 10, %for.cond.preheader ], !dbg !2338
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !2339
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !501, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %t.0, metadata !496, metadata !DIExpression()), !dbg !2338
  %cmp9 = icmp slt i32 %i.0, %n, !dbg !2340
  br i1 %cmp9, label %for.body, label %for.end, !dbg !2336

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i64 %t.0, %t.0, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %mul, metadata !496, metadata !DIExpression()), !dbg !2338
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %inc, metadata !501, metadata !DIExpression()), !dbg !2338
  br label %for.cond, !dbg !2344, !llvm.loop !2345

for.end:                                          ; preds = %for.cond
  %t.0.lcssa = phi i64 [ %t.0, %for.cond ], !dbg !2338
  call void @llvm.dbg.value(metadata i64 %t.0.lcssa, metadata !496, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %t.0.lcssa, metadata !496, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %t.0.lcssa, metadata !496, metadata !DIExpression()), !dbg !2338
  %arrayidx11 = getelementptr inbounds [26 x %struct.real_value], [26 x %struct.real_value]* @ten_to_ptwo.tens, i64 0, i64 %idxprom, !dbg !2347
  tail call void @real_from_integer(%struct.real_value* nonnull %arrayidx11, i32 0, i64 %t.0.lcssa, i64 0, i32 1) #7, !dbg !2348
  br label %if.end16, !dbg !2349

if.else:                                          ; preds = %if.then
  %sub = add nsw i32 %n, -1, !dbg !2350
  %call = tail call fastcc %struct.real_value* @ten_to_ptwo(i32 %sub) #7, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.real_value* %call, metadata !502, metadata !DIExpression()), !dbg !2352
  %arrayidx14 = getelementptr inbounds [26 x %struct.real_value], [26 x %struct.real_value]* @ten_to_ptwo.tens, i64 0, i64 %idxprom, !dbg !2353
  %call15 = tail call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %arrayidx14, %struct.real_value* %call, %struct.real_value* %call) #7, !dbg !2354
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.else, %cond.end4
  %arrayidx18 = getelementptr inbounds [26 x %struct.real_value], [26 x %struct.real_value]* @ten_to_ptwo.tens, i64 0, i64 %idxprom, !dbg !2355
  ret %struct.real_value* %arrayidx18, !dbg !2356
}

declare dso_local i32 @floor_log2(i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @cmp_significands(%struct.real_value* %a, %struct.real_value* %b) unnamed_addr #0 !dbg !2357 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !2362, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 2, metadata !2363, metadata !DIExpression()), !dbg !2369
  br label %for.cond, !dbg !2370

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 2, %entry ], !dbg !2371
  %retval.0 = phi i32 [ %retval.1, %for.inc ], [ undef, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2363, metadata !DIExpression()), !dbg !2369
  %cmp = icmp sgt i64 %indvars.iv, -1, !dbg !2372
  br i1 %cmp, label %for.body, label %cleanup9, !dbg !2373

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %indvars.iv, !dbg !2374
  %0 = load i64, i64* %arrayidx, align 8, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %0, metadata !2364, metadata !DIExpression()), !dbg !2375
  %arrayidx3 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 1, i64 %indvars.iv, !dbg !2376
  %1 = load i64, i64* %arrayidx3, align 8, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %1, metadata !2368, metadata !DIExpression()), !dbg !2375
  %cmp4 = icmp ugt i64 %0, %1, !dbg !2377
  br i1 %cmp4, label %cleanup, label %if.end, !dbg !2379

if.end:                                           ; preds = %for.body
  %cmp5 = icmp ult i64 %0, %1, !dbg !2380
  %. = zext i1 %cmp5 to i32, !dbg !2382
  %.retval.0 = select i1 %cmp5, i32 -1, i32 %retval.0, !dbg !2382
  br label %cleanup, !dbg !2382

cleanup:                                          ; preds = %if.end, %for.body
  %cleanup.dest.slot.0 = phi i32 [ 1, %for.body ], [ %., %if.end ]
  %retval.1 = phi i32 [ 1, %for.body ], [ %.retval.0, %if.end ]
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %for.inc, label %cleanup9

for.inc:                                          ; preds = %cleanup
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2383
  call void @llvm.dbg.value(metadata i32 undef, metadata !2363, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2369
  br label %for.cond, !dbg !2384, !llvm.loop !2385

cleanup9:                                         ; preds = %for.cond, %cleanup
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ 0, %for.cond ], !dbg !2369
  ret i32 %retval.2, !dbg !2387
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.real_value* @ten_to_mptwo(i32 %n) unnamed_addr #5 !dbg !509 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !511, metadata !DIExpression()), !dbg !2388
  %cmp = icmp sgt i32 %n, -1, !dbg !2389
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2389

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2286, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2389
  br label %cond.end, !dbg !2389

cond.end:                                         ; preds = %entry, %cond.true
  %cmp1 = icmp slt i32 %n, 26, !dbg !2390
  br i1 %cmp1, label %cond.end4, label %cond.true2, !dbg !2390

cond.true2:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2287, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2390
  br label %cond.end4, !dbg !2390

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %idxprom = sext i32 %n to i64, !dbg !2391
  %0 = getelementptr inbounds [26 x %struct.real_value], [26 x %struct.real_value]* @ten_to_mptwo.tens, i64 0, i64 %idxprom, i32 0, !dbg !2393
  %bf.load = load i32, i32* %0, align 16, !dbg !2393
  %bf.clear = and i32 %bf.load, 3, !dbg !2393
  %cmp6 = icmp eq i32 %bf.clear, 0, !dbg !2394
  br i1 %cmp6, label %if.then, label %if.end, !dbg !2395

if.then:                                          ; preds = %cond.end4
  %arrayidx8 = getelementptr inbounds [26 x %struct.real_value], [26 x %struct.real_value]* @ten_to_mptwo.tens, i64 0, i64 %idxprom, !dbg !2396
  %call = tail call fastcc %struct.real_value* @real_digit(i32 1) #7, !dbg !2397
  %call9 = tail call fastcc %struct.real_value* @ten_to_ptwo(i32 %n) #7, !dbg !2398
  %call10 = tail call fastcc zeroext i8 @do_divide(%struct.real_value* nonnull %arrayidx8, %struct.real_value* %call, %struct.real_value* %call9) #7, !dbg !2399
  br label %if.end, !dbg !2399

if.end:                                           ; preds = %if.then, %cond.end4
  %arrayidx12 = getelementptr inbounds [26 x %struct.real_value], [26 x %struct.real_value]* @ten_to_mptwo.tens, i64 0, i64 %idxprom, !dbg !2400
  ret %struct.real_value* %arrayidx12, !dbg !2401
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @rtd_divmod(%struct.real_value* %num, %struct.real_value* %den) unnamed_addr #5 !dbg !2402 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %num, metadata !2406, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata %struct.real_value* %den, metadata !2407, metadata !DIExpression()), !dbg !2414
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %num, i64 0, i32 0, !dbg !2415
  %bf.load = load i32, i32* %0, align 8, !dbg !2415
  %sub = ashr i32 %bf.load, 6, !dbg !2415
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2410, metadata !DIExpression()), !dbg !2414
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %den, i64 0, i32 0, !dbg !2416
  %bf.load1 = load i32, i32* %1, align 8, !dbg !2416
  %sub4 = ashr i32 %bf.load1, 6, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %sub4, metadata !2411, metadata !DIExpression()), !dbg !2414
  %cmp = icmp slt i32 %sub, %sub4, !dbg !2417
  br i1 %cmp, label %cleanup, label %start.preheader, !dbg !2419

start.preheader:                                  ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %num, i64 0, i32 1, i64 2, !dbg !2420
  br label %start, !dbg !2421

do.body:                                          ; preds = %do.cond
  %dec = add nsw i32 %expn.0, -1, !dbg !2423
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2410, metadata !DIExpression()), !dbg !2414
  %2 = load i64, i64* %arrayidx, align 8, !dbg !2424
  %and = and i64 %2, -9223372036854775808, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %and, metadata !2409, metadata !DIExpression()), !dbg !2414
  %shl = shl i64 %q.1, 1, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %shl, metadata !2408, metadata !DIExpression()), !dbg !2414
  tail call fastcc void @lshift_significand_1(%struct.real_value* %num, %struct.real_value* %num) #7, !dbg !2427
  br label %start, !dbg !2427

start:                                            ; preds = %start.preheader, %do.body
  %msb.0 = phi i64 [ %and, %do.body ], [ 0, %start.preheader ], !dbg !2414
  %q.0 = phi i64 [ %shl, %do.body ], [ 0, %start.preheader ], !dbg !2414
  %expn.0 = phi i32 [ %dec, %do.body ], [ %sub, %start.preheader ], !dbg !2414
  call void @llvm.dbg.value(metadata i32 %expn.0, metadata !2410, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %q.0, metadata !2408, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %msb.0, metadata !2409, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.label(metadata !2412), !dbg !2428
  %tobool = icmp eq i64 %msb.0, 0, !dbg !2429
  br i1 %tobool, label %lor.lhs.false, label %if.then6, !dbg !2421

lor.lhs.false:                                    ; preds = %start
  %call = tail call fastcc i32 @cmp_significands(%struct.real_value* %num, %struct.real_value* %den) #7, !dbg !2430
  %cmp5 = icmp sgt i32 %call, -1, !dbg !2431
  br i1 %cmp5, label %if.then6, label %do.cond, !dbg !2432

if.then6:                                         ; preds = %start, %lor.lhs.false
  %call7 = tail call fastcc zeroext i8 @sub_significands(%struct.real_value* %num, %struct.real_value* %num, %struct.real_value* %den, i32 0) #7, !dbg !2433
  %or = or i64 %q.0, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %or, metadata !2408, metadata !DIExpression()), !dbg !2414
  br label %do.cond, !dbg !2436

do.cond:                                          ; preds = %lor.lhs.false, %if.then6
  %q.1 = phi i64 [ %or, %if.then6 ], [ %q.0, %lor.lhs.false ], !dbg !2414
  call void @llvm.dbg.value(metadata i64 %q.1, metadata !2408, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 %expn.0, metadata !2410, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2414
  %cmp9 = icmp sgt i32 %expn.0, %sub4, !dbg !2437
  br i1 %cmp9, label %do.body, label %do.end, !dbg !2438, !llvm.loop !2439

do.end:                                           ; preds = %do.cond
  %q.1.lcssa = phi i64 [ %q.1, %do.cond ], !dbg !2414
  call void @llvm.dbg.value(metadata i64 %q.1.lcssa, metadata !2408, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %q.1.lcssa, metadata !2408, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %q.1.lcssa, metadata !2408, metadata !DIExpression()), !dbg !2414
  %bf.load11 = load i32, i32* %0, align 8, !dbg !2442
  %bf.shl = and i32 %bf.load1, -64, !dbg !2442
  %bf.clear = and i32 %bf.load11, 63, !dbg !2442
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !2442
  store i32 %bf.set, i32* %0, align 8, !dbg !2442
  tail call fastcc void @normalize(%struct.real_value* %num) #7, !dbg !2443
  br label %cleanup, !dbg !2444

cleanup:                                          ; preds = %entry, %do.end
  %retval.0 = phi i64 [ %q.1.lcssa, %do.end ], [ 0, %entry ], !dbg !2414
  ret i64 %retval.0, !dbg !2445
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @cmp_significand_0(%struct.real_value* %a) unnamed_addr #0 !dbg !2446 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !2448, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 2, metadata !2449, metadata !DIExpression()), !dbg !2450
  br label %for.cond, !dbg !2451

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 2, %entry ], !dbg !2453
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2449, metadata !DIExpression()), !dbg !2450
  %cmp = icmp sgt i64 %indvars.iv, -1, !dbg !2454
  br i1 %cmp, label %for.body, label %cleanup, !dbg !2456

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %indvars.iv, !dbg !2457
  %0 = load i64, i64* %arrayidx, align 8, !dbg !2457
  %tobool = icmp eq i64 %0, 0, !dbg !2457
  br i1 %tobool, label %for.inc, label %cleanup, !dbg !2459

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2460
  call void @llvm.dbg.value(metadata i32 undef, metadata !2449, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2450
  br label %for.cond, !dbg !2461, !llvm.loop !2462

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ], !dbg !2450
  ret i32 %retval.0, !dbg !2464
}

; Function Attrs: nounwind uwtable
define dso_local void @real_to_decimal(i8* %str, %struct.real_value* %r_orig, i64 %buf_size, i64 %digits, i32 %crop_trailing_zeros) local_unnamed_addr #5 !dbg !2465 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !2469, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.real_value* %r_orig, metadata !2470, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %buf_size, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %digits, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %crop_trailing_zeros, metadata !2473, metadata !DIExpression()), !dbg !2474
  tail call void @real_to_decimal_for_mode(i8* %str, %struct.real_value* %r_orig, i64 %buf_size, i64 %digits, i32 %crop_trailing_zeros, i32 0) #7, !dbg !2475
  ret void, !dbg !2476
}

; Function Attrs: nounwind uwtable
define dso_local void @real_to_hexadecimal(i8* %str, %struct.real_value* %r, i64 %buf_size, i64 %digits, i32 %crop_trailing_zeros) local_unnamed_addr #5 !dbg !2477 {
entry:
  %exp_buf = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %str, metadata !2479, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2480, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %buf_size, metadata !2481, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %digits, metadata !2482, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 %crop_trailing_zeros, metadata !2483, metadata !DIExpression()), !dbg !2495
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !2496
  %bf.load = load i32, i32* %0, align 8, !dbg !2496
  %sub = ashr i32 %bf.load, 6, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2486, metadata !DIExpression()), !dbg !2495
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %exp_buf, i64 0, i64 0, !dbg !2497
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2497
  call void @llvm.dbg.declare(metadata [16 x i8]* %exp_buf, metadata !2489, metadata !DIExpression()), !dbg !2498
  %bf.clear = and i32 %bf.load, 3, !dbg !2499
  switch i32 %bf.clear, label %sw.default1 [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
    i32 2, label %sw.bb2
    i32 3, label %sw.bb6
  ], !dbg !2500

sw.bb:                                            ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2486, metadata !DIExpression()), !dbg !2495
  br label %sw.epilog, !dbg !2501

sw.bb2:                                           ; preds = %entry
  %bf.clear5 = and i32 %bf.load, 8, !dbg !2503
  %tobool = icmp eq i32 %bf.clear5, 0, !dbg !2504
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !2504
  %call = tail call i8* @strcpy(i8* %str, i8* %cond) #6, !dbg !2505
  br label %cleanup, !dbg !2506

sw.bb6:                                           ; preds = %entry
  %bf.clear9 = and i32 %bf.load, 8, !dbg !2507
  %tobool10 = icmp eq i32 %bf.clear9, 0, !dbg !2508
  %cond11 = select i1 %tobool10, i32 43, i32 45, !dbg !2508
  %bf.clear14 = and i32 %bf.load, 16, !dbg !2509
  %tobool15 = icmp eq i32 %bf.clear14, 0, !dbg !2510
  %cond16 = select i1 %tobool15, i32 81, i32 83, !dbg !2510
  %call17 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %cond11, i32 %cond16) #6, !dbg !2511
  br label %cleanup, !dbg !2512

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry, %sw.bb
  %exp.0 = phi i32 [ %sub, %entry ], [ 0, %sw.bb ], !dbg !2495
  call void @llvm.dbg.value(metadata i32 %exp.0, metadata !2486, metadata !DIExpression()), !dbg !2495
  %bf.clear20 = and i32 %bf.load, 4, !dbg !2513
  %tobool21 = icmp eq i32 %bf.clear20, 0, !dbg !2515
  br i1 %tobool21, label %if.end, label %if.then, !dbg !2516

if.then:                                          ; preds = %sw.epilog
  %call22 = tail call i8* @strcpy(i8* %str, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2517
  br label %cleanup, !dbg !2519

if.end:                                           ; preds = %sw.epilog
  %cmp = icmp eq i64 %digits, 0, !dbg !2520
  %spec.select = select i1 %cmp, i64 48, i64 %digits, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2482, metadata !DIExpression()), !dbg !2495
  %call25 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %exp.0) #6, !dbg !2523
  %call27 = call i64 @strlen(i8* nonnull %1) #6, !dbg !2524
  %sub28 = sub i64 %buf_size, %call27, !dbg !2525
  %bf.load29 = load i32, i32* %0, align 8, !dbg !2526
  %bf.lshr30 = lshr i32 %bf.load29, 3, !dbg !2526
  %bf.clear31 = and i32 %bf.lshr30, 1, !dbg !2526
  %conv = zext i32 %bf.clear31 to i64, !dbg !2527
  %sub32 = sub i64 %sub28, %conv, !dbg !2528
  %sub34 = add i64 %sub32, -5, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %sub34, metadata !2493, metadata !DIExpression()), !dbg !2495
  %cmp35 = icmp ugt i64 %sub34, %buf_size, !dbg !2530
  br i1 %cmp35, label %cond.true, label %cond.end, !dbg !2530

cond.true:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1861, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2530
  %bf.load42.pre = load i32, i32* %0, align 8, !dbg !2531
  br label %cond.end, !dbg !2530

cond.end:                                         ; preds = %if.end, %cond.true
  %bf.load42 = phi i32 [ %bf.load29, %if.end ], [ %bf.load42.pre, %cond.true ], !dbg !2531
  %cmp38 = icmp ugt i64 %spec.select, %sub34, !dbg !2533
  %spec.select2 = select i1 %cmp38, i64 %sub34, i64 %spec.select, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %spec.select2, metadata !2482, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8* %str, metadata !2487, metadata !DIExpression()), !dbg !2495
  %bf.clear44 = and i32 %bf.load42, 8, !dbg !2531
  %tobool45 = icmp eq i32 %bf.clear44, 0, !dbg !2536
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !2537

if.then46:                                        ; preds = %cond.end
  %incdec.ptr = getelementptr inbounds i8, i8* %str, i64 1, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2487, metadata !DIExpression()), !dbg !2495
  store i8 45, i8* %str, align 1, !dbg !2539
  br label %if.end47, !dbg !2540

if.end47:                                         ; preds = %cond.end, %if.then46
  %p.0 = phi i8* [ %incdec.ptr, %if.then46 ], [ %str, %cond.end ], !dbg !2495
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2487, metadata !DIExpression()), !dbg !2495
  %incdec.ptr48 = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %incdec.ptr48, metadata !2487, metadata !DIExpression()), !dbg !2495
  store i8 48, i8* %p.0, align 1, !dbg !2542
  %incdec.ptr49 = getelementptr inbounds i8, i8* %p.0, i64 2, !dbg !2543
  call void @llvm.dbg.value(metadata i8* %incdec.ptr49, metadata !2487, metadata !DIExpression()), !dbg !2495
  store i8 120, i8* %incdec.ptr48, align 1, !dbg !2544
  %incdec.ptr50 = getelementptr inbounds i8, i8* %p.0, i64 3, !dbg !2545
  call void @llvm.dbg.value(metadata i8* %incdec.ptr50, metadata !2487, metadata !DIExpression()), !dbg !2495
  store i8 48, i8* %incdec.ptr49, align 1, !dbg !2546
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2487, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2495
  store i8 46, i8* %incdec.ptr50, align 1, !dbg !2547
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2488, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2495
  call void @llvm.dbg.value(metadata i32 2, metadata !2484, metadata !DIExpression()), !dbg !2495
  br label %for.cond, !dbg !2548

for.cond:                                         ; preds = %for.inc65, %if.end47
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc65 ], [ 2, %if.end47 ], !dbg !2550
  %digits.addr.2 = phi i64 [ %digits.addr.3.lcssa, %for.inc65 ], [ %spec.select2, %if.end47 ], !dbg !2551
  %p.1.idx = phi i64 [ %p.2.idx.lcssa, %for.inc65 ], [ 4, %if.end47 ]
  call void @llvm.dbg.value(metadata i64 %digits.addr.2, metadata !2482, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2484, metadata !DIExpression()), !dbg !2495
  %cmp52 = icmp sgt i64 %indvars.iv, -1, !dbg !2552
  br i1 %cmp52, label %for.cond54.preheader, label %out.loopexit3, !dbg !2554

for.cond54.preheader:                             ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv, !dbg !2555
  %2 = trunc i64 %p.1.idx to i32, !dbg !2559
  %3 = add i32 %2, 16, !dbg !2559
  br label %for.cond54, !dbg !2559

for.cond54:                                       ; preds = %for.cond54.preheader, %for.inc
  %j.0 = phi i32 [ %sub64, %for.inc ], [ 60, %for.cond54.preheader ], !dbg !2560
  %digits.addr.3 = phi i64 [ %dec, %for.inc ], [ %digits.addr.2, %for.cond54.preheader ], !dbg !2495
  %p.2.idx = phi i64 [ %p.2.add, %for.inc ], [ %p.1.idx, %for.cond54.preheader ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !2487, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %digits.addr.3, metadata !2482, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !2485, metadata !DIExpression()), !dbg !2495
  %lftr.wideiv14 = trunc i64 %p.2.idx to i32, !dbg !2561
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %3, !dbg !2561
  br i1 %exitcond15, label %for.inc65, label %for.body57, !dbg !2559

for.body57:                                       ; preds = %for.cond54
  %p.2.ptr = getelementptr inbounds i8, i8* %p.0, i64 %p.2.idx, !dbg !2495
  call void @llvm.dbg.value(metadata i8* %p.2.ptr, metadata !2487, metadata !DIExpression()), !dbg !2495
  %4 = load i64, i64* %arrayidx, align 8, !dbg !2562
  %sh_prom = zext i32 %j.0 to i64, !dbg !2563
  %shr = lshr i64 %4, %sh_prom, !dbg !2563
  %and = and i64 %shr, 15, !dbg !2564
  %arrayidx58 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.10, i64 0, i64 %and, !dbg !2565
  %5 = load i8, i8* %arrayidx58, align 1, !dbg !2565
  %p.2.add = add i64 %p.2.idx, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i8* undef, metadata !2487, metadata !DIExpression()), !dbg !2495
  store i8 %5, i8* %p.2.ptr, align 1, !dbg !2567
  %dec = add i64 %digits.addr.3, -1, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %dec, metadata !2482, metadata !DIExpression()), !dbg !2495
  %cmp60 = icmp eq i64 %dec, 0, !dbg !2570
  br i1 %cmp60, label %out.loopexit, label %for.inc, !dbg !2571

for.inc:                                          ; preds = %for.body57
  %sub64 = add nsw i32 %j.0, -4, !dbg !2572
  call void @llvm.dbg.value(metadata i32 %sub64, metadata !2485, metadata !DIExpression()), !dbg !2495
  br label %for.cond54, !dbg !2573, !llvm.loop !2574

for.inc65:                                        ; preds = %for.cond54
  %digits.addr.3.lcssa = phi i64 [ %digits.addr.3, %for.cond54 ], !dbg !2495
  %p.2.idx.lcssa = phi i64 [ %p.2.idx, %for.cond54 ]
  call void @llvm.dbg.value(metadata i64 %digits.addr.3.lcssa, metadata !2482, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %digits.addr.3.lcssa, metadata !2482, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %digits.addr.3.lcssa, metadata !2482, metadata !DIExpression()), !dbg !2495
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2576
  call void @llvm.dbg.value(metadata i32 undef, metadata !2484, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2495
  br label %for.cond, !dbg !2577, !llvm.loop !2578

out.loopexit:                                     ; preds = %for.body57
  %p.2.add.lcssa = phi i64 [ %p.2.add, %for.body57 ], !dbg !2566
  br label %out, !dbg !2495

out.loopexit3:                                    ; preds = %for.cond
  %p.1.idx.lcssa = phi i64 [ %p.1.idx, %for.cond ]
  br label %out, !dbg !2495

out:                                              ; preds = %out.loopexit3, %out.loopexit
  %p.3.idx = phi i64 [ %p.2.add.lcssa, %out.loopexit ], [ %p.1.idx.lcssa, %out.loopexit3 ]
  %p.3.ptr = getelementptr inbounds i8, i8* %p.0, i64 %p.3.idx, !dbg !2495
  call void @llvm.dbg.value(metadata i8* %p.3.ptr, metadata !2487, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.label(metadata !2494), !dbg !2580
  %tobool68 = icmp eq i32 %crop_trailing_zeros, 0, !dbg !2581
  br i1 %tobool68, label %if.end77, label %while.cond.preheader, !dbg !2583

while.cond.preheader:                             ; preds = %out
  br label %while.cond, !dbg !2584

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %p.4.idx = phi i64 [ %p.4.add, %while.body ], [ %p.3.idx, %while.cond.preheader ]
  %p.4.ptr = getelementptr inbounds i8, i8* %p.0, i64 %p.4.idx, !dbg !2495
  call void @llvm.dbg.value(metadata i8* %p.4.ptr, metadata !2487, metadata !DIExpression()), !dbg !2495
  %cmp70 = icmp sgt i64 %p.4.idx, 5, !dbg !2585
  br i1 %cmp70, label %land.rhs, label %if.end77.loopexit, !dbg !2586

land.rhs:                                         ; preds = %while.cond
  %arrayidx72 = getelementptr inbounds i8, i8* %p.4.ptr, i64 -1, !dbg !2587
  %6 = load i8, i8* %arrayidx72, align 1, !dbg !2587
  %cmp74 = icmp eq i8 %6, 48, !dbg !2588
  br i1 %cmp74, label %while.body, label %if.end77.loopexit, !dbg !2584

while.body:                                       ; preds = %land.rhs
  %p.4.add = add nsw i64 %p.4.idx, -1, !dbg !2589
  call void @llvm.dbg.value(metadata i8* undef, metadata !2487, metadata !DIExpression()), !dbg !2495
  br label %while.cond, !dbg !2584, !llvm.loop !2590

if.end77.loopexit:                                ; preds = %while.cond, %land.rhs
  %p.4.ptr.lcssa = phi i8* [ %p.4.ptr, %while.cond ], [ %p.4.ptr, %land.rhs ], !dbg !2495
  br label %if.end77, !dbg !2591

if.end77:                                         ; preds = %if.end77.loopexit, %out
  %p.5 = phi i8* [ %p.3.ptr, %out ], [ %p.4.ptr.lcssa, %if.end77.loopexit ], !dbg !2566
  call void @llvm.dbg.value(metadata i8* %p.5, metadata !2487, metadata !DIExpression()), !dbg !2495
  %call78 = call i32 (i8*, i8*, ...) @sprintf(i8* %p.5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %exp.0) #6, !dbg !2591
  br label %cleanup, !dbg !2592

cleanup:                                          ; preds = %if.end77, %if.then, %sw.bb6, %sw.bb2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2592
  ret void, !dbg !2592
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @real_from_string(%struct.real_value* %r, i8* %str) local_unnamed_addr #5 !dbg !2593 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2597, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 0, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 0, metadata !2600, metadata !DIExpression()), !dbg !2617
  tail call fastcc void @get_zero(%struct.real_value* %r, i32 0) #7, !dbg !2618
  %0 = load i8, i8* %str, align 1, !dbg !2619
  %cmp = icmp eq i8 %0, 45, !dbg !2621
  br i1 %cmp, label %if.then, label %if.else, !dbg !2622

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8 1, metadata !2600, metadata !DIExpression()), !dbg !2617
  %incdec.ptr = getelementptr inbounds i8, i8* %str, i64 1, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %if.end7, !dbg !2625

if.else:                                          ; preds = %entry
  %cmp3 = icmp eq i8 %0, 43, !dbg !2626
  %incdec.ptr6 = getelementptr inbounds i8, i8* %str, i64 1, !dbg !2628
  %spec.select = select i1 %cmp3, i8* %incdec.ptr6, i8* %str, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then
  %sign.0 = phi i32 [ 1, %if.then ], [ 0, %if.else ]
  %str.addr.1 = phi i8* [ %incdec.ptr, %if.then ], [ %spec.select, %if.else ], !dbg !2630
  call void @llvm.dbg.value(metadata i8* %str.addr.1, metadata !2598, metadata !DIExpression()), !dbg !2617
  %call = tail call i32 @strncmp(i8* %str.addr.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #6, !dbg !2631
  %tobool = icmp eq i32 %call, 0, !dbg !2631
  br i1 %tobool, label %if.then8, label %if.else10, !dbg !2633

if.then8:                                         ; preds = %if.end7
  tail call fastcc void @get_canonical_qnan(%struct.real_value* %r, i32 %sign.0) #7, !dbg !2634
  br label %cleanup318, !dbg !2636

if.else10:                                        ; preds = %if.end7
  %call11 = tail call i32 @strncmp(i8* %str.addr.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 4) #6, !dbg !2637
  %tobool12 = icmp eq i32 %call11, 0, !dbg !2637
  br i1 %tobool12, label %if.then13, label %if.else15, !dbg !2639

if.then13:                                        ; preds = %if.else10
  tail call fastcc void @get_canonical_snan(%struct.real_value* %r, i32 %sign.0) #7, !dbg !2640
  br label %cleanup318, !dbg !2642

if.else15:                                        ; preds = %if.else10
  %call16 = tail call i32 @strncmp(i8* %str.addr.1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 3) #6, !dbg !2643
  %tobool17 = icmp eq i32 %call16, 0, !dbg !2643
  br i1 %tobool17, label %if.then18, label %if.end22, !dbg !2645

if.then18:                                        ; preds = %if.else15
  tail call fastcc void @get_inf(%struct.real_value* %r, i32 %sign.0) #7, !dbg !2646
  br label %cleanup318, !dbg !2648

if.end22:                                         ; preds = %if.else15
  %1 = load i8, i8* %str.addr.1, align 1, !dbg !2649
  %cmp24 = icmp eq i8 %1, 48, !dbg !2650
  br i1 %cmp24, label %land.lhs.true, label %if.else173, !dbg !2651

land.lhs.true:                                    ; preds = %if.end22
  %arrayidx26 = getelementptr inbounds i8, i8* %str.addr.1, i64 1, !dbg !2652
  %2 = load i8, i8* %arrayidx26, align 1, !dbg !2652
  %cmp28 = icmp eq i8 %2, 120, !dbg !2653
  br i1 %cmp28, label %if.then34, label %lor.lhs.false, !dbg !2654

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp32 = icmp eq i8 %2, 88, !dbg !2655
  br i1 %cmp32, label %if.then34, label %if.else173, !dbg !2656

if.then34:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.dbg.value(metadata i32 188, metadata !2601, metadata !DIExpression()), !dbg !2657
  %add.ptr = getelementptr inbounds i8, i8* %str.addr.1, i64 2, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %while.cond, !dbg !2659

while.cond:                                       ; preds = %while.body, %if.then34
  %str.addr.2 = phi i8* [ %add.ptr, %if.then34 ], [ %incdec.ptr38, %while.body ], !dbg !2657
  call void @llvm.dbg.value(metadata i8* %str.addr.2, metadata !2598, metadata !DIExpression()), !dbg !2617
  %3 = load i8, i8* %str.addr.2, align 1, !dbg !2660
  %cmp36 = icmp eq i8 %3, 48, !dbg !2661
  br i1 %cmp36, label %while.body, label %while.cond39.preheader, !dbg !2659

while.cond39.preheader:                           ; preds = %while.cond
  %str.addr.2.lcssa = phi i8* [ %str.addr.2, %while.cond ], !dbg !2657
  %.lcssa22 = phi i8 [ %3, %while.cond ], !dbg !2660
  call void @llvm.dbg.value(metadata i8* %str.addr.2.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.2.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.2.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  %arrayidx57 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !2662
  br label %while.cond39, !dbg !2666

while.body:                                       ; preds = %while.cond
  %incdec.ptr38 = getelementptr inbounds i8, i8* %str.addr.2, i64 1, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %incdec.ptr38, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %while.cond, !dbg !2659, !llvm.loop !2668

while.cond39:                                     ; preds = %while.cond39.preheader, %if.end60
  %4 = phi i8 [ %.pre14, %if.end60 ], [ %.lcssa22, %while.cond39.preheader ], !dbg !2669
  %pos.0 = phi i32 [ %pos.1, %if.end60 ], [ 188, %while.cond39.preheader ], !dbg !2657
  %exp.0 = phi i32 [ %add, %if.end60 ], [ 0, %while.cond39.preheader ], !dbg !2617
  %str.addr.3 = phi i8* [ %incdec.ptr61, %if.end60 ], [ %str.addr.2.lcssa, %while.cond39.preheader ], !dbg !2657
  call void @llvm.dbg.value(metadata i8* %str.addr.3, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.0, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !2601, metadata !DIExpression()), !dbg !2657
  %idxprom = zext i8 %4 to i64, !dbg !2669
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom, !dbg !2669
  %5 = load i8, i8* %arrayidx41, align 1, !dbg !2669
  call void @llvm.dbg.value(metadata i8 %5, metadata !2604, metadata !DIExpression()), !dbg !2657
  %cmp43 = icmp eq i8 %5, 99, !dbg !2670
  br i1 %cmp43, label %while.end62, label %if.end46, !dbg !2672

if.end46:                                         ; preds = %while.cond39
  %cmp47 = icmp sgt i32 %pos.0, -1, !dbg !2673
  br i1 %cmp47, label %if.then49, label %if.else53, !dbg !2674

if.then49:                                        ; preds = %if.end46
  %conv50 = zext i8 %5 to i64, !dbg !2675
  %rem = srem i32 %pos.0, 64, !dbg !2677
  %sh_prom = zext i32 %rem to i64, !dbg !2678
  %shl = shl i64 %conv50, %sh_prom, !dbg !2678
  %div = sdiv i32 %pos.0, 64, !dbg !2679
  %idxprom51 = sext i32 %div to i64, !dbg !2680
  %arrayidx52 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom51, !dbg !2680
  %6 = load i64, i64* %arrayidx52, align 8, !dbg !2681
  %or = or i64 %6, %shl, !dbg !2681
  store i64 %or, i64* %arrayidx52, align 8, !dbg !2681
  %sub = add nsw i32 %pos.0, -4, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2601, metadata !DIExpression()), !dbg !2657
  br label %if.end60, !dbg !2683

if.else53:                                        ; preds = %if.end46
  %tobool54 = icmp eq i8 %5, 0, !dbg !2684
  br i1 %tobool54, label %if.end60, label %if.then55, !dbg !2685

if.then55:                                        ; preds = %if.else53
  %7 = load i64, i64* %arrayidx57, align 8, !dbg !2686
  %or58 = or i64 %7, 1, !dbg !2686
  store i64 %or58, i64* %arrayidx57, align 8, !dbg !2686
  br label %if.end60, !dbg !2687

if.end60:                                         ; preds = %if.else53, %if.then55, %if.then49
  %pos.1 = phi i32 [ %sub, %if.then49 ], [ %pos.0, %if.then55 ], [ %pos.0, %if.else53 ], !dbg !2657
  call void @llvm.dbg.value(metadata i32 %pos.1, metadata !2601, metadata !DIExpression()), !dbg !2657
  %add = add nuw nsw i32 %exp.0, 4, !dbg !2688
  call void @llvm.dbg.value(metadata i32 %add, metadata !2599, metadata !DIExpression()), !dbg !2617
  %incdec.ptr61 = getelementptr inbounds i8, i8* %str.addr.3, i64 1, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %incdec.ptr61, metadata !2598, metadata !DIExpression()), !dbg !2617
  %.pre14 = load i8, i8* %incdec.ptr61, align 1, !dbg !2669
  br label %while.cond39, !dbg !2666, !llvm.loop !2690

while.end62:                                      ; preds = %while.cond39
  %.lcssa = phi i8 [ %4, %while.cond39 ], !dbg !2669
  %pos.0.lcssa = phi i32 [ %pos.0, %while.cond39 ], !dbg !2657
  %exp.0.lcssa = phi i32 [ %exp.0, %while.cond39 ], !dbg !2617
  %str.addr.3.lcssa = phi i8* [ %str.addr.3, %while.cond39 ], !dbg !2657
  call void @llvm.dbg.value(metadata i32 %pos.0.lcssa, metadata !2601, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %exp.0.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.3.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %pos.0.lcssa, metadata !2601, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %exp.0.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.3.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %pos.0.lcssa, metadata !2601, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %exp.0.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.3.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  %cmp64 = icmp eq i8 %.lcssa, 46, !dbg !2692
  br i1 %cmp64, label %if.then66, label %if.end112, !dbg !2694

if.then66:                                        ; preds = %while.end62
  %incdec.ptr67 = getelementptr inbounds i8, i8* %str.addr.3.lcssa, i64 1, !dbg !2695
  call void @llvm.dbg.value(metadata i8* %incdec.ptr67, metadata !2598, metadata !DIExpression()), !dbg !2617
  %cmp68 = icmp eq i32 %pos.0.lcssa, 188, !dbg !2697
  br i1 %cmp68, label %while.cond71.preheader, label %if.end79, !dbg !2699

while.cond71.preheader:                           ; preds = %if.then66
  br label %while.cond71, !dbg !2700

while.cond71:                                     ; preds = %while.cond71.preheader, %while.body75
  %exp.1 = phi i32 [ %sub77, %while.body75 ], [ %exp.0.lcssa, %while.cond71.preheader ], !dbg !2617
  %str.addr.4 = phi i8* [ %incdec.ptr76, %while.body75 ], [ %incdec.ptr67, %while.cond71.preheader ], !dbg !2702
  call void @llvm.dbg.value(metadata i8* %str.addr.4, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.1, metadata !2599, metadata !DIExpression()), !dbg !2617
  %8 = load i8, i8* %str.addr.4, align 1, !dbg !2703
  %cmp73 = icmp eq i8 %8, 48, !dbg !2704
  br i1 %cmp73, label %while.body75, label %if.end79.loopexit, !dbg !2700

while.body75:                                     ; preds = %while.cond71
  %incdec.ptr76 = getelementptr inbounds i8, i8* %str.addr.4, i64 1, !dbg !2705
  call void @llvm.dbg.value(metadata i8* %incdec.ptr76, metadata !2598, metadata !DIExpression()), !dbg !2617
  %sub77 = add nsw i32 %exp.1, -4, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %sub77, metadata !2599, metadata !DIExpression()), !dbg !2617
  br label %while.cond71, !dbg !2700, !llvm.loop !2707

if.end79.loopexit:                                ; preds = %while.cond71
  %exp.1.lcssa = phi i32 [ %exp.1, %while.cond71 ], !dbg !2617
  %str.addr.4.lcssa = phi i8* [ %str.addr.4, %while.cond71 ], !dbg !2702
  call void @llvm.dbg.value(metadata i32 %exp.1.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.4.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.1.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.4.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.1.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.4.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %if.end79, !dbg !2709

if.end79:                                         ; preds = %if.end79.loopexit, %if.then66
  %exp.2 = phi i32 [ %exp.0.lcssa, %if.then66 ], [ %exp.1.lcssa, %if.end79.loopexit ], !dbg !2710
  %str.addr.5 = phi i8* [ %incdec.ptr67, %if.then66 ], [ %str.addr.4.lcssa, %if.end79.loopexit ], !dbg !2695
  call void @llvm.dbg.value(metadata i8* %str.addr.5, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.2, metadata !2599, metadata !DIExpression()), !dbg !2617
  br label %while.cond80, !dbg !2709

while.cond80:                                     ; preds = %if.end109, %if.end79
  %pos.2 = phi i32 [ %pos.0.lcssa, %if.end79 ], [ %pos.3, %if.end109 ], !dbg !2657
  %str.addr.6 = phi i8* [ %str.addr.5, %if.end79 ], [ %incdec.ptr110, %if.end109 ], !dbg !2702
  call void @llvm.dbg.value(metadata i8* %str.addr.6, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %pos.2, metadata !2601, metadata !DIExpression()), !dbg !2657
  %9 = load i8, i8* %str.addr.6, align 1, !dbg !2711
  %idxprom82 = zext i8 %9 to i64, !dbg !2711
  %arrayidx83 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom82, !dbg !2711
  %10 = load i8, i8* %arrayidx83, align 1, !dbg !2711
  call void @llvm.dbg.value(metadata i8 %10, metadata !2604, metadata !DIExpression()), !dbg !2657
  %cmp85 = icmp eq i8 %10, 99, !dbg !2713
  br i1 %cmp85, label %if.end112.loopexit, label %if.end88, !dbg !2715

if.end88:                                         ; preds = %while.cond80
  %cmp89 = icmp sgt i32 %pos.2, -1, !dbg !2716
  br i1 %cmp89, label %if.then91, label %if.else102, !dbg !2718

if.then91:                                        ; preds = %if.end88
  %conv92 = zext i8 %10 to i64, !dbg !2719
  %rem93 = srem i32 %pos.2, 64, !dbg !2721
  %sh_prom94 = zext i32 %rem93 to i64, !dbg !2722
  %shl95 = shl i64 %conv92, %sh_prom94, !dbg !2722
  %div97 = sdiv i32 %pos.2, 64, !dbg !2723
  %idxprom98 = sext i32 %div97 to i64, !dbg !2724
  %arrayidx99 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom98, !dbg !2724
  %11 = load i64, i64* %arrayidx99, align 8, !dbg !2725
  %or100 = or i64 %11, %shl95, !dbg !2725
  store i64 %or100, i64* %arrayidx99, align 8, !dbg !2725
  %sub101 = add nsw i32 %pos.2, -4, !dbg !2726
  call void @llvm.dbg.value(metadata i32 %sub101, metadata !2601, metadata !DIExpression()), !dbg !2657
  br label %if.end109, !dbg !2727

if.else102:                                       ; preds = %if.end88
  %tobool103 = icmp eq i8 %10, 0, !dbg !2728
  br i1 %tobool103, label %if.end109, label %if.then104, !dbg !2730

if.then104:                                       ; preds = %if.else102
  %12 = load i64, i64* %arrayidx57, align 8, !dbg !2731
  %or107 = or i64 %12, 1, !dbg !2731
  store i64 %or107, i64* %arrayidx57, align 8, !dbg !2731
  br label %if.end109, !dbg !2732

if.end109:                                        ; preds = %if.else102, %if.then104, %if.then91
  %pos.3 = phi i32 [ %sub101, %if.then91 ], [ %pos.2, %if.then104 ], [ %pos.2, %if.else102 ], !dbg !2657
  call void @llvm.dbg.value(metadata i32 %pos.3, metadata !2601, metadata !DIExpression()), !dbg !2657
  %incdec.ptr110 = getelementptr inbounds i8, i8* %str.addr.6, i64 1, !dbg !2733
  call void @llvm.dbg.value(metadata i8* %incdec.ptr110, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %while.cond80, !dbg !2709, !llvm.loop !2734

if.end112.loopexit:                               ; preds = %while.cond80
  %str.addr.6.lcssa = phi i8* [ %str.addr.6, %while.cond80 ], !dbg !2702
  call void @llvm.dbg.value(metadata i8* %str.addr.6.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.6.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.6.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %if.end112, !dbg !2736

if.end112:                                        ; preds = %if.end112.loopexit, %while.end62
  %exp.3 = phi i32 [ %exp.0.lcssa, %while.end62 ], [ %exp.2, %if.end112.loopexit ], !dbg !2710
  %str.addr.7 = phi i8* [ %str.addr.3.lcssa, %while.end62 ], [ %str.addr.6.lcssa, %if.end112.loopexit ], !dbg !2657
  call void @llvm.dbg.value(metadata i8* %str.addr.7, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.3, metadata !2599, metadata !DIExpression()), !dbg !2617
  %call113 = tail call fastcc i32 @cmp_significand_0(%struct.real_value* %r) #7, !dbg !2736
  %tobool114 = icmp eq i32 %call113, 0, !dbg !2736
  br i1 %tobool114, label %cleanup169, label %if.end116, !dbg !2738

if.end116:                                        ; preds = %if.end112
  %13 = load i8, i8* %str.addr.7, align 1, !dbg !2739
  %cmp118 = icmp eq i8 %13, 112, !dbg !2740
  br i1 %cmp118, label %if.then124, label %lor.lhs.false120, !dbg !2741

lor.lhs.false120:                                 ; preds = %if.end116
  %cmp122 = icmp eq i8 %13, 80, !dbg !2742
  br i1 %cmp122, label %if.then124, label %if.end164, !dbg !2743

if.then124:                                       ; preds = %lor.lhs.false120, %if.end116
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2744
  %incdec.ptr125 = getelementptr inbounds i8, i8* %str.addr.7, i64 1, !dbg !2745
  call void @llvm.dbg.value(metadata i8* %incdec.ptr125, metadata !2598, metadata !DIExpression()), !dbg !2617
  %14 = load i8, i8* %incdec.ptr125, align 1, !dbg !2746
  %cmp127 = icmp eq i8 %14, 45, !dbg !2748
  br i1 %cmp127, label %if.then129, label %if.else131, !dbg !2749

if.then129:                                       ; preds = %if.then124
  call void @llvm.dbg.value(metadata i8 1, metadata !2605, metadata !DIExpression()), !dbg !2744
  %incdec.ptr130 = getelementptr inbounds i8, i8* %str.addr.7, i64 2, !dbg !2750
  call void @llvm.dbg.value(metadata i8* %incdec.ptr130, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %if.end138, !dbg !2752

if.else131:                                       ; preds = %if.then124
  %cmp133 = icmp eq i8 %14, 43, !dbg !2753
  %incdec.ptr136 = getelementptr inbounds i8, i8* %str.addr.7, i64 2, !dbg !2755
  %spec.select2 = select i1 %cmp133, i8* %incdec.ptr136, i8* %incdec.ptr125, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %spec.select2, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %if.end138

if.end138:                                        ; preds = %if.else131, %if.then129
  %exp_neg.0 = phi i8 [ 1, %if.then129 ], [ 0, %if.else131 ], !dbg !2744
  %str.addr.9 = phi i8* [ %incdec.ptr130, %if.then129 ], [ %spec.select2, %if.else131 ], !dbg !2757
  call void @llvm.dbg.value(metadata i8* %str.addr.9, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 %exp_neg.0, metadata !2605, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 0, metadata !2604, metadata !DIExpression()), !dbg !2657
  br label %while.cond139, !dbg !2758

while.cond139:                                    ; preds = %if.end156, %if.end138
  %d.0 = phi i32 [ 0, %if.end138 ], [ %add149, %if.end156 ], !dbg !2744
  %str.addr.10 = phi i8* [ %str.addr.9, %if.end138 ], [ %incdec.ptr157, %if.end156 ], !dbg !2744
  call void @llvm.dbg.value(metadata i8* %str.addr.10, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %d.0, metadata !2604, metadata !DIExpression()), !dbg !2657
  %15 = load i8, i8* %str.addr.10, align 1, !dbg !2759
  %idxprom141 = zext i8 %15 to i64, !dbg !2759
  %arrayidx142 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom141, !dbg !2759
  %16 = load i16, i16* %arrayidx142, align 2, !dbg !2759
  %17 = and i16 %16, 4, !dbg !2759
  %tobool145 = icmp eq i16 %17, 0, !dbg !2758
  br i1 %tobool145, label %while.end158, label %while.body146, !dbg !2758

while.body146:                                    ; preds = %while.cond139
  %mul = mul nsw i32 %d.0, 10, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2604, metadata !DIExpression()), !dbg !2657
  %conv147 = sext i8 %15 to i32, !dbg !2762
  %sub148 = add nsw i32 %conv147, -48, !dbg !2763
  %add149 = add nsw i32 %mul, %sub148, !dbg !2764
  call void @llvm.dbg.value(metadata i32 %add149, metadata !2604, metadata !DIExpression()), !dbg !2657
  %cmp150 = icmp sgt i32 %add149, 33554431, !dbg !2765
  br i1 %cmp150, label %if.then152, label %if.end156, !dbg !2767

if.then152:                                       ; preds = %while.body146
  %tobool153 = icmp eq i8 %exp_neg.0, 0, !dbg !2768
  %. = select i1 %tobool153, i32 14, i32 13, !dbg !2771
  br label %cleanup, !dbg !2771

if.end156:                                        ; preds = %while.body146
  %incdec.ptr157 = getelementptr inbounds i8, i8* %str.addr.10, i64 1, !dbg !2772
  call void @llvm.dbg.value(metadata i8* %incdec.ptr157, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %while.cond139, !dbg !2758, !llvm.loop !2773

while.end158:                                     ; preds = %while.cond139
  %d.0.lcssa = phi i32 [ %d.0, %while.cond139 ], !dbg !2744
  call void @llvm.dbg.value(metadata i32 %d.0.lcssa, metadata !2604, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %d.0.lcssa, metadata !2604, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %d.0.lcssa, metadata !2604, metadata !DIExpression()), !dbg !2657
  %tobool159 = icmp eq i8 %exp_neg.0, 0, !dbg !2775
  %sub161 = sub nsw i32 0, %d.0.lcssa, !dbg !2777
  %spec.select3 = select i1 %tobool159, i32 %d.0.lcssa, i32 %sub161, !dbg !2778
  call void @llvm.dbg.value(metadata i32 %spec.select3, metadata !2604, metadata !DIExpression()), !dbg !2657
  %add163 = add nsw i32 %exp.3, %spec.select3, !dbg !2779
  call void @llvm.dbg.value(metadata i32 %add163, metadata !2599, metadata !DIExpression()), !dbg !2617
  br label %cleanup, !dbg !2780

cleanup:                                          ; preds = %if.then152, %while.end158
  %cleanup.dest.slot.0 = phi i32 [ 0, %while.end158 ], [ %., %if.then152 ]
  %exp.4 = phi i32 [ %add163, %while.end158 ], [ %exp.3, %if.then152 ], !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.4, metadata !2599, metadata !DIExpression()), !dbg !2617
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %if.end164, label %cleanup169

if.end164:                                        ; preds = %cleanup, %lor.lhs.false120
  %exp.5 = phi i32 [ %exp.3, %lor.lhs.false120 ], [ %exp.4, %cleanup ], !dbg !2710
  call void @llvm.dbg.value(metadata i32 %exp.5, metadata !2599, metadata !DIExpression()), !dbg !2617
  %18 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !2781
  %bf.load = load i32, i32* %18, align 8, !dbg !2782
  %bf.shl = shl i32 %exp.5, 6, !dbg !2783
  %bf.set = and i32 %bf.load, 60, !dbg !2783
  %bf.clear167 = or i32 %bf.set, %bf.shl, !dbg !2783
  %bf.set168 = or i32 %bf.clear167, 1, !dbg !2783
  store i32 %bf.set168, i32* %18, align 8, !dbg !2783
  tail call fastcc void @normalize(%struct.real_value* %r) #7, !dbg !2784
  br label %cleanup169, !dbg !2785

cleanup169:                                       ; preds = %if.end112, %cleanup, %if.end164
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %if.end164 ], [ 10, %if.end112 ]
  switch i32 %cleanup.dest.slot.1, label %cleanup318 [
    i32 0, label %if.end308
    i32 10, label %is_a_zero
    i32 13, label %underflow
    i32 14, label %overflow
  ]

if.else173:                                       ; preds = %lor.lhs.false, %if.end22
  %call174 = tail call fastcc %struct.real_value* @ten_to_ptwo(i32 0) #7, !dbg !2786
  call void @llvm.dbg.value(metadata %struct.real_value* %call174, metadata !2608, metadata !DIExpression()), !dbg !2787
  br label %while.cond176, !dbg !2788

while.cond176:                                    ; preds = %while.body180, %if.else173
  %str.addr.11 = phi i8* [ %str.addr.1, %if.else173 ], [ %incdec.ptr181, %while.body180 ], !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.11, metadata !2598, metadata !DIExpression()), !dbg !2617
  %19 = load i8, i8* %str.addr.11, align 1, !dbg !2789
  %cmp178 = icmp eq i8 %19, 48, !dbg !2790
  br i1 %cmp178, label %while.body180, label %while.cond183.preheader, !dbg !2788

while.cond183.preheader:                          ; preds = %while.cond176
  %str.addr.11.lcssa = phi i8* [ %str.addr.11, %while.cond176 ], !dbg !2617
  %.lcssa26 = phi i8 [ %19, %while.cond176 ], !dbg !2789
  call void @llvm.dbg.value(metadata i8* %str.addr.11.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.11.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.11.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %while.cond183, !dbg !2791

while.body180:                                    ; preds = %while.cond176
  %incdec.ptr181 = getelementptr inbounds i8, i8* %str.addr.11, i64 1, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %incdec.ptr181, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %while.cond176, !dbg !2788, !llvm.loop !2793

while.cond183:                                    ; preds = %while.cond183.preheader, %if.end200
  %20 = phi i8 [ %.pre, %if.end200 ], [ %.lcssa26, %while.cond183.preheader ], !dbg !2794
  %str.addr.12 = phi i8* [ %incdec.ptr192, %if.end200 ], [ %str.addr.11.lcssa, %while.cond183.preheader ], !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.12, metadata !2598, metadata !DIExpression()), !dbg !2617
  %idxprom186 = zext i8 %20 to i64, !dbg !2794
  %arrayidx187 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom186, !dbg !2794
  %21 = load i16, i16* %arrayidx187, align 2, !dbg !2794
  %22 = and i16 %21, 4, !dbg !2794
  %tobool190 = icmp eq i16 %22, 0, !dbg !2791
  br i1 %tobool190, label %while.end201, label %while.body191, !dbg !2791

while.body191:                                    ; preds = %while.cond183
  %incdec.ptr192 = getelementptr inbounds i8, i8* %str.addr.12, i64 1, !dbg !2795
  call void @llvm.dbg.value(metadata i8* %incdec.ptr192, metadata !2598, metadata !DIExpression()), !dbg !2617
  %conv193 = sext i8 %20 to i32, !dbg !2797
  %sub194 = add nsw i32 %conv193, -48, !dbg !2798
  call void @llvm.dbg.value(metadata i32 %sub194, metadata !2610, metadata !DIExpression()), !dbg !2787
  %call195 = tail call fastcc zeroext i8 @do_multiply(%struct.real_value* %r, %struct.real_value* %r, %struct.real_value* %call174) #7, !dbg !2799
  %tobool196 = icmp eq i32 %sub194, 0, !dbg !2800
  br i1 %tobool196, label %if.end200, label %if.then197, !dbg !2802

if.then197:                                       ; preds = %while.body191
  %call198 = tail call fastcc %struct.real_value* @real_digit(i32 %sub194) #7, !dbg !2803
  %call199 = tail call fastcc zeroext i8 @do_add(%struct.real_value* %r, %struct.real_value* %r, %struct.real_value* %call198, i32 0) #7, !dbg !2804
  br label %if.end200, !dbg !2804

if.end200:                                        ; preds = %while.body191, %if.then197
  %.pre = load i8, i8* %incdec.ptr192, align 1, !dbg !2794
  br label %while.cond183, !dbg !2791, !llvm.loop !2805

while.end201:                                     ; preds = %while.cond183
  %.lcssa25 = phi i8 [ %20, %while.cond183 ], !dbg !2794
  %str.addr.12.lcssa = phi i8* [ %str.addr.12, %while.cond183 ], !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.12.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.12.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.12.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  %cmp203 = icmp eq i8 %.lcssa25, 46, !dbg !2807
  br i1 %cmp203, label %if.then205, label %if.end240, !dbg !2809

if.then205:                                       ; preds = %while.end201
  %incdec.ptr206 = getelementptr inbounds i8, i8* %str.addr.12.lcssa, i64 1, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %incdec.ptr206, metadata !2598, metadata !DIExpression()), !dbg !2617
  %23 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !2812
  %bf.load207 = load i32, i32* %23, align 8, !dbg !2812
  %bf.clear208 = and i32 %bf.load207, 3, !dbg !2812
  %cmp209 = icmp eq i32 %bf.clear208, 0, !dbg !2814
  br i1 %cmp209, label %while.cond212.preheader, label %if.end219, !dbg !2815

while.cond212.preheader:                          ; preds = %if.then205
  br label %while.cond212, !dbg !2816

while.cond212:                                    ; preds = %while.cond212.preheader, %while.body216
  %exp.6 = phi i32 [ %dec, %while.body216 ], [ 0, %while.cond212.preheader ], !dbg !2617
  %str.addr.13 = phi i8* [ %incdec.ptr217, %while.body216 ], [ %incdec.ptr206, %while.cond212.preheader ], !dbg !2818
  call void @llvm.dbg.value(metadata i8* %str.addr.13, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.6, metadata !2599, metadata !DIExpression()), !dbg !2617
  %24 = load i8, i8* %str.addr.13, align 1, !dbg !2819
  %cmp214 = icmp eq i8 %24, 48, !dbg !2820
  br i1 %cmp214, label %while.body216, label %if.end219.loopexit, !dbg !2816

while.body216:                                    ; preds = %while.cond212
  %incdec.ptr217 = getelementptr inbounds i8, i8* %str.addr.13, i64 1, !dbg !2821
  call void @llvm.dbg.value(metadata i8* %incdec.ptr217, metadata !2598, metadata !DIExpression()), !dbg !2617
  %dec = add nsw i32 %exp.6, -1, !dbg !2822
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2599, metadata !DIExpression()), !dbg !2617
  br label %while.cond212, !dbg !2816, !llvm.loop !2823

if.end219.loopexit:                               ; preds = %while.cond212
  %exp.6.lcssa = phi i32 [ %exp.6, %while.cond212 ], !dbg !2617
  %str.addr.13.lcssa = phi i8* [ %str.addr.13, %while.cond212 ], !dbg !2818
  call void @llvm.dbg.value(metadata i32 %exp.6.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.13.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.6.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.13.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.6.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.13.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %if.end219, !dbg !2824

if.end219:                                        ; preds = %if.end219.loopexit, %if.then205
  %exp.7 = phi i32 [ 0, %if.then205 ], [ %exp.6.lcssa, %if.end219.loopexit ], !dbg !2710
  %str.addr.14 = phi i8* [ %incdec.ptr206, %if.then205 ], [ %str.addr.13.lcssa, %if.end219.loopexit ], !dbg !2810
  call void @llvm.dbg.value(metadata i8* %str.addr.14, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.7, metadata !2599, metadata !DIExpression()), !dbg !2617
  br label %while.cond220, !dbg !2824

while.cond220:                                    ; preds = %if.end237, %if.end219
  %exp.8 = phi i32 [ %exp.7, %if.end219 ], [ %dec238, %if.end237 ], !dbg !2617
  %str.addr.15 = phi i8* [ %str.addr.14, %if.end219 ], [ %incdec.ptr229, %if.end237 ], !dbg !2818
  call void @llvm.dbg.value(metadata i8* %str.addr.15, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.8, metadata !2599, metadata !DIExpression()), !dbg !2617
  %25 = load i8, i8* %str.addr.15, align 1, !dbg !2825
  %idxprom223 = zext i8 %25 to i64, !dbg !2825
  %arrayidx224 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom223, !dbg !2825
  %26 = load i16, i16* %arrayidx224, align 2, !dbg !2825
  %27 = and i16 %26, 4, !dbg !2825
  %tobool227 = icmp eq i16 %27, 0, !dbg !2824
  br i1 %tobool227, label %if.end240.loopexit, label %while.body228, !dbg !2824

while.body228:                                    ; preds = %while.cond220
  %incdec.ptr229 = getelementptr inbounds i8, i8* %str.addr.15, i64 1, !dbg !2826
  call void @llvm.dbg.value(metadata i8* %incdec.ptr229, metadata !2598, metadata !DIExpression()), !dbg !2617
  %conv230 = sext i8 %25 to i32, !dbg !2828
  %sub231 = add nsw i32 %conv230, -48, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %sub231, metadata !2610, metadata !DIExpression()), !dbg !2787
  %call232 = tail call fastcc zeroext i8 @do_multiply(%struct.real_value* %r, %struct.real_value* %r, %struct.real_value* %call174) #7, !dbg !2830
  %tobool233 = icmp eq i32 %sub231, 0, !dbg !2831
  br i1 %tobool233, label %if.end237, label %if.then234, !dbg !2833

if.then234:                                       ; preds = %while.body228
  %call235 = tail call fastcc %struct.real_value* @real_digit(i32 %sub231) #7, !dbg !2834
  %call236 = tail call fastcc zeroext i8 @do_add(%struct.real_value* %r, %struct.real_value* %r, %struct.real_value* %call235, i32 0) #7, !dbg !2835
  br label %if.end237, !dbg !2835

if.end237:                                        ; preds = %while.body228, %if.then234
  %dec238 = add nsw i32 %exp.8, -1, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %dec238, metadata !2599, metadata !DIExpression()), !dbg !2617
  br label %while.cond220, !dbg !2824, !llvm.loop !2837

if.end240.loopexit:                               ; preds = %while.cond220
  %exp.8.lcssa = phi i32 [ %exp.8, %while.cond220 ], !dbg !2617
  %str.addr.15.lcssa = phi i8* [ %str.addr.15, %while.cond220 ], !dbg !2818
  %.lcssa24 = phi i8 [ %25, %while.cond220 ], !dbg !2825
  call void @llvm.dbg.value(metadata i32 %exp.8.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.15.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.8.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.15.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.8.lcssa, metadata !2599, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.15.lcssa, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %if.end240, !dbg !2839

if.end240:                                        ; preds = %if.end240.loopexit, %while.end201
  %28 = phi i8 [ %.lcssa25, %while.end201 ], [ %.lcssa24, %if.end240.loopexit ]
  %exp.9 = phi i32 [ 0, %while.end201 ], [ %exp.8.lcssa, %if.end240.loopexit ], !dbg !2710
  %str.addr.16 = phi i8* [ %str.addr.12.lcssa, %while.end201 ], [ %str.addr.15.lcssa, %if.end240.loopexit ], !dbg !2617
  call void @llvm.dbg.value(metadata i8* %str.addr.16, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.9, metadata !2599, metadata !DIExpression()), !dbg !2617
  %29 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !2839
  %bf.load241 = load i32, i32* %29, align 8, !dbg !2839
  %bf.clear242 = and i32 %bf.load241, 3, !dbg !2839
  %cmp243 = icmp eq i32 %bf.clear242, 0, !dbg !2841
  br i1 %cmp243, label %cleanup304, label %if.end246, !dbg !2842

if.end246:                                        ; preds = %if.end240
  %cmp248 = icmp eq i8 %28, 101, !dbg !2843
  br i1 %cmp248, label %if.then254, label %lor.lhs.false250, !dbg !2844

lor.lhs.false250:                                 ; preds = %if.end246
  %cmp252 = icmp eq i8 %28, 69, !dbg !2845
  br i1 %cmp252, label %if.then254, label %if.end300, !dbg !2846

if.then254:                                       ; preds = %lor.lhs.false250, %if.end246
  call void @llvm.dbg.value(metadata i8 0, metadata !2611, metadata !DIExpression()), !dbg !2847
  %incdec.ptr256 = getelementptr inbounds i8, i8* %str.addr.16, i64 1, !dbg !2848
  call void @llvm.dbg.value(metadata i8* %incdec.ptr256, metadata !2598, metadata !DIExpression()), !dbg !2617
  %30 = load i8, i8* %incdec.ptr256, align 1, !dbg !2849
  %cmp258 = icmp eq i8 %30, 45, !dbg !2851
  br i1 %cmp258, label %if.then260, label %if.else262, !dbg !2852

if.then260:                                       ; preds = %if.then254
  call void @llvm.dbg.value(metadata i8 1, metadata !2611, metadata !DIExpression()), !dbg !2847
  %incdec.ptr261 = getelementptr inbounds i8, i8* %str.addr.16, i64 2, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %incdec.ptr261, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %if.end269, !dbg !2855

if.else262:                                       ; preds = %if.then254
  %cmp264 = icmp eq i8 %30, 43, !dbg !2856
  %incdec.ptr267 = getelementptr inbounds i8, i8* %str.addr.16, i64 2, !dbg !2858
  %spec.select4 = select i1 %cmp264, i8* %incdec.ptr267, i8* %incdec.ptr256, !dbg !2859
  call void @llvm.dbg.value(metadata i8* %spec.select4, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %if.end269

if.end269:                                        ; preds = %if.else262, %if.then260
  %str.addr.18 = phi i8* [ %incdec.ptr261, %if.then260 ], [ %spec.select4, %if.else262 ], !dbg !2860
  %exp_neg255.0 = phi i8 [ 1, %if.then260 ], [ 0, %if.else262 ], !dbg !2847
  call void @llvm.dbg.value(metadata i8 %exp_neg255.0, metadata !2611, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %str.addr.18, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 0, metadata !2610, metadata !DIExpression()), !dbg !2787
  br label %while.cond270, !dbg !2861

while.cond270:                                    ; preds = %if.end289, %if.end269
  %d175.0 = phi i32 [ 0, %if.end269 ], [ %add282, %if.end289 ], !dbg !2847
  %str.addr.19 = phi i8* [ %str.addr.18, %if.end269 ], [ %incdec.ptr290, %if.end289 ], !dbg !2847
  call void @llvm.dbg.value(metadata i8* %str.addr.19, metadata !2598, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %d175.0, metadata !2610, metadata !DIExpression()), !dbg !2787
  %31 = load i8, i8* %str.addr.19, align 1, !dbg !2862
  %idxprom273 = zext i8 %31 to i64, !dbg !2862
  %arrayidx274 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom273, !dbg !2862
  %32 = load i16, i16* %arrayidx274, align 2, !dbg !2862
  %33 = and i16 %32, 4, !dbg !2862
  %tobool277 = icmp eq i16 %33, 0, !dbg !2861
  br i1 %tobool277, label %while.end291, label %while.body278, !dbg !2861

while.body278:                                    ; preds = %while.cond270
  %mul279 = mul nsw i32 %d175.0, 10, !dbg !2863
  call void @llvm.dbg.value(metadata i32 %mul279, metadata !2610, metadata !DIExpression()), !dbg !2787
  %conv280 = sext i8 %31 to i32, !dbg !2865
  %sub281 = add nsw i32 %conv280, -48, !dbg !2866
  %add282 = add nsw i32 %mul279, %sub281, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %add282, metadata !2610, metadata !DIExpression()), !dbg !2787
  %cmp283 = icmp sgt i32 %add282, 33554431, !dbg !2868
  br i1 %cmp283, label %if.then285, label %if.end289, !dbg !2870

if.then285:                                       ; preds = %while.body278
  %tobool286 = icmp eq i8 %exp_neg255.0, 0, !dbg !2871
  %.5 = select i1 %tobool286, i32 14, i32 13, !dbg !2874
  br label %cleanup297, !dbg !2874

if.end289:                                        ; preds = %while.body278
  %incdec.ptr290 = getelementptr inbounds i8, i8* %str.addr.19, i64 1, !dbg !2875
  call void @llvm.dbg.value(metadata i8* %incdec.ptr290, metadata !2598, metadata !DIExpression()), !dbg !2617
  br label %while.cond270, !dbg !2861, !llvm.loop !2876

while.end291:                                     ; preds = %while.cond270
  %d175.0.lcssa = phi i32 [ %d175.0, %while.cond270 ], !dbg !2847
  call void @llvm.dbg.value(metadata i32 %d175.0.lcssa, metadata !2610, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 %d175.0.lcssa, metadata !2610, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 %d175.0.lcssa, metadata !2610, metadata !DIExpression()), !dbg !2787
  %tobool292 = icmp eq i8 %exp_neg255.0, 0, !dbg !2878
  %sub294 = sub nsw i32 0, %d175.0.lcssa, !dbg !2880
  %spec.select6 = select i1 %tobool292, i32 %d175.0.lcssa, i32 %sub294, !dbg !2881
  call void @llvm.dbg.value(metadata i32 %spec.select6, metadata !2610, metadata !DIExpression()), !dbg !2787
  %add296 = add nsw i32 %exp.9, %spec.select6, !dbg !2882
  call void @llvm.dbg.value(metadata i32 %add296, metadata !2599, metadata !DIExpression()), !dbg !2617
  br label %cleanup297, !dbg !2883

cleanup297:                                       ; preds = %if.then285, %while.end291
  %cleanup.dest.slot.2 = phi i32 [ 0, %while.end291 ], [ %.5, %if.then285 ]
  %exp.10 = phi i32 [ %add296, %while.end291 ], [ %exp.9, %if.then285 ], !dbg !2617
  call void @llvm.dbg.value(metadata i32 %exp.10, metadata !2599, metadata !DIExpression()), !dbg !2617
  %cond = icmp eq i32 %cleanup.dest.slot.2, 0
  br i1 %cond, label %if.end300, label %cleanup304

if.end300:                                        ; preds = %cleanup297, %lor.lhs.false250
  %exp.11 = phi i32 [ %exp.9, %lor.lhs.false250 ], [ %exp.10, %cleanup297 ], !dbg !2710
  call void @llvm.dbg.value(metadata i32 %exp.11, metadata !2599, metadata !DIExpression()), !dbg !2617
  %tobool301 = icmp eq i32 %exp.11, 0, !dbg !2884
  br i1 %tobool301, label %cleanup304, label %if.then302, !dbg !2886

if.then302:                                       ; preds = %if.end300
  tail call fastcc void @times_pten(%struct.real_value* %r, i32 %exp.11) #7, !dbg !2887
  br label %cleanup304, !dbg !2887

cleanup304:                                       ; preds = %if.end300, %if.then302, %if.end240, %cleanup297
  %cleanup.dest.slot.3 = phi i32 [ %cleanup.dest.slot.2, %cleanup297 ], [ 10, %if.end240 ], [ 0, %if.then302 ], [ 0, %if.end300 ]
  switch i32 %cleanup.dest.slot.3, label %cleanup318 [
    i32 0, label %if.end308
    i32 10, label %is_a_zero
    i32 13, label %underflow
    i32 14, label %overflow
  ]

if.end308:                                        ; preds = %cleanup304, %cleanup169
  %34 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !2888
  %bf.load310 = load i32, i32* %34, align 8, !dbg !2889
  %bf.shl312 = shl nuw nsw i32 %sign.0, 3, !dbg !2889
  %bf.clear313 = and i32 %bf.load310, -9, !dbg !2889
  %bf.set314 = or i32 %bf.clear313, %bf.shl312, !dbg !2889
  store i32 %bf.set314, i32* %34, align 8, !dbg !2889
  br label %cleanup318, !dbg !2890

is_a_zero:                                        ; preds = %cleanup304, %cleanup169
  call void @llvm.dbg.label(metadata !2614), !dbg !2891
  tail call fastcc void @get_zero(%struct.real_value* %r, i32 %sign.0) #7, !dbg !2892
  br label %cleanup318, !dbg !2893

underflow:                                        ; preds = %cleanup304, %cleanup169
  call void @llvm.dbg.label(metadata !2615), !dbg !2894
  tail call fastcc void @get_zero(%struct.real_value* %r, i32 %sign.0) #7, !dbg !2895
  br label %cleanup318, !dbg !2896

overflow:                                         ; preds = %cleanup304, %cleanup169
  call void @llvm.dbg.label(metadata !2616), !dbg !2897
  tail call fastcc void @get_inf(%struct.real_value* %r, i32 %sign.0) #7, !dbg !2898
  br label %cleanup318, !dbg !2899

cleanup318:                                       ; preds = %overflow, %underflow, %is_a_zero, %if.end308, %cleanup304, %cleanup169, %if.then18, %if.then13, %if.then8
  %retval.0 = phi i32 [ undef, %cleanup169 ], [ 1, %overflow ], [ -1, %underflow ], [ 0, %is_a_zero ], [ 0, %if.end308 ], [ undef, %cleanup304 ], [ 0, %if.then18 ], [ 0, %if.then13 ], [ 0, %if.then8 ]
  ret i32 %retval.0, !dbg !2900
}

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @get_canonical_qnan(%struct.real_value* %r, i32 %sign) unnamed_addr #0 !dbg !2901 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2903, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i32 %sign, metadata !2904, metadata !DIExpression()), !dbg !2905
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !2906
  %call = tail call i8* @memset(i8* %0, i32 0, i64 32) #6, !dbg !2907
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !2908
  %bf.load = load i32, i32* %1, align 8, !dbg !2909
  %bf.value = shl i32 %sign, 3, !dbg !2910
  %bf.shl = and i32 %bf.value, 8, !dbg !2910
  %bf.set = and i32 %bf.load, -44, !dbg !2910
  %bf.clear2 = or i32 %bf.set, %bf.shl, !dbg !2910
  %bf.set6 = or i32 %bf.clear2, 35, !dbg !2911
  store i32 %bf.set6, i32* %1, align 8, !dbg !2911
  ret void, !dbg !2912
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @get_canonical_snan(%struct.real_value* %r, i32 %sign) unnamed_addr #0 !dbg !2913 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2915, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 %sign, metadata !2916, metadata !DIExpression()), !dbg !2917
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !2918
  %call = tail call i8* @memset(i8* %0, i32 0, i64 32) #6, !dbg !2919
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !2920
  %bf.load = load i32, i32* %1, align 8, !dbg !2921
  %bf.value = shl i32 %sign, 3, !dbg !2922
  %bf.shl = and i32 %bf.value, 8, !dbg !2922
  %bf.set = and i32 %bf.load, -60, !dbg !2922
  %bf.clear2 = or i32 %bf.set, %bf.shl, !dbg !2922
  %bf.set9 = or i32 %bf.clear2, 51, !dbg !2923
  store i32 %bf.set9, i32* %1, align 8, !dbg !2923
  ret void, !dbg !2924
}

; Function Attrs: nounwind uwtable
define internal fastcc void @normalize(%struct.real_value* %r) unnamed_addr #5 !dbg !2925 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2929, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 0, metadata !2930, metadata !DIExpression()), !dbg !2934
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !2935
  %bf.load = load i32, i32* %0, align 8, !dbg !2935
  %bf.clear = and i32 %bf.load, 4, !dbg !2935
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2937
  br i1 %tobool, label %for.cond.preheader, label %cleanup.cont, !dbg !2938

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !2939

for.cond:                                         ; preds = %for.cond.preheader, %if.then2
  %indvars.iv1 = phi i64 [ 2, %for.cond.preheader ], [ %indvars.iv.next2, %if.then2 ], !dbg !2941
  %shift.0 = phi i32 [ 0, %for.cond.preheader ], [ %add, %if.then2 ], !dbg !2934
  call void @llvm.dbg.value(metadata i32 %shift.0, metadata !2930, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2932, metadata !DIExpression()), !dbg !2934
  %cmp = icmp sgt i64 %indvars.iv1, -1, !dbg !2942
  %1 = trunc i64 %indvars.iv1 to i32, !dbg !2939
  br i1 %cmp, label %for.body, label %for.end, !dbg !2939

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv1, !dbg !2944
  %2 = load i64, i64* %arrayidx, align 8, !dbg !2944
  %cmp1 = icmp eq i64 %2, 0, !dbg !2946
  br i1 %cmp1, label %if.then2, label %for.end, !dbg !2947

if.then2:                                         ; preds = %for.body
  %add = add nuw nsw i32 %shift.0, 64, !dbg !2948
  call void @llvm.dbg.value(metadata i32 %add, metadata !2930, metadata !DIExpression()), !dbg !2934
  %indvars.iv.next2 = add nsw i64 %indvars.iv1, -1, !dbg !2949
  call void @llvm.dbg.value(metadata i32 undef, metadata !2932, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2934
  br label %for.cond, !dbg !2950, !llvm.loop !2951

for.end:                                          ; preds = %for.body, %for.cond
  %indvars.iv1.lcssa = phi i64 [ %indvars.iv1, %for.body ], [ %indvars.iv1, %for.cond ], !dbg !2941
  %shift.0.lcssa = phi i32 [ %shift.0, %for.body ], [ %shift.0, %for.cond ], !dbg !2934
  %.lcssa = phi i32 [ %1, %for.body ], [ %1, %for.cond ], !dbg !2939
  call void @llvm.dbg.value(metadata i64 %indvars.iv1.lcssa, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %indvars.iv1.lcssa, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %shift.0.lcssa, metadata !2930, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %shift.0.lcssa, metadata !2930, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %shift.0.lcssa, metadata !2930, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %shift.0.lcssa, metadata !2930, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %shift.0.lcssa, metadata !2930, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %shift.0.lcssa, metadata !2930, metadata !DIExpression()), !dbg !2934
  %cmp4 = icmp slt i32 %.lcssa, 0, !dbg !2953
  br i1 %cmp4, label %if.then5, label %for.cond11.preheader, !dbg !2955

for.cond11.preheader:                             ; preds = %for.end
  %sext = shl i64 %indvars.iv1.lcssa, 32, !dbg !2956
  %idxprom13 = ashr exact i64 %sext, 32, !dbg !2956
  %arrayidx14 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom13, !dbg !2956
  %3 = load i64, i64* %arrayidx14, align 8, !dbg !2956
  br label %for.cond11, !dbg !2960

if.then5:                                         ; preds = %for.end
  %bf.clear9 = and i32 %bf.load, 60, !dbg !2961
  store i32 %bf.clear9, i32* %0, align 8, !dbg !2961
  br label %cleanup.cont, !dbg !2963

for.cond11:                                       ; preds = %for.cond11.preheader, %for.inc18
  %indvars.iv = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next, %for.inc18 ], !dbg !2964
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2933, metadata !DIExpression()), !dbg !2934
  %sub = sub i64 63, %indvars.iv, !dbg !2965
  %sh_prom = and i64 %sub, 4294967295, !dbg !2966
  %shl = shl i64 1, %sh_prom, !dbg !2966
  %and = and i64 %3, %shl, !dbg !2967
  %tobool15 = icmp eq i64 %and, 0, !dbg !2967
  br i1 %tobool15, label %for.inc18, label %for.end19, !dbg !2968

for.inc18:                                        ; preds = %for.cond11
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2969
  call void @llvm.dbg.value(metadata i32 undef, metadata !2933, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2934
  br label %for.cond11, !dbg !2970, !llvm.loop !2971

for.end19:                                        ; preds = %for.cond11
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond11 ], !dbg !2964
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !2933, metadata !DIExpression()), !dbg !2934
  %4 = trunc i64 %indvars.iv.lcssa to i32, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %4, metadata !2933, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %4, metadata !2933, metadata !DIExpression()), !dbg !2934
  %add20 = add nuw nsw i32 %shift.0.lcssa, %4, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %add20, metadata !2930, metadata !DIExpression()), !dbg !2934
  %cmp21 = icmp eq i32 %add20, 0, !dbg !2974
  br i1 %cmp21, label %cleanup.cont, label %if.then22, !dbg !2976

if.then22:                                        ; preds = %for.end19
  %sub25 = ashr i32 %bf.load, 6, !dbg !2977
  %sub26 = sub nsw i32 %sub25, %add20, !dbg !2979
  call void @llvm.dbg.value(metadata i32 %sub26, metadata !2931, metadata !DIExpression()), !dbg !2934
  %cmp27 = icmp sgt i32 %sub26, 33554431, !dbg !2980
  br i1 %cmp27, label %if.then28, label %if.else32, !dbg !2982

if.then28:                                        ; preds = %if.then22
  %bf.lshr30 = lshr i32 %bf.load, 3, !dbg !2983
  %bf.clear31 = and i32 %bf.lshr30, 1, !dbg !2983
  tail call fastcc void @get_inf(%struct.real_value* %r, i32 %bf.clear31) #7, !dbg !2984
  br label %cleanup.cont, !dbg !2984

if.else32:                                        ; preds = %if.then22
  %cmp33 = icmp slt i32 %sub26, -33554431, !dbg !2985
  br i1 %cmp33, label %if.then34, label %if.else38, !dbg !2987

if.then34:                                        ; preds = %if.else32
  %bf.lshr36 = lshr i32 %bf.load, 3, !dbg !2988
  %bf.clear37 = and i32 %bf.lshr36, 1, !dbg !2988
  tail call fastcc void @get_zero(%struct.real_value* %r, i32 %bf.clear37) #7, !dbg !2989
  br label %cleanup.cont, !dbg !2989

if.else38:                                        ; preds = %if.else32
  %bf.shl = shl i32 %sub26, 6, !dbg !2990
  %bf.clear41 = and i32 %bf.load, 63, !dbg !2990
  %bf.set = or i32 %bf.clear41, %bf.shl, !dbg !2990
  store i32 %bf.set, i32* %0, align 8, !dbg !2990
  tail call fastcc void @lshift_significand(%struct.real_value* %r, %struct.real_value* %r, i32 %add20) #7, !dbg !2992
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %for.end19, %entry, %if.then5, %if.then28, %if.else38, %if.then34
  ret void, !dbg !2993
}

; Function Attrs: nounwind uwtable
define internal fastcc void @times_pten(%struct.real_value* %r, i32 %exp) unnamed_addr #5 !dbg !2994 {
entry:
  %pten = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !2996, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 %exp, metadata !2997, metadata !DIExpression()), !dbg !3002
  %0 = bitcast %struct.real_value* %pten to i8*, !dbg !3003
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3003
  %tobool = icmp sgt i32 %exp, -1, !dbg !3004
  br i1 %tobool, label %if.end, label %if.then, !dbg !3006

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 0, %exp, !dbg !3007
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2997, metadata !DIExpression()), !dbg !3002
  %call = tail call fastcc %struct.real_value* @real_digit(i32 1) #7, !dbg !3009
  %1 = bitcast %struct.real_value* %call to i8*, !dbg !3010
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %1, i64 32, i1 false), !dbg !3010
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2999, metadata !DIExpression()), !dbg !3002
  br label %if.end, !dbg !3011

if.end:                                           ; preds = %entry, %if.then
  %rr.0 = phi %struct.real_value* [ %pten, %if.then ], [ %r, %entry ], !dbg !3012
  %exp.addr.0 = phi i32 [ %sub, %if.then ], [ %exp, %entry ]
  call void @llvm.dbg.value(metadata i32 %exp.addr.0, metadata !2997, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata %struct.real_value* %rr.0, metadata !2999, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 0, metadata !3001, metadata !DIExpression()), !dbg !3002
  br label %for.cond, !dbg !3013

for.cond:                                         ; preds = %for.inc, %if.end
  %exp.addr.1 = phi i32 [ %exp.addr.0, %if.end ], [ %shr, %for.inc ], !dbg !3002
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !3015
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3001, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 %exp.addr.1, metadata !2997, metadata !DIExpression()), !dbg !3002
  %cmp2 = icmp sgt i32 %exp.addr.1, 0, !dbg !3016
  br i1 %cmp2, label %for.body, label %for.end, !dbg !3018

for.body:                                         ; preds = %for.cond
  %and = and i32 %exp.addr.1, 1, !dbg !3019
  %tobool4 = icmp eq i32 %and, 0, !dbg !3019
  br i1 %tobool4, label %for.inc, label %if.then5, !dbg !3021

if.then5:                                         ; preds = %for.body
  %call6 = call fastcc %struct.real_value* @ten_to_ptwo(i32 %i.0) #7, !dbg !3022
  %call7 = call fastcc zeroext i8 @do_multiply(%struct.real_value* %rr.0, %struct.real_value* %rr.0, %struct.real_value* %call6) #7, !dbg !3023
  br label %for.inc, !dbg !3023

for.inc:                                          ; preds = %for.body, %if.then5
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3024
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3001, metadata !DIExpression()), !dbg !3002
  %shr = ashr i32 %exp.addr.1, 1, !dbg !3025
  call void @llvm.dbg.value(metadata i32 %shr, metadata !2997, metadata !DIExpression()), !dbg !3002
  br label %for.cond, !dbg !3026, !llvm.loop !3027

for.end:                                          ; preds = %for.cond
  br i1 %tobool, label %if.end12, label %if.then10, !dbg !3029

if.then10:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !2998, metadata !DIExpression(DW_OP_deref)), !dbg !3002
  %call11 = call fastcc zeroext i8 @do_divide(%struct.real_value* %r, %struct.real_value* %r, %struct.real_value* nonnull %pten) #7, !dbg !3030
  br label %if.end12, !dbg !3030

if.end12:                                         ; preds = %for.end, %if.then10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3032
  ret void, !dbg !3032
}

; Function Attrs: nounwind uwtable
define dso_local void @real_from_string2(%struct.real_value* noalias sret %agg.result, i8* %s, i32 %mode) local_unnamed_addr #5 !dbg !3033 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.declare(metadata %struct.real_value* %agg.result, metadata !3039, metadata !DIExpression()), !dbg !3041
  %call = tail call i32 @real_from_string(%struct.real_value* %agg.result, i8* %s) #7, !dbg !3042
  %cmp = icmp eq i32 %mode, 0, !dbg !3043
  br i1 %cmp, label %if.end, label %if.then, !dbg !3045

if.then:                                          ; preds = %entry
  tail call void @real_convert(%struct.real_value* %agg.result, i32 %mode, %struct.real_value* %agg.result) #7, !dbg !3046
  br label %if.end, !dbg !3046

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3047
}

; Function Attrs: nounwind uwtable
define dso_local void @real_from_string3(%struct.real_value* %r, i8* %s, i32 %mode) local_unnamed_addr #5 !dbg !3048 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3052, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8* %s, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3054, metadata !DIExpression()), !dbg !3055
  %idxprom = zext i32 %mode to i64, !dbg !3056
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !3056
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3056
  %cmp = icmp eq i8 %0, 9, !dbg !3056
  br i1 %cmp, label %if.then, label %if.else, !dbg !3058

if.then:                                          ; preds = %entry
  tail call void @decimal_real_from_string(%struct.real_value* %r, i8* %s) #6, !dbg !3059
  br label %if.end, !dbg !3059

if.else:                                          ; preds = %entry
  %call = tail call i32 @real_from_string(%struct.real_value* %r, i8* %s) #7, !dbg !3060
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp2 = icmp eq i32 %mode, 0, !dbg !3061
  br i1 %cmp2, label %if.end5, label %if.then4, !dbg !3063

if.then4:                                         ; preds = %if.end
  tail call void @real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* %r) #7, !dbg !3064
  br label %if.end5, !dbg !3064

if.end5:                                          ; preds = %if.end, %if.then4
  ret void, !dbg !3065
}

declare dso_local void @decimal_real_from_string(%struct.real_value*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @real_from_integer(%struct.real_value* %r, i32 %mode, i64 %low, i64 %high, i32 %unsigned_p) local_unnamed_addr #5 !dbg !3066 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3070, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3071, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %low, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %high, metadata !3073, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %unsigned_p, metadata !3074, metadata !DIExpression()), !dbg !3075
  %0 = or i64 %low, %high, !dbg !3076
  %1 = icmp eq i64 %0, 0, !dbg !3076
  br i1 %1, label %if.then, label %if.else, !dbg !3076

if.then:                                          ; preds = %entry
  tail call fastcc void @get_zero(%struct.real_value* %r, i32 0) #7, !dbg !3078
  br label %if.end19, !dbg !3078

if.else:                                          ; preds = %entry
  %2 = bitcast %struct.real_value* %r to i8*, !dbg !3079
  %call = tail call i8* @memset(i8* %2, i32 0, i64 32) #6, !dbg !3081
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3082
  %bf.load = load i32, i32* %3, align 8, !dbg !3083
  %bf.clear = and i32 %bf.load, -4, !dbg !3083
  %bf.set = or i32 %bf.clear, 1, !dbg !3083
  store i32 %bf.set, i32* %3, align 8, !dbg !3083
  %cmp2 = icmp slt i64 %high, 0, !dbg !3084
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !3085

land.rhs:                                         ; preds = %if.else
  %tobool = icmp eq i32 %unsigned_p, 0, !dbg !3086
  %phitmp = zext i1 %tobool to i32
  %phitmp1 = shl nuw nsw i32 %phitmp, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %4 = phi i32 [ 0, %if.else ], [ %phitmp1, %land.rhs ]
  %bf.clear4 = and i32 %bf.set, 53, !dbg !3087
  %.masked = and i32 %4, 56, !dbg !3088
  %bf.clear7 = or i32 %bf.clear4, %.masked, !dbg !3088
  %bf.set8 = or i32 %bf.clear7, 8192, !dbg !3088
  store i32 %bf.set8, i32* %3, align 8, !dbg !3088
  %bf.clear10 = and i32 %4, 8, !dbg !3089
  %tobool11 = icmp eq i32 %bf.clear10, 0, !dbg !3091
  br i1 %tobool11, label %if.end16, label %if.then12, !dbg !3092

if.then12:                                        ; preds = %land.end
  %neg = xor i64 %high, -1, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %neg, metadata !3073, metadata !DIExpression()), !dbg !3075
  %cmp13 = icmp eq i64 %low, 0, !dbg !3095
  %add = sub i64 0, %high, !dbg !3097
  %sub = sub i64 0, %low, !dbg !3097
  %high.addr.0 = select i1 %cmp13, i64 %add, i64 %neg, !dbg !3097
  br label %if.end16, !dbg !3097

if.end16:                                         ; preds = %land.end, %if.then12
  %low.addr.1 = phi i64 [ %low, %land.end ], [ %sub, %if.then12 ]
  %high.addr.1 = phi i64 [ %high, %land.end ], [ %high.addr.0, %if.then12 ]
  call void @llvm.dbg.value(metadata i64 %high.addr.1, metadata !3073, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %low.addr.1, metadata !3072, metadata !DIExpression()), !dbg !3075
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !3098
  store i64 %high.addr.1, i64* %arrayidx, align 8, !dbg !3101
  %arrayidx18 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 1, !dbg !3102
  store i64 %low.addr.1, i64* %arrayidx18, align 8, !dbg !3103
  tail call fastcc void @normalize(%struct.real_value* %r) #7, !dbg !3104
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %if.then
  %idxprom = zext i32 %mode to i64, !dbg !3105
  %arrayidx20 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !3105
  %5 = load i8, i8* %arrayidx20, align 1, !dbg !3105
  %cmp21 = icmp eq i8 %5, 9, !dbg !3105
  br i1 %cmp21, label %if.then23, label %if.else24, !dbg !3107

if.then23:                                        ; preds = %if.end19
  tail call fastcc void @decimal_from_integer(%struct.real_value* %r) #7, !dbg !3108
  br label %if.end29, !dbg !3108

if.else24:                                        ; preds = %if.end19
  %cmp25 = icmp eq i32 %mode, 0, !dbg !3109
  br i1 %cmp25, label %if.end29, label %if.then27, !dbg !3111

if.then27:                                        ; preds = %if.else24
  tail call void @real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* %r) #7, !dbg !3112
  br label %if.end29, !dbg !3112

if.end29:                                         ; preds = %if.else24, %if.then27, %if.then23
  ret void, !dbg !3113
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_from_integer(%struct.real_value* %r) unnamed_addr #5 !dbg !3114 {
entry:
  %str = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3116, metadata !DIExpression()), !dbg !3121
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i64 0, i64 0, !dbg !3122
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #8, !dbg !3122
  call void @llvm.dbg.declare(metadata [256 x i8]* %str, metadata !3117, metadata !DIExpression()), !dbg !3123
  call fastcc void @decimal_integer_string(i8* nonnull %0, %struct.real_value* %r, i64 255) #7, !dbg !3124
  call void @decimal_real_from_string(%struct.real_value* %r, i8* nonnull %0) #6, !dbg !3125
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #8, !dbg !3126
  ret void, !dbg !3126
}

; Function Attrs: nounwind uwtable
define dso_local %struct.real_value* @dconst_e_ptr() local_unnamed_addr #5 !dbg !2 {
entry:
  %bf.load = load i32, i32* getelementptr inbounds (%struct.real_value, %struct.real_value* @dconst_e_ptr.value, i64 0, i32 0), align 8, !dbg !3127
  %bf.clear = and i32 %bf.load, 3, !dbg !3127
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !3128
  br i1 %cmp, label %if.then, label %if.end, !dbg !3129

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.real_value, %struct.real_value* @dconst_e_ptr.value, i64 0, i32 0), align 8, !dbg !3130
  store i64 3, i64* getelementptr inbounds (%struct.real_value, %struct.real_value* @dconst_e_ptr.value, i64 0, i32 1, i64 0), align 8, !dbg !3131
  call void @llvm.dbg.value(metadata i32 1, metadata !521, metadata !DIExpression()), !dbg !3132
  br label %for.cond, !dbg !3133

for.cond:                                         ; preds = %for.body, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.then ], !dbg !3135
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !521, metadata !DIExpression()), !dbg !3132
  %exitcond = icmp eq i64 %indvars.iv, 3, !dbg !3136
  br i1 %exitcond, label %if.end.loopexit, label %for.body, !dbg !3138

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* @dconst_e_ptr.value, i64 0, i32 1, i64 %indvars.iv, !dbg !3139
  store i64 0, i64* %arrayidx, align 8, !dbg !3140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i32 undef, metadata !521, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3132
  br label %for.cond, !dbg !3142, !llvm.loop !3143

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !3145

if.end:                                           ; preds = %if.end.loopexit, %entry
  ret %struct.real_value* @dconst_e_ptr.value, !dbg !3145
}

; Function Attrs: nounwind uwtable
define dso_local %struct.real_value* @dconst_third_ptr() local_unnamed_addr #5 !dbg !384 {
entry:
  %bf.load = load i32, i32* getelementptr inbounds (%struct.real_value, %struct.real_value* @dconst_third_ptr.value, i64 0, i32 0), align 8, !dbg !3146
  %bf.clear = and i32 %bf.load, 3, !dbg !3146
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !3148
  br i1 %cmp, label %if.then, label %if.end, !dbg !3149

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.real_value* @real_digit(i32 3) #7, !dbg !3150
  %call1 = tail call zeroext i8 @real_arithmetic(%struct.real_value* nonnull @dconst_third_ptr.value, i32 75, %struct.real_value* nonnull @dconst1, %struct.real_value* %call) #7, !dbg !3152
  br label %if.end, !dbg !3153

if.end:                                           ; preds = %if.then, %entry
  ret %struct.real_value* @dconst_third_ptr.value, !dbg !3154
}

; Function Attrs: nounwind uwtable
define dso_local %struct.real_value* @dconst_sqrt2_ptr() local_unnamed_addr #5 !dbg !388 {
entry:
  %bf.load = load i32, i32* getelementptr inbounds (%struct.real_value, %struct.real_value* @dconst_sqrt2_ptr.value, i64 0, i32 0), align 8, !dbg !3155
  %bf.clear = and i32 %bf.load, 3, !dbg !3155
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !3156
  br i1 %cmp, label %if.then, label %if.end, !dbg !3157

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.real_value, %struct.real_value* @dconst_sqrt2_ptr.value, i64 0, i32 0), align 8, !dbg !3158
  store i64 3, i64* getelementptr inbounds (%struct.real_value, %struct.real_value* @dconst_sqrt2_ptr.value, i64 0, i32 1, i64 0), align 8, !dbg !3159
  call void @llvm.dbg.value(metadata i32 1, metadata !390, metadata !DIExpression()), !dbg !3160
  br label %for.cond, !dbg !3161

for.cond:                                         ; preds = %for.body, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.then ], !dbg !3163
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !390, metadata !DIExpression()), !dbg !3160
  %exitcond = icmp eq i64 %indvars.iv, 3, !dbg !3164
  br i1 %exitcond, label %if.end.loopexit, label %for.body, !dbg !3166

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* @dconst_sqrt2_ptr.value, i64 0, i32 1, i64 %indvars.iv, !dbg !3167
  store i64 0, i64* %arrayidx, align 8, !dbg !3168
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i32 undef, metadata !390, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3160
  br label %for.cond, !dbg !3170, !llvm.loop !3171

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !3173

if.end:                                           ; preds = %if.end.loopexit, %entry
  ret %struct.real_value* @dconst_sqrt2_ptr.value, !dbg !3173
}

; Function Attrs: nounwind uwtable
define dso_local void @real_inf(%struct.real_value* %r) local_unnamed_addr #5 !dbg !3174 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3176, metadata !DIExpression()), !dbg !3177
  tail call fastcc void @get_inf(%struct.real_value* %r, i32 0) #7, !dbg !3178
  ret void, !dbg !3179
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_nan(%struct.real_value* %r, i8* %str, i32 %quiet, i32 %mode) local_unnamed_addr #5 !dbg !3180 {
entry:
  %u = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3184, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %str, metadata !3185, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i32 %quiet, metadata !3186, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3187, metadata !DIExpression()), !dbg !3195
  %cond = add i32 %mode, -38, !dbg !3196
  %idxprom3 = zext i32 %cond to i64, !dbg !3196
  %arrayidx4 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom3, !dbg !3196
  %0 = load %struct.real_format*, %struct.real_format** %arrayidx4, align 8, !dbg !3196
  call void @llvm.dbg.value(metadata %struct.real_format* %0, metadata !3188, metadata !DIExpression()), !dbg !3195
  %tobool = icmp eq %struct.real_format* %0, null, !dbg !3197
  br i1 %tobool, label %cond.true5, label %cond.end7, !dbg !3197

cond.true5:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2467, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3197
  br label %cond.end7, !dbg !3197

cond.end7:                                        ; preds = %entry, %cond.true5
  %1 = load i8, i8* %str, align 1, !dbg !3198
  %cmp10 = icmp eq i8 %1, 0, !dbg !3199
  br i1 %cmp10, label %if.then, label %if.else14, !dbg !3200

if.then:                                          ; preds = %cond.end7
  %tobool12 = icmp eq i32 %quiet, 0, !dbg !3201
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !3204

if.then13:                                        ; preds = %if.then
  tail call fastcc void @get_canonical_qnan(%struct.real_value* %r, i32 0) #7, !dbg !3205
  br label %if.end79, !dbg !3205

if.else:                                          ; preds = %if.then
  tail call fastcc void @get_canonical_snan(%struct.real_value* %r, i32 0) #7, !dbg !3206
  br label %if.end79

if.else14:                                        ; preds = %cond.end7
  call void @llvm.dbg.value(metadata i32 10, metadata !3189, metadata !DIExpression()), !dbg !3207
  %2 = bitcast %struct.real_value* %r to i8*, !dbg !3208
  %call = tail call i8* @memset(i8* %2, i32 0, i64 32) #6, !dbg !3209
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3210
  %bf.load = load i32, i32* %3, align 8, !dbg !3211
  %bf.set = or i32 %bf.load, 3, !dbg !3211
  store i32 %bf.set, i32* %3, align 8, !dbg !3211
  br label %while.cond, !dbg !3212

while.cond:                                       ; preds = %while.body, %if.else14
  %str.addr.0 = phi i8* [ %str, %if.else14 ], [ %incdec.ptr, %while.body ]
  call void @llvm.dbg.value(metadata i8* %str.addr.0, metadata !3185, metadata !DIExpression()), !dbg !3195
  %4 = load i8, i8* %str.addr.0, align 1, !dbg !3213
  %idxprom16 = zext i8 %4 to i64, !dbg !3213
  %arrayidx17 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom16, !dbg !3213
  %5 = load i16, i16* %arrayidx17, align 2, !dbg !3213
  %6 = and i16 %5, 64, !dbg !3213
  %tobool20 = icmp eq i16 %6, 0, !dbg !3212
  br i1 %tobool20, label %while.end, label %while.body, !dbg !3212

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i64 1, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3185, metadata !DIExpression()), !dbg !3195
  br label %while.cond, !dbg !3212, !llvm.loop !3215

while.end:                                        ; preds = %while.cond
  %str.addr.0.lcssa = phi i8* [ %str.addr.0, %while.cond ]
  %.lcssa30 = phi i8 [ %4, %while.cond ], !dbg !3213
  call void @llvm.dbg.value(metadata i8* %str.addr.0.lcssa, metadata !3185, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %str.addr.0.lcssa, metadata !3185, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %str.addr.0.lcssa, metadata !3185, metadata !DIExpression()), !dbg !3195
  %cmp22 = icmp eq i8 %.lcssa30, 45, !dbg !3216
  br i1 %cmp22, label %if.then24, label %if.else26, !dbg !3218

if.then24:                                        ; preds = %while.end
  %incdec.ptr25 = getelementptr inbounds i8, i8* %str.addr.0.lcssa, i64 1, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %incdec.ptr25, metadata !3185, metadata !DIExpression()), !dbg !3195
  br label %if.end33, !dbg !3220

if.else26:                                        ; preds = %while.end
  %cmp28 = icmp eq i8 %.lcssa30, 43, !dbg !3221
  %incdec.ptr31 = getelementptr inbounds i8, i8* %str.addr.0.lcssa, i64 1, !dbg !3223
  %spec.select = select i1 %cmp28, i8* %incdec.ptr31, i8* %str.addr.0.lcssa, !dbg !3224
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !3185, metadata !DIExpression()), !dbg !3195
  br label %if.end33

if.end33:                                         ; preds = %if.else26, %if.then24
  %str.addr.2 = phi i8* [ %incdec.ptr25, %if.then24 ], [ %spec.select, %if.else26 ], !dbg !3225
  call void @llvm.dbg.value(metadata i8* %str.addr.2, metadata !3185, metadata !DIExpression()), !dbg !3195
  %7 = load i8, i8* %str.addr.2, align 1, !dbg !3226
  %cmp35 = icmp eq i8 %7, 48, !dbg !3228
  br i1 %cmp35, label %if.then37, label %if.end49, !dbg !3229

if.then37:                                        ; preds = %if.end33
  %incdec.ptr38 = getelementptr inbounds i8, i8* %str.addr.2, i64 1, !dbg !3230
  call void @llvm.dbg.value(metadata i8* %incdec.ptr38, metadata !3185, metadata !DIExpression()), !dbg !3195
  %8 = load i8, i8* %incdec.ptr38, align 1, !dbg !3232
  %cmp40 = icmp eq i8 %8, 120, !dbg !3234
  br i1 %cmp40, label %if.then45, label %lor.lhs.false, !dbg !3235

lor.lhs.false:                                    ; preds = %if.then37
  %cmp43 = icmp eq i8 %8, 88, !dbg !3236
  br i1 %cmp43, label %if.then45, label %if.end49, !dbg !3237

if.then45:                                        ; preds = %lor.lhs.false, %if.then37
  call void @llvm.dbg.value(metadata i32 16, metadata !3189, metadata !DIExpression()), !dbg !3207
  %incdec.ptr46 = getelementptr inbounds i8, i8* %str.addr.2, i64 2, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %incdec.ptr46, metadata !3185, metadata !DIExpression()), !dbg !3195
  br label %if.end49, !dbg !3240

if.end49:                                         ; preds = %if.then45, %lor.lhs.false, %if.end33
  %base.1 = phi i32 [ 10, %if.end33 ], [ 16, %if.then45 ], [ 8, %lor.lhs.false ], !dbg !3207
  %str.addr.4 = phi i8* [ %str.addr.2, %if.end33 ], [ %incdec.ptr46, %if.then45 ], [ %incdec.ptr38, %lor.lhs.false ], !dbg !3207
  call void @llvm.dbg.value(metadata i8* %str.addr.4, metadata !3185, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i32 %base.1, metadata !3189, metadata !DIExpression()), !dbg !3207
  %9 = bitcast %struct.real_value* %u to i8*, !dbg !3241
  %arrayidx61 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 1, i64 0, !dbg !3241
  %10 = icmp eq i32 %base.1, 8
  br i1 %10, label %if.end49.split.us, label %if.end49.if.end49.split_crit_edge, !dbg !3242

if.end49.if.end49.split_crit_edge:                ; preds = %if.end49
  %11 = icmp eq i32 %base.1, 16
  br i1 %11, label %if.end49.split.split.us, label %if.end49.split.if.end49.split.split_crit_edge, !dbg !3242

if.end49.split.us:                                ; preds = %if.end49
  br label %while.cond50.us, !dbg !3242

while.cond50.us:                                  ; preds = %while.body56.us, %if.end49.split.us
  %str.addr.5.us = phi i8* [ %str.addr.4, %if.end49.split.us ], [ %incdec.ptr63.us, %while.body56.us ], !dbg !3207
  call void @llvm.dbg.value(metadata i8* %str.addr.5.us, metadata !3185, metadata !DIExpression()), !dbg !3195
  %12 = load i8, i8* %str.addr.5.us, align 1, !dbg !3243
  %idxprom51.us = zext i8 %12 to i64, !dbg !3243
  %arrayidx52.us = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom51.us, !dbg !3243
  %13 = load i8, i8* %arrayidx52.us, align 1, !dbg !3243
  call void @llvm.dbg.value(metadata i8 %13, metadata !3192, metadata !DIExpression()), !dbg !3207
  %cmp54.us = icmp ult i8 %13, 8, !dbg !3244
  br i1 %cmp54.us, label %while.body56.us, label %while.end64.us-lcssa.us, !dbg !3242

while.body56.us:                                  ; preds = %while.cond50.us
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #8, !dbg !3245
  call fastcc void @lshift_significand(%struct.real_value* %r, %struct.real_value* %r, i32 3) #7, !dbg !3246
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3193, metadata !DIExpression(DW_OP_deref)), !dbg !3241
  call fastcc void @get_zero(%struct.real_value* nonnull %u, i32 0) #7, !dbg !3248
  %conv60.us = zext i8 %13 to i64, !dbg !3249
  store i64 %conv60.us, i64* %arrayidx61, align 8, !dbg !3250
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3193, metadata !DIExpression(DW_OP_deref)), !dbg !3241
  %call62.us = call fastcc zeroext i8 @add_significands(%struct.real_value* %r, %struct.real_value* %r, %struct.real_value* nonnull %u) #7, !dbg !3251
  %incdec.ptr63.us = getelementptr inbounds i8, i8* %str.addr.5.us, i64 1, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %incdec.ptr63.us, metadata !3185, metadata !DIExpression()), !dbg !3195
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #8, !dbg !3253
  br label %while.cond50.us, !dbg !3242, !llvm.loop !3254

while.end64.us-lcssa.us:                          ; preds = %while.cond50.us
  %.lcssa = phi i8 [ %12, %while.cond50.us ], !dbg !3243
  br label %while.end64, !dbg !3255

if.end49.split.if.end49.split.split_crit_edge:    ; preds = %if.end49.if.end49.split_crit_edge
  br label %while.cond50, !dbg !3242

if.end49.split.split.us:                          ; preds = %if.end49.if.end49.split_crit_edge
  br label %while.cond50.us3, !dbg !3242

while.cond50.us3:                                 ; preds = %while.body56.us9, %if.end49.split.split.us
  %str.addr.5.us4 = phi i8* [ %str.addr.4, %if.end49.split.split.us ], [ %incdec.ptr63.us18, %while.body56.us9 ], !dbg !3207
  call void @llvm.dbg.value(metadata i8* %str.addr.5.us4, metadata !3185, metadata !DIExpression()), !dbg !3195
  %14 = load i8, i8* %str.addr.5.us4, align 1, !dbg !3243
  %idxprom51.us5 = zext i8 %14 to i64, !dbg !3243
  %arrayidx52.us6 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom51.us5, !dbg !3243
  %15 = load i8, i8* %arrayidx52.us6, align 1, !dbg !3243
  call void @llvm.dbg.value(metadata i8 %15, metadata !3192, metadata !DIExpression()), !dbg !3207
  %cmp54.us8 = icmp ult i8 %15, 16, !dbg !3244
  br i1 %cmp54.us8, label %while.body56.us9, label %while.end64.us-lcssa.us-lcssa.us, !dbg !3242

while.body56.us9:                                 ; preds = %while.cond50.us3
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #8, !dbg !3245
  call fastcc void @lshift_significand(%struct.real_value* %r, %struct.real_value* %r, i32 4) #7, !dbg !3257
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3193, metadata !DIExpression(DW_OP_deref)), !dbg !3241
  call fastcc void @get_zero(%struct.real_value* nonnull %u, i32 0) #7, !dbg !3248
  %conv60.us16 = zext i8 %15 to i64, !dbg !3249
  store i64 %conv60.us16, i64* %arrayidx61, align 8, !dbg !3250
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3193, metadata !DIExpression(DW_OP_deref)), !dbg !3241
  %call62.us17 = call fastcc zeroext i8 @add_significands(%struct.real_value* %r, %struct.real_value* %r, %struct.real_value* nonnull %u) #7, !dbg !3251
  %incdec.ptr63.us18 = getelementptr inbounds i8, i8* %str.addr.5.us4, i64 1, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %incdec.ptr63.us18, metadata !3185, metadata !DIExpression()), !dbg !3195
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #8, !dbg !3253
  br label %while.cond50.us3, !dbg !3242, !llvm.loop !3254

while.end64.us-lcssa.us-lcssa.us:                 ; preds = %while.cond50.us3
  %.lcssa26 = phi i8 [ %14, %while.cond50.us3 ], !dbg !3243
  br label %while.end64.us-lcssa, !dbg !3255

while.cond50:                                     ; preds = %sw.epilog, %if.end49.split.if.end49.split.split_crit_edge
  %str.addr.5 = phi i8* [ %str.addr.4, %if.end49.split.if.end49.split.split_crit_edge ], [ %incdec.ptr63, %sw.epilog ], !dbg !3207
  call void @llvm.dbg.value(metadata i8* %str.addr.5, metadata !3185, metadata !DIExpression()), !dbg !3195
  %16 = load i8, i8* %str.addr.5, align 1, !dbg !3243
  %idxprom51 = zext i8 %16 to i64, !dbg !3243
  %arrayidx52 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom51, !dbg !3243
  %17 = load i8, i8* %arrayidx52, align 1, !dbg !3243
  %conv53 = zext i8 %17 to i32, !dbg !3243
  call void @llvm.dbg.value(metadata i32 %conv53, metadata !3192, metadata !DIExpression()), !dbg !3207
  %cmp54 = icmp ugt i32 %base.1, %conv53, !dbg !3244
  br i1 %cmp54, label %while.body56, label %while.end64.us-lcssa.us-lcssa, !dbg !3242

while.body56:                                     ; preds = %while.cond50
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #8, !dbg !3245
  switch i32 %base.1, label %sw.default [
    i32 8, label %sw.bb
    i32 16, label %sw.bb57
    i32 10, label %sw.bb58
  ], !dbg !3258

sw.bb:                                            ; preds = %while.body56
  unreachable

sw.bb57:                                          ; preds = %while.body56
  unreachable

sw.bb58:                                          ; preds = %while.body56
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3193, metadata !DIExpression(DW_OP_deref)), !dbg !3241
  call fastcc void @lshift_significand_1(%struct.real_value* nonnull %u, %struct.real_value* %r) #7, !dbg !3259
  call fastcc void @lshift_significand(%struct.real_value* %r, %struct.real_value* %r, i32 3) #7, !dbg !3260
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3193, metadata !DIExpression(DW_OP_deref)), !dbg !3241
  %call59 = call fastcc zeroext i8 @add_significands(%struct.real_value* %r, %struct.real_value* %r, %struct.real_value* nonnull %u) #7, !dbg !3261
  br label %sw.epilog, !dbg !3262

sw.default:                                       ; preds = %while.body56
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2521, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3263
  br label %sw.epilog, !dbg !3264

sw.epilog:                                        ; preds = %sw.default, %sw.bb58
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3193, metadata !DIExpression(DW_OP_deref)), !dbg !3241
  call fastcc void @get_zero(%struct.real_value* nonnull %u, i32 0) #7, !dbg !3248
  %conv60 = zext i8 %17 to i64, !dbg !3249
  store i64 %conv60, i64* %arrayidx61, align 8, !dbg !3250
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3193, metadata !DIExpression(DW_OP_deref)), !dbg !3241
  %call62 = call fastcc zeroext i8 @add_significands(%struct.real_value* %r, %struct.real_value* %r, %struct.real_value* nonnull %u) #7, !dbg !3251
  %incdec.ptr63 = getelementptr inbounds i8, i8* %str.addr.5, i64 1, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %incdec.ptr63, metadata !3185, metadata !DIExpression()), !dbg !3195
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #8, !dbg !3253
  br label %while.cond50, !dbg !3242, !llvm.loop !3254

while.end64.us-lcssa.us-lcssa:                    ; preds = %while.cond50
  %.lcssa27 = phi i8 [ %16, %while.cond50 ], !dbg !3243
  br label %while.end64.us-lcssa, !dbg !3255

while.end64.us-lcssa:                             ; preds = %while.end64.us-lcssa.us-lcssa.us, %while.end64.us-lcssa.us-lcssa
  %18 = phi i8 [ %.lcssa27, %while.end64.us-lcssa.us-lcssa ], [ %.lcssa26, %while.end64.us-lcssa.us-lcssa.us ]
  br label %while.end64, !dbg !3255

while.end64:                                      ; preds = %while.end64.us-lcssa.us, %while.end64.us-lcssa
  %19 = phi i8 [ %18, %while.end64.us-lcssa ], [ %.lcssa, %while.end64.us-lcssa.us ], !dbg !3255
  %cmp66 = icmp eq i8 %19, 0, !dbg !3265
  br i1 %cmp66, label %if.end69, label %cleanup, !dbg !3266

if.end69:                                         ; preds = %while.end64
  %pnan = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 4, !dbg !3267
  %20 = load i32, i32* %pnan, align 8, !dbg !3267
  %sub70 = sub nsw i32 192, %20, !dbg !3268
  call fastcc void @lshift_significand(%struct.real_value* %r, %struct.real_value* %r, i32 %sub70) #7, !dbg !3269
  %arrayidx72 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !3270
  %21 = load i64, i64* %arrayidx72, align 8, !dbg !3271
  %and73 = and i64 %21, 9223372036854775807, !dbg !3271
  store i64 %and73, i64* %arrayidx72, align 8, !dbg !3271
  %tobool74 = icmp eq i32 %quiet, 0, !dbg !3272
  %lnot.ext = zext i1 %tobool74 to i32, !dbg !3272
  %bf.load75 = load i32, i32* %3, align 8, !dbg !3273
  %bf.shl = shl nuw nsw i32 %lnot.ext, 4, !dbg !3273
  %bf.clear76 = and i32 %bf.load75, -17, !dbg !3273
  %bf.set77 = or i32 %bf.clear76, %bf.shl, !dbg !3273
  store i32 %bf.set77, i32* %3, align 8, !dbg !3273
  br label %cleanup, !dbg !3274

cleanup:                                          ; preds = %while.end64, %if.end69
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end69 ], [ false, %while.end64 ]
  br i1 %cleanup.dest.slot.0, label %if.end79, label %cleanup80

if.end79:                                         ; preds = %cleanup, %if.then13, %if.else
  br label %cleanup80, !dbg !3275

cleanup80:                                        ; preds = %cleanup, %if.end79
  %retval.1 = phi i8 [ 1, %if.end79 ], [ 0, %cleanup ], !dbg !3195
  ret i8 %retval.1, !dbg !3276
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lshift_significand(%struct.real_value* %r, %struct.real_value* %a, i32 %n) unnamed_addr #5 !dbg !3277 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3279, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !3280, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i32 %n, metadata !3281, metadata !DIExpression()), !dbg !3284
  %div = lshr i32 %n, 6, !dbg !3285
  call void @llvm.dbg.value(metadata i32 %div, metadata !3283, metadata !DIExpression()), !dbg !3284
  %and = and i32 %n, 63, !dbg !3286
  call void @llvm.dbg.value(metadata i32 %and, metadata !3281, metadata !DIExpression()), !dbg !3284
  %cmp = icmp eq i32 %and, 0, !dbg !3287
  call void @llvm.dbg.value(metadata i32 0, metadata !3282, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i32 0, metadata !3282, metadata !DIExpression()), !dbg !3284
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader, !dbg !3289

for.cond17.preheader:                             ; preds = %entry
  %sh_prom = zext i32 %and to i64, !dbg !3290
  %0 = xor i32 %div, -1, !dbg !3290
  %sub40 = sub nuw nsw i32 64, %and, !dbg !3290
  %sh_prom41 = zext i32 %sub40 to i64, !dbg !3290
  %1 = zext i32 %div to i64, !dbg !3294
  br label %for.cond17, !dbg !3294

for.cond.preheader:                               ; preds = %entry
  %2 = zext i32 %div to i64, !dbg !3295
  br label %for.cond, !dbg !3295

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !3298
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3282, metadata !DIExpression()), !dbg !3284
  %3 = add nuw nsw i64 %indvars.iv, %2, !dbg !3299
  %cmp1 = icmp ult i64 %3, 3, !dbg !3301
  br i1 %cmp1, label %for.body, label %for.cond7.preheader, !dbg !3295

for.cond7.preheader:                              ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ], !dbg !3298
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !3282, metadata !DIExpression()), !dbg !3284
  %4 = trunc i64 %indvars.iv.lcssa to i32, !dbg !3284
  call void @llvm.dbg.value(metadata i32 %4, metadata !3282, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i32 %4, metadata !3282, metadata !DIExpression()), !dbg !3284
  br label %for.cond7, !dbg !3302

for.body:                                         ; preds = %for.cond
  %5 = sub nsw i64 2, %indvars.iv, !dbg !3304
  %6 = trunc i64 %5 to i32, !dbg !3305
  %sub2 = sub i32 %6, %div, !dbg !3305
  %idxprom = zext i32 %sub2 to i64, !dbg !3306
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %idxprom, !dbg !3306
  %7 = load i64, i64* %arrayidx, align 8, !dbg !3306
  %8 = sub nsw i64 2, %indvars.iv, !dbg !3307
  %idxprom5 = and i64 %8, 4294967295, !dbg !3307
  %arrayidx6 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom5, !dbg !3307
  store i64 %7, i64* %arrayidx6, align 8, !dbg !3308
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3309
  call void @llvm.dbg.value(metadata i32 undef, metadata !3282, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3284
  br label %for.cond, !dbg !3310, !llvm.loop !3311

for.cond7:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv12 = phi i64 [ %indvars.iv.lcssa, %for.cond7.preheader ], [ %indvars.iv.next13, %for.body9 ], !dbg !3313
  %i.1 = phi i32 [ %inc15, %for.body9 ], [ %4, %for.cond7.preheader ], !dbg !3313
  call void @llvm.dbg.value(metadata i64 undef, metadata !3282, metadata !DIExpression()), !dbg !3284
  %exitcond = icmp eq i64 %indvars.iv12, 3, !dbg !3314
  br i1 %exitcond, label %if.end.loopexit, label %for.body9, !dbg !3302

for.body9:                                        ; preds = %for.cond7
  %sub11 = sub i32 2, %i.1, !dbg !3316
  %idxprom12 = zext i32 %sub11 to i64, !dbg !3317
  %arrayidx13 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom12, !dbg !3317
  store i64 0, i64* %arrayidx13, align 8, !dbg !3318
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !3319
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !3319
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !3282, metadata !DIExpression()), !dbg !3284
  br label %for.cond7, !dbg !3320, !llvm.loop !3321

for.cond17:                                       ; preds = %for.cond17.preheader, %cond.end38
  %indvars.iv4 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next5, %cond.end38 ], !dbg !3323
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !3282, metadata !DIExpression()), !dbg !3284
  %exitcond11 = icmp eq i64 %indvars.iv4, 3, !dbg !3324
  br i1 %exitcond11, label %if.end.loopexit1, label %for.body19, !dbg !3294

for.body19:                                       ; preds = %for.cond17
  %9 = add nuw nsw i64 %indvars.iv4, %1, !dbg !3325
  %cmp21 = icmp ugt i64 %9, 2, !dbg !3326
  br i1 %cmp21, label %cond.end, label %cond.false, !dbg !3327

cond.false:                                       ; preds = %for.body19
  %10 = sub nsw i64 2, %indvars.iv4, !dbg !3328
  %11 = trunc i64 %10 to i32, !dbg !3329
  %sub24 = sub i32 %11, %div, !dbg !3329
  %idxprom25 = zext i32 %sub24 to i64, !dbg !3330
  %arrayidx26 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %idxprom25, !dbg !3330
  %12 = load i64, i64* %arrayidx26, align 8, !dbg !3330
  br label %cond.end, !dbg !3327

cond.end:                                         ; preds = %for.body19, %cond.false
  %cond = phi i64 [ %12, %cond.false ], [ 0, %for.body19 ], !dbg !3327
  %shl = shl i64 %cond, %sh_prom, !dbg !3331
  %cmp29 = icmp ugt i64 %9, 1, !dbg !3332
  br i1 %cmp29, label %cond.end.cond.end38_crit_edge, label %cond.false31, !dbg !3333

cond.end.cond.end38_crit_edge:                    ; preds = %cond.end
  %13 = trunc i64 %indvars.iv4 to i32, !dbg !3333
  br label %cond.end38, !dbg !3333

cond.false31:                                     ; preds = %cond.end
  %14 = sub nsw i64 2, %indvars.iv4, !dbg !3334
  %15 = trunc i64 %14 to i32, !dbg !3335
  %sub35 = add i32 %15, %0, !dbg !3335
  %idxprom36 = zext i32 %sub35 to i64, !dbg !3336
  %arrayidx37 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %idxprom36, !dbg !3336
  %16 = load i64, i64* %arrayidx37, align 8, !dbg !3336
  %17 = trunc i64 %indvars.iv4 to i32, !dbg !3333
  br label %cond.end38, !dbg !3333

cond.end38:                                       ; preds = %cond.end.cond.end38_crit_edge, %cond.false31
  %i.2.pn = phi i32 [ %13, %cond.end.cond.end38_crit_edge ], [ %17, %cond.false31 ]
  %cond39 = phi i64 [ 0, %cond.end.cond.end38_crit_edge ], [ %16, %cond.false31 ], !dbg !3333
  %sub43.pre-phi = sub i32 2, %i.2.pn, !dbg !3337
  %shr = lshr i64 %cond39, %sh_prom41, !dbg !3338
  %or = or i64 %shl, %shr, !dbg !3339
  %idxprom44 = zext i32 %sub43.pre-phi to i64, !dbg !3340
  %arrayidx45 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom44, !dbg !3340
  store i64 %or, i64* %arrayidx45, align 8, !dbg !3341
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !3342
  call void @llvm.dbg.value(metadata i32 undef, metadata !3282, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3284
  br label %for.cond17, !dbg !3343, !llvm.loop !3344

if.end.loopexit:                                  ; preds = %for.cond7
  br label %if.end, !dbg !3346

if.end.loopexit1:                                 ; preds = %for.cond17
  br label %if.end, !dbg !3346

if.end:                                           ; preds = %if.end.loopexit1, %if.end.loopexit
  ret void, !dbg !3346
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lshift_significand_1(%struct.real_value* %r, %struct.real_value* %a) unnamed_addr #0 !dbg !3347 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3349, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !3350, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 2, metadata !3351, metadata !DIExpression()), !dbg !3352
  br label %for.cond, !dbg !3353

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 2, %entry ], !dbg !3355
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3351, metadata !DIExpression()), !dbg !3352
  %cmp = icmp eq i64 %indvars.iv, 0, !dbg !3356
  br i1 %cmp, label %for.end, label %for.body, !dbg !3358

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %indvars.iv, !dbg !3359
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3359
  %shl = shl i64 %0, 1, !dbg !3360
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3361
  %idxprom2 = and i64 %indvars.iv.next, 4294967295, !dbg !3362
  %arrayidx3 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %idxprom2, !dbg !3362
  %1 = load i64, i64* %arrayidx3, align 8, !dbg !3362
  %shr = lshr i64 %1, 63, !dbg !3363
  %or = or i64 %shl, %shr, !dbg !3364
  %arrayidx6 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv, !dbg !3365
  store i64 %or, i64* %arrayidx6, align 8, !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3351, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3352
  br label %for.cond, !dbg !3367, !llvm.loop !3368

for.end:                                          ; preds = %for.cond
  %arrayidx8 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 0, !dbg !3370
  %2 = load i64, i64* %arrayidx8, align 8, !dbg !3370
  %shl9 = shl i64 %2, 1, !dbg !3371
  %arrayidx11 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !3372
  store i64 %shl9, i64* %arrayidx11, align 8, !dbg !3373
  ret void, !dbg !3374
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @add_significands(%struct.real_value* %r, %struct.real_value* %a, %struct.real_value* %b) unnamed_addr #0 !dbg !3375 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3377, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !3378, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !3379, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8 0, metadata !3380, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i32 0, metadata !3381, metadata !DIExpression()), !dbg !3387
  br label %for.cond, !dbg !3388

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ], !dbg !3387
  %carry.0 = phi i8 [ %carry.1, %if.end ], [ 0, %entry ], !dbg !3387
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3381, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8 %carry.0, metadata !3380, metadata !DIExpression()), !dbg !3387
  %exitcond = icmp eq i64 %indvars.iv, 3, !dbg !3389
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3390

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %indvars.iv, !dbg !3391
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3391
  call void @llvm.dbg.value(metadata i64 %0, metadata !3382, metadata !DIExpression()), !dbg !3392
  %arrayidx3 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 1, i64 %indvars.iv, !dbg !3393
  %1 = load i64, i64* %arrayidx3, align 8, !dbg !3393
  %add = add i64 %0, %1, !dbg !3394
  call void @llvm.dbg.value(metadata i64 %add, metadata !3386, metadata !DIExpression()), !dbg !3392
  %tobool = icmp eq i8 %carry.0, 0, !dbg !3395
  %cmp4 = icmp ult i64 %add, %0, !dbg !3397
  call void @llvm.dbg.value(metadata i1 %cmp4, metadata !3380, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i1 %cmp4, metadata !3380, metadata !DIExpression()), !dbg !3387
  br i1 %tobool, label %if.end, label %if.then, !dbg !3398

if.then:                                          ; preds = %for.body
  %inc = add i64 %add, 1, !dbg !3399
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3386, metadata !DIExpression()), !dbg !3392
  %cmp6 = icmp eq i64 %inc, 0, !dbg !3401
  %or1 = or i1 %cmp4, %cmp6, !dbg !3402
  call void @llvm.dbg.value(metadata i1 %or1, metadata !3380, metadata !DIExpression()), !dbg !3387
  br label %if.end, !dbg !3403

if.end:                                           ; preds = %for.body, %if.then
  %carry.1.in = phi i1 [ %or1, %if.then ], [ %cmp4, %for.body ]
  %ri.0 = phi i64 [ %inc, %if.then ], [ %add, %for.body ], !dbg !3392
  %carry.1 = zext i1 %carry.1.in to i8, !dbg !3397
  call void @llvm.dbg.value(metadata i64 %ri.0, metadata !3386, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i8 %carry.1, metadata !3380, metadata !DIExpression()), !dbg !3387
  %arrayidx15 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv, !dbg !3404
  store i64 %ri.0, i64* %arrayidx15, align 8, !dbg !3405
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3406
  call void @llvm.dbg.value(metadata i32 undef, metadata !3381, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3387
  br label %for.cond, !dbg !3407, !llvm.loop !3408

for.end:                                          ; preds = %for.cond
  %carry.0.lcssa = phi i8 [ %carry.0, %for.cond ], !dbg !3387
  call void @llvm.dbg.value(metadata i8 %carry.0.lcssa, metadata !3380, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8 %carry.0.lcssa, metadata !3380, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8 %carry.0.lcssa, metadata !3380, metadata !DIExpression()), !dbg !3387
  ret i8 %carry.0.lcssa, !dbg !3410
}

; Function Attrs: nounwind uwtable
define dso_local void @real_maxval(%struct.real_value* %r, i32 %sign, i32 %mode) local_unnamed_addr #5 !dbg !3411 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3415, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 %sign, metadata !3416, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3417, metadata !DIExpression()), !dbg !3420
  %cond = add i32 %mode, -38, !dbg !3421
  %idxprom3 = zext i32 %cond to i64, !dbg !3421
  %arrayidx4 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom3, !dbg !3421
  %0 = load %struct.real_format*, %struct.real_format** %arrayidx4, align 8, !dbg !3421
  call void @llvm.dbg.value(metadata %struct.real_format* %0, metadata !3418, metadata !DIExpression()), !dbg !3420
  %tobool = icmp eq %struct.real_format* %0, null, !dbg !3422
  br i1 %tobool, label %cond.true5, label %cond.end7, !dbg !3422

cond.true5:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2559, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3422
  br label %cond.end7, !dbg !3422

cond.end7:                                        ; preds = %entry, %cond.true5
  %1 = bitcast %struct.real_value* %r to i8*, !dbg !3423
  %call = tail call i8* @memset(i8* %1, i32 0, i64 32) #6, !dbg !3424
  %b = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 2, !dbg !3425
  %2 = load i32, i32* %b, align 8, !dbg !3425
  %cmp9 = icmp eq i32 %2, 10, !dbg !3427
  br i1 %cmp9, label %if.then, label %if.else, !dbg !3428

if.then:                                          ; preds = %cond.end7
  tail call void @decimal_real_maxval(%struct.real_value* %r, i32 %sign, i32 %mode) #6, !dbg !3429
  br label %if.end28, !dbg !3429

if.else:                                          ; preds = %cond.end7
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3430
  %bf.load = load i32, i32* %3, align 8, !dbg !3432
  %bf.value = shl i32 %sign, 3, !dbg !3433
  %bf.shl = and i32 %bf.value, 8, !dbg !3433
  %bf.set = and i32 %bf.load, -12, !dbg !3433
  %bf.clear12 = or i32 %bf.set, %bf.shl, !dbg !3433
  %bf.set13 = or i32 %bf.clear12, 1, !dbg !3433
  store i32 %bf.set13, i32* %3, align 8, !dbg !3433
  %emax = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 6, !dbg !3434
  %4 = load i32, i32* %emax, align 8, !dbg !3434
  %bf.shl16 = shl i32 %4, 6, !dbg !3434
  %bf.clear17 = and i32 %bf.set13, 61, !dbg !3434
  %bf.set18 = or i32 %bf.clear17, %bf.shl16, !dbg !3434
  store i32 %bf.set18, i32* %3, align 8, !dbg !3434
  %p = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 3, !dbg !3435
  %5 = load i32, i32* %p, align 4, !dbg !3435
  %sub19 = sub nsw i32 192, %5, !dbg !3436
  call void @llvm.dbg.value(metadata i32 %sub19, metadata !3419, metadata !DIExpression()), !dbg !3420
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !3437
  %6 = bitcast i64* %arraydecay to i8*, !dbg !3437
  %call20 = tail call i8* @memset(i8* nonnull %6, i32 -1, i64 24) #6, !dbg !3438
  tail call fastcc void @clear_significand_below(%struct.real_value* %r, i32 %sub19) #7, !dbg !3439
  %pnan = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 4, !dbg !3440
  %7 = load i32, i32* %pnan, align 8, !dbg !3440
  %8 = load i32, i32* %p, align 4, !dbg !3442
  %cmp22 = icmp slt i32 %7, %8, !dbg !3443
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !3444

if.then24:                                        ; preds = %if.else
  %sub27 = sub i32 191, %7, !dbg !3445
  tail call fastcc void @clear_significand_bit(%struct.real_value* %r, i32 %sub27) #7, !dbg !3446
  br label %if.end28, !dbg !3446

if.end28:                                         ; preds = %if.else, %if.then24, %if.then
  ret void, !dbg !3447
}

declare dso_local void @decimal_real_maxval(%struct.real_value*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @clear_significand_below(%struct.real_value* %r, i32 %n) unnamed_addr #5 !dbg !3448 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3452, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %n, metadata !3453, metadata !DIExpression()), !dbg !3456
  %div = lshr i32 %n, 6, !dbg !3457
  call void @llvm.dbg.value(metadata i32 %div, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 0, metadata !3454, metadata !DIExpression()), !dbg !3456
  %wide.trip.count = zext i32 %div to i64, !dbg !3458
  br label %for.cond, !dbg !3461

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3462
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3454, metadata !DIExpression()), !dbg !3456
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3458
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3463

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv, !dbg !3464
  store i64 0, i64* %arrayidx, align 8, !dbg !3465
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3466
  call void @llvm.dbg.value(metadata i32 undef, metadata !3454, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3456
  br label %for.cond, !dbg !3467, !llvm.loop !3468

for.end:                                          ; preds = %for.cond
  %rem = and i32 %n, 63, !dbg !3470
  %sh_prom = zext i32 %rem to i64, !dbg !3471
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !3472
  %idxprom2 = zext i32 %div to i64, !dbg !3473
  %arrayidx3 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom2, !dbg !3473
  %0 = load i64, i64* %arrayidx3, align 8, !dbg !3474
  %and = and i64 %0, %notmask, !dbg !3474
  store i64 %and, i64* %arrayidx3, align 8, !dbg !3474
  ret void, !dbg !3475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_significand_bit(%struct.real_value* %r, i32 %n) unnamed_addr #0 !dbg !3476 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3478, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %n, metadata !3479, metadata !DIExpression()), !dbg !3480
  %rem = and i32 %n, 63, !dbg !3481
  %sh_prom = zext i32 %rem to i64, !dbg !3482
  %shl = shl i64 1, %sh_prom, !dbg !3482
  %neg = xor i64 %shl, -1, !dbg !3483
  %div = lshr i32 %n, 6, !dbg !3484
  %idxprom = zext i32 %div to i64, !dbg !3485
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom, !dbg !3485
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3486
  %and = and i64 %0, %neg, !dbg !3486
  store i64 %and, i64* %arrayidx, align 8, !dbg !3486
  ret void, !dbg !3487
}

; Function Attrs: nounwind uwtable
define dso_local void @real_2expN(%struct.real_value* %r, i32 %n, i32 %fmode) local_unnamed_addr #5 !dbg !3488 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3490, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i32 %n, metadata !3491, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i32 %fmode, metadata !3492, metadata !DIExpression()), !dbg !3493
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !3494
  %call = tail call i8* @memset(i8* %0, i32 0, i64 32) #6, !dbg !3495
  %inc = add nsw i32 %n, 1, !dbg !3496
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3491, metadata !DIExpression()), !dbg !3493
  %cmp = icmp sgt i32 %n, 33554430, !dbg !3497
  br i1 %cmp, label %if.then, label %if.else, !dbg !3499

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3500
  %bf.load = load i32, i32* %1, align 8, !dbg !3501
  %bf.clear = and i32 %bf.load, -4, !dbg !3501
  %bf.set = or i32 %bf.clear, 2, !dbg !3501
  store i32 %bf.set, i32* %1, align 8, !dbg !3501
  br label %if.end10, !dbg !3502

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %inc, -33554431, !dbg !3503
  br i1 %cmp1, label %if.end10, label %if.else3, !dbg !3505

if.else3:                                         ; preds = %if.else
  %2 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3506
  %bf.load4 = load i32, i32* %2, align 8, !dbg !3508
  %bf.shl = shl i32 %inc, 6, !dbg !3509
  %bf.set6 = and i32 %bf.load4, 60, !dbg !3509
  %bf.clear8 = or i32 %bf.set6, %bf.shl, !dbg !3509
  %bf.set9 = or i32 %bf.clear8, 1, !dbg !3509
  store i32 %bf.set9, i32* %2, align 8, !dbg !3509
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !3510
  store i64 -9223372036854775808, i64* %arrayidx, align 8, !dbg !3511
  br label %if.end10

if.end10:                                         ; preds = %if.else3, %if.else, %if.then
  %idxprom = zext i32 %fmode to i64, !dbg !3512
  %arrayidx11 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !3512
  %3 = load i8, i8* %arrayidx11, align 1, !dbg !3512
  %cmp12 = icmp eq i8 %3, 9, !dbg !3512
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !3514

if.then14:                                        ; preds = %if.end10
  tail call void @decimal_real_convert(%struct.real_value* %r, i32 %fmode, %struct.real_value* %r) #6, !dbg !3515
  br label %if.end15, !dbg !3515

if.end15:                                         ; preds = %if.then14, %if.end10
  ret void, !dbg !3516
}

declare dso_local void @decimal_real_convert(%struct.real_value*, i32, %struct.real_value*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @round_for_format(%struct.real_format* %fmt, %struct.real_value* %r) unnamed_addr #5 !dbg !3517 {
entry:
  %u = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3522, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 0, metadata !3529, metadata !DIExpression()), !dbg !3545
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3546
  %bf.load = load i32, i32* %0, align 8, !dbg !3546
  %bf.clear = and i32 %bf.load, 4, !dbg !3546
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !3548
  br i1 %tobool, label %if.end2, label %if.then, !dbg !3549

if.then:                                          ; preds = %entry
  %b = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 2, !dbg !3550
  %1 = load i32, i32* %b, align 8, !dbg !3550
  %cmp = icmp eq i32 %1, 10, !dbg !3553
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3554

if.then1:                                         ; preds = %if.then
  tail call void @decimal_round_for_format(%struct.real_format* %fmt, %struct.real_value* %r) #6, !dbg !3555
  br label %cleanup.cont130, !dbg !3557

if.end:                                           ; preds = %if.then
  tail call void @decimal_real_convert(%struct.real_value* %r, i32 39, %struct.real_value* %r) #6, !dbg !3558
  %bf.load4.pre = load i32, i32* %0, align 8, !dbg !3559
  br label %if.end2, !dbg !3560

if.end2:                                          ; preds = %entry, %if.end
  %bf.load40 = phi i32 [ %bf.load, %entry ], [ %bf.load4.pre, %if.end ], !dbg !3559
  %p = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 3, !dbg !3561
  %2 = load i32, i32* %p, align 4, !dbg !3561
  call void @llvm.dbg.value(metadata i32 %2, metadata !3523, metadata !DIExpression()), !dbg !3545
  %emin = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 5, !dbg !3562
  %3 = load i32, i32* %emin, align 4, !dbg !3562
  %sub = add nsw i32 %3, -1, !dbg !3563
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3527, metadata !DIExpression()), !dbg !3545
  %emax = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 6, !dbg !3564
  %4 = load i32, i32* %emax, align 8, !dbg !3564
  call void @llvm.dbg.value(metadata i32 %4, metadata !3528, metadata !DIExpression()), !dbg !3545
  %sub3 = sub nsw i32 192, %2, !dbg !3565
  call void @llvm.dbg.value(metadata i32 %sub3, metadata !3524, metadata !DIExpression()), !dbg !3545
  %bf.clear5 = and i32 %bf.load40, 3, !dbg !3559
  switch i32 %bf.clear5, label %sw.default1 [
    i32 0, label %sw.bb
    i32 2, label %cleanup.cont130
    i32 3, label %sw.bb18
    i32 1, label %sw.epilog
  ], !dbg !3566

underflow:                                        ; preds = %if.end113, %cleanup
  %bf.load6 = phi i32 [ %bf.load114, %if.end113 ], [ %bf.load68, %cleanup ], !dbg !3567
  call void @llvm.dbg.label(metadata !3542), !dbg !3568
  %bf.lshr7 = lshr i32 %bf.load6, 3, !dbg !3567
  %bf.clear8 = and i32 %bf.lshr7, 1, !dbg !3567
  call fastcc void @get_zero(%struct.real_value* %r, i32 %bf.clear8) #7, !dbg !3569
  br label %sw.bb, !dbg !3569

sw.bb:                                            ; preds = %if.end2, %underflow
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 14, !dbg !3570
  %5 = load i8, i8* %has_signed_zero, align 1, !dbg !3570
  %tobool9 = icmp eq i8 %5, 0, !dbg !3572
  br i1 %tobool9, label %if.then10, label %cleanup.cont130, !dbg !3573

if.then10:                                        ; preds = %sw.bb
  %bf.load11 = load i32, i32* %0, align 8, !dbg !3574
  %bf.clear12 = and i32 %bf.load11, -9, !dbg !3574
  store i32 %bf.clear12, i32* %0, align 8, !dbg !3574
  br label %cleanup.cont130, !dbg !3575

overflow:                                         ; preds = %cleanup110.overflow_crit_edge, %sw.epilog
  %bf.load14 = phi i32 [ %bf.load14.pre, %cleanup110.overflow_crit_edge ], [ %bf.load40, %sw.epilog ], !dbg !3576
  call void @llvm.dbg.label(metadata !3544), !dbg !3577
  %bf.lshr15 = lshr i32 %bf.load14, 3, !dbg !3576
  %bf.clear16 = and i32 %bf.lshr15, 1, !dbg !3576
  call fastcc void @get_inf(%struct.real_value* %r, i32 %bf.clear16) #7, !dbg !3578
  br label %cleanup.cont130, !dbg !3578

sw.bb18:                                          ; preds = %if.end2
  tail call fastcc void @clear_significand_below(%struct.real_value* %r, i32 %sub3) #7, !dbg !3579
  br label %cleanup.cont130, !dbg !3580

sw.default1:                                      ; preds = %if.end2
  unreachable

sw.epilog:                                        ; preds = %if.end2
  %sub21 = ashr i32 %bf.load40, 6, !dbg !3581
  %cmp22 = icmp sgt i32 %sub21, %4, !dbg !3582
  br i1 %cmp22, label %overflow, label %if.else, !dbg !3583

if.else:                                          ; preds = %sw.epilog
  %cmp28 = icmp slt i32 %sub21, %3, !dbg !3584
  br i1 %cmp28, label %if.then29, label %if.end57, !dbg !3585

if.then29:                                        ; preds = %if.else
  %has_denorm = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 13, !dbg !3586
  %6 = load i8, i8* %has_denorm, align 8, !dbg !3586
  %tobool30 = icmp eq i8 %6, 0, !dbg !3588
  br i1 %tobool30, label %if.then31, label %if.else39, !dbg !3589

if.then31:                                        ; preds = %if.then29
  %cmp36 = icmp sgt i32 %sub, %sub21, !dbg !3590
  br i1 %cmp36, label %cleanup, label %if.end55, !dbg !3593

if.else39:                                        ; preds = %if.then29
  %sub44 = sub nsw i32 %sub, %sub21, !dbg !3594
  %add = add nsw i32 %sub44, 1, !dbg !3596
  call void @llvm.dbg.value(metadata i32 %add, metadata !3530, metadata !DIExpression()), !dbg !3597
  %cmp45 = icmp slt i32 %sub44, %2, !dbg !3598
  br i1 %cmp45, label %if.end47, label %cleanup, !dbg !3600

if.end47:                                         ; preds = %if.else39
  %call = tail call fastcc zeroext i8 @sticky_rshift_significand(%struct.real_value* %r, %struct.real_value* %r, i32 %add) #7, !dbg !3601
  %conv = zext i8 %call to i64, !dbg !3601
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !3602
  %7 = load i64, i64* %arrayidx, align 8, !dbg !3603
  %or = or i64 %7, %conv, !dbg !3603
  store i64 %or, i64* %arrayidx, align 8, !dbg !3603
  %bf.load48 = load i32, i32* %0, align 8, !dbg !3604
  %add525 = shl i32 %add, 6, !dbg !3604
  %8 = add i32 %bf.load48, %add525, !dbg !3604
  store i32 %8, i32* %0, align 8, !dbg !3604
  br label %if.end55

if.end55:                                         ; preds = %if.then31, %if.end47
  %bf.load69 = phi i32 [ %bf.load40, %if.then31 ], [ %8, %if.end47 ]
  br label %cleanup, !dbg !3605

cleanup:                                          ; preds = %if.else39, %if.then31, %if.end55
  %bf.load68 = phi i32 [ %bf.load69, %if.end55 ], [ %bf.load40, %if.then31 ], [ %bf.load40, %if.else39 ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end55 ], [ false, %if.then31 ], [ false, %if.else39 ]
  br i1 %cleanup.dest.slot.0, label %if.end57, label %underflow

if.end57:                                         ; preds = %if.else, %cleanup
  %round_towards_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 9, !dbg !3606
  %9 = load i8, i8* %round_towards_zero, align 4, !dbg !3606
  %tobool58 = icmp eq i8 %9, 0, !dbg !3607
  br i1 %tobool58, label %if.then59, label %if.end82, !dbg !3608

if.then59:                                        ; preds = %if.end57
  call void @llvm.dbg.value(metadata i64 0, metadata !3534, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i32 0, metadata !3525, metadata !DIExpression()), !dbg !3545
  %sub60 = sub i32 191, %2, !dbg !3610
  %div = sdiv i32 %sub60, 64, !dbg !3612
  call void @llvm.dbg.value(metadata i32 %div, metadata !3526, metadata !DIExpression()), !dbg !3545
  %10 = sext i32 %div to i64, !dbg !3613
  br label %for.cond, !dbg !3613

for.cond:                                         ; preds = %for.body, %if.then59
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then59 ], !dbg !3614
  %sticky.0 = phi i64 [ %or65, %for.body ], [ 0, %if.then59 ], !dbg !3609
  call void @llvm.dbg.value(metadata i64 %sticky.0, metadata !3534, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3525, metadata !DIExpression()), !dbg !3545
  %cmp61 = icmp slt i64 %indvars.iv, %10, !dbg !3615
  br i1 %cmp61, label %for.body, label %for.end, !dbg !3617

for.body:                                         ; preds = %for.cond
  %arrayidx64 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv, !dbg !3618
  %11 = load i64, i64* %arrayidx64, align 8, !dbg !3618
  %or65 = or i64 %sticky.0, %11, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %or65, metadata !3534, metadata !DIExpression()), !dbg !3609
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3620
  call void @llvm.dbg.value(metadata i32 undef, metadata !3525, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3545
  br label %for.cond, !dbg !3621, !llvm.loop !3622

for.end:                                          ; preds = %for.cond
  %sticky.0.lcssa = phi i64 [ %sticky.0, %for.cond ], !dbg !3609
  call void @llvm.dbg.value(metadata i64 %sticky.0.lcssa, metadata !3534, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %sticky.0.lcssa, metadata !3534, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %sticky.0.lcssa, metadata !3534, metadata !DIExpression()), !dbg !3609
  %idxprom67 = sext i32 %div to i64, !dbg !3624
  %arrayidx68 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom67, !dbg !3624
  %12 = load i64, i64* %arrayidx68, align 8, !dbg !3624
  call void @llvm.dbg.value(metadata i64 undef, metadata !3534, metadata !DIExpression()), !dbg !3609
  %call74 = tail call fastcc zeroext i8 @test_significand_bit(%struct.real_value* %r, i32 %sub60) #7, !dbg !3625
  call void @llvm.dbg.value(metadata i8 %call74, metadata !3537, metadata !DIExpression()), !dbg !3609
  %call75 = tail call fastcc zeroext i8 @test_significand_bit(%struct.real_value* %r, i32 %sub3) #7, !dbg !3626
  call void @llvm.dbg.value(metadata i8 %call75, metadata !3538, metadata !DIExpression()), !dbg !3609
  %tobool77 = icmp eq i8 %call74, 0, !dbg !3627
  br i1 %tobool77, label %land.end, label %land.rhs, !dbg !3628

land.rhs:                                         ; preds = %for.end
  %rem = srem i32 %sub60, 64, !dbg !3629
  %sh_prom = zext i32 %rem to i64, !dbg !3630
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !3631
  %sub70 = xor i64 %notmask, -1, !dbg !3631
  %and71 = and i64 %12, %sub70, !dbg !3632
  %or72 = or i64 %sticky.0.lcssa, %and71, !dbg !3633
  call void @llvm.dbg.value(metadata i64 %or72, metadata !3534, metadata !DIExpression()), !dbg !3609
  %tobool78 = icmp ne i64 %or72, 0, !dbg !3634
  %tobool80 = icmp ne i8 %call75, 0, !dbg !3635
  %13 = or i1 %tobool80, %tobool78, !dbg !3635
  %phitmp = zext i1 %13 to i8, !dbg !3635
  br label %land.end, !dbg !3635

land.end:                                         ; preds = %for.end, %land.rhs
  %14 = phi i8 [ 0, %for.end ], [ %phitmp, %land.rhs ]
  call void @llvm.dbg.value(metadata i8 %14, metadata !3529, metadata !DIExpression()), !dbg !3545
  br label %if.end82, !dbg !3636

if.end82:                                         ; preds = %if.end57, %land.end
  %round_up.0 = phi i8 [ 0, %if.end57 ], [ %14, %land.end ], !dbg !3545
  call void @llvm.dbg.value(metadata i8 %round_up.0, metadata !3529, metadata !DIExpression()), !dbg !3545
  %tobool83 = icmp eq i8 %round_up.0, 0, !dbg !3637
  br i1 %tobool83, label %if.end113, label %if.then84, !dbg !3638

if.then84:                                        ; preds = %if.end82
  %15 = bitcast %struct.real_value* %u to i8*, !dbg !3639
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #8, !dbg !3639
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3539, metadata !DIExpression(DW_OP_deref)), !dbg !3640
  call fastcc void @get_zero(%struct.real_value* nonnull %u, i32 0) #7, !dbg !3641
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3539, metadata !DIExpression(DW_OP_deref)), !dbg !3640
  call fastcc void @set_significand_bit(%struct.real_value* nonnull %u, i32 %sub3) #7, !dbg !3642
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !3539, metadata !DIExpression(DW_OP_deref)), !dbg !3640
  %call85 = call fastcc zeroext i8 @add_significands(%struct.real_value* %r, %struct.real_value* %r, %struct.real_value* nonnull %u) #7, !dbg !3643
  %tobool86 = icmp eq i8 %call85, 0, !dbg !3643
  br i1 %tobool86, label %cleanup110, label %if.then87, !dbg !3645

if.then87:                                        ; preds = %if.then84
  %bf.load88 = load i32, i32* %0, align 8, !dbg !3646
  %16 = add i32 %bf.load88, 64, !dbg !3646
  store i32 %16, i32* %0, align 8, !dbg !3646
  %bf.shl96 = ashr i32 %16, 6, !dbg !3648
  %cmp103 = icmp sgt i32 %bf.shl96, %4, !dbg !3650
  br i1 %cmp103, label %cleanup110, label %if.end106, !dbg !3651

if.end106:                                        ; preds = %if.then87
  %arrayidx108 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !3652
  store i64 -9223372036854775808, i64* %arrayidx108, align 8, !dbg !3653
  br label %cleanup110, !dbg !3654

cleanup110:                                       ; preds = %if.then84, %if.end106, %if.then87
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then87 ], [ true, %if.end106 ], [ true, %if.then84 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #8, !dbg !3655
  br i1 %cleanup.dest.slot.1, label %if.end113, label %cleanup110.overflow_crit_edge

cleanup110.overflow_crit_edge:                    ; preds = %cleanup110
  %bf.load14.pre = load i32, i32* %0, align 8, !dbg !3576
  br label %overflow

if.end113:                                        ; preds = %if.end82, %cleanup110
  %bf.load114 = load i32, i32* %0, align 8, !dbg !3656
  %sub117 = ashr i32 %bf.load114, 6, !dbg !3656
  %cmp118 = icmp slt i32 %sub117, %3, !dbg !3658
  br i1 %cmp118, label %underflow, label %if.end121, !dbg !3659

if.end121:                                        ; preds = %if.end113
  call fastcc void @clear_significand_below(%struct.real_value* %r, i32 %sub3) #7, !dbg !3660
  br label %cleanup.cont130, !dbg !3661

cleanup.cont130:                                  ; preds = %sw.bb, %if.then1, %sw.bb18, %if.end121, %if.then10, %if.end2, %overflow
  ret void, !dbg !3661
}

; Function Attrs: nounwind uwtable
define dso_local void @real_value_truncate(%struct.real_value* noalias sret %agg.result, i32 %mode, %struct.real_value* byval(%struct.real_value) align 8 %a) local_unnamed_addr #5 !dbg !3662 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3666, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.declare(metadata %struct.real_value* %a, metadata !3667, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.declare(metadata %struct.real_value* %agg.result, metadata !3668, metadata !DIExpression()), !dbg !3671
  call void @real_convert(%struct.real_value* %agg.result, i32 %mode, %struct.real_value* nonnull %a) #7, !dbg !3672
  ret void, !dbg !3673
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @exact_real_truncate(i32 %mode, %struct.real_value* %a) local_unnamed_addr #5 !dbg !3674 {
entry:
  %t = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3678, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !3679, metadata !DIExpression()), !dbg !3683
  %0 = bitcast %struct.real_value* %t to i8*, !dbg !3684
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3684
  %cond = add i32 %mode, -38, !dbg !3685
  %idxprom3 = zext i32 %cond to i64, !dbg !3685
  %arrayidx4 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom3, !dbg !3685
  %1 = load %struct.real_format*, %struct.real_format** %arrayidx4, align 8, !dbg !3685
  call void @llvm.dbg.value(metadata %struct.real_format* %1, metadata !3680, metadata !DIExpression()), !dbg !3683
  %tobool = icmp eq %struct.real_format* %1, null, !dbg !3686
  br i1 %tobool, label %cond.true5, label %cond.end7, !dbg !3686

cond.true5:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2775, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3686
  br label %cond.end7, !dbg !3686

cond.end7:                                        ; preds = %entry, %cond.true5
  %emin = getelementptr inbounds %struct.real_format, %struct.real_format* %1, i64 0, i32 5, !dbg !3687
  %2 = load i32, i32* %emin, align 4, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %2, metadata !3682, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3683
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 0, !dbg !3688
  %bf.load = load i32, i32* %3, align 8, !dbg !3688
  %sub10 = ashr i32 %bf.load, 6, !dbg !3688
  %cmp11 = icmp slt i32 %sub10, %2, !dbg !3690
  br i1 %cmp11, label %cleanup, label %if.end, !dbg !3691

if.end:                                           ; preds = %cond.end7
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !3681, metadata !DIExpression(DW_OP_deref)), !dbg !3683
  call void @real_convert(%struct.real_value* nonnull %t, i32 %mode, %struct.real_value* %a) #7, !dbg !3692
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !3681, metadata !DIExpression(DW_OP_deref)), !dbg !3683
  %call = call zeroext i8 @real_identical(%struct.real_value* nonnull %t, %struct.real_value* %a) #7, !dbg !3693
  br label %cleanup, !dbg !3694

cleanup:                                          ; preds = %cond.end7, %if.end
  %retval.0 = phi i8 [ %call, %if.end ], [ 0, %cond.end7 ], !dbg !3683
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3695
  ret i8 %retval.0, !dbg !3695
}

; Function Attrs: nounwind uwtable
define dso_local i64 @real_to_target_fmt(i64* %buf, %struct.real_value* %r_orig, %struct.real_format* %fmt) local_unnamed_addr #5 !dbg !3696 {
entry:
  %r = alloca %struct.real_value, align 8
  %buf1 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64* %buf, metadata !3700, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata %struct.real_value* %r_orig, metadata !3701, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !3702, metadata !DIExpression()), !dbg !3705
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !3706
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3706
  %1 = bitcast i64* %buf1 to i8*, !dbg !3707
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3707
  %2 = bitcast %struct.real_value* %r_orig to i8*, !dbg !3708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %2, i64 32, i1 false), !dbg !3708
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3703, metadata !DIExpression(DW_OP_deref)), !dbg !3705
  call fastcc void @round_for_format(%struct.real_format* %fmt, %struct.real_value* nonnull %r) #7, !dbg !3709
  %tobool = icmp eq i64* %buf, null, !dbg !3710
  %spec.select = select i1 %tobool, i64* %buf1, i64* %buf, !dbg !3712
  call void @llvm.dbg.value(metadata i64* %spec.select, metadata !3700, metadata !DIExpression()), !dbg !3705
  %encode = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 0, !dbg !3713
  %3 = load void (%struct.real_format*, i64*, %struct.real_value*)*, void (%struct.real_format*, i64*, %struct.real_value*)** %encode, align 8, !dbg !3713
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3703, metadata !DIExpression(DW_OP_deref)), !dbg !3705
  call void %3(%struct.real_format* %fmt, i64* %spec.select, %struct.real_value* nonnull %r) #6, !dbg !3714
  %4 = load i64, i64* %spec.select, align 8, !dbg !3715
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3716
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3716
  ret i64 %4, !dbg !3717
}

; Function Attrs: nounwind uwtable
define dso_local i64 @real_to_target(i64* %buf, %struct.real_value* %r, i32 %mode) local_unnamed_addr #5 !dbg !3718 {
entry:
  call void @llvm.dbg.value(metadata i64* %buf, metadata !3722, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3723, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3724, metadata !DIExpression()), !dbg !3726
  %cond = add i32 %mode, -38, !dbg !3727
  %idxprom3 = zext i32 %cond to i64, !dbg !3727
  %arrayidx4 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom3, !dbg !3727
  %0 = load %struct.real_format*, %struct.real_format** %arrayidx4, align 8, !dbg !3727
  call void @llvm.dbg.value(metadata %struct.real_format* %0, metadata !3725, metadata !DIExpression()), !dbg !3726
  %tobool = icmp eq %struct.real_format* %0, null, !dbg !3728
  br i1 %tobool, label %cond.true5, label %cond.end7, !dbg !3728

cond.true5:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2818, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3728
  br label %cond.end7, !dbg !3728

cond.end7:                                        ; preds = %entry, %cond.true5
  %call = tail call i64 @real_to_target_fmt(i64* %buf, %struct.real_value* %r, %struct.real_format* %0) #7, !dbg !3729
  ret i64 %call, !dbg !3730
}

; Function Attrs: nounwind uwtable
define dso_local void @real_from_target_fmt(%struct.real_value* %r, i64* %buf, %struct.real_format* %fmt) local_unnamed_addr #5 !dbg !3731 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3735, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64* %buf, metadata !3736, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !3737, metadata !DIExpression()), !dbg !3738
  %decode = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 1, !dbg !3739
  %0 = load void (%struct.real_format*, %struct.real_value*, i64*)*, void (%struct.real_format*, %struct.real_value*, i64*)** %decode, align 8, !dbg !3739
  tail call void %0(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #6, !dbg !3740
  ret void, !dbg !3741
}

; Function Attrs: nounwind uwtable
define dso_local void @real_from_target(%struct.real_value* %r, i64* %buf, i32 %mode) local_unnamed_addr #5 !dbg !3742 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3746, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64* %buf, metadata !3747, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3748, metadata !DIExpression()), !dbg !3750
  %cond = add i32 %mode, -38, !dbg !3751
  %idxprom3 = zext i32 %cond to i64, !dbg !3751
  %arrayidx4 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom3, !dbg !3751
  %0 = load %struct.real_format*, %struct.real_format** %arrayidx4, align 8, !dbg !3751
  call void @llvm.dbg.value(metadata %struct.real_format* %0, metadata !3749, metadata !DIExpression()), !dbg !3750
  %tobool = icmp eq %struct.real_format* %0, null, !dbg !3752
  br i1 %tobool, label %cond.true5, label %cond.end7, !dbg !3752

cond.true5:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2842, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3752
  br label %cond.end7, !dbg !3752

cond.end7:                                        ; preds = %entry, %cond.true5
  %decode = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 1, !dbg !3753
  %1 = load void (%struct.real_format*, %struct.real_value*, i64*)*, void (%struct.real_format*, %struct.real_value*, i64*)** %decode, align 8, !dbg !3753
  tail call void %1(%struct.real_format* %0, %struct.real_value* %r, i64* %buf) #6, !dbg !3754
  ret void, !dbg !3755
}

; Function Attrs: nounwind uwtable
define dso_local i32 @significand_size(i32 %mode) local_unnamed_addr #5 !dbg !3756 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3760, metadata !DIExpression()), !dbg !3765
  %cond = add i32 %mode, -38, !dbg !3766
  %idxprom3 = zext i32 %cond to i64, !dbg !3766
  %arrayidx4 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom3, !dbg !3766
  %0 = load %struct.real_format*, %struct.real_format** %arrayidx4, align 8, !dbg !3766
  call void @llvm.dbg.value(metadata %struct.real_format* %0, metadata !3761, metadata !DIExpression()), !dbg !3765
  %cmp5 = icmp eq %struct.real_format* %0, null, !dbg !3767
  br i1 %cmp5, label %cleanup, label %if.end, !dbg !3769

if.end:                                           ; preds = %entry
  %b = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 2, !dbg !3770
  %1 = load i32, i32* %b, align 8, !dbg !3770
  %cmp7 = icmp eq i32 %1, 10, !dbg !3771
  %p = getelementptr inbounds %struct.real_format, %struct.real_format* %0, i64 0, i32 3, !dbg !3765
  %2 = load i32, i32* %p, align 4, !dbg !3765
  br i1 %cmp7, label %if.then9, label %cleanup, !dbg !3772

if.then9:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata double 0x400A934F0A294EAE, metadata !3762, metadata !DIExpression()), !dbg !3773
  %conv10 = sitofp i32 %2 to double, !dbg !3774
  %mul = fmul double %conv10, 0x400A934F0A294EAE, !dbg !3775
  %conv11 = fptosi double %mul to i32, !dbg !3774
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then9
  %retval.0 = phi i32 [ %conv11, %if.then9 ], [ 0, %entry ], [ %2, %if.end ], !dbg !3765
  ret i32 %retval.0, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local i32 @real_hash(%struct.real_value* %r) local_unnamed_addr #5 !dbg !3777 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3781, metadata !DIExpression()), !dbg !3789
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3790
  %bf.load = load i32, i32* %0, align 8, !dbg !3790
  %bf.clear = and i32 %bf.load, 3, !dbg !3790
  %1 = lshr i32 %bf.load, 1, !dbg !3791
  %shl = and i32 %1, 4, !dbg !3791
  %or = or i32 %bf.clear, %shl, !dbg !3792
  call void @llvm.dbg.value(metadata i32 %or, metadata !3782, metadata !DIExpression()), !dbg !3789
  switch i32 %bf.clear, label %sw.default1 [
    i32 0, label %cleanup
    i32 2, label %cleanup
    i32 1, label %sw.bb5
    i32 3, label %sw.bb10
  ], !dbg !3793

sw.bb5:                                           ; preds = %entry
  %sub = ashr i32 %bf.load, 6, !dbg !3794
  %shl8 = shl nsw i32 %sub, 3, !dbg !3796
  %or9 = or i32 %or, %shl8, !dbg !3797
  call void @llvm.dbg.value(metadata i32 %or9, metadata !3782, metadata !DIExpression()), !dbg !3789
  br label %sw.epilog, !dbg !3798

sw.bb10:                                          ; preds = %entry
  %2 = shl i32 %bf.load, 27, !dbg !3799
  %sext = ashr i32 %2, 31, !dbg !3799
  %spec.select = xor i32 %or, %sext, !dbg !3799
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3782, metadata !DIExpression()), !dbg !3789
  %bf.clear17 = and i32 %bf.load, 32, !dbg !3800
  %tobool18 = icmp eq i32 %bf.clear17, 0, !dbg !3802
  br i1 %tobool18, label %sw.epilog, label %cleanup, !dbg !3803

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb5
  %h.1 = phi i32 [ %or9, %sw.bb5 ], [ %spec.select, %sw.bb10 ], !dbg !3789
  call void @llvm.dbg.value(metadata i32 %h.1, metadata !3782, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 0, metadata !3783, metadata !DIExpression()), !dbg !3789
  br label %for.cond, !dbg !3804

for.cond:                                         ; preds = %for.body, %sw.epilog
  %i.0 = phi i64 [ 0, %sw.epilog ], [ %inc, %for.body ], !dbg !3805
  %h.2 = phi i32 [ %h.1, %sw.epilog ], [ %conv23, %for.body ], !dbg !3789
  call void @llvm.dbg.value(metadata i32 %h.2, metadata !3782, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3783, metadata !DIExpression()), !dbg !3789
  %exitcond = icmp eq i64 %i.0, 3, !dbg !3806
  br i1 %exitcond, label %cleanup.loopexit, label %for.body, !dbg !3807

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %i.0, !dbg !3808
  %3 = load i64, i64* %arrayidx, align 8, !dbg !3808
  call void @llvm.dbg.value(metadata i64 %3, metadata !3784, metadata !DIExpression()), !dbg !3809
  %shr = lshr i64 %3, 32, !dbg !3810
  %xor21 = xor i64 %3, %shr, !dbg !3811
  %4 = trunc i64 %xor21 to i32, !dbg !3812
  %conv23 = xor i32 %h.2, %4, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %conv23, metadata !3782, metadata !DIExpression()), !dbg !3789
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3813
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3783, metadata !DIExpression()), !dbg !3789
  br label %for.cond, !dbg !3814, !llvm.loop !3815

cleanup.loopexit:                                 ; preds = %for.cond
  %h.2.lcssa = phi i32 [ %h.2, %for.cond ], !dbg !3789
  call void @llvm.dbg.value(metadata i32 %h.2.lcssa, metadata !3782, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i32 %h.2.lcssa, metadata !3782, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i32 %h.2.lcssa, metadata !3782, metadata !DIExpression()), !dbg !3789
  br label %cleanup, !dbg !3817

cleanup:                                          ; preds = %cleanup.loopexit, %sw.bb10, %entry, %entry
  %retval.0 = phi i32 [ %or, %entry ], [ %or, %entry ], [ %spec.select, %sw.bb10 ], [ %h.2.lcssa, %cleanup.loopexit ], !dbg !3789
  ret i32 %retval.0, !dbg !3817
}

; Function Attrs: nounwind uwtable
define internal void @encode_ieee_single(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !3818 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !3820, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64* %buf, metadata !3821, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3822, metadata !DIExpression()), !dbg !3828
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3829
  %bf.load = load i32, i32* %0, align 8, !dbg !3829
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %bf.lshr, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3828
  call void @llvm.dbg.value(metadata i8 undef, metadata !3827, metadata !DIExpression()), !dbg !3828
  %1 = shl i32 %bf.lshr, 31, !dbg !3830
  %shl = zext i32 %1 to i64, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %shl, metadata !3823, metadata !DIExpression()), !dbg !3828
  %arrayidx5 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !3831
  %2 = load i64, i64* %arrayidx5, align 8, !dbg !3831
  %shr = lshr i64 %2, 40, !dbg !3832
  %and6 = and i64 %shr, 8388607, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %and6, metadata !3824, metadata !DIExpression()), !dbg !3828
  %bf.clear8 = and i32 %bf.load, 3, !dbg !3834
  switch i32 %bf.clear8, label %sw.default1 [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb
    i32 3, label %sw.bb10
    i32 1, label %sw.bb42
  ], !dbg !3835

sw.bb:                                            ; preds = %entry
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 12, !dbg !3836
  %3 = load i8, i8* %has_inf, align 1, !dbg !3836
  %tobool = icmp eq i8 %3, 0, !dbg !3839
  %image.0.v = select i1 %tobool, i64 2147483647, i64 2139095040, !dbg !3840
  %image.0 = or i64 %image.0.v, %shl, !dbg !3840
  br label %sw.epilog, !dbg !3840

sw.bb10:                                          ; preds = %entry
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 11, !dbg !3841
  %4 = load i8, i8* %has_nans, align 2, !dbg !3841
  %tobool11 = icmp eq i8 %4, 0, !dbg !3843
  br i1 %tobool11, label %if.else39, label %if.then12, !dbg !3844

if.then12:                                        ; preds = %sw.bb10
  %bf.clear15 = and i32 %bf.load, 32, !dbg !3845
  %tobool16 = icmp eq i32 %bf.clear15, 0, !dbg !3848
  br i1 %tobool16, label %if.end21, label %if.then17, !dbg !3849

if.then17:                                        ; preds = %if.then12
  %canonical_nan_lsbs_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 16, !dbg !3850
  %5 = load i8, i8* %canonical_nan_lsbs_set, align 1, !dbg !3850
  %tobool19 = icmp eq i8 %5, 0, !dbg !3851
  %conv20 = select i1 %tobool19, i64 0, i64 4194303, !dbg !3852
  call void @llvm.dbg.value(metadata i64 %conv20, metadata !3824, metadata !DIExpression()), !dbg !3828
  br label %if.end21, !dbg !3853

if.end21:                                         ; preds = %if.then12, %if.then17
  %sig.0 = phi i64 [ %conv20, %if.then17 ], [ %and6, %if.then12 ], !dbg !3828
  call void @llvm.dbg.value(metadata i64 %sig.0, metadata !3824, metadata !DIExpression()), !dbg !3828
  %bf.lshr23 = lshr i32 %bf.load, 4, !dbg !3854
  %bf.clear24 = and i32 %bf.lshr23, 1, !dbg !3854
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !3856
  %6 = load i8, i8* %qnan_msb_set, align 2, !dbg !3856
  %conv25 = zext i8 %6 to i32, !dbg !3857
  %cmp26 = icmp eq i32 %bf.clear24, %conv25, !dbg !3858
  %and29 = and i64 %sig.0, 4194303, !dbg !3859
  %or31 = or i64 %sig.0, 4194304, !dbg !3859
  %sig.1 = select i1 %cmp26, i64 %and29, i64 %or31, !dbg !3859
  call void @llvm.dbg.value(metadata i64 %sig.1, metadata !3824, metadata !DIExpression()), !dbg !3828
  %cmp33 = icmp eq i64 %sig.1, 0, !dbg !3860
  %spec.select = select i1 %cmp33, i64 2097152, i64 %sig.1, !dbg !3862
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !3824, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %shl, metadata !3823, metadata !DIExpression(DW_OP_constu, 2139095040, DW_OP_or, DW_OP_stack_value)), !dbg !3828
  %or37 = or i64 %spec.select, %shl, !dbg !3863
  %or38 = or i64 %or37, 2139095040, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %or38, metadata !3823, metadata !DIExpression()), !dbg !3828
  br label %sw.epilog, !dbg !3864

if.else39:                                        ; preds = %sw.bb10
  %or40 = or i64 %shl, 2147483647, !dbg !3865
  call void @llvm.dbg.value(metadata i64 %or40, metadata !3823, metadata !DIExpression()), !dbg !3828
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %tobool43 = icmp sgt i64 %2, -1, !dbg !3866
  br i1 %tobool43, label %if.end50, label %if.else45, !dbg !3868

if.else45:                                        ; preds = %sw.bb42
  %sub = ashr i32 %bf.load, 6, !dbg !3869
  %sub48 = add nsw i32 %sub, 126, !dbg !3870
  %conv49 = sext i32 %sub48 to i64, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %conv49, metadata !3825, metadata !DIExpression()), !dbg !3828
  %phitmp = shl nsw i64 %conv49, 23
  br label %if.end50

if.end50:                                         ; preds = %sw.bb42, %if.else45
  %exp.0 = phi i64 [ %phitmp, %if.else45 ], [ 0, %sw.bb42 ]
  %or52 = or i64 %exp.0, %shl, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %or52, metadata !3823, metadata !DIExpression()), !dbg !3828
  %or53 = or i64 %or52, %and6, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %or53, metadata !3823, metadata !DIExpression()), !dbg !3828
  br label %sw.epilog, !dbg !3873

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %if.end21, %if.else39, %sw.bb, %if.end50, %entry
  %image.2 = phi i64 [ %or53, %if.end50 ], [ %shl, %entry ], [ %image.0, %sw.bb ], [ %or38, %if.end21 ], [ %or40, %if.else39 ], !dbg !3828
  call void @llvm.dbg.value(metadata i64 %image.2, metadata !3823, metadata !DIExpression()), !dbg !3828
  store i64 %image.2, i64* %buf, align 8, !dbg !3874
  ret void, !dbg !3875
}

; Function Attrs: nounwind uwtable
define internal void @decode_ieee_single(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !3876 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !3878, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3879, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64* %buf, metadata !3880, metadata !DIExpression()), !dbg !3884
  %0 = load i64, i64* %buf, align 8, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %0, metadata !3881, metadata !DIExpression(DW_OP_constu, 4294967295, DW_OP_and, DW_OP_stack_value)), !dbg !3884
  %shr = lshr i64 %0, 31, !dbg !3886
  %shr2 = lshr i64 %0, 23, !dbg !3887
  %1 = bitcast %struct.real_value* %r to i8*, !dbg !3888
  %call = tail call i8* @memset(i8* %1, i32 0, i64 32) #6, !dbg !3889
  %shl = shl i64 %0, 40, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %shl, metadata !3881, metadata !DIExpression()), !dbg !3884
  %and5 = and i64 %shl, 9223370937343148032, !dbg !3891
  call void @llvm.dbg.value(metadata i64 %and5, metadata !3881, metadata !DIExpression()), !dbg !3884
  %trunc = trunc i64 %shr2 to i8, !dbg !3892
  switch i8 %trunc, label %if.else70 [
    i8 0, label %if.then
    i8 -1, label %land.lhs.true31
  ], !dbg !3892

if.then:                                          ; preds = %entry
  %tobool = icmp eq i64 %and5, 0, !dbg !3893
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3897

land.lhs.true:                                    ; preds = %if.then
  %has_denorm = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 13, !dbg !3898
  %2 = load i8, i8* %has_denorm, align 8, !dbg !3898
  %tobool8 = icmp eq i8 %2, 0, !dbg !3899
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !3900

if.then9:                                         ; preds = %land.lhs.true
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3901
  %bf.load = load i32, i32* %3, align 8, !dbg !3903
  %conv1 = shl nuw nsw i64 %shr, 3, !dbg !3904
  %conv = trunc i64 %conv1 to i32, !dbg !3904
  %bf.shl = and i32 %conv, 8, !dbg !3904
  %bf.set = and i32 %bf.load, 52, !dbg !3904
  %bf.clear12 = or i32 %bf.set, %bf.shl, !dbg !3904
  %bf.set16 = or i32 %bf.clear12, -8063, !dbg !3905
  store i32 %bf.set16, i32* %3, align 8, !dbg !3905
  %shl17 = shl i64 %0, 41, !dbg !3906
  %arrayidx18 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !3907
  store i64 %shl17, i64* %arrayidx18, align 8, !dbg !3908
  tail call fastcc void @normalize(%struct.real_value* %r) #7, !dbg !3909
  br label %if.end89, !dbg !3910

if.else:                                          ; preds = %land.lhs.true, %if.then
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 14, !dbg !3911
  %4 = load i8, i8* %has_signed_zero, align 1, !dbg !3911
  %tobool19 = icmp eq i8 %4, 0, !dbg !3913
  br i1 %tobool19, label %if.end89, label %if.then20, !dbg !3914

if.then20:                                        ; preds = %if.else
  %5 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3915
  %bf.load22 = load i32, i32* %5, align 8, !dbg !3916
  %6 = shl nuw nsw i64 %shr, 3, !dbg !3916
  %7 = trunc i64 %6 to i32, !dbg !3916
  %8 = and i32 %7, 8, !dbg !3916
  %bf.clear25 = and i32 %bf.load22, -9, !dbg !3916
  %bf.set26 = or i32 %bf.clear25, %8, !dbg !3916
  store i32 %bf.set26, i32* %5, align 8, !dbg !3916
  br label %if.end89, !dbg !3917

land.lhs.true31:                                  ; preds = %entry
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 11, !dbg !3918
  %9 = load i8, i8* %has_nans, align 2, !dbg !3918
  %tobool33 = icmp eq i8 %9, 0, !dbg !3920
  br i1 %tobool33, label %lor.lhs.false, label %if.then36, !dbg !3921

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 12, !dbg !3922
  %10 = load i8, i8* %has_inf, align 1, !dbg !3922
  %tobool35 = icmp eq i8 %10, 0, !dbg !3923
  br i1 %tobool35, label %if.else70, label %if.then36, !dbg !3924

if.then36:                                        ; preds = %lor.lhs.false, %land.lhs.true31
  %tobool37 = icmp eq i64 %and5, 0, !dbg !3925
  %11 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3928
  %bf.load39 = load i32, i32* %11, align 8, !dbg !3928
  br i1 %tobool37, label %if.else59, label %if.then38, !dbg !3929

if.then38:                                        ; preds = %if.then36
  %12 = shl nuw nsw i64 %shr, 3, !dbg !3930
  %13 = trunc i64 %12 to i32, !dbg !3930
  %14 = and i32 %13, 8, !dbg !3930
  %bf.set41 = and i32 %bf.load39, -12, !dbg !3930
  %bf.clear46 = or i32 %bf.set41, %14, !dbg !3930
  %bf.set47 = or i32 %bf.clear46, 3, !dbg !3930
  store i32 %bf.set47, i32* %11, align 8, !dbg !3930
  %15 = lshr i64 %0, 22, !dbg !3932
  %shr48 = and i64 %15, 1, !dbg !3932
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !3933
  %16 = load i8, i8* %qnan_msb_set, align 2, !dbg !3933
  %conv50 = zext i8 %16 to i64, !dbg !3934
  %xor = xor i64 %shr48, %conv50, !dbg !3935
  %conv51 = trunc i64 %xor to i32, !dbg !3936
  %bf.value53 = shl nuw nsw i32 %conv51, 4, !dbg !3937
  %bf.shl54 = and i32 %bf.value53, 16, !dbg !3937
  %bf.clear55 = and i32 %bf.set47, -17, !dbg !3937
  %bf.set56 = or i32 %bf.clear55, %bf.shl54, !dbg !3937
  store i32 %bf.set56, i32* %11, align 8, !dbg !3937
  %arrayidx58 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !3938
  store i64 %and5, i64* %arrayidx58, align 8, !dbg !3939
  br label %if.end89, !dbg !3940

if.else59:                                        ; preds = %if.then36
  %17 = shl nuw nsw i64 %shr, 3, !dbg !3941
  %18 = trunc i64 %17 to i32, !dbg !3941
  %19 = and i32 %18, 8, !dbg !3941
  %bf.set62 = and i32 %bf.load39, -12, !dbg !3941
  %bf.clear67 = or i32 %bf.set62, %19, !dbg !3941
  %bf.set68 = or i32 %bf.clear67, 2, !dbg !3941
  store i32 %bf.set68, i32* %11, align 8, !dbg !3941
  br label %if.end89

if.else70:                                        ; preds = %lor.lhs.false, %entry
  %20 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3943
  %bf.load71 = load i32, i32* %20, align 8, !dbg !3945
  %21 = shl nuw nsw i64 %shr, 3, !dbg !3946
  %22 = trunc i64 %21 to i32, !dbg !3946
  %23 = and i32 %22, 8, !dbg !3946
  %bf.set73 = and i32 %bf.load71, 52, !dbg !3946
  %bf.clear78 = or i32 %bf.set73, %23, !dbg !3946
  %conv42 = shl nuw nsw i64 %shr2, 6, !dbg !3947
  %conv4 = trunc i64 %conv42 to i32, !dbg !3947
  %add = and i32 %conv4, 16320, !dbg !3947
  %bf.shl83 = add nsw i32 %add, -8064, !dbg !3947
  %bf.set79 = or i32 %bf.clear78, %bf.shl83, !dbg !3947
  %bf.set85 = or i32 %bf.set79, 1, !dbg !3947
  store i32 %bf.set85, i32* %20, align 8, !dbg !3947
  %or = or i64 %shl, -9223372036854775808, !dbg !3948
  %arrayidx87 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !3949
  store i64 %or, i64* %arrayidx87, align 8, !dbg !3950
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.else70, %if.else59, %if.then38, %if.then9, %if.then20
  ret void, !dbg !3951
}

; Function Attrs: nounwind uwtable
define internal void @encode_ieee_double(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !3952 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !3954, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64* %buf, metadata !3955, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !3956, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i8 undef, metadata !3962, metadata !DIExpression()), !dbg !3963
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !3964
  %bf.load = load i32, i32* %0, align 8, !dbg !3964
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !3964
  %shl = shl i32 %bf.lshr, 31, !dbg !3965
  %conv2 = sext i32 %shl to i64, !dbg !3966
  call void @llvm.dbg.value(metadata i64 %conv2, metadata !3958, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 0, metadata !3957, metadata !DIExpression()), !dbg !3963
  %arrayidx4 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !3967
  %1 = load i64, i64* %arrayidx4, align 8, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %1, metadata !3960, metadata !DIExpression()), !dbg !3963
  %shr = lshr i64 %1, 11, !dbg !3970
  %and5 = and i64 %shr, 4294967295, !dbg !3971
  call void @llvm.dbg.value(metadata i64 %and5, metadata !3959, metadata !DIExpression()), !dbg !3963
  %shr6 = lshr i64 %1, 43, !dbg !3972
  %and8 = and i64 %shr6, 1048575, !dbg !3973
  call void @llvm.dbg.value(metadata i64 %and8, metadata !3960, metadata !DIExpression()), !dbg !3963
  %bf.clear10 = and i32 %bf.load, 3, !dbg !3974
  switch i32 %bf.clear10, label %sw.default1 [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb
    i32 3, label %sw.bb12
    i32 1, label %sw.bb47
  ], !dbg !3975

sw.bb:                                            ; preds = %entry
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 12, !dbg !3976
  %2 = load i8, i8* %has_inf, align 1, !dbg !3976
  %tobool = icmp ne i8 %2, 0, !dbg !3979
  %image_hi.0.v = select i1 %tobool, i64 2146435072, i64 2147483647, !dbg !3980
  %image_hi.0 = or i64 %image_hi.0.v, %conv2, !dbg !3980
  %image_lo.0 = select i1 %tobool, i64 0, i64 4294967295, !dbg !3980
  br label %sw.epilog, !dbg !3980

sw.bb12:                                          ; preds = %entry
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 11, !dbg !3981
  %3 = load i8, i8* %has_nans, align 2, !dbg !3981
  %tobool13 = icmp eq i8 %3, 0, !dbg !3983
  br i1 %tobool13, label %if.else44, label %if.then14, !dbg !3984

if.then14:                                        ; preds = %sw.bb12
  %bf.clear17 = and i32 %bf.load, 32, !dbg !3985
  %tobool18 = icmp eq i32 %bf.clear17, 0, !dbg !3988
  br i1 %tobool18, label %if.end24, label %if.then19, !dbg !3989

if.then19:                                        ; preds = %if.then14
  %canonical_nan_lsbs_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 16, !dbg !3990
  %4 = load i8, i8* %canonical_nan_lsbs_set, align 1, !dbg !3990
  %tobool20 = icmp ne i8 %4, 0, !dbg !3993
  %. = select i1 %tobool20, i64 4294967295, i64 0
  %.2 = select i1 %tobool20, i64 524287, i64 0
  call void @llvm.dbg.value(metadata i64 %.2, metadata !3960, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %., metadata !3959, metadata !DIExpression()), !dbg !3963
  br label %if.end24, !dbg !3994

if.end24:                                         ; preds = %if.then14, %if.then19
  %sig_lo.1 = phi i64 [ %., %if.then19 ], [ %and5, %if.then14 ], !dbg !3963
  %sig_hi.1 = phi i64 [ %.2, %if.then19 ], [ %and8, %if.then14 ], !dbg !3963
  call void @llvm.dbg.value(metadata i64 %sig_hi.1, metadata !3960, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %sig_lo.1, metadata !3959, metadata !DIExpression()), !dbg !3963
  %bf.lshr26 = lshr i32 %bf.load, 4, !dbg !3995
  %bf.clear27 = and i32 %bf.lshr26, 1, !dbg !3995
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !3997
  %5 = load i8, i8* %qnan_msb_set, align 2, !dbg !3997
  %conv28 = zext i8 %5 to i32, !dbg !3998
  %cmp29 = icmp eq i32 %bf.clear27, %conv28, !dbg !3999
  %and32 = and i64 %sig_hi.1, 524287, !dbg !4000
  %or34 = or i64 %sig_hi.1, 524288, !dbg !4000
  %sig_hi.2 = select i1 %cmp29, i64 %and32, i64 %or34, !dbg !4000
  call void @llvm.dbg.value(metadata i64 %sig_hi.2, metadata !3960, metadata !DIExpression()), !dbg !3963
  %6 = or i64 %sig_hi.2, %sig_lo.1, !dbg !4001
  %7 = icmp eq i64 %6, 0, !dbg !4001
  %sig_hi.3 = select i1 %7, i64 262144, i64 %sig_hi.2, !dbg !4001
  call void @llvm.dbg.value(metadata i64 %sig_hi.3, metadata !3960, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %conv2, metadata !3958, metadata !DIExpression(DW_OP_constu, 2146435072, DW_OP_or, DW_OP_stack_value)), !dbg !3963
  %or42 = or i64 %sig_hi.3, %conv2, !dbg !4003
  %or43 = or i64 %or42, 2146435072, !dbg !4003
  call void @llvm.dbg.value(metadata i64 %or43, metadata !3958, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %sig_lo.1, metadata !3957, metadata !DIExpression()), !dbg !3963
  br label %sw.epilog, !dbg !4004

if.else44:                                        ; preds = %sw.bb12
  %or45 = or i64 %conv2, 2147483647, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %or45, metadata !3958, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 4294967295, metadata !3957, metadata !DIExpression()), !dbg !3963
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  %tobool48 = icmp sgt i64 %1, -1, !dbg !4007
  br i1 %tobool48, label %if.end55, label %if.else50, !dbg !4009

if.else50:                                        ; preds = %sw.bb47
  %sub = ashr i32 %bf.load, 6, !dbg !4010
  %sub53 = add nsw i32 %sub, 1022, !dbg !4011
  %conv54 = sext i32 %sub53 to i64, !dbg !4010
  call void @llvm.dbg.value(metadata i64 %conv54, metadata !3961, metadata !DIExpression()), !dbg !3963
  %phitmp = shl nsw i64 %conv54, 20
  br label %if.end55

if.end55:                                         ; preds = %sw.bb47, %if.else50
  %exp.0 = phi i64 [ %phitmp, %if.else50 ], [ 0, %sw.bb47 ]
  %or57 = or i64 %exp.0, %conv2, !dbg !4012
  call void @llvm.dbg.value(metadata i64 %or57, metadata !3958, metadata !DIExpression()), !dbg !3963
  %or58 = or i64 %or57, %and8, !dbg !4013
  call void @llvm.dbg.value(metadata i64 %or58, metadata !3958, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %and5, metadata !3957, metadata !DIExpression()), !dbg !3963
  br label %sw.epilog, !dbg !4014

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %if.end24, %if.else44, %sw.bb, %if.end55, %entry
  %image_hi.2 = phi i64 [ %or58, %if.end55 ], [ %conv2, %entry ], [ %image_hi.0, %sw.bb ], [ %or43, %if.end24 ], [ %or45, %if.else44 ], !dbg !3963
  %image_lo.2 = phi i64 [ %and5, %if.end55 ], [ 0, %entry ], [ %image_lo.0, %sw.bb ], [ %sig_lo.1, %if.end24 ], [ 4294967295, %if.else44 ], !dbg !3963
  call void @llvm.dbg.value(metadata i64 %image_lo.2, metadata !3957, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %image_hi.2, metadata !3958, metadata !DIExpression()), !dbg !3963
  store i64 %image_lo.2, i64* %buf, align 8, !dbg !4015
  %arrayidx60 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !4017
  store i64 %image_hi.2, i64* %arrayidx60, align 8, !dbg !4018
  ret void, !dbg !4019
}

; Function Attrs: nounwind uwtable
define internal void @decode_ieee_double(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4020 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4022, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4023, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4024, metadata !DIExpression()), !dbg !4029
  %0 = load i64, i64* %buf, align 8, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %0, metadata !4026, metadata !DIExpression()), !dbg !4029
  %arrayidx1 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !4032
  %1 = load i64, i64* %arrayidx1, align 8, !dbg !4032
  call void @llvm.dbg.value(metadata i64 %1, metadata !4025, metadata !DIExpression()), !dbg !4029
  %and = and i64 %0, 4294967295, !dbg !4033
  call void @llvm.dbg.value(metadata i64 %and, metadata !4026, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64 %1, metadata !4025, metadata !DIExpression(DW_OP_constu, 4294967295, DW_OP_and, DW_OP_stack_value)), !dbg !4029
  %shr = lshr i64 %1, 31, !dbg !4034
  %shr4 = lshr i64 %1, 20, !dbg !4035
  %2 = trunc i64 %shr4 to i32, !dbg !4036
  %conv6 = and i32 %2, 2047, !dbg !4036
  call void @llvm.dbg.value(metadata i32 %conv6, metadata !4028, metadata !DIExpression()), !dbg !4029
  %3 = bitcast %struct.real_value* %r to i8*, !dbg !4037
  %call = tail call i8* @memset(i8* %3, i32 0, i64 32) #6, !dbg !4038
  %and2 = shl i64 %1, 11, !dbg !4039
  call void @llvm.dbg.value(metadata i64 %and2, metadata !4025, metadata !DIExpression(DW_OP_constu, 8796093020160, DW_OP_and, DW_OP_stack_value)), !dbg !4029
  %shr7 = lshr i64 %and, 21, !dbg !4040
  %and2.masked = and i64 %and2, 2147481600, !dbg !4041
  %and8 = or i64 %and2.masked, %shr7, !dbg !4041
  call void @llvm.dbg.value(metadata i64 %and8, metadata !4025, metadata !DIExpression()), !dbg !4029
  %shl9 = shl nuw nsw i64 %and, 11, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %shl9, metadata !4026, metadata !DIExpression()), !dbg !4029
  switch i32 %conv6, label %if.else84 [
    i32 0, label %if.then
    i32 2047, label %land.lhs.true39
  ], !dbg !4043

if.then:                                          ; preds = %entry
  %4 = or i64 %and8, %and, !dbg !4044
  %5 = icmp eq i64 %4, 0, !dbg !4044
  br i1 %5, label %if.else, label %land.lhs.true, !dbg !4044

land.lhs.true:                                    ; preds = %if.then
  %has_denorm = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 13, !dbg !4048
  %6 = load i8, i8* %has_denorm, align 8, !dbg !4048
  %tobool13 = icmp eq i8 %6, 0, !dbg !4049
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !4050

if.then14:                                        ; preds = %land.lhs.true
  %7 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4051
  %bf.load = load i32, i32* %7, align 8, !dbg !4053
  %conv2 = shl nuw nsw i64 %shr, 3, !dbg !4054
  %conv = trunc i64 %conv2 to i32, !dbg !4054
  %bf.shl = and i32 %conv, 8, !dbg !4054
  %bf.set = and i32 %bf.load, 52, !dbg !4054
  %bf.clear17 = or i32 %bf.set, %bf.shl, !dbg !4054
  %bf.set21 = or i32 %bf.clear17, -65407, !dbg !4055
  store i32 %bf.set21, i32* %7, align 8, !dbg !4055
  %shl22 = shl nuw i64 %and8, 33, !dbg !4056
  %shl24 = shl nuw nsw i64 %and, 12, !dbg !4059
  %or25 = or i64 %shl22, %shl24, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %or25, metadata !4025, metadata !DIExpression()), !dbg !4029
  %arrayidx26 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4061
  store i64 %or25, i64* %arrayidx26, align 8, !dbg !4062
  tail call fastcc void @normalize(%struct.real_value* %r) #7, !dbg !4063
  br label %if.end107, !dbg !4064

if.else:                                          ; preds = %land.lhs.true, %if.then
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 14, !dbg !4065
  %8 = load i8, i8* %has_signed_zero, align 1, !dbg !4065
  %tobool27 = icmp eq i8 %8, 0, !dbg !4067
  br i1 %tobool27, label %if.end107, label %if.then28, !dbg !4068

if.then28:                                        ; preds = %if.else
  %9 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4069
  %bf.load30 = load i32, i32* %9, align 8, !dbg !4070
  %10 = shl nuw nsw i64 %shr, 3, !dbg !4070
  %11 = trunc i64 %10 to i32, !dbg !4070
  %12 = and i32 %11, 8, !dbg !4070
  %bf.clear33 = and i32 %bf.load30, -9, !dbg !4070
  %bf.set34 = or i32 %bf.clear33, %12, !dbg !4070
  store i32 %bf.set34, i32* %9, align 8, !dbg !4070
  br label %if.end107, !dbg !4071

land.lhs.true39:                                  ; preds = %entry
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 11, !dbg !4072
  %13 = load i8, i8* %has_nans, align 2, !dbg !4072
  %tobool41 = icmp eq i8 %13, 0, !dbg !4074
  br i1 %tobool41, label %lor.lhs.false42, label %if.then45, !dbg !4075

lor.lhs.false42:                                  ; preds = %land.lhs.true39
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 12, !dbg !4076
  %14 = load i8, i8* %has_inf, align 1, !dbg !4076
  %tobool44 = icmp eq i8 %14, 0, !dbg !4077
  br i1 %tobool44, label %if.else84, label %if.then45, !dbg !4078

if.then45:                                        ; preds = %lor.lhs.false42, %land.lhs.true39
  %15 = or i64 %and8, %and, !dbg !4079
  %16 = icmp eq i64 %15, 0, !dbg !4079
  %17 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4082
  %bf.load50 = load i32, i32* %17, align 8, !dbg !4082
  br i1 %16, label %if.else73, label %if.then49, !dbg !4079

if.then49:                                        ; preds = %if.then45
  %18 = shl nuw nsw i64 %shr, 3, !dbg !4083
  %19 = trunc i64 %18 to i32, !dbg !4083
  %20 = and i32 %19, 8, !dbg !4083
  %bf.set52 = and i32 %bf.load50, -12, !dbg !4083
  %bf.clear57 = or i32 %bf.set52, %20, !dbg !4083
  %bf.set58 = or i32 %bf.clear57, 3, !dbg !4083
  store i32 %bf.set58, i32* %17, align 8, !dbg !4083
  %21 = lshr i64 %1, 19, !dbg !4085
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !4086
  %22 = load i8, i8* %qnan_msb_set, align 2, !dbg !4086
  %conv61 = zext i8 %22 to i64, !dbg !4087
  %xor = xor i64 %21, %conv61, !dbg !4088
  %conv62 = trunc i64 %xor to i32, !dbg !4089
  %bf.value64 = shl i32 %conv62, 4, !dbg !4090
  %bf.shl65 = and i32 %bf.value64, 16, !dbg !4090
  %bf.clear66 = and i32 %bf.set58, -17, !dbg !4090
  %bf.set67 = or i32 %bf.clear66, %bf.shl65, !dbg !4090
  store i32 %bf.set67, i32* %17, align 8, !dbg !4090
  %shl68 = shl nuw nsw i64 %and8, 32, !dbg !4091
  %or70 = or i64 %shl68, %shl9, !dbg !4093
  %arrayidx72 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4094
  store i64 %or70, i64* %arrayidx72, align 8, !dbg !4095
  br label %if.end107, !dbg !4096

if.else73:                                        ; preds = %if.then45
  %23 = shl nuw nsw i64 %shr, 3, !dbg !4097
  %24 = trunc i64 %23 to i32, !dbg !4097
  %25 = and i32 %24, 8, !dbg !4097
  %bf.set76 = and i32 %bf.load50, -12, !dbg !4097
  %bf.clear81 = or i32 %bf.set76, %25, !dbg !4097
  %bf.set82 = or i32 %bf.clear81, 2, !dbg !4097
  store i32 %bf.set82, i32* %17, align 8, !dbg !4097
  br label %if.end107

if.else84:                                        ; preds = %lor.lhs.false42, %entry
  %26 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4099
  %bf.load85 = load i32, i32* %26, align 8, !dbg !4101
  %27 = shl nuw nsw i64 %shr, 3, !dbg !4102
  %28 = trunc i64 %27 to i32, !dbg !4102
  %29 = and i32 %28, 8, !dbg !4102
  %bf.set87 = and i32 %bf.load85, 52, !dbg !4102
  %bf.clear92 = or i32 %bf.set87, %29, !dbg !4102
  %add = shl nuw nsw i32 %conv6, 6, !dbg !4103
  %bf.shl97 = add nsw i32 %add, -65408, !dbg !4103
  %bf.set93 = or i32 %bf.clear92, %bf.shl97, !dbg !4103
  %bf.set99 = or i32 %bf.set93, 1, !dbg !4103
  store i32 %bf.set99, i32* %26, align 8, !dbg !4103
  %shl100 = shl nuw nsw i64 %and8, 32, !dbg !4104
  %or102 = or i64 %shl100, %shl9, !dbg !4106
  %or103 = or i64 %or102, -9223372036854775808, !dbg !4107
  %arrayidx105 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4108
  store i64 %or103, i64* %arrayidx105, align 8, !dbg !4109
  br label %if.end107

if.end107:                                        ; preds = %if.else, %if.else84, %if.else73, %if.then49, %if.then14, %if.then28
  ret void, !dbg !4110
}

; Function Attrs: nounwind uwtable
define internal void @encode_ieee_extended_motorola(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4111 {
entry:
  %intermed = alloca [3 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4113, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4114, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4115, metadata !DIExpression()), !dbg !4118
  %0 = bitcast [3 x i64]* %intermed to i8*, !dbg !4119
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4119
  call void @llvm.dbg.declare(metadata [3 x i64]* %intermed, metadata !4116, metadata !DIExpression()), !dbg !4120
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %intermed, i64 0, i64 0, !dbg !4121
  call fastcc void @encode_ieee_extended(%struct.real_format* %fmt, i64* nonnull %arraydecay, %struct.real_value* %r) #7, !dbg !4122
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %intermed, i64 0, i64 2, !dbg !4123
  %1 = load i64, i64* %arrayidx, align 16, !dbg !4123
  %shl = shl i64 %1, 16, !dbg !4124
  store i64 %shl, i64* %buf, align 8, !dbg !4125
  %arrayidx2 = getelementptr inbounds [3 x i64], [3 x i64]* %intermed, i64 0, i64 1, !dbg !4126
  %2 = load i64, i64* %arrayidx2, align 8, !dbg !4126
  %arrayidx3 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !4127
  store i64 %2, i64* %arrayidx3, align 8, !dbg !4128
  %3 = load i64, i64* %arraydecay, align 16, !dbg !4129
  %arrayidx5 = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !4130
  store i64 %3, i64* %arrayidx5, align 8, !dbg !4131
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4132
  ret void, !dbg !4132
}

; Function Attrs: nounwind uwtable
define internal void @decode_ieee_extended_motorola(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4133 {
entry:
  %intermed = alloca [3 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4135, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4136, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4137, metadata !DIExpression()), !dbg !4139
  %0 = bitcast [3 x i64]* %intermed to i8*, !dbg !4140
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4140
  call void @llvm.dbg.declare(metadata [3 x i64]* %intermed, metadata !4138, metadata !DIExpression()), !dbg !4141
  %arrayidx = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !4142
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4142
  %arrayidx1 = getelementptr inbounds [3 x i64], [3 x i64]* %intermed, i64 0, i64 0, !dbg !4143
  store i64 %1, i64* %arrayidx1, align 16, !dbg !4144
  %arrayidx2 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !4145
  %2 = load i64, i64* %arrayidx2, align 8, !dbg !4145
  %arrayidx3 = getelementptr inbounds [3 x i64], [3 x i64]* %intermed, i64 0, i64 1, !dbg !4146
  store i64 %2, i64* %arrayidx3, align 8, !dbg !4147
  %3 = load i64, i64* %buf, align 8, !dbg !4148
  %shr = lshr i64 %3, 16, !dbg !4149
  %arrayidx5 = getelementptr inbounds [3 x i64], [3 x i64]* %intermed, i64 0, i64 2, !dbg !4150
  store i64 %shr, i64* %arrayidx5, align 16, !dbg !4151
  call fastcc void @decode_ieee_extended(%struct.real_format* %fmt, %struct.real_value* %r, i64* nonnull %arrayidx1) #7, !dbg !4152
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4153
  ret void, !dbg !4153
}

; Function Attrs: nounwind uwtable
define internal void @encode_ieee_extended_intel_96(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4154 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4156, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4157, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4158, metadata !DIExpression()), !dbg !4159
  tail call fastcc void @encode_ieee_extended(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #7, !dbg !4160
  ret void, !dbg !4162
}

; Function Attrs: nounwind uwtable
define internal void @decode_ieee_extended_intel_96(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4163 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4165, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4166, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4167, metadata !DIExpression()), !dbg !4168
  tail call fastcc void @decode_ieee_extended(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #7, !dbg !4169
  ret void, !dbg !4171
}

; Function Attrs: nounwind uwtable
define internal void @encode_ieee_extended_intel_128(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4172 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4174, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4175, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4176, metadata !DIExpression()), !dbg !4177
  tail call void @encode_ieee_extended_intel_96(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #7, !dbg !4178
  %arrayidx = getelementptr inbounds i64, i64* %buf, i64 3, !dbg !4179
  store i64 0, i64* %arrayidx, align 8, !dbg !4180
  ret void, !dbg !4181
}

; Function Attrs: nounwind uwtable
define internal void @decode_ieee_extended_intel_128(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4182 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4184, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4185, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4186, metadata !DIExpression()), !dbg !4187
  tail call void @decode_ieee_extended_intel_96(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #7, !dbg !4188
  ret void, !dbg !4189
}

; Function Attrs: nounwind uwtable
define internal void @encode_ibm_extended(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4190 {
entry:
  %u = alloca %struct.real_value, align 8
  %normr = alloca %struct.real_value, align 8
  %v = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4192, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4193, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4194, metadata !DIExpression()), !dbg !4199
  %0 = bitcast %struct.real_value* %u to i8*, !dbg !4200
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4200
  %1 = bitcast %struct.real_value* %normr to i8*, !dbg !4200
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4200
  %2 = bitcast %struct.real_value* %v to i8*, !dbg !4200
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #8, !dbg !4200
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !4201
  %3 = load i8, i8* %qnan_msb_set, align 2, !dbg !4201
  %tobool = icmp eq i8 %3, 0, !dbg !4202
  %cond = select i1 %tobool, %struct.real_format* @mips_double_format, %struct.real_format* @ieee_double_format, !dbg !4202
  call void @llvm.dbg.value(metadata %struct.real_format* %cond, metadata !4198, metadata !DIExpression()), !dbg !4199
  %4 = bitcast %struct.real_value* %r to i8*, !dbg !4203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* align 8 %4, i64 32, i1 false), !dbg !4203
  %5 = getelementptr inbounds %struct.real_value, %struct.real_value* %normr, i64 0, i32 0, !dbg !4204
  %bf.load = load i32, i32* %5, align 8, !dbg !4204
  %bf.clear = and i32 %bf.load, 3, !dbg !4204
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !4206
  br i1 %cmp, label %if.then, label %if.end, !dbg !4207

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.real_value* %normr, metadata !4196, metadata !DIExpression(DW_OP_deref)), !dbg !4199
  call fastcc void @normalize(%struct.real_value* nonnull %normr) #7, !dbg !4208
  br label %if.end, !dbg !4208

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 32, i1 false), !dbg !4209
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !4195, metadata !DIExpression(DW_OP_deref)), !dbg !4199
  call fastcc void @round_for_format(%struct.real_format* nonnull %cond, %struct.real_value* nonnull %u) #7, !dbg !4210
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !4195, metadata !DIExpression(DW_OP_deref)), !dbg !4199
  call void @encode_ieee_double(%struct.real_format* nonnull %cond, i64* %buf, %struct.real_value* nonnull %u) #7, !dbg !4211
  %6 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 0, !dbg !4212
  %bf.load2 = load i32, i32* %6, align 8, !dbg !4212
  %bf.clear3 = and i32 %bf.load2, 3, !dbg !4212
  %cmp4 = icmp eq i32 %bf.clear3, 1, !dbg !4214
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !4215

if.then6:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !4195, metadata !DIExpression(DW_OP_deref)), !dbg !4199
  call void @llvm.dbg.value(metadata %struct.real_value* %normr, metadata !4196, metadata !DIExpression(DW_OP_deref)), !dbg !4199
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !4197, metadata !DIExpression(DW_OP_deref)), !dbg !4199
  %call = call fastcc zeroext i8 @do_add(%struct.real_value* nonnull %v, %struct.real_value* nonnull %normr, %struct.real_value* nonnull %u, i32 1) #7, !dbg !4216
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !4197, metadata !DIExpression(DW_OP_deref)), !dbg !4199
  call fastcc void @round_for_format(%struct.real_format* nonnull %cond, %struct.real_value* nonnull %v) #7, !dbg !4218
  %arrayidx7 = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !4219
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !4197, metadata !DIExpression(DW_OP_deref)), !dbg !4199
  call void @encode_ieee_double(%struct.real_format* nonnull %cond, i64* nonnull %arrayidx7, %struct.real_value* nonnull %v) #7, !dbg !4220
  br label %if.end10, !dbg !4221

if.else:                                          ; preds = %if.end
  %arrayidx8 = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !4222
  store i64 0, i64* %arrayidx8, align 8, !dbg !4224
  %arrayidx9 = getelementptr inbounds i64, i64* %buf, i64 3, !dbg !4225
  store i64 0, i64* %arrayidx9, align 8, !dbg !4226
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #8, !dbg !4227
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4227
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4227
  ret void, !dbg !4227
}

; Function Attrs: nounwind uwtable
define internal void @decode_ibm_extended(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4228 {
entry:
  %u = alloca %struct.real_value, align 8
  %v = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4230, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4231, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4232, metadata !DIExpression()), !dbg !4236
  %0 = bitcast %struct.real_value* %u to i8*, !dbg !4237
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4237
  %1 = bitcast %struct.real_value* %v to i8*, !dbg !4237
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4237
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !4238
  %2 = load i8, i8* %qnan_msb_set, align 2, !dbg !4238
  %tobool = icmp eq i8 %2, 0, !dbg !4239
  %cond = select i1 %tobool, %struct.real_format* @mips_double_format, %struct.real_format* @ieee_double_format, !dbg !4239
  call void @llvm.dbg.value(metadata %struct.real_format* %cond, metadata !4235, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !4233, metadata !DIExpression(DW_OP_deref)), !dbg !4236
  call void @decode_ieee_double(%struct.real_format* nonnull %cond, %struct.real_value* nonnull %u, i64* %buf) #7, !dbg !4240
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 0, !dbg !4241
  %bf.load = load i32, i32* %3, align 8, !dbg !4241
  %bf.clear = and i32 %bf.load, 3, !dbg !4241
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !4243
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !4244

land.lhs.true:                                    ; preds = %entry
  %cmp4 = icmp eq i32 %bf.clear, 2, !dbg !4245
  br i1 %cmp4, label %if.else, label %land.lhs.true6, !dbg !4246

land.lhs.true6:                                   ; preds = %land.lhs.true
  %cmp9 = icmp eq i32 %bf.clear, 3, !dbg !4247
  br i1 %cmp9, label %if.else, label %if.then, !dbg !4248

if.then:                                          ; preds = %land.lhs.true6
  %arrayidx11 = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !4249
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !4234, metadata !DIExpression(DW_OP_deref)), !dbg !4236
  call void @decode_ieee_double(%struct.real_format* nonnull %cond, %struct.real_value* nonnull %v, i64* nonnull %arrayidx11) #7, !dbg !4251
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !4233, metadata !DIExpression(DW_OP_deref)), !dbg !4236
  call void @llvm.dbg.value(metadata %struct.real_value* %v, metadata !4234, metadata !DIExpression(DW_OP_deref)), !dbg !4236
  %call = call fastcc zeroext i8 @do_add(%struct.real_value* %r, %struct.real_value* nonnull %u, %struct.real_value* nonnull %v, i32 0) #7, !dbg !4252
  br label %if.end, !dbg !4253

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %4 = bitcast %struct.real_value* %r to i8*, !dbg !4254
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* nonnull align 8 %0, i64 32, i1 false), !dbg !4254
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4255
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4255
  ret void, !dbg !4255
}

; Function Attrs: nounwind uwtable
define internal void @encode_ieee_quad(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4256 {
entry:
  %u = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4258, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4259, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4260, metadata !DIExpression()), !dbg !4268
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4269
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4269
  call void @llvm.dbg.value(metadata i8 undef, metadata !4266, metadata !DIExpression()), !dbg !4268
  %1 = bitcast %struct.real_value* %u to i8*, !dbg !4270
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4270
  %2 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4271
  %bf.load = load i32, i32* %2, align 8, !dbg !4271
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !4271
  %shl = shl i32 %bf.lshr, 31, !dbg !4272
  %conv2 = sext i32 %shl to i64, !dbg !4273
  call void @llvm.dbg.value(metadata i64 %conv2, metadata !4261, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 0, metadata !4262, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 0, metadata !4263, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 0, metadata !4264, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !4267, metadata !DIExpression(DW_OP_deref)), !dbg !4268
  call fastcc void @rshift_significand(%struct.real_value* nonnull %u, %struct.real_value* %r, i32 79) #7, !dbg !4274
  %bf.load3 = load i32, i32* %2, align 8, !dbg !4275
  %bf.clear4 = and i32 %bf.load3, 3, !dbg !4275
  switch i32 %bf.clear4, label %sw.default1 [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb
    i32 3, label %sw.bb6
    i32 1, label %sw.bb55
  ], !dbg !4276

sw.bb:                                            ; preds = %entry
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 12, !dbg !4277
  %3 = load i8, i8* %has_inf, align 1, !dbg !4277
  %tobool = icmp ne i8 %3, 0, !dbg !4280
  %image2.0 = select i1 %tobool, i64 0, i64 4294967295, !dbg !4281
  %image3.0.v = select i1 %tobool, i64 2147418112, i64 2147483647, !dbg !4281
  %image3.0 = or i64 %image3.0.v, %conv2, !dbg !4281
  br label %sw.epilog, !dbg !4281

sw.bb6:                                           ; preds = %entry
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 11, !dbg !4282
  %4 = load i8, i8* %has_nans, align 2, !dbg !4282
  %tobool7 = icmp eq i8 %4, 0, !dbg !4284
  br i1 %tobool7, label %if.else52, label %if.then8, !dbg !4285

if.then8:                                         ; preds = %sw.bb6
  %or9 = or i64 %conv2, 2147418112, !dbg !4286
  call void @llvm.dbg.value(metadata i64 %or9, metadata !4261, metadata !DIExpression()), !dbg !4268
  %bf.clear12 = and i32 %bf.load3, 32, !dbg !4288
  %tobool13 = icmp eq i32 %bf.clear12, 0, !dbg !4290
  br i1 %tobool13, label %if.else19, label %if.then14, !dbg !4291

if.then14:                                        ; preds = %if.then8
  %canonical_nan_lsbs_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 16, !dbg !4292
  %5 = load i8, i8* %canonical_nan_lsbs_set, align 1, !dbg !4292
  %tobool15 = icmp ne i8 %5, 0, !dbg !4295
  %or17 = or i64 %conv2, 2147450879, !dbg !4296
  %spec.select = select i1 %tobool15, i64 4294967295, i64 0, !dbg !4298
  %spec.select2 = select i1 %tobool15, i64 %or17, i64 %or9, !dbg !4298
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !4264, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !4263, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %spec.select2, metadata !4261, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !4262, metadata !DIExpression()), !dbg !4268
  br label %if.end31, !dbg !4299

if.else19:                                        ; preds = %if.then8
  %arrayidx21 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 1, i64 0, !dbg !4300
  %6 = load i64, i64* %arrayidx21, align 8, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %6, metadata !4264, metadata !DIExpression()), !dbg !4268
  %shr = lshr i64 %6, 32, !dbg !4303
  call void @llvm.dbg.value(metadata i64 %shr, metadata !4263, metadata !DIExpression()), !dbg !4268
  %arrayidx24 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 1, i64 1, !dbg !4304
  %7 = load i64, i64* %arrayidx24, align 8, !dbg !4304
  call void @llvm.dbg.value(metadata i64 %7, metadata !4262, metadata !DIExpression()), !dbg !4268
  %shr25 = lshr i64 %7, 32, !dbg !4305
  %and27 = and i64 %shr25, 65535, !dbg !4306
  %or28 = or i64 %or9, %and27, !dbg !4307
  call void @llvm.dbg.value(metadata i64 %or28, metadata !4261, metadata !DIExpression()), !dbg !4268
  %and29 = and i64 %6, 4294967295, !dbg !4308
  call void @llvm.dbg.value(metadata i64 %and29, metadata !4264, metadata !DIExpression()), !dbg !4268
  %and30 = and i64 %7, 4294967295, !dbg !4309
  call void @llvm.dbg.value(metadata i64 %and30, metadata !4262, metadata !DIExpression()), !dbg !4268
  br label %if.end31

if.end31:                                         ; preds = %if.else19, %if.then14
  %image2.2 = phi i64 [ %spec.select, %if.then14 ], [ %and30, %if.else19 ], !dbg !4310
  %image3.2 = phi i64 [ %spec.select2, %if.then14 ], [ %or28, %if.else19 ], !dbg !4310
  %image1.2 = phi i64 [ %spec.select, %if.then14 ], [ %shr, %if.else19 ], !dbg !4310
  %image0.2 = phi i64 [ %spec.select, %if.then14 ], [ %and29, %if.else19 ], !dbg !4310
  call void @llvm.dbg.value(metadata i64 %image0.2, metadata !4264, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %image1.2, metadata !4263, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %image3.2, metadata !4261, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %image2.2, metadata !4262, metadata !DIExpression()), !dbg !4268
  %bf.lshr33 = lshr i32 %bf.load3, 4, !dbg !4311
  %bf.clear34 = and i32 %bf.lshr33, 1, !dbg !4311
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !4313
  %8 = load i8, i8* %qnan_msb_set, align 2, !dbg !4313
  %conv35 = zext i8 %8 to i32, !dbg !4314
  %cmp36 = icmp eq i32 %bf.clear34, %conv35, !dbg !4315
  %and39 = and i64 %image3.2, -32769, !dbg !4316
  %or41 = or i64 %image3.2, 32768, !dbg !4316
  %image3.3 = select i1 %cmp36, i64 %and39, i64 %or41, !dbg !4316
  call void @llvm.dbg.value(metadata i64 %image3.3, metadata !4261, metadata !DIExpression()), !dbg !4268
  %and43 = and i64 %image3.3, 65535, !dbg !4317
  %or44 = or i64 %and43, %image2.2, !dbg !4319
  %or45 = or i64 %or44, %image1.2, !dbg !4320
  %or46 = or i64 %or45, %image0.2, !dbg !4321
  %cmp47 = icmp eq i64 %or46, 0, !dbg !4322
  %or50 = or i64 %image3.3, 16384, !dbg !4323
  %spec.select5 = select i1 %cmp47, i64 %or50, i64 %image3.3, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %spec.select5, metadata !4261, metadata !DIExpression()), !dbg !4268
  br label %sw.epilog, !dbg !4325

if.else52:                                        ; preds = %sw.bb6
  %or53 = or i64 %conv2, 2147483647, !dbg !4326
  call void @llvm.dbg.value(metadata i64 %or53, metadata !4261, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 4294967295, metadata !4262, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 4294967295, metadata !4263, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 4294967295, metadata !4264, metadata !DIExpression()), !dbg !4268
  br label %sw.epilog

sw.bb55:                                          ; preds = %entry
  %tobool56 = icmp sgt i64 %0, -1, !dbg !4328
  br i1 %tobool56, label %if.end63, label %if.else58, !dbg !4330

if.else58:                                        ; preds = %sw.bb55
  %sub = ashr i32 %bf.load3, 6, !dbg !4331
  %sub61 = add nsw i32 %sub, 16382, !dbg !4332
  %conv62 = sext i32 %sub61 to i64, !dbg !4331
  call void @llvm.dbg.value(metadata i64 %conv62, metadata !4265, metadata !DIExpression()), !dbg !4268
  %phitmp = shl nsw i64 %conv62, 16
  br label %if.end63

if.end63:                                         ; preds = %sw.bb55, %if.else58
  %exp.0 = phi i64 [ %phitmp, %if.else58 ], [ 0, %sw.bb55 ]
  %or65 = or i64 %exp.0, %conv2, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %or65, metadata !4261, metadata !DIExpression()), !dbg !4268
  %arrayidx67 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 1, i64 0, !dbg !4334
  %9 = load i64, i64* %arrayidx67, align 8, !dbg !4334
  call void @llvm.dbg.value(metadata i64 %9, metadata !4264, metadata !DIExpression()), !dbg !4268
  %shr68 = lshr i64 %9, 32, !dbg !4337
  call void @llvm.dbg.value(metadata i64 %shr68, metadata !4263, metadata !DIExpression()), !dbg !4268
  %arrayidx71 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 1, i64 1, !dbg !4338
  %10 = load i64, i64* %arrayidx71, align 8, !dbg !4338
  call void @llvm.dbg.value(metadata i64 %10, metadata !4262, metadata !DIExpression()), !dbg !4268
  %shr72 = lshr i64 %10, 32, !dbg !4339
  %and74 = and i64 %shr72, 65535, !dbg !4340
  %or75 = or i64 %or65, %and74, !dbg !4341
  call void @llvm.dbg.value(metadata i64 %or75, metadata !4261, metadata !DIExpression()), !dbg !4268
  %and76 = and i64 %9, 4294967295, !dbg !4342
  call void @llvm.dbg.value(metadata i64 %and76, metadata !4264, metadata !DIExpression()), !dbg !4268
  %and77 = and i64 %10, 4294967295, !dbg !4343
  call void @llvm.dbg.value(metadata i64 %and77, metadata !4262, metadata !DIExpression()), !dbg !4268
  br label %sw.epilog, !dbg !4344

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %if.end31, %if.else52, %sw.bb, %if.end63, %entry
  %image2.4 = phi i64 [ %and77, %if.end63 ], [ 0, %entry ], [ %image2.0, %sw.bb ], [ %image2.2, %if.end31 ], [ 4294967295, %if.else52 ], !dbg !4268
  %image3.6 = phi i64 [ %or75, %if.end63 ], [ %conv2, %entry ], [ %image3.0, %sw.bb ], [ %spec.select5, %if.end31 ], [ %or53, %if.else52 ], !dbg !4268
  %image1.4 = phi i64 [ %shr68, %if.end63 ], [ 0, %entry ], [ %image2.0, %sw.bb ], [ %image1.2, %if.end31 ], [ 4294967295, %if.else52 ], !dbg !4268
  %image0.4 = phi i64 [ %and76, %if.end63 ], [ 0, %entry ], [ %image2.0, %sw.bb ], [ %image0.2, %if.end31 ], [ 4294967295, %if.else52 ], !dbg !4268
  call void @llvm.dbg.value(metadata i64 %image0.4, metadata !4264, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %image1.4, metadata !4263, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %image3.6, metadata !4261, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %image2.4, metadata !4262, metadata !DIExpression()), !dbg !4268
  store i64 %image0.4, i64* %buf, align 8, !dbg !4345
  %arrayidx79 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !4348
  store i64 %image1.4, i64* %arrayidx79, align 8, !dbg !4349
  %arrayidx80 = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !4350
  store i64 %image2.4, i64* %arrayidx80, align 8, !dbg !4351
  %arrayidx81 = getelementptr inbounds i64, i64* %buf, i64 3, !dbg !4352
  store i64 %image3.6, i64* %arrayidx81, align 8, !dbg !4353
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4354
  ret void, !dbg !4354
}

; Function Attrs: nounwind uwtable
define internal void @decode_ieee_quad(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4355 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4357, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4358, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4359, metadata !DIExpression()), !dbg !4366
  %0 = load i64, i64* %buf, align 8, !dbg !4367
  call void @llvm.dbg.value(metadata i64 %0, metadata !4363, metadata !DIExpression()), !dbg !4366
  %arrayidx1 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !4370
  %1 = load i64, i64* %arrayidx1, align 8, !dbg !4370
  call void @llvm.dbg.value(metadata i64 %1, metadata !4362, metadata !DIExpression()), !dbg !4366
  %arrayidx2 = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !4371
  %2 = load i64, i64* %arrayidx2, align 8, !dbg !4371
  call void @llvm.dbg.value(metadata i64 %2, metadata !4361, metadata !DIExpression()), !dbg !4366
  %arrayidx3 = getelementptr inbounds i64, i64* %buf, i64 3, !dbg !4372
  %3 = load i64, i64* %arrayidx3, align 8, !dbg !4372
  call void @llvm.dbg.value(metadata i64 %3, metadata !4360, metadata !DIExpression()), !dbg !4366
  %and = and i64 %0, 4294967295, !dbg !4373
  call void @llvm.dbg.value(metadata i64 %and, metadata !4363, metadata !DIExpression()), !dbg !4366
  %and4 = and i64 %1, 4294967295, !dbg !4374
  call void @llvm.dbg.value(metadata i64 %and4, metadata !4362, metadata !DIExpression()), !dbg !4366
  %and5 = and i64 %2, 4294967295, !dbg !4375
  call void @llvm.dbg.value(metadata i64 %and5, metadata !4361, metadata !DIExpression()), !dbg !4366
  %shr = lshr i64 %3, 31, !dbg !4376
  %shr7 = lshr i64 %3, 16, !dbg !4377
  %4 = trunc i64 %shr7 to i32, !dbg !4378
  %conv9 = and i32 %4, 32767, !dbg !4378
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !4365, metadata !DIExpression()), !dbg !4366
  %and10 = and i64 %3, 65535, !dbg !4379
  call void @llvm.dbg.value(metadata i64 %and10, metadata !4360, metadata !DIExpression()), !dbg !4366
  %5 = bitcast %struct.real_value* %r to i8*, !dbg !4380
  %call = tail call i8* @memset(i8* %5, i32 0, i64 32) #6, !dbg !4381
  switch i32 %conv9, label %if.else94 [
    i32 0, label %if.then
    i32 32767, label %land.lhs.true44
  ], !dbg !4382

if.then:                                          ; preds = %entry
  %or = or i64 %and10, %and5, !dbg !4383
  %or12 = or i64 %or, %and4, !dbg !4387
  %or13 = or i64 %or12, %and, !dbg !4388
  %tobool = icmp eq i64 %or13, 0, !dbg !4388
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4389

land.lhs.true:                                    ; preds = %if.then
  %has_denorm = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 13, !dbg !4390
  %6 = load i8, i8* %has_denorm, align 8, !dbg !4390
  %tobool15 = icmp eq i8 %6, 0, !dbg !4391
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !4392

if.then16:                                        ; preds = %land.lhs.true
  %7 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4393
  %bf.load = load i32, i32* %7, align 8, !dbg !4395
  %conv1 = shl nuw nsw i64 %shr, 3, !dbg !4396
  %conv = trunc i64 %conv1 to i32, !dbg !4396
  %bf.shl = and i32 %conv, 8, !dbg !4396
  %bf.set = and i32 %bf.load, 52, !dbg !4396
  %bf.clear19 = or i32 %bf.set, %bf.shl, !dbg !4396
  %bf.set23 = or i32 %bf.clear19, -1043327, !dbg !4397
  store i32 %bf.set23, i32* %7, align 8, !dbg !4397
  %shl = shl i64 %1, 32, !dbg !4398
  %or25 = or i64 %shl, %and, !dbg !4401
  %arrayidx26 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !4402
  store i64 %or25, i64* %arrayidx26, align 8, !dbg !4403
  %shl27 = shl nuw nsw i64 %and10, 32, !dbg !4404
  %or29 = or i64 %shl27, %and5, !dbg !4405
  %arrayidx31 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 1, !dbg !4406
  store i64 %or29, i64* %arrayidx31, align 8, !dbg !4407
  tail call fastcc void @normalize(%struct.real_value* %r) #7, !dbg !4408
  br label %if.end124, !dbg !4409

if.else:                                          ; preds = %land.lhs.true, %if.then
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 14, !dbg !4410
  %8 = load i8, i8* %has_signed_zero, align 1, !dbg !4410
  %tobool32 = icmp eq i8 %8, 0, !dbg !4412
  br i1 %tobool32, label %if.end124, label %if.then33, !dbg !4413

if.then33:                                        ; preds = %if.else
  %9 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4414
  %bf.load35 = load i32, i32* %9, align 8, !dbg !4415
  %10 = shl nuw nsw i64 %shr, 3, !dbg !4415
  %11 = trunc i64 %10 to i32, !dbg !4415
  %12 = and i32 %11, 8, !dbg !4415
  %bf.clear38 = and i32 %bf.load35, -9, !dbg !4415
  %bf.set39 = or i32 %bf.clear38, %12, !dbg !4415
  store i32 %bf.set39, i32* %9, align 8, !dbg !4415
  br label %if.end124, !dbg !4416

land.lhs.true44:                                  ; preds = %entry
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 11, !dbg !4417
  %13 = load i8, i8* %has_nans, align 2, !dbg !4417
  %tobool46 = icmp eq i8 %13, 0, !dbg !4419
  br i1 %tobool46, label %lor.lhs.false, label %if.then49, !dbg !4420

lor.lhs.false:                                    ; preds = %land.lhs.true44
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 12, !dbg !4421
  %14 = load i8, i8* %has_inf, align 1, !dbg !4421
  %tobool48 = icmp eq i8 %14, 0, !dbg !4422
  br i1 %tobool48, label %if.else94, label %if.then49, !dbg !4423

if.then49:                                        ; preds = %lor.lhs.false, %land.lhs.true44
  %or50 = or i64 %and10, %and5, !dbg !4424
  %or51 = or i64 %or50, %and4, !dbg !4427
  %or52 = or i64 %or51, %and, !dbg !4428
  %tobool53 = icmp eq i64 %or52, 0, !dbg !4428
  %15 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4429
  %bf.load55 = load i32, i32* %15, align 8, !dbg !4429
  br i1 %tobool53, label %if.else83, label %if.then54, !dbg !4430

if.then54:                                        ; preds = %if.then49
  %16 = shl nuw nsw i64 %shr, 3, !dbg !4431
  %17 = trunc i64 %16 to i32, !dbg !4431
  %18 = and i32 %17, 8, !dbg !4431
  %bf.set57 = and i32 %bf.load55, -12, !dbg !4431
  %bf.clear62 = or i32 %bf.set57, %18, !dbg !4431
  %bf.set63 = or i32 %bf.clear62, 3, !dbg !4431
  store i32 %bf.set63, i32* %15, align 8, !dbg !4431
  %shr64 = lshr i64 %3, 15, !dbg !4433
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !4434
  %19 = load i8, i8* %qnan_msb_set, align 2, !dbg !4434
  %conv66 = zext i8 %19 to i64, !dbg !4435
  %xor = xor i64 %shr64, %conv66, !dbg !4436
  %conv67 = trunc i64 %xor to i32, !dbg !4437
  %bf.value69 = shl i32 %conv67, 4, !dbg !4438
  %bf.shl70 = and i32 %bf.value69, 16, !dbg !4438
  %bf.clear71 = and i32 %bf.set63, -17, !dbg !4438
  %bf.set72 = or i32 %bf.clear71, %bf.shl70, !dbg !4438
  store i32 %bf.set72, i32* %15, align 8, !dbg !4438
  %shl73 = shl i64 %1, 32, !dbg !4439
  %or75 = or i64 %shl73, %and, !dbg !4442
  %arrayidx77 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !4443
  store i64 %or75, i64* %arrayidx77, align 8, !dbg !4444
  %shl78 = shl nuw nsw i64 %and10, 32, !dbg !4445
  %or80 = or i64 %shl78, %and5, !dbg !4446
  %arrayidx82 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 1, !dbg !4447
  store i64 %or80, i64* %arrayidx82, align 8, !dbg !4448
  tail call fastcc void @lshift_significand(%struct.real_value* %r, %struct.real_value* %r, i32 79) #7, !dbg !4449
  br label %if.end124, !dbg !4450

if.else83:                                        ; preds = %if.then49
  %20 = shl nuw nsw i64 %shr, 3, !dbg !4451
  %21 = trunc i64 %20 to i32, !dbg !4451
  %22 = and i32 %21, 8, !dbg !4451
  %bf.set86 = and i32 %bf.load55, -12, !dbg !4451
  %bf.clear91 = or i32 %bf.set86, %22, !dbg !4451
  %bf.set92 = or i32 %bf.clear91, 2, !dbg !4451
  store i32 %bf.set92, i32* %15, align 8, !dbg !4451
  br label %if.end124

if.else94:                                        ; preds = %lor.lhs.false, %entry
  %23 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4453
  %bf.load95 = load i32, i32* %23, align 8, !dbg !4455
  %24 = shl nuw nsw i64 %shr, 3, !dbg !4456
  %25 = trunc i64 %24 to i32, !dbg !4456
  %26 = and i32 %25, 8, !dbg !4456
  %bf.set97 = and i32 %bf.load95, 52, !dbg !4456
  %bf.clear102 = or i32 %bf.set97, %26, !dbg !4456
  %add = shl nuw nsw i32 %conv9, 6, !dbg !4457
  %bf.shl107 = add nsw i32 %add, -1048448, !dbg !4457
  %bf.set103 = or i32 %bf.clear102, %bf.shl107, !dbg !4457
  %bf.set109 = or i32 %bf.set103, 1, !dbg !4457
  store i32 %bf.set109, i32* %23, align 8, !dbg !4457
  %shl110 = shl i64 %1, 32, !dbg !4458
  %or112 = or i64 %shl110, %and, !dbg !4461
  %arrayidx114 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !4462
  store i64 %or112, i64* %arrayidx114, align 8, !dbg !4463
  %shl115 = shl nuw nsw i64 %and10, 32, !dbg !4464
  %or117 = or i64 %shl115, %and5, !dbg !4465
  %arrayidx119 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 1, !dbg !4466
  store i64 %or117, i64* %arrayidx119, align 8, !dbg !4467
  tail call fastcc void @lshift_significand(%struct.real_value* %r, %struct.real_value* %r, i32 79) #7, !dbg !4468
  %arrayidx121 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4469
  %27 = load i64, i64* %arrayidx121, align 8, !dbg !4470
  %or122 = or i64 %27, -9223372036854775808, !dbg !4470
  store i64 %or122, i64* %arrayidx121, align 8, !dbg !4470
  br label %if.end124

if.end124:                                        ; preds = %if.else, %if.else94, %if.else83, %if.then54, %if.then16, %if.then33
  ret void, !dbg !4471
}

; Function Attrs: nounwind uwtable
define internal void @encode_vax_f(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4472 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4474, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4475, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4476, metadata !DIExpression()), !dbg !4481
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4482
  %bf.load = load i32, i32* %0, align 8, !dbg !4482
  %1 = shl i32 %bf.load, 12, !dbg !4483
  %shl = and i32 %1, 32768, !dbg !4483
  %conv = zext i32 %shl to i64, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %conv, metadata !4477, metadata !DIExpression()), !dbg !4481
  %bf.clear2 = and i32 %bf.load, 3, !dbg !4485
  switch i32 %bf.clear2, label %sw.default1 [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb3
    i32 3, label %sw.bb3
    i32 1, label %sw.bb4
  ], !dbg !4486

sw.bb3:                                           ; preds = %entry, %entry
  %or = or i64 %conv, 4294934527, !dbg !4487
  call void @llvm.dbg.value(metadata i64 %or, metadata !4480, metadata !DIExpression()), !dbg !4481
  br label %sw.epilog, !dbg !4489

sw.bb4:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4490
  %2 = load i64, i64* %arrayidx, align 8, !dbg !4490
  call void @llvm.dbg.value(metadata i64 %2, metadata !4479, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_constu, 8323072, DW_OP_and, DW_OP_stack_value)), !dbg !4481
  %sub = ashr i32 %bf.load, 6, !dbg !4491
  %add = add nsw i32 %sub, 128, !dbg !4492
  %conv8 = sext i32 %add to i64, !dbg !4491
  call void @llvm.dbg.value(metadata i64 %conv8, metadata !4478, metadata !DIExpression()), !dbg !4481
  %3 = lshr i64 %2, 24, !dbg !4493
  %and10 = and i64 %3, 4294901760, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %and10, metadata !4480, metadata !DIExpression()), !dbg !4481
  %or11 = or i64 %and10, %conv, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %or11, metadata !4480, metadata !DIExpression()), !dbg !4481
  %shl12 = shl nsw i64 %conv8, 7, !dbg !4496
  %or13 = or i64 %or11, %shl12, !dbg !4497
  call void @llvm.dbg.value(metadata i64 %or13, metadata !4480, metadata !DIExpression()), !dbg !4481
  %and = lshr i64 %2, 56, !dbg !4498
  %shr14 = and i64 %and, 127, !dbg !4498
  %or15 = or i64 %or13, %shr14, !dbg !4499
  call void @llvm.dbg.value(metadata i64 %or15, metadata !4480, metadata !DIExpression()), !dbg !4481
  br label %sw.epilog, !dbg !4500

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb3
  %image.0 = phi i64 [ %or15, %sw.bb4 ], [ %or, %sw.bb3 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %image.0, metadata !4480, metadata !DIExpression()), !dbg !4481
  store i64 %image.0, i64* %buf, align 8, !dbg !4501
  ret void, !dbg !4502
}

; Function Attrs: nounwind uwtable
define internal void @decode_vax_f(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4503 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4505, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4506, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4507, metadata !DIExpression()), !dbg !4510
  %0 = load i64, i64* %buf, align 8, !dbg !4511
  call void @llvm.dbg.value(metadata i64 %0, metadata !4508, metadata !DIExpression(DW_OP_constu, 4294901760, DW_OP_and, DW_OP_stack_value)), !dbg !4510
  %shr = lshr i64 %0, 7, !dbg !4512
  %1 = trunc i64 %shr to i32, !dbg !4513
  %conv = and i32 %1, 255, !dbg !4513
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4509, metadata !DIExpression()), !dbg !4510
  %2 = bitcast %struct.real_value* %r to i8*, !dbg !4514
  %call = tail call i8* @memset(i8* %2, i32 0, i64 32) #6, !dbg !4515
  %cmp = icmp eq i32 %conv, 0, !dbg !4516
  br i1 %cmp, label %if.end, label %if.then, !dbg !4518

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4519
  %bf.load = load i32, i32* %3, align 8, !dbg !4521
  %4 = lshr i64 %0, 12, !dbg !4522
  %5 = trunc i64 %4 to i32, !dbg !4522
  %bf.shl = and i32 %5, 8, !dbg !4522
  %bf.set = and i32 %bf.load, 52, !dbg !4522
  %bf.clear7 = or i32 %bf.set, %bf.shl, !dbg !4522
  %sub = shl nuw nsw i32 %conv, 6, !dbg !4523
  %bf.shl12 = add nsw i32 %sub, -8192, !dbg !4523
  %bf.set8 = or i32 %bf.clear7, %bf.shl12, !dbg !4523
  %bf.set14 = or i32 %bf.set8, 1, !dbg !4523
  store i32 %bf.set14, i32* %3, align 8, !dbg !4523
  %and15 = shl i64 %0, 16, !dbg !4524
  %shl = and i64 %and15, 8323072, !dbg !4524
  %and = lshr i64 %0, 16, !dbg !4525
  %shr16 = and i64 %and, 65535, !dbg !4525
  %or = or i64 %shl, %shr16, !dbg !4526
  call void @llvm.dbg.value(metadata i64 %or, metadata !4508, metadata !DIExpression()), !dbg !4510
  %shl18 = shl nuw nsw i64 %or, 40, !dbg !4527
  %or19 = or i64 %shl18, -9223372036854775808, !dbg !4528
  %arrayidx20 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4529
  store i64 %or19, i64* %arrayidx20, align 8, !dbg !4530
  br label %if.end, !dbg !4531

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !4532
}

; Function Attrs: nounwind uwtable
define internal void @encode_vax_d(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4533 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4535, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4536, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4537, metadata !DIExpression()), !dbg !4541
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4542
  %bf.load = load i32, i32* %0, align 8, !dbg !4542
  %1 = shl i32 %bf.load, 12, !dbg !4543
  %shl = and i32 %1, 32768, !dbg !4543
  %conv = zext i32 %shl to i64, !dbg !4544
  call void @llvm.dbg.value(metadata i64 %conv, metadata !4540, metadata !DIExpression()), !dbg !4541
  %bf.clear2 = and i32 %bf.load, 3, !dbg !4545
  switch i32 %bf.clear2, label %sw.default1 [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb3
    i32 3, label %sw.bb3
    i32 1, label %sw.bb4
  ], !dbg !4546

sw.bb3:                                           ; preds = %entry, %entry
  %or = or i64 %conv, 4294934527, !dbg !4547
  call void @llvm.dbg.value(metadata i64 %or, metadata !4538, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i64 4294967295, metadata !4539, metadata !DIExpression()), !dbg !4541
  br label %sw.epilog, !dbg !4549

sw.bb4:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4550
  %2 = load i64, i64* %arrayidx, align 8, !dbg !4550
  call void @llvm.dbg.value(metadata i64 %2, metadata !4538, metadata !DIExpression()), !dbg !4541
  %shr = lshr i64 %2, 8, !dbg !4553
  %and = and i64 %shr, 4294967295, !dbg !4554
  call void @llvm.dbg.value(metadata i64 %and, metadata !4539, metadata !DIExpression()), !dbg !4541
  %shr5 = lshr i64 %2, 40, !dbg !4555
  call void @llvm.dbg.value(metadata i64 %shr5, metadata !4538, metadata !DIExpression(DW_OP_constu, 8388607, DW_OP_and, DW_OP_stack_value)), !dbg !4541
  %shl8 = shl nuw nsw i64 %shr5, 16, !dbg !4556
  %shr9 = lshr i64 %2, 56, !dbg !4557
  %or10 = or i64 %shl8, %shr9, !dbg !4558
  %and11 = and i64 %or10, 4294901887, !dbg !4559
  call void @llvm.dbg.value(metadata i64 %and11, metadata !4538, metadata !DIExpression()), !dbg !4541
  %shl12 = shl nuw nsw i64 %and, 16, !dbg !4560
  %shr13 = lshr i64 %and, 16, !dbg !4561
  %shl12.masked = and i64 %shl12, 4294901760, !dbg !4562
  %and15 = or i64 %shl12.masked, %shr13, !dbg !4562
  call void @llvm.dbg.value(metadata i64 %and15, metadata !4539, metadata !DIExpression()), !dbg !4541
  %or16 = or i64 %and11, %conv, !dbg !4563
  call void @llvm.dbg.value(metadata i64 %or16, metadata !4538, metadata !DIExpression()), !dbg !4541
  %3 = lshr i32 %bf.load, 6, !dbg !4564
  %add = shl i32 %3, 7, !dbg !4565
  %shl19 = add i32 %add, 16384, !dbg !4565
  %conv20 = sext i32 %shl19 to i64, !dbg !4566
  %or21 = or i64 %or16, %conv20, !dbg !4567
  call void @llvm.dbg.value(metadata i64 %or21, metadata !4538, metadata !DIExpression()), !dbg !4541
  br label %sw.epilog, !dbg !4568

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb3
  %image0.0 = phi i64 [ %or21, %sw.bb4 ], [ %or, %sw.bb3 ], [ 0, %entry ]
  %image1.0 = phi i64 [ %and15, %sw.bb4 ], [ 4294967295, %sw.bb3 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %image1.0, metadata !4539, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i64 %image0.0, metadata !4538, metadata !DIExpression()), !dbg !4541
  store i64 %image0.0, i64* %buf, align 8, !dbg !4569
  %arrayidx23 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !4571
  store i64 %image1.0, i64* %arrayidx23, align 8, !dbg !4572
  ret void, !dbg !4573
}

; Function Attrs: nounwind uwtable
define internal void @decode_vax_d(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4574 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4576, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4577, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4578, metadata !DIExpression()), !dbg !4582
  %0 = load i64, i64* %buf, align 8, !dbg !4583
  call void @llvm.dbg.value(metadata i64 %0, metadata !4579, metadata !DIExpression()), !dbg !4582
  %arrayidx1 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !4585
  %1 = load i64, i64* %arrayidx1, align 8, !dbg !4585
  call void @llvm.dbg.value(metadata i64 %1, metadata !4580, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i64 %0, metadata !4579, metadata !DIExpression(DW_OP_constu, 4294901760, DW_OP_and, DW_OP_stack_value)), !dbg !4582
  call void @llvm.dbg.value(metadata i64 %1, metadata !4580, metadata !DIExpression(DW_OP_constu, 4294901760, DW_OP_and, DW_OP_stack_value)), !dbg !4582
  %shr = lshr i64 %0, 7, !dbg !4586
  %2 = trunc i64 %shr to i32, !dbg !4587
  %conv = and i32 %2, 255, !dbg !4587
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4581, metadata !DIExpression()), !dbg !4582
  %3 = bitcast %struct.real_value* %r to i8*, !dbg !4588
  %call = tail call i8* @memset(i8* %3, i32 0, i64 32) #6, !dbg !4589
  %cmp = icmp eq i32 %conv, 0, !dbg !4590
  br i1 %cmp, label %if.end, label %if.then, !dbg !4592

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4593
  %bf.load = load i32, i32* %4, align 8, !dbg !4595
  %5 = lshr i64 %0, 12, !dbg !4596
  %6 = trunc i64 %5 to i32, !dbg !4596
  %bf.shl = and i32 %6, 8, !dbg !4596
  %bf.set = and i32 %bf.load, 52, !dbg !4596
  %bf.clear9 = or i32 %bf.set, %bf.shl, !dbg !4596
  %sub = shl nuw nsw i32 %conv, 6, !dbg !4597
  %bf.shl14 = add nsw i32 %sub, -8192, !dbg !4597
  %bf.set10 = or i32 %bf.clear9, %bf.shl14, !dbg !4597
  %bf.set16 = or i32 %bf.set10, 1, !dbg !4597
  store i32 %bf.set16, i32* %4, align 8, !dbg !4597
  %and17 = shl i64 %0, 16, !dbg !4598
  %shl = and i64 %and17, 8323072, !dbg !4598
  %and = lshr i64 %0, 16, !dbg !4599
  %shr18 = and i64 %and, 65535, !dbg !4599
  %or = or i64 %shl, %shr18, !dbg !4600
  call void @llvm.dbg.value(metadata i64 %or, metadata !4579, metadata !DIExpression()), !dbg !4582
  %and20 = shl i64 %1, 16, !dbg !4601
  %shl21 = and i64 %and20, 4294901760, !dbg !4601
  %and2 = lshr i64 %1, 16, !dbg !4602
  %shr22 = and i64 %and2, 65535, !dbg !4602
  %or24 = or i64 %shl21, %shr22, !dbg !4603
  call void @llvm.dbg.value(metadata i64 %or24, metadata !4580, metadata !DIExpression()), !dbg !4582
  %shl25 = shl nuw nsw i64 %or, 32, !dbg !4604
  %or27 = or i64 %shl25, %or24, !dbg !4607
  call void @llvm.dbg.value(metadata i64 %or27, metadata !4579, metadata !DIExpression()), !dbg !4582
  %shl28 = shl nuw nsw i64 %or27, 8, !dbg !4608
  call void @llvm.dbg.value(metadata i64 %shl28, metadata !4579, metadata !DIExpression()), !dbg !4582
  %or29 = or i64 %shl28, -9223372036854775808, !dbg !4609
  call void @llvm.dbg.value(metadata i64 %or29, metadata !4579, metadata !DIExpression()), !dbg !4582
  %arrayidx30 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4610
  store i64 %or29, i64* %arrayidx30, align 8, !dbg !4611
  br label %if.end, !dbg !4612

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !4613
}

; Function Attrs: nounwind uwtable
define internal void @encode_vax_g(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4614 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4616, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4617, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4618, metadata !DIExpression()), !dbg !4622
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4623
  %bf.load = load i32, i32* %0, align 8, !dbg !4623
  %1 = shl i32 %bf.load, 12, !dbg !4624
  %shl = and i32 %1, 32768, !dbg !4624
  %conv = zext i32 %shl to i64, !dbg !4625
  call void @llvm.dbg.value(metadata i64 %conv, metadata !4621, metadata !DIExpression()), !dbg !4622
  %bf.clear2 = and i32 %bf.load, 3, !dbg !4626
  switch i32 %bf.clear2, label %sw.default1 [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb3
    i32 3, label %sw.bb3
    i32 1, label %sw.bb4
  ], !dbg !4627

sw.bb3:                                           ; preds = %entry, %entry
  %or = or i64 %conv, 4294934527, !dbg !4628
  call void @llvm.dbg.value(metadata i64 %or, metadata !4619, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i64 4294967295, metadata !4620, metadata !DIExpression()), !dbg !4622
  br label %sw.epilog, !dbg !4630

sw.bb4:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4631
  %2 = load i64, i64* %arrayidx, align 8, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %2, metadata !4619, metadata !DIExpression()), !dbg !4622
  %shr = lshr i64 %2, 11, !dbg !4634
  %and = and i64 %shr, 4294967295, !dbg !4635
  call void @llvm.dbg.value(metadata i64 %and, metadata !4620, metadata !DIExpression()), !dbg !4622
  %shr5 = lshr i64 %2, 43, !dbg !4636
  call void @llvm.dbg.value(metadata i64 %shr5, metadata !4619, metadata !DIExpression(DW_OP_constu, 1048575, DW_OP_and, DW_OP_stack_value)), !dbg !4622
  %shl8 = shl nuw nsw i64 %shr5, 16, !dbg !4637
  %shr9 = lshr i64 %2, 59, !dbg !4638
  %or10 = or i64 %shl8, %shr9, !dbg !4639
  %and11 = and i64 %or10, 4294901775, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %and11, metadata !4619, metadata !DIExpression()), !dbg !4622
  %shl12 = shl nuw nsw i64 %and, 16, !dbg !4641
  %shr13 = lshr i64 %and, 16, !dbg !4642
  %shl12.masked = and i64 %shl12, 4294901760, !dbg !4643
  %and15 = or i64 %shl12.masked, %shr13, !dbg !4643
  call void @llvm.dbg.value(metadata i64 %and15, metadata !4620, metadata !DIExpression()), !dbg !4622
  %or16 = or i64 %and11, %conv, !dbg !4644
  call void @llvm.dbg.value(metadata i64 %or16, metadata !4619, metadata !DIExpression()), !dbg !4622
  %sub = ashr i32 %bf.load, 6, !dbg !4645
  %add = shl nsw i32 %sub, 4, !dbg !4646
  %shl19 = add nsw i32 %add, 16384, !dbg !4646
  %conv20 = sext i32 %shl19 to i64, !dbg !4647
  %or21 = or i64 %or16, %conv20, !dbg !4648
  call void @llvm.dbg.value(metadata i64 %or21, metadata !4619, metadata !DIExpression()), !dbg !4622
  br label %sw.epilog, !dbg !4649

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb3
  %image0.0 = phi i64 [ %or21, %sw.bb4 ], [ %or, %sw.bb3 ], [ 0, %entry ]
  %image1.0 = phi i64 [ %and15, %sw.bb4 ], [ 4294967295, %sw.bb3 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %image1.0, metadata !4620, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i64 %image0.0, metadata !4619, metadata !DIExpression()), !dbg !4622
  store i64 %image0.0, i64* %buf, align 8, !dbg !4650
  %arrayidx23 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !4652
  store i64 %image1.0, i64* %arrayidx23, align 8, !dbg !4653
  ret void, !dbg !4654
}

; Function Attrs: nounwind uwtable
define internal void @decode_vax_g(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4655 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4657, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4658, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4659, metadata !DIExpression()), !dbg !4663
  %0 = load i64, i64* %buf, align 8, !dbg !4664
  call void @llvm.dbg.value(metadata i64 %0, metadata !4660, metadata !DIExpression()), !dbg !4663
  %arrayidx1 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !4666
  %1 = load i64, i64* %arrayidx1, align 8, !dbg !4666
  call void @llvm.dbg.value(metadata i64 %1, metadata !4661, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i64 %0, metadata !4660, metadata !DIExpression(DW_OP_constu, 4294901760, DW_OP_and, DW_OP_stack_value)), !dbg !4663
  call void @llvm.dbg.value(metadata i64 %1, metadata !4661, metadata !DIExpression(DW_OP_constu, 4294901760, DW_OP_and, DW_OP_stack_value)), !dbg !4663
  %shr = lshr i64 %0, 4, !dbg !4667
  %2 = trunc i64 %shr to i32, !dbg !4668
  %conv = and i32 %2, 2047, !dbg !4668
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4662, metadata !DIExpression()), !dbg !4663
  %3 = bitcast %struct.real_value* %r to i8*, !dbg !4669
  %call = tail call i8* @memset(i8* %3, i32 0, i64 32) #6, !dbg !4670
  %cmp = icmp eq i32 %conv, 0, !dbg !4671
  br i1 %cmp, label %if.end, label %if.then, !dbg !4673

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4674
  %bf.load = load i32, i32* %4, align 8, !dbg !4676
  %5 = lshr i64 %0, 12, !dbg !4677
  %6 = trunc i64 %5 to i32, !dbg !4677
  %bf.shl = and i32 %6, 8, !dbg !4677
  %bf.set = and i32 %bf.load, 52, !dbg !4677
  %bf.clear9 = or i32 %bf.set, %bf.shl, !dbg !4677
  %sub = shl nuw nsw i32 %conv, 6, !dbg !4678
  %bf.shl14 = add nsw i32 %sub, -65536, !dbg !4678
  %bf.set10 = or i32 %bf.clear9, %bf.shl14, !dbg !4678
  %bf.set16 = or i32 %bf.set10, 1, !dbg !4678
  store i32 %bf.set16, i32* %4, align 8, !dbg !4678
  %and17 = shl i64 %0, 16, !dbg !4679
  %shl = and i64 %and17, 983040, !dbg !4679
  %and = lshr i64 %0, 16, !dbg !4680
  %shr18 = and i64 %and, 65535, !dbg !4680
  %or = or i64 %shl, %shr18, !dbg !4681
  call void @llvm.dbg.value(metadata i64 %or, metadata !4660, metadata !DIExpression()), !dbg !4663
  %and20 = shl i64 %1, 16, !dbg !4682
  %shl21 = and i64 %and20, 4294901760, !dbg !4682
  %and2 = lshr i64 %1, 16, !dbg !4683
  %shr22 = and i64 %and2, 65535, !dbg !4683
  %or24 = or i64 %shl21, %shr22, !dbg !4684
  call void @llvm.dbg.value(metadata i64 %or24, metadata !4661, metadata !DIExpression()), !dbg !4663
  %shl25 = shl nuw nsw i64 %or, 32, !dbg !4685
  %or27 = or i64 %shl25, %or24, !dbg !4688
  call void @llvm.dbg.value(metadata i64 %or27, metadata !4660, metadata !DIExpression()), !dbg !4663
  %shl28 = shl nuw nsw i64 %or27, 11, !dbg !4689
  call void @llvm.dbg.value(metadata i64 %shl28, metadata !4660, metadata !DIExpression()), !dbg !4663
  %or29 = or i64 %shl28, -9223372036854775808, !dbg !4690
  call void @llvm.dbg.value(metadata i64 %or29, metadata !4660, metadata !DIExpression()), !dbg !4663
  %arrayidx30 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4691
  store i64 %or29, i64* %arrayidx30, align 8, !dbg !4692
  br label %if.end, !dbg !4693

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !4694
}

; Function Attrs: nounwind uwtable
define internal void @encode_decimal_single(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4695 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4697, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4698, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4699, metadata !DIExpression()), !dbg !4700
  tail call void @encode_decimal32(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #6, !dbg !4701
  ret void, !dbg !4702
}

; Function Attrs: nounwind uwtable
define internal void @decode_decimal_single(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4703 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4705, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4706, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4707, metadata !DIExpression()), !dbg !4708
  tail call void @decode_decimal32(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #6, !dbg !4709
  ret void, !dbg !4710
}

; Function Attrs: nounwind uwtable
define internal void @encode_decimal_double(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4711 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4713, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4714, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4715, metadata !DIExpression()), !dbg !4716
  tail call void @encode_decimal64(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #6, !dbg !4717
  ret void, !dbg !4718
}

; Function Attrs: nounwind uwtable
define internal void @decode_decimal_double(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4719 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4721, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4722, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4723, metadata !DIExpression()), !dbg !4724
  tail call void @decode_decimal64(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #6, !dbg !4725
  ret void, !dbg !4726
}

; Function Attrs: nounwind uwtable
define internal void @encode_decimal_quad(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4727 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4729, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4730, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4731, metadata !DIExpression()), !dbg !4732
  tail call void @encode_decimal128(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #6, !dbg !4733
  ret void, !dbg !4734
}

; Function Attrs: nounwind uwtable
define internal void @decode_decimal_quad(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4735 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4737, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4738, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4739, metadata !DIExpression()), !dbg !4740
  tail call void @decode_decimal128(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #6, !dbg !4741
  ret void, !dbg !4742
}

; Function Attrs: nounwind uwtable
define internal void @encode_ieee_half(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4743 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4745, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4746, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4747, metadata !DIExpression()), !dbg !4753
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4754
  %bf.load = load i32, i32* %0, align 8, !dbg !4754
  call void @llvm.dbg.value(metadata i32 %bf.load, metadata !4751, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4753
  call void @llvm.dbg.value(metadata i8 undef, metadata !4752, metadata !DIExpression()), !dbg !4753
  %1 = shl i32 %bf.load, 12, !dbg !4755
  %2 = and i32 %1, 32768, !dbg !4755
  %shl = zext i32 %2 to i64, !dbg !4755
  call void @llvm.dbg.value(metadata i64 %shl, metadata !4748, metadata !DIExpression()), !dbg !4753
  %arrayidx5 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4756
  %3 = load i64, i64* %arrayidx5, align 8, !dbg !4756
  %shr = lshr i64 %3, 53, !dbg !4757
  %and6 = and i64 %shr, 1023, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %and6, metadata !4749, metadata !DIExpression()), !dbg !4753
  %bf.clear8 = and i32 %bf.load, 3, !dbg !4759
  switch i32 %bf.clear8, label %sw.default1 [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb
    i32 3, label %sw.bb10
    i32 1, label %sw.bb42
  ], !dbg !4760

sw.bb:                                            ; preds = %entry
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 12, !dbg !4761
  %4 = load i8, i8* %has_inf, align 1, !dbg !4761
  %tobool = icmp eq i8 %4, 0, !dbg !4764
  %image.0.v = select i1 %tobool, i64 32767, i64 31744, !dbg !4765
  %image.0 = or i64 %image.0.v, %shl, !dbg !4765
  br label %sw.epilog, !dbg !4765

sw.bb10:                                          ; preds = %entry
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 11, !dbg !4766
  %5 = load i8, i8* %has_nans, align 2, !dbg !4766
  %tobool11 = icmp eq i8 %5, 0, !dbg !4768
  br i1 %tobool11, label %if.else39, label %if.then12, !dbg !4769

if.then12:                                        ; preds = %sw.bb10
  %bf.clear15 = and i32 %bf.load, 32, !dbg !4770
  %tobool16 = icmp eq i32 %bf.clear15, 0, !dbg !4773
  br i1 %tobool16, label %if.end21, label %if.then17, !dbg !4774

if.then17:                                        ; preds = %if.then12
  %canonical_nan_lsbs_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 16, !dbg !4775
  %6 = load i8, i8* %canonical_nan_lsbs_set, align 1, !dbg !4775
  %tobool19 = icmp eq i8 %6, 0, !dbg !4776
  %conv20 = select i1 %tobool19, i64 0, i64 511, !dbg !4777
  call void @llvm.dbg.value(metadata i64 %conv20, metadata !4749, metadata !DIExpression()), !dbg !4753
  br label %if.end21, !dbg !4778

if.end21:                                         ; preds = %if.then12, %if.then17
  %sig.0 = phi i64 [ %conv20, %if.then17 ], [ %and6, %if.then12 ], !dbg !4753
  call void @llvm.dbg.value(metadata i64 %sig.0, metadata !4749, metadata !DIExpression()), !dbg !4753
  %bf.lshr23 = lshr i32 %bf.load, 4, !dbg !4779
  %bf.clear24 = and i32 %bf.lshr23, 1, !dbg !4779
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !4781
  %7 = load i8, i8* %qnan_msb_set, align 2, !dbg !4781
  %conv25 = zext i8 %7 to i32, !dbg !4782
  %cmp26 = icmp eq i32 %bf.clear24, %conv25, !dbg !4783
  %and29 = and i64 %sig.0, 511, !dbg !4784
  %or31 = or i64 %sig.0, 512, !dbg !4784
  %sig.1 = select i1 %cmp26, i64 %and29, i64 %or31, !dbg !4784
  call void @llvm.dbg.value(metadata i64 %sig.1, metadata !4749, metadata !DIExpression()), !dbg !4753
  %cmp33 = icmp eq i64 %sig.1, 0, !dbg !4785
  %spec.select = select i1 %cmp33, i64 256, i64 %sig.1, !dbg !4787
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !4749, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.value(metadata i64 %shl, metadata !4748, metadata !DIExpression(DW_OP_constu, 31744, DW_OP_or, DW_OP_stack_value)), !dbg !4753
  %or37 = or i64 %spec.select, %shl, !dbg !4788
  %or38 = or i64 %or37, 31744, !dbg !4788
  call void @llvm.dbg.value(metadata i64 %or38, metadata !4748, metadata !DIExpression()), !dbg !4753
  br label %sw.epilog, !dbg !4789

if.else39:                                        ; preds = %sw.bb10
  %or40 = or i64 %shl, 1023, !dbg !4790
  call void @llvm.dbg.value(metadata i64 %or40, metadata !4748, metadata !DIExpression()), !dbg !4753
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %tobool43 = icmp sgt i64 %3, -1, !dbg !4791
  br i1 %tobool43, label %if.end50, label %if.else45, !dbg !4793

if.else45:                                        ; preds = %sw.bb42
  %sub = ashr i32 %bf.load, 6, !dbg !4794
  %sub48 = add nsw i32 %sub, 14, !dbg !4795
  %conv49 = sext i32 %sub48 to i64, !dbg !4794
  call void @llvm.dbg.value(metadata i64 %conv49, metadata !4750, metadata !DIExpression()), !dbg !4753
  %phitmp = shl nsw i64 %conv49, 10
  br label %if.end50

if.end50:                                         ; preds = %sw.bb42, %if.else45
  %exp.0 = phi i64 [ %phitmp, %if.else45 ], [ 0, %sw.bb42 ]
  %or52 = or i64 %exp.0, %shl, !dbg !4796
  call void @llvm.dbg.value(metadata i64 %or52, metadata !4748, metadata !DIExpression()), !dbg !4753
  %or53 = or i64 %or52, %and6, !dbg !4797
  call void @llvm.dbg.value(metadata i64 %or53, metadata !4748, metadata !DIExpression()), !dbg !4753
  br label %sw.epilog, !dbg !4798

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %if.end21, %if.else39, %sw.bb, %if.end50, %entry
  %image.2 = phi i64 [ %or53, %if.end50 ], [ %shl, %entry ], [ %image.0, %sw.bb ], [ %or38, %if.end21 ], [ %or40, %if.else39 ], !dbg !4753
  call void @llvm.dbg.value(metadata i64 %image.2, metadata !4748, metadata !DIExpression()), !dbg !4753
  store i64 %image.2, i64* %buf, align 8, !dbg !4799
  ret void, !dbg !4800
}

; Function Attrs: nounwind uwtable
define internal void @decode_ieee_half(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4801 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4803, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4804, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4805, metadata !DIExpression()), !dbg !4809
  %0 = load i64, i64* %buf, align 8, !dbg !4810
  call void @llvm.dbg.value(metadata i64 %0, metadata !4806, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !4809
  %shr = lshr i64 %0, 15, !dbg !4811
  %shr2 = lshr i64 %0, 10, !dbg !4812
  %1 = trunc i64 %shr2 to i32, !dbg !4813
  %conv4 = and i32 %1, 31, !dbg !4813
  call void @llvm.dbg.value(metadata i32 %conv4, metadata !4808, metadata !DIExpression()), !dbg !4809
  %2 = bitcast %struct.real_value* %r to i8*, !dbg !4814
  %call = tail call i8* @memset(i8* %2, i32 0, i64 32) #6, !dbg !4815
  %shl = shl i64 %0, 53, !dbg !4816
  call void @llvm.dbg.value(metadata i64 %shl, metadata !4806, metadata !DIExpression()), !dbg !4809
  %and5 = and i64 %shl, 9214364837600034816, !dbg !4817
  call void @llvm.dbg.value(metadata i64 %and5, metadata !4806, metadata !DIExpression()), !dbg !4809
  switch i32 %conv4, label %if.else70 [
    i32 0, label %if.then
    i32 31, label %land.lhs.true31
  ], !dbg !4818

if.then:                                          ; preds = %entry
  %tobool = icmp eq i64 %and5, 0, !dbg !4819
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4823

land.lhs.true:                                    ; preds = %if.then
  %has_denorm = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 13, !dbg !4824
  %3 = load i8, i8* %has_denorm, align 8, !dbg !4824
  %tobool8 = icmp eq i8 %3, 0, !dbg !4825
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !4826

if.then9:                                         ; preds = %land.lhs.true
  %4 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4827
  %bf.load = load i32, i32* %4, align 8, !dbg !4829
  %conv1 = shl nuw nsw i64 %shr, 3, !dbg !4830
  %conv = trunc i64 %conv1 to i32, !dbg !4830
  %bf.shl = and i32 %conv, 8, !dbg !4830
  %bf.set = and i32 %bf.load, 52, !dbg !4830
  %bf.clear12 = or i32 %bf.set, %bf.shl, !dbg !4830
  %bf.set16 = or i32 %bf.clear12, -895, !dbg !4831
  store i32 %bf.set16, i32* %4, align 8, !dbg !4831
  %shl17 = shl i64 %0, 54, !dbg !4832
  %arrayidx18 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4833
  store i64 %shl17, i64* %arrayidx18, align 8, !dbg !4834
  tail call fastcc void @normalize(%struct.real_value* %r) #7, !dbg !4835
  br label %if.end89, !dbg !4836

if.else:                                          ; preds = %land.lhs.true, %if.then
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 14, !dbg !4837
  %5 = load i8, i8* %has_signed_zero, align 1, !dbg !4837
  %tobool19 = icmp eq i8 %5, 0, !dbg !4839
  br i1 %tobool19, label %if.end89, label %if.then20, !dbg !4840

if.then20:                                        ; preds = %if.else
  %6 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4841
  %bf.load22 = load i32, i32* %6, align 8, !dbg !4842
  %7 = shl nuw nsw i64 %shr, 3, !dbg !4842
  %8 = trunc i64 %7 to i32, !dbg !4842
  %9 = and i32 %8, 8, !dbg !4842
  %bf.clear25 = and i32 %bf.load22, -9, !dbg !4842
  %bf.set26 = or i32 %bf.clear25, %9, !dbg !4842
  store i32 %bf.set26, i32* %6, align 8, !dbg !4842
  br label %if.end89, !dbg !4843

land.lhs.true31:                                  ; preds = %entry
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 11, !dbg !4844
  %10 = load i8, i8* %has_nans, align 2, !dbg !4844
  %tobool33 = icmp eq i8 %10, 0, !dbg !4846
  br i1 %tobool33, label %lor.lhs.false, label %if.then36, !dbg !4847

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 12, !dbg !4848
  %11 = load i8, i8* %has_inf, align 1, !dbg !4848
  %tobool35 = icmp eq i8 %11, 0, !dbg !4849
  br i1 %tobool35, label %if.else70, label %if.then36, !dbg !4850

if.then36:                                        ; preds = %lor.lhs.false, %land.lhs.true31
  %tobool37 = icmp eq i64 %and5, 0, !dbg !4851
  %12 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4854
  %bf.load39 = load i32, i32* %12, align 8, !dbg !4854
  br i1 %tobool37, label %if.else59, label %if.then38, !dbg !4855

if.then38:                                        ; preds = %if.then36
  %13 = shl nuw nsw i64 %shr, 3, !dbg !4856
  %14 = trunc i64 %13 to i32, !dbg !4856
  %15 = and i32 %14, 8, !dbg !4856
  %bf.set41 = and i32 %bf.load39, -12, !dbg !4856
  %bf.clear46 = or i32 %bf.set41, %15, !dbg !4856
  %bf.set47 = or i32 %bf.clear46, 3, !dbg !4856
  store i32 %bf.set47, i32* %12, align 8, !dbg !4856
  %16 = lshr i64 %0, 9, !dbg !4858
  %shr48 = and i64 %16, 1, !dbg !4858
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !4859
  %17 = load i8, i8* %qnan_msb_set, align 2, !dbg !4859
  %conv50 = zext i8 %17 to i64, !dbg !4860
  %xor = xor i64 %shr48, %conv50, !dbg !4861
  %conv51 = trunc i64 %xor to i32, !dbg !4862
  %bf.value53 = shl nuw nsw i32 %conv51, 4, !dbg !4863
  %bf.shl54 = and i32 %bf.value53, 16, !dbg !4863
  %bf.clear55 = and i32 %bf.set47, -17, !dbg !4863
  %bf.set56 = or i32 %bf.clear55, %bf.shl54, !dbg !4863
  store i32 %bf.set56, i32* %12, align 8, !dbg !4863
  %arrayidx58 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4864
  store i64 %and5, i64* %arrayidx58, align 8, !dbg !4865
  br label %if.end89, !dbg !4866

if.else59:                                        ; preds = %if.then36
  %18 = shl nuw nsw i64 %shr, 3, !dbg !4867
  %19 = trunc i64 %18 to i32, !dbg !4867
  %20 = and i32 %19, 8, !dbg !4867
  %bf.set62 = and i32 %bf.load39, -12, !dbg !4867
  %bf.clear67 = or i32 %bf.set62, %20, !dbg !4867
  %bf.set68 = or i32 %bf.clear67, 2, !dbg !4867
  store i32 %bf.set68, i32* %12, align 8, !dbg !4867
  br label %if.end89

if.else70:                                        ; preds = %lor.lhs.false, %entry
  %21 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !4869
  %bf.load71 = load i32, i32* %21, align 8, !dbg !4871
  %22 = shl nuw nsw i64 %shr, 3, !dbg !4872
  %23 = trunc i64 %22 to i32, !dbg !4872
  %24 = and i32 %23, 8, !dbg !4872
  %bf.set73 = and i32 %bf.load71, 52, !dbg !4872
  %bf.clear78 = or i32 %bf.set73, %24, !dbg !4872
  %add = shl nuw nsw i32 %conv4, 6, !dbg !4873
  %bf.shl83 = add nsw i32 %add, -896, !dbg !4873
  %bf.set79 = or i32 %bf.clear78, %bf.shl83, !dbg !4873
  %bf.set85 = or i32 %bf.set79, 1, !dbg !4873
  store i32 %bf.set85, i32* %21, align 8, !dbg !4873
  %or = or i64 %shl, -9223372036854775808, !dbg !4874
  %arrayidx87 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !4875
  store i64 %or, i64* %arrayidx87, align 8, !dbg !4876
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.else70, %if.else59, %if.then38, %if.then9, %if.then20
  ret void, !dbg !4877
}

; Function Attrs: nounwind uwtable
define internal void @encode_internal(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) #5 !dbg !4878 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4880, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4881, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4882, metadata !DIExpression()), !dbg !4883
  %0 = bitcast i64* %buf to i8*, !dbg !4884
  %1 = bitcast %struct.real_value* %r to i8*, !dbg !4885
  %call = tail call i8* @memcpy(i8* %0, i8* %1, i64 32) #6, !dbg !4886
  ret void, !dbg !4887
}

; Function Attrs: nounwind uwtable
define internal void @decode_internal(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) #5 !dbg !4888 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !4890, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4891, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i64* %buf, metadata !4892, metadata !DIExpression()), !dbg !4893
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !4894
  %1 = bitcast i64* %buf to i8*, !dbg !4895
  %call = tail call i8* @memcpy(i8* %0, i8* %1, i64 32) #6, !dbg !4896
  ret void, !dbg !4897
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_sqrt(%struct.real_value* %r, i32 %mode, %struct.real_value* %x) local_unnamed_addr #5 !dbg !475 {
entry:
  %h = alloca %struct.real_value, align 8
  %t = alloca %struct.real_value, align 8
  %i = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !479, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 %mode, metadata !480, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %x, metadata !481, metadata !DIExpression()), !dbg !4898
  %0 = bitcast %struct.real_value* %h to i8*, !dbg !4899
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4899
  %1 = bitcast %struct.real_value* %t to i8*, !dbg !4899
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4899
  %2 = bitcast %struct.real_value* %i to i8*, !dbg !4899
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #8, !dbg !4899
  %call = tail call zeroext i8 @real_isnegzero(%struct.real_value* %x) #7, !dbg !4900
  %tobool = icmp eq i8 %call, 0, !dbg !4900
  br i1 %tobool, label %if.end, label %if.then, !dbg !4902

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.real_value* %r to i8*, !dbg !4903
  %4 = bitcast %struct.real_value* %x to i8*, !dbg !4903
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 32, i1 false), !dbg !4903
  br label %cleanup, !dbg !4905

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i8 @real_isneg(%struct.real_value* %x) #7, !dbg !4906
  %tobool2 = icmp eq i8 %call1, 0, !dbg !4906
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4908

if.then3:                                         ; preds = %if.end
  tail call fastcc void @get_canonical_qnan(%struct.real_value* %r, i32 0) #7, !dbg !4909
  br label %cleanup, !dbg !4911

if.end4:                                          ; preds = %if.end
  %call5 = tail call zeroext i8 @real_isfinite(%struct.real_value* %x) #7, !dbg !4912
  %tobool6 = icmp eq i8 %call5, 0, !dbg !4912
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4914

if.then7:                                         ; preds = %if.end4
  %5 = bitcast %struct.real_value* %r to i8*, !dbg !4915
  %6 = bitcast %struct.real_value* %x to i8*, !dbg !4915
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 32, i1 false), !dbg !4915
  br label %cleanup, !dbg !4917

if.end8:                                          ; preds = %if.end4
  %.b = load i1, i1* @real_sqrt.init, align 1, !dbg !4918
  br i1 %.b, label %if.end12, label %if.then10, !dbg !4920

if.then10:                                        ; preds = %if.end8
  %call11 = tail call fastcc zeroext i8 @do_add(%struct.real_value* nonnull @real_sqrt.halfthree, %struct.real_value* nonnull @dconst1, %struct.real_value* nonnull @dconsthalf, i32 0) #7, !dbg !4921
  store i1 true, i1* @real_sqrt.init, align 1, !dbg !4923
  br label %if.end12, !dbg !4924

if.end12:                                         ; preds = %if.end8, %if.then10
  %call13 = tail call i32 @real_exponent(%struct.real_value* %x) #7, !dbg !4925
  call void @llvm.dbg.value(metadata i32 %call13, metadata !486, metadata !DIExpression()), !dbg !4898
  %div = sdiv i32 %call13, -2, !dbg !4926
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @real_ldexp(%struct.real_value* nonnull %i, %struct.real_value* nonnull @dconst1, i32 %div) #7, !dbg !4927
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !4898
  br label %for.cond, !dbg !4928

for.cond:                                         ; preds = %if.end23, %if.end12
  %iter.0 = phi i32 [ 0, %if.end12 ], [ %inc, %if.end23 ], !dbg !4930
  call void @llvm.dbg.value(metadata i32 %iter.0, metadata !485, metadata !DIExpression()), !dbg !4898
  %exitcond = icmp eq i32 %iter.0, 16, !dbg !4931
  br i1 %exitcond, label %for.end, label %for.body, !dbg !4933

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !483, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call14 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %t, %struct.real_value* %x, %struct.real_value* nonnull %i) #7, !dbg !4934
  call void @llvm.dbg.value(metadata %struct.real_value* %h, metadata !482, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !483, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call15 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %h, %struct.real_value* nonnull %t, %struct.real_value* nonnull %i) #7, !dbg !4936
  call void @llvm.dbg.value(metadata %struct.real_value* %h, metadata !482, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !483, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call16 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %t, %struct.real_value* nonnull %h, %struct.real_value* nonnull @dconsthalf) #7, !dbg !4937
  call void @llvm.dbg.value(metadata %struct.real_value* %h, metadata !482, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !483, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call17 = call fastcc zeroext i8 @do_add(%struct.real_value* nonnull %h, %struct.real_value* nonnull @real_sqrt.halfthree, %struct.real_value* nonnull %t, i32 1) #7, !dbg !4938
  call void @llvm.dbg.value(metadata %struct.real_value* %h, metadata !482, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !483, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call18 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %t, %struct.real_value* nonnull %i, %struct.real_value* nonnull %h) #7, !dbg !4939
  %cmp19 = icmp ugt i32 %iter.0, 5, !dbg !4940
  br i1 %cmp19, label %land.lhs.true, label %if.end23, !dbg !4942

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !483, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call20 = call zeroext i8 @real_identical(%struct.real_value* nonnull %i, %struct.real_value* nonnull %t) #7, !dbg !4943
  %tobool21 = icmp eq i8 %call20, 0, !dbg !4943
  br i1 %tobool21, label %if.end23, label %for.end, !dbg !4944

if.end23:                                         ; preds = %land.lhs.true, %for.body
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %1, i64 32, i1 false), !dbg !4945
  %inc = add nuw nsw i32 %iter.0, 1, !dbg !4946
  call void @llvm.dbg.value(metadata i32 %inc, metadata !485, metadata !DIExpression()), !dbg !4898
  br label %for.cond, !dbg !4947, !llvm.loop !4948

for.end:                                          ; preds = %for.cond, %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !483, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call24 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %t, %struct.real_value* %x, %struct.real_value* nonnull %i) #7, !dbg !4950
  call void @llvm.dbg.value(metadata %struct.real_value* %h, metadata !482, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !483, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call25 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %h, %struct.real_value* nonnull %t, %struct.real_value* nonnull %i) #7, !dbg !4951
  call void @llvm.dbg.value(metadata %struct.real_value* %h, metadata !482, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call26 = call fastcc zeroext i8 @do_add(%struct.real_value* nonnull %i, %struct.real_value* nonnull @dconst1, %struct.real_value* nonnull %h, i32 1) #7, !dbg !4952
  call void @llvm.dbg.value(metadata %struct.real_value* %h, metadata !482, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !483, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call27 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %h, %struct.real_value* nonnull %t, %struct.real_value* nonnull %i) #7, !dbg !4953
  call void @llvm.dbg.value(metadata %struct.real_value* %h, metadata !482, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call28 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %i, %struct.real_value* nonnull @dconsthalf, %struct.real_value* nonnull %h) #7, !dbg !4954
  call void @llvm.dbg.value(metadata %struct.real_value* %h, metadata !482, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !483, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @llvm.dbg.value(metadata %struct.real_value* %i, metadata !484, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  %call29 = call fastcc zeroext i8 @do_add(%struct.real_value* nonnull %h, %struct.real_value* nonnull %t, %struct.real_value* nonnull %i, i32 0) #7, !dbg !4955
  call void @llvm.dbg.value(metadata %struct.real_value* %h, metadata !482, metadata !DIExpression(DW_OP_deref)), !dbg !4898
  call void @real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* nonnull %h) #7, !dbg !4956
  br label %cleanup, !dbg !4957

cleanup:                                          ; preds = %for.end, %if.then7, %if.then3, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %for.end ], [ 0, %if.then7 ], !dbg !4898
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #8, !dbg !4958
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4958
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4958
  ret i8 %retval.0, !dbg !4958
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_powi(%struct.real_value* %r, i32 %mode, %struct.real_value* %x, i64 %n) local_unnamed_addr #5 !dbg !4959 {
entry:
  %t = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !4963, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4964, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata %struct.real_value* %x, metadata !4965, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i64 %n, metadata !4966, metadata !DIExpression()), !dbg !4973
  %0 = bitcast %struct.real_value* %t to i8*, !dbg !4974
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4974
  call void @llvm.dbg.value(metadata i8 0, metadata !4969, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i8 0, metadata !4970, metadata !DIExpression()), !dbg !4973
  %cmp = icmp eq i64 %n, 0, !dbg !4975
  br i1 %cmp, label %if.then, label %if.else, !dbg !4977

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.real_value* %r to i8*, !dbg !4978
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct.real_value* @dconst1 to i8*), i64 32, i1 false), !dbg !4978
  br label %cleanup, !dbg !4980

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %n, 0, !dbg !4981
  %sub = sub nsw i64 0, %n, !dbg !4983
  %n.addr.0 = select i1 %cmp1, i64 %sub, i64 %n, !dbg !4983
  call void @llvm.dbg.value(metadata i64 %n.addr.0, metadata !4966, metadata !DIExpression()), !dbg !4973
  %2 = bitcast %struct.real_value* %x to i8*, !dbg !4984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %2, i64 32, i1 false), !dbg !4984
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !4967, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i32 0, metadata !4972, metadata !DIExpression()), !dbg !4973
  br label %for.cond, !dbg !4985

for.cond:                                         ; preds = %if.end22, %if.else
  %init.0 = phi i8 [ 0, %if.else ], [ %init.2, %if.end22 ], !dbg !4987
  %inexact.0 = phi i8 [ 0, %if.else ], [ %inexact.2, %if.end22 ], !dbg !4973
  %bit.0 = phi i64 [ -9223372036854775808, %if.else ], [ %shr, %if.end22 ], !dbg !4973
  %i.0 = phi i32 [ 0, %if.else ], [ %inc, %if.end22 ], !dbg !4988
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4972, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i64 %bit.0, metadata !4967, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i8 %inexact.0, metadata !4969, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i8 %init.0, metadata !4970, metadata !DIExpression()), !dbg !4973
  %exitcond = icmp eq i32 %i.0, 64, !dbg !4989
  br i1 %exitcond, label %for.end, label %for.body, !dbg !4991

for.body:                                         ; preds = %for.cond
  %tobool = icmp eq i8 %init.0, 0, !dbg !4992
  br i1 %tobool, label %if.else17, label %if.then6, !dbg !4995

if.then6:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !4968, metadata !DIExpression(DW_OP_deref)), !dbg !4973
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !4968, metadata !DIExpression(DW_OP_deref)), !dbg !4973
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !4968, metadata !DIExpression(DW_OP_deref)), !dbg !4973
  %call = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %t, %struct.real_value* nonnull %t, %struct.real_value* nonnull %t) #7, !dbg !4996
  %or2 = or i8 %inexact.0, %call, !dbg !4998
  call void @llvm.dbg.value(metadata i8 %or2, metadata !4969, metadata !DIExpression()), !dbg !4973
  %and = and i64 %n.addr.0, %bit.0, !dbg !4999
  %tobool9 = icmp eq i64 %and, 0, !dbg !4999
  br i1 %tobool9, label %if.end22, label %if.then10, !dbg !5001

if.then10:                                        ; preds = %if.then6
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !4968, metadata !DIExpression(DW_OP_deref)), !dbg !4973
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !4968, metadata !DIExpression(DW_OP_deref)), !dbg !4973
  %call11 = call fastcc zeroext i8 @do_multiply(%struct.real_value* nonnull %t, %struct.real_value* nonnull %t, %struct.real_value* %x) #7, !dbg !5002
  %or143 = or i8 %or2, %call11, !dbg !5003
  call void @llvm.dbg.value(metadata i8 %or143, metadata !4969, metadata !DIExpression()), !dbg !4973
  br label %if.end22, !dbg !5004

if.else17:                                        ; preds = %for.body
  %and18 = and i64 %n.addr.0, %bit.0, !dbg !5005
  %tobool19 = icmp ne i64 %and18, 0, !dbg !5005
  %spec.select = zext i1 %tobool19 to i8, !dbg !5007
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !4970, metadata !DIExpression()), !dbg !4973
  br label %if.end22

if.end22:                                         ; preds = %if.then6, %if.then10, %if.else17
  %init.2 = phi i8 [ %spec.select, %if.else17 ], [ %init.0, %if.then10 ], [ %init.0, %if.then6 ], !dbg !4973
  %inexact.2 = phi i8 [ %inexact.0, %if.else17 ], [ %or143, %if.then10 ], [ %or2, %if.then6 ], !dbg !4973
  call void @llvm.dbg.value(metadata i8 %inexact.2, metadata !4969, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i8 %init.2, metadata !4970, metadata !DIExpression()), !dbg !4973
  %shr = lshr i64 %bit.0, 1, !dbg !5008
  call void @llvm.dbg.value(metadata i64 %shr, metadata !4967, metadata !DIExpression()), !dbg !4973
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5009
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4972, metadata !DIExpression()), !dbg !4973
  br label %for.cond, !dbg !5010, !llvm.loop !5011

for.end:                                          ; preds = %for.cond
  %inexact.0.lcssa = phi i8 [ %inexact.0, %for.cond ], !dbg !4973
  call void @llvm.dbg.value(metadata i8 %inexact.0.lcssa, metadata !4969, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i8 %inexact.0.lcssa, metadata !4969, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i8 %inexact.0.lcssa, metadata !4969, metadata !DIExpression()), !dbg !4973
  br i1 %cmp1, label %if.then24, label %if.end30, !dbg !5013

if.then24:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !4968, metadata !DIExpression(DW_OP_deref)), !dbg !4973
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !4968, metadata !DIExpression(DW_OP_deref)), !dbg !4973
  %call25 = call fastcc zeroext i8 @do_divide(%struct.real_value* nonnull %t, %struct.real_value* nonnull @dconst1, %struct.real_value* nonnull %t) #7, !dbg !5014
  %or281 = or i8 %inexact.0.lcssa, %call25, !dbg !5016
  call void @llvm.dbg.value(metadata i8 %or281, metadata !4969, metadata !DIExpression()), !dbg !4973
  br label %if.end30, !dbg !5017

if.end30:                                         ; preds = %if.then24, %for.end
  %inexact.3 = phi i8 [ %or281, %if.then24 ], [ %inexact.0.lcssa, %for.end ], !dbg !4973
  call void @llvm.dbg.value(metadata i8 %inexact.3, metadata !4969, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !4968, metadata !DIExpression(DW_OP_deref)), !dbg !4973
  call void @real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* nonnull %t) #7, !dbg !5018
  br label %cleanup, !dbg !5019

cleanup:                                          ; preds = %if.end30, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ %inexact.3, %if.end30 ], !dbg !4973
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5020
  ret i8 %retval.0, !dbg !5020
}

; Function Attrs: nounwind uwtable
define dso_local void @real_trunc(%struct.real_value* %r, i32 %mode, %struct.real_value* %x) local_unnamed_addr #5 !dbg !5021 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5023, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata i32 %mode, metadata !5024, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata %struct.real_value* %x, metadata !5025, metadata !DIExpression()), !dbg !5026
  tail call fastcc void @do_fix_trunc(%struct.real_value* %r, %struct.real_value* %x) #7, !dbg !5027
  %cmp = icmp eq i32 %mode, 0, !dbg !5028
  br i1 %cmp, label %if.end, label %if.then, !dbg !5030

if.then:                                          ; preds = %entry
  tail call void @real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* %r) #7, !dbg !5031
  br label %if.end, !dbg !5031

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !5032
}

; Function Attrs: nounwind uwtable
define dso_local void @real_floor(%struct.real_value* %r, i32 %mode, %struct.real_value* %x) local_unnamed_addr #5 !dbg !5033 {
entry:
  %t = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5035, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.value(metadata i32 %mode, metadata !5036, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.value(metadata %struct.real_value* %x, metadata !5037, metadata !DIExpression()), !dbg !5039
  %0 = bitcast %struct.real_value* %t to i8*, !dbg !5040
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5040
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !5038, metadata !DIExpression(DW_OP_deref)), !dbg !5039
  call fastcc void @do_fix_trunc(%struct.real_value* nonnull %t, %struct.real_value* %x) #7, !dbg !5041
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !5038, metadata !DIExpression(DW_OP_deref)), !dbg !5039
  %call = call zeroext i8 @real_identical(%struct.real_value* nonnull %t, %struct.real_value* %x) #7, !dbg !5042
  %tobool = icmp eq i8 %call, 0, !dbg !5042
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5044

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %x, i64 0, i32 0, !dbg !5045
  %bf.load = load i32, i32* %1, align 8, !dbg !5045
  %bf.clear = and i32 %bf.load, 8, !dbg !5045
  %tobool1 = icmp eq i32 %bf.clear, 0, !dbg !5046
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5047

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !5038, metadata !DIExpression(DW_OP_deref)), !dbg !5039
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !5038, metadata !DIExpression(DW_OP_deref)), !dbg !5039
  %call2 = call fastcc zeroext i8 @do_add(%struct.real_value* nonnull %t, %struct.real_value* nonnull %t, %struct.real_value* nonnull @dconstm1, i32 0) #7, !dbg !5048
  br label %if.end, !dbg !5048

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %cmp = icmp eq i32 %mode, 0, !dbg !5049
  br i1 %cmp, label %if.else, label %if.then3, !dbg !5051

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !5038, metadata !DIExpression(DW_OP_deref)), !dbg !5039
  call void @real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* nonnull %t) #7, !dbg !5052
  br label %if.end4, !dbg !5052

if.else:                                          ; preds = %if.end
  %2 = bitcast %struct.real_value* %r to i8*, !dbg !5053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* nonnull align 8 %0, i64 32, i1 false), !dbg !5053
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5054
  ret void, !dbg !5054
}

; Function Attrs: nounwind uwtable
define dso_local void @real_ceil(%struct.real_value* %r, i32 %mode, %struct.real_value* %x) local_unnamed_addr #5 !dbg !5055 {
entry:
  %t = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5057, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.value(metadata i32 %mode, metadata !5058, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.value(metadata %struct.real_value* %x, metadata !5059, metadata !DIExpression()), !dbg !5061
  %0 = bitcast %struct.real_value* %t to i8*, !dbg !5062
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5062
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !5060, metadata !DIExpression(DW_OP_deref)), !dbg !5061
  call fastcc void @do_fix_trunc(%struct.real_value* nonnull %t, %struct.real_value* %x) #7, !dbg !5063
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !5060, metadata !DIExpression(DW_OP_deref)), !dbg !5061
  %call = call zeroext i8 @real_identical(%struct.real_value* nonnull %t, %struct.real_value* %x) #7, !dbg !5064
  %tobool = icmp eq i8 %call, 0, !dbg !5064
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5066

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %x, i64 0, i32 0, !dbg !5067
  %bf.load = load i32, i32* %1, align 8, !dbg !5067
  %bf.clear = and i32 %bf.load, 8, !dbg !5067
  %tobool1 = icmp eq i32 %bf.clear, 0, !dbg !5068
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5069

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !5060, metadata !DIExpression(DW_OP_deref)), !dbg !5061
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !5060, metadata !DIExpression(DW_OP_deref)), !dbg !5061
  %call2 = call fastcc zeroext i8 @do_add(%struct.real_value* nonnull %t, %struct.real_value* nonnull %t, %struct.real_value* nonnull @dconst1, i32 0) #7, !dbg !5070
  br label %if.end, !dbg !5070

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %cmp = icmp eq i32 %mode, 0, !dbg !5071
  br i1 %cmp, label %if.else, label %if.then3, !dbg !5073

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.real_value* %t, metadata !5060, metadata !DIExpression(DW_OP_deref)), !dbg !5061
  call void @real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* nonnull %t) #7, !dbg !5074
  br label %if.end4, !dbg !5074

if.else:                                          ; preds = %if.end
  %2 = bitcast %struct.real_value* %r to i8*, !dbg !5075
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* nonnull align 8 %0, i64 32, i1 false), !dbg !5075
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5076
  ret void, !dbg !5076
}

; Function Attrs: nounwind uwtable
define dso_local void @real_round(%struct.real_value* %r, i32 %mode, %struct.real_value* %x) local_unnamed_addr #5 !dbg !5077 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5079, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 %mode, metadata !5080, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata %struct.real_value* %x, metadata !5081, metadata !DIExpression()), !dbg !5082
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %x, i64 0, i32 0, !dbg !5083
  %bf.load = load i32, i32* %0, align 8, !dbg !5083
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !5083
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5083
  %call = tail call fastcc zeroext i8 @do_add(%struct.real_value* %r, %struct.real_value* %x, %struct.real_value* nonnull @dconsthalf, i32 %bf.clear) #7, !dbg !5084
  tail call fastcc void @do_fix_trunc(%struct.real_value* %r, %struct.real_value* %r) #7, !dbg !5085
  %cmp = icmp eq i32 %mode, 0, !dbg !5086
  br i1 %cmp, label %if.end, label %if.then, !dbg !5088

if.then:                                          ; preds = %entry
  tail call void @real_convert(%struct.real_value* %r, i32 %mode, %struct.real_value* %r) #7, !dbg !5089
  br label %if.end, !dbg !5089

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !5090
}

; Function Attrs: nounwind uwtable
define dso_local void @real_copysign(%struct.real_value* %r, %struct.real_value* %x) local_unnamed_addr #5 !dbg !5091 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5093, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.value(metadata %struct.real_value* %x, metadata !5094, metadata !DIExpression()), !dbg !5095
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %x, i64 0, i32 0, !dbg !5096
  %bf.load = load i32, i32* %0, align 8, !dbg !5096
  %bf.clear = and i32 %bf.load, 8, !dbg !5096
  %1 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !5097
  %bf.load1 = load i32, i32* %1, align 8, !dbg !5098
  %bf.clear2 = and i32 %bf.load1, -9, !dbg !5098
  %bf.set = or i32 %bf.clear2, %bf.clear, !dbg !5098
  store i32 %bf.set, i32* %1, align 8, !dbg !5098
  ret void, !dbg !5099
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @real_isinteger(%struct.real_value* %c, i32 %mode) local_unnamed_addr #5 !dbg !5100 {
entry:
  %cint = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %c, metadata !5104, metadata !DIExpression()), !dbg !5107
  call void @llvm.dbg.value(metadata i32 %mode, metadata !5105, metadata !DIExpression()), !dbg !5107
  %0 = bitcast %struct.real_value* %cint to i8*, !dbg !5108
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5108
  call void @llvm.dbg.value(metadata %struct.real_value* %cint, metadata !5106, metadata !DIExpression(DW_OP_deref)), !dbg !5107
  call void @real_trunc(%struct.real_value* nonnull %cint, i32 %mode, %struct.real_value* %c) #7, !dbg !5109
  call void @llvm.dbg.value(metadata %struct.real_value* %cint, metadata !5106, metadata !DIExpression(DW_OP_deref)), !dbg !5107
  %call = call zeroext i8 @real_identical(%struct.real_value* %c, %struct.real_value* nonnull %cint) #7, !dbg !5110
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5111
  ret i8 %call, !dbg !5112
}

; Function Attrs: nounwind uwtable
define dso_local void @get_max_float(%struct.real_format* %fmt, i8* %buf, i64 %len) local_unnamed_addr #5 !dbg !5113 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !5117, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.value(metadata i8* %buf, metadata !5118, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.value(metadata i64 %len, metadata !5119, metadata !DIExpression()), !dbg !5123
  %call = tail call i8* @strcpy(i8* %buf, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !5124
  %p1 = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 3, !dbg !5125
  %0 = load i32, i32* %p1, align 4, !dbg !5125
  call void @llvm.dbg.value(metadata i32 %0, metadata !5121, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.value(metadata i32 0, metadata !5120, metadata !DIExpression()), !dbg !5123
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 4, !dbg !5126
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !5122, metadata !DIExpression()), !dbg !5123
  br label %for.cond, !dbg !5128

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add2, %for.body ], !dbg !5129
  %p.0 = phi i8* [ %add.ptr, %entry ], [ %incdec.ptr, %for.body ], !dbg !5129
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !5122, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !5120, metadata !DIExpression()), !dbg !5123
  %add = or i32 %i.0, 3, !dbg !5130
  %cmp = icmp slt i32 %add, %0, !dbg !5132
  br i1 %cmp, label %for.body, label %for.end, !dbg !5133

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !5134
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !5122, metadata !DIExpression()), !dbg !5123
  store i8 102, i8* %p.0, align 1, !dbg !5135
  %add2 = add nuw nsw i32 %i.0, 4, !dbg !5136
  call void @llvm.dbg.value(metadata i32 %add2, metadata !5120, metadata !DIExpression()), !dbg !5123
  br label %for.cond, !dbg !5137, !llvm.loop !5138

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !5129
  %p.0.lcssa = phi i8* [ %p.0, %for.cond ], !dbg !5129
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !5120, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !5122, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !5120, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !5122, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !5120, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !5122, metadata !DIExpression()), !dbg !5123
  %cmp3 = icmp sgt i32 %0, %i.0.lcssa, !dbg !5140
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5142

if.then:                                          ; preds = %for.end
  %sub = sub nsw i32 %0, %i.0.lcssa, !dbg !5143
  %idxprom = sext i32 %sub to i64, !dbg !5144
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @.str.15, i64 0, i64 %idxprom, !dbg !5144
  %1 = load i8, i8* %arrayidx, align 1, !dbg !5144
  %incdec.ptr4 = getelementptr inbounds i8, i8* %p.0.lcssa, i64 1, !dbg !5145
  call void @llvm.dbg.value(metadata i8* %incdec.ptr4, metadata !5122, metadata !DIExpression()), !dbg !5123
  store i8 %1, i8* %p.0.lcssa, align 1, !dbg !5146
  br label %if.end, !dbg !5147

if.end:                                           ; preds = %if.then, %for.end
  %p.1 = phi i8* [ %incdec.ptr4, %if.then ], [ %p.0.lcssa, %for.end ], !dbg !5123
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !5122, metadata !DIExpression()), !dbg !5123
  %emax = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 6, !dbg !5148
  %2 = load i32, i32* %emax, align 8, !dbg !5148
  %call5 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %p.1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %2) #6, !dbg !5149
  %pnan = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 4, !dbg !5150
  %3 = load i32, i32* %pnan, align 8, !dbg !5150
  %4 = load i32, i32* %p1, align 4, !dbg !5152
  %cmp7 = icmp slt i32 %3, %4, !dbg !5153
  br i1 %cmp7, label %if.then8, label %if.end16, !dbg !5154

if.then8:                                         ; preds = %if.end
  %rem = srem i32 %3, 4, !dbg !5155
  %idxprom10 = sext i32 %rem to i64, !dbg !5157
  %arrayidx11 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.17, i64 0, i64 %idxprom10, !dbg !5157
  %5 = load i8, i8* %arrayidx11, align 1, !dbg !5157
  %div = sdiv i32 %3, 4, !dbg !5158
  %add13 = add nsw i32 %div, 4, !dbg !5159
  %idxprom14 = sext i32 %add13 to i64, !dbg !5160
  %arrayidx15 = getelementptr inbounds i8, i8* %buf, i64 %idxprom14, !dbg !5160
  store i8 %5, i8* %arrayidx15, align 1, !dbg !5161
  br label %if.end16, !dbg !5162

if.end16:                                         ; preds = %if.then8, %if.end
  %call17 = tail call i64 @strlen(i8* %buf) #6, !dbg !5163
  %cmp18 = icmp ult i64 %call17, %len, !dbg !5163
  br i1 %cmp18, label %cond.end, label %cond.true, !dbg !5163

cond.true:                                        ; preds = %if.end16
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 5174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5163
  br label %cond.end, !dbg !5163

cond.end:                                         ; preds = %if.end16, %cond.true
  ret void, !dbg !5164
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @sticky_rshift_significand(%struct.real_value* %r, %struct.real_value* %a, i32 %n) unnamed_addr #5 !dbg !5165 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5169, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !5170, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i32 %n, metadata !5171, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i64 0, metadata !5172, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i32 0, metadata !5174, metadata !DIExpression()), !dbg !5175
  %cmp = icmp ugt i32 %n, 63, !dbg !5176
  br i1 %cmp, label %if.then, label %if.end, !dbg !5178

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !5173, metadata !DIExpression()), !dbg !5175
  %div = lshr i32 %n, 6, !dbg !5179
  call void @llvm.dbg.value(metadata i32 %div, metadata !5174, metadata !DIExpression()), !dbg !5175
  %wide.trip.count = zext i32 %div to i64, !dbg !5182
  br label %for.cond, !dbg !5184

for.cond:                                         ; preds = %for.body, %if.then
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.body ], [ 0, %if.then ], !dbg !5175
  %sticky.0 = phi i64 [ %or, %for.body ], [ 0, %if.then ], !dbg !5175
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !5173, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i64 %sticky.0, metadata !5172, metadata !DIExpression()), !dbg !5175
  %exitcond12 = icmp eq i64 %indvars.iv10, %wide.trip.count, !dbg !5182
  br i1 %exitcond12, label %for.end, label %for.body, !dbg !5185

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %indvars.iv10, !dbg !5186
  %0 = load i64, i64* %arrayidx, align 8, !dbg !5186
  %or = or i64 %sticky.0, %0, !dbg !5187
  call void @llvm.dbg.value(metadata i64 %or, metadata !5172, metadata !DIExpression()), !dbg !5175
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !5188
  call void @llvm.dbg.value(metadata i32 undef, metadata !5173, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5175
  br label %for.cond, !dbg !5189, !llvm.loop !5190

for.end:                                          ; preds = %for.cond
  %sticky.0.lcssa = phi i64 [ %sticky.0, %for.cond ], !dbg !5175
  call void @llvm.dbg.value(metadata i64 %sticky.0.lcssa, metadata !5172, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i64 %sticky.0.lcssa, metadata !5172, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i64 %sticky.0.lcssa, metadata !5172, metadata !DIExpression()), !dbg !5175
  %and = and i32 %n, 63, !dbg !5192
  call void @llvm.dbg.value(metadata i32 %and, metadata !5171, metadata !DIExpression()), !dbg !5175
  %phitmp = zext i32 %div to i64, !dbg !5193
  br label %if.end, !dbg !5193

if.end:                                           ; preds = %for.end, %entry
  %sticky.1 = phi i64 [ %sticky.0.lcssa, %for.end ], [ 0, %entry ], !dbg !5194
  %n.addr.0 = phi i32 [ %and, %for.end ], [ %n, %entry ]
  %ofs.0 = phi i64 [ %phitmp, %for.end ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !5171, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i64 %sticky.1, metadata !5172, metadata !DIExpression()), !dbg !5175
  %cmp2 = icmp eq i32 %n.addr.0, 0, !dbg !5195
  br i1 %cmp2, label %for.cond40.preheader, label %if.then3, !dbg !5197

for.cond40.preheader:                             ; preds = %if.end
  br label %for.cond40, !dbg !5198

if.then3:                                         ; preds = %if.end
  %arrayidx6 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %ofs.0, !dbg !5201
  %1 = load i64, i64* %arrayidx6, align 8, !dbg !5201
  %sh_prom = zext i32 %n.addr.0 to i64, !dbg !5203
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !5204
  %sub = xor i64 %notmask, -1, !dbg !5204
  call void @llvm.dbg.value(metadata i64 %or8, metadata !5172, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i32 0, metadata !5173, metadata !DIExpression()), !dbg !5175
  %sub30 = sub i32 64, %n.addr.0, !dbg !5205
  %sh_prom31 = zext i32 %sub30 to i64, !dbg !5205
  br label %for.cond9, !dbg !5209

for.cond9:                                        ; preds = %cond.end28, %if.then3
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %cond.end28 ], [ 0, %if.then3 ], !dbg !5210
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !5173, metadata !DIExpression()), !dbg !5175
  %exitcond9 = icmp eq i64 %indvars.iv5, 3, !dbg !5211
  br i1 %exitcond9, label %if.end63.loopexit1, label %for.body11, !dbg !5212

for.body11:                                       ; preds = %for.cond9
  %2 = add nuw nsw i64 %ofs.0, %indvars.iv5, !dbg !5213
  %cmp12 = icmp ugt i64 %2, 2, !dbg !5214
  br i1 %cmp12, label %cond.end, label %cond.false, !dbg !5215

cond.false:                                       ; preds = %for.body11
  %arrayidx16 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %2, !dbg !5216
  %3 = load i64, i64* %arrayidx16, align 8, !dbg !5216
  br label %cond.end, !dbg !5215

cond.end:                                         ; preds = %for.body11, %cond.false
  %cond = phi i64 [ %3, %cond.false ], [ 0, %for.body11 ], !dbg !5215
  %shr = lshr i64 %cond, %sh_prom, !dbg !5217
  %cmp20 = icmp ugt i64 %2, 1, !dbg !5218
  br i1 %cmp20, label %cond.end28, label %cond.false22, !dbg !5219

cond.false22:                                     ; preds = %cond.end
  %4 = add nuw nsw i64 %2, 1, !dbg !5220
  %arrayidx27 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %4, !dbg !5221
  %5 = load i64, i64* %arrayidx27, align 8, !dbg !5221
  br label %cond.end28, !dbg !5219

cond.end28:                                       ; preds = %cond.end, %cond.false22
  %cond29 = phi i64 [ %5, %cond.false22 ], [ 0, %cond.end ], !dbg !5219
  %shl32 = shl i64 %cond29, %sh_prom31, !dbg !5222
  %or33 = or i64 %shr, %shl32, !dbg !5223
  %arrayidx36 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv5, !dbg !5224
  store i64 %or33, i64* %arrayidx36, align 8, !dbg !5225
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !5226
  call void @llvm.dbg.value(metadata i32 undef, metadata !5173, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5175
  br label %for.cond9, !dbg !5227, !llvm.loop !5228

for.cond40:                                       ; preds = %for.cond40.preheader, %for.body43
  %indvars.iv2 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next3, %for.body43 ], !dbg !5230
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !5173, metadata !DIExpression()), !dbg !5175
  %6 = add nuw nsw i64 %ofs.0, %indvars.iv2, !dbg !5231
  %cmp42 = icmp ult i64 %6, 3, !dbg !5233
  br i1 %cmp42, label %for.body43, label %for.cond54.preheader, !dbg !5198

for.cond54.preheader:                             ; preds = %for.cond40
  %indvars.iv2.lcssa = phi i64 [ %indvars.iv2, %for.cond40 ], !dbg !5230
  call void @llvm.dbg.value(metadata i64 %indvars.iv2.lcssa, metadata !5173, metadata !DIExpression()), !dbg !5175
  %7 = and i64 %indvars.iv2.lcssa, 4294967295, !dbg !5234
  call void @llvm.dbg.value(metadata i64 %indvars.iv2.lcssa, metadata !5173, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i64 %indvars.iv2.lcssa, metadata !5173, metadata !DIExpression()), !dbg !5175
  br label %for.cond54, !dbg !5234

for.body43:                                       ; preds = %for.cond40
  %arrayidx47 = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %6, !dbg !5236
  %8 = load i64, i64* %arrayidx47, align 8, !dbg !5236
  %arrayidx50 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv2, !dbg !5237
  store i64 %8, i64* %arrayidx50, align 8, !dbg !5238
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !5239
  call void @llvm.dbg.value(metadata i32 undef, metadata !5173, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5175
  br label %for.cond40, !dbg !5240, !llvm.loop !5241

for.cond54:                                       ; preds = %for.cond54.preheader, %for.body56
  %indvars.iv = phi i64 [ %7, %for.cond54.preheader ], [ %indvars.iv.next, %for.body56 ], !dbg !5243
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5173, metadata !DIExpression()), !dbg !5175
  %exitcond = icmp eq i64 %indvars.iv, 3, !dbg !5244
  br i1 %exitcond, label %if.end63.loopexit, label %for.body56, !dbg !5234

for.body56:                                       ; preds = %for.cond54
  %arrayidx59 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv, !dbg !5246
  store i64 0, i64* %arrayidx59, align 8, !dbg !5247
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !5248
  call void @llvm.dbg.value(metadata i32 undef, metadata !5173, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5175
  br label %for.cond54, !dbg !5249, !llvm.loop !5250

if.end63.loopexit:                                ; preds = %for.cond54
  br label %if.end63, !dbg !5252

if.end63.loopexit1:                               ; preds = %for.cond9
  %and7 = and i64 %1, %sub, !dbg !5253
  %or8 = or i64 %sticky.1, %and7, !dbg !5254
  br label %if.end63, !dbg !5252

if.end63:                                         ; preds = %if.end63.loopexit1, %if.end63.loopexit
  %sticky.2 = phi i64 [ %sticky.1, %if.end63.loopexit ], [ %or8, %if.end63.loopexit1 ], !dbg !5175
  call void @llvm.dbg.value(metadata i64 %sticky.2, metadata !5172, metadata !DIExpression()), !dbg !5175
  %cmp64 = icmp ne i64 %sticky.2, 0, !dbg !5252
  %conv65 = zext i1 %cmp64 to i8, !dbg !5255
  ret i8 %conv65, !dbg !5256
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sub_significands(%struct.real_value* %r, %struct.real_value* %a, %struct.real_value* %b, i32 %carry) unnamed_addr #0 !dbg !5257 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5259, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !5260, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !5261, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata i32 %carry, metadata !5262, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata i32 0, metadata !5263, metadata !DIExpression()), !dbg !5269
  br label %for.cond, !dbg !5270

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %carry.addr.0 = phi i32 [ %carry.addr.1, %if.end ], [ %carry, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5263, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata i32 %carry.addr.0, metadata !5262, metadata !DIExpression()), !dbg !5269
  %exitcond = icmp eq i64 %indvars.iv, 3, !dbg !5271
  br i1 %exitcond, label %for.end, label %for.body, !dbg !5272

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %indvars.iv, !dbg !5273
  %0 = load i64, i64* %arrayidx, align 8, !dbg !5273
  call void @llvm.dbg.value(metadata i64 %0, metadata !5264, metadata !DIExpression()), !dbg !5274
  %arrayidx3 = getelementptr inbounds %struct.real_value, %struct.real_value* %b, i64 0, i32 1, i64 %indvars.iv, !dbg !5275
  %1 = load i64, i64* %arrayidx3, align 8, !dbg !5275
  %sub = sub i64 %0, %1, !dbg !5276
  call void @llvm.dbg.value(metadata i64 %sub, metadata !5268, metadata !DIExpression()), !dbg !5274
  %tobool = icmp eq i32 %carry.addr.0, 0, !dbg !5277
  %cmp4 = icmp ult i64 %0, %1, !dbg !5279
  call void @llvm.dbg.value(metadata i1 %cmp4, metadata !5262, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata i1 %cmp4, metadata !5262, metadata !DIExpression()), !dbg !5269
  br i1 %tobool, label %if.end, label %if.then, !dbg !5280

if.then:                                          ; preds = %for.body
  %dec = add i64 %sub, -1, !dbg !5281
  call void @llvm.dbg.value(metadata i64 %dec, metadata !5268, metadata !DIExpression()), !dbg !5274
  %cmp5 = icmp eq i64 %sub, 0, !dbg !5283
  %or1 = or i1 %cmp4, %cmp5, !dbg !5284
  call void @llvm.dbg.value(metadata i1 %or1, metadata !5262, metadata !DIExpression()), !dbg !5269
  br label %if.end, !dbg !5285

if.end:                                           ; preds = %for.body, %if.then
  %carry.addr.1.in = phi i1 [ %or1, %if.then ], [ %cmp4, %for.body ]
  %ri.0 = phi i64 [ %dec, %if.then ], [ %sub, %for.body ], !dbg !5274
  %carry.addr.1 = zext i1 %carry.addr.1.in to i32, !dbg !5279
  call void @llvm.dbg.value(metadata i64 %ri.0, metadata !5268, metadata !DIExpression()), !dbg !5274
  call void @llvm.dbg.value(metadata i32 %carry.addr.1, metadata !5262, metadata !DIExpression()), !dbg !5269
  %arrayidx11 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv, !dbg !5286
  store i64 %ri.0, i64* %arrayidx11, align 8, !dbg !5287
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !5288
  call void @llvm.dbg.value(metadata i32 undef, metadata !5263, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5269
  br label %for.cond, !dbg !5289, !llvm.loop !5290

for.end:                                          ; preds = %for.cond
  %carry.addr.0.lcssa = phi i32 [ %carry.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata i32 %carry.addr.0.lcssa, metadata !5262, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata i32 %carry.addr.0.lcssa, metadata !5262, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata i32 %carry.addr.0.lcssa, metadata !5262, metadata !DIExpression()), !dbg !5269
  %conv12 = trunc i32 %carry.addr.0.lcssa to i8, !dbg !5292
  ret i8 %conv12, !dbg !5293
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @neg_significand(%struct.real_value* %r, %struct.real_value* %a) unnamed_addr #0 !dbg !5294 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5296, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !5297, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.value(metadata i8 1, metadata !5298, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.value(metadata i32 0, metadata !5299, metadata !DIExpression()), !dbg !5305
  br label %for.cond, !dbg !5306

for.cond:                                         ; preds = %if.end4, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end4 ], [ 0, %entry ], !dbg !5305
  %carry.0 = phi i8 [ %carry.2, %if.end4 ], [ 1, %entry ], !dbg !5305
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5299, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.value(metadata i8 %carry.0, metadata !5298, metadata !DIExpression()), !dbg !5305
  %exitcond = icmp eq i64 %indvars.iv, 3, !dbg !5307
  br i1 %exitcond, label %for.end, label %for.body, !dbg !5308

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %a, i64 0, i32 1, i64 %indvars.iv, !dbg !5309
  %0 = load i64, i64* %arrayidx, align 8, !dbg !5309
  call void @llvm.dbg.value(metadata i64 %0, metadata !5304, metadata !DIExpression()), !dbg !5310
  %tobool = icmp eq i8 %carry.0, 0, !dbg !5311
  br i1 %tobool, label %if.else3, label %if.then, !dbg !5313

if.then:                                          ; preds = %for.body
  %tobool1 = icmp eq i64 %0, 0, !dbg !5314
  %sub = sub i64 0, %0, !dbg !5317
  %carry.1 = select i1 %tobool1, i8 %carry.0, i8 0, !dbg !5317
  br label %if.end4, !dbg !5317

if.else3:                                         ; preds = %for.body
  %neg = xor i64 %0, -1, !dbg !5318
  call void @llvm.dbg.value(metadata i64 %neg, metadata !5300, metadata !DIExpression()), !dbg !5310
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.else3
  %carry.2 = phi i8 [ 0, %if.else3 ], [ %carry.1, %if.then ], !dbg !5305
  %ri.1 = phi i64 [ %neg, %if.else3 ], [ %sub, %if.then ], !dbg !5319
  call void @llvm.dbg.value(metadata i64 %ri.1, metadata !5300, metadata !DIExpression()), !dbg !5310
  call void @llvm.dbg.value(metadata i8 %carry.2, metadata !5298, metadata !DIExpression()), !dbg !5305
  %arrayidx7 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %indvars.iv, !dbg !5320
  store i64 %ri.1, i64* %arrayidx7, align 8, !dbg !5321
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !5322
  call void @llvm.dbg.value(metadata i32 undef, metadata !5299, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5305
  br label %for.cond, !dbg !5323, !llvm.loop !5324

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5326
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @div_significands(%struct.real_value* %r, %struct.real_value* %a, %struct.real_value* %b) unnamed_addr #0 !dbg !5327 {
entry:
  %u = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5329, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata %struct.real_value* %a, metadata !5330, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata %struct.real_value* %b, metadata !5331, metadata !DIExpression()), !dbg !5339
  %0 = bitcast %struct.real_value* %u to i8*, !dbg !5340
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5340
  call void @llvm.dbg.value(metadata i32 191, metadata !5334, metadata !DIExpression()), !dbg !5339
  %1 = bitcast %struct.real_value* %a to i8*, !dbg !5341
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %1, i64 32, i1 false), !dbg !5341
  %arraydecay = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 0, !dbg !5342
  %2 = bitcast i64* %arraydecay to i8*, !dbg !5342
  %call = tail call i8* @memset(i8* nonnull %2, i32 0, i64 24) #6, !dbg !5343
  call void @llvm.dbg.value(metadata i64 0, metadata !5335, metadata !DIExpression()), !dbg !5339
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 1, i64 2, !dbg !5344
  br label %start, !dbg !5345

do.body:                                          ; preds = %do.cond
  %dec = add nsw i32 %bit.0, -1, !dbg !5346
  call void @llvm.dbg.value(metadata i32 %dec, metadata !5334, metadata !DIExpression()), !dbg !5339
  %3 = load i64, i64* %arrayidx, align 8, !dbg !5347
  %and = and i64 %3, -9223372036854775808, !dbg !5348
  call void @llvm.dbg.value(metadata i64 %and, metadata !5335, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !5332, metadata !DIExpression(DW_OP_deref)), !dbg !5339
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !5332, metadata !DIExpression(DW_OP_deref)), !dbg !5339
  call fastcc void @lshift_significand_1(%struct.real_value* nonnull %u, %struct.real_value* nonnull %u) #7, !dbg !5349
  br label %start, !dbg !5349

start:                                            ; preds = %do.body, %entry
  %bit.0 = phi i32 [ 191, %entry ], [ %dec, %do.body ], !dbg !5339
  %msb.0 = phi i64 [ 0, %entry ], [ %and, %do.body ], !dbg !5339
  call void @llvm.dbg.value(metadata i64 %msb.0, metadata !5335, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata i32 %bit.0, metadata !5334, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.label(metadata !5337), !dbg !5350
  %tobool = icmp eq i64 %msb.0, 0, !dbg !5351
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5353

lor.lhs.false:                                    ; preds = %start
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !5332, metadata !DIExpression(DW_OP_deref)), !dbg !5339
  %call2 = call fastcc i32 @cmp_significands(%struct.real_value* nonnull %u, %struct.real_value* %b) #7, !dbg !5354
  %cmp = icmp sgt i32 %call2, -1, !dbg !5355
  br i1 %cmp, label %if.then, label %do.cond, !dbg !5356

if.then:                                          ; preds = %start, %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !5332, metadata !DIExpression(DW_OP_deref)), !dbg !5339
  call void @llvm.dbg.value(metadata %struct.real_value* %u, metadata !5332, metadata !DIExpression(DW_OP_deref)), !dbg !5339
  %call3 = call fastcc zeroext i8 @sub_significands(%struct.real_value* nonnull %u, %struct.real_value* nonnull %u, %struct.real_value* %b, i32 0) #7, !dbg !5357
  call fastcc void @set_significand_bit(%struct.real_value* %r, i32 %bit.0) #7, !dbg !5359
  br label %do.cond, !dbg !5360

do.cond:                                          ; preds = %lor.lhs.false, %if.then
  call void @llvm.dbg.value(metadata i32 %bit.0, metadata !5334, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5339
  %cmp4 = icmp eq i32 %bit.0, 0, !dbg !5361
  br i1 %cmp4, label %for.cond.preheader, label %do.body, !dbg !5362, !llvm.loop !5363

for.cond.preheader:                               ; preds = %do.cond
  br label %for.cond, !dbg !5366

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !5368
  %inexact.0 = phi i64 [ 0, %for.cond.preheader ], [ %or, %for.body ], !dbg !5368
  call void @llvm.dbg.value(metadata i64 %inexact.0, metadata !5336, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5333, metadata !DIExpression()), !dbg !5339
  %exitcond = icmp eq i64 %indvars.iv, 3, !dbg !5369
  br i1 %exitcond, label %for.end, label %for.body, !dbg !5366

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds %struct.real_value, %struct.real_value* %u, i64 0, i32 1, i64 %indvars.iv, !dbg !5371
  %4 = load i64, i64* %arrayidx7, align 8, !dbg !5371
  %or = or i64 %inexact.0, %4, !dbg !5372
  call void @llvm.dbg.value(metadata i64 %or, metadata !5336, metadata !DIExpression()), !dbg !5339
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !5373
  call void @llvm.dbg.value(metadata i32 undef, metadata !5333, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5339
  br label %for.cond, !dbg !5374, !llvm.loop !5375

for.end:                                          ; preds = %for.cond
  %inexact.0.lcssa = phi i64 [ %inexact.0, %for.cond ], !dbg !5368
  call void @llvm.dbg.value(metadata i64 %inexact.0.lcssa, metadata !5336, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata i64 %inexact.0.lcssa, metadata !5336, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata i64 %inexact.0.lcssa, metadata !5336, metadata !DIExpression()), !dbg !5339
  %cmp8 = icmp ne i64 %inexact.0.lcssa, 0, !dbg !5377
  %conv9 = zext i1 %cmp8 to i8, !dbg !5378
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5379
  ret i8 %conv9, !dbg !5380
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_significand_bit(%struct.real_value* %r, i32 %n) unnamed_addr #0 !dbg !5381 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5383, metadata !DIExpression()), !dbg !5385
  call void @llvm.dbg.value(metadata i32 %n, metadata !5384, metadata !DIExpression()), !dbg !5385
  %rem = and i32 %n, 63, !dbg !5386
  %sh_prom = zext i32 %rem to i64, !dbg !5387
  %shl = shl i64 1, %sh_prom, !dbg !5387
  %div = lshr i32 %n, 6, !dbg !5388
  %idxprom = zext i32 %div to i64, !dbg !5389
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom, !dbg !5389
  %0 = load i64, i64* %arrayidx, align 8, !dbg !5390
  %or = or i64 %0, %shl, !dbg !5390
  store i64 %or, i64* %arrayidx, align 8, !dbg !5390
  ret void, !dbg !5391
}

declare dso_local i32 @decimal_do_compare(%struct.real_value*, %struct.real_value*, i32) local_unnamed_addr #2

declare dso_local void @decimal_do_fix_trunc(%struct.real_value*, %struct.real_value*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_integer_string(i8* %str, %struct.real_value* %r_orig, i64 %buf_size) unnamed_addr #5 !dbg !5392 {
entry:
  %r = alloca %struct.real_value, align 8
  %pten = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !5396, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.real_value* %r_orig, metadata !5397, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i64 255, metadata !5398, metadata !DIExpression()), !dbg !5406
  %0 = bitcast %struct.real_value* %r to i8*, !dbg !5407
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5407
  %1 = bitcast %struct.real_value* %pten to i8*, !dbg !5407
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !5407
  %2 = bitcast %struct.real_value* %r_orig to i8*, !dbg !5408
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %2, i64 32, i1 false), !dbg !5408
  %3 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !5409
  %bf.load = load i32, i32* %3, align 8, !dbg !5409
  %bf.clear = and i32 %bf.load, 3, !dbg !5409
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !5411
  br i1 %cmp, label %if.then, label %if.end, !dbg !5412

if.then:                                          ; preds = %entry
  %call = tail call i8* @strcpy(i8* %str, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !5413
  br label %cleanup, !dbg !5415

if.end:                                           ; preds = %entry
  %bf.clear4 = and i32 %bf.load, -9, !dbg !5416
  store i32 %bf.clear4, i32* %3, align 8, !dbg !5416
  %sub = ashr i32 %bf.load, 6, !dbg !5417
  %conv7 = sitofp i32 %sub to double, !dbg !5417
  %mul = fmul double %conv7, 0x3FD34413509F79FF, !dbg !5418
  %conv8 = fptosi double %mul to i32, !dbg !5417
  call void @llvm.dbg.value(metadata i32 %conv8, metadata !5399, metadata !DIExpression()), !dbg !5406
  %add = add nsw i32 %conv8, 1, !dbg !5419
  call void @llvm.dbg.value(metadata i32 %add, metadata !5401, metadata !DIExpression()), !dbg !5406
  %cmp11 = icmp slt i32 %conv8, 252, !dbg !5420
  br i1 %cmp11, label %cond.end, label %cond.true, !dbg !5420

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5420
  br label %cond.end, !dbg !5420

cond.end:                                         ; preds = %if.end, %cond.true
  %call13 = tail call fastcc %struct.real_value* @real_digit(i32 1) #7, !dbg !5421
  %4 = bitcast %struct.real_value* %call13 to i8*, !dbg !5422
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* align 8 %4, i64 32, i1 false), !dbg !5422
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !5403, metadata !DIExpression(DW_OP_deref)), !dbg !5406
  call fastcc void @times_pten(%struct.real_value* nonnull %pten, i32 %conv8) #7, !dbg !5423
  call void @llvm.dbg.value(metadata i8* %str, metadata !5404, metadata !DIExpression()), !dbg !5406
  %conv1 = and i32 %bf.load, 8, !dbg !5424
  %tobool = icmp eq i32 %conv1, 0, !dbg !5424
  br i1 %tobool, label %if.end15, label %if.then14, !dbg !5426

if.then14:                                        ; preds = %cond.end
  %incdec.ptr = getelementptr inbounds i8, i8* %str, i64 1, !dbg !5427
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !5404, metadata !DIExpression()), !dbg !5406
  store i8 45, i8* %str, align 1, !dbg !5428
  br label %if.end15, !dbg !5429

if.end15:                                         ; preds = %cond.end, %if.then14
  %p.0 = phi i8* [ %incdec.ptr, %if.then14 ], [ %str, %cond.end ], !dbg !5406
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !5404, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5402, metadata !DIExpression(DW_OP_deref)), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !5403, metadata !DIExpression(DW_OP_deref)), !dbg !5406
  %call16 = call fastcc i64 @rtd_divmod(%struct.real_value* nonnull %r, %struct.real_value* nonnull %pten) #7, !dbg !5430
  %conv17 = trunc i64 %call16 to i32, !dbg !5430
  call void @llvm.dbg.value(metadata i32 %conv17, metadata !5400, metadata !DIExpression()), !dbg !5406
  %5 = icmp ult i32 %conv17, 10, !dbg !5431
  br i1 %5, label %cond.end24, label %cond.true22, !dbg !5431

cond.true22:                                      ; preds = %if.end15
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5431
  br label %cond.end24, !dbg !5431

cond.end24:                                       ; preds = %if.end15, %cond.true22
  %6 = trunc i64 %call16 to i8, !dbg !5432
  %conv27 = add i8 %6, 48, !dbg !5432
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !5404, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5406
  store i8 %conv27, i8* %p.0, align 1, !dbg !5433
  br label %while.cond, !dbg !5434

while.cond:                                       ; preds = %while.body, %cond.end24
  %digits.0 = phi i32 [ %add, %cond.end24 ], [ %dec, %while.body ], !dbg !5406
  %p.0.pn = phi i8* [ %p.0, %cond.end24 ], [ %p.1, %while.body ]
  %p.1 = getelementptr inbounds i8, i8* %p.0.pn, i64 1, !dbg !5406
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !5404, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i32 %digits.0, metadata !5401, metadata !DIExpression()), !dbg !5406
  %dec = add nsw i32 %digits.0, -1, !dbg !5435
  call void @llvm.dbg.value(metadata i32 %dec, metadata !5401, metadata !DIExpression()), !dbg !5406
  %cmp29 = icmp sgt i32 %dec, 0, !dbg !5436
  br i1 %cmp29, label %while.body, label %while.end, !dbg !5434

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5402, metadata !DIExpression(DW_OP_deref)), !dbg !5406
  call fastcc void @times_pten(%struct.real_value* nonnull %r, i32 1) #7, !dbg !5437
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5402, metadata !DIExpression(DW_OP_deref)), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.real_value* %pten, metadata !5403, metadata !DIExpression(DW_OP_deref)), !dbg !5406
  %call31 = call fastcc i64 @rtd_divmod(%struct.real_value* nonnull %r, %struct.real_value* nonnull %pten) #7, !dbg !5439
  %conv32 = trunc i64 %call31 to i8, !dbg !5439
  %add33 = add i8 %conv32, 48, !dbg !5440
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !5404, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5406
  store i8 %add33, i8* %p.1, align 1, !dbg !5441
  br label %while.cond, !dbg !5434, !llvm.loop !5442

while.end:                                        ; preds = %while.cond
  %p.0.pn.lcssa = phi i8* [ %p.0.pn, %while.cond ]
  %p.1.lcssa = phi i8* [ %p.1, %while.cond ], !dbg !5406
  %incdec.ptr36 = getelementptr inbounds i8, i8* %p.0.pn.lcssa, i64 2, !dbg !5444
  call void @llvm.dbg.value(metadata i8* %incdec.ptr36, metadata !5404, metadata !DIExpression()), !dbg !5406
  store i8 46, i8* %p.1.lcssa, align 1, !dbg !5445
  call void @llvm.dbg.value(metadata i8* %incdec.ptr36, metadata !5404, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5406
  store i8 0, i8* %incdec.ptr36, align 1, !dbg !5446
  br label %cleanup, !dbg !5447

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !5447
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !5447
  ret void, !dbg !5447
}

declare dso_local void @decimal_round_for_format(%struct.real_format*, %struct.real_value*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @test_significand_bit(%struct.real_value* %r, i32 %n) unnamed_addr #0 !dbg !5448 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5452, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.value(metadata i32 %n, metadata !5453, metadata !DIExpression()), !dbg !5455
  %div = lshr i32 %n, 6, !dbg !5456
  %idxprom = zext i32 %div to i64, !dbg !5457
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 %idxprom, !dbg !5457
  %0 = load i64, i64* %arrayidx, align 8, !dbg !5457
  %rem = and i32 %n, 63, !dbg !5458
  %sh_prom = zext i32 %rem to i64, !dbg !5459
  %shr = lshr i64 %0, %sh_prom, !dbg !5459
  %1 = trunc i64 %shr to i8, !dbg !5460
  %conv = and i8 %1, 1, !dbg !5460
  ret i8 %conv, !dbg !5461
}

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_ieee_extended(%struct.real_format* %fmt, i64* %buf, %struct.real_value* %r) unnamed_addr #5 !dbg !5462 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !5464, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64* %buf, metadata !5465, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5466, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i8 undef, metadata !5470, metadata !DIExpression()), !dbg !5474
  %0 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !5475
  %bf.load = load i32, i32* %0, align 8, !dbg !5475
  %1 = shl i32 %bf.load, 12, !dbg !5476
  %shl = and i32 %1, 32768, !dbg !5476
  %conv2 = zext i32 %shl to i64, !dbg !5477
  call void @llvm.dbg.value(metadata i64 %conv2, metadata !5467, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 0, metadata !5469, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 0, metadata !5468, metadata !DIExpression()), !dbg !5474
  %bf.clear4 = and i32 %bf.load, 3, !dbg !5478
  switch i32 %bf.clear4, label %sw.default1 [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb
    i32 3, label %sw.bb6
    i32 1, label %sw.bb46
  ], !dbg !5479

sw.bb:                                            ; preds = %entry
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 12, !dbg !5480
  %2 = load i8, i8* %has_inf, align 1, !dbg !5480
  %tobool = icmp ne i8 %2, 0, !dbg !5482
  %or = or i64 %conv2, 32767, !dbg !5483
  call void @llvm.dbg.value(metadata i64 %or, metadata !5467, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 %or, metadata !5467, metadata !DIExpression()), !dbg !5474
  %. = select i1 %tobool, i64 2147483648, i64 4294967295
  %.2 = select i1 %tobool, i64 0, i64 4294967295
  call void @llvm.dbg.value(metadata i64 %.2, metadata !5469, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 %., metadata !5468, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 %or, metadata !5467, metadata !DIExpression()), !dbg !5474
  br label %sw.epilog, !dbg !5484

sw.bb6:                                           ; preds = %entry
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 11, !dbg !5485
  %3 = load i8, i8* %has_nans, align 2, !dbg !5485
  %tobool7 = icmp eq i8 %3, 0, !dbg !5487
  %or9 = or i64 %conv2, 32767, !dbg !5488
  call void @llvm.dbg.value(metadata i64 %or9, metadata !5467, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 %or9, metadata !5467, metadata !DIExpression()), !dbg !5474
  br i1 %tobool7, label %sw.epilog, label %if.then8, !dbg !5489

if.then8:                                         ; preds = %sw.bb6
  %bf.clear12 = and i32 %bf.load, 32, !dbg !5490
  %tobool13 = icmp eq i32 %bf.clear12, 0, !dbg !5493
  br i1 %tobool13, label %if.else18, label %if.then14, !dbg !5494

if.then14:                                        ; preds = %if.then8
  %canonical_nan_lsbs_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 16, !dbg !5495
  %4 = load i8, i8* %canonical_nan_lsbs_set, align 1, !dbg !5495
  %tobool15 = icmp ne i8 %4, 0, !dbg !5498
  %spec.select = select i1 %tobool15, i64 1073741823, i64 0, !dbg !5499
  %spec.select3 = select i1 %tobool15, i64 4294967295, i64 0, !dbg !5499
  call void @llvm.dbg.value(metadata i64 %spec.select3, metadata !5469, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !5468, metadata !DIExpression()), !dbg !5474
  br label %if.end23, !dbg !5500

if.else18:                                        ; preds = %if.then8
  %arrayidx20 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !5501
  %5 = load i64, i64* %arrayidx20, align 8, !dbg !5501
  call void @llvm.dbg.value(metadata i64 %5, metadata !5469, metadata !DIExpression()), !dbg !5474
  %shr = lshr i64 %5, 32, !dbg !5504
  call void @llvm.dbg.value(metadata i64 %shr, metadata !5468, metadata !DIExpression()), !dbg !5474
  %and22 = and i64 %5, 4294967295, !dbg !5505
  call void @llvm.dbg.value(metadata i64 %and22, metadata !5469, metadata !DIExpression()), !dbg !5474
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then14
  %sig_hi.2 = phi i64 [ %spec.select, %if.then14 ], [ %shr, %if.else18 ], !dbg !5506
  %sig_lo.2 = phi i64 [ %spec.select3, %if.then14 ], [ %and22, %if.else18 ], !dbg !5506
  call void @llvm.dbg.value(metadata i64 %sig_lo.2, metadata !5469, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 %sig_hi.2, metadata !5468, metadata !DIExpression()), !dbg !5474
  %bf.lshr25 = lshr i32 %bf.load, 4, !dbg !5507
  %bf.clear26 = and i32 %bf.lshr25, 1, !dbg !5507
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !5509
  %6 = load i8, i8* %qnan_msb_set, align 2, !dbg !5509
  %conv27 = zext i8 %6 to i32, !dbg !5510
  %cmp28 = icmp eq i32 %bf.clear26, %conv27, !dbg !5511
  %and31 = and i64 %sig_hi.2, 3221225471, !dbg !5512
  %or33 = or i64 %sig_hi.2, 1073741824, !dbg !5512
  %sig_hi.3 = select i1 %cmp28, i64 %and31, i64 %or33, !dbg !5512
  call void @llvm.dbg.value(metadata i64 %sig_hi.3, metadata !5468, metadata !DIExpression()), !dbg !5474
  %and35 = and i64 %sig_hi.3, 2147483647, !dbg !5513
  %7 = or i64 %and35, %sig_lo.2, !dbg !5515
  %8 = icmp eq i64 %7, 0, !dbg !5515
  %sig_hi.3.op = or i64 %sig_hi.3, 2147483648, !dbg !5516
  %or42 = select i1 %8, i64 2684354560, i64 %sig_hi.3.op, !dbg !5516
  call void @llvm.dbg.value(metadata i64 %or42, metadata !5468, metadata !DIExpression()), !dbg !5474
  br label %sw.epilog, !dbg !5517

sw.bb46:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !5518
  %9 = load i64, i64* %arrayidx, align 8, !dbg !5518
  call void @llvm.dbg.value(metadata i32 undef, metadata !5471, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 33554432, DW_OP_xor, DW_OP_constu, 33554432, DW_OP_minus, DW_OP_stack_value)), !dbg !5519
  %tobool49 = icmp sgt i64 %9, -1, !dbg !5520
  br i1 %tobool49, label %if.end54, label %if.else51, !dbg !5522

if.else51:                                        ; preds = %sw.bb46
  call void @llvm.dbg.value(metadata i32 %bf.load, metadata !5471, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 33554432, DW_OP_xor, DW_OP_constu, 33554432, DW_OP_minus, DW_OP_stack_value)), !dbg !5519
  %sub = ashr i32 %bf.load, 6, !dbg !5523
  call void @llvm.dbg.value(metadata i32 %sub, metadata !5471, metadata !DIExpression()), !dbg !5519
  %add = add nsw i32 %sub, 16382, !dbg !5524
  call void @llvm.dbg.value(metadata i32 %add, metadata !5471, metadata !DIExpression()), !dbg !5519
  %cmp52 = icmp sgt i32 %add, -1, !dbg !5526
  br i1 %cmp52, label %if.end54, label %cond.true, !dbg !5526

cond.true:                                        ; preds = %if.else51
  tail call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 3481, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5526
  %.pre = load i64, i64* %arrayidx, align 8, !dbg !5527
  br label %if.end54, !dbg !5526

if.end54:                                         ; preds = %cond.true, %if.else51, %sw.bb46
  %10 = phi i64 [ %9, %sw.bb46 ], [ %9, %if.else51 ], [ %.pre, %cond.true ], !dbg !5527
  %exp.0 = phi i32 [ 0, %sw.bb46 ], [ %add, %if.else51 ], [ %add, %cond.true ], !dbg !5530
  call void @llvm.dbg.value(metadata i32 %exp.0, metadata !5471, metadata !DIExpression()), !dbg !5519
  %conv55 = sext i32 %exp.0 to i64, !dbg !5531
  %or56 = or i64 %conv2, %conv55, !dbg !5532
  call void @llvm.dbg.value(metadata i64 %or56, metadata !5467, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 %10, metadata !5469, metadata !DIExpression()), !dbg !5474
  %shr59 = lshr i64 %10, 32, !dbg !5533
  call void @llvm.dbg.value(metadata i64 %shr59, metadata !5468, metadata !DIExpression()), !dbg !5474
  %and61 = and i64 %10, 4294967295, !dbg !5534
  call void @llvm.dbg.value(metadata i64 %and61, metadata !5469, metadata !DIExpression()), !dbg !5474
  br label %sw.epilog, !dbg !5535

sw.default1:                                      ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %if.end23, %if.end54, %sw.bb, %entry
  %image_hi.2 = phi i64 [ %or56, %if.end54 ], [ %or, %sw.bb ], [ %conv2, %entry ], [ %or9, %if.end23 ], [ %or9, %sw.bb6 ], !dbg !5474
  %sig_hi.6 = phi i64 [ %shr59, %if.end54 ], [ %., %sw.bb ], [ 0, %entry ], [ %or42, %if.end23 ], [ 4294967295, %sw.bb6 ], !dbg !5474
  %sig_lo.4 = phi i64 [ %and61, %if.end54 ], [ %.2, %sw.bb ], [ 0, %entry ], [ %sig_lo.2, %if.end23 ], [ 4294967295, %sw.bb6 ], !dbg !5474
  call void @llvm.dbg.value(metadata i64 %sig_lo.4, metadata !5469, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 %sig_hi.6, metadata !5468, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i64 %image_hi.2, metadata !5467, metadata !DIExpression()), !dbg !5474
  store i64 %sig_lo.4, i64* %buf, align 8, !dbg !5536
  %arrayidx63 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !5537
  store i64 %sig_hi.6, i64* %arrayidx63, align 8, !dbg !5538
  %arrayidx64 = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !5539
  store i64 %image_hi.2, i64* %arrayidx64, align 8, !dbg !5540
  ret void, !dbg !5541
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_ieee_extended(%struct.real_format* %fmt, %struct.real_value* %r, i64* %buf) unnamed_addr #5 !dbg !5542 {
entry:
  call void @llvm.dbg.value(metadata %struct.real_format* %fmt, metadata !5544, metadata !DIExpression()), !dbg !5552
  call void @llvm.dbg.value(metadata %struct.real_value* %r, metadata !5545, metadata !DIExpression()), !dbg !5552
  call void @llvm.dbg.value(metadata i64* %buf, metadata !5546, metadata !DIExpression()), !dbg !5552
  %0 = load i64, i64* %buf, align 8, !dbg !5553
  call void @llvm.dbg.value(metadata i64 %0, metadata !5549, metadata !DIExpression()), !dbg !5552
  %arrayidx1 = getelementptr inbounds i64, i64* %buf, i64 1, !dbg !5554
  %1 = load i64, i64* %arrayidx1, align 8, !dbg !5554
  call void @llvm.dbg.value(metadata i64 %1, metadata !5548, metadata !DIExpression()), !dbg !5552
  %arrayidx2 = getelementptr inbounds i64, i64* %buf, i64 2, !dbg !5555
  %2 = load i64, i64* %arrayidx2, align 8, !dbg !5555
  call void @llvm.dbg.value(metadata i64 %2, metadata !5547, metadata !DIExpression()), !dbg !5552
  %and = and i64 %0, 4294967295, !dbg !5556
  call void @llvm.dbg.value(metadata i64 %and, metadata !5549, metadata !DIExpression()), !dbg !5552
  call void @llvm.dbg.value(metadata i64 %1, metadata !5548, metadata !DIExpression(DW_OP_constu, 4294967295, DW_OP_and, DW_OP_stack_value)), !dbg !5552
  call void @llvm.dbg.value(metadata i64 %2, metadata !5547, metadata !DIExpression(DW_OP_constu, 4294967295, DW_OP_and, DW_OP_stack_value)), !dbg !5552
  %shr = lshr i64 %2, 15, !dbg !5557
  %3 = trunc i64 %2 to i32, !dbg !5558
  %conv7 = and i32 %3, 32767, !dbg !5558
  call void @llvm.dbg.value(metadata i32 %conv7, metadata !5551, metadata !DIExpression()), !dbg !5552
  %4 = bitcast %struct.real_value* %r to i8*, !dbg !5559
  %call = tail call i8* @memset(i8* %4, i32 0, i64 32) #6, !dbg !5560
  switch i32 %conv7, label %if.else83 [
    i32 0, label %if.then
    i32 32767, label %land.lhs.true37
  ], !dbg !5561

if.then:                                          ; preds = %entry
  %5 = or i64 %1, %0, !dbg !5562
  %6 = and i64 %5, 4294967295, !dbg !5562
  %7 = icmp eq i64 %6, 0, !dbg !5562
  br i1 %7, label %if.else, label %land.lhs.true, !dbg !5562

land.lhs.true:                                    ; preds = %if.then
  %has_denorm = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 13, !dbg !5566
  %8 = load i8, i8* %has_denorm, align 8, !dbg !5566
  %tobool11 = icmp eq i8 %8, 0, !dbg !5567
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !5568

if.then12:                                        ; preds = %land.lhs.true
  %9 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !5569
  %bf.load = load i32, i32* %9, align 8, !dbg !5571
  %conv2 = shl nuw nsw i64 %shr, 3, !dbg !5572
  %conv = trunc i64 %conv2 to i32, !dbg !5572
  %bf.shl = and i32 %conv, 8, !dbg !5572
  %bf.set = and i32 %bf.load, -12, !dbg !5572
  %bf.clear15 = or i32 %bf.set, %bf.shl, !dbg !5572
  %bf.set16 = or i32 %bf.clear15, 1, !dbg !5572
  store i32 %bf.set16, i32* %9, align 8, !dbg !5572
  %emin = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 5, !dbg !5573
  %10 = load i32, i32* %emin, align 4, !dbg !5573
  %bf.shl20 = shl i32 %10, 6, !dbg !5573
  %bf.clear21 = and i32 %bf.set16, 61, !dbg !5573
  %bf.set22 = or i32 %bf.clear21, %bf.shl20, !dbg !5573
  store i32 %bf.set22, i32* %9, align 8, !dbg !5573
  %shl23 = shl i64 %1, 32, !dbg !5574
  %or = or i64 %shl23, %and, !dbg !5576
  %arrayidx24 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !5577
  store i64 %or, i64* %arrayidx24, align 8, !dbg !5578
  tail call fastcc void @normalize(%struct.real_value* %r) #7, !dbg !5579
  br label %if.end105, !dbg !5580

if.else:                                          ; preds = %land.lhs.true, %if.then
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 14, !dbg !5581
  %11 = load i8, i8* %has_signed_zero, align 1, !dbg !5581
  %tobool25 = icmp eq i8 %11, 0, !dbg !5583
  br i1 %tobool25, label %if.end105, label %if.then26, !dbg !5584

if.then26:                                        ; preds = %if.else
  %12 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !5585
  %bf.load28 = load i32, i32* %12, align 8, !dbg !5586
  %13 = shl nuw nsw i64 %shr, 3, !dbg !5586
  %14 = trunc i64 %13 to i32, !dbg !5586
  %15 = and i32 %14, 8, !dbg !5586
  %bf.clear31 = and i32 %bf.load28, -9, !dbg !5586
  %bf.set32 = or i32 %bf.clear31, %15, !dbg !5586
  store i32 %bf.set32, i32* %12, align 8, !dbg !5586
  br label %if.end105, !dbg !5587

land.lhs.true37:                                  ; preds = %entry
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 11, !dbg !5588
  %16 = load i8, i8* %has_nans, align 2, !dbg !5588
  %tobool39 = icmp eq i8 %16, 0, !dbg !5590
  br i1 %tobool39, label %lor.lhs.false40, label %if.then43, !dbg !5591

lor.lhs.false40:                                  ; preds = %land.lhs.true37
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 12, !dbg !5592
  %17 = load i8, i8* %has_inf, align 1, !dbg !5592
  %tobool42 = icmp eq i8 %17, 0, !dbg !5593
  br i1 %tobool42, label %if.else83, label %if.then43, !dbg !5594

if.then43:                                        ; preds = %lor.lhs.false40, %land.lhs.true37
  %and44 = and i64 %1, 2147483647, !dbg !5595
  call void @llvm.dbg.value(metadata i64 %and44, metadata !5548, metadata !DIExpression()), !dbg !5552
  %18 = or i64 %and44, %and, !dbg !5597
  %19 = icmp eq i64 %18, 0, !dbg !5597
  %20 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !5599
  %bf.load49 = load i32, i32* %20, align 8, !dbg !5599
  br i1 %19, label %if.else72, label %if.then48, !dbg !5597

if.then48:                                        ; preds = %if.then43
  %21 = shl nuw nsw i64 %shr, 3, !dbg !5600
  %22 = trunc i64 %21 to i32, !dbg !5600
  %23 = and i32 %22, 8, !dbg !5600
  %bf.set51 = and i32 %bf.load49, -12, !dbg !5600
  %bf.clear56 = or i32 %bf.set51, %23, !dbg !5600
  %bf.set57 = or i32 %bf.clear56, 3, !dbg !5600
  store i32 %bf.set57, i32* %20, align 8, !dbg !5600
  %shr58 = lshr i64 %1, 30, !dbg !5602
  %qnan_msb_set = getelementptr inbounds %struct.real_format, %struct.real_format* %fmt, i64 0, i32 15, !dbg !5603
  %24 = load i8, i8* %qnan_msb_set, align 2, !dbg !5603
  %conv60 = zext i8 %24 to i64, !dbg !5604
  %xor = xor i64 %shr58, %conv60, !dbg !5605
  %conv61 = trunc i64 %xor to i32, !dbg !5606
  %bf.value63 = shl i32 %conv61, 4, !dbg !5607
  %bf.shl64 = and i32 %bf.value63, 16, !dbg !5607
  %bf.clear65 = and i32 %bf.set57, -17, !dbg !5607
  %bf.set66 = or i32 %bf.clear65, %bf.shl64, !dbg !5607
  store i32 %bf.set66, i32* %20, align 8, !dbg !5607
  %shl67 = shl nuw nsw i64 %and44, 32, !dbg !5608
  %or69 = or i64 %shl67, %and, !dbg !5610
  %arrayidx71 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !5611
  store i64 %or69, i64* %arrayidx71, align 8, !dbg !5612
  br label %if.end105, !dbg !5613

if.else72:                                        ; preds = %if.then43
  %25 = shl nuw nsw i64 %shr, 3, !dbg !5614
  %26 = trunc i64 %25 to i32, !dbg !5614
  %27 = and i32 %26, 8, !dbg !5614
  %bf.set75 = and i32 %bf.load49, -12, !dbg !5614
  %bf.clear80 = or i32 %bf.set75, %27, !dbg !5614
  %bf.set81 = or i32 %bf.clear80, 2, !dbg !5614
  store i32 %bf.set81, i32* %20, align 8, !dbg !5614
  br label %if.end105

if.else83:                                        ; preds = %lor.lhs.false40, %entry
  %28 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 0, !dbg !5616
  %bf.load84 = load i32, i32* %28, align 8, !dbg !5618
  %29 = shl nuw nsw i64 %shr, 3, !dbg !5619
  %30 = trunc i64 %29 to i32, !dbg !5619
  %31 = and i32 %30, 8, !dbg !5619
  %bf.set86 = and i32 %bf.load84, 52, !dbg !5619
  %bf.clear91 = or i32 %bf.set86, %31, !dbg !5619
  %add = shl nuw nsw i32 %conv7, 6, !dbg !5620
  %bf.shl96 = add nsw i32 %add, -1048448, !dbg !5620
  %bf.set92 = or i32 %bf.clear91, %bf.shl96, !dbg !5620
  %bf.set98 = or i32 %bf.set92, 1, !dbg !5620
  store i32 %bf.set98, i32* %28, align 8, !dbg !5620
  %shl99 = shl i64 %1, 32, !dbg !5621
  %or101 = or i64 %shl99, %and, !dbg !5623
  %arrayidx103 = getelementptr inbounds %struct.real_value, %struct.real_value* %r, i64 0, i32 1, i64 2, !dbg !5624
  store i64 %or101, i64* %arrayidx103, align 8, !dbg !5625
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.else83, %if.else72, %if.then48, %if.then12, %if.then26
  ret void, !dbg !5626
}

declare dso_local void @encode_decimal32(%struct.real_format*, i64*, %struct.real_value*) local_unnamed_addr #2

declare dso_local void @decode_decimal32(%struct.real_format*, %struct.real_value*, i64*) local_unnamed_addr #2

declare dso_local void @encode_decimal64(%struct.real_format*, i64*, %struct.real_value*) local_unnamed_addr #2

declare dso_local void @decode_decimal64(%struct.real_format*, %struct.real_value*, i64*) local_unnamed_addr #2

declare dso_local void @encode_decimal128(%struct.real_format*, i64*, %struct.real_value*) local_unnamed_addr #2

declare dso_local void @decode_decimal128(%struct.real_format*, %struct.real_value*, i64*) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!525, !526, !527}
!llvm.ident = !{!528}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "value", scope: !2, file: !3, line: 2342, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "dconst_e_ptr", scope: !3, file: !3, line: 2340, type: !4, scopeLine: 2341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !520)
!3 = !DIFile(filename: "real.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !9, line: 52, size: 256, elements: !10)
!9 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!10 = !{!11, !13, !14, !15, !16, !17, !18}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !8, file: !9, line: 56, baseType: !12, size: 2, flags: DIFlagBitField, extraData: i64 0)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !8, file: !9, line: 57, baseType: !12, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !8, file: !9, line: 58, baseType: !12, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !8, file: !9, line: 59, baseType: !12, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !8, file: !9, line: 60, baseType: !12, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !8, file: !9, line: 61, baseType: !12, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !8, file: !9, line: 62, baseType: !19, size: 192, offset: 64)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 192, elements: !21)
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 3)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !24, retainedTypes: !370, globals: !381, nameTableKind: None)
!24 = !{!25, !220, !348}
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !26, line: 39, baseType: !12, size: 32, elements: !27)
!26 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!28 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!31 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!32 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!33 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!34 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!35 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!36 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!37 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!38 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!39 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!40 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!41 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!42 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!43 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!44 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!45 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!46 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!47 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!48 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!49 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!50 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!51 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!52 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!53 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!54 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!55 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!56 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!57 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!58 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!59 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!60 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!61 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!62 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!63 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!64 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!65 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!66 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!67 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!68 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!69 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!70 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!71 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!72 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!73 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!74 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!75 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!76 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!77 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!78 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!79 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!80 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!81 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!82 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!83 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!84 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!85 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!86 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!87 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!88 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!89 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!90 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!91 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!92 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!93 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!94 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!95 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!96 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!97 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!98 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!99 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!100 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!101 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!102 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!103 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!104 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!105 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!106 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!107 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!108 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!109 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!110 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!111 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!112 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!113 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!114 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!115 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!116 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!117 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!118 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!119 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!120 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!121 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!122 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!123 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!124 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!125 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!126 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!127 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!128 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!129 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!130 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!131 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!132 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!133 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!134 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!135 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!136 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!137 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!138 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!139 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!140 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!141 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!142 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!143 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!144 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!145 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!146 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!147 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!148 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!149 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!150 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!151 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!152 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!153 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!154 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!155 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!156 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!157 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!158 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!159 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!160 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!161 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!162 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!163 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!164 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!165 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!166 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!167 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!168 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!169 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!170 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!171 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!172 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!173 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!174 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!175 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!176 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!177 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!178 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!179 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!180 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!183 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!184 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!189 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!190 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!191 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!192 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!193 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!194 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!195 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!196 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!197 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!198 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!199 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!200 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!201 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!202 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!203 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!204 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!205 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!206 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!207 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!208 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!209 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!210 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!211 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!212 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!213 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!214 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!215 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!216 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!217 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!218 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!219 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !221, line: 7, baseType: !12, size: 32, elements: !222)
!221 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!223 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!224 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!225 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!226 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!227 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!228 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!229 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!230 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!231 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!232 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!233 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!234 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!235 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!236 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!237 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!238 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!239 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!240 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!241 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!242 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!243 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!244 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!245 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!246 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!247 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!248 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!249 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!250 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!251 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!252 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!253 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!254 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!255 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!256 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!257 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!258 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!259 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!260 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!261 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!262 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!263 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!264 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!265 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!266 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!267 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!268 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!269 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!270 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!271 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!272 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!273 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!274 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!275 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!276 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!277 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!278 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!279 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!280 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!281 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!282 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!283 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!284 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!285 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!286 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!287 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!288 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!289 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!290 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!291 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!292 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!293 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!294 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!295 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!296 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!297 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!298 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!299 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!300 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!301 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!302 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!303 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!304 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!305 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!306 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!307 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!308 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!309 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!310 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!311 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!312 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!313 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!314 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!315 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!316 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!317 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!318 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!319 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!320 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!321 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!322 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!323 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!324 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!325 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!326 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!327 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!328 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!329 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!330 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!331 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!332 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!333 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!334 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!335 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!336 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!337 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!338 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!340 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!341 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!342 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!343 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!345 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!346 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!347 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !349, line: 36, baseType: !12, size: 32, elements: !350)
!349 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!351 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!352 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!353 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!354 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!355 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!356 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!357 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!358 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!359 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!360 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!361 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!362 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!363 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!364 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!365 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!366 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!367 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!368 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!369 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!370 = !{!371, !372, !373, !374, !377, !378, !25, !12, !20, !348, !220, !380}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!373 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!380 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!381 = !{!0, !382, !386, !393, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !487, !489, !507, !512}
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "value", scope: !384, file: !3, line: 2390, type: !8, isLocal: true, isDefinition: true)
!384 = distinct !DISubprogram(name: "dconst_third_ptr", scope: !3, file: !3, line: 2388, type: !4, scopeLine: 2389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !385)
!385 = !{}
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "value", scope: !388, file: !3, line: 2406, type: !8, isLocal: true, isDefinition: true)
!388 = distinct !DISubprogram(name: "dconst_sqrt2_ptr", scope: !3, file: !3, line: 2404, type: !4, scopeLine: 2405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !389)
!389 = !{!390}
!390 = !DILocalVariable(name: "i", scope: !391, file: !3, line: 2427, type: !373)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 2411, column: 5)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 2410, column: 7)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "ieee_single_format", scope: !23, file: !3, line: 3035, type: !395, isLocal: false, isDefinition: true)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_format", file: !9, line: 124, size: 448, elements: !397)
!397 = !{!398, !405, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "encode", scope: !396, file: !9, line: 127, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402, !403, !6}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !396, file: !9, line: 129, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !402, !409, !410}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !396, file: !9, line: 133, baseType: !373, size: 32, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !396, file: !9, line: 136, baseType: !373, size: 32, offset: 160)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pnan", scope: !396, file: !9, line: 139, baseType: !373, size: 32, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !396, file: !9, line: 142, baseType: !373, size: 32, offset: 224)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !396, file: !9, line: 145, baseType: !373, size: 32, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "signbit_ro", scope: !396, file: !9, line: 149, baseType: !373, size: 32, offset: 288)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "signbit_rw", scope: !396, file: !9, line: 153, baseType: !373, size: 32, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "round_towards_zero", scope: !396, file: !9, line: 156, baseType: !372, size: 8, offset: 352)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "has_sign_dependent_rounding", scope: !396, file: !9, line: 157, baseType: !372, size: 8, offset: 360)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "has_nans", scope: !396, file: !9, line: 160, baseType: !372, size: 8, offset: 368)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "has_inf", scope: !396, file: !9, line: 161, baseType: !372, size: 8, offset: 376)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm", scope: !396, file: !9, line: 162, baseType: !372, size: 8, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "has_signed_zero", scope: !396, file: !9, line: 163, baseType: !372, size: 8, offset: 392)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "qnan_msb_set", scope: !396, file: !9, line: 164, baseType: !372, size: 8, offset: 400)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_nan_lsbs_set", scope: !396, file: !9, line: 165, baseType: !372, size: 8, offset: 408)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "mips_single_format", scope: !23, file: !3, line: 3056, type: !395, isLocal: false, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "motorola_single_format", scope: !23, file: !3, line: 3077, type: !395, isLocal: false, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "spu_single_format", scope: !23, file: !3, line: 3109, type: !395, isLocal: false, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "ieee_double_format", scope: !23, file: !3, line: 3318, type: !395, isLocal: false, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "mips_double_format", scope: !23, file: !3, line: 3339, type: !395, isLocal: false, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "motorola_double_format", scope: !23, file: !3, line: 3360, type: !395, isLocal: false, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "ieee_extended_motorola_format", scope: !23, file: !3, line: 3699, type: !395, isLocal: false, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "ieee_extended_intel_96_format", scope: !23, file: !3, line: 3720, type: !395, isLocal: false, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "ieee_extended_intel_128_format", scope: !23, file: !3, line: 3741, type: !395, isLocal: false, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(name: "ieee_extended_intel_96_round_53_format", scope: !23, file: !3, line: 3764, type: !395, isLocal: false, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "ibm_extended_format", scope: !23, file: !3, line: 3852, type: !395, isLocal: false, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "mips_extended_format", scope: !23, file: !3, line: 3873, type: !395, isLocal: false, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "ieee_quad_format", scope: !23, file: !3, line: 4136, type: !395, isLocal: false, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "mips_quad_format", scope: !23, file: !3, line: 4157, type: !395, isLocal: false, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "vax_f_format", scope: !23, file: !3, line: 4457, type: !395, isLocal: false, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "vax_d_format", scope: !23, file: !3, line: 4478, type: !395, isLocal: false, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "vax_g_format", scope: !23, file: !3, line: 4499, type: !395, isLocal: false, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "decimal_single_format", scope: !23, file: !3, line: 4575, type: !395, isLocal: false, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "decimal_double_format", scope: !23, file: !3, line: 4597, type: !395, isLocal: false, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "decimal_quad_format", scope: !23, file: !3, line: 4619, type: !395, isLocal: false, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "ieee_half_format", scope: !23, file: !3, line: 4756, type: !395, isLocal: false, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "arm_half_format", scope: !23, file: !3, line: 4780, type: !395, isLocal: false, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "real_internal_format", scope: !23, file: !3, line: 4825, type: !395, isLocal: false, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "halfthree", scope: !475, file: !3, line: 4856, type: !8, isLocal: true, isDefinition: true)
!475 = distinct !DISubprogram(name: "real_sqrt", scope: !3, file: !3, line: 4853, type: !476, scopeLine: 4855, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{!372, !409, !220, !6}
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486}
!479 = !DILocalVariable(name: "r", arg: 1, scope: !475, file: !3, line: 4853, type: !409)
!480 = !DILocalVariable(name: "mode", arg: 2, scope: !475, file: !3, line: 4853, type: !220)
!481 = !DILocalVariable(name: "x", arg: 3, scope: !475, file: !3, line: 4854, type: !6)
!482 = !DILocalVariable(name: "h", scope: !475, file: !3, line: 4858, type: !8)
!483 = !DILocalVariable(name: "t", scope: !475, file: !3, line: 4858, type: !8)
!484 = !DILocalVariable(name: "i", scope: !475, file: !3, line: 4858, type: !8)
!485 = !DILocalVariable(name: "iter", scope: !475, file: !3, line: 4859, type: !373)
!486 = !DILocalVariable(name: "exp", scope: !475, file: !3, line: 4859, type: !373)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "init", scope: !475, file: !3, line: 4857, type: !372, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "tens", scope: !491, file: !3, line: 2252, type: !504, isLocal: true, isDefinition: true)
!491 = distinct !DISubprogram(name: "ten_to_ptwo", scope: !3, file: !3, line: 2250, type: !492, scopeLine: 2251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{!6, !373}
!494 = !{!495, !496, !501, !502}
!495 = !DILocalVariable(name: "n", arg: 1, scope: !491, file: !3, line: 2250, type: !373)
!496 = !DILocalVariable(name: "t", scope: !497, file: !3, line: 2261, type: !404)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 2260, column: 2)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 2259, column: 11)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 2258, column: 5)
!500 = distinct !DILexicalBlock(scope: !491, file: !3, line: 2257, column: 7)
!501 = !DILocalVariable(name: "i", scope: !497, file: !3, line: 2262, type: !373)
!502 = !DILocalVariable(name: "t", scope: !503, file: !3, line: 2271, type: !6)
!503 = distinct !DILexicalBlock(scope: !498, file: !3, line: 2270, column: 2)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 6656, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 26)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "tens", scope: !509, file: !3, line: 2284, type: !504, isLocal: true, isDefinition: true)
!509 = distinct !DISubprogram(name: "ten_to_mptwo", scope: !3, file: !3, line: 2282, type: !492, scopeLine: 2283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !510)
!510 = !{!511}
!511 = !DILocalVariable(name: "n", arg: 1, scope: !509, file: !3, line: 2282, type: !373)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "num", scope: !514, file: !3, line: 2300, type: !517, isLocal: true, isDefinition: true)
!514 = distinct !DISubprogram(name: "real_digit", scope: !3, file: !3, line: 2298, type: !492, scopeLine: 2299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !515)
!515 = !{!516}
!516 = !DILocalVariable(name: "n", arg: 1, scope: !514, file: !3, line: 2298, type: !373)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2560, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 10)
!520 = !{!521}
!521 = !DILocalVariable(name: "i", scope: !522, file: !3, line: 2363, type: !373)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 2347, column: 5)
!523 = distinct !DILexicalBlock(scope: !2, file: !3, line: 2346, column: 7)
!524 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!525 = !{i32 2, !"Dwarf Version", i32 4}
!526 = !{i32 2, !"Debug Info Version", i32 3}
!527 = !{i32 1, !"wchar_size", i32 4}
!528 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!529 = distinct !DISubprogram(name: "vprintf", scope: !530, file: !530, line: 39, type: !531, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !541)
!530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!531 = !DISubroutineType(types: !532)
!532 = !{!373, !533, !534}
!533 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !378)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !536)
!536 = !{!537, !538, !539, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !535, file: !3, baseType: !12, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !535, file: !3, baseType: !12, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !535, file: !3, baseType: !377, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !535, file: !3, baseType: !377, size: 64, offset: 128)
!541 = !{!542, !543}
!542 = !DILocalVariable(name: "__fmt", arg: 1, scope: !529, file: !530, line: 39, type: !533)
!543 = !DILocalVariable(name: "__arg", arg: 2, scope: !529, file: !530, line: 39, type: !534)
!544 = !DILocation(line: 0, scope: !529)
!545 = !DILocation(line: 41, column: 20, scope: !529)
!546 = !DILocation(line: 41, column: 10, scope: !529)
!547 = !DILocation(line: 41, column: 3, scope: !529)
!548 = distinct !DISubprogram(name: "getchar", scope: !530, file: !530, line: 47, type: !549, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !385)
!549 = !DISubroutineType(types: !550)
!550 = !{!373}
!551 = !DILocation(line: 49, column: 16, scope: !548)
!552 = !DILocation(line: 49, column: 10, scope: !548)
!553 = !DILocation(line: 49, column: 3, scope: !548)
!554 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !530, file: !530, line: 56, type: !555, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !613)
!555 = !DISubroutineType(types: !556)
!556 = !{!373, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !559, line: 7, baseType: !560)
!559 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !561, line: 49, size: 1728, elements: !562)
!561 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !578, !580, !581, !582, !585, !586, !588, !592, !595, !597, !600, !603, !604, !605, !608, !609}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !560, file: !561, line: 51, baseType: !373, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !560, file: !561, line: 54, baseType: !375, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !560, file: !561, line: 55, baseType: !375, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !560, file: !561, line: 56, baseType: !375, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !560, file: !561, line: 57, baseType: !375, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !560, file: !561, line: 58, baseType: !375, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !560, file: !561, line: 59, baseType: !375, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !560, file: !561, line: 60, baseType: !375, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !560, file: !561, line: 61, baseType: !375, size: 64, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !560, file: !561, line: 64, baseType: !375, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !560, file: !561, line: 65, baseType: !375, size: 64, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !560, file: !561, line: 66, baseType: !375, size: 64, offset: 704)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !560, file: !561, line: 68, baseType: !576, size: 64, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !561, line: 36, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !560, file: !561, line: 70, baseType: !579, size: 64, offset: 832)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !560, file: !561, line: 72, baseType: !373, size: 32, offset: 896)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !560, file: !561, line: 73, baseType: !373, size: 32, offset: 928)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !560, file: !561, line: 74, baseType: !583, size: 64, offset: 960)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !584, line: 152, baseType: !404)
!584 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !560, file: !561, line: 77, baseType: !380, size: 16, offset: 1024)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !560, file: !561, line: 78, baseType: !587, size: 8, offset: 1040)
!587 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !560, file: !561, line: 79, baseType: !589, size: 8, offset: 1048)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 8, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 1)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !560, file: !561, line: 81, baseType: !593, size: 64, offset: 1088)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !561, line: 43, baseType: null)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !560, file: !561, line: 89, baseType: !596, size: 64, offset: 1152)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !584, line: 153, baseType: !404)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !560, file: !561, line: 91, baseType: !598, size: 64, offset: 1216)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !561, line: 37, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !560, file: !561, line: 92, baseType: !601, size: 64, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !561, line: 38, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !560, file: !561, line: 93, baseType: !579, size: 64, offset: 1344)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !560, file: !561, line: 94, baseType: !377, size: 64, offset: 1408)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !560, file: !561, line: 95, baseType: !606, size: 64, offset: 1472)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !607, line: 46, baseType: !20)
!607 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !560, file: !561, line: 96, baseType: !373, size: 32, offset: 1536)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !560, file: !561, line: 98, baseType: !610, size: 160, offset: 1568)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 160, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 20)
!613 = !{!614}
!614 = !DILocalVariable(name: "__fp", arg: 1, scope: !554, file: !530, line: 56, type: !557)
!615 = !DILocation(line: 0, scope: !554)
!616 = !DILocation(line: 58, column: 10, scope: !554)
!617 = !DILocation(line: 58, column: 3, scope: !554)
!618 = distinct !DISubprogram(name: "getc_unlocked", scope: !530, file: !530, line: 66, type: !555, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !619)
!619 = !{!620}
!620 = !DILocalVariable(name: "__fp", arg: 1, scope: !618, file: !530, line: 66, type: !557)
!621 = !DILocation(line: 0, scope: !618)
!622 = !DILocation(line: 68, column: 10, scope: !618)
!623 = !DILocation(line: 68, column: 3, scope: !618)
!624 = distinct !DISubprogram(name: "getchar_unlocked", scope: !530, file: !530, line: 73, type: !549, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !385)
!625 = !DILocation(line: 75, column: 10, scope: !624)
!626 = !DILocation(line: 75, column: 3, scope: !624)
!627 = distinct !DISubprogram(name: "putchar", scope: !530, file: !530, line: 82, type: !628, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{!373, !373}
!630 = !{!631}
!631 = !DILocalVariable(name: "__c", arg: 1, scope: !627, file: !530, line: 82, type: !373)
!632 = !DILocation(line: 0, scope: !627)
!633 = !DILocation(line: 84, column: 21, scope: !627)
!634 = !DILocation(line: 84, column: 10, scope: !627)
!635 = !DILocation(line: 84, column: 3, scope: !627)
!636 = distinct !DISubprogram(name: "fputc_unlocked", scope: !530, file: !530, line: 91, type: !637, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!373, !373, !557}
!639 = !{!640, !641}
!640 = !DILocalVariable(name: "__c", arg: 1, scope: !636, file: !530, line: 91, type: !373)
!641 = !DILocalVariable(name: "__stream", arg: 2, scope: !636, file: !530, line: 91, type: !557)
!642 = !DILocation(line: 0, scope: !636)
!643 = !DILocation(line: 93, column: 10, scope: !636)
!644 = !DILocation(line: 93, column: 3, scope: !636)
!645 = distinct !DISubprogram(name: "putc_unlocked", scope: !530, file: !530, line: 101, type: !637, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !646)
!646 = !{!647, !648}
!647 = !DILocalVariable(name: "__c", arg: 1, scope: !645, file: !530, line: 101, type: !373)
!648 = !DILocalVariable(name: "__stream", arg: 2, scope: !645, file: !530, line: 101, type: !557)
!649 = !DILocation(line: 0, scope: !645)
!650 = !DILocation(line: 103, column: 10, scope: !645)
!651 = !DILocation(line: 103, column: 3, scope: !645)
!652 = distinct !DISubprogram(name: "putchar_unlocked", scope: !530, file: !530, line: 108, type: !628, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !653)
!653 = !{!654}
!654 = !DILocalVariable(name: "__c", arg: 1, scope: !652, file: !530, line: 108, type: !373)
!655 = !DILocation(line: 0, scope: !652)
!656 = !DILocation(line: 110, column: 10, scope: !652)
!657 = !DILocation(line: 110, column: 3, scope: !652)
!658 = distinct !DISubprogram(name: "getline", scope: !530, file: !530, line: 118, type: !659, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !663)
!659 = !DISubroutineType(types: !660)
!660 = !{!661, !374, !662, !557}
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !584, line: 193, baseType: !404)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!663 = !{!664, !665, !666}
!664 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !658, file: !530, line: 118, type: !374)
!665 = !DILocalVariable(name: "__n", arg: 2, scope: !658, file: !530, line: 118, type: !662)
!666 = !DILocalVariable(name: "__stream", arg: 3, scope: !658, file: !530, line: 118, type: !557)
!667 = !DILocation(line: 0, scope: !658)
!668 = !DILocation(line: 120, column: 10, scope: !658)
!669 = !DILocation(line: 120, column: 3, scope: !658)
!670 = distinct !DISubprogram(name: "feof_unlocked", scope: !530, file: !530, line: 128, type: !555, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !671)
!671 = !{!672}
!672 = !DILocalVariable(name: "__stream", arg: 1, scope: !670, file: !530, line: 128, type: !557)
!673 = !DILocation(line: 0, scope: !670)
!674 = !DILocation(line: 130, column: 10, scope: !670)
!675 = !DILocation(line: 130, column: 3, scope: !670)
!676 = distinct !DISubprogram(name: "ferror_unlocked", scope: !530, file: !530, line: 135, type: !555, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !677)
!677 = !{!678}
!678 = !DILocalVariable(name: "__stream", arg: 1, scope: !676, file: !530, line: 135, type: !557)
!679 = !DILocation(line: 0, scope: !676)
!680 = !DILocation(line: 137, column: 10, scope: !676)
!681 = !DILocation(line: 137, column: 3, scope: !676)
!682 = distinct !DISubprogram(name: "tolower", scope: !683, file: !683, line: 207, type: !628, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !684)
!683 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!684 = !{!685}
!685 = !DILocalVariable(name: "__c", arg: 1, scope: !682, file: !683, line: 207, type: !373)
!686 = !DILocation(line: 0, scope: !682)
!687 = !DILocation(line: 209, column: 22, scope: !682)
!688 = !DILocation(line: 209, column: 39, scope: !682)
!689 = !DILocation(line: 209, column: 38, scope: !682)
!690 = !DILocation(line: 209, column: 37, scope: !682)
!691 = !DILocation(line: 209, column: 10, scope: !682)
!692 = !DILocation(line: 209, column: 3, scope: !682)
!693 = distinct !DISubprogram(name: "toupper", scope: !683, file: !683, line: 213, type: !628, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !694)
!694 = !{!695}
!695 = !DILocalVariable(name: "__c", arg: 1, scope: !693, file: !683, line: 213, type: !373)
!696 = !DILocation(line: 0, scope: !693)
!697 = !DILocation(line: 215, column: 22, scope: !693)
!698 = !DILocation(line: 215, column: 39, scope: !693)
!699 = !DILocation(line: 215, column: 38, scope: !693)
!700 = !DILocation(line: 215, column: 37, scope: !693)
!701 = !DILocation(line: 215, column: 10, scope: !693)
!702 = !DILocation(line: 215, column: 3, scope: !693)
!703 = distinct !DISubprogram(name: "atoi", scope: !704, file: !704, line: 361, type: !705, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !707)
!704 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!705 = !DISubroutineType(types: !706)
!706 = !{!373, !378}
!707 = !{!708}
!708 = !DILocalVariable(name: "__nptr", arg: 1, scope: !703, file: !704, line: 361, type: !378)
!709 = !DILocation(line: 0, scope: !703)
!710 = !DILocation(line: 363, column: 16, scope: !703)
!711 = !DILocation(line: 363, column: 10, scope: !703)
!712 = !DILocation(line: 363, column: 3, scope: !703)
!713 = distinct !DISubprogram(name: "atol", scope: !704, file: !704, line: 366, type: !714, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !716)
!714 = !DISubroutineType(types: !715)
!715 = !{!404, !378}
!716 = !{!717}
!717 = !DILocalVariable(name: "__nptr", arg: 1, scope: !713, file: !704, line: 366, type: !378)
!718 = !DILocation(line: 0, scope: !713)
!719 = !DILocation(line: 368, column: 10, scope: !713)
!720 = !DILocation(line: 368, column: 3, scope: !713)
!721 = distinct !DISubprogram(name: "atoll", scope: !704, file: !704, line: 373, type: !722, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !725)
!722 = !DISubroutineType(types: !723)
!723 = !{!724, !378}
!724 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!725 = !{!726}
!726 = !DILocalVariable(name: "__nptr", arg: 1, scope: !721, file: !704, line: 373, type: !378)
!727 = !DILocation(line: 0, scope: !721)
!728 = !DILocation(line: 375, column: 10, scope: !721)
!729 = !DILocation(line: 375, column: 3, scope: !721)
!730 = distinct !DISubprogram(name: "bsearch", scope: !731, file: !731, line: 20, type: !732, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !740)
!731 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!732 = !DISubroutineType(types: !733)
!733 = !{!377, !734, !734, !606, !606, !736}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !704, line: 808, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!373, !734, !734}
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!741 = !DILocalVariable(name: "__key", arg: 1, scope: !730, file: !731, line: 20, type: !734)
!742 = !DILocalVariable(name: "__base", arg: 2, scope: !730, file: !731, line: 20, type: !734)
!743 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !730, file: !731, line: 20, type: !606)
!744 = !DILocalVariable(name: "__size", arg: 4, scope: !730, file: !731, line: 20, type: !606)
!745 = !DILocalVariable(name: "__compar", arg: 5, scope: !730, file: !731, line: 21, type: !736)
!746 = !DILocalVariable(name: "__l", scope: !730, file: !731, line: 23, type: !606)
!747 = !DILocalVariable(name: "__u", scope: !730, file: !731, line: 23, type: !606)
!748 = !DILocalVariable(name: "__idx", scope: !730, file: !731, line: 23, type: !606)
!749 = !DILocalVariable(name: "__p", scope: !730, file: !731, line: 24, type: !734)
!750 = !DILocalVariable(name: "__comparison", scope: !730, file: !731, line: 25, type: !373)
!751 = !DILocation(line: 0, scope: !730)
!752 = !DILocation(line: 29, column: 3, scope: !730)
!753 = !DILocation(line: 27, column: 7, scope: !730)
!754 = !DILocation(line: 29, column: 14, scope: !730)
!755 = !DILocation(line: 31, column: 20, scope: !756)
!756 = distinct !DILexicalBlock(scope: !730, file: !731, line: 30, column: 5)
!757 = !DILocation(line: 31, column: 27, scope: !756)
!758 = !DILocation(line: 32, column: 56, scope: !756)
!759 = !DILocation(line: 32, column: 47, scope: !756)
!760 = !DILocation(line: 33, column: 22, scope: !756)
!761 = !DILocation(line: 34, column: 24, scope: !762)
!762 = distinct !DILexicalBlock(scope: !756, file: !731, line: 34, column: 11)
!763 = !DILocation(line: 34, column: 11, scope: !756)
!764 = !DILocation(line: 36, column: 29, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !731, line: 36, column: 16)
!766 = !DILocation(line: 36, column: 16, scope: !762)
!767 = !DILocation(line: 37, column: 14, scope: !765)
!768 = distinct !{!768, !752, !769}
!769 = !DILocation(line: 40, column: 5, scope: !730)
!770 = !DILocation(line: 43, column: 1, scope: !730)
!771 = distinct !DISubprogram(name: "atof", scope: !772, file: !772, line: 25, type: !773, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !776)
!772 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!773 = !DISubroutineType(types: !774)
!774 = !{!775, !378}
!775 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!776 = !{!777}
!777 = !DILocalVariable(name: "__nptr", arg: 1, scope: !771, file: !772, line: 25, type: !378)
!778 = !DILocation(line: 0, scope: !771)
!779 = !DILocation(line: 27, column: 10, scope: !771)
!780 = !DILocation(line: 27, column: 3, scope: !771)
!781 = distinct !DISubprogram(name: "strtoimax", scope: !782, file: !782, line: 324, type: !783, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !789)
!782 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!783 = !DISubroutineType(types: !784)
!784 = !{!785, !533, !788, !373}
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !786, line: 101, baseType: !787)
!786 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !584, line: 72, baseType: !404)
!788 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !374)
!789 = !{!790, !791, !792}
!790 = !DILocalVariable(name: "nptr", arg: 1, scope: !781, file: !782, line: 324, type: !533)
!791 = !DILocalVariable(name: "endptr", arg: 2, scope: !781, file: !782, line: 324, type: !788)
!792 = !DILocalVariable(name: "base", arg: 3, scope: !781, file: !782, line: 324, type: !373)
!793 = !DILocation(line: 0, scope: !781)
!794 = !DILocation(line: 327, column: 10, scope: !781)
!795 = !DILocation(line: 327, column: 3, scope: !781)
!796 = distinct !DISubprogram(name: "strtoumax", scope: !782, file: !782, line: 336, type: !797, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !801)
!797 = !DISubroutineType(types: !798)
!798 = !{!799, !533, !788, !373}
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !786, line: 102, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !584, line: 73, baseType: !20)
!801 = !{!802, !803, !804}
!802 = !DILocalVariable(name: "nptr", arg: 1, scope: !796, file: !782, line: 336, type: !533)
!803 = !DILocalVariable(name: "endptr", arg: 2, scope: !796, file: !782, line: 336, type: !788)
!804 = !DILocalVariable(name: "base", arg: 3, scope: !796, file: !782, line: 336, type: !373)
!805 = !DILocation(line: 0, scope: !796)
!806 = !DILocation(line: 339, column: 10, scope: !796)
!807 = !DILocation(line: 339, column: 3, scope: !796)
!808 = distinct !DISubprogram(name: "wcstoimax", scope: !782, file: !782, line: 348, type: !809, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !818)
!809 = !DISubroutineType(types: !810)
!810 = !{!785, !811, !815, !373}
!811 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !782, line: 34, baseType: !373)
!815 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!818 = !{!819, !820, !821}
!819 = !DILocalVariable(name: "nptr", arg: 1, scope: !808, file: !782, line: 348, type: !811)
!820 = !DILocalVariable(name: "endptr", arg: 2, scope: !808, file: !782, line: 348, type: !815)
!821 = !DILocalVariable(name: "base", arg: 3, scope: !808, file: !782, line: 348, type: !373)
!822 = !DILocation(line: 0, scope: !808)
!823 = !DILocation(line: 351, column: 10, scope: !808)
!824 = !DILocation(line: 351, column: 3, scope: !808)
!825 = distinct !DISubprogram(name: "wcstoumax", scope: !782, file: !782, line: 362, type: !826, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{!799, !811, !815, !373}
!828 = !{!829, !830, !831}
!829 = !DILocalVariable(name: "nptr", arg: 1, scope: !825, file: !782, line: 362, type: !811)
!830 = !DILocalVariable(name: "endptr", arg: 2, scope: !825, file: !782, line: 362, type: !815)
!831 = !DILocalVariable(name: "base", arg: 3, scope: !825, file: !782, line: 362, type: !373)
!832 = !DILocation(line: 0, scope: !825)
!833 = !DILocation(line: 365, column: 10, scope: !825)
!834 = !DILocation(line: 365, column: 3, scope: !825)
!835 = distinct !DISubprogram(name: "stat", scope: !836, file: !836, line: 453, type: !837, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !874)
!836 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!837 = !DISubroutineType(types: !838)
!838 = !{!373, !378, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !841, line: 46, size: 1152, elements: !842)
!841 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!842 = !{!843, !845, !847, !849, !851, !853, !855, !856, !857, !858, !860, !862, !870, !871, !872}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !840, file: !841, line: 48, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !584, line: 145, baseType: !20)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !840, file: !841, line: 53, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !584, line: 148, baseType: !20)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !840, file: !841, line: 61, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !584, line: 151, baseType: !20)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !840, file: !841, line: 62, baseType: !850, size: 32, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !584, line: 150, baseType: !12)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !840, file: !841, line: 64, baseType: !852, size: 32, offset: 224)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !584, line: 146, baseType: !12)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !840, file: !841, line: 65, baseType: !854, size: 32, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !584, line: 147, baseType: !12)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !840, file: !841, line: 67, baseType: !373, size: 32, offset: 288)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !840, file: !841, line: 69, baseType: !844, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !840, file: !841, line: 74, baseType: !583, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !840, file: !841, line: 78, baseType: !859, size: 64, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !584, line: 174, baseType: !404)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !840, file: !841, line: 80, baseType: !861, size: 64, offset: 512)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !584, line: 179, baseType: !404)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !840, file: !841, line: 91, baseType: !863, size: 128, offset: 576)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !864, line: 10, size: 128, elements: !865)
!864 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!865 = !{!866, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !863, file: !864, line: 12, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !584, line: 160, baseType: !404)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !863, file: !864, line: 16, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !584, line: 196, baseType: !404)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !840, file: !841, line: 92, baseType: !863, size: 128, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !840, file: !841, line: 93, baseType: !863, size: 128, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !840, file: !841, line: 106, baseType: !873, size: 192, offset: 960)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 192, elements: !21)
!874 = !{!875, !876}
!875 = !DILocalVariable(name: "__path", arg: 1, scope: !835, file: !836, line: 453, type: !378)
!876 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !835, file: !836, line: 453, type: !839)
!877 = !DILocation(line: 0, scope: !835)
!878 = !DILocation(line: 455, column: 10, scope: !835)
!879 = !DILocation(line: 455, column: 3, scope: !835)
!880 = distinct !DISubprogram(name: "lstat", scope: !836, file: !836, line: 460, type: !837, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !881)
!881 = !{!882, !883}
!882 = !DILocalVariable(name: "__path", arg: 1, scope: !880, file: !836, line: 460, type: !378)
!883 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !880, file: !836, line: 460, type: !839)
!884 = !DILocation(line: 0, scope: !880)
!885 = !DILocation(line: 462, column: 10, scope: !880)
!886 = !DILocation(line: 462, column: 3, scope: !880)
!887 = distinct !DISubprogram(name: "fstat", scope: !836, file: !836, line: 467, type: !888, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{!373, !373, !839}
!890 = !{!891, !892}
!891 = !DILocalVariable(name: "__fd", arg: 1, scope: !887, file: !836, line: 467, type: !373)
!892 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !887, file: !836, line: 467, type: !839)
!893 = !DILocation(line: 0, scope: !887)
!894 = !DILocation(line: 469, column: 10, scope: !887)
!895 = !DILocation(line: 469, column: 3, scope: !887)
!896 = distinct !DISubprogram(name: "fstatat", scope: !836, file: !836, line: 474, type: !897, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !899)
!897 = !DISubroutineType(types: !898)
!898 = !{!373, !373, !378, !839, !373}
!899 = !{!900, !901, !902, !903}
!900 = !DILocalVariable(name: "__fd", arg: 1, scope: !896, file: !836, line: 474, type: !373)
!901 = !DILocalVariable(name: "__filename", arg: 2, scope: !896, file: !836, line: 474, type: !378)
!902 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !896, file: !836, line: 474, type: !839)
!903 = !DILocalVariable(name: "__flag", arg: 4, scope: !896, file: !836, line: 474, type: !373)
!904 = !DILocation(line: 0, scope: !896)
!905 = !DILocation(line: 477, column: 10, scope: !896)
!906 = !DILocation(line: 477, column: 3, scope: !896)
!907 = distinct !DISubprogram(name: "mknod", scope: !836, file: !836, line: 483, type: !908, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !910)
!908 = !DISubroutineType(types: !909)
!909 = !{!373, !378, !850, !844}
!910 = !{!911, !912, !913}
!911 = !DILocalVariable(name: "__path", arg: 1, scope: !907, file: !836, line: 483, type: !378)
!912 = !DILocalVariable(name: "__mode", arg: 2, scope: !907, file: !836, line: 483, type: !850)
!913 = !DILocalVariable(name: "__dev", arg: 3, scope: !907, file: !836, line: 483, type: !844)
!914 = !DILocation(line: 0, scope: !907)
!915 = !DILocation(line: 485, column: 10, scope: !907)
!916 = !DILocation(line: 485, column: 3, scope: !907)
!917 = distinct !DISubprogram(name: "mknodat", scope: !836, file: !836, line: 491, type: !918, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{!373, !373, !378, !850, !844}
!920 = !{!921, !922, !923, !924}
!921 = !DILocalVariable(name: "__fd", arg: 1, scope: !917, file: !836, line: 491, type: !373)
!922 = !DILocalVariable(name: "__path", arg: 2, scope: !917, file: !836, line: 491, type: !378)
!923 = !DILocalVariable(name: "__mode", arg: 3, scope: !917, file: !836, line: 491, type: !850)
!924 = !DILocalVariable(name: "__dev", arg: 4, scope: !917, file: !836, line: 491, type: !844)
!925 = !DILocation(line: 0, scope: !917)
!926 = !DILocation(line: 494, column: 10, scope: !917)
!927 = !DILocation(line: 494, column: 3, scope: !917)
!928 = distinct !DISubprogram(name: "stat64", scope: !836, file: !836, line: 502, type: !929, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !951)
!929 = !DISubroutineType(types: !930)
!930 = !{!373, !378, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !841, line: 119, size: 1152, elements: !933)
!933 = !{!934, !935, !937, !938, !939, !940, !941, !942, !943, !944, !945, !947, !948, !949, !950}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !932, file: !841, line: 121, baseType: !844, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !932, file: !841, line: 123, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !584, line: 149, baseType: !20)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !932, file: !841, line: 124, baseType: !848, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !932, file: !841, line: 125, baseType: !850, size: 32, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !932, file: !841, line: 132, baseType: !852, size: 32, offset: 224)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !932, file: !841, line: 133, baseType: !854, size: 32, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !932, file: !841, line: 135, baseType: !373, size: 32, offset: 288)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !932, file: !841, line: 136, baseType: !844, size: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !932, file: !841, line: 137, baseType: !583, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !932, file: !841, line: 143, baseType: !859, size: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !932, file: !841, line: 144, baseType: !946, size: 64, offset: 512)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !584, line: 180, baseType: !404)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !932, file: !841, line: 152, baseType: !863, size: 128, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !932, file: !841, line: 153, baseType: !863, size: 128, offset: 704)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !932, file: !841, line: 154, baseType: !863, size: 128, offset: 832)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !932, file: !841, line: 164, baseType: !873, size: 192, offset: 960)
!951 = !{!952, !953}
!952 = !DILocalVariable(name: "__path", arg: 1, scope: !928, file: !836, line: 502, type: !378)
!953 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !928, file: !836, line: 502, type: !931)
!954 = !DILocation(line: 0, scope: !928)
!955 = !DILocation(line: 504, column: 10, scope: !928)
!956 = !DILocation(line: 504, column: 3, scope: !928)
!957 = distinct !DISubprogram(name: "lstat64", scope: !836, file: !836, line: 509, type: !929, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !958)
!958 = !{!959, !960}
!959 = !DILocalVariable(name: "__path", arg: 1, scope: !957, file: !836, line: 509, type: !378)
!960 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !957, file: !836, line: 509, type: !931)
!961 = !DILocation(line: 0, scope: !957)
!962 = !DILocation(line: 511, column: 10, scope: !957)
!963 = !DILocation(line: 511, column: 3, scope: !957)
!964 = distinct !DISubprogram(name: "fstat64", scope: !836, file: !836, line: 516, type: !965, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{!373, !373, !931}
!967 = !{!968, !969}
!968 = !DILocalVariable(name: "__fd", arg: 1, scope: !964, file: !836, line: 516, type: !373)
!969 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !964, file: !836, line: 516, type: !931)
!970 = !DILocation(line: 0, scope: !964)
!971 = !DILocation(line: 518, column: 10, scope: !964)
!972 = !DILocation(line: 518, column: 3, scope: !964)
!973 = distinct !DISubprogram(name: "fstatat64", scope: !836, file: !836, line: 523, type: !974, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!373, !373, !378, !931, !373}
!976 = !{!977, !978, !979, !980}
!977 = !DILocalVariable(name: "__fd", arg: 1, scope: !973, file: !836, line: 523, type: !373)
!978 = !DILocalVariable(name: "__filename", arg: 2, scope: !973, file: !836, line: 523, type: !378)
!979 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !973, file: !836, line: 523, type: !931)
!980 = !DILocalVariable(name: "__flag", arg: 4, scope: !973, file: !836, line: 523, type: !373)
!981 = !DILocation(line: 0, scope: !973)
!982 = !DILocation(line: 526, column: 10, scope: !973)
!983 = !DILocation(line: 526, column: 3, scope: !973)
!984 = distinct !DISubprogram(name: "real_arithmetic", scope: !3, file: !3, line: 1000, type: !985, scopeLine: 1002, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!372, !409, !373, !6, !6}
!987 = !{!988, !989, !990, !991, !992}
!988 = !DILocalVariable(name: "r", arg: 1, scope: !984, file: !3, line: 1000, type: !409)
!989 = !DILocalVariable(name: "icode", arg: 2, scope: !984, file: !3, line: 1000, type: !373)
!990 = !DILocalVariable(name: "op0", arg: 3, scope: !984, file: !3, line: 1000, type: !6)
!991 = !DILocalVariable(name: "op1", arg: 4, scope: !984, file: !3, line: 1001, type: !6)
!992 = !DILocalVariable(name: "code", scope: !984, file: !3, line: 1003, type: !25)
!993 = !DILocation(line: 0, scope: !984)
!994 = !DILocation(line: 1005, column: 12, scope: !995)
!995 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1005, column: 7)
!996 = !DILocation(line: 1005, column: 7, scope: !995)
!997 = !DILocation(line: 1005, column: 20, scope: !995)
!998 = !DILocation(line: 1005, column: 24, scope: !995)
!999 = !DILocation(line: 1005, column: 28, scope: !995)
!1000 = !DILocation(line: 1005, column: 36, scope: !995)
!1001 = !DILocation(line: 1005, column: 31, scope: !995)
!1002 = !DILocation(line: 1005, column: 7, scope: !984)
!1003 = !DILocation(line: 1006, column: 12, scope: !995)
!1004 = !DILocation(line: 1006, column: 5, scope: !995)
!1005 = !DILocation(line: 1008, column: 3, scope: !984)
!1006 = !DILocation(line: 1011, column: 14, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1009, column: 5)
!1008 = !DILocation(line: 1011, column: 7, scope: !1007)
!1009 = !DILocation(line: 1014, column: 14, scope: !1007)
!1010 = !DILocation(line: 1014, column: 7, scope: !1007)
!1011 = !DILocation(line: 1017, column: 14, scope: !1007)
!1012 = !DILocation(line: 1017, column: 7, scope: !1007)
!1013 = !DILocation(line: 1020, column: 14, scope: !1007)
!1014 = !DILocation(line: 1020, column: 7, scope: !1007)
!1015 = !DILocation(line: 1023, column: 16, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 1023, column: 11)
!1017 = !DILocation(line: 1023, column: 19, scope: !1016)
!1018 = !DILocation(line: 1023, column: 11, scope: !1007)
!1019 = !DILocation(line: 1024, column: 7, scope: !1016)
!1020 = !DILocation(line: 1024, column: 2, scope: !1016)
!1021 = !DILocation(line: 1025, column: 16, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 1025, column: 16)
!1023 = !DILocation(line: 1025, column: 42, scope: !1022)
!1024 = !DILocation(line: 0, scope: !1022)
!1025 = !DILocation(line: 1025, column: 16, scope: !1016)
!1026 = !DILocation(line: 1026, column: 7, scope: !1022)
!1027 = !DILocation(line: 1026, column: 2, scope: !1022)
!1028 = !DILocation(line: 1028, column: 7, scope: !1022)
!1029 = !DILocation(line: 1032, column: 16, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 1032, column: 11)
!1031 = !DILocation(line: 1032, column: 19, scope: !1030)
!1032 = !DILocation(line: 1032, column: 11, scope: !1007)
!1033 = !DILocation(line: 1033, column: 7, scope: !1030)
!1034 = !DILocation(line: 1033, column: 2, scope: !1030)
!1035 = !DILocation(line: 1034, column: 16, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 1034, column: 16)
!1037 = !DILocation(line: 1034, column: 41, scope: !1036)
!1038 = !DILocation(line: 0, scope: !1036)
!1039 = !DILocation(line: 1034, column: 16, scope: !1030)
!1040 = !DILocation(line: 1035, column: 7, scope: !1036)
!1041 = !DILocation(line: 1035, column: 2, scope: !1036)
!1042 = !DILocation(line: 1037, column: 7, scope: !1036)
!1043 = !DILocation(line: 1041, column: 12, scope: !1007)
!1044 = !DILocation(line: 1042, column: 10, scope: !1007)
!1045 = !DILocation(line: 1042, column: 15, scope: !1007)
!1046 = !DILocation(line: 1043, column: 7, scope: !1007)
!1047 = !DILocation(line: 1046, column: 12, scope: !1007)
!1048 = !DILocation(line: 1047, column: 10, scope: !1007)
!1049 = !DILocation(line: 1047, column: 15, scope: !1007)
!1050 = !DILocation(line: 1048, column: 7, scope: !1007)
!1051 = !DILocation(line: 1051, column: 7, scope: !1007)
!1052 = !DILocation(line: 1052, column: 7, scope: !1007)
!1053 = !DILocation(line: 1055, column: 7, scope: !1007)
!1054 = !DILocation(line: 1056, column: 5, scope: !1007)
!1055 = !DILocation(line: 1058, column: 1, scope: !984)
!1056 = distinct !DISubprogram(name: "do_add", scope: !3, file: !3, line: 524, type: !1057, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!372, !409, !6, !6, !373}
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069}
!1060 = !DILocalVariable(name: "r", arg: 1, scope: !1056, file: !3, line: 524, type: !409)
!1061 = !DILocalVariable(name: "a", arg: 2, scope: !1056, file: !3, line: 524, type: !6)
!1062 = !DILocalVariable(name: "b", arg: 3, scope: !1056, file: !3, line: 525, type: !6)
!1063 = !DILocalVariable(name: "subtract_p", arg: 4, scope: !1056, file: !3, line: 525, type: !373)
!1064 = !DILocalVariable(name: "dexp", scope: !1056, file: !3, line: 527, type: !373)
!1065 = !DILocalVariable(name: "sign", scope: !1056, file: !3, line: 527, type: !373)
!1066 = !DILocalVariable(name: "exp", scope: !1056, file: !3, line: 527, type: !373)
!1067 = !DILocalVariable(name: "t", scope: !1056, file: !3, line: 528, type: !8)
!1068 = !DILocalVariable(name: "inexact", scope: !1056, file: !3, line: 529, type: !372)
!1069 = !DILocalVariable(name: "t", scope: !1070, file: !3, line: 588, type: !6)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 587, column: 5)
!1071 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 586, column: 7)
!1072 = !DILocation(line: 0, scope: !1056)
!1073 = !DILocation(line: 528, column: 3, scope: !1056)
!1074 = !DILocation(line: 532, column: 13, scope: !1056)
!1075 = !DILocation(line: 533, column: 27, scope: !1056)
!1076 = !DILocation(line: 533, column: 22, scope: !1056)
!1077 = !DILocation(line: 533, column: 33, scope: !1056)
!1078 = !DILocation(line: 535, column: 11, scope: !1056)
!1079 = !DILocation(line: 535, column: 3, scope: !1056)
!1080 = !DILocation(line: 539, column: 27, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 536, column: 5)
!1082 = !DILocation(line: 539, column: 25, scope: !1081)
!1083 = !DILocation(line: 539, column: 7, scope: !1081)
!1084 = !DILocation(line: 540, column: 7, scope: !1081)
!1085 = !DILocation(line: 552, column: 12, scope: !1081)
!1086 = !DILocation(line: 553, column: 22, scope: !1081)
!1087 = !DILocation(line: 553, column: 10, scope: !1081)
!1088 = !DILocation(line: 553, column: 15, scope: !1081)
!1089 = !DILocation(line: 554, column: 7, scope: !1081)
!1090 = !DILocation(line: 565, column: 12, scope: !1081)
!1091 = !DILocation(line: 566, column: 7, scope: !1081)
!1092 = !DILocation(line: 569, column: 11, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 569, column: 11)
!1094 = !DILocation(line: 569, column: 11, scope: !1081)
!1095 = !DILocation(line: 571, column: 2, scope: !1093)
!1096 = !DILocation(line: 574, column: 7, scope: !1093)
!1097 = !DILocation(line: 585, column: 10, scope: !1056)
!1098 = !DILocation(line: 585, column: 25, scope: !1056)
!1099 = !DILocation(line: 585, column: 23, scope: !1056)
!1100 = !DILocation(line: 586, column: 12, scope: !1071)
!1101 = !DILocation(line: 586, column: 7, scope: !1056)
!1102 = !DILocation(line: 0, scope: !1070)
!1103 = !DILocation(line: 590, column: 14, scope: !1070)
!1104 = !DILocation(line: 591, column: 12, scope: !1070)
!1105 = !DILocation(line: 592, column: 5, scope: !1070)
!1106 = !DILocation(line: 593, column: 9, scope: !1056)
!1107 = !DILocation(line: 597, column: 12, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 597, column: 7)
!1109 = !DILocation(line: 597, column: 7, scope: !1056)
!1110 = !DILocation(line: 601, column: 16, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 601, column: 11)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 598, column: 5)
!1113 = !DILocation(line: 601, column: 11, scope: !1112)
!1114 = !DILocation(line: 603, column: 9, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 602, column: 2)
!1116 = !DILocation(line: 604, column: 7, scope: !1115)
!1117 = !DILocation(line: 604, column: 12, scope: !1115)
!1118 = !DILocation(line: 605, column: 4, scope: !1115)
!1119 = !DILocation(line: 608, column: 18, scope: !1112)
!1120 = !DILocation(line: 610, column: 5, scope: !1112)
!1121 = !DILocation(line: 612, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 612, column: 7)
!1123 = !DILocation(line: 612, column: 7, scope: !1056)
!1124 = !DILocation(line: 614, column: 38, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 614, column: 11)
!1126 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 613, column: 5)
!1127 = !DILocation(line: 614, column: 11, scope: !1125)
!1128 = !DILocation(line: 614, column: 11, scope: !1126)
!1129 = !DILocation(line: 620, column: 9, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 615, column: 2)
!1131 = !DILocation(line: 621, column: 4, scope: !1130)
!1132 = !DILocation(line: 622, column: 2, scope: !1130)
!1133 = !DILocation(line: 626, column: 11, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 626, column: 11)
!1135 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 625, column: 5)
!1136 = !DILocation(line: 626, column: 11, scope: !1135)
!1137 = !DILocation(line: 631, column: 15, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 627, column: 2)
!1139 = !DILocation(line: 631, column: 12, scope: !1138)
!1140 = !DILocation(line: 632, column: 4, scope: !1138)
!1141 = !DILocation(line: 632, column: 20, scope: !1138)
!1142 = !DILocation(line: 633, column: 8, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 633, column: 8)
!1144 = !DILocation(line: 633, column: 14, scope: !1143)
!1145 = !DILocation(line: 633, column: 8, scope: !1138)
!1146 = !DILocation(line: 635, column: 8, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 634, column: 6)
!1148 = !DILocation(line: 636, column: 8, scope: !1147)
!1149 = !DILocation(line: 642, column: 11, scope: !1056)
!1150 = !DILocation(line: 643, column: 3, scope: !1056)
!1151 = !DILocation(line: 647, column: 6, scope: !1056)
!1152 = !DILocation(line: 647, column: 14, scope: !1056)
!1153 = !DILocation(line: 650, column: 3, scope: !1056)
!1154 = !DILocation(line: 654, column: 10, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 654, column: 7)
!1156 = !DILocation(line: 654, column: 13, scope: !1155)
!1157 = !DILocation(line: 654, column: 7, scope: !1056)
!1158 = !DILocation(line: 655, column: 13, scope: !1155)
!1159 = !DILocation(line: 655, column: 5, scope: !1155)
!1160 = !DILocation(line: 657, column: 18, scope: !1155)
!1161 = !DILocation(line: 657, column: 5, scope: !1155)
!1162 = !DILocation(line: 657, column: 15, scope: !1155)
!1163 = !DILocation(line: 660, column: 1, scope: !1056)
!1164 = distinct !DISubprogram(name: "do_multiply", scope: !3, file: !3, line: 665, type: !1165, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1167)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!372, !409, !6, !6}
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1183, !1187}
!1168 = !DILocalVariable(name: "r", arg: 1, scope: !1164, file: !3, line: 665, type: !409)
!1169 = !DILocalVariable(name: "a", arg: 2, scope: !1164, file: !3, line: 665, type: !6)
!1170 = !DILocalVariable(name: "b", arg: 3, scope: !1164, file: !3, line: 666, type: !6)
!1171 = !DILocalVariable(name: "u", scope: !1164, file: !3, line: 668, type: !8)
!1172 = !DILocalVariable(name: "t", scope: !1164, file: !3, line: 668, type: !8)
!1173 = !DILocalVariable(name: "rr", scope: !1164, file: !3, line: 668, type: !409)
!1174 = !DILocalVariable(name: "i", scope: !1164, file: !3, line: 669, type: !12)
!1175 = !DILocalVariable(name: "j", scope: !1164, file: !3, line: 669, type: !12)
!1176 = !DILocalVariable(name: "k", scope: !1164, file: !3, line: 669, type: !12)
!1177 = !DILocalVariable(name: "sign", scope: !1164, file: !3, line: 670, type: !373)
!1178 = !DILocalVariable(name: "inexact", scope: !1164, file: !3, line: 671, type: !372)
!1179 = !DILocalVariable(name: "ai", scope: !1180, file: !3, line: 745, type: !20)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 744, column: 5)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 743, column: 3)
!1182 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 743, column: 3)
!1183 = !DILocalVariable(name: "exp", scope: !1184, file: !3, line: 756, type: !373)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 755, column: 2)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 754, column: 7)
!1186 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 754, column: 7)
!1187 = !DILocalVariable(name: "bi", scope: !1188, file: !3, line: 777, type: !20)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 776, column: 6)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 775, column: 4)
!1190 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 775, column: 4)
!1191 = !DILocation(line: 0, scope: !1164)
!1192 = !DILocation(line: 668, column: 3, scope: !1164)
!1193 = !DILocation(line: 670, column: 17, scope: !1164)
!1194 = !DILocation(line: 670, column: 27, scope: !1164)
!1195 = !DILocation(line: 670, column: 22, scope: !1164)
!1196 = !DILocation(line: 673, column: 11, scope: !1164)
!1197 = !DILocation(line: 673, column: 3, scope: !1164)
!1198 = !DILocation(line: 679, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 674, column: 5)
!1200 = !DILocation(line: 680, column: 7, scope: !1199)
!1201 = !DILocation(line: 687, column: 12, scope: !1199)
!1202 = !DILocation(line: 688, column: 10, scope: !1199)
!1203 = !DILocation(line: 688, column: 15, scope: !1199)
!1204 = !DILocation(line: 689, column: 7, scope: !1199)
!1205 = !DILocation(line: 695, column: 12, scope: !1199)
!1206 = !DILocation(line: 696, column: 10, scope: !1199)
!1207 = !DILocation(line: 696, column: 15, scope: !1199)
!1208 = !DILocation(line: 697, column: 7, scope: !1199)
!1209 = !DILocation(line: 702, column: 7, scope: !1199)
!1210 = !DILocation(line: 703, column: 7, scope: !1199)
!1211 = !DILocation(line: 709, column: 7, scope: !1199)
!1212 = !DILocation(line: 710, column: 7, scope: !1199)
!1213 = !DILocation(line: 719, column: 9, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 719, column: 7)
!1215 = !DILocation(line: 719, column: 19, scope: !1214)
!1216 = !DILocation(line: 719, column: 14, scope: !1214)
!1217 = !DILocation(line: 723, column: 3, scope: !1164)
!1218 = !DILocation(line: 0, scope: !1184)
!1219 = !DILocation(line: 743, column: 8, scope: !1182)
!1220 = !DILocation(line: 671, column: 8, scope: !1164)
!1221 = !DILocation(line: 0, scope: !1182)
!1222 = !DILocation(line: 743, column: 17, scope: !1181)
!1223 = !DILocation(line: 743, column: 3, scope: !1182)
!1224 = !DILocation(line: 745, column: 35, scope: !1180)
!1225 = !DILocation(line: 745, column: 26, scope: !1180)
!1226 = !DILocation(line: 0, scope: !1180)
!1227 = !DILocation(line: 746, column: 13, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 746, column: 11)
!1229 = !DILocation(line: 746, column: 11, scope: !1180)
!1230 = !DILocation(line: 751, column: 14, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 751, column: 11)
!1232 = !DILocation(line: 751, column: 11, scope: !1180)
!1233 = !DILocation(line: 754, column: 7, scope: !1186)
!1234 = !DILocation(line: 0, scope: !1186)
!1235 = !DILocation(line: 754, column: 21, scope: !1185)
!1236 = !DILocation(line: 756, column: 15, scope: !1184)
!1237 = !DILocation(line: 756, column: 28, scope: !1184)
!1238 = !DILocation(line: 757, column: 11, scope: !1184)
!1239 = !DILocation(line: 757, column: 31, scope: !1184)
!1240 = !DILocation(line: 757, column: 24, scope: !1184)
!1241 = !DILocation(line: 757, column: 8, scope: !1184)
!1242 = !DILocation(line: 759, column: 12, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 759, column: 8)
!1244 = !DILocation(line: 759, column: 8, scope: !1184)
!1245 = !DILocation(line: 761, column: 8, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 760, column: 6)
!1247 = !DILocation(line: 762, column: 8, scope: !1246)
!1248 = !DILocation(line: 764, column: 12, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 764, column: 8)
!1250 = !DILocation(line: 764, column: 8, scope: !1184)
!1251 = !DILocation(line: 771, column: 4, scope: !1184)
!1252 = !DILocation(line: 772, column: 9, scope: !1184)
!1253 = !DILocation(line: 773, column: 4, scope: !1184)
!1254 = !DILocation(line: 775, column: 9, scope: !1190)
!1255 = !DILocation(line: 0, scope: !1190)
!1256 = !DILocation(line: 775, column: 18, scope: !1189)
!1257 = !DILocation(line: 775, column: 4, scope: !1190)
!1258 = !DILocation(line: 777, column: 36, scope: !1188)
!1259 = !DILocation(line: 777, column: 27, scope: !1188)
!1260 = !DILocation(line: 0, scope: !1188)
!1261 = !DILocation(line: 778, column: 12, scope: !1188)
!1262 = !DILocation(line: 783, column: 26, scope: !1188)
!1263 = !DILocation(line: 783, column: 8, scope: !1188)
!1264 = !DILocation(line: 783, column: 21, scope: !1188)
!1265 = !DILocation(line: 775, column: 33, scope: !1189)
!1266 = !DILocation(line: 775, column: 4, scope: !1189)
!1267 = distinct !{!1267, !1257, !1268}
!1268 = !DILocation(line: 784, column: 6, scope: !1190)
!1269 = !DILocation(line: 786, column: 4, scope: !1184)
!1270 = !DILocation(line: 787, column: 15, scope: !1184)
!1271 = !DILocation(line: 787, column: 12, scope: !1184)
!1272 = !DILocation(line: 788, column: 2, scope: !1185)
!1273 = !DILocation(line: 754, column: 26, scope: !1185)
!1274 = !DILocation(line: 754, column: 7, scope: !1185)
!1275 = distinct !{!1275, !1233, !1276}
!1276 = !DILocation(line: 788, column: 2, scope: !1186)
!1277 = !DILocation(line: 743, column: 30, scope: !1181)
!1278 = !DILocation(line: 743, column: 3, scope: !1181)
!1279 = distinct !{!1279, !1223, !1280}
!1280 = !DILocation(line: 789, column: 5, scope: !1182)
!1281 = !DILocation(line: 791, column: 7, scope: !1164)
!1282 = !DILocation(line: 791, column: 12, scope: !1164)
!1283 = !DILocation(line: 792, column: 10, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 792, column: 7)
!1285 = !DILocation(line: 792, column: 7, scope: !1164)
!1286 = !DILocation(line: 793, column: 10, scope: !1284)
!1287 = !DILocation(line: 793, column: 5, scope: !1284)
!1288 = !DILocation(line: 796, column: 1, scope: !1164)
!1289 = distinct !DISubprogram(name: "do_divide", scope: !3, file: !3, line: 801, type: !1165, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298}
!1291 = !DILocalVariable(name: "r", arg: 1, scope: !1289, file: !3, line: 801, type: !409)
!1292 = !DILocalVariable(name: "a", arg: 2, scope: !1289, file: !3, line: 801, type: !6)
!1293 = !DILocalVariable(name: "b", arg: 3, scope: !1289, file: !3, line: 802, type: !6)
!1294 = !DILocalVariable(name: "exp", scope: !1289, file: !3, line: 804, type: !373)
!1295 = !DILocalVariable(name: "sign", scope: !1289, file: !3, line: 804, type: !373)
!1296 = !DILocalVariable(name: "t", scope: !1289, file: !3, line: 805, type: !8)
!1297 = !DILocalVariable(name: "rr", scope: !1289, file: !3, line: 805, type: !409)
!1298 = !DILocalVariable(name: "inexact", scope: !1289, file: !3, line: 806, type: !372)
!1299 = !DILocation(line: 0, scope: !1289)
!1300 = !DILocation(line: 804, column: 22, scope: !1289)
!1301 = !DILocation(line: 804, column: 32, scope: !1289)
!1302 = !DILocation(line: 804, column: 27, scope: !1289)
!1303 = !DILocation(line: 805, column: 3, scope: !1289)
!1304 = !DILocation(line: 808, column: 11, scope: !1289)
!1305 = !DILocation(line: 808, column: 3, scope: !1289)
!1306 = !DILocation(line: 814, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 809, column: 5)
!1308 = !DILocation(line: 815, column: 7, scope: !1307)
!1309 = !DILocation(line: 822, column: 7, scope: !1307)
!1310 = !DILocation(line: 823, column: 7, scope: !1307)
!1311 = !DILocation(line: 829, column: 7, scope: !1307)
!1312 = !DILocation(line: 830, column: 7, scope: !1307)
!1313 = !DILocation(line: 837, column: 12, scope: !1307)
!1314 = !DILocation(line: 838, column: 10, scope: !1307)
!1315 = !DILocation(line: 838, column: 15, scope: !1307)
!1316 = !DILocation(line: 839, column: 7, scope: !1307)
!1317 = !DILocation(line: 845, column: 12, scope: !1307)
!1318 = !DILocation(line: 846, column: 10, scope: !1307)
!1319 = !DILocation(line: 846, column: 15, scope: !1307)
!1320 = !DILocation(line: 847, column: 7, scope: !1307)
!1321 = !DILocation(line: 851, column: 7, scope: !1307)
!1322 = !DILocation(line: 852, column: 7, scope: !1307)
!1323 = !DILocation(line: 861, column: 9, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 861, column: 7)
!1325 = !DILocation(line: 861, column: 19, scope: !1324)
!1326 = !DILocation(line: 861, column: 14, scope: !1324)
!1327 = !DILocation(line: 867, column: 3, scope: !1289)
!1328 = !DILocation(line: 868, column: 7, scope: !1289)
!1329 = !DILocation(line: 868, column: 10, scope: !1289)
!1330 = !DILocation(line: 869, column: 12, scope: !1289)
!1331 = !DILocation(line: 871, column: 9, scope: !1289)
!1332 = !DILocation(line: 871, column: 24, scope: !1289)
!1333 = !DILocation(line: 871, column: 22, scope: !1289)
!1334 = !DILocation(line: 871, column: 37, scope: !1289)
!1335 = !DILocation(line: 872, column: 11, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 872, column: 7)
!1337 = !DILocation(line: 872, column: 7, scope: !1289)
!1338 = !DILocation(line: 874, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 873, column: 5)
!1340 = !DILocation(line: 875, column: 7, scope: !1339)
!1341 = !DILocation(line: 877, column: 11, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 877, column: 7)
!1343 = !DILocation(line: 877, column: 7, scope: !1289)
!1344 = !DILocation(line: 879, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 878, column: 5)
!1346 = !DILocation(line: 880, column: 7, scope: !1345)
!1347 = !DILocation(line: 882, column: 3, scope: !1289)
!1348 = !DILocation(line: 884, column: 13, scope: !1289)
!1349 = !DILocation(line: 887, column: 3, scope: !1289)
!1350 = !DILocation(line: 888, column: 17, scope: !1289)
!1351 = !DILocation(line: 888, column: 3, scope: !1289)
!1352 = !DILocation(line: 888, column: 14, scope: !1289)
!1353 = !DILocation(line: 890, column: 10, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 890, column: 7)
!1355 = !DILocation(line: 890, column: 7, scope: !1289)
!1356 = !DILocation(line: 891, column: 10, scope: !1354)
!1357 = !DILocation(line: 891, column: 5, scope: !1354)
!1358 = !DILocation(line: 894, column: 1, scope: !1289)
!1359 = distinct !DISubprogram(name: "do_compare", scope: !3, file: !3, line: 900, type: !1360, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!373, !6, !6, !373}
!1362 = !{!1363, !1364, !1365, !1366}
!1363 = !DILocalVariable(name: "a", arg: 1, scope: !1359, file: !3, line: 900, type: !6)
!1364 = !DILocalVariable(name: "b", arg: 2, scope: !1359, file: !3, line: 900, type: !6)
!1365 = !DILocalVariable(name: "nan_result", arg: 3, scope: !1359, file: !3, line: 901, type: !373)
!1366 = !DILocalVariable(name: "ret", scope: !1359, file: !3, line: 903, type: !373)
!1367 = !DILocation(line: 0, scope: !1359)
!1368 = !DILocation(line: 905, column: 11, scope: !1359)
!1369 = !DILocation(line: 905, column: 3, scope: !1359)
!1370 = !DILocation(line: 913, column: 14, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 913, column: 11)
!1372 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 906, column: 5)
!1373 = !DILocation(line: 913, column: 11, scope: !1371)
!1374 = !DILocation(line: 913, column: 11, scope: !1372)
!1375 = !DILocation(line: 914, column: 9, scope: !1371)
!1376 = !DILocation(line: 914, column: 2, scope: !1371)
!1377 = !DILocation(line: 918, column: 18, scope: !1372)
!1378 = !DILocation(line: 918, column: 15, scope: !1372)
!1379 = !DILocation(line: 918, column: 7, scope: !1372)
!1380 = !DILocation(line: 921, column: 18, scope: !1372)
!1381 = !DILocation(line: 921, column: 29, scope: !1372)
!1382 = !DILocation(line: 921, column: 23, scope: !1372)
!1383 = !DILocation(line: 921, column: 7, scope: !1372)
!1384 = !DILocation(line: 925, column: 14, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 925, column: 11)
!1386 = !DILocation(line: 925, column: 11, scope: !1385)
!1387 = !DILocation(line: 925, column: 11, scope: !1372)
!1388 = !DILocation(line: 926, column: 9, scope: !1385)
!1389 = !DILocation(line: 926, column: 2, scope: !1385)
!1390 = !DILocation(line: 930, column: 18, scope: !1372)
!1391 = !DILocation(line: 930, column: 15, scope: !1372)
!1392 = !DILocation(line: 930, column: 7, scope: !1372)
!1393 = !DILocation(line: 939, column: 7, scope: !1372)
!1394 = !DILocation(line: 948, column: 15, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 948, column: 7)
!1396 = !DILocation(line: 948, column: 7, scope: !1359)
!1397 = !DILocation(line: 949, column: 16, scope: !1395)
!1398 = !DILocation(line: 949, column: 27, scope: !1395)
!1399 = !DILocation(line: 949, column: 21, scope: !1395)
!1400 = !DILocation(line: 949, column: 5, scope: !1395)
!1401 = !DILocation(line: 951, column: 10, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 951, column: 7)
!1403 = !DILocation(line: 951, column: 7, scope: !1402)
!1404 = !DILocation(line: 951, column: 18, scope: !1402)
!1405 = !DILocation(line: 951, column: 24, scope: !1402)
!1406 = !DILocation(line: 951, column: 21, scope: !1402)
!1407 = !DILocation(line: 951, column: 7, scope: !1359)
!1408 = !DILocation(line: 952, column: 12, scope: !1402)
!1409 = !DILocation(line: 952, column: 5, scope: !1402)
!1410 = !DILocation(line: 954, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 954, column: 7)
!1412 = !DILocation(line: 954, column: 22, scope: !1411)
!1413 = !DILocation(line: 954, column: 20, scope: !1411)
!1414 = !DILocation(line: 954, column: 7, scope: !1359)
!1415 = !DILocation(line: 956, column: 25, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 956, column: 12)
!1417 = !DILocation(line: 956, column: 12, scope: !1411)
!1418 = !DILocation(line: 959, column: 11, scope: !1416)
!1419 = !DILocation(line: 961, column: 14, scope: !1359)
!1420 = !DILocation(line: 0, scope: !1411)
!1421 = !DILocation(line: 961, column: 11, scope: !1359)
!1422 = !DILocation(line: 962, column: 1, scope: !1359)
!1423 = distinct !DISubprogram(name: "do_fix_trunc", scope: !3, file: !3, line: 967, type: !1424, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !409, !6}
!1426 = !{!1427, !1428}
!1427 = !DILocalVariable(name: "r", arg: 1, scope: !1423, file: !3, line: 967, type: !409)
!1428 = !DILocalVariable(name: "a", arg: 2, scope: !1423, file: !3, line: 967, type: !6)
!1429 = !DILocation(line: 0, scope: !1423)
!1430 = !DILocation(line: 969, column: 8, scope: !1423)
!1431 = !DILocation(line: 971, column: 14, scope: !1423)
!1432 = !DILocation(line: 971, column: 3, scope: !1423)
!1433 = !DILocation(line: 979, column: 14, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 979, column: 11)
!1435 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 972, column: 5)
!1436 = !DILocation(line: 979, column: 11, scope: !1434)
!1437 = !DILocation(line: 979, column: 11, scope: !1435)
!1438 = !DILocation(line: 981, column: 4, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 980, column: 2)
!1440 = !DILocation(line: 982, column: 4, scope: !1439)
!1441 = !DILocation(line: 984, column: 24, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 984, column: 11)
!1443 = !DILocation(line: 984, column: 11, scope: !1435)
!1444 = !DILocation(line: 985, column: 18, scope: !1442)
!1445 = !DILocation(line: 985, column: 2, scope: !1442)
!1446 = !DILocation(line: 986, column: 29, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 986, column: 16)
!1448 = !DILocation(line: 986, column: 16, scope: !1442)
!1449 = !DILocation(line: 987, column: 49, scope: !1447)
!1450 = !DILocation(line: 987, column: 47, scope: !1447)
!1451 = !DILocation(line: 987, column: 2, scope: !1447)
!1452 = !DILocation(line: 993, column: 1, scope: !1423)
!1453 = distinct !DISubprogram(name: "real_arithmetic2", scope: !3, file: !3, line: 1063, type: !1454, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!8, !373, !6, !6}
!1456 = !{!1457, !1458, !1459, !1460}
!1457 = !DILocalVariable(name: "icode", arg: 1, scope: !1453, file: !3, line: 1063, type: !373)
!1458 = !DILocalVariable(name: "op0", arg: 2, scope: !1453, file: !3, line: 1063, type: !6)
!1459 = !DILocalVariable(name: "op1", arg: 3, scope: !1453, file: !3, line: 1064, type: !6)
!1460 = !DILocalVariable(name: "r", scope: !1453, file: !3, line: 1066, type: !8)
!1461 = !DILocation(line: 0, scope: !1453)
!1462 = !DILocation(line: 1066, column: 19, scope: !1453)
!1463 = !DILocation(line: 1067, column: 3, scope: !1453)
!1464 = !DILocation(line: 1068, column: 3, scope: !1453)
!1465 = distinct !DISubprogram(name: "real_compare", scope: !3, file: !3, line: 1072, type: !1466, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!372, !373, !6, !6}
!1468 = !{!1469, !1470, !1471, !1472}
!1469 = !DILocalVariable(name: "icode", arg: 1, scope: !1465, file: !3, line: 1072, type: !373)
!1470 = !DILocalVariable(name: "op0", arg: 2, scope: !1465, file: !3, line: 1072, type: !6)
!1471 = !DILocalVariable(name: "op1", arg: 3, scope: !1465, file: !3, line: 1073, type: !6)
!1472 = !DILocalVariable(name: "code", scope: !1465, file: !3, line: 1075, type: !25)
!1473 = !DILocation(line: 0, scope: !1465)
!1474 = !DILocation(line: 1077, column: 3, scope: !1465)
!1475 = !DILocation(line: 1080, column: 14, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 1078, column: 5)
!1477 = !DILocation(line: 1080, column: 7, scope: !1476)
!1478 = !DILocation(line: 1082, column: 14, scope: !1476)
!1479 = !DILocation(line: 1082, column: 39, scope: !1476)
!1480 = !DILocation(line: 1082, column: 7, scope: !1476)
!1481 = !DILocation(line: 1084, column: 14, scope: !1476)
!1482 = !DILocation(line: 1084, column: 40, scope: !1476)
!1483 = !DILocation(line: 1084, column: 7, scope: !1476)
!1484 = !DILocation(line: 1086, column: 14, scope: !1476)
!1485 = !DILocation(line: 1086, column: 7, scope: !1476)
!1486 = !DILocation(line: 1088, column: 14, scope: !1476)
!1487 = !DILocation(line: 1088, column: 40, scope: !1476)
!1488 = !DILocation(line: 1088, column: 7, scope: !1476)
!1489 = !DILocation(line: 1090, column: 14, scope: !1476)
!1490 = !DILocation(line: 1090, column: 40, scope: !1476)
!1491 = !DILocation(line: 1090, column: 7, scope: !1476)
!1492 = !DILocation(line: 1092, column: 19, scope: !1476)
!1493 = !DILocation(line: 1092, column: 22, scope: !1476)
!1494 = !DILocation(line: 1092, column: 33, scope: !1476)
!1495 = !DILocation(line: 1092, column: 41, scope: !1476)
!1496 = !DILocation(line: 1092, column: 44, scope: !1476)
!1497 = !DILocation(line: 1092, column: 7, scope: !1476)
!1498 = !DILocation(line: 1094, column: 19, scope: !1476)
!1499 = !DILocation(line: 1094, column: 22, scope: !1476)
!1500 = !DILocation(line: 1094, column: 33, scope: !1476)
!1501 = !DILocation(line: 1094, column: 41, scope: !1476)
!1502 = !DILocation(line: 1094, column: 44, scope: !1476)
!1503 = !DILocation(line: 1094, column: 7, scope: !1476)
!1504 = !DILocation(line: 1096, column: 14, scope: !1476)
!1505 = !DILocation(line: 1096, column: 7, scope: !1476)
!1506 = !DILocation(line: 1098, column: 14, scope: !1476)
!1507 = !DILocation(line: 1098, column: 40, scope: !1476)
!1508 = !DILocation(line: 1098, column: 7, scope: !1476)
!1509 = !DILocation(line: 1100, column: 14, scope: !1476)
!1510 = !DILocation(line: 1100, column: 39, scope: !1476)
!1511 = !DILocation(line: 1100, column: 7, scope: !1476)
!1512 = !DILocation(line: 1102, column: 14, scope: !1476)
!1513 = !DILocation(line: 1102, column: 7, scope: !1476)
!1514 = !DILocation(line: 1104, column: 14, scope: !1476)
!1515 = !DILocation(line: 1104, column: 39, scope: !1476)
!1516 = !DILocation(line: 1104, column: 7, scope: !1476)
!1517 = !DILocation(line: 1106, column: 14, scope: !1476)
!1518 = !DILocation(line: 1106, column: 39, scope: !1476)
!1519 = !DILocation(line: 1106, column: 7, scope: !1476)
!1520 = !DILocation(line: 1109, column: 7, scope: !1476)
!1521 = !DILocation(line: 1112, column: 5, scope: !1465)
!1522 = !DILocation(line: 1114, column: 1, scope: !1465)
!1523 = distinct !DISubprogram(name: "real_exponent", scope: !3, file: !3, line: 1119, type: !1524, scopeLine: 1120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!373, !6}
!1526 = !{!1527}
!1527 = !DILocalVariable(name: "r", arg: 1, scope: !1523, file: !3, line: 1119, type: !6)
!1528 = !DILocation(line: 0, scope: !1523)
!1529 = !DILocation(line: 1121, column: 14, scope: !1523)
!1530 = !DILocation(line: 1121, column: 3, scope: !1523)
!1531 = !DILocation(line: 1127, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 1122, column: 5)
!1533 = !DILocation(line: 1129, column: 14, scope: !1532)
!1534 = !DILocation(line: 1129, column: 7, scope: !1532)
!1535 = !DILocation(line: 1136, column: 1, scope: !1523)
!1536 = distinct !DISubprogram(name: "real_ldexp", scope: !3, file: !3, line: 1141, type: !1537, scopeLine: 1142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1539)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !409, !6, !373}
!1539 = !{!1540, !1541, !1542}
!1540 = !DILocalVariable(name: "r", arg: 1, scope: !1536, file: !3, line: 1141, type: !409)
!1541 = !DILocalVariable(name: "op0", arg: 2, scope: !1536, file: !3, line: 1141, type: !6)
!1542 = !DILocalVariable(name: "exp", arg: 3, scope: !1536, file: !3, line: 1141, type: !373)
!1543 = !DILocation(line: 0, scope: !1536)
!1544 = !DILocation(line: 1143, column: 8, scope: !1536)
!1545 = !DILocation(line: 1144, column: 14, scope: !1536)
!1546 = !DILocation(line: 1144, column: 3, scope: !1536)
!1547 = !DILocation(line: 1152, column: 14, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 1145, column: 5)
!1549 = !DILocation(line: 1152, column: 11, scope: !1548)
!1550 = !DILocation(line: 1153, column: 15, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 1153, column: 11)
!1552 = !DILocation(line: 1153, column: 11, scope: !1548)
!1553 = !DILocation(line: 1154, column: 17, scope: !1551)
!1554 = !DILocation(line: 1154, column: 2, scope: !1551)
!1555 = !DILocation(line: 1155, column: 20, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 1155, column: 16)
!1557 = !DILocation(line: 1155, column: 16, scope: !1551)
!1558 = !DILocation(line: 1156, column: 18, scope: !1556)
!1559 = !DILocation(line: 1156, column: 2, scope: !1556)
!1560 = !DILocation(line: 1158, column: 2, scope: !1556)
!1561 = !DILocation(line: 1164, column: 1, scope: !1536)
!1562 = distinct !DISubprogram(name: "get_inf", scope: !3, file: !3, line: 155, type: !1563, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !409, !373}
!1565 = !{!1566, !1567}
!1566 = !DILocalVariable(name: "r", arg: 1, scope: !1562, file: !3, line: 155, type: !409)
!1567 = !DILocalVariable(name: "sign", arg: 2, scope: !1562, file: !3, line: 155, type: !373)
!1568 = !DILocation(line: 0, scope: !1562)
!1569 = !DILocation(line: 157, column: 11, scope: !1562)
!1570 = !DILocation(line: 157, column: 3, scope: !1562)
!1571 = !DILocation(line: 158, column: 6, scope: !1562)
!1572 = !DILocation(line: 158, column: 9, scope: !1562)
!1573 = !DILocation(line: 159, column: 11, scope: !1562)
!1574 = !DILocation(line: 160, column: 1, scope: !1562)
!1575 = distinct !DISubprogram(name: "get_zero", scope: !3, file: !3, line: 127, type: !1563, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1576)
!1576 = !{!1577, !1578}
!1577 = !DILocalVariable(name: "r", arg: 1, scope: !1575, file: !3, line: 127, type: !409)
!1578 = !DILocalVariable(name: "sign", arg: 2, scope: !1575, file: !3, line: 127, type: !373)
!1579 = !DILocation(line: 0, scope: !1575)
!1580 = !DILocation(line: 129, column: 11, scope: !1575)
!1581 = !DILocation(line: 129, column: 3, scope: !1575)
!1582 = !DILocation(line: 130, column: 6, scope: !1575)
!1583 = !DILocation(line: 130, column: 11, scope: !1575)
!1584 = !DILocation(line: 131, column: 1, scope: !1575)
!1585 = distinct !DISubprogram(name: "real_isinf", scope: !3, file: !3, line: 1169, type: !1586, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!372, !6}
!1588 = !{!1589}
!1589 = !DILocalVariable(name: "r", arg: 1, scope: !1585, file: !3, line: 1169, type: !6)
!1590 = !DILocation(line: 0, scope: !1585)
!1591 = !DILocation(line: 1171, column: 14, scope: !1585)
!1592 = !DILocation(line: 1171, column: 17, scope: !1585)
!1593 = !DILocation(line: 1171, column: 10, scope: !1585)
!1594 = !DILocation(line: 1171, column: 3, scope: !1585)
!1595 = distinct !DISubprogram(name: "real_isnan", scope: !3, file: !3, line: 1177, type: !1586, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1596)
!1596 = !{!1597}
!1597 = !DILocalVariable(name: "r", arg: 1, scope: !1595, file: !3, line: 1177, type: !6)
!1598 = !DILocation(line: 0, scope: !1595)
!1599 = !DILocation(line: 1179, column: 14, scope: !1595)
!1600 = !DILocation(line: 1179, column: 17, scope: !1595)
!1601 = !DILocation(line: 1179, column: 10, scope: !1595)
!1602 = !DILocation(line: 1179, column: 3, scope: !1595)
!1603 = distinct !DISubprogram(name: "real_isfinite", scope: !3, file: !3, line: 1185, type: !1586, scopeLine: 1186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1604)
!1604 = !{!1605}
!1605 = !DILocalVariable(name: "r", arg: 1, scope: !1603, file: !3, line: 1185, type: !6)
!1606 = !DILocation(line: 0, scope: !1603)
!1607 = !DILocation(line: 1187, column: 14, scope: !1603)
!1608 = !DILocation(line: 1187, column: 17, scope: !1603)
!1609 = !DILocation(line: 1187, column: 29, scope: !1603)
!1610 = !DILocation(line: 1187, column: 39, scope: !1603)
!1611 = !DILocation(line: 1187, column: 3, scope: !1603)
!1612 = distinct !DISubprogram(name: "real_isneg", scope: !3, file: !3, line: 1193, type: !1586, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1613)
!1613 = !{!1614}
!1614 = !DILocalVariable(name: "r", arg: 1, scope: !1612, file: !3, line: 1193, type: !6)
!1615 = !DILocation(line: 0, scope: !1612)
!1616 = !DILocation(line: 1195, column: 13, scope: !1612)
!1617 = !DILocation(line: 1195, column: 10, scope: !1612)
!1618 = !DILocation(line: 1195, column: 3, scope: !1612)
!1619 = distinct !DISubprogram(name: "real_isnegzero", scope: !3, file: !3, line: 1201, type: !1586, scopeLine: 1202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1620)
!1620 = !{!1621}
!1621 = !DILocalVariable(name: "r", arg: 1, scope: !1619, file: !3, line: 1201, type: !6)
!1622 = !DILocation(line: 0, scope: !1619)
!1623 = !DILocation(line: 1203, column: 13, scope: !1619)
!1624 = !DILocation(line: 1203, column: 10, scope: !1619)
!1625 = !DILocation(line: 1203, column: 18, scope: !1619)
!1626 = !DILocation(line: 1203, column: 24, scope: !1619)
!1627 = !DILocation(line: 1203, column: 27, scope: !1619)
!1628 = !DILocation(line: 1203, column: 3, scope: !1619)
!1629 = distinct !DISubprogram(name: "real_identical", scope: !3, file: !3, line: 1209, type: !1630, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1632)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!372, !6, !6}
!1632 = !{!1633, !1634, !1635}
!1633 = !DILocalVariable(name: "a", arg: 1, scope: !1629, file: !3, line: 1209, type: !6)
!1634 = !DILocalVariable(name: "b", arg: 2, scope: !1629, file: !3, line: 1209, type: !6)
!1635 = !DILocalVariable(name: "i", scope: !1629, file: !3, line: 1211, type: !373)
!1636 = !DILocation(line: 0, scope: !1629)
!1637 = !DILocation(line: 1213, column: 10, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1213, column: 7)
!1639 = !DILocation(line: 1213, column: 19, scope: !1638)
!1640 = !DILocation(line: 1213, column: 13, scope: !1638)
!1641 = !DILocation(line: 1213, column: 7, scope: !1629)
!1642 = !DILocation(line: 1215, column: 15, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1215, column: 7)
!1644 = !DILocation(line: 1215, column: 7, scope: !1629)
!1645 = !DILocation(line: 1218, column: 14, scope: !1629)
!1646 = !DILocation(line: 1218, column: 3, scope: !1629)
!1647 = !DILocation(line: 1225, column: 22, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1225, column: 11)
!1649 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1219, column: 5)
!1650 = !DILocation(line: 1225, column: 11, scope: !1649)
!1651 = !DILocation(line: 1227, column: 24, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1227, column: 11)
!1653 = !DILocation(line: 1227, column: 11, scope: !1649)
!1654 = !DILocation(line: 1232, column: 25, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1232, column: 11)
!1656 = !DILocation(line: 1232, column: 11, scope: !1649)
!1657 = !DILocation(line: 1235, column: 14, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1235, column: 11)
!1659 = !DILocation(line: 1235, column: 11, scope: !1658)
!1660 = !DILocation(line: 1235, column: 24, scope: !1658)
!1661 = !DILocation(line: 1235, column: 30, scope: !1658)
!1662 = !DILocation(line: 1235, column: 27, scope: !1658)
!1663 = !DILocation(line: 1235, column: 11, scope: !1649)
!1664 = !DILocation(line: 1236, column: 22, scope: !1658)
!1665 = !DILocation(line: 1236, column: 9, scope: !1658)
!1666 = !DILocation(line: 1236, column: 2, scope: !1658)
!1667 = !DILocation(line: 1243, column: 8, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1243, column: 3)
!1669 = !DILocation(line: 0, scope: !1668)
!1670 = !DILocation(line: 1243, column: 17, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 1243, column: 3)
!1672 = !DILocation(line: 1243, column: 3, scope: !1668)
!1673 = !DILocation(line: 1244, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 1244, column: 9)
!1675 = !DILocation(line: 1244, column: 22, scope: !1674)
!1676 = !DILocation(line: 1244, column: 19, scope: !1674)
!1677 = !DILocation(line: 1244, column: 9, scope: !1671)
!1678 = !DILocation(line: 1243, column: 26, scope: !1671)
!1679 = !DILocation(line: 1243, column: 3, scope: !1671)
!1680 = distinct !{!1680, !1672, !1681}
!1681 = !DILocation(line: 1245, column: 14, scope: !1668)
!1682 = !DILocation(line: 1248, column: 1, scope: !1629)
!1683 = distinct !DISubprogram(name: "exact_real_inverse", scope: !3, file: !3, line: 1254, type: !1684, scopeLine: 1255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!372, !220, !409}
!1686 = !{!1687, !1688, !1689, !1690, !1691}
!1687 = !DILocalVariable(name: "mode", arg: 1, scope: !1683, file: !3, line: 1254, type: !220)
!1688 = !DILocalVariable(name: "r", arg: 2, scope: !1683, file: !3, line: 1254, type: !409)
!1689 = !DILocalVariable(name: "one", scope: !1683, file: !3, line: 1256, type: !6)
!1690 = !DILocalVariable(name: "u", scope: !1683, file: !3, line: 1257, type: !8)
!1691 = !DILocalVariable(name: "i", scope: !1683, file: !3, line: 1258, type: !373)
!1692 = !DILocation(line: 0, scope: !1683)
!1693 = !DILocation(line: 1256, column: 32, scope: !1683)
!1694 = !DILocation(line: 1257, column: 3, scope: !1683)
!1695 = !DILocation(line: 1260, column: 10, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 1260, column: 7)
!1697 = !DILocation(line: 1260, column: 13, scope: !1696)
!1698 = !DILocation(line: 1260, column: 7, scope: !1683)
!1699 = !DILocation(line: 1264, column: 3, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 1264, column: 3)
!1701 = !DILocation(line: 0, scope: !1700)
!1702 = !DILocation(line: 1264, column: 17, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 1264, column: 3)
!1704 = !DILocation(line: 1265, column: 9, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 1265, column: 9)
!1706 = !DILocation(line: 1265, column: 19, scope: !1705)
!1707 = !DILocation(line: 1265, column: 9, scope: !1703)
!1708 = !DILocation(line: 1264, column: 28, scope: !1703)
!1709 = !DILocation(line: 1264, column: 3, scope: !1703)
!1710 = distinct !{!1710, !1699, !1711}
!1711 = !DILocation(line: 1266, column: 14, scope: !1700)
!1712 = !DILocation(line: 1267, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 1267, column: 7)
!1714 = !DILocation(line: 1267, column: 23, scope: !1713)
!1715 = !DILocation(line: 1267, column: 7, scope: !1683)
!1716 = !DILocation(line: 1271, column: 3, scope: !1683)
!1717 = !DILocation(line: 1272, column: 3, scope: !1683)
!1718 = !DILocation(line: 1275, column: 9, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 1275, column: 7)
!1720 = !DILocation(line: 1275, column: 12, scope: !1719)
!1721 = !DILocation(line: 1275, column: 7, scope: !1683)
!1722 = !DILocation(line: 1277, column: 3, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 1277, column: 3)
!1724 = !DILocation(line: 0, scope: !1723)
!1725 = !DILocation(line: 1277, column: 17, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 1277, column: 3)
!1727 = !DILocation(line: 1278, column: 9, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 1278, column: 9)
!1729 = !DILocation(line: 1278, column: 18, scope: !1728)
!1730 = !DILocation(line: 1278, column: 9, scope: !1726)
!1731 = !DILocation(line: 1277, column: 28, scope: !1726)
!1732 = !DILocation(line: 1277, column: 3, scope: !1726)
!1733 = distinct !{!1733, !1722, !1734}
!1734 = !DILocation(line: 1279, column: 14, scope: !1723)
!1735 = !DILocation(line: 1280, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 1280, column: 7)
!1737 = !DILocation(line: 1280, column: 22, scope: !1736)
!1738 = !DILocation(line: 1280, column: 7, scope: !1683)
!1739 = !DILocation(line: 1283, column: 8, scope: !1683)
!1740 = !DILocation(line: 1284, column: 3, scope: !1683)
!1741 = !DILocation(line: 1285, column: 1, scope: !1683)
!1742 = !DILocation(line: 0, scope: !514)
!1743 = !DILocation(line: 2302, column: 3, scope: !514)
!1744 = !DILocation(line: 2303, column: 3, scope: !514)
!1745 = !DILocation(line: 2305, column: 9, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !514, file: !3, line: 2305, column: 7)
!1747 = !DILocation(line: 2305, column: 13, scope: !1746)
!1748 = !DILocation(line: 2308, column: 11, scope: !514)
!1749 = !DILocation(line: 2305, column: 16, scope: !1746)
!1750 = !DILocation(line: 2305, column: 23, scope: !1746)
!1751 = !DILocation(line: 2305, column: 26, scope: !1746)
!1752 = !DILocation(line: 2305, column: 7, scope: !514)
!1753 = !DILocation(line: 2306, column: 25, scope: !1746)
!1754 = !DILocation(line: 2306, column: 5, scope: !1746)
!1755 = !DILocation(line: 2308, column: 3, scope: !514)
!1756 = distinct !DISubprogram(name: "real_convert", scope: !3, file: !3, line: 2735, type: !1757, scopeLine: 2737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !409, !220, !6}
!1759 = !{!1760, !1761, !1762, !1763}
!1760 = !DILocalVariable(name: "r", arg: 1, scope: !1756, file: !3, line: 2735, type: !409)
!1761 = !DILocalVariable(name: "mode", arg: 2, scope: !1756, file: !3, line: 2735, type: !220)
!1762 = !DILocalVariable(name: "a", arg: 3, scope: !1756, file: !3, line: 2736, type: !6)
!1763 = !DILocalVariable(name: "fmt", scope: !1756, file: !3, line: 2738, type: !402)
!1764 = !DILocation(line: 0, scope: !1756)
!1765 = !DILocation(line: 2740, column: 9, scope: !1756)
!1766 = !DILocation(line: 2741, column: 3, scope: !1756)
!1767 = !DILocation(line: 2743, column: 8, scope: !1756)
!1768 = !DILocation(line: 2745, column: 10, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 2745, column: 7)
!1770 = !DILocation(line: 2745, column: 7, scope: !1769)
!1771 = !DILocation(line: 2745, column: 18, scope: !1769)
!1772 = !DILocation(line: 2745, column: 26, scope: !1769)
!1773 = !DILocation(line: 2745, column: 28, scope: !1769)
!1774 = !DILocation(line: 2745, column: 7, scope: !1756)
!1775 = !DILocation(line: 2746, column: 5, scope: !1769)
!1776 = !DILocation(line: 2748, column: 3, scope: !1756)
!1777 = !DILocation(line: 2751, column: 10, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 2751, column: 7)
!1779 = !DILocation(line: 2751, column: 13, scope: !1778)
!1780 = !DILocation(line: 2751, column: 7, scope: !1756)
!1781 = !DILocation(line: 2752, column: 5, scope: !1778)
!1782 = !DILocation(line: 2753, column: 1, scope: !1756)
!1783 = distinct !DISubprogram(name: "real_can_shorten_arithmetic", scope: !3, file: !3, line: 1292, type: !1784, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!372, !220, !220}
!1786 = !{!1787, !1788, !1789, !1790}
!1787 = !DILocalVariable(name: "imode", arg: 1, scope: !1783, file: !3, line: 1292, type: !220)
!1788 = !DILocalVariable(name: "tmode", arg: 2, scope: !1783, file: !3, line: 1292, type: !220)
!1789 = !DILocalVariable(name: "tfmt", scope: !1783, file: !3, line: 1294, type: !402)
!1790 = !DILocalVariable(name: "ifmt", scope: !1783, file: !3, line: 1294, type: !402)
!1791 = !DILocation(line: 0, scope: !1783)
!1792 = !DILocation(line: 1295, column: 10, scope: !1783)
!1793 = !DILocation(line: 1296, column: 10, scope: !1783)
!1794 = !DILocation(line: 1300, column: 17, scope: !1783)
!1795 = !DILocation(line: 1300, column: 28, scope: !1783)
!1796 = !DILocation(line: 1300, column: 19, scope: !1783)
!1797 = !DILocation(line: 1301, column: 4, scope: !1783)
!1798 = !DILocation(line: 1301, column: 13, scope: !1783)
!1799 = !DILocation(line: 1301, column: 27, scope: !1783)
!1800 = !DILocation(line: 1301, column: 19, scope: !1783)
!1801 = !DILocation(line: 1301, column: 15, scope: !1783)
!1802 = !DILocation(line: 1302, column: 4, scope: !1783)
!1803 = !DILocation(line: 1302, column: 13, scope: !1783)
!1804 = !DILocation(line: 1302, column: 30, scope: !1783)
!1805 = !DILocation(line: 1302, column: 22, scope: !1783)
!1806 = !DILocation(line: 1302, column: 35, scope: !1783)
!1807 = !DILocation(line: 1302, column: 45, scope: !1783)
!1808 = !DILocation(line: 1302, column: 18, scope: !1783)
!1809 = !DILocation(line: 1303, column: 4, scope: !1783)
!1810 = !DILocation(line: 1303, column: 39, scope: !1783)
!1811 = !DILocation(line: 1303, column: 31, scope: !1783)
!1812 = !DILocation(line: 1303, column: 44, scope: !1783)
!1813 = !DILocation(line: 1303, column: 54, scope: !1783)
!1814 = !DILocation(line: 1303, column: 18, scope: !1783)
!1815 = !DILocation(line: 1304, column: 4, scope: !1783)
!1816 = !DILocation(line: 1304, column: 13, scope: !1783)
!1817 = !DILocation(line: 1304, column: 22, scope: !1783)
!1818 = !DILocation(line: 1304, column: 35, scope: !1783)
!1819 = !DILocation(line: 1304, column: 18, scope: !1783)
!1820 = !DILocation(line: 1305, column: 4, scope: !1783)
!1821 = !DILocation(line: 1305, column: 31, scope: !1783)
!1822 = !DILocation(line: 1305, column: 44, scope: !1783)
!1823 = !DILocation(line: 1305, column: 54, scope: !1783)
!1824 = !DILocation(line: 1305, column: 18, scope: !1783)
!1825 = !DILocation(line: 1306, column: 4, scope: !1783)
!1826 = !DILocation(line: 1306, column: 13, scope: !1783)
!1827 = !DILocation(line: 1306, column: 41, scope: !1783)
!1828 = !DILocation(line: 1306, column: 32, scope: !1783)
!1829 = !DILocation(line: 1307, column: 4, scope: !1783)
!1830 = !DILocation(line: 1307, column: 14, scope: !1783)
!1831 = !DILocation(line: 1308, column: 17, scope: !1783)
!1832 = !DILocation(line: 1308, column: 8, scope: !1783)
!1833 = !DILocation(line: 1309, column: 4, scope: !1783)
!1834 = !DILocation(line: 1309, column: 13, scope: !1783)
!1835 = !DILocation(line: 1309, column: 31, scope: !1783)
!1836 = !DILocation(line: 1309, column: 22, scope: !1783)
!1837 = !DILocation(line: 1310, column: 4, scope: !1783)
!1838 = !DILocation(line: 1310, column: 13, scope: !1783)
!1839 = !DILocation(line: 1310, column: 30, scope: !1783)
!1840 = !DILocation(line: 1310, column: 21, scope: !1783)
!1841 = !DILocation(line: 1311, column: 4, scope: !1783)
!1842 = !DILocation(line: 1311, column: 13, scope: !1783)
!1843 = !DILocation(line: 1311, column: 38, scope: !1783)
!1844 = !DILocation(line: 1311, column: 29, scope: !1783)
!1845 = !DILocation(line: 1312, column: 4, scope: !1783)
!1846 = !DILocation(line: 1312, column: 8, scope: !1783)
!1847 = !DILocation(line: 1313, column: 4, scope: !1783)
!1848 = !DILocation(line: 1313, column: 8, scope: !1783)
!1849 = !DILocation(line: 1300, column: 3, scope: !1783)
!1850 = distinct !DISubprogram(name: "real_to_integer", scope: !3, file: !3, line: 1319, type: !1851, scopeLine: 1320, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!404, !6}
!1853 = !{!1854, !1855, !1856, !1858}
!1854 = !DILocalVariable(name: "r", arg: 1, scope: !1850, file: !3, line: 1319, type: !6)
!1855 = !DILocalVariable(name: "i", scope: !1850, file: !3, line: 1321, type: !20)
!1856 = !DILabel(scope: !1857, name: "underflow", file: !3, line: 1326)
!1857 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 1324, column: 5)
!1858 = !DILabel(scope: !1857, name: "overflow", file: !3, line: 1331)
!1859 = !DILocation(line: 0, scope: !1850)
!1860 = !DILocation(line: 1323, column: 14, scope: !1850)
!1861 = !DILocation(line: 1323, column: 3, scope: !1850)
!1862 = !DILocation(line: 1331, column: 5, scope: !1857)
!1863 = !DILocation(line: 1333, column: 15, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 1333, column: 11)
!1865 = !DILocation(line: 1333, column: 12, scope: !1864)
!1866 = !DILocation(line: 1333, column: 11, scope: !1857)
!1867 = !DILocation(line: 1335, column: 7, scope: !1857)
!1868 = !DILocation(line: 1338, column: 14, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 1338, column: 11)
!1870 = !DILocation(line: 1338, column: 11, scope: !1869)
!1871 = !DILocation(line: 1338, column: 11, scope: !1857)
!1872 = !DILocation(line: 1339, column: 9, scope: !1869)
!1873 = !DILocation(line: 1339, column: 2, scope: !1869)
!1874 = !DILocation(line: 1341, column: 24, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 1341, column: 11)
!1876 = !DILocation(line: 1341, column: 11, scope: !1857)
!1877 = !DILocation(line: 1347, column: 24, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 1347, column: 11)
!1879 = !DILocation(line: 1347, column: 11, scope: !1857)
!1880 = !DILocation(line: 1351, column: 6, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 1350, column: 11)
!1882 = !DILocation(line: 1360, column: 38, scope: !1857)
!1883 = !DILocation(line: 1360, column: 36, scope: !1857)
!1884 = !DILocation(line: 1360, column: 9, scope: !1857)
!1885 = !DILocation(line: 1362, column: 14, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 1362, column: 11)
!1887 = !DILocation(line: 1362, column: 11, scope: !1886)
!1888 = !DILocation(line: 1363, column: 6, scope: !1886)
!1889 = !DILocation(line: 1362, column: 11, scope: !1857)
!1890 = !DILocation(line: 1364, column: 7, scope: !1857)
!1891 = !DILocation(line: 1372, column: 1, scope: !1850)
!1892 = distinct !DISubprogram(name: "real_to_integer2", scope: !3, file: !3, line: 1377, type: !1893, scopeLine: 1379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !403, !403, !6}
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1905}
!1896 = !DILocalVariable(name: "plow", arg: 1, scope: !1892, file: !3, line: 1377, type: !403)
!1897 = !DILocalVariable(name: "phigh", arg: 2, scope: !1892, file: !3, line: 1377, type: !403)
!1898 = !DILocalVariable(name: "r", arg: 3, scope: !1892, file: !3, line: 1378, type: !6)
!1899 = !DILocalVariable(name: "t", scope: !1892, file: !3, line: 1380, type: !8)
!1900 = !DILocalVariable(name: "low", scope: !1892, file: !3, line: 1381, type: !404)
!1901 = !DILocalVariable(name: "high", scope: !1892, file: !3, line: 1381, type: !404)
!1902 = !DILocalVariable(name: "exp", scope: !1892, file: !3, line: 1382, type: !373)
!1903 = !DILabel(scope: !1904, name: "underflow", file: !3, line: 1387)
!1904 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 1385, column: 5)
!1905 = !DILabel(scope: !1904, name: "overflow", file: !3, line: 1393)
!1906 = !DILocation(line: 0, scope: !1892)
!1907 = !DILocation(line: 1380, column: 3, scope: !1892)
!1908 = !DILocation(line: 1384, column: 14, scope: !1892)
!1909 = !DILocation(line: 1384, column: 3, scope: !1892)
!1910 = !DILocation(line: 1393, column: 5, scope: !1904)
!1911 = !DILocation(line: 1395, column: 14, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 1395, column: 11)
!1913 = !DILocation(line: 1395, column: 11, scope: !1912)
!1914 = !DILocation(line: 1395, column: 11, scope: !1904)
!1915 = !DILocation(line: 1405, column: 14, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 1405, column: 11)
!1917 = !DILocation(line: 1405, column: 11, scope: !1916)
!1918 = !DILocation(line: 1405, column: 11, scope: !1904)
!1919 = !DILocation(line: 1407, column: 4, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 1406, column: 2)
!1921 = !DILocation(line: 1408, column: 4, scope: !1920)
!1922 = !DILocation(line: 1411, column: 13, scope: !1904)
!1923 = !DILocation(line: 1412, column: 15, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 1412, column: 11)
!1925 = !DILocation(line: 1412, column: 11, scope: !1904)
!1926 = !DILocation(line: 1418, column: 15, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 1418, column: 11)
!1928 = !DILocation(line: 1418, column: 11, scope: !1904)
!1929 = !DILocation(line: 1421, column: 59, scope: !1904)
!1930 = !DILocation(line: 1421, column: 7, scope: !1904)
!1931 = !DILocation(line: 1424, column: 11, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 1423, column: 2)
!1933 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 1422, column: 11)
!1934 = !DILocation(line: 1425, column: 10, scope: !1932)
!1935 = !DILocation(line: 1439, column: 14, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 1439, column: 11)
!1937 = !DILocation(line: 1439, column: 11, scope: !1936)
!1938 = !DILocation(line: 1439, column: 11, scope: !1904)
!1939 = !DILocation(line: 1441, column: 12, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 1441, column: 8)
!1941 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 1440, column: 2)
!1942 = !DILocation(line: 1441, column: 8, scope: !1941)
!1943 = !DILocation(line: 1452, column: 9, scope: !1892)
!1944 = !DILocation(line: 1453, column: 10, scope: !1892)
!1945 = !DILocation(line: 1454, column: 1, scope: !1892)
!1946 = distinct !DISubprogram(name: "rshift_significand", scope: !3, file: !3, line: 206, type: !1947, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !409, !6, !12}
!1949 = !{!1950, !1951, !1952, !1953, !1954}
!1950 = !DILocalVariable(name: "r", arg: 1, scope: !1946, file: !3, line: 206, type: !409)
!1951 = !DILocalVariable(name: "a", arg: 2, scope: !1946, file: !3, line: 206, type: !6)
!1952 = !DILocalVariable(name: "n", arg: 3, scope: !1946, file: !3, line: 207, type: !12)
!1953 = !DILocalVariable(name: "i", scope: !1946, file: !3, line: 209, type: !12)
!1954 = !DILocalVariable(name: "ofs", scope: !1946, file: !3, line: 209, type: !12)
!1955 = !DILocation(line: 0, scope: !1946)
!1956 = !DILocation(line: 209, column: 27, scope: !1946)
!1957 = !DILocation(line: 211, column: 5, scope: !1946)
!1958 = !DILocation(line: 212, column: 9, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 212, column: 7)
!1960 = !DILocation(line: 212, column: 7, scope: !1946)
!1961 = !DILocation(line: 0, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 215, column: 2)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 214, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 214, column: 7)
!1965 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 213, column: 5)
!1966 = !DILocation(line: 214, column: 7, scope: !1964)
!1967 = !DILocation(line: 224, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 224, column: 7)
!1969 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 223, column: 5)
!1970 = !DILocation(line: 0, scope: !1964)
!1971 = !DILocation(line: 214, column: 21, scope: !1963)
!1972 = !DILocation(line: 217, column: 15, scope: !1962)
!1973 = !DILocation(line: 217, column: 19, scope: !1962)
!1974 = !DILocation(line: 217, column: 11, scope: !1962)
!1975 = !DILocation(line: 217, column: 34, scope: !1962)
!1976 = !DILocation(line: 217, column: 51, scope: !1962)
!1977 = !DILocation(line: 218, column: 25, scope: !1962)
!1978 = !DILocation(line: 218, column: 13, scope: !1962)
!1979 = !DILocation(line: 218, column: 21, scope: !1962)
!1980 = !DILocation(line: 218, column: 40, scope: !1962)
!1981 = !DILocation(line: 219, column: 5, scope: !1962)
!1982 = !DILocation(line: 218, column: 9, scope: !1962)
!1983 = !DILocation(line: 216, column: 4, scope: !1962)
!1984 = !DILocation(line: 217, column: 6, scope: !1962)
!1985 = !DILocation(line: 214, column: 30, scope: !1963)
!1986 = !DILocation(line: 214, column: 7, scope: !1963)
!1987 = distinct !{!1987, !1966, !1988}
!1988 = !DILocation(line: 220, column: 2, scope: !1964)
!1989 = !DILocation(line: 0, scope: !1968)
!1990 = !DILocation(line: 224, column: 23, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 224, column: 7)
!1992 = !DILocation(line: 224, column: 27, scope: !1991)
!1993 = !DILocation(line: 226, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 226, column: 7)
!1995 = !DILocation(line: 225, column: 14, scope: !1991)
!1996 = !DILocation(line: 225, column: 2, scope: !1991)
!1997 = !DILocation(line: 225, column: 12, scope: !1991)
!1998 = !DILocation(line: 224, column: 36, scope: !1991)
!1999 = !DILocation(line: 224, column: 7, scope: !1991)
!2000 = distinct !{!2000, !1967, !2001}
!2001 = !DILocation(line: 225, column: 28, scope: !1968)
!2002 = !DILocation(line: 0, scope: !1969)
!2003 = !DILocation(line: 226, column: 16, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 226, column: 7)
!2005 = !DILocation(line: 227, column: 2, scope: !2004)
!2006 = !DILocation(line: 227, column: 12, scope: !2004)
!2007 = !DILocation(line: 226, column: 25, scope: !2004)
!2008 = !DILocation(line: 226, column: 7, scope: !2004)
!2009 = distinct !{!2009, !1993, !2010}
!2010 = !DILocation(line: 227, column: 14, scope: !1994)
!2011 = !DILocation(line: 229, column: 1, scope: !1946)
!2012 = distinct !DISubprogram(name: "real_to_decimal_for_mode", scope: !3, file: !3, line: 1501, type: !2013, scopeLine: 1504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !375, !6, !606, !606, !373, !220}
!2015 = !{!2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2041, !2043, !2047, !2050, !2052}
!2016 = !DILocalVariable(name: "str", arg: 1, scope: !2012, file: !3, line: 1501, type: !375)
!2017 = !DILocalVariable(name: "r_orig", arg: 2, scope: !2012, file: !3, line: 1501, type: !6)
!2018 = !DILocalVariable(name: "buf_size", arg: 3, scope: !2012, file: !3, line: 1502, type: !606)
!2019 = !DILocalVariable(name: "digits", arg: 4, scope: !2012, file: !3, line: 1502, type: !606)
!2020 = !DILocalVariable(name: "crop_trailing_zeros", arg: 5, scope: !2012, file: !3, line: 1503, type: !373)
!2021 = !DILocalVariable(name: "mode", arg: 6, scope: !2012, file: !3, line: 1503, type: !220)
!2022 = !DILocalVariable(name: "fmt", scope: !2012, file: !3, line: 1505, type: !402)
!2023 = !DILocalVariable(name: "one", scope: !2012, file: !3, line: 1506, type: !6)
!2024 = !DILocalVariable(name: "ten", scope: !2012, file: !3, line: 1506, type: !6)
!2025 = !DILocalVariable(name: "r", scope: !2012, file: !3, line: 1507, type: !8)
!2026 = !DILocalVariable(name: "pten", scope: !2012, file: !3, line: 1507, type: !8)
!2027 = !DILocalVariable(name: "u", scope: !2012, file: !3, line: 1507, type: !8)
!2028 = !DILocalVariable(name: "v", scope: !2012, file: !3, line: 1507, type: !8)
!2029 = !DILocalVariable(name: "dec_exp", scope: !2012, file: !3, line: 1508, type: !373)
!2030 = !DILocalVariable(name: "cmp_one", scope: !2012, file: !3, line: 1508, type: !373)
!2031 = !DILocalVariable(name: "digit", scope: !2012, file: !3, line: 1508, type: !373)
!2032 = !DILocalVariable(name: "max_digits", scope: !2012, file: !3, line: 1509, type: !606)
!2033 = !DILocalVariable(name: "p", scope: !2012, file: !3, line: 1510, type: !375)
!2034 = !DILocalVariable(name: "first", scope: !2012, file: !3, line: 1510, type: !375)
!2035 = !DILocalVariable(name: "last", scope: !2012, file: !3, line: 1510, type: !375)
!2036 = !DILocalVariable(name: "sign", scope: !2012, file: !3, line: 1511, type: !372)
!2037 = !DILocalVariable(name: "round_up", scope: !2012, file: !3, line: 1512, type: !372)
!2038 = !DILocalVariable(name: "m", scope: !2039, file: !3, line: 1576, type: !373)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1575, column: 5)
!2040 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1574, column: 7)
!2041 = !DILocalVariable(name: "t", scope: !2042, file: !3, line: 1593, type: !8)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 1592, column: 2)
!2043 = !DILocalVariable(name: "ptentwo", scope: !2044, file: !3, line: 1618, type: !6)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1617, column: 6)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 1614, column: 2)
!2046 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 1613, column: 11)
!2047 = !DILocalVariable(name: "m", scope: !2048, file: !3, line: 1636, type: !373)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 1635, column: 5)
!2049 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1634, column: 7)
!2050 = !DILocalVariable(name: "ptentwo", scope: !2051, file: !3, line: 1665, type: !6)
!2051 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 1664, column: 2)
!2052 = !DILocalVariable(name: "ptenmtwo", scope: !2051, file: !3, line: 1666, type: !6)
!2053 = !DILocation(line: 0, scope: !2012)
!2054 = !DILocation(line: 1507, column: 3, scope: !2012)
!2055 = !DILocation(line: 1514, column: 12, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1514, column: 7)
!2057 = !DILocation(line: 1514, column: 7, scope: !2012)
!2058 = !DILocation(line: 1516, column: 12, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 1515, column: 4)
!2060 = !DILocation(line: 1517, column: 6, scope: !2059)
!2061 = !DILocation(line: 1520, column: 7, scope: !2012)
!2062 = !DILocation(line: 1521, column: 13, scope: !2012)
!2063 = !DILocation(line: 1521, column: 3, scope: !2012)
!2064 = !DILocation(line: 1524, column: 23, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1522, column: 5)
!2066 = !DILocation(line: 1524, column: 21, scope: !2065)
!2067 = !DILocation(line: 1524, column: 7, scope: !2065)
!2068 = !DILocation(line: 1525, column: 7, scope: !2065)
!2069 = !DILocation(line: 1529, column: 23, scope: !2065)
!2070 = !DILocation(line: 1529, column: 21, scope: !2065)
!2071 = !DILocation(line: 1529, column: 7, scope: !2065)
!2072 = !DILocation(line: 1530, column: 7, scope: !2065)
!2073 = !DILocation(line: 1533, column: 41, scope: !2065)
!2074 = !DILocation(line: 1533, column: 33, scope: !2065)
!2075 = !DILocation(line: 1534, column: 18, scope: !2065)
!2076 = !DILocation(line: 1534, column: 10, scope: !2065)
!2077 = !DILocation(line: 1533, column: 7, scope: !2065)
!2078 = !DILocation(line: 1535, column: 7, scope: !2065)
!2079 = !DILocation(line: 1540, column: 9, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1540, column: 7)
!2081 = !DILocation(line: 1540, column: 7, scope: !2080)
!2082 = !DILocation(line: 1540, column: 7, scope: !2012)
!2083 = !DILocation(line: 1542, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 1541, column: 5)
!2085 = !DILocation(line: 1543, column: 7, scope: !2084)
!2086 = !DILocation(line: 1548, column: 19, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1548, column: 7)
!2088 = !DILocation(line: 1554, column: 13, scope: !2012)
!2089 = !DILocation(line: 1554, column: 27, scope: !2012)
!2090 = !DILocation(line: 1555, column: 8, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1555, column: 3)
!2092 = !DILocation(line: 0, scope: !2091)
!2093 = !DILocation(line: 1555, column: 3, scope: !2091)
!2094 = !DILocation(line: 1556, column: 13, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 1555, column: 3)
!2096 = !DILocation(line: 1555, column: 44, scope: !2095)
!2097 = !DILocation(line: 1555, column: 3, scope: !2095)
!2098 = distinct !{!2098, !2093, !2099}
!2099 = !DILocation(line: 1556, column: 16, scope: !2091)
!2100 = !DILocation(line: 1559, column: 33, scope: !2012)
!2101 = !DILocation(line: 1559, column: 50, scope: !2012)
!2102 = !DILocation(line: 1560, column: 3, scope: !2012)
!2103 = !DILocation(line: 1561, column: 14, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1561, column: 7)
!2105 = !DILocation(line: 1561, column: 7, scope: !2012)
!2106 = !DILocation(line: 1564, column: 9, scope: !2012)
!2107 = !DILocation(line: 1565, column: 9, scope: !2012)
!2108 = !DILocation(line: 1568, column: 10, scope: !2012)
!2109 = !DILocation(line: 1571, column: 10, scope: !2012)
!2110 = !DILocation(line: 1573, column: 13, scope: !2012)
!2111 = !DILocation(line: 1574, column: 15, scope: !2040)
!2112 = !DILocation(line: 1574, column: 7, scope: !2012)
!2113 = !DILocation(line: 1581, column: 11, scope: !2039)
!2114 = !DILocation(line: 1582, column: 7, scope: !2039)
!2115 = !DILocation(line: 1585, column: 11, scope: !2039)
!2116 = !DILocation(line: 0, scope: !2039)
!2117 = !DILocation(line: 0, scope: !2042)
!2118 = !DILocation(line: 1591, column: 7, scope: !2039)
!2119 = !DILocation(line: 1593, column: 4, scope: !2042)
!2120 = !DILocation(line: 1595, column: 23, scope: !2042)
!2121 = !DILocation(line: 1595, column: 4, scope: !2042)
!2122 = !DILocation(line: 1596, column: 4, scope: !2042)
!2123 = !DILocation(line: 1597, column: 8, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1597, column: 8)
!2125 = !DILocation(line: 1597, column: 34, scope: !2124)
!2126 = !DILocation(line: 1597, column: 8, scope: !2042)
!2127 = !DILocation(line: 1599, column: 12, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 1598, column: 6)
!2129 = !DILocation(line: 1600, column: 21, scope: !2128)
!2130 = !DILocation(line: 1600, column: 16, scope: !2128)
!2131 = !DILocation(line: 1601, column: 6, scope: !2128)
!2132 = !DILocation(line: 1602, column: 2, scope: !2039)
!2133 = !DILocation(line: 1603, column: 14, scope: !2039)
!2134 = !DILocation(line: 1603, column: 18, scope: !2039)
!2135 = !DILocation(line: 1602, column: 2, scope: !2042)
!2136 = distinct !{!2136, !2118, !2137}
!2137 = !DILocation(line: 1603, column: 22, scope: !2039)
!2138 = !DILocation(line: 1606, column: 7, scope: !2039)
!2139 = !DILocation(line: 1608, column: 11, scope: !2039)
!2140 = !DILocation(line: 1613, column: 11, scope: !2046)
!2141 = !DILocation(line: 1613, column: 25, scope: !2046)
!2142 = !DILocation(line: 1613, column: 11, scope: !2039)
!2143 = !DILocation(line: 1615, column: 26, scope: !2045)
!2144 = !DILocation(line: 1615, column: 40, scope: !2045)
!2145 = !DILocation(line: 1615, column: 20, scope: !2045)
!2146 = !DILocation(line: 1615, column: 8, scope: !2045)
!2147 = !DILocation(line: 1615, column: 54, scope: !2045)
!2148 = !DILocation(line: 1616, column: 4, scope: !2045)
!2149 = !DILocation(line: 0, scope: !2045)
!2150 = !DILocation(line: 1618, column: 41, scope: !2044)
!2151 = !DILocation(line: 0, scope: !2044)
!2152 = !DILocation(line: 1619, column: 12, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1619, column: 12)
!2154 = !DILocation(line: 1619, column: 40, scope: !2153)
!2155 = !DILocation(line: 1619, column: 12, scope: !2044)
!2156 = !DILocation(line: 1621, column: 12, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 1620, column: 10)
!2158 = !DILocation(line: 1622, column: 12, scope: !2157)
!2159 = !DILocation(line: 1623, column: 25, scope: !2157)
!2160 = !DILocation(line: 1623, column: 20, scope: !2157)
!2161 = !DILocation(line: 1624, column: 10, scope: !2157)
!2162 = !DILocation(line: 1626, column: 18, scope: !2045)
!2163 = !DILocation(line: 1626, column: 22, scope: !2045)
!2164 = !DILocation(line: 1625, column: 6, scope: !2044)
!2165 = distinct !{!2165, !2148, !2166}
!2166 = !DILocation(line: 1626, column: 26, scope: !2045)
!2167 = !DILocation(line: 1634, column: 15, scope: !2049)
!2168 = !DILocation(line: 1573, column: 11, scope: !2012)
!2169 = !DILocation(line: 1634, column: 7, scope: !2012)
!2170 = !DILocation(line: 1641, column: 11, scope: !2048)
!2171 = !DILocation(line: 0, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 1645, column: 8)
!2173 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 1643, column: 2)
!2174 = !DILocation(line: 0, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 1651, column: 8)
!2176 = !DILocation(line: 1642, column: 7, scope: !2048)
!2177 = !DILocation(line: 1645, column: 8, scope: !2172)
!2178 = !DILocation(line: 1645, column: 17, scope: !2172)
!2179 = !DILocation(line: 1645, column: 8, scope: !2173)
!2180 = !DILocation(line: 1648, column: 4, scope: !2173)
!2181 = !DILocation(line: 1651, column: 8, scope: !2175)
!2182 = !DILocation(line: 1651, column: 22, scope: !2175)
!2183 = !DILocation(line: 1651, column: 8, scope: !2173)
!2184 = !DILocation(line: 1654, column: 8, scope: !2173)
!2185 = !DILocation(line: 1655, column: 12, scope: !2173)
!2186 = distinct !{!2186, !2176, !2187}
!2187 = !DILocation(line: 1656, column: 2, scope: !2048)
!2188 = !DILocation(line: 1657, column: 11, scope: !2048)
!2189 = !DILocation(line: 1662, column: 30, scope: !2048)
!2190 = !DILocation(line: 1662, column: 29, scope: !2048)
!2191 = !DILocation(line: 1662, column: 44, scope: !2048)
!2192 = !DILocation(line: 1662, column: 23, scope: !2048)
!2193 = !DILocation(line: 1662, column: 11, scope: !2048)
!2194 = !DILocation(line: 1662, column: 58, scope: !2048)
!2195 = !DILocation(line: 0, scope: !2048)
!2196 = !DILocation(line: 1663, column: 7, scope: !2048)
!2197 = !DILocation(line: 1665, column: 37, scope: !2051)
!2198 = !DILocation(line: 0, scope: !2051)
!2199 = !DILocation(line: 1666, column: 38, scope: !2051)
!2200 = !DILocation(line: 1668, column: 8, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 1668, column: 8)
!2202 = !DILocation(line: 1668, column: 37, scope: !2201)
!2203 = !DILocation(line: 1668, column: 8, scope: !2051)
!2204 = !DILocation(line: 1670, column: 8, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 1669, column: 6)
!2206 = !DILocation(line: 1671, column: 8, scope: !2205)
!2207 = !DILocation(line: 1672, column: 21, scope: !2205)
!2208 = !DILocation(line: 1672, column: 16, scope: !2205)
!2209 = !DILocation(line: 1673, column: 6, scope: !2205)
!2210 = !DILocation(line: 1675, column: 14, scope: !2048)
!2211 = !DILocation(line: 1675, column: 18, scope: !2048)
!2212 = !DILocation(line: 1674, column: 2, scope: !2051)
!2213 = distinct !{!2213, !2196, !2214}
!2214 = !DILocation(line: 1675, column: 22, scope: !2048)
!2215 = !DILocation(line: 1678, column: 7, scope: !2048)
!2216 = !DILocation(line: 1679, column: 5, scope: !2048)
!2217 = !DILocation(line: 1682, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1682, column: 7)
!2219 = !DILocation(line: 1682, column: 7, scope: !2012)
!2220 = !DILocation(line: 1683, column: 7, scope: !2218)
!2221 = !DILocation(line: 1683, column: 10, scope: !2218)
!2222 = !DILocation(line: 1683, column: 5, scope: !2218)
!2223 = !DILocation(line: 1694, column: 11, scope: !2012)
!2224 = !DILocation(line: 1697, column: 13, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1697, column: 7)
!2226 = !DILocation(line: 1697, column: 18, scope: !2225)
!2227 = !DILocation(line: 1697, column: 21, scope: !2225)
!2228 = !DILocation(line: 1697, column: 7, scope: !2012)
!2229 = !DILocation(line: 1700, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 1698, column: 5)
!2231 = !DILocation(line: 1701, column: 15, scope: !2230)
!2232 = !DILocation(line: 1702, column: 15, scope: !2230)
!2233 = !DILocation(line: 1703, column: 7, scope: !2230)
!2234 = !DILocation(line: 1707, column: 13, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1707, column: 7)
!2236 = !DILocation(line: 1707, column: 7, scope: !2012)
!2237 = !DILocation(line: 1709, column: 12, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 1708, column: 5)
!2239 = !DILocation(line: 1710, column: 11, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 1710, column: 11)
!2241 = !DILocation(line: 1710, column: 20, scope: !2240)
!2242 = !DILocation(line: 1710, column: 11, scope: !2238)
!2243 = !DILocation(line: 1711, column: 7, scope: !2240)
!2244 = !DILocation(line: 1711, column: 2, scope: !2240)
!2245 = !DILocation(line: 1712, column: 15, scope: !2238)
!2246 = !DILocation(line: 1713, column: 5, scope: !2238)
!2247 = !DILocation(line: 1716, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 1715, column: 5)
!2249 = !DILocation(line: 1717, column: 14, scope: !2248)
!2250 = !DILocation(line: 1717, column: 12, scope: !2248)
!2251 = !DILocation(line: 1721, column: 3, scope: !2012)
!2252 = !DILocation(line: 1721, column: 10, scope: !2012)
!2253 = !DILocation(line: 1721, column: 19, scope: !2012)
!2254 = !DILocation(line: 1725, column: 14, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1722, column: 5)
!2256 = !DILocation(line: 1725, column: 9, scope: !2255)
!2257 = !DILocation(line: 1725, column: 12, scope: !2255)
!2258 = distinct !{!2258, !2251, !2259}
!2259 = !DILocation(line: 1726, column: 5, scope: !2012)
!2260 = !DILocation(line: 1734, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1734, column: 7)
!2262 = !DILocation(line: 1734, column: 11, scope: !2261)
!2263 = !DILocation(line: 1734, column: 19, scope: !2261)
!2264 = !DILocation(line: 1734, column: 14, scope: !2261)
!2265 = !DILocation(line: 1734, column: 7, scope: !2012)
!2266 = !DILocation(line: 1738, column: 11, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 1738, column: 11)
!2268 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 1735, column: 5)
!2269 = !DILocation(line: 1738, column: 11, scope: !2268)
!2270 = !DILocation(line: 1740, column: 24, scope: !2268)
!2271 = !DILocation(line: 1741, column: 5, scope: !2268)
!2272 = !DILocation(line: 1744, column: 17, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 1744, column: 11)
!2274 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 1743, column: 5)
!2275 = !DILocation(line: 1744, column: 11, scope: !2274)
!2276 = !DILocation(line: 1748, column: 8, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1748, column: 8)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 1745, column: 2)
!2279 = !DILocation(line: 1748, column: 8, scope: !2278)
!2280 = !DILocation(line: 1749, column: 6, scope: !2277)
!2281 = !DILocation(line: 1751, column: 14, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 1751, column: 13)
!2283 = !DILocation(line: 1751, column: 27, scope: !2282)
!2284 = !DILocation(line: 1751, column: 13, scope: !2277)
!2285 = !DILocation(line: 1755, column: 24, scope: !2274)
!2286 = !DILocation(line: 1758, column: 7, scope: !2012)
!2287 = !DILocation(line: 1760, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 1759, column: 5)
!2289 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1758, column: 7)
!2290 = !DILocation(line: 1760, column: 16, scope: !2288)
!2291 = !DILocation(line: 1762, column: 13, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1761, column: 2)
!2293 = !DILocation(line: 1762, column: 12, scope: !2292)
!2294 = !DILocation(line: 1763, column: 14, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1763, column: 8)
!2296 = !DILocation(line: 1763, column: 8, scope: !2292)
!2297 = !DILocation(line: 1764, column: 9, scope: !2295)
!2298 = distinct !{!2298, !2287, !2299}
!2299 = !DILocation(line: 1770, column: 2, scope: !2288)
!2300 = !DILocation(line: 1767, column: 19, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 1766, column: 6)
!2302 = !DILocation(line: 1767, column: 11, scope: !2301)
!2303 = !DILocation(line: 1768, column: 8, scope: !2301)
!2304 = !DILocation(line: 1774, column: 13, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1774, column: 11)
!2306 = !DILocation(line: 1774, column: 11, scope: !2288)
!2307 = !DILocation(line: 1776, column: 13, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 1775, column: 2)
!2309 = !DILocation(line: 1777, column: 11, scope: !2308)
!2310 = !DILocation(line: 1778, column: 2, scope: !2308)
!2311 = !DILocation(line: 1782, column: 14, scope: !2012)
!2312 = !DILocation(line: 1782, column: 12, scope: !2012)
!2313 = !DILocation(line: 1783, column: 12, scope: !2012)
!2314 = !DILocation(line: 1786, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1786, column: 7)
!2316 = !DILocation(line: 1786, column: 7, scope: !2012)
!2317 = !DILocation(line: 1787, column: 5, scope: !2315)
!2318 = !DILocation(line: 1787, column: 17, scope: !2315)
!2319 = !DILocation(line: 1787, column: 29, scope: !2315)
!2320 = !DILocation(line: 1787, column: 32, scope: !2315)
!2321 = !DILocation(line: 1787, column: 41, scope: !2315)
!2322 = !DILocation(line: 1788, column: 11, scope: !2315)
!2323 = distinct !{!2323, !2317, !2322}
!2324 = !DILocation(line: 1791, column: 3, scope: !2012)
!2325 = !DILocation(line: 1727, column: 8, scope: !2012)
!2326 = !DILocation(line: 1802, column: 1, scope: !2012)
!2327 = !DILocation(line: 0, scope: !491)
!2328 = !DILocation(line: 2254, column: 3, scope: !491)
!2329 = !DILocation(line: 2255, column: 3, scope: !491)
!2330 = !DILocation(line: 2257, column: 7, scope: !500)
!2331 = !DILocation(line: 2257, column: 15, scope: !500)
!2332 = !DILocation(line: 2257, column: 18, scope: !500)
!2333 = !DILocation(line: 2257, column: 7, scope: !491)
!2334 = !DILocation(line: 2259, column: 13, scope: !498)
!2335 = !DILocation(line: 2259, column: 11, scope: !499)
!2336 = !DILocation(line: 2264, column: 4, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !497, file: !3, line: 2264, column: 4)
!2338 = !DILocation(line: 0, scope: !497)
!2339 = !DILocation(line: 0, scope: !2337)
!2340 = !DILocation(line: 2264, column: 18, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 2264, column: 4)
!2342 = !DILocation(line: 2265, column: 8, scope: !2341)
!2343 = !DILocation(line: 2264, column: 23, scope: !2341)
!2344 = !DILocation(line: 2264, column: 4, scope: !2341)
!2345 = distinct !{!2345, !2336, !2346}
!2346 = !DILocation(line: 2265, column: 11, scope: !2337)
!2347 = !DILocation(line: 2267, column: 24, scope: !497)
!2348 = !DILocation(line: 2267, column: 4, scope: !497)
!2349 = !DILocation(line: 2268, column: 2, scope: !497)
!2350 = !DILocation(line: 2271, column: 46, scope: !503)
!2351 = !DILocation(line: 2271, column: 31, scope: !503)
!2352 = !DILocation(line: 0, scope: !503)
!2353 = !DILocation(line: 2272, column: 18, scope: !503)
!2354 = !DILocation(line: 2272, column: 4, scope: !503)
!2355 = !DILocation(line: 2276, column: 11, scope: !491)
!2356 = !DILocation(line: 2276, column: 3, scope: !491)
!2357 = distinct !DISubprogram(name: "cmp_significands", scope: !3, file: !3, line: 360, type: !2358, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!373, !6, !6}
!2360 = !{!2361, !2362, !2363, !2364, !2368}
!2361 = !DILocalVariable(name: "a", arg: 1, scope: !2357, file: !3, line: 360, type: !6)
!2362 = !DILocalVariable(name: "b", arg: 2, scope: !2357, file: !3, line: 360, type: !6)
!2363 = !DILocalVariable(name: "i", scope: !2357, file: !3, line: 362, type: !373)
!2364 = !DILocalVariable(name: "ai", scope: !2365, file: !3, line: 366, type: !20)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 365, column: 5)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 364, column: 3)
!2367 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 364, column: 3)
!2368 = !DILocalVariable(name: "bi", scope: !2365, file: !3, line: 367, type: !20)
!2369 = !DILocation(line: 0, scope: !2357)
!2370 = !DILocation(line: 364, column: 8, scope: !2367)
!2371 = !DILocation(line: 0, scope: !2367)
!2372 = !DILocation(line: 364, column: 25, scope: !2366)
!2373 = !DILocation(line: 364, column: 3, scope: !2367)
!2374 = !DILocation(line: 366, column: 26, scope: !2365)
!2375 = !DILocation(line: 0, scope: !2365)
!2376 = !DILocation(line: 367, column: 26, scope: !2365)
!2377 = !DILocation(line: 369, column: 14, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 369, column: 11)
!2379 = !DILocation(line: 369, column: 11, scope: !2365)
!2380 = !DILocation(line: 371, column: 14, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 371, column: 11)
!2382 = !DILocation(line: 0, scope: !2366)
!2383 = !DILocation(line: 364, column: 31, scope: !2366)
!2384 = !DILocation(line: 364, column: 3, scope: !2366)
!2385 = distinct !{!2385, !2373, !2386}
!2386 = !DILocation(line: 373, column: 5, scope: !2367)
!2387 = !DILocation(line: 376, column: 1, scope: !2357)
!2388 = !DILocation(line: 0, scope: !509)
!2389 = !DILocation(line: 2286, column: 3, scope: !509)
!2390 = !DILocation(line: 2287, column: 3, scope: !509)
!2391 = !DILocation(line: 2289, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !509, file: !3, line: 2289, column: 7)
!2393 = !DILocation(line: 2289, column: 15, scope: !2392)
!2394 = !DILocation(line: 2289, column: 18, scope: !2392)
!2395 = !DILocation(line: 2289, column: 7, scope: !509)
!2396 = !DILocation(line: 2290, column: 17, scope: !2392)
!2397 = !DILocation(line: 2290, column: 26, scope: !2392)
!2398 = !DILocation(line: 2290, column: 42, scope: !2392)
!2399 = !DILocation(line: 2290, column: 5, scope: !2392)
!2400 = !DILocation(line: 2292, column: 11, scope: !509)
!2401 = !DILocation(line: 2292, column: 3, scope: !509)
!2402 = distinct !DISubprogram(name: "rtd_divmod", scope: !3, file: !3, line: 1462, type: !2403, scopeLine: 1463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!20, !409, !409}
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2406 = !DILocalVariable(name: "num", arg: 1, scope: !2402, file: !3, line: 1462, type: !409)
!2407 = !DILocalVariable(name: "den", arg: 2, scope: !2402, file: !3, line: 1462, type: !409)
!2408 = !DILocalVariable(name: "q", scope: !2402, file: !3, line: 1464, type: !20)
!2409 = !DILocalVariable(name: "msb", scope: !2402, file: !3, line: 1464, type: !20)
!2410 = !DILocalVariable(name: "expn", scope: !2402, file: !3, line: 1465, type: !373)
!2411 = !DILocalVariable(name: "expd", scope: !2402, file: !3, line: 1465, type: !373)
!2412 = !DILabel(scope: !2413, name: "start", file: !3, line: 1477)
!2413 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 1473, column: 5)
!2414 = !DILocation(line: 0, scope: !2402)
!2415 = !DILocation(line: 1465, column: 14, scope: !2402)
!2416 = !DILocation(line: 1465, column: 37, scope: !2402)
!2417 = !DILocation(line: 1467, column: 12, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 1467, column: 7)
!2419 = !DILocation(line: 1467, column: 7, scope: !2402)
!2420 = !DILocation(line: 0, scope: !2413)
!2421 = !DILocation(line: 1478, column: 15, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1478, column: 11)
!2423 = !DILocation(line: 1484, column: 10, scope: !2402)
!2424 = !DILocation(line: 1474, column: 13, scope: !2413)
!2425 = !DILocation(line: 1474, column: 31, scope: !2413)
!2426 = !DILocation(line: 1475, column: 9, scope: !2413)
!2427 = !DILocation(line: 1476, column: 7, scope: !2413)
!2428 = !DILocation(line: 1477, column: 5, scope: !2413)
!2429 = !DILocation(line: 1478, column: 11, scope: !2422)
!2430 = !DILocation(line: 1478, column: 18, scope: !2422)
!2431 = !DILocation(line: 1478, column: 46, scope: !2422)
!2432 = !DILocation(line: 1478, column: 11, scope: !2413)
!2433 = !DILocation(line: 1480, column: 4, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1479, column: 2)
!2435 = !DILocation(line: 1481, column: 6, scope: !2434)
!2436 = !DILocation(line: 1482, column: 2, scope: !2434)
!2437 = !DILocation(line: 1484, column: 17, scope: !2402)
!2438 = !DILocation(line: 1483, column: 5, scope: !2413)
!2439 = distinct !{!2439, !2440, !2441}
!2440 = !DILocation(line: 1472, column: 3, scope: !2402)
!2441 = !DILocation(line: 1484, column: 24, scope: !2402)
!2442 = !DILocation(line: 1486, column: 3, scope: !2402)
!2443 = !DILocation(line: 1487, column: 3, scope: !2402)
!2444 = !DILocation(line: 1489, column: 3, scope: !2402)
!2445 = !DILocation(line: 1490, column: 1, scope: !2402)
!2446 = distinct !DISubprogram(name: "cmp_significand_0", scope: !3, file: !3, line: 381, type: !1524, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2447)
!2447 = !{!2448, !2449}
!2448 = !DILocalVariable(name: "a", arg: 1, scope: !2446, file: !3, line: 381, type: !6)
!2449 = !DILocalVariable(name: "i", scope: !2446, file: !3, line: 383, type: !373)
!2450 = !DILocation(line: 0, scope: !2446)
!2451 = !DILocation(line: 385, column: 8, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 385, column: 3)
!2453 = !DILocation(line: 0, scope: !2452)
!2454 = !DILocation(line: 385, column: 25, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 385, column: 3)
!2456 = !DILocation(line: 385, column: 3, scope: !2452)
!2457 = !DILocation(line: 386, column: 9, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 386, column: 9)
!2459 = !DILocation(line: 386, column: 9, scope: !2455)
!2460 = !DILocation(line: 385, column: 31, scope: !2455)
!2461 = !DILocation(line: 385, column: 3, scope: !2455)
!2462 = distinct !{!2462, !2456, !2463}
!2463 = !DILocation(line: 387, column: 14, scope: !2452)
!2464 = !DILocation(line: 390, column: 1, scope: !2446)
!2465 = distinct !DISubprogram(name: "real_to_decimal", scope: !3, file: !3, line: 1807, type: !2466, scopeLine: 1809, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{null, !375, !6, !606, !606, !373}
!2468 = !{!2469, !2470, !2471, !2472, !2473}
!2469 = !DILocalVariable(name: "str", arg: 1, scope: !2465, file: !3, line: 1807, type: !375)
!2470 = !DILocalVariable(name: "r_orig", arg: 2, scope: !2465, file: !3, line: 1807, type: !6)
!2471 = !DILocalVariable(name: "buf_size", arg: 3, scope: !2465, file: !3, line: 1807, type: !606)
!2472 = !DILocalVariable(name: "digits", arg: 4, scope: !2465, file: !3, line: 1808, type: !606)
!2473 = !DILocalVariable(name: "crop_trailing_zeros", arg: 5, scope: !2465, file: !3, line: 1808, type: !373)
!2474 = !DILocation(line: 0, scope: !2465)
!2475 = !DILocation(line: 1810, column: 3, scope: !2465)
!2476 = !DILocation(line: 1812, column: 1, scope: !2465)
!2477 = distinct !DISubprogram(name: "real_to_hexadecimal", scope: !3, file: !3, line: 1820, type: !2466, scopeLine: 1822, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2478)
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2493, !2494}
!2479 = !DILocalVariable(name: "str", arg: 1, scope: !2477, file: !3, line: 1820, type: !375)
!2480 = !DILocalVariable(name: "r", arg: 2, scope: !2477, file: !3, line: 1820, type: !6)
!2481 = !DILocalVariable(name: "buf_size", arg: 3, scope: !2477, file: !3, line: 1820, type: !606)
!2482 = !DILocalVariable(name: "digits", arg: 4, scope: !2477, file: !3, line: 1821, type: !606)
!2483 = !DILocalVariable(name: "crop_trailing_zeros", arg: 5, scope: !2477, file: !3, line: 1821, type: !373)
!2484 = !DILocalVariable(name: "i", scope: !2477, file: !3, line: 1823, type: !373)
!2485 = !DILocalVariable(name: "j", scope: !2477, file: !3, line: 1823, type: !373)
!2486 = !DILocalVariable(name: "exp", scope: !2477, file: !3, line: 1823, type: !373)
!2487 = !DILocalVariable(name: "p", scope: !2477, file: !3, line: 1824, type: !375)
!2488 = !DILocalVariable(name: "first", scope: !2477, file: !3, line: 1824, type: !375)
!2489 = !DILocalVariable(name: "exp_buf", scope: !2477, file: !3, line: 1825, type: !2490)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 128, elements: !2491)
!2491 = !{!2492}
!2492 = !DISubrange(count: 16)
!2493 = !DILocalVariable(name: "max_digits", scope: !2477, file: !3, line: 1826, type: !606)
!2494 = !DILabel(scope: !2477, name: "out", file: !3, line: 1882)
!2495 = !DILocation(line: 0, scope: !2477)
!2496 = !DILocation(line: 1823, column: 19, scope: !2477)
!2497 = !DILocation(line: 1825, column: 3, scope: !2477)
!2498 = !DILocation(line: 1825, column: 8, scope: !2477)
!2499 = !DILocation(line: 1828, column: 14, scope: !2477)
!2500 = !DILocation(line: 1828, column: 3, scope: !2477)
!2501 = !DILocation(line: 1832, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1829, column: 5)
!2503 = !DILocation(line: 1836, column: 24, scope: !2502)
!2504 = !DILocation(line: 1836, column: 21, scope: !2502)
!2505 = !DILocation(line: 1836, column: 7, scope: !2502)
!2506 = !DILocation(line: 1837, column: 7, scope: !2502)
!2507 = !DILocation(line: 1840, column: 36, scope: !2502)
!2508 = !DILocation(line: 1840, column: 33, scope: !2502)
!2509 = !DILocation(line: 1841, column: 13, scope: !2502)
!2510 = !DILocation(line: 1841, column: 10, scope: !2502)
!2511 = !DILocation(line: 1840, column: 7, scope: !2502)
!2512 = !DILocation(line: 1842, column: 7, scope: !2502)
!2513 = !DILocation(line: 1847, column: 10, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1847, column: 7)
!2515 = !DILocation(line: 1847, column: 7, scope: !2514)
!2516 = !DILocation(line: 1847, column: 7, scope: !2477)
!2517 = !DILocation(line: 1850, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1848, column: 5)
!2519 = !DILocation(line: 1851, column: 7, scope: !2518)
!2520 = !DILocation(line: 1854, column: 14, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1854, column: 7)
!2522 = !DILocation(line: 1854, column: 7, scope: !2477)
!2523 = !DILocation(line: 1859, column: 3, scope: !2477)
!2524 = !DILocation(line: 1860, column: 27, scope: !2477)
!2525 = !DILocation(line: 1860, column: 25, scope: !2477)
!2526 = !DILocation(line: 1860, column: 49, scope: !2477)
!2527 = !DILocation(line: 1860, column: 46, scope: !2477)
!2528 = !DILocation(line: 1860, column: 44, scope: !2477)
!2529 = !DILocation(line: 1860, column: 58, scope: !2477)
!2530 = !DILocation(line: 1861, column: 3, scope: !2477)
!2531 = !DILocation(line: 1866, column: 10, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1866, column: 7)
!2533 = !DILocation(line: 1862, column: 14, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1862, column: 7)
!2535 = !DILocation(line: 1862, column: 7, scope: !2477)
!2536 = !DILocation(line: 1866, column: 7, scope: !2532)
!2537 = !DILocation(line: 1866, column: 7, scope: !2477)
!2538 = !DILocation(line: 1867, column: 7, scope: !2532)
!2539 = !DILocation(line: 1867, column: 10, scope: !2532)
!2540 = !DILocation(line: 1867, column: 5, scope: !2532)
!2541 = !DILocation(line: 1868, column: 5, scope: !2477)
!2542 = !DILocation(line: 1868, column: 8, scope: !2477)
!2543 = !DILocation(line: 1869, column: 5, scope: !2477)
!2544 = !DILocation(line: 1869, column: 8, scope: !2477)
!2545 = !DILocation(line: 1870, column: 5, scope: !2477)
!2546 = !DILocation(line: 1870, column: 8, scope: !2477)
!2547 = !DILocation(line: 1871, column: 8, scope: !2477)
!2548 = !DILocation(line: 1874, column: 8, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1874, column: 3)
!2550 = !DILocation(line: 0, scope: !2549)
!2551 = !DILocation(line: 1863, column: 12, scope: !2534)
!2552 = !DILocation(line: 1874, column: 25, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1874, column: 3)
!2554 = !DILocation(line: 1874, column: 3, scope: !2549)
!2555 = !DILocation(line: 0, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1876, column: 7)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 1875, column: 5)
!2558 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 1875, column: 5)
!2559 = !DILocation(line: 1875, column: 5, scope: !2558)
!2560 = !DILocation(line: 0, scope: !2558)
!2561 = !DILocation(line: 1875, column: 40, scope: !2557)
!2562 = !DILocation(line: 1877, column: 29, scope: !2556)
!2563 = !DILocation(line: 1877, column: 39, scope: !2556)
!2564 = !DILocation(line: 1877, column: 45, scope: !2556)
!2565 = !DILocation(line: 1877, column: 9, scope: !2556)
!2566 = !DILocation(line: 1877, column: 4, scope: !2556)
!2567 = !DILocation(line: 1877, column: 7, scope: !2556)
!2568 = !DILocation(line: 1878, column: 6, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 1878, column: 6)
!2570 = !DILocation(line: 1878, column: 15, scope: !2569)
!2571 = !DILocation(line: 1878, column: 6, scope: !2556)
!2572 = !DILocation(line: 1875, column: 48, scope: !2557)
!2573 = !DILocation(line: 1875, column: 5, scope: !2557)
!2574 = distinct !{!2574, !2559, !2575}
!2575 = !DILocation(line: 1880, column: 7, scope: !2558)
!2576 = !DILocation(line: 1874, column: 31, scope: !2553)
!2577 = !DILocation(line: 1874, column: 3, scope: !2553)
!2578 = distinct !{!2578, !2554, !2579}
!2579 = !DILocation(line: 1880, column: 7, scope: !2549)
!2580 = !DILocation(line: 1882, column: 2, scope: !2477)
!2581 = !DILocation(line: 1883, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1883, column: 7)
!2583 = !DILocation(line: 1883, column: 7, scope: !2477)
!2584 = !DILocation(line: 1884, column: 5, scope: !2582)
!2585 = !DILocation(line: 1884, column: 14, scope: !2582)
!2586 = !DILocation(line: 1884, column: 26, scope: !2582)
!2587 = !DILocation(line: 1884, column: 29, scope: !2582)
!2588 = !DILocation(line: 1884, column: 35, scope: !2582)
!2589 = !DILocation(line: 1885, column: 8, scope: !2582)
!2590 = distinct !{!2590, !2584, !2589}
!2591 = !DILocation(line: 1887, column: 3, scope: !2477)
!2592 = !DILocation(line: 1888, column: 1, scope: !2477)
!2593 = distinct !DISubprogram(name: "real_from_string", scope: !3, file: !3, line: 1895, type: !2594, scopeLine: 1896, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!373, !409, !378}
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2604, !2605, !2608, !2610, !2611, !2614, !2615, !2616}
!2597 = !DILocalVariable(name: "r", arg: 1, scope: !2593, file: !3, line: 1895, type: !409)
!2598 = !DILocalVariable(name: "str", arg: 2, scope: !2593, file: !3, line: 1895, type: !378)
!2599 = !DILocalVariable(name: "exp", scope: !2593, file: !3, line: 1897, type: !373)
!2600 = !DILocalVariable(name: "sign", scope: !2593, file: !3, line: 1898, type: !372)
!2601 = !DILocalVariable(name: "pos", scope: !2602, file: !3, line: 1929, type: !373)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1927, column: 5)
!2603 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 1926, column: 7)
!2604 = !DILocalVariable(name: "d", scope: !2602, file: !3, line: 1929, type: !373)
!2605 = !DILocalVariable(name: "exp_neg", scope: !2606, file: !3, line: 1986, type: !372)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1985, column: 2)
!2607 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1984, column: 11)
!2608 = !DILocalVariable(name: "ten", scope: !2609, file: !3, line: 2026, type: !6)
!2609 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 2024, column: 5)
!2610 = !DILocalVariable(name: "d", scope: !2609, file: !3, line: 2027, type: !373)
!2611 = !DILocalVariable(name: "exp_neg", scope: !2612, file: !3, line: 2062, type: !372)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 2061, column: 2)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 2060, column: 11)
!2614 = !DILabel(scope: !2593, name: "is_a_zero", file: !3, line: 2100)
!2615 = !DILabel(scope: !2593, name: "underflow", file: !3, line: 2104)
!2616 = !DILabel(scope: !2593, name: "overflow", file: !3, line: 2108)
!2617 = !DILocation(line: 0, scope: !2593)
!2618 = !DILocation(line: 1900, column: 3, scope: !2593)
!2619 = !DILocation(line: 1902, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 1902, column: 7)
!2621 = !DILocation(line: 1902, column: 12, scope: !2620)
!2622 = !DILocation(line: 1902, column: 7, scope: !2593)
!2623 = !DILocation(line: 1905, column: 10, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 1903, column: 5)
!2625 = !DILocation(line: 1906, column: 5, scope: !2624)
!2626 = !DILocation(line: 1907, column: 17, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 1907, column: 12)
!2628 = !DILocation(line: 1908, column: 8, scope: !2627)
!2629 = !DILocation(line: 1907, column: 12, scope: !2620)
!2630 = !DILocation(line: 0, scope: !2620)
!2631 = !DILocation(line: 1910, column: 8, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 1910, column: 7)
!2633 = !DILocation(line: 1910, column: 7, scope: !2593)
!2634 = !DILocation(line: 1912, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1911, column: 5)
!2636 = !DILocation(line: 1913, column: 7, scope: !2635)
!2637 = !DILocation(line: 1915, column: 13, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1915, column: 12)
!2639 = !DILocation(line: 1915, column: 12, scope: !2632)
!2640 = !DILocation(line: 1917, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1916, column: 5)
!2642 = !DILocation(line: 1918, column: 7, scope: !2641)
!2643 = !DILocation(line: 1920, column: 13, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1920, column: 12)
!2645 = !DILocation(line: 1920, column: 12, scope: !2638)
!2646 = !DILocation(line: 1922, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 1921, column: 5)
!2648 = !DILocation(line: 1923, column: 7, scope: !2647)
!2649 = !DILocation(line: 1926, column: 7, scope: !2603)
!2650 = !DILocation(line: 1926, column: 14, scope: !2603)
!2651 = !DILocation(line: 1926, column: 21, scope: !2603)
!2652 = !DILocation(line: 1926, column: 25, scope: !2603)
!2653 = !DILocation(line: 1926, column: 32, scope: !2603)
!2654 = !DILocation(line: 1926, column: 39, scope: !2603)
!2655 = !DILocation(line: 1926, column: 49, scope: !2603)
!2656 = !DILocation(line: 1926, column: 7, scope: !2593)
!2657 = !DILocation(line: 0, scope: !2602)
!2658 = !DILocation(line: 1931, column: 11, scope: !2602)
!2659 = !DILocation(line: 1933, column: 7, scope: !2602)
!2660 = !DILocation(line: 1933, column: 14, scope: !2602)
!2661 = !DILocation(line: 1933, column: 19, scope: !2602)
!2662 = !DILocation(line: 0, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1946, column: 13)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1940, column: 8)
!2665 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1936, column: 2)
!2666 = !DILocation(line: 1935, column: 7, scope: !2602)
!2667 = !DILocation(line: 1934, column: 5, scope: !2602)
!2668 = distinct !{!2668, !2659, !2667}
!2669 = !DILocation(line: 1937, column: 8, scope: !2665)
!2670 = !DILocation(line: 1938, column: 10, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1938, column: 8)
!2672 = !DILocation(line: 1938, column: 8, scope: !2665)
!2673 = !DILocation(line: 1940, column: 12, scope: !2664)
!2674 = !DILocation(line: 1940, column: 8, scope: !2665)
!2675 = !DILocation(line: 1943, column: 6, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1941, column: 6)
!2677 = !DILocation(line: 1943, column: 32, scope: !2676)
!2678 = !DILocation(line: 1943, column: 24, scope: !2676)
!2679 = !DILocation(line: 1942, column: 19, scope: !2676)
!2680 = !DILocation(line: 1942, column: 8, scope: !2676)
!2681 = !DILocation(line: 1943, column: 3, scope: !2676)
!2682 = !DILocation(line: 1944, column: 12, scope: !2676)
!2683 = !DILocation(line: 1945, column: 6, scope: !2676)
!2684 = !DILocation(line: 1946, column: 13, scope: !2663)
!2685 = !DILocation(line: 1946, column: 13, scope: !2664)
!2686 = !DILocation(line: 1949, column: 16, scope: !2663)
!2687 = !DILocation(line: 1949, column: 6, scope: !2663)
!2688 = !DILocation(line: 1950, column: 8, scope: !2665)
!2689 = !DILocation(line: 1951, column: 7, scope: !2665)
!2690 = distinct !{!2690, !2666, !2691}
!2691 = !DILocation(line: 1952, column: 2, scope: !2602)
!2692 = !DILocation(line: 1953, column: 16, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1953, column: 11)
!2694 = !DILocation(line: 1953, column: 11, scope: !2602)
!2695 = !DILocation(line: 1955, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1954, column: 2)
!2697 = !DILocation(line: 1956, column: 12, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 1956, column: 8)
!2699 = !DILocation(line: 1956, column: 8, scope: !2696)
!2700 = !DILocation(line: 1958, column: 8, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1957, column: 6)
!2702 = !DILocation(line: 0, scope: !2696)
!2703 = !DILocation(line: 1958, column: 15, scope: !2701)
!2704 = !DILocation(line: 1958, column: 20, scope: !2701)
!2705 = !DILocation(line: 1959, column: 6, scope: !2701)
!2706 = !DILocation(line: 1959, column: 14, scope: !2701)
!2707 = distinct !{!2707, !2700, !2708}
!2708 = !DILocation(line: 1959, column: 17, scope: !2701)
!2709 = !DILocation(line: 1961, column: 4, scope: !2696)
!2710 = !DILocation(line: 1897, column: 7, scope: !2593)
!2711 = !DILocation(line: 1963, column: 12, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 1962, column: 6)
!2713 = !DILocation(line: 1964, column: 14, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1964, column: 12)
!2715 = !DILocation(line: 1964, column: 12, scope: !2712)
!2716 = !DILocation(line: 1966, column: 16, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1966, column: 12)
!2718 = !DILocation(line: 1966, column: 12, scope: !2712)
!2719 = !DILocation(line: 1969, column: 10, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 1967, column: 3)
!2721 = !DILocation(line: 1969, column: 36, scope: !2720)
!2722 = !DILocation(line: 1969, column: 28, scope: !2720)
!2723 = !DILocation(line: 1968, column: 16, scope: !2720)
!2724 = !DILocation(line: 1968, column: 5, scope: !2720)
!2725 = !DILocation(line: 1969, column: 7, scope: !2720)
!2726 = !DILocation(line: 1970, column: 9, scope: !2720)
!2727 = !DILocation(line: 1971, column: 3, scope: !2720)
!2728 = !DILocation(line: 1972, column: 17, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 1972, column: 17)
!2730 = !DILocation(line: 1972, column: 17, scope: !2717)
!2731 = !DILocation(line: 1975, column: 13, scope: !2729)
!2732 = !DILocation(line: 1975, column: 3, scope: !2729)
!2733 = !DILocation(line: 1976, column: 11, scope: !2712)
!2734 = distinct !{!2734, !2709, !2735}
!2735 = !DILocation(line: 1977, column: 6, scope: !2696)
!2736 = !DILocation(line: 1981, column: 12, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1981, column: 11)
!2738 = !DILocation(line: 1981, column: 11, scope: !2602)
!2739 = !DILocation(line: 1984, column: 11, scope: !2607)
!2740 = !DILocation(line: 1984, column: 16, scope: !2607)
!2741 = !DILocation(line: 1984, column: 23, scope: !2607)
!2742 = !DILocation(line: 1984, column: 31, scope: !2607)
!2743 = !DILocation(line: 1984, column: 11, scope: !2602)
!2744 = !DILocation(line: 0, scope: !2606)
!2745 = !DILocation(line: 1988, column: 7, scope: !2606)
!2746 = !DILocation(line: 1989, column: 8, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1989, column: 8)
!2748 = !DILocation(line: 1989, column: 13, scope: !2747)
!2749 = !DILocation(line: 1989, column: 8, scope: !2606)
!2750 = !DILocation(line: 1992, column: 11, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1990, column: 6)
!2752 = !DILocation(line: 1993, column: 6, scope: !2751)
!2753 = !DILocation(line: 1994, column: 18, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1994, column: 13)
!2755 = !DILocation(line: 1995, column: 9, scope: !2754)
!2756 = !DILocation(line: 1994, column: 13, scope: !2747)
!2757 = !DILocation(line: 0, scope: !2747)
!2758 = !DILocation(line: 1998, column: 4, scope: !2606)
!2759 = !DILocation(line: 1998, column: 11, scope: !2606)
!2760 = !DILocation(line: 2000, column: 10, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1999, column: 6)
!2762 = !DILocation(line: 2001, column: 13, scope: !2761)
!2763 = !DILocation(line: 2001, column: 18, scope: !2761)
!2764 = !DILocation(line: 2001, column: 10, scope: !2761)
!2765 = !DILocation(line: 2002, column: 14, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 2002, column: 12)
!2767 = !DILocation(line: 2002, column: 12, scope: !2761)
!2768 = !DILocation(line: 2005, column: 9, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 2005, column: 9)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 2003, column: 3)
!2771 = !DILocation(line: 0, scope: !2769)
!2772 = !DILocation(line: 2010, column: 11, scope: !2761)
!2773 = distinct !{!2773, !2758, !2774}
!2774 = !DILocation(line: 2011, column: 6, scope: !2606)
!2775 = !DILocation(line: 2012, column: 8, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 2012, column: 8)
!2777 = !DILocation(line: 2013, column: 10, scope: !2776)
!2778 = !DILocation(line: 2012, column: 8, scope: !2606)
!2779 = !DILocation(line: 2015, column: 8, scope: !2606)
!2780 = !DILocation(line: 2016, column: 2, scope: !2607)
!2781 = !DILocation(line: 2018, column: 10, scope: !2602)
!2782 = !DILocation(line: 2018, column: 13, scope: !2602)
!2783 = !DILocation(line: 2019, column: 7, scope: !2602)
!2784 = !DILocation(line: 2021, column: 7, scope: !2602)
!2785 = !DILocation(line: 2022, column: 5, scope: !2603)
!2786 = !DILocation(line: 2026, column: 36, scope: !2609)
!2787 = !DILocation(line: 0, scope: !2609)
!2788 = !DILocation(line: 2029, column: 7, scope: !2609)
!2789 = !DILocation(line: 2029, column: 14, scope: !2609)
!2790 = !DILocation(line: 2029, column: 19, scope: !2609)
!2791 = !DILocation(line: 2031, column: 7, scope: !2609)
!2792 = !DILocation(line: 2030, column: 5, scope: !2609)
!2793 = distinct !{!2793, !2788, !2792}
!2794 = !DILocation(line: 2031, column: 14, scope: !2609)
!2795 = !DILocation(line: 2033, column: 12, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 2032, column: 2)
!2797 = !DILocation(line: 2033, column: 8, scope: !2796)
!2798 = !DILocation(line: 2033, column: 15, scope: !2796)
!2799 = !DILocation(line: 2034, column: 4, scope: !2796)
!2800 = !DILocation(line: 2035, column: 8, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 2035, column: 8)
!2802 = !DILocation(line: 2035, column: 8, scope: !2796)
!2803 = !DILocation(line: 2036, column: 20, scope: !2801)
!2804 = !DILocation(line: 2036, column: 6, scope: !2801)
!2805 = distinct !{!2805, !2791, !2806}
!2806 = !DILocation(line: 2037, column: 2, scope: !2609)
!2807 = !DILocation(line: 2038, column: 16, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 2038, column: 11)
!2809 = !DILocation(line: 2038, column: 11, scope: !2609)
!2810 = !DILocation(line: 2040, column: 7, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 2039, column: 2)
!2812 = !DILocation(line: 2041, column: 11, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 2041, column: 8)
!2814 = !DILocation(line: 2041, column: 14, scope: !2813)
!2815 = !DILocation(line: 2041, column: 8, scope: !2811)
!2816 = !DILocation(line: 2043, column: 8, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 2042, column: 6)
!2818 = !DILocation(line: 0, scope: !2811)
!2819 = !DILocation(line: 2043, column: 15, scope: !2817)
!2820 = !DILocation(line: 2043, column: 20, scope: !2817)
!2821 = !DILocation(line: 2044, column: 6, scope: !2817)
!2822 = !DILocation(line: 2044, column: 13, scope: !2817)
!2823 = distinct !{!2823, !2816, !2822}
!2824 = !DILocation(line: 2046, column: 4, scope: !2811)
!2825 = !DILocation(line: 2046, column: 11, scope: !2811)
!2826 = !DILocation(line: 2048, column: 16, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 2047, column: 6)
!2828 = !DILocation(line: 2048, column: 12, scope: !2827)
!2829 = !DILocation(line: 2048, column: 19, scope: !2827)
!2830 = !DILocation(line: 2049, column: 8, scope: !2827)
!2831 = !DILocation(line: 2050, column: 12, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 2050, column: 12)
!2833 = !DILocation(line: 2050, column: 12, scope: !2827)
!2834 = !DILocation(line: 2051, column: 24, scope: !2832)
!2835 = !DILocation(line: 2051, column: 10, scope: !2832)
!2836 = !DILocation(line: 2052, column: 11, scope: !2827)
!2837 = distinct !{!2837, !2824, !2838}
!2838 = !DILocation(line: 2053, column: 6, scope: !2811)
!2839 = !DILocation(line: 2057, column: 14, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 2057, column: 11)
!2841 = !DILocation(line: 2057, column: 17, scope: !2840)
!2842 = !DILocation(line: 2057, column: 11, scope: !2609)
!2843 = !DILocation(line: 2060, column: 16, scope: !2613)
!2844 = !DILocation(line: 2060, column: 23, scope: !2613)
!2845 = !DILocation(line: 2060, column: 31, scope: !2613)
!2846 = !DILocation(line: 2060, column: 11, scope: !2609)
!2847 = !DILocation(line: 0, scope: !2612)
!2848 = !DILocation(line: 2064, column: 7, scope: !2612)
!2849 = !DILocation(line: 2065, column: 8, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 2065, column: 8)
!2851 = !DILocation(line: 2065, column: 13, scope: !2850)
!2852 = !DILocation(line: 2065, column: 8, scope: !2612)
!2853 = !DILocation(line: 2068, column: 11, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 2066, column: 6)
!2855 = !DILocation(line: 2069, column: 6, scope: !2854)
!2856 = !DILocation(line: 2070, column: 18, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 2070, column: 13)
!2858 = !DILocation(line: 2071, column: 9, scope: !2857)
!2859 = !DILocation(line: 2070, column: 13, scope: !2850)
!2860 = !DILocation(line: 0, scope: !2850)
!2861 = !DILocation(line: 2074, column: 4, scope: !2612)
!2862 = !DILocation(line: 2074, column: 11, scope: !2612)
!2863 = !DILocation(line: 2076, column: 10, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 2075, column: 6)
!2865 = !DILocation(line: 2077, column: 13, scope: !2864)
!2866 = !DILocation(line: 2077, column: 18, scope: !2864)
!2867 = !DILocation(line: 2077, column: 10, scope: !2864)
!2868 = !DILocation(line: 2078, column: 14, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 2078, column: 12)
!2870 = !DILocation(line: 2078, column: 12, scope: !2864)
!2871 = !DILocation(line: 2081, column: 9, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 2081, column: 9)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 2079, column: 3)
!2874 = !DILocation(line: 0, scope: !2872)
!2875 = !DILocation(line: 2086, column: 11, scope: !2864)
!2876 = distinct !{!2876, !2861, !2877}
!2877 = !DILocation(line: 2087, column: 6, scope: !2612)
!2878 = !DILocation(line: 2088, column: 8, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 2088, column: 8)
!2880 = !DILocation(line: 2089, column: 10, scope: !2879)
!2881 = !DILocation(line: 2088, column: 8, scope: !2612)
!2882 = !DILocation(line: 2090, column: 8, scope: !2612)
!2883 = !DILocation(line: 2091, column: 2, scope: !2613)
!2884 = !DILocation(line: 2093, column: 11, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 2093, column: 11)
!2886 = !DILocation(line: 2093, column: 11, scope: !2609)
!2887 = !DILocation(line: 2094, column: 2, scope: !2885)
!2888 = !DILocation(line: 2097, column: 6, scope: !2593)
!2889 = !DILocation(line: 2097, column: 11, scope: !2593)
!2890 = !DILocation(line: 2098, column: 3, scope: !2593)
!2891 = !DILocation(line: 2100, column: 2, scope: !2593)
!2892 = !DILocation(line: 2101, column: 3, scope: !2593)
!2893 = !DILocation(line: 2102, column: 3, scope: !2593)
!2894 = !DILocation(line: 2104, column: 2, scope: !2593)
!2895 = !DILocation(line: 2105, column: 3, scope: !2593)
!2896 = !DILocation(line: 2106, column: 3, scope: !2593)
!2897 = !DILocation(line: 2108, column: 2, scope: !2593)
!2898 = !DILocation(line: 2109, column: 3, scope: !2593)
!2899 = !DILocation(line: 2110, column: 3, scope: !2593)
!2900 = !DILocation(line: 2111, column: 1, scope: !2593)
!2901 = distinct !DISubprogram(name: "get_canonical_qnan", scope: !3, file: !3, line: 136, type: !1563, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2902)
!2902 = !{!2903, !2904}
!2903 = !DILocalVariable(name: "r", arg: 1, scope: !2901, file: !3, line: 136, type: !409)
!2904 = !DILocalVariable(name: "sign", arg: 2, scope: !2901, file: !3, line: 136, type: !373)
!2905 = !DILocation(line: 0, scope: !2901)
!2906 = !DILocation(line: 138, column: 11, scope: !2901)
!2907 = !DILocation(line: 138, column: 3, scope: !2901)
!2908 = !DILocation(line: 139, column: 6, scope: !2901)
!2909 = !DILocation(line: 139, column: 9, scope: !2901)
!2910 = !DILocation(line: 140, column: 11, scope: !2901)
!2911 = !DILocation(line: 141, column: 16, scope: !2901)
!2912 = !DILocation(line: 142, column: 1, scope: !2901)
!2913 = distinct !DISubprogram(name: "get_canonical_snan", scope: !3, file: !3, line: 145, type: !1563, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2914)
!2914 = !{!2915, !2916}
!2915 = !DILocalVariable(name: "r", arg: 1, scope: !2913, file: !3, line: 145, type: !409)
!2916 = !DILocalVariable(name: "sign", arg: 2, scope: !2913, file: !3, line: 145, type: !373)
!2917 = !DILocation(line: 0, scope: !2913)
!2918 = !DILocation(line: 147, column: 11, scope: !2913)
!2919 = !DILocation(line: 147, column: 3, scope: !2913)
!2920 = !DILocation(line: 148, column: 6, scope: !2913)
!2921 = !DILocation(line: 148, column: 9, scope: !2913)
!2922 = !DILocation(line: 149, column: 11, scope: !2913)
!2923 = !DILocation(line: 151, column: 16, scope: !2913)
!2924 = !DILocation(line: 152, column: 1, scope: !2913)
!2925 = distinct !DISubprogram(name: "normalize", scope: !3, file: !3, line: 476, type: !2926, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !409}
!2928 = !{!2929, !2930, !2931, !2932, !2933}
!2929 = !DILocalVariable(name: "r", arg: 1, scope: !2925, file: !3, line: 476, type: !409)
!2930 = !DILocalVariable(name: "shift", scope: !2925, file: !3, line: 478, type: !373)
!2931 = !DILocalVariable(name: "exp", scope: !2925, file: !3, line: 478, type: !373)
!2932 = !DILocalVariable(name: "i", scope: !2925, file: !3, line: 479, type: !373)
!2933 = !DILocalVariable(name: "j", scope: !2925, file: !3, line: 479, type: !373)
!2934 = !DILocation(line: 0, scope: !2925)
!2935 = !DILocation(line: 481, column: 10, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 481, column: 7)
!2937 = !DILocation(line: 481, column: 7, scope: !2936)
!2938 = !DILocation(line: 481, column: 7, scope: !2925)
!2939 = !DILocation(line: 485, column: 3, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 485, column: 3)
!2941 = !DILocation(line: 0, scope: !2940)
!2942 = !DILocation(line: 485, column: 25, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 485, column: 3)
!2944 = !DILocation(line: 486, column: 9, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 486, column: 9)
!2946 = !DILocation(line: 486, column: 19, scope: !2945)
!2947 = !DILocation(line: 486, column: 9, scope: !2943)
!2948 = !DILocation(line: 487, column: 13, scope: !2945)
!2949 = !DILocation(line: 485, column: 32, scope: !2943)
!2950 = !DILocation(line: 485, column: 3, scope: !2943)
!2951 = distinct !{!2951, !2939, !2952}
!2952 = !DILocation(line: 489, column: 7, scope: !2940)
!2953 = !DILocation(line: 492, column: 9, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 492, column: 7)
!2955 = !DILocation(line: 492, column: 7, scope: !2925)
!2956 = !DILocation(line: 0, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 501, column: 9)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 500, column: 3)
!2959 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 500, column: 3)
!2960 = !DILocation(line: 500, column: 3, scope: !2959)
!2961 = !DILocation(line: 495, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 493, column: 5)
!2963 = !DILocation(line: 496, column: 7, scope: !2962)
!2964 = !DILocation(line: 0, scope: !2959)
!2965 = !DILocation(line: 501, column: 66, scope: !2957)
!2966 = !DILocation(line: 501, column: 39, scope: !2957)
!2967 = !DILocation(line: 501, column: 19, scope: !2957)
!2968 = !DILocation(line: 501, column: 9, scope: !2958)
!2969 = !DILocation(line: 500, column: 18, scope: !2958)
!2970 = !DILocation(line: 500, column: 3, scope: !2958)
!2971 = distinct !{!2971, !2960, !2972}
!2972 = !DILocation(line: 502, column: 7, scope: !2959)
!2973 = !DILocation(line: 503, column: 9, scope: !2925)
!2974 = !DILocation(line: 505, column: 13, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 505, column: 7)
!2976 = !DILocation(line: 505, column: 7, scope: !2925)
!2977 = !DILocation(line: 507, column: 13, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 506, column: 5)
!2979 = !DILocation(line: 507, column: 26, scope: !2978)
!2980 = !DILocation(line: 508, column: 15, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 508, column: 11)
!2982 = !DILocation(line: 508, column: 11, scope: !2978)
!2983 = !DILocation(line: 509, column: 17, scope: !2981)
!2984 = !DILocation(line: 509, column: 2, scope: !2981)
!2985 = !DILocation(line: 510, column: 20, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 510, column: 16)
!2987 = !DILocation(line: 510, column: 16, scope: !2981)
!2988 = !DILocation(line: 511, column: 18, scope: !2986)
!2989 = !DILocation(line: 511, column: 2, scope: !2986)
!2990 = !DILocation(line: 514, column: 4, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 513, column: 2)
!2992 = !DILocation(line: 515, column: 4, scope: !2991)
!2993 = !DILocation(line: 518, column: 1, scope: !2925)
!2994 = distinct !DISubprogram(name: "times_pten", scope: !3, file: !3, line: 2314, type: !1563, scopeLine: 2315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001}
!2996 = !DILocalVariable(name: "r", arg: 1, scope: !2994, file: !3, line: 2314, type: !409)
!2997 = !DILocalVariable(name: "exp", arg: 2, scope: !2994, file: !3, line: 2314, type: !373)
!2998 = !DILocalVariable(name: "pten", scope: !2994, file: !3, line: 2316, type: !8)
!2999 = !DILocalVariable(name: "rr", scope: !2994, file: !3, line: 2316, type: !409)
!3000 = !DILocalVariable(name: "negative", scope: !2994, file: !3, line: 2317, type: !372)
!3001 = !DILocalVariable(name: "i", scope: !2994, file: !3, line: 2318, type: !373)
!3002 = !DILocation(line: 0, scope: !2994)
!3003 = !DILocation(line: 2316, column: 3, scope: !2994)
!3004 = !DILocation(line: 2320, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 2320, column: 7)
!3006 = !DILocation(line: 2320, column: 7, scope: !2994)
!3007 = !DILocation(line: 2322, column: 13, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 2321, column: 5)
!3009 = !DILocation(line: 2323, column: 15, scope: !3008)
!3010 = !DILocation(line: 2323, column: 14, scope: !3008)
!3011 = !DILocation(line: 2325, column: 5, scope: !3008)
!3012 = !DILocation(line: 0, scope: !3005)
!3013 = !DILocation(line: 2329, column: 8, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 2329, column: 3)
!3015 = !DILocation(line: 0, scope: !3014)
!3016 = !DILocation(line: 2329, column: 19, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 2329, column: 3)
!3018 = !DILocation(line: 2329, column: 3, scope: !3014)
!3019 = !DILocation(line: 2330, column: 13, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 2330, column: 9)
!3021 = !DILocation(line: 2330, column: 9, scope: !3017)
!3022 = !DILocation(line: 2331, column: 28, scope: !3020)
!3023 = !DILocation(line: 2331, column: 7, scope: !3020)
!3024 = !DILocation(line: 2329, column: 24, scope: !3017)
!3025 = !DILocation(line: 2329, column: 33, scope: !3017)
!3026 = !DILocation(line: 2329, column: 3, scope: !3017)
!3027 = distinct !{!3027, !3018, !3028}
!3028 = !DILocation(line: 2331, column: 43, scope: !3014)
!3029 = !DILocation(line: 2333, column: 7, scope: !2994)
!3030 = !DILocation(line: 2334, column: 5, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 2333, column: 7)
!3032 = !DILocation(line: 2335, column: 1, scope: !2994)
!3033 = distinct !DISubprogram(name: "real_from_string2", scope: !3, file: !3, line: 2116, type: !3034, scopeLine: 2117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!8, !378, !220}
!3036 = !{!3037, !3038, !3039}
!3037 = !DILocalVariable(name: "s", arg: 1, scope: !3033, file: !3, line: 2116, type: !378)
!3038 = !DILocalVariable(name: "mode", arg: 2, scope: !3033, file: !3, line: 2116, type: !220)
!3039 = !DILocalVariable(name: "r", scope: !3033, file: !3, line: 2118, type: !8)
!3040 = !DILocation(line: 0, scope: !3033)
!3041 = !DILocation(line: 2118, column: 19, scope: !3033)
!3042 = !DILocation(line: 2120, column: 3, scope: !3033)
!3043 = !DILocation(line: 2121, column: 12, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 2121, column: 7)
!3045 = !DILocation(line: 2121, column: 7, scope: !3033)
!3046 = !DILocation(line: 2122, column: 5, scope: !3044)
!3047 = !DILocation(line: 2124, column: 3, scope: !3033)
!3048 = distinct !DISubprogram(name: "real_from_string3", scope: !3, file: !3, line: 2130, type: !3049, scopeLine: 2131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3051)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !409, !378, !220}
!3051 = !{!3052, !3053, !3054}
!3052 = !DILocalVariable(name: "r", arg: 1, scope: !3048, file: !3, line: 2130, type: !409)
!3053 = !DILocalVariable(name: "s", arg: 2, scope: !3048, file: !3, line: 2130, type: !378)
!3054 = !DILocalVariable(name: "mode", arg: 3, scope: !3048, file: !3, line: 2130, type: !220)
!3055 = !DILocation(line: 0, scope: !3048)
!3056 = !DILocation(line: 2132, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 2132, column: 7)
!3058 = !DILocation(line: 2132, column: 7, scope: !3048)
!3059 = !DILocation(line: 2133, column: 5, scope: !3057)
!3060 = !DILocation(line: 2135, column: 5, scope: !3057)
!3061 = !DILocation(line: 2137, column: 12, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 2137, column: 7)
!3063 = !DILocation(line: 2137, column: 7, scope: !3048)
!3064 = !DILocation(line: 2138, column: 5, scope: !3062)
!3065 = !DILocation(line: 2139, column: 1, scope: !3048)
!3066 = distinct !DISubprogram(name: "real_from_integer", scope: !3, file: !3, line: 2144, type: !3067, scopeLine: 2147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{null, !409, !220, !20, !404, !373}
!3069 = !{!3070, !3071, !3072, !3073, !3074}
!3070 = !DILocalVariable(name: "r", arg: 1, scope: !3066, file: !3, line: 2144, type: !409)
!3071 = !DILocalVariable(name: "mode", arg: 2, scope: !3066, file: !3, line: 2144, type: !220)
!3072 = !DILocalVariable(name: "low", arg: 3, scope: !3066, file: !3, line: 2145, type: !20)
!3073 = !DILocalVariable(name: "high", arg: 4, scope: !3066, file: !3, line: 2145, type: !404)
!3074 = !DILocalVariable(name: "unsigned_p", arg: 5, scope: !3066, file: !3, line: 2146, type: !373)
!3075 = !DILocation(line: 0, scope: !3066)
!3076 = !DILocation(line: 2148, column: 16, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 2148, column: 7)
!3078 = !DILocation(line: 2149, column: 5, scope: !3077)
!3079 = !DILocation(line: 2152, column: 15, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 2151, column: 5)
!3081 = !DILocation(line: 2152, column: 7, scope: !3080)
!3082 = !DILocation(line: 2153, column: 10, scope: !3080)
!3083 = !DILocation(line: 2153, column: 13, scope: !3080)
!3084 = !DILocation(line: 2154, column: 22, scope: !3080)
!3085 = !DILocation(line: 2154, column: 26, scope: !3080)
!3086 = !DILocation(line: 2154, column: 29, scope: !3080)
!3087 = !DILocation(line: 2154, column: 15, scope: !3080)
!3088 = !DILocation(line: 2155, column: 7, scope: !3080)
!3089 = !DILocation(line: 2157, column: 14, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 2157, column: 11)
!3091 = !DILocation(line: 2157, column: 11, scope: !3090)
!3092 = !DILocation(line: 2157, column: 11, scope: !3080)
!3093 = !DILocation(line: 2159, column: 11, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 2158, column: 2)
!3095 = !DILocation(line: 2160, column: 12, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 2160, column: 8)
!3097 = !DILocation(line: 2160, column: 8, scope: !3094)
!3098 = !DILocation(line: 2168, column: 4, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 2167, column: 2)
!3100 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 2166, column: 11)
!3101 = !DILocation(line: 2168, column: 20, scope: !3099)
!3102 = !DILocation(line: 2169, column: 4, scope: !3099)
!3103 = !DILocation(line: 2169, column: 20, scope: !3099)
!3104 = !DILocation(line: 2180, column: 7, scope: !3080)
!3105 = !DILocation(line: 2183, column: 7, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 2183, column: 7)
!3107 = !DILocation(line: 2183, column: 7, scope: !3066)
!3108 = !DILocation(line: 2184, column: 5, scope: !3106)
!3109 = !DILocation(line: 2185, column: 17, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 2185, column: 12)
!3111 = !DILocation(line: 2185, column: 12, scope: !3106)
!3112 = !DILocation(line: 2186, column: 5, scope: !3110)
!3113 = !DILocation(line: 2187, column: 1, scope: !3066)
!3114 = distinct !DISubprogram(name: "decimal_from_integer", scope: !3, file: !3, line: 2239, type: !2926, scopeLine: 2240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3115)
!3115 = !{!3116, !3117}
!3116 = !DILocalVariable(name: "r", arg: 1, scope: !3114, file: !3, line: 2239, type: !409)
!3117 = !DILocalVariable(name: "str", scope: !3114, file: !3, line: 2241, type: !3118)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 2048, elements: !3119)
!3119 = !{!3120}
!3120 = !DISubrange(count: 256)
!3121 = !DILocation(line: 0, scope: !3114)
!3122 = !DILocation(line: 2241, column: 3, scope: !3114)
!3123 = !DILocation(line: 2241, column: 8, scope: !3114)
!3124 = !DILocation(line: 2243, column: 3, scope: !3114)
!3125 = !DILocation(line: 2244, column: 3, scope: !3114)
!3126 = !DILocation(line: 2245, column: 1, scope: !3114)
!3127 = !DILocation(line: 2346, column: 13, scope: !523)
!3128 = !DILocation(line: 2346, column: 16, scope: !523)
!3129 = !DILocation(line: 2346, column: 7, scope: !2)
!3130 = !DILocation(line: 2369, column: 18, scope: !522)
!3131 = !DILocation(line: 2370, column: 20, scope: !522)
!3132 = !DILocation(line: 0, scope: !522)
!3133 = !DILocation(line: 2371, column: 11, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !522, file: !3, line: 2371, column: 7)
!3135 = !DILocation(line: 0, scope: !3134)
!3136 = !DILocation(line: 2371, column: 16, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 2371, column: 7)
!3138 = !DILocation(line: 2371, column: 7, scope: !3134)
!3139 = !DILocation(line: 2371, column: 28, scope: !3137)
!3140 = !DILocation(line: 2371, column: 41, scope: !3137)
!3141 = !DILocation(line: 2371, column: 24, scope: !3137)
!3142 = !DILocation(line: 2371, column: 7, scope: !3137)
!3143 = distinct !{!3143, !3138, !3144}
!3144 = !DILocation(line: 2371, column: 43, scope: !3134)
!3145 = !DILocation(line: 2382, column: 3, scope: !2)
!3146 = !DILocation(line: 2394, column: 13, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !384, file: !3, line: 2394, column: 7)
!3148 = !DILocation(line: 2394, column: 16, scope: !3147)
!3149 = !DILocation(line: 2394, column: 7, scope: !384)
!3150 = !DILocation(line: 2396, column: 53, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 2395, column: 5)
!3152 = !DILocation(line: 2396, column: 7, scope: !3151)
!3153 = !DILocation(line: 2397, column: 5, scope: !3151)
!3154 = !DILocation(line: 2398, column: 3, scope: !384)
!3155 = !DILocation(line: 2410, column: 13, scope: !392)
!3156 = !DILocation(line: 2410, column: 16, scope: !392)
!3157 = !DILocation(line: 2410, column: 7, scope: !388)
!3158 = !DILocation(line: 2433, column: 18, scope: !391)
!3159 = !DILocation(line: 2434, column: 20, scope: !391)
!3160 = !DILocation(line: 0, scope: !391)
!3161 = !DILocation(line: 2435, column: 11, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !391, file: !3, line: 2435, column: 7)
!3163 = !DILocation(line: 0, scope: !3162)
!3164 = !DILocation(line: 2435, column: 16, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 2435, column: 7)
!3166 = !DILocation(line: 2435, column: 7, scope: !3162)
!3167 = !DILocation(line: 2435, column: 28, scope: !3165)
!3168 = !DILocation(line: 2435, column: 41, scope: !3165)
!3169 = !DILocation(line: 2435, column: 24, scope: !3165)
!3170 = !DILocation(line: 2435, column: 7, scope: !3165)
!3171 = distinct !{!3171, !3166, !3172}
!3172 = !DILocation(line: 2435, column: 43, scope: !3162)
!3173 = !DILocation(line: 2444, column: 3, scope: !388)
!3174 = distinct !DISubprogram(name: "real_inf", scope: !3, file: !3, line: 2450, type: !2926, scopeLine: 2451, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3175)
!3175 = !{!3176}
!3176 = !DILocalVariable(name: "r", arg: 1, scope: !3174, file: !3, line: 2450, type: !409)
!3177 = !DILocation(line: 0, scope: !3174)
!3178 = !DILocation(line: 2452, column: 3, scope: !3174)
!3179 = !DILocation(line: 2453, column: 1, scope: !3174)
!3180 = distinct !DISubprogram(name: "real_nan", scope: !3, file: !3, line: 2461, type: !3181, scopeLine: 2463, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!372, !409, !378, !373, !220}
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3192, !3193}
!3184 = !DILocalVariable(name: "r", arg: 1, scope: !3180, file: !3, line: 2461, type: !409)
!3185 = !DILocalVariable(name: "str", arg: 2, scope: !3180, file: !3, line: 2461, type: !378)
!3186 = !DILocalVariable(name: "quiet", arg: 3, scope: !3180, file: !3, line: 2461, type: !373)
!3187 = !DILocalVariable(name: "mode", arg: 4, scope: !3180, file: !3, line: 2462, type: !220)
!3188 = !DILocalVariable(name: "fmt", scope: !3180, file: !3, line: 2464, type: !402)
!3189 = !DILocalVariable(name: "base", scope: !3190, file: !3, line: 2478, type: !373)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 2477, column: 5)
!3191 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 2469, column: 7)
!3192 = !DILocalVariable(name: "d", scope: !3190, file: !3, line: 2478, type: !373)
!3193 = !DILocalVariable(name: "u", scope: !3194, file: !3, line: 2505, type: !8)
!3194 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 2504, column: 2)
!3195 = !DILocation(line: 0, scope: !3180)
!3196 = !DILocation(line: 2466, column: 9, scope: !3180)
!3197 = !DILocation(line: 2467, column: 3, scope: !3180)
!3198 = !DILocation(line: 2469, column: 7, scope: !3191)
!3199 = !DILocation(line: 2469, column: 12, scope: !3191)
!3200 = !DILocation(line: 2469, column: 7, scope: !3180)
!3201 = !DILocation(line: 2471, column: 11, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 2471, column: 11)
!3203 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 2470, column: 5)
!3204 = !DILocation(line: 2471, column: 11, scope: !3203)
!3205 = !DILocation(line: 2472, column: 2, scope: !3202)
!3206 = !DILocation(line: 2474, column: 2, scope: !3202)
!3207 = !DILocation(line: 0, scope: !3190)
!3208 = !DILocation(line: 2480, column: 15, scope: !3190)
!3209 = !DILocation(line: 2480, column: 7, scope: !3190)
!3210 = !DILocation(line: 2481, column: 10, scope: !3190)
!3211 = !DILocation(line: 2481, column: 13, scope: !3190)
!3212 = !DILocation(line: 2485, column: 7, scope: !3190)
!3213 = !DILocation(line: 2485, column: 14, scope: !3190)
!3214 = !DILocation(line: 2486, column: 5, scope: !3190)
!3215 = distinct !{!3215, !3212, !3214}
!3216 = !DILocation(line: 2487, column: 16, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 2487, column: 11)
!3218 = !DILocation(line: 2487, column: 11, scope: !3190)
!3219 = !DILocation(line: 2488, column: 5, scope: !3217)
!3220 = !DILocation(line: 2488, column: 2, scope: !3217)
!3221 = !DILocation(line: 2489, column: 21, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 2489, column: 16)
!3223 = !DILocation(line: 2490, column: 5, scope: !3222)
!3224 = !DILocation(line: 2489, column: 16, scope: !3217)
!3225 = !DILocation(line: 0, scope: !3217)
!3226 = !DILocation(line: 2491, column: 11, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 2491, column: 11)
!3228 = !DILocation(line: 2491, column: 16, scope: !3227)
!3229 = !DILocation(line: 2491, column: 11, scope: !3190)
!3230 = !DILocation(line: 2493, column: 7, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 2492, column: 2)
!3232 = !DILocation(line: 2494, column: 8, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 2494, column: 8)
!3234 = !DILocation(line: 2494, column: 13, scope: !3233)
!3235 = !DILocation(line: 2494, column: 20, scope: !3233)
!3236 = !DILocation(line: 2494, column: 28, scope: !3233)
!3237 = !DILocation(line: 2494, column: 8, scope: !3231)
!3238 = !DILocation(line: 2497, column: 11, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 2495, column: 6)
!3240 = !DILocation(line: 2498, column: 6, scope: !3239)
!3241 = !DILocation(line: 0, scope: !3194)
!3242 = !DILocation(line: 2503, column: 7, scope: !3190)
!3243 = !DILocation(line: 2503, column: 19, scope: !3190)
!3244 = !DILocation(line: 2503, column: 37, scope: !3190)
!3245 = !DILocation(line: 2505, column: 4, scope: !3194)
!3246 = !DILocation(line: 2510, column: 8, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 2508, column: 6)
!3248 = !DILocation(line: 2524, column: 4, scope: !3194)
!3249 = !DILocation(line: 2525, column: 15, scope: !3194)
!3250 = !DILocation(line: 2525, column: 13, scope: !3194)
!3251 = !DILocation(line: 2526, column: 4, scope: !3194)
!3252 = !DILocation(line: 2528, column: 7, scope: !3194)
!3253 = !DILocation(line: 2529, column: 2, scope: !3190)
!3254 = distinct !{!3254, !3242, !3253}
!3255 = !DILocation(line: 2532, column: 11, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 2532, column: 11)
!3257 = !DILocation(line: 2513, column: 8, scope: !3247)
!3258 = !DILocation(line: 2507, column: 4, scope: !3194)
!3259 = !DILocation(line: 2516, column: 8, scope: !3247)
!3260 = !DILocation(line: 2517, column: 8, scope: !3247)
!3261 = !DILocation(line: 2518, column: 8, scope: !3247)
!3262 = !DILocation(line: 2519, column: 8, scope: !3247)
!3263 = !DILocation(line: 2521, column: 8, scope: !3247)
!3264 = !DILocation(line: 2522, column: 6, scope: !3247)
!3265 = !DILocation(line: 2532, column: 16, scope: !3256)
!3266 = !DILocation(line: 2532, column: 11, scope: !3190)
!3267 = !DILocation(line: 2537, column: 57, scope: !3190)
!3268 = !DILocation(line: 2537, column: 50, scope: !3190)
!3269 = !DILocation(line: 2537, column: 7, scope: !3190)
!3270 = !DILocation(line: 2540, column: 7, scope: !3190)
!3271 = !DILocation(line: 2540, column: 23, scope: !3190)
!3272 = !DILocation(line: 2543, column: 23, scope: !3190)
!3273 = !DILocation(line: 2543, column: 21, scope: !3190)
!3274 = !DILocation(line: 2544, column: 5, scope: !3191)
!3275 = !DILocation(line: 2546, column: 3, scope: !3180)
!3276 = !DILocation(line: 2547, column: 1, scope: !3180)
!3277 = distinct !DISubprogram(name: "lshift_significand", scope: !3, file: !3, line: 235, type: !1947, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3283}
!3279 = !DILocalVariable(name: "r", arg: 1, scope: !3277, file: !3, line: 235, type: !409)
!3280 = !DILocalVariable(name: "a", arg: 2, scope: !3277, file: !3, line: 235, type: !6)
!3281 = !DILocalVariable(name: "n", arg: 3, scope: !3277, file: !3, line: 236, type: !12)
!3282 = !DILocalVariable(name: "i", scope: !3277, file: !3, line: 238, type: !12)
!3283 = !DILocalVariable(name: "ofs", scope: !3277, file: !3, line: 238, type: !12)
!3284 = !DILocation(line: 0, scope: !3277)
!3285 = !DILocation(line: 238, column: 27, scope: !3277)
!3286 = !DILocation(line: 240, column: 5, scope: !3277)
!3287 = !DILocation(line: 241, column: 9, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 241, column: 7)
!3289 = !DILocation(line: 241, column: 7, scope: !3277)
!3290 = !DILocation(line: 0, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 250, column: 7)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 249, column: 5)
!3293 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 249, column: 5)
!3294 = !DILocation(line: 249, column: 5, scope: !3293)
!3295 = !DILocation(line: 243, column: 7, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 243, column: 7)
!3297 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 242, column: 5)
!3298 = !DILocation(line: 0, scope: !3296)
!3299 = !DILocation(line: 243, column: 23, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 243, column: 7)
!3301 = !DILocation(line: 243, column: 27, scope: !3300)
!3302 = !DILocation(line: 245, column: 7, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 245, column: 7)
!3304 = !DILocation(line: 244, column: 36, scope: !3300)
!3305 = !DILocation(line: 244, column: 38, scope: !3300)
!3306 = !DILocation(line: 244, column: 22, scope: !3300)
!3307 = !DILocation(line: 244, column: 2, scope: !3300)
!3308 = !DILocation(line: 244, column: 20, scope: !3300)
!3309 = !DILocation(line: 243, column: 36, scope: !3300)
!3310 = !DILocation(line: 243, column: 7, scope: !3300)
!3311 = distinct !{!3311, !3295, !3312}
!3312 = !DILocation(line: 244, column: 42, scope: !3296)
!3313 = !DILocation(line: 0, scope: !3297)
!3314 = !DILocation(line: 245, column: 16, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 245, column: 7)
!3316 = !DILocation(line: 246, column: 16, scope: !3315)
!3317 = !DILocation(line: 246, column: 2, scope: !3315)
!3318 = !DILocation(line: 246, column: 20, scope: !3315)
!3319 = !DILocation(line: 245, column: 25, scope: !3315)
!3320 = !DILocation(line: 245, column: 7, scope: !3315)
!3321 = distinct !{!3321, !3302, !3322}
!3322 = !DILocation(line: 246, column: 22, scope: !3303)
!3323 = !DILocation(line: 0, scope: !3293)
!3324 = !DILocation(line: 249, column: 19, scope: !3292)
!3325 = !DILocation(line: 252, column: 13, scope: !3291)
!3326 = !DILocation(line: 252, column: 17, scope: !3291)
!3327 = !DILocation(line: 252, column: 9, scope: !3291)
!3328 = !DILocation(line: 252, column: 46, scope: !3291)
!3329 = !DILocation(line: 252, column: 48, scope: !3291)
!3330 = !DILocation(line: 252, column: 32, scope: !3291)
!3331 = !DILocation(line: 252, column: 55, scope: !3291)
!3332 = !DILocation(line: 253, column: 23, scope: !3291)
!3333 = !DILocation(line: 253, column: 11, scope: !3291)
!3334 = !DILocation(line: 253, column: 52, scope: !3291)
!3335 = !DILocation(line: 253, column: 58, scope: !3291)
!3336 = !DILocation(line: 253, column: 38, scope: !3291)
!3337 = !DILocation(line: 251, column: 16, scope: !3291)
!3338 = !DILocation(line: 254, column: 3, scope: !3291)
!3339 = !DILocation(line: 253, column: 7, scope: !3291)
!3340 = !DILocation(line: 251, column: 2, scope: !3291)
!3341 = !DILocation(line: 252, column: 4, scope: !3291)
!3342 = !DILocation(line: 249, column: 28, scope: !3292)
!3343 = !DILocation(line: 249, column: 5, scope: !3292)
!3344 = distinct !{!3344, !3294, !3345}
!3345 = !DILocation(line: 255, column: 7, scope: !3293)
!3346 = !DILocation(line: 256, column: 1, scope: !3277)
!3347 = distinct !DISubprogram(name: "lshift_significand_1", scope: !3, file: !3, line: 261, type: !1424, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3348)
!3348 = !{!3349, !3350, !3351}
!3349 = !DILocalVariable(name: "r", arg: 1, scope: !3347, file: !3, line: 261, type: !409)
!3350 = !DILocalVariable(name: "a", arg: 2, scope: !3347, file: !3, line: 261, type: !6)
!3351 = !DILocalVariable(name: "i", scope: !3347, file: !3, line: 263, type: !12)
!3352 = !DILocation(line: 0, scope: !3347)
!3353 = !DILocation(line: 265, column: 8, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 265, column: 3)
!3355 = !DILocation(line: 0, scope: !3354)
!3356 = !DILocation(line: 265, column: 25, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 265, column: 3)
!3358 = !DILocation(line: 265, column: 3, scope: !3354)
!3359 = !DILocation(line: 266, column: 18, scope: !3357)
!3360 = !DILocation(line: 266, column: 28, scope: !3357)
!3361 = !DILocation(line: 266, column: 45, scope: !3357)
!3362 = !DILocation(line: 266, column: 37, scope: !3357)
!3363 = !DILocation(line: 266, column: 49, scope: !3357)
!3364 = !DILocation(line: 266, column: 34, scope: !3357)
!3365 = !DILocation(line: 266, column: 5, scope: !3357)
!3366 = !DILocation(line: 266, column: 15, scope: !3357)
!3367 = !DILocation(line: 265, column: 3, scope: !3357)
!3368 = distinct !{!3368, !3358, !3369}
!3369 = !DILocation(line: 266, column: 76, scope: !3354)
!3370 = !DILocation(line: 267, column: 15, scope: !3347)
!3371 = !DILocation(line: 267, column: 25, scope: !3347)
!3372 = !DILocation(line: 267, column: 3, scope: !3347)
!3373 = !DILocation(line: 267, column: 13, scope: !3347)
!3374 = !DILocation(line: 268, column: 1, scope: !3347)
!3375 = distinct !DISubprogram(name: "add_significands", scope: !3, file: !3, line: 274, type: !1165, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3376)
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3382, !3386}
!3377 = !DILocalVariable(name: "r", arg: 1, scope: !3375, file: !3, line: 274, type: !409)
!3378 = !DILocalVariable(name: "a", arg: 2, scope: !3375, file: !3, line: 274, type: !6)
!3379 = !DILocalVariable(name: "b", arg: 3, scope: !3375, file: !3, line: 275, type: !6)
!3380 = !DILocalVariable(name: "carry", scope: !3375, file: !3, line: 277, type: !372)
!3381 = !DILocalVariable(name: "i", scope: !3375, file: !3, line: 278, type: !373)
!3382 = !DILocalVariable(name: "ai", scope: !3383, file: !3, line: 282, type: !20)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 281, column: 5)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 280, column: 3)
!3385 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 280, column: 3)
!3386 = !DILocalVariable(name: "ri", scope: !3383, file: !3, line: 283, type: !20)
!3387 = !DILocation(line: 0, scope: !3375)
!3388 = !DILocation(line: 280, column: 8, scope: !3385)
!3389 = !DILocation(line: 280, column: 17, scope: !3384)
!3390 = !DILocation(line: 280, column: 3, scope: !3385)
!3391 = !DILocation(line: 282, column: 26, scope: !3383)
!3392 = !DILocation(line: 0, scope: !3383)
!3393 = !DILocation(line: 283, column: 31, scope: !3383)
!3394 = !DILocation(line: 283, column: 29, scope: !3383)
!3395 = !DILocation(line: 285, column: 11, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 285, column: 11)
!3397 = !DILocation(line: 0, scope: !3396)
!3398 = !DILocation(line: 285, column: 11, scope: !3383)
!3399 = !DILocation(line: 288, column: 13, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 286, column: 2)
!3401 = !DILocation(line: 288, column: 18, scope: !3400)
!3402 = !DILocation(line: 288, column: 10, scope: !3400)
!3403 = !DILocation(line: 289, column: 2, scope: !3400)
!3404 = !DILocation(line: 293, column: 7, scope: !3383)
!3405 = !DILocation(line: 293, column: 17, scope: !3383)
!3406 = !DILocation(line: 280, column: 26, scope: !3384)
!3407 = !DILocation(line: 280, column: 3, scope: !3384)
!3408 = distinct !{!3408, !3390, !3409}
!3409 = !DILocation(line: 294, column: 5, scope: !3385)
!3410 = !DILocation(line: 296, column: 3, scope: !3375)
!3411 = distinct !DISubprogram(name: "real_maxval", scope: !3, file: !3, line: 2553, type: !3412, scopeLine: 2554, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{null, !409, !373, !220}
!3414 = !{!3415, !3416, !3417, !3418, !3419}
!3415 = !DILocalVariable(name: "r", arg: 1, scope: !3411, file: !3, line: 2553, type: !409)
!3416 = !DILocalVariable(name: "sign", arg: 2, scope: !3411, file: !3, line: 2553, type: !373)
!3417 = !DILocalVariable(name: "mode", arg: 3, scope: !3411, file: !3, line: 2553, type: !220)
!3418 = !DILocalVariable(name: "fmt", scope: !3411, file: !3, line: 2555, type: !402)
!3419 = !DILocalVariable(name: "np2", scope: !3411, file: !3, line: 2556, type: !373)
!3420 = !DILocation(line: 0, scope: !3411)
!3421 = !DILocation(line: 2558, column: 9, scope: !3411)
!3422 = !DILocation(line: 2559, column: 3, scope: !3411)
!3423 = !DILocation(line: 2560, column: 11, scope: !3411)
!3424 = !DILocation(line: 2560, column: 3, scope: !3411)
!3425 = !DILocation(line: 2562, column: 12, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 2562, column: 7)
!3427 = !DILocation(line: 2562, column: 14, scope: !3426)
!3428 = !DILocation(line: 2562, column: 7, scope: !3411)
!3429 = !DILocation(line: 2563, column: 5, scope: !3426)
!3430 = !DILocation(line: 2566, column: 10, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 2565, column: 5)
!3432 = !DILocation(line: 2566, column: 13, scope: !3431)
!3433 = !DILocation(line: 2567, column: 15, scope: !3431)
!3434 = !DILocation(line: 2568, column: 7, scope: !3431)
!3435 = !DILocation(line: 2570, column: 37, scope: !3431)
!3436 = !DILocation(line: 2570, column: 30, scope: !3431)
!3437 = !DILocation(line: 2571, column: 15, scope: !3431)
!3438 = !DILocation(line: 2571, column: 7, scope: !3431)
!3439 = !DILocation(line: 2572, column: 7, scope: !3431)
!3440 = !DILocation(line: 2574, column: 16, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 2574, column: 11)
!3442 = !DILocation(line: 2574, column: 28, scope: !3441)
!3443 = !DILocation(line: 2574, column: 21, scope: !3441)
!3444 = !DILocation(line: 2574, column: 11, scope: !3431)
!3445 = !DILocation(line: 2581, column: 57, scope: !3441)
!3446 = !DILocation(line: 2581, column: 2, scope: !3441)
!3447 = !DILocation(line: 2583, column: 1, scope: !3411)
!3448 = distinct !DISubprogram(name: "clear_significand_below", scope: !3, file: !3, line: 425, type: !3449, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{null, !409, !12}
!3451 = !{!3452, !3453, !3454, !3455}
!3452 = !DILocalVariable(name: "r", arg: 1, scope: !3448, file: !3, line: 425, type: !409)
!3453 = !DILocalVariable(name: "n", arg: 2, scope: !3448, file: !3, line: 425, type: !12)
!3454 = !DILocalVariable(name: "i", scope: !3448, file: !3, line: 427, type: !373)
!3455 = !DILocalVariable(name: "w", scope: !3448, file: !3, line: 427, type: !373)
!3456 = !DILocation(line: 0, scope: !3448)
!3457 = !DILocation(line: 427, column: 16, scope: !3448)
!3458 = !DILocation(line: 429, column: 17, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 429, column: 3)
!3460 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 429, column: 3)
!3461 = !DILocation(line: 429, column: 8, scope: !3460)
!3462 = !DILocation(line: 0, scope: !3460)
!3463 = !DILocation(line: 429, column: 3, scope: !3460)
!3464 = !DILocation(line: 430, column: 5, scope: !3459)
!3465 = !DILocation(line: 430, column: 15, scope: !3459)
!3466 = !DILocation(line: 429, column: 22, scope: !3459)
!3467 = !DILocation(line: 429, column: 3, scope: !3459)
!3468 = distinct !{!3468, !3463, !3469}
!3469 = !DILocation(line: 430, column: 17, scope: !3460)
!3470 = !DILocation(line: 432, column: 42, scope: !3448)
!3471 = !DILocation(line: 432, column: 36, scope: !3448)
!3472 = !DILocation(line: 432, column: 65, scope: !3448)
!3473 = !DILocation(line: 432, column: 3, scope: !3448)
!3474 = !DILocation(line: 432, column: 13, scope: !3448)
!3475 = !DILocation(line: 433, column: 1, scope: !3448)
!3476 = distinct !DISubprogram(name: "clear_significand_bit", scope: !3, file: !3, line: 404, type: !3449, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3477)
!3477 = !{!3478, !3479}
!3478 = !DILocalVariable(name: "r", arg: 1, scope: !3476, file: !3, line: 404, type: !409)
!3479 = !DILocalVariable(name: "n", arg: 2, scope: !3476, file: !3, line: 404, type: !12)
!3480 = !DILocation(line: 0, scope: !3476)
!3481 = !DILocation(line: 407, column: 33, scope: !3476)
!3482 = !DILocation(line: 407, column: 27, scope: !3476)
!3483 = !DILocation(line: 407, column: 8, scope: !3476)
!3484 = !DILocation(line: 406, column: 12, scope: !3476)
!3485 = !DILocation(line: 406, column: 3, scope: !3476)
!3486 = !DILocation(line: 407, column: 5, scope: !3476)
!3487 = !DILocation(line: 408, column: 1, scope: !3476)
!3488 = distinct !DISubprogram(name: "real_2expN", scope: !3, file: !3, line: 2588, type: !3412, scopeLine: 2589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3489)
!3489 = !{!3490, !3491, !3492}
!3490 = !DILocalVariable(name: "r", arg: 1, scope: !3488, file: !3, line: 2588, type: !409)
!3491 = !DILocalVariable(name: "n", arg: 2, scope: !3488, file: !3, line: 2588, type: !373)
!3492 = !DILocalVariable(name: "fmode", arg: 3, scope: !3488, file: !3, line: 2588, type: !220)
!3493 = !DILocation(line: 0, scope: !3488)
!3494 = !DILocation(line: 2590, column: 11, scope: !3488)
!3495 = !DILocation(line: 2590, column: 3, scope: !3488)
!3496 = !DILocation(line: 2592, column: 4, scope: !3488)
!3497 = !DILocation(line: 2593, column: 9, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 2593, column: 7)
!3499 = !DILocation(line: 2593, column: 7, scope: !3488)
!3500 = !DILocation(line: 2594, column: 8, scope: !3498)
!3501 = !DILocation(line: 2594, column: 11, scope: !3498)
!3502 = !DILocation(line: 2594, column: 5, scope: !3498)
!3503 = !DILocation(line: 2595, column: 14, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 2595, column: 12)
!3505 = !DILocation(line: 2595, column: 12, scope: !3498)
!3506 = !DILocation(line: 2599, column: 10, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 2598, column: 5)
!3508 = !DILocation(line: 2599, column: 13, scope: !3507)
!3509 = !DILocation(line: 2600, column: 7, scope: !3507)
!3510 = !DILocation(line: 2601, column: 7, scope: !3507)
!3511 = !DILocation(line: 2601, column: 23, scope: !3507)
!3512 = !DILocation(line: 2603, column: 7, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 2603, column: 7)
!3514 = !DILocation(line: 2603, column: 7, scope: !3488)
!3515 = !DILocation(line: 2604, column: 5, scope: !3513)
!3516 = !DILocation(line: 2605, column: 1, scope: !3488)
!3517 = distinct !DISubprogram(name: "round_for_format", scope: !3, file: !3, line: 2609, type: !3518, scopeLine: 2610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !402, !409}
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3534, !3537, !3538, !3539, !3542, !3544}
!3521 = !DILocalVariable(name: "fmt", arg: 1, scope: !3517, file: !3, line: 2609, type: !402)
!3522 = !DILocalVariable(name: "r", arg: 2, scope: !3517, file: !3, line: 2609, type: !409)
!3523 = !DILocalVariable(name: "p2", scope: !3517, file: !3, line: 2611, type: !373)
!3524 = !DILocalVariable(name: "np2", scope: !3517, file: !3, line: 2611, type: !373)
!3525 = !DILocalVariable(name: "i", scope: !3517, file: !3, line: 2611, type: !373)
!3526 = !DILocalVariable(name: "w", scope: !3517, file: !3, line: 2611, type: !373)
!3527 = !DILocalVariable(name: "emin2m1", scope: !3517, file: !3, line: 2612, type: !373)
!3528 = !DILocalVariable(name: "emax2", scope: !3517, file: !3, line: 2612, type: !373)
!3529 = !DILocalVariable(name: "round_up", scope: !3517, file: !3, line: 2613, type: !372)
!3530 = !DILocalVariable(name: "diff", scope: !3531, file: !3, line: 2665, type: !373)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 2664, column: 5)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 2663, column: 12)
!3533 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 2661, column: 7)
!3534 = !DILocalVariable(name: "sticky", scope: !3535, file: !3, line: 2690, type: !20)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 2686, column: 5)
!3536 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 2685, column: 7)
!3537 = !DILocalVariable(name: "guard", scope: !3535, file: !3, line: 2691, type: !372)
!3538 = !DILocalVariable(name: "lsb", scope: !3535, file: !3, line: 2691, type: !372)
!3539 = !DILocalVariable(name: "u", scope: !3540, file: !3, line: 2708, type: !8)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 2707, column: 5)
!3541 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 2706, column: 7)
!3542 = !DILabel(scope: !3543, name: "underflow", file: !3, line: 2636)
!3543 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 2635, column: 5)
!3544 = !DILabel(scope: !3543, name: "overflow", file: !3, line: 2643)
!3545 = !DILocation(line: 0, scope: !3517)
!3546 = !DILocation(line: 2615, column: 10, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 2615, column: 7)
!3548 = !DILocation(line: 2615, column: 7, scope: !3547)
!3549 = !DILocation(line: 2615, column: 7, scope: !3517)
!3550 = !DILocation(line: 2617, column: 16, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 2617, column: 11)
!3552 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 2616, column: 5)
!3553 = !DILocation(line: 2617, column: 18, scope: !3551)
!3554 = !DILocation(line: 2617, column: 11, scope: !3552)
!3555 = !DILocation(line: 2619, column: 4, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 2618, column: 2)
!3557 = !DILocation(line: 2620, column: 4, scope: !3556)
!3558 = !DILocation(line: 2626, column: 7, scope: !3552)
!3559 = !DILocation(line: 2634, column: 14, scope: !3517)
!3560 = !DILocation(line: 2627, column: 5, scope: !3552)
!3561 = !DILocation(line: 2629, column: 13, scope: !3517)
!3562 = !DILocation(line: 2630, column: 18, scope: !3517)
!3563 = !DILocation(line: 2630, column: 23, scope: !3517)
!3564 = !DILocation(line: 2631, column: 16, scope: !3517)
!3565 = !DILocation(line: 2633, column: 26, scope: !3517)
!3566 = !DILocation(line: 2634, column: 3, scope: !3517)
!3567 = !DILocation(line: 2637, column: 23, scope: !3543)
!3568 = !DILocation(line: 2636, column: 5, scope: !3543)
!3569 = !DILocation(line: 2637, column: 7, scope: !3543)
!3570 = !DILocation(line: 2639, column: 17, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 2639, column: 11)
!3572 = !DILocation(line: 2639, column: 12, scope: !3571)
!3573 = !DILocation(line: 2639, column: 11, scope: !3543)
!3574 = !DILocation(line: 2640, column: 10, scope: !3571)
!3575 = !DILocation(line: 2640, column: 2, scope: !3571)
!3576 = !DILocation(line: 2644, column: 22, scope: !3543)
!3577 = !DILocation(line: 2643, column: 5, scope: !3543)
!3578 = !DILocation(line: 2644, column: 7, scope: !3543)
!3579 = !DILocation(line: 2649, column: 7, scope: !3543)
!3580 = !DILocation(line: 2650, column: 7, scope: !3543)
!3581 = !DILocation(line: 2661, column: 7, scope: !3533)
!3582 = !DILocation(line: 2661, column: 20, scope: !3533)
!3583 = !DILocation(line: 2661, column: 7, scope: !3517)
!3584 = !DILocation(line: 2663, column: 25, scope: !3532)
!3585 = !DILocation(line: 2663, column: 12, scope: !3533)
!3586 = !DILocation(line: 2667, column: 17, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 2667, column: 11)
!3588 = !DILocation(line: 2667, column: 12, scope: !3587)
!3589 = !DILocation(line: 2667, column: 11, scope: !3531)
!3590 = !DILocation(line: 2670, column: 21, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 2670, column: 8)
!3592 = distinct !DILexicalBlock(scope: !3587, file: !3, line: 2668, column: 2)
!3593 = !DILocation(line: 2670, column: 8, scope: !3592)
!3594 = !DILocation(line: 2675, column: 19, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3587, file: !3, line: 2674, column: 2)
!3596 = !DILocation(line: 2675, column: 34, scope: !3595)
!3597 = !DILocation(line: 0, scope: !3531)
!3598 = !DILocation(line: 2676, column: 13, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 2676, column: 8)
!3600 = !DILocation(line: 2676, column: 8, scope: !3595)
!3601 = !DILocation(line: 2680, column: 17, scope: !3595)
!3602 = !DILocation(line: 2680, column: 4, scope: !3595)
!3603 = !DILocation(line: 2680, column: 14, scope: !3595)
!3604 = !DILocation(line: 2681, column: 4, scope: !3595)
!3605 = !DILocation(line: 2683, column: 5, scope: !3532)
!3606 = !DILocation(line: 2685, column: 13, scope: !3536)
!3607 = !DILocation(line: 2685, column: 8, scope: !3536)
!3608 = !DILocation(line: 2685, column: 7, scope: !3517)
!3609 = !DILocation(line: 0, scope: !3535)
!3610 = !DILocation(line: 2694, column: 28, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 2694, column: 7)
!3612 = !DILocation(line: 2694, column: 33, scope: !3611)
!3613 = !DILocation(line: 2694, column: 12, scope: !3611)
!3614 = !DILocation(line: 0, scope: !3611)
!3615 = !DILocation(line: 2694, column: 57, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 2694, column: 7)
!3617 = !DILocation(line: 2694, column: 7, scope: !3611)
!3618 = !DILocation(line: 2695, column: 12, scope: !3616)
!3619 = !DILocation(line: 2695, column: 9, scope: !3616)
!3620 = !DILocation(line: 2694, column: 62, scope: !3616)
!3621 = !DILocation(line: 2694, column: 7, scope: !3616)
!3622 = distinct !{!3622, !3617, !3623}
!3623 = !DILocation(line: 2695, column: 20, scope: !3611)
!3624 = !DILocation(line: 2696, column: 17, scope: !3535)
!3625 = !DILocation(line: 2699, column: 15, scope: !3535)
!3626 = !DILocation(line: 2700, column: 13, scope: !3535)
!3627 = !DILocation(line: 2703, column: 18, scope: !3535)
!3628 = !DILocation(line: 2703, column: 24, scope: !3535)
!3629 = !DILocation(line: 2697, column: 38, scope: !3535)
!3630 = !DILocation(line: 2697, column: 24, scope: !3535)
!3631 = !DILocation(line: 2697, column: 61, scope: !3535)
!3632 = !DILocation(line: 2697, column: 3, scope: !3535)
!3633 = !DILocation(line: 2696, column: 14, scope: !3535)
!3634 = !DILocation(line: 2703, column: 28, scope: !3535)
!3635 = !DILocation(line: 2703, column: 35, scope: !3535)
!3636 = !DILocation(line: 2704, column: 5, scope: !3535)
!3637 = !DILocation(line: 2706, column: 7, scope: !3541)
!3638 = !DILocation(line: 2706, column: 7, scope: !3517)
!3639 = !DILocation(line: 2708, column: 7, scope: !3540)
!3640 = !DILocation(line: 0, scope: !3540)
!3641 = !DILocation(line: 2709, column: 7, scope: !3540)
!3642 = !DILocation(line: 2710, column: 7, scope: !3540)
!3643 = !DILocation(line: 2712, column: 11, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 2712, column: 11)
!3645 = !DILocation(line: 2712, column: 11, scope: !3540)
!3646 = !DILocation(line: 2717, column: 4, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 2713, column: 2)
!3648 = !DILocation(line: 2718, column: 8, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 2718, column: 8)
!3650 = !DILocation(line: 2718, column: 21, scope: !3649)
!3651 = !DILocation(line: 2718, column: 8, scope: !3647)
!3652 = !DILocation(line: 2720, column: 4, scope: !3647)
!3653 = !DILocation(line: 2720, column: 20, scope: !3647)
!3654 = !DILocation(line: 2721, column: 2, scope: !3647)
!3655 = !DILocation(line: 2722, column: 5, scope: !3541)
!3656 = !DILocation(line: 2725, column: 7, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 2725, column: 7)
!3658 = !DILocation(line: 2725, column: 20, scope: !3657)
!3659 = !DILocation(line: 2725, column: 7, scope: !3517)
!3660 = !DILocation(line: 2729, column: 3, scope: !3517)
!3661 = !DILocation(line: 2730, column: 1, scope: !3517)
!3662 = distinct !DISubprogram(name: "real_value_truncate", scope: !3, file: !3, line: 2758, type: !3663, scopeLine: 2759, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!8, !220, !8}
!3665 = !{!3666, !3667, !3668}
!3666 = !DILocalVariable(name: "mode", arg: 1, scope: !3662, file: !3, line: 2758, type: !220)
!3667 = !DILocalVariable(name: "a", arg: 2, scope: !3662, file: !3, line: 2758, type: !8)
!3668 = !DILocalVariable(name: "r", scope: !3662, file: !3, line: 2760, type: !8)
!3669 = !DILocation(line: 0, scope: !3662)
!3670 = !DILocation(line: 2758, column: 62, scope: !3662)
!3671 = !DILocation(line: 2760, column: 19, scope: !3662)
!3672 = !DILocation(line: 2761, column: 3, scope: !3662)
!3673 = !DILocation(line: 2762, column: 3, scope: !3662)
!3674 = distinct !DISubprogram(name: "exact_real_truncate", scope: !3, file: !3, line: 2768, type: !3675, scopeLine: 2769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!372, !220, !6}
!3677 = !{!3678, !3679, !3680, !3681, !3682}
!3678 = !DILocalVariable(name: "mode", arg: 1, scope: !3674, file: !3, line: 2768, type: !220)
!3679 = !DILocalVariable(name: "a", arg: 2, scope: !3674, file: !3, line: 2768, type: !6)
!3680 = !DILocalVariable(name: "fmt", scope: !3674, file: !3, line: 2770, type: !402)
!3681 = !DILocalVariable(name: "t", scope: !3674, file: !3, line: 2771, type: !8)
!3682 = !DILocalVariable(name: "emin2m1", scope: !3674, file: !3, line: 2772, type: !373)
!3683 = !DILocation(line: 0, scope: !3674)
!3684 = !DILocation(line: 2771, column: 3, scope: !3674)
!3685 = !DILocation(line: 2774, column: 9, scope: !3674)
!3686 = !DILocation(line: 2775, column: 3, scope: !3674)
!3687 = !DILocation(line: 2778, column: 18, scope: !3674)
!3688 = !DILocation(line: 2779, column: 7, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 2779, column: 7)
!3690 = !DILocation(line: 2779, column: 20, scope: !3689)
!3691 = !DILocation(line: 2779, column: 7, scope: !3674)
!3692 = !DILocation(line: 2783, column: 3, scope: !3674)
!3693 = !DILocation(line: 2784, column: 10, scope: !3674)
!3694 = !DILocation(line: 2784, column: 3, scope: !3674)
!3695 = !DILocation(line: 2785, column: 1, scope: !3674)
!3696 = distinct !DISubprogram(name: "real_to_target_fmt", scope: !3, file: !3, line: 2794, type: !3697, scopeLine: 2796, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!404, !403, !6, !402}
!3699 = !{!3700, !3701, !3702, !3703, !3704}
!3700 = !DILocalVariable(name: "buf", arg: 1, scope: !3696, file: !3, line: 2794, type: !403)
!3701 = !DILocalVariable(name: "r_orig", arg: 2, scope: !3696, file: !3, line: 2794, type: !6)
!3702 = !DILocalVariable(name: "fmt", arg: 3, scope: !3696, file: !3, line: 2795, type: !402)
!3703 = !DILocalVariable(name: "r", scope: !3696, file: !3, line: 2797, type: !8)
!3704 = !DILocalVariable(name: "buf1", scope: !3696, file: !3, line: 2798, type: !404)
!3705 = !DILocation(line: 0, scope: !3696)
!3706 = !DILocation(line: 2797, column: 3, scope: !3696)
!3707 = !DILocation(line: 2798, column: 3, scope: !3696)
!3708 = !DILocation(line: 2800, column: 7, scope: !3696)
!3709 = !DILocation(line: 2801, column: 3, scope: !3696)
!3710 = !DILocation(line: 2803, column: 8, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3696, file: !3, line: 2803, column: 7)
!3712 = !DILocation(line: 2803, column: 7, scope: !3696)
!3713 = !DILocation(line: 2805, column: 10, scope: !3696)
!3714 = !DILocation(line: 2805, column: 3, scope: !3696)
!3715 = !DILocation(line: 2807, column: 10, scope: !3696)
!3716 = !DILocation(line: 2808, column: 1, scope: !3696)
!3717 = !DILocation(line: 2807, column: 3, scope: !3696)
!3718 = distinct !DISubprogram(name: "real_to_target", scope: !3, file: !3, line: 2813, type: !3719, scopeLine: 2814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3721)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!404, !403, !6, !220}
!3721 = !{!3722, !3723, !3724, !3725}
!3722 = !DILocalVariable(name: "buf", arg: 1, scope: !3718, file: !3, line: 2813, type: !403)
!3723 = !DILocalVariable(name: "r", arg: 2, scope: !3718, file: !3, line: 2813, type: !6)
!3724 = !DILocalVariable(name: "mode", arg: 3, scope: !3718, file: !3, line: 2813, type: !220)
!3725 = !DILocalVariable(name: "fmt", scope: !3718, file: !3, line: 2815, type: !402)
!3726 = !DILocation(line: 0, scope: !3718)
!3727 = !DILocation(line: 2817, column: 9, scope: !3718)
!3728 = !DILocation(line: 2818, column: 3, scope: !3718)
!3729 = !DILocation(line: 2820, column: 10, scope: !3718)
!3730 = !DILocation(line: 2820, column: 3, scope: !3718)
!3731 = distinct !DISubprogram(name: "real_from_target_fmt", scope: !3, file: !3, line: 2828, type: !3732, scopeLine: 2830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{null, !409, !410, !402}
!3734 = !{!3735, !3736, !3737}
!3735 = !DILocalVariable(name: "r", arg: 1, scope: !3731, file: !3, line: 2828, type: !409)
!3736 = !DILocalVariable(name: "buf", arg: 2, scope: !3731, file: !3, line: 2828, type: !410)
!3737 = !DILocalVariable(name: "fmt", arg: 3, scope: !3731, file: !3, line: 2829, type: !402)
!3738 = !DILocation(line: 0, scope: !3731)
!3739 = !DILocation(line: 2831, column: 10, scope: !3731)
!3740 = !DILocation(line: 2831, column: 3, scope: !3731)
!3741 = !DILocation(line: 2832, column: 1, scope: !3731)
!3742 = distinct !DISubprogram(name: "real_from_target", scope: !3, file: !3, line: 2837, type: !3743, scopeLine: 2838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !409, !410, !220}
!3745 = !{!3746, !3747, !3748, !3749}
!3746 = !DILocalVariable(name: "r", arg: 1, scope: !3742, file: !3, line: 2837, type: !409)
!3747 = !DILocalVariable(name: "buf", arg: 2, scope: !3742, file: !3, line: 2837, type: !410)
!3748 = !DILocalVariable(name: "mode", arg: 3, scope: !3742, file: !3, line: 2837, type: !220)
!3749 = !DILocalVariable(name: "fmt", scope: !3742, file: !3, line: 2839, type: !402)
!3750 = !DILocation(line: 0, scope: !3742)
!3751 = !DILocation(line: 2841, column: 9, scope: !3742)
!3752 = !DILocation(line: 2842, column: 3, scope: !3742)
!3753 = !DILocation(line: 2844, column: 10, scope: !3742)
!3754 = !DILocation(line: 2844, column: 3, scope: !3742)
!3755 = !DILocation(line: 2845, column: 1, scope: !3742)
!3756 = distinct !DISubprogram(name: "significand_size", scope: !3, file: !3, line: 2852, type: !3757, scopeLine: 2853, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!373, !220}
!3759 = !{!3760, !3761, !3762}
!3760 = !DILocalVariable(name: "mode", arg: 1, scope: !3756, file: !3, line: 2852, type: !220)
!3761 = !DILocalVariable(name: "fmt", scope: !3756, file: !3, line: 2854, type: !402)
!3762 = !DILocalVariable(name: "log2_10", scope: !3763, file: !3, line: 2866, type: !775)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 2861, column: 5)
!3764 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 2860, column: 7)
!3765 = !DILocation(line: 0, scope: !3756)
!3766 = !DILocation(line: 2856, column: 9, scope: !3756)
!3767 = !DILocation(line: 2857, column: 11, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 2857, column: 7)
!3769 = !DILocation(line: 2857, column: 7, scope: !3756)
!3770 = !DILocation(line: 2860, column: 12, scope: !3764)
!3771 = !DILocation(line: 2860, column: 14, scope: !3764)
!3772 = !DILocation(line: 2860, column: 7, scope: !3756)
!3773 = !DILocation(line: 0, scope: !3763)
!3774 = !DILocation(line: 2867, column: 14, scope: !3763)
!3775 = !DILocation(line: 2867, column: 21, scope: !3763)
!3776 = !DILocation(line: 2870, column: 1, scope: !3756)
!3777 = distinct !DISubprogram(name: "real_hash", scope: !3, file: !3, line: 2877, type: !3778, scopeLine: 2878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!12, !6}
!3780 = !{!3781, !3782, !3783, !3784}
!3781 = !DILocalVariable(name: "r", arg: 1, scope: !3777, file: !3, line: 2877, type: !6)
!3782 = !DILocalVariable(name: "h", scope: !3777, file: !3, line: 2879, type: !12)
!3783 = !DILocalVariable(name: "i", scope: !3777, file: !3, line: 2880, type: !606)
!3784 = !DILocalVariable(name: "s", scope: !3785, file: !3, line: 2907, type: !20)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 2906, column: 7)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 2905, column: 5)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 2905, column: 5)
!3788 = distinct !DILexicalBlock(scope: !3777, file: !3, line: 2904, column: 7)
!3789 = !DILocation(line: 0, scope: !3777)
!3790 = !DILocation(line: 2882, column: 10, scope: !3777)
!3791 = !DILocation(line: 2882, column: 24, scope: !3777)
!3792 = !DILocation(line: 2882, column: 13, scope: !3777)
!3793 = !DILocation(line: 2883, column: 3, scope: !3777)
!3794 = !DILocation(line: 2890, column: 12, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3777, file: !3, line: 2884, column: 5)
!3796 = !DILocation(line: 2890, column: 25, scope: !3795)
!3797 = !DILocation(line: 2890, column: 9, scope: !3795)
!3798 = !DILocation(line: 2891, column: 7, scope: !3795)
!3799 = !DILocation(line: 2894, column: 11, scope: !3795)
!3800 = !DILocation(line: 2896, column: 14, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 2896, column: 11)
!3802 = !DILocation(line: 2896, column: 11, scope: !3801)
!3803 = !DILocation(line: 2896, column: 11, scope: !3795)
!3804 = !DILocation(line: 2905, column: 10, scope: !3787)
!3805 = !DILocation(line: 0, scope: !3787)
!3806 = !DILocation(line: 2905, column: 19, scope: !3786)
!3807 = !DILocation(line: 2905, column: 5, scope: !3787)
!3808 = !DILocation(line: 2907, column: 20, scope: !3785)
!3809 = !DILocation(line: 0, scope: !3785)
!3810 = !DILocation(line: 2908, column: 14, scope: !3785)
!3811 = !DILocation(line: 2908, column: 9, scope: !3785)
!3812 = !DILocation(line: 2908, column: 4, scope: !3785)
!3813 = !DILocation(line: 2905, column: 28, scope: !3786)
!3814 = !DILocation(line: 2905, column: 5, scope: !3786)
!3815 = distinct !{!3815, !3807, !3816}
!3816 = !DILocation(line: 2909, column: 7, scope: !3787)
!3817 = !DILocation(line: 2915, column: 1, scope: !3777)
!3818 = distinct !DISubprogram(name: "encode_ieee_single", scope: !3, file: !3, line: 2925, type: !400, scopeLine: 2927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3819)
!3819 = !{!3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827}
!3820 = !DILocalVariable(name: "fmt", arg: 1, scope: !3818, file: !3, line: 2925, type: !402)
!3821 = !DILocalVariable(name: "buf", arg: 2, scope: !3818, file: !3, line: 2925, type: !403)
!3822 = !DILocalVariable(name: "r", arg: 3, scope: !3818, file: !3, line: 2926, type: !6)
!3823 = !DILocalVariable(name: "image", scope: !3818, file: !3, line: 2928, type: !20)
!3824 = !DILocalVariable(name: "sig", scope: !3818, file: !3, line: 2928, type: !20)
!3825 = !DILocalVariable(name: "exp", scope: !3818, file: !3, line: 2928, type: !20)
!3826 = !DILocalVariable(name: "sign", scope: !3818, file: !3, line: 2929, type: !20)
!3827 = !DILocalVariable(name: "denormal", scope: !3818, file: !3, line: 2930, type: !372)
!3828 = !DILocation(line: 0, scope: !3818)
!3829 = !DILocation(line: 2929, column: 27, scope: !3818)
!3830 = !DILocation(line: 2932, column: 16, scope: !3818)
!3831 = !DILocation(line: 2933, column: 10, scope: !3818)
!3832 = !DILocation(line: 2933, column: 26, scope: !3818)
!3833 = !DILocation(line: 2933, column: 56, scope: !3818)
!3834 = !DILocation(line: 2935, column: 14, scope: !3818)
!3835 = !DILocation(line: 2935, column: 3, scope: !3818)
!3836 = !DILocation(line: 2941, column: 16, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 2941, column: 11)
!3838 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 2936, column: 5)
!3839 = !DILocation(line: 2941, column: 11, scope: !3837)
!3840 = !DILocation(line: 2941, column: 11, scope: !3838)
!3841 = !DILocation(line: 2948, column: 16, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 2948, column: 11)
!3843 = !DILocation(line: 2948, column: 11, scope: !3842)
!3844 = !DILocation(line: 2948, column: 11, scope: !3838)
!3845 = !DILocation(line: 2950, column: 11, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 2950, column: 8)
!3847 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 2949, column: 2)
!3848 = !DILocation(line: 2950, column: 8, scope: !3846)
!3849 = !DILocation(line: 2950, column: 8, scope: !3847)
!3850 = !DILocation(line: 2951, column: 18, scope: !3846)
!3851 = !DILocation(line: 2951, column: 13, scope: !3846)
!3852 = !DILocation(line: 2951, column: 12, scope: !3846)
!3853 = !DILocation(line: 2951, column: 6, scope: !3846)
!3854 = !DILocation(line: 2952, column: 11, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 2952, column: 8)
!3856 = !DILocation(line: 2952, column: 30, scope: !3855)
!3857 = !DILocation(line: 2952, column: 25, scope: !3855)
!3858 = !DILocation(line: 2952, column: 22, scope: !3855)
!3859 = !DILocation(line: 2952, column: 8, scope: !3847)
!3860 = !DILocation(line: 2956, column: 12, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 2956, column: 8)
!3862 = !DILocation(line: 2956, column: 8, scope: !3847)
!3863 = !DILocation(line: 2960, column: 10, scope: !3847)
!3864 = !DILocation(line: 2961, column: 2, scope: !3847)
!3865 = !DILocation(line: 2963, column: 8, scope: !3842)
!3866 = !DILocation(line: 2970, column: 11, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 2970, column: 11)
!3868 = !DILocation(line: 2970, column: 11, scope: !3838)
!3869 = !DILocation(line: 2973, column: 13, scope: !3867)
!3870 = !DILocation(line: 2973, column: 32, scope: !3867)
!3871 = !DILocation(line: 2974, column: 13, scope: !3838)
!3872 = !DILocation(line: 2975, column: 13, scope: !3838)
!3873 = !DILocation(line: 2976, column: 7, scope: !3838)
!3874 = !DILocation(line: 2982, column: 10, scope: !3818)
!3875 = !DILocation(line: 2983, column: 1, scope: !3818)
!3876 = distinct !DISubprogram(name: "decode_ieee_single", scope: !3, file: !3, line: 2986, type: !407, scopeLine: 2988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3877)
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3883}
!3878 = !DILocalVariable(name: "fmt", arg: 1, scope: !3876, file: !3, line: 2986, type: !402)
!3879 = !DILocalVariable(name: "r", arg: 2, scope: !3876, file: !3, line: 2986, type: !409)
!3880 = !DILocalVariable(name: "buf", arg: 3, scope: !3876, file: !3, line: 2987, type: !410)
!3881 = !DILocalVariable(name: "image", scope: !3876, file: !3, line: 2989, type: !20)
!3882 = !DILocalVariable(name: "sign", scope: !3876, file: !3, line: 2990, type: !372)
!3883 = !DILocalVariable(name: "exp", scope: !3876, file: !3, line: 2991, type: !373)
!3884 = !DILocation(line: 0, scope: !3876)
!3885 = !DILocation(line: 2989, column: 25, scope: !3876)
!3886 = !DILocation(line: 2990, column: 22, scope: !3876)
!3887 = !DILocation(line: 2991, column: 20, scope: !3876)
!3888 = !DILocation(line: 2993, column: 11, scope: !3876)
!3889 = !DILocation(line: 2993, column: 3, scope: !3876)
!3890 = !DILocation(line: 2994, column: 9, scope: !3876)
!3891 = !DILocation(line: 2995, column: 9, scope: !3876)
!3892 = !DILocation(line: 2997, column: 7, scope: !3876)
!3893 = !DILocation(line: 2999, column: 11, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 2999, column: 11)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 2998, column: 5)
!3896 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 2997, column: 7)
!3897 = !DILocation(line: 2999, column: 17, scope: !3894)
!3898 = !DILocation(line: 2999, column: 25, scope: !3894)
!3899 = !DILocation(line: 2999, column: 20, scope: !3894)
!3900 = !DILocation(line: 2999, column: 11, scope: !3895)
!3901 = !DILocation(line: 3001, column: 7, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 3000, column: 2)
!3903 = !DILocation(line: 3001, column: 10, scope: !3902)
!3904 = !DILocation(line: 3002, column: 12, scope: !3902)
!3905 = !DILocation(line: 3003, column: 4, scope: !3902)
!3906 = !DILocation(line: 3004, column: 28, scope: !3902)
!3907 = !DILocation(line: 3004, column: 4, scope: !3902)
!3908 = !DILocation(line: 3004, column: 20, scope: !3902)
!3909 = !DILocation(line: 3005, column: 4, scope: !3902)
!3910 = !DILocation(line: 3006, column: 2, scope: !3902)
!3911 = !DILocation(line: 3007, column: 21, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 3007, column: 16)
!3913 = !DILocation(line: 3007, column: 16, scope: !3912)
!3914 = !DILocation(line: 3007, column: 16, scope: !3894)
!3915 = !DILocation(line: 3008, column: 5, scope: !3912)
!3916 = !DILocation(line: 3008, column: 10, scope: !3912)
!3917 = !DILocation(line: 3008, column: 2, scope: !3912)
!3918 = !DILocation(line: 3010, column: 32, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 3010, column: 12)
!3920 = !DILocation(line: 3010, column: 27, scope: !3919)
!3921 = !DILocation(line: 3010, column: 41, scope: !3919)
!3922 = !DILocation(line: 3010, column: 49, scope: !3919)
!3923 = !DILocation(line: 3010, column: 44, scope: !3919)
!3924 = !DILocation(line: 3010, column: 12, scope: !3896)
!3925 = !DILocation(line: 3012, column: 11, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 3012, column: 11)
!3927 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 3011, column: 5)
!3928 = !DILocation(line: 0, scope: !3926)
!3929 = !DILocation(line: 3012, column: 11, scope: !3927)
!3930 = !DILocation(line: 3015, column: 12, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 3013, column: 2)
!3932 = !DILocation(line: 3016, column: 29, scope: !3931)
!3933 = !DILocation(line: 3017, column: 14, scope: !3931)
!3934 = !DILocation(line: 3017, column: 9, scope: !3931)
!3935 = !DILocation(line: 3017, column: 7, scope: !3931)
!3936 = !DILocation(line: 3016, column: 20, scope: !3931)
!3937 = !DILocation(line: 3016, column: 18, scope: !3931)
!3938 = !DILocation(line: 3018, column: 4, scope: !3931)
!3939 = !DILocation(line: 3018, column: 20, scope: !3931)
!3940 = !DILocation(line: 3019, column: 2, scope: !3931)
!3941 = !DILocation(line: 3023, column: 12, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 3021, column: 2)
!3943 = !DILocation(line: 3028, column: 10, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 3027, column: 5)
!3945 = !DILocation(line: 3028, column: 13, scope: !3944)
!3946 = !DILocation(line: 3029, column: 15, scope: !3944)
!3947 = !DILocation(line: 3030, column: 7, scope: !3944)
!3948 = !DILocation(line: 3031, column: 31, scope: !3944)
!3949 = !DILocation(line: 3031, column: 7, scope: !3944)
!3950 = !DILocation(line: 3031, column: 23, scope: !3944)
!3951 = !DILocation(line: 3033, column: 1, scope: !3876)
!3952 = distinct !DISubprogram(name: "encode_ieee_double", scope: !3, file: !3, line: 3138, type: !400, scopeLine: 3140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3953)
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962}
!3954 = !DILocalVariable(name: "fmt", arg: 1, scope: !3952, file: !3, line: 3138, type: !402)
!3955 = !DILocalVariable(name: "buf", arg: 2, scope: !3952, file: !3, line: 3138, type: !403)
!3956 = !DILocalVariable(name: "r", arg: 3, scope: !3952, file: !3, line: 3139, type: !6)
!3957 = !DILocalVariable(name: "image_lo", scope: !3952, file: !3, line: 3141, type: !20)
!3958 = !DILocalVariable(name: "image_hi", scope: !3952, file: !3, line: 3141, type: !20)
!3959 = !DILocalVariable(name: "sig_lo", scope: !3952, file: !3, line: 3141, type: !20)
!3960 = !DILocalVariable(name: "sig_hi", scope: !3952, file: !3, line: 3141, type: !20)
!3961 = !DILocalVariable(name: "exp", scope: !3952, file: !3, line: 3141, type: !20)
!3962 = !DILocalVariable(name: "denormal", scope: !3952, file: !3, line: 3142, type: !372)
!3963 = !DILocation(line: 0, scope: !3952)
!3964 = !DILocation(line: 3144, column: 17, scope: !3952)
!3965 = !DILocation(line: 3144, column: 22, scope: !3952)
!3966 = !DILocation(line: 3144, column: 14, scope: !3952)
!3967 = !DILocation(line: 3149, column: 16, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 3148, column: 5)
!3969 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 3147, column: 7)
!3970 = !DILocation(line: 3150, column: 24, scope: !3968)
!3971 = !DILocation(line: 3150, column: 38, scope: !3968)
!3972 = !DILocation(line: 3151, column: 24, scope: !3968)
!3973 = !DILocation(line: 3151, column: 48, scope: !3968)
!3974 = !DILocation(line: 3161, column: 14, scope: !3952)
!3975 = !DILocation(line: 3161, column: 3, scope: !3952)
!3976 = !DILocation(line: 3167, column: 16, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 3167, column: 11)
!3978 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 3162, column: 5)
!3979 = !DILocation(line: 3167, column: 11, scope: !3977)
!3980 = !DILocation(line: 3167, column: 11, scope: !3978)
!3981 = !DILocation(line: 3177, column: 16, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 3177, column: 11)
!3983 = !DILocation(line: 3177, column: 11, scope: !3982)
!3984 = !DILocation(line: 3177, column: 11, scope: !3978)
!3985 = !DILocation(line: 3179, column: 11, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 3179, column: 8)
!3987 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 3178, column: 2)
!3988 = !DILocation(line: 3179, column: 8, scope: !3986)
!3989 = !DILocation(line: 3179, column: 8, scope: !3987)
!3990 = !DILocation(line: 3181, column: 17, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 3181, column: 12)
!3992 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 3180, column: 6)
!3993 = !DILocation(line: 3181, column: 12, scope: !3991)
!3994 = !DILocation(line: 3191, column: 6, scope: !3992)
!3995 = !DILocation(line: 3192, column: 11, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 3192, column: 8)
!3997 = !DILocation(line: 3192, column: 30, scope: !3996)
!3998 = !DILocation(line: 3192, column: 25, scope: !3996)
!3999 = !DILocation(line: 3192, column: 22, scope: !3996)
!4000 = !DILocation(line: 3192, column: 8, scope: !3987)
!4001 = !DILocation(line: 3196, column: 20, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 3196, column: 8)
!4003 = !DILocation(line: 3200, column: 13, scope: !3987)
!4004 = !DILocation(line: 3202, column: 2, scope: !3987)
!4005 = !DILocation(line: 3205, column: 13, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 3204, column: 2)
!4007 = !DILocation(line: 3214, column: 11, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 3214, column: 11)
!4009 = !DILocation(line: 3214, column: 11, scope: !3978)
!4010 = !DILocation(line: 3217, column: 8, scope: !4008)
!4011 = !DILocation(line: 3217, column: 28, scope: !4008)
!4012 = !DILocation(line: 3218, column: 16, scope: !3978)
!4013 = !DILocation(line: 3219, column: 16, scope: !3978)
!4014 = !DILocation(line: 3221, column: 7, scope: !3978)
!4015 = !DILocation(line: 3230, column: 12, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 3227, column: 7)
!4017 = !DILocation(line: 3230, column: 24, scope: !4016)
!4018 = !DILocation(line: 3230, column: 31, scope: !4016)
!4019 = !DILocation(line: 3231, column: 1, scope: !3952)
!4020 = distinct !DISubprogram(name: "decode_ieee_double", scope: !3, file: !3, line: 3234, type: !407, scopeLine: 3236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028}
!4022 = !DILocalVariable(name: "fmt", arg: 1, scope: !4020, file: !3, line: 3234, type: !402)
!4023 = !DILocalVariable(name: "r", arg: 2, scope: !4020, file: !3, line: 3234, type: !409)
!4024 = !DILocalVariable(name: "buf", arg: 3, scope: !4020, file: !3, line: 3235, type: !410)
!4025 = !DILocalVariable(name: "image_hi", scope: !4020, file: !3, line: 3237, type: !20)
!4026 = !DILocalVariable(name: "image_lo", scope: !4020, file: !3, line: 3237, type: !20)
!4027 = !DILocalVariable(name: "sign", scope: !4020, file: !3, line: 3238, type: !372)
!4028 = !DILocalVariable(name: "exp", scope: !4020, file: !3, line: 3239, type: !373)
!4029 = !DILocation(line: 0, scope: !4020)
!4030 = !DILocation(line: 3244, column: 16, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 3241, column: 7)
!4032 = !DILocation(line: 3244, column: 35, scope: !4031)
!4033 = !DILocation(line: 3245, column: 12, scope: !4020)
!4034 = !DILocation(line: 3248, column: 20, scope: !4020)
!4035 = !DILocation(line: 3249, column: 19, scope: !4020)
!4036 = !DILocation(line: 3249, column: 9, scope: !4020)
!4037 = !DILocation(line: 3251, column: 11, scope: !4020)
!4038 = !DILocation(line: 3251, column: 3, scope: !4020)
!4039 = !DILocation(line: 3253, column: 12, scope: !4020)
!4040 = !DILocation(line: 3254, column: 24, scope: !4020)
!4041 = !DILocation(line: 3255, column: 12, scope: !4020)
!4042 = !DILocation(line: 3256, column: 12, scope: !4020)
!4043 = !DILocation(line: 3258, column: 7, scope: !4020)
!4044 = !DILocation(line: 3260, column: 21, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 3260, column: 11)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 3259, column: 5)
!4047 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 3258, column: 7)
!4048 = !DILocation(line: 3260, column: 42, scope: !4045)
!4049 = !DILocation(line: 3260, column: 37, scope: !4045)
!4050 = !DILocation(line: 3260, column: 11, scope: !4046)
!4051 = !DILocation(line: 3262, column: 7, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 3261, column: 2)
!4053 = !DILocation(line: 3262, column: 10, scope: !4052)
!4054 = !DILocation(line: 3263, column: 12, scope: !4052)
!4055 = !DILocation(line: 3264, column: 4, scope: !4052)
!4056 = !DILocation(line: 3274, column: 29, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 3273, column: 6)
!4058 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 3265, column: 8)
!4059 = !DILocation(line: 3274, column: 53, scope: !4057)
!4060 = !DILocation(line: 3274, column: 41, scope: !4057)
!4061 = !DILocation(line: 3275, column: 8, scope: !4057)
!4062 = !DILocation(line: 3275, column: 24, scope: !4057)
!4063 = !DILocation(line: 3277, column: 4, scope: !4052)
!4064 = !DILocation(line: 3278, column: 2, scope: !4052)
!4065 = !DILocation(line: 3279, column: 21, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 3279, column: 16)
!4067 = !DILocation(line: 3279, column: 16, scope: !4066)
!4068 = !DILocation(line: 3279, column: 16, scope: !4045)
!4069 = !DILocation(line: 3280, column: 5, scope: !4066)
!4070 = !DILocation(line: 3280, column: 10, scope: !4066)
!4071 = !DILocation(line: 3280, column: 2, scope: !4066)
!4072 = !DILocation(line: 3282, column: 33, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 3282, column: 12)
!4074 = !DILocation(line: 3282, column: 28, scope: !4073)
!4075 = !DILocation(line: 3282, column: 42, scope: !4073)
!4076 = !DILocation(line: 3282, column: 50, scope: !4073)
!4077 = !DILocation(line: 3282, column: 45, scope: !4073)
!4078 = !DILocation(line: 3282, column: 12, scope: !4047)
!4079 = !DILocation(line: 3284, column: 20, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 3284, column: 11)
!4081 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 3283, column: 5)
!4082 = !DILocation(line: 0, scope: !4080)
!4083 = !DILocation(line: 3287, column: 12, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 3285, column: 2)
!4085 = !DILocation(line: 3288, column: 31, scope: !4084)
!4086 = !DILocation(line: 3288, column: 50, scope: !4084)
!4087 = !DILocation(line: 3288, column: 45, scope: !4084)
!4088 = !DILocation(line: 3288, column: 43, scope: !4084)
!4089 = !DILocation(line: 3288, column: 20, scope: !4084)
!4090 = !DILocation(line: 3288, column: 18, scope: !4084)
!4091 = !DILocation(line: 3295, column: 34, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 3289, column: 8)
!4093 = !DILocation(line: 3295, column: 46, scope: !4092)
!4094 = !DILocation(line: 3295, column: 6, scope: !4092)
!4095 = !DILocation(line: 3295, column: 22, scope: !4092)
!4096 = !DILocation(line: 3296, column: 2, scope: !4084)
!4097 = !DILocation(line: 3300, column: 12, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 3298, column: 2)
!4099 = !DILocation(line: 3305, column: 10, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 3304, column: 5)
!4101 = !DILocation(line: 3305, column: 13, scope: !4100)
!4102 = !DILocation(line: 3306, column: 15, scope: !4100)
!4103 = !DILocation(line: 3307, column: 7, scope: !4100)
!4104 = !DILocation(line: 3314, column: 30, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 3308, column: 11)
!4106 = !DILocation(line: 3314, column: 42, scope: !4105)
!4107 = !DILocation(line: 3314, column: 53, scope: !4105)
!4108 = !DILocation(line: 3314, column: 2, scope: !4105)
!4109 = !DILocation(line: 3314, column: 18, scope: !4105)
!4110 = !DILocation(line: 3316, column: 1, scope: !4020)
!4111 = distinct !DISubprogram(name: "encode_ieee_extended_motorola", scope: !3, file: !3, line: 3509, type: !400, scopeLine: 3511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4112)
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DILocalVariable(name: "fmt", arg: 1, scope: !4111, file: !3, line: 3509, type: !402)
!4114 = !DILocalVariable(name: "buf", arg: 2, scope: !4111, file: !3, line: 3509, type: !403)
!4115 = !DILocalVariable(name: "r", arg: 3, scope: !4111, file: !3, line: 3510, type: !6)
!4116 = !DILocalVariable(name: "intermed", scope: !4111, file: !3, line: 3512, type: !4117)
!4117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 192, elements: !21)
!4118 = !DILocation(line: 0, scope: !4111)
!4119 = !DILocation(line: 3512, column: 3, scope: !4111)
!4120 = !DILocation(line: 3512, column: 8, scope: !4111)
!4121 = !DILocation(line: 3513, column: 30, scope: !4111)
!4122 = !DILocation(line: 3513, column: 3, scope: !4111)
!4123 = !DILocation(line: 3521, column: 12, scope: !4111)
!4124 = !DILocation(line: 3521, column: 24, scope: !4111)
!4125 = !DILocation(line: 3521, column: 10, scope: !4111)
!4126 = !DILocation(line: 3522, column: 12, scope: !4111)
!4127 = !DILocation(line: 3522, column: 3, scope: !4111)
!4128 = !DILocation(line: 3522, column: 10, scope: !4111)
!4129 = !DILocation(line: 3523, column: 12, scope: !4111)
!4130 = !DILocation(line: 3523, column: 3, scope: !4111)
!4131 = !DILocation(line: 3523, column: 10, scope: !4111)
!4132 = !DILocation(line: 3524, column: 1, scope: !4111)
!4133 = distinct !DISubprogram(name: "decode_ieee_extended_motorola", scope: !3, file: !3, line: 3650, type: !407, scopeLine: 3652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4134)
!4134 = !{!4135, !4136, !4137, !4138}
!4135 = !DILocalVariable(name: "fmt", arg: 1, scope: !4133, file: !3, line: 3650, type: !402)
!4136 = !DILocalVariable(name: "r", arg: 2, scope: !4133, file: !3, line: 3650, type: !409)
!4137 = !DILocalVariable(name: "buf", arg: 3, scope: !4133, file: !3, line: 3651, type: !410)
!4138 = !DILocalVariable(name: "intermed", scope: !4133, file: !3, line: 3653, type: !4117)
!4139 = !DILocation(line: 0, scope: !4133)
!4140 = !DILocation(line: 3653, column: 3, scope: !4133)
!4141 = !DILocation(line: 3653, column: 8, scope: !4133)
!4142 = !DILocation(line: 3658, column: 17, scope: !4133)
!4143 = !DILocation(line: 3658, column: 3, scope: !4133)
!4144 = !DILocation(line: 3658, column: 15, scope: !4133)
!4145 = !DILocation(line: 3659, column: 17, scope: !4133)
!4146 = !DILocation(line: 3659, column: 3, scope: !4133)
!4147 = !DILocation(line: 3659, column: 15, scope: !4133)
!4148 = !DILocation(line: 3660, column: 32, scope: !4133)
!4149 = !DILocation(line: 3660, column: 39, scope: !4133)
!4150 = !DILocation(line: 3660, column: 3, scope: !4133)
!4151 = !DILocation(line: 3660, column: 15, scope: !4133)
!4152 = !DILocation(line: 3662, column: 3, scope: !4133)
!4153 = !DILocation(line: 3663, column: 1, scope: !4133)
!4154 = distinct !DISubprogram(name: "encode_ieee_extended_intel_96", scope: !3, file: !3, line: 3529, type: !400, scopeLine: 3531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4155)
!4155 = !{!4156, !4157, !4158}
!4156 = !DILocalVariable(name: "fmt", arg: 1, scope: !4154, file: !3, line: 3529, type: !402)
!4157 = !DILocalVariable(name: "buf", arg: 2, scope: !4154, file: !3, line: 3529, type: !403)
!4158 = !DILocalVariable(name: "r", arg: 3, scope: !4154, file: !3, line: 3530, type: !6)
!4159 = !DILocation(line: 0, scope: !4154)
!4160 = !DILocation(line: 3545, column: 5, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 3532, column: 7)
!4162 = !DILocation(line: 3546, column: 1, scope: !4154)
!4163 = distinct !DISubprogram(name: "decode_ieee_extended_intel_96", scope: !3, file: !3, line: 3668, type: !407, scopeLine: 3670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4164)
!4164 = !{!4165, !4166, !4167}
!4165 = !DILocalVariable(name: "fmt", arg: 1, scope: !4163, file: !3, line: 3668, type: !402)
!4166 = !DILocalVariable(name: "r", arg: 2, scope: !4163, file: !3, line: 3668, type: !409)
!4167 = !DILocalVariable(name: "buf", arg: 3, scope: !4163, file: !3, line: 3669, type: !410)
!4168 = !DILocation(line: 0, scope: !4163)
!4169 = !DILocation(line: 3686, column: 5, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 3671, column: 7)
!4171 = !DILocation(line: 3687, column: 1, scope: !4163)
!4172 = distinct !DISubprogram(name: "encode_ieee_extended_intel_128", scope: !3, file: !3, line: 3551, type: !400, scopeLine: 3553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4173)
!4173 = !{!4174, !4175, !4176}
!4174 = !DILocalVariable(name: "fmt", arg: 1, scope: !4172, file: !3, line: 3551, type: !402)
!4175 = !DILocalVariable(name: "buf", arg: 2, scope: !4172, file: !3, line: 3551, type: !403)
!4176 = !DILocalVariable(name: "r", arg: 3, scope: !4172, file: !3, line: 3552, type: !6)
!4177 = !DILocation(line: 0, scope: !4172)
!4178 = !DILocation(line: 3555, column: 3, scope: !4172)
!4179 = !DILocation(line: 3556, column: 3, scope: !4172)
!4180 = !DILocation(line: 3556, column: 10, scope: !4172)
!4181 = !DILocation(line: 3557, column: 1, scope: !4172)
!4182 = distinct !DISubprogram(name: "decode_ieee_extended_intel_128", scope: !3, file: !3, line: 3692, type: !407, scopeLine: 3694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4183)
!4183 = !{!4184, !4185, !4186}
!4184 = !DILocalVariable(name: "fmt", arg: 1, scope: !4182, file: !3, line: 3692, type: !402)
!4185 = !DILocalVariable(name: "r", arg: 2, scope: !4182, file: !3, line: 3692, type: !409)
!4186 = !DILocalVariable(name: "buf", arg: 3, scope: !4182, file: !3, line: 3693, type: !410)
!4187 = !DILocation(line: 0, scope: !4182)
!4188 = !DILocation(line: 3696, column: 3, scope: !4182)
!4189 = !DILocation(line: 3697, column: 1, scope: !4182)
!4190 = distinct !DISubprogram(name: "encode_ibm_extended", scope: !3, file: !3, line: 3799, type: !400, scopeLine: 3801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4191)
!4191 = !{!4192, !4193, !4194, !4195, !4196, !4197, !4198}
!4192 = !DILocalVariable(name: "fmt", arg: 1, scope: !4190, file: !3, line: 3799, type: !402)
!4193 = !DILocalVariable(name: "buf", arg: 2, scope: !4190, file: !3, line: 3799, type: !403)
!4194 = !DILocalVariable(name: "r", arg: 3, scope: !4190, file: !3, line: 3800, type: !6)
!4195 = !DILocalVariable(name: "u", scope: !4190, file: !3, line: 3802, type: !8)
!4196 = !DILocalVariable(name: "normr", scope: !4190, file: !3, line: 3802, type: !8)
!4197 = !DILocalVariable(name: "v", scope: !4190, file: !3, line: 3802, type: !8)
!4198 = !DILocalVariable(name: "base_fmt", scope: !4190, file: !3, line: 3803, type: !402)
!4199 = !DILocation(line: 0, scope: !4190)
!4200 = !DILocation(line: 3802, column: 3, scope: !4190)
!4201 = !DILocation(line: 3805, column: 19, scope: !4190)
!4202 = !DILocation(line: 3805, column: 14, scope: !4190)
!4203 = !DILocation(line: 3808, column: 11, scope: !4190)
!4204 = !DILocation(line: 3809, column: 13, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 3809, column: 7)
!4206 = !DILocation(line: 3809, column: 16, scope: !4205)
!4207 = !DILocation(line: 3809, column: 7, scope: !4190)
!4208 = !DILocation(line: 3810, column: 5, scope: !4205)
!4209 = !DILocation(line: 3813, column: 7, scope: !4190)
!4210 = !DILocation(line: 3814, column: 3, scope: !4190)
!4211 = !DILocation(line: 3815, column: 3, scope: !4190)
!4212 = !DILocation(line: 3817, column: 9, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 3817, column: 7)
!4214 = !DILocation(line: 3817, column: 12, scope: !4213)
!4215 = !DILocation(line: 3817, column: 7, scope: !4190)
!4216 = !DILocation(line: 3819, column: 7, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 3818, column: 5)
!4218 = !DILocation(line: 3821, column: 7, scope: !4217)
!4219 = !DILocation(line: 3822, column: 38, scope: !4217)
!4220 = !DILocation(line: 3822, column: 7, scope: !4217)
!4221 = !DILocation(line: 3823, column: 5, scope: !4217)
!4222 = !DILocation(line: 3828, column: 7, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 3825, column: 5)
!4224 = !DILocation(line: 3828, column: 14, scope: !4223)
!4225 = !DILocation(line: 3829, column: 7, scope: !4223)
!4226 = !DILocation(line: 3829, column: 14, scope: !4223)
!4227 = !DILocation(line: 3831, column: 1, scope: !4190)
!4228 = distinct !DISubprogram(name: "decode_ibm_extended", scope: !3, file: !3, line: 3834, type: !407, scopeLine: 3836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4229)
!4229 = !{!4230, !4231, !4232, !4233, !4234, !4235}
!4230 = !DILocalVariable(name: "fmt", arg: 1, scope: !4228, file: !3, line: 3834, type: !402)
!4231 = !DILocalVariable(name: "r", arg: 2, scope: !4228, file: !3, line: 3834, type: !409)
!4232 = !DILocalVariable(name: "buf", arg: 3, scope: !4228, file: !3, line: 3835, type: !410)
!4233 = !DILocalVariable(name: "u", scope: !4228, file: !3, line: 3837, type: !8)
!4234 = !DILocalVariable(name: "v", scope: !4228, file: !3, line: 3837, type: !8)
!4235 = !DILocalVariable(name: "base_fmt", scope: !4228, file: !3, line: 3838, type: !402)
!4236 = !DILocation(line: 0, scope: !4228)
!4237 = !DILocation(line: 3837, column: 3, scope: !4228)
!4238 = !DILocation(line: 3840, column: 19, scope: !4228)
!4239 = !DILocation(line: 3840, column: 14, scope: !4228)
!4240 = !DILocation(line: 3841, column: 3, scope: !4228)
!4241 = !DILocation(line: 3843, column: 9, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 3843, column: 7)
!4243 = !DILocation(line: 3843, column: 12, scope: !4242)
!4244 = !DILocation(line: 3843, column: 24, scope: !4242)
!4245 = !DILocation(line: 3843, column: 32, scope: !4242)
!4246 = !DILocation(line: 3843, column: 43, scope: !4242)
!4247 = !DILocation(line: 3843, column: 51, scope: !4242)
!4248 = !DILocation(line: 3843, column: 7, scope: !4228)
!4249 = !DILocation(line: 3845, column: 42, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 3844, column: 5)
!4251 = !DILocation(line: 3845, column: 7, scope: !4250)
!4252 = !DILocation(line: 3846, column: 7, scope: !4250)
!4253 = !DILocation(line: 3847, column: 5, scope: !4250)
!4254 = !DILocation(line: 3849, column: 10, scope: !4242)
!4255 = !DILocation(line: 3850, column: 1, scope: !4228)
!4256 = distinct !DISubprogram(name: "encode_ieee_quad", scope: !3, file: !3, line: 3903, type: !400, scopeLine: 3905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4257)
!4257 = !{!4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267}
!4258 = !DILocalVariable(name: "fmt", arg: 1, scope: !4256, file: !3, line: 3903, type: !402)
!4259 = !DILocalVariable(name: "buf", arg: 2, scope: !4256, file: !3, line: 3903, type: !403)
!4260 = !DILocalVariable(name: "r", arg: 3, scope: !4256, file: !3, line: 3904, type: !6)
!4261 = !DILocalVariable(name: "image3", scope: !4256, file: !3, line: 3906, type: !20)
!4262 = !DILocalVariable(name: "image2", scope: !4256, file: !3, line: 3906, type: !20)
!4263 = !DILocalVariable(name: "image1", scope: !4256, file: !3, line: 3906, type: !20)
!4264 = !DILocalVariable(name: "image0", scope: !4256, file: !3, line: 3906, type: !20)
!4265 = !DILocalVariable(name: "exp", scope: !4256, file: !3, line: 3906, type: !20)
!4266 = !DILocalVariable(name: "denormal", scope: !4256, file: !3, line: 3907, type: !372)
!4267 = !DILocalVariable(name: "u", scope: !4256, file: !3, line: 3908, type: !8)
!4268 = !DILocation(line: 0, scope: !4256)
!4269 = !DILocation(line: 3907, column: 20, scope: !4256)
!4270 = !DILocation(line: 3908, column: 3, scope: !4256)
!4271 = !DILocation(line: 3910, column: 15, scope: !4256)
!4272 = !DILocation(line: 3910, column: 20, scope: !4256)
!4273 = !DILocation(line: 3910, column: 12, scope: !4256)
!4274 = !DILocation(line: 3915, column: 3, scope: !4256)
!4275 = !DILocation(line: 3917, column: 14, scope: !4256)
!4276 = !DILocation(line: 3917, column: 3, scope: !4256)
!4277 = !DILocation(line: 3923, column: 16, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 3923, column: 11)
!4279 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 3918, column: 5)
!4280 = !DILocation(line: 3923, column: 11, scope: !4278)
!4281 = !DILocation(line: 3923, column: 11, scope: !4279)
!4282 = !DILocation(line: 3935, column: 16, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 3935, column: 11)
!4284 = !DILocation(line: 3935, column: 11, scope: !4283)
!4285 = !DILocation(line: 3935, column: 11, scope: !4279)
!4286 = !DILocation(line: 3937, column: 11, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 3936, column: 2)
!4288 = !DILocation(line: 3939, column: 11, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4287, file: !3, line: 3939, column: 8)
!4290 = !DILocation(line: 3939, column: 8, scope: !4289)
!4291 = !DILocation(line: 3939, column: 8, scope: !4287)
!4292 = !DILocation(line: 3941, column: 17, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 3941, column: 12)
!4294 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 3940, column: 6)
!4295 = !DILocation(line: 3941, column: 12, scope: !4293)
!4296 = !DILocation(line: 3943, column: 12, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 3942, column: 3)
!4298 = !DILocation(line: 3941, column: 12, scope: !4294)
!4299 = !DILocation(line: 3946, column: 6, scope: !4294)
!4300 = !DILocation(line: 3956, column: 17, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 3955, column: 6)
!4302 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 3947, column: 13)
!4303 = !DILocation(line: 3957, column: 24, scope: !4301)
!4304 = !DILocation(line: 3958, column: 17, scope: !4301)
!4305 = !DILocation(line: 3959, column: 26, scope: !4301)
!4306 = !DILocation(line: 3959, column: 38, scope: !4301)
!4307 = !DILocation(line: 3959, column: 15, scope: !4301)
!4308 = !DILocation(line: 3960, column: 15, scope: !4301)
!4309 = !DILocation(line: 3961, column: 15, scope: !4301)
!4310 = !DILocation(line: 0, scope: !4289)
!4311 = !DILocation(line: 3963, column: 11, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4287, file: !3, line: 3963, column: 8)
!4313 = !DILocation(line: 3963, column: 30, scope: !4312)
!4314 = !DILocation(line: 3963, column: 25, scope: !4312)
!4315 = !DILocation(line: 3963, column: 22, scope: !4312)
!4316 = !DILocation(line: 3963, column: 8, scope: !4287)
!4317 = !DILocation(line: 3967, column: 17, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4287, file: !3, line: 3967, column: 8)
!4319 = !DILocation(line: 3967, column: 27, scope: !4318)
!4320 = !DILocation(line: 3967, column: 36, scope: !4318)
!4321 = !DILocation(line: 3967, column: 45, scope: !4318)
!4322 = !DILocation(line: 3967, column: 55, scope: !4318)
!4323 = !DILocation(line: 3968, column: 13, scope: !4318)
!4324 = !DILocation(line: 3967, column: 8, scope: !4287)
!4325 = !DILocation(line: 3969, column: 2, scope: !4287)
!4326 = !DILocation(line: 3972, column: 11, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 3971, column: 2)
!4328 = !DILocation(line: 3983, column: 11, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 3983, column: 11)
!4330 = !DILocation(line: 3983, column: 11, scope: !4279)
!4331 = !DILocation(line: 3986, column: 8, scope: !4329)
!4332 = !DILocation(line: 3986, column: 29, scope: !4329)
!4333 = !DILocation(line: 3987, column: 14, scope: !4279)
!4334 = !DILocation(line: 3998, column: 13, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 3997, column: 2)
!4336 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 3989, column: 11)
!4337 = !DILocation(line: 3999, column: 20, scope: !4335)
!4338 = !DILocation(line: 4000, column: 13, scope: !4335)
!4339 = !DILocation(line: 4001, column: 22, scope: !4335)
!4340 = !DILocation(line: 4001, column: 34, scope: !4335)
!4341 = !DILocation(line: 4001, column: 11, scope: !4335)
!4342 = !DILocation(line: 4002, column: 11, scope: !4335)
!4343 = !DILocation(line: 4003, column: 11, scope: !4335)
!4344 = !DILocation(line: 4005, column: 7, scope: !4279)
!4345 = !DILocation(line: 4020, column: 14, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 4019, column: 5)
!4347 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 4011, column: 7)
!4348 = !DILocation(line: 4021, column: 7, scope: !4346)
!4349 = !DILocation(line: 4021, column: 14, scope: !4346)
!4350 = !DILocation(line: 4022, column: 7, scope: !4346)
!4351 = !DILocation(line: 4022, column: 14, scope: !4346)
!4352 = !DILocation(line: 4023, column: 7, scope: !4346)
!4353 = !DILocation(line: 4023, column: 14, scope: !4346)
!4354 = !DILocation(line: 4025, column: 1, scope: !4256)
!4355 = distinct !DISubprogram(name: "decode_ieee_quad", scope: !3, file: !3, line: 4028, type: !407, scopeLine: 4030, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365}
!4357 = !DILocalVariable(name: "fmt", arg: 1, scope: !4355, file: !3, line: 4028, type: !402)
!4358 = !DILocalVariable(name: "r", arg: 2, scope: !4355, file: !3, line: 4028, type: !409)
!4359 = !DILocalVariable(name: "buf", arg: 3, scope: !4355, file: !3, line: 4029, type: !410)
!4360 = !DILocalVariable(name: "image3", scope: !4355, file: !3, line: 4031, type: !20)
!4361 = !DILocalVariable(name: "image2", scope: !4355, file: !3, line: 4031, type: !20)
!4362 = !DILocalVariable(name: "image1", scope: !4355, file: !3, line: 4031, type: !20)
!4363 = !DILocalVariable(name: "image0", scope: !4355, file: !3, line: 4031, type: !20)
!4364 = !DILocalVariable(name: "sign", scope: !4355, file: !3, line: 4032, type: !372)
!4365 = !DILocalVariable(name: "exp", scope: !4355, file: !3, line: 4033, type: !373)
!4366 = !DILocation(line: 0, scope: !4355)
!4367 = !DILocation(line: 4044, column: 16, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 4043, column: 5)
!4369 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 4035, column: 7)
!4370 = !DILocation(line: 4045, column: 16, scope: !4368)
!4371 = !DILocation(line: 4046, column: 16, scope: !4368)
!4372 = !DILocation(line: 4047, column: 16, scope: !4368)
!4373 = !DILocation(line: 4049, column: 10, scope: !4355)
!4374 = !DILocation(line: 4050, column: 10, scope: !4355)
!4375 = !DILocation(line: 4051, column: 10, scope: !4355)
!4376 = !DILocation(line: 4053, column: 18, scope: !4355)
!4377 = !DILocation(line: 4054, column: 17, scope: !4355)
!4378 = !DILocation(line: 4054, column: 9, scope: !4355)
!4379 = !DILocation(line: 4055, column: 10, scope: !4355)
!4380 = !DILocation(line: 4057, column: 11, scope: !4355)
!4381 = !DILocation(line: 4057, column: 3, scope: !4355)
!4382 = !DILocation(line: 4059, column: 7, scope: !4355)
!4383 = !DILocation(line: 4061, column: 19, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 4061, column: 11)
!4385 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 4060, column: 5)
!4386 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 4059, column: 7)
!4387 = !DILocation(line: 4061, column: 28, scope: !4384)
!4388 = !DILocation(line: 4061, column: 37, scope: !4384)
!4389 = !DILocation(line: 4061, column: 47, scope: !4384)
!4390 = !DILocation(line: 4061, column: 55, scope: !4384)
!4391 = !DILocation(line: 4061, column: 50, scope: !4384)
!4392 = !DILocation(line: 4061, column: 11, scope: !4385)
!4393 = !DILocation(line: 4063, column: 7, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 4062, column: 2)
!4395 = !DILocation(line: 4063, column: 10, scope: !4394)
!4396 = !DILocation(line: 4064, column: 12, scope: !4394)
!4397 = !DILocation(line: 4066, column: 4, scope: !4394)
!4398 = !DILocation(line: 4076, column: 28, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !3, line: 4075, column: 6)
!4400 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 4067, column: 8)
!4401 = !DILocation(line: 4076, column: 40, scope: !4399)
!4402 = !DILocation(line: 4076, column: 8, scope: !4399)
!4403 = !DILocation(line: 4076, column: 18, scope: !4399)
!4404 = !DILocation(line: 4077, column: 28, scope: !4399)
!4405 = !DILocation(line: 4077, column: 40, scope: !4399)
!4406 = !DILocation(line: 4077, column: 8, scope: !4399)
!4407 = !DILocation(line: 4077, column: 18, scope: !4399)
!4408 = !DILocation(line: 4080, column: 4, scope: !4394)
!4409 = !DILocation(line: 4081, column: 2, scope: !4394)
!4410 = !DILocation(line: 4082, column: 21, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 4082, column: 16)
!4412 = !DILocation(line: 4082, column: 16, scope: !4411)
!4413 = !DILocation(line: 4082, column: 16, scope: !4384)
!4414 = !DILocation(line: 4083, column: 5, scope: !4411)
!4415 = !DILocation(line: 4083, column: 10, scope: !4411)
!4416 = !DILocation(line: 4083, column: 2, scope: !4411)
!4417 = !DILocation(line: 4085, column: 34, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 4085, column: 12)
!4419 = !DILocation(line: 4085, column: 29, scope: !4418)
!4420 = !DILocation(line: 4085, column: 43, scope: !4418)
!4421 = !DILocation(line: 4085, column: 51, scope: !4418)
!4422 = !DILocation(line: 4085, column: 46, scope: !4418)
!4423 = !DILocation(line: 4085, column: 12, scope: !4386)
!4424 = !DILocation(line: 4087, column: 18, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 4087, column: 11)
!4426 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 4086, column: 5)
!4427 = !DILocation(line: 4087, column: 27, scope: !4425)
!4428 = !DILocation(line: 4087, column: 36, scope: !4425)
!4429 = !DILocation(line: 0, scope: !4425)
!4430 = !DILocation(line: 4087, column: 11, scope: !4426)
!4431 = !DILocation(line: 4090, column: 12, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 4088, column: 2)
!4433 = !DILocation(line: 4091, column: 29, scope: !4432)
!4434 = !DILocation(line: 4091, column: 48, scope: !4432)
!4435 = !DILocation(line: 4091, column: 43, scope: !4432)
!4436 = !DILocation(line: 4091, column: 41, scope: !4432)
!4437 = !DILocation(line: 4091, column: 20, scope: !4432)
!4438 = !DILocation(line: 4091, column: 18, scope: !4432)
!4439 = !DILocation(line: 4102, column: 28, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 4101, column: 6)
!4441 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 4093, column: 8)
!4442 = !DILocation(line: 4102, column: 40, scope: !4440)
!4443 = !DILocation(line: 4102, column: 8, scope: !4440)
!4444 = !DILocation(line: 4102, column: 18, scope: !4440)
!4445 = !DILocation(line: 4103, column: 28, scope: !4440)
!4446 = !DILocation(line: 4103, column: 40, scope: !4440)
!4447 = !DILocation(line: 4103, column: 8, scope: !4440)
!4448 = !DILocation(line: 4103, column: 18, scope: !4440)
!4449 = !DILocation(line: 4105, column: 4, scope: !4432)
!4450 = !DILocation(line: 4106, column: 2, scope: !4432)
!4451 = !DILocation(line: 4110, column: 12, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 4108, column: 2)
!4453 = !DILocation(line: 4115, column: 10, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 4114, column: 5)
!4455 = !DILocation(line: 4115, column: 13, scope: !4454)
!4456 = !DILocation(line: 4116, column: 15, scope: !4454)
!4457 = !DILocation(line: 4117, column: 7, scope: !4454)
!4458 = !DILocation(line: 4128, column: 24, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 4127, column: 2)
!4460 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 4119, column: 11)
!4461 = !DILocation(line: 4128, column: 36, scope: !4459)
!4462 = !DILocation(line: 4128, column: 4, scope: !4459)
!4463 = !DILocation(line: 4128, column: 14, scope: !4459)
!4464 = !DILocation(line: 4129, column: 24, scope: !4459)
!4465 = !DILocation(line: 4129, column: 36, scope: !4459)
!4466 = !DILocation(line: 4129, column: 4, scope: !4459)
!4467 = !DILocation(line: 4129, column: 14, scope: !4459)
!4468 = !DILocation(line: 4131, column: 7, scope: !4454)
!4469 = !DILocation(line: 4132, column: 7, scope: !4454)
!4470 = !DILocation(line: 4132, column: 23, scope: !4454)
!4471 = !DILocation(line: 4134, column: 1, scope: !4355)
!4472 = distinct !DISubprogram(name: "encode_vax_f", scope: !3, file: !3, line: 4202, type: !400, scopeLine: 4204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4473)
!4473 = !{!4474, !4475, !4476, !4477, !4478, !4479, !4480}
!4474 = !DILocalVariable(name: "fmt", arg: 1, scope: !4472, file: !3, line: 4202, type: !402)
!4475 = !DILocalVariable(name: "buf", arg: 2, scope: !4472, file: !3, line: 4202, type: !403)
!4476 = !DILocalVariable(name: "r", arg: 3, scope: !4472, file: !3, line: 4203, type: !6)
!4477 = !DILocalVariable(name: "sign", scope: !4472, file: !3, line: 4205, type: !20)
!4478 = !DILocalVariable(name: "exp", scope: !4472, file: !3, line: 4205, type: !20)
!4479 = !DILocalVariable(name: "sig", scope: !4472, file: !3, line: 4205, type: !20)
!4480 = !DILocalVariable(name: "image", scope: !4472, file: !3, line: 4205, type: !20)
!4481 = !DILocation(line: 0, scope: !4472)
!4482 = !DILocation(line: 4207, column: 13, scope: !4472)
!4483 = !DILocation(line: 4207, column: 18, scope: !4472)
!4484 = !DILocation(line: 4207, column: 10, scope: !4472)
!4485 = !DILocation(line: 4209, column: 14, scope: !4472)
!4486 = !DILocation(line: 4209, column: 3, scope: !4472)
!4487 = !DILocation(line: 4217, column: 26, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 4210, column: 5)
!4489 = !DILocation(line: 4218, column: 7, scope: !4488)
!4490 = !DILocation(line: 4221, column: 14, scope: !4488)
!4491 = !DILocation(line: 4222, column: 13, scope: !4488)
!4492 = !DILocation(line: 4222, column: 26, scope: !4488)
!4493 = !DILocation(line: 4224, column: 20, scope: !4488)
!4494 = !DILocation(line: 4224, column: 27, scope: !4488)
!4495 = !DILocation(line: 4225, column: 13, scope: !4488)
!4496 = !DILocation(line: 4226, column: 20, scope: !4488)
!4497 = !DILocation(line: 4226, column: 13, scope: !4488)
!4498 = !DILocation(line: 4227, column: 20, scope: !4488)
!4499 = !DILocation(line: 4227, column: 13, scope: !4488)
!4500 = !DILocation(line: 4228, column: 7, scope: !4488)
!4501 = !DILocation(line: 4234, column: 10, scope: !4472)
!4502 = !DILocation(line: 4235, column: 1, scope: !4472)
!4503 = distinct !DISubprogram(name: "decode_vax_f", scope: !3, file: !3, line: 4238, type: !407, scopeLine: 4240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4504)
!4504 = !{!4505, !4506, !4507, !4508, !4509}
!4505 = !DILocalVariable(name: "fmt", arg: 1, scope: !4503, file: !3, line: 4238, type: !402)
!4506 = !DILocalVariable(name: "r", arg: 2, scope: !4503, file: !3, line: 4239, type: !409)
!4507 = !DILocalVariable(name: "buf", arg: 3, scope: !4503, file: !3, line: 4239, type: !410)
!4508 = !DILocalVariable(name: "image", scope: !4503, file: !3, line: 4241, type: !20)
!4509 = !DILocalVariable(name: "exp", scope: !4503, file: !3, line: 4242, type: !373)
!4510 = !DILocation(line: 0, scope: !4503)
!4511 = !DILocation(line: 4241, column: 25, scope: !4503)
!4512 = !DILocation(line: 4242, column: 20, scope: !4503)
!4513 = !DILocation(line: 4242, column: 13, scope: !4503)
!4514 = !DILocation(line: 4244, column: 11, scope: !4503)
!4515 = !DILocation(line: 4244, column: 3, scope: !4503)
!4516 = !DILocation(line: 4246, column: 11, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 4246, column: 7)
!4518 = !DILocation(line: 4246, column: 7, scope: !4503)
!4519 = !DILocation(line: 4248, column: 10, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 4247, column: 5)
!4521 = !DILocation(line: 4248, column: 13, scope: !4520)
!4522 = !DILocation(line: 4249, column: 15, scope: !4520)
!4523 = !DILocation(line: 4250, column: 7, scope: !4520)
!4524 = !DILocation(line: 4252, column: 31, scope: !4520)
!4525 = !DILocation(line: 4252, column: 48, scope: !4520)
!4526 = !DILocation(line: 4252, column: 38, scope: !4520)
!4527 = !DILocation(line: 4253, column: 32, scope: !4520)
!4528 = !DILocation(line: 4253, column: 62, scope: !4520)
!4529 = !DILocation(line: 4253, column: 7, scope: !4520)
!4530 = !DILocation(line: 4253, column: 23, scope: !4520)
!4531 = !DILocation(line: 4254, column: 5, scope: !4520)
!4532 = !DILocation(line: 4255, column: 1, scope: !4503)
!4533 = distinct !DISubprogram(name: "encode_vax_d", scope: !3, file: !3, line: 4258, type: !400, scopeLine: 4260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4534)
!4534 = !{!4535, !4536, !4537, !4538, !4539, !4540}
!4535 = !DILocalVariable(name: "fmt", arg: 1, scope: !4533, file: !3, line: 4258, type: !402)
!4536 = !DILocalVariable(name: "buf", arg: 2, scope: !4533, file: !3, line: 4258, type: !403)
!4537 = !DILocalVariable(name: "r", arg: 3, scope: !4533, file: !3, line: 4259, type: !6)
!4538 = !DILocalVariable(name: "image0", scope: !4533, file: !3, line: 4261, type: !20)
!4539 = !DILocalVariable(name: "image1", scope: !4533, file: !3, line: 4261, type: !20)
!4540 = !DILocalVariable(name: "sign", scope: !4533, file: !3, line: 4261, type: !20)
!4541 = !DILocation(line: 0, scope: !4533)
!4542 = !DILocation(line: 4261, column: 43, scope: !4533)
!4543 = !DILocation(line: 4261, column: 48, scope: !4533)
!4544 = !DILocation(line: 4261, column: 40, scope: !4533)
!4545 = !DILocation(line: 4263, column: 14, scope: !4533)
!4546 = !DILocation(line: 4263, column: 3, scope: !4533)
!4547 = !DILocation(line: 4271, column: 27, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 4264, column: 5)
!4549 = !DILocation(line: 4273, column: 7, scope: !4548)
!4550 = !DILocation(line: 4279, column: 13, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 4278, column: 2)
!4552 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 4277, column: 11)
!4553 = !DILocation(line: 4280, column: 21, scope: !4551)
!4554 = !DILocation(line: 4280, column: 35, scope: !4551)
!4555 = !DILocation(line: 4281, column: 21, scope: !4551)
!4556 = !DILocation(line: 4293, column: 25, scope: !4548)
!4557 = !DILocation(line: 4293, column: 42, scope: !4548)
!4558 = !DILocation(line: 4293, column: 32, scope: !4548)
!4559 = !DILocation(line: 4293, column: 50, scope: !4548)
!4560 = !DILocation(line: 4294, column: 25, scope: !4548)
!4561 = !DILocation(line: 4294, column: 42, scope: !4548)
!4562 = !DILocation(line: 4294, column: 50, scope: !4548)
!4563 = !DILocation(line: 4297, column: 14, scope: !4548)
!4564 = !DILocation(line: 4298, column: 18, scope: !4548)
!4565 = !DILocation(line: 4298, column: 38, scope: !4548)
!4566 = !DILocation(line: 4298, column: 17, scope: !4548)
!4567 = !DILocation(line: 4298, column: 14, scope: !4548)
!4568 = !DILocation(line: 4299, column: 7, scope: !4548)
!4569 = !DILocation(line: 4308, column: 12, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 4305, column: 7)
!4571 = !DILocation(line: 4308, column: 22, scope: !4570)
!4572 = !DILocation(line: 4308, column: 29, scope: !4570)
!4573 = !DILocation(line: 4309, column: 1, scope: !4533)
!4574 = distinct !DISubprogram(name: "decode_vax_d", scope: !3, file: !3, line: 4312, type: !407, scopeLine: 4314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4575)
!4575 = !{!4576, !4577, !4578, !4579, !4580, !4581}
!4576 = !DILocalVariable(name: "fmt", arg: 1, scope: !4574, file: !3, line: 4312, type: !402)
!4577 = !DILocalVariable(name: "r", arg: 2, scope: !4574, file: !3, line: 4313, type: !409)
!4578 = !DILocalVariable(name: "buf", arg: 3, scope: !4574, file: !3, line: 4313, type: !410)
!4579 = !DILocalVariable(name: "image0", scope: !4574, file: !3, line: 4315, type: !20)
!4580 = !DILocalVariable(name: "image1", scope: !4574, file: !3, line: 4315, type: !20)
!4581 = !DILocalVariable(name: "exp", scope: !4574, file: !3, line: 4316, type: !373)
!4582 = !DILocation(line: 0, scope: !4574)
!4583 = !DILocation(line: 4321, column: 14, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4574, file: !3, line: 4318, column: 7)
!4585 = !DILocation(line: 4321, column: 31, scope: !4584)
!4586 = !DILocation(line: 4325, column: 17, scope: !4574)
!4587 = !DILocation(line: 4325, column: 9, scope: !4574)
!4588 = !DILocation(line: 4327, column: 11, scope: !4574)
!4589 = !DILocation(line: 4327, column: 3, scope: !4574)
!4590 = !DILocation(line: 4329, column: 11, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4574, file: !3, line: 4329, column: 7)
!4592 = !DILocation(line: 4329, column: 7, scope: !4574)
!4593 = !DILocation(line: 4331, column: 10, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 4330, column: 5)
!4595 = !DILocation(line: 4331, column: 13, scope: !4594)
!4596 = !DILocation(line: 4332, column: 15, scope: !4594)
!4597 = !DILocation(line: 4333, column: 7, scope: !4594)
!4598 = !DILocation(line: 4337, column: 33, scope: !4594)
!4599 = !DILocation(line: 4337, column: 51, scope: !4594)
!4600 = !DILocation(line: 4337, column: 40, scope: !4594)
!4601 = !DILocation(line: 4338, column: 35, scope: !4594)
!4602 = !DILocation(line: 4338, column: 53, scope: !4594)
!4603 = !DILocation(line: 4338, column: 42, scope: !4594)
!4604 = !DILocation(line: 4342, column: 21, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 4341, column: 2)
!4606 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 4340, column: 11)
!4607 = !DILocation(line: 4342, column: 33, scope: !4605)
!4608 = !DILocation(line: 4343, column: 11, scope: !4605)
!4609 = !DILocation(line: 4344, column: 11, scope: !4605)
!4610 = !DILocation(line: 4345, column: 4, scope: !4605)
!4611 = !DILocation(line: 4345, column: 20, scope: !4605)
!4612 = !DILocation(line: 4354, column: 5, scope: !4594)
!4613 = !DILocation(line: 4355, column: 1, scope: !4574)
!4614 = distinct !DISubprogram(name: "encode_vax_g", scope: !3, file: !3, line: 4358, type: !400, scopeLine: 4360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4615)
!4615 = !{!4616, !4617, !4618, !4619, !4620, !4621}
!4616 = !DILocalVariable(name: "fmt", arg: 1, scope: !4614, file: !3, line: 4358, type: !402)
!4617 = !DILocalVariable(name: "buf", arg: 2, scope: !4614, file: !3, line: 4358, type: !403)
!4618 = !DILocalVariable(name: "r", arg: 3, scope: !4614, file: !3, line: 4359, type: !6)
!4619 = !DILocalVariable(name: "image0", scope: !4614, file: !3, line: 4361, type: !20)
!4620 = !DILocalVariable(name: "image1", scope: !4614, file: !3, line: 4361, type: !20)
!4621 = !DILocalVariable(name: "sign", scope: !4614, file: !3, line: 4361, type: !20)
!4622 = !DILocation(line: 0, scope: !4614)
!4623 = !DILocation(line: 4361, column: 43, scope: !4614)
!4624 = !DILocation(line: 4361, column: 48, scope: !4614)
!4625 = !DILocation(line: 4361, column: 40, scope: !4614)
!4626 = !DILocation(line: 4363, column: 14, scope: !4614)
!4627 = !DILocation(line: 4363, column: 3, scope: !4614)
!4628 = !DILocation(line: 4371, column: 27, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 4364, column: 5)
!4630 = !DILocation(line: 4373, column: 7, scope: !4629)
!4631 = !DILocation(line: 4379, column: 13, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 4378, column: 2)
!4633 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 4377, column: 11)
!4634 = !DILocation(line: 4380, column: 21, scope: !4632)
!4635 = !DILocation(line: 4380, column: 35, scope: !4632)
!4636 = !DILocation(line: 4381, column: 21, scope: !4632)
!4637 = !DILocation(line: 4393, column: 25, scope: !4629)
!4638 = !DILocation(line: 4393, column: 42, scope: !4629)
!4639 = !DILocation(line: 4393, column: 32, scope: !4629)
!4640 = !DILocation(line: 4393, column: 50, scope: !4629)
!4641 = !DILocation(line: 4394, column: 25, scope: !4629)
!4642 = !DILocation(line: 4394, column: 42, scope: !4629)
!4643 = !DILocation(line: 4394, column: 50, scope: !4629)
!4644 = !DILocation(line: 4397, column: 14, scope: !4629)
!4645 = !DILocation(line: 4398, column: 18, scope: !4629)
!4646 = !DILocation(line: 4398, column: 39, scope: !4629)
!4647 = !DILocation(line: 4398, column: 17, scope: !4629)
!4648 = !DILocation(line: 4398, column: 14, scope: !4629)
!4649 = !DILocation(line: 4399, column: 7, scope: !4629)
!4650 = !DILocation(line: 4408, column: 12, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 4405, column: 7)
!4652 = !DILocation(line: 4408, column: 22, scope: !4651)
!4653 = !DILocation(line: 4408, column: 29, scope: !4651)
!4654 = !DILocation(line: 4409, column: 1, scope: !4614)
!4655 = distinct !DISubprogram(name: "decode_vax_g", scope: !3, file: !3, line: 4412, type: !407, scopeLine: 4414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4656)
!4656 = !{!4657, !4658, !4659, !4660, !4661, !4662}
!4657 = !DILocalVariable(name: "fmt", arg: 1, scope: !4655, file: !3, line: 4412, type: !402)
!4658 = !DILocalVariable(name: "r", arg: 2, scope: !4655, file: !3, line: 4413, type: !409)
!4659 = !DILocalVariable(name: "buf", arg: 3, scope: !4655, file: !3, line: 4413, type: !410)
!4660 = !DILocalVariable(name: "image0", scope: !4655, file: !3, line: 4415, type: !20)
!4661 = !DILocalVariable(name: "image1", scope: !4655, file: !3, line: 4415, type: !20)
!4662 = !DILocalVariable(name: "exp", scope: !4655, file: !3, line: 4416, type: !373)
!4663 = !DILocation(line: 0, scope: !4655)
!4664 = !DILocation(line: 4421, column: 14, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 4418, column: 7)
!4666 = !DILocation(line: 4421, column: 31, scope: !4665)
!4667 = !DILocation(line: 4425, column: 17, scope: !4655)
!4668 = !DILocation(line: 4425, column: 9, scope: !4655)
!4669 = !DILocation(line: 4427, column: 11, scope: !4655)
!4670 = !DILocation(line: 4427, column: 3, scope: !4655)
!4671 = !DILocation(line: 4429, column: 11, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 4429, column: 7)
!4673 = !DILocation(line: 4429, column: 7, scope: !4655)
!4674 = !DILocation(line: 4431, column: 10, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 4430, column: 5)
!4676 = !DILocation(line: 4431, column: 13, scope: !4675)
!4677 = !DILocation(line: 4432, column: 15, scope: !4675)
!4678 = !DILocation(line: 4433, column: 7, scope: !4675)
!4679 = !DILocation(line: 4437, column: 32, scope: !4675)
!4680 = !DILocation(line: 4437, column: 50, scope: !4675)
!4681 = !DILocation(line: 4437, column: 39, scope: !4675)
!4682 = !DILocation(line: 4438, column: 35, scope: !4675)
!4683 = !DILocation(line: 4438, column: 53, scope: !4675)
!4684 = !DILocation(line: 4438, column: 42, scope: !4675)
!4685 = !DILocation(line: 4442, column: 21, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 4441, column: 2)
!4687 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 4440, column: 11)
!4688 = !DILocation(line: 4442, column: 33, scope: !4686)
!4689 = !DILocation(line: 4443, column: 11, scope: !4686)
!4690 = !DILocation(line: 4444, column: 11, scope: !4686)
!4691 = !DILocation(line: 4445, column: 4, scope: !4686)
!4692 = !DILocation(line: 4445, column: 20, scope: !4686)
!4693 = !DILocation(line: 4454, column: 5, scope: !4675)
!4694 = !DILocation(line: 4455, column: 1, scope: !4655)
!4695 = distinct !DISubprogram(name: "encode_decimal_single", scope: !3, file: !3, line: 4522, type: !400, scopeLine: 4525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4696)
!4696 = !{!4697, !4698, !4699}
!4697 = !DILocalVariable(name: "fmt", arg: 1, scope: !4695, file: !3, line: 4522, type: !402)
!4698 = !DILocalVariable(name: "buf", arg: 2, scope: !4695, file: !3, line: 4523, type: !403)
!4699 = !DILocalVariable(name: "r", arg: 3, scope: !4695, file: !3, line: 4524, type: !6)
!4700 = !DILocation(line: 0, scope: !4695)
!4701 = !DILocation(line: 4526, column: 3, scope: !4695)
!4702 = !DILocation(line: 4527, column: 1, scope: !4695)
!4703 = distinct !DISubprogram(name: "decode_decimal_single", scope: !3, file: !3, line: 4531, type: !407, scopeLine: 4534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4704)
!4704 = !{!4705, !4706, !4707}
!4705 = !DILocalVariable(name: "fmt", arg: 1, scope: !4703, file: !3, line: 4531, type: !402)
!4706 = !DILocalVariable(name: "r", arg: 2, scope: !4703, file: !3, line: 4532, type: !409)
!4707 = !DILocalVariable(name: "buf", arg: 3, scope: !4703, file: !3, line: 4533, type: !410)
!4708 = !DILocation(line: 0, scope: !4703)
!4709 = !DILocation(line: 4535, column: 3, scope: !4703)
!4710 = !DILocation(line: 4536, column: 1, scope: !4703)
!4711 = distinct !DISubprogram(name: "encode_decimal_double", scope: !3, file: !3, line: 4540, type: !400, scopeLine: 4543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4712)
!4712 = !{!4713, !4714, !4715}
!4713 = !DILocalVariable(name: "fmt", arg: 1, scope: !4711, file: !3, line: 4540, type: !402)
!4714 = !DILocalVariable(name: "buf", arg: 2, scope: !4711, file: !3, line: 4541, type: !403)
!4715 = !DILocalVariable(name: "r", arg: 3, scope: !4711, file: !3, line: 4542, type: !6)
!4716 = !DILocation(line: 0, scope: !4711)
!4717 = !DILocation(line: 4544, column: 3, scope: !4711)
!4718 = !DILocation(line: 4545, column: 1, scope: !4711)
!4719 = distinct !DISubprogram(name: "decode_decimal_double", scope: !3, file: !3, line: 4549, type: !407, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4720)
!4720 = !{!4721, !4722, !4723}
!4721 = !DILocalVariable(name: "fmt", arg: 1, scope: !4719, file: !3, line: 4549, type: !402)
!4722 = !DILocalVariable(name: "r", arg: 2, scope: !4719, file: !3, line: 4550, type: !409)
!4723 = !DILocalVariable(name: "buf", arg: 3, scope: !4719, file: !3, line: 4551, type: !410)
!4724 = !DILocation(line: 0, scope: !4719)
!4725 = !DILocation(line: 4553, column: 3, scope: !4719)
!4726 = !DILocation(line: 4554, column: 1, scope: !4719)
!4727 = distinct !DISubprogram(name: "encode_decimal_quad", scope: !3, file: !3, line: 4558, type: !400, scopeLine: 4561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4728)
!4728 = !{!4729, !4730, !4731}
!4729 = !DILocalVariable(name: "fmt", arg: 1, scope: !4727, file: !3, line: 4558, type: !402)
!4730 = !DILocalVariable(name: "buf", arg: 2, scope: !4727, file: !3, line: 4559, type: !403)
!4731 = !DILocalVariable(name: "r", arg: 3, scope: !4727, file: !3, line: 4560, type: !6)
!4732 = !DILocation(line: 0, scope: !4727)
!4733 = !DILocation(line: 4562, column: 3, scope: !4727)
!4734 = !DILocation(line: 4563, column: 1, scope: !4727)
!4735 = distinct !DISubprogram(name: "decode_decimal_quad", scope: !3, file: !3, line: 4567, type: !407, scopeLine: 4570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4736)
!4736 = !{!4737, !4738, !4739}
!4737 = !DILocalVariable(name: "fmt", arg: 1, scope: !4735, file: !3, line: 4567, type: !402)
!4738 = !DILocalVariable(name: "r", arg: 2, scope: !4735, file: !3, line: 4568, type: !409)
!4739 = !DILocalVariable(name: "buf", arg: 3, scope: !4735, file: !3, line: 4569, type: !410)
!4740 = !DILocation(line: 0, scope: !4735)
!4741 = !DILocation(line: 4571, column: 3, scope: !4735)
!4742 = !DILocation(line: 4572, column: 1, scope: !4735)
!4743 = distinct !DISubprogram(name: "encode_ieee_half", scope: !3, file: !3, line: 4643, type: !400, scopeLine: 4645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4744)
!4744 = !{!4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752}
!4745 = !DILocalVariable(name: "fmt", arg: 1, scope: !4743, file: !3, line: 4643, type: !402)
!4746 = !DILocalVariable(name: "buf", arg: 2, scope: !4743, file: !3, line: 4643, type: !403)
!4747 = !DILocalVariable(name: "r", arg: 3, scope: !4743, file: !3, line: 4644, type: !6)
!4748 = !DILocalVariable(name: "image", scope: !4743, file: !3, line: 4646, type: !20)
!4749 = !DILocalVariable(name: "sig", scope: !4743, file: !3, line: 4646, type: !20)
!4750 = !DILocalVariable(name: "exp", scope: !4743, file: !3, line: 4646, type: !20)
!4751 = !DILocalVariable(name: "sign", scope: !4743, file: !3, line: 4647, type: !20)
!4752 = !DILocalVariable(name: "denormal", scope: !4743, file: !3, line: 4648, type: !372)
!4753 = !DILocation(line: 0, scope: !4743)
!4754 = !DILocation(line: 4647, column: 27, scope: !4743)
!4755 = !DILocation(line: 4650, column: 16, scope: !4743)
!4756 = !DILocation(line: 4651, column: 10, scope: !4743)
!4757 = !DILocation(line: 4651, column: 26, scope: !4743)
!4758 = !DILocation(line: 4651, column: 56, scope: !4743)
!4759 = !DILocation(line: 4653, column: 14, scope: !4743)
!4760 = !DILocation(line: 4653, column: 3, scope: !4743)
!4761 = !DILocation(line: 4659, column: 16, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 4659, column: 11)
!4763 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 4654, column: 5)
!4764 = !DILocation(line: 4659, column: 11, scope: !4762)
!4765 = !DILocation(line: 4659, column: 11, scope: !4763)
!4766 = !DILocation(line: 4666, column: 16, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 4666, column: 11)
!4768 = !DILocation(line: 4666, column: 11, scope: !4767)
!4769 = !DILocation(line: 4666, column: 11, scope: !4763)
!4770 = !DILocation(line: 4668, column: 11, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 4668, column: 8)
!4772 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 4667, column: 2)
!4773 = !DILocation(line: 4668, column: 8, scope: !4771)
!4774 = !DILocation(line: 4668, column: 8, scope: !4772)
!4775 = !DILocation(line: 4669, column: 18, scope: !4771)
!4776 = !DILocation(line: 4669, column: 13, scope: !4771)
!4777 = !DILocation(line: 4669, column: 12, scope: !4771)
!4778 = !DILocation(line: 4669, column: 6, scope: !4771)
!4779 = !DILocation(line: 4670, column: 11, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 4670, column: 8)
!4781 = !DILocation(line: 4670, column: 30, scope: !4780)
!4782 = !DILocation(line: 4670, column: 25, scope: !4780)
!4783 = !DILocation(line: 4670, column: 22, scope: !4780)
!4784 = !DILocation(line: 4670, column: 8, scope: !4772)
!4785 = !DILocation(line: 4674, column: 12, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 4674, column: 8)
!4787 = !DILocation(line: 4674, column: 8, scope: !4772)
!4788 = !DILocation(line: 4678, column: 10, scope: !4772)
!4789 = !DILocation(line: 4679, column: 2, scope: !4772)
!4790 = !DILocation(line: 4681, column: 8, scope: !4767)
!4791 = !DILocation(line: 4688, column: 11, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 4688, column: 11)
!4793 = !DILocation(line: 4688, column: 11, scope: !4763)
!4794 = !DILocation(line: 4691, column: 8, scope: !4792)
!4795 = !DILocation(line: 4691, column: 26, scope: !4792)
!4796 = !DILocation(line: 4692, column: 13, scope: !4763)
!4797 = !DILocation(line: 4693, column: 13, scope: !4763)
!4798 = !DILocation(line: 4694, column: 7, scope: !4763)
!4799 = !DILocation(line: 4700, column: 10, scope: !4743)
!4800 = !DILocation(line: 4701, column: 1, scope: !4743)
!4801 = distinct !DISubprogram(name: "decode_ieee_half", scope: !3, file: !3, line: 4706, type: !407, scopeLine: 4708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4802)
!4802 = !{!4803, !4804, !4805, !4806, !4807, !4808}
!4803 = !DILocalVariable(name: "fmt", arg: 1, scope: !4801, file: !3, line: 4706, type: !402)
!4804 = !DILocalVariable(name: "r", arg: 2, scope: !4801, file: !3, line: 4706, type: !409)
!4805 = !DILocalVariable(name: "buf", arg: 3, scope: !4801, file: !3, line: 4707, type: !410)
!4806 = !DILocalVariable(name: "image", scope: !4801, file: !3, line: 4709, type: !20)
!4807 = !DILocalVariable(name: "sign", scope: !4801, file: !3, line: 4710, type: !372)
!4808 = !DILocalVariable(name: "exp", scope: !4801, file: !3, line: 4711, type: !373)
!4809 = !DILocation(line: 0, scope: !4801)
!4810 = !DILocation(line: 4709, column: 25, scope: !4801)
!4811 = !DILocation(line: 4710, column: 22, scope: !4801)
!4812 = !DILocation(line: 4711, column: 20, scope: !4801)
!4813 = !DILocation(line: 4711, column: 13, scope: !4801)
!4814 = !DILocation(line: 4713, column: 11, scope: !4801)
!4815 = !DILocation(line: 4713, column: 3, scope: !4801)
!4816 = !DILocation(line: 4714, column: 9, scope: !4801)
!4817 = !DILocation(line: 4715, column: 9, scope: !4801)
!4818 = !DILocation(line: 4717, column: 7, scope: !4801)
!4819 = !DILocation(line: 4719, column: 11, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 4719, column: 11)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 4718, column: 5)
!4822 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 4717, column: 7)
!4823 = !DILocation(line: 4719, column: 17, scope: !4820)
!4824 = !DILocation(line: 4719, column: 25, scope: !4820)
!4825 = !DILocation(line: 4719, column: 20, scope: !4820)
!4826 = !DILocation(line: 4719, column: 11, scope: !4821)
!4827 = !DILocation(line: 4721, column: 7, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 4720, column: 2)
!4829 = !DILocation(line: 4721, column: 10, scope: !4828)
!4830 = !DILocation(line: 4722, column: 12, scope: !4828)
!4831 = !DILocation(line: 4723, column: 4, scope: !4828)
!4832 = !DILocation(line: 4724, column: 28, scope: !4828)
!4833 = !DILocation(line: 4724, column: 4, scope: !4828)
!4834 = !DILocation(line: 4724, column: 20, scope: !4828)
!4835 = !DILocation(line: 4725, column: 4, scope: !4828)
!4836 = !DILocation(line: 4726, column: 2, scope: !4828)
!4837 = !DILocation(line: 4727, column: 21, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 4727, column: 16)
!4839 = !DILocation(line: 4727, column: 16, scope: !4838)
!4840 = !DILocation(line: 4727, column: 16, scope: !4820)
!4841 = !DILocation(line: 4728, column: 5, scope: !4838)
!4842 = !DILocation(line: 4728, column: 10, scope: !4838)
!4843 = !DILocation(line: 4728, column: 2, scope: !4838)
!4844 = !DILocation(line: 4730, column: 31, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 4730, column: 12)
!4846 = !DILocation(line: 4730, column: 26, scope: !4845)
!4847 = !DILocation(line: 4730, column: 40, scope: !4845)
!4848 = !DILocation(line: 4730, column: 48, scope: !4845)
!4849 = !DILocation(line: 4730, column: 43, scope: !4845)
!4850 = !DILocation(line: 4730, column: 12, scope: !4822)
!4851 = !DILocation(line: 4732, column: 11, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 4732, column: 11)
!4853 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 4731, column: 5)
!4854 = !DILocation(line: 0, scope: !4852)
!4855 = !DILocation(line: 4732, column: 11, scope: !4853)
!4856 = !DILocation(line: 4735, column: 12, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 4733, column: 2)
!4858 = !DILocation(line: 4736, column: 29, scope: !4857)
!4859 = !DILocation(line: 4737, column: 14, scope: !4857)
!4860 = !DILocation(line: 4737, column: 9, scope: !4857)
!4861 = !DILocation(line: 4737, column: 7, scope: !4857)
!4862 = !DILocation(line: 4736, column: 20, scope: !4857)
!4863 = !DILocation(line: 4736, column: 18, scope: !4857)
!4864 = !DILocation(line: 4738, column: 4, scope: !4857)
!4865 = !DILocation(line: 4738, column: 20, scope: !4857)
!4866 = !DILocation(line: 4739, column: 2, scope: !4857)
!4867 = !DILocation(line: 4743, column: 12, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 4741, column: 2)
!4869 = !DILocation(line: 4748, column: 10, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 4747, column: 5)
!4871 = !DILocation(line: 4748, column: 13, scope: !4870)
!4872 = !DILocation(line: 4749, column: 15, scope: !4870)
!4873 = !DILocation(line: 4750, column: 7, scope: !4870)
!4874 = !DILocation(line: 4751, column: 31, scope: !4870)
!4875 = !DILocation(line: 4751, column: 7, scope: !4870)
!4876 = !DILocation(line: 4751, column: 23, scope: !4870)
!4877 = !DILocation(line: 4753, column: 1, scope: !4801)
!4878 = distinct !DISubprogram(name: "encode_internal", scope: !3, file: !3, line: 4812, type: !400, scopeLine: 4814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4879)
!4879 = !{!4880, !4881, !4882}
!4880 = !DILocalVariable(name: "fmt", arg: 1, scope: !4878, file: !3, line: 4812, type: !402)
!4881 = !DILocalVariable(name: "buf", arg: 2, scope: !4878, file: !3, line: 4812, type: !403)
!4882 = !DILocalVariable(name: "r", arg: 3, scope: !4878, file: !3, line: 4813, type: !6)
!4883 = !DILocation(line: 0, scope: !4878)
!4884 = !DILocation(line: 4815, column: 11, scope: !4878)
!4885 = !DILocation(line: 4815, column: 16, scope: !4878)
!4886 = !DILocation(line: 4815, column: 3, scope: !4878)
!4887 = !DILocation(line: 4816, column: 1, scope: !4878)
!4888 = distinct !DISubprogram(name: "decode_internal", scope: !3, file: !3, line: 4819, type: !407, scopeLine: 4821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4889)
!4889 = !{!4890, !4891, !4892}
!4890 = !DILocalVariable(name: "fmt", arg: 1, scope: !4888, file: !3, line: 4819, type: !402)
!4891 = !DILocalVariable(name: "r", arg: 2, scope: !4888, file: !3, line: 4820, type: !409)
!4892 = !DILocalVariable(name: "buf", arg: 3, scope: !4888, file: !3, line: 4820, type: !410)
!4893 = !DILocation(line: 0, scope: !4888)
!4894 = !DILocation(line: 4822, column: 11, scope: !4888)
!4895 = !DILocation(line: 4822, column: 14, scope: !4888)
!4896 = !DILocation(line: 4822, column: 3, scope: !4888)
!4897 = !DILocation(line: 4823, column: 1, scope: !4888)
!4898 = !DILocation(line: 0, scope: !475)
!4899 = !DILocation(line: 4858, column: 3, scope: !475)
!4900 = !DILocation(line: 4862, column: 7, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !475, file: !3, line: 4862, column: 7)
!4902 = !DILocation(line: 4862, column: 7, scope: !475)
!4903 = !DILocation(line: 4864, column: 12, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 4863, column: 5)
!4905 = !DILocation(line: 4865, column: 7, scope: !4904)
!4906 = !DILocation(line: 4869, column: 7, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !475, file: !3, line: 4869, column: 7)
!4908 = !DILocation(line: 4869, column: 7, scope: !475)
!4909 = !DILocation(line: 4871, column: 7, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 4870, column: 5)
!4911 = !DILocation(line: 4872, column: 7, scope: !4910)
!4912 = !DILocation(line: 4876, column: 8, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !475, file: !3, line: 4876, column: 7)
!4914 = !DILocation(line: 4876, column: 7, scope: !475)
!4915 = !DILocation(line: 4878, column: 12, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 4877, column: 5)
!4917 = !DILocation(line: 4879, column: 7, scope: !4916)
!4918 = !DILocation(line: 4882, column: 8, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !475, file: !3, line: 4882, column: 7)
!4920 = !DILocation(line: 4882, column: 7, scope: !475)
!4921 = !DILocation(line: 4884, column: 7, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 4883, column: 5)
!4923 = !DILocation(line: 4885, column: 12, scope: !4922)
!4924 = !DILocation(line: 4886, column: 5, scope: !4922)
!4925 = !DILocation(line: 4889, column: 9, scope: !475)
!4926 = !DILocation(line: 4890, column: 33, scope: !475)
!4927 = !DILocation(line: 4890, column: 3, scope: !475)
!4928 = !DILocation(line: 4893, column: 8, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !475, file: !3, line: 4893, column: 3)
!4930 = !DILocation(line: 0, scope: !4929)
!4931 = !DILocation(line: 4893, column: 23, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 4893, column: 3)
!4933 = !DILocation(line: 4893, column: 3, scope: !4929)
!4934 = !DILocation(line: 4896, column: 7, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 4894, column: 5)
!4936 = !DILocation(line: 4897, column: 7, scope: !4935)
!4937 = !DILocation(line: 4898, column: 7, scope: !4935)
!4938 = !DILocation(line: 4899, column: 7, scope: !4935)
!4939 = !DILocation(line: 4900, column: 7, scope: !4935)
!4940 = !DILocation(line: 4903, column: 16, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 4903, column: 11)
!4942 = !DILocation(line: 4903, column: 21, scope: !4941)
!4943 = !DILocation(line: 4903, column: 24, scope: !4941)
!4944 = !DILocation(line: 4903, column: 11, scope: !4935)
!4945 = !DILocation(line: 4907, column: 11, scope: !4935)
!4946 = !DILocation(line: 4893, column: 33, scope: !4932)
!4947 = !DILocation(line: 4893, column: 3, scope: !4932)
!4948 = distinct !{!4948, !4933, !4949}
!4949 = !DILocation(line: 4908, column: 5, scope: !4929)
!4950 = !DILocation(line: 4911, column: 3, scope: !475)
!4951 = !DILocation(line: 4912, column: 3, scope: !475)
!4952 = !DILocation(line: 4913, column: 3, scope: !475)
!4953 = !DILocation(line: 4914, column: 3, scope: !475)
!4954 = !DILocation(line: 4915, column: 3, scope: !475)
!4955 = !DILocation(line: 4916, column: 3, scope: !475)
!4956 = !DILocation(line: 4920, column: 3, scope: !475)
!4957 = !DILocation(line: 4921, column: 3, scope: !475)
!4958 = !DILocation(line: 4922, column: 1, scope: !475)
!4959 = distinct !DISubprogram(name: "real_powi", scope: !3, file: !3, line: 4931, type: !4960, scopeLine: 4933, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !4962)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!372, !409, !220, !6, !404}
!4962 = !{!4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972}
!4963 = !DILocalVariable(name: "r", arg: 1, scope: !4959, file: !3, line: 4931, type: !409)
!4964 = !DILocalVariable(name: "mode", arg: 2, scope: !4959, file: !3, line: 4931, type: !220)
!4965 = !DILocalVariable(name: "x", arg: 3, scope: !4959, file: !3, line: 4932, type: !6)
!4966 = !DILocalVariable(name: "n", arg: 4, scope: !4959, file: !3, line: 4932, type: !404)
!4967 = !DILocalVariable(name: "bit", scope: !4959, file: !3, line: 4934, type: !20)
!4968 = !DILocalVariable(name: "t", scope: !4959, file: !3, line: 4935, type: !8)
!4969 = !DILocalVariable(name: "inexact", scope: !4959, file: !3, line: 4936, type: !372)
!4970 = !DILocalVariable(name: "init", scope: !4959, file: !3, line: 4937, type: !372)
!4971 = !DILocalVariable(name: "neg", scope: !4959, file: !3, line: 4938, type: !372)
!4972 = !DILocalVariable(name: "i", scope: !4959, file: !3, line: 4939, type: !373)
!4973 = !DILocation(line: 0, scope: !4959)
!4974 = !DILocation(line: 4935, column: 3, scope: !4959)
!4975 = !DILocation(line: 4941, column: 9, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 4941, column: 7)
!4977 = !DILocation(line: 4941, column: 7, scope: !4959)
!4978 = !DILocation(line: 4943, column: 12, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 4942, column: 5)
!4980 = !DILocation(line: 4944, column: 7, scope: !4979)
!4981 = !DILocation(line: 4946, column: 14, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 4946, column: 12)
!4983 = !DILocation(line: 4946, column: 12, scope: !4976)
!4984 = !DILocation(line: 4955, column: 7, scope: !4959)
!4985 = !DILocation(line: 4957, column: 8, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 4957, column: 3)
!4987 = !DILocation(line: 4937, column: 8, scope: !4959)
!4988 = !DILocation(line: 0, scope: !4986)
!4989 = !DILocation(line: 4957, column: 17, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 4957, column: 3)
!4991 = !DILocation(line: 4957, column: 3, scope: !4986)
!4992 = !DILocation(line: 4959, column: 11, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 4959, column: 11)
!4994 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 4958, column: 5)
!4995 = !DILocation(line: 4959, column: 11, scope: !4994)
!4996 = !DILocation(line: 4961, column: 15, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 4960, column: 2)
!4998 = !DILocation(line: 4961, column: 12, scope: !4997)
!4999 = !DILocation(line: 4962, column: 10, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 4962, column: 8)
!5001 = !DILocation(line: 4962, column: 8, scope: !4997)
!5002 = !DILocation(line: 4963, column: 17, scope: !5000)
!5003 = !DILocation(line: 4963, column: 14, scope: !5000)
!5004 = !DILocation(line: 4963, column: 6, scope: !5000)
!5005 = !DILocation(line: 4965, column: 18, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 4965, column: 16)
!5007 = !DILocation(line: 4965, column: 16, scope: !4993)
!5008 = !DILocation(line: 4967, column: 11, scope: !4994)
!5009 = !DILocation(line: 4957, column: 44, scope: !4990)
!5010 = !DILocation(line: 4957, column: 3, scope: !4990)
!5011 = distinct !{!5011, !4991, !5012}
!5012 = !DILocation(line: 4968, column: 5, scope: !4986)
!5013 = !DILocation(line: 4970, column: 7, scope: !4959)
!5014 = !DILocation(line: 4971, column: 16, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 4970, column: 7)
!5016 = !DILocation(line: 4971, column: 13, scope: !5015)
!5017 = !DILocation(line: 4971, column: 5, scope: !5015)
!5018 = !DILocation(line: 4973, column: 3, scope: !4959)
!5019 = !DILocation(line: 4974, column: 3, scope: !4959)
!5020 = !DILocation(line: 4975, column: 1, scope: !4959)
!5021 = distinct !DISubprogram(name: "real_trunc", scope: !3, file: !3, line: 4981, type: !1757, scopeLine: 4983, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5022)
!5022 = !{!5023, !5024, !5025}
!5023 = !DILocalVariable(name: "r", arg: 1, scope: !5021, file: !3, line: 4981, type: !409)
!5024 = !DILocalVariable(name: "mode", arg: 2, scope: !5021, file: !3, line: 4981, type: !220)
!5025 = !DILocalVariable(name: "x", arg: 3, scope: !5021, file: !3, line: 4982, type: !6)
!5026 = !DILocation(line: 0, scope: !5021)
!5027 = !DILocation(line: 4984, column: 3, scope: !5021)
!5028 = !DILocation(line: 4985, column: 12, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 4985, column: 7)
!5030 = !DILocation(line: 4985, column: 7, scope: !5021)
!5031 = !DILocation(line: 4986, column: 5, scope: !5029)
!5032 = !DILocation(line: 4987, column: 1, scope: !5021)
!5033 = distinct !DISubprogram(name: "real_floor", scope: !3, file: !3, line: 4993, type: !1757, scopeLine: 4995, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5034)
!5034 = !{!5035, !5036, !5037, !5038}
!5035 = !DILocalVariable(name: "r", arg: 1, scope: !5033, file: !3, line: 4993, type: !409)
!5036 = !DILocalVariable(name: "mode", arg: 2, scope: !5033, file: !3, line: 4993, type: !220)
!5037 = !DILocalVariable(name: "x", arg: 3, scope: !5033, file: !3, line: 4994, type: !6)
!5038 = !DILocalVariable(name: "t", scope: !5033, file: !3, line: 4996, type: !8)
!5039 = !DILocation(line: 0, scope: !5033)
!5040 = !DILocation(line: 4996, column: 3, scope: !5033)
!5041 = !DILocation(line: 4998, column: 3, scope: !5033)
!5042 = !DILocation(line: 4999, column: 9, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 4999, column: 7)
!5044 = !DILocation(line: 4999, column: 32, scope: !5043)
!5045 = !DILocation(line: 4999, column: 38, scope: !5043)
!5046 = !DILocation(line: 4999, column: 35, scope: !5043)
!5047 = !DILocation(line: 4999, column: 7, scope: !5033)
!5048 = !DILocation(line: 5000, column: 5, scope: !5043)
!5049 = !DILocation(line: 5001, column: 12, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 5001, column: 7)
!5051 = !DILocation(line: 5001, column: 7, scope: !5033)
!5052 = !DILocation(line: 5002, column: 5, scope: !5050)
!5053 = !DILocation(line: 5004, column: 10, scope: !5050)
!5054 = !DILocation(line: 5005, column: 1, scope: !5033)
!5055 = distinct !DISubprogram(name: "real_ceil", scope: !3, file: !3, line: 5011, type: !1757, scopeLine: 5013, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5056)
!5056 = !{!5057, !5058, !5059, !5060}
!5057 = !DILocalVariable(name: "r", arg: 1, scope: !5055, file: !3, line: 5011, type: !409)
!5058 = !DILocalVariable(name: "mode", arg: 2, scope: !5055, file: !3, line: 5011, type: !220)
!5059 = !DILocalVariable(name: "x", arg: 3, scope: !5055, file: !3, line: 5012, type: !6)
!5060 = !DILocalVariable(name: "t", scope: !5055, file: !3, line: 5014, type: !8)
!5061 = !DILocation(line: 0, scope: !5055)
!5062 = !DILocation(line: 5014, column: 3, scope: !5055)
!5063 = !DILocation(line: 5016, column: 3, scope: !5055)
!5064 = !DILocation(line: 5017, column: 9, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 5017, column: 7)
!5066 = !DILocation(line: 5017, column: 32, scope: !5065)
!5067 = !DILocation(line: 5017, column: 40, scope: !5065)
!5068 = !DILocation(line: 5017, column: 37, scope: !5065)
!5069 = !DILocation(line: 5017, column: 7, scope: !5055)
!5070 = !DILocation(line: 5018, column: 5, scope: !5065)
!5071 = !DILocation(line: 5019, column: 12, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 5019, column: 7)
!5073 = !DILocation(line: 5019, column: 7, scope: !5055)
!5074 = !DILocation(line: 5020, column: 5, scope: !5072)
!5075 = !DILocation(line: 5022, column: 10, scope: !5072)
!5076 = !DILocation(line: 5023, column: 1, scope: !5055)
!5077 = distinct !DISubprogram(name: "real_round", scope: !3, file: !3, line: 5029, type: !1757, scopeLine: 5031, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5078)
!5078 = !{!5079, !5080, !5081}
!5079 = !DILocalVariable(name: "r", arg: 1, scope: !5077, file: !3, line: 5029, type: !409)
!5080 = !DILocalVariable(name: "mode", arg: 2, scope: !5077, file: !3, line: 5029, type: !220)
!5081 = !DILocalVariable(name: "x", arg: 3, scope: !5077, file: !3, line: 5030, type: !6)
!5082 = !DILocation(line: 0, scope: !5077)
!5083 = !DILocation(line: 5032, column: 33, scope: !5077)
!5084 = !DILocation(line: 5032, column: 3, scope: !5077)
!5085 = !DILocation(line: 5033, column: 3, scope: !5077)
!5086 = !DILocation(line: 5034, column: 12, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 5034, column: 7)
!5088 = !DILocation(line: 5034, column: 7, scope: !5077)
!5089 = !DILocation(line: 5035, column: 5, scope: !5087)
!5090 = !DILocation(line: 5036, column: 1, scope: !5077)
!5091 = distinct !DISubprogram(name: "real_copysign", scope: !3, file: !3, line: 5041, type: !1424, scopeLine: 5042, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5092)
!5092 = !{!5093, !5094}
!5093 = !DILocalVariable(name: "r", arg: 1, scope: !5091, file: !3, line: 5041, type: !409)
!5094 = !DILocalVariable(name: "x", arg: 2, scope: !5091, file: !3, line: 5041, type: !6)
!5095 = !DILocation(line: 0, scope: !5091)
!5096 = !DILocation(line: 5043, column: 16, scope: !5091)
!5097 = !DILocation(line: 5043, column: 6, scope: !5091)
!5098 = !DILocation(line: 5043, column: 11, scope: !5091)
!5099 = !DILocation(line: 5044, column: 1, scope: !5091)
!5100 = distinct !DISubprogram(name: "real_isinteger", scope: !3, file: !3, line: 5137, type: !5101, scopeLine: 5138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5103)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!372, !6, !220}
!5103 = !{!5104, !5105, !5106}
!5104 = !DILocalVariable(name: "c", arg: 1, scope: !5100, file: !3, line: 5137, type: !6)
!5105 = !DILocalVariable(name: "mode", arg: 2, scope: !5100, file: !3, line: 5137, type: !220)
!5106 = !DILocalVariable(name: "cint", scope: !5100, file: !3, line: 5139, type: !8)
!5107 = !DILocation(line: 0, scope: !5100)
!5108 = !DILocation(line: 5139, column: 3, scope: !5100)
!5109 = !DILocation(line: 5141, column: 3, scope: !5100)
!5110 = !DILocation(line: 5142, column: 10, scope: !5100)
!5111 = !DILocation(line: 5143, column: 1, scope: !5100)
!5112 = !DILocation(line: 5142, column: 3, scope: !5100)
!5113 = distinct !DISubprogram(name: "get_max_float", scope: !3, file: !3, line: 5151, type: !5114, scopeLine: 5152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5116)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{null, !402, !375, !606}
!5116 = !{!5117, !5118, !5119, !5120, !5121, !5122}
!5117 = !DILocalVariable(name: "fmt", arg: 1, scope: !5113, file: !3, line: 5151, type: !402)
!5118 = !DILocalVariable(name: "buf", arg: 2, scope: !5113, file: !3, line: 5151, type: !375)
!5119 = !DILocalVariable(name: "len", arg: 3, scope: !5113, file: !3, line: 5151, type: !606)
!5120 = !DILocalVariable(name: "i", scope: !5113, file: !3, line: 5153, type: !373)
!5121 = !DILocalVariable(name: "n", scope: !5113, file: !3, line: 5153, type: !373)
!5122 = !DILocalVariable(name: "p", scope: !5113, file: !3, line: 5154, type: !375)
!5123 = !DILocation(line: 0, scope: !5113)
!5124 = !DILocation(line: 5156, column: 3, scope: !5113)
!5125 = !DILocation(line: 5157, column: 12, scope: !5113)
!5126 = !DILocation(line: 5158, column: 23, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 5158, column: 3)
!5128 = !DILocation(line: 5158, column: 8, scope: !5127)
!5129 = !DILocation(line: 0, scope: !5127)
!5130 = !DILocation(line: 5158, column: 30, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 5158, column: 3)
!5132 = !DILocation(line: 5158, column: 34, scope: !5131)
!5133 = !DILocation(line: 5158, column: 3, scope: !5127)
!5134 = !DILocation(line: 5159, column: 7, scope: !5131)
!5135 = !DILocation(line: 5159, column: 10, scope: !5131)
!5136 = !DILocation(line: 5158, column: 41, scope: !5131)
!5137 = !DILocation(line: 5158, column: 3, scope: !5131)
!5138 = distinct !{!5138, !5133, !5139}
!5139 = !DILocation(line: 5159, column: 12, scope: !5127)
!5140 = !DILocation(line: 5160, column: 9, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 5160, column: 7)
!5142 = !DILocation(line: 5160, column: 7, scope: !5113)
!5143 = !DILocation(line: 5161, column: 21, scope: !5141)
!5144 = !DILocation(line: 5161, column: 12, scope: !5141)
!5145 = !DILocation(line: 5161, column: 7, scope: !5141)
!5146 = !DILocation(line: 5161, column: 10, scope: !5141)
!5147 = !DILocation(line: 5161, column: 5, scope: !5141)
!5148 = !DILocation(line: 5162, column: 27, scope: !5113)
!5149 = !DILocation(line: 5162, column: 3, scope: !5113)
!5150 = !DILocation(line: 5163, column: 12, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 5163, column: 7)
!5152 = !DILocation(line: 5163, column: 24, scope: !5151)
!5153 = !DILocation(line: 5163, column: 17, scope: !5151)
!5154 = !DILocation(line: 5163, column: 7, scope: !5113)
!5155 = !DILocation(line: 5171, column: 49, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 5164, column: 5)
!5157 = !DILocation(line: 5171, column: 32, scope: !5156)
!5158 = !DILocation(line: 5171, column: 25, scope: !5156)
!5159 = !DILocation(line: 5171, column: 13, scope: !5156)
!5160 = !DILocation(line: 5171, column: 7, scope: !5156)
!5161 = !DILocation(line: 5171, column: 30, scope: !5156)
!5162 = !DILocation(line: 5172, column: 5, scope: !5156)
!5163 = !DILocation(line: 5174, column: 3, scope: !5113)
!5164 = !DILocation(line: 5175, column: 1, scope: !5113)
!5165 = distinct !DISubprogram(name: "sticky_rshift_significand", scope: !3, file: !3, line: 167, type: !5166, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5168)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!372, !409, !6, !12}
!5168 = !{!5169, !5170, !5171, !5172, !5173, !5174}
!5169 = !DILocalVariable(name: "r", arg: 1, scope: !5165, file: !3, line: 167, type: !409)
!5170 = !DILocalVariable(name: "a", arg: 2, scope: !5165, file: !3, line: 167, type: !6)
!5171 = !DILocalVariable(name: "n", arg: 3, scope: !5165, file: !3, line: 168, type: !12)
!5172 = !DILocalVariable(name: "sticky", scope: !5165, file: !3, line: 170, type: !20)
!5173 = !DILocalVariable(name: "i", scope: !5165, file: !3, line: 171, type: !12)
!5174 = !DILocalVariable(name: "ofs", scope: !5165, file: !3, line: 171, type: !12)
!5175 = !DILocation(line: 0, scope: !5165)
!5176 = !DILocation(line: 173, column: 9, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 173, column: 7)
!5178 = !DILocation(line: 173, column: 7, scope: !5165)
!5179 = !DILocation(line: 175, column: 27, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 175, column: 7)
!5181 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 174, column: 5)
!5182 = !DILocation(line: 175, column: 51, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 175, column: 7)
!5184 = !DILocation(line: 175, column: 12, scope: !5180)
!5185 = !DILocation(line: 175, column: 7, scope: !5180)
!5186 = !DILocation(line: 176, column: 12, scope: !5183)
!5187 = !DILocation(line: 176, column: 9, scope: !5183)
!5188 = !DILocation(line: 175, column: 58, scope: !5183)
!5189 = !DILocation(line: 175, column: 7, scope: !5183)
!5190 = distinct !{!5190, !5185, !5191}
!5191 = !DILocation(line: 176, column: 20, scope: !5180)
!5192 = !DILocation(line: 177, column: 9, scope: !5181)
!5193 = !DILocation(line: 178, column: 5, scope: !5181)
!5194 = !DILocation(line: 170, column: 17, scope: !5165)
!5195 = !DILocation(line: 180, column: 9, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 180, column: 7)
!5197 = !DILocation(line: 180, column: 7, scope: !5165)
!5198 = !DILocation(line: 193, column: 7, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 193, column: 7)
!5200 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 192, column: 5)
!5201 = !DILocation(line: 182, column: 17, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 181, column: 5)
!5203 = !DILocation(line: 182, column: 50, scope: !5202)
!5204 = !DILocation(line: 182, column: 56, scope: !5202)
!5205 = !DILocation(line: 0, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 184, column: 2)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 183, column: 7)
!5208 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 183, column: 7)
!5209 = !DILocation(line: 183, column: 12, scope: !5208)
!5210 = !DILocation(line: 0, scope: !5208)
!5211 = !DILocation(line: 183, column: 21, scope: !5207)
!5212 = !DILocation(line: 183, column: 7, scope: !5208)
!5213 = !DILocation(line: 186, column: 15, scope: !5206)
!5214 = !DILocation(line: 186, column: 19, scope: !5206)
!5215 = !DILocation(line: 186, column: 11, scope: !5206)
!5216 = !DILocation(line: 186, column: 34, scope: !5206)
!5217 = !DILocation(line: 186, column: 51, scope: !5206)
!5218 = !DILocation(line: 187, column: 25, scope: !5206)
!5219 = !DILocation(line: 187, column: 13, scope: !5206)
!5220 = !DILocation(line: 187, column: 21, scope: !5206)
!5221 = !DILocation(line: 187, column: 40, scope: !5206)
!5222 = !DILocation(line: 188, column: 5, scope: !5206)
!5223 = !DILocation(line: 187, column: 9, scope: !5206)
!5224 = !DILocation(line: 185, column: 4, scope: !5206)
!5225 = !DILocation(line: 186, column: 6, scope: !5206)
!5226 = !DILocation(line: 183, column: 30, scope: !5207)
!5227 = !DILocation(line: 183, column: 7, scope: !5207)
!5228 = distinct !{!5228, !5212, !5229}
!5229 = !DILocation(line: 189, column: 2, scope: !5208)
!5230 = !DILocation(line: 0, scope: !5199)
!5231 = !DILocation(line: 193, column: 23, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 193, column: 7)
!5233 = !DILocation(line: 193, column: 27, scope: !5232)
!5234 = !DILocation(line: 195, column: 7, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 195, column: 7)
!5236 = !DILocation(line: 194, column: 14, scope: !5232)
!5237 = !DILocation(line: 194, column: 2, scope: !5232)
!5238 = !DILocation(line: 194, column: 12, scope: !5232)
!5239 = !DILocation(line: 193, column: 36, scope: !5232)
!5240 = !DILocation(line: 193, column: 7, scope: !5232)
!5241 = distinct !{!5241, !5198, !5242}
!5242 = !DILocation(line: 194, column: 28, scope: !5199)
!5243 = !DILocation(line: 0, scope: !5200)
!5244 = !DILocation(line: 195, column: 16, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 195, column: 7)
!5246 = !DILocation(line: 196, column: 2, scope: !5245)
!5247 = !DILocation(line: 196, column: 12, scope: !5245)
!5248 = !DILocation(line: 195, column: 25, scope: !5245)
!5249 = !DILocation(line: 195, column: 7, scope: !5245)
!5250 = distinct !{!5250, !5234, !5251}
!5251 = !DILocation(line: 196, column: 14, scope: !5235)
!5252 = !DILocation(line: 199, column: 17, scope: !5165)
!5253 = !DILocation(line: 182, column: 29, scope: !5202)
!5254 = !DILocation(line: 182, column: 14, scope: !5202)
!5255 = !DILocation(line: 199, column: 10, scope: !5165)
!5256 = !DILocation(line: 199, column: 3, scope: !5165)
!5257 = distinct !DISubprogram(name: "sub_significands", scope: !3, file: !3, line: 304, type: !1057, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5258)
!5258 = !{!5259, !5260, !5261, !5262, !5263, !5264, !5268}
!5259 = !DILocalVariable(name: "r", arg: 1, scope: !5257, file: !3, line: 304, type: !409)
!5260 = !DILocalVariable(name: "a", arg: 2, scope: !5257, file: !3, line: 304, type: !6)
!5261 = !DILocalVariable(name: "b", arg: 3, scope: !5257, file: !3, line: 305, type: !6)
!5262 = !DILocalVariable(name: "carry", arg: 4, scope: !5257, file: !3, line: 305, type: !373)
!5263 = !DILocalVariable(name: "i", scope: !5257, file: !3, line: 307, type: !373)
!5264 = !DILocalVariable(name: "ai", scope: !5265, file: !3, line: 311, type: !20)
!5265 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 310, column: 5)
!5266 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 309, column: 3)
!5267 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 309, column: 3)
!5268 = !DILocalVariable(name: "ri", scope: !5265, file: !3, line: 312, type: !20)
!5269 = !DILocation(line: 0, scope: !5257)
!5270 = !DILocation(line: 309, column: 8, scope: !5267)
!5271 = !DILocation(line: 309, column: 17, scope: !5266)
!5272 = !DILocation(line: 309, column: 3, scope: !5267)
!5273 = !DILocation(line: 311, column: 26, scope: !5265)
!5274 = !DILocation(line: 0, scope: !5265)
!5275 = !DILocation(line: 312, column: 31, scope: !5265)
!5276 = !DILocation(line: 312, column: 29, scope: !5265)
!5277 = !DILocation(line: 314, column: 11, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 314, column: 11)
!5279 = !DILocation(line: 0, scope: !5278)
!5280 = !DILocation(line: 314, column: 11, scope: !5265)
!5281 = !DILocation(line: 317, column: 14, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 315, column: 2)
!5283 = !DILocation(line: 317, column: 19, scope: !5282)
!5284 = !DILocation(line: 317, column: 10, scope: !5282)
!5285 = !DILocation(line: 318, column: 2, scope: !5282)
!5286 = !DILocation(line: 322, column: 7, scope: !5265)
!5287 = !DILocation(line: 322, column: 17, scope: !5265)
!5288 = !DILocation(line: 309, column: 26, scope: !5266)
!5289 = !DILocation(line: 309, column: 3, scope: !5266)
!5290 = distinct !{!5290, !5272, !5291}
!5291 = !DILocation(line: 323, column: 5, scope: !5267)
!5292 = !DILocation(line: 325, column: 10, scope: !5257)
!5293 = !DILocation(line: 325, column: 3, scope: !5257)
!5294 = distinct !DISubprogram(name: "neg_significand", scope: !3, file: !3, line: 331, type: !1424, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5295)
!5295 = !{!5296, !5297, !5298, !5299, !5300, !5304}
!5296 = !DILocalVariable(name: "r", arg: 1, scope: !5294, file: !3, line: 331, type: !409)
!5297 = !DILocalVariable(name: "a", arg: 2, scope: !5294, file: !3, line: 331, type: !6)
!5298 = !DILocalVariable(name: "carry", scope: !5294, file: !3, line: 333, type: !372)
!5299 = !DILocalVariable(name: "i", scope: !5294, file: !3, line: 334, type: !373)
!5300 = !DILocalVariable(name: "ri", scope: !5301, file: !3, line: 338, type: !20)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 337, column: 5)
!5302 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 336, column: 3)
!5303 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 336, column: 3)
!5304 = !DILocalVariable(name: "ai", scope: !5301, file: !3, line: 338, type: !20)
!5305 = !DILocation(line: 0, scope: !5294)
!5306 = !DILocation(line: 336, column: 8, scope: !5303)
!5307 = !DILocation(line: 336, column: 17, scope: !5302)
!5308 = !DILocation(line: 336, column: 3, scope: !5303)
!5309 = !DILocation(line: 338, column: 30, scope: !5301)
!5310 = !DILocation(line: 0, scope: !5301)
!5311 = !DILocation(line: 340, column: 11, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 340, column: 11)
!5313 = !DILocation(line: 340, column: 11, scope: !5301)
!5314 = !DILocation(line: 342, column: 8, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 342, column: 8)
!5316 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 341, column: 2)
!5317 = !DILocation(line: 342, column: 8, scope: !5316)
!5318 = !DILocation(line: 351, column: 7, scope: !5312)
!5319 = !DILocation(line: 0, scope: !5312)
!5320 = !DILocation(line: 353, column: 7, scope: !5301)
!5321 = !DILocation(line: 353, column: 17, scope: !5301)
!5322 = !DILocation(line: 336, column: 26, scope: !5302)
!5323 = !DILocation(line: 336, column: 3, scope: !5302)
!5324 = distinct !{!5324, !5308, !5325}
!5325 = !DILocation(line: 354, column: 5, scope: !5303)
!5326 = !DILocation(line: 355, column: 1, scope: !5294)
!5327 = distinct !DISubprogram(name: "div_significands", scope: !3, file: !3, line: 439, type: !1165, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5328)
!5328 = !{!5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337}
!5329 = !DILocalVariable(name: "r", arg: 1, scope: !5327, file: !3, line: 439, type: !409)
!5330 = !DILocalVariable(name: "a", arg: 2, scope: !5327, file: !3, line: 439, type: !6)
!5331 = !DILocalVariable(name: "b", arg: 3, scope: !5327, file: !3, line: 440, type: !6)
!5332 = !DILocalVariable(name: "u", scope: !5327, file: !3, line: 442, type: !8)
!5333 = !DILocalVariable(name: "i", scope: !5327, file: !3, line: 443, type: !373)
!5334 = !DILocalVariable(name: "bit", scope: !5327, file: !3, line: 443, type: !373)
!5335 = !DILocalVariable(name: "msb", scope: !5327, file: !3, line: 444, type: !20)
!5336 = !DILocalVariable(name: "inexact", scope: !5327, file: !3, line: 444, type: !20)
!5337 = !DILabel(scope: !5338, name: "start", file: !3, line: 455)
!5338 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 452, column: 5)
!5339 = !DILocation(line: 0, scope: !5327)
!5340 = !DILocation(line: 442, column: 3, scope: !5327)
!5341 = !DILocation(line: 446, column: 7, scope: !5327)
!5342 = !DILocation(line: 447, column: 11, scope: !5327)
!5343 = !DILocation(line: 447, column: 3, scope: !5327)
!5344 = !DILocation(line: 0, scope: !5338)
!5345 = !DILocation(line: 450, column: 3, scope: !5327)
!5346 = !DILocation(line: 462, column: 10, scope: !5327)
!5347 = !DILocation(line: 453, column: 13, scope: !5338)
!5348 = !DILocation(line: 453, column: 28, scope: !5338)
!5349 = !DILocation(line: 454, column: 7, scope: !5338)
!5350 = !DILocation(line: 455, column: 5, scope: !5338)
!5351 = !DILocation(line: 456, column: 11, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 456, column: 11)
!5353 = !DILocation(line: 456, column: 15, scope: !5352)
!5354 = !DILocation(line: 456, column: 18, scope: !5352)
!5355 = !DILocation(line: 456, column: 43, scope: !5352)
!5356 = !DILocation(line: 456, column: 11, scope: !5338)
!5357 = !DILocation(line: 458, column: 4, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 457, column: 2)
!5359 = !DILocation(line: 459, column: 4, scope: !5358)
!5360 = !DILocation(line: 460, column: 2, scope: !5358)
!5361 = !DILocation(line: 462, column: 16, scope: !5327)
!5362 = !DILocation(line: 461, column: 5, scope: !5338)
!5363 = distinct !{!5363, !5364, !5365}
!5364 = !DILocation(line: 451, column: 3, scope: !5327)
!5365 = !DILocation(line: 462, column: 20, scope: !5327)
!5366 = !DILocation(line: 464, column: 3, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 464, column: 3)
!5368 = !DILocation(line: 0, scope: !5367)
!5369 = !DILocation(line: 464, column: 30, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 464, column: 3)
!5371 = !DILocation(line: 465, column: 16, scope: !5370)
!5372 = !DILocation(line: 465, column: 13, scope: !5370)
!5373 = !DILocation(line: 464, column: 40, scope: !5370)
!5374 = !DILocation(line: 464, column: 3, scope: !5370)
!5375 = distinct !{!5375, !5366, !5376}
!5376 = !DILocation(line: 465, column: 23, scope: !5367)
!5377 = !DILocation(line: 467, column: 18, scope: !5327)
!5378 = !DILocation(line: 467, column: 10, scope: !5327)
!5379 = !DILocation(line: 468, column: 1, scope: !5327)
!5380 = !DILocation(line: 467, column: 3, scope: !5327)
!5381 = distinct !DISubprogram(name: "set_significand_bit", scope: !3, file: !3, line: 395, type: !3449, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5382)
!5382 = !{!5383, !5384}
!5383 = !DILocalVariable(name: "r", arg: 1, scope: !5381, file: !3, line: 395, type: !409)
!5384 = !DILocalVariable(name: "n", arg: 2, scope: !5381, file: !3, line: 395, type: !12)
!5385 = !DILocation(line: 0, scope: !5381)
!5386 = !DILocation(line: 398, column: 31, scope: !5381)
!5387 = !DILocation(line: 398, column: 25, scope: !5381)
!5388 = !DILocation(line: 397, column: 12, scope: !5381)
!5389 = !DILocation(line: 397, column: 3, scope: !5381)
!5390 = !DILocation(line: 398, column: 5, scope: !5381)
!5391 = !DILocation(line: 399, column: 1, scope: !5381)
!5392 = distinct !DISubprogram(name: "decimal_integer_string", scope: !3, file: !3, line: 2193, type: !5393, scopeLine: 2195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5395)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{null, !375, !6, !606}
!5395 = !{!5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405}
!5396 = !DILocalVariable(name: "str", arg: 1, scope: !5392, file: !3, line: 2193, type: !375)
!5397 = !DILocalVariable(name: "r_orig", arg: 2, scope: !5392, file: !3, line: 2193, type: !6)
!5398 = !DILocalVariable(name: "buf_size", arg: 3, scope: !5392, file: !3, line: 2194, type: !606)
!5399 = !DILocalVariable(name: "dec_exp", scope: !5392, file: !3, line: 2196, type: !373)
!5400 = !DILocalVariable(name: "digit", scope: !5392, file: !3, line: 2196, type: !373)
!5401 = !DILocalVariable(name: "digits", scope: !5392, file: !3, line: 2196, type: !373)
!5402 = !DILocalVariable(name: "r", scope: !5392, file: !3, line: 2197, type: !8)
!5403 = !DILocalVariable(name: "pten", scope: !5392, file: !3, line: 2197, type: !8)
!5404 = !DILocalVariable(name: "p", scope: !5392, file: !3, line: 2198, type: !375)
!5405 = !DILocalVariable(name: "sign", scope: !5392, file: !3, line: 2199, type: !372)
!5406 = !DILocation(line: 0, scope: !5392)
!5407 = !DILocation(line: 2197, column: 3, scope: !5392)
!5408 = !DILocation(line: 2201, column: 7, scope: !5392)
!5409 = !DILocation(line: 2203, column: 9, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 2203, column: 7)
!5411 = !DILocation(line: 2203, column: 12, scope: !5410)
!5412 = !DILocation(line: 2203, column: 7, scope: !5392)
!5413 = !DILocation(line: 2205, column: 7, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 2204, column: 5)
!5415 = !DILocation(line: 2206, column: 7, scope: !5414)
!5416 = !DILocation(line: 2210, column: 10, scope: !5392)
!5417 = !DILocation(line: 2212, column: 13, scope: !5392)
!5418 = !DILocation(line: 2212, column: 27, scope: !5392)
!5419 = !DILocation(line: 2213, column: 20, scope: !5392)
!5420 = !DILocation(line: 2214, column: 3, scope: !5392)
!5421 = !DILocation(line: 2216, column: 11, scope: !5392)
!5422 = !DILocation(line: 2216, column: 10, scope: !5392)
!5423 = !DILocation(line: 2217, column: 3, scope: !5392)
!5424 = !DILocation(line: 2220, column: 7, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 2220, column: 7)
!5426 = !DILocation(line: 2220, column: 7, scope: !5392)
!5427 = !DILocation(line: 2221, column: 7, scope: !5425)
!5428 = !DILocation(line: 2221, column: 10, scope: !5425)
!5429 = !DILocation(line: 2221, column: 5, scope: !5425)
!5430 = !DILocation(line: 2223, column: 11, scope: !5392)
!5431 = !DILocation(line: 2224, column: 3, scope: !5392)
!5432 = !DILocation(line: 2225, column: 10, scope: !5392)
!5433 = !DILocation(line: 2225, column: 8, scope: !5392)
!5434 = !DILocation(line: 2226, column: 3, scope: !5392)
!5435 = !DILocation(line: 2226, column: 10, scope: !5392)
!5436 = !DILocation(line: 2226, column: 19, scope: !5392)
!5437 = !DILocation(line: 2228, column: 7, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 2227, column: 5)
!5439 = !DILocation(line: 2229, column: 15, scope: !5438)
!5440 = !DILocation(line: 2230, column: 20, scope: !5438)
!5441 = !DILocation(line: 2230, column: 12, scope: !5438)
!5442 = distinct !{!5442, !5434, !5443}
!5443 = !DILocation(line: 2231, column: 5, scope: !5392)
!5444 = !DILocation(line: 2232, column: 5, scope: !5392)
!5445 = !DILocation(line: 2232, column: 8, scope: !5392)
!5446 = !DILocation(line: 2233, column: 8, scope: !5392)
!5447 = !DILocation(line: 2234, column: 1, scope: !5392)
!5448 = distinct !DISubprogram(name: "test_significand_bit", scope: !3, file: !3, line: 413, type: !5449, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5451)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!372, !409, !12}
!5451 = !{!5452, !5453, !5454}
!5452 = !DILocalVariable(name: "r", arg: 1, scope: !5448, file: !3, line: 413, type: !409)
!5453 = !DILocalVariable(name: "n", arg: 2, scope: !5448, file: !3, line: 413, type: !12)
!5454 = !DILocalVariable(name: "t", scope: !5448, file: !3, line: 418, type: !373)
!5455 = !DILocation(line: 0, scope: !5448)
!5456 = !DILocation(line: 418, column: 21, scope: !5448)
!5457 = !DILocation(line: 418, column: 12, scope: !5448)
!5458 = !DILocation(line: 418, column: 49, scope: !5448)
!5459 = !DILocation(line: 418, column: 43, scope: !5448)
!5460 = !DILocation(line: 418, column: 11, scope: !5448)
!5461 = !DILocation(line: 419, column: 3, scope: !5448)
!5462 = distinct !DISubprogram(name: "encode_ieee_extended", scope: !3, file: !3, line: 3390, type: !400, scopeLine: 3392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5463)
!5463 = !{!5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471}
!5464 = !DILocalVariable(name: "fmt", arg: 1, scope: !5462, file: !3, line: 3390, type: !402)
!5465 = !DILocalVariable(name: "buf", arg: 2, scope: !5462, file: !3, line: 3390, type: !403)
!5466 = !DILocalVariable(name: "r", arg: 3, scope: !5462, file: !3, line: 3391, type: !6)
!5467 = !DILocalVariable(name: "image_hi", scope: !5462, file: !3, line: 3393, type: !20)
!5468 = !DILocalVariable(name: "sig_hi", scope: !5462, file: !3, line: 3393, type: !20)
!5469 = !DILocalVariable(name: "sig_lo", scope: !5462, file: !3, line: 3393, type: !20)
!5470 = !DILocalVariable(name: "denormal", scope: !5462, file: !3, line: 3394, type: !372)
!5471 = !DILocalVariable(name: "exp", scope: !5472, file: !3, line: 3465, type: !373)
!5472 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 3464, column: 7)
!5473 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 3400, column: 5)
!5474 = !DILocation(line: 0, scope: !5462)
!5475 = !DILocation(line: 3396, column: 17, scope: !5462)
!5476 = !DILocation(line: 3396, column: 22, scope: !5462)
!5477 = !DILocation(line: 3396, column: 14, scope: !5462)
!5478 = !DILocation(line: 3399, column: 14, scope: !5462)
!5479 = !DILocation(line: 3399, column: 3, scope: !5462)
!5480 = !DILocation(line: 3405, column: 16, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 3405, column: 11)
!5482 = !DILocation(line: 3405, column: 11, scope: !5481)
!5483 = !DILocation(line: 0, scope: !5481)
!5484 = !DILocation(line: 3419, column: 7, scope: !5473)
!5485 = !DILocation(line: 3422, column: 16, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 3422, column: 11)
!5487 = !DILocation(line: 3422, column: 11, scope: !5486)
!5488 = !DILocation(line: 0, scope: !5486)
!5489 = !DILocation(line: 3422, column: 11, scope: !5473)
!5490 = !DILocation(line: 3425, column: 11, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 3425, column: 8)
!5492 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 3423, column: 2)
!5493 = !DILocation(line: 3425, column: 8, scope: !5491)
!5494 = !DILocation(line: 3425, column: 8, scope: !5492)
!5495 = !DILocation(line: 3427, column: 17, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 3427, column: 12)
!5497 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 3426, column: 6)
!5498 = !DILocation(line: 3427, column: 12, scope: !5496)
!5499 = !DILocation(line: 3427, column: 12, scope: !5497)
!5500 = !DILocation(line: 3432, column: 6, scope: !5497)
!5501 = !DILocation(line: 3440, column: 17, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 3439, column: 6)
!5503 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 3433, column: 13)
!5504 = !DILocation(line: 3441, column: 24, scope: !5502)
!5505 = !DILocation(line: 3442, column: 15, scope: !5502)
!5506 = !DILocation(line: 0, scope: !5491)
!5507 = !DILocation(line: 3444, column: 11, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 3444, column: 8)
!5509 = !DILocation(line: 3444, column: 30, scope: !5508)
!5510 = !DILocation(line: 3444, column: 25, scope: !5508)
!5511 = !DILocation(line: 3444, column: 22, scope: !5508)
!5512 = !DILocation(line: 3444, column: 8, scope: !5492)
!5513 = !DILocation(line: 3448, column: 16, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 3448, column: 8)
!5515 = !DILocation(line: 3448, column: 35, scope: !5514)
!5516 = !DILocation(line: 3454, column: 11, scope: !5492)
!5517 = !DILocation(line: 3455, column: 2, scope: !5492)
!5518 = !DILocation(line: 3394, column: 20, scope: !5462)
!5519 = !DILocation(line: 0, scope: !5472)
!5520 = !DILocation(line: 3476, column: 6, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 3476, column: 6)
!5522 = !DILocation(line: 3476, column: 6, scope: !5472)
!5523 = !DILocation(line: 3465, column: 12, scope: !5472)
!5524 = !DILocation(line: 3480, column: 10, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 3479, column: 4)
!5526 = !DILocation(line: 3481, column: 6, scope: !5525)
!5527 = !DILocation(line: 3492, column: 15, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 3491, column: 4)
!5529 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 3485, column: 6)
!5530 = !DILocation(line: 0, scope: !5521)
!5531 = !DILocation(line: 3483, column: 14, scope: !5472)
!5532 = !DILocation(line: 3483, column: 11, scope: !5472)
!5533 = !DILocation(line: 3493, column: 22, scope: !5528)
!5534 = !DILocation(line: 3494, column: 13, scope: !5528)
!5535 = !DILocation(line: 3497, column: 7, scope: !5473)
!5536 = !DILocation(line: 3503, column: 10, scope: !5462)
!5537 = !DILocation(line: 3503, column: 20, scope: !5462)
!5538 = !DILocation(line: 3503, column: 27, scope: !5462)
!5539 = !DILocation(line: 3503, column: 37, scope: !5462)
!5540 = !DILocation(line: 3503, column: 44, scope: !5462)
!5541 = !DILocation(line: 3504, column: 1, scope: !5462)
!5542 = distinct !DISubprogram(name: "decode_ieee_extended", scope: !3, file: !3, line: 3563, type: !407, scopeLine: 3565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !5543)
!5543 = !{!5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551}
!5544 = !DILocalVariable(name: "fmt", arg: 1, scope: !5542, file: !3, line: 3563, type: !402)
!5545 = !DILocalVariable(name: "r", arg: 2, scope: !5542, file: !3, line: 3563, type: !409)
!5546 = !DILocalVariable(name: "buf", arg: 3, scope: !5542, file: !3, line: 3564, type: !410)
!5547 = !DILocalVariable(name: "image_hi", scope: !5542, file: !3, line: 3566, type: !20)
!5548 = !DILocalVariable(name: "sig_hi", scope: !5542, file: !3, line: 3566, type: !20)
!5549 = !DILocalVariable(name: "sig_lo", scope: !5542, file: !3, line: 3566, type: !20)
!5550 = !DILocalVariable(name: "sign", scope: !5542, file: !3, line: 3567, type: !372)
!5551 = !DILocalVariable(name: "exp", scope: !5542, file: !3, line: 3568, type: !373)
!5552 = !DILocation(line: 0, scope: !5542)
!5553 = !DILocation(line: 3570, column: 12, scope: !5542)
!5554 = !DILocation(line: 3570, column: 29, scope: !5542)
!5555 = !DILocation(line: 3570, column: 48, scope: !5542)
!5556 = !DILocation(line: 3571, column: 10, scope: !5542)
!5557 = !DILocation(line: 3575, column: 20, scope: !5542)
!5558 = !DILocation(line: 3576, column: 9, scope: !5542)
!5559 = !DILocation(line: 3578, column: 11, scope: !5542)
!5560 = !DILocation(line: 3578, column: 3, scope: !5542)
!5561 = !DILocation(line: 3580, column: 7, scope: !5542)
!5562 = !DILocation(line: 3582, column: 19, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 3582, column: 11)
!5564 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 3581, column: 5)
!5565 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 3580, column: 7)
!5566 = !DILocation(line: 3582, column: 38, scope: !5563)
!5567 = !DILocation(line: 3582, column: 33, scope: !5563)
!5568 = !DILocation(line: 3582, column: 11, scope: !5564)
!5569 = !DILocation(line: 3584, column: 7, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 3583, column: 2)
!5571 = !DILocation(line: 3584, column: 10, scope: !5570)
!5572 = !DILocation(line: 3585, column: 12, scope: !5570)
!5573 = !DILocation(line: 3592, column: 4, scope: !5570)
!5574 = !DILocation(line: 3599, column: 38, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 3593, column: 8)
!5576 = !DILocation(line: 3599, column: 44, scope: !5575)
!5577 = !DILocation(line: 3599, column: 6, scope: !5575)
!5578 = !DILocation(line: 3599, column: 22, scope: !5575)
!5579 = !DILocation(line: 3601, column: 4, scope: !5570)
!5580 = !DILocation(line: 3602, column: 2, scope: !5570)
!5581 = !DILocation(line: 3603, column: 21, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 3603, column: 16)
!5583 = !DILocation(line: 3603, column: 16, scope: !5582)
!5584 = !DILocation(line: 3603, column: 16, scope: !5563)
!5585 = !DILocation(line: 3604, column: 5, scope: !5582)
!5586 = !DILocation(line: 3604, column: 10, scope: !5582)
!5587 = !DILocation(line: 3604, column: 2, scope: !5582)
!5588 = !DILocation(line: 3606, column: 34, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 3606, column: 12)
!5590 = !DILocation(line: 3606, column: 29, scope: !5589)
!5591 = !DILocation(line: 3606, column: 43, scope: !5589)
!5592 = !DILocation(line: 3606, column: 51, scope: !5589)
!5593 = !DILocation(line: 3606, column: 46, scope: !5589)
!5594 = !DILocation(line: 3606, column: 12, scope: !5565)
!5595 = !DILocation(line: 3611, column: 14, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 3607, column: 5)
!5597 = !DILocation(line: 3613, column: 18, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 3613, column: 11)
!5599 = !DILocation(line: 0, scope: !5598)
!5600 = !DILocation(line: 3616, column: 12, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 3614, column: 2)
!5602 = !DILocation(line: 3617, column: 29, scope: !5601)
!5603 = !DILocation(line: 3617, column: 48, scope: !5601)
!5604 = !DILocation(line: 3617, column: 43, scope: !5601)
!5605 = !DILocation(line: 3617, column: 41, scope: !5601)
!5606 = !DILocation(line: 3617, column: 20, scope: !5601)
!5607 = !DILocation(line: 3617, column: 18, scope: !5601)
!5608 = !DILocation(line: 3624, column: 32, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 3618, column: 8)
!5610 = !DILocation(line: 3624, column: 44, scope: !5609)
!5611 = !DILocation(line: 3624, column: 6, scope: !5609)
!5612 = !DILocation(line: 3624, column: 22, scope: !5609)
!5613 = !DILocation(line: 3625, column: 2, scope: !5601)
!5614 = !DILocation(line: 3629, column: 12, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 3627, column: 2)
!5616 = !DILocation(line: 3634, column: 10, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 3633, column: 5)
!5618 = !DILocation(line: 3634, column: 13, scope: !5617)
!5619 = !DILocation(line: 3635, column: 15, scope: !5617)
!5620 = !DILocation(line: 3636, column: 7, scope: !5617)
!5621 = !DILocation(line: 3643, column: 28, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 3637, column: 11)
!5623 = !DILocation(line: 3643, column: 40, scope: !5622)
!5624 = !DILocation(line: 3643, column: 2, scope: !5622)
!5625 = !DILocation(line: 3643, column: 18, scope: !5622)
!5626 = !DILocation(line: 3645, column: 1, scope: !5542)
