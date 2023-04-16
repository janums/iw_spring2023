; ModuleID = 'strerror.bc'
source_filename = "strerror.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.error_info = type { i32, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@error_names = internal unnamed_addr global i8** null, align 8, !dbg !0
@sys_nerr__ = internal unnamed_addr global i32 0, align 4, !dbg !36
@num_error_names = internal unnamed_addr global i32 0, align 4, !dbg !53
@strerror.buf = internal global [32 x i8] zeroinitializer, align 16, !dbg !17
@sys_errlist__ = internal unnamed_addr global i8** null, align 8, !dbg !38
@.str = private unnamed_addr constant [9 x i8] c"Error %d\00", align 1
@strerrno.buf = internal global [32 x i8] zeroinitializer, align 16, !dbg !28
@error_table = internal unnamed_addr constant [122 x %struct.error_info] [%struct.error_info { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0) }, %struct.error_info { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0) }, %struct.error_info { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0) }, %struct.error_info { i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct.error_info { i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0) }, %struct.error_info { i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0) }, %struct.error_info { i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0) }, %struct.error_info { i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0) }, %struct.error_info { i32 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.error_info { i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0) }, %struct.error_info { i32 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0) }, %struct.error_info { i32 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0) }, %struct.error_info { i32 12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0) }, %struct.error_info { i32 13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0) }, %struct.error_info { i32 14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct.error_info { i32 15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0) }, %struct.error_info { i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0) }, %struct.error_info { i32 17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0) }, %struct.error_info { i32 18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0) }, %struct.error_info { i32 19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0) }, %struct.error_info { i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.error_info { i32 21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.error_info { i32 22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0) }, %struct.error_info { i32 23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0) }, %struct.error_info { i32 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0) }, %struct.error_info { i32 25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0) }, %struct.error_info { i32 26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0) }, %struct.error_info { i32 27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.error_info { i32 28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0) }, %struct.error_info { i32 29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0) }, %struct.error_info { i32 30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0) }, %struct.error_info { i32 31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.error_info { i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0) }, %struct.error_info { i32 33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.68, i32 0, i32 0) }, %struct.error_info { i32 34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i32 0, i32 0) }, %struct.error_info { i32 42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0) }, %struct.error_info { i32 43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i32 0, i32 0) }, %struct.error_info { i32 44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i32 0, i32 0) }, %struct.error_info { i32 45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.78, i32 0, i32 0) }, %struct.error_info { i32 46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0) }, %struct.error_info { i32 47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0) }, %struct.error_info { i32 48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i32 0, i32 0) }, %struct.error_info { i32 49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.86, i32 0, i32 0) }, %struct.error_info { i32 50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0) }, %struct.error_info { i32 51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0) }, %struct.error_info { i32 35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i32 0, i32 0) }, %struct.error_info { i32 37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.94, i32 0, i32 0) }, %struct.error_info { i32 52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0) }, %struct.error_info { i32 53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i32 0, i32 0) }, %struct.error_info { i32 54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0) }, %struct.error_info { i32 55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0) }, %struct.error_info { i32 56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.104, i32 0, i32 0) }, %struct.error_info { i32 57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0) }, %struct.error_info { i32 35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.108, i32 0, i32 0) }, %struct.error_info { i32 59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.110, i32 0, i32 0) }, %struct.error_info { i32 60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.112, i32 0, i32 0) }, %struct.error_info { i32 61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0) }, %struct.error_info { i32 62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.116, i32 0, i32 0) }, %struct.error_info { i32 63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.118, i32 0, i32 0) }, %struct.error_info { i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.120, i32 0, i32 0) }, %struct.error_info { i32 65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.122, i32 0, i32 0) }, %struct.error_info { i32 66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.124, i32 0, i32 0) }, %struct.error_info { i32 67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.126, i32 0, i32 0) }, %struct.error_info { i32 68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.128, i32 0, i32 0) }, %struct.error_info { i32 69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i32 0) }, %struct.error_info { i32 70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.132, i32 0, i32 0) }, %struct.error_info { i32 71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0) }, %struct.error_info { i32 72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.136, i32 0, i32 0) }, %struct.error_info { i32 73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.138, i32 0, i32 0) }, %struct.error_info { i32 74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.140, i32 0, i32 0) }, %struct.error_info { i32 36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.142, i32 0, i32 0) }, %struct.error_info { i32 75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.144, i32 0, i32 0) }, %struct.error_info { i32 76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.146, i32 0, i32 0) }, %struct.error_info { i32 77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.148, i32 0, i32 0) }, %struct.error_info { i32 78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.150, i32 0, i32 0) }, %struct.error_info { i32 79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.152, i32 0, i32 0) }, %struct.error_info { i32 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.154, i32 0, i32 0) }, %struct.error_info { i32 81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.156, i32 0, i32 0) }, %struct.error_info { i32 82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.158, i32 0, i32 0) }, %struct.error_info { i32 83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.160, i32 0, i32 0) }, %struct.error_info { i32 84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.162, i32 0, i32 0) }, %struct.error_info { i32 38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.164, i32 0, i32 0) }, %struct.error_info { i32 40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.166, i32 0, i32 0) }, %struct.error_info { i32 85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.168, i32 0, i32 0) }, %struct.error_info { i32 86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.170, i32 0, i32 0) }, %struct.error_info { i32 39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.172, i32 0, i32 0) }, %struct.error_info { i32 87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.174, i32 0, i32 0) }, %struct.error_info { i32 88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.176, i32 0, i32 0) }, %struct.error_info { i32 89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.178, i32 0, i32 0) }, %struct.error_info { i32 90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.180, i32 0, i32 0) }, %struct.error_info { i32 91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.182, i32 0, i32 0) }, %struct.error_info { i32 92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.184, i32 0, i32 0) }, %struct.error_info { i32 93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.186, i32 0, i32 0) }, %struct.error_info { i32 94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.188, i32 0, i32 0) }, %struct.error_info { i32 95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.190, i32 0, i32 0) }, %struct.error_info { i32 96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.192, i32 0, i32 0) }, %struct.error_info { i32 97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.194, i32 0, i32 0) }, %struct.error_info { i32 98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.196, i32 0, i32 0) }, %struct.error_info { i32 99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.198, i32 0, i32 0) }, %struct.error_info { i32 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.200, i32 0, i32 0) }, %struct.error_info { i32 101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.202, i32 0, i32 0) }, %struct.error_info { i32 102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.204, i32 0, i32 0) }, %struct.error_info { i32 103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.206, i32 0, i32 0) }, %struct.error_info { i32 104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.208, i32 0, i32 0) }, %struct.error_info { i32 105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.210, i32 0, i32 0) }, %struct.error_info { i32 106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.212, i32 0, i32 0) }, %struct.error_info { i32 107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.214, i32 0, i32 0) }, %struct.error_info { i32 108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.216, i32 0, i32 0) }, %struct.error_info { i32 109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.218, i32 0, i32 0) }, %struct.error_info { i32 110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.220, i32 0, i32 0) }, %struct.error_info { i32 111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.222, i32 0, i32 0) }, %struct.error_info { i32 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.224, i32 0, i32 0) }, %struct.error_info { i32 113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.226, i32 0, i32 0) }, %struct.error_info { i32 114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.228, i32 0, i32 0) }, %struct.error_info { i32 115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.230, i32 0, i32 0) }, %struct.error_info { i32 116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.232, i32 0, i32 0) }, %struct.error_info { i32 117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.234, i32 0, i32 0) }, %struct.error_info { i32 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.236, i32 0, i32 0) }, %struct.error_info { i32 119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.238, i32 0, i32 0) }, %struct.error_info { i32 120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.240, i32 0, i32 0) }, %struct.error_info { i32 121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.242, i32 0, i32 0) }, %struct.error_info zeroinitializer], align 16, !dbg !40
@.str.1 = private unnamed_addr constant [6 x i8] c"EPERM\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Not owner\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ENOENT\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"No such file or directory\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ESRCH\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"No such process\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"EINTR\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Interrupted system call\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"EIO\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ENXIO\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"No such device or address\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"E2BIG\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Arg list too long\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"ENOEXEC\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Exec format error\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"EBADF\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Bad file number\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"ECHILD\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"No child processes\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"EWOULDBLOCK\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Operation would block\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"EAGAIN\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"No more processes\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"ENOMEM\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Not enough space\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"EACCES\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Permission denied\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"EFAULT\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Bad address\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"ENOTBLK\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Block device required\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"EBUSY\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Device busy\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"EEXIST\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"File exists\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"EXDEV\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Cross-device link\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"ENODEV\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"No such device\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"ENOTDIR\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Not a directory\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"EISDIR\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"Is a directory\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"EINVAL\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"ENFILE\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"File table overflow\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"EMFILE\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"Too many open files\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"ENOTTY\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"Not a typewriter\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"ETXTBSY\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"Text file busy\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"EFBIG\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"File too large\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"ENOSPC\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"No space left on device\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"ESPIPE\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"Illegal seek\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"EROFS\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"Read-only file system\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"EMLINK\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"Too many links\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"EPIPE\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Broken pipe\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"EDOM\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"Math argument out of domain of func\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"ERANGE\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"Math result not representable\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"ENOMSG\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"No message of desired type\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"EIDRM\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Identifier removed\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"ECHRNG\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"Channel number out of range\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"EL2NSYNC\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"Level 2 not synchronized\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"EL3HLT\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"Level 3 halted\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"EL3RST\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"Level 3 reset\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"ELNRNG\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"Link number out of range\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"EUNATCH\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"Protocol driver not attached\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"ENOCSI\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"No CSI structure available\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"EL2HLT\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"Level 2 halted\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"EDEADLK\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"Deadlock condition\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"ENOLCK\00", align 1
@.str.94 = private unnamed_addr constant [26 x i8] c"No record locks available\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"EBADE\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"Invalid exchange\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"EBADR\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"Invalid request descriptor\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"EXFULL\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"Exchange full\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"ENOANO\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"No anode\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"EBADRQC\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"Invalid request code\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"EBADSLT\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"Invalid slot\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"EDEADLOCK\00", align 1
@.str.108 = private unnamed_addr constant [28 x i8] c"File locking deadlock error\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"EBFONT\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"Bad font file format\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"ENOSTR\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"Device not a stream\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"ENODATA\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"No data available\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"ETIME\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"Timer expired\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"ENOSR\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"Out of streams resources\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"ENONET\00", align 1
@.str.120 = private unnamed_addr constant [30 x i8] c"Machine is not on the network\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"ENOPKG\00", align 1
@.str.122 = private unnamed_addr constant [22 x i8] c"Package not installed\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"EREMOTE\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"Object is remote\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"ENOLINK\00", align 1
@.str.126 = private unnamed_addr constant [22 x i8] c"Link has been severed\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"EADV\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"Advertise error\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"ESRMNT\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"Srmount error\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"ECOMM\00", align 1
@.str.132 = private unnamed_addr constant [28 x i8] c"Communication error on send\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"EPROTO\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"Protocol error\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"EMULTIHOP\00", align 1
@.str.136 = private unnamed_addr constant [19 x i8] c"Multihop attempted\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"EDOTDOT\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"RFS specific error\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"EBADMSG\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"Not a data message\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"ENAMETOOLONG\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"File name too long\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"EOVERFLOW\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"Value too large for defined data type\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"ENOTUNIQ\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"Name not unique on network\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"EBADFD\00", align 1
@.str.148 = private unnamed_addr constant [29 x i8] c"File descriptor in bad state\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"EREMCHG\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"Remote address changed\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"ELIBACC\00", align 1
@.str.152 = private unnamed_addr constant [39 x i8] c"Can not access a needed shared library\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"ELIBBAD\00", align 1
@.str.154 = private unnamed_addr constant [37 x i8] c"Accessing a corrupted shared library\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"ELIBSCN\00", align 1
@.str.156 = private unnamed_addr constant [32 x i8] c".lib section in a.out corrupted\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"ELIBMAX\00", align 1
@.str.158 = private unnamed_addr constant [48 x i8] c"Attempting to link in too many shared libraries\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"ELIBEXEC\00", align 1
@.str.160 = private unnamed_addr constant [38 x i8] c"Cannot exec a shared library directly\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"EILSEQ\00", align 1
@.str.162 = private unnamed_addr constant [22 x i8] c"Illegal byte sequence\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"ENOSYS\00", align 1
@.str.164 = private unnamed_addr constant [25 x i8] c"Operation not applicable\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"ELOOP\00", align 1
@.str.166 = private unnamed_addr constant [36 x i8] c"Too many symbolic links encountered\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"ERESTART\00", align 1
@.str.168 = private unnamed_addr constant [44 x i8] c"Interrupted system call should be restarted\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"ESTRPIPE\00", align 1
@.str.170 = private unnamed_addr constant [19 x i8] c"Streams pipe error\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"ENOTEMPTY\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"Directory not empty\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"EUSERS\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"Too many users\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"ENOTSOCK\00", align 1
@.str.176 = private unnamed_addr constant [31 x i8] c"Socket operation on non-socket\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"EDESTADDRREQ\00", align 1
@.str.178 = private unnamed_addr constant [29 x i8] c"Destination address required\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"EMSGSIZE\00", align 1
@.str.180 = private unnamed_addr constant [17 x i8] c"Message too long\00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c"EPROTOTYPE\00", align 1
@.str.182 = private unnamed_addr constant [31 x i8] c"Protocol wrong type for socket\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"ENOPROTOOPT\00", align 1
@.str.184 = private unnamed_addr constant [23 x i8] c"Protocol not available\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"EPROTONOSUPPORT\00", align 1
@.str.186 = private unnamed_addr constant [23 x i8] c"Protocol not supported\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"ESOCKTNOSUPPORT\00", align 1
@.str.188 = private unnamed_addr constant [26 x i8] c"Socket type not supported\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"EOPNOTSUPP\00", align 1
@.str.190 = private unnamed_addr constant [46 x i8] c"Operation not supported on transport endpoint\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"EPFNOSUPPORT\00", align 1
@.str.192 = private unnamed_addr constant [30 x i8] c"Protocol family not supported\00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"EAFNOSUPPORT\00", align 1
@.str.194 = private unnamed_addr constant [41 x i8] c"Address family not supported by protocol\00", align 1
@.str.195 = private unnamed_addr constant [11 x i8] c"EADDRINUSE\00", align 1
@.str.196 = private unnamed_addr constant [23 x i8] c"Address already in use\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"EADDRNOTAVAIL\00", align 1
@.str.198 = private unnamed_addr constant [32 x i8] c"Cannot assign requested address\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"ENETDOWN\00", align 1
@.str.200 = private unnamed_addr constant [16 x i8] c"Network is down\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"ENETUNREACH\00", align 1
@.str.202 = private unnamed_addr constant [23 x i8] c"Network is unreachable\00", align 1
@.str.203 = private unnamed_addr constant [10 x i8] c"ENETRESET\00", align 1
@.str.204 = private unnamed_addr constant [44 x i8] c"Network dropped connection because of reset\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"ECONNABORTED\00", align 1
@.str.206 = private unnamed_addr constant [33 x i8] c"Software caused connection abort\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"ECONNRESET\00", align 1
@.str.208 = private unnamed_addr constant [25 x i8] c"Connection reset by peer\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"ENOBUFS\00", align 1
@.str.210 = private unnamed_addr constant [26 x i8] c"No buffer space available\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"EISCONN\00", align 1
@.str.212 = private unnamed_addr constant [40 x i8] c"Transport endpoint is already connected\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"ENOTCONN\00", align 1
@.str.214 = private unnamed_addr constant [36 x i8] c"Transport endpoint is not connected\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"ESHUTDOWN\00", align 1
@.str.216 = private unnamed_addr constant [46 x i8] c"Cannot send after transport endpoint shutdown\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"ETOOMANYREFS\00", align 1
@.str.218 = private unnamed_addr constant [35 x i8] c"Too many references: cannot splice\00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c"ETIMEDOUT\00", align 1
@.str.220 = private unnamed_addr constant [21 x i8] c"Connection timed out\00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c"ECONNREFUSED\00", align 1
@.str.222 = private unnamed_addr constant [19 x i8] c"Connection refused\00", align 1
@.str.223 = private unnamed_addr constant [10 x i8] c"EHOSTDOWN\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"Host is down\00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"EHOSTUNREACH\00", align 1
@.str.226 = private unnamed_addr constant [17 x i8] c"No route to host\00", align 1
@.str.227 = private unnamed_addr constant [9 x i8] c"EALREADY\00", align 1
@.str.228 = private unnamed_addr constant [30 x i8] c"Operation already in progress\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"EINPROGRESS\00", align 1
@.str.230 = private unnamed_addr constant [26 x i8] c"Operation now in progress\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"ESTALE\00", align 1
@.str.232 = private unnamed_addr constant [22 x i8] c"Stale NFS file handle\00", align 1
@.str.233 = private unnamed_addr constant [8 x i8] c"EUCLEAN\00", align 1
@.str.234 = private unnamed_addr constant [25 x i8] c"Structure needs cleaning\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"ENOTNAM\00", align 1
@.str.236 = private unnamed_addr constant [28 x i8] c"Not a XENIX named type file\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"ENAVAIL\00", align 1
@.str.238 = private unnamed_addr constant [30 x i8] c"No XENIX semaphores available\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"EISNAM\00", align 1
@.str.240 = private unnamed_addr constant [21 x i8] c"Is a named type file\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"EREMOTEIO\00", align 1
@.str.242 = private unnamed_addr constant [17 x i8] c"Remote I/O error\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !59 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !73, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !74, metadata !DIExpression()), !dbg !75
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !76
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !77
  ret i32 %call, !dbg !78
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !79 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !82
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !83
  ret i32 %call, !dbg !84
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !85 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !148, metadata !DIExpression()), !dbg !149
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !150
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !150
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !150
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !150
  %cmp = icmp uge i8* %0, %1, !dbg !150
  %conv1 = zext i1 %cmp to i64, !dbg !150
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !150
  %tobool = icmp eq i64 %expval, 0, !dbg !150
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !150

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !150
  br label %cond.end, !dbg !150

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !150
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !150
  %2 = load i8, i8* %0, align 1, !dbg !150
  %conv3 = zext i8 %2 to i32, !dbg !150
  br label %cond.end, !dbg !150

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !150
  ret i32 %cond, !dbg !151
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !152 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !154, metadata !DIExpression()), !dbg !155
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !156
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !156
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !156
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !156
  %cmp = icmp uge i8* %0, %1, !dbg !156
  %conv1 = zext i1 %cmp to i64, !dbg !156
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !156
  %tobool = icmp eq i64 %expval, 0, !dbg !156
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !156

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !156
  br label %cond.end, !dbg !156

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !156
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !156
  %2 = load i8, i8* %0, align 1, !dbg !156
  %conv3 = zext i8 %2 to i32, !dbg !156
  br label %cond.end, !dbg !156

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !156
  ret i32 %cond, !dbg !157
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !158 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !159
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !159
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !159
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !159
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !159
  %cmp = icmp uge i8* %1, %2, !dbg !159
  %conv1 = zext i1 %cmp to i64, !dbg !159
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !159
  %tobool = icmp eq i64 %expval, 0, !dbg !159
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !159

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !159
  br label %cond.end, !dbg !159

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !159
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !159
  %3 = load i8, i8* %1, align 1, !dbg !159
  %conv3 = zext i8 %3 to i32, !dbg !159
  br label %cond.end, !dbg !159

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !159
  ret i32 %cond, !dbg !160
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !167
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !168
  ret i32 %call, !dbg !169
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !170 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !174, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !175, metadata !DIExpression()), !dbg !176
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !177
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !177
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !177
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !177
  %cmp = icmp uge i8* %0, %1, !dbg !177
  %conv1 = zext i1 %cmp to i64, !dbg !177
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !177
  %tobool = icmp eq i64 %expval, 0, !dbg !177
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !177

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !177
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !177
  br label %cond.end, !dbg !177

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !177
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !177
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !177
  store i8 %conv2, i8* %0, align 1, !dbg !177
  %conv6 = and i32 %__c, 255, !dbg !177
  br label %cond.end, !dbg !177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !177
  ret i32 %cond, !dbg !178
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !179 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !181, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !182, metadata !DIExpression()), !dbg !183
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !184
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !184
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !184
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !184
  %cmp = icmp uge i8* %0, %1, !dbg !184
  %conv1 = zext i1 %cmp to i64, !dbg !184
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !184
  %tobool = icmp eq i64 %expval, 0, !dbg !184
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !184

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !184
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !184
  br label %cond.end, !dbg !184

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !184
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !184
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !184
  store i8 %conv2, i8* %0, align 1, !dbg !184
  %conv6 = and i32 %__c, 255, !dbg !184
  br label %cond.end, !dbg !184

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !184
  ret i32 %cond, !dbg !185
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !186 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !188, metadata !DIExpression()), !dbg !189
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !190
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !190
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !190
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !190
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !190
  %cmp = icmp uge i8* %1, %2, !dbg !190
  %conv1 = zext i1 %cmp to i64, !dbg !190
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !190
  %tobool = icmp eq i64 %expval, 0, !dbg !190
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !190

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !190
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !190
  br label %cond.end, !dbg !190

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !190
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !190
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !190
  store i8 %conv4, i8* %1, align 1, !dbg !190
  %conv6 = and i32 %__c, 255, !dbg !190
  br label %cond.end, !dbg !190

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !190
  ret i32 %cond, !dbg !191
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !192 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !198, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i64* %__n, metadata !199, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !200, metadata !DIExpression()), !dbg !201
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !202
  ret i64 %call, !dbg !203
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !206, metadata !DIExpression()), !dbg !207
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !208
  %0 = load i32, i32* %_flags, align 8, !dbg !208
  %and = lshr i32 %0, 4, !dbg !208
  %and.lobit = and i32 %and, 1, !dbg !208
  ret i32 %and.lobit, !dbg !209
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !210 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !212, metadata !DIExpression()), !dbg !213
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !214
  %0 = load i32, i32* %_flags, align 8, !dbg !214
  %and = lshr i32 %0, 5, !dbg !214
  %and.lobit = and i32 %and, 1, !dbg !214
  ret i32 %and.lobit, !dbg !215
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !221, metadata !DIExpression()), !dbg !222
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !223
  %conv = trunc i64 %call to i32, !dbg !224
  ret i32 %conv, !dbg !225
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !226 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !230, metadata !DIExpression()), !dbg !231
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !232
  ret i64 %call, !dbg !233
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !234 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !239, metadata !DIExpression()), !dbg !240
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !241
  ret i64 %call, !dbg !242
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !254, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i8* %__base, metadata !255, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !256, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %__size, metadata !257, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !258, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 0, metadata !259, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !260, metadata !DIExpression()), !dbg !264
  br label %while.cond, !dbg !265

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !266
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !264
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !260, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !259, metadata !DIExpression()), !dbg !264
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !267
  br i1 %cmp, label %while.body, label %cleanup, !dbg !265

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !268
  %div = lshr i64 %add, 1, !dbg !270
  call void @llvm.dbg.value(metadata i64 %div, metadata !261, metadata !DIExpression()), !dbg !264
  %mul = mul i64 %div, %__size, !dbg !271
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !272
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !262, metadata !DIExpression()), !dbg !264
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !273
  call void @llvm.dbg.value(metadata i32 %call, metadata !263, metadata !DIExpression()), !dbg !264
  %cmp1 = icmp slt i32 %call, 0, !dbg !274
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !276

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !277
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !279

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !280
  call void @llvm.dbg.value(metadata i64 %add4, metadata !259, metadata !DIExpression()), !dbg !264
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !264
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !264
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !260, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !259, metadata !DIExpression()), !dbg !264
  br label %while.cond, !dbg !265, !llvm.loop !281

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !264
  ret i8* %retval.0, !dbg !283
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !284 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !290, metadata !DIExpression()), !dbg !291
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !292
  ret double %call, !dbg !293
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @errno_max() local_unnamed_addr #3 !dbg !294 {
entry:
  %0 = load i8**, i8*** @error_names, align 8, !dbg !297
  %cmp = icmp eq i8** %0, null, !dbg !299
  br i1 %cmp, label %if.then, label %if.end, !dbg !300

