; ModuleID = 'cplus-dem.bc'
source_filename = "cplus-dem.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.demangler_engine = type { i8*, i32, i8* }
%struct.optable = type { i8*, i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.string = type { i8*, i8*, i8* }
%struct.work_stuff = type { i32, i8**, i8**, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, %struct.string*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@current_demangling_style = dso_local local_unnamed_addr global i32 256, align 4, !dbg !0
@cplus_markers = internal global [4 x i8] c"$.$\00", align 1, !dbg !89
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Demangling disabled\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Automatic selection based on executable\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gnu\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"GNU (g++) style demangling\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lucid\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Lucid (lcc) style demangling\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ARM style demangling\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"HP (aCC) style demangling\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"edg\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"EDG style demangling\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"gnu-v3\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"GNU (g++) V3 ABI-style demangling\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"java\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Java style demangling\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"gnat\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"GNAT style demangling\00", align 1
@libiberty_demanglers = dso_local local_unnamed_addr constant [11 x %struct.demangler_engine] [%struct.demangler_engine { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.demangler_engine { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 256, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0) }, %struct.demangler_engine { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 512, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0) }, %struct.demangler_engine { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 1024, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0) }, %struct.demangler_engine { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 2048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0) }, %struct.demangler_engine { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 4096, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct.demangler_engine { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 8192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0) }, %struct.demangler_engine { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 16384, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0) }, %struct.demangler_engine { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.demangler_engine { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 32768, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.demangler_engine zeroinitializer], align 16, !dbg !50
@.str.20 = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@optable = internal unnamed_addr constant [79 x %struct.optable] [%struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.172, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.172, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.178, i32 0, i32 0), i32 0 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i32 2 }, %struct.optable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.182, i32 0, i32 0), i32 2 }], align 16, !dbg !94
@.str.21 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"assign_\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"_ada_\00", align 1
@ada_demangle.operators = internal unnamed_addr constant [20 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0)], [2 x i8*] zeroinitializer], align 16, !dbg !63
@.str.26 = private unnamed_addr constant [5 x i8] c"Oabs\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Oand\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Omod\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Onot\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"Oor\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Orem\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"Oxor\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"Oeq\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"One\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"Olt\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"Ole\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"Ogt\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"Oge\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"Oadd\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"Osubtract\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"Oconcat\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"Omultiply\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"Odivide\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Oexpon\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"elabb\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"'Elab_Body\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"elabs\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"'Elab_Spec\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"nw\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c" new\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c" delete\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"vn\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c" new []\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"vd\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c" delete []\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"apl\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"ami\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"mult\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"ml\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"amu\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"aml\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"convert\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"negate\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"trunc_mod\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"amd\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"trunc_div\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"dv\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"adv\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"truth_andif\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"truth_orif\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"truth_not\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"postincrement\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"postdecrement\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"bit_ior\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"aor\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"bit_xor\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"er\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"aer\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"bit_and\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"ad\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"aad\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"bit_not\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"alshift\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"als\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"arshift\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"ars\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"indirect\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"method_call\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"->()\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"compound\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"?:\00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"cn\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c">?\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"mx\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"<?\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"mn\00", align 1
@.str.177 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.178 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"sizeof \00", align 1
@.str.183 = private unnamed_addr constant [30 x i8] c"global constructors keyed to \00", align 1
@.str.184 = private unnamed_addr constant [29 x i8] c"global destructors keyed to \00", align 1
@.str.185 = private unnamed_addr constant [17 x i8] c"import stub for \00", align 1
@.str.186 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c" virtual table\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"0123456789Qt\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"_GLOBAL_\00", align 1
@.str.191 = private unnamed_addr constant [12 x i8] c"{anonymous}\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"__thunk_\00", align 1
@.str.193 = private unnamed_addr constant [39 x i8] c"virtual function thunk (delta:%d) for \00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"__t\00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c" type_info node\00", align 1
@.str.196 = private unnamed_addr constant [20 x i8] c" type_info function\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"JArray1Z\00", align 1
@.str.198 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"T%d\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"template <\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"> class\00", align 1
@.str.203 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.206 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.207 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.208 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"_imp__\00", align 1
@.str.212 = private unnamed_addr constant [7 x i8] c"__imp_\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"__std__\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"__sti__\00", align 1
@.str.215 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.217 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.218 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1
@char_str = internal global [2 x i8] zeroinitializer, align 1, !dbg !106
@.str.219 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c"__pt__\00", align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"__tm__\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"__ps__\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"__S\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"__vtbl__\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"__ct\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"__dt\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c" static\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.232 = private unnamed_addr constant [11 x i8] c"__restrict\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"const volatile\00", align 1
@.str.234 = private unnamed_addr constant [17 x i8] c"const __restrict\00", align 1
@.str.235 = private unnamed_addr constant [20 x i8] c"volatile __restrict\00", align 1
@.str.236 = private unnamed_addr constant [26 x i8] c"const volatile __restrict\00", align 1
@.str.237 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.238 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"__complex\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.244 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.248 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.249 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.250 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.252 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.253 = private unnamed_addr constant [8 x i8] c"int%u_t\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !114 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !119, metadata !DIExpression()), !dbg !120
  %__c.off = add i32 %__c, 128, !dbg !121
  %0 = icmp ult i32 %__c.off, 384, !dbg !121
  br i1 %0, label %cond.true, label %cond.end, !dbg !121

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !122
  %1 = load i32*, i32** %call, align 8, !dbg !123
  %idxprom = sext i32 %__c to i64, !dbg !124
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !124
  %2 = load i32, i32* %arrayidx, align 4, !dbg !124
  br label %cond.end, !dbg !125

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !125
  ret i32 %cond, !dbg !126
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !127 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !129, metadata !DIExpression()), !dbg !130
  %__c.off = add i32 %__c, 128, !dbg !131
  %0 = icmp ult i32 %__c.off, 384, !dbg !131
  br i1 %0, label %cond.true, label %cond.end, !dbg !131

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !132
  %1 = load i32*, i32** %call, align 8, !dbg !133
  %idxprom = sext i32 %__c to i64, !dbg !134
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !134
  %2 = load i32, i32* %arrayidx, align 4, !dbg !134
  br label %cond.end, !dbg !135

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !135
  ret i32 %cond, !dbg !136
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !137 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !150, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !153
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !154
  ret i32 %call, !dbg !155
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !156 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !160
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !161
  ret i32 %call, !dbg !162
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !163 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !223, metadata !DIExpression()), !dbg !224
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !225
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !225
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !225
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !225
  %cmp = icmp uge i8* %0, %1, !dbg !225
  %conv1 = zext i1 %cmp to i64, !dbg !225
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !225
  %tobool = icmp eq i64 %expval, 0, !dbg !225
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !225

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !225
  br label %cond.end, !dbg !225

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !225
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !225
  %2 = load i8, i8* %0, align 1, !dbg !225
  %conv3 = zext i8 %2 to i32, !dbg !225
  br label %cond.end, !dbg !225

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !225
  ret i32 %cond, !dbg !226
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !229, metadata !DIExpression()), !dbg !230
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !231
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !231
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !231
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !231
  %cmp = icmp uge i8* %0, %1, !dbg !231
  %conv1 = zext i1 %cmp to i64, !dbg !231
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !231
  %tobool = icmp eq i64 %expval, 0, !dbg !231
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !231

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !231
  br label %cond.end, !dbg !231

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !231
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !231
  %2 = load i8, i8* %0, align 1, !dbg !231
  %conv3 = zext i8 %2 to i32, !dbg !231
  br label %cond.end, !dbg !231

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !231
  ret i32 %cond, !dbg !232
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !233 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !234
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !234
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !234
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !234
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !234
  %cmp = icmp uge i8* %1, %2, !dbg !234
  %conv1 = zext i1 %cmp to i64, !dbg !234
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !234
  %tobool = icmp eq i64 %expval, 0, !dbg !234
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !234

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !234
  br label %cond.end, !dbg !234

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !234
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !234
  %3 = load i8, i8* %1, align 1, !dbg !234
  %conv3 = zext i8 %3 to i32, !dbg !234
  br label %cond.end, !dbg !234

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !234
  ret i32 %cond, !dbg !235
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !236 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !240
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !241
  ret i32 %call, !dbg !242
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !250
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

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !257
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !263
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
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !275
  ret i64 %call, !dbg !276
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

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
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !289 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !294, metadata !DIExpression()), !dbg !295
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !296
  %conv = trunc i64 %call to i32, !dbg !297
  ret i32 %conv, !dbg !298
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !299 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !303, metadata !DIExpression()), !dbg !304
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !305
  ret i64 %call, !dbg !306
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !307 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !312, metadata !DIExpression()), !dbg !313
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !314
  ret i64 %call, !dbg !315
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !316 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !327, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i8* %__base, metadata !328, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !329, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i64 %__size, metadata !330, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !331, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i64 0, metadata !332, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !333, metadata !DIExpression()), !dbg !337
  br label %while.cond, !dbg !338

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !339
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !337
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !333, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !332, metadata !DIExpression()), !dbg !337
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !340
  br i1 %cmp, label %while.body, label %cleanup, !dbg !338

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !341
  %div = lshr i64 %add, 1, !dbg !343
  call void @llvm.dbg.value(metadata i64 %div, metadata !334, metadata !DIExpression()), !dbg !337
  %mul = mul i64 %div, %__size, !dbg !344
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !345
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !335, metadata !DIExpression()), !dbg !337
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !346
  call void @llvm.dbg.value(metadata i32 %call, metadata !336, metadata !DIExpression()), !dbg !337
  %cmp1 = icmp slt i32 %call, 0, !dbg !347
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !349

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !350
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !352

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !353
  call void @llvm.dbg.value(metadata i64 %add4, metadata !332, metadata !DIExpression()), !dbg !337
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !337
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !337
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !333, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !332, metadata !DIExpression()), !dbg !337
  br label %while.cond, !dbg !338, !llvm.loop !354

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !337
  ret i8* %retval.0, !dbg !356
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !357 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !363, metadata !DIExpression()), !dbg !364
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !365
  ret double %call, !dbg !366
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @set_cplus_marker_for_demangling(i32 %ch) local_unnamed_addr #5 !dbg !367 {
entry:
  call void @llvm.dbg.value(metadata i32 %ch, metadata !371, metadata !DIExpression()), !dbg !372
  %conv = trunc i32 %ch to i8, !dbg !373
  store i8 %conv, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0), align 1, !dbg !374
  ret void, !dbg !375
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_opname(i8* %opname, i8* %result, i32 %options) local_unnamed_addr #5 !dbg !376 {
entry:
  %type = alloca %struct.string, align 8
  %work = alloca [1 x %struct.work_stuff], align 16
  %tem = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %opname, metadata !380, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i8* %result, metadata !381, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 %options, metadata !382, metadata !DIExpression()), !dbg !430
  %0 = bitcast %struct.string* %type to i8*, !dbg !431
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !431
  %1 = bitcast [1 x %struct.work_stuff]* %work to i8*, !dbg !432
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #7, !dbg !432
  call void @llvm.dbg.declare(metadata [1 x %struct.work_stuff]* %work, metadata !387, metadata !DIExpression()), !dbg !433
  %2 = bitcast i8** %tem to i8*, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !434
  %call = tail call i64 @strlen(i8* %opname) #6, !dbg !435
  %conv = trunc i64 %call to i32, !dbg !435
  call void @llvm.dbg.value(metadata i32 %conv, metadata !383, metadata !DIExpression()), !dbg !430
  store i8 0, i8* %result, align 1, !dbg !436
  call void @llvm.dbg.value(metadata i32 0, metadata !385, metadata !DIExpression()), !dbg !430
  %call1 = call i8* @memset(i8* nonnull %1, i32 0, i64 112) #6, !dbg !437
  %options3 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %work, i64 0, i64 0, i32 0, !dbg !438
  store i32 %options, i32* %options3, align 16, !dbg !439
  %3 = load i8, i8* %opname, align 1, !dbg !440
  %cmp = icmp eq i8 %3, 95, !dbg !441
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !442

land.lhs.true:                                    ; preds = %entry
  %arrayidx7 = getelementptr inbounds i8, i8* %opname, i64 1, !dbg !443
  %4 = load i8, i8* %arrayidx7, align 1, !dbg !443
  %cmp9 = icmp eq i8 %4, 95, !dbg !444
  br i1 %cmp9, label %land.lhs.true11, label %if.else, !dbg !445

land.lhs.true11:                                  ; preds = %land.lhs.true
  %arrayidx12 = getelementptr inbounds i8, i8* %opname, i64 2, !dbg !446
  %5 = load i8, i8* %arrayidx12, align 1, !dbg !446
  %cmp14 = icmp eq i8 %5, 111, !dbg !447
  br i1 %cmp14, label %land.lhs.true16, label %if.else, !dbg !448

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %arrayidx17 = getelementptr inbounds i8, i8* %opname, i64 3, !dbg !449
  %6 = load i8, i8* %arrayidx17, align 1, !dbg !449
  %cmp19 = icmp eq i8 %6, 112, !dbg !450
  br i1 %cmp19, label %if.then, label %if.else, !dbg !451

if.then:                                          ; preds = %land.lhs.true16
  %add.ptr = getelementptr inbounds i8, i8* %opname, i64 4, !dbg !452
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !412, metadata !DIExpression()), !dbg !430
  store i8* %add.ptr, i8** %tem, align 8, !dbg !454
  %arraydecay21 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %work, i64 0, i64 0, !dbg !455
  call void @llvm.dbg.value(metadata %struct.string* %type, metadata !386, metadata !DIExpression(DW_OP_deref)), !dbg !430
  call void @llvm.dbg.value(metadata i8** %tem, metadata !412, metadata !DIExpression(DW_OP_deref)), !dbg !430
  %call22 = call fastcc i32 @do_type(%struct.work_stuff* nonnull %arraydecay21, i8** nonnull %tem, %struct.string* nonnull %type) #8, !dbg !457
  %tobool = icmp eq i32 %call22, 0, !dbg !457
  br i1 %tobool, label %if.end234, label %if.then23, !dbg !458

if.then23:                                        ; preds = %if.then
  %call24 = call i8* @strcat(i8* %result, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !459
  %b = getelementptr inbounds %struct.string, %struct.string* %type, i64 0, i32 0, !dbg !461
  %7 = load i8*, i8** %b, align 8, !dbg !461
  %p = getelementptr inbounds %struct.string, %struct.string* %type, i64 0, i32 1, !dbg !462
  %8 = bitcast i8** %p to i64*, !dbg !462
  %9 = load i64, i64* %8, align 8, !dbg !462
  %.cast1 = ptrtoint i8* %7 to i64, !dbg !463
  %sub.ptr.sub = sub i64 %9, %.cast1, !dbg !464
  %call26 = call i8* @strncat(i8* %result, i8* %7, i64 %sub.ptr.sub) #6, !dbg !465
  call void @llvm.dbg.value(metadata %struct.string* %type, metadata !386, metadata !DIExpression(DW_OP_deref)), !dbg !430
  call fastcc void @string_delete(%struct.string* nonnull %type) #8, !dbg !466
  call void @llvm.dbg.value(metadata i32 1, metadata !385, metadata !DIExpression()), !dbg !430
  br label %if.end234, !dbg !467

if.else:                                          ; preds = %land.lhs.true16, %land.lhs.true11, %land.lhs.true, %entry
  br i1 %cmp, label %land.lhs.true31, label %if.else115, !dbg !468

land.lhs.true31:                                  ; preds = %if.else
  %arrayidx32 = getelementptr inbounds i8, i8* %opname, i64 1, !dbg !469
  %10 = load i8, i8* %arrayidx32, align 1, !dbg !469
  %cmp34 = icmp eq i8 %10, 95, !dbg !470
  br i1 %cmp34, label %land.lhs.true36, label %if.else115, !dbg !471

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %arrayidx37 = getelementptr inbounds i8, i8* %opname, i64 2, !dbg !472
  %11 = load i8, i8* %arrayidx37, align 1, !dbg !472
  %idxprom = zext i8 %11 to i64, !dbg !472
  %arrayidx39 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !472
  %12 = load i16, i16* %arrayidx39, align 2, !dbg !472
  %13 = and i16 %12, 8, !dbg !472
  %tobool42 = icmp eq i16 %13, 0, !dbg !472
  br i1 %tobool42, label %if.else115, label %land.lhs.true43, !dbg !473

land.lhs.true43:                                  ; preds = %land.lhs.true36
  %arrayidx44 = getelementptr inbounds i8, i8* %opname, i64 3, !dbg !474
  %14 = load i8, i8* %arrayidx44, align 1, !dbg !474
  %idxprom47 = zext i8 %14 to i64, !dbg !474
  %arrayidx48 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom47, !dbg !474
  %15 = load i16, i16* %arrayidx48, align 2, !dbg !474
  %16 = and i16 %15, 8, !dbg !474
  %tobool51 = icmp eq i16 %16, 0, !dbg !474
  br i1 %tobool51, label %if.else115, label %if.then52, !dbg !475

if.then52:                                        ; preds = %land.lhs.true43
  %arrayidx53 = getelementptr inbounds i8, i8* %opname, i64 4, !dbg !476
  %17 = load i8, i8* %arrayidx53, align 1, !dbg !476
  %cmp55 = icmp eq i8 %17, 0, !dbg !477
  br i1 %cmp55, label %for.cond.preheader, label %if.else76, !dbg !478

for.cond.preheader:                               ; preds = %if.then52
  br label %for.cond, !dbg !479

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !481
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !413, metadata !DIExpression()), !dbg !482
  %exitcond14 = icmp eq i64 %i.0, 79, !dbg !483
  br i1 %exitcond14, label %if.end234.loopexit3, label %for.body, !dbg !479

for.body:                                         ; preds = %for.cond
  %in = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.0, i32 0, !dbg !485
  %18 = load i8*, i8** %in, align 8, !dbg !485
  %call61 = call i64 @strlen(i8* %18) #6, !dbg !488
  %cmp62 = icmp eq i64 %call61, 2, !dbg !489
  br i1 %cmp62, label %land.lhs.true64, label %for.inc, !dbg !490

land.lhs.true64:                                  ; preds = %for.body
  %call68 = call i32 @memcmp(i8* %18, i8* nonnull %arrayidx37, i64 2) #6, !dbg !491
  %cmp69 = icmp eq i32 %call68, 0, !dbg !492
  br i1 %cmp69, label %if.then71, label %for.inc, !dbg !493

if.then71:                                        ; preds = %land.lhs.true64
  %i.0.lcssa18 = phi i64 [ %i.0, %land.lhs.true64 ], !dbg !481
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa18, metadata !413, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa18, metadata !413, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa18, metadata !413, metadata !DIExpression()), !dbg !482
  %call72 = call i8* @strcat(i8* %result, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !494
  %out = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.0.lcssa18, i32 1, !dbg !496
  %19 = load i8*, i8** %out, align 8, !dbg !496
  %call74 = call i8* @strcat(i8* %result, i8* %19) #6, !dbg !497
  call void @llvm.dbg.value(metadata i32 1, metadata !385, metadata !DIExpression()), !dbg !430
  br label %if.end234, !dbg !498

for.inc:                                          ; preds = %for.body, %land.lhs.true64
  %inc = add nuw nsw i64 %i.0, 1, !dbg !499
  call void @llvm.dbg.value(metadata i64 %inc, metadata !413, metadata !DIExpression()), !dbg !482
  br label %for.cond, !dbg !500, !llvm.loop !501

if.else76:                                        ; preds = %if.then52
  %cmp79 = icmp eq i8 %11, 97, !dbg !503
  br i1 %cmp79, label %land.lhs.true81, label %if.end234, !dbg !504

land.lhs.true81:                                  ; preds = %if.else76
  %arrayidx82 = getelementptr inbounds i8, i8* %opname, i64 5, !dbg !505
  %20 = load i8, i8* %arrayidx82, align 1, !dbg !505
  %cmp84 = icmp eq i8 %20, 0, !dbg !506
  br i1 %cmp84, label %for.cond88.preheader, label %if.end234, !dbg !507

for.cond88.preheader:                             ; preds = %land.lhs.true81
  br label %for.cond88, !dbg !508

for.cond88:                                       ; preds = %for.cond88.preheader, %for.inc110
  %i87.0 = phi i64 [ %inc111, %for.inc110 ], [ 0, %for.cond88.preheader ], !dbg !510
  call void @llvm.dbg.value(metadata i64 %i87.0, metadata !419, metadata !DIExpression()), !dbg !511
  %exitcond15 = icmp eq i64 %i87.0, 79, !dbg !512
  br i1 %exitcond15, label %if.end234.loopexit4, label %for.body91, !dbg !508

for.body91:                                       ; preds = %for.cond88
  %in93 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i87.0, i32 0, !dbg !514
  %21 = load i8*, i8** %in93, align 8, !dbg !514
  %call94 = call i64 @strlen(i8* %21) #6, !dbg !517
  %cmp95 = icmp eq i64 %call94, 3, !dbg !518
  br i1 %cmp95, label %land.lhs.true97, label %for.inc110, !dbg !519

land.lhs.true97:                                  ; preds = %for.body91
  %call101 = call i32 @memcmp(i8* %21, i8* nonnull %arrayidx37, i64 3) #6, !dbg !520
  %cmp102 = icmp eq i32 %call101, 0, !dbg !521
  br i1 %cmp102, label %if.then104, label %for.inc110, !dbg !522

if.then104:                                       ; preds = %land.lhs.true97
  %i87.0.lcssa19 = phi i64 [ %i87.0, %land.lhs.true97 ], !dbg !510
  call void @llvm.dbg.value(metadata i64 %i87.0.lcssa19, metadata !419, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i64 %i87.0.lcssa19, metadata !419, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i64 %i87.0.lcssa19, metadata !419, metadata !DIExpression()), !dbg !511
  %call105 = call i8* @strcat(i8* %result, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !523
  %out107 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i87.0.lcssa19, i32 1, !dbg !525
  %22 = load i8*, i8** %out107, align 8, !dbg !525
  %call108 = call i8* @strcat(i8* %result, i8* %22) #6, !dbg !526
  call void @llvm.dbg.value(metadata i32 1, metadata !385, metadata !DIExpression()), !dbg !430
  br label %if.end234, !dbg !527

for.inc110:                                       ; preds = %for.body91, %land.lhs.true97
  %inc111 = add nuw nsw i64 %i87.0, 1, !dbg !528
  call void @llvm.dbg.value(metadata i64 %inc111, metadata !419, metadata !DIExpression()), !dbg !511
  br label %for.cond88, !dbg !529, !llvm.loop !530

if.else115:                                       ; preds = %land.lhs.true43, %land.lhs.true36, %land.lhs.true31, %if.else
  %cmp116 = icmp sgt i32 %conv, 2, !dbg !532
  br i1 %cmp116, label %land.lhs.true118, label %if.else203, !dbg !533

land.lhs.true118:                                 ; preds = %if.else115
  %cmp121 = icmp eq i8 %3, 111, !dbg !534
  br i1 %cmp121, label %land.lhs.true123, label %if.else203, !dbg !535

land.lhs.true123:                                 ; preds = %land.lhs.true118
  %arrayidx124 = getelementptr inbounds i8, i8* %opname, i64 1, !dbg !536
  %23 = load i8, i8* %arrayidx124, align 1, !dbg !536
  %cmp126 = icmp eq i8 %23, 112, !dbg !537
  br i1 %cmp126, label %land.lhs.true128, label %if.else203, !dbg !538

land.lhs.true128:                                 ; preds = %land.lhs.true123
  %arrayidx129 = getelementptr inbounds i8, i8* %opname, i64 2, !dbg !539
  %24 = load i8, i8* %arrayidx129, align 1, !dbg !539
  %conv130 = sext i8 %24 to i32, !dbg !539
  %call131 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0), i32 %conv130) #6, !dbg !540
  %cmp132 = icmp eq i8* %call131, null, !dbg !541
  br i1 %cmp132, label %if.else203, label %if.then134, !dbg !542

if.then134:                                       ; preds = %land.lhs.true128
  %cmp135 = icmp sgt i32 %conv, 9, !dbg !543
  br i1 %cmp135, label %land.lhs.true137, label %if.else172, !dbg !544

land.lhs.true137:                                 ; preds = %if.then134
  %add.ptr138 = getelementptr inbounds i8, i8* %opname, i64 3, !dbg !545
  %call139 = call i32 @memcmp(i8* nonnull %add.ptr138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 7) #6, !dbg !546
  %cmp140 = icmp eq i32 %call139, 0, !dbg !547
  br i1 %cmp140, label %for.cond144.preheader, label %if.else172, !dbg !548

for.cond144.preheader:                            ; preds = %land.lhs.true137
  %sub = add nsw i32 %conv, -10, !dbg !549
  %add.ptr157 = getelementptr inbounds i8, i8* %opname, i64 10, !dbg !553
  %conv158 = sext i32 %sub to i64, !dbg !553
  br label %for.cond144, !dbg !555

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc169
  %i143.0 = phi i64 [ %inc170, %for.inc169 ], [ 0, %for.cond144.preheader ], !dbg !556
  call void @llvm.dbg.value(metadata i64 %i143.0, metadata !423, metadata !DIExpression()), !dbg !557
  %exitcond = icmp eq i64 %i143.0, 79, !dbg !558
  br i1 %exitcond, label %if.end234.loopexit, label %for.body147, !dbg !555

for.body147:                                      ; preds = %for.cond144
  call void @llvm.dbg.value(metadata i32 %sub, metadata !384, metadata !DIExpression()), !dbg !430
  %in149 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i143.0, i32 0, !dbg !559
  %25 = load i8*, i8** %in149, align 8, !dbg !559
  %call150 = call i64 @strlen(i8* %25) #6, !dbg !560
  %conv151 = trunc i64 %call150 to i32, !dbg !561
  %cmp152 = icmp eq i32 %sub, %conv151, !dbg !562
  br i1 %cmp152, label %land.lhs.true154, label %for.inc169, !dbg !563

land.lhs.true154:                                 ; preds = %for.body147
  %call159 = call i32 @memcmp(i8* %25, i8* nonnull %add.ptr157, i64 %conv158) #6, !dbg !564
  %cmp160 = icmp eq i32 %call159, 0, !dbg !565
  br i1 %cmp160, label %if.then162, label %for.inc169, !dbg !566

if.then162:                                       ; preds = %land.lhs.true154
  %i143.0.lcssa16 = phi i64 [ %i143.0, %land.lhs.true154 ], !dbg !556
  call void @llvm.dbg.value(metadata i64 %i143.0.lcssa16, metadata !423, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 %i143.0.lcssa16, metadata !423, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 %i143.0.lcssa16, metadata !423, metadata !DIExpression()), !dbg !557
  %call163 = call i8* @strcat(i8* %result, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !567
  %out165 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i143.0.lcssa16, i32 1, !dbg !569
  %26 = load i8*, i8** %out165, align 8, !dbg !569
  %call166 = call i8* @strcat(i8* %result, i8* %26) #6, !dbg !570
  %call167 = call i8* @strcat(i8* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !571
  call void @llvm.dbg.value(metadata i32 1, metadata !385, metadata !DIExpression()), !dbg !430
  br label %if.end234, !dbg !572

for.inc169:                                       ; preds = %for.body147, %land.lhs.true154
  %inc170 = add nuw nsw i64 %i143.0, 1, !dbg !573
  call void @llvm.dbg.value(metadata i64 %inc170, metadata !423, metadata !DIExpression()), !dbg !557
  br label %for.cond144, !dbg !574, !llvm.loop !575

if.else172:                                       ; preds = %land.lhs.true137, %if.then134
  call void @llvm.dbg.value(metadata i64 0, metadata !428, metadata !DIExpression()), !dbg !577
  %sub178 = add nsw i32 %conv, -3, !dbg !578
  %add.ptr188 = getelementptr inbounds i8, i8* %opname, i64 3, !dbg !582
  %conv189 = sext i32 %sub178 to i64, !dbg !582
  br label %for.cond174, !dbg !584

for.cond174:                                      ; preds = %for.inc199, %if.else172
  %i173.0 = phi i64 [ 0, %if.else172 ], [ %inc200, %for.inc199 ], !dbg !585
  call void @llvm.dbg.value(metadata i64 %i173.0, metadata !428, metadata !DIExpression()), !dbg !577
  %exitcond13 = icmp eq i64 %i173.0, 79, !dbg !586
  br i1 %exitcond13, label %if.end234.loopexit2, label %for.body177, !dbg !587

for.body177:                                      ; preds = %for.cond174
  call void @llvm.dbg.value(metadata i32 %sub178, metadata !384, metadata !DIExpression()), !dbg !430
  %in180 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i173.0, i32 0, !dbg !588
  %27 = load i8*, i8** %in180, align 8, !dbg !588
  %call181 = call i64 @strlen(i8* %27) #6, !dbg !589
  %conv182 = trunc i64 %call181 to i32, !dbg !590
  %cmp183 = icmp eq i32 %sub178, %conv182, !dbg !591
  br i1 %cmp183, label %land.lhs.true185, label %for.inc199, !dbg !592

land.lhs.true185:                                 ; preds = %for.body177
  %call190 = call i32 @memcmp(i8* %27, i8* nonnull %add.ptr188, i64 %conv189) #6, !dbg !593
  %cmp191 = icmp eq i32 %call190, 0, !dbg !594
  br i1 %cmp191, label %if.then193, label %for.inc199, !dbg !595

if.then193:                                       ; preds = %land.lhs.true185
  %i173.0.lcssa17 = phi i64 [ %i173.0, %land.lhs.true185 ], !dbg !585
  call void @llvm.dbg.value(metadata i64 %i173.0.lcssa17, metadata !428, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata i64 %i173.0.lcssa17, metadata !428, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata i64 %i173.0.lcssa17, metadata !428, metadata !DIExpression()), !dbg !577
  %call194 = call i8* @strcat(i8* %result, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !596
  %out196 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i173.0.lcssa17, i32 1, !dbg !598
  %28 = load i8*, i8** %out196, align 8, !dbg !598
  %call197 = call i8* @strcat(i8* %result, i8* %28) #6, !dbg !599
  call void @llvm.dbg.value(metadata i32 1, metadata !385, metadata !DIExpression()), !dbg !430
  br label %if.end234, !dbg !600

for.inc199:                                       ; preds = %for.body177, %land.lhs.true185
  %inc200 = add nuw nsw i64 %i173.0, 1, !dbg !601
  call void @llvm.dbg.value(metadata i64 %inc200, metadata !428, metadata !DIExpression()), !dbg !577
  br label %for.cond174, !dbg !602, !llvm.loop !603

if.else203:                                       ; preds = %land.lhs.true128, %land.lhs.true123, %land.lhs.true118, %if.else115
  %cmp204 = icmp sgt i32 %conv, 4, !dbg !605
  br i1 %cmp204, label %land.lhs.true206, label %if.end234, !dbg !607

land.lhs.true206:                                 ; preds = %if.else203
  %call207 = call i32 @memcmp(i8* %opname, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i64 4) #6, !dbg !608
  %cmp208 = icmp eq i32 %call207, 0, !dbg !609
  br i1 %cmp208, label %land.lhs.true210, label %if.end234, !dbg !610

land.lhs.true210:                                 ; preds = %land.lhs.true206
  %arrayidx211 = getelementptr inbounds i8, i8* %opname, i64 4, !dbg !611
  %29 = load i8, i8* %arrayidx211, align 1, !dbg !611
  %conv212 = sext i8 %29 to i32, !dbg !611
  %call213 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0), i32 %conv212) #6, !dbg !612
  %cmp214 = icmp eq i8* %call213, null, !dbg !613
  br i1 %cmp214, label %if.end234, label %if.then216, !dbg !614

if.then216:                                       ; preds = %land.lhs.true210
  %add.ptr217 = getelementptr inbounds i8, i8* %opname, i64 5, !dbg !615
  call void @llvm.dbg.value(metadata i8* %add.ptr217, metadata !412, metadata !DIExpression()), !dbg !430
  store i8* %add.ptr217, i8** %tem, align 8, !dbg !617
  %arraydecay218 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %work, i64 0, i64 0, !dbg !618
  call void @llvm.dbg.value(metadata %struct.string* %type, metadata !386, metadata !DIExpression(DW_OP_deref)), !dbg !430
  call void @llvm.dbg.value(metadata i8** %tem, metadata !412, metadata !DIExpression(DW_OP_deref)), !dbg !430
  %call219 = call fastcc i32 @do_type(%struct.work_stuff* nonnull %arraydecay218, i8** nonnull %tem, %struct.string* nonnull %type) #8, !dbg !620
  %tobool220 = icmp eq i32 %call219, 0, !dbg !620
  br i1 %tobool220, label %if.end234, label %if.then221, !dbg !621

if.then221:                                       ; preds = %if.then216
  %call222 = call i8* @strcat(i8* %result, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !622
  %b223 = getelementptr inbounds %struct.string, %struct.string* %type, i64 0, i32 0, !dbg !624
  %30 = load i8*, i8** %b223, align 8, !dbg !624
  %p224 = getelementptr inbounds %struct.string, %struct.string* %type, i64 0, i32 1, !dbg !625
  %31 = bitcast i8** %p224 to i64*, !dbg !625
  %32 = load i64, i64* %31, align 8, !dbg !625
  %.cast = ptrtoint i8* %30 to i64, !dbg !626
  %sub.ptr.sub228 = sub i64 %32, %.cast, !dbg !627
  %call229 = call i8* @strncat(i8* %result, i8* %30, i64 %sub.ptr.sub228) #6, !dbg !628
  call void @llvm.dbg.value(metadata %struct.string* %type, metadata !386, metadata !DIExpression(DW_OP_deref)), !dbg !430
  call fastcc void @string_delete(%struct.string* nonnull %type) #8, !dbg !629
  call void @llvm.dbg.value(metadata i32 1, metadata !385, metadata !DIExpression()), !dbg !430
  br label %if.end234, !dbg !630

if.end234.loopexit:                               ; preds = %for.cond144
  br label %if.end234, !dbg !631

if.end234.loopexit2:                              ; preds = %for.cond174
  br label %if.end234, !dbg !631

if.end234.loopexit3:                              ; preds = %for.cond
  br label %if.end234, !dbg !631

if.end234.loopexit4:                              ; preds = %for.cond88
  br label %if.end234, !dbg !631

if.end234:                                        ; preds = %if.end234.loopexit4, %if.end234.loopexit3, %if.end234.loopexit2, %if.end234.loopexit, %if.then, %if.then216, %land.lhs.true210, %if.else76, %land.lhs.true81, %if.then104, %if.then71, %if.else203, %land.lhs.true206, %if.then221, %if.then162, %if.then193, %if.then23
  %ret.12 = phi i32 [ 1, %if.then23 ], [ 0, %if.then ], [ 1, %if.then71 ], [ 0, %land.lhs.true81 ], [ 0, %if.else76 ], [ 1, %if.then104 ], [ 1, %if.then162 ], [ 1, %if.then193 ], [ 0, %land.lhs.true210 ], [ 0, %land.lhs.true206 ], [ 0, %if.else203 ], [ 1, %if.then221 ], [ 0, %if.then216 ], [ 0, %if.end234.loopexit ], [ 0, %if.end234.loopexit2 ], [ 0, %if.end234.loopexit3 ], [ 0, %if.end234.loopexit4 ], !dbg !632
  call void @llvm.dbg.value(metadata i32 %ret.12, metadata !385, metadata !DIExpression()), !dbg !430
  %arraydecay235 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %work, i64 0, i64 0, !dbg !631
  call fastcc void @squangle_mop_up(%struct.work_stuff* nonnull %arraydecay235) #8, !dbg !633
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !634
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #7, !dbg !634
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !634
  ret i32 %ret.12, !dbg !635
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* %result) unnamed_addr #5 !dbg !636 {
entry:
  %n = alloca i32, align 4
  %decl = alloca %struct.string, align 8
  %remembered_type = alloca i8*, align 8
  %temp = alloca %struct.string, align 8
  %temp134 = alloca %struct.string, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !642, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !643, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata %struct.string* %result, metadata !644, metadata !DIExpression()), !dbg !667
  %0 = bitcast i32* %n to i8*, !dbg !668
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !668
  %1 = bitcast %struct.string* %decl to i8*, !dbg !669
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !669
  %2 = bitcast i8** %remembered_type to i8*, !dbg !670
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !670
  call void @llvm.dbg.value(metadata i32 0, metadata !651, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_init(%struct.string* nonnull %decl) #8, !dbg !671
  call fastcc void @string_init(%struct.string* %result) #8, !dbg !672
  call void @llvm.dbg.value(metadata i32 0, metadata !646, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 1, metadata !647, metadata !DIExpression()), !dbg !667
  %options202 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !673
  %b206 = getelementptr inbounds %struct.string, %struct.string* %decl, i64 0, i32 0, !dbg !675
  %p207 = getelementptr inbounds %struct.string, %struct.string* %decl, i64 0, i32 1, !dbg !675
  %3 = bitcast %struct.string* %temp134 to i8*, !dbg !678
  %b138 = getelementptr inbounds %struct.string, %struct.string* %temp134, i64 0, i32 0, !dbg !679
  %p139 = getelementptr inbounds %struct.string, %struct.string* %temp134, i64 0, i32 1, !dbg !679
  %4 = bitcast i8** %p139 to i64*, !dbg !679
  %5 = bitcast %struct.string* %temp to i8*, !dbg !682
  %ntypes = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 8, !dbg !683
  %typevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 1, !dbg !685
  %6 = bitcast i8** %remembered_type to i64*, !dbg !685
  br label %while.cond, !dbg !687

while.cond:                                       ; preds = %sw.epilog217, %entry
  %success.0 = phi i32 [ 1, %entry ], [ %success.6, %sw.epilog217 ], !dbg !688
  %done.0 = phi i32 [ 0, %entry ], [ %done.1, %sw.epilog217 ], !dbg !667
  %tk.0 = phi i32 [ 0, %entry ], [ %tk.3, %sw.epilog217 ], !dbg !689
  %mangled.addr.0 = phi i8** [ %mangled, %entry ], [ %mangled.addr.2, %sw.epilog217 ]
  call void @llvm.dbg.value(metadata i8** %mangled.addr.0, metadata !643, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %tk.0, metadata !651, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %done.0, metadata !646, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !647, metadata !DIExpression()), !dbg !667
  %cond4 = icmp eq i32 %success.0, 0, !dbg !690
  br i1 %cond4, label %if.end269.loopexit, label %land.rhs, !dbg !690

land.rhs:                                         ; preds = %while.cond
  %tobool1 = icmp eq i32 %done.0, 0, !dbg !691
  br i1 %tobool1, label %while.body, label %while.end, !dbg !687

while.body:                                       ; preds = %land.rhs
  %7 = load i8*, i8** %mangled.addr.0, align 8, !dbg !692
  %8 = load i8, i8* %7, align 1, !dbg !693
  %conv = sext i8 %8 to i32, !dbg !693
  switch i32 %conv, label %sw.epilog217 [
    i32 80, label %sw.bb
    i32 112, label %sw.bb
    i32 82, label %sw.bb6
    i32 65, label %sw.bb12
    i32 84, label %sw.bb38
    i32 70, label %sw.bb48
    i32 77, label %sw.bb88
    i32 79, label %sw.bb88
    i32 71, label %sw.bb199
    i32 67, label %sw.bb201
    i32 86, label %sw.bb201
    i32 117, label %sw.bb201
  ], !dbg !694

sw.bb:                                            ; preds = %while.body, %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i64 1, !dbg !695
  store i8* %incdec.ptr, i8** %mangled.addr.0, align 8, !dbg !695
  %9 = load i32, i32* %options202, align 8, !dbg !696
  %and = and i32 %9, 4, !dbg !698
  %tobool2 = icmp eq i32 %and, 0, !dbg !698
  br i1 %tobool2, label %if.then, label %if.end, !dbg !699

if.then:                                          ; preds = %sw.bb
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #8, !dbg !700
  br label %if.end, !dbg !700

if.end:                                           ; preds = %sw.bb, %if.then
  %cmp = icmp eq i32 %tk.0, 0, !dbg !701
  %spec.select = select i1 %cmp, i32 1, i32 %tk.0, !dbg !703
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !651, metadata !DIExpression()), !dbg !667
  br label %sw.epilog217, !dbg !704

sw.bb6:                                           ; preds = %while.body
  %incdec.ptr7 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !705
  store i8* %incdec.ptr7, i8** %mangled.addr.0, align 8, !dbg !705
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0)) #8, !dbg !706
  %cmp8 = icmp eq i32 %tk.0, 0, !dbg !707
  %spec.select1 = select i1 %cmp8, i32 2, i32 %tk.0, !dbg !709
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !651, metadata !DIExpression()), !dbg !667
  br label %sw.epilog217, !dbg !710

sw.bb12:                                          ; preds = %while.body
  %incdec.ptr13 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !711
  store i8* %incdec.ptr13, i8** %mangled.addr.0, align 8, !dbg !711
  %10 = load i8*, i8** %b206, align 8, !dbg !713
  %11 = load i8*, i8** %p207, align 8, !dbg !713
  %cmp14 = icmp eq i8* %10, %11, !dbg !713
  br i1 %cmp14, label %if.end26, label %land.lhs.true, !dbg !715

land.lhs.true:                                    ; preds = %sw.bb12
  %12 = load i8, i8* %10, align 1, !dbg !716
  %cmp18 = icmp eq i8 %12, 42, !dbg !717
  br i1 %cmp18, label %if.then25, label %lor.lhs.false, !dbg !718

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp23 = icmp eq i8 %12, 38, !dbg !719
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !720

if.then25:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i64 0, i64 0)) #8, !dbg !721
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_append(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i64 0, i64 0)) #8, !dbg !723
  br label %if.end26, !dbg !724

if.end26:                                         ; preds = %if.then25, %lor.lhs.false, %sw.bb12
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_append(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0)) #8, !dbg !725
  %13 = load i8*, i8** %mangled.addr.0, align 8, !dbg !726
  %14 = load i8, i8* %13, align 1, !dbg !728
  %cmp28 = icmp eq i8 %14, 95, !dbg !729
  br i1 %cmp28, label %if.end31, label %if.then30, !dbg !730

if.then30:                                        ; preds = %if.end26
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  %call = call fastcc i32 @demangle_template_value_parm(%struct.work_stuff* %work, i8** %mangled.addr.0, %struct.string* nonnull %decl, i32 3) #8, !dbg !731
  call void @llvm.dbg.value(metadata i32 %call, metadata !647, metadata !DIExpression()), !dbg !667
  %.pre12 = load i8*, i8** %mangled.addr.0, align 8, !dbg !732
  %.pre13 = load i8, i8* %.pre12, align 1, !dbg !734
  br label %if.end31, !dbg !735

if.end31:                                         ; preds = %if.end26, %if.then30
  %15 = phi i8 [ %.pre13, %if.then30 ], [ 95, %if.end26 ], !dbg !734
  %16 = phi i8* [ %.pre12, %if.then30 ], [ %13, %if.end26 ], !dbg !732
  %success.1 = phi i32 [ %call, %if.then30 ], [ %success.0, %if.end26 ], !dbg !667
  call void @llvm.dbg.value(metadata i32 %success.1, metadata !647, metadata !DIExpression()), !dbg !667
  %cmp33 = icmp eq i8 %15, 95, !dbg !736
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !737

if.then35:                                        ; preds = %if.end31
  %incdec.ptr36 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !738
  store i8* %incdec.ptr36, i8** %mangled.addr.0, align 8, !dbg !738
  br label %if.end37, !dbg !738

if.end37:                                         ; preds = %if.then35, %if.end31
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_append(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.238, i64 0, i64 0)) #8, !dbg !739
  br label %sw.epilog217, !dbg !740

sw.bb38:                                          ; preds = %while.body
  %incdec.ptr39 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !741
  store i8* %incdec.ptr39, i8** %mangled.addr.0, align 8, !dbg !741
  call void @llvm.dbg.value(metadata i32* %n, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !667
  %call40 = call fastcc i32 @get_count(i8** %mangled.addr.0, i32* nonnull %n) #8, !dbg !742
  %tobool41 = icmp eq i32 %call40, 0, !dbg !742
  br i1 %tobool41, label %sw.epilog217, label %lor.lhs.false42, !dbg !743

lor.lhs.false42:                                  ; preds = %sw.bb38
  %17 = load i32, i32* %n, align 4, !dbg !744
  call void @llvm.dbg.value(metadata i32 %17, metadata !645, metadata !DIExpression()), !dbg !667
  %18 = load i32, i32* %ntypes, align 8, !dbg !745
  %cmp43 = icmp slt i32 %17, %18, !dbg !746
  br i1 %cmp43, label %if.else, label %sw.epilog217, !dbg !747

if.else:                                          ; preds = %lor.lhs.false42
  %19 = load i8**, i8*** %typevec, align 8, !dbg !748
  call void @llvm.dbg.value(metadata i32 %17, metadata !645, metadata !DIExpression()), !dbg !667
  %idxprom = sext i32 %17 to i64, !dbg !749
  %arrayidx46 = getelementptr inbounds i8*, i8** %19, i64 %idxprom, !dbg !749
  %20 = bitcast i8** %arrayidx46 to i64*, !dbg !749
  %21 = load i64, i64* %20, align 8, !dbg !749
  store i64 %21, i64* %6, align 8, !dbg !750
  call void @llvm.dbg.value(metadata i8** %remembered_type, metadata !643, metadata !DIExpression()), !dbg !667
  br label %sw.epilog217

sw.bb48:                                          ; preds = %while.body
  %incdec.ptr49 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !751
  store i8* %incdec.ptr49, i8** %mangled.addr.0, align 8, !dbg !751
  %22 = load i8*, i8** %b206, align 8, !dbg !752
  %23 = load i8*, i8** %p207, align 8, !dbg !752
  %cmp52 = icmp eq i8* %22, %23, !dbg !752
  br i1 %cmp52, label %if.end67, label %land.lhs.true54, !dbg !754

land.lhs.true54:                                  ; preds = %sw.bb48
  %24 = load i8, i8* %22, align 1, !dbg !755
  %cmp58 = icmp eq i8 %24, 42, !dbg !756
  br i1 %cmp58, label %if.then66, label %lor.lhs.false60, !dbg !757

lor.lhs.false60:                                  ; preds = %land.lhs.true54
  %cmp64 = icmp eq i8 %24, 38, !dbg !758
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !759

if.then66:                                        ; preds = %lor.lhs.false60, %land.lhs.true54
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i64 0, i64 0)) #8, !dbg !760
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_append(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i64 0, i64 0)) #8, !dbg !762
  br label %if.end67, !dbg !763

if.end67:                                         ; preds = %if.then66, %lor.lhs.false60, %sw.bb48
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  %call68 = call fastcc i32 @demangle_nested_args(%struct.work_stuff* %work, i8** %mangled.addr.0, %struct.string* nonnull %decl) #8, !dbg !764
  %tobool69 = icmp eq i32 %call68, 0, !dbg !764
  br i1 %tobool69, label %sw.epilog217, label %lor.lhs.false70, !dbg !766

lor.lhs.false70:                                  ; preds = %if.end67
  %25 = load i8*, i8** %mangled.addr.0, align 8, !dbg !767
  %26 = load i8, i8* %25, align 1, !dbg !768
  %cmp72 = icmp eq i8 %26, 95, !dbg !769
  br i1 %cmp72, label %if.end79, label %land.lhs.true74, !dbg !770

land.lhs.true74:                                  ; preds = %lor.lhs.false70
  %cmp76 = icmp eq i8 %26, 0, !dbg !771
  br i1 %cmp76, label %if.end79, label %sw.epilog217, !dbg !772

if.end79:                                         ; preds = %land.lhs.true74, %lor.lhs.false70
  br i1 false, label %if.end79.sw.epilog217_crit_edge, label %land.lhs.true81, !dbg !773

if.end79.sw.epilog217_crit_edge:                  ; preds = %if.end79
  br label %sw.epilog217, !dbg !773

land.lhs.true81:                                  ; preds = %if.end79
  br i1 %cmp72, label %if.then85, label %sw.epilog217, !dbg !775

if.then85:                                        ; preds = %land.lhs.true81
  %incdec.ptr86 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !776
  store i8* %incdec.ptr86, i8** %mangled.addr.0, align 8, !dbg !776
  br label %sw.epilog217, !dbg !777

sw.bb88:                                          ; preds = %while.body, %while.body
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()), !dbg !667
  %cmp90 = icmp eq i8 %8, 77, !dbg !778
  call void @llvm.dbg.value(metadata i1 %cmp90, metadata !652, metadata !DIExpression()), !dbg !779
  %incdec.ptr92 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !780
  store i8* %incdec.ptr92, i8** %mangled.addr.0, align 8, !dbg !780
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_append(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i64 0, i64 0)) #8, !dbg !781
  %27 = load i8*, i8** %mangled.addr.0, align 8, !dbg !782
  %28 = load i8, i8* %27, align 1, !dbg !784
  %cmp94 = icmp eq i8 %28, 81, !dbg !785
  br i1 %cmp94, label %if.end100, label %if.then96, !dbg !786

if.then96:                                        ; preds = %sw.bb88
  %29 = load i32, i32* %options202, align 8, !dbg !787
  %and98 = and i32 %29, 4, !dbg !787
  %tobool99 = icmp eq i32 %and98, 0, !dbg !787
  %cond = select i1 %tobool99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), !dbg !787
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* %cond) #8, !dbg !788
  %.pre10 = load i8*, i8** %mangled.addr.0, align 8, !dbg !789
  %.pre11 = load i8, i8* %.pre10, align 1, !dbg !789
  br label %if.end100, !dbg !788

if.end100:                                        ; preds = %sw.bb88, %if.then96
  %30 = phi i8 [ 81, %sw.bb88 ], [ %.pre11, %if.then96 ], !dbg !789
  %idxprom103 = zext i8 %30 to i64, !dbg !789
  %arrayidx104 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom103, !dbg !789
  %31 = load i16, i16* %arrayidx104, align 2, !dbg !789
  %32 = and i16 %31, 4, !dbg !789
  %tobool107 = icmp eq i16 %32, 0, !dbg !789
  br i1 %tobool107, label %if.else119, label %if.then108, !dbg !790

if.then108:                                       ; preds = %if.end100
  %call109 = call fastcc i32 @consume_count(i8** %mangled.addr.0) #8, !dbg !791
  call void @llvm.dbg.value(metadata i32 %call109, metadata !645, metadata !DIExpression()), !dbg !667
  store i32 %call109, i32* %n, align 4, !dbg !793
  call void @llvm.dbg.value(metadata i32 %call109, metadata !645, metadata !DIExpression()), !dbg !667
  %cmp110 = icmp eq i32 %call109, -1, !dbg !794
  br i1 %cmp110, label %sw.epilog217, label %lor.lhs.false112, !dbg !796

lor.lhs.false112:                                 ; preds = %if.then108
  %33 = load i8*, i8** %mangled.addr.0, align 8, !dbg !797
  %call113 = call i64 @strlen(i8* %33) #6, !dbg !798
  %conv114 = trunc i64 %call113 to i32, !dbg !799
  %34 = load i32, i32* %n, align 4, !dbg !800
  call void @llvm.dbg.value(metadata i32 %34, metadata !645, metadata !DIExpression()), !dbg !667
  %cmp115 = icmp sgt i32 %34, %conv114, !dbg !801
  br i1 %cmp115, label %sw.epilog217, label %if.end118, !dbg !802

if.end118:                                        ; preds = %lor.lhs.false112
  %35 = load i8*, i8** %mangled.addr.0, align 8, !dbg !803
  call void @llvm.dbg.value(metadata i32 %34, metadata !645, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_prependn(%struct.string* nonnull %decl, i8* %35, i32 %34) #8, !dbg !804
  %36 = load i32, i32* %n, align 4, !dbg !805
  call void @llvm.dbg.value(metadata i32 %36, metadata !645, metadata !DIExpression()), !dbg !667
  %37 = load i8*, i8** %mangled.addr.0, align 8, !dbg !806
  %idx.ext = sext i32 %36 to i64, !dbg !806
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext, !dbg !806
  store i8* %add.ptr, i8** %mangled.addr.0, align 8, !dbg !806
  br label %if.end157, !dbg !807

if.else119:                                       ; preds = %if.end100
  %cmp121 = icmp eq i8 %30, 88, !dbg !808
  br i1 %cmp121, label %if.then127, label %lor.lhs.false123, !dbg !809

lor.lhs.false123:                                 ; preds = %if.else119
  %cmp125 = icmp eq i8 %30, 89, !dbg !810
  br i1 %cmp125, label %if.then127, label %if.else129, !dbg !811

if.then127:                                       ; preds = %lor.lhs.false123, %if.else119
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !812
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !654, metadata !DIExpression(DW_OP_deref)), !dbg !682
  %call128 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled.addr.0, %struct.string* nonnull %temp) #8, !dbg !813
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !654, metadata !DIExpression(DW_OP_deref)), !dbg !682
  call fastcc void @string_prepends(%struct.string* nonnull %decl, %struct.string* nonnull %temp) #8, !dbg !814
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !654, metadata !DIExpression(DW_OP_deref)), !dbg !682
  call fastcc void @string_delete(%struct.string* nonnull %temp) #8, !dbg !815
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !816
  br label %if.end157, !dbg !817

if.else129:                                       ; preds = %lor.lhs.false123
  %cmp131 = icmp eq i8 %30, 116, !dbg !818
  br i1 %cmp131, label %if.then133, label %if.else144, !dbg !819

if.then133:                                       ; preds = %if.else129
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !820
  call void @llvm.dbg.value(metadata %struct.string* %temp134, metadata !660, metadata !DIExpression(DW_OP_deref)), !dbg !678
  call fastcc void @string_init(%struct.string* nonnull %temp134) #8, !dbg !821
  call void @llvm.dbg.value(metadata %struct.string* %temp134, metadata !660, metadata !DIExpression(DW_OP_deref)), !dbg !678
  %call135 = call fastcc i32 @demangle_template(%struct.work_stuff* %work, i8** %mangled.addr.0, %struct.string* nonnull %temp134, %struct.string* null, i32 1, i32 1) #8, !dbg !822
  call void @llvm.dbg.value(metadata i32 %call135, metadata !647, metadata !DIExpression()), !dbg !667
  %tobool136 = icmp eq i32 %call135, 0, !dbg !823
  br i1 %tobool136, label %cleanup, label %if.then137, !dbg !824

if.then137:                                       ; preds = %if.then133
  %38 = load i8*, i8** %b138, align 8, !dbg !825
  %39 = load i64, i64* %4, align 8, !dbg !826
  %.cast = ptrtoint i8* %38 to i64, !dbg !827
  %sub.ptr.sub = sub i64 %39, %.cast, !dbg !828
  %conv141 = trunc i64 %sub.ptr.sub to i32, !dbg !829
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_prependn(%struct.string* nonnull %decl, i8* %38, i32 %conv141) #8, !dbg !830
  call void @llvm.dbg.value(metadata %struct.string* %temp134, metadata !660, metadata !DIExpression(DW_OP_deref)), !dbg !678
  call fastcc void @string_delete(%struct.string* nonnull %temp134) #8, !dbg !831
  br label %cleanup, !dbg !832

cleanup:                                          ; preds = %if.then133, %if.then137
  %cleanup.dest.slot.0 = phi i1 [ true, %if.then137 ], [ false, %if.then133 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !832
  br i1 %cleanup.dest.slot.0, label %if.end157, label %sw.epilog217

if.else144:                                       ; preds = %if.else129
  %cmp146 = icmp eq i8 %30, 81, !dbg !833
  br i1 %cmp146, label %if.then148, label %sw.epilog217, !dbg !835

if.then148:                                       ; preds = %if.else144
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  %call149 = call fastcc i32 @demangle_qualified(%struct.work_stuff* %work, i8** %mangled.addr.0, %struct.string* nonnull %decl, i32 0, i32 0) #8, !dbg !836
  call void @llvm.dbg.value(metadata i32 %call149, metadata !647, metadata !DIExpression()), !dbg !667
  %tobool150 = icmp eq i32 %call149, 0, !dbg !838
  br i1 %tobool150, label %sw.epilog217, label %if.end157, !dbg !840

if.end157:                                        ; preds = %if.then148, %if.then127, %cleanup, %if.end118
  %success.5 = phi i32 [ %success.0, %if.end118 ], [ %success.0, %if.then127 ], [ %call135, %cleanup ], [ %call149, %if.then148 ], !dbg !688
  call void @llvm.dbg.value(metadata i32 %success.5, metadata !647, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i64 0, i64 0)) #8, !dbg !841
  br i1 %cmp90, label %if.then159, label %if.end171, !dbg !842

if.then159:                                       ; preds = %if.end157
  %40 = load i8*, i8** %mangled.addr.0, align 8, !dbg !843
  %41 = load i8, i8* %40, align 1, !dbg !846
  %conv160 = sext i8 %41 to i32, !dbg !846
  switch i32 %conv160, label %sw.epilog [
    i32 67, label %sw.bb161
    i32 86, label %sw.bb161
    i32 117, label %sw.bb161
  ], !dbg !847

sw.bb161:                                         ; preds = %if.then159, %if.then159, %if.then159
  %call163 = call fastcc i32 @code_for_qualifier(i32 %conv160) #8, !dbg !848
  call void @llvm.dbg.value(metadata i32 %call163, metadata !650, metadata !DIExpression()), !dbg !667
  %42 = load i8*, i8** %mangled.addr.0, align 8, !dbg !850
  %incdec.ptr164 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !850
  store i8* %incdec.ptr164, i8** %mangled.addr.0, align 8, !dbg !850
  br label %sw.epilog, !dbg !851

sw.epilog:                                        ; preds = %if.then159, %sw.bb161
  %43 = phi i8* [ %incdec.ptr164, %sw.bb161 ], [ %40, %if.then159 ], !dbg !852
  %type_quals.0 = phi i32 [ %call163, %sw.bb161 ], [ 0, %if.then159 ], !dbg !854
  call void @llvm.dbg.value(metadata i32 %type_quals.0, metadata !650, metadata !DIExpression()), !dbg !667
  %incdec.ptr165 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !852
  store i8* %incdec.ptr165, i8** %mangled.addr.0, align 8, !dbg !852
  %44 = load i8, i8* %43, align 1, !dbg !855
  %cmp167 = icmp eq i8 %44, 70, !dbg !856
  br i1 %cmp167, label %if.end171, label %sw.epilog217, !dbg !857

if.end171:                                        ; preds = %sw.epilog, %if.end157
  %type_quals.1 = phi i32 [ 0, %if.end157 ], [ %type_quals.0, %sw.epilog ], !dbg !858
  call void @llvm.dbg.value(metadata i32 %type_quals.1, metadata !650, metadata !DIExpression()), !dbg !667
  br i1 %cmp90, label %land.lhs.true173, label %lor.lhs.false176, !dbg !859

land.lhs.true173:                                 ; preds = %if.end171
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  %call174 = call fastcc i32 @demangle_nested_args(%struct.work_stuff* %work, i8** %mangled.addr.0, %struct.string* nonnull %decl) #8, !dbg !861
  %tobool175 = icmp eq i32 %call174, 0, !dbg !861
  br i1 %tobool175, label %sw.epilog217, label %lor.lhs.false176, !dbg !862

lor.lhs.false176:                                 ; preds = %land.lhs.true173, %if.end171
  %45 = load i8*, i8** %mangled.addr.0, align 8, !dbg !863
  %46 = load i8, i8* %45, align 1, !dbg !864
  %cmp178 = icmp eq i8 %46, 95, !dbg !865
  br i1 %cmp178, label %if.end181, label %sw.epilog217, !dbg !866

if.end181:                                        ; preds = %lor.lhs.false176
  %incdec.ptr182 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !867
  store i8* %incdec.ptr182, i8** %mangled.addr.0, align 8, !dbg !867
  %47 = load i32, i32* %options202, align 8, !dbg !868
  %and184 = and i32 %47, 2, !dbg !868
  %tobool185 = icmp ne i32 %and184, 0, !dbg !868
  %cmp188 = icmp ne i32 %type_quals.1, 0, !dbg !870
  %or.cond = and i1 %tobool185, %cmp188, !dbg !872
  br i1 %or.cond, label %if.then190, label %sw.epilog217, !dbg !872

if.then190:                                       ; preds = %if.end181
  %48 = load i8*, i8** %b206, align 8, !dbg !873
  %49 = load i8*, i8** %p207, align 8, !dbg !873
  %cmp193 = icmp eq i8* %48, %49, !dbg !873
  br i1 %cmp193, label %if.end196, label %if.then195, !dbg !877

if.then195:                                       ; preds = %if.then190
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_append(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !873
  br label %if.end196, !dbg !873

if.end196:                                        ; preds = %if.then195, %if.then190
  %call197 = call fastcc i8* @qualifier_string(i32 %type_quals.1) #8, !dbg !878
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_append(%struct.string* nonnull %decl, i8* %call197) #8, !dbg !879
  br label %sw.epilog217, !dbg !880

sw.bb199:                                         ; preds = %while.body
  %incdec.ptr200 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !881
  store i8* %incdec.ptr200, i8** %mangled.addr.0, align 8, !dbg !881
  br label %sw.epilog217, !dbg !882

sw.bb201:                                         ; preds = %while.body, %while.body, %while.body
  %50 = load i32, i32* %options202, align 8, !dbg !883
  %and203 = and i32 %50, 2, !dbg !883
  %tobool204 = icmp eq i32 %and203, 0, !dbg !883
  br i1 %tobool204, label %if.end214, label %if.then205, !dbg !884

if.then205:                                       ; preds = %sw.bb201
  %51 = load i8*, i8** %b206, align 8, !dbg !885
  %52 = load i8*, i8** %p207, align 8, !dbg !885
  %cmp208 = icmp eq i8* %51, %52, !dbg !885
  br i1 %cmp208, label %if.end211, label %if.then210, !dbg !886

if.then210:                                       ; preds = %if.then205
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !887
  %.pre = load i8*, i8** %mangled.addr.0, align 8, !dbg !888
  %.pre8 = load i8, i8* %.pre, align 1, !dbg !889
  %.pre14 = sext i8 %.pre8 to i32, !dbg !889
  br label %if.end211, !dbg !887

if.end211:                                        ; preds = %if.then210, %if.then205
  %conv212.pre-phi = phi i32 [ %.pre14, %if.then210 ], [ %conv, %if.then205 ], !dbg !889
  %call213 = call fastcc i8* @demangle_qualifier(i32 %conv212.pre-phi) #8, !dbg !890
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* %call213) #8, !dbg !891
  %.pre9 = load i8*, i8** %mangled.addr.0, align 8, !dbg !892
  br label %if.end214, !dbg !893

if.end214:                                        ; preds = %sw.bb201, %if.end211
  %53 = phi i8* [ %7, %sw.bb201 ], [ %.pre9, %if.end211 ], !dbg !892
  %incdec.ptr215 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !892
  store i8* %incdec.ptr215, i8** %mangled.addr.0, align 8, !dbg !892
  br label %sw.epilog217, !dbg !894

sw.epilog217:                                     ; preds = %if.end79.sw.epilog217_crit_edge, %lor.lhs.false42, %sw.bb38, %land.lhs.true74, %if.end67, %sw.epilog, %land.lhs.true173, %lor.lhs.false176, %if.then148, %while.body, %if.end196, %if.end181, %if.else144, %cleanup, %if.then108, %lor.lhs.false112, %land.lhs.true81, %if.then85, %if.else, %if.end214, %sw.bb199, %if.end37, %sw.bb6, %if.end
  %success.6 = phi i32 [ %success.0, %if.end214 ], [ %success.0, %sw.bb199 ], [ %call135, %cleanup ], [ %success.1, %if.end37 ], [ %success.0, %sw.bb6 ], [ %success.0, %if.end ], [ %success.0, %if.else ], [ 0, %lor.lhs.false42 ], [ 0, %sw.bb38 ], [ 0, %land.lhs.true74 ], [ 0, %if.end67 ], [ %success.0, %if.then85 ], [ %success.0, %land.lhs.true81 ], [ undef, %if.end79.sw.epilog217_crit_edge ], [ 0, %lor.lhs.false112 ], [ 0, %if.then108 ], [ 0, %if.then148 ], [ 0, %if.else144 ], [ 0, %sw.epilog ], [ 0, %lor.lhs.false176 ], [ 0, %land.lhs.true173 ], [ %success.5, %if.end181 ], [ %success.5, %if.end196 ], [ %success.0, %while.body ], !dbg !667
  %done.1 = phi i32 [ 0, %if.end214 ], [ 0, %sw.bb199 ], [ 0, %cleanup ], [ 0, %if.end37 ], [ 0, %sw.bb6 ], [ 0, %if.end ], [ 0, %if.else ], [ 0, %lor.lhs.false42 ], [ 0, %sw.bb38 ], [ 0, %land.lhs.true74 ], [ 0, %if.end67 ], [ 0, %if.then85 ], [ 0, %land.lhs.true81 ], [ undef, %if.end79.sw.epilog217_crit_edge ], [ 0, %lor.lhs.false112 ], [ 0, %if.then108 ], [ 0, %if.then148 ], [ 0, %if.else144 ], [ 0, %sw.epilog ], [ 0, %lor.lhs.false176 ], [ 0, %land.lhs.true173 ], [ 0, %if.end181 ], [ 0, %if.end196 ], [ 1, %while.body ], !dbg !667
  %tk.3 = phi i32 [ %tk.0, %if.end214 ], [ %tk.0, %sw.bb199 ], [ %tk.0, %cleanup ], [ %tk.0, %if.end37 ], [ %spec.select1, %sw.bb6 ], [ %spec.select, %if.end ], [ %tk.0, %if.else ], [ %tk.0, %lor.lhs.false42 ], [ %tk.0, %sw.bb38 ], [ %tk.0, %land.lhs.true74 ], [ %tk.0, %if.end67 ], [ %tk.0, %if.then85 ], [ %tk.0, %land.lhs.true81 ], [ undef, %if.end79.sw.epilog217_crit_edge ], [ %tk.0, %lor.lhs.false112 ], [ %tk.0, %if.then108 ], [ %tk.0, %if.then148 ], [ %tk.0, %if.else144 ], [ %tk.0, %sw.epilog ], [ %tk.0, %lor.lhs.false176 ], [ %tk.0, %land.lhs.true173 ], [ %tk.0, %if.end181 ], [ %tk.0, %if.end196 ], [ %tk.0, %while.body ], !dbg !667
  %mangled.addr.2 = phi i8** [ %mangled.addr.0, %if.end214 ], [ %mangled.addr.0, %sw.bb199 ], [ %mangled.addr.0, %cleanup ], [ %mangled.addr.0, %if.end37 ], [ %mangled.addr.0, %sw.bb6 ], [ %mangled.addr.0, %if.end ], [ %remembered_type, %if.else ], [ %mangled.addr.0, %lor.lhs.false42 ], [ %mangled.addr.0, %sw.bb38 ], [ %mangled.addr.0, %land.lhs.true74 ], [ %mangled.addr.0, %if.end67 ], [ %mangled.addr.0, %if.then85 ], [ %mangled.addr.0, %land.lhs.true81 ], [ undef, %if.end79.sw.epilog217_crit_edge ], [ %mangled.addr.0, %lor.lhs.false112 ], [ %mangled.addr.0, %if.then108 ], [ %mangled.addr.0, %if.then148 ], [ %mangled.addr.0, %if.else144 ], [ %mangled.addr.0, %sw.epilog ], [ %mangled.addr.0, %lor.lhs.false176 ], [ %mangled.addr.0, %land.lhs.true173 ], [ %mangled.addr.0, %if.end181 ], [ %mangled.addr.0, %if.end196 ], [ %mangled.addr.0, %while.body ]
  call void @llvm.dbg.value(metadata i8** %mangled.addr.2, metadata !643, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %tk.3, metadata !651, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %done.1, metadata !646, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %success.6, metadata !647, metadata !DIExpression()), !dbg !667
  br label %while.cond, !dbg !687, !llvm.loop !895

while.end:                                        ; preds = %land.rhs
  %success.0.lcssa20 = phi i32 [ %success.0, %land.rhs ], !dbg !688
  %tk.0.lcssa19 = phi i32 [ %tk.0, %land.rhs ], !dbg !689
  %mangled.addr.0.lcssa18 = phi i8** [ %mangled.addr.0, %land.rhs ]
  call void @llvm.dbg.value(metadata i32 %success.0.lcssa20, metadata !647, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %tk.0.lcssa19, metadata !651, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8** %mangled.addr.0.lcssa18, metadata !643, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %success.0.lcssa20, metadata !647, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %tk.0.lcssa19, metadata !651, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8** %mangled.addr.0.lcssa18, metadata !643, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %success.0.lcssa20, metadata !647, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %tk.0.lcssa19, metadata !651, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8** %mangled.addr.0.lcssa18, metadata !643, metadata !DIExpression()), !dbg !667
  br i1 false, label %while.end.if.end269_crit_edge, label %if.then219, !dbg !897

while.end.if.end269_crit_edge:                    ; preds = %while.end
  br label %if.end269, !dbg !897

if.then219:                                       ; preds = %while.end
  %54 = load i8*, i8** %mangled.addr.0.lcssa18, align 8, !dbg !898
  %55 = load i8, i8* %54, align 1, !dbg !899
  %conv220 = sext i8 %55 to i32, !dbg !899
  switch i32 %conv220, label %sw.default262 [
    i32 81, label %sw.bb221
    i32 75, label %sw.bb221
    i32 66, label %sw.bb223
    i32 88, label %sw.bb235
    i32 89, label %sw.bb235
  ], !dbg !900

sw.bb221:                                         ; preds = %if.then219, %if.then219
  %call222 = call fastcc i32 @demangle_qualified(%struct.work_stuff* %work, i8** %mangled.addr.0.lcssa18, %struct.string* %result, i32 0, i32 1) #8, !dbg !901
  call void @llvm.dbg.value(metadata i32 %call222, metadata !647, metadata !DIExpression()), !dbg !667
  br label %if.end269, !dbg !903

sw.bb223:                                         ; preds = %if.then219
  %incdec.ptr224 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !904
  store i8* %incdec.ptr224, i8** %mangled.addr.0.lcssa18, align 8, !dbg !904
  call void @llvm.dbg.value(metadata i32* %n, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !667
  %call225 = call fastcc i32 @get_count(i8** %mangled.addr.0.lcssa18, i32* nonnull %n) #8, !dbg !905
  %tobool226 = icmp eq i32 %call225, 0, !dbg !905
  br i1 %tobool226, label %if.end269, label %lor.lhs.false227, !dbg !907

lor.lhs.false227:                                 ; preds = %sw.bb223
  %56 = load i32, i32* %n, align 4, !dbg !908
  call void @llvm.dbg.value(metadata i32 %56, metadata !645, metadata !DIExpression()), !dbg !667
  %numb = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 5, !dbg !909
  %57 = load i32, i32* %numb, align 4, !dbg !909
  %cmp228 = icmp slt i32 %56, %57, !dbg !910
  br i1 %cmp228, label %if.else231, label %if.end269, !dbg !911

if.else231:                                       ; preds = %lor.lhs.false227
  %btypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 3, !dbg !912
  %58 = load i8**, i8*** %btypevec, align 8, !dbg !912
  call void @llvm.dbg.value(metadata i32 %56, metadata !645, metadata !DIExpression()), !dbg !667
  %idxprom232 = sext i32 %56 to i64, !dbg !913
  %arrayidx233 = getelementptr inbounds i8*, i8** %58, i64 %idxprom232, !dbg !913
  %59 = load i8*, i8** %arrayidx233, align 8, !dbg !913
  call fastcc void @string_append(%struct.string* %result, i8* %59) #8, !dbg !914
  br label %if.end269

sw.bb235:                                         ; preds = %if.then219, %if.then219
  %incdec.ptr236 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !915
  store i8* %incdec.ptr236, i8** %mangled.addr.0.lcssa18, align 8, !dbg !915
  %call237 = call fastcc i32 @consume_count_with_underscores(i8** %mangled.addr.0.lcssa18) #8, !dbg !916
  call void @llvm.dbg.value(metadata i32 %call237, metadata !663, metadata !DIExpression()), !dbg !917
  %cmp238 = icmp eq i32 %call237, -1, !dbg !918
  br i1 %cmp238, label %if.end269, label %lor.lhs.false240, !dbg !920

lor.lhs.false240:                                 ; preds = %sw.bb235
  %tmpl_argvec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 16, !dbg !921
  %60 = load i8**, i8*** %tmpl_argvec, align 8, !dbg !921
  %tobool241 = icmp eq i8** %60, null, !dbg !922
  br i1 %tobool241, label %lor.lhs.false245, label %land.lhs.true242, !dbg !923

land.lhs.true242:                                 ; preds = %lor.lhs.false240
  %ntmpl_args = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 17, !dbg !924
  %61 = load i32, i32* %ntmpl_args, align 8, !dbg !924
  %cmp243 = icmp slt i32 %call237, %61, !dbg !925
  br i1 %cmp243, label %lor.lhs.false245, label %if.end269, !dbg !926

lor.lhs.false245:                                 ; preds = %land.lhs.true242, %lor.lhs.false240
  %call246 = call fastcc i32 @consume_count_with_underscores(i8** %mangled.addr.0.lcssa18) #8, !dbg !927
  %cmp247 = icmp eq i32 %call246, -1, !dbg !928
  br i1 %cmp247, label %if.end269, label %if.end250, !dbg !929

if.end250:                                        ; preds = %lor.lhs.false245
  %62 = load i8**, i8*** %tmpl_argvec, align 8, !dbg !930
  %tobool252 = icmp eq i8** %62, null, !dbg !932
  br i1 %tobool252, label %if.else257, label %if.then253, !dbg !933

if.then253:                                       ; preds = %if.end250
  %idxprom255 = sext i32 %call237 to i64, !dbg !934
  %arrayidx256 = getelementptr inbounds i8*, i8** %62, i64 %idxprom255, !dbg !934
  %63 = load i8*, i8** %arrayidx256, align 8, !dbg !934
  call fastcc void @string_append(%struct.string* %result, i8* %63) #8, !dbg !935
  br label %if.end269, !dbg !935

if.else257:                                       ; preds = %if.end250
  call fastcc void @string_append_template_idx(%struct.string* %result, i32 %call237) #8, !dbg !936
  br label %if.end269

sw.default262:                                    ; preds = %if.then219
  %call263 = call fastcc i32 @demangle_fund_type(%struct.work_stuff* %work, i8** %mangled.addr.0.lcssa18, %struct.string* %result) #8, !dbg !937
  call void @llvm.dbg.value(metadata i32 %call263, metadata !647, metadata !DIExpression()), !dbg !667
  %cmp264 = icmp eq i32 %tk.0.lcssa19, 0, !dbg !938
  %spec.select3 = select i1 %cmp264, i32 %call263, i32 %tk.0.lcssa19, !dbg !940
  call void @llvm.dbg.value(metadata i32 %spec.select3, metadata !651, metadata !DIExpression()), !dbg !667
  br label %if.end269, !dbg !941

if.end269.loopexit:                               ; preds = %while.cond
  %tk.0.lcssa = phi i32 [ %tk.0, %while.cond ], !dbg !689
  call void @llvm.dbg.value(metadata i32 %tk.0.lcssa, metadata !651, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %tk.0.lcssa, metadata !651, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %tk.0.lcssa, metadata !651, metadata !DIExpression()), !dbg !667
  br label %if.end269, !dbg !942

if.end269:                                        ; preds = %while.end.if.end269_crit_edge, %if.end269.loopexit, %lor.lhs.false227, %sw.bb223, %land.lhs.true242, %lor.lhs.false245, %sw.bb235, %if.else257, %if.then253, %sw.bb221, %sw.default262, %if.else231
  %success.10 = phi i32 [ undef, %while.end.if.end269_crit_edge ], [ %call263, %sw.default262 ], [ %call222, %sw.bb221 ], [ %success.0.lcssa20, %if.else231 ], [ 0, %lor.lhs.false227 ], [ 0, %sw.bb223 ], [ 0, %lor.lhs.false245 ], [ 0, %land.lhs.true242 ], [ 0, %sw.bb235 ], [ 1, %if.else257 ], [ 1, %if.then253 ], [ 0, %if.end269.loopexit ], !dbg !667
  %tk.6 = phi i32 [ undef, %while.end.if.end269_crit_edge ], [ %spec.select3, %sw.default262 ], [ %tk.0.lcssa19, %sw.bb221 ], [ %tk.0.lcssa19, %if.else231 ], [ %tk.0.lcssa19, %lor.lhs.false227 ], [ %tk.0.lcssa19, %sw.bb223 ], [ %tk.0.lcssa19, %lor.lhs.false245 ], [ %tk.0.lcssa19, %land.lhs.true242 ], [ %tk.0.lcssa19, %sw.bb235 ], [ %tk.0.lcssa19, %if.else257 ], [ %tk.0.lcssa19, %if.then253 ], [ %tk.0.lcssa, %if.end269.loopexit ], !dbg !667
  call void @llvm.dbg.value(metadata i32 %tk.6, metadata !651, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %success.10, metadata !647, metadata !DIExpression()), !dbg !667
  %tobool270 = icmp eq i32 %success.10, 0, !dbg !942
  br i1 %tobool270, label %if.else278, label %if.then271, !dbg !944

if.then271:                                       ; preds = %if.end269
  %64 = load i8*, i8** %b206, align 8, !dbg !945
  %65 = load i8*, i8** %p207, align 8, !dbg !945
  %cmp274 = icmp eq i8* %64, %65, !dbg !945
  br i1 %cmp274, label %if.end279, label %if.then276, !dbg !948

if.then276:                                       ; preds = %if.then271
  call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !949
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_appends(%struct.string* %result, %struct.string* nonnull %decl) #8, !dbg !951
  br label %if.end279, !dbg !952

if.else278:                                       ; preds = %if.end269
  call fastcc void @string_delete(%struct.string* %result) #8, !dbg !953
  br label %if.end279

if.end279:                                        ; preds = %if.then271, %if.then276, %if.else278
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !667
  call fastcc void @string_delete(%struct.string* nonnull %decl) #8, !dbg !954
  %cmp282 = icmp eq i32 %tk.6, 0, !dbg !955
  %.tk.6 = select i1 %cmp282, i32 3, i32 %tk.6, !dbg !955
  %retval.0 = select i1 %tobool270, i32 0, i32 %.tk.6, !dbg !955
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !956
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !956
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !956
  ret i32 %retval.0, !dbg !956
}

declare dso_local i8* @strcat(i8*, i8*) local_unnamed_addr #2

declare dso_local i8* @strncat(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @string_delete(%struct.string* %s) unnamed_addr #5 !dbg !957 {
entry:
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !961, metadata !DIExpression()), !dbg !962
  %b = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 0, !dbg !963
  %0 = load i8*, i8** %b, align 8, !dbg !963
  %cmp = icmp eq i8* %0, null, !dbg !965
  br i1 %cmp, label %if.end, label %if.then, !dbg !966

if.then:                                          ; preds = %entry
  tail call void @free(i8* nonnull %0) #6, !dbg !967
  %p = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 1, !dbg !969
  store i8* null, i8** %p, align 8, !dbg !970
  %e = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 2, !dbg !971
  store i8* null, i8** %e, align 8, !dbg !972
  store i8* null, i8** %b, align 8, !dbg !973
  br label %if.end, !dbg !974

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !975
}

declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @squangle_mop_up(%struct.work_stuff* %work) unnamed_addr #5 !dbg !976 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !980, metadata !DIExpression()), !dbg !981
  tail call fastcc void @forget_B_and_K_types(%struct.work_stuff* %work) #8, !dbg !982
  %btypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 3, !dbg !983
  %0 = load i8**, i8*** %btypevec, align 8, !dbg !983
  %cmp = icmp eq i8** %0, null, !dbg !985
  br i1 %cmp, label %if.end, label %if.then, !dbg !986

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %0 to i8*, !dbg !986
  tail call void @free(i8* nonnull %1) #6, !dbg !987
  br label %if.end, !dbg !989

if.end:                                           ; preds = %entry, %if.then
  %ktypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 2, !dbg !990
  %2 = load i8**, i8*** %ktypevec, align 8, !dbg !990
  %cmp2 = icmp eq i8** %2, null, !dbg !992
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !993

if.then3:                                         ; preds = %if.end
  %3 = bitcast i8** %2 to i8*, !dbg !993
  tail call void @free(i8* nonnull %3) #6, !dbg !994
  br label %if.end5, !dbg !996

if.end5:                                          ; preds = %if.end, %if.then3
  ret void, !dbg !997
}

; Function Attrs: nounwind uwtable
define dso_local i8* @cplus_mangle_opname(i8* %opname, i32 %options) local_unnamed_addr #5 !dbg !998 {
entry:
  call void @llvm.dbg.value(metadata i8* %opname, metadata !1002, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i32 %options, metadata !1003, metadata !DIExpression()), !dbg !1006
  %call = tail call i64 @strlen(i8* %opname) #6, !dbg !1007
  %conv = trunc i64 %call to i32, !dbg !1007
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 0, metadata !1004, metadata !DIExpression()), !dbg !1006
  %sext = shl i64 %call, 32, !dbg !1008
  %conv13 = ashr exact i64 %sext, 32, !dbg !1008
  br label %for.cond, !dbg !1013

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1014
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1004, metadata !DIExpression()), !dbg !1006
  %exitcond = icmp eq i64 %i.0, 79, !dbg !1015
  br i1 %exitcond, label %cleanup.loopexit, label %for.body, !dbg !1016

for.body:                                         ; preds = %for.cond
  %out = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.0, i32 1, !dbg !1017
  %0 = load i8*, i8** %out, align 8, !dbg !1017
  %call2 = tail call i64 @strlen(i8* %0) #6, !dbg !1018
  %conv3 = trunc i64 %call2 to i32, !dbg !1019
  %cmp4 = icmp eq i32 %conv3, %conv, !dbg !1020
  br i1 %cmp4, label %land.lhs.true, label %for.inc, !dbg !1021

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.0, i32 2, !dbg !1022
  %1 = load i32, i32* %flags, align 8, !dbg !1022
  %2 = xor i32 %1, %options, !dbg !1023
  %3 = and i32 %2, 2, !dbg !1023
  %cmp8 = icmp eq i32 %3, 0, !dbg !1023
  br i1 %cmp8, label %land.lhs.true10, label %for.inc, !dbg !1024

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call14 = tail call i32 @memcmp(i8* %0, i8* %opname, i64 %conv13) #6, !dbg !1025
  %cmp15 = icmp eq i32 %call14, 0, !dbg !1026
  br i1 %cmp15, label %if.then, label %for.inc, !dbg !1027

if.then:                                          ; preds = %land.lhs.true10
  %i.0.lcssa3 = phi i64 [ %i.0, %land.lhs.true10 ], !dbg !1014
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa3, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa3, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa3, metadata !1004, metadata !DIExpression()), !dbg !1006
  %in = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.0.lcssa3, i32 0, !dbg !1028
  %4 = load i8*, i8** %in, align 8, !dbg !1028
  br label %cleanup, !dbg !1029

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true10
  %inc = add nuw nsw i64 %i.0, 1, !dbg !1030
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1004, metadata !DIExpression()), !dbg !1006
  br label %for.cond, !dbg !1031, !llvm.loop !1032

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !1034

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i8* [ %4, %if.then ], [ null, %cleanup.loopexit ], !dbg !1006
  ret i8* %retval.0, !dbg !1034
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_set_style(i32 %style) local_unnamed_addr #5 !dbg !1035 {
entry:
  call void @llvm.dbg.value(metadata i32 %style, metadata !1039, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata %struct.demangler_engine* getelementptr inbounds ([11 x %struct.demangler_engine], [11 x %struct.demangler_engine]* @libiberty_demanglers, i64 0, i64 0), metadata !1040, metadata !DIExpression()), !dbg !1042
  br label %for.cond, !dbg !1043

for.cond:                                         ; preds = %for.inc, %entry
  %demangler.0 = phi %struct.demangler_engine* [ getelementptr inbounds ([11 x %struct.demangler_engine], [11 x %struct.demangler_engine]* @libiberty_demanglers, i64 0, i64 0), %entry ], [ %incdec.ptr, %for.inc ], !dbg !1042
  call void @llvm.dbg.value(metadata %struct.demangler_engine* %demangler.0, metadata !1040, metadata !DIExpression()), !dbg !1042
  %demangling_style = getelementptr inbounds %struct.demangler_engine, %struct.demangler_engine* %demangler.0, i64 0, i32 1, !dbg !1044
  %0 = load i32, i32* %demangling_style, align 8, !dbg !1044
  %cmp = icmp eq i32 %0, 0, !dbg !1047
  br i1 %cmp, label %cleanup.loopexit, label %for.body, !dbg !1048

for.body:                                         ; preds = %for.cond
  %cmp2 = icmp eq i32 %0, %style, !dbg !1049
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !1051

if.then:                                          ; preds = %for.body
  store i32 %style, i32* @current_demangling_style, align 4, !dbg !1052
  br label %cleanup, !dbg !1054

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.demangler_engine, %struct.demangler_engine* %demangler.0, i64 1, !dbg !1055
  call void @llvm.dbg.value(metadata %struct.demangler_engine* %incdec.ptr, metadata !1040, metadata !DIExpression()), !dbg !1042
  br label %for.cond, !dbg !1056, !llvm.loop !1057

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !1059

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i32 [ %style, %if.then ], [ 0, %cleanup.loopexit ], !dbg !1042
  ret i32 %retval.0, !dbg !1059
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_name_to_style(i8* %name) local_unnamed_addr #5 !dbg !1060 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !1064, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata %struct.demangler_engine* getelementptr inbounds ([11 x %struct.demangler_engine], [11 x %struct.demangler_engine]* @libiberty_demanglers, i64 0, i64 0), metadata !1065, metadata !DIExpression()), !dbg !1066
  br label %for.cond, !dbg !1067

for.cond:                                         ; preds = %for.inc, %entry
  %demangler.0 = phi %struct.demangler_engine* [ getelementptr inbounds ([11 x %struct.demangler_engine], [11 x %struct.demangler_engine]* @libiberty_demanglers, i64 0, i64 0), %entry ], [ %incdec.ptr, %for.inc ], !dbg !1066
  call void @llvm.dbg.value(metadata %struct.demangler_engine* %demangler.0, metadata !1065, metadata !DIExpression()), !dbg !1066
  %demangling_style = getelementptr inbounds %struct.demangler_engine, %struct.demangler_engine* %demangler.0, i64 0, i32 1, !dbg !1068
  %0 = load i32, i32* %demangling_style, align 8, !dbg !1068
  %cmp = icmp eq i32 %0, 0, !dbg !1071
  br i1 %cmp, label %cleanup.loopexit, label %for.body, !dbg !1072

for.body:                                         ; preds = %for.cond
  %demangling_style_name = getelementptr inbounds %struct.demangler_engine, %struct.demangler_engine* %demangler.0, i64 0, i32 0, !dbg !1073
  %1 = load i8*, i8** %demangling_style_name, align 8, !dbg !1073
  %call = tail call i32 @strcmp(i8* %name, i8* %1) #6, !dbg !1075
  %cmp1 = icmp eq i32 %call, 0, !dbg !1076
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !1077

if.then:                                          ; preds = %for.body
  %demangling_style.lcssa3 = phi i32* [ %demangling_style, %for.body ], !dbg !1068
  call void @llvm.dbg.value(metadata %struct.demangler_engine* %demangler.0, metadata !1065, metadata !DIExpression()), !dbg !1066
  %2 = load i32, i32* %demangling_style.lcssa3, align 8, !dbg !1078
  br label %cleanup, !dbg !1079

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.demangler_engine, %struct.demangler_engine* %demangler.0, i64 1, !dbg !1080
  call void @llvm.dbg.value(metadata %struct.demangler_engine* %incdec.ptr, metadata !1065, metadata !DIExpression()), !dbg !1066
  br label %for.cond, !dbg !1081, !llvm.loop !1082

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !1084

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %cleanup.loopexit ], !dbg !1066
  ret i32 %retval.0, !dbg !1084
}

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @cplus_demangle(i8* %mangled, i32 %options) local_unnamed_addr #5 !dbg !1085 {
entry:
  %work = alloca [1 x %struct.work_stuff], align 16
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !1087, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i32 %options, metadata !1088, metadata !DIExpression()), !dbg !1091
  %0 = bitcast [1 x %struct.work_stuff]* %work to i8*, !dbg !1092
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #7, !dbg !1092
  call void @llvm.dbg.declare(metadata [1 x %struct.work_stuff]* %work, metadata !1090, metadata !DIExpression()), !dbg !1093
  %1 = load i32, i32* @current_demangling_style, align 4, !dbg !1094
  %cmp = icmp eq i32 %1, -1, !dbg !1096
  br i1 %cmp, label %if.then, label %if.end, !dbg !1097

if.then:                                          ; preds = %entry
  %call = tail call i8* @xstrdup(i8* %mangled) #6, !dbg !1098
  br label %cleanup, !dbg !1099

if.end:                                           ; preds = %entry
  %call1 = call i8* @memset(i8* nonnull %0, i32 0, i64 112) #6, !dbg !1100
  %options3 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %work, i64 0, i64 0, i32 0, !dbg !1101
  store i32 %options, i32* %options3, align 16, !dbg !1102
  %and = and i32 %options, 65284, !dbg !1103
  %cmp6 = icmp eq i32 %and, 0, !dbg !1105
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !1106

if.then7:                                         ; preds = %if.end
  %2 = load i32, i32* @current_demangling_style, align 4, !dbg !1107
  %and8 = and i32 %2, 65284, !dbg !1108
  %or = or i32 %and8, %options, !dbg !1109
  store i32 %or, i32* %options3, align 16, !dbg !1109
  br label %if.end11, !dbg !1110

if.end11:                                         ; preds = %if.then7, %if.end
  %3 = phi i32 [ %or, %if.then7 ], [ %options, %if.end ], !dbg !1111
  %and14 = and i32 %3, 16384, !dbg !1111
  %tobool = icmp eq i32 %and14, 0, !dbg !1111
  br i1 %tobool, label %lor.lhs.false, label %if.then19, !dbg !1113

lor.lhs.false:                                    ; preds = %if.end11
  %and17 = and i32 %3, 256, !dbg !1114
  %tobool18 = icmp eq i32 %and17, 0, !dbg !1114
  br i1 %tobool18, label %if.end31, label %if.then19, !dbg !1115

if.then19:                                        ; preds = %lor.lhs.false, %if.end11
  %call22 = call i8* @cplus_demangle_v3(i8* %mangled, i32 %3) #6, !dbg !1116
  call void @llvm.dbg.value(metadata i8* %call22, metadata !1089, metadata !DIExpression()), !dbg !1091
  %tobool23 = icmp eq i8* %call22, null, !dbg !1118
  br i1 %tobool23, label %lor.lhs.false24, label %cleanup, !dbg !1120

lor.lhs.false24:                                  ; preds = %if.then19
  %4 = load i32, i32* %options3, align 16, !dbg !1121
  %and27 = and i32 %4, 16384, !dbg !1121
  %tobool28 = icmp eq i32 %and27, 0, !dbg !1121
  br i1 %tobool28, label %if.end31, label %cleanup, !dbg !1122

if.end31:                                         ; preds = %lor.lhs.false24, %lor.lhs.false
  %5 = phi i32 [ %4, %lor.lhs.false24 ], [ %3, %lor.lhs.false ], !dbg !1123
  %and34 = and i32 %5, 4, !dbg !1123
  %tobool35 = icmp eq i32 %and34, 0, !dbg !1123
  br i1 %tobool35, label %if.end41, label %if.then36, !dbg !1125

if.then36:                                        ; preds = %if.end31
  %call37 = call i8* @java_demangle_v3(i8* %mangled) #6, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %call37, metadata !1089, metadata !DIExpression()), !dbg !1091
  %tobool38 = icmp eq i8* %call37, null, !dbg !1128
  br i1 %tobool38, label %if.then36.if.end41_crit_edge, label %cleanup, !dbg !1130

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  %.pre = load i32, i32* %options3, align 16, !dbg !1131
  br label %if.end41, !dbg !1130

if.end41:                                         ; preds = %if.then36.if.end41_crit_edge, %if.end31
  %6 = phi i32 [ %.pre, %if.then36.if.end41_crit_edge ], [ %5, %if.end31 ], !dbg !1131
  %7 = trunc i32 %6 to i16, !dbg !1131
  %tobool45 = icmp slt i16 %7, 0, !dbg !1131
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !1133

if.then46:                                        ; preds = %if.end41
  %call47 = call i8* @ada_demangle(i8* %mangled, i32 %options) #8, !dbg !1134
  br label %cleanup, !dbg !1135

if.end48:                                         ; preds = %if.end41
  %arraydecay49 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %work, i64 0, i64 0, !dbg !1136
  %call50 = call fastcc i8* @internal_cplus_demangle(%struct.work_stuff* nonnull %arraydecay49, i8* %mangled) #8, !dbg !1137
  call void @llvm.dbg.value(metadata i8* %call50, metadata !1089, metadata !DIExpression()), !dbg !1091
  call fastcc void @squangle_mop_up(%struct.work_stuff* nonnull %arraydecay49) #8, !dbg !1138
  br label %cleanup, !dbg !1139

cleanup:                                          ; preds = %lor.lhs.false24, %if.then19, %if.then36, %if.end48, %if.then46, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %call47, %if.then46 ], [ %call50, %if.end48 ], [ null, %lor.lhs.false24 ], [ %call22, %if.then19 ], [ %call37, %if.then36 ], !dbg !1091
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #7, !dbg !1140
  ret i8* %retval.0, !dbg !1140
}

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #2

declare dso_local i8* @cplus_demangle_v3(i8*, i32) local_unnamed_addr #2

declare dso_local i8* @java_demangle_v3(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @ada_demangle(i8* %mangled, i32 %option) local_unnamed_addr #5 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !69, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i32 %option, metadata !70, metadata !DIExpression()), !dbg !1141
  %call = tail call i32 @strncmp(i8* %mangled, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i64 5) #6, !dbg !1142
  %cmp = icmp eq i32 %call, 0, !dbg !1144
  %add.ptr = getelementptr inbounds i8, i8* %mangled, i64 5, !dbg !1145
  %spec.select = select i1 %cmp, i8* %add.ptr, i8* %mangled, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !69, metadata !DIExpression()), !dbg !1141
  %0 = load i8, i8* %spec.select, align 1, !dbg !1147
  %idxprom = zext i8 %0 to i64, !dbg !1147
  %arrayidx1 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1147
  %1 = load i16, i16* %arrayidx1, align 2, !dbg !1147
  %2 = and i16 %1, 8, !dbg !1147
  %tobool = icmp eq i16 %2, 0, !dbg !1147
  br i1 %tobool, label %unknown, label %if.end5, !dbg !1149

if.end5:                                          ; preds = %entry
  %call6 = tail call i64 @strlen(i8* %spec.select) #6, !dbg !1150
  %conv8 = shl i64 %call6, 32, !dbg !1151
  %sext5 = add i64 %conv8, 12884901888, !dbg !1151
  %conv9 = ashr exact i64 %sext5, 32, !dbg !1151
  %call10 = tail call i8* @xmalloc(i64 %conv9) #6, !dbg !1151
  call void @llvm.dbg.value(metadata i8* %call10, metadata !74, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %call10, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !72, metadata !DIExpression()), !dbg !1141
  br label %while.cond, !dbg !1152

while.cond:                                       ; preds = %while.cond.backedge, %if.end5
  %d.0 = phi i8* [ %call10, %if.end5 ], [ %d.0.be, %while.cond.backedge ], !dbg !1141
  %p.0 = phi i8* [ %spec.select, %if.end5 ], [ %p.0.be, %while.cond.backedge ], !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.0, metadata !73, metadata !DIExpression()), !dbg !1141
  %3 = load i8, i8* %p.0, align 1, !dbg !1153
  %idxprom13 = zext i8 %3 to i64, !dbg !1153
  %arrayidx14 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom13, !dbg !1153
  %4 = load i16, i16* %arrayidx14, align 2, !dbg !1153
  %5 = and i16 %4, 8, !dbg !1153
  %tobool17 = icmp eq i16 %5, 0, !dbg !1153
  br i1 %tobool17, label %if.else, label %do.body.preheader, !dbg !1154

do.body.preheader:                                ; preds = %while.cond
  br label %do.body, !dbg !1155

do.body:                                          ; preds = %do.body.backedge, %do.body.preheader
  %6 = phi i8 [ %3, %do.body.preheader ], [ %10, %do.body.backedge ], !dbg !1157
  %d.1 = phi i8* [ %d.0, %do.body.preheader ], [ %incdec.ptr19, %do.body.backedge ], !dbg !1141
  %p.1 = phi i8* [ %p.0, %do.body.preheader ], [ %incdec.ptr, %do.body.backedge ], !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.1, metadata !73, metadata !DIExpression()), !dbg !1141
  %incdec.ptr = getelementptr inbounds i8, i8* %p.1, i64 1, !dbg !1158
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !72, metadata !DIExpression()), !dbg !1141
  %incdec.ptr19 = getelementptr inbounds i8, i8* %d.1, i64 1, !dbg !1159
  call void @llvm.dbg.value(metadata i8* %incdec.ptr19, metadata !73, metadata !DIExpression()), !dbg !1141
  store i8 %6, i8* %d.1, align 1, !dbg !1160
  %7 = load i8, i8* %incdec.ptr, align 1, !dbg !1161
  %idxprom22 = zext i8 %7 to i64, !dbg !1161
  %arrayidx23 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom22, !dbg !1161
  %8 = load i16, i16* %arrayidx23, align 2, !dbg !1161
  %9 = and i16 %8, 8, !dbg !1161
  %tobool26 = icmp eq i16 %9, 0, !dbg !1161
  br i1 %tobool26, label %lor.lhs.false, label %do.body.backedge, !dbg !1155

do.body.backedge:                                 ; preds = %do.body, %lor.lhs.false, %land.rhs, %lor.rhs46
  %10 = phi i8 [ %7, %do.body ], [ %7, %lor.lhs.false ], [ 95, %land.rhs ], [ 95, %lor.rhs46 ]
  br label %do.body, !dbg !1141, !llvm.loop !1162

lor.lhs.false:                                    ; preds = %do.body
  %11 = and i16 %8, 4, !dbg !1165
  %tobool33 = icmp eq i16 %11, 0, !dbg !1165
  br i1 %tobool33, label %lor.rhs, label %do.body.backedge, !dbg !1166

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp36 = icmp eq i8 %7, 95, !dbg !1167
  br i1 %cmp36, label %land.rhs, label %if.end104.loopexit, !dbg !1168

land.rhs:                                         ; preds = %lor.rhs
  %arrayidx38 = getelementptr inbounds i8, i8* %p.1, i64 2, !dbg !1169
  %12 = load i8, i8* %arrayidx38, align 1, !dbg !1169
  %idxprom41 = zext i8 %12 to i64, !dbg !1169
  %arrayidx42 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom41, !dbg !1169
  %13 = load i16, i16* %arrayidx42, align 2, !dbg !1169
  %14 = and i16 %13, 8, !dbg !1169
  %tobool45 = icmp eq i16 %14, 0, !dbg !1169
  br i1 %tobool45, label %lor.rhs46, label %do.body.backedge, !dbg !1170

lor.rhs46:                                        ; preds = %land.rhs
  %15 = and i16 %13, 4, !dbg !1171
  %tobool54 = icmp eq i16 %15, 0, !dbg !1170
  br i1 %tobool54, label %if.end104.loopexit, label %do.body.backedge, !dbg !1172

if.else:                                          ; preds = %while.cond
  %cmp58 = icmp eq i8 %3, 79, !dbg !1173
  br i1 %cmp58, label %for.cond.preheader, label %unknown.loopexit, !dbg !1174

for.cond.preheader:                               ; preds = %if.else
  br label %for.cond, !dbg !1175

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !1176
  %d.2 = phi i8* [ %d.0, %for.cond.preheader ], [ %d.3, %for.inc ], !dbg !1177
  %p.2 = phi i8* [ %p.0, %for.cond.preheader ], [ %p.3, %for.inc ], !dbg !1178
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.2, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !75, metadata !DIExpression()), !dbg !1179
  %tobool64 = icmp eq i64 %indvars.iv, 19, !dbg !1175
  br i1 %tobool64, label %for.end, label %for.body, !dbg !1175

for.body:                                         ; preds = %for.cond
  %arrayidx67 = getelementptr inbounds [20 x [2 x i8*]], [20 x [2 x i8*]]* @ada_demangle.operators, i64 0, i64 %indvars.iv, i64 0, !dbg !1180
  %16 = load i8*, i8** %arrayidx67, align 16, !dbg !1180
  %call68 = tail call i64 @strlen(i8* %16) #6, !dbg !1181
  call void @llvm.dbg.value(metadata i32 undef, metadata !80, metadata !DIExpression()), !dbg !1182
  %sext14 = shl i64 %call68, 32, !dbg !1183
  %conv73 = ashr exact i64 %sext14, 32, !dbg !1183
  %call74 = tail call i32 @strncmp(i8* %p.2, i8* %16, i64 %conv73) #6, !dbg !1185
  %tobool75 = icmp eq i32 %call74, 0, !dbg !1185
  br i1 %tobool75, label %if.then76, label %cleanup, !dbg !1186

if.then76:                                        ; preds = %for.body
  %add.ptr77 = getelementptr inbounds i8, i8* %p.2, i64 %conv73, !dbg !1187
  call void @llvm.dbg.value(metadata i8* %add.ptr77, metadata !72, metadata !DIExpression()), !dbg !1141
  %arrayidx80 = getelementptr inbounds [20 x [2 x i8*]], [20 x [2 x i8*]]* @ada_demangle.operators, i64 0, i64 %indvars.iv, i64 1, !dbg !1189
  %17 = load i8*, i8** %arrayidx80, align 8, !dbg !1189
  %call81 = tail call i64 @strlen(i8* %17) #6, !dbg !1190
  %incdec.ptr83 = getelementptr inbounds i8, i8* %d.2, i64 1, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %incdec.ptr83, metadata !73, metadata !DIExpression()), !dbg !1141
  store i8 34, i8* %d.2, align 1, !dbg !1192
  %sext16 = shl i64 %call81, 32, !dbg !1193
  %conv87 = ashr exact i64 %sext16, 32, !dbg !1193
  %call88 = tail call i8* @memcpy(i8* nonnull %incdec.ptr83, i8* %17, i64 %conv87) #6, !dbg !1194
  %add.ptr90 = getelementptr inbounds i8, i8* %incdec.ptr83, i64 %conv87, !dbg !1195
  call void @llvm.dbg.value(metadata i8* %add.ptr90, metadata !73, metadata !DIExpression()), !dbg !1141
  %incdec.ptr91 = getelementptr inbounds i8, i8* %add.ptr90, i64 1, !dbg !1196
  call void @llvm.dbg.value(metadata i8* %incdec.ptr91, metadata !73, metadata !DIExpression()), !dbg !1141
  store i8 34, i8* %add.ptr90, align 1, !dbg !1197
  br label %cleanup, !dbg !1198

cleanup:                                          ; preds = %for.body, %if.then76
  %d.3 = phi i8* [ %incdec.ptr91, %if.then76 ], [ %d.2, %for.body ], !dbg !1141
  %p.3 = phi i8* [ %add.ptr77, %if.then76 ], [ %p.2, %for.body ], !dbg !1141
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then76 ], [ true, %for.body ]
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.3, metadata !73, metadata !DIExpression()), !dbg !1141
  br i1 %cleanup.dest.slot.0, label %for.inc, label %for.end

for.inc:                                          ; preds = %cleanup
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1199
  call void @llvm.dbg.value(metadata i32 undef, metadata !75, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1179
  br label %for.cond, !dbg !1200, !llvm.loop !1201

for.end:                                          ; preds = %for.cond, %cleanup
  %tobool64.lcssa = phi i1 [ %tobool64, %for.cond ], [ %tobool64, %cleanup ], !dbg !1175
  %d.4 = phi i8* [ %d.3, %cleanup ], [ %d.2, %for.cond ], !dbg !1177
  %p.4 = phi i8* [ %p.3, %cleanup ], [ %p.2, %for.cond ], !dbg !1178
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !75, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !75, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %p.4, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.4, metadata !73, metadata !DIExpression()), !dbg !1141
  br i1 %tobool64.lcssa, label %unknown.loopexit, label %for.end.if.end104_crit_edge

for.end.if.end104_crit_edge:                      ; preds = %for.end
  %.pre = load i8, i8* %p.4, align 1, !dbg !1203
  br label %if.end104

if.end104.loopexit:                               ; preds = %lor.rhs, %lor.rhs46
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %lor.rhs ], [ %incdec.ptr, %lor.rhs46 ], !dbg !1158
  %incdec.ptr19.lcssa = phi i8* [ %incdec.ptr19, %lor.rhs ], [ %incdec.ptr19, %lor.rhs46 ], !dbg !1159
  %.lcssa52 = phi i8 [ %7, %lor.rhs ], [ %7, %lor.rhs46 ], !dbg !1161
  br label %if.end104, !dbg !1203

if.end104:                                        ; preds = %for.end.if.end104_crit_edge, %if.end104.loopexit
  %18 = phi i8 [ %.pre, %for.end.if.end104_crit_edge ], [ %.lcssa52, %if.end104.loopexit ], !dbg !1203
  %d.5 = phi i8* [ %d.4, %for.end.if.end104_crit_edge ], [ %incdec.ptr19.lcssa, %if.end104.loopexit ], !dbg !1141
  %p.5 = phi i8* [ %p.4, %for.end.if.end104_crit_edge ], [ %incdec.ptr.lcssa, %if.end104.loopexit ], !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.5, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5, metadata !73, metadata !DIExpression()), !dbg !1141
  %cmp107 = icmp eq i8 %18, 95, !dbg !1205
  br i1 %cmp107, label %if.then109, label %if.end210, !dbg !1206

if.then109:                                       ; preds = %if.end104
  %arrayidx110 = getelementptr inbounds i8, i8* %p.5, i64 1, !dbg !1207
  %19 = load i8, i8* %arrayidx110, align 1, !dbg !1207
  %cmp112 = icmp eq i8 %19, 95, !dbg !1210
  br i1 %cmp112, label %if.then114, label %if.else175, !dbg !1211

if.then114:                                       ; preds = %if.then109
  %add.ptr115 = getelementptr inbounds i8, i8* %p.5, i64 2, !dbg !1212
  call void @llvm.dbg.value(metadata i8* %add.ptr115, metadata !72, metadata !DIExpression()), !dbg !1141
  %20 = load i8, i8* %add.ptr115, align 1, !dbg !1214
  %idxprom118 = zext i8 %20 to i64, !dbg !1214
  %arrayidx119 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom118, !dbg !1214
  %21 = load i16, i16* %arrayidx119, align 2, !dbg !1214
  %22 = and i16 %21, 4, !dbg !1214
  %tobool122 = icmp eq i16 %22, 0, !dbg !1214
  br i1 %tobool122, label %if.else151, label %do.body124.preheader, !dbg !1216

do.body124.preheader:                             ; preds = %if.then114
  br label %do.body124, !dbg !1217

do.body124:                                       ; preds = %do.body124.backedge, %do.body124.preheader
  %p.6 = phi i8* [ %add.ptr115, %do.body124.preheader ], [ %incdec.ptr125, %do.body124.backedge ], !dbg !1219
  call void @llvm.dbg.value(metadata i8* %p.6, metadata !72, metadata !DIExpression()), !dbg !1141
  %incdec.ptr125 = getelementptr inbounds i8, i8* %p.6, i64 1, !dbg !1220
  call void @llvm.dbg.value(metadata i8* %incdec.ptr125, metadata !72, metadata !DIExpression()), !dbg !1141
  %23 = load i8, i8* %incdec.ptr125, align 1, !dbg !1221
  %idxprom129 = zext i8 %23 to i64, !dbg !1221
  %arrayidx130 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom129, !dbg !1221
  %24 = load i16, i16* %arrayidx130, align 2, !dbg !1221
  %25 = and i16 %24, 4, !dbg !1221
  %tobool133 = icmp eq i16 %25, 0, !dbg !1221
  br i1 %tobool133, label %lor.rhs134, label %do.body124.backedge, !dbg !1217

do.body124.backedge:                              ; preds = %do.body124, %land.rhs139
  br label %do.body124, !dbg !1141, !llvm.loop !1222

lor.rhs134:                                       ; preds = %do.body124
  %cmp137 = icmp eq i8 %23, 95, !dbg !1225
  br i1 %cmp137, label %land.rhs139, label %if.end210.loopexit, !dbg !1226

land.rhs139:                                      ; preds = %lor.rhs134
  %arrayidx140 = getelementptr inbounds i8, i8* %p.6, i64 2, !dbg !1227
  %26 = load i8, i8* %arrayidx140, align 1, !dbg !1227
  %idxprom143 = zext i8 %26 to i64, !dbg !1227
  %arrayidx144 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom143, !dbg !1227
  %27 = load i16, i16* %arrayidx144, align 2, !dbg !1227
  %28 = and i16 %27, 4, !dbg !1227
  %tobool147 = icmp eq i16 %28, 0, !dbg !1226
  br i1 %tobool147, label %if.end210.loopexit, label %do.body124.backedge, !dbg !1228

if.else151:                                       ; preds = %if.then114
  %cmp153 = icmp eq i8 %20, 95, !dbg !1229
  br i1 %cmp153, label %land.lhs.true, label %if.else161, !dbg !1231

land.lhs.true:                                    ; preds = %if.else151
  %add.ptr155 = getelementptr inbounds i8, i8* %p.5, i64 3, !dbg !1232
  %call156 = tail call i32 @strcmp(i8* nonnull %add.ptr155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !1233
  %tobool157 = icmp eq i32 %call156, 0, !dbg !1233
  br i1 %tobool157, label %if.then158, label %land.lhs.true.if.else161_crit_edge, !dbg !1234

land.lhs.true.if.else161_crit_edge:               ; preds = %land.lhs.true
  %.pre33 = load i8, i8* %add.ptr115, align 1, !dbg !1235
  br label %if.else161, !dbg !1234

if.then158:                                       ; preds = %land.lhs.true
  %d.5.lcssa63 = phi i8* [ %d.5, %land.lhs.true ], !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa63, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa63, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa63, metadata !73, metadata !DIExpression()), !dbg !1141
  %call159 = tail call i8* @memcpy(i8* %d.5.lcssa63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0), i64 10) #6, !dbg !1237
  %add.ptr160 = getelementptr inbounds i8, i8* %d.5.lcssa63, i64 10, !dbg !1239
  call void @llvm.dbg.value(metadata i8* %add.ptr160, metadata !73, metadata !DIExpression()), !dbg !1141
  br label %while.end340, !dbg !1240

if.else161:                                       ; preds = %land.lhs.true.if.else161_crit_edge, %if.else151
  %29 = phi i8 [ %.pre33, %land.lhs.true.if.else161_crit_edge ], [ %20, %if.else151 ], !dbg !1235
  %cmp163 = icmp eq i8 %29, 95, !dbg !1241
  br i1 %cmp163, label %land.lhs.true165, label %if.else172, !dbg !1242

land.lhs.true165:                                 ; preds = %if.else161
  %add.ptr166 = getelementptr inbounds i8, i8* %p.5, i64 3, !dbg !1243
  %call167 = tail call i32 @strcmp(i8* nonnull %add.ptr166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0)) #6, !dbg !1244
  %tobool168 = icmp eq i32 %call167, 0, !dbg !1244
  br i1 %tobool168, label %if.then169, label %if.else172, !dbg !1245

if.then169:                                       ; preds = %land.lhs.true165
  %d.5.lcssa64 = phi i8* [ %d.5, %land.lhs.true165 ], !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa64, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa64, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa64, metadata !73, metadata !DIExpression()), !dbg !1141
  %call170 = tail call i8* @memcpy(i8* %d.5.lcssa64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0), i64 10) #6, !dbg !1246
  %add.ptr171 = getelementptr inbounds i8, i8* %d.5.lcssa64, i64 10, !dbg !1248
  call void @llvm.dbg.value(metadata i8* %add.ptr171, metadata !73, metadata !DIExpression()), !dbg !1141
  br label %while.end340, !dbg !1249

if.else172:                                       ; preds = %land.lhs.true165, %if.else161
  call void @llvm.dbg.value(metadata i8* %d.5, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1141
  br label %while.cond.backedge, !dbg !1250

while.cond.backedge:                              ; preds = %if.else172, %if.then241
  %p.0.be = phi i8* [ %add.ptr242, %if.then241 ], [ %add.ptr115, %if.else172 ]
  %d.0.be = getelementptr inbounds i8, i8* %d.5, i64 1, !dbg !1252
  store i8 46, i8* %d.5, align 1, !dbg !1252
  br label %while.cond, !dbg !1141, !llvm.loop !1253

if.else175:                                       ; preds = %if.then109
  %.lcssa65 = phi i8 [ %19, %if.then109 ], !dbg !1207
  %d.5.lcssa = phi i8* [ %d.5, %if.then109 ], !dbg !1141
  %p.5.lcssa = phi i8* [ %p.5, %if.then109 ], !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  %cmp178 = icmp eq i8 %.lcssa65, 66, !dbg !1255
  br i1 %cmp178, label %if.then185, label %lor.lhs.false180, !dbg !1257

lor.lhs.false180:                                 ; preds = %if.else175
  %cmp183 = icmp eq i8 %.lcssa65, 69, !dbg !1258
  br i1 %cmp183, label %if.then185, label %unknown, !dbg !1259

if.then185:                                       ; preds = %lor.lhs.false180, %if.else175
  %add.ptr186 = getelementptr inbounds i8, i8* %p.5.lcssa, i64 2, !dbg !1260
  call void @llvm.dbg.value(metadata i8* %add.ptr186, metadata !72, metadata !DIExpression()), !dbg !1141
  br label %while.cond187, !dbg !1262

while.cond187:                                    ; preds = %while.body195, %if.then185
  %p.7 = phi i8* [ %add.ptr186, %if.then185 ], [ %incdec.ptr196, %while.body195 ], !dbg !1263
  call void @llvm.dbg.value(metadata i8* %p.7, metadata !72, metadata !DIExpression()), !dbg !1141
  %30 = load i8, i8* %p.7, align 1, !dbg !1264
  %idxprom190 = zext i8 %30 to i64, !dbg !1264
  %arrayidx191 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom190, !dbg !1264
  %31 = load i16, i16* %arrayidx191, align 2, !dbg !1264
  %32 = and i16 %31, 4, !dbg !1264
  %tobool194 = icmp eq i16 %32, 0, !dbg !1262
  br i1 %tobool194, label %while.end, label %while.body195, !dbg !1262

while.body195:                                    ; preds = %while.cond187
  %incdec.ptr196 = getelementptr inbounds i8, i8* %p.7, i64 1, !dbg !1265
  call void @llvm.dbg.value(metadata i8* %incdec.ptr196, metadata !72, metadata !DIExpression()), !dbg !1141
  br label %while.cond187, !dbg !1262, !llvm.loop !1266

while.end:                                        ; preds = %while.cond187
  %p.7.lcssa = phi i8* [ %p.7, %while.cond187 ], !dbg !1263
  %.lcssa51 = phi i8 [ %30, %while.cond187 ], !dbg !1264
  call void @llvm.dbg.value(metadata i8* %p.7.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.7.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.7.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  %cmp199 = icmp eq i8 %.lcssa51, 115, !dbg !1267
  br i1 %cmp199, label %land.lhs.true201, label %unknown, !dbg !1269

land.lhs.true201:                                 ; preds = %while.end
  %arrayidx202 = getelementptr inbounds i8, i8* %p.7.lcssa, i64 1, !dbg !1270
  %33 = load i8, i8* %arrayidx202, align 1, !dbg !1270
  %cmp204 = icmp eq i8 %33, 0, !dbg !1271
  br i1 %cmp204, label %while.end340, label %unknown, !dbg !1272

if.end210.loopexit:                               ; preds = %lor.rhs134, %land.rhs139
  %incdec.ptr125.lcssa = phi i8* [ %incdec.ptr125, %lor.rhs134 ], [ %incdec.ptr125, %land.rhs139 ], !dbg !1220
  %.lcssa53 = phi i8 [ %23, %lor.rhs134 ], [ %23, %land.rhs139 ], !dbg !1221
  br label %if.end210, !dbg !1273

if.end210:                                        ; preds = %if.end210.loopexit, %if.end104
  %34 = phi i8 [ %18, %if.end104 ], [ %.lcssa53, %if.end210.loopexit ], !dbg !1273
  %p.8 = phi i8* [ %p.5, %if.end104 ], [ %incdec.ptr125.lcssa, %if.end210.loopexit ], !dbg !1252
  call void @llvm.dbg.value(metadata i8* %p.8, metadata !72, metadata !DIExpression()), !dbg !1141
  %cmp213 = icmp eq i8 %34, 84, !dbg !1275
  br i1 %cmp213, label %land.lhs.true215, label %if.end245, !dbg !1276

land.lhs.true215:                                 ; preds = %if.end210
  %arrayidx216 = getelementptr inbounds i8, i8* %p.8, i64 1, !dbg !1277
  %35 = load i8, i8* %arrayidx216, align 1, !dbg !1277
  %cmp218 = icmp eq i8 %35, 75, !dbg !1278
  br i1 %cmp218, label %if.then220, label %if.end245, !dbg !1279

if.then220:                                       ; preds = %land.lhs.true215
  %arrayidx221 = getelementptr inbounds i8, i8* %p.8, i64 2, !dbg !1280
  %36 = load i8, i8* %arrayidx221, align 1, !dbg !1280
  %cmp223 = icmp eq i8 %36, 66, !dbg !1283
  br i1 %cmp223, label %land.lhs.true225, label %if.else231, !dbg !1284

land.lhs.true225:                                 ; preds = %if.then220
  %arrayidx226 = getelementptr inbounds i8, i8* %p.8, i64 3, !dbg !1285
  %37 = load i8, i8* %arrayidx226, align 1, !dbg !1285
  %cmp228 = icmp eq i8 %37, 0, !dbg !1286
  br i1 %cmp228, label %while.end340.loopexit, label %if.else231, !dbg !1287

if.else231:                                       ; preds = %land.lhs.true225, %if.then220
  %cmp234 = icmp eq i8 %36, 95, !dbg !1288
  br i1 %cmp234, label %land.lhs.true236, label %unknown.loopexit, !dbg !1290

land.lhs.true236:                                 ; preds = %if.else231
  %arrayidx237 = getelementptr inbounds i8, i8* %p.8, i64 3, !dbg !1291
  %38 = load i8, i8* %arrayidx237, align 1, !dbg !1291
  %cmp239 = icmp eq i8 %38, 95, !dbg !1292
  br i1 %cmp239, label %if.then241, label %unknown.loopexit, !dbg !1293

if.then241:                                       ; preds = %land.lhs.true236
  %add.ptr242 = getelementptr inbounds i8, i8* %p.8, i64 4, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %add.ptr242, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1141
  br label %while.cond.backedge, !dbg !1296

if.end245:                                        ; preds = %land.lhs.true215, %if.end210
  %d.5.lcssa61 = phi i8* [ %d.5, %land.lhs.true215 ], [ %d.5, %if.end210 ], !dbg !1141
  %.lcssa55 = phi i8 [ %34, %land.lhs.true215 ], [ %34, %if.end210 ], !dbg !1273
  %p.8.lcssa = phi i8* [ %p.8, %land.lhs.true215 ], [ %p.8, %if.end210 ], !dbg !1252
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa61, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa61, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.8.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.8.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa61, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa61, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.8.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.8.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa61, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa61, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.8.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %p.8.lcssa, metadata !72, metadata !DIExpression()), !dbg !1141
  %cmp248 = icmp eq i8 %.lcssa55, 80, !dbg !1297
  br i1 %cmp248, label %land.lhs.true255, label %lor.lhs.false250, !dbg !1299

lor.lhs.false250:                                 ; preds = %if.end245
  %cmp253 = icmp eq i8 %.lcssa55, 78, !dbg !1300
  br i1 %cmp253, label %land.lhs.true255, label %if.end261, !dbg !1301

land.lhs.true255:                                 ; preds = %lor.lhs.false250, %if.end245
  %arrayidx256 = getelementptr inbounds i8, i8* %p.8.lcssa, i64 1, !dbg !1302
  %39 = load i8, i8* %arrayidx256, align 1, !dbg !1302
  %cmp258 = icmp eq i8 %39, 0, !dbg !1303
  br i1 %cmp258, label %while.end340, label %if.end261, !dbg !1304

if.end261:                                        ; preds = %land.lhs.true255, %lor.lhs.false250
  %cmp264 = icmp eq i8 %.lcssa55, 69, !dbg !1305
  br i1 %cmp264, label %land.lhs.true266, label %if.end272, !dbg !1307

land.lhs.true266:                                 ; preds = %if.end261
  %arrayidx267 = getelementptr inbounds i8, i8* %p.8.lcssa, i64 1, !dbg !1308
  %40 = load i8, i8* %arrayidx267, align 1, !dbg !1308
  %cmp269 = icmp eq i8 %40, 0, !dbg !1309
  br i1 %cmp269, label %unknown, label %if.end272, !dbg !1310

if.end272:                                        ; preds = %land.lhs.true266, %if.end261
  %cmp274 = icmp eq i8 %.lcssa55, 78, !dbg !1311
  br i1 %cmp274, label %unknown, label %lor.lhs.false276, !dbg !1313

lor.lhs.false276:                                 ; preds = %if.end272
  %cmp278 = icmp eq i8 %.lcssa55, 83, !dbg !1314
  br i1 %cmp278, label %unknown, label %if.end281, !dbg !1315

if.end281:                                        ; preds = %lor.lhs.false276
  %cmp284 = icmp eq i8 %.lcssa55, 88, !dbg !1316
  br i1 %cmp284, label %if.then286, label %if.end307, !dbg !1318

if.then286:                                       ; preds = %if.end281
  %arrayidx287 = getelementptr inbounds i8, i8* %p.8.lcssa, i64 1, !dbg !1319
  %41 = load i8, i8* %arrayidx287, align 1, !dbg !1319
  %cmp289 = icmp eq i8 %41, 110, !dbg !1322
  br i1 %cmp289, label %if.then296, label %lor.lhs.false291, !dbg !1323

lor.lhs.false291:                                 ; preds = %if.then286
  %cmp294 = icmp eq i8 %41, 98, !dbg !1324
  br i1 %cmp294, label %if.then296, label %if.else298, !dbg !1325

if.then296:                                       ; preds = %lor.lhs.false291, %if.then286
  %add.ptr297 = getelementptr inbounds i8, i8* %p.8.lcssa, i64 2, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %add.ptr297, metadata !72, metadata !DIExpression()), !dbg !1141
  br label %if.end307, !dbg !1327

if.else298:                                       ; preds = %lor.lhs.false291
  %cmp301 = icmp eq i8 %41, 0, !dbg !1328
  %spec.select3 = select i1 %cmp301, i8* %arrayidx287, i8* %p.8.lcssa, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %spec.select3, metadata !72, metadata !DIExpression()), !dbg !1141
  br label %if.end307

if.end307:                                        ; preds = %if.then296, %if.else298, %if.end281
  %p.11 = phi i8* [ %p.8.lcssa, %if.end281 ], [ %add.ptr297, %if.then296 ], [ %spec.select3, %if.else298 ], !dbg !1252
  call void @llvm.dbg.value(metadata i8* %p.11, metadata !72, metadata !DIExpression()), !dbg !1141
  %42 = load i8, i8* %p.11, align 1, !dbg !1331
  %cmp310 = icmp eq i8 %42, 46, !dbg !1333
  br i1 %cmp310, label %land.lhs.true312, label %if.end334, !dbg !1334

land.lhs.true312:                                 ; preds = %if.end307
  %arrayidx313 = getelementptr inbounds i8, i8* %p.11, i64 1, !dbg !1335
  %43 = load i8, i8* %arrayidx313, align 1, !dbg !1335
  %idxprom316 = zext i8 %43 to i64, !dbg !1335
  %arrayidx317 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom316, !dbg !1335
  %44 = load i16, i16* %arrayidx317, align 2, !dbg !1335
  %45 = and i16 %44, 4, !dbg !1335
  %tobool320 = icmp eq i16 %45, 0, !dbg !1335
  br i1 %tobool320, label %if.end334, label %if.then321, !dbg !1336

if.then321:                                       ; preds = %land.lhs.true312
  %add.ptr322 = getelementptr inbounds i8, i8* %p.11, i64 2, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %add.ptr322, metadata !72, metadata !DIExpression()), !dbg !1141
  br label %while.cond323, !dbg !1339

while.cond323:                                    ; preds = %while.body331, %if.then321
  %p.12 = phi i8* [ %add.ptr322, %if.then321 ], [ %incdec.ptr332, %while.body331 ], !dbg !1340
  call void @llvm.dbg.value(metadata i8* %p.12, metadata !72, metadata !DIExpression()), !dbg !1141
  %46 = load i8, i8* %p.12, align 1, !dbg !1341
  %idxprom326 = zext i8 %46 to i64, !dbg !1341
  %arrayidx327 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom326, !dbg !1341
  %47 = load i16, i16* %arrayidx327, align 2, !dbg !1341
  %48 = and i16 %47, 4, !dbg !1341
  %tobool330 = icmp eq i16 %48, 0, !dbg !1339
  br i1 %tobool330, label %if.end334.loopexit, label %while.body331, !dbg !1339

while.body331:                                    ; preds = %while.cond323
  %incdec.ptr332 = getelementptr inbounds i8, i8* %p.12, i64 1, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %incdec.ptr332, metadata !72, metadata !DIExpression()), !dbg !1141
  br label %while.cond323, !dbg !1339, !llvm.loop !1343

if.end334.loopexit:                               ; preds = %while.cond323
  %.lcssa = phi i8 [ %46, %while.cond323 ], !dbg !1341
  call void @llvm.dbg.value(metadata i8* %p.12, metadata !72, metadata !DIExpression()), !dbg !1141
  br label %if.end334, !dbg !1344

if.end334:                                        ; preds = %if.end334.loopexit, %land.lhs.true312, %if.end307
  %49 = phi i8 [ 46, %land.lhs.true312 ], [ %42, %if.end307 ], [ %.lcssa, %if.end334.loopexit ], !dbg !1344
  %cmp336 = icmp eq i8 %49, 0, !dbg !1346
  br i1 %cmp336, label %while.end340, label %unknown, !dbg !1347

while.end340.loopexit:                            ; preds = %land.lhs.true225
  %d.5.lcssa62 = phi i8* [ %d.5, %land.lhs.true225 ], !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa62, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa62, metadata !73, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %d.5.lcssa62, metadata !73, metadata !DIExpression()), !dbg !1141
  br label %while.end340, !dbg !1348

while.end340:                                     ; preds = %while.end340.loopexit, %if.end334, %land.lhs.true255, %land.lhs.true201, %if.then169, %if.then158
  %d.6 = phi i8* [ %add.ptr171, %if.then169 ], [ %add.ptr160, %if.then158 ], [ %d.5.lcssa, %land.lhs.true201 ], [ %d.5.lcssa61, %land.lhs.true255 ], [ %d.5.lcssa61, %if.end334 ], [ %d.5.lcssa62, %while.end340.loopexit ], !dbg !1252
  call void @llvm.dbg.value(metadata i8* %d.6, metadata !73, metadata !DIExpression()), !dbg !1141
  store i8 0, i8* %d.6, align 1, !dbg !1348
  br label %cleanup356, !dbg !1349

unknown.loopexit:                                 ; preds = %if.else, %land.lhs.true236, %if.else231, %for.end
  br label %unknown, !dbg !1350

unknown:                                          ; preds = %unknown.loopexit, %entry, %if.end334, %if.end272, %lor.lhs.false276, %land.lhs.true266, %lor.lhs.false180, %while.end, %land.lhs.true201
  call void @llvm.dbg.label(metadata !84), !dbg !1351
  %call341 = tail call i64 @strlen(i8* %spec.select) #6, !dbg !1350
  %add343 = shl i64 %call341, 32, !dbg !1352
  %sext = add i64 %add343, 12884901888, !dbg !1352
  %conv344 = ashr exact i64 %sext, 32, !dbg !1352
  %call346 = tail call i8* @xmalloc(i64 %conv344) #6, !dbg !1352
  call void @llvm.dbg.value(metadata i8* %call346, metadata !74, metadata !DIExpression()), !dbg !1141
  %50 = load i8, i8* %spec.select, align 1, !dbg !1353
  %cmp349 = icmp eq i8 %50, 60, !dbg !1355
  br i1 %cmp349, label %if.then351, label %if.else353, !dbg !1356

if.then351:                                       ; preds = %unknown
  %call352 = tail call i8* @strcpy(i8* %call346, i8* %spec.select) #6, !dbg !1357
  br label %cleanup356, !dbg !1357

if.else353:                                       ; preds = %unknown
  %call354 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %call346, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0), i8* %spec.select) #6, !dbg !1358
  br label %cleanup356

cleanup356:                                       ; preds = %if.then351, %if.else353, %while.end340
  %retval.0 = phi i8* [ %call10, %while.end340 ], [ %call346, %if.else353 ], [ %call346, %if.then351 ]
  ret i8* %retval.0, !dbg !1359
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @internal_cplus_demangle(%struct.work_stuff* %work, i8* %mangled) unnamed_addr #5 !dbg !1360 {
entry:
  %mangled.addr = alloca i8*, align 8
  %decl = alloca %struct.string, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !1364, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !1365, metadata !DIExpression()), !dbg !1373
  store i8* %mangled, i8** %mangled.addr, align 8
  %0 = bitcast %struct.string* %decl to i8*, !dbg !1374
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !1374
  call void @llvm.dbg.value(metadata i32 0, metadata !1367, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* null, metadata !1368, metadata !DIExpression()), !dbg !1373
  %constructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 10, !dbg !1375
  %1 = load i32, i32* %constructor, align 8, !dbg !1375
  call void @llvm.dbg.value(metadata i32 %1, metadata !1369, metadata !DIExpression()), !dbg !1373
  %destructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !1376
  %2 = load i32, i32* %destructor, align 4, !dbg !1376
  call void @llvm.dbg.value(metadata i32 %2, metadata !1370, metadata !DIExpression()), !dbg !1373
  %static_type = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 12, !dbg !1377
  %3 = load i32, i32* %static_type, align 8, !dbg !1377
  call void @llvm.dbg.value(metadata i32 %3, metadata !1371, metadata !DIExpression()), !dbg !1373
  %type_quals = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 14, !dbg !1378
  %4 = load i32, i32* %type_quals, align 8, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %4, metadata !1372, metadata !DIExpression()), !dbg !1373
  store i32 0, i32* %destructor, align 4, !dbg !1379
  store i32 0, i32* %constructor, align 8, !dbg !1380
  store i32 0, i32* %type_quals, align 8, !dbg !1381
  %dllimported = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 15, !dbg !1382
  store i32 0, i32* %dllimported, align 4, !dbg !1383
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !1365, metadata !DIExpression()), !dbg !1373
  %cmp = icmp eq i8* %mangled, null, !dbg !1384
  br i1 %cmp, label %if.end42, label %land.lhs.true, !dbg !1386

land.lhs.true:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !1365, metadata !DIExpression()), !dbg !1373
  %5 = load i8, i8* %mangled, align 1, !dbg !1387
  %cmp4 = icmp eq i8 %5, 0, !dbg !1388
  br i1 %cmp4, label %if.end42, label %if.then, !dbg !1389

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !1366, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  call fastcc void @string_init(%struct.string* nonnull %decl) #8, !dbg !1390
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !1392
  %6 = load i32, i32* %options, align 8, !dbg !1392
  %and = and i32 %6, 256, !dbg !1392
  %tobool = icmp eq i32 %and, 0, !dbg !1392
  br i1 %tobool, label %lor.lhs.false, label %if.then9, !dbg !1394

lor.lhs.false:                                    ; preds = %if.then
  %and7 = and i32 %6, 512, !dbg !1395
  %tobool8 = icmp eq i32 %and7, 0, !dbg !1395
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !1396

if.then9:                                         ; preds = %lor.lhs.false, %if.then
  call void @llvm.dbg.value(metadata i8** %mangled.addr, metadata !1365, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !1366, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  %call = call fastcc i32 @gnu_special(%struct.work_stuff* %work, i8** nonnull %mangled.addr, %struct.string* nonnull %decl) #8, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %call, metadata !1367, metadata !DIExpression()), !dbg !1373
  br label %if.end, !dbg !1399

if.end:                                           ; preds = %lor.lhs.false, %if.then9
  %success.0 = phi i32 [ %call, %if.then9 ], [ 0, %lor.lhs.false ], !dbg !1373
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !1367, metadata !DIExpression()), !dbg !1373
  %tobool10 = icmp eq i32 %success.0, 0, !dbg !1400
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !1402

if.then11:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i8** %mangled.addr, metadata !1365, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !1366, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  %call12 = call fastcc i32 @demangle_prefix(%struct.work_stuff* %work, i8** nonnull %mangled.addr, %struct.string* nonnull %decl) #8, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %call12, metadata !1367, metadata !DIExpression()), !dbg !1373
  br label %if.end13, !dbg !1405

if.end13:                                         ; preds = %if.end, %if.then11
  %success.1 = phi i32 [ %success.0, %if.end ], [ %call12, %if.then11 ], !dbg !1406
  call void @llvm.dbg.value(metadata i32 %success.1, metadata !1367, metadata !DIExpression()), !dbg !1373
  %tobool14 = icmp eq i32 %success.1, 0, !dbg !1407
  br i1 %tobool14, label %if.end21, label %land.lhs.true15, !dbg !1409

land.lhs.true15:                                  ; preds = %if.end13
  %7 = load i8*, i8** %mangled.addr, align 8, !dbg !1410
  call void @llvm.dbg.value(metadata i8* %7, metadata !1365, metadata !DIExpression()), !dbg !1373
  %8 = load i8, i8* %7, align 1, !dbg !1411
  %cmp17 = icmp eq i8 %8, 0, !dbg !1412
  br i1 %cmp17, label %if.end21, label %if.then19, !dbg !1413

if.then19:                                        ; preds = %land.lhs.true15
  call void @llvm.dbg.value(metadata i8** %mangled.addr, metadata !1365, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !1366, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  %call20 = call fastcc i32 @demangle_signature(%struct.work_stuff* %work, i8** nonnull %mangled.addr, %struct.string* nonnull %decl) #8, !dbg !1414
  call void @llvm.dbg.value(metadata i32 %call20, metadata !1367, metadata !DIExpression()), !dbg !1373
  br label %if.end21, !dbg !1416

if.end21:                                         ; preds = %land.lhs.true15, %if.end13, %if.then19
  %success.2 = phi i32 [ %call20, %if.then19 ], [ %success.1, %land.lhs.true15 ], [ 0, %if.end13 ], !dbg !1406
  call void @llvm.dbg.value(metadata i32 %success.2, metadata !1367, metadata !DIExpression()), !dbg !1373
  %9 = load i32, i32* %constructor, align 8, !dbg !1417
  %cmp23 = icmp eq i32 %9, 2, !dbg !1419
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !1420

if.then25:                                        ; preds = %if.end21
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !1366, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.183, i64 0, i64 0)) #8, !dbg !1421
  store i32 0, i32* %constructor, align 8, !dbg !1423
  br label %if.end40, !dbg !1424

if.else:                                          ; preds = %if.end21
  %10 = load i32, i32* %destructor, align 4, !dbg !1425
  %cmp28 = icmp eq i32 %10, 2, !dbg !1427
  br i1 %cmp28, label %if.then30, label %if.else32, !dbg !1428

if.then30:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !1366, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.184, i64 0, i64 0)) #8, !dbg !1429
  store i32 0, i32* %destructor, align 4, !dbg !1431
  br label %if.end40, !dbg !1432

if.else32:                                        ; preds = %if.else
  %11 = load i32, i32* %dllimported, align 4, !dbg !1433
  %cmp34 = icmp eq i32 %11, 1, !dbg !1435
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !1436

if.then36:                                        ; preds = %if.else32
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !1366, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  call fastcc void @string_prepend(%struct.string* nonnull %decl, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.185, i64 0, i64 0)) #8, !dbg !1437
  store i32 0, i32* %dllimported, align 4, !dbg !1439
  br label %if.end40, !dbg !1440

if.end40:                                         ; preds = %if.then30, %if.then36, %if.else32, %if.then25
  call void @llvm.dbg.value(metadata %struct.string* %decl, metadata !1366, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  %call41 = call fastcc i8* @mop_up(%struct.work_stuff* %work, %struct.string* nonnull %decl, i32 %success.2) #8, !dbg !1441
  call void @llvm.dbg.value(metadata i8* %call41, metadata !1368, metadata !DIExpression()), !dbg !1373
  br label %if.end42, !dbg !1442

if.end42:                                         ; preds = %land.lhs.true, %entry, %if.end40
  %demangled.0 = phi i8* [ %call41, %if.end40 ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !1373
  call void @llvm.dbg.value(metadata i8* %demangled.0, metadata !1368, metadata !DIExpression()), !dbg !1373
  store i32 %1, i32* %constructor, align 8, !dbg !1443
  store i32 %2, i32* %destructor, align 4, !dbg !1444
  store i32 %3, i32* %static_type, align 8, !dbg !1445
  store i32 %4, i32* %type_quals, align 8, !dbg !1446
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !1447
  ret i8* %demangled.0, !dbg !1448
}

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #2

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @string_init(%struct.string* %s) unnamed_addr #5 !dbg !1449 {
entry:
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !1451, metadata !DIExpression()), !dbg !1452
  %e = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 2, !dbg !1453
  store i8* null, i8** %e, align 8, !dbg !1454
  %p = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 1, !dbg !1455
  store i8* null, i8** %p, align 8, !dbg !1456
  %b = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 0, !dbg !1457
  store i8* null, i8** %b, align 8, !dbg !1458
  ret void, !dbg !1459
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gnu_special(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) unnamed_addr #5 !dbg !1460 {
entry:
  %buf = alloca [50 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !1462, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !1463, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !1464, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 1, metadata !1466, metadata !DIExpression()), !dbg !1483
  %0 = load i8*, i8** %mangled, align 8, !dbg !1484
  %1 = load i8, i8* %0, align 1, !dbg !1485
  %cmp = icmp eq i8 %1, 95, !dbg !1486
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1487

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1488
  %2 = load i8, i8* %arrayidx2, align 1, !dbg !1488
  %conv3 = sext i8 %2 to i32, !dbg !1488
  %call = tail call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0), i32 %conv3) #6, !dbg !1489
  %cmp4 = icmp eq i8* %call, null, !dbg !1490
  br i1 %cmp4, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true6, !dbg !1491

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load i8*, i8** %mangled, align 8, !dbg !1492
  br label %if.else, !dbg !1491

land.lhs.true6:                                   ; preds = %land.lhs.true
  %3 = load i8*, i8** %mangled, align 8, !dbg !1493
  %arrayidx7 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !1494
  %4 = load i8, i8* %arrayidx7, align 1, !dbg !1494
  %cmp9 = icmp eq i8 %4, 95, !dbg !1495
  br i1 %cmp9, label %if.then, label %if.else, !dbg !1496

if.then:                                          ; preds = %land.lhs.true6
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 3, !dbg !1497
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !1497
  %destructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !1499
  %5 = load i32, i32* %destructor, align 4, !dbg !1500
  %add = add nsw i32 %5, 1, !dbg !1500
  store i32 %add, i32* %destructor, align 4, !dbg !1500
  br label %if.end252, !dbg !1501

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %land.lhs.true6, %entry
  %6 = phi i8* [ %.pre, %land.lhs.true.if.else_crit_edge ], [ %3, %land.lhs.true6 ], [ %0, %entry ], !dbg !1492
  %7 = load i8, i8* %6, align 1, !dbg !1502
  %cmp13 = icmp eq i8 %7, 95, !dbg !1503
  br i1 %cmp13, label %land.lhs.true15, label %if.else104, !dbg !1504

land.lhs.true15:                                  ; preds = %if.else
  %arrayidx16 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1505
  %8 = load i8, i8* %arrayidx16, align 1, !dbg !1505
  %cmp18 = icmp eq i8 %8, 95, !dbg !1506
  br i1 %cmp18, label %land.lhs.true20, label %lor.lhs.false, !dbg !1507

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %arrayidx21 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1508
  %9 = load i8, i8* %arrayidx21, align 1, !dbg !1508
  %cmp23 = icmp eq i8 %9, 118, !dbg !1509
  br i1 %cmp23, label %land.lhs.true25, label %lor.lhs.false, !dbg !1510

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %arrayidx26 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1511
  %10 = load i8, i8* %arrayidx26, align 1, !dbg !1511
  %cmp28 = icmp eq i8 %10, 116, !dbg !1512
  br i1 %cmp28, label %land.lhs.true30, label %lor.lhs.false, !dbg !1513

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %arrayidx31 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1514
  %11 = load i8, i8* %arrayidx31, align 1, !dbg !1514
  %cmp33 = icmp eq i8 %11, 95, !dbg !1515
  br i1 %cmp33, label %if.then50, label %lor.lhs.false, !dbg !1516

lor.lhs.false:                                    ; preds = %land.lhs.true30, %land.lhs.true25, %land.lhs.true20, %land.lhs.true15
  %cmp37 = icmp eq i8 %8, 118, !dbg !1517
  br i1 %cmp37, label %land.lhs.true39, label %if.else104, !dbg !1518

land.lhs.true39:                                  ; preds = %lor.lhs.false
  %arrayidx40 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1519
  %12 = load i8, i8* %arrayidx40, align 1, !dbg !1519
  %cmp42 = icmp eq i8 %12, 116, !dbg !1520
  br i1 %cmp42, label %land.lhs.true44, label %if.else104, !dbg !1521

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %arrayidx45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1522
  %13 = load i8, i8* %arrayidx45, align 1, !dbg !1522
  %conv46 = sext i8 %13 to i32, !dbg !1522
  %call47 = tail call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0), i32 %conv46) #6, !dbg !1523
  %cmp48 = icmp eq i8* %call47, null, !dbg !1524
  br i1 %cmp48, label %land.lhs.true44.if.else104_crit_edge, label %land.lhs.true44.if.then50_crit_edge, !dbg !1525

land.lhs.true44.if.then50_crit_edge:              ; preds = %land.lhs.true44
  %.pre5 = load i8*, i8** %mangled, align 8, !dbg !1526
  %arrayidx51.phi.trans.insert = getelementptr inbounds i8, i8* %.pre5, i64 2, !dbg !1529
  %.pre6 = load i8, i8* %arrayidx51.phi.trans.insert, align 1, !dbg !1530
  %phitmp = icmp eq i8 %.pre6, 118, !dbg !1525
  br label %if.then50, !dbg !1525

land.lhs.true44.if.else104_crit_edge:             ; preds = %land.lhs.true44
  %.pre3 = load i8*, i8** %mangled, align 8, !dbg !1531
  %.pre4 = load i8, i8* %.pre3, align 1, !dbg !1532
  br label %if.else104, !dbg !1525

if.then50:                                        ; preds = %land.lhs.true44.if.then50_crit_edge, %land.lhs.true30
  %14 = phi i1 [ %phitmp, %land.lhs.true44.if.then50_crit_edge ], [ true, %land.lhs.true30 ]
  %15 = phi i8* [ %.pre5, %land.lhs.true44.if.then50_crit_edge ], [ %6, %land.lhs.true30 ], !dbg !1526
  br i1 %14, label %if.then55, label %if.else57, !dbg !1533

if.then55:                                        ; preds = %if.then50
  %add.ptr56 = getelementptr inbounds i8, i8* %15, i64 5, !dbg !1534
  br label %if.end, !dbg !1535

if.else57:                                        ; preds = %if.then50
  %add.ptr58 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !1536
  br label %if.end

if.end:                                           ; preds = %if.else57, %if.then55
  %storemerge = phi i8* [ %add.ptr58, %if.else57 ], [ %add.ptr56, %if.then55 ], !dbg !1529
  store i8* %storemerge, i8** %mangled, align 8, !dbg !1529
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !1537
  br label %while.cond, !dbg !1543

while.cond:                                       ; preds = %if.end100, %if.end
  %16 = phi i8* [ %storemerge, %if.end ], [ %.pre7, %if.end100 ], !dbg !1544
  %success.0 = phi i32 [ 1, %if.end ], [ %success.1, %if.end100 ], !dbg !1483
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !1466, metadata !DIExpression()), !dbg !1483
  %17 = load i8, i8* %16, align 1, !dbg !1545
  %cmp60 = icmp eq i8 %17, 0, !dbg !1546
  br i1 %cmp60, label %while.end, label %while.body, !dbg !1543

while.body:                                       ; preds = %while.cond
  %conv62 = sext i8 %17 to i32, !dbg !1547
  switch i32 %conv62, label %sw.default [
    i32 81, label %sw.bb
    i32 75, label %sw.bb
    i32 116, label %sw.bb64
  ], !dbg !1548

sw.bb:                                            ; preds = %while.body, %while.body
  %call63 = tail call fastcc i32 @demangle_qualified(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i32 0, i32 1) #8, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %call63, metadata !1466, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog, !dbg !1551

sw.bb64:                                          ; preds = %while.body
  %call65 = tail call fastcc i32 @demangle_template(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, %struct.string* null, i32 1, i32 1) #8, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %call65, metadata !1466, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog, !dbg !1553

sw.default:                                       ; preds = %while.body
  %idxprom = zext i8 %17 to i64, !dbg !1554
  %arrayidx68 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1554
  %18 = load i16, i16* %arrayidx68, align 2, !dbg !1554
  %19 = and i16 %18, 4, !dbg !1554
  %tobool = icmp eq i16 %19, 0, !dbg !1554
  br i1 %tobool, label %if.else79, label %if.then71, !dbg !1556

if.then71:                                        ; preds = %sw.default
  %call72 = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !1557
  call void @llvm.dbg.value(metadata i32 %call72, metadata !1465, metadata !DIExpression()), !dbg !1483
  %20 = load i8*, i8** %mangled, align 8, !dbg !1559
  %call73 = tail call i64 @strlen(i8* %20) #6, !dbg !1561
  %conv74 = trunc i64 %call73 to i32, !dbg !1562
  %cmp75 = icmp sgt i32 %call72, %conv74, !dbg !1563
  br i1 %cmp75, label %sw.epilog, label %if.end82, !dbg !1564

if.else79:                                        ; preds = %sw.default
  %call80 = tail call i64 @strcspn(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0)) #6, !dbg !1565
  %conv81 = trunc i64 %call80 to i32, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %conv81, metadata !1465, metadata !DIExpression()), !dbg !1483
  br label %if.end82

if.end82:                                         ; preds = %if.then71, %if.else79
  %n.0 = phi i32 [ %conv81, %if.else79 ], [ %call72, %if.then71 ], !dbg !1567
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !1465, metadata !DIExpression()), !dbg !1483
  %21 = load i8*, i8** %mangled, align 8, !dbg !1568
  tail call fastcc void @string_appendn(%struct.string* %declp, i8* %21, i32 %n.0) #8, !dbg !1569
  %22 = load i8*, i8** %mangled, align 8, !dbg !1570
  %idx.ext = sext i32 %n.0 to i64, !dbg !1570
  %add.ptr83 = getelementptr inbounds i8, i8* %22, i64 %idx.ext, !dbg !1570
  store i8* %add.ptr83, i8** %mangled, align 8, !dbg !1570
  br label %sw.epilog, !dbg !1571

sw.epilog:                                        ; preds = %if.then71, %if.end82, %sw.bb64, %sw.bb
  %success.1 = phi i32 [ %success.0, %if.end82 ], [ %call65, %sw.bb64 ], [ %call63, %sw.bb ], [ 1, %if.then71 ], !dbg !1483
  call void @llvm.dbg.value(metadata i32 %success.1, metadata !1466, metadata !DIExpression()), !dbg !1483
  %23 = load i8*, i8** %mangled, align 8, !dbg !1572
  %call84 = tail call i8* @strpbrk(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0)) #6, !dbg !1573
  call void @llvm.dbg.value(metadata i8* %call84, metadata !1467, metadata !DIExpression()), !dbg !1483
  %tobool85 = icmp eq i32 %success.1, 0, !dbg !1574
  br i1 %tobool85, label %while.end, label %land.lhs.true86, !dbg !1575

land.lhs.true86:                                  ; preds = %sw.epilog
  %cond1 = icmp eq i8* %call84, null, !dbg !1576
  br i1 %cond1, label %land.lhs.true86.if.end100_crit_edge, label %lor.lhs.false89, !dbg !1576

land.lhs.true86.if.end100_crit_edge:              ; preds = %land.lhs.true86
  %.pre7.pre = load i8*, i8** %mangled, align 8, !dbg !1544
  br label %if.end100, !dbg !1576

lor.lhs.false89:                                  ; preds = %land.lhs.true86
  %24 = load i8*, i8** %mangled, align 8, !dbg !1577
  %cmp90 = icmp eq i8* %call84, %24, !dbg !1578
  br i1 %cmp90, label %if.then92, label %while.end, !dbg !1579

if.then92:                                        ; preds = %lor.lhs.false89
  %25 = load i32, i32* %options, align 8, !dbg !1580
  %and96 = and i32 %25, 4, !dbg !1580
  %tobool97 = icmp eq i32 %and96, 0, !dbg !1580
  %cond = select i1 %tobool97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), !dbg !1580
  tail call fastcc void @string_append(%struct.string* %declp, i8* %cond) #8, !dbg !1581
  %26 = load i8*, i8** %mangled, align 8, !dbg !1582
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1582
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !1582
  br label %if.end100, !dbg !1583

if.end100:                                        ; preds = %land.lhs.true86.if.end100_crit_edge, %if.then92
  %.pre7 = phi i8* [ %.pre7.pre, %land.lhs.true86.if.end100_crit_edge ], [ %incdec.ptr, %if.then92 ], !dbg !1544
  br label %while.cond, !dbg !1543, !llvm.loop !1584

while.end:                                        ; preds = %sw.epilog, %while.cond, %lor.lhs.false89
  %success.2 = phi i32 [ %success.0, %while.cond ], [ 0, %lor.lhs.false89 ], [ 0, %sw.epilog ], !dbg !1483
  call void @llvm.dbg.value(metadata i32 %success.2, metadata !1466, metadata !DIExpression()), !dbg !1483
  %tobool101 = icmp eq i32 %success.2, 0, !dbg !1586
  br i1 %tobool101, label %if.end252, label %if.then102, !dbg !1588

if.then102:                                       ; preds = %while.end
  tail call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.188, i64 0, i64 0)) #8, !dbg !1589
  br label %if.end252, !dbg !1589

if.else104:                                       ; preds = %land.lhs.true44.if.else104_crit_edge, %land.lhs.true39, %lor.lhs.false, %if.else
  %27 = phi i8 [ %.pre4, %land.lhs.true44.if.else104_crit_edge ], [ 95, %land.lhs.true39 ], [ 95, %lor.lhs.false ], [ %7, %if.else ], !dbg !1532
  %28 = phi i8* [ %.pre3, %land.lhs.true44.if.else104_crit_edge ], [ %6, %land.lhs.true39 ], [ %6, %lor.lhs.false ], [ %6, %if.else ], !dbg !1531
  %cmp107 = icmp eq i8 %27, 95, !dbg !1590
  br i1 %cmp107, label %land.lhs.true109, label %if.else184, !dbg !1591

land.lhs.true109:                                 ; preds = %if.else104
  %arrayidx110 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1592
  %29 = load i8, i8* %arrayidx110, align 1, !dbg !1592
  %conv111 = sext i8 %29 to i32, !dbg !1592
  %call112 = tail call i8* @strchr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i64 0, i64 0), i32 %conv111) #6, !dbg !1593
  %cmp113 = icmp eq i8* %call112, null, !dbg !1594
  br i1 %cmp113, label %if.else184, label %land.lhs.true115, !dbg !1595

land.lhs.true115:                                 ; preds = %land.lhs.true109
  %30 = load i8*, i8** %mangled, align 8, !dbg !1596
  %call116 = tail call i8* @strpbrk(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0)) #6, !dbg !1597
  call void @llvm.dbg.value(metadata i8* %call116, metadata !1467, metadata !DIExpression()), !dbg !1483
  %cmp117 = icmp eq i8* %call116, null, !dbg !1598
  br i1 %cmp117, label %if.else184, label %if.then119, !dbg !1599

if.then119:                                       ; preds = %land.lhs.true115
  %31 = load i8*, i8** %mangled, align 8, !dbg !1600
  %incdec.ptr120 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1600
  store i8* %incdec.ptr120, i8** %mangled, align 8, !dbg !1600
  %32 = load i8, i8* %incdec.ptr120, align 1, !dbg !1602
  %conv121 = sext i8 %32 to i32, !dbg !1602
  switch i32 %conv121, label %sw.default126 [
    i32 81, label %sw.bb122
    i32 75, label %sw.bb122
    i32 116, label %sw.bb124
  ], !dbg !1603

sw.bb122:                                         ; preds = %if.then119, %if.then119
  %call123 = tail call fastcc i32 @demangle_qualified(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i32 0, i32 1) #8, !dbg !1604
  call void @llvm.dbg.value(metadata i32 %call123, metadata !1466, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog167, !dbg !1606

sw.bb124:                                         ; preds = %if.then119
  %call125 = tail call fastcc i32 @demangle_template(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, %struct.string* null, i32 1, i32 1) #8, !dbg !1607
  call void @llvm.dbg.value(metadata i32 %call125, metadata !1466, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog167, !dbg !1608

sw.default126:                                    ; preds = %if.then119
  %call127 = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %call127, metadata !1465, metadata !DIExpression()), !dbg !1483
  %cmp128 = icmp slt i32 %call127, 0, !dbg !1610
  br i1 %cmp128, label %sw.epilog167, label %lor.lhs.false130, !dbg !1612

lor.lhs.false130:                                 ; preds = %sw.default126
  %conv131 = sext i32 %call127 to i64, !dbg !1613
  %33 = load i8*, i8** %mangled, align 8, !dbg !1614
  %call132 = tail call i64 @strlen(i8* %33) #6, !dbg !1615
  %cmp133 = icmp slt i64 %call132, %conv131, !dbg !1616
  br i1 %cmp133, label %sw.epilog167, label %if.end136, !dbg !1617

if.end136:                                        ; preds = %lor.lhs.false130
  %cmp137 = icmp sgt i32 %call127, 10, !dbg !1618
  br i1 %cmp137, label %land.lhs.true139, label %if.end164, !dbg !1620

land.lhs.true139:                                 ; preds = %if.end136
  %34 = load i8*, i8** %mangled, align 8, !dbg !1621
  %call140 = tail call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i64 0, i64 0), i64 8) #6, !dbg !1622
  %cmp141 = icmp eq i32 %call140, 0, !dbg !1623
  br i1 %cmp141, label %land.lhs.true143, label %if.end164, !dbg !1624

land.lhs.true143:                                 ; preds = %land.lhs.true139
  %35 = load i8*, i8** %mangled, align 8, !dbg !1625
  %arrayidx144 = getelementptr inbounds i8, i8* %35, i64 9, !dbg !1626
  %36 = load i8, i8* %arrayidx144, align 1, !dbg !1626
  %cmp146 = icmp eq i8 %36, 78, !dbg !1627
  br i1 %cmp146, label %land.lhs.true148, label %if.end164, !dbg !1628

land.lhs.true148:                                 ; preds = %land.lhs.true143
  %arrayidx149 = getelementptr inbounds i8, i8* %35, i64 8, !dbg !1629
  %37 = load i8, i8* %arrayidx149, align 1, !dbg !1629
  %arrayidx151 = getelementptr inbounds i8, i8* %35, i64 10, !dbg !1630
  %38 = load i8, i8* %arrayidx151, align 1, !dbg !1630
  %cmp153 = icmp eq i8 %37, %38, !dbg !1631
  br i1 %cmp153, label %land.lhs.true155, label %if.end164, !dbg !1632

land.lhs.true155:                                 ; preds = %land.lhs.true148
  %conv157 = sext i8 %37 to i32, !dbg !1633
  %call158 = tail call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0), i32 %conv157) #6, !dbg !1634
  %tobool159 = icmp eq i8* %call158, null, !dbg !1634
  br i1 %tobool159, label %if.end164, label %if.then160, !dbg !1635

if.then160:                                       ; preds = %land.lhs.true155
  tail call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.191, i64 0, i64 0)) #8, !dbg !1636
  %39 = load i8*, i8** %mangled, align 8, !dbg !1638
  %add.ptr162 = getelementptr inbounds i8, i8* %39, i64 %conv131, !dbg !1638
  store i8* %add.ptr162, i8** %mangled, align 8, !dbg !1638
  %call163 = tail call i8* @strpbrk(i8* %add.ptr162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0)) #6, !dbg !1639
  call void @llvm.dbg.value(metadata i8* %call163, metadata !1467, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog167, !dbg !1640

if.end164:                                        ; preds = %land.lhs.true155, %land.lhs.true148, %land.lhs.true143, %land.lhs.true139, %if.end136
  %40 = load i8*, i8** %mangled, align 8, !dbg !1641
  tail call fastcc void @string_appendn(%struct.string* %declp, i8* %40, i32 %call127) #8, !dbg !1642
  %41 = load i8*, i8** %mangled, align 8, !dbg !1643
  %add.ptr166 = getelementptr inbounds i8, i8* %41, i64 %conv131, !dbg !1643
  store i8* %add.ptr166, i8** %mangled, align 8, !dbg !1643
  br label %sw.epilog167, !dbg !1644

sw.epilog167:                                     ; preds = %sw.default126, %lor.lhs.false130, %if.end164, %if.then160, %sw.bb124, %sw.bb122
  %success.3 = phi i32 [ 1, %if.then160 ], [ 1, %if.end164 ], [ %call125, %sw.bb124 ], [ %call123, %sw.bb122 ], [ 0, %lor.lhs.false130 ], [ 0, %sw.default126 ], !dbg !1483
  %p.0 = phi i8* [ %call163, %if.then160 ], [ %call116, %if.end164 ], [ %call116, %sw.bb124 ], [ %call116, %sw.bb122 ], [ %call116, %lor.lhs.false130 ], [ %call116, %sw.default126 ], !dbg !1645
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !1467, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %success.3, metadata !1466, metadata !DIExpression()), !dbg !1483
  %tobool168 = icmp eq i32 %success.3, 0, !dbg !1646
  br i1 %tobool168, label %if.end252, label %land.lhs.true169, !dbg !1648

land.lhs.true169:                                 ; preds = %sw.epilog167
  %42 = load i8*, i8** %mangled, align 8, !dbg !1649
  %cmp170 = icmp eq i8* %p.0, %42, !dbg !1650
  br i1 %cmp170, label %if.then172, label %if.end252, !dbg !1651

if.then172:                                       ; preds = %land.lhs.true169
  %incdec.ptr173 = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !1652
  store i8* %incdec.ptr173, i8** %mangled, align 8, !dbg !1652
  %options174 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !1654
  %43 = load i32, i32* %options174, align 8, !dbg !1654
  %and175 = and i32 %43, 4, !dbg !1654
  %tobool176 = icmp eq i32 %and175, 0, !dbg !1654
  %cond177 = select i1 %tobool176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), !dbg !1654
  tail call fastcc void @string_append(%struct.string* %declp, i8* %cond177) #8, !dbg !1655
  %44 = load i8*, i8** %mangled, align 8, !dbg !1656
  %call178 = tail call i64 @strlen(i8* %44) #6, !dbg !1657
  %conv179 = trunc i64 %call178 to i32, !dbg !1657
  call void @llvm.dbg.value(metadata i32 %conv179, metadata !1465, metadata !DIExpression()), !dbg !1483
  %45 = load i8*, i8** %mangled, align 8, !dbg !1658
  tail call fastcc void @string_appendn(%struct.string* %declp, i8* %45, i32 %conv179) #8, !dbg !1659
  %46 = load i8*, i8** %mangled, align 8, !dbg !1660
  %sext2 = shl i64 %call178, 32, !dbg !1660
  %idx.ext180 = ashr exact i64 %sext2, 32, !dbg !1660
  %add.ptr181 = getelementptr inbounds i8, i8* %46, i64 %idx.ext180, !dbg !1660
  store i8* %add.ptr181, i8** %mangled, align 8, !dbg !1660
  br label %if.end252, !dbg !1661

if.else184:                                       ; preds = %land.lhs.true115, %land.lhs.true109, %if.else104
  %47 = load i8*, i8** %mangled, align 8, !dbg !1662
  %call185 = tail call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.192, i64 0, i64 0), i64 8) #6, !dbg !1663
  %cmp186 = icmp eq i32 %call185, 0, !dbg !1664
  %48 = load i8*, i8** %mangled, align 8, !dbg !1665
  br i1 %cmp186, label %if.then188, label %if.else208, !dbg !1666

if.then188:                                       ; preds = %if.else184
  %add.ptr189 = getelementptr inbounds i8, i8* %48, i64 8, !dbg !1667
  store i8* %add.ptr189, i8** %mangled, align 8, !dbg !1667
  %call190 = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !1668
  call void @llvm.dbg.value(metadata i32 %call190, metadata !1468, metadata !DIExpression()), !dbg !1669
  %cmp191 = icmp eq i32 %call190, -1, !dbg !1670
  br i1 %cmp191, label %if.end252, label %if.else194, !dbg !1671

if.else194:                                       ; preds = %if.then188
  %49 = load i8*, i8** %mangled, align 8, !dbg !1672
  %incdec.ptr195 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !1672
  store i8* %incdec.ptr195, i8** %mangled, align 8, !dbg !1672
  %call196 = tail call fastcc i8* @internal_cplus_demangle(%struct.work_stuff* %work, i8* nonnull %incdec.ptr195) #8, !dbg !1673
  call void @llvm.dbg.value(metadata i8* %call196, metadata !1474, metadata !DIExpression()), !dbg !1674
  %tobool197 = icmp eq i8* %call196, null, !dbg !1675
  br i1 %tobool197, label %if.end252, label %if.then198, !dbg !1676

if.then198:                                       ; preds = %if.else194
  %50 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i64 0, i64 0, !dbg !1677
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %50) #7, !dbg !1677
  call void @llvm.dbg.declare(metadata [50 x i8]* %buf, metadata !1477, metadata !DIExpression()), !dbg !1678
  %sub = sub nsw i32 0, %call190, !dbg !1679
  %call199 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.193, i64 0, i64 0), i32 %sub) #6, !dbg !1680
  call fastcc void @string_append(%struct.string* %declp, i8* nonnull %50) #8, !dbg !1681
  call fastcc void @string_append(%struct.string* %declp, i8* nonnull %call196) #8, !dbg !1682
  call void @free(i8* nonnull %call196) #6, !dbg !1683
  %51 = load i8*, i8** %mangled, align 8, !dbg !1684
  %call201 = call i64 @strlen(i8* %51) #6, !dbg !1685
  %52 = load i8*, i8** %mangled, align 8, !dbg !1686
  %sext = shl i64 %call201, 32, !dbg !1686
  %idx.ext203 = ashr exact i64 %sext, 32, !dbg !1686
  %add.ptr204 = getelementptr inbounds i8, i8* %52, i64 %idx.ext203, !dbg !1686
  store i8* %add.ptr204, i8** %mangled, align 8, !dbg !1686
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %50) #7, !dbg !1687
  br label %if.end252, !dbg !1688

if.else208:                                       ; preds = %if.else184
  %call209 = tail call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.194, i64 0, i64 0), i64 3) #6, !dbg !1689
  %cmp210 = icmp eq i32 %call209, 0, !dbg !1691
  br i1 %cmp210, label %land.lhs.true212, label %if.end252, !dbg !1692

land.lhs.true212:                                 ; preds = %if.else208
  %53 = load i8*, i8** %mangled, align 8, !dbg !1693
  %arrayidx213 = getelementptr inbounds i8, i8* %53, i64 3, !dbg !1694
  %54 = load i8, i8* %arrayidx213, align 1, !dbg !1694
  %cmp215 = icmp eq i8 %54, 105, !dbg !1695
  br i1 %cmp215, label %if.then222, label %lor.lhs.false217, !dbg !1696

lor.lhs.false217:                                 ; preds = %land.lhs.true212
  %cmp220 = icmp eq i8 %54, 102, !dbg !1697
  br i1 %cmp220, label %if.then222, label %if.end252, !dbg !1698

if.then222:                                       ; preds = %lor.lhs.false217, %land.lhs.true212
  %cond227 = select i1 %cmp215, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.195, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.196, i64 0, i64 0), !dbg !1699
  call void @llvm.dbg.value(metadata i8* %cond227, metadata !1467, metadata !DIExpression()), !dbg !1483
  %add.ptr228 = getelementptr inbounds i8, i8* %53, i64 4, !dbg !1701
  store i8* %add.ptr228, i8** %mangled, align 8, !dbg !1701
  %55 = load i8, i8* %add.ptr228, align 1, !dbg !1702
  %conv229 = sext i8 %55 to i32, !dbg !1702
  switch i32 %conv229, label %sw.default234 [
    i32 81, label %sw.bb230
    i32 75, label %sw.bb230
    i32 116, label %sw.bb232
  ], !dbg !1703

sw.bb230:                                         ; preds = %if.then222, %if.then222
  %call231 = tail call fastcc i32 @demangle_qualified(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i32 0, i32 1) #8, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %call231, metadata !1466, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog236, !dbg !1706

sw.bb232:                                         ; preds = %if.then222
  %call233 = tail call fastcc i32 @demangle_template(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, %struct.string* null, i32 1, i32 1) #8, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %call233, metadata !1466, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog236, !dbg !1708

sw.default234:                                    ; preds = %if.then222
  %call235 = tail call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) #8, !dbg !1709
  call void @llvm.dbg.value(metadata i32 %call235, metadata !1466, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog236, !dbg !1710

sw.epilog236:                                     ; preds = %sw.default234, %sw.bb232, %sw.bb230
  %success.7 = phi i32 [ %call235, %sw.default234 ], [ %call233, %sw.bb232 ], [ %call231, %sw.bb230 ], !dbg !1711
  call void @llvm.dbg.value(metadata i32 %success.7, metadata !1466, metadata !DIExpression()), !dbg !1483
  %tobool237 = icmp eq i32 %success.7, 0, !dbg !1712
  br i1 %tobool237, label %if.end243, label %land.lhs.true238, !dbg !1714

land.lhs.true238:                                 ; preds = %sw.epilog236
  %56 = load i8*, i8** %mangled, align 8, !dbg !1715
  %57 = load i8, i8* %56, align 1, !dbg !1716
  %cmp240 = icmp eq i8 %57, 0, !dbg !1717
  %spec.select = select i1 %cmp240, i32 %success.7, i32 0, !dbg !1718
  br label %if.end243, !dbg !1718

if.end243:                                        ; preds = %sw.epilog236, %land.lhs.true238
  %success.8 = phi i32 [ 0, %sw.epilog236 ], [ %spec.select, %land.lhs.true238 ], !dbg !1719
  call void @llvm.dbg.value(metadata i32 %success.8, metadata !1466, metadata !DIExpression()), !dbg !1483
  %tobool244 = icmp eq i32 %success.8, 0, !dbg !1720
  br i1 %tobool244, label %if.end252, label %if.then245, !dbg !1722

if.then245:                                       ; preds = %if.end243
  tail call fastcc void @string_append(%struct.string* %declp, i8* %cond227) #8, !dbg !1723
  br label %if.end252, !dbg !1723

if.end252:                                        ; preds = %while.end, %sw.epilog167, %if.else194, %if.end243, %if.then102, %if.then198, %if.then188, %if.else208, %lor.lhs.false217, %if.then245, %if.then172, %land.lhs.true169, %if.then
  %success.13 = phi i32 [ 1, %if.then ], [ %success.2, %if.then102 ], [ 0, %while.end ], [ %success.3, %if.then172 ], [ 0, %land.lhs.true169 ], [ 0, %sw.epilog167 ], [ 0, %if.then188 ], [ 1, %if.then198 ], [ 0, %if.else194 ], [ %success.8, %if.then245 ], [ 0, %if.end243 ], [ 0, %lor.lhs.false217 ], [ 0, %if.else208 ], !dbg !1483
  call void @llvm.dbg.value(metadata i32 %success.13, metadata !1466, metadata !DIExpression()), !dbg !1483
  ret i32 %success.13, !dbg !1724
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_prefix(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) unnamed_addr #5 !dbg !1725 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !1727, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !1728, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !1729, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i32 1, metadata !1730, metadata !DIExpression()), !dbg !1737
  %0 = load i8*, i8** %mangled, align 8, !dbg !1738
  %call = tail call i64 @strlen(i8* %0) #6, !dbg !1739
  %cmp = icmp ugt i64 %call, 6, !dbg !1740
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1741

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %mangled, align 8, !dbg !1742
  %call1 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.211, i64 0, i64 0), i64 6) #6, !dbg !1743
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1744
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !1745

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i8*, i8** %mangled, align 8, !dbg !1746
  %call3 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.212, i64 0, i64 0), i64 6) #6, !dbg !1747
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1748
  br i1 %cmp4, label %if.then, label %if.else, !dbg !1749

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load i8*, i8** %mangled, align 8, !dbg !1750
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 6, !dbg !1750
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !1750
  %dllimported = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 15, !dbg !1752
  store i32 1, i32* %dllimported, align 4, !dbg !1753
  br label %if.end82, !dbg !1754

if.else:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %mangled, align 8, !dbg !1755
  %call5 = tail call i64 @strlen(i8* %4) #6, !dbg !1756
  %cmp6 = icmp ugt i64 %call5, 10, !dbg !1757
  br i1 %cmp6, label %land.lhs.true7, label %if.else43, !dbg !1758

land.lhs.true7:                                   ; preds = %if.else
  %5 = load i8*, i8** %mangled, align 8, !dbg !1759
  %call8 = tail call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i64 0, i64 0), i64 8) #6, !dbg !1760
  %cmp9 = icmp eq i32 %call8, 0, !dbg !1761
  br i1 %cmp9, label %if.then10, label %if.else43, !dbg !1762

if.then10:                                        ; preds = %land.lhs.true7
  %6 = load i8*, i8** %mangled, align 8, !dbg !1763
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 8, !dbg !1764
  %7 = load i8, i8* %arrayidx, align 1, !dbg !1764
  %conv = sext i8 %7 to i32, !dbg !1764
  %call11 = tail call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0), i32 %conv) #6, !dbg !1765
  call void @llvm.dbg.value(metadata i8* %call11, metadata !1733, metadata !DIExpression()), !dbg !1766
  %cmp12 = icmp eq i8* %call11, null, !dbg !1767
  br i1 %cmp12, label %if.end42, label %land.lhs.true14, !dbg !1769

land.lhs.true14:                                  ; preds = %if.then10
  %8 = load i8, i8* %call11, align 1, !dbg !1770
  %9 = load i8*, i8** %mangled, align 8, !dbg !1771
  %arrayidx16 = getelementptr inbounds i8, i8* %9, i64 10, !dbg !1772
  %10 = load i8, i8* %arrayidx16, align 1, !dbg !1772
  %cmp18 = icmp eq i8 %8, %10, !dbg !1773
  br i1 %cmp18, label %if.then20, label %if.end42, !dbg !1774

if.then20:                                        ; preds = %land.lhs.true14
  %arrayidx21 = getelementptr inbounds i8, i8* %9, i64 9, !dbg !1775
  %11 = load i8, i8* %arrayidx21, align 1, !dbg !1775
  %cmp23 = icmp eq i8 %11, 68, !dbg !1778
  br i1 %cmp23, label %if.then25, label %if.else29, !dbg !1779

if.then25:                                        ; preds = %if.then20
  %add.ptr26 = getelementptr inbounds i8, i8* %9, i64 11, !dbg !1780
  store i8* %add.ptr26, i8** %mangled, align 8, !dbg !1780
  %destructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !1782
  store i32 2, i32* %destructor, align 4, !dbg !1783
  %call27 = tail call fastcc i32 @gnu_special(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) #8, !dbg !1784
  %tobool = icmp eq i32 %call27, 0, !dbg !1784
  br i1 %tobool, label %if.end42, label %cleanup, !dbg !1786

if.else29:                                        ; preds = %if.then20
  %cmp32 = icmp eq i8 %11, 73, !dbg !1787
  br i1 %cmp32, label %if.then34, label %if.end42, !dbg !1789

if.then34:                                        ; preds = %if.else29
  %add.ptr35 = getelementptr inbounds i8, i8* %9, i64 11, !dbg !1790
  store i8* %add.ptr35, i8** %mangled, align 8, !dbg !1790
  %constructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 10, !dbg !1792
  store i32 2, i32* %constructor, align 8, !dbg !1793
  %call36 = tail call fastcc i32 @gnu_special(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) #8, !dbg !1794
  %tobool37 = icmp eq i32 %call36, 0, !dbg !1794
  br i1 %tobool37, label %if.end42, label %cleanup, !dbg !1796

if.end42:                                         ; preds = %if.then25, %if.then34, %if.then10, %if.else29, %land.lhs.true14
  br label %cleanup, !dbg !1797

cleanup:                                          ; preds = %if.then25, %if.then34, %if.end42
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end42 ], [ false, %if.then25 ], [ false, %if.then34 ]
  br i1 %cleanup.dest.slot.0, label %if.end82, label %cleanup341

if.else43:                                        ; preds = %land.lhs.true7, %if.else
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !1798
  %12 = load i32, i32* %options, align 8, !dbg !1798
  %and = and i32 %12, 2048, !dbg !1798
  %tobool44 = icmp eq i32 %and, 0, !dbg !1798
  br i1 %tobool44, label %lor.lhs.false45, label %land.lhs.true53, !dbg !1800

lor.lhs.false45:                                  ; preds = %if.else43
  %and47 = and i32 %12, 4096, !dbg !1801
  %tobool48 = icmp eq i32 %and47, 0, !dbg !1801
  br i1 %tobool48, label %lor.lhs.false49, label %land.lhs.true53, !dbg !1802

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %and51 = and i32 %12, 8192, !dbg !1803
  %tobool52 = icmp eq i32 %and51, 0, !dbg !1803
  br i1 %tobool52, label %if.else60, label %land.lhs.true53, !dbg !1804

land.lhs.true53:                                  ; preds = %lor.lhs.false49, %lor.lhs.false45, %if.else43
  %13 = load i8*, i8** %mangled, align 8, !dbg !1805
  %call54 = tail call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.213, i64 0, i64 0), i64 7) #6, !dbg !1806
  %cmp55 = icmp eq i32 %call54, 0, !dbg !1807
  br i1 %cmp55, label %if.then57, label %land.lhs.true53.if.else60_crit_edge, !dbg !1808

land.lhs.true53.if.else60_crit_edge:              ; preds = %land.lhs.true53
  %.pre = load i32, i32* %options, align 8, !dbg !1809
  br label %if.else60, !dbg !1808

if.then57:                                        ; preds = %land.lhs.true53
  %14 = load i8*, i8** %mangled, align 8, !dbg !1811
  %add.ptr58 = getelementptr inbounds i8, i8* %14, i64 7, !dbg !1811
  store i8* %add.ptr58, i8** %mangled, align 8, !dbg !1811
  %destructor59 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !1813
  store i32 2, i32* %destructor59, align 4, !dbg !1814
  br label %if.end82, !dbg !1815

if.else60:                                        ; preds = %land.lhs.true53.if.else60_crit_edge, %lor.lhs.false49
  %15 = phi i32 [ %.pre, %land.lhs.true53.if.else60_crit_edge ], [ %12, %lor.lhs.false49 ], !dbg !1809
  %and62 = and i32 %15, 2048, !dbg !1809
  %tobool63 = icmp eq i32 %and62, 0, !dbg !1809
  br i1 %tobool63, label %lor.lhs.false64, label %land.lhs.true72, !dbg !1816

lor.lhs.false64:                                  ; preds = %if.else60
  %and66 = and i32 %15, 4096, !dbg !1817
  %tobool67 = icmp eq i32 %and66, 0, !dbg !1817
  br i1 %tobool67, label %lor.lhs.false68, label %land.lhs.true72, !dbg !1818

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %and70 = and i32 %15, 8192, !dbg !1819
  %tobool71 = icmp eq i32 %and70, 0, !dbg !1819
  br i1 %tobool71, label %if.end82, label %land.lhs.true72, !dbg !1820

land.lhs.true72:                                  ; preds = %lor.lhs.false68, %lor.lhs.false64, %if.else60
  %16 = load i8*, i8** %mangled, align 8, !dbg !1821
  %call73 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.214, i64 0, i64 0), i64 7) #6, !dbg !1822
  %cmp74 = icmp eq i32 %call73, 0, !dbg !1823
  br i1 %cmp74, label %if.then76, label %if.end82, !dbg !1824

if.then76:                                        ; preds = %land.lhs.true72
  %17 = load i8*, i8** %mangled, align 8, !dbg !1825
  %add.ptr77 = getelementptr inbounds i8, i8* %17, i64 7, !dbg !1825
  store i8* %add.ptr77, i8** %mangled, align 8, !dbg !1825
  %constructor78 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 10, !dbg !1827
  store i32 2, i32* %constructor78, align 8, !dbg !1828
  br label %if.end82, !dbg !1829

if.end82:                                         ; preds = %lor.lhs.false68, %cleanup, %land.lhs.true72, %if.then76, %if.then57, %if.then
  %18 = load i8*, i8** %mangled, align 8, !dbg !1830
  call void @llvm.dbg.value(metadata i8* %18, metadata !1731, metadata !DIExpression()), !dbg !1737
  br label %do.body, !dbg !1832

do.body:                                          ; preds = %land.end, %if.end82
  %scan.0 = phi i8* [ %18, %if.end82 ], [ %scan.1, %land.end ], !dbg !1833
  call void @llvm.dbg.value(metadata i8* %scan.0, metadata !1731, metadata !DIExpression()), !dbg !1737
  %call83 = tail call i8* @strchr(i8* %scan.0, i32 95) #6, !dbg !1834
  call void @llvm.dbg.value(metadata i8* %call83, metadata !1731, metadata !DIExpression()), !dbg !1737
  %cmp84 = icmp eq i8* %call83, null, !dbg !1836
  br i1 %cmp84, label %land.end, label %land.rhs, !dbg !1837

land.rhs:                                         ; preds = %do.body
  %incdec.ptr = getelementptr inbounds i8, i8* %call83, i64 1, !dbg !1838
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1731, metadata !DIExpression()), !dbg !1737
  %19 = load i8, i8* %incdec.ptr, align 1, !dbg !1839
  %cmp87 = icmp ne i8 %19, 95, !dbg !1840
  br label %land.end

land.end:                                         ; preds = %do.body, %land.rhs
  %scan.1 = phi i8* [ %incdec.ptr, %land.rhs ], [ null, %do.body ], !dbg !1833
  %20 = phi i1 [ %cmp87, %land.rhs ], [ false, %do.body ], !dbg !1833
  call void @llvm.dbg.value(metadata i8* %scan.1, metadata !1731, metadata !DIExpression()), !dbg !1737
  br i1 %20, label %do.body, label %do.end, !dbg !1841, !llvm.loop !1842

do.end:                                           ; preds = %land.end
  %scan.1.lcssa = phi i8* [ %scan.1, %land.end ], !dbg !1833
  call void @llvm.dbg.value(metadata i8* %scan.1.lcssa, metadata !1731, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8* %scan.1.lcssa, metadata !1731, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8* %scan.1.lcssa, metadata !1731, metadata !DIExpression()), !dbg !1737
  %cmp89 = icmp eq i8* %scan.1.lcssa, null, !dbg !1844
  %incdec.ptr92 = getelementptr inbounds i8, i8* %scan.1.lcssa, i64 -1, !dbg !1846
  %spec.select = select i1 %cmp89, i8* null, i8* %incdec.ptr92, !dbg !1847
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !1731, metadata !DIExpression()), !dbg !1737
  br i1 %cmp89, label %if.end104, label %if.then96, !dbg !1848

if.then96:                                        ; preds = %do.end
  %call97 = tail call i64 @strspn(i8* %spec.select, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.215, i64 0, i64 0)) #6, !dbg !1849
  %conv98 = trunc i64 %call97 to i32, !dbg !1849
  call void @llvm.dbg.value(metadata i32 %conv98, metadata !1732, metadata !DIExpression()), !dbg !1737
  %cmp99 = icmp sgt i32 %conv98, 2, !dbg !1852
  %sub = shl i64 %call97, 32, !dbg !1854
  %sext = add i64 %sub, -8589934592, !dbg !1854
  %idx.ext = ashr exact i64 %sext, 32, !dbg !1854
  %add.ptr102 = getelementptr inbounds i8, i8* %spec.select, i64 %idx.ext, !dbg !1854
  %scan.3 = select i1 %cmp99, i8* %add.ptr102, i8* %spec.select, !dbg !1854
  br label %if.end104, !dbg !1854

if.end104:                                        ; preds = %do.end, %if.then96
  %scan.4 = phi i8* [ %spec.select, %do.end ], [ %scan.3, %if.then96 ], !dbg !1737
  call void @llvm.dbg.value(metadata i8* %scan.4, metadata !1731, metadata !DIExpression()), !dbg !1737
  %cmp105 = icmp eq i8* %scan.4, null, !dbg !1855
  br i1 %cmp105, label %if.end327, label %if.else108, !dbg !1857

if.else108:                                       ; preds = %if.end104
  %static_type = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 12, !dbg !1858
  %21 = load i32, i32* %static_type, align 8, !dbg !1858
  %tobool109 = icmp eq i32 %21, 0, !dbg !1860
  br i1 %tobool109, label %if.else125, label %if.then110, !dbg !1861

if.then110:                                       ; preds = %if.else108
  %22 = load i8, i8* %scan.4, align 1, !dbg !1862
  %idxprom = zext i8 %22 to i64, !dbg !1862
  %arrayidx114 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1862
  %23 = load i16, i16* %arrayidx114, align 2, !dbg !1862
  %24 = and i16 %23, 4, !dbg !1862
  %tobool117 = icmp eq i16 %24, 0, !dbg !1862
  br i1 %tobool117, label %land.lhs.true118, label %if.end327, !dbg !1865

land.lhs.true118:                                 ; preds = %if.then110
  %cmp121 = icmp eq i8 %22, 116, !dbg !1866
  %spec.select1 = zext i1 %cmp121 to i32, !dbg !1867
  br label %if.end327, !dbg !1867

if.else125:                                       ; preds = %if.else108
  %25 = load i8*, i8** %mangled, align 8, !dbg !1868
  %cmp126 = icmp eq i8* %scan.4, %25, !dbg !1870
  br i1 %cmp126, label %land.lhs.true128, label %if.else204, !dbg !1871

land.lhs.true128:                                 ; preds = %if.else125
  %arrayidx129 = getelementptr inbounds i8, i8* %scan.4, i64 2, !dbg !1872
  %26 = load i8, i8* %arrayidx129, align 1, !dbg !1872
  %idxprom132 = zext i8 %26 to i64, !dbg !1872
  %arrayidx133 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom132, !dbg !1872
  %27 = load i16, i16* %arrayidx133, align 2, !dbg !1872
  %28 = and i16 %27, 4, !dbg !1872
  %tobool136 = icmp eq i16 %28, 0, !dbg !1872
  br i1 %tobool136, label %lor.lhs.false137, label %if.then157, !dbg !1873

lor.lhs.false137:                                 ; preds = %land.lhs.true128
  %cmp140 = icmp eq i8 %26, 81, !dbg !1874
  br i1 %cmp140, label %if.then157, label %lor.lhs.false142, !dbg !1875

lor.lhs.false142:                                 ; preds = %lor.lhs.false137
  %cmp145 = icmp eq i8 %26, 116, !dbg !1876
  br i1 %cmp145, label %if.then157, label %lor.lhs.false147, !dbg !1877

lor.lhs.false147:                                 ; preds = %lor.lhs.false142
  %cmp150 = icmp eq i8 %26, 75, !dbg !1878
  br i1 %cmp150, label %if.then157, label %lor.lhs.false152, !dbg !1879

lor.lhs.false152:                                 ; preds = %lor.lhs.false147
  %cmp155 = icmp eq i8 %26, 72, !dbg !1880
  br i1 %cmp155, label %if.then157, label %if.else204, !dbg !1881

if.then157:                                       ; preds = %land.lhs.true128, %lor.lhs.false152, %lor.lhs.false147, %lor.lhs.false142, %lor.lhs.false137
  %options158 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !1882
  %29 = load i32, i32* %options158, align 8, !dbg !1882
  %and159 = and i32 %29, 1024, !dbg !1882
  %tobool160 = icmp eq i32 %and159, 0, !dbg !1882
  br i1 %tobool160, label %lor.lhs.false161, label %land.lhs.true169, !dbg !1885

lor.lhs.false161:                                 ; preds = %if.then157
  %and163 = and i32 %29, 2048, !dbg !1886
  %tobool164 = icmp eq i32 %and163, 0, !dbg !1886
  br i1 %tobool164, label %lor.lhs.false165, label %land.lhs.true169, !dbg !1887

lor.lhs.false165:                                 ; preds = %lor.lhs.false161
  %and167 = and i32 %29, 4096, !dbg !1888
  %tobool168 = icmp eq i32 %and167, 0, !dbg !1888
  br i1 %tobool168, label %if.else183, label %land.lhs.true169, !dbg !1889

land.lhs.true169:                                 ; preds = %lor.lhs.false165, %lor.lhs.false161, %if.then157
  br i1 %tobool136, label %if.else183, label %if.then178, !dbg !1890

if.then178:                                       ; preds = %land.lhs.true169
  store i8* %arrayidx129, i8** %mangled, align 8, !dbg !1891
  %call180 = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !1893
  %30 = load i8*, i8** %mangled, align 8, !dbg !1894
  tail call fastcc void @string_append(%struct.string* %declp, i8* %30) #8, !dbg !1895
  %31 = load i8*, i8** %mangled, align 8, !dbg !1896
  %call181 = tail call i64 @strlen(i8* %31) #6, !dbg !1897
  %32 = load i8*, i8** %mangled, align 8, !dbg !1898
  %add.ptr182 = getelementptr inbounds i8, i8* %32, i64 %call181, !dbg !1898
  store i8* %add.ptr182, i8** %mangled, align 8, !dbg !1898
  call void @llvm.dbg.value(metadata i32 1, metadata !1730, metadata !DIExpression()), !dbg !1737
  br label %if.end327, !dbg !1899

if.else183:                                       ; preds = %land.lhs.true169, %lor.lhs.false165
  br i1 %tobool160, label %lor.lhs.false187, label %if.end201, !dbg !1900

lor.lhs.false187:                                 ; preds = %if.else183
  %and189 = and i32 %29, 2048, !dbg !1903
  %tobool190 = icmp eq i32 %and189, 0, !dbg !1903
  br i1 %tobool190, label %lor.lhs.false191, label %if.end201, !dbg !1904

lor.lhs.false191:                                 ; preds = %lor.lhs.false187
  %and193 = and i32 %29, 4096, !dbg !1905
  %tobool194 = icmp eq i32 %and193, 0, !dbg !1905
  br i1 %tobool194, label %lor.lhs.false195, label %if.end201, !dbg !1906

lor.lhs.false195:                                 ; preds = %lor.lhs.false191
  %and197 = and i32 %29, 8192, !dbg !1907
  %tobool198 = icmp eq i32 %and197, 0, !dbg !1907
  br i1 %tobool198, label %if.then199, label %if.end201, !dbg !1908

if.then199:                                       ; preds = %lor.lhs.false195
  %constructor200 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 10, !dbg !1909
  %33 = load i32, i32* %constructor200, align 8, !dbg !1910
  %add = add nsw i32 %33, 1, !dbg !1910
  store i32 %add, i32* %constructor200, align 8, !dbg !1910
  br label %if.end201, !dbg !1911

if.end201:                                        ; preds = %lor.lhs.false195, %lor.lhs.false191, %lor.lhs.false187, %if.else183, %if.then199
  store i8* %arrayidx129, i8** %mangled, align 8, !dbg !1912
  br label %if.end327

if.else204:                                       ; preds = %lor.lhs.false152, %if.else125
  %options205 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !1913
  %34 = load i32, i32* %options205, align 8, !dbg !1913
  %and206 = and i32 %34, 2048, !dbg !1913
  %tobool207 = icmp eq i32 %and206, 0, !dbg !1913
  br i1 %tobool207, label %if.else221, label %land.lhs.true208, !dbg !1915

land.lhs.true208:                                 ; preds = %if.else204
  %arrayidx209 = getelementptr inbounds i8, i8* %scan.4, i64 2, !dbg !1916
  %35 = load i8, i8* %arrayidx209, align 1, !dbg !1916
  %cmp211 = icmp eq i8 %35, 112, !dbg !1917
  br i1 %cmp211, label %land.lhs.true213, label %if.else221, !dbg !1918

land.lhs.true213:                                 ; preds = %land.lhs.true208
  %arrayidx214 = getelementptr inbounds i8, i8* %scan.4, i64 3, !dbg !1919
  %36 = load i8, i8* %arrayidx214, align 1, !dbg !1919
  %cmp216 = icmp eq i8 %36, 116, !dbg !1920
  br i1 %cmp216, label %if.then218, label %if.else221, !dbg !1921

if.then218:                                       ; preds = %land.lhs.true213
  call void @llvm.dbg.value(metadata i32 1, metadata !1730, metadata !DIExpression()), !dbg !1737
  %call219 = tail call i64 @strlen(i8* %25) #6, !dbg !1922
  %conv220 = trunc i64 %call219 to i32, !dbg !1922
  tail call fastcc void @demangle_arm_hp_template(%struct.work_stuff* %work, i8** %mangled, i32 %conv220, %struct.string* %declp) #8, !dbg !1924
  br label %if.end327, !dbg !1925

if.else221:                                       ; preds = %if.else204, %land.lhs.true213, %land.lhs.true208
  %and223 = and i32 %34, 8192, !dbg !1926
  %tobool224 = icmp eq i32 %and223, 0, !dbg !1926
  br i1 %tobool224, label %if.else258, label %land.lhs.true225, !dbg !1928

land.lhs.true225:                                 ; preds = %if.else221
  %arrayidx226 = getelementptr inbounds i8, i8* %scan.4, i64 2, !dbg !1929
  %37 = load i8, i8* %arrayidx226, align 1, !dbg !1929
  %cmp228 = icmp eq i8 %37, 116, !dbg !1930
  br i1 %cmp228, label %land.lhs.true230, label %lor.lhs.false235, !dbg !1931

land.lhs.true230:                                 ; preds = %land.lhs.true225
  %arrayidx231 = getelementptr inbounds i8, i8* %scan.4, i64 3, !dbg !1932
  %38 = load i8, i8* %arrayidx231, align 1, !dbg !1932
  %cmp233 = icmp eq i8 %38, 109, !dbg !1933
  br i1 %cmp233, label %if.then255, label %lor.lhs.false235, !dbg !1934

lor.lhs.false235:                                 ; preds = %land.lhs.true230, %land.lhs.true225
  %cmp238 = icmp eq i8 %37, 112, !dbg !1935
  br i1 %cmp238, label %land.lhs.true240, label %lor.lhs.false245, !dbg !1936

land.lhs.true240:                                 ; preds = %lor.lhs.false235
  %arrayidx241 = getelementptr inbounds i8, i8* %scan.4, i64 3, !dbg !1937
  %39 = load i8, i8* %arrayidx241, align 1, !dbg !1937
  %cmp243 = icmp eq i8 %39, 115, !dbg !1938
  br i1 %cmp243, label %if.then255, label %lor.lhs.false245, !dbg !1939

lor.lhs.false245:                                 ; preds = %land.lhs.true240, %lor.lhs.false235
  br i1 %cmp238, label %land.lhs.true250, label %if.else258, !dbg !1940

land.lhs.true250:                                 ; preds = %lor.lhs.false245
  %arrayidx251 = getelementptr inbounds i8, i8* %scan.4, i64 3, !dbg !1941
  %40 = load i8, i8* %arrayidx251, align 1, !dbg !1941
  %cmp253 = icmp eq i8 %40, 116, !dbg !1942
  br i1 %cmp253, label %if.then255, label %if.else258, !dbg !1943

if.then255:                                       ; preds = %land.lhs.true250, %land.lhs.true240, %land.lhs.true230
  call void @llvm.dbg.value(metadata i32 1, metadata !1730, metadata !DIExpression()), !dbg !1737
  %call256 = tail call i64 @strlen(i8* %25) #6, !dbg !1944
  %conv257 = trunc i64 %call256 to i32, !dbg !1944
  tail call fastcc void @demangle_arm_hp_template(%struct.work_stuff* %work, i8** %mangled, i32 %conv257, %struct.string* %declp) #8, !dbg !1946
  br label %if.end327, !dbg !1947

if.else258:                                       ; preds = %if.else221, %land.lhs.true250, %lor.lhs.false245
  br i1 %cmp126, label %land.lhs.true261, label %if.else258.if.else313_crit_edge, !dbg !1948

if.else258.if.else313_crit_edge:                  ; preds = %if.else258
  %add.ptr314.phi.trans.insert = getelementptr inbounds i8, i8* %scan.4, i64 2, !dbg !1950
  %.pre2 = load i8, i8* %add.ptr314.phi.trans.insert, align 1, !dbg !1952
  br label %if.else313, !dbg !1948

land.lhs.true261:                                 ; preds = %if.else258
  %arrayidx262 = getelementptr inbounds i8, i8* %scan.4, i64 2, !dbg !1953
  %41 = load i8, i8* %arrayidx262, align 1, !dbg !1953
  %idxprom265 = zext i8 %41 to i64, !dbg !1953
  %arrayidx266 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom265, !dbg !1953
  %42 = load i16, i16* %arrayidx266, align 2, !dbg !1953
  %43 = and i16 %42, 4, !dbg !1953
  %tobool269 = icmp eq i16 %43, 0, !dbg !1953
  br i1 %tobool269, label %land.lhs.true270, label %if.else313, !dbg !1954

land.lhs.true270:                                 ; preds = %land.lhs.true261
  %cmp273 = icmp eq i8 %41, 116, !dbg !1955
  br i1 %cmp273, label %if.else313, label %if.then275, !dbg !1956

if.then275:                                       ; preds = %land.lhs.true270
  br i1 %tobool207, label %lor.lhs.false279, label %lor.lhs.false291, !dbg !1957

lor.lhs.false279:                                 ; preds = %if.then275
  %and281 = and i32 %34, 1024, !dbg !1960
  %tobool282 = icmp eq i32 %and281, 0, !dbg !1960
  br i1 %tobool282, label %lor.lhs.false283, label %lor.lhs.false291, !dbg !1961

lor.lhs.false283:                                 ; preds = %lor.lhs.false279
  %and285 = and i32 %34, 4096, !dbg !1962
  %tobool286 = icmp eq i32 %and285, 0, !dbg !1962
  br i1 %tobool286, label %lor.lhs.false287, label %lor.lhs.false291, !dbg !1963

lor.lhs.false287:                                 ; preds = %lor.lhs.false283
  br i1 %tobool224, label %if.then295, label %lor.lhs.false291, !dbg !1964

lor.lhs.false291:                                 ; preds = %lor.lhs.false287, %lor.lhs.false283, %lor.lhs.false279, %if.then275
  %call292 = tail call fastcc i32 @arm_special(i8** %mangled, %struct.string* %declp) #8, !dbg !1965
  %cmp293 = icmp eq i32 %call292, 0, !dbg !1966
  br i1 %cmp293, label %if.then295, label %if.end327, !dbg !1967

if.then295:                                       ; preds = %lor.lhs.false287, %lor.lhs.false291
  br label %while.cond, !dbg !1968

while.cond:                                       ; preds = %while.body, %if.then295
  %scan.5 = phi i8* [ %scan.4, %if.then295 ], [ %incdec.ptr299, %while.body ], !dbg !1737
  call void @llvm.dbg.value(metadata i8* %scan.5, metadata !1731, metadata !DIExpression()), !dbg !1737
  %44 = load i8, i8* %scan.5, align 1, !dbg !1970
  %cmp297 = icmp eq i8 %44, 95, !dbg !1971
  br i1 %cmp297, label %while.body, label %while.end, !dbg !1968

while.body:                                       ; preds = %while.cond
  %incdec.ptr299 = getelementptr inbounds i8, i8* %scan.5, i64 1, !dbg !1972
  call void @llvm.dbg.value(metadata i8* %incdec.ptr299, metadata !1731, metadata !DIExpression()), !dbg !1737
  br label %while.cond, !dbg !1968, !llvm.loop !1974

while.end:                                        ; preds = %while.cond
  %scan.5.lcssa = phi i8* [ %scan.5, %while.cond ], !dbg !1737
  call void @llvm.dbg.value(metadata i8* %scan.5.lcssa, metadata !1731, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8* %scan.5.lcssa, metadata !1731, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8* %scan.5.lcssa, metadata !1731, metadata !DIExpression()), !dbg !1737
  %call300 = tail call i8* @strstr(i8* %scan.5.lcssa, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0)) #6, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %call300, metadata !1731, metadata !DIExpression()), !dbg !1737
  %cmp301 = icmp eq i8* %call300, null, !dbg !1978
  br i1 %cmp301, label %if.end327, label %lor.lhs.false303, !dbg !1979

lor.lhs.false303:                                 ; preds = %while.end
  %add.ptr304 = getelementptr inbounds i8, i8* %call300, i64 2, !dbg !1980
  %45 = load i8, i8* %add.ptr304, align 1, !dbg !1981
  %cmp306 = icmp eq i8 %45, 0, !dbg !1982
  br i1 %cmp306, label %if.end327, label %if.else309, !dbg !1983

if.else309:                                       ; preds = %lor.lhs.false303
  %call310 = tail call fastcc i32 @iterate_demangle_function(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i8* nonnull %call300) #8, !dbg !1984
  br label %cleanup341, !dbg !1985

if.else313:                                       ; preds = %if.else258.if.else313_crit_edge, %land.lhs.true270, %land.lhs.true261
  %46 = phi i8 [ %.pre2, %if.else258.if.else313_crit_edge ], [ 116, %land.lhs.true270 ], [ %41, %land.lhs.true261 ], !dbg !1952
  %cmp316 = icmp eq i8 %46, 0, !dbg !1986
  br i1 %cmp316, label %if.end327, label %if.then318, !dbg !1987

if.then318:                                       ; preds = %if.else313
  %call319 = tail call fastcc i32 @iterate_demangle_function(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i8* nonnull %scan.4) #8, !dbg !1988
  br label %cleanup341, !dbg !1990

if.end327:                                        ; preds = %if.then110, %if.else313, %land.lhs.true118, %if.then218, %lor.lhs.false303, %while.end, %lor.lhs.false291, %if.then255, %if.then178, %if.end201, %if.end104
  %success.8 = phi i32 [ 0, %if.end104 ], [ 1, %if.then110 ], [ %spec.select1, %land.lhs.true118 ], [ 1, %if.end201 ], [ 1, %if.then178 ], [ 1, %if.then218 ], [ 1, %if.then255 ], [ 1, %lor.lhs.false291 ], [ 0, %while.end ], [ 0, %lor.lhs.false303 ], [ 0, %if.else313 ], !dbg !1737
  call void @llvm.dbg.value(metadata i32 %success.8, metadata !1730, metadata !DIExpression()), !dbg !1737
  %tobool328 = icmp eq i32 %success.8, 0, !dbg !1991
  br i1 %tobool328, label %land.lhs.true329, label %cleanup341, !dbg !1993

land.lhs.true329:                                 ; preds = %if.end327
  %constructor330 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 10, !dbg !1994
  %47 = load i32, i32* %constructor330, align 8, !dbg !1994
  %cmp331 = icmp eq i32 %47, 2, !dbg !1995
  br i1 %cmp331, label %if.then337, label %lor.lhs.false333, !dbg !1996

lor.lhs.false333:                                 ; preds = %land.lhs.true329
  %destructor334 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !1997
  %48 = load i32, i32* %destructor334, align 4, !dbg !1997
  %cmp335 = icmp eq i32 %48, 2, !dbg !1998
  br i1 %cmp335, label %if.then337, label %cleanup341, !dbg !1999

if.then337:                                       ; preds = %lor.lhs.false333, %land.lhs.true329
  %49 = load i8*, i8** %mangled, align 8, !dbg !2000
  tail call fastcc void @string_append(%struct.string* %declp, i8* %49) #8, !dbg !2002
  %50 = load i8*, i8** %mangled, align 8, !dbg !2003
  %call338 = tail call i64 @strlen(i8* %50) #6, !dbg !2004
  %51 = load i8*, i8** %mangled, align 8, !dbg !2005
  %add.ptr339 = getelementptr inbounds i8, i8* %51, i64 %call338, !dbg !2005
  store i8* %add.ptr339, i8** %mangled, align 8, !dbg !2005
  call void @llvm.dbg.value(metadata i32 1, metadata !1730, metadata !DIExpression()), !dbg !1737
  br label %cleanup341, !dbg !2006

cleanup341:                                       ; preds = %if.end327, %lor.lhs.false333, %if.then337, %cleanup, %if.then318, %if.else309
  %retval.1 = phi i32 [ %call319, %if.then318 ], [ %call310, %if.else309 ], [ 1, %cleanup ], [ %success.8, %if.end327 ], [ 1, %if.then337 ], [ 0, %lor.lhs.false333 ], !dbg !1737
  ret i32 %retval.1, !dbg !2007
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_signature(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) unnamed_addr #5 !dbg !2008 {
entry:
  %trawname = alloca %struct.string, align 8
  %tname = alloca %struct.string, align 8
  %s = alloca %struct.string, align 8
  %return_type = alloca %struct.string, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !2010, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !2011, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !2012, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 1, metadata !2013, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 0, metadata !2014, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 0, metadata !2015, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 0, metadata !2016, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* null, metadata !2017, metadata !DIExpression()), !dbg !2027
  %0 = bitcast %struct.string* %trawname to i8*, !dbg !2028
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2028
  %1 = bitcast %struct.string* %tname to i8*, !dbg !2029
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2029
  %options203 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !2030
  %constructor212 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 10, !dbg !2032
  %2 = bitcast %struct.string* %return_type to i8*, !dbg !2035
  %b = getelementptr inbounds %struct.string, %struct.string* %return_type, i64 0, i32 0, !dbg !2036
  %p = getelementptr inbounds %struct.string, %struct.string* %return_type, i64 0, i32 1, !dbg !2036
  %3 = bitcast i8** %mangled to i64*, !dbg !2039
  %destructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !2042
  %4 = bitcast %struct.string* %s to i8*, !dbg !2044
  %temp_start = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 13, !dbg !2045
  %type_quals = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 14, !dbg !2045
  %static_type = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 12, !dbg !2045
  br label %while.cond, !dbg !2046

while.cond:                                       ; preds = %if.end249, %entry
  %func_done.0 = phi i32 [ 0, %entry ], [ %func_done.3, %if.end249 ], !dbg !2027
  %success.0 = phi i32 [ 1, %entry ], [ %success.7, %if.end249 ], !dbg !2027
  %expect_func.0 = phi i32 [ 0, %entry ], [ %expect_func.6, %if.end249 ], !dbg !2027
  %expect_return_type.0 = phi i32 [ 0, %entry ], [ %expect_return_type.2, %if.end249 ], !dbg !2047
  %oldmangled.0 = phi i8* [ null, %entry ], [ %oldmangled.5, %if.end249 ], !dbg !2048
  call void @llvm.dbg.value(metadata i8* %oldmangled.0, metadata !2017, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %expect_return_type.0, metadata !2016, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %expect_func.0, metadata !2015, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !2013, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %func_done.0, metadata !2014, metadata !DIExpression()), !dbg !2027
  %cond4 = icmp eq i32 %success.0, 0, !dbg !2049
  br i1 %cond4, label %if.end265.loopexit, label %land.rhs, !dbg !2049

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %mangled, align 8, !dbg !2050
  %6 = load i8, i8* %5, align 1, !dbg !2051
  %cmp = icmp eq i8 %6, 0, !dbg !2052
  br i1 %cmp, label %while.end250, label %while.body, !dbg !2046

while.body:                                       ; preds = %land.rhs
  %conv2 = sext i8 %6 to i32, !dbg !2053
  switch i32 %conv2, label %while.body.sw.default_crit_edge [
    i32 81, label %sw.bb
    i32 75, label %sw.bb11
    i32 83, label %sw.bb22
    i32 67, label %sw.bb27
    i32 86, label %sw.bb27
    i32 117, label %sw.bb27
    i32 76, label %sw.bb35
    i32 48, label %sw.bb56
    i32 49, label %sw.bb56
    i32 50, label %sw.bb56
    i32 51, label %sw.bb56
    i32 52, label %sw.bb56
    i32 53, label %sw.bb56
    i32 54, label %sw.bb56
    i32 55, label %sw.bb56
    i32 56, label %sw.bb56
    i32 57, label %sw.bb56
    i32 66, label %sw.bb87
    i32 70, label %sw.bb95
    i32 116, label %sw.bb131
    i32 95, label %sw.bb163
    i32 72, label %sw.bb202
  ], !dbg !2054

while.body.sw.default_crit_edge:                  ; preds = %while.body
  %.pre9 = load i32, i32* %options203, align 8, !dbg !2055
  br label %sw.default, !dbg !2054

sw.bb:                                            ; preds = %while.body
  call void @llvm.dbg.value(metadata i8* %5, metadata !2017, metadata !DIExpression()), !dbg !2027
  %call = call fastcc i32 @demangle_qualified(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i32 1, i32 0) #8, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %call, metadata !2013, metadata !DIExpression()), !dbg !2027
  %tobool3 = icmp eq i32 %call, 0, !dbg !2058
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2060

if.then:                                          ; preds = %sw.bb
  %7 = load i64, i64* %3, align 8, !dbg !2061
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64, !dbg !2062
  %sub.ptr.sub = sub i64 %7, %sub.ptr.rhs.cast, !dbg !2062
  %conv4 = trunc i64 %sub.ptr.sub to i32, !dbg !2061
  call fastcc void @remember_type(%struct.work_stuff* %work, i8* %5, i32 %conv4) #8, !dbg !2063
  br label %if.end, !dbg !2063

if.end:                                           ; preds = %sw.bb, %if.then
  %8 = load i32, i32* %options203, align 8, !dbg !2064
  %and = and i32 %8, 256, !dbg !2064
  %tobool5 = icmp eq i32 %and, 0, !dbg !2064
  br i1 %tobool5, label %lor.lhs.false, label %if.then9, !dbg !2066

lor.lhs.false:                                    ; preds = %if.end
  %and7 = and i32 %8, 512, !dbg !2067
  %tobool8 = icmp eq i32 %and7, 0, !dbg !2067
  br i1 %tobool8, label %sw.epilog, label %if.then9, !dbg !2068

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !2015, metadata !DIExpression()), !dbg !2027
  br label %sw.epilog, !dbg !2069

sw.bb11:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata i8* undef, metadata !2017, metadata !DIExpression()), !dbg !2027
  %call12 = call fastcc i32 @demangle_qualified(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i32 1, i32 0) #8, !dbg !2070
  call void @llvm.dbg.value(metadata i32 %call12, metadata !2013, metadata !DIExpression()), !dbg !2027
  %9 = load i32, i32* %options203, align 8, !dbg !2071
  %and14 = and i32 %9, 256, !dbg !2071
  %tobool15 = icmp eq i32 %and14, 0, !dbg !2071
  br i1 %tobool15, label %lor.lhs.false16, label %if.then20, !dbg !2073

lor.lhs.false16:                                  ; preds = %sw.bb11
  %and18 = and i32 %9, 512, !dbg !2074
  %tobool19 = icmp eq i32 %and18, 0, !dbg !2074
  br i1 %tobool19, label %sw.epilog, label %if.then20, !dbg !2075

if.then20:                                        ; preds = %lor.lhs.false16, %sw.bb11
  call void @llvm.dbg.value(metadata i32 1, metadata !2015, metadata !DIExpression()), !dbg !2027
  br label %sw.epilog, !dbg !2076

sw.bb22:                                          ; preds = %while.body
  %cmp23 = icmp eq i8* %oldmangled.0, null, !dbg !2078
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !2080

if.then25:                                        ; preds = %sw.bb22
  call void @llvm.dbg.value(metadata i8* %5, metadata !2017, metadata !DIExpression()), !dbg !2027
  br label %if.end26, !dbg !2081

if.end26:                                         ; preds = %if.then25, %sw.bb22
  %oldmangled.1 = phi i8* [ %5, %if.then25 ], [ %oldmangled.0, %sw.bb22 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %oldmangled.1, metadata !2017, metadata !DIExpression()), !dbg !2027
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2083
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !2083
  store i32 1, i32* %static_type, align 8, !dbg !2084
  br label %sw.epilog, !dbg !2085

sw.bb27:                                          ; preds = %while.body, %while.body, %while.body
  %call29 = call fastcc i32 @code_for_qualifier(i32 %conv2) #8, !dbg !2086
  %10 = load i32, i32* %type_quals, align 8, !dbg !2087
  %or = or i32 %10, %call29, !dbg !2087
  store i32 %or, i32* %type_quals, align 8, !dbg !2087
  %cmp30 = icmp eq i8* %oldmangled.0, null, !dbg !2088
  br i1 %cmp30, label %if.then32, label %sw.bb27.if.end33_crit_edge, !dbg !2090

sw.bb27.if.end33_crit_edge:                       ; preds = %sw.bb27
  %.pre8 = load i8*, i8** %mangled, align 8, !dbg !2091
  br label %if.end33, !dbg !2090

if.then32:                                        ; preds = %sw.bb27
  %11 = load i8*, i8** %mangled, align 8, !dbg !2092
  call void @llvm.dbg.value(metadata i8* %11, metadata !2017, metadata !DIExpression()), !dbg !2027
  br label %if.end33, !dbg !2093

if.end33:                                         ; preds = %sw.bb27.if.end33_crit_edge, %if.then32
  %12 = phi i8* [ %11, %if.then32 ], [ %.pre8, %sw.bb27.if.end33_crit_edge ], !dbg !2091
  %oldmangled.2 = phi i8* [ %11, %if.then32 ], [ %oldmangled.0, %sw.bb27.if.end33_crit_edge ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %oldmangled.2, metadata !2017, metadata !DIExpression()), !dbg !2027
  %incdec.ptr34 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !2091
  store i8* %incdec.ptr34, i8** %mangled, align 8, !dbg !2091
  br label %sw.epilog, !dbg !2094

sw.bb35:                                          ; preds = %while.body
  %13 = load i32, i32* %options203, align 8, !dbg !2095
  %and37 = and i32 %13, 4096, !dbg !2095
  %tobool38 = icmp eq i32 %and37, 0, !dbg !2095
  br i1 %tobool38, label %sw.epilog, label %while.cond40.preheader, !dbg !2097

while.cond40.preheader:                           ; preds = %sw.bb35
  br label %while.cond40, !dbg !2098

while.cond40:                                     ; preds = %while.cond40.preheader, %while.body48
  %14 = phi i8 [ %6, %while.cond40.preheader ], [ %.pre, %while.body48 ], !dbg !2100
  %15 = phi i8* [ %5, %while.cond40.preheader ], [ %incdec.ptr49, %while.body48 ], !dbg !2101
  %tobool42 = icmp eq i8 %14, 0, !dbg !2100
  br i1 %tobool42, label %land.end47, label %land.rhs43, !dbg !2102

land.rhs43:                                       ; preds = %while.cond40
  %cmp45 = icmp ne i8 %14, 95, !dbg !2103
  br label %land.end47

land.end47:                                       ; preds = %while.cond40, %land.rhs43
  %16 = phi i1 [ false, %while.cond40 ], [ %cmp45, %land.rhs43 ], !dbg !2104
  br i1 %16, label %while.body48, label %while.end, !dbg !2098

while.body48:                                     ; preds = %land.end47
  %incdec.ptr49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !2105
  store i8* %incdec.ptr49, i8** %mangled, align 8, !dbg !2105
  %.pre = load i8, i8* %incdec.ptr49, align 1, !dbg !2100
  br label %while.cond40, !dbg !2098, !llvm.loop !2106

while.end:                                        ; preds = %land.end47
  %.lcssa = phi i8* [ %15, %land.end47 ], !dbg !2101
  %tobool42.lcssa = phi i1 [ %tobool42, %land.end47 ], !dbg !2100
  br i1 %tobool42.lcssa, label %sw.epilog, label %if.else, !dbg !2107

if.else:                                          ; preds = %while.end
  %incdec.ptr52 = getelementptr inbounds i8, i8* %.lcssa, i64 1, !dbg !2108
  store i8* %incdec.ptr52, i8** %mangled, align 8, !dbg !2108
  br label %sw.epilog

sw.bb56:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %cmp57 = icmp eq i8* %oldmangled.0, null, !dbg !2110
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !2112

if.then59:                                        ; preds = %sw.bb56
  call void @llvm.dbg.value(metadata i8* %5, metadata !2017, metadata !DIExpression()), !dbg !2027
  br label %if.end60, !dbg !2113

if.end60:                                         ; preds = %if.then59, %sw.bb56
  %oldmangled.3 = phi i8* [ %5, %if.then59 ], [ %oldmangled.0, %sw.bb56 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %oldmangled.3, metadata !2017, metadata !DIExpression()), !dbg !2027
  store i32 -1, i32* %temp_start, align 4, !dbg !2115
  %call61 = call fastcc i32 @demangle_class(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) #8, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %call61, metadata !2013, metadata !DIExpression()), !dbg !2027
  %tobool62 = icmp eq i32 %call61, 0, !dbg !2117
  br i1 %tobool62, label %if.end68, label %if.then63, !dbg !2119

if.then63:                                        ; preds = %if.end60
  %17 = load i64, i64* %3, align 8, !dbg !2120
  %sub.ptr.rhs.cast65 = ptrtoint i8* %oldmangled.3 to i64, !dbg !2122
  %sub.ptr.sub66 = sub i64 %17, %sub.ptr.rhs.cast65, !dbg !2122
  %conv67 = trunc i64 %sub.ptr.sub66 to i32, !dbg !2120
  call fastcc void @remember_type(%struct.work_stuff* %work, i8* %oldmangled.3, i32 %conv67) #8, !dbg !2123
  br label %if.end68, !dbg !2124

if.end68:                                         ; preds = %if.end60, %if.then63
  %18 = load i32, i32* %options203, align 8, !dbg !2125
  %and70 = and i32 %18, 256, !dbg !2125
  %tobool71 = icmp eq i32 %and70, 0, !dbg !2125
  br i1 %tobool71, label %lor.lhs.false72, label %if.then80, !dbg !2127

lor.lhs.false72:                                  ; preds = %if.end68
  %and74 = and i32 %18, 512, !dbg !2128
  %tobool75 = icmp eq i32 %and74, 0, !dbg !2128
  br i1 %tobool75, label %lor.lhs.false76, label %if.then80, !dbg !2129

lor.lhs.false76:                                  ; preds = %lor.lhs.false72
  %and78 = and i32 %18, 8192, !dbg !2130
  %tobool79 = icmp eq i32 %and78, 0, !dbg !2130
  br i1 %tobool79, label %sw.epilog, label %if.then80, !dbg !2131

if.then80:                                        ; preds = %lor.lhs.false76, %lor.lhs.false72, %if.end68
  %19 = load i8*, i8** %mangled, align 8, !dbg !2132
  %20 = load i8, i8* %19, align 1, !dbg !2135
  %cmp82 = icmp eq i8 %20, 70, !dbg !2136
  %spec.select = select i1 %cmp82, i32 %expect_func.0, i32 1, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2015, metadata !DIExpression()), !dbg !2027
  br label %sw.epilog, !dbg !2138

sw.bb87:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2139
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !2020, metadata !DIExpression(DW_OP_deref)), !dbg !2044
  %call88 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %s) #8, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %call88, metadata !2013, metadata !DIExpression()), !dbg !2027
  %tobool89 = icmp eq i32 %call88, 0, !dbg !2141
  br i1 %tobool89, label %if.end94, label %if.then90, !dbg !2143

if.then90:                                        ; preds = %sw.bb87
  %21 = load i32, i32* %options203, align 8, !dbg !2144
  %and92 = and i32 %21, 4, !dbg !2144
  %tobool93 = icmp eq i32 %and92, 0, !dbg !2144
  %cond = select i1 %tobool93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), !dbg !2144
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !2020, metadata !DIExpression(DW_OP_deref)), !dbg !2044
  call fastcc void @string_append(%struct.string* nonnull %s, i8* %cond) #8, !dbg !2146
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !2020, metadata !DIExpression(DW_OP_deref)), !dbg !2044
  call fastcc void @string_prepends(%struct.string* %declp, %struct.string* nonnull %s) #8, !dbg !2147
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !2020, metadata !DIExpression(DW_OP_deref)), !dbg !2044
  call fastcc void @string_delete(%struct.string* nonnull %s) #8, !dbg !2148
  br label %if.end94, !dbg !2149

if.end94:                                         ; preds = %sw.bb87, %if.then90
  call void @llvm.dbg.value(metadata i8* null, metadata !2017, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 1, metadata !2015, metadata !DIExpression()), !dbg !2027
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2150
  br label %sw.epilog, !dbg !2151

sw.bb95:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata i8* null, metadata !2017, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 1, metadata !2014, metadata !DIExpression()), !dbg !2027
  %incdec.ptr96 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2152
  store i8* %incdec.ptr96, i8** %mangled, align 8, !dbg !2152
  %22 = load i32, i32* %options203, align 8, !dbg !2153
  %and98 = and i32 %22, 1024, !dbg !2153
  %tobool99 = icmp eq i32 %and98, 0, !dbg !2153
  br i1 %tobool99, label %lor.lhs.false100, label %if.then112, !dbg !2155

lor.lhs.false100:                                 ; preds = %sw.bb95
  %and102 = and i32 %22, 2048, !dbg !2156
  %tobool103 = icmp eq i32 %and102, 0, !dbg !2156
  br i1 %tobool103, label %lor.lhs.false104, label %if.then112, !dbg !2157

lor.lhs.false104:                                 ; preds = %lor.lhs.false100
  %and106 = and i32 %22, 4096, !dbg !2158
  %tobool107 = icmp eq i32 %and106, 0, !dbg !2158
  br i1 %tobool107, label %lor.lhs.false108, label %if.then112, !dbg !2159

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %and110 = and i32 %22, 8192, !dbg !2160
  %tobool111 = icmp eq i32 %and110, 0, !dbg !2160
  br i1 %tobool111, label %if.end113, label %if.then112, !dbg !2161

if.then112:                                       ; preds = %lor.lhs.false108, %lor.lhs.false104, %lor.lhs.false100, %sw.bb95
  call fastcc void @forget_types(%struct.work_stuff* %work) #8, !dbg !2162
  br label %if.end113, !dbg !2164

if.end113:                                        ; preds = %lor.lhs.false108, %if.then112
  %call114 = call fastcc i32 @demangle_args(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) #8, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %call114, metadata !2013, metadata !DIExpression()), !dbg !2027
  %tobool115 = icmp eq i32 %call114, 0, !dbg !2166
  br i1 %tobool115, label %sw.epilog, label %land.lhs.true, !dbg !2168

land.lhs.true:                                    ; preds = %if.end113
  %23 = load i32, i32* %options203, align 8, !dbg !2169
  %and117 = and i32 %23, 256, !dbg !2169
  %tobool118 = icmp eq i32 %and117, 0, !dbg !2169
  br i1 %tobool118, label %lor.lhs.false119, label %land.lhs.true123, !dbg !2170

lor.lhs.false119:                                 ; preds = %land.lhs.true
  %and121 = and i32 %23, 8192, !dbg !2171
  %tobool122 = icmp eq i32 %and121, 0, !dbg !2171
  br i1 %tobool122, label %sw.epilog, label %land.lhs.true123, !dbg !2172

land.lhs.true123:                                 ; preds = %lor.lhs.false119, %land.lhs.true
  %24 = load i8*, i8** %mangled, align 8, !dbg !2173
  %25 = load i8, i8* %24, align 1, !dbg !2174
  %cmp125 = icmp eq i8 %25, 95, !dbg !2175
  br i1 %cmp125, label %if.then127, label %sw.epilog, !dbg !2176

if.then127:                                       ; preds = %land.lhs.true123
  %incdec.ptr128 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !2177
  store i8* %incdec.ptr128, i8** %mangled, align 8, !dbg !2177
  call void @llvm.dbg.value(metadata %struct.string* %tname, metadata !2019, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  %call129 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %tname) #8, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %call129, metadata !2013, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.string* %tname, metadata !2019, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call fastcc void @string_delete(%struct.string* nonnull %tname) #8, !dbg !2180
  br label %sw.epilog, !dbg !2181

sw.bb131:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata %struct.string* %trawname, metadata !2018, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call fastcc void @string_init(%struct.string* nonnull %trawname) #8, !dbg !2182
  call void @llvm.dbg.value(metadata %struct.string* %tname, metadata !2019, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call fastcc void @string_init(%struct.string* nonnull %tname) #8, !dbg !2183
  %cmp132 = icmp eq i8* %oldmangled.0, null, !dbg !2184
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !2186

if.then134:                                       ; preds = %sw.bb131
  %26 = load i8*, i8** %mangled, align 8, !dbg !2187
  call void @llvm.dbg.value(metadata i8* %26, metadata !2017, metadata !DIExpression()), !dbg !2027
  br label %if.end135, !dbg !2189

if.end135:                                        ; preds = %if.then134, %sw.bb131
  %oldmangled.4 = phi i8* [ %26, %if.then134 ], [ %oldmangled.0, %sw.bb131 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %oldmangled.4, metadata !2017, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.string* %trawname, metadata !2018, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.string* %tname, metadata !2019, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  %call136 = call fastcc i32 @demangle_template(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %tname, %struct.string* nonnull %trawname, i32 1, i32 1) #8, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %call136, metadata !2013, metadata !DIExpression()), !dbg !2027
  %tobool137 = icmp eq i32 %call136, 0, !dbg !2191
  br i1 %tobool137, label %if.end143, label %if.then138, !dbg !2192

if.then138:                                       ; preds = %if.end135
  %27 = load i64, i64* %3, align 8, !dbg !2193
  %sub.ptr.rhs.cast140 = ptrtoint i8* %oldmangled.4 to i64, !dbg !2194
  %sub.ptr.sub141 = sub i64 %27, %sub.ptr.rhs.cast140, !dbg !2194
  %conv142 = trunc i64 %sub.ptr.sub141 to i32, !dbg !2193
  call fastcc void @remember_type(%struct.work_stuff* %work, i8* %oldmangled.4, i32 %conv142) #8, !dbg !2195
  br label %if.end143, !dbg !2196

if.end143:                                        ; preds = %if.end135, %if.then138
  %28 = load i32, i32* %options203, align 8, !dbg !2197
  %and145 = and i32 %28, 4, !dbg !2197
  %tobool146 = icmp eq i32 %and145, 0, !dbg !2197
  %cond147 = select i1 %tobool146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), !dbg !2197
  call void @llvm.dbg.value(metadata %struct.string* %tname, metadata !2019, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call fastcc void @string_append(%struct.string* nonnull %tname, i8* %cond147) #8, !dbg !2198
  call void @llvm.dbg.value(metadata %struct.string* %tname, metadata !2019, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call fastcc void @string_prepends(%struct.string* %declp, %struct.string* nonnull %tname) #8, !dbg !2199
  %29 = load i32, i32* %destructor, align 4, !dbg !2200
  %and148 = and i32 %29, 1, !dbg !2201
  %tobool149 = icmp eq i32 %and148, 0, !dbg !2201
  br i1 %tobool149, label %if.end152, label %if.then150, !dbg !2202

if.then150:                                       ; preds = %if.end143
  call void @llvm.dbg.value(metadata %struct.string* %trawname, metadata !2018, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call fastcc void @string_prepend(%struct.string* nonnull %trawname, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i64 0, i64 0)) #8, !dbg !2203
  call void @llvm.dbg.value(metadata %struct.string* %trawname, metadata !2018, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call fastcc void @string_appends(%struct.string* %declp, %struct.string* nonnull %trawname) #8, !dbg !2205
  %30 = load i32, i32* %destructor, align 4, !dbg !2206
  %sub = add nsw i32 %30, -1, !dbg !2206
  store i32 %sub, i32* %destructor, align 4, !dbg !2206
  br label %if.end152, !dbg !2207

if.end152:                                        ; preds = %if.end143, %if.then150
  %31 = phi i32 [ %29, %if.end143 ], [ %sub, %if.then150 ]
  %32 = load i32, i32* %constructor212, align 8, !dbg !2208
  %and153 = and i32 %32, 1, !dbg !2210
  %tobool154 = icmp eq i32 %and153, 0, !dbg !2210
  br i1 %tobool154, label %lor.lhs.false155, label %if.then159, !dbg !2211

lor.lhs.false155:                                 ; preds = %if.end152
  %and157 = and i32 %31, 1, !dbg !2212
  %tobool158 = icmp eq i32 %and157, 0, !dbg !2212
  br i1 %tobool158, label %if.end162, label %if.then159, !dbg !2213

if.then159:                                       ; preds = %lor.lhs.false155, %if.end152
  call void @llvm.dbg.value(metadata %struct.string* %trawname, metadata !2018, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call fastcc void @string_appends(%struct.string* %declp, %struct.string* nonnull %trawname) #8, !dbg !2214
  %33 = load i32, i32* %constructor212, align 8, !dbg !2216
  %sub161 = add nsw i32 %33, -1, !dbg !2216
  store i32 %sub161, i32* %constructor212, align 8, !dbg !2216
  br label %if.end162, !dbg !2217

if.end162:                                        ; preds = %lor.lhs.false155, %if.then159
  call void @llvm.dbg.value(metadata %struct.string* %trawname, metadata !2018, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call fastcc void @string_delete(%struct.string* nonnull %trawname) #8, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.string* %tname, metadata !2019, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call fastcc void @string_delete(%struct.string* nonnull %tname) #8, !dbg !2219
  call void @llvm.dbg.value(metadata i8* null, metadata !2017, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 1, metadata !2015, metadata !DIExpression()), !dbg !2027
  br label %sw.epilog, !dbg !2220

sw.bb163:                                         ; preds = %while.body
  %34 = load i32, i32* %options203, align 8, !dbg !2221
  %and165 = and i32 %34, 256, !dbg !2221
  %tobool166 = icmp eq i32 %and165, 0, !dbg !2221
  br i1 %tobool166, label %lor.lhs.false167, label %land.lhs.true171, !dbg !2222

lor.lhs.false167:                                 ; preds = %sw.bb163
  %and169 = and i32 %34, 512, !dbg !2223
  %tobool170 = icmp ne i32 %and169, 0, !dbg !2223
  %tobool172 = icmp ne i32 %expect_return_type.0, 0, !dbg !2224
  %or.cond = and i1 %tobool170, %tobool172, !dbg !2225
  br i1 %or.cond, label %if.then173, label %if.else180, !dbg !2225

land.lhs.true171:                                 ; preds = %sw.bb163
  %tobool172.old = icmp eq i32 %expect_return_type.0, 0, !dbg !2224
  br i1 %tobool172.old, label %if.else180, label %if.then173, !dbg !2226

if.then173:                                       ; preds = %land.lhs.true171, %lor.lhs.false167
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2227
  %incdec.ptr174 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2228
  store i8* %incdec.ptr174, i8** %mangled, align 8, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.string* %return_type, metadata !2024, metadata !DIExpression(DW_OP_deref)), !dbg !2035
  %call175 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %return_type) #8, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %call175, metadata !2013, metadata !DIExpression()), !dbg !2027
  %35 = load i8*, i8** %b, align 8, !dbg !2230
  %36 = load i8*, i8** %p, align 8, !dbg !2230
  %cmp176 = icmp eq i8* %35, %36, !dbg !2230
  br i1 %cmp176, label %if.end179, label %if.then178, !dbg !2231

if.then178:                                       ; preds = %if.then173
  call void @llvm.dbg.value(metadata %struct.string* %return_type, metadata !2024, metadata !DIExpression(DW_OP_deref)), !dbg !2035
  call fastcc void @string_append(%struct.string* nonnull %return_type, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !2230
  br label %if.end179, !dbg !2230

if.end179:                                        ; preds = %if.then178, %if.then173
  call void @llvm.dbg.value(metadata %struct.string* %return_type, metadata !2024, metadata !DIExpression(DW_OP_deref)), !dbg !2035
  call fastcc void @string_prepends(%struct.string* %declp, %struct.string* nonnull %return_type) #8, !dbg !2232
  call void @llvm.dbg.value(metadata %struct.string* %return_type, metadata !2024, metadata !DIExpression(DW_OP_deref)), !dbg !2035
  call fastcc void @string_delete(%struct.string* nonnull %return_type) #8, !dbg !2233
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2234
  br label %sw.epilog

if.else180:                                       ; preds = %land.lhs.true171, %lor.lhs.false167
  %and182 = and i32 %34, 4096, !dbg !2235
  %tobool183 = icmp eq i32 %and182, 0, !dbg !2235
  br i1 %tobool183, label %sw.epilog, label %if.then184, !dbg !2237

if.then184:                                       ; preds = %if.else180
  br label %while.cond186, !dbg !2238

while.cond186:                                    ; preds = %while.body196, %if.then184
  %.pn = phi i8* [ %storemerge, %while.body196 ], [ %5, %if.then184 ], !dbg !2240
  %storemerge = getelementptr inbounds i8, i8* %.pn, i64 1, !dbg !2240
  store i8* %storemerge, i8** %mangled, align 8, !dbg !2240
  %37 = load i8, i8* %storemerge, align 1, !dbg !2241
  %tobool188 = icmp eq i8 %37, 0, !dbg !2241
  br i1 %tobool188, label %sw.epilog.loopexit, label %land.rhs189, !dbg !2242

land.rhs189:                                      ; preds = %while.cond186
  %idxprom = zext i8 %37 to i64, !dbg !2243
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2243
  %38 = load i16, i16* %arrayidx, align 2, !dbg !2243
  %39 = and i16 %38, 4, !dbg !2243
  %tobool194 = icmp eq i16 %39, 0, !dbg !2242
  br i1 %tobool194, label %sw.epilog.loopexit, label %while.body196, !dbg !2238

while.body196:                                    ; preds = %land.rhs189
  br label %while.cond186, !dbg !2238, !llvm.loop !2244

sw.bb202:                                         ; preds = %while.body
  %40 = load i32, i32* %options203, align 8, !dbg !2246
  %and204 = and i32 %40, 256, !dbg !2246
  %tobool205 = icmp eq i32 %and204, 0, !dbg !2246
  br i1 %tobool205, label %lor.lhs.false206, label %if.then210, !dbg !2247

lor.lhs.false206:                                 ; preds = %sw.bb202
  %and208 = and i32 %40, 512, !dbg !2248
  %tobool209 = icmp eq i32 %and208, 0, !dbg !2248
  br i1 %tobool209, label %sw.default, label %if.then210, !dbg !2249

if.then210:                                       ; preds = %lor.lhs.false206, %sw.bb202
  %call211 = call fastcc i32 @demangle_template(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, %struct.string* null, i32 0, i32 0) #8, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %call211, metadata !2013, metadata !DIExpression()), !dbg !2027
  %41 = load i32, i32* %constructor212, align 8, !dbg !2251
  %and213 = and i32 %41, 1, !dbg !2252
  %tobool214 = icmp eq i32 %and213, 0, !dbg !2252
  %spec.select1 = select i1 %tobool214, i32 1, i32 %expect_return_type.0, !dbg !2253
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2016, metadata !DIExpression()), !dbg !2027
  %42 = load i8*, i8** %mangled, align 8, !dbg !2254
  %incdec.ptr217 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !2254
  store i8* %incdec.ptr217, i8** %mangled, align 8, !dbg !2254
  br label %sw.epilog, !dbg !2255

sw.default:                                       ; preds = %while.body.sw.default_crit_edge, %lor.lhs.false206
  %43 = phi i32 [ %.pre9, %while.body.sw.default_crit_edge ], [ %40, %lor.lhs.false206 ], !dbg !2055
  %and221 = and i32 %43, 256, !dbg !2055
  %tobool222 = icmp eq i32 %and221, 0, !dbg !2055
  br i1 %tobool222, label %lor.lhs.false223, label %if.then227, !dbg !2256

lor.lhs.false223:                                 ; preds = %sw.default
  %and225 = and i32 %43, 512, !dbg !2257
  %tobool226 = icmp eq i32 %and225, 0, !dbg !2257
  br i1 %tobool226, label %sw.epilog, label %if.then227, !dbg !2258

if.then227:                                       ; preds = %lor.lhs.false223, %sw.default
  call void @llvm.dbg.value(metadata i32 1, metadata !2014, metadata !DIExpression()), !dbg !2027
  %call228 = call fastcc i32 @demangle_args(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) #8, !dbg !2259
  call void @llvm.dbg.value(metadata i32 %call228, metadata !2013, metadata !DIExpression()), !dbg !2027
  br label %sw.epilog, !dbg !2261

sw.epilog.loopexit:                               ; preds = %while.cond186, %land.rhs189
  br label %sw.epilog, !dbg !2262

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %lor.lhs.false, %lor.lhs.false16, %while.end, %sw.bb35, %lor.lhs.false76, %lor.lhs.false119, %if.end113, %if.else180, %lor.lhs.false223, %if.then227, %land.lhs.true123, %if.then127, %if.then80, %if.else, %if.then20, %if.then9, %if.then210, %if.end179, %if.end162, %if.end94, %if.end33, %if.end26
  %func_done.2 = phi i32 [ %func_done.0, %if.then210 ], [ %func_done.0, %if.end179 ], [ %func_done.0, %if.end162 ], [ %func_done.0, %if.end94 ], [ %func_done.0, %if.end33 ], [ %func_done.0, %if.end26 ], [ %func_done.0, %if.then9 ], [ %func_done.0, %lor.lhs.false ], [ %func_done.0, %if.then20 ], [ %func_done.0, %lor.lhs.false16 ], [ %func_done.0, %sw.bb35 ], [ %func_done.0, %if.else ], [ %func_done.0, %while.end ], [ %func_done.0, %if.then80 ], [ %func_done.0, %lor.lhs.false76 ], [ 1, %if.then127 ], [ 1, %land.lhs.true123 ], [ 1, %lor.lhs.false119 ], [ 1, %if.end113 ], [ %func_done.0, %if.else180 ], [ 1, %if.then227 ], [ %func_done.0, %lor.lhs.false223 ], [ %func_done.0, %sw.epilog.loopexit ], !dbg !2027
  %success.6 = phi i32 [ %call211, %if.then210 ], [ %call175, %if.end179 ], [ %call136, %if.end162 ], [ %call88, %if.end94 ], [ %success.0, %if.end33 ], [ %success.0, %if.end26 ], [ %call, %if.then9 ], [ %call, %lor.lhs.false ], [ %call12, %if.then20 ], [ %call12, %lor.lhs.false16 ], [ 0, %sw.bb35 ], [ %success.0, %if.else ], [ 0, %while.end ], [ %call61, %if.then80 ], [ %call61, %lor.lhs.false76 ], [ %call129, %if.then127 ], [ %call114, %land.lhs.true123 ], [ %call114, %lor.lhs.false119 ], [ 0, %if.end113 ], [ 0, %if.else180 ], [ %call228, %if.then227 ], [ 0, %lor.lhs.false223 ], [ %success.0, %sw.epilog.loopexit ], !dbg !2027
  %expect_func.5 = phi i32 [ %expect_func.0, %if.then210 ], [ %expect_func.0, %if.end179 ], [ 1, %if.end162 ], [ 1, %if.end94 ], [ %expect_func.0, %if.end33 ], [ %expect_func.0, %if.end26 ], [ 1, %if.then9 ], [ %expect_func.0, %lor.lhs.false ], [ 1, %if.then20 ], [ %expect_func.0, %lor.lhs.false16 ], [ %expect_func.0, %sw.bb35 ], [ %expect_func.0, %if.else ], [ %expect_func.0, %while.end ], [ %spec.select, %if.then80 ], [ %expect_func.0, %lor.lhs.false76 ], [ %expect_func.0, %if.then127 ], [ %expect_func.0, %land.lhs.true123 ], [ %expect_func.0, %lor.lhs.false119 ], [ %expect_func.0, %if.end113 ], [ %expect_func.0, %if.else180 ], [ %expect_func.0, %if.then227 ], [ %expect_func.0, %lor.lhs.false223 ], [ %expect_func.0, %sw.epilog.loopexit ], !dbg !2027
  %expect_return_type.2 = phi i32 [ %spec.select1, %if.then210 ], [ %expect_return_type.0, %if.end179 ], [ %expect_return_type.0, %if.end162 ], [ %expect_return_type.0, %if.end94 ], [ %expect_return_type.0, %if.end33 ], [ %expect_return_type.0, %if.end26 ], [ %expect_return_type.0, %if.then9 ], [ %expect_return_type.0, %lor.lhs.false ], [ %expect_return_type.0, %if.then20 ], [ %expect_return_type.0, %lor.lhs.false16 ], [ %expect_return_type.0, %sw.bb35 ], [ %expect_return_type.0, %if.else ], [ %expect_return_type.0, %while.end ], [ %expect_return_type.0, %if.then80 ], [ %expect_return_type.0, %lor.lhs.false76 ], [ %expect_return_type.0, %if.then127 ], [ %expect_return_type.0, %land.lhs.true123 ], [ %expect_return_type.0, %lor.lhs.false119 ], [ %expect_return_type.0, %if.end113 ], [ %expect_return_type.0, %if.else180 ], [ %expect_return_type.0, %if.then227 ], [ %expect_return_type.0, %lor.lhs.false223 ], [ %expect_return_type.0, %sw.epilog.loopexit ], !dbg !2047
  %oldmangled.5 = phi i8* [ %oldmangled.0, %if.then210 ], [ %oldmangled.0, %if.end179 ], [ null, %if.end162 ], [ null, %if.end94 ], [ %oldmangled.2, %if.end33 ], [ %oldmangled.1, %if.end26 ], [ null, %if.then9 ], [ null, %lor.lhs.false ], [ null, %if.then20 ], [ null, %lor.lhs.false16 ], [ %oldmangled.0, %sw.bb35 ], [ %oldmangled.0, %if.else ], [ %oldmangled.0, %while.end ], [ null, %if.then80 ], [ null, %lor.lhs.false76 ], [ null, %if.then127 ], [ null, %land.lhs.true123 ], [ null, %lor.lhs.false119 ], [ null, %if.end113 ], [ %oldmangled.0, %if.else180 ], [ %oldmangled.0, %if.then227 ], [ %oldmangled.0, %lor.lhs.false223 ], [ %oldmangled.0, %sw.epilog.loopexit ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %oldmangled.5, metadata !2017, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %expect_return_type.2, metadata !2016, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %expect_func.5, metadata !2015, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %success.6, metadata !2013, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %func_done.2, metadata !2014, metadata !DIExpression()), !dbg !2027
  %tobool231 = icmp ne i32 %success.6, 0, !dbg !2262
  %tobool233 = icmp ne i32 %expect_func.5, 0, !dbg !2265
  %or.cond2 = and i1 %tobool231, %tobool233, !dbg !2266
  br i1 %or.cond2, label %if.then234, label %if.end249, !dbg !2266

if.then234:                                       ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata i32 1, metadata !2014, metadata !DIExpression()), !dbg !2027
  %44 = load i32, i32* %options203, align 8, !dbg !2267
  %and236 = and i32 %44, 1024, !dbg !2267
  %tobool237 = icmp eq i32 %and236, 0, !dbg !2267
  br i1 %tobool237, label %lor.lhs.false238, label %if.then246, !dbg !2270

lor.lhs.false238:                                 ; preds = %if.then234
  %and240 = and i32 %44, 2048, !dbg !2271
  %tobool241 = icmp eq i32 %and240, 0, !dbg !2271
  br i1 %tobool241, label %lor.lhs.false242, label %if.then246, !dbg !2272

lor.lhs.false242:                                 ; preds = %lor.lhs.false238
  %and244 = and i32 %44, 8192, !dbg !2273
  %tobool245 = icmp eq i32 %and244, 0, !dbg !2273
  br i1 %tobool245, label %if.end247, label %if.then246, !dbg !2274

if.then246:                                       ; preds = %lor.lhs.false242, %lor.lhs.false238, %if.then234
  call fastcc void @forget_types(%struct.work_stuff* %work) #8, !dbg !2275
  br label %if.end247, !dbg !2277

if.end247:                                        ; preds = %lor.lhs.false242, %if.then246
  %call248 = call fastcc i32 @demangle_args(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) #8, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %call248, metadata !2013, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 0, metadata !2015, metadata !DIExpression()), !dbg !2027
  br label %if.end249, !dbg !2279

if.end249:                                        ; preds = %if.end247, %sw.epilog
  %func_done.3 = phi i32 [ 1, %if.end247 ], [ %func_done.2, %sw.epilog ], !dbg !2280
  %success.7 = phi i32 [ %call248, %if.end247 ], [ %success.6, %sw.epilog ], !dbg !2280
  %expect_func.6 = phi i32 [ 0, %if.end247 ], [ %expect_func.5, %sw.epilog ], !dbg !2027
  call void @llvm.dbg.value(metadata i32 %expect_func.6, metadata !2015, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %success.7, metadata !2013, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %func_done.3, metadata !2014, metadata !DIExpression()), !dbg !2027
  br label %while.cond, !dbg !2046, !llvm.loop !2281

while.end250:                                     ; preds = %land.rhs
  %func_done.0.lcssa14 = phi i32 [ %func_done.0, %land.rhs ], !dbg !2027
  %success.0.lcssa13 = phi i32 [ %success.0, %land.rhs ], !dbg !2027
  call void @llvm.dbg.value(metadata i32 %func_done.0.lcssa14, metadata !2014, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %success.0.lcssa13, metadata !2013, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %func_done.0.lcssa14, metadata !2014, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %success.0.lcssa13, metadata !2013, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %func_done.0.lcssa14, metadata !2014, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %success.0.lcssa13, metadata !2013, metadata !DIExpression()), !dbg !2027
  %tobool253 = icmp eq i32 %func_done.0.lcssa14, 0, !dbg !2283
  br i1 %tobool253, label %if.then254, label %if.end265, !dbg !2285

if.then254:                                       ; preds = %while.end250
  %45 = load i32, i32* %options203, align 8, !dbg !2286
  %and256 = and i32 %45, 256, !dbg !2286
  %tobool257 = icmp eq i32 %and256, 0, !dbg !2286
  br i1 %tobool257, label %lor.lhs.false258, label %if.then262, !dbg !2289

lor.lhs.false258:                                 ; preds = %if.then254
  %and260 = and i32 %45, 512, !dbg !2290
  %tobool261 = icmp eq i32 %and260, 0, !dbg !2290
  br i1 %tobool261, label %if.end265, label %if.then262, !dbg !2291

if.then262:                                       ; preds = %lor.lhs.false258, %if.then254
  %call263 = call fastcc i32 @demangle_args(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) #8, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %call263, metadata !2013, metadata !DIExpression()), !dbg !2027
  br label %if.end265, !dbg !2294

if.end265.loopexit:                               ; preds = %while.cond
  br label %if.end265, !dbg !2295

if.end265:                                        ; preds = %while.end250, %if.end265.loopexit, %lor.lhs.false258, %if.then262
  %success.9 = phi i32 [ %success.0.lcssa13, %while.end250 ], [ %call263, %if.then262 ], [ %success.0.lcssa13, %lor.lhs.false258 ], [ 0, %if.end265.loopexit ], !dbg !2027
  call void @llvm.dbg.value(metadata i32 %success.9, metadata !2013, metadata !DIExpression()), !dbg !2027
  %tobool266 = icmp eq i32 %success.9, 0, !dbg !2295
  br i1 %tobool266, label %if.end289, label %land.lhs.true267, !dbg !2297

land.lhs.true267:                                 ; preds = %if.end265
  %46 = load i32, i32* %options203, align 8, !dbg !2298
  %and269 = and i32 %46, 1, !dbg !2298
  %tobool270 = icmp eq i32 %and269, 0, !dbg !2298
  br i1 %tobool270, label %if.end289, label %if.then271, !dbg !2299

if.then271:                                       ; preds = %land.lhs.true267
  %47 = load i32, i32* %static_type, align 8, !dbg !2300
  %tobool273 = icmp eq i32 %47, 0, !dbg !2303
  br i1 %tobool273, label %if.end275, label %if.then274, !dbg !2304

if.then274:                                       ; preds = %if.then271
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i64 0, i64 0)) #8, !dbg !2305
  br label %if.end275, !dbg !2305

if.end275:                                        ; preds = %if.then271, %if.then274
  %48 = load i32, i32* %type_quals, align 8, !dbg !2306
  %cmp277 = icmp eq i32 %48, 0, !dbg !2308
  br i1 %cmp277, label %if.end289, label %if.then279, !dbg !2309

if.then279:                                       ; preds = %if.end275
  %b280 = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 0, !dbg !2310
  %49 = load i8*, i8** %b280, align 8, !dbg !2310
  %p281 = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 1, !dbg !2310
  %50 = load i8*, i8** %p281, align 8, !dbg !2310
  %cmp282 = icmp eq i8* %49, %50, !dbg !2310
  br i1 %cmp282, label %if.end285, label %if.then284, !dbg !2314

if.then284:                                       ; preds = %if.then279
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !2310
  %.pre10 = load i32, i32* %type_quals, align 8, !dbg !2315
  br label %if.end285, !dbg !2310

if.end285:                                        ; preds = %if.then284, %if.then279
  %51 = phi i32 [ %.pre10, %if.then284 ], [ %48, %if.then279 ], !dbg !2315
  %call287 = call fastcc i8* @qualifier_string(i32 %51) #8, !dbg !2316
  call fastcc void @string_append(%struct.string* %declp, i8* %call287) #8, !dbg !2317
  br label %if.end289, !dbg !2318

if.end289:                                        ; preds = %if.end275, %land.lhs.true267, %if.end265, %if.end285
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2319
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2319
  ret i32 %success.9, !dbg !2320
}

; Function Attrs: nounwind uwtable
define internal fastcc void @string_prepend(%struct.string* %p, i8* %s) unnamed_addr #5 !dbg !2321 {
entry:
  call void @llvm.dbg.value(metadata %struct.string* %p, metadata !2325, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8* %s, metadata !2326, metadata !DIExpression()), !dbg !2327
  %cmp = icmp eq i8* %s, null, !dbg !2328
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !2330

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %s, align 1, !dbg !2331
  %cmp1 = icmp eq i8 %0, 0, !dbg !2332
  br i1 %cmp1, label %if.end, label %if.then, !dbg !2333

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i64 @strlen(i8* nonnull %s) #6, !dbg !2334
  %conv3 = trunc i64 %call to i32, !dbg !2334
  tail call fastcc void @string_prependn(%struct.string* %p, i8* nonnull %s, i32 %conv3) #8, !dbg !2336
  br label %if.end, !dbg !2337

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  ret void, !dbg !2338
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @mop_up(%struct.work_stuff* %work, %struct.string* %declp, i32 %success) unnamed_addr #5 !dbg !2339 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !2343, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !2344, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %success, metadata !2345, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* null, metadata !2346, metadata !DIExpression()), !dbg !2347
  tail call fastcc void @delete_non_B_K_work_stuff(%struct.work_stuff* %work) #8, !dbg !2348
  %tobool = icmp eq i32 %success, 0, !dbg !2349
  br i1 %tobool, label %if.then, label %if.else, !dbg !2351

if.then:                                          ; preds = %entry
  tail call fastcc void @string_delete(%struct.string* %declp) #8, !dbg !2352
  br label %if.end, !dbg !2354

if.else:                                          ; preds = %entry
  tail call fastcc void @string_appendn(%struct.string* %declp, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.178, i64 0, i64 0), i32 1) #8, !dbg !2355
  %b = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 0, !dbg !2357
  %0 = load i8*, i8** %b, align 8, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %0, metadata !2346, metadata !DIExpression()), !dbg !2347
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %demangled.0 = phi i8* [ %0, %if.else ], [ null, %if.then ], !dbg !2347
  call void @llvm.dbg.value(metadata i8* %demangled.0, metadata !2346, metadata !DIExpression()), !dbg !2347
  ret i8* %demangled.0, !dbg !2358
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_qualified(%struct.work_stuff* %work, i8** %mangled, %struct.string* %result, i32 %isfuncname, i32 %append) unnamed_addr #5 !dbg !2359 {
entry:
  %num = alloca [2 x i8], align 1
  %temp = alloca %struct.string, align 8
  %last_name = alloca %struct.string, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !2363, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !2364, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata %struct.string* %result, metadata !2365, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 %isfuncname, metadata !2366, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 %append, metadata !2367, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 0, metadata !2368, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 1, metadata !2369, metadata !DIExpression()), !dbg !2387
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %num, i64 0, i64 0, !dbg !2388
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #7, !dbg !2388
  call void @llvm.dbg.declare(metadata [2 x i8]* %num, metadata !2370, metadata !DIExpression()), !dbg !2389
  %1 = bitcast %struct.string* %temp to i8*, !dbg !2390
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2390
  %2 = bitcast %struct.string* %last_name to i8*, !dbg !2391
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2391
  %call = tail call fastcc i32 @register_Btype(%struct.work_stuff* %work) #8, !dbg !2392
  call void @llvm.dbg.value(metadata i32 %call, metadata !2373, metadata !DIExpression()), !dbg !2387
  %tobool = icmp eq i32 %isfuncname, 0, !dbg !2393
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2394

land.rhs:                                         ; preds = %entry
  %constructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 10, !dbg !2395
  %3 = load i32, i32* %constructor, align 8, !dbg !2395
  %and = and i32 %3, 1, !dbg !2396
  %tobool1 = icmp eq i32 %and, 0, !dbg !2396
  br i1 %tobool1, label %lor.rhs, label %land.end, !dbg !2397

lor.rhs:                                          ; preds = %land.rhs
  %destructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !2398
  %4 = load i32, i32* %destructor, align 4, !dbg !2398
  %and2 = and i32 %4, 1, !dbg !2399
  br label %land.end, !dbg !2397

land.end:                                         ; preds = %land.rhs, %entry, %lor.rhs
  %5 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %and2, %lor.rhs ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !2366, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_init(%struct.string* nonnull %temp) #8, !dbg !2400
  call void @llvm.dbg.value(metadata %struct.string* %last_name, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_init(%struct.string* nonnull %last_name) #8, !dbg !2401
  %6 = load i8*, i8** %mangled, align 8, !dbg !2402
  %7 = load i8, i8* %6, align 1, !dbg !2403
  %cmp = icmp eq i8 %7, 75, !dbg !2404
  br i1 %cmp, label %if.then, label %if.else12, !dbg !2405

if.then:                                          ; preds = %land.end
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2406
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !2406
  %call5 = call fastcc i32 @consume_count_with_underscores(i8** %mangled) #8, !dbg !2407
  call void @llvm.dbg.value(metadata i32 %call5, metadata !2374, metadata !DIExpression()), !dbg !2408
  %cmp6 = icmp eq i32 %call5, -1, !dbg !2409
  br i1 %cmp6, label %if.end34, label %lor.lhs.false, !dbg !2411

lor.lhs.false:                                    ; preds = %if.then
  %numk = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 4, !dbg !2412
  %8 = load i32, i32* %numk, align 8, !dbg !2412
  %cmp8 = icmp slt i32 %call5, %8, !dbg !2413
  br i1 %cmp8, label %if.else, label %if.end34, !dbg !2414

if.else:                                          ; preds = %lor.lhs.false
  %ktypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 2, !dbg !2415
  %9 = load i8**, i8*** %ktypevec, align 8, !dbg !2415
  %idxprom = sext i32 %call5 to i64, !dbg !2416
  %arrayidx11 = getelementptr inbounds i8*, i8** %9, i64 %idxprom, !dbg !2416
  %10 = load i8*, i8** %arrayidx11, align 8, !dbg !2416
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_append(%struct.string* nonnull %temp, i8* %10) #8, !dbg !2417
  br label %if.end34

if.else12:                                        ; preds = %land.end
  %arrayidx13 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2418
  %11 = load i8, i8* %arrayidx13, align 1, !dbg !2418
  %conv14 = sext i8 %11 to i32, !dbg !2418
  switch i32 %conv14, label %if.end34 [
    i32 95, label %sw.bb
    i32 49, label %sw.bb21
    i32 50, label %sw.bb21
    i32 51, label %sw.bb21
    i32 52, label %sw.bb21
    i32 53, label %sw.bb21
    i32 54, label %sw.bb21
    i32 55, label %sw.bb21
    i32 56, label %sw.bb21
    i32 57, label %sw.bb21
  ], !dbg !2419

sw.bb:                                            ; preds = %if.else12
  store i8* %arrayidx13, i8** %mangled, align 8, !dbg !2420
  %call16 = call fastcc i32 @consume_count_with_underscores(i8** %mangled) #8, !dbg !2422
  call void @llvm.dbg.value(metadata i32 %call16, metadata !2368, metadata !DIExpression()), !dbg !2387
  %cmp17 = icmp ne i32 %call16, -1, !dbg !2423
  %spec.select = zext i1 %cmp17 to i32, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2369, metadata !DIExpression()), !dbg !2387
  br label %if.end34, !dbg !2426

sw.bb21:                                          ; preds = %if.else12, %if.else12, %if.else12, %if.else12, %if.else12, %if.else12, %if.else12, %if.else12, %if.else12
  store i8 %11, i8* %0, align 1, !dbg !2427
  %arrayidx24 = getelementptr inbounds [2 x i8], [2 x i8]* %num, i64 0, i64 1, !dbg !2428
  store i8 0, i8* %arrayidx24, align 1, !dbg !2429
  %call25 = call i32 @atoi(i8* nonnull %0) #8, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %call25, metadata !2368, metadata !DIExpression()), !dbg !2387
  %12 = load i8*, i8** %mangled, align 8, !dbg !2431
  %arrayidx26 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !2433
  %13 = load i8, i8* %arrayidx26, align 1, !dbg !2433
  %cmp28 = icmp eq i8 %13, 95, !dbg !2434
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !2435

if.then30:                                        ; preds = %sw.bb21
  %incdec.ptr31 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !2436
  store i8* %incdec.ptr31, i8** %mangled, align 8, !dbg !2436
  br label %if.end32, !dbg !2438

if.end32:                                         ; preds = %if.then30, %sw.bb21
  %14 = phi i8* [ %incdec.ptr31, %if.then30 ], [ %12, %sw.bb21 ], !dbg !2439
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2, !dbg !2439
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !2439
  br label %if.end34, !dbg !2440

if.end34:                                         ; preds = %lor.lhs.false, %sw.bb, %if.end32, %if.else12, %if.else, %if.then
  %qualifiers.1 = phi i32 [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.else ], [ %call25, %if.end32 ], [ %call16, %sw.bb ], [ 0, %if.else12 ], !dbg !2441
  %success.3 = phi i32 [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 1, %if.else ], [ 1, %if.end32 ], [ %spec.select, %sw.bb ], [ 0, %if.else12 ], !dbg !2442
  call void @llvm.dbg.value(metadata i32 %success.3, metadata !2369, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 %qualifiers.1, metadata !2368, metadata !DIExpression()), !dbg !2387
  %tobool35 = icmp eq i32 %success.3, 0, !dbg !2443
  br i1 %tobool35, label %cleanup161, label %while.cond.preheader, !dbg !2445

while.cond.preheader:                             ; preds = %if.end34
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !2446
  %numk68 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 4, !dbg !2447
  %ktypevec73 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 2, !dbg !2447
  %b = getelementptr inbounds %struct.string, %struct.string* %temp, i64 0, i32 0, !dbg !2449
  %p = getelementptr inbounds %struct.string, %struct.string* %temp, i64 0, i32 1, !dbg !2449
  br label %while.cond, !dbg !2451

while.cond:                                       ; preds = %while.cond.preheader, %cleanup117
  %qualifiers.2 = phi i32 [ %dec, %cleanup117 ], [ %qualifiers.1, %while.cond.preheader ], !dbg !2387
  %success.4 = phi i32 [ %success.10, %cleanup117 ], [ %success.3, %while.cond.preheader ], !dbg !2387
  call void @llvm.dbg.value(metadata i32 %success.4, metadata !2369, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 %qualifiers.2, metadata !2368, metadata !DIExpression()), !dbg !2387
  %dec = add nsw i32 %qualifiers.2, -1, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2368, metadata !DIExpression()), !dbg !2387
  %cmp38 = icmp sgt i32 %qualifiers.2, 0, !dbg !2453
  br i1 %cmp38, label %while.body, label %while.end, !dbg !2451

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i32 1, metadata !2377, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata %struct.string* %last_name, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_clear(%struct.string* nonnull %last_name) #8, !dbg !2455
  %15 = load i8*, i8** %mangled, align 8, !dbg !2456
  %16 = load i8, i8* %15, align 1, !dbg !2458
  %cmp42 = icmp eq i8 %16, 95, !dbg !2459
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !2460

if.then44:                                        ; preds = %while.body
  %incdec.ptr45 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !2461
  store i8* %incdec.ptr45, i8** %mangled, align 8, !dbg !2461
  %.pre = load i8, i8* %incdec.ptr45, align 1, !dbg !2462
  br label %if.end46, !dbg !2463

if.end46:                                         ; preds = %if.then44, %while.body
  %17 = phi i8 [ %.pre, %if.then44 ], [ %16, %while.body ], !dbg !2462
  %18 = phi i8* [ %incdec.ptr45, %if.then44 ], [ %15, %while.body ], !dbg !2464
  %cmp49 = icmp eq i8 %17, 116, !dbg !2465
  br i1 %cmp49, label %if.then51, label %if.else56, !dbg !2466

if.then51:                                        ; preds = %if.end46
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call void @llvm.dbg.value(metadata %struct.string* %last_name, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  %call52 = call fastcc i32 @demangle_template(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %temp, %struct.string* nonnull %last_name, i32 1, i32 0) #8, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %call52, metadata !2369, metadata !DIExpression()), !dbg !2387
  %tobool53 = icmp eq i32 %call52, 0, !dbg !2469
  br i1 %tobool53, label %cleanup117, label %if.end99, !dbg !2471

if.else56:                                        ; preds = %if.end46
  %cmp59 = icmp eq i8 %17, 75, !dbg !2472
  br i1 %cmp59, label %if.then61, label %if.else80, !dbg !2473

if.then61:                                        ; preds = %if.else56
  %incdec.ptr63 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !2474
  store i8* %incdec.ptr63, i8** %mangled, align 8, !dbg !2474
  %call64 = call fastcc i32 @consume_count_with_underscores(i8** %mangled) #8, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %call64, metadata !2379, metadata !DIExpression()), !dbg !2476
  %cmp65 = icmp eq i32 %call64, -1, !dbg !2477
  br i1 %cmp65, label %if.end76, label %lor.lhs.false67, !dbg !2478

lor.lhs.false67:                                  ; preds = %if.then61
  %19 = load i32, i32* %numk68, align 8, !dbg !2479
  %cmp69 = icmp slt i32 %call64, %19, !dbg !2480
  br i1 %cmp69, label %if.else72, label %if.end76, !dbg !2481

if.else72:                                        ; preds = %lor.lhs.false67
  %20 = load i8**, i8*** %ktypevec73, align 8, !dbg !2482
  %idxprom74 = sext i32 %call64 to i64, !dbg !2483
  %arrayidx75 = getelementptr inbounds i8*, i8** %20, i64 %idxprom74, !dbg !2483
  %21 = load i8*, i8** %arrayidx75, align 8, !dbg !2483
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_append(%struct.string* nonnull %temp, i8* %21) #8, !dbg !2484
  br label %if.end76

if.end76:                                         ; preds = %lor.lhs.false67, %if.then61, %if.else72
  %success.5 = phi i32 [ %success.4, %if.else72 ], [ 0, %lor.lhs.false67 ], [ 0, %if.then61 ], !dbg !2387
  call void @llvm.dbg.value(metadata i32 %success.5, metadata !2369, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 0, metadata !2377, metadata !DIExpression()), !dbg !2454
  %tobool77 = icmp eq i32 %success.5, 0, !dbg !2485
  %. = select i1 %tobool77, i32 4, i32 0, !dbg !2487
  br i1 %tobool77, label %cleanup117, label %if.end99

if.else80:                                        ; preds = %if.else56
  %22 = load i32, i32* %options, align 8, !dbg !2488
  %and81 = and i32 %22, 8192, !dbg !2488
  %tobool82 = icmp eq i32 %and81, 0, !dbg !2488
  br i1 %tobool82, label %if.else92, label %if.then83, !dbg !2489

if.then83:                                        ; preds = %if.else80
  %call84 = call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %call84, metadata !2383, metadata !DIExpression()), !dbg !2491
  %cmp85 = icmp eq i32 %call84, -1, !dbg !2492
  br i1 %cmp85, label %cleanup89, label %if.end88, !dbg !2494

if.end88:                                         ; preds = %if.then83
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @recursively_demangle(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %temp, i32 %call84) #8, !dbg !2495
  br label %cleanup89, !dbg !2496

cleanup89:                                        ; preds = %if.then83, %if.end88
  %success.6 = phi i32 [ %success.4, %if.end88 ], [ 0, %if.then83 ], !dbg !2387
  %cleanup.dest.slot.1 = phi i32 [ 0, %if.end88 ], [ 4, %if.then83 ]
  call void @llvm.dbg.value(metadata i32 %success.6, metadata !2369, metadata !DIExpression()), !dbg !2387
  %cond1 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond1, label %if.end99, label %cleanup117

if.else92:                                        ; preds = %if.else80
  call void @llvm.dbg.value(metadata %struct.string* %last_name, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_delete(%struct.string* nonnull %last_name) #8, !dbg !2497
  call void @llvm.dbg.value(metadata %struct.string* %last_name, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  %call93 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %last_name) #8, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %call93, metadata !2369, metadata !DIExpression()), !dbg !2387
  %tobool94 = icmp eq i32 %call93, 0, !dbg !2500
  br i1 %tobool94, label %cleanup117, label %if.end96, !dbg !2502

if.end96:                                         ; preds = %if.else92
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call void @llvm.dbg.value(metadata %struct.string* %last_name, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_appends(%struct.string* nonnull %temp, %struct.string* nonnull %last_name) #8, !dbg !2503
  br label %if.end99

if.end99:                                         ; preds = %if.then51, %if.end76, %cleanup89, %if.end96
  %success.9 = phi i32 [ %call52, %if.then51 ], [ %success.5, %if.end76 ], [ %call93, %if.end96 ], [ %success.6, %cleanup89 ], !dbg !2504
  %remember_K.1 = phi i1 [ true, %if.then51 ], [ false, %if.end76 ], [ true, %if.end96 ], [ true, %cleanup89 ]
  call void @llvm.dbg.value(metadata i32 %success.9, metadata !2369, metadata !DIExpression()), !dbg !2387
  br i1 %remember_K.1, label %if.then101, label %if.end108, !dbg !2505

if.then101:                                       ; preds = %if.end99
  %23 = load i8*, i8** %b, align 8, !dbg !2506
  %24 = load i8*, i8** %p, align 8, !dbg !2507
  %cmp103 = icmp eq i8* %23, %24, !dbg !2507
  br i1 %cmp103, label %cond.end, label %cond.false, !dbg !2507

cond.false:                                       ; preds = %if.then101
  %25 = ptrtoint i8* %23 to i64, !dbg !2507
  %26 = ptrtoint i8* %24 to i64, !dbg !2507
  %sub.ptr.sub = sub i64 %26, %25, !dbg !2507
  br label %cond.end, !dbg !2507

cond.end:                                         ; preds = %if.then101, %cond.false
  %cond = phi i64 [ %sub.ptr.sub, %cond.false ], [ 0, %if.then101 ], !dbg !2507
  %conv107 = trunc i64 %cond to i32, !dbg !2507
  call fastcc void @remember_Ktype(%struct.work_stuff* %work, i8* %23, i32 %conv107) #8, !dbg !2508
  br label %if.end108, !dbg !2508

if.end108:                                        ; preds = %cond.end, %if.end99
  %cmp109 = icmp sgt i32 %dec, 0, !dbg !2509
  br i1 %cmp109, label %if.then111, label %cleanup117, !dbg !2511

if.then111:                                       ; preds = %if.end108
  %27 = load i32, i32* %options, align 8, !dbg !2512
  %and113 = and i32 %27, 4, !dbg !2512
  %tobool114 = icmp eq i32 %and113, 0, !dbg !2512
  %cond115 = select i1 %tobool114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), !dbg !2512
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_append(%struct.string* nonnull %temp, i8* %cond115) #8, !dbg !2513
  br label %cleanup117, !dbg !2513

cleanup117:                                       ; preds = %if.then51, %if.end76, %if.else92, %if.end108, %if.then111, %cleanup89
  %success.10 = phi i32 [ 0, %if.end76 ], [ %success.6, %cleanup89 ], [ 0, %if.then51 ], [ 0, %if.else92 ], [ %success.9, %if.then111 ], [ %success.9, %if.end108 ], !dbg !2504
  %cleanup.dest.slot.2 = phi i32 [ %., %if.end76 ], [ %cleanup.dest.slot.1, %cleanup89 ], [ 4, %if.then51 ], [ 4, %if.else92 ], [ 0, %if.then111 ], [ 0, %if.end108 ]
  call void @llvm.dbg.value(metadata i32 %success.10, metadata !2369, metadata !DIExpression()), !dbg !2387
  %switch = icmp eq i32 %cleanup.dest.slot.2, 0
  br i1 %switch, label %while.cond, label %while.end, !llvm.loop !2514

while.end:                                        ; preds = %cleanup117, %while.cond
  %success.11 = phi i32 [ %success.10, %cleanup117 ], [ %success.4, %while.cond ], !dbg !2387
  call void @llvm.dbg.value(metadata i32 %success.11, metadata !2369, metadata !DIExpression()), !dbg !2387
  %28 = load i8*, i8** %b, align 8, !dbg !2516
  %29 = load i8*, i8** %p, align 8, !dbg !2517
  %cmp123 = icmp eq i8* %28, %29, !dbg !2517
  br i1 %cmp123, label %cond.end132, label %cond.false126, !dbg !2517

cond.false126:                                    ; preds = %while.end
  %30 = ptrtoint i8* %28 to i64, !dbg !2517
  %31 = ptrtoint i8* %29 to i64, !dbg !2517
  %sub.ptr.sub131 = sub i64 %31, %30, !dbg !2517
  %phitmp = trunc i64 %sub.ptr.sub131 to i32, !dbg !2517
  br label %cond.end132, !dbg !2517

cond.end132:                                      ; preds = %while.end, %cond.false126
  %cond133 = phi i32 [ %phitmp, %cond.false126 ], [ 0, %while.end ]
  call fastcc void @remember_Btype(%struct.work_stuff* %work, i8* %28, i32 %cond133, i32 %call) #8, !dbg !2518
  %tobool135 = icmp eq i32 %5, 0, !dbg !2519
  br i1 %tobool135, label %if.end146, label %if.then136, !dbg !2521

if.then136:                                       ; preds = %cond.end132
  %32 = load i32, i32* %options, align 8, !dbg !2522
  %and138 = and i32 %32, 4, !dbg !2522
  %tobool139 = icmp eq i32 %and138, 0, !dbg !2522
  %cond140 = select i1 %tobool139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), !dbg !2522
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_append(%struct.string* nonnull %temp, i8* %cond140) #8, !dbg !2524
  %destructor141 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !2525
  %33 = load i32, i32* %destructor141, align 4, !dbg !2525
  %and142 = and i32 %33, 1, !dbg !2527
  %tobool143 = icmp eq i32 %and142, 0, !dbg !2527
  br i1 %tobool143, label %if.end145, label %if.then144, !dbg !2528

if.then144:                                       ; preds = %if.then136
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_append(%struct.string* nonnull %temp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i64 0, i64 0)) #8, !dbg !2529
  br label %if.end145, !dbg !2529

if.end145:                                        ; preds = %if.then136, %if.then144
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call void @llvm.dbg.value(metadata %struct.string* %last_name, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_appends(%struct.string* nonnull %temp, %struct.string* nonnull %last_name) #8, !dbg !2530
  br label %if.end146, !dbg !2531

if.end146:                                        ; preds = %cond.end132, %if.end145
  %tobool147 = icmp eq i32 %append, 0, !dbg !2532
  br i1 %tobool147, label %if.else149, label %if.then148, !dbg !2534

if.then148:                                       ; preds = %if.end146
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_appends(%struct.string* %result, %struct.string* nonnull %temp) #8, !dbg !2535
  br label %if.end160, !dbg !2535

if.else149:                                       ; preds = %if.end146
  %b150 = getelementptr inbounds %struct.string, %struct.string* %result, i64 0, i32 0, !dbg !2536
  %34 = load i8*, i8** %b150, align 8, !dbg !2536
  %p151 = getelementptr inbounds %struct.string, %struct.string* %result, i64 0, i32 1, !dbg !2536
  %35 = load i8*, i8** %p151, align 8, !dbg !2536
  %cmp152 = icmp eq i8* %34, %35, !dbg !2536
  br i1 %cmp152, label %if.end159, label %if.then154, !dbg !2539

if.then154:                                       ; preds = %if.else149
  %36 = load i32, i32* %options, align 8, !dbg !2540
  %and156 = and i32 %36, 4, !dbg !2540
  %tobool157 = icmp eq i32 %and156, 0, !dbg !2540
  %cond158 = select i1 %tobool157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), !dbg !2540
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_append(%struct.string* nonnull %temp, i8* %cond158) #8, !dbg !2541
  br label %if.end159, !dbg !2541

if.end159:                                        ; preds = %if.then154, %if.else149
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_prepends(%struct.string* %result, %struct.string* nonnull %temp) #8, !dbg !2542
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.then148
  call void @llvm.dbg.value(metadata %struct.string* %last_name, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_delete(%struct.string* nonnull %last_name) #8, !dbg !2543
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2387
  call fastcc void @string_delete(%struct.string* nonnull %temp) #8, !dbg !2544
  br label %cleanup161, !dbg !2545

cleanup161:                                       ; preds = %if.end34, %if.end160
  %retval.0 = phi i32 [ %success.11, %if.end160 ], [ 0, %if.end34 ], !dbg !2387
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2546
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2546
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #7, !dbg !2546
  ret i32 %retval.0, !dbg !2546
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_template(%struct.work_stuff* %work, i8** %mangled, %struct.string* %tname, %struct.string* %trawname, i32 %is_type, i32 %remember) unnamed_addr #5 !dbg !2547 {
entry:
  %r = alloca i32, align 4
  %temp = alloca %struct.string, align 8
  %param = alloca %struct.string, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !2551, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !2552, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata %struct.string* %tname, metadata !2553, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata %struct.string* %trawname, metadata !2554, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 %is_type, metadata !2555, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 %remember, metadata !2556, metadata !DIExpression()), !dbg !2595
  %0 = bitcast i32* %r to i8*, !dbg !2596
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2596
  call void @llvm.dbg.value(metadata i32 0, metadata !2559, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 0, metadata !2561, metadata !DIExpression()), !dbg !2595
  %1 = bitcast %struct.string* %temp to i8*, !dbg !2597
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2597
  %2 = load i8*, i8** %mangled, align 8, !dbg !2598
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2598
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !2598
  %tobool = icmp eq i32 %is_type, 0, !dbg !2599
  br i1 %tobool, label %if.end51, label %if.then, !dbg !2600

if.then:                                          ; preds = %entry
  %3 = load i8, i8* %incdec.ptr, align 1, !dbg !2601
  %cmp = icmp eq i8 %3, 122, !dbg !2602
  br i1 %cmp, label %if.then2, label %if.else29, !dbg !2603

if.then2:                                         ; preds = %if.then
  %incdec.ptr4 = getelementptr inbounds i8, i8* %2, i64 3, !dbg !2604
  store i8* %incdec.ptr4, i8** %mangled, align 8, !dbg !2604
  %call = tail call fastcc i32 @consume_count_with_underscores(i8** %mangled) #8, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %call, metadata !2563, metadata !DIExpression()), !dbg !2606
  %cmp5 = icmp eq i32 %call, -1, !dbg !2607
  br i1 %cmp5, label %cleanup, label %lor.lhs.false, !dbg !2609

lor.lhs.false:                                    ; preds = %if.then2
  %tmpl_argvec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 16, !dbg !2610
  %4 = load i8**, i8*** %tmpl_argvec, align 8, !dbg !2610
  %tobool7 = icmp eq i8** %4, null, !dbg !2611
  br i1 %tobool7, label %lor.lhs.false10, label %land.lhs.true, !dbg !2612

land.lhs.true:                                    ; preds = %lor.lhs.false
  %ntmpl_args = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 17, !dbg !2613
  %5 = load i32, i32* %ntmpl_args, align 8, !dbg !2613
  %cmp8 = icmp slt i32 %call, %5, !dbg !2614
  br i1 %cmp8, label %lor.lhs.false10, label %cleanup, !dbg !2615

lor.lhs.false10:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %call11 = tail call fastcc i32 @consume_count_with_underscores(i8** %mangled) #8, !dbg !2616
  %cmp12 = icmp eq i32 %call11, -1, !dbg !2617
  br i1 %cmp12, label %cleanup, label %if.end, !dbg !2618

if.end:                                           ; preds = %lor.lhs.false10
  %6 = load i8**, i8*** %tmpl_argvec, align 8, !dbg !2619
  %tobool16 = icmp eq i8** %6, null, !dbg !2621
  br i1 %tobool16, label %if.else, label %if.then17, !dbg !2622

if.then17:                                        ; preds = %if.end
  %idxprom = sext i32 %call to i64, !dbg !2623
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom, !dbg !2623
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !2623
  tail call fastcc void @string_append(%struct.string* %tname, i8* %7) #8, !dbg !2625
  %tobool19 = icmp eq %struct.string* %trawname, null, !dbg !2626
  br i1 %tobool19, label %cleanup, label %if.then20, !dbg !2628

if.then20:                                        ; preds = %if.then17
  %8 = load i8**, i8*** %tmpl_argvec, align 8, !dbg !2629
  %arrayidx23 = getelementptr inbounds i8*, i8** %8, i64 %idxprom, !dbg !2630
  %9 = load i8*, i8** %arrayidx23, align 8, !dbg !2630
  tail call fastcc void @string_append(%struct.string* nonnull %trawname, i8* %9) #8, !dbg !2631
  br label %cleanup, !dbg !2631

if.else:                                          ; preds = %if.end
  tail call fastcc void @string_append_template_idx(%struct.string* %tname, i32 %call) #8, !dbg !2632
  %tobool25 = icmp eq %struct.string* %trawname, null, !dbg !2634
  br i1 %tobool25, label %cleanup, label %if.then26, !dbg !2636

if.then26:                                        ; preds = %if.else
  tail call fastcc void @string_append_template_idx(%struct.string* nonnull %trawname, i32 %call) #8, !dbg !2637
  br label %cleanup, !dbg !2637

cleanup:                                          ; preds = %land.lhs.true, %if.then17, %if.else, %if.then20, %if.then26, %if.then2, %lor.lhs.false10
  %cleanup.dest.slot.0 = phi i1 [ false, %lor.lhs.false10 ], [ false, %land.lhs.true ], [ false, %if.then2 ], [ true, %if.else ], [ true, %if.then26 ], [ true, %if.then17 ], [ true, %if.then20 ]
  br i1 %cleanup.dest.slot.0, label %if.end51, label %cleanup240

if.else29:                                        ; preds = %if.then
  %call30 = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %call30, metadata !2558, metadata !DIExpression()), !dbg !2595
  store i32 %call30, i32* %r, align 4, !dbg !2641
  %cmp31 = icmp slt i32 %call30, 1, !dbg !2642
  br i1 %cmp31, label %cleanup240, label %lor.lhs.false33, !dbg !2643

lor.lhs.false33:                                  ; preds = %if.else29
  %10 = load i8*, i8** %mangled, align 8, !dbg !2644
  %call34 = tail call i64 @strlen(i8* %10) #6, !dbg !2645
  %conv35 = trunc i64 %call34 to i32, !dbg !2646
  call void @llvm.dbg.value(metadata i32 %call30, metadata !2558, metadata !DIExpression()), !dbg !2595
  %cmp36 = icmp sgt i32 %call30, %conv35, !dbg !2647
  br i1 %cmp36, label %cleanup240, label %if.end39, !dbg !2648

if.end39:                                         ; preds = %lor.lhs.false33
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !2649
  %11 = load i32, i32* %options, align 8, !dbg !2649
  %and = and i32 %11, 4, !dbg !2650
  %tobool40 = icmp eq i32 %and, 0, !dbg !2650
  br i1 %tobool40, label %land.end, label %land.rhs, !dbg !2651

land.rhs:                                         ; preds = %if.end39
  %12 = load i8*, i8** %mangled, align 8, !dbg !2652
  %call41 = tail call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.197, i64 0, i64 0), i64 8) #6, !dbg !2653
  %cmp42 = icmp eq i32 %call41, 0, !dbg !2654
  br label %land.end

land.end:                                         ; preds = %if.end39, %land.rhs
  %13 = phi i1 [ false, %if.end39 ], [ %cmp42, %land.rhs ], !dbg !2655
  call void @llvm.dbg.value(metadata i1 %13, metadata !2561, metadata !DIExpression()), !dbg !2595
  br i1 %13, label %if.end46, label %if.then45, !dbg !2656

if.then45:                                        ; preds = %land.end
  %14 = load i8*, i8** %mangled, align 8, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %call30, metadata !2558, metadata !DIExpression()), !dbg !2595
  tail call fastcc void @string_appendn(%struct.string* %tname, i8* %14, i32 %call30) #8, !dbg !2660
  br label %if.end46, !dbg !2661

if.end46:                                         ; preds = %if.then45, %land.end
  %tobool47 = icmp eq %struct.string* %trawname, null, !dbg !2662
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !2664

if.then48:                                        ; preds = %if.end46
  %15 = load i8*, i8** %mangled, align 8, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %call30, metadata !2558, metadata !DIExpression()), !dbg !2595
  tail call fastcc void @string_appendn(%struct.string* nonnull %trawname, i8* %15, i32 %call30) #8, !dbg !2666
  br label %if.end49, !dbg !2666

if.end49:                                         ; preds = %if.end46, %if.then48
  call void @llvm.dbg.value(metadata i32 %call30, metadata !2558, metadata !DIExpression()), !dbg !2595
  %16 = load i8*, i8** %mangled, align 8, !dbg !2667
  %idx.ext = sext i32 %call30 to i64, !dbg !2667
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext, !dbg !2667
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !2667
  br label %if.end51

if.end51:                                         ; preds = %entry, %if.end49, %cleanup
  %is_java_array.1 = phi i1 [ false, %entry ], [ %13, %if.end49 ], [ false, %cleanup ]
  br i1 %is_java_array.1, label %if.end54, label %if.then53, !dbg !2668

if.then53:                                        ; preds = %if.end51
  tail call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !2669
  br label %if.end54, !dbg !2669

if.end54:                                         ; preds = %if.then53, %if.end51
  call void @llvm.dbg.value(metadata i32* %r, metadata !2558, metadata !DIExpression(DW_OP_deref)), !dbg !2595
  %call55 = call fastcc i32 @get_count(i8** %mangled, i32* nonnull %r) #8, !dbg !2671
  %tobool56 = icmp eq i32 %call55, 0, !dbg !2671
  br i1 %tobool56, label %cleanup240, label %if.end58, !dbg !2673

if.end58:                                         ; preds = %if.end54
  br i1 %tobool, label %if.then60, label %if.end70, !dbg !2674

if.then60:                                        ; preds = %if.end58
  %17 = load i32, i32* %r, align 4, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %17, metadata !2558, metadata !DIExpression()), !dbg !2595
  %conv61 = sext i32 %17 to i64, !dbg !2675
  %mul = shl nsw i64 %conv61, 3, !dbg !2675
  %call62 = call i8* @xmalloc(i64 %mul) #6, !dbg !2675
  %tmpl_argvec63 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 16, !dbg !2678
  %18 = bitcast i8*** %tmpl_argvec63 to i8**, !dbg !2679
  store i8* %call62, i8** %18, align 8, !dbg !2679
  %19 = load i32, i32* %r, align 4, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %19, metadata !2558, metadata !DIExpression()), !dbg !2595
  %ntmpl_args64 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 17, !dbg !2681
  store i32 %19, i32* %ntmpl_args64, align 8, !dbg !2682
  call void @llvm.dbg.value(metadata i32 0, metadata !2557, metadata !DIExpression()), !dbg !2595
  %20 = sext i32 %19 to i64, !dbg !2683
  br label %for.cond, !dbg !2683

for.cond:                                         ; preds = %for.body, %if.then60
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.body ], [ 0, %if.then60 ], !dbg !2685
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !2557, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 %19, metadata !2558, metadata !DIExpression()), !dbg !2595
  %cmp65 = icmp slt i64 %indvars.iv9, %20, !dbg !2686
  br i1 %cmp65, label %for.body, label %if.end70.loopexit, !dbg !2688

for.body:                                         ; preds = %for.cond
  %21 = load i8**, i8*** %tmpl_argvec63, align 8, !dbg !2689
  %arrayidx69 = getelementptr inbounds i8*, i8** %21, i64 %indvars.iv9, !dbg !2690
  store i8* null, i8** %arrayidx69, align 8, !dbg !2691
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !2692
  call void @llvm.dbg.value(metadata i32 undef, metadata !2557, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2595
  br label %for.cond, !dbg !2693, !llvm.loop !2694

if.end70.loopexit:                                ; preds = %for.cond
  br label %if.end70, !dbg !2696

if.end70:                                         ; preds = %if.end70.loopexit, %if.end58
  call void @llvm.dbg.value(metadata i32 0, metadata !2557, metadata !DIExpression()), !dbg !2595
  %22 = bitcast %struct.string* %param to i8*, !dbg !2697
  %tobool175 = icmp ne i32 %is_type, 0, !dbg !2697
  %tmpl_argvec188 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 16, !dbg !2698
  %p = getelementptr inbounds %struct.string, %struct.string* %temp, i64 0, i32 1, !dbg !2699
  %23 = bitcast i8** %p to i64*, !dbg !2699
  %24 = bitcast %struct.string* %temp to i64*, !dbg !2699
  %b98 = getelementptr inbounds %struct.string, %struct.string* %temp, i64 0, i32 0, !dbg !2699
  br label %for.cond71, !dbg !2696

for.cond71:                                       ; preds = %for.inc209, %if.end70
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc209 ], [ 0, %if.end70 ], !dbg !2700
  %need_comma.0 = phi i32 [ 1, %for.inc209 ], [ 0, %if.end70 ], !dbg !2595
  %success.0 = phi i32 [ %success.3, %for.inc209 ], [ 0, %if.end70 ], !dbg !2595
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !2560, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 %need_comma.0, metadata !2559, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2557, metadata !DIExpression()), !dbg !2595
  %25 = load i32, i32* %r, align 4, !dbg !2701
  call void @llvm.dbg.value(metadata i32 %25, metadata !2558, metadata !DIExpression()), !dbg !2595
  %26 = sext i32 %25 to i64, !dbg !2702
  %cmp72 = icmp slt i64 %indvars.iv, %26, !dbg !2702
  br i1 %cmp72, label %for.body74, label %for.end211, !dbg !2703

for.body74:                                       ; preds = %for.cond71
  %tobool75 = icmp eq i32 %need_comma.0, 0, !dbg !2704
  br i1 %tobool75, label %if.end77, label %if.then76, !dbg !2706

if.then76:                                        ; preds = %for.body74
  call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i64 0, i64 0)) #8, !dbg !2707
  br label %if.end77, !dbg !2709

if.end77:                                         ; preds = %for.body74, %if.then76
  %27 = load i8*, i8** %mangled, align 8, !dbg !2710
  %28 = load i8, i8* %27, align 1, !dbg !2711
  %cmp79 = icmp eq i8 %28, 90, !dbg !2712
  br i1 %cmp79, label %if.then81, label %if.else111, !dbg !2713

if.then81:                                        ; preds = %if.end77
  %incdec.ptr82 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2714
  store i8* %incdec.ptr82, i8** %mangled, align 8, !dbg !2714
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2595
  %call83 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %temp) #8, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %call83, metadata !2560, metadata !DIExpression()), !dbg !2595
  %tobool84 = icmp eq i32 %call83, 0, !dbg !2716
  br i1 %tobool84, label %if.end107, label %if.then85, !dbg !2717

if.then85:                                        ; preds = %if.then81
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2595
  call fastcc void @string_appends(%struct.string* %tname, %struct.string* nonnull %temp) #8, !dbg !2718
  br i1 %tobool, label %if.then87, label %if.end107, !dbg !2719

if.then87:                                        ; preds = %if.then85
  %29 = load i64, i64* %23, align 8, !dbg !2720
  %30 = load i64, i64* %24, align 8, !dbg !2721
  %sub.ptr.sub = sub i64 %29, %30, !dbg !2722
  %add = shl i64 %sub.ptr.sub, 32, !dbg !2723
  %sext6 = add i64 %add, 4294967296, !dbg !2723
  %conv89 = ashr exact i64 %sext6, 32, !dbg !2723
  %call91 = call i8* @xmalloc(i64 %conv89) #6, !dbg !2723
  %31 = load i8**, i8*** %tmpl_argvec188, align 8, !dbg !2724
  %arrayidx94 = getelementptr inbounds i8*, i8** %31, i64 %indvars.iv, !dbg !2725
  store i8* %call91, i8** %arrayidx94, align 8, !dbg !2726
  %32 = load i8**, i8*** %tmpl_argvec188, align 8, !dbg !2727
  %arrayidx97 = getelementptr inbounds i8*, i8** %32, i64 %indvars.iv, !dbg !2728
  %33 = load i8*, i8** %arrayidx97, align 8, !dbg !2728
  %34 = load i8*, i8** %b98, align 8, !dbg !2729
  %conv99 = ashr exact i64 %add, 32, !dbg !2730
  %call100 = call i8* @memcpy(i8* %33, i8* %34, i64 %conv99) #6, !dbg !2731
  %35 = load i8**, i8*** %tmpl_argvec188, align 8, !dbg !2732
  %arrayidx103 = getelementptr inbounds i8*, i8** %35, i64 %indvars.iv, !dbg !2733
  %36 = load i8*, i8** %arrayidx103, align 8, !dbg !2733
  %arrayidx105 = getelementptr inbounds i8, i8* %36, i64 %conv99, !dbg !2733
  store i8 0, i8* %arrayidx105, align 1, !dbg !2734
  br label %if.end107, !dbg !2735

if.end107:                                        ; preds = %if.then85, %if.then81, %if.then87
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2595
  call fastcc void @string_delete(%struct.string* nonnull %temp) #8, !dbg !2736
  br i1 %tobool84, label %for.end211, label %for.inc209, !dbg !2737

if.else111:                                       ; preds = %if.end77
  %cmp113 = icmp eq i8 %28, 122, !dbg !2738
  br i1 %cmp113, label %if.then115, label %if.else159, !dbg !2739

if.then115:                                       ; preds = %if.else111
  %incdec.ptr116 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2740
  store i8* %incdec.ptr116, i8** %mangled, align 8, !dbg !2740
  %call117 = call fastcc i32 @demangle_template_template_parm(%struct.work_stuff* %work, i8** %mangled, %struct.string* %tname) #8, !dbg !2741
  call void @llvm.dbg.value(metadata i32 %call117, metadata !2560, metadata !DIExpression()), !dbg !2595
  %cond3 = icmp eq i32 %call117, 0, !dbg !2742
  br i1 %cond3, label %cleanup156, label %land.lhs.true119, !dbg !2742

land.lhs.true119:                                 ; preds = %if.then115
  %call120 = call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !2743
  call void @llvm.dbg.value(metadata i32 %call120, metadata !2578, metadata !DIExpression()), !dbg !2744
  %cmp121 = icmp sgt i32 %call120, 0, !dbg !2745
  br i1 %cmp121, label %land.lhs.true123, label %if.end152, !dbg !2746

land.lhs.true123:                                 ; preds = %land.lhs.true119
  %37 = load i8*, i8** %mangled, align 8, !dbg !2747
  %call124 = call i64 @strlen(i8* %37) #6, !dbg !2748
  %conv125 = trunc i64 %call124 to i32, !dbg !2749
  %cmp126 = icmp sgt i32 %call120, %conv125, !dbg !2750
  br i1 %cmp126, label %if.end152, label %if.then128, !dbg !2751

if.then128:                                       ; preds = %land.lhs.true123
  call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !2752
  %38 = load i8*, i8** %mangled, align 8, !dbg !2753
  call fastcc void @string_appendn(%struct.string* %tname, i8* %38, i32 %call120) #8, !dbg !2754
  br i1 %tobool, label %if.then130, label %if.then128.if.end149_crit_edge, !dbg !2755

if.then128.if.end149_crit_edge:                   ; preds = %if.then128
  %.pre = sext i32 %call120 to i64, !dbg !2756
  br label %if.end149, !dbg !2755

if.then130:                                       ; preds = %if.then128
  call void @llvm.dbg.value(metadata i32 %call120, metadata !2581, metadata !DIExpression()), !dbg !2757
  %add132 = add nsw i32 %call120, 1, !dbg !2758
  %conv133 = sext i32 %add132 to i64, !dbg !2758
  %call135 = call i8* @xmalloc(i64 %conv133) #6, !dbg !2758
  %39 = load i8**, i8*** %tmpl_argvec188, align 8, !dbg !2759
  %arrayidx138 = getelementptr inbounds i8*, i8** %39, i64 %indvars.iv, !dbg !2760
  store i8* %call135, i8** %arrayidx138, align 8, !dbg !2761
  %40 = load i8**, i8*** %tmpl_argvec188, align 8, !dbg !2762
  %arrayidx141 = getelementptr inbounds i8*, i8** %40, i64 %indvars.iv, !dbg !2763
  %41 = load i8*, i8** %arrayidx141, align 8, !dbg !2763
  %42 = load i8*, i8** %mangled, align 8, !dbg !2764
  %conv142 = sext i32 %call120 to i64, !dbg !2765
  %call143 = call i8* @memcpy(i8* %41, i8* %42, i64 %conv142) #6, !dbg !2766
  %43 = load i8**, i8*** %tmpl_argvec188, align 8, !dbg !2767
  %arrayidx146 = getelementptr inbounds i8*, i8** %43, i64 %indvars.iv, !dbg !2768
  %44 = load i8*, i8** %arrayidx146, align 8, !dbg !2768
  %arrayidx148 = getelementptr inbounds i8, i8* %44, i64 %conv142, !dbg !2768
  store i8 0, i8* %arrayidx148, align 1, !dbg !2769
  br label %if.end149, !dbg !2770

if.end149:                                        ; preds = %if.then128.if.end149_crit_edge, %if.then130
  %idx.ext150.pre-phi = phi i64 [ %.pre, %if.then128.if.end149_crit_edge ], [ %conv142, %if.then130 ], !dbg !2756
  %45 = load i8*, i8** %mangled, align 8, !dbg !2756
  %add.ptr151 = getelementptr inbounds i8, i8* %45, i64 %idx.ext150.pre-phi, !dbg !2756
  store i8* %add.ptr151, i8** %mangled, align 8, !dbg !2756
  br label %if.end152, !dbg !2771

if.end152:                                        ; preds = %land.lhs.true123, %if.end149, %land.lhs.true119
  br label %cleanup156, !dbg !2772

cleanup156:                                       ; preds = %if.end152, %if.then115
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then115 ], [ true, %if.end152 ]
  br i1 %cleanup.dest.slot.1, label %for.inc209, label %for.end211

if.else159:                                       ; preds = %if.else111
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %22) #7, !dbg !2773
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2595
  %call160 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %temp) #8, !dbg !2774
  call void @llvm.dbg.value(metadata i32 %call160, metadata !2560, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2595
  call fastcc void @string_delete(%struct.string* nonnull %temp) #8, !dbg !2775
  %tobool161 = icmp eq i32 %call160, 0, !dbg !2776
  br i1 %tobool161, label %cleanup203, label %if.end163, !dbg !2778

if.end163:                                        ; preds = %if.else159
  br i1 %tobool, label %if.then165, label %if.end167, !dbg !2779

if.then165:                                       ; preds = %if.end163
  call void @llvm.dbg.value(metadata %struct.string* %param, metadata !2588, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata %struct.string* %param, metadata !2586, metadata !DIExpression(DW_OP_deref)), !dbg !2697
  call fastcc void @string_init(%struct.string* nonnull %param) #8, !dbg !2780
  br label %if.end167, !dbg !2783

if.end167:                                        ; preds = %if.end163, %if.then165
  %s.0 = phi %struct.string* [ %param, %if.then165 ], [ %tname, %if.end163 ], !dbg !2784
  call void @llvm.dbg.value(metadata %struct.string* %s.0, metadata !2588, metadata !DIExpression()), !dbg !2697
  %call168 = call fastcc i32 @demangle_template_value_parm(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s.0, i32 %call160) #8, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %call168, metadata !2560, metadata !DIExpression()), !dbg !2595
  %tobool169 = icmp eq i32 %call168, 0, !dbg !2786
  br i1 %tobool169, label %if.then170, label %if.end174, !dbg !2788

if.then170:                                       ; preds = %if.end167
  br i1 %tobool175, label %cleanup203, label %if.then172, !dbg !2789

if.then172:                                       ; preds = %if.then170
  call fastcc void @string_delete(%struct.string* %s.0) #8, !dbg !2791
  br label %cleanup203, !dbg !2791

if.end174:                                        ; preds = %if.end167
  br i1 %tobool175, label %cleanup203, label %if.then176, !dbg !2793

if.then176:                                       ; preds = %if.end174
  %p178 = getelementptr inbounds %struct.string, %struct.string* %s.0, i64 0, i32 1, !dbg !2794
  %46 = bitcast i8** %p178 to i64*, !dbg !2794
  %47 = load i64, i64* %46, align 8, !dbg !2794
  %48 = bitcast %struct.string* %s.0 to i64*, !dbg !2795
  %49 = load i64, i64* %48, align 8, !dbg !2795
  %sub.ptr.sub182 = sub i64 %47, %49, !dbg !2796
  %add184 = shl i64 %sub.ptr.sub182, 32, !dbg !2797
  %sext = add i64 %add184, 4294967296, !dbg !2797
  %conv185 = ashr exact i64 %sext, 32, !dbg !2797
  %call187 = call i8* @xmalloc(i64 %conv185) #6, !dbg !2797
  %50 = load i8**, i8*** %tmpl_argvec188, align 8, !dbg !2798
  %arrayidx190 = getelementptr inbounds i8*, i8** %50, i64 %indvars.iv, !dbg !2799
  store i8* %call187, i8** %arrayidx190, align 8, !dbg !2800
  %51 = load i8**, i8*** %tmpl_argvec188, align 8, !dbg !2801
  %arrayidx193 = getelementptr inbounds i8*, i8** %51, i64 %indvars.iv, !dbg !2802
  %52 = load i8*, i8** %arrayidx193, align 8, !dbg !2802
  %b194 = getelementptr inbounds %struct.string, %struct.string* %s.0, i64 0, i32 0, !dbg !2803
  %53 = load i8*, i8** %b194, align 8, !dbg !2803
  %conv195 = ashr exact i64 %add184, 32, !dbg !2804
  %call196 = call i8* @memcpy(i8* %52, i8* %53, i64 %conv195) #6, !dbg !2805
  %54 = load i8**, i8*** %tmpl_argvec188, align 8, !dbg !2806
  %arrayidx199 = getelementptr inbounds i8*, i8** %54, i64 %indvars.iv, !dbg !2807
  %55 = load i8*, i8** %arrayidx199, align 8, !dbg !2807
  %arrayidx201 = getelementptr inbounds i8, i8* %55, i64 %conv195, !dbg !2807
  store i8 0, i8* %arrayidx201, align 1, !dbg !2808
  call fastcc void @string_appends(%struct.string* %tname, %struct.string* %s.0) #8, !dbg !2809
  call fastcc void @string_delete(%struct.string* %s.0) #8, !dbg !2810
  br label %cleanup203, !dbg !2811

cleanup203:                                       ; preds = %if.else159, %if.end174, %if.then176, %if.then170, %if.then172
  %success.1 = phi i32 [ 0, %if.else159 ], [ 0, %if.then172 ], [ 0, %if.then170 ], [ %call168, %if.then176 ], [ %call168, %if.end174 ], !dbg !2697
  %cleanup.dest.slot.2 = phi i1 [ false, %if.else159 ], [ false, %if.then172 ], [ false, %if.then170 ], [ true, %if.then176 ], [ true, %if.end174 ]
  call void @llvm.dbg.value(metadata i32 %success.1, metadata !2560, metadata !DIExpression()), !dbg !2595
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %22) #7, !dbg !2812
  br i1 %cleanup.dest.slot.2, label %for.inc209, label %for.end211

for.inc209:                                       ; preds = %if.end107, %cleanup203, %cleanup156
  %success.3 = phi i32 [ %call83, %if.end107 ], [ %call117, %cleanup156 ], [ %success.1, %cleanup203 ], !dbg !2813
  call void @llvm.dbg.value(metadata i32 %success.3, metadata !2560, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 1, metadata !2559, metadata !DIExpression()), !dbg !2595
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2814
  call void @llvm.dbg.value(metadata i32 undef, metadata !2557, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2595
  br label %for.cond71, !dbg !2815, !llvm.loop !2816

for.end211:                                       ; preds = %if.end107, %cleanup203, %cleanup156, %for.cond71
  %success.4 = phi i32 [ %call117, %cleanup156 ], [ %success.1, %cleanup203 ], [ %success.0, %for.cond71 ], [ 0, %if.end107 ], !dbg !2595
  call void @llvm.dbg.value(metadata i32 %success.4, metadata !2560, metadata !DIExpression()), !dbg !2595
  br i1 %is_java_array.1, label %if.then213, label %if.else214, !dbg !2818

if.then213:                                       ; preds = %for.end211
  call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i64 0, i64 0)) #8, !dbg !2819
  br label %if.end222, !dbg !2822

if.else214:                                       ; preds = %for.end211
  %p215 = getelementptr inbounds %struct.string, %struct.string* %tname, i64 0, i32 1, !dbg !2823
  %56 = load i8*, i8** %p215, align 8, !dbg !2823
  %arrayidx216 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !2826
  %57 = load i8, i8* %arrayidx216, align 1, !dbg !2826
  %cmp218 = icmp eq i8 %57, 62, !dbg !2827
  br i1 %cmp218, label %if.then220, label %if.end221, !dbg !2828

if.then220:                                       ; preds = %if.else214
  call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !2829
  br label %if.end221, !dbg !2829

if.end221:                                        ; preds = %if.then220, %if.else214
  call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #8, !dbg !2830
  br label %if.end222

if.end222:                                        ; preds = %if.end221, %if.then213
  %tobool225 = icmp ne i32 %remember, 0, !dbg !2831
  %or.cond = and i1 %tobool175, %tobool225, !dbg !2832
  br i1 %or.cond, label %if.then226, label %cleanup240, !dbg !2832

if.then226:                                       ; preds = %if.end222
  %call227 = call fastcc i32 @register_Btype(%struct.work_stuff* %work) #8, !dbg !2833
  call void @llvm.dbg.value(metadata i32 %call227, metadata !2592, metadata !DIExpression()), !dbg !2834
  %b228 = getelementptr inbounds %struct.string, %struct.string* %tname, i64 0, i32 0, !dbg !2835
  %58 = load i8*, i8** %b228, align 8, !dbg !2835
  %p230 = getelementptr inbounds %struct.string, %struct.string* %tname, i64 0, i32 1, !dbg !2836
  %59 = load i8*, i8** %p230, align 8, !dbg !2836
  %cmp231 = icmp eq i8* %58, %59, !dbg !2836
  br i1 %cmp231, label %cond.end, label %cond.false, !dbg !2836

cond.false:                                       ; preds = %if.then226
  %60 = ptrtoint i8* %58 to i64, !dbg !2836
  %61 = ptrtoint i8* %59 to i64, !dbg !2836
  %sub.ptr.sub237 = sub i64 %61, %60, !dbg !2836
  %phitmp = trunc i64 %sub.ptr.sub237 to i32, !dbg !2836
  br label %cond.end, !dbg !2836

cond.end:                                         ; preds = %if.then226, %cond.false
  %cond = phi i32 [ %phitmp, %cond.false ], [ 0, %if.then226 ]
  call fastcc void @remember_Btype(%struct.work_stuff* %work, i8* %58, i32 %cond, i32 %call227) #8, !dbg !2837
  br label %cleanup240, !dbg !2838

cleanup240:                                       ; preds = %if.end54, %if.end222, %cond.end, %if.else29, %lor.lhs.false33, %cleanup
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %lor.lhs.false33 ], [ 0, %if.else29 ], [ 0, %if.end54 ], [ %success.4, %cond.end ], [ %success.4, %if.end222 ], !dbg !2595
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2839
  ret i32 %retval.1, !dbg !2839
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @consume_count(i8** %type) unnamed_addr #5 !dbg !2840 {
entry:
  call void @llvm.dbg.value(metadata i8** %type, metadata !2844, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i32 0, metadata !2845, metadata !DIExpression()), !dbg !2846
  %0 = load i8*, i8** %type, align 8, !dbg !2847
  %1 = load i8, i8* %0, align 1, !dbg !2847
  %idxprom = zext i8 %1 to i64, !dbg !2847
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2847
  %2 = load i16, i16* %arrayidx, align 2, !dbg !2847
  %3 = and i16 %2, 4, !dbg !2847
  %tobool = icmp eq i16 %3, 0, !dbg !2847
  br i1 %tobool, label %cleanup, label %while.cond.preheader, !dbg !2849

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !2850

while.cond:                                       ; preds = %while.cond.preheader, %if.end21
  %4 = phi i16 [ %.pre2, %if.end21 ], [ %2, %while.cond.preheader ], !dbg !2851
  %5 = phi i8 [ %.pre, %if.end21 ], [ %1, %while.cond.preheader ], !dbg !2851
  %6 = phi i8* [ %incdec.ptr23, %if.end21 ], [ %0, %while.cond.preheader ], !dbg !2851
  %count.0 = phi i32 [ %add, %if.end21 ], [ 0, %while.cond.preheader ], !dbg !2846
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !2845, metadata !DIExpression()), !dbg !2846
  %7 = and i16 %4, 4, !dbg !2851
  %tobool9 = icmp eq i16 %7, 0, !dbg !2850
  br i1 %tobool9, label %while.end24, label %while.body, !dbg !2850

while.body:                                       ; preds = %while.cond
  %mul = mul nsw i32 %count.0, 10, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2845, metadata !DIExpression()), !dbg !2846
  %rem = srem i32 %mul, 10, !dbg !2854
  %cmp = icmp eq i32 %rem, 0, !dbg !2856
  br i1 %cmp, label %if.end21, label %while.cond12.preheader, !dbg !2857

while.cond12.preheader:                           ; preds = %while.body
  %.lcssa12 = phi i16 [ %4, %while.body ], !dbg !2851
  %.lcssa10 = phi i8* [ %6, %while.body ], !dbg !2851
  br label %while.cond12, !dbg !2858

while.cond12:                                     ; preds = %while.cond12.preheader, %while.body20
  %8 = phi i16 [ %.lcssa12, %while.cond12.preheader ], [ %.pre4, %while.body20 ], !dbg !2860
  %9 = phi i8* [ %.lcssa10, %while.cond12.preheader ], [ %incdec.ptr, %while.body20 ], !dbg !2860
  %10 = and i16 %8, 4, !dbg !2860
  %tobool19 = icmp eq i16 %10, 0, !dbg !2858
  br i1 %tobool19, label %cleanup.loopexit, label %while.body20, !dbg !2858

while.body20:                                     ; preds = %while.cond12
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i64 1, !dbg !2861
  store i8* %incdec.ptr, i8** %type, align 8, !dbg !2861
  %.pre3 = load i8, i8* %incdec.ptr, align 1, !dbg !2860
  %idxprom15.phi.trans.insert = zext i8 %.pre3 to i64, !dbg !2862
  %arrayidx16.phi.trans.insert = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom15.phi.trans.insert, !dbg !2862
  %.pre4 = load i16, i16* %arrayidx16.phi.trans.insert, align 2, !dbg !2860
  br label %while.cond12, !dbg !2858, !llvm.loop !2863

if.end21:                                         ; preds = %while.body
  %conv22 = sext i8 %5 to i32, !dbg !2864
  %sub = add nsw i32 %conv22, -48, !dbg !2865
  %add = add nsw i32 %mul, %sub, !dbg !2866
  call void @llvm.dbg.value(metadata i32 %add, metadata !2845, metadata !DIExpression()), !dbg !2846
  %incdec.ptr23 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2867
  store i8* %incdec.ptr23, i8** %type, align 8, !dbg !2867
  %.pre = load i8, i8* %incdec.ptr23, align 1, !dbg !2851
  %idxprom5.phi.trans.insert = zext i8 %.pre to i64, !dbg !2846
  %arrayidx6.phi.trans.insert = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom5.phi.trans.insert, !dbg !2846
  %.pre2 = load i16, i16* %arrayidx6.phi.trans.insert, align 2, !dbg !2851
  br label %while.cond, !dbg !2850, !llvm.loop !2868

while.end24:                                      ; preds = %while.cond
  %count.0.lcssa = phi i32 [ %count.0, %while.cond ], !dbg !2846
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2845, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2845, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2845, metadata !DIExpression()), !dbg !2846
  %cmp25 = icmp sgt i32 %count.0.lcssa, -1, !dbg !2870
  %spec.select = select i1 %cmp25, i32 %count.0.lcssa, i32 -1, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2845, metadata !DIExpression()), !dbg !2846
  br label %cleanup, !dbg !2873

cleanup.loopexit:                                 ; preds = %while.cond12
  br label %cleanup, !dbg !2874

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %while.end24
  %retval.0 = phi i32 [ %spec.select, %while.end24 ], [ -1, %entry ], [ -1, %cleanup.loopexit ], !dbg !2846
  ret i32 %retval.0, !dbg !2874
}

declare dso_local i64 @strcspn(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @string_appendn(%struct.string* %p, i8* %s, i32 %n) unnamed_addr #5 !dbg !2875 {
entry:
  call void @llvm.dbg.value(metadata %struct.string* %p, metadata !2879, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %s, metadata !2880, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 %n, metadata !2881, metadata !DIExpression()), !dbg !2882
  %cmp = icmp eq i32 %n, 0, !dbg !2883
  br i1 %cmp, label %if.end, label %if.then, !dbg !2885

if.then:                                          ; preds = %entry
  tail call fastcc void @string_need(%struct.string* %p, i32 %n) #8, !dbg !2886
  %p1 = getelementptr inbounds %struct.string, %struct.string* %p, i64 0, i32 1, !dbg !2888
  %0 = load i8*, i8** %p1, align 8, !dbg !2888
  %conv = sext i32 %n to i64, !dbg !2889
  %call = tail call i8* @memcpy(i8* %0, i8* %s, i64 %conv) #6, !dbg !2890
  %1 = load i8*, i8** %p1, align 8, !dbg !2891
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %conv, !dbg !2891
  store i8* %add.ptr, i8** %p1, align 8, !dbg !2891
  br label %if.end, !dbg !2892

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2893
}

declare dso_local i8* @strpbrk(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @string_append(%struct.string* %p, i8* %s) unnamed_addr #5 !dbg !2894 {
entry:
  call void @llvm.dbg.value(metadata %struct.string* %p, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i8* %s, metadata !2897, metadata !DIExpression()), !dbg !2899
  %cmp = icmp eq i8* %s, null, !dbg !2900
  br i1 %cmp, label %cleanup.cont, label %lor.lhs.false, !dbg !2902

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %s, align 1, !dbg !2903
  %cmp1 = icmp eq i8 %0, 0, !dbg !2904
  br i1 %cmp1, label %cleanup.cont, label %if.end, !dbg !2905

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i64 @strlen(i8* nonnull %s) #6, !dbg !2906
  %conv3 = trunc i64 %call to i32, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %conv3, metadata !2898, metadata !DIExpression()), !dbg !2899
  tail call fastcc void @string_need(%struct.string* %p, i32 %conv3) #8, !dbg !2907
  %p4 = getelementptr inbounds %struct.string, %struct.string* %p, i64 0, i32 1, !dbg !2908
  %1 = load i8*, i8** %p4, align 8, !dbg !2908
  %sext = shl i64 %call, 32, !dbg !2909
  %conv5 = ashr exact i64 %sext, 32, !dbg !2909
  %call6 = tail call i8* @memcpy(i8* %1, i8* nonnull %s, i64 %conv5) #6, !dbg !2910
  %2 = load i8*, i8** %p4, align 8, !dbg !2911
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %conv5, !dbg !2911
  store i8* %add.ptr, i8** %p4, align 8, !dbg !2911
  br label %cleanup.cont, !dbg !2912

cleanup.cont:                                     ; preds = %if.end, %lor.lhs.false, %entry
  ret void, !dbg !2912
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @register_Btype(%struct.work_stuff* %work) unnamed_addr #5 !dbg !2913 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !2917, metadata !DIExpression()), !dbg !2919
  %numb = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 5, !dbg !2920
  %0 = load i32, i32* %numb, align 4, !dbg !2920
  %bsize = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 7, !dbg !2922
  %1 = load i32, i32* %bsize, align 4, !dbg !2922
  %cmp = icmp slt i32 %0, %1, !dbg !2923
  br i1 %cmp, label %entry.if.end14_crit_edge, label %if.then, !dbg !2924

entry.if.end14_crit_edge:                         ; preds = %entry
  %btypevec16.phi.trans.insert = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 3, !dbg !2919
  %.pre = load i8**, i8*** %btypevec16.phi.trans.insert, align 8, !dbg !2925
  br label %if.end14, !dbg !2924

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %1, 0, !dbg !2926
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !2929

if.then3:                                         ; preds = %if.then
  store i32 5, i32* %bsize, align 4, !dbg !2930
  %call = tail call i8* @xmalloc(i64 40) #6, !dbg !2932
  %btypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 3, !dbg !2933
  %2 = bitcast i8*** %btypevec to i8**, !dbg !2934
  store i8* %call, i8** %2, align 8, !dbg !2934
  %3 = bitcast i8* %call to i8**, !dbg !2935
  br label %if.end14, !dbg !2935

if.else:                                          ; preds = %if.then
  %mul7 = shl nsw i32 %1, 1, !dbg !2936
  store i32 %mul7, i32* %bsize, align 4, !dbg !2936
  %btypevec8 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 3, !dbg !2938
  %4 = bitcast i8*** %btypevec8 to i8**, !dbg !2938
  %5 = load i8*, i8** %4, align 8, !dbg !2938
  %conv10 = sext i32 %mul7 to i64, !dbg !2938
  %mul11 = shl nsw i64 %conv10, 3, !dbg !2938
  %call12 = tail call i8* @xrealloc(i8* %5, i64 %mul11) #6, !dbg !2938
  store i8* %call12, i8** %4, align 8, !dbg !2939
  %6 = bitcast i8* %call12 to i8**
  br label %if.end14

if.end14:                                         ; preds = %entry.if.end14_crit_edge, %if.then3, %if.else
  %7 = phi i8** [ %.pre, %entry.if.end14_crit_edge ], [ %3, %if.then3 ], [ %6, %if.else ], !dbg !2925
  %8 = load i32, i32* %numb, align 4, !dbg !2940
  %inc = add nsw i32 %8, 1, !dbg !2940
  store i32 %inc, i32* %numb, align 4, !dbg !2940
  call void @llvm.dbg.value(metadata i32 %8, metadata !2918, metadata !DIExpression()), !dbg !2919
  %idxprom = sext i32 %8 to i64, !dbg !2941
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom, !dbg !2941
  store i8* null, i8** %arrayidx, align 8, !dbg !2942
  ret i32 %8, !dbg !2943
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @consume_count_with_underscores(i8** %mangled) unnamed_addr #5 !dbg !2944 {
entry:
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !2946, metadata !DIExpression()), !dbg !2948
  %0 = load i8*, i8** %mangled, align 8, !dbg !2949
  %1 = load i8, i8* %0, align 1, !dbg !2951
  %cmp = icmp eq i8 %1, 95, !dbg !2952
  br i1 %cmp, label %if.then, label %if.else, !dbg !2953

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2954
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !2954
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !2956
  %idxprom = zext i8 %2 to i64, !dbg !2956
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2956
  %3 = load i16, i16* %arrayidx, align 2, !dbg !2956
  %4 = and i16 %3, 4, !dbg !2956
  %tobool = icmp eq i16 %4, 0, !dbg !2956
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2958

if.end:                                           ; preds = %if.then
  %call = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !2959
  call void @llvm.dbg.value(metadata i32 %call, metadata !2947, metadata !DIExpression()), !dbg !2948
  %5 = load i8*, i8** %mangled, align 8, !dbg !2960
  %6 = load i8, i8* %5, align 1, !dbg !2962
  %cmp7 = icmp eq i8 %6, 95, !dbg !2963
  br i1 %cmp7, label %if.end10, label %cleanup, !dbg !2964

if.end10:                                         ; preds = %if.end
  %incdec.ptr11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2965
  store i8* %incdec.ptr11, i8** %mangled, align 8, !dbg !2965
  br label %cleanup, !dbg !2966

if.else:                                          ; preds = %entry
  %cmp13 = icmp slt i8 %1, 48, !dbg !2967
  br i1 %cmp13, label %cleanup, label %lor.lhs.false, !dbg !2970

lor.lhs.false:                                    ; preds = %if.else
  %cmp16 = icmp sgt i8 %1, 57, !dbg !2971
  br i1 %cmp16, label %cleanup, label %if.end19, !dbg !2972

if.end19:                                         ; preds = %lor.lhs.false
  %conv20 = sext i8 %1 to i32, !dbg !2973
  %sub = add nsw i32 %conv20, -48, !dbg !2974
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2947, metadata !DIExpression()), !dbg !2948
  %incdec.ptr21 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2975
  store i8* %incdec.ptr21, i8** %mangled, align 8, !dbg !2975
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %if.end10, %if.end19, %if.else, %lor.lhs.false
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %if.else ], [ %call, %if.end10 ], [ %sub, %if.end19 ], !dbg !2948
  ret i32 %retval.0, !dbg !2976
}

; Function Attrs: nounwind uwtable
define internal fastcc void @string_clear(%struct.string* %s) unnamed_addr #5 !dbg !2977 {
entry:
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !2979, metadata !DIExpression()), !dbg !2980
  %0 = bitcast %struct.string* %s to i64*, !dbg !2981
  %1 = load i64, i64* %0, align 8, !dbg !2981
  %p = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 1, !dbg !2982
  %2 = bitcast i8** %p to i64*, !dbg !2983
  store i64 %1, i64* %2, align 8, !dbg !2983
  ret void, !dbg !2984
}

; Function Attrs: nounwind uwtable
define internal fastcc void @recursively_demangle(%struct.work_stuff* %work, i8** %mangled, %struct.string* %result, i32 %namelength) unnamed_addr #5 !dbg !2985 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !2989, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !2990, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata %struct.string* %result, metadata !2991, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i32 %namelength, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* null, metadata !2993, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* null, metadata !2994, metadata !DIExpression()), !dbg !2995
  %add = add nsw i32 %namelength, 1, !dbg !2996
  %conv = sext i32 %add to i64, !dbg !2996
  %call = tail call i8* @xmalloc(i64 %conv) #6, !dbg !2996
  call void @llvm.dbg.value(metadata i8* %call, metadata !2993, metadata !DIExpression()), !dbg !2995
  %0 = load i8*, i8** %mangled, align 8, !dbg !2997
  %conv1 = sext i32 %namelength to i64, !dbg !2998
  %call2 = tail call i8* @memcpy(i8* %call, i8* %0, i64 %conv1) #6, !dbg !2999
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %conv1, !dbg !3000
  store i8 0, i8* %arrayidx, align 1, !dbg !3001
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !3002
  %1 = load i32, i32* %options, align 8, !dbg !3002
  %call3 = tail call i8* @cplus_demangle(i8* %call, i32 %1) #8, !dbg !3003
  call void @llvm.dbg.value(metadata i8* %call3, metadata !2994, metadata !DIExpression()), !dbg !2995
  %tobool = icmp eq i8* %call3, null, !dbg !3004
  br i1 %tobool, label %if.else, label %if.then, !dbg !3006

if.then:                                          ; preds = %entry
  tail call fastcc void @string_append(%struct.string* %result, i8* nonnull %call3) #8, !dbg !3007
  tail call void @free(i8* nonnull %call3) #6, !dbg !3009
  br label %if.end, !dbg !3010

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %mangled, align 8, !dbg !3011
  tail call fastcc void @string_appendn(%struct.string* %result, i8* %2, i32 %namelength) #8, !dbg !3013
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @free(i8* %call) #6, !dbg !3014
  %3 = load i8*, i8** %mangled, align 8, !dbg !3015
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %conv1, !dbg !3015
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !3015
  ret void, !dbg !3016
}

; Function Attrs: nounwind uwtable
define internal fastcc void @string_appends(%struct.string* %p, %struct.string* %s) unnamed_addr #5 !dbg !3017 {
entry:
  call void @llvm.dbg.value(metadata %struct.string* %p, metadata !3021, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !3022, metadata !DIExpression()), !dbg !3024
  %b = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 0, !dbg !3025
  %0 = load i8*, i8** %b, align 8, !dbg !3025
  %p1 = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 1, !dbg !3027
  %1 = load i8*, i8** %p1, align 8, !dbg !3027
  %cmp = icmp eq i8* %0, %1, !dbg !3028
  br i1 %cmp, label %if.end, label %if.then, !dbg !3029

if.then:                                          ; preds = %entry
  %2 = ptrtoint i8* %0 to i64, !dbg !3029
  %3 = ptrtoint i8* %1 to i64, !dbg !3029
  %sub.ptr.sub = sub i64 %3, %2, !dbg !3030
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !3032
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3023, metadata !DIExpression()), !dbg !3024
  tail call fastcc void @string_need(%struct.string* %p, i32 %conv) #8, !dbg !3033
  %p4 = getelementptr inbounds %struct.string, %struct.string* %p, i64 0, i32 1, !dbg !3034
  %4 = load i8*, i8** %p4, align 8, !dbg !3034
  %5 = load i8*, i8** %b, align 8, !dbg !3035
  %sext = shl i64 %sub.ptr.sub, 32, !dbg !3036
  %conv6 = ashr exact i64 %sext, 32, !dbg !3036
  %call = tail call i8* @memcpy(i8* %4, i8* %5, i64 %conv6) #6, !dbg !3037
  %6 = load i8*, i8** %p4, align 8, !dbg !3038
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %conv6, !dbg !3038
  store i8* %add.ptr, i8** %p4, align 8, !dbg !3038
  br label %if.end, !dbg !3039

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3040
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remember_Ktype(%struct.work_stuff* %work, i8* %start, i32 %len) unnamed_addr #5 !dbg !3041 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !3045, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i8* %start, metadata !3046, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i32 %len, metadata !3047, metadata !DIExpression()), !dbg !3049
  %numk = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 4, !dbg !3050
  %0 = load i32, i32* %numk, align 8, !dbg !3050
  %ksize = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 6, !dbg !3052
  %1 = load i32, i32* %ksize, align 8, !dbg !3052
  %cmp = icmp slt i32 %0, %1, !dbg !3053
  br i1 %cmp, label %if.end14, label %if.then, !dbg !3054

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %1, 0, !dbg !3055
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !3058

if.then3:                                         ; preds = %if.then
  store i32 5, i32* %ksize, align 8, !dbg !3059
  %call = tail call i8* @xmalloc(i64 40) #6, !dbg !3061
  %ktypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 2, !dbg !3062
  %2 = bitcast i8*** %ktypevec to i8**, !dbg !3063
  store i8* %call, i8** %2, align 8, !dbg !3063
  br label %if.end14, !dbg !3064

if.else:                                          ; preds = %if.then
  %mul7 = shl nsw i32 %1, 1, !dbg !3065
  store i32 %mul7, i32* %ksize, align 8, !dbg !3065
  %ktypevec8 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 2, !dbg !3067
  %3 = bitcast i8*** %ktypevec8 to i8**, !dbg !3067
  %4 = load i8*, i8** %3, align 8, !dbg !3067
  %conv10 = sext i32 %mul7 to i64, !dbg !3067
  %mul11 = shl nsw i64 %conv10, 3, !dbg !3067
  %call12 = tail call i8* @xrealloc(i8* %4, i64 %mul11) #6, !dbg !3067
  store i8* %call12, i8** %3, align 8, !dbg !3068
  br label %if.end14

if.end14:                                         ; preds = %entry, %if.then3, %if.else
  %add = add nsw i32 %len, 1, !dbg !3069
  %conv15 = sext i32 %add to i64, !dbg !3069
  %call17 = tail call i8* @xmalloc(i64 %conv15) #6, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %call17, metadata !3048, metadata !DIExpression()), !dbg !3049
  %conv18 = sext i32 %len to i64, !dbg !3070
  %call19 = tail call i8* @memcpy(i8* %call17, i8* %start, i64 %conv18) #6, !dbg !3071
  %arrayidx = getelementptr inbounds i8, i8* %call17, i64 %conv18, !dbg !3072
  store i8 0, i8* %arrayidx, align 1, !dbg !3073
  %ktypevec20 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 2, !dbg !3074
  %5 = load i8**, i8*** %ktypevec20, align 8, !dbg !3074
  %6 = load i32, i32* %numk, align 8, !dbg !3075
  %inc = add nsw i32 %6, 1, !dbg !3075
  store i32 %inc, i32* %numk, align 8, !dbg !3075
  %idxprom22 = sext i32 %6 to i64, !dbg !3076
  %arrayidx23 = getelementptr inbounds i8*, i8** %5, i64 %idxprom22, !dbg !3076
  store i8* %call17, i8** %arrayidx23, align 8, !dbg !3077
  ret void, !dbg !3078
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remember_Btype(%struct.work_stuff* %work, i8* %start, i32 %len, i32 %index) unnamed_addr #5 !dbg !3079 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !3083, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8* %start, metadata !3084, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i32 %len, metadata !3085, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i32 %index, metadata !3086, metadata !DIExpression()), !dbg !3088
  %add = add nsw i32 %len, 1, !dbg !3089
  %conv = sext i32 %add to i64, !dbg !3089
  %call = tail call i8* @xmalloc(i64 %conv) #6, !dbg !3089
  call void @llvm.dbg.value(metadata i8* %call, metadata !3087, metadata !DIExpression()), !dbg !3088
  %conv1 = sext i32 %len to i64, !dbg !3090
  %call2 = tail call i8* @memcpy(i8* %call, i8* %start, i64 %conv1) #6, !dbg !3091
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %conv1, !dbg !3092
  store i8 0, i8* %arrayidx, align 1, !dbg !3093
  %btypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 3, !dbg !3094
  %0 = load i8**, i8*** %btypevec, align 8, !dbg !3094
  %idxprom3 = sext i32 %index to i64, !dbg !3095
  %arrayidx4 = getelementptr inbounds i8*, i8** %0, i64 %idxprom3, !dbg !3095
  store i8* %call, i8** %arrayidx4, align 8, !dbg !3096
  ret void, !dbg !3097
}

; Function Attrs: nounwind uwtable
define internal fastcc void @string_prepends(%struct.string* %p, %struct.string* %s) unnamed_addr #5 !dbg !3098 {
entry:
  call void @llvm.dbg.value(metadata %struct.string* %p, metadata !3100, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !3101, metadata !DIExpression()), !dbg !3102
  %b = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 0, !dbg !3103
  %0 = load i8*, i8** %b, align 8, !dbg !3103
  %p1 = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 1, !dbg !3105
  %1 = load i8*, i8** %p1, align 8, !dbg !3105
  %cmp = icmp eq i8* %0, %1, !dbg !3106
  br i1 %cmp, label %if.end, label %if.then, !dbg !3107

if.then:                                          ; preds = %entry
  %2 = ptrtoint i8* %1 to i64, !dbg !3107
  %.cast = ptrtoint i8* %0 to i64, !dbg !3108
  %sub.ptr.sub = sub i64 %2, %.cast, !dbg !3110
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !3111
  tail call fastcc void @string_prependn(%struct.string* %p, i8* %0, i32 %conv) #8, !dbg !3112
  br label %if.end, !dbg !3113

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3114
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @string_need(%struct.string* %s, i32 %n) unnamed_addr #5 !dbg !3115 {
entry:
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %n, metadata !3120, metadata !DIExpression()), !dbg !3122
  %b = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 0, !dbg !3123
  %0 = load i8*, i8** %b, align 8, !dbg !3123
  %cmp = icmp eq i8* %0, null, !dbg !3125
  %1 = ptrtoint i8* %0 to i64, !dbg !3126
  br i1 %cmp, label %if.then, label %if.else, !dbg !3126

if.then:                                          ; preds = %entry
  %2 = icmp sgt i32 %n, 32, !dbg !3127
  %spec.select = select i1 %2, i32 %n, i32 32, !dbg !3127
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3120, metadata !DIExpression()), !dbg !3122
  %conv = zext i32 %spec.select to i64, !dbg !3129
  %call = tail call i8* @xmalloc(i64 %conv) #6, !dbg !3129
  store i8* %call, i8** %b, align 8, !dbg !3130
  %p = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 1, !dbg !3131
  store i8* %call, i8** %p, align 8, !dbg !3132
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %conv, !dbg !3133
  %e = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 2, !dbg !3134
  store i8* %add.ptr, i8** %e, align 8, !dbg !3135
  br label %if.end32, !dbg !3136

if.else:                                          ; preds = %entry
  %e5 = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 2, !dbg !3137
  %3 = bitcast i8** %e5 to i64*, !dbg !3137
  %4 = load i64, i64* %3, align 8, !dbg !3137
  %p6 = getelementptr inbounds %struct.string, %struct.string* %s, i64 0, i32 1, !dbg !3139
  %5 = bitcast i8** %p6 to i64*, !dbg !3139
  %6 = load i64, i64* %5, align 8, !dbg !3139
  %sub.ptr.sub = sub i64 %4, %6, !dbg !3140
  %conv7 = sext i32 %n to i64, !dbg !3141
  %cmp8 = icmp slt i64 %sub.ptr.sub, %conv7, !dbg !3142
  br i1 %cmp8, label %if.then10, label %if.end32, !dbg !3143

if.then10:                                        ; preds = %if.else
  %sub.ptr.sub15 = sub i64 %6, %1, !dbg !3144
  %conv16 = trunc i64 %sub.ptr.sub15 to i32, !dbg !3146
  call void @llvm.dbg.value(metadata i32 %conv16, metadata !3121, metadata !DIExpression()), !dbg !3122
  %add = add nsw i32 %conv16, %n, !dbg !3147
  call void @llvm.dbg.value(metadata i32 %add, metadata !3120, metadata !DIExpression()), !dbg !3122
  %mul17 = shl nsw i32 %add, 1, !dbg !3148
  call void @llvm.dbg.value(metadata i32 %mul17, metadata !3120, metadata !DIExpression()), !dbg !3122
  %conv19 = sext i32 %mul17 to i64, !dbg !3149
  %call21 = tail call i8* @xrealloc(i8* nonnull %0, i64 %conv19) #6, !dbg !3149
  store i8* %call21, i8** %b, align 8, !dbg !3150
  %sext = shl i64 %sub.ptr.sub15, 32, !dbg !3151
  %idx.ext24 = ashr exact i64 %sext, 32, !dbg !3151
  %add.ptr25 = getelementptr inbounds i8, i8* %call21, i64 %idx.ext24, !dbg !3151
  store i8* %add.ptr25, i8** %p6, align 8, !dbg !3152
  %add.ptr29 = getelementptr inbounds i8, i8* %call21, i64 %conv19, !dbg !3153
  store i8* %add.ptr29, i8** %e5, align 8, !dbg !3154
  br label %if.end32, !dbg !3155

if.end32:                                         ; preds = %if.else, %if.then10, %if.then
  ret void, !dbg !3156
}

; Function Attrs: nounwind uwtable
define internal fastcc void @string_prependn(%struct.string* %p, i8* %s, i32 %n) unnamed_addr #5 !dbg !3157 {
entry:
  call void @llvm.dbg.value(metadata %struct.string* %p, metadata !3159, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* %s, metadata !3160, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i32 %n, metadata !3161, metadata !DIExpression()), !dbg !3163
  %cmp = icmp eq i32 %n, 0, !dbg !3164
  br i1 %cmp, label %if.end, label %if.then, !dbg !3166

if.then:                                          ; preds = %entry
  tail call fastcc void @string_need(%struct.string* %p, i32 %n) #8, !dbg !3167
  %p1 = getelementptr inbounds %struct.string, %struct.string* %p, i64 0, i32 1, !dbg !3169
  %0 = load i8*, i8** %p1, align 8, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %0, metadata !3162, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3163
  %b = getelementptr inbounds %struct.string, %struct.string* %p, i64 0, i32 0, !dbg !3171
  %idxprom = sext i32 %n to i64, !dbg !3173
  br label %for.cond, !dbg !3175

for.cond:                                         ; preds = %for.body, %if.then
  %.pn = phi i8* [ %0, %if.then ], [ %q.0, %for.body ]
  %q.0 = getelementptr inbounds i8, i8* %.pn, i64 -1, !dbg !3176
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !3162, metadata !DIExpression()), !dbg !3163
  %1 = load i8*, i8** %b, align 8, !dbg !3177
  %cmp2 = icmp ult i8* %q.0, %1, !dbg !3178
  br i1 %cmp2, label %for.end, label %for.body, !dbg !3179

for.body:                                         ; preds = %for.cond
  %2 = load i8, i8* %q.0, align 1, !dbg !3180
  %arrayidx3 = getelementptr inbounds i8, i8* %q.0, i64 %idxprom, !dbg !3181
  store i8 %2, i8* %arrayidx3, align 1, !dbg !3182
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !3162, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3163
  br label %for.cond, !dbg !3183, !llvm.loop !3184

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i8* [ %1, %for.cond ], !dbg !3177
  %call = tail call i8* @memcpy(i8* %.lcssa, i8* %s, i64 %idxprom) #6, !dbg !3186
  %3 = load i8*, i8** %p1, align 8, !dbg !3187
  %add.ptr6 = getelementptr inbounds i8, i8* %3, i64 %idxprom, !dbg !3187
  store i8* %add.ptr6, i8** %p1, align 8, !dbg !3187
  br label %if.end, !dbg !3188

if.end:                                           ; preds = %entry, %for.end
  ret void, !dbg !3189
}

; Function Attrs: nounwind uwtable
define internal fastcc void @string_append_template_idx(%struct.string* %s, i32 %idx) unnamed_addr #5 !dbg !3190 {
entry:
  %buf = alloca [33 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !3192, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %idx, metadata !3193, metadata !DIExpression()), !dbg !3198
  %0 = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i64 0, i64 0, !dbg !3199
  call void @llvm.lifetime.start.p0i8(i64 33, i8* nonnull %0) #7, !dbg !3199
  call void @llvm.dbg.declare(metadata [33 x i8]* %buf, metadata !3194, metadata !DIExpression()), !dbg !3200
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.199, i64 0, i64 0), i32 %idx) #6, !dbg !3201
  call fastcc void @string_append(%struct.string* %s, i8* nonnull %0) #8, !dbg !3202
  call void @llvm.lifetime.end.p0i8(i64 33, i8* nonnull %0) #7, !dbg !3203
  ret void, !dbg !3203
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_count(i8** %type, i32* %count) unnamed_addr #5 !dbg !3204 {
entry:
  call void @llvm.dbg.value(metadata i8** %type, metadata !3209, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32* %count, metadata !3210, metadata !DIExpression()), !dbg !3213
  %0 = load i8*, i8** %type, align 8, !dbg !3214
  %1 = load i8, i8* %0, align 1, !dbg !3214
  %idxprom = zext i8 %1 to i64, !dbg !3214
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !3214
  %2 = load i16, i16* %arrayidx, align 2, !dbg !3214
  %3 = and i16 %2, 4, !dbg !3214
  %tobool = icmp eq i16 %3, 0, !dbg !3214
  br i1 %tobool, label %cleanup, label %if.else, !dbg !3216

if.else:                                          ; preds = %entry
  %conv3 = sext i8 %1 to i32, !dbg !3217
  %sub = add nsw i32 %conv3, -48, !dbg !3219
  store i32 %sub, i32* %count, align 4, !dbg !3220
  %4 = load i8*, i8** %type, align 8, !dbg !3221
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !3221
  store i8* %incdec.ptr, i8** %type, align 8, !dbg !3221
  %5 = load i8, i8* %incdec.ptr, align 1, !dbg !3222
  %idxprom6 = zext i8 %5 to i64, !dbg !3222
  %arrayidx7 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom6, !dbg !3222
  %6 = load i16, i16* %arrayidx7, align 2, !dbg !3222
  %7 = and i16 %6, 4, !dbg !3222
  %tobool10 = icmp eq i16 %7, 0, !dbg !3222
  br i1 %tobool10, label %cleanup, label %if.then11, !dbg !3224

if.then11:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3211, metadata !DIExpression()), !dbg !3213
  %8 = load i32, i32* %count, align 4, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %8, metadata !3212, metadata !DIExpression()), !dbg !3213
  br label %do.body, !dbg !3227

do.body:                                          ; preds = %do.body, %if.then11
  %9 = phi i8 [ %5, %if.then11 ], [ %10, %do.body ], !dbg !3228
  %p.0 = phi i8* [ %incdec.ptr, %if.then11 ], [ %incdec.ptr14, %do.body ], !dbg !3230
  %n.0 = phi i32 [ %8, %if.then11 ], [ %add, %do.body ], !dbg !3230
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !3212, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !3211, metadata !DIExpression()), !dbg !3213
  %mul = mul nsw i32 %n.0, 10, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3212, metadata !DIExpression()), !dbg !3213
  %conv12 = sext i8 %9 to i32, !dbg !3228
  %sub13 = add nsw i32 %conv12, -48, !dbg !3232
  %add = add nsw i32 %mul, %sub13, !dbg !3233
  call void @llvm.dbg.value(metadata i32 %add, metadata !3212, metadata !DIExpression()), !dbg !3213
  %incdec.ptr14 = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %incdec.ptr14, metadata !3211, metadata !DIExpression()), !dbg !3213
  %10 = load i8, i8* %incdec.ptr14, align 1, !dbg !3235
  %idxprom17 = zext i8 %10 to i64, !dbg !3235
  %arrayidx18 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom17, !dbg !3235
  %11 = load i16, i16* %arrayidx18, align 2, !dbg !3235
  %12 = and i16 %11, 4, !dbg !3235
  %tobool21 = icmp eq i16 %12, 0, !dbg !3236
  br i1 %tobool21, label %do.end, label %do.body, !dbg !3236, !llvm.loop !3237

do.end:                                           ; preds = %do.body
  %p.0.lcssa = phi i8* [ %p.0, %do.body ], !dbg !3230
  %add.lcssa = phi i32 [ %add, %do.body ], !dbg !3233
  %.lcssa = phi i8 [ %10, %do.body ], !dbg !3235
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3211, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3211, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3211, metadata !DIExpression()), !dbg !3213
  %cmp = icmp eq i8 %.lcssa, 95, !dbg !3239
  br i1 %cmp, label %if.then24, label %cleanup, !dbg !3241

if.then24:                                        ; preds = %do.end
  %add.ptr = getelementptr inbounds i8, i8* %p.0.lcssa, i64 2, !dbg !3242
  store i8* %add.ptr, i8** %type, align 8, !dbg !3244
  store i32 %add.lcssa, i32* %count, align 4, !dbg !3245
  br label %cleanup, !dbg !3246

cleanup:                                          ; preds = %if.else, %entry, %do.end, %if.then24
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 1, %if.then24 ], [ 1, %do.end ], !dbg !3213
  ret i32 %retval.0, !dbg !3247
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_template_template_parm(%struct.work_stuff* %work, i8** %mangled, %struct.string* %tname) unnamed_addr #5 !dbg !3248 {
entry:
  %r = alloca i32, align 4
  %temp = alloca %struct.string, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !3250, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !3251, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata %struct.string* %tname, metadata !3252, metadata !DIExpression()), !dbg !3258
  %0 = bitcast i32* %r to i8*, !dbg !3259
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3259
  call void @llvm.dbg.value(metadata i32 0, metadata !3255, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 1, metadata !3256, metadata !DIExpression()), !dbg !3258
  %1 = bitcast %struct.string* %temp to i8*, !dbg !3260
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3260
  tail call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.200, i64 0, i64 0)) #8, !dbg !3261
  call void @llvm.dbg.value(metadata i32* %r, metadata !3254, metadata !DIExpression(DW_OP_deref)), !dbg !3258
  %call = call fastcc i32 @get_count(i8** %mangled, i32* nonnull %r) #8, !dbg !3262
  %tobool = icmp eq i32 %call, 0, !dbg !3262
  br i1 %tobool, label %if.end25, label %for.cond.preheader, !dbg !3264

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !3265

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !3268
  %need_comma.0 = phi i32 [ 1, %for.inc ], [ 0, %for.cond.preheader ], !dbg !3258
  %success.0 = phi i32 [ %success.2, %for.inc ], [ 1, %for.cond.preheader ], !dbg !3269
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !3256, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 %need_comma.0, metadata !3255, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3253, metadata !DIExpression()), !dbg !3258
  %2 = load i32, i32* %r, align 4, !dbg !3270
  call void @llvm.dbg.value(metadata i32 %2, metadata !3254, metadata !DIExpression()), !dbg !3258
  %cmp = icmp slt i32 %i.0, %2, !dbg !3272
  br i1 %cmp, label %for.body, label %if.end25.loopexit, !dbg !3265

for.body:                                         ; preds = %for.cond
  %tobool1 = icmp eq i32 %need_comma.0, 0, !dbg !3273
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !3276

if.then2:                                         ; preds = %for.body
  call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i64 0, i64 0)) #8, !dbg !3277
  br label %if.end, !dbg !3279

if.end:                                           ; preds = %for.body, %if.then2
  %3 = load i8*, i8** %mangled, align 8, !dbg !3280
  %4 = load i8, i8* %3, align 1, !dbg !3282
  %cmp3 = icmp eq i8 %4, 90, !dbg !3283
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !3284

if.then5:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3285
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !3285
  call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i64 0, i64 0)) #8, !dbg !3287
  br label %for.inc, !dbg !3288

if.else:                                          ; preds = %if.end
  %cmp7 = icmp eq i8 %4, 122, !dbg !3289
  br i1 %cmp7, label %if.then9, label %if.else15, !dbg !3291

if.then9:                                         ; preds = %if.else
  %incdec.ptr10 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3292
  store i8* %incdec.ptr10, i8** %mangled, align 8, !dbg !3292
  %call11 = call fastcc i32 @demangle_template_template_parm(%struct.work_stuff* %work, i8** %mangled, %struct.string* %tname) #8, !dbg !3294
  call void @llvm.dbg.value(metadata i32 %call11, metadata !3256, metadata !DIExpression()), !dbg !3258
  %tobool12 = icmp eq i32 %call11, 0, !dbg !3295
  br i1 %tobool12, label %if.end25.loopexit, label %for.inc, !dbg !3297

if.else15:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !3257, metadata !DIExpression(DW_OP_deref)), !dbg !3258
  %call16 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %temp) #8, !dbg !3298
  call void @llvm.dbg.value(metadata i32 %call16, metadata !3256, metadata !DIExpression()), !dbg !3258
  %tobool17 = icmp eq i32 %call16, 0, !dbg !3300
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !3302

if.then18:                                        ; preds = %if.else15
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !3257, metadata !DIExpression(DW_OP_deref)), !dbg !3258
  call fastcc void @string_appends(%struct.string* %tname, %struct.string* nonnull %temp) #8, !dbg !3303
  br label %if.end19, !dbg !3305

if.end19:                                         ; preds = %if.else15, %if.then18
  call void @llvm.dbg.value(metadata %struct.string* %temp, metadata !3257, metadata !DIExpression(DW_OP_deref)), !dbg !3258
  call fastcc void @string_delete(%struct.string* nonnull %temp) #8, !dbg !3306
  br i1 %tobool17, label %if.end25.loopexit, label %for.inc, !dbg !3307

for.inc:                                          ; preds = %if.then9, %if.end19, %if.then5
  %success.2 = phi i32 [ %success.0, %if.then5 ], [ %call11, %if.then9 ], [ %call16, %if.end19 ], !dbg !3258
  call void @llvm.dbg.value(metadata i32 %success.2, metadata !3256, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 1, metadata !3255, metadata !DIExpression()), !dbg !3258
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3308
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3253, metadata !DIExpression()), !dbg !3258
  br label %for.cond, !dbg !3309, !llvm.loop !3310

if.end25.loopexit:                                ; preds = %for.cond, %if.end19, %if.then9
  %success.4.ph = phi i32 [ 0, %if.end19 ], [ 0, %if.then9 ], [ %success.0, %for.cond ]
  br label %if.end25, !dbg !3312

if.end25:                                         ; preds = %if.end25.loopexit, %entry
  %success.4 = phi i32 [ 1, %entry ], [ %success.4.ph, %if.end25.loopexit ], !dbg !3258
  call void @llvm.dbg.value(metadata i32 %success.4, metadata !3256, metadata !DIExpression()), !dbg !3258
  %p = getelementptr inbounds %struct.string, %struct.string* %tname, i64 0, i32 1, !dbg !3312
  %5 = load i8*, i8** %p, align 8, !dbg !3312
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !3314
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3314
  %cmp27 = icmp eq i8 %6, 62, !dbg !3315
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !3316

if.then29:                                        ; preds = %if.end25
  call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !3317
  br label %if.end30, !dbg !3317

if.end30:                                         ; preds = %if.then29, %if.end25
  call fastcc void @string_append(%struct.string* %tname, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.202, i64 0, i64 0)) #8, !dbg !3318
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3319
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3319
  ret i32 %success.4, !dbg !3320
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_template_value_parm(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s, i32 %tk) unnamed_addr #5 !dbg !3321 {
entry:
  %tmp = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !3325, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !3326, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !3327, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 %tk, metadata !3328, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 1, metadata !3329, metadata !DIExpression()), !dbg !3351
  %0 = load i8*, i8** %mangled, align 8, !dbg !3352
  %1 = load i8, i8* %0, align 1, !dbg !3353
  %cmp = icmp eq i8 %1, 89, !dbg !3354
  br i1 %cmp, label %if.then, label %if.else16, !dbg !3355

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3356
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !3356
  %call = tail call fastcc i32 @consume_count_with_underscores(i8** %mangled) #8, !dbg !3357
  call void @llvm.dbg.value(metadata i32 %call, metadata !3330, metadata !DIExpression()), !dbg !3358
  %cmp2 = icmp eq i32 %call, -1, !dbg !3359
  br i1 %cmp2, label %cleanup, label %lor.lhs.false, !dbg !3361

lor.lhs.false:                                    ; preds = %if.then
  %tmpl_argvec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 16, !dbg !3362
  %2 = load i8**, i8*** %tmpl_argvec, align 8, !dbg !3362
  %tobool = icmp eq i8** %2, null, !dbg !3363
  br i1 %tobool, label %lor.lhs.false6, label %land.lhs.true, !dbg !3364

land.lhs.true:                                    ; preds = %lor.lhs.false
  %ntmpl_args = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 17, !dbg !3365
  %3 = load i32, i32* %ntmpl_args, align 8, !dbg !3365
  %cmp4 = icmp slt i32 %call, %3, !dbg !3366
  br i1 %cmp4, label %lor.lhs.false6, label %cleanup, !dbg !3367

lor.lhs.false6:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %call7 = tail call fastcc i32 @consume_count_with_underscores(i8** %mangled) #8, !dbg !3368
  %cmp8 = icmp eq i32 %call7, -1, !dbg !3369
  br i1 %cmp8, label %cleanup, label %if.end, !dbg !3370

if.end:                                           ; preds = %lor.lhs.false6
  %4 = load i8**, i8*** %tmpl_argvec, align 8, !dbg !3371
  %tobool12 = icmp eq i8** %4, null, !dbg !3373
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !3374

if.then13:                                        ; preds = %if.end
  %idxprom = sext i32 %call to i64, !dbg !3375
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom, !dbg !3375
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !3375
  tail call fastcc void @string_append(%struct.string* %s, i8* %5) #8, !dbg !3376
  br label %cleanup, !dbg !3376

if.else:                                          ; preds = %if.end
  tail call fastcc void @string_append_template_idx(%struct.string* %s, i32 %call) #8, !dbg !3377
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.then13, %if.else, %if.then, %lor.lhs.false6
  %cleanup.dest.slot.0 = phi i1 [ false, %lor.lhs.false6 ], [ false, %land.lhs.true ], [ false, %if.then ], [ true, %if.else ], [ true, %if.then13 ]
  br i1 %cleanup.dest.slot.0, label %if.end109, label %cleanup110

if.else16:                                        ; preds = %entry
  switch i32 %tk, label %if.end109 [
    i32 3, label %if.then19
    i32 5, label %if.then24
    i32 4, label %if.then44
    i32 6, label %if.then60
    i32 1, label %if.then68
    i32 2, label %if.then68
  ], !dbg !3378

if.then19:                                        ; preds = %if.else16
  %call20 = tail call fastcc i32 @demangle_integral_value(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s) #8, !dbg !3379
  call void @llvm.dbg.value(metadata i32 %call20, metadata !3329, metadata !DIExpression()), !dbg !3351
  br label %if.end109, !dbg !3380

if.then24:                                        ; preds = %if.else16
  %6 = getelementptr inbounds [2 x i8], [2 x i8]* %tmp, i64 0, i64 0, !dbg !3381
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %6) #7, !dbg !3381
  call void @llvm.dbg.declare(metadata [2 x i8]* %tmp, metadata !3333, metadata !DIExpression()), !dbg !3382
  %cmp26 = icmp eq i8 %1, 109, !dbg !3383
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !3385

if.then28:                                        ; preds = %if.then24
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i32 1) #8, !dbg !3386
  %7 = load i8*, i8** %mangled, align 8, !dbg !3388
  %incdec.ptr29 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3388
  store i8* %incdec.ptr29, i8** %mangled, align 8, !dbg !3388
  br label %if.end30, !dbg !3389

if.end30:                                         ; preds = %if.then28, %if.then24
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.203, i64 0, i64 0), i32 1) #8, !dbg !3390
  %call31 = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !3391
  call void @llvm.dbg.value(metadata i32 %call31, metadata !3337, metadata !DIExpression()), !dbg !3392
  %cmp32 = icmp slt i32 %call31, 1, !dbg !3393
  br i1 %cmp32, label %if.end40, label %if.else35, !dbg !3395

if.else35:                                        ; preds = %if.end30
  %conv36 = trunc i32 %call31 to i8, !dbg !3396
  store i8 %conv36, i8* %6, align 1, !dbg !3398
  %arrayidx38 = getelementptr inbounds [2 x i8], [2 x i8]* %tmp, i64 0, i64 1, !dbg !3399
  store i8 0, i8* %arrayidx38, align 1, !dbg !3400
  call fastcc void @string_appendn(%struct.string* %s, i8* nonnull %6, i32 1) #8, !dbg !3401
  call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.203, i64 0, i64 0), i32 1) #8, !dbg !3402
  br label %if.end40

if.end40:                                         ; preds = %if.end30, %if.else35
  %success.0 = phi i32 [ 1, %if.else35 ], [ 0, %if.end30 ], !dbg !3351
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !3329, metadata !DIExpression()), !dbg !3351
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %6) #7, !dbg !3403
  br label %if.end109, !dbg !3404

if.then44:                                        ; preds = %if.else16
  %call46 = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !3405
  call void @llvm.dbg.value(metadata i32 %call46, metadata !3338, metadata !DIExpression()), !dbg !3406
  switch i32 %call46, label %if.end109 [
    i32 0, label %if.then49
    i32 1, label %if.then53
  ], !dbg !3407

if.then49:                                        ; preds = %if.then44
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.204, i64 0, i64 0), i32 5) #8, !dbg !3408
  br label %if.end109, !dbg !3408

if.then53:                                        ; preds = %if.then44
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.205, i64 0, i64 0), i32 4) #8, !dbg !3410
  br label %if.end109, !dbg !3410

if.then60:                                        ; preds = %if.else16
  %call61 = tail call fastcc i32 @demangle_real_value(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s) #8, !dbg !3412
  call void @llvm.dbg.value(metadata i32 %call61, metadata !3329, metadata !DIExpression()), !dbg !3351
  br label %if.end109, !dbg !3413

if.then68:                                        ; preds = %if.else16, %if.else16
  %cmp70 = icmp eq i8 %1, 81, !dbg !3414
  br i1 %cmp70, label %if.then72, label %if.else74, !dbg !3415

if.then72:                                        ; preds = %if.then68
  %call73 = tail call fastcc i32 @demangle_qualified(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s, i32 0, i32 1) #8, !dbg !3416
  call void @llvm.dbg.value(metadata i32 %call73, metadata !3329, metadata !DIExpression()), !dbg !3351
  br label %if.end109, !dbg !3417

if.else74:                                        ; preds = %if.then68
  %call75 = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !3418
  call void @llvm.dbg.value(metadata i32 %call75, metadata !3341, metadata !DIExpression()), !dbg !3419
  switch i32 %call75, label %if.else83 [
    i32 -1, label %cleanup100
    i32 0, label %if.then82
  ], !dbg !3420

if.then82:                                        ; preds = %if.else74
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i64 0, i64 0), i32 1) #8, !dbg !3421
  br label %if.end99, !dbg !3421

if.else83:                                        ; preds = %if.else74
  %add = add nsw i32 %call75, 1, !dbg !3422
  %conv84 = sext i32 %add to i64, !dbg !3422
  %call85 = tail call i8* @xmalloc(i64 %conv84) #6, !dbg !3422
  call void @llvm.dbg.value(metadata i8* %call85, metadata !3347, metadata !DIExpression()), !dbg !3423
  %8 = load i8*, i8** %mangled, align 8, !dbg !3424
  %conv86 = sext i32 %call75 to i64, !dbg !3425
  %call87 = tail call i8* @strncpy(i8* %call85, i8* %8, i64 %conv86) #6, !dbg !3426
  %arrayidx89 = getelementptr inbounds i8, i8* %call85, i64 %conv86, !dbg !3427
  store i8 0, i8* %arrayidx89, align 1, !dbg !3428
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !3429
  %9 = load i32, i32* %options, align 8, !dbg !3429
  %call90 = tail call i8* @cplus_demangle(i8* %call85, i32 %9) #8, !dbg !3430
  call void @llvm.dbg.value(metadata i8* %call90, metadata !3350, metadata !DIExpression()), !dbg !3423
  %cmp91 = icmp eq i32 %tk, 1, !dbg !3431
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !3433

if.then93:                                        ; preds = %if.else83
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i32 1) #8, !dbg !3434
  br label %if.end94, !dbg !3434

if.end94:                                         ; preds = %if.then93, %if.else83
  %tobool95 = icmp eq i8* %call90, null, !dbg !3435
  br i1 %tobool95, label %if.else97, label %if.then96, !dbg !3437

if.then96:                                        ; preds = %if.end94
  tail call fastcc void @string_append(%struct.string* %s, i8* nonnull %call90) #8, !dbg !3438
  tail call void @free(i8* nonnull %call90) #6, !dbg !3440
  br label %if.end98, !dbg !3441

if.else97:                                        ; preds = %if.end94
  tail call fastcc void @string_append(%struct.string* %s, i8* %call85) #8, !dbg !3442
  br label %if.end98

if.end98:                                         ; preds = %if.else97, %if.then96
  tail call void @free(i8* %call85) #6, !dbg !3443
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then82
  %idx.ext.pre-phi = phi i64 [ %conv86, %if.end98 ], [ 0, %if.then82 ], !dbg !3444
  %10 = load i8*, i8** %mangled, align 8, !dbg !3444
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext.pre-phi, !dbg !3444
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !3444
  br label %cleanup100, !dbg !3445

cleanup100:                                       ; preds = %if.else74, %if.end99
  %cleanup.dest.slot.1 = phi i1 [ true, %if.end99 ], [ false, %if.else74 ]
  br i1 %cleanup.dest.slot.1, label %if.end109, label %cleanup110

if.end109:                                        ; preds = %if.then19, %if.then53, %if.then44, %if.then49, %if.else16, %cleanup100, %if.then72, %if.then60, %if.end40, %cleanup
  %success.9 = phi i32 [ 1, %cleanup ], [ %call20, %if.then19 ], [ %success.0, %if.end40 ], [ 1, %if.then49 ], [ 1, %if.then53 ], [ 0, %if.then44 ], [ %call61, %if.then60 ], [ 1, %if.else16 ], [ %call73, %if.then72 ], [ 1, %cleanup100 ], !dbg !3351
  call void @llvm.dbg.value(metadata i32 %success.9, metadata !3329, metadata !DIExpression()), !dbg !3351
  br label %cleanup110, !dbg !3446

cleanup110:                                       ; preds = %cleanup, %cleanup100, %if.end109
  %retval.2 = phi i32 [ -1, %cleanup ], [ %success.9, %if.end109 ], [ -1, %cleanup100 ], !dbg !3351
  ret i32 %retval.2, !dbg !3447
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_integral_value(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s) unnamed_addr #5 !dbg !3448 {
entry:
  %buf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !3450, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !3451, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !3452, metadata !DIExpression()), !dbg !3466
  %0 = load i8*, i8** %mangled, align 8, !dbg !3467
  %1 = load i8, i8* %0, align 1, !dbg !3468
  %cmp = icmp eq i8 %1, 69, !dbg !3469
  br i1 %cmp, label %if.then, label %if.else, !dbg !3470

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @demangle_expression(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s, i32 3) #8, !dbg !3471
  call void @llvm.dbg.value(metadata i32 %call, metadata !3453, metadata !DIExpression()), !dbg !3466
  br label %if.end52, !dbg !3472

if.else:                                          ; preds = %entry
  %cmp3 = icmp eq i8 %1, 81, !dbg !3473
  br i1 %cmp3, label %if.then8, label %lor.lhs.false, !dbg !3474

lor.lhs.false:                                    ; preds = %if.else
  %cmp6 = icmp eq i8 %1, 75, !dbg !3475
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !3476

if.then8:                                         ; preds = %lor.lhs.false, %if.else
  %call9 = tail call fastcc i32 @demangle_qualified(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s, i32 0, i32 1) #8, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %call9, metadata !3453, metadata !DIExpression()), !dbg !3466
  br label %if.end52, !dbg !3478

if.else10:                                        ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i32 0, metadata !3459, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i32 0, metadata !3453, metadata !DIExpression()), !dbg !3466
  %cmp12 = icmp eq i8 %1, 95, !dbg !3480
  br i1 %cmp12, label %if.then14, label %if.else21, !dbg !3482

if.then14:                                        ; preds = %if.else10
  %arrayidx15 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3483
  %2 = load i8, i8* %arrayidx15, align 1, !dbg !3483
  %cmp17 = icmp eq i8 %2, 109, !dbg !3486
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !3487

if.then19:                                        ; preds = %if.then14
  call void @llvm.dbg.value(metadata i32 1, metadata !3458, metadata !DIExpression()), !dbg !3479
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i32 1) #8, !dbg !3488
  %3 = load i8*, i8** %mangled, align 8, !dbg !3490
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 2, !dbg !3490
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !3490
  br label %if.end27, !dbg !3491

if.else21:                                        ; preds = %if.else10
  %cmp23 = icmp eq i8 %1, 109, !dbg !3492
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !3495

if.then25:                                        ; preds = %if.else21
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i32 1) #8, !dbg !3496
  %4 = load i8*, i8** %mangled, align 8, !dbg !3498
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !3498
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !3498
  br label %if.end27, !dbg !3499

if.end27:                                         ; preds = %if.else21, %if.then25, %if.then19, %if.then14
  %multidigit_without_leading_underscore.1 = phi i1 [ true, %if.then19 ], [ false, %if.then14 ], [ true, %if.then25 ], [ true, %if.else21 ]
  %leave_following_underscore.1 = phi i32 [ 0, %if.then19 ], [ 1, %if.then14 ], [ 1, %if.then25 ], [ 1, %if.else21 ], !dbg !3479
  call void @llvm.dbg.value(metadata i32 %leave_following_underscore.1, metadata !3459, metadata !DIExpression()), !dbg !3479
  br i1 %multidigit_without_leading_underscore.1, label %if.then28, label %if.else30, !dbg !3500

if.then28:                                        ; preds = %if.end27
  %call29 = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !3501
  call void @llvm.dbg.value(metadata i32 %call29, metadata !3454, metadata !DIExpression()), !dbg !3479
  br label %if.end32, !dbg !3503

if.else30:                                        ; preds = %if.end27
  %call31 = tail call fastcc i32 @consume_count_with_underscores(i8** %mangled) #8, !dbg !3504
  call void @llvm.dbg.value(metadata i32 %call31, metadata !3454, metadata !DIExpression()), !dbg !3479
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then28
  %value.0 = phi i32 [ %call29, %if.then28 ], [ %call31, %if.else30 ], !dbg !3505
  call void @llvm.dbg.value(metadata i32 %value.0, metadata !3454, metadata !DIExpression()), !dbg !3479
  %cmp33 = icmp eq i32 %value.0, -1, !dbg !3506
  br i1 %cmp33, label %if.end52, label %if.then35, !dbg !3507

if.then35:                                        ; preds = %if.end32
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3508
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !3508
  call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !3460, metadata !DIExpression()), !dbg !3509
  %call36 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i64 0, i64 0), i32 %value.0) #6, !dbg !3510
  call fastcc void @string_append(%struct.string* %s, i8* nonnull %5) #8, !dbg !3511
  %cmp38 = icmp sgt i32 %value.0, 9, !dbg !3512
  %or.cond = or i1 %cmp38, %multidigit_without_leading_underscore.1, !dbg !3514
  %or.cond.not = xor i1 %or.cond, true, !dbg !3514
  %tobool42 = icmp ne i32 %leave_following_underscore.1, 0, !dbg !3515
  %or.cond1 = or i1 %tobool42, %or.cond.not, !dbg !3514
  br i1 %or.cond1, label %if.end49, label %land.lhs.true43, !dbg !3514

land.lhs.true43:                                  ; preds = %if.then35
  %6 = load i8*, i8** %mangled, align 8, !dbg !3516
  %7 = load i8, i8* %6, align 1, !dbg !3517
  %cmp45 = icmp eq i8 %7, 95, !dbg !3518
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !3519

if.then47:                                        ; preds = %land.lhs.true43
  %incdec.ptr48 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3520
  store i8* %incdec.ptr48, i8** %mangled, align 8, !dbg !3520
  br label %if.end49, !dbg !3521

if.end49:                                         ; preds = %if.then35, %if.then47, %land.lhs.true43
  call void @llvm.dbg.value(metadata i32 1, metadata !3453, metadata !DIExpression()), !dbg !3466
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !3522
  br label %if.end52, !dbg !3523

if.end52:                                         ; preds = %if.end32, %if.then8, %if.end49, %if.then
  %success.2 = phi i32 [ %call, %if.then ], [ %call9, %if.then8 ], [ 1, %if.end49 ], [ 0, %if.end32 ], !dbg !3524
  call void @llvm.dbg.value(metadata i32 %success.2, metadata !3453, metadata !DIExpression()), !dbg !3466
  ret i32 %success.2, !dbg !3525
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_real_value(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s) unnamed_addr #5 !dbg !3526 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !3529, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !3530, metadata !DIExpression()), !dbg !3531
  %0 = load i8*, i8** %mangled, align 8, !dbg !3532
  %1 = load i8, i8* %0, align 1, !dbg !3534
  %cmp = icmp eq i8 %1, 69, !dbg !3535
  br i1 %cmp, label %if.then, label %if.end, !dbg !3536

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @demangle_expression(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s, i32 6) #8, !dbg !3537
  br label %return, !dbg !3538

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i8 %1, 109, !dbg !3539
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !3541

if.then5:                                         ; preds = %if.end
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i32 1) #8, !dbg !3542
  %2 = load i8*, i8** %mangled, align 8, !dbg !3544
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3544
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !3544
  br label %if.end6, !dbg !3545

if.end6:                                          ; preds = %if.then5, %if.end
  %3 = phi i8* [ %incdec.ptr, %if.then5 ], [ %0, %if.end ]
  br label %while.cond, !dbg !3546

while.cond:                                       ; preds = %while.body, %if.end6
  %4 = phi i8* [ %incdec.ptr10, %while.body ], [ %3, %if.end6 ], !dbg !3531
  %5 = load i8, i8* %4, align 1, !dbg !3547
  %idxprom = zext i8 %5 to i64, !dbg !3547
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !3547
  %6 = load i16, i16* %arrayidx, align 2, !dbg !3547
  %7 = and i16 %6, 4, !dbg !3547
  %tobool = icmp eq i16 %7, 0, !dbg !3546
  br i1 %tobool, label %while.end, label %while.body, !dbg !3546

while.body:                                       ; preds = %while.cond
  tail call fastcc void @string_appendn(%struct.string* %s, i8* %4, i32 1) #8, !dbg !3548
  %8 = load i8*, i8** %mangled, align 8, !dbg !3550
  %incdec.ptr10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !3550
  store i8* %incdec.ptr10, i8** %mangled, align 8, !dbg !3550
  br label %while.cond, !dbg !3546, !llvm.loop !3551

while.end:                                        ; preds = %while.cond
  %.lcssa4 = phi i8 [ %5, %while.cond ], !dbg !3547
  %cmp12 = icmp eq i8 %.lcssa4, 46, !dbg !3553
  br i1 %cmp12, label %if.then14, label %if.end27, !dbg !3555

if.then14:                                        ; preds = %while.end
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), i32 1) #8, !dbg !3556
  br label %while.cond16, !dbg !3558

while.cond16:                                     ; preds = %while.body24, %if.then14
  %.pn2 = load i8*, i8** %mangled, align 8, !dbg !3559
  %storemerge1 = getelementptr inbounds i8, i8* %.pn2, i64 1, !dbg !3559
  store i8* %storemerge1, i8** %mangled, align 8, !dbg !3559
  %9 = load i8, i8* %storemerge1, align 1, !dbg !3560
  %idxprom19 = zext i8 %9 to i64, !dbg !3560
  %arrayidx20 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom19, !dbg !3560
  %10 = load i16, i16* %arrayidx20, align 2, !dbg !3560
  %11 = and i16 %10, 4, !dbg !3560
  %tobool23 = icmp eq i16 %11, 0, !dbg !3558
  br i1 %tobool23, label %if.end27.loopexit, label %while.body24, !dbg !3558

while.body24:                                     ; preds = %while.cond16
  tail call fastcc void @string_appendn(%struct.string* %s, i8* nonnull %storemerge1, i32 1) #8, !dbg !3561
  br label %while.cond16, !dbg !3558, !llvm.loop !3563

if.end27.loopexit:                                ; preds = %while.cond16
  %.lcssa = phi i8 [ %9, %while.cond16 ], !dbg !3560
  br label %if.end27, !dbg !3565

if.end27:                                         ; preds = %if.end27.loopexit, %while.end
  %12 = phi i8 [ %.lcssa, %if.end27.loopexit ], [ %.lcssa4, %while.end ], !dbg !3567
  %cmp29 = icmp eq i8 %12, 101, !dbg !3568
  br i1 %cmp29, label %if.then31, label %return, !dbg !3569

if.then31:                                        ; preds = %if.end27
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.210, i64 0, i64 0), i32 1) #8, !dbg !3570
  br label %while.cond33, !dbg !3572

while.cond33:                                     ; preds = %while.body41, %if.then31
  %.pn = load i8*, i8** %mangled, align 8, !dbg !3573
  %storemerge = getelementptr inbounds i8, i8* %.pn, i64 1, !dbg !3573
  store i8* %storemerge, i8** %mangled, align 8, !dbg !3573
  %13 = load i8, i8* %storemerge, align 1, !dbg !3574
  %idxprom36 = zext i8 %13 to i64, !dbg !3574
  %arrayidx37 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom36, !dbg !3574
  %14 = load i16, i16* %arrayidx37, align 2, !dbg !3574
  %15 = and i16 %14, 4, !dbg !3574
  %tobool40 = icmp eq i16 %15, 0, !dbg !3572
  br i1 %tobool40, label %return.loopexit, label %while.body41, !dbg !3572

while.body41:                                     ; preds = %while.cond33
  tail call fastcc void @string_appendn(%struct.string* %s, i8* nonnull %storemerge, i32 1) #8, !dbg !3575
  br label %while.cond33, !dbg !3572, !llvm.loop !3577

return.loopexit:                                  ; preds = %while.cond33
  br label %return, !dbg !3579

return:                                           ; preds = %return.loopexit, %if.end27, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %if.end27 ], [ 1, %return.loopexit ], !dbg !3531
  ret i32 %retval.0, !dbg !3579
}

declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_expression(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s, i32 %tk) unnamed_addr #5 !dbg !3580 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !3582, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !3583, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata %struct.string* %s, metadata !3584, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %tk, metadata !3585, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 0, metadata !3586, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 1, metadata !3587, metadata !DIExpression()), !dbg !3597
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i64 0, i64 0), i32 1) #8, !dbg !3598
  %0 = load i8*, i8** %mangled, align 8, !dbg !3599
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3599
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !3599
  br label %while.cond, !dbg !3600

while.cond:                                       ; preds = %if.end26, %entry
  %need_operator.0 = phi i32 [ 0, %entry ], [ %need_operator.1, %if.end26 ], !dbg !3601
  %success.0 = phi i32 [ 1, %entry ], [ %call27, %if.end26 ], !dbg !3597
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !3587, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %need_operator.0, metadata !3586, metadata !DIExpression()), !dbg !3597
  %tobool = icmp eq i32 %success.0, 0, !dbg !3602
  br i1 %tobool, label %while.end, label %land.lhs.true, !dbg !3603

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i8*, i8** %mangled, align 8, !dbg !3604
  %2 = load i8, i8* %1, align 1, !dbg !3605
  %cmp = icmp eq i8 %2, 87, !dbg !3606
  %cmp3 = icmp eq i8 %2, 0, !dbg !3607
  %or.cond = or i1 %cmp, %cmp3, !dbg !3608
  br i1 %or.cond, label %while.end, label %while.body, !dbg !3608

while.body:                                       ; preds = %land.lhs.true
  %tobool5 = icmp eq i32 %need_operator.0, 0, !dbg !3609
  br i1 %tobool5, label %if.end26, label %if.then, !dbg !3610

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata i32 0, metadata !3587, metadata !DIExpression()), !dbg !3597
  %call = tail call i64 @strlen(i8* %1) #6, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %call, metadata !3592, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 0, metadata !3588, metadata !DIExpression()), !dbg !3612
  br label %for.cond, !dbg !3613

for.cond:                                         ; preds = %for.inc, %if.then
  %success.1 = phi i32 [ 0, %if.then ], [ %success.2, %for.inc ], !dbg !3612
  %i.0 = phi i64 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !3614
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3588, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i32 %success.1, metadata !3587, metadata !DIExpression()), !dbg !3597
  %exitcond = icmp eq i64 %i.0, 79, !dbg !3615
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3616

for.body:                                         ; preds = %for.cond
  %in = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.0, i32 0, !dbg !3617
  %3 = load i8*, i8** %in, align 8, !dbg !3617
  %call8 = tail call i64 @strlen(i8* %3) #6, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %call8, metadata !3593, metadata !DIExpression()), !dbg !3619
  %cmp9 = icmp ugt i64 %call8, %call, !dbg !3620
  br i1 %cmp9, label %cleanup, label %land.lhs.true11, !dbg !3622

land.lhs.true11:                                  ; preds = %for.body
  %4 = load i8*, i8** %mangled, align 8, !dbg !3623
  %call14 = tail call i32 @memcmp(i8* %3, i8* %4, i64 %call8) #6, !dbg !3624
  %cmp15 = icmp eq i32 %call14, 0, !dbg !3625
  br i1 %cmp15, label %if.then17, label %cleanup, !dbg !3626

if.then17:                                        ; preds = %land.lhs.true11
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0), i32 1) #8, !dbg !3627
  %out = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.0, i32 1, !dbg !3629
  %5 = load i8*, i8** %out, align 8, !dbg !3629
  tail call fastcc void @string_append(%struct.string* %s, i8* %5) #8, !dbg !3630
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0), i32 1) #8, !dbg !3631
  call void @llvm.dbg.value(metadata i32 1, metadata !3587, metadata !DIExpression()), !dbg !3597
  %6 = load i8*, i8** %mangled, align 8, !dbg !3632
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %call8, !dbg !3632
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !3632
  br label %cleanup, !dbg !3633

cleanup:                                          ; preds = %for.body, %land.lhs.true11, %if.then17
  %success.2 = phi i32 [ 1, %if.then17 ], [ %success.1, %land.lhs.true11 ], [ %success.1, %for.body ], !dbg !3612
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then17 ], [ true, %land.lhs.true11 ], [ true, %for.body ]
  call void @llvm.dbg.value(metadata i32 %success.2, metadata !3587, metadata !DIExpression()), !dbg !3597
  br i1 %cleanup.dest.slot.0, label %for.inc, label %for.end

for.inc:                                          ; preds = %cleanup
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3588, metadata !DIExpression()), !dbg !3612
  br label %for.cond, !dbg !3635, !llvm.loop !3636

for.end:                                          ; preds = %for.cond, %cleanup
  %success.3 = phi i32 [ %success.2, %cleanup ], [ %success.1, %for.cond ], !dbg !3612
  call void @llvm.dbg.value(metadata i32 %success.3, metadata !3587, metadata !DIExpression()), !dbg !3597
  %tobool19 = icmp eq i32 %success.3, 0, !dbg !3638
  br i1 %tobool19, label %while.end, label %if.end26

if.end26:                                         ; preds = %for.end, %while.body
  %need_operator.1 = phi i32 [ %need_operator.0, %for.end ], [ 1, %while.body ], !dbg !3597
  call void @llvm.dbg.value(metadata i32 %need_operator.1, metadata !3586, metadata !DIExpression()), !dbg !3597
  %call27 = tail call fastcc i32 @demangle_template_value_parm(%struct.work_stuff* %work, i8** %mangled, %struct.string* %s, i32 %tk) #8, !dbg !3640
  call void @llvm.dbg.value(metadata i32 %call27, metadata !3587, metadata !DIExpression()), !dbg !3597
  br label %while.cond, !dbg !3600, !llvm.loop !3641

while.end:                                        ; preds = %for.end, %land.lhs.true, %while.cond
  %success.4 = phi i32 [ 0, %for.end ], [ %success.0, %land.lhs.true ], [ 0, %while.cond ], !dbg !3597
  call void @llvm.dbg.value(metadata i32 %success.4, metadata !3587, metadata !DIExpression()), !dbg !3597
  %7 = load i8*, i8** %mangled, align 8, !dbg !3643
  %8 = load i8, i8* %7, align 1, !dbg !3645
  %cmp29 = icmp eq i8 %8, 87, !dbg !3646
  br i1 %cmp29, label %if.else32, label %if.end34, !dbg !3647

if.else32:                                        ; preds = %while.end
  tail call fastcc void @string_appendn(%struct.string* %s, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i64 0, i64 0), i32 1) #8, !dbg !3648
  %9 = load i8*, i8** %mangled, align 8, !dbg !3650
  %incdec.ptr33 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !3650
  store i8* %incdec.ptr33, i8** %mangled, align 8, !dbg !3650
  br label %if.end34

if.end34:                                         ; preds = %while.end, %if.else32
  %success.5 = phi i32 [ %success.4, %if.else32 ], [ 0, %while.end ], !dbg !3597
  call void @llvm.dbg.value(metadata i32 %success.5, metadata !3587, metadata !DIExpression()), !dbg !3597
  ret i32 %success.5, !dbg !3651
}

declare dso_local i64 @strspn(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @demangle_arm_hp_template(%struct.work_stuff* %work, i8** %mangled, i32 %n, %struct.string* %declp) unnamed_addr #5 !dbg !3652 {
entry:
  %p = alloca i8*, align 8
  %args = alloca i8*, align 8
  %arg = alloca %struct.string, align 8
  %type_str = alloca %struct.string, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !3656, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !3657, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 %n, metadata !3658, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !3659, metadata !DIExpression()), !dbg !3678
  %0 = bitcast i8** %p to i8*, !dbg !3679
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3679
  %1 = bitcast i8** %args to i8*, !dbg !3680
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3680
  %2 = load i8*, i8** %mangled, align 8, !dbg !3681
  %idx.ext = sext i32 %n to i64, !dbg !3682
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext, !dbg !3682
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3662, metadata !DIExpression()), !dbg !3678
  %3 = bitcast %struct.string* %arg to i8*, !dbg !3683
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !3683
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !3684
  %4 = load i32, i32* %options, align 8, !dbg !3684
  %and = and i32 %4, 4096, !dbg !3684
  %tobool = icmp eq i32 %and, 0, !dbg !3684
  br i1 %tobool, label %if.else57, label %land.lhs.true, !dbg !3685

land.lhs.true:                                    ; preds = %entry
  %5 = load i8, i8* %add.ptr, align 1, !dbg !3686
  %cmp = icmp eq i8 %5, 88, !dbg !3687
  br i1 %cmp, label %if.then, label %if.else57, !dbg !3688

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i8* null, metadata !3664, metadata !DIExpression()), !dbg !3689
  %call = tail call i8* @strchr(i8* %2, i32 60) #6, !dbg !3690
  call void @llvm.dbg.value(metadata i8* %call, metadata !3664, metadata !DIExpression()), !dbg !3689
  %tobool2 = icmp eq i8* %call, null, !dbg !3691
  br i1 %tobool2, label %if.then.if.else_crit_edge, label %land.lhs.true3, !dbg !3693

if.then.if.else_crit_edge:                        ; preds = %if.then
  %.pre = load i8*, i8** %mangled, align 8, !dbg !3694
  br label %if.else, !dbg !3693

land.lhs.true3:                                   ; preds = %if.then
  %6 = bitcast i8** %mangled to i64*, !dbg !3695
  %7 = load i64, i64* %6, align 8, !dbg !3695
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64, !dbg !3696
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %7, !dbg !3696
  %cmp5 = icmp slt i64 %sub.ptr.sub, %idx.ext, !dbg !3697
  %8 = inttoptr i64 %7 to i8*, !dbg !3698
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !3698

if.then7:                                         ; preds = %land.lhs.true3
  %conv11 = trunc i64 %sub.ptr.sub to i32, !dbg !3699
  tail call fastcc void @string_appendn(%struct.string* %declp, i8* %8, i32 %conv11) #8, !dbg !3700
  br label %if.end, !dbg !3700

if.else:                                          ; preds = %if.then.if.else_crit_edge, %land.lhs.true3
  %9 = phi i8* [ %.pre, %if.then.if.else_crit_edge ], [ %8, %land.lhs.true3 ], !dbg !3694
  tail call fastcc void @string_appendn(%struct.string* %declp, i8* %9, i32 %n) #8, !dbg !3701
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %add = add nsw i32 %n, 1, !dbg !3702
  %10 = load i8*, i8** %mangled, align 8, !dbg !3703
  %idx.ext12 = sext i32 %add to i64, !dbg !3703
  %add.ptr13 = getelementptr inbounds i8, i8* %10, i64 %idx.ext12, !dbg !3703
  store i8* %add.ptr13, i8** %mangled, align 8, !dbg !3703
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call fastcc void @string_init(%struct.string* nonnull %arg) #8, !dbg !3704
  %temp_start = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 13, !dbg !3705
  %11 = load i32, i32* %temp_start, align 4, !dbg !3705
  %cmp14 = icmp eq i32 %11, -1, !dbg !3707
  br i1 %cmp14, label %if.then16, label %if.end23, !dbg !3708

if.then16:                                        ; preds = %if.end
  %p17 = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 1, !dbg !3709
  %12 = bitcast i8** %p17 to i64*, !dbg !3709
  %13 = load i64, i64* %12, align 8, !dbg !3709
  %14 = bitcast %struct.string* %declp to i64*, !dbg !3710
  %15 = load i64, i64* %14, align 8, !dbg !3710
  %sub.ptr.sub20 = sub i64 %13, %15, !dbg !3711
  %conv21 = trunc i64 %sub.ptr.sub20 to i32, !dbg !3712
  store i32 %conv21, i32* %temp_start, align 4, !dbg !3713
  br label %if.end23, !dbg !3714

if.end23:                                         ; preds = %if.then16, %if.end
  %16 = load i32, i32* %options, align 8, !dbg !3715
  call void @llvm.dbg.value(metadata i32 %16, metadata !3667, metadata !DIExpression()), !dbg !3689
  %or = or i32 %16, 1, !dbg !3716
  store i32 %or, i32* %options, align 8, !dbg !3716
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !3717
  br label %while.cond, !dbg !3718

while.cond:                                       ; preds = %if.else48, %if.end23
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call fastcc void @string_delete(%struct.string* nonnull %arg) #8, !dbg !3719
  %17 = load i8*, i8** %mangled, align 8, !dbg !3721
  %18 = load i8, i8* %17, align 1, !dbg !3722
  %conv26 = sext i8 %18 to i32, !dbg !3722
  switch i32 %conv26, label %hpacc_template_args_done [
    i32 84, label %sw.bb
    i32 85, label %sw.bb31
    i32 83, label %sw.bb31
    i32 65, label %sw.bb36
  ], !dbg !3723

sw.bb:                                            ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i64 1, !dbg !3724
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !3724
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  %call27 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %arg) #8, !dbg !3726
  %tobool28 = icmp eq i32 %call27, 0, !dbg !3726
  br i1 %tobool28, label %hpacc_template_args_done, label %sw.epilog, !dbg !3728

sw.bb31:                                          ; preds = %while.cond, %while.cond
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  %call32 = call fastcc i32 @do_hpacc_template_const_value(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %arg) #8, !dbg !3729
  %tobool33 = icmp eq i32 %call32, 0, !dbg !3729
  br i1 %tobool33, label %hpacc_template_args_done, label %sw.epilog, !dbg !3731

sw.bb36:                                          ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  %call37 = call fastcc i32 @do_hpacc_template_literal(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %arg) #8, !dbg !3732
  %tobool38 = icmp eq i32 %call37, 0, !dbg !3732
  br i1 %tobool38, label %hpacc_template_args_done, label %sw.epilog, !dbg !3734

sw.epilog:                                        ; preds = %sw.bb, %sw.bb31, %sw.bb36
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call fastcc void @string_appends(%struct.string* %declp, %struct.string* nonnull %arg) #8, !dbg !3735
  %19 = load i8*, i8** %mangled, align 8, !dbg !3736
  %20 = load i8, i8* %19, align 1, !dbg !3738
  %cmp42 = icmp eq i8 %20, 0, !dbg !3739
  %cmp45 = icmp eq i8 %20, 95, !dbg !3740
  %or.cond = or i1 %cmp42, %cmp45, !dbg !3741
  br i1 %or.cond, label %hpacc_template_args_done, label %if.else48, !dbg !3741

if.else48:                                        ; preds = %sw.epilog
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.217, i64 0, i64 0)) #8, !dbg !3742
  br label %while.cond, !dbg !3718, !llvm.loop !3743

hpacc_template_args_done:                         ; preds = %sw.bb, %sw.bb31, %sw.bb36, %sw.epilog, %while.cond
  call void @llvm.dbg.label(metadata !3676), !dbg !3745
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #8, !dbg !3746
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call fastcc void @string_delete(%struct.string* nonnull %arg) #8, !dbg !3747
  %21 = load i8*, i8** %mangled, align 8, !dbg !3748
  %22 = load i8, i8* %21, align 1, !dbg !3750
  %cmp51 = icmp eq i8 %22, 95, !dbg !3751
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !3752

if.then53:                                        ; preds = %hpacc_template_args_done
  %incdec.ptr54 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !3753
  store i8* %incdec.ptr54, i8** %mangled, align 8, !dbg !3753
  br label %if.end55, !dbg !3754

if.end55:                                         ; preds = %if.then53, %hpacc_template_args_done
  store i32 %16, i32* %options, align 8, !dbg !3755
  br label %cleanup168

if.else57:                                        ; preds = %entry, %land.lhs.true
  call void @llvm.dbg.value(metadata i8** %p, metadata !3660, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call void @llvm.dbg.value(metadata i8** %args, metadata !3661, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  %call58 = call fastcc i32 @arm_pt(%struct.work_stuff* %work, i8* %2, i32 %n, i8** nonnull %p, i8** nonnull %args) #8, !dbg !3756
  %tobool59 = icmp eq i32 %call58, 0, !dbg !3756
  br i1 %tobool59, label %if.else131, label %if.then60, !dbg !3757

if.then60:                                        ; preds = %if.else57
  %23 = bitcast %struct.string* %type_str to i8*, !dbg !3758
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %23) #7, !dbg !3758
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call fastcc void @string_init(%struct.string* nonnull %arg) #8, !dbg !3759
  %24 = load i8*, i8** %mangled, align 8, !dbg !3760
  %25 = bitcast i8** %p to i64*, !dbg !3761
  %26 = load i64, i64* %25, align 8, !dbg !3761
  %.cast = ptrtoint i8* %24 to i64, !dbg !3762
  %sub.ptr.sub64 = sub i64 %26, %.cast, !dbg !3763
  %conv65 = trunc i64 %sub.ptr.sub64 to i32, !dbg !3761
  call fastcc void @string_appendn(%struct.string* %declp, i8* %24, i32 %conv65) #8, !dbg !3764
  %temp_start66 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 13, !dbg !3765
  %27 = load i32, i32* %temp_start66, align 4, !dbg !3765
  %cmp67 = icmp eq i32 %27, -1, !dbg !3767
  br i1 %cmp67, label %if.then69, label %if.end77, !dbg !3768

if.then69:                                        ; preds = %if.then60
  %p70 = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 1, !dbg !3769
  %28 = bitcast i8** %p70 to i64*, !dbg !3769
  %29 = load i64, i64* %28, align 8, !dbg !3769
  %30 = bitcast %struct.string* %declp to i64*, !dbg !3770
  %31 = load i64, i64* %30, align 8, !dbg !3770
  %sub.ptr.sub74 = sub i64 %29, %31, !dbg !3771
  %conv75 = trunc i64 %sub.ptr.sub74 to i32, !dbg !3772
  store i32 %conv75, i32* %temp_start66, align 4, !dbg !3773
  br label %if.end77, !dbg !3774

if.end77:                                         ; preds = %if.then69, %if.then60
  %32 = load i32, i32* %options, align 8, !dbg !3775
  call void @llvm.dbg.value(metadata i32 %32, metadata !3668, metadata !DIExpression()), !dbg !3776
  %or80 = or i32 %32, 1, !dbg !3777
  store i32 %or80, i32* %options, align 8, !dbg !3777
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !3778
  br label %while.cond81, !dbg !3779

while.cond81:                                     ; preds = %sw.epilog118, %if.end77
  %33 = load i8*, i8** %args, align 8, !dbg !3780
  call void @llvm.dbg.value(metadata i8* %33, metadata !3661, metadata !DIExpression()), !dbg !3678
  %cmp82 = icmp ult i8* %33, %add.ptr, !dbg !3781
  br i1 %cmp82, label %while.body84, label %cfront_template_args_done, !dbg !3779

while.body84:                                     ; preds = %while.cond81
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call fastcc void @string_delete(%struct.string* nonnull %arg) #8, !dbg !3782
  %34 = load i8*, i8** %args, align 8, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %34, metadata !3661, metadata !DIExpression()), !dbg !3678
  %35 = load i8, i8* %34, align 1, !dbg !3784
  %conv85 = sext i8 %35 to i32, !dbg !3784
  switch i32 %conv85, label %sw.default108 [
    i32 88, label %sw.bb86
    i32 76, label %sw.bb102
  ], !dbg !3785

sw.bb86:                                          ; preds = %while.body84
  call void @llvm.dbg.value(metadata i8* %34, metadata !3661, metadata !DIExpression()), !dbg !3678
  %incdec.ptr87 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !3786
  call void @llvm.dbg.value(metadata i8* %incdec.ptr87, metadata !3661, metadata !DIExpression()), !dbg !3678
  store i8* %incdec.ptr87, i8** %args, align 8, !dbg !3786
  call void @llvm.dbg.value(metadata i8** %args, metadata !3661, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call void @llvm.dbg.value(metadata %struct.string* %type_str, metadata !3671, metadata !DIExpression(DW_OP_deref)), !dbg !3776
  %call88 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** nonnull %args, %struct.string* nonnull %type_str) #8, !dbg !3787
  %tobool89 = icmp eq i32 %call88, 0, !dbg !3787
  br i1 %tobool89, label %cfront_template_args_done, label %if.end91, !dbg !3789

if.end91:                                         ; preds = %sw.bb86
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call fastcc void @string_append(%struct.string* nonnull %arg, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i64 0, i64 0)) #8, !dbg !3790
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call void @llvm.dbg.value(metadata %struct.string* %type_str, metadata !3671, metadata !DIExpression(DW_OP_deref)), !dbg !3776
  call fastcc void @string_appends(%struct.string* nonnull %arg, %struct.string* nonnull %type_str) #8, !dbg !3791
  call void @llvm.dbg.value(metadata %struct.string* %type_str, metadata !3671, metadata !DIExpression(DW_OP_deref)), !dbg !3776
  call fastcc void @string_delete(%struct.string* nonnull %type_str) #8, !dbg !3792
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call fastcc void @string_append(%struct.string* nonnull %arg, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i64 0, i64 0)) #8, !dbg !3793
  %36 = load i8*, i8** %args, align 8, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %36, metadata !3661, metadata !DIExpression()), !dbg !3678
  %37 = load i8, i8* %36, align 1, !dbg !3796
  %cmp93 = icmp eq i8 %37, 76, !dbg !3797
  br i1 %cmp93, label %if.end96, label %cfront_template_args_done, !dbg !3798

if.end96:                                         ; preds = %if.end91
  call void @llvm.dbg.value(metadata i8* %36, metadata !3661, metadata !DIExpression()), !dbg !3678
  %incdec.ptr97 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !3799
  call void @llvm.dbg.value(metadata i8* %incdec.ptr97, metadata !3661, metadata !DIExpression()), !dbg !3678
  store i8* %incdec.ptr97, i8** %args, align 8, !dbg !3799
  call void @llvm.dbg.value(metadata i8** %args, metadata !3661, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  %call98 = call fastcc i32 @snarf_numeric_literal(i8** nonnull %args, %struct.string* nonnull %arg) #8, !dbg !3800
  %tobool99 = icmp eq i32 %call98, 0, !dbg !3800
  br i1 %tobool99, label %cfront_template_args_done, label %sw.epilog118, !dbg !3802

sw.bb102:                                         ; preds = %while.body84
  call void @llvm.dbg.value(metadata i8* %34, metadata !3661, metadata !DIExpression()), !dbg !3678
  %incdec.ptr103 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !3803
  call void @llvm.dbg.value(metadata i8* %incdec.ptr103, metadata !3661, metadata !DIExpression()), !dbg !3678
  store i8* %incdec.ptr103, i8** %args, align 8, !dbg !3803
  call void @llvm.dbg.value(metadata i8** %args, metadata !3661, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  %call104 = call fastcc i32 @snarf_numeric_literal(i8** nonnull %args, %struct.string* nonnull %arg) #8, !dbg !3804
  %tobool105 = icmp eq i32 %call104, 0, !dbg !3804
  br i1 %tobool105, label %cfront_template_args_done, label %sw.epilog118, !dbg !3806

sw.default108:                                    ; preds = %while.body84
  call void @llvm.dbg.value(metadata i8* %34, metadata !3661, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %34, metadata !3672, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i8** %args, metadata !3661, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  %call109 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** nonnull %args, %struct.string* nonnull %arg) #8, !dbg !3808
  %tobool110 = icmp eq i32 %call109, 0, !dbg !3808
  br i1 %tobool110, label %cleanup, label %if.end112, !dbg !3810

if.end112:                                        ; preds = %sw.default108
  %38 = load i8*, i8** %args, align 8, !dbg !3811
  call void @llvm.dbg.value(metadata i8* %38, metadata !3661, metadata !DIExpression()), !dbg !3678
  %cmp113 = icmp eq i8* %38, %34, !dbg !3813
  br i1 %cmp113, label %if.then115, label %cleanup, !dbg !3814

if.then115:                                       ; preds = %if.end112
  store i32 %32, i32* %options, align 8, !dbg !3815
  br label %cleanup, !dbg !3817

cleanup:                                          ; preds = %sw.default108, %if.end112, %if.then115
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then115 ], [ 9, %sw.default108 ], [ 0, %if.end112 ]
  switch i32 %cleanup.dest.slot.0, label %cleanup127.loopexit [
    i32 0, label %sw.epilog118
    i32 9, label %cfront_template_args_done
  ]

sw.epilog118:                                     ; preds = %if.end96, %sw.bb102, %cleanup
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call fastcc void @string_appends(%struct.string* %declp, %struct.string* nonnull %arg) #8, !dbg !3818
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.217, i64 0, i64 0)) #8, !dbg !3819
  br label %while.cond81, !dbg !3779, !llvm.loop !3820

cfront_template_args_done:                        ; preds = %if.end96, %if.end91, %sw.bb86, %sw.bb102, %while.cond81, %cleanup
  call void @llvm.dbg.label(metadata !3677), !dbg !3822
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !3663, metadata !DIExpression(DW_OP_deref)), !dbg !3678
  call fastcc void @string_delete(%struct.string* nonnull %arg) #8, !dbg !3823
  %39 = load i8*, i8** %args, align 8, !dbg !3824
  call void @llvm.dbg.value(metadata i8* %39, metadata !3661, metadata !DIExpression()), !dbg !3678
  %cmp120 = icmp ult i8* %39, %add.ptr, !dbg !3826
  br i1 %cmp120, label %if.end125, label %if.then122, !dbg !3827

if.then122:                                       ; preds = %cfront_template_args_done
  %p123 = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 1, !dbg !3828
  %40 = load i8*, i8** %p123, align 8, !dbg !3829
  %incdec.ptr124 = getelementptr inbounds i8, i8* %40, i64 -1, !dbg !3829
  store i8* %incdec.ptr124, i8** %p123, align 8, !dbg !3829
  br label %if.end125, !dbg !3829

if.end125:                                        ; preds = %cfront_template_args_done, %if.then122
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #8, !dbg !3830
  store i32 %32, i32* %options, align 8, !dbg !3831
  br label %cleanup127, !dbg !3832

cleanup127.loopexit:                              ; preds = %cleanup
  %cleanup.dest.slot.0.lcssa = phi i32 [ %cleanup.dest.slot.0, %cleanup ]
  br label %cleanup127, !dbg !3832

cleanup127:                                       ; preds = %cleanup127.loopexit, %if.end125
  %cleanup.dest.slot.1 = phi i32 [ 0, %if.end125 ], [ %cleanup.dest.slot.0.lcssa, %cleanup127.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %23) #7, !dbg !3832
  %cond = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond, label %if.end165, label %cleanup168

if.else131:                                       ; preds = %if.else57
  %cmp132 = icmp sgt i32 %n, 10, !dbg !3833
  br i1 %cmp132, label %land.lhs.true134, label %if.else156, !dbg !3835

land.lhs.true134:                                 ; preds = %if.else131
  %41 = load i8*, i8** %mangled, align 8, !dbg !3836
  %call135 = call i32 @strncmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i64 0, i64 0), i64 8) #6, !dbg !3837
  %cmp136 = icmp eq i32 %call135, 0, !dbg !3838
  br i1 %cmp136, label %land.lhs.true138, label %if.else156, !dbg !3839

land.lhs.true138:                                 ; preds = %land.lhs.true134
  %42 = load i8*, i8** %mangled, align 8, !dbg !3840
  %arrayidx139 = getelementptr inbounds i8, i8* %42, i64 9, !dbg !3841
  %43 = load i8, i8* %arrayidx139, align 1, !dbg !3841
  %cmp141 = icmp eq i8 %43, 78, !dbg !3842
  br i1 %cmp141, label %land.lhs.true143, label %if.else156, !dbg !3843

land.lhs.true143:                                 ; preds = %land.lhs.true138
  %arrayidx144 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3844
  %44 = load i8, i8* %arrayidx144, align 1, !dbg !3844
  %arrayidx146 = getelementptr inbounds i8, i8* %42, i64 10, !dbg !3845
  %45 = load i8, i8* %arrayidx146, align 1, !dbg !3845
  %cmp148 = icmp eq i8 %44, %45, !dbg !3846
  br i1 %cmp148, label %land.lhs.true150, label %if.else156, !dbg !3847

land.lhs.true150:                                 ; preds = %land.lhs.true143
  %conv152 = sext i8 %44 to i32, !dbg !3848
  %call153 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0), i32 %conv152) #6, !dbg !3849
  %tobool154 = icmp eq i8* %call153, null, !dbg !3849
  br i1 %tobool154, label %if.else156, label %if.then155, !dbg !3850

if.then155:                                       ; preds = %land.lhs.true150
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.191, i64 0, i64 0)) #8, !dbg !3851
  br label %if.end165, !dbg !3853

if.else156:                                       ; preds = %land.lhs.true150, %land.lhs.true143, %land.lhs.true138, %land.lhs.true134, %if.else131
  %temp_start157 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 13, !dbg !3854
  %46 = load i32, i32* %temp_start157, align 4, !dbg !3854
  %cmp158 = icmp eq i32 %46, -1, !dbg !3857
  br i1 %cmp158, label %if.then160, label %if.end162, !dbg !3858

if.then160:                                       ; preds = %if.else156
  store i32 0, i32* %temp_start157, align 4, !dbg !3859
  br label %if.end162, !dbg !3860

if.end162:                                        ; preds = %if.then160, %if.else156
  %47 = load i8*, i8** %mangled, align 8, !dbg !3861
  call fastcc void @string_appendn(%struct.string* %declp, i8* %47, i32 %n) #8, !dbg !3862
  br label %if.end165

if.end165:                                        ; preds = %cleanup127, %if.end162, %if.then155
  %48 = load i8*, i8** %mangled, align 8, !dbg !3863
  %add.ptr167 = getelementptr inbounds i8, i8* %48, i64 %idx.ext, !dbg !3863
  store i8* %add.ptr167, i8** %mangled, align 8, !dbg !3863
  br label %cleanup168, !dbg !3864

cleanup168:                                       ; preds = %cleanup127, %if.end165, %if.end55
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !3864
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3864
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3864
  ret void, !dbg !3864
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @arm_special(i8** %mangled, %struct.string* %declp) unnamed_addr #5 !dbg !3865 {
entry:
  %scan = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !3869, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !3870, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i32 1, metadata !3872, metadata !DIExpression()), !dbg !3874
  %0 = bitcast i8** %scan to i8*, !dbg !3875
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3875
  %1 = load i8*, i8** %mangled, align 8, !dbg !3876
  %call = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.224, i64 0, i64 0), i64 8) #6, !dbg !3878
  %cmp = icmp eq i32 %call, 0, !dbg !3879
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3880

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %mangled, align 8, !dbg !3881
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 8, !dbg !3883
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3873, metadata !DIExpression()), !dbg !3874
  store i8* %add.ptr, i8** %scan, align 8, !dbg !3884
  br label %while.cond, !dbg !3885

while.cond:                                       ; preds = %if.end17, %if.then
  %3 = phi i8* [ %8, %if.end17 ], [ %add.ptr, %if.then ], !dbg !3886
  call void @llvm.dbg.value(metadata i8* %3, metadata !3873, metadata !DIExpression()), !dbg !3874
  %4 = load i8, i8* %3, align 1, !dbg !3887
  %cmp1 = icmp eq i8 %4, 0, !dbg !3888
  br i1 %cmp1, label %while.end, label %while.body, !dbg !3885

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8** %scan, metadata !3873, metadata !DIExpression(DW_OP_deref)), !dbg !3874
  %call3 = call fastcc i32 @consume_count(i8** nonnull %scan) #8, !dbg !3889
  call void @llvm.dbg.value(metadata i32 %call3, metadata !3871, metadata !DIExpression()), !dbg !3874
  %cmp4 = icmp eq i32 %call3, -1, !dbg !3891
  br i1 %cmp4, label %cleanup.loopexit1, label %if.end, !dbg !3893

if.end:                                           ; preds = %while.body
  %5 = load i8*, i8** %scan, align 8, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %5, metadata !3873, metadata !DIExpression()), !dbg !3874
  %idx.ext = sext i32 %call3 to i64, !dbg !3894
  %add.ptr7 = getelementptr inbounds i8, i8* %5, i64 %idx.ext, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %add.ptr7, metadata !3873, metadata !DIExpression()), !dbg !3874
  store i8* %add.ptr7, i8** %scan, align 8, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %add.ptr7, metadata !3873, metadata !DIExpression()), !dbg !3874
  %6 = load i8, i8* %add.ptr7, align 1, !dbg !3895
  %cmp9 = icmp eq i8 %6, 95, !dbg !3897
  br i1 %cmp9, label %land.lhs.true, label %if.end17, !dbg !3898

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* %add.ptr7, metadata !3873, metadata !DIExpression()), !dbg !3874
  %arrayidx11 = getelementptr inbounds i8, i8* %add.ptr7, i64 1, !dbg !3899
  %7 = load i8, i8* %arrayidx11, align 1, !dbg !3899
  %cmp13 = icmp eq i8 %7, 95, !dbg !3900
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !3901

if.then15:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i8* %add.ptr7, metadata !3873, metadata !DIExpression()), !dbg !3874
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr7, i64 2, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %add.ptr16, metadata !3873, metadata !DIExpression()), !dbg !3874
  store i8* %add.ptr16, i8** %scan, align 8, !dbg !3902
  br label %if.end17, !dbg !3904

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %if.end
  %8 = phi i8* [ %add.ptr16, %if.then15 ], [ %add.ptr7, %land.lhs.true ], [ %add.ptr7, %if.end ]
  br label %while.cond, !dbg !3885, !llvm.loop !3905

while.end:                                        ; preds = %while.cond
  %9 = load i8*, i8** %mangled, align 8, !dbg !3907
  %add.ptr18 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !3907
  store i8* %add.ptr18, i8** %mangled, align 8, !dbg !3907
  br label %while.cond19, !dbg !3908

while.cond19:                                     ; preds = %if.end46, %while.end
  %10 = phi i8* [ %18, %if.end46 ], [ %add.ptr18, %while.end ], !dbg !3909
  %11 = load i8, i8* %10, align 1, !dbg !3910
  %cmp21 = icmp eq i8 %11, 0, !dbg !3911
  br i1 %cmp21, label %while.end47, label %while.body23, !dbg !3908

while.body23:                                     ; preds = %while.cond19
  %call24 = call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !3912
  call void @llvm.dbg.value(metadata i32 %call24, metadata !3871, metadata !DIExpression()), !dbg !3874
  %cmp25 = icmp eq i32 %call24, -1, !dbg !3914
  br i1 %cmp25, label %cleanup.loopexit, label %lor.lhs.false, !dbg !3916

lor.lhs.false:                                    ; preds = %while.body23
  %conv27 = sext i32 %call24 to i64, !dbg !3917
  %12 = load i8*, i8** %mangled, align 8, !dbg !3918
  %call28 = call i64 @strlen(i8* %12) #6, !dbg !3919
  %cmp29 = icmp slt i64 %call28, %conv27, !dbg !3920
  br i1 %cmp29, label %cleanup.loopexit, label %if.end32, !dbg !3921

if.end32:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %mangled, align 8, !dbg !3922
  call fastcc void @string_prependn(%struct.string* %declp, i8* %13, i32 %call24) #8, !dbg !3923
  %14 = load i8*, i8** %mangled, align 8, !dbg !3924
  %add.ptr34 = getelementptr inbounds i8, i8* %14, i64 %conv27, !dbg !3924
  store i8* %add.ptr34, i8** %mangled, align 8, !dbg !3924
  %15 = load i8, i8* %add.ptr34, align 1, !dbg !3925
  %cmp37 = icmp eq i8 %15, 95, !dbg !3927
  br i1 %cmp37, label %land.lhs.true39, label %if.end46, !dbg !3928

land.lhs.true39:                                  ; preds = %if.end32
  %arrayidx40 = getelementptr inbounds i8, i8* %add.ptr34, i64 1, !dbg !3929
  %16 = load i8, i8* %arrayidx40, align 1, !dbg !3929
  %cmp42 = icmp eq i8 %16, 95, !dbg !3930
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !3931

if.then44:                                        ; preds = %land.lhs.true39
  call fastcc void @string_prepend(%struct.string* %declp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0)) #8, !dbg !3932
  %17 = load i8*, i8** %mangled, align 8, !dbg !3934
  %add.ptr45 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !3934
  store i8* %add.ptr45, i8** %mangled, align 8, !dbg !3934
  br label %if.end46, !dbg !3935

if.end46:                                         ; preds = %if.then44, %land.lhs.true39, %if.end32
  %18 = phi i8* [ %add.ptr45, %if.then44 ], [ %add.ptr34, %land.lhs.true39 ], [ %add.ptr34, %if.end32 ]
  br label %while.cond19, !dbg !3908, !llvm.loop !3936

while.end47:                                      ; preds = %while.cond19
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.188, i64 0, i64 0)) #8, !dbg !3938
  br label %cleanup, !dbg !3939

cleanup.loopexit:                                 ; preds = %lor.lhs.false, %while.body23
  br label %cleanup, !dbg !3940

cleanup.loopexit1:                                ; preds = %while.body
  br label %cleanup, !dbg !3940

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit, %while.end47, %entry
  %retval.0 = phi i32 [ 1, %while.end47 ], [ 0, %entry ], [ 0, %cleanup.loopexit ], [ 0, %cleanup.loopexit1 ], !dbg !3874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3940
  ret i32 %retval.0, !dbg !3940
}

declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @iterate_demangle_function(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i8* %scan) unnamed_addr #5 !dbg !3941 {
entry:
  %decl_init = alloca %struct.string, align 8
  %work_init = alloca %struct.work_stuff, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !3945, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !3946, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !3947, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %scan, metadata !3948, metadata !DIExpression()), !dbg !3953
  %0 = bitcast i8** %mangled to i64*, !dbg !3954
  %1 = load i64, i64* %0, align 8, !dbg !3954
  call void @llvm.dbg.value(metadata i32 0, metadata !3950, metadata !DIExpression()), !dbg !3953
  %2 = bitcast %struct.string* %decl_init to i8*, !dbg !3955
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3955
  %3 = bitcast %struct.work_stuff* %work_init to i8*, !dbg !3956
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %3) #7, !dbg !3956
  %add.ptr = getelementptr inbounds i8, i8* %scan, i64 2, !dbg !3957
  %4 = load i8, i8* %add.ptr, align 1, !dbg !3959
  %cmp = icmp eq i8 %4, 0, !dbg !3960
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3961

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !3962
  %5 = load i32, i32* %options, align 8, !dbg !3962
  %and = and i32 %5, 2048, !dbg !3962
  %tobool = icmp eq i32 %and, 0, !dbg !3962
  br i1 %tobool, label %lor.lhs.false, label %if.then17, !dbg !3964

lor.lhs.false:                                    ; preds = %if.end
  %and3 = and i32 %5, 1024, !dbg !3965
  %tobool4 = icmp eq i32 %and3, 0, !dbg !3965
  br i1 %tobool4, label %lor.lhs.false5, label %if.then17, !dbg !3966

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %and7 = and i32 %5, 4096, !dbg !3967
  %tobool8 = icmp eq i32 %and7, 0, !dbg !3967
  br i1 %tobool8, label %lor.lhs.false9, label %if.then17, !dbg !3968

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %and11 = and i32 %5, 8192, !dbg !3969
  %tobool12 = icmp eq i32 %and11, 0, !dbg !3969
  br i1 %tobool12, label %lor.lhs.false13, label %if.then17, !dbg !3970

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call = tail call i8* @strstr(i8* nonnull %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0)) #6, !dbg !3971
  %cmp15 = icmp eq i8* %call, null, !dbg !3972
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !3973

if.then17:                                        ; preds = %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %if.end, %lor.lhs.false13
  %call18 = tail call fastcc i32 @demangle_function_name(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i8* %scan) #8, !dbg !3974
  br label %cleanup, !dbg !3975

if.end19:                                         ; preds = %lor.lhs.false13
  call void @llvm.dbg.value(metadata %struct.string* %decl_init, metadata !3951, metadata !DIExpression(DW_OP_deref)), !dbg !3953
  call fastcc void @string_init(%struct.string* nonnull %decl_init) #8, !dbg !3976
  call void @llvm.dbg.value(metadata %struct.string* %decl_init, metadata !3951, metadata !DIExpression(DW_OP_deref)), !dbg !3953
  call fastcc void @string_appends(%struct.string* nonnull %decl_init, %struct.string* %declp) #8, !dbg !3977
  %call20 = call i8* @memset(i8* nonnull %3, i32 0, i64 112) #6, !dbg !3978
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work_init, metadata !3952, metadata !DIExpression(DW_OP_deref)), !dbg !3953
  call fastcc void @work_stuff_copy_to_from(%struct.work_stuff* nonnull %work_init, %struct.work_stuff* %work) #8, !dbg !3979
  br label %while.cond, !dbg !3980

while.cond:                                       ; preds = %while.end53, %if.end19
  %scan.addr.0 = phi i8* [ %scan, %if.end19 ], [ %add.ptr54, %while.end53 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !3950, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %scan.addr.0, metadata !3948, metadata !DIExpression()), !dbg !3953
  %arrayidx = getelementptr inbounds i8, i8* %scan.addr.0, i64 2, !dbg !3981
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3981
  %tobool21 = icmp eq i8 %6, 0, !dbg !3980
  br i1 %tobool21, label %while.end55, label %while.body, !dbg !3980

while.body:                                       ; preds = %while.cond
  %call22 = call fastcc i32 @demangle_function_name(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i8* %scan.addr.0) #8, !dbg !3982
  %tobool23 = icmp eq i32 %call22, 0, !dbg !3982
  br i1 %tobool23, label %if.end29, label %if.then24, !dbg !3985

if.then24:                                        ; preds = %while.body
  %call25 = call fastcc i32 @demangle_signature(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) #8, !dbg !3986
  call void @llvm.dbg.value(metadata i32 %call25, metadata !3950, metadata !DIExpression()), !dbg !3953
  %tobool26 = icmp eq i32 %call25, 0, !dbg !3988
  br i1 %tobool26, label %if.end29, label %while.end55, !dbg !3990

if.end29:                                         ; preds = %if.then24, %while.body
  call void @llvm.dbg.value(metadata i32 0, metadata !3950, metadata !DIExpression()), !dbg !3953
  store i64 %1, i64* %0, align 8, !dbg !3991
  call fastcc void @string_clear(%struct.string* %declp) #8, !dbg !3992
  call void @llvm.dbg.value(metadata %struct.string* %decl_init, metadata !3951, metadata !DIExpression(DW_OP_deref)), !dbg !3953
  call fastcc void @string_appends(%struct.string* %declp, %struct.string* nonnull %decl_init) #8, !dbg !3993
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work_init, metadata !3952, metadata !DIExpression(DW_OP_deref)), !dbg !3953
  call fastcc void @work_stuff_copy_to_from(%struct.work_stuff* %work, %struct.work_stuff* nonnull %work_init) #8, !dbg !3994
  call void @llvm.dbg.value(metadata i8* %arrayidx, metadata !3948, metadata !DIExpression()), !dbg !3953
  br label %while.cond31, !dbg !3995

while.cond31:                                     ; preds = %while.body42, %if.end29
  %scan.addr.1 = phi i8* [ %arrayidx, %if.end29 ], [ %incdec.ptr, %while.body42 ], !dbg !3996
  call void @llvm.dbg.value(metadata i8* %scan.addr.1, metadata !3948, metadata !DIExpression()), !dbg !3953
  %7 = load i8, i8* %scan.addr.1, align 1, !dbg !3997
  %tobool33 = icmp eq i8 %7, 0, !dbg !3997
  br i1 %tobool33, label %while.end, label %land.rhs, !dbg !3998

land.rhs:                                         ; preds = %while.cond31
  %cmp36 = icmp eq i8 %7, 95, !dbg !3999
  br i1 %cmp36, label %lor.rhs, label %while.body42, !dbg !4000

lor.rhs:                                          ; preds = %land.rhs
  %arrayidx38 = getelementptr inbounds i8, i8* %scan.addr.1, i64 1, !dbg !4001
  %8 = load i8, i8* %arrayidx38, align 1, !dbg !4001
  %cmp40 = icmp eq i8 %8, 95, !dbg !4002
  br i1 %cmp40, label %while.end, label %while.body42, !dbg !3995

while.body42:                                     ; preds = %lor.rhs, %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %scan.addr.1, i64 1, !dbg !4003
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3948, metadata !DIExpression()), !dbg !3953
  br label %while.cond31, !dbg !3995, !llvm.loop !4004

while.end:                                        ; preds = %lor.rhs, %while.cond31
  %scan.addr.1.lcssa = phi i8* [ %scan.addr.1, %lor.rhs ], [ %scan.addr.1, %while.cond31 ], !dbg !3996
  %.lcssa = phi i8 [ %7, %lor.rhs ], [ %7, %while.cond31 ], !dbg !3997
  call void @llvm.dbg.value(metadata i8* %scan.addr.1.lcssa, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %scan.addr.1.lcssa, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %scan.addr.1.lcssa, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %scan.addr.1.lcssa, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %scan.addr.1.lcssa, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %scan.addr.1.lcssa, metadata !3948, metadata !DIExpression()), !dbg !3953
  br label %while.cond43, !dbg !4005

while.cond43:                                     ; preds = %while.body51, %while.end
  %9 = phi i8 [ %.lcssa, %while.end ], [ %.pre, %while.body51 ], !dbg !4006
  %scan.addr.2 = phi i8* [ %scan.addr.1.lcssa, %while.end ], [ %incdec.ptr52, %while.body51 ], !dbg !3996
  call void @llvm.dbg.value(metadata i8* %scan.addr.2, metadata !3948, metadata !DIExpression()), !dbg !3953
  %cmp48 = icmp eq i8 %9, 95, !dbg !4007
  br i1 %cmp48, label %while.body51, label %while.end53, !dbg !4008

while.body51:                                     ; preds = %while.cond43
  %incdec.ptr52 = getelementptr inbounds i8, i8* %scan.addr.2, i64 1, !dbg !4009
  call void @llvm.dbg.value(metadata i8* %incdec.ptr52, metadata !3948, metadata !DIExpression()), !dbg !3953
  %.pre = load i8, i8* %incdec.ptr52, align 1, !dbg !4006
  br label %while.cond43, !dbg !4005, !llvm.loop !4010

while.end53:                                      ; preds = %while.cond43
  %scan.addr.2.lcssa = phi i8* [ %scan.addr.2, %while.cond43 ], !dbg !3996
  call void @llvm.dbg.value(metadata i8* %scan.addr.2.lcssa, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %scan.addr.2.lcssa, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %scan.addr.2.lcssa, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %scan.addr.2.lcssa, metadata !3948, metadata !DIExpression()), !dbg !3953
  %add.ptr54 = getelementptr inbounds i8, i8* %scan.addr.2.lcssa, i64 -2, !dbg !4011
  call void @llvm.dbg.value(metadata i8* %add.ptr54, metadata !3948, metadata !DIExpression()), !dbg !3953
  br label %while.cond, !dbg !3980, !llvm.loop !4012

while.end55:                                      ; preds = %if.then24, %while.cond
  %success.2 = phi i32 [ 0, %while.cond ], [ %call25, %if.then24 ], !dbg !3953
  call void @llvm.dbg.value(metadata i32 %success.2, metadata !3950, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work_init, metadata !3952, metadata !DIExpression(DW_OP_deref)), !dbg !3953
  call fastcc void @delete_work_stuff(%struct.work_stuff* nonnull %work_init) #8, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.string* %decl_init, metadata !3951, metadata !DIExpression(DW_OP_deref)), !dbg !3953
  call fastcc void @string_delete(%struct.string* nonnull %decl_init) #8, !dbg !4015
  br label %cleanup, !dbg !4016

cleanup:                                          ; preds = %entry, %while.end55, %if.then17
  %retval.0 = phi i32 [ %call18, %if.then17 ], [ %success.2, %while.end55 ], [ 0, %entry ], !dbg !3953
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %3) #7, !dbg !4017
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !4017
  ret i32 %retval.0, !dbg !4017
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_hpacc_template_const_value(%struct.work_stuff* %work, i8** %mangled, %struct.string* %result) unnamed_addr #5 !dbg !4018 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !4020, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !4021, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata %struct.string* %result, metadata !4022, metadata !DIExpression()), !dbg !4024
  %0 = load i8*, i8** %mangled, align 8, !dbg !4025
  %1 = load i8, i8* %0, align 1, !dbg !4027
  %cmp = icmp eq i8 %1, 85, !dbg !4028
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !4029

land.lhs.true:                                    ; preds = %entry
  %cmp3 = icmp eq i8 %1, 83, !dbg !4030
  br i1 %cmp3, label %if.end, label %cleanup, !dbg !4031

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !4023, metadata !DIExpression()), !dbg !4024
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !4032
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !4032
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !4033
  %conv8 = sext i8 %2 to i32, !dbg !4033
  switch i32 %conv8, label %cleanup [
    i32 78, label %sw.bb
    i32 80, label %sw.bb9
    i32 77, label %sw.bb11
  ], !dbg !4034

sw.bb:                                            ; preds = %if.end
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #8, !dbg !4035
  %.pre = load i8*, i8** %mangled, align 8, !dbg !4037
  br label %sw.bb9, !dbg !4035

sw.bb9:                                           ; preds = %if.end, %sw.bb
  %3 = phi i8* [ %incdec.ptr, %if.end ], [ %.pre, %sw.bb ], !dbg !4037
  %incdec.ptr10 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !4037
  store i8* %incdec.ptr10, i8** %mangled, align 8, !dbg !4037
  %4 = load i8, i8* %incdec.ptr10, align 1, !dbg !4038
  %idxprom = zext i8 %4 to i64, !dbg !4038
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !4038
  %5 = load i16, i16* %arrayidx, align 2, !dbg !4038
  %6 = and i16 %5, 4, !dbg !4038
  %tobool = icmp eq i16 %6, 0, !dbg !4038
  br i1 %tobool, label %cleanup, label %while.cond.preheader, !dbg !4040

while.cond.preheader:                             ; preds = %sw.bb9
  br label %while.cond, !dbg !4041

sw.bb11:                                          ; preds = %if.end
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.218, i64 0, i64 0)) #8, !dbg !4042
  %7 = load i8*, i8** %mangled, align 8, !dbg !4043
  %incdec.ptr12 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !4043
  store i8* %incdec.ptr12, i8** %mangled, align 8, !dbg !4043
  br label %cleanup, !dbg !4044

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %8 = phi i16 [ %5, %while.cond.preheader ], [ %.pre2, %while.body ], !dbg !4045
  %9 = phi i8 [ %4, %while.cond.preheader ], [ %.pre1, %while.body ], !dbg !4045
  %10 = and i16 %8, 4, !dbg !4045
  %tobool24 = icmp eq i16 %10, 0, !dbg !4041
  br i1 %tobool24, label %while.end, label %while.body, !dbg !4041

while.body:                                       ; preds = %while.cond
  store i8 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @char_str, i64 0, i64 0), align 1, !dbg !4046
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @char_str, i64 0, i64 0)) #8, !dbg !4048
  %11 = load i8*, i8** %mangled, align 8, !dbg !4049
  %incdec.ptr25 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !4049
  store i8* %incdec.ptr25, i8** %mangled, align 8, !dbg !4049
  %.pre1 = load i8, i8* %incdec.ptr25, align 1, !dbg !4045
  %idxprom20.phi.trans.insert = zext i8 %.pre1 to i64, !dbg !4024
  %arrayidx21.phi.trans.insert = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom20.phi.trans.insert, !dbg !4024
  %.pre2 = load i16, i16* %arrayidx21.phi.trans.insert, align 2, !dbg !4045
  br label %while.cond, !dbg !4041, !llvm.loop !4050

while.end:                                        ; preds = %while.cond
  br i1 %cmp, label %if.then27, label %cleanup, !dbg !4052

if.then27:                                        ; preds = %while.end
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.219, i64 0, i64 0)) #8, !dbg !4053
  br label %cleanup, !dbg !4053

cleanup:                                          ; preds = %land.lhs.true, %sw.bb9, %while.end, %if.then27, %if.end, %sw.bb11
  %retval.0 = phi i32 [ 1, %sw.bb11 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %sw.bb9 ], [ 1, %if.then27 ], [ 1, %while.end ], !dbg !4024
  ret i32 %retval.0, !dbg !4055
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_hpacc_template_literal(%struct.work_stuff* %work, i8** %mangled, %struct.string* %result) unnamed_addr #5 !dbg !4056 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !4058, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata %struct.string* %result, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 0, metadata !4061, metadata !DIExpression()), !dbg !4064
  %0 = load i8*, i8** %mangled, align 8, !dbg !4065
  %1 = load i8, i8* %0, align 1, !dbg !4067
  %cmp = icmp eq i8 %1, 65, !dbg !4068
  br i1 %cmp, label %if.end, label %cleanup, !dbg !4069

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !4070
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !4070
  %call = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !4071
  call void @llvm.dbg.value(metadata i32 %call, metadata !4061, metadata !DIExpression()), !dbg !4064
  %cmp2 = icmp slt i32 %call, 1, !dbg !4072
  br i1 %cmp2, label %cleanup, label %if.end5, !dbg !4074

if.end5:                                          ; preds = %if.end
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0)) #8, !dbg !4075
  %add = add nsw i32 %call, 1, !dbg !4076
  %conv6 = sext i32 %add to i64, !dbg !4076
  %call7 = tail call i8* @xmalloc(i64 %conv6) #6, !dbg !4076
  call void @llvm.dbg.value(metadata i8* %call7, metadata !4062, metadata !DIExpression()), !dbg !4064
  %2 = load i8*, i8** %mangled, align 8, !dbg !4077
  %conv8 = sext i32 %call to i64, !dbg !4078
  %call9 = tail call i8* @memcpy(i8* %call7, i8* %2, i64 %conv8) #6, !dbg !4079
  %arrayidx = getelementptr inbounds i8, i8* %call7, i64 %conv8, !dbg !4080
  store i8 0, i8* %arrayidx, align 1, !dbg !4081
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !4082
  %3 = load i32, i32* %options, align 8, !dbg !4082
  %call10 = tail call i8* @cplus_demangle(i8* %call7, i32 %3) #8, !dbg !4083
  call void @llvm.dbg.value(metadata i8* %call10, metadata !4063, metadata !DIExpression()), !dbg !4064
  %tobool = icmp eq i8* %call10, null, !dbg !4084
  br i1 %tobool, label %if.else, label %if.then11, !dbg !4086

if.then11:                                        ; preds = %if.end5
  tail call fastcc void @string_append(%struct.string* %result, i8* nonnull %call10) #8, !dbg !4087
  tail call void @free(i8* nonnull %call10) #6, !dbg !4089
  br label %if.end12, !dbg !4090

if.else:                                          ; preds = %if.end5
  %4 = load i8*, i8** %mangled, align 8, !dbg !4091
  tail call fastcc void @string_appendn(%struct.string* %result, i8* %4, i32 %call) #8, !dbg !4093
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %5 = load i8*, i8** %mangled, align 8, !dbg !4094
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %conv8, !dbg !4094
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !4094
  tail call void @free(i8* %call7) #6, !dbg !4095
  br label %cleanup, !dbg !4096

cleanup:                                          ; preds = %entry, %if.end, %if.end12
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %entry ], [ 0, %if.end ], !dbg !4064
  ret i32 %retval.0, !dbg !4097
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @arm_pt(%struct.work_stuff* %work, i8* %mangled, i32 %n, i8** %anchor, i8** %args) unnamed_addr #5 !dbg !4098 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !4102, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !4103, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 %n, metadata !4104, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8** %anchor, metadata !4105, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8** %args, metadata !4106, metadata !DIExpression()), !dbg !4118
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !4119
  %0 = load i32, i32* %options, align 8, !dbg !4119
  %and = and i32 %0, 2048, !dbg !4119
  %tobool = icmp eq i32 %and, 0, !dbg !4119
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !4120

lor.lhs.false:                                    ; preds = %entry
  %and2 = and i32 %0, 4096, !dbg !4121
  %tobool3 = icmp eq i32 %and2, 0, !dbg !4121
  br i1 %tobool3, label %if.end16, label %land.lhs.true, !dbg !4122

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %call = tail call i8* @strstr(i8* %mangled, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.220, i64 0, i64 0)) #6, !dbg !4123
  store i8* %call, i8** %anchor, align 8, !dbg !4124
  %tobool4 = icmp eq i8* %call, null, !dbg !4124
  br i1 %tobool4, label %if.end16, label %if.then, !dbg !4125

if.then:                                          ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 6, !dbg !4126
  store i8* %add.ptr, i8** %args, align 8, !dbg !4127
  %call5 = tail call fastcc i32 @consume_count(i8** %args) #8, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %call5, metadata !4107, metadata !DIExpression()), !dbg !4129
  %cmp = icmp eq i32 %call5, -1, !dbg !4130
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4132

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %args, align 8, !dbg !4133
  %idx.ext = sext i32 %call5 to i64, !dbg !4135
  %add.ptr7 = getelementptr inbounds i8, i8* %1, i64 %idx.ext, !dbg !4135
  %idx.ext8 = sext i32 %n to i64, !dbg !4136
  %add.ptr9 = getelementptr inbounds i8, i8* %mangled, i64 %idx.ext8, !dbg !4136
  %cmp10 = icmp eq i8* %add.ptr7, %add.ptr9, !dbg !4137
  br i1 %cmp10, label %land.lhs.true11, label %cleanup, !dbg !4138

land.lhs.true11:                                  ; preds = %if.end
  %2 = load i8, i8* %1, align 1, !dbg !4139
  %cmp12 = icmp eq i8 %2, 95, !dbg !4140
  br i1 %cmp12, label %if.then14, label %cleanup, !dbg !4141

if.then14:                                        ; preds = %land.lhs.true11
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4142
  store i8* %incdec.ptr, i8** %args, align 8, !dbg !4142
  br label %cleanup, !dbg !4144

cleanup:                                          ; preds = %if.end, %land.lhs.true11, %if.then, %if.then14
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then14 ], [ false, %if.then ], [ true, %land.lhs.true11 ], [ true, %if.end ]
  %retval.0 = phi i32 [ 1, %if.then14 ], [ 0, %if.then ], [ undef, %land.lhs.true11 ], [ undef, %if.end ]
  br i1 %cleanup.dest.slot.0, label %if.end16, label %return

if.end16:                                         ; preds = %land.lhs.true, %lor.lhs.false, %cleanup
  %retval.1 = phi i32 [ undef, %land.lhs.true ], [ undef, %lor.lhs.false ], [ %retval.0, %cleanup ]
  %3 = load i32, i32* %options, align 8, !dbg !4145
  %and18 = and i32 %3, 256, !dbg !4145
  %tobool19 = icmp eq i32 %and18, 0, !dbg !4145
  br i1 %tobool19, label %lor.lhs.false20, label %if.then24, !dbg !4146

lor.lhs.false20:                                  ; preds = %if.end16
  %and22 = and i32 %3, 8192, !dbg !4147
  %tobool23 = icmp eq i32 %and22, 0, !dbg !4147
  br i1 %tobool23, label %if.end85, label %if.then24, !dbg !4148

if.then24:                                        ; preds = %lor.lhs.false20, %if.end16
  %call25 = tail call i8* @strstr(i8* %mangled, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.221, i64 0, i64 0)) #6, !dbg !4149
  store i8* %call25, i8** %anchor, align 8, !dbg !4150
  %tobool26 = icmp eq i8* %call25, null, !dbg !4150
  br i1 %tobool26, label %lor.lhs.false27, label %if.then33, !dbg !4151

lor.lhs.false27:                                  ; preds = %if.then24
  %call28 = tail call i8* @strstr(i8* %mangled, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.222, i64 0, i64 0)) #6, !dbg !4152
  store i8* %call28, i8** %anchor, align 8, !dbg !4153
  %tobool29 = icmp eq i8* %call28, null, !dbg !4153
  br i1 %tobool29, label %lor.lhs.false30, label %if.then33, !dbg !4154

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = tail call i8* @strstr(i8* %mangled, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.220, i64 0, i64 0)) #6, !dbg !4155
  store i8* %call31, i8** %anchor, align 8, !dbg !4156
  %tobool32 = icmp eq i8* %call31, null, !dbg !4156
  br i1 %tobool32, label %if.else, label %if.then33, !dbg !4157

if.then33:                                        ; preds = %lor.lhs.false30, %lor.lhs.false27, %if.then24
  %4 = phi i8* [ %call31, %lor.lhs.false30 ], [ %call28, %lor.lhs.false27 ], [ %call25, %if.then24 ], !dbg !4158
  %add.ptr35 = getelementptr inbounds i8, i8* %4, i64 6, !dbg !4159
  store i8* %add.ptr35, i8** %args, align 8, !dbg !4160
  %call36 = tail call fastcc i32 @consume_count(i8** %args) #8, !dbg !4161
  call void @llvm.dbg.value(metadata i32 %call36, metadata !4110, metadata !DIExpression()), !dbg !4162
  %cmp37 = icmp eq i32 %call36, -1, !dbg !4163
  br i1 %cmp37, label %cleanup54, label %if.end40, !dbg !4165

if.end40:                                         ; preds = %if.then33
  %5 = load i8*, i8** %args, align 8, !dbg !4166
  %idx.ext41 = sext i32 %call36 to i64, !dbg !4168
  %add.ptr42 = getelementptr inbounds i8, i8* %5, i64 %idx.ext41, !dbg !4168
  %idx.ext43 = sext i32 %n to i64, !dbg !4169
  %add.ptr44 = getelementptr inbounds i8, i8* %mangled, i64 %idx.ext43, !dbg !4169
  %cmp45 = icmp eq i8* %add.ptr42, %add.ptr44, !dbg !4170
  br i1 %cmp45, label %land.lhs.true47, label %cleanup54, !dbg !4171

land.lhs.true47:                                  ; preds = %if.end40
  %6 = load i8, i8* %5, align 1, !dbg !4172
  %cmp49 = icmp eq i8 %6, 95, !dbg !4173
  br i1 %cmp49, label %if.then51, label %cleanup54, !dbg !4174

if.then51:                                        ; preds = %land.lhs.true47
  %incdec.ptr52 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !4175
  store i8* %incdec.ptr52, i8** %args, align 8, !dbg !4175
  br label %cleanup54, !dbg !4177

cleanup54:                                        ; preds = %if.end40, %land.lhs.true47, %if.then33, %if.then51
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then51 ], [ false, %if.then33 ], [ true, %land.lhs.true47 ], [ true, %if.end40 ]
  %retval.2 = phi i32 [ 1, %if.then51 ], [ 0, %if.then33 ], [ %retval.1, %land.lhs.true47 ], [ %retval.1, %if.end40 ], !dbg !4118
  br i1 %cleanup.dest.slot.1, label %if.end85, label %return

if.else:                                          ; preds = %lor.lhs.false30
  %call57 = tail call i8* @strstr(i8* %mangled, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i64 0, i64 0)) #6, !dbg !4178
  store i8* %call57, i8** %anchor, align 8, !dbg !4179
  %tobool58 = icmp eq i8* %call57, null, !dbg !4179
  br i1 %tobool58, label %if.end85, label %if.then59, !dbg !4180

if.then59:                                        ; preds = %if.else
  %add.ptr61 = getelementptr inbounds i8, i8* %call57, i64 3, !dbg !4181
  store i8* %add.ptr61, i8** %args, align 8, !dbg !4182
  %call62 = tail call fastcc i32 @consume_count(i8** %args) #8, !dbg !4183
  call void @llvm.dbg.value(metadata i32 %call62, metadata !4115, metadata !DIExpression()), !dbg !4184
  %cmp63 = icmp eq i32 %call62, -1, !dbg !4185
  br i1 %cmp63, label %cleanup80, label %if.end66, !dbg !4187

if.end66:                                         ; preds = %if.then59
  %7 = load i8*, i8** %args, align 8, !dbg !4188
  %idx.ext67 = sext i32 %call62 to i64, !dbg !4190
  %add.ptr68 = getelementptr inbounds i8, i8* %7, i64 %idx.ext67, !dbg !4190
  %idx.ext69 = sext i32 %n to i64, !dbg !4191
  %add.ptr70 = getelementptr inbounds i8, i8* %mangled, i64 %idx.ext69, !dbg !4191
  %cmp71 = icmp eq i8* %add.ptr68, %add.ptr70, !dbg !4192
  br i1 %cmp71, label %land.lhs.true73, label %cleanup80, !dbg !4193

land.lhs.true73:                                  ; preds = %if.end66
  %8 = load i8, i8* %7, align 1, !dbg !4194
  %cmp75 = icmp eq i8 %8, 95, !dbg !4195
  br i1 %cmp75, label %if.then77, label %cleanup80, !dbg !4196

if.then77:                                        ; preds = %land.lhs.true73
  %incdec.ptr78 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !4197
  store i8* %incdec.ptr78, i8** %args, align 8, !dbg !4197
  br label %cleanup80, !dbg !4199

cleanup80:                                        ; preds = %if.end66, %land.lhs.true73, %if.then59, %if.then77
  %cleanup.dest.slot.2 = phi i1 [ false, %if.then77 ], [ false, %if.then59 ], [ true, %land.lhs.true73 ], [ true, %if.end66 ]
  %retval.3 = phi i32 [ 1, %if.then77 ], [ 0, %if.then59 ], [ %retval.1, %land.lhs.true73 ], [ %retval.1, %if.end66 ], !dbg !4118
  br i1 %cleanup.dest.slot.2, label %if.end85, label %return

if.end85:                                         ; preds = %if.else, %lor.lhs.false20, %cleanup54, %cleanup80
  br label %return, !dbg !4200

return:                                           ; preds = %cleanup80, %cleanup54, %cleanup, %if.end85
  %retval.4 = phi i32 [ %retval.0, %cleanup ], [ %retval.2, %cleanup54 ], [ 0, %if.end85 ], [ %retval.3, %cleanup80 ], !dbg !4118
  ret i32 %retval.4, !dbg !4201
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @snarf_numeric_literal(i8** %args, %struct.string* %arg) unnamed_addr #5 !dbg !4202 {
entry:
  call void @llvm.dbg.value(metadata i8** %args, metadata !4204, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !4205, metadata !DIExpression()), !dbg !4206
  %0 = load i8*, i8** %args, align 8, !dbg !4207
  %1 = load i8, i8* %0, align 1, !dbg !4209
  %cmp = icmp eq i8 %1, 45, !dbg !4210
  br i1 %cmp, label %if.then, label %if.else, !dbg !4211

if.then:                                          ; preds = %entry
  store i8 45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @char_str, i64 0, i64 0), align 1, !dbg !4212
  tail call fastcc void @string_append(%struct.string* %arg, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @char_str, i64 0, i64 0)) #8, !dbg !4214
  %2 = load i8*, i8** %args, align 8, !dbg !4215
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4215
  store i8* %incdec.ptr, i8** %args, align 8, !dbg !4215
  br label %if.end7, !dbg !4216

if.else:                                          ; preds = %entry
  %cmp3 = icmp eq i8 %1, 43, !dbg !4217
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !4219

if.then5:                                         ; preds = %if.else
  %incdec.ptr6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !4220
  store i8* %incdec.ptr6, i8** %args, align 8, !dbg !4220
  br label %if.end7, !dbg !4221

if.end7:                                          ; preds = %if.else, %if.then5, %if.then
  %3 = phi i8* [ %0, %if.else ], [ %incdec.ptr6, %if.then5 ], [ %incdec.ptr, %if.then ], !dbg !4222
  %4 = load i8, i8* %3, align 1, !dbg !4222
  %idxprom = zext i8 %4 to i64, !dbg !4222
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !4222
  %5 = load i16, i16* %arrayidx, align 2, !dbg !4222
  %6 = and i16 %5, 4, !dbg !4222
  %tobool = icmp eq i16 %6, 0, !dbg !4222
  br i1 %tobool, label %return, label %while.cond.preheader, !dbg !4224

while.cond.preheader:                             ; preds = %if.end7
  br label %while.cond, !dbg !4225

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %7 = phi i16 [ %5, %while.cond.preheader ], [ %.pre1, %while.body ], !dbg !4226
  %8 = phi i8 [ %4, %while.cond.preheader ], [ %.pre, %while.body ], !dbg !4226
  %9 = and i16 %7, 4, !dbg !4226
  %tobool19 = icmp eq i16 %9, 0, !dbg !4225
  br i1 %tobool19, label %return.loopexit, label %while.body, !dbg !4225

while.body:                                       ; preds = %while.cond
  store i8 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @char_str, i64 0, i64 0), align 1, !dbg !4227
  tail call fastcc void @string_append(%struct.string* %arg, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @char_str, i64 0, i64 0)) #8, !dbg !4229
  %10 = load i8*, i8** %args, align 8, !dbg !4230
  %incdec.ptr20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !4230
  store i8* %incdec.ptr20, i8** %args, align 8, !dbg !4230
  %.pre = load i8, i8* %incdec.ptr20, align 1, !dbg !4226
  %idxprom15.phi.trans.insert = zext i8 %.pre to i64, !dbg !4206
  %arrayidx16.phi.trans.insert = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom15.phi.trans.insert, !dbg !4206
  %.pre1 = load i16, i16* %arrayidx16.phi.trans.insert, align 2, !dbg !4226
  br label %while.cond, !dbg !4225, !llvm.loop !4231

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4233

return:                                           ; preds = %return.loopexit, %if.end7
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 1, %return.loopexit ], !dbg !4206
  ret i32 %retval.0, !dbg !4233
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_function_name(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp, i8* %scan) unnamed_addr #5 !dbg !4234 {
entry:
  %type = alloca %struct.string, align 8
  %tem = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !4236, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !4237, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !4238, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i8* %scan, metadata !4239, metadata !DIExpression()), !dbg !4256
  %0 = bitcast %struct.string* %type to i8*, !dbg !4257
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4257
  %1 = bitcast i8** %tem to i8*, !dbg !4258
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4258
  %2 = load i8*, i8** %mangled, align 8, !dbg !4259
  %.cast = ptrtoint i8* %2 to i64, !dbg !4260
  %sub.ptr.lhs.cast = ptrtoint i8* %scan to i64, !dbg !4261
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %.cast, !dbg !4261
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !4262
  tail call fastcc void @string_appendn(%struct.string* %declp, i8* %2, i32 %conv) #8, !dbg !4263
  tail call fastcc void @string_need(%struct.string* %declp, i32 1) #8, !dbg !4264
  %p = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 1, !dbg !4265
  %3 = load i8*, i8** %p, align 8, !dbg !4265
  store i8 0, i8* %3, align 1, !dbg !4266
  %add.ptr = getelementptr inbounds i8, i8* %scan, i64 2, !dbg !4267
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !4268
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !4269
  %4 = load i32, i32* %options, align 8, !dbg !4269
  %and = and i32 %4, 4096, !dbg !4269
  %tobool = icmp eq i32 %and, 0, !dbg !4269
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4271

land.lhs.true:                                    ; preds = %entry
  %5 = load i8, i8* %add.ptr, align 1, !dbg !4272
  %cmp = icmp eq i8 %5, 88, !dbg !4273
  br i1 %cmp, label %if.then, label %if.end, !dbg !4274

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @demangle_arm_hp_template(%struct.work_stuff* %work, i8** %mangled, i32 0, %struct.string* %declp) #8, !dbg !4275
  %.pre = load i32, i32* %options, align 8, !dbg !4277
  br label %if.end, !dbg !4279

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  %6 = phi i32 [ %4, %entry ], [ %.pre, %if.then ], [ %4, %land.lhs.true ], !dbg !4277
  %and4 = and i32 %6, 1024, !dbg !4277
  %tobool5 = icmp eq i32 %and4, 0, !dbg !4277
  br i1 %tobool5, label %lor.lhs.false, label %if.then17, !dbg !4280

lor.lhs.false:                                    ; preds = %if.end
  %and7 = and i32 %6, 2048, !dbg !4281
  %tobool8 = icmp eq i32 %and7, 0, !dbg !4281
  br i1 %tobool8, label %lor.lhs.false9, label %if.then17, !dbg !4282

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %and11 = and i32 %6, 4096, !dbg !4283
  %tobool12 = icmp eq i32 %and11, 0, !dbg !4283
  br i1 %tobool12, label %lor.lhs.false13, label %if.then17, !dbg !4284

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %and15 = and i32 %6, 8192, !dbg !4285
  %tobool16 = icmp eq i32 %and15, 0, !dbg !4285
  br i1 %tobool16, label %if.end29, label %if.then17, !dbg !4286

if.then17:                                        ; preds = %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false, %if.end
  %b = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 0, !dbg !4287
  %7 = load i8*, i8** %b, align 8, !dbg !4287
  %call = tail call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i64 0, i64 0)) #6, !dbg !4290
  %cmp18 = icmp eq i32 %call, 0, !dbg !4291
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !4292

if.then20:                                        ; preds = %if.then17
  %constructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 10, !dbg !4293
  %8 = load i32, i32* %constructor, align 8, !dbg !4295
  %add = add nsw i32 %8, 1, !dbg !4295
  store i32 %add, i32* %constructor, align 8, !dbg !4295
  tail call fastcc void @string_clear(%struct.string* %declp) #8, !dbg !4296
  br label %cleanup316, !dbg !4297

if.else:                                          ; preds = %if.then17
  %9 = load i8*, i8** %b, align 8, !dbg !4298
  %call22 = tail call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.226, i64 0, i64 0)) #6, !dbg !4300
  %cmp23 = icmp eq i32 %call22, 0, !dbg !4301
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !4302

if.then25:                                        ; preds = %if.else
  %destructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !4303
  %10 = load i32, i32* %destructor, align 4, !dbg !4305
  %add26 = add nsw i32 %10, 1, !dbg !4305
  store i32 %add26, i32* %destructor, align 4, !dbg !4305
  tail call fastcc void @string_clear(%struct.string* %declp) #8, !dbg !4306
  br label %cleanup316, !dbg !4307

if.end29:                                         ; preds = %lor.lhs.false13, %if.else
  %11 = bitcast i8** %p to i64*, !dbg !4308
  %12 = load i64, i64* %11, align 8, !dbg !4308
  %13 = bitcast %struct.string* %declp to i64*, !dbg !4309
  %14 = load i64, i64* %13, align 8, !dbg !4309
  %sub.ptr.sub34 = sub i64 %12, %14, !dbg !4310
  %cmp35 = icmp sgt i64 %sub.ptr.sub34, 2, !dbg !4311
  %15 = inttoptr i64 %14 to i8*, !dbg !4312
  br i1 %cmp35, label %land.lhs.true37, label %if.else134, !dbg !4312

land.lhs.true37:                                  ; preds = %if.end29
  %b38 = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 0, !dbg !4313
  %16 = load i8, i8* %15, align 1, !dbg !4314
  %cmp40 = icmp eq i8 %16, 111, !dbg !4315
  br i1 %cmp40, label %land.lhs.true42, label %if.else134, !dbg !4316

land.lhs.true42:                                  ; preds = %land.lhs.true37
  %arrayidx44 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !4317
  %17 = load i8, i8* %arrayidx44, align 1, !dbg !4317
  %cmp46 = icmp eq i8 %17, 112, !dbg !4318
  br i1 %cmp46, label %land.lhs.true48, label %if.else134, !dbg !4319

land.lhs.true48:                                  ; preds = %land.lhs.true42
  %arrayidx50 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !4320
  %18 = load i8, i8* %arrayidx50, align 1, !dbg !4320
  %conv51 = sext i8 %18 to i32, !dbg !4320
  %call52 = tail call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0), i32 %conv51) #6, !dbg !4321
  %cmp53 = icmp eq i8* %call52, null, !dbg !4322
  br i1 %cmp53, label %land.lhs.true48.if.else134_crit_edge, label %if.then55, !dbg !4323

land.lhs.true48.if.else134_crit_edge:             ; preds = %land.lhs.true48
  %.pre7 = load i64, i64* %11, align 8, !dbg !4324
  %.pre8 = load i64, i64* %13, align 8, !dbg !4326
  %19 = inttoptr i64 %.pre8 to i8*, !dbg !4323
  %.pre9 = sub i64 %.pre7, %.pre8, !dbg !4327
  br label %if.else134, !dbg !4323

if.then55:                                        ; preds = %land.lhs.true48
  %20 = load i64, i64* %11, align 8, !dbg !4328
  %21 = load i64, i64* %13, align 8, !dbg !4329
  %sub.ptr.sub60 = sub i64 %20, %21, !dbg !4330
  %cmp61 = icmp sgt i64 %sub.ptr.sub60, 9, !dbg !4331
  br i1 %cmp61, label %land.lhs.true63, label %if.else95, !dbg !4332

land.lhs.true63:                                  ; preds = %if.then55
  %22 = inttoptr i64 %21 to i8*, !dbg !4332
  %add.ptr65 = getelementptr inbounds i8, i8* %22, i64 3, !dbg !4333
  %call66 = tail call i32 @memcmp(i8* nonnull %add.ptr65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 7) #6, !dbg !4334
  %cmp67 = icmp eq i32 %call66, 0, !dbg !4335
  br i1 %cmp67, label %for.cond.preheader, label %if.else95, !dbg !4336

for.cond.preheader:                               ; preds = %land.lhs.true63
  br label %for.cond, !dbg !4337

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !4338
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !4240, metadata !DIExpression()), !dbg !4256
  %exitcond13 = icmp eq i64 %i.0, 79, !dbg !4339
  br i1 %exitcond13, label %if.end296.loopexit3, label %for.body, !dbg !4337

for.body:                                         ; preds = %for.cond
  %23 = load i64, i64* %11, align 8, !dbg !4340
  %24 = load i64, i64* %13, align 8, !dbg !4341
  %sub.ptr.sub76 = sub i64 %23, %24, !dbg !4342
  %25 = trunc i64 %sub.ptr.sub76 to i32, !dbg !4343
  %conv77 = add i32 %25, -10, !dbg !4343
  call void @llvm.dbg.value(metadata i32 %conv77, metadata !4243, metadata !DIExpression()), !dbg !4344
  %in = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.0, i32 0, !dbg !4345
  %26 = load i8*, i8** %in, align 8, !dbg !4345
  %call79 = tail call i64 @strlen(i8* %26) #6, !dbg !4347
  %conv80 = trunc i64 %call79 to i32, !dbg !4348
  %cmp81 = icmp eq i32 %conv77, %conv80, !dbg !4349
  br i1 %cmp81, label %land.lhs.true83, label %cleanup, !dbg !4350

land.lhs.true83:                                  ; preds = %for.body
  %27 = load i8*, i8** %b38, align 8, !dbg !4351
  %add.ptr87 = getelementptr inbounds i8, i8* %27, i64 10, !dbg !4352
  %conv88 = sext i32 %conv77 to i64, !dbg !4353
  %call89 = tail call i32 @memcmp(i8* %26, i8* nonnull %add.ptr87, i64 %conv88) #6, !dbg !4354
  %cmp90 = icmp eq i32 %call89, 0, !dbg !4355
  br i1 %cmp90, label %if.then92, label %cleanup, !dbg !4356

if.then92:                                        ; preds = %land.lhs.true83
  tail call fastcc void @string_clear(%struct.string* %declp) #8, !dbg !4357
  tail call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !4359
  %out = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.0, i32 1, !dbg !4360
  %28 = load i8*, i8** %out, align 8, !dbg !4360
  tail call fastcc void @string_append(%struct.string* %declp, i8* %28) #8, !dbg !4361
  tail call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !4362
  br label %cleanup, !dbg !4363

cleanup:                                          ; preds = %for.body, %land.lhs.true83, %if.then92
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then92 ], [ true, %land.lhs.true83 ], [ true, %for.body ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %if.end296.loopexit3

for.inc:                                          ; preds = %cleanup
  %inc = add nuw nsw i64 %i.0, 1, !dbg !4364
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4240, metadata !DIExpression()), !dbg !4256
  br label %for.cond, !dbg !4365, !llvm.loop !4366

if.else95:                                        ; preds = %land.lhs.true63, %if.then55
  call void @llvm.dbg.value(metadata i64 0, metadata !4240, metadata !DIExpression()), !dbg !4256
  br label %for.cond96, !dbg !4368

for.cond96:                                       ; preds = %for.inc130, %if.else95
  %i.1 = phi i64 [ 0, %if.else95 ], [ %inc131, %for.inc130 ], !dbg !4369
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !4240, metadata !DIExpression()), !dbg !4256
  %exitcond14 = icmp eq i64 %i.1, 79, !dbg !4370
  br i1 %exitcond14, label %if.end296.loopexit4, label %for.body99, !dbg !4371

for.body99:                                       ; preds = %for.cond96
  %29 = load i64, i64* %11, align 8, !dbg !4372
  %30 = load i64, i64* %13, align 8, !dbg !4373
  %sub.ptr.sub105 = sub i64 %29, %30, !dbg !4374
  %31 = trunc i64 %sub.ptr.sub105 to i32, !dbg !4375
  %conv107 = add i32 %31, -3, !dbg !4375
  call void @llvm.dbg.value(metadata i32 %conv107, metadata !4251, metadata !DIExpression()), !dbg !4376
  %in109 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.1, i32 0, !dbg !4377
  %32 = load i8*, i8** %in109, align 8, !dbg !4377
  %call110 = tail call i64 @strlen(i8* %32) #6, !dbg !4379
  %conv111 = trunc i64 %call110 to i32, !dbg !4380
  %cmp112 = icmp eq i32 %conv107, %conv111, !dbg !4381
  br i1 %cmp112, label %land.lhs.true114, label %cleanup127, !dbg !4382

land.lhs.true114:                                 ; preds = %for.body99
  %33 = load i8*, i8** %b38, align 8, !dbg !4383
  %add.ptr118 = getelementptr inbounds i8, i8* %33, i64 3, !dbg !4384
  %conv119 = sext i32 %conv107 to i64, !dbg !4385
  %call120 = tail call i32 @memcmp(i8* %32, i8* nonnull %add.ptr118, i64 %conv119) #6, !dbg !4386
  %cmp121 = icmp eq i32 %call120, 0, !dbg !4387
  br i1 %cmp121, label %if.then123, label %cleanup127, !dbg !4388

if.then123:                                       ; preds = %land.lhs.true114
  tail call fastcc void @string_clear(%struct.string* %declp) #8, !dbg !4389
  tail call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !4391
  %out125 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.1, i32 1, !dbg !4392
  %34 = load i8*, i8** %out125, align 8, !dbg !4392
  tail call fastcc void @string_append(%struct.string* %declp, i8* %34) #8, !dbg !4393
  br label %cleanup127, !dbg !4394

cleanup127:                                       ; preds = %for.body99, %land.lhs.true114, %if.then123
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then123 ], [ true, %land.lhs.true114 ], [ true, %for.body99 ]
  br i1 %cleanup.dest.slot.1, label %for.inc130, label %if.end296.loopexit4

for.inc130:                                       ; preds = %cleanup127
  %inc131 = add nuw nsw i64 %i.1, 1, !dbg !4395
  call void @llvm.dbg.value(metadata i64 %inc131, metadata !4240, metadata !DIExpression()), !dbg !4256
  br label %for.cond96, !dbg !4396, !llvm.loop !4397

if.else134:                                       ; preds = %land.lhs.true48.if.else134_crit_edge, %land.lhs.true42, %land.lhs.true37, %if.end29
  %sub.ptr.sub139.pre-phi = phi i64 [ %.pre9, %land.lhs.true48.if.else134_crit_edge ], [ %sub.ptr.sub34, %land.lhs.true42 ], [ %sub.ptr.sub34, %land.lhs.true37 ], [ %sub.ptr.sub34, %if.end29 ], !dbg !4327
  %35 = phi i8* [ %19, %land.lhs.true48.if.else134_crit_edge ], [ %15, %land.lhs.true42 ], [ %15, %land.lhs.true37 ], [ %15, %if.end29 ]
  %cmp140 = icmp sgt i64 %sub.ptr.sub139.pre-phi, 4, !dbg !4399
  br i1 %cmp140, label %land.lhs.true142, label %if.else161, !dbg !4400

land.lhs.true142:                                 ; preds = %if.else134
  %b143 = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 0, !dbg !4401
  %call144 = tail call i32 @memcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i64 4) #6, !dbg !4402
  %cmp145 = icmp eq i32 %call144, 0, !dbg !4403
  br i1 %cmp145, label %land.lhs.true147, label %if.else161, !dbg !4404

land.lhs.true147:                                 ; preds = %land.lhs.true142
  %36 = load i8*, i8** %b143, align 8, !dbg !4405
  %arrayidx149 = getelementptr inbounds i8, i8* %36, i64 4, !dbg !4406
  %37 = load i8, i8* %arrayidx149, align 1, !dbg !4406
  %conv150 = sext i8 %37 to i32, !dbg !4406
  %call151 = tail call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cplus_markers, i64 0, i64 0), i32 %conv150) #6, !dbg !4407
  %cmp152 = icmp eq i8* %call151, null, !dbg !4408
  br i1 %cmp152, label %if.else161, label %if.then154, !dbg !4409

if.then154:                                       ; preds = %land.lhs.true147
  %38 = load i8*, i8** %b143, align 8, !dbg !4410
  %add.ptr156 = getelementptr inbounds i8, i8* %38, i64 5, !dbg !4412
  call void @llvm.dbg.value(metadata i8* %add.ptr156, metadata !4242, metadata !DIExpression()), !dbg !4256
  store i8* %add.ptr156, i8** %tem, align 8, !dbg !4413
  call void @llvm.dbg.value(metadata %struct.string* %type, metadata !4241, metadata !DIExpression(DW_OP_deref)), !dbg !4256
  call void @llvm.dbg.value(metadata i8** %tem, metadata !4242, metadata !DIExpression(DW_OP_deref)), !dbg !4256
  %call157 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** nonnull %tem, %struct.string* nonnull %type) #8, !dbg !4414
  %tobool158 = icmp eq i32 %call157, 0, !dbg !4414
  br i1 %tobool158, label %if.end296, label %if.then159, !dbg !4416

if.then159:                                       ; preds = %if.then154
  call fastcc void @string_clear(%struct.string* %declp) #8, !dbg !4417
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !4419
  call void @llvm.dbg.value(metadata %struct.string* %type, metadata !4241, metadata !DIExpression(DW_OP_deref)), !dbg !4256
  call fastcc void @string_appends(%struct.string* %declp, %struct.string* nonnull %type) #8, !dbg !4420
  call void @llvm.dbg.value(metadata %struct.string* %type, metadata !4241, metadata !DIExpression(DW_OP_deref)), !dbg !4256
  call fastcc void @string_delete(%struct.string* nonnull %type) #8, !dbg !4421
  br label %if.end296, !dbg !4422

if.else161:                                       ; preds = %land.lhs.true147, %land.lhs.true142, %if.else134
  %b162 = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 0, !dbg !4423
  %39 = load i8*, i8** %b162, align 8, !dbg !4423
  %40 = load i8, i8* %39, align 1, !dbg !4425
  %cmp165 = icmp eq i8 %40, 95, !dbg !4426
  br i1 %cmp165, label %land.lhs.true167, label %if.else192, !dbg !4427

land.lhs.true167:                                 ; preds = %if.else161
  %arrayidx169 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !4428
  %41 = load i8, i8* %arrayidx169, align 1, !dbg !4428
  %cmp171 = icmp eq i8 %41, 95, !dbg !4429
  br i1 %cmp171, label %land.lhs.true173, label %if.else192, !dbg !4430

land.lhs.true173:                                 ; preds = %land.lhs.true167
  %arrayidx175 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !4431
  %42 = load i8, i8* %arrayidx175, align 1, !dbg !4431
  %cmp177 = icmp eq i8 %42, 111, !dbg !4432
  br i1 %cmp177, label %land.lhs.true179, label %if.else192, !dbg !4433

land.lhs.true179:                                 ; preds = %land.lhs.true173
  %arrayidx181 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !4434
  %43 = load i8, i8* %arrayidx181, align 1, !dbg !4434
  %cmp183 = icmp eq i8 %43, 112, !dbg !4435
  br i1 %cmp183, label %if.then185, label %if.else192, !dbg !4436

if.then185:                                       ; preds = %land.lhs.true179
  %add.ptr187 = getelementptr inbounds i8, i8* %39, i64 4, !dbg !4437
  call void @llvm.dbg.value(metadata i8* %add.ptr187, metadata !4242, metadata !DIExpression()), !dbg !4256
  store i8* %add.ptr187, i8** %tem, align 8, !dbg !4439
  call void @llvm.dbg.value(metadata %struct.string* %type, metadata !4241, metadata !DIExpression(DW_OP_deref)), !dbg !4256
  call void @llvm.dbg.value(metadata i8** %tem, metadata !4242, metadata !DIExpression(DW_OP_deref)), !dbg !4256
  %call188 = call fastcc i32 @do_type(%struct.work_stuff* %work, i8** nonnull %tem, %struct.string* nonnull %type) #8, !dbg !4440
  %tobool189 = icmp eq i32 %call188, 0, !dbg !4440
  br i1 %tobool189, label %if.end296, label %if.then190, !dbg !4442

if.then190:                                       ; preds = %if.then185
  call fastcc void @string_clear(%struct.string* %declp) #8, !dbg !4443
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !4445
  call void @llvm.dbg.value(metadata %struct.string* %type, metadata !4241, metadata !DIExpression(DW_OP_deref)), !dbg !4256
  call fastcc void @string_appends(%struct.string* %declp, %struct.string* nonnull %type) #8, !dbg !4446
  call void @llvm.dbg.value(metadata %struct.string* %type, metadata !4241, metadata !DIExpression(DW_OP_deref)), !dbg !4256
  call fastcc void @string_delete(%struct.string* nonnull %type) #8, !dbg !4447
  br label %if.end296, !dbg !4448

if.else192:                                       ; preds = %land.lhs.true179, %land.lhs.true173, %land.lhs.true167, %if.else161
  br i1 %cmp165, label %land.lhs.true198, label %if.end296, !dbg !4449

land.lhs.true198:                                 ; preds = %if.else192
  %arrayidx200 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !4451
  %44 = load i8, i8* %arrayidx200, align 1, !dbg !4451
  %cmp202 = icmp eq i8 %44, 95, !dbg !4452
  br i1 %cmp202, label %land.lhs.true204, label %if.end296, !dbg !4453

land.lhs.true204:                                 ; preds = %land.lhs.true198
  %arrayidx206 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !4454
  %45 = load i8, i8* %arrayidx206, align 1, !dbg !4454
  %idxprom = zext i8 %45 to i64, !dbg !4454
  %arrayidx209 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !4454
  %46 = load i16, i16* %arrayidx209, align 2, !dbg !4454
  %47 = and i16 %46, 8, !dbg !4454
  %tobool212 = icmp eq i16 %47, 0, !dbg !4454
  br i1 %tobool212, label %if.end296, label %land.lhs.true213, !dbg !4455

land.lhs.true213:                                 ; preds = %land.lhs.true204
  %arrayidx215 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !4456
  %48 = load i8, i8* %arrayidx215, align 1, !dbg !4456
  %idxprom218 = zext i8 %48 to i64, !dbg !4456
  %arrayidx219 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom218, !dbg !4456
  %49 = load i16, i16* %arrayidx219, align 2, !dbg !4456
  %50 = and i16 %49, 8, !dbg !4456
  %tobool222 = icmp eq i16 %50, 0, !dbg !4456
  br i1 %tobool222, label %if.end296, label %if.then223, !dbg !4457

if.then223:                                       ; preds = %land.lhs.true213
  %arrayidx225 = getelementptr inbounds i8, i8* %39, i64 4, !dbg !4458
  %51 = load i8, i8* %arrayidx225, align 1, !dbg !4458
  %cmp227 = icmp eq i8 %51, 0, !dbg !4461
  br i1 %cmp227, label %for.cond230.preheader, label %if.else254, !dbg !4462

for.cond230.preheader:                            ; preds = %if.then223
  br label %for.cond230, !dbg !4463

for.cond230:                                      ; preds = %for.cond230.preheader, %for.inc251
  %i.2 = phi i64 [ %inc252, %for.inc251 ], [ 0, %for.cond230.preheader ], !dbg !4466
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !4240, metadata !DIExpression()), !dbg !4256
  %exitcond = icmp eq i64 %i.2, 79, !dbg !4467
  br i1 %exitcond, label %if.end296.loopexit, label %for.body233, !dbg !4463

for.body233:                                      ; preds = %for.cond230
  %in235 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.2, i32 0, !dbg !4469
  %52 = load i8*, i8** %in235, align 8, !dbg !4469
  %call236 = tail call i64 @strlen(i8* %52) #6, !dbg !4472
  %cmp237 = icmp eq i64 %call236, 2, !dbg !4473
  br i1 %cmp237, label %land.lhs.true239, label %for.inc251, !dbg !4474

land.lhs.true239:                                 ; preds = %for.body233
  %53 = load i8*, i8** %b162, align 8, !dbg !4475
  %add.ptr243 = getelementptr inbounds i8, i8* %53, i64 2, !dbg !4476
  %call244 = tail call i32 @memcmp(i8* %52, i8* nonnull %add.ptr243, i64 2) #6, !dbg !4477
  %cmp245 = icmp eq i32 %call244, 0, !dbg !4478
  br i1 %cmp245, label %if.then247, label %for.inc251, !dbg !4479

if.then247:                                       ; preds = %land.lhs.true239
  %i.2.lcssa15 = phi i64 [ %i.2, %land.lhs.true239 ], !dbg !4466
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa15, metadata !4240, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa15, metadata !4240, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa15, metadata !4240, metadata !DIExpression()), !dbg !4256
  tail call fastcc void @string_clear(%struct.string* %declp) #8, !dbg !4480
  tail call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !4482
  %out249 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.2.lcssa15, i32 1, !dbg !4483
  %54 = load i8*, i8** %out249, align 8, !dbg !4483
  tail call fastcc void @string_append(%struct.string* %declp, i8* %54) #8, !dbg !4484
  br label %if.end296, !dbg !4485

for.inc251:                                       ; preds = %for.body233, %land.lhs.true239
  %inc252 = add nuw nsw i64 %i.2, 1, !dbg !4486
  call void @llvm.dbg.value(metadata i64 %inc252, metadata !4240, metadata !DIExpression()), !dbg !4256
  br label %for.cond230, !dbg !4487, !llvm.loop !4488

if.else254:                                       ; preds = %if.then223
  %cmp258 = icmp eq i8 %45, 97, !dbg !4490
  br i1 %cmp258, label %land.lhs.true260, label %if.end296, !dbg !4493

land.lhs.true260:                                 ; preds = %if.else254
  %arrayidx262 = getelementptr inbounds i8, i8* %39, i64 5, !dbg !4494
  %55 = load i8, i8* %arrayidx262, align 1, !dbg !4494
  %cmp264 = icmp eq i8 %55, 0, !dbg !4495
  br i1 %cmp264, label %for.cond267.preheader, label %if.end296, !dbg !4496

for.cond267.preheader:                            ; preds = %land.lhs.true260
  br label %for.cond267, !dbg !4497

for.cond267:                                      ; preds = %for.cond267.preheader, %for.inc288
  %i.3 = phi i64 [ %inc289, %for.inc288 ], [ 0, %for.cond267.preheader ], !dbg !4500
  call void @llvm.dbg.value(metadata i64 %i.3, metadata !4240, metadata !DIExpression()), !dbg !4256
  %exitcond12 = icmp eq i64 %i.3, 79, !dbg !4501
  br i1 %exitcond12, label %if.end296.loopexit2, label %for.body270, !dbg !4497

for.body270:                                      ; preds = %for.cond267
  %in272 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.3, i32 0, !dbg !4503
  %56 = load i8*, i8** %in272, align 8, !dbg !4503
  %call273 = tail call i64 @strlen(i8* %56) #6, !dbg !4506
  %cmp274 = icmp eq i64 %call273, 3, !dbg !4507
  br i1 %cmp274, label %land.lhs.true276, label %for.inc288, !dbg !4508

land.lhs.true276:                                 ; preds = %for.body270
  %57 = load i8*, i8** %b162, align 8, !dbg !4509
  %add.ptr280 = getelementptr inbounds i8, i8* %57, i64 2, !dbg !4510
  %call281 = tail call i32 @memcmp(i8* %56, i8* nonnull %add.ptr280, i64 3) #6, !dbg !4511
  %cmp282 = icmp eq i32 %call281, 0, !dbg !4512
  br i1 %cmp282, label %if.then284, label %for.inc288, !dbg !4513

if.then284:                                       ; preds = %land.lhs.true276
  %i.3.lcssa16 = phi i64 [ %i.3, %land.lhs.true276 ], !dbg !4500
  call void @llvm.dbg.value(metadata i64 %i.3.lcssa16, metadata !4240, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %i.3.lcssa16, metadata !4240, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %i.3.lcssa16, metadata !4240, metadata !DIExpression()), !dbg !4256
  tail call fastcc void @string_clear(%struct.string* %declp) #8, !dbg !4514
  tail call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !4516
  %out286 = getelementptr inbounds [79 x %struct.optable], [79 x %struct.optable]* @optable, i64 0, i64 %i.3.lcssa16, i32 1, !dbg !4517
  %58 = load i8*, i8** %out286, align 8, !dbg !4517
  tail call fastcc void @string_append(%struct.string* %declp, i8* %58) #8, !dbg !4518
  br label %if.end296, !dbg !4519

for.inc288:                                       ; preds = %for.body270, %land.lhs.true276
  %inc289 = add nuw nsw i64 %i.3, 1, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %inc289, metadata !4240, metadata !DIExpression()), !dbg !4256
  br label %for.cond267, !dbg !4521, !llvm.loop !4522

if.end296.loopexit:                               ; preds = %for.cond230
  br label %if.end296, !dbg !4524

if.end296.loopexit2:                              ; preds = %for.cond267
  br label %if.end296, !dbg !4524

if.end296.loopexit3:                              ; preds = %for.cond, %cleanup
  br label %if.end296, !dbg !4524

if.end296.loopexit4:                              ; preds = %for.cond96, %cleanup127
  br label %if.end296, !dbg !4524

if.end296:                                        ; preds = %if.end296.loopexit4, %if.end296.loopexit3, %if.end296.loopexit2, %if.end296.loopexit, %if.then154, %if.then185, %land.lhs.true213, %land.lhs.true204, %if.then159, %if.else192, %land.lhs.true198, %if.else254, %land.lhs.true260, %if.then284, %if.then247, %if.then190
  %b297 = getelementptr inbounds %struct.string, %struct.string* %declp, i64 0, i32 0, !dbg !4524
  %59 = load i8*, i8** %b297, align 8, !dbg !4524
  %60 = load i8*, i8** %p, align 8, !dbg !4524
  %cmp299 = icmp eq i8* %59, %60, !dbg !4524
  br i1 %cmp299, label %cond.end, label %cond.false, !dbg !4524

cond.false:                                       ; preds = %if.end296
  %61 = ptrtoint i8* %59 to i64, !dbg !4524
  %62 = ptrtoint i8* %60 to i64, !dbg !4524
  %sub.ptr.sub305 = sub i64 %62, %61, !dbg !4524
  %phitmp = icmp eq i64 %sub.ptr.sub305, 1, !dbg !4524
  br label %cond.end, !dbg !4524

cond.end:                                         ; preds = %if.end296, %cond.false
  %cond = phi i1 [ %phitmp, %cond.false ], [ false, %if.end296 ]
  br i1 %cond, label %land.lhs.true308, label %if.else315, !dbg !4526

land.lhs.true308:                                 ; preds = %cond.end
  %63 = load i8, i8* %59, align 1, !dbg !4527
  %cmp312 = icmp eq i8 %63, 46, !dbg !4528
  br i1 %cmp312, label %cleanup316, label %if.else315, !dbg !4529

if.else315:                                       ; preds = %land.lhs.true308, %cond.end
  br label %cleanup316, !dbg !4530

cleanup316:                                       ; preds = %land.lhs.true308, %if.else315, %if.then25, %if.then20
  %retval.0 = phi i32 [ 1, %if.then20 ], [ 1, %if.then25 ], [ 1, %if.else315 ], [ 0, %land.lhs.true308 ], !dbg !4256
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4531
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4531
  ret i32 %retval.0, !dbg !4531
}

; Function Attrs: nounwind uwtable
define internal fastcc void @work_stuff_copy_to_from(%struct.work_stuff* %to, %struct.work_stuff* %from) unnamed_addr #5 !dbg !4532 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %to, metadata !4536, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata %struct.work_stuff* %from, metadata !4537, metadata !DIExpression()), !dbg !4555
  tail call fastcc void @delete_work_stuff(%struct.work_stuff* %to) #8, !dbg !4556
  %0 = bitcast %struct.work_stuff* %to to i8*, !dbg !4557
  %1 = bitcast %struct.work_stuff* %from to i8*, !dbg !4558
  %call = tail call i8* @memcpy(i8* %0, i8* %1, i64 112) #6, !dbg !4559
  %typevec_size = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 9, !dbg !4560
  %2 = load i32, i32* %typevec_size, align 4, !dbg !4560
  %tobool = icmp eq i32 %2, 0, !dbg !4562
  br i1 %tobool, label %if.end, label %if.then, !dbg !4563

if.then:                                          ; preds = %entry
  %conv = sext i32 %2 to i64, !dbg !4564
  %mul = shl nsw i64 %conv, 3, !dbg !4564
  %call2 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !4564
  %typevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %to, i64 0, i32 1, !dbg !4565
  %3 = bitcast i8*** %typevec to i8**, !dbg !4566
  store i8* %call2, i8** %3, align 8, !dbg !4566
  br label %if.end, !dbg !4567

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4555
  %ntypes = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 8, !dbg !4568
  %typevec4 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 1, !dbg !4569
  %typevec10 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %to, i64 0, i32 1, !dbg !4569
  br label %for.cond, !dbg !4570

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.body ], [ 0, %if.end ], !dbg !4571
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !4538, metadata !DIExpression()), !dbg !4555
  %4 = load i32, i32* %ntypes, align 8, !dbg !4572
  %5 = sext i32 %4 to i64, !dbg !4573
  %cmp = icmp slt i64 %indvars.iv5, %5, !dbg !4573
  br i1 %cmp, label %for.body, label %for.end, !dbg !4574

for.body:                                         ; preds = %for.cond
  %6 = load i8**, i8*** %typevec4, align 8, !dbg !4575
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %indvars.iv5, !dbg !4576
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !4576
  %call5 = tail call i64 @strlen(i8* %7) #6, !dbg !4577
  %conv6 = shl i64 %call5, 32, !dbg !4578
  %sext9 = add i64 %conv6, 4294967296, !dbg !4578
  %conv7 = ashr exact i64 %sext9, 32, !dbg !4578
  %call9 = tail call i8* @xmalloc(i64 %conv7) #6, !dbg !4578
  %8 = load i8**, i8*** %typevec10, align 8, !dbg !4579
  %arrayidx12 = getelementptr inbounds i8*, i8** %8, i64 %indvars.iv5, !dbg !4580
  store i8* %call9, i8** %arrayidx12, align 8, !dbg !4581
  %9 = load i8**, i8*** %typevec10, align 8, !dbg !4582
  %arrayidx15 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv5, !dbg !4583
  %10 = load i8*, i8** %arrayidx15, align 8, !dbg !4583
  %11 = load i8**, i8*** %typevec4, align 8, !dbg !4584
  %arrayidx18 = getelementptr inbounds i8*, i8** %11, i64 %indvars.iv5, !dbg !4585
  %12 = load i8*, i8** %arrayidx18, align 8, !dbg !4585
  %call20 = tail call i8* @memcpy(i8* %10, i8* %12, i64 %conv7) #6, !dbg !4586
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !4587
  call void @llvm.dbg.value(metadata i32 undef, metadata !4538, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4555
  br label %for.cond, !dbg !4588, !llvm.loop !4589

for.end:                                          ; preds = %for.cond
  %ksize = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 6, !dbg !4591
  %13 = load i32, i32* %ksize, align 8, !dbg !4591
  %tobool21 = icmp eq i32 %13, 0, !dbg !4593
  br i1 %tobool21, label %if.end27, label %if.then22, !dbg !4594

if.then22:                                        ; preds = %for.end
  %conv24 = sext i32 %13 to i64, !dbg !4595
  %mul25 = shl nsw i64 %conv24, 3, !dbg !4595
  %call26 = tail call i8* @xmalloc(i64 %mul25) #6, !dbg !4595
  %ktypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %to, i64 0, i32 2, !dbg !4596
  %14 = bitcast i8*** %ktypevec to i8**, !dbg !4597
  store i8* %call26, i8** %14, align 8, !dbg !4597
  br label %if.end27, !dbg !4598

if.end27:                                         ; preds = %for.end, %if.then22
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4555
  %numk = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 4, !dbg !4599
  %ktypevec33 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 2, !dbg !4600
  %ktypevec42 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %to, i64 0, i32 2, !dbg !4600
  br label %for.cond28, !dbg !4601

for.cond28:                                       ; preds = %for.body31, %if.end27
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body31 ], [ 0, %if.end27 ], !dbg !4602
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !4538, metadata !DIExpression()), !dbg !4555
  %15 = load i32, i32* %numk, align 8, !dbg !4603
  %16 = sext i32 %15 to i64, !dbg !4604
  %cmp29 = icmp slt i64 %indvars.iv3, %16, !dbg !4604
  br i1 %cmp29, label %for.body31, label %for.end55, !dbg !4605

for.body31:                                       ; preds = %for.cond28
  %17 = load i8**, i8*** %ktypevec33, align 8, !dbg !4606
  %arrayidx35 = getelementptr inbounds i8*, i8** %17, i64 %indvars.iv3, !dbg !4607
  %18 = load i8*, i8** %arrayidx35, align 8, !dbg !4607
  %call36 = tail call i64 @strlen(i8* %18) #6, !dbg !4608
  %conv38 = shl i64 %call36, 32, !dbg !4609
  %sext8 = add i64 %conv38, 4294967296, !dbg !4609
  %conv39 = ashr exact i64 %sext8, 32, !dbg !4609
  %call41 = tail call i8* @xmalloc(i64 %conv39) #6, !dbg !4609
  %19 = load i8**, i8*** %ktypevec42, align 8, !dbg !4610
  %arrayidx44 = getelementptr inbounds i8*, i8** %19, i64 %indvars.iv3, !dbg !4611
  store i8* %call41, i8** %arrayidx44, align 8, !dbg !4612
  %20 = load i8**, i8*** %ktypevec42, align 8, !dbg !4613
  %arrayidx47 = getelementptr inbounds i8*, i8** %20, i64 %indvars.iv3, !dbg !4614
  %21 = load i8*, i8** %arrayidx47, align 8, !dbg !4614
  %22 = load i8**, i8*** %ktypevec33, align 8, !dbg !4615
  %arrayidx50 = getelementptr inbounds i8*, i8** %22, i64 %indvars.iv3, !dbg !4616
  %23 = load i8*, i8** %arrayidx50, align 8, !dbg !4616
  %call52 = tail call i8* @memcpy(i8* %21, i8* %23, i64 %conv39) #6, !dbg !4617
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !4618
  call void @llvm.dbg.value(metadata i32 undef, metadata !4538, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4555
  br label %for.cond28, !dbg !4619, !llvm.loop !4620

for.end55:                                        ; preds = %for.cond28
  %bsize = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 7, !dbg !4622
  %24 = load i32, i32* %bsize, align 4, !dbg !4622
  %tobool56 = icmp eq i32 %24, 0, !dbg !4624
  br i1 %tobool56, label %if.end62, label %if.then57, !dbg !4625

if.then57:                                        ; preds = %for.end55
  %conv59 = sext i32 %24 to i64, !dbg !4626
  %mul60 = shl nsw i64 %conv59, 3, !dbg !4626
  %call61 = tail call i8* @xmalloc(i64 %mul60) #6, !dbg !4626
  %btypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %to, i64 0, i32 3, !dbg !4627
  %25 = bitcast i8*** %btypevec to i8**, !dbg !4628
  store i8* %call61, i8** %25, align 8, !dbg !4628
  br label %if.end62, !dbg !4629

if.end62:                                         ; preds = %for.end55, %if.then57
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4555
  %numb = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 5, !dbg !4630
  %btypevec68 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 3, !dbg !4631
  %btypevec77 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %to, i64 0, i32 3, !dbg !4631
  br label %for.cond63, !dbg !4632

for.cond63:                                       ; preds = %for.body66, %if.end62
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body66 ], [ 0, %if.end62 ], !dbg !4633
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !4538, metadata !DIExpression()), !dbg !4555
  %26 = load i32, i32* %numb, align 4, !dbg !4634
  %27 = sext i32 %26 to i64, !dbg !4635
  %cmp64 = icmp slt i64 %indvars.iv1, %27, !dbg !4635
  br i1 %cmp64, label %for.body66, label %for.end90, !dbg !4636

for.body66:                                       ; preds = %for.cond63
  %28 = load i8**, i8*** %btypevec68, align 8, !dbg !4637
  %arrayidx70 = getelementptr inbounds i8*, i8** %28, i64 %indvars.iv1, !dbg !4638
  %29 = load i8*, i8** %arrayidx70, align 8, !dbg !4638
  %call71 = tail call i64 @strlen(i8* %29) #6, !dbg !4639
  %conv73 = shl i64 %call71, 32, !dbg !4640
  %sext7 = add i64 %conv73, 4294967296, !dbg !4640
  %conv74 = ashr exact i64 %sext7, 32, !dbg !4640
  %call76 = tail call i8* @xmalloc(i64 %conv74) #6, !dbg !4640
  %30 = load i8**, i8*** %btypevec77, align 8, !dbg !4641
  %arrayidx79 = getelementptr inbounds i8*, i8** %30, i64 %indvars.iv1, !dbg !4642
  store i8* %call76, i8** %arrayidx79, align 8, !dbg !4643
  %31 = load i8**, i8*** %btypevec77, align 8, !dbg !4644
  %arrayidx82 = getelementptr inbounds i8*, i8** %31, i64 %indvars.iv1, !dbg !4645
  %32 = load i8*, i8** %arrayidx82, align 8, !dbg !4645
  %33 = load i8**, i8*** %btypevec68, align 8, !dbg !4646
  %arrayidx85 = getelementptr inbounds i8*, i8** %33, i64 %indvars.iv1, !dbg !4647
  %34 = load i8*, i8** %arrayidx85, align 8, !dbg !4647
  %call87 = tail call i8* @memcpy(i8* %32, i8* %34, i64 %conv74) #6, !dbg !4648
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !4649
  call void @llvm.dbg.value(metadata i32 undef, metadata !4538, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4555
  br label %for.cond63, !dbg !4650, !llvm.loop !4651

for.end90:                                        ; preds = %for.cond63
  %ntmpl_args = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 17, !dbg !4653
  %35 = load i32, i32* %ntmpl_args, align 8, !dbg !4653
  %tobool91 = icmp eq i32 %35, 0, !dbg !4655
  br i1 %tobool91, label %if.end97, label %if.then92, !dbg !4656

if.then92:                                        ; preds = %for.end90
  %conv94 = sext i32 %35 to i64, !dbg !4657
  %mul95 = shl nsw i64 %conv94, 3, !dbg !4657
  %call96 = tail call i8* @xmalloc(i64 %mul95) #6, !dbg !4657
  %tmpl_argvec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %to, i64 0, i32 16, !dbg !4658
  %36 = bitcast i8*** %tmpl_argvec to i8**, !dbg !4659
  store i8* %call96, i8** %36, align 8, !dbg !4659
  br label %if.end97, !dbg !4660

if.end97:                                         ; preds = %for.end90, %if.then92
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4555
  %tmpl_argvec104 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 16, !dbg !4661
  %tmpl_argvec113 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %to, i64 0, i32 16, !dbg !4661
  br label %for.cond98, !dbg !4662

for.cond98:                                       ; preds = %for.body102, %if.end97
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body102 ], [ 0, %if.end97 ], !dbg !4663
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4538, metadata !DIExpression()), !dbg !4555
  %37 = load i32, i32* %ntmpl_args, align 8, !dbg !4664
  %38 = sext i32 %37 to i64, !dbg !4665
  %cmp100 = icmp slt i64 %indvars.iv, %38, !dbg !4665
  br i1 %cmp100, label %for.body102, label %for.end126, !dbg !4666

for.body102:                                      ; preds = %for.cond98
  %39 = load i8**, i8*** %tmpl_argvec104, align 8, !dbg !4667
  %arrayidx106 = getelementptr inbounds i8*, i8** %39, i64 %indvars.iv, !dbg !4668
  %40 = load i8*, i8** %arrayidx106, align 8, !dbg !4668
  %call107 = tail call i64 @strlen(i8* %40) #6, !dbg !4669
  %conv109 = shl i64 %call107, 32, !dbg !4670
  %sext = add i64 %conv109, 4294967296, !dbg !4670
  %conv110 = ashr exact i64 %sext, 32, !dbg !4670
  %call112 = tail call i8* @xmalloc(i64 %conv110) #6, !dbg !4670
  %41 = load i8**, i8*** %tmpl_argvec113, align 8, !dbg !4671
  %arrayidx115 = getelementptr inbounds i8*, i8** %41, i64 %indvars.iv, !dbg !4672
  store i8* %call112, i8** %arrayidx115, align 8, !dbg !4673
  %42 = load i8**, i8*** %tmpl_argvec113, align 8, !dbg !4674
  %arrayidx118 = getelementptr inbounds i8*, i8** %42, i64 %indvars.iv, !dbg !4675
  %43 = load i8*, i8** %arrayidx118, align 8, !dbg !4675
  %44 = load i8**, i8*** %tmpl_argvec104, align 8, !dbg !4676
  %arrayidx121 = getelementptr inbounds i8*, i8** %44, i64 %indvars.iv, !dbg !4677
  %45 = load i8*, i8** %arrayidx121, align 8, !dbg !4677
  %call123 = tail call i8* @memcpy(i8* %43, i8* %45, i64 %conv110) #6, !dbg !4678
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4679
  call void @llvm.dbg.value(metadata i32 undef, metadata !4538, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4555
  br label %for.cond98, !dbg !4680, !llvm.loop !4681

for.end126:                                       ; preds = %for.cond98
  %previous_argument = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %from, i64 0, i32 19, !dbg !4683
  %46 = load %struct.string*, %struct.string** %previous_argument, align 8, !dbg !4683
  %tobool127 = icmp eq %struct.string* %46, null, !dbg !4685
  br i1 %tobool127, label %if.end134, label %if.then128, !dbg !4686

if.then128:                                       ; preds = %for.end126
  %call129 = tail call i8* @xmalloc(i64 24) #6, !dbg !4687
  %previous_argument130 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %to, i64 0, i32 19, !dbg !4689
  %47 = bitcast %struct.string** %previous_argument130 to i8**, !dbg !4690
  store i8* %call129, i8** %47, align 8, !dbg !4690
  %.cast = bitcast i8* %call129 to %struct.string*, !dbg !4691
  tail call fastcc void @string_init(%struct.string* %.cast) #8, !dbg !4692
  %48 = load %struct.string*, %struct.string** %previous_argument130, align 8, !dbg !4693
  %49 = load %struct.string*, %struct.string** %previous_argument, align 8, !dbg !4694
  tail call fastcc void @string_appends(%struct.string* %48, %struct.string* %49) #8, !dbg !4695
  br label %if.end134, !dbg !4696

if.end134:                                        ; preds = %for.end126, %if.then128
  ret void, !dbg !4697
}

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_work_stuff(%struct.work_stuff* %work) unnamed_addr #5 !dbg !4698 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !4700, metadata !DIExpression()), !dbg !4701
  tail call fastcc void @delete_non_B_K_work_stuff(%struct.work_stuff* %work) #8, !dbg !4702
  tail call fastcc void @squangle_mop_up(%struct.work_stuff* %work) #8, !dbg !4703
  ret void, !dbg !4704
}

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_non_B_K_work_stuff(%struct.work_stuff* %work) unnamed_addr #5 !dbg !4705 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !4707, metadata !DIExpression()), !dbg !4711
  tail call fastcc void @forget_types(%struct.work_stuff* %work) #8, !dbg !4712
  %typevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 1, !dbg !4713
  %0 = load i8**, i8*** %typevec, align 8, !dbg !4713
  %cmp = icmp eq i8** %0, null, !dbg !4715
  br i1 %cmp, label %if.end, label %if.then, !dbg !4716

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %0 to i8*, !dbg !4716
  tail call void @free(i8* nonnull %1) #6, !dbg !4717
  store i8** null, i8*** %typevec, align 8, !dbg !4719
  %typevec_size = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 9, !dbg !4720
  store i32 0, i32* %typevec_size, align 4, !dbg !4721
  br label %if.end, !dbg !4722

if.end:                                           ; preds = %entry, %if.then
  %tmpl_argvec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 16, !dbg !4723
  %2 = load i8**, i8*** %tmpl_argvec, align 8, !dbg !4723
  %tobool = icmp eq i8** %2, null, !dbg !4724
  br i1 %tobool, label %if.end14, label %for.cond.preheader, !dbg !4725

for.cond.preheader:                               ; preds = %if.end
  %ntmpl_args = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 17, !dbg !4726
  br label %for.cond, !dbg !4729

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %.pre1 = phi i8** [ %2, %for.cond.preheader ], [ %.pre, %for.inc ]
  %3 = phi i8** [ %2, %for.cond.preheader ], [ %.pre, %for.inc ], !dbg !4730
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4708, metadata !DIExpression()), !dbg !4730
  %4 = load i32, i32* %ntmpl_args, align 8, !dbg !4731
  %5 = sext i32 %4 to i64, !dbg !4732
  %cmp4 = icmp slt i64 %indvars.iv, %5, !dbg !4732
  br i1 %cmp4, label %for.body, label %for.end, !dbg !4729

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %indvars.iv, !dbg !4733
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !4733
  %tobool6 = icmp eq i8* %6, null, !dbg !4733
  br i1 %tobool6, label %for.inc, label %if.then7, !dbg !4735

if.then7:                                         ; preds = %for.body
  tail call void @free(i8* nonnull %6) #6, !dbg !4736
  %.pre.pre = load i8**, i8*** %tmpl_argvec, align 8, !dbg !4730
  br label %for.inc, !dbg !4736

for.inc:                                          ; preds = %for.body, %if.then7
  %.pre = phi i8** [ %.pre1, %for.body ], [ %.pre.pre, %if.then7 ], !dbg !4730
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4737
  call void @llvm.dbg.value(metadata i32 undef, metadata !4708, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4730
  br label %for.cond, !dbg !4738, !llvm.loop !4739

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i8** [ %3, %for.cond ], !dbg !4730
  %7 = bitcast i8** %.lcssa to i8*, !dbg !4741
  tail call void @free(i8* %7) #6, !dbg !4742
  store i8** null, i8*** %tmpl_argvec, align 8, !dbg !4743
  br label %if.end14, !dbg !4744

if.end14:                                         ; preds = %if.end, %for.end
  %previous_argument = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 19, !dbg !4745
  %8 = load %struct.string*, %struct.string** %previous_argument, align 8, !dbg !4745
  %tobool15 = icmp eq %struct.string* %8, null, !dbg !4747
  br i1 %tobool15, label %if.end20, label %if.then16, !dbg !4748

if.then16:                                        ; preds = %if.end14
  tail call fastcc void @string_delete(%struct.string* nonnull %8) #8, !dbg !4749
  %9 = bitcast %struct.string** %previous_argument to i8**, !dbg !4751
  %10 = load i8*, i8** %9, align 8, !dbg !4751
  tail call void @free(i8* %10) #6, !dbg !4752
  store %struct.string* null, %struct.string** %previous_argument, align 8, !dbg !4753
  br label %if.end20, !dbg !4754

if.end20:                                         ; preds = %if.end14, %if.then16
  ret void, !dbg !4755
}

; Function Attrs: nounwind uwtable
define internal fastcc void @forget_types(%struct.work_stuff* %work) unnamed_addr #5 !dbg !4756 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !4758, metadata !DIExpression()), !dbg !4760
  %ntypes = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 8, !dbg !4760
  %typevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 1, !dbg !4761
  br label %while.cond, !dbg !4764

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %ntypes, align 8, !dbg !4765
  %cmp = icmp sgt i32 %0, 0, !dbg !4766
  br i1 %cmp, label %while.body, label %while.end, !dbg !4764

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %0, -1, !dbg !4767
  store i32 %dec, i32* %ntypes, align 8, !dbg !4767
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4759, metadata !DIExpression()), !dbg !4760
  %1 = load i8**, i8*** %typevec, align 8, !dbg !4768
  %idxprom = sext i32 %dec to i64, !dbg !4769
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom, !dbg !4769
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !4769
  %cmp2 = icmp eq i8* %2, null, !dbg !4770
  br i1 %cmp2, label %if.end, label %if.then, !dbg !4771

if.then:                                          ; preds = %while.body
  tail call void @free(i8* nonnull %2) #6, !dbg !4772
  %3 = load i8**, i8*** %typevec, align 8, !dbg !4774
  %arrayidx8 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !4775
  store i8* null, i8** %arrayidx8, align 8, !dbg !4776
  br label %if.end, !dbg !4777

if.end:                                           ; preds = %while.body, %if.then
  br label %while.cond, !dbg !4764, !llvm.loop !4778

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4780
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remember_type(%struct.work_stuff* %work, i8* %start, i32 %len) unnamed_addr #5 !dbg !4781 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !4783, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i8* %start, metadata !4784, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 %len, metadata !4785, metadata !DIExpression()), !dbg !4787
  %forgetting_types = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 18, !dbg !4788
  %0 = load i32, i32* %forgetting_types, align 4, !dbg !4788
  %tobool = icmp eq i32 %0, 0, !dbg !4790
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !4791

if.end:                                           ; preds = %entry
  %ntypes = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 8, !dbg !4792
  %1 = load i32, i32* %ntypes, align 8, !dbg !4792
  %typevec_size = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 9, !dbg !4794
  %2 = load i32, i32* %typevec_size, align 4, !dbg !4794
  %cmp = icmp slt i32 %1, %2, !dbg !4795
  br i1 %cmp, label %if.end16, label %if.then1, !dbg !4796

if.then1:                                         ; preds = %if.end
  %cmp3 = icmp eq i32 %2, 0, !dbg !4797
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !4800

if.then4:                                         ; preds = %if.then1
  store i32 3, i32* %typevec_size, align 4, !dbg !4801
  %call = tail call i8* @xmalloc(i64 24) #6, !dbg !4803
  %typevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 1, !dbg !4804
  %3 = bitcast i8*** %typevec to i8**, !dbg !4805
  store i8* %call, i8** %3, align 8, !dbg !4805
  br label %if.end16, !dbg !4806

if.else:                                          ; preds = %if.then1
  %mul8 = shl nsw i32 %2, 1, !dbg !4807
  store i32 %mul8, i32* %typevec_size, align 4, !dbg !4807
  %typevec9 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 1, !dbg !4809
  %4 = bitcast i8*** %typevec9 to i8**, !dbg !4809
  %5 = load i8*, i8** %4, align 8, !dbg !4809
  %conv11 = sext i32 %mul8 to i64, !dbg !4809
  %mul12 = shl nsw i64 %conv11, 3, !dbg !4809
  %call13 = tail call i8* @xrealloc(i8* %5, i64 %mul12) #6, !dbg !4809
  store i8* %call13, i8** %4, align 8, !dbg !4810
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then4, %if.else
  %add = add nsw i32 %len, 1, !dbg !4811
  %conv17 = sext i32 %add to i64, !dbg !4811
  %call19 = tail call i8* @xmalloc(i64 %conv17) #6, !dbg !4811
  call void @llvm.dbg.value(metadata i8* %call19, metadata !4786, metadata !DIExpression()), !dbg !4787
  %conv20 = sext i32 %len to i64, !dbg !4812
  %call21 = tail call i8* @memcpy(i8* %call19, i8* %start, i64 %conv20) #6, !dbg !4813
  %arrayidx = getelementptr inbounds i8, i8* %call19, i64 %conv20, !dbg !4814
  store i8 0, i8* %arrayidx, align 1, !dbg !4815
  %typevec22 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 1, !dbg !4816
  %6 = load i8**, i8*** %typevec22, align 8, !dbg !4816
  %7 = load i32, i32* %ntypes, align 8, !dbg !4817
  %inc = add nsw i32 %7, 1, !dbg !4817
  store i32 %inc, i32* %ntypes, align 8, !dbg !4817
  %idxprom24 = sext i32 %7 to i64, !dbg !4818
  %arrayidx25 = getelementptr inbounds i8*, i8** %6, i64 %idxprom24, !dbg !4818
  store i8* %call19, i8** %arrayidx25, align 8, !dbg !4819
  br label %cleanup.cont, !dbg !4820

cleanup.cont:                                     ; preds = %entry, %if.end16
  ret void, !dbg !4820
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @code_for_qualifier(i32 %c) unnamed_addr #5 !dbg !4821 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !4823, metadata !DIExpression()), !dbg !4824
  switch i32 %c, label %sw.epilog [
    i32 67, label %return
    i32 86, label %sw.bb1
    i32 117, label %sw.bb2
  ], !dbg !4825

sw.bb1:                                           ; preds = %entry
  br label %return, !dbg !4826

sw.bb2:                                           ; preds = %entry
  br label %return, !dbg !4828

sw.epilog:                                        ; preds = %entry
  tail call void @abort() #6, !dbg !4829
  br label %return, !dbg !4830

return:                                           ; preds = %entry, %sw.epilog, %sw.bb2, %sw.bb1
  %retval.0 = phi i32 [ undef, %sw.epilog ], [ 4, %sw.bb2 ], [ 2, %sw.bb1 ], [ 1, %entry ]
  ret i32 %retval.0, !dbg !4830
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_class(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) unnamed_addr #5 !dbg !4831 {
entry:
  %class_name = alloca %struct.string, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !4833, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !4834, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !4835, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 0, metadata !4836, metadata !DIExpression()), !dbg !4840
  %0 = bitcast %struct.string* %class_name to i8*, !dbg !4841
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4841
  call void @llvm.dbg.value(metadata i8* null, metadata !4839, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata %struct.string* %class_name, metadata !4838, metadata !DIExpression(DW_OP_deref)), !dbg !4840
  call fastcc void @string_init(%struct.string* nonnull %class_name) #8, !dbg !4842
  %call = call fastcc i32 @register_Btype(%struct.work_stuff* %work) #8, !dbg !4843
  call void @llvm.dbg.value(metadata i32 %call, metadata !4837, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata %struct.string* %class_name, metadata !4838, metadata !DIExpression(DW_OP_deref)), !dbg !4840
  %call1 = call fastcc i32 @demangle_class_name(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %class_name) #8, !dbg !4844
  %tobool = icmp eq i32 %call1, 0, !dbg !4844
  br i1 %tobool, label %if.end45, label %if.then, !dbg !4846

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.string, %struct.string* %class_name, i64 0, i32 1, !dbg !4847
  %1 = bitcast i8** %p to i64*, !dbg !4847
  %2 = load i64, i64* %1, align 8, !dbg !4847
  %constructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 10, !dbg !4849
  %3 = load i32, i32* %constructor, align 8, !dbg !4849
  %and = and i32 %3, 1, !dbg !4851
  %tobool2 = icmp eq i32 %and, 0, !dbg !4851
  br i1 %tobool2, label %lor.lhs.false, label %if.then5, !dbg !4852

lor.lhs.false:                                    ; preds = %if.then
  %destructor = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !4853
  %4 = load i32, i32* %destructor, align 4, !dbg !4853
  %and3 = and i32 %4, 1, !dbg !4854
  %tobool4 = icmp eq i32 %and3, 0, !dbg !4854
  br i1 %tobool4, label %if.end19, label %if.then5, !dbg !4855

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  %temp_start = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 13, !dbg !4856
  %5 = load i32, i32* %temp_start, align 4, !dbg !4856
  %tobool6 = icmp eq i32 %5, 0, !dbg !4859
  br i1 %tobool6, label %if.end, label %land.lhs.true, !dbg !4860

land.lhs.true:                                    ; preds = %if.then5
  %cmp = icmp eq i32 %5, -1, !dbg !4861
  br i1 %cmp, label %if.end, label %if.then8, !dbg !4862

if.then8:                                         ; preds = %land.lhs.true
  %b = getelementptr inbounds %struct.string, %struct.string* %class_name, i64 0, i32 0, !dbg !4863
  %6 = load i8*, i8** %b, align 8, !dbg !4863
  %idx.ext = sext i32 %5 to i64, !dbg !4865
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext, !dbg !4865
  store i8* %add.ptr, i8** %p, align 8, !dbg !4866
  br label %if.end, !dbg !4867

if.end:                                           ; preds = %land.lhs.true, %if.then5, %if.then8
  call void @llvm.dbg.value(metadata %struct.string* %class_name, metadata !4838, metadata !DIExpression(DW_OP_deref)), !dbg !4840
  call fastcc void @string_prepends(%struct.string* %declp, %struct.string* nonnull %class_name) #8, !dbg !4868
  %destructor11 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 11, !dbg !4869
  %7 = load i32, i32* %destructor11, align 4, !dbg !4869
  %and12 = and i32 %7, 1, !dbg !4871
  %tobool13 = icmp eq i32 %and12, 0, !dbg !4871
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !4872

if.then14:                                        ; preds = %if.end
  call fastcc void @string_prepend(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i64 0, i64 0)) #8, !dbg !4873
  %8 = load i32, i32* %destructor11, align 4, !dbg !4875
  %sub = add nsw i32 %8, -1, !dbg !4875
  store i32 %sub, i32* %destructor11, align 4, !dbg !4875
  br label %if.end19, !dbg !4876

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* %constructor, align 8, !dbg !4877
  %sub17 = add nsw i32 %9, -1, !dbg !4877
  store i32 %sub17, i32* %constructor, align 8, !dbg !4877
  br label %if.end19

if.end19:                                         ; preds = %lor.lhs.false, %if.then14, %if.else
  store i64 %2, i64* %1, align 8, !dbg !4879
  %b21 = getelementptr inbounds %struct.string, %struct.string* %class_name, i64 0, i32 0, !dbg !4880
  %10 = load i8*, i8** %b21, align 8, !dbg !4880
  %.cast = inttoptr i64 %2 to i8*, !dbg !4881
  %cmp24 = icmp eq i8* %10, %.cast, !dbg !4881
  br i1 %cmp24, label %cond.end, label %cond.false, !dbg !4881

cond.false:                                       ; preds = %if.end19
  %11 = ptrtoint i8* %10 to i64, !dbg !4881
  %sub.ptr.sub = sub i64 %2, %11, !dbg !4881
  %phitmp = trunc i64 %sub.ptr.sub to i32, !dbg !4881
  br label %cond.end, !dbg !4881

cond.end:                                         ; preds = %if.end19, %cond.false
  %cond = phi i32 [ %phitmp, %cond.false ], [ 0, %if.end19 ]
  call fastcc void @remember_Ktype(%struct.work_stuff* %work, i8* %10, i32 %cond) #8, !dbg !4882
  %12 = load i8*, i8** %b21, align 8, !dbg !4883
  %13 = load i8*, i8** %p, align 8, !dbg !4884
  %cmp30 = icmp eq i8* %12, %13, !dbg !4884
  br i1 %cmp30, label %cond.end39, label %cond.false33, !dbg !4884

cond.false33:                                     ; preds = %cond.end
  %14 = ptrtoint i8* %12 to i64, !dbg !4884
  %15 = ptrtoint i8* %13 to i64, !dbg !4884
  %sub.ptr.sub38 = sub i64 %15, %14, !dbg !4884
  %phitmp1 = trunc i64 %sub.ptr.sub38 to i32, !dbg !4884
  br label %cond.end39, !dbg !4884

cond.end39:                                       ; preds = %cond.end, %cond.false33
  %cond40 = phi i32 [ %phitmp1, %cond.false33 ], [ 0, %cond.end ]
  call fastcc void @remember_Btype(%struct.work_stuff* %work, i8* %12, i32 %cond40, i32 %call) #8, !dbg !4885
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !4886
  %16 = load i32, i32* %options, align 8, !dbg !4886
  %and42 = and i32 %16, 4, !dbg !4886
  %tobool43 = icmp eq i32 %and42, 0, !dbg !4886
  %cond44 = select i1 %tobool43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), !dbg !4886
  call fastcc void @string_prepend(%struct.string* %declp, i8* %cond44) #8, !dbg !4887
  call void @llvm.dbg.value(metadata %struct.string* %class_name, metadata !4838, metadata !DIExpression(DW_OP_deref)), !dbg !4840
  call fastcc void @string_prepends(%struct.string* %declp, %struct.string* nonnull %class_name) #8, !dbg !4888
  call void @llvm.dbg.value(metadata i32 1, metadata !4836, metadata !DIExpression()), !dbg !4840
  br label %if.end45, !dbg !4889

if.end45:                                         ; preds = %entry, %cond.end39
  %success.0 = phi i32 [ 1, %cond.end39 ], [ 0, %entry ], !dbg !4840
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !4836, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata %struct.string* %class_name, metadata !4838, metadata !DIExpression(DW_OP_deref)), !dbg !4840
  call fastcc void @string_delete(%struct.string* nonnull %class_name) #8, !dbg !4890
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4891
  ret i32 %success.0, !dbg !4892
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_args(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) unnamed_addr #5 !dbg !4893 {
entry:
  %arg = alloca %struct.string, align 8
  %r = alloca i32, align 4
  %t = alloca i32, align 4
  %tem = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !4895, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !4896, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !4897, metadata !DIExpression()), !dbg !4904
  %0 = bitcast %struct.string* %arg to i8*, !dbg !4905
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4905
  call void @llvm.dbg.value(metadata i32 0, metadata !4899, metadata !DIExpression()), !dbg !4904
  %1 = bitcast i32* %r to i8*, !dbg !4906
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !4906
  %2 = bitcast i32* %t to i8*, !dbg !4907
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7, !dbg !4907
  %3 = bitcast i8** %tem to i8*, !dbg !4908
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !4908
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !4909
  %4 = load i32, i32* %options, align 8, !dbg !4909
  %and = and i32 %4, 1, !dbg !4909
  %tobool = icmp eq i32 %and, 0, !dbg !4909
  br i1 %tobool, label %if.end3, label %if.then, !dbg !4911

if.then:                                          ; preds = %entry
  tail call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i64 0, i64 0)) #8, !dbg !4912
  %5 = load i8*, i8** %mangled, align 8, !dbg !4914
  %6 = load i8, i8* %5, align 1, !dbg !4916
  %cmp = icmp eq i8 %6, 0, !dbg !4917
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4918

if.then2:                                         ; preds = %if.then
  tail call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.228, i64 0, i64 0)) #8, !dbg !4919
  br label %if.end3, !dbg !4921

if.end3:                                          ; preds = %entry, %if.then, %if.then2
  %nrepeats = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 20, !dbg !4904
  %ntypes = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 8, !dbg !4922
  %typevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 1, !dbg !4927
  %7 = bitcast i8** %tem to i64*, !dbg !4927
  br label %while.cond, !dbg !4929

while.cond:                                       ; preds = %if.end125, %if.end3
  %need_comma.0 = phi i32 [ 0, %if.end3 ], [ %need_comma.2, %if.end125 ], !dbg !4930
  call void @llvm.dbg.value(metadata i32 %need_comma.0, metadata !4899, metadata !DIExpression()), !dbg !4904
  %8 = load i8*, i8** %mangled, align 8, !dbg !4931
  %9 = load i8, i8* %8, align 1, !dbg !4932
  %cmp5 = icmp eq i8 %9, 95, !dbg !4933
  br i1 %cmp5, label %lor.rhs, label %land.lhs.true, !dbg !4934

land.lhs.true:                                    ; preds = %while.cond
  %cmp8 = icmp eq i8 %9, 0, !dbg !4935
  br i1 %cmp8, label %lor.rhs, label %land.lhs.true10, !dbg !4936

land.lhs.true10:                                  ; preds = %land.lhs.true
  %cmp12 = icmp eq i8 %9, 101, !dbg !4937
  br i1 %cmp12, label %lor.rhs, label %lor.end, !dbg !4938

lor.rhs:                                          ; preds = %land.lhs.true10, %land.lhs.true, %while.cond
  %10 = load i32, i32* %nrepeats, align 8, !dbg !4939
  %cmp14 = icmp sgt i32 %10, 0, !dbg !4940
  br label %lor.end, !dbg !4938

lor.end:                                          ; preds = %land.lhs.true10, %lor.rhs
  %11 = phi i1 [ true, %land.lhs.true10 ], [ %cmp14, %lor.rhs ]
  br i1 %11, label %while.body, label %while.end126, !dbg !4929

while.body:                                       ; preds = %lor.end
  %cmp17 = icmp eq i8 %9, 78, !dbg !4941
  br i1 %cmp17, label %if.then22, label %lor.lhs.false, !dbg !4942

lor.lhs.false:                                    ; preds = %while.body
  %cmp20 = icmp eq i8 %9, 84, !dbg !4943
  br i1 %cmp20, label %if.then22, label %if.else108, !dbg !4944

if.then22:                                        ; preds = %lor.lhs.false, %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4945
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !4945
  %12 = load i8, i8* %8, align 1, !dbg !4946
  call void @llvm.dbg.value(metadata i8 %12, metadata !4903, metadata !DIExpression()), !dbg !4904
  %cmp24 = icmp eq i8 %12, 78, !dbg !4947
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !4949

if.then26:                                        ; preds = %if.then22
  call void @llvm.dbg.value(metadata i32* %r, metadata !4900, metadata !DIExpression(DW_OP_deref)), !dbg !4904
  %call = call fastcc i32 @get_count(i8** %mangled, i32* nonnull %r) #8, !dbg !4950
  %tobool27 = icmp eq i32 %call, 0, !dbg !4950
  br i1 %tobool27, label %cleanup.loopexit1, label %if.end30, !dbg !4953

if.else:                                          ; preds = %if.then22
  call void @llvm.dbg.value(metadata i32 1, metadata !4900, metadata !DIExpression()), !dbg !4904
  store i32 1, i32* %r, align 4, !dbg !4954
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.else
  %13 = load i32, i32* %options, align 8, !dbg !4956
  %and32 = and i32 %13, 4096, !dbg !4956
  %tobool33 = icmp eq i32 %and32, 0, !dbg !4956
  br i1 %tobool33, label %lor.lhs.false34, label %land.lhs.true42, !dbg !4957

lor.lhs.false34:                                  ; preds = %if.end30
  %and36 = and i32 %13, 2048, !dbg !4958
  %tobool37 = icmp eq i32 %and36, 0, !dbg !4958
  br i1 %tobool37, label %lor.lhs.false38, label %land.lhs.true42, !dbg !4959

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %and40 = and i32 %13, 8192, !dbg !4960
  %tobool41 = icmp eq i32 %and40, 0, !dbg !4960
  br i1 %tobool41, label %if.else51, label %land.lhs.true42, !dbg !4961

land.lhs.true42:                                  ; preds = %lor.lhs.false38, %lor.lhs.false34, %if.end30
  %14 = load i32, i32* %ntypes, align 8, !dbg !4962
  %cmp43 = icmp sgt i32 %14, 9, !dbg !4963
  br i1 %cmp43, label %if.then45, label %if.else51, !dbg !4964

if.then45:                                        ; preds = %land.lhs.true42
  %call46 = call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !4965
  call void @llvm.dbg.value(metadata i32 %call46, metadata !4901, metadata !DIExpression()), !dbg !4904
  store i32 %call46, i32* %t, align 4, !dbg !4968
  %cmp47 = icmp slt i32 %call46, 1, !dbg !4969
  br i1 %cmp47, label %cleanup.loopexit1, label %if.end56, !dbg !4970

if.else51:                                        ; preds = %lor.lhs.false38, %land.lhs.true42
  call void @llvm.dbg.value(metadata i32* %t, metadata !4901, metadata !DIExpression(DW_OP_deref)), !dbg !4904
  %call52 = call fastcc i32 @get_count(i8** %mangled, i32* nonnull %t) #8, !dbg !4971
  %tobool53 = icmp eq i32 %call52, 0, !dbg !4971
  br i1 %tobool53, label %cleanup.loopexit1, label %if.end56, !dbg !4974

if.end56:                                         ; preds = %if.else51, %if.then45
  %15 = load i32, i32* %options, align 8, !dbg !4975
  %and58 = and i32 %15, 1024, !dbg !4975
  %tobool59 = icmp eq i32 %and58, 0, !dbg !4975
  br i1 %tobool59, label %lor.lhs.false60, label %if.then72, !dbg !4977

lor.lhs.false60:                                  ; preds = %if.end56
  %and62 = and i32 %15, 2048, !dbg !4978
  %tobool63 = icmp eq i32 %and62, 0, !dbg !4978
  br i1 %tobool63, label %lor.lhs.false64, label %if.then72, !dbg !4979

lor.lhs.false64:                                  ; preds = %lor.lhs.false60
  %and66 = and i32 %15, 4096, !dbg !4980
  %tobool67 = icmp eq i32 %and66, 0, !dbg !4980
  br i1 %tobool67, label %lor.lhs.false68, label %if.then72, !dbg !4981

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %and70 = and i32 %15, 8192, !dbg !4982
  %tobool71 = icmp eq i32 %and70, 0, !dbg !4982
  br i1 %tobool71, label %lor.lhs.false68.if.end73_crit_edge, label %if.then72, !dbg !4983

lor.lhs.false68.if.end73_crit_edge:               ; preds = %lor.lhs.false68
  %.pre = load i32, i32* %t, align 4, !dbg !4984
  br label %if.end73, !dbg !4983

if.then72:                                        ; preds = %lor.lhs.false68, %lor.lhs.false64, %lor.lhs.false60, %if.end56
  %16 = load i32, i32* %t, align 4, !dbg !4986
  call void @llvm.dbg.value(metadata i32 %16, metadata !4901, metadata !DIExpression()), !dbg !4904
  %dec = add nsw i32 %16, -1, !dbg !4986
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4901, metadata !DIExpression()), !dbg !4904
  store i32 %dec, i32* %t, align 4, !dbg !4986
  br label %if.end73, !dbg !4988

if.end73:                                         ; preds = %lor.lhs.false68.if.end73_crit_edge, %if.then72
  %17 = phi i32 [ %.pre, %lor.lhs.false68.if.end73_crit_edge ], [ %dec, %if.then72 ], !dbg !4984
  call void @llvm.dbg.value(metadata i32 %17, metadata !4901, metadata !DIExpression()), !dbg !4904
  %cmp74 = icmp slt i32 %17, 0, !dbg !4989
  br i1 %cmp74, label %cleanup.loopexit1, label %lor.lhs.false76, !dbg !4990

lor.lhs.false76:                                  ; preds = %if.end73
  call void @llvm.dbg.value(metadata i32 %17, metadata !4901, metadata !DIExpression()), !dbg !4904
  %18 = load i32, i32* %ntypes, align 8, !dbg !4991
  %cmp78 = icmp slt i32 %17, %18, !dbg !4992
  br i1 %cmp78, label %while.cond82.preheader, label %cleanup.loopexit1, !dbg !4993

while.cond82.preheader:                           ; preds = %lor.lhs.false76
  br label %while.cond82, !dbg !4994

while.cond82:                                     ; preds = %while.cond82.preheader, %if.end107
  %need_comma.1 = phi i32 [ 1, %if.end107 ], [ %need_comma.0, %while.cond82.preheader ], !dbg !4904
  call void @llvm.dbg.value(metadata i32 %need_comma.1, metadata !4899, metadata !DIExpression()), !dbg !4904
  %19 = load i32, i32* %nrepeats, align 8, !dbg !4995
  %cmp84 = icmp sgt i32 %19, 0, !dbg !4996
  br i1 %cmp84, label %while.body91, label %lor.rhs86, !dbg !4997

lor.rhs86:                                        ; preds = %while.cond82
  %20 = load i32, i32* %r, align 4, !dbg !4998
  call void @llvm.dbg.value(metadata i32 %20, metadata !4900, metadata !DIExpression()), !dbg !4904
  %dec87 = add nsw i32 %20, -1, !dbg !4998
  call void @llvm.dbg.value(metadata i32 %dec87, metadata !4900, metadata !DIExpression()), !dbg !4904
  store i32 %dec87, i32* %r, align 4, !dbg !4998
  %cmp88 = icmp sgt i32 %20, 0, !dbg !4999
  br i1 %cmp88, label %while.body91, label %if.end125.loopexit, !dbg !4994

while.body91:                                     ; preds = %while.cond82, %lor.rhs86
  %21 = load i8**, i8*** %typevec, align 8, !dbg !5000
  %22 = load i32, i32* %t, align 4, !dbg !5001
  call void @llvm.dbg.value(metadata i32 %22, metadata !4901, metadata !DIExpression()), !dbg !4904
  %idxprom = sext i32 %22 to i64, !dbg !5002
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %idxprom, !dbg !5002
  %23 = bitcast i8** %arrayidx to i64*, !dbg !5002
  %24 = load i64, i64* %23, align 8, !dbg !5002
  store i64 %24, i64* %7, align 8, !dbg !5003
  %tobool92 = icmp eq i32 %need_comma.1, 0, !dbg !5004
  br i1 %tobool92, label %if.end98, label %land.lhs.true93, !dbg !5006

land.lhs.true93:                                  ; preds = %while.body91
  %25 = load i32, i32* %options, align 8, !dbg !5007
  %and95 = and i32 %25, 1, !dbg !5007
  %tobool96 = icmp eq i32 %and95, 0, !dbg !5007
  br i1 %tobool96, label %if.end98, label %if.then97, !dbg !5008

if.then97:                                        ; preds = %land.lhs.true93
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i64 0, i64 0)) #8, !dbg !5009
  br label %if.end98, !dbg !5011

if.end98:                                         ; preds = %land.lhs.true93, %while.body91, %if.then97
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !4898, metadata !DIExpression(DW_OP_deref)), !dbg !4904
  call void @llvm.dbg.value(metadata i8** %tem, metadata !4902, metadata !DIExpression(DW_OP_deref)), !dbg !4904
  %call99 = call fastcc i32 @do_arg(%struct.work_stuff* %work, i8** nonnull %tem, %struct.string* nonnull %arg) #8, !dbg !5012
  %tobool100 = icmp eq i32 %call99, 0, !dbg !5012
  br i1 %tobool100, label %cleanup.loopexit, label %if.end102, !dbg !5014

if.end102:                                        ; preds = %if.end98
  %26 = load i32, i32* %options, align 8, !dbg !5015
  %and104 = and i32 %26, 1, !dbg !5015
  %tobool105 = icmp eq i32 %and104, 0, !dbg !5015
  br i1 %tobool105, label %if.end107, label %if.then106, !dbg !5017

if.then106:                                       ; preds = %if.end102
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !4898, metadata !DIExpression(DW_OP_deref)), !dbg !4904
  call fastcc void @string_appends(%struct.string* %declp, %struct.string* nonnull %arg) #8, !dbg !5018
  br label %if.end107, !dbg !5020

if.end107:                                        ; preds = %if.end102, %if.then106
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !4898, metadata !DIExpression(DW_OP_deref)), !dbg !4904
  call fastcc void @string_delete(%struct.string* nonnull %arg) #8, !dbg !5021
  call void @llvm.dbg.value(metadata i32 1, metadata !4899, metadata !DIExpression()), !dbg !4904
  br label %while.cond82, !dbg !4994, !llvm.loop !5022

if.else108:                                       ; preds = %lor.lhs.false
  %tobool109 = icmp eq i32 %need_comma.0, 0, !dbg !5024
  br i1 %tobool109, label %if.end115, label %land.lhs.true110, !dbg !5027

land.lhs.true110:                                 ; preds = %if.else108
  %27 = load i32, i32* %options, align 8, !dbg !5028
  %and112 = and i32 %27, 1, !dbg !5028
  %tobool113 = icmp eq i32 %and112, 0, !dbg !5028
  br i1 %tobool113, label %if.end115, label %if.then114, !dbg !5029

if.then114:                                       ; preds = %land.lhs.true110
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i64 0, i64 0)) #8, !dbg !5030
  br label %if.end115, !dbg !5030

if.end115:                                        ; preds = %land.lhs.true110, %if.else108, %if.then114
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !4898, metadata !DIExpression(DW_OP_deref)), !dbg !4904
  %call116 = call fastcc i32 @do_arg(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %arg) #8, !dbg !5031
  %tobool117 = icmp eq i32 %call116, 0, !dbg !5031
  br i1 %tobool117, label %cleanup.loopexit1, label %if.end119, !dbg !5033

if.end119:                                        ; preds = %if.end115
  %28 = load i32, i32* %options, align 8, !dbg !5034
  %and121 = and i32 %28, 1, !dbg !5034
  %tobool122 = icmp eq i32 %and121, 0, !dbg !5034
  br i1 %tobool122, label %if.end124, label %if.then123, !dbg !5036

if.then123:                                       ; preds = %if.end119
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !4898, metadata !DIExpression(DW_OP_deref)), !dbg !4904
  call fastcc void @string_appends(%struct.string* %declp, %struct.string* nonnull %arg) #8, !dbg !5037
  br label %if.end124, !dbg !5037

if.end124:                                        ; preds = %if.end119, %if.then123
  call void @llvm.dbg.value(metadata %struct.string* %arg, metadata !4898, metadata !DIExpression(DW_OP_deref)), !dbg !4904
  call fastcc void @string_delete(%struct.string* nonnull %arg) #8, !dbg !5038
  call void @llvm.dbg.value(metadata i32 1, metadata !4899, metadata !DIExpression()), !dbg !4904
  br label %if.end125

if.end125.loopexit:                               ; preds = %lor.rhs86
  %need_comma.1.lcssa = phi i32 [ %need_comma.1, %lor.rhs86 ], !dbg !4904
  call void @llvm.dbg.value(metadata i32 %need_comma.1.lcssa, metadata !4899, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 %need_comma.1.lcssa, metadata !4899, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 %need_comma.1.lcssa, metadata !4899, metadata !DIExpression()), !dbg !4904
  br label %if.end125, !dbg !4929

if.end125:                                        ; preds = %if.end125.loopexit, %if.end124
  %need_comma.2 = phi i32 [ 1, %if.end124 ], [ %need_comma.1.lcssa, %if.end125.loopexit ], !dbg !4904
  call void @llvm.dbg.value(metadata i32 %need_comma.2, metadata !4899, metadata !DIExpression()), !dbg !4904
  br label %while.cond, !dbg !4929, !llvm.loop !5039

while.end126:                                     ; preds = %lor.end
  %need_comma.0.lcssa = phi i32 [ %need_comma.0, %lor.end ], !dbg !4930
  %.lcssa18 = phi i8* [ %8, %lor.end ], !dbg !4931
  %.lcssa = phi i8 [ %9, %lor.end ], !dbg !4932
  call void @llvm.dbg.value(metadata i32 %need_comma.0.lcssa, metadata !4899, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 %need_comma.0.lcssa, metadata !4899, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 %need_comma.0.lcssa, metadata !4899, metadata !DIExpression()), !dbg !4904
  %cmp128 = icmp eq i8 %.lcssa, 101, !dbg !5041
  br i1 %cmp128, label %if.then130, label %if.end140, !dbg !5043

if.then130:                                       ; preds = %while.end126
  %incdec.ptr131 = getelementptr inbounds i8, i8* %.lcssa18, i64 1, !dbg !5044
  store i8* %incdec.ptr131, i8** %mangled, align 8, !dbg !5044
  %29 = load i32, i32* %options, align 8, !dbg !5046
  %and133 = and i32 %29, 1, !dbg !5046
  %tobool134 = icmp eq i32 %and133, 0, !dbg !5046
  br i1 %tobool134, label %if.end140, label %if.then135, !dbg !5048

if.then135:                                       ; preds = %if.then130
  %tobool136 = icmp eq i32 %need_comma.0.lcssa, 0, !dbg !5049
  br i1 %tobool136, label %if.end138, label %if.then137, !dbg !5052

if.then137:                                       ; preds = %if.then135
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.217, i64 0, i64 0)) #8, !dbg !5053
  br label %if.end138, !dbg !5055

if.end138:                                        ; preds = %if.then135, %if.then137
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.229, i64 0, i64 0)) #8, !dbg !5056
  br label %if.end140, !dbg !5057

if.end140:                                        ; preds = %if.then130, %if.end138, %while.end126
  %30 = load i32, i32* %options, align 8, !dbg !5058
  %and142 = and i32 %30, 1, !dbg !5058
  %tobool143 = icmp eq i32 %and142, 0, !dbg !5058
  br i1 %tobool143, label %cleanup, label %if.then144, !dbg !5060

if.then144:                                       ; preds = %if.end140
  call fastcc void @string_append(%struct.string* %declp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i64 0, i64 0)) #8, !dbg !5061
  br label %cleanup, !dbg !5063

cleanup.loopexit:                                 ; preds = %if.end98
  br label %cleanup, !dbg !5064

cleanup.loopexit1:                                ; preds = %if.then45, %if.end73, %if.end115, %if.else51, %lor.lhs.false76, %if.then26
  br label %cleanup, !dbg !5064

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit, %if.end140, %if.then144
  %retval.0 = phi i32 [ 1, %if.then144 ], [ 1, %if.end140 ], [ 0, %cleanup.loopexit ], [ 0, %cleanup.loopexit1 ], !dbg !4904
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !5064
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7, !dbg !5064
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !5064
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !5064
  ret i32 %retval.0, !dbg !5064
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @qualifier_string(i32 %type_quals) unnamed_addr #5 !dbg !5065 {
entry:
  call void @llvm.dbg.value(metadata i32 %type_quals, metadata !5069, metadata !DIExpression()), !dbg !5070
  switch i32 %type_quals, label %sw.epilog [
    i32 0, label %return
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 3, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
  ], !dbg !5071

sw.bb1:                                           ; preds = %entry
  br label %return, !dbg !5072

sw.bb2:                                           ; preds = %entry
  br label %return, !dbg !5074

sw.bb3:                                           ; preds = %entry
  br label %return, !dbg !5075

sw.bb4:                                           ; preds = %entry
  br label %return, !dbg !5076

sw.bb5:                                           ; preds = %entry
  br label %return, !dbg !5077

sw.bb6:                                           ; preds = %entry
  br label %return, !dbg !5078

sw.bb7:                                           ; preds = %entry
  br label %return, !dbg !5079

sw.epilog:                                        ; preds = %entry
  tail call void @abort() #6, !dbg !5080
  br label %return, !dbg !5081

return:                                           ; preds = %entry, %sw.epilog, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ undef, %sw.epilog ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.236, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.235, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.234, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.233, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.232, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.231, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.230, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.178, i64 0, i64 0), %entry ]
  ret i8* %retval.0, !dbg !5081
}

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_class_name(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) unnamed_addr #5 !dbg !5082 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !5084, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !5085, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !5086, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 0, metadata !5088, metadata !DIExpression()), !dbg !5089
  %call = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !5090
  call void @llvm.dbg.value(metadata i32 %call, metadata !5087, metadata !DIExpression()), !dbg !5089
  %cmp = icmp eq i32 %call, -1, !dbg !5091
  br i1 %cmp, label %cleanup, label %if.end, !dbg !5093

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** %mangled, align 8, !dbg !5094
  %call1 = tail call i64 @strlen(i8* %0) #6, !dbg !5096
  %conv = trunc i64 %call1 to i32, !dbg !5097
  %cmp2 = icmp sgt i32 %call, %conv, !dbg !5098
  br i1 %cmp2, label %cleanup, label %if.then4, !dbg !5099

if.then4:                                         ; preds = %if.end
  tail call fastcc void @demangle_arm_hp_template(%struct.work_stuff* %work, i8** %mangled, i32 %call, %struct.string* %declp) #8, !dbg !5100
  call void @llvm.dbg.value(metadata i32 1, metadata !5088, metadata !DIExpression()), !dbg !5089
  br label %cleanup, !dbg !5102

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then4 ], [ 0, %if.end ], !dbg !5089
  ret i32 %retval.0, !dbg !5103
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_arg(%struct.work_stuff* %work, i8** %mangled, %struct.string* %result) unnamed_addr #5 !dbg !5104 {
entry:
  %nrepeats = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 20, !dbg !5110
  br label %tailrecurse, !dbg !5112

tailrecurse:                                      ; preds = %if.end25, %entry
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !5106, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !5107, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.value(metadata %struct.string* %result, metadata !5108, metadata !DIExpression()), !dbg !5115
  %0 = load i8*, i8** %mangled, align 8, !dbg !5116
  call void @llvm.dbg.value(metadata i8* %0, metadata !5109, metadata !DIExpression()), !dbg !5115
  tail call fastcc void @string_init(%struct.string* %result) #8, !dbg !5117
  %1 = load i32, i32* %nrepeats, align 8, !dbg !5118
  %cmp = icmp sgt i32 %1, 0, !dbg !5119
  br i1 %cmp, label %if.then, label %if.end5, !dbg !5120

if.then:                                          ; preds = %tailrecurse
  %.lcssa = phi i32 [ %1, %tailrecurse ], !dbg !5118
  %dec = add nsw i32 %.lcssa, -1, !dbg !5121
  store i32 %dec, i32* %nrepeats, align 8, !dbg !5121
  %previous_argument = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 19, !dbg !5123
  %2 = load %struct.string*, %struct.string** %previous_argument, align 8, !dbg !5123
  %cmp2 = icmp eq %struct.string* %2, null, !dbg !5125
  br i1 %cmp2, label %cleanup, label %if.end, !dbg !5126

if.end:                                           ; preds = %if.then
  tail call fastcc void @string_appends(%struct.string* %result, %struct.string* nonnull %2) #8, !dbg !5127
  br label %cleanup, !dbg !5128

if.end5:                                          ; preds = %tailrecurse
  %3 = load i8*, i8** %mangled, align 8, !dbg !5129
  %4 = load i8, i8* %3, align 1, !dbg !5130
  %cmp6 = icmp eq i8 %4, 110, !dbg !5131
  br i1 %cmp6, label %if.then8, label %if.end27, !dbg !5132

if.then8:                                         ; preds = %if.end5
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i64 1, !dbg !5133
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !5133
  %call = tail call fastcc i32 @consume_count(i8** %mangled) #8, !dbg !5134
  store i32 %call, i32* %nrepeats, align 8, !dbg !5135
  %cmp11 = icmp slt i32 %call, 1, !dbg !5136
  br i1 %cmp11, label %cleanup.loopexit, label %if.end14, !dbg !5138

if.end14:                                         ; preds = %if.then8
  %cmp16 = icmp sgt i32 %call, 9, !dbg !5139
  br i1 %cmp16, label %if.then18, label %if.end25, !dbg !5141

if.then18:                                        ; preds = %if.end14
  %5 = load i8*, i8** %mangled, align 8, !dbg !5142
  %6 = load i8, i8* %5, align 1, !dbg !5145
  %cmp20 = icmp eq i8 %6, 95, !dbg !5146
  br i1 %cmp20, label %if.else, label %cleanup.loopexit, !dbg !5147

if.else:                                          ; preds = %if.then18
  %incdec.ptr23 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !5148
  store i8* %incdec.ptr23, i8** %mangled, align 8, !dbg !5148
  br label %if.end25, !dbg !5149

if.end25:                                         ; preds = %if.else, %if.end14
  br label %tailrecurse, !dbg !5112

if.end27:                                         ; preds = %if.end5
  %.lcssa11 = phi i8* [ %0, %if.end5 ], !dbg !5116
  %previous_argument28 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 19, !dbg !5150
  %7 = load %struct.string*, %struct.string** %previous_argument28, align 8, !dbg !5150
  %tobool = icmp eq %struct.string* %7, null, !dbg !5152
  br i1 %tobool, label %if.else31, label %if.then29, !dbg !5153

if.then29:                                        ; preds = %if.end27
  tail call fastcc void @string_delete(%struct.string* nonnull %7) #8, !dbg !5154
  %.pre = load %struct.string*, %struct.string** %previous_argument28, align 8, !dbg !5155
  br label %if.end34, !dbg !5154

if.else31:                                        ; preds = %if.end27
  %call32 = tail call i8* @xmalloc(i64 24) #6, !dbg !5157
  %8 = bitcast %struct.string** %previous_argument28 to i8**, !dbg !5158
  store i8* %call32, i8** %8, align 8, !dbg !5158
  %9 = bitcast i8* %call32 to %struct.string*
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then29
  %10 = phi %struct.string* [ %9, %if.else31 ], [ %.pre, %if.then29 ], !dbg !5155
  %call36 = tail call fastcc i32 @do_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* %10) #8, !dbg !5159
  %tobool37 = icmp eq i32 %call36, 0, !dbg !5159
  br i1 %tobool37, label %cleanup, label %if.end39, !dbg !5160

if.end39:                                         ; preds = %if.end34
  %11 = load %struct.string*, %struct.string** %previous_argument28, align 8, !dbg !5161
  tail call fastcc void @string_appends(%struct.string* %result, %struct.string* %11) #8, !dbg !5162
  %12 = bitcast i8** %mangled to i64*, !dbg !5163
  %13 = load i64, i64* %12, align 8, !dbg !5163
  %sub.ptr.rhs.cast = ptrtoint i8* %.lcssa11 to i64, !dbg !5164
  %sub.ptr.sub = sub i64 %13, %sub.ptr.rhs.cast, !dbg !5164
  %conv41 = trunc i64 %sub.ptr.sub to i32, !dbg !5163
  tail call fastcc void @remember_type(%struct.work_stuff* %work, i8* %.lcssa11, i32 %conv41) #8, !dbg !5165
  br label %cleanup, !dbg !5166

cleanup.loopexit:                                 ; preds = %if.then8, %if.then18
  br label %cleanup, !dbg !5167

cleanup:                                          ; preds = %cleanup.loopexit, %if.end34, %if.then, %if.end39, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 1, %if.end39 ], [ 0, %if.then ], [ 0, %if.end34 ], [ 0, %cleanup.loopexit ], !dbg !5115
  ret i32 %retval.0, !dbg !5167
}

; Function Attrs: nounwind uwtable
define internal fastcc void @forget_B_and_K_types(%struct.work_stuff* %work) unnamed_addr #5 !dbg !5168 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !5170, metadata !DIExpression()), !dbg !5172
  %numk = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 4, !dbg !5172
  %ktypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 2, !dbg !5173
  br label %while.cond, !dbg !5176

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %numk, align 8, !dbg !5177
  %cmp = icmp sgt i32 %0, 0, !dbg !5178
  br i1 %cmp, label %while.body, label %while.cond9.preheader, !dbg !5176

while.cond9.preheader:                            ; preds = %while.cond
  %numb = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 5, !dbg !5172
  %btypevec = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 3, !dbg !5179
  br label %while.cond9, !dbg !5182

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %0, -1, !dbg !5183
  store i32 %dec, i32* %numk, align 8, !dbg !5183
  call void @llvm.dbg.value(metadata i32 %dec, metadata !5171, metadata !DIExpression()), !dbg !5172
  %1 = load i8**, i8*** %ktypevec, align 8, !dbg !5184
  %idxprom = sext i32 %dec to i64, !dbg !5185
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom, !dbg !5185
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !5185
  %cmp2 = icmp eq i8* %2, null, !dbg !5186
  br i1 %cmp2, label %if.end, label %if.then, !dbg !5187

if.then:                                          ; preds = %while.body
  tail call void @free(i8* nonnull %2) #6, !dbg !5188
  %3 = load i8**, i8*** %ktypevec, align 8, !dbg !5190
  %arrayidx8 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !5191
  store i8* null, i8** %arrayidx8, align 8, !dbg !5192
  br label %if.end, !dbg !5193

if.end:                                           ; preds = %while.body, %if.then
  br label %while.cond, !dbg !5176, !llvm.loop !5194

while.cond9:                                      ; preds = %while.cond9.preheader, %if.end24
  %4 = load i32, i32* %numb, align 4, !dbg !5196
  %cmp10 = icmp sgt i32 %4, 0, !dbg !5197
  br i1 %cmp10, label %while.body11, label %while.end25, !dbg !5182

while.body11:                                     ; preds = %while.cond9
  %dec13 = add nsw i32 %4, -1, !dbg !5198
  store i32 %dec13, i32* %numb, align 4, !dbg !5198
  call void @llvm.dbg.value(metadata i32 %dec13, metadata !5171, metadata !DIExpression()), !dbg !5172
  %5 = load i8**, i8*** %btypevec, align 8, !dbg !5199
  %idxprom14 = sext i32 %dec13 to i64, !dbg !5200
  %arrayidx15 = getelementptr inbounds i8*, i8** %5, i64 %idxprom14, !dbg !5200
  %6 = load i8*, i8** %arrayidx15, align 8, !dbg !5200
  %cmp16 = icmp eq i8* %6, null, !dbg !5201
  br i1 %cmp16, label %if.end24, label %if.then17, !dbg !5202

if.then17:                                        ; preds = %while.body11
  tail call void @free(i8* nonnull %6) #6, !dbg !5203
  %7 = load i8**, i8*** %btypevec, align 8, !dbg !5205
  %arrayidx23 = getelementptr inbounds i8*, i8** %7, i64 %idxprom14, !dbg !5206
  store i8* null, i8** %arrayidx23, align 8, !dbg !5207
  br label %if.end24, !dbg !5208

if.end24:                                         ; preds = %while.body11, %if.then17
  br label %while.cond9, !dbg !5182, !llvm.loop !5209

while.end25:                                      ; preds = %while.cond9
  ret void, !dbg !5211
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_nested_args(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) unnamed_addr #5 !dbg !5212 {
entry:
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !5214, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !5215, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata %struct.string* %declp, metadata !5216, metadata !DIExpression()), !dbg !5220
  %forgetting_types = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 18, !dbg !5221
  %0 = load i32, i32* %forgetting_types, align 4, !dbg !5222
  %inc = add nsw i32 %0, 1, !dbg !5222
  store i32 %inc, i32* %forgetting_types, align 4, !dbg !5222
  %previous_argument = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 19, !dbg !5223
  %1 = bitcast %struct.string** %previous_argument to i64*, !dbg !5223
  %2 = load i64, i64* %1, align 8, !dbg !5223
  %nrepeats = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 20, !dbg !5224
  %3 = load i32, i32* %nrepeats, align 8, !dbg !5224
  call void @llvm.dbg.value(metadata i32 %3, metadata !5219, metadata !DIExpression()), !dbg !5220
  store %struct.string* null, %struct.string** %previous_argument, align 8, !dbg !5225
  store i32 0, i32* %nrepeats, align 8, !dbg !5226
  %call = tail call fastcc i32 @demangle_args(%struct.work_stuff* %work, i8** %mangled, %struct.string* %declp) #8, !dbg !5227
  call void @llvm.dbg.value(metadata i32 %call, metadata !5218, metadata !DIExpression()), !dbg !5220
  %4 = load %struct.string*, %struct.string** %previous_argument, align 8, !dbg !5228
  %tobool = icmp eq %struct.string* %4, null, !dbg !5230
  br i1 %tobool, label %if.end, label %if.then, !dbg !5231

if.then:                                          ; preds = %entry
  tail call fastcc void @string_delete(%struct.string* nonnull %4) #8, !dbg !5232
  %5 = bitcast %struct.string** %previous_argument to i8**, !dbg !5234
  %6 = load i8*, i8** %5, align 8, !dbg !5234
  tail call void @free(i8* %6) #6, !dbg !5235
  br label %if.end, !dbg !5236

if.end:                                           ; preds = %entry, %if.then
  store i64 %2, i64* %1, align 8, !dbg !5237
  %7 = load i32, i32* %forgetting_types, align 4, !dbg !5238
  %dec = add nsw i32 %7, -1, !dbg !5238
  store i32 %dec, i32* %forgetting_types, align 4, !dbg !5238
  store i32 %3, i32* %nrepeats, align 8, !dbg !5239
  ret i32 %call, !dbg !5240
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @demangle_qualifier(i32 %c) unnamed_addr #5 !dbg !5241 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !5243, metadata !DIExpression()), !dbg !5244
  %call = tail call fastcc i32 @code_for_qualifier(i32 %c) #8, !dbg !5245
  %call1 = tail call fastcc i8* @qualifier_string(i32 %call) #8, !dbg !5246
  ret i8* %call1, !dbg !5247
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @demangle_fund_type(%struct.work_stuff* %work, i8** %mangled, %struct.string* %result) unnamed_addr #5 !dbg !5248 {
entry:
  %buf = alloca [37 x i8], align 16
  %dec = alloca i32, align 4
  %btype = alloca %struct.string, align 8
  %btype201 = alloca %struct.string, align 8
  call void @llvm.dbg.value(metadata %struct.work_stuff* %work, metadata !5250, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.value(metadata i8** %mangled, metadata !5251, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.value(metadata %struct.string* %result, metadata !5252, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.value(metadata i32 0, metadata !5253, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.value(metadata i32 1, metadata !5254, metadata !DIExpression()), !dbg !5270
  %0 = getelementptr inbounds [37 x i8], [37 x i8]* %buf, i64 0, i64 0, !dbg !5271
  call void @llvm.lifetime.start.p0i8(i64 37, i8* nonnull %0) #7, !dbg !5271
  call void @llvm.dbg.declare(metadata [37 x i8]* %buf, metadata !5255, metadata !DIExpression()), !dbg !5272
  %1 = bitcast i32* %dec to i8*, !dbg !5273
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !5273
  call void @llvm.dbg.value(metadata i32 0, metadata !5259, metadata !DIExpression()), !dbg !5270
  store i32 0, i32* %dec, align 4, !dbg !5274
  call void @llvm.dbg.value(metadata i32 3, metadata !5260, metadata !DIExpression()), !dbg !5270
  %b24 = getelementptr inbounds %struct.string, %struct.string* %result, i64 0, i32 0, !dbg !5275
  %p25 = getelementptr inbounds %struct.string, %struct.string* %result, i64 0, i32 1, !dbg !5275
  %options = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %work, i64 0, i32 0, !dbg !5280
  br label %while.cond, !dbg !5282

while.cond:                                       ; preds = %sw.epilog, %entry
  %done.0 = phi i32 [ 0, %entry ], [ %done.1, %sw.epilog ], !dbg !5270
  call void @llvm.dbg.value(metadata i32 %done.0, metadata !5253, metadata !DIExpression()), !dbg !5270
  %tobool = icmp eq i32 %done.0, 0, !dbg !5283
  %2 = load i8*, i8** %mangled, align 8, !dbg !5270
  %3 = load i8, i8* %2, align 1, !dbg !5270
  br i1 %tobool, label %while.body, label %while.end, !dbg !5282

while.body:                                       ; preds = %while.cond
  %conv = sext i8 %3 to i32, !dbg !5270
  switch i32 %conv, label %sw.epilog [
    i32 67, label %sw.bb
    i32 86, label %sw.bb
    i32 117, label %sw.bb
    i32 85, label %sw.bb6
    i32 83, label %sw.bb14
    i32 74, label %sw.bb22
  ], !dbg !5284

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  %4 = load i32, i32* %options, align 8, !dbg !5285
  %and = and i32 %4, 2, !dbg !5285
  %tobool1 = icmp eq i32 %and, 0, !dbg !5285
  br i1 %tobool1, label %if.end5, label %if.then, !dbg !5286

if.then:                                          ; preds = %sw.bb
  %5 = load i8*, i8** %b24, align 8, !dbg !5287
  %6 = load i8*, i8** %p25, align 8, !dbg !5287
  %cmp = icmp eq i8* %5, %6, !dbg !5287
  br i1 %cmp, label %if.end, label %if.then3, !dbg !5290

if.then3:                                         ; preds = %if.then
  tail call fastcc void @string_prepend(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5291
  %.pre2 = load i8*, i8** %mangled, align 8, !dbg !5292
  %.pre3 = load i8, i8* %.pre2, align 1, !dbg !5293
  %.pre5 = sext i8 %.pre3 to i32, !dbg !5293
  br label %if.end, !dbg !5291

if.end:                                           ; preds = %if.then3, %if.then
  %conv4.pre-phi = phi i32 [ %.pre5, %if.then3 ], [ %conv, %if.then ], !dbg !5293
  %call = tail call fastcc i8* @demangle_qualifier(i32 %conv4.pre-phi) #8, !dbg !5294
  tail call fastcc void @string_prepend(%struct.string* %result, i8* %call) #8, !dbg !5295
  %.pre4 = load i8*, i8** %mangled, align 8, !dbg !5296
  br label %if.end5, !dbg !5297

if.end5:                                          ; preds = %sw.bb, %if.end
  %7 = phi i8* [ %2, %sw.bb ], [ %.pre4, %if.end ], !dbg !5296
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i64 1, !dbg !5296
  store i8* %incdec.ptr, i8** %mangled, align 8, !dbg !5296
  br label %sw.epilog, !dbg !5298

sw.bb6:                                           ; preds = %while.body
  %incdec.ptr7 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5299
  store i8* %incdec.ptr7, i8** %mangled, align 8, !dbg !5299
  %8 = load i8*, i8** %b24, align 8, !dbg !5300
  %9 = load i8*, i8** %p25, align 8, !dbg !5300
  %cmp10 = icmp eq i8* %8, %9, !dbg !5300
  br i1 %cmp10, label %if.end13, label %if.then12, !dbg !5303

if.then12:                                        ; preds = %sw.bb6
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5300
  br label %if.end13, !dbg !5300

if.end13:                                         ; preds = %if.then12, %sw.bb6
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.239, i64 0, i64 0)) #8, !dbg !5304
  br label %sw.epilog, !dbg !5305

sw.bb14:                                          ; preds = %while.body
  %incdec.ptr15 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5306
  store i8* %incdec.ptr15, i8** %mangled, align 8, !dbg !5306
  %10 = load i8*, i8** %b24, align 8, !dbg !5307
  %11 = load i8*, i8** %p25, align 8, !dbg !5307
  %cmp18 = icmp eq i8* %10, %11, !dbg !5307
  br i1 %cmp18, label %if.end21, label %if.then20, !dbg !5310

if.then20:                                        ; preds = %sw.bb14
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5307
  br label %if.end21, !dbg !5307

if.end21:                                         ; preds = %if.then20, %sw.bb14
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.240, i64 0, i64 0)) #8, !dbg !5311
  br label %sw.epilog, !dbg !5312

sw.bb22:                                          ; preds = %while.body
  %incdec.ptr23 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5313
  store i8* %incdec.ptr23, i8** %mangled, align 8, !dbg !5313
  %12 = load i8*, i8** %b24, align 8, !dbg !5314
  %13 = load i8*, i8** %p25, align 8, !dbg !5314
  %cmp26 = icmp eq i8* %12, %13, !dbg !5314
  br i1 %cmp26, label %if.end29, label %if.then28, !dbg !5315

if.then28:                                        ; preds = %sw.bb22
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5314
  br label %if.end29, !dbg !5314

if.end29:                                         ; preds = %if.then28, %sw.bb22
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.241, i64 0, i64 0)) #8, !dbg !5316
  br label %sw.epilog, !dbg !5317

sw.epilog:                                        ; preds = %while.body, %if.end29, %if.end21, %if.end13, %if.end5
  %done.1 = phi i32 [ 0, %if.end29 ], [ 0, %if.end21 ], [ 0, %if.end13 ], [ 0, %if.end5 ], [ 1, %while.body ], !dbg !5270
  call void @llvm.dbg.value(metadata i32 %done.1, metadata !5253, metadata !DIExpression()), !dbg !5270
  br label %while.cond, !dbg !5282, !llvm.loop !5318

while.end:                                        ; preds = %while.cond
  %.lcssa11 = phi i8* [ %2, %while.cond ], !dbg !5270
  %.lcssa10 = phi i8 [ %3, %while.cond ], !dbg !5270
  %conv.le = sext i8 %.lcssa10 to i32, !dbg !5270
  switch i32 %conv.le, label %sw.default204 [
    i32 0, label %sw.epilog205
    i32 95, label %sw.epilog205
    i32 118, label %sw.bb32
    i32 120, label %sw.bb40
    i32 108, label %sw.bb48
    i32 105, label %sw.bb56
    i32 115, label %sw.bb64
    i32 98, label %sw.bb72
    i32 99, label %sw.bb80
    i32 119, label %sw.bb88
    i32 114, label %sw.bb96
    i32 100, label %sw.bb104
    i32 102, label %sw.bb112
    i32 71, label %sw.bb120
    i32 73, label %sw.bb129
    i32 48, label %sw.bb173
    i32 49, label %sw.bb173
    i32 50, label %sw.bb173
    i32 51, label %sw.bb173
    i32 52, label %sw.bb173
    i32 53, label %sw.bb173
    i32 54, label %sw.bb173
    i32 55, label %sw.bb173
    i32 56, label %sw.bb173
    i32 57, label %sw.bb173
    i32 116, label %sw.bb200
  ], !dbg !5320

sw.bb32:                                          ; preds = %while.end
  %incdec.ptr33 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5321
  store i8* %incdec.ptr33, i8** %mangled, align 8, !dbg !5321
  %14 = load i8*, i8** %b24, align 8, !dbg !5322
  %15 = load i8*, i8** %p25, align 8, !dbg !5322
  %cmp36 = icmp eq i8* %14, %15, !dbg !5322
  br i1 %cmp36, label %if.end39, label %if.then38, !dbg !5325

if.then38:                                        ; preds = %sw.bb32
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5322
  br label %if.end39, !dbg !5322

if.end39:                                         ; preds = %if.then38, %sw.bb32
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.228, i64 0, i64 0)) #8, !dbg !5326
  br label %sw.epilog205, !dbg !5327

sw.bb40:                                          ; preds = %while.end
  %incdec.ptr41 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5328
  store i8* %incdec.ptr41, i8** %mangled, align 8, !dbg !5328
  %16 = load i8*, i8** %b24, align 8, !dbg !5329
  %17 = load i8*, i8** %p25, align 8, !dbg !5329
  %cmp44 = icmp eq i8* %16, %17, !dbg !5329
  br i1 %cmp44, label %if.end47, label %if.then46, !dbg !5332

if.then46:                                        ; preds = %sw.bb40
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5329
  br label %if.end47, !dbg !5329

if.end47:                                         ; preds = %if.then46, %sw.bb40
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.242, i64 0, i64 0)) #8, !dbg !5333
  br label %sw.epilog205, !dbg !5334

sw.bb48:                                          ; preds = %while.end
  %incdec.ptr49 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5335
  store i8* %incdec.ptr49, i8** %mangled, align 8, !dbg !5335
  %18 = load i8*, i8** %b24, align 8, !dbg !5336
  %19 = load i8*, i8** %p25, align 8, !dbg !5336
  %cmp52 = icmp eq i8* %18, %19, !dbg !5336
  br i1 %cmp52, label %if.end55, label %if.then54, !dbg !5339

if.then54:                                        ; preds = %sw.bb48
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5336
  br label %if.end55, !dbg !5336

if.end55:                                         ; preds = %if.then54, %sw.bb48
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.243, i64 0, i64 0)) #8, !dbg !5340
  br label %sw.epilog205, !dbg !5341

sw.bb56:                                          ; preds = %while.end
  %incdec.ptr57 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5342
  store i8* %incdec.ptr57, i8** %mangled, align 8, !dbg !5342
  %20 = load i8*, i8** %b24, align 8, !dbg !5343
  %21 = load i8*, i8** %p25, align 8, !dbg !5343
  %cmp60 = icmp eq i8* %20, %21, !dbg !5343
  br i1 %cmp60, label %if.end63, label %if.then62, !dbg !5346

if.then62:                                        ; preds = %sw.bb56
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5343
  br label %if.end63, !dbg !5343

if.end63:                                         ; preds = %if.then62, %sw.bb56
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.244, i64 0, i64 0)) #8, !dbg !5347
  br label %sw.epilog205, !dbg !5348

sw.bb64:                                          ; preds = %while.end
  %incdec.ptr65 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5349
  store i8* %incdec.ptr65, i8** %mangled, align 8, !dbg !5349
  %22 = load i8*, i8** %b24, align 8, !dbg !5350
  %23 = load i8*, i8** %p25, align 8, !dbg !5350
  %cmp68 = icmp eq i8* %22, %23, !dbg !5350
  br i1 %cmp68, label %if.end71, label %if.then70, !dbg !5353

if.then70:                                        ; preds = %sw.bb64
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5350
  br label %if.end71, !dbg !5350

if.end71:                                         ; preds = %if.then70, %sw.bb64
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.245, i64 0, i64 0)) #8, !dbg !5354
  br label %sw.epilog205, !dbg !5355

sw.bb72:                                          ; preds = %while.end
  %incdec.ptr73 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5356
  store i8* %incdec.ptr73, i8** %mangled, align 8, !dbg !5356
  %24 = load i8*, i8** %b24, align 8, !dbg !5357
  %25 = load i8*, i8** %p25, align 8, !dbg !5357
  %cmp76 = icmp eq i8* %24, %25, !dbg !5357
  br i1 %cmp76, label %if.end79, label %if.then78, !dbg !5360

if.then78:                                        ; preds = %sw.bb72
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5357
  br label %if.end79, !dbg !5357

if.end79:                                         ; preds = %if.then78, %sw.bb72
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.246, i64 0, i64 0)) #8, !dbg !5361
  call void @llvm.dbg.value(metadata i32 4, metadata !5260, metadata !DIExpression()), !dbg !5270
  br label %sw.epilog205, !dbg !5362

sw.bb80:                                          ; preds = %while.end
  %incdec.ptr81 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5363
  store i8* %incdec.ptr81, i8** %mangled, align 8, !dbg !5363
  %26 = load i8*, i8** %b24, align 8, !dbg !5364
  %27 = load i8*, i8** %p25, align 8, !dbg !5364
  %cmp84 = icmp eq i8* %26, %27, !dbg !5364
  br i1 %cmp84, label %if.end87, label %if.then86, !dbg !5367

if.then86:                                        ; preds = %sw.bb80
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5364
  br label %if.end87, !dbg !5364

if.end87:                                         ; preds = %if.then86, %sw.bb80
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.247, i64 0, i64 0)) #8, !dbg !5368
  call void @llvm.dbg.value(metadata i32 5, metadata !5260, metadata !DIExpression()), !dbg !5270
  br label %sw.epilog205, !dbg !5369

sw.bb88:                                          ; preds = %while.end
  %incdec.ptr89 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5370
  store i8* %incdec.ptr89, i8** %mangled, align 8, !dbg !5370
  %28 = load i8*, i8** %b24, align 8, !dbg !5371
  %29 = load i8*, i8** %p25, align 8, !dbg !5371
  %cmp92 = icmp eq i8* %28, %29, !dbg !5371
  br i1 %cmp92, label %if.end95, label %if.then94, !dbg !5374

if.then94:                                        ; preds = %sw.bb88
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5371
  br label %if.end95, !dbg !5371

if.end95:                                         ; preds = %if.then94, %sw.bb88
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.248, i64 0, i64 0)) #8, !dbg !5375
  call void @llvm.dbg.value(metadata i32 5, metadata !5260, metadata !DIExpression()), !dbg !5270
  br label %sw.epilog205, !dbg !5376

sw.bb96:                                          ; preds = %while.end
  %incdec.ptr97 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5377
  store i8* %incdec.ptr97, i8** %mangled, align 8, !dbg !5377
  %30 = load i8*, i8** %b24, align 8, !dbg !5378
  %31 = load i8*, i8** %p25, align 8, !dbg !5378
  %cmp100 = icmp eq i8* %30, %31, !dbg !5378
  br i1 %cmp100, label %if.end103, label %if.then102, !dbg !5381

if.then102:                                       ; preds = %sw.bb96
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5378
  br label %if.end103, !dbg !5378

if.end103:                                        ; preds = %if.then102, %sw.bb96
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.249, i64 0, i64 0)) #8, !dbg !5382
  call void @llvm.dbg.value(metadata i32 6, metadata !5260, metadata !DIExpression()), !dbg !5270
  br label %sw.epilog205, !dbg !5383

sw.bb104:                                         ; preds = %while.end
  %incdec.ptr105 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5384
  store i8* %incdec.ptr105, i8** %mangled, align 8, !dbg !5384
  %32 = load i8*, i8** %b24, align 8, !dbg !5385
  %33 = load i8*, i8** %p25, align 8, !dbg !5385
  %cmp108 = icmp eq i8* %32, %33, !dbg !5385
  br i1 %cmp108, label %if.end111, label %if.then110, !dbg !5388

if.then110:                                       ; preds = %sw.bb104
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5385
  br label %if.end111, !dbg !5385

if.end111:                                        ; preds = %if.then110, %sw.bb104
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.250, i64 0, i64 0)) #8, !dbg !5389
  call void @llvm.dbg.value(metadata i32 6, metadata !5260, metadata !DIExpression()), !dbg !5270
  br label %sw.epilog205, !dbg !5390

sw.bb112:                                         ; preds = %while.end
  %incdec.ptr113 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5391
  store i8* %incdec.ptr113, i8** %mangled, align 8, !dbg !5391
  %34 = load i8*, i8** %b24, align 8, !dbg !5392
  %35 = load i8*, i8** %p25, align 8, !dbg !5392
  %cmp116 = icmp eq i8* %34, %35, !dbg !5392
  br i1 %cmp116, label %if.end119, label %if.then118, !dbg !5395

if.then118:                                       ; preds = %sw.bb112
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5392
  br label %if.end119, !dbg !5392

if.end119:                                        ; preds = %if.then118, %sw.bb112
  tail call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.251, i64 0, i64 0)) #8, !dbg !5396
  call void @llvm.dbg.value(metadata i32 6, metadata !5260, metadata !DIExpression()), !dbg !5270
  br label %sw.epilog205, !dbg !5397

sw.bb120:                                         ; preds = %while.end
  %incdec.ptr121 = getelementptr inbounds i8, i8* %.lcssa11, i64 1, !dbg !5398
  store i8* %incdec.ptr121, i8** %mangled, align 8, !dbg !5398
  %36 = load i8, i8* %incdec.ptr121, align 1, !dbg !5399
  %idxprom = zext i8 %36 to i64, !dbg !5399
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !5399
  %37 = load i16, i16* %arrayidx, align 2, !dbg !5399
  %38 = and i16 %37, 4, !dbg !5399
  %tobool126 = icmp eq i16 %38, 0, !dbg !5399
  br i1 %tobool126, label %sw.epilog205, label %sw.bb129, !dbg !5401

sw.bb129:                                         ; preds = %sw.bb120, %while.end
  %39 = phi i8* [ %incdec.ptr121, %sw.bb120 ], [ %.lcssa11, %while.end ], !dbg !5402
  %incdec.ptr130 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !5402
  store i8* %incdec.ptr130, i8** %mangled, align 8, !dbg !5402
  %40 = load i8, i8* %incdec.ptr130, align 1, !dbg !5403
  %cmp132 = icmp eq i8 %40, 95, !dbg !5404
  br i1 %cmp132, label %if.then134, label %if.else, !dbg !5405

if.then134:                                       ; preds = %sw.bb129
  %incdec.ptr135 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !5406
  store i8* %incdec.ptr135, i8** %mangled, align 8, !dbg !5406
  call void @llvm.dbg.value(metadata i32 0, metadata !5261, metadata !DIExpression()), !dbg !5407
  br label %for.cond, !dbg !5408

for.cond:                                         ; preds = %for.body, %if.then134
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then134 ]
  %41 = phi i8* [ %incdec.ptr146, %for.body ], [ %incdec.ptr135, %if.then134 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5261, metadata !DIExpression()), !dbg !5407
  %cmp137 = icmp ult i64 %indvars.iv, 36, !dbg !5410
  br i1 %cmp137, label %land.lhs.true, label %for.cond.land.end_crit_edge, !dbg !5412

for.cond.land.end_crit_edge:                      ; preds = %for.cond
  %.pre = load i8, i8* %41, align 1, !dbg !5407
  br label %land.end, !dbg !5412

land.lhs.true:                                    ; preds = %for.cond
  %42 = load i8, i8* %41, align 1, !dbg !5413
  %tobool140 = icmp eq i8 %42, 0, !dbg !5413
  br i1 %tobool140, label %land.end, label %land.rhs, !dbg !5414

land.rhs:                                         ; preds = %land.lhs.true
  %cmp142 = icmp ne i8 %42, 95, !dbg !5415
  br label %land.end

land.end:                                         ; preds = %for.cond.land.end_crit_edge, %land.lhs.true, %land.rhs
  %43 = phi i8 [ 0, %land.lhs.true ], [ %.pre, %for.cond.land.end_crit_edge ], [ %42, %land.rhs ], !dbg !5407
  %44 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.land.end_crit_edge ], [ %cmp142, %land.rhs ], !dbg !5416
  br i1 %44, label %for.body, label %for.end, !dbg !5417

for.body:                                         ; preds = %land.end
  %arrayidx145 = getelementptr inbounds [37 x i8], [37 x i8]* %buf, i64 0, i64 %indvars.iv, !dbg !5418
  store i8 %43, i8* %arrayidx145, align 1, !dbg !5419
  %incdec.ptr146 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !5420
  store i8* %incdec.ptr146, i8** %mangled, align 8, !dbg !5420
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !5421
  call void @llvm.dbg.value(metadata i32 undef, metadata !5261, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5407
  br label %for.cond, !dbg !5422, !llvm.loop !5423

for.end:                                          ; preds = %land.end
  %.lcssa9 = phi i8 [ %43, %land.end ], !dbg !5407
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %land.end ]
  %.lcssa = phi i8* [ %41, %land.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !5261, metadata !DIExpression()), !dbg !5407
  call void @llvm.dbg.value(metadata i32 undef, metadata !5261, metadata !DIExpression()), !dbg !5407
  call void @llvm.dbg.value(metadata i32 undef, metadata !5261, metadata !DIExpression()), !dbg !5407
  %cmp148 = icmp eq i8 %.lcssa9, 95, !dbg !5425
  br i1 %cmp148, label %if.end151, label %cleanup, !dbg !5427

if.end151:                                        ; preds = %for.end
  %idxprom152 = and i64 %indvars.iv.lcssa, 4294967295, !dbg !5428
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !5261, metadata !DIExpression()), !dbg !5407
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !5261, metadata !DIExpression()), !dbg !5407
  %arrayidx153 = getelementptr inbounds [37 x i8], [37 x i8]* %buf, i64 0, i64 %idxprom152, !dbg !5428
  store i8 0, i8* %arrayidx153, align 1, !dbg !5429
  %incdec.ptr154 = getelementptr inbounds i8, i8* %.lcssa, i64 1, !dbg !5430
  store i8* %incdec.ptr154, i8** %mangled, align 8, !dbg !5430
  br label %cleanup, !dbg !5431

cleanup:                                          ; preds = %for.end, %if.end151
  %success.0 = phi i32 [ 1, %if.end151 ], [ 0, %for.end ], !dbg !5270
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end151 ], [ false, %for.end ]
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !5254, metadata !DIExpression()), !dbg !5270
  br i1 %cleanup.dest.slot.0, label %if.end161, label %sw.epilog205

if.else:                                          ; preds = %sw.bb129
  %call155 = call i8* @strncpy(i8* nonnull %0, i8* nonnull %incdec.ptr130, i64 2) #6, !dbg !5432
  %arrayidx156 = getelementptr inbounds [37 x i8], [37 x i8]* %buf, i64 0, i64 2, !dbg !5434
  store i8 0, i8* %arrayidx156, align 2, !dbg !5435
  %45 = load i8*, i8** %mangled, align 8, !dbg !5436
  %call157 = call i64 @strlen(i8* %45) #6, !dbg !5436
  %cmp158 = icmp ult i64 %call157, 2, !dbg !5436
  br i1 %cmp158, label %cond.true, label %cond.end, !dbg !5436

cond.true:                                        ; preds = %if.else
  %46 = load i8*, i8** %mangled, align 8, !dbg !5436
  %call160 = call i64 @strlen(i8* %46) #6, !dbg !5436
  br label %cond.end, !dbg !5436

cond.end:                                         ; preds = %if.else, %cond.true
  %cond = phi i64 [ %call160, %cond.true ], [ 2, %if.else ], !dbg !5436
  %47 = load i8*, i8** %mangled, align 8, !dbg !5437
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %cond, !dbg !5437
  store i8* %add.ptr, i8** %mangled, align 8, !dbg !5437
  br label %if.end161

if.end161:                                        ; preds = %cleanup, %cond.end
  %success.1 = phi i32 [ 1, %cond.end ], [ %success.0, %cleanup ], !dbg !5270
  call void @llvm.dbg.value(metadata i32 %success.1, metadata !5254, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.value(metadata i32* %dec, metadata !5259, metadata !DIExpression(DW_OP_deref)), !dbg !5270
  %call163 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.252, i64 0, i64 0), i32* nonnull %dec) #6, !dbg !5438
  %48 = load i32, i32* %dec, align 4, !dbg !5439
  call void @llvm.dbg.value(metadata i32 %48, metadata !5259, metadata !DIExpression()), !dbg !5270
  %call165 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.253, i64 0, i64 0), i32 %48) #6, !dbg !5440
  %49 = load i8*, i8** %b24, align 8, !dbg !5441
  %50 = load i8*, i8** %p25, align 8, !dbg !5441
  %cmp168 = icmp eq i8* %49, %50, !dbg !5441
  br i1 %cmp168, label %if.end171, label %if.then170, !dbg !5444

if.then170:                                       ; preds = %if.end161
  call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5441
  br label %if.end171, !dbg !5441

if.end171:                                        ; preds = %if.then170, %if.end161
  call fastcc void @string_append(%struct.string* %result, i8* nonnull %0) #8, !dbg !5445
  br label %sw.epilog205, !dbg !5446

sw.bb173:                                         ; preds = %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end
  %call174 = tail call fastcc i32 @register_Btype(%struct.work_stuff* %work) #8, !dbg !5447
  call void @llvm.dbg.value(metadata i32 %call174, metadata !5265, metadata !DIExpression()), !dbg !5448
  %51 = bitcast %struct.string* %btype to i8*, !dbg !5449
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %51) #7, !dbg !5449
  call void @llvm.dbg.value(metadata %struct.string* %btype, metadata !5267, metadata !DIExpression(DW_OP_deref)), !dbg !5448
  call fastcc void @string_init(%struct.string* nonnull %btype) #8, !dbg !5450
  call void @llvm.dbg.value(metadata %struct.string* %btype, metadata !5267, metadata !DIExpression(DW_OP_deref)), !dbg !5448
  %call175 = call fastcc i32 @demangle_class_name(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %btype) #8, !dbg !5451
  %tobool176 = icmp eq i32 %call175, 0, !dbg !5451
  br i1 %tobool176, label %if.end197, label %if.then177, !dbg !5453

if.then177:                                       ; preds = %sw.bb173
  %b178 = getelementptr inbounds %struct.string, %struct.string* %btype, i64 0, i32 0, !dbg !5454
  %52 = load i8*, i8** %b178, align 8, !dbg !5454
  %p180 = getelementptr inbounds %struct.string, %struct.string* %btype, i64 0, i32 1, !dbg !5456
  %53 = load i8*, i8** %p180, align 8, !dbg !5456
  %cmp181 = icmp eq i8* %52, %53, !dbg !5456
  br i1 %cmp181, label %cond.end187, label %cond.false184, !dbg !5456

cond.false184:                                    ; preds = %if.then177
  %54 = ptrtoint i8* %52 to i64, !dbg !5456
  %55 = ptrtoint i8* %53 to i64, !dbg !5456
  %sub.ptr.sub = sub i64 %55, %54, !dbg !5456
  %phitmp = trunc i64 %sub.ptr.sub to i32, !dbg !5456
  br label %cond.end187, !dbg !5456

cond.end187:                                      ; preds = %if.then177, %cond.false184
  %cond188 = phi i32 [ %phitmp, %cond.false184 ], [ 0, %if.then177 ]
  call fastcc void @remember_Btype(%struct.work_stuff* %work, i8* %52, i32 %cond188, i32 %call174) #8, !dbg !5457
  %56 = load i8*, i8** %b24, align 8, !dbg !5458
  %57 = load i8*, i8** %p25, align 8, !dbg !5458
  %cmp192 = icmp eq i8* %56, %57, !dbg !5458
  br i1 %cmp192, label %if.end195, label %if.then194, !dbg !5461

if.then194:                                       ; preds = %cond.end187
  call fastcc void @string_append(%struct.string* %result, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5458
  br label %if.end195, !dbg !5458

if.end195:                                        ; preds = %if.then194, %cond.end187
  call void @llvm.dbg.value(metadata %struct.string* %btype, metadata !5267, metadata !DIExpression(DW_OP_deref)), !dbg !5448
  call fastcc void @string_appends(%struct.string* %result, %struct.string* nonnull %btype) #8, !dbg !5462
  br label %if.end197, !dbg !5463

if.end197:                                        ; preds = %sw.bb173, %if.end195
  %success.2 = phi i32 [ 1, %if.end195 ], [ 0, %sw.bb173 ], !dbg !5270
  call void @llvm.dbg.value(metadata i32 %success.2, metadata !5254, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.value(metadata %struct.string* %btype, metadata !5267, metadata !DIExpression(DW_OP_deref)), !dbg !5448
  call fastcc void @string_delete(%struct.string* nonnull %btype) #8, !dbg !5464
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %51) #7, !dbg !5465
  br label %sw.epilog205

sw.bb200:                                         ; preds = %while.end
  %58 = bitcast %struct.string* %btype201 to i8*, !dbg !5466
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %58) #7, !dbg !5466
  call void @llvm.dbg.value(metadata %struct.string* %btype201, metadata !5268, metadata !DIExpression(DW_OP_deref)), !dbg !5467
  call fastcc void @string_init(%struct.string* nonnull %btype201) #8, !dbg !5468
  call void @llvm.dbg.value(metadata %struct.string* %btype201, metadata !5268, metadata !DIExpression(DW_OP_deref)), !dbg !5467
  %call202 = call fastcc i32 @demangle_template(%struct.work_stuff* %work, i8** %mangled, %struct.string* nonnull %btype201, %struct.string* null, i32 1, i32 1) #8, !dbg !5469
  call void @llvm.dbg.value(metadata i32 %call202, metadata !5254, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.value(metadata %struct.string* %btype201, metadata !5268, metadata !DIExpression(DW_OP_deref)), !dbg !5467
  call fastcc void @string_appends(%struct.string* %result, %struct.string* nonnull %btype201) #8, !dbg !5470
  call void @llvm.dbg.value(metadata %struct.string* %btype201, metadata !5268, metadata !DIExpression(DW_OP_deref)), !dbg !5467
  call fastcc void @string_delete(%struct.string* nonnull %btype201) #8, !dbg !5471
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %58) #7, !dbg !5472
  br label %sw.epilog205

sw.default204:                                    ; preds = %while.end
  call void @llvm.dbg.value(metadata i32 0, metadata !5254, metadata !DIExpression()), !dbg !5270
  br label %sw.epilog205, !dbg !5473

sw.epilog205:                                     ; preds = %sw.bb120, %cleanup, %while.end, %while.end, %sw.default204, %sw.bb200, %if.end197, %if.end171, %if.end119, %if.end111, %if.end103, %if.end95, %if.end87, %if.end79, %if.end71, %if.end63, %if.end55, %if.end47, %if.end39
  %success.3 = phi i32 [ 0, %sw.default204 ], [ %call202, %sw.bb200 ], [ %success.2, %if.end197 ], [ %success.0, %cleanup ], [ %success.1, %if.end171 ], [ 1, %if.end119 ], [ 1, %if.end111 ], [ 1, %if.end103 ], [ 1, %if.end95 ], [ 1, %if.end87 ], [ 1, %if.end79 ], [ 1, %if.end71 ], [ 1, %if.end63 ], [ 1, %if.end55 ], [ 1, %if.end47 ], [ 1, %if.end39 ], [ 1, %while.end ], [ 1, %while.end ], [ 0, %sw.bb120 ], !dbg !5270
  %tk.0 = phi i32 [ 3, %sw.default204 ], [ 3, %sw.bb200 ], [ 3, %if.end197 ], [ 3, %cleanup ], [ 3, %if.end171 ], [ 6, %if.end119 ], [ 6, %if.end111 ], [ 6, %if.end103 ], [ 5, %if.end95 ], [ 5, %if.end87 ], [ 4, %if.end79 ], [ 3, %if.end71 ], [ 3, %if.end63 ], [ 3, %if.end55 ], [ 3, %if.end47 ], [ 3, %if.end39 ], [ 3, %while.end ], [ 3, %while.end ], [ 3, %sw.bb120 ], !dbg !5270
  call void @llvm.dbg.value(metadata i32 %tk.0, metadata !5260, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.value(metadata i32 %success.3, metadata !5254, metadata !DIExpression()), !dbg !5270
  %tobool206 = icmp eq i32 %success.3, 0, !dbg !5474
  %tk.0. = select i1 %tobool206, i32 0, i32 %tk.0, !dbg !5474
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !5475
  call void @llvm.lifetime.end.p0i8(i64 37, i8* nonnull %0) #7, !dbg !5475
  ret i32 %tk.0., !dbg !5476
}

declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!110, !111, !112}
!llvm.ident = !{!113}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "current_demangling_style", scope: !2, file: !3, line: 93, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !49, nameTableKind: None)
!3 = !DIFile(filename: "cplus-dem.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "demangling_styles", file: !6, line: 72, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/demangle.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "no_demangling", value: -1)
!10 = !DIEnumerator(name: "unknown_demangling", value: 0)
!11 = !DIEnumerator(name: "auto_demangling", value: 256)
!12 = !DIEnumerator(name: "gnu_demangling", value: 512)
!13 = !DIEnumerator(name: "lucid_demangling", value: 1024)
!14 = !DIEnumerator(name: "arm_demangling", value: 2048)
!15 = !DIEnumerator(name: "hp_demangling", value: 4096)
!16 = !DIEnumerator(name: "edg_demangling", value: 8192)
!17 = !DIEnumerator(name: "gnu_v3_demangling", value: 16384)
!18 = !DIEnumerator(name: "java_demangling", value: 4)
!19 = !DIEnumerator(name: "gnat_demangling", value: 32768)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "type_kind_t", file: !3, line: 235, baseType: !21, size: 32, elements: !22)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25, !26, !27, !28, !29}
!23 = !DIEnumerator(name: "tk_none", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "tk_pointer", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "tk_reference", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "tk_integral", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "tk_bool", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "tk_char", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "tk_real", value: 6, isUnsigned: true)
!30 = !{!31, !32, !7, !33, !36, !37, !34, !39, !40, !41, !35, !42}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "type_kind_t", file: !3, line: 244, baseType: !20)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", file: !3, line: 110, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string", file: !3, line: 105, size: 192, elements: !45)
!45 = !{!46, !47, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !44, file: !3, line: 107, baseType: !34, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !44, file: !3, line: 108, baseType: !34, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !44, file: !3, line: 109, baseType: !34, size: 64, offset: 128)
!49 = !{!0, !50, !63, !89, !94, !106}
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "libiberty_demanglers", scope: !2, file: !3, line: 246, type: !52, isLocal: false, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2112, elements: !61)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "demangler_engine", file: !6, line: 116, size: 192, elements: !55)
!55 = !{!56, !58, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "demangling_style_name", scope: !54, file: !6, line: 118, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "demangling_style", scope: !54, file: !6, line: 119, baseType: !59, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "demangling_style_doc", scope: !54, file: !6, line: 120, baseType: !57, size: 64, offset: 128)
!61 = !{!62}
!62 = !DISubrange(count: 11)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "operators", scope: !65, file: !3, line: 917, type: !85, isLocal: true, isDefinition: true)
!65 = distinct !DISubprogram(name: "ada_demangle", scope: !3, file: !3, line: 881, type: !66, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{!34, !37, !7}
!68 = !{!69, !70, !71, !72, !73, !74, !75, !80, !84}
!69 = !DILocalVariable(name: "mangled", arg: 1, scope: !65, file: !3, line: 881, type: !37)
!70 = !DILocalVariable(name: "option", arg: 2, scope: !65, file: !3, line: 881, type: !7)
!71 = !DILocalVariable(name: "len0", scope: !65, file: !3, line: 883, type: !7)
!72 = !DILocalVariable(name: "p", scope: !65, file: !3, line: 884, type: !37)
!73 = !DILocalVariable(name: "d", scope: !65, file: !3, line: 885, type: !34)
!74 = !DILocalVariable(name: "demangled", scope: !65, file: !3, line: 886, type: !34)
!75 = !DILocalVariable(name: "k", scope: !76, file: !3, line: 925, type: !7)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 916, column: 9)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 915, column: 16)
!78 = distinct !DILexicalBlock(scope: !79, file: !3, line: 908, column: 11)
!79 = distinct !DILexicalBlock(scope: !65, file: !3, line: 906, column: 5)
!80 = !DILocalVariable(name: "l", scope: !81, file: !3, line: 929, type: !7)
!81 = distinct !DILexicalBlock(scope: !82, file: !3, line: 928, column: 13)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 927, column: 11)
!83 = distinct !DILexicalBlock(scope: !76, file: !3, line: 927, column: 11)
!84 = !DILabel(scope: !65, name: "unknown", file: !3, line: 1056)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 2560, elements: !86)
!86 = !{!87, !88}
!87 = !DISubrange(count: 20)
!88 = !DISubrange(count: 2)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "cplus_markers", scope: !2, file: !3, line: 95, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 4)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "optable", scope: !2, file: !3, line: 150, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 15168, elements: !104)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optable", file: !3, line: 145, size: 192, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !98, file: !3, line: 147, baseType: !57, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !98, file: !3, line: 148, baseType: !57, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !3, line: 149, baseType: !103, size: 32, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!104 = !{!105}
!105 = !DISubrange(count: 79)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "char_str", scope: !2, file: !3, line: 97, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 16, elements: !109)
!109 = !{!88}
!110 = !{i32 2, !"Dwarf Version", i32 4}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{i32 1, !"wchar_size", i32 4}
!113 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!114 = distinct !DISubprogram(name: "tolower", scope: !115, file: !115, line: 207, type: !116, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!115 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!116 = !DISubroutineType(types: !117)
!117 = !{!7, !7}
!118 = !{!119}
!119 = !DILocalVariable(name: "__c", arg: 1, scope: !114, file: !115, line: 207, type: !7)
!120 = !DILocation(line: 0, scope: !114)
!121 = !DILocation(line: 209, column: 22, scope: !114)
!122 = !DILocation(line: 209, column: 39, scope: !114)
!123 = !DILocation(line: 209, column: 38, scope: !114)
!124 = !DILocation(line: 209, column: 37, scope: !114)
!125 = !DILocation(line: 209, column: 10, scope: !114)
!126 = !DILocation(line: 209, column: 3, scope: !114)
!127 = distinct !DISubprogram(name: "toupper", scope: !115, file: !115, line: 213, type: !116, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !128)
!128 = !{!129}
!129 = !DILocalVariable(name: "__c", arg: 1, scope: !127, file: !115, line: 213, type: !7)
!130 = !DILocation(line: 0, scope: !127)
!131 = !DILocation(line: 215, column: 22, scope: !127)
!132 = !DILocation(line: 215, column: 39, scope: !127)
!133 = !DILocation(line: 215, column: 38, scope: !127)
!134 = !DILocation(line: 215, column: 37, scope: !127)
!135 = !DILocation(line: 215, column: 10, scope: !127)
!136 = !DILocation(line: 215, column: 3, scope: !127)
!137 = distinct !DISubprogram(name: "vprintf", scope: !138, file: !138, line: 39, type: !139, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !149)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!139 = !DISubroutineType(types: !140)
!140 = !{!7, !141, !142}
!141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 216, size: 192, elements: !144)
!144 = !{!145, !146, !147, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !143, file: !3, line: 216, baseType: !21, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !143, file: !3, line: 216, baseType: !21, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !143, file: !3, line: 216, baseType: !36, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !143, file: !3, line: 216, baseType: !36, size: 64, offset: 128)
!149 = !{!150, !151}
!150 = !DILocalVariable(name: "__fmt", arg: 1, scope: !137, file: !138, line: 39, type: !141)
!151 = !DILocalVariable(name: "__arg", arg: 2, scope: !137, file: !138, line: 39, type: !142)
!152 = !DILocation(line: 0, scope: !137)
!153 = !DILocation(line: 41, column: 20, scope: !137)
!154 = !DILocation(line: 41, column: 10, scope: !137)
!155 = !DILocation(line: 41, column: 3, scope: !137)
!156 = distinct !DISubprogram(name: "getchar", scope: !138, file: !138, line: 47, type: !157, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{!7}
!159 = !{}
!160 = !DILocation(line: 49, column: 16, scope: !156)
!161 = !DILocation(line: 49, column: 10, scope: !156)
!162 = !DILocation(line: 49, column: 3, scope: !156)
!163 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !138, file: !138, line: 56, type: !164, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!164 = !DISubroutineType(types: !165)
!165 = !{!7, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !168, line: 7, baseType: !169)
!168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !170, line: 49, size: 1728, elements: !171)
!170 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !187, !189, !190, !191, !194, !195, !197, !201, !204, !206, !209, !212, !213, !214, !218, !219}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !169, file: !170, line: 51, baseType: !7, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !169, file: !170, line: 54, baseType: !34, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !169, file: !170, line: 55, baseType: !34, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !169, file: !170, line: 56, baseType: !34, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !169, file: !170, line: 57, baseType: !34, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !169, file: !170, line: 58, baseType: !34, size: 64, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !169, file: !170, line: 59, baseType: !34, size: 64, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !169, file: !170, line: 60, baseType: !34, size: 64, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !169, file: !170, line: 61, baseType: !34, size: 64, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !169, file: !170, line: 64, baseType: !34, size: 64, offset: 576)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !169, file: !170, line: 65, baseType: !34, size: 64, offset: 640)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !169, file: !170, line: 66, baseType: !34, size: 64, offset: 704)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !169, file: !170, line: 68, baseType: !185, size: 64, offset: 768)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !170, line: 36, flags: DIFlagFwdDecl)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !169, file: !170, line: 70, baseType: !188, size: 64, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !169, file: !170, line: 72, baseType: !7, size: 32, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !169, file: !170, line: 73, baseType: !7, size: 32, offset: 928)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !169, file: !170, line: 74, baseType: !192, size: 64, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !193, line: 152, baseType: !40)
!193 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !169, file: !170, line: 77, baseType: !39, size: 16, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !169, file: !170, line: 78, baseType: !196, size: 8, offset: 1040)
!196 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !169, file: !170, line: 79, baseType: !198, size: 8, offset: 1048)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 1)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !169, file: !170, line: 81, baseType: !202, size: 64, offset: 1088)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !170, line: 43, baseType: null)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !169, file: !170, line: 89, baseType: !205, size: 64, offset: 1152)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !193, line: 153, baseType: !40)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !169, file: !170, line: 91, baseType: !207, size: 64, offset: 1216)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !170, line: 37, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !169, file: !170, line: 92, baseType: !210, size: 64, offset: 1280)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !170, line: 38, flags: DIFlagFwdDecl)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !169, file: !170, line: 93, baseType: !188, size: 64, offset: 1344)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !169, file: !170, line: 94, baseType: !36, size: 64, offset: 1408)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !169, file: !170, line: 95, baseType: !215, size: 64, offset: 1472)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !216, line: 46, baseType: !217)
!216 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!217 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !169, file: !170, line: 96, baseType: !7, size: 32, offset: 1536)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !169, file: !170, line: 98, baseType: !220, size: 160, offset: 1568)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !221)
!221 = !{!87}
!222 = !{!223}
!223 = !DILocalVariable(name: "__fp", arg: 1, scope: !163, file: !138, line: 56, type: !166)
!224 = !DILocation(line: 0, scope: !163)
!225 = !DILocation(line: 58, column: 10, scope: !163)
!226 = !DILocation(line: 58, column: 3, scope: !163)
!227 = distinct !DISubprogram(name: "getc_unlocked", scope: !138, file: !138, line: 66, type: !164, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!228 = !{!229}
!229 = !DILocalVariable(name: "__fp", arg: 1, scope: !227, file: !138, line: 66, type: !166)
!230 = !DILocation(line: 0, scope: !227)
!231 = !DILocation(line: 68, column: 10, scope: !227)
!232 = !DILocation(line: 68, column: 3, scope: !227)
!233 = distinct !DISubprogram(name: "getchar_unlocked", scope: !138, file: !138, line: 73, type: !157, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!234 = !DILocation(line: 75, column: 10, scope: !233)
!235 = !DILocation(line: 75, column: 3, scope: !233)
!236 = distinct !DISubprogram(name: "putchar", scope: !138, file: !138, line: 82, type: !116, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!237 = !{!238}
!238 = !DILocalVariable(name: "__c", arg: 1, scope: !236, file: !138, line: 82, type: !7)
!239 = !DILocation(line: 0, scope: !236)
!240 = !DILocation(line: 84, column: 21, scope: !236)
!241 = !DILocation(line: 84, column: 10, scope: !236)
!242 = !DILocation(line: 84, column: 3, scope: !236)
!243 = distinct !DISubprogram(name: "fputc_unlocked", scope: !138, file: !138, line: 91, type: !244, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{!7, !7, !166}
!246 = !{!247, !248}
!247 = !DILocalVariable(name: "__c", arg: 1, scope: !243, file: !138, line: 91, type: !7)
!248 = !DILocalVariable(name: "__stream", arg: 2, scope: !243, file: !138, line: 91, type: !166)
!249 = !DILocation(line: 0, scope: !243)
!250 = !DILocation(line: 93, column: 10, scope: !243)
!251 = !DILocation(line: 93, column: 3, scope: !243)
!252 = distinct !DISubprogram(name: "putc_unlocked", scope: !138, file: !138, line: 101, type: !244, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!253 = !{!254, !255}
!254 = !DILocalVariable(name: "__c", arg: 1, scope: !252, file: !138, line: 101, type: !7)
!255 = !DILocalVariable(name: "__stream", arg: 2, scope: !252, file: !138, line: 101, type: !166)
!256 = !DILocation(line: 0, scope: !252)
!257 = !DILocation(line: 103, column: 10, scope: !252)
!258 = !DILocation(line: 103, column: 3, scope: !252)
!259 = distinct !DISubprogram(name: "putchar_unlocked", scope: !138, file: !138, line: 108, type: !116, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!260 = !{!261}
!261 = !DILocalVariable(name: "__c", arg: 1, scope: !259, file: !138, line: 108, type: !7)
!262 = !DILocation(line: 0, scope: !259)
!263 = !DILocation(line: 110, column: 10, scope: !259)
!264 = !DILocation(line: 110, column: 3, scope: !259)
!265 = distinct !DISubprogram(name: "getline", scope: !138, file: !138, line: 118, type: !266, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !270)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !33, !269, !166}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !193, line: 193, baseType: !40)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!270 = !{!271, !272, !273}
!271 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !265, file: !138, line: 118, type: !33)
!272 = !DILocalVariable(name: "__n", arg: 2, scope: !265, file: !138, line: 118, type: !269)
!273 = !DILocalVariable(name: "__stream", arg: 3, scope: !265, file: !138, line: 118, type: !166)
!274 = !DILocation(line: 0, scope: !265)
!275 = !DILocation(line: 120, column: 10, scope: !265)
!276 = !DILocation(line: 120, column: 3, scope: !265)
!277 = distinct !DISubprogram(name: "feof_unlocked", scope: !138, file: !138, line: 128, type: !164, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!278 = !{!279}
!279 = !DILocalVariable(name: "__stream", arg: 1, scope: !277, file: !138, line: 128, type: !166)
!280 = !DILocation(line: 0, scope: !277)
!281 = !DILocation(line: 130, column: 10, scope: !277)
!282 = !DILocation(line: 130, column: 3, scope: !277)
!283 = distinct !DISubprogram(name: "ferror_unlocked", scope: !138, file: !138, line: 135, type: !164, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !284)
!284 = !{!285}
!285 = !DILocalVariable(name: "__stream", arg: 1, scope: !283, file: !138, line: 135, type: !166)
!286 = !DILocation(line: 0, scope: !283)
!287 = !DILocation(line: 137, column: 10, scope: !283)
!288 = !DILocation(line: 137, column: 3, scope: !283)
!289 = distinct !DISubprogram(name: "atoi", scope: !290, file: !290, line: 361, type: !291, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !293)
!290 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!291 = !DISubroutineType(types: !292)
!292 = !{!7, !37}
!293 = !{!294}
!294 = !DILocalVariable(name: "__nptr", arg: 1, scope: !289, file: !290, line: 361, type: !37)
!295 = !DILocation(line: 0, scope: !289)
!296 = !DILocation(line: 363, column: 16, scope: !289)
!297 = !DILocation(line: 363, column: 10, scope: !289)
!298 = !DILocation(line: 363, column: 3, scope: !289)
!299 = distinct !DISubprogram(name: "atol", scope: !290, file: !290, line: 366, type: !300, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{!40, !37}
!302 = !{!303}
!303 = !DILocalVariable(name: "__nptr", arg: 1, scope: !299, file: !290, line: 366, type: !37)
!304 = !DILocation(line: 0, scope: !299)
!305 = !DILocation(line: 368, column: 10, scope: !299)
!306 = !DILocation(line: 368, column: 3, scope: !299)
!307 = distinct !DISubprogram(name: "atoll", scope: !290, file: !290, line: 373, type: !308, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !37}
!310 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!311 = !{!312}
!312 = !DILocalVariable(name: "__nptr", arg: 1, scope: !307, file: !290, line: 373, type: !37)
!313 = !DILocation(line: 0, scope: !307)
!314 = !DILocation(line: 375, column: 10, scope: !307)
!315 = !DILocation(line: 375, column: 3, scope: !307)
!316 = distinct !DISubprogram(name: "bsearch", scope: !317, file: !317, line: 20, type: !318, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !326)
!317 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!318 = !DISubroutineType(types: !319)
!319 = !{!36, !320, !320, !215, !215, !322}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !290, line: 808, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!7, !320, !320}
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!327 = !DILocalVariable(name: "__key", arg: 1, scope: !316, file: !317, line: 20, type: !320)
!328 = !DILocalVariable(name: "__base", arg: 2, scope: !316, file: !317, line: 20, type: !320)
!329 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !316, file: !317, line: 20, type: !215)
!330 = !DILocalVariable(name: "__size", arg: 4, scope: !316, file: !317, line: 20, type: !215)
!331 = !DILocalVariable(name: "__compar", arg: 5, scope: !316, file: !317, line: 21, type: !322)
!332 = !DILocalVariable(name: "__l", scope: !316, file: !317, line: 23, type: !215)
!333 = !DILocalVariable(name: "__u", scope: !316, file: !317, line: 23, type: !215)
!334 = !DILocalVariable(name: "__idx", scope: !316, file: !317, line: 23, type: !215)
!335 = !DILocalVariable(name: "__p", scope: !316, file: !317, line: 24, type: !320)
!336 = !DILocalVariable(name: "__comparison", scope: !316, file: !317, line: 25, type: !7)
!337 = !DILocation(line: 0, scope: !316)
!338 = !DILocation(line: 29, column: 3, scope: !316)
!339 = !DILocation(line: 27, column: 7, scope: !316)
!340 = !DILocation(line: 29, column: 14, scope: !316)
!341 = !DILocation(line: 31, column: 20, scope: !342)
!342 = distinct !DILexicalBlock(scope: !316, file: !317, line: 30, column: 5)
!343 = !DILocation(line: 31, column: 27, scope: !342)
!344 = !DILocation(line: 32, column: 56, scope: !342)
!345 = !DILocation(line: 32, column: 47, scope: !342)
!346 = !DILocation(line: 33, column: 22, scope: !342)
!347 = !DILocation(line: 34, column: 24, scope: !348)
!348 = distinct !DILexicalBlock(scope: !342, file: !317, line: 34, column: 11)
!349 = !DILocation(line: 34, column: 11, scope: !342)
!350 = !DILocation(line: 36, column: 29, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !317, line: 36, column: 16)
!352 = !DILocation(line: 36, column: 16, scope: !348)
!353 = !DILocation(line: 37, column: 14, scope: !351)
!354 = distinct !{!354, !338, !355}
!355 = !DILocation(line: 40, column: 5, scope: !316)
!356 = !DILocation(line: 43, column: 1, scope: !316)
!357 = distinct !DISubprogram(name: "atof", scope: !358, file: !358, line: 25, type: !359, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!359 = !DISubroutineType(types: !360)
!360 = !{!361, !37}
!361 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!362 = !{!363}
!363 = !DILocalVariable(name: "__nptr", arg: 1, scope: !357, file: !358, line: 25, type: !37)
!364 = !DILocation(line: 0, scope: !357)
!365 = !DILocation(line: 27, column: 10, scope: !357)
!366 = !DILocation(line: 27, column: 3, scope: !357)
!367 = distinct !DISubprogram(name: "set_cplus_marker_for_demangling", scope: !3, file: !3, line: 100, type: !368, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !370)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !7}
!370 = !{!371}
!371 = !DILocalVariable(name: "ch", arg: 1, scope: !367, file: !3, line: 100, type: !7)
!372 = !DILocation(line: 0, scope: !367)
!373 = !DILocation(line: 102, column: 22, scope: !367)
!374 = !DILocation(line: 102, column: 20, scope: !367)
!375 = !DILocation(line: 103, column: 1, scope: !367)
!376 = distinct !DISubprogram(name: "cplus_demangle_opname", scope: !3, file: !3, line: 632, type: !377, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!7, !37, !34, !7}
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !412, !413, !419, !423, !428}
!380 = !DILocalVariable(name: "opname", arg: 1, scope: !376, file: !3, line: 632, type: !37)
!381 = !DILocalVariable(name: "result", arg: 2, scope: !376, file: !3, line: 632, type: !34)
!382 = !DILocalVariable(name: "options", arg: 3, scope: !376, file: !3, line: 632, type: !7)
!383 = !DILocalVariable(name: "len", scope: !376, file: !3, line: 634, type: !7)
!384 = !DILocalVariable(name: "len1", scope: !376, file: !3, line: 634, type: !7)
!385 = !DILocalVariable(name: "ret", scope: !376, file: !3, line: 634, type: !7)
!386 = !DILocalVariable(name: "type", scope: !376, file: !3, line: 635, type: !43)
!387 = !DILocalVariable(name: "work", scope: !376, file: !3, line: 636, type: !388)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 896, elements: !199)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_stuff", file: !3, line: 115, size: 896, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !389, file: !3, line: 117, baseType: !7, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "typevec", scope: !389, file: !3, line: 118, baseType: !33, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ktypevec", scope: !389, file: !3, line: 119, baseType: !33, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "btypevec", scope: !389, file: !3, line: 120, baseType: !33, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "numk", scope: !389, file: !3, line: 121, baseType: !7, size: 32, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "numb", scope: !389, file: !3, line: 122, baseType: !7, size: 32, offset: 288)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ksize", scope: !389, file: !3, line: 123, baseType: !7, size: 32, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !389, file: !3, line: 124, baseType: !7, size: 32, offset: 352)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ntypes", scope: !389, file: !3, line: 125, baseType: !7, size: 32, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "typevec_size", scope: !389, file: !3, line: 126, baseType: !7, size: 32, offset: 416)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !389, file: !3, line: 127, baseType: !7, size: 32, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !389, file: !3, line: 128, baseType: !7, size: 32, offset: 480)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "static_type", scope: !389, file: !3, line: 129, baseType: !7, size: 32, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "temp_start", scope: !389, file: !3, line: 130, baseType: !7, size: 32, offset: 544)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "type_quals", scope: !389, file: !3, line: 131, baseType: !7, size: 32, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dllimported", scope: !389, file: !3, line: 132, baseType: !7, size: 32, offset: 608)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tmpl_argvec", scope: !389, file: !3, line: 133, baseType: !33, size: 64, offset: 640)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ntmpl_args", scope: !389, file: !3, line: 134, baseType: !7, size: 32, offset: 704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "forgetting_types", scope: !389, file: !3, line: 135, baseType: !7, size: 32, offset: 736)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "previous_argument", scope: !389, file: !3, line: 137, baseType: !42, size: 64, offset: 768)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "nrepeats", scope: !389, file: !3, line: 138, baseType: !7, size: 32, offset: 832)
!412 = !DILocalVariable(name: "tem", scope: !376, file: !3, line: 637, type: !37)
!413 = !DILocalVariable(name: "i", scope: !414, file: !3, line: 666, type: !215)
!414 = distinct !DILexicalBlock(scope: !415, file: !3, line: 664, column: 2)
!415 = distinct !DILexicalBlock(scope: !416, file: !3, line: 663, column: 11)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 662, column: 5)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 659, column: 12)
!418 = distinct !DILexicalBlock(scope: !376, file: !3, line: 645, column: 7)
!419 = !DILocalVariable(name: "i", scope: !420, file: !3, line: 684, type: !215)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 682, column: 6)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 681, column: 8)
!422 = distinct !DILexicalBlock(scope: !415, file: !3, line: 680, column: 2)
!423 = !DILocalVariable(name: "i", scope: !424, file: !3, line: 708, type: !215)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 707, column: 2)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 705, column: 11)
!426 = distinct !DILexicalBlock(scope: !427, file: !3, line: 703, column: 5)
!427 = distinct !DILexicalBlock(scope: !417, file: !3, line: 699, column: 12)
!428 = !DILocalVariable(name: "i", scope: !429, file: !3, line: 725, type: !215)
!429 = distinct !DILexicalBlock(scope: !425, file: !3, line: 724, column: 2)
!430 = !DILocation(line: 0, scope: !376)
!431 = !DILocation(line: 635, column: 3, scope: !376)
!432 = !DILocation(line: 636, column: 3, scope: !376)
!433 = !DILocation(line: 636, column: 21, scope: !376)
!434 = !DILocation(line: 637, column: 3, scope: !376)
!435 = !DILocation(line: 639, column: 9, scope: !376)
!436 = !DILocation(line: 640, column: 13, scope: !376)
!437 = !DILocation(line: 642, column: 3, scope: !376)
!438 = !DILocation(line: 643, column: 9, scope: !376)
!439 = !DILocation(line: 643, column: 17, scope: !376)
!440 = !DILocation(line: 645, column: 7, scope: !418)
!441 = !DILocation(line: 645, column: 17, scope: !418)
!442 = !DILocation(line: 645, column: 24, scope: !418)
!443 = !DILocation(line: 645, column: 27, scope: !418)
!444 = !DILocation(line: 645, column: 37, scope: !418)
!445 = !DILocation(line: 646, column: 7, scope: !418)
!446 = !DILocation(line: 646, column: 10, scope: !418)
!447 = !DILocation(line: 646, column: 20, scope: !418)
!448 = !DILocation(line: 646, column: 27, scope: !418)
!449 = !DILocation(line: 646, column: 30, scope: !418)
!450 = !DILocation(line: 646, column: 40, scope: !418)
!451 = !DILocation(line: 645, column: 7, scope: !376)
!452 = !DILocation(line: 650, column: 20, scope: !453)
!453 = distinct !DILexicalBlock(scope: !418, file: !3, line: 647, column: 5)
!454 = !DILocation(line: 650, column: 11, scope: !453)
!455 = !DILocation(line: 651, column: 20, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !3, line: 651, column: 11)
!457 = !DILocation(line: 651, column: 11, scope: !456)
!458 = !DILocation(line: 651, column: 11, scope: !453)
!459 = !DILocation(line: 653, column: 4, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !3, line: 652, column: 2)
!461 = !DILocation(line: 654, column: 26, scope: !460)
!462 = !DILocation(line: 654, column: 34, scope: !460)
!463 = !DILocation(line: 654, column: 43, scope: !460)
!464 = !DILocation(line: 654, column: 36, scope: !460)
!465 = !DILocation(line: 654, column: 4, scope: !460)
!466 = !DILocation(line: 655, column: 4, scope: !460)
!467 = !DILocation(line: 657, column: 2, scope: !460)
!468 = !DILocation(line: 659, column: 29, scope: !417)
!469 = !DILocation(line: 659, column: 32, scope: !417)
!470 = !DILocation(line: 659, column: 42, scope: !417)
!471 = !DILocation(line: 660, column: 5, scope: !417)
!472 = !DILocation(line: 660, column: 8, scope: !417)
!473 = !DILocation(line: 661, column: 5, scope: !417)
!474 = !DILocation(line: 661, column: 8, scope: !417)
!475 = !DILocation(line: 659, column: 12, scope: !418)
!476 = !DILocation(line: 663, column: 11, scope: !415)
!477 = !DILocation(line: 663, column: 21, scope: !415)
!478 = !DILocation(line: 663, column: 11, scope: !416)
!479 = !DILocation(line: 667, column: 4, scope: !480)
!480 = distinct !DILexicalBlock(scope: !414, file: !3, line: 667, column: 4)
!481 = !DILocation(line: 0, scope: !480)
!482 = !DILocation(line: 0, scope: !414)
!483 = !DILocation(line: 667, column: 18, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !3, line: 667, column: 4)
!485 = !DILocation(line: 669, column: 31, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 669, column: 12)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 668, column: 6)
!488 = !DILocation(line: 669, column: 12, scope: !486)
!489 = !DILocation(line: 669, column: 35, scope: !486)
!490 = !DILocation(line: 670, column: 5, scope: !486)
!491 = !DILocation(line: 670, column: 8, scope: !486)
!492 = !DILocation(line: 670, column: 46, scope: !486)
!493 = !DILocation(line: 669, column: 12, scope: !487)
!494 = !DILocation(line: 672, column: 5, scope: !495)
!495 = distinct !DILexicalBlock(scope: !486, file: !3, line: 671, column: 3)
!496 = !DILocation(line: 673, column: 32, scope: !495)
!497 = !DILocation(line: 673, column: 5, scope: !495)
!498 = !DILocation(line: 675, column: 5, scope: !495)
!499 = !DILocation(line: 667, column: 43, scope: !484)
!500 = !DILocation(line: 667, column: 4, scope: !484)
!501 = distinct !{!501, !479, !502}
!502 = !DILocation(line: 677, column: 6, scope: !480)
!503 = !DILocation(line: 681, column: 18, scope: !421)
!504 = !DILocation(line: 681, column: 25, scope: !421)
!505 = !DILocation(line: 681, column: 28, scope: !421)
!506 = !DILocation(line: 681, column: 38, scope: !421)
!507 = !DILocation(line: 681, column: 8, scope: !422)
!508 = !DILocation(line: 685, column: 8, scope: !509)
!509 = distinct !DILexicalBlock(scope: !420, file: !3, line: 685, column: 8)
!510 = !DILocation(line: 0, scope: !509)
!511 = !DILocation(line: 0, scope: !420)
!512 = !DILocation(line: 685, column: 22, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !3, line: 685, column: 8)
!514 = !DILocation(line: 687, column: 28, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 687, column: 9)
!516 = distinct !DILexicalBlock(scope: !513, file: !3, line: 686, column: 3)
!517 = !DILocation(line: 687, column: 9, scope: !515)
!518 = !DILocation(line: 687, column: 32, scope: !515)
!519 = !DILocation(line: 688, column: 9, scope: !515)
!520 = !DILocation(line: 688, column: 12, scope: !515)
!521 = !DILocation(line: 688, column: 50, scope: !515)
!522 = !DILocation(line: 687, column: 9, scope: !516)
!523 = !DILocation(line: 690, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !515, file: !3, line: 689, column: 7)
!525 = !DILocation(line: 691, column: 36, scope: !524)
!526 = !DILocation(line: 691, column: 9, scope: !524)
!527 = !DILocation(line: 693, column: 9, scope: !524)
!528 = !DILocation(line: 685, column: 47, scope: !513)
!529 = !DILocation(line: 685, column: 8, scope: !513)
!530 = distinct !{!530, !508, !531}
!531 = !DILocation(line: 695, column: 3, scope: !509)
!532 = !DILocation(line: 699, column: 16, scope: !427)
!533 = !DILocation(line: 700, column: 5, scope: !427)
!534 = !DILocation(line: 700, column: 18, scope: !427)
!535 = !DILocation(line: 701, column: 5, scope: !427)
!536 = !DILocation(line: 701, column: 8, scope: !427)
!537 = !DILocation(line: 701, column: 18, scope: !427)
!538 = !DILocation(line: 702, column: 5, scope: !427)
!539 = !DILocation(line: 702, column: 31, scope: !427)
!540 = !DILocation(line: 702, column: 8, scope: !427)
!541 = !DILocation(line: 702, column: 42, scope: !427)
!542 = !DILocation(line: 699, column: 12, scope: !417)
!543 = !DILocation(line: 705, column: 15, scope: !425)
!544 = !DILocation(line: 706, column: 4, scope: !425)
!545 = !DILocation(line: 706, column: 22, scope: !425)
!546 = !DILocation(line: 706, column: 7, scope: !425)
!547 = !DILocation(line: 706, column: 41, scope: !425)
!548 = !DILocation(line: 705, column: 11, scope: !426)
!549 = !DILocation(line: 0, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 710, column: 6)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 709, column: 4)
!552 = distinct !DILexicalBlock(scope: !424, file: !3, line: 709, column: 4)
!553 = !DILocation(line: 0, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !3, line: 712, column: 12)
!555 = !DILocation(line: 709, column: 4, scope: !552)
!556 = !DILocation(line: 0, scope: !552)
!557 = !DILocation(line: 0, scope: !424)
!558 = !DILocation(line: 709, column: 18, scope: !551)
!559 = !DILocation(line: 712, column: 37, scope: !554)
!560 = !DILocation(line: 712, column: 18, scope: !554)
!561 = !DILocation(line: 712, column: 12, scope: !554)
!562 = !DILocation(line: 712, column: 41, scope: !554)
!563 = !DILocation(line: 713, column: 5, scope: !554)
!564 = !DILocation(line: 713, column: 8, scope: !554)
!565 = !DILocation(line: 713, column: 50, scope: !554)
!566 = !DILocation(line: 712, column: 12, scope: !550)
!567 = !DILocation(line: 715, column: 5, scope: !568)
!568 = distinct !DILexicalBlock(scope: !554, file: !3, line: 714, column: 3)
!569 = !DILocation(line: 716, column: 32, scope: !568)
!570 = !DILocation(line: 716, column: 5, scope: !568)
!571 = !DILocation(line: 717, column: 5, scope: !568)
!572 = !DILocation(line: 719, column: 5, scope: !568)
!573 = !DILocation(line: 709, column: 43, scope: !551)
!574 = !DILocation(line: 709, column: 4, scope: !551)
!575 = distinct !{!575, !555, !576}
!576 = !DILocation(line: 721, column: 6, scope: !552)
!577 = !DILocation(line: 0, scope: !429)
!578 = !DILocation(line: 0, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 727, column: 6)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 726, column: 4)
!581 = distinct !DILexicalBlock(scope: !429, file: !3, line: 726, column: 4)
!582 = !DILocation(line: 0, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !3, line: 729, column: 12)
!584 = !DILocation(line: 726, column: 9, scope: !581)
!585 = !DILocation(line: 0, scope: !581)
!586 = !DILocation(line: 726, column: 18, scope: !580)
!587 = !DILocation(line: 726, column: 4, scope: !581)
!588 = !DILocation(line: 729, column: 37, scope: !583)
!589 = !DILocation(line: 729, column: 18, scope: !583)
!590 = !DILocation(line: 729, column: 12, scope: !583)
!591 = !DILocation(line: 729, column: 41, scope: !583)
!592 = !DILocation(line: 730, column: 5, scope: !583)
!593 = !DILocation(line: 730, column: 8, scope: !583)
!594 = !DILocation(line: 730, column: 49, scope: !583)
!595 = !DILocation(line: 729, column: 12, scope: !579)
!596 = !DILocation(line: 732, column: 5, scope: !597)
!597 = distinct !DILexicalBlock(scope: !583, file: !3, line: 731, column: 3)
!598 = !DILocation(line: 733, column: 32, scope: !597)
!599 = !DILocation(line: 733, column: 5, scope: !597)
!600 = !DILocation(line: 735, column: 5, scope: !597)
!601 = !DILocation(line: 726, column: 43, scope: !580)
!602 = !DILocation(line: 726, column: 4, scope: !580)
!603 = distinct !{!603, !587, !604}
!604 = !DILocation(line: 737, column: 6, scope: !581)
!605 = !DILocation(line: 740, column: 16, scope: !606)
!606 = distinct !DILexicalBlock(scope: !427, file: !3, line: 740, column: 12)
!607 = !DILocation(line: 740, column: 21, scope: !606)
!608 = !DILocation(line: 740, column: 24, scope: !606)
!609 = !DILocation(line: 740, column: 51, scope: !606)
!610 = !DILocation(line: 741, column: 5, scope: !606)
!611 = !DILocation(line: 741, column: 31, scope: !606)
!612 = !DILocation(line: 741, column: 8, scope: !606)
!613 = !DILocation(line: 741, column: 42, scope: !606)
!614 = !DILocation(line: 740, column: 12, scope: !427)
!615 = !DILocation(line: 744, column: 20, scope: !616)
!616 = distinct !DILexicalBlock(scope: !606, file: !3, line: 742, column: 5)
!617 = !DILocation(line: 744, column: 11, scope: !616)
!618 = !DILocation(line: 745, column: 20, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !3, line: 745, column: 11)
!620 = !DILocation(line: 745, column: 11, scope: !619)
!621 = !DILocation(line: 745, column: 11, scope: !616)
!622 = !DILocation(line: 747, column: 4, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !3, line: 746, column: 2)
!624 = !DILocation(line: 748, column: 26, scope: !623)
!625 = !DILocation(line: 748, column: 34, scope: !623)
!626 = !DILocation(line: 748, column: 43, scope: !623)
!627 = !DILocation(line: 748, column: 36, scope: !623)
!628 = !DILocation(line: 748, column: 4, scope: !623)
!629 = !DILocation(line: 749, column: 4, scope: !623)
!630 = !DILocation(line: 751, column: 2, scope: !623)
!631 = !DILocation(line: 753, column: 20, scope: !376)
!632 = !DILocation(line: 0, scope: !418)
!633 = !DILocation(line: 753, column: 3, scope: !376)
!634 = !DILocation(line: 756, column: 1, scope: !376)
!635 = !DILocation(line: 754, column: 3, scope: !376)
!636 = distinct !DISubprogram(name: "do_type", scope: !3, file: !3, line: 3445, type: !637, scopeLine: 3446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !641)
!637 = !DISubroutineType(types: !638)
!638 = !{!7, !639, !640, !42}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !654, !660, !663}
!642 = !DILocalVariable(name: "work", arg: 1, scope: !636, file: !3, line: 3445, type: !639)
!643 = !DILocalVariable(name: "mangled", arg: 2, scope: !636, file: !3, line: 3445, type: !640)
!644 = !DILocalVariable(name: "result", arg: 3, scope: !636, file: !3, line: 3445, type: !42)
!645 = !DILocalVariable(name: "n", scope: !636, file: !3, line: 3447, type: !7)
!646 = !DILocalVariable(name: "done", scope: !636, file: !3, line: 3448, type: !7)
!647 = !DILocalVariable(name: "success", scope: !636, file: !3, line: 3449, type: !7)
!648 = !DILocalVariable(name: "decl", scope: !636, file: !3, line: 3450, type: !43)
!649 = !DILocalVariable(name: "remembered_type", scope: !636, file: !3, line: 3451, type: !37)
!650 = !DILocalVariable(name: "type_quals", scope: !636, file: !3, line: 3452, type: !7)
!651 = !DILocalVariable(name: "tk", scope: !636, file: !3, line: 3453, type: !41)
!652 = !DILocalVariable(name: "member", scope: !653, file: !3, line: 3462, type: !7)
!653 = distinct !DILexicalBlock(scope: !636, file: !3, line: 3461, column: 5)
!654 = !DILocalVariable(name: "temp", scope: !655, file: !3, line: 3569, type: !43)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 3568, column: 8)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 3567, column: 15)
!657 = distinct !DILexicalBlock(scope: !658, file: !3, line: 3555, column: 10)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 3542, column: 4)
!659 = distinct !DILexicalBlock(scope: !653, file: !3, line: 3464, column: 2)
!660 = !DILocalVariable(name: "temp", scope: !661, file: !3, line: 3576, type: !43)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 3575, column: 8)
!662 = distinct !DILexicalBlock(scope: !656, file: !3, line: 3574, column: 15)
!663 = !DILocalVariable(name: "idx", scope: !664, file: !3, line: 3692, type: !7)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 3691, column: 7)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 3670, column: 5)
!666 = distinct !DILexicalBlock(scope: !636, file: !3, line: 3669, column: 7)
!667 = !DILocation(line: 0, scope: !636)
!668 = !DILocation(line: 3447, column: 3, scope: !636)
!669 = !DILocation(line: 3450, column: 3, scope: !636)
!670 = !DILocation(line: 3451, column: 3, scope: !636)
!671 = !DILocation(line: 3455, column: 3, scope: !636)
!672 = !DILocation(line: 3456, column: 3, scope: !636)
!673 = !DILocation(line: 0, scope: !674)
!674 = distinct !DILexicalBlock(scope: !659, file: !3, line: 3649, column: 8)
!675 = !DILocation(line: 0, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 3651, column: 12)
!677 = distinct !DILexicalBlock(scope: !674, file: !3, line: 3650, column: 6)
!678 = !DILocation(line: 0, scope: !661)
!679 = !DILocation(line: 0, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 3581, column: 5)
!681 = distinct !DILexicalBlock(scope: !661, file: !3, line: 3580, column: 7)
!682 = !DILocation(line: 0, scope: !655)
!683 = !DILocation(line: 0, scope: !684)
!684 = distinct !DILexicalBlock(scope: !659, file: !3, line: 3507, column: 8)
!685 = !DILocation(line: 0, scope: !686)
!686 = distinct !DILexicalBlock(scope: !684, file: !3, line: 3512, column: 6)
!687 = !DILocation(line: 3460, column: 3, scope: !636)
!688 = !DILocation(line: 3459, column: 11, scope: !636)
!689 = !DILocation(line: 3453, column: 15, scope: !636)
!690 = !DILocation(line: 3460, column: 18, scope: !636)
!691 = !DILocation(line: 3460, column: 21, scope: !636)
!692 = !DILocation(line: 3463, column: 16, scope: !653)
!693 = !DILocation(line: 3463, column: 15, scope: !653)
!694 = !DILocation(line: 3463, column: 7, scope: !653)
!695 = !DILocation(line: 3469, column: 14, scope: !659)
!696 = !DILocation(line: 3470, column: 19, scope: !697)
!697 = distinct !DILexicalBlock(scope: !659, file: !3, line: 3470, column: 8)
!698 = !DILocation(line: 3470, column: 27, scope: !697)
!699 = !DILocation(line: 3470, column: 8, scope: !659)
!700 = !DILocation(line: 3471, column: 6, scope: !697)
!701 = !DILocation(line: 3472, column: 11, scope: !702)
!702 = distinct !DILexicalBlock(scope: !659, file: !3, line: 3472, column: 8)
!703 = !DILocation(line: 3472, column: 8, scope: !659)
!704 = !DILocation(line: 3474, column: 4, scope: !659)
!705 = !DILocation(line: 3478, column: 14, scope: !659)
!706 = !DILocation(line: 3479, column: 4, scope: !659)
!707 = !DILocation(line: 3480, column: 11, scope: !708)
!708 = distinct !DILexicalBlock(scope: !659, file: !3, line: 3480, column: 8)
!709 = !DILocation(line: 3480, column: 8, scope: !659)
!710 = !DILocation(line: 3482, column: 4, scope: !659)
!711 = !DILocation(line: 3487, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !659, file: !3, line: 3486, column: 4)
!713 = !DILocation(line: 3488, column: 11, scope: !714)
!714 = distinct !DILexicalBlock(scope: !712, file: !3, line: 3488, column: 10)
!715 = !DILocation(line: 3489, column: 3, scope: !714)
!716 = !DILocation(line: 3489, column: 7, scope: !714)
!717 = !DILocation(line: 3489, column: 17, scope: !714)
!718 = !DILocation(line: 3489, column: 24, scope: !714)
!719 = !DILocation(line: 3489, column: 37, scope: !714)
!720 = !DILocation(line: 3488, column: 10, scope: !712)
!721 = !DILocation(line: 3491, column: 3, scope: !722)
!722 = distinct !DILexicalBlock(scope: !714, file: !3, line: 3490, column: 8)
!723 = !DILocation(line: 3492, column: 3, scope: !722)
!724 = !DILocation(line: 3493, column: 8, scope: !722)
!725 = !DILocation(line: 3494, column: 6, scope: !712)
!726 = !DILocation(line: 3495, column: 11, scope: !727)
!727 = distinct !DILexicalBlock(scope: !712, file: !3, line: 3495, column: 10)
!728 = !DILocation(line: 3495, column: 10, scope: !727)
!729 = !DILocation(line: 3495, column: 20, scope: !727)
!730 = !DILocation(line: 3495, column: 10, scope: !712)
!731 = !DILocation(line: 3496, column: 18, scope: !727)
!732 = !DILocation(line: 3498, column: 11, scope: !733)
!733 = distinct !DILexicalBlock(scope: !712, file: !3, line: 3498, column: 10)
!734 = !DILocation(line: 3498, column: 10, scope: !733)
!735 = !DILocation(line: 3496, column: 8, scope: !727)
!736 = !DILocation(line: 3498, column: 20, scope: !733)
!737 = !DILocation(line: 3498, column: 10, scope: !712)
!738 = !DILocation(line: 3499, column: 8, scope: !733)
!739 = !DILocation(line: 3500, column: 6, scope: !712)
!740 = !DILocation(line: 3501, column: 6, scope: !712)
!741 = !DILocation(line: 3506, column: 14, scope: !659)
!742 = !DILocation(line: 3507, column: 9, scope: !684)
!743 = !DILocation(line: 3507, column: 33, scope: !684)
!744 = !DILocation(line: 3507, column: 36, scope: !684)
!745 = !DILocation(line: 3507, column: 49, scope: !684)
!746 = !DILocation(line: 3507, column: 38, scope: !684)
!747 = !DILocation(line: 3507, column: 8, scope: !659)
!748 = !DILocation(line: 3513, column: 34, scope: !686)
!749 = !DILocation(line: 3513, column: 26, scope: !686)
!750 = !DILocation(line: 3513, column: 24, scope: !686)
!751 = !DILocation(line: 3520, column: 14, scope: !659)
!752 = !DILocation(line: 3521, column: 11, scope: !753)
!753 = distinct !DILexicalBlock(scope: !659, file: !3, line: 3521, column: 10)
!754 = !DILocation(line: 3522, column: 3, scope: !753)
!755 = !DILocation(line: 3522, column: 7, scope: !753)
!756 = !DILocation(line: 3522, column: 17, scope: !753)
!757 = !DILocation(line: 3522, column: 24, scope: !753)
!758 = !DILocation(line: 3522, column: 37, scope: !753)
!759 = !DILocation(line: 3521, column: 10, scope: !659)
!760 = !DILocation(line: 3524, column: 8, scope: !761)
!761 = distinct !DILexicalBlock(scope: !753, file: !3, line: 3523, column: 6)
!762 = !DILocation(line: 3525, column: 8, scope: !761)
!763 = !DILocation(line: 3526, column: 6, scope: !761)
!764 = !DILocation(line: 3530, column: 9, scope: !765)
!765 = distinct !DILexicalBlock(scope: !659, file: !3, line: 3530, column: 8)
!766 = !DILocation(line: 3531, column: 8, scope: !765)
!767 = !DILocation(line: 3531, column: 13, scope: !765)
!768 = !DILocation(line: 3531, column: 12, scope: !765)
!769 = !DILocation(line: 3531, column: 22, scope: !765)
!770 = !DILocation(line: 3531, column: 29, scope: !765)
!771 = !DILocation(line: 3531, column: 42, scope: !765)
!772 = !DILocation(line: 3530, column: 8, scope: !659)
!773 = !DILocation(line: 3536, column: 16, scope: !774)
!774 = distinct !DILexicalBlock(scope: !659, file: !3, line: 3536, column: 8)
!775 = !DILocation(line: 3536, column: 8, scope: !659)
!776 = !DILocation(line: 3537, column: 16, scope: !774)
!777 = !DILocation(line: 3537, column: 6, scope: !774)
!778 = !DILocation(line: 3545, column: 25, scope: !658)
!779 = !DILocation(line: 0, scope: !653)
!780 = !DILocation(line: 3546, column: 16, scope: !658)
!781 = !DILocation(line: 3548, column: 6, scope: !658)
!782 = !DILocation(line: 3552, column: 11, scope: !783)
!783 = distinct !DILexicalBlock(scope: !658, file: !3, line: 3552, column: 10)
!784 = !DILocation(line: 3552, column: 10, scope: !783)
!785 = !DILocation(line: 3552, column: 20, scope: !783)
!786 = !DILocation(line: 3552, column: 10, scope: !658)
!787 = !DILocation(line: 3553, column: 31, scope: !783)
!788 = !DILocation(line: 3553, column: 8, scope: !783)
!789 = !DILocation(line: 3555, column: 10, scope: !657)
!790 = !DILocation(line: 3555, column: 10, scope: !658)
!791 = !DILocation(line: 3557, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !657, file: !3, line: 3556, column: 8)
!793 = !DILocation(line: 3557, column: 5, scope: !792)
!794 = !DILocation(line: 3558, column: 9, scope: !795)
!795 = distinct !DILexicalBlock(scope: !792, file: !3, line: 3558, column: 7)
!796 = !DILocation(line: 3559, column: 7, scope: !795)
!797 = !DILocation(line: 3559, column: 24, scope: !795)
!798 = !DILocation(line: 3559, column: 16, scope: !795)
!799 = !DILocation(line: 3559, column: 10, scope: !795)
!800 = !DILocation(line: 3559, column: 36, scope: !795)
!801 = !DILocation(line: 3559, column: 34, scope: !795)
!802 = !DILocation(line: 3558, column: 7, scope: !792)
!803 = !DILocation(line: 3564, column: 27, scope: !792)
!804 = !DILocation(line: 3564, column: 3, scope: !792)
!805 = !DILocation(line: 3565, column: 15, scope: !792)
!806 = !DILocation(line: 3565, column: 12, scope: !792)
!807 = !DILocation(line: 3566, column: 8, scope: !792)
!808 = !DILocation(line: 3567, column: 25, scope: !656)
!809 = !DILocation(line: 3567, column: 32, scope: !656)
!810 = !DILocation(line: 3567, column: 45, scope: !656)
!811 = !DILocation(line: 3567, column: 15, scope: !657)
!812 = !DILocation(line: 3569, column: 3, scope: !655)
!813 = !DILocation(line: 3570, column: 3, scope: !655)
!814 = !DILocation(line: 3571, column: 3, scope: !655)
!815 = !DILocation(line: 3572, column: 3, scope: !655)
!816 = !DILocation(line: 3573, column: 8, scope: !656)
!817 = !DILocation(line: 3573, column: 8, scope: !655)
!818 = !DILocation(line: 3574, column: 25, scope: !662)
!819 = !DILocation(line: 3574, column: 15, scope: !656)
!820 = !DILocation(line: 3576, column: 3, scope: !661)
!821 = !DILocation(line: 3577, column: 3, scope: !661)
!822 = !DILocation(line: 3578, column: 13, scope: !661)
!823 = !DILocation(line: 3580, column: 7, scope: !681)
!824 = !DILocation(line: 3580, column: 7, scope: !661)
!825 = !DILocation(line: 3582, column: 36, scope: !680)
!826 = !DILocation(line: 3582, column: 44, scope: !680)
!827 = !DILocation(line: 3582, column: 53, scope: !680)
!828 = !DILocation(line: 3582, column: 46, scope: !680)
!829 = !DILocation(line: 3582, column: 39, scope: !680)
!830 = !DILocation(line: 3582, column: 7, scope: !680)
!831 = !DILocation(line: 3583, column: 7, scope: !680)
!832 = !DILocation(line: 3587, column: 8, scope: !662)
!833 = !DILocation(line: 3588, column: 25, scope: !834)
!834 = distinct !DILexicalBlock(scope: !662, file: !3, line: 3588, column: 15)
!835 = !DILocation(line: 3588, column: 15, scope: !662)
!836 = !DILocation(line: 3590, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 3589, column: 8)
!838 = !DILocation(line: 3593, column: 8, scope: !839)
!839 = distinct !DILexicalBlock(scope: !837, file: !3, line: 3593, column: 7)
!840 = !DILocation(line: 3593, column: 7, scope: !837)
!841 = !DILocation(line: 3602, column: 6, scope: !658)
!842 = !DILocation(line: 3603, column: 10, scope: !658)
!843 = !DILocation(line: 3605, column: 12, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 3604, column: 8)
!845 = distinct !DILexicalBlock(scope: !658, file: !3, line: 3603, column: 10)
!846 = !DILocation(line: 3605, column: 11, scope: !844)
!847 = !DILocation(line: 3605, column: 3, scope: !844)
!848 = !DILocation(line: 3610, column: 21, scope: !849)
!849 = distinct !DILexicalBlock(scope: !844, file: !3, line: 3606, column: 5)
!850 = !DILocation(line: 3611, column: 17, scope: !849)
!851 = !DILocation(line: 3612, column: 7, scope: !849)
!852 = !DILocation(line: 3618, column: 18, scope: !853)
!853 = distinct !DILexicalBlock(scope: !844, file: !3, line: 3618, column: 7)
!854 = !DILocation(line: 0, scope: !658)
!855 = !DILocation(line: 3618, column: 7, scope: !853)
!856 = !DILocation(line: 3618, column: 21, scope: !853)
!857 = !DILocation(line: 3618, column: 7, scope: !844)
!858 = !DILocation(line: 3543, column: 17, scope: !658)
!859 = !DILocation(line: 3624, column: 18, scope: !860)
!860 = distinct !DILexicalBlock(scope: !658, file: !3, line: 3624, column: 10)
!861 = !DILocation(line: 3624, column: 22, scope: !860)
!862 = !DILocation(line: 3625, column: 3, scope: !860)
!863 = !DILocation(line: 3625, column: 7, scope: !860)
!864 = !DILocation(line: 3625, column: 6, scope: !860)
!865 = !DILocation(line: 3625, column: 16, scope: !860)
!866 = !DILocation(line: 3624, column: 10, scope: !658)
!867 = !DILocation(line: 3630, column: 16, scope: !658)
!868 = !DILocation(line: 3631, column: 12, scope: !869)
!869 = distinct !DILexicalBlock(scope: !658, file: !3, line: 3631, column: 10)
!870 = !DILocation(line: 3635, column: 21, scope: !871)
!871 = distinct !DILexicalBlock(scope: !658, file: !3, line: 3635, column: 10)
!872 = !DILocation(line: 3631, column: 10, scope: !658)
!873 = !DILocation(line: 3637, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 3637, column: 3)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 3637, column: 3)
!876 = distinct !DILexicalBlock(scope: !871, file: !3, line: 3636, column: 8)
!877 = !DILocation(line: 3637, column: 3, scope: !875)
!878 = !DILocation(line: 3638, column: 25, scope: !876)
!879 = !DILocation(line: 3638, column: 3, scope: !876)
!880 = !DILocation(line: 3639, column: 8, scope: !876)
!881 = !DILocation(line: 3643, column: 14, scope: !659)
!882 = !DILocation(line: 3644, column: 4, scope: !659)
!883 = !DILocation(line: 3649, column: 8, scope: !674)
!884 = !DILocation(line: 3649, column: 8, scope: !659)
!885 = !DILocation(line: 3651, column: 13, scope: !676)
!886 = !DILocation(line: 3651, column: 12, scope: !677)
!887 = !DILocation(line: 3652, column: 3, scope: !676)
!888 = !DILocation(line: 3654, column: 52, scope: !677)
!889 = !DILocation(line: 3654, column: 51, scope: !677)
!890 = !DILocation(line: 3654, column: 31, scope: !677)
!891 = !DILocation(line: 3654, column: 8, scope: !677)
!892 = !DILocation(line: 3656, column: 14, scope: !659)
!893 = !DILocation(line: 3655, column: 6, scope: !677)
!894 = !DILocation(line: 3657, column: 4, scope: !659)
!895 = distinct !{!895, !687, !896}
!896 = !DILocation(line: 3667, column: 5, scope: !636)
!897 = !DILocation(line: 3669, column: 7, scope: !636)
!898 = !DILocation(line: 3669, column: 25, scope: !666)
!899 = !DILocation(line: 3669, column: 24, scope: !666)
!900 = !DILocation(line: 3669, column: 16, scope: !666)
!901 = !DILocation(line: 3675, column: 19, scope: !902)
!902 = distinct !DILexicalBlock(scope: !665, file: !3, line: 3674, column: 7)
!903 = !DILocation(line: 3676, column: 9, scope: !902)
!904 = !DILocation(line: 3681, column: 17, scope: !665)
!905 = !DILocation(line: 3682, column: 12, scope: !906)
!906 = distinct !DILexicalBlock(scope: !665, file: !3, line: 3682, column: 11)
!907 = !DILocation(line: 3682, column: 36, scope: !906)
!908 = !DILocation(line: 3682, column: 39, scope: !906)
!909 = !DILocation(line: 3682, column: 52, scope: !906)
!910 = !DILocation(line: 3682, column: 41, scope: !906)
!911 = !DILocation(line: 3682, column: 11, scope: !665)
!912 = !DILocation(line: 3685, column: 31, scope: !906)
!913 = !DILocation(line: 3685, column: 25, scope: !906)
!914 = !DILocation(line: 3685, column: 2, scope: !906)
!915 = !DILocation(line: 3694, column: 12, scope: !664)
!916 = !DILocation(line: 3695, column: 8, scope: !664)
!917 = !DILocation(line: 0, scope: !664)
!918 = !DILocation(line: 3697, column: 10, scope: !919)
!919 = distinct !DILexicalBlock(scope: !664, file: !3, line: 3697, column: 6)
!920 = !DILocation(line: 3698, column: 6, scope: !919)
!921 = !DILocation(line: 3698, column: 16, scope: !919)
!922 = !DILocation(line: 3698, column: 10, scope: !919)
!923 = !DILocation(line: 3698, column: 28, scope: !919)
!924 = !DILocation(line: 3698, column: 44, scope: !919)
!925 = !DILocation(line: 3698, column: 35, scope: !919)
!926 = !DILocation(line: 3699, column: 6, scope: !919)
!927 = !DILocation(line: 3699, column: 9, scope: !919)
!928 = !DILocation(line: 3699, column: 50, scope: !919)
!929 = !DILocation(line: 3697, column: 6, scope: !664)
!930 = !DILocation(line: 3705, column: 12, scope: !931)
!931 = distinct !DILexicalBlock(scope: !664, file: !3, line: 3705, column: 6)
!932 = !DILocation(line: 3705, column: 6, scope: !931)
!933 = !DILocation(line: 3705, column: 6, scope: !664)
!934 = !DILocation(line: 3706, column: 27, scope: !931)
!935 = !DILocation(line: 3706, column: 4, scope: !931)
!936 = !DILocation(line: 3708, column: 4, scope: !931)
!937 = !DILocation(line: 3715, column: 17, scope: !665)
!938 = !DILocation(line: 3716, column: 14, scope: !939)
!939 = distinct !DILexicalBlock(scope: !665, file: !3, line: 3716, column: 11)
!940 = !DILocation(line: 3716, column: 11, scope: !665)
!941 = !DILocation(line: 3718, column: 7, scope: !665)
!942 = !DILocation(line: 3721, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !636, file: !3, line: 3721, column: 7)
!944 = !DILocation(line: 3721, column: 7, scope: !636)
!945 = !DILocation(line: 3723, column: 12, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 3723, column: 11)
!947 = distinct !DILexicalBlock(scope: !943, file: !3, line: 3722, column: 5)
!948 = !DILocation(line: 3723, column: 11, scope: !947)
!949 = !DILocation(line: 3725, column: 4, scope: !950)
!950 = distinct !DILexicalBlock(scope: !946, file: !3, line: 3724, column: 2)
!951 = !DILocation(line: 3726, column: 4, scope: !950)
!952 = !DILocation(line: 3727, column: 2, scope: !950)
!953 = !DILocation(line: 3730, column: 5, scope: !943)
!954 = !DILocation(line: 3731, column: 3, scope: !636)
!955 = !DILocation(line: 3733, column: 7, scope: !636)
!956 = !DILocation(line: 3738, column: 1, scope: !636)
!957 = distinct !DISubprogram(name: "string_delete", scope: !3, file: !3, line: 4680, type: !958, scopeLine: 4681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !960)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !42}
!960 = !{!961}
!961 = !DILocalVariable(name: "s", arg: 1, scope: !957, file: !3, line: 4680, type: !42)
!962 = !DILocation(line: 0, scope: !957)
!963 = !DILocation(line: 4682, column: 10, scope: !964)
!964 = distinct !DILexicalBlock(scope: !957, file: !3, line: 4682, column: 7)
!965 = !DILocation(line: 4682, column: 12, scope: !964)
!966 = !DILocation(line: 4682, column: 7, scope: !957)
!967 = !DILocation(line: 4684, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !3, line: 4683, column: 5)
!969 = !DILocation(line: 4685, column: 24, scope: !968)
!970 = !DILocation(line: 4685, column: 26, scope: !968)
!971 = !DILocation(line: 4685, column: 17, scope: !968)
!972 = !DILocation(line: 4685, column: 19, scope: !968)
!973 = !DILocation(line: 4685, column: 12, scope: !968)
!974 = !DILocation(line: 4686, column: 5, scope: !968)
!975 = !DILocation(line: 4687, column: 1, scope: !957)
!976 = distinct !DISubprogram(name: "squangle_mop_up", scope: !3, file: !3, line: 1140, type: !977, scopeLine: 1141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !639}
!979 = !{!980}
!980 = !DILocalVariable(name: "work", arg: 1, scope: !976, file: !3, line: 1140, type: !639)
!981 = !DILocation(line: 0, scope: !976)
!982 = !DILocation(line: 1143, column: 3, scope: !976)
!983 = !DILocation(line: 1144, column: 15, scope: !984)
!984 = distinct !DILexicalBlock(scope: !976, file: !3, line: 1144, column: 7)
!985 = !DILocation(line: 1144, column: 24, scope: !984)
!986 = !DILocation(line: 1144, column: 7, scope: !976)
!987 = !DILocation(line: 1146, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1145, column: 5)
!989 = !DILocation(line: 1147, column: 5, scope: !988)
!990 = !DILocation(line: 1148, column: 15, scope: !991)
!991 = distinct !DILexicalBlock(scope: !976, file: !3, line: 1148, column: 7)
!992 = !DILocation(line: 1148, column: 24, scope: !991)
!993 = !DILocation(line: 1148, column: 7, scope: !976)
!994 = !DILocation(line: 1150, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !3, line: 1149, column: 5)
!996 = !DILocation(line: 1151, column: 5, scope: !995)
!997 = !DILocation(line: 1152, column: 1, scope: !976)
!998 = distinct !DISubprogram(name: "cplus_mangle_opname", scope: !3, file: !3, line: 765, type: !999, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!37, !37, !7}
!1001 = !{!1002, !1003, !1004, !1005}
!1002 = !DILocalVariable(name: "opname", arg: 1, scope: !998, file: !3, line: 765, type: !37)
!1003 = !DILocalVariable(name: "options", arg: 2, scope: !998, file: !3, line: 765, type: !7)
!1004 = !DILocalVariable(name: "i", scope: !998, file: !3, line: 767, type: !215)
!1005 = !DILocalVariable(name: "len", scope: !998, file: !3, line: 768, type: !7)
!1006 = !DILocation(line: 0, scope: !998)
!1007 = !DILocation(line: 770, column: 9, scope: !998)
!1008 = !DILocation(line: 0, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 773, column: 11)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 772, column: 5)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 771, column: 3)
!1012 = distinct !DILexicalBlock(scope: !998, file: !3, line: 771, column: 3)
!1013 = !DILocation(line: 771, column: 8, scope: !1012)
!1014 = !DILocation(line: 0, scope: !1012)
!1015 = !DILocation(line: 771, column: 17, scope: !1011)
!1016 = !DILocation(line: 771, column: 3, scope: !1012)
!1017 = !DILocation(line: 773, column: 36, scope: !1009)
!1018 = !DILocation(line: 773, column: 17, scope: !1009)
!1019 = !DILocation(line: 773, column: 11, scope: !1009)
!1020 = !DILocation(line: 773, column: 41, scope: !1009)
!1021 = !DILocation(line: 774, column: 4, scope: !1009)
!1022 = !DILocation(line: 774, column: 44, scope: !1009)
!1023 = !DILocation(line: 774, column: 29, scope: !1009)
!1024 = !DILocation(line: 775, column: 4, scope: !1009)
!1025 = !DILocation(line: 775, column: 7, scope: !1009)
!1026 = !DILocation(line: 775, column: 44, scope: !1009)
!1027 = !DILocation(line: 773, column: 11, scope: !1010)
!1028 = !DILocation(line: 776, column: 20, scope: !1009)
!1029 = !DILocation(line: 776, column: 2, scope: !1009)
!1030 = !DILocation(line: 771, column: 42, scope: !1011)
!1031 = !DILocation(line: 771, column: 3, scope: !1011)
!1032 = distinct !{!1032, !1016, !1033}
!1033 = !DILocation(line: 777, column: 5, scope: !1012)
!1034 = !DILocation(line: 779, column: 1, scope: !998)
!1035 = distinct !DISubprogram(name: "cplus_demangle_set_style", scope: !3, file: !3, line: 785, type: !1036, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1038)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!5, !5}
!1038 = !{!1039, !1040}
!1039 = !DILocalVariable(name: "style", arg: 1, scope: !1035, file: !3, line: 785, type: !5)
!1040 = !DILocalVariable(name: "demangler", scope: !1035, file: !3, line: 787, type: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!1042 = !DILocation(line: 0, scope: !1035)
!1043 = !DILocation(line: 789, column: 3, scope: !1035)
!1044 = !DILocation(line: 789, column: 21, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 789, column: 3)
!1046 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 789, column: 3)
!1047 = !DILocation(line: 789, column: 38, scope: !1045)
!1048 = !DILocation(line: 789, column: 3, scope: !1046)
!1049 = !DILocation(line: 790, column: 15, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 790, column: 9)
!1051 = !DILocation(line: 790, column: 9, scope: !1045)
!1052 = !DILocation(line: 792, column: 27, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 791, column: 7)
!1054 = !DILocation(line: 793, column: 2, scope: !1053)
!1055 = !DILocation(line: 789, column: 61, scope: !1045)
!1056 = !DILocation(line: 789, column: 3, scope: !1045)
!1057 = distinct !{!1057, !1048, !1058}
!1058 = !DILocation(line: 794, column: 7, scope: !1046)
!1059 = !DILocation(line: 797, column: 1, scope: !1035)
!1060 = distinct !DISubprogram(name: "cplus_demangle_name_to_style", scope: !3, file: !3, line: 802, type: !1061, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!5, !37}
!1063 = !{!1064, !1065}
!1064 = !DILocalVariable(name: "name", arg: 1, scope: !1060, file: !3, line: 802, type: !37)
!1065 = !DILocalVariable(name: "demangler", scope: !1060, file: !3, line: 804, type: !1041)
!1066 = !DILocation(line: 0, scope: !1060)
!1067 = !DILocation(line: 806, column: 3, scope: !1060)
!1068 = !DILocation(line: 806, column: 21, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 806, column: 3)
!1070 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 806, column: 3)
!1071 = !DILocation(line: 806, column: 38, scope: !1069)
!1072 = !DILocation(line: 806, column: 3, scope: !1070)
!1073 = !DILocation(line: 807, column: 34, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 807, column: 9)
!1075 = !DILocation(line: 807, column: 9, scope: !1074)
!1076 = !DILocation(line: 807, column: 57, scope: !1074)
!1077 = !DILocation(line: 807, column: 9, scope: !1069)
!1078 = !DILocation(line: 808, column: 25, scope: !1074)
!1079 = !DILocation(line: 808, column: 7, scope: !1074)
!1080 = !DILocation(line: 806, column: 61, scope: !1069)
!1081 = !DILocation(line: 806, column: 3, scope: !1069)
!1082 = distinct !{!1082, !1072, !1083}
!1083 = !DILocation(line: 808, column: 25, scope: !1070)
!1084 = !DILocation(line: 811, column: 1, scope: !1060)
!1085 = distinct !DISubprogram(name: "cplus_demangle", scope: !3, file: !3, line: 842, type: !66, scopeLine: 843, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1086)
!1086 = !{!1087, !1088, !1089, !1090}
!1087 = !DILocalVariable(name: "mangled", arg: 1, scope: !1085, file: !3, line: 842, type: !37)
!1088 = !DILocalVariable(name: "options", arg: 2, scope: !1085, file: !3, line: 842, type: !7)
!1089 = !DILocalVariable(name: "ret", scope: !1085, file: !3, line: 844, type: !34)
!1090 = !DILocalVariable(name: "work", scope: !1085, file: !3, line: 845, type: !388)
!1091 = !DILocation(line: 0, scope: !1085)
!1092 = !DILocation(line: 845, column: 3, scope: !1085)
!1093 = !DILocation(line: 845, column: 21, scope: !1085)
!1094 = !DILocation(line: 847, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 847, column: 7)
!1096 = !DILocation(line: 847, column: 32, scope: !1095)
!1097 = !DILocation(line: 847, column: 7, scope: !1085)
!1098 = !DILocation(line: 848, column: 12, scope: !1095)
!1099 = !DILocation(line: 848, column: 5, scope: !1095)
!1100 = !DILocation(line: 850, column: 3, scope: !1085)
!1101 = !DILocation(line: 851, column: 9, scope: !1085)
!1102 = !DILocation(line: 851, column: 17, scope: !1085)
!1103 = !DILocation(line: 852, column: 22, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 852, column: 7)
!1105 = !DILocation(line: 852, column: 41, scope: !1104)
!1106 = !DILocation(line: 852, column: 7, scope: !1085)
!1107 = !DILocation(line: 853, column: 28, scope: !1104)
!1108 = !DILocation(line: 853, column: 53, scope: !1104)
!1109 = !DILocation(line: 853, column: 19, scope: !1104)
!1110 = !DILocation(line: 853, column: 5, scope: !1104)
!1111 = !DILocation(line: 856, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 856, column: 7)
!1113 = !DILocation(line: 856, column: 25, scope: !1112)
!1114 = !DILocation(line: 856, column: 28, scope: !1112)
!1115 = !DILocation(line: 856, column: 7, scope: !1085)
!1116 = !DILocation(line: 858, column: 13, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 857, column: 5)
!1118 = !DILocation(line: 859, column: 11, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 859, column: 11)
!1120 = !DILocation(line: 859, column: 15, scope: !1119)
!1121 = !DILocation(line: 859, column: 18, scope: !1119)
!1122 = !DILocation(line: 859, column: 11, scope: !1117)
!1123 = !DILocation(line: 863, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 863, column: 7)
!1125 = !DILocation(line: 863, column: 7, scope: !1085)
!1126 = !DILocation(line: 865, column: 13, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 864, column: 5)
!1128 = !DILocation(line: 866, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 866, column: 11)
!1130 = !DILocation(line: 866, column: 11, scope: !1127)
!1131 = !DILocation(line: 870, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 870, column: 7)
!1133 = !DILocation(line: 870, column: 7, scope: !1085)
!1134 = !DILocation(line: 871, column: 12, scope: !1132)
!1135 = !DILocation(line: 871, column: 5, scope: !1132)
!1136 = !DILocation(line: 873, column: 34, scope: !1085)
!1137 = !DILocation(line: 873, column: 9, scope: !1085)
!1138 = !DILocation(line: 874, column: 3, scope: !1085)
!1139 = !DILocation(line: 875, column: 3, scope: !1085)
!1140 = !DILocation(line: 876, column: 1, scope: !1085)
!1141 = !DILocation(line: 0, scope: !65)
!1142 = !DILocation(line: 889, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !65, file: !3, line: 889, column: 7)
!1144 = !DILocation(line: 889, column: 37, scope: !1143)
!1145 = !DILocation(line: 890, column: 13, scope: !1143)
!1146 = !DILocation(line: 889, column: 7, scope: !65)
!1147 = !DILocation(line: 893, column: 8, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !65, file: !3, line: 893, column: 7)
!1149 = !DILocation(line: 893, column: 7, scope: !65)
!1150 = !DILocation(line: 900, column: 10, scope: !65)
!1151 = !DILocation(line: 901, column: 15, scope: !65)
!1152 = !DILocation(line: 905, column: 3, scope: !65)
!1153 = !DILocation(line: 908, column: 11, scope: !78)
!1154 = !DILocation(line: 908, column: 11, scope: !79)
!1155 = !DILocation(line: 912, column: 30, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !78, file: !3, line: 909, column: 9)
!1157 = !DILocation(line: 911, column: 20, scope: !1156)
!1158 = !DILocation(line: 911, column: 22, scope: !1156)
!1159 = !DILocation(line: 911, column: 15, scope: !1156)
!1160 = !DILocation(line: 911, column: 18, scope: !1156)
!1161 = !DILocation(line: 912, column: 18, scope: !1156)
!1162 = distinct !{!1162, !1163, !1164}
!1163 = !DILocation(line: 910, column: 11, scope: !1156)
!1164 = !DILocation(line: 913, column: 72, scope: !1156)
!1165 = !DILocation(line: 912, column: 33, scope: !1156)
!1166 = !DILocation(line: 913, column: 18, scope: !1156)
!1167 = !DILocation(line: 913, column: 27, scope: !1156)
!1168 = !DILocation(line: 913, column: 34, scope: !1156)
!1169 = !DILocation(line: 913, column: 38, scope: !1156)
!1170 = !DILocation(line: 913, column: 53, scope: !1156)
!1171 = !DILocation(line: 913, column: 56, scope: !1156)
!1172 = !DILocation(line: 911, column: 13, scope: !1156)
!1173 = !DILocation(line: 915, column: 21, scope: !77)
!1174 = !DILocation(line: 915, column: 16, scope: !78)
!1175 = !DILocation(line: 927, column: 11, scope: !83)
!1176 = !DILocation(line: 0, scope: !83)
!1177 = !DILocation(line: 903, column: 5, scope: !65)
!1178 = !DILocation(line: 904, column: 5, scope: !65)
!1179 = !DILocation(line: 0, scope: !76)
!1180 = !DILocation(line: 929, column: 31, scope: !81)
!1181 = !DILocation(line: 929, column: 23, scope: !81)
!1182 = !DILocation(line: 0, scope: !81)
!1183 = !DILocation(line: 930, column: 49, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !81, file: !3, line: 930, column: 19)
!1185 = !DILocation(line: 930, column: 20, scope: !1184)
!1186 = !DILocation(line: 930, column: 19, scope: !81)
!1187 = !DILocation(line: 932, column: 21, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 931, column: 17)
!1189 = !DILocation(line: 933, column: 31, scope: !1188)
!1190 = !DILocation(line: 933, column: 23, scope: !1188)
!1191 = !DILocation(line: 934, column: 21, scope: !1188)
!1192 = !DILocation(line: 934, column: 24, scope: !1188)
!1193 = !DILocation(line: 935, column: 47, scope: !1188)
!1194 = !DILocation(line: 935, column: 19, scope: !1188)
!1195 = !DILocation(line: 936, column: 21, scope: !1188)
!1196 = !DILocation(line: 937, column: 21, scope: !1188)
!1197 = !DILocation(line: 937, column: 24, scope: !1188)
!1198 = !DILocation(line: 938, column: 19, scope: !1188)
!1199 = !DILocation(line: 927, column: 41, scope: !82)
!1200 = !DILocation(line: 927, column: 11, scope: !82)
!1201 = distinct !{!1201, !1175, !1202}
!1202 = !DILocation(line: 940, column: 13, scope: !83)
!1203 = !DILocation(line: 951, column: 11, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !79, file: !3, line: 951, column: 11)
!1205 = !DILocation(line: 951, column: 16, scope: !1204)
!1206 = !DILocation(line: 951, column: 11, scope: !79)
!1207 = !DILocation(line: 954, column: 15, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 954, column: 15)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 952, column: 9)
!1210 = !DILocation(line: 954, column: 20, scope: !1208)
!1211 = !DILocation(line: 954, column: 15, scope: !1209)
!1212 = !DILocation(line: 957, column: 17, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 955, column: 13)
!1214 = !DILocation(line: 958, column: 19, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 958, column: 19)
!1216 = !DILocation(line: 958, column: 19, scope: !1213)
!1217 = !DILocation(line: 963, column: 39, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 959, column: 17)
!1219 = !DILocation(line: 0, scope: !1213)
!1220 = !DILocation(line: 962, column: 22, scope: !1218)
!1221 = !DILocation(line: 963, column: 26, scope: !1218)
!1222 = distinct !{!1222, !1223, !1224}
!1223 = !DILocation(line: 961, column: 19, scope: !1218)
!1224 = !DILocation(line: 963, column: 73, scope: !1218)
!1225 = !DILocation(line: 963, column: 48, scope: !1218)
!1226 = !DILocation(line: 963, column: 55, scope: !1218)
!1227 = !DILocation(line: 963, column: 58, scope: !1218)
!1228 = !DILocation(line: 962, column: 21, scope: !1218)
!1229 = !DILocation(line: 965, column: 27, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 965, column: 24)
!1231 = !DILocation(line: 965, column: 34, scope: !1230)
!1232 = !DILocation(line: 965, column: 48, scope: !1230)
!1233 = !DILocation(line: 965, column: 38, scope: !1230)
!1234 = !DILocation(line: 965, column: 24, scope: !1215)
!1235 = !DILocation(line: 971, column: 24, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 971, column: 24)
!1237 = !DILocation(line: 967, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 966, column: 17)
!1239 = !DILocation(line: 968, column: 21, scope: !1238)
!1240 = !DILocation(line: 969, column: 19, scope: !1238)
!1241 = !DILocation(line: 971, column: 27, scope: !1236)
!1242 = !DILocation(line: 971, column: 34, scope: !1236)
!1243 = !DILocation(line: 971, column: 48, scope: !1236)
!1244 = !DILocation(line: 971, column: 38, scope: !1236)
!1245 = !DILocation(line: 971, column: 24, scope: !1230)
!1246 = !DILocation(line: 973, column: 19, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 972, column: 17)
!1248 = !DILocation(line: 974, column: 21, scope: !1247)
!1249 = !DILocation(line: 975, column: 19, scope: !1247)
!1250 = !DILocation(line: 980, column: 19, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 978, column: 17)
!1252 = !DILocation(line: 0, scope: !79)
!1253 = distinct !{!1253, !1152, !1254}
!1254 = !DILocation(line: 1052, column: 5, scope: !65)
!1255 = !DILocation(line: 983, column: 25, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 983, column: 20)
!1257 = !DILocation(line: 983, column: 32, scope: !1256)
!1258 = !DILocation(line: 983, column: 40, scope: !1256)
!1259 = !DILocation(line: 983, column: 20, scope: !1208)
!1260 = !DILocation(line: 986, column: 17, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 984, column: 13)
!1262 = !DILocation(line: 987, column: 15, scope: !1261)
!1263 = !DILocation(line: 0, scope: !1261)
!1264 = !DILocation(line: 987, column: 22, scope: !1261)
!1265 = !DILocation(line: 988, column: 18, scope: !1261)
!1266 = distinct !{!1266, !1262, !1265}
!1267 = !DILocation(line: 989, column: 24, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 989, column: 19)
!1269 = !DILocation(line: 989, column: 31, scope: !1268)
!1270 = !DILocation(line: 989, column: 34, scope: !1268)
!1271 = !DILocation(line: 989, column: 39, scope: !1268)
!1272 = !DILocation(line: 989, column: 19, scope: !1261)
!1273 = !DILocation(line: 998, column: 11, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !79, file: !3, line: 998, column: 11)
!1275 = !DILocation(line: 998, column: 16, scope: !1274)
!1276 = !DILocation(line: 998, column: 23, scope: !1274)
!1277 = !DILocation(line: 998, column: 26, scope: !1274)
!1278 = !DILocation(line: 998, column: 31, scope: !1274)
!1279 = !DILocation(line: 998, column: 11, scope: !79)
!1280 = !DILocation(line: 1000, column: 15, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 1000, column: 15)
!1282 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 999, column: 9)
!1283 = !DILocation(line: 1000, column: 20, scope: !1281)
!1284 = !DILocation(line: 1000, column: 27, scope: !1281)
!1285 = !DILocation(line: 1000, column: 30, scope: !1281)
!1286 = !DILocation(line: 1000, column: 35, scope: !1281)
!1287 = !DILocation(line: 1000, column: 15, scope: !1282)
!1288 = !DILocation(line: 1005, column: 25, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 1005, column: 20)
!1290 = !DILocation(line: 1005, column: 32, scope: !1289)
!1291 = !DILocation(line: 1005, column: 35, scope: !1289)
!1292 = !DILocation(line: 1005, column: 40, scope: !1289)
!1293 = !DILocation(line: 1005, column: 20, scope: !1281)
!1294 = !DILocation(line: 1008, column: 17, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1006, column: 13)
!1296 = !DILocation(line: 1010, column: 15, scope: !1295)
!1297 = !DILocation(line: 1015, column: 17, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !79, file: !3, line: 1015, column: 11)
!1299 = !DILocation(line: 1015, column: 24, scope: !1298)
!1300 = !DILocation(line: 1015, column: 32, scope: !1298)
!1301 = !DILocation(line: 1015, column: 40, scope: !1298)
!1302 = !DILocation(line: 1015, column: 43, scope: !1298)
!1303 = !DILocation(line: 1015, column: 48, scope: !1298)
!1304 = !DILocation(line: 1015, column: 11, scope: !79)
!1305 = !DILocation(line: 1020, column: 16, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !79, file: !3, line: 1020, column: 11)
!1307 = !DILocation(line: 1020, column: 23, scope: !1306)
!1308 = !DILocation(line: 1020, column: 26, scope: !1306)
!1309 = !DILocation(line: 1020, column: 31, scope: !1306)
!1310 = !DILocation(line: 1020, column: 11, scope: !79)
!1311 = !DILocation(line: 1025, column: 14, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !79, file: !3, line: 1025, column: 11)
!1313 = !DILocation(line: 1025, column: 21, scope: !1312)
!1314 = !DILocation(line: 1025, column: 27, scope: !1312)
!1315 = !DILocation(line: 1025, column: 11, scope: !79)
!1316 = !DILocation(line: 1030, column: 16, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !79, file: !3, line: 1030, column: 11)
!1318 = !DILocation(line: 1030, column: 11, scope: !79)
!1319 = !DILocation(line: 1033, column: 15, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 1033, column: 15)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 1031, column: 9)
!1322 = !DILocation(line: 1033, column: 20, scope: !1320)
!1323 = !DILocation(line: 1033, column: 27, scope: !1320)
!1324 = !DILocation(line: 1033, column: 35, scope: !1320)
!1325 = !DILocation(line: 1033, column: 15, scope: !1321)
!1326 = !DILocation(line: 1034, column: 15, scope: !1320)
!1327 = !DILocation(line: 1034, column: 13, scope: !1320)
!1328 = !DILocation(line: 1035, column: 25, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 1035, column: 20)
!1330 = !DILocation(line: 1035, column: 20, scope: !1320)
!1331 = !DILocation(line: 1038, column: 11, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !79, file: !3, line: 1038, column: 11)
!1333 = !DILocation(line: 1038, column: 16, scope: !1332)
!1334 = !DILocation(line: 1038, column: 23, scope: !1332)
!1335 = !DILocation(line: 1038, column: 26, scope: !1332)
!1336 = !DILocation(line: 1038, column: 11, scope: !79)
!1337 = !DILocation(line: 1041, column: 13, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1039, column: 9)
!1339 = !DILocation(line: 1042, column: 11, scope: !1338)
!1340 = !DILocation(line: 0, scope: !1338)
!1341 = !DILocation(line: 1042, column: 18, scope: !1338)
!1342 = !DILocation(line: 1043, column: 14, scope: !1338)
!1343 = distinct !{!1343, !1339, !1342}
!1344 = !DILocation(line: 1045, column: 11, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !79, file: !3, line: 1045, column: 11)
!1346 = !DILocation(line: 1045, column: 14, scope: !1345)
!1347 = !DILocation(line: 1045, column: 11, scope: !79)
!1348 = !DILocation(line: 1053, column: 6, scope: !65)
!1349 = !DILocation(line: 1054, column: 3, scope: !65)
!1350 = !DILocation(line: 1057, column: 10, scope: !65)
!1351 = !DILocation(line: 1056, column: 2, scope: !65)
!1352 = !DILocation(line: 1058, column: 15, scope: !65)
!1353 = !DILocation(line: 1060, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !65, file: !3, line: 1060, column: 7)
!1355 = !DILocation(line: 1060, column: 18, scope: !1354)
!1356 = !DILocation(line: 1060, column: 7, scope: !65)
!1357 = !DILocation(line: 1061, column: 6, scope: !1354)
!1358 = !DILocation(line: 1063, column: 5, scope: !1354)
!1359 = !DILocation(line: 1066, column: 1, scope: !65)
!1360 = distinct !DISubprogram(name: "internal_cplus_demangle", scope: !3, file: !3, line: 1075, type: !1361, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!34, !639, !37}
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372}
!1364 = !DILocalVariable(name: "work", arg: 1, scope: !1360, file: !3, line: 1075, type: !639)
!1365 = !DILocalVariable(name: "mangled", arg: 2, scope: !1360, file: !3, line: 1075, type: !37)
!1366 = !DILocalVariable(name: "decl", scope: !1360, file: !3, line: 1078, type: !43)
!1367 = !DILocalVariable(name: "success", scope: !1360, file: !3, line: 1079, type: !7)
!1368 = !DILocalVariable(name: "demangled", scope: !1360, file: !3, line: 1080, type: !34)
!1369 = !DILocalVariable(name: "s1", scope: !1360, file: !3, line: 1081, type: !7)
!1370 = !DILocalVariable(name: "s2", scope: !1360, file: !3, line: 1081, type: !7)
!1371 = !DILocalVariable(name: "s3", scope: !1360, file: !3, line: 1081, type: !7)
!1372 = !DILocalVariable(name: "s4", scope: !1360, file: !3, line: 1081, type: !7)
!1373 = !DILocation(line: 0, scope: !1360)
!1374 = !DILocation(line: 1078, column: 3, scope: !1360)
!1375 = !DILocation(line: 1082, column: 14, scope: !1360)
!1376 = !DILocation(line: 1083, column: 14, scope: !1360)
!1377 = !DILocation(line: 1084, column: 14, scope: !1360)
!1378 = !DILocation(line: 1085, column: 14, scope: !1360)
!1379 = !DILocation(line: 1086, column: 40, scope: !1360)
!1380 = !DILocation(line: 1086, column: 21, scope: !1360)
!1381 = !DILocation(line: 1087, column: 20, scope: !1360)
!1382 = !DILocation(line: 1088, column: 9, scope: !1360)
!1383 = !DILocation(line: 1088, column: 21, scope: !1360)
!1384 = !DILocation(line: 1090, column: 16, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 1090, column: 7)
!1386 = !DILocation(line: 1090, column: 25, scope: !1385)
!1387 = !DILocation(line: 1090, column: 29, scope: !1385)
!1388 = !DILocation(line: 1090, column: 38, scope: !1385)
!1389 = !DILocation(line: 1090, column: 7, scope: !1360)
!1390 = !DILocation(line: 1092, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 1091, column: 5)
!1392 = !DILocation(line: 1101, column: 12, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 1101, column: 11)
!1394 = !DILocation(line: 1101, column: 28, scope: !1393)
!1395 = !DILocation(line: 1101, column: 31, scope: !1393)
!1396 = !DILocation(line: 1101, column: 11, scope: !1391)
!1397 = !DILocation(line: 1103, column: 14, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 1102, column: 2)
!1399 = !DILocation(line: 1104, column: 2, scope: !1398)
!1400 = !DILocation(line: 1105, column: 12, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 1105, column: 11)
!1402 = !DILocation(line: 1105, column: 11, scope: !1391)
!1403 = !DILocation(line: 1107, column: 14, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1106, column: 2)
!1405 = !DILocation(line: 1108, column: 2, scope: !1404)
!1406 = !DILocation(line: 0, scope: !1391)
!1407 = !DILocation(line: 1109, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 1109, column: 11)
!1409 = !DILocation(line: 1109, column: 19, scope: !1408)
!1410 = !DILocation(line: 1109, column: 24, scope: !1408)
!1411 = !DILocation(line: 1109, column: 23, scope: !1408)
!1412 = !DILocation(line: 1109, column: 32, scope: !1408)
!1413 = !DILocation(line: 1109, column: 11, scope: !1391)
!1414 = !DILocation(line: 1111, column: 14, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 1110, column: 2)
!1416 = !DILocation(line: 1112, column: 2, scope: !1415)
!1417 = !DILocation(line: 1113, column: 17, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 1113, column: 11)
!1419 = !DILocation(line: 1113, column: 29, scope: !1418)
!1420 = !DILocation(line: 1113, column: 11, scope: !1391)
!1421 = !DILocation(line: 1115, column: 11, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 1114, column: 9)
!1423 = !DILocation(line: 1116, column: 29, scope: !1422)
!1424 = !DILocation(line: 1117, column: 9, scope: !1422)
!1425 = !DILocation(line: 1118, column: 22, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 1118, column: 16)
!1427 = !DILocation(line: 1118, column: 33, scope: !1426)
!1428 = !DILocation(line: 1118, column: 16, scope: !1418)
!1429 = !DILocation(line: 1120, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1119, column: 9)
!1431 = !DILocation(line: 1121, column: 28, scope: !1430)
!1432 = !DILocation(line: 1122, column: 9, scope: !1430)
!1433 = !DILocation(line: 1123, column: 22, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1123, column: 16)
!1435 = !DILocation(line: 1123, column: 34, scope: !1434)
!1436 = !DILocation(line: 1123, column: 16, scope: !1426)
!1437 = !DILocation(line: 1125, column: 11, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1124, column: 9)
!1439 = !DILocation(line: 1126, column: 29, scope: !1438)
!1440 = !DILocation(line: 1127, column: 9, scope: !1438)
!1441 = !DILocation(line: 1128, column: 19, scope: !1391)
!1442 = !DILocation(line: 1129, column: 5, scope: !1391)
!1443 = !DILocation(line: 1130, column: 21, scope: !1360)
!1444 = !DILocation(line: 1131, column: 20, scope: !1360)
!1445 = !DILocation(line: 1132, column: 21, scope: !1360)
!1446 = !DILocation(line: 1133, column: 20, scope: !1360)
!1447 = !DILocation(line: 1135, column: 1, scope: !1360)
!1448 = !DILocation(line: 1134, column: 3, scope: !1360)
!1449 = distinct !DISubprogram(name: "string_init", scope: !3, file: !3, line: 4690, type: !958, scopeLine: 4691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1450)
!1450 = !{!1451}
!1451 = !DILocalVariable(name: "s", arg: 1, scope: !1449, file: !3, line: 4690, type: !42)
!1452 = !DILocation(line: 0, scope: !1449)
!1453 = !DILocation(line: 4692, column: 20, scope: !1449)
!1454 = !DILocation(line: 4692, column: 22, scope: !1449)
!1455 = !DILocation(line: 4692, column: 13, scope: !1449)
!1456 = !DILocation(line: 4692, column: 15, scope: !1449)
!1457 = !DILocation(line: 4692, column: 6, scope: !1449)
!1458 = !DILocation(line: 4692, column: 8, scope: !1449)
!1459 = !DILocation(line: 4693, column: 1, scope: !1449)
!1460 = distinct !DISubprogram(name: "gnu_special", scope: !3, file: !3, line: 2853, type: !637, scopeLine: 2854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1474, !1477}
!1462 = !DILocalVariable(name: "work", arg: 1, scope: !1460, file: !3, line: 2853, type: !639)
!1463 = !DILocalVariable(name: "mangled", arg: 2, scope: !1460, file: !3, line: 2853, type: !640)
!1464 = !DILocalVariable(name: "declp", arg: 3, scope: !1460, file: !3, line: 2853, type: !42)
!1465 = !DILocalVariable(name: "n", scope: !1460, file: !3, line: 2855, type: !7)
!1466 = !DILocalVariable(name: "success", scope: !1460, file: !3, line: 2856, type: !7)
!1467 = !DILocalVariable(name: "p", scope: !1460, file: !3, line: 2857, type: !37)
!1468 = !DILocalVariable(name: "delta", scope: !1469, file: !3, line: 2997, type: !7)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 2996, column: 5)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 2995, column: 12)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 2936, column: 12)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 2867, column: 12)
!1473 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 2859, column: 7)
!1474 = !DILocalVariable(name: "method", scope: !1475, file: !3, line: 3005, type: !34)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 3004, column: 2)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 3001, column: 11)
!1477 = !DILocalVariable(name: "buf", scope: !1478, file: !3, line: 3009, type: !1480)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 3008, column: 6)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 3007, column: 8)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 400, elements: !1481)
!1481 = !{!1482}
!1482 = !DISubrange(count: 50)
!1483 = !DILocation(line: 0, scope: !1460)
!1484 = !DILocation(line: 2859, column: 8, scope: !1473)
!1485 = !DILocation(line: 2859, column: 7, scope: !1473)
!1486 = !DILocation(line: 2859, column: 21, scope: !1473)
!1487 = !DILocation(line: 2860, column: 7, scope: !1473)
!1488 = !DILocation(line: 2860, column: 33, scope: !1473)
!1489 = !DILocation(line: 2860, column: 10, scope: !1473)
!1490 = !DILocation(line: 2860, column: 48, scope: !1473)
!1491 = !DILocation(line: 2861, column: 7, scope: !1473)
!1492 = !DILocation(line: 2867, column: 13, scope: !1472)
!1493 = !DILocation(line: 2861, column: 11, scope: !1473)
!1494 = !DILocation(line: 2861, column: 10, scope: !1473)
!1495 = !DILocation(line: 2861, column: 24, scope: !1473)
!1496 = !DILocation(line: 2859, column: 7, scope: !1460)
!1497 = !DILocation(line: 2864, column: 18, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 2862, column: 5)
!1499 = !DILocation(line: 2865, column: 15, scope: !1498)
!1500 = !DILocation(line: 2865, column: 26, scope: !1498)
!1501 = !DILocation(line: 2866, column: 5, scope: !1498)
!1502 = !DILocation(line: 2867, column: 12, scope: !1472)
!1503 = !DILocation(line: 2867, column: 26, scope: !1472)
!1504 = !DILocation(line: 2868, column: 5, scope: !1472)
!1505 = !DILocation(line: 2868, column: 10, scope: !1472)
!1506 = !DILocation(line: 2868, column: 24, scope: !1472)
!1507 = !DILocation(line: 2869, column: 3, scope: !1472)
!1508 = !DILocation(line: 2869, column: 6, scope: !1472)
!1509 = !DILocation(line: 2869, column: 20, scope: !1472)
!1510 = !DILocation(line: 2870, column: 3, scope: !1472)
!1511 = !DILocation(line: 2870, column: 6, scope: !1472)
!1512 = !DILocation(line: 2870, column: 20, scope: !1472)
!1513 = !DILocation(line: 2871, column: 3, scope: !1472)
!1514 = !DILocation(line: 2871, column: 6, scope: !1472)
!1515 = !DILocation(line: 2871, column: 20, scope: !1472)
!1516 = !DILocation(line: 2872, column: 9, scope: !1472)
!1517 = !DILocation(line: 2872, column: 27, scope: !1472)
!1518 = !DILocation(line: 2873, column: 6, scope: !1472)
!1519 = !DILocation(line: 2873, column: 9, scope: !1472)
!1520 = !DILocation(line: 2873, column: 23, scope: !1472)
!1521 = !DILocation(line: 2874, column: 6, scope: !1472)
!1522 = !DILocation(line: 2874, column: 32, scope: !1472)
!1523 = !DILocation(line: 2874, column: 9, scope: !1472)
!1524 = !DILocation(line: 2874, column: 47, scope: !1472)
!1525 = !DILocation(line: 2867, column: 12, scope: !1473)
!1526 = !DILocation(line: 2880, column: 12, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 2880, column: 11)
!1528 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 2875, column: 5)
!1529 = !DILocation(line: 0, scope: !1527)
!1530 = !DILocation(line: 2880, column: 11, scope: !1527)
!1531 = !DILocation(line: 2936, column: 13, scope: !1471)
!1532 = !DILocation(line: 2936, column: 12, scope: !1471)
!1533 = !DILocation(line: 2880, column: 11, scope: !1528)
!1534 = !DILocation(line: 2881, column: 13, scope: !1527)
!1535 = !DILocation(line: 2881, column: 2, scope: !1527)
!1536 = !DILocation(line: 2883, column: 13, scope: !1527)
!1537 = !DILocation(line: 0, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 2922, column: 3)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 2921, column: 12)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 2920, column: 6)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 2919, column: 8)
!1542 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 2885, column: 2)
!1543 = !DILocation(line: 2884, column: 7, scope: !1528)
!1544 = !DILocation(line: 2884, column: 15, scope: !1528)
!1545 = !DILocation(line: 2884, column: 14, scope: !1528)
!1546 = !DILocation(line: 2884, column: 24, scope: !1528)
!1547 = !DILocation(line: 2886, column: 12, scope: !1542)
!1548 = !DILocation(line: 2886, column: 4, scope: !1542)
!1549 = !DILocation(line: 2890, column: 18, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 2887, column: 6)
!1551 = !DILocation(line: 2891, column: 8, scope: !1550)
!1552 = !DILocation(line: 2893, column: 18, scope: !1550)
!1553 = !DILocation(line: 2895, column: 8, scope: !1550)
!1554 = !DILocation(line: 2897, column: 12, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 2897, column: 12)
!1556 = !DILocation(line: 2897, column: 12, scope: !1550)
!1557 = !DILocation(line: 2899, column: 9, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 2898, column: 3)
!1559 = !DILocation(line: 2904, column: 27, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 2904, column: 9)
!1561 = !DILocation(line: 2904, column: 19, scope: !1560)
!1562 = !DILocation(line: 2904, column: 13, scope: !1560)
!1563 = !DILocation(line: 2904, column: 11, scope: !1560)
!1564 = !DILocation(line: 2904, column: 9, scope: !1558)
!1565 = !DILocation(line: 2912, column: 9, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 2911, column: 3)
!1567 = !DILocation(line: 0, scope: !1555)
!1568 = !DILocation(line: 2914, column: 31, scope: !1550)
!1569 = !DILocation(line: 2914, column: 8, scope: !1550)
!1570 = !DILocation(line: 2915, column: 19, scope: !1550)
!1571 = !DILocation(line: 2916, column: 6, scope: !1550)
!1572 = !DILocation(line: 2918, column: 17, scope: !1542)
!1573 = !DILocation(line: 2918, column: 8, scope: !1542)
!1574 = !DILocation(line: 2919, column: 8, scope: !1541)
!1575 = !DILocation(line: 2919, column: 16, scope: !1541)
!1576 = !DILocation(line: 2919, column: 32, scope: !1541)
!1577 = !DILocation(line: 2919, column: 41, scope: !1541)
!1578 = !DILocation(line: 2919, column: 38, scope: !1541)
!1579 = !DILocation(line: 2919, column: 8, scope: !1542)
!1580 = !DILocation(line: 2923, column: 27, scope: !1538)
!1581 = !DILocation(line: 2923, column: 5, scope: !1538)
!1582 = !DILocation(line: 2924, column: 15, scope: !1538)
!1583 = !DILocation(line: 2925, column: 3, scope: !1538)
!1584 = distinct !{!1584, !1543, !1585}
!1585 = !DILocation(line: 2932, column: 2, scope: !1528)
!1586 = !DILocation(line: 2933, column: 11, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 2933, column: 11)
!1588 = !DILocation(line: 2933, column: 11, scope: !1528)
!1589 = !DILocation(line: 2934, column: 2, scope: !1587)
!1590 = !DILocation(line: 2936, column: 26, scope: !1471)
!1591 = !DILocation(line: 2937, column: 5, scope: !1471)
!1592 = !DILocation(line: 2937, column: 32, scope: !1471)
!1593 = !DILocation(line: 2937, column: 9, scope: !1471)
!1594 = !DILocation(line: 2937, column: 47, scope: !1471)
!1595 = !DILocation(line: 2938, column: 5, scope: !1471)
!1596 = !DILocation(line: 2938, column: 22, scope: !1471)
!1597 = !DILocation(line: 2938, column: 13, scope: !1471)
!1598 = !DILocation(line: 2938, column: 48, scope: !1471)
!1599 = !DILocation(line: 2936, column: 12, scope: !1472)
!1600 = !DILocation(line: 2941, column: 17, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 2939, column: 5)
!1602 = !DILocation(line: 2942, column: 15, scope: !1601)
!1603 = !DILocation(line: 2942, column: 7, scope: !1601)
!1604 = !DILocation(line: 2946, column: 14, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 2943, column: 2)
!1606 = !DILocation(line: 2947, column: 4, scope: !1605)
!1607 = !DILocation(line: 2949, column: 14, scope: !1605)
!1608 = !DILocation(line: 2950, column: 4, scope: !1605)
!1609 = !DILocation(line: 2952, column: 8, scope: !1605)
!1610 = !DILocation(line: 2953, column: 10, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 2953, column: 8)
!1612 = !DILocation(line: 2953, column: 14, scope: !1611)
!1613 = !DILocation(line: 2953, column: 17, scope: !1611)
!1614 = !DILocation(line: 2953, column: 36, scope: !1611)
!1615 = !DILocation(line: 2953, column: 28, scope: !1611)
!1616 = !DILocation(line: 2953, column: 19, scope: !1611)
!1617 = !DILocation(line: 2953, column: 8, scope: !1605)
!1618 = !DILocation(line: 2959, column: 10, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 2959, column: 8)
!1620 = !DILocation(line: 2959, column: 15, scope: !1619)
!1621 = !DILocation(line: 2959, column: 27, scope: !1619)
!1622 = !DILocation(line: 2959, column: 18, scope: !1619)
!1623 = !DILocation(line: 2959, column: 52, scope: !1619)
!1624 = !DILocation(line: 2960, column: 8, scope: !1619)
!1625 = !DILocation(line: 2960, column: 12, scope: !1619)
!1626 = !DILocation(line: 2960, column: 11, scope: !1619)
!1627 = !DILocation(line: 2960, column: 25, scope: !1619)
!1628 = !DILocation(line: 2961, column: 8, scope: !1619)
!1629 = !DILocation(line: 2961, column: 11, scope: !1619)
!1630 = !DILocation(line: 2961, column: 28, scope: !1619)
!1631 = !DILocation(line: 2961, column: 25, scope: !1619)
!1632 = !DILocation(line: 2962, column: 8, scope: !1619)
!1633 = !DILocation(line: 2962, column: 34, scope: !1619)
!1634 = !DILocation(line: 2962, column: 11, scope: !1619)
!1635 = !DILocation(line: 2959, column: 8, scope: !1605)
!1636 = !DILocation(line: 2968, column: 8, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 2963, column: 6)
!1638 = !DILocation(line: 2969, column: 19, scope: !1637)
!1639 = !DILocation(line: 2973, column: 12, scope: !1637)
!1640 = !DILocation(line: 2974, column: 8, scope: !1637)
!1641 = !DILocation(line: 2977, column: 27, scope: !1605)
!1642 = !DILocation(line: 2977, column: 4, scope: !1605)
!1643 = !DILocation(line: 2978, column: 15, scope: !1605)
!1644 = !DILocation(line: 2979, column: 2, scope: !1605)
!1645 = !DILocation(line: 0, scope: !1471)
!1646 = !DILocation(line: 2980, column: 11, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 2980, column: 11)
!1648 = !DILocation(line: 2980, column: 19, scope: !1647)
!1649 = !DILocation(line: 2980, column: 28, scope: !1647)
!1650 = !DILocation(line: 2980, column: 25, scope: !1647)
!1651 = !DILocation(line: 2980, column: 11, scope: !1601)
!1652 = !DILocation(line: 2984, column: 14, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 2981, column: 2)
!1654 = !DILocation(line: 2985, column: 26, scope: !1653)
!1655 = !DILocation(line: 2985, column: 4, scope: !1653)
!1656 = !DILocation(line: 2986, column: 16, scope: !1653)
!1657 = !DILocation(line: 2986, column: 8, scope: !1653)
!1658 = !DILocation(line: 2987, column: 27, scope: !1653)
!1659 = !DILocation(line: 2987, column: 4, scope: !1653)
!1660 = !DILocation(line: 2988, column: 15, scope: !1653)
!1661 = !DILocation(line: 2989, column: 2, scope: !1653)
!1662 = !DILocation(line: 2995, column: 21, scope: !1470)
!1663 = !DILocation(line: 2995, column: 12, scope: !1470)
!1664 = !DILocation(line: 2995, column: 46, scope: !1470)
!1665 = !DILocation(line: 0, scope: !1470)
!1666 = !DILocation(line: 2995, column: 12, scope: !1471)
!1667 = !DILocation(line: 2999, column: 18, scope: !1469)
!1668 = !DILocation(line: 3000, column: 15, scope: !1469)
!1669 = !DILocation(line: 0, scope: !1469)
!1670 = !DILocation(line: 3001, column: 17, scope: !1476)
!1671 = !DILocation(line: 3001, column: 11, scope: !1469)
!1672 = !DILocation(line: 3005, column: 50, scope: !1475)
!1673 = !DILocation(line: 3005, column: 19, scope: !1475)
!1674 = !DILocation(line: 0, scope: !1475)
!1675 = !DILocation(line: 3007, column: 8, scope: !1479)
!1676 = !DILocation(line: 3007, column: 8, scope: !1475)
!1677 = !DILocation(line: 3009, column: 8, scope: !1478)
!1678 = !DILocation(line: 3009, column: 13, scope: !1478)
!1679 = !DILocation(line: 3010, column: 64, scope: !1478)
!1680 = !DILocation(line: 3010, column: 8, scope: !1478)
!1681 = !DILocation(line: 3011, column: 8, scope: !1478)
!1682 = !DILocation(line: 3012, column: 8, scope: !1478)
!1683 = !DILocation(line: 3013, column: 8, scope: !1478)
!1684 = !DILocation(line: 3014, column: 20, scope: !1478)
!1685 = !DILocation(line: 3014, column: 12, scope: !1478)
!1686 = !DILocation(line: 3015, column: 19, scope: !1478)
!1687 = !DILocation(line: 3016, column: 6, scope: !1479)
!1688 = !DILocation(line: 3016, column: 6, scope: !1478)
!1689 = !DILocation(line: 3023, column: 12, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 3023, column: 12)
!1691 = !DILocation(line: 3023, column: 41, scope: !1690)
!1692 = !DILocation(line: 3024, column: 5, scope: !1690)
!1693 = !DILocation(line: 3024, column: 10, scope: !1690)
!1694 = !DILocation(line: 3024, column: 9, scope: !1690)
!1695 = !DILocation(line: 3024, column: 23, scope: !1690)
!1696 = !DILocation(line: 3024, column: 30, scope: !1690)
!1697 = !DILocation(line: 3024, column: 47, scope: !1690)
!1698 = !DILocation(line: 3023, column: 12, scope: !1470)
!1699 = !DILocation(line: 3026, column: 11, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 3025, column: 5)
!1701 = !DILocation(line: 3027, column: 18, scope: !1700)
!1702 = !DILocation(line: 3028, column: 15, scope: !1700)
!1703 = !DILocation(line: 3028, column: 7, scope: !1700)
!1704 = !DILocation(line: 3032, column: 14, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3029, column: 2)
!1706 = !DILocation(line: 3033, column: 4, scope: !1705)
!1707 = !DILocation(line: 3035, column: 14, scope: !1705)
!1708 = !DILocation(line: 3036, column: 4, scope: !1705)
!1709 = !DILocation(line: 3038, column: 14, scope: !1705)
!1710 = !DILocation(line: 3039, column: 4, scope: !1705)
!1711 = !DILocation(line: 0, scope: !1705)
!1712 = !DILocation(line: 3041, column: 11, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3041, column: 11)
!1714 = !DILocation(line: 3041, column: 19, scope: !1713)
!1715 = !DILocation(line: 3041, column: 23, scope: !1713)
!1716 = !DILocation(line: 3041, column: 22, scope: !1713)
!1717 = !DILocation(line: 3041, column: 32, scope: !1713)
!1718 = !DILocation(line: 3041, column: 11, scope: !1700)
!1719 = !DILocation(line: 0, scope: !1700)
!1720 = !DILocation(line: 3043, column: 11, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 3043, column: 11)
!1722 = !DILocation(line: 3043, column: 11, scope: !1700)
!1723 = !DILocation(line: 3044, column: 2, scope: !1721)
!1724 = !DILocation(line: 3050, column: 3, scope: !1460)
!1725 = distinct !DISubprogram(name: "demangle_prefix", scope: !3, file: !3, line: 2644, type: !637, scopeLine: 2646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1726)
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733}
!1727 = !DILocalVariable(name: "work", arg: 1, scope: !1725, file: !3, line: 2644, type: !639)
!1728 = !DILocalVariable(name: "mangled", arg: 2, scope: !1725, file: !3, line: 2644, type: !640)
!1729 = !DILocalVariable(name: "declp", arg: 3, scope: !1725, file: !3, line: 2645, type: !42)
!1730 = !DILocalVariable(name: "success", scope: !1725, file: !3, line: 2647, type: !7)
!1731 = !DILocalVariable(name: "scan", scope: !1725, file: !3, line: 2648, type: !37)
!1732 = !DILocalVariable(name: "i", scope: !1725, file: !3, line: 2649, type: !7)
!1733 = !DILocalVariable(name: "marker", scope: !1734, file: !3, line: 2663, type: !34)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 2662, column: 5)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 2661, column: 12)
!1736 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 2651, column: 7)
!1737 = !DILocation(line: 0, scope: !1725)
!1738 = !DILocation(line: 2651, column: 14, scope: !1736)
!1739 = !DILocation(line: 2651, column: 7, scope: !1736)
!1740 = !DILocation(line: 2651, column: 24, scope: !1736)
!1741 = !DILocation(line: 2652, column: 7, scope: !1736)
!1742 = !DILocation(line: 2652, column: 19, scope: !1736)
!1743 = !DILocation(line: 2652, column: 11, scope: !1736)
!1744 = !DILocation(line: 2652, column: 42, scope: !1736)
!1745 = !DILocation(line: 2653, column: 11, scope: !1736)
!1746 = !DILocation(line: 2653, column: 22, scope: !1736)
!1747 = !DILocation(line: 2653, column: 14, scope: !1736)
!1748 = !DILocation(line: 2653, column: 45, scope: !1736)
!1749 = !DILocation(line: 2651, column: 7, scope: !1725)
!1750 = !DILocation(line: 2658, column: 18, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 2654, column: 5)
!1752 = !DILocation(line: 2659, column: 13, scope: !1751)
!1753 = !DILocation(line: 2659, column: 25, scope: !1751)
!1754 = !DILocation(line: 2660, column: 5, scope: !1751)
!1755 = !DILocation(line: 2661, column: 19, scope: !1735)
!1756 = !DILocation(line: 2661, column: 12, scope: !1735)
!1757 = !DILocation(line: 2661, column: 29, scope: !1735)
!1758 = !DILocation(line: 2661, column: 35, scope: !1735)
!1759 = !DILocation(line: 2661, column: 46, scope: !1735)
!1760 = !DILocation(line: 2661, column: 38, scope: !1735)
!1761 = !DILocation(line: 2661, column: 71, scope: !1735)
!1762 = !DILocation(line: 2661, column: 12, scope: !1736)
!1763 = !DILocation(line: 2663, column: 46, scope: !1734)
!1764 = !DILocation(line: 2663, column: 45, scope: !1734)
!1765 = !DILocation(line: 2663, column: 22, scope: !1734)
!1766 = !DILocation(line: 0, scope: !1734)
!1767 = !DILocation(line: 2664, column: 18, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 2664, column: 11)
!1769 = !DILocation(line: 2664, column: 26, scope: !1768)
!1770 = !DILocation(line: 2664, column: 29, scope: !1768)
!1771 = !DILocation(line: 2664, column: 41, scope: !1768)
!1772 = !DILocation(line: 2664, column: 40, scope: !1768)
!1773 = !DILocation(line: 2664, column: 37, scope: !1768)
!1774 = !DILocation(line: 2664, column: 11, scope: !1734)
!1775 = !DILocation(line: 2666, column: 8, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 2666, column: 8)
!1777 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 2665, column: 2)
!1778 = !DILocation(line: 2666, column: 22, scope: !1776)
!1779 = !DILocation(line: 2666, column: 8, scope: !1777)
!1780 = !DILocation(line: 2669, column: 19, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 2667, column: 6)
!1782 = !DILocation(line: 2670, column: 14, scope: !1781)
!1783 = !DILocation(line: 2670, column: 25, scope: !1781)
!1784 = !DILocation(line: 2671, column: 12, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 2671, column: 12)
!1786 = !DILocation(line: 2671, column: 12, scope: !1781)
!1787 = !DILocation(line: 2674, column: 27, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 2674, column: 13)
!1789 = !DILocation(line: 2674, column: 13, scope: !1776)
!1790 = !DILocation(line: 2677, column: 19, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 2675, column: 6)
!1792 = !DILocation(line: 2678, column: 14, scope: !1791)
!1793 = !DILocation(line: 2678, column: 26, scope: !1791)
!1794 = !DILocation(line: 2679, column: 12, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 2679, column: 12)
!1796 = !DILocation(line: 2679, column: 12, scope: !1791)
!1797 = !DILocation(line: 2683, column: 5, scope: !1735)
!1798 = !DILocation(line: 2684, column: 13, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 2684, column: 12)
!1800 = !DILocation(line: 2684, column: 28, scope: !1799)
!1801 = !DILocation(line: 2684, column: 31, scope: !1799)
!1802 = !DILocation(line: 2684, column: 45, scope: !1799)
!1803 = !DILocation(line: 2684, column: 48, scope: !1799)
!1804 = !DILocation(line: 2684, column: 64, scope: !1799)
!1805 = !DILocation(line: 2684, column: 75, scope: !1799)
!1806 = !DILocation(line: 2684, column: 67, scope: !1799)
!1807 = !DILocation(line: 2684, column: 99, scope: !1799)
!1808 = !DILocation(line: 2684, column: 12, scope: !1735)
!1809 = !DILocation(line: 2690, column: 13, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 2690, column: 12)
!1811 = !DILocation(line: 2687, column: 18, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 2685, column: 5)
!1813 = !DILocation(line: 2688, column: 13, scope: !1812)
!1814 = !DILocation(line: 2688, column: 24, scope: !1812)
!1815 = !DILocation(line: 2689, column: 5, scope: !1812)
!1816 = !DILocation(line: 2690, column: 28, scope: !1810)
!1817 = !DILocation(line: 2690, column: 31, scope: !1810)
!1818 = !DILocation(line: 2690, column: 45, scope: !1810)
!1819 = !DILocation(line: 2690, column: 48, scope: !1810)
!1820 = !DILocation(line: 2690, column: 64, scope: !1810)
!1821 = !DILocation(line: 2690, column: 75, scope: !1810)
!1822 = !DILocation(line: 2690, column: 67, scope: !1810)
!1823 = !DILocation(line: 2690, column: 99, scope: !1810)
!1824 = !DILocation(line: 2690, column: 12, scope: !1799)
!1825 = !DILocation(line: 2693, column: 18, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 2691, column: 5)
!1827 = !DILocation(line: 2694, column: 13, scope: !1826)
!1828 = !DILocation(line: 2694, column: 25, scope: !1826)
!1829 = !DILocation(line: 2695, column: 5, scope: !1826)
!1830 = !DILocation(line: 2702, column: 12, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 2701, column: 3)
!1832 = !DILocation(line: 2704, column: 5, scope: !1831)
!1833 = !DILocation(line: 0, scope: !1831)
!1834 = !DILocation(line: 2705, column: 14, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 2704, column: 8)
!1836 = !DILocation(line: 2706, column: 19, scope: !1831)
!1837 = !DILocation(line: 2706, column: 27, scope: !1831)
!1838 = !DILocation(line: 2706, column: 31, scope: !1831)
!1839 = !DILocation(line: 2706, column: 30, scope: !1831)
!1840 = !DILocation(line: 2706, column: 38, scope: !1831)
!1841 = !DILocation(line: 2706, column: 5, scope: !1835)
!1842 = distinct !{!1842, !1832, !1843}
!1843 = !DILocation(line: 2706, column: 44, scope: !1831)
!1844 = !DILocation(line: 2708, column: 14, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 2708, column: 9)
!1846 = !DILocation(line: 2708, column: 23, scope: !1845)
!1847 = !DILocation(line: 2708, column: 9, scope: !1831)
!1848 = !DILocation(line: 2711, column: 7, scope: !1725)
!1849 = !DILocation(line: 2715, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 2712, column: 5)
!1851 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 2711, column: 7)
!1852 = !DILocation(line: 2716, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 2716, column: 11)
!1854 = !DILocation(line: 2716, column: 11, scope: !1850)
!1855 = !DILocation(line: 2722, column: 12, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 2722, column: 7)
!1857 = !DILocation(line: 2722, column: 7, scope: !1725)
!1858 = !DILocation(line: 2726, column: 20, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 2726, column: 12)
!1860 = !DILocation(line: 2726, column: 12, scope: !1859)
!1861 = !DILocation(line: 2726, column: 12, scope: !1856)
!1862 = !DILocation(line: 2728, column: 12, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 2728, column: 11)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 2727, column: 5)
!1865 = !DILocation(line: 2728, column: 45, scope: !1863)
!1866 = !DILocation(line: 2728, column: 57, scope: !1863)
!1867 = !DILocation(line: 2728, column: 11, scope: !1864)
!1868 = !DILocation(line: 2733, column: 21, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 2733, column: 12)
!1870 = !DILocation(line: 2733, column: 18, scope: !1869)
!1871 = !DILocation(line: 2734, column: 5, scope: !1869)
!1872 = !DILocation(line: 2734, column: 9, scope: !1869)
!1873 = !DILocation(line: 2734, column: 42, scope: !1869)
!1874 = !DILocation(line: 2734, column: 54, scope: !1869)
!1875 = !DILocation(line: 2735, column: 9, scope: !1869)
!1876 = !DILocation(line: 2735, column: 21, scope: !1869)
!1877 = !DILocation(line: 2735, column: 29, scope: !1869)
!1878 = !DILocation(line: 2735, column: 41, scope: !1869)
!1879 = !DILocation(line: 2735, column: 49, scope: !1869)
!1880 = !DILocation(line: 2735, column: 61, scope: !1869)
!1881 = !DILocation(line: 2733, column: 12, scope: !1859)
!1882 = !DILocation(line: 2740, column: 12, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 2740, column: 11)
!1884 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 2736, column: 5)
!1885 = !DILocation(line: 2740, column: 29, scope: !1883)
!1886 = !DILocation(line: 2740, column: 32, scope: !1883)
!1887 = !DILocation(line: 2740, column: 47, scope: !1883)
!1888 = !DILocation(line: 2740, column: 50, scope: !1883)
!1889 = !DILocation(line: 2741, column: 4, scope: !1883)
!1890 = !DILocation(line: 2740, column: 11, scope: !1884)
!1891 = !DILocation(line: 2743, column: 13, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 2742, column: 2)
!1893 = !DILocation(line: 2744, column: 4, scope: !1892)
!1894 = !DILocation(line: 2745, column: 26, scope: !1892)
!1895 = !DILocation(line: 2745, column: 4, scope: !1892)
!1896 = !DILocation(line: 2746, column: 24, scope: !1892)
!1897 = !DILocation(line: 2746, column: 16, scope: !1892)
!1898 = !DILocation(line: 2746, column: 13, scope: !1892)
!1899 = !DILocation(line: 2748, column: 2, scope: !1892)
!1900 = !DILocation(line: 2755, column: 27, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 2755, column: 8)
!1902 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 2750, column: 2)
!1903 = !DILocation(line: 2755, column: 30, scope: !1901)
!1904 = !DILocation(line: 2755, column: 45, scope: !1901)
!1905 = !DILocation(line: 2755, column: 48, scope: !1901)
!1906 = !DILocation(line: 2755, column: 62, scope: !1901)
!1907 = !DILocation(line: 2755, column: 65, scope: !1901)
!1908 = !DILocation(line: 2755, column: 8, scope: !1902)
!1909 = !DILocation(line: 2756, column: 14, scope: !1901)
!1910 = !DILocation(line: 2756, column: 26, scope: !1901)
!1911 = !DILocation(line: 2756, column: 6, scope: !1901)
!1912 = !DILocation(line: 2757, column: 13, scope: !1902)
!1913 = !DILocation(line: 2760, column: 12, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 2760, column: 12)
!1915 = !DILocation(line: 2760, column: 27, scope: !1914)
!1916 = !DILocation(line: 2760, column: 30, scope: !1914)
!1917 = !DILocation(line: 2760, column: 38, scope: !1914)
!1918 = !DILocation(line: 2760, column: 45, scope: !1914)
!1919 = !DILocation(line: 2760, column: 48, scope: !1914)
!1920 = !DILocation(line: 2760, column: 56, scope: !1914)
!1921 = !DILocation(line: 2760, column: 12, scope: !1869)
!1922 = !DILocation(line: 2766, column: 48, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 2761, column: 5)
!1924 = !DILocation(line: 2766, column: 7, scope: !1923)
!1925 = !DILocation(line: 2767, column: 5, scope: !1923)
!1926 = !DILocation(line: 2768, column: 12, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 2768, column: 12)
!1928 = !DILocation(line: 2768, column: 27, scope: !1927)
!1929 = !DILocation(line: 2768, column: 32, scope: !1927)
!1930 = !DILocation(line: 2768, column: 40, scope: !1927)
!1931 = !DILocation(line: 2768, column: 47, scope: !1927)
!1932 = !DILocation(line: 2768, column: 50, scope: !1927)
!1933 = !DILocation(line: 2768, column: 58, scope: !1927)
!1934 = !DILocation(line: 2769, column: 31, scope: !1927)
!1935 = !DILocation(line: 2769, column: 43, scope: !1927)
!1936 = !DILocation(line: 2769, column: 50, scope: !1927)
!1937 = !DILocation(line: 2769, column: 53, scope: !1927)
!1938 = !DILocation(line: 2769, column: 61, scope: !1927)
!1939 = !DILocation(line: 2770, column: 31, scope: !1927)
!1940 = !DILocation(line: 2770, column: 50, scope: !1927)
!1941 = !DILocation(line: 2770, column: 53, scope: !1927)
!1942 = !DILocation(line: 2770, column: 61, scope: !1927)
!1943 = !DILocation(line: 2768, column: 12, scope: !1914)
!1944 = !DILocation(line: 2776, column: 48, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 2771, column: 5)
!1946 = !DILocation(line: 2776, column: 7, scope: !1945)
!1947 = !DILocation(line: 2777, column: 5, scope: !1945)
!1948 = !DILocation(line: 2778, column: 31, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 2778, column: 12)
!1950 = !DILocation(line: 0, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 2801, column: 12)
!1952 = !DILocation(line: 2801, column: 12, scope: !1951)
!1953 = !DILocation(line: 2778, column: 35, scope: !1949)
!1954 = !DILocation(line: 2779, column: 5, scope: !1949)
!1955 = !DILocation(line: 2779, column: 17, scope: !1949)
!1956 = !DILocation(line: 2778, column: 12, scope: !1927)
!1957 = !DILocation(line: 2784, column: 28, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 2784, column: 11)
!1959 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 2780, column: 5)
!1960 = !DILocation(line: 2784, column: 31, scope: !1958)
!1961 = !DILocation(line: 2784, column: 48, scope: !1958)
!1962 = !DILocation(line: 2784, column: 51, scope: !1958)
!1963 = !DILocation(line: 2784, column: 65, scope: !1958)
!1964 = !DILocation(line: 2785, column: 4, scope: !1958)
!1965 = !DILocation(line: 2785, column: 8, scope: !1958)
!1966 = !DILocation(line: 2785, column: 37, scope: !1958)
!1967 = !DILocation(line: 2784, column: 11, scope: !1959)
!1968 = !DILocation(line: 2787, column: 4, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 2786, column: 2)
!1970 = !DILocation(line: 2787, column: 11, scope: !1969)
!1971 = !DILocation(line: 2787, column: 17, scope: !1969)
!1972 = !DILocation(line: 2789, column: 12, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 2788, column: 6)
!1974 = distinct !{!1974, !1968, !1975}
!1975 = !DILocation(line: 2790, column: 6, scope: !1969)
!1976 = !DILocation(line: 2791, column: 16, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 2791, column: 8)
!1978 = !DILocation(line: 2791, column: 37, scope: !1977)
!1979 = !DILocation(line: 2791, column: 45, scope: !1977)
!1980 = !DILocation(line: 2791, column: 56, scope: !1977)
!1981 = !DILocation(line: 2791, column: 49, scope: !1977)
!1982 = !DILocation(line: 2791, column: 61, scope: !1977)
!1983 = !DILocation(line: 2791, column: 8, scope: !1969)
!1984 = !DILocation(line: 2798, column: 13, scope: !1977)
!1985 = !DILocation(line: 2798, column: 6, scope: !1977)
!1986 = !DILocation(line: 2801, column: 24, scope: !1951)
!1987 = !DILocation(line: 2801, column: 12, scope: !1949)
!1988 = !DILocation(line: 2807, column: 14, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 2802, column: 5)
!1990 = !DILocation(line: 2807, column: 7, scope: !1989)
!1991 = !DILocation(line: 2815, column: 8, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 2815, column: 7)
!1993 = !DILocation(line: 2815, column: 16, scope: !1992)
!1994 = !DILocation(line: 2815, column: 26, scope: !1992)
!1995 = !DILocation(line: 2815, column: 38, scope: !1992)
!1996 = !DILocation(line: 2815, column: 43, scope: !1992)
!1997 = !DILocation(line: 2815, column: 52, scope: !1992)
!1998 = !DILocation(line: 2815, column: 63, scope: !1992)
!1999 = !DILocation(line: 2815, column: 7, scope: !1725)
!2000 = !DILocation(line: 2817, column: 29, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 2816, column: 5)
!2002 = !DILocation(line: 2817, column: 7, scope: !2001)
!2003 = !DILocation(line: 2818, column: 27, scope: !2001)
!2004 = !DILocation(line: 2818, column: 19, scope: !2001)
!2005 = !DILocation(line: 2818, column: 16, scope: !2001)
!2006 = !DILocation(line: 2820, column: 5, scope: !2001)
!2007 = !DILocation(line: 2822, column: 1, scope: !1725)
!2008 = distinct !DISubprogram(name: "demangle_signature", scope: !3, file: !3, line: 1319, type: !637, scopeLine: 1321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2009)
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2024}
!2010 = !DILocalVariable(name: "work", arg: 1, scope: !2008, file: !3, line: 1319, type: !639)
!2011 = !DILocalVariable(name: "mangled", arg: 2, scope: !2008, file: !3, line: 1320, type: !640)
!2012 = !DILocalVariable(name: "declp", arg: 3, scope: !2008, file: !3, line: 1320, type: !42)
!2013 = !DILocalVariable(name: "success", scope: !2008, file: !3, line: 1322, type: !7)
!2014 = !DILocalVariable(name: "func_done", scope: !2008, file: !3, line: 1323, type: !7)
!2015 = !DILocalVariable(name: "expect_func", scope: !2008, file: !3, line: 1324, type: !7)
!2016 = !DILocalVariable(name: "expect_return_type", scope: !2008, file: !3, line: 1325, type: !7)
!2017 = !DILocalVariable(name: "oldmangled", scope: !2008, file: !3, line: 1326, type: !37)
!2018 = !DILocalVariable(name: "trawname", scope: !2008, file: !3, line: 1327, type: !43)
!2019 = !DILocalVariable(name: "tname", scope: !2008, file: !3, line: 1328, type: !43)
!2020 = !DILocalVariable(name: "s", scope: !2021, file: !3, line: 1414, type: !43)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1413, column: 4)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 1333, column: 2)
!2023 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1331, column: 5)
!2024 = !DILocalVariable(name: "return_type", scope: !2025, file: !3, line: 1499, type: !43)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1497, column: 6)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1496, column: 8)
!2027 = !DILocation(line: 0, scope: !2008)
!2028 = !DILocation(line: 1327, column: 3, scope: !2008)
!2029 = !DILocation(line: 1328, column: 3, scope: !2008)
!2030 = !DILocation(line: 0, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1529, column: 8)
!2032 = !DILocation(line: 0, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1534, column: 12)
!2034 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 1530, column: 6)
!2035 = !DILocation(line: 0, scope: !2025)
!2036 = !DILocation(line: 0, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 1503, column: 8)
!2038 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 1503, column: 8)
!2039 = !DILocation(line: 0, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 1472, column: 6)
!2041 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1471, column: 8)
!2042 = !DILocation(line: 0, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1478, column: 8)
!2044 = !DILocation(line: 0, scope: !2021)
!2045 = !DILocation(line: 0, scope: !2022)
!2046 = !DILocation(line: 1330, column: 3, scope: !2008)
!2047 = !DILocation(line: 1325, column: 7, scope: !2008)
!2048 = !DILocation(line: 1326, column: 15, scope: !2008)
!2049 = !DILocation(line: 1330, column: 18, scope: !2008)
!2050 = !DILocation(line: 1330, column: 23, scope: !2008)
!2051 = !DILocation(line: 1330, column: 22, scope: !2008)
!2052 = !DILocation(line: 1330, column: 32, scope: !2008)
!2053 = !DILocation(line: 1332, column: 15, scope: !2023)
!2054 = !DILocation(line: 1332, column: 7, scope: !2023)
!2055 = !DILocation(line: 1544, column: 8, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1544, column: 8)
!2057 = !DILocation(line: 1336, column: 14, scope: !2022)
!2058 = !DILocation(line: 1337, column: 8, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1337, column: 8)
!2060 = !DILocation(line: 1337, column: 8, scope: !2022)
!2061 = !DILocation(line: 1338, column: 39, scope: !2059)
!2062 = !DILocation(line: 1338, column: 48, scope: !2059)
!2063 = !DILocation(line: 1338, column: 6, scope: !2059)
!2064 = !DILocation(line: 1339, column: 8, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1339, column: 8)
!2066 = !DILocation(line: 1339, column: 24, scope: !2065)
!2067 = !DILocation(line: 1339, column: 27, scope: !2065)
!2068 = !DILocation(line: 1339, column: 8, scope: !2022)
!2069 = !DILocation(line: 1340, column: 6, scope: !2065)
!2070 = !DILocation(line: 1346, column: 14, scope: !2022)
!2071 = !DILocation(line: 1347, column: 8, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1347, column: 8)
!2073 = !DILocation(line: 1347, column: 24, scope: !2072)
!2074 = !DILocation(line: 1347, column: 27, scope: !2072)
!2075 = !DILocation(line: 1347, column: 8, scope: !2022)
!2076 = !DILocation(line: 1350, column: 6, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 1348, column: 6)
!2078 = !DILocation(line: 1356, column: 19, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1356, column: 8)
!2080 = !DILocation(line: 1356, column: 8, scope: !2022)
!2081 = !DILocation(line: 1359, column: 6, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1357, column: 6)
!2083 = !DILocation(line: 1360, column: 14, scope: !2022)
!2084 = !DILocation(line: 1361, column: 24, scope: !2022)
!2085 = !DILocation(line: 1362, column: 4, scope: !2022)
!2086 = !DILocation(line: 1367, column: 24, scope: !2022)
!2087 = !DILocation(line: 1367, column: 21, scope: !2022)
!2088 = !DILocation(line: 1370, column: 19, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1370, column: 8)
!2090 = !DILocation(line: 1370, column: 8, scope: !2022)
!2091 = !DILocation(line: 1372, column: 14, scope: !2022)
!2092 = !DILocation(line: 1371, column: 19, scope: !2089)
!2093 = !DILocation(line: 1371, column: 6, scope: !2089)
!2094 = !DILocation(line: 1373, column: 4, scope: !2022)
!2095 = !DILocation(line: 1377, column: 8, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1377, column: 8)
!2097 = !DILocation(line: 1377, column: 8, scope: !2022)
!2098 = !DILocation(line: 1379, column: 8, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1378, column: 6)
!2100 = !DILocation(line: 1379, column: 15, scope: !2099)
!2101 = !DILocation(line: 1379, column: 16, scope: !2099)
!2102 = !DILocation(line: 1379, column: 25, scope: !2099)
!2103 = !DILocation(line: 1379, column: 39, scope: !2099)
!2104 = !DILocation(line: 0, scope: !2099)
!2105 = !DILocation(line: 1380, column: 13, scope: !2099)
!2106 = distinct !{!2106, !2098, !2105}
!2107 = !DILocation(line: 1381, column: 12, scope: !2099)
!2108 = !DILocation(line: 1384, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 1381, column: 12)
!2110 = !DILocation(line: 1392, column: 19, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1392, column: 8)
!2112 = !DILocation(line: 1392, column: 8, scope: !2022)
!2113 = !DILocation(line: 1395, column: 6, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 1393, column: 6)
!2115 = !DILocation(line: 1396, column: 28, scope: !2022)
!2116 = !DILocation(line: 1397, column: 14, scope: !2022)
!2117 = !DILocation(line: 1398, column: 8, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1398, column: 8)
!2119 = !DILocation(line: 1398, column: 8, scope: !2022)
!2120 = !DILocation(line: 1400, column: 41, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 1399, column: 6)
!2122 = !DILocation(line: 1400, column: 50, scope: !2121)
!2123 = !DILocation(line: 1400, column: 8, scope: !2121)
!2124 = !DILocation(line: 1401, column: 6, scope: !2121)
!2125 = !DILocation(line: 1402, column: 8, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1402, column: 8)
!2127 = !DILocation(line: 1402, column: 24, scope: !2126)
!2128 = !DILocation(line: 1402, column: 27, scope: !2126)
!2129 = !DILocation(line: 1402, column: 42, scope: !2126)
!2130 = !DILocation(line: 1402, column: 45, scope: !2126)
!2131 = !DILocation(line: 1402, column: 8, scope: !2022)
!2132 = !DILocation(line: 1406, column: 20, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1406, column: 19)
!2134 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1403, column: 6)
!2135 = !DILocation(line: 1406, column: 19, scope: !2133)
!2136 = !DILocation(line: 1406, column: 29, scope: !2133)
!2137 = !DILocation(line: 1406, column: 19, scope: !2134)
!2138 = !DILocation(line: 1408, column: 6, scope: !2134)
!2139 = !DILocation(line: 1414, column: 6, scope: !2021)
!2140 = !DILocation(line: 1415, column: 16, scope: !2021)
!2141 = !DILocation(line: 1416, column: 10, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 1416, column: 10)
!2143 = !DILocation(line: 1416, column: 10, scope: !2021)
!2144 = !DILocation(line: 1418, column: 22, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1417, column: 8)
!2146 = !DILocation(line: 1418, column: 3, scope: !2145)
!2147 = !DILocation(line: 1419, column: 3, scope: !2145)
!2148 = !DILocation(line: 1420, column: 3, scope: !2145)
!2149 = !DILocation(line: 1421, column: 8, scope: !2145)
!2150 = !DILocation(line: 1424, column: 4, scope: !2022)
!2151 = !DILocation(line: 1425, column: 4, scope: !2022)
!2152 = !DILocation(line: 1436, column: 14, scope: !2022)
!2153 = !DILocation(line: 1443, column: 8, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1443, column: 8)
!2155 = !DILocation(line: 1443, column: 25, scope: !2154)
!2156 = !DILocation(line: 1443, column: 28, scope: !2154)
!2157 = !DILocation(line: 1443, column: 43, scope: !2154)
!2158 = !DILocation(line: 1443, column: 46, scope: !2154)
!2159 = !DILocation(line: 1443, column: 60, scope: !2154)
!2160 = !DILocation(line: 1443, column: 63, scope: !2154)
!2161 = !DILocation(line: 1443, column: 8, scope: !2022)
!2162 = !DILocation(line: 1445, column: 8, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 1444, column: 6)
!2164 = !DILocation(line: 1446, column: 6, scope: !2163)
!2165 = !DILocation(line: 1447, column: 14, scope: !2022)
!2166 = !DILocation(line: 1451, column: 8, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1451, column: 8)
!2168 = !DILocation(line: 1451, column: 16, scope: !2167)
!2169 = !DILocation(line: 1451, column: 20, scope: !2167)
!2170 = !DILocation(line: 1451, column: 36, scope: !2167)
!2171 = !DILocation(line: 1451, column: 39, scope: !2167)
!2172 = !DILocation(line: 1451, column: 55, scope: !2167)
!2173 = !DILocation(line: 1451, column: 59, scope: !2167)
!2174 = !DILocation(line: 1451, column: 58, scope: !2167)
!2175 = !DILocation(line: 1451, column: 68, scope: !2167)
!2176 = !DILocation(line: 1451, column: 8, scope: !2022)
!2177 = !DILocation(line: 1453, column: 8, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 1452, column: 6)
!2179 = !DILocation(line: 1455, column: 25, scope: !2178)
!2180 = !DILocation(line: 1456, column: 15, scope: !2178)
!2181 = !DILocation(line: 1457, column: 13, scope: !2178)
!2182 = !DILocation(line: 1463, column: 4, scope: !2022)
!2183 = !DILocation(line: 1464, column: 4, scope: !2022)
!2184 = !DILocation(line: 1465, column: 19, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1465, column: 8)
!2186 = !DILocation(line: 1465, column: 8, scope: !2022)
!2187 = !DILocation(line: 1467, column: 21, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 1466, column: 6)
!2189 = !DILocation(line: 1468, column: 6, scope: !2188)
!2190 = !DILocation(line: 1469, column: 14, scope: !2022)
!2191 = !DILocation(line: 1471, column: 8, scope: !2041)
!2192 = !DILocation(line: 1471, column: 8, scope: !2022)
!2193 = !DILocation(line: 1473, column: 41, scope: !2040)
!2194 = !DILocation(line: 1473, column: 50, scope: !2040)
!2195 = !DILocation(line: 1473, column: 8, scope: !2040)
!2196 = !DILocation(line: 1474, column: 6, scope: !2040)
!2197 = !DILocation(line: 1475, column: 27, scope: !2022)
!2198 = !DILocation(line: 1475, column: 4, scope: !2022)
!2199 = !DILocation(line: 1477, column: 4, scope: !2022)
!2200 = !DILocation(line: 1478, column: 16, scope: !2043)
!2201 = !DILocation(line: 1478, column: 27, scope: !2043)
!2202 = !DILocation(line: 1478, column: 8, scope: !2022)
!2203 = !DILocation(line: 1480, column: 8, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 1479, column: 6)
!2205 = !DILocation(line: 1481, column: 8, scope: !2204)
!2206 = !DILocation(line: 1482, column: 25, scope: !2204)
!2207 = !DILocation(line: 1483, column: 6, scope: !2204)
!2208 = !DILocation(line: 1484, column: 15, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1484, column: 8)
!2210 = !DILocation(line: 1484, column: 27, scope: !2209)
!2211 = !DILocation(line: 1484, column: 32, scope: !2209)
!2212 = !DILocation(line: 1484, column: 53, scope: !2209)
!2213 = !DILocation(line: 1484, column: 8, scope: !2022)
!2214 = !DILocation(line: 1486, column: 8, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 1485, column: 6)
!2216 = !DILocation(line: 1487, column: 26, scope: !2215)
!2217 = !DILocation(line: 1488, column: 6, scope: !2215)
!2218 = !DILocation(line: 1489, column: 4, scope: !2022)
!2219 = !DILocation(line: 1490, column: 4, scope: !2022)
!2220 = !DILocation(line: 1493, column: 4, scope: !2022)
!2221 = !DILocation(line: 1496, column: 9, scope: !2026)
!2222 = !DILocation(line: 1496, column: 25, scope: !2026)
!2223 = !DILocation(line: 1496, column: 28, scope: !2026)
!2224 = !DILocation(line: 1496, column: 47, scope: !2026)
!2225 = !DILocation(line: 1496, column: 44, scope: !2026)
!2226 = !DILocation(line: 1496, column: 8, scope: !2022)
!2227 = !DILocation(line: 1499, column: 8, scope: !2025)
!2228 = !DILocation(line: 1501, column: 18, scope: !2025)
!2229 = !DILocation(line: 1502, column: 18, scope: !2025)
!2230 = !DILocation(line: 1503, column: 8, scope: !2037)
!2231 = !DILocation(line: 1503, column: 8, scope: !2038)
!2232 = !DILocation(line: 1505, column: 8, scope: !2025)
!2233 = !DILocation(line: 1506, column: 8, scope: !2025)
!2234 = !DILocation(line: 1508, column: 6, scope: !2026)
!2235 = !DILocation(line: 1518, column: 17, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1518, column: 17)
!2237 = !DILocation(line: 1518, column: 17, scope: !2026)
!2238 = !DILocation(line: 1521, column: 17, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 1519, column: 15)
!2240 = !DILocation(line: 0, scope: !2239)
!2241 = !DILocation(line: 1521, column: 24, scope: !2239)
!2242 = !DILocation(line: 1521, column: 34, scope: !2239)
!2243 = !DILocation(line: 1521, column: 37, scope: !2239)
!2244 = distinct !{!2244, !2238, !2245}
!2245 = !DILocation(line: 1522, column: 29, scope: !2239)
!2246 = !DILocation(line: 1529, column: 8, scope: !2031)
!2247 = !DILocation(line: 1529, column: 24, scope: !2031)
!2248 = !DILocation(line: 1529, column: 27, scope: !2031)
!2249 = !DILocation(line: 1529, column: 8, scope: !2022)
!2250 = !DILocation(line: 1532, column: 18, scope: !2034)
!2251 = !DILocation(line: 1534, column: 20, scope: !2033)
!2252 = !DILocation(line: 1534, column: 32, scope: !2033)
!2253 = !DILocation(line: 1534, column: 12, scope: !2034)
!2254 = !DILocation(line: 1536, column: 18, scope: !2034)
!2255 = !DILocation(line: 1537, column: 8, scope: !2034)
!2256 = !DILocation(line: 1544, column: 24, scope: !2056)
!2257 = !DILocation(line: 1544, column: 27, scope: !2056)
!2258 = !DILocation(line: 1544, column: 8, scope: !2022)
!2259 = !DILocation(line: 1549, column: 18, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 1545, column: 6)
!2261 = !DILocation(line: 1550, column: 6, scope: !2260)
!2262 = !DILocation(line: 1565, column: 6, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1565, column: 6)
!2264 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 1564, column: 7)
!2265 = !DILocation(line: 1565, column: 17, scope: !2263)
!2266 = !DILocation(line: 1565, column: 14, scope: !2263)
!2267 = !DILocation(line: 1568, column: 19, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 1568, column: 19)
!2269 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1566, column: 4)
!2270 = !DILocation(line: 1568, column: 36, scope: !2268)
!2271 = !DILocation(line: 1568, column: 39, scope: !2268)
!2272 = !DILocation(line: 1568, column: 54, scope: !2268)
!2273 = !DILocation(line: 1568, column: 57, scope: !2268)
!2274 = !DILocation(line: 1568, column: 19, scope: !2269)
!2275 = !DILocation(line: 1570, column: 19, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 1569, column: 17)
!2277 = !DILocation(line: 1571, column: 17, scope: !2276)
!2278 = !DILocation(line: 1572, column: 16, scope: !2269)
!2279 = !DILocation(line: 1577, column: 4, scope: !2269)
!2280 = !DILocation(line: 0, scope: !2023)
!2281 = distinct !{!2281, !2046, !2282}
!2282 = !DILocation(line: 1579, column: 5, scope: !2008)
!2283 = !DILocation(line: 1580, column: 19, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1580, column: 7)
!2285 = !DILocation(line: 1580, column: 15, scope: !2284)
!2286 = !DILocation(line: 1582, column: 11, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1582, column: 11)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1581, column: 5)
!2289 = !DILocation(line: 1582, column: 27, scope: !2287)
!2290 = !DILocation(line: 1582, column: 30, scope: !2287)
!2291 = !DILocation(line: 1582, column: 11, scope: !2288)
!2292 = !DILocation(line: 1590, column: 14, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 1583, column: 2)
!2294 = !DILocation(line: 1591, column: 2, scope: !2293)
!2295 = !DILocation(line: 1593, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1593, column: 7)
!2297 = !DILocation(line: 1593, column: 15, scope: !2296)
!2298 = !DILocation(line: 1593, column: 18, scope: !2296)
!2299 = !DILocation(line: 1593, column: 7, scope: !2008)
!2300 = !DILocation(line: 1595, column: 17, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 1595, column: 11)
!2302 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 1594, column: 5)
!2303 = !DILocation(line: 1595, column: 11, scope: !2301)
!2304 = !DILocation(line: 1595, column: 11, scope: !2302)
!2305 = !DILocation(line: 1596, column: 2, scope: !2301)
!2306 = !DILocation(line: 1597, column: 17, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 1597, column: 11)
!2308 = !DILocation(line: 1597, column: 28, scope: !2307)
!2309 = !DILocation(line: 1597, column: 11, scope: !2302)
!2310 = !DILocation(line: 1599, column: 4, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 1599, column: 4)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1599, column: 4)
!2313 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 1598, column: 2)
!2314 = !DILocation(line: 1599, column: 4, scope: !2312)
!2315 = !DILocation(line: 1600, column: 50, scope: !2313)
!2316 = !DILocation(line: 1600, column: 26, scope: !2313)
!2317 = !DILocation(line: 1600, column: 4, scope: !2313)
!2318 = !DILocation(line: 1601, column: 2, scope: !2313)
!2319 = !DILocation(line: 1605, column: 1, scope: !2008)
!2320 = !DILocation(line: 1604, column: 3, scope: !2008)
!2321 = distinct !DISubprogram(name: "string_prepend", scope: !3, file: !3, line: 4749, type: !2322, scopeLine: 4750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !42, !37}
!2324 = !{!2325, !2326}
!2325 = !DILocalVariable(name: "p", arg: 1, scope: !2321, file: !3, line: 4749, type: !42)
!2326 = !DILocalVariable(name: "s", arg: 2, scope: !2321, file: !3, line: 4749, type: !37)
!2327 = !DILocation(line: 0, scope: !2321)
!2328 = !DILocation(line: 4751, column: 9, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 4751, column: 7)
!2330 = !DILocation(line: 4751, column: 17, scope: !2329)
!2331 = !DILocation(line: 4751, column: 20, scope: !2329)
!2332 = !DILocation(line: 4751, column: 23, scope: !2329)
!2333 = !DILocation(line: 4751, column: 7, scope: !2321)
!2334 = !DILocation(line: 4753, column: 30, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 4752, column: 5)
!2336 = !DILocation(line: 4753, column: 7, scope: !2335)
!2337 = !DILocation(line: 4754, column: 5, scope: !2335)
!2338 = !DILocation(line: 4755, column: 1, scope: !2321)
!2339 = distinct !DISubprogram(name: "mop_up", scope: !3, file: !3, line: 1267, type: !2340, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!34, !639, !42, !7}
!2342 = !{!2343, !2344, !2345, !2346}
!2343 = !DILocalVariable(name: "work", arg: 1, scope: !2339, file: !3, line: 1267, type: !639)
!2344 = !DILocalVariable(name: "declp", arg: 2, scope: !2339, file: !3, line: 1267, type: !42)
!2345 = !DILocalVariable(name: "success", arg: 3, scope: !2339, file: !3, line: 1267, type: !7)
!2346 = !DILocalVariable(name: "demangled", scope: !2339, file: !3, line: 1269, type: !34)
!2347 = !DILocation(line: 0, scope: !2339)
!2348 = !DILocation(line: 1271, column: 3, scope: !2339)
!2349 = !DILocation(line: 1276, column: 8, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 1276, column: 7)
!2351 = !DILocation(line: 1276, column: 7, scope: !2339)
!2352 = !DILocation(line: 1278, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 1277, column: 5)
!2354 = !DILocation(line: 1279, column: 5, scope: !2353)
!2355 = !DILocation(line: 1282, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 1281, column: 5)
!2357 = !DILocation(line: 1283, column: 26, scope: !2356)
!2358 = !DILocation(line: 1285, column: 3, scope: !2339)
!2359 = distinct !DISubprogram(name: "demangle_qualified", scope: !3, file: !3, line: 3186, type: !2360, scopeLine: 3188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!7, !639, !640, !42, !7, !7}
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2377, !2379, !2383}
!2363 = !DILocalVariable(name: "work", arg: 1, scope: !2359, file: !3, line: 3186, type: !639)
!2364 = !DILocalVariable(name: "mangled", arg: 2, scope: !2359, file: !3, line: 3186, type: !640)
!2365 = !DILocalVariable(name: "result", arg: 3, scope: !2359, file: !3, line: 3187, type: !42)
!2366 = !DILocalVariable(name: "isfuncname", arg: 4, scope: !2359, file: !3, line: 3187, type: !7)
!2367 = !DILocalVariable(name: "append", arg: 5, scope: !2359, file: !3, line: 3187, type: !7)
!2368 = !DILocalVariable(name: "qualifiers", scope: !2359, file: !3, line: 3189, type: !7)
!2369 = !DILocalVariable(name: "success", scope: !2359, file: !3, line: 3190, type: !7)
!2370 = !DILocalVariable(name: "num", scope: !2359, file: !3, line: 3191, type: !108)
!2371 = !DILocalVariable(name: "temp", scope: !2359, file: !3, line: 3192, type: !43)
!2372 = !DILocalVariable(name: "last_name", scope: !2359, file: !3, line: 3193, type: !43)
!2373 = !DILocalVariable(name: "bindex", scope: !2359, file: !3, line: 3194, type: !7)
!2374 = !DILocalVariable(name: "idx", scope: !2375, file: !3, line: 3207, type: !7)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 3205, column: 5)
!2376 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 3204, column: 7)
!2377 = !DILocalVariable(name: "remember_K", scope: !2378, file: !3, line: 3265, type: !7)
!2378 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 3264, column: 5)
!2379 = !DILocalVariable(name: "idx", scope: !2380, file: !3, line: 3286, type: !7)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 3285, column: 2)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 3284, column: 16)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 3271, column: 11)
!2383 = !DILocalVariable(name: "namelength", scope: !2384, file: !3, line: 3301, type: !7)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 3300, column: 13)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 3299, column: 8)
!2386 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 3298, column: 2)
!2387 = !DILocation(line: 0, scope: !2359)
!2388 = !DILocation(line: 3191, column: 3, scope: !2359)
!2389 = !DILocation(line: 3191, column: 8, scope: !2359)
!2390 = !DILocation(line: 3192, column: 3, scope: !2359)
!2391 = !DILocation(line: 3193, column: 3, scope: !2359)
!2392 = !DILocation(line: 3194, column: 16, scope: !2359)
!2393 = !DILocation(line: 3198, column: 17, scope: !2359)
!2394 = !DILocation(line: 3199, column: 3, scope: !2359)
!2395 = !DILocation(line: 3199, column: 14, scope: !2359)
!2396 = !DILocation(line: 3199, column: 26, scope: !2359)
!2397 = !DILocation(line: 3199, column: 31, scope: !2359)
!2398 = !DILocation(line: 3199, column: 41, scope: !2359)
!2399 = !DILocation(line: 3199, column: 52, scope: !2359)
!2400 = !DILocation(line: 3201, column: 3, scope: !2359)
!2401 = !DILocation(line: 3202, column: 3, scope: !2359)
!2402 = !DILocation(line: 3204, column: 8, scope: !2376)
!2403 = !DILocation(line: 3204, column: 7, scope: !2376)
!2404 = !DILocation(line: 3204, column: 21, scope: !2376)
!2405 = !DILocation(line: 3204, column: 7, scope: !2359)
!2406 = !DILocation(line: 3208, column: 17, scope: !2375)
!2407 = !DILocation(line: 3209, column: 13, scope: !2375)
!2408 = !DILocation(line: 0, scope: !2375)
!2409 = !DILocation(line: 3210, column: 15, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 3210, column: 11)
!2411 = !DILocation(line: 3210, column: 21, scope: !2410)
!2412 = !DILocation(line: 3210, column: 39, scope: !2410)
!2413 = !DILocation(line: 3210, column: 28, scope: !2410)
!2414 = !DILocation(line: 3210, column: 11, scope: !2375)
!2415 = !DILocation(line: 3213, column: 39, scope: !2410)
!2416 = !DILocation(line: 3213, column: 31, scope: !2410)
!2417 = !DILocation(line: 3213, column: 9, scope: !2410)
!2418 = !DILocation(line: 3216, column: 13, scope: !2376)
!2419 = !DILocation(line: 3216, column: 5, scope: !2376)
!2420 = !DILocation(line: 3222, column: 17, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 3217, column: 5)
!2422 = !DILocation(line: 3223, column: 20, scope: !2421)
!2423 = !DILocation(line: 3224, column: 22, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 3224, column: 11)
!2425 = !DILocation(line: 3224, column: 11, scope: !2421)
!2426 = !DILocation(line: 3226, column: 7, scope: !2421)
!2427 = !DILocation(line: 3238, column: 14, scope: !2421)
!2428 = !DILocation(line: 3239, column: 7, scope: !2421)
!2429 = !DILocation(line: 3239, column: 14, scope: !2421)
!2430 = !DILocation(line: 3240, column: 20, scope: !2421)
!2431 = !DILocation(line: 3245, column: 12, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 3245, column: 11)
!2433 = !DILocation(line: 3245, column: 11, scope: !2432)
!2434 = !DILocation(line: 3245, column: 25, scope: !2432)
!2435 = !DILocation(line: 3245, column: 11, scope: !2421)
!2436 = !DILocation(line: 3247, column: 14, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 3246, column: 2)
!2438 = !DILocation(line: 3248, column: 2, scope: !2437)
!2439 = !DILocation(line: 3249, column: 18, scope: !2421)
!2440 = !DILocation(line: 3250, column: 7, scope: !2421)
!2441 = !DILocation(line: 3189, column: 7, scope: !2359)
!2442 = !DILocation(line: 0, scope: !2376)
!2443 = !DILocation(line: 3257, column: 8, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 3257, column: 7)
!2445 = !DILocation(line: 3257, column: 7, scope: !2359)
!2446 = !DILocation(line: 0, scope: !2385)
!2447 = !DILocation(line: 0, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 3289, column: 15)
!2449 = !DILocation(line: 0, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 3323, column: 11)
!2451 = !DILocation(line: 3263, column: 3, scope: !2359)
!2452 = !DILocation(line: 3263, column: 20, scope: !2359)
!2453 = !DILocation(line: 3263, column: 23, scope: !2359)
!2454 = !DILocation(line: 0, scope: !2378)
!2455 = !DILocation(line: 3266, column: 7, scope: !2378)
!2456 = !DILocation(line: 3268, column: 12, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 3268, column: 11)
!2458 = !DILocation(line: 3268, column: 11, scope: !2457)
!2459 = !DILocation(line: 3268, column: 23, scope: !2457)
!2460 = !DILocation(line: 3268, column: 11, scope: !2378)
!2461 = !DILocation(line: 3269, column: 12, scope: !2457)
!2462 = !DILocation(line: 3271, column: 11, scope: !2382)
!2463 = !DILocation(line: 3269, column: 2, scope: !2457)
!2464 = !DILocation(line: 3271, column: 12, scope: !2382)
!2465 = !DILocation(line: 3271, column: 23, scope: !2382)
!2466 = !DILocation(line: 3271, column: 11, scope: !2378)
!2467 = !DILocation(line: 3279, column: 14, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 3272, column: 2)
!2469 = !DILocation(line: 3281, column: 9, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 3281, column: 8)
!2471 = !DILocation(line: 3281, column: 8, scope: !2468)
!2472 = !DILocation(line: 3284, column: 28, scope: !2381)
!2473 = !DILocation(line: 3284, column: 16, scope: !2382)
!2474 = !DILocation(line: 3287, column: 21, scope: !2380)
!2475 = !DILocation(line: 3288, column: 17, scope: !2380)
!2476 = !DILocation(line: 0, scope: !2380)
!2477 = !DILocation(line: 3289, column: 19, scope: !2448)
!2478 = !DILocation(line: 3289, column: 25, scope: !2448)
!2479 = !DILocation(line: 3289, column: 41, scope: !2448)
!2480 = !DILocation(line: 3289, column: 32, scope: !2448)
!2481 = !DILocation(line: 3289, column: 15, scope: !2380)
!2482 = !DILocation(line: 3292, column: 41, scope: !2448)
!2483 = !DILocation(line: 3292, column: 35, scope: !2448)
!2484 = !DILocation(line: 3292, column: 13, scope: !2448)
!2485 = !DILocation(line: 3295, column: 9, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 3295, column: 8)
!2487 = !DILocation(line: 0, scope: !2381)
!2488 = !DILocation(line: 3299, column: 8, scope: !2385)
!2489 = !DILocation(line: 3299, column: 8, scope: !2386)
!2490 = !DILocation(line: 3305, column: 21, scope: !2384)
!2491 = !DILocation(line: 0, scope: !2384)
!2492 = !DILocation(line: 3306, column: 23, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 3306, column: 12)
!2494 = !DILocation(line: 3306, column: 12, scope: !2384)
!2495 = !DILocation(line: 3311, column: 9, scope: !2384)
!2496 = !DILocation(line: 3312, column: 13, scope: !2385)
!2497 = !DILocation(line: 3315, column: 15, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 3314, column: 13)
!2499 = !DILocation(line: 3316, column: 25, scope: !2498)
!2500 = !DILocation(line: 3317, column: 20, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 3317, column: 19)
!2502 = !DILocation(line: 3317, column: 19, scope: !2498)
!2503 = !DILocation(line: 3319, column: 15, scope: !2498)
!2504 = !DILocation(line: 0, scope: !2382)
!2505 = !DILocation(line: 3323, column: 11, scope: !2378)
!2506 = !DILocation(line: 3324, column: 29, scope: !2450)
!2507 = !DILocation(line: 3324, column: 32, scope: !2450)
!2508 = !DILocation(line: 3324, column: 2, scope: !2450)
!2509 = !DILocation(line: 3326, column: 22, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 3326, column: 11)
!2511 = !DILocation(line: 3326, column: 11, scope: !2378)
!2512 = !DILocation(line: 3327, column: 24, scope: !2510)
!2513 = !DILocation(line: 3327, column: 2, scope: !2510)
!2514 = distinct !{!2514, !2451, !2515}
!2515 = !DILocation(line: 3328, column: 5, scope: !2359)
!2516 = !DILocation(line: 3330, column: 30, scope: !2359)
!2517 = !DILocation(line: 3330, column: 33, scope: !2359)
!2518 = !DILocation(line: 3330, column: 3, scope: !2359)
!2519 = !DILocation(line: 3337, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 3337, column: 7)
!2521 = !DILocation(line: 3337, column: 7, scope: !2359)
!2522 = !DILocation(line: 3339, column: 29, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 3338, column: 5)
!2524 = !DILocation(line: 3339, column: 7, scope: !2523)
!2525 = !DILocation(line: 3340, column: 19, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 3340, column: 11)
!2527 = !DILocation(line: 3340, column: 30, scope: !2526)
!2528 = !DILocation(line: 3340, column: 11, scope: !2523)
!2529 = !DILocation(line: 3341, column: 2, scope: !2526)
!2530 = !DILocation(line: 3342, column: 7, scope: !2523)
!2531 = !DILocation(line: 3343, column: 5, scope: !2523)
!2532 = !DILocation(line: 3348, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 3348, column: 7)
!2534 = !DILocation(line: 3348, column: 7, scope: !2359)
!2535 = !DILocation(line: 3349, column: 5, scope: !2533)
!2536 = !DILocation(line: 3352, column: 12, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 3352, column: 11)
!2538 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 3351, column: 5)
!2539 = !DILocation(line: 3352, column: 11, scope: !2538)
!2540 = !DILocation(line: 3353, column: 24, scope: !2537)
!2541 = !DILocation(line: 3353, column: 2, scope: !2537)
!2542 = !DILocation(line: 3354, column: 7, scope: !2538)
!2543 = !DILocation(line: 3357, column: 3, scope: !2359)
!2544 = !DILocation(line: 3358, column: 3, scope: !2359)
!2545 = !DILocation(line: 3359, column: 3, scope: !2359)
!2546 = !DILocation(line: 3360, column: 1, scope: !2359)
!2547 = distinct !DISubprogram(name: "demangle_template", scope: !3, file: !3, line: 1996, type: !2548, scopeLine: 1999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!7, !639, !640, !42, !42, !7, !7}
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2568, !2578, !2581, !2586, !2588, !2589, !2592}
!2551 = !DILocalVariable(name: "work", arg: 1, scope: !2547, file: !3, line: 1996, type: !639)
!2552 = !DILocalVariable(name: "mangled", arg: 2, scope: !2547, file: !3, line: 1996, type: !640)
!2553 = !DILocalVariable(name: "tname", arg: 3, scope: !2547, file: !3, line: 1997, type: !42)
!2554 = !DILocalVariable(name: "trawname", arg: 4, scope: !2547, file: !3, line: 1997, type: !42)
!2555 = !DILocalVariable(name: "is_type", arg: 5, scope: !2547, file: !3, line: 1998, type: !7)
!2556 = !DILocalVariable(name: "remember", arg: 6, scope: !2547, file: !3, line: 1998, type: !7)
!2557 = !DILocalVariable(name: "i", scope: !2547, file: !3, line: 2000, type: !7)
!2558 = !DILocalVariable(name: "r", scope: !2547, file: !3, line: 2001, type: !7)
!2559 = !DILocalVariable(name: "need_comma", scope: !2547, file: !3, line: 2002, type: !7)
!2560 = !DILocalVariable(name: "success", scope: !2547, file: !3, line: 2003, type: !7)
!2561 = !DILocalVariable(name: "is_java_array", scope: !2547, file: !3, line: 2004, type: !7)
!2562 = !DILocalVariable(name: "temp", scope: !2547, file: !3, line: 2005, type: !43)
!2563 = !DILocalVariable(name: "idx", scope: !2564, file: !3, line: 2013, type: !7)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 2012, column: 2)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 2011, column: 11)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 2009, column: 5)
!2567 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 2008, column: 7)
!2568 = !DILocalVariable(name: "len", scope: !2569, file: !3, line: 2088, type: !7)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 2086, column: 3)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 2085, column: 12)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 2082, column: 6)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 2081, column: 8)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 2077, column: 2)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 2076, column: 11)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 2070, column: 5)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 2069, column: 3)
!2577 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 2069, column: 3)
!2578 = !DILocalVariable(name: "r2", scope: !2579, file: !3, line: 2103, type: !7)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 2102, column: 2)
!2580 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 2101, column: 16)
!2581 = !DILocalVariable(name: "len", scope: !2582, file: !3, line: 2116, type: !7)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 2114, column: 3)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 2113, column: 12)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 2110, column: 6)
!2585 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 2107, column: 8)
!2586 = !DILocalVariable(name: "param", scope: !2587, file: !3, line: 2130, type: !43)
!2587 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 2129, column: 2)
!2588 = !DILocalVariable(name: "s", scope: !2587, file: !3, line: 2131, type: !42)
!2589 = !DILocalVariable(name: "len", scope: !2590, file: !3, line: 2162, type: !7)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 2161, column: 6)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 2160, column: 8)
!2592 = !DILocalVariable(name: "bindex", scope: !2593, file: !3, line: 2186, type: !103)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 2185, column: 5)
!2594 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 2184, column: 7)
!2595 = !DILocation(line: 0, scope: !2547)
!2596 = !DILocation(line: 2001, column: 3, scope: !2547)
!2597 = !DILocation(line: 2005, column: 3, scope: !2547)
!2598 = !DILocation(line: 2007, column: 13, scope: !2547)
!2599 = !DILocation(line: 2008, column: 7, scope: !2567)
!2600 = !DILocation(line: 2008, column: 7, scope: !2547)
!2601 = !DILocation(line: 2011, column: 11, scope: !2565)
!2602 = !DILocation(line: 2011, column: 21, scope: !2565)
!2603 = !DILocation(line: 2011, column: 11, scope: !2566)
!2604 = !DILocation(line: 2015, column: 14, scope: !2564)
!2605 = !DILocation(line: 2017, column: 10, scope: !2564)
!2606 = !DILocation(line: 0, scope: !2564)
!2607 = !DILocation(line: 2018, column: 12, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 2018, column: 8)
!2609 = !DILocation(line: 2019, column: 8, scope: !2608)
!2610 = !DILocation(line: 2019, column: 18, scope: !2608)
!2611 = !DILocation(line: 2019, column: 12, scope: !2608)
!2612 = !DILocation(line: 2019, column: 30, scope: !2608)
!2613 = !DILocation(line: 2019, column: 46, scope: !2608)
!2614 = !DILocation(line: 2019, column: 37, scope: !2608)
!2615 = !DILocation(line: 2020, column: 8, scope: !2608)
!2616 = !DILocation(line: 2020, column: 11, scope: !2608)
!2617 = !DILocation(line: 2020, column: 52, scope: !2608)
!2618 = !DILocation(line: 2018, column: 8, scope: !2564)
!2619 = !DILocation(line: 2023, column: 14, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 2023, column: 8)
!2621 = !DILocation(line: 2023, column: 8, scope: !2620)
!2622 = !DILocation(line: 2023, column: 8, scope: !2564)
!2623 = !DILocation(line: 2025, column: 30, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 2024, column: 6)
!2625 = !DILocation(line: 2025, column: 8, scope: !2624)
!2626 = !DILocation(line: 2026, column: 12, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 2026, column: 12)
!2628 = !DILocation(line: 2026, column: 12, scope: !2624)
!2629 = !DILocation(line: 2027, column: 34, scope: !2627)
!2630 = !DILocation(line: 2027, column: 28, scope: !2627)
!2631 = !DILocation(line: 2027, column: 3, scope: !2627)
!2632 = !DILocation(line: 2031, column: 8, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 2030, column: 6)
!2634 = !DILocation(line: 2032, column: 12, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 2032, column: 12)
!2636 = !DILocation(line: 2032, column: 12, scope: !2633)
!2637 = !DILocation(line: 2033, column: 3, scope: !2635)
!2638 = !DILocation(line: 2038, column: 13, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 2038, column: 8)
!2640 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 2037, column: 2)
!2641 = !DILocation(line: 2038, column: 11, scope: !2639)
!2642 = !DILocation(line: 2038, column: 38, scope: !2639)
!2643 = !DILocation(line: 2039, column: 8, scope: !2639)
!2644 = !DILocation(line: 2039, column: 25, scope: !2639)
!2645 = !DILocation(line: 2039, column: 17, scope: !2639)
!2646 = !DILocation(line: 2039, column: 11, scope: !2639)
!2647 = !DILocation(line: 2039, column: 35, scope: !2639)
!2648 = !DILocation(line: 2038, column: 8, scope: !2640)
!2649 = !DILocation(line: 2043, column: 29, scope: !2640)
!2650 = !DILocation(line: 2043, column: 37, scope: !2640)
!2651 = !DILocation(line: 2044, column: 6, scope: !2640)
!2652 = !DILocation(line: 2044, column: 18, scope: !2640)
!2653 = !DILocation(line: 2044, column: 9, scope: !2640)
!2654 = !DILocation(line: 2044, column: 43, scope: !2640)
!2655 = !DILocation(line: 0, scope: !2640)
!2656 = !DILocation(line: 2045, column: 8, scope: !2640)
!2657 = !DILocation(line: 2047, column: 31, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 2046, column: 6)
!2659 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 2045, column: 8)
!2660 = !DILocation(line: 2047, column: 8, scope: !2658)
!2661 = !DILocation(line: 2048, column: 6, scope: !2658)
!2662 = !DILocation(line: 2049, column: 8, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 2049, column: 8)
!2664 = !DILocation(line: 2049, column: 8, scope: !2640)
!2665 = !DILocation(line: 2050, column: 32, scope: !2663)
!2666 = !DILocation(line: 2050, column: 6, scope: !2663)
!2667 = !DILocation(line: 2051, column: 13, scope: !2640)
!2668 = !DILocation(line: 2054, column: 7, scope: !2547)
!2669 = !DILocation(line: 2055, column: 5, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 2054, column: 7)
!2671 = !DILocation(line: 2057, column: 8, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 2057, column: 7)
!2673 = !DILocation(line: 2057, column: 7, scope: !2547)
!2674 = !DILocation(line: 2061, column: 7, scope: !2547)
!2675 = !DILocation(line: 2064, column: 27, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 2062, column: 5)
!2677 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 2061, column: 7)
!2678 = !DILocation(line: 2064, column: 13, scope: !2676)
!2679 = !DILocation(line: 2064, column: 25, scope: !2676)
!2680 = !DILocation(line: 2065, column: 26, scope: !2676)
!2681 = !DILocation(line: 2065, column: 13, scope: !2676)
!2682 = !DILocation(line: 2065, column: 24, scope: !2676)
!2683 = !DILocation(line: 2066, column: 12, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 2066, column: 7)
!2685 = !DILocation(line: 0, scope: !2684)
!2686 = !DILocation(line: 2066, column: 21, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 2066, column: 7)
!2688 = !DILocation(line: 2066, column: 7, scope: !2684)
!2689 = !DILocation(line: 2067, column: 8, scope: !2687)
!2690 = !DILocation(line: 2067, column: 2, scope: !2687)
!2691 = !DILocation(line: 2067, column: 23, scope: !2687)
!2692 = !DILocation(line: 2066, column: 27, scope: !2687)
!2693 = !DILocation(line: 2066, column: 7, scope: !2687)
!2694 = distinct !{!2694, !2688, !2695}
!2695 = !DILocation(line: 2067, column: 25, scope: !2684)
!2696 = !DILocation(line: 2069, column: 8, scope: !2577)
!2697 = !DILocation(line: 0, scope: !2587)
!2698 = !DILocation(line: 0, scope: !2590)
!2699 = !DILocation(line: 0, scope: !2569)
!2700 = !DILocation(line: 0, scope: !2577)
!2701 = !DILocation(line: 2069, column: 19, scope: !2576)
!2702 = !DILocation(line: 2069, column: 17, scope: !2576)
!2703 = !DILocation(line: 2069, column: 3, scope: !2577)
!2704 = !DILocation(line: 2071, column: 11, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 2071, column: 11)
!2706 = !DILocation(line: 2071, column: 11, scope: !2575)
!2707 = !DILocation(line: 2073, column: 4, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 2072, column: 2)
!2709 = !DILocation(line: 2074, column: 2, scope: !2708)
!2710 = !DILocation(line: 2076, column: 12, scope: !2574)
!2711 = !DILocation(line: 2076, column: 11, scope: !2574)
!2712 = !DILocation(line: 2076, column: 21, scope: !2574)
!2713 = !DILocation(line: 2076, column: 11, scope: !2575)
!2714 = !DILocation(line: 2078, column: 14, scope: !2573)
!2715 = !DILocation(line: 2080, column: 14, scope: !2573)
!2716 = !DILocation(line: 2081, column: 8, scope: !2572)
!2717 = !DILocation(line: 2081, column: 8, scope: !2573)
!2718 = !DILocation(line: 2083, column: 8, scope: !2571)
!2719 = !DILocation(line: 2085, column: 12, scope: !2571)
!2720 = !DILocation(line: 2088, column: 20, scope: !2569)
!2721 = !DILocation(line: 2088, column: 29, scope: !2569)
!2722 = !DILocation(line: 2088, column: 22, scope: !2569)
!2723 = !DILocation(line: 2089, column: 28, scope: !2569)
!2724 = !DILocation(line: 2089, column: 11, scope: !2569)
!2725 = !DILocation(line: 2089, column: 5, scope: !2569)
!2726 = !DILocation(line: 2089, column: 26, scope: !2569)
!2727 = !DILocation(line: 2090, column: 19, scope: !2569)
!2728 = !DILocation(line: 2090, column: 13, scope: !2569)
!2729 = !DILocation(line: 2090, column: 40, scope: !2569)
!2730 = !DILocation(line: 2090, column: 43, scope: !2569)
!2731 = !DILocation(line: 2090, column: 5, scope: !2569)
!2732 = !DILocation(line: 2091, column: 11, scope: !2569)
!2733 = !DILocation(line: 2091, column: 5, scope: !2569)
!2734 = !DILocation(line: 2091, column: 31, scope: !2569)
!2735 = !DILocation(line: 2092, column: 3, scope: !2569)
!2736 = !DILocation(line: 2094, column: 4, scope: !2573)
!2737 = !DILocation(line: 2095, column: 8, scope: !2573)
!2738 = !DILocation(line: 2101, column: 26, scope: !2580)
!2739 = !DILocation(line: 2101, column: 16, scope: !2574)
!2740 = !DILocation(line: 2104, column: 14, scope: !2579)
!2741 = !DILocation(line: 2105, column: 14, scope: !2579)
!2742 = !DILocation(line: 2108, column: 8, scope: !2585)
!2743 = !DILocation(line: 2108, column: 17, scope: !2585)
!2744 = !DILocation(line: 0, scope: !2579)
!2745 = !DILocation(line: 2108, column: 42, scope: !2585)
!2746 = !DILocation(line: 2109, column: 8, scope: !2585)
!2747 = !DILocation(line: 2109, column: 25, scope: !2585)
!2748 = !DILocation(line: 2109, column: 17, scope: !2585)
!2749 = !DILocation(line: 2109, column: 11, scope: !2585)
!2750 = !DILocation(line: 2109, column: 35, scope: !2585)
!2751 = !DILocation(line: 2107, column: 8, scope: !2579)
!2752 = !DILocation(line: 2111, column: 8, scope: !2584)
!2753 = !DILocation(line: 2112, column: 31, scope: !2584)
!2754 = !DILocation(line: 2112, column: 8, scope: !2584)
!2755 = !DILocation(line: 2113, column: 12, scope: !2584)
!2756 = !DILocation(line: 2121, column: 17, scope: !2584)
!2757 = !DILocation(line: 0, scope: !2582)
!2758 = !DILocation(line: 2117, column: 28, scope: !2582)
!2759 = !DILocation(line: 2117, column: 11, scope: !2582)
!2760 = !DILocation(line: 2117, column: 5, scope: !2582)
!2761 = !DILocation(line: 2117, column: 26, scope: !2582)
!2762 = !DILocation(line: 2118, column: 19, scope: !2582)
!2763 = !DILocation(line: 2118, column: 13, scope: !2582)
!2764 = !DILocation(line: 2118, column: 35, scope: !2582)
!2765 = !DILocation(line: 2118, column: 45, scope: !2582)
!2766 = !DILocation(line: 2118, column: 5, scope: !2582)
!2767 = !DILocation(line: 2119, column: 11, scope: !2582)
!2768 = !DILocation(line: 2119, column: 5, scope: !2582)
!2769 = !DILocation(line: 2119, column: 31, scope: !2582)
!2770 = !DILocation(line: 2120, column: 3, scope: !2582)
!2771 = !DILocation(line: 2122, column: 6, scope: !2584)
!2772 = !DILocation(line: 2123, column: 8, scope: !2579)
!2773 = !DILocation(line: 2130, column: 4, scope: !2587)
!2774 = !DILocation(line: 2136, column: 14, scope: !2587)
!2775 = !DILocation(line: 2137, column: 4, scope: !2587)
!2776 = !DILocation(line: 2138, column: 9, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 2138, column: 8)
!2778 = !DILocation(line: 2138, column: 8, scope: !2587)
!2779 = !DILocation(line: 2141, column: 8, scope: !2587)
!2780 = !DILocation(line: 2144, column: 8, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 2142, column: 6)
!2782 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 2141, column: 8)
!2783 = !DILocation(line: 2145, column: 6, scope: !2781)
!2784 = !DILocation(line: 0, scope: !2782)
!2785 = !DILocation(line: 2149, column: 14, scope: !2587)
!2786 = !DILocation(line: 2152, column: 9, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 2152, column: 8)
!2788 = !DILocation(line: 2152, column: 8, scope: !2587)
!2789 = !DILocation(line: 2154, column: 12, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 2153, column: 6)
!2791 = !DILocation(line: 2155, column: 3, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 2154, column: 12)
!2793 = !DILocation(line: 2160, column: 8, scope: !2587)
!2794 = !DILocation(line: 2162, column: 21, scope: !2590)
!2795 = !DILocation(line: 2162, column: 28, scope: !2590)
!2796 = !DILocation(line: 2162, column: 23, scope: !2590)
!2797 = !DILocation(line: 2163, column: 31, scope: !2590)
!2798 = !DILocation(line: 2163, column: 14, scope: !2590)
!2799 = !DILocation(line: 2163, column: 8, scope: !2590)
!2800 = !DILocation(line: 2163, column: 29, scope: !2590)
!2801 = !DILocation(line: 2164, column: 22, scope: !2590)
!2802 = !DILocation(line: 2164, column: 16, scope: !2590)
!2803 = !DILocation(line: 2164, column: 41, scope: !2590)
!2804 = !DILocation(line: 2164, column: 44, scope: !2590)
!2805 = !DILocation(line: 2164, column: 8, scope: !2590)
!2806 = !DILocation(line: 2165, column: 14, scope: !2590)
!2807 = !DILocation(line: 2165, column: 8, scope: !2590)
!2808 = !DILocation(line: 2165, column: 34, scope: !2590)
!2809 = !DILocation(line: 2167, column: 8, scope: !2590)
!2810 = !DILocation(line: 2168, column: 8, scope: !2590)
!2811 = !DILocation(line: 2169, column: 6, scope: !2590)
!2812 = !DILocation(line: 2170, column: 2, scope: !2580)
!2813 = !DILocation(line: 0, scope: !2574)
!2814 = !DILocation(line: 2069, column: 23, scope: !2576)
!2815 = !DILocation(line: 2069, column: 3, scope: !2576)
!2816 = distinct !{!2816, !2703, !2817}
!2817 = !DILocation(line: 2172, column: 5, scope: !2577)
!2818 = !DILocation(line: 2173, column: 7, scope: !2547)
!2819 = !DILocation(line: 2175, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 2174, column: 5)
!2821 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 2173, column: 7)
!2822 = !DILocation(line: 2176, column: 5, scope: !2820)
!2823 = !DILocation(line: 2179, column: 18, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 2179, column: 11)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 2178, column: 5)
!2826 = !DILocation(line: 2179, column: 11, scope: !2824)
!2827 = !DILocation(line: 2179, column: 24, scope: !2824)
!2828 = !DILocation(line: 2179, column: 11, scope: !2825)
!2829 = !DILocation(line: 2180, column: 2, scope: !2824)
!2830 = !DILocation(line: 2181, column: 7, scope: !2825)
!2831 = !DILocation(line: 2184, column: 18, scope: !2594)
!2832 = !DILocation(line: 2184, column: 15, scope: !2594)
!2833 = !DILocation(line: 2186, column: 26, scope: !2593)
!2834 = !DILocation(line: 0, scope: !2593)
!2835 = !DILocation(line: 2187, column: 36, scope: !2593)
!2836 = !DILocation(line: 2187, column: 39, scope: !2593)
!2837 = !DILocation(line: 2187, column: 7, scope: !2593)
!2838 = !DILocation(line: 2188, column: 5, scope: !2593)
!2839 = !DILocation(line: 2204, column: 1, scope: !2547)
!2840 = distinct !DISubprogram(name: "consume_count", scope: !3, file: !3, line: 488, type: !2841, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!7, !640}
!2843 = !{!2844, !2845}
!2844 = !DILocalVariable(name: "type", arg: 1, scope: !2840, file: !3, line: 488, type: !640)
!2845 = !DILocalVariable(name: "count", scope: !2840, file: !3, line: 490, type: !7)
!2846 = !DILocation(line: 0, scope: !2840)
!2847 = !DILocation(line: 492, column: 9, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 492, column: 7)
!2849 = !DILocation(line: 492, column: 7, scope: !2840)
!2850 = !DILocation(line: 495, column: 3, scope: !2840)
!2851 = !DILocation(line: 495, column: 10, scope: !2840)
!2852 = !DILocation(line: 497, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 496, column: 5)
!2854 = !DILocation(line: 504, column: 18, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 504, column: 11)
!2856 = !DILocation(line: 504, column: 24, scope: !2855)
!2857 = !DILocation(line: 504, column: 11, scope: !2853)
!2858 = !DILocation(line: 506, column: 4, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 505, column: 2)
!2860 = !DILocation(line: 506, column: 11, scope: !2859)
!2861 = !DILocation(line: 507, column: 13, scope: !2859)
!2862 = !DILocation(line: 0, scope: !2859)
!2863 = distinct !{!2863, !2858, !2861}
!2864 = !DILocation(line: 511, column: 16, scope: !2853)
!2865 = !DILocation(line: 511, column: 23, scope: !2853)
!2866 = !DILocation(line: 511, column: 13, scope: !2853)
!2867 = !DILocation(line: 512, column: 14, scope: !2853)
!2868 = distinct !{!2868, !2850, !2869}
!2869 = !DILocation(line: 513, column: 5, scope: !2840)
!2870 = !DILocation(line: 515, column: 13, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 515, column: 7)
!2872 = !DILocation(line: 515, column: 7, scope: !2840)
!2873 = !DILocation(line: 518, column: 3, scope: !2840)
!2874 = !DILocation(line: 519, column: 1, scope: !2840)
!2875 = distinct !DISubprogram(name: "string_appendn", scope: !3, file: !3, line: 4738, type: !2876, scopeLine: 4739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !42, !37, !7}
!2878 = !{!2879, !2880, !2881}
!2879 = !DILocalVariable(name: "p", arg: 1, scope: !2875, file: !3, line: 4738, type: !42)
!2880 = !DILocalVariable(name: "s", arg: 2, scope: !2875, file: !3, line: 4738, type: !37)
!2881 = !DILocalVariable(name: "n", arg: 3, scope: !2875, file: !3, line: 4738, type: !7)
!2882 = !DILocation(line: 0, scope: !2875)
!2883 = !DILocation(line: 4740, column: 9, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 4740, column: 7)
!2885 = !DILocation(line: 4740, column: 7, scope: !2875)
!2886 = !DILocation(line: 4742, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 4741, column: 5)
!2888 = !DILocation(line: 4743, column: 18, scope: !2887)
!2889 = !DILocation(line: 4743, column: 24, scope: !2887)
!2890 = !DILocation(line: 4743, column: 7, scope: !2887)
!2891 = !DILocation(line: 4744, column: 12, scope: !2887)
!2892 = !DILocation(line: 4745, column: 5, scope: !2887)
!2893 = !DILocation(line: 4746, column: 1, scope: !2875)
!2894 = distinct !DISubprogram(name: "string_append", scope: !3, file: !3, line: 4712, type: !2322, scopeLine: 4713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2895)
!2895 = !{!2896, !2897, !2898}
!2896 = !DILocalVariable(name: "p", arg: 1, scope: !2894, file: !3, line: 4712, type: !42)
!2897 = !DILocalVariable(name: "s", arg: 2, scope: !2894, file: !3, line: 4712, type: !37)
!2898 = !DILocalVariable(name: "n", scope: !2894, file: !3, line: 4714, type: !7)
!2899 = !DILocation(line: 0, scope: !2894)
!2900 = !DILocation(line: 4715, column: 9, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 4715, column: 7)
!2902 = !DILocation(line: 4715, column: 17, scope: !2901)
!2903 = !DILocation(line: 4715, column: 20, scope: !2901)
!2904 = !DILocation(line: 4715, column: 23, scope: !2901)
!2905 = !DILocation(line: 4715, column: 7, scope: !2894)
!2906 = !DILocation(line: 4717, column: 7, scope: !2894)
!2907 = !DILocation(line: 4718, column: 3, scope: !2894)
!2908 = !DILocation(line: 4719, column: 14, scope: !2894)
!2909 = !DILocation(line: 4719, column: 20, scope: !2894)
!2910 = !DILocation(line: 4719, column: 3, scope: !2894)
!2911 = !DILocation(line: 4720, column: 8, scope: !2894)
!2912 = !DILocation(line: 4721, column: 1, scope: !2894)
!2913 = distinct !DISubprogram(name: "register_Btype", scope: !3, file: !3, line: 4204, type: !2914, scopeLine: 4205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!7, !639}
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "work", arg: 1, scope: !2913, file: !3, line: 4204, type: !639)
!2918 = !DILocalVariable(name: "ret", scope: !2913, file: !3, line: 4206, type: !7)
!2919 = !DILocation(line: 0, scope: !2913)
!2920 = !DILocation(line: 4208, column: 15, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 4208, column: 7)
!2922 = !DILocation(line: 4208, column: 31, scope: !2921)
!2923 = !DILocation(line: 4208, column: 20, scope: !2921)
!2924 = !DILocation(line: 4208, column: 7, scope: !2913)
!2925 = !DILocation(line: 4223, column: 11, scope: !2913)
!2926 = !DILocation(line: 4210, column: 25, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 4210, column: 11)
!2928 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 4209, column: 5)
!2929 = !DILocation(line: 4210, column: 11, scope: !2928)
!2930 = !DILocation(line: 4212, column: 18, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 4211, column: 2)
!2932 = !DILocation(line: 4213, column: 23, scope: !2931)
!2933 = !DILocation(line: 4213, column: 12, scope: !2931)
!2934 = !DILocation(line: 4213, column: 21, scope: !2931)
!2935 = !DILocation(line: 4214, column: 2, scope: !2931)
!2936 = !DILocation(line: 4217, column: 18, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 4216, column: 2)
!2938 = !DILocation(line: 4219, column: 8, scope: !2937)
!2939 = !DILocation(line: 4219, column: 6, scope: !2937)
!2940 = !DILocation(line: 4222, column: 21, scope: !2913)
!2941 = !DILocation(line: 4223, column: 3, scope: !2913)
!2942 = !DILocation(line: 4223, column: 25, scope: !2913)
!2943 = !DILocation(line: 4224, column: 3, scope: !2913)
!2944 = distinct !DISubprogram(name: "consume_count_with_underscores", scope: !3, file: !3, line: 527, type: !2841, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2945)
!2945 = !{!2946, !2947}
!2946 = !DILocalVariable(name: "mangled", arg: 1, scope: !2944, file: !3, line: 527, type: !640)
!2947 = !DILocalVariable(name: "idx", scope: !2944, file: !3, line: 529, type: !7)
!2948 = !DILocation(line: 0, scope: !2944)
!2949 = !DILocation(line: 531, column: 8, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 531, column: 7)
!2951 = !DILocation(line: 531, column: 7, scope: !2950)
!2952 = !DILocation(line: 531, column: 17, scope: !2950)
!2953 = !DILocation(line: 531, column: 7, scope: !2944)
!2954 = !DILocation(line: 533, column: 17, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 532, column: 5)
!2956 = !DILocation(line: 534, column: 12, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 534, column: 11)
!2958 = !DILocation(line: 534, column: 11, scope: !2955)
!2959 = !DILocation(line: 537, column: 13, scope: !2955)
!2960 = !DILocation(line: 538, column: 12, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 538, column: 11)
!2962 = !DILocation(line: 538, column: 11, scope: !2961)
!2963 = !DILocation(line: 538, column: 21, scope: !2961)
!2964 = !DILocation(line: 538, column: 11, scope: !2955)
!2965 = !DILocation(line: 542, column: 17, scope: !2955)
!2966 = !DILocation(line: 543, column: 5, scope: !2955)
!2967 = !DILocation(line: 546, column: 21, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 546, column: 11)
!2969 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 545, column: 5)
!2970 = !DILocation(line: 546, column: 27, scope: !2968)
!2971 = !DILocation(line: 546, column: 40, scope: !2968)
!2972 = !DILocation(line: 546, column: 11, scope: !2969)
!2973 = !DILocation(line: 549, column: 13, scope: !2969)
!2974 = !DILocation(line: 549, column: 23, scope: !2969)
!2975 = !DILocation(line: 550, column: 17, scope: !2969)
!2976 = !DILocation(line: 554, column: 1, scope: !2944)
!2977 = distinct !DISubprogram(name: "string_clear", scope: !3, file: !3, line: 4696, type: !958, scopeLine: 4697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2978)
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "s", arg: 1, scope: !2977, file: !3, line: 4696, type: !42)
!2980 = !DILocation(line: 0, scope: !2977)
!2981 = !DILocation(line: 4698, column: 13, scope: !2977)
!2982 = !DILocation(line: 4698, column: 6, scope: !2977)
!2983 = !DILocation(line: 4698, column: 8, scope: !2977)
!2984 = !DILocation(line: 4699, column: 1, scope: !2977)
!2985 = distinct !DISubprogram(name: "recursively_demangle", scope: !3, file: !3, line: 3054, type: !2986, scopeLine: 3056, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2988)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !639, !640, !42, !7}
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2994}
!2989 = !DILocalVariable(name: "work", arg: 1, scope: !2985, file: !3, line: 3054, type: !639)
!2990 = !DILocalVariable(name: "mangled", arg: 2, scope: !2985, file: !3, line: 3054, type: !640)
!2991 = !DILocalVariable(name: "result", arg: 3, scope: !2985, file: !3, line: 3055, type: !42)
!2992 = !DILocalVariable(name: "namelength", arg: 4, scope: !2985, file: !3, line: 3055, type: !7)
!2993 = !DILocalVariable(name: "recurse", scope: !2985, file: !3, line: 3057, type: !34)
!2994 = !DILocalVariable(name: "recurse_dem", scope: !2985, file: !3, line: 3058, type: !34)
!2995 = !DILocation(line: 0, scope: !2985)
!2996 = !DILocation(line: 3060, column: 13, scope: !2985)
!2997 = !DILocation(line: 3061, column: 20, scope: !2985)
!2998 = !DILocation(line: 3061, column: 30, scope: !2985)
!2999 = !DILocation(line: 3061, column: 3, scope: !2985)
!3000 = !DILocation(line: 3062, column: 3, scope: !2985)
!3001 = !DILocation(line: 3062, column: 23, scope: !2985)
!3002 = !DILocation(line: 3064, column: 48, scope: !2985)
!3003 = !DILocation(line: 3064, column: 17, scope: !2985)
!3004 = !DILocation(line: 3066, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 3066, column: 7)
!3006 = !DILocation(line: 3066, column: 7, scope: !2985)
!3007 = !DILocation(line: 3068, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 3067, column: 5)
!3009 = !DILocation(line: 3069, column: 7, scope: !3008)
!3010 = !DILocation(line: 3070, column: 5, scope: !3008)
!3011 = !DILocation(line: 3073, column: 31, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 3072, column: 5)
!3013 = !DILocation(line: 3073, column: 7, scope: !3012)
!3014 = !DILocation(line: 3075, column: 3, scope: !2985)
!3015 = !DILocation(line: 3076, column: 12, scope: !2985)
!3016 = !DILocation(line: 3077, column: 1, scope: !2985)
!3017 = distinct !DISubprogram(name: "string_appends", scope: !3, file: !3, line: 4724, type: !3018, scopeLine: 4725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !42, !42}
!3020 = !{!3021, !3022, !3023}
!3021 = !DILocalVariable(name: "p", arg: 1, scope: !3017, file: !3, line: 4724, type: !42)
!3022 = !DILocalVariable(name: "s", arg: 2, scope: !3017, file: !3, line: 4724, type: !42)
!3023 = !DILocalVariable(name: "n", scope: !3017, file: !3, line: 4726, type: !7)
!3024 = !DILocation(line: 0, scope: !3017)
!3025 = !DILocation(line: 4728, column: 10, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 4728, column: 7)
!3027 = !DILocation(line: 4728, column: 18, scope: !3026)
!3028 = !DILocation(line: 4728, column: 12, scope: !3026)
!3029 = !DILocation(line: 4728, column: 7, scope: !3017)
!3030 = !DILocation(line: 4730, column: 16, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 4729, column: 5)
!3032 = !DILocation(line: 4730, column: 11, scope: !3031)
!3033 = !DILocation(line: 4731, column: 7, scope: !3031)
!3034 = !DILocation(line: 4732, column: 18, scope: !3031)
!3035 = !DILocation(line: 4732, column: 24, scope: !3031)
!3036 = !DILocation(line: 4732, column: 27, scope: !3031)
!3037 = !DILocation(line: 4732, column: 7, scope: !3031)
!3038 = !DILocation(line: 4733, column: 12, scope: !3031)
!3039 = !DILocation(line: 4734, column: 5, scope: !3031)
!3040 = !DILocation(line: 4735, column: 1, scope: !3017)
!3041 = distinct !DISubprogram(name: "remember_Ktype", scope: !3, file: !3, line: 4175, type: !3042, scopeLine: 4176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !639, !37, !7}
!3044 = !{!3045, !3046, !3047, !3048}
!3045 = !DILocalVariable(name: "work", arg: 1, scope: !3041, file: !3, line: 4175, type: !639)
!3046 = !DILocalVariable(name: "start", arg: 2, scope: !3041, file: !3, line: 4175, type: !37)
!3047 = !DILocalVariable(name: "len", arg: 3, scope: !3041, file: !3, line: 4175, type: !7)
!3048 = !DILocalVariable(name: "tem", scope: !3041, file: !3, line: 4177, type: !34)
!3049 = !DILocation(line: 0, scope: !3041)
!3050 = !DILocation(line: 4179, column: 15, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 4179, column: 7)
!3052 = !DILocation(line: 4179, column: 31, scope: !3051)
!3053 = !DILocation(line: 4179, column: 20, scope: !3051)
!3054 = !DILocation(line: 4179, column: 7, scope: !3041)
!3055 = !DILocation(line: 4181, column: 25, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 4181, column: 11)
!3057 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 4180, column: 5)
!3058 = !DILocation(line: 4181, column: 11, scope: !3057)
!3059 = !DILocation(line: 4183, column: 18, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 4182, column: 2)
!3061 = !DILocation(line: 4184, column: 23, scope: !3060)
!3062 = !DILocation(line: 4184, column: 12, scope: !3060)
!3063 = !DILocation(line: 4184, column: 21, scope: !3060)
!3064 = !DILocation(line: 4185, column: 2, scope: !3060)
!3065 = !DILocation(line: 4188, column: 18, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 4187, column: 2)
!3067 = !DILocation(line: 4190, column: 8, scope: !3066)
!3068 = !DILocation(line: 4190, column: 6, scope: !3066)
!3069 = !DILocation(line: 4193, column: 9, scope: !3041)
!3070 = !DILocation(line: 4194, column: 23, scope: !3041)
!3071 = !DILocation(line: 4194, column: 3, scope: !3041)
!3072 = !DILocation(line: 4195, column: 3, scope: !3041)
!3073 = !DILocation(line: 4195, column: 12, scope: !3041)
!3074 = !DILocation(line: 4196, column: 11, scope: !3041)
!3075 = !DILocation(line: 4196, column: 32, scope: !3041)
!3076 = !DILocation(line: 4196, column: 3, scope: !3041)
!3077 = !DILocation(line: 4196, column: 36, scope: !3041)
!3078 = !DILocation(line: 4197, column: 1, scope: !3041)
!3079 = distinct !DISubprogram(name: "remember_Btype", scope: !3, file: !3, line: 4230, type: !3080, scopeLine: 4232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !639, !37, !7, !7}
!3082 = !{!3083, !3084, !3085, !3086, !3087}
!3083 = !DILocalVariable(name: "work", arg: 1, scope: !3079, file: !3, line: 4230, type: !639)
!3084 = !DILocalVariable(name: "start", arg: 2, scope: !3079, file: !3, line: 4230, type: !37)
!3085 = !DILocalVariable(name: "len", arg: 3, scope: !3079, file: !3, line: 4231, type: !7)
!3086 = !DILocalVariable(name: "index", arg: 4, scope: !3079, file: !3, line: 4231, type: !7)
!3087 = !DILocalVariable(name: "tem", scope: !3079, file: !3, line: 4233, type: !34)
!3088 = !DILocation(line: 0, scope: !3079)
!3089 = !DILocation(line: 4235, column: 9, scope: !3079)
!3090 = !DILocation(line: 4236, column: 23, scope: !3079)
!3091 = !DILocation(line: 4236, column: 3, scope: !3079)
!3092 = !DILocation(line: 4237, column: 3, scope: !3079)
!3093 = !DILocation(line: 4237, column: 12, scope: !3079)
!3094 = !DILocation(line: 4238, column: 11, scope: !3079)
!3095 = !DILocation(line: 4238, column: 3, scope: !3079)
!3096 = !DILocation(line: 4238, column: 27, scope: !3079)
!3097 = !DILocation(line: 4239, column: 1, scope: !3079)
!3098 = distinct !DISubprogram(name: "string_prepends", scope: !3, file: !3, line: 4758, type: !3018, scopeLine: 4759, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3099)
!3099 = !{!3100, !3101}
!3100 = !DILocalVariable(name: "p", arg: 1, scope: !3098, file: !3, line: 4758, type: !42)
!3101 = !DILocalVariable(name: "s", arg: 2, scope: !3098, file: !3, line: 4758, type: !42)
!3102 = !DILocation(line: 0, scope: !3098)
!3103 = !DILocation(line: 4760, column: 10, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 4760, column: 7)
!3105 = !DILocation(line: 4760, column: 18, scope: !3104)
!3106 = !DILocation(line: 4760, column: 12, scope: !3104)
!3107 = !DILocation(line: 4760, column: 7, scope: !3098)
!3108 = !DILocation(line: 4762, column: 43, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 4761, column: 5)
!3110 = !DILocation(line: 4762, column: 38, scope: !3109)
!3111 = !DILocation(line: 4762, column: 33, scope: !3109)
!3112 = !DILocation(line: 4762, column: 7, scope: !3109)
!3113 = !DILocation(line: 4763, column: 5, scope: !3109)
!3114 = !DILocation(line: 4764, column: 1, scope: !3098)
!3115 = distinct !DISubprogram(name: "string_need", scope: !3, file: !3, line: 4655, type: !3116, scopeLine: 4656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !42, !7}
!3118 = !{!3119, !3120, !3121}
!3119 = !DILocalVariable(name: "s", arg: 1, scope: !3115, file: !3, line: 4655, type: !42)
!3120 = !DILocalVariable(name: "n", arg: 2, scope: !3115, file: !3, line: 4655, type: !7)
!3121 = !DILocalVariable(name: "tem", scope: !3115, file: !3, line: 4657, type: !7)
!3122 = !DILocation(line: 0, scope: !3115)
!3123 = !DILocation(line: 4659, column: 10, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 4659, column: 7)
!3125 = !DILocation(line: 4659, column: 12, scope: !3124)
!3126 = !DILocation(line: 4659, column: 7, scope: !3115)
!3127 = !DILocation(line: 4661, column: 11, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 4660, column: 5)
!3129 = !DILocation(line: 4665, column: 21, scope: !3128)
!3130 = !DILocation(line: 4665, column: 19, scope: !3128)
!3131 = !DILocation(line: 4665, column: 10, scope: !3128)
!3132 = !DILocation(line: 4665, column: 12, scope: !3128)
!3133 = !DILocation(line: 4666, column: 19, scope: !3128)
!3134 = !DILocation(line: 4666, column: 10, scope: !3128)
!3135 = !DILocation(line: 4666, column: 12, scope: !3128)
!3136 = !DILocation(line: 4667, column: 5, scope: !3128)
!3137 = !DILocation(line: 4668, column: 15, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 4668, column: 12)
!3139 = !DILocation(line: 4668, column: 22, scope: !3138)
!3140 = !DILocation(line: 4668, column: 17, scope: !3138)
!3141 = !DILocation(line: 4668, column: 26, scope: !3138)
!3142 = !DILocation(line: 4668, column: 24, scope: !3138)
!3143 = !DILocation(line: 4668, column: 12, scope: !3124)
!3144 = !DILocation(line: 4670, column: 18, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 4669, column: 5)
!3146 = !DILocation(line: 4670, column: 13, scope: !3145)
!3147 = !DILocation(line: 4671, column: 9, scope: !3145)
!3148 = !DILocation(line: 4672, column: 9, scope: !3145)
!3149 = !DILocation(line: 4673, column: 14, scope: !3145)
!3150 = !DILocation(line: 4673, column: 12, scope: !3145)
!3151 = !DILocation(line: 4674, column: 19, scope: !3145)
!3152 = !DILocation(line: 4674, column: 12, scope: !3145)
!3153 = !DILocation(line: 4675, column: 19, scope: !3145)
!3154 = !DILocation(line: 4675, column: 12, scope: !3145)
!3155 = !DILocation(line: 4676, column: 5, scope: !3145)
!3156 = !DILocation(line: 4677, column: 1, scope: !3115)
!3157 = distinct !DISubprogram(name: "string_prependn", scope: !3, file: !3, line: 4767, type: !2876, scopeLine: 4768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3158)
!3158 = !{!3159, !3160, !3161, !3162}
!3159 = !DILocalVariable(name: "p", arg: 1, scope: !3157, file: !3, line: 4767, type: !42)
!3160 = !DILocalVariable(name: "s", arg: 2, scope: !3157, file: !3, line: 4767, type: !37)
!3161 = !DILocalVariable(name: "n", arg: 3, scope: !3157, file: !3, line: 4767, type: !7)
!3162 = !DILocalVariable(name: "q", scope: !3157, file: !3, line: 4769, type: !34)
!3163 = !DILocation(line: 0, scope: !3157)
!3164 = !DILocation(line: 4771, column: 9, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 4771, column: 7)
!3166 = !DILocation(line: 4771, column: 7, scope: !3157)
!3167 = !DILocation(line: 4773, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 4772, column: 5)
!3169 = !DILocation(line: 4774, column: 19, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 4774, column: 7)
!3171 = !DILocation(line: 0, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 4774, column: 7)
!3173 = !DILocation(line: 0, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 4775, column: 2)
!3175 = !DILocation(line: 4774, column: 12, scope: !3170)
!3176 = !DILocation(line: 0, scope: !3170)
!3177 = !DILocation(line: 4774, column: 34, scope: !3172)
!3178 = !DILocation(line: 4774, column: 28, scope: !3172)
!3179 = !DILocation(line: 4774, column: 7, scope: !3170)
!3180 = !DILocation(line: 4776, column: 11, scope: !3174)
!3181 = !DILocation(line: 4776, column: 4, scope: !3174)
!3182 = !DILocation(line: 4776, column: 9, scope: !3174)
!3183 = !DILocation(line: 4774, column: 7, scope: !3172)
!3184 = distinct !{!3184, !3179, !3185}
!3185 = !DILocation(line: 4777, column: 2, scope: !3170)
!3186 = !DILocation(line: 4778, column: 7, scope: !3168)
!3187 = !DILocation(line: 4779, column: 12, scope: !3168)
!3188 = !DILocation(line: 4780, column: 5, scope: !3168)
!3189 = !DILocation(line: 4781, column: 1, scope: !3157)
!3190 = distinct !DISubprogram(name: "string_append_template_idx", scope: !3, file: !3, line: 4784, type: !3116, scopeLine: 4785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3191)
!3191 = !{!3192, !3193, !3194}
!3192 = !DILocalVariable(name: "s", arg: 1, scope: !3190, file: !3, line: 4784, type: !42)
!3193 = !DILocalVariable(name: "idx", arg: 2, scope: !3190, file: !3, line: 4784, type: !7)
!3194 = !DILocalVariable(name: "buf", scope: !3190, file: !3, line: 4786, type: !3195)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 264, elements: !3196)
!3196 = !{!3197}
!3197 = !DISubrange(count: 33)
!3198 = !DILocation(line: 0, scope: !3190)
!3199 = !DILocation(line: 4786, column: 3, scope: !3190)
!3200 = !DILocation(line: 4786, column: 8, scope: !3190)
!3201 = !DILocation(line: 4787, column: 3, scope: !3190)
!3202 = !DILocation(line: 4788, column: 3, scope: !3190)
!3203 = !DILocation(line: 4789, column: 1, scope: !3190)
!3204 = distinct !DISubprogram(name: "get_count", scope: !3, file: !3, line: 3409, type: !3205, scopeLine: 3410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3208)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!7, !640, !3207}
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3208 = !{!3209, !3210, !3211, !3212}
!3209 = !DILocalVariable(name: "type", arg: 1, scope: !3204, file: !3, line: 3409, type: !640)
!3210 = !DILocalVariable(name: "count", arg: 2, scope: !3204, file: !3, line: 3409, type: !3207)
!3211 = !DILocalVariable(name: "p", scope: !3204, file: !3, line: 3411, type: !37)
!3212 = !DILocalVariable(name: "n", scope: !3204, file: !3, line: 3412, type: !7)
!3213 = !DILocation(line: 0, scope: !3204)
!3214 = !DILocation(line: 3414, column: 8, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 3414, column: 7)
!3216 = !DILocation(line: 3414, column: 7, scope: !3204)
!3217 = !DILocation(line: 3418, column: 16, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 3417, column: 5)
!3219 = !DILocation(line: 3418, column: 23, scope: !3218)
!3220 = !DILocation(line: 3418, column: 14, scope: !3218)
!3221 = !DILocation(line: 3419, column: 14, scope: !3218)
!3222 = !DILocation(line: 3420, column: 11, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 3420, column: 11)
!3224 = !DILocation(line: 3420, column: 11, scope: !3218)
!3225 = !DILocation(line: 3423, column: 8, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 3421, column: 2)
!3227 = !DILocation(line: 3424, column: 4, scope: !3226)
!3228 = !DILocation(line: 3427, column: 13, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 3425, column: 6)
!3230 = !DILocation(line: 0, scope: !3226)
!3231 = !DILocation(line: 3426, column: 10, scope: !3229)
!3232 = !DILocation(line: 3427, column: 16, scope: !3229)
!3233 = !DILocation(line: 3427, column: 10, scope: !3229)
!3234 = !DILocation(line: 3428, column: 9, scope: !3229)
!3235 = !DILocation(line: 3430, column: 11, scope: !3226)
!3236 = !DILocation(line: 3429, column: 6, scope: !3229)
!3237 = distinct !{!3237, !3227, !3238}
!3238 = !DILocation(line: 3430, column: 38, scope: !3226)
!3239 = !DILocation(line: 3431, column: 11, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 3431, column: 8)
!3241 = !DILocation(line: 3431, column: 8, scope: !3226)
!3242 = !DILocation(line: 3433, column: 18, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 3432, column: 6)
!3244 = !DILocation(line: 3433, column: 14, scope: !3243)
!3245 = !DILocation(line: 3434, column: 15, scope: !3243)
!3246 = !DILocation(line: 3435, column: 6, scope: !3243)
!3247 = !DILocation(line: 3439, column: 1, scope: !3204)
!3248 = distinct !DISubprogram(name: "demangle_template_template_parm", scope: !3, file: !3, line: 1631, type: !637, scopeLine: 1633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3249)
!3249 = !{!3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257}
!3250 = !DILocalVariable(name: "work", arg: 1, scope: !3248, file: !3, line: 1631, type: !639)
!3251 = !DILocalVariable(name: "mangled", arg: 2, scope: !3248, file: !3, line: 1632, type: !640)
!3252 = !DILocalVariable(name: "tname", arg: 3, scope: !3248, file: !3, line: 1632, type: !42)
!3253 = !DILocalVariable(name: "i", scope: !3248, file: !3, line: 1634, type: !7)
!3254 = !DILocalVariable(name: "r", scope: !3248, file: !3, line: 1635, type: !7)
!3255 = !DILocalVariable(name: "need_comma", scope: !3248, file: !3, line: 1636, type: !7)
!3256 = !DILocalVariable(name: "success", scope: !3248, file: !3, line: 1637, type: !7)
!3257 = !DILocalVariable(name: "temp", scope: !3248, file: !3, line: 1638, type: !43)
!3258 = !DILocation(line: 0, scope: !3248)
!3259 = !DILocation(line: 1635, column: 3, scope: !3248)
!3260 = !DILocation(line: 1638, column: 3, scope: !3248)
!3261 = !DILocation(line: 1640, column: 3, scope: !3248)
!3262 = !DILocation(line: 1642, column: 7, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 1642, column: 7)
!3264 = !DILocation(line: 1642, column: 7, scope: !3248)
!3265 = !DILocation(line: 1644, column: 7, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 1644, column: 7)
!3267 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 1643, column: 5)
!3268 = !DILocation(line: 0, scope: !3266)
!3269 = !DILocation(line: 1637, column: 7, scope: !3248)
!3270 = !DILocation(line: 1644, column: 23, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 1644, column: 7)
!3272 = !DILocation(line: 1644, column: 21, scope: !3271)
!3273 = !DILocation(line: 1646, column: 8, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1646, column: 8)
!3275 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 1645, column: 2)
!3276 = !DILocation(line: 1646, column: 8, scope: !3275)
!3277 = !DILocation(line: 1648, column: 8, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 1647, column: 6)
!3279 = !DILocation(line: 1649, column: 6, scope: !3278)
!3280 = !DILocation(line: 1652, column: 11, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1652, column: 10)
!3282 = !DILocation(line: 1652, column: 10, scope: !3281)
!3283 = !DILocation(line: 1652, column: 20, scope: !3281)
!3284 = !DILocation(line: 1652, column: 10, scope: !3275)
!3285 = !DILocation(line: 1654, column: 13, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 1653, column: 8)
!3287 = !DILocation(line: 1655, column: 3, scope: !3286)
!3288 = !DILocation(line: 1656, column: 8, scope: !3286)
!3289 = !DILocation(line: 1658, column: 25, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 1658, column: 15)
!3291 = !DILocation(line: 1658, column: 15, scope: !3281)
!3292 = !DILocation(line: 1660, column: 13, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 1659, column: 8)
!3294 = !DILocation(line: 1662, column: 5, scope: !3293)
!3295 = !DILocation(line: 1663, column: 8, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 1663, column: 7)
!3297 = !DILocation(line: 1663, column: 7, scope: !3293)
!3298 = !DILocation(line: 1671, column: 13, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 1669, column: 8)
!3300 = !DILocation(line: 1672, column: 7, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 1672, column: 7)
!3302 = !DILocation(line: 1672, column: 7, scope: !3299)
!3303 = !DILocation(line: 1674, column: 7, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 1673, column: 5)
!3305 = !DILocation(line: 1675, column: 5, scope: !3304)
!3306 = !DILocation(line: 1676, column: 3, scope: !3299)
!3307 = !DILocation(line: 1677, column: 7, scope: !3299)
!3308 = !DILocation(line: 1644, column: 27, scope: !3271)
!3309 = !DILocation(line: 1644, column: 7, scope: !3271)
!3310 = distinct !{!3310, !3265, !3311}
!3311 = !DILocation(line: 1683, column: 2, scope: !3266)
!3312 = !DILocation(line: 1686, column: 14, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 1686, column: 7)
!3314 = !DILocation(line: 1686, column: 7, scope: !3313)
!3315 = !DILocation(line: 1686, column: 20, scope: !3313)
!3316 = !DILocation(line: 1686, column: 7, scope: !3248)
!3317 = !DILocation(line: 1687, column: 5, scope: !3313)
!3318 = !DILocation(line: 1688, column: 3, scope: !3248)
!3319 = !DILocation(line: 1690, column: 1, scope: !3248)
!3320 = !DILocation(line: 1689, column: 3, scope: !3248)
!3321 = distinct !DISubprogram(name: "demangle_template_value_parm", scope: !3, file: !3, line: 1887, type: !3322, scopeLine: 1889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!7, !639, !640, !42, !41}
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330, !3333, !3337, !3338, !3341, !3347, !3350}
!3325 = !DILocalVariable(name: "work", arg: 1, scope: !3321, file: !3, line: 1887, type: !639)
!3326 = !DILocalVariable(name: "mangled", arg: 2, scope: !3321, file: !3, line: 1887, type: !640)
!3327 = !DILocalVariable(name: "s", arg: 3, scope: !3321, file: !3, line: 1888, type: !42)
!3328 = !DILocalVariable(name: "tk", arg: 4, scope: !3321, file: !3, line: 1888, type: !41)
!3329 = !DILocalVariable(name: "success", scope: !3321, file: !3, line: 1890, type: !7)
!3330 = !DILocalVariable(name: "idx", scope: !3331, file: !3, line: 1895, type: !7)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 1893, column: 5)
!3332 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 1892, column: 7)
!3333 = !DILocalVariable(name: "tmp", scope: !3334, file: !3, line: 1912, type: !108)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 1911, column: 5)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 1910, column: 12)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 1908, column: 12)
!3337 = !DILocalVariable(name: "val", scope: !3334, file: !3, line: 1913, type: !7)
!3338 = !DILocalVariable(name: "val", scope: !3339, file: !3, line: 1933, type: !7)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1932, column: 5)
!3340 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 1931, column: 12)
!3341 = !DILocalVariable(name: "symbol_len", scope: !3342, file: !3, line: 1951, type: !7)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 1950, column: 2)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 1945, column: 11)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 1944, column: 5)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 1943, column: 12)
!3346 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1941, column: 12)
!3347 = !DILocalVariable(name: "p", scope: !3348, file: !3, line: 1958, type: !34)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 1957, column: 6)
!3349 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 1954, column: 8)
!3350 = !DILocalVariable(name: "q", scope: !3348, file: !3, line: 1958, type: !34)
!3351 = !DILocation(line: 0, scope: !3321)
!3352 = !DILocation(line: 1892, column: 8, scope: !3332)
!3353 = !DILocation(line: 1892, column: 7, scope: !3332)
!3354 = !DILocation(line: 1892, column: 17, scope: !3332)
!3355 = !DILocation(line: 1892, column: 7, scope: !3321)
!3356 = !DILocation(line: 1897, column: 17, scope: !3331)
!3357 = !DILocation(line: 1898, column: 13, scope: !3331)
!3358 = !DILocation(line: 0, scope: !3331)
!3359 = !DILocation(line: 1899, column: 15, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 1899, column: 11)
!3361 = !DILocation(line: 1900, column: 4, scope: !3360)
!3362 = !DILocation(line: 1900, column: 14, scope: !3360)
!3363 = !DILocation(line: 1900, column: 8, scope: !3360)
!3364 = !DILocation(line: 1900, column: 26, scope: !3360)
!3365 = !DILocation(line: 1900, column: 42, scope: !3360)
!3366 = !DILocation(line: 1900, column: 33, scope: !3360)
!3367 = !DILocation(line: 1901, column: 4, scope: !3360)
!3368 = !DILocation(line: 1901, column: 7, scope: !3360)
!3369 = !DILocation(line: 1901, column: 48, scope: !3360)
!3370 = !DILocation(line: 1899, column: 11, scope: !3331)
!3371 = !DILocation(line: 1903, column: 17, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 1903, column: 11)
!3373 = !DILocation(line: 1903, column: 11, scope: !3372)
!3374 = !DILocation(line: 1903, column: 11, scope: !3331)
!3375 = !DILocation(line: 1904, column: 20, scope: !3372)
!3376 = !DILocation(line: 1904, column: 2, scope: !3372)
!3377 = !DILocation(line: 1906, column: 2, scope: !3372)
!3378 = !DILocation(line: 1908, column: 12, scope: !3332)
!3379 = !DILocation(line: 1909, column: 15, scope: !3336)
!3380 = !DILocation(line: 1909, column: 5, scope: !3336)
!3381 = !DILocation(line: 1912, column: 7, scope: !3334)
!3382 = !DILocation(line: 1912, column: 12, scope: !3334)
!3383 = !DILocation(line: 1914, column: 21, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 1914, column: 11)
!3385 = !DILocation(line: 1914, column: 11, scope: !3334)
!3386 = !DILocation(line: 1916, column: 4, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1915, column: 2)
!3388 = !DILocation(line: 1917, column: 14, scope: !3387)
!3389 = !DILocation(line: 1918, column: 2, scope: !3387)
!3390 = !DILocation(line: 1919, column: 7, scope: !3334)
!3391 = !DILocation(line: 1920, column: 13, scope: !3334)
!3392 = !DILocation(line: 0, scope: !3334)
!3393 = !DILocation(line: 1921, column: 15, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 1921, column: 11)
!3395 = !DILocation(line: 1921, column: 11, scope: !3334)
!3396 = !DILocation(line: 1925, column: 13, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 1924, column: 2)
!3398 = !DILocation(line: 1925, column: 11, scope: !3397)
!3399 = !DILocation(line: 1926, column: 4, scope: !3397)
!3400 = !DILocation(line: 1926, column: 11, scope: !3397)
!3401 = !DILocation(line: 1927, column: 4, scope: !3397)
!3402 = !DILocation(line: 1928, column: 4, scope: !3397)
!3403 = !DILocation(line: 1930, column: 5, scope: !3335)
!3404 = !DILocation(line: 1930, column: 5, scope: !3334)
!3405 = !DILocation(line: 1933, column: 17, scope: !3339)
!3406 = !DILocation(line: 0, scope: !3339)
!3407 = !DILocation(line: 1934, column: 11, scope: !3339)
!3408 = !DILocation(line: 1935, column: 2, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 1934, column: 11)
!3410 = !DILocation(line: 1937, column: 2, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 1936, column: 16)
!3412 = !DILocation(line: 1942, column: 15, scope: !3346)
!3413 = !DILocation(line: 1942, column: 5, scope: !3346)
!3414 = !DILocation(line: 1945, column: 21, scope: !3343)
!3415 = !DILocation(line: 1945, column: 11, scope: !3344)
!3416 = !DILocation(line: 1946, column: 12, scope: !3343)
!3417 = !DILocation(line: 1946, column: 2, scope: !3343)
!3418 = !DILocation(line: 1951, column: 22, scope: !3342)
!3419 = !DILocation(line: 0, scope: !3342)
!3420 = !DILocation(line: 1952, column: 8, scope: !3342)
!3421 = !DILocation(line: 1955, column: 6, scope: !3349)
!3422 = !DILocation(line: 1958, column: 18, scope: !3348)
!3423 = !DILocation(line: 0, scope: !3348)
!3424 = !DILocation(line: 1959, column: 20, scope: !3348)
!3425 = !DILocation(line: 1959, column: 30, scope: !3348)
!3426 = !DILocation(line: 1959, column: 8, scope: !3348)
!3427 = !DILocation(line: 1960, column: 8, scope: !3348)
!3428 = !DILocation(line: 1960, column: 23, scope: !3348)
!3429 = !DILocation(line: 1966, column: 37, scope: !3348)
!3430 = !DILocation(line: 1966, column: 12, scope: !3348)
!3431 = !DILocation(line: 1967, column: 15, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1967, column: 12)
!3433 = !DILocation(line: 1967, column: 12, scope: !3348)
!3434 = !DILocation(line: 1968, column: 3, scope: !3432)
!3435 = !DILocation(line: 1971, column: 12, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1971, column: 12)
!3437 = !DILocation(line: 1971, column: 12, scope: !3348)
!3438 = !DILocation(line: 1973, column: 5, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 1972, column: 3)
!3440 = !DILocation(line: 1974, column: 5, scope: !3439)
!3441 = !DILocation(line: 1975, column: 3, scope: !3439)
!3442 = !DILocation(line: 1977, column: 3, scope: !3436)
!3443 = !DILocation(line: 1978, column: 8, scope: !3348)
!3444 = !DILocation(line: 1980, column: 13, scope: !3342)
!3445 = !DILocation(line: 1981, column: 2, scope: !3343)
!3446 = !DILocation(line: 1984, column: 3, scope: !3321)
!3447 = !DILocation(line: 1985, column: 1, scope: !3321)
!3448 = distinct !DISubprogram(name: "demangle_integral_value", scope: !3, file: !3, line: 1750, type: !637, scopeLine: 1752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3449)
!3449 = !{!3450, !3451, !3452, !3453, !3454, !3458, !3459, !3460}
!3450 = !DILocalVariable(name: "work", arg: 1, scope: !3448, file: !3, line: 1750, type: !639)
!3451 = !DILocalVariable(name: "mangled", arg: 2, scope: !3448, file: !3, line: 1751, type: !640)
!3452 = !DILocalVariable(name: "s", arg: 3, scope: !3448, file: !3, line: 1751, type: !42)
!3453 = !DILocalVariable(name: "success", scope: !3448, file: !3, line: 1753, type: !7)
!3454 = !DILocalVariable(name: "value", scope: !3455, file: !3, line: 1761, type: !7)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 1760, column: 5)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1757, column: 12)
!3457 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1755, column: 7)
!3458 = !DILocalVariable(name: "multidigit_without_leading_underscore", scope: !3455, file: !3, line: 1765, type: !7)
!3459 = !DILocalVariable(name: "leave_following_underscore", scope: !3455, file: !3, line: 1766, type: !7)
!3460 = !DILocalVariable(name: "buf", scope: !3461, file: !3, line: 1819, type: !3463)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 1818, column: 2)
!3462 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 1817, column: 11)
!3463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !3464)
!3464 = !{!3465}
!3465 = !DISubrange(count: 32)
!3466 = !DILocation(line: 0, scope: !3448)
!3467 = !DILocation(line: 1755, column: 8, scope: !3457)
!3468 = !DILocation(line: 1755, column: 7, scope: !3457)
!3469 = !DILocation(line: 1755, column: 17, scope: !3457)
!3470 = !DILocation(line: 1755, column: 7, scope: !3448)
!3471 = !DILocation(line: 1756, column: 15, scope: !3457)
!3472 = !DILocation(line: 1756, column: 5, scope: !3457)
!3473 = !DILocation(line: 1757, column: 22, scope: !3456)
!3474 = !DILocation(line: 1757, column: 29, scope: !3456)
!3475 = !DILocation(line: 1757, column: 42, scope: !3456)
!3476 = !DILocation(line: 1757, column: 12, scope: !3457)
!3477 = !DILocation(line: 1758, column: 15, scope: !3456)
!3478 = !DILocation(line: 1758, column: 5, scope: !3456)
!3479 = !DILocation(line: 0, scope: !3455)
!3480 = !DILocation(line: 1770, column: 21, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 1770, column: 11)
!3482 = !DILocation(line: 1770, column: 11, scope: !3455)
!3483 = !DILocation(line: 1772, column: 8, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1772, column: 8)
!3485 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 1771, column: 9)
!3486 = !DILocation(line: 1772, column: 22, scope: !3484)
!3487 = !DILocation(line: 1772, column: 8, scope: !3485)
!3488 = !DILocation(line: 1779, column: 8, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1773, column: 6)
!3490 = !DILocation(line: 1780, column: 19, scope: !3489)
!3491 = !DILocation(line: 1781, column: 6, scope: !3489)
!3492 = !DILocation(line: 1793, column: 18, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 1793, column: 8)
!3494 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 1791, column: 2)
!3495 = !DILocation(line: 1793, column: 8, scope: !3494)
!3496 = !DILocation(line: 1795, column: 6, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1794, column: 4)
!3498 = !DILocation(line: 1796, column: 16, scope: !3497)
!3499 = !DILocation(line: 1797, column: 4, scope: !3497)
!3500 = !DILocation(line: 1812, column: 11, scope: !3455)
!3501 = !DILocation(line: 1813, column: 10, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 1812, column: 11)
!3503 = !DILocation(line: 1813, column: 2, scope: !3502)
!3504 = !DILocation(line: 1815, column: 10, scope: !3502)
!3505 = !DILocation(line: 0, scope: !3502)
!3506 = !DILocation(line: 1817, column: 17, scope: !3462)
!3507 = !DILocation(line: 1817, column: 11, scope: !3455)
!3508 = !DILocation(line: 1819, column: 4, scope: !3461)
!3509 = !DILocation(line: 1819, column: 9, scope: !3461)
!3510 = !DILocation(line: 1820, column: 4, scope: !3461)
!3511 = !DILocation(line: 1821, column: 4, scope: !3461)
!3512 = !DILocation(line: 1830, column: 15, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 1830, column: 8)
!3514 = !DILocation(line: 1830, column: 19, scope: !3513)
!3515 = !DILocation(line: 1831, column: 13, scope: !3513)
!3516 = !DILocation(line: 1832, column: 12, scope: !3513)
!3517 = !DILocation(line: 1832, column: 11, scope: !3513)
!3518 = !DILocation(line: 1832, column: 21, scope: !3513)
!3519 = !DILocation(line: 1830, column: 8, scope: !3461)
!3520 = !DILocation(line: 1833, column: 16, scope: !3513)
!3521 = !DILocation(line: 1833, column: 6, scope: !3513)
!3522 = !DILocation(line: 1837, column: 2, scope: !3462)
!3523 = !DILocation(line: 1837, column: 2, scope: !3461)
!3524 = !DILocation(line: 0, scope: !3457)
!3525 = !DILocation(line: 1840, column: 3, scope: !3448)
!3526 = distinct !DISubprogram(name: "demangle_real_value", scope: !3, file: !3, line: 1846, type: !637, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3527)
!3527 = !{!3528, !3529, !3530}
!3528 = !DILocalVariable(name: "work", arg: 1, scope: !3526, file: !3, line: 1846, type: !639)
!3529 = !DILocalVariable(name: "mangled", arg: 2, scope: !3526, file: !3, line: 1847, type: !640)
!3530 = !DILocalVariable(name: "s", arg: 3, scope: !3526, file: !3, line: 1847, type: !42)
!3531 = !DILocation(line: 0, scope: !3526)
!3532 = !DILocation(line: 1849, column: 8, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1849, column: 7)
!3534 = !DILocation(line: 1849, column: 7, scope: !3533)
!3535 = !DILocation(line: 1849, column: 17, scope: !3533)
!3536 = !DILocation(line: 1849, column: 7, scope: !3526)
!3537 = !DILocation(line: 1850, column: 12, scope: !3533)
!3538 = !DILocation(line: 1850, column: 5, scope: !3533)
!3539 = !DILocation(line: 1852, column: 17, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1852, column: 7)
!3541 = !DILocation(line: 1852, column: 7, scope: !3526)
!3542 = !DILocation(line: 1854, column: 7, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 1853, column: 5)
!3544 = !DILocation(line: 1855, column: 17, scope: !3543)
!3545 = !DILocation(line: 1856, column: 5, scope: !3543)
!3546 = !DILocation(line: 1857, column: 3, scope: !3526)
!3547 = !DILocation(line: 1857, column: 10, scope: !3526)
!3548 = !DILocation(line: 1859, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1858, column: 5)
!3550 = !DILocation(line: 1860, column: 17, scope: !3549)
!3551 = distinct !{!3551, !3546, !3552}
!3552 = !DILocation(line: 1861, column: 5, scope: !3526)
!3553 = !DILocation(line: 1862, column: 17, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1862, column: 7)
!3555 = !DILocation(line: 1862, column: 7, scope: !3526)
!3556 = !DILocation(line: 1864, column: 7, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 1863, column: 5)
!3558 = !DILocation(line: 1866, column: 7, scope: !3557)
!3559 = !DILocation(line: 0, scope: !3557)
!3560 = !DILocation(line: 1866, column: 14, scope: !3557)
!3561 = !DILocation(line: 1868, column: 4, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1867, column: 2)
!3563 = distinct !{!3563, !3558, !3564}
!3564 = !DILocation(line: 1870, column: 2, scope: !3557)
!3565 = !DILocation(line: 1872, column: 8, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1872, column: 7)
!3567 = !DILocation(line: 1872, column: 7, scope: !3566)
!3568 = !DILocation(line: 1872, column: 17, scope: !3566)
!3569 = !DILocation(line: 1872, column: 7, scope: !3526)
!3570 = !DILocation(line: 1874, column: 7, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 1873, column: 5)
!3572 = !DILocation(line: 1876, column: 7, scope: !3571)
!3573 = !DILocation(line: 0, scope: !3571)
!3574 = !DILocation(line: 1876, column: 14, scope: !3571)
!3575 = !DILocation(line: 1878, column: 4, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 1877, column: 2)
!3577 = distinct !{!3577, !3572, !3578}
!3578 = !DILocation(line: 1880, column: 2, scope: !3571)
!3579 = !DILocation(line: 1884, column: 1, scope: !3526)
!3580 = distinct !DISubprogram(name: "demangle_expression", scope: !3, file: !3, line: 1693, type: !3322, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3581)
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3588, !3592, !3593}
!3582 = !DILocalVariable(name: "work", arg: 1, scope: !3580, file: !3, line: 1693, type: !639)
!3583 = !DILocalVariable(name: "mangled", arg: 2, scope: !3580, file: !3, line: 1693, type: !640)
!3584 = !DILocalVariable(name: "s", arg: 3, scope: !3580, file: !3, line: 1694, type: !42)
!3585 = !DILocalVariable(name: "tk", arg: 4, scope: !3580, file: !3, line: 1694, type: !41)
!3586 = !DILocalVariable(name: "need_operator", scope: !3580, file: !3, line: 1696, type: !7)
!3587 = !DILocalVariable(name: "success", scope: !3580, file: !3, line: 1697, type: !7)
!3588 = !DILocalVariable(name: "i", scope: !3589, file: !3, line: 1706, type: !215)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 1705, column: 2)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 1704, column: 11)
!3591 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 1703, column: 5)
!3592 = !DILocalVariable(name: "len", scope: !3589, file: !3, line: 1707, type: !215)
!3593 = !DILocalVariable(name: "l", scope: !3594, file: !3, line: 1715, type: !215)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 1714, column: 6)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 1713, column: 4)
!3596 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 1713, column: 4)
!3597 = !DILocation(line: 0, scope: !3580)
!3598 = !DILocation(line: 1700, column: 3, scope: !3580)
!3599 = !DILocation(line: 1701, column: 13, scope: !3580)
!3600 = !DILocation(line: 1702, column: 3, scope: !3580)
!3601 = !DILocation(line: 1696, column: 7, scope: !3580)
!3602 = !DILocation(line: 1702, column: 10, scope: !3580)
!3603 = !DILocation(line: 1702, column: 18, scope: !3580)
!3604 = !DILocation(line: 1702, column: 22, scope: !3580)
!3605 = !DILocation(line: 1702, column: 21, scope: !3580)
!3606 = !DILocation(line: 1702, column: 31, scope: !3580)
!3607 = !DILocation(line: 1702, column: 51, scope: !3580)
!3608 = !DILocation(line: 1702, column: 38, scope: !3580)
!3609 = !DILocation(line: 1704, column: 11, scope: !3590)
!3610 = !DILocation(line: 1704, column: 11, scope: !3591)
!3611 = !DILocation(line: 1711, column: 10, scope: !3589)
!3612 = !DILocation(line: 0, scope: !3589)
!3613 = !DILocation(line: 1713, column: 9, scope: !3596)
!3614 = !DILocation(line: 0, scope: !3596)
!3615 = !DILocation(line: 1713, column: 18, scope: !3595)
!3616 = !DILocation(line: 1713, column: 4, scope: !3596)
!3617 = !DILocation(line: 1715, column: 38, scope: !3594)
!3618 = !DILocation(line: 1715, column: 19, scope: !3594)
!3619 = !DILocation(line: 0, scope: !3594)
!3620 = !DILocation(line: 1717, column: 14, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1717, column: 12)
!3622 = !DILocation(line: 1718, column: 5, scope: !3621)
!3623 = !DILocation(line: 1718, column: 31, scope: !3621)
!3624 = !DILocation(line: 1718, column: 8, scope: !3621)
!3625 = !DILocation(line: 1718, column: 44, scope: !3621)
!3626 = !DILocation(line: 1717, column: 12, scope: !3594)
!3627 = !DILocation(line: 1720, column: 5, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1719, column: 3)
!3629 = !DILocation(line: 1721, column: 34, scope: !3628)
!3630 = !DILocation(line: 1721, column: 5, scope: !3628)
!3631 = !DILocation(line: 1722, column: 5, scope: !3628)
!3632 = !DILocation(line: 1724, column: 16, scope: !3628)
!3633 = !DILocation(line: 1725, column: 5, scope: !3628)
!3634 = !DILocation(line: 1713, column: 42, scope: !3595)
!3635 = !DILocation(line: 1713, column: 4, scope: !3595)
!3636 = distinct !{!3636, !3616, !3637}
!3637 = !DILocation(line: 1727, column: 6, scope: !3596)
!3638 = !DILocation(line: 1729, column: 9, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 1729, column: 8)
!3640 = !DILocation(line: 1735, column: 17, scope: !3591)
!3641 = distinct !{!3641, !3600, !3642}
!3642 = !DILocation(line: 1736, column: 5, scope: !3580)
!3643 = !DILocation(line: 1738, column: 8, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 1738, column: 7)
!3645 = !DILocation(line: 1738, column: 7, scope: !3644)
!3646 = !DILocation(line: 1738, column: 17, scope: !3644)
!3647 = !DILocation(line: 1738, column: 7, scope: !3580)
!3648 = !DILocation(line: 1742, column: 7, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 1741, column: 5)
!3650 = !DILocation(line: 1743, column: 17, scope: !3649)
!3651 = !DILocation(line: 1746, column: 3, scope: !3580)
!3652 = distinct !DISubprogram(name: "demangle_arm_hp_template", scope: !3, file: !3, line: 2261, type: !3653, scopeLine: 2263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !639, !640, !7, !42}
!3655 = !{!3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3667, !3668, !3671, !3672, !3676, !3677}
!3656 = !DILocalVariable(name: "work", arg: 1, scope: !3652, file: !3, line: 2261, type: !639)
!3657 = !DILocalVariable(name: "mangled", arg: 2, scope: !3652, file: !3, line: 2261, type: !640)
!3658 = !DILocalVariable(name: "n", arg: 3, scope: !3652, file: !3, line: 2262, type: !7)
!3659 = !DILocalVariable(name: "declp", arg: 4, scope: !3652, file: !3, line: 2262, type: !42)
!3660 = !DILocalVariable(name: "p", scope: !3652, file: !3, line: 2264, type: !37)
!3661 = !DILocalVariable(name: "args", scope: !3652, file: !3, line: 2265, type: !37)
!3662 = !DILocalVariable(name: "e", scope: !3652, file: !3, line: 2266, type: !37)
!3663 = !DILocalVariable(name: "arg", scope: !3652, file: !3, line: 2267, type: !43)
!3664 = !DILocalVariable(name: "start_spec_args", scope: !3665, file: !3, line: 2273, type: !34)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 2272, column: 5)
!3666 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 2271, column: 7)
!3667 = !DILocalVariable(name: "hold_options", scope: !3665, file: !3, line: 2274, type: !7)
!3668 = !DILocalVariable(name: "hold_options", scope: !3669, file: !3, line: 2345, type: !7)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 2344, column: 5)
!3670 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 2343, column: 12)
!3671 = !DILocalVariable(name: "type_str", scope: !3669, file: !3, line: 2346, type: !43)
!3672 = !DILocalVariable(name: "old_args", scope: !3673, file: !3, line: 2395, type: !37)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 2394, column: 13)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 2365, column: 4)
!3675 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 2360, column: 24)
!3676 = !DILabel(scope: !3665, name: "hpacc_template_args_done", file: !3, line: 2334)
!3677 = !DILabel(scope: !3669, name: "cfront_template_args_done", file: !3, line: 2410)
!3678 = !DILocation(line: 0, scope: !3652)
!3679 = !DILocation(line: 2264, column: 3, scope: !3652)
!3680 = !DILocation(line: 2265, column: 3, scope: !3652)
!3681 = !DILocation(line: 2266, column: 19, scope: !3652)
!3682 = !DILocation(line: 2266, column: 28, scope: !3652)
!3683 = !DILocation(line: 2267, column: 3, scope: !3652)
!3684 = !DILocation(line: 2271, column: 7, scope: !3666)
!3685 = !DILocation(line: 2271, column: 21, scope: !3666)
!3686 = !DILocation(line: 2271, column: 25, scope: !3666)
!3687 = !DILocation(line: 2271, column: 39, scope: !3666)
!3688 = !DILocation(line: 2271, column: 7, scope: !3652)
!3689 = !DILocation(line: 0, scope: !3665)
!3690 = !DILocation(line: 2278, column: 25, scope: !3665)
!3691 = !DILocation(line: 2279, column: 11, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 2279, column: 11)
!3693 = !DILocation(line: 2279, column: 27, scope: !3692)
!3694 = !DILocation(line: 2282, column: 32, scope: !3692)
!3695 = !DILocation(line: 2279, column: 49, scope: !3692)
!3696 = !DILocation(line: 2279, column: 47, scope: !3692)
!3697 = !DILocation(line: 2279, column: 58, scope: !3692)
!3698 = !DILocation(line: 2279, column: 11, scope: !3665)
!3699 = !DILocation(line: 2280, column: 42, scope: !3692)
!3700 = !DILocation(line: 2280, column: 9, scope: !3692)
!3701 = !DILocation(line: 2282, column: 9, scope: !3692)
!3702 = !DILocation(line: 2283, column: 23, scope: !3665)
!3703 = !DILocation(line: 2283, column: 18, scope: !3665)
!3704 = !DILocation(line: 2284, column: 7, scope: !3665)
!3705 = !DILocation(line: 2285, column: 17, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 2285, column: 11)
!3707 = !DILocation(line: 2285, column: 28, scope: !3706)
!3708 = !DILocation(line: 2285, column: 11, scope: !3665)
!3709 = !DILocation(line: 2286, column: 35, scope: !3706)
!3710 = !DILocation(line: 2286, column: 46, scope: !3706)
!3711 = !DILocation(line: 2286, column: 37, scope: !3706)
!3712 = !DILocation(line: 2286, column: 28, scope: !3706)
!3713 = !DILocation(line: 2286, column: 26, scope: !3706)
!3714 = !DILocation(line: 2286, column: 9, scope: !3706)
!3715 = !DILocation(line: 2290, column: 28, scope: !3665)
!3716 = !DILocation(line: 2291, column: 21, scope: !3665)
!3717 = !DILocation(line: 2293, column: 7, scope: !3665)
!3718 = !DILocation(line: 2294, column: 7, scope: !3665)
!3719 = !DILocation(line: 2296, column: 11, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 2295, column: 9)
!3721 = !DILocation(line: 2297, column: 20, scope: !3720)
!3722 = !DILocation(line: 2297, column: 19, scope: !3720)
!3723 = !DILocation(line: 2297, column: 11, scope: !3720)
!3724 = !DILocation(line: 2301, column: 27, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 2298, column: 13)
!3726 = !DILocation(line: 2302, column: 22, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 2302, column: 21)
!3728 = !DILocation(line: 2302, column: 21, scope: !3725)
!3729 = !DILocation(line: 2309, column: 22, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 2309, column: 21)
!3731 = !DILocation(line: 2309, column: 21, scope: !3725)
!3732 = !DILocation(line: 2315, column: 22, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 2315, column: 21)
!3734 = !DILocation(line: 2315, column: 21, scope: !3725)
!3735 = !DILocation(line: 2325, column: 11, scope: !3720)
!3736 = !DILocation(line: 2329, column: 17, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 2329, column: 15)
!3738 = !DILocation(line: 2329, column: 16, scope: !3737)
!3739 = !DILocation(line: 2329, column: 26, scope: !3737)
!3740 = !DILocation(line: 2329, column: 51, scope: !3737)
!3741 = !DILocation(line: 2329, column: 37, scope: !3737)
!3742 = !DILocation(line: 2332, column: 13, scope: !3737)
!3743 = distinct !{!3743, !3718, !3744}
!3744 = !DILocation(line: 2333, column: 9, scope: !3665)
!3745 = !DILocation(line: 2334, column: 5, scope: !3665)
!3746 = !DILocation(line: 2335, column: 7, scope: !3665)
!3747 = !DILocation(line: 2336, column: 7, scope: !3665)
!3748 = !DILocation(line: 2337, column: 12, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 2337, column: 11)
!3750 = !DILocation(line: 2337, column: 11, scope: !3749)
!3751 = !DILocation(line: 2337, column: 21, scope: !3749)
!3752 = !DILocation(line: 2337, column: 11, scope: !3665)
!3753 = !DILocation(line: 2338, column: 19, scope: !3749)
!3754 = !DILocation(line: 2338, column: 9, scope: !3749)
!3755 = !DILocation(line: 2339, column: 21, scope: !3665)
!3756 = !DILocation(line: 2343, column: 12, scope: !3670)
!3757 = !DILocation(line: 2343, column: 12, scope: !3666)
!3758 = !DILocation(line: 2346, column: 7, scope: !3669)
!3759 = !DILocation(line: 2348, column: 7, scope: !3669)
!3760 = !DILocation(line: 2349, column: 30, scope: !3669)
!3761 = !DILocation(line: 2349, column: 40, scope: !3669)
!3762 = !DILocation(line: 2349, column: 44, scope: !3669)
!3763 = !DILocation(line: 2349, column: 42, scope: !3669)
!3764 = !DILocation(line: 2349, column: 7, scope: !3669)
!3765 = !DILocation(line: 2350, column: 17, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 2350, column: 11)
!3767 = !DILocation(line: 2350, column: 28, scope: !3766)
!3768 = !DILocation(line: 2350, column: 11, scope: !3669)
!3769 = !DILocation(line: 2351, column: 28, scope: !3766)
!3770 = !DILocation(line: 2351, column: 39, scope: !3766)
!3771 = !DILocation(line: 2351, column: 30, scope: !3766)
!3772 = !DILocation(line: 2351, column: 21, scope: !3766)
!3773 = !DILocation(line: 2351, column: 19, scope: !3766)
!3774 = !DILocation(line: 2351, column: 2, scope: !3766)
!3775 = !DILocation(line: 2355, column: 28, scope: !3669)
!3776 = !DILocation(line: 0, scope: !3669)
!3777 = !DILocation(line: 2356, column: 21, scope: !3669)
!3778 = !DILocation(line: 2358, column: 7, scope: !3669)
!3779 = !DILocation(line: 2360, column: 7, scope: !3669)
!3780 = !DILocation(line: 2360, column: 14, scope: !3669)
!3781 = !DILocation(line: 2360, column: 19, scope: !3669)
!3782 = !DILocation(line: 2361, column: 2, scope: !3675)
!3783 = !DILocation(line: 2364, column: 11, scope: !3675)
!3784 = !DILocation(line: 2364, column: 10, scope: !3675)
!3785 = !DILocation(line: 2364, column: 2, scope: !3675)
!3786 = !DILocation(line: 2371, column: 17, scope: !3674)
!3787 = !DILocation(line: 2372, column: 18, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 2372, column: 17)
!3789 = !DILocation(line: 2372, column: 17, scope: !3674)
!3790 = !DILocation(line: 2374, column: 13, scope: !3674)
!3791 = !DILocation(line: 2375, column: 13, scope: !3674)
!3792 = !DILocation(line: 2376, column: 13, scope: !3674)
!3793 = !DILocation(line: 2377, column: 13, scope: !3674)
!3794 = !DILocation(line: 2378, column: 18, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 2378, column: 17)
!3796 = !DILocation(line: 2378, column: 17, scope: !3795)
!3797 = !DILocation(line: 2378, column: 23, scope: !3795)
!3798 = !DILocation(line: 2378, column: 17, scope: !3674)
!3799 = !DILocation(line: 2380, column: 17, scope: !3674)
!3800 = !DILocation(line: 2382, column: 18, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 2382, column: 17)
!3802 = !DILocation(line: 2382, column: 17, scope: !3674)
!3803 = !DILocation(line: 2388, column: 17, scope: !3674)
!3804 = !DILocation(line: 2389, column: 18, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 2389, column: 17)
!3806 = !DILocation(line: 2389, column: 17, scope: !3674)
!3807 = !DILocation(line: 0, scope: !3673)
!3808 = !DILocation(line: 2396, column: 20, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 2396, column: 19)
!3810 = !DILocation(line: 2396, column: 19, scope: !3673)
!3811 = !DILocation(line: 2400, column: 19, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 2400, column: 19)
!3813 = !DILocation(line: 2400, column: 24, scope: !3812)
!3814 = !DILocation(line: 2400, column: 19, scope: !3673)
!3815 = !DILocation(line: 2402, column: 19, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 2401, column: 3)
!3817 = !DILocation(line: 2403, column: 5, scope: !3816)
!3818 = !DILocation(line: 2407, column: 2, scope: !3675)
!3819 = !DILocation(line: 2408, column: 2, scope: !3675)
!3820 = distinct !{!3820, !3779, !3821}
!3821 = !DILocation(line: 2409, column: 7, scope: !3669)
!3822 = !DILocation(line: 2410, column: 5, scope: !3669)
!3823 = !DILocation(line: 2411, column: 7, scope: !3669)
!3824 = !DILocation(line: 2412, column: 11, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 2412, column: 11)
!3826 = !DILocation(line: 2412, column: 16, scope: !3825)
!3827 = !DILocation(line: 2412, column: 11, scope: !3669)
!3828 = !DILocation(line: 2413, column: 11, scope: !3825)
!3829 = !DILocation(line: 2413, column: 2, scope: !3825)
!3830 = !DILocation(line: 2414, column: 7, scope: !3669)
!3831 = !DILocation(line: 2415, column: 21, scope: !3669)
!3832 = !DILocation(line: 2416, column: 5, scope: !3670)
!3833 = !DILocation(line: 2417, column: 13, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 2417, column: 12)
!3835 = !DILocation(line: 2417, column: 17, scope: !3834)
!3836 = !DILocation(line: 2417, column: 29, scope: !3834)
!3837 = !DILocation(line: 2417, column: 20, scope: !3834)
!3838 = !DILocation(line: 2417, column: 54, scope: !3834)
!3839 = !DILocation(line: 2418, column: 5, scope: !3834)
!3840 = !DILocation(line: 2418, column: 9, scope: !3834)
!3841 = !DILocation(line: 2418, column: 8, scope: !3834)
!3842 = !DILocation(line: 2418, column: 22, scope: !3834)
!3843 = !DILocation(line: 2419, column: 5, scope: !3834)
!3844 = !DILocation(line: 2419, column: 8, scope: !3834)
!3845 = !DILocation(line: 2419, column: 25, scope: !3834)
!3846 = !DILocation(line: 2419, column: 22, scope: !3834)
!3847 = !DILocation(line: 2420, column: 5, scope: !3834)
!3848 = !DILocation(line: 2420, column: 31, scope: !3834)
!3849 = !DILocation(line: 2420, column: 8, scope: !3834)
!3850 = !DILocation(line: 2417, column: 12, scope: !3670)
!3851 = !DILocation(line: 2423, column: 7, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 2421, column: 5)
!3853 = !DILocation(line: 2424, column: 5, scope: !3852)
!3854 = !DILocation(line: 2427, column: 17, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 2427, column: 11)
!3856 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 2426, column: 5)
!3857 = !DILocation(line: 2427, column: 28, scope: !3855)
!3858 = !DILocation(line: 2427, column: 11, scope: !3856)
!3859 = !DILocation(line: 2428, column: 19, scope: !3855)
!3860 = !DILocation(line: 2428, column: 2, scope: !3855)
!3861 = !DILocation(line: 2429, column: 30, scope: !3856)
!3862 = !DILocation(line: 2429, column: 7, scope: !3856)
!3863 = !DILocation(line: 2431, column: 12, scope: !3652)
!3864 = !DILocation(line: 2432, column: 1, scope: !3652)
!3865 = distinct !DISubprogram(name: "arm_special", scope: !3, file: !3, line: 3103, type: !3866, scopeLine: 3104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!7, !640, !42}
!3868 = !{!3869, !3870, !3871, !3872, !3873}
!3869 = !DILocalVariable(name: "mangled", arg: 1, scope: !3865, file: !3, line: 3103, type: !640)
!3870 = !DILocalVariable(name: "declp", arg: 2, scope: !3865, file: !3, line: 3103, type: !42)
!3871 = !DILocalVariable(name: "n", scope: !3865, file: !3, line: 3105, type: !7)
!3872 = !DILocalVariable(name: "success", scope: !3865, file: !3, line: 3106, type: !7)
!3873 = !DILocalVariable(name: "scan", scope: !3865, file: !3, line: 3107, type: !37)
!3874 = !DILocation(line: 0, scope: !3865)
!3875 = !DILocation(line: 3107, column: 3, scope: !3865)
!3876 = !DILocation(line: 3109, column: 16, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 3109, column: 7)
!3878 = !DILocation(line: 3109, column: 7, scope: !3877)
!3879 = !DILocation(line: 3109, column: 64, scope: !3877)
!3880 = !DILocation(line: 3109, column: 7, scope: !3865)
!3881 = !DILocation(line: 3115, column: 14, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 3110, column: 5)
!3883 = !DILocation(line: 3115, column: 23, scope: !3882)
!3884 = !DILocation(line: 3115, column: 12, scope: !3882)
!3885 = !DILocation(line: 3116, column: 7, scope: !3882)
!3886 = !DILocation(line: 3116, column: 15, scope: !3882)
!3887 = !DILocation(line: 3116, column: 14, scope: !3882)
!3888 = !DILocation(line: 3116, column: 20, scope: !3882)
!3889 = !DILocation(line: 3118, column: 15, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 3117, column: 9)
!3891 = !DILocation(line: 3119, column: 17, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 3119, column: 15)
!3893 = !DILocation(line: 3119, column: 15, scope: !3890)
!3894 = !DILocation(line: 3123, column: 16, scope: !3890)
!3895 = !DILocation(line: 3124, column: 15, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 3124, column: 15)
!3897 = !DILocation(line: 3124, column: 23, scope: !3896)
!3898 = !DILocation(line: 3124, column: 30, scope: !3896)
!3899 = !DILocation(line: 3124, column: 33, scope: !3896)
!3900 = !DILocation(line: 3124, column: 41, scope: !3896)
!3901 = !DILocation(line: 3124, column: 15, scope: !3890)
!3902 = !DILocation(line: 3126, column: 13, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 3125, column: 6)
!3904 = !DILocation(line: 3127, column: 6, scope: !3903)
!3905 = distinct !{!3905, !3885, !3906}
!3906 = !DILocation(line: 3128, column: 9, scope: !3882)
!3907 = !DILocation(line: 3129, column: 18, scope: !3882)
!3908 = !DILocation(line: 3130, column: 7, scope: !3882)
!3909 = !DILocation(line: 3130, column: 15, scope: !3882)
!3910 = !DILocation(line: 3130, column: 14, scope: !3882)
!3911 = !DILocation(line: 3130, column: 24, scope: !3882)
!3912 = !DILocation(line: 3132, column: 8, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 3131, column: 2)
!3914 = !DILocation(line: 3133, column: 17, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 3133, column: 15)
!3916 = !DILocation(line: 3134, column: 8, scope: !3915)
!3917 = !DILocation(line: 3134, column: 11, scope: !3915)
!3918 = !DILocation(line: 3134, column: 30, scope: !3915)
!3919 = !DILocation(line: 3134, column: 22, scope: !3915)
!3920 = !DILocation(line: 3134, column: 13, scope: !3915)
!3921 = !DILocation(line: 3133, column: 15, scope: !3913)
!3922 = !DILocation(line: 3136, column: 28, scope: !3913)
!3923 = !DILocation(line: 3136, column: 4, scope: !3913)
!3924 = !DILocation(line: 3137, column: 15, scope: !3913)
!3925 = !DILocation(line: 3138, column: 8, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 3138, column: 8)
!3927 = !DILocation(line: 3138, column: 22, scope: !3926)
!3928 = !DILocation(line: 3138, column: 29, scope: !3926)
!3929 = !DILocation(line: 3138, column: 32, scope: !3926)
!3930 = !DILocation(line: 3138, column: 46, scope: !3926)
!3931 = !DILocation(line: 3138, column: 8, scope: !3913)
!3932 = !DILocation(line: 3140, column: 8, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 3139, column: 6)
!3934 = !DILocation(line: 3141, column: 19, scope: !3933)
!3935 = !DILocation(line: 3142, column: 6, scope: !3933)
!3936 = distinct !{!3936, !3908, !3937}
!3937 = !DILocation(line: 3143, column: 2, scope: !3882)
!3938 = !DILocation(line: 3144, column: 7, scope: !3882)
!3939 = !DILocation(line: 3145, column: 5, scope: !3882)
!3940 = !DILocation(line: 3151, column: 1, scope: !3865)
!3941 = distinct !DISubprogram(name: "iterate_demangle_function", scope: !3, file: !3, line: 2545, type: !3942, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!7, !639, !640, !42, !37}
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952}
!3945 = !DILocalVariable(name: "work", arg: 1, scope: !3941, file: !3, line: 2545, type: !639)
!3946 = !DILocalVariable(name: "mangled", arg: 2, scope: !3941, file: !3, line: 2545, type: !640)
!3947 = !DILocalVariable(name: "declp", arg: 3, scope: !3941, file: !3, line: 2546, type: !42)
!3948 = !DILocalVariable(name: "scan", arg: 4, scope: !3941, file: !3, line: 2546, type: !37)
!3949 = !DILocalVariable(name: "mangle_init", scope: !3941, file: !3, line: 2548, type: !37)
!3950 = !DILocalVariable(name: "success", scope: !3941, file: !3, line: 2549, type: !7)
!3951 = !DILocalVariable(name: "decl_init", scope: !3941, file: !3, line: 2550, type: !43)
!3952 = !DILocalVariable(name: "work_init", scope: !3941, file: !3, line: 2551, type: !389)
!3953 = !DILocation(line: 0, scope: !3941)
!3954 = !DILocation(line: 2548, column: 29, scope: !3941)
!3955 = !DILocation(line: 2550, column: 3, scope: !3941)
!3956 = !DILocation(line: 2551, column: 3, scope: !3941)
!3957 = !DILocation(line: 2553, column: 14, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 2553, column: 7)
!3959 = !DILocation(line: 2553, column: 7, scope: !3958)
!3960 = !DILocation(line: 2553, column: 19, scope: !3958)
!3961 = !DILocation(line: 2553, column: 7, scope: !3941)
!3962 = !DILocation(line: 2558, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 2558, column: 7)
!3964 = !DILocation(line: 2558, column: 22, scope: !3963)
!3965 = !DILocation(line: 2558, column: 25, scope: !3963)
!3966 = !DILocation(line: 2558, column: 42, scope: !3963)
!3967 = !DILocation(line: 2558, column: 45, scope: !3963)
!3968 = !DILocation(line: 2558, column: 59, scope: !3963)
!3969 = !DILocation(line: 2558, column: 62, scope: !3963)
!3970 = !DILocation(line: 2559, column: 7, scope: !3963)
!3971 = !DILocation(line: 2559, column: 10, scope: !3963)
!3972 = !DILocation(line: 2559, column: 34, scope: !3963)
!3973 = !DILocation(line: 2558, column: 7, scope: !3941)
!3974 = !DILocation(line: 2560, column: 12, scope: !3963)
!3975 = !DILocation(line: 2560, column: 5, scope: !3963)
!3976 = !DILocation(line: 2564, column: 3, scope: !3941)
!3977 = !DILocation(line: 2565, column: 3, scope: !3941)
!3978 = !DILocation(line: 2566, column: 3, scope: !3941)
!3979 = !DILocation(line: 2567, column: 3, scope: !3941)
!3980 = !DILocation(line: 2575, column: 3, scope: !3941)
!3981 = !DILocation(line: 2575, column: 10, scope: !3941)
!3982 = !DILocation(line: 2577, column: 11, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 2577, column: 11)
!3984 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 2576, column: 5)
!3985 = !DILocation(line: 2577, column: 11, scope: !3984)
!3986 = !DILocation(line: 2579, column: 14, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 2578, column: 2)
!3988 = !DILocation(line: 2580, column: 8, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 2580, column: 8)
!3990 = !DILocation(line: 2580, column: 8, scope: !3987)
!3991 = !DILocation(line: 2585, column: 16, scope: !3984)
!3992 = !DILocation(line: 2586, column: 7, scope: !3984)
!3993 = !DILocation(line: 2587, column: 7, scope: !3984)
!3994 = !DILocation(line: 2588, column: 7, scope: !3984)
!3995 = !DILocation(line: 2594, column: 7, scope: !3984)
!3996 = !DILocation(line: 0, scope: !3984)
!3997 = !DILocation(line: 2594, column: 14, scope: !3984)
!3998 = !DILocation(line: 2594, column: 20, scope: !3984)
!3999 = !DILocation(line: 2594, column: 32, scope: !3984)
!4000 = !DILocation(line: 2594, column: 39, scope: !3984)
!4001 = !DILocation(line: 2594, column: 42, scope: !3984)
!4002 = !DILocation(line: 2594, column: 50, scope: !3984)
!4003 = !DILocation(line: 2595, column: 6, scope: !3984)
!4004 = distinct !{!4004, !3995, !4003}
!4005 = !DILocation(line: 2598, column: 7, scope: !3984)
!4006 = !DILocation(line: 2598, column: 14, scope: !3984)
!4007 = !DILocation(line: 2598, column: 29, scope: !3984)
!4008 = !DILocation(line: 2598, column: 20, scope: !3984)
!4009 = !DILocation(line: 2599, column: 6, scope: !3984)
!4010 = distinct !{!4010, !4005, !4009}
!4011 = !DILocation(line: 2600, column: 12, scope: !3984)
!4012 = distinct !{!4012, !3980, !4013}
!4013 = !DILocation(line: 2601, column: 5, scope: !3941)
!4014 = !DILocation(line: 2604, column: 3, scope: !3941)
!4015 = !DILocation(line: 2605, column: 3, scope: !3941)
!4016 = !DILocation(line: 2607, column: 3, scope: !3941)
!4017 = !DILocation(line: 2608, column: 1, scope: !3941)
!4018 = distinct !DISubprogram(name: "do_hpacc_template_const_value", scope: !3, file: !3, line: 3954, type: !637, scopeLine: 3956, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4019)
!4019 = !{!4020, !4021, !4022, !4023}
!4020 = !DILocalVariable(name: "work", arg: 1, scope: !4018, file: !3, line: 3954, type: !639)
!4021 = !DILocalVariable(name: "mangled", arg: 2, scope: !4018, file: !3, line: 3955, type: !640)
!4022 = !DILocalVariable(name: "result", arg: 3, scope: !4018, file: !3, line: 3955, type: !42)
!4023 = !DILocalVariable(name: "unsigned_const", scope: !4018, file: !3, line: 3957, type: !7)
!4024 = !DILocation(line: 0, scope: !4018)
!4025 = !DILocation(line: 3959, column: 8, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 3959, column: 7)
!4027 = !DILocation(line: 3959, column: 7, scope: !4026)
!4028 = !DILocation(line: 3959, column: 17, scope: !4026)
!4029 = !DILocation(line: 3959, column: 24, scope: !4026)
!4030 = !DILocation(line: 3959, column: 37, scope: !4026)
!4031 = !DILocation(line: 3959, column: 7, scope: !4018)
!4032 = !DILocation(line: 3964, column: 13, scope: !4018)
!4033 = !DILocation(line: 3966, column: 11, scope: !4018)
!4034 = !DILocation(line: 3966, column: 3, scope: !4018)
!4035 = !DILocation(line: 3969, column: 9, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 3967, column: 5)
!4037 = !DILocation(line: 3972, column: 19, scope: !4036)
!4038 = !DILocation(line: 3984, column: 9, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 3984, column: 7)
!4040 = !DILocation(line: 3984, column: 7, scope: !4018)
!4041 = !DILocation(line: 3989, column: 3, scope: !4018)
!4042 = !DILocation(line: 3976, column: 9, scope: !4036)
!4043 = !DILocation(line: 3977, column: 19, scope: !4036)
!4044 = !DILocation(line: 3978, column: 9, scope: !4036)
!4045 = !DILocation(line: 3989, column: 10, scope: !4018)
!4046 = !DILocation(line: 3991, column: 19, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 3990, column: 5)
!4048 = !DILocation(line: 3992, column: 7, scope: !4047)
!4049 = !DILocation(line: 3993, column: 17, scope: !4047)
!4050 = distinct !{!4050, !4041, !4051}
!4051 = !DILocation(line: 3994, column: 5, scope: !4018)
!4052 = !DILocation(line: 3996, column: 7, scope: !4018)
!4053 = !DILocation(line: 3997, column: 5, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 3996, column: 7)
!4055 = !DILocation(line: 4003, column: 1, scope: !4018)
!4056 = distinct !DISubprogram(name: "do_hpacc_template_literal", scope: !3, file: !3, line: 4009, type: !637, scopeLine: 4011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4057)
!4057 = !{!4058, !4059, !4060, !4061, !4062, !4063}
!4058 = !DILocalVariable(name: "work", arg: 1, scope: !4056, file: !3, line: 4009, type: !639)
!4059 = !DILocalVariable(name: "mangled", arg: 2, scope: !4056, file: !3, line: 4009, type: !640)
!4060 = !DILocalVariable(name: "result", arg: 3, scope: !4056, file: !3, line: 4010, type: !42)
!4061 = !DILocalVariable(name: "literal_len", scope: !4056, file: !3, line: 4012, type: !7)
!4062 = !DILocalVariable(name: "recurse", scope: !4056, file: !3, line: 4013, type: !34)
!4063 = !DILocalVariable(name: "recurse_dem", scope: !4056, file: !3, line: 4014, type: !34)
!4064 = !DILocation(line: 0, scope: !4056)
!4065 = !DILocation(line: 4016, column: 8, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 4016, column: 7)
!4067 = !DILocation(line: 4016, column: 7, scope: !4066)
!4068 = !DILocation(line: 4016, column: 17, scope: !4066)
!4069 = !DILocation(line: 4016, column: 7, scope: !4056)
!4070 = !DILocation(line: 4019, column: 13, scope: !4056)
!4071 = !DILocation(line: 4021, column: 17, scope: !4056)
!4072 = !DILocation(line: 4023, column: 19, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 4023, column: 7)
!4074 = !DILocation(line: 4023, column: 7, scope: !4056)
!4075 = !DILocation(line: 4028, column: 3, scope: !4056)
!4076 = !DILocation(line: 4031, column: 13, scope: !4056)
!4077 = !DILocation(line: 4032, column: 20, scope: !4056)
!4078 = !DILocation(line: 4032, column: 30, scope: !4056)
!4079 = !DILocation(line: 4032, column: 3, scope: !4056)
!4080 = !DILocation(line: 4033, column: 3, scope: !4056)
!4081 = !DILocation(line: 4033, column: 24, scope: !4056)
!4082 = !DILocation(line: 4035, column: 48, scope: !4056)
!4083 = !DILocation(line: 4035, column: 17, scope: !4056)
!4084 = !DILocation(line: 4037, column: 7, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 4037, column: 7)
!4086 = !DILocation(line: 4037, column: 7, scope: !4056)
!4087 = !DILocation(line: 4039, column: 7, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 4038, column: 5)
!4089 = !DILocation(line: 4040, column: 7, scope: !4088)
!4090 = !DILocation(line: 4041, column: 5, scope: !4088)
!4091 = !DILocation(line: 4044, column: 31, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 4043, column: 5)
!4093 = !DILocation(line: 4044, column: 7, scope: !4092)
!4094 = !DILocation(line: 4046, column: 14, scope: !4056)
!4095 = !DILocation(line: 4047, column: 3, scope: !4056)
!4096 = !DILocation(line: 4049, column: 3, scope: !4056)
!4097 = !DILocation(line: 4050, column: 1, scope: !4056)
!4098 = distinct !DISubprogram(name: "arm_pt", scope: !3, file: !3, line: 2207, type: !4099, scopeLine: 2209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!7, !639, !37, !7, !640, !640}
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107, !4110, !4115}
!4102 = !DILocalVariable(name: "work", arg: 1, scope: !4098, file: !3, line: 2207, type: !639)
!4103 = !DILocalVariable(name: "mangled", arg: 2, scope: !4098, file: !3, line: 2207, type: !37)
!4104 = !DILocalVariable(name: "n", arg: 3, scope: !4098, file: !3, line: 2208, type: !7)
!4105 = !DILocalVariable(name: "anchor", arg: 4, scope: !4098, file: !3, line: 2208, type: !640)
!4106 = !DILocalVariable(name: "args", arg: 5, scope: !4098, file: !3, line: 2208, type: !640)
!4107 = !DILocalVariable(name: "len", scope: !4108, file: !3, line: 2214, type: !7)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 2213, column: 5)
!4109 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 2212, column: 7)
!4110 = !DILocalVariable(name: "len", scope: !4111, file: !3, line: 2231, type: !7)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 2230, column: 9)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 2227, column: 11)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 2226, column: 5)
!4114 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 2225, column: 7)
!4115 = !DILocalVariable(name: "len", scope: !4116, file: !3, line: 2244, type: !7)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 2243, column: 9)
!4117 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 2242, column: 16)
!4118 = !DILocation(line: 0, scope: !4098)
!4119 = !DILocation(line: 2212, column: 8, scope: !4109)
!4120 = !DILocation(line: 2212, column: 23, scope: !4109)
!4121 = !DILocation(line: 2212, column: 26, scope: !4109)
!4122 = !DILocation(line: 2212, column: 41, scope: !4109)
!4123 = !DILocation(line: 2212, column: 55, scope: !4109)
!4124 = !DILocation(line: 2212, column: 53, scope: !4109)
!4125 = !DILocation(line: 2212, column: 7, scope: !4098)
!4126 = !DILocation(line: 2215, column: 23, scope: !4108)
!4127 = !DILocation(line: 2215, column: 13, scope: !4108)
!4128 = !DILocation(line: 2216, column: 13, scope: !4108)
!4129 = !DILocation(line: 0, scope: !4108)
!4130 = !DILocation(line: 2217, column: 15, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 2217, column: 11)
!4132 = !DILocation(line: 2217, column: 11, scope: !4108)
!4133 = !DILocation(line: 2219, column: 11, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 2219, column: 11)
!4135 = !DILocation(line: 2219, column: 17, scope: !4134)
!4136 = !DILocation(line: 2219, column: 34, scope: !4134)
!4137 = !DILocation(line: 2219, column: 23, scope: !4134)
!4138 = !DILocation(line: 2219, column: 38, scope: !4134)
!4139 = !DILocation(line: 2219, column: 41, scope: !4134)
!4140 = !DILocation(line: 2219, column: 48, scope: !4134)
!4141 = !DILocation(line: 2219, column: 11, scope: !4108)
!4142 = !DILocation(line: 2221, column: 4, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 2220, column: 2)
!4144 = !DILocation(line: 2222, column: 4, scope: !4143)
!4145 = !DILocation(line: 2225, column: 7, scope: !4114)
!4146 = !DILocation(line: 2225, column: 23, scope: !4114)
!4147 = !DILocation(line: 2225, column: 26, scope: !4114)
!4148 = !DILocation(line: 2225, column: 7, scope: !4098)
!4149 = !DILocation(line: 2227, column: 22, scope: !4112)
!4150 = !DILocation(line: 2227, column: 20, scope: !4112)
!4151 = !DILocation(line: 2228, column: 11, scope: !4112)
!4152 = !DILocation(line: 2228, column: 25, scope: !4112)
!4153 = !DILocation(line: 2228, column: 23, scope: !4112)
!4154 = !DILocation(line: 2229, column: 11, scope: !4112)
!4155 = !DILocation(line: 2229, column: 25, scope: !4112)
!4156 = !DILocation(line: 2229, column: 23, scope: !4112)
!4157 = !DILocation(line: 2227, column: 11, scope: !4113)
!4158 = !DILocation(line: 2232, column: 19, scope: !4111)
!4159 = !DILocation(line: 2232, column: 27, scope: !4111)
!4160 = !DILocation(line: 2232, column: 17, scope: !4111)
!4161 = !DILocation(line: 2233, column: 17, scope: !4111)
!4162 = !DILocation(line: 0, scope: !4111)
!4163 = !DILocation(line: 2234, column: 12, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 2234, column: 8)
!4165 = !DILocation(line: 2234, column: 8, scope: !4111)
!4166 = !DILocation(line: 2236, column: 15, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 2236, column: 15)
!4168 = !DILocation(line: 2236, column: 21, scope: !4167)
!4169 = !DILocation(line: 2236, column: 38, scope: !4167)
!4170 = !DILocation(line: 2236, column: 27, scope: !4167)
!4171 = !DILocation(line: 2236, column: 42, scope: !4167)
!4172 = !DILocation(line: 2236, column: 45, scope: !4167)
!4173 = !DILocation(line: 2236, column: 52, scope: !4167)
!4174 = !DILocation(line: 2236, column: 15, scope: !4111)
!4175 = !DILocation(line: 2238, column: 15, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 2237, column: 13)
!4177 = !DILocation(line: 2239, column: 15, scope: !4176)
!4178 = !DILocation(line: 2242, column: 27, scope: !4117)
!4179 = !DILocation(line: 2242, column: 25, scope: !4117)
!4180 = !DILocation(line: 2242, column: 16, scope: !4112)
!4181 = !DILocation(line: 2245, column: 21, scope: !4116)
!4182 = !DILocation(line: 2245, column: 11, scope: !4116)
!4183 = !DILocation(line: 2246, column: 11, scope: !4116)
!4184 = !DILocation(line: 0, scope: !4116)
!4185 = !DILocation(line: 2247, column: 12, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 2247, column: 8)
!4187 = !DILocation(line: 2247, column: 8, scope: !4116)
!4188 = !DILocation(line: 2249, column: 9, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 2249, column: 9)
!4190 = !DILocation(line: 2249, column: 15, scope: !4189)
!4191 = !DILocation(line: 2249, column: 32, scope: !4189)
!4192 = !DILocation(line: 2249, column: 21, scope: !4189)
!4193 = !DILocation(line: 2249, column: 36, scope: !4189)
!4194 = !DILocation(line: 2249, column: 39, scope: !4189)
!4195 = !DILocation(line: 2249, column: 46, scope: !4189)
!4196 = !DILocation(line: 2249, column: 9, scope: !4116)
!4197 = !DILocation(line: 2251, column: 15, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 2250, column: 13)
!4199 = !DILocation(line: 2252, column: 9, scope: !4198)
!4200 = !DILocation(line: 2257, column: 3, scope: !4098)
!4201 = !DILocation(line: 2258, column: 1, scope: !4098)
!4202 = distinct !DISubprogram(name: "snarf_numeric_literal", scope: !3, file: !3, line: 4053, type: !3866, scopeLine: 4054, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4203)
!4203 = !{!4204, !4205}
!4204 = !DILocalVariable(name: "args", arg: 1, scope: !4202, file: !3, line: 4053, type: !640)
!4205 = !DILocalVariable(name: "arg", arg: 2, scope: !4202, file: !3, line: 4053, type: !42)
!4206 = !DILocation(line: 0, scope: !4202)
!4207 = !DILocation(line: 4055, column: 8, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 4055, column: 7)
!4209 = !DILocation(line: 4055, column: 7, scope: !4208)
!4210 = !DILocation(line: 4055, column: 14, scope: !4208)
!4211 = !DILocation(line: 4055, column: 7, scope: !4202)
!4212 = !DILocation(line: 4057, column: 19, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 4056, column: 5)
!4214 = !DILocation(line: 4058, column: 7, scope: !4213)
!4215 = !DILocation(line: 4059, column: 14, scope: !4213)
!4216 = !DILocation(line: 4060, column: 5, scope: !4213)
!4217 = !DILocation(line: 4061, column: 19, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 4061, column: 12)
!4219 = !DILocation(line: 4061, column: 12, scope: !4208)
!4220 = !DILocation(line: 4062, column: 12, scope: !4218)
!4221 = !DILocation(line: 4062, column: 5, scope: !4218)
!4222 = !DILocation(line: 4064, column: 8, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 4064, column: 7)
!4224 = !DILocation(line: 4064, column: 7, scope: !4202)
!4225 = !DILocation(line: 4067, column: 3, scope: !4202)
!4226 = !DILocation(line: 4067, column: 10, scope: !4202)
!4227 = !DILocation(line: 4069, column: 19, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 4068, column: 5)
!4229 = !DILocation(line: 4070, column: 7, scope: !4228)
!4230 = !DILocation(line: 4071, column: 14, scope: !4228)
!4231 = distinct !{!4231, !4225, !4232}
!4232 = !DILocation(line: 4072, column: 5, scope: !4202)
!4233 = !DILocation(line: 4075, column: 1, scope: !4202)
!4234 = distinct !DISubprogram(name: "demangle_function_name", scope: !3, file: !3, line: 4490, type: !3942, scopeLine: 4492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4235)
!4235 = !{!4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4251}
!4236 = !DILocalVariable(name: "work", arg: 1, scope: !4234, file: !3, line: 4490, type: !639)
!4237 = !DILocalVariable(name: "mangled", arg: 2, scope: !4234, file: !3, line: 4490, type: !640)
!4238 = !DILocalVariable(name: "declp", arg: 3, scope: !4234, file: !3, line: 4491, type: !42)
!4239 = !DILocalVariable(name: "scan", arg: 4, scope: !4234, file: !3, line: 4491, type: !37)
!4240 = !DILocalVariable(name: "i", scope: !4234, file: !3, line: 4493, type: !215)
!4241 = !DILocalVariable(name: "type", scope: !4234, file: !3, line: 4494, type: !43)
!4242 = !DILocalVariable(name: "tem", scope: !4234, file: !3, line: 4495, type: !37)
!4243 = !DILocalVariable(name: "len", scope: !4244, file: !3, line: 4550, type: !7)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 4549, column: 6)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 4548, column: 4)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 4548, column: 4)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 4547, column: 2)
!4248 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 4545, column: 11)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 4543, column: 5)
!4250 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 4539, column: 7)
!4251 = !DILocalVariable(name: "len", scope: !4252, file: !3, line: 4566, type: !7)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 4565, column: 6)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 4564, column: 4)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 4564, column: 4)
!4255 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 4563, column: 2)
!4256 = !DILocation(line: 0, scope: !4234)
!4257 = !DILocation(line: 4494, column: 3, scope: !4234)
!4258 = !DILocation(line: 4495, column: 3, scope: !4234)
!4259 = !DILocation(line: 4497, column: 27, scope: !4234)
!4260 = !DILocation(line: 4497, column: 46, scope: !4234)
!4261 = !DILocation(line: 4497, column: 43, scope: !4234)
!4262 = !DILocation(line: 4497, column: 38, scope: !4234)
!4263 = !DILocation(line: 4497, column: 3, scope: !4234)
!4264 = !DILocation(line: 4498, column: 3, scope: !4234)
!4265 = !DILocation(line: 4499, column: 14, scope: !4234)
!4266 = !DILocation(line: 4499, column: 17, scope: !4234)
!4267 = !DILocation(line: 4505, column: 21, scope: !4234)
!4268 = !DILocation(line: 4505, column: 14, scope: !4234)
!4269 = !DILocation(line: 4511, column: 7, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 4511, column: 7)
!4271 = !DILocation(line: 4511, column: 21, scope: !4270)
!4272 = !DILocation(line: 4511, column: 25, scope: !4270)
!4273 = !DILocation(line: 4511, column: 35, scope: !4270)
!4274 = !DILocation(line: 4511, column: 7, scope: !4234)
!4275 = !DILocation(line: 4513, column: 7, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 4512, column: 5)
!4277 = !DILocation(line: 4517, column: 7, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 4517, column: 7)
!4279 = !DILocation(line: 4515, column: 5, scope: !4276)
!4280 = !DILocation(line: 4517, column: 24, scope: !4278)
!4281 = !DILocation(line: 4517, column: 27, scope: !4278)
!4282 = !DILocation(line: 4517, column: 42, scope: !4278)
!4283 = !DILocation(line: 4517, column: 45, scope: !4278)
!4284 = !DILocation(line: 4517, column: 59, scope: !4278)
!4285 = !DILocation(line: 4517, column: 62, scope: !4278)
!4286 = !DILocation(line: 4517, column: 7, scope: !4234)
!4287 = !DILocation(line: 4525, column: 28, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 4525, column: 11)
!4289 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 4518, column: 5)
!4290 = !DILocation(line: 4525, column: 11, scope: !4288)
!4291 = !DILocation(line: 4525, column: 39, scope: !4288)
!4292 = !DILocation(line: 4525, column: 11, scope: !4289)
!4293 = !DILocation(line: 4527, column: 12, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 4526, column: 2)
!4295 = !DILocation(line: 4527, column: 24, scope: !4294)
!4296 = !DILocation(line: 4528, column: 4, scope: !4294)
!4297 = !DILocation(line: 4529, column: 4, scope: !4294)
!4298 = !DILocation(line: 4531, column: 33, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 4531, column: 16)
!4300 = !DILocation(line: 4531, column: 16, scope: !4299)
!4301 = !DILocation(line: 4531, column: 44, scope: !4299)
!4302 = !DILocation(line: 4531, column: 16, scope: !4288)
!4303 = !DILocation(line: 4533, column: 12, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 4532, column: 2)
!4305 = !DILocation(line: 4533, column: 23, scope: !4304)
!4306 = !DILocation(line: 4534, column: 4, scope: !4304)
!4307 = !DILocation(line: 4535, column: 4, scope: !4304)
!4308 = !DILocation(line: 4539, column: 14, scope: !4250)
!4309 = !DILocation(line: 4539, column: 25, scope: !4250)
!4310 = !DILocation(line: 4539, column: 16, scope: !4250)
!4311 = !DILocation(line: 4539, column: 27, scope: !4250)
!4312 = !DILocation(line: 4540, column: 7, scope: !4250)
!4313 = !DILocation(line: 4540, column: 17, scope: !4250)
!4314 = !DILocation(line: 4540, column: 10, scope: !4250)
!4315 = !DILocation(line: 4540, column: 22, scope: !4250)
!4316 = !DILocation(line: 4541, column: 7, scope: !4250)
!4317 = !DILocation(line: 4541, column: 10, scope: !4250)
!4318 = !DILocation(line: 4541, column: 22, scope: !4250)
!4319 = !DILocation(line: 4542, column: 7, scope: !4250)
!4320 = !DILocation(line: 4542, column: 33, scope: !4250)
!4321 = !DILocation(line: 4542, column: 10, scope: !4250)
!4322 = !DILocation(line: 4542, column: 46, scope: !4250)
!4323 = !DILocation(line: 4539, column: 7, scope: !4234)
!4324 = !DILocation(line: 4578, column: 19, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 4578, column: 12)
!4326 = !DILocation(line: 4578, column: 30, scope: !4325)
!4327 = !DILocation(line: 4578, column: 21, scope: !4325)
!4328 = !DILocation(line: 4545, column: 18, scope: !4248)
!4329 = !DILocation(line: 4545, column: 29, scope: !4248)
!4330 = !DILocation(line: 4545, column: 20, scope: !4248)
!4331 = !DILocation(line: 4545, column: 31, scope: !4248)
!4332 = !DILocation(line: 4546, column: 4, scope: !4248)
!4333 = !DILocation(line: 4546, column: 24, scope: !4248)
!4334 = !DILocation(line: 4546, column: 7, scope: !4248)
!4335 = !DILocation(line: 4546, column: 43, scope: !4248)
!4336 = !DILocation(line: 4545, column: 11, scope: !4249)
!4337 = !DILocation(line: 4548, column: 4, scope: !4246)
!4338 = !DILocation(line: 0, scope: !4246)
!4339 = !DILocation(line: 4548, column: 18, scope: !4245)
!4340 = !DILocation(line: 4550, column: 25, scope: !4244)
!4341 = !DILocation(line: 4550, column: 36, scope: !4244)
!4342 = !DILocation(line: 4550, column: 27, scope: !4244)
!4343 = !DILocation(line: 4550, column: 18, scope: !4244)
!4344 = !DILocation(line: 0, scope: !4244)
!4345 = !DILocation(line: 4551, column: 37, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 4551, column: 12)
!4347 = !DILocation(line: 4551, column: 18, scope: !4346)
!4348 = !DILocation(line: 4551, column: 12, scope: !4346)
!4349 = !DILocation(line: 4551, column: 41, scope: !4346)
!4350 = !DILocation(line: 4552, column: 5, scope: !4346)
!4351 = !DILocation(line: 4552, column: 38, scope: !4346)
!4352 = !DILocation(line: 4552, column: 40, scope: !4346)
!4353 = !DILocation(line: 4552, column: 46, scope: !4346)
!4354 = !DILocation(line: 4552, column: 8, scope: !4346)
!4355 = !DILocation(line: 4552, column: 51, scope: !4346)
!4356 = !DILocation(line: 4551, column: 12, scope: !4244)
!4357 = !DILocation(line: 4554, column: 5, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 4553, column: 3)
!4359 = !DILocation(line: 4555, column: 5, scope: !4358)
!4360 = !DILocation(line: 4556, column: 38, scope: !4358)
!4361 = !DILocation(line: 4556, column: 5, scope: !4358)
!4362 = !DILocation(line: 4557, column: 5, scope: !4358)
!4363 = !DILocation(line: 4558, column: 5, scope: !4358)
!4364 = !DILocation(line: 4548, column: 43, scope: !4245)
!4365 = !DILocation(line: 4548, column: 4, scope: !4245)
!4366 = distinct !{!4366, !4337, !4367}
!4367 = !DILocation(line: 4560, column: 6, scope: !4246)
!4368 = !DILocation(line: 4564, column: 9, scope: !4254)
!4369 = !DILocation(line: 0, scope: !4254)
!4370 = !DILocation(line: 4564, column: 18, scope: !4253)
!4371 = !DILocation(line: 4564, column: 4, scope: !4254)
!4372 = !DILocation(line: 4566, column: 25, scope: !4252)
!4373 = !DILocation(line: 4566, column: 36, scope: !4252)
!4374 = !DILocation(line: 4566, column: 27, scope: !4252)
!4375 = !DILocation(line: 4566, column: 18, scope: !4252)
!4376 = !DILocation(line: 0, scope: !4252)
!4377 = !DILocation(line: 4567, column: 37, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 4567, column: 12)
!4379 = !DILocation(line: 4567, column: 18, scope: !4378)
!4380 = !DILocation(line: 4567, column: 12, scope: !4378)
!4381 = !DILocation(line: 4567, column: 41, scope: !4378)
!4382 = !DILocation(line: 4568, column: 5, scope: !4378)
!4383 = !DILocation(line: 4568, column: 38, scope: !4378)
!4384 = !DILocation(line: 4568, column: 40, scope: !4378)
!4385 = !DILocation(line: 4568, column: 45, scope: !4378)
!4386 = !DILocation(line: 4568, column: 8, scope: !4378)
!4387 = !DILocation(line: 4568, column: 50, scope: !4378)
!4388 = !DILocation(line: 4567, column: 12, scope: !4252)
!4389 = !DILocation(line: 4570, column: 5, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 4569, column: 3)
!4391 = !DILocation(line: 4571, column: 5, scope: !4390)
!4392 = !DILocation(line: 4572, column: 38, scope: !4390)
!4393 = !DILocation(line: 4572, column: 5, scope: !4390)
!4394 = !DILocation(line: 4573, column: 5, scope: !4390)
!4395 = !DILocation(line: 4564, column: 43, scope: !4253)
!4396 = !DILocation(line: 4564, column: 4, scope: !4253)
!4397 = distinct !{!4397, !4371, !4398}
!4398 = !DILocation(line: 4575, column: 6, scope: !4254)
!4399 = !DILocation(line: 4578, column: 32, scope: !4325)
!4400 = !DILocation(line: 4578, column: 37, scope: !4325)
!4401 = !DILocation(line: 4578, column: 55, scope: !4325)
!4402 = !DILocation(line: 4578, column: 40, scope: !4325)
!4403 = !DILocation(line: 4578, column: 69, scope: !4325)
!4404 = !DILocation(line: 4579, column: 5, scope: !4325)
!4405 = !DILocation(line: 4579, column: 38, scope: !4325)
!4406 = !DILocation(line: 4579, column: 31, scope: !4325)
!4407 = !DILocation(line: 4579, column: 8, scope: !4325)
!4408 = !DILocation(line: 4579, column: 44, scope: !4325)
!4409 = !DILocation(line: 4578, column: 12, scope: !4250)
!4410 = !DILocation(line: 4582, column: 20, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 4580, column: 5)
!4412 = !DILocation(line: 4582, column: 22, scope: !4411)
!4413 = !DILocation(line: 4582, column: 11, scope: !4411)
!4414 = !DILocation(line: 4583, column: 11, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 4583, column: 11)
!4416 = !DILocation(line: 4583, column: 11, scope: !4411)
!4417 = !DILocation(line: 4585, column: 4, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 4584, column: 2)
!4419 = !DILocation(line: 4586, column: 4, scope: !4418)
!4420 = !DILocation(line: 4587, column: 4, scope: !4418)
!4421 = !DILocation(line: 4588, column: 4, scope: !4418)
!4422 = !DILocation(line: 4589, column: 2, scope: !4418)
!4423 = !DILocation(line: 4591, column: 19, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 4591, column: 12)
!4425 = !DILocation(line: 4591, column: 12, scope: !4424)
!4426 = !DILocation(line: 4591, column: 24, scope: !4424)
!4427 = !DILocation(line: 4591, column: 31, scope: !4424)
!4428 = !DILocation(line: 4591, column: 34, scope: !4424)
!4429 = !DILocation(line: 4591, column: 46, scope: !4424)
!4430 = !DILocation(line: 4592, column: 5, scope: !4424)
!4431 = !DILocation(line: 4592, column: 8, scope: !4424)
!4432 = !DILocation(line: 4592, column: 20, scope: !4424)
!4433 = !DILocation(line: 4592, column: 27, scope: !4424)
!4434 = !DILocation(line: 4592, column: 30, scope: !4424)
!4435 = !DILocation(line: 4592, column: 42, scope: !4424)
!4436 = !DILocation(line: 4591, column: 12, scope: !4325)
!4437 = !DILocation(line: 4596, column: 22, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 4593, column: 5)
!4439 = !DILocation(line: 4596, column: 11, scope: !4438)
!4440 = !DILocation(line: 4597, column: 11, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 4597, column: 11)
!4442 = !DILocation(line: 4597, column: 11, scope: !4438)
!4443 = !DILocation(line: 4599, column: 4, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 4598, column: 2)
!4445 = !DILocation(line: 4600, column: 4, scope: !4444)
!4446 = !DILocation(line: 4601, column: 4, scope: !4444)
!4447 = !DILocation(line: 4602, column: 4, scope: !4444)
!4448 = !DILocation(line: 4603, column: 2, scope: !4444)
!4449 = !DILocation(line: 4605, column: 31, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 4605, column: 12)
!4451 = !DILocation(line: 4605, column: 34, scope: !4450)
!4452 = !DILocation(line: 4605, column: 46, scope: !4450)
!4453 = !DILocation(line: 4606, column: 5, scope: !4450)
!4454 = !DILocation(line: 4606, column: 8, scope: !4450)
!4455 = !DILocation(line: 4607, column: 5, scope: !4450)
!4456 = !DILocation(line: 4607, column: 8, scope: !4450)
!4457 = !DILocation(line: 4605, column: 12, scope: !4424)
!4458 = !DILocation(line: 4609, column: 11, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 4609, column: 11)
!4460 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 4608, column: 5)
!4461 = !DILocation(line: 4609, column: 23, scope: !4459)
!4462 = !DILocation(line: 4609, column: 11, scope: !4460)
!4463 = !DILocation(line: 4612, column: 4, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 4612, column: 4)
!4465 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 4610, column: 2)
!4466 = !DILocation(line: 0, scope: !4464)
!4467 = !DILocation(line: 4612, column: 18, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 4612, column: 4)
!4469 = !DILocation(line: 4614, column: 31, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 4614, column: 12)
!4471 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 4613, column: 6)
!4472 = !DILocation(line: 4614, column: 12, scope: !4470)
!4473 = !DILocation(line: 4614, column: 35, scope: !4470)
!4474 = !DILocation(line: 4615, column: 5, scope: !4470)
!4475 = !DILocation(line: 4615, column: 38, scope: !4470)
!4476 = !DILocation(line: 4615, column: 40, scope: !4470)
!4477 = !DILocation(line: 4615, column: 8, scope: !4470)
!4478 = !DILocation(line: 4615, column: 48, scope: !4470)
!4479 = !DILocation(line: 4614, column: 12, scope: !4471)
!4480 = !DILocation(line: 4617, column: 5, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 4616, column: 3)
!4482 = !DILocation(line: 4618, column: 5, scope: !4481)
!4483 = !DILocation(line: 4619, column: 38, scope: !4481)
!4484 = !DILocation(line: 4619, column: 5, scope: !4481)
!4485 = !DILocation(line: 4620, column: 5, scope: !4481)
!4486 = !DILocation(line: 4612, column: 43, scope: !4468)
!4487 = !DILocation(line: 4612, column: 4, scope: !4468)
!4488 = distinct !{!4488, !4463, !4489}
!4489 = !DILocation(line: 4622, column: 6, scope: !4464)
!4490 = !DILocation(line: 4626, column: 20, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 4626, column: 8)
!4492 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 4625, column: 2)
!4493 = !DILocation(line: 4626, column: 27, scope: !4491)
!4494 = !DILocation(line: 4626, column: 30, scope: !4491)
!4495 = !DILocation(line: 4626, column: 42, scope: !4491)
!4496 = !DILocation(line: 4626, column: 8, scope: !4492)
!4497 = !DILocation(line: 4629, column: 8, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 4629, column: 8)
!4499 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 4627, column: 6)
!4500 = !DILocation(line: 0, scope: !4498)
!4501 = !DILocation(line: 4629, column: 22, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 4629, column: 8)
!4503 = !DILocation(line: 4631, column: 28, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 4631, column: 9)
!4505 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 4630, column: 3)
!4506 = !DILocation(line: 4631, column: 9, scope: !4504)
!4507 = !DILocation(line: 4631, column: 32, scope: !4504)
!4508 = !DILocation(line: 4632, column: 9, scope: !4504)
!4509 = !DILocation(line: 4632, column: 42, scope: !4504)
!4510 = !DILocation(line: 4632, column: 44, scope: !4504)
!4511 = !DILocation(line: 4632, column: 12, scope: !4504)
!4512 = !DILocation(line: 4632, column: 52, scope: !4504)
!4513 = !DILocation(line: 4631, column: 9, scope: !4505)
!4514 = !DILocation(line: 4634, column: 9, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 4633, column: 7)
!4516 = !DILocation(line: 4635, column: 9, scope: !4515)
!4517 = !DILocation(line: 4636, column: 42, scope: !4515)
!4518 = !DILocation(line: 4636, column: 9, scope: !4515)
!4519 = !DILocation(line: 4637, column: 9, scope: !4515)
!4520 = !DILocation(line: 4629, column: 47, scope: !4502)
!4521 = !DILocation(line: 4629, column: 8, scope: !4502)
!4522 = distinct !{!4522, !4497, !4523}
!4523 = !DILocation(line: 4639, column: 3, scope: !4498)
!4524 = !DILocation(line: 4646, column: 7, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 4646, column: 7)
!4526 = !DILocation(line: 4646, column: 31, scope: !4525)
!4527 = !DILocation(line: 4646, column: 34, scope: !4525)
!4528 = !DILocation(line: 4646, column: 46, scope: !4525)
!4529 = !DILocation(line: 4646, column: 7, scope: !4234)
!4530 = !DILocation(line: 4649, column: 5, scope: !4525)
!4531 = !DILocation(line: 4650, column: 1, scope: !4234)
!4532 = distinct !DISubprogram(name: "work_stuff_copy_to_from", scope: !3, file: !3, line: 1158, type: !4533, scopeLine: 1159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4535)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{null, !639, !639}
!4535 = !{!4536, !4537, !4538, !4539, !4543, !4547, !4551}
!4536 = !DILocalVariable(name: "to", arg: 1, scope: !4532, file: !3, line: 1158, type: !639)
!4537 = !DILocalVariable(name: "from", arg: 2, scope: !4532, file: !3, line: 1158, type: !639)
!4538 = !DILocalVariable(name: "i", scope: !4532, file: !3, line: 1160, type: !7)
!4539 = !DILocalVariable(name: "len", scope: !4540, file: !3, line: 1173, type: !7)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 1172, column: 5)
!4541 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 1171, column: 3)
!4542 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1171, column: 3)
!4543 = !DILocalVariable(name: "len", scope: !4544, file: !3, line: 1184, type: !7)
!4544 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 1183, column: 5)
!4545 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 1182, column: 3)
!4546 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1182, column: 3)
!4547 = !DILocalVariable(name: "len", scope: !4548, file: !3, line: 1195, type: !7)
!4548 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 1194, column: 5)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 1193, column: 3)
!4550 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1193, column: 3)
!4551 = !DILocalVariable(name: "len", scope: !4552, file: !3, line: 1206, type: !7)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 1205, column: 5)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 1204, column: 3)
!4554 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1204, column: 3)
!4555 = !DILocation(line: 0, scope: !4532)
!4556 = !DILocation(line: 1162, column: 3, scope: !4532)
!4557 = !DILocation(line: 1165, column: 11, scope: !4532)
!4558 = !DILocation(line: 1165, column: 15, scope: !4532)
!4559 = !DILocation(line: 1165, column: 3, scope: !4532)
!4560 = !DILocation(line: 1168, column: 13, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1168, column: 7)
!4562 = !DILocation(line: 1168, column: 7, scope: !4561)
!4563 = !DILocation(line: 1168, column: 7, scope: !4532)
!4564 = !DILocation(line: 1169, column: 19, scope: !4561)
!4565 = !DILocation(line: 1169, column: 9, scope: !4561)
!4566 = !DILocation(line: 1169, column: 17, scope: !4561)
!4567 = !DILocation(line: 1169, column: 5, scope: !4561)
!4568 = !DILocation(line: 0, scope: !4541)
!4569 = !DILocation(line: 0, scope: !4540)
!4570 = !DILocation(line: 1171, column: 8, scope: !4542)
!4571 = !DILocation(line: 0, scope: !4542)
!4572 = !DILocation(line: 1171, column: 25, scope: !4541)
!4573 = !DILocation(line: 1171, column: 17, scope: !4541)
!4574 = !DILocation(line: 1171, column: 3, scope: !4542)
!4575 = !DILocation(line: 1173, column: 31, scope: !4540)
!4576 = !DILocation(line: 1173, column: 25, scope: !4540)
!4577 = !DILocation(line: 1173, column: 17, scope: !4540)
!4578 = !DILocation(line: 1175, column: 24, scope: !4540)
!4579 = !DILocation(line: 1175, column: 11, scope: !4540)
!4580 = !DILocation(line: 1175, column: 7, scope: !4540)
!4581 = !DILocation(line: 1175, column: 22, scope: !4540)
!4582 = !DILocation(line: 1176, column: 19, scope: !4540)
!4583 = !DILocation(line: 1176, column: 15, scope: !4540)
!4584 = !DILocation(line: 1176, column: 37, scope: !4540)
!4585 = !DILocation(line: 1176, column: 31, scope: !4540)
!4586 = !DILocation(line: 1176, column: 7, scope: !4540)
!4587 = !DILocation(line: 1171, column: 34, scope: !4541)
!4588 = !DILocation(line: 1171, column: 3, scope: !4541)
!4589 = distinct !{!4589, !4574, !4590}
!4590 = !DILocation(line: 1177, column: 5, scope: !4542)
!4591 = !DILocation(line: 1179, column: 13, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1179, column: 7)
!4593 = !DILocation(line: 1179, column: 7, scope: !4592)
!4594 = !DILocation(line: 1179, column: 7, scope: !4532)
!4595 = !DILocation(line: 1180, column: 20, scope: !4592)
!4596 = !DILocation(line: 1180, column: 9, scope: !4592)
!4597 = !DILocation(line: 1180, column: 18, scope: !4592)
!4598 = !DILocation(line: 1180, column: 5, scope: !4592)
!4599 = !DILocation(line: 0, scope: !4545)
!4600 = !DILocation(line: 0, scope: !4544)
!4601 = !DILocation(line: 1182, column: 8, scope: !4546)
!4602 = !DILocation(line: 0, scope: !4546)
!4603 = !DILocation(line: 1182, column: 25, scope: !4545)
!4604 = !DILocation(line: 1182, column: 17, scope: !4545)
!4605 = !DILocation(line: 1182, column: 3, scope: !4546)
!4606 = !DILocation(line: 1184, column: 31, scope: !4544)
!4607 = !DILocation(line: 1184, column: 25, scope: !4544)
!4608 = !DILocation(line: 1184, column: 17, scope: !4544)
!4609 = !DILocation(line: 1186, column: 25, scope: !4544)
!4610 = !DILocation(line: 1186, column: 11, scope: !4544)
!4611 = !DILocation(line: 1186, column: 7, scope: !4544)
!4612 = !DILocation(line: 1186, column: 23, scope: !4544)
!4613 = !DILocation(line: 1187, column: 19, scope: !4544)
!4614 = !DILocation(line: 1187, column: 15, scope: !4544)
!4615 = !DILocation(line: 1187, column: 38, scope: !4544)
!4616 = !DILocation(line: 1187, column: 32, scope: !4544)
!4617 = !DILocation(line: 1187, column: 7, scope: !4544)
!4618 = !DILocation(line: 1182, column: 32, scope: !4545)
!4619 = !DILocation(line: 1182, column: 3, scope: !4545)
!4620 = distinct !{!4620, !4605, !4621}
!4621 = !DILocation(line: 1188, column: 5, scope: !4546)
!4622 = !DILocation(line: 1190, column: 13, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1190, column: 7)
!4624 = !DILocation(line: 1190, column: 7, scope: !4623)
!4625 = !DILocation(line: 1190, column: 7, scope: !4532)
!4626 = !DILocation(line: 1191, column: 20, scope: !4623)
!4627 = !DILocation(line: 1191, column: 9, scope: !4623)
!4628 = !DILocation(line: 1191, column: 18, scope: !4623)
!4629 = !DILocation(line: 1191, column: 5, scope: !4623)
!4630 = !DILocation(line: 0, scope: !4549)
!4631 = !DILocation(line: 0, scope: !4548)
!4632 = !DILocation(line: 1193, column: 8, scope: !4550)
!4633 = !DILocation(line: 0, scope: !4550)
!4634 = !DILocation(line: 1193, column: 25, scope: !4549)
!4635 = !DILocation(line: 1193, column: 17, scope: !4549)
!4636 = !DILocation(line: 1193, column: 3, scope: !4550)
!4637 = !DILocation(line: 1195, column: 31, scope: !4548)
!4638 = !DILocation(line: 1195, column: 25, scope: !4548)
!4639 = !DILocation(line: 1195, column: 17, scope: !4548)
!4640 = !DILocation(line: 1197, column: 25, scope: !4548)
!4641 = !DILocation(line: 1197, column: 11, scope: !4548)
!4642 = !DILocation(line: 1197, column: 7, scope: !4548)
!4643 = !DILocation(line: 1197, column: 23, scope: !4548)
!4644 = !DILocation(line: 1198, column: 19, scope: !4548)
!4645 = !DILocation(line: 1198, column: 15, scope: !4548)
!4646 = !DILocation(line: 1198, column: 38, scope: !4548)
!4647 = !DILocation(line: 1198, column: 32, scope: !4548)
!4648 = !DILocation(line: 1198, column: 7, scope: !4548)
!4649 = !DILocation(line: 1193, column: 32, scope: !4549)
!4650 = !DILocation(line: 1193, column: 3, scope: !4549)
!4651 = distinct !{!4651, !4636, !4652}
!4652 = !DILocation(line: 1199, column: 5, scope: !4550)
!4653 = !DILocation(line: 1201, column: 13, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1201, column: 7)
!4655 = !DILocation(line: 1201, column: 7, scope: !4654)
!4656 = !DILocation(line: 1201, column: 7, scope: !4532)
!4657 = !DILocation(line: 1202, column: 23, scope: !4654)
!4658 = !DILocation(line: 1202, column: 9, scope: !4654)
!4659 = !DILocation(line: 1202, column: 21, scope: !4654)
!4660 = !DILocation(line: 1202, column: 5, scope: !4654)
!4661 = !DILocation(line: 0, scope: !4552)
!4662 = !DILocation(line: 1204, column: 8, scope: !4554)
!4663 = !DILocation(line: 0, scope: !4554)
!4664 = !DILocation(line: 1204, column: 25, scope: !4553)
!4665 = !DILocation(line: 1204, column: 17, scope: !4553)
!4666 = !DILocation(line: 1204, column: 3, scope: !4554)
!4667 = !DILocation(line: 1206, column: 31, scope: !4552)
!4668 = !DILocation(line: 1206, column: 25, scope: !4552)
!4669 = !DILocation(line: 1206, column: 17, scope: !4552)
!4670 = !DILocation(line: 1208, column: 28, scope: !4552)
!4671 = !DILocation(line: 1208, column: 11, scope: !4552)
!4672 = !DILocation(line: 1208, column: 7, scope: !4552)
!4673 = !DILocation(line: 1208, column: 26, scope: !4552)
!4674 = !DILocation(line: 1209, column: 19, scope: !4552)
!4675 = !DILocation(line: 1209, column: 15, scope: !4552)
!4676 = !DILocation(line: 1209, column: 41, scope: !4552)
!4677 = !DILocation(line: 1209, column: 35, scope: !4552)
!4678 = !DILocation(line: 1209, column: 7, scope: !4552)
!4679 = !DILocation(line: 1204, column: 38, scope: !4553)
!4680 = !DILocation(line: 1204, column: 3, scope: !4553)
!4681 = distinct !{!4681, !4666, !4682}
!4682 = !DILocation(line: 1210, column: 5, scope: !4554)
!4683 = !DILocation(line: 1212, column: 13, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1212, column: 7)
!4685 = !DILocation(line: 1212, column: 7, scope: !4684)
!4686 = !DILocation(line: 1212, column: 7, scope: !4532)
!4687 = !DILocation(line: 1214, column: 31, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 1213, column: 5)
!4689 = !DILocation(line: 1214, column: 11, scope: !4688)
!4690 = !DILocation(line: 1214, column: 29, scope: !4688)
!4691 = !DILocation(line: 1215, column: 24, scope: !4688)
!4692 = !DILocation(line: 1215, column: 7, scope: !4688)
!4693 = !DILocation(line: 1216, column: 27, scope: !4688)
!4694 = !DILocation(line: 1216, column: 52, scope: !4688)
!4695 = !DILocation(line: 1216, column: 7, scope: !4688)
!4696 = !DILocation(line: 1217, column: 5, scope: !4688)
!4697 = !DILocation(line: 1218, column: 1, scope: !4532)
!4698 = distinct !DISubprogram(name: "delete_work_stuff", scope: !3, file: !3, line: 1257, type: !977, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4699)
!4699 = !{!4700}
!4700 = !DILocalVariable(name: "work", arg: 1, scope: !4698, file: !3, line: 1257, type: !639)
!4701 = !DILocation(line: 0, scope: !4698)
!4702 = !DILocation(line: 1259, column: 3, scope: !4698)
!4703 = !DILocation(line: 1260, column: 3, scope: !4698)
!4704 = !DILocation(line: 1261, column: 1, scope: !4698)
!4705 = distinct !DISubprogram(name: "delete_non_B_K_work_stuff", scope: !3, file: !3, line: 1224, type: !977, scopeLine: 1225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4706)
!4706 = !{!4707, !4708}
!4707 = !DILocalVariable(name: "work", arg: 1, scope: !4705, file: !3, line: 1224, type: !639)
!4708 = !DILocalVariable(name: "i", scope: !4709, file: !3, line: 1237, type: !7)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 1236, column: 5)
!4710 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 1235, column: 7)
!4711 = !DILocation(line: 0, scope: !4705)
!4712 = !DILocation(line: 1228, column: 3, scope: !4705)
!4713 = !DILocation(line: 1229, column: 15, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 1229, column: 7)
!4715 = !DILocation(line: 1229, column: 23, scope: !4714)
!4716 = !DILocation(line: 1229, column: 7, scope: !4705)
!4717 = !DILocation(line: 1231, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 1230, column: 5)
!4719 = !DILocation(line: 1232, column: 23, scope: !4718)
!4720 = !DILocation(line: 1233, column: 15, scope: !4718)
!4721 = !DILocation(line: 1233, column: 28, scope: !4718)
!4722 = !DILocation(line: 1234, column: 5, scope: !4718)
!4723 = !DILocation(line: 1235, column: 13, scope: !4710)
!4724 = !DILocation(line: 1235, column: 7, scope: !4710)
!4725 = !DILocation(line: 1235, column: 7, scope: !4705)
!4726 = !DILocation(line: 0, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 1239, column: 7)
!4728 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 1239, column: 7)
!4729 = !DILocation(line: 1239, column: 7, scope: !4728)
!4730 = !DILocation(line: 0, scope: !4709)
!4731 = !DILocation(line: 1239, column: 29, scope: !4727)
!4732 = !DILocation(line: 1239, column: 21, scope: !4727)
!4733 = !DILocation(line: 1240, column: 6, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 1240, column: 6)
!4735 = !DILocation(line: 1240, column: 6, scope: !4727)
!4736 = !DILocation(line: 1241, column: 4, scope: !4734)
!4737 = !DILocation(line: 1239, column: 42, scope: !4727)
!4738 = !DILocation(line: 1239, column: 7, scope: !4727)
!4739 = distinct !{!4739, !4729, !4740}
!4740 = !DILocation(line: 1241, column: 38, scope: !4728)
!4741 = !DILocation(line: 1243, column: 13, scope: !4709)
!4742 = !DILocation(line: 1243, column: 7, scope: !4709)
!4743 = !DILocation(line: 1244, column: 25, scope: !4709)
!4744 = !DILocation(line: 1245, column: 5, scope: !4709)
!4745 = !DILocation(line: 1246, column: 13, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 1246, column: 7)
!4747 = !DILocation(line: 1246, column: 7, scope: !4746)
!4748 = !DILocation(line: 1246, column: 7, scope: !4705)
!4749 = !DILocation(line: 1248, column: 7, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 1247, column: 5)
!4751 = !DILocation(line: 1249, column: 27, scope: !4750)
!4752 = !DILocation(line: 1249, column: 7, scope: !4750)
!4753 = !DILocation(line: 1250, column: 31, scope: !4750)
!4754 = !DILocation(line: 1251, column: 5, scope: !4750)
!4755 = !DILocation(line: 1252, column: 1, scope: !4705)
!4756 = distinct !DISubprogram(name: "forget_types", scope: !3, file: !3, line: 4270, type: !977, scopeLine: 4271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4757)
!4757 = !{!4758, !4759}
!4758 = !DILocalVariable(name: "work", arg: 1, scope: !4756, file: !3, line: 4270, type: !639)
!4759 = !DILocalVariable(name: "i", scope: !4756, file: !3, line: 4272, type: !7)
!4760 = !DILocation(line: 0, scope: !4756)
!4761 = !DILocation(line: 0, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 4277, column: 11)
!4763 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 4275, column: 5)
!4764 = !DILocation(line: 4274, column: 3, scope: !4756)
!4765 = !DILocation(line: 4274, column: 18, scope: !4756)
!4766 = !DILocation(line: 4274, column: 25, scope: !4756)
!4767 = !DILocation(line: 4276, column: 11, scope: !4763)
!4768 = !DILocation(line: 4277, column: 19, scope: !4762)
!4769 = !DILocation(line: 4277, column: 11, scope: !4762)
!4770 = !DILocation(line: 4277, column: 30, scope: !4762)
!4771 = !DILocation(line: 4277, column: 11, scope: !4763)
!4772 = !DILocation(line: 4279, column: 4, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 4278, column: 2)
!4774 = !DILocation(line: 4280, column: 12, scope: !4773)
!4775 = !DILocation(line: 4280, column: 4, scope: !4773)
!4776 = !DILocation(line: 4280, column: 23, scope: !4773)
!4777 = !DILocation(line: 4281, column: 2, scope: !4773)
!4778 = distinct !{!4778, !4764, !4779}
!4779 = !DILocation(line: 4282, column: 5, scope: !4756)
!4780 = !DILocation(line: 4283, column: 1, scope: !4756)
!4781 = distinct !DISubprogram(name: "remember_type", scope: !3, file: !3, line: 4145, type: !3042, scopeLine: 4146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4782)
!4782 = !{!4783, !4784, !4785, !4786}
!4783 = !DILocalVariable(name: "work", arg: 1, scope: !4781, file: !3, line: 4145, type: !639)
!4784 = !DILocalVariable(name: "start", arg: 2, scope: !4781, file: !3, line: 4145, type: !37)
!4785 = !DILocalVariable(name: "len", arg: 3, scope: !4781, file: !3, line: 4145, type: !7)
!4786 = !DILocalVariable(name: "tem", scope: !4781, file: !3, line: 4147, type: !34)
!4787 = !DILocation(line: 0, scope: !4781)
!4788 = !DILocation(line: 4149, column: 13, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 4149, column: 7)
!4790 = !DILocation(line: 4149, column: 7, scope: !4789)
!4791 = !DILocation(line: 4149, column: 7, scope: !4781)
!4792 = !DILocation(line: 4152, column: 15, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 4152, column: 7)
!4794 = !DILocation(line: 4152, column: 33, scope: !4793)
!4795 = !DILocation(line: 4152, column: 22, scope: !4793)
!4796 = !DILocation(line: 4152, column: 7, scope: !4781)
!4797 = !DILocation(line: 4154, column: 32, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 4154, column: 11)
!4799 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 4153, column: 5)
!4800 = !DILocation(line: 4154, column: 11, scope: !4799)
!4801 = !DILocation(line: 4156, column: 25, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 4155, column: 2)
!4803 = !DILocation(line: 4157, column: 22, scope: !4802)
!4804 = !DILocation(line: 4157, column: 12, scope: !4802)
!4805 = !DILocation(line: 4157, column: 20, scope: !4802)
!4806 = !DILocation(line: 4158, column: 2, scope: !4802)
!4807 = !DILocation(line: 4161, column: 25, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 4160, column: 2)
!4809 = !DILocation(line: 4163, column: 8, scope: !4808)
!4810 = !DILocation(line: 4163, column: 6, scope: !4808)
!4811 = !DILocation(line: 4166, column: 9, scope: !4781)
!4812 = !DILocation(line: 4167, column: 23, scope: !4781)
!4813 = !DILocation(line: 4167, column: 3, scope: !4781)
!4814 = !DILocation(line: 4168, column: 3, scope: !4781)
!4815 = !DILocation(line: 4168, column: 12, scope: !4781)
!4816 = !DILocation(line: 4169, column: 11, scope: !4781)
!4817 = !DILocation(line: 4169, column: 33, scope: !4781)
!4818 = !DILocation(line: 4169, column: 3, scope: !4781)
!4819 = !DILocation(line: 4169, column: 37, scope: !4781)
!4820 = !DILocation(line: 4170, column: 1, scope: !4781)
!4821 = distinct !DISubprogram(name: "code_for_qualifier", scope: !3, file: !3, line: 560, type: !116, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4822)
!4822 = !{!4823}
!4823 = !DILocalVariable(name: "c", arg: 1, scope: !4821, file: !3, line: 560, type: !7)
!4824 = !DILocation(line: 0, scope: !4821)
!4825 = !DILocation(line: 562, column: 3, scope: !4821)
!4826 = !DILocation(line: 568, column: 7, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 563, column: 5)
!4828 = !DILocation(line: 571, column: 7, scope: !4827)
!4829 = !DILocation(line: 578, column: 3, scope: !4821)
!4830 = !DILocation(line: 579, column: 1, scope: !4821)
!4831 = distinct !DISubprogram(name: "demangle_class", scope: !3, file: !3, line: 2493, type: !637, scopeLine: 2494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4832)
!4832 = !{!4833, !4834, !4835, !4836, !4837, !4838, !4839}
!4833 = !DILocalVariable(name: "work", arg: 1, scope: !4831, file: !3, line: 2493, type: !639)
!4834 = !DILocalVariable(name: "mangled", arg: 2, scope: !4831, file: !3, line: 2493, type: !640)
!4835 = !DILocalVariable(name: "declp", arg: 3, scope: !4831, file: !3, line: 2493, type: !42)
!4836 = !DILocalVariable(name: "success", scope: !4831, file: !3, line: 2495, type: !7)
!4837 = !DILocalVariable(name: "btype", scope: !4831, file: !3, line: 2496, type: !7)
!4838 = !DILocalVariable(name: "class_name", scope: !4831, file: !3, line: 2497, type: !43)
!4839 = !DILocalVariable(name: "save_class_name_end", scope: !4831, file: !3, line: 2498, type: !34)
!4840 = !DILocation(line: 0, scope: !4831)
!4841 = !DILocation(line: 2497, column: 3, scope: !4831)
!4842 = !DILocation(line: 2500, column: 3, scope: !4831)
!4843 = !DILocation(line: 2501, column: 11, scope: !4831)
!4844 = !DILocation(line: 2502, column: 7, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 2502, column: 7)
!4846 = !DILocation(line: 2502, column: 7, scope: !4831)
!4847 = !DILocation(line: 2504, column: 40, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 2503, column: 5)
!4849 = !DILocation(line: 2505, column: 18, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 2505, column: 11)
!4851 = !DILocation(line: 2505, column: 30, scope: !4850)
!4852 = !DILocation(line: 2505, column: 35, scope: !4850)
!4853 = !DILocation(line: 2505, column: 45, scope: !4850)
!4854 = !DILocation(line: 2505, column: 56, scope: !4850)
!4855 = !DILocation(line: 2505, column: 11, scope: !4848)
!4856 = !DILocation(line: 2508, column: 21, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 2508, column: 15)
!4858 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 2506, column: 2)
!4859 = !DILocation(line: 2508, column: 15, scope: !4857)
!4860 = !DILocation(line: 2508, column: 32, scope: !4857)
!4861 = !DILocation(line: 2508, column: 53, scope: !4857)
!4862 = !DILocation(line: 2508, column: 15, scope: !4858)
!4863 = !DILocation(line: 2510, column: 41, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 2509, column: 13)
!4865 = !DILocation(line: 2510, column: 43, scope: !4864)
!4866 = !DILocation(line: 2510, column: 28, scope: !4864)
!4867 = !DILocation(line: 2511, column: 13, scope: !4864)
!4868 = !DILocation(line: 2512, column: 4, scope: !4858)
!4869 = !DILocation(line: 2513, column: 16, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 2513, column: 8)
!4871 = !DILocation(line: 2513, column: 27, scope: !4870)
!4872 = !DILocation(line: 2513, column: 8, scope: !4858)
!4873 = !DILocation(line: 2515, column: 8, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 2514, column: 6)
!4875 = !DILocation(line: 2516, column: 34, scope: !4874)
!4876 = !DILocation(line: 2517, column: 6, scope: !4874)
!4877 = !DILocation(line: 2520, column: 28, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 2519, column: 6)
!4879 = !DILocation(line: 2523, column: 20, scope: !4848)
!4880 = !DILocation(line: 2524, column: 40, scope: !4848)
!4881 = !DILocation(line: 2524, column: 43, scope: !4848)
!4882 = !DILocation(line: 2524, column: 7, scope: !4848)
!4883 = !DILocation(line: 2525, column: 40, scope: !4848)
!4884 = !DILocation(line: 2525, column: 43, scope: !4848)
!4885 = !DILocation(line: 2525, column: 7, scope: !4848)
!4886 = !DILocation(line: 2526, column: 30, scope: !4848)
!4887 = !DILocation(line: 2526, column: 7, scope: !4848)
!4888 = !DILocation(line: 2527, column: 7, scope: !4848)
!4889 = !DILocation(line: 2529, column: 5, scope: !4848)
!4890 = !DILocation(line: 2530, column: 3, scope: !4831)
!4891 = !DILocation(line: 2532, column: 1, scope: !4831)
!4892 = !DILocation(line: 2531, column: 3, scope: !4831)
!4893 = distinct !DISubprogram(name: "demangle_args", scope: !3, file: !3, line: 4328, type: !637, scopeLine: 4330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4894)
!4894 = !{!4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903}
!4895 = !DILocalVariable(name: "work", arg: 1, scope: !4893, file: !3, line: 4328, type: !639)
!4896 = !DILocalVariable(name: "mangled", arg: 2, scope: !4893, file: !3, line: 4328, type: !640)
!4897 = !DILocalVariable(name: "declp", arg: 3, scope: !4893, file: !3, line: 4329, type: !42)
!4898 = !DILocalVariable(name: "arg", scope: !4893, file: !3, line: 4331, type: !43)
!4899 = !DILocalVariable(name: "need_comma", scope: !4893, file: !3, line: 4332, type: !7)
!4900 = !DILocalVariable(name: "r", scope: !4893, file: !3, line: 4333, type: !7)
!4901 = !DILocalVariable(name: "t", scope: !4893, file: !3, line: 4334, type: !7)
!4902 = !DILocalVariable(name: "tem", scope: !4893, file: !3, line: 4335, type: !37)
!4903 = !DILocalVariable(name: "temptype", scope: !4893, file: !3, line: 4336, type: !35)
!4904 = !DILocation(line: 0, scope: !4893)
!4905 = !DILocation(line: 4331, column: 3, scope: !4893)
!4906 = !DILocation(line: 4333, column: 3, scope: !4893)
!4907 = !DILocation(line: 4334, column: 3, scope: !4893)
!4908 = !DILocation(line: 4335, column: 3, scope: !4893)
!4909 = !DILocation(line: 4338, column: 7, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 4338, column: 7)
!4911 = !DILocation(line: 4338, column: 7, scope: !4893)
!4912 = !DILocation(line: 4340, column: 7, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 4339, column: 5)
!4914 = !DILocation(line: 4341, column: 12, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 4341, column: 11)
!4916 = !DILocation(line: 4341, column: 11, scope: !4915)
!4917 = !DILocation(line: 4341, column: 21, scope: !4915)
!4918 = !DILocation(line: 4341, column: 11, scope: !4913)
!4919 = !DILocation(line: 4343, column: 4, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 4342, column: 2)
!4921 = !DILocation(line: 4344, column: 2, scope: !4920)
!4922 = !DILocation(line: 0, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 4365, column: 15)
!4924 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 4351, column: 2)
!4925 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 4350, column: 11)
!4926 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 4349, column: 5)
!4927 = !DILocation(line: 0, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 4396, column: 6)
!4929 = !DILocation(line: 4347, column: 3, scope: !4893)
!4930 = !DILocation(line: 4332, column: 7, scope: !4893)
!4931 = !DILocation(line: 4347, column: 12, scope: !4893)
!4932 = !DILocation(line: 4347, column: 11, scope: !4893)
!4933 = !DILocation(line: 4347, column: 21, scope: !4893)
!4934 = !DILocation(line: 4347, column: 28, scope: !4893)
!4935 = !DILocation(line: 4347, column: 41, scope: !4893)
!4936 = !DILocation(line: 4347, column: 49, scope: !4893)
!4937 = !DILocation(line: 4347, column: 62, scope: !4893)
!4938 = !DILocation(line: 4348, column: 3, scope: !4893)
!4939 = !DILocation(line: 4348, column: 12, scope: !4893)
!4940 = !DILocation(line: 4348, column: 21, scope: !4893)
!4941 = !DILocation(line: 4350, column: 22, scope: !4925)
!4942 = !DILocation(line: 4350, column: 30, scope: !4925)
!4943 = !DILocation(line: 4350, column: 44, scope: !4925)
!4944 = !DILocation(line: 4350, column: 11, scope: !4926)
!4945 = !DILocation(line: 4352, column: 26, scope: !4924)
!4946 = !DILocation(line: 4352, column: 15, scope: !4924)
!4947 = !DILocation(line: 4354, column: 17, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 4354, column: 8)
!4949 = !DILocation(line: 4354, column: 8, scope: !4924)
!4950 = !DILocation(line: 4356, column: 13, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 4356, column: 12)
!4952 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 4355, column: 6)
!4953 = !DILocation(line: 4356, column: 12, scope: !4952)
!4954 = !DILocation(line: 4363, column: 10, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 4362, column: 6)
!4956 = !DILocation(line: 4365, column: 16, scope: !4923)
!4957 = !DILocation(line: 4365, column: 30, scope: !4923)
!4958 = !DILocation(line: 4365, column: 33, scope: !4923)
!4959 = !DILocation(line: 4365, column: 48, scope: !4923)
!4960 = !DILocation(line: 4365, column: 51, scope: !4923)
!4961 = !DILocation(line: 4365, column: 67, scope: !4923)
!4962 = !DILocation(line: 4365, column: 78, scope: !4923)
!4963 = !DILocation(line: 4365, column: 85, scope: !4923)
!4964 = !DILocation(line: 4365, column: 15, scope: !4924)
!4965 = !DILocation(line: 4373, column: 24, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 4373, column: 19)
!4967 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 4366, column: 13)
!4968 = !DILocation(line: 4373, column: 22, scope: !4966)
!4969 = !DILocation(line: 4373, column: 48, scope: !4966)
!4970 = !DILocation(line: 4373, column: 19, scope: !4967)
!4971 = !DILocation(line: 4380, column: 13, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 4380, column: 12)
!4973 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 4379, column: 6)
!4974 = !DILocation(line: 4380, column: 12, scope: !4973)
!4975 = !DILocation(line: 4385, column: 8, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 4385, column: 8)
!4977 = !DILocation(line: 4385, column: 25, scope: !4976)
!4978 = !DILocation(line: 4385, column: 28, scope: !4976)
!4979 = !DILocation(line: 4385, column: 43, scope: !4976)
!4980 = !DILocation(line: 4385, column: 46, scope: !4976)
!4981 = !DILocation(line: 4385, column: 60, scope: !4976)
!4982 = !DILocation(line: 4385, column: 63, scope: !4976)
!4983 = !DILocation(line: 4385, column: 8, scope: !4924)
!4984 = !DILocation(line: 4391, column: 9, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 4391, column: 8)
!4986 = !DILocation(line: 4387, column: 9, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 4386, column: 6)
!4988 = !DILocation(line: 4388, column: 6, scope: !4987)
!4989 = !DILocation(line: 4391, column: 11, scope: !4985)
!4990 = !DILocation(line: 4391, column: 16, scope: !4985)
!4991 = !DILocation(line: 4391, column: 33, scope: !4985)
!4992 = !DILocation(line: 4391, column: 22, scope: !4985)
!4993 = !DILocation(line: 4391, column: 8, scope: !4924)
!4994 = !DILocation(line: 4395, column: 4, scope: !4924)
!4995 = !DILocation(line: 4395, column: 17, scope: !4924)
!4996 = !DILocation(line: 4395, column: 26, scope: !4924)
!4997 = !DILocation(line: 4395, column: 30, scope: !4924)
!4998 = !DILocation(line: 4395, column: 33, scope: !4924)
!4999 = !DILocation(line: 4395, column: 37, scope: !4924)
!5000 = !DILocation(line: 4397, column: 22, scope: !4928)
!5001 = !DILocation(line: 4397, column: 30, scope: !4928)
!5002 = !DILocation(line: 4397, column: 14, scope: !4928)
!5003 = !DILocation(line: 4397, column: 12, scope: !4928)
!5004 = !DILocation(line: 4398, column: 12, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 4398, column: 12)
!5006 = !DILocation(line: 4398, column: 23, scope: !5005)
!5007 = !DILocation(line: 4398, column: 26, scope: !5005)
!5008 = !DILocation(line: 4398, column: 12, scope: !4928)
!5009 = !DILocation(line: 4400, column: 5, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 4399, column: 3)
!5011 = !DILocation(line: 4401, column: 3, scope: !5010)
!5012 = !DILocation(line: 4402, column: 13, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 4402, column: 12)
!5014 = !DILocation(line: 4402, column: 12, scope: !4928)
!5015 = !DILocation(line: 4406, column: 12, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 4406, column: 12)
!5017 = !DILocation(line: 4406, column: 12, scope: !4928)
!5018 = !DILocation(line: 4408, column: 5, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 4407, column: 3)
!5020 = !DILocation(line: 4409, column: 3, scope: !5019)
!5021 = !DILocation(line: 4410, column: 8, scope: !4928)
!5022 = distinct !{!5022, !4994, !5023}
!5023 = !DILocation(line: 4412, column: 6, scope: !4924)
!5024 = !DILocation(line: 4416, column: 8, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 4416, column: 8)
!5026 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 4415, column: 2)
!5027 = !DILocation(line: 4416, column: 19, scope: !5025)
!5028 = !DILocation(line: 4416, column: 22, scope: !5025)
!5029 = !DILocation(line: 4416, column: 8, scope: !5026)
!5030 = !DILocation(line: 4417, column: 6, scope: !5025)
!5031 = !DILocation(line: 4418, column: 9, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 4418, column: 8)
!5033 = !DILocation(line: 4418, column: 8, scope: !5026)
!5034 = !DILocation(line: 4420, column: 8, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 4420, column: 8)
!5036 = !DILocation(line: 4420, column: 8, scope: !5026)
!5037 = !DILocation(line: 4421, column: 6, scope: !5035)
!5038 = !DILocation(line: 4422, column: 4, scope: !5026)
!5039 = distinct !{!5039, !4929, !5040}
!5040 = !DILocation(line: 4425, column: 5, scope: !4893)
!5041 = !DILocation(line: 4427, column: 17, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 4427, column: 7)
!5043 = !DILocation(line: 4427, column: 7, scope: !4893)
!5044 = !DILocation(line: 4429, column: 17, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 4428, column: 5)
!5046 = !DILocation(line: 4430, column: 11, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 4430, column: 11)
!5048 = !DILocation(line: 4430, column: 11, scope: !5045)
!5049 = !DILocation(line: 4432, column: 8, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 4432, column: 8)
!5051 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 4431, column: 2)
!5052 = !DILocation(line: 4432, column: 8, scope: !5051)
!5053 = !DILocation(line: 4434, column: 8, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 4433, column: 6)
!5055 = !DILocation(line: 4435, column: 6, scope: !5054)
!5056 = !DILocation(line: 4436, column: 4, scope: !5051)
!5057 = !DILocation(line: 4437, column: 2, scope: !5051)
!5058 = !DILocation(line: 4440, column: 7, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 4440, column: 7)
!5060 = !DILocation(line: 4440, column: 7, scope: !4893)
!5061 = !DILocation(line: 4442, column: 7, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 4441, column: 5)
!5063 = !DILocation(line: 4443, column: 5, scope: !5062)
!5064 = !DILocation(line: 4445, column: 1, scope: !4893)
!5065 = distinct !DISubprogram(name: "qualifier_string", scope: !3, file: !3, line: 585, type: !5066, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5068)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!37, !7}
!5068 = !{!5069}
!5069 = !DILocalVariable(name: "type_quals", arg: 1, scope: !5065, file: !3, line: 585, type: !7)
!5070 = !DILocation(line: 0, scope: !5065)
!5071 = !DILocation(line: 587, column: 3, scope: !5065)
!5072 = !DILocation(line: 593, column: 7, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 588, column: 5)
!5074 = !DILocation(line: 596, column: 7, scope: !5073)
!5075 = !DILocation(line: 599, column: 7, scope: !5073)
!5076 = !DILocation(line: 602, column: 7, scope: !5073)
!5077 = !DILocation(line: 605, column: 7, scope: !5073)
!5078 = !DILocation(line: 608, column: 7, scope: !5073)
!5079 = !DILocation(line: 611, column: 7, scope: !5073)
!5080 = !DILocation(line: 618, column: 3, scope: !5065)
!5081 = !DILocation(line: 619, column: 1, scope: !5065)
!5082 = distinct !DISubprogram(name: "demangle_class_name", scope: !3, file: !3, line: 2439, type: !637, scopeLine: 2441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5083)
!5083 = !{!5084, !5085, !5086, !5087, !5088}
!5084 = !DILocalVariable(name: "work", arg: 1, scope: !5082, file: !3, line: 2439, type: !639)
!5085 = !DILocalVariable(name: "mangled", arg: 2, scope: !5082, file: !3, line: 2439, type: !640)
!5086 = !DILocalVariable(name: "declp", arg: 3, scope: !5082, file: !3, line: 2440, type: !42)
!5087 = !DILocalVariable(name: "n", scope: !5082, file: !3, line: 2442, type: !7)
!5088 = !DILocalVariable(name: "success", scope: !5082, file: !3, line: 2443, type: !7)
!5089 = !DILocation(line: 0, scope: !5082)
!5090 = !DILocation(line: 2445, column: 7, scope: !5082)
!5091 = !DILocation(line: 2446, column: 9, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 2446, column: 7)
!5093 = !DILocation(line: 2446, column: 7, scope: !5082)
!5094 = !DILocation(line: 2448, column: 21, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 2448, column: 7)
!5096 = !DILocation(line: 2448, column: 13, scope: !5095)
!5097 = !DILocation(line: 2448, column: 7, scope: !5095)
!5098 = !DILocation(line: 2448, column: 31, scope: !5095)
!5099 = !DILocation(line: 2448, column: 7, scope: !5082)
!5100 = !DILocation(line: 2450, column: 7, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 2449, column: 5)
!5102 = !DILocation(line: 2452, column: 5, scope: !5101)
!5103 = !DILocation(line: 2455, column: 1, scope: !5082)
!5104 = distinct !DISubprogram(name: "do_arg", scope: !3, file: !3, line: 4082, type: !637, scopeLine: 4083, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5105)
!5105 = !{!5106, !5107, !5108, !5109}
!5106 = !DILocalVariable(name: "work", arg: 1, scope: !5104, file: !3, line: 4082, type: !639)
!5107 = !DILocalVariable(name: "mangled", arg: 2, scope: !5104, file: !3, line: 4082, type: !640)
!5108 = !DILocalVariable(name: "result", arg: 3, scope: !5104, file: !3, line: 4082, type: !42)
!5109 = !DILocalVariable(name: "start", scope: !5104, file: !3, line: 4086, type: !37)
!5110 = !DILocation(line: 0, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 4090, column: 7)
!5112 = !DILocation(line: 4123, column: 14, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 4103, column: 5)
!5114 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 4102, column: 7)
!5115 = !DILocation(line: 0, scope: !5104)
!5116 = !DILocation(line: 4086, column: 23, scope: !5104)
!5117 = !DILocation(line: 4088, column: 3, scope: !5104)
!5118 = !DILocation(line: 4090, column: 13, scope: !5111)
!5119 = !DILocation(line: 4090, column: 22, scope: !5111)
!5120 = !DILocation(line: 4090, column: 7, scope: !5104)
!5121 = !DILocation(line: 4092, column: 7, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 4091, column: 5)
!5123 = !DILocation(line: 4094, column: 17, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 4094, column: 11)
!5125 = !DILocation(line: 4094, column: 35, scope: !5124)
!5126 = !DILocation(line: 4094, column: 11, scope: !5122)
!5127 = !DILocation(line: 4098, column: 7, scope: !5122)
!5128 = !DILocation(line: 4099, column: 7, scope: !5122)
!5129 = !DILocation(line: 4102, column: 8, scope: !5114)
!5130 = !DILocation(line: 4102, column: 7, scope: !5114)
!5131 = !DILocation(line: 4102, column: 17, scope: !5114)
!5132 = !DILocation(line: 4102, column: 7, scope: !5104)
!5133 = !DILocation(line: 4105, column: 17, scope: !5113)
!5134 = !DILocation(line: 4106, column: 24, scope: !5113)
!5135 = !DILocation(line: 4106, column: 22, scope: !5113)
!5136 = !DILocation(line: 4108, column: 26, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 4108, column: 11)
!5138 = !DILocation(line: 4108, column: 11, scope: !5113)
!5139 = !DILocation(line: 4112, column: 26, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 4112, column: 11)
!5141 = !DILocation(line: 4112, column: 11, scope: !5113)
!5142 = !DILocation(line: 4114, column: 9, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 4114, column: 8)
!5144 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 4113, column: 2)
!5145 = !DILocation(line: 4114, column: 8, scope: !5143)
!5146 = !DILocation(line: 4114, column: 18, scope: !5143)
!5147 = !DILocation(line: 4114, column: 8, scope: !5144)
!5148 = !DILocation(line: 4119, column: 16, scope: !5143)
!5149 = !DILocation(line: 4120, column: 2, scope: !5144)
!5150 = !DILocation(line: 4130, column: 13, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 4130, column: 7)
!5152 = !DILocation(line: 4130, column: 7, scope: !5151)
!5153 = !DILocation(line: 4130, column: 7, scope: !5104)
!5154 = !DILocation(line: 4131, column: 5, scope: !5151)
!5155 = !DILocation(line: 4135, column: 38, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 4135, column: 7)
!5157 = !DILocation(line: 4133, column: 31, scope: !5151)
!5158 = !DILocation(line: 4133, column: 29, scope: !5151)
!5159 = !DILocation(line: 4135, column: 8, scope: !5156)
!5160 = !DILocation(line: 4135, column: 7, scope: !5104)
!5161 = !DILocation(line: 4138, column: 33, scope: !5104)
!5162 = !DILocation(line: 4138, column: 3, scope: !5104)
!5163 = !DILocation(line: 4140, column: 31, scope: !5104)
!5164 = !DILocation(line: 4140, column: 40, scope: !5104)
!5165 = !DILocation(line: 4140, column: 3, scope: !5104)
!5166 = !DILocation(line: 4141, column: 3, scope: !5104)
!5167 = !DILocation(line: 4142, column: 1, scope: !5104)
!5168 = distinct !DISubprogram(name: "forget_B_and_K_types", scope: !3, file: !3, line: 4243, type: !977, scopeLine: 4244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5169)
!5169 = !{!5170, !5171}
!5170 = !DILocalVariable(name: "work", arg: 1, scope: !5168, file: !3, line: 4243, type: !639)
!5171 = !DILocalVariable(name: "i", scope: !5168, file: !3, line: 4245, type: !7)
!5172 = !DILocation(line: 0, scope: !5168)
!5173 = !DILocation(line: 0, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 4250, column: 11)
!5175 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 4248, column: 5)
!5176 = !DILocation(line: 4247, column: 3, scope: !5168)
!5177 = !DILocation(line: 4247, column: 18, scope: !5168)
!5178 = !DILocation(line: 4247, column: 23, scope: !5168)
!5179 = !DILocation(line: 0, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 4260, column: 11)
!5181 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 4258, column: 5)
!5182 = !DILocation(line: 4257, column: 3, scope: !5168)
!5183 = !DILocation(line: 4249, column: 11, scope: !5175)
!5184 = !DILocation(line: 4250, column: 19, scope: !5174)
!5185 = !DILocation(line: 4250, column: 11, scope: !5174)
!5186 = !DILocation(line: 4250, column: 31, scope: !5174)
!5187 = !DILocation(line: 4250, column: 11, scope: !5175)
!5188 = !DILocation(line: 4252, column: 4, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 4251, column: 2)
!5190 = !DILocation(line: 4253, column: 12, scope: !5189)
!5191 = !DILocation(line: 4253, column: 4, scope: !5189)
!5192 = !DILocation(line: 4253, column: 24, scope: !5189)
!5193 = !DILocation(line: 4254, column: 2, scope: !5189)
!5194 = distinct !{!5194, !5176, !5195}
!5195 = !DILocation(line: 4255, column: 5, scope: !5168)
!5196 = !DILocation(line: 4257, column: 18, scope: !5168)
!5197 = !DILocation(line: 4257, column: 23, scope: !5168)
!5198 = !DILocation(line: 4259, column: 11, scope: !5181)
!5199 = !DILocation(line: 4260, column: 19, scope: !5180)
!5200 = !DILocation(line: 4260, column: 11, scope: !5180)
!5201 = !DILocation(line: 4260, column: 31, scope: !5180)
!5202 = !DILocation(line: 4260, column: 11, scope: !5181)
!5203 = !DILocation(line: 4262, column: 4, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 4261, column: 2)
!5205 = !DILocation(line: 4263, column: 12, scope: !5204)
!5206 = !DILocation(line: 4263, column: 4, scope: !5204)
!5207 = !DILocation(line: 4263, column: 24, scope: !5204)
!5208 = !DILocation(line: 4264, column: 2, scope: !5204)
!5209 = distinct !{!5209, !5182, !5210}
!5210 = !DILocation(line: 4265, column: 5, scope: !5168)
!5211 = !DILocation(line: 4266, column: 1, scope: !5168)
!5212 = distinct !DISubprogram(name: "demangle_nested_args", scope: !3, file: !3, line: 4451, type: !637, scopeLine: 4453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5213)
!5213 = !{!5214, !5215, !5216, !5217, !5218, !5219}
!5214 = !DILocalVariable(name: "work", arg: 1, scope: !5212, file: !3, line: 4451, type: !639)
!5215 = !DILocalVariable(name: "mangled", arg: 2, scope: !5212, file: !3, line: 4451, type: !640)
!5216 = !DILocalVariable(name: "declp", arg: 3, scope: !5212, file: !3, line: 4452, type: !42)
!5217 = !DILocalVariable(name: "saved_previous_argument", scope: !5212, file: !3, line: 4454, type: !42)
!5218 = !DILocalVariable(name: "result", scope: !5212, file: !3, line: 4455, type: !7)
!5219 = !DILocalVariable(name: "saved_nrepeats", scope: !5212, file: !3, line: 4456, type: !7)
!5220 = !DILocation(line: 0, scope: !5212)
!5221 = !DILocation(line: 4462, column: 11, scope: !5212)
!5222 = !DILocation(line: 4462, column: 3, scope: !5212)
!5223 = !DILocation(line: 4466, column: 35, scope: !5212)
!5224 = !DILocation(line: 4467, column: 26, scope: !5212)
!5225 = !DILocation(line: 4468, column: 27, scope: !5212)
!5226 = !DILocation(line: 4469, column: 18, scope: !5212)
!5227 = !DILocation(line: 4472, column: 12, scope: !5212)
!5228 = !DILocation(line: 4475, column: 13, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 4475, column: 7)
!5230 = !DILocation(line: 4475, column: 7, scope: !5229)
!5231 = !DILocation(line: 4475, column: 7, scope: !5212)
!5232 = !DILocation(line: 4477, column: 7, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 4476, column: 5)
!5234 = !DILocation(line: 4478, column: 28, scope: !5233)
!5235 = !DILocation(line: 4478, column: 7, scope: !5233)
!5236 = !DILocation(line: 4479, column: 5, scope: !5233)
!5237 = !DILocation(line: 4480, column: 27, scope: !5212)
!5238 = !DILocation(line: 4481, column: 3, scope: !5212)
!5239 = !DILocation(line: 4482, column: 18, scope: !5212)
!5240 = !DILocation(line: 4484, column: 3, scope: !5212)
!5241 = distinct !DISubprogram(name: "demangle_qualifier", scope: !3, file: !3, line: 626, type: !5066, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5242)
!5242 = !{!5243}
!5243 = !DILocalVariable(name: "c", arg: 1, scope: !5241, file: !3, line: 626, type: !7)
!5244 = !DILocation(line: 0, scope: !5241)
!5245 = !DILocation(line: 628, column: 28, scope: !5241)
!5246 = !DILocation(line: 628, column: 10, scope: !5241)
!5247 = !DILocation(line: 628, column: 3, scope: !5241)
!5248 = distinct !DISubprogram(name: "demangle_fund_type", scope: !3, file: !3, line: 3754, type: !637, scopeLine: 3756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5249)
!5249 = !{!5250, !5251, !5252, !5253, !5254, !5255, !5259, !5260, !5261, !5265, !5267, !5268}
!5250 = !DILocalVariable(name: "work", arg: 1, scope: !5248, file: !3, line: 3754, type: !639)
!5251 = !DILocalVariable(name: "mangled", arg: 2, scope: !5248, file: !3, line: 3755, type: !640)
!5252 = !DILocalVariable(name: "result", arg: 3, scope: !5248, file: !3, line: 3755, type: !42)
!5253 = !DILocalVariable(name: "done", scope: !5248, file: !3, line: 3757, type: !7)
!5254 = !DILocalVariable(name: "success", scope: !5248, file: !3, line: 3758, type: !7)
!5255 = !DILocalVariable(name: "buf", scope: !5248, file: !3, line: 3759, type: !5256)
!5256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 296, elements: !5257)
!5257 = !{!5258}
!5258 = !DISubrange(count: 37)
!5259 = !DILocalVariable(name: "dec", scope: !5248, file: !3, line: 3760, type: !21)
!5260 = !DILocalVariable(name: "tk", scope: !5248, file: !3, line: 3761, type: !41)
!5261 = !DILocalVariable(name: "i", scope: !5262, file: !3, line: 3880, type: !7)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 3879, column: 2)
!5263 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3878, column: 11)
!5264 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 3804, column: 5)
!5265 = !DILocalVariable(name: "bindex", scope: !5266, file: !3, line: 3919, type: !7)
!5266 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3918, column: 7)
!5267 = !DILocalVariable(name: "btype", scope: !5266, file: !3, line: 3920, type: !43)
!5268 = !DILocalVariable(name: "btype", scope: !5269, file: !3, line: 3934, type: !43)
!5269 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3933, column: 7)
!5270 = !DILocation(line: 0, scope: !5248)
!5271 = !DILocation(line: 3759, column: 3, scope: !5248)
!5272 = !DILocation(line: 3759, column: 8, scope: !5248)
!5273 = !DILocation(line: 3760, column: 3, scope: !5248)
!5274 = !DILocation(line: 3760, column: 16, scope: !5248)
!5275 = !DILocation(line: 0, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 3792, column: 4)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 3792, column: 4)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 3768, column: 2)
!5279 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 3766, column: 5)
!5280 = !DILocation(line: 0, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 3772, column: 8)
!5282 = !DILocation(line: 3765, column: 3, scope: !5248)
!5283 = !DILocation(line: 3765, column: 10, scope: !5248)
!5284 = !DILocation(line: 3767, column: 7, scope: !5279)
!5285 = !DILocation(line: 3772, column: 8, scope: !5281)
!5286 = !DILocation(line: 3772, column: 8, scope: !5278)
!5287 = !DILocation(line: 3774, column: 20, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 3774, column: 19)
!5289 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 3773, column: 6)
!5290 = !DILocation(line: 3774, column: 19, scope: !5289)
!5291 = !DILocation(line: 3775, column: 17, scope: !5288)
!5292 = !DILocation(line: 3776, column: 53, scope: !5289)
!5293 = !DILocation(line: 3776, column: 52, scope: !5289)
!5294 = !DILocation(line: 3776, column: 32, scope: !5289)
!5295 = !DILocation(line: 3776, column: 8, scope: !5289)
!5296 = !DILocation(line: 3778, column: 14, scope: !5278)
!5297 = !DILocation(line: 3777, column: 6, scope: !5289)
!5298 = !DILocation(line: 3779, column: 4, scope: !5278)
!5299 = !DILocation(line: 3781, column: 14, scope: !5278)
!5300 = !DILocation(line: 3782, column: 4, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 3782, column: 4)
!5302 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 3782, column: 4)
!5303 = !DILocation(line: 3782, column: 4, scope: !5302)
!5304 = !DILocation(line: 3783, column: 4, scope: !5278)
!5305 = !DILocation(line: 3784, column: 4, scope: !5278)
!5306 = !DILocation(line: 3786, column: 14, scope: !5278)
!5307 = !DILocation(line: 3787, column: 4, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 3787, column: 4)
!5309 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 3787, column: 4)
!5310 = !DILocation(line: 3787, column: 4, scope: !5309)
!5311 = !DILocation(line: 3788, column: 4, scope: !5278)
!5312 = !DILocation(line: 3789, column: 4, scope: !5278)
!5313 = !DILocation(line: 3791, column: 14, scope: !5278)
!5314 = !DILocation(line: 3792, column: 4, scope: !5276)
!5315 = !DILocation(line: 3792, column: 4, scope: !5277)
!5316 = !DILocation(line: 3793, column: 4, scope: !5278)
!5317 = !DILocation(line: 3794, column: 4, scope: !5278)
!5318 = distinct !{!5318, !5282, !5319}
!5319 = !DILocation(line: 3799, column: 5, scope: !5248)
!5320 = !DILocation(line: 3803, column: 3, scope: !5248)
!5321 = !DILocation(line: 3809, column: 17, scope: !5264)
!5322 = !DILocation(line: 3810, column: 7, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 3810, column: 7)
!5324 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3810, column: 7)
!5325 = !DILocation(line: 3810, column: 7, scope: !5324)
!5326 = !DILocation(line: 3811, column: 7, scope: !5264)
!5327 = !DILocation(line: 3812, column: 7, scope: !5264)
!5328 = !DILocation(line: 3814, column: 17, scope: !5264)
!5329 = !DILocation(line: 3815, column: 7, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 3815, column: 7)
!5331 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3815, column: 7)
!5332 = !DILocation(line: 3815, column: 7, scope: !5331)
!5333 = !DILocation(line: 3816, column: 7, scope: !5264)
!5334 = !DILocation(line: 3817, column: 7, scope: !5264)
!5335 = !DILocation(line: 3819, column: 17, scope: !5264)
!5336 = !DILocation(line: 3820, column: 7, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 3820, column: 7)
!5338 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3820, column: 7)
!5339 = !DILocation(line: 3820, column: 7, scope: !5338)
!5340 = !DILocation(line: 3821, column: 7, scope: !5264)
!5341 = !DILocation(line: 3822, column: 7, scope: !5264)
!5342 = !DILocation(line: 3824, column: 17, scope: !5264)
!5343 = !DILocation(line: 3825, column: 7, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 3825, column: 7)
!5345 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3825, column: 7)
!5346 = !DILocation(line: 3825, column: 7, scope: !5345)
!5347 = !DILocation(line: 3826, column: 7, scope: !5264)
!5348 = !DILocation(line: 3827, column: 7, scope: !5264)
!5349 = !DILocation(line: 3829, column: 17, scope: !5264)
!5350 = !DILocation(line: 3830, column: 7, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 3830, column: 7)
!5352 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3830, column: 7)
!5353 = !DILocation(line: 3830, column: 7, scope: !5352)
!5354 = !DILocation(line: 3831, column: 7, scope: !5264)
!5355 = !DILocation(line: 3832, column: 7, scope: !5264)
!5356 = !DILocation(line: 3834, column: 17, scope: !5264)
!5357 = !DILocation(line: 3835, column: 7, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 3835, column: 7)
!5359 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3835, column: 7)
!5360 = !DILocation(line: 3835, column: 7, scope: !5359)
!5361 = !DILocation(line: 3836, column: 7, scope: !5264)
!5362 = !DILocation(line: 3838, column: 7, scope: !5264)
!5363 = !DILocation(line: 3840, column: 17, scope: !5264)
!5364 = !DILocation(line: 3841, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 3841, column: 7)
!5366 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3841, column: 7)
!5367 = !DILocation(line: 3841, column: 7, scope: !5366)
!5368 = !DILocation(line: 3842, column: 7, scope: !5264)
!5369 = !DILocation(line: 3844, column: 7, scope: !5264)
!5370 = !DILocation(line: 3846, column: 17, scope: !5264)
!5371 = !DILocation(line: 3847, column: 7, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 3847, column: 7)
!5373 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3847, column: 7)
!5374 = !DILocation(line: 3847, column: 7, scope: !5373)
!5375 = !DILocation(line: 3848, column: 7, scope: !5264)
!5376 = !DILocation(line: 3850, column: 7, scope: !5264)
!5377 = !DILocation(line: 3852, column: 17, scope: !5264)
!5378 = !DILocation(line: 3853, column: 7, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 3853, column: 7)
!5380 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3853, column: 7)
!5381 = !DILocation(line: 3853, column: 7, scope: !5380)
!5382 = !DILocation(line: 3854, column: 7, scope: !5264)
!5383 = !DILocation(line: 3856, column: 7, scope: !5264)
!5384 = !DILocation(line: 3858, column: 17, scope: !5264)
!5385 = !DILocation(line: 3859, column: 7, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 3859, column: 7)
!5387 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3859, column: 7)
!5388 = !DILocation(line: 3859, column: 7, scope: !5387)
!5389 = !DILocation(line: 3860, column: 7, scope: !5264)
!5390 = !DILocation(line: 3862, column: 7, scope: !5264)
!5391 = !DILocation(line: 3864, column: 17, scope: !5264)
!5392 = !DILocation(line: 3865, column: 7, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 3865, column: 7)
!5394 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3865, column: 7)
!5395 = !DILocation(line: 3865, column: 7, scope: !5394)
!5396 = !DILocation(line: 3866, column: 7, scope: !5264)
!5397 = !DILocation(line: 3868, column: 7, scope: !5264)
!5398 = !DILocation(line: 3870, column: 17, scope: !5264)
!5399 = !DILocation(line: 3871, column: 12, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3871, column: 11)
!5401 = !DILocation(line: 3871, column: 11, scope: !5264)
!5402 = !DILocation(line: 3877, column: 17, scope: !5264)
!5403 = !DILocation(line: 3878, column: 11, scope: !5263)
!5404 = !DILocation(line: 3878, column: 21, scope: !5263)
!5405 = !DILocation(line: 3878, column: 11, scope: !5264)
!5406 = !DILocation(line: 3881, column: 14, scope: !5262)
!5407 = !DILocation(line: 0, scope: !5262)
!5408 = !DILocation(line: 3882, column: 9, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 3882, column: 4)
!5410 = !DILocation(line: 3883, column: 11, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 3882, column: 4)
!5412 = !DILocation(line: 3883, column: 37, scope: !5411)
!5413 = !DILocation(line: 3883, column: 40, scope: !5411)
!5414 = !DILocation(line: 3883, column: 50, scope: !5411)
!5415 = !DILocation(line: 3883, column: 63, scope: !5411)
!5416 = !DILocation(line: 0, scope: !5411)
!5417 = !DILocation(line: 3882, column: 4, scope: !5409)
!5418 = !DILocation(line: 3885, column: 6, scope: !5411)
!5419 = !DILocation(line: 3885, column: 13, scope: !5411)
!5420 = !DILocation(line: 3884, column: 19, scope: !5411)
!5421 = !DILocation(line: 3884, column: 24, scope: !5411)
!5422 = !DILocation(line: 3882, column: 4, scope: !5411)
!5423 = distinct !{!5423, !5417, !5424}
!5424 = !DILocation(line: 3885, column: 17, scope: !5409)
!5425 = !DILocation(line: 3886, column: 18, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 3886, column: 8)
!5427 = !DILocation(line: 3886, column: 8, scope: !5262)
!5428 = !DILocation(line: 3891, column: 4, scope: !5262)
!5429 = !DILocation(line: 3891, column: 11, scope: !5262)
!5430 = !DILocation(line: 3892, column: 14, scope: !5262)
!5431 = !DILocation(line: 3893, column: 2, scope: !5263)
!5432 = !DILocation(line: 3896, column: 4, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 3895, column: 2)
!5434 = !DILocation(line: 3897, column: 4, scope: !5433)
!5435 = !DILocation(line: 3897, column: 11, scope: !5433)
!5436 = !DILocation(line: 3898, column: 16, scope: !5433)
!5437 = !DILocation(line: 3898, column: 13, scope: !5433)
!5438 = !DILocation(line: 3900, column: 7, scope: !5264)
!5439 = !DILocation(line: 3901, column: 32, scope: !5264)
!5440 = !DILocation(line: 3901, column: 7, scope: !5264)
!5441 = !DILocation(line: 3902, column: 7, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 3902, column: 7)
!5443 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 3902, column: 7)
!5444 = !DILocation(line: 3902, column: 7, scope: !5443)
!5445 = !DILocation(line: 3903, column: 7, scope: !5264)
!5446 = !DILocation(line: 3904, column: 7, scope: !5264)
!5447 = !DILocation(line: 3919, column: 22, scope: !5266)
!5448 = !DILocation(line: 0, scope: !5266)
!5449 = !DILocation(line: 3920, column: 9, scope: !5266)
!5450 = !DILocation(line: 3921, column: 9, scope: !5266)
!5451 = !DILocation(line: 3922, column: 13, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 3922, column: 13)
!5453 = !DILocation(line: 3922, column: 13, scope: !5266)
!5454 = !DILocation(line: 3923, column: 39, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 3922, column: 58)
!5456 = !DILocation(line: 3923, column: 42, scope: !5455)
!5457 = !DILocation(line: 3923, column: 11, scope: !5455)
!5458 = !DILocation(line: 3924, column: 11, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 3924, column: 11)
!5460 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 3924, column: 11)
!5461 = !DILocation(line: 3924, column: 11, scope: !5460)
!5462 = !DILocation(line: 3925, column: 11, scope: !5455)
!5463 = !DILocation(line: 3926, column: 9, scope: !5455)
!5464 = !DILocation(line: 3929, column: 9, scope: !5266)
!5465 = !DILocation(line: 3931, column: 7, scope: !5264)
!5466 = !DILocation(line: 3934, column: 9, scope: !5269)
!5467 = !DILocation(line: 0, scope: !5269)
!5468 = !DILocation(line: 3935, column: 9, scope: !5269)
!5469 = !DILocation(line: 3936, column: 19, scope: !5269)
!5470 = !DILocation(line: 3937, column: 9, scope: !5269)
!5471 = !DILocation(line: 3938, column: 9, scope: !5269)
!5472 = !DILocation(line: 3940, column: 7, scope: !5264)
!5473 = !DILocation(line: 3943, column: 7, scope: !5264)
!5474 = !DILocation(line: 3946, column: 10, scope: !5248)
!5475 = !DILocation(line: 3947, column: 1, scope: !5248)
!5476 = !DILocation(line: 3946, column: 3, scope: !5248)
