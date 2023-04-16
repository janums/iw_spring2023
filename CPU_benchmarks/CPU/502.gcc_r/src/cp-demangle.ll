; ModuleID = 'cp-demangle.bc'
source_filename = "cp-demangle.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.demangle_operator_info = type { i8*, i8*, i32, i32 }
%struct.demangle_builtin_type_info = type { i8*, i32, i8*, i32, i32 }
%struct.d_standard_sub_info = type { i8, i8*, i32, i8*, i32, i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.demangle_component = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i32 }
%struct.d_info = type { i8*, i8*, i32, i8*, %struct.demangle_component*, i32, i32, %struct.demangle_component**, i32, i32, i32, %struct.demangle_component*, i32 }
%struct.anon.2 = type { %struct.demangle_component*, i16, i16 }
%struct.d_print_info = type { i32, [256 x i8], i64, i8, void (i8*, i64, i8*)*, i8*, %struct.d_print_template*, %struct.d_print_mod*, i32, i32 }
%struct.d_print_template = type { %struct.d_print_template*, %struct.demangle_component* }
%struct.d_print_mod = type { %struct.d_print_mod*, %struct.demangle_component*, i32, %struct.d_print_template* }
%struct.d_growable_string = type { i8*, i64, i64, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"aN\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"aS\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ad\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"dV\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"da\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"delete[]\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"dv\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"eO\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"eo\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"ix\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"lS\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"mI\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"mL\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"ml\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"new[]\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"ng\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"nw\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"oR\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"pL\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"qu\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"rM\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"rS\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"sizeof \00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"alignof \00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"az\00", align 1
@cplus_demangle_operators = dso_local constant [53 x %struct.demangle_operator_info] [%struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 1, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 8, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 6, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i32 3, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i32 2, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 5, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i32 1, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i32 1, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i32 3, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i32 3, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i32 2, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i32 1, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i32 1, i32 3 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i32 3, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i32 1, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i32 2, i32 2 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i32 7, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i32 7, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i32 8, i32 1 }, %struct.demangle_operator_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i32 8, i32 1 }, %struct.demangle_operator_info zeroinitializer], align 16, !dbg !0
@.str.98 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"__float128\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"__int128\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"unsigned __int128\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"decimal32\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"decimal64\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"decimal128\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"char16_t\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"char32_t\00", align 1
@cplus_demangle_builtin_types = dso_local constant [32 x %struct.demangle_builtin_type_info] [%struct.demangle_builtin_type_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0), i32 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0), i32 11, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i32 7, i32 7 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i32 4, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i32 6, i32 8 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i32 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i32 11, i32 8 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i32 5, i32 8 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i32 10, i32 8 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i32 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i32 13, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i32 3, i32 1 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i32 12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0), i32 8, i32 2 }, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i32 4, i32 3 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), i32 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), i32 13, i32 4 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i32 0), i32 8, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), i32 17, i32 0 }, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i32 5, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0), i32 14, i32 0 }, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i32 4, i32 9 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i32 4, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i32 4, i32 5 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.120, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.120, i32 0, i32 0), i32 18, i32 6 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i32 0, i32 0), i32 3, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 9, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i32 9, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i32 10, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), i32 4, i32 8 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.126, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.126, i32 0, i32 0), i32 8, i32 0 }, %struct.demangle_builtin_type_info { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0), i32 8, i32 0 }], align 16, !dbg !251
@.str.128 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"string literal\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"_GLOBAL_\00", align 1
@.str.131 = private unnamed_addr constant [22 x i8] c"(anonymous namespace)\00", align 1
@standard_subs = internal constant [7 x %struct.d_standard_sub_info] [%struct.d_standard_sub_info { i8 116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i32 3, i8* null, i32 0 }, %struct.d_standard_sub_info { i8 97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.132, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.132, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0), i32 9 }, %struct.d_standard_sub_info { i8 98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.134, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.134, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i32 12 }, %struct.d_standard_sub_info { i8 115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i32 0, i32 0), i32 11, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.137, i32 0, i32 0), i32 70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i32 12 }, %struct.d_standard_sub_info { i8 105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i32 12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.139, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.140, i32 0, i32 0), i32 13 }, %struct.d_standard_sub_info { i8 111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), i32 12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.142, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.143, i32 0, i32 0), i32 13 }, %struct.d_standard_sub_info { i8 100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.144, i32 0, i32 0), i32 13, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.145, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.146, i32 0, i32 0), i32 14 }], align 16, !dbg !256
@.str.132 = private unnamed_addr constant [15 x i8] c"std::allocator\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"allocator\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"std::basic_string\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"std::string\00", align 1
@.str.137 = private unnamed_addr constant [71 x i8] c"std::basic_string<char, std::char_traits<char>, std::allocator<char> >\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"std::istream\00", align 1
@.str.139 = private unnamed_addr constant [50 x i8] c"std::basic_istream<char, std::char_traits<char> >\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"basic_istream\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"std::ostream\00", align 1
@.str.142 = private unnamed_addr constant [50 x i8] c"std::basic_ostream<char, std::char_traits<char> >\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"basic_ostream\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"std::iostream\00", align 1
@.str.145 = private unnamed_addr constant [51 x i8] c"std::basic_iostream<char, std::char_traits<char> >\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"basic_iostream\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"JArray\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"vtable for \00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"VTT for \00", align 1
@.str.151 = private unnamed_addr constant [25 x i8] c"construction vtable for \00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"-in-\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"typeinfo for \00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"typeinfo name for \00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"typeinfo fn for \00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"non-virtual thunk to \00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"virtual thunk to \00", align 1
@.str.158 = private unnamed_addr constant [27 x i8] c"covariant return thunk to \00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"java Class for \00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"guard variable for \00", align 1
@.str.161 = private unnamed_addr constant [25 x i8] c"reference temporary for \00", align 1
@.str.162 = private unnamed_addr constant [18 x i8] c"hidden alias for \00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"_Sat \00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"_Accum\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"_Fract\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"ul\00", align 1
@.str.171 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"ull\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"java resource \00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"decltype (\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"{parm#\00", align 1
@.str.178 = private unnamed_addr constant [30 x i8] c"global constructors keyed to \00", align 1
@.str.179 = private unnamed_addr constant [29 x i8] c"global destructors keyed to \00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"{lambda(\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c")#\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"{unnamed type#\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"complex \00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"imaginary \00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c" __vector(\00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"{default arg#\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"}::\00", align 1
@.str.192 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !278 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !294
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #7, !dbg !295
  ret i32 %call, !dbg !296
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !297 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !301
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #7, !dbg !302
  ret i32 %call, !dbg !303
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !304 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !363, metadata !DIExpression()), !dbg !364
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !365
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !365
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !365
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !365
  %cmp = icmp uge i8* %0, %1, !dbg !365
  %conv1 = zext i1 %cmp to i64, !dbg !365
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !365
  %tobool = icmp eq i64 %expval, 0, !dbg !365
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !365

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !365
  br label %cond.end, !dbg !365

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !365
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !365
  %2 = load i8, i8* %0, align 1, !dbg !365
  %conv3 = zext i8 %2 to i32, !dbg !365
  br label %cond.end, !dbg !365

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !365
  ret i32 %cond, !dbg !366
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !367 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !369, metadata !DIExpression()), !dbg !370
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !371
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !371
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !371
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !371
  %cmp = icmp uge i8* %0, %1, !dbg !371
  %conv1 = zext i1 %cmp to i64, !dbg !371
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !371
  %tobool = icmp eq i64 %expval, 0, !dbg !371
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !371

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !371
  br label %cond.end, !dbg !371

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !371
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !371
  %2 = load i8, i8* %0, align 1, !dbg !371
  %conv3 = zext i8 %2 to i32, !dbg !371
  br label %cond.end, !dbg !371

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !371
  ret i32 %cond, !dbg !372
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !373 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !374
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !374
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !374
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !374
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !374
  %cmp = icmp uge i8* %1, %2, !dbg !374
  %conv1 = zext i1 %cmp to i64, !dbg !374
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !374
  %tobool = icmp eq i64 %expval, 0, !dbg !374
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !374

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #7, !dbg !374
  br label %cond.end, !dbg !374

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !374
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !374
  %3 = load i8, i8* %1, align 1, !dbg !374
  %conv3 = zext i8 %3 to i32, !dbg !374
  br label %cond.end, !dbg !374

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !374
  ret i32 %cond, !dbg !375
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !376 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !382
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #7, !dbg !383
  ret i32 %call, !dbg !384
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !385 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !389, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !390, metadata !DIExpression()), !dbg !391
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !392
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !392
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !392
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !392
  %cmp = icmp uge i8* %0, %1, !dbg !392
  %conv1 = zext i1 %cmp to i64, !dbg !392
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !392
  %tobool = icmp eq i64 %expval, 0, !dbg !392
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !392

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !392
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !392
  br label %cond.end, !dbg !392

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !392
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !392
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !392
  store i8 %conv2, i8* %0, align 1, !dbg !392
  %conv6 = and i32 %__c, 255, !dbg !392
  br label %cond.end, !dbg !392

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !392
  ret i32 %cond, !dbg !393
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !394 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !396, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !397, metadata !DIExpression()), !dbg !398
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !399
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !399
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !399
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !399
  %cmp = icmp uge i8* %0, %1, !dbg !399
  %conv1 = zext i1 %cmp to i64, !dbg !399
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !399
  %tobool = icmp eq i64 %expval, 0, !dbg !399
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !399

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !399
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !399
  br label %cond.end, !dbg !399

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !399
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !399
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !399
  store i8 %conv2, i8* %0, align 1, !dbg !399
  %conv6 = and i32 %__c, 255, !dbg !399
  br label %cond.end, !dbg !399

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !399
  ret i32 %cond, !dbg !400
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !401 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !405
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !405
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !405
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !405
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !405
  %cmp = icmp uge i8* %1, %2, !dbg !405
  %conv1 = zext i1 %cmp to i64, !dbg !405
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !405
  %tobool = icmp eq i64 %expval, 0, !dbg !405
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !405

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !405
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #7, !dbg !405
  br label %cond.end, !dbg !405

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !405
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !405
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !405
  store i8 %conv4, i8* %1, align 1, !dbg !405
  %conv6 = and i32 %__c, 255, !dbg !405
  br label %cond.end, !dbg !405

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !405
  ret i32 %cond, !dbg !406
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !407 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !413, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64* %__n, metadata !414, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !415, metadata !DIExpression()), !dbg !416
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #7, !dbg !417
  ret i64 %call, !dbg !418
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !419 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !421, metadata !DIExpression()), !dbg !422
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !423
  %0 = load i32, i32* %_flags, align 8, !dbg !423
  %and = lshr i32 %0, 4, !dbg !423
  %and.lobit = and i32 %and, 1, !dbg !423
  ret i32 %and.lobit, !dbg !424
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !425 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !427, metadata !DIExpression()), !dbg !428
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !429
  %0 = load i32, i32* %_flags, align 8, !dbg !429
  %and = lshr i32 %0, 5, !dbg !429
  %and.lobit = and i32 %and, 1, !dbg !429
  ret i32 %and.lobit, !dbg !430
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !431 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !436, metadata !DIExpression()), !dbg !437
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !438
  %conv = trunc i64 %call to i32, !dbg !439
  ret i32 %conv, !dbg !440
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !441 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !445, metadata !DIExpression()), !dbg !446
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !447
  ret i64 %call, !dbg !448
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !449 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !454, metadata !DIExpression()), !dbg !455
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #7, !dbg !456
  ret i64 %call, !dbg !457
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !458 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !469, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i8* %__base, metadata !470, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !471, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i64 %__size, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !473, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !475, metadata !DIExpression()), !dbg !479
  br label %while.cond, !dbg !480

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !481
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !479
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !475, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !474, metadata !DIExpression()), !dbg !479
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !482
  br i1 %cmp, label %while.body, label %cleanup, !dbg !480

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !483
  %div = lshr i64 %add, 1, !dbg !485
  call void @llvm.dbg.value(metadata i64 %div, metadata !476, metadata !DIExpression()), !dbg !479
  %mul = mul i64 %div, %__size, !dbg !486
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !487
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !477, metadata !DIExpression()), !dbg !479
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #7, !dbg !488
  call void @llvm.dbg.value(metadata i32 %call, metadata !478, metadata !DIExpression()), !dbg !479
  %cmp1 = icmp slt i32 %call, 0, !dbg !489
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !491

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !492
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !494

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !495
  call void @llvm.dbg.value(metadata i64 %add4, metadata !474, metadata !DIExpression()), !dbg !479
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !479
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !479
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !475, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !474, metadata !DIExpression()), !dbg !479
  br label %while.cond, !dbg !480, !llvm.loop !496

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !479
  ret i8* %retval.0, !dbg !498
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !499 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !505, metadata !DIExpression()), !dbg !506
  %call = tail call double @strtod(i8* %__nptr, i8** null) #7, !dbg !507
  ret double %call, !dbg !508
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_fill_name(%struct.demangle_component* %p, i8* %s, i32 %len) local_unnamed_addr #5 !dbg !509 {
entry:
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p, metadata !513, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata i8* %s, metadata !514, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata i32 %len, metadata !515, metadata !DIExpression()), !dbg !516
  %cmp = icmp eq %struct.demangle_component* %p, null, !dbg !517
  %cmp1 = icmp eq i8* %s, null, !dbg !519
  %or.cond = or i1 %cmp, %cmp1, !dbg !520
  %cmp3 = icmp eq i32 %len, 0, !dbg !521
  %or.cond1 = or i1 %or.cond, %cmp3, !dbg !520
  br i1 %or.cond1, label %return, label %if.end, !dbg !520

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 0, !dbg !522
  store i32 0, i32* %type, align 8, !dbg !523
  %s4 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, i32 0, i32 0, !dbg !524
  store i8* %s, i8** %s4, align 8, !dbg !525
  %len7 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, i32 0, i32 1, !dbg !526
  store i32 %len, i32* %len7, align 8, !dbg !527
  br label %return, !dbg !528

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !516
  ret i32 %retval.0, !dbg !529
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_fill_extended_operator(%struct.demangle_component* %p, i32 %args, %struct.demangle_component* %name) local_unnamed_addr #5 !dbg !530 {
entry:
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p, metadata !534, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 %args, metadata !535, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata %struct.demangle_component* %name, metadata !536, metadata !DIExpression()), !dbg !537
  %cmp = icmp eq %struct.demangle_component* %p, null, !dbg !538
  %cmp1 = icmp slt i32 %args, 0, !dbg !540
  %or.cond = or i1 %cmp, %cmp1, !dbg !541
  %cmp3 = icmp eq %struct.demangle_component* %name, null, !dbg !542
  %or.cond1 = or i1 %or.cond, %cmp3, !dbg !541
  br i1 %or.cond1, label %return, label %if.end, !dbg !541

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 0, !dbg !543
  store i32 45, i32* %type, align 8, !dbg !544
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, !dbg !545
  %args4 = bitcast %union.anon* %u to i32*, !dbg !546
  store i32 %args, i32* %args4, align 8, !dbg !547
  %name7 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, i32 0, i32 1, !dbg !548
  %0 = bitcast i32* %name7 to %struct.demangle_component**, !dbg !548
  store %struct.demangle_component* %name, %struct.demangle_component** %0, align 8, !dbg !549
  br label %return, !dbg !550

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !537
  ret i32 %retval.0, !dbg !551
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_fill_ctor(%struct.demangle_component* %p, i32 %kind, %struct.demangle_component* %name) local_unnamed_addr #5 !dbg !552 {
entry:
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p, metadata !556, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i32 %kind, metadata !557, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata %struct.demangle_component* %name, metadata !558, metadata !DIExpression()), !dbg !559
  %cmp = icmp eq %struct.demangle_component* %p, null, !dbg !560
  %cmp1 = icmp eq %struct.demangle_component* %name, null, !dbg !562
  %or.cond = or i1 %cmp, %cmp1, !dbg !563
  %kind.off = add i32 %kind, -1, !dbg !563
  %0 = icmp ugt i32 %kind.off, 2, !dbg !563
  %1 = or i1 %0, %or.cond, !dbg !563
  br i1 %1, label %return, label %if.end, !dbg !563

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 0, !dbg !564
  store i32 7, i32* %type, align 8, !dbg !565
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, !dbg !566
  %kind6 = bitcast %union.anon* %u to i32*, !dbg !567
  store i32 %kind, i32* %kind6, align 8, !dbg !568
  %name9 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, i32 0, i32 1, !dbg !569
  %2 = bitcast i32* %name9 to %struct.demangle_component**, !dbg !569
  store %struct.demangle_component* %name, %struct.demangle_component** %2, align 8, !dbg !570
  br label %return, !dbg !571

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !559
  ret i32 %retval.0, !dbg !572
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_fill_dtor(%struct.demangle_component* %p, i32 %kind, %struct.demangle_component* %name) local_unnamed_addr #5 !dbg !573 {
entry:
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p, metadata !577, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i32 %kind, metadata !578, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata %struct.demangle_component* %name, metadata !579, metadata !DIExpression()), !dbg !580
  %cmp = icmp eq %struct.demangle_component* %p, null, !dbg !581
  %cmp1 = icmp eq %struct.demangle_component* %name, null, !dbg !583
  %or.cond = or i1 %cmp, %cmp1, !dbg !584
  %kind.off = add i32 %kind, -1, !dbg !584
  %0 = icmp ugt i32 %kind.off, 2, !dbg !584
  %1 = or i1 %0, %or.cond, !dbg !584
  br i1 %1, label %return, label %if.end, !dbg !584

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 0, !dbg !585
  store i32 8, i32* %type, align 8, !dbg !586
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, !dbg !587
  %kind6 = bitcast %union.anon* %u to i32*, !dbg !588
  store i32 %kind, i32* %kind6, align 8, !dbg !589
  %name9 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, i32 0, i32 1, !dbg !590
  %2 = bitcast i32* %name9 to %struct.demangle_component**, !dbg !590
  store %struct.demangle_component* %name, %struct.demangle_component** %2, align 8, !dbg !591
  br label %return, !dbg !592

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !580
  ret i32 %retval.0, !dbg !593
}

; Function Attrs: nounwind uwtable
define dso_local %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info* %di, i32 %top_level) local_unnamed_addr #5 !dbg !594 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !599, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i32 %top_level, metadata !600, metadata !DIExpression()), !dbg !601
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !602
  %0 = load i8*, i8** %n, align 8, !dbg !602
  %1 = load i8, i8* %0, align 1, !dbg !602
  %cmp = icmp eq i8 %1, 95, !dbg !602
  br i1 %cmp, label %cond.true, label %land.lhs.true, !dbg !604

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !602
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !602
  %.pre = load i8, i8* %incdec.ptr, align 1, !dbg !605
  br label %if.end, !dbg !602

land.lhs.true:                                    ; preds = %entry
  %tobool = icmp eq i32 %top_level, 0, !dbg !607
  br i1 %tobool, label %if.end, label %return, !dbg !608

if.end:                                           ; preds = %land.lhs.true, %cond.true
  %2 = phi i8 [ %1, %land.lhs.true ], [ %.pre, %cond.true ], !dbg !605
  %3 = phi i8* [ %0, %land.lhs.true ], [ %incdec.ptr, %cond.true ], !dbg !605
  %cmp5 = icmp eq i8 %2, 90, !dbg !605
  br i1 %cmp5, label %cond.true7, label %return, !dbg !609

cond.true7:                                       ; preds = %if.end
  %incdec.ptr9 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !605
  store i8* %incdec.ptr9, i8** %n, align 8, !dbg !605
  %call = tail call fastcc %struct.demangle_component* @d_encoding(%struct.d_info* %di, i32 %top_level) #8, !dbg !610
  br label %return, !dbg !611

return:                                           ; preds = %land.lhs.true, %if.end, %cond.true7
  %retval.0 = phi %struct.demangle_component* [ %call, %cond.true7 ], [ null, %land.lhs.true ], [ null, %if.end ], !dbg !601
  ret %struct.demangle_component* %retval.0, !dbg !612
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_encoding(%struct.d_info* %di, i32 %top_level) unnamed_addr #5 !dbg !613 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !615, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32 %top_level, metadata !616, metadata !DIExpression()), !dbg !626
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !627
  %0 = load i8*, i8** %n, align 8, !dbg !627
  %1 = load i8, i8* %0, align 1, !dbg !627
  call void @llvm.dbg.value(metadata i8 %1, metadata !617, metadata !DIExpression()), !dbg !626
  %cmp = icmp eq i8 %1, 71, !dbg !628
  %cmp3 = icmp eq i8 %1, 84, !dbg !629
  %or.cond = or i1 %cmp, %cmp3, !dbg !630
  br i1 %or.cond, label %if.then, label %if.else, !dbg !630

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.demangle_component* @d_special_name(%struct.d_info* %di) #8, !dbg !631
  br label %cleanup65, !dbg !632

if.else:                                          ; preds = %entry
  %call5 = tail call fastcc %struct.demangle_component* @d_name(%struct.d_info* %di) #8, !dbg !633
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call5, metadata !618, metadata !DIExpression()), !dbg !634
  %cmp6 = icmp ne %struct.demangle_component* %call5, null, !dbg !635
  %tobool = icmp ne i32 %top_level, 0, !dbg !636
  %or.cond1 = and i1 %cmp6, %tobool, !dbg !637
  br i1 %or.cond1, label %land.lhs.true8, label %if.end48, !dbg !637

land.lhs.true8:                                   ; preds = %if.else
  %options = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 2, !dbg !638
  %2 = load i32, i32* %options, align 8, !dbg !638
  %and = and i32 %2, 1, !dbg !639
  %cmp9 = icmp eq i32 %and, 0, !dbg !640
  br i1 %cmp9, label %while.cond.preheader, label %if.end48, !dbg !641

while.cond.preheader:                             ; preds = %land.lhs.true8
  br label %while.cond, !dbg !642

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %dc.0 = phi %struct.demangle_component* [ %6, %while.body ], [ %call5, %while.cond.preheader ], !dbg !634
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.0, metadata !618, metadata !DIExpression()), !dbg !634
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.0, i64 0, i32 0, !dbg !643
  %3 = load i32, i32* %type, align 8, !dbg !643
  %cmp12 = icmp eq i32 %3, 26, !dbg !644
  br i1 %cmp12, label %while.body, label %lor.lhs.false14, !dbg !645

lor.lhs.false14:                                  ; preds = %while.cond
  %4 = add i32 %3, -27, !dbg !646
  %5 = icmp ult i32 %4, 2, !dbg !646
  br i1 %5, label %while.body, label %while.end, !dbg !646

while.body:                                       ; preds = %while.cond, %lor.lhs.false14
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.0, i64 0, i32 1, !dbg !647
  %left = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !647
  %6 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !647
  call void @llvm.dbg.value(metadata %struct.demangle_component* %6, metadata !618, metadata !DIExpression()), !dbg !634
  br label %while.cond, !dbg !642, !llvm.loop !648

while.end:                                        ; preds = %lor.lhs.false14
  %dc.0.lcssa = phi %struct.demangle_component* [ %dc.0, %lor.lhs.false14 ], !dbg !634
  %.lcssa = phi i32 [ %3, %lor.lhs.false14 ], !dbg !643
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.0.lcssa, metadata !618, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.0.lcssa, metadata !618, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.0.lcssa, metadata !618, metadata !DIExpression()), !dbg !634
  %cmp22 = icmp eq i32 %.lcssa, 2, !dbg !649
  br i1 %cmp22, label %if.then24, label %cleanup65, !dbg !650

if.then24:                                        ; preds = %while.end
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.0.lcssa, i64 0, i32 1, i32 0, i32 1, !dbg !651
  %7 = bitcast i32* %right to %struct.demangle_component**, !dbg !651
  br label %while.cond27, !dbg !652

while.cond27:                                     ; preds = %while.body40, %if.then24
  %dcr.0.in = phi %struct.demangle_component** [ %7, %if.then24 ], [ %left43, %while.body40 ]
  %dcr.0 = load %struct.demangle_component*, %struct.demangle_component** %dcr.0.in, align 8, !dbg !653
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dcr.0, metadata !621, metadata !DIExpression()), !dbg !653
  %type28 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dcr.0, i64 0, i32 0, !dbg !654
  %8 = load i32, i32* %type28, align 8, !dbg !654
  %cmp29 = icmp eq i32 %8, 26, !dbg !655
  br i1 %cmp29, label %while.body40, label %lor.lhs.false31, !dbg !656

lor.lhs.false31:                                  ; preds = %while.cond27
  %9 = add i32 %8, -27, !dbg !657
  %10 = icmp ult i32 %9, 2, !dbg !657
  br i1 %10, label %while.body40, label %while.end44, !dbg !657

while.body40:                                     ; preds = %while.cond27, %lor.lhs.false31
  %u41 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dcr.0, i64 0, i32 1, !dbg !658
  %left43 = bitcast %union.anon* %u41 to %struct.demangle_component**, !dbg !658
  br label %while.cond27, !dbg !652, !llvm.loop !659

while.end44:                                      ; preds = %lor.lhs.false31
  %dcr.0.lcssa = phi %struct.demangle_component* [ %dcr.0, %lor.lhs.false31 ], !dbg !653
  store %struct.demangle_component* %dcr.0.lcssa, %struct.demangle_component** %7, align 8, !dbg !660
  br label %cleanup65, !dbg !661

if.end48:                                         ; preds = %land.lhs.true8, %if.else
  %11 = load i8*, i8** %n, align 8, !dbg !662
  %12 = load i8, i8* %11, align 1, !dbg !662
  call void @llvm.dbg.value(metadata i8 %12, metadata !617, metadata !DIExpression()), !dbg !626
  %cmp50 = icmp eq %struct.demangle_component* %call5, null, !dbg !663
  %cmp54 = icmp eq i8 %12, 0, !dbg !665
  %or.cond4 = or i1 %cmp50, %cmp54, !dbg !666
  %cmp58 = icmp eq i8 %12, 69, !dbg !667
  %or.cond5 = or i1 %or.cond4, %cmp58, !dbg !666
  br i1 %or.cond5, label %cleanup65, label %if.end61, !dbg !666

if.end61:                                         ; preds = %if.end48
  %call62 = tail call fastcc i32 @has_return_type(%struct.demangle_component* %call5) #8, !dbg !668
  %call63 = tail call fastcc %struct.demangle_component* @d_bare_function_type(%struct.d_info* %di, i32 %call62) #8, !dbg !669
  %call64 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 3, %struct.demangle_component* %call5, %struct.demangle_component* %call63) #8, !dbg !670
  br label %cleanup65, !dbg !671

cleanup65:                                        ; preds = %if.end61, %while.end44, %while.end, %if.end48, %if.then
  %retval.1 = phi %struct.demangle_component* [ %call, %if.then ], [ %call64, %if.end61 ], [ %dc.0.lcssa, %while.end44 ], [ %dc.0.lcssa, %while.end ], [ %call5, %if.end48 ], !dbg !672
  ret %struct.demangle_component* %retval.1, !dbg !673
}

; Function Attrs: nounwind uwtable
define dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) local_unnamed_addr #5 !dbg !674 {
entry:
  %ret = alloca %struct.demangle_component*, align 8
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !678, metadata !DIExpression()), !dbg !688
  %0 = bitcast %struct.demangle_component** %ret to i8*, !dbg !689
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !689
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !690
  %1 = load i8*, i8** %n, align 8, !dbg !690
  %2 = load i8, i8* %1, align 1, !dbg !690
  call void @llvm.dbg.value(metadata i8 %2, metadata !679, metadata !DIExpression()), !dbg !688
  %cmp = icmp eq i8 %2, 114, !dbg !691
  %cmp3 = icmp eq i8 %2, 86, !dbg !692
  %or.cond = or i1 %cmp, %cmp3, !dbg !693
  %cmp7 = icmp eq i8 %2, 75, !dbg !694
  %or.cond1 = or i1 %or.cond, %cmp7, !dbg !693
  br i1 %or.cond1, label %if.then, label %if.end18, !dbg !693

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.demangle_component** %ret, metadata !680, metadata !DIExpression(DW_OP_deref)), !dbg !688
  %call = call fastcc %struct.demangle_component** @d_cv_qualifiers(%struct.d_info* %di, %struct.demangle_component** nonnull %ret, i32 0) #8, !dbg !695
  call void @llvm.dbg.value(metadata %struct.demangle_component** %call, metadata !682, metadata !DIExpression()), !dbg !696
  %cmp9 = icmp eq %struct.demangle_component** %call, null, !dbg !697
  br i1 %cmp9, label %cleanup262, label %if.end, !dbg !699

if.end:                                           ; preds = %if.then
  %call12 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !700
  store %struct.demangle_component* %call12, %struct.demangle_component** %call, align 8, !dbg !701
  %tobool = icmp eq %struct.demangle_component* %call12, null, !dbg !702
  br i1 %tobool, label %cleanup262, label %lor.lhs.false13, !dbg !704

lor.lhs.false13:                                  ; preds = %if.end
  %3 = load %struct.demangle_component*, %struct.demangle_component** %ret, align 8, !dbg !705
  call void @llvm.dbg.value(metadata %struct.demangle_component* %3, metadata !680, metadata !DIExpression()), !dbg !688
  %call14 = call fastcc i32 @d_add_substitution(%struct.d_info* %di, %struct.demangle_component* %3) #8, !dbg !706
  %tobool15 = icmp eq i32 %call14, 0, !dbg !706
  %4 = load %struct.demangle_component*, %struct.demangle_component** %ret, align 8, !dbg !707
  call void @llvm.dbg.value(metadata %struct.demangle_component* %4, metadata !680, metadata !DIExpression()), !dbg !688
  %spec.select5 = select i1 %tobool15, %struct.demangle_component* null, %struct.demangle_component* %4, !dbg !708
  br label %cleanup262, !dbg !708

if.end18:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !681, metadata !DIExpression()), !dbg !688
  %conv19 = sext i8 %2 to i32, !dbg !709
  switch i32 %conv19, label %cleanup262 [
    i32 97, label %sw.bb
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 106, label %sw.bb
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 115, label %sw.bb
    i32 116, label %sw.bb
    i32 118, label %sw.bb
    i32 119, label %sw.bb
    i32 120, label %sw.bb
    i32 121, label %sw.bb
    i32 122, label %sw.bb
    i32 117, label %sw.bb23
    i32 70, label %sw.bb28
    i32 48, label %sw.bb30
    i32 49, label %sw.bb30
    i32 50, label %sw.bb30
    i32 51, label %sw.bb30
    i32 52, label %sw.bb30
    i32 53, label %sw.bb30
    i32 54, label %sw.bb30
    i32 55, label %sw.bb30
    i32 56, label %sw.bb30
    i32 57, label %sw.bb30
    i32 78, label %sw.bb30
    i32 90, label %sw.bb30
    i32 65, label %sw.bb32
    i32 77, label %sw.bb34
    i32 84, label %sw.bb36
    i32 83, label %sw.bb50
    i32 79, label %sw.bb92
    i32 80, label %sw.bb97
    i32 82, label %sw.bb102
    i32 67, label %sw.bb107
    i32 71, label %sw.bb112
    i32 85, label %sw.bb117
    i32 68, label %sw.bb123
  ], !dbg !710

sw.bb:                                            ; preds = %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18
  %conv20 = sext i8 %2 to i64, !dbg !711
  %sub = add nsw i64 %conv20, -97, !dbg !712
  %arrayidx = getelementptr inbounds [32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 %sub, !dbg !713
  %call21 = tail call fastcc %struct.demangle_component* @d_make_builtin_type(%struct.d_info* %di, %struct.demangle_builtin_type_info* nonnull %arrayidx) #8, !dbg !714
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call21, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call21, %struct.demangle_component** %ret, align 8, !dbg !715
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call21, metadata !680, metadata !DIExpression()), !dbg !688
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call21, i64 0, i32 1, !dbg !716
  %type = bitcast %union.anon* %u to %struct.demangle_builtin_type_info**, !dbg !717
  %5 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type, align 8, !dbg !717
  %len = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %5, i64 0, i32 1, !dbg !718
  %6 = load i32, i32* %len, align 8, !dbg !718
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !719
  %7 = load i32, i32* %expansion, align 8, !dbg !720
  %add = add nsw i32 %7, %6, !dbg !720
  store i32 %add, i32* %expansion, align 8, !dbg !720
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !688
  %8 = load i8*, i8** %n, align 8, !dbg !721
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1, !dbg !721
  store i8* %add.ptr, i8** %n, align 8, !dbg !721
  br label %sw.epilog254, !dbg !722

sw.bb23:                                          ; preds = %if.end18
  %add.ptr25 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !723
  store i8* %add.ptr25, i8** %n, align 8, !dbg !723
  %call26 = tail call fastcc %struct.demangle_component* @d_source_name(%struct.d_info* %di) #8, !dbg !724
  %call27 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 36, %struct.demangle_component* %call26, %struct.demangle_component* null) #8, !dbg !725
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call27, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call27, %struct.demangle_component** %ret, align 8, !dbg !726
  br label %sw.epilog254, !dbg !727

sw.bb28:                                          ; preds = %if.end18
  %call29 = tail call fastcc %struct.demangle_component* @d_function_type(%struct.d_info* %di) #8, !dbg !728
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call29, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call29, %struct.demangle_component** %ret, align 8, !dbg !729
  br label %sw.epilog254, !dbg !730

sw.bb30:                                          ; preds = %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18
  %call31 = tail call fastcc %struct.demangle_component* @d_class_enum_type(%struct.d_info* %di) #8, !dbg !731
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call31, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call31, %struct.demangle_component** %ret, align 8, !dbg !732
  br label %sw.epilog254, !dbg !733

sw.bb32:                                          ; preds = %if.end18
  %call33 = tail call fastcc %struct.demangle_component* @d_array_type(%struct.d_info* %di) #8, !dbg !734
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call33, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call33, %struct.demangle_component** %ret, align 8, !dbg !735
  br label %sw.epilog254, !dbg !736

sw.bb34:                                          ; preds = %if.end18
  %call35 = tail call fastcc %struct.demangle_component* @d_pointer_to_member_type(%struct.d_info* %di) #8, !dbg !737
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call35, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call35, %struct.demangle_component** %ret, align 8, !dbg !738
  br label %sw.epilog254, !dbg !739

sw.bb36:                                          ; preds = %if.end18
  %call37 = tail call fastcc %struct.demangle_component* @d_template_param(%struct.d_info* %di) #8, !dbg !740
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call37, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call37, %struct.demangle_component** %ret, align 8, !dbg !741
  %9 = load i8*, i8** %n, align 8, !dbg !742
  %10 = load i8, i8* %9, align 1, !dbg !742
  %cmp40 = icmp eq i8 %10, 73, !dbg !744
  br i1 %cmp40, label %if.then42, label %sw.epilog254, !dbg !745

if.then42:                                        ; preds = %sw.bb36
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call37, metadata !680, metadata !DIExpression()), !dbg !688
  %call43 = tail call fastcc i32 @d_add_substitution(%struct.d_info* %di, %struct.demangle_component* %call37) #8, !dbg !746
  %tobool44 = icmp eq i32 %call43, 0, !dbg !746
  br i1 %tobool44, label %cleanup262, label %if.end46, !dbg !749

if.end46:                                         ; preds = %if.then42
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call37, metadata !680, metadata !DIExpression()), !dbg !688
  %call47 = tail call fastcc %struct.demangle_component* @d_template_args(%struct.d_info* %di) #8, !dbg !750
  %call48 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 4, %struct.demangle_component* %call37, %struct.demangle_component* %call47) #8, !dbg !751
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call48, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call48, %struct.demangle_component** %ret, align 8, !dbg !752
  br label %sw.epilog254, !dbg !753

sw.bb50:                                          ; preds = %if.end18
  %arrayidx52 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !754
  %11 = load i8, i8* %arrayidx52, align 1, !dbg !754
  call void @llvm.dbg.value(metadata i8 %11, metadata !685, metadata !DIExpression()), !dbg !755
  %.off = add i8 %11, -48, !dbg !756
  %12 = icmp ult i8 %.off, 10, !dbg !756
  %cmp61 = icmp eq i8 %11, 95, !dbg !758
  %or.cond3 = or i1 %12, %cmp61, !dbg !756
  br i1 %or.cond3, label %if.then71, label %lor.lhs.false63, !dbg !756

lor.lhs.false63:                                  ; preds = %sw.bb50
  %.off13 = add i8 %11, -65, !dbg !759
  %13 = icmp ult i8 %.off13, 26, !dbg !759
  br i1 %13, label %if.then71, label %if.else81, !dbg !759

if.then71:                                        ; preds = %lor.lhs.false63, %sw.bb50
  %call72 = tail call fastcc %struct.demangle_component* @d_substitution(%struct.d_info* %di, i32 0) #8, !dbg !760
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call72, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call72, %struct.demangle_component** %ret, align 8, !dbg !762
  %14 = load i8*, i8** %n, align 8, !dbg !763
  %15 = load i8, i8* %14, align 1, !dbg !763
  %cmp75 = icmp eq i8 %15, 73, !dbg !765
  br i1 %cmp75, label %if.then77, label %sw.epilog254, !dbg !766

if.then77:                                        ; preds = %if.then71
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call72, metadata !680, metadata !DIExpression()), !dbg !688
  %call78 = tail call fastcc %struct.demangle_component* @d_template_args(%struct.d_info* %di) #8, !dbg !767
  %call79 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 4, %struct.demangle_component* %call72, %struct.demangle_component* %call78) #8, !dbg !768
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call79, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call79, %struct.demangle_component** %ret, align 8, !dbg !769
  br label %sw.epilog254, !dbg !770

if.else81:                                        ; preds = %lor.lhs.false63
  %call82 = tail call fastcc %struct.demangle_component* @d_class_enum_type(%struct.d_info* %di) #8, !dbg !771
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call82, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call82, %struct.demangle_component** %ret, align 8, !dbg !773
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call82, metadata !680, metadata !DIExpression()), !dbg !688
  %cmp83 = icmp eq %struct.demangle_component* %call82, null, !dbg !774
  br i1 %cmp83, label %sw.epilog254, label %land.lhs.true85, !dbg !776

land.lhs.true85:                                  ; preds = %if.else81
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call82, metadata !680, metadata !DIExpression()), !dbg !688
  %type86 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call82, i64 0, i32 0, !dbg !777
  %16 = load i32, i32* %type86, align 8, !dbg !777
  %cmp87 = icmp ne i32 %16, 22, !dbg !778
  br label %sw.epilog254, !dbg !779

sw.bb92:                                          ; preds = %if.end18
  %add.ptr94 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !780
  store i8* %add.ptr94, i8** %n, align 8, !dbg !780
  %call95 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !781
  %call96 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 32, %struct.demangle_component* %call95, %struct.demangle_component* null) #8, !dbg !782
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call96, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call96, %struct.demangle_component** %ret, align 8, !dbg !783
  br label %sw.epilog254, !dbg !784

sw.bb97:                                          ; preds = %if.end18
  %add.ptr99 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !785
  store i8* %add.ptr99, i8** %n, align 8, !dbg !785
  %call100 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !786
  %call101 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 30, %struct.demangle_component* %call100, %struct.demangle_component* null) #8, !dbg !787
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call101, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call101, %struct.demangle_component** %ret, align 8, !dbg !788
  br label %sw.epilog254, !dbg !789

sw.bb102:                                         ; preds = %if.end18
  %add.ptr104 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !790
  store i8* %add.ptr104, i8** %n, align 8, !dbg !790
  %call105 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !791
  %call106 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 31, %struct.demangle_component* %call105, %struct.demangle_component* null) #8, !dbg !792
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call106, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call106, %struct.demangle_component** %ret, align 8, !dbg !793
  br label %sw.epilog254, !dbg !794

sw.bb107:                                         ; preds = %if.end18
  %add.ptr109 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !795
  store i8* %add.ptr109, i8** %n, align 8, !dbg !795
  %call110 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !796
  %call111 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 33, %struct.demangle_component* %call110, %struct.demangle_component* null) #8, !dbg !797
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call111, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call111, %struct.demangle_component** %ret, align 8, !dbg !798
  br label %sw.epilog254, !dbg !799

sw.bb112:                                         ; preds = %if.end18
  %add.ptr114 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !800
  store i8* %add.ptr114, i8** %n, align 8, !dbg !800
  %call115 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !801
  %call116 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 34, %struct.demangle_component* %call115, %struct.demangle_component* null) #8, !dbg !802
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call116, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call116, %struct.demangle_component** %ret, align 8, !dbg !803
  br label %sw.epilog254, !dbg !804

sw.bb117:                                         ; preds = %if.end18
  %add.ptr119 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !805
  store i8* %add.ptr119, i8** %n, align 8, !dbg !805
  %call120 = tail call fastcc %struct.demangle_component* @d_source_name(%struct.d_info* %di) #8, !dbg !806
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call120, metadata !680, metadata !DIExpression()), !dbg !688
  %call121 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !807
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call120, metadata !680, metadata !DIExpression()), !dbg !688
  %call122 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 29, %struct.demangle_component* %call121, %struct.demangle_component* %call120) #8, !dbg !808
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call122, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call122, %struct.demangle_component** %ret, align 8, !dbg !809
  br label %sw.epilog254, !dbg !810

sw.bb123:                                         ; preds = %if.end18
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !688
  %add.ptr125 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !811
  store i8* %add.ptr125, i8** %n, align 8, !dbg !811
  %17 = load i8, i8* %add.ptr125, align 1, !dbg !812
  %cmp128 = icmp eq i8 %17, 0, !dbg !812
  br i1 %cmp128, label %cond.end, label %cond.false, !dbg !812

cond.false:                                       ; preds = %sw.bb123
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 2, !dbg !812
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !812
  %18 = load i8, i8* %add.ptr125, align 1, !dbg !812
  %phitmp = sext i8 %18 to i32, !dbg !812
  br label %cond.end, !dbg !812

cond.end:                                         ; preds = %sw.bb123, %cond.false
  %cond = phi i32 [ %phitmp, %cond.false ], [ 0, %sw.bb123 ]
  switch i32 %cond, label %cleanup262 [
    i32 84, label %sw.bb134
    i32 116, label %sw.bb134
    i32 112, label %sw.bb154
    i32 102, label %sw.bb157
    i32 100, label %sw.bb165
    i32 101, label %sw.bb173
    i32 104, label %sw.bb181
    i32 115, label %sw.bb189
    i32 105, label %sw.bb197
    i32 70, label %sw.bb205
    i32 118, label %sw.bb251
  ], !dbg !813

sw.bb134:                                         ; preds = %cond.end, %cond.end
  %call135 = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !814
  %call136 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 59, %struct.demangle_component* %call135, %struct.demangle_component* null) #8, !dbg !816
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call136, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call136, %struct.demangle_component** %ret, align 8, !dbg !817
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call136, metadata !680, metadata !DIExpression()), !dbg !688
  %tobool137 = icmp eq %struct.demangle_component* %call136, null, !dbg !818
  br i1 %tobool137, label %sw.epilog254, label %land.lhs.true138, !dbg !820

land.lhs.true138:                                 ; preds = %sw.bb134
  %19 = load i8*, i8** %n, align 8, !dbg !821
  %20 = load i8, i8* %19, align 1, !dbg !821
  %cmp141 = icmp eq i8 %20, 0, !dbg !821
  br i1 %cmp141, label %cond.end148, label %cond.false144, !dbg !821

cond.false144:                                    ; preds = %land.lhs.true138
  %incdec.ptr146 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !821
  store i8* %incdec.ptr146, i8** %n, align 8, !dbg !821
  %21 = load i8, i8* %19, align 1, !dbg !821
  %phitmp12 = icmp ne i8 %21, 69, !dbg !821
  br label %cond.end148, !dbg !821

cond.end148:                                      ; preds = %land.lhs.true138, %cond.false144
  %cond149 = phi i1 [ %phitmp12, %cond.false144 ], [ true, %land.lhs.true138 ]
  br i1 %cond149, label %if.then152, label %sw.epilog254, !dbg !822

if.then152:                                       ; preds = %cond.end148
  call void @llvm.dbg.value(metadata %struct.demangle_component* null, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* null, %struct.demangle_component** %ret, align 8, !dbg !823
  br label %sw.epilog254, !dbg !824

sw.bb154:                                         ; preds = %cond.end
  %call155 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !825
  %call156 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 65, %struct.demangle_component* %call155, %struct.demangle_component* null) #8, !dbg !826
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call156, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call156, %struct.demangle_component** %ret, align 8, !dbg !827
  br label %sw.epilog254, !dbg !828

sw.bb157:                                         ; preds = %cond.end
  %call158 = tail call fastcc %struct.demangle_component* @d_make_builtin_type(%struct.d_info* %di, %struct.demangle_builtin_type_info* getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 26)) #8, !dbg !829
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call158, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call158, %struct.demangle_component** %ret, align 8, !dbg !830
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call158, metadata !680, metadata !DIExpression()), !dbg !688
  %u159 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call158, i64 0, i32 1, !dbg !831
  %type161 = bitcast %union.anon* %u159 to %struct.demangle_builtin_type_info**, !dbg !832
  %22 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type161, align 8, !dbg !832
  %len162 = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %22, i64 0, i32 1, !dbg !833
  %23 = load i32, i32* %len162, align 8, !dbg !833
  %expansion163 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !834
  %24 = load i32, i32* %expansion163, align 8, !dbg !835
  %add164 = add nsw i32 %24, %23, !dbg !835
  store i32 %add164, i32* %expansion163, align 8, !dbg !835
  br label %sw.epilog254, !dbg !836

sw.bb165:                                         ; preds = %cond.end
  %call166 = tail call fastcc %struct.demangle_component* @d_make_builtin_type(%struct.d_info* %di, %struct.demangle_builtin_type_info* getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 27)) #8, !dbg !837
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call166, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call166, %struct.demangle_component** %ret, align 8, !dbg !838
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call166, metadata !680, metadata !DIExpression()), !dbg !688
  %u167 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call166, i64 0, i32 1, !dbg !839
  %type169 = bitcast %union.anon* %u167 to %struct.demangle_builtin_type_info**, !dbg !840
  %25 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type169, align 8, !dbg !840
  %len170 = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %25, i64 0, i32 1, !dbg !841
  %26 = load i32, i32* %len170, align 8, !dbg !841
  %expansion171 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !842
  %27 = load i32, i32* %expansion171, align 8, !dbg !843
  %add172 = add nsw i32 %27, %26, !dbg !843
  store i32 %add172, i32* %expansion171, align 8, !dbg !843
  br label %sw.epilog254, !dbg !844

sw.bb173:                                         ; preds = %cond.end
  %call174 = tail call fastcc %struct.demangle_component* @d_make_builtin_type(%struct.d_info* %di, %struct.demangle_builtin_type_info* getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 28)) #8, !dbg !845
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call174, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call174, %struct.demangle_component** %ret, align 8, !dbg !846
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call174, metadata !680, metadata !DIExpression()), !dbg !688
  %u175 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call174, i64 0, i32 1, !dbg !847
  %type177 = bitcast %union.anon* %u175 to %struct.demangle_builtin_type_info**, !dbg !848
  %28 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type177, align 8, !dbg !848
  %len178 = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %28, i64 0, i32 1, !dbg !849
  %29 = load i32, i32* %len178, align 8, !dbg !849
  %expansion179 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !850
  %30 = load i32, i32* %expansion179, align 8, !dbg !851
  %add180 = add nsw i32 %30, %29, !dbg !851
  store i32 %add180, i32* %expansion179, align 8, !dbg !851
  br label %sw.epilog254, !dbg !852

sw.bb181:                                         ; preds = %cond.end
  %call182 = tail call fastcc %struct.demangle_component* @d_make_builtin_type(%struct.d_info* %di, %struct.demangle_builtin_type_info* getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 29)) #8, !dbg !853
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call182, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call182, %struct.demangle_component** %ret, align 8, !dbg !854
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call182, metadata !680, metadata !DIExpression()), !dbg !688
  %u183 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call182, i64 0, i32 1, !dbg !855
  %type185 = bitcast %union.anon* %u183 to %struct.demangle_builtin_type_info**, !dbg !856
  %31 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type185, align 8, !dbg !856
  %len186 = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %31, i64 0, i32 1, !dbg !857
  %32 = load i32, i32* %len186, align 8, !dbg !857
  %expansion187 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !858
  %33 = load i32, i32* %expansion187, align 8, !dbg !859
  %add188 = add nsw i32 %33, %32, !dbg !859
  store i32 %add188, i32* %expansion187, align 8, !dbg !859
  br label %sw.epilog254, !dbg !860

sw.bb189:                                         ; preds = %cond.end
  %call190 = tail call fastcc %struct.demangle_component* @d_make_builtin_type(%struct.d_info* %di, %struct.demangle_builtin_type_info* getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 30)) #8, !dbg !861
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call190, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call190, %struct.demangle_component** %ret, align 8, !dbg !862
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call190, metadata !680, metadata !DIExpression()), !dbg !688
  %u191 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call190, i64 0, i32 1, !dbg !863
  %type193 = bitcast %union.anon* %u191 to %struct.demangle_builtin_type_info**, !dbg !864
  %34 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type193, align 8, !dbg !864
  %len194 = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %34, i64 0, i32 1, !dbg !865
  %35 = load i32, i32* %len194, align 8, !dbg !865
  %expansion195 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !866
  %36 = load i32, i32* %expansion195, align 8, !dbg !867
  %add196 = add nsw i32 %36, %35, !dbg !867
  store i32 %add196, i32* %expansion195, align 8, !dbg !867
  br label %sw.epilog254, !dbg !868

sw.bb197:                                         ; preds = %cond.end
  %call198 = tail call fastcc %struct.demangle_component* @d_make_builtin_type(%struct.d_info* %di, %struct.demangle_builtin_type_info* getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 31)) #8, !dbg !869
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call198, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call198, %struct.demangle_component** %ret, align 8, !dbg !870
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call198, metadata !680, metadata !DIExpression()), !dbg !688
  %u199 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call198, i64 0, i32 1, !dbg !871
  %type201 = bitcast %union.anon* %u199 to %struct.demangle_builtin_type_info**, !dbg !872
  %37 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type201, align 8, !dbg !872
  %len202 = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %37, i64 0, i32 1, !dbg !873
  %38 = load i32, i32* %len202, align 8, !dbg !873
  %expansion203 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !874
  %39 = load i32, i32* %expansion203, align 8, !dbg !875
  %add204 = add nsw i32 %39, %38, !dbg !875
  store i32 %add204, i32* %expansion203, align 8, !dbg !875
  br label %sw.epilog254, !dbg !876

sw.bb205:                                         ; preds = %cond.end
  %call206 = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !877
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call206, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call206, %struct.demangle_component** %ret, align 8, !dbg !878
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call206, metadata !680, metadata !DIExpression()), !dbg !688
  %type207 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call206, i64 0, i32 0, !dbg !879
  store i32 40, i32* %type207, align 8, !dbg !880
  %40 = load i8*, i8** %n, align 8, !dbg !881
  %41 = load i8, i8* %40, align 1, !dbg !881
  %cmp210 = icmp sgt i8 %41, 47, !dbg !881
  br i1 %cmp210, label %land.rhs, label %land.end, !dbg !881

land.rhs:                                         ; preds = %sw.bb205
  %cmp214 = icmp slt i8 %41, 58, !dbg !881
  %phitmp7 = zext i1 %cmp214 to i16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb205
  %42 = phi i16 [ 0, %sw.bb205 ], [ %phitmp7, %land.rhs ]
  %43 = load %struct.demangle_component*, %struct.demangle_component** %ret, align 8, !dbg !883
  call void @llvm.dbg.value(metadata %struct.demangle_component* %43, metadata !680, metadata !DIExpression()), !dbg !688
  %accum = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %43, i64 0, i32 1, i32 0, i32 1, !dbg !884
  %44 = bitcast i32* %accum to i16*, !dbg !884
  store i16 %42, i16* %44, align 8, !dbg !885
  %tobool218 = icmp eq i16 %42, 0, !dbg !885
  br i1 %tobool218, label %if.end221, label %if.then219, !dbg !886

if.then219:                                       ; preds = %land.end
  %call220 = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !887
  br label %if.end221, !dbg !887

if.end221:                                        ; preds = %land.end, %if.then219
  %call222 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !888
  call void @llvm.dbg.value(metadata %struct.demangle_component* %43, metadata !680, metadata !DIExpression()), !dbg !688
  %u223 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %43, i64 0, i32 1, !dbg !889
  %length = bitcast %union.anon* %u223 to %struct.demangle_component**, !dbg !890
  store %struct.demangle_component* %call222, %struct.demangle_component** %length, align 8, !dbg !891
  call void @llvm.dbg.value(metadata %struct.demangle_component* %43, metadata !680, metadata !DIExpression()), !dbg !688
  %cmp228 = icmp eq %struct.demangle_component* %call222, null, !dbg !892
  br i1 %cmp228, label %cleanup262, label %if.end231, !dbg !894

if.end231:                                        ; preds = %if.end221
  %call232 = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !895
  %45 = load i8*, i8** %n, align 8, !dbg !896
  %46 = load i8, i8* %45, align 1, !dbg !896
  %cmp235 = icmp eq i8 %46, 0, !dbg !896
  br i1 %cmp235, label %cond.end242, label %cond.false238, !dbg !896

cond.false238:                                    ; preds = %if.end231
  %incdec.ptr240 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !896
  store i8* %incdec.ptr240, i8** %n, align 8, !dbg !896
  %47 = load i8, i8* %45, align 1, !dbg !896
  %phitmp10 = icmp eq i8 %47, 115, !dbg !896
  %phitmp11 = zext i1 %phitmp10 to i16, !dbg !896
  br label %cond.end242, !dbg !896

cond.end242:                                      ; preds = %if.end231, %cond.false238
  %cond243 = phi i16 [ %phitmp11, %cond.false238 ], [ 0, %if.end231 ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %43, metadata !680, metadata !DIExpression()), !dbg !688
  %s_fixed250 = bitcast %union.anon* %u223 to %struct.anon.2*, !dbg !897
  %sat = getelementptr inbounds %struct.anon.2, %struct.anon.2* %s_fixed250, i64 0, i32 2, !dbg !898
  store i16 %cond243, i16* %sat, align 2, !dbg !899
  br label %sw.epilog254, !dbg !900

sw.bb251:                                         ; preds = %cond.end
  %call252 = tail call fastcc %struct.demangle_component* @d_vector_type(%struct.d_info* %di) #8, !dbg !901
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call252, metadata !680, metadata !DIExpression()), !dbg !688
  store %struct.demangle_component* %call252, %struct.demangle_component** %ret, align 8, !dbg !902
  br label %sw.epilog254, !dbg !903

sw.epilog254:                                     ; preds = %if.else81, %sw.bb134, %land.lhs.true85, %sw.bb154, %sw.bb157, %sw.bb165, %sw.bb173, %sw.bb181, %sw.bb189, %sw.bb197, %cond.end242, %sw.bb251, %if.then152, %cond.end148, %if.then71, %if.then77, %sw.bb36, %if.end46, %sw.bb117, %sw.bb112, %sw.bb107, %sw.bb102, %sw.bb97, %sw.bb92, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb23, %sw.bb
  %48 = phi %struct.demangle_component* [ %call122, %sw.bb117 ], [ %call116, %sw.bb112 ], [ %call111, %sw.bb107 ], [ %call106, %sw.bb102 ], [ %call101, %sw.bb97 ], [ %call96, %sw.bb92 ], [ %call35, %sw.bb34 ], [ %call33, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %call27, %sw.bb23 ], [ %call21, %sw.bb ], [ %call48, %if.end46 ], [ %call37, %sw.bb36 ], [ %call79, %if.then77 ], [ %call72, %if.then71 ], [ null, %if.else81 ], [ %call82, %land.lhs.true85 ], [ null, %sw.bb134 ], [ %call136, %cond.end148 ], [ null, %if.then152 ], [ %call252, %sw.bb251 ], [ %43, %cond.end242 ], [ %call198, %sw.bb197 ], [ %call190, %sw.bb189 ], [ %call182, %sw.bb181 ], [ %call174, %sw.bb173 ], [ %call166, %sw.bb165 ], [ %call158, %sw.bb157 ], [ %call156, %sw.bb154 ]
  %can_subst.3 = phi i1 [ true, %sw.bb117 ], [ true, %sw.bb112 ], [ true, %sw.bb107 ], [ true, %sw.bb102 ], [ true, %sw.bb97 ], [ true, %sw.bb92 ], [ true, %sw.bb34 ], [ true, %sw.bb32 ], [ true, %sw.bb30 ], [ true, %sw.bb28 ], [ true, %sw.bb23 ], [ false, %sw.bb ], [ true, %if.end46 ], [ true, %sw.bb36 ], [ true, %if.then77 ], [ false, %if.then71 ], [ true, %if.else81 ], [ %cmp87, %land.lhs.true85 ], [ false, %sw.bb134 ], [ false, %cond.end148 ], [ false, %if.then152 ], [ false, %sw.bb251 ], [ false, %cond.end242 ], [ false, %sw.bb197 ], [ false, %sw.bb189 ], [ false, %sw.bb181 ], [ false, %sw.bb173 ], [ false, %sw.bb165 ], [ false, %sw.bb157 ], [ false, %sw.bb154 ]
  br i1 %can_subst.3, label %if.then256, label %if.end261, !dbg !904

if.then256:                                       ; preds = %sw.epilog254
  call void @llvm.dbg.value(metadata %struct.demangle_component* %48, metadata !680, metadata !DIExpression()), !dbg !688
  %call257 = tail call fastcc i32 @d_add_substitution(%struct.d_info* %di, %struct.demangle_component* %48) #8, !dbg !905
  %tobool258 = icmp eq i32 %call257, 0, !dbg !905
  br i1 %tobool258, label %cleanup262, label %if.end261, !dbg !909

if.end261:                                        ; preds = %if.then256, %sw.epilog254
  call void @llvm.dbg.value(metadata %struct.demangle_component* %48, metadata !680, metadata !DIExpression()), !dbg !688
  br label %cleanup262, !dbg !910

cleanup262:                                       ; preds = %if.end, %if.then42, %if.then256, %lor.lhs.false13, %if.end18, %cond.end, %if.end221, %if.then, %if.end261
  %retval.1 = phi %struct.demangle_component* [ %48, %if.end261 ], [ null, %if.then ], [ null, %if.end ], [ null, %if.then42 ], [ null, %if.end221 ], [ null, %cond.end ], [ null, %if.end18 ], [ null, %if.then256 ], [ %spec.select5, %lor.lhs.false13 ], !dbg !688
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !911
  ret %struct.demangle_component* %retval.1, !dbg !911
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component** @d_cv_qualifiers(%struct.d_info* %di, %struct.demangle_component** %pret, i32 %member_fn) unnamed_addr #5 !dbg !912 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !916, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata %struct.demangle_component** %pret, metadata !917, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata i32 %member_fn, metadata !918, metadata !DIExpression()), !dbg !922
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !923
  %0 = load i8*, i8** %n, align 8, !dbg !923
  %1 = load i8, i8* %0, align 1, !dbg !923
  call void @llvm.dbg.value(metadata i8 %1, metadata !919, metadata !DIExpression()), !dbg !922
  %tobool18 = icmp ne i32 %member_fn, 0, !dbg !924
  %cond26 = select i1 %tobool18, i32 28, i32 25, !dbg !927
  %expansion27 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !927
  %cond19 = select i1 %tobool18, i32 27, i32 24, !dbg !929
  %tobool = icmp eq i32 %member_fn, 0, !dbg !931
  %cond = select i1 %tobool, i32 23, i32 26, !dbg !931
  br label %while.cond, !dbg !933

while.cond:                                       ; preds = %cleanup, %entry
  %peek.0 = phi i8 [ %1, %entry ], [ %peek.1, %cleanup ], !dbg !934
  %pret.addr.0 = phi %struct.demangle_component** [ %pret, %entry ], [ %pret.addr.1, %cleanup ]
  call void @llvm.dbg.value(metadata %struct.demangle_component** %pret.addr.0, metadata !917, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata i8 %peek.0, metadata !919, metadata !DIExpression()), !dbg !922
  %cmp = icmp eq i8 %peek.0, 114, !dbg !935
  %cmp3 = icmp eq i8 %peek.0, 86, !dbg !936
  %or.cond = or i1 %cmp, %cmp3, !dbg !937
  %cmp6 = icmp eq i8 %peek.0, 75, !dbg !938
  %or.cond2 = or i1 %or.cond, %cmp6, !dbg !937
  br i1 %or.cond2, label %while.body, label %cleanup37, !dbg !937

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %n, align 8, !dbg !939
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !939
  store i8* %add.ptr, i8** %n, align 8, !dbg !939
  br i1 %cmp, label %if.then, label %if.else, !dbg !940

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata i32 %cond, metadata !920, metadata !DIExpression()), !dbg !941
  %3 = load i32, i32* %expansion27, align 8, !dbg !942
  %add = add i32 %3, 9, !dbg !942
  store i32 %add, i32* %expansion27, align 8, !dbg !942
  br label %if.end31, !dbg !943

if.else:                                          ; preds = %while.body
  br i1 %cmp3, label %if.then17, label %if.else24, !dbg !944

if.then17:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 %cond19, metadata !920, metadata !DIExpression()), !dbg !941
  %4 = load i32, i32* %expansion27, align 8, !dbg !945
  %add22 = add i32 %4, 9, !dbg !945
  store i32 %add22, i32* %expansion27, align 8, !dbg !945
  br label %if.end31, !dbg !946

if.else24:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 %cond26, metadata !920, metadata !DIExpression()), !dbg !941
  %5 = load i32, i32* %expansion27, align 8, !dbg !947
  %add29 = add i32 %5, 6, !dbg !947
  store i32 %add29, i32* %expansion27, align 8, !dbg !947
  br label %if.end31

if.end31:                                         ; preds = %if.then17, %if.else24, %if.then
  %t.1 = phi i32 [ %cond, %if.then ], [ %cond19, %if.then17 ], [ %cond26, %if.else24 ], !dbg !948
  call void @llvm.dbg.value(metadata i32 %t.1, metadata !920, metadata !DIExpression()), !dbg !941
  %call = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 %t.1, %struct.demangle_component* null, %struct.demangle_component* null) #8, !dbg !949
  store %struct.demangle_component* %call, %struct.demangle_component** %pret.addr.0, align 8, !dbg !950
  %cmp32 = icmp eq %struct.demangle_component* %call, null, !dbg !951
  br i1 %cmp32, label %cleanup, label %if.end35, !dbg !953

if.end35:                                         ; preds = %if.end31
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, !dbg !954
  %left = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !954
  call void @llvm.dbg.value(metadata %struct.demangle_component** %left, metadata !917, metadata !DIExpression()), !dbg !922
  %6 = load i8*, i8** %n, align 8, !dbg !955
  %7 = load i8, i8* %6, align 1, !dbg !955
  call void @llvm.dbg.value(metadata i8 %7, metadata !919, metadata !DIExpression()), !dbg !922
  br label %cleanup, !dbg !956

cleanup:                                          ; preds = %if.end31, %if.end35
  %peek.1 = phi i8 [ %7, %if.end35 ], [ %peek.0, %if.end31 ], !dbg !922
  %pret.addr.1 = phi %struct.demangle_component** [ %left, %if.end35 ], [ %pret.addr.0, %if.end31 ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end35 ], [ false, %if.end31 ]
  call void @llvm.dbg.value(metadata %struct.demangle_component** %pret.addr.1, metadata !917, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata i8 %peek.1, metadata !919, metadata !DIExpression()), !dbg !922
  br i1 %cleanup.dest.slot.0, label %while.cond, label %cleanup37, !llvm.loop !957

cleanup37:                                        ; preds = %while.cond, %cleanup
  %retval.2 = phi %struct.demangle_component** [ null, %cleanup ], [ %pret.addr.0, %while.cond ], !dbg !922
  ret %struct.demangle_component** %retval.2, !dbg !958
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @d_add_substitution(%struct.d_info* %di, %struct.demangle_component* %dc) unnamed_addr #5 !dbg !959 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !963, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !964, metadata !DIExpression()), !dbg !965
  %cmp = icmp eq %struct.demangle_component* %dc, null, !dbg !966
  br i1 %cmp, label %return, label %if.end, !dbg !968

if.end:                                           ; preds = %entry
  %next_sub = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 8, !dbg !969
  %0 = load i32, i32* %next_sub, align 8, !dbg !969
  %num_subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 9, !dbg !971
  %1 = load i32, i32* %num_subs, align 4, !dbg !971
  %cmp1 = icmp slt i32 %0, %1, !dbg !972
  br i1 %cmp1, label %if.end3, label %return, !dbg !973

if.end3:                                          ; preds = %if.end
  %subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 7, !dbg !974
  %2 = load %struct.demangle_component**, %struct.demangle_component*** %subs, align 8, !dbg !974
  %idxprom = sext i32 %0 to i64, !dbg !975
  %arrayidx = getelementptr inbounds %struct.demangle_component*, %struct.demangle_component** %2, i64 %idxprom, !dbg !975
  store %struct.demangle_component* %dc, %struct.demangle_component** %arrayidx, align 8, !dbg !976
  %3 = load i32, i32* %next_sub, align 8, !dbg !977
  %inc = add nsw i32 %3, 1, !dbg !977
  store i32 %inc, i32* %next_sub, align 8, !dbg !977
  br label %return, !dbg !978

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry ], [ 0, %if.end ], !dbg !965
  ret i32 %retval.0, !dbg !979
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_builtin_type(%struct.d_info* %di, %struct.demangle_builtin_type_info* %type) unnamed_addr #5 !dbg !980 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !984, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata %struct.demangle_builtin_type_info* %type, metadata !985, metadata !DIExpression()), !dbg !987
  %cmp = icmp eq %struct.demangle_builtin_type_info* %type, null, !dbg !988
  br i1 %cmp, label %cleanup, label %if.end, !dbg !990

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !991
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !986, metadata !DIExpression()), !dbg !987
  %cmp1 = icmp eq %struct.demangle_component* %call, null, !dbg !992
  br i1 %cmp1, label %cleanup, label %if.then2, !dbg !994

if.then2:                                         ; preds = %if.end
  %type3 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 0, !dbg !995
  store i32 35, i32* %type3, align 8, !dbg !997
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, !dbg !998
  %type4 = bitcast %union.anon* %u to %struct.demangle_builtin_type_info**, !dbg !999
  store %struct.demangle_builtin_type_info* %type, %struct.demangle_builtin_type_info** %type4, align 8, !dbg !1000
  br label %cleanup, !dbg !1001

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi %struct.demangle_component* [ null, %entry ], [ %call, %if.then2 ], [ null, %if.end ], !dbg !987
  ret %struct.demangle_component* %retval.0, !dbg !1002
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 %type, %struct.demangle_component* %left, %struct.demangle_component* %right) unnamed_addr #5 !dbg !1003 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1007, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata i32 %type, metadata !1008, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata %struct.demangle_component* %left, metadata !1009, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata %struct.demangle_component* %right, metadata !1010, metadata !DIExpression()), !dbg !1012
  switch i32 %type, label %cleanup [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 11, label %sw.bb
    i32 29, label %sw.bb
    i32 39, label %sw.bb
    i32 47, label %sw.bb
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 56, label %sw.bb
    i32 41, label %sw.bb
    i32 9, label %sw.bb2
    i32 10, label %sw.bb2
    i32 12, label %sw.bb2
    i32 13, label %sw.bb2
    i32 14, label %sw.bb2
    i32 15, label %sw.bb2
    i32 16, label %sw.bb2
    i32 17, label %sw.bb2
    i32 18, label %sw.bb2
    i32 19, label %sw.bb2
    i32 20, label %sw.bb2
    i32 21, label %sw.bb2
    i32 30, label %sw.bb2
    i32 31, label %sw.bb2
    i32 32, label %sw.bb2
    i32 33, label %sw.bb2
    i32 34, label %sw.bb2
    i32 36, label %sw.bb2
    i32 46, label %sw.bb2
    i32 55, label %sw.bb2
    i32 59, label %sw.bb2
    i32 65, label %sw.bb2
    i32 60, label %sw.bb2
    i32 61, label %sw.bb2
    i32 38, label %sw.bb6
    i32 37, label %sw.epilog
    i32 23, label %sw.epilog
    i32 24, label %sw.epilog
    i32 25, label %sw.epilog
    i32 26, label %sw.epilog
    i32 27, label %sw.epilog
    i32 28, label %sw.epilog
    i32 42, label %sw.epilog
    i32 43, label %sw.epilog
  ], !dbg !1013

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %cmp = icmp eq %struct.demangle_component* %left, null, !dbg !1014
  %cmp1 = icmp eq %struct.demangle_component* %right, null, !dbg !1017
  %or.cond = or i1 %cmp, %cmp1, !dbg !1018
  br i1 %or.cond, label %cleanup, label %sw.epilog, !dbg !1018

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %cmp3 = icmp eq %struct.demangle_component* %left, null, !dbg !1019
  br i1 %cmp3, label %cleanup, label %sw.epilog, !dbg !1021

sw.bb6:                                           ; preds = %entry
  %cmp7 = icmp eq %struct.demangle_component* %right, null, !dbg !1022
  br i1 %cmp7, label %cleanup, label %sw.epilog, !dbg !1024

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.bb6, %sw.bb2, %sw.bb
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !1025
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !1011, metadata !DIExpression()), !dbg !1012
  %cmp11 = icmp eq %struct.demangle_component* %call, null, !dbg !1026
  br i1 %cmp11, label %cleanup, label %if.then12, !dbg !1028

if.then12:                                        ; preds = %sw.epilog
  %type13 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 0, !dbg !1029
  store i32 %type, i32* %type13, align 8, !dbg !1031
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, !dbg !1032
  %left14 = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !1033
  store %struct.demangle_component* %left, %struct.demangle_component** %left14, align 8, !dbg !1034
  %right17 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, i32 0, i32 1, !dbg !1035
  %0 = bitcast i32* %right17 to %struct.demangle_component**, !dbg !1035
  store %struct.demangle_component* %right, %struct.demangle_component** %0, align 8, !dbg !1036
  br label %cleanup, !dbg !1037

cleanup:                                          ; preds = %sw.epilog, %if.then12, %entry, %sw.bb6, %sw.bb2, %sw.bb
  %retval.0 = phi %struct.demangle_component* [ null, %sw.bb ], [ null, %sw.bb2 ], [ null, %sw.bb6 ], [ null, %entry ], [ %call, %if.then12 ], [ null, %sw.epilog ], !dbg !1012
  ret %struct.demangle_component* %retval.0, !dbg !1038
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_source_name(%struct.d_info* %di) unnamed_addr #5 !dbg !1039 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1041, metadata !DIExpression()), !dbg !1044
  %call = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %call, metadata !1042, metadata !DIExpression()), !dbg !1044
  %cmp = icmp slt i64 %call, 1, !dbg !1046
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1048

if.end:                                           ; preds = %entry
  %conv = trunc i64 %call to i32, !dbg !1049
  %call1 = tail call fastcc %struct.demangle_component* @d_identifier(%struct.d_info* %di, i32 %conv) #8, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call1, metadata !1043, metadata !DIExpression()), !dbg !1044
  %last_name = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 11, !dbg !1051
  store %struct.demangle_component* %call1, %struct.demangle_component** %last_name, align 8, !dbg !1052
  br label %cleanup, !dbg !1053

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.demangle_component* [ %call1, %if.end ], [ null, %entry ], !dbg !1044
  ret %struct.demangle_component* %retval.0, !dbg !1054
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_function_type(%struct.d_info* %di) unnamed_addr #5 !dbg !1055 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1057, metadata !DIExpression()), !dbg !1059
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !1060
  %0 = load i8*, i8** %n, align 8, !dbg !1060
  %1 = load i8, i8* %0, align 1, !dbg !1060
  %cmp = icmp eq i8 %1, 70, !dbg !1060
  br i1 %cmp, label %cond.true, label %cleanup, !dbg !1062

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1060
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !1060
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !1063
  %cmp5 = icmp eq i8 %2, 89, !dbg !1065
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !1066

if.then7:                                         ; preds = %cond.true
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1067
  store i8* %add.ptr, i8** %n, align 8, !dbg !1067
  br label %if.end9, !dbg !1069

if.end9:                                          ; preds = %if.then7, %cond.true
  %call = tail call fastcc %struct.demangle_component* @d_bare_function_type(%struct.d_info* %di, i32 1) #8, !dbg !1070
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !1058, metadata !DIExpression()), !dbg !1059
  %3 = load i8*, i8** %n, align 8, !dbg !1071
  %4 = load i8, i8* %3, align 1, !dbg !1071
  %cmp12 = icmp eq i8 %4, 69, !dbg !1071
  br i1 %cmp12, label %cond.true14, label %cleanup, !dbg !1073

cond.true14:                                      ; preds = %if.end9
  %incdec.ptr16 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1071
  store i8* %incdec.ptr16, i8** %n, align 8, !dbg !1071
  br label %cleanup, !dbg !1074

cleanup:                                          ; preds = %if.end9, %entry, %cond.true14
  %retval.0 = phi %struct.demangle_component* [ %call, %cond.true14 ], [ null, %entry ], [ null, %if.end9 ], !dbg !1059
  ret %struct.demangle_component* %retval.0, !dbg !1075
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_class_enum_type(%struct.d_info* %di) unnamed_addr #5 !dbg !1076 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1078, metadata !DIExpression()), !dbg !1079
  %call = tail call fastcc %struct.demangle_component* @d_name(%struct.d_info* %di) #8, !dbg !1080
  ret %struct.demangle_component* %call, !dbg !1081
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_array_type(%struct.d_info* %di) unnamed_addr #5 !dbg !1082 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1084, metadata !DIExpression()), !dbg !1091
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !1092
  %0 = load i8*, i8** %n, align 8, !dbg !1092
  %1 = load i8, i8* %0, align 1, !dbg !1092
  %cmp = icmp eq i8 %1, 65, !dbg !1092
  br i1 %cmp, label %cond.true, label %cleanup50, !dbg !1094

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1092
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !1092
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !1095
  call void @llvm.dbg.value(metadata i8 %2, metadata !1085, metadata !DIExpression()), !dbg !1091
  %cmp5 = icmp eq i8 %2, 95, !dbg !1096
  br i1 %cmp5, label %if.end37, label %if.else, !dbg !1097

if.else:                                          ; preds = %cond.true
  %.off = add i8 %2, -48, !dbg !1098
  %3 = icmp ult i8 %.off, 10, !dbg !1098
  br i1 %3, label %if.then14, label %if.else30, !dbg !1098

if.then14:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1087, metadata !DIExpression()), !dbg !1099
  br label %do.body, !dbg !1100

do.body:                                          ; preds = %do.body, %if.then14
  %4 = phi i8* [ %add.ptr, %do.body ], [ %incdec.ptr, %if.then14 ], !dbg !1101
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1101
  store i8* %add.ptr, i8** %n, align 8, !dbg !1101
  %5 = load i8, i8* %add.ptr, align 1, !dbg !1103
  call void @llvm.dbg.value(metadata i8 %5, metadata !1085, metadata !DIExpression()), !dbg !1091
  %.off1 = add i8 %5, -48, !dbg !1104
  %6 = icmp ult i8 %.off1, 10, !dbg !1104
  br i1 %6, label %do.body, label %do.end, !dbg !1105, !llvm.loop !1106

do.end:                                           ; preds = %do.body
  %add.ptr.lcssa = phi i8* [ %add.ptr, %do.body ], !dbg !1101
  %7 = ptrtoint i8* %add.ptr.lcssa to i64, !dbg !1105
  %sub.ptr.rhs.cast = ptrtoint i8* %incdec.ptr to i64, !dbg !1108
  %sub.ptr.sub = sub i64 %7, %sub.ptr.rhs.cast, !dbg !1108
  %conv25 = trunc i64 %sub.ptr.sub to i32, !dbg !1109
  %call = tail call fastcc %struct.demangle_component* @d_make_name(%struct.d_info* %di, i8* nonnull %incdec.ptr, i32 %conv25) #8, !dbg !1110
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !1086, metadata !DIExpression()), !dbg !1091
  %cmp26 = icmp eq %struct.demangle_component* %call, null, !dbg !1111
  br i1 %cmp26, label %cleanup50, label %if.end37

if.else30:                                        ; preds = %if.else
  %call31 = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !1113
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call31, metadata !1086, metadata !DIExpression()), !dbg !1091
  %cmp32 = icmp eq %struct.demangle_component* %call31, null, !dbg !1115
  br i1 %cmp32, label %cleanup50, label %if.end37, !dbg !1117

if.end37:                                         ; preds = %do.end, %if.else30, %cond.true
  %dim.1 = phi %struct.demangle_component* [ null, %cond.true ], [ %call, %do.end ], [ %call31, %if.else30 ], !dbg !1118
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dim.1, metadata !1086, metadata !DIExpression()), !dbg !1091
  %8 = load i8*, i8** %n, align 8, !dbg !1119
  %9 = load i8, i8* %8, align 1, !dbg !1119
  %cmp40 = icmp eq i8 %9, 95, !dbg !1119
  br i1 %cmp40, label %cond.true42, label %cleanup50, !dbg !1121

cond.true42:                                      ; preds = %if.end37
  %incdec.ptr44 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1119
  store i8* %incdec.ptr44, i8** %n, align 8, !dbg !1119
  %call48 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !1122
  %call49 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 38, %struct.demangle_component* %dim.1, %struct.demangle_component* %call48) #8, !dbg !1123
  br label %cleanup50, !dbg !1124

cleanup50:                                        ; preds = %do.end, %if.end37, %if.else30, %entry, %cond.true42
  %retval.1 = phi %struct.demangle_component* [ %call49, %cond.true42 ], [ null, %do.end ], [ null, %entry ], [ null, %if.else30 ], [ null, %if.end37 ], !dbg !1091
  ret %struct.demangle_component* %retval.1, !dbg !1125
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_pointer_to_member_type(%struct.d_info* %di) unnamed_addr #5 !dbg !1126 {
entry:
  %mem = alloca %struct.demangle_component*, align 8
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1128, metadata !DIExpression()), !dbg !1132
  %0 = bitcast %struct.demangle_component** %mem to i8*, !dbg !1133
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !1133
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !1134
  %1 = load i8*, i8** %n, align 8, !dbg !1134
  %2 = load i8, i8* %1, align 1, !dbg !1134
  %cmp = icmp eq i8 %2, 77, !dbg !1134
  br i1 %cmp, label %cond.true, label %cleanup, !dbg !1136

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1134
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !1134
  %call = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !1137
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !1129, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata %struct.demangle_component** %mem, metadata !1130, metadata !DIExpression(DW_OP_deref)), !dbg !1132
  %call3 = call fastcc %struct.demangle_component** @d_cv_qualifiers(%struct.d_info* %di, %struct.demangle_component** nonnull %mem, i32 1) #8, !dbg !1138
  call void @llvm.dbg.value(metadata %struct.demangle_component** %call3, metadata !1131, metadata !DIExpression()), !dbg !1132
  %cmp4 = icmp eq %struct.demangle_component** %call3, null, !dbg !1139
  br i1 %cmp4, label %cleanup, label %if.end7, !dbg !1141

if.end7:                                          ; preds = %cond.true
  %call8 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !1142
  store %struct.demangle_component* %call8, %struct.demangle_component** %call3, align 8, !dbg !1143
  %cmp9 = icmp eq %struct.demangle_component* %call8, null, !dbg !1144
  br i1 %cmp9, label %cleanup, label %if.end12, !dbg !1146

if.end12:                                         ; preds = %if.end7
  %cmp13 = icmp eq %struct.demangle_component** %call3, %mem, !dbg !1147
  br i1 %cmp13, label %if.end21, label %land.lhs.true, !dbg !1149

land.lhs.true:                                    ; preds = %if.end12
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call8, i64 0, i32 0, !dbg !1150
  %3 = load i32, i32* %type, align 8, !dbg !1150
  %cmp15 = icmp eq i32 %3, 37, !dbg !1151
  br i1 %cmp15, label %if.end21, label %if.then17, !dbg !1152

if.then17:                                        ; preds = %land.lhs.true
  %4 = load %struct.demangle_component*, %struct.demangle_component** %mem, align 8, !dbg !1153
  call void @llvm.dbg.value(metadata %struct.demangle_component* %4, metadata !1130, metadata !DIExpression()), !dbg !1132
  %call18 = call fastcc i32 @d_add_substitution(%struct.d_info* %di, %struct.demangle_component* %4) #8, !dbg !1156
  %tobool = icmp eq i32 %call18, 0, !dbg !1156
  br i1 %tobool, label %cleanup, label %if.end21, !dbg !1157

if.end21:                                         ; preds = %if.then17, %land.lhs.true, %if.end12
  %5 = load %struct.demangle_component*, %struct.demangle_component** %mem, align 8, !dbg !1158
  call void @llvm.dbg.value(metadata %struct.demangle_component* %5, metadata !1130, metadata !DIExpression()), !dbg !1132
  %call22 = call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 39, %struct.demangle_component* %call, %struct.demangle_component* %5) #8, !dbg !1159
  br label %cleanup, !dbg !1160

cleanup:                                          ; preds = %if.then17, %if.end7, %cond.true, %entry, %if.end21
  %retval.0 = phi %struct.demangle_component* [ %call22, %if.end21 ], [ null, %entry ], [ null, %cond.true ], [ null, %if.end7 ], [ null, %if.then17 ], !dbg !1132
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !1161
  ret %struct.demangle_component* %retval.0, !dbg !1161
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_template_param(%struct.d_info* %di) unnamed_addr #5 !dbg !1162 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1164, metadata !DIExpression()), !dbg !1166
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !1167
  %0 = load i8*, i8** %n, align 8, !dbg !1167
  %1 = load i8, i8* %0, align 1, !dbg !1167
  %cmp = icmp eq i8 %1, 84, !dbg !1167
  br i1 %cmp, label %cond.true, label %cleanup, !dbg !1169

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1167
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !1167
  %call = tail call fastcc i64 @d_compact_number(%struct.d_info* %di) #8, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %call, metadata !1165, metadata !DIExpression()), !dbg !1166
  %cmp3 = icmp slt i64 %call, 0, !dbg !1171
  br i1 %cmp3, label %cleanup, label %if.end6, !dbg !1173

if.end6:                                          ; preds = %cond.true
  %did_subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 10, !dbg !1174
  %2 = load i32, i32* %did_subs, align 8, !dbg !1175
  %inc = add nsw i32 %2, 1, !dbg !1175
  store i32 %inc, i32* %did_subs, align 8, !dbg !1175
  %call7 = tail call fastcc %struct.demangle_component* @d_make_template_param(%struct.d_info* %di, i64 %call) #8, !dbg !1176
  br label %cleanup, !dbg !1177

cleanup:                                          ; preds = %cond.true, %entry, %if.end6
  %retval.0 = phi %struct.demangle_component* [ %call7, %if.end6 ], [ null, %entry ], [ null, %cond.true ], !dbg !1166
  ret %struct.demangle_component* %retval.0, !dbg !1178
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_template_args(%struct.d_info* %di) unnamed_addr #5 !dbg !1179 {
entry:
  %al = alloca %struct.demangle_component*, align 8
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1181, metadata !DIExpression()), !dbg !1187
  %0 = bitcast %struct.demangle_component** %al to i8*, !dbg !1188
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !1188
  %last_name = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 11, !dbg !1189
  %1 = bitcast %struct.demangle_component** %last_name to i64*, !dbg !1189
  %2 = load i64, i64* %1, align 8, !dbg !1189
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !1190
  %3 = load i8*, i8** %n, align 8, !dbg !1190
  %4 = load i8, i8* %3, align 1, !dbg !1190
  %cmp = icmp eq i8 %4, 73, !dbg !1190
  br i1 %cmp, label %cond.true, label %cleanup29, !dbg !1192

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1190
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !1190
  %5 = load i8, i8* %incdec.ptr, align 1, !dbg !1193
  %cmp5 = icmp eq i8 %5, 69, !dbg !1195
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !1196

if.then7:                                         ; preds = %cond.true
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 2, !dbg !1197
  store i8* %add.ptr, i8** %n, align 8, !dbg !1197
  %call = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 43, %struct.demangle_component* null, %struct.demangle_component* null) #8, !dbg !1199
  br label %cleanup29, !dbg !1200

if.end9:                                          ; preds = %cond.true
  call void @llvm.dbg.value(metadata %struct.demangle_component* null, metadata !1183, metadata !DIExpression()), !dbg !1187
  store %struct.demangle_component* null, %struct.demangle_component** %al, align 8, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.demangle_component** %al, metadata !1184, metadata !DIExpression()), !dbg !1187
  br label %while.cond, !dbg !1202

while.cond:                                       ; preds = %cleanup, %if.end9
  %pal.0 = phi %struct.demangle_component** [ %al, %if.end9 ], [ %pal.1, %cleanup ], !dbg !1203
  call void @llvm.dbg.value(metadata %struct.demangle_component** %pal.0, metadata !1184, metadata !DIExpression()), !dbg !1187
  %call10 = tail call fastcc %struct.demangle_component* @d_template_arg(%struct.d_info* %di) #8, !dbg !1204
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call10, metadata !1185, metadata !DIExpression()), !dbg !1205
  %cmp11 = icmp eq %struct.demangle_component* %call10, null, !dbg !1206
  br i1 %cmp11, label %cleanup, label %if.end14, !dbg !1208

if.end14:                                         ; preds = %while.cond
  %call15 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 43, %struct.demangle_component* nonnull %call10, %struct.demangle_component* null) #8, !dbg !1209
  store %struct.demangle_component* %call15, %struct.demangle_component** %pal.0, align 8, !dbg !1210
  %cmp16 = icmp eq %struct.demangle_component* %call15, null, !dbg !1211
  br i1 %cmp16, label %cleanup, label %if.end19, !dbg !1213

if.end19:                                         ; preds = %if.end14
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call15, i64 0, i32 1, i32 0, i32 1, !dbg !1214
  %6 = bitcast i32* %right to %struct.demangle_component**, !dbg !1214
  call void @llvm.dbg.value(metadata %struct.demangle_component** %6, metadata !1184, metadata !DIExpression()), !dbg !1187
  %7 = load i8*, i8** %n, align 8, !dbg !1215
  %8 = load i8, i8* %7, align 1, !dbg !1215
  %cmp22 = icmp eq i8 %8, 69, !dbg !1217
  br i1 %cmp22, label %if.then24, label %cleanup, !dbg !1218

if.then24:                                        ; preds = %if.end19
  %add.ptr26 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1219
  store i8* %add.ptr26, i8** %n, align 8, !dbg !1219
  br label %cleanup, !dbg !1221

cleanup:                                          ; preds = %if.end19, %if.end14, %while.cond, %if.then24
  %pal.1 = phi %struct.demangle_component** [ %6, %if.then24 ], [ %pal.0, %while.cond ], [ %pal.0, %if.end14 ], [ %6, %if.end19 ], !dbg !1187
  %cleanup.dest.slot.0 = phi i32 [ 3, %if.then24 ], [ 1, %while.cond ], [ 1, %if.end14 ], [ 0, %if.end19 ]
  call void @llvm.dbg.value(metadata %struct.demangle_component** %pal.1, metadata !1184, metadata !DIExpression()), !dbg !1187
  switch i32 %cleanup.dest.slot.0, label %cleanup29.loopexit [
    i32 0, label %while.cond
    i32 3, label %while.end
  ], !llvm.loop !1222

while.end:                                        ; preds = %cleanup
  store i64 %2, i64* %1, align 8, !dbg !1224
  %9 = load %struct.demangle_component*, %struct.demangle_component** %al, align 8, !dbg !1225
  call void @llvm.dbg.value(metadata %struct.demangle_component* %9, metadata !1183, metadata !DIExpression()), !dbg !1187
  br label %cleanup29, !dbg !1226

cleanup29.loopexit:                               ; preds = %cleanup
  br label %cleanup29, !dbg !1227

cleanup29:                                        ; preds = %cleanup29.loopexit, %entry, %while.end, %if.then7
  %retval.2 = phi %struct.demangle_component* [ %call, %if.then7 ], [ %9, %while.end ], [ null, %entry ], [ null, %cleanup29.loopexit ], !dbg !1187
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !1227
  ret %struct.demangle_component* %retval.2, !dbg !1227
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_substitution(%struct.d_info* %di, i32 %prefix) unnamed_addr #5 !dbg !1228 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1230, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i32 %prefix, metadata !1231, metadata !DIExpression()), !dbg !1255
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !1256
  %0 = load i8*, i8** %n, align 8, !dbg !1256
  %1 = load i8, i8* %0, align 1, !dbg !1256
  %cmp = icmp eq i8 %1, 83, !dbg !1256
  br i1 %cmp, label %cond.true, label %cleanup128, !dbg !1258

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1256
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !1256
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !1259
  %cmp5 = icmp eq i8 %2, 0, !dbg !1259
  br i1 %cmp5, label %cond.end, label %cond.false8, !dbg !1259

cond.false8:                                      ; preds = %cond.true
  %incdec.ptr10 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1259
  store i8* %incdec.ptr10, i8** %n, align 8, !dbg !1259
  %3 = load i8, i8* %incdec.ptr, align 1, !dbg !1259
  br label %cond.end, !dbg !1259

cond.end:                                         ; preds = %cond.true, %cond.false8
  %4 = phi i8* [ %incdec.ptr10, %cond.false8 ], [ %incdec.ptr, %cond.true ]
  %cond = phi i8 [ %3, %cond.false8 ], [ 0, %cond.true ]
  call void @llvm.dbg.value(metadata i8 %cond, metadata !1232, metadata !DIExpression()), !dbg !1255
  %cmp14 = icmp eq i8 %cond, 95, !dbg !1260
  br i1 %cmp14, label %if.then30, label %lor.lhs.false, !dbg !1261

lor.lhs.false:                                    ; preds = %cond.end
  %cond.off = add i8 %cond, -48, !dbg !1262
  %5 = icmp ult i8 %cond.off, 10, !dbg !1262
  br i1 %5, label %if.then30, label %lor.lhs.false22, !dbg !1262

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %cond.off7 = add i8 %cond, -65, !dbg !1263
  %6 = icmp ult i8 %cond.off7, 26, !dbg !1263
  br i1 %6, label %if.then30, label %if.else86, !dbg !1263

if.then30:                                        ; preds = %lor.lhs.false22, %lor.lhs.false, %cond.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1233, metadata !DIExpression()), !dbg !1264
  br i1 %cmp14, label %if.end79, label %do.body.preheader, !dbg !1265

do.body.preheader:                                ; preds = %if.then30
  br label %do.body, !dbg !1266

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %7 = phi i8* [ %13, %do.cond ], [ %4, %do.body.preheader ]
  %id.0 = phi i32 [ %id.1, %do.cond ], [ 0, %do.body.preheader ], !dbg !1267
  %c.0 = phi i8 [ %c.1, %do.cond ], [ %cond, %do.body.preheader ], !dbg !1268
  call void @llvm.dbg.value(metadata i8 %c.0, metadata !1232, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i32 %id.0, metadata !1233, metadata !DIExpression()), !dbg !1264
  %c.0.off = add i8 %c.0, -48, !dbg !1269
  %8 = icmp ult i8 %c.0.off, 10, !dbg !1269
  br i1 %8, label %if.then42, label %if.else, !dbg !1269

if.then42:                                        ; preds = %do.body
  %mul = mul i32 %id.0, 36, !dbg !1271
  %conv43 = sext i8 %c.0 to i32, !dbg !1272
  %add = add i32 %mul, %conv43, !dbg !1273
  %sub = add i32 %add, -48, !dbg !1274
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1236, metadata !DIExpression()), !dbg !1275
  br label %if.end59, !dbg !1276

if.else:                                          ; preds = %do.body
  %c.0.off8 = add i8 %c.0, -65, !dbg !1277
  %9 = icmp ult i8 %c.0.off8, 26, !dbg !1277
  br i1 %9, label %if.then51, label %cleanup, !dbg !1277

if.then51:                                        ; preds = %if.else
  %mul52 = mul i32 %id.0, 36, !dbg !1279
  %conv53 = sext i8 %c.0 to i32, !dbg !1280
  %add54 = add i32 %mul52, %conv53, !dbg !1281
  %add56 = add i32 %add54, -55, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %add56, metadata !1236, metadata !DIExpression()), !dbg !1275
  br label %if.end59

if.end59:                                         ; preds = %if.then51, %if.then42
  %new_id.0 = phi i32 [ %sub, %if.then42 ], [ %add56, %if.then51 ], !dbg !1283
  call void @llvm.dbg.value(metadata i32 %new_id.0, metadata !1236, metadata !DIExpression()), !dbg !1275
  %cmp60 = icmp ult i32 %new_id.0, %id.0, !dbg !1284
  br i1 %cmp60, label %cleanup, label %if.end63, !dbg !1286

if.end63:                                         ; preds = %if.end59
  call void @llvm.dbg.value(metadata i32 %new_id.0, metadata !1233, metadata !DIExpression()), !dbg !1264
  %10 = load i8, i8* %7, align 1, !dbg !1287
  %cmp66 = icmp eq i8 %10, 0, !dbg !1287
  br i1 %cmp66, label %cond.end73, label %cond.false69, !dbg !1287

cond.false69:                                     ; preds = %if.end63
  %incdec.ptr71 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1287
  store i8* %incdec.ptr71, i8** %n, align 8, !dbg !1287
  %11 = load i8, i8* %7, align 1, !dbg !1287
  br label %cond.end73, !dbg !1287

cond.end73:                                       ; preds = %if.end63, %cond.false69
  %12 = phi i8* [ %incdec.ptr71, %cond.false69 ], [ %7, %if.end63 ]
  %cond74 = phi i8 [ %11, %cond.false69 ], [ 0, %if.end63 ], !dbg !1287
  call void @llvm.dbg.value(metadata i8 %cond74, metadata !1232, metadata !DIExpression()), !dbg !1255
  br label %cleanup, !dbg !1288

cleanup:                                          ; preds = %if.end59, %if.else, %cond.end73
  %13 = phi i8* [ %12, %cond.end73 ], [ %7, %if.else ], [ %7, %if.end59 ]
  %id.1 = phi i32 [ %new_id.0, %cond.end73 ], [ %id.0, %if.else ], [ %id.0, %if.end59 ], !dbg !1264
  %cleanup.dest.slot.0 = phi i1 [ true, %cond.end73 ], [ false, %if.else ], [ false, %if.end59 ]
  %c.1 = phi i8 [ %cond74, %cond.end73 ], [ %c.0, %if.else ], [ %c.0, %if.end59 ], !dbg !1255
  call void @llvm.dbg.value(metadata i8 %c.1, metadata !1232, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i32 %id.1, metadata !1233, metadata !DIExpression()), !dbg !1264
  br i1 %cleanup.dest.slot.0, label %do.cond, label %cleanup128.loopexit

do.cond:                                          ; preds = %cleanup
  %cmp77 = icmp eq i8 %c.1, 95, !dbg !1289
  br i1 %cmp77, label %do.end, label %do.body, !dbg !1290, !llvm.loop !1291

do.end:                                           ; preds = %do.cond
  %id.1.lcssa15 = phi i32 [ %id.1, %do.cond ], !dbg !1264
  call void @llvm.dbg.value(metadata i32 %id.1.lcssa15, metadata !1233, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i32 %id.1.lcssa15, metadata !1233, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i32 %id.1.lcssa15, metadata !1233, metadata !DIExpression()), !dbg !1264
  %inc = add i32 %id.1.lcssa15, 1, !dbg !1293
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1233, metadata !DIExpression()), !dbg !1264
  br label %if.end79, !dbg !1294

if.end79:                                         ; preds = %if.then30, %do.end
  %id.2 = phi i32 [ %inc, %do.end ], [ 0, %if.then30 ], !dbg !1264
  call void @llvm.dbg.value(metadata i32 %id.2, metadata !1233, metadata !DIExpression()), !dbg !1264
  %next_sub = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 8, !dbg !1295
  %14 = load i32, i32* %next_sub, align 8, !dbg !1295
  %cmp80 = icmp ult i32 %id.2, %14, !dbg !1297
  br i1 %cmp80, label %if.end83, label %cleanup128, !dbg !1298

if.end83:                                         ; preds = %if.end79
  %did_subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 10, !dbg !1299
  %15 = load i32, i32* %did_subs, align 8, !dbg !1300
  %inc84 = add nsw i32 %15, 1, !dbg !1300
  store i32 %inc84, i32* %did_subs, align 8, !dbg !1300
  %subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 7, !dbg !1301
  %16 = load %struct.demangle_component**, %struct.demangle_component*** %subs, align 8, !dbg !1301
  %idxprom = zext i32 %id.2 to i64, !dbg !1302
  %arrayidx = getelementptr inbounds %struct.demangle_component*, %struct.demangle_component** %16, i64 %idxprom, !dbg !1302
  %17 = load %struct.demangle_component*, %struct.demangle_component** %arrayidx, align 8, !dbg !1302
  br label %cleanup128, !dbg !1303

if.else86:                                        ; preds = %lor.lhs.false22
  %options = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 2, !dbg !1304
  %18 = load i32, i32* %options, align 8, !dbg !1304
  %and = lshr i32 %18, 3, !dbg !1305
  %and.lobit = and i32 %and, 1, !dbg !1305
  call void @llvm.dbg.value(metadata i32 %and.lobit, metadata !1240, metadata !DIExpression()), !dbg !1306
  %tobool = icmp eq i32 %and.lobit, 0, !dbg !1307
  %tobool90 = icmp ne i32 %prefix, 0, !dbg !1308
  %or.cond5 = and i1 %tobool, %tobool90, !dbg !1309
  br i1 %or.cond5, label %if.then91, label %if.end102, !dbg !1309

if.then91:                                        ; preds = %if.else86
  %19 = load i8, i8* %4, align 1, !dbg !1310
  call void @llvm.dbg.value(metadata i8 %19, metadata !1245, metadata !DIExpression()), !dbg !1311
  %20 = add i8 %19, -67, !dbg !1312
  %21 = icmp ult i8 %20, 2, !dbg !1312
  %verbose.0 = zext i1 %21 to i32, !dbg !1312
  br label %if.end102, !dbg !1312

if.end102:                                        ; preds = %if.then91, %if.else86
  %verbose.1 = phi i32 [ %and.lobit, %if.else86 ], [ %verbose.0, %if.then91 ], !dbg !1306
  call void @llvm.dbg.value(metadata i32 %verbose.1, metadata !1240, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.d_standard_sub_info* getelementptr inbounds (%struct.d_standard_sub_info, %struct.d_standard_sub_info* getelementptr inbounds ([7 x %struct.d_standard_sub_info], [7 x %struct.d_standard_sub_info]* @standard_subs, i64 0, i64 0), i64 7), metadata !1244, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.d_standard_sub_info* getelementptr inbounds ([7 x %struct.d_standard_sub_info], [7 x %struct.d_standard_sub_info]* @standard_subs, i64 0, i64 0), metadata !1242, metadata !DIExpression()), !dbg !1306
  br label %for.cond, !dbg !1314

for.cond:                                         ; preds = %for.inc, %if.end102
  %p.0 = phi %struct.d_standard_sub_info* [ getelementptr inbounds ([7 x %struct.d_standard_sub_info], [7 x %struct.d_standard_sub_info]* @standard_subs, i64 0, i64 0), %if.end102 ], [ %incdec.ptr124, %for.inc ], !dbg !1315
  call void @llvm.dbg.value(metadata %struct.d_standard_sub_info* %p.0, metadata !1242, metadata !DIExpression()), !dbg !1306
  %cmp103 = icmp ult %struct.d_standard_sub_info* %p.0, getelementptr inbounds ([7 x %struct.d_standard_sub_info], [7 x %struct.d_standard_sub_info]* @standard_subs, i64 1, i64 0), !dbg !1316
  br i1 %cmp103, label %for.body, label %cleanup128.loopexit9, !dbg !1317

for.body:                                         ; preds = %for.cond
  %code = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %p.0, i64 0, i32 0, !dbg !1318
  %22 = load i8, i8* %code, align 8, !dbg !1318
  %cmp107 = icmp eq i8 %cond, %22, !dbg !1319
  br i1 %cmp107, label %if.then109, label %for.inc, !dbg !1320

if.then109:                                       ; preds = %for.body
  %p.0.lcssa16 = phi %struct.d_standard_sub_info* [ %p.0, %for.body ], !dbg !1315
  call void @llvm.dbg.value(metadata %struct.d_standard_sub_info* %p.0.lcssa16, metadata !1242, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.d_standard_sub_info* %p.0.lcssa16, metadata !1242, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.d_standard_sub_info* %p.0.lcssa16, metadata !1242, metadata !DIExpression()), !dbg !1306
  %set_last_name = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %p.0.lcssa16, i64 0, i32 5, !dbg !1321
  %23 = load i8*, i8** %set_last_name, align 8, !dbg !1321
  %cmp110 = icmp eq i8* %23, null, !dbg !1323
  br i1 %cmp110, label %if.end114, label %if.then112, !dbg !1324

if.then112:                                       ; preds = %if.then109
  %set_last_name_len = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %p.0.lcssa16, i64 0, i32 6, !dbg !1325
  %24 = load i32, i32* %set_last_name_len, align 8, !dbg !1325
  %call = tail call fastcc %struct.demangle_component* @d_make_sub(%struct.d_info* %di, i8* nonnull %23, i32 %24) #8, !dbg !1326
  %last_name = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 11, !dbg !1327
  store %struct.demangle_component* %call, %struct.demangle_component** %last_name, align 8, !dbg !1328
  br label %if.end114, !dbg !1329

if.end114:                                        ; preds = %if.then109, %if.then112
  %tobool115 = icmp eq i32 %verbose.1, 0, !dbg !1330
  br i1 %tobool115, label %if.else117, label %if.then116, !dbg !1332

if.then116:                                       ; preds = %if.end114
  %full_expansion = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %p.0.lcssa16, i64 0, i32 3, !dbg !1333
  %full_len = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %p.0.lcssa16, i64 0, i32 4, !dbg !1335
  br label %if.end118, !dbg !1336

if.else117:                                       ; preds = %if.end114
  %simple_expansion = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %p.0.lcssa16, i64 0, i32 1, !dbg !1337
  %simple_len = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %p.0.lcssa16, i64 0, i32 2, !dbg !1339
  br label %if.end118

if.end118:                                        ; preds = %if.else117, %if.then116
  %s.0.in = phi i8** [ %full_expansion, %if.then116 ], [ %simple_expansion, %if.else117 ]
  %len.0.in = phi i32* [ %full_len, %if.then116 ], [ %simple_len, %if.else117 ]
  %len.0 = load i32, i32* %len.0.in, align 8, !dbg !1340
  %s.0 = load i8*, i8** %s.0.in, align 8, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !1254, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i8* %s.0, metadata !1248, metadata !DIExpression()), !dbg !1341
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !1342
  %25 = load i32, i32* %expansion, align 8, !dbg !1343
  %add119 = add nsw i32 %25, %len.0, !dbg !1343
  store i32 %add119, i32* %expansion, align 8, !dbg !1343
  %call120 = tail call fastcc %struct.demangle_component* @d_make_sub(%struct.d_info* %di, i8* %s.0, i32 %len.0) #8, !dbg !1344
  br label %cleanup128

for.inc:                                          ; preds = %for.body
  %incdec.ptr124 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %p.0, i64 1, !dbg !1345
  call void @llvm.dbg.value(metadata %struct.d_standard_sub_info* %incdec.ptr124, metadata !1242, metadata !DIExpression()), !dbg !1306
  br label %for.cond, !dbg !1346, !llvm.loop !1347

cleanup128.loopexit:                              ; preds = %cleanup
  br label %cleanup128, !dbg !1349

cleanup128.loopexit9:                             ; preds = %for.cond
  br label %cleanup128, !dbg !1349

cleanup128:                                       ; preds = %cleanup128.loopexit9, %cleanup128.loopexit, %if.end79, %if.end118, %if.end83, %entry
  %retval.4 = phi %struct.demangle_component* [ null, %entry ], [ %17, %if.end83 ], [ null, %if.end79 ], [ %call120, %if.end118 ], [ null, %cleanup128.loopexit ], [ null, %cleanup128.loopexit9 ], !dbg !1255
  ret %struct.demangle_component* %retval.4, !dbg !1349
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) unnamed_addr #5 !dbg !1350 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1352, metadata !DIExpression()), !dbg !1380
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !1381
  %0 = load i8*, i8** %n, align 8, !dbg !1381
  %1 = load i8, i8* %0, align 1, !dbg !1381
  call void @llvm.dbg.value(metadata i8 %1, metadata !1353, metadata !DIExpression()), !dbg !1380
  %cmp = icmp eq i8 %1, 76, !dbg !1382
  br i1 %cmp, label %if.then, label %if.else, !dbg !1383

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.demangle_component* @d_expr_primary(%struct.d_info* %di) #8, !dbg !1384
  br label %cleanup205, !dbg !1385

if.else:                                          ; preds = %entry
  %cmp3 = icmp eq i8 %1, 84, !dbg !1386
  br i1 %cmp3, label %if.then5, label %if.else7, !dbg !1387

if.then5:                                         ; preds = %if.else
  %call6 = tail call fastcc %struct.demangle_component* @d_template_param(%struct.d_info* %di) #8, !dbg !1388
  br label %cleanup205, !dbg !1389

if.else7:                                         ; preds = %if.else
  %cmp9 = icmp eq i8 %1, 115, !dbg !1390
  br i1 %cmp9, label %land.lhs.true, label %if.else30, !dbg !1391

land.lhs.true:                                    ; preds = %if.else7
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1392
  %2 = load i8, i8* %arrayidx, align 1, !dbg !1392
  %cmp13 = icmp eq i8 %2, 114, !dbg !1393
  br i1 %cmp13, label %if.then15, label %if.else30, !dbg !1394

if.then15:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1395
  store i8* %add.ptr, i8** %n, align 8, !dbg !1395
  %call17 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !1396
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call17, metadata !1354, metadata !DIExpression()), !dbg !1397
  %call18 = tail call fastcc %struct.demangle_component* @d_unqualified_name(%struct.d_info* %di) #8, !dbg !1398
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call18, metadata !1359, metadata !DIExpression()), !dbg !1397
  %3 = load i8*, i8** %n, align 8, !dbg !1399
  %4 = load i8, i8* %3, align 1, !dbg !1399
  %cmp21 = icmp eq i8 %4, 73, !dbg !1401
  br i1 %cmp21, label %if.else25, label %if.then23, !dbg !1402

if.then23:                                        ; preds = %if.then15
  %call24 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 1, %struct.demangle_component* %call17, %struct.demangle_component* %call18) #8, !dbg !1403
  br label %cleanup205, !dbg !1404

if.else25:                                        ; preds = %if.then15
  %call26 = tail call fastcc %struct.demangle_component* @d_template_args(%struct.d_info* %di) #8, !dbg !1405
  %call27 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 4, %struct.demangle_component* %call18, %struct.demangle_component* %call26) #8, !dbg !1406
  %call28 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 1, %struct.demangle_component* %call17, %struct.demangle_component* %call27) #8, !dbg !1407
  br label %cleanup205, !dbg !1408

if.else30:                                        ; preds = %land.lhs.true, %if.else7
  br i1 %cmp9, label %land.lhs.true34, label %if.else45, !dbg !1409

land.lhs.true34:                                  ; preds = %if.else30
  %arrayidx36 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1410
  %5 = load i8, i8* %arrayidx36, align 1, !dbg !1410
  %cmp38 = icmp eq i8 %5, 112, !dbg !1411
  br i1 %cmp38, label %if.then40, label %if.else45, !dbg !1412

if.then40:                                        ; preds = %land.lhs.true34
  %add.ptr42 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1413
  store i8* %add.ptr42, i8** %n, align 8, !dbg !1413
  %call43 = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !1415
  %call44 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 65, %struct.demangle_component* %call43, %struct.demangle_component* null) #8, !dbg !1416
  ret %struct.demangle_component* %call44, !dbg !1417

if.else45:                                        ; preds = %land.lhs.true34, %if.else30
  %cmp47 = icmp eq i8 %1, 102, !dbg !1418
  br i1 %cmp47, label %land.lhs.true49, label %if.else66, !dbg !1419

land.lhs.true49:                                  ; preds = %if.else45
  %arrayidx51 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1420
  %6 = load i8, i8* %arrayidx51, align 1, !dbg !1420
  %cmp53 = icmp eq i8 %6, 112, !dbg !1421
  br i1 %cmp53, label %if.then55, label %if.else66, !dbg !1422

if.then55:                                        ; preds = %land.lhs.true49
  %add.ptr57 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1423
  store i8* %add.ptr57, i8** %n, align 8, !dbg !1423
  %call58 = tail call fastcc i64 @d_compact_number(%struct.d_info* %di) #8, !dbg !1424
  %conv59 = trunc i64 %call58 to i32, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %conv59, metadata !1360, metadata !DIExpression()), !dbg !1425
  %cmp60 = icmp slt i32 %conv59, 0, !dbg !1426
  br i1 %cmp60, label %cleanup205, label %if.end, !dbg !1428

if.end:                                           ; preds = %if.then55
  %sext = shl i64 %call58, 32, !dbg !1429
  %conv63 = ashr exact i64 %sext, 32, !dbg !1429
  %call64 = tail call fastcc %struct.demangle_component* @d_make_function_param(%struct.d_info* %di, i64 %conv63) #8, !dbg !1430
  br label %cleanup205, !dbg !1431

if.else66:                                        ; preds = %land.lhs.true49, %if.else45
  %.off = add i8 %1, -48, !dbg !1432
  %7 = icmp ult i8 %.off, 10, !dbg !1432
  br i1 %7, label %if.then83, label %lor.lhs.false, !dbg !1432

lor.lhs.false:                                    ; preds = %if.else66
  %cmp75 = icmp eq i8 %1, 111, !dbg !1433
  br i1 %cmp75, label %land.lhs.true77, label %if.else106, !dbg !1434

land.lhs.true77:                                  ; preds = %lor.lhs.false
  %arrayidx79 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1435
  %8 = load i8, i8* %arrayidx79, align 1, !dbg !1435
  %cmp81 = icmp eq i8 %8, 110, !dbg !1436
  br i1 %cmp81, label %if.then83, label %if.else106, !dbg !1437

if.then83:                                        ; preds = %if.else66, %land.lhs.true77
  %cmp86 = icmp eq i8 %1, 111, !dbg !1438
  br i1 %cmp86, label %if.then88, label %if.end91, !dbg !1440

if.then88:                                        ; preds = %if.then83
  %add.ptr90 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1441
  store i8* %add.ptr90, i8** %n, align 8, !dbg !1441
  br label %if.end91, !dbg !1441

if.end91:                                         ; preds = %if.then88, %if.then83
  %call92 = tail call fastcc %struct.demangle_component* @d_unqualified_name(%struct.d_info* %di) #8, !dbg !1442
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call92, metadata !1364, metadata !DIExpression()), !dbg !1443
  %cmp93 = icmp eq %struct.demangle_component* %call92, null, !dbg !1444
  br i1 %cmp93, label %cleanup205, label %if.end96, !dbg !1446

if.end96:                                         ; preds = %if.end91
  %9 = load i8*, i8** %n, align 8, !dbg !1447
  %10 = load i8, i8* %9, align 1, !dbg !1447
  %cmp99 = icmp eq i8 %10, 73, !dbg !1449
  br i1 %cmp99, label %if.then101, label %cleanup205, !dbg !1450

if.then101:                                       ; preds = %if.end96
  %call102 = tail call fastcc %struct.demangle_component* @d_template_args(%struct.d_info* %di) #8, !dbg !1451
  %call103 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 4, %struct.demangle_component* nonnull %call92, %struct.demangle_component* %call102) #8, !dbg !1452
  br label %cleanup205, !dbg !1453

if.else106:                                       ; preds = %land.lhs.true77, %lor.lhs.false
  %call107 = tail call fastcc %struct.demangle_component* @d_operator_name(%struct.d_info* %di) #8, !dbg !1454
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call107, metadata !1367, metadata !DIExpression()), !dbg !1455
  %cmp108 = icmp eq %struct.demangle_component* %call107, null, !dbg !1456
  br i1 %cmp108, label %cleanup205, label %if.end111, !dbg !1458

if.end111:                                        ; preds = %if.else106
  %type112 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call107, i64 0, i32 0, !dbg !1459
  %11 = load i32, i32* %type112, align 8, !dbg !1459
  %cmp113 = icmp eq i32 %11, 44, !dbg !1461
  br i1 %cmp113, label %if.then115, label %if.end117, !dbg !1462

if.then115:                                       ; preds = %if.end111
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call107, i64 0, i32 1, !dbg !1463
  %op116 = bitcast %union.anon* %u to %struct.demangle_operator_info**, !dbg !1464
  %12 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op116, align 8, !dbg !1464
  %len = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %12, i64 0, i32 2, !dbg !1465
  %13 = load i32, i32* %len, align 8, !dbg !1465
  %sub = add nsw i32 %13, -2, !dbg !1466
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !1467
  %14 = load i32, i32* %expansion, align 8, !dbg !1468
  %add = add nsw i32 %14, %sub, !dbg !1468
  store i32 %add, i32* %expansion, align 8, !dbg !1468
  %.pre = load i32, i32* %type112, align 8, !dbg !1469
  br label %if.end117, !dbg !1471

if.end117:                                        ; preds = %if.then115, %if.end111
  %15 = phi i32 [ %.pre, %if.then115 ], [ %11, %if.end111 ], !dbg !1469
  %cmp119 = icmp eq i32 %15, 44, !dbg !1472
  br i1 %cmp119, label %land.lhs.true121, label %if.end131, !dbg !1473

land.lhs.true121:                                 ; preds = %if.end117
  %u122 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call107, i64 0, i32 1, !dbg !1474
  %op124 = bitcast %union.anon* %u122 to %struct.demangle_operator_info**, !dbg !1475
  %16 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op124, align 8, !dbg !1475
  %code = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %16, i64 0, i32 0, !dbg !1476
  %17 = load i8*, i8** %code, align 8, !dbg !1476
  %call125 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i64 0, i64 0)) #7, !dbg !1477
  %cmp126 = icmp eq i32 %call125, 0, !dbg !1478
  br i1 %cmp126, label %if.then128, label %land.lhs.true121.if.end131_crit_edge, !dbg !1479

land.lhs.true121.if.end131_crit_edge:             ; preds = %land.lhs.true121
  %.pre1 = load i32, i32* %type112, align 8, !dbg !1480
  br label %if.end131, !dbg !1479

if.then128:                                       ; preds = %land.lhs.true121
  %call129 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !1481
  %call130 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 47, %struct.demangle_component* nonnull %call107, %struct.demangle_component* %call129) #8, !dbg !1482
  br label %cleanup205, !dbg !1483

if.end131:                                        ; preds = %land.lhs.true121.if.end131_crit_edge, %if.end117
  %18 = phi i32 [ %.pre1, %land.lhs.true121.if.end131_crit_edge ], [ %15, %if.end117 ], !dbg !1480
  switch i32 %18, label %cleanup205 [
    i32 44, label %sw.bb
    i32 45, label %sw.bb137
    i32 46, label %sw.epilog
  ], !dbg !1484

sw.bb:                                            ; preds = %if.end131
  %u133 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call107, i64 0, i32 1, !dbg !1485
  %op135 = bitcast %union.anon* %u133 to %struct.demangle_operator_info**, !dbg !1487
  %19 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op135, align 8, !dbg !1487
  %args136 = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %19, i64 0, i32 3, !dbg !1488
  %20 = load i32, i32* %args136, align 4, !dbg !1488
  call void @llvm.dbg.value(metadata i32 %20, metadata !1369, metadata !DIExpression()), !dbg !1455
  br label %sw.epilog, !dbg !1489

sw.bb137:                                         ; preds = %if.end131
  %u138 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call107, i64 0, i32 1, !dbg !1490
  %args139 = bitcast %union.anon* %u138 to i32*, !dbg !1491
  %21 = load i32, i32* %args139, align 8, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %21, metadata !1369, metadata !DIExpression()), !dbg !1455
  br label %sw.epilog, !dbg !1492

sw.epilog:                                        ; preds = %if.end131, %sw.bb137, %sw.bb
  %args.0 = phi i32 [ %21, %sw.bb137 ], [ %20, %sw.bb ], [ 1, %if.end131 ], !dbg !1493
  call void @llvm.dbg.value(metadata i32 %args.0, metadata !1369, metadata !DIExpression()), !dbg !1455
  switch i32 %args.0, label %cleanup205 [
    i32 1, label %sw.bb141
    i32 2, label %sw.bb158
    i32 3, label %sw.bb193
  ], !dbg !1494

sw.bb141:                                         ; preds = %sw.epilog
  %cmp143 = icmp eq i32 %18, 46, !dbg !1495
  br i1 %cmp143, label %land.lhs.true145, label %if.else153, !dbg !1497

land.lhs.true145:                                 ; preds = %sw.bb141
  %22 = load i8*, i8** %n, align 8, !dbg !1498
  %23 = load i8, i8* %22, align 1, !dbg !1498
  %cmp148 = icmp eq i8 %23, 95, !dbg !1498
  br i1 %cmp148, label %cond.true, label %if.else153, !dbg !1499

cond.true:                                        ; preds = %land.lhs.true145
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1498
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !1498
  %call152 = tail call fastcc %struct.demangle_component* @d_exprlist(%struct.d_info* %di) #8, !dbg !1500
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call152, metadata !1370, metadata !DIExpression()), !dbg !1501
  br label %if.end155, !dbg !1502

if.else153:                                       ; preds = %land.lhs.true145, %sw.bb141
  %call154 = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !1503
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call154, metadata !1370, metadata !DIExpression()), !dbg !1501
  br label %if.end155

if.end155:                                        ; preds = %if.else153, %cond.true
  %operand.0 = phi %struct.demangle_component* [ %call152, %cond.true ], [ %call154, %if.else153 ], !dbg !1504
  call void @llvm.dbg.value(metadata %struct.demangle_component* %operand.0, metadata !1370, metadata !DIExpression()), !dbg !1501
  %call156 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 47, %struct.demangle_component* nonnull %call107, %struct.demangle_component* %operand.0) #8, !dbg !1505
  br label %cleanup205

sw.bb158:                                         ; preds = %sw.epilog
  %u160 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call107, i64 0, i32 1, !dbg !1506
  %op162 = bitcast %union.anon* %u160 to %struct.demangle_operator_info**, !dbg !1507
  %24 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op162, align 8, !dbg !1507
  %code163 = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %24, i64 0, i32 0, !dbg !1508
  %25 = load i8*, i8** %code163, align 8, !dbg !1508
  call void @llvm.dbg.value(metadata i8* %25, metadata !1376, metadata !DIExpression()), !dbg !1509
  %call164 = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !1510
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call164, metadata !1373, metadata !DIExpression()), !dbg !1509
  %call165 = tail call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1511
  %tobool = icmp eq i32 %call165, 0, !dbg !1511
  br i1 %tobool, label %if.then166, label %if.else168, !dbg !1513

if.then166:                                       ; preds = %sw.bb158
  %call167 = tail call fastcc %struct.demangle_component* @d_exprlist(%struct.d_info* %di) #8, !dbg !1514
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call167, metadata !1375, metadata !DIExpression()), !dbg !1509
  br label %if.end187, !dbg !1515

if.else168:                                       ; preds = %sw.bb158
  %call169 = tail call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !1516
  %tobool170 = icmp eq i32 %call169, 0, !dbg !1516
  br i1 %tobool170, label %if.then174, label %lor.lhs.false171, !dbg !1518

lor.lhs.false171:                                 ; preds = %if.else168
  %call172 = tail call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #7, !dbg !1519
  %tobool173 = icmp eq i32 %call172, 0, !dbg !1519
  br i1 %tobool173, label %if.then174, label %if.else184, !dbg !1520

if.then174:                                       ; preds = %lor.lhs.false171, %if.else168
  %call175 = tail call fastcc %struct.demangle_component* @d_unqualified_name(%struct.d_info* %di) #8, !dbg !1521
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call175, metadata !1375, metadata !DIExpression()), !dbg !1509
  %26 = load i8*, i8** %n, align 8, !dbg !1523
  %27 = load i8, i8* %26, align 1, !dbg !1523
  %cmp178 = icmp eq i8 %27, 73, !dbg !1525
  br i1 %cmp178, label %if.then180, label %if.end187, !dbg !1526

if.then180:                                       ; preds = %if.then174
  %call181 = tail call fastcc %struct.demangle_component* @d_template_args(%struct.d_info* %di) #8, !dbg !1527
  %call182 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 4, %struct.demangle_component* %call175, %struct.demangle_component* %call181) #8, !dbg !1528
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call182, metadata !1375, metadata !DIExpression()), !dbg !1509
  br label %if.end187, !dbg !1529

if.else184:                                       ; preds = %lor.lhs.false171
  %call185 = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !1530
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call185, metadata !1375, metadata !DIExpression()), !dbg !1509
  br label %if.end187

if.end187:                                        ; preds = %if.else184, %if.then180, %if.then174, %if.then166
  %right.2 = phi %struct.demangle_component* [ %call167, %if.then166 ], [ %call185, %if.else184 ], [ %call182, %if.then180 ], [ %call175, %if.then174 ], !dbg !1531
  call void @llvm.dbg.value(metadata %struct.demangle_component* %right.2, metadata !1375, metadata !DIExpression()), !dbg !1509
  %call188 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 49, %struct.demangle_component* %call164, %struct.demangle_component* %right.2) #8, !dbg !1532
  %call189 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 48, %struct.demangle_component* nonnull %call107, %struct.demangle_component* %call188) #8, !dbg !1533
  br label %cleanup205

sw.bb193:                                         ; preds = %sw.epilog
  %call194 = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !1534
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call194, metadata !1377, metadata !DIExpression()), !dbg !1535
  %call195 = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !1536
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call195, metadata !1379, metadata !DIExpression()), !dbg !1535
  %call196 = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !1537
  %call197 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 52, %struct.demangle_component* %call195, %struct.demangle_component* %call196) #8, !dbg !1538
  %call198 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 51, %struct.demangle_component* %call194, %struct.demangle_component* %call197) #8, !dbg !1539
  %call199 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 50, %struct.demangle_component* nonnull %call107, %struct.demangle_component* %call198) #8, !dbg !1540
  ret %struct.demangle_component* %call199, !dbg !1417

cleanup205:                                       ; preds = %if.then128, %if.end155, %if.end187, %if.else106, %if.end131, %sw.epilog, %if.then101, %if.end91, %if.end96, %if.end, %if.then55, %if.then23, %if.else25, %if.then5, %if.then
  %retval.4 = phi %struct.demangle_component* [ %call, %if.then ], [ %call6, %if.then5 ], [ %call24, %if.then23 ], [ %call28, %if.else25 ], [ %call64, %if.end ], [ null, %if.then55 ], [ %call103, %if.then101 ], [ null, %if.end91 ], [ %call92, %if.end96 ], [ %call130, %if.then128 ], [ %call189, %if.end187 ], [ %call156, %if.end155 ], [ null, %if.else106 ], [ null, %if.end131 ], [ null, %sw.epilog ], !dbg !1541
  ret %struct.demangle_component* %retval.4, !dbg !1417
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) unnamed_addr #5 !dbg !1542 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1544, metadata !DIExpression()), !dbg !1546
  %next_comp = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 5, !dbg !1547
  %0 = load i32, i32* %next_comp, align 8, !dbg !1547
  %num_comps = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 6, !dbg !1549
  %1 = load i32, i32* %num_comps, align 4, !dbg !1549
  %cmp = icmp slt i32 %0, %1, !dbg !1550
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1551

if.end:                                           ; preds = %entry
  %comps = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 4, !dbg !1552
  %2 = load %struct.demangle_component*, %struct.demangle_component** %comps, align 8, !dbg !1552
  %idxprom = sext i32 %0 to i64, !dbg !1553
  %arrayidx = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %2, i64 %idxprom, !dbg !1553
  call void @llvm.dbg.value(metadata %struct.demangle_component* %arrayidx, metadata !1545, metadata !DIExpression()), !dbg !1546
  %inc = add nsw i32 %0, 1, !dbg !1554
  store i32 %inc, i32* %next_comp, align 8, !dbg !1554
  br label %cleanup, !dbg !1555

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.demangle_component* [ %arrayidx, %if.end ], [ null, %entry ], !dbg !1546
  ret %struct.demangle_component* %retval.0, !dbg !1556
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @d_number(%struct.d_info* %di) unnamed_addr #5 !dbg !1557 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1561, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 0, metadata !1562, metadata !DIExpression()), !dbg !1565
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !1566
  %0 = load i8*, i8** %n, align 8, !dbg !1566
  %1 = load i8, i8* %0, align 1, !dbg !1566
  call void @llvm.dbg.value(metadata i8 %1, metadata !1563, metadata !DIExpression()), !dbg !1565
  %cmp = icmp eq i8 %1, 110, !dbg !1567
  br i1 %cmp, label %if.then, label %if.end, !dbg !1569

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !1562, metadata !DIExpression()), !dbg !1565
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1570
  store i8* %add.ptr, i8** %n, align 8, !dbg !1570
  %2 = load i8, i8* %add.ptr, align 1, !dbg !1572
  call void @llvm.dbg.value(metadata i8 %2, metadata !1563, metadata !DIExpression()), !dbg !1565
  br label %if.end, !dbg !1573

if.end:                                           ; preds = %if.then, %entry
  %3 = phi i8* [ %add.ptr, %if.then ], [ %0, %entry ]
  %peek.0 = phi i8 [ %2, %if.then ], [ %1, %entry ], !dbg !1565
  %negative.0 = phi i32 [ 1, %if.then ], [ 0, %entry ], !dbg !1565
  call void @llvm.dbg.value(metadata i32 %negative.0, metadata !1562, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %peek.0, metadata !1563, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, metadata !1564, metadata !DIExpression()), !dbg !1565
  br label %while.cond, !dbg !1574

while.cond:                                       ; preds = %if.end13, %if.end
  %4 = phi i8* [ %3, %if.end ], [ %add.ptr17, %if.end13 ]
  %peek.1 = phi i8 [ %peek.0, %if.end ], [ %6, %if.end13 ], !dbg !1565
  %ret.0 = phi i64 [ 0, %if.end ], [ %sub15, %if.end13 ], !dbg !1565
  call void @llvm.dbg.value(metadata i64 %ret.0, metadata !1564, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %peek.1, metadata !1563, metadata !DIExpression()), !dbg !1565
  %peek.1.off = add i8 %peek.1, -48, !dbg !1575
  %5 = icmp ult i8 %peek.1.off, 10, !dbg !1575
  br i1 %5, label %if.end13, label %if.then10, !dbg !1575

if.then10:                                        ; preds = %while.cond
  %ret.0.lcssa = phi i64 [ %ret.0, %while.cond ], !dbg !1565
  call void @llvm.dbg.value(metadata i64 %ret.0.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %ret.0.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %ret.0.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1565
  %tobool = icmp eq i32 %negative.0, 0, !dbg !1578
  %sub = sub nsw i64 0, %ret.0.lcssa, !dbg !1581
  %spec.select = select i1 %tobool, i64 %ret.0.lcssa, i64 %sub, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1564, metadata !DIExpression()), !dbg !1565
  ret i64 %spec.select, !dbg !1583

if.end13:                                         ; preds = %while.cond
  %mul = mul nsw i64 %ret.0, 10, !dbg !1584
  %conv14 = sext i8 %peek.1 to i64, !dbg !1585
  %add = add nsw i64 %mul, %conv14, !dbg !1586
  %sub15 = add nsw i64 %add, -48, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %sub15, metadata !1564, metadata !DIExpression()), !dbg !1565
  %add.ptr17 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1588
  store i8* %add.ptr17, i8** %n, align 8, !dbg !1588
  %6 = load i8, i8* %add.ptr17, align 1, !dbg !1589
  call void @llvm.dbg.value(metadata i8 %6, metadata !1563, metadata !DIExpression()), !dbg !1565
  br label %while.cond, !dbg !1574, !llvm.loop !1590
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_vector_type(%struct.d_info* %di) unnamed_addr #5 !dbg !1592 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !1594, metadata !DIExpression()), !dbg !1597
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !1598
  %0 = load i8*, i8** %n, align 8, !dbg !1598
  %1 = load i8, i8* %0, align 1, !dbg !1598
  call void @llvm.dbg.value(metadata i8 %1, metadata !1595, metadata !DIExpression()), !dbg !1597
  %cmp = icmp eq i8 %1, 95, !dbg !1599
  br i1 %cmp, label %if.then, label %if.else, !dbg !1601

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1602
  store i8* %add.ptr, i8** %n, align 8, !dbg !1602
  %call = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !1604
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !1596, metadata !DIExpression()), !dbg !1597
  br label %if.end, !dbg !1605

if.else:                                          ; preds = %entry
  %call3 = tail call fastcc %struct.demangle_component* @d_number_component(%struct.d_info* %di) #8, !dbg !1606
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call3, metadata !1596, metadata !DIExpression()), !dbg !1597
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dim.0 = phi %struct.demangle_component* [ %call, %if.then ], [ %call3, %if.else ], !dbg !1607
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dim.0, metadata !1596, metadata !DIExpression()), !dbg !1597
  %cmp4 = icmp eq %struct.demangle_component* %dim.0, null, !dbg !1608
  br i1 %cmp4, label %cleanup, label %if.end7, !dbg !1610

if.end7:                                          ; preds = %if.end
  %2 = load i8*, i8** %n, align 8, !dbg !1611
  %3 = load i8, i8* %2, align 1, !dbg !1611
  %cmp10 = icmp eq i8 %3, 95, !dbg !1611
  br i1 %cmp10, label %cond.true, label %cleanup, !dbg !1613

cond.true:                                        ; preds = %if.end7
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1611
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !1611
  %call15 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !1614
  %call16 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 41, %struct.demangle_component* nonnull %dim.0, %struct.demangle_component* %call15) #8, !dbg !1615
  br label %cleanup, !dbg !1616

cleanup:                                          ; preds = %if.end7, %if.end, %cond.true
  %retval.0 = phi %struct.demangle_component* [ %call16, %cond.true ], [ null, %if.end ], [ null, %if.end7 ], !dbg !1597
  ret %struct.demangle_component* %retval.0, !dbg !1617
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_print_callback(i32 %options, %struct.demangle_component* %dc, void (i8*, i64, i8*)* %callback, i8* %opaque) local_unnamed_addr #5 !dbg !1618 {
entry:
  %dpi = alloca %struct.d_print_info, align 8
  call void @llvm.dbg.value(metadata i32 %options, metadata !1624, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !1625, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata void (i8*, i64, i8*)* %callback, metadata !1626, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %opaque, metadata !1627, metadata !DIExpression()), !dbg !1656
  %0 = bitcast %struct.d_print_info* %dpi to i8*, !dbg !1657
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %0) #6, !dbg !1657
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !1628, metadata !DIExpression(DW_OP_deref)), !dbg !1656
  call fastcc void @d_print_init(%struct.d_print_info* nonnull %dpi, i32 %options, void (i8*, i64, i8*)* %callback, i8* %opaque) #8, !dbg !1658
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !1628, metadata !DIExpression(DW_OP_deref)), !dbg !1656
  call fastcc void @d_print_comp(%struct.d_print_info* nonnull %dpi, %struct.demangle_component* %dc) #8, !dbg !1659
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !1628, metadata !DIExpression(DW_OP_deref)), !dbg !1656
  call fastcc void @d_print_flush(%struct.d_print_info* nonnull %dpi) #8, !dbg !1660
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !1628, metadata !DIExpression(DW_OP_deref)), !dbg !1656
  %call = call fastcc i32 @d_print_saw_error(%struct.d_print_info* nonnull %dpi) #8, !dbg !1661
  %tobool = icmp eq i32 %call, 0, !dbg !1662
  %lnot.ext = zext i1 %tobool to i32, !dbg !1662
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %0) #6, !dbg !1663
  ret i32 %lnot.ext, !dbg !1664
}

; Function Attrs: nounwind uwtable
define internal fastcc void @d_print_init(%struct.d_print_info* %dpi, i32 %options, void (i8*, i64, i8*)* %callback, i8* %opaque) unnamed_addr #5 !dbg !1665 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !1670, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i32 %options, metadata !1671, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata void (i8*, i64, i8*)* %callback, metadata !1672, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i8* %opaque, metadata !1673, metadata !DIExpression()), !dbg !1674
  %options1 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 0, !dbg !1675
  store i32 %options, i32* %options1, align 8, !dbg !1676
  %len = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 2, !dbg !1677
  store i64 0, i64* %len, align 8, !dbg !1678
  %last_char = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 3, !dbg !1679
  store i8 0, i8* %last_char, align 8, !dbg !1680
  %templates = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 6, !dbg !1681
  store %struct.d_print_template* null, %struct.d_print_template** %templates, align 8, !dbg !1682
  %modifiers = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !1683
  store %struct.d_print_mod* null, %struct.d_print_mod** %modifiers, align 8, !dbg !1684
  %callback2 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 4, !dbg !1685
  store void (i8*, i64, i8*)* %callback, void (i8*, i64, i8*)** %callback2, align 8, !dbg !1686
  %opaque3 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 5, !dbg !1687
  store i8* %opaque, i8** %opaque3, align 8, !dbg !1688
  %demangle_failure = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 8, !dbg !1689
  store i32 0, i32* %demangle_failure, align 8, !dbg !1690
  ret void, !dbg !1691
}

; Function Attrs: nounwind uwtable
define internal fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) unnamed_addr #5 !dbg !1692 {
entry:
  %adpm = alloca [4 x %struct.d_print_mod], align 16
  %dpt = alloca %struct.d_print_template, align 8
  %dpm = alloca %struct.d_print_mod, align 8
  %dpm401 = alloca %struct.d_print_mod, align 8
  %adpm437 = alloca [4 x %struct.d_print_mod], align 16
  %dpm517 = alloca %struct.d_print_mod, align 8
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !1696, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !1697, metadata !DIExpression()), !dbg !1743
  %cmp = icmp eq %struct.demangle_component* %dc, null, !dbg !1744
  br i1 %cmp, label %if.then, label %if.end, !dbg !1746

if.then:                                          ; preds = %entry
  tail call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !1747
  br label %return, !dbg !1749

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @d_print_saw_error(%struct.d_print_info* %dpi) #8, !dbg !1750
  %tobool = icmp eq i32 %call, 0, !dbg !1750
  br i1 %tobool, label %if.end2, label %return, !dbg !1752

if.end2:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 0, !dbg !1753
  %0 = load i32, i32* %type, align 8, !dbg !1753
  switch i32 %0, label %sw.default973 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb14
    i32 3, label %sw.bb25
    i32 4, label %sw.bb167
    i32 5, label %sw.bb218
    i32 7, label %sw.bb238
    i32 8, label %sw.bb240
    i32 9, label %sw.bb243
    i32 10, label %sw.bb247
    i32 11, label %sw.bb251
    i32 12, label %sw.bb258
    i32 13, label %sw.bb262
    i32 14, label %sw.bb266
    i32 15, label %sw.bb270
    i32 16, label %sw.bb274
    i32 17, label %sw.bb278
    i32 18, label %sw.bb282
    i32 19, label %sw.bb286
    i32 20, label %sw.bb290
    i32 21, label %sw.bb294
    i32 22, label %sw.bb298
    i32 23, label %sw.bb304
    i32 24, label %sw.bb304
    i32 25, label %sw.bb304
    i32 26, label %sw.bb342
    i32 27, label %sw.bb342
    i32 28, label %sw.bb342
    i32 29, label %sw.bb342
    i32 30, label %sw.bb342
    i32 31, label %sw.bb342
    i32 32, label %sw.bb342
    i32 33, label %sw.bb342
    i32 34, label %sw.bb342
    i32 35, label %sw.bb360
    i32 36, label %sw.bb383
    i32 37, label %sw.bb387
    i32 38, label %sw.bb435
    i32 39, label %sw.bb516
    i32 41, label %sw.bb516
    i32 40, label %sw.bb535
    i32 42, label %sw.bb558
    i32 43, label %sw.bb558
    i32 44, label %sw.bb588
    i32 45, label %sw.bb611
    i32 46, label %sw.bb614
    i32 47, label %sw.bb615
    i32 48, label %sw.bb634
    i32 49, label %sw.bb748
    i32 50, label %sw.bb749
    i32 51, label %sw.bb795
    i32 52, label %sw.bb795
    i32 53, label %sw.bb796
    i32 54, label %sw.bb796
    i32 58, label %sw.bb891
    i32 55, label %sw.bb893
    i32 56, label %sw.bb897
    i32 57, label %sw.bb904
    i32 59, label %sw.bb907
    i32 65, label %sw.bb911
    i32 6, label %sw.bb948
    i32 60, label %sw.bb952
    i32 61, label %sw.bb956
    i32 62, label %sw.bb960
    i32 64, label %sw.bb968
  ], !dbg !1754

sw.bb:                                            ; preds = %if.end2
  %options = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 0, !dbg !1755
  %1 = load i32, i32* %options, align 8, !dbg !1755
  %and = and i32 %1, 4, !dbg !1757
  %cmp3 = icmp eq i32 %and, 0, !dbg !1758
  %s = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 0, !dbg !1759
  %2 = load i8*, i8** %s, align 8, !dbg !1759
  %len = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !1759
  %3 = load i32, i32* %len, align 8, !dbg !1759
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1760

if.then4:                                         ; preds = %sw.bb
  %conv = sext i32 %3 to i64, !dbg !1761
  tail call fastcc void @d_append_buffer(%struct.d_print_info* %dpi, i8* %2, i64 %conv) #8, !dbg !1762
  br label %return, !dbg !1762

if.else:                                          ; preds = %sw.bb
  tail call fastcc void @d_print_java_identifier(%struct.d_print_info* %dpi, i8* %2, i32 %3) #8, !dbg !1763
  br label %return

sw.bb14:                                          ; preds = %if.end2, %if.end2
  %u15 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !1764
  %left = bitcast %union.anon* %u15 to %struct.demangle_component**, !dbg !1764
  %4 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !1764
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %4) #8, !dbg !1765
  %options16 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 0, !dbg !1766
  %5 = load i32, i32* %options16, align 8, !dbg !1766
  %and17 = and i32 %5, 4, !dbg !1768
  %cmp18 = icmp eq i32 %and17, 0, !dbg !1769
  br i1 %cmp18, label %if.then20, label %if.else21, !dbg !1770

if.then20:                                        ; preds = %sw.bb14
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !1771
  br label %if.end22, !dbg !1771

if.else21:                                        ; preds = %sw.bb14
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 46) #8, !dbg !1772
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then20
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !1773
  %6 = bitcast i32* %right to %struct.demangle_component**, !dbg !1773
  %7 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8, !dbg !1773
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %7) #8, !dbg !1774
  br label %return, !dbg !1775

sw.bb25:                                          ; preds = %if.end2
  %8 = bitcast [4 x %struct.d_print_mod]* %adpm to i8*, !dbg !1776
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %8) #6, !dbg !1776
  call void @llvm.dbg.declare(metadata [4 x %struct.d_print_mod]* %adpm, metadata !1702, metadata !DIExpression()), !dbg !1777
  %9 = bitcast %struct.d_print_template* %dpt to i8*, !dbg !1778
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #6, !dbg !1778
  %modifiers = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !1779
  %10 = bitcast %struct.d_print_mod** %modifiers to i64*, !dbg !1779
  %11 = load i64, i64* %10, align 8, !dbg !1779
  store %struct.d_print_mod* null, %struct.d_print_mod** %modifiers, align 8, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1706, metadata !DIExpression()), !dbg !1781
  %templates = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 6, !dbg !1782
  %12 = bitcast %struct.d_print_template** %templates to i64*, !dbg !1782
  br label %while.cond, !dbg !1784

while.cond:                                       ; preds = %if.end59, %sw.bb25
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %if.end59 ], [ 0, %sw.bb25 ]
  %13 = phi i64 [ %19, %if.end59 ], [ 0, %sw.bb25 ]
  %i.0 = phi i32 [ %inc, %if.end59 ], [ 0, %sw.bb25 ], !dbg !1781
  %dc.pn = phi %struct.demangle_component* [ %typed_name.0, %if.end59 ], [ %dc, %sw.bb25 ]
  %typed_name.0.in.in = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.pn, i64 0, i32 1, !dbg !1781
  %typed_name.0.in = bitcast %union.anon* %typed_name.0.in.in to %struct.demangle_component**, !dbg !1781
  %typed_name.0 = load %struct.demangle_component*, %struct.demangle_component** %typed_name.0.in, align 8, !dbg !1781
  call void @llvm.dbg.value(metadata %struct.demangle_component* %typed_name.0, metadata !1701, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %indvars.iv24, metadata !1706, metadata !DIExpression()), !dbg !1781
  %cmp30 = icmp eq %struct.demangle_component* %typed_name.0, null, !dbg !1785
  %14 = trunc i64 %indvars.iv24 to i32, !dbg !1784
  br i1 %cmp30, label %while.end, label %while.body, !dbg !1784

while.body:                                       ; preds = %while.cond
  %exitcond = icmp eq i64 %indvars.iv24, 4, !dbg !1786
  br i1 %exitcond, label %if.then35, label %if.end36, !dbg !1788

if.then35:                                        ; preds = %while.body
  call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !1789
  br label %cleanup162, !dbg !1791

if.end36:                                         ; preds = %while.body
  %arrayidx = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %indvars.iv24, !dbg !1792
  %15 = bitcast %struct.d_print_mod* %arrayidx to i64*, !dbg !1793
  store i64 %13, i64* %15, align 16, !dbg !1793
  store %struct.d_print_mod* %arrayidx, %struct.d_print_mod** %modifiers, align 8, !dbg !1794
  %mod = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %indvars.iv24, i32 1, !dbg !1795
  store %struct.demangle_component* %typed_name.0, %struct.demangle_component** %mod, align 8, !dbg !1796
  %printed = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %indvars.iv24, i32 2, !dbg !1797
  store i32 0, i32* %printed, align 16, !dbg !1798
  %16 = load i64, i64* %12, align 8, !dbg !1799
  %templates47 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %indvars.iv24, i32 3, !dbg !1800
  %17 = bitcast %struct.d_print_template** %templates47 to i64*, !dbg !1801
  store i64 %16, i64* %17, align 8, !dbg !1801
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !1802
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1706, metadata !DIExpression()), !dbg !1781
  %type48 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %typed_name.0, i64 0, i32 0, !dbg !1803
  %18 = load i32, i32* %type48, align 8, !dbg !1803
  %cmp49 = icmp eq i32 %18, 26, !dbg !1805
  %19 = ptrtoint %struct.d_print_mod* %arrayidx to i64, !dbg !1806
  br i1 %cmp49, label %if.end59, label %land.lhs.true, !dbg !1806

land.lhs.true:                                    ; preds = %if.end36
  %cmp52 = icmp eq i32 %18, 27, !dbg !1807
  br i1 %cmp52, label %if.end59, label %land.lhs.true54, !dbg !1808

land.lhs.true54:                                  ; preds = %land.lhs.true
  %cmp56 = icmp eq i32 %18, 28, !dbg !1809
  br i1 %cmp56, label %if.end59, label %while.end, !dbg !1810

if.end59:                                         ; preds = %land.lhs.true54, %land.lhs.true, %if.end36
  br label %while.cond, !dbg !1784, !llvm.loop !1811

while.end:                                        ; preds = %land.lhs.true54, %while.cond
  %typed_name.0.lcssa = phi %struct.demangle_component* [ %typed_name.0, %land.lhs.true54 ], [ %typed_name.0, %while.cond ], !dbg !1781
  %cmp30.lcssa = phi i1 [ %cmp30, %land.lhs.true54 ], [ %cmp30, %while.cond ], !dbg !1785
  %i.1 = phi i32 [ %14, %while.cond ], [ %inc, %land.lhs.true54 ], !dbg !1781
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !1706, metadata !DIExpression()), !dbg !1781
  br i1 %cmp30.lcssa, label %if.then65, label %if.end66, !dbg !1813

if.then65:                                        ; preds = %while.end
  call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !1814
  br label %cleanup162, !dbg !1817

if.end66:                                         ; preds = %while.end
  %type67 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %typed_name.0.lcssa, i64 0, i32 0, !dbg !1818
  %20 = load i32, i32* %type67, align 8, !dbg !1818
  %cmp68 = icmp eq i32 %20, 4, !dbg !1820
  br i1 %cmp68, label %if.then70, label %if.end74, !dbg !1821

if.then70:                                        ; preds = %if.end66
  %21 = load i64, i64* %12, align 8, !dbg !1822
  %22 = bitcast %struct.d_print_template* %dpt to i64*, !dbg !1824
  store i64 %21, i64* %22, align 8, !dbg !1824
  store %struct.d_print_template* %dpt, %struct.d_print_template** %templates, align 8, !dbg !1825
  %template_decl = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %dpt, i64 0, i32 1, !dbg !1826
  store %struct.demangle_component* %typed_name.0.lcssa, %struct.demangle_component** %template_decl, align 8, !dbg !1827
  %.pre14 = load i32, i32* %type67, align 8, !dbg !1828
  br label %if.end74, !dbg !1829

if.end74:                                         ; preds = %if.then70, %if.end66
  %23 = phi i32 [ %.pre14, %if.then70 ], [ %20, %if.end66 ], !dbg !1828
  %cmp76 = icmp eq i32 %23, 2, !dbg !1830
  br i1 %cmp76, label %if.then78, label %if.end136, !dbg !1831

if.then78:                                        ; preds = %if.end74
  %right81 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %typed_name.0.lcssa, i64 0, i32 1, i32 0, i32 1, !dbg !1832
  %24 = bitcast i32* %right81 to %struct.demangle_component**, !dbg !1832
  %25 = load %struct.demangle_component*, %struct.demangle_component** %24, align 8, !dbg !1832
  call void @llvm.dbg.value(metadata %struct.demangle_component* %25, metadata !1708, metadata !DIExpression()), !dbg !1833
  %type82 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %25, i64 0, i32 0, !dbg !1834
  %26 = load i32, i32* %type82, align 8, !dbg !1834
  %cmp83 = icmp eq i32 %26, 63, !dbg !1836
  br i1 %cmp83, label %if.then85, label %if.end87, !dbg !1837

if.then85:                                        ; preds = %if.then78
  %u86 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %25, i64 0, i32 1, !dbg !1838
  %sub = bitcast %union.anon* %u86 to %struct.demangle_component**, !dbg !1839
  %27 = load %struct.demangle_component*, %struct.demangle_component** %sub, align 8, !dbg !1839
  call void @llvm.dbg.value(metadata %struct.demangle_component* %27, metadata !1708, metadata !DIExpression()), !dbg !1833
  br label %if.end87, !dbg !1840

if.end87:                                         ; preds = %if.then85, %if.then78
  %local_name.0 = phi %struct.demangle_component* [ %27, %if.then85 ], [ %25, %if.then78 ], !dbg !1833
  call void @llvm.dbg.value(metadata %struct.demangle_component* %local_name.0, metadata !1708, metadata !DIExpression()), !dbg !1833
  %28 = zext i32 %i.1 to i64, !dbg !1841
  br label %while.cond88, !dbg !1841

while.cond88:                                     ; preds = %if.end103, %if.end87
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %if.end103 ], [ %28, %if.end87 ], !dbg !1833
  %local_name.1 = phi %struct.demangle_component* [ %35, %if.end103 ], [ %local_name.0, %if.end87 ], !dbg !1833
  call void @llvm.dbg.value(metadata i64 %indvars.iv21, metadata !1706, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata %struct.demangle_component* %local_name.1, metadata !1708, metadata !DIExpression()), !dbg !1833
  %type89 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %local_name.1, i64 0, i32 0, !dbg !1842
  %29 = load i32, i32* %type89, align 8, !dbg !1842
  %cmp90 = icmp eq i32 %29, 26, !dbg !1843
  br i1 %cmp90, label %while.body98, label %lor.lhs.false, !dbg !1844

lor.lhs.false:                                    ; preds = %while.cond88
  %cmp93 = icmp eq i32 %29, 27, !dbg !1845
  br i1 %cmp93, label %while.body98, label %lor.rhs, !dbg !1846

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp96 = icmp eq i32 %29, 28, !dbg !1847
  br i1 %cmp96, label %while.body98, label %cleanup.loopexit, !dbg !1841

while.body98:                                     ; preds = %while.cond88, %lor.lhs.false, %lor.rhs
  %cmp100 = icmp ugt i64 %indvars.iv21, 3, !dbg !1848
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !1851

if.then102:                                       ; preds = %while.body98
  %indvars.iv21.lcssa28 = phi i64 [ %indvars.iv21, %while.body98 ], !dbg !1833
  call void @llvm.dbg.value(metadata i64 %indvars.iv21.lcssa28, metadata !1706, metadata !DIExpression()), !dbg !1781
  call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !1852
  br label %cleanup, !dbg !1854

if.end103:                                        ; preds = %while.body98
  %arrayidx105 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %indvars.iv21, !dbg !1855
  %30 = add nuw nsw i64 %indvars.iv21, 4294967295, !dbg !1856
  %idxprom107 = and i64 %30, 4294967295, !dbg !1856
  %arrayidx108 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %idxprom107, !dbg !1856
  %31 = bitcast %struct.d_print_mod* %arrayidx105 to i8*, !dbg !1856
  %32 = bitcast %struct.d_print_mod* %arrayidx108 to i8*, !dbg !1856
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %31, i8* nonnull align 16 %32, i64 32, i1 false), !dbg !1856
  %next114 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %indvars.iv21, i32 0, !dbg !1857
  store %struct.d_print_mod* %arrayidx108, %struct.d_print_mod** %next114, align 16, !dbg !1858
  store %struct.d_print_mod* %arrayidx105, %struct.d_print_mod** %modifiers, align 8, !dbg !1859
  %mod121 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %idxprom107, i32 1, !dbg !1860
  store %struct.demangle_component* %local_name.1, %struct.demangle_component** %mod121, align 8, !dbg !1861
  %printed125 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %idxprom107, i32 2, !dbg !1862
  store i32 0, i32* %printed125, align 16, !dbg !1863
  %33 = load i64, i64* %12, align 8, !dbg !1864
  %templates130 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %idxprom107, i32 3, !dbg !1865
  %34 = bitcast %struct.d_print_template** %templates130 to i64*, !dbg !1866
  store i64 %33, i64* %34, align 8, !dbg !1866
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i32 undef, metadata !1706, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1781
  %u132 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %local_name.1, i64 0, i32 1, !dbg !1868
  %left134 = bitcast %union.anon* %u132 to %struct.demangle_component**, !dbg !1868
  %35 = load %struct.demangle_component*, %struct.demangle_component** %left134, align 8, !dbg !1868
  call void @llvm.dbg.value(metadata %struct.demangle_component* %35, metadata !1708, metadata !DIExpression()), !dbg !1833
  br label %while.cond88, !dbg !1841, !llvm.loop !1869

cleanup.loopexit:                                 ; preds = %lor.rhs
  %indvars.iv21.lcssa = phi i64 [ %indvars.iv21, %lor.rhs ], !dbg !1833
  call void @llvm.dbg.value(metadata i64 %indvars.iv21.lcssa, metadata !1706, metadata !DIExpression()), !dbg !1781
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then102
  %indvars.iv2129 = phi i64 [ %indvars.iv21.lcssa28, %if.then102 ], [ %indvars.iv21.lcssa, %cleanup.loopexit ]
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then102 ], [ true, %cleanup.loopexit ]
  %i.216 = trunc i64 %indvars.iv2129 to i32, !dbg !1781
  br i1 %cleanup.dest.slot.0, label %if.end136, label %cleanup162

if.end136:                                        ; preds = %cleanup, %if.end74
  %i.3 = phi i32 [ %i.1, %if.end74 ], [ %i.216, %cleanup ], !dbg !1802
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !1706, metadata !DIExpression()), !dbg !1781
  %right139 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !1871
  %36 = bitcast i32* %right139 to %struct.demangle_component**, !dbg !1871
  %37 = load %struct.demangle_component*, %struct.demangle_component** %36, align 8, !dbg !1871
  call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %37) #8, !dbg !1872
  %38 = load i32, i32* %type67, align 8, !dbg !1873
  %cmp141 = icmp eq i32 %38, 4, !dbg !1875
  br i1 %cmp141, label %if.then143, label %if.end146, !dbg !1876

if.then143:                                       ; preds = %if.end136
  %39 = bitcast %struct.d_print_template* %dpt to i64*, !dbg !1877
  %40 = load i64, i64* %39, align 8, !dbg !1877
  store i64 %40, i64* %12, align 8, !dbg !1878
  br label %if.end146, !dbg !1879

if.end146:                                        ; preds = %if.then143, %if.end136
  %41 = zext i32 %i.3 to i64, !dbg !1880
  br label %while.cond147, !dbg !1880

while.cond147:                                    ; preds = %if.end159, %if.end146
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end159 ], [ %41, %if.end146 ], !dbg !1781
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1706, metadata !DIExpression()), !dbg !1781
  %cmp148 = icmp eq i64 %indvars.iv, 0, !dbg !1881
  br i1 %cmp148, label %while.end160, label %while.body150, !dbg !1880

while.body150:                                    ; preds = %while.cond147
  %dec = add nuw nsw i64 %indvars.iv, 4294967295, !dbg !1882
  %idxprom151 = and i64 %dec, 4294967295, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1706, metadata !DIExpression()), !dbg !1781
  %printed153 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %idxprom151, i32 2, !dbg !1886
  %42 = load i32, i32* %printed153, align 16, !dbg !1886
  %tobool154 = icmp eq i32 %42, 0, !dbg !1884
  br i1 %tobool154, label %if.then155, label %if.end159, !dbg !1887

if.then155:                                       ; preds = %while.body150
  call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !1888
  %mod158 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm, i64 0, i64 %idxprom151, i32 1, !dbg !1890
  %43 = load %struct.demangle_component*, %struct.demangle_component** %mod158, align 8, !dbg !1890
  call fastcc void @d_print_mod(%struct.d_print_info* %dpi, %struct.demangle_component* %43) #8, !dbg !1891
  br label %if.end159, !dbg !1892

if.end159:                                        ; preds = %while.body150, %if.then155
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1882
  br label %while.cond147, !dbg !1880, !llvm.loop !1893

while.end160:                                     ; preds = %while.cond147
  store i64 %11, i64* %10, align 8, !dbg !1895
  br label %cleanup162, !dbg !1896

cleanup162:                                       ; preds = %cleanup, %while.end160, %if.then65, %if.then35
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #6, !dbg !1897
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %8) #6, !dbg !1897
  br label %return

sw.bb167:                                         ; preds = %if.end2
  %modifiers168 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !1898
  %44 = bitcast %struct.d_print_mod** %modifiers168 to i64*, !dbg !1898
  %45 = load i64, i64* %44, align 8, !dbg !1898
  store %struct.d_print_mod* null, %struct.d_print_mod** %modifiers168, align 8, !dbg !1899
  %u170 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !1900
  %left172 = bitcast %union.anon* %u170 to %struct.demangle_component**, !dbg !1900
  %46 = load %struct.demangle_component*, %struct.demangle_component** %left172, align 8, !dbg !1900
  call void @llvm.dbg.value(metadata %struct.demangle_component* %46, metadata !1713, metadata !DIExpression()), !dbg !1901
  %options173 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 0, !dbg !1902
  %47 = load i32, i32* %options173, align 8, !dbg !1902
  %and174 = and i32 %47, 4, !dbg !1904
  %cmp175 = icmp eq i32 %and174, 0, !dbg !1905
  br i1 %cmp175, label %if.else198, label %land.lhs.true177, !dbg !1906

land.lhs.true177:                                 ; preds = %sw.bb167
  %type178 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %46, i64 0, i32 0, !dbg !1907
  %48 = load i32, i32* %type178, align 8, !dbg !1907
  %cmp179 = icmp eq i32 %48, 0, !dbg !1908
  br i1 %cmp179, label %land.lhs.true181, label %if.else198, !dbg !1909

land.lhs.true181:                                 ; preds = %land.lhs.true177
  %len184 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %46, i64 0, i32 1, i32 0, i32 1, !dbg !1910
  %49 = load i32, i32* %len184, align 8, !dbg !1910
  %cmp185 = icmp eq i32 %49, 6, !dbg !1911
  br i1 %cmp185, label %land.lhs.true187, label %if.else198, !dbg !1912

land.lhs.true187:                                 ; preds = %land.lhs.true181
  %s190 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %46, i64 0, i32 1, i32 0, i32 0, !dbg !1913
  %50 = load i8*, i8** %s190, align 8, !dbg !1913
  %call191 = tail call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i64 0, i64 0), i64 6) #7, !dbg !1914
  %cmp192 = icmp eq i32 %call191, 0, !dbg !1915
  br i1 %cmp192, label %if.then194, label %if.else198, !dbg !1916

if.then194:                                       ; preds = %land.lhs.true187
  %right197 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !1917
  %51 = bitcast i32* %right197 to %struct.demangle_component**, !dbg !1917
  %52 = load %struct.demangle_component*, %struct.demangle_component** %51, align 8, !dbg !1917
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %52) #8, !dbg !1919
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !1920
  br label %if.end214, !dbg !1921

if.else198:                                       ; preds = %sw.bb167, %land.lhs.true187, %land.lhs.true181, %land.lhs.true177
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %46) #8, !dbg !1922
  %call199 = tail call fastcc signext i8 @d_last_char(%struct.d_print_info* %dpi) #8, !dbg !1924
  %cmp201 = icmp eq i8 %call199, 60, !dbg !1926
  br i1 %cmp201, label %if.then203, label %if.end204, !dbg !1927

if.then203:                                       ; preds = %if.else198
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !1928
  br label %if.end204, !dbg !1928

if.end204:                                        ; preds = %if.then203, %if.else198
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 60) #8, !dbg !1929
  %right207 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !1930
  %53 = bitcast i32* %right207 to %struct.demangle_component**, !dbg !1930
  %54 = load %struct.demangle_component*, %struct.demangle_component** %53, align 8, !dbg !1930
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %54) #8, !dbg !1931
  %call208 = tail call fastcc signext i8 @d_last_char(%struct.d_print_info* %dpi) #8, !dbg !1932
  %cmp210 = icmp eq i8 %call208, 62, !dbg !1934
  br i1 %cmp210, label %if.then212, label %if.end213, !dbg !1935

if.then212:                                       ; preds = %if.end204
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !1936
  br label %if.end213, !dbg !1936

if.end213:                                        ; preds = %if.then212, %if.end204
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 62) #8, !dbg !1937
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.then194
  store i64 %45, i64* %44, align 8, !dbg !1938
  br label %return

sw.bb218:                                         ; preds = %if.end2
  %call219 = tail call fastcc %struct.demangle_component* @d_lookup_template_argument(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) #8, !dbg !1939
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call219, metadata !1716, metadata !DIExpression()), !dbg !1940
  %tobool220 = icmp eq %struct.demangle_component* %call219, null, !dbg !1941
  br i1 %tobool220, label %if.end227, label %land.lhs.true221, !dbg !1943

land.lhs.true221:                                 ; preds = %sw.bb218
  %type222 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call219, i64 0, i32 0, !dbg !1944
  %55 = load i32, i32* %type222, align 8, !dbg !1944
  %cmp223 = icmp eq i32 %55, 43, !dbg !1945
  br i1 %cmp223, label %if.then225, label %if.end227, !dbg !1946

if.then225:                                       ; preds = %land.lhs.true221
  %pack_index = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 9, !dbg !1947
  %56 = load i32, i32* %pack_index, align 4, !dbg !1947
  %call226 = tail call fastcc %struct.demangle_component* @d_index_template_argument(%struct.demangle_component* nonnull %call219, i32 %56) #8, !dbg !1948
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call226, metadata !1716, metadata !DIExpression()), !dbg !1940
  br label %if.end227, !dbg !1949

if.end227:                                        ; preds = %sw.bb218, %if.then225, %land.lhs.true221
  %a.0 = phi %struct.demangle_component* [ %call226, %if.then225 ], [ %call219, %land.lhs.true221 ], [ null, %sw.bb218 ], !dbg !1940
  call void @llvm.dbg.value(metadata %struct.demangle_component* %a.0, metadata !1716, metadata !DIExpression()), !dbg !1940
  %cmp228 = icmp eq %struct.demangle_component* %a.0, null, !dbg !1950
  br i1 %cmp228, label %if.then230, label %if.end231, !dbg !1952

if.then230:                                       ; preds = %if.end227
  tail call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !1953
  br label %return, !dbg !1955

if.end231:                                        ; preds = %if.end227
  %templates232 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 6, !dbg !1956
  %57 = load %struct.d_print_template*, %struct.d_print_template** %templates232, align 8, !dbg !1956
  call void @llvm.dbg.value(metadata %struct.d_print_template* %57, metadata !1714, metadata !DIExpression()), !dbg !1940
  %58 = bitcast %struct.d_print_template* %57 to i64*, !dbg !1957
  %59 = load i64, i64* %58, align 8, !dbg !1957
  %60 = bitcast %struct.d_print_template** %templates232 to i64*, !dbg !1958
  store i64 %59, i64* %60, align 8, !dbg !1958
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* nonnull %a.0) #8, !dbg !1959
  store %struct.d_print_template* %57, %struct.d_print_template** %templates232, align 8, !dbg !1960
  br label %return, !dbg !1961

sw.bb238:                                         ; preds = %if.end2
  %name = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !1962
  %61 = bitcast i32* %name to %struct.demangle_component**, !dbg !1962
  %62 = load %struct.demangle_component*, %struct.demangle_component** %61, align 8, !dbg !1962
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %62) #8, !dbg !1963
  br label %return, !dbg !1964

sw.bb240:                                         ; preds = %if.end2
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 126) #8, !dbg !1965
  %name242 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !1966
  %63 = bitcast i32* %name242 to %struct.demangle_component**, !dbg !1966
  %64 = load %struct.demangle_component*, %struct.demangle_component** %63, align 8, !dbg !1966
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %64) #8, !dbg !1967
  br label %return, !dbg !1968

sw.bb243:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i64 0, i64 0)) #8, !dbg !1969
  %u244 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !1970
  %left246 = bitcast %union.anon* %u244 to %struct.demangle_component**, !dbg !1970
  %65 = load %struct.demangle_component*, %struct.demangle_component** %left246, align 8, !dbg !1970
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %65) #8, !dbg !1971
  br label %return, !dbg !1972

sw.bb247:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i64 0, i64 0)) #8, !dbg !1973
  %u248 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !1974
  %left250 = bitcast %union.anon* %u248 to %struct.demangle_component**, !dbg !1974
  %66 = load %struct.demangle_component*, %struct.demangle_component** %left250, align 8, !dbg !1974
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %66) #8, !dbg !1975
  br label %return, !dbg !1976

sw.bb251:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.151, i64 0, i64 0)) #8, !dbg !1977
  %u252 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !1978
  %left254 = bitcast %union.anon* %u252 to %struct.demangle_component**, !dbg !1978
  %67 = load %struct.demangle_component*, %struct.demangle_component** %left254, align 8, !dbg !1978
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %67) #8, !dbg !1979
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0)) #8, !dbg !1980
  %right257 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !1981
  %68 = bitcast i32* %right257 to %struct.demangle_component**, !dbg !1981
  %69 = load %struct.demangle_component*, %struct.demangle_component** %68, align 8, !dbg !1981
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %69) #8, !dbg !1982
  br label %return, !dbg !1983

sw.bb258:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.153, i64 0, i64 0)) #8, !dbg !1984
  %u259 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !1985
  %left261 = bitcast %union.anon* %u259 to %struct.demangle_component**, !dbg !1985
  %70 = load %struct.demangle_component*, %struct.demangle_component** %left261, align 8, !dbg !1985
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %70) #8, !dbg !1986
  br label %return, !dbg !1987

sw.bb262:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.154, i64 0, i64 0)) #8, !dbg !1988
  %u263 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !1989
  %left265 = bitcast %union.anon* %u263 to %struct.demangle_component**, !dbg !1989
  %71 = load %struct.demangle_component*, %struct.demangle_component** %left265, align 8, !dbg !1989
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %71) #8, !dbg !1990
  br label %return, !dbg !1991

sw.bb266:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.155, i64 0, i64 0)) #8, !dbg !1992
  %u267 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !1993
  %left269 = bitcast %union.anon* %u267 to %struct.demangle_component**, !dbg !1993
  %72 = load %struct.demangle_component*, %struct.demangle_component** %left269, align 8, !dbg !1993
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %72) #8, !dbg !1994
  br label %return, !dbg !1995

sw.bb270:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.156, i64 0, i64 0)) #8, !dbg !1996
  %u271 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !1997
  %left273 = bitcast %union.anon* %u271 to %struct.demangle_component**, !dbg !1997
  %73 = load %struct.demangle_component*, %struct.demangle_component** %left273, align 8, !dbg !1997
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %73) #8, !dbg !1998
  br label %return, !dbg !1999

sw.bb274:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.157, i64 0, i64 0)) #8, !dbg !2000
  %u275 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2001
  %left277 = bitcast %union.anon* %u275 to %struct.demangle_component**, !dbg !2001
  %74 = load %struct.demangle_component*, %struct.demangle_component** %left277, align 8, !dbg !2001
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %74) #8, !dbg !2002
  br label %return, !dbg !2003

sw.bb278:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.158, i64 0, i64 0)) #8, !dbg !2004
  %u279 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2005
  %left281 = bitcast %union.anon* %u279 to %struct.demangle_component**, !dbg !2005
  %75 = load %struct.demangle_component*, %struct.demangle_component** %left281, align 8, !dbg !2005
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %75) #8, !dbg !2006
  br label %return, !dbg !2007

sw.bb282:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.159, i64 0, i64 0)) #8, !dbg !2008
  %u283 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2009
  %left285 = bitcast %union.anon* %u283 to %struct.demangle_component**, !dbg !2009
  %76 = load %struct.demangle_component*, %struct.demangle_component** %left285, align 8, !dbg !2009
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %76) #8, !dbg !2010
  br label %return, !dbg !2011

sw.bb286:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.160, i64 0, i64 0)) #8, !dbg !2012
  %u287 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2013
  %left289 = bitcast %union.anon* %u287 to %struct.demangle_component**, !dbg !2013
  %77 = load %struct.demangle_component*, %struct.demangle_component** %left289, align 8, !dbg !2013
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %77) #8, !dbg !2014
  br label %return, !dbg !2015

sw.bb290:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.161, i64 0, i64 0)) #8, !dbg !2016
  %u291 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2017
  %left293 = bitcast %union.anon* %u291 to %struct.demangle_component**, !dbg !2017
  %78 = load %struct.demangle_component*, %struct.demangle_component** %left293, align 8, !dbg !2017
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %78) #8, !dbg !2018
  br label %return, !dbg !2019

sw.bb294:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.162, i64 0, i64 0)) #8, !dbg !2020
  %u295 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2021
  %left297 = bitcast %union.anon* %u295 to %struct.demangle_component**, !dbg !2021
  %79 = load %struct.demangle_component*, %struct.demangle_component** %left297, align 8, !dbg !2021
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %79) #8, !dbg !2022
  br label %return, !dbg !2023

sw.bb298:                                         ; preds = %if.end2
  %string = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 0, !dbg !2024
  %80 = load i8*, i8** %string, align 8, !dbg !2024
  %81 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2025
  %82 = load i32, i32* %81, align 8, !dbg !2025
  %conv303 = sext i32 %82 to i64, !dbg !2026
  tail call fastcc void @d_append_buffer(%struct.d_print_info* %dpi, i8* %80, i64 %conv303) #8, !dbg !2027
  br label %return, !dbg !2028

sw.bb304:                                         ; preds = %if.end2, %if.end2, %if.end2
  %modifiers305 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !2029
  br label %for.cond, !dbg !2031

for.cond:                                         ; preds = %for.inc, %sw.bb304
  %pdpm.0.in = phi %struct.d_print_mod** [ %modifiers305, %sw.bb304 ], [ %next338, %for.inc ]
  %pdpm.0 = load %struct.d_print_mod*, %struct.d_print_mod** %pdpm.0.in, align 8, !dbg !2032
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %pdpm.0, metadata !1717, metadata !DIExpression()), !dbg !2033
  %cmp306 = icmp eq %struct.d_print_mod* %pdpm.0, null, !dbg !2034
  br i1 %cmp306, label %cleanup339.loopexit, label %for.body, !dbg !2036

for.body:                                         ; preds = %for.cond
  %printed308 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %pdpm.0, i64 0, i32 2, !dbg !2037
  %83 = load i32, i32* %printed308, align 8, !dbg !2037
  %tobool309 = icmp eq i32 %83, 0, !dbg !2040
  br i1 %tobool309, label %if.then310, label %for.inc, !dbg !2041

if.then310:                                       ; preds = %for.body
  %mod311 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %pdpm.0, i64 0, i32 1, !dbg !2042
  %84 = load %struct.demangle_component*, %struct.demangle_component** %mod311, align 8, !dbg !2042
  %type312 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %84, i64 0, i32 0, !dbg !2045
  %85 = load i32, i32* %type312, align 8, !dbg !2045
  %cmp313 = icmp eq i32 %85, 23, !dbg !2046
  br i1 %cmp313, label %if.end326, label %land.lhs.true315, !dbg !2047

land.lhs.true315:                                 ; preds = %if.then310
  %cmp318 = icmp eq i32 %85, 24, !dbg !2048
  br i1 %cmp318, label %if.end326, label %land.lhs.true320, !dbg !2049

land.lhs.true320:                                 ; preds = %land.lhs.true315
  %cmp323 = icmp eq i32 %85, 25, !dbg !2050
  br i1 %cmp323, label %if.end326, label %cleanup339.loopexit, !dbg !2051

if.end326:                                        ; preds = %land.lhs.true320, %land.lhs.true315, %if.then310
  %cmp330 = icmp eq i32 %85, %0, !dbg !2052
  br i1 %cmp330, label %if.then332, label %for.inc, !dbg !2054

if.then332:                                       ; preds = %if.end326
  %u333 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2055
  %left335 = bitcast %union.anon* %u333 to %struct.demangle_component**, !dbg !2055
  %86 = load %struct.demangle_component*, %struct.demangle_component** %left335, align 8, !dbg !2055
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %86) #8, !dbg !2057
  br label %cleanup339, !dbg !2058

for.inc:                                          ; preds = %for.body, %if.end326
  %next338 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %pdpm.0, i64 0, i32 0, !dbg !2059
  br label %for.cond, !dbg !2060, !llvm.loop !2061

cleanup339.loopexit:                              ; preds = %for.cond, %land.lhs.true320
  br label %cleanup339

cleanup339:                                       ; preds = %cleanup339.loopexit, %if.then332
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then332 ], [ true, %cleanup339.loopexit ]
  br i1 %cleanup.dest.slot.1, label %sw.bb342, label %return

sw.bb342:                                         ; preds = %cleanup339, %if.end2, %if.end2, %if.end2, %if.end2, %if.end2, %if.end2, %if.end2, %if.end2, %if.end2
  %87 = bitcast %struct.d_print_mod* %dpm to i8*, !dbg !2063
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %87) #6, !dbg !2063
  %modifiers343 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !2064
  %88 = bitcast %struct.d_print_mod** %modifiers343 to i64*, !dbg !2064
  %89 = load i64, i64* %88, align 8, !dbg !2064
  %90 = bitcast %struct.d_print_mod* %dpm to i64*, !dbg !2065
  store i64 %89, i64* %90, align 8, !dbg !2065
  store %struct.d_print_mod* %dpm, %struct.d_print_mod** %modifiers343, align 8, !dbg !2066
  %mod346 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %dpm, i64 0, i32 1, !dbg !2067
  store %struct.demangle_component* %dc, %struct.demangle_component** %mod346, align 8, !dbg !2068
  %printed347 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %dpm, i64 0, i32 2, !dbg !2069
  store i32 0, i32* %printed347, align 8, !dbg !2070
  %templates348 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 6, !dbg !2071
  %91 = bitcast %struct.d_print_template** %templates348 to i64*, !dbg !2071
  %92 = load i64, i64* %91, align 8, !dbg !2071
  %templates349 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %dpm, i64 0, i32 3, !dbg !2072
  %93 = bitcast %struct.d_print_template** %templates349 to i64*, !dbg !2073
  store i64 %92, i64* %93, align 8, !dbg !2073
  %u350 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2074
  %left352 = bitcast %union.anon* %u350 to %struct.demangle_component**, !dbg !2074
  %94 = load %struct.demangle_component*, %struct.demangle_component** %left352, align 8, !dbg !2074
  call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %94) #8, !dbg !2075
  %95 = load i32, i32* %printed347, align 8, !dbg !2076
  %tobool354 = icmp eq i32 %95, 0, !dbg !2078
  br i1 %tobool354, label %if.then355, label %if.end356, !dbg !2079

if.then355:                                       ; preds = %sw.bb342
  call fastcc void @d_print_mod(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) #8, !dbg !2080
  br label %if.end356, !dbg !2080

if.end356:                                        ; preds = %sw.bb342, %if.then355
  %96 = load i64, i64* %90, align 8, !dbg !2081
  store i64 %96, i64* %88, align 8, !dbg !2082
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %87) #6, !dbg !2083
  br label %return

sw.bb360:                                         ; preds = %if.end2
  %options361 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 0, !dbg !2084
  %97 = load i32, i32* %options361, align 8, !dbg !2084
  %and362 = and i32 %97, 4, !dbg !2086
  %cmp363 = icmp eq i32 %and362, 0, !dbg !2087
  %u366 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2088
  %type367 = bitcast %union.anon* %u366 to %struct.demangle_builtin_type_info**, !dbg !2088
  %98 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type367, align 8, !dbg !2088
  br i1 %cmp363, label %if.then365, label %if.else374, !dbg !2089

if.then365:                                       ; preds = %sw.bb360
  %name368 = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %98, i64 0, i32 0, !dbg !2090
  %99 = load i8*, i8** %name368, align 8, !dbg !2090
  %len372 = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %98, i64 0, i32 1, !dbg !2091
  %100 = load i32, i32* %len372, align 8, !dbg !2091
  %conv373 = sext i32 %100 to i64, !dbg !2092
  tail call fastcc void @d_append_buffer(%struct.d_print_info* %dpi, i8* %99, i64 %conv373) #8, !dbg !2093
  br label %return, !dbg !2093

if.else374:                                       ; preds = %sw.bb360
  %java_name = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %98, i64 0, i32 2, !dbg !2094
  %101 = load i8*, i8** %java_name, align 8, !dbg !2094
  %java_len = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %98, i64 0, i32 3, !dbg !2095
  %102 = load i32, i32* %java_len, align 8, !dbg !2095
  %conv381 = sext i32 %102 to i64, !dbg !2096
  tail call fastcc void @d_append_buffer(%struct.d_print_info* %dpi, i8* %101, i64 %conv381) #8, !dbg !2097
  br label %return

sw.bb383:                                         ; preds = %if.end2
  %u384 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2098
  %left386 = bitcast %union.anon* %u384 to %struct.demangle_component**, !dbg !2098
  %103 = load %struct.demangle_component*, %struct.demangle_component** %left386, align 8, !dbg !2098
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %103) #8, !dbg !2099
  br label %return, !dbg !2100

sw.bb387:                                         ; preds = %if.end2
  %options388 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 0, !dbg !2101
  %104 = load i32, i32* %options388, align 8, !dbg !2101
  %and389 = and i32 %104, 32, !dbg !2103
  %cmp390 = icmp eq i32 %and389, 0, !dbg !2104
  br i1 %cmp390, label %if.end394, label %if.then392, !dbg !2105

if.then392:                                       ; preds = %sw.bb387
  %modifiers393 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !2106
  %105 = load %struct.d_print_mod*, %struct.d_print_mod** %modifiers393, align 8, !dbg !2106
  tail call fastcc void @d_print_function_type(%struct.d_print_info* %dpi, %struct.demangle_component* %dc, %struct.d_print_mod* %105) #8, !dbg !2107
  br label %if.end394, !dbg !2107

if.end394:                                        ; preds = %sw.bb387, %if.then392
  %u395 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2108
  %left397 = bitcast %union.anon* %u395 to %struct.demangle_component**, !dbg !2108
  %106 = load %struct.demangle_component*, %struct.demangle_component** %left397, align 8, !dbg !2108
  %cmp398 = icmp eq %struct.demangle_component* %106, null, !dbg !2109
  br i1 %cmp398, label %if.end427, label %if.then400, !dbg !2110

if.then400:                                       ; preds = %if.end394
  %107 = bitcast %struct.d_print_mod* %dpm401 to i8*, !dbg !2111
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %107) #6, !dbg !2111
  %modifiers402 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !2112
  %108 = bitcast %struct.d_print_mod** %modifiers402 to i64*, !dbg !2112
  %109 = load i64, i64* %108, align 8, !dbg !2112
  %110 = bitcast %struct.d_print_mod* %dpm401 to i64*, !dbg !2113
  store i64 %109, i64* %110, align 8, !dbg !2113
  store %struct.d_print_mod* %dpm401, %struct.d_print_mod** %modifiers402, align 8, !dbg !2114
  %mod405 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %dpm401, i64 0, i32 1, !dbg !2115
  store %struct.demangle_component* %dc, %struct.demangle_component** %mod405, align 8, !dbg !2116
  %printed406 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %dpm401, i64 0, i32 2, !dbg !2117
  store i32 0, i32* %printed406, align 8, !dbg !2118
  %templates407 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 6, !dbg !2119
  %111 = bitcast %struct.d_print_template** %templates407 to i64*, !dbg !2119
  %112 = load i64, i64* %111, align 8, !dbg !2119
  %templates408 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %dpm401, i64 0, i32 3, !dbg !2120
  %113 = bitcast %struct.d_print_template** %templates408 to i64*, !dbg !2121
  store i64 %112, i64* %113, align 8, !dbg !2121
  %114 = load %struct.demangle_component*, %struct.demangle_component** %left397, align 8, !dbg !2122
  call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %114) #8, !dbg !2123
  %115 = load i64, i64* %110, align 8, !dbg !2124
  store i64 %115, i64* %108, align 8, !dbg !2125
  %116 = load i32, i32* %printed406, align 8, !dbg !2126
  %tobool415 = icmp eq i32 %116, 0, !dbg !2128
  br i1 %tobool415, label %if.end417, label %cleanup424, !dbg !2129

if.end417:                                        ; preds = %if.then400
  %117 = load i32, i32* %options388, align 8, !dbg !2130
  %and419 = and i32 %117, 32, !dbg !2132
  %cmp420 = icmp eq i32 %and419, 0, !dbg !2133
  br i1 %cmp420, label %if.then422, label %cleanup424, !dbg !2134

if.then422:                                       ; preds = %if.end417
  call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !2135
  br label %cleanup424, !dbg !2135

cleanup424:                                       ; preds = %if.then400, %if.end417, %if.then422
  %cleanup.dest.slot.2 = phi i1 [ false, %if.then400 ], [ true, %if.then422 ], [ true, %if.end417 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %107) #6, !dbg !2136
  br i1 %cleanup.dest.slot.2, label %if.end427, label %return

if.end427:                                        ; preds = %if.end394, %cleanup424
  %118 = load i32, i32* %options388, align 8, !dbg !2137
  %and429 = and i32 %118, 32, !dbg !2139
  %cmp430 = icmp eq i32 %and429, 0, !dbg !2140
  br i1 %cmp430, label %if.then432, label %return, !dbg !2141

if.then432:                                       ; preds = %if.end427
  %modifiers433 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !2142
  %119 = load %struct.d_print_mod*, %struct.d_print_mod** %modifiers433, align 8, !dbg !2142
  call fastcc void @d_print_function_type(%struct.d_print_info* %dpi, %struct.demangle_component* %dc, %struct.d_print_mod* %119) #8, !dbg !2143
  br label %return, !dbg !2143

sw.bb435:                                         ; preds = %if.end2
  %120 = bitcast [4 x %struct.d_print_mod]* %adpm437 to i8*, !dbg !2144
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %120) #6, !dbg !2144
  call void @llvm.dbg.declare(metadata [4 x %struct.d_print_mod]* %adpm437, metadata !1727, metadata !DIExpression()), !dbg !2145
  %modifiers440 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !2146
  %121 = load %struct.d_print_mod*, %struct.d_print_mod** %modifiers440, align 8, !dbg !2146
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %121, metadata !1725, metadata !DIExpression()), !dbg !2147
  %next442 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm437, i64 0, i64 0, i32 0, !dbg !2148
  store %struct.d_print_mod* %121, %struct.d_print_mod** %next442, align 16, !dbg !2149
  %arrayidx443 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm437, i64 0, i64 0, !dbg !2150
  store %struct.d_print_mod* %arrayidx443, %struct.d_print_mod** %modifiers440, align 8, !dbg !2151
  %mod446 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm437, i64 0, i64 0, i32 1, !dbg !2152
  store %struct.demangle_component* %dc, %struct.demangle_component** %mod446, align 8, !dbg !2153
  %printed448 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm437, i64 0, i64 0, i32 2, !dbg !2154
  store i32 0, i32* %printed448, align 16, !dbg !2155
  %templates449 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 6, !dbg !2156
  %122 = bitcast %struct.d_print_template** %templates449 to i64*, !dbg !2156
  %123 = load i64, i64* %122, align 8, !dbg !2156
  %templates451 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm437, i64 0, i64 0, i32 3, !dbg !2157
  %124 = bitcast %struct.d_print_template** %templates451 to i64*, !dbg !2158
  store i64 %123, i64* %124, align 8, !dbg !2158
  call void @llvm.dbg.value(metadata i32 1, metadata !1728, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %121, metadata !1729, metadata !DIExpression()), !dbg !2147
  %125 = bitcast %struct.d_print_mod** %modifiers440 to i64*, !dbg !2159
  br label %while.cond452, !dbg !2163

while.cond452:                                    ; preds = %if.end490, %sw.bb435
  %i438.0 = phi i32 [ 1, %sw.bb435 ], [ %i438.1, %if.end490 ], !dbg !2164
  %pdpm439.0 = phi %struct.d_print_mod* [ %121, %sw.bb435 ], [ %133, %if.end490 ], !dbg !2147
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %pdpm439.0, metadata !1729, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %i438.0, metadata !1728, metadata !DIExpression()), !dbg !2147
  %cmp453 = icmp eq %struct.d_print_mod* %pdpm439.0, null, !dbg !2165
  br i1 %cmp453, label %while.end492, label %land.rhs, !dbg !2166

land.rhs:                                         ; preds = %while.cond452
  %mod455 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %pdpm439.0, i64 0, i32 1, !dbg !2167
  %126 = load %struct.demangle_component*, %struct.demangle_component** %mod455, align 8, !dbg !2167
  %type456 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %126, i64 0, i32 0, !dbg !2168
  %127 = load i32, i32* %type456, align 8, !dbg !2168
  %cmp457 = icmp eq i32 %127, 23, !dbg !2169
  br i1 %cmp457, label %while.body470, label %lor.lhs.false459, !dbg !2170

lor.lhs.false459:                                 ; preds = %land.rhs
  %cmp462 = icmp eq i32 %127, 24, !dbg !2171
  br i1 %cmp462, label %while.body470, label %lor.rhs464, !dbg !2172

lor.rhs464:                                       ; preds = %lor.lhs.false459
  %cmp467 = icmp eq i32 %127, 25, !dbg !2173
  br i1 %cmp467, label %while.body470, label %while.end492, !dbg !2163

while.body470:                                    ; preds = %land.rhs, %lor.lhs.false459, %lor.rhs464
  %printed471 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %pdpm439.0, i64 0, i32 2, !dbg !2174
  %128 = load i32, i32* %printed471, align 8, !dbg !2174
  %tobool472 = icmp eq i32 %128, 0, !dbg !2175
  br i1 %tobool472, label %if.then473, label %if.end490, !dbg !2176

if.then473:                                       ; preds = %while.body470
  %cmp475 = icmp ugt i32 %i438.0, 3, !dbg !2177
  br i1 %cmp475, label %if.then477, label %if.end478, !dbg !2179

if.then477:                                       ; preds = %if.then473
  call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !2180
  br label %cleanup512, !dbg !2182

if.end478:                                        ; preds = %if.then473
  %idxprom479 = zext i32 %i438.0 to i64, !dbg !2183
  %arrayidx480 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm437, i64 0, i64 %idxprom479, !dbg !2183
  %129 = bitcast %struct.d_print_mod* %arrayidx480 to i8*, !dbg !2184
  %130 = bitcast %struct.d_print_mod* %pdpm439.0 to i8*, !dbg !2184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %129, i8* nonnull align 8 %130, i64 32, i1 false), !dbg !2184
  %131 = load i64, i64* %125, align 8, !dbg !2185
  %132 = bitcast %struct.d_print_mod* %arrayidx480 to i64*, !dbg !2186
  store i64 %131, i64* %132, align 16, !dbg !2186
  store %struct.d_print_mod* %arrayidx480, %struct.d_print_mod** %modifiers440, align 8, !dbg !2187
  store i32 1, i32* %printed471, align 8, !dbg !2188
  %inc489 = add i32 %i438.0, 1, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %inc489, metadata !1728, metadata !DIExpression()), !dbg !2147
  br label %if.end490, !dbg !2190

if.end490:                                        ; preds = %while.body470, %if.end478
  %i438.1 = phi i32 [ %i438.0, %while.body470 ], [ %inc489, %if.end478 ], !dbg !2147
  call void @llvm.dbg.value(metadata i32 %i438.1, metadata !1728, metadata !DIExpression()), !dbg !2147
  %next491 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %pdpm439.0, i64 0, i32 0, !dbg !2191
  %133 = load %struct.d_print_mod*, %struct.d_print_mod** %next491, align 8, !dbg !2191
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %133, metadata !1729, metadata !DIExpression()), !dbg !2147
  br label %while.cond452, !dbg !2163, !llvm.loop !2192

while.end492:                                     ; preds = %while.cond452, %lor.rhs464
  %i438.0.lcssa = phi i32 [ %i438.0, %while.cond452 ], [ %i438.0, %lor.rhs464 ], !dbg !2164
  call void @llvm.dbg.value(metadata i32 %i438.0.lcssa, metadata !1728, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %i438.0.lcssa, metadata !1728, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %i438.0.lcssa, metadata !1728, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %i438.0.lcssa, metadata !1728, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %i438.0.lcssa, metadata !1728, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %i438.0.lcssa, metadata !1728, metadata !DIExpression()), !dbg !2147
  %right495 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2194
  %134 = bitcast i32* %right495 to %struct.demangle_component**, !dbg !2194
  %135 = load %struct.demangle_component*, %struct.demangle_component** %134, align 8, !dbg !2194
  call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %135) #8, !dbg !2195
  store %struct.d_print_mod* %121, %struct.d_print_mod** %modifiers440, align 8, !dbg !2196
  %136 = load i32, i32* %printed448, align 16, !dbg !2197
  %tobool499 = icmp eq i32 %136, 0, !dbg !2199
  br i1 %tobool499, label %while.cond502.preheader, label %cleanup512, !dbg !2200

while.cond502.preheader:                          ; preds = %while.end492
  %137 = zext i32 %i438.0.lcssa to i64, !dbg !2201
  br label %while.cond502, !dbg !2201

while.cond502:                                    ; preds = %while.cond502.preheader, %while.body505
  %indvars.iv26 = phi i64 [ %137, %while.cond502.preheader ], [ %indvars.iv.next27, %while.body505 ], !dbg !2147
  call void @llvm.dbg.value(metadata i64 %indvars.iv26, metadata !1728, metadata !DIExpression()), !dbg !2147
  %cmp503 = icmp ugt i64 %indvars.iv26, 1, !dbg !2202
  br i1 %cmp503, label %while.body505, label %while.end510, !dbg !2201

while.body505:                                    ; preds = %while.cond502
  %dec506 = add nuw nsw i64 %indvars.iv26, 4294967295, !dbg !2203
  %idxprom507 = and i64 %dec506, 4294967295, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %dec506, metadata !1728, metadata !DIExpression()), !dbg !2147
  %mod509 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %adpm437, i64 0, i64 %idxprom507, i32 1, !dbg !2206
  %138 = load %struct.demangle_component*, %struct.demangle_component** %mod509, align 8, !dbg !2206
  call fastcc void @d_print_mod(%struct.d_print_info* %dpi, %struct.demangle_component* %138) #8, !dbg !2207
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, -1, !dbg !2203
  br label %while.cond502, !dbg !2201, !llvm.loop !2208

while.end510:                                     ; preds = %while.cond502
  %139 = load %struct.d_print_mod*, %struct.d_print_mod** %modifiers440, align 8, !dbg !2210
  call fastcc void @d_print_array_type(%struct.d_print_info* %dpi, %struct.demangle_component* %dc, %struct.d_print_mod* %139) #8, !dbg !2211
  br label %cleanup512, !dbg !2212

cleanup512:                                       ; preds = %while.end492, %while.end510, %if.then477
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %120) #6, !dbg !2213
  br label %return

sw.bb516:                                         ; preds = %if.end2, %if.end2
  %140 = bitcast %struct.d_print_mod* %dpm517 to i8*, !dbg !2214
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %140) #6, !dbg !2214
  %modifiers518 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !2215
  %141 = bitcast %struct.d_print_mod** %modifiers518 to i64*, !dbg !2215
  %142 = load i64, i64* %141, align 8, !dbg !2215
  %143 = bitcast %struct.d_print_mod* %dpm517 to i64*, !dbg !2216
  store i64 %142, i64* %143, align 8, !dbg !2216
  store %struct.d_print_mod* %dpm517, %struct.d_print_mod** %modifiers518, align 8, !dbg !2217
  %mod521 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %dpm517, i64 0, i32 1, !dbg !2218
  store %struct.demangle_component* %dc, %struct.demangle_component** %mod521, align 8, !dbg !2219
  %printed522 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %dpm517, i64 0, i32 2, !dbg !2220
  store i32 0, i32* %printed522, align 8, !dbg !2221
  %templates523 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 6, !dbg !2222
  %144 = bitcast %struct.d_print_template** %templates523 to i64*, !dbg !2222
  %145 = load i64, i64* %144, align 8, !dbg !2222
  %templates524 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %dpm517, i64 0, i32 3, !dbg !2223
  %146 = bitcast %struct.d_print_template** %templates524 to i64*, !dbg !2224
  store i64 %145, i64* %146, align 8, !dbg !2224
  %right527 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2225
  %147 = bitcast i32* %right527 to %struct.demangle_component**, !dbg !2225
  %148 = load %struct.demangle_component*, %struct.demangle_component** %147, align 8, !dbg !2225
  call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %148) #8, !dbg !2226
  %149 = load i32, i32* %printed522, align 8, !dbg !2227
  %tobool529 = icmp eq i32 %149, 0, !dbg !2229
  br i1 %tobool529, label %if.then530, label %if.end531, !dbg !2230

if.then530:                                       ; preds = %sw.bb516
  call fastcc void @d_print_mod(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) #8, !dbg !2231
  br label %if.end531, !dbg !2231

if.end531:                                        ; preds = %sw.bb516, %if.then530
  %150 = load i64, i64* %143, align 8, !dbg !2232
  store i64 %150, i64* %141, align 8, !dbg !2233
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %140) #6, !dbg !2234
  br label %return

sw.bb535:                                         ; preds = %if.end2
  %u536 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2235
  %s_fixed = bitcast %union.anon* %u536 to %struct.anon.2*, !dbg !2237
  %sat = getelementptr inbounds %struct.anon.2, %struct.anon.2* %s_fixed, i64 0, i32 2, !dbg !2238
  %151 = load i16, i16* %sat, align 2, !dbg !2238
  %tobool537 = icmp eq i16 %151, 0, !dbg !2239
  br i1 %tobool537, label %if.end539, label %if.then538, !dbg !2240

if.then538:                                       ; preds = %sw.bb535
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i64 0, i64 0)) #8, !dbg !2241
  br label %if.end539, !dbg !2241

if.end539:                                        ; preds = %sw.bb535, %if.then538
  %length = bitcast %union.anon* %u536 to %struct.demangle_component**, !dbg !2242
  %152 = load %struct.demangle_component*, %struct.demangle_component** %length, align 8, !dbg !2242
  %u542 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %152, i64 0, i32 1, !dbg !2244
  %type544 = bitcast %union.anon* %u542 to %struct.demangle_builtin_type_info**, !dbg !2245
  %153 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type544, align 8, !dbg !2245
  %cmp545 = icmp eq %struct.demangle_builtin_type_info* %153, getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 8), !dbg !2246
  br i1 %cmp545, label %if.end551, label %if.then547, !dbg !2247

if.then547:                                       ; preds = %if.end539
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %152) #8, !dbg !2248
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !2250
  br label %if.end551, !dbg !2251

if.end551:                                        ; preds = %if.end539, %if.then547
  %accum = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2252
  %154 = bitcast i32* %accum to i16*, !dbg !2252
  %155 = load i16, i16* %154, align 8, !dbg !2252
  %tobool554 = icmp eq i16 %155, 0, !dbg !2254
  br i1 %tobool554, label %if.else556, label %if.then555, !dbg !2255

if.then555:                                       ; preds = %if.end551
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i64 0, i64 0)) #8, !dbg !2256
  br label %return, !dbg !2256

if.else556:                                       ; preds = %if.end551
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.165, i64 0, i64 0)) #8, !dbg !2257
  br label %return

sw.bb558:                                         ; preds = %if.end2, %if.end2
  %u559 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2258
  %left561 = bitcast %union.anon* %u559 to %struct.demangle_component**, !dbg !2258
  %156 = load %struct.demangle_component*, %struct.demangle_component** %left561, align 8, !dbg !2258
  %cmp562 = icmp eq %struct.demangle_component* %156, null, !dbg !2260
  br i1 %cmp562, label %if.end568, label %if.then564, !dbg !2261

if.then564:                                       ; preds = %sw.bb558
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* nonnull %156) #8, !dbg !2262
  br label %if.end568, !dbg !2262

if.end568:                                        ; preds = %sw.bb558, %if.then564
  %right571 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2263
  %157 = bitcast i32* %right571 to %struct.demangle_component**, !dbg !2263
  %158 = load %struct.demangle_component*, %struct.demangle_component** %157, align 8, !dbg !2263
  %cmp572 = icmp eq %struct.demangle_component* %158, null, !dbg !2264
  br i1 %cmp572, label %return, label %if.then574, !dbg !2265

if.then574:                                       ; preds = %if.end568
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i64 0, i64 0)) #8, !dbg !2266
  %len576 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 2, !dbg !2267
  %159 = load i64, i64* %len576, align 8, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %159, metadata !1732, metadata !DIExpression()), !dbg !2268
  %160 = load %struct.demangle_component*, %struct.demangle_component** %157, align 8, !dbg !2269
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %160) #8, !dbg !2270
  %161 = load i64, i64* %len576, align 8, !dbg !2271
  %cmp581 = icmp eq i64 %161, %159, !dbg !2273
  br i1 %cmp581, label %if.then583, label %return, !dbg !2274

if.then583:                                       ; preds = %if.then574
  %sub585 = add i64 %159, -2, !dbg !2275
  store i64 %sub585, i64* %len576, align 8, !dbg !2275
  br label %return, !dbg !2276

sw.bb588:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.167, i64 0, i64 0)) #8, !dbg !2277
  %u589 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2278
  %op = bitcast %union.anon* %u589 to %struct.demangle_operator_info**, !dbg !2279
  %162 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op, align 8, !dbg !2279
  %name590 = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %162, i64 0, i32 1, !dbg !2280
  %163 = load i8*, i8** %name590, align 8, !dbg !2280
  %164 = load i8, i8* %163, align 1, !dbg !2281
  call void @llvm.dbg.value(metadata i8 %164, metadata !1735, metadata !DIExpression()), !dbg !2282
  %.off = add i8 %164, -97, !dbg !2283
  %165 = icmp ult i8 %.off, 26, !dbg !2283
  br i1 %165, label %if.then599, label %if.end600, !dbg !2283

if.then599:                                       ; preds = %sw.bb588
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !2285
  %.pre12 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op, align 8, !dbg !2286
  %name604.phi.trans.insert = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %.pre12, i64 0, i32 1, !dbg !2282
  %.pre13 = load i8*, i8** %name604.phi.trans.insert, align 8, !dbg !2287
  br label %if.end600, !dbg !2285

if.end600:                                        ; preds = %if.then599, %sw.bb588
  %166 = phi i8* [ %.pre13, %if.then599 ], [ %163, %sw.bb588 ], !dbg !2287
  %167 = phi %struct.demangle_operator_info* [ %.pre12, %if.then599 ], [ %162, %sw.bb588 ], !dbg !2286
  %len608 = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %167, i64 0, i32 2, !dbg !2288
  %168 = load i32, i32* %len608, align 8, !dbg !2288
  %conv609 = sext i32 %168 to i64, !dbg !2289
  tail call fastcc void @d_append_buffer(%struct.d_print_info* %dpi, i8* %166, i64 %conv609) #8, !dbg !2290
  br label %return

sw.bb611:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.168, i64 0, i64 0)) #8, !dbg !2291
  %name613 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2292
  %169 = bitcast i32* %name613 to %struct.demangle_component**, !dbg !2292
  %170 = load %struct.demangle_component*, %struct.demangle_component** %169, align 8, !dbg !2292
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %170) #8, !dbg !2293
  br label %return, !dbg !2294

sw.bb614:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.168, i64 0, i64 0)) #8, !dbg !2295
  tail call fastcc void @d_print_cast(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) #8, !dbg !2296
  br label %return, !dbg !2297

sw.bb615:                                         ; preds = %if.end2
  %u616 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2298
  %left618 = bitcast %union.anon* %u616 to %struct.demangle_component**, !dbg !2298
  %171 = load %struct.demangle_component*, %struct.demangle_component** %left618, align 8, !dbg !2298
  %type619 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %171, i64 0, i32 0, !dbg !2300
  %172 = load i32, i32* %type619, align 8, !dbg !2300
  %cmp620 = icmp eq i32 %172, 46, !dbg !2301
  br i1 %cmp620, label %if.else626, label %if.then622, !dbg !2302

if.then622:                                       ; preds = %sw.bb615
  tail call fastcc void @d_print_expr_op(%struct.d_print_info* %dpi, %struct.demangle_component* %171) #8, !dbg !2303
  br label %if.end630, !dbg !2303

if.else626:                                       ; preds = %sw.bb615
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 40) #8, !dbg !2304
  %173 = load %struct.demangle_component*, %struct.demangle_component** %left618, align 8, !dbg !2306
  tail call fastcc void @d_print_cast(%struct.d_print_info* %dpi, %struct.demangle_component* %173) #8, !dbg !2307
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 41) #8, !dbg !2308
  br label %if.end630

if.end630:                                        ; preds = %if.else626, %if.then622
  %right633 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2309
  %174 = bitcast i32* %right633 to %struct.demangle_component**, !dbg !2309
  %175 = load %struct.demangle_component*, %struct.demangle_component** %174, align 8, !dbg !2309
  tail call fastcc void @d_print_subexpr(%struct.d_print_info* %dpi, %struct.demangle_component* %175) #8, !dbg !2310
  br label %return, !dbg !2311

sw.bb634:                                         ; preds = %if.end2
  %right637 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2312
  %176 = bitcast i32* %right637 to %struct.demangle_component**, !dbg !2312
  %177 = load %struct.demangle_component*, %struct.demangle_component** %176, align 8, !dbg !2312
  %type638 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %177, i64 0, i32 0, !dbg !2314
  %178 = load i32, i32* %type638, align 8, !dbg !2314
  %cmp639 = icmp eq i32 %178, 49, !dbg !2315
  br i1 %cmp639, label %if.end642, label %if.then641, !dbg !2316

if.then641:                                       ; preds = %sw.bb634
  tail call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !2317
  br label %return, !dbg !2319

if.end642:                                        ; preds = %sw.bb634
  %u643 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2320
  %left645 = bitcast %union.anon* %u643 to %struct.demangle_component**, !dbg !2320
  %179 = load %struct.demangle_component*, %struct.demangle_component** %left645, align 8, !dbg !2320
  %type646 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %179, i64 0, i32 0, !dbg !2322
  %180 = load i32, i32* %type646, align 8, !dbg !2322
  %cmp647 = icmp eq i32 %180, 44, !dbg !2323
  br i1 %cmp647, label %land.lhs.true649, label %if.end672, !dbg !2324

land.lhs.true649:                                 ; preds = %if.end642
  %u653 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %179, i64 0, i32 1, !dbg !2325
  %op655 = bitcast %union.anon* %u653 to %struct.demangle_operator_info**, !dbg !2326
  %181 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op655, align 8, !dbg !2326
  %len656 = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %181, i64 0, i32 2, !dbg !2327
  %182 = load i32, i32* %len656, align 8, !dbg !2327
  %cmp657 = icmp eq i32 %182, 1, !dbg !2328
  br i1 %cmp657, label %land.lhs.true659, label %if.end672, !dbg !2329

land.lhs.true659:                                 ; preds = %land.lhs.true649
  %name666 = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %181, i64 0, i32 1, !dbg !2330
  %183 = load i8*, i8** %name666, align 8, !dbg !2330
  %184 = load i8, i8* %183, align 1, !dbg !2331
  %cmp669 = icmp eq i8 %184, 62, !dbg !2332
  br i1 %cmp669, label %if.then671, label %if.end672, !dbg !2333

if.then671:                                       ; preds = %land.lhs.true659
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 40) #8, !dbg !2334
  %.pre11 = load %struct.demangle_component*, %struct.demangle_component** %176, align 8, !dbg !2335
  br label %if.end672, !dbg !2334

if.end672:                                        ; preds = %if.then671, %land.lhs.true659, %land.lhs.true649, %if.end642
  %185 = phi %struct.demangle_component* [ %.pre11, %if.then671 ], [ %177, %land.lhs.true659 ], [ %177, %land.lhs.true649 ], [ %177, %if.end642 ], !dbg !2335
  %u676 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %185, i64 0, i32 1, !dbg !2335
  %left678 = bitcast %union.anon* %u676 to %struct.demangle_component**, !dbg !2335
  %186 = load %struct.demangle_component*, %struct.demangle_component** %left678, align 8, !dbg !2335
  tail call fastcc void @d_print_subexpr(%struct.d_print_info* %dpi, %struct.demangle_component* %186) #8, !dbg !2336
  %187 = load %struct.demangle_component*, %struct.demangle_component** %left645, align 8, !dbg !2337
  %u682 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %187, i64 0, i32 1, !dbg !2339
  %op684 = bitcast %union.anon* %u682 to %struct.demangle_operator_info**, !dbg !2340
  %188 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op684, align 8, !dbg !2340
  %code = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %188, i64 0, i32 0, !dbg !2341
  %189 = load i8*, i8** %code, align 8, !dbg !2341
  %call685 = tail call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !2342
  %cmp686 = icmp eq i32 %call685, 0, !dbg !2343
  br i1 %cmp686, label %if.then688, label %if.else695, !dbg !2344

if.then688:                                       ; preds = %if.end672
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 91) #8, !dbg !2345
  %190 = load %struct.demangle_component*, %struct.demangle_component** %176, align 8, !dbg !2347
  %right694 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %190, i64 0, i32 1, i32 0, i32 1, !dbg !2347
  %191 = bitcast i32* %right694 to %struct.demangle_component**, !dbg !2347
  %192 = load %struct.demangle_component*, %struct.demangle_component** %191, align 8, !dbg !2347
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %192) #8, !dbg !2348
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 93) #8, !dbg !2349
  br label %if.end717, !dbg !2350

if.else695:                                       ; preds = %if.end672
  %193 = load %struct.demangle_component*, %struct.demangle_component** %left645, align 8, !dbg !2351
  %u699 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %193, i64 0, i32 1, !dbg !2354
  %op701 = bitcast %union.anon* %u699 to %struct.demangle_operator_info**, !dbg !2355
  %194 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op701, align 8, !dbg !2355
  %code702 = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %194, i64 0, i32 0, !dbg !2356
  %195 = load i8*, i8** %code702, align 8, !dbg !2356
  %call703 = tail call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !2357
  %cmp704 = icmp eq i32 %call703, 0, !dbg !2358
  br i1 %cmp704, label %if.end710, label %if.then706, !dbg !2359

if.then706:                                       ; preds = %if.else695
  %196 = load %struct.demangle_component*, %struct.demangle_component** %left645, align 8, !dbg !2360
  tail call fastcc void @d_print_expr_op(%struct.d_print_info* %dpi, %struct.demangle_component* %196) #8, !dbg !2361
  br label %if.end710, !dbg !2361

if.end710:                                        ; preds = %if.else695, %if.then706
  %197 = load %struct.demangle_component*, %struct.demangle_component** %176, align 8, !dbg !2362
  %right716 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %197, i64 0, i32 1, i32 0, i32 1, !dbg !2362
  %198 = bitcast i32* %right716 to %struct.demangle_component**, !dbg !2362
  %199 = load %struct.demangle_component*, %struct.demangle_component** %198, align 8, !dbg !2362
  tail call fastcc void @d_print_subexpr(%struct.d_print_info* %dpi, %struct.demangle_component* %199) #8, !dbg !2363
  br label %if.end717

if.end717:                                        ; preds = %if.end710, %if.then688
  %200 = load %struct.demangle_component*, %struct.demangle_component** %left645, align 8, !dbg !2364
  %type721 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %200, i64 0, i32 0, !dbg !2366
  %201 = load i32, i32* %type721, align 8, !dbg !2366
  %cmp722 = icmp eq i32 %201, 44, !dbg !2367
  br i1 %cmp722, label %land.lhs.true724, label %return, !dbg !2368

land.lhs.true724:                                 ; preds = %if.end717
  %u728 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %200, i64 0, i32 1, !dbg !2369
  %op730 = bitcast %union.anon* %u728 to %struct.demangle_operator_info**, !dbg !2370
  %202 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op730, align 8, !dbg !2370
  %len731 = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %202, i64 0, i32 2, !dbg !2371
  %203 = load i32, i32* %len731, align 8, !dbg !2371
  %cmp732 = icmp eq i32 %203, 1, !dbg !2372
  br i1 %cmp732, label %land.lhs.true734, label %return, !dbg !2373

land.lhs.true734:                                 ; preds = %land.lhs.true724
  %name741 = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %202, i64 0, i32 1, !dbg !2374
  %204 = load i8*, i8** %name741, align 8, !dbg !2374
  %205 = load i8, i8* %204, align 1, !dbg !2375
  %cmp744 = icmp eq i8 %205, 62, !dbg !2376
  br i1 %cmp744, label %if.then746, label %return, !dbg !2377

if.then746:                                       ; preds = %land.lhs.true734
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 41) #8, !dbg !2378
  br label %return, !dbg !2378

sw.bb748:                                         ; preds = %if.end2
  tail call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !2379
  br label %return, !dbg !2380

sw.bb749:                                         ; preds = %if.end2
  %right752 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2381
  %206 = bitcast i32* %right752 to %struct.demangle_component**, !dbg !2381
  %207 = load %struct.demangle_component*, %struct.demangle_component** %206, align 8, !dbg !2381
  %type753 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %207, i64 0, i32 0, !dbg !2383
  %208 = load i32, i32* %type753, align 8, !dbg !2383
  %cmp754 = icmp eq i32 %208, 51, !dbg !2384
  br i1 %cmp754, label %lor.lhs.false756, label %if.then766, !dbg !2385

lor.lhs.false756:                                 ; preds = %sw.bb749
  %right762 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %207, i64 0, i32 1, i32 0, i32 1, !dbg !2386
  %209 = bitcast i32* %right762 to %struct.demangle_component**, !dbg !2386
  %210 = load %struct.demangle_component*, %struct.demangle_component** %209, align 8, !dbg !2386
  %type763 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %210, i64 0, i32 0, !dbg !2387
  %211 = load i32, i32* %type763, align 8, !dbg !2387
  %cmp764 = icmp eq i32 %211, 52, !dbg !2388
  br i1 %cmp764, label %if.end767, label %if.then766, !dbg !2389

if.then766:                                       ; preds = %lor.lhs.false756, %sw.bb749
  tail call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !2390
  br label %return, !dbg !2392

if.end767:                                        ; preds = %lor.lhs.false756
  %u771 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %207, i64 0, i32 1, !dbg !2393
  %left773 = bitcast %union.anon* %u771 to %struct.demangle_component**, !dbg !2393
  %212 = load %struct.demangle_component*, %struct.demangle_component** %left773, align 8, !dbg !2393
  tail call fastcc void @d_print_subexpr(%struct.d_print_info* %dpi, %struct.demangle_component* %212) #8, !dbg !2394
  %u774 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2395
  %left776 = bitcast %union.anon* %u774 to %struct.demangle_component**, !dbg !2395
  %213 = load %struct.demangle_component*, %struct.demangle_component** %left776, align 8, !dbg !2395
  tail call fastcc void @d_print_expr_op(%struct.d_print_info* %dpi, %struct.demangle_component* %213) #8, !dbg !2396
  %214 = load %struct.demangle_component*, %struct.demangle_component** %206, align 8, !dbg !2397
  %right782 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %214, i64 0, i32 1, i32 0, i32 1, !dbg !2397
  %215 = bitcast i32* %right782 to %struct.demangle_component**, !dbg !2397
  %216 = load %struct.demangle_component*, %struct.demangle_component** %215, align 8, !dbg !2397
  %u783 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %216, i64 0, i32 1, !dbg !2397
  %left785 = bitcast %union.anon* %u783 to %struct.demangle_component**, !dbg !2397
  %217 = load %struct.demangle_component*, %struct.demangle_component** %left785, align 8, !dbg !2397
  tail call fastcc void @d_print_subexpr(%struct.d_print_info* %dpi, %struct.demangle_component* %217) #8, !dbg !2398
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0)) #8, !dbg !2399
  %218 = load %struct.demangle_component*, %struct.demangle_component** %206, align 8, !dbg !2400
  %right791 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %218, i64 0, i32 1, i32 0, i32 1, !dbg !2400
  %219 = bitcast i32* %right791 to %struct.demangle_component**, !dbg !2400
  %220 = load %struct.demangle_component*, %struct.demangle_component** %219, align 8, !dbg !2400
  %right794 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %220, i64 0, i32 1, i32 0, i32 1, !dbg !2400
  %221 = bitcast i32* %right794 to %struct.demangle_component**, !dbg !2400
  %222 = load %struct.demangle_component*, %struct.demangle_component** %221, align 8, !dbg !2400
  tail call fastcc void @d_print_subexpr(%struct.d_print_info* %dpi, %struct.demangle_component* %222) #8, !dbg !2401
  br label %return, !dbg !2402

sw.bb795:                                         ; preds = %if.end2, %if.end2
  tail call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !2403
  br label %return, !dbg !2404

sw.bb796:                                         ; preds = %if.end2, %if.end2
  call void @llvm.dbg.value(metadata i32 0, metadata !1737, metadata !DIExpression()), !dbg !2405
  %u797 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2406
  %left799 = bitcast %union.anon* %u797 to %struct.demangle_component**, !dbg !2406
  %223 = load %struct.demangle_component*, %struct.demangle_component** %left799, align 8, !dbg !2406
  %type800 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %223, i64 0, i32 0, !dbg !2408
  %224 = load i32, i32* %type800, align 8, !dbg !2408
  %cmp801 = icmp eq i32 %224, 35, !dbg !2409
  br i1 %cmp801, label %if.then803, label %if.end868, !dbg !2410

if.then803:                                       ; preds = %sw.bb796
  %u807 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %223, i64 0, i32 1, !dbg !2411
  %type809 = bitcast %union.anon* %u807 to %struct.demangle_builtin_type_info**, !dbg !2413
  %225 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type809, align 8, !dbg !2413
  %print = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %225, i64 0, i32 4, !dbg !2414
  %226 = load i32, i32* %print, align 4, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %226, metadata !1737, metadata !DIExpression()), !dbg !2405
  switch i32 %226, label %if.end868 [
    i32 1, label %sw.bb810
    i32 2, label %sw.bb810
    i32 3, label %sw.bb810
    i32 4, label %sw.bb810
    i32 5, label %sw.bb810
    i32 6, label %sw.bb810
    i32 7, label %sw.bb832
  ], !dbg !2415

sw.bb810:                                         ; preds = %if.then803, %if.then803, %if.then803, %if.then803, %if.then803, %if.then803
  %right813 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2416
  %227 = bitcast i32* %right813 to %struct.demangle_component**, !dbg !2416
  %228 = load %struct.demangle_component*, %struct.demangle_component** %227, align 8, !dbg !2416
  %type814 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %228, i64 0, i32 0, !dbg !2419
  %229 = load i32, i32* %type814, align 8, !dbg !2419
  %cmp815 = icmp eq i32 %229, 0, !dbg !2420
  br i1 %cmp815, label %if.then817, label %if.end868, !dbg !2421

if.then817:                                       ; preds = %sw.bb810
  %cmp819 = icmp eq i32 %0, 54, !dbg !2422
  br i1 %cmp819, label %if.then821, label %if.end822, !dbg !2425

if.then821:                                       ; preds = %if.then817
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 45) #8, !dbg !2426
  %.pre = load %struct.demangle_component*, %struct.demangle_component** %227, align 8, !dbg !2427
  br label %if.end822, !dbg !2426

if.end822:                                        ; preds = %if.then821, %if.then817
  %230 = phi %struct.demangle_component* [ %.pre, %if.then821 ], [ %228, %if.then817 ], !dbg !2427
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %230) #8, !dbg !2428
  switch i32 %226, label %cleanup888 [
    i32 2, label %sw.bb826
    i32 3, label %sw.bb827
    i32 4, label %sw.bb828
    i32 5, label %sw.bb829
    i32 6, label %sw.bb830
  ], !dbg !2429

sw.bb826:                                         ; preds = %if.end822
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 117) #8, !dbg !2430
  br label %cleanup888, !dbg !2432

sw.bb827:                                         ; preds = %if.end822
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 108) #8, !dbg !2433
  br label %cleanup888, !dbg !2434

sw.bb828:                                         ; preds = %if.end822
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.170, i64 0, i64 0)) #8, !dbg !2435
  br label %cleanup888, !dbg !2436

sw.bb829:                                         ; preds = %if.end822
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.171, i64 0, i64 0)) #8, !dbg !2437
  br label %cleanup888, !dbg !2438

sw.bb830:                                         ; preds = %if.end822
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.172, i64 0, i64 0)) #8, !dbg !2439
  br label %cleanup888, !dbg !2440

sw.bb832:                                         ; preds = %if.then803
  %right835 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2441
  %231 = bitcast i32* %right835 to %struct.demangle_component**, !dbg !2441
  %232 = load %struct.demangle_component*, %struct.demangle_component** %231, align 8, !dbg !2441
  %type836 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %232, i64 0, i32 0, !dbg !2443
  %233 = load i32, i32* %type836, align 8, !dbg !2443
  %cmp837 = icmp eq i32 %233, 0, !dbg !2444
  br i1 %cmp837, label %land.lhs.true839, label %if.end868, !dbg !2445

land.lhs.true839:                                 ; preds = %sw.bb832
  %len845 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %232, i64 0, i32 1, i32 0, i32 1, !dbg !2446
  %234 = load i32, i32* %len845, align 8, !dbg !2446
  %cmp846 = icmp eq i32 %234, 1, !dbg !2447
  br i1 %cmp846, label %land.lhs.true848, label %if.end868, !dbg !2448

land.lhs.true848:                                 ; preds = %land.lhs.true839
  %cmp850 = icmp eq i32 %0, 53, !dbg !2449
  br i1 %cmp850, label %if.then852, label %if.end868, !dbg !2450

if.then852:                                       ; preds = %land.lhs.true848
  %s858 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %232, i64 0, i32 1, i32 0, i32 0, !dbg !2451
  %235 = load i8*, i8** %s858, align 8, !dbg !2451
  %236 = load i8, i8* %235, align 1, !dbg !2453
  %conv860 = sext i8 %236 to i32, !dbg !2453
  switch i32 %conv860, label %if.end868 [
    i32 48, label %sw.bb861
    i32 49, label %sw.bb862
  ], !dbg !2454

sw.bb861:                                         ; preds = %if.then852
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i64 0, i64 0)) #8, !dbg !2455
  br label %cleanup888, !dbg !2457

sw.bb862:                                         ; preds = %if.then852
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.174, i64 0, i64 0)) #8, !dbg !2458
  br label %cleanup888, !dbg !2459

if.end868:                                        ; preds = %sw.bb810, %if.then852, %land.lhs.true848, %land.lhs.true839, %sw.bb832, %if.then803, %sw.bb796
  %tp.0 = phi i32 [ 0, %sw.bb796 ], [ %226, %if.then803 ], [ 7, %sw.bb832 ], [ 7, %land.lhs.true839 ], [ 7, %land.lhs.true848 ], [ 7, %if.then852 ], [ %226, %sw.bb810 ], !dbg !2405
  call void @llvm.dbg.value(metadata i32 %tp.0, metadata !1737, metadata !DIExpression()), !dbg !2405
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 40) #8, !dbg !2460
  %237 = load %struct.demangle_component*, %struct.demangle_component** %left799, align 8, !dbg !2461
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %237) #8, !dbg !2462
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 41) #8, !dbg !2463
  %238 = load i32, i32* %type, align 8, !dbg !2464
  %cmp873 = icmp eq i32 %238, 54, !dbg !2466
  br i1 %cmp873, label %if.then875, label %if.end876, !dbg !2467

if.then875:                                       ; preds = %if.end868
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 45) #8, !dbg !2468
  br label %if.end876, !dbg !2468

if.end876:                                        ; preds = %if.then875, %if.end868
  %cmp877 = icmp eq i32 %tp.0, 8, !dbg !2469
  br i1 %cmp877, label %if.then879, label %if.end880, !dbg !2471

if.then879:                                       ; preds = %if.end876
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 91) #8, !dbg !2472
  br label %if.end880, !dbg !2472

if.end880:                                        ; preds = %if.then879, %if.end876
  %right883 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2473
  %239 = bitcast i32* %right883 to %struct.demangle_component**, !dbg !2473
  %240 = load %struct.demangle_component*, %struct.demangle_component** %239, align 8, !dbg !2473
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %240) #8, !dbg !2474
  br i1 %cmp877, label %if.then886, label %cleanup888, !dbg !2475

if.then886:                                       ; preds = %if.end880
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 93) #8, !dbg !2476
  br label %cleanup888, !dbg !2476

cleanup888:                                       ; preds = %if.end880, %if.then886, %sw.bb826, %sw.bb827, %sw.bb828, %sw.bb829, %sw.bb830, %if.end822, %sw.bb862, %sw.bb861
  ret void

sw.bb891:                                         ; preds = %if.end2
  %u892 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2478
  %number = bitcast %union.anon* %u892 to i64*, !dbg !2479
  %241 = load i64, i64* %number, align 8, !dbg !2479
  tail call fastcc void @d_append_num(%struct.d_print_info* %dpi, i64 %241) #8, !dbg !2480
  br label %return, !dbg !2481

sw.bb893:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.175, i64 0, i64 0)) #8, !dbg !2482
  %u894 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2483
  %left896 = bitcast %union.anon* %u894 to %struct.demangle_component**, !dbg !2483
  %242 = load %struct.demangle_component*, %struct.demangle_component** %left896, align 8, !dbg !2483
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %242) #8, !dbg !2484
  br label %return, !dbg !2485

sw.bb897:                                         ; preds = %if.end2
  %u898 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2486
  %left900 = bitcast %union.anon* %u898 to %struct.demangle_component**, !dbg !2486
  %243 = load %struct.demangle_component*, %struct.demangle_component** %left900, align 8, !dbg !2486
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %243) #8, !dbg !2487
  %right903 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2488
  %244 = bitcast i32* %right903 to %struct.demangle_component**, !dbg !2488
  %245 = load %struct.demangle_component*, %struct.demangle_component** %244, align 8, !dbg !2488
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %245) #8, !dbg !2489
  br label %return, !dbg !2490

sw.bb904:                                         ; preds = %if.end2
  %u905 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2491
  %character = bitcast %union.anon* %u905 to i32*, !dbg !2492
  %246 = load i32, i32* %character, align 8, !dbg !2492
  %conv906 = trunc i32 %246 to i8, !dbg !2493
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext %conv906) #8, !dbg !2494
  br label %return, !dbg !2495

sw.bb907:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i64 0, i64 0)) #8, !dbg !2496
  %u908 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2497
  %left910 = bitcast %union.anon* %u908 to %struct.demangle_component**, !dbg !2497
  %247 = load %struct.demangle_component*, %struct.demangle_component** %left910, align 8, !dbg !2497
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %247) #8, !dbg !2498
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 41) #8, !dbg !2499
  br label %return, !dbg !2500

sw.bb911:                                         ; preds = %if.end2
  %u915 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2501
  %left917 = bitcast %union.anon* %u915 to %struct.demangle_component**, !dbg !2501
  %248 = load %struct.demangle_component*, %struct.demangle_component** %left917, align 8, !dbg !2501
  %call918 = tail call fastcc %struct.demangle_component* @d_find_pack(%struct.d_print_info* %dpi, %struct.demangle_component* %248) #8, !dbg !2502
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call918, metadata !1742, metadata !DIExpression()), !dbg !2503
  %cmp919 = icmp eq %struct.demangle_component* %call918, null, !dbg !2504
  br i1 %cmp919, label %if.then921, label %if.end925, !dbg !2506

if.then921:                                       ; preds = %sw.bb911
  %249 = load %struct.demangle_component*, %struct.demangle_component** %left917, align 8, !dbg !2507
  tail call fastcc void @d_print_subexpr(%struct.d_print_info* %dpi, %struct.demangle_component* %249) #8, !dbg !2509
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !2510
  br label %return, !dbg !2511

if.end925:                                        ; preds = %sw.bb911
  %call926 = tail call fastcc i32 @d_pack_length(%struct.demangle_component* nonnull %call918) #8, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %call926, metadata !1739, metadata !DIExpression()), !dbg !2503
  %250 = load %struct.demangle_component*, %struct.demangle_component** %left917, align 8, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.demangle_component* %250, metadata !1697, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i32 0, metadata !1741, metadata !DIExpression()), !dbg !2503
  %pack_index934 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 9, !dbg !2514
  %sub935 = add nsw i32 %call926, -1, !dbg !2518
  br label %for.cond930, !dbg !2520

for.cond930:                                      ; preds = %for.inc940, %if.end925
  %i913.0 = phi i32 [ 0, %if.end925 ], [ %inc941, %for.inc940 ], !dbg !2521
  call void @llvm.dbg.value(metadata i32 %i913.0, metadata !1741, metadata !DIExpression()), !dbg !2503
  %cmp931 = icmp slt i32 %i913.0, %call926, !dbg !2522
  br i1 %cmp931, label %for.body933, label %return.loopexit, !dbg !2523

for.body933:                                      ; preds = %for.cond930
  store i32 %i913.0, i32* %pack_index934, align 4, !dbg !2524
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %250) #8, !dbg !2525
  %cmp936 = icmp slt i32 %i913.0, %sub935, !dbg !2526
  br i1 %cmp936, label %if.then938, label %for.inc940, !dbg !2527

if.then938:                                       ; preds = %for.body933
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i64 0, i64 0)) #8, !dbg !2528
  br label %for.inc940, !dbg !2528

for.inc940:                                       ; preds = %for.body933, %if.then938
  %inc941 = add nuw nsw i32 %i913.0, 1, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %inc941, metadata !1741, metadata !DIExpression()), !dbg !2503
  br label %for.cond930, !dbg !2530, !llvm.loop !2531

sw.bb948:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i64 0, i64 0)) #8, !dbg !2533
  %u949 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2534
  %number951 = bitcast %union.anon* %u949 to i64*, !dbg !2535
  %251 = load i64, i64* %number951, align 8, !dbg !2535
  %add = add nsw i64 %251, 1, !dbg !2536
  tail call fastcc void @d_append_num(%struct.d_print_info* %dpi, i64 %add) #8, !dbg !2537
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 125) #8, !dbg !2538
  br label %return, !dbg !2539

sw.bb952:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.178, i64 0, i64 0)) #8, !dbg !2540
  %u953 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2541
  %left955 = bitcast %union.anon* %u953 to %struct.demangle_component**, !dbg !2542
  %252 = load %struct.demangle_component*, %struct.demangle_component** %left955, align 8, !dbg !2542
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %252) #8, !dbg !2543
  br label %return, !dbg !2544

sw.bb956:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.179, i64 0, i64 0)) #8, !dbg !2545
  %u957 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2546
  %left959 = bitcast %union.anon* %u957 to %struct.demangle_component**, !dbg !2547
  %253 = load %struct.demangle_component*, %struct.demangle_component** %left959, align 8, !dbg !2547
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %253) #8, !dbg !2548
  br label %return, !dbg !2549

sw.bb960:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.180, i64 0, i64 0)) #8, !dbg !2550
  %u961 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2551
  %sub963 = bitcast %union.anon* %u961 to %struct.demangle_component**, !dbg !2552
  %254 = load %struct.demangle_component*, %struct.demangle_component** %sub963, align 8, !dbg !2552
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %254) #8, !dbg !2553
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i64 0, i64 0)) #8, !dbg !2554
  %255 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !2555
  %256 = load i32, i32* %255, align 8, !dbg !2555
  %add966 = add nsw i32 %256, 1, !dbg !2556
  %conv967 = sext i32 %add966 to i64, !dbg !2557
  tail call fastcc void @d_append_num(%struct.d_print_info* %dpi, i64 %conv967) #8, !dbg !2558
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 125) #8, !dbg !2559
  br label %return, !dbg !2560

sw.bb968:                                         ; preds = %if.end2
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.182, i64 0, i64 0)) #8, !dbg !2561
  %u969 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !2562
  %number971 = bitcast %union.anon* %u969 to i64*, !dbg !2563
  %257 = load i64, i64* %number971, align 8, !dbg !2563
  %add972 = add nsw i64 %257, 1, !dbg !2564
  tail call fastcc void @d_append_num(%struct.d_print_info* %dpi, i64 %add972) #8, !dbg !2565
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 125) #8, !dbg !2566
  br label %return, !dbg !2567

sw.default973:                                    ; preds = %if.end2
  tail call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !2568
  br label %return, !dbg !2569

return.loopexit:                                  ; preds = %for.cond930
  br label %return, !dbg !2570

return:                                           ; preds = %return.loopexit, %if.end568, %if.end, %if.then921, %if.end717, %land.lhs.true724, %land.lhs.true734, %if.then746, %if.then583, %if.then574, %if.then555, %if.else556, %if.end427, %if.then432, %cleanup424, %if.then365, %if.else374, %cleanup339, %if.then230, %if.end231, %if.then4, %if.else, %sw.default973, %sw.bb968, %sw.bb960, %sw.bb956, %sw.bb952, %sw.bb948, %sw.bb907, %sw.bb904, %sw.bb897, %sw.bb893, %sw.bb891, %sw.bb795, %if.end767, %if.then766, %sw.bb748, %if.then641, %if.end630, %sw.bb614, %sw.bb611, %if.end600, %if.end531, %cleanup512, %sw.bb383, %if.end356, %sw.bb298, %sw.bb294, %sw.bb290, %sw.bb286, %sw.bb282, %sw.bb278, %sw.bb274, %sw.bb270, %sw.bb266, %sw.bb262, %sw.bb258, %sw.bb251, %sw.bb247, %sw.bb243, %sw.bb240, %sw.bb238, %if.end214, %cleanup162, %if.end22, %if.then
  ret void, !dbg !2570
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @d_print_flush(%struct.d_print_info* %dpi) unnamed_addr #0 !dbg !2571 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !2575, metadata !DIExpression()), !dbg !2576
  %len = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 2, !dbg !2577
  %0 = load i64, i64* %len, align 8, !dbg !2577
  %arrayidx = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 1, i64 %0, !dbg !2578
  store i8 0, i8* %arrayidx, align 1, !dbg !2579
  %callback = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 4, !dbg !2580
  %1 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %callback, align 8, !dbg !2580
  %arraydecay = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 1, i64 0, !dbg !2581
  %2 = load i64, i64* %len, align 8, !dbg !2582
  %opaque = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 5, !dbg !2583
  %3 = load i8*, i8** %opaque, align 8, !dbg !2583
  tail call void %1(i8* nonnull %arraydecay, i64 %2, i8* %3) #7, !dbg !2584
  store i64 0, i64* %len, align 8, !dbg !2585
  ret void, !dbg !2586
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @d_print_saw_error(%struct.d_print_info* %dpi) unnamed_addr #0 !dbg !2587 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !2591, metadata !DIExpression()), !dbg !2592
  %demangle_failure = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 8, !dbg !2593
  %0 = load i32, i32* %demangle_failure, align 8, !dbg !2593
  %cmp = icmp ne i32 %0, 0, !dbg !2594
  %conv = zext i1 %cmp to i32, !dbg !2594
  ret i32 %conv, !dbg !2595
}

; Function Attrs: nounwind uwtable
define dso_local i8* @cplus_demangle_print(i32 %options, %struct.demangle_component* %dc, i32 %estimate, i64* %palc) local_unnamed_addr #5 !dbg !2596 {
entry:
  %dgs = alloca %struct.d_growable_string, align 8
  call void @llvm.dbg.value(metadata i32 %options, metadata !2600, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !2601, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 %estimate, metadata !2602, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i64* %palc, metadata !2603, metadata !DIExpression()), !dbg !2605
  %0 = bitcast %struct.d_growable_string* %dgs to i8*, !dbg !2606
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #6, !dbg !2606
  %conv = sext i32 %estimate to i64, !dbg !2607
  call void @llvm.dbg.value(metadata %struct.d_growable_string* %dgs, metadata !2604, metadata !DIExpression(DW_OP_deref)), !dbg !2605
  call fastcc void @d_growable_string_init(%struct.d_growable_string* nonnull %dgs, i64 %conv) #8, !dbg !2608
  %call = call i32 @cplus_demangle_print_callback(i32 %options, %struct.demangle_component* %dc, void (i8*, i64, i8*)* nonnull @d_growable_string_callback_adapter, i8* nonnull %0) #8, !dbg !2609
  %tobool = icmp eq i32 %call, 0, !dbg !2609
  br i1 %tobool, label %if.then, label %if.end, !dbg !2611

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 0, !dbg !2612
  %1 = load i8*, i8** %buf, align 8, !dbg !2612
  call void @free(i8* %1) #7, !dbg !2614
  store i64 0, i64* %palc, align 8, !dbg !2615
  br label %cleanup, !dbg !2616

if.end:                                           ; preds = %entry
  %allocation_failure = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 3, !dbg !2617
  %2 = load i32, i32* %allocation_failure, align 8, !dbg !2617
  %tobool1 = icmp eq i32 %2, 0, !dbg !2618
  %alc = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 2, !dbg !2618
  %3 = load i64, i64* %alc, align 8, !dbg !2618
  %cond = select i1 %tobool1, i64 %3, i64 1, !dbg !2618
  store i64 %cond, i64* %palc, align 8, !dbg !2619
  %buf2 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 0, !dbg !2620
  %4 = load i8*, i8** %buf2, align 8, !dbg !2620
  br label %cleanup, !dbg !2621

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %4, %if.end ], [ null, %if.then ], !dbg !2605
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #6, !dbg !2622
  ret i8* %retval.0, !dbg !2622
}

; Function Attrs: nounwind uwtable
define internal fastcc void @d_growable_string_init(%struct.d_growable_string* %dgs, i64 %estimate) unnamed_addr #5 !dbg !2623 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_growable_string* %dgs, metadata !2627, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i64 %estimate, metadata !2628, metadata !DIExpression()), !dbg !2629
  %buf = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 0, !dbg !2630
  store i8* null, i8** %buf, align 8, !dbg !2631
  %len = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 1, !dbg !2632
  store i64 0, i64* %len, align 8, !dbg !2633
  %alc = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 2, !dbg !2634
  store i64 0, i64* %alc, align 8, !dbg !2635
  %allocation_failure = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 3, !dbg !2636
  store i32 0, i32* %allocation_failure, align 8, !dbg !2637
  %cmp = icmp eq i64 %estimate, 0, !dbg !2638
  br i1 %cmp, label %if.end, label %if.then, !dbg !2640

if.then:                                          ; preds = %entry
  tail call fastcc void @d_growable_string_resize(%struct.d_growable_string* %dgs, i64 %estimate) #8, !dbg !2641
  br label %if.end, !dbg !2641

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2642
}

; Function Attrs: nounwind uwtable
define internal void @d_growable_string_callback_adapter(i8* %s, i64 %l, i8* %opaque) #5 !dbg !2643 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !2645, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %l, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %opaque, metadata !2647, metadata !DIExpression()), !dbg !2649
  %0 = bitcast i8* %opaque to %struct.d_growable_string*, !dbg !2650
  call void @llvm.dbg.value(metadata %struct.d_growable_string* %0, metadata !2648, metadata !DIExpression()), !dbg !2649
  tail call fastcc void @d_growable_string_append_buffer(%struct.d_growable_string* %0, i8* %s, i64 %l) #8, !dbg !2651
  ret void, !dbg !2652
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cplus_demangle_init_info(i8* %mangled, i32 %options, i64 %len, %struct.d_info* %di) local_unnamed_addr #5 !dbg !2653 {
entry:
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !2657, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i32 %options, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %len, metadata !2659, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !2660, metadata !DIExpression()), !dbg !2661
  %s = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 0, !dbg !2662
  store i8* %mangled, i8** %s, align 8, !dbg !2663
  %add.ptr = getelementptr inbounds i8, i8* %mangled, i64 %len, !dbg !2664
  %send = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 1, !dbg !2665
  store i8* %add.ptr, i8** %send, align 8, !dbg !2666
  %options1 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 2, !dbg !2667
  store i32 %options, i32* %options1, align 8, !dbg !2668
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !2669
  store i8* %mangled, i8** %n, align 8, !dbg !2670
  %len.tr = trunc i64 %len to i32, !dbg !2671
  %conv = shl i32 %len.tr, 1, !dbg !2671
  %num_comps = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 6, !dbg !2672
  store i32 %conv, i32* %num_comps, align 4, !dbg !2673
  %next_comp = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 5, !dbg !2674
  store i32 0, i32* %next_comp, align 8, !dbg !2675
  %num_subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 9, !dbg !2676
  store i32 %len.tr, i32* %num_subs, align 4, !dbg !2677
  %next_sub = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 8, !dbg !2678
  store i32 0, i32* %next_sub, align 8, !dbg !2679
  %did_subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 10, !dbg !2680
  store i32 0, i32* %did_subs, align 8, !dbg !2681
  %last_name = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 11, !dbg !2682
  store %struct.demangle_component* null, %struct.demangle_component** %last_name, align 8, !dbg !2683
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !2684
  store i32 0, i32* %expansion, align 8, !dbg !2685
  ret void, !dbg !2686
}

; Function Attrs: nounwind uwtable
define dso_local i8* @cplus_demangle_v3(i8* %mangled, i32 %options) local_unnamed_addr #5 !dbg !2687 {
entry:
  %alc = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %options, metadata !2692, metadata !DIExpression()), !dbg !2694
  %0 = bitcast i64* %alc to i8*, !dbg !2695
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !2695
  call void @llvm.dbg.value(metadata i64* %alc, metadata !2693, metadata !DIExpression(DW_OP_deref)), !dbg !2694
  %call = call fastcc i8* @d_demangle(i8* %mangled, i32 %options, i64* nonnull %alc) #8, !dbg !2696
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !2697
  ret i8* %call, !dbg !2698
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @d_demangle(i8* %mangled, i32 %options, i64* %palc) unnamed_addr #5 !dbg !2699 {
entry:
  %dgs = alloca %struct.d_growable_string, align 8
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !2703, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 %options, metadata !2704, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64* %palc, metadata !2705, metadata !DIExpression()), !dbg !2708
  %0 = bitcast %struct.d_growable_string* %dgs to i8*, !dbg !2709
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #6, !dbg !2709
  call void @llvm.dbg.value(metadata %struct.d_growable_string* %dgs, metadata !2706, metadata !DIExpression(DW_OP_deref)), !dbg !2708
  call fastcc void @d_growable_string_init(%struct.d_growable_string* nonnull %dgs, i64 0) #8, !dbg !2710
  %call = call fastcc i32 @d_demangle_callback(i8* %mangled, i32 %options, void (i8*, i64, i8*)* nonnull @d_growable_string_callback_adapter, i8* nonnull %0) #8, !dbg !2711
  call void @llvm.dbg.value(metadata i32 %call, metadata !2707, metadata !DIExpression()), !dbg !2708
  %cmp = icmp eq i32 %call, 0, !dbg !2712
  br i1 %cmp, label %if.then, label %if.end, !dbg !2714

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 0, !dbg !2715
  %1 = load i8*, i8** %buf, align 8, !dbg !2715
  call void @free(i8* %1) #7, !dbg !2717
  store i64 0, i64* %palc, align 8, !dbg !2718
  br label %cleanup, !dbg !2719

if.end:                                           ; preds = %entry
  %allocation_failure = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 3, !dbg !2720
  %2 = load i32, i32* %allocation_failure, align 8, !dbg !2720
  %tobool = icmp eq i32 %2, 0, !dbg !2721
  %alc = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 2, !dbg !2721
  %3 = load i64, i64* %alc, align 8, !dbg !2721
  %cond = select i1 %tobool, i64 %3, i64 1, !dbg !2721
  store i64 %cond, i64* %palc, align 8, !dbg !2722
  %buf1 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 0, !dbg !2723
  %4 = load i8*, i8** %buf1, align 8, !dbg !2723
  br label %cleanup, !dbg !2724

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %4, %if.end ], !dbg !2708
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #6, !dbg !2725
  ret i8* %retval.0, !dbg !2725
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_v3_callback(i8* %mangled, i32 %options, void (i8*, i64, i8*)* %callback, i8* %opaque) local_unnamed_addr #5 !dbg !2726 {
entry:
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !2728, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 %options, metadata !2729, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata void (i8*, i64, i8*)* %callback, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* %opaque, metadata !2731, metadata !DIExpression()), !dbg !2732
  %call = tail call fastcc i32 @d_demangle_callback(i8* %mangled, i32 %options, void (i8*, i64, i8*)* %callback, i8* %opaque) #8, !dbg !2733
  ret i32 %call, !dbg !2734
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @d_demangle_callback(i8* %mangled, i32 %options, void (i8*, i64, i8*)* %callback, i8* %opaque) unnamed_addr #5 !dbg !99 {
entry:
  %di = alloca %struct.d_info, align 8
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !115, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 %options, metadata !116, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata void (i8*, i64, i8*)* %callback, metadata !117, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8* %opaque, metadata !118, metadata !DIExpression()), !dbg !2735
  %0 = bitcast %struct.d_info* %di to i8*, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #6, !dbg !2736
  %1 = load i8, i8* %mangled, align 1, !dbg !2737
  %cmp = icmp eq i8 %1, 95, !dbg !2739
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2740

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8, i8* %mangled, i64 1, !dbg !2741
  %2 = load i8, i8* %arrayidx2, align 1, !dbg !2741
  %cmp4 = icmp eq i8 %2, 90, !dbg !2742
  br i1 %cmp4, label %if.end47, label %if.else, !dbg !2743

if.else:                                          ; preds = %land.lhs.true, %entry
  %call = tail call i32 @strncmp(i8* %mangled, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i64 0, i64 0), i64 8) #7, !dbg !2744
  %cmp6 = icmp eq i32 %call, 0, !dbg !2746
  br i1 %cmp6, label %land.lhs.true8, label %if.else42, !dbg !2747

land.lhs.true8:                                   ; preds = %if.else
  %arrayidx9 = getelementptr inbounds i8, i8* %mangled, i64 8, !dbg !2748
  %3 = load i8, i8* %arrayidx9, align 1, !dbg !2748
  %cmp11 = icmp eq i8 %3, 46, !dbg !2749
  br i1 %cmp11, label %land.lhs.true22, label %lor.lhs.false, !dbg !2750

lor.lhs.false:                                    ; preds = %land.lhs.true8
  %cmp15 = icmp eq i8 %3, 95, !dbg !2751
  br i1 %cmp15, label %land.lhs.true22, label %lor.lhs.false17, !dbg !2752

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %cmp20 = icmp eq i8 %3, 36, !dbg !2753
  br i1 %cmp20, label %land.lhs.true22, label %if.else42, !dbg !2754

land.lhs.true22:                                  ; preds = %lor.lhs.false17, %lor.lhs.false, %land.lhs.true8
  %arrayidx23 = getelementptr inbounds i8, i8* %mangled, i64 9, !dbg !2755
  %4 = load i8, i8* %arrayidx23, align 1, !dbg !2755
  %cmp25 = icmp eq i8 %4, 68, !dbg !2756
  br i1 %cmp25, label %land.lhs.true32, label %lor.lhs.false27, !dbg !2757

lor.lhs.false27:                                  ; preds = %land.lhs.true22
  %cmp30 = icmp eq i8 %4, 73, !dbg !2758
  br i1 %cmp30, label %land.lhs.true32, label %if.else42, !dbg !2759

land.lhs.true32:                                  ; preds = %lor.lhs.false27, %land.lhs.true22
  %arrayidx33 = getelementptr inbounds i8, i8* %mangled, i64 10, !dbg !2760
  %5 = load i8, i8* %arrayidx33, align 1, !dbg !2760
  %cmp35 = icmp eq i8 %5, 95, !dbg !2761
  br i1 %cmp35, label %if.then37, label %if.else42, !dbg !2762

if.then37:                                        ; preds = %land.lhs.true32
  %cmp40 = icmp eq i8 %4, 73, !dbg !2763
  %cond = select i1 %cmp40, i32 2, i32 3, !dbg !2764
  call void @llvm.dbg.value(metadata i32 %cond, metadata !119, metadata !DIExpression()), !dbg !2735
  br label %if.end47, !dbg !2765

if.else42:                                        ; preds = %land.lhs.true32, %lor.lhs.false27, %lor.lhs.false17, %if.else
  %and = and i32 %options, 16, !dbg !2766
  %cmp43 = icmp eq i32 %and, 0, !dbg !2769
  br i1 %cmp43, label %cleanup, label %if.end47, !dbg !2770

if.end47:                                         ; preds = %if.then37, %if.else42, %land.lhs.true
  %type.1 = phi i32 [ 1, %land.lhs.true ], [ %cond, %if.then37 ], [ 0, %if.else42 ], !dbg !2771
  call void @llvm.dbg.value(metadata i32 %type.1, metadata !119, metadata !DIExpression()), !dbg !2735
  %call48 = tail call i64 @strlen(i8* %mangled) #7, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !120, metadata !DIExpression(DW_OP_deref)), !dbg !2735
  call void @cplus_demangle_init_info(i8* %mangled, i32 %options, i64 %call48, %struct.d_info* nonnull %di) #8, !dbg !2773
  %num_comps = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 6, !dbg !2774
  %6 = load i32, i32* %num_comps, align 4, !dbg !2774
  %7 = zext i32 %6 to i64, !dbg !2775
  %8 = call i8* @llvm.stacksave(), !dbg !2775
  %vla = alloca %struct.demangle_component, i64 %7, align 16, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %7, metadata !222, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.declare(metadata %struct.demangle_component* %vla, metadata !224, metadata !DIExpression()), !dbg !2777
  %num_subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 9, !dbg !2778
  %9 = load i32, i32* %num_subs, align 4, !dbg !2778
  %10 = zext i32 %9 to i64, !dbg !2779
  %vla49 = alloca %struct.demangle_component*, i64 %10, align 16, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %10, metadata !228, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.declare(metadata %struct.demangle_component** %vla49, metadata !229, metadata !DIExpression()), !dbg !2780
  %comps = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 4, !dbg !2781
  store %struct.demangle_component* %vla, %struct.demangle_component** %comps, align 8, !dbg !2782
  %subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 7, !dbg !2783
  store %struct.demangle_component** %vla49, %struct.demangle_component*** %subs, align 8, !dbg !2784
  switch i32 %type.1, label %sw.epilog1 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb51
    i32 2, label %sw.bb53
    i32 3, label %sw.bb53
  ], !dbg !2785

sw.bb:                                            ; preds = %if.end47
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !120, metadata !DIExpression(DW_OP_deref)), !dbg !2735
  %call50 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* nonnull %di) #8, !dbg !2786
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call50, metadata !220, metadata !DIExpression()), !dbg !2735
  br label %sw.epilog, !dbg !2788

sw.bb51:                                          ; preds = %if.end47
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !120, metadata !DIExpression(DW_OP_deref)), !dbg !2735
  %call52 = call %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info* nonnull %di, i32 1) #8, !dbg !2789
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call52, metadata !220, metadata !DIExpression()), !dbg !2735
  br label %sw.epilog, !dbg !2790

sw.bb53:                                          ; preds = %if.end47, %if.end47
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !2791
  %11 = load i8*, i8** %n, align 8, !dbg !2791
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 11, !dbg !2791
  store i8* %add.ptr, i8** %n, align 8, !dbg !2791
  %cmp54 = icmp eq i32 %type.1, 2, !dbg !2792
  %cond56 = select i1 %cmp54, i32 60, i32 61, !dbg !2793
  %call59 = call i64 @strlen(i8* nonnull %add.ptr) #7, !dbg !2794
  %conv60 = trunc i64 %call59 to i32, !dbg !2794
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !120, metadata !DIExpression(DW_OP_deref)), !dbg !2735
  %call61 = call fastcc %struct.demangle_component* @d_make_name(%struct.d_info* nonnull %di, i8* nonnull %add.ptr, i32 %conv60) #8, !dbg !2795
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !120, metadata !DIExpression(DW_OP_deref)), !dbg !2735
  %call62 = call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* nonnull %di, i32 %cond56, %struct.demangle_component* %call61, %struct.demangle_component* null) #8, !dbg !2796
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call62, metadata !220, metadata !DIExpression()), !dbg !2735
  %12 = load i8*, i8** %n, align 8, !dbg !2797
  %call64 = call i64 @strlen(i8* %12) #7, !dbg !2797
  %13 = load i8*, i8** %n, align 8, !dbg !2797
  %add.ptr66 = getelementptr inbounds i8, i8* %13, i64 %call64, !dbg !2797
  store i8* %add.ptr66, i8** %n, align 8, !dbg !2797
  br label %sw.epilog, !dbg !2798

sw.epilog1:                                       ; preds = %if.end47
  unreachable

sw.epilog:                                        ; preds = %sw.bb53, %sw.bb51, %sw.bb
  %dc.0 = phi %struct.demangle_component* [ %call62, %sw.bb53 ], [ %call52, %sw.bb51 ], [ %call50, %sw.bb ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.0, metadata !220, metadata !DIExpression()), !dbg !2735
  %and67 = and i32 %options, 1, !dbg !2799
  %cmp68 = icmp eq i32 %and67, 0, !dbg !2801
  br i1 %cmp68, label %if.end76, label %land.lhs.true70, !dbg !2802

land.lhs.true70:                                  ; preds = %sw.epilog
  %n71 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !2803
  %14 = load i8*, i8** %n71, align 8, !dbg !2803
  %15 = load i8, i8* %14, align 1, !dbg !2803
  %cmp73 = icmp eq i8 %15, 0, !dbg !2804
  %spec.select = select i1 %cmp73, %struct.demangle_component* %dc.0, %struct.demangle_component* null, !dbg !2805
  br label %if.end76, !dbg !2805

if.end76:                                         ; preds = %sw.epilog, %land.lhs.true70
  %dc.1 = phi %struct.demangle_component* [ %dc.0, %sw.epilog ], [ %spec.select, %land.lhs.true70 ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.1, metadata !220, metadata !DIExpression()), !dbg !2735
  %cmp77 = icmp eq %struct.demangle_component* %dc.1, null, !dbg !2806
  br i1 %cmp77, label %cond.end, label %cond.true, !dbg !2807

cond.true:                                        ; preds = %if.end76
  %call79 = call i32 @cplus_demangle_print_callback(i32 %options, %struct.demangle_component* nonnull %dc.1, void (i8*, i64, i8*)* %callback, i8* %opaque) #8, !dbg !2808
  br label %cond.end, !dbg !2807

cond.end:                                         ; preds = %if.end76, %cond.true
  %cond80 = phi i32 [ %call79, %cond.true ], [ 0, %if.end76 ], !dbg !2807
  call void @llvm.dbg.value(metadata i32 %cond80, metadata !221, metadata !DIExpression()), !dbg !2735
  call void @llvm.stackrestore(i8* %8), !dbg !2809
  br label %cleanup, !dbg !2810

cleanup:                                          ; preds = %if.else42, %cond.end
  %retval.0 = phi i32 [ %cond80, %cond.end ], [ 0, %if.else42 ], !dbg !2735
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #6, !dbg !2811
  ret i32 %retval.0, !dbg !2811
}

; Function Attrs: nounwind uwtable
define dso_local i8* @java_demangle_v3(i8* %mangled) local_unnamed_addr #5 !dbg !2812 {
entry:
  %alc = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !2816, metadata !DIExpression()), !dbg !2818
  %0 = bitcast i64* %alc to i8*, !dbg !2819
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !2819
  call void @llvm.dbg.value(metadata i64* %alc, metadata !2817, metadata !DIExpression(DW_OP_deref)), !dbg !2818
  %call = call fastcc i8* @d_demangle(i8* %mangled, i32 37, i64* nonnull %alc) #8, !dbg !2820
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !2821
  ret i8* %call, !dbg !2822
}

; Function Attrs: nounwind uwtable
define dso_local i32 @java_demangle_v3_callback(i8* %mangled, void (i8*, i64, i8*)* %callback, i8* %opaque) local_unnamed_addr #5 !dbg !2823 {
entry:
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !2827, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata void (i8*, i64, i8*)* %callback, metadata !2828, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8* %opaque, metadata !2829, metadata !DIExpression()), !dbg !2830
  %call = tail call fastcc i32 @d_demangle_callback(i8* %mangled, i32 37, void (i8*, i64, i8*)* %callback, i8* %opaque) #8, !dbg !2831
  ret i32 %call, !dbg !2832
}

; Function Attrs: nounwind uwtable
define dso_local i32 @is_gnu_v3_mangled_ctor(i8* %name) local_unnamed_addr #5 !dbg !2833 {
entry:
  %ctor_kind = alloca i32, align 4
  %dtor_kind = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %name, metadata !2837, metadata !DIExpression()), !dbg !2840
  %0 = bitcast i32* %ctor_kind to i8*, !dbg !2841
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6, !dbg !2841
  %1 = bitcast i32* %dtor_kind to i8*, !dbg !2842
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6, !dbg !2842
  call void @llvm.dbg.value(metadata i32* %ctor_kind, metadata !2838, metadata !DIExpression(DW_OP_deref)), !dbg !2840
  call void @llvm.dbg.value(metadata i32* %dtor_kind, metadata !2839, metadata !DIExpression(DW_OP_deref)), !dbg !2840
  %call = call fastcc i32 @is_ctor_or_dtor(i8* %name, i32* nonnull %ctor_kind, i32* nonnull %dtor_kind) #8, !dbg !2843
  %tobool = icmp eq i32 %call, 0, !dbg !2843
  %2 = load i32, i32* %ctor_kind, align 4, !dbg !2845
  call void @llvm.dbg.value(metadata i32 %2, metadata !2838, metadata !DIExpression()), !dbg !2840
  %retval.0 = select i1 %tobool, i32 0, i32 %2, !dbg !2845
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6, !dbg !2846
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6, !dbg !2846
  ret i32 %retval.0, !dbg !2846
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @is_ctor_or_dtor(i8* %mangled, i32* %ctor_kind, i32* %dtor_kind) unnamed_addr #5 !dbg !2847 {
entry:
  %di = alloca %struct.d_info, align 8
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !2853, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32* %ctor_kind, metadata !2854, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32* %dtor_kind, metadata !2855, metadata !DIExpression()), !dbg !2870
  %0 = bitcast %struct.d_info* %di to i8*, !dbg !2871
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #6, !dbg !2871
  store i32 0, i32* %ctor_kind, align 4, !dbg !2872
  store i32 0, i32* %dtor_kind, align 4, !dbg !2873
  %call = tail call i64 @strlen(i8* %mangled) #7, !dbg !2874
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !2856, metadata !DIExpression(DW_OP_deref)), !dbg !2870
  call void @cplus_demangle_init_info(i8* %mangled, i32 16384, i64 %call, %struct.d_info* nonnull %di) #8, !dbg !2875
  %num_comps = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 6, !dbg !2876
  %1 = load i32, i32* %num_comps, align 4, !dbg !2876
  %2 = zext i32 %1 to i64, !dbg !2877
  %3 = call i8* @llvm.stacksave(), !dbg !2877
  %vla = alloca %struct.demangle_component, i64 %2, align 16, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %2, metadata !2859, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.declare(metadata %struct.demangle_component* %vla, metadata !2861, metadata !DIExpression()), !dbg !2879
  %num_subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 9, !dbg !2880
  %4 = load i32, i32* %num_subs, align 4, !dbg !2880
  %5 = zext i32 %4 to i64, !dbg !2881
  %vla1 = alloca %struct.demangle_component*, i64 %5, align 16, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %5, metadata !2865, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.declare(metadata %struct.demangle_component** %vla1, metadata !2866, metadata !DIExpression()), !dbg !2882
  %comps = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 4, !dbg !2883
  store %struct.demangle_component* %vla, %struct.demangle_component** %comps, align 8, !dbg !2884
  %subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 7, !dbg !2885
  store %struct.demangle_component** %vla1, %struct.demangle_component*** %subs, align 8, !dbg !2886
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !2856, metadata !DIExpression(DW_OP_deref)), !dbg !2870
  %call2 = call %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info* nonnull %di, i32 1) #8, !dbg !2887
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call2, metadata !2857, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32 0, metadata !2858, metadata !DIExpression()), !dbg !2870
  br label %while.cond, !dbg !2888

while.cond:                                       ; preds = %sw.epilog, %entry
  %dc.0 = phi %struct.demangle_component* [ %call2, %entry ], [ %dc.1, %sw.epilog ], !dbg !2878
  %ret.0 = phi i32 [ 0, %entry ], [ %ret.1, %sw.epilog ], !dbg !2889
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !2858, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.0, metadata !2857, metadata !DIExpression()), !dbg !2870
  %cmp = icmp eq %struct.demangle_component* %dc.0, null, !dbg !2890
  br i1 %cmp, label %while.end, label %while.body, !dbg !2888

while.body:                                       ; preds = %while.cond
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.0, i64 0, i32 0, !dbg !2891
  %6 = load i32, i32* %type, align 8, !dbg !2891
  switch i32 %6, label %sw.epilog [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 26, label %sw.bb
    i32 27, label %sw.bb
    i32 28, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb3
    i32 7, label %sw.bb6
    i32 8, label %sw.bb8
  ], !dbg !2893

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.0, i64 0, i32 1, !dbg !2894
  %left = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !2894
  %7 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !2894
  call void @llvm.dbg.value(metadata %struct.demangle_component* %7, metadata !2857, metadata !DIExpression()), !dbg !2870
  br label %sw.epilog, !dbg !2896

sw.bb3:                                           ; preds = %while.body, %while.body
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.0, i64 0, i32 1, i32 0, i32 1, !dbg !2897
  %8 = bitcast i32* %right to %struct.demangle_component**, !dbg !2897
  %9 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8, !dbg !2897
  call void @llvm.dbg.value(metadata %struct.demangle_component* %9, metadata !2857, metadata !DIExpression()), !dbg !2870
  br label %sw.epilog, !dbg !2898

sw.bb6:                                           ; preds = %while.body
  %u7 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.0, i64 0, i32 1, !dbg !2899
  %kind = bitcast %union.anon* %u7 to i32*, !dbg !2900
  %10 = load i32, i32* %kind, align 8, !dbg !2900
  store i32 %10, i32* %ctor_kind, align 4, !dbg !2901
  call void @llvm.dbg.value(metadata i32 1, metadata !2858, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata %struct.demangle_component* null, metadata !2857, metadata !DIExpression()), !dbg !2870
  br label %sw.epilog, !dbg !2902

sw.bb8:                                           ; preds = %while.body
  %u9 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.0, i64 0, i32 1, !dbg !2903
  %kind10 = bitcast %union.anon* %u9 to i32*, !dbg !2904
  %11 = load i32, i32* %kind10, align 8, !dbg !2904
  store i32 %11, i32* %dtor_kind, align 4, !dbg !2905
  call void @llvm.dbg.value(metadata i32 1, metadata !2858, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata %struct.demangle_component* null, metadata !2857, metadata !DIExpression()), !dbg !2870
  br label %sw.epilog, !dbg !2906

sw.epilog:                                        ; preds = %while.body, %sw.bb8, %sw.bb6, %sw.bb3, %sw.bb
  %dc.1 = phi %struct.demangle_component* [ null, %sw.bb8 ], [ null, %sw.bb6 ], [ %9, %sw.bb3 ], [ %7, %sw.bb ], [ null, %while.body ], !dbg !2907
  %ret.1 = phi i32 [ 1, %sw.bb8 ], [ 1, %sw.bb6 ], [ %ret.0, %sw.bb3 ], [ %ret.0, %sw.bb ], [ %ret.0, %while.body ], !dbg !2878
  call void @llvm.dbg.value(metadata i32 %ret.1, metadata !2858, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.1, metadata !2857, metadata !DIExpression()), !dbg !2870
  br label %while.cond, !dbg !2888, !llvm.loop !2908

while.end:                                        ; preds = %while.cond
  %ret.0.lcssa = phi i32 [ %ret.0, %while.cond ], !dbg !2889
  call void @llvm.dbg.value(metadata i32 %ret.0.lcssa, metadata !2858, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32 %ret.0.lcssa, metadata !2858, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32 %ret.0.lcssa, metadata !2858, metadata !DIExpression()), !dbg !2870
  call void @llvm.stackrestore(i8* %3), !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #6, !dbg !2911
  ret i32 %ret.0.lcssa, !dbg !2912
}

; Function Attrs: nounwind uwtable
define dso_local i32 @is_gnu_v3_mangled_dtor(i8* %name) local_unnamed_addr #5 !dbg !2913 {
entry:
  %ctor_kind = alloca i32, align 4
  %dtor_kind = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %name, metadata !2917, metadata !DIExpression()), !dbg !2920
  %0 = bitcast i32* %ctor_kind to i8*, !dbg !2921
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6, !dbg !2921
  %1 = bitcast i32* %dtor_kind to i8*, !dbg !2922
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6, !dbg !2922
  call void @llvm.dbg.value(metadata i32* %ctor_kind, metadata !2918, metadata !DIExpression(DW_OP_deref)), !dbg !2920
  call void @llvm.dbg.value(metadata i32* %dtor_kind, metadata !2919, metadata !DIExpression(DW_OP_deref)), !dbg !2920
  %call = call fastcc i32 @is_ctor_or_dtor(i8* %name, i32* nonnull %ctor_kind, i32* nonnull %dtor_kind) #8, !dbg !2923
  %tobool = icmp eq i32 %call, 0, !dbg !2923
  %2 = load i32, i32* %dtor_kind, align 4, !dbg !2925
  call void @llvm.dbg.value(metadata i32 %2, metadata !2919, metadata !DIExpression()), !dbg !2920
  %retval.0 = select i1 %tobool, i32 0, i32 %2, !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6, !dbg !2926
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6, !dbg !2926
  ret i32 %retval.0, !dbg !2926
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_special_name(%struct.d_info* %di) unnamed_addr #5 !dbg !2927 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !2929, metadata !DIExpression()), !dbg !2937
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !2938
  %0 = load i32, i32* %expansion, align 8, !dbg !2939
  %add = add nsw i32 %0, 20, !dbg !2939
  store i32 %add, i32* %expansion, align 8, !dbg !2939
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !2940
  %1 = load i8*, i8** %n, align 8, !dbg !2940
  %2 = load i8, i8* %1, align 1, !dbg !2940
  %cmp = icmp eq i8 %2, 84, !dbg !2940
  br i1 %cmp, label %cond.true, label %if.else, !dbg !2941

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2940
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !2940
  %3 = load i8, i8* %incdec.ptr, align 1, !dbg !2942
  %cmp5 = icmp eq i8 %3, 0, !dbg !2942
  br i1 %cmp5, label %cond.end, label %cond.false8, !dbg !2942

cond.false8:                                      ; preds = %cond.true
  %incdec.ptr10 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !2942
  store i8* %incdec.ptr10, i8** %n, align 8, !dbg !2942
  %4 = load i8, i8* %incdec.ptr, align 1, !dbg !2942
  %conv11 = sext i8 %4 to i32, !dbg !2942
  br label %cond.end, !dbg !2942

cond.end:                                         ; preds = %cond.true, %cond.false8
  %cond = phi i32 [ %conv11, %cond.false8 ], [ 0, %cond.true ], !dbg !2942
  switch i32 %cond, label %return [
    i32 86, label %sw.bb
    i32 84, label %sw.bb14
    i32 73, label %sw.bb19
    i32 83, label %sw.bb22
    i32 104, label %sw.bb25
    i32 118, label %sw.bb30
    i32 99, label %sw.bb37
    i32 67, label %sw.bb48
    i32 70, label %sw.bb71
    i32 74, label %sw.bb74
  ], !dbg !2943

sw.bb:                                            ; preds = %cond.end
  %sub = add nsw i32 %0, 15, !dbg !2944
  store i32 %sub, i32* %expansion, align 8, !dbg !2944
  %call = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !2945
  %call13 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 9, %struct.demangle_component* %call, %struct.demangle_component* null) #8, !dbg !2946
  br label %return, !dbg !2947

sw.bb14:                                          ; preds = %cond.end
  %sub16 = add nsw i32 %0, 10, !dbg !2948
  store i32 %sub16, i32* %expansion, align 8, !dbg !2948
  %call17 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !2949
  %call18 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 10, %struct.demangle_component* %call17, %struct.demangle_component* null) #8, !dbg !2950
  br label %return, !dbg !2951

sw.bb19:                                          ; preds = %cond.end
  %call20 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !2952
  %call21 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 12, %struct.demangle_component* %call20, %struct.demangle_component* null) #8, !dbg !2953
  br label %return, !dbg !2954

sw.bb22:                                          ; preds = %cond.end
  %call23 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !2955
  %call24 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 13, %struct.demangle_component* %call23, %struct.demangle_component* null) #8, !dbg !2956
  br label %return, !dbg !2957

sw.bb25:                                          ; preds = %cond.end
  %call26 = tail call fastcc i32 @d_call_offset(%struct.d_info* %di, i32 104) #8, !dbg !2958
  %tobool = icmp eq i32 %call26, 0, !dbg !2958
  br i1 %tobool, label %return, label %if.end, !dbg !2960

if.end:                                           ; preds = %sw.bb25
  %call28 = tail call fastcc %struct.demangle_component* @d_encoding(%struct.d_info* %di, i32 0) #8, !dbg !2961
  %call29 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 15, %struct.demangle_component* %call28, %struct.demangle_component* null) #8, !dbg !2962
  br label %return, !dbg !2963

sw.bb30:                                          ; preds = %cond.end
  %call31 = tail call fastcc i32 @d_call_offset(%struct.d_info* %di, i32 118) #8, !dbg !2964
  %tobool32 = icmp eq i32 %call31, 0, !dbg !2964
  br i1 %tobool32, label %return, label %if.end34, !dbg !2966

if.end34:                                         ; preds = %sw.bb30
  %call35 = tail call fastcc %struct.demangle_component* @d_encoding(%struct.d_info* %di, i32 0) #8, !dbg !2967
  %call36 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 16, %struct.demangle_component* %call35, %struct.demangle_component* null) #8, !dbg !2968
  br label %return, !dbg !2969

sw.bb37:                                          ; preds = %cond.end
  %call38 = tail call fastcc i32 @d_call_offset(%struct.d_info* %di, i32 0) #8, !dbg !2970
  %tobool39 = icmp eq i32 %call38, 0, !dbg !2970
  br i1 %tobool39, label %return, label %if.end41, !dbg !2972

if.end41:                                         ; preds = %sw.bb37
  %call42 = tail call fastcc i32 @d_call_offset(%struct.d_info* %di, i32 0) #8, !dbg !2973
  %tobool43 = icmp eq i32 %call42, 0, !dbg !2973
  br i1 %tobool43, label %return, label %if.end45, !dbg !2975

if.end45:                                         ; preds = %if.end41
  %call46 = tail call fastcc %struct.demangle_component* @d_encoding(%struct.d_info* %di, i32 0) #8, !dbg !2976
  %call47 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 17, %struct.demangle_component* %call46, %struct.demangle_component* null) #8, !dbg !2977
  br label %return, !dbg !2978

sw.bb48:                                          ; preds = %cond.end
  %call49 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !2979
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call49, metadata !2930, metadata !DIExpression()), !dbg !2980
  %call50 = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %call50, metadata !2935, metadata !DIExpression()), !dbg !2980
  %cmp51 = icmp slt i64 %call50, 0, !dbg !2982
  br i1 %cmp51, label %return, label %if.end54, !dbg !2984

if.end54:                                         ; preds = %sw.bb48
  %5 = load i8*, i8** %n, align 8, !dbg !2985
  %6 = load i8, i8* %5, align 1, !dbg !2985
  %cmp57 = icmp eq i8 %6, 95, !dbg !2985
  br i1 %cmp57, label %cond.true59, label %return, !dbg !2987

cond.true59:                                      ; preds = %if.end54
  %incdec.ptr61 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2985
  store i8* %incdec.ptr61, i8** %n, align 8, !dbg !2985
  %call65 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !2988
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call65, metadata !2936, metadata !DIExpression()), !dbg !2980
  %7 = load i32, i32* %expansion, align 8, !dbg !2989
  %add67 = add nsw i32 %7, 5, !dbg !2989
  store i32 %add67, i32* %expansion, align 8, !dbg !2989
  %call68 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 11, %struct.demangle_component* %call65, %struct.demangle_component* %call49) #8, !dbg !2990
  br label %return, !dbg !2991

sw.bb71:                                          ; preds = %cond.end
  %call72 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !2992
  %call73 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 14, %struct.demangle_component* %call72, %struct.demangle_component* null) #8, !dbg !2993
  br label %return, !dbg !2994

sw.bb74:                                          ; preds = %cond.end
  %call75 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !2995
  %call76 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 18, %struct.demangle_component* %call75, %struct.demangle_component* null) #8, !dbg !2996
  br label %return, !dbg !2997

if.else:                                          ; preds = %entry
  %cmp79 = icmp eq i8 %2, 71, !dbg !2998
  br i1 %cmp79, label %cond.true81, label %return, !dbg !3000

cond.true81:                                      ; preds = %if.else
  %incdec.ptr83 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2998
  store i8* %incdec.ptr83, i8** %n, align 8, !dbg !2998
  %8 = load i8, i8* %incdec.ptr83, align 1, !dbg !3001
  %cmp88 = icmp eq i8 %8, 0, !dbg !3001
  br i1 %cmp88, label %cond.end95, label %cond.false91, !dbg !3001

cond.false91:                                     ; preds = %cond.true81
  %incdec.ptr93 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !3001
  store i8* %incdec.ptr93, i8** %n, align 8, !dbg !3001
  %9 = load i8, i8* %incdec.ptr83, align 1, !dbg !3001
  %conv94 = sext i8 %9 to i32, !dbg !3001
  br label %cond.end95, !dbg !3001

cond.end95:                                       ; preds = %cond.true81, %cond.false91
  %cond96 = phi i32 [ %conv94, %cond.false91 ], [ 0, %cond.true81 ], !dbg !3001
  switch i32 %cond96, label %return [
    i32 86, label %sw.bb97
    i32 82, label %sw.bb100
    i32 65, label %sw.bb103
    i32 114, label %sw.bb106
  ], !dbg !3003

sw.bb97:                                          ; preds = %cond.end95
  %call98 = tail call fastcc %struct.demangle_component* @d_name(%struct.d_info* %di) #8, !dbg !3004
  %call99 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 19, %struct.demangle_component* %call98, %struct.demangle_component* null) #8, !dbg !3006
  br label %return, !dbg !3007

sw.bb100:                                         ; preds = %cond.end95
  %call101 = tail call fastcc %struct.demangle_component* @d_name(%struct.d_info* %di) #8, !dbg !3008
  %call102 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 20, %struct.demangle_component* %call101, %struct.demangle_component* null) #8, !dbg !3009
  br label %return, !dbg !3010

sw.bb103:                                         ; preds = %cond.end95
  %call104 = tail call fastcc %struct.demangle_component* @d_encoding(%struct.d_info* %di, i32 0) #8, !dbg !3011
  %call105 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 21, %struct.demangle_component* %call104, %struct.demangle_component* null) #8, !dbg !3012
  br label %return, !dbg !3013

sw.bb106:                                         ; preds = %cond.end95
  %call107 = tail call fastcc %struct.demangle_component* @d_java_resource(%struct.d_info* %di) #8, !dbg !3014
  br label %return, !dbg !3015

return:                                           ; preds = %sw.bb25, %sw.bb30, %if.end41, %sw.bb37, %if.else, %cond.end95, %cond.end, %cond.true59, %sw.bb48, %if.end54, %sw.bb106, %sw.bb103, %sw.bb100, %sw.bb97, %sw.bb74, %sw.bb71, %if.end45, %if.end34, %if.end, %sw.bb22, %sw.bb19, %sw.bb14, %sw.bb
  %retval.1 = phi %struct.demangle_component* [ %call76, %sw.bb74 ], [ %call73, %sw.bb71 ], [ %call47, %if.end45 ], [ %call36, %if.end34 ], [ %call29, %if.end ], [ %call24, %sw.bb22 ], [ %call21, %sw.bb19 ], [ %call18, %sw.bb14 ], [ %call13, %sw.bb ], [ %call107, %sw.bb106 ], [ %call105, %sw.bb103 ], [ %call102, %sw.bb100 ], [ %call99, %sw.bb97 ], [ null, %sw.bb25 ], [ null, %sw.bb30 ], [ null, %sw.bb37 ], [ null, %if.end41 ], [ %call68, %cond.true59 ], [ null, %sw.bb48 ], [ null, %if.end54 ], [ null, %cond.end ], [ null, %cond.end95 ], [ null, %if.else ], !dbg !3016
  ret %struct.demangle_component* %retval.1, !dbg !3017
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_name(%struct.d_info* %di) unnamed_addr #5 !dbg !3018 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3020, metadata !DIExpression()), !dbg !3026
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3027
  %0 = load i8*, i8** %n, align 8, !dbg !3027
  %1 = load i8, i8* %0, align 1, !dbg !3027
  call void @llvm.dbg.value(metadata i8 %1, metadata !3021, metadata !DIExpression()), !dbg !3026
  %conv = sext i8 %1 to i32, !dbg !3028
  switch i32 %conv, label %sw.default [
    i32 78, label %sw.bb
    i32 90, label %sw.bb1
    i32 76, label %sw.bb3
    i32 85, label %sw.bb3
    i32 83, label %sw.bb5
  ], !dbg !3029

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc %struct.demangle_component* @d_nested_name(%struct.d_info* %di) #8, !dbg !3030
  br label %cleanup42, !dbg !3031

sw.bb1:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.demangle_component* @d_local_name(%struct.d_info* %di) #8, !dbg !3032
  br label %cleanup42, !dbg !3033

sw.bb3:                                           ; preds = %entry, %entry
  %call4 = tail call fastcc %struct.demangle_component* @d_unqualified_name(%struct.d_info* %di) #8, !dbg !3034
  br label %cleanup42, !dbg !3035

sw.bb5:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3036
  %2 = load i8, i8* %arrayidx, align 1, !dbg !3036
  %cmp = icmp eq i8 %2, 116, !dbg !3038
  br i1 %cmp, label %if.else, label %if.then, !dbg !3039

if.then:                                          ; preds = %sw.bb5
  %call9 = tail call fastcc %struct.demangle_component* @d_substitution(%struct.d_info* %di, i32 0) #8, !dbg !3040
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call9, metadata !3022, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i32 1, metadata !3023, metadata !DIExpression()), !dbg !3042
  br label %if.end, !dbg !3043

if.else:                                          ; preds = %sw.bb5
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2, !dbg !3044
  store i8* %add.ptr, i8** %n, align 8, !dbg !3044
  %call11 = tail call fastcc %struct.demangle_component* @d_make_name(%struct.d_info* %di, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i64 0, i64 0), i32 3) #8, !dbg !3046
  %call12 = tail call fastcc %struct.demangle_component* @d_unqualified_name(%struct.d_info* %di) #8, !dbg !3047
  %call13 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 1, %struct.demangle_component* %call11, %struct.demangle_component* %call12) #8, !dbg !3048
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call13, metadata !3022, metadata !DIExpression()), !dbg !3026
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !3049
  %3 = load i32, i32* %expansion, align 8, !dbg !3050
  %add = add nsw i32 %3, 3, !dbg !3050
  store i32 %add, i32* %expansion, align 8, !dbg !3050
  call void @llvm.dbg.value(metadata i32 0, metadata !3023, metadata !DIExpression()), !dbg !3042
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dc.0 = phi %struct.demangle_component* [ %call9, %if.then ], [ %call13, %if.else ], !dbg !3051
  %subst.0 = phi i32 [ 1, %if.then ], [ 0, %if.else ], !dbg !3051
  call void @llvm.dbg.value(metadata i32 %subst.0, metadata !3023, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.0, metadata !3022, metadata !DIExpression()), !dbg !3026
  %4 = load i8*, i8** %n, align 8, !dbg !3052
  %5 = load i8, i8* %4, align 1, !dbg !3052
  %cmp16 = icmp eq i8 %5, 73, !dbg !3054
  br i1 %cmp16, label %if.else19, label %cleanup42, !dbg !3055

if.else19:                                        ; preds = %if.end
  %tobool = icmp eq i32 %subst.0, 0, !dbg !3056
  br i1 %tobool, label %if.then20, label %if.end25, !dbg !3059

if.then20:                                        ; preds = %if.else19
  %call21 = tail call fastcc i32 @d_add_substitution(%struct.d_info* %di, %struct.demangle_component* %dc.0) #8, !dbg !3060
  %tobool22 = icmp eq i32 %call21, 0, !dbg !3060
  br i1 %tobool22, label %cleanup42, label %if.end25, !dbg !3063

if.end25:                                         ; preds = %if.then20, %if.else19
  %call26 = tail call fastcc %struct.demangle_component* @d_template_args(%struct.d_info* %di) #8, !dbg !3064
  %call27 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 4, %struct.demangle_component* %dc.0, %struct.demangle_component* %call26) #8, !dbg !3065
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call27, metadata !3022, metadata !DIExpression()), !dbg !3026
  br label %cleanup42

sw.default:                                       ; preds = %entry
  %call29 = tail call fastcc %struct.demangle_component* @d_unqualified_name(%struct.d_info* %di) #8, !dbg !3066
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call29, metadata !3022, metadata !DIExpression()), !dbg !3026
  %6 = load i8*, i8** %n, align 8, !dbg !3067
  %7 = load i8, i8* %6, align 1, !dbg !3067
  %cmp32 = icmp eq i8 %7, 73, !dbg !3069
  br i1 %cmp32, label %if.then34, label %cleanup42, !dbg !3070

if.then34:                                        ; preds = %sw.default
  %call35 = tail call fastcc i32 @d_add_substitution(%struct.d_info* %di, %struct.demangle_component* %call29) #8, !dbg !3071
  %tobool36 = icmp eq i32 %call35, 0, !dbg !3071
  br i1 %tobool36, label %cleanup42, label %if.end38, !dbg !3074

if.end38:                                         ; preds = %if.then34
  %call39 = tail call fastcc %struct.demangle_component* @d_template_args(%struct.d_info* %di) #8, !dbg !3075
  %call40 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 4, %struct.demangle_component* %call29, %struct.demangle_component* %call39) #8, !dbg !3076
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call40, metadata !3022, metadata !DIExpression()), !dbg !3026
  br label %cleanup42, !dbg !3077

cleanup42:                                        ; preds = %if.then34, %if.then20, %if.end, %sw.default, %if.end38, %if.end25, %sw.bb3, %sw.bb1, %sw.bb
  %retval.1 = phi %struct.demangle_component* [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ null, %if.then20 ], [ %call27, %if.end25 ], [ %dc.0, %if.end ], [ null, %if.then34 ], [ %call40, %if.end38 ], [ %call29, %sw.default ], !dbg !3078
  ret %struct.demangle_component* %retval.1, !dbg !3079
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_bare_function_type(%struct.d_info* %di, i32 %has_return_type) unnamed_addr #5 !dbg !3080 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3082, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 %has_return_type, metadata !3083, metadata !DIExpression()), !dbg !3087
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3088
  %0 = load i8*, i8** %n, align 8, !dbg !3088
  %1 = load i8, i8* %0, align 1, !dbg !3088
  call void @llvm.dbg.value(metadata i8 %1, metadata !3086, metadata !DIExpression()), !dbg !3087
  %cmp = icmp eq i8 %1, 74, !dbg !3089
  br i1 %cmp, label %if.then, label %if.end, !dbg !3091

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3092
  store i8* %add.ptr, i8** %n, align 8, !dbg !3092
  call void @llvm.dbg.value(metadata i32 1, metadata !3083, metadata !DIExpression()), !dbg !3087
  br label %if.end, !dbg !3094

if.end:                                           ; preds = %if.then, %entry
  %has_return_type.addr.0 = phi i32 [ 1, %if.then ], [ %has_return_type, %entry ]
  call void @llvm.dbg.value(metadata i32 %has_return_type.addr.0, metadata !3083, metadata !DIExpression()), !dbg !3087
  %tobool = icmp eq i32 %has_return_type.addr.0, 0, !dbg !3095
  br i1 %tobool, label %if.end8, label %if.then3, !dbg !3097

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !3098
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3084, metadata !DIExpression()), !dbg !3087
  %cmp4 = icmp eq %struct.demangle_component* %call, null, !dbg !3100
  br i1 %cmp4, label %cleanup, label %if.end8, !dbg !3102

if.end8:                                          ; preds = %if.end, %if.then3
  %return_type.0 = phi %struct.demangle_component* [ %call, %if.then3 ], [ null, %if.end ], !dbg !3103
  call void @llvm.dbg.value(metadata %struct.demangle_component* %return_type.0, metadata !3084, metadata !DIExpression()), !dbg !3087
  %call9 = tail call fastcc %struct.demangle_component* @d_parmlist(%struct.d_info* %di) #8, !dbg !3104
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call9, metadata !3085, metadata !DIExpression()), !dbg !3087
  %cmp10 = icmp eq %struct.demangle_component* %call9, null, !dbg !3105
  br i1 %cmp10, label %cleanup, label %if.end13, !dbg !3107

if.end13:                                         ; preds = %if.end8
  %call14 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 37, %struct.demangle_component* %return_type.0, %struct.demangle_component* nonnull %call9) #8, !dbg !3108
  br label %cleanup, !dbg !3109

cleanup:                                          ; preds = %if.end8, %if.then3, %if.end13
  %retval.0 = phi %struct.demangle_component* [ %call14, %if.end13 ], [ null, %if.then3 ], [ null, %if.end8 ], !dbg !3087
  ret %struct.demangle_component* %retval.0, !dbg !3110
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @has_return_type(%struct.demangle_component* %dc) unnamed_addr #5 !dbg !3111 {
entry:
  br label %tailrecurse, !dbg !3116

tailrecurse:                                      ; preds = %sw.bb1, %entry
  %dc.tr = phi %struct.demangle_component* [ %dc, %entry ], [ %2, %sw.bb1 ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.tr, metadata !3115, metadata !DIExpression()), !dbg !3118
  %cmp = icmp eq %struct.demangle_component* %dc.tr, null, !dbg !3119
  br i1 %cmp, label %return.loopexit, label %if.end, !dbg !3121

if.end:                                           ; preds = %tailrecurse
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.tr, i64 0, i32 0, !dbg !3122
  %0 = load i32, i32* %type, align 8, !dbg !3122
  switch i32 %0, label %return.loopexit [
    i32 4, label %sw.bb
    i32 26, label %sw.bb1
    i32 27, label %sw.bb1
    i32 28, label %sw.bb1
  ], !dbg !3123

sw.bb:                                            ; preds = %if.end
  %dc.tr.lcssa3 = phi %struct.demangle_component* [ %dc.tr, %if.end ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.tr.lcssa3, metadata !3115, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.tr.lcssa3, metadata !3115, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.tr.lcssa3, metadata !3115, metadata !DIExpression()), !dbg !3118
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.tr.lcssa3, i64 0, i32 1, !dbg !3124
  %left = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !3124
  %1 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !3124
  %call = tail call fastcc i32 @is_ctor_dtor_or_conversion(%struct.demangle_component* %1) #8, !dbg !3125
  %tobool = icmp eq i32 %call, 0, !dbg !3126
  %lnot.ext = zext i1 %tobool to i32, !dbg !3126
  br label %return, !dbg !3127

sw.bb1:                                           ; preds = %if.end, %if.end, %if.end
  %u2 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.tr, i64 0, i32 1, !dbg !3128
  %left4 = bitcast %union.anon* %u2 to %struct.demangle_component**, !dbg !3128
  %2 = load %struct.demangle_component*, %struct.demangle_component** %left4, align 8, !dbg !3128
  br label %tailrecurse, !dbg !3116

return.loopexit:                                  ; preds = %tailrecurse, %if.end
  br label %return, !dbg !3129

return:                                           ; preds = %return.loopexit, %sw.bb
  %retval.0 = phi i32 [ %lnot.ext, %sw.bb ], [ 0, %return.loopexit ], !dbg !3118
  ret i32 %retval.0, !dbg !3129
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @d_call_offset(%struct.d_info* %di, i32 %c) unnamed_addr #5 !dbg !3130 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3134, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 %c, metadata !3135, metadata !DIExpression()), !dbg !3136
  %cmp = icmp eq i32 %c, 0, !dbg !3137
  br i1 %cmp, label %if.then, label %if.end, !dbg !3139

if.then:                                          ; preds = %entry
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3140
  %0 = load i8*, i8** %n, align 8, !dbg !3140
  %1 = load i8, i8* %0, align 1, !dbg !3140
  %cmp1 = icmp eq i8 %1, 0, !dbg !3140
  br i1 %cmp1, label %if.end, label %cond.false, !dbg !3140

cond.false:                                       ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3140
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !3140
  %2 = load i8, i8* %0, align 1, !dbg !3140
  %conv4 = sext i8 %2 to i32, !dbg !3140
  br label %if.end, !dbg !3140

if.end:                                           ; preds = %cond.false, %if.then, %entry
  %c.addr.0 = phi i32 [ %c, %entry ], [ %conv4, %cond.false ], [ 0, %if.then ]
  call void @llvm.dbg.value(metadata i32 %c.addr.0, metadata !3135, metadata !DIExpression()), !dbg !3136
  switch i32 %c.addr.0, label %return [
    i32 104, label %if.then7
    i32 118, label %if.then10
  ], !dbg !3141

if.then7:                                         ; preds = %if.end
  %call = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !3142
  br label %if.end25, !dbg !3142

if.then10:                                        ; preds = %if.end
  %call11 = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !3144
  %n12 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3147
  %3 = load i8*, i8** %n12, align 8, !dbg !3147
  %4 = load i8, i8* %3, align 1, !dbg !3147
  %cmp14 = icmp eq i8 %4, 95, !dbg !3147
  br i1 %cmp14, label %cond.true16, label %return, !dbg !3149

cond.true16:                                      ; preds = %if.then10
  %incdec.ptr18 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3147
  store i8* %incdec.ptr18, i8** %n12, align 8, !dbg !3147
  %call22 = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !3150
  br label %if.end25

if.end25:                                         ; preds = %cond.true16, %if.then7
  %n26 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3151
  %5 = load i8*, i8** %n26, align 8, !dbg !3151
  %6 = load i8, i8* %5, align 1, !dbg !3151
  %cmp28 = icmp eq i8 %6, 95, !dbg !3151
  br i1 %cmp28, label %cond.true30, label %return, !dbg !3153

cond.true30:                                      ; preds = %if.end25
  %incdec.ptr32 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !3151
  store i8* %incdec.ptr32, i8** %n26, align 8, !dbg !3151
  br label %return, !dbg !3154

return:                                           ; preds = %if.end25, %if.end, %if.then10, %cond.true30
  %retval.0 = phi i32 [ 1, %cond.true30 ], [ 0, %if.then10 ], [ 0, %if.end ], [ 0, %if.end25 ], !dbg !3136
  ret i32 %retval.0, !dbg !3155
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_java_resource(%struct.d_info* %di) unnamed_addr #5 !dbg !3156 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3158, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata %struct.demangle_component* null, metadata !3159, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata %struct.demangle_component* null, metadata !3160, metadata !DIExpression()), !dbg !3165
  %call = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %call, metadata !3161, metadata !DIExpression()), !dbg !3165
  %cmp = icmp slt i64 %call, 2, !dbg !3167
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3169

if.end:                                           ; preds = %entry
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3170
  %0 = load i8*, i8** %n, align 8, !dbg !3170
  %1 = load i8, i8* %0, align 1, !dbg !3170
  %cmp1 = icmp eq i8 %1, 0, !dbg !3170
  br i1 %cmp1, label %cond.end, label %cond.false, !dbg !3170

cond.false:                                       ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3170
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !3170
  %2 = load i8, i8* %0, align 1, !dbg !3170
  %phitmp = icmp ne i8 %2, 95, !dbg !3170
  br label %cond.end, !dbg !3170

cond.end:                                         ; preds = %if.end, %cond.false
  %3 = phi i8* [ %incdec.ptr, %cond.false ], [ %0, %if.end ]
  %cond = phi i1 [ %phitmp, %cond.false ], [ true, %if.end ]
  br i1 %cond, label %cleanup, label %if.end8, !dbg !3172

if.end8:                                          ; preds = %cond.end
  %dec = add nsw i64 %call, -1, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %dec, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %3, metadata !3164, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 0, metadata !3162, metadata !DIExpression()), !dbg !3165
  br label %while.cond, !dbg !3174

while.cond:                                       ; preds = %if.end63, %if.end8
  %str.0 = phi i8* [ %3, %if.end8 ], [ %str.1, %if.end63 ], !dbg !3165
  %len.0 = phi i64 [ %dec, %if.end8 ], [ %len.1, %if.end63 ], !dbg !3165
  %p.0 = phi %struct.demangle_component* [ null, %if.end8 ], [ %p.1, %if.end63 ], !dbg !3165
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p.0, metadata !3159, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 0, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %str.0, metadata !3164, metadata !DIExpression()), !dbg !3165
  %cmp10 = icmp sgt i64 %len.0, 0, !dbg !3175
  br i1 %cmp10, label %while.body, label %while.end64, !dbg !3174

while.body:                                       ; preds = %while.cond
  %4 = load i8, i8* %str.0, align 1, !dbg !3176
  call void @llvm.dbg.value(metadata i8 %4, metadata !3163, metadata !DIExpression()), !dbg !3165
  %tobool = icmp eq i8 %4, 0, !dbg !3178
  br i1 %tobool, label %cleanup.loopexit, label %if.end13, !dbg !3180

if.end13:                                         ; preds = %while.body
  %cmp15 = icmp eq i8 %4, 36, !dbg !3181
  br i1 %cmp15, label %if.then17, label %while.cond31.preheader, !dbg !3183

while.cond31.preheader:                           ; preds = %if.end13
  br label %while.cond31, !dbg !3184

if.then17:                                        ; preds = %if.end13
  call void @llvm.dbg.value(metadata i64 1, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 2, metadata !3162, metadata !DIExpression()), !dbg !3165
  %arrayidx19 = getelementptr inbounds i8, i8* %str.0, i64 1, !dbg !3186
  %5 = load i8, i8* %arrayidx19, align 1, !dbg !3186
  %conv20 = sext i8 %5 to i32, !dbg !3186
  switch i32 %conv20, label %cleanup.loopexit [
    i32 83, label %sw.epilog
    i32 95, label %sw.bb21
    i32 36, label %sw.bb22
  ], !dbg !3188

sw.bb21:                                          ; preds = %if.then17
  call void @llvm.dbg.value(metadata i8 46, metadata !3163, metadata !DIExpression()), !dbg !3165
  br label %sw.epilog, !dbg !3189

sw.bb22:                                          ; preds = %if.then17
  call void @llvm.dbg.value(metadata i8 36, metadata !3163, metadata !DIExpression()), !dbg !3165
  br label %sw.epilog, !dbg !3191

sw.epilog:                                        ; preds = %if.then17, %sw.bb22, %sw.bb21
  %c.0 = phi i32 [ 36, %sw.bb22 ], [ 46, %sw.bb21 ], [ 47, %if.then17 ]
  %call24 = tail call fastcc %struct.demangle_component* @d_make_character(%struct.d_info* %di, i32 %c.0) #8, !dbg !3192
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call24, metadata !3160, metadata !DIExpression()), !dbg !3165
  %6 = load i8*, i8** %n, align 8, !dbg !3193
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3193
  store i8* %add.ptr, i8** %n, align 8, !dbg !3193
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3164, metadata !DIExpression()), !dbg !3165
  %sub = add nsw i64 %len.0, -2, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %sub, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 0, metadata !3162, metadata !DIExpression()), !dbg !3165
  %cmp27 = icmp eq %struct.demangle_component* %call24, null, !dbg !3195
  br i1 %cmp27, label %cleanup.loopexit, label %if.end53, !dbg !3197

while.cond31:                                     ; preds = %while.cond31.preheader, %while.body41
  %i.1 = phi i64 [ %inc42, %while.body41 ], [ 0, %while.cond31.preheader ], !dbg !3165
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !3162, metadata !DIExpression()), !dbg !3165
  %exitcond = icmp eq i64 %len.0, %i.1, !dbg !3198
  br i1 %exitcond, label %while.end, label %land.lhs.true, !dbg !3199

land.lhs.true:                                    ; preds = %while.cond31
  %arrayidx34 = getelementptr inbounds i8, i8* %str.0, i64 %i.1, !dbg !3200
  %7 = load i8, i8* %arrayidx34, align 1, !dbg !3200
  %tobool36 = icmp eq i8 %7, 0, !dbg !3200
  %cmp39 = icmp eq i8 %7, 36, !dbg !3201
  %or.cond = or i1 %tobool36, %cmp39, !dbg !3202
  br i1 %or.cond, label %while.end, label %while.body41, !dbg !3202

while.body41:                                     ; preds = %land.lhs.true
  %inc42 = add nuw i64 %i.1, 1, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %inc42, metadata !3162, metadata !DIExpression()), !dbg !3165
  br label %while.cond31, !dbg !3184, !llvm.loop !3204

while.end:                                        ; preds = %while.cond31, %land.lhs.true
  %i.1.lcssa = phi i64 [ %i.1, %while.cond31 ], [ %i.1, %land.lhs.true ], !dbg !3165
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !3162, metadata !DIExpression()), !dbg !3165
  %conv43 = trunc i64 %i.1.lcssa to i32, !dbg !3205
  %call44 = tail call fastcc %struct.demangle_component* @d_make_name(%struct.d_info* %di, i8* %str.0, i32 %conv43) #8, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call44, metadata !3160, metadata !DIExpression()), !dbg !3165
  %8 = load i8*, i8** %n, align 8, !dbg !3207
  %add.ptr46 = getelementptr inbounds i8, i8* %8, i64 %i.1.lcssa, !dbg !3207
  store i8* %add.ptr46, i8** %n, align 8, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %add.ptr46, metadata !3164, metadata !DIExpression()), !dbg !3165
  %sub48 = sub nsw i64 %len.0, %i.1.lcssa, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %sub48, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 0, metadata !3162, metadata !DIExpression()), !dbg !3165
  %cmp49 = icmp eq %struct.demangle_component* %call44, null, !dbg !3209
  br i1 %cmp49, label %cleanup.loopexit, label %if.end53, !dbg !3211

if.end53:                                         ; preds = %while.end, %sw.epilog
  %str.1 = phi i8* [ %add.ptr, %sw.epilog ], [ %add.ptr46, %while.end ], !dbg !3212
  %len.1 = phi i64 [ %sub, %sw.epilog ], [ %sub48, %while.end ], !dbg !3212
  %next.0 = phi %struct.demangle_component* [ %call24, %sw.epilog ], [ %call44, %while.end ], !dbg !3212
  call void @llvm.dbg.value(metadata %struct.demangle_component* %next.0, metadata !3160, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %len.1, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 0, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %str.1, metadata !3164, metadata !DIExpression()), !dbg !3165
  %cmp54 = icmp eq %struct.demangle_component* %p.0, null, !dbg !3213
  br i1 %cmp54, label %if.end63, label %if.else57, !dbg !3215

if.else57:                                        ; preds = %if.end53
  %call58 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 56, %struct.demangle_component* nonnull %p.0, %struct.demangle_component* %next.0) #8, !dbg !3216
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call58, metadata !3159, metadata !DIExpression()), !dbg !3165
  %cmp59 = icmp eq %struct.demangle_component* %call58, null, !dbg !3218
  br i1 %cmp59, label %cleanup.loopexit, label %if.end63, !dbg !3220

if.end63:                                         ; preds = %if.else57, %if.end53
  %p.1 = phi %struct.demangle_component* [ %next.0, %if.end53 ], [ %call58, %if.else57 ], !dbg !3221
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p.1, metadata !3159, metadata !DIExpression()), !dbg !3165
  br label %while.cond, !dbg !3174, !llvm.loop !3222

while.end64:                                      ; preds = %while.cond
  %p.0.lcssa = phi %struct.demangle_component* [ %p.0, %while.cond ], !dbg !3165
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p.0.lcssa, metadata !3159, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p.0.lcssa, metadata !3159, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p.0.lcssa, metadata !3159, metadata !DIExpression()), !dbg !3165
  %call65 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 55, %struct.demangle_component* %p.0.lcssa, %struct.demangle_component* null) #8, !dbg !3224
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call65, metadata !3159, metadata !DIExpression()), !dbg !3165
  br label %cleanup, !dbg !3225

cleanup.loopexit:                                 ; preds = %if.then17, %sw.epilog, %while.end, %if.else57, %while.body
  br label %cleanup, !dbg !3226

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end, %entry, %while.end64
  %retval.0 = phi %struct.demangle_component* [ %call65, %while.end64 ], [ null, %entry ], [ null, %cond.end ], [ null, %cleanup.loopexit ], !dbg !3165
  ret %struct.demangle_component* %retval.0, !dbg !3226
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_character(%struct.d_info* %di, i32 %c) unnamed_addr #5 !dbg !3227 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3229, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %c, metadata !3230, metadata !DIExpression()), !dbg !3232
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3233
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3231, metadata !DIExpression()), !dbg !3232
  %cmp = icmp eq %struct.demangle_component* %call, null, !dbg !3234
  br i1 %cmp, label %if.end, label %if.then, !dbg !3236

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 0, !dbg !3237
  store i32 57, i32* %type, align 8, !dbg !3239
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, !dbg !3240
  %character = bitcast %union.anon* %u to i32*, !dbg !3241
  store i32 %c, i32* %character, align 8, !dbg !3242
  br label %if.end, !dbg !3243

if.end:                                           ; preds = %entry, %if.then
  ret %struct.demangle_component* %call, !dbg !3244
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_name(%struct.d_info* %di, i8* %s, i32 %len) unnamed_addr #5 !dbg !3245 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3249, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %s, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %len, metadata !3251, metadata !DIExpression()), !dbg !3253
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3254
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3252, metadata !DIExpression()), !dbg !3253
  %call1 = tail call i32 @cplus_demangle_fill_name(%struct.demangle_component* %call, i8* %s, i32 %len) #8, !dbg !3255
  %tobool = icmp eq i32 %call1, 0, !dbg !3255
  %call. = select i1 %tobool, %struct.demangle_component* null, %struct.demangle_component* %call, !dbg !3253
  ret %struct.demangle_component* %call., !dbg !3257
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_nested_name(%struct.d_info* %di) unnamed_addr #5 !dbg !3258 {
entry:
  %ret = alloca %struct.demangle_component*, align 8
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3260, metadata !DIExpression()), !dbg !3263
  %0 = bitcast %struct.demangle_component** %ret to i8*, !dbg !3264
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !3264
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3265
  %1 = load i8*, i8** %n, align 8, !dbg !3265
  %2 = load i8, i8* %1, align 1, !dbg !3265
  %cmp = icmp eq i8 %2, 78, !dbg !3265
  br i1 %cmp, label %cond.true, label %cleanup, !dbg !3267

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3265
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !3265
  call void @llvm.dbg.value(metadata %struct.demangle_component** %ret, metadata !3261, metadata !DIExpression(DW_OP_deref)), !dbg !3263
  %call = call fastcc %struct.demangle_component** @d_cv_qualifiers(%struct.d_info* %di, %struct.demangle_component** nonnull %ret, i32 1) #8, !dbg !3268
  call void @llvm.dbg.value(metadata %struct.demangle_component** %call, metadata !3262, metadata !DIExpression()), !dbg !3263
  %cmp3 = icmp eq %struct.demangle_component** %call, null, !dbg !3269
  br i1 %cmp3, label %cleanup, label %if.end6, !dbg !3271

if.end6:                                          ; preds = %cond.true
  %call7 = call fastcc %struct.demangle_component* @d_prefix(%struct.d_info* %di) #8, !dbg !3272
  store %struct.demangle_component* %call7, %struct.demangle_component** %call, align 8, !dbg !3273
  %cmp8 = icmp eq %struct.demangle_component* %call7, null, !dbg !3274
  br i1 %cmp8, label %cleanup, label %if.end11, !dbg !3276

if.end11:                                         ; preds = %if.end6
  %3 = load i8*, i8** %n, align 8, !dbg !3277
  %4 = load i8, i8* %3, align 1, !dbg !3277
  %cmp14 = icmp eq i8 %4, 69, !dbg !3277
  br i1 %cmp14, label %cond.true16, label %cleanup, !dbg !3279

cond.true16:                                      ; preds = %if.end11
  %incdec.ptr18 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3277
  store i8* %incdec.ptr18, i8** %n, align 8, !dbg !3277
  %5 = load %struct.demangle_component*, %struct.demangle_component** %ret, align 8, !dbg !3280
  call void @llvm.dbg.value(metadata %struct.demangle_component* %5, metadata !3261, metadata !DIExpression()), !dbg !3263
  br label %cleanup, !dbg !3281

cleanup:                                          ; preds = %if.end11, %if.end6, %cond.true, %entry, %cond.true16
  %retval.0 = phi %struct.demangle_component* [ %5, %cond.true16 ], [ null, %entry ], [ null, %cond.true ], [ null, %if.end6 ], [ null, %if.end11 ], !dbg !3263
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !3282
  ret %struct.demangle_component* %retval.0, !dbg !3282
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_local_name(%struct.d_info* %di) unnamed_addr #5 !dbg !3283 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3285, metadata !DIExpression()), !dbg !3291
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3292
  %0 = load i8*, i8** %n, align 8, !dbg !3292
  %1 = load i8, i8* %0, align 1, !dbg !3292
  %cmp = icmp eq i8 %1, 90, !dbg !3292
  br i1 %cmp, label %cond.true, label %cleanup53, !dbg !3294

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3292
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !3292
  %call = tail call fastcc %struct.demangle_component* @d_encoding(%struct.d_info* %di, i32 0) #8, !dbg !3295
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3286, metadata !DIExpression()), !dbg !3291
  %2 = load i8*, i8** %n, align 8, !dbg !3296
  %3 = load i8, i8* %2, align 1, !dbg !3296
  %cmp5 = icmp eq i8 %3, 69, !dbg !3296
  br i1 %cmp5, label %cond.true7, label %cleanup53, !dbg !3298

cond.true7:                                       ; preds = %cond.true
  %incdec.ptr9 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3296
  store i8* %incdec.ptr9, i8** %n, align 8, !dbg !3296
  %4 = load i8, i8* %incdec.ptr9, align 1, !dbg !3299
  %cmp15 = icmp eq i8 %4, 115, !dbg !3300
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !3301

if.then17:                                        ; preds = %cond.true7
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 2, !dbg !3302
  store i8* %add.ptr, i8** %n, align 8, !dbg !3302
  %call19 = tail call fastcc i32 @d_discriminator(%struct.d_info* %di) #8, !dbg !3304
  %tobool = icmp eq i32 %call19, 0, !dbg !3304
  br i1 %tobool, label %cleanup53, label %if.end21, !dbg !3306

if.end21:                                         ; preds = %if.then17
  %call22 = tail call fastcc %struct.demangle_component* @d_make_name(%struct.d_info* %di, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.129, i64 0, i64 0), i32 14) #8, !dbg !3307
  %call23 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 2, %struct.demangle_component* %call, %struct.demangle_component* %call22) #8, !dbg !3308
  br label %cleanup53, !dbg !3309

if.else:                                          ; preds = %cond.true7
  call void @llvm.dbg.value(metadata i32 -1, metadata !3290, metadata !DIExpression()), !dbg !3310
  %cmp26 = icmp eq i8 %4, 100, !dbg !3311
  br i1 %cmp26, label %if.then28, label %if.end37, !dbg !3313

if.then28:                                        ; preds = %if.else
  %add.ptr30 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !3314
  store i8* %add.ptr30, i8** %n, align 8, !dbg !3314
  %call31 = tail call fastcc i64 @d_compact_number(%struct.d_info* %di) #8, !dbg !3316
  %conv32 = trunc i64 %call31 to i32, !dbg !3316
  call void @llvm.dbg.value(metadata i32 %conv32, metadata !3290, metadata !DIExpression()), !dbg !3310
  %cmp33 = icmp slt i32 %conv32, 0, !dbg !3317
  br i1 %cmp33, label %cleanup53, label %if.end37, !dbg !3319

if.end37:                                         ; preds = %if.then28, %if.else
  %num.0 = phi i32 [ -1, %if.else ], [ %conv32, %if.then28 ], !dbg !3310
  call void @llvm.dbg.value(metadata i32 %num.0, metadata !3290, metadata !DIExpression()), !dbg !3310
  %call38 = tail call fastcc %struct.demangle_component* @d_name(%struct.d_info* %di) #8, !dbg !3320
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call38, metadata !3287, metadata !DIExpression()), !dbg !3310
  %tobool39 = icmp eq %struct.demangle_component* %call38, null, !dbg !3321
  br i1 %tobool39, label %if.end45, label %if.then40, !dbg !3323

if.then40:                                        ; preds = %if.end37
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call38, i64 0, i32 0, !dbg !3324
  %5 = load i32, i32* %type, align 8, !dbg !3324
  switch i32 %5, label %sw.default [
    i32 62, label %if.end45
    i32 64, label %if.end45
  ], !dbg !3325

sw.default:                                       ; preds = %if.then40
  %call41 = tail call fastcc i32 @d_discriminator(%struct.d_info* %di) #8, !dbg !3326
  %tobool42 = icmp eq i32 %call41, 0, !dbg !3326
  br i1 %tobool42, label %cleanup53, label %if.end45, !dbg !3329

if.end45:                                         ; preds = %sw.default, %if.end37, %if.then40, %if.then40
  %cmp46 = icmp sgt i32 %num.0, -1, !dbg !3330
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !3332

if.then48:                                        ; preds = %if.end45
  %call49 = tail call fastcc %struct.demangle_component* @d_make_default_arg(%struct.d_info* %di, i32 %num.0, %struct.demangle_component* %call38) #8, !dbg !3333
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call49, metadata !3287, metadata !DIExpression()), !dbg !3310
  br label %if.end50, !dbg !3334

if.end50:                                         ; preds = %if.then48, %if.end45
  %name.0 = phi %struct.demangle_component* [ %call49, %if.then48 ], [ %call38, %if.end45 ], !dbg !3310
  call void @llvm.dbg.value(metadata %struct.demangle_component* %name.0, metadata !3287, metadata !DIExpression()), !dbg !3310
  %call51 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 2, %struct.demangle_component* %call, %struct.demangle_component* %name.0) #8, !dbg !3335
  br label %cleanup53, !dbg !3336

cleanup53:                                        ; preds = %if.then17, %sw.default, %if.end50, %if.then28, %cond.true, %entry, %if.end21
  %retval.1 = phi %struct.demangle_component* [ %call23, %if.end21 ], [ null, %entry ], [ null, %cond.true ], [ null, %if.then17 ], [ %call51, %if.end50 ], [ null, %if.then28 ], [ null, %sw.default ], !dbg !3291
  ret %struct.demangle_component* %retval.1, !dbg !3337
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_unqualified_name(%struct.d_info* %di) unnamed_addr #5 !dbg !3338 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3340, metadata !DIExpression()), !dbg !3350
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3351
  %0 = load i8*, i8** %n, align 8, !dbg !3351
  %1 = load i8, i8* %0, align 1, !dbg !3351
  call void @llvm.dbg.value(metadata i8 %1, metadata !3341, metadata !DIExpression()), !dbg !3350
  %.off = add i8 %1, -48, !dbg !3352
  %2 = icmp ult i8 %.off, 10, !dbg !3352
  br i1 %2, label %if.then, label %if.else, !dbg !3352

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.demangle_component* @d_source_name(%struct.d_info* %di) #8, !dbg !3353
  br label %cleanup59, !dbg !3354

if.else:                                          ; preds = %entry
  %.off3 = add i8 %1, -97, !dbg !3355
  %3 = icmp ult i8 %.off3, 26, !dbg !3355
  br i1 %3, label %if.then12, label %if.else24, !dbg !3355

if.then12:                                        ; preds = %if.else
  %call13 = tail call fastcc %struct.demangle_component* @d_operator_name(%struct.d_info* %di) #8, !dbg !3356
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call13, metadata !3342, metadata !DIExpression()), !dbg !3357
  %cmp14 = icmp eq %struct.demangle_component* %call13, null, !dbg !3358
  br i1 %cmp14, label %cleanup59, label %land.lhs.true16, !dbg !3360

land.lhs.true16:                                  ; preds = %if.then12
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call13, i64 0, i32 0, !dbg !3361
  %4 = load i32, i32* %type, align 8, !dbg !3361
  %cmp17 = icmp eq i32 %4, 44, !dbg !3362
  br i1 %cmp17, label %if.then19, label %cleanup59, !dbg !3363

if.then19:                                        ; preds = %land.lhs.true16
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call13, i64 0, i32 1, !dbg !3364
  %op = bitcast %union.anon* %u to %struct.demangle_operator_info**, !dbg !3365
  %5 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op, align 8, !dbg !3365
  %len = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %5, i64 0, i32 2, !dbg !3366
  %6 = load i32, i32* %len, align 8, !dbg !3366
  %sub = add i32 %6, 7, !dbg !3367
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !3368
  %7 = load i32, i32* %expansion, align 8, !dbg !3369
  %add22 = add i32 %sub, %7, !dbg !3369
  store i32 %add22, i32* %expansion, align 8, !dbg !3369
  br label %cleanup59, !dbg !3370

if.else24:                                        ; preds = %if.else
  %8 = add i8 %1, -67, !dbg !3371
  %9 = icmp ult i8 %8, 2, !dbg !3371
  br i1 %9, label %if.then31, label %if.else33, !dbg !3371

if.then31:                                        ; preds = %if.else24
  %call32 = tail call fastcc %struct.demangle_component* @d_ctor_dtor_name(%struct.d_info* %di) #8, !dbg !3372
  br label %cleanup59, !dbg !3373

if.else33:                                        ; preds = %if.else24
  %cmp35 = icmp eq i8 %1, 76, !dbg !3374
  br i1 %cmp35, label %if.then37, label %if.else48, !dbg !3375

if.then37:                                        ; preds = %if.else33
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3376
  store i8* %add.ptr, i8** %n, align 8, !dbg !3376
  %call40 = tail call fastcc %struct.demangle_component* @d_source_name(%struct.d_info* %di) #8, !dbg !3377
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call40, metadata !3346, metadata !DIExpression()), !dbg !3378
  %cmp41 = icmp eq %struct.demangle_component* %call40, null, !dbg !3379
  br i1 %cmp41, label %cleanup59, label %if.end44, !dbg !3381

if.end44:                                         ; preds = %if.then37
  %call45 = tail call fastcc i32 @d_discriminator(%struct.d_info* %di) #8, !dbg !3382
  %tobool = icmp eq i32 %call45, 0, !dbg !3382
  %call40. = select i1 %tobool, %struct.demangle_component* null, %struct.demangle_component* %call40, !dbg !3378
  br label %cleanup59, !dbg !3378

if.else48:                                        ; preds = %if.else33
  %cmp50 = icmp eq i8 %1, 85, !dbg !3384
  br i1 %cmp50, label %if.then52, label %cleanup59, !dbg !3386

if.then52:                                        ; preds = %if.else48
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3387
  %10 = load i8, i8* %arrayidx, align 1, !dbg !3387
  %conv54 = sext i8 %10 to i32, !dbg !3387
  switch i32 %conv54, label %cleanup59 [
    i32 108, label %sw.bb
    i32 116, label %sw.bb56
  ], !dbg !3389

sw.bb:                                            ; preds = %if.then52
  %call55 = tail call fastcc %struct.demangle_component* @d_lambda(%struct.d_info* %di) #8, !dbg !3390
  br label %cleanup59, !dbg !3392

sw.bb56:                                          ; preds = %if.then52
  %call57 = tail call fastcc %struct.demangle_component* @d_unnamed_type(%struct.d_info* %di) #8, !dbg !3393
  br label %cleanup59, !dbg !3394

cleanup59:                                        ; preds = %if.then12, %if.else48, %if.then52, %if.then37, %if.end44, %land.lhs.true16, %if.then19, %sw.bb56, %sw.bb, %if.then31, %if.then
  %retval.1 = phi %struct.demangle_component* [ %call, %if.then ], [ %call32, %if.then31 ], [ %call57, %sw.bb56 ], [ %call55, %sw.bb ], [ %call13, %if.then19 ], [ %call13, %land.lhs.true16 ], [ null, %if.then12 ], [ null, %if.then37 ], [ %call40., %if.end44 ], [ null, %if.then52 ], [ null, %if.else48 ], !dbg !3395
  ret %struct.demangle_component* %retval.1, !dbg !3396
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_prefix(%struct.d_info* %di) unnamed_addr #5 !dbg !3397 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3399, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.demangle_component* null, metadata !3400, metadata !DIExpression()), !dbg !3405
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3406
  br label %while.cond, !dbg !3407

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %ret.0 = phi %struct.demangle_component* [ null, %entry ], [ %ret.2, %while.cond.backedge ], !dbg !3408
  %retval.0 = phi %struct.demangle_component* [ undef, %entry ], [ %retval.1, %while.cond.backedge ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %ret.0, metadata !3400, metadata !DIExpression()), !dbg !3405
  %0 = load i8*, i8** %n, align 8, !dbg !3409
  %1 = load i8, i8* %0, align 1, !dbg !3409
  call void @llvm.dbg.value(metadata i8 %1, metadata !3401, metadata !DIExpression()), !dbg !3406
  %cmp = icmp eq i8 %1, 0, !dbg !3410
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3412

if.end:                                           ; preds = %while.cond
  call void @llvm.dbg.value(metadata i32 1, metadata !3403, metadata !DIExpression()), !dbg !3406
  %.off = add i8 %1, -48, !dbg !3413
  %2 = icmp ult i8 %.off, 10, !dbg !3413
  br i1 %2, label %if.then31, label %lor.lhs.false, !dbg !3413

lor.lhs.false:                                    ; preds = %if.end
  %.off7 = add i8 %1, -97, !dbg !3415
  %3 = icmp ult i8 %.off7, 26, !dbg !3415
  %4 = add i8 %1, -67, !dbg !3415
  %5 = icmp ult i8 %4, 2, !dbg !3415
  %6 = or i1 %5, %3, !dbg !3415
  %cmp25 = icmp eq i8 %1, 85, !dbg !3416
  %or.cond4 = or i1 %6, %cmp25, !dbg !3415
  %cmp29 = icmp eq i8 %1, 76, !dbg !3417
  %or.cond5 = or i1 %or.cond4, %cmp29, !dbg !3415
  br i1 %or.cond5, label %if.then31, label %if.else, !dbg !3415

if.then31:                                        ; preds = %lor.lhs.false, %if.end
  %call = tail call fastcc %struct.demangle_component* @d_unqualified_name(%struct.d_info* %di) #8, !dbg !3418
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3404, metadata !DIExpression()), !dbg !3406
  br label %if.end72, !dbg !3419

if.else:                                          ; preds = %lor.lhs.false
  %cmp33 = icmp eq i8 %1, 83, !dbg !3420
  br i1 %cmp33, label %if.then35, label %if.else37, !dbg !3422

if.then35:                                        ; preds = %if.else
  %call36 = tail call fastcc %struct.demangle_component* @d_substitution(%struct.d_info* %di, i32 1) #8, !dbg !3423
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call36, metadata !3404, metadata !DIExpression()), !dbg !3406
  br label %if.end72, !dbg !3424

if.else37:                                        ; preds = %if.else
  %cmp39 = icmp eq i8 %1, 73, !dbg !3425
  br i1 %cmp39, label %if.then41, label %if.else47, !dbg !3427

if.then41:                                        ; preds = %if.else37
  %cmp42 = icmp eq %struct.demangle_component* %ret.0, null, !dbg !3428
  br i1 %cmp42, label %cleanup, label %if.end45, !dbg !3431

if.end45:                                         ; preds = %if.then41
  call void @llvm.dbg.value(metadata i32 4, metadata !3403, metadata !DIExpression()), !dbg !3406
  %call46 = tail call fastcc %struct.demangle_component* @d_template_args(%struct.d_info* %di) #8, !dbg !3432
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call46, metadata !3404, metadata !DIExpression()), !dbg !3406
  br label %if.end72, !dbg !3433

if.else47:                                        ; preds = %if.else37
  %cmp49 = icmp eq i8 %1, 84, !dbg !3434
  br i1 %cmp49, label %if.then51, label %if.else53, !dbg !3436

if.then51:                                        ; preds = %if.else47
  %call52 = tail call fastcc %struct.demangle_component* @d_template_param(%struct.d_info* %di) #8, !dbg !3437
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call52, metadata !3404, metadata !DIExpression()), !dbg !3406
  br label %if.end72

if.else53:                                        ; preds = %if.else47
  %cmp55 = icmp eq i8 %1, 69, !dbg !3438
  br i1 %cmp55, label %cleanup, label %if.else58, !dbg !3440

if.else58:                                        ; preds = %if.else53
  %cmp60 = icmp ne i8 %1, 77, !dbg !3441
  %cmp63 = icmp eq %struct.demangle_component* %ret.0, null, !dbg !3443
  %or.cond6 = or i1 %cmp60, %cmp63, !dbg !3446
  br i1 %or.cond6, label %cleanup, label %if.end66, !dbg !3446

if.end66:                                         ; preds = %if.else58
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3447
  store i8* %add.ptr, i8** %n, align 8, !dbg !3447
  br label %cleanup, !dbg !3448, !llvm.loop !3449

if.end72:                                         ; preds = %if.then35, %if.then51, %if.end45, %if.then31
  %comb_type.2 = phi i32 [ 1, %if.then31 ], [ 1, %if.then35 ], [ 4, %if.end45 ], [ 1, %if.then51 ], !dbg !3451
  %dc.2 = phi %struct.demangle_component* [ %call, %if.then31 ], [ %call36, %if.then35 ], [ %call46, %if.end45 ], [ %call52, %if.then51 ], !dbg !3452
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.2, metadata !3404, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i32 %comb_type.2, metadata !3403, metadata !DIExpression()), !dbg !3406
  %cmp73 = icmp eq %struct.demangle_component* %ret.0, null, !dbg !3453
  br i1 %cmp73, label %if.end78, label %if.else76, !dbg !3455

if.else76:                                        ; preds = %if.end72
  %call77 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 %comb_type.2, %struct.demangle_component* nonnull %ret.0, %struct.demangle_component* %dc.2) #8, !dbg !3456
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call77, metadata !3400, metadata !DIExpression()), !dbg !3405
  br label %if.end78

if.end78:                                         ; preds = %if.end72, %if.else76
  %ret.1 = phi %struct.demangle_component* [ %call77, %if.else76 ], [ %dc.2, %if.end72 ], !dbg !3457
  call void @llvm.dbg.value(metadata %struct.demangle_component* %ret.1, metadata !3400, metadata !DIExpression()), !dbg !3405
  %cmp80 = icmp eq i8 %1, 83, !dbg !3458
  br i1 %cmp80, label %if.end91, label %land.lhs.true82, !dbg !3460

land.lhs.true82:                                  ; preds = %if.end78
  %7 = load i8*, i8** %n, align 8, !dbg !3461
  %8 = load i8, i8* %7, align 1, !dbg !3461
  %cmp85 = icmp eq i8 %8, 69, !dbg !3462
  br i1 %cmp85, label %if.end91, label %if.then87, !dbg !3463

if.then87:                                        ; preds = %land.lhs.true82
  %call88 = tail call fastcc i32 @d_add_substitution(%struct.d_info* %di, %struct.demangle_component* %ret.1) #8, !dbg !3464
  %tobool = icmp eq i32 %call88, 0, !dbg !3464
  br i1 %tobool, label %cleanup, label %if.end91, !dbg !3467

if.end91:                                         ; preds = %if.then87, %land.lhs.true82, %if.end78
  br label %cleanup, !dbg !3450

cleanup:                                          ; preds = %if.then87, %if.else58, %if.else53, %if.then41, %while.cond, %if.end91, %if.end66
  %ret.2 = phi %struct.demangle_component* [ %ret.1, %if.end91 ], [ %ret.0, %if.end66 ], [ %ret.0, %while.cond ], [ null, %if.then41 ], [ %ret.0, %if.else53 ], [ %ret.0, %if.else58 ], [ %ret.1, %if.then87 ], !dbg !3405
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end91 ], [ 2, %if.end66 ], [ 1, %while.cond ], [ 1, %if.then41 ], [ 1, %if.else53 ], [ 1, %if.else58 ], [ 1, %if.then87 ]
  %retval.1 = phi %struct.demangle_component* [ %retval.0, %if.end91 ], [ %retval.0, %if.end66 ], [ null, %while.cond ], [ null, %if.then41 ], [ %ret.0, %if.else53 ], [ null, %if.else58 ], [ null, %if.then87 ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %ret.2, metadata !3400, metadata !DIExpression()), !dbg !3405
  switch i32 %cleanup.dest.slot.0, label %cleanup94 [
    i32 0, label %while.cond.backedge
    i32 2, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %cleanup, %cleanup
  br label %while.cond, !dbg !3405, !llvm.loop !3449

cleanup94:                                        ; preds = %cleanup
  %retval.1.lcssa = phi %struct.demangle_component* [ %retval.1, %cleanup ]
  ret %struct.demangle_component* %retval.1.lcssa, !dbg !3468
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @d_discriminator(%struct.d_info* %di) unnamed_addr #5 !dbg !3469 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3473, metadata !DIExpression()), !dbg !3475
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3476
  %0 = load i8*, i8** %n, align 8, !dbg !3476
  %1 = load i8, i8* %0, align 1, !dbg !3476
  %cmp = icmp eq i8 %1, 95, !dbg !3478
  br i1 %cmp, label %if.end, label %cleanup, !dbg !3479

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3480
  store i8* %add.ptr, i8** %n, align 8, !dbg !3480
  %call = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !3481
  call void @llvm.dbg.value(metadata i64 %call, metadata !3474, metadata !DIExpression()), !dbg !3475
  %call.lobit = lshr i64 %call, 63, !dbg !3475
  %2 = trunc i64 %call.lobit to i32, !dbg !3475
  %.not = xor i32 %2, 1, !dbg !3475
  br label %cleanup, !dbg !3475

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %entry ], [ %.not, %if.end ], !dbg !3475
  ret i32 %retval.0, !dbg !3482
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @d_compact_number(%struct.d_info* %di) unnamed_addr #5 !dbg !3483 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3485, metadata !DIExpression()), !dbg !3487
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3488
  %0 = load i8*, i8** %n, align 8, !dbg !3488
  %1 = load i8, i8* %0, align 1, !dbg !3488
  %cmp = icmp eq i8 %1, 95, !dbg !3490
  br i1 %cmp, label %if.end8, label %if.else, !dbg !3491

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i8 %1, 110, !dbg !3492
  br i1 %cmp4, label %cleanup, label %if.else7, !dbg !3494

if.else7:                                         ; preds = %if.else
  %call = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !3495
  %add = add nsw i64 %call, 1, !dbg !3496
  call void @llvm.dbg.value(metadata i64 %add, metadata !3486, metadata !DIExpression()), !dbg !3487
  %.pre = load i8*, i8** %n, align 8, !dbg !3497
  %.pre1 = load i8, i8* %.pre, align 1, !dbg !3497
  %phitmp = icmp eq i8 %.pre1, 95
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.else7
  %2 = phi i1 [ %phitmp, %if.else7 ], [ true, %entry ]
  %3 = phi i8* [ %.pre, %if.else7 ], [ %0, %entry ], !dbg !3497
  %num.0 = phi i64 [ %add, %if.else7 ], [ 0, %entry ], !dbg !3499
  call void @llvm.dbg.value(metadata i64 %num.0, metadata !3486, metadata !DIExpression()), !dbg !3487
  br i1 %2, label %cond.true, label %cleanup, !dbg !3500

cond.true:                                        ; preds = %if.end8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3497
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !3497
  br label %cleanup, !dbg !3501

cleanup:                                          ; preds = %if.end8, %if.else, %cond.true
  %retval.0 = phi i64 [ %num.0, %cond.true ], [ -1, %if.else ], [ -1, %if.end8 ], !dbg !3487
  ret i64 %retval.0, !dbg !3502
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_default_arg(%struct.d_info* %di, i32 %num, %struct.demangle_component* %sub) unnamed_addr #5 !dbg !3503 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3507, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i32 %num, metadata !3508, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata %struct.demangle_component* %sub, metadata !3509, metadata !DIExpression()), !dbg !3511
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3512
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3510, metadata !DIExpression()), !dbg !3511
  %tobool = icmp eq %struct.demangle_component* %call, null, !dbg !3513
  br i1 %tobool, label %if.end, label %if.then, !dbg !3515

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 0, !dbg !3516
  store i32 63, i32* %type, align 8, !dbg !3518
  %0 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, i32 0, i32 1, !dbg !3519
  store i32 %num, i32* %0, align 8, !dbg !3520
  %u2 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, !dbg !3521
  %sub4 = bitcast %union.anon* %u2 to %struct.demangle_component**, !dbg !3522
  store %struct.demangle_component* %sub, %struct.demangle_component** %sub4, align 8, !dbg !3523
  br label %if.end, !dbg !3524

if.end:                                           ; preds = %entry, %if.then
  ret %struct.demangle_component* %call, !dbg !3525
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_operator_name(%struct.d_info* %di) unnamed_addr #5 !dbg !3526 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3528, metadata !DIExpression()), !dbg !3539
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3540
  %0 = load i8*, i8** %n, align 8, !dbg !3540
  %1 = load i8, i8* %0, align 1, !dbg !3540
  %cmp = icmp eq i8 %1, 0, !dbg !3540
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !3540

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3540
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !3540
  %2 = load i8, i8* %0, align 1, !dbg !3540
  %phitmp = sext i8 %2 to i32, !dbg !3540
  %.pre = load i8, i8* %incdec.ptr, align 1, !dbg !3541
  %phitmp5 = icmp eq i8 %.pre, 0, !dbg !3540
  br label %cond.end, !dbg !3540

cond.end:                                         ; preds = %entry, %cond.false
  %3 = phi i1 [ %phitmp5, %cond.false ], [ true, %entry ]
  %4 = phi i8* [ %incdec.ptr, %cond.false ], [ %0, %entry ], !dbg !3541
  %cond = phi i32 [ %phitmp, %cond.false ], [ 0, %entry ]
  br i1 %3, label %cond.end14, label %cond.false10, !dbg !3541

cond.false10:                                     ; preds = %cond.end
  %incdec.ptr12 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !3541
  store i8* %incdec.ptr12, i8** %n, align 8, !dbg !3541
  %5 = load i8, i8* %4, align 1, !dbg !3541
  %phitmp4 = sext i8 %5 to i32, !dbg !3541
  br label %cond.end14, !dbg !3541

cond.end14:                                       ; preds = %cond.end, %cond.false10
  %cond15 = phi i32 [ %phitmp4, %cond.false10 ], [ 0, %cond.end ]
  %cmp18 = icmp eq i32 %cond, 118, !dbg !3542
  %cond15.off = add nsw i32 %cond15, -48, !dbg !3543
  %6 = icmp ult i32 %cond15.off, 10, !dbg !3543
  %7 = and i1 %6, %cmp18, !dbg !3543
  br i1 %7, label %if.then, label %if.else, !dbg !3543

if.then:                                          ; preds = %cond.end14
  %call = tail call fastcc %struct.demangle_component* @d_source_name(%struct.d_info* %di) #8, !dbg !3544
  %call28 = tail call fastcc %struct.demangle_component* @d_make_extended_operator(%struct.d_info* %di, i32 %cond15.off, %struct.demangle_component* %call) #8, !dbg !3545
  br label %cleanup84, !dbg !3546

if.else:                                          ; preds = %cond.end14
  %cmp30 = icmp eq i32 %cond, 99, !dbg !3547
  %cmp34 = icmp eq i32 %cond15, 118, !dbg !3548
  %or.cond3 = and i1 %cmp30, %cmp34, !dbg !3549
  br i1 %or.cond3, label %if.then36, label %while.cond.preheader, !dbg !3549

while.cond.preheader:                             ; preds = %if.else
  br label %while.cond, !dbg !3550

if.then36:                                        ; preds = %if.else
  %call37 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !3551
  %call38 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 46, %struct.demangle_component* %call37, %struct.demangle_component* null) #8, !dbg !3552
  br label %cleanup84, !dbg !3553

while.cond:                                       ; preds = %while.cond.preheader, %cleanup
  %low.0 = phi i32 [ %low.2, %cleanup ], [ 0, %while.cond.preheader ], !dbg !3554
  %high.0 = phi i32 [ %high.2, %cleanup ], [ 52, %while.cond.preheader ], !dbg !3555
  %retval.0 = phi %struct.demangle_component* [ %retval.1, %cleanup ], [ undef, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i32 %high.0, metadata !3535, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 %low.0, metadata !3531, metadata !DIExpression()), !dbg !3556
  %sub40 = sub nsw i32 %high.0, %low.0, !dbg !3557
  %div = sdiv i32 %sub40, 2, !dbg !3558
  %add = add nsw i32 %low.0, %div, !dbg !3559
  call void @llvm.dbg.value(metadata i32 %add, metadata !3536, metadata !DIExpression()), !dbg !3560
  %idx.ext = sext i32 %add to i64, !dbg !3561
  %add.ptr = getelementptr inbounds [53 x %struct.demangle_operator_info], [53 x %struct.demangle_operator_info]* @cplus_demangle_operators, i64 0, i64 %idx.ext, !dbg !3561
  call void @llvm.dbg.value(metadata %struct.demangle_operator_info* %add.ptr, metadata !3538, metadata !DIExpression()), !dbg !3560
  %code = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %add.ptr, i64 0, i32 0, !dbg !3562
  %8 = load i8*, i8** %code, align 8, !dbg !3562
  %9 = load i8, i8* %8, align 1, !dbg !3564
  %conv42 = sext i8 %9 to i32, !dbg !3564
  %cmp43 = icmp eq i32 %cond, %conv42, !dbg !3565
  br i1 %cmp43, label %land.lhs.true45, label %if.end, !dbg !3566

land.lhs.true45:                                  ; preds = %while.cond
  %arrayidx48 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !3567
  %10 = load i8, i8* %arrayidx48, align 1, !dbg !3567
  %conv49 = sext i8 %10 to i32, !dbg !3567
  %cmp50 = icmp eq i32 %cond15, %conv49, !dbg !3568
  br i1 %cmp50, label %if.then52, label %if.end, !dbg !3569

if.then52:                                        ; preds = %land.lhs.true45
  %call53 = tail call fastcc %struct.demangle_component* @d_make_operator(%struct.d_info* %di, %struct.demangle_operator_info* nonnull %add.ptr) #8, !dbg !3570
  br label %cleanup, !dbg !3571

if.end:                                           ; preds = %land.lhs.true45, %while.cond
  %cmp58 = icmp slt i32 %cond, %conv42, !dbg !3572
  br i1 %cmp58, label %if.end76, label %lor.lhs.false, !dbg !3574

lor.lhs.false:                                    ; preds = %if.end
  br i1 %cmp43, label %land.lhs.true66, label %if.else74, !dbg !3575

land.lhs.true66:                                  ; preds = %lor.lhs.false
  %arrayidx69 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !3576
  %11 = load i8, i8* %arrayidx69, align 1, !dbg !3576
  %conv70 = sext i8 %11 to i32, !dbg !3576
  %cmp71 = icmp slt i32 %cond15, %conv70, !dbg !3577
  br i1 %cmp71, label %if.end76, label %if.else74, !dbg !3578

if.else74:                                        ; preds = %land.lhs.true66, %lor.lhs.false
  %add75 = add nsw i32 %add, 1, !dbg !3579
  call void @llvm.dbg.value(metadata i32 %add75, metadata !3531, metadata !DIExpression()), !dbg !3556
  br label %if.end76

if.end76:                                         ; preds = %if.end, %land.lhs.true66, %if.else74
  %low.1 = phi i32 [ %add75, %if.else74 ], [ %low.0, %land.lhs.true66 ], [ %low.0, %if.end ], !dbg !3556
  %high.1 = phi i32 [ %high.0, %if.else74 ], [ %add, %land.lhs.true66 ], [ %add, %if.end ], !dbg !3556
  call void @llvm.dbg.value(metadata i32 %high.1, metadata !3535, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 %low.1, metadata !3531, metadata !DIExpression()), !dbg !3556
  %cmp77 = icmp eq i32 %low.1, %high.1, !dbg !3580
  %. = zext i1 %cmp77 to i32, !dbg !3556
  %.retval.0 = select i1 %cmp77, %struct.demangle_component* null, %struct.demangle_component* %retval.0, !dbg !3556
  br label %cleanup, !dbg !3556

cleanup:                                          ; preds = %if.end76, %if.then52
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then52 ], [ %., %if.end76 ]
  %low.2 = phi i32 [ %low.0, %if.then52 ], [ %low.1, %if.end76 ], !dbg !3554
  %high.2 = phi i32 [ %high.0, %if.then52 ], [ %high.1, %if.end76 ], !dbg !3556
  %retval.1 = phi %struct.demangle_component* [ %call53, %if.then52 ], [ %.retval.0, %if.end76 ]
  call void @llvm.dbg.value(metadata i32 %high.2, metadata !3535, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 %low.2, metadata !3531, metadata !DIExpression()), !dbg !3556
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %while.cond, label %cleanup84.loopexit, !llvm.loop !3582

cleanup84.loopexit:                               ; preds = %cleanup
  %retval.1.lcssa = phi %struct.demangle_component* [ %retval.1, %cleanup ]
  br label %cleanup84, !dbg !3584

cleanup84:                                        ; preds = %cleanup84.loopexit, %if.then36, %if.then
  %retval.2 = phi %struct.demangle_component* [ %call28, %if.then ], [ %call38, %if.then36 ], [ %retval.1.lcssa, %cleanup84.loopexit ], !dbg !3585
  ret %struct.demangle_component* %retval.2, !dbg !3584
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_ctor_dtor_name(%struct.d_info* %di) unnamed_addr #5 !dbg !3586 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3588, metadata !DIExpression()), !dbg !3594
  %last_name = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 11, !dbg !3595
  %0 = load %struct.demangle_component*, %struct.demangle_component** %last_name, align 8, !dbg !3595
  %cmp = icmp eq %struct.demangle_component* %0, null, !dbg !3597
  br i1 %cmp, label %if.end15, label %if.then, !dbg !3598

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %0, i64 0, i32 0, !dbg !3599
  %1 = load i32, i32* %type, align 8, !dbg !3599
  %cmp2 = icmp eq i32 %1, 0, !dbg !3602
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !3603

if.then3:                                         ; preds = %if.then
  %len = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %0, i64 0, i32 1, i32 0, i32 1, !dbg !3604
  %2 = load i32, i32* %len, align 8, !dbg !3604
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !3605
  %3 = load i32, i32* %expansion, align 8, !dbg !3606
  %add = add nsw i32 %3, %2, !dbg !3606
  store i32 %add, i32* %expansion, align 8, !dbg !3606
  br label %if.end15, !dbg !3607

if.else:                                          ; preds = %if.then
  %cmp7 = icmp eq i32 %1, 22, !dbg !3608
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !3610

if.then8:                                         ; preds = %if.else
  %4 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %0, i64 0, i32 1, i32 0, i32 1, !dbg !3611
  %5 = load i32, i32* %4, align 8, !dbg !3611
  %expansion12 = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !3612
  %6 = load i32, i32* %expansion12, align 8, !dbg !3613
  %add13 = add nsw i32 %6, %5, !dbg !3613
  store i32 %add13, i32* %expansion12, align 8, !dbg !3613
  br label %if.end15, !dbg !3614

if.end15:                                         ; preds = %entry, %if.then3, %if.then8, %if.else
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3615
  %7 = load i8*, i8** %n, align 8, !dbg !3615
  %8 = load i8, i8* %7, align 1, !dbg !3615
  %conv = sext i8 %8 to i32, !dbg !3615
  switch i32 %conv, label %return [
    i32 67, label %sw.bb
    i32 68, label %sw.bb23
  ], !dbg !3616

sw.bb:                                            ; preds = %if.end15
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3617
  %9 = load i8, i8* %arrayidx, align 1, !dbg !3617
  %conv17 = sext i8 %9 to i32, !dbg !3617
  switch i32 %conv17, label %return [
    i32 49, label %sw.epilog
    i32 50, label %sw.bb19
    i32 51, label %sw.bb20
  ], !dbg !3618

sw.bb19:                                          ; preds = %sw.bb
  call void @llvm.dbg.value(metadata i32 2, metadata !3589, metadata !DIExpression()), !dbg !3619
  br label %sw.epilog, !dbg !3620

sw.bb20:                                          ; preds = %sw.bb
  call void @llvm.dbg.value(metadata i32 3, metadata !3589, metadata !DIExpression()), !dbg !3619
  br label %sw.epilog, !dbg !3622

sw.epilog:                                        ; preds = %sw.bb, %sw.bb20, %sw.bb19
  %kind.0 = phi i32 [ 3, %sw.bb20 ], [ 2, %sw.bb19 ], [ 1, %sw.bb ], !dbg !3623
  call void @llvm.dbg.value(metadata i32 %kind.0, metadata !3589, metadata !DIExpression()), !dbg !3619
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 2, !dbg !3624
  store i8* %add.ptr, i8** %n, align 8, !dbg !3624
  %call = tail call fastcc %struct.demangle_component* @d_make_ctor(%struct.d_info* %di, i32 %kind.0, %struct.demangle_component* %0) #8, !dbg !3625
  br label %return, !dbg !3626

sw.bb23:                                          ; preds = %if.end15
  %arrayidx26 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3627
  %10 = load i8, i8* %arrayidx26, align 1, !dbg !3627
  %conv27 = sext i8 %10 to i32, !dbg !3627
  switch i32 %conv27, label %return [
    i32 48, label %sw.epilog32
    i32 49, label %sw.bb29
    i32 50, label %sw.bb30
  ], !dbg !3628

sw.bb29:                                          ; preds = %sw.bb23
  call void @llvm.dbg.value(metadata i32 2, metadata !3592, metadata !DIExpression()), !dbg !3629
  br label %sw.epilog32, !dbg !3630

sw.bb30:                                          ; preds = %sw.bb23
  call void @llvm.dbg.value(metadata i32 3, metadata !3592, metadata !DIExpression()), !dbg !3629
  br label %sw.epilog32, !dbg !3632

sw.epilog32:                                      ; preds = %sw.bb23, %sw.bb30, %sw.bb29
  %kind24.0 = phi i32 [ 3, %sw.bb30 ], [ 2, %sw.bb29 ], [ 1, %sw.bb23 ], !dbg !3633
  call void @llvm.dbg.value(metadata i32 %kind24.0, metadata !3592, metadata !DIExpression()), !dbg !3629
  %add.ptr34 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !3634
  store i8* %add.ptr34, i8** %n, align 8, !dbg !3634
  %call36 = tail call fastcc %struct.demangle_component* @d_make_dtor(%struct.d_info* %di, i32 %kind24.0, %struct.demangle_component* %0) #8, !dbg !3635
  br label %return, !dbg !3636

return:                                           ; preds = %if.end15, %sw.epilog32, %sw.bb23, %sw.epilog, %sw.bb
  %retval.2 = phi %struct.demangle_component* [ %call, %sw.epilog ], [ null, %sw.bb ], [ %call36, %sw.epilog32 ], [ null, %sw.bb23 ], [ null, %if.end15 ], !dbg !3637
  ret %struct.demangle_component* %retval.2, !dbg !3638
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_lambda(%struct.d_info* %di) unnamed_addr #5 !dbg !3639 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3641, metadata !DIExpression()), !dbg !3645
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3646
  %0 = load i8*, i8** %n, align 8, !dbg !3646
  %1 = load i8, i8* %0, align 1, !dbg !3646
  %cmp = icmp eq i8 %1, 85, !dbg !3646
  br i1 %cmp, label %cond.true, label %cleanup, !dbg !3648

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3646
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !3646
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !3649
  %cmp5 = icmp eq i8 %2, 108, !dbg !3649
  br i1 %cmp5, label %cond.true7, label %cleanup, !dbg !3651

cond.true7:                                       ; preds = %cond.true
  %incdec.ptr9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !3649
  store i8* %incdec.ptr9, i8** %n, align 8, !dbg !3649
  %call = tail call fastcc %struct.demangle_component* @d_parmlist(%struct.d_info* %di) #8, !dbg !3652
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3642, metadata !DIExpression()), !dbg !3645
  %cmp13 = icmp eq %struct.demangle_component* %call, null, !dbg !3653
  br i1 %cmp13, label %cleanup, label %if.end16, !dbg !3655

if.end16:                                         ; preds = %cond.true7
  %3 = load i8*, i8** %n, align 8, !dbg !3656
  %4 = load i8, i8* %3, align 1, !dbg !3656
  %cmp19 = icmp eq i8 %4, 69, !dbg !3656
  br i1 %cmp19, label %cond.true21, label %cleanup, !dbg !3658

cond.true21:                                      ; preds = %if.end16
  %incdec.ptr23 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3656
  store i8* %incdec.ptr23, i8** %n, align 8, !dbg !3656
  %call27 = tail call fastcc i64 @d_compact_number(%struct.d_info* %di) #8, !dbg !3659
  %conv28 = trunc i64 %call27 to i32, !dbg !3659
  call void @llvm.dbg.value(metadata i32 %conv28, metadata !3644, metadata !DIExpression()), !dbg !3645
  %cmp29 = icmp slt i32 %conv28, 0, !dbg !3660
  br i1 %cmp29, label %cleanup, label %if.end32, !dbg !3662

if.end32:                                         ; preds = %cond.true21
  %call33 = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3663
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call33, metadata !3643, metadata !DIExpression()), !dbg !3645
  %tobool = icmp eq %struct.demangle_component* %call33, null, !dbg !3664
  br i1 %tobool, label %if.end38, label %if.then34, !dbg !3666

if.then34:                                        ; preds = %if.end32
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call33, i64 0, i32 0, !dbg !3667
  store i32 62, i32* %type, align 8, !dbg !3669
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call33, i64 0, i32 1, !dbg !3670
  %sub = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !3671
  store %struct.demangle_component* %call, %struct.demangle_component** %sub, align 8, !dbg !3672
  %5 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call33, i64 0, i32 1, i32 0, i32 1, !dbg !3673
  store i32 %conv28, i32* %5, align 8, !dbg !3674
  br label %if.end38, !dbg !3675

if.end38:                                         ; preds = %if.end32, %if.then34
  %call39 = tail call fastcc i32 @d_add_substitution(%struct.d_info* %di, %struct.demangle_component* %call33) #8, !dbg !3676
  %tobool40 = icmp eq i32 %call39, 0, !dbg !3676
  %call33. = select i1 %tobool40, %struct.demangle_component* null, %struct.demangle_component* %call33, !dbg !3645
  br label %cleanup, !dbg !3645

cleanup:                                          ; preds = %if.end38, %cond.true21, %if.end16, %cond.true7, %cond.true, %entry
  %retval.0 = phi %struct.demangle_component* [ null, %entry ], [ null, %cond.true ], [ null, %cond.true7 ], [ null, %if.end16 ], [ null, %cond.true21 ], [ %call33., %if.end38 ], !dbg !3645
  ret %struct.demangle_component* %retval.0, !dbg !3678
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_unnamed_type(%struct.d_info* %di) unnamed_addr #5 !dbg !3679 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3681, metadata !DIExpression()), !dbg !3684
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3685
  %0 = load i8*, i8** %n, align 8, !dbg !3685
  %1 = load i8, i8* %0, align 1, !dbg !3685
  %cmp = icmp eq i8 %1, 85, !dbg !3685
  br i1 %cmp, label %cond.true, label %cleanup, !dbg !3687

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3685
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !3685
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !3688
  %cmp5 = icmp eq i8 %2, 116, !dbg !3688
  br i1 %cmp5, label %cond.true7, label %cleanup, !dbg !3690

cond.true7:                                       ; preds = %cond.true
  %incdec.ptr9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !3688
  store i8* %incdec.ptr9, i8** %n, align 8, !dbg !3688
  %call = tail call fastcc i64 @d_compact_number(%struct.d_info* %di) #8, !dbg !3691
  call void @llvm.dbg.value(metadata i64 %call, metadata !3683, metadata !DIExpression()), !dbg !3684
  %cmp13 = icmp slt i64 %call, 0, !dbg !3692
  br i1 %cmp13, label %cleanup, label %if.end16, !dbg !3694

if.end16:                                         ; preds = %cond.true7
  %call17 = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3695
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call17, metadata !3682, metadata !DIExpression()), !dbg !3684
  %tobool = icmp eq %struct.demangle_component* %call17, null, !dbg !3696
  br i1 %tobool, label %if.end19, label %if.then18, !dbg !3698

if.then18:                                        ; preds = %if.end16
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call17, i64 0, i32 0, !dbg !3699
  store i32 64, i32* %type, align 8, !dbg !3701
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call17, i64 0, i32 1, !dbg !3702
  %number = bitcast %union.anon* %u to i64*, !dbg !3703
  store i64 %call, i64* %number, align 8, !dbg !3704
  br label %if.end19, !dbg !3705

if.end19:                                         ; preds = %if.end16, %if.then18
  %call20 = tail call fastcc i32 @d_add_substitution(%struct.d_info* %di, %struct.demangle_component* %call17) #8, !dbg !3706
  %tobool21 = icmp eq i32 %call20, 0, !dbg !3706
  %call17. = select i1 %tobool21, %struct.demangle_component* null, %struct.demangle_component* %call17, !dbg !3684
  br label %cleanup, !dbg !3684

cleanup:                                          ; preds = %if.end19, %cond.true7, %cond.true, %entry
  %retval.0 = phi %struct.demangle_component* [ null, %entry ], [ null, %cond.true ], [ null, %cond.true7 ], [ %call17., %if.end19 ], !dbg !3684
  ret %struct.demangle_component* %retval.0, !dbg !3708
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_extended_operator(%struct.d_info* %di, i32 %args, %struct.demangle_component* %name) unnamed_addr #5 !dbg !3709 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3711, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %args, metadata !3712, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata %struct.demangle_component* %name, metadata !3713, metadata !DIExpression()), !dbg !3715
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3716
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3714, metadata !DIExpression()), !dbg !3715
  %call1 = tail call i32 @cplus_demangle_fill_extended_operator(%struct.demangle_component* %call, i32 %args, %struct.demangle_component* %name) #8, !dbg !3717
  %tobool = icmp eq i32 %call1, 0, !dbg !3717
  %call. = select i1 %tobool, %struct.demangle_component* null, %struct.demangle_component* %call, !dbg !3715
  ret %struct.demangle_component* %call., !dbg !3719
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_operator(%struct.d_info* %di, %struct.demangle_operator_info* %op) unnamed_addr #5 !dbg !3720 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3724, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata %struct.demangle_operator_info* %op, metadata !3725, metadata !DIExpression()), !dbg !3727
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3728
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3726, metadata !DIExpression()), !dbg !3727
  %cmp = icmp eq %struct.demangle_component* %call, null, !dbg !3729
  br i1 %cmp, label %if.end, label %if.then, !dbg !3731

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 0, !dbg !3732
  store i32 44, i32* %type, align 8, !dbg !3734
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, !dbg !3735
  %op1 = bitcast %union.anon* %u to %struct.demangle_operator_info**, !dbg !3736
  store %struct.demangle_operator_info* %op, %struct.demangle_operator_info** %op1, align 8, !dbg !3737
  br label %if.end, !dbg !3738

if.end:                                           ; preds = %entry, %if.then
  ret %struct.demangle_component* %call, !dbg !3739
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_ctor(%struct.d_info* %di, i32 %kind, %struct.demangle_component* %name) unnamed_addr #5 !dbg !3740 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3744, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i32 %kind, metadata !3745, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata %struct.demangle_component* %name, metadata !3746, metadata !DIExpression()), !dbg !3748
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3749
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3747, metadata !DIExpression()), !dbg !3748
  %call1 = tail call i32 @cplus_demangle_fill_ctor(%struct.demangle_component* %call, i32 %kind, %struct.demangle_component* %name) #8, !dbg !3750
  %tobool = icmp eq i32 %call1, 0, !dbg !3750
  %call. = select i1 %tobool, %struct.demangle_component* null, %struct.demangle_component* %call, !dbg !3748
  ret %struct.demangle_component* %call., !dbg !3752
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_dtor(%struct.d_info* %di, i32 %kind, %struct.demangle_component* %name) unnamed_addr #5 !dbg !3753 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3757, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 %kind, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata %struct.demangle_component* %name, metadata !3759, metadata !DIExpression()), !dbg !3761
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3762
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3760, metadata !DIExpression()), !dbg !3761
  %call1 = tail call i32 @cplus_demangle_fill_dtor(%struct.demangle_component* %call, i32 %kind, %struct.demangle_component* %name) #8, !dbg !3763
  %tobool = icmp eq i32 %call1, 0, !dbg !3763
  %call. = select i1 %tobool, %struct.demangle_component* null, %struct.demangle_component* %call, !dbg !3761
  ret %struct.demangle_component* %call., !dbg !3765
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_parmlist(%struct.d_info* %di) unnamed_addr #5 !dbg !3766 {
entry:
  %tl = alloca %struct.demangle_component*, align 8
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3768, metadata !DIExpression()), !dbg !3774
  %0 = bitcast %struct.demangle_component** %tl to i8*, !dbg !3775
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !3775
  call void @llvm.dbg.value(metadata %struct.demangle_component* null, metadata !3769, metadata !DIExpression()), !dbg !3774
  store %struct.demangle_component* null, %struct.demangle_component** %tl, align 8, !dbg !3776
  call void @llvm.dbg.value(metadata %struct.demangle_component** %tl, metadata !3770, metadata !DIExpression()), !dbg !3774
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3777
  br label %while.cond, !dbg !3778

while.cond:                                       ; preds = %cleanup, %entry
  %ptl.0 = phi %struct.demangle_component** [ %tl, %entry ], [ %ptl.1, %cleanup ], !dbg !3779
  call void @llvm.dbg.value(metadata %struct.demangle_component** %ptl.0, metadata !3770, metadata !DIExpression()), !dbg !3774
  %1 = load i8*, i8** %n, align 8, !dbg !3780
  %2 = load i8, i8* %1, align 1, !dbg !3780
  call void @llvm.dbg.value(metadata i8 %2, metadata !3773, metadata !DIExpression()), !dbg !3777
  %cmp = icmp eq i8 %2, 0, !dbg !3781
  %cmp3 = icmp eq i8 %2, 69, !dbg !3783
  %or.cond = or i1 %cmp, %cmp3, !dbg !3784
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !3784

if.end:                                           ; preds = %while.cond
  %call = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !3785
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3771, metadata !DIExpression()), !dbg !3777
  %cmp5 = icmp eq %struct.demangle_component* %call, null, !dbg !3786
  br i1 %cmp5, label %cleanup, label %if.end8, !dbg !3788

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 42, %struct.demangle_component* nonnull %call, %struct.demangle_component* null) #8, !dbg !3789
  store %struct.demangle_component* %call9, %struct.demangle_component** %ptl.0, align 8, !dbg !3790
  %cmp10 = icmp eq %struct.demangle_component* %call9, null, !dbg !3791
  br i1 %cmp10, label %cleanup, label %if.end13, !dbg !3793

if.end13:                                         ; preds = %if.end8
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call9, i64 0, i32 1, i32 0, i32 1, !dbg !3794
  %3 = bitcast i32* %right to %struct.demangle_component**, !dbg !3794
  call void @llvm.dbg.value(metadata %struct.demangle_component** %3, metadata !3770, metadata !DIExpression()), !dbg !3774
  br label %cleanup, !dbg !3795

cleanup:                                          ; preds = %if.end8, %if.end, %while.cond, %if.end13
  %ptl.1 = phi %struct.demangle_component** [ %3, %if.end13 ], [ %ptl.0, %while.cond ], [ %ptl.0, %if.end ], [ %ptl.0, %if.end8 ], !dbg !3774
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end13 ], [ 3, %while.cond ], [ 1, %if.end ], [ 1, %if.end8 ]
  call void @llvm.dbg.value(metadata %struct.demangle_component** %ptl.1, metadata !3770, metadata !DIExpression()), !dbg !3774
  switch i32 %cleanup.dest.slot.0, label %cleanup48.loopexit [
    i32 0, label %while.cond
    i32 3, label %while.end
  ], !llvm.loop !3796

while.end:                                        ; preds = %cleanup
  %4 = load %struct.demangle_component*, %struct.demangle_component** %tl, align 8, !dbg !3797
  call void @llvm.dbg.value(metadata %struct.demangle_component* %4, metadata !3769, metadata !DIExpression()), !dbg !3774
  %cmp15 = icmp eq %struct.demangle_component* %4, null, !dbg !3799
  br i1 %cmp15, label %cleanup48, label %if.end18, !dbg !3800

if.end18:                                         ; preds = %while.end
  call void @llvm.dbg.value(metadata %struct.demangle_component* %4, metadata !3769, metadata !DIExpression()), !dbg !3774
  %right21 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %4, i64 0, i32 1, i32 0, i32 1, !dbg !3801
  %5 = bitcast i32* %right21 to %struct.demangle_component**, !dbg !3801
  %6 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8, !dbg !3801
  %cmp22 = icmp eq %struct.demangle_component* %6, null, !dbg !3803
  br i1 %cmp22, label %land.lhs.true, label %if.end47, !dbg !3804

land.lhs.true:                                    ; preds = %if.end18
  call void @llvm.dbg.value(metadata %struct.demangle_component* %4, metadata !3769, metadata !DIExpression()), !dbg !3774
  %u24 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %4, i64 0, i32 1, !dbg !3805
  %left = bitcast %union.anon* %u24 to %struct.demangle_component**, !dbg !3805
  %7 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !3805
  %type26 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %7, i64 0, i32 0, !dbg !3806
  %8 = load i32, i32* %type26, align 8, !dbg !3806
  %cmp27 = icmp eq i32 %8, 35, !dbg !3807
  br i1 %cmp27, label %land.lhs.true29, label %if.end47, !dbg !3808

land.lhs.true29:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.demangle_component* %4, metadata !3769, metadata !DIExpression()), !dbg !3774
  %u33 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %7, i64 0, i32 1, !dbg !3809
  %type34 = bitcast %union.anon* %u33 to %struct.demangle_builtin_type_info**, !dbg !3810
  %9 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type34, align 8, !dbg !3810
  %print = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %9, i64 0, i32 4, !dbg !3811
  %10 = load i32, i32* %print, align 4, !dbg !3811
  %cmp35 = icmp eq i32 %10, 9, !dbg !3812
  br i1 %cmp35, label %if.then37, label %if.end47, !dbg !3813

if.then37:                                        ; preds = %land.lhs.true29
  call void @llvm.dbg.value(metadata %struct.demangle_component* %4, metadata !3769, metadata !DIExpression()), !dbg !3774
  %len = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %9, i64 0, i32 1, !dbg !3814
  %11 = load i32, i32* %len, align 8, !dbg !3814
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !3816
  %12 = load i32, i32* %expansion, align 8, !dbg !3817
  %sub = sub nsw i32 %12, %11, !dbg !3817
  store i32 %sub, i32* %expansion, align 8, !dbg !3817
  call void @llvm.dbg.value(metadata %struct.demangle_component* %4, metadata !3769, metadata !DIExpression()), !dbg !3774
  store %struct.demangle_component* null, %struct.demangle_component** %left, align 8, !dbg !3818
  br label %if.end47, !dbg !3819

if.end47:                                         ; preds = %if.then37, %land.lhs.true29, %land.lhs.true, %if.end18
  call void @llvm.dbg.value(metadata %struct.demangle_component* %4, metadata !3769, metadata !DIExpression()), !dbg !3774
  br label %cleanup48, !dbg !3820

cleanup48.loopexit:                               ; preds = %cleanup
  br label %cleanup48, !dbg !3821

cleanup48:                                        ; preds = %cleanup48.loopexit, %while.end, %if.end47
  %retval.2 = phi %struct.demangle_component* [ %4, %if.end47 ], [ null, %while.end ], [ null, %cleanup48.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !3821
  ret %struct.demangle_component* %retval.2, !dbg !3821
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @is_ctor_dtor_or_conversion(%struct.demangle_component* %dc) unnamed_addr #5 !dbg !3822 {
entry:
  br label %tailrecurse, !dbg !3825

tailrecurse:                                      ; preds = %sw.bb, %entry
  %dc.tr = phi %struct.demangle_component* [ %dc, %entry ], [ %2, %sw.bb ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.tr, metadata !3824, metadata !DIExpression()), !dbg !3827
  %cmp = icmp eq %struct.demangle_component* %dc.tr, null, !dbg !3828
  br i1 %cmp, label %return.loopexit, label %if.end, !dbg !3830

if.end:                                           ; preds = %tailrecurse
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.tr, i64 0, i32 0, !dbg !3831
  %0 = load i32, i32* %type, align 8, !dbg !3831
  switch i32 %0, label %return.loopexit [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 7, label %sw.bb1
    i32 8, label %sw.bb1
    i32 46, label %sw.bb1
  ], !dbg !3832

sw.bb:                                            ; preds = %if.end, %if.end
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.tr, i64 0, i32 1, i32 0, i32 1, !dbg !3833
  %1 = bitcast i32* %right to %struct.demangle_component**, !dbg !3833
  %2 = load %struct.demangle_component*, %struct.demangle_component** %1, align 8, !dbg !3833
  br label %tailrecurse, !dbg !3825

sw.bb1:                                           ; preds = %if.end, %if.end, %if.end
  br label %return, !dbg !3834

return.loopexit:                                  ; preds = %tailrecurse, %if.end
  br label %return, !dbg !3835

return:                                           ; preds = %return.loopexit, %sw.bb1
  %retval.0 = phi i32 [ 1, %sw.bb1 ], [ 0, %return.loopexit ], !dbg !3827
  ret i32 %retval.0, !dbg !3835
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_identifier(%struct.d_info* %di, i32 %len) unnamed_addr #5 !dbg !3836 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3838, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i32 %len, metadata !3839, metadata !DIExpression()), !dbg !3844
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3845
  %0 = load i8*, i8** %n, align 8, !dbg !3845
  call void @llvm.dbg.value(metadata i8* %0, metadata !3840, metadata !DIExpression()), !dbg !3844
  %send = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 1, !dbg !3846
  %1 = bitcast i8** %send to i64*, !dbg !3846
  %2 = load i64, i64* %1, align 8, !dbg !3846
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64, !dbg !3848
  %sub.ptr.sub = sub i64 %2, %sub.ptr.rhs.cast, !dbg !3848
  %conv = sext i32 %len to i64, !dbg !3849
  %cmp = icmp slt i64 %sub.ptr.sub, %conv, !dbg !3850
  br i1 %cmp, label %cleanup43, label %if.end, !dbg !3851

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %conv, !dbg !3852
  store i8* %add.ptr, i8** %n, align 8, !dbg !3852
  %options = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 2, !dbg !3853
  %3 = load i32, i32* %options, align 8, !dbg !3853
  %and = and i32 %3, 4, !dbg !3855
  %cmp3 = icmp eq i32 %and, 0, !dbg !3856
  br i1 %cmp3, label %if.end12, label %land.lhs.true, !dbg !3857

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8, i8* %add.ptr, align 1, !dbg !3858
  %cmp7 = icmp eq i8 %4, 36, !dbg !3859
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !3860

if.then9:                                         ; preds = %land.lhs.true
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !3861
  store i8* %add.ptr11, i8** %n, align 8, !dbg !3861
  br label %if.end12, !dbg !3861

if.end12:                                         ; preds = %if.end, %if.then9, %land.lhs.true
  %cmp13 = icmp sgt i32 %len, 9, !dbg !3862
  br i1 %cmp13, label %land.lhs.true15, label %if.end41, !dbg !3863

land.lhs.true15:                                  ; preds = %if.end12
  %call = tail call i32 @memcmp(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i64 0, i64 0), i64 8) #7, !dbg !3864
  %cmp16 = icmp eq i32 %call, 0, !dbg !3865
  br i1 %cmp16, label %if.then18, label %if.end41, !dbg !3866

if.then18:                                        ; preds = %land.lhs.true15
  %add.ptr19 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3867
  call void @llvm.dbg.value(metadata i8* %add.ptr19, metadata !3841, metadata !DIExpression()), !dbg !3868
  %5 = load i8, i8* %add.ptr19, align 1, !dbg !3869
  %cmp21 = icmp eq i8 %5, 46, !dbg !3871
  br i1 %cmp21, label %land.lhs.true30, label %lor.lhs.false, !dbg !3872

lor.lhs.false:                                    ; preds = %if.then18
  %cmp24 = icmp eq i8 %5, 95, !dbg !3873
  br i1 %cmp24, label %land.lhs.true30, label %lor.lhs.false26, !dbg !3874

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %cmp28 = icmp eq i8 %5, 36, !dbg !3875
  br i1 %cmp28, label %land.lhs.true30, label %cleanup, !dbg !3876

land.lhs.true30:                                  ; preds = %lor.lhs.false26, %lor.lhs.false, %if.then18
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 9, !dbg !3877
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3877
  %cmp32 = icmp eq i8 %6, 78, !dbg !3878
  br i1 %cmp32, label %if.then34, label %cleanup, !dbg !3879

if.then34:                                        ; preds = %land.lhs.true30
  %sub = add i32 %len, -22, !dbg !3880
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !3882
  %7 = load i32, i32* %expansion, align 8, !dbg !3883
  %sub37 = sub i32 %7, %sub, !dbg !3883
  store i32 %sub37, i32* %expansion, align 8, !dbg !3883
  %call39 = tail call fastcc %struct.demangle_component* @d_make_name(%struct.d_info* %di, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.131, i64 0, i64 0), i32 21) #8, !dbg !3884
  br label %cleanup, !dbg !3885

cleanup:                                          ; preds = %lor.lhs.false26, %land.lhs.true30, %if.then34
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then34 ], [ true, %land.lhs.true30 ], [ true, %lor.lhs.false26 ]
  %retval.0 = phi %struct.demangle_component* [ %call39, %if.then34 ], [ undef, %land.lhs.true30 ], [ undef, %lor.lhs.false26 ]
  br i1 %cleanup.dest.slot.0, label %if.end41, label %cleanup43

if.end41:                                         ; preds = %cleanup, %land.lhs.true15, %if.end12
  %call42 = tail call fastcc %struct.demangle_component* @d_make_name(%struct.d_info* %di, i8* %0, i32 %len) #8, !dbg !3886
  br label %cleanup43, !dbg !3887

cleanup43:                                        ; preds = %entry, %cleanup, %if.end41
  %retval.1 = phi %struct.demangle_component* [ %retval.0, %cleanup ], [ %call42, %if.end41 ], [ null, %entry ], !dbg !3844
  ret %struct.demangle_component* %retval.1, !dbg !3888
}

declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_number_component(%struct.d_info* %di) unnamed_addr #5 !dbg !3889 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3891, metadata !DIExpression()), !dbg !3893
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3894
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3892, metadata !DIExpression()), !dbg !3893
  %tobool = icmp eq %struct.demangle_component* %call, null, !dbg !3895
  br i1 %tobool, label %if.end, label %if.then, !dbg !3897

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 0, !dbg !3898
  store i32 58, i32* %type, align 8, !dbg !3900
  %call1 = tail call fastcc i64 @d_number(%struct.d_info* %di) #8, !dbg !3901
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, !dbg !3902
  %number = bitcast %union.anon* %u to i64*, !dbg !3903
  store i64 %call1, i64* %number, align 8, !dbg !3904
  br label %if.end, !dbg !3905

if.end:                                           ; preds = %entry, %if.then
  ret %struct.demangle_component* %call, !dbg !3906
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_template_param(%struct.d_info* %di, i64 %i) unnamed_addr #5 !dbg !3907 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3911, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %i, metadata !3912, metadata !DIExpression()), !dbg !3914
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !3915
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3913, metadata !DIExpression()), !dbg !3914
  %cmp = icmp eq %struct.demangle_component* %call, null, !dbg !3916
  br i1 %cmp, label %if.end, label %if.then, !dbg !3918

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 0, !dbg !3919
  store i32 5, i32* %type, align 8, !dbg !3921
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, !dbg !3922
  %number = bitcast %union.anon* %u to i64*, !dbg !3923
  store i64 %i, i64* %number, align 8, !dbg !3924
  br label %if.end, !dbg !3925

if.end:                                           ; preds = %entry, %if.then
  ret %struct.demangle_component* %call, !dbg !3926
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_template_arg(%struct.d_info* %di) unnamed_addr #5 !dbg !3927 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3929, metadata !DIExpression()), !dbg !3931
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3932
  %0 = load i8*, i8** %n, align 8, !dbg !3932
  %1 = load i8, i8* %0, align 1, !dbg !3932
  %conv = sext i8 %1 to i32, !dbg !3932
  switch i32 %conv, label %sw.default [
    i32 88, label %sw.bb
    i32 76, label %sw.bb6
    i32 73, label %sw.bb8
  ], !dbg !3933

sw.bb:                                            ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3934
  store i8* %add.ptr, i8** %n, align 8, !dbg !3934
  %call = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !3936
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3930, metadata !DIExpression()), !dbg !3931
  %2 = load i8*, i8** %n, align 8, !dbg !3937
  %3 = load i8, i8* %2, align 1, !dbg !3937
  %cmp = icmp eq i8 %3, 69, !dbg !3937
  br i1 %cmp, label %cond.true, label %cleanup, !dbg !3939

cond.true:                                        ; preds = %sw.bb
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3937
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !3937
  br label %cleanup, !dbg !3940

sw.bb6:                                           ; preds = %entry
  %call7 = tail call fastcc %struct.demangle_component* @d_expr_primary(%struct.d_info* %di) #8, !dbg !3941
  br label %cleanup, !dbg !3942

sw.bb8:                                           ; preds = %entry
  %call9 = tail call fastcc %struct.demangle_component* @d_template_args(%struct.d_info* %di) #8, !dbg !3943
  br label %cleanup, !dbg !3944

sw.default:                                       ; preds = %entry
  %call10 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !3945
  br label %cleanup, !dbg !3946

cleanup:                                          ; preds = %sw.bb, %sw.default, %sw.bb8, %sw.bb6, %cond.true
  %retval.0 = phi %struct.demangle_component* [ %call10, %sw.default ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call, %cond.true ], [ null, %sw.bb ], !dbg !3947
  ret %struct.demangle_component* %retval.0, !dbg !3948
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_expr_primary(%struct.d_info* %di) unnamed_addr #5 !dbg !3949 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !3951, metadata !DIExpression()), !dbg !3958
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !3959
  %0 = load i8*, i8** %n, align 8, !dbg !3959
  %1 = load i8, i8* %0, align 1, !dbg !3959
  %cmp = icmp eq i8 %1, 76, !dbg !3959
  br i1 %cmp, label %cond.true, label %cleanup65, !dbg !3961

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3959
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !3959
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !3962
  %cmp5 = icmp eq i8 %2, 95, !dbg !3963
  br i1 %cmp5, label %if.then11, label %lor.lhs.false, !dbg !3964

lor.lhs.false:                                    ; preds = %cond.true
  %cmp9 = icmp eq i8 %2, 90, !dbg !3965
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !3966

if.then11:                                        ; preds = %lor.lhs.false, %cond.true
  %call = tail call %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info* %di, i32 0) #8, !dbg !3967
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !3952, metadata !DIExpression()), !dbg !3958
  br label %if.end54, !dbg !3968

if.else:                                          ; preds = %lor.lhs.false
  %call12 = tail call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %di) #8, !dbg !3969
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call12, metadata !3953, metadata !DIExpression()), !dbg !3970
  %cmp13 = icmp eq %struct.demangle_component* %call12, null, !dbg !3971
  br i1 %cmp13, label %cleanup, label %if.end16, !dbg !3973

if.end16:                                         ; preds = %if.else
  %type17 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call12, i64 0, i32 0, !dbg !3974
  %3 = load i32, i32* %type17, align 8, !dbg !3974
  %cmp18 = icmp eq i32 %3, 35, !dbg !3976
  br i1 %cmp18, label %land.lhs.true, label %if.end27, !dbg !3977

land.lhs.true:                                    ; preds = %if.end16
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call12, i64 0, i32 1, !dbg !3978
  %type20 = bitcast %union.anon* %u to %struct.demangle_builtin_type_info**, !dbg !3979
  %4 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %type20, align 8, !dbg !3979
  %print = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %4, i64 0, i32 4, !dbg !3980
  %5 = load i32, i32* %print, align 4, !dbg !3980
  %cmp21 = icmp eq i32 %5, 0, !dbg !3981
  br i1 %cmp21, label %if.end27, label %if.then23, !dbg !3982

if.then23:                                        ; preds = %land.lhs.true
  %len = getelementptr inbounds %struct.demangle_builtin_type_info, %struct.demangle_builtin_type_info* %4, i64 0, i32 1, !dbg !3983
  %6 = load i32, i32* %len, align 8, !dbg !3983
  %expansion = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 12, !dbg !3984
  %7 = load i32, i32* %expansion, align 8, !dbg !3985
  %sub = sub nsw i32 %7, %6, !dbg !3985
  store i32 %sub, i32* %expansion, align 8, !dbg !3985
  br label %if.end27, !dbg !3986

if.end27:                                         ; preds = %land.lhs.true, %if.then23, %if.end16
  call void @llvm.dbg.value(metadata i32 53, metadata !3956, metadata !DIExpression()), !dbg !3970
  %8 = load i8*, i8** %n, align 8, !dbg !3987
  %9 = load i8, i8* %8, align 1, !dbg !3987
  %cmp30 = icmp eq i8 %9, 110, !dbg !3989
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !3990

if.then32:                                        ; preds = %if.end27
  call void @llvm.dbg.value(metadata i32 54, metadata !3956, metadata !DIExpression()), !dbg !3970
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1, !dbg !3991
  store i8* %add.ptr, i8** %n, align 8, !dbg !3991
  br label %if.end34, !dbg !3993

if.end34:                                         ; preds = %if.then32, %if.end27
  %10 = phi i8* [ %add.ptr, %if.then32 ], [ %8, %if.end27 ], !dbg !3994
  %t.0 = phi i32 [ 54, %if.then32 ], [ 53, %if.end27 ], !dbg !3970
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !3956, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %10, metadata !3957, metadata !DIExpression()), !dbg !3970
  br label %while.cond, !dbg !3995

while.cond:                                       ; preds = %if.end45, %if.end34
  %11 = phi i8* [ %add.ptr47, %if.end45 ], [ %10, %if.end34 ], !dbg !3996
  %12 = load i8, i8* %11, align 1, !dbg !3996
  %cmp38 = icmp eq i8 %12, 69, !dbg !3997
  br i1 %cmp38, label %while.end, label %while.body, !dbg !3995

while.body:                                       ; preds = %while.cond
  %cmp42 = icmp eq i8 %12, 0, !dbg !3998
  br i1 %cmp42, label %cleanup.loopexit, label %if.end45, !dbg !4001

if.end45:                                         ; preds = %while.body
  %add.ptr47 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !4002
  store i8* %add.ptr47, i8** %n, align 8, !dbg !4002
  br label %while.cond, !dbg !3995, !llvm.loop !4003

while.end:                                        ; preds = %while.cond
  %.lcssa = phi i8* [ %11, %while.cond ], !dbg !3996
  %sub.ptr.lhs.cast = ptrtoint i8* %.lcssa to i64, !dbg !4005
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64, !dbg !4005
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4005
  %conv49 = trunc i64 %sub.ptr.sub to i32, !dbg !4006
  %call50 = tail call fastcc %struct.demangle_component* @d_make_name(%struct.d_info* %di, i8* %10, i32 %conv49) #8, !dbg !4007
  %call51 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 %t.0, %struct.demangle_component* nonnull %call12, %struct.demangle_component* %call50) #8, !dbg !4008
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call51, metadata !3952, metadata !DIExpression()), !dbg !3958
  br label %cleanup, !dbg !4009

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.else, %while.end
  %cleanup.dest.slot.0 = phi i1 [ true, %while.end ], [ false, %if.else ], [ false, %cleanup.loopexit ]
  %ret.0 = phi %struct.demangle_component* [ %call51, %while.end ], [ undef, %if.else ], [ undef, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %ret.0, metadata !3952, metadata !DIExpression()), !dbg !3958
  br i1 %cleanup.dest.slot.0, label %if.end54, label %cleanup65

if.end54:                                         ; preds = %cleanup, %if.then11
  %ret.1 = phi %struct.demangle_component* [ %call, %if.then11 ], [ %ret.0, %cleanup ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %ret.1, metadata !3952, metadata !DIExpression()), !dbg !3958
  %13 = load i8*, i8** %n, align 8, !dbg !4010
  %14 = load i8, i8* %13, align 1, !dbg !4010
  %cmp57 = icmp eq i8 %14, 69, !dbg !4010
  br i1 %cmp57, label %cond.true59, label %cleanup65, !dbg !4012

cond.true59:                                      ; preds = %if.end54
  %incdec.ptr61 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !4010
  store i8* %incdec.ptr61, i8** %n, align 8, !dbg !4010
  br label %cleanup65, !dbg !4013

cleanup65:                                        ; preds = %if.end54, %entry, %cleanup, %cond.true59
  %retval.1 = phi %struct.demangle_component* [ %ret.1, %cond.true59 ], [ null, %cleanup ], [ null, %entry ], [ null, %if.end54 ], !dbg !3958
  ret %struct.demangle_component* %retval.1, !dbg !4014
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_function_param(%struct.d_info* %di, i64 %i) unnamed_addr #5 !dbg !4015 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !4017, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %i, metadata !4018, metadata !DIExpression()), !dbg !4020
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !4021
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !4019, metadata !DIExpression()), !dbg !4020
  %cmp = icmp eq %struct.demangle_component* %call, null, !dbg !4022
  br i1 %cmp, label %if.end, label %if.then, !dbg !4024

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 0, !dbg !4025
  store i32 6, i32* %type, align 8, !dbg !4027
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, !dbg !4028
  %number = bitcast %union.anon* %u to i64*, !dbg !4029
  store i64 %i, i64* %number, align 8, !dbg !4030
  br label %if.end, !dbg !4031

if.end:                                           ; preds = %entry, %if.then
  ret %struct.demangle_component* %call, !dbg !4032
}

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_exprlist(%struct.d_info* %di) unnamed_addr #5 !dbg !4033 {
entry:
  %list = alloca %struct.demangle_component*, align 8
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !4035, metadata !DIExpression()), !dbg !4040
  %0 = bitcast %struct.demangle_component** %list to i8*, !dbg !4041
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !4041
  call void @llvm.dbg.value(metadata %struct.demangle_component* null, metadata !4036, metadata !DIExpression()), !dbg !4040
  store %struct.demangle_component* null, %struct.demangle_component** %list, align 8, !dbg !4042
  call void @llvm.dbg.value(metadata %struct.demangle_component** %list, metadata !4037, metadata !DIExpression()), !dbg !4040
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !4043
  %1 = load i8*, i8** %n, align 8, !dbg !4043
  %2 = load i8, i8* %1, align 1, !dbg !4043
  %cmp = icmp eq i8 %2, 69, !dbg !4045
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !4046

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !4047

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4048
  store i8* %add.ptr, i8** %n, align 8, !dbg !4048
  %call = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 42, %struct.demangle_component* null, %struct.demangle_component* null) #8, !dbg !4050
  br label %cleanup21, !dbg !4051

while.cond:                                       ; preds = %while.cond.preheader, %cleanup
  %p.0 = phi %struct.demangle_component** [ %p.1, %cleanup ], [ %list, %while.cond.preheader ], !dbg !4052
  call void @llvm.dbg.value(metadata %struct.demangle_component** %p.0, metadata !4037, metadata !DIExpression()), !dbg !4040
  %call3 = tail call fastcc %struct.demangle_component* @d_expression(%struct.d_info* %di) #8, !dbg !4053
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call3, metadata !4038, metadata !DIExpression()), !dbg !4054
  %cmp4 = icmp eq %struct.demangle_component* %call3, null, !dbg !4055
  br i1 %cmp4, label %cleanup, label %if.end7, !dbg !4057

if.end7:                                          ; preds = %while.cond
  %call8 = tail call fastcc %struct.demangle_component* @d_make_comp(%struct.d_info* %di, i32 42, %struct.demangle_component* nonnull %call3, %struct.demangle_component* null) #8, !dbg !4058
  store %struct.demangle_component* %call8, %struct.demangle_component** %p.0, align 8, !dbg !4059
  %cmp9 = icmp eq %struct.demangle_component* %call8, null, !dbg !4060
  br i1 %cmp9, label %cleanup, label %if.end12, !dbg !4062

if.end12:                                         ; preds = %if.end7
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call8, i64 0, i32 1, i32 0, i32 1, !dbg !4063
  %3 = bitcast i32* %right to %struct.demangle_component**, !dbg !4063
  call void @llvm.dbg.value(metadata %struct.demangle_component** %3, metadata !4037, metadata !DIExpression()), !dbg !4040
  %4 = load i8*, i8** %n, align 8, !dbg !4064
  %5 = load i8, i8* %4, align 1, !dbg !4064
  %cmp15 = icmp eq i8 %5, 69, !dbg !4066
  br i1 %cmp15, label %if.then17, label %cleanup, !dbg !4067

if.then17:                                        ; preds = %if.end12
  %add.ptr19 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !4068
  store i8* %add.ptr19, i8** %n, align 8, !dbg !4068
  br label %cleanup, !dbg !4070

cleanup:                                          ; preds = %if.end12, %if.end7, %while.cond, %if.then17
  %p.1 = phi %struct.demangle_component** [ %3, %if.then17 ], [ %p.0, %while.cond ], [ %p.0, %if.end7 ], [ %3, %if.end12 ], !dbg !4040
  %cleanup.dest.slot.0 = phi i32 [ 3, %if.then17 ], [ 1, %while.cond ], [ 1, %if.end7 ], [ 0, %if.end12 ]
  call void @llvm.dbg.value(metadata %struct.demangle_component** %p.1, metadata !4037, metadata !DIExpression()), !dbg !4040
  switch i32 %cleanup.dest.slot.0, label %cleanup21.loopexit [
    i32 0, label %while.cond
    i32 3, label %while.end
  ], !llvm.loop !4071

while.end:                                        ; preds = %cleanup
  %6 = load %struct.demangle_component*, %struct.demangle_component** %list, align 8, !dbg !4073
  call void @llvm.dbg.value(metadata %struct.demangle_component* %6, metadata !4036, metadata !DIExpression()), !dbg !4040
  br label %cleanup21, !dbg !4074

cleanup21.loopexit:                               ; preds = %cleanup
  br label %cleanup21, !dbg !4075

cleanup21:                                        ; preds = %cleanup21.loopexit, %while.end, %if.then
  %retval.2 = phi %struct.demangle_component* [ %call, %if.then ], [ %6, %while.end ], [ null, %cleanup21.loopexit ], !dbg !4040
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !4075
  ret %struct.demangle_component* %retval.2, !dbg !4075
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_make_sub(%struct.d_info* %di, i8* %name, i32 %len) unnamed_addr #5 !dbg !4076 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !4078, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8* %name, metadata !4079, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i32 %len, metadata !4080, metadata !DIExpression()), !dbg !4082
  %call = tail call fastcc %struct.demangle_component* @d_make_empty(%struct.d_info* %di) #8, !dbg !4083
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !4081, metadata !DIExpression()), !dbg !4082
  %cmp = icmp eq %struct.demangle_component* %call, null, !dbg !4084
  br i1 %cmp, label %if.end, label %if.then, !dbg !4086

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 0, !dbg !4087
  store i32 22, i32* %type, align 8, !dbg !4089
  %string = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, i32 0, i32 0, !dbg !4090
  store i8* %name, i8** %string, align 8, !dbg !4091
  %0 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 1, i32 0, i32 1, !dbg !4092
  store i32 %len, i32* %0, align 8, !dbg !4093
  br label %if.end, !dbg !4094

if.end:                                           ; preds = %entry, %if.then
  ret %struct.demangle_component* %call, !dbg !4095
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @d_growable_string_resize(%struct.d_growable_string* %dgs, i64 %need) unnamed_addr #0 !dbg !4096 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_growable_string* %dgs, metadata !4098, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 %need, metadata !4099, metadata !DIExpression()), !dbg !4102
  %allocation_failure = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 3, !dbg !4103
  %0 = load i32, i32* %allocation_failure, align 8, !dbg !4103
  %tobool = icmp eq i32 %0, 0, !dbg !4105
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !4106

if.end:                                           ; preds = %entry
  %alc = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 2, !dbg !4107
  %1 = load i64, i64* %alc, align 8, !dbg !4107
  %cmp = icmp eq i64 %1, 0, !dbg !4108
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4109

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !4109

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 2, %if.end ], !dbg !4109
  call void @llvm.dbg.value(metadata i64 %cond, metadata !4100, metadata !DIExpression()), !dbg !4102
  br label %while.cond, !dbg !4110

while.cond:                                       ; preds = %while.body, %cond.end
  %newalc.0 = phi i64 [ %cond, %cond.end ], [ %shl, %while.body ], !dbg !4102
  call void @llvm.dbg.value(metadata i64 %newalc.0, metadata !4100, metadata !DIExpression()), !dbg !4102
  %cmp2 = icmp ult i64 %newalc.0, %need, !dbg !4111
  br i1 %cmp2, label %while.body, label %while.end, !dbg !4110

while.body:                                       ; preds = %while.cond
  %shl = shl i64 %newalc.0, 1, !dbg !4112
  call void @llvm.dbg.value(metadata i64 %shl, metadata !4100, metadata !DIExpression()), !dbg !4102
  br label %while.cond, !dbg !4110, !llvm.loop !4113

while.end:                                        ; preds = %while.cond
  %newalc.0.lcssa = phi i64 [ %newalc.0, %while.cond ], !dbg !4102
  call void @llvm.dbg.value(metadata i64 %newalc.0.lcssa, metadata !4100, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 %newalc.0.lcssa, metadata !4100, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 %newalc.0.lcssa, metadata !4100, metadata !DIExpression()), !dbg !4102
  %buf = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 0, !dbg !4115
  %2 = load i8*, i8** %buf, align 8, !dbg !4115
  %call = tail call i8* @realloc(i8* %2, i64 %newalc.0.lcssa) #7, !dbg !4116
  call void @llvm.dbg.value(metadata i8* %call, metadata !4101, metadata !DIExpression()), !dbg !4102
  %cmp3 = icmp eq i8* %call, null, !dbg !4117
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !4119

if.then4:                                         ; preds = %while.end
  %3 = load i8*, i8** %buf, align 8, !dbg !4120
  tail call void @free(i8* %3) #7, !dbg !4122
  store i8* null, i8** %buf, align 8, !dbg !4123
  %len = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 1, !dbg !4124
  store i64 0, i64* %len, align 8, !dbg !4125
  store i64 0, i64* %alc, align 8, !dbg !4126
  store i32 1, i32* %allocation_failure, align 8, !dbg !4127
  br label %cleanup.cont, !dbg !4128

if.end9:                                          ; preds = %while.end
  store i8* %call, i8** %buf, align 8, !dbg !4129
  store i64 %newalc.0.lcssa, i64* %alc, align 8, !dbg !4130
  br label %cleanup.cont, !dbg !4131

cleanup.cont:                                     ; preds = %entry, %if.then4, %if.end9
  ret void, !dbg !4131
}

declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @d_growable_string_append_buffer(%struct.d_growable_string* %dgs, i8* %s, i64 %l) unnamed_addr #0 !dbg !4132 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_growable_string* %dgs, metadata !4136, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i8* %s, metadata !4137, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %l, metadata !4138, metadata !DIExpression()), !dbg !4140
  %len = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 1, !dbg !4141
  %0 = load i64, i64* %len, align 8, !dbg !4141
  %add = add i64 %0, %l, !dbg !4142
  %add1 = add i64 %add, 1, !dbg !4143
  call void @llvm.dbg.value(metadata i64 %add1, metadata !4139, metadata !DIExpression()), !dbg !4140
  %alc = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 2, !dbg !4144
  %1 = load i64, i64* %alc, align 8, !dbg !4144
  %cmp = icmp ugt i64 %add1, %1, !dbg !4146
  br i1 %cmp, label %if.then, label %if.end, !dbg !4147

if.then:                                          ; preds = %entry
  tail call fastcc void @d_growable_string_resize(%struct.d_growable_string* %dgs, i64 %add1) #8, !dbg !4148
  br label %if.end, !dbg !4148

if.end:                                           ; preds = %if.then, %entry
  %allocation_failure = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 3, !dbg !4149
  %2 = load i32, i32* %allocation_failure, align 8, !dbg !4149
  %tobool = icmp eq i32 %2, 0, !dbg !4151
  br i1 %tobool, label %if.end3, label %cleanup.cont, !dbg !4152

if.end3:                                          ; preds = %if.end
  %buf = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %dgs, i64 0, i32 0, !dbg !4153
  %3 = load i8*, i8** %buf, align 8, !dbg !4153
  %4 = load i64, i64* %len, align 8, !dbg !4154
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !4155
  %call = tail call i8* @memcpy(i8* %add.ptr, i8* %s, i64 %l) #7, !dbg !4156
  %5 = load i8*, i8** %buf, align 8, !dbg !4157
  %6 = load i64, i64* %len, align 8, !dbg !4158
  %add7 = add i64 %6, %l, !dbg !4159
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %add7, !dbg !4160
  store i8 0, i8* %arrayidx, align 1, !dbg !4161
  %7 = load i64, i64* %len, align 8, !dbg !4162
  %add9 = add i64 %7, %l, !dbg !4162
  store i64 %add9, i64* %len, align 8, !dbg !4162
  br label %cleanup.cont, !dbg !4163

cleanup.cont:                                     ; preds = %if.end, %if.end3
  ret void, !dbg !4163
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @d_print_error(%struct.d_print_info* %dpi) unnamed_addr #0 !dbg !4164 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4166, metadata !DIExpression()), !dbg !4167
  %demangle_failure = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 8, !dbg !4168
  store i32 1, i32* %demangle_failure, align 8, !dbg !4169
  ret void, !dbg !4170
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @d_append_buffer(%struct.d_print_info* %dpi, i8* %s, i64 %l) unnamed_addr #0 !dbg !4171 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4175, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i8* %s, metadata !4176, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 %l, metadata !4177, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 0, metadata !4178, metadata !DIExpression()), !dbg !4179
  br label %for.cond, !dbg !4180

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !4182
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !4178, metadata !DIExpression()), !dbg !4179
  %exitcond = icmp eq i64 %i.0, %l, !dbg !4183
  br i1 %exitcond, label %for.end, label %for.body, !dbg !4185

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %s, i64 %i.0, !dbg !4186
  %0 = load i8, i8* %arrayidx, align 1, !dbg !4186
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext %0) #8, !dbg !4187
  %inc = add i64 %i.0, 1, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4178, metadata !DIExpression()), !dbg !4179
  br label %for.cond, !dbg !4189, !llvm.loop !4190

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4192
}

; Function Attrs: nounwind uwtable
define internal fastcc void @d_print_java_identifier(%struct.d_print_info* %dpi, i8* %name, i32 %len) unnamed_addr #5 !dbg !4193 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4197, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i8* %name, metadata !4198, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i32 %len, metadata !4199, metadata !DIExpression()), !dbg !4213
  %idx.ext = sext i32 %len to i64, !dbg !4214
  %add.ptr = getelementptr inbounds i8, i8* %name, i64 %idx.ext, !dbg !4214
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !4201, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i8* %name, metadata !4200, metadata !DIExpression()), !dbg !4213
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64, !dbg !4215
  br label %for.cond, !dbg !4216

for.cond:                                         ; preds = %for.inc72, %entry
  %p.0 = phi i8* [ %name, %entry ], [ %incdec.ptr73, %for.inc72 ], !dbg !4217
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !4200, metadata !DIExpression()), !dbg !4213
  %cmp = icmp ult i8* %p.0, %add.ptr, !dbg !4218
  br i1 %cmp, label %for.body, label %for.end74, !dbg !4219

for.body:                                         ; preds = %for.cond
  %sub.ptr.rhs.cast = ptrtoint i8* %p.0 to i64, !dbg !4220
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4220
  %cmp1 = icmp sgt i64 %sub.ptr.sub, 3, !dbg !4221
  br i1 %cmp1, label %land.lhs.true, label %if.end71, !dbg !4222

land.lhs.true:                                    ; preds = %for.body
  %0 = load i8, i8* %p.0, align 1, !dbg !4223
  %cmp2 = icmp eq i8 %0, 95, !dbg !4224
  br i1 %cmp2, label %land.lhs.true4, label %if.end71, !dbg !4225

land.lhs.true4:                                   ; preds = %land.lhs.true
  %arrayidx5 = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !4226
  %1 = load i8, i8* %arrayidx5, align 1, !dbg !4226
  %cmp7 = icmp eq i8 %1, 95, !dbg !4227
  br i1 %cmp7, label %land.lhs.true9, label %if.end71, !dbg !4228

land.lhs.true9:                                   ; preds = %land.lhs.true4
  %arrayidx10 = getelementptr inbounds i8, i8* %p.0, i64 2, !dbg !4229
  %2 = load i8, i8* %arrayidx10, align 1, !dbg !4229
  %cmp12 = icmp eq i8 %2, 85, !dbg !4230
  br i1 %cmp12, label %if.then, label %if.end71, !dbg !4231

if.then:                                          ; preds = %land.lhs.true9
  call void @llvm.dbg.value(metadata i64 0, metadata !4202, metadata !DIExpression()), !dbg !4232
  %add.ptr14 = getelementptr inbounds i8, i8* %p.0, i64 3, !dbg !4233
  call void @llvm.dbg.value(metadata i8* %add.ptr14, metadata !4208, metadata !DIExpression()), !dbg !4232
  br label %for.cond15, !dbg !4234

for.cond15:                                       ; preds = %for.inc, %if.then
  %c.0 = phi i64 [ 0, %if.then ], [ %c.1, %for.inc ], !dbg !4232
  %q.0 = phi i8* [ %add.ptr14, %if.then ], [ %incdec.ptr, %for.inc ], !dbg !4235
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !4208, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 %c.0, metadata !4202, metadata !DIExpression()), !dbg !4232
  %cmp16 = icmp ult i8* %q.0, %add.ptr, !dbg !4236
  br i1 %cmp16, label %for.body18, label %for.end, !dbg !4237

for.body18:                                       ; preds = %for.cond15
  %3 = load i8, i8* %q.0, align 1, !dbg !4238
  %cmp20 = icmp sgt i8 %3, 47, !dbg !4238
  br i1 %cmp20, label %land.lhs.true22, label %if.else, !dbg !4238

land.lhs.true22:                                  ; preds = %for.body18
  %cmp24 = icmp slt i8 %3, 58, !dbg !4238
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !4240

if.then26:                                        ; preds = %land.lhs.true22
  %conv27 = sext i8 %3 to i64, !dbg !4241
  %sub = add nsw i64 %conv27, -48, !dbg !4242
  br label %if.end52, !dbg !4243

if.else:                                          ; preds = %land.lhs.true22, %for.body18
  %cmp29 = icmp sgt i8 %3, 64, !dbg !4244
  br i1 %cmp29, label %land.lhs.true31, label %if.else38, !dbg !4246

land.lhs.true31:                                  ; preds = %if.else
  %cmp33 = icmp slt i8 %3, 71, !dbg !4247
  br i1 %cmp33, label %if.then35, label %if.else38, !dbg !4248

if.then35:                                        ; preds = %land.lhs.true31
  %conv36 = sext i8 %3 to i64, !dbg !4249
  %add = add nsw i64 %conv36, -55, !dbg !4250
  br label %if.end52, !dbg !4251

if.else38:                                        ; preds = %land.lhs.true31, %if.else
  %cmp40 = icmp sgt i8 %3, 96, !dbg !4252
  br i1 %cmp40, label %land.lhs.true42, label %cleanup, !dbg !4254

land.lhs.true42:                                  ; preds = %if.else38
  %cmp44 = icmp slt i8 %3, 103, !dbg !4255
  br i1 %cmp44, label %if.then46, label %cleanup, !dbg !4256

if.then46:                                        ; preds = %land.lhs.true42
  %conv47 = sext i8 %3 to i64, !dbg !4257
  %add49 = add nsw i64 %conv47, -87, !dbg !4258
  br label %if.end52

if.end52:                                         ; preds = %if.then35, %if.then46, %if.then26
  %dig.1 = phi i64 [ %sub, %if.then26 ], [ %add, %if.then35 ], [ %add49, %if.then46 ], !dbg !4259
  %mul = shl i64 %c.0, 4, !dbg !4260
  %add54 = add i64 %mul, %dig.1, !dbg !4261
  call void @llvm.dbg.value(metadata i64 %add54, metadata !4202, metadata !DIExpression()), !dbg !4232
  br label %cleanup, !dbg !4262

cleanup:                                          ; preds = %if.else38, %land.lhs.true42, %if.end52
  %c.1 = phi i64 [ %add54, %if.end52 ], [ %c.0, %land.lhs.true42 ], [ %c.0, %if.else38 ], !dbg !4232
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end52 ], [ false, %land.lhs.true42 ], [ false, %if.else38 ]
  call void @llvm.dbg.value(metadata i64 %c.1, metadata !4202, metadata !DIExpression()), !dbg !4232
  br i1 %cleanup.dest.slot.0, label %for.inc, label %for.end

for.inc:                                          ; preds = %cleanup
  %incdec.ptr = getelementptr inbounds i8, i8* %q.0, i64 1, !dbg !4263
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !4208, metadata !DIExpression()), !dbg !4232
  br label %for.cond15, !dbg !4264, !llvm.loop !4265

for.end:                                          ; preds = %cleanup, %for.cond15
  %q.0.lcssa = phi i8* [ %q.0, %cleanup ], [ %q.0, %for.cond15 ], !dbg !4235
  %cmp16.lcssa = phi i1 [ %cmp16, %cleanup ], [ %cmp16, %for.cond15 ], !dbg !4236
  %c.2 = phi i64 [ %c.1, %cleanup ], [ %c.0, %for.cond15 ], !dbg !4232
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !4208, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !4208, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !4208, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !4208, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !4208, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !4208, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 %c.2, metadata !4202, metadata !DIExpression()), !dbg !4232
  br i1 %cmp16.lcssa, label %land.lhs.true57, label %cleanup67, !dbg !4267

land.lhs.true57:                                  ; preds = %for.end
  %4 = load i8, i8* %q.0.lcssa, align 1, !dbg !4269
  %cmp59 = icmp eq i8 %4, 95, !dbg !4270
  %cmp62 = icmp ult i64 %c.2, 256, !dbg !4271
  %or.cond = and i1 %cmp59, %cmp62, !dbg !4272
  br i1 %or.cond, label %if.then64, label %cleanup67, !dbg !4272

if.then64:                                        ; preds = %land.lhs.true57
  %conv65 = trunc i64 %c.2 to i8, !dbg !4273
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext %conv65) #8, !dbg !4275
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !4200, metadata !DIExpression()), !dbg !4213
  br label %cleanup67, !dbg !4276

cleanup67:                                        ; preds = %for.end, %land.lhs.true57, %if.then64
  %p.1 = phi i8* [ %q.0.lcssa, %if.then64 ], [ %p.0, %land.lhs.true57 ], [ %p.0, %for.end ], !dbg !4217
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then64 ], [ true, %land.lhs.true57 ], [ true, %for.end ]
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !4200, metadata !DIExpression()), !dbg !4213
  br i1 %cleanup.dest.slot.1, label %if.end71, label %for.inc72

if.end71:                                         ; preds = %cleanup67, %land.lhs.true9, %land.lhs.true4, %land.lhs.true, %for.body
  %p.2 = phi i8* [ %p.0, %land.lhs.true9 ], [ %p.0, %land.lhs.true4 ], [ %p.0, %land.lhs.true ], [ %p.0, %for.body ], [ %p.1, %cleanup67 ], !dbg !4217
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !4200, metadata !DIExpression()), !dbg !4213
  %5 = load i8, i8* %p.2, align 1, !dbg !4277
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext %5) #8, !dbg !4278
  br label %for.inc72, !dbg !4279

for.inc72:                                        ; preds = %cleanup67, %if.end71
  %p.3 = phi i8* [ %p.1, %cleanup67 ], [ %p.2, %if.end71 ], !dbg !4280
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !4200, metadata !DIExpression()), !dbg !4213
  %incdec.ptr73 = getelementptr inbounds i8, i8* %p.3, i64 1, !dbg !4281
  call void @llvm.dbg.value(metadata i8* %incdec.ptr73, metadata !4200, metadata !DIExpression()), !dbg !4213
  br label %for.cond, !dbg !4282, !llvm.loop !4283

for.end74:                                        ; preds = %for.cond
  ret void, !dbg !4285
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* %s) unnamed_addr #0 !dbg !4286 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4290, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i8* %s, metadata !4291, metadata !DIExpression()), !dbg !4292
  %call = tail call i64 @strlen(i8* %s) #7, !dbg !4293
  tail call fastcc void @d_append_buffer(%struct.d_print_info* %dpi, i8* %s, i64 %call) #8, !dbg !4294
  ret void, !dbg !4295
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext %c) unnamed_addr #0 !dbg !4296 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4300, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i8 %c, metadata !4301, metadata !DIExpression()), !dbg !4302
  %len = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 2, !dbg !4303
  %0 = load i64, i64* %len, align 8, !dbg !4303
  %cmp = icmp eq i64 %0, 255, !dbg !4305
  br i1 %cmp, label %if.then, label %if.end, !dbg !4306

if.then:                                          ; preds = %entry
  tail call fastcc void @d_print_flush(%struct.d_print_info* %dpi) #8, !dbg !4307
  %.pre = load i64, i64* %len, align 8, !dbg !4308
  br label %if.end, !dbg !4307

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i64 [ %.pre, %if.then ], [ %0, %entry ], !dbg !4308
  %inc = add i64 %1, 1, !dbg !4308
  store i64 %inc, i64* %len, align 8, !dbg !4308
  %arrayidx = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 1, i64 %1, !dbg !4309
  store i8 %c, i8* %arrayidx, align 1, !dbg !4310
  %last_char = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 3, !dbg !4311
  store i8 %c, i8* %last_char, align 8, !dbg !4312
  ret void, !dbg !4313
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @d_print_mod(%struct.d_print_info* %dpi, %struct.demangle_component* %mod) unnamed_addr #5 !dbg !4314 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4316, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata %struct.demangle_component* %mod, metadata !4317, metadata !DIExpression()), !dbg !4318
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %mod, i64 0, i32 0, !dbg !4319
  %0 = load i32, i32* %type, align 8, !dbg !4319
  switch i32 %0, label %sw.default [
    i32 23, label %sw.bb
    i32 26, label %sw.bb
    i32 24, label %sw.bb1
    i32 27, label %sw.bb1
    i32 25, label %sw.bb2
    i32 28, label %sw.bb2
    i32 29, label %sw.bb3
    i32 30, label %sw.bb4
    i32 31, label %sw.bb5
    i32 32, label %sw.bb6
    i32 33, label %sw.bb7
    i32 34, label %sw.bb8
    i32 39, label %sw.bb9
    i32 3, label %sw.bb16
    i32 41, label %sw.bb20
  ], !dbg !4320

sw.bb:                                            ; preds = %entry, %entry
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.183, i64 0, i64 0)) #8, !dbg !4321
  br label %return, !dbg !4323

sw.bb1:                                           ; preds = %entry, %entry
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.184, i64 0, i64 0)) #8, !dbg !4324
  br label %return, !dbg !4325

sw.bb2:                                           ; preds = %entry, %entry
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i64 0, i64 0)) #8, !dbg !4326
  br label %return, !dbg !4327

sw.bb3:                                           ; preds = %entry
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !4328
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %mod, i64 0, i32 1, i32 0, i32 1, !dbg !4329
  %1 = bitcast i32* %right to %struct.demangle_component**, !dbg !4329
  %2 = load %struct.demangle_component*, %struct.demangle_component** %1, align 8, !dbg !4329
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %2) #8, !dbg !4330
  br label %return, !dbg !4331

sw.bb4:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 0, !dbg !4332
  %3 = load i32, i32* %options, align 8, !dbg !4332
  %and = and i32 %3, 4, !dbg !4334
  %cmp = icmp eq i32 %and, 0, !dbg !4335
  br i1 %cmp, label %if.then, label %return, !dbg !4336

if.then:                                          ; preds = %sw.bb4
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 42) #8, !dbg !4337
  br label %return, !dbg !4337

sw.bb5:                                           ; preds = %entry
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 38) #8, !dbg !4338
  br label %return, !dbg !4339

sw.bb6:                                           ; preds = %entry
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !4340
  br label %return, !dbg !4341

sw.bb7:                                           ; preds = %entry
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i64 0, i64 0)) #8, !dbg !4342
  br label %return, !dbg !4343

sw.bb8:                                           ; preds = %entry
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i64 0, i64 0)) #8, !dbg !4344
  br label %return, !dbg !4345

sw.bb9:                                           ; preds = %entry
  %call = tail call fastcc signext i8 @d_last_char(%struct.d_print_info* %dpi) #8, !dbg !4346
  %cmp10 = icmp eq i8 %call, 40, !dbg !4348
  br i1 %cmp10, label %if.end13, label %if.then12, !dbg !4349

if.then12:                                        ; preds = %sw.bb9
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !4350
  br label %if.end13, !dbg !4350

if.end13:                                         ; preds = %sw.bb9, %if.then12
  %u14 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %mod, i64 0, i32 1, !dbg !4351
  %left = bitcast %union.anon* %u14 to %struct.demangle_component**, !dbg !4351
  %4 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !4351
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %4) #8, !dbg !4352
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.188, i64 0, i64 0)) #8, !dbg !4353
  br label %return, !dbg !4354

sw.bb16:                                          ; preds = %entry
  %u17 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %mod, i64 0, i32 1, !dbg !4355
  %left19 = bitcast %union.anon* %u17 to %struct.demangle_component**, !dbg !4355
  %5 = load %struct.demangle_component*, %struct.demangle_component** %left19, align 8, !dbg !4355
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %5) #8, !dbg !4356
  br label %return, !dbg !4357

sw.bb20:                                          ; preds = %entry
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.189, i64 0, i64 0)) #8, !dbg !4358
  %u21 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %mod, i64 0, i32 1, !dbg !4359
  %left23 = bitcast %union.anon* %u21 to %struct.demangle_component**, !dbg !4359
  %6 = load %struct.demangle_component*, %struct.demangle_component** %left23, align 8, !dbg !4359
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %6) #8, !dbg !4360
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 41) #8, !dbg !4361
  br label %return, !dbg !4362

sw.default:                                       ; preds = %entry
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %mod) #8, !dbg !4363
  br label %return, !dbg !4364

return:                                           ; preds = %sw.bb4, %if.then, %sw.default, %sw.bb20, %sw.bb16, %if.end13, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !4365
}

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc signext i8 @d_last_char(%struct.d_print_info* %dpi) unnamed_addr #0 !dbg !4366 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4370, metadata !DIExpression()), !dbg !4371
  %last_char = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 3, !dbg !4372
  %0 = load i8, i8* %last_char, align 8, !dbg !4372
  ret i8 %0, !dbg !4373
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_lookup_template_argument(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) unnamed_addr #5 !dbg !4374 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4378, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !4379, metadata !DIExpression()), !dbg !4380
  %templates = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 6, !dbg !4381
  %0 = load %struct.d_print_template*, %struct.d_print_template** %templates, align 8, !dbg !4381
  %cmp = icmp eq %struct.d_print_template* %0, null, !dbg !4383
  br i1 %cmp, label %if.then, label %if.end, !dbg !4384

if.then:                                          ; preds = %entry
  tail call fastcc void @d_print_error(%struct.d_print_info* %dpi) #8, !dbg !4385
  br label %return, !dbg !4387

if.end:                                           ; preds = %entry
  %template_decl = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %0, i64 0, i32 1, !dbg !4388
  %1 = load %struct.demangle_component*, %struct.demangle_component** %template_decl, align 8, !dbg !4388
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1, i64 0, i32 1, i32 0, i32 1, !dbg !4388
  %2 = bitcast i32* %right to %struct.demangle_component**, !dbg !4388
  %3 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8, !dbg !4388
  %u2 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !4389
  %number = bitcast %union.anon* %u2 to i64*, !dbg !4390
  %4 = load i64, i64* %number, align 8, !dbg !4390
  %conv = trunc i64 %4 to i32, !dbg !4391
  %call = tail call fastcc %struct.demangle_component* @d_index_template_argument(%struct.demangle_component* %3, i32 %conv) #8, !dbg !4392
  br label %return, !dbg !4393

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.demangle_component* [ null, %if.then ], [ %call, %if.end ], !dbg !4380
  ret %struct.demangle_component* %retval.0, !dbg !4394
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_index_template_argument(%struct.demangle_component* %args, i32 %i) unnamed_addr #5 !dbg !4395 {
entry:
  call void @llvm.dbg.value(metadata %struct.demangle_component* %args, metadata !4399, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i32 %i, metadata !4400, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata %struct.demangle_component* %args, metadata !4401, metadata !DIExpression()), !dbg !4402
  br label %for.cond, !dbg !4403

for.cond:                                         ; preds = %if.end4, %entry
  %a.0 = phi %struct.demangle_component* [ %args, %entry ], [ %2, %if.end4 ], !dbg !4405
  %i.addr.0 = phi i32 [ %i, %entry ], [ %dec, %if.end4 ]
  call void @llvm.dbg.value(metadata i32 %i.addr.0, metadata !4400, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata %struct.demangle_component* %a.0, metadata !4401, metadata !DIExpression()), !dbg !4402
  %cmp = icmp eq %struct.demangle_component* %a.0, null, !dbg !4406
  br i1 %cmp, label %for.end, label %for.body, !dbg !4408

for.body:                                         ; preds = %for.cond
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %a.0, i64 0, i32 0, !dbg !4409
  %0 = load i32, i32* %type, align 8, !dbg !4409
  %cmp1 = icmp eq i32 %0, 43, !dbg !4412
  br i1 %cmp1, label %if.end, label %cleanup.loopexit, !dbg !4413

if.end:                                           ; preds = %for.body
  %cmp2 = icmp slt i32 %i.addr.0, 1, !dbg !4414
  br i1 %cmp2, label %for.end, label %if.end4, !dbg !4416

if.end4:                                          ; preds = %if.end
  %dec = add nsw i32 %i.addr.0, -1, !dbg !4417
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4400, metadata !DIExpression()), !dbg !4402
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %a.0, i64 0, i32 1, i32 0, i32 1, !dbg !4418
  %1 = bitcast i32* %right to %struct.demangle_component**, !dbg !4418
  %2 = load %struct.demangle_component*, %struct.demangle_component** %1, align 8, !dbg !4418
  call void @llvm.dbg.value(metadata %struct.demangle_component* %2, metadata !4401, metadata !DIExpression()), !dbg !4402
  br label %for.cond, !dbg !4419, !llvm.loop !4420

for.end:                                          ; preds = %for.cond, %if.end
  %a.0.lcssa = phi %struct.demangle_component* [ %a.0, %for.cond ], [ %a.0, %if.end ], !dbg !4405
  %i.addr.0.lcssa = phi i32 [ %i.addr.0, %for.cond ], [ %i.addr.0, %if.end ]
  %cmp.lcssa = phi i1 [ %cmp, %for.cond ], [ %cmp, %if.end ], !dbg !4406
  call void @llvm.dbg.value(metadata %struct.demangle_component* %a.0.lcssa, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata %struct.demangle_component* %a.0.lcssa, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i32 %i.addr.0.lcssa, metadata !4400, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i32 %i.addr.0.lcssa, metadata !4400, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata %struct.demangle_component* %a.0.lcssa, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata %struct.demangle_component* %a.0.lcssa, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i32 %i.addr.0.lcssa, metadata !4400, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i32 %i.addr.0.lcssa, metadata !4400, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata %struct.demangle_component* %a.0.lcssa, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata %struct.demangle_component* %a.0.lcssa, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i32 %i.addr.0.lcssa, metadata !4400, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i32 %i.addr.0.lcssa, metadata !4400, metadata !DIExpression()), !dbg !4402
  %cmp5 = icmp ne i32 %i.addr.0.lcssa, 0, !dbg !4422
  %or.cond = or i1 %cmp5, %cmp.lcssa, !dbg !4424
  br i1 %or.cond, label %cleanup, label %if.end8, !dbg !4424

if.end8:                                          ; preds = %for.end
  %u9 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %a.0.lcssa, i64 0, i32 1, !dbg !4425
  %left = bitcast %union.anon* %u9 to %struct.demangle_component**, !dbg !4425
  %3 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !4425
  br label %cleanup, !dbg !4426

cleanup.loopexit:                                 ; preds = %for.body
  br label %cleanup, !dbg !4427

cleanup:                                          ; preds = %cleanup.loopexit, %for.end, %if.end8
  %retval.0 = phi %struct.demangle_component* [ %3, %if.end8 ], [ null, %for.end ], [ null, %cleanup.loopexit ], !dbg !4402
  ret %struct.demangle_component* %retval.0, !dbg !4427
}

; Function Attrs: nounwind uwtable
define internal fastcc void @d_print_function_type(%struct.d_print_info* %dpi, %struct.demangle_component* %dc, %struct.d_print_mod* %mods) unnamed_addr #5 !dbg !4428 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4432, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !4433, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods, metadata !4434, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 0, metadata !4435, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 0, metadata !4436, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 0, metadata !4437, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods, metadata !4438, metadata !DIExpression()), !dbg !4440
  br label %for.cond, !dbg !4441

for.cond:                                         ; preds = %for.inc, %entry
  %saw_mod.0 = phi i32 [ 0, %entry ], [ 1, %for.inc ], !dbg !4440
  %need_space.0 = phi i32 [ 0, %entry ], [ %need_space.1, %for.inc ], !dbg !4443
  %p.0 = phi %struct.d_print_mod* [ %mods, %entry ], [ %3, %for.inc ], !dbg !4444
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %p.0, metadata !4438, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 %need_space.0, metadata !4437, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 %saw_mod.0, metadata !4436, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 0, metadata !4435, metadata !DIExpression()), !dbg !4440
  %cmp = icmp eq %struct.d_print_mod* %p.0, null, !dbg !4445
  br i1 %cmp, label %for.end, label %for.body, !dbg !4447

for.body:                                         ; preds = %for.cond
  %printed = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %p.0, i64 0, i32 2, !dbg !4448
  %0 = load i32, i32* %printed, align 8, !dbg !4448
  %tobool = icmp eq i32 %0, 0, !dbg !4451
  br i1 %tobool, label %if.end, label %for.end, !dbg !4452

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, metadata !4436, metadata !DIExpression()), !dbg !4440
  %mod = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %p.0, i64 0, i32 1, !dbg !4453
  %1 = load %struct.demangle_component*, %struct.demangle_component** %mod, align 8, !dbg !4453
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1, i64 0, i32 0, !dbg !4454
  %2 = load i32, i32* %type, align 8, !dbg !4454
  switch i32 %2, label %sw.default [
    i32 30, label %sw.epilog
    i32 31, label %sw.epilog
    i32 32, label %sw.epilog
    i32 23, label %sw.bb1
    i32 24, label %sw.bb1
    i32 25, label %sw.bb1
    i32 29, label %sw.bb1
    i32 33, label %sw.bb1
    i32 34, label %sw.bb1
    i32 39, label %sw.bb1
    i32 26, label %sw.bb2
    i32 27, label %sw.bb2
    i32 28, label %sw.bb2
  ], !dbg !4455

sw.bb1:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !4437, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 1, metadata !4435, metadata !DIExpression()), !dbg !4440
  br label %sw.epilog, !dbg !4456

sw.bb2:                                           ; preds = %if.end, %if.end, %if.end
  br label %sw.epilog, !dbg !4458

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !4459

sw.epilog:                                        ; preds = %if.end, %if.end, %if.end, %sw.default, %sw.bb2, %sw.bb1
  %need_paren.1 = phi i32 [ 0, %sw.default ], [ 0, %sw.bb2 ], [ 1, %sw.bb1 ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], !dbg !4440
  %need_space.1 = phi i32 [ %need_space.0, %sw.default ], [ %need_space.0, %sw.bb2 ], [ 1, %sw.bb1 ], [ %need_space.0, %if.end ], [ %need_space.0, %if.end ], [ %need_space.0, %if.end ], !dbg !4440
  call void @llvm.dbg.value(metadata i32 %need_space.1, metadata !4437, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 %need_paren.1, metadata !4435, metadata !DIExpression()), !dbg !4440
  %tobool3 = icmp eq i32 %need_paren.1, 0, !dbg !4460
  br i1 %tobool3, label %for.inc, label %for.end, !dbg !4462

for.inc:                                          ; preds = %sw.epilog
  %next = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %p.0, i64 0, i32 0, !dbg !4463
  %3 = load %struct.d_print_mod*, %struct.d_print_mod** %next, align 8, !dbg !4463
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %3, metadata !4438, metadata !DIExpression()), !dbg !4440
  br label %for.cond, !dbg !4464, !llvm.loop !4465

for.end:                                          ; preds = %sw.epilog, %for.body, %for.cond
  %need_paren.2 = phi i32 [ 0, %for.cond ], [ 0, %for.body ], [ %need_paren.1, %sw.epilog ], !dbg !4467
  %saw_mod.1 = phi i32 [ %saw_mod.0, %for.cond ], [ %saw_mod.0, %for.body ], [ 1, %sw.epilog ], !dbg !4440
  %need_space.2 = phi i32 [ %need_space.0, %for.cond ], [ %need_space.0, %for.body ], [ %need_space.1, %sw.epilog ], !dbg !4443
  call void @llvm.dbg.value(metadata i32 %need_space.2, metadata !4437, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 %saw_mod.1, metadata !4436, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 %need_paren.2, metadata !4435, metadata !DIExpression()), !dbg !4440
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !4468
  %left = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !4468
  %4 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !4468
  %cmp6 = icmp eq %struct.demangle_component* %4, null, !dbg !4470
  %tobool7 = icmp ne i32 %saw_mod.1, 0, !dbg !4471
  %or.cond = or i1 %cmp6, %tobool7, !dbg !4472
  %tobool101 = icmp eq i32 %need_paren.2, 0, !dbg !4473
  %tobool10 = and i1 %or.cond, %tobool101, !dbg !4473
  br i1 %tobool10, label %if.end32, label %if.then11, !dbg !4475

if.then11:                                        ; preds = %for.end
  %tobool12 = icmp eq i32 %need_space.2, 0, !dbg !4476
  br i1 %tobool12, label %if.then13, label %if.end23, !dbg !4479

if.then13:                                        ; preds = %if.then11
  %call = tail call fastcc signext i8 @d_last_char(%struct.d_print_info* %dpi) #8, !dbg !4480
  %cmp14 = icmp eq i8 %call, 40, !dbg !4483
  br i1 %cmp14, label %if.end23, label %land.lhs.true16, !dbg !4484

land.lhs.true16:                                  ; preds = %if.then13
  %call17 = tail call fastcc signext i8 @d_last_char(%struct.d_print_info* %dpi) #8, !dbg !4485
  %cmp19 = icmp ne i8 %call17, 42, !dbg !4486
  %spec.select = zext i1 %cmp19 to i32, !dbg !4487
  br label %if.end23, !dbg !4487

if.end23:                                         ; preds = %if.then13, %if.then11, %land.lhs.true16
  %need_space.4 = phi i32 [ %need_space.2, %if.then11 ], [ 0, %if.then13 ], [ %spec.select, %land.lhs.true16 ], !dbg !4440
  call void @llvm.dbg.value(metadata i32 %need_space.4, metadata !4437, metadata !DIExpression()), !dbg !4440
  %tobool24 = icmp eq i32 %need_space.4, 0, !dbg !4488
  br i1 %tobool24, label %if.end31, label %land.lhs.true25, !dbg !4490

land.lhs.true25:                                  ; preds = %if.end23
  %call26 = tail call fastcc signext i8 @d_last_char(%struct.d_print_info* %dpi) #8, !dbg !4491
  %cmp28 = icmp eq i8 %call26, 32, !dbg !4492
  br i1 %cmp28, label %if.end31, label %if.then30, !dbg !4493

if.then30:                                        ; preds = %land.lhs.true25
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !4494
  br label %if.end31, !dbg !4494

if.end31:                                         ; preds = %land.lhs.true25, %if.end23, %if.then30
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 40) #8, !dbg !4495
  br label %if.end32, !dbg !4496

if.end32:                                         ; preds = %for.end, %if.end31
  %modifiers = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !4497
  %5 = bitcast %struct.d_print_mod** %modifiers to i64*, !dbg !4497
  %6 = load i64, i64* %5, align 8, !dbg !4497
  store %struct.d_print_mod* null, %struct.d_print_mod** %modifiers, align 8, !dbg !4498
  tail call fastcc void @d_print_mod_list(%struct.d_print_info* %dpi, %struct.d_print_mod* %mods, i32 0) #8, !dbg !4499
  br i1 %tobool10, label %if.end36, label %if.then35, !dbg !4500

if.then35:                                        ; preds = %if.end32
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 41) #8, !dbg !4501
  br label %if.end36, !dbg !4501

if.end36:                                         ; preds = %if.end32, %if.then35
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 40) #8, !dbg !4503
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, i32 0, i32 1, !dbg !4504
  %7 = bitcast i32* %right to %struct.demangle_component**, !dbg !4504
  %8 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8, !dbg !4504
  %cmp39 = icmp eq %struct.demangle_component* %8, null, !dbg !4506
  br i1 %cmp39, label %if.end45, label %if.then41, !dbg !4507

if.then41:                                        ; preds = %if.end36
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* nonnull %8) #8, !dbg !4508
  br label %if.end45, !dbg !4508

if.end45:                                         ; preds = %if.end36, %if.then41
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 41) #8, !dbg !4509
  tail call fastcc void @d_print_mod_list(%struct.d_print_info* %dpi, %struct.d_print_mod* %mods, i32 1) #8, !dbg !4510
  store i64 %6, i64* %5, align 8, !dbg !4511
  ret void, !dbg !4512
}

; Function Attrs: nounwind uwtable
define internal fastcc void @d_print_array_type(%struct.d_print_info* %dpi, %struct.demangle_component* %dc, %struct.d_print_mod* %mods) unnamed_addr #5 !dbg !4513 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4515, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !4516, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods, metadata !4517, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 1, metadata !4518, metadata !DIExpression()), !dbg !4523
  %cmp = icmp eq %struct.d_print_mod* %mods, null, !dbg !4524
  br i1 %cmp, label %if.end11, label %for.cond.preheader, !dbg !4525

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !4526

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %p.0 = phi %struct.d_print_mod* [ %3, %for.inc ], [ %mods, %for.cond.preheader ], !dbg !4528
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %p.0, metadata !4522, metadata !DIExpression()), !dbg !4529
  %cmp1 = icmp eq %struct.d_print_mod* %p.0, null, !dbg !4530
  br i1 %cmp1, label %for.end.loopexit, label %for.body, !dbg !4526

for.body:                                         ; preds = %for.cond
  %printed = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %p.0, i64 0, i32 2, !dbg !4532
  %0 = load i32, i32* %printed, align 8, !dbg !4532
  %tobool = icmp eq i32 %0, 0, !dbg !4535
  br i1 %tobool, label %if.then2, label %for.inc, !dbg !4536

if.then2:                                         ; preds = %for.body
  %p.0.lcssa4 = phi %struct.d_print_mod* [ %p.0, %for.body ], !dbg !4528
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %p.0.lcssa4, metadata !4522, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %p.0.lcssa4, metadata !4522, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %p.0.lcssa4, metadata !4522, metadata !DIExpression()), !dbg !4529
  %mod = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %p.0.lcssa4, i64 0, i32 1, !dbg !4537
  %1 = load %struct.demangle_component*, %struct.demangle_component** %mod, align 8, !dbg !4537
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1, i64 0, i32 0, !dbg !4540
  %2 = load i32, i32* %type, align 8, !dbg !4540
  %cmp3 = icmp ne i32 %2, 38, !dbg !4541
  %. = zext i1 %cmp3 to i32, !dbg !4542
  br label %for.end, !dbg !4542

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %p.0, i64 0, i32 0, !dbg !4543
  %3 = load %struct.d_print_mod*, %struct.d_print_mod** %next, align 8, !dbg !4543
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %3, metadata !4522, metadata !DIExpression()), !dbg !4529
  br label %for.cond, !dbg !4544, !llvm.loop !4545

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !4547

for.end:                                          ; preds = %for.end.loopexit, %if.then2
  %need_space.0 = phi i32 [ %., %if.then2 ], [ 1, %for.end.loopexit ], !dbg !4523
  %need_paren.0 = phi i1 [ %cmp3, %if.then2 ], [ false, %for.end.loopexit ]
  call void @llvm.dbg.value(metadata i32 %need_space.0, metadata !4518, metadata !DIExpression()), !dbg !4523
  br i1 %need_paren.0, label %if.then6, label %if.end7, !dbg !4547

if.then6:                                         ; preds = %for.end
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.192, i64 0, i64 0)) #8, !dbg !4548
  br label %if.end7, !dbg !4548

if.end7:                                          ; preds = %if.then6, %for.end
  tail call fastcc void @d_print_mod_list(%struct.d_print_info* %dpi, %struct.d_print_mod* nonnull %mods, i32 0) #8, !dbg !4550
  br i1 %need_paren.0, label %if.then9, label %if.end11, !dbg !4551

if.then9:                                         ; preds = %if.end7
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 41) #8, !dbg !4552
  br label %if.end11, !dbg !4552

if.end11:                                         ; preds = %entry, %if.end7, %if.then9
  %need_space.1 = phi i32 [ 1, %entry ], [ %need_space.0, %if.then9 ], [ %need_space.0, %if.end7 ], !dbg !4523
  call void @llvm.dbg.value(metadata i32 %need_space.1, metadata !4518, metadata !DIExpression()), !dbg !4523
  %tobool12 = icmp eq i32 %need_space.1, 0, !dbg !4554
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4556

if.then13:                                        ; preds = %if.end11
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !4557
  br label %if.end14, !dbg !4557

if.end14:                                         ; preds = %if.end11, %if.then13
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 91) #8, !dbg !4558
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !4559
  %left = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !4559
  %4 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !4559
  %cmp15 = icmp eq %struct.demangle_component* %4, null, !dbg !4561
  br i1 %cmp15, label %if.end20, label %if.then16, !dbg !4562

if.then16:                                        ; preds = %if.end14
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* nonnull %4) #8, !dbg !4563
  br label %if.end20, !dbg !4563

if.end20:                                         ; preds = %if.end14, %if.then16
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 93) #8, !dbg !4564
  ret void, !dbg !4565
}

; Function Attrs: nounwind uwtable
define internal fastcc void @d_print_cast(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) unnamed_addr #5 !dbg !4566 {
entry:
  %dpt = alloca %struct.d_print_template, align 8
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4568, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !4569, metadata !DIExpression()), !dbg !4574
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !4575
  %left = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !4575
  %0 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !4575
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %0, i64 0, i32 0, !dbg !4576
  %1 = load i32, i32* %type, align 8, !dbg !4576
  %cmp = icmp eq i32 %1, 4, !dbg !4577
  br i1 %cmp, label %if.else, label %if.then, !dbg !4578

if.then:                                          ; preds = %entry
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %0) #8, !dbg !4579
  br label %if.end32, !dbg !4579

if.else:                                          ; preds = %entry
  %2 = bitcast %struct.d_print_template* %dpt to i8*, !dbg !4580
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #6, !dbg !4580
  %modifiers = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !4581
  %3 = bitcast %struct.d_print_mod** %modifiers to i64*, !dbg !4581
  %4 = load i64, i64* %3, align 8, !dbg !4581
  store %struct.d_print_mod* null, %struct.d_print_mod** %modifiers, align 8, !dbg !4582
  %templates = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 6, !dbg !4583
  %5 = bitcast %struct.d_print_template** %templates to i64*, !dbg !4583
  %6 = load i64, i64* %5, align 8, !dbg !4583
  %7 = bitcast %struct.d_print_template* %dpt to i64*, !dbg !4584
  store i64 %6, i64* %7, align 8, !dbg !4584
  store %struct.d_print_template* %dpt, %struct.d_print_template** %templates, align 8, !dbg !4585
  %8 = bitcast %union.anon* %u to i64*, !dbg !4586
  %9 = load i64, i64* %8, align 8, !dbg !4586
  %template_decl = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %dpt, i64 0, i32 1, !dbg !4587
  %10 = bitcast %struct.demangle_component** %template_decl to i64*, !dbg !4588
  store i64 %9, i64* %10, align 8, !dbg !4588
  %.cast = inttoptr i64 %9 to %struct.demangle_component*, !dbg !4589
  %u12 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %.cast, i64 0, i32 1, !dbg !4589
  %left14 = bitcast %union.anon* %u12 to %struct.demangle_component**, !dbg !4589
  %11 = load %struct.demangle_component*, %struct.demangle_component** %left14, align 8, !dbg !4589
  call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %11) #8, !dbg !4590
  %12 = load i64, i64* %7, align 8, !dbg !4591
  store i64 %12, i64* %5, align 8, !dbg !4592
  %call = call fastcc signext i8 @d_last_char(%struct.d_print_info* %dpi) #8, !dbg !4593
  %cmp17 = icmp eq i8 %call, 60, !dbg !4595
  br i1 %cmp17, label %if.then19, label %if.end, !dbg !4596

if.then19:                                        ; preds = %if.else
  call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !4597
  br label %if.end, !dbg !4597

if.end:                                           ; preds = %if.then19, %if.else
  call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 60) #8, !dbg !4598
  %13 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !4599
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %13, i64 0, i32 1, i32 0, i32 1, !dbg !4599
  %14 = bitcast i32* %right to %struct.demangle_component**, !dbg !4599
  %15 = load %struct.demangle_component*, %struct.demangle_component** %14, align 8, !dbg !4599
  call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %15) #8, !dbg !4600
  %call25 = call fastcc signext i8 @d_last_char(%struct.d_print_info* %dpi) #8, !dbg !4601
  %cmp27 = icmp eq i8 %call25, 62, !dbg !4603
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !4604

if.then29:                                        ; preds = %if.end
  call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 32) #8, !dbg !4605
  br label %if.end30, !dbg !4605

if.end30:                                         ; preds = %if.then29, %if.end
  call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 62) #8, !dbg !4606
  store i64 %4, i64* %3, align 8, !dbg !4607
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6, !dbg !4608
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.then
  ret void, !dbg !4609
}

; Function Attrs: nounwind uwtable
define internal fastcc void @d_print_expr_op(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) unnamed_addr #5 !dbg !4610 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4612, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !4613, metadata !DIExpression()), !dbg !4614
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 0, !dbg !4615
  %0 = load i32, i32* %type, align 8, !dbg !4615
  %cmp = icmp eq i32 %0, 44, !dbg !4617
  br i1 %cmp, label %if.then, label %if.else, !dbg !4618

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 1, !dbg !4619
  %op = bitcast %union.anon* %u to %struct.demangle_operator_info**, !dbg !4620
  %1 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %op, align 8, !dbg !4620
  %name = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %1, i64 0, i32 1, !dbg !4621
  %2 = load i8*, i8** %name, align 8, !dbg !4621
  %len = getelementptr inbounds %struct.demangle_operator_info, %struct.demangle_operator_info* %1, i64 0, i32 2, !dbg !4622
  %3 = load i32, i32* %len, align 8, !dbg !4622
  %conv = sext i32 %3 to i64, !dbg !4623
  tail call fastcc void @d_append_buffer(%struct.d_print_info* %dpi, i8* %2, i64 %conv) #8, !dbg !4624
  br label %if.end, !dbg !4624

if.else:                                          ; preds = %entry
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) #8, !dbg !4625
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4626
}

; Function Attrs: nounwind uwtable
define internal fastcc void @d_print_subexpr(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) unnamed_addr #5 !dbg !4627 {
entry:
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4629, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !4630, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i32 0, metadata !4631, metadata !DIExpression()), !dbg !4632
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc, i64 0, i32 0, !dbg !4633
  %0 = load i32, i32* %type, align 8, !dbg !4633
  %cmp = icmp eq i32 %0, 0, !dbg !4635
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4636

lor.lhs.false:                                    ; preds = %entry
  %cmp2 = icmp eq i32 %0, 6, !dbg !4637
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4638

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !4631, metadata !DIExpression()), !dbg !4632
  br label %if.end, !dbg !4639

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %simple.0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false ]
  br i1 %simple.0, label %if.end4, label %if.then3, !dbg !4640

if.then3:                                         ; preds = %if.end
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 40) #8, !dbg !4641
  br label %if.end4, !dbg !4641

if.end4:                                          ; preds = %if.then3, %if.end
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) #8, !dbg !4643
  br i1 %simple.0, label %if.end7, label %if.then6, !dbg !4644

if.then6:                                         ; preds = %if.end4
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 41) #8, !dbg !4645
  br label %if.end7, !dbg !4645

if.end7:                                          ; preds = %if.then6, %if.end4
  ret void, !dbg !4647
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @d_append_num(%struct.d_print_info* %dpi, i64 %l) unnamed_addr #0 !dbg !4648 {
entry:
  %buf = alloca [25 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4652, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.value(metadata i64 %l, metadata !4653, metadata !DIExpression()), !dbg !4658
  %0 = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i64 0, i64 0, !dbg !4659
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %0) #6, !dbg !4659
  call void @llvm.dbg.declare(metadata [25 x i8]* %buf, metadata !4654, metadata !DIExpression()), !dbg !4660
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.193, i64 0, i64 0), i64 %l) #7, !dbg !4661
  call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* nonnull %0) #8, !dbg !4662
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %0) #6, !dbg !4663
  ret void, !dbg !4663
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.demangle_component* @d_find_pack(%struct.d_print_info* %dpi, %struct.demangle_component* %dc) unnamed_addr #5 !dbg !4664 {
entry:
  br label %tailrecurse, !dbg !4669

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %dc.tr = phi %struct.demangle_component* [ %dc, %entry ], [ %dc.tr.be, %tailrecurse.backedge ]
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4666, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.tr, metadata !4667, metadata !DIExpression()), !dbg !4671
  %cmp = icmp eq %struct.demangle_component* %dc.tr, null, !dbg !4672
  br i1 %cmp, label %cleanup.loopexit, label %if.end, !dbg !4674

if.end:                                           ; preds = %tailrecurse
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.tr, i64 0, i32 0, !dbg !4675
  %0 = load i32, i32* %type, align 8, !dbg !4675
  switch i32 %0, label %sw.default [
    i32 5, label %sw.bb
    i32 65, label %cleanup.loopexit
    i32 0, label %cleanup.loopexit
    i32 44, label %cleanup.loopexit
    i32 35, label %cleanup.loopexit
    i32 22, label %cleanup.loopexit
    i32 57, label %cleanup.loopexit
    i32 6, label %cleanup.loopexit
    i32 45, label %sw.bb7
    i32 7, label %sw.bb9
    i32 8, label %sw.bb13
  ], !dbg !4676

sw.bb:                                            ; preds = %if.end
  %dc.tr.lcssa3 = phi %struct.demangle_component* [ %dc.tr, %if.end ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.tr.lcssa3, metadata !4667, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.tr.lcssa3, metadata !4667, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.tr.lcssa3, metadata !4667, metadata !DIExpression()), !dbg !4671
  %call = tail call fastcc %struct.demangle_component* @d_lookup_template_argument(%struct.d_print_info* %dpi, %struct.demangle_component* nonnull %dc.tr.lcssa3) #8, !dbg !4677
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call, metadata !4668, metadata !DIExpression()), !dbg !4671
  %tobool = icmp eq %struct.demangle_component* %call, null, !dbg !4678
  br i1 %tobool, label %if.end4, label %land.lhs.true, !dbg !4680

land.lhs.true:                                    ; preds = %sw.bb
  %type1 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %call, i64 0, i32 0, !dbg !4681
  %1 = load i32, i32* %type1, align 8, !dbg !4681
  %cmp2 = icmp eq i32 %1, 43, !dbg !4682
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !4683

if.end4:                                          ; preds = %sw.bb, %land.lhs.true
  br label %cleanup, !dbg !4684

sw.bb7:                                           ; preds = %if.end
  br label %tailrecurse.backedge, !dbg !4669

tailrecurse.backedge:                             ; preds = %sw.bb7, %sw.bb9, %sw.bb13, %if.end21
  %dc.tr.be.in.in = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.tr, i64 0, i32 1, i32 0, i32 1, !dbg !4685
  %dc.tr.be.in = bitcast i32* %dc.tr.be.in.in to %struct.demangle_component**, !dbg !4685
  %dc.tr.be = load %struct.demangle_component*, %struct.demangle_component** %dc.tr.be.in, align 8, !dbg !4685
  br label %tailrecurse, !dbg !4671

sw.bb9:                                           ; preds = %if.end
  br label %tailrecurse.backedge, !dbg !4686

sw.bb13:                                          ; preds = %if.end
  br label %tailrecurse.backedge, !dbg !4687

sw.default:                                       ; preds = %if.end
  %u17 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.tr, i64 0, i32 1, !dbg !4688
  %left = bitcast %union.anon* %u17 to %struct.demangle_component**, !dbg !4688
  %2 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !4688
  %call18 = tail call fastcc %struct.demangle_component* @d_find_pack(%struct.d_print_info* %dpi, %struct.demangle_component* %2) #8, !dbg !4689
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call18, metadata !4668, metadata !DIExpression()), !dbg !4671
  %tobool19 = icmp eq %struct.demangle_component* %call18, null, !dbg !4690
  br i1 %tobool19, label %if.end21, label %cleanup.loopexit, !dbg !4692

if.end21:                                         ; preds = %sw.default
  br label %tailrecurse.backedge, !dbg !4693

cleanup.loopexit:                                 ; preds = %tailrecurse, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %sw.default
  %retval.0.ph = phi %struct.demangle_component* [ %call18, %sw.default ], [ null, %if.end ], [ null, %if.end ], [ null, %if.end ], [ null, %if.end ], [ null, %if.end ], [ null, %if.end ], [ null, %if.end ], [ null, %tailrecurse ]
  br label %cleanup, !dbg !4694

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true, %if.end4
  %retval.0 = phi %struct.demangle_component* [ null, %if.end4 ], [ %call, %land.lhs.true ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !4671
  ret %struct.demangle_component* %retval.0, !dbg !4694
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @d_pack_length(%struct.demangle_component* %dc) unnamed_addr #5 !dbg !4695 {
entry:
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc, metadata !4699, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 0, metadata !4700, metadata !DIExpression()), !dbg !4701
  br label %while.cond, !dbg !4702

while.cond:                                       ; preds = %while.body, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ], !dbg !4701
  %dc.addr.0 = phi %struct.demangle_component* [ %dc, %entry ], [ %3, %while.body ]
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.addr.0, metadata !4699, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !4700, metadata !DIExpression()), !dbg !4701
  %tobool = icmp eq %struct.demangle_component* %dc.addr.0, null, !dbg !4703
  br i1 %tobool, label %while.end, label %land.lhs.true, !dbg !4704

land.lhs.true:                                    ; preds = %while.cond
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.addr.0, i64 0, i32 0, !dbg !4705
  %0 = load i32, i32* %type, align 8, !dbg !4705
  %cmp = icmp eq i32 %0, 43, !dbg !4706
  br i1 %cmp, label %land.rhs, label %while.end, !dbg !4707

land.rhs:                                         ; preds = %land.lhs.true
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.addr.0, i64 0, i32 1, !dbg !4708
  %left = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !4708
  %1 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !4708
  %cmp1 = icmp eq %struct.demangle_component* %1, null, !dbg !4709
  br i1 %cmp1, label %while.end, label %while.body, !dbg !4702

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %count.0, 1, !dbg !4710
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4700, metadata !DIExpression()), !dbg !4701
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.addr.0, i64 0, i32 1, i32 0, i32 1, !dbg !4712
  %2 = bitcast i32* %right to %struct.demangle_component**, !dbg !4712
  %3 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8, !dbg !4712
  call void @llvm.dbg.value(metadata %struct.demangle_component* %3, metadata !4699, metadata !DIExpression()), !dbg !4701
  br label %while.cond, !dbg !4702, !llvm.loop !4713

while.end:                                        ; preds = %land.rhs, %while.cond, %land.lhs.true
  %count.0.lcssa = phi i32 [ %count.0, %land.rhs ], [ %count.0, %while.cond ], [ %count.0, %land.lhs.true ], !dbg !4701
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !4700, metadata !DIExpression()), !dbg !4701
  ret i32 %count.0.lcssa, !dbg !4715
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @d_print_mod_list(%struct.d_print_info* %dpi, %struct.d_print_mod* %mods, i32 %suffix) unnamed_addr #5 !dbg !4716 {
entry:
  %tobool3 = icmp eq i32 %suffix, 0, !dbg !4730
  %templates = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 6, !dbg !4732
  %0 = bitcast %struct.d_print_template** %templates to i64*, !dbg !4732
  br i1 %tobool3, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !4733

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %tailrecurse, !dbg !4733

entry.split.us:                                   ; preds = %entry
  br label %tailrecurse.us, !dbg !4733

tailrecurse.us:                                   ; preds = %tailrecurse.backedge.us, %entry.split.us
  %mods.tr.us = phi %struct.d_print_mod* [ %mods, %entry.split.us ], [ %mods.tr.be.us, %tailrecurse.backedge.us ]
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4720, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.us, metadata !4721, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i32 %suffix, metadata !4722, metadata !DIExpression()), !dbg !4732
  %cmp.us = icmp eq %struct.d_print_mod* %mods.tr.us, null, !dbg !4734
  br i1 %cmp.us, label %cleanup.cont.loopexit.us-lcssa.us, label %lor.lhs.false.us, !dbg !4736

lor.lhs.false.us:                                 ; preds = %tailrecurse.us
  %call.us = tail call fastcc i32 @d_print_saw_error(%struct.d_print_info* %dpi) #8, !dbg !4737
  %tobool.us = icmp eq i32 %call.us, 0, !dbg !4737
  br i1 %tobool.us, label %if.end.us, label %cleanup.cont.loopexit.us-lcssa.us, !dbg !4738

if.end.us:                                        ; preds = %lor.lhs.false.us
  %printed.us = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr.us, i64 0, i32 2, !dbg !4739
  %1 = load i32, i32* %printed.us, align 8, !dbg !4739
  %tobool1.us = icmp eq i32 %1, 0, !dbg !4740
  br i1 %tobool1.us, label %lor.lhs.false2.us, label %if.then13.us, !dbg !4741

lor.lhs.false2.us:                                ; preds = %if.end.us
  %mod.us = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr.us, i64 0, i32 1, !dbg !4742
  %2 = load %struct.demangle_component*, %struct.demangle_component** %mod.us, align 8, !dbg !4742
  %type.us = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %2, i64 0, i32 0, !dbg !4743
  %3 = load i32, i32* %type.us, align 8, !dbg !4743
  %cmp4.us = icmp eq i32 %3, 26, !dbg !4744
  br i1 %cmp4.us, label %if.then13.us, label %lor.lhs.false5.us, !dbg !4745

lor.lhs.false5.us:                                ; preds = %lor.lhs.false2.us
  %cmp8.us = icmp eq i32 %3, 27, !dbg !4746
  br i1 %cmp8.us, label %if.then13.us, label %lor.lhs.false9.us, !dbg !4747

lor.lhs.false9.us:                                ; preds = %lor.lhs.false5.us
  %cmp12.us = icmp eq i32 %3, 28, !dbg !4748
  br i1 %cmp12.us, label %if.then13.us, label %if.end14.us, !dbg !4749

if.end14.us:                                      ; preds = %lor.lhs.false9.us
  store i32 1, i32* %printed.us, align 8, !dbg !4750
  %4 = load i64, i64* %0, align 8, !dbg !4751
  %templates16.us = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr.us, i64 0, i32 3, !dbg !4752
  %5 = bitcast %struct.d_print_template** %templates16.us to i64*, !dbg !4752
  %6 = load i64, i64* %5, align 8, !dbg !4752
  store i64 %6, i64* %0, align 8, !dbg !4753
  %7 = load %struct.demangle_component*, %struct.demangle_component** %mod.us, align 8, !dbg !4754
  %type19.us = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %7, i64 0, i32 0, !dbg !4755
  %8 = load i32, i32* %type19.us, align 8, !dbg !4755
  %cmp20.us = icmp eq i32 %8, 37, !dbg !4756
  br i1 %cmp20.us, label %if.then21.us-lcssa.us, label %if.else.us, !dbg !4757

if.else.us:                                       ; preds = %if.end14.us
  %cmp27.us = icmp eq i32 %8, 38, !dbg !4758
  br i1 %cmp27.us, label %if.then28.us-lcssa.us, label %if.else32.us, !dbg !4759

if.else32.us:                                     ; preds = %if.else.us
  %cmp35.us = icmp eq i32 %8, 2, !dbg !4760
  br i1 %cmp35.us, label %if.then36.us-lcssa.us, label %if.end70.us, !dbg !4761

if.end70.us:                                      ; preds = %if.else32.us
  tail call fastcc void @d_print_mod(%struct.d_print_info* %dpi, %struct.demangle_component* %7) #8, !dbg !4762
  store i64 %4, i64* %0, align 8, !dbg !4763
  br label %tailrecurse.backedge.us, !dbg !4733

if.then13.us:                                     ; preds = %lor.lhs.false9.us, %lor.lhs.false5.us, %lor.lhs.false2.us, %if.end.us
  br label %tailrecurse.backedge.us, !dbg !4764

tailrecurse.backedge.us:                          ; preds = %if.then13.us, %if.end70.us
  %mods.tr.be.us.in = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr.us, i64 0, i32 0, !dbg !4732
  %mods.tr.be.us = load %struct.d_print_mod*, %struct.d_print_mod** %mods.tr.be.us.in, align 8, !dbg !4732
  br label %tailrecurse.us, !dbg !4732

cleanup.cont.loopexit.us-lcssa.us:                ; preds = %lor.lhs.false.us, %tailrecurse.us
  br label %cleanup.cont.loopexit, !dbg !4766

if.then21.us-lcssa.us:                            ; preds = %if.end14.us
  %.lcssa36 = phi i64 [ %4, %if.end14.us ], !dbg !4751
  %.lcssa33 = phi %struct.demangle_component* [ %7, %if.end14.us ], !dbg !4754
  %mods.tr.us.lcssa30 = phi %struct.d_print_mod* [ %mods.tr.us, %if.end14.us ]
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.us.lcssa30, metadata !4721, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.us.lcssa30, metadata !4721, metadata !DIExpression()), !dbg !4732
  br label %if.then21, !dbg !4767

if.then28.us-lcssa.us:                            ; preds = %if.else.us
  %.lcssa37 = phi i64 [ %4, %if.else.us ], !dbg !4751
  %.lcssa34 = phi %struct.demangle_component* [ %7, %if.else.us ], !dbg !4754
  %mods.tr.us.lcssa31 = phi %struct.d_print_mod* [ %mods.tr.us, %if.else.us ]
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.us.lcssa31, metadata !4721, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.us.lcssa31, metadata !4721, metadata !DIExpression()), !dbg !4732
  br label %if.then28, !dbg !4769

if.then36.us-lcssa.us:                            ; preds = %if.else32.us
  %.lcssa38 = phi i64 [ %4, %if.else32.us ], !dbg !4751
  %mods.tr.us.lcssa32 = phi %struct.d_print_mod* [ %mods.tr.us, %if.else32.us ]
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.us.lcssa32, metadata !4721, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.us.lcssa32, metadata !4721, metadata !DIExpression()), !dbg !4732
  br label %if.then36, !dbg !4771

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry.entry.split_crit_edge
  %mods.tr = phi %struct.d_print_mod* [ %mods, %entry.entry.split_crit_edge ], [ %mods.tr.be, %tailrecurse.backedge ]
  call void @llvm.dbg.value(metadata %struct.d_print_info* %dpi, metadata !4720, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr, metadata !4721, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i32 %suffix, metadata !4722, metadata !DIExpression()), !dbg !4732
  %cmp = icmp eq %struct.d_print_mod* %mods.tr, null, !dbg !4734
  br i1 %cmp, label %cleanup.cont.loopexit.us-lcssa, label %lor.lhs.false, !dbg !4736

lor.lhs.false:                                    ; preds = %tailrecurse
  %call = tail call fastcc i32 @d_print_saw_error(%struct.d_print_info* %dpi) #8, !dbg !4737
  %tobool = icmp eq i32 %call, 0, !dbg !4737
  br i1 %tobool, label %if.end, label %cleanup.cont.loopexit.us-lcssa, !dbg !4738

if.end:                                           ; preds = %lor.lhs.false
  %printed = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr, i64 0, i32 2, !dbg !4739
  %9 = load i32, i32* %printed, align 8, !dbg !4739
  %tobool1 = icmp eq i32 %9, 0, !dbg !4740
  br i1 %tobool1, label %lor.lhs.false2, label %if.then13, !dbg !4741

lor.lhs.false2:                                   ; preds = %if.end
  store i32 1, i32* %printed, align 8, !dbg !4750
  %10 = load i64, i64* %0, align 8, !dbg !4751
  %templates16 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr, i64 0, i32 3, !dbg !4752
  %11 = bitcast %struct.d_print_template** %templates16 to i64*, !dbg !4752
  %12 = load i64, i64* %11, align 8, !dbg !4752
  store i64 %12, i64* %0, align 8, !dbg !4753
  %mod18 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr, i64 0, i32 1, !dbg !4754
  %13 = load %struct.demangle_component*, %struct.demangle_component** %mod18, align 8, !dbg !4754
  %type19 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %13, i64 0, i32 0, !dbg !4755
  %14 = load i32, i32* %type19, align 8, !dbg !4755
  %cmp20 = icmp eq i32 %14, 37, !dbg !4756
  br i1 %cmp20, label %if.then21.us-lcssa, label %if.else, !dbg !4757

if.then13:                                        ; preds = %if.end
  br label %tailrecurse.backedge, !dbg !4764

if.then21.us-lcssa:                               ; preds = %lor.lhs.false2
  %.lcssa45 = phi i64 [ %10, %lor.lhs.false2 ], !dbg !4751
  %.lcssa42 = phi %struct.demangle_component* [ %13, %lor.lhs.false2 ], !dbg !4754
  %mods.tr.lcssa39 = phi %struct.d_print_mod* [ %mods.tr, %lor.lhs.false2 ]
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.lcssa39, metadata !4721, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.lcssa39, metadata !4721, metadata !DIExpression()), !dbg !4732
  br label %if.then21, !dbg !4767

if.then21:                                        ; preds = %if.then21.us-lcssa.us, %if.then21.us-lcssa
  %.lcssa7 = phi i64 [ %.lcssa45, %if.then21.us-lcssa ], [ %.lcssa36, %if.then21.us-lcssa.us ], !dbg !4751
  %.lcssa = phi %struct.demangle_component* [ %.lcssa42, %if.then21.us-lcssa ], [ %.lcssa33, %if.then21.us-lcssa.us ], !dbg !4754
  %mods.tr.lcssa2 = phi %struct.d_print_mod* [ %mods.tr.lcssa39, %if.then21.us-lcssa ], [ %mods.tr.us.lcssa30, %if.then21.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.lcssa2, metadata !4721, metadata !DIExpression()), !dbg !4732
  %next23 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr.lcssa2, i64 0, i32 0, !dbg !4767
  %15 = load %struct.d_print_mod*, %struct.d_print_mod** %next23, align 8, !dbg !4767
  tail call fastcc void @d_print_function_type(%struct.d_print_info* %dpi, %struct.demangle_component* %.lcssa, %struct.d_print_mod* %15) #8, !dbg !4772
  store i64 %.lcssa7, i64* %0, align 8, !dbg !4773
  br label %cleanup.cont, !dbg !4774

if.else:                                          ; preds = %lor.lhs.false2
  %cmp27 = icmp eq i32 %14, 38, !dbg !4758
  br i1 %cmp27, label %if.then28.us-lcssa, label %if.else32, !dbg !4759

if.then28.us-lcssa:                               ; preds = %if.else
  %.lcssa46 = phi i64 [ %10, %if.else ], !dbg !4751
  %.lcssa43 = phi %struct.demangle_component* [ %13, %if.else ], !dbg !4754
  %mods.tr.lcssa40 = phi %struct.d_print_mod* [ %mods.tr, %if.else ]
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.lcssa40, metadata !4721, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.lcssa40, metadata !4721, metadata !DIExpression()), !dbg !4732
  br label %if.then28, !dbg !4769

if.then28:                                        ; preds = %if.then28.us-lcssa.us, %if.then28.us-lcssa
  %.lcssa10 = phi %struct.demangle_component* [ %.lcssa43, %if.then28.us-lcssa ], [ %.lcssa34, %if.then28.us-lcssa.us ], !dbg !4775
  %.lcssa8 = phi i64 [ %.lcssa46, %if.then28.us-lcssa ], [ %.lcssa37, %if.then28.us-lcssa.us ], !dbg !4751
  %mods.tr.lcssa3 = phi %struct.d_print_mod* [ %mods.tr.lcssa40, %if.then28.us-lcssa ], [ %mods.tr.us.lcssa31, %if.then28.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.lcssa3, metadata !4721, metadata !DIExpression()), !dbg !4732
  %next30 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr.lcssa3, i64 0, i32 0, !dbg !4769
  %16 = load %struct.d_print_mod*, %struct.d_print_mod** %next30, align 8, !dbg !4769
  tail call fastcc void @d_print_array_type(%struct.d_print_info* %dpi, %struct.demangle_component* %.lcssa10, %struct.d_print_mod* %16) #8, !dbg !4776
  store i64 %.lcssa8, i64* %0, align 8, !dbg !4777
  br label %cleanup.cont, !dbg !4778

if.else32:                                        ; preds = %if.else
  %cmp35 = icmp eq i32 %14, 2, !dbg !4760
  br i1 %cmp35, label %if.then36.us-lcssa, label %if.end70, !dbg !4761

if.then36.us-lcssa:                               ; preds = %if.else32
  %.lcssa47 = phi i64 [ %10, %if.else32 ], !dbg !4751
  %mods.tr.lcssa41 = phi %struct.d_print_mod* [ %mods.tr, %if.else32 ]
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.lcssa41, metadata !4721, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.lcssa41, metadata !4721, metadata !DIExpression()), !dbg !4732
  br label %if.then36, !dbg !4771

if.then36:                                        ; preds = %if.then36.us-lcssa.us, %if.then36.us-lcssa
  %.lcssa9 = phi i64 [ %.lcssa47, %if.then36.us-lcssa ], [ %.lcssa38, %if.then36.us-lcssa.us ], !dbg !4751
  %mods.tr.lcssa4 = phi %struct.d_print_mod* [ %mods.tr.lcssa41, %if.then36.us-lcssa ], [ %mods.tr.us.lcssa32, %if.then36.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.d_print_mod* %mods.tr.lcssa4, metadata !4721, metadata !DIExpression()), !dbg !4732
  %modifiers = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 7, !dbg !4771
  %17 = bitcast %struct.d_print_mod** %modifiers to i64*, !dbg !4771
  %18 = load i64, i64* %17, align 8, !dbg !4771
  store %struct.d_print_mod* null, %struct.d_print_mod** %modifiers, align 8, !dbg !4779
  %mod38 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr.lcssa4, i64 0, i32 1, !dbg !4780
  %19 = load %struct.demangle_component*, %struct.demangle_component** %mod38, align 8, !dbg !4780
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %19, i64 0, i32 1, !dbg !4780
  %left = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !4780
  %20 = load %struct.demangle_component*, %struct.demangle_component** %left, align 8, !dbg !4780
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %20) #8, !dbg !4781
  store i64 %18, i64* %17, align 8, !dbg !4782
  %options = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %dpi, i64 0, i32 0, !dbg !4783
  %21 = load i32, i32* %options, align 8, !dbg !4783
  %and = and i32 %21, 4, !dbg !4785
  %cmp40 = icmp eq i32 %and, 0, !dbg !4786
  br i1 %cmp40, label %if.then41, label %if.else42, !dbg !4787

if.then41:                                        ; preds = %if.then36
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0)) #8, !dbg !4788
  br label %if.end43, !dbg !4788

if.else42:                                        ; preds = %if.then36
  tail call fastcc void @d_append_char(%struct.d_print_info* %dpi, i8 signext 46) #8, !dbg !4789
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then41
  %22 = load %struct.demangle_component*, %struct.demangle_component** %mod38, align 8, !dbg !4790
  %right = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %22, i64 0, i32 1, i32 0, i32 1, !dbg !4790
  %23 = bitcast i32* %right to %struct.demangle_component**, !dbg !4790
  %24 = load %struct.demangle_component*, %struct.demangle_component** %23, align 8, !dbg !4790
  call void @llvm.dbg.value(metadata %struct.demangle_component* %24, metadata !4729, metadata !DIExpression()), !dbg !4791
  %type47 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %24, i64 0, i32 0, !dbg !4792
  %25 = load i32, i32* %type47, align 8, !dbg !4792
  %cmp48 = icmp eq i32 %25, 63, !dbg !4794
  br i1 %cmp48, label %if.then49, label %if.end53, !dbg !4795

if.then49:                                        ; preds = %if.end43
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.190, i64 0, i64 0)) #8, !dbg !4796
  %26 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %24, i64 0, i32 1, i32 0, i32 1, !dbg !4798
  %27 = load i32, i32* %26, align 8, !dbg !4798
  %add = add nsw i32 %27, 1, !dbg !4799
  %conv = sext i32 %add to i64, !dbg !4800
  tail call fastcc void @d_append_num(%struct.d_print_info* %dpi, i64 %conv) #8, !dbg !4801
  tail call fastcc void @d_append_string(%struct.d_print_info* %dpi, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.191, i64 0, i64 0)) #8, !dbg !4802
  %u51 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %24, i64 0, i32 1, !dbg !4803
  %sub = bitcast %union.anon* %u51 to %struct.demangle_component**, !dbg !4804
  %28 = load %struct.demangle_component*, %struct.demangle_component** %sub, align 8, !dbg !4804
  call void @llvm.dbg.value(metadata %struct.demangle_component* %28, metadata !4729, metadata !DIExpression()), !dbg !4791
  br label %if.end53, !dbg !4805

if.end53:                                         ; preds = %if.then49, %if.end43
  %dc.0 = phi %struct.demangle_component* [ %28, %if.then49 ], [ %24, %if.end43 ], !dbg !4791
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.0, metadata !4729, metadata !DIExpression()), !dbg !4791
  br label %while.cond, !dbg !4806

while.cond:                                       ; preds = %while.body, %if.end53
  %dc.1 = phi %struct.demangle_component* [ %dc.0, %if.end53 ], [ %32, %while.body ], !dbg !4791
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.1, metadata !4729, metadata !DIExpression()), !dbg !4791
  %type54 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.1, i64 0, i32 0, !dbg !4807
  %29 = load i32, i32* %type54, align 8, !dbg !4807
  %cmp55 = icmp eq i32 %29, 26, !dbg !4808
  br i1 %cmp55, label %while.body, label %lor.lhs.false57, !dbg !4809

lor.lhs.false57:                                  ; preds = %while.cond
  %30 = add i32 %29, -27, !dbg !4810
  %31 = icmp ult i32 %30, 2, !dbg !4810
  br i1 %31, label %while.body, label %while.end, !dbg !4810

while.body:                                       ; preds = %while.cond, %lor.lhs.false57
  %u64 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %dc.1, i64 0, i32 1, !dbg !4811
  %left66 = bitcast %union.anon* %u64 to %struct.demangle_component**, !dbg !4811
  %32 = load %struct.demangle_component*, %struct.demangle_component** %left66, align 8, !dbg !4811
  call void @llvm.dbg.value(metadata %struct.demangle_component* %32, metadata !4729, metadata !DIExpression()), !dbg !4791
  br label %while.cond, !dbg !4806, !llvm.loop !4812

while.end:                                        ; preds = %lor.lhs.false57
  %dc.1.lcssa = phi %struct.demangle_component* [ %dc.1, %lor.lhs.false57 ], !dbg !4791
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.1.lcssa, metadata !4729, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.1.lcssa, metadata !4729, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.1.lcssa, metadata !4729, metadata !DIExpression()), !dbg !4791
  tail call fastcc void @d_print_comp(%struct.d_print_info* %dpi, %struct.demangle_component* %dc.1.lcssa) #8, !dbg !4813
  store i64 %.lcssa9, i64* %0, align 8, !dbg !4814
  br label %cleanup.cont

if.end70:                                         ; preds = %if.else32
  tail call fastcc void @d_print_mod(%struct.d_print_info* %dpi, %struct.demangle_component* %13) #8, !dbg !4762
  store i64 %10, i64* %0, align 8, !dbg !4763
  br label %tailrecurse.backedge, !dbg !4733

tailrecurse.backedge:                             ; preds = %if.end70, %if.then13
  %mods.tr.be.in = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %mods.tr, i64 0, i32 0, !dbg !4732
  %mods.tr.be = load %struct.d_print_mod*, %struct.d_print_mod** %mods.tr.be.in, align 8, !dbg !4732
  br label %tailrecurse, !dbg !4732

cleanup.cont.loopexit.us-lcssa:                   ; preds = %lor.lhs.false, %tailrecurse
  br label %cleanup.cont.loopexit, !dbg !4766

cleanup.cont.loopexit:                            ; preds = %cleanup.cont.loopexit.us-lcssa.us, %cleanup.cont.loopexit.us-lcssa
  br label %cleanup.cont, !dbg !4766

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.then21, %if.then28, %while.end
  ret void, !dbg !4766
}

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #6

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!274, !275, !276}
!llvm.ident = !{!277}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cplus_demangle_operators", scope: !2, file: !3, line: 1529, type: !271, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !238, globals: !250, nameTableKind: None)
!3 = !DIFile(filename: "cp-demangle.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !75, !80, !85, !98}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "demangle_component_type", file: !6, line: 207, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/demangle.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!9 = !DIEnumerator(name: "DEMANGLE_COMPONENT_NAME", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DEMANGLE_COMPONENT_QUAL_NAME", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DEMANGLE_COMPONENT_LOCAL_NAME", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TYPED_NAME", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TEMPLATE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TEMPLATE_PARAM", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "DEMANGLE_COMPONENT_FUNCTION_PARAM", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CTOR", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "DEMANGLE_COMPONENT_DTOR", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VTABLE", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VTT", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TYPEINFO", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TYPEINFO_NAME", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TYPEINFO_FN", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "DEMANGLE_COMPONENT_THUNK", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VIRTUAL_THUNK", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "DEMANGLE_COMPONENT_COVARIANT_THUNK", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "DEMANGLE_COMPONENT_JAVA_CLASS", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "DEMANGLE_COMPONENT_GUARD", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "DEMANGLE_COMPONENT_REFTEMP", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "DEMANGLE_COMPONENT_HIDDEN_ALIAS", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "DEMANGLE_COMPONENT_SUB_STD", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "DEMANGLE_COMPONENT_RESTRICT", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VOLATILE", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CONST", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "DEMANGLE_COMPONENT_RESTRICT_THIS", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VOLATILE_THIS", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CONST_THIS", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "DEMANGLE_COMPONENT_POINTER", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "DEMANGLE_COMPONENT_REFERENCE", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "DEMANGLE_COMPONENT_RVALUE_REFERENCE", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "DEMANGLE_COMPONENT_COMPLEX", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "DEMANGLE_COMPONENT_IMAGINARY", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "DEMANGLE_COMPONENT_BUILTIN_TYPE", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VENDOR_TYPE", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "DEMANGLE_COMPONENT_FUNCTION_TYPE", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "DEMANGLE_COMPONENT_ARRAY_TYPE", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "DEMANGLE_COMPONENT_PTRMEM_TYPE", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "DEMANGLE_COMPONENT_FIXED_TYPE", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VECTOR_TYPE", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "DEMANGLE_COMPONENT_ARGLIST", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TEMPLATE_ARGLIST", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "DEMANGLE_COMPONENT_OPERATOR", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "DEMANGLE_COMPONENT_EXTENDED_OPERATOR", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CAST", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "DEMANGLE_COMPONENT_UNARY", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "DEMANGLE_COMPONENT_BINARY", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "DEMANGLE_COMPONENT_BINARY_ARGS", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TRINARY", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TRINARY_ARG1", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TRINARY_ARG2", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "DEMANGLE_COMPONENT_LITERAL", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "DEMANGLE_COMPONENT_LITERAL_NEG", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "DEMANGLE_COMPONENT_JAVA_RESOURCE", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "DEMANGLE_COMPONENT_COMPOUND_NAME", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CHARACTER", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "DEMANGLE_COMPONENT_NUMBER", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "DEMANGLE_COMPONENT_DECLTYPE", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "DEMANGLE_COMPONENT_GLOBAL_CONSTRUCTORS", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "DEMANGLE_COMPONENT_GLOBAL_DESTRUCTORS", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "DEMANGLE_COMPONENT_LAMBDA", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "DEMANGLE_COMPONENT_DEFAULT_ARG", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "DEMANGLE_COMPONENT_UNNAMED_TYPE", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "DEMANGLE_COMPONENT_PACK_EXPANSION", value: 65, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gnu_v3_ctor_kinds", file: !6, line: 166, baseType: !7, size: 32, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "gnu_v3_complete_object_ctor", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "gnu_v3_base_object_ctor", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "gnu_v3_complete_object_allocating_ctor", value: 3, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gnu_v3_dtor_kinds", file: !6, line: 180, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "gnu_v3_deleting_dtor", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "gnu_v3_complete_object_dtor", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "gnu_v3_base_object_dtor", value: 3, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "d_builtin_type_print", file: !86, line: 50, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./cp-demangle.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!88 = !DIEnumerator(name: "D_PRINT_DEFAULT", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "D_PRINT_INT", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "D_PRINT_UNSIGNED", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "D_PRINT_LONG", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "D_PRINT_UNSIGNED_LONG", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "D_PRINT_LONG_LONG", value: 5, isUnsigned: true)
!94 = !DIEnumerator(name: "D_PRINT_UNSIGNED_LONG_LONG", value: 6, isUnsigned: true)
!95 = !DIEnumerator(name: "D_PRINT_BOOL", value: 7, isUnsigned: true)
!96 = !DIEnumerator(name: "D_PRINT_FLOAT", value: 8, isUnsigned: true)
!97 = !DIEnumerator(name: "D_PRINT_VOID", value: 9, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !99, file: !3, line: 4774, baseType: !7, size: 32, elements: !233)
!99 = distinct !DISubprogram(name: "d_demangle_callback", scope: !3, file: !3, line: 4771, type: !100, scopeLine: 4773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103, !102, !106, !113}
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "demangle_callbackref", file: !6, line: 144, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !103, !110, !113}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 46, baseType: !112)
!111 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!112 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!114 = !{!115, !116, !117, !118, !119, !120, !220, !221, !222, !224, !228, !229}
!115 = !DILocalVariable(name: "mangled", arg: 1, scope: !99, file: !3, line: 4771, type: !103)
!116 = !DILocalVariable(name: "options", arg: 2, scope: !99, file: !3, line: 4771, type: !102)
!117 = !DILocalVariable(name: "callback", arg: 3, scope: !99, file: !3, line: 4772, type: !106)
!118 = !DILocalVariable(name: "opaque", arg: 4, scope: !99, file: !3, line: 4772, type: !113)
!119 = !DILocalVariable(name: "type", scope: !99, file: !3, line: 4781, type: !98)
!120 = !DILocalVariable(name: "di", scope: !99, file: !3, line: 4782, type: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "d_info", file: !86, line: 92, size: 704, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !211, !212, !213, !215, !216, !217, !218, !219}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !121, file: !86, line: 95, baseType: !103, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !121, file: !86, line: 97, baseType: !103, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !121, file: !86, line: 99, baseType: !102, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !121, file: !86, line: 101, baseType: !103, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "comps", scope: !121, file: !86, line: 103, baseType: !128, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "demangle_component", file: !6, line: 412, size: 192, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !6, line: 415, baseType: !5, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !129, file: !6, line: 519, baseType: !133, size: 128, offset: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !6, line: 417, size: 128, elements: !134)
!134 = !{!135, !140, !152, !157, !164, !169, !174, !187, !192, !197, !201, !206}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "s_name", scope: !133, file: !6, line: 426, baseType: !136, size: 128)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 420, size: 128, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !136, file: !6, line: 424, baseType: !103, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !136, file: !6, line: 425, baseType: !102, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "s_operator", scope: !133, file: !6, line: 433, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 429, size: 64, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !141, file: !6, line: 432, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "demangle_operator_info", file: !86, line: 36, size: 192, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !146, file: !86, line: 39, baseType: !103, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !86, line: 41, baseType: !103, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !146, file: !86, line: 43, baseType: !102, size: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !146, file: !86, line: 45, baseType: !102, size: 32, offset: 160)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "s_extended_operator", scope: !133, file: !6, line: 442, baseType: !153, size: 128)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 436, size: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !153, file: !6, line: 439, baseType: !102, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !6, line: 441, baseType: !128, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "s_fixed", scope: !133, file: !6, line: 453, baseType: !158, size: 128)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 445, size: 128, elements: !159)
!159 = !{!160, !161, !163}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !158, file: !6, line: 448, baseType: !128, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "accum", scope: !158, file: !6, line: 450, baseType: !162, size: 16, offset: 64)
!162 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sat", scope: !158, file: !6, line: 452, baseType: !162, size: 16, offset: 80)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "s_ctor", scope: !133, file: !6, line: 462, baseType: !165, size: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 456, size: 128, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !165, file: !6, line: 459, baseType: !75, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !6, line: 461, baseType: !128, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "s_dtor", scope: !133, file: !6, line: 471, baseType: !170, size: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 465, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !170, file: !6, line: 468, baseType: !80, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !6, line: 470, baseType: !128, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "s_builtin", scope: !133, file: !6, line: 478, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 474, size: 64, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !6, line: 477, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "demangle_builtin_type_info", file: !86, line: 76, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !86, line: 79, baseType: !103, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !180, file: !86, line: 81, baseType: !102, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "java_name", scope: !180, file: !86, line: 83, baseType: !103, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "java_len", scope: !180, file: !86, line: 85, baseType: !102, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !180, file: !86, line: 87, baseType: !85, size: 32, offset: 224)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "s_string", scope: !133, file: !6, line: 487, baseType: !188, size: 128)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 481, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !188, file: !6, line: 484, baseType: !103, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !188, file: !6, line: 486, baseType: !102, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "s_number", scope: !133, file: !6, line: 494, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 490, size: 64, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !193, file: !6, line: 493, baseType: !196, size: 64)
!196 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "s_character", scope: !133, file: !6, line: 500, baseType: !198, size: 32)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 497, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "character", scope: !198, file: !6, line: 499, baseType: !102, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "s_binary", scope: !133, file: !6, line: 509, baseType: !202, size: 128)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 503, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !202, file: !6, line: 506, baseType: !128, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !202, file: !6, line: 508, baseType: !128, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "s_unary_num", scope: !133, file: !6, line: 517, baseType: !207, size: 128)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !6, line: 511, size: 128, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !207, file: !6, line: 514, baseType: !128, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !207, file: !6, line: 516, baseType: !102, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next_comp", scope: !121, file: !86, line: 105, baseType: !102, size: 32, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "num_comps", scope: !121, file: !86, line: 107, baseType: !102, size: 32, offset: 352)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !121, file: !86, line: 109, baseType: !214, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next_sub", scope: !121, file: !86, line: 111, baseType: !102, size: 32, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "num_subs", scope: !121, file: !86, line: 113, baseType: !102, size: 32, offset: 480)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "did_subs", scope: !121, file: !86, line: 117, baseType: !102, size: 32, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "last_name", scope: !121, file: !86, line: 119, baseType: !128, size: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "expansion", scope: !121, file: !86, line: 123, baseType: !102, size: 32, offset: 640)
!220 = !DILocalVariable(name: "dc", scope: !99, file: !3, line: 4783, type: !128)
!221 = !DILocalVariable(name: "status", scope: !99, file: !3, line: 4784, type: !102)
!222 = !DILocalVariable(name: "__vla_expr0", scope: !223, type: !112, flags: DIFlagArtificial)
!223 = distinct !DILexicalBlock(scope: !99, file: !3, line: 4802, column: 3)
!224 = !DILocalVariable(name: "comps", scope: !223, file: !3, line: 4804, type: !225)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: !222)
!228 = !DILocalVariable(name: "__vla_expr1", scope: !223, type: !112, flags: DIFlagArtificial)
!229 = !DILocalVariable(name: "subs", scope: !223, file: !3, line: 4805, type: !230)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: !228)
!233 = !{!234, !235, !236, !237}
!234 = !DIEnumerator(name: "DCT_TYPE", value: 0, isUnsigned: true)
!235 = !DIEnumerator(name: "DCT_MANGLED", value: 1, isUnsigned: true)
!236 = !DIEnumerator(name: "DCT_GLOBAL_CTORS", value: 2, isUnsigned: true)
!237 = !DIEnumerator(name: "DCT_GLOBAL_DTORS", value: 3, isUnsigned: true)
!238 = !{!239, !240, !102, !241, !113, !103, !75, !80, !7, !242, !243}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "d_growable_string", file: !3, line: 282, size: 256, elements: !245)
!245 = !{!246, !247, !248, !249}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !244, file: !3, line: 285, baseType: !242, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !244, file: !3, line: 287, baseType: !110, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "alc", scope: !244, file: !3, line: 289, baseType: !110, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "allocation_failure", scope: !244, file: !3, line: 291, baseType: !102, size: 32, offset: 192)
!250 = !{!0, !251, !256}
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "cplus_demangle_builtin_types", scope: !2, file: !3, line: 1970, type: !253, isLocal: false, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 8192, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 32)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "standard_subs", scope: !2, file: !3, line: 3094, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 3136, elements: !269)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "d_standard_sub_info", file: !3, line: 229, size: 448, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267, !268}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !260, file: !3, line: 232, baseType: !105, size: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "simple_expansion", scope: !260, file: !3, line: 234, baseType: !103, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "simple_len", scope: !260, file: !3, line: 236, baseType: !102, size: 32, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "full_expansion", scope: !260, file: !3, line: 239, baseType: !103, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "full_len", scope: !260, file: !3, line: 241, baseType: !102, size: 32, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "set_last_name", scope: !260, file: !3, line: 245, baseType: !103, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "set_last_name_len", scope: !260, file: !3, line: 247, baseType: !102, size: 32, offset: 384)
!269 = !{!270}
!270 = !DISubrange(count: 7)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 10176, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 53)
!274 = !{i32 2, !"Dwarf Version", i32 4}
!275 = !{i32 2, !"Debug Info Version", i32 3}
!276 = !{i32 1, !"wchar_size", i32 4}
!277 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!278 = distinct !DISubprogram(name: "vprintf", scope: !279, file: !279, line: 39, type: !280, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!280 = !DISubroutineType(types: !281)
!281 = !{!102, !282, !283}
!282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !285)
!285 = !{!286, !287, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !284, file: !3, baseType: !7, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !284, file: !3, baseType: !7, size: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !284, file: !3, baseType: !113, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !284, file: !3, baseType: !113, size: 64, offset: 128)
!290 = !{!291, !292}
!291 = !DILocalVariable(name: "__fmt", arg: 1, scope: !278, file: !279, line: 39, type: !282)
!292 = !DILocalVariable(name: "__arg", arg: 2, scope: !278, file: !279, line: 39, type: !283)
!293 = !DILocation(line: 0, scope: !278)
!294 = !DILocation(line: 41, column: 20, scope: !278)
!295 = !DILocation(line: 41, column: 10, scope: !278)
!296 = !DILocation(line: 41, column: 3, scope: !278)
!297 = distinct !DISubprogram(name: "getchar", scope: !279, file: !279, line: 47, type: !298, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{!102}
!300 = !{}
!301 = !DILocation(line: 49, column: 16, scope: !297)
!302 = !DILocation(line: 49, column: 10, scope: !297)
!303 = !DILocation(line: 49, column: 3, scope: !297)
!304 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !279, file: !279, line: 56, type: !305, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!305 = !DISubroutineType(types: !306)
!306 = !{!102, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !309, line: 7, baseType: !310)
!309 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !311, line: 49, size: 1728, elements: !312)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !328, !330, !331, !332, !335, !337, !339, !343, !346, !348, !351, !354, !355, !356, !357, !358}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !310, file: !311, line: 51, baseType: !102, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !310, file: !311, line: 54, baseType: !242, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !310, file: !311, line: 55, baseType: !242, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !310, file: !311, line: 56, baseType: !242, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !310, file: !311, line: 57, baseType: !242, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !310, file: !311, line: 58, baseType: !242, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !310, file: !311, line: 59, baseType: !242, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !310, file: !311, line: 60, baseType: !242, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !310, file: !311, line: 61, baseType: !242, size: 64, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !310, file: !311, line: 64, baseType: !242, size: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !310, file: !311, line: 65, baseType: !242, size: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !310, file: !311, line: 66, baseType: !242, size: 64, offset: 704)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !310, file: !311, line: 68, baseType: !326, size: 64, offset: 768)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !311, line: 36, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !310, file: !311, line: 70, baseType: !329, size: 64, offset: 832)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !310, file: !311, line: 72, baseType: !102, size: 32, offset: 896)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !310, file: !311, line: 73, baseType: !102, size: 32, offset: 928)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !310, file: !311, line: 74, baseType: !333, size: 64, offset: 960)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !334, line: 152, baseType: !196)
!334 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !310, file: !311, line: 77, baseType: !336, size: 16, offset: 1024)
!336 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !310, file: !311, line: 78, baseType: !338, size: 8, offset: 1040)
!338 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !310, file: !311, line: 79, baseType: !340, size: 8, offset: 1048)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 8, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 1)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !310, file: !311, line: 81, baseType: !344, size: 64, offset: 1088)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !311, line: 43, baseType: null)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !310, file: !311, line: 89, baseType: !347, size: 64, offset: 1152)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !334, line: 153, baseType: !196)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !310, file: !311, line: 91, baseType: !349, size: 64, offset: 1216)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !311, line: 37, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !310, file: !311, line: 92, baseType: !352, size: 64, offset: 1280)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !311, line: 38, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !310, file: !311, line: 93, baseType: !329, size: 64, offset: 1344)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !310, file: !311, line: 94, baseType: !113, size: 64, offset: 1408)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !310, file: !311, line: 95, baseType: !110, size: 64, offset: 1472)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !310, file: !311, line: 96, baseType: !102, size: 32, offset: 1536)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !310, file: !311, line: 98, baseType: !359, size: 160, offset: 1568)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 160, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 20)
!362 = !{!363}
!363 = !DILocalVariable(name: "__fp", arg: 1, scope: !304, file: !279, line: 56, type: !307)
!364 = !DILocation(line: 0, scope: !304)
!365 = !DILocation(line: 58, column: 10, scope: !304)
!366 = !DILocation(line: 58, column: 3, scope: !304)
!367 = distinct !DISubprogram(name: "getc_unlocked", scope: !279, file: !279, line: 66, type: !305, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!368 = !{!369}
!369 = !DILocalVariable(name: "__fp", arg: 1, scope: !367, file: !279, line: 66, type: !307)
!370 = !DILocation(line: 0, scope: !367)
!371 = !DILocation(line: 68, column: 10, scope: !367)
!372 = !DILocation(line: 68, column: 3, scope: !367)
!373 = distinct !DISubprogram(name: "getchar_unlocked", scope: !279, file: !279, line: 73, type: !298, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !300)
!374 = !DILocation(line: 75, column: 10, scope: !373)
!375 = !DILocation(line: 75, column: 3, scope: !373)
!376 = distinct !DISubprogram(name: "putchar", scope: !279, file: !279, line: 82, type: !377, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!102, !102}
!379 = !{!380}
!380 = !DILocalVariable(name: "__c", arg: 1, scope: !376, file: !279, line: 82, type: !102)
!381 = !DILocation(line: 0, scope: !376)
!382 = !DILocation(line: 84, column: 21, scope: !376)
!383 = !DILocation(line: 84, column: 10, scope: !376)
!384 = !DILocation(line: 84, column: 3, scope: !376)
!385 = distinct !DISubprogram(name: "fputc_unlocked", scope: !279, file: !279, line: 91, type: !386, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!102, !102, !307}
!388 = !{!389, !390}
!389 = !DILocalVariable(name: "__c", arg: 1, scope: !385, file: !279, line: 91, type: !102)
!390 = !DILocalVariable(name: "__stream", arg: 2, scope: !385, file: !279, line: 91, type: !307)
!391 = !DILocation(line: 0, scope: !385)
!392 = !DILocation(line: 93, column: 10, scope: !385)
!393 = !DILocation(line: 93, column: 3, scope: !385)
!394 = distinct !DISubprogram(name: "putc_unlocked", scope: !279, file: !279, line: 101, type: !386, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!395 = !{!396, !397}
!396 = !DILocalVariable(name: "__c", arg: 1, scope: !394, file: !279, line: 101, type: !102)
!397 = !DILocalVariable(name: "__stream", arg: 2, scope: !394, file: !279, line: 101, type: !307)
!398 = !DILocation(line: 0, scope: !394)
!399 = !DILocation(line: 103, column: 10, scope: !394)
!400 = !DILocation(line: 103, column: 3, scope: !394)
!401 = distinct !DISubprogram(name: "putchar_unlocked", scope: !279, file: !279, line: 108, type: !377, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !402)
!402 = !{!403}
!403 = !DILocalVariable(name: "__c", arg: 1, scope: !401, file: !279, line: 108, type: !102)
!404 = !DILocation(line: 0, scope: !401)
!405 = !DILocation(line: 110, column: 10, scope: !401)
!406 = !DILocation(line: 110, column: 3, scope: !401)
!407 = distinct !DISubprogram(name: "getline", scope: !279, file: !279, line: 118, type: !408, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!408 = !DISubroutineType(types: !409)
!409 = !{!410, !241, !411, !307}
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !334, line: 193, baseType: !196)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!412 = !{!413, !414, !415}
!413 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !407, file: !279, line: 118, type: !241)
!414 = !DILocalVariable(name: "__n", arg: 2, scope: !407, file: !279, line: 118, type: !411)
!415 = !DILocalVariable(name: "__stream", arg: 3, scope: !407, file: !279, line: 118, type: !307)
!416 = !DILocation(line: 0, scope: !407)
!417 = !DILocation(line: 120, column: 10, scope: !407)
!418 = !DILocation(line: 120, column: 3, scope: !407)
!419 = distinct !DISubprogram(name: "feof_unlocked", scope: !279, file: !279, line: 128, type: !305, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !420)
!420 = !{!421}
!421 = !DILocalVariable(name: "__stream", arg: 1, scope: !419, file: !279, line: 128, type: !307)
!422 = !DILocation(line: 0, scope: !419)
!423 = !DILocation(line: 130, column: 10, scope: !419)
!424 = !DILocation(line: 130, column: 3, scope: !419)
!425 = distinct !DISubprogram(name: "ferror_unlocked", scope: !279, file: !279, line: 135, type: !305, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!426 = !{!427}
!427 = !DILocalVariable(name: "__stream", arg: 1, scope: !425, file: !279, line: 135, type: !307)
!428 = !DILocation(line: 0, scope: !425)
!429 = !DILocation(line: 137, column: 10, scope: !425)
!430 = !DILocation(line: 137, column: 3, scope: !425)
!431 = distinct !DISubprogram(name: "atoi", scope: !432, file: !432, line: 361, type: !433, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!432 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!433 = !DISubroutineType(types: !434)
!434 = !{!102, !103}
!435 = !{!436}
!436 = !DILocalVariable(name: "__nptr", arg: 1, scope: !431, file: !432, line: 361, type: !103)
!437 = !DILocation(line: 0, scope: !431)
!438 = !DILocation(line: 363, column: 16, scope: !431)
!439 = !DILocation(line: 363, column: 10, scope: !431)
!440 = !DILocation(line: 363, column: 3, scope: !431)
!441 = distinct !DISubprogram(name: "atol", scope: !432, file: !432, line: 366, type: !442, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!196, !103}
!444 = !{!445}
!445 = !DILocalVariable(name: "__nptr", arg: 1, scope: !441, file: !432, line: 366, type: !103)
!446 = !DILocation(line: 0, scope: !441)
!447 = !DILocation(line: 368, column: 10, scope: !441)
!448 = !DILocation(line: 368, column: 3, scope: !441)
!449 = distinct !DISubprogram(name: "atoll", scope: !432, file: !432, line: 373, type: !450, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !103}
!452 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!453 = !{!454}
!454 = !DILocalVariable(name: "__nptr", arg: 1, scope: !449, file: !432, line: 373, type: !103)
!455 = !DILocation(line: 0, scope: !449)
!456 = !DILocation(line: 375, column: 10, scope: !449)
!457 = !DILocation(line: 375, column: 3, scope: !449)
!458 = distinct !DISubprogram(name: "bsearch", scope: !459, file: !459, line: 20, type: !460, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!459 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!460 = !DISubroutineType(types: !461)
!461 = !{!113, !462, !462, !110, !110, !464}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !432, line: 808, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!102, !462, !462}
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!469 = !DILocalVariable(name: "__key", arg: 1, scope: !458, file: !459, line: 20, type: !462)
!470 = !DILocalVariable(name: "__base", arg: 2, scope: !458, file: !459, line: 20, type: !462)
!471 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !458, file: !459, line: 20, type: !110)
!472 = !DILocalVariable(name: "__size", arg: 4, scope: !458, file: !459, line: 20, type: !110)
!473 = !DILocalVariable(name: "__compar", arg: 5, scope: !458, file: !459, line: 21, type: !464)
!474 = !DILocalVariable(name: "__l", scope: !458, file: !459, line: 23, type: !110)
!475 = !DILocalVariable(name: "__u", scope: !458, file: !459, line: 23, type: !110)
!476 = !DILocalVariable(name: "__idx", scope: !458, file: !459, line: 23, type: !110)
!477 = !DILocalVariable(name: "__p", scope: !458, file: !459, line: 24, type: !462)
!478 = !DILocalVariable(name: "__comparison", scope: !458, file: !459, line: 25, type: !102)
!479 = !DILocation(line: 0, scope: !458)
!480 = !DILocation(line: 29, column: 3, scope: !458)
!481 = !DILocation(line: 27, column: 7, scope: !458)
!482 = !DILocation(line: 29, column: 14, scope: !458)
!483 = !DILocation(line: 31, column: 20, scope: !484)
!484 = distinct !DILexicalBlock(scope: !458, file: !459, line: 30, column: 5)
!485 = !DILocation(line: 31, column: 27, scope: !484)
!486 = !DILocation(line: 32, column: 56, scope: !484)
!487 = !DILocation(line: 32, column: 47, scope: !484)
!488 = !DILocation(line: 33, column: 22, scope: !484)
!489 = !DILocation(line: 34, column: 24, scope: !490)
!490 = distinct !DILexicalBlock(scope: !484, file: !459, line: 34, column: 11)
!491 = !DILocation(line: 34, column: 11, scope: !484)
!492 = !DILocation(line: 36, column: 29, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !459, line: 36, column: 16)
!494 = !DILocation(line: 36, column: 16, scope: !490)
!495 = !DILocation(line: 37, column: 14, scope: !493)
!496 = distinct !{!496, !480, !497}
!497 = !DILocation(line: 40, column: 5, scope: !458)
!498 = !DILocation(line: 43, column: 1, scope: !458)
!499 = distinct !DISubprogram(name: "atof", scope: !500, file: !500, line: 25, type: !501, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!500 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!501 = !DISubroutineType(types: !502)
!502 = !{!503, !103}
!503 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!504 = !{!505}
!505 = !DILocalVariable(name: "__nptr", arg: 1, scope: !499, file: !500, line: 25, type: !103)
!506 = !DILocation(line: 0, scope: !499)
!507 = !DILocation(line: 27, column: 10, scope: !499)
!508 = !DILocation(line: 27, column: 3, scope: !499)
!509 = distinct !DISubprogram(name: "cplus_demangle_fill_name", scope: !3, file: !3, line: 709, type: !510, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!102, !128, !103, !102}
!512 = !{!513, !514, !515}
!513 = !DILocalVariable(name: "p", arg: 1, scope: !509, file: !3, line: 709, type: !128)
!514 = !DILocalVariable(name: "s", arg: 2, scope: !509, file: !3, line: 709, type: !103)
!515 = !DILocalVariable(name: "len", arg: 3, scope: !509, file: !3, line: 709, type: !102)
!516 = !DILocation(line: 0, scope: !509)
!517 = !DILocation(line: 711, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !509, file: !3, line: 711, column: 7)
!519 = !DILocation(line: 711, column: 22, scope: !518)
!520 = !DILocation(line: 711, column: 17, scope: !518)
!521 = !DILocation(line: 711, column: 37, scope: !518)
!522 = !DILocation(line: 713, column: 6, scope: !509)
!523 = !DILocation(line: 713, column: 11, scope: !509)
!524 = !DILocation(line: 714, column: 15, scope: !509)
!525 = !DILocation(line: 714, column: 17, scope: !509)
!526 = !DILocation(line: 715, column: 15, scope: !509)
!527 = !DILocation(line: 715, column: 19, scope: !509)
!528 = !DILocation(line: 716, column: 3, scope: !509)
!529 = !DILocation(line: 717, column: 1, scope: !509)
!530 = distinct !DISubprogram(name: "cplus_demangle_fill_extended_operator", scope: !3, file: !3, line: 723, type: !531, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!531 = !DISubroutineType(types: !532)
!532 = !{!102, !128, !102, !128}
!533 = !{!534, !535, !536}
!534 = !DILocalVariable(name: "p", arg: 1, scope: !530, file: !3, line: 723, type: !128)
!535 = !DILocalVariable(name: "args", arg: 2, scope: !530, file: !3, line: 723, type: !102)
!536 = !DILocalVariable(name: "name", arg: 3, scope: !530, file: !3, line: 724, type: !128)
!537 = !DILocation(line: 0, scope: !530)
!538 = !DILocation(line: 726, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !530, file: !3, line: 726, column: 7)
!540 = !DILocation(line: 726, column: 25, scope: !539)
!541 = !DILocation(line: 726, column: 17, scope: !539)
!542 = !DILocation(line: 726, column: 37, scope: !539)
!543 = !DILocation(line: 728, column: 6, scope: !530)
!544 = !DILocation(line: 728, column: 11, scope: !530)
!545 = !DILocation(line: 729, column: 6, scope: !530)
!546 = !DILocation(line: 729, column: 28, scope: !530)
!547 = !DILocation(line: 729, column: 33, scope: !530)
!548 = !DILocation(line: 730, column: 28, scope: !530)
!549 = !DILocation(line: 730, column: 33, scope: !530)
!550 = !DILocation(line: 731, column: 3, scope: !530)
!551 = !DILocation(line: 732, column: 1, scope: !530)
!552 = distinct !DISubprogram(name: "cplus_demangle_fill_ctor", scope: !3, file: !3, line: 738, type: !553, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!102, !128, !75, !128}
!555 = !{!556, !557, !558}
!556 = !DILocalVariable(name: "p", arg: 1, scope: !552, file: !3, line: 738, type: !128)
!557 = !DILocalVariable(name: "kind", arg: 2, scope: !552, file: !3, line: 739, type: !75)
!558 = !DILocalVariable(name: "name", arg: 3, scope: !552, file: !3, line: 740, type: !128)
!559 = !DILocation(line: 0, scope: !552)
!560 = !DILocation(line: 742, column: 9, scope: !561)
!561 = distinct !DILexicalBlock(scope: !552, file: !3, line: 742, column: 7)
!562 = !DILocation(line: 743, column: 15, scope: !561)
!563 = !DILocation(line: 743, column: 7, scope: !561)
!564 = !DILocation(line: 747, column: 6, scope: !552)
!565 = !DILocation(line: 747, column: 11, scope: !552)
!566 = !DILocation(line: 748, column: 6, scope: !552)
!567 = !DILocation(line: 748, column: 15, scope: !552)
!568 = !DILocation(line: 748, column: 20, scope: !552)
!569 = !DILocation(line: 749, column: 15, scope: !552)
!570 = !DILocation(line: 749, column: 20, scope: !552)
!571 = !DILocation(line: 750, column: 3, scope: !552)
!572 = !DILocation(line: 751, column: 1, scope: !552)
!573 = distinct !DISubprogram(name: "cplus_demangle_fill_dtor", scope: !3, file: !3, line: 757, type: !574, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!102, !128, !80, !128}
!576 = !{!577, !578, !579}
!577 = !DILocalVariable(name: "p", arg: 1, scope: !573, file: !3, line: 757, type: !128)
!578 = !DILocalVariable(name: "kind", arg: 2, scope: !573, file: !3, line: 758, type: !80)
!579 = !DILocalVariable(name: "name", arg: 3, scope: !573, file: !3, line: 759, type: !128)
!580 = !DILocation(line: 0, scope: !573)
!581 = !DILocation(line: 761, column: 9, scope: !582)
!582 = distinct !DILexicalBlock(scope: !573, file: !3, line: 761, column: 7)
!583 = !DILocation(line: 762, column: 15, scope: !582)
!584 = !DILocation(line: 762, column: 7, scope: !582)
!585 = !DILocation(line: 766, column: 6, scope: !573)
!586 = !DILocation(line: 766, column: 11, scope: !573)
!587 = !DILocation(line: 767, column: 6, scope: !573)
!588 = !DILocation(line: 767, column: 15, scope: !573)
!589 = !DILocation(line: 767, column: 20, scope: !573)
!590 = !DILocation(line: 768, column: 15, scope: !573)
!591 = !DILocation(line: 768, column: 20, scope: !573)
!592 = !DILocation(line: 769, column: 3, scope: !573)
!593 = !DILocation(line: 770, column: 1, scope: !573)
!594 = distinct !DISubprogram(name: "cplus_demangle_mangled_name", scope: !3, file: !3, line: 1045, type: !595, scopeLine: 1046, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !598)
!595 = !DISubroutineType(types: !596)
!596 = !{!128, !597, !102}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!598 = !{!599, !600}
!599 = !DILocalVariable(name: "di", arg: 1, scope: !594, file: !3, line: 1045, type: !597)
!600 = !DILocalVariable(name: "top_level", arg: 2, scope: !594, file: !3, line: 1045, type: !102)
!601 = !DILocation(line: 0, scope: !594)
!602 = !DILocation(line: 1047, column: 9, scope: !603)
!603 = distinct !DILexicalBlock(scope: !594, file: !3, line: 1047, column: 7)
!604 = !DILocation(line: 1051, column: 7, scope: !603)
!605 = !DILocation(line: 1053, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !594, file: !3, line: 1053, column: 7)
!607 = !DILocation(line: 1051, column: 10, scope: !603)
!608 = !DILocation(line: 1047, column: 7, scope: !594)
!609 = !DILocation(line: 1053, column: 7, scope: !594)
!610 = !DILocation(line: 1055, column: 10, scope: !594)
!611 = !DILocation(line: 1055, column: 3, scope: !594)
!612 = !DILocation(line: 1056, column: 1, scope: !594)
!613 = distinct !DISubprogram(name: "d_encoding", scope: !3, file: !3, line: 1117, type: !595, scopeLine: 1118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !614)
!614 = !{!615, !616, !617, !618, !621}
!615 = !DILocalVariable(name: "di", arg: 1, scope: !613, file: !3, line: 1117, type: !597)
!616 = !DILocalVariable(name: "top_level", arg: 2, scope: !613, file: !3, line: 1117, type: !102)
!617 = !DILocalVariable(name: "peek", scope: !613, file: !3, line: 1119, type: !105)
!618 = !DILocalVariable(name: "dc", scope: !619, file: !3, line: 1125, type: !128)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 1124, column: 5)
!620 = distinct !DILexicalBlock(scope: !613, file: !3, line: 1121, column: 7)
!621 = !DILocalVariable(name: "dcr", scope: !622, file: !3, line: 1145, type: !128)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 1144, column: 6)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 1143, column: 8)
!624 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1130, column: 2)
!625 = distinct !DILexicalBlock(scope: !619, file: !3, line: 1129, column: 11)
!626 = !DILocation(line: 0, scope: !613)
!627 = !DILocation(line: 1119, column: 15, scope: !613)
!628 = !DILocation(line: 1121, column: 12, scope: !620)
!629 = !DILocation(line: 1121, column: 27, scope: !620)
!630 = !DILocation(line: 1121, column: 19, scope: !620)
!631 = !DILocation(line: 1122, column: 12, scope: !620)
!632 = !DILocation(line: 1122, column: 5, scope: !620)
!633 = !DILocation(line: 1127, column: 12, scope: !619)
!634 = !DILocation(line: 0, scope: !619)
!635 = !DILocation(line: 1129, column: 14, scope: !625)
!636 = !DILocation(line: 1129, column: 25, scope: !625)
!637 = !DILocation(line: 1129, column: 22, scope: !625)
!638 = !DILocation(line: 1129, column: 43, scope: !625)
!639 = !DILocation(line: 1129, column: 51, scope: !625)
!640 = !DILocation(line: 1129, column: 66, scope: !625)
!641 = !DILocation(line: 1129, column: 11, scope: !619)
!642 = !DILocation(line: 1134, column: 4, scope: !624)
!643 = !DILocation(line: 1134, column: 15, scope: !624)
!644 = !DILocation(line: 1134, column: 20, scope: !624)
!645 = !DILocation(line: 1135, column: 4, scope: !624)
!646 = !DILocation(line: 1136, column: 4, scope: !624)
!647 = !DILocation(line: 1137, column: 11, scope: !624)
!648 = distinct !{!648, !642, !647}
!649 = !DILocation(line: 1143, column: 17, scope: !623)
!650 = !DILocation(line: 1143, column: 8, scope: !624)
!651 = !DILocation(line: 1147, column: 14, scope: !622)
!652 = !DILocation(line: 1148, column: 8, scope: !622)
!653 = !DILocation(line: 0, scope: !622)
!654 = !DILocation(line: 1148, column: 20, scope: !622)
!655 = !DILocation(line: 1148, column: 25, scope: !622)
!656 = !DILocation(line: 1149, column: 8, scope: !622)
!657 = !DILocation(line: 1150, column: 8, scope: !622)
!658 = !DILocation(line: 1151, column: 9, scope: !622)
!659 = distinct !{!659, !652, !658}
!660 = !DILocation(line: 1152, column: 29, scope: !622)
!661 = !DILocation(line: 1153, column: 6, scope: !622)
!662 = !DILocation(line: 1158, column: 14, scope: !619)
!663 = !DILocation(line: 1159, column: 14, scope: !664)
!664 = distinct !DILexicalBlock(scope: !619, file: !3, line: 1159, column: 11)
!665 = !DILocation(line: 1159, column: 30, scope: !664)
!666 = !DILocation(line: 1159, column: 22, scope: !664)
!667 = !DILocation(line: 1159, column: 46, scope: !664)
!668 = !DILocation(line: 1162, column: 32, scope: !619)
!669 = !DILocation(line: 1162, column: 6, scope: !619)
!670 = !DILocation(line: 1161, column: 14, scope: !619)
!671 = !DILocation(line: 1161, column: 7, scope: !619)
!672 = !DILocation(line: 0, scope: !620)
!673 = !DILocation(line: 1164, column: 1, scope: !613)
!674 = distinct !DISubprogram(name: "cplus_demangle_type", scope: !3, file: !3, line: 2010, type: !675, scopeLine: 2011, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{!128, !597}
!677 = !{!678, !679, !680, !681, !682, !685}
!678 = !DILocalVariable(name: "di", arg: 1, scope: !674, file: !3, line: 2010, type: !597)
!679 = !DILocalVariable(name: "peek", scope: !674, file: !3, line: 2012, type: !105)
!680 = !DILocalVariable(name: "ret", scope: !674, file: !3, line: 2013, type: !128)
!681 = !DILocalVariable(name: "can_subst", scope: !674, file: !3, line: 2014, type: !102)
!682 = !DILocalVariable(name: "pret", scope: !683, file: !3, line: 2034, type: !214)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 2033, column: 5)
!684 = distinct !DILexicalBlock(scope: !674, file: !3, line: 2032, column: 7)
!685 = !DILocalVariable(name: "peek_next", scope: !686, file: !3, line: 2103, type: !105)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 2102, column: 7)
!687 = distinct !DILexicalBlock(scope: !674, file: !3, line: 2048, column: 5)
!688 = !DILocation(line: 0, scope: !674)
!689 = !DILocation(line: 2013, column: 3, scope: !674)
!690 = !DILocation(line: 2031, column: 10, scope: !674)
!691 = !DILocation(line: 2032, column: 12, scope: !684)
!692 = !DILocation(line: 2032, column: 27, scope: !684)
!693 = !DILocation(line: 2032, column: 19, scope: !684)
!694 = !DILocation(line: 2032, column: 42, scope: !684)
!695 = !DILocation(line: 2036, column: 14, scope: !683)
!696 = !DILocation(line: 0, scope: !683)
!697 = !DILocation(line: 2037, column: 16, scope: !698)
!698 = distinct !DILexicalBlock(scope: !683, file: !3, line: 2037, column: 11)
!699 = !DILocation(line: 2037, column: 11, scope: !683)
!700 = !DILocation(line: 2039, column: 15, scope: !683)
!701 = !DILocation(line: 2039, column: 13, scope: !683)
!702 = !DILocation(line: 2040, column: 13, scope: !703)
!703 = distinct !DILexicalBlock(scope: !683, file: !3, line: 2040, column: 11)
!704 = !DILocation(line: 2040, column: 19, scope: !703)
!705 = !DILocation(line: 2040, column: 48, scope: !703)
!706 = !DILocation(line: 2040, column: 24, scope: !703)
!707 = !DILocation(line: 2042, column: 14, scope: !683)
!708 = !DILocation(line: 2040, column: 11, scope: !683)
!709 = !DILocation(line: 2047, column: 11, scope: !674)
!710 = !DILocation(line: 2047, column: 3, scope: !674)
!711 = !DILocation(line: 2054, column: 36, scope: !687)
!712 = !DILocation(line: 2054, column: 41, scope: !687)
!713 = !DILocation(line: 2054, column: 7, scope: !687)
!714 = !DILocation(line: 2053, column: 13, scope: !687)
!715 = !DILocation(line: 2053, column: 11, scope: !687)
!716 = !DILocation(line: 2055, column: 29, scope: !687)
!717 = !DILocation(line: 2055, column: 41, scope: !687)
!718 = !DILocation(line: 2055, column: 47, scope: !687)
!719 = !DILocation(line: 2055, column: 11, scope: !687)
!720 = !DILocation(line: 2055, column: 21, scope: !687)
!721 = !DILocation(line: 2057, column: 7, scope: !687)
!722 = !DILocation(line: 2058, column: 7, scope: !687)
!723 = !DILocation(line: 2061, column: 7, scope: !687)
!724 = !DILocation(line: 2063, column: 5, scope: !687)
!725 = !DILocation(line: 2062, column: 13, scope: !687)
!726 = !DILocation(line: 2062, column: 11, scope: !687)
!727 = !DILocation(line: 2064, column: 7, scope: !687)
!728 = !DILocation(line: 2067, column: 13, scope: !687)
!729 = !DILocation(line: 2067, column: 11, scope: !687)
!730 = !DILocation(line: 2068, column: 7, scope: !687)
!731 = !DILocation(line: 2074, column: 13, scope: !687)
!732 = !DILocation(line: 2074, column: 11, scope: !687)
!733 = !DILocation(line: 2075, column: 7, scope: !687)
!734 = !DILocation(line: 2078, column: 13, scope: !687)
!735 = !DILocation(line: 2078, column: 11, scope: !687)
!736 = !DILocation(line: 2079, column: 7, scope: !687)
!737 = !DILocation(line: 2082, column: 13, scope: !687)
!738 = !DILocation(line: 2082, column: 11, scope: !687)
!739 = !DILocation(line: 2083, column: 7, scope: !687)
!740 = !DILocation(line: 2086, column: 13, scope: !687)
!741 = !DILocation(line: 2086, column: 11, scope: !687)
!742 = !DILocation(line: 2087, column: 11, scope: !743)
!743 = distinct !DILexicalBlock(scope: !687, file: !3, line: 2087, column: 11)
!744 = !DILocation(line: 2087, column: 28, scope: !743)
!745 = !DILocation(line: 2087, column: 11, scope: !687)
!746 = !DILocation(line: 2092, column: 10, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 2092, column: 8)
!748 = distinct !DILexicalBlock(scope: !743, file: !3, line: 2088, column: 2)
!749 = !DILocation(line: 2092, column: 8, scope: !748)
!750 = !DILocation(line: 2095, column: 9, scope: !748)
!751 = !DILocation(line: 2094, column: 10, scope: !748)
!752 = !DILocation(line: 2094, column: 8, scope: !748)
!753 = !DILocation(line: 2096, column: 2, scope: !748)
!754 = !DILocation(line: 2105, column: 14, scope: !686)
!755 = !DILocation(line: 0, scope: !686)
!756 = !DILocation(line: 2106, column: 6, scope: !757)
!757 = distinct !DILexicalBlock(scope: !686, file: !3, line: 2106, column: 6)
!758 = !DILocation(line: 2107, column: 19, scope: !757)
!759 = !DILocation(line: 2108, column: 9, scope: !757)
!760 = !DILocation(line: 2110, column: 12, scope: !761)
!761 = distinct !DILexicalBlock(scope: !757, file: !3, line: 2109, column: 4)
!762 = !DILocation(line: 2110, column: 10, scope: !761)
!763 = !DILocation(line: 2113, column: 10, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 2113, column: 10)
!765 = !DILocation(line: 2113, column: 27, scope: !764)
!766 = !DILocation(line: 2113, column: 10, scope: !761)
!767 = !DILocation(line: 2115, column: 6, scope: !764)
!768 = !DILocation(line: 2114, column: 14, scope: !764)
!769 = !DILocation(line: 2114, column: 12, scope: !764)
!770 = !DILocation(line: 2114, column: 8, scope: !764)
!771 = !DILocation(line: 2121, column: 12, scope: !772)
!772 = distinct !DILexicalBlock(scope: !757, file: !3, line: 2120, column: 4)
!773 = !DILocation(line: 2121, column: 10, scope: !772)
!774 = !DILocation(line: 2126, column: 14, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !3, line: 2126, column: 10)
!776 = !DILocation(line: 2126, column: 22, scope: !775)
!777 = !DILocation(line: 2126, column: 30, scope: !775)
!778 = !DILocation(line: 2126, column: 35, scope: !775)
!779 = !DILocation(line: 2126, column: 10, scope: !772)
!780 = !DILocation(line: 2133, column: 7, scope: !687)
!781 = !DILocation(line: 2135, column: 26, scope: !687)
!782 = !DILocation(line: 2134, column: 13, scope: !687)
!783 = !DILocation(line: 2134, column: 11, scope: !687)
!784 = !DILocation(line: 2136, column: 7, scope: !687)
!785 = !DILocation(line: 2139, column: 7, scope: !687)
!786 = !DILocation(line: 2141, column: 5, scope: !687)
!787 = !DILocation(line: 2140, column: 13, scope: !687)
!788 = !DILocation(line: 2140, column: 11, scope: !687)
!789 = !DILocation(line: 2142, column: 7, scope: !687)
!790 = !DILocation(line: 2145, column: 7, scope: !687)
!791 = !DILocation(line: 2147, column: 26, scope: !687)
!792 = !DILocation(line: 2146, column: 13, scope: !687)
!793 = !DILocation(line: 2146, column: 11, scope: !687)
!794 = !DILocation(line: 2148, column: 7, scope: !687)
!795 = !DILocation(line: 2151, column: 7, scope: !687)
!796 = !DILocation(line: 2153, column: 5, scope: !687)
!797 = !DILocation(line: 2152, column: 13, scope: !687)
!798 = !DILocation(line: 2152, column: 11, scope: !687)
!799 = !DILocation(line: 2154, column: 7, scope: !687)
!800 = !DILocation(line: 2157, column: 7, scope: !687)
!801 = !DILocation(line: 2159, column: 5, scope: !687)
!802 = !DILocation(line: 2158, column: 13, scope: !687)
!803 = !DILocation(line: 2158, column: 11, scope: !687)
!804 = !DILocation(line: 2160, column: 7, scope: !687)
!805 = !DILocation(line: 2163, column: 7, scope: !687)
!806 = !DILocation(line: 2164, column: 13, scope: !687)
!807 = !DILocation(line: 2166, column: 5, scope: !687)
!808 = !DILocation(line: 2165, column: 13, scope: !687)
!809 = !DILocation(line: 2165, column: 11, scope: !687)
!810 = !DILocation(line: 2167, column: 7, scope: !687)
!811 = !DILocation(line: 2171, column: 7, scope: !687)
!812 = !DILocation(line: 2172, column: 14, scope: !687)
!813 = !DILocation(line: 2173, column: 7, scope: !687)
!814 = !DILocation(line: 2179, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !687, file: !3, line: 2174, column: 2)
!816 = !DILocation(line: 2178, column: 10, scope: !815)
!817 = !DILocation(line: 2178, column: 8, scope: !815)
!818 = !DILocation(line: 2180, column: 8, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !3, line: 2180, column: 8)
!820 = !DILocation(line: 2180, column: 12, scope: !819)
!821 = !DILocation(line: 2180, column: 15, scope: !819)
!822 = !DILocation(line: 2180, column: 8, scope: !815)
!823 = !DILocation(line: 2181, column: 10, scope: !819)
!824 = !DILocation(line: 2181, column: 6, scope: !819)
!825 = !DILocation(line: 2187, column: 9, scope: !815)
!826 = !DILocation(line: 2186, column: 10, scope: !815)
!827 = !DILocation(line: 2186, column: 8, scope: !815)
!828 = !DILocation(line: 2188, column: 4, scope: !815)
!829 = !DILocation(line: 2192, column: 10, scope: !815)
!830 = !DILocation(line: 2192, column: 8, scope: !815)
!831 = !DILocation(line: 2193, column: 26, scope: !815)
!832 = !DILocation(line: 2193, column: 38, scope: !815)
!833 = !DILocation(line: 2193, column: 44, scope: !815)
!834 = !DILocation(line: 2193, column: 8, scope: !815)
!835 = !DILocation(line: 2193, column: 18, scope: !815)
!836 = !DILocation(line: 2194, column: 4, scope: !815)
!837 = !DILocation(line: 2197, column: 10, scope: !815)
!838 = !DILocation(line: 2197, column: 8, scope: !815)
!839 = !DILocation(line: 2198, column: 26, scope: !815)
!840 = !DILocation(line: 2198, column: 38, scope: !815)
!841 = !DILocation(line: 2198, column: 44, scope: !815)
!842 = !DILocation(line: 2198, column: 8, scope: !815)
!843 = !DILocation(line: 2198, column: 18, scope: !815)
!844 = !DILocation(line: 2199, column: 4, scope: !815)
!845 = !DILocation(line: 2202, column: 10, scope: !815)
!846 = !DILocation(line: 2202, column: 8, scope: !815)
!847 = !DILocation(line: 2203, column: 26, scope: !815)
!848 = !DILocation(line: 2203, column: 38, scope: !815)
!849 = !DILocation(line: 2203, column: 44, scope: !815)
!850 = !DILocation(line: 2203, column: 8, scope: !815)
!851 = !DILocation(line: 2203, column: 18, scope: !815)
!852 = !DILocation(line: 2204, column: 4, scope: !815)
!853 = !DILocation(line: 2207, column: 10, scope: !815)
!854 = !DILocation(line: 2207, column: 8, scope: !815)
!855 = !DILocation(line: 2208, column: 26, scope: !815)
!856 = !DILocation(line: 2208, column: 38, scope: !815)
!857 = !DILocation(line: 2208, column: 44, scope: !815)
!858 = !DILocation(line: 2208, column: 8, scope: !815)
!859 = !DILocation(line: 2208, column: 18, scope: !815)
!860 = !DILocation(line: 2209, column: 4, scope: !815)
!861 = !DILocation(line: 2212, column: 10, scope: !815)
!862 = !DILocation(line: 2212, column: 8, scope: !815)
!863 = !DILocation(line: 2213, column: 26, scope: !815)
!864 = !DILocation(line: 2213, column: 38, scope: !815)
!865 = !DILocation(line: 2213, column: 44, scope: !815)
!866 = !DILocation(line: 2213, column: 8, scope: !815)
!867 = !DILocation(line: 2213, column: 18, scope: !815)
!868 = !DILocation(line: 2214, column: 4, scope: !815)
!869 = !DILocation(line: 2217, column: 10, scope: !815)
!870 = !DILocation(line: 2217, column: 8, scope: !815)
!871 = !DILocation(line: 2218, column: 26, scope: !815)
!872 = !DILocation(line: 2218, column: 38, scope: !815)
!873 = !DILocation(line: 2218, column: 44, scope: !815)
!874 = !DILocation(line: 2218, column: 8, scope: !815)
!875 = !DILocation(line: 2218, column: 18, scope: !815)
!876 = !DILocation(line: 2219, column: 4, scope: !815)
!877 = !DILocation(line: 2223, column: 10, scope: !815)
!878 = !DILocation(line: 2223, column: 8, scope: !815)
!879 = !DILocation(line: 2224, column: 9, scope: !815)
!880 = !DILocation(line: 2224, column: 14, scope: !815)
!881 = !DILocation(line: 2225, column: 32, scope: !882)
!882 = distinct !DILexicalBlock(scope: !815, file: !3, line: 2225, column: 8)
!883 = !DILocation(line: 2225, column: 9, scope: !882)
!884 = !DILocation(line: 2225, column: 24, scope: !882)
!885 = !DILocation(line: 2225, column: 30, scope: !882)
!886 = !DILocation(line: 2225, column: 8, scope: !815)
!887 = !DILocation(line: 2227, column: 6, scope: !882)
!888 = !DILocation(line: 2228, column: 28, scope: !815)
!889 = !DILocation(line: 2228, column: 9, scope: !815)
!890 = !DILocation(line: 2228, column: 19, scope: !815)
!891 = !DILocation(line: 2228, column: 26, scope: !815)
!892 = !DILocation(line: 2229, column: 30, scope: !893)
!893 = distinct !DILexicalBlock(scope: !815, file: !3, line: 2229, column: 8)
!894 = !DILocation(line: 2229, column: 8, scope: !815)
!895 = !DILocation(line: 2231, column: 4, scope: !815)
!896 = !DILocation(line: 2232, column: 11, scope: !815)
!897 = !DILocation(line: 2233, column: 11, scope: !815)
!898 = !DILocation(line: 2233, column: 19, scope: !815)
!899 = !DILocation(line: 2233, column: 23, scope: !815)
!900 = !DILocation(line: 2234, column: 4, scope: !815)
!901 = !DILocation(line: 2237, column: 10, scope: !815)
!902 = !DILocation(line: 2237, column: 8, scope: !815)
!903 = !DILocation(line: 2238, column: 4, scope: !815)
!904 = !DILocation(line: 2249, column: 7, scope: !674)
!905 = !DILocation(line: 2251, column: 13, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 2251, column: 11)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 2250, column: 5)
!908 = distinct !DILexicalBlock(scope: !674, file: !3, line: 2249, column: 7)
!909 = !DILocation(line: 2251, column: 11, scope: !907)
!910 = !DILocation(line: 2255, column: 3, scope: !674)
!911 = !DILocation(line: 2256, column: 1, scope: !674)
!912 = distinct !DISubprogram(name: "d_cv_qualifiers", scope: !3, file: !3, line: 2261, type: !913, scopeLine: 2263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{!214, !597, !214, !102}
!915 = !{!916, !917, !918, !919, !920}
!916 = !DILocalVariable(name: "di", arg: 1, scope: !912, file: !3, line: 2261, type: !597)
!917 = !DILocalVariable(name: "pret", arg: 2, scope: !912, file: !3, line: 2262, type: !214)
!918 = !DILocalVariable(name: "member_fn", arg: 3, scope: !912, file: !3, line: 2262, type: !102)
!919 = !DILocalVariable(name: "peek", scope: !912, file: !3, line: 2264, type: !105)
!920 = !DILocalVariable(name: "t", scope: !921, file: !3, line: 2269, type: !5)
!921 = distinct !DILexicalBlock(scope: !912, file: !3, line: 2268, column: 5)
!922 = !DILocation(line: 0, scope: !912)
!923 = !DILocation(line: 2266, column: 10, scope: !912)
!924 = !DILocation(line: 0, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 2279, column: 16)
!926 = distinct !DILexicalBlock(scope: !921, file: !3, line: 2272, column: 11)
!927 = !DILocation(line: 0, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !3, line: 2287, column: 2)
!929 = !DILocation(line: 0, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !3, line: 2280, column: 2)
!931 = !DILocation(line: 0, scope: !932)
!932 = distinct !DILexicalBlock(scope: !926, file: !3, line: 2273, column: 2)
!933 = !DILocation(line: 2267, column: 3, scope: !912)
!934 = !DILocation(line: 2266, column: 8, scope: !912)
!935 = !DILocation(line: 2267, column: 15, scope: !912)
!936 = !DILocation(line: 2267, column: 30, scope: !912)
!937 = !DILocation(line: 2267, column: 22, scope: !912)
!938 = !DILocation(line: 2267, column: 45, scope: !912)
!939 = !DILocation(line: 2271, column: 7, scope: !921)
!940 = !DILocation(line: 2272, column: 11, scope: !921)
!941 = !DILocation(line: 0, scope: !921)
!942 = !DILocation(line: 2277, column: 18, scope: !932)
!943 = !DILocation(line: 2278, column: 2, scope: !932)
!944 = !DILocation(line: 2279, column: 16, scope: !926)
!945 = !DILocation(line: 2284, column: 18, scope: !930)
!946 = !DILocation(line: 2285, column: 2, scope: !930)
!947 = !DILocation(line: 2291, column: 18, scope: !928)
!948 = !DILocation(line: 0, scope: !926)
!949 = !DILocation(line: 2294, column: 15, scope: !921)
!950 = !DILocation(line: 2294, column: 13, scope: !921)
!951 = !DILocation(line: 2295, column: 17, scope: !952)
!952 = distinct !DILexicalBlock(scope: !921, file: !3, line: 2295, column: 11)
!953 = !DILocation(line: 2295, column: 11, scope: !921)
!954 = !DILocation(line: 2297, column: 15, scope: !921)
!955 = !DILocation(line: 2299, column: 14, scope: !921)
!956 = !DILocation(line: 2300, column: 5, scope: !912)
!957 = distinct !{!957, !933, !956}
!958 = !DILocation(line: 2303, column: 1, scope: !912)
!959 = distinct !DISubprogram(name: "d_add_substitution", scope: !3, file: !3, line: 3064, type: !960, scopeLine: 3065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !962)
!960 = !DISubroutineType(types: !961)
!961 = !{!102, !597, !128}
!962 = !{!963, !964}
!963 = !DILocalVariable(name: "di", arg: 1, scope: !959, file: !3, line: 3064, type: !597)
!964 = !DILocalVariable(name: "dc", arg: 2, scope: !959, file: !3, line: 3064, type: !128)
!965 = !DILocation(line: 0, scope: !959)
!966 = !DILocation(line: 3066, column: 10, scope: !967)
!967 = distinct !DILexicalBlock(scope: !959, file: !3, line: 3066, column: 7)
!968 = !DILocation(line: 3066, column: 7, scope: !959)
!969 = !DILocation(line: 3068, column: 11, scope: !970)
!970 = distinct !DILexicalBlock(scope: !959, file: !3, line: 3068, column: 7)
!971 = !DILocation(line: 3068, column: 27, scope: !970)
!972 = !DILocation(line: 3068, column: 20, scope: !970)
!973 = !DILocation(line: 3068, column: 7, scope: !959)
!974 = !DILocation(line: 3070, column: 7, scope: !959)
!975 = !DILocation(line: 3070, column: 3, scope: !959)
!976 = !DILocation(line: 3070, column: 26, scope: !959)
!977 = !DILocation(line: 3071, column: 3, scope: !959)
!978 = !DILocation(line: 3072, column: 3, scope: !959)
!979 = !DILocation(line: 3073, column: 1, scope: !959)
!980 = distinct !DISubprogram(name: "d_make_builtin_type", scope: !3, file: !3, line: 902, type: !981, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{!128, !597, !178}
!983 = !{!984, !985, !986}
!984 = !DILocalVariable(name: "di", arg: 1, scope: !980, file: !3, line: 902, type: !597)
!985 = !DILocalVariable(name: "type", arg: 2, scope: !980, file: !3, line: 903, type: !178)
!986 = !DILocalVariable(name: "p", scope: !980, file: !3, line: 905, type: !128)
!987 = !DILocation(line: 0, scope: !980)
!988 = !DILocation(line: 907, column: 12, scope: !989)
!989 = distinct !DILexicalBlock(scope: !980, file: !3, line: 907, column: 7)
!990 = !DILocation(line: 907, column: 7, scope: !980)
!991 = !DILocation(line: 909, column: 7, scope: !980)
!992 = !DILocation(line: 910, column: 9, scope: !993)
!993 = distinct !DILexicalBlock(scope: !980, file: !3, line: 910, column: 7)
!994 = !DILocation(line: 910, column: 7, scope: !980)
!995 = !DILocation(line: 912, column: 10, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 911, column: 5)
!997 = !DILocation(line: 912, column: 15, scope: !996)
!998 = !DILocation(line: 913, column: 10, scope: !996)
!999 = !DILocation(line: 913, column: 22, scope: !996)
!1000 = !DILocation(line: 913, column: 27, scope: !996)
!1001 = !DILocation(line: 914, column: 5, scope: !996)
!1002 = !DILocation(line: 916, column: 1, scope: !980)
!1003 = distinct !DISubprogram(name: "d_make_comp", scope: !3, file: !3, line: 789, type: !1004, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!128, !597, !5, !128, !128}
!1006 = !{!1007, !1008, !1009, !1010, !1011}
!1007 = !DILocalVariable(name: "di", arg: 1, scope: !1003, file: !3, line: 789, type: !597)
!1008 = !DILocalVariable(name: "type", arg: 2, scope: !1003, file: !3, line: 789, type: !5)
!1009 = !DILocalVariable(name: "left", arg: 3, scope: !1003, file: !3, line: 790, type: !128)
!1010 = !DILocalVariable(name: "right", arg: 4, scope: !1003, file: !3, line: 791, type: !128)
!1011 = !DILocalVariable(name: "p", scope: !1003, file: !3, line: 793, type: !128)
!1012 = !DILocation(line: 0, scope: !1003)
!1013 = !DILocation(line: 798, column: 3, scope: !1003)
!1014 = !DILocation(line: 818, column: 16, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 818, column: 11)
!1016 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 799, column: 5)
!1017 = !DILocation(line: 818, column: 33, scope: !1015)
!1018 = !DILocation(line: 818, column: 24, scope: !1015)
!1019 = !DILocation(line: 847, column: 16, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 847, column: 11)
!1021 = !DILocation(line: 847, column: 11, scope: !1016)
!1022 = !DILocation(line: 854, column: 17, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 854, column: 11)
!1024 = !DILocation(line: 854, column: 11, scope: !1016)
!1025 = !DILocation(line: 876, column: 7, scope: !1003)
!1026 = !DILocation(line: 877, column: 9, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 877, column: 7)
!1028 = !DILocation(line: 877, column: 7, scope: !1003)
!1029 = !DILocation(line: 879, column: 10, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 878, column: 5)
!1031 = !DILocation(line: 879, column: 15, scope: !1030)
!1032 = !DILocation(line: 880, column: 10, scope: !1030)
!1033 = !DILocation(line: 880, column: 21, scope: !1030)
!1034 = !DILocation(line: 880, column: 26, scope: !1030)
!1035 = !DILocation(line: 881, column: 21, scope: !1030)
!1036 = !DILocation(line: 881, column: 27, scope: !1030)
!1037 = !DILocation(line: 882, column: 5, scope: !1030)
!1038 = !DILocation(line: 884, column: 1, scope: !1003)
!1039 = distinct !DISubprogram(name: "d_source_name", scope: !3, file: !3, line: 1418, type: !675, scopeLine: 1419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DILocalVariable(name: "di", arg: 1, scope: !1039, file: !3, line: 1418, type: !597)
!1042 = !DILocalVariable(name: "len", scope: !1039, file: !3, line: 1420, type: !196)
!1043 = !DILocalVariable(name: "ret", scope: !1039, file: !3, line: 1421, type: !128)
!1044 = !DILocation(line: 0, scope: !1039)
!1045 = !DILocation(line: 1423, column: 9, scope: !1039)
!1046 = !DILocation(line: 1424, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 1424, column: 7)
!1048 = !DILocation(line: 1424, column: 7, scope: !1039)
!1049 = !DILocation(line: 1426, column: 27, scope: !1039)
!1050 = !DILocation(line: 1426, column: 9, scope: !1039)
!1051 = !DILocation(line: 1427, column: 7, scope: !1039)
!1052 = !DILocation(line: 1427, column: 17, scope: !1039)
!1053 = !DILocation(line: 1428, column: 3, scope: !1039)
!1054 = !DILocation(line: 1429, column: 1, scope: !1039)
!1055 = distinct !DISubprogram(name: "d_function_type", scope: !3, file: !3, line: 2308, type: !675, scopeLine: 2309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1056)
!1056 = !{!1057, !1058}
!1057 = !DILocalVariable(name: "di", arg: 1, scope: !1055, file: !3, line: 2308, type: !597)
!1058 = !DILocalVariable(name: "ret", scope: !1055, file: !3, line: 2310, type: !128)
!1059 = !DILocation(line: 0, scope: !1055)
!1060 = !DILocation(line: 2312, column: 9, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 2312, column: 7)
!1062 = !DILocation(line: 2312, column: 7, scope: !1055)
!1063 = !DILocation(line: 2314, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 2314, column: 7)
!1065 = !DILocation(line: 2314, column: 24, scope: !1064)
!1066 = !DILocation(line: 2314, column: 7, scope: !1055)
!1067 = !DILocation(line: 2318, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 2315, column: 5)
!1069 = !DILocation(line: 2319, column: 5, scope: !1068)
!1070 = !DILocation(line: 2320, column: 9, scope: !1055)
!1071 = !DILocation(line: 2321, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 2321, column: 7)
!1073 = !DILocation(line: 2321, column: 7, scope: !1055)
!1074 = !DILocation(line: 2323, column: 3, scope: !1055)
!1075 = !DILocation(line: 2324, column: 1, scope: !1055)
!1076 = distinct !DISubprogram(name: "d_class_enum_type", scope: !3, file: !3, line: 2408, type: !675, scopeLine: 2409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1077)
!1077 = !{!1078}
!1078 = !DILocalVariable(name: "di", arg: 1, scope: !1076, file: !3, line: 2408, type: !597)
!1079 = !DILocation(line: 0, scope: !1076)
!1080 = !DILocation(line: 2410, column: 10, scope: !1076)
!1081 = !DILocation(line: 2410, column: 3, scope: !1076)
!1082 = distinct !DISubprogram(name: "d_array_type", scope: !3, file: !3, line: 2418, type: !675, scopeLine: 2419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1083)
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DILocalVariable(name: "di", arg: 1, scope: !1082, file: !3, line: 2418, type: !597)
!1085 = !DILocalVariable(name: "peek", scope: !1082, file: !3, line: 2420, type: !105)
!1086 = !DILocalVariable(name: "dim", scope: !1082, file: !3, line: 2421, type: !128)
!1087 = !DILocalVariable(name: "s", scope: !1088, file: !3, line: 2431, type: !103)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 2430, column: 5)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 2429, column: 12)
!1090 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 2427, column: 7)
!1091 = !DILocation(line: 0, scope: !1082)
!1092 = !DILocation(line: 2423, column: 9, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 2423, column: 7)
!1094 = !DILocation(line: 2423, column: 7, scope: !1082)
!1095 = !DILocation(line: 2426, column: 10, scope: !1082)
!1096 = !DILocation(line: 2427, column: 12, scope: !1090)
!1097 = !DILocation(line: 2427, column: 7, scope: !1082)
!1098 = !DILocation(line: 2429, column: 12, scope: !1089)
!1099 = !DILocation(line: 0, scope: !1088)
!1100 = !DILocation(line: 2434, column: 7, scope: !1088)
!1101 = !DILocation(line: 2436, column: 4, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 2435, column: 2)
!1103 = !DILocation(line: 2437, column: 11, scope: !1102)
!1104 = !DILocation(line: 2439, column: 14, scope: !1088)
!1105 = !DILocation(line: 2438, column: 2, scope: !1102)
!1106 = distinct !{!1106, !1100, !1107}
!1107 = !DILocation(line: 2439, column: 29, scope: !1088)
!1108 = !DILocation(line: 2440, column: 44, scope: !1088)
!1109 = !DILocation(line: 2440, column: 33, scope: !1088)
!1110 = !DILocation(line: 2440, column: 13, scope: !1088)
!1111 = !DILocation(line: 2441, column: 15, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 2441, column: 11)
!1113 = !DILocation(line: 2446, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 2445, column: 5)
!1115 = !DILocation(line: 2447, column: 15, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 2447, column: 11)
!1117 = !DILocation(line: 2447, column: 11, scope: !1114)
!1118 = !DILocation(line: 0, scope: !1090)
!1119 = !DILocation(line: 2451, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 2451, column: 7)
!1121 = !DILocation(line: 2451, column: 7, scope: !1082)
!1122 = !DILocation(line: 2455, column: 9, scope: !1082)
!1123 = !DILocation(line: 2454, column: 10, scope: !1082)
!1124 = !DILocation(line: 2454, column: 3, scope: !1082)
!1125 = !DILocation(line: 2456, column: 1, scope: !1082)
!1126 = distinct !DISubprogram(name: "d_pointer_to_member_type", scope: !3, file: !3, line: 2489, type: !675, scopeLine: 2490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1127 = !{!1128, !1129, !1130, !1131}
!1128 = !DILocalVariable(name: "di", arg: 1, scope: !1126, file: !3, line: 2489, type: !597)
!1129 = !DILocalVariable(name: "cl", scope: !1126, file: !3, line: 2491, type: !128)
!1130 = !DILocalVariable(name: "mem", scope: !1126, file: !3, line: 2492, type: !128)
!1131 = !DILocalVariable(name: "pmem", scope: !1126, file: !3, line: 2493, type: !214)
!1132 = !DILocation(line: 0, scope: !1126)
!1133 = !DILocation(line: 2492, column: 3, scope: !1126)
!1134 = !DILocation(line: 2495, column: 9, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 2495, column: 7)
!1136 = !DILocation(line: 2495, column: 7, scope: !1126)
!1137 = !DILocation(line: 2498, column: 8, scope: !1126)
!1138 = !DILocation(line: 2516, column: 10, scope: !1126)
!1139 = !DILocation(line: 2517, column: 12, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 2517, column: 7)
!1141 = !DILocation(line: 2517, column: 7, scope: !1126)
!1142 = !DILocation(line: 2519, column: 11, scope: !1126)
!1143 = !DILocation(line: 2519, column: 9, scope: !1126)
!1144 = !DILocation(line: 2520, column: 13, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 2520, column: 7)
!1146 = !DILocation(line: 2520, column: 7, scope: !1126)
!1147 = !DILocation(line: 2523, column: 12, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 2523, column: 7)
!1149 = !DILocation(line: 2523, column: 20, scope: !1148)
!1150 = !DILocation(line: 2523, column: 32, scope: !1148)
!1151 = !DILocation(line: 2523, column: 37, scope: !1148)
!1152 = !DILocation(line: 2523, column: 7, scope: !1126)
!1153 = !DILocation(line: 2525, column: 37, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 2525, column: 11)
!1155 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 2524, column: 5)
!1156 = !DILocation(line: 2525, column: 13, scope: !1154)
!1157 = !DILocation(line: 2525, column: 11, scope: !1155)
!1158 = !DILocation(line: 2529, column: 63, scope: !1126)
!1159 = !DILocation(line: 2529, column: 10, scope: !1126)
!1160 = !DILocation(line: 2529, column: 3, scope: !1126)
!1161 = !DILocation(line: 2530, column: 1, scope: !1126)
!1162 = distinct !DISubprogram(name: "d_template_param", scope: !3, file: !3, line: 2555, type: !675, scopeLine: 2556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1163)
!1163 = !{!1164, !1165}
!1164 = !DILocalVariable(name: "di", arg: 1, scope: !1162, file: !3, line: 2555, type: !597)
!1165 = !DILocalVariable(name: "param", scope: !1162, file: !3, line: 2557, type: !196)
!1166 = !DILocation(line: 0, scope: !1162)
!1167 = !DILocation(line: 2559, column: 9, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 2559, column: 7)
!1169 = !DILocation(line: 2559, column: 7, scope: !1162)
!1170 = !DILocation(line: 2562, column: 11, scope: !1162)
!1171 = !DILocation(line: 2563, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 2563, column: 7)
!1173 = !DILocation(line: 2563, column: 7, scope: !1162)
!1174 = !DILocation(line: 2566, column: 9, scope: !1162)
!1175 = !DILocation(line: 2566, column: 3, scope: !1162)
!1176 = !DILocation(line: 2568, column: 10, scope: !1162)
!1177 = !DILocation(line: 2568, column: 3, scope: !1162)
!1178 = !DILocation(line: 2569, column: 1, scope: !1162)
!1179 = distinct !DISubprogram(name: "d_template_args", scope: !3, file: !3, line: 2574, type: !675, scopeLine: 2575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185}
!1181 = !DILocalVariable(name: "di", arg: 1, scope: !1179, file: !3, line: 2574, type: !597)
!1182 = !DILocalVariable(name: "hold_last_name", scope: !1179, file: !3, line: 2576, type: !128)
!1183 = !DILocalVariable(name: "al", scope: !1179, file: !3, line: 2577, type: !128)
!1184 = !DILocalVariable(name: "pal", scope: !1179, file: !3, line: 2578, type: !214)
!1185 = !DILocalVariable(name: "a", scope: !1186, file: !3, line: 2599, type: !128)
!1186 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 2598, column: 5)
!1187 = !DILocation(line: 0, scope: !1179)
!1188 = !DILocation(line: 2577, column: 3, scope: !1179)
!1189 = !DILocation(line: 2583, column: 24, scope: !1179)
!1190 = !DILocation(line: 2585, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 2585, column: 7)
!1192 = !DILocation(line: 2585, column: 7, scope: !1179)
!1193 = !DILocation(line: 2588, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 2588, column: 7)
!1195 = !DILocation(line: 2588, column: 24, scope: !1194)
!1196 = !DILocation(line: 2588, column: 7, scope: !1179)
!1197 = !DILocation(line: 2591, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 2589, column: 5)
!1199 = !DILocation(line: 2592, column: 14, scope: !1198)
!1200 = !DILocation(line: 2592, column: 7, scope: !1198)
!1201 = !DILocation(line: 2595, column: 6, scope: !1179)
!1202 = !DILocation(line: 2597, column: 3, scope: !1179)
!1203 = !DILocation(line: 2596, column: 7, scope: !1179)
!1204 = !DILocation(line: 2601, column: 11, scope: !1186)
!1205 = !DILocation(line: 0, scope: !1186)
!1206 = !DILocation(line: 2602, column: 13, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 2602, column: 11)
!1208 = !DILocation(line: 2602, column: 11, scope: !1186)
!1209 = !DILocation(line: 2605, column: 14, scope: !1186)
!1210 = !DILocation(line: 2605, column: 12, scope: !1186)
!1211 = !DILocation(line: 2606, column: 16, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 2606, column: 11)
!1213 = !DILocation(line: 2606, column: 11, scope: !1186)
!1214 = !DILocation(line: 2608, column: 14, scope: !1186)
!1215 = !DILocation(line: 2610, column: 11, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 2610, column: 11)
!1217 = !DILocation(line: 2610, column: 28, scope: !1216)
!1218 = !DILocation(line: 2610, column: 11, scope: !1186)
!1219 = !DILocation(line: 2612, column: 4, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 2611, column: 2)
!1221 = !DILocation(line: 2613, column: 4, scope: !1220)
!1222 = distinct !{!1222, !1202, !1223}
!1223 = !DILocation(line: 2615, column: 5, scope: !1179)
!1224 = !DILocation(line: 2617, column: 17, scope: !1179)
!1225 = !DILocation(line: 2619, column: 10, scope: !1179)
!1226 = !DILocation(line: 2619, column: 3, scope: !1179)
!1227 = !DILocation(line: 2620, column: 1, scope: !1179)
!1228 = distinct !DISubprogram(name: "d_substitution", scope: !3, file: !3, line: 3120, type: !595, scopeLine: 3121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1236, !1240, !1242, !1244, !1245, !1248, !1254}
!1230 = !DILocalVariable(name: "di", arg: 1, scope: !1228, file: !3, line: 3120, type: !597)
!1231 = !DILocalVariable(name: "prefix", arg: 2, scope: !1228, file: !3, line: 3120, type: !102)
!1232 = !DILocalVariable(name: "c", scope: !1228, file: !3, line: 3122, type: !105)
!1233 = !DILocalVariable(name: "id", scope: !1234, file: !3, line: 3130, type: !7)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 3129, column: 5)
!1235 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 3128, column: 7)
!1236 = !DILocalVariable(name: "new_id", scope: !1237, file: !3, line: 3137, type: !7)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 3136, column: 6)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 3134, column: 2)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 3133, column: 11)
!1240 = !DILocalVariable(name: "verbose", scope: !1241, file: !3, line: 3164, type: !102)
!1241 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 3163, column: 5)
!1242 = !DILocalVariable(name: "p", scope: !1241, file: !3, line: 3165, type: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1244 = !DILocalVariable(name: "pend", scope: !1241, file: !3, line: 3166, type: !1243)
!1245 = !DILocalVariable(name: "peek", scope: !1246, file: !3, line: 3171, type: !105)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 3170, column: 2)
!1247 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 3169, column: 11)
!1248 = !DILocalVariable(name: "s", scope: !1249, file: !3, line: 3184, type: !103)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 3183, column: 6)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 3182, column: 8)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 3181, column: 2)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 3180, column: 7)
!1253 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 3180, column: 7)
!1254 = !DILocalVariable(name: "len", scope: !1249, file: !3, line: 3185, type: !102)
!1255 = !DILocation(line: 0, scope: !1228)
!1256 = !DILocation(line: 3124, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 3124, column: 7)
!1258 = !DILocation(line: 3124, column: 7, scope: !1228)
!1259 = !DILocation(line: 3127, column: 7, scope: !1228)
!1260 = !DILocation(line: 3128, column: 9, scope: !1235)
!1261 = !DILocation(line: 3128, column: 16, scope: !1235)
!1262 = !DILocation(line: 3128, column: 19, scope: !1235)
!1263 = !DILocation(line: 3128, column: 35, scope: !1235)
!1264 = !DILocation(line: 0, scope: !1234)
!1265 = !DILocation(line: 3133, column: 11, scope: !1234)
!1266 = !DILocation(line: 3135, column: 4, scope: !1238)
!1267 = !DILocation(line: 3132, column: 10, scope: !1234)
!1268 = !DILocation(line: 3127, column: 5, scope: !1228)
!1269 = !DILocation(line: 3139, column: 12, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 3139, column: 12)
!1271 = !DILocation(line: 3140, column: 15, scope: !1270)
!1272 = !DILocation(line: 3140, column: 22, scope: !1270)
!1273 = !DILocation(line: 3140, column: 20, scope: !1270)
!1274 = !DILocation(line: 3140, column: 24, scope: !1270)
!1275 = !DILocation(line: 0, scope: !1237)
!1276 = !DILocation(line: 3140, column: 3, scope: !1270)
!1277 = !DILocation(line: 3141, column: 17, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 3141, column: 17)
!1279 = !DILocation(line: 3142, column: 15, scope: !1278)
!1280 = !DILocation(line: 3142, column: 22, scope: !1278)
!1281 = !DILocation(line: 3142, column: 20, scope: !1278)
!1282 = !DILocation(line: 3142, column: 30, scope: !1278)
!1283 = !DILocation(line: 0, scope: !1270)
!1284 = !DILocation(line: 3145, column: 19, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 3145, column: 12)
!1286 = !DILocation(line: 3145, column: 12, scope: !1237)
!1287 = !DILocation(line: 3148, column: 12, scope: !1237)
!1288 = !DILocation(line: 3149, column: 6, scope: !1238)
!1289 = !DILocation(line: 3150, column: 13, scope: !1238)
!1290 = !DILocation(line: 3149, column: 6, scope: !1237)
!1291 = distinct !{!1291, !1266, !1292}
!1292 = !DILocation(line: 3150, column: 19, scope: !1238)
!1293 = !DILocation(line: 3152, column: 4, scope: !1238)
!1294 = !DILocation(line: 3153, column: 2, scope: !1238)
!1295 = !DILocation(line: 3155, column: 36, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 3155, column: 11)
!1297 = !DILocation(line: 3155, column: 14, scope: !1296)
!1298 = !DILocation(line: 3155, column: 11, scope: !1234)
!1299 = !DILocation(line: 3158, column: 13, scope: !1234)
!1300 = !DILocation(line: 3158, column: 7, scope: !1234)
!1301 = !DILocation(line: 3160, column: 18, scope: !1234)
!1302 = !DILocation(line: 3160, column: 14, scope: !1234)
!1303 = !DILocation(line: 3160, column: 7, scope: !1234)
!1304 = !DILocation(line: 3168, column: 22, scope: !1241)
!1305 = !DILocation(line: 3168, column: 46, scope: !1241)
!1306 = !DILocation(line: 0, scope: !1241)
!1307 = !DILocation(line: 3169, column: 13, scope: !1247)
!1308 = !DILocation(line: 3169, column: 24, scope: !1247)
!1309 = !DILocation(line: 3169, column: 21, scope: !1247)
!1310 = !DILocation(line: 3173, column: 11, scope: !1246)
!1311 = !DILocation(line: 0, scope: !1246)
!1312 = !DILocation(line: 3174, column: 20, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 3174, column: 8)
!1314 = !DILocation(line: 3180, column: 12, scope: !1253)
!1315 = !DILocation(line: 0, scope: !1253)
!1316 = !DILocation(line: 3180, column: 37, scope: !1252)
!1317 = !DILocation(line: 3180, column: 7, scope: !1253)
!1318 = !DILocation(line: 3182, column: 16, scope: !1250)
!1319 = !DILocation(line: 3182, column: 10, scope: !1250)
!1320 = !DILocation(line: 3182, column: 8, scope: !1251)
!1321 = !DILocation(line: 3187, column: 15, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 3187, column: 12)
!1323 = !DILocation(line: 3187, column: 29, scope: !1322)
!1324 = !DILocation(line: 3187, column: 12, scope: !1249)
!1325 = !DILocation(line: 3189, column: 13, scope: !1322)
!1326 = !DILocation(line: 3188, column: 19, scope: !1322)
!1327 = !DILocation(line: 3188, column: 7, scope: !1322)
!1328 = !DILocation(line: 3188, column: 17, scope: !1322)
!1329 = !DILocation(line: 3188, column: 3, scope: !1322)
!1330 = !DILocation(line: 3190, column: 12, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 3190, column: 12)
!1332 = !DILocation(line: 3190, column: 12, scope: !1249)
!1333 = !DILocation(line: 3192, column: 12, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 3191, column: 3)
!1335 = !DILocation(line: 3193, column: 14, scope: !1334)
!1336 = !DILocation(line: 3194, column: 3, scope: !1334)
!1337 = !DILocation(line: 3197, column: 12, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 3196, column: 3)
!1339 = !DILocation(line: 3198, column: 14, scope: !1338)
!1340 = !DILocation(line: 0, scope: !1331)
!1341 = !DILocation(line: 0, scope: !1249)
!1342 = !DILocation(line: 3200, column: 12, scope: !1249)
!1343 = !DILocation(line: 3200, column: 22, scope: !1249)
!1344 = !DILocation(line: 3201, column: 15, scope: !1249)
!1345 = !DILocation(line: 3180, column: 45, scope: !1252)
!1346 = !DILocation(line: 3180, column: 7, scope: !1252)
!1347 = distinct !{!1347, !1317, !1348}
!1348 = !DILocation(line: 3203, column: 2, scope: !1253)
!1349 = !DILocation(line: 3207, column: 1, scope: !1228)
!1350 = distinct !DISubprogram(name: "d_expression", scope: !3, file: !3, line: 2700, type: !675, scopeLine: 2701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1351)
!1351 = !{!1352, !1353, !1354, !1359, !1360, !1364, !1367, !1369, !1370, !1373, !1375, !1376, !1377, !1379}
!1352 = !DILocalVariable(name: "di", arg: 1, scope: !1350, file: !3, line: 2700, type: !597)
!1353 = !DILocalVariable(name: "peek", scope: !1350, file: !3, line: 2702, type: !105)
!1354 = !DILocalVariable(name: "type", scope: !1355, file: !3, line: 2711, type: !128)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 2710, column: 5)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 2709, column: 12)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 2707, column: 12)
!1358 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 2705, column: 7)
!1359 = !DILocalVariable(name: "name", scope: !1355, file: !3, line: 2712, type: !128)
!1360 = !DILocalVariable(name: "index", scope: !1361, file: !3, line: 2733, type: !102)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 2731, column: 5)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 2730, column: 12)
!1363 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 2724, column: 12)
!1364 = !DILocalVariable(name: "name", scope: !1365, file: !3, line: 2746, type: !128)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 2743, column: 5)
!1366 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 2741, column: 12)
!1367 = !DILocalVariable(name: "op", scope: !1368, file: !3, line: 2763, type: !128)
!1368 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 2762, column: 5)
!1369 = !DILocalVariable(name: "args", scope: !1368, file: !3, line: 2764, type: !102)
!1370 = !DILocalVariable(name: "operand", scope: !1371, file: !3, line: 2797, type: !128)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 2796, column: 4)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 2794, column: 2)
!1373 = !DILocalVariable(name: "left", scope: !1374, file: !3, line: 2808, type: !128)
!1374 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 2807, column: 4)
!1375 = !DILocalVariable(name: "right", scope: !1374, file: !3, line: 2809, type: !128)
!1376 = !DILocalVariable(name: "code", scope: !1374, file: !3, line: 2810, type: !103)
!1377 = !DILocalVariable(name: "first", scope: !1378, file: !3, line: 2832, type: !128)
!1378 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 2831, column: 4)
!1379 = !DILocalVariable(name: "second", scope: !1378, file: !3, line: 2833, type: !128)
!1380 = !DILocation(line: 0, scope: !1350)
!1381 = !DILocation(line: 2704, column: 10, scope: !1350)
!1382 = !DILocation(line: 2705, column: 12, scope: !1358)
!1383 = !DILocation(line: 2705, column: 7, scope: !1350)
!1384 = !DILocation(line: 2706, column: 12, scope: !1358)
!1385 = !DILocation(line: 2706, column: 5, scope: !1358)
!1386 = !DILocation(line: 2707, column: 17, scope: !1357)
!1387 = !DILocation(line: 2707, column: 12, scope: !1358)
!1388 = !DILocation(line: 2708, column: 12, scope: !1357)
!1389 = !DILocation(line: 2708, column: 5, scope: !1357)
!1390 = !DILocation(line: 2709, column: 17, scope: !1356)
!1391 = !DILocation(line: 2709, column: 24, scope: !1356)
!1392 = !DILocation(line: 2709, column: 27, scope: !1356)
!1393 = !DILocation(line: 2709, column: 49, scope: !1356)
!1394 = !DILocation(line: 2709, column: 12, scope: !1357)
!1395 = !DILocation(line: 2714, column: 7, scope: !1355)
!1396 = !DILocation(line: 2715, column: 14, scope: !1355)
!1397 = !DILocation(line: 0, scope: !1355)
!1398 = !DILocation(line: 2716, column: 14, scope: !1355)
!1399 = !DILocation(line: 2717, column: 11, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 2717, column: 11)
!1401 = !DILocation(line: 2717, column: 28, scope: !1400)
!1402 = !DILocation(line: 2717, column: 11, scope: !1355)
!1403 = !DILocation(line: 2718, column: 9, scope: !1400)
!1404 = !DILocation(line: 2718, column: 2, scope: !1400)
!1405 = !DILocation(line: 2722, column: 7, scope: !1400)
!1406 = !DILocation(line: 2721, column: 8, scope: !1400)
!1407 = !DILocation(line: 2720, column: 9, scope: !1400)
!1408 = !DILocation(line: 2720, column: 2, scope: !1400)
!1409 = !DILocation(line: 2724, column: 24, scope: !1363)
!1410 = !DILocation(line: 2724, column: 27, scope: !1363)
!1411 = !DILocation(line: 2724, column: 49, scope: !1363)
!1412 = !DILocation(line: 2724, column: 12, scope: !1356)
!1413 = !DILocation(line: 2726, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 2725, column: 5)
!1415 = !DILocation(line: 2728, column: 6, scope: !1414)
!1416 = !DILocation(line: 2727, column: 14, scope: !1414)
!1417 = !DILocation(line: 2850, column: 1, scope: !1350)
!1418 = !DILocation(line: 2730, column: 17, scope: !1362)
!1419 = !DILocation(line: 2730, column: 24, scope: !1362)
!1420 = !DILocation(line: 2730, column: 27, scope: !1362)
!1421 = !DILocation(line: 2730, column: 49, scope: !1362)
!1422 = !DILocation(line: 2730, column: 12, scope: !1363)
!1423 = !DILocation(line: 2734, column: 7, scope: !1361)
!1424 = !DILocation(line: 2735, column: 15, scope: !1361)
!1425 = !DILocation(line: 0, scope: !1361)
!1426 = !DILocation(line: 2736, column: 17, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 2736, column: 11)
!1428 = !DILocation(line: 2736, column: 11, scope: !1361)
!1429 = !DILocation(line: 2739, column: 41, scope: !1361)
!1430 = !DILocation(line: 2739, column: 14, scope: !1361)
!1431 = !DILocation(line: 2739, column: 7, scope: !1361)
!1432 = !DILocation(line: 2741, column: 12, scope: !1366)
!1433 = !DILocation(line: 2742, column: 14, scope: !1366)
!1434 = !DILocation(line: 2742, column: 21, scope: !1366)
!1435 = !DILocation(line: 2742, column: 24, scope: !1366)
!1436 = !DILocation(line: 2742, column: 46, scope: !1366)
!1437 = !DILocation(line: 2741, column: 12, scope: !1362)
!1438 = !DILocation(line: 2748, column: 16, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 2748, column: 11)
!1440 = !DILocation(line: 2748, column: 11, scope: !1365)
!1441 = !DILocation(line: 2750, column: 2, scope: !1439)
!1442 = !DILocation(line: 2752, column: 14, scope: !1365)
!1443 = !DILocation(line: 0, scope: !1365)
!1444 = !DILocation(line: 2753, column: 16, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 2753, column: 11)
!1446 = !DILocation(line: 2753, column: 11, scope: !1365)
!1447 = !DILocation(line: 2755, column: 11, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 2755, column: 11)
!1449 = !DILocation(line: 2755, column: 28, scope: !1448)
!1450 = !DILocation(line: 2755, column: 11, scope: !1365)
!1451 = !DILocation(line: 2757, column: 8, scope: !1448)
!1452 = !DILocation(line: 2756, column: 9, scope: !1448)
!1453 = !DILocation(line: 2756, column: 2, scope: !1448)
!1454 = !DILocation(line: 2766, column: 12, scope: !1368)
!1455 = !DILocation(line: 0, scope: !1368)
!1456 = !DILocation(line: 2767, column: 14, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 2767, column: 11)
!1458 = !DILocation(line: 2767, column: 11, scope: !1368)
!1459 = !DILocation(line: 2770, column: 15, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 2770, column: 11)
!1461 = !DILocation(line: 2770, column: 20, scope: !1460)
!1462 = !DILocation(line: 2770, column: 11, scope: !1368)
!1463 = !DILocation(line: 2771, column: 23, scope: !1460)
!1464 = !DILocation(line: 2771, column: 36, scope: !1460)
!1465 = !DILocation(line: 2771, column: 40, scope: !1460)
!1466 = !DILocation(line: 2771, column: 44, scope: !1460)
!1467 = !DILocation(line: 2771, column: 6, scope: !1460)
!1468 = !DILocation(line: 2771, column: 16, scope: !1460)
!1469 = !DILocation(line: 2773, column: 15, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 2773, column: 11)
!1471 = !DILocation(line: 2771, column: 2, scope: !1460)
!1472 = !DILocation(line: 2773, column: 20, scope: !1470)
!1473 = !DILocation(line: 2774, column: 4, scope: !1470)
!1474 = !DILocation(line: 2774, column: 19, scope: !1470)
!1475 = !DILocation(line: 2774, column: 32, scope: !1470)
!1476 = !DILocation(line: 2774, column: 36, scope: !1470)
!1477 = !DILocation(line: 2774, column: 7, scope: !1470)
!1478 = !DILocation(line: 2774, column: 48, scope: !1470)
!1479 = !DILocation(line: 2773, column: 11, scope: !1368)
!1480 = !DILocation(line: 2778, column: 19, scope: !1368)
!1481 = !DILocation(line: 2776, column: 8, scope: !1470)
!1482 = !DILocation(line: 2775, column: 9, scope: !1470)
!1483 = !DILocation(line: 2775, column: 2, scope: !1470)
!1484 = !DILocation(line: 2778, column: 7, scope: !1368)
!1485 = !DILocation(line: 2783, column: 15, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 2779, column: 2)
!1487 = !DILocation(line: 2783, column: 28, scope: !1486)
!1488 = !DILocation(line: 2783, column: 32, scope: !1486)
!1489 = !DILocation(line: 2784, column: 4, scope: !1486)
!1490 = !DILocation(line: 2786, column: 15, scope: !1486)
!1491 = !DILocation(line: 2786, column: 37, scope: !1486)
!1492 = !DILocation(line: 2787, column: 4, scope: !1486)
!1493 = !DILocation(line: 0, scope: !1486)
!1494 = !DILocation(line: 2793, column: 7, scope: !1368)
!1495 = !DILocation(line: 2798, column: 19, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 2798, column: 10)
!1497 = !DILocation(line: 2799, column: 3, scope: !1496)
!1498 = !DILocation(line: 2799, column: 6, scope: !1496)
!1499 = !DILocation(line: 2798, column: 10, scope: !1371)
!1500 = !DILocation(line: 2800, column: 18, scope: !1496)
!1501 = !DILocation(line: 0, scope: !1371)
!1502 = !DILocation(line: 2800, column: 8, scope: !1496)
!1503 = !DILocation(line: 2802, column: 18, scope: !1496)
!1504 = !DILocation(line: 0, scope: !1496)
!1505 = !DILocation(line: 2803, column: 13, scope: !1371)
!1506 = !DILocation(line: 2810, column: 29, scope: !1374)
!1507 = !DILocation(line: 2810, column: 42, scope: !1374)
!1508 = !DILocation(line: 2810, column: 46, scope: !1374)
!1509 = !DILocation(line: 0, scope: !1374)
!1510 = !DILocation(line: 2812, column: 13, scope: !1374)
!1511 = !DILocation(line: 2813, column: 11, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 2813, column: 10)
!1513 = !DILocation(line: 2813, column: 10, scope: !1374)
!1514 = !DILocation(line: 2814, column: 16, scope: !1512)
!1515 = !DILocation(line: 2814, column: 8, scope: !1512)
!1516 = !DILocation(line: 2815, column: 16, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 2815, column: 15)
!1518 = !DILocation(line: 2815, column: 36, scope: !1517)
!1519 = !DILocation(line: 2815, column: 40, scope: !1517)
!1520 = !DILocation(line: 2815, column: 15, scope: !1512)
!1521 = !DILocation(line: 2817, column: 11, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 2816, column: 8)
!1523 = !DILocation(line: 2818, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 2818, column: 7)
!1525 = !DILocation(line: 2818, column: 24, scope: !1524)
!1526 = !DILocation(line: 2818, column: 7, scope: !1522)
!1527 = !DILocation(line: 2820, column: 19, scope: !1524)
!1528 = !DILocation(line: 2819, column: 13, scope: !1524)
!1529 = !DILocation(line: 2819, column: 5, scope: !1524)
!1530 = !DILocation(line: 2823, column: 16, scope: !1517)
!1531 = !DILocation(line: 0, scope: !1512)
!1532 = !DILocation(line: 2826, column: 5, scope: !1374)
!1533 = !DILocation(line: 2825, column: 13, scope: !1374)
!1534 = !DILocation(line: 2835, column: 14, scope: !1378)
!1535 = !DILocation(line: 0, scope: !1378)
!1536 = !DILocation(line: 2836, column: 15, scope: !1378)
!1537 = !DILocation(line: 2844, column: 10, scope: !1378)
!1538 = !DILocation(line: 2841, column: 11, scope: !1378)
!1539 = !DILocation(line: 2838, column: 5, scope: !1378)
!1540 = !DILocation(line: 2837, column: 13, scope: !1378)
!1541 = !DILocation(line: 0, scope: !1358)
!1542 = distinct !DISubprogram(name: "d_make_empty", scope: !3, file: !3, line: 775, type: !675, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1543)
!1543 = !{!1544, !1545}
!1544 = !DILocalVariable(name: "di", arg: 1, scope: !1542, file: !3, line: 775, type: !597)
!1545 = !DILocalVariable(name: "p", scope: !1542, file: !3, line: 777, type: !128)
!1546 = !DILocation(line: 0, scope: !1542)
!1547 = !DILocation(line: 779, column: 11, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 779, column: 7)
!1549 = !DILocation(line: 779, column: 28, scope: !1548)
!1550 = !DILocation(line: 779, column: 21, scope: !1548)
!1551 = !DILocation(line: 779, column: 7, scope: !1542)
!1552 = !DILocation(line: 781, column: 12, scope: !1542)
!1553 = !DILocation(line: 781, column: 8, scope: !1542)
!1554 = !DILocation(line: 782, column: 3, scope: !1542)
!1555 = !DILocation(line: 783, column: 3, scope: !1542)
!1556 = !DILocation(line: 784, column: 1, scope: !1542)
!1557 = distinct !DISubprogram(name: "d_number", scope: !3, file: !3, line: 1434, type: !1558, scopeLine: 1435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1560)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!196, !597}
!1560 = !{!1561, !1562, !1563, !1564}
!1561 = !DILocalVariable(name: "di", arg: 1, scope: !1557, file: !3, line: 1434, type: !597)
!1562 = !DILocalVariable(name: "negative", scope: !1557, file: !3, line: 1436, type: !102)
!1563 = !DILocalVariable(name: "peek", scope: !1557, file: !3, line: 1437, type: !105)
!1564 = !DILocalVariable(name: "ret", scope: !1557, file: !3, line: 1438, type: !196)
!1565 = !DILocation(line: 0, scope: !1557)
!1566 = !DILocation(line: 1441, column: 10, scope: !1557)
!1567 = !DILocation(line: 1442, column: 12, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1442, column: 7)
!1569 = !DILocation(line: 1442, column: 7, scope: !1557)
!1570 = !DILocation(line: 1445, column: 7, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 1443, column: 5)
!1572 = !DILocation(line: 1446, column: 14, scope: !1571)
!1573 = !DILocation(line: 1447, column: 5, scope: !1571)
!1574 = !DILocation(line: 1450, column: 3, scope: !1557)
!1575 = !DILocation(line: 1452, column: 13, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 1452, column: 11)
!1577 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1451, column: 5)
!1578 = !DILocation(line: 1454, column: 8, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1454, column: 8)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 1453, column: 2)
!1581 = !DILocation(line: 1455, column: 12, scope: !1579)
!1582 = !DILocation(line: 1454, column: 8, scope: !1580)
!1583 = !DILocation(line: 1456, column: 4, scope: !1580)
!1584 = !DILocation(line: 1458, column: 17, scope: !1577)
!1585 = !DILocation(line: 1458, column: 24, scope: !1577)
!1586 = !DILocation(line: 1458, column: 22, scope: !1577)
!1587 = !DILocation(line: 1458, column: 29, scope: !1577)
!1588 = !DILocation(line: 1459, column: 7, scope: !1577)
!1589 = !DILocation(line: 1460, column: 14, scope: !1577)
!1590 = distinct !{!1590, !1574, !1591}
!1591 = !DILocation(line: 1461, column: 5, scope: !1557)
!1592 = distinct !DISubprogram(name: "d_vector_type", scope: !3, file: !3, line: 2462, type: !675, scopeLine: 2463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1593)
!1593 = !{!1594, !1595, !1596}
!1594 = !DILocalVariable(name: "di", arg: 1, scope: !1592, file: !3, line: 2462, type: !597)
!1595 = !DILocalVariable(name: "peek", scope: !1592, file: !3, line: 2464, type: !105)
!1596 = !DILocalVariable(name: "dim", scope: !1592, file: !3, line: 2465, type: !128)
!1597 = !DILocation(line: 0, scope: !1592)
!1598 = !DILocation(line: 2467, column: 10, scope: !1592)
!1599 = !DILocation(line: 2468, column: 12, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 2468, column: 7)
!1601 = !DILocation(line: 2468, column: 7, scope: !1592)
!1602 = !DILocation(line: 2470, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 2469, column: 5)
!1604 = !DILocation(line: 2471, column: 13, scope: !1603)
!1605 = !DILocation(line: 2472, column: 5, scope: !1603)
!1606 = !DILocation(line: 2474, column: 11, scope: !1600)
!1607 = !DILocation(line: 0, scope: !1600)
!1608 = !DILocation(line: 2476, column: 11, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 2476, column: 7)
!1610 = !DILocation(line: 2476, column: 7, scope: !1592)
!1611 = !DILocation(line: 2479, column: 9, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 2479, column: 7)
!1613 = !DILocation(line: 2479, column: 7, scope: !1592)
!1614 = !DILocation(line: 2483, column: 9, scope: !1592)
!1615 = !DILocation(line: 2482, column: 10, scope: !1592)
!1616 = !DILocation(line: 2482, column: 3, scope: !1592)
!1617 = !DILocation(line: 2484, column: 1, scope: !1592)
!1618 = distinct !DISubprogram(name: "cplus_demangle_print_callback", scope: !3, file: !3, line: 3379, type: !1619, scopeLine: 3382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1623)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!102, !102, !1621, !106, !113}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1623 = !{!1624, !1625, !1626, !1627, !1628}
!1624 = !DILocalVariable(name: "options", arg: 1, scope: !1618, file: !3, line: 3379, type: !102)
!1625 = !DILocalVariable(name: "dc", arg: 2, scope: !1618, file: !3, line: 3380, type: !1621)
!1626 = !DILocalVariable(name: "callback", arg: 3, scope: !1618, file: !3, line: 3381, type: !106)
!1627 = !DILocalVariable(name: "opaque", arg: 4, scope: !1618, file: !3, line: 3381, type: !113)
!1628 = !DILocalVariable(name: "dpi", scope: !1618, file: !3, line: 3383, type: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "d_print_info", file: !3, line: 295, size: 2560, elements: !1630)
!1630 = !{!1631, !1632, !1636, !1637, !1638, !1639, !1640, !1646, !1654, !1655}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1629, file: !3, line: 298, baseType: !102, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1629, file: !3, line: 301, baseType: !1633, size: 2048, offset: 32)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 2048, elements: !1634)
!1634 = !{!1635}
!1635 = !DISubrange(count: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1629, file: !3, line: 303, baseType: !110, size: 64, offset: 2112)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "last_char", scope: !1629, file: !3, line: 306, baseType: !105, size: 8, offset: 2176)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1629, file: !3, line: 308, baseType: !106, size: 64, offset: 2240)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1629, file: !3, line: 310, baseType: !113, size: 64, offset: 2304)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "templates", scope: !1629, file: !3, line: 312, baseType: !1641, size: 64, offset: 2368)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "d_print_template", file: !3, line: 257, size: 128, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1642, file: !3, line: 260, baseType: !1641, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "template_decl", scope: !1642, file: !3, line: 262, baseType: !1621, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !1629, file: !3, line: 315, baseType: !1647, size: 64, offset: 2432)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "d_print_mod", file: !3, line: 267, size: 256, elements: !1649)
!1649 = !{!1650, !1651, !1652, !1653}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1648, file: !3, line: 271, baseType: !1647, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1648, file: !3, line: 273, baseType: !1621, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1648, file: !3, line: 275, baseType: !102, size: 32, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "templates", scope: !1648, file: !3, line: 277, baseType: !1641, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "demangle_failure", scope: !1629, file: !3, line: 317, baseType: !102, size: 32, offset: 2496)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pack_index", scope: !1629, file: !3, line: 320, baseType: !102, size: 32, offset: 2528)
!1656 = !DILocation(line: 0, scope: !1618)
!1657 = !DILocation(line: 3383, column: 3, scope: !1618)
!1658 = !DILocation(line: 3385, column: 3, scope: !1618)
!1659 = !DILocation(line: 3387, column: 3, scope: !1618)
!1660 = !DILocation(line: 3389, column: 3, scope: !1618)
!1661 = !DILocation(line: 3391, column: 12, scope: !1618)
!1662 = !DILocation(line: 3391, column: 10, scope: !1618)
!1663 = !DILocation(line: 3392, column: 1, scope: !1618)
!1664 = !DILocation(line: 3391, column: 3, scope: !1618)
!1665 = distinct !DISubprogram(name: "d_print_init", scope: !3, file: !3, line: 3288, type: !1666, scopeLine: 3290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1669)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !1668, !102, !106, !113}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1669 = !{!1670, !1671, !1672, !1673}
!1670 = !DILocalVariable(name: "dpi", arg: 1, scope: !1665, file: !3, line: 3288, type: !1668)
!1671 = !DILocalVariable(name: "options", arg: 2, scope: !1665, file: !3, line: 3288, type: !102)
!1672 = !DILocalVariable(name: "callback", arg: 3, scope: !1665, file: !3, line: 3289, type: !106)
!1673 = !DILocalVariable(name: "opaque", arg: 4, scope: !1665, file: !3, line: 3289, type: !113)
!1674 = !DILocation(line: 0, scope: !1665)
!1675 = !DILocation(line: 3291, column: 8, scope: !1665)
!1676 = !DILocation(line: 3291, column: 16, scope: !1665)
!1677 = !DILocation(line: 3292, column: 8, scope: !1665)
!1678 = !DILocation(line: 3292, column: 12, scope: !1665)
!1679 = !DILocation(line: 3293, column: 8, scope: !1665)
!1680 = !DILocation(line: 3293, column: 18, scope: !1665)
!1681 = !DILocation(line: 3294, column: 8, scope: !1665)
!1682 = !DILocation(line: 3294, column: 18, scope: !1665)
!1683 = !DILocation(line: 3295, column: 8, scope: !1665)
!1684 = !DILocation(line: 3295, column: 18, scope: !1665)
!1685 = !DILocation(line: 3297, column: 8, scope: !1665)
!1686 = !DILocation(line: 3297, column: 17, scope: !1665)
!1687 = !DILocation(line: 3298, column: 8, scope: !1665)
!1688 = !DILocation(line: 3298, column: 15, scope: !1665)
!1689 = !DILocation(line: 3300, column: 8, scope: !1665)
!1690 = !DILocation(line: 3300, column: 25, scope: !1665)
!1691 = !DILocation(line: 3301, column: 1, scope: !1665)
!1692 = distinct !DISubprogram(name: "d_print_comp", scope: !3, file: !3, line: 3546, type: !1693, scopeLine: 3548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{null, !1668, !1621}
!1695 = !{!1696, !1697, !1698, !1701, !1702, !1706, !1707, !1708, !1711, !1713, !1714, !1716, !1717, !1719, !1721, !1725, !1727, !1728, !1729, !1730, !1732, !1735, !1737, !1739, !1741, !1742}
!1696 = !DILocalVariable(name: "dpi", arg: 1, scope: !1692, file: !3, line: 3546, type: !1668)
!1697 = !DILocalVariable(name: "dc", arg: 2, scope: !1692, file: !3, line: 3547, type: !1621)
!1698 = !DILocalVariable(name: "hold_modifiers", scope: !1699, file: !3, line: 3578, type: !1647)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3577, column: 7)
!1700 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 3558, column: 5)
!1701 = !DILocalVariable(name: "typed_name", scope: !1699, file: !3, line: 3579, type: !128)
!1702 = !DILocalVariable(name: "adpm", scope: !1699, file: !3, line: 3580, type: !1703)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1648, size: 1024, elements: !1704)
!1704 = !{!1705}
!1705 = !DISubrange(count: 4)
!1706 = !DILocalVariable(name: "i", scope: !1699, file: !3, line: 3581, type: !7)
!1707 = !DILocalVariable(name: "dpt", scope: !1699, file: !3, line: 3582, type: !1642)
!1708 = !DILocalVariable(name: "local_name", scope: !1709, file: !3, line: 3635, type: !128)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 3634, column: 4)
!1710 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 3633, column: 6)
!1711 = !DILocalVariable(name: "hold_dpm", scope: !1712, file: !3, line: 3687, type: !1647)
!1712 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3686, column: 7)
!1713 = !DILocalVariable(name: "dcl", scope: !1712, file: !3, line: 3688, type: !128)
!1714 = !DILocalVariable(name: "hold_dpt", scope: !1715, file: !3, line: 3731, type: !1641)
!1715 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3730, column: 7)
!1716 = !DILocalVariable(name: "a", scope: !1715, file: !3, line: 3732, type: !128)
!1717 = !DILocalVariable(name: "pdpm", scope: !1718, file: !3, line: 3842, type: !1647)
!1718 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3841, column: 7)
!1719 = !DILocalVariable(name: "dpm", scope: !1720, file: !3, line: 3876, type: !1648)
!1720 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3874, column: 7)
!1721 = !DILocalVariable(name: "dpm", scope: !1722, file: !3, line: 3917, type: !1648)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 3916, column: 4)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 3915, column: 6)
!1724 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3910, column: 7)
!1725 = !DILocalVariable(name: "hold_modifiers", scope: !1726, file: !3, line: 3948, type: !1647)
!1726 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3947, column: 7)
!1727 = !DILocalVariable(name: "adpm", scope: !1726, file: !3, line: 3949, type: !1703)
!1728 = !DILocalVariable(name: "i", scope: !1726, file: !3, line: 3950, type: !7)
!1729 = !DILocalVariable(name: "pdpm", scope: !1726, file: !3, line: 3951, type: !1647)
!1730 = !DILocalVariable(name: "dpm", scope: !1731, file: !3, line: 4015, type: !1648)
!1731 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4014, column: 7)
!1732 = !DILocalVariable(name: "len", scope: !1733, file: !3, line: 4057, type: !110)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 4056, column: 2)
!1734 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4055, column: 11)
!1735 = !DILocalVariable(name: "c", scope: !1736, file: !3, line: 4070, type: !105)
!1736 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4069, column: 7)
!1737 = !DILocalVariable(name: "tp", scope: !1738, file: !3, line: 4167, type: !85)
!1738 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4166, column: 7)
!1739 = !DILocalVariable(name: "len", scope: !1740, file: !3, line: 4274, type: !102)
!1740 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4273, column: 7)
!1741 = !DILocalVariable(name: "i", scope: !1740, file: !3, line: 4275, type: !102)
!1742 = !DILocalVariable(name: "a", scope: !1740, file: !3, line: 4276, type: !128)
!1743 = !DILocation(line: 0, scope: !1692)
!1744 = !DILocation(line: 3549, column: 10, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 3549, column: 7)
!1746 = !DILocation(line: 3549, column: 7, scope: !1692)
!1747 = !DILocation(line: 3551, column: 7, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 3550, column: 5)
!1749 = !DILocation(line: 3552, column: 7, scope: !1748)
!1750 = !DILocation(line: 3554, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 3554, column: 7)
!1752 = !DILocation(line: 3554, column: 7, scope: !1692)
!1753 = !DILocation(line: 3557, column: 15, scope: !1692)
!1754 = !DILocation(line: 3557, column: 3, scope: !1692)
!1755 = !DILocation(line: 3560, column: 17, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3560, column: 11)
!1757 = !DILocation(line: 3560, column: 25, scope: !1756)
!1758 = !DILocation(line: 3560, column: 38, scope: !1756)
!1759 = !DILocation(line: 0, scope: !1756)
!1760 = !DILocation(line: 3560, column: 11, scope: !1700)
!1761 = !DILocation(line: 3561, column: 40, scope: !1756)
!1762 = !DILocation(line: 3561, column: 2, scope: !1756)
!1763 = !DILocation(line: 3563, column: 2, scope: !1756)
!1764 = !DILocation(line: 3568, column: 26, scope: !1700)
!1765 = !DILocation(line: 3568, column: 7, scope: !1700)
!1766 = !DILocation(line: 3569, column: 17, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3569, column: 11)
!1768 = !DILocation(line: 3569, column: 25, scope: !1767)
!1769 = !DILocation(line: 3569, column: 38, scope: !1767)
!1770 = !DILocation(line: 3569, column: 11, scope: !1700)
!1771 = !DILocation(line: 3570, column: 2, scope: !1767)
!1772 = !DILocation(line: 3572, column: 2, scope: !1767)
!1773 = !DILocation(line: 3573, column: 26, scope: !1700)
!1774 = !DILocation(line: 3573, column: 7, scope: !1700)
!1775 = !DILocation(line: 3574, column: 7, scope: !1700)
!1776 = !DILocation(line: 3580, column: 2, scope: !1699)
!1777 = !DILocation(line: 3580, column: 21, scope: !1699)
!1778 = !DILocation(line: 3582, column: 2, scope: !1699)
!1779 = !DILocation(line: 3587, column: 24, scope: !1699)
!1780 = !DILocation(line: 3588, column: 17, scope: !1699)
!1781 = !DILocation(line: 0, scope: !1699)
!1782 = !DILocation(line: 0, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 3592, column: 4)
!1784 = !DILocation(line: 3591, column: 2, scope: !1699)
!1785 = !DILocation(line: 3591, column: 20, scope: !1699)
!1786 = !DILocation(line: 3593, column: 12, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 3593, column: 10)
!1788 = !DILocation(line: 3593, column: 10, scope: !1783)
!1789 = !DILocation(line: 3595, column: 3, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 3594, column: 8)
!1791 = !DILocation(line: 3596, column: 3, scope: !1790)
!1792 = !DILocation(line: 3599, column: 6, scope: !1783)
!1793 = !DILocation(line: 3599, column: 19, scope: !1783)
!1794 = !DILocation(line: 3600, column: 21, scope: !1783)
!1795 = !DILocation(line: 3601, column: 14, scope: !1783)
!1796 = !DILocation(line: 3601, column: 18, scope: !1783)
!1797 = !DILocation(line: 3602, column: 14, scope: !1783)
!1798 = !DILocation(line: 3602, column: 22, scope: !1783)
!1799 = !DILocation(line: 3603, column: 31, scope: !1783)
!1800 = !DILocation(line: 3603, column: 14, scope: !1783)
!1801 = !DILocation(line: 3603, column: 24, scope: !1783)
!1802 = !DILocation(line: 3604, column: 6, scope: !1783)
!1803 = !DILocation(line: 3606, column: 22, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 3606, column: 10)
!1805 = !DILocation(line: 3606, column: 27, scope: !1804)
!1806 = !DILocation(line: 3607, column: 3, scope: !1804)
!1807 = !DILocation(line: 3607, column: 23, scope: !1804)
!1808 = !DILocation(line: 3608, column: 3, scope: !1804)
!1809 = !DILocation(line: 3608, column: 23, scope: !1804)
!1810 = !DILocation(line: 3606, column: 10, scope: !1783)
!1811 = distinct !{!1811, !1784, !1812}
!1812 = !DILocation(line: 3612, column: 4, scope: !1699)
!1813 = !DILocation(line: 3614, column: 6, scope: !1699)
!1814 = !DILocation(line: 3616, column: 6, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 3615, column: 4)
!1816 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 3614, column: 6)
!1817 = !DILocation(line: 3617, column: 6, scope: !1815)
!1818 = !DILocation(line: 3622, column: 18, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 3622, column: 6)
!1820 = !DILocation(line: 3622, column: 23, scope: !1819)
!1821 = !DILocation(line: 3622, column: 6, scope: !1699)
!1822 = !DILocation(line: 3624, column: 22, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 3623, column: 4)
!1824 = !DILocation(line: 3624, column: 15, scope: !1823)
!1825 = !DILocation(line: 3625, column: 21, scope: !1823)
!1826 = !DILocation(line: 3626, column: 10, scope: !1823)
!1827 = !DILocation(line: 3626, column: 24, scope: !1823)
!1828 = !DILocation(line: 3633, column: 18, scope: !1710)
!1829 = !DILocation(line: 3627, column: 4, scope: !1823)
!1830 = !DILocation(line: 3633, column: 23, scope: !1710)
!1831 = !DILocation(line: 3633, column: 6, scope: !1699)
!1832 = !DILocation(line: 3637, column: 19, scope: !1709)
!1833 = !DILocation(line: 0, scope: !1709)
!1834 = !DILocation(line: 3638, column: 22, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 3638, column: 10)
!1836 = !DILocation(line: 3638, column: 27, scope: !1835)
!1837 = !DILocation(line: 3638, column: 10, scope: !1709)
!1838 = !DILocation(line: 3639, column: 33, scope: !1835)
!1839 = !DILocation(line: 3639, column: 47, scope: !1835)
!1840 = !DILocation(line: 3639, column: 8, scope: !1835)
!1841 = !DILocation(line: 3640, column: 6, scope: !1709)
!1842 = !DILocation(line: 3640, column: 25, scope: !1709)
!1843 = !DILocation(line: 3640, column: 30, scope: !1709)
!1844 = !DILocation(line: 3641, column: 6, scope: !1709)
!1845 = !DILocation(line: 3641, column: 26, scope: !1709)
!1846 = !DILocation(line: 3642, column: 6, scope: !1709)
!1847 = !DILocation(line: 3642, column: 26, scope: !1709)
!1848 = !DILocation(line: 3644, column: 9, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 3644, column: 7)
!1850 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 3643, column: 8)
!1851 = !DILocation(line: 3644, column: 7, scope: !1850)
!1852 = !DILocation(line: 3646, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 3645, column: 5)
!1854 = !DILocation(line: 3647, column: 7, scope: !1853)
!1855 = !DILocation(line: 3650, column: 3, scope: !1850)
!1856 = !DILocation(line: 3650, column: 13, scope: !1850)
!1857 = !DILocation(line: 3651, column: 11, scope: !1850)
!1858 = !DILocation(line: 3651, column: 16, scope: !1850)
!1859 = !DILocation(line: 3652, column: 18, scope: !1850)
!1860 = !DILocation(line: 3654, column: 15, scope: !1850)
!1861 = !DILocation(line: 3654, column: 19, scope: !1850)
!1862 = !DILocation(line: 3655, column: 15, scope: !1850)
!1863 = !DILocation(line: 3655, column: 23, scope: !1850)
!1864 = !DILocation(line: 3656, column: 32, scope: !1850)
!1865 = !DILocation(line: 3656, column: 15, scope: !1850)
!1866 = !DILocation(line: 3656, column: 25, scope: !1850)
!1867 = !DILocation(line: 3657, column: 3, scope: !1850)
!1868 = !DILocation(line: 3659, column: 16, scope: !1850)
!1869 = distinct !{!1869, !1841, !1870}
!1870 = !DILocation(line: 3660, column: 8, scope: !1709)
!1871 = !DILocation(line: 3663, column: 21, scope: !1699)
!1872 = !DILocation(line: 3663, column: 2, scope: !1699)
!1873 = !DILocation(line: 3665, column: 18, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 3665, column: 6)
!1875 = !DILocation(line: 3665, column: 23, scope: !1874)
!1876 = !DILocation(line: 3665, column: 6, scope: !1699)
!1877 = !DILocation(line: 3666, column: 25, scope: !1874)
!1878 = !DILocation(line: 3666, column: 19, scope: !1874)
!1879 = !DILocation(line: 3666, column: 4, scope: !1874)
!1880 = !DILocation(line: 3670, column: 2, scope: !1699)
!1881 = !DILocation(line: 3670, column: 11, scope: !1699)
!1882 = !DILocation(line: 3672, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 3671, column: 4)
!1884 = !DILocation(line: 3673, column: 12, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 3673, column: 10)
!1886 = !DILocation(line: 3673, column: 20, scope: !1885)
!1887 = !DILocation(line: 3673, column: 10, scope: !1883)
!1888 = !DILocation(line: 3675, column: 3, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 3674, column: 8)
!1890 = !DILocation(line: 3676, column: 29, scope: !1889)
!1891 = !DILocation(line: 3676, column: 3, scope: !1889)
!1892 = !DILocation(line: 3677, column: 8, scope: !1889)
!1893 = distinct !{!1893, !1880, !1894}
!1894 = !DILocation(line: 3678, column: 4, scope: !1699)
!1895 = !DILocation(line: 3680, column: 17, scope: !1699)
!1896 = !DILocation(line: 3682, column: 2, scope: !1699)
!1897 = !DILocation(line: 3683, column: 7, scope: !1700)
!1898 = !DILocation(line: 3694, column: 18, scope: !1712)
!1899 = !DILocation(line: 3695, column: 17, scope: !1712)
!1900 = !DILocation(line: 3697, column: 15, scope: !1712)
!1901 = !DILocation(line: 0, scope: !1712)
!1902 = !DILocation(line: 3699, column: 19, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 3699, column: 13)
!1904 = !DILocation(line: 3699, column: 27, scope: !1903)
!1905 = !DILocation(line: 3699, column: 40, scope: !1903)
!1906 = !DILocation(line: 3700, column: 13, scope: !1903)
!1907 = !DILocation(line: 3700, column: 21, scope: !1903)
!1908 = !DILocation(line: 3700, column: 26, scope: !1903)
!1909 = !DILocation(line: 3701, column: 13, scope: !1903)
!1910 = !DILocation(line: 3701, column: 30, scope: !1903)
!1911 = !DILocation(line: 3701, column: 34, scope: !1903)
!1912 = !DILocation(line: 3702, column: 13, scope: !1903)
!1913 = !DILocation(line: 3702, column: 39, scope: !1903)
!1914 = !DILocation(line: 3702, column: 16, scope: !1903)
!1915 = !DILocation(line: 3702, column: 55, scope: !1903)
!1916 = !DILocation(line: 3699, column: 13, scope: !1712)
!1917 = !DILocation(line: 3707, column: 32, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 3703, column: 11)
!1919 = !DILocation(line: 3707, column: 13, scope: !1918)
!1920 = !DILocation(line: 3708, column: 13, scope: !1918)
!1921 = !DILocation(line: 3709, column: 11, scope: !1918)
!1922 = !DILocation(line: 3712, column: 6, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 3711, column: 11)
!1924 = !DILocation(line: 3713, column: 10, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 3713, column: 10)
!1926 = !DILocation(line: 3713, column: 28, scope: !1925)
!1927 = !DILocation(line: 3713, column: 10, scope: !1923)
!1928 = !DILocation(line: 3714, column: 8, scope: !1925)
!1929 = !DILocation(line: 3715, column: 6, scope: !1923)
!1930 = !DILocation(line: 3716, column: 25, scope: !1923)
!1931 = !DILocation(line: 3716, column: 6, scope: !1923)
!1932 = !DILocation(line: 3719, column: 10, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 3719, column: 10)
!1934 = !DILocation(line: 3719, column: 28, scope: !1933)
!1935 = !DILocation(line: 3719, column: 10, scope: !1923)
!1936 = !DILocation(line: 3720, column: 8, scope: !1933)
!1937 = !DILocation(line: 3721, column: 6, scope: !1923)
!1938 = !DILocation(line: 3724, column: 17, scope: !1712)
!1939 = !DILocation(line: 3732, column: 33, scope: !1715)
!1940 = !DILocation(line: 0, scope: !1715)
!1941 = !DILocation(line: 3734, column: 6, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 3734, column: 6)
!1943 = !DILocation(line: 3734, column: 8, scope: !1942)
!1944 = !DILocation(line: 3734, column: 14, scope: !1942)
!1945 = !DILocation(line: 3734, column: 19, scope: !1942)
!1946 = !DILocation(line: 3734, column: 6, scope: !1715)
!1947 = !DILocation(line: 3735, column: 43, scope: !1942)
!1948 = !DILocation(line: 3735, column: 8, scope: !1942)
!1949 = !DILocation(line: 3735, column: 4, scope: !1942)
!1950 = !DILocation(line: 3737, column: 8, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 3737, column: 6)
!1952 = !DILocation(line: 3737, column: 6, scope: !1715)
!1953 = !DILocation(line: 3739, column: 6, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 3738, column: 4)
!1955 = !DILocation(line: 3740, column: 6, scope: !1954)
!1956 = !DILocation(line: 3748, column: 18, scope: !1715)
!1957 = !DILocation(line: 3749, column: 29, scope: !1715)
!1958 = !DILocation(line: 3749, column: 17, scope: !1715)
!1959 = !DILocation(line: 3751, column: 2, scope: !1715)
!1960 = !DILocation(line: 3753, column: 17, scope: !1715)
!1961 = !DILocation(line: 3755, column: 2, scope: !1715)
!1962 = !DILocation(line: 3759, column: 39, scope: !1700)
!1963 = !DILocation(line: 3759, column: 7, scope: !1700)
!1964 = !DILocation(line: 3760, column: 7, scope: !1700)
!1965 = !DILocation(line: 3763, column: 7, scope: !1700)
!1966 = !DILocation(line: 3764, column: 39, scope: !1700)
!1967 = !DILocation(line: 3764, column: 7, scope: !1700)
!1968 = !DILocation(line: 3765, column: 7, scope: !1700)
!1969 = !DILocation(line: 3768, column: 7, scope: !1700)
!1970 = !DILocation(line: 3769, column: 26, scope: !1700)
!1971 = !DILocation(line: 3769, column: 7, scope: !1700)
!1972 = !DILocation(line: 3770, column: 7, scope: !1700)
!1973 = !DILocation(line: 3773, column: 7, scope: !1700)
!1974 = !DILocation(line: 3774, column: 26, scope: !1700)
!1975 = !DILocation(line: 3774, column: 7, scope: !1700)
!1976 = !DILocation(line: 3775, column: 7, scope: !1700)
!1977 = !DILocation(line: 3778, column: 7, scope: !1700)
!1978 = !DILocation(line: 3779, column: 26, scope: !1700)
!1979 = !DILocation(line: 3779, column: 7, scope: !1700)
!1980 = !DILocation(line: 3780, column: 7, scope: !1700)
!1981 = !DILocation(line: 3781, column: 26, scope: !1700)
!1982 = !DILocation(line: 3781, column: 7, scope: !1700)
!1983 = !DILocation(line: 3782, column: 7, scope: !1700)
!1984 = !DILocation(line: 3785, column: 7, scope: !1700)
!1985 = !DILocation(line: 3786, column: 26, scope: !1700)
!1986 = !DILocation(line: 3786, column: 7, scope: !1700)
!1987 = !DILocation(line: 3787, column: 7, scope: !1700)
!1988 = !DILocation(line: 3790, column: 7, scope: !1700)
!1989 = !DILocation(line: 3791, column: 26, scope: !1700)
!1990 = !DILocation(line: 3791, column: 7, scope: !1700)
!1991 = !DILocation(line: 3792, column: 7, scope: !1700)
!1992 = !DILocation(line: 3795, column: 7, scope: !1700)
!1993 = !DILocation(line: 3796, column: 26, scope: !1700)
!1994 = !DILocation(line: 3796, column: 7, scope: !1700)
!1995 = !DILocation(line: 3797, column: 7, scope: !1700)
!1996 = !DILocation(line: 3800, column: 7, scope: !1700)
!1997 = !DILocation(line: 3801, column: 26, scope: !1700)
!1998 = !DILocation(line: 3801, column: 7, scope: !1700)
!1999 = !DILocation(line: 3802, column: 7, scope: !1700)
!2000 = !DILocation(line: 3805, column: 7, scope: !1700)
!2001 = !DILocation(line: 3806, column: 26, scope: !1700)
!2002 = !DILocation(line: 3806, column: 7, scope: !1700)
!2003 = !DILocation(line: 3807, column: 7, scope: !1700)
!2004 = !DILocation(line: 3810, column: 7, scope: !1700)
!2005 = !DILocation(line: 3811, column: 26, scope: !1700)
!2006 = !DILocation(line: 3811, column: 7, scope: !1700)
!2007 = !DILocation(line: 3812, column: 7, scope: !1700)
!2008 = !DILocation(line: 3815, column: 7, scope: !1700)
!2009 = !DILocation(line: 3816, column: 26, scope: !1700)
!2010 = !DILocation(line: 3816, column: 7, scope: !1700)
!2011 = !DILocation(line: 3817, column: 7, scope: !1700)
!2012 = !DILocation(line: 3820, column: 7, scope: !1700)
!2013 = !DILocation(line: 3821, column: 26, scope: !1700)
!2014 = !DILocation(line: 3821, column: 7, scope: !1700)
!2015 = !DILocation(line: 3822, column: 7, scope: !1700)
!2016 = !DILocation(line: 3825, column: 7, scope: !1700)
!2017 = !DILocation(line: 3826, column: 26, scope: !1700)
!2018 = !DILocation(line: 3826, column: 7, scope: !1700)
!2019 = !DILocation(line: 3827, column: 7, scope: !1700)
!2020 = !DILocation(line: 3830, column: 7, scope: !1700)
!2021 = !DILocation(line: 3831, column: 26, scope: !1700)
!2022 = !DILocation(line: 3831, column: 7, scope: !1700)
!2023 = !DILocation(line: 3832, column: 7, scope: !1700)
!2024 = !DILocation(line: 3835, column: 44, scope: !1700)
!2025 = !DILocation(line: 3835, column: 67, scope: !1700)
!2026 = !DILocation(line: 3835, column: 52, scope: !1700)
!2027 = !DILocation(line: 3835, column: 7, scope: !1700)
!2028 = !DILocation(line: 3836, column: 7, scope: !1700)
!2029 = !DILocation(line: 3848, column: 19, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 3848, column: 2)
!2031 = !DILocation(line: 3848, column: 7, scope: !2030)
!2032 = !DILocation(line: 0, scope: !2030)
!2033 = !DILocation(line: 0, scope: !1718)
!2034 = !DILocation(line: 3848, column: 35, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 3848, column: 2)
!2036 = !DILocation(line: 3848, column: 2, scope: !2030)
!2037 = !DILocation(line: 3850, column: 18, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 3850, column: 10)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 3849, column: 4)
!2040 = !DILocation(line: 3850, column: 12, scope: !2038)
!2041 = !DILocation(line: 3850, column: 10, scope: !2039)
!2042 = !DILocation(line: 3852, column: 13, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 3852, column: 7)
!2044 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 3851, column: 8)
!2045 = !DILocation(line: 3852, column: 18, scope: !2043)
!2046 = !DILocation(line: 3852, column: 23, scope: !2043)
!2047 = !DILocation(line: 3853, column: 7, scope: !2043)
!2048 = !DILocation(line: 3853, column: 26, scope: !2043)
!2049 = !DILocation(line: 3854, column: 7, scope: !2043)
!2050 = !DILocation(line: 3854, column: 26, scope: !2043)
!2051 = !DILocation(line: 3852, column: 7, scope: !2044)
!2052 = !DILocation(line: 3856, column: 23, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 3856, column: 7)
!2054 = !DILocation(line: 3856, column: 7, scope: !2044)
!2055 = !DILocation(line: 3858, column: 26, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 3857, column: 5)
!2057 = !DILocation(line: 3858, column: 7, scope: !2056)
!2058 = !DILocation(line: 3859, column: 7, scope: !2056)
!2059 = !DILocation(line: 3848, column: 57, scope: !2035)
!2060 = !DILocation(line: 3848, column: 2, scope: !2035)
!2061 = distinct !{!2061, !2036, !2062}
!2062 = !DILocation(line: 3862, column: 4, scope: !2030)
!2063 = !DILocation(line: 3876, column: 2, scope: !1720)
!2064 = !DILocation(line: 3878, column: 18, scope: !1720)
!2065 = !DILocation(line: 3878, column: 11, scope: !1720)
!2066 = !DILocation(line: 3879, column: 17, scope: !1720)
!2067 = !DILocation(line: 3880, column: 6, scope: !1720)
!2068 = !DILocation(line: 3880, column: 10, scope: !1720)
!2069 = !DILocation(line: 3881, column: 6, scope: !1720)
!2070 = !DILocation(line: 3881, column: 14, scope: !1720)
!2071 = !DILocation(line: 3882, column: 23, scope: !1720)
!2072 = !DILocation(line: 3882, column: 6, scope: !1720)
!2073 = !DILocation(line: 3882, column: 16, scope: !1720)
!2074 = !DILocation(line: 3884, column: 21, scope: !1720)
!2075 = !DILocation(line: 3884, column: 2, scope: !1720)
!2076 = !DILocation(line: 3888, column: 12, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 3888, column: 6)
!2078 = !DILocation(line: 3888, column: 8, scope: !2077)
!2079 = !DILocation(line: 3888, column: 6, scope: !1720)
!2080 = !DILocation(line: 3889, column: 4, scope: !2077)
!2081 = !DILocation(line: 3891, column: 23, scope: !1720)
!2082 = !DILocation(line: 3891, column: 17, scope: !1720)
!2083 = !DILocation(line: 3894, column: 7, scope: !1700)
!2084 = !DILocation(line: 3897, column: 17, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3897, column: 11)
!2086 = !DILocation(line: 3897, column: 25, scope: !2085)
!2087 = !DILocation(line: 3897, column: 38, scope: !2085)
!2088 = !DILocation(line: 0, scope: !2085)
!2089 = !DILocation(line: 3897, column: 11, scope: !1700)
!2090 = !DILocation(line: 3898, column: 46, scope: !2085)
!2091 = !DILocation(line: 3899, column: 27, scope: !2085)
!2092 = !DILocation(line: 3899, column: 5, scope: !2085)
!2093 = !DILocation(line: 3898, column: 2, scope: !2085)
!2094 = !DILocation(line: 3901, column: 46, scope: !2085)
!2095 = !DILocation(line: 3902, column: 27, scope: !2085)
!2096 = !DILocation(line: 3902, column: 5, scope: !2085)
!2097 = !DILocation(line: 3901, column: 2, scope: !2085)
!2098 = !DILocation(line: 3906, column: 26, scope: !1700)
!2099 = !DILocation(line: 3906, column: 7, scope: !1700)
!2100 = !DILocation(line: 3907, column: 7, scope: !1700)
!2101 = !DILocation(line: 3911, column: 12, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 3911, column: 6)
!2103 = !DILocation(line: 3911, column: 20, scope: !2102)
!2104 = !DILocation(line: 3911, column: 40, scope: !2102)
!2105 = !DILocation(line: 3911, column: 6, scope: !1724)
!2106 = !DILocation(line: 3912, column: 41, scope: !2102)
!2107 = !DILocation(line: 3912, column: 4, scope: !2102)
!2108 = !DILocation(line: 3915, column: 6, scope: !1723)
!2109 = !DILocation(line: 3915, column: 18, scope: !1723)
!2110 = !DILocation(line: 3915, column: 6, scope: !1724)
!2111 = !DILocation(line: 3917, column: 6, scope: !1722)
!2112 = !DILocation(line: 3921, column: 22, scope: !1722)
!2113 = !DILocation(line: 3921, column: 15, scope: !1722)
!2114 = !DILocation(line: 3922, column: 21, scope: !1722)
!2115 = !DILocation(line: 3923, column: 10, scope: !1722)
!2116 = !DILocation(line: 3923, column: 14, scope: !1722)
!2117 = !DILocation(line: 3924, column: 10, scope: !1722)
!2118 = !DILocation(line: 3924, column: 18, scope: !1722)
!2119 = !DILocation(line: 3925, column: 27, scope: !1722)
!2120 = !DILocation(line: 3925, column: 10, scope: !1722)
!2121 = !DILocation(line: 3925, column: 20, scope: !1722)
!2122 = !DILocation(line: 3927, column: 25, scope: !1722)
!2123 = !DILocation(line: 3927, column: 6, scope: !1722)
!2124 = !DILocation(line: 3929, column: 27, scope: !1722)
!2125 = !DILocation(line: 3929, column: 21, scope: !1722)
!2126 = !DILocation(line: 3931, column: 14, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 3931, column: 10)
!2128 = !DILocation(line: 3931, column: 10, scope: !2127)
!2129 = !DILocation(line: 3931, column: 10, scope: !1722)
!2130 = !DILocation(line: 3936, column: 16, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 3936, column: 10)
!2132 = !DILocation(line: 3936, column: 24, scope: !2131)
!2133 = !DILocation(line: 3936, column: 44, scope: !2131)
!2134 = !DILocation(line: 3936, column: 10, scope: !1722)
!2135 = !DILocation(line: 3937, column: 8, scope: !2131)
!2136 = !DILocation(line: 3938, column: 4, scope: !1723)
!2137 = !DILocation(line: 3940, column: 12, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 3940, column: 6)
!2139 = !DILocation(line: 3940, column: 20, scope: !2138)
!2140 = !DILocation(line: 3940, column: 40, scope: !2138)
!2141 = !DILocation(line: 3940, column: 6, scope: !1724)
!2142 = !DILocation(line: 3941, column: 41, scope: !2138)
!2143 = !DILocation(line: 3941, column: 4, scope: !2138)
!2144 = !DILocation(line: 3949, column: 2, scope: !1726)
!2145 = !DILocation(line: 3949, column: 21, scope: !1726)
!2146 = !DILocation(line: 3961, column: 24, scope: !1726)
!2147 = !DILocation(line: 0, scope: !1726)
!2148 = !DILocation(line: 3963, column: 10, scope: !1726)
!2149 = !DILocation(line: 3963, column: 15, scope: !1726)
!2150 = !DILocation(line: 3964, column: 20, scope: !1726)
!2151 = !DILocation(line: 3964, column: 17, scope: !1726)
!2152 = !DILocation(line: 3965, column: 10, scope: !1726)
!2153 = !DILocation(line: 3965, column: 14, scope: !1726)
!2154 = !DILocation(line: 3966, column: 10, scope: !1726)
!2155 = !DILocation(line: 3966, column: 18, scope: !1726)
!2156 = !DILocation(line: 3967, column: 27, scope: !1726)
!2157 = !DILocation(line: 3967, column: 10, scope: !1726)
!2158 = !DILocation(line: 3967, column: 20, scope: !1726)
!2159 = !DILocation(line: 0, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 3977, column: 8)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 3976, column: 10)
!2162 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 3975, column: 4)
!2163 = !DILocation(line: 3971, column: 2, scope: !1726)
!2164 = !DILocation(line: 3969, column: 4, scope: !1726)
!2165 = !DILocation(line: 3971, column: 14, scope: !1726)
!2166 = !DILocation(line: 3972, column: 9, scope: !1726)
!2167 = !DILocation(line: 3972, column: 19, scope: !1726)
!2168 = !DILocation(line: 3972, column: 24, scope: !1726)
!2169 = !DILocation(line: 3972, column: 29, scope: !1726)
!2170 = !DILocation(line: 3973, column: 6, scope: !1726)
!2171 = !DILocation(line: 3973, column: 25, scope: !1726)
!2172 = !DILocation(line: 3974, column: 6, scope: !1726)
!2173 = !DILocation(line: 3974, column: 25, scope: !1726)
!2174 = !DILocation(line: 3976, column: 18, scope: !2161)
!2175 = !DILocation(line: 3976, column: 12, scope: !2161)
!2176 = !DILocation(line: 3976, column: 10, scope: !2162)
!2177 = !DILocation(line: 3978, column: 9, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 3978, column: 7)
!2179 = !DILocation(line: 3978, column: 7, scope: !2160)
!2180 = !DILocation(line: 3980, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 3979, column: 5)
!2182 = !DILocation(line: 3981, column: 7, scope: !2181)
!2183 = !DILocation(line: 3984, column: 3, scope: !2160)
!2184 = !DILocation(line: 3984, column: 13, scope: !2160)
!2185 = !DILocation(line: 3985, column: 23, scope: !2160)
!2186 = !DILocation(line: 3985, column: 16, scope: !2160)
!2187 = !DILocation(line: 3986, column: 18, scope: !2160)
!2188 = !DILocation(line: 3987, column: 17, scope: !2160)
!2189 = !DILocation(line: 3988, column: 3, scope: !2160)
!2190 = !DILocation(line: 3989, column: 8, scope: !2160)
!2191 = !DILocation(line: 3991, column: 19, scope: !2162)
!2192 = distinct !{!2192, !2163, !2193}
!2193 = !DILocation(line: 3992, column: 4, scope: !1726)
!2194 = !DILocation(line: 3994, column: 21, scope: !1726)
!2195 = !DILocation(line: 3994, column: 2, scope: !1726)
!2196 = !DILocation(line: 3996, column: 17, scope: !1726)
!2197 = !DILocation(line: 3998, column: 14, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 3998, column: 6)
!2199 = !DILocation(line: 3998, column: 6, scope: !2198)
!2200 = !DILocation(line: 3998, column: 6, scope: !1726)
!2201 = !DILocation(line: 4001, column: 2, scope: !1726)
!2202 = !DILocation(line: 4001, column: 11, scope: !1726)
!2203 = !DILocation(line: 4003, column: 6, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 4002, column: 4)
!2205 = !DILocation(line: 4004, column: 24, scope: !2204)
!2206 = !DILocation(line: 4004, column: 32, scope: !2204)
!2207 = !DILocation(line: 4004, column: 6, scope: !2204)
!2208 = distinct !{!2208, !2201, !2209}
!2209 = !DILocation(line: 4005, column: 4, scope: !1726)
!2210 = !DILocation(line: 4007, column: 36, scope: !1726)
!2211 = !DILocation(line: 4007, column: 2, scope: !1726)
!2212 = !DILocation(line: 4009, column: 2, scope: !1726)
!2213 = !DILocation(line: 4010, column: 7, scope: !1700)
!2214 = !DILocation(line: 4015, column: 2, scope: !1731)
!2215 = !DILocation(line: 4017, column: 18, scope: !1731)
!2216 = !DILocation(line: 4017, column: 11, scope: !1731)
!2217 = !DILocation(line: 4018, column: 17, scope: !1731)
!2218 = !DILocation(line: 4019, column: 6, scope: !1731)
!2219 = !DILocation(line: 4019, column: 10, scope: !1731)
!2220 = !DILocation(line: 4020, column: 6, scope: !1731)
!2221 = !DILocation(line: 4020, column: 14, scope: !1731)
!2222 = !DILocation(line: 4021, column: 23, scope: !1731)
!2223 = !DILocation(line: 4021, column: 6, scope: !1731)
!2224 = !DILocation(line: 4021, column: 16, scope: !1731)
!2225 = !DILocation(line: 4023, column: 21, scope: !1731)
!2226 = !DILocation(line: 4023, column: 2, scope: !1731)
!2227 = !DILocation(line: 4027, column: 12, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 4027, column: 6)
!2229 = !DILocation(line: 4027, column: 8, scope: !2228)
!2230 = !DILocation(line: 4027, column: 6, scope: !1731)
!2231 = !DILocation(line: 4028, column: 4, scope: !2228)
!2232 = !DILocation(line: 4030, column: 23, scope: !1731)
!2233 = !DILocation(line: 4030, column: 17, scope: !1731)
!2234 = !DILocation(line: 4033, column: 7, scope: !1700)
!2235 = !DILocation(line: 4036, column: 15, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4036, column: 11)
!2237 = !DILocation(line: 4036, column: 17, scope: !2236)
!2238 = !DILocation(line: 4036, column: 25, scope: !2236)
!2239 = !DILocation(line: 4036, column: 11, scope: !2236)
!2240 = !DILocation(line: 4036, column: 11, scope: !1700)
!2241 = !DILocation(line: 4037, column: 2, scope: !2236)
!2242 = !DILocation(line: 4039, column: 25, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4039, column: 11)
!2244 = !DILocation(line: 4039, column: 33, scope: !2243)
!2245 = !DILocation(line: 4039, column: 45, scope: !2243)
!2246 = !DILocation(line: 4040, column: 4, scope: !2243)
!2247 = !DILocation(line: 4039, column: 11, scope: !1700)
!2248 = !DILocation(line: 4042, column: 4, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 4041, column: 2)
!2250 = !DILocation(line: 4043, column: 4, scope: !2249)
!2251 = !DILocation(line: 4044, column: 2, scope: !2249)
!2252 = !DILocation(line: 4045, column: 25, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4045, column: 11)
!2254 = !DILocation(line: 4045, column: 11, scope: !2253)
!2255 = !DILocation(line: 4045, column: 11, scope: !1700)
!2256 = !DILocation(line: 4046, column: 2, scope: !2253)
!2257 = !DILocation(line: 4048, column: 2, scope: !2253)
!2258 = !DILocation(line: 4053, column: 11, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4053, column: 11)
!2260 = !DILocation(line: 4053, column: 23, scope: !2259)
!2261 = !DILocation(line: 4053, column: 11, scope: !1700)
!2262 = !DILocation(line: 4054, column: 2, scope: !2259)
!2263 = !DILocation(line: 4055, column: 11, scope: !1734)
!2264 = !DILocation(line: 4055, column: 24, scope: !1734)
!2265 = !DILocation(line: 4055, column: 11, scope: !1700)
!2266 = !DILocation(line: 4058, column: 4, scope: !1733)
!2267 = !DILocation(line: 4059, column: 15, scope: !1733)
!2268 = !DILocation(line: 0, scope: !1733)
!2269 = !DILocation(line: 4060, column: 23, scope: !1733)
!2270 = !DILocation(line: 4060, column: 4, scope: !1733)
!2271 = !DILocation(line: 4063, column: 13, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 4063, column: 8)
!2273 = !DILocation(line: 4063, column: 17, scope: !2272)
!2274 = !DILocation(line: 4063, column: 8, scope: !1733)
!2275 = !DILocation(line: 4064, column: 15, scope: !2272)
!2276 = !DILocation(line: 4064, column: 6, scope: !2272)
!2277 = !DILocation(line: 4072, column: 2, scope: !1736)
!2278 = !DILocation(line: 4073, column: 10, scope: !1736)
!2279 = !DILocation(line: 4073, column: 23, scope: !1736)
!2280 = !DILocation(line: 4073, column: 27, scope: !1736)
!2281 = !DILocation(line: 4073, column: 6, scope: !1736)
!2282 = !DILocation(line: 0, scope: !1736)
!2283 = !DILocation(line: 4074, column: 6, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 4074, column: 6)
!2285 = !DILocation(line: 4075, column: 4, scope: !2284)
!2286 = !DILocation(line: 4076, column: 41, scope: !1736)
!2287 = !DILocation(line: 4076, column: 45, scope: !1736)
!2288 = !DILocation(line: 4077, column: 26, scope: !1736)
!2289 = !DILocation(line: 4077, column: 5, scope: !1736)
!2290 = !DILocation(line: 4076, column: 2, scope: !1736)
!2291 = !DILocation(line: 4082, column: 7, scope: !1700)
!2292 = !DILocation(line: 4083, column: 52, scope: !1700)
!2293 = !DILocation(line: 4083, column: 7, scope: !1700)
!2294 = !DILocation(line: 4084, column: 7, scope: !1700)
!2295 = !DILocation(line: 4087, column: 7, scope: !1700)
!2296 = !DILocation(line: 4088, column: 7, scope: !1700)
!2297 = !DILocation(line: 4089, column: 7, scope: !1700)
!2298 = !DILocation(line: 4092, column: 11, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4092, column: 11)
!2300 = !DILocation(line: 4092, column: 24, scope: !2299)
!2301 = !DILocation(line: 4092, column: 29, scope: !2299)
!2302 = !DILocation(line: 4092, column: 11, scope: !1700)
!2303 = !DILocation(line: 4093, column: 2, scope: !2299)
!2304 = !DILocation(line: 4096, column: 4, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 4095, column: 2)
!2306 = !DILocation(line: 4097, column: 23, scope: !2305)
!2307 = !DILocation(line: 4097, column: 4, scope: !2305)
!2308 = !DILocation(line: 4098, column: 4, scope: !2305)
!2309 = !DILocation(line: 4100, column: 29, scope: !1700)
!2310 = !DILocation(line: 4100, column: 7, scope: !1700)
!2311 = !DILocation(line: 4101, column: 7, scope: !1700)
!2312 = !DILocation(line: 4104, column: 11, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4104, column: 11)
!2314 = !DILocation(line: 4104, column: 25, scope: !2313)
!2315 = !DILocation(line: 4104, column: 30, scope: !2313)
!2316 = !DILocation(line: 4104, column: 11, scope: !1700)
!2317 = !DILocation(line: 4106, column: 4, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 4105, column: 2)
!2319 = !DILocation(line: 4107, column: 4, scope: !2318)
!2320 = !DILocation(line: 4113, column: 11, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4113, column: 11)
!2322 = !DILocation(line: 4113, column: 24, scope: !2321)
!2323 = !DILocation(line: 4113, column: 29, scope: !2321)
!2324 = !DILocation(line: 4114, column: 4, scope: !2321)
!2325 = !DILocation(line: 4114, column: 20, scope: !2321)
!2326 = !DILocation(line: 4114, column: 33, scope: !2321)
!2327 = !DILocation(line: 4114, column: 37, scope: !2321)
!2328 = !DILocation(line: 4114, column: 41, scope: !2321)
!2329 = !DILocation(line: 4115, column: 4, scope: !2321)
!2330 = !DILocation(line: 4115, column: 37, scope: !2321)
!2331 = !DILocation(line: 4115, column: 7, scope: !2321)
!2332 = !DILocation(line: 4115, column: 45, scope: !2321)
!2333 = !DILocation(line: 4113, column: 11, scope: !1700)
!2334 = !DILocation(line: 4116, column: 2, scope: !2321)
!2335 = !DILocation(line: 4118, column: 29, scope: !1700)
!2336 = !DILocation(line: 4118, column: 7, scope: !1700)
!2337 = !DILocation(line: 4119, column: 19, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4119, column: 11)
!2339 = !DILocation(line: 4119, column: 32, scope: !2338)
!2340 = !DILocation(line: 4119, column: 45, scope: !2338)
!2341 = !DILocation(line: 4119, column: 49, scope: !2338)
!2342 = !DILocation(line: 4119, column: 11, scope: !2338)
!2343 = !DILocation(line: 4119, column: 61, scope: !2338)
!2344 = !DILocation(line: 4119, column: 11, scope: !1700)
!2345 = !DILocation(line: 4121, column: 4, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 4120, column: 2)
!2347 = !DILocation(line: 4122, column: 23, scope: !2346)
!2348 = !DILocation(line: 4122, column: 4, scope: !2346)
!2349 = !DILocation(line: 4123, column: 4, scope: !2346)
!2350 = !DILocation(line: 4124, column: 2, scope: !2346)
!2351 = !DILocation(line: 4127, column: 16, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 4127, column: 8)
!2353 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 4126, column: 2)
!2354 = !DILocation(line: 4127, column: 29, scope: !2352)
!2355 = !DILocation(line: 4127, column: 42, scope: !2352)
!2356 = !DILocation(line: 4127, column: 46, scope: !2352)
!2357 = !DILocation(line: 4127, column: 8, scope: !2352)
!2358 = !DILocation(line: 4127, column: 58, scope: !2352)
!2359 = !DILocation(line: 4127, column: 8, scope: !2353)
!2360 = !DILocation(line: 4128, column: 28, scope: !2352)
!2361 = !DILocation(line: 4128, column: 6, scope: !2352)
!2362 = !DILocation(line: 4129, column: 26, scope: !2353)
!2363 = !DILocation(line: 4129, column: 4, scope: !2353)
!2364 = !DILocation(line: 4132, column: 11, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4132, column: 11)
!2366 = !DILocation(line: 4132, column: 24, scope: !2365)
!2367 = !DILocation(line: 4132, column: 29, scope: !2365)
!2368 = !DILocation(line: 4133, column: 4, scope: !2365)
!2369 = !DILocation(line: 4133, column: 20, scope: !2365)
!2370 = !DILocation(line: 4133, column: 33, scope: !2365)
!2371 = !DILocation(line: 4133, column: 37, scope: !2365)
!2372 = !DILocation(line: 4133, column: 41, scope: !2365)
!2373 = !DILocation(line: 4134, column: 4, scope: !2365)
!2374 = !DILocation(line: 4134, column: 37, scope: !2365)
!2375 = !DILocation(line: 4134, column: 7, scope: !2365)
!2376 = !DILocation(line: 4134, column: 45, scope: !2365)
!2377 = !DILocation(line: 4132, column: 11, scope: !1700)
!2378 = !DILocation(line: 4135, column: 2, scope: !2365)
!2379 = !DILocation(line: 4141, column: 7, scope: !1700)
!2380 = !DILocation(line: 4142, column: 7, scope: !1700)
!2381 = !DILocation(line: 4145, column: 11, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 4145, column: 11)
!2383 = !DILocation(line: 4145, column: 25, scope: !2382)
!2384 = !DILocation(line: 4145, column: 30, scope: !2382)
!2385 = !DILocation(line: 4146, column: 4, scope: !2382)
!2386 = !DILocation(line: 4146, column: 7, scope: !2382)
!2387 = !DILocation(line: 4146, column: 31, scope: !2382)
!2388 = !DILocation(line: 4146, column: 36, scope: !2382)
!2389 = !DILocation(line: 4145, column: 11, scope: !1700)
!2390 = !DILocation(line: 4148, column: 4, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 4147, column: 2)
!2392 = !DILocation(line: 4149, column: 4, scope: !2391)
!2393 = !DILocation(line: 4151, column: 29, scope: !1700)
!2394 = !DILocation(line: 4151, column: 7, scope: !1700)
!2395 = !DILocation(line: 4152, column: 29, scope: !1700)
!2396 = !DILocation(line: 4152, column: 7, scope: !1700)
!2397 = !DILocation(line: 4153, column: 29, scope: !1700)
!2398 = !DILocation(line: 4153, column: 7, scope: !1700)
!2399 = !DILocation(line: 4154, column: 7, scope: !1700)
!2400 = !DILocation(line: 4155, column: 29, scope: !1700)
!2401 = !DILocation(line: 4155, column: 7, scope: !1700)
!2402 = !DILocation(line: 4156, column: 7, scope: !1700)
!2403 = !DILocation(line: 4161, column: 7, scope: !1700)
!2404 = !DILocation(line: 4162, column: 7, scope: !1700)
!2405 = !DILocation(line: 0, scope: !1738)
!2406 = !DILocation(line: 4171, column: 6, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 4171, column: 6)
!2408 = !DILocation(line: 4171, column: 19, scope: !2407)
!2409 = !DILocation(line: 4171, column: 24, scope: !2407)
!2410 = !DILocation(line: 4171, column: 6, scope: !1738)
!2411 = !DILocation(line: 4173, column: 24, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 4172, column: 4)
!2413 = !DILocation(line: 4173, column: 36, scope: !2412)
!2414 = !DILocation(line: 4173, column: 42, scope: !2412)
!2415 = !DILocation(line: 4174, column: 6, scope: !2412)
!2416 = !DILocation(line: 4182, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 4182, column: 7)
!2418 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 4175, column: 8)
!2419 = !DILocation(line: 4182, column: 21, scope: !2417)
!2420 = !DILocation(line: 4182, column: 26, scope: !2417)
!2421 = !DILocation(line: 4182, column: 7, scope: !2418)
!2422 = !DILocation(line: 4184, column: 20, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 4184, column: 11)
!2424 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 4183, column: 5)
!2425 = !DILocation(line: 4184, column: 11, scope: !2424)
!2426 = !DILocation(line: 4185, column: 9, scope: !2423)
!2427 = !DILocation(line: 4186, column: 26, scope: !2424)
!2428 = !DILocation(line: 4186, column: 7, scope: !2424)
!2429 = !DILocation(line: 4187, column: 7, scope: !2424)
!2430 = !DILocation(line: 4192, column: 4, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 4188, column: 9)
!2432 = !DILocation(line: 4193, column: 4, scope: !2431)
!2433 = !DILocation(line: 4195, column: 4, scope: !2431)
!2434 = !DILocation(line: 4196, column: 4, scope: !2431)
!2435 = !DILocation(line: 4198, column: 4, scope: !2431)
!2436 = !DILocation(line: 4199, column: 4, scope: !2431)
!2437 = !DILocation(line: 4201, column: 4, scope: !2431)
!2438 = !DILocation(line: 4202, column: 4, scope: !2431)
!2439 = !DILocation(line: 4204, column: 4, scope: !2431)
!2440 = !DILocation(line: 4205, column: 4, scope: !2431)
!2441 = !DILocation(line: 4212, column: 7, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 4212, column: 7)
!2443 = !DILocation(line: 4212, column: 21, scope: !2442)
!2444 = !DILocation(line: 4212, column: 26, scope: !2442)
!2445 = !DILocation(line: 4213, column: 7, scope: !2442)
!2446 = !DILocation(line: 4213, column: 33, scope: !2442)
!2447 = !DILocation(line: 4213, column: 37, scope: !2442)
!2448 = !DILocation(line: 4214, column: 7, scope: !2442)
!2449 = !DILocation(line: 4214, column: 19, scope: !2442)
!2450 = !DILocation(line: 4212, column: 7, scope: !2418)
!2451 = !DILocation(line: 4216, column: 38, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 4215, column: 5)
!2453 = !DILocation(line: 4216, column: 15, scope: !2452)
!2454 = !DILocation(line: 4216, column: 7, scope: !2452)
!2455 = !DILocation(line: 4219, column: 4, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 4217, column: 9)
!2457 = !DILocation(line: 4220, column: 4, scope: !2456)
!2458 = !DILocation(line: 4222, column: 4, scope: !2456)
!2459 = !DILocation(line: 4223, column: 4, scope: !2456)
!2460 = !DILocation(line: 4235, column: 2, scope: !1738)
!2461 = !DILocation(line: 4236, column: 21, scope: !1738)
!2462 = !DILocation(line: 4236, column: 2, scope: !1738)
!2463 = !DILocation(line: 4237, column: 2, scope: !1738)
!2464 = !DILocation(line: 4238, column: 10, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 4238, column: 6)
!2466 = !DILocation(line: 4238, column: 15, scope: !2465)
!2467 = !DILocation(line: 4238, column: 6, scope: !1738)
!2468 = !DILocation(line: 4239, column: 4, scope: !2465)
!2469 = !DILocation(line: 4240, column: 9, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 4240, column: 6)
!2471 = !DILocation(line: 4240, column: 6, scope: !1738)
!2472 = !DILocation(line: 4241, column: 4, scope: !2470)
!2473 = !DILocation(line: 4242, column: 21, scope: !1738)
!2474 = !DILocation(line: 4242, column: 2, scope: !1738)
!2475 = !DILocation(line: 4243, column: 6, scope: !1738)
!2476 = !DILocation(line: 4244, column: 4, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 4243, column: 6)
!2478 = !DILocation(line: 4249, column: 30, scope: !1700)
!2479 = !DILocation(line: 4249, column: 41, scope: !1700)
!2480 = !DILocation(line: 4249, column: 7, scope: !1700)
!2481 = !DILocation(line: 4250, column: 7, scope: !1700)
!2482 = !DILocation(line: 4253, column: 7, scope: !1700)
!2483 = !DILocation(line: 4254, column: 26, scope: !1700)
!2484 = !DILocation(line: 4254, column: 7, scope: !1700)
!2485 = !DILocation(line: 4255, column: 7, scope: !1700)
!2486 = !DILocation(line: 4258, column: 26, scope: !1700)
!2487 = !DILocation(line: 4258, column: 7, scope: !1700)
!2488 = !DILocation(line: 4259, column: 26, scope: !1700)
!2489 = !DILocation(line: 4259, column: 7, scope: !1700)
!2490 = !DILocation(line: 4260, column: 7, scope: !1700)
!2491 = !DILocation(line: 4263, column: 31, scope: !1700)
!2492 = !DILocation(line: 4263, column: 45, scope: !1700)
!2493 = !DILocation(line: 4263, column: 27, scope: !1700)
!2494 = !DILocation(line: 4263, column: 7, scope: !1700)
!2495 = !DILocation(line: 4264, column: 7, scope: !1700)
!2496 = !DILocation(line: 4267, column: 7, scope: !1700)
!2497 = !DILocation(line: 4268, column: 26, scope: !1700)
!2498 = !DILocation(line: 4268, column: 7, scope: !1700)
!2499 = !DILocation(line: 4269, column: 7, scope: !1700)
!2500 = !DILocation(line: 4270, column: 7, scope: !1700)
!2501 = !DILocation(line: 4276, column: 51, scope: !1740)
!2502 = !DILocation(line: 4276, column: 33, scope: !1740)
!2503 = !DILocation(line: 0, scope: !1740)
!2504 = !DILocation(line: 4277, column: 8, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 4277, column: 6)
!2506 = !DILocation(line: 4277, column: 6, scope: !1740)
!2507 = !DILocation(line: 4282, column: 28, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 4278, column: 4)
!2509 = !DILocation(line: 4282, column: 6, scope: !2508)
!2510 = !DILocation(line: 4283, column: 6, scope: !2508)
!2511 = !DILocation(line: 4284, column: 6, scope: !2508)
!2512 = !DILocation(line: 4287, column: 8, scope: !1740)
!2513 = !DILocation(line: 4288, column: 7, scope: !1740)
!2514 = !DILocation(line: 0, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 4290, column: 4)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 4289, column: 2)
!2517 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 4289, column: 2)
!2518 = !DILocation(line: 0, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 4293, column: 10)
!2520 = !DILocation(line: 4289, column: 7, scope: !2517)
!2521 = !DILocation(line: 0, scope: !2517)
!2522 = !DILocation(line: 4289, column: 16, scope: !2516)
!2523 = !DILocation(line: 4289, column: 2, scope: !2517)
!2524 = !DILocation(line: 4291, column: 22, scope: !2515)
!2525 = !DILocation(line: 4292, column: 6, scope: !2515)
!2526 = !DILocation(line: 4293, column: 12, scope: !2519)
!2527 = !DILocation(line: 4293, column: 10, scope: !2515)
!2528 = !DILocation(line: 4294, column: 8, scope: !2519)
!2529 = !DILocation(line: 4289, column: 23, scope: !2516)
!2530 = !DILocation(line: 4289, column: 2, scope: !2516)
!2531 = distinct !{!2531, !2523, !2532}
!2532 = !DILocation(line: 4295, column: 4, scope: !2517)
!2533 = !DILocation(line: 4300, column: 7, scope: !1700)
!2534 = !DILocation(line: 4301, column: 30, scope: !1700)
!2535 = !DILocation(line: 4301, column: 41, scope: !1700)
!2536 = !DILocation(line: 4301, column: 48, scope: !1700)
!2537 = !DILocation(line: 4301, column: 7, scope: !1700)
!2538 = !DILocation(line: 4302, column: 7, scope: !1700)
!2539 = !DILocation(line: 4303, column: 7, scope: !1700)
!2540 = !DILocation(line: 4306, column: 7, scope: !1700)
!2541 = !DILocation(line: 4307, column: 30, scope: !1700)
!2542 = !DILocation(line: 4307, column: 41, scope: !1700)
!2543 = !DILocation(line: 4307, column: 7, scope: !1700)
!2544 = !DILocation(line: 4308, column: 7, scope: !1700)
!2545 = !DILocation(line: 4311, column: 7, scope: !1700)
!2546 = !DILocation(line: 4312, column: 30, scope: !1700)
!2547 = !DILocation(line: 4312, column: 41, scope: !1700)
!2548 = !DILocation(line: 4312, column: 7, scope: !1700)
!2549 = !DILocation(line: 4313, column: 7, scope: !1700)
!2550 = !DILocation(line: 4316, column: 7, scope: !1700)
!2551 = !DILocation(line: 4317, column: 30, scope: !1700)
!2552 = !DILocation(line: 4317, column: 44, scope: !1700)
!2553 = !DILocation(line: 4317, column: 7, scope: !1700)
!2554 = !DILocation(line: 4318, column: 7, scope: !1700)
!2555 = !DILocation(line: 4319, column: 44, scope: !1700)
!2556 = !DILocation(line: 4319, column: 48, scope: !1700)
!2557 = !DILocation(line: 4319, column: 26, scope: !1700)
!2558 = !DILocation(line: 4319, column: 7, scope: !1700)
!2559 = !DILocation(line: 4320, column: 7, scope: !1700)
!2560 = !DILocation(line: 4321, column: 7, scope: !1700)
!2561 = !DILocation(line: 4324, column: 7, scope: !1700)
!2562 = !DILocation(line: 4325, column: 30, scope: !1700)
!2563 = !DILocation(line: 4325, column: 41, scope: !1700)
!2564 = !DILocation(line: 4325, column: 48, scope: !1700)
!2565 = !DILocation(line: 4325, column: 7, scope: !1700)
!2566 = !DILocation(line: 4326, column: 7, scope: !1700)
!2567 = !DILocation(line: 4327, column: 7, scope: !1700)
!2568 = !DILocation(line: 4330, column: 7, scope: !1700)
!2569 = !DILocation(line: 4331, column: 7, scope: !1700)
!2570 = !DILocation(line: 4333, column: 1, scope: !1692)
!2571 = distinct !DISubprogram(name: "d_print_flush", scope: !3, file: !3, line: 3320, type: !2572, scopeLine: 3321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !1668}
!2574 = !{!2575}
!2575 = !DILocalVariable(name: "dpi", arg: 1, scope: !2571, file: !3, line: 3320, type: !1668)
!2576 = !DILocation(line: 0, scope: !2571)
!2577 = !DILocation(line: 3322, column: 17, scope: !2571)
!2578 = !DILocation(line: 3322, column: 3, scope: !2571)
!2579 = !DILocation(line: 3322, column: 22, scope: !2571)
!2580 = !DILocation(line: 3323, column: 8, scope: !2571)
!2581 = !DILocation(line: 3323, column: 18, scope: !2571)
!2582 = !DILocation(line: 3323, column: 33, scope: !2571)
!2583 = !DILocation(line: 3323, column: 43, scope: !2571)
!2584 = !DILocation(line: 3323, column: 3, scope: !2571)
!2585 = !DILocation(line: 3324, column: 12, scope: !2571)
!2586 = !DILocation(line: 3325, column: 1, scope: !2571)
!2587 = distinct !DISubprogram(name: "d_print_saw_error", scope: !3, file: !3, line: 3312, type: !2588, scopeLine: 3313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!102, !1668}
!2590 = !{!2591}
!2591 = !DILocalVariable(name: "dpi", arg: 1, scope: !2587, file: !3, line: 3312, type: !1668)
!2592 = !DILocation(line: 0, scope: !2587)
!2593 = !DILocation(line: 3314, column: 15, scope: !2587)
!2594 = !DILocation(line: 3314, column: 32, scope: !2587)
!2595 = !DILocation(line: 3314, column: 3, scope: !2587)
!2596 = distinct !DISubprogram(name: "cplus_demangle_print", scope: !3, file: !3, line: 3404, type: !2597, scopeLine: 3406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!242, !102, !1621, !102, !411}
!2599 = !{!2600, !2601, !2602, !2603, !2604}
!2600 = !DILocalVariable(name: "options", arg: 1, scope: !2596, file: !3, line: 3404, type: !102)
!2601 = !DILocalVariable(name: "dc", arg: 2, scope: !2596, file: !3, line: 3404, type: !1621)
!2602 = !DILocalVariable(name: "estimate", arg: 3, scope: !2596, file: !3, line: 3405, type: !102)
!2603 = !DILocalVariable(name: "palc", arg: 4, scope: !2596, file: !3, line: 3405, type: !411)
!2604 = !DILocalVariable(name: "dgs", scope: !2596, file: !3, line: 3407, type: !244)
!2605 = !DILocation(line: 0, scope: !2596)
!2606 = !DILocation(line: 3407, column: 3, scope: !2596)
!2607 = !DILocation(line: 3409, column: 33, scope: !2596)
!2608 = !DILocation(line: 3409, column: 3, scope: !2596)
!2609 = !DILocation(line: 3411, column: 9, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 3411, column: 7)
!2611 = !DILocation(line: 3411, column: 7, scope: !2596)
!2612 = !DILocation(line: 3415, column: 17, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 3414, column: 5)
!2614 = !DILocation(line: 3415, column: 7, scope: !2613)
!2615 = !DILocation(line: 3416, column: 13, scope: !2613)
!2616 = !DILocation(line: 3417, column: 7, scope: !2613)
!2617 = !DILocation(line: 3420, column: 15, scope: !2596)
!2618 = !DILocation(line: 3420, column: 11, scope: !2596)
!2619 = !DILocation(line: 3420, column: 9, scope: !2596)
!2620 = !DILocation(line: 3421, column: 14, scope: !2596)
!2621 = !DILocation(line: 3421, column: 3, scope: !2596)
!2622 = !DILocation(line: 3422, column: 1, scope: !2596)
!2623 = distinct !DISubprogram(name: "d_growable_string_init", scope: !3, file: !3, line: 3212, type: !2624, scopeLine: 3213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !243, !110}
!2626 = !{!2627, !2628}
!2627 = !DILocalVariable(name: "dgs", arg: 1, scope: !2623, file: !3, line: 3212, type: !243)
!2628 = !DILocalVariable(name: "estimate", arg: 2, scope: !2623, file: !3, line: 3212, type: !110)
!2629 = !DILocation(line: 0, scope: !2623)
!2630 = !DILocation(line: 3214, column: 8, scope: !2623)
!2631 = !DILocation(line: 3214, column: 12, scope: !2623)
!2632 = !DILocation(line: 3215, column: 8, scope: !2623)
!2633 = !DILocation(line: 3215, column: 12, scope: !2623)
!2634 = !DILocation(line: 3216, column: 8, scope: !2623)
!2635 = !DILocation(line: 3216, column: 12, scope: !2623)
!2636 = !DILocation(line: 3217, column: 8, scope: !2623)
!2637 = !DILocation(line: 3217, column: 27, scope: !2623)
!2638 = !DILocation(line: 3219, column: 16, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 3219, column: 7)
!2640 = !DILocation(line: 3219, column: 7, scope: !2623)
!2641 = !DILocation(line: 3220, column: 5, scope: !2639)
!2642 = !DILocation(line: 3221, column: 1, scope: !2623)
!2643 = distinct !DISubprogram(name: "d_growable_string_callback_adapter", scope: !3, file: !3, line: 3278, type: !108, scopeLine: 3279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2644)
!2644 = !{!2645, !2646, !2647, !2648}
!2645 = !DILocalVariable(name: "s", arg: 1, scope: !2643, file: !3, line: 3278, type: !103)
!2646 = !DILocalVariable(name: "l", arg: 2, scope: !2643, file: !3, line: 3278, type: !110)
!2647 = !DILocalVariable(name: "opaque", arg: 3, scope: !2643, file: !3, line: 3278, type: !113)
!2648 = !DILocalVariable(name: "dgs", scope: !2643, file: !3, line: 3280, type: !243)
!2649 = !DILocation(line: 0, scope: !2643)
!2650 = !DILocation(line: 3280, column: 35, scope: !2643)
!2651 = !DILocation(line: 3282, column: 3, scope: !2643)
!2652 = !DILocation(line: 3283, column: 1, scope: !2643)
!2653 = distinct !DISubprogram(name: "cplus_demangle_init_info", scope: !3, file: !3, line: 4739, type: !2654, scopeLine: 4741, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !103, !102, !110, !597}
!2656 = !{!2657, !2658, !2659, !2660}
!2657 = !DILocalVariable(name: "mangled", arg: 1, scope: !2653, file: !3, line: 4739, type: !103)
!2658 = !DILocalVariable(name: "options", arg: 2, scope: !2653, file: !3, line: 4739, type: !102)
!2659 = !DILocalVariable(name: "len", arg: 3, scope: !2653, file: !3, line: 4739, type: !110)
!2660 = !DILocalVariable(name: "di", arg: 4, scope: !2653, file: !3, line: 4740, type: !597)
!2661 = !DILocation(line: 0, scope: !2653)
!2662 = !DILocation(line: 4742, column: 7, scope: !2653)
!2663 = !DILocation(line: 4742, column: 9, scope: !2653)
!2664 = !DILocation(line: 4743, column: 22, scope: !2653)
!2665 = !DILocation(line: 4743, column: 7, scope: !2653)
!2666 = !DILocation(line: 4743, column: 12, scope: !2653)
!2667 = !DILocation(line: 4744, column: 7, scope: !2653)
!2668 = !DILocation(line: 4744, column: 15, scope: !2653)
!2669 = !DILocation(line: 4746, column: 7, scope: !2653)
!2670 = !DILocation(line: 4746, column: 9, scope: !2653)
!2671 = !DILocation(line: 4751, column: 19, scope: !2653)
!2672 = !DILocation(line: 4751, column: 7, scope: !2653)
!2673 = !DILocation(line: 4751, column: 17, scope: !2653)
!2674 = !DILocation(line: 4752, column: 7, scope: !2653)
!2675 = !DILocation(line: 4752, column: 17, scope: !2653)
!2676 = !DILocation(line: 4756, column: 7, scope: !2653)
!2677 = !DILocation(line: 4756, column: 16, scope: !2653)
!2678 = !DILocation(line: 4757, column: 7, scope: !2653)
!2679 = !DILocation(line: 4757, column: 16, scope: !2653)
!2680 = !DILocation(line: 4758, column: 7, scope: !2653)
!2681 = !DILocation(line: 4758, column: 16, scope: !2653)
!2682 = !DILocation(line: 4760, column: 7, scope: !2653)
!2683 = !DILocation(line: 4760, column: 17, scope: !2653)
!2684 = !DILocation(line: 4762, column: 7, scope: !2653)
!2685 = !DILocation(line: 4762, column: 17, scope: !2653)
!2686 = !DILocation(line: 4763, column: 1, scope: !2653)
!2687 = distinct !DISubprogram(name: "cplus_demangle_v3", scope: !3, file: !3, line: 5022, type: !2688, scopeLine: 5023, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!242, !103, !102}
!2690 = !{!2691, !2692, !2693}
!2691 = !DILocalVariable(name: "mangled", arg: 1, scope: !2687, file: !3, line: 5022, type: !103)
!2692 = !DILocalVariable(name: "options", arg: 2, scope: !2687, file: !3, line: 5022, type: !102)
!2693 = !DILocalVariable(name: "alc", scope: !2687, file: !3, line: 5024, type: !110)
!2694 = !DILocation(line: 0, scope: !2687)
!2695 = !DILocation(line: 5024, column: 3, scope: !2687)
!2696 = !DILocation(line: 5026, column: 10, scope: !2687)
!2697 = !DILocation(line: 5027, column: 1, scope: !2687)
!2698 = !DILocation(line: 5026, column: 3, scope: !2687)
!2699 = distinct !DISubprogram(name: "d_demangle", scope: !3, file: !3, line: 4862, type: !2700, scopeLine: 4863, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!242, !103, !102, !411}
!2702 = !{!2703, !2704, !2705, !2706, !2707}
!2703 = !DILocalVariable(name: "mangled", arg: 1, scope: !2699, file: !3, line: 4862, type: !103)
!2704 = !DILocalVariable(name: "options", arg: 2, scope: !2699, file: !3, line: 4862, type: !102)
!2705 = !DILocalVariable(name: "palc", arg: 3, scope: !2699, file: !3, line: 4862, type: !411)
!2706 = !DILocalVariable(name: "dgs", scope: !2699, file: !3, line: 4864, type: !244)
!2707 = !DILocalVariable(name: "status", scope: !2699, file: !3, line: 4865, type: !102)
!2708 = !DILocation(line: 0, scope: !2699)
!2709 = !DILocation(line: 4864, column: 3, scope: !2699)
!2710 = !DILocation(line: 4867, column: 3, scope: !2699)
!2711 = !DILocation(line: 4869, column: 12, scope: !2699)
!2712 = !DILocation(line: 4871, column: 14, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 4871, column: 7)
!2714 = !DILocation(line: 4871, column: 7, scope: !2699)
!2715 = !DILocation(line: 4873, column: 17, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 4872, column: 5)
!2717 = !DILocation(line: 4873, column: 7, scope: !2716)
!2718 = !DILocation(line: 4874, column: 13, scope: !2716)
!2719 = !DILocation(line: 4875, column: 7, scope: !2716)
!2720 = !DILocation(line: 4878, column: 15, scope: !2699)
!2721 = !DILocation(line: 4878, column: 11, scope: !2699)
!2722 = !DILocation(line: 4878, column: 9, scope: !2699)
!2723 = !DILocation(line: 4879, column: 14, scope: !2699)
!2724 = !DILocation(line: 4879, column: 3, scope: !2699)
!2725 = !DILocation(line: 4880, column: 1, scope: !2699)
!2726 = distinct !DISubprogram(name: "cplus_demangle_v3_callback", scope: !3, file: !3, line: 5030, type: !100, scopeLine: 5032, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2727)
!2727 = !{!2728, !2729, !2730, !2731}
!2728 = !DILocalVariable(name: "mangled", arg: 1, scope: !2726, file: !3, line: 5030, type: !103)
!2729 = !DILocalVariable(name: "options", arg: 2, scope: !2726, file: !3, line: 5030, type: !102)
!2730 = !DILocalVariable(name: "callback", arg: 3, scope: !2726, file: !3, line: 5031, type: !106)
!2731 = !DILocalVariable(name: "opaque", arg: 4, scope: !2726, file: !3, line: 5031, type: !113)
!2732 = !DILocation(line: 0, scope: !2726)
!2733 = !DILocation(line: 5033, column: 10, scope: !2726)
!2734 = !DILocation(line: 5033, column: 3, scope: !2726)
!2735 = !DILocation(line: 0, scope: !99)
!2736 = !DILocation(line: 4782, column: 3, scope: !99)
!2737 = !DILocation(line: 4786, column: 7, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !99, file: !3, line: 4786, column: 7)
!2739 = !DILocation(line: 4786, column: 18, scope: !2738)
!2740 = !DILocation(line: 4786, column: 25, scope: !2738)
!2741 = !DILocation(line: 4786, column: 28, scope: !2738)
!2742 = !DILocation(line: 4786, column: 39, scope: !2738)
!2743 = !DILocation(line: 4786, column: 7, scope: !99)
!2744 = !DILocation(line: 4788, column: 12, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 4788, column: 12)
!2746 = !DILocation(line: 4788, column: 45, scope: !2745)
!2747 = !DILocation(line: 4789, column: 5, scope: !2745)
!2748 = !DILocation(line: 4789, column: 9, scope: !2745)
!2749 = !DILocation(line: 4789, column: 20, scope: !2745)
!2750 = !DILocation(line: 4789, column: 27, scope: !2745)
!2751 = !DILocation(line: 4789, column: 41, scope: !2745)
!2752 = !DILocation(line: 4789, column: 48, scope: !2745)
!2753 = !DILocation(line: 4789, column: 62, scope: !2745)
!2754 = !DILocation(line: 4790, column: 5, scope: !2745)
!2755 = !DILocation(line: 4790, column: 9, scope: !2745)
!2756 = !DILocation(line: 4790, column: 20, scope: !2745)
!2757 = !DILocation(line: 4790, column: 27, scope: !2745)
!2758 = !DILocation(line: 4790, column: 41, scope: !2745)
!2759 = !DILocation(line: 4791, column: 5, scope: !2745)
!2760 = !DILocation(line: 4791, column: 8, scope: !2745)
!2761 = !DILocation(line: 4791, column: 20, scope: !2745)
!2762 = !DILocation(line: 4788, column: 12, scope: !2738)
!2763 = !DILocation(line: 4792, column: 23, scope: !2745)
!2764 = !DILocation(line: 4792, column: 12, scope: !2745)
!2765 = !DILocation(line: 4792, column: 5, scope: !2745)
!2766 = !DILocation(line: 4795, column: 20, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 4795, column: 11)
!2768 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 4794, column: 5)
!2769 = !DILocation(line: 4795, column: 34, scope: !2767)
!2770 = !DILocation(line: 4795, column: 11, scope: !2768)
!2771 = !DILocation(line: 0, scope: !2738)
!2772 = !DILocation(line: 4800, column: 47, scope: !99)
!2773 = !DILocation(line: 4800, column: 3, scope: !99)
!2774 = !DILocation(line: 4804, column: 54, scope: !223)
!2775 = !DILocation(line: 4804, column: 19, scope: !223)
!2776 = !DILocation(line: 0, scope: !223)
!2777 = !DILocation(line: 4804, column: 45, scope: !223)
!2778 = !DILocation(line: 4805, column: 54, scope: !223)
!2779 = !DILocation(line: 4805, column: 19, scope: !223)
!2780 = !DILocation(line: 4805, column: 46, scope: !223)
!2781 = !DILocation(line: 4807, column: 8, scope: !223)
!2782 = !DILocation(line: 4807, column: 14, scope: !223)
!2783 = !DILocation(line: 4808, column: 8, scope: !223)
!2784 = !DILocation(line: 4808, column: 13, scope: !223)
!2785 = !DILocation(line: 4814, column: 5, scope: !223)
!2786 = !DILocation(line: 4817, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !223, file: !3, line: 4815, column: 7)
!2788 = !DILocation(line: 4818, column: 2, scope: !2787)
!2789 = !DILocation(line: 4820, column: 7, scope: !2787)
!2790 = !DILocation(line: 4821, column: 2, scope: !2787)
!2791 = !DILocation(line: 4824, column: 2, scope: !2787)
!2792 = !DILocation(line: 4826, column: 12, scope: !2787)
!2793 = !DILocation(line: 4826, column: 7, scope: !2787)
!2794 = !DILocation(line: 4829, column: 37, scope: !2787)
!2795 = !DILocation(line: 4829, column: 6, scope: !2787)
!2796 = !DILocation(line: 4825, column: 7, scope: !2787)
!2797 = !DILocation(line: 4831, column: 2, scope: !2787)
!2798 = !DILocation(line: 4832, column: 2, scope: !2787)
!2799 = !DILocation(line: 4839, column: 19, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !223, file: !3, line: 4839, column: 9)
!2801 = !DILocation(line: 4839, column: 34, scope: !2800)
!2802 = !DILocation(line: 4839, column: 40, scope: !2800)
!2803 = !DILocation(line: 4839, column: 43, scope: !2800)
!2804 = !DILocation(line: 4839, column: 61, scope: !2800)
!2805 = !DILocation(line: 4839, column: 9, scope: !223)
!2806 = !DILocation(line: 4846, column: 18, scope: !223)
!2807 = !DILocation(line: 4846, column: 14, scope: !223)
!2808 = !DILocation(line: 4847, column: 16, scope: !223)
!2809 = !DILocation(line: 4849, column: 3, scope: !99)
!2810 = !DILocation(line: 4851, column: 3, scope: !99)
!2811 = !DILocation(line: 4852, column: 1, scope: !99)
!2812 = distinct !DISubprogram(name: "java_demangle_v3", scope: !3, file: !3, line: 5043, type: !2813, scopeLine: 5044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!242, !103}
!2815 = !{!2816, !2817}
!2816 = !DILocalVariable(name: "mangled", arg: 1, scope: !2812, file: !3, line: 5043, type: !103)
!2817 = !DILocalVariable(name: "alc", scope: !2812, file: !3, line: 5045, type: !110)
!2818 = !DILocation(line: 0, scope: !2812)
!2819 = !DILocation(line: 5045, column: 3, scope: !2812)
!2820 = !DILocation(line: 5047, column: 10, scope: !2812)
!2821 = !DILocation(line: 5048, column: 1, scope: !2812)
!2822 = !DILocation(line: 5047, column: 3, scope: !2812)
!2823 = distinct !DISubprogram(name: "java_demangle_v3_callback", scope: !3, file: !3, line: 5051, type: !2824, scopeLine: 5053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!102, !103, !106, !113}
!2826 = !{!2827, !2828, !2829}
!2827 = !DILocalVariable(name: "mangled", arg: 1, scope: !2823, file: !3, line: 5051, type: !103)
!2828 = !DILocalVariable(name: "callback", arg: 2, scope: !2823, file: !3, line: 5052, type: !106)
!2829 = !DILocalVariable(name: "opaque", arg: 3, scope: !2823, file: !3, line: 5052, type: !113)
!2830 = !DILocation(line: 0, scope: !2823)
!2831 = !DILocation(line: 5054, column: 10, scope: !2823)
!2832 = !DILocation(line: 5054, column: 3, scope: !2823)
!2833 = distinct !DISubprogram(name: "is_gnu_v3_mangled_ctor", scope: !3, file: !3, line: 5138, type: !2834, scopeLine: 5139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!75, !103}
!2836 = !{!2837, !2838, !2839}
!2837 = !DILocalVariable(name: "name", arg: 1, scope: !2833, file: !3, line: 5138, type: !103)
!2838 = !DILocalVariable(name: "ctor_kind", scope: !2833, file: !3, line: 5140, type: !75)
!2839 = !DILocalVariable(name: "dtor_kind", scope: !2833, file: !3, line: 5141, type: !80)
!2840 = !DILocation(line: 0, scope: !2833)
!2841 = !DILocation(line: 5140, column: 3, scope: !2833)
!2842 = !DILocation(line: 5141, column: 3, scope: !2833)
!2843 = !DILocation(line: 5143, column: 9, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 5143, column: 7)
!2845 = !DILocation(line: 5143, column: 7, scope: !2833)
!2846 = !DILocation(line: 5146, column: 1, scope: !2833)
!2847 = distinct !DISubprogram(name: "is_ctor_or_dtor", scope: !3, file: !3, line: 5068, type: !2848, scopeLine: 5071, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2852)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!102, !103, !2850, !2851}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858, !2859, !2861, !2865, !2866}
!2853 = !DILocalVariable(name: "mangled", arg: 1, scope: !2847, file: !3, line: 5068, type: !103)
!2854 = !DILocalVariable(name: "ctor_kind", arg: 2, scope: !2847, file: !3, line: 5069, type: !2850)
!2855 = !DILocalVariable(name: "dtor_kind", arg: 3, scope: !2847, file: !3, line: 5070, type: !2851)
!2856 = !DILocalVariable(name: "di", scope: !2847, file: !3, line: 5072, type: !121)
!2857 = !DILocalVariable(name: "dc", scope: !2847, file: !3, line: 5073, type: !128)
!2858 = !DILocalVariable(name: "ret", scope: !2847, file: !3, line: 5074, type: !102)
!2859 = !DILocalVariable(name: "__vla_expr0", scope: !2860, type: !112, flags: DIFlagArtificial)
!2860 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 5081, column: 3)
!2861 = !DILocalVariable(name: "comps", scope: !2860, file: !3, line: 5083, type: !2862)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, elements: !2863)
!2863 = !{!2864}
!2864 = !DISubrange(count: !2859)
!2865 = !DILocalVariable(name: "__vla_expr1", scope: !2860, type: !112, flags: DIFlagArtificial)
!2866 = !DILocalVariable(name: "subs", scope: !2860, file: !3, line: 5084, type: !2867)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, elements: !2868)
!2868 = !{!2869}
!2869 = !DISubrange(count: !2865)
!2870 = !DILocation(line: 0, scope: !2847)
!2871 = !DILocation(line: 5072, column: 3, scope: !2847)
!2872 = !DILocation(line: 5076, column: 14, scope: !2847)
!2873 = !DILocation(line: 5077, column: 14, scope: !2847)
!2874 = !DILocation(line: 5079, column: 51, scope: !2847)
!2875 = !DILocation(line: 5079, column: 3, scope: !2847)
!2876 = !DILocation(line: 5083, column: 54, scope: !2860)
!2877 = !DILocation(line: 5083, column: 19, scope: !2860)
!2878 = !DILocation(line: 0, scope: !2860)
!2879 = !DILocation(line: 5083, column: 45, scope: !2860)
!2880 = !DILocation(line: 5084, column: 54, scope: !2860)
!2881 = !DILocation(line: 5084, column: 19, scope: !2860)
!2882 = !DILocation(line: 5084, column: 46, scope: !2860)
!2883 = !DILocation(line: 5086, column: 8, scope: !2860)
!2884 = !DILocation(line: 5086, column: 14, scope: !2860)
!2885 = !DILocation(line: 5087, column: 8, scope: !2860)
!2886 = !DILocation(line: 5087, column: 13, scope: !2860)
!2887 = !DILocation(line: 5093, column: 10, scope: !2860)
!2888 = !DILocation(line: 5099, column: 5, scope: !2860)
!2889 = !DILocation(line: 5098, column: 9, scope: !2860)
!2890 = !DILocation(line: 5099, column: 15, scope: !2860)
!2891 = !DILocation(line: 5101, column: 14, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 5100, column: 7)
!2893 = !DILocation(line: 5101, column: 2, scope: !2892)
!2894 = !DILocation(line: 5111, column: 11, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 5102, column: 4)
!2896 = !DILocation(line: 5112, column: 6, scope: !2895)
!2897 = !DILocation(line: 5115, column: 11, scope: !2895)
!2898 = !DILocation(line: 5116, column: 6, scope: !2895)
!2899 = !DILocation(line: 5118, column: 23, scope: !2895)
!2900 = !DILocation(line: 5118, column: 32, scope: !2895)
!2901 = !DILocation(line: 5118, column: 17, scope: !2895)
!2902 = !DILocation(line: 5121, column: 6, scope: !2895)
!2903 = !DILocation(line: 5123, column: 23, scope: !2895)
!2904 = !DILocation(line: 5123, column: 32, scope: !2895)
!2905 = !DILocation(line: 5123, column: 17, scope: !2895)
!2906 = !DILocation(line: 5126, column: 6, scope: !2895)
!2907 = !DILocation(line: 0, scope: !2895)
!2908 = distinct !{!2908, !2888, !2909}
!2909 = !DILocation(line: 5128, column: 7, scope: !2860)
!2910 = !DILocation(line: 5129, column: 3, scope: !2847)
!2911 = !DILocation(line: 5132, column: 1, scope: !2847)
!2912 = !DILocation(line: 5131, column: 3, scope: !2847)
!2913 = distinct !DISubprogram(name: "is_gnu_v3_mangled_dtor", scope: !3, file: !3, line: 5153, type: !2914, scopeLine: 5154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!80, !103}
!2916 = !{!2917, !2918, !2919}
!2917 = !DILocalVariable(name: "name", arg: 1, scope: !2913, file: !3, line: 5153, type: !103)
!2918 = !DILocalVariable(name: "ctor_kind", scope: !2913, file: !3, line: 5155, type: !75)
!2919 = !DILocalVariable(name: "dtor_kind", scope: !2913, file: !3, line: 5156, type: !80)
!2920 = !DILocation(line: 0, scope: !2913)
!2921 = !DILocation(line: 5155, column: 3, scope: !2913)
!2922 = !DILocation(line: 5156, column: 3, scope: !2913)
!2923 = !DILocation(line: 5158, column: 9, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 5158, column: 7)
!2925 = !DILocation(line: 5158, column: 7, scope: !2913)
!2926 = !DILocation(line: 5161, column: 1, scope: !2913)
!2927 = distinct !DISubprogram(name: "d_special_name", scope: !3, file: !3, line: 1743, type: !675, scopeLine: 1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2928)
!2928 = !{!2929, !2930, !2935, !2936}
!2929 = !DILocalVariable(name: "di", arg: 1, scope: !2927, file: !3, line: 1743, type: !597)
!2930 = !DILocalVariable(name: "derived_type", scope: !2931, file: !3, line: 1787, type: !128)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1786, column: 4)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 1749, column: 2)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 1747, column: 5)
!2934 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1746, column: 7)
!2935 = !DILocalVariable(name: "offset", scope: !2931, file: !3, line: 1788, type: !196)
!2936 = !DILocalVariable(name: "base_type", scope: !2931, file: !3, line: 1789, type: !128)
!2937 = !DILocation(line: 0, scope: !2927)
!2938 = !DILocation(line: 1745, column: 7, scope: !2927)
!2939 = !DILocation(line: 1745, column: 17, scope: !2927)
!2940 = !DILocation(line: 1746, column: 7, scope: !2934)
!2941 = !DILocation(line: 1746, column: 7, scope: !2927)
!2942 = !DILocation(line: 1748, column: 15, scope: !2933)
!2943 = !DILocation(line: 1748, column: 7, scope: !2933)
!2944 = !DILocation(line: 1751, column: 18, scope: !2932)
!2945 = !DILocation(line: 1753, column: 10, scope: !2932)
!2946 = !DILocation(line: 1752, column: 11, scope: !2932)
!2947 = !DILocation(line: 1752, column: 4, scope: !2932)
!2948 = !DILocation(line: 1755, column: 18, scope: !2932)
!2949 = !DILocation(line: 1757, column: 10, scope: !2932)
!2950 = !DILocation(line: 1756, column: 11, scope: !2932)
!2951 = !DILocation(line: 1756, column: 4, scope: !2932)
!2952 = !DILocation(line: 1760, column: 10, scope: !2932)
!2953 = !DILocation(line: 1759, column: 11, scope: !2932)
!2954 = !DILocation(line: 1759, column: 4, scope: !2932)
!2955 = !DILocation(line: 1763, column: 10, scope: !2932)
!2956 = !DILocation(line: 1762, column: 11, scope: !2932)
!2957 = !DILocation(line: 1762, column: 4, scope: !2932)
!2958 = !DILocation(line: 1766, column: 10, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1766, column: 8)
!2960 = !DILocation(line: 1766, column: 8, scope: !2932)
!2961 = !DILocation(line: 1769, column: 10, scope: !2932)
!2962 = !DILocation(line: 1768, column: 11, scope: !2932)
!2963 = !DILocation(line: 1768, column: 4, scope: !2932)
!2964 = !DILocation(line: 1772, column: 10, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1772, column: 8)
!2966 = !DILocation(line: 1772, column: 8, scope: !2932)
!2967 = !DILocation(line: 1775, column: 10, scope: !2932)
!2968 = !DILocation(line: 1774, column: 11, scope: !2932)
!2969 = !DILocation(line: 1774, column: 4, scope: !2932)
!2970 = !DILocation(line: 1778, column: 10, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1778, column: 8)
!2972 = !DILocation(line: 1778, column: 8, scope: !2932)
!2973 = !DILocation(line: 1780, column: 10, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1780, column: 8)
!2975 = !DILocation(line: 1780, column: 8, scope: !2932)
!2976 = !DILocation(line: 1783, column: 10, scope: !2932)
!2977 = !DILocation(line: 1782, column: 11, scope: !2932)
!2978 = !DILocation(line: 1782, column: 4, scope: !2932)
!2979 = !DILocation(line: 1791, column: 21, scope: !2931)
!2980 = !DILocation(line: 0, scope: !2931)
!2981 = !DILocation(line: 1792, column: 15, scope: !2931)
!2982 = !DILocation(line: 1793, column: 17, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1793, column: 10)
!2984 = !DILocation(line: 1793, column: 10, scope: !2931)
!2985 = !DILocation(line: 1795, column: 12, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1795, column: 10)
!2987 = !DILocation(line: 1795, column: 10, scope: !2931)
!2988 = !DILocation(line: 1797, column: 18, scope: !2931)
!2989 = !DILocation(line: 1800, column: 20, scope: !2931)
!2990 = !DILocation(line: 1801, column: 13, scope: !2931)
!2991 = !DILocation(line: 1801, column: 6, scope: !2931)
!2992 = !DILocation(line: 1807, column: 10, scope: !2932)
!2993 = !DILocation(line: 1806, column: 11, scope: !2932)
!2994 = !DILocation(line: 1806, column: 4, scope: !2932)
!2995 = !DILocation(line: 1810, column: 10, scope: !2932)
!2996 = !DILocation(line: 1809, column: 11, scope: !2932)
!2997 = !DILocation(line: 1809, column: 4, scope: !2932)
!2998 = !DILocation(line: 1816, column: 12, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 1816, column: 12)
!3000 = !DILocation(line: 1816, column: 12, scope: !2934)
!3001 = !DILocation(line: 1818, column: 15, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 1817, column: 5)
!3003 = !DILocation(line: 1818, column: 7, scope: !3002)
!3004 = !DILocation(line: 1821, column: 54, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 1819, column: 2)
!3006 = !DILocation(line: 1821, column: 11, scope: !3005)
!3007 = !DILocation(line: 1821, column: 4, scope: !3005)
!3008 = !DILocation(line: 1824, column: 56, scope: !3005)
!3009 = !DILocation(line: 1824, column: 11, scope: !3005)
!3010 = !DILocation(line: 1824, column: 4, scope: !3005)
!3011 = !DILocation(line: 1829, column: 10, scope: !3005)
!3012 = !DILocation(line: 1828, column: 11, scope: !3005)
!3013 = !DILocation(line: 1828, column: 4, scope: !3005)
!3014 = !DILocation(line: 1832, column: 11, scope: !3005)
!3015 = !DILocation(line: 1832, column: 4, scope: !3005)
!3016 = !DILocation(line: 0, scope: !2934)
!3017 = !DILocation(line: 1840, column: 1, scope: !2927)
!3018 = distinct !DISubprogram(name: "d_name", scope: !3, file: !3, line: 1179, type: !675, scopeLine: 1180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3019)
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DILocalVariable(name: "di", arg: 1, scope: !3018, file: !3, line: 1179, type: !597)
!3021 = !DILocalVariable(name: "peek", scope: !3018, file: !3, line: 1181, type: !105)
!3022 = !DILocalVariable(name: "dc", scope: !3018, file: !3, line: 1182, type: !128)
!3023 = !DILocalVariable(name: "subst", scope: !3024, file: !3, line: 1198, type: !102)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 1197, column: 7)
!3025 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1185, column: 5)
!3026 = !DILocation(line: 0, scope: !3018)
!3027 = !DILocation(line: 1181, column: 15, scope: !3018)
!3028 = !DILocation(line: 1184, column: 11, scope: !3018)
!3029 = !DILocation(line: 1184, column: 3, scope: !3018)
!3030 = !DILocation(line: 1187, column: 14, scope: !3025)
!3031 = !DILocation(line: 1187, column: 7, scope: !3025)
!3032 = !DILocation(line: 1190, column: 14, scope: !3025)
!3033 = !DILocation(line: 1190, column: 7, scope: !3025)
!3034 = !DILocation(line: 1194, column: 14, scope: !3025)
!3035 = !DILocation(line: 1194, column: 7, scope: !3025)
!3036 = !DILocation(line: 1200, column: 6, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1200, column: 6)
!3038 = !DILocation(line: 1200, column: 28, scope: !3037)
!3039 = !DILocation(line: 1200, column: 6, scope: !3024)
!3040 = !DILocation(line: 1202, column: 11, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1201, column: 4)
!3042 = !DILocation(line: 0, scope: !3024)
!3043 = !DILocation(line: 1204, column: 4, scope: !3041)
!3044 = !DILocation(line: 1207, column: 6, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1206, column: 4)
!3046 = !DILocation(line: 1209, column: 10, scope: !3045)
!3047 = !DILocation(line: 1210, column: 10, scope: !3045)
!3048 = !DILocation(line: 1208, column: 11, scope: !3045)
!3049 = !DILocation(line: 1211, column: 10, scope: !3045)
!3050 = !DILocation(line: 1211, column: 20, scope: !3045)
!3051 = !DILocation(line: 0, scope: !3037)
!3052 = !DILocation(line: 1215, column: 6, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1215, column: 6)
!3054 = !DILocation(line: 1215, column: 23, scope: !3053)
!3055 = !DILocation(line: 1215, column: 6, scope: !3024)
!3056 = !DILocation(line: 1227, column: 12, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 1227, column: 10)
!3058 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 1222, column: 4)
!3059 = !DILocation(line: 1227, column: 10, scope: !3058)
!3060 = !DILocation(line: 1229, column: 9, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 1229, column: 7)
!3062 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 1228, column: 8)
!3063 = !DILocation(line: 1229, column: 7, scope: !3062)
!3064 = !DILocation(line: 1233, column: 10, scope: !3058)
!3065 = !DILocation(line: 1232, column: 11, scope: !3058)
!3066 = !DILocation(line: 1240, column: 12, scope: !3025)
!3067 = !DILocation(line: 1241, column: 11, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 1241, column: 11)
!3069 = !DILocation(line: 1241, column: 28, scope: !3068)
!3070 = !DILocation(line: 1241, column: 11, scope: !3025)
!3071 = !DILocation(line: 1246, column: 10, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 1246, column: 8)
!3073 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 1242, column: 2)
!3074 = !DILocation(line: 1246, column: 8, scope: !3073)
!3075 = !DILocation(line: 1249, column: 8, scope: !3073)
!3076 = !DILocation(line: 1248, column: 9, scope: !3073)
!3077 = !DILocation(line: 1250, column: 2, scope: !3073)
!3078 = !DILocation(line: 0, scope: !3025)
!3079 = !DILocation(line: 1253, column: 1, scope: !3018)
!3080 = distinct !DISubprogram(name: "d_bare_function_type", scope: !3, file: !3, line: 2373, type: !595, scopeLine: 2374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3081)
!3081 = !{!3082, !3083, !3084, !3085, !3086}
!3082 = !DILocalVariable(name: "di", arg: 1, scope: !3080, file: !3, line: 2373, type: !597)
!3083 = !DILocalVariable(name: "has_return_type", arg: 2, scope: !3080, file: !3, line: 2373, type: !102)
!3084 = !DILocalVariable(name: "return_type", scope: !3080, file: !3, line: 2375, type: !128)
!3085 = !DILocalVariable(name: "tl", scope: !3080, file: !3, line: 2376, type: !128)
!3086 = !DILocalVariable(name: "peek", scope: !3080, file: !3, line: 2377, type: !105)
!3087 = !DILocation(line: 0, scope: !3080)
!3088 = !DILocation(line: 2381, column: 10, scope: !3080)
!3089 = !DILocation(line: 2382, column: 12, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 2382, column: 7)
!3091 = !DILocation(line: 2382, column: 7, scope: !3080)
!3092 = !DILocation(line: 2384, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 2383, column: 5)
!3094 = !DILocation(line: 2386, column: 5, scope: !3093)
!3095 = !DILocation(line: 2388, column: 7, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 2388, column: 7)
!3097 = !DILocation(line: 2388, column: 7, scope: !3080)
!3098 = !DILocation(line: 2390, column: 21, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 2389, column: 5)
!3100 = !DILocation(line: 2391, column: 23, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 2391, column: 11)
!3102 = !DILocation(line: 2391, column: 11, scope: !3099)
!3103 = !DILocation(line: 0, scope: !3096)
!3104 = !DILocation(line: 2397, column: 8, scope: !3080)
!3105 = !DILocation(line: 2398, column: 10, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 2398, column: 7)
!3107 = !DILocation(line: 2398, column: 7, scope: !3080)
!3108 = !DILocation(line: 2401, column: 10, scope: !3080)
!3109 = !DILocation(line: 2401, column: 3, scope: !3080)
!3110 = !DILocation(line: 2403, column: 1, scope: !3080)
!3111 = distinct !DISubprogram(name: "has_return_type", scope: !3, file: !3, line: 1068, type: !3112, scopeLine: 1069, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!102, !128}
!3114 = !{!3115}
!3115 = !DILocalVariable(name: "dc", arg: 1, scope: !3111, file: !3, line: 1068, type: !128)
!3116 = !DILocation(line: 1081, column: 14, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 1073, column: 5)
!3118 = !DILocation(line: 0, scope: !3111)
!3119 = !DILocation(line: 1070, column: 10, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 1070, column: 7)
!3121 = !DILocation(line: 1070, column: 7, scope: !3111)
!3122 = !DILocation(line: 1072, column: 15, scope: !3111)
!3123 = !DILocation(line: 1072, column: 3, scope: !3111)
!3124 = !DILocation(line: 1077, column: 44, scope: !3117)
!3125 = !DILocation(line: 1077, column: 16, scope: !3117)
!3126 = !DILocation(line: 1077, column: 14, scope: !3117)
!3127 = !DILocation(line: 1077, column: 7, scope: !3117)
!3128 = !DILocation(line: 1081, column: 31, scope: !3117)
!3129 = !DILocation(line: 1083, column: 1, scope: !3111)
!3130 = distinct !DISubprogram(name: "d_call_offset", scope: !3, file: !3, line: 1856, type: !3131, scopeLine: 1857, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!102, !597, !102}
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "di", arg: 1, scope: !3130, file: !3, line: 1856, type: !597)
!3135 = !DILocalVariable(name: "c", arg: 2, scope: !3130, file: !3, line: 1856, type: !102)
!3136 = !DILocation(line: 0, scope: !3130)
!3137 = !DILocation(line: 1858, column: 9, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 1858, column: 7)
!3139 = !DILocation(line: 1858, column: 7, scope: !3130)
!3140 = !DILocation(line: 1859, column: 9, scope: !3138)
!3141 = !DILocation(line: 1861, column: 7, scope: !3130)
!3142 = !DILocation(line: 1862, column: 5, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 1861, column: 7)
!3144 = !DILocation(line: 1865, column: 7, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 1864, column: 5)
!3146 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1863, column: 12)
!3147 = !DILocation(line: 1866, column: 13, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 1866, column: 11)
!3149 = !DILocation(line: 1866, column: 11, scope: !3145)
!3150 = !DILocation(line: 1868, column: 7, scope: !3145)
!3151 = !DILocation(line: 1873, column: 9, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 1873, column: 7)
!3153 = !DILocation(line: 1873, column: 7, scope: !3130)
!3154 = !DILocation(line: 1876, column: 3, scope: !3130)
!3155 = !DILocation(line: 1877, column: 1, scope: !3130)
!3156 = distinct !DISubprogram(name: "d_java_resource", scope: !3, file: !3, line: 1644, type: !675, scopeLine: 1645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3157)
!3157 = !{!3158, !3159, !3160, !3161, !3162, !3163, !3164}
!3158 = !DILocalVariable(name: "di", arg: 1, scope: !3156, file: !3, line: 1644, type: !597)
!3159 = !DILocalVariable(name: "p", scope: !3156, file: !3, line: 1646, type: !128)
!3160 = !DILocalVariable(name: "next", scope: !3156, file: !3, line: 1647, type: !128)
!3161 = !DILocalVariable(name: "len", scope: !3156, file: !3, line: 1648, type: !196)
!3162 = !DILocalVariable(name: "i", scope: !3156, file: !3, line: 1648, type: !196)
!3163 = !DILocalVariable(name: "c", scope: !3156, file: !3, line: 1649, type: !105)
!3164 = !DILocalVariable(name: "str", scope: !3156, file: !3, line: 1650, type: !103)
!3165 = !DILocation(line: 0, scope: !3156)
!3166 = !DILocation(line: 1652, column: 9, scope: !3156)
!3167 = !DILocation(line: 1653, column: 11, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 1653, column: 7)
!3169 = !DILocation(line: 1653, column: 7, scope: !3156)
!3170 = !DILocation(line: 1657, column: 7, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 1657, column: 7)
!3172 = !DILocation(line: 1657, column: 7, scope: !3156)
!3173 = !DILocation(line: 1659, column: 6, scope: !3156)
!3174 = !DILocation(line: 1664, column: 3, scope: !3156)
!3175 = !DILocation(line: 1664, column: 14, scope: !3156)
!3176 = !DILocation(line: 1666, column: 11, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 1665, column: 5)
!3178 = !DILocation(line: 1667, column: 12, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 1667, column: 11)
!3180 = !DILocation(line: 1667, column: 11, scope: !3177)
!3181 = !DILocation(line: 1671, column: 13, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 1671, column: 11)
!3183 = !DILocation(line: 1671, column: 11, scope: !3177)
!3184 = !DILocation(line: 1699, column: 4, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 1698, column: 2)
!3186 = !DILocation(line: 1674, column: 12, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 1672, column: 2)
!3188 = !DILocation(line: 1674, column: 4, scope: !3187)
!3189 = !DILocation(line: 1681, column: 8, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 1675, column: 6)
!3191 = !DILocation(line: 1684, column: 8, scope: !3190)
!3192 = !DILocation(line: 1688, column: 11, scope: !3187)
!3193 = !DILocation(line: 1689, column: 4, scope: !3187)
!3194 = !DILocation(line: 1691, column: 8, scope: !3187)
!3195 = !DILocation(line: 1693, column: 13, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 1693, column: 8)
!3197 = !DILocation(line: 1693, column: 8, scope: !3187)
!3198 = !DILocation(line: 1699, column: 13, scope: !3185)
!3199 = !DILocation(line: 1699, column: 19, scope: !3185)
!3200 = !DILocation(line: 1699, column: 22, scope: !3185)
!3201 = !DILocation(line: 1699, column: 39, scope: !3185)
!3202 = !DILocation(line: 1699, column: 29, scope: !3185)
!3203 = !DILocation(line: 1700, column: 7, scope: !3185)
!3204 = distinct !{!3204, !3184, !3203}
!3205 = !DILocation(line: 1702, column: 33, scope: !3185)
!3206 = !DILocation(line: 1702, column: 11, scope: !3185)
!3207 = !DILocation(line: 1703, column: 4, scope: !3185)
!3208 = !DILocation(line: 1705, column: 8, scope: !3185)
!3209 = !DILocation(line: 1707, column: 13, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 1707, column: 8)
!3211 = !DILocation(line: 1707, column: 8, scope: !3185)
!3212 = !DILocation(line: 0, scope: !3182)
!3213 = !DILocation(line: 1711, column: 13, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 1711, column: 11)
!3215 = !DILocation(line: 1711, column: 11, scope: !3177)
!3216 = !DILocation(line: 1715, column: 8, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 1714, column: 2)
!3218 = !DILocation(line: 1716, column: 10, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 1716, column: 8)
!3220 = !DILocation(line: 1716, column: 8, scope: !3217)
!3221 = !DILocation(line: 0, scope: !3214)
!3222 = distinct !{!3222, !3174, !3223}
!3223 = !DILocation(line: 1719, column: 5, scope: !3156)
!3224 = !DILocation(line: 1721, column: 7, scope: !3156)
!3225 = !DILocation(line: 1723, column: 3, scope: !3156)
!3226 = !DILocation(line: 1724, column: 1, scope: !3156)
!3227 = distinct !DISubprogram(name: "d_make_character", scope: !3, file: !3, line: 1631, type: !595, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3228)
!3228 = !{!3229, !3230, !3231}
!3229 = !DILocalVariable(name: "di", arg: 1, scope: !3227, file: !3, line: 1631, type: !597)
!3230 = !DILocalVariable(name: "c", arg: 2, scope: !3227, file: !3, line: 1631, type: !102)
!3231 = !DILocalVariable(name: "p", scope: !3227, file: !3, line: 1633, type: !128)
!3232 = !DILocation(line: 0, scope: !3227)
!3233 = !DILocation(line: 1634, column: 7, scope: !3227)
!3234 = !DILocation(line: 1635, column: 9, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 1635, column: 7)
!3236 = !DILocation(line: 1635, column: 7, scope: !3227)
!3237 = !DILocation(line: 1637, column: 10, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 1636, column: 5)
!3239 = !DILocation(line: 1637, column: 15, scope: !3238)
!3240 = !DILocation(line: 1638, column: 10, scope: !3238)
!3241 = !DILocation(line: 1638, column: 24, scope: !3238)
!3242 = !DILocation(line: 1638, column: 34, scope: !3238)
!3243 = !DILocation(line: 1639, column: 5, scope: !3238)
!3244 = !DILocation(line: 1640, column: 3, scope: !3227)
!3245 = distinct !DISubprogram(name: "d_make_name", scope: !3, file: !3, line: 889, type: !3246, scopeLine: 890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!128, !597, !103, !102}
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DILocalVariable(name: "di", arg: 1, scope: !3245, file: !3, line: 889, type: !597)
!3250 = !DILocalVariable(name: "s", arg: 2, scope: !3245, file: !3, line: 889, type: !103)
!3251 = !DILocalVariable(name: "len", arg: 3, scope: !3245, file: !3, line: 889, type: !102)
!3252 = !DILocalVariable(name: "p", scope: !3245, file: !3, line: 891, type: !128)
!3253 = !DILocation(line: 0, scope: !3245)
!3254 = !DILocation(line: 893, column: 7, scope: !3245)
!3255 = !DILocation(line: 894, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 894, column: 7)
!3257 = !DILocation(line: 897, column: 1, scope: !3245)
!3258 = distinct !DISubprogram(name: "d_nested_name", scope: !3, file: !3, line: 1260, type: !675, scopeLine: 1261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3259)
!3259 = !{!3260, !3261, !3262}
!3260 = !DILocalVariable(name: "di", arg: 1, scope: !3258, file: !3, line: 1260, type: !597)
!3261 = !DILocalVariable(name: "ret", scope: !3258, file: !3, line: 1262, type: !128)
!3262 = !DILocalVariable(name: "pret", scope: !3258, file: !3, line: 1263, type: !214)
!3263 = !DILocation(line: 0, scope: !3258)
!3264 = !DILocation(line: 1262, column: 3, scope: !3258)
!3265 = !DILocation(line: 1265, column: 9, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1265, column: 7)
!3267 = !DILocation(line: 1265, column: 7, scope: !3258)
!3268 = !DILocation(line: 1268, column: 10, scope: !3258)
!3269 = !DILocation(line: 1269, column: 12, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1269, column: 7)
!3271 = !DILocation(line: 1269, column: 7, scope: !3258)
!3272 = !DILocation(line: 1272, column: 11, scope: !3258)
!3273 = !DILocation(line: 1272, column: 9, scope: !3258)
!3274 = !DILocation(line: 1273, column: 13, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1273, column: 7)
!3276 = !DILocation(line: 1273, column: 7, scope: !3258)
!3277 = !DILocation(line: 1276, column: 9, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1276, column: 7)
!3279 = !DILocation(line: 1276, column: 7, scope: !3258)
!3280 = !DILocation(line: 1279, column: 10, scope: !3258)
!3281 = !DILocation(line: 1279, column: 3, scope: !3258)
!3282 = !DILocation(line: 1280, column: 1, scope: !3258)
!3283 = distinct !DISubprogram(name: "d_local_name", scope: !3, file: !3, line: 2920, type: !675, scopeLine: 2921, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3284)
!3284 = !{!3285, !3286, !3287, !3290}
!3285 = !DILocalVariable(name: "di", arg: 1, scope: !3283, file: !3, line: 2920, type: !597)
!3286 = !DILocalVariable(name: "function", scope: !3283, file: !3, line: 2922, type: !128)
!3287 = !DILocalVariable(name: "name", scope: !3288, file: !3, line: 2943, type: !128)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 2942, column: 5)
!3289 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 2932, column: 7)
!3290 = !DILocalVariable(name: "num", scope: !3288, file: !3, line: 2944, type: !102)
!3291 = !DILocation(line: 0, scope: !3283)
!3292 = !DILocation(line: 2924, column: 9, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 2924, column: 7)
!3294 = !DILocation(line: 2924, column: 7, scope: !3283)
!3295 = !DILocation(line: 2927, column: 14, scope: !3283)
!3296 = !DILocation(line: 2929, column: 9, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 2929, column: 7)
!3298 = !DILocation(line: 2929, column: 7, scope: !3283)
!3299 = !DILocation(line: 2932, column: 7, scope: !3289)
!3300 = !DILocation(line: 2932, column: 24, scope: !3289)
!3301 = !DILocation(line: 2932, column: 7, scope: !3283)
!3302 = !DILocation(line: 2934, column: 7, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 2933, column: 5)
!3304 = !DILocation(line: 2935, column: 13, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 2935, column: 11)
!3306 = !DILocation(line: 2935, column: 11, scope: !3303)
!3307 = !DILocation(line: 2938, column: 6, scope: !3303)
!3308 = !DILocation(line: 2937, column: 14, scope: !3303)
!3309 = !DILocation(line: 2937, column: 7, scope: !3303)
!3310 = !DILocation(line: 0, scope: !3288)
!3311 = !DILocation(line: 2946, column: 28, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 2946, column: 11)
!3313 = !DILocation(line: 2946, column: 11, scope: !3288)
!3314 = !DILocation(line: 2949, column: 4, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 2947, column: 2)
!3316 = !DILocation(line: 2950, column: 10, scope: !3315)
!3317 = !DILocation(line: 2951, column: 12, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 2951, column: 8)
!3319 = !DILocation(line: 2951, column: 8, scope: !3315)
!3320 = !DILocation(line: 2955, column: 14, scope: !3288)
!3321 = !DILocation(line: 2956, column: 11, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 2956, column: 11)
!3323 = !DILocation(line: 2956, column: 11, scope: !3288)
!3324 = !DILocation(line: 2957, column: 16, scope: !3322)
!3325 = !DILocation(line: 2957, column: 2, scope: !3322)
!3326 = !DILocation(line: 2964, column: 12, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 2964, column: 10)
!3328 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 2958, column: 4)
!3329 = !DILocation(line: 2964, column: 10, scope: !3328)
!3330 = !DILocation(line: 2967, column: 15, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 2967, column: 11)
!3332 = !DILocation(line: 2967, column: 11, scope: !3288)
!3333 = !DILocation(line: 2968, column: 9, scope: !3331)
!3334 = !DILocation(line: 2968, column: 2, scope: !3331)
!3335 = !DILocation(line: 2969, column: 14, scope: !3288)
!3336 = !DILocation(line: 2969, column: 7, scope: !3288)
!3337 = !DILocation(line: 2971, column: 1, scope: !3283)
!3338 = distinct !DISubprogram(name: "d_unqualified_name", scope: !3, file: !3, line: 1368, type: !675, scopeLine: 1369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3339)
!3339 = !{!3340, !3341, !3342, !3346}
!3340 = !DILocalVariable(name: "di", arg: 1, scope: !3338, file: !3, line: 1368, type: !597)
!3341 = !DILocalVariable(name: "peek", scope: !3338, file: !3, line: 1370, type: !105)
!3342 = !DILocalVariable(name: "ret", scope: !3343, file: !3, line: 1377, type: !128)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 1376, column: 5)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 1375, column: 12)
!3345 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 1373, column: 7)
!3346 = !DILocalVariable(name: "ret", scope: !3347, file: !3, line: 1388, type: !128)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1387, column: 5)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 1386, column: 12)
!3349 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 1384, column: 12)
!3350 = !DILocation(line: 0, scope: !3338)
!3351 = !DILocation(line: 1372, column: 10, scope: !3338)
!3352 = !DILocation(line: 1373, column: 7, scope: !3345)
!3353 = !DILocation(line: 1374, column: 12, scope: !3345)
!3354 = !DILocation(line: 1374, column: 5, scope: !3345)
!3355 = !DILocation(line: 1375, column: 12, scope: !3344)
!3356 = !DILocation(line: 1379, column: 13, scope: !3343)
!3357 = !DILocation(line: 0, scope: !3343)
!3358 = !DILocation(line: 1380, column: 15, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 1380, column: 11)
!3360 = !DILocation(line: 1380, column: 23, scope: !3359)
!3361 = !DILocation(line: 1380, column: 31, scope: !3359)
!3362 = !DILocation(line: 1380, column: 36, scope: !3359)
!3363 = !DILocation(line: 1380, column: 11, scope: !3343)
!3364 = !DILocation(line: 1381, column: 44, scope: !3359)
!3365 = !DILocation(line: 1381, column: 57, scope: !3359)
!3366 = !DILocation(line: 1381, column: 61, scope: !3359)
!3367 = !DILocation(line: 1381, column: 65, scope: !3359)
!3368 = !DILocation(line: 1381, column: 6, scope: !3359)
!3369 = !DILocation(line: 1381, column: 16, scope: !3359)
!3370 = !DILocation(line: 1381, column: 2, scope: !3359)
!3371 = !DILocation(line: 1384, column: 24, scope: !3349)
!3372 = !DILocation(line: 1385, column: 12, scope: !3349)
!3373 = !DILocation(line: 1385, column: 5, scope: !3349)
!3374 = !DILocation(line: 1386, column: 17, scope: !3348)
!3375 = !DILocation(line: 1386, column: 12, scope: !3349)
!3376 = !DILocation(line: 1390, column: 7, scope: !3347)
!3377 = !DILocation(line: 1392, column: 13, scope: !3347)
!3378 = !DILocation(line: 0, scope: !3347)
!3379 = !DILocation(line: 1393, column: 15, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1393, column: 11)
!3381 = !DILocation(line: 1393, column: 11, scope: !3347)
!3382 = !DILocation(line: 1395, column: 13, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1395, column: 11)
!3384 = !DILocation(line: 1399, column: 17, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1399, column: 12)
!3386 = !DILocation(line: 1399, column: 12, scope: !3348)
!3387 = !DILocation(line: 1401, column: 15, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 1400, column: 5)
!3389 = !DILocation(line: 1401, column: 7, scope: !3388)
!3390 = !DILocation(line: 1404, column: 11, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1402, column: 2)
!3392 = !DILocation(line: 1404, column: 4, scope: !3391)
!3393 = !DILocation(line: 1406, column: 11, scope: !3391)
!3394 = !DILocation(line: 1406, column: 4, scope: !3391)
!3395 = !DILocation(line: 0, scope: !3345)
!3396 = !DILocation(line: 1413, column: 1, scope: !3338)
!3397 = distinct !DISubprogram(name: "d_prefix", scope: !3, file: !3, line: 1294, type: !675, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3398)
!3398 = !{!3399, !3400, !3401, !3403, !3404}
!3399 = !DILocalVariable(name: "di", arg: 1, scope: !3397, file: !3, line: 1294, type: !597)
!3400 = !DILocalVariable(name: "ret", scope: !3397, file: !3, line: 1296, type: !128)
!3401 = !DILocalVariable(name: "peek", scope: !3402, file: !3, line: 1300, type: !105)
!3402 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 1299, column: 5)
!3403 = !DILocalVariable(name: "comb_type", scope: !3402, file: !3, line: 1301, type: !5)
!3404 = !DILocalVariable(name: "dc", scope: !3402, file: !3, line: 1302, type: !128)
!3405 = !DILocation(line: 0, scope: !3397)
!3406 = !DILocation(line: 0, scope: !3402)
!3407 = !DILocation(line: 1298, column: 3, scope: !3397)
!3408 = !DILocation(line: 1296, column: 30, scope: !3397)
!3409 = !DILocation(line: 1304, column: 14, scope: !3402)
!3410 = !DILocation(line: 1305, column: 16, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1305, column: 11)
!3412 = !DILocation(line: 1305, column: 11, scope: !3402)
!3413 = !DILocation(line: 1313, column: 11, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1313, column: 11)
!3415 = !DILocation(line: 1314, column: 7, scope: !3414)
!3416 = !DILocation(line: 1317, column: 12, scope: !3414)
!3417 = !DILocation(line: 1318, column: 12, scope: !3414)
!3418 = !DILocation(line: 1319, column: 7, scope: !3414)
!3419 = !DILocation(line: 1319, column: 2, scope: !3414)
!3420 = !DILocation(line: 1320, column: 21, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 1320, column: 16)
!3422 = !DILocation(line: 1320, column: 16, scope: !3414)
!3423 = !DILocation(line: 1321, column: 7, scope: !3421)
!3424 = !DILocation(line: 1321, column: 2, scope: !3421)
!3425 = !DILocation(line: 1322, column: 21, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1322, column: 16)
!3427 = !DILocation(line: 1322, column: 16, scope: !3421)
!3428 = !DILocation(line: 1324, column: 12, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 1324, column: 8)
!3430 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1323, column: 2)
!3431 = !DILocation(line: 1324, column: 8, scope: !3430)
!3432 = !DILocation(line: 1327, column: 9, scope: !3430)
!3433 = !DILocation(line: 1328, column: 2, scope: !3430)
!3434 = !DILocation(line: 1329, column: 21, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1329, column: 16)
!3436 = !DILocation(line: 1329, column: 16, scope: !3426)
!3437 = !DILocation(line: 1330, column: 7, scope: !3435)
!3438 = !DILocation(line: 1331, column: 21, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 1331, column: 16)
!3440 = !DILocation(line: 1331, column: 16, scope: !3435)
!3441 = !DILocation(line: 1333, column: 21, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 1333, column: 16)
!3443 = !DILocation(line: 1338, column: 12, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 1338, column: 8)
!3445 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 1334, column: 2)
!3446 = !DILocation(line: 1333, column: 16, scope: !3439)
!3447 = !DILocation(line: 1340, column: 4, scope: !3445)
!3448 = !DILocation(line: 1341, column: 4, scope: !3445)
!3449 = distinct !{!3449, !3407, !3450}
!3450 = !DILocation(line: 1356, column: 5, scope: !3397)
!3451 = !DILocation(line: 1312, column: 17, scope: !3402)
!3452 = !DILocation(line: 0, scope: !3414)
!3453 = !DILocation(line: 1346, column: 15, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1346, column: 11)
!3455 = !DILocation(line: 1346, column: 11, scope: !3402)
!3456 = !DILocation(line: 1349, column: 8, scope: !3454)
!3457 = !DILocation(line: 0, scope: !3454)
!3458 = !DILocation(line: 1351, column: 16, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1351, column: 11)
!3460 = !DILocation(line: 1351, column: 23, scope: !3459)
!3461 = !DILocation(line: 1351, column: 26, scope: !3459)
!3462 = !DILocation(line: 1351, column: 43, scope: !3459)
!3463 = !DILocation(line: 1351, column: 11, scope: !3402)
!3464 = !DILocation(line: 1353, column: 10, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 1353, column: 8)
!3466 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 1352, column: 2)
!3467 = !DILocation(line: 1353, column: 8, scope: !3466)
!3468 = !DILocation(line: 1357, column: 1, scope: !3397)
!3469 = distinct !DISubprogram(name: "d_discriminator", scope: !3, file: !3, line: 2979, type: !3470, scopeLine: 2980, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!102, !597}
!3472 = !{!3473, !3474}
!3473 = !DILocalVariable(name: "di", arg: 1, scope: !3469, file: !3, line: 2979, type: !597)
!3474 = !DILocalVariable(name: "discrim", scope: !3469, file: !3, line: 2981, type: !196)
!3475 = !DILocation(line: 0, scope: !3469)
!3476 = !DILocation(line: 2983, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 2983, column: 7)
!3478 = !DILocation(line: 2983, column: 24, scope: !3477)
!3479 = !DILocation(line: 2983, column: 7, scope: !3469)
!3480 = !DILocation(line: 2985, column: 3, scope: !3469)
!3481 = !DILocation(line: 2986, column: 13, scope: !3469)
!3482 = !DILocation(line: 2990, column: 1, scope: !3469)
!3483 = distinct !DISubprogram(name: "d_compact_number", scope: !3, file: !3, line: 2535, type: !1558, scopeLine: 2536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3484)
!3484 = !{!3485, !3486}
!3485 = !DILocalVariable(name: "di", arg: 1, scope: !3483, file: !3, line: 2535, type: !597)
!3486 = !DILocalVariable(name: "num", scope: !3483, file: !3, line: 2537, type: !196)
!3487 = !DILocation(line: 0, scope: !3483)
!3488 = !DILocation(line: 2538, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 2538, column: 7)
!3490 = !DILocation(line: 2538, column: 24, scope: !3489)
!3491 = !DILocation(line: 2538, column: 7, scope: !3483)
!3492 = !DILocation(line: 2540, column: 29, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 2540, column: 12)
!3494 = !DILocation(line: 2540, column: 12, scope: !3489)
!3495 = !DILocation(line: 2543, column: 11, scope: !3493)
!3496 = !DILocation(line: 2543, column: 25, scope: !3493)
!3497 = !DILocation(line: 2545, column: 9, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 2545, column: 7)
!3499 = !DILocation(line: 0, scope: !3489)
!3500 = !DILocation(line: 2545, column: 7, scope: !3483)
!3501 = !DILocation(line: 2547, column: 3, scope: !3483)
!3502 = !DILocation(line: 2548, column: 1, scope: !3483)
!3503 = distinct !DISubprogram(name: "d_make_default_arg", scope: !3, file: !3, line: 949, type: !3504, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!128, !597, !102, !128}
!3506 = !{!3507, !3508, !3509, !3510}
!3507 = !DILocalVariable(name: "di", arg: 1, scope: !3503, file: !3, line: 949, type: !597)
!3508 = !DILocalVariable(name: "num", arg: 2, scope: !3503, file: !3, line: 949, type: !102)
!3509 = !DILocalVariable(name: "sub", arg: 3, scope: !3503, file: !3, line: 950, type: !128)
!3510 = !DILocalVariable(name: "p", scope: !3503, file: !3, line: 952, type: !128)
!3511 = !DILocation(line: 0, scope: !3503)
!3512 = !DILocation(line: 952, column: 34, scope: !3503)
!3513 = !DILocation(line: 953, column: 7, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 953, column: 7)
!3515 = !DILocation(line: 953, column: 7, scope: !3503)
!3516 = !DILocation(line: 955, column: 10, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 954, column: 5)
!3518 = !DILocation(line: 955, column: 15, scope: !3517)
!3519 = !DILocation(line: 956, column: 24, scope: !3517)
!3520 = !DILocation(line: 956, column: 28, scope: !3517)
!3521 = !DILocation(line: 957, column: 10, scope: !3517)
!3522 = !DILocation(line: 957, column: 24, scope: !3517)
!3523 = !DILocation(line: 957, column: 28, scope: !3517)
!3524 = !DILocation(line: 958, column: 5, scope: !3517)
!3525 = !DILocation(line: 959, column: 3, scope: !3503)
!3526 = distinct !DISubprogram(name: "d_operator_name", scope: !3, file: !3, line: 1587, type: !675, scopeLine: 1588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3535, !3536, !3538}
!3528 = !DILocalVariable(name: "di", arg: 1, scope: !3526, file: !3, line: 1587, type: !597)
!3529 = !DILocalVariable(name: "c1", scope: !3526, file: !3, line: 1589, type: !105)
!3530 = !DILocalVariable(name: "c2", scope: !3526, file: !3, line: 1590, type: !105)
!3531 = !DILocalVariable(name: "low", scope: !3532, file: !3, line: 1602, type: !102)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1600, column: 5)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 1596, column: 12)
!3534 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1594, column: 7)
!3535 = !DILocalVariable(name: "high", scope: !3532, file: !3, line: 1605, type: !102)
!3536 = !DILocalVariable(name: "i", scope: !3537, file: !3, line: 1611, type: !102)
!3537 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 1610, column: 2)
!3538 = !DILocalVariable(name: "p", scope: !3537, file: !3, line: 1612, type: !144)
!3539 = !DILocation(line: 0, scope: !3526)
!3540 = !DILocation(line: 1592, column: 8, scope: !3526)
!3541 = !DILocation(line: 1593, column: 8, scope: !3526)
!3542 = !DILocation(line: 1594, column: 10, scope: !3534)
!3543 = !DILocation(line: 1594, column: 17, scope: !3534)
!3544 = !DILocation(line: 1595, column: 52, scope: !3534)
!3545 = !DILocation(line: 1595, column: 12, scope: !3534)
!3546 = !DILocation(line: 1595, column: 5, scope: !3534)
!3547 = !DILocation(line: 1596, column: 15, scope: !3533)
!3548 = !DILocation(line: 1596, column: 28, scope: !3533)
!3549 = !DILocation(line: 1596, column: 22, scope: !3533)
!3550 = !DILocation(line: 1609, column: 7, scope: !3532)
!3551 = !DILocation(line: 1598, column: 4, scope: !3533)
!3552 = !DILocation(line: 1597, column: 12, scope: !3533)
!3553 = !DILocation(line: 1597, column: 5, scope: !3533)
!3554 = !DILocation(line: 1602, column: 11, scope: !3532)
!3555 = !DILocation(line: 1605, column: 11, scope: !3532)
!3556 = !DILocation(line: 0, scope: !3532)
!3557 = !DILocation(line: 1614, column: 20, scope: !3537)
!3558 = !DILocation(line: 1614, column: 27, scope: !3537)
!3559 = !DILocation(line: 1614, column: 12, scope: !3537)
!3560 = !DILocation(line: 0, scope: !3537)
!3561 = !DILocation(line: 1615, column: 33, scope: !3537)
!3562 = !DILocation(line: 1617, column: 17, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1617, column: 8)
!3564 = !DILocation(line: 1617, column: 14, scope: !3563)
!3565 = !DILocation(line: 1617, column: 11, scope: !3563)
!3566 = !DILocation(line: 1617, column: 25, scope: !3563)
!3567 = !DILocation(line: 1617, column: 34, scope: !3563)
!3568 = !DILocation(line: 1617, column: 31, scope: !3563)
!3569 = !DILocation(line: 1617, column: 8, scope: !3537)
!3570 = !DILocation(line: 1618, column: 13, scope: !3563)
!3571 = !DILocation(line: 1618, column: 6, scope: !3563)
!3572 = !DILocation(line: 1620, column: 11, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1620, column: 8)
!3574 = !DILocation(line: 1620, column: 24, scope: !3573)
!3575 = !DILocation(line: 1620, column: 45, scope: !3573)
!3576 = !DILocation(line: 1620, column: 53, scope: !3573)
!3577 = !DILocation(line: 1620, column: 51, scope: !3573)
!3578 = !DILocation(line: 1620, column: 8, scope: !3537)
!3579 = !DILocation(line: 1623, column: 14, scope: !3573)
!3580 = !DILocation(line: 1624, column: 12, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1624, column: 8)
!3582 = distinct !{!3582, !3550, !3583}
!3583 = !DILocation(line: 1626, column: 2, scope: !3532)
!3584 = !DILocation(line: 1628, column: 1, scope: !3526)
!3585 = !DILocation(line: 0, scope: !3534)
!3586 = distinct !DISubprogram(name: "d_ctor_dtor_name", scope: !3, file: !3, line: 1888, type: !675, scopeLine: 1889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3587)
!3587 = !{!3588, !3589, !3592}
!3588 = !DILocalVariable(name: "di", arg: 1, scope: !3586, file: !3, line: 1888, type: !597)
!3589 = !DILocalVariable(name: "kind", scope: !3590, file: !3, line: 1901, type: !75)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 1900, column: 7)
!3591 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 1898, column: 5)
!3592 = !DILocalVariable(name: "kind", scope: !3593, file: !3, line: 1923, type: !80)
!3593 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 1922, column: 7)
!3594 = !DILocation(line: 0, scope: !3586)
!3595 = !DILocation(line: 1890, column: 11, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 1890, column: 7)
!3597 = !DILocation(line: 1890, column: 21, scope: !3596)
!3598 = !DILocation(line: 1890, column: 7, scope: !3586)
!3599 = !DILocation(line: 1892, column: 26, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 1892, column: 11)
!3601 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 1891, column: 5)
!3602 = !DILocation(line: 1892, column: 31, scope: !3600)
!3603 = !DILocation(line: 1892, column: 11, scope: !3601)
!3604 = !DILocation(line: 1893, column: 43, scope: !3600)
!3605 = !DILocation(line: 1893, column: 6, scope: !3600)
!3606 = !DILocation(line: 1893, column: 16, scope: !3600)
!3607 = !DILocation(line: 1893, column: 2, scope: !3600)
!3608 = !DILocation(line: 1894, column: 36, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 1894, column: 16)
!3610 = !DILocation(line: 1894, column: 16, scope: !3600)
!3611 = !DILocation(line: 1895, column: 45, scope: !3609)
!3612 = !DILocation(line: 1895, column: 6, scope: !3609)
!3613 = !DILocation(line: 1895, column: 16, scope: !3609)
!3614 = !DILocation(line: 1895, column: 2, scope: !3609)
!3615 = !DILocation(line: 1897, column: 11, scope: !3586)
!3616 = !DILocation(line: 1897, column: 3, scope: !3586)
!3617 = !DILocation(line: 1903, column: 10, scope: !3590)
!3618 = !DILocation(line: 1903, column: 2, scope: !3590)
!3619 = !DILocation(line: 0, scope: !3590)
!3620 = !DILocation(line: 1910, column: 6, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 1904, column: 4)
!3622 = !DILocation(line: 1913, column: 6, scope: !3621)
!3623 = !DILocation(line: 0, scope: !3621)
!3624 = !DILocation(line: 1917, column: 2, scope: !3590)
!3625 = !DILocation(line: 1918, column: 9, scope: !3590)
!3626 = !DILocation(line: 1918, column: 2, scope: !3590)
!3627 = !DILocation(line: 1925, column: 10, scope: !3593)
!3628 = !DILocation(line: 1925, column: 2, scope: !3593)
!3629 = !DILocation(line: 0, scope: !3593)
!3630 = !DILocation(line: 1932, column: 6, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 1926, column: 4)
!3632 = !DILocation(line: 1935, column: 6, scope: !3631)
!3633 = !DILocation(line: 0, scope: !3631)
!3634 = !DILocation(line: 1939, column: 2, scope: !3593)
!3635 = !DILocation(line: 1940, column: 9, scope: !3593)
!3636 = !DILocation(line: 1940, column: 2, scope: !3593)
!3637 = !DILocation(line: 0, scope: !3591)
!3638 = !DILocation(line: 1946, column: 1, scope: !3586)
!3639 = distinct !DISubprogram(name: "d_lambda", scope: !3, file: !3, line: 2995, type: !675, scopeLine: 2996, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3640)
!3640 = !{!3641, !3642, !3643, !3644}
!3641 = !DILocalVariable(name: "di", arg: 1, scope: !3639, file: !3, line: 2995, type: !597)
!3642 = !DILocalVariable(name: "tl", scope: !3639, file: !3, line: 2997, type: !128)
!3643 = !DILocalVariable(name: "ret", scope: !3639, file: !3, line: 2998, type: !128)
!3644 = !DILocalVariable(name: "num", scope: !3639, file: !3, line: 2999, type: !102)
!3645 = !DILocation(line: 0, scope: !3639)
!3646 = !DILocation(line: 3001, column: 9, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 3001, column: 7)
!3648 = !DILocation(line: 3001, column: 7, scope: !3639)
!3649 = !DILocation(line: 3003, column: 9, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 3003, column: 7)
!3651 = !DILocation(line: 3003, column: 7, scope: !3639)
!3652 = !DILocation(line: 3006, column: 8, scope: !3639)
!3653 = !DILocation(line: 3007, column: 10, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 3007, column: 7)
!3655 = !DILocation(line: 3007, column: 7, scope: !3639)
!3656 = !DILocation(line: 3010, column: 9, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 3010, column: 7)
!3658 = !DILocation(line: 3010, column: 7, scope: !3639)
!3659 = !DILocation(line: 3013, column: 9, scope: !3639)
!3660 = !DILocation(line: 3014, column: 11, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 3014, column: 7)
!3662 = !DILocation(line: 3014, column: 7, scope: !3639)
!3663 = !DILocation(line: 3017, column: 9, scope: !3639)
!3664 = !DILocation(line: 3018, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 3018, column: 7)
!3666 = !DILocation(line: 3018, column: 7, scope: !3639)
!3667 = !DILocation(line: 3020, column: 12, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 3019, column: 5)
!3669 = !DILocation(line: 3020, column: 17, scope: !3668)
!3670 = !DILocation(line: 3021, column: 12, scope: !3668)
!3671 = !DILocation(line: 3021, column: 26, scope: !3668)
!3672 = !DILocation(line: 3021, column: 30, scope: !3668)
!3673 = !DILocation(line: 3022, column: 26, scope: !3668)
!3674 = !DILocation(line: 3022, column: 30, scope: !3668)
!3675 = !DILocation(line: 3023, column: 5, scope: !3668)
!3676 = !DILocation(line: 3025, column: 9, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 3025, column: 7)
!3678 = !DILocation(line: 3029, column: 1, scope: !3639)
!3679 = distinct !DISubprogram(name: "d_unnamed_type", scope: !3, file: !3, line: 3034, type: !675, scopeLine: 3035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3680)
!3680 = !{!3681, !3682, !3683}
!3681 = !DILocalVariable(name: "di", arg: 1, scope: !3679, file: !3, line: 3034, type: !597)
!3682 = !DILocalVariable(name: "ret", scope: !3679, file: !3, line: 3036, type: !128)
!3683 = !DILocalVariable(name: "num", scope: !3679, file: !3, line: 3037, type: !196)
!3684 = !DILocation(line: 0, scope: !3679)
!3685 = !DILocation(line: 3039, column: 9, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 3039, column: 7)
!3687 = !DILocation(line: 3039, column: 7, scope: !3679)
!3688 = !DILocation(line: 3041, column: 9, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 3041, column: 7)
!3690 = !DILocation(line: 3041, column: 7, scope: !3679)
!3691 = !DILocation(line: 3044, column: 9, scope: !3679)
!3692 = !DILocation(line: 3045, column: 11, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 3045, column: 7)
!3694 = !DILocation(line: 3045, column: 7, scope: !3679)
!3695 = !DILocation(line: 3048, column: 9, scope: !3679)
!3696 = !DILocation(line: 3049, column: 7, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 3049, column: 7)
!3698 = !DILocation(line: 3049, column: 7, scope: !3679)
!3699 = !DILocation(line: 3051, column: 12, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 3050, column: 5)
!3701 = !DILocation(line: 3051, column: 17, scope: !3700)
!3702 = !DILocation(line: 3052, column: 12, scope: !3700)
!3703 = !DILocation(line: 3052, column: 23, scope: !3700)
!3704 = !DILocation(line: 3052, column: 30, scope: !3700)
!3705 = !DILocation(line: 3053, column: 5, scope: !3700)
!3706 = !DILocation(line: 3055, column: 9, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 3055, column: 7)
!3708 = !DILocation(line: 3059, column: 1, scope: !3679)
!3709 = distinct !DISubprogram(name: "d_make_extended_operator", scope: !3, file: !3, line: 937, type: !3504, scopeLine: 939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3710)
!3710 = !{!3711, !3712, !3713, !3714}
!3711 = !DILocalVariable(name: "di", arg: 1, scope: !3709, file: !3, line: 937, type: !597)
!3712 = !DILocalVariable(name: "args", arg: 2, scope: !3709, file: !3, line: 937, type: !102)
!3713 = !DILocalVariable(name: "name", arg: 3, scope: !3709, file: !3, line: 938, type: !128)
!3714 = !DILocalVariable(name: "p", scope: !3709, file: !3, line: 940, type: !128)
!3715 = !DILocation(line: 0, scope: !3709)
!3716 = !DILocation(line: 942, column: 7, scope: !3709)
!3717 = !DILocation(line: 943, column: 9, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 943, column: 7)
!3719 = !DILocation(line: 946, column: 1, scope: !3709)
!3720 = distinct !DISubprogram(name: "d_make_operator", scope: !3, file: !3, line: 921, type: !3721, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!128, !597, !144}
!3723 = !{!3724, !3725, !3726}
!3724 = !DILocalVariable(name: "di", arg: 1, scope: !3720, file: !3, line: 921, type: !597)
!3725 = !DILocalVariable(name: "op", arg: 2, scope: !3720, file: !3, line: 921, type: !144)
!3726 = !DILocalVariable(name: "p", scope: !3720, file: !3, line: 923, type: !128)
!3727 = !DILocation(line: 0, scope: !3720)
!3728 = !DILocation(line: 925, column: 7, scope: !3720)
!3729 = !DILocation(line: 926, column: 9, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 926, column: 7)
!3731 = !DILocation(line: 926, column: 7, scope: !3720)
!3732 = !DILocation(line: 928, column: 10, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 927, column: 5)
!3734 = !DILocation(line: 928, column: 15, scope: !3733)
!3735 = !DILocation(line: 929, column: 10, scope: !3733)
!3736 = !DILocation(line: 929, column: 23, scope: !3733)
!3737 = !DILocation(line: 929, column: 26, scope: !3733)
!3738 = !DILocation(line: 930, column: 5, scope: !3733)
!3739 = !DILocation(line: 931, column: 3, scope: !3720)
!3740 = distinct !DISubprogram(name: "d_make_ctor", scope: !3, file: !3, line: 965, type: !3741, scopeLine: 967, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!128, !597, !75, !128}
!3743 = !{!3744, !3745, !3746, !3747}
!3744 = !DILocalVariable(name: "di", arg: 1, scope: !3740, file: !3, line: 965, type: !597)
!3745 = !DILocalVariable(name: "kind", arg: 2, scope: !3740, file: !3, line: 965, type: !75)
!3746 = !DILocalVariable(name: "name", arg: 3, scope: !3740, file: !3, line: 966, type: !128)
!3747 = !DILocalVariable(name: "p", scope: !3740, file: !3, line: 968, type: !128)
!3748 = !DILocation(line: 0, scope: !3740)
!3749 = !DILocation(line: 970, column: 7, scope: !3740)
!3750 = !DILocation(line: 971, column: 9, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 971, column: 7)
!3752 = !DILocation(line: 974, column: 1, scope: !3740)
!3753 = distinct !DISubprogram(name: "d_make_dtor", scope: !3, file: !3, line: 979, type: !3754, scopeLine: 981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3756)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!128, !597, !80, !128}
!3756 = !{!3757, !3758, !3759, !3760}
!3757 = !DILocalVariable(name: "di", arg: 1, scope: !3753, file: !3, line: 979, type: !597)
!3758 = !DILocalVariable(name: "kind", arg: 2, scope: !3753, file: !3, line: 979, type: !80)
!3759 = !DILocalVariable(name: "name", arg: 3, scope: !3753, file: !3, line: 980, type: !128)
!3760 = !DILocalVariable(name: "p", scope: !3753, file: !3, line: 982, type: !128)
!3761 = !DILocation(line: 0, scope: !3753)
!3762 = !DILocation(line: 984, column: 7, scope: !3753)
!3763 = !DILocation(line: 985, column: 9, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3753, file: !3, line: 985, column: 7)
!3765 = !DILocation(line: 988, column: 1, scope: !3753)
!3766 = distinct !DISubprogram(name: "d_parmlist", scope: !3, file: !3, line: 2329, type: !675, scopeLine: 2330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3767)
!3767 = !{!3768, !3769, !3770, !3771, !3773}
!3768 = !DILocalVariable(name: "di", arg: 1, scope: !3766, file: !3, line: 2329, type: !597)
!3769 = !DILocalVariable(name: "tl", scope: !3766, file: !3, line: 2331, type: !128)
!3770 = !DILocalVariable(name: "ptl", scope: !3766, file: !3, line: 2332, type: !214)
!3771 = !DILocalVariable(name: "type", scope: !3772, file: !3, line: 2338, type: !128)
!3772 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 2337, column: 5)
!3773 = !DILocalVariable(name: "peek", scope: !3772, file: !3, line: 2340, type: !105)
!3774 = !DILocation(line: 0, scope: !3766)
!3775 = !DILocation(line: 2331, column: 3, scope: !3766)
!3776 = !DILocation(line: 2334, column: 6, scope: !3766)
!3777 = !DILocation(line: 0, scope: !3772)
!3778 = !DILocation(line: 2336, column: 3, scope: !3766)
!3779 = !DILocation(line: 2335, column: 7, scope: !3766)
!3780 = !DILocation(line: 2340, column: 19, scope: !3772)
!3781 = !DILocation(line: 2341, column: 16, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 2341, column: 11)
!3783 = !DILocation(line: 2341, column: 32, scope: !3782)
!3784 = !DILocation(line: 2341, column: 24, scope: !3782)
!3785 = !DILocation(line: 2343, column: 14, scope: !3772)
!3786 = !DILocation(line: 2344, column: 16, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 2344, column: 11)
!3788 = !DILocation(line: 2344, column: 11, scope: !3772)
!3789 = !DILocation(line: 2346, column: 14, scope: !3772)
!3790 = !DILocation(line: 2346, column: 12, scope: !3772)
!3791 = !DILocation(line: 2347, column: 16, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 2347, column: 11)
!3793 = !DILocation(line: 2347, column: 11, scope: !3772)
!3794 = !DILocation(line: 2349, column: 14, scope: !3772)
!3795 = !DILocation(line: 2350, column: 5, scope: !3766)
!3796 = distinct !{!3796, !3778, !3795}
!3797 = !DILocation(line: 2355, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 2355, column: 7)
!3799 = !DILocation(line: 2355, column: 10, scope: !3798)
!3800 = !DILocation(line: 2355, column: 7, scope: !3766)
!3801 = !DILocation(line: 2359, column: 7, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 2359, column: 7)
!3803 = !DILocation(line: 2359, column: 20, scope: !3802)
!3804 = !DILocation(line: 2360, column: 7, scope: !3802)
!3805 = !DILocation(line: 2360, column: 10, scope: !3802)
!3806 = !DILocation(line: 2360, column: 23, scope: !3802)
!3807 = !DILocation(line: 2360, column: 28, scope: !3802)
!3808 = !DILocation(line: 2361, column: 7, scope: !3802)
!3809 = !DILocation(line: 2361, column: 23, scope: !3802)
!3810 = !DILocation(line: 2361, column: 35, scope: !3802)
!3811 = !DILocation(line: 2361, column: 41, scope: !3802)
!3812 = !DILocation(line: 2361, column: 47, scope: !3802)
!3813 = !DILocation(line: 2359, column: 7, scope: !3766)
!3814 = !DILocation(line: 2363, column: 55, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3802, file: !3, line: 2362, column: 5)
!3816 = !DILocation(line: 2363, column: 11, scope: !3815)
!3817 = !DILocation(line: 2363, column: 21, scope: !3815)
!3818 = !DILocation(line: 2364, column: 19, scope: !3815)
!3819 = !DILocation(line: 2365, column: 5, scope: !3815)
!3820 = !DILocation(line: 2367, column: 3, scope: !3766)
!3821 = !DILocation(line: 2368, column: 1, scope: !3766)
!3822 = distinct !DISubprogram(name: "is_ctor_dtor_or_conversion", scope: !3, file: !3, line: 1089, type: !3112, scopeLine: 1090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3823)
!3823 = !{!3824}
!3824 = !DILocalVariable(name: "dc", arg: 1, scope: !3822, file: !3, line: 1089, type: !128)
!3825 = !DILocation(line: 1099, column: 14, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 1094, column: 5)
!3827 = !DILocation(line: 0, scope: !3822)
!3828 = !DILocation(line: 1091, column: 10, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 1091, column: 7)
!3830 = !DILocation(line: 1091, column: 7, scope: !3822)
!3831 = !DILocation(line: 1093, column: 15, scope: !3822)
!3832 = !DILocation(line: 1093, column: 3, scope: !3822)
!3833 = !DILocation(line: 1099, column: 42, scope: !3826)
!3834 = !DILocation(line: 1103, column: 7, scope: !3826)
!3835 = !DILocation(line: 1105, column: 1, scope: !3822)
!3836 = distinct !DISubprogram(name: "d_identifier", scope: !3, file: !3, line: 1481, type: !595, scopeLine: 1482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3837)
!3837 = !{!3838, !3839, !3840, !3841}
!3838 = !DILocalVariable(name: "di", arg: 1, scope: !3836, file: !3, line: 1481, type: !597)
!3839 = !DILocalVariable(name: "len", arg: 2, scope: !3836, file: !3, line: 1481, type: !102)
!3840 = !DILocalVariable(name: "name", scope: !3836, file: !3, line: 1483, type: !103)
!3841 = !DILocalVariable(name: "s", scope: !3842, file: !3, line: 1506, type: !103)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1505, column: 5)
!3843 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 1502, column: 7)
!3844 = !DILocation(line: 0, scope: !3836)
!3845 = !DILocation(line: 1485, column: 10, scope: !3836)
!3846 = !DILocation(line: 1487, column: 11, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 1487, column: 7)
!3848 = !DILocation(line: 1487, column: 16, scope: !3847)
!3849 = !DILocation(line: 1487, column: 25, scope: !3847)
!3850 = !DILocation(line: 1487, column: 23, scope: !3847)
!3851 = !DILocation(line: 1487, column: 7, scope: !3836)
!3852 = !DILocation(line: 1490, column: 3, scope: !3836)
!3853 = !DILocation(line: 1495, column: 12, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 1495, column: 7)
!3855 = !DILocation(line: 1495, column: 20, scope: !3854)
!3856 = !DILocation(line: 1495, column: 33, scope: !3854)
!3857 = !DILocation(line: 1496, column: 7, scope: !3854)
!3858 = !DILocation(line: 1496, column: 10, scope: !3854)
!3859 = !DILocation(line: 1496, column: 27, scope: !3854)
!3860 = !DILocation(line: 1495, column: 7, scope: !3836)
!3861 = !DILocation(line: 1497, column: 5, scope: !3854)
!3862 = !DILocation(line: 1502, column: 11, scope: !3843)
!3863 = !DILocation(line: 1503, column: 7, scope: !3843)
!3864 = !DILocation(line: 1503, column: 10, scope: !3843)
!3865 = !DILocation(line: 1504, column: 36, scope: !3843)
!3866 = !DILocation(line: 1502, column: 7, scope: !3836)
!3867 = !DILocation(line: 1508, column: 16, scope: !3842)
!3868 = !DILocation(line: 0, scope: !3842)
!3869 = !DILocation(line: 1509, column: 12, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 1509, column: 11)
!3871 = !DILocation(line: 1509, column: 15, scope: !3870)
!3872 = !DILocation(line: 1509, column: 22, scope: !3870)
!3873 = !DILocation(line: 1509, column: 28, scope: !3870)
!3874 = !DILocation(line: 1509, column: 35, scope: !3870)
!3875 = !DILocation(line: 1509, column: 41, scope: !3870)
!3876 = !DILocation(line: 1510, column: 4, scope: !3870)
!3877 = !DILocation(line: 1510, column: 7, scope: !3870)
!3878 = !DILocation(line: 1510, column: 12, scope: !3870)
!3879 = !DILocation(line: 1509, column: 11, scope: !3842)
!3880 = !DILocation(line: 1512, column: 25, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 1511, column: 2)
!3882 = !DILocation(line: 1512, column: 8, scope: !3881)
!3883 = !DILocation(line: 1512, column: 18, scope: !3881)
!3884 = !DILocation(line: 1513, column: 11, scope: !3881)
!3885 = !DILocation(line: 1513, column: 4, scope: !3881)
!3886 = !DILocation(line: 1518, column: 10, scope: !3836)
!3887 = !DILocation(line: 1518, column: 3, scope: !3836)
!3888 = !DILocation(line: 1519, column: 1, scope: !3836)
!3889 = distinct !DISubprogram(name: "d_number_component", scope: !3, file: !3, line: 1467, type: !675, scopeLine: 1468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3890)
!3890 = !{!3891, !3892}
!3891 = !DILocalVariable(name: "di", arg: 1, scope: !3889, file: !3, line: 1467, type: !597)
!3892 = !DILocalVariable(name: "ret", scope: !3889, file: !3, line: 1469, type: !128)
!3893 = !DILocation(line: 0, scope: !3889)
!3894 = !DILocation(line: 1469, column: 36, scope: !3889)
!3895 = !DILocation(line: 1470, column: 7, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 1470, column: 7)
!3897 = !DILocation(line: 1470, column: 7, scope: !3889)
!3898 = !DILocation(line: 1472, column: 12, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 1471, column: 5)
!3900 = !DILocation(line: 1472, column: 17, scope: !3899)
!3901 = !DILocation(line: 1473, column: 32, scope: !3899)
!3902 = !DILocation(line: 1473, column: 12, scope: !3899)
!3903 = !DILocation(line: 1473, column: 23, scope: !3899)
!3904 = !DILocation(line: 1473, column: 30, scope: !3899)
!3905 = !DILocation(line: 1474, column: 5, scope: !3899)
!3906 = !DILocation(line: 1475, column: 3, scope: !3889)
!3907 = distinct !DISubprogram(name: "d_make_template_param", scope: !3, file: !3, line: 993, type: !3908, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3910)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!128, !597, !196}
!3910 = !{!3911, !3912, !3913}
!3911 = !DILocalVariable(name: "di", arg: 1, scope: !3907, file: !3, line: 993, type: !597)
!3912 = !DILocalVariable(name: "i", arg: 2, scope: !3907, file: !3, line: 993, type: !196)
!3913 = !DILocalVariable(name: "p", scope: !3907, file: !3, line: 995, type: !128)
!3914 = !DILocation(line: 0, scope: !3907)
!3915 = !DILocation(line: 997, column: 7, scope: !3907)
!3916 = !DILocation(line: 998, column: 9, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 998, column: 7)
!3918 = !DILocation(line: 998, column: 7, scope: !3907)
!3919 = !DILocation(line: 1000, column: 10, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 999, column: 5)
!3921 = !DILocation(line: 1000, column: 15, scope: !3920)
!3922 = !DILocation(line: 1001, column: 10, scope: !3920)
!3923 = !DILocation(line: 1001, column: 21, scope: !3920)
!3924 = !DILocation(line: 1001, column: 28, scope: !3920)
!3925 = !DILocation(line: 1002, column: 5, scope: !3920)
!3926 = !DILocation(line: 1003, column: 3, scope: !3907)
!3927 = distinct !DISubprogram(name: "d_template_arg", scope: !3, file: !3, line: 2628, type: !675, scopeLine: 2629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3928)
!3928 = !{!3929, !3930}
!3929 = !DILocalVariable(name: "di", arg: 1, scope: !3927, file: !3, line: 2628, type: !597)
!3930 = !DILocalVariable(name: "ret", scope: !3927, file: !3, line: 2630, type: !128)
!3931 = !DILocation(line: 0, scope: !3927)
!3932 = !DILocation(line: 2632, column: 11, scope: !3927)
!3933 = !DILocation(line: 2632, column: 3, scope: !3927)
!3934 = !DILocation(line: 2635, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 2633, column: 5)
!3936 = !DILocation(line: 2636, column: 13, scope: !3935)
!3937 = !DILocation(line: 2637, column: 13, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 2637, column: 11)
!3939 = !DILocation(line: 2637, column: 11, scope: !3935)
!3940 = !DILocation(line: 2639, column: 7, scope: !3935)
!3941 = !DILocation(line: 2642, column: 14, scope: !3935)
!3942 = !DILocation(line: 2642, column: 7, scope: !3935)
!3943 = !DILocation(line: 2646, column: 14, scope: !3935)
!3944 = !DILocation(line: 2646, column: 7, scope: !3935)
!3945 = !DILocation(line: 2649, column: 14, scope: !3935)
!3946 = !DILocation(line: 2649, column: 7, scope: !3935)
!3947 = !DILocation(line: 0, scope: !3935)
!3948 = !DILocation(line: 2651, column: 1, scope: !3927)
!3949 = distinct !DISubprogram(name: "d_expr_primary", scope: !3, file: !3, line: 2858, type: !675, scopeLine: 2859, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3950)
!3950 = !{!3951, !3952, !3953, !3956, !3957}
!3951 = !DILocalVariable(name: "di", arg: 1, scope: !3949, file: !3, line: 2858, type: !597)
!3952 = !DILocalVariable(name: "ret", scope: !3949, file: !3, line: 2860, type: !128)
!3953 = !DILocalVariable(name: "type", scope: !3954, file: !3, line: 2870, type: !128)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 2869, column: 5)
!3955 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 2864, column: 7)
!3956 = !DILocalVariable(name: "t", scope: !3954, file: !3, line: 2871, type: !5)
!3957 = !DILocalVariable(name: "s", scope: !3954, file: !3, line: 2872, type: !103)
!3958 = !DILocation(line: 0, scope: !3949)
!3959 = !DILocation(line: 2862, column: 9, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 2862, column: 7)
!3961 = !DILocation(line: 2862, column: 7, scope: !3949)
!3962 = !DILocation(line: 2864, column: 7, scope: !3955)
!3963 = !DILocation(line: 2864, column: 24, scope: !3955)
!3964 = !DILocation(line: 2866, column: 7, scope: !3955)
!3965 = !DILocation(line: 2866, column: 27, scope: !3955)
!3966 = !DILocation(line: 2864, column: 7, scope: !3949)
!3967 = !DILocation(line: 2867, column: 11, scope: !3955)
!3968 = !DILocation(line: 2867, column: 5, scope: !3955)
!3969 = !DILocation(line: 2874, column: 14, scope: !3954)
!3970 = !DILocation(line: 0, scope: !3954)
!3971 = !DILocation(line: 2875, column: 16, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 2875, column: 11)
!3973 = !DILocation(line: 2875, column: 11, scope: !3954)
!3974 = !DILocation(line: 2880, column: 17, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 2880, column: 11)
!3976 = !DILocation(line: 2880, column: 22, scope: !3975)
!3977 = !DILocation(line: 2881, column: 4, scope: !3975)
!3978 = !DILocation(line: 2881, column: 13, scope: !3975)
!3979 = !DILocation(line: 2881, column: 25, scope: !3975)
!3980 = !DILocation(line: 2881, column: 31, scope: !3975)
!3981 = !DILocation(line: 2881, column: 37, scope: !3975)
!3982 = !DILocation(line: 2880, column: 11, scope: !3954)
!3983 = !DILocation(line: 2882, column: 43, scope: !3975)
!3984 = !DILocation(line: 2882, column: 6, scope: !3975)
!3985 = !DILocation(line: 2882, column: 16, scope: !3975)
!3986 = !DILocation(line: 2882, column: 2, scope: !3975)
!3987 = !DILocation(line: 2896, column: 11, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 2896, column: 11)
!3989 = !DILocation(line: 2896, column: 28, scope: !3988)
!3990 = !DILocation(line: 2896, column: 11, scope: !3954)
!3991 = !DILocation(line: 2899, column: 4, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2897, column: 2)
!3993 = !DILocation(line: 2900, column: 2, scope: !3992)
!3994 = !DILocation(line: 2901, column: 11, scope: !3954)
!3995 = !DILocation(line: 2902, column: 7, scope: !3954)
!3996 = !DILocation(line: 2902, column: 14, scope: !3954)
!3997 = !DILocation(line: 2902, column: 31, scope: !3954)
!3998 = !DILocation(line: 2904, column: 25, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !4000, file: !3, line: 2904, column: 8)
!4000 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 2903, column: 2)
!4001 = !DILocation(line: 2904, column: 8, scope: !4000)
!4002 = !DILocation(line: 2906, column: 4, scope: !4000)
!4003 = distinct !{!4003, !3995, !4004}
!4004 = !DILocation(line: 2907, column: 2, scope: !3954)
!4005 = !DILocation(line: 2908, column: 70, scope: !3954)
!4006 = !DILocation(line: 2908, column: 59, scope: !3954)
!4007 = !DILocation(line: 2908, column: 39, scope: !3954)
!4008 = !DILocation(line: 2908, column: 13, scope: !3954)
!4009 = !DILocation(line: 2909, column: 5, scope: !3955)
!4010 = !DILocation(line: 2910, column: 9, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 2910, column: 7)
!4012 = !DILocation(line: 2910, column: 7, scope: !3949)
!4013 = !DILocation(line: 2912, column: 3, scope: !3949)
!4014 = !DILocation(line: 2913, column: 1, scope: !3949)
!4015 = distinct !DISubprogram(name: "d_make_function_param", scope: !3, file: !3, line: 1009, type: !3908, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4016 = !{!4017, !4018, !4019}
!4017 = !DILocalVariable(name: "di", arg: 1, scope: !4015, file: !3, line: 1009, type: !597)
!4018 = !DILocalVariable(name: "i", arg: 2, scope: !4015, file: !3, line: 1009, type: !196)
!4019 = !DILocalVariable(name: "p", scope: !4015, file: !3, line: 1011, type: !128)
!4020 = !DILocation(line: 0, scope: !4015)
!4021 = !DILocation(line: 1013, column: 7, scope: !4015)
!4022 = !DILocation(line: 1014, column: 9, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1014, column: 7)
!4024 = !DILocation(line: 1014, column: 7, scope: !4015)
!4025 = !DILocation(line: 1016, column: 10, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 1015, column: 5)
!4027 = !DILocation(line: 1016, column: 15, scope: !4026)
!4028 = !DILocation(line: 1017, column: 10, scope: !4026)
!4029 = !DILocation(line: 1017, column: 21, scope: !4026)
!4030 = !DILocation(line: 1017, column: 28, scope: !4026)
!4031 = !DILocation(line: 1018, column: 5, scope: !4026)
!4032 = !DILocation(line: 1019, column: 3, scope: !4015)
!4033 = distinct !DISubprogram(name: "d_exprlist", scope: !3, file: !3, line: 2656, type: !675, scopeLine: 2657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4034)
!4034 = !{!4035, !4036, !4037, !4038}
!4035 = !DILocalVariable(name: "di", arg: 1, scope: !4033, file: !3, line: 2656, type: !597)
!4036 = !DILocalVariable(name: "list", scope: !4033, file: !3, line: 2658, type: !128)
!4037 = !DILocalVariable(name: "p", scope: !4033, file: !3, line: 2659, type: !214)
!4038 = !DILocalVariable(name: "arg", scope: !4039, file: !3, line: 2669, type: !128)
!4039 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 2668, column: 5)
!4040 = !DILocation(line: 0, scope: !4033)
!4041 = !DILocation(line: 2658, column: 3, scope: !4033)
!4042 = !DILocation(line: 2658, column: 30, scope: !4033)
!4043 = !DILocation(line: 2661, column: 7, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 2661, column: 7)
!4045 = !DILocation(line: 2661, column: 24, scope: !4044)
!4046 = !DILocation(line: 2661, column: 7, scope: !4033)
!4047 = !DILocation(line: 2667, column: 3, scope: !4033)
!4048 = !DILocation(line: 2663, column: 7, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 2662, column: 5)
!4050 = !DILocation(line: 2664, column: 14, scope: !4049)
!4051 = !DILocation(line: 2664, column: 7, scope: !4049)
!4052 = !DILocation(line: 2659, column: 31, scope: !4033)
!4053 = !DILocation(line: 2669, column: 40, scope: !4039)
!4054 = !DILocation(line: 0, scope: !4039)
!4055 = !DILocation(line: 2670, column: 15, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 2670, column: 11)
!4057 = !DILocation(line: 2670, column: 11, scope: !4039)
!4058 = !DILocation(line: 2673, column: 12, scope: !4039)
!4059 = !DILocation(line: 2673, column: 10, scope: !4039)
!4060 = !DILocation(line: 2674, column: 14, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 2674, column: 11)
!4062 = !DILocation(line: 2674, column: 11, scope: !4039)
!4063 = !DILocation(line: 2676, column: 12, scope: !4039)
!4064 = !DILocation(line: 2678, column: 11, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 2678, column: 11)
!4066 = !DILocation(line: 2678, column: 28, scope: !4065)
!4067 = !DILocation(line: 2678, column: 11, scope: !4039)
!4068 = !DILocation(line: 2680, column: 4, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 2679, column: 2)
!4070 = !DILocation(line: 2681, column: 4, scope: !4069)
!4071 = distinct !{!4071, !4047, !4072}
!4072 = !DILocation(line: 2683, column: 5, scope: !4033)
!4073 = !DILocation(line: 2685, column: 10, scope: !4033)
!4074 = !DILocation(line: 2685, column: 3, scope: !4033)
!4075 = !DILocation(line: 2686, column: 1, scope: !4033)
!4076 = distinct !DISubprogram(name: "d_make_sub", scope: !3, file: !3, line: 1025, type: !3246, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4077)
!4077 = !{!4078, !4079, !4080, !4081}
!4078 = !DILocalVariable(name: "di", arg: 1, scope: !4076, file: !3, line: 1025, type: !597)
!4079 = !DILocalVariable(name: "name", arg: 2, scope: !4076, file: !3, line: 1025, type: !103)
!4080 = !DILocalVariable(name: "len", arg: 3, scope: !4076, file: !3, line: 1025, type: !102)
!4081 = !DILocalVariable(name: "p", scope: !4076, file: !3, line: 1027, type: !128)
!4082 = !DILocation(line: 0, scope: !4076)
!4083 = !DILocation(line: 1029, column: 7, scope: !4076)
!4084 = !DILocation(line: 1030, column: 9, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 1030, column: 7)
!4086 = !DILocation(line: 1030, column: 7, scope: !4076)
!4087 = !DILocation(line: 1032, column: 10, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 1031, column: 5)
!4089 = !DILocation(line: 1032, column: 15, scope: !4088)
!4090 = !DILocation(line: 1033, column: 21, scope: !4088)
!4091 = !DILocation(line: 1033, column: 28, scope: !4088)
!4092 = !DILocation(line: 1034, column: 21, scope: !4088)
!4093 = !DILocation(line: 1034, column: 25, scope: !4088)
!4094 = !DILocation(line: 1035, column: 5, scope: !4088)
!4095 = !DILocation(line: 1036, column: 3, scope: !4076)
!4096 = distinct !DISubprogram(name: "d_growable_string_resize", scope: !3, file: !3, line: 3226, type: !2624, scopeLine: 3227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4097)
!4097 = !{!4098, !4099, !4100, !4101}
!4098 = !DILocalVariable(name: "dgs", arg: 1, scope: !4096, file: !3, line: 3226, type: !243)
!4099 = !DILocalVariable(name: "need", arg: 2, scope: !4096, file: !3, line: 3226, type: !110)
!4100 = !DILocalVariable(name: "newalc", scope: !4096, file: !3, line: 3228, type: !110)
!4101 = !DILocalVariable(name: "newbuf", scope: !4096, file: !3, line: 3229, type: !242)
!4102 = !DILocation(line: 0, scope: !4096)
!4103 = !DILocation(line: 3231, column: 12, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 3231, column: 7)
!4105 = !DILocation(line: 3231, column: 7, scope: !4104)
!4106 = !DILocation(line: 3231, column: 7, scope: !4096)
!4107 = !DILocation(line: 3237, column: 17, scope: !4096)
!4108 = !DILocation(line: 3237, column: 21, scope: !4096)
!4109 = !DILocation(line: 3237, column: 12, scope: !4096)
!4110 = !DILocation(line: 3238, column: 3, scope: !4096)
!4111 = !DILocation(line: 3238, column: 17, scope: !4096)
!4112 = !DILocation(line: 3239, column: 12, scope: !4096)
!4113 = distinct !{!4113, !4110, !4114}
!4114 = !DILocation(line: 3239, column: 16, scope: !4096)
!4115 = !DILocation(line: 3241, column: 35, scope: !4096)
!4116 = !DILocation(line: 3241, column: 21, scope: !4096)
!4117 = !DILocation(line: 3242, column: 14, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 3242, column: 7)
!4119 = !DILocation(line: 3242, column: 7, scope: !4096)
!4120 = !DILocation(line: 3244, column: 18, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 3243, column: 5)
!4122 = !DILocation(line: 3244, column: 7, scope: !4121)
!4123 = !DILocation(line: 3245, column: 16, scope: !4121)
!4124 = !DILocation(line: 3246, column: 12, scope: !4121)
!4125 = !DILocation(line: 3246, column: 16, scope: !4121)
!4126 = !DILocation(line: 3247, column: 16, scope: !4121)
!4127 = !DILocation(line: 3248, column: 31, scope: !4121)
!4128 = !DILocation(line: 3249, column: 7, scope: !4121)
!4129 = !DILocation(line: 3251, column: 12, scope: !4096)
!4130 = !DILocation(line: 3252, column: 12, scope: !4096)
!4131 = !DILocation(line: 3253, column: 1, scope: !4096)
!4132 = distinct !DISubprogram(name: "d_growable_string_append_buffer", scope: !3, file: !3, line: 3258, type: !4133, scopeLine: 3260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4135)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !243, !103, !110}
!4135 = !{!4136, !4137, !4138, !4139}
!4136 = !DILocalVariable(name: "dgs", arg: 1, scope: !4132, file: !3, line: 3258, type: !243)
!4137 = !DILocalVariable(name: "s", arg: 2, scope: !4132, file: !3, line: 3259, type: !103)
!4138 = !DILocalVariable(name: "l", arg: 3, scope: !4132, file: !3, line: 3259, type: !110)
!4139 = !DILocalVariable(name: "need", scope: !4132, file: !3, line: 3261, type: !110)
!4140 = !DILocation(line: 0, scope: !4132)
!4141 = !DILocation(line: 3263, column: 15, scope: !4132)
!4142 = !DILocation(line: 3263, column: 19, scope: !4132)
!4143 = !DILocation(line: 3263, column: 23, scope: !4132)
!4144 = !DILocation(line: 3264, column: 19, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 3264, column: 7)
!4146 = !DILocation(line: 3264, column: 12, scope: !4145)
!4147 = !DILocation(line: 3264, column: 7, scope: !4132)
!4148 = !DILocation(line: 3265, column: 5, scope: !4145)
!4149 = !DILocation(line: 3267, column: 12, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 3267, column: 7)
!4151 = !DILocation(line: 3267, column: 7, scope: !4150)
!4152 = !DILocation(line: 3267, column: 7, scope: !4132)
!4153 = !DILocation(line: 3270, column: 16, scope: !4132)
!4154 = !DILocation(line: 3270, column: 27, scope: !4132)
!4155 = !DILocation(line: 3270, column: 20, scope: !4132)
!4156 = !DILocation(line: 3270, column: 3, scope: !4132)
!4157 = !DILocation(line: 3271, column: 8, scope: !4132)
!4158 = !DILocation(line: 3271, column: 17, scope: !4132)
!4159 = !DILocation(line: 3271, column: 21, scope: !4132)
!4160 = !DILocation(line: 3271, column: 3, scope: !4132)
!4161 = !DILocation(line: 3271, column: 26, scope: !4132)
!4162 = !DILocation(line: 3272, column: 12, scope: !4132)
!4163 = !DILocation(line: 3273, column: 1, scope: !4132)
!4164 = distinct !DISubprogram(name: "d_print_error", scope: !3, file: !3, line: 3306, type: !2572, scopeLine: 3307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4165 = !{!4166}
!4166 = !DILocalVariable(name: "dpi", arg: 1, scope: !4164, file: !3, line: 3306, type: !1668)
!4167 = !DILocation(line: 0, scope: !4164)
!4168 = !DILocation(line: 3308, column: 8, scope: !4164)
!4169 = !DILocation(line: 3308, column: 25, scope: !4164)
!4170 = !DILocation(line: 3309, column: 1, scope: !4164)
!4171 = distinct !DISubprogram(name: "d_append_buffer", scope: !3, file: !3, line: 3340, type: !4172, scopeLine: 3341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4174)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{null, !1668, !103, !110}
!4174 = !{!4175, !4176, !4177, !4178}
!4175 = !DILocalVariable(name: "dpi", arg: 1, scope: !4171, file: !3, line: 3340, type: !1668)
!4176 = !DILocalVariable(name: "s", arg: 2, scope: !4171, file: !3, line: 3340, type: !103)
!4177 = !DILocalVariable(name: "l", arg: 3, scope: !4171, file: !3, line: 3340, type: !110)
!4178 = !DILocalVariable(name: "i", scope: !4171, file: !3, line: 3342, type: !110)
!4179 = !DILocation(line: 0, scope: !4171)
!4180 = !DILocation(line: 3344, column: 8, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 3344, column: 3)
!4182 = !DILocation(line: 0, scope: !4181)
!4183 = !DILocation(line: 3344, column: 17, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 3344, column: 3)
!4185 = !DILocation(line: 3344, column: 3, scope: !4181)
!4186 = !DILocation(line: 3345, column: 25, scope: !4184)
!4187 = !DILocation(line: 3345, column: 5, scope: !4184)
!4188 = !DILocation(line: 3344, column: 23, scope: !4184)
!4189 = !DILocation(line: 3344, column: 3, scope: !4184)
!4190 = distinct !{!4190, !4185, !4191}
!4191 = !DILocation(line: 3345, column: 29, scope: !4181)
!4192 = !DILocation(line: 3346, column: 1, scope: !4171)
!4193 = distinct !DISubprogram(name: "d_print_java_identifier", scope: !3, file: !3, line: 4341, type: !4194, scopeLine: 4342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4196)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{null, !1668, !103, !102}
!4196 = !{!4197, !4198, !4199, !4200, !4201, !4202, !4208, !4209}
!4197 = !DILocalVariable(name: "dpi", arg: 1, scope: !4193, file: !3, line: 4341, type: !1668)
!4198 = !DILocalVariable(name: "name", arg: 2, scope: !4193, file: !3, line: 4341, type: !103)
!4199 = !DILocalVariable(name: "len", arg: 3, scope: !4193, file: !3, line: 4341, type: !102)
!4200 = !DILocalVariable(name: "p", scope: !4193, file: !3, line: 4343, type: !103)
!4201 = !DILocalVariable(name: "end", scope: !4193, file: !3, line: 4344, type: !103)
!4202 = !DILocalVariable(name: "c", scope: !4203, file: !3, line: 4354, type: !112)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 4353, column: 2)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 4349, column: 11)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 4348, column: 5)
!4206 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 4347, column: 3)
!4207 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 4347, column: 3)
!4208 = !DILocalVariable(name: "q", scope: !4203, file: !3, line: 4355, type: !103)
!4209 = !DILocalVariable(name: "dig", scope: !4210, file: !3, line: 4360, type: !102)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 4359, column: 6)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 4358, column: 4)
!4212 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 4358, column: 4)
!4213 = !DILocation(line: 0, scope: !4193)
!4214 = !DILocation(line: 4346, column: 14, scope: !4193)
!4215 = !DILocation(line: 0, scope: !4204)
!4216 = !DILocation(line: 4347, column: 8, scope: !4207)
!4217 = !DILocation(line: 0, scope: !4207)
!4218 = !DILocation(line: 4347, column: 20, scope: !4206)
!4219 = !DILocation(line: 4347, column: 3, scope: !4207)
!4220 = !DILocation(line: 4349, column: 15, scope: !4204)
!4221 = !DILocation(line: 4349, column: 19, scope: !4204)
!4222 = !DILocation(line: 4350, column: 4, scope: !4204)
!4223 = !DILocation(line: 4350, column: 7, scope: !4204)
!4224 = !DILocation(line: 4350, column: 12, scope: !4204)
!4225 = !DILocation(line: 4351, column: 4, scope: !4204)
!4226 = !DILocation(line: 4351, column: 7, scope: !4204)
!4227 = !DILocation(line: 4351, column: 12, scope: !4204)
!4228 = !DILocation(line: 4352, column: 4, scope: !4204)
!4229 = !DILocation(line: 4352, column: 7, scope: !4204)
!4230 = !DILocation(line: 4352, column: 12, scope: !4204)
!4231 = !DILocation(line: 4349, column: 11, scope: !4205)
!4232 = !DILocation(line: 0, scope: !4203)
!4233 = !DILocation(line: 4358, column: 15, scope: !4212)
!4234 = !DILocation(line: 4358, column: 9, scope: !4212)
!4235 = !DILocation(line: 0, scope: !4212)
!4236 = !DILocation(line: 4358, column: 22, scope: !4211)
!4237 = !DILocation(line: 4358, column: 4, scope: !4212)
!4238 = !DILocation(line: 4362, column: 12, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 4362, column: 12)
!4240 = !DILocation(line: 4362, column: 12, scope: !4210)
!4241 = !DILocation(line: 4363, column: 9, scope: !4239)
!4242 = !DILocation(line: 4363, column: 12, scope: !4239)
!4243 = !DILocation(line: 4363, column: 3, scope: !4239)
!4244 = !DILocation(line: 4364, column: 20, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 4364, column: 17)
!4246 = !DILocation(line: 4364, column: 27, scope: !4245)
!4247 = !DILocation(line: 4364, column: 33, scope: !4245)
!4248 = !DILocation(line: 4364, column: 17, scope: !4239)
!4249 = !DILocation(line: 4365, column: 9, scope: !4245)
!4250 = !DILocation(line: 4365, column: 18, scope: !4245)
!4251 = !DILocation(line: 4365, column: 3, scope: !4245)
!4252 = !DILocation(line: 4366, column: 20, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 4366, column: 17)
!4254 = !DILocation(line: 4366, column: 27, scope: !4253)
!4255 = !DILocation(line: 4366, column: 33, scope: !4253)
!4256 = !DILocation(line: 4366, column: 17, scope: !4245)
!4257 = !DILocation(line: 4367, column: 9, scope: !4253)
!4258 = !DILocation(line: 4367, column: 18, scope: !4253)
!4259 = !DILocation(line: 0, scope: !4239)
!4260 = !DILocation(line: 4371, column: 14, scope: !4210)
!4261 = !DILocation(line: 4371, column: 19, scope: !4210)
!4262 = !DILocation(line: 4372, column: 6, scope: !4211)
!4263 = !DILocation(line: 4358, column: 29, scope: !4211)
!4264 = !DILocation(line: 4358, column: 4, scope: !4211)
!4265 = distinct !{!4265, !4237, !4266}
!4266 = !DILocation(line: 4372, column: 6, scope: !4212)
!4267 = !DILocation(line: 4375, column: 16, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 4375, column: 8)
!4269 = !DILocation(line: 4375, column: 19, scope: !4268)
!4270 = !DILocation(line: 4375, column: 22, scope: !4268)
!4271 = !DILocation(line: 4375, column: 34, scope: !4268)
!4272 = !DILocation(line: 4375, column: 29, scope: !4268)
!4273 = !DILocation(line: 4377, column: 28, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 4376, column: 6)
!4275 = !DILocation(line: 4377, column: 8, scope: !4274)
!4276 = !DILocation(line: 4379, column: 8, scope: !4274)
!4277 = !DILocation(line: 4383, column: 27, scope: !4205)
!4278 = !DILocation(line: 4383, column: 7, scope: !4205)
!4279 = !DILocation(line: 4384, column: 5, scope: !4205)
!4280 = !DILocation(line: 4378, column: 10, scope: !4274)
!4281 = !DILocation(line: 4347, column: 27, scope: !4206)
!4282 = !DILocation(line: 4347, column: 3, scope: !4206)
!4283 = distinct !{!4283, !4219, !4284}
!4284 = !DILocation(line: 4384, column: 5, scope: !4207)
!4285 = !DILocation(line: 4385, column: 1, scope: !4193)
!4286 = distinct !DISubprogram(name: "d_append_string", scope: !3, file: !3, line: 3349, type: !4287, scopeLine: 3350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4289)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !1668, !103}
!4289 = !{!4290, !4291}
!4290 = !DILocalVariable(name: "dpi", arg: 1, scope: !4286, file: !3, line: 3349, type: !1668)
!4291 = !DILocalVariable(name: "s", arg: 2, scope: !4286, file: !3, line: 3349, type: !103)
!4292 = !DILocation(line: 0, scope: !4286)
!4293 = !DILocation(line: 3351, column: 28, scope: !4286)
!4294 = !DILocation(line: 3351, column: 3, scope: !4286)
!4295 = !DILocation(line: 3352, column: 1, scope: !4286)
!4296 = distinct !DISubprogram(name: "d_append_char", scope: !3, file: !3, line: 3330, type: !4297, scopeLine: 3331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{null, !1668, !105}
!4299 = !{!4300, !4301}
!4300 = !DILocalVariable(name: "dpi", arg: 1, scope: !4296, file: !3, line: 3330, type: !1668)
!4301 = !DILocalVariable(name: "c", arg: 2, scope: !4296, file: !3, line: 3330, type: !105)
!4302 = !DILocation(line: 0, scope: !4296)
!4303 = !DILocation(line: 3332, column: 12, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 3332, column: 7)
!4305 = !DILocation(line: 3332, column: 16, scope: !4304)
!4306 = !DILocation(line: 3332, column: 7, scope: !4296)
!4307 = !DILocation(line: 3333, column: 5, scope: !4304)
!4308 = !DILocation(line: 3335, column: 20, scope: !4296)
!4309 = !DILocation(line: 3335, column: 3, scope: !4296)
!4310 = !DILocation(line: 3335, column: 24, scope: !4296)
!4311 = !DILocation(line: 3336, column: 8, scope: !4296)
!4312 = !DILocation(line: 3336, column: 18, scope: !4296)
!4313 = !DILocation(line: 3337, column: 1, scope: !4296)
!4314 = distinct !DISubprogram(name: "d_print_mod", scope: !3, file: !3, line: 4477, type: !1693, scopeLine: 4479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4315)
!4315 = !{!4316, !4317}
!4316 = !DILocalVariable(name: "dpi", arg: 1, scope: !4314, file: !3, line: 4477, type: !1668)
!4317 = !DILocalVariable(name: "mod", arg: 2, scope: !4314, file: !3, line: 4478, type: !1621)
!4318 = !DILocation(line: 0, scope: !4314)
!4319 = !DILocation(line: 4480, column: 16, scope: !4314)
!4320 = !DILocation(line: 4480, column: 3, scope: !4314)
!4321 = !DILocation(line: 4484, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 4481, column: 5)
!4323 = !DILocation(line: 4485, column: 7, scope: !4322)
!4324 = !DILocation(line: 4488, column: 7, scope: !4322)
!4325 = !DILocation(line: 4489, column: 7, scope: !4322)
!4326 = !DILocation(line: 4492, column: 7, scope: !4322)
!4327 = !DILocation(line: 4493, column: 7, scope: !4322)
!4328 = !DILocation(line: 4495, column: 7, scope: !4322)
!4329 = !DILocation(line: 4496, column: 26, scope: !4322)
!4330 = !DILocation(line: 4496, column: 7, scope: !4322)
!4331 = !DILocation(line: 4497, column: 7, scope: !4322)
!4332 = !DILocation(line: 4500, column: 17, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 4500, column: 11)
!4334 = !DILocation(line: 4500, column: 25, scope: !4333)
!4335 = !DILocation(line: 4500, column: 38, scope: !4333)
!4336 = !DILocation(line: 4500, column: 11, scope: !4322)
!4337 = !DILocation(line: 4501, column: 2, scope: !4333)
!4338 = !DILocation(line: 4504, column: 7, scope: !4322)
!4339 = !DILocation(line: 4505, column: 7, scope: !4322)
!4340 = !DILocation(line: 4507, column: 7, scope: !4322)
!4341 = !DILocation(line: 4508, column: 7, scope: !4322)
!4342 = !DILocation(line: 4510, column: 7, scope: !4322)
!4343 = !DILocation(line: 4511, column: 7, scope: !4322)
!4344 = !DILocation(line: 4513, column: 7, scope: !4322)
!4345 = !DILocation(line: 4514, column: 7, scope: !4322)
!4346 = !DILocation(line: 4516, column: 11, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 4516, column: 11)
!4348 = !DILocation(line: 4516, column: 29, scope: !4347)
!4349 = !DILocation(line: 4516, column: 11, scope: !4322)
!4350 = !DILocation(line: 4517, column: 2, scope: !4347)
!4351 = !DILocation(line: 4518, column: 26, scope: !4322)
!4352 = !DILocation(line: 4518, column: 7, scope: !4322)
!4353 = !DILocation(line: 4519, column: 7, scope: !4322)
!4354 = !DILocation(line: 4520, column: 7, scope: !4322)
!4355 = !DILocation(line: 4522, column: 26, scope: !4322)
!4356 = !DILocation(line: 4522, column: 7, scope: !4322)
!4357 = !DILocation(line: 4523, column: 7, scope: !4322)
!4358 = !DILocation(line: 4525, column: 7, scope: !4322)
!4359 = !DILocation(line: 4526, column: 26, scope: !4322)
!4360 = !DILocation(line: 4526, column: 7, scope: !4322)
!4361 = !DILocation(line: 4527, column: 7, scope: !4322)
!4362 = !DILocation(line: 4528, column: 7, scope: !4322)
!4363 = !DILocation(line: 4533, column: 7, scope: !4322)
!4364 = !DILocation(line: 4534, column: 7, scope: !4322)
!4365 = !DILocation(line: 4536, column: 1, scope: !4314)
!4366 = distinct !DISubprogram(name: "d_last_char", scope: !3, file: !3, line: 3363, type: !4367, scopeLine: 3364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4369)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!105, !1668}
!4369 = !{!4370}
!4370 = !DILocalVariable(name: "dpi", arg: 1, scope: !4366, file: !3, line: 3363, type: !1668)
!4371 = !DILocation(line: 0, scope: !4366)
!4372 = !DILocation(line: 3365, column: 15, scope: !4366)
!4373 = !DILocation(line: 3365, column: 3, scope: !4366)
!4374 = distinct !DISubprogram(name: "d_lookup_template_argument", scope: !3, file: !3, line: 3452, type: !4375, scopeLine: 3454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4377)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!128, !1668, !1621}
!4377 = !{!4378, !4379}
!4378 = !DILocalVariable(name: "dpi", arg: 1, scope: !4374, file: !3, line: 3452, type: !1668)
!4379 = !DILocalVariable(name: "dc", arg: 2, scope: !4374, file: !3, line: 3453, type: !1621)
!4380 = !DILocation(line: 0, scope: !4374)
!4381 = !DILocation(line: 3455, column: 12, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 3455, column: 7)
!4383 = !DILocation(line: 3455, column: 22, scope: !4382)
!4384 = !DILocation(line: 3455, column: 7, scope: !4374)
!4385 = !DILocation(line: 3457, column: 7, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 3456, column: 5)
!4387 = !DILocation(line: 3458, column: 7, scope: !4386)
!4388 = !DILocation(line: 3462, column: 6, scope: !4374)
!4389 = !DILocation(line: 3463, column: 10, scope: !4374)
!4390 = !DILocation(line: 3463, column: 21, scope: !4374)
!4391 = !DILocation(line: 3463, column: 6, scope: !4374)
!4392 = !DILocation(line: 3461, column: 10, scope: !4374)
!4393 = !DILocation(line: 3461, column: 3, scope: !4374)
!4394 = !DILocation(line: 3464, column: 1, scope: !4374)
!4395 = distinct !DISubprogram(name: "d_index_template_argument", scope: !3, file: !3, line: 3428, type: !4396, scopeLine: 3429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!128, !128, !102}
!4398 = !{!4399, !4400, !4401}
!4399 = !DILocalVariable(name: "args", arg: 1, scope: !4395, file: !3, line: 3428, type: !128)
!4400 = !DILocalVariable(name: "i", arg: 2, scope: !4395, file: !3, line: 3428, type: !102)
!4401 = !DILocalVariable(name: "a", scope: !4395, file: !3, line: 3430, type: !128)
!4402 = !DILocation(line: 0, scope: !4395)
!4403 = !DILocation(line: 3432, column: 8, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 3432, column: 3)
!4405 = !DILocation(line: 0, scope: !4404)
!4406 = !DILocation(line: 3433, column: 10, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 3432, column: 3)
!4408 = !DILocation(line: 3432, column: 3, scope: !4404)
!4409 = !DILocation(line: 3436, column: 14, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 3436, column: 11)
!4411 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 3435, column: 5)
!4412 = !DILocation(line: 3436, column: 19, scope: !4410)
!4413 = !DILocation(line: 3436, column: 11, scope: !4411)
!4414 = !DILocation(line: 3438, column: 13, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 3438, column: 11)
!4416 = !DILocation(line: 3438, column: 11, scope: !4411)
!4417 = !DILocation(line: 3440, column: 7, scope: !4411)
!4418 = !DILocation(line: 3434, column: 12, scope: !4407)
!4419 = !DILocation(line: 3432, column: 3, scope: !4407)
!4420 = distinct !{!4420, !4408, !4421}
!4421 = !DILocation(line: 3441, column: 5, scope: !4404)
!4422 = !DILocation(line: 3442, column: 9, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 3442, column: 7)
!4424 = !DILocation(line: 3442, column: 14, scope: !4423)
!4425 = !DILocation(line: 3445, column: 10, scope: !4395)
!4426 = !DILocation(line: 3445, column: 3, scope: !4395)
!4427 = !DILocation(line: 3446, column: 1, scope: !4395)
!4428 = distinct !DISubprogram(name: "d_print_function_type", scope: !3, file: !3, line: 4541, type: !4429, scopeLine: 4544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4431)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !1668, !1621, !1647}
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439}
!4432 = !DILocalVariable(name: "dpi", arg: 1, scope: !4428, file: !3, line: 4541, type: !1668)
!4433 = !DILocalVariable(name: "dc", arg: 2, scope: !4428, file: !3, line: 4542, type: !1621)
!4434 = !DILocalVariable(name: "mods", arg: 3, scope: !4428, file: !3, line: 4543, type: !1647)
!4435 = !DILocalVariable(name: "need_paren", scope: !4428, file: !3, line: 4545, type: !102)
!4436 = !DILocalVariable(name: "saw_mod", scope: !4428, file: !3, line: 4546, type: !102)
!4437 = !DILocalVariable(name: "need_space", scope: !4428, file: !3, line: 4547, type: !102)
!4438 = !DILocalVariable(name: "p", scope: !4428, file: !3, line: 4548, type: !1647)
!4439 = !DILocalVariable(name: "hold_modifiers", scope: !4428, file: !3, line: 4549, type: !1647)
!4440 = !DILocation(line: 0, scope: !4428)
!4441 = !DILocation(line: 4554, column: 8, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 4554, column: 3)
!4443 = !DILocation(line: 4553, column: 14, scope: !4428)
!4444 = !DILocation(line: 0, scope: !4442)
!4445 = !DILocation(line: 4554, column: 20, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 4554, column: 3)
!4447 = !DILocation(line: 4554, column: 3, scope: !4442)
!4448 = !DILocation(line: 4556, column: 14, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 4556, column: 11)
!4450 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 4555, column: 5)
!4451 = !DILocation(line: 4556, column: 11, scope: !4449)
!4452 = !DILocation(line: 4556, column: 11, scope: !4450)
!4453 = !DILocation(line: 4560, column: 18, scope: !4450)
!4454 = !DILocation(line: 4560, column: 23, scope: !4450)
!4455 = !DILocation(line: 4560, column: 7, scope: !4450)
!4456 = !DILocation(line: 4576, column: 4, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 4561, column: 2)
!4458 = !DILocation(line: 4580, column: 4, scope: !4457)
!4459 = !DILocation(line: 4582, column: 4, scope: !4457)
!4460 = !DILocation(line: 4584, column: 11, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 4584, column: 11)
!4462 = !DILocation(line: 4584, column: 11, scope: !4450)
!4463 = !DILocation(line: 4554, column: 36, scope: !4446)
!4464 = !DILocation(line: 4554, column: 3, scope: !4446)
!4465 = distinct !{!4465, !4447, !4466}
!4466 = !DILocation(line: 4586, column: 5, scope: !4442)
!4467 = !DILocation(line: 4551, column: 14, scope: !4428)
!4468 = !DILocation(line: 4588, column: 7, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 4588, column: 7)
!4470 = !DILocation(line: 4588, column: 19, scope: !4469)
!4471 = !DILocation(line: 4588, column: 32, scope: !4469)
!4472 = !DILocation(line: 4588, column: 27, scope: !4469)
!4473 = !DILocation(line: 4591, column: 7, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 4591, column: 7)
!4475 = !DILocation(line: 4591, column: 7, scope: !4428)
!4476 = !DILocation(line: 4593, column: 13, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 4593, column: 11)
!4478 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 4592, column: 5)
!4479 = !DILocation(line: 4593, column: 11, scope: !4478)
!4480 = !DILocation(line: 4595, column: 8, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 4595, column: 8)
!4482 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 4594, column: 2)
!4483 = !DILocation(line: 4595, column: 26, scope: !4481)
!4484 = !DILocation(line: 4596, column: 8, scope: !4481)
!4485 = !DILocation(line: 4596, column: 11, scope: !4481)
!4486 = !DILocation(line: 4596, column: 29, scope: !4481)
!4487 = !DILocation(line: 4595, column: 8, scope: !4482)
!4488 = !DILocation(line: 4599, column: 11, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 4599, column: 11)
!4490 = !DILocation(line: 4599, column: 22, scope: !4489)
!4491 = !DILocation(line: 4599, column: 25, scope: !4489)
!4492 = !DILocation(line: 4599, column: 43, scope: !4489)
!4493 = !DILocation(line: 4599, column: 11, scope: !4478)
!4494 = !DILocation(line: 4600, column: 2, scope: !4489)
!4495 = !DILocation(line: 4601, column: 7, scope: !4478)
!4496 = !DILocation(line: 4602, column: 5, scope: !4478)
!4497 = !DILocation(line: 4604, column: 25, scope: !4428)
!4498 = !DILocation(line: 4605, column: 18, scope: !4428)
!4499 = !DILocation(line: 4607, column: 3, scope: !4428)
!4500 = !DILocation(line: 4609, column: 7, scope: !4428)
!4501 = !DILocation(line: 4610, column: 5, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 4609, column: 7)
!4503 = !DILocation(line: 4612, column: 3, scope: !4428)
!4504 = !DILocation(line: 4614, column: 7, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 4614, column: 7)
!4506 = !DILocation(line: 4614, column: 20, scope: !4505)
!4507 = !DILocation(line: 4614, column: 7, scope: !4428)
!4508 = !DILocation(line: 4615, column: 5, scope: !4505)
!4509 = !DILocation(line: 4617, column: 3, scope: !4428)
!4510 = !DILocation(line: 4619, column: 3, scope: !4428)
!4511 = !DILocation(line: 4621, column: 18, scope: !4428)
!4512 = !DILocation(line: 4622, column: 1, scope: !4428)
!4513 = distinct !DISubprogram(name: "d_print_array_type", scope: !3, file: !3, line: 4627, type: !4429, scopeLine: 4630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4514)
!4514 = !{!4515, !4516, !4517, !4518, !4519, !4522}
!4515 = !DILocalVariable(name: "dpi", arg: 1, scope: !4513, file: !3, line: 4627, type: !1668)
!4516 = !DILocalVariable(name: "dc", arg: 2, scope: !4513, file: !3, line: 4628, type: !1621)
!4517 = !DILocalVariable(name: "mods", arg: 3, scope: !4513, file: !3, line: 4629, type: !1647)
!4518 = !DILocalVariable(name: "need_space", scope: !4513, file: !3, line: 4631, type: !102)
!4519 = !DILocalVariable(name: "need_paren", scope: !4520, file: !3, line: 4636, type: !102)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 4635, column: 5)
!4521 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 4634, column: 7)
!4522 = !DILocalVariable(name: "p", scope: !4520, file: !3, line: 4637, type: !1647)
!4523 = !DILocation(line: 0, scope: !4513)
!4524 = !DILocation(line: 4634, column: 12, scope: !4521)
!4525 = !DILocation(line: 4634, column: 7, scope: !4513)
!4526 = !DILocation(line: 4640, column: 7, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 4640, column: 7)
!4528 = !DILocation(line: 0, scope: !4527)
!4529 = !DILocation(line: 0, scope: !4520)
!4530 = !DILocation(line: 4640, column: 24, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 4640, column: 7)
!4532 = !DILocation(line: 4642, column: 13, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 4642, column: 8)
!4534 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 4641, column: 2)
!4535 = !DILocation(line: 4642, column: 10, scope: !4533)
!4536 = !DILocation(line: 4642, column: 8, scope: !4534)
!4537 = !DILocation(line: 4644, column: 15, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 4644, column: 12)
!4539 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 4643, column: 6)
!4540 = !DILocation(line: 4644, column: 20, scope: !4538)
!4541 = !DILocation(line: 4644, column: 25, scope: !4538)
!4542 = !DILocation(line: 0, scope: !4538)
!4543 = !DILocation(line: 4640, column: 40, scope: !4531)
!4544 = !DILocation(line: 4640, column: 7, scope: !4531)
!4545 = distinct !{!4545, !4526, !4546}
!4546 = !DILocation(line: 4656, column: 2, scope: !4527)
!4547 = !DILocation(line: 4658, column: 11, scope: !4520)
!4548 = !DILocation(line: 4659, column: 2, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 4658, column: 11)
!4550 = !DILocation(line: 4661, column: 7, scope: !4520)
!4551 = !DILocation(line: 4663, column: 11, scope: !4520)
!4552 = !DILocation(line: 4664, column: 2, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 4663, column: 11)
!4554 = !DILocation(line: 4667, column: 7, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 4667, column: 7)
!4556 = !DILocation(line: 4667, column: 7, scope: !4513)
!4557 = !DILocation(line: 4668, column: 5, scope: !4555)
!4558 = !DILocation(line: 4670, column: 3, scope: !4513)
!4559 = !DILocation(line: 4672, column: 7, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 4672, column: 7)
!4561 = !DILocation(line: 4672, column: 19, scope: !4560)
!4562 = !DILocation(line: 4672, column: 7, scope: !4513)
!4563 = !DILocation(line: 4673, column: 5, scope: !4560)
!4564 = !DILocation(line: 4675, column: 3, scope: !4513)
!4565 = !DILocation(line: 4676, column: 1, scope: !4513)
!4566 = distinct !DISubprogram(name: "d_print_cast", scope: !3, file: !3, line: 4694, type: !1693, scopeLine: 4696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4567)
!4567 = !{!4568, !4569, !4570, !4573}
!4568 = !DILocalVariable(name: "dpi", arg: 1, scope: !4566, file: !3, line: 4694, type: !1668)
!4569 = !DILocalVariable(name: "dc", arg: 2, scope: !4566, file: !3, line: 4695, type: !1621)
!4570 = !DILocalVariable(name: "hold_dpm", scope: !4571, file: !3, line: 4701, type: !1647)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 4700, column: 5)
!4572 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 4697, column: 7)
!4573 = !DILocalVariable(name: "dpt", scope: !4571, file: !3, line: 4702, type: !1642)
!4574 = !DILocation(line: 0, scope: !4566)
!4575 = !DILocation(line: 4697, column: 7, scope: !4572)
!4576 = !DILocation(line: 4697, column: 20, scope: !4572)
!4577 = !DILocation(line: 4697, column: 25, scope: !4572)
!4578 = !DILocation(line: 4697, column: 7, scope: !4566)
!4579 = !DILocation(line: 4698, column: 5, scope: !4572)
!4580 = !DILocation(line: 4702, column: 7, scope: !4571)
!4581 = !DILocation(line: 4709, column: 23, scope: !4571)
!4582 = !DILocation(line: 4710, column: 22, scope: !4571)
!4583 = !DILocation(line: 4712, column: 23, scope: !4571)
!4584 = !DILocation(line: 4712, column: 16, scope: !4571)
!4585 = !DILocation(line: 4713, column: 22, scope: !4571)
!4586 = !DILocation(line: 4714, column: 27, scope: !4571)
!4587 = !DILocation(line: 4714, column: 11, scope: !4571)
!4588 = !DILocation(line: 4714, column: 25, scope: !4571)
!4589 = !DILocation(line: 4716, column: 26, scope: !4571)
!4590 = !DILocation(line: 4716, column: 7, scope: !4571)
!4591 = !DILocation(line: 4718, column: 28, scope: !4571)
!4592 = !DILocation(line: 4718, column: 22, scope: !4571)
!4593 = !DILocation(line: 4720, column: 11, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 4720, column: 11)
!4595 = !DILocation(line: 4720, column: 29, scope: !4594)
!4596 = !DILocation(line: 4720, column: 11, scope: !4571)
!4597 = !DILocation(line: 4721, column: 2, scope: !4594)
!4598 = !DILocation(line: 4722, column: 7, scope: !4571)
!4599 = !DILocation(line: 4723, column: 26, scope: !4571)
!4600 = !DILocation(line: 4723, column: 7, scope: !4571)
!4601 = !DILocation(line: 4726, column: 11, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 4726, column: 11)
!4603 = !DILocation(line: 4726, column: 29, scope: !4602)
!4604 = !DILocation(line: 4726, column: 11, scope: !4571)
!4605 = !DILocation(line: 4727, column: 2, scope: !4602)
!4606 = !DILocation(line: 4728, column: 7, scope: !4571)
!4607 = !DILocation(line: 4730, column: 22, scope: !4571)
!4608 = !DILocation(line: 4731, column: 5, scope: !4572)
!4609 = !DILocation(line: 4732, column: 1, scope: !4566)
!4610 = distinct !DISubprogram(name: "d_print_expr_op", scope: !3, file: !3, line: 4681, type: !1693, scopeLine: 4683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4611)
!4611 = !{!4612, !4613}
!4612 = !DILocalVariable(name: "dpi", arg: 1, scope: !4610, file: !3, line: 4681, type: !1668)
!4613 = !DILocalVariable(name: "dc", arg: 2, scope: !4610, file: !3, line: 4682, type: !1621)
!4614 = !DILocation(line: 0, scope: !4610)
!4615 = !DILocation(line: 4684, column: 11, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 4684, column: 7)
!4617 = !DILocation(line: 4684, column: 16, scope: !4616)
!4618 = !DILocation(line: 4684, column: 7, scope: !4610)
!4619 = !DILocation(line: 4685, column: 31, scope: !4616)
!4620 = !DILocation(line: 4685, column: 44, scope: !4616)
!4621 = !DILocation(line: 4685, column: 48, scope: !4616)
!4622 = !DILocation(line: 4686, column: 29, scope: !4616)
!4623 = !DILocation(line: 4686, column: 8, scope: !4616)
!4624 = !DILocation(line: 4685, column: 5, scope: !4616)
!4625 = !DILocation(line: 4688, column: 5, scope: !4616)
!4626 = !DILocation(line: 4689, column: 1, scope: !4610)
!4627 = distinct !DISubprogram(name: "d_print_subexpr", scope: !3, file: !3, line: 3529, type: !1693, scopeLine: 3531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4628)
!4628 = !{!4629, !4630, !4631}
!4629 = !DILocalVariable(name: "dpi", arg: 1, scope: !4627, file: !3, line: 3529, type: !1668)
!4630 = !DILocalVariable(name: "dc", arg: 2, scope: !4627, file: !3, line: 3530, type: !1621)
!4631 = !DILocalVariable(name: "simple", scope: !4627, file: !3, line: 3532, type: !102)
!4632 = !DILocation(line: 0, scope: !4627)
!4633 = !DILocation(line: 3533, column: 11, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 3533, column: 7)
!4635 = !DILocation(line: 3533, column: 16, scope: !4634)
!4636 = !DILocation(line: 3534, column: 7, scope: !4634)
!4637 = !DILocation(line: 3534, column: 19, scope: !4634)
!4638 = !DILocation(line: 3533, column: 7, scope: !4627)
!4639 = !DILocation(line: 3535, column: 5, scope: !4634)
!4640 = !DILocation(line: 3536, column: 7, scope: !4627)
!4641 = !DILocation(line: 3537, column: 5, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 3536, column: 7)
!4643 = !DILocation(line: 3538, column: 3, scope: !4627)
!4644 = !DILocation(line: 3539, column: 7, scope: !4627)
!4645 = !DILocation(line: 3540, column: 5, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 3539, column: 7)
!4647 = !DILocation(line: 3541, column: 1, scope: !4627)
!4648 = distinct !DISubprogram(name: "d_append_num", scope: !3, file: !3, line: 3355, type: !4649, scopeLine: 3356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4651)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !1668, !196}
!4651 = !{!4652, !4653, !4654}
!4652 = !DILocalVariable(name: "dpi", arg: 1, scope: !4648, file: !3, line: 3355, type: !1668)
!4653 = !DILocalVariable(name: "l", arg: 2, scope: !4648, file: !3, line: 3355, type: !196)
!4654 = !DILocalVariable(name: "buf", scope: !4648, file: !3, line: 3357, type: !4655)
!4655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 200, elements: !4656)
!4656 = !{!4657}
!4657 = !DISubrange(count: 25)
!4658 = !DILocation(line: 0, scope: !4648)
!4659 = !DILocation(line: 3357, column: 3, scope: !4648)
!4660 = !DILocation(line: 3357, column: 8, scope: !4648)
!4661 = !DILocation(line: 3358, column: 3, scope: !4648)
!4662 = !DILocation(line: 3359, column: 3, scope: !4648)
!4663 = !DILocation(line: 3360, column: 1, scope: !4648)
!4664 = distinct !DISubprogram(name: "d_find_pack", scope: !3, file: !3, line: 3469, type: !4375, scopeLine: 3471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4665)
!4665 = !{!4666, !4667, !4668}
!4666 = !DILocalVariable(name: "dpi", arg: 1, scope: !4664, file: !3, line: 3469, type: !1668)
!4667 = !DILocalVariable(name: "dc", arg: 2, scope: !4664, file: !3, line: 3470, type: !1621)
!4668 = !DILocalVariable(name: "a", scope: !4664, file: !3, line: 3472, type: !128)
!4669 = !DILocation(line: 3496, column: 14, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 3477, column: 5)
!4671 = !DILocation(line: 0, scope: !4664)
!4672 = !DILocation(line: 3473, column: 10, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 3473, column: 7)
!4674 = !DILocation(line: 3473, column: 7, scope: !4664)
!4675 = !DILocation(line: 3476, column: 15, scope: !4664)
!4676 = !DILocation(line: 3476, column: 3, scope: !4664)
!4677 = !DILocation(line: 3479, column: 11, scope: !4670)
!4678 = !DILocation(line: 3480, column: 11, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 3480, column: 11)
!4680 = !DILocation(line: 3480, column: 13, scope: !4679)
!4681 = !DILocation(line: 3480, column: 19, scope: !4679)
!4682 = !DILocation(line: 3480, column: 24, scope: !4679)
!4683 = !DILocation(line: 3480, column: 11, scope: !4670)
!4684 = !DILocation(line: 3482, column: 7, scope: !4670)
!4685 = !DILocation(line: 0, scope: !4670)
!4686 = !DILocation(line: 3498, column: 14, scope: !4670)
!4687 = !DILocation(line: 3500, column: 14, scope: !4670)
!4688 = !DILocation(line: 3503, column: 29, scope: !4670)
!4689 = !DILocation(line: 3503, column: 11, scope: !4670)
!4690 = !DILocation(line: 3504, column: 11, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 3504, column: 11)
!4692 = !DILocation(line: 3504, column: 11, scope: !4670)
!4693 = !DILocation(line: 3506, column: 14, scope: !4670)
!4694 = !DILocation(line: 3508, column: 1, scope: !4664)
!4695 = distinct !DISubprogram(name: "d_pack_length", scope: !3, file: !3, line: 3513, type: !4696, scopeLine: 3514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4698)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!102, !1621}
!4698 = !{!4699, !4700}
!4699 = !DILocalVariable(name: "dc", arg: 1, scope: !4695, file: !3, line: 3513, type: !1621)
!4700 = !DILocalVariable(name: "count", scope: !4695, file: !3, line: 3515, type: !102)
!4701 = !DILocation(line: 0, scope: !4695)
!4702 = !DILocation(line: 3516, column: 3, scope: !4695)
!4703 = !DILocation(line: 3516, column: 10, scope: !4695)
!4704 = !DILocation(line: 3516, column: 13, scope: !4695)
!4705 = !DILocation(line: 3516, column: 20, scope: !4695)
!4706 = !DILocation(line: 3516, column: 25, scope: !4695)
!4707 = !DILocation(line: 3517, column: 3, scope: !4695)
!4708 = !DILocation(line: 3517, column: 6, scope: !4695)
!4709 = !DILocation(line: 3517, column: 18, scope: !4695)
!4710 = !DILocation(line: 3519, column: 7, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 3518, column: 5)
!4712 = !DILocation(line: 3520, column: 12, scope: !4711)
!4713 = distinct !{!4713, !4702, !4714}
!4714 = !DILocation(line: 3521, column: 5, scope: !4695)
!4715 = !DILocation(line: 3522, column: 3, scope: !4695)
!4716 = distinct !DISubprogram(name: "d_print_mod_list", scope: !3, file: !3, line: 4391, type: !4717, scopeLine: 4393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4719)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{null, !1668, !1647, !102}
!4719 = !{!4720, !4721, !4722, !4723, !4724, !4729}
!4720 = !DILocalVariable(name: "dpi", arg: 1, scope: !4716, file: !3, line: 4391, type: !1668)
!4721 = !DILocalVariable(name: "mods", arg: 2, scope: !4716, file: !3, line: 4392, type: !1647)
!4722 = !DILocalVariable(name: "suffix", arg: 3, scope: !4716, file: !3, line: 4392, type: !102)
!4723 = !DILocalVariable(name: "hold_dpt", scope: !4716, file: !3, line: 4394, type: !1641)
!4724 = !DILocalVariable(name: "hold_modifiers", scope: !4725, file: !3, line: 4428, type: !1647)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 4427, column: 5)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 4426, column: 12)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 4420, column: 12)
!4728 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 4414, column: 7)
!4729 = !DILocalVariable(name: "dc", scope: !4725, file: !3, line: 4429, type: !128)
!4730 = !DILocation(line: 0, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 4399, column: 7)
!4732 = !DILocation(line: 0, scope: !4716)
!4733 = !DILocation(line: 4471, column: 3, scope: !4716)
!4734 = !DILocation(line: 4396, column: 12, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 4396, column: 7)
!4736 = !DILocation(line: 4396, column: 20, scope: !4735)
!4737 = !DILocation(line: 4396, column: 23, scope: !4735)
!4738 = !DILocation(line: 4396, column: 7, scope: !4716)
!4739 = !DILocation(line: 4399, column: 13, scope: !4731)
!4740 = !DILocation(line: 4399, column: 7, scope: !4731)
!4741 = !DILocation(line: 4400, column: 7, scope: !4731)
!4742 = !DILocation(line: 4401, column: 14, scope: !4731)
!4743 = !DILocation(line: 4401, column: 19, scope: !4731)
!4744 = !DILocation(line: 4401, column: 24, scope: !4731)
!4745 = !DILocation(line: 4402, column: 8, scope: !4731)
!4746 = !DILocation(line: 4402, column: 27, scope: !4731)
!4747 = !DILocation(line: 4403, column: 8, scope: !4731)
!4748 = !DILocation(line: 4403, column: 27, scope: !4731)
!4749 = !DILocation(line: 4399, column: 7, scope: !4716)
!4750 = !DILocation(line: 4409, column: 17, scope: !4716)
!4751 = !DILocation(line: 4411, column: 19, scope: !4716)
!4752 = !DILocation(line: 4412, column: 26, scope: !4716)
!4753 = !DILocation(line: 4412, column: 18, scope: !4716)
!4754 = !DILocation(line: 4414, column: 13, scope: !4728)
!4755 = !DILocation(line: 4414, column: 18, scope: !4728)
!4756 = !DILocation(line: 4414, column: 23, scope: !4728)
!4757 = !DILocation(line: 4414, column: 7, scope: !4716)
!4758 = !DILocation(line: 4420, column: 28, scope: !4727)
!4759 = !DILocation(line: 4420, column: 12, scope: !4728)
!4760 = !DILocation(line: 4426, column: 28, scope: !4726)
!4761 = !DILocation(line: 4426, column: 12, scope: !4727)
!4762 = !DILocation(line: 4467, column: 3, scope: !4716)
!4763 = !DILocation(line: 4469, column: 18, scope: !4716)
!4764 = !DILocation(line: 4405, column: 7, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 4404, column: 5)
!4766 = !DILocation(line: 4472, column: 1, scope: !4716)
!4767 = !DILocation(line: 4416, column: 52, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 4415, column: 5)
!4769 = !DILocation(line: 4422, column: 49, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 4421, column: 5)
!4771 = !DILocation(line: 4436, column: 29, scope: !4725)
!4772 = !DILocation(line: 4416, column: 7, scope: !4768)
!4773 = !DILocation(line: 4417, column: 22, scope: !4768)
!4774 = !DILocation(line: 4418, column: 7, scope: !4768)
!4775 = !DILocation(line: 0, scope: !4727)
!4776 = !DILocation(line: 4422, column: 7, scope: !4770)
!4777 = !DILocation(line: 4423, column: 22, scope: !4770)
!4778 = !DILocation(line: 4424, column: 7, scope: !4770)
!4779 = !DILocation(line: 4437, column: 22, scope: !4725)
!4780 = !DILocation(line: 4438, column: 26, scope: !4725)
!4781 = !DILocation(line: 4438, column: 7, scope: !4725)
!4782 = !DILocation(line: 4439, column: 22, scope: !4725)
!4783 = !DILocation(line: 4441, column: 17, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 4441, column: 11)
!4785 = !DILocation(line: 4441, column: 25, scope: !4784)
!4786 = !DILocation(line: 4441, column: 38, scope: !4784)
!4787 = !DILocation(line: 4441, column: 11, scope: !4725)
!4788 = !DILocation(line: 4442, column: 2, scope: !4784)
!4789 = !DILocation(line: 4444, column: 2, scope: !4784)
!4790 = !DILocation(line: 4446, column: 12, scope: !4725)
!4791 = !DILocation(line: 0, scope: !4725)
!4792 = !DILocation(line: 4448, column: 15, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 4448, column: 11)
!4794 = !DILocation(line: 4448, column: 20, scope: !4793)
!4795 = !DILocation(line: 4448, column: 11, scope: !4725)
!4796 = !DILocation(line: 4450, column: 4, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 4449, column: 2)
!4798 = !DILocation(line: 4451, column: 41, scope: !4797)
!4799 = !DILocation(line: 4451, column: 45, scope: !4797)
!4800 = !DILocation(line: 4451, column: 23, scope: !4797)
!4801 = !DILocation(line: 4451, column: 4, scope: !4797)
!4802 = !DILocation(line: 4452, column: 4, scope: !4797)
!4803 = !DILocation(line: 4453, column: 13, scope: !4797)
!4804 = !DILocation(line: 4453, column: 27, scope: !4797)
!4805 = !DILocation(line: 4454, column: 2, scope: !4797)
!4806 = !DILocation(line: 4456, column: 7, scope: !4725)
!4807 = !DILocation(line: 4456, column: 18, scope: !4725)
!4808 = !DILocation(line: 4456, column: 23, scope: !4725)
!4809 = !DILocation(line: 4457, column: 7, scope: !4725)
!4810 = !DILocation(line: 4458, column: 7, scope: !4725)
!4811 = !DILocation(line: 4459, column: 7, scope: !4725)
!4812 = distinct !{!4812, !4806, !4811}
!4813 = !DILocation(line: 4461, column: 7, scope: !4725)
!4814 = !DILocation(line: 4463, column: 22, scope: !4725)