if.then:                                          ; preds = %entry
  tail call fastcc void @init_error_tables() #6, !dbg !301
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @sys_nerr__, align 4, !dbg !304
  %2 = load i32, i32* @num_error_names, align 4, !dbg !304
  %cmp1 = icmp sgt i32 %1, %2, !dbg !304
  %cond = select i1 %cmp1, i32 %1, i32 %2, !dbg !304
  call void @llvm.dbg.value(metadata i32 %cond, metadata !296, metadata !DIExpression()), !dbg !305
  %sub = add nsw i32 %cond, -1, !dbg !306
  ret i32 %sub, !dbg !307
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_error_tables() unnamed_addr #3 !dbg !308 {
entry:
  %0 = load i32, i32* @num_error_names, align 4, !dbg !315
  %cmp = icmp eq i32 %0, 0, !dbg !317
  br i1 %cmp, label %for.cond.preheader, label %if.end5, !dbg !318

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !319

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi i32 [ %4, %for.inc ], [ 0, %for.cond.preheader ]
  %eip.0 = phi %struct.error_info* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([122 x %struct.error_info], [122 x %struct.error_info]* @error_table, i64 0, i64 0), %for.cond.preheader ], !dbg !322
  call void @llvm.dbg.value(metadata %struct.error_info* %eip.0, metadata !312, metadata !DIExpression()), !dbg !323
  %name = getelementptr inbounds %struct.error_info, %struct.error_info* %eip.0, i64 0, i32 1, !dbg !324
  %2 = load i8*, i8** %name, align 8, !dbg !324
  %cmp1 = icmp eq i8* %2, null, !dbg !326
  br i1 %cmp1, label %if.end5.loopexit, label %for.body, !dbg !319

