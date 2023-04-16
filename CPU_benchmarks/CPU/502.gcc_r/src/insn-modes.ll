; ModuleID = 'insn-modes.bc'
source_filename = "insn-modes.c"
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
@.str = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"BLK\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CCGC\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"CCGOC\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"CCNO\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"CCA\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"CCC\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"CCO\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"CCS\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"CCZ\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"CCFP\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"CCFPU\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"BI\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"QI\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"HI\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"TI\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"QQ\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"HQ\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"SQ\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"DQ\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"TQ\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"UQQ\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"UHQ\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"USQ\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"UDQ\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"UTQ\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"HA\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"UHA\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"USA\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"UDA\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"UTA\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"SF\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"DF\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"XF\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"TF\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"SD\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"DD\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"TD\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"CQI\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"CHI\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"CSI\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"CDI\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"CTI\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"COI\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"SC\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"XC\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"TC\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"V2QI\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"V4QI\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"V2HI\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"V1SI\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"V8QI\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"V4HI\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"V2SI\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"V1DI\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"V16QI\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"V8HI\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"V4SI\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"V2DI\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"V1TI\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"V32QI\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"V16HI\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"V8SI\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"V4DI\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"V2TI\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"V64QI\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"V32HI\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"V16SI\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"V8DI\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"V4TI\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"V2SF\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"V4SF\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"V2DF\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"V8SF\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"V4DF\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"V2TF\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"V16SF\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"V8DF\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"V4TF\00", align 1
@mode_name = dso_local local_unnamed_addr constant [87 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0)], align 16, !dbg !0
@mode_class = dso_local local_unnamed_addr constant [87 x i8] c"\00\00\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\04\04\04\04\04\05\05\05\05\05\06\06\06\06\07\07\07\07\08\08\08\08\09\09\09\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\11\11\11\11\11\11\11\11\11", align 16, !dbg !39
@mode_precision = dso_local local_unnamed_addr constant [87 x i16] [i16 0, i16 0, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 1, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 8, i16 16, i16 32, i16 64, i16 128, i16 8, i16 16, i16 32, i16 64, i16 128, i16 16, i16 32, i16 64, i16 128, i16 16, i16 32, i16 64, i16 128, i16 32, i16 64, i16 80, i16 128, i16 32, i16 64, i16 128, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 64, i16 128, i16 160, i16 256, i16 16, i16 32, i16 32, i16 32, i16 64, i16 64, i16 64, i16 64, i16 128, i16 128, i16 128, i16 128, i16 128, i16 256, i16 256, i16 256, i16 256, i16 256, i16 512, i16 512, i16 512, i16 512, i16 512, i16 64, i16 128, i16 128, i16 256, i16 256, i16 256, i16 512, i16 512, i16 512], align 16, !dbg !45
@mode_size = dso_local local_unnamed_addr global [87 x i8] c"\00\00\04\04\04\04\04\04\04\04\04\04\04\01\01\02\04\08\10 \01\02\04\08\10\01\02\04\08\10\02\04\08\10\02\04\08\10\04\08\0C\10\04\08\10\02\04\08\10 @\08\10\18 \02\04\04\04\08\08\08\08\10\10\10\10\10     @@@@@\08\10\10   @@@", align 16, !dbg !50
@mode_nunits = dso_local local_unnamed_addr constant [87 x i8] c"\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\04\02\01\08\04\02\01\10\08\04\02\01 \10\08\04\02@ \10\08\04\02\04\02\08\04\02\10\08\04", align 16, !dbg !53
@mode_wider = dso_local local_unnamed_addr constant [87 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\0E\0F\10\11\12\13\00\15\16\17\18\00\1A\1B\1C\1D\00\1F !\00#$%\00'()\00+,\00./012\00456\0089:;<=>?@ABCDEFGHIJKLM\00OPQRSTUV\00", align 16, !dbg !55
@mode_2xwider = dso_local local_unnamed_addr constant [87 x i8] c"\00\01\00\00\00\00\00\00\00\00\00\00\00\00\0F\10\11\12\13\00\15\16\17\18\00\1A\1B\1C\1D\00\1F !\00#$%\00')\00\00+,\00./012\0046\00\008;;;????DDDDDIIIII\00\00\00\00\00OQQTTT\00\00\00", align 16, !dbg !57
@mode_mask_array = dso_local local_unnamed_addr constant [87 x i64] [i64 0, i64 0, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 1, i64 255, i64 65535, i64 4294967295, i64 -1, i64 -1, i64 -1, i64 255, i64 65535, i64 4294967295, i64 -1, i64 -1, i64 255, i64 65535, i64 4294967295, i64 -1, i64 -1, i64 65535, i64 4294967295, i64 -1, i64 -1, i64 65535, i64 4294967295, i64 -1, i64 -1, i64 4294967295, i64 -1, i64 -1, i64 -1, i64 4294967295, i64 -1, i64 -1, i64 65535, i64 4294967295, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 65535, i64 4294967295, i64 4294967295, i64 4294967295, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16, !dbg !59
@mode_inner = dso_local local_unnamed_addr constant [87 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E\0F\10\11\12\13&'()\0E\0E\0F\10\0E\0F\10\11\0E\0F\10\11\12\0E\0F\10\11\12\0E\0F\10\11\12&&'&')&')", align 16, !dbg !64
@mode_base_align = dso_local local_unnamed_addr global [87 x i8] c"\00\00\04\04\04\04\04\04\04\04\04\04\04\01\01\02\04\08\10 \01\02\04\08\10\01\02\04\08\10\02\04\08\10\02\04\08\10\04\08\04\10\04\08\10\01\02\04\08\10 \04\08\04\10\02\04\04\04\08\08\08\08\10\10\10\10\10     @@@@@\08\10\10   @@@", align 16, !dbg !66
@class_narrowest_mode = dso_local local_unnamed_addr constant [18 x i8] c"\00\02\0E\00\14\19\1E\22&*-37\00\00\00\00N", align 16, !dbg !68
@ieee_single_format = external dso_local constant %struct.real_format, align 8
@ieee_double_format = external dso_local constant %struct.real_format, align 8
@ieee_extended_intel_96_format = external dso_local constant %struct.real_format, align 8
@ieee_quad_format = external dso_local constant %struct.real_format, align 8
@decimal_single_format = external dso_local constant %struct.real_format, align 8
@decimal_double_format = external dso_local constant %struct.real_format, align 8
@decimal_quad_format = external dso_local constant %struct.real_format, align 8
@real_format_for_mode = dso_local local_unnamed_addr global [7 x %struct.real_format*] [%struct.real_format* @ieee_single_format, %struct.real_format* @ieee_double_format, %struct.real_format* @ieee_extended_intel_96_format, %struct.real_format* @ieee_quad_format, %struct.real_format* @decimal_single_format, %struct.real_format* @decimal_double_format, %struct.real_format* @decimal_quad_format], align 16, !dbg !73
@target_flags = external dso_local local_unnamed_addr global i32, align 4
@ieee_extended_intel_128_format = external dso_local constant %struct.real_format, align 8
@mode_ibit = dso_local local_unnamed_addr constant <{ [38 x i8], [49 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\10 @\08\10 @", [49 x i8] zeroinitializer }>, align 16, !dbg !125
@mode_fbit = dso_local local_unnamed_addr constant <{ [38 x i8], [49 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\0F\1F?\7F\08\10 @\80\07\0F\1F?\08\10 @", [49 x i8] zeroinitializer }>, align 16, !dbg !127

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !135 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !148, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !151
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !152
  ret i32 %call, !dbg !153
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !154 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !158
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !159
  ret i32 %call, !dbg !160
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !221, metadata !DIExpression()), !dbg !222
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !223
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !223
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !223
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !223
  %cmp = icmp uge i8* %0, %1, !dbg !223
  %conv1 = zext i1 %cmp to i64, !dbg !223
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !223
  %tobool = icmp eq i64 %expval, 0, !dbg !223
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !223

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !223
  br label %cond.end, !dbg !223

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !223
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !223
  %2 = load i8, i8* %0, align 1, !dbg !223
  %conv3 = zext i8 %2 to i32, !dbg !223
  br label %cond.end, !dbg !223

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !223
  ret i32 %cond, !dbg !224
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !225 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !227, metadata !DIExpression()), !dbg !228
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !229
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !229
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !229
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !229
  %cmp = icmp uge i8* %0, %1, !dbg !229
  %conv1 = zext i1 %cmp to i64, !dbg !229
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !229
  %tobool = icmp eq i64 %expval, 0, !dbg !229
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !229

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !229
  br label %cond.end, !dbg !229

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !229
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !229
  %2 = load i8, i8* %0, align 1, !dbg !229
  %conv3 = zext i8 %2 to i32, !dbg !229
  br label %cond.end, !dbg !229

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !229
  ret i32 %cond, !dbg !230
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !231 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !232
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !232
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !232
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !232
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !232
  %cmp = icmp uge i8* %1, %2, !dbg !232
  %conv1 = zext i1 %cmp to i64, !dbg !232
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !232
  %tobool = icmp eq i64 %expval, 0, !dbg !232
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !232

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !232
  br label %cond.end, !dbg !232

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !232
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !232
  %3 = load i8, i8* %1, align 1, !dbg !232
  %conv3 = zext i8 %3 to i32, !dbg !232
  br label %cond.end, !dbg !232

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !232
  ret i32 %cond, !dbg !233
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !234 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !240
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !241
  ret i32 %call, !dbg !242
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !247, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !248, metadata !DIExpression()), !dbg !249
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !250
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !250
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !250
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !250
  %cmp = icmp uge i8* %0, %1, !dbg !250
  %conv1 = zext i1 %cmp to i64, !dbg !250
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !250
  %tobool = icmp eq i64 %expval, 0, !dbg !250
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !250

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !250
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !250
  br label %cond.end, !dbg !250

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !250
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !250
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !250
  store i8 %conv2, i8* %0, align 1, !dbg !250
  %conv6 = and i32 %__c, 255, !dbg !250
  br label %cond.end, !dbg !250

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !250
  ret i32 %cond, !dbg !251
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !252 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !254, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !255, metadata !DIExpression()), !dbg !256
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !257
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !257
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !257
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !257
  %cmp = icmp uge i8* %0, %1, !dbg !257
  %conv1 = zext i1 %cmp to i64, !dbg !257
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !257
  %tobool = icmp eq i64 %expval, 0, !dbg !257
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !257

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !257
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !257
  br label %cond.end, !dbg !257

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !257
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !257
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !257
  store i8 %conv2, i8* %0, align 1, !dbg !257
  %conv6 = and i32 %__c, 255, !dbg !257
  br label %cond.end, !dbg !257

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !257
  ret i32 %cond, !dbg !258
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !259 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !263
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !263
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !263
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !263
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !263
  %cmp = icmp uge i8* %1, %2, !dbg !263
  %conv1 = zext i1 %cmp to i64, !dbg !263
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !263
  %tobool = icmp eq i64 %expval, 0, !dbg !263
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !263

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !263
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !263
  br label %cond.end, !dbg !263

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !263
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !263
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !263
  store i8 %conv4, i8* %1, align 1, !dbg !263
  %conv6 = and i32 %__c, 255, !dbg !263
  br label %cond.end, !dbg !263

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !263
  ret i32 %cond, !dbg !264
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !265 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !271, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64* %__n, metadata !272, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !273, metadata !DIExpression()), !dbg !274
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !275
  ret i64 %call, !dbg !276
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !277 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !279, metadata !DIExpression()), !dbg !280
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !281
  %0 = load i32, i32* %_flags, align 8, !dbg !281
  %and = lshr i32 %0, 4, !dbg !281
  %and.lobit = and i32 %and, 1, !dbg !281
  ret i32 %and.lobit, !dbg !282
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !283 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !285, metadata !DIExpression()), !dbg !286
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !287
  %0 = load i32, i32* %_flags, align 8, !dbg !287
  %and = lshr i32 %0, 5, !dbg !287
  %and.lobit = and i32 %and, 1, !dbg !287
  ret i32 %and.lobit, !dbg !288
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !289 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !292, metadata !DIExpression()), !dbg !293
  %__c.off = add i32 %__c, 128, !dbg !294
  %0 = icmp ult i32 %__c.off, 384, !dbg !294
  br i1 %0, label %cond.true, label %cond.end, !dbg !294

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !295
  %1 = load i32*, i32** %call, align 8, !dbg !296
  %idxprom = sext i32 %__c to i64, !dbg !297
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !297
  %2 = load i32, i32* %arrayidx, align 4, !dbg !297
  br label %cond.end, !dbg !298

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !298
  ret i32 %cond, !dbg !299
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !302, metadata !DIExpression()), !dbg !303
  %__c.off = add i32 %__c, 128, !dbg !304
  %0 = icmp ult i32 %__c.off, 384, !dbg !304
  br i1 %0, label %cond.true, label %cond.end, !dbg !304

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !305
  %1 = load i32*, i32** %call, align 8, !dbg !306
  %idxprom = sext i32 %__c to i64, !dbg !307
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !307
  %2 = load i32, i32* %arrayidx, align 4, !dbg !307
  br label %cond.end, !dbg !308

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !308
  ret i32 %cond, !dbg !309
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !310 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !315, metadata !DIExpression()), !dbg !316
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !317
  %conv = trunc i64 %call to i32, !dbg !318
  ret i32 %conv, !dbg !319
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !320 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !324, metadata !DIExpression()), !dbg !325
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !326
  ret i64 %call, !dbg !327
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !328 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !333, metadata !DIExpression()), !dbg !334
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !335
  ret i64 %call, !dbg !336
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !337 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !348, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i8* %__base, metadata !349, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !350, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i64 %__size, metadata !351, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i64 0, metadata !353, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !354, metadata !DIExpression()), !dbg !358
  br label %while.cond, !dbg !359

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !360
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !358
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !354, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !353, metadata !DIExpression()), !dbg !358
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !361
  br i1 %cmp, label %while.body, label %cleanup, !dbg !359

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !362
  %div = lshr i64 %add, 1, !dbg !364
  call void @llvm.dbg.value(metadata i64 %div, metadata !355, metadata !DIExpression()), !dbg !358
  %mul = mul i64 %div, %__size, !dbg !365
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !366
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !356, metadata !DIExpression()), !dbg !358
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !367
  call void @llvm.dbg.value(metadata i32 %call, metadata !357, metadata !DIExpression()), !dbg !358
  %cmp1 = icmp slt i32 %call, 0, !dbg !368
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !370

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !371
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !373

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !374
  call void @llvm.dbg.value(metadata i64 %add4, metadata !353, metadata !DIExpression()), !dbg !358
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !358
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !358
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !354, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !353, metadata !DIExpression()), !dbg !358
  br label %while.cond, !dbg !359, !llvm.loop !375

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !358
  ret i8* %retval.0, !dbg !377
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !378 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !384, metadata !DIExpression()), !dbg !385
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !386
  ret double %call, !dbg !387
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !388 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !397, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !398, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 %base, metadata !399, metadata !DIExpression()), !dbg !400
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !401
  ret i64 %call, !dbg !402
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !403 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !409, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !410, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 %base, metadata !411, metadata !DIExpression()), !dbg !412
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !413
  ret i64 %call, !dbg !414
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !415 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !426, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32 %base, metadata !428, metadata !DIExpression()), !dbg !429
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !430
  ret i64 %call, !dbg !431
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !432 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !436, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !437, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 %base, metadata !438, metadata !DIExpression()), !dbg !439
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !440
  ret i64 %call, !dbg !441
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !442 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !482, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !483, metadata !DIExpression()), !dbg !484
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !485
  ret i32 %call, !dbg !486
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !487 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !489, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !490, metadata !DIExpression()), !dbg !491
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !492
  ret i32 %call, !dbg !493
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !494 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !498, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !499, metadata !DIExpression()), !dbg !500
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !501
  ret i32 %call, !dbg !502
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !503 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !507, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !508, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !509, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !510, metadata !DIExpression()), !dbg !511
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !512
  ret i32 %call, !dbg !513
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !514 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !518, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !519, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !520, metadata !DIExpression()), !dbg !521
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !520, metadata !DIExpression(DW_OP_deref)), !dbg !521
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !522
  ret i32 %call, !dbg !523
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !524 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !528, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i8* %__path, metadata !529, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !530, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !531, metadata !DIExpression()), !dbg !532
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !531, metadata !DIExpression(DW_OP_deref)), !dbg !532
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !533
  ret i32 %call, !dbg !534
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !535 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !559, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !560, metadata !DIExpression()), !dbg !561
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !562
  ret i32 %call, !dbg !563
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !564 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !566, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !567, metadata !DIExpression()), !dbg !568
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !569
  ret i32 %call, !dbg !570
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !571 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !575, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !576, metadata !DIExpression()), !dbg !577
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !578
  ret i32 %call, !dbg !579
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !580 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !584, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !585, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !586, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !587, metadata !DIExpression()), !dbg !588
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !589
  ret i32 %call, !dbg !590
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_adjust_machine_modes() local_unnamed_addr #3 !dbg !591 {
entry:
  %0 = load i32, i32* @target_flags, align 4, !dbg !596
  %and = and i32 %0, 1, !dbg !596
  %cmp = icmp eq i32 %and, 0, !dbg !596
  %conv1 = select i1 %cmp, i8 12, i8 16, !dbg !597
  store i8 %conv1, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @mode_size, i64 0, i64 40), align 8, !dbg !598
  %conv4 = shl nuw nsw i8 %conv1, 1, !dbg !599
  store i8 %conv4, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @mode_size, i64 0, i64 53), align 1, !dbg !600
  %conv14 = select i1 %cmp, i8 4, i8 16, !dbg !601
  store i8 %conv14, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @mode_base_align, i64 0, i64 40), align 8, !dbg !602
  store i8 %conv14, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @mode_base_align, i64 0, i64 53), align 1, !dbg !603
  %cond19 = select i1 %cmp, %struct.real_format* @ieee_extended_intel_96_format, %struct.real_format* @ieee_extended_intel_128_format, !dbg !604
  store %struct.real_format* %cond19, %struct.real_format** getelementptr inbounds ([7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 2), align 16, !dbg !605
  ret void, !dbg !606
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!131, !132, !133}
!llvm.ident = !{!134}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mode_name", scope: !2, file: !3, line: 11, type: !129, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !38, nameTableKind: None)
!3 = !DIFile(filename: "insn-modes.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !6, line: 36, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!9 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!28 = !{!29, !30, !31, !32, !35, !36, !5}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!38 = !{!0, !39, !45, !50, !53, !55, !57, !59, !64, !66, !68, !73, !125, !127}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "mode_class", scope: !2, file: !3, line: 102, type: !41, isLocal: false, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 696, elements: !43)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!43 = !{!44}
!44 = !DISubrange(count: 87)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "mode_precision", scope: !2, file: !3, line: 193, type: !47, isLocal: false, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1392, elements: !43)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "mode_size", scope: !2, file: !3, line: 284, type: !52, isLocal: false, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 696, elements: !43)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "mode_nunits", scope: !2, file: !3, line: 375, type: !41, isLocal: false, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "mode_wider", scope: !2, file: !3, line: 466, type: !41, isLocal: false, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "mode_2xwider", scope: !2, file: !3, line: 557, type: !41, isLocal: false, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "mode_mask_array", scope: !2, file: !3, line: 648, type: !61, isLocal: false, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 5568, elements: !43)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "mode_inner", scope: !2, file: !3, line: 745, type: !41, isLocal: false, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "mode_base_align", scope: !2, file: !3, line: 836, type: !52, isLocal: false, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "class_narrowest_mode", scope: !2, file: !3, line: 927, type: !70, isLocal: false, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 144, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 18)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "real_format_for_mode", scope: !2, file: !3, line: 950, type: !75, isLocal: false, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 448, elements: !123)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_format", file: !79, line: 124, size: 448, elements: !80)
!79 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!80 = !{!81, !101, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "encode", scope: !78, file: !79, line: 127, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !76, !85, !87}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !79, line: 52, size: 256, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !89, file: !79, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !89, file: !79, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !89, file: !79, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !89, file: !79, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !89, file: !79, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !89, file: !79, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !89, file: !79, line: 62, baseType: !98, size: 192, offset: 64)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 192, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 3)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !78, file: !79, line: 129, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !76, !105, !106}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !78, file: !79, line: 133, baseType: !31, size: 32, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !78, file: !79, line: 136, baseType: !31, size: 32, offset: 160)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pnan", scope: !78, file: !79, line: 139, baseType: !31, size: 32, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !78, file: !79, line: 142, baseType: !31, size: 32, offset: 224)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !78, file: !79, line: 145, baseType: !31, size: 32, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "signbit_ro", scope: !78, file: !79, line: 149, baseType: !31, size: 32, offset: 288)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "signbit_rw", scope: !78, file: !79, line: 153, baseType: !31, size: 32, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "round_towards_zero", scope: !78, file: !79, line: 156, baseType: !30, size: 8, offset: 352)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "has_sign_dependent_rounding", scope: !78, file: !79, line: 157, baseType: !30, size: 8, offset: 360)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "has_nans", scope: !78, file: !79, line: 160, baseType: !30, size: 8, offset: 368)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "has_inf", scope: !78, file: !79, line: 161, baseType: !30, size: 8, offset: 376)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm", scope: !78, file: !79, line: 162, baseType: !30, size: 8, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "has_signed_zero", scope: !78, file: !79, line: 163, baseType: !30, size: 8, offset: 392)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "qnan_msb_set", scope: !78, file: !79, line: 164, baseType: !30, size: 8, offset: 400)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_nan_lsbs_set", scope: !78, file: !79, line: 165, baseType: !30, size: 8, offset: 408)
!123 = !{!124}
!124 = !DISubrange(count: 7)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "mode_ibit", scope: !2, file: !3, line: 982, type: !41, isLocal: false, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "mode_fbit", scope: !2, file: !3, line: 1073, type: !41, isLocal: false, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 5568, elements: !43)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!131 = !{i32 2, !"Dwarf Version", i32 4}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 4}
!134 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!135 = distinct !DISubprogram(name: "vprintf", scope: !136, file: !136, line: 39, type: !137, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !147)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!137 = !DISubroutineType(types: !138)
!138 = !{!31, !139, !140}
!139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !141, file: !3, baseType: !7, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !141, file: !3, baseType: !7, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !141, file: !3, baseType: !35, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !141, file: !3, baseType: !35, size: 64, offset: 128)
!147 = !{!148, !149}
!148 = !DILocalVariable(name: "__fmt", arg: 1, scope: !135, file: !136, line: 39, type: !139)
!149 = !DILocalVariable(name: "__arg", arg: 2, scope: !135, file: !136, line: 39, type: !140)
!150 = !DILocation(line: 0, scope: !135)
!151 = !DILocation(line: 41, column: 20, scope: !135)
!152 = !DILocation(line: 41, column: 10, scope: !135)
!153 = !DILocation(line: 41, column: 3, scope: !135)
!154 = distinct !DISubprogram(name: "getchar", scope: !136, file: !136, line: 47, type: !155, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{!31}
!157 = !{}
!158 = !DILocation(line: 49, column: 16, scope: !154)
!159 = !DILocation(line: 49, column: 10, scope: !154)
!160 = !DILocation(line: 49, column: 3, scope: !154)
!161 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !136, file: !136, line: 56, type: !162, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!162 = !DISubroutineType(types: !163)
!163 = !{!31, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !166, line: 7, baseType: !167)
!166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !168, line: 49, size: 1728, elements: !169)
!168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !185, !187, !188, !189, !192, !193, !195, !199, !202, !204, !207, !210, !211, !212, !215, !216}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !167, file: !168, line: 51, baseType: !31, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !167, file: !168, line: 54, baseType: !33, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !167, file: !168, line: 55, baseType: !33, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !167, file: !168, line: 56, baseType: !33, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !167, file: !168, line: 57, baseType: !33, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !167, file: !168, line: 58, baseType: !33, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !167, file: !168, line: 59, baseType: !33, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !167, file: !168, line: 60, baseType: !33, size: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !167, file: !168, line: 61, baseType: !33, size: 64, offset: 512)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !167, file: !168, line: 64, baseType: !33, size: 64, offset: 576)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !167, file: !168, line: 65, baseType: !33, size: 64, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !167, file: !168, line: 66, baseType: !33, size: 64, offset: 704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !167, file: !168, line: 68, baseType: !183, size: 64, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !168, line: 36, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !167, file: !168, line: 70, baseType: !186, size: 64, offset: 832)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !167, file: !168, line: 72, baseType: !31, size: 32, offset: 896)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !167, file: !168, line: 73, baseType: !31, size: 32, offset: 928)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !167, file: !168, line: 74, baseType: !190, size: 64, offset: 960)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !191, line: 152, baseType: !86)
!191 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !167, file: !168, line: 77, baseType: !49, size: 16, offset: 1024)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !167, file: !168, line: 78, baseType: !194, size: 8, offset: 1040)
!194 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !167, file: !168, line: 79, baseType: !196, size: 8, offset: 1048)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 1)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !167, file: !168, line: 81, baseType: !200, size: 64, offset: 1088)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !168, line: 43, baseType: null)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !167, file: !168, line: 89, baseType: !203, size: 64, offset: 1152)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !191, line: 153, baseType: !86)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !167, file: !168, line: 91, baseType: !205, size: 64, offset: 1216)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !168, line: 37, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !167, file: !168, line: 92, baseType: !208, size: 64, offset: 1280)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !168, line: 38, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !167, file: !168, line: 93, baseType: !186, size: 64, offset: 1344)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !167, file: !168, line: 94, baseType: !35, size: 64, offset: 1408)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !167, file: !168, line: 95, baseType: !213, size: 64, offset: 1472)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 46, baseType: !63)
!214 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !167, file: !168, line: 96, baseType: !31, size: 32, offset: 1536)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !167, file: !168, line: 98, baseType: !217, size: 160, offset: 1568)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 20)
!220 = !{!221}
!221 = !DILocalVariable(name: "__fp", arg: 1, scope: !161, file: !136, line: 56, type: !164)
!222 = !DILocation(line: 0, scope: !161)
!223 = !DILocation(line: 58, column: 10, scope: !161)
!224 = !DILocation(line: 58, column: 3, scope: !161)
!225 = distinct !DISubprogram(name: "getc_unlocked", scope: !136, file: !136, line: 66, type: !162, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!226 = !{!227}
!227 = !DILocalVariable(name: "__fp", arg: 1, scope: !225, file: !136, line: 66, type: !164)
!228 = !DILocation(line: 0, scope: !225)
!229 = !DILocation(line: 68, column: 10, scope: !225)
!230 = !DILocation(line: 68, column: 3, scope: !225)
!231 = distinct !DISubprogram(name: "getchar_unlocked", scope: !136, file: !136, line: 73, type: !155, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!232 = !DILocation(line: 75, column: 10, scope: !231)
!233 = !DILocation(line: 75, column: 3, scope: !231)
!234 = distinct !DISubprogram(name: "putchar", scope: !136, file: !136, line: 82, type: !235, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{!31, !31}
!237 = !{!238}
!238 = !DILocalVariable(name: "__c", arg: 1, scope: !234, file: !136, line: 82, type: !31)
!239 = !DILocation(line: 0, scope: !234)
!240 = !DILocation(line: 84, column: 21, scope: !234)
!241 = !DILocation(line: 84, column: 10, scope: !234)
!242 = !DILocation(line: 84, column: 3, scope: !234)
!243 = distinct !DISubprogram(name: "fputc_unlocked", scope: !136, file: !136, line: 91, type: !244, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{!31, !31, !164}
!246 = !{!247, !248}
!247 = !DILocalVariable(name: "__c", arg: 1, scope: !243, file: !136, line: 91, type: !31)
!248 = !DILocalVariable(name: "__stream", arg: 2, scope: !243, file: !136, line: 91, type: !164)
!249 = !DILocation(line: 0, scope: !243)
!250 = !DILocation(line: 93, column: 10, scope: !243)
!251 = !DILocation(line: 93, column: 3, scope: !243)
!252 = distinct !DISubprogram(name: "putc_unlocked", scope: !136, file: !136, line: 101, type: !244, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!253 = !{!254, !255}
!254 = !DILocalVariable(name: "__c", arg: 1, scope: !252, file: !136, line: 101, type: !31)
!255 = !DILocalVariable(name: "__stream", arg: 2, scope: !252, file: !136, line: 101, type: !164)
!256 = !DILocation(line: 0, scope: !252)
!257 = !DILocation(line: 103, column: 10, scope: !252)
!258 = !DILocation(line: 103, column: 3, scope: !252)
!259 = distinct !DISubprogram(name: "putchar_unlocked", scope: !136, file: !136, line: 108, type: !235, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!260 = !{!261}
!261 = !DILocalVariable(name: "__c", arg: 1, scope: !259, file: !136, line: 108, type: !31)
!262 = !DILocation(line: 0, scope: !259)
!263 = !DILocation(line: 110, column: 10, scope: !259)
!264 = !DILocation(line: 110, column: 3, scope: !259)
!265 = distinct !DISubprogram(name: "getline", scope: !136, file: !136, line: 118, type: !266, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !270)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !32, !269, !164}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !191, line: 193, baseType: !86)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!270 = !{!271, !272, !273}
!271 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !265, file: !136, line: 118, type: !32)
!272 = !DILocalVariable(name: "__n", arg: 2, scope: !265, file: !136, line: 118, type: !269)
!273 = !DILocalVariable(name: "__stream", arg: 3, scope: !265, file: !136, line: 118, type: !164)
!274 = !DILocation(line: 0, scope: !265)
!275 = !DILocation(line: 120, column: 10, scope: !265)
!276 = !DILocation(line: 120, column: 3, scope: !265)
!277 = distinct !DISubprogram(name: "feof_unlocked", scope: !136, file: !136, line: 128, type: !162, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!278 = !{!279}
!279 = !DILocalVariable(name: "__stream", arg: 1, scope: !277, file: !136, line: 128, type: !164)
!280 = !DILocation(line: 0, scope: !277)
!281 = !DILocation(line: 130, column: 10, scope: !277)
!282 = !DILocation(line: 130, column: 3, scope: !277)
!283 = distinct !DISubprogram(name: "ferror_unlocked", scope: !136, file: !136, line: 135, type: !162, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !284)
!284 = !{!285}
!285 = !DILocalVariable(name: "__stream", arg: 1, scope: !283, file: !136, line: 135, type: !164)
!286 = !DILocation(line: 0, scope: !283)
!287 = !DILocation(line: 137, column: 10, scope: !283)
!288 = !DILocation(line: 137, column: 3, scope: !283)
!289 = distinct !DISubprogram(name: "tolower", scope: !290, file: !290, line: 207, type: !235, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!290 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!291 = !{!292}
!292 = !DILocalVariable(name: "__c", arg: 1, scope: !289, file: !290, line: 207, type: !31)
!293 = !DILocation(line: 0, scope: !289)
!294 = !DILocation(line: 209, column: 22, scope: !289)
!295 = !DILocation(line: 209, column: 39, scope: !289)
!296 = !DILocation(line: 209, column: 38, scope: !289)
!297 = !DILocation(line: 209, column: 37, scope: !289)
!298 = !DILocation(line: 209, column: 10, scope: !289)
!299 = !DILocation(line: 209, column: 3, scope: !289)
!300 = distinct !DISubprogram(name: "toupper", scope: !290, file: !290, line: 213, type: !235, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !301)
!301 = !{!302}
!302 = !DILocalVariable(name: "__c", arg: 1, scope: !300, file: !290, line: 213, type: !31)
!303 = !DILocation(line: 0, scope: !300)
!304 = !DILocation(line: 215, column: 22, scope: !300)
!305 = !DILocation(line: 215, column: 39, scope: !300)
!306 = !DILocation(line: 215, column: 38, scope: !300)
!307 = !DILocation(line: 215, column: 37, scope: !300)
!308 = !DILocation(line: 215, column: 10, scope: !300)
!309 = !DILocation(line: 215, column: 3, scope: !300)
!310 = distinct !DISubprogram(name: "atoi", scope: !311, file: !311, line: 361, type: !312, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !314)
!311 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!312 = !DISubroutineType(types: !313)
!313 = !{!31, !36}
!314 = !{!315}
!315 = !DILocalVariable(name: "__nptr", arg: 1, scope: !310, file: !311, line: 361, type: !36)
!316 = !DILocation(line: 0, scope: !310)
!317 = !DILocation(line: 363, column: 16, scope: !310)
!318 = !DILocation(line: 363, column: 10, scope: !310)
!319 = !DILocation(line: 363, column: 3, scope: !310)
!320 = distinct !DISubprogram(name: "atol", scope: !311, file: !311, line: 366, type: !321, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{!86, !36}
!323 = !{!324}
!324 = !DILocalVariable(name: "__nptr", arg: 1, scope: !320, file: !311, line: 366, type: !36)
!325 = !DILocation(line: 0, scope: !320)
!326 = !DILocation(line: 368, column: 10, scope: !320)
!327 = !DILocation(line: 368, column: 3, scope: !320)
!328 = distinct !DISubprogram(name: "atoll", scope: !311, file: !311, line: 373, type: !329, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !332)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !36}
!331 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!332 = !{!333}
!333 = !DILocalVariable(name: "__nptr", arg: 1, scope: !328, file: !311, line: 373, type: !36)
!334 = !DILocation(line: 0, scope: !328)
!335 = !DILocation(line: 375, column: 10, scope: !328)
!336 = !DILocation(line: 375, column: 3, scope: !328)
!337 = distinct !DISubprogram(name: "bsearch", scope: !338, file: !338, line: 20, type: !339, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!339 = !DISubroutineType(types: !340)
!340 = !{!35, !341, !341, !213, !213, !343}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !311, line: 808, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!31, !341, !341}
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!348 = !DILocalVariable(name: "__key", arg: 1, scope: !337, file: !338, line: 20, type: !341)
!349 = !DILocalVariable(name: "__base", arg: 2, scope: !337, file: !338, line: 20, type: !341)
!350 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !337, file: !338, line: 20, type: !213)
!351 = !DILocalVariable(name: "__size", arg: 4, scope: !337, file: !338, line: 20, type: !213)
!352 = !DILocalVariable(name: "__compar", arg: 5, scope: !337, file: !338, line: 21, type: !343)
!353 = !DILocalVariable(name: "__l", scope: !337, file: !338, line: 23, type: !213)
!354 = !DILocalVariable(name: "__u", scope: !337, file: !338, line: 23, type: !213)
!355 = !DILocalVariable(name: "__idx", scope: !337, file: !338, line: 23, type: !213)
!356 = !DILocalVariable(name: "__p", scope: !337, file: !338, line: 24, type: !341)
!357 = !DILocalVariable(name: "__comparison", scope: !337, file: !338, line: 25, type: !31)
!358 = !DILocation(line: 0, scope: !337)
!359 = !DILocation(line: 29, column: 3, scope: !337)
!360 = !DILocation(line: 27, column: 7, scope: !337)
!361 = !DILocation(line: 29, column: 14, scope: !337)
!362 = !DILocation(line: 31, column: 20, scope: !363)
!363 = distinct !DILexicalBlock(scope: !337, file: !338, line: 30, column: 5)
!364 = !DILocation(line: 31, column: 27, scope: !363)
!365 = !DILocation(line: 32, column: 56, scope: !363)
!366 = !DILocation(line: 32, column: 47, scope: !363)
!367 = !DILocation(line: 33, column: 22, scope: !363)
!368 = !DILocation(line: 34, column: 24, scope: !369)
!369 = distinct !DILexicalBlock(scope: !363, file: !338, line: 34, column: 11)
!370 = !DILocation(line: 34, column: 11, scope: !363)
!371 = !DILocation(line: 36, column: 29, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !338, line: 36, column: 16)
!373 = !DILocation(line: 36, column: 16, scope: !369)
!374 = !DILocation(line: 37, column: 14, scope: !372)
!375 = distinct !{!375, !359, !376}
!376 = !DILocation(line: 40, column: 5, scope: !337)
!377 = !DILocation(line: 43, column: 1, scope: !337)
!378 = distinct !DISubprogram(name: "atof", scope: !379, file: !379, line: 25, type: !380, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !383)
!379 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !36}
!382 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!383 = !{!384}
!384 = !DILocalVariable(name: "__nptr", arg: 1, scope: !378, file: !379, line: 25, type: !36)
!385 = !DILocation(line: 0, scope: !378)
!386 = !DILocation(line: 27, column: 10, scope: !378)
!387 = !DILocation(line: 27, column: 3, scope: !378)
!388 = distinct !DISubprogram(name: "strtoimax", scope: !389, file: !389, line: 324, type: !390, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!389 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!390 = !DISubroutineType(types: !391)
!391 = !{!392, !139, !395, !31}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !393, line: 101, baseType: !394)
!393 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !191, line: 72, baseType: !86)
!395 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!396 = !{!397, !398, !399}
!397 = !DILocalVariable(name: "nptr", arg: 1, scope: !388, file: !389, line: 324, type: !139)
!398 = !DILocalVariable(name: "endptr", arg: 2, scope: !388, file: !389, line: 324, type: !395)
!399 = !DILocalVariable(name: "base", arg: 3, scope: !388, file: !389, line: 324, type: !31)
!400 = !DILocation(line: 0, scope: !388)
!401 = !DILocation(line: 327, column: 10, scope: !388)
!402 = !DILocation(line: 327, column: 3, scope: !388)
!403 = distinct !DISubprogram(name: "strtoumax", scope: !389, file: !389, line: 336, type: !404, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !408)
!404 = !DISubroutineType(types: !405)
!405 = !{!406, !139, !395, !31}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !393, line: 102, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !191, line: 73, baseType: !63)
!408 = !{!409, !410, !411}
!409 = !DILocalVariable(name: "nptr", arg: 1, scope: !403, file: !389, line: 336, type: !139)
!410 = !DILocalVariable(name: "endptr", arg: 2, scope: !403, file: !389, line: 336, type: !395)
!411 = !DILocalVariable(name: "base", arg: 3, scope: !403, file: !389, line: 336, type: !31)
!412 = !DILocation(line: 0, scope: !403)
!413 = !DILocation(line: 339, column: 10, scope: !403)
!414 = !DILocation(line: 339, column: 3, scope: !403)
!415 = distinct !DISubprogram(name: "wcstoimax", scope: !389, file: !389, line: 348, type: !416, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !425)
!416 = !DISubroutineType(types: !417)
!417 = !{!392, !418, !422, !31}
!418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !389, line: 34, baseType: !31)
!422 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!425 = !{!426, !427, !428}
!426 = !DILocalVariable(name: "nptr", arg: 1, scope: !415, file: !389, line: 348, type: !418)
!427 = !DILocalVariable(name: "endptr", arg: 2, scope: !415, file: !389, line: 348, type: !422)
!428 = !DILocalVariable(name: "base", arg: 3, scope: !415, file: !389, line: 348, type: !31)
!429 = !DILocation(line: 0, scope: !415)
!430 = !DILocation(line: 351, column: 10, scope: !415)
!431 = !DILocation(line: 351, column: 3, scope: !415)
!432 = distinct !DISubprogram(name: "wcstoumax", scope: !389, file: !389, line: 362, type: !433, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{!406, !418, !422, !31}
!435 = !{!436, !437, !438}
!436 = !DILocalVariable(name: "nptr", arg: 1, scope: !432, file: !389, line: 362, type: !418)
!437 = !DILocalVariable(name: "endptr", arg: 2, scope: !432, file: !389, line: 362, type: !422)
!438 = !DILocalVariable(name: "base", arg: 3, scope: !432, file: !389, line: 362, type: !31)
!439 = !DILocation(line: 0, scope: !432)
!440 = !DILocation(line: 365, column: 10, scope: !432)
!441 = !DILocation(line: 365, column: 3, scope: !432)
!442 = distinct !DISubprogram(name: "stat", scope: !443, file: !443, line: 453, type: !444, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!444 = !DISubroutineType(types: !445)
!445 = !{!31, !36, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !448, line: 46, size: 1152, elements: !449)
!448 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!449 = !{!450, !452, !454, !456, !458, !460, !462, !463, !464, !465, !467, !469, !477, !478, !479}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !447, file: !448, line: 48, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !191, line: 145, baseType: !63)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !447, file: !448, line: 53, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !191, line: 148, baseType: !63)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !447, file: !448, line: 61, baseType: !455, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !191, line: 151, baseType: !63)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !447, file: !448, line: 62, baseType: !457, size: 32, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !191, line: 150, baseType: !7)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !447, file: !448, line: 64, baseType: !459, size: 32, offset: 224)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !191, line: 146, baseType: !7)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !447, file: !448, line: 65, baseType: !461, size: 32, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !191, line: 147, baseType: !7)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !447, file: !448, line: 67, baseType: !31, size: 32, offset: 288)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !447, file: !448, line: 69, baseType: !451, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !447, file: !448, line: 74, baseType: !190, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !447, file: !448, line: 78, baseType: !466, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !191, line: 174, baseType: !86)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !447, file: !448, line: 80, baseType: !468, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !191, line: 179, baseType: !86)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !447, file: !448, line: 91, baseType: !470, size: 128, offset: 576)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !471, line: 10, size: 128, elements: !472)
!471 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!472 = !{!473, !475}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !470, file: !471, line: 12, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !191, line: 160, baseType: !86)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !470, file: !471, line: 16, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !191, line: 196, baseType: !86)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !447, file: !448, line: 92, baseType: !470, size: 128, offset: 704)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !447, file: !448, line: 93, baseType: !470, size: 128, offset: 832)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !447, file: !448, line: 106, baseType: !480, size: 192, offset: 960)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 192, elements: !99)
!481 = !{!482, !483}
!482 = !DILocalVariable(name: "__path", arg: 1, scope: !442, file: !443, line: 453, type: !36)
!483 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !442, file: !443, line: 453, type: !446)
!484 = !DILocation(line: 0, scope: !442)
!485 = !DILocation(line: 455, column: 10, scope: !442)
!486 = !DILocation(line: 455, column: 3, scope: !442)
!487 = distinct !DISubprogram(name: "lstat", scope: !443, file: !443, line: 460, type: !444, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!488 = !{!489, !490}
!489 = !DILocalVariable(name: "__path", arg: 1, scope: !487, file: !443, line: 460, type: !36)
!490 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !487, file: !443, line: 460, type: !446)
!491 = !DILocation(line: 0, scope: !487)
!492 = !DILocation(line: 462, column: 10, scope: !487)
!493 = !DILocation(line: 462, column: 3, scope: !487)
!494 = distinct !DISubprogram(name: "fstat", scope: !443, file: !443, line: 467, type: !495, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{!31, !31, !446}
!497 = !{!498, !499}
!498 = !DILocalVariable(name: "__fd", arg: 1, scope: !494, file: !443, line: 467, type: !31)
!499 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !494, file: !443, line: 467, type: !446)
!500 = !DILocation(line: 0, scope: !494)
!501 = !DILocation(line: 469, column: 10, scope: !494)
!502 = !DILocation(line: 469, column: 3, scope: !494)
!503 = distinct !DISubprogram(name: "fstatat", scope: !443, file: !443, line: 474, type: !504, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!31, !31, !36, !446, !31}
!506 = !{!507, !508, !509, !510}
!507 = !DILocalVariable(name: "__fd", arg: 1, scope: !503, file: !443, line: 474, type: !31)
!508 = !DILocalVariable(name: "__filename", arg: 2, scope: !503, file: !443, line: 474, type: !36)
!509 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !503, file: !443, line: 474, type: !446)
!510 = !DILocalVariable(name: "__flag", arg: 4, scope: !503, file: !443, line: 474, type: !31)
!511 = !DILocation(line: 0, scope: !503)
!512 = !DILocation(line: 477, column: 10, scope: !503)
!513 = !DILocation(line: 477, column: 3, scope: !503)
!514 = distinct !DISubprogram(name: "mknod", scope: !443, file: !443, line: 483, type: !515, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{!31, !36, !457, !451}
!517 = !{!518, !519, !520}
!518 = !DILocalVariable(name: "__path", arg: 1, scope: !514, file: !443, line: 483, type: !36)
!519 = !DILocalVariable(name: "__mode", arg: 2, scope: !514, file: !443, line: 483, type: !457)
!520 = !DILocalVariable(name: "__dev", arg: 3, scope: !514, file: !443, line: 483, type: !451)
!521 = !DILocation(line: 0, scope: !514)
!522 = !DILocation(line: 485, column: 10, scope: !514)
!523 = !DILocation(line: 485, column: 3, scope: !514)
!524 = distinct !DISubprogram(name: "mknodat", scope: !443, file: !443, line: 491, type: !525, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{!31, !31, !36, !457, !451}
!527 = !{!528, !529, !530, !531}
!528 = !DILocalVariable(name: "__fd", arg: 1, scope: !524, file: !443, line: 491, type: !31)
!529 = !DILocalVariable(name: "__path", arg: 2, scope: !524, file: !443, line: 491, type: !36)
!530 = !DILocalVariable(name: "__mode", arg: 3, scope: !524, file: !443, line: 491, type: !457)
!531 = !DILocalVariable(name: "__dev", arg: 4, scope: !524, file: !443, line: 491, type: !451)
!532 = !DILocation(line: 0, scope: !524)
!533 = !DILocation(line: 494, column: 10, scope: !524)
!534 = !DILocation(line: 494, column: 3, scope: !524)
!535 = distinct !DISubprogram(name: "stat64", scope: !443, file: !443, line: 502, type: !536, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !558)
!536 = !DISubroutineType(types: !537)
!537 = !{!31, !36, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !448, line: 119, size: 1152, elements: !540)
!540 = !{!541, !542, !544, !545, !546, !547, !548, !549, !550, !551, !552, !554, !555, !556, !557}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !539, file: !448, line: 121, baseType: !451, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !539, file: !448, line: 123, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !191, line: 149, baseType: !63)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !539, file: !448, line: 124, baseType: !455, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !539, file: !448, line: 125, baseType: !457, size: 32, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !539, file: !448, line: 132, baseType: !459, size: 32, offset: 224)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !539, file: !448, line: 133, baseType: !461, size: 32, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !539, file: !448, line: 135, baseType: !31, size: 32, offset: 288)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !539, file: !448, line: 136, baseType: !451, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !539, file: !448, line: 137, baseType: !190, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !539, file: !448, line: 143, baseType: !466, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !539, file: !448, line: 144, baseType: !553, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !191, line: 180, baseType: !86)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !539, file: !448, line: 152, baseType: !470, size: 128, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !539, file: !448, line: 153, baseType: !470, size: 128, offset: 704)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !539, file: !448, line: 154, baseType: !470, size: 128, offset: 832)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !539, file: !448, line: 164, baseType: !480, size: 192, offset: 960)
!558 = !{!559, !560}
!559 = !DILocalVariable(name: "__path", arg: 1, scope: !535, file: !443, line: 502, type: !36)
!560 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !535, file: !443, line: 502, type: !538)
!561 = !DILocation(line: 0, scope: !535)
!562 = !DILocation(line: 504, column: 10, scope: !535)
!563 = !DILocation(line: 504, column: 3, scope: !535)
!564 = distinct !DISubprogram(name: "lstat64", scope: !443, file: !443, line: 509, type: !536, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!565 = !{!566, !567}
!566 = !DILocalVariable(name: "__path", arg: 1, scope: !564, file: !443, line: 509, type: !36)
!567 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !564, file: !443, line: 509, type: !538)
!568 = !DILocation(line: 0, scope: !564)
!569 = !DILocation(line: 511, column: 10, scope: !564)
!570 = !DILocation(line: 511, column: 3, scope: !564)
!571 = distinct !DISubprogram(name: "fstat64", scope: !443, file: !443, line: 516, type: !572, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{!31, !31, !538}
!574 = !{!575, !576}
!575 = !DILocalVariable(name: "__fd", arg: 1, scope: !571, file: !443, line: 516, type: !31)
!576 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !571, file: !443, line: 516, type: !538)
!577 = !DILocation(line: 0, scope: !571)
!578 = !DILocation(line: 518, column: 10, scope: !571)
!579 = !DILocation(line: 518, column: 3, scope: !571)
!580 = distinct !DISubprogram(name: "fstatat64", scope: !443, file: !443, line: 523, type: !581, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!31, !31, !36, !538, !31}
!583 = !{!584, !585, !586, !587}
!584 = !DILocalVariable(name: "__fd", arg: 1, scope: !580, file: !443, line: 523, type: !31)
!585 = !DILocalVariable(name: "__filename", arg: 2, scope: !580, file: !443, line: 523, type: !36)
!586 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !580, file: !443, line: 523, type: !538)
!587 = !DILocalVariable(name: "__flag", arg: 4, scope: !580, file: !443, line: 523, type: !31)
!588 = !DILocation(line: 0, scope: !580)
!589 = !DILocation(line: 526, column: 10, scope: !580)
!590 = !DILocation(line: 526, column: 3, scope: !580)
!591 = distinct !DISubprogram(name: "init_adjust_machine_modes", scope: !3, file: !3, line: 962, type: !592, scopeLine: 963, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{null}
!594 = !{!595}
!595 = !DILocalVariable(name: "s", scope: !591, file: !3, line: 964, type: !213)
!596 = !DILocation(line: 967, column: 7, scope: !591)
!597 = !DILocation(line: 968, column: 23, scope: !591)
!598 = !DILocation(line: 968, column: 21, scope: !591)
!599 = !DILocation(line: 970, column: 23, scope: !591)
!600 = !DILocation(line: 970, column: 21, scope: !591)
!601 = !DILocation(line: 975, column: 29, scope: !591)
!602 = !DILocation(line: 975, column: 27, scope: !591)
!603 = !DILocation(line: 976, column: 27, scope: !591)
!604 = !DILocation(line: 979, column: 32, scope: !591)
!605 = !DILocation(line: 979, column: 29, scope: !591)
!606 = !DILocation(line: 980, column: 1, scope: !591)