for.body:                                         ; preds = %for.cond
  %value = getelementptr inbounds %struct.error_info, %struct.error_info* %eip.0, i64 0, i32 0, !dbg !327
  %3 = load i32, i32* %value, align 8, !dbg !327
  %cmp2 = icmp slt i32 %3, %1, !dbg !330
  br i1 %cmp2, label %for.inc, label %if.then3, !dbg !331

if.then3:                                         ; preds = %for.body
  %add = add nsw i32 %3, 1, !dbg !332
  store i32 %add, i32* @num_error_names, align 4, !dbg !334
  br label %for.inc, !dbg !335

for.inc:                                          ; preds = %for.body, %if.then3
  %4 = phi i32 [ %1, %for.body ], [ %add, %if.then3 ]
  %incdec.ptr = getelementptr inbounds %struct.error_info, %struct.error_info* %eip.0, i64 1, !dbg !336
  call void @llvm.dbg.value(metadata %struct.error_info* %incdec.ptr, metadata !312, metadata !DIExpression()), !dbg !323
  br label %for.cond, !dbg !337, !llvm.loop !338

if.end5.loopexit:                                 ; preds = %for.cond
  %.lcssa = phi i32 [ %1, %for.cond ]
  br label %if.end5, !dbg !340

if.end5:                                          ; preds = %if.end5.loopexit, %entry
  %5 = phi i32 [ %.lcssa, %if.end5.loopexit ], [ %0, %entry ]
  %6 = load i8**, i8*** @error_names, align 8, !dbg !340
  %cmp6 = icmp eq i8** %6, null, !dbg !342
  br i1 %cmp6, label %if.then7, label %if.end26, !dbg !343

if.then7:                                         ; preds = %if.end5
  %mul = shl i32 %5, 3, !dbg !344
  call void @llvm.dbg.value(metadata i32 %mul, metadata !314, metadata !DIExpression()), !dbg !323
  %conv9 = sext i32 %mul to i64, !dbg !346
  %call = tail call i8* @malloc(i64 %conv9) #5, !dbg !348
  store i8* %call, i8** bitcast (i8*** @error_names to i8**), align 8, !dbg !349
  %cmp10 = icmp eq i8* %call, null, !dbg !350
  br i1 %cmp10, label %if.end26, label %if.then12, !dbg !351

if.then12:                                        ; preds = %if.then7
  %call14 = tail call i8* @memset(i8* nonnull %call, i32 0, i64 %conv9) #5, !dbg !352
  call void @llvm.dbg.value(metadata %struct.error_info* getelementptr inbounds ([122 x %struct.error_info], [122 x %struct.error_info]* @error_table, i64 0, i64 0), metadata !312, metadata !DIExpression()), !dbg !323
  br label %for.cond15, !dbg !354

for.cond15:                                       ; preds = %for.body19, %if.then12
  %eip.1 = phi %struct.error_info* [ getelementptr inbounds ([122 x %struct.error_info], [122 x %struct.error_info]* @error_table, i64 0, i64 0), %if.then12 ], [ %incdec.ptr23, %for.body19 ], !dbg !356
  call void @llvm.dbg.value(metadata %struct.error_info* %eip.1, metadata !312, metadata !DIExpression()), !dbg !323
  %name16 = getelementptr inbounds %struct.error_info, %struct.error_info* %eip.1, i64 0, i32 1, !dbg !357
  %7 = load i8*, i8** %name16, align 8, !dbg !357
  %cmp17 = icmp eq i8* %7, null, !dbg !359
  br i1 %cmp17, label %if.end26.loopexit, label %for.body19, !dbg !360

for.body19:                                       ; preds = %for.cond15
  %8 = ptrtoint i8* %7 to i64, !dbg !360
  %9 = load i8**, i8*** @error_names, align 8, !dbg !361
  %value21 = getelementptr inbounds %struct.error_info, %struct.error_info* %eip.1, i64 0, i32 0, !dbg !363
  %10 = load i32, i32* %value21, align 8, !dbg !363
  %idxprom = sext i32 %10 to i64, !dbg !361
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom, !dbg !361
  %11 = bitcast i8** %arrayidx to i64*, !dbg !364
  store i64 %8, i64* %11, align 8, !dbg !364
  %incdec.ptr23 = getelementptr inbounds %struct.error_info, %struct.error_info* %eip.1, i64 1, !dbg !365
  call void @llvm.dbg.value(metadata %struct.error_info* %incdec.ptr23, metadata !312, metadata !DIExpression()), !dbg !323
  br label %for.cond15, !dbg !366, !llvm.loop !367

if.end26.loopexit:                                ; preds = %for.cond15
  br label %if.end26, !dbg !369

if.end26:                                         ; preds = %if.end26.loopexit, %if.then7, %if.end5
  %12 = load i8**, i8*** @sys_errlist__, align 8, !dbg !369
  %cmp27 = icmp eq i8** %12, null, !dbg !371
  br i1 %cmp27, label %if.then29, label %if.end52, !dbg !372

if.then29:                                        ; preds = %if.end26
  %13 = load i32, i32* @num_error_names, align 4, !dbg !373
  %mul31 = shl i32 %13, 3, !dbg !375
  call void @llvm.dbg.value(metadata i32 %mul31, metadata !314, metadata !DIExpression()), !dbg !323
  %conv33 = sext i32 %mul31 to i64, !dbg !376
  %call34 = tail call i8* @malloc(i64 %conv33) #5, !dbg !378
  store i8* %call34, i8** bitcast (i8*** @sys_errlist__ to i8**), align 8, !dbg !379
  %cmp35 = icmp eq i8* %call34, null, !dbg !380
  br i1 %cmp35, label %if.end52, label %if.then37, !dbg !381

if.then37:                                        ; preds = %if.then29
  %call39 = tail call i8* @memset(i8* nonnull %call34, i32 0, i64 %conv33) #5, !dbg !382
  %14 = load i32, i32* @num_error_names, align 4, !dbg !384
  store i32 %14, i32* @sys_nerr__, align 4, !dbg !385
  call void @llvm.dbg.value(metadata %struct.error_info* getelementptr inbounds ([122 x %struct.error_info], [122 x %struct.error_info]* @error_table, i64 0, i64 0), metadata !312, metadata !DIExpression()), !dbg !323
  br label %for.cond40, !dbg !386

for.cond40:                                       ; preds = %for.body44, %if.then37
  %eip.2 = phi %struct.error_info* [ getelementptr inbounds ([122 x %struct.error_info], [122 x %struct.error_info]* @error_table, i64 0, i64 0), %if.then37 ], [ %incdec.ptr49, %for.body44 ], !dbg !388
  call void @llvm.dbg.value(metadata %struct.error_info* %eip.2, metadata !312, metadata !DIExpression()), !dbg !323
  %name41 = getelementptr inbounds %struct.error_info, %struct.error_info* %eip.2, i64 0, i32 1, !dbg !389
  %15 = load i8*, i8** %name41, align 8, !dbg !389
  %cmp42 = icmp eq i8* %15, null, !dbg !391
  br i1 %cmp42, label %if.end52.loopexit, label %for.body44, !dbg !392

for.body44:                                       ; preds = %for.cond40
  %msg = getelementptr inbounds %struct.error_info, %struct.error_info* %eip.2, i64 0, i32 2, !dbg !393
  %16 = bitcast i8** %msg to i64*, !dbg !393
  %17 = load i64, i64* %16, align 8, !dbg !393
  %18 = load i8**, i8*** @sys_errlist__, align 8, !dbg !395
  %value45 = getelementptr inbounds %struct.error_info, %struct.error_info* %eip.2, i64 0, i32 0, !dbg !396
  %19 = load i32, i32* %value45, align 8, !dbg !396
  %idxprom46 = sext i32 %19 to i64, !dbg !395
  %arrayidx47 = getelementptr inbounds i8*, i8** %18, i64 %idxprom46, !dbg !395
  %20 = bitcast i8** %arrayidx47 to i64*, !dbg !397
  store i64 %17, i64* %20, align 8, !dbg !397
  %incdec.ptr49 = getelementptr inbounds %struct.error_info, %struct.error_info* %eip.2, i64 1, !dbg !398
  call void @llvm.dbg.value(metadata %struct.error_info* %incdec.ptr49, metadata !312, metadata !DIExpression()), !dbg !323
  br label %for.cond40, !dbg !399, !llvm.loop !400

if.end52.loopexit:                                ; preds = %for.cond40
  br label %if.end52, !dbg !402

if.end52:                                         ; preds = %if.end52.loopexit, %if.then29, %if.end26
  ret void, !dbg !402
}

; Function Attrs: nounwind uwtable
define dso_local i8* @strerror(i32 %errnoval) local_unnamed_addr #3 !dbg !19 {
entry:
  call void @llvm.dbg.value(metadata i32 %errnoval, metadata !23, metadata !DIExpression()), !dbg !403
  %0 = load i8**, i8*** @error_names, align 8, !dbg !404
  %cmp = icmp eq i8** %0, null, !dbg !406
  br i1 %cmp, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  tail call fastcc void @init_error_tables() #6, !dbg !408
  br label %if.end, !dbg !410

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp slt i32 %errnoval, 0, !dbg !411
  %1 = load i32, i32* @sys_nerr__, align 4, !dbg !413
  %cmp2 = icmp sle i32 %1, %errnoval, !dbg !414
  %or.cond = or i1 %cmp1, %cmp2, !dbg !415
  br i1 %or.cond, label %if.end12, label %if.else, !dbg !415

if.else:                                          ; preds = %if.end
  %2 = load i8**, i8*** @sys_errlist__, align 8, !dbg !416
  %cmp4 = icmp eq i8** %2, null, !dbg !418
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !419

lor.lhs.false5:                                   ; preds = %if.else
  %idxprom = sext i32 %errnoval to i64, !dbg !420
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom, !dbg !420
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !420
  %cmp6 = icmp eq i8* %3, null, !dbg !421
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !422

if.then7:                                         ; preds = %lor.lhs.false5, %if.else
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @strerror.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %errnoval) #5, !dbg !423
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @strerror.buf, i64 0, i64 0), metadata !24, metadata !DIExpression()), !dbg !403
  br label %if.end12, !dbg !425

if.else8:                                         ; preds = %lor.lhs.false5
  call void @llvm.dbg.value(metadata i8* %3, metadata !24, metadata !DIExpression()), !dbg !403
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.else8, %if.end
  %msg.1 = phi i8* [ null, %if.end ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @strerror.buf, i64 0, i64 0), %if.then7 ], [ %3, %if.else8 ], !dbg !426
  call void @llvm.dbg.value(metadata i8* %msg.1, metadata !24, metadata !DIExpression()), !dbg !403
  ret i8* %msg.1, !dbg !427
}

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @strerrno(i32 %errnoval) local_unnamed_addr #3 !dbg !30 {
entry:
  call void @llvm.dbg.value(metadata i32 %errnoval, metadata !34, metadata !DIExpression()), !dbg !428
  %0 = load i8**, i8*** @error_names, align 8, !dbg !429
  %cmp = icmp eq i8** %0, null, !dbg !431
  br i1 %cmp, label %if.then, label %if.end, !dbg !432

if.then:                                          ; preds = %entry
  tail call fastcc void @init_error_tables() #6, !dbg !433
  br label %if.end, !dbg !435

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp slt i32 %errnoval, 0, !dbg !436
  %1 = load i32, i32* @num_error_names, align 4, !dbg !438
  %cmp2 = icmp sle i32 %1, %errnoval, !dbg !439
  %or.cond = or i1 %cmp1, %cmp2, !dbg !440
  br i1 %or.cond, label %if.end12, label %if.else, !dbg !440

if.else:                                          ; preds = %if.end
  %2 = load i8**, i8*** @error_names, align 8, !dbg !441
  %cmp4 = icmp eq i8** %2, null, !dbg !443
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !444

lor.lhs.false5:                                   ; preds = %if.else
  %idxprom = sext i32 %errnoval to i64, !dbg !445
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom, !dbg !445
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !445
  %cmp6 = icmp eq i8* %3, null, !dbg !446
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !447

if.then7:                                         ; preds = %lor.lhs.false5, %if.else
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @strerrno.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %errnoval) #5, !dbg !448
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @strerrno.buf, i64 0, i64 0), metadata !35, metadata !DIExpression()), !dbg !428
  br label %if.end12, !dbg !450

if.else8:                                         ; preds = %lor.lhs.false5
  call void @llvm.dbg.value(metadata i8* %3, metadata !35, metadata !DIExpression()), !dbg !428
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.else8, %if.end
  %name.1 = phi i8* [ null, %if.end ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @strerrno.buf, i64 0, i64 0), %if.then7 ], [ %3, %if.else8 ], !dbg !451
  call void @llvm.dbg.value(metadata i8* %name.1, metadata !35, metadata !DIExpression()), !dbg !428
  ret i8* %name.1, !dbg !452
}

; Function Attrs: nounwind uwtable
define dso_local i32 @strtoerrno(i8* %name) local_unnamed_addr #3 !dbg !453 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !455, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i32 0, metadata !456, metadata !DIExpression()), !dbg !457
  %cmp = icmp eq i8* %name, null, !dbg !458
  br i1 %cmp, label %if.end13, label %if.then, !dbg !460

if.then:                                          ; preds = %entry
  %0 = load i8**, i8*** @error_names, align 8, !dbg !461
  %cmp1 = icmp eq i8** %0, null, !dbg !464
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !465

if.then2:                                         ; preds = %if.then
  tail call fastcc void @init_error_tables() #6, !dbg !466
  br label %if.end, !dbg !468

if.end:                                           ; preds = %if.then2, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !456, metadata !DIExpression()), !dbg !457
  br label %for.cond, !dbg !469

for.cond:                                         ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ], !dbg !471
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !456, metadata !DIExpression()), !dbg !457
  %1 = load i32, i32* @num_error_names, align 4, !dbg !472
  %2 = sext i32 %1 to i64, !dbg !474
  %cmp3 = icmp slt i64 %indvars.iv, %2, !dbg !474
  br i1 %cmp3, label %for.body, label %for.end.loopexit, !dbg !475

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** @error_names, align 8, !dbg !476
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %indvars.iv, !dbg !476
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !476
  %cmp4 = icmp eq i8* %4, null, !dbg !479
  br i1 %cmp4, label %for.inc, label %land.lhs.true, !dbg !480

land.lhs.true:                                    ; preds = %for.body
  %call = tail call i32 @strcmp(i8* nonnull %name, i8* nonnull %4) #5, !dbg !481
  %cmp7 = icmp eq i32 %call, 0, !dbg !482
  br i1 %cmp7, label %land.lhs.true.for.end_crit_edge, label %for.inc, !dbg !483

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  %indvars.iv.lcssa5 = phi i64 [ %indvars.iv, %land.lhs.true ], !dbg !471
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa5, metadata !456, metadata !DIExpression()), !dbg !457
  %.pre = load i32, i32* @num_error_names, align 4, !dbg !484
  br label %for.end, !dbg !483

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !486
  call void @llvm.dbg.value(metadata i32 undef, metadata !456, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !457
  br label %for.cond, !dbg !487, !llvm.loop !488

for.end.loopexit:                                 ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ], !dbg !471
  %.lcssa = phi i32 [ %1, %for.cond ], !dbg !472
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !456, metadata !DIExpression()), !dbg !457
  br label %for.end, !dbg !490

for.end:                                          ; preds = %for.end.loopexit, %land.lhs.true.for.end_crit_edge
  %indvars.iv6 = phi i64 [ %indvars.iv.lcssa5, %land.lhs.true.for.end_crit_edge ], [ %indvars.iv.lcssa, %for.end.loopexit ]
  %5 = phi i32 [ %.pre, %land.lhs.true.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !484
  %errnoval.03 = trunc i64 %indvars.iv6 to i32, !dbg !457
  call void @llvm.dbg.value(metadata i32 %errnoval.03, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i32 %errnoval.03, metadata !456, metadata !DIExpression()), !dbg !457
  %cmp10 = icmp eq i32 %5, %errnoval.03, !dbg !490
  %spec.select = select i1 %cmp10, i32 0, i32 %errnoval.03, !dbg !491
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !456, metadata !DIExpression()), !dbg !457
  br label %if.end13, !dbg !492

if.end13:                                         ; preds = %entry, %for.end
  %errnoval.2 = phi i32 [ %spec.select, %for.end ], [ 0, %entry ], !dbg !457
  call void @llvm.dbg.value(metadata i32 %errnoval.2, metadata !456, metadata !DIExpression()), !dbg !457
  ret i32 %errnoval.2, !dbg !493
}

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!55, !56, !57}
!llvm.ident = !{!58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "error_names", scope: !2, file: !3, line: 452, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !16, nameTableKind: None)
!3 = !DIFile(filename: "strerror.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13, !10, !15}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!16 = !{!17, !28, !0, !36, !38, !40, !53}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "buf", scope: !19, file: !3, line: 629, type: !25, isLocal: true, isDefinition: true)
!19 = distinct !DISubprogram(name: "strerror", scope: !3, file: !3, line: 626, type: !20, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{!10, !8}
!22 = !{!23, !24}
!23 = !DILocalVariable(name: "errnoval", arg: 1, scope: !19, file: !3, line: 626, type: !8)
!24 = !DILocalVariable(name: "msg", scope: !19, file: !3, line: 628, type: !13)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 32)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "buf", scope: !30, file: !3, line: 699, type: !25, isLocal: true, isDefinition: true)
!30 = distinct !DISubprogram(name: "strerrno", scope: !3, file: !3, line: 696, type: !31, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!13, !8}
!33 = !{!34, !35}
!34 = !DILocalVariable(name: "errnoval", arg: 1, scope: !30, file: !3, line: 696, type: !8)
!35 = !DILocalVariable(name: "name", scope: !30, file: !3, line: 698, type: !13)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "sys_nerr__", scope: !2, file: !3, line: 467, type: !8, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "sys_errlist__", scope: !2, file: !3, line: 468, type: !15, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "error_table", scope: !2, file: !3, line: 74, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 23424, elements: !51)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "error_info", file: !3, line: 59, size: 192, elements: !45)
!45 = !{!46, !48, !50}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !44, file: !3, line: 61, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !3, line: 62, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !44, file: !3, line: 64, baseType: !49, size: 64, offset: 128)
!51 = !{!52}
!52 = !DISubrange(count: 122)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "num_error_names", scope: !2, file: !3, line: 453, type: !8, isLocal: true, isDefinition: true)
!55 = !{i32 2, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!59 = distinct !DISubprogram(name: "vprintf", scope: !60, file: !60, line: 39, type: !61, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!61 = !DISubroutineType(types: !62)
!62 = !{!8, !63, !64}
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !66)
!66 = !{!67, !69, !70, !71}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !65, file: !3, baseType: !68, size: 32)
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !65, file: !3, baseType: !68, size: 32, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !65, file: !3, baseType: !12, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !65, file: !3, baseType: !12, size: 64, offset: 128)
!72 = !{!73, !74}
!73 = !DILocalVariable(name: "__fmt", arg: 1, scope: !59, file: !60, line: 39, type: !63)
!74 = !DILocalVariable(name: "__arg", arg: 2, scope: !59, file: !60, line: 39, type: !64)
!75 = !DILocation(line: 0, scope: !59)
!76 = !DILocation(line: 41, column: 20, scope: !59)
!77 = !DILocation(line: 41, column: 10, scope: !59)
!78 = !DILocation(line: 41, column: 3, scope: !59)
!79 = distinct !DISubprogram(name: "getchar", scope: !60, file: !60, line: 47, type: !80, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!80 = !DISubroutineType(types: !81)
!81 = !{!8}
!82 = !DILocation(line: 49, column: 16, scope: !79)
!83 = !DILocation(line: 49, column: 10, scope: !79)
!84 = !DILocation(line: 49, column: 3, scope: !79)
!85 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !60, file: !60, line: 56, type: !86, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !147)
!86 = !DISubroutineType(types: !87)
!87 = !{!8, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !90, line: 7, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !92, line: 49, size: 1728, elements: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !109, !111, !112, !113, !117, !119, !121, !125, !128, !130, !133, !136, !137, !138, !142, !143}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !91, file: !92, line: 51, baseType: !8, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !91, file: !92, line: 54, baseType: !10, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !91, file: !92, line: 55, baseType: !10, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !91, file: !92, line: 56, baseType: !10, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !91, file: !92, line: 57, baseType: !10, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !91, file: !92, line: 58, baseType: !10, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !91, file: !92, line: 59, baseType: !10, size: 64, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !91, file: !92, line: 60, baseType: !10, size: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !91, file: !92, line: 61, baseType: !10, size: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !91, file: !92, line: 64, baseType: !10, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !91, file: !92, line: 65, baseType: !10, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !91, file: !92, line: 66, baseType: !10, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !91, file: !92, line: 68, baseType: !107, size: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !92, line: 36, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !91, file: !92, line: 70, baseType: !110, size: 64, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !91, file: !92, line: 72, baseType: !8, size: 32, offset: 896)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !91, file: !92, line: 73, baseType: !8, size: 32, offset: 928)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !91, file: !92, line: 74, baseType: !114, size: 64, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !115, line: 152, baseType: !116)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!116 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !91, file: !92, line: 77, baseType: !118, size: 16, offset: 1024)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !91, file: !92, line: 78, baseType: !120, size: 8, offset: 1040)
!120 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !91, file: !92, line: 79, baseType: !122, size: 8, offset: 1048)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 1)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !91, file: !92, line: 81, baseType: !126, size: 64, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !92, line: 43, baseType: null)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !91, file: !92, line: 89, baseType: !129, size: 64, offset: 1152)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !115, line: 153, baseType: !116)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !91, file: !92, line: 91, baseType: !131, size: 64, offset: 1216)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !92, line: 37, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !91, file: !92, line: 92, baseType: !134, size: 64, offset: 1280)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !92, line: 38, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !91, file: !92, line: 93, baseType: !110, size: 64, offset: 1344)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !91, file: !92, line: 94, baseType: !12, size: 64, offset: 1408)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !91, file: !92, line: 95, baseType: !139, size: 64, offset: 1472)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 46, baseType: !141)
!140 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!141 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !91, file: !92, line: 96, baseType: !8, size: 32, offset: 1536)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !91, file: !92, line: 98, baseType: !144, size: 160, offset: 1568)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 20)
!147 = !{!148}
!148 = !DILocalVariable(name: "__fp", arg: 1, scope: !85, file: !60, line: 56, type: !88)
!149 = !DILocation(line: 0, scope: !85)
!150 = !DILocation(line: 58, column: 10, scope: !85)
!151 = !DILocation(line: 58, column: 3, scope: !85)
!152 = distinct !DISubprogram(name: "getc_unlocked", scope: !60, file: !60, line: 66, type: !86, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!153 = !{!154}
!154 = !DILocalVariable(name: "__fp", arg: 1, scope: !152, file: !60, line: 66, type: !88)
!155 = !DILocation(line: 0, scope: !152)
!156 = !DILocation(line: 68, column: 10, scope: !152)
!157 = !DILocation(line: 68, column: 3, scope: !152)
!158 = distinct !DISubprogram(name: "getchar_unlocked", scope: !60, file: !60, line: 73, type: !80, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!159 = !DILocation(line: 75, column: 10, scope: !158)
!160 = !DILocation(line: 75, column: 3, scope: !158)
!161 = distinct !DISubprogram(name: "putchar", scope: !60, file: !60, line: 82, type: !162, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{!8, !8}
!164 = !{!165}
!165 = !DILocalVariable(name: "__c", arg: 1, scope: !161, file: !60, line: 82, type: !8)
!166 = !DILocation(line: 0, scope: !161)
!167 = !DILocation(line: 84, column: 21, scope: !161)
!168 = !DILocation(line: 84, column: 10, scope: !161)
!169 = !DILocation(line: 84, column: 3, scope: !161)
!170 = distinct !DISubprogram(name: "fputc_unlocked", scope: !60, file: !60, line: 91, type: !171, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{!8, !8, !88}
!173 = !{!174, !175}
!174 = !DILocalVariable(name: "__c", arg: 1, scope: !170, file: !60, line: 91, type: !8)
!175 = !DILocalVariable(name: "__stream", arg: 2, scope: !170, file: !60, line: 91, type: !88)
!176 = !DILocation(line: 0, scope: !170)
!177 = !DILocation(line: 93, column: 10, scope: !170)
!178 = !DILocation(line: 93, column: 3, scope: !170)
!179 = distinct !DISubprogram(name: "putc_unlocked", scope: !60, file: !60, line: 101, type: !171, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!180 = !{!181, !182}
!181 = !DILocalVariable(name: "__c", arg: 1, scope: !179, file: !60, line: 101, type: !8)
!182 = !DILocalVariable(name: "__stream", arg: 2, scope: !179, file: !60, line: 101, type: !88)
!183 = !DILocation(line: 0, scope: !179)
!184 = !DILocation(line: 103, column: 10, scope: !179)
!185 = !DILocation(line: 103, column: 3, scope: !179)
!186 = distinct !DISubprogram(name: "putchar_unlocked", scope: !60, file: !60, line: 108, type: !162, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!187 = !{!188}
!188 = !DILocalVariable(name: "__c", arg: 1, scope: !186, file: !60, line: 108, type: !8)
!189 = !DILocation(line: 0, scope: !186)
!190 = !DILocation(line: 110, column: 10, scope: !186)
!191 = !DILocation(line: 110, column: 3, scope: !186)
!192 = distinct !DISubprogram(name: "getline", scope: !60, file: !60, line: 118, type: !193, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !9, !196, !88}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !115, line: 193, baseType: !116)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!197 = !{!198, !199, !200}
!198 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !192, file: !60, line: 118, type: !9)
!199 = !DILocalVariable(name: "__n", arg: 2, scope: !192, file: !60, line: 118, type: !196)
!200 = !DILocalVariable(name: "__stream", arg: 3, scope: !192, file: !60, line: 118, type: !88)
!201 = !DILocation(line: 0, scope: !192)
!202 = !DILocation(line: 120, column: 10, scope: !192)
!203 = !DILocation(line: 120, column: 3, scope: !192)
!204 = distinct !DISubprogram(name: "feof_unlocked", scope: !60, file: !60, line: 128, type: !86, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !205)
!205 = !{!206}
!206 = !DILocalVariable(name: "__stream", arg: 1, scope: !204, file: !60, line: 128, type: !88)
!207 = !DILocation(line: 0, scope: !204)
!208 = !DILocation(line: 130, column: 10, scope: !204)
!209 = !DILocation(line: 130, column: 3, scope: !204)
!210 = distinct !DISubprogram(name: "ferror_unlocked", scope: !60, file: !60, line: 135, type: !86, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !211)
!211 = !{!212}
!212 = !DILocalVariable(name: "__stream", arg: 1, scope: !210, file: !60, line: 135, type: !88)
!213 = !DILocation(line: 0, scope: !210)
!214 = !DILocation(line: 137, column: 10, scope: !210)
!215 = !DILocation(line: 137, column: 3, scope: !210)
!216 = distinct !DISubprogram(name: "atoi", scope: !217, file: !217, line: 361, type: !218, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!217 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!218 = !DISubroutineType(types: !219)
!219 = !{!8, !13}
!220 = !{!221}
!221 = !DILocalVariable(name: "__nptr", arg: 1, scope: !216, file: !217, line: 361, type: !13)
!222 = !DILocation(line: 0, scope: !216)
!223 = !DILocation(line: 363, column: 16, scope: !216)
!224 = !DILocation(line: 363, column: 10, scope: !216)
!225 = !DILocation(line: 363, column: 3, scope: !216)
!226 = distinct !DISubprogram(name: "atol", scope: !217, file: !217, line: 366, type: !227, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{!116, !13}
!229 = !{!230}
!230 = !DILocalVariable(name: "__nptr", arg: 1, scope: !226, file: !217, line: 366, type: !13)
!231 = !DILocation(line: 0, scope: !226)
!232 = !DILocation(line: 368, column: 10, scope: !226)
!233 = !DILocation(line: 368, column: 3, scope: !226)
!234 = distinct !DISubprogram(name: "atoll", scope: !217, file: !217, line: 373, type: !235, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !13}
!237 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!238 = !{!239}
!239 = !DILocalVariable(name: "__nptr", arg: 1, scope: !234, file: !217, line: 373, type: !13)
!240 = !DILocation(line: 0, scope: !234)
!241 = !DILocation(line: 375, column: 10, scope: !234)
!242 = !DILocation(line: 375, column: 3, scope: !234)
!243 = distinct !DISubprogram(name: "bsearch", scope: !244, file: !244, line: 20, type: !245, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!244 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!245 = !DISubroutineType(types: !246)
!246 = !{!12, !247, !247, !139, !139, !249}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !217, line: 808, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!8, !247, !247}
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!254 = !DILocalVariable(name: "__key", arg: 1, scope: !243, file: !244, line: 20, type: !247)
!255 = !DILocalVariable(name: "__base", arg: 2, scope: !243, file: !244, line: 20, type: !247)
!256 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !243, file: !244, line: 20, type: !139)
!257 = !DILocalVariable(name: "__size", arg: 4, scope: !243, file: !244, line: 20, type: !139)
!258 = !DILocalVariable(name: "__compar", arg: 5, scope: !243, file: !244, line: 21, type: !249)
!259 = !DILocalVariable(name: "__l", scope: !243, file: !244, line: 23, type: !139)
!260 = !DILocalVariable(name: "__u", scope: !243, file: !244, line: 23, type: !139)
!261 = !DILocalVariable(name: "__idx", scope: !243, file: !244, line: 23, type: !139)
!262 = !DILocalVariable(name: "__p", scope: !243, file: !244, line: 24, type: !247)
!263 = !DILocalVariable(name: "__comparison", scope: !243, file: !244, line: 25, type: !8)
!264 = !DILocation(line: 0, scope: !243)
!265 = !DILocation(line: 29, column: 3, scope: !243)
!266 = !DILocation(line: 27, column: 7, scope: !243)
!267 = !DILocation(line: 29, column: 14, scope: !243)
!268 = !DILocation(line: 31, column: 20, scope: !269)
!269 = distinct !DILexicalBlock(scope: !243, file: !244, line: 30, column: 5)
!270 = !DILocation(line: 31, column: 27, scope: !269)
!271 = !DILocation(line: 32, column: 56, scope: !269)
!272 = !DILocation(line: 32, column: 47, scope: !269)
!273 = !DILocation(line: 33, column: 22, scope: !269)
!274 = !DILocation(line: 34, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !269, file: !244, line: 34, column: 11)
!276 = !DILocation(line: 34, column: 11, scope: !269)
!277 = !DILocation(line: 36, column: 29, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !244, line: 36, column: 16)
!279 = !DILocation(line: 36, column: 16, scope: !275)
!280 = !DILocation(line: 37, column: 14, scope: !278)
!281 = distinct !{!281, !265, !282}
!282 = !DILocation(line: 40, column: 5, scope: !243)
!283 = !DILocation(line: 43, column: 1, scope: !243)
!284 = distinct !DISubprogram(name: "atof", scope: !285, file: !285, line: 25, type: !286, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!285 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !13}
!288 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!289 = !{!290}
!290 = !DILocalVariable(name: "__nptr", arg: 1, scope: !284, file: !285, line: 25, type: !13)
!291 = !DILocation(line: 0, scope: !284)
!292 = !DILocation(line: 27, column: 10, scope: !284)
!293 = !DILocation(line: 27, column: 3, scope: !284)
!294 = distinct !DISubprogram(name: "errno_max", scope: !3, file: !3, line: 587, type: !80, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !295)
!295 = !{!296}
!296 = !DILocalVariable(name: "maxsize", scope: !294, file: !3, line: 589, type: !8)
!297 = !DILocation(line: 591, column: 7, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !3, line: 591, column: 7)
!299 = !DILocation(line: 591, column: 19, scope: !298)
!300 = !DILocation(line: 591, column: 7, scope: !294)
!301 = !DILocation(line: 593, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !3, line: 592, column: 5)
!303 = !DILocation(line: 594, column: 5, scope: !302)
!304 = !DILocation(line: 595, column: 13, scope: !294)
!305 = !DILocation(line: 0, scope: !294)
!306 = !DILocation(line: 596, column: 19, scope: !294)
!307 = !DILocation(line: 596, column: 3, scope: !294)
!308 = distinct !DISubprogram(name: "init_error_tables", scope: !3, file: !3, line: 506, type: !309, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{null}
!311 = !{!312, !314}
!312 = !DILocalVariable(name: "eip", scope: !308, file: !3, line: 508, type: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!314 = !DILocalVariable(name: "nbytes", scope: !308, file: !3, line: 509, type: !8)
!315 = !DILocation(line: 514, column: 7, scope: !316)
!316 = distinct !DILexicalBlock(scope: !308, file: !3, line: 514, column: 7)
!317 = !DILocation(line: 514, column: 23, scope: !316)
!318 = !DILocation(line: 514, column: 7, scope: !308)
!319 = !DILocation(line: 516, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 516, column: 7)
!321 = distinct !DILexicalBlock(scope: !316, file: !3, line: 515, column: 5)
!322 = !DILocation(line: 0, scope: !320)
!323 = !DILocation(line: 0, scope: !308)
!324 = !DILocation(line: 516, column: 38, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !3, line: 516, column: 7)
!326 = !DILocation(line: 516, column: 43, scope: !325)
!327 = !DILocation(line: 518, column: 15, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 518, column: 8)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 517, column: 2)
!330 = !DILocation(line: 518, column: 21, scope: !328)
!331 = !DILocation(line: 518, column: 8, scope: !329)
!332 = !DILocation(line: 520, column: 39, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !3, line: 519, column: 6)
!334 = !DILocation(line: 520, column: 24, scope: !333)
!335 = !DILocation(line: 521, column: 6, scope: !333)
!336 = !DILocation(line: 516, column: 55, scope: !325)
!337 = !DILocation(line: 516, column: 7, scope: !325)
!338 = distinct !{!338, !319, !339}
!339 = !DILocation(line: 522, column: 2, scope: !320)
!340 = !DILocation(line: 528, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !308, file: !3, line: 528, column: 7)
!342 = !DILocation(line: 528, column: 19, scope: !341)
!343 = !DILocation(line: 528, column: 7, scope: !308)
!344 = !DILocation(line: 530, column: 32, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !3, line: 529, column: 5)
!346 = !DILocation(line: 531, column: 50, scope: !347)
!347 = distinct !DILexicalBlock(scope: !345, file: !3, line: 531, column: 11)
!348 = !DILocation(line: 531, column: 42, scope: !347)
!349 = !DILocation(line: 531, column: 24, scope: !347)
!350 = !DILocation(line: 531, column: 59, scope: !347)
!351 = !DILocation(line: 531, column: 11, scope: !345)
!352 = !DILocation(line: 533, column: 4, scope: !353)
!353 = distinct !DILexicalBlock(scope: !347, file: !3, line: 532, column: 2)
!354 = !DILocation(line: 534, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !353, file: !3, line: 534, column: 4)
!356 = !DILocation(line: 0, scope: !355)
!357 = !DILocation(line: 534, column: 35, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !3, line: 534, column: 4)
!359 = !DILocation(line: 534, column: 40, scope: !358)
!360 = !DILocation(line: 534, column: 4, scope: !355)
!361 = !DILocation(line: 536, column: 8, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !3, line: 535, column: 6)
!363 = !DILocation(line: 536, column: 27, scope: !362)
!364 = !DILocation(line: 536, column: 34, scope: !362)
!365 = !DILocation(line: 534, column: 52, scope: !358)
!366 = !DILocation(line: 534, column: 4, scope: !358)
!367 = distinct !{!367, !360, !368}
!368 = !DILocation(line: 537, column: 6, scope: !355)
!369 = !DILocation(line: 546, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !308, file: !3, line: 546, column: 7)
!371 = !DILocation(line: 546, column: 19, scope: !370)
!372 = !DILocation(line: 546, column: 7, scope: !308)
!373 = !DILocation(line: 548, column: 16, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !3, line: 547, column: 5)
!375 = !DILocation(line: 548, column: 32, scope: !374)
!376 = !DILocation(line: 549, column: 50, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !3, line: 549, column: 11)
!378 = !DILocation(line: 549, column: 42, scope: !377)
!379 = !DILocation(line: 549, column: 24, scope: !377)
!380 = !DILocation(line: 549, column: 59, scope: !377)
!381 = !DILocation(line: 549, column: 11, scope: !374)
!382 = !DILocation(line: 551, column: 4, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !3, line: 550, column: 2)
!384 = !DILocation(line: 552, column: 15, scope: !383)
!385 = !DILocation(line: 552, column: 13, scope: !383)
!386 = !DILocation(line: 553, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !3, line: 553, column: 4)
!388 = !DILocation(line: 0, scope: !387)
!389 = !DILocation(line: 553, column: 35, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !3, line: 553, column: 4)
!391 = !DILocation(line: 553, column: 40, scope: !390)
!392 = !DILocation(line: 553, column: 4, scope: !387)
!393 = !DILocation(line: 555, column: 43, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !3, line: 554, column: 6)
!395 = !DILocation(line: 555, column: 8, scope: !394)
!396 = !DILocation(line: 555, column: 27, scope: !394)
!397 = !DILocation(line: 555, column: 34, scope: !394)
!398 = !DILocation(line: 553, column: 52, scope: !390)
!399 = !DILocation(line: 553, column: 4, scope: !390)
!400 = distinct !{!400, !392, !401}
!401 = !DILocation(line: 556, column: 6, scope: !387)
!402 = !DILocation(line: 562, column: 1, scope: !308)
!403 = !DILocation(line: 0, scope: !19)
!404 = !DILocation(line: 633, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !19, file: !3, line: 633, column: 7)
!406 = !DILocation(line: 633, column: 19, scope: !405)
!407 = !DILocation(line: 633, column: 7, scope: !19)
!408 = !DILocation(line: 635, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !3, line: 634, column: 5)
!410 = !DILocation(line: 636, column: 5, scope: !409)
!411 = !DILocation(line: 640, column: 17, scope: !412)
!412 = distinct !DILexicalBlock(scope: !19, file: !3, line: 640, column: 7)
!413 = !DILocation(line: 640, column: 38, scope: !412)
!414 = !DILocation(line: 640, column: 35, scope: !412)
!415 = !DILocation(line: 640, column: 22, scope: !412)
!416 = !DILocation(line: 650, column: 13, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !3, line: 650, column: 12)
!418 = !DILocation(line: 650, column: 25, scope: !417)
!419 = !DILocation(line: 650, column: 34, scope: !417)
!420 = !DILocation(line: 650, column: 38, scope: !417)
!421 = !DILocation(line: 650, column: 60, scope: !417)
!422 = !DILocation(line: 650, column: 12, scope: !412)
!423 = !DILocation(line: 653, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !417, file: !3, line: 651, column: 5)
!425 = !DILocation(line: 655, column: 5, scope: !424)
!426 = !DILocation(line: 0, scope: !412)
!427 = !DILocation(line: 663, column: 3, scope: !19)
!428 = !DILocation(line: 0, scope: !30)
!429 = !DILocation(line: 701, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !30, file: !3, line: 701, column: 7)
!431 = !DILocation(line: 701, column: 19, scope: !430)
!432 = !DILocation(line: 701, column: 7, scope: !30)
!433 = !DILocation(line: 703, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !3, line: 702, column: 5)
!435 = !DILocation(line: 704, column: 5, scope: !434)
!436 = !DILocation(line: 706, column: 17, scope: !437)
!437 = distinct !DILexicalBlock(scope: !30, file: !3, line: 706, column: 7)
!438 = !DILocation(line: 706, column: 38, scope: !437)
!439 = !DILocation(line: 706, column: 35, scope: !437)
!440 = !DILocation(line: 706, column: 22, scope: !437)
!441 = !DILocation(line: 716, column: 13, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !3, line: 716, column: 12)
!443 = !DILocation(line: 716, column: 25, scope: !442)
!444 = !DILocation(line: 716, column: 34, scope: !442)
!445 = !DILocation(line: 716, column: 38, scope: !442)
!446 = !DILocation(line: 716, column: 60, scope: !442)
!447 = !DILocation(line: 716, column: 12, scope: !437)
!448 = !DILocation(line: 719, column: 7, scope: !449)
!449 = distinct !DILexicalBlock(scope: !442, file: !3, line: 717, column: 5)
!450 = !DILocation(line: 721, column: 5, scope: !449)
!451 = !DILocation(line: 0, scope: !437)
!452 = !DILocation(line: 728, column: 3, scope: !30)
!453 = distinct !DISubprogram(name: "strtoerrno", scope: !3, file: !3, line: 743, type: !218, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !454)
!454 = !{!455, !456}
!455 = !DILocalVariable(name: "name", arg: 1, scope: !453, file: !3, line: 743, type: !13)
!456 = !DILocalVariable(name: "errnoval", scope: !453, file: !3, line: 745, type: !8)
!457 = !DILocation(line: 0, scope: !453)
!458 = !DILocation(line: 747, column: 12, scope: !459)
!459 = distinct !DILexicalBlock(scope: !453, file: !3, line: 747, column: 7)
!460 = !DILocation(line: 747, column: 7, scope: !453)
!461 = !DILocation(line: 749, column: 11, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 749, column: 11)
!463 = distinct !DILexicalBlock(scope: !459, file: !3, line: 748, column: 5)
!464 = !DILocation(line: 749, column: 23, scope: !462)
!465 = !DILocation(line: 749, column: 11, scope: !463)
!466 = !DILocation(line: 751, column: 4, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 750, column: 2)
!468 = !DILocation(line: 752, column: 2, scope: !467)
!469 = !DILocation(line: 753, column: 12, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !3, line: 753, column: 7)
!471 = !DILocation(line: 0, scope: !470)
!472 = !DILocation(line: 753, column: 37, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 753, column: 7)
!474 = !DILocation(line: 753, column: 35, scope: !473)
!475 = !DILocation(line: 753, column: 7, scope: !470)
!476 = !DILocation(line: 755, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !3, line: 755, column: 8)
!478 = distinct !DILexicalBlock(scope: !473, file: !3, line: 754, column: 2)
!479 = !DILocation(line: 755, column: 31, scope: !477)
!480 = !DILocation(line: 755, column: 40, scope: !477)
!481 = !DILocation(line: 756, column: 9, scope: !477)
!482 = !DILocation(line: 756, column: 46, scope: !477)
!483 = !DILocation(line: 755, column: 8, scope: !478)
!484 = !DILocation(line: 761, column: 23, scope: !485)
!485 = distinct !DILexicalBlock(scope: !463, file: !3, line: 761, column: 11)
!486 = !DILocation(line: 753, column: 62, scope: !473)
!487 = !DILocation(line: 753, column: 7, scope: !473)
!488 = distinct !{!488, !475, !489}
!489 = !DILocation(line: 760, column: 2, scope: !470)
!490 = !DILocation(line: 761, column: 20, scope: !485)
!491 = !DILocation(line: 761, column: 11, scope: !463)
!492 = !DILocation(line: 770, column: 5, scope: !463)
!493 = !DILocation(line: 771, column: 3, scope: !453)
