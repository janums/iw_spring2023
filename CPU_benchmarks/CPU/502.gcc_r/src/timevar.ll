; ModuleID = 'timevar.bc'
source_filename = "timevar.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timevar_def = type { %struct.timevar_time_def, %struct.timevar_time_def, i8*, i8 }
%struct.timevar_time_def = type { double, double, double, i32 }
%struct.timevar_stack_def = type { %struct.timevar_def*, %struct.timevar_stack_def* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tms = type { i64, i64, i64, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@timevar_enable = common dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@timevars = internal global [172 x %struct.timevar_def] zeroinitializer, align 16, !dbg !223
@.str = private unnamed_addr constant [11 x i8] c"total time\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"garbage collection\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dump files\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"callgraph construction\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"callgraph optimization\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ipa cp\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ipa lto gimple I/O\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ipa lto decl I/O\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ipa lto cgraph I/O\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"lto\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"whopr wpa\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"whopr wpa I/O\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"whopr ltrans\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"whopr wpa fixup\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"whopr wpa->ltrans\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"ipa reference\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"ipa pure const\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ipa type escape\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"ipa points-to\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"ipa SRA\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"ipa free lang data\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"cfg construction\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"cfg cleanup\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"CFG verifier\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"trivially dead code\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"life analysis\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"life info update\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"df scan insns\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"df multiple defs\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"df reaching defs\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"df live regs\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"df live&initialized regs\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"df uninitialized regs 2\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"df use-def / def-use chains\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"df live byte regs\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"df reg dead/unused notes\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"register information\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"alias analysis\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"alias stmt walking\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"register scan\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"rebuild jump labels\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"preprocessing\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"lexical analysis\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"parser\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"name lookup\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"inline heuristics\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"integration\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"tree gimplify\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"tree eh\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"tree CFG construction\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"tree CFG cleanup\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"tree VRP\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"tree copy propagation\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"tree store copy prop\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"tree find ref. vars\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"tree PTA\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"tree PHI insertion\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"tree SSA rewrite\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"tree SSA other\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"tree SSA incremental\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"tree operand scan\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"dominator optimization\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"tree SRA\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"tree STORE-CCP\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"tree CCP\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"tree PHI const/copy prop\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"tree split crit edges\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"tree reassociation\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"tree PRE\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"tree redundant PHIs\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"tree FRE\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"tree code sinking\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"tree linearize phis\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"tree forward propagate\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"tree phiprop\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"tree conservative DCE\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"tree aggressive DCE\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"tree buildin call DCE\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"tree DSE\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"PHI merge\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"tree loop optimization\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"tree loop bounds\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"tree loop invariant motion\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"tree canonical iv\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"scev constant prop\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"tree loop unswitching\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"complete unrolling\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"tree parallelize loops\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"tree vectorization\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"tree slp vectorization\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"Graphite loop transforms\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"Graphite data dep analysis\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"Graphite code generation\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"tree loop linear\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"tree loop distribution\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"tree check data dependences\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"tree prefetching\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"tree iv optimization\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"predictive commoning\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"tree loop init\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"tree loop fini\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"tree copy headers\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"tree SSA uncprop\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"tree SSA to normal\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"tree NRV optimization\00", align 1
@.str.105 = private unnamed_addr constant [23 x i8] c"tree rename SSA copies\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"tree SSA verifier\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"tree STMT verifier\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"tree switch initialization conversion\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"callgraph verifier\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"dominance frontiers\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"dominance computation\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"control dependences\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"overload resolution\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"template instantiation\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"varconst\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"lower subreg\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"forward prop\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"CSE\00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"dead code elimination\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"dead store elim1\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"dead store elim2\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"loop analysis\00", align 1
@.str.125 = private unnamed_addr constant [22 x i8] c"loop invariant motion\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"loop unswitching\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"loop unrolling\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"loop doloop\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"CPROP\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"PRE\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"code hoisting\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"LSM\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"tracer\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"web\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"auto inc dec\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"CSE 2\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"branch prediction\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"value profile opts\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"combiner\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"if-conversion\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"regmove\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"mode switching\00", align 1
@.str.143 = private unnamed_addr constant [22 x i8] c"sms modulo scheduling\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"scheduling\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"local alloc\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"global alloc\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"integrated RA\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"reload CSE regs\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"sequence abstraction\00", align 1
@.str.151 = private unnamed_addr constant [22 x i8] c"load CSE after reload\00", align 1
@.str.152 = private unnamed_addr constant [23 x i8] c"thread pro- & epilogue\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"if-conversion 2\00", align 1
@.str.154 = private unnamed_addr constant [26 x i8] c"combine stack adjustments\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"peephole 2\00", align 1
@.str.156 = private unnamed_addr constant [17 x i8] c"rename registers\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"hard reg cprop\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"scheduling 2\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"machine dep reorg\00", align 1
@.str.160 = private unnamed_addr constant [19 x i8] c"delay branch sched\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"reorder blocks\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"shorten branches\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"reg stack\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"symout\00", align 1
@.str.166 = private unnamed_addr constant [18 x i8] c"variable tracking\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"tree if-combine\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"plugin initialization\00", align 1
@.str.169 = private unnamed_addr constant [17 x i8] c"plugin execution\00", align 1
@.str.170 = private unnamed_addr constant [20 x i8] c"rest of compilation\00", align 1
@ticks_to_msec = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !216
@.str.171 = private unnamed_addr constant [10 x i8] c"timevar.c\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@stack = internal unnamed_addr global %struct.timevar_stack_def* null, align 8, !dbg !228
@start_time = internal global %struct.timevar_time_def zeroinitializer, align 8, !dbg !232
@unused_stack_instances = internal unnamed_addr global %struct.timevar_stack_def* null, align 8, !dbg !230
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.173 = private unnamed_addr constant [28 x i8] c"\0AExecution times (seconds)\0A\00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c" %-22s:\00", align 1
@.str.175 = private unnamed_addr constant [20 x i8] c"%7.2f (%2.0f%%) usr\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"%7.2f (%2.0f%%) sys\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"%7.2f (%2.0f%%) wall\00", align 1
@.str.178 = private unnamed_addr constant [21 x i8] c"%8u kB (%2.0f%%) ggc\00", align 1
@.str.179 = private unnamed_addr constant [25 x i8] c" TOTAL                 :\00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c"%7.2f          \00", align 1
@.str.181 = private unnamed_addr constant [17 x i8] c"%7.2f           \00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"%8u kB\0A\00", align 1
@.str.183 = private unnamed_addr constant [31 x i8] c"time in %s: %ld.%06ld (%ld%%)\0A\00", align 1
@timevar_ggc_mem_total = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !218

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !238 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !254
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !255
  ret i32 %call, !dbg !256
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !257 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !261
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !262
  ret i32 %call, !dbg !263
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !264 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !323, metadata !DIExpression()), !dbg !324
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !325
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !325
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !325
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !325
  %cmp = icmp uge i8* %0, %1, !dbg !325
  %conv1 = zext i1 %cmp to i64, !dbg !325
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !325
  %tobool = icmp eq i64 %expval, 0, !dbg !325
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !325

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !325
  br label %cond.end, !dbg !325

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !325
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !325
  %2 = load i8, i8* %0, align 1, !dbg !325
  %conv3 = zext i8 %2 to i32, !dbg !325
  br label %cond.end, !dbg !325

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !325
  ret i32 %cond, !dbg !326
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !327 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !329, metadata !DIExpression()), !dbg !330
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !331
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !331
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !331
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !331
  %cmp = icmp uge i8* %0, %1, !dbg !331
  %conv1 = zext i1 %cmp to i64, !dbg !331
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !331
  %tobool = icmp eq i64 %expval, 0, !dbg !331
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !331

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !331
  br label %cond.end, !dbg !331

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !331
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !331
  %2 = load i8, i8* %0, align 1, !dbg !331
  %conv3 = zext i8 %2 to i32, !dbg !331
  br label %cond.end, !dbg !331

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !331
  ret i32 %cond, !dbg !332
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !333 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !334
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !334
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !334
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !334
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !334
  %cmp = icmp uge i8* %1, %2, !dbg !334
  %conv1 = zext i1 %cmp to i64, !dbg !334
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !334
  %tobool = icmp eq i64 %expval, 0, !dbg !334
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !334

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !334
  br label %cond.end, !dbg !334

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !334
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !334
  %3 = load i8, i8* %1, align 1, !dbg !334
  %conv3 = zext i8 %3 to i32, !dbg !334
  br label %cond.end, !dbg !334

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !334
  ret i32 %cond, !dbg !335
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !336 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !342
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !343
  ret i32 %call, !dbg !344
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !345 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !349, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !350, metadata !DIExpression()), !dbg !351
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !352
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !352
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !352
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !352
  %cmp = icmp uge i8* %0, %1, !dbg !352
  %conv1 = zext i1 %cmp to i64, !dbg !352
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !352
  %tobool = icmp eq i64 %expval, 0, !dbg !352
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !352

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !352
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !352
  br label %cond.end, !dbg !352

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !352
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !352
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !352
  store i8 %conv2, i8* %0, align 1, !dbg !352
  %conv6 = and i32 %__c, 255, !dbg !352
  br label %cond.end, !dbg !352

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !352
  ret i32 %cond, !dbg !353
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !354 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !356, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !357, metadata !DIExpression()), !dbg !358
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !359
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !359
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !359
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !359
  %cmp = icmp uge i8* %0, %1, !dbg !359
  %conv1 = zext i1 %cmp to i64, !dbg !359
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !359
  %tobool = icmp eq i64 %expval, 0, !dbg !359
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !359

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !359
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !359
  br label %cond.end, !dbg !359

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !359
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !359
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !359
  store i8 %conv2, i8* %0, align 1, !dbg !359
  %conv6 = and i32 %__c, 255, !dbg !359
  br label %cond.end, !dbg !359

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !359
  ret i32 %cond, !dbg !360
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !361 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !365
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !365
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !365
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !365
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !365
  %cmp = icmp uge i8* %1, %2, !dbg !365
  %conv1 = zext i1 %cmp to i64, !dbg !365
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !365
  %tobool = icmp eq i64 %expval, 0, !dbg !365
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !365

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !365
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !365
  br label %cond.end, !dbg !365

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !365
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !365
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !365
  store i8 %conv4, i8* %1, align 1, !dbg !365
  %conv6 = and i32 %__c, 255, !dbg !365
  br label %cond.end, !dbg !365

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !365
  ret i32 %cond, !dbg !366
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !367 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !373, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i64* %__n, metadata !374, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !375, metadata !DIExpression()), !dbg !376
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !377
  ret i64 %call, !dbg !378
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !379 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !381, metadata !DIExpression()), !dbg !382
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !383
  %0 = load i32, i32* %_flags, align 8, !dbg !383
  %and = lshr i32 %0, 4, !dbg !383
  %and.lobit = and i32 %and, 1, !dbg !383
  ret i32 %and.lobit, !dbg !384
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !385 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !387, metadata !DIExpression()), !dbg !388
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !389
  %0 = load i32, i32* %_flags, align 8, !dbg !389
  %and = lshr i32 %0, 5, !dbg !389
  %and.lobit = and i32 %and, 1, !dbg !389
  ret i32 %and.lobit, !dbg !390
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !394, metadata !DIExpression()), !dbg !395
  %__c.off = add i32 %__c, 128, !dbg !396
  %0 = icmp ult i32 %__c.off, 384, !dbg !396
  br i1 %0, label %cond.true, label %cond.end, !dbg !396

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !397
  %1 = load i32*, i32** %call, align 8, !dbg !398
  %idxprom = sext i32 %__c to i64, !dbg !399
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !399
  %2 = load i32, i32* %arrayidx, align 4, !dbg !399
  br label %cond.end, !dbg !400

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !400
  ret i32 %cond, !dbg !401
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !402 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !404, metadata !DIExpression()), !dbg !405
  %__c.off = add i32 %__c, 128, !dbg !406
  %0 = icmp ult i32 %__c.off, 384, !dbg !406
  br i1 %0, label %cond.true, label %cond.end, !dbg !406

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !407
  %1 = load i32*, i32** %call, align 8, !dbg !408
  %idxprom = sext i32 %__c to i64, !dbg !409
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !409
  %2 = load i32, i32* %arrayidx, align 4, !dbg !409
  br label %cond.end, !dbg !410

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !410
  ret i32 %cond, !dbg !411
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !412 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !417, metadata !DIExpression()), !dbg !418
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !419
  %conv = trunc i64 %call to i32, !dbg !420
  ret i32 %conv, !dbg !421
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !422 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !426, metadata !DIExpression()), !dbg !427
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !428
  ret i64 %call, !dbg !429
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !430 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !435, metadata !DIExpression()), !dbg !436
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !437
  ret i64 %call, !dbg !438
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !439 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !450, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i8* %__base, metadata !451, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !452, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %__size, metadata !453, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !454, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 0, metadata !455, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !456, metadata !DIExpression()), !dbg !460
  br label %while.cond, !dbg !461

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !462
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !460
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !456, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !455, metadata !DIExpression()), !dbg !460
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !463
  br i1 %cmp, label %while.body, label %cleanup, !dbg !461

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !464
  %div = lshr i64 %add, 1, !dbg !466
  call void @llvm.dbg.value(metadata i64 %div, metadata !457, metadata !DIExpression()), !dbg !460
  %mul = mul i64 %div, %__size, !dbg !467
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !468
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !458, metadata !DIExpression()), !dbg !460
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !469
  call void @llvm.dbg.value(metadata i32 %call, metadata !459, metadata !DIExpression()), !dbg !460
  %cmp1 = icmp slt i32 %call, 0, !dbg !470
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !472

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !473
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !475

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !476
  call void @llvm.dbg.value(metadata i64 %add4, metadata !455, metadata !DIExpression()), !dbg !460
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !460
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !460
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !456, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !455, metadata !DIExpression()), !dbg !460
  br label %while.cond, !dbg !461, !llvm.loop !477

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !460
  ret i8* %retval.0, !dbg !479
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !480 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !485, metadata !DIExpression()), !dbg !486
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !487
  ret double %call, !dbg !488
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !489 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !498, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !499, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %base, metadata !500, metadata !DIExpression()), !dbg !501
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !502
  ret i64 %call, !dbg !503
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !504 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !510, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !511, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 %base, metadata !512, metadata !DIExpression()), !dbg !513
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !514
  ret i64 %call, !dbg !515
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !527, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !528, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 %base, metadata !529, metadata !DIExpression()), !dbg !530
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !531
  ret i64 %call, !dbg !532
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !533 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !537, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !538, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32 %base, metadata !539, metadata !DIExpression()), !dbg !540
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !541
  ret i64 %call, !dbg !542
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !543 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !585, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !586, metadata !DIExpression()), !dbg !587
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !588
  ret i32 %call, !dbg !589
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !590 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !592, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !593, metadata !DIExpression()), !dbg !594
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !595
  ret i32 %call, !dbg !596
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !597 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !601, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !602, metadata !DIExpression()), !dbg !603
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !604
  ret i32 %call, !dbg !605
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !606 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !610, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !611, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !612, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !613, metadata !DIExpression()), !dbg !614
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !615
  ret i32 %call, !dbg !616
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !617 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !621, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !622, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !623, metadata !DIExpression()), !dbg !624
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !623, metadata !DIExpression(DW_OP_deref)), !dbg !624
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !625
  ret i32 %call, !dbg !626
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !627 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !631, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i8* %__path, metadata !632, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !633, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !634, metadata !DIExpression()), !dbg !635
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !634, metadata !DIExpression(DW_OP_deref)), !dbg !635
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !636
  ret i32 %call, !dbg !637
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !638 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !662, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !663, metadata !DIExpression()), !dbg !664
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !665
  ret i32 %call, !dbg !666
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !667 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !669, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !670, metadata !DIExpression()), !dbg !671
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !672
  ret i32 %call, !dbg !673
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !674 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !678, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !679, metadata !DIExpression()), !dbg !680
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !681
  ret i32 %call, !dbg !682
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !683 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !687, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !688, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !689, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !690, metadata !DIExpression()), !dbg !691
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !692
  ret i32 %call, !dbg !693
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @timevar_init() local_unnamed_addr #4 !dbg !694 {
entry:
  store i8 1, i8* @timevar_enable, align 1, !dbg !697
  %call = tail call i8* @memset(i8* bitcast ([172 x %struct.timevar_def]* @timevars to i8*), i32 0, i64 13760) #6, !dbg !698
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 1, i32 2), align 16, !dbg !699
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 2, i32 2), align 16, !dbg !702
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 3, i32 2), align 16, !dbg !703
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 4, i32 2), align 16, !dbg !704
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 5, i32 2), align 16, !dbg !705
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 6, i32 2), align 16, !dbg !706
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 7, i32 2), align 16, !dbg !707
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 8, i32 2), align 16, !dbg !708
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 9, i32 2), align 16, !dbg !709
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 10, i32 2), align 16, !dbg !710
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 11, i32 2), align 16, !dbg !711
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 12, i32 2), align 16, !dbg !712
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 13, i32 2), align 16, !dbg !713
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 14, i32 2), align 16, !dbg !714
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 15, i32 2), align 16, !dbg !715
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 16, i32 2), align 16, !dbg !716
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 17, i32 2), align 16, !dbg !717
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 18, i32 2), align 16, !dbg !718
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 19, i32 2), align 16, !dbg !719
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 20, i32 2), align 16, !dbg !720
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 21, i32 2), align 16, !dbg !721
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 22, i32 2), align 16, !dbg !722
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 23, i32 2), align 16, !dbg !723
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 24, i32 2), align 16, !dbg !724
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 25, i32 2), align 16, !dbg !725
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 26, i32 2), align 16, !dbg !726
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 27, i32 2), align 16, !dbg !727
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 28, i32 2), align 16, !dbg !728
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 29, i32 2), align 16, !dbg !729
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 30, i32 2), align 16, !dbg !730
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 31, i32 2), align 16, !dbg !731
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 32, i32 2), align 16, !dbg !732
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 33, i32 2), align 16, !dbg !733
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 34, i32 2), align 16, !dbg !734
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 35, i32 2), align 16, !dbg !735
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 36, i32 2), align 16, !dbg !736
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 37, i32 2), align 16, !dbg !737
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 38, i32 2), align 16, !dbg !738
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 39, i32 2), align 16, !dbg !739
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 40, i32 2), align 16, !dbg !740
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 41, i32 2), align 16, !dbg !741
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 42, i32 2), align 16, !dbg !742
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 43, i32 2), align 16, !dbg !743
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 44, i32 2), align 16, !dbg !744
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 45, i32 2), align 16, !dbg !745
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 46, i32 2), align 16, !dbg !746
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 47, i32 2), align 16, !dbg !747
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 48, i32 2), align 16, !dbg !748
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 49, i32 2), align 16, !dbg !749
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 50, i32 2), align 16, !dbg !750
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 51, i32 2), align 16, !dbg !751
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 52, i32 2), align 16, !dbg !752
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 53, i32 2), align 16, !dbg !753
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 54, i32 2), align 16, !dbg !754
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 55, i32 2), align 16, !dbg !755
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 56, i32 2), align 16, !dbg !756
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 57, i32 2), align 16, !dbg !757
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 58, i32 2), align 16, !dbg !758
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 59, i32 2), align 16, !dbg !759
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 60, i32 2), align 16, !dbg !760
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 61, i32 2), align 16, !dbg !761
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 62, i32 2), align 16, !dbg !762
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 63, i32 2), align 16, !dbg !763
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 64, i32 2), align 16, !dbg !764
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 65, i32 2), align 16, !dbg !765
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 66, i32 2), align 16, !dbg !766
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 67, i32 2), align 16, !dbg !767
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 68, i32 2), align 16, !dbg !768
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 69, i32 2), align 16, !dbg !769
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 70, i32 2), align 16, !dbg !770
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 71, i32 2), align 16, !dbg !771
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 72, i32 2), align 16, !dbg !772
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 73, i32 2), align 16, !dbg !773
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 74, i32 2), align 16, !dbg !774
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 75, i32 2), align 16, !dbg !775
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 76, i32 2), align 16, !dbg !776
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 77, i32 2), align 16, !dbg !777
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 78, i32 2), align 16, !dbg !778
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 79, i32 2), align 16, !dbg !779
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 80, i32 2), align 16, !dbg !780
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 81, i32 2), align 16, !dbg !781
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 82, i32 2), align 16, !dbg !782
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 83, i32 2), align 16, !dbg !783
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 84, i32 2), align 16, !dbg !784
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 85, i32 2), align 16, !dbg !785
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 86, i32 2), align 16, !dbg !786
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 87, i32 2), align 16, !dbg !787
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 88, i32 2), align 16, !dbg !788
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 89, i32 2), align 16, !dbg !789
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 90, i32 2), align 16, !dbg !790
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 91, i32 2), align 16, !dbg !791
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.91, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 92, i32 2), align 16, !dbg !792
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.92, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 93, i32 2), align 16, !dbg !793
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 94, i32 2), align 16, !dbg !794
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 95, i32 2), align 16, !dbg !795
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 96, i32 2), align 16, !dbg !796
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 97, i32 2), align 16, !dbg !797
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 98, i32 2), align 16, !dbg !798
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 99, i32 2), align 16, !dbg !799
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.99, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 100, i32 2), align 16, !dbg !800
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 101, i32 2), align 16, !dbg !801
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.101, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 102, i32 2), align 16, !dbg !802
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.102, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 103, i32 2), align 16, !dbg !803
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.103, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 104, i32 2), align 16, !dbg !804
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 105, i32 2), align 16, !dbg !805
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.105, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 106, i32 2), align 16, !dbg !806
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.106, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 107, i32 2), align 16, !dbg !807
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.107, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 108, i32 2), align 16, !dbg !808
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.108, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 109, i32 2), align 16, !dbg !809
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.109, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 110, i32 2), align 16, !dbg !810
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.110, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 111, i32 2), align 16, !dbg !811
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.111, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 112, i32 2), align 16, !dbg !812
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.112, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 113, i32 2), align 16, !dbg !813
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.113, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 114, i32 2), align 16, !dbg !814
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.114, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 115, i32 2), align 16, !dbg !815
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 116, i32 2), align 16, !dbg !816
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 117, i32 2), align 16, !dbg !817
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 118, i32 2), align 16, !dbg !818
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 119, i32 2), align 16, !dbg !819
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 120, i32 2), align 16, !dbg !820
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 121, i32 2), align 16, !dbg !821
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.121, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 122, i32 2), align 16, !dbg !822
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 123, i32 2), align 16, !dbg !823
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.123, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 124, i32 2), align 16, !dbg !824
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 125, i32 2), align 16, !dbg !825
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.125, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 126, i32 2), align 16, !dbg !826
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.126, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 127, i32 2), align 16, !dbg !827
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.127, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 128, i32 2), align 16, !dbg !828
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 129, i32 2), align 16, !dbg !829
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 130, i32 2), align 16, !dbg !830
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 131, i32 2), align 16, !dbg !831
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.131, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 132, i32 2), align 16, !dbg !832
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 133, i32 2), align 16, !dbg !833
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 134, i32 2), align 16, !dbg !834
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 135, i32 2), align 16, !dbg !835
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 136, i32 2), align 16, !dbg !836
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 137, i32 2), align 16, !dbg !837
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 138, i32 2), align 16, !dbg !838
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.138, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 139, i32 2), align 16, !dbg !839
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 140, i32 2), align 16, !dbg !840
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.140, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 141, i32 2), align 16, !dbg !841
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 142, i32 2), align 16, !dbg !842
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 143, i32 2), align 16, !dbg !843
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.143, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 144, i32 2), align 16, !dbg !844
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 145, i32 2), align 16, !dbg !845
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 146, i32 2), align 16, !dbg !846
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 147, i32 2), align 16, !dbg !847
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 148, i32 2), align 16, !dbg !848
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 149, i32 2), align 16, !dbg !849
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.149, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 150, i32 2), align 16, !dbg !850
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.150, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 151, i32 2), align 16, !dbg !851
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.151, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 152, i32 2), align 16, !dbg !852
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.152, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 153, i32 2), align 16, !dbg !853
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.153, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 154, i32 2), align 16, !dbg !854
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.154, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 155, i32 2), align 16, !dbg !855
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 156, i32 2), align 16, !dbg !856
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.156, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 157, i32 2), align 16, !dbg !857
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.157, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 158, i32 2), align 16, !dbg !858
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.158, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 159, i32 2), align 16, !dbg !859
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.159, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 160, i32 2), align 16, !dbg !860
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.160, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 161, i32 2), align 16, !dbg !861
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.161, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 162, i32 2), align 16, !dbg !862
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.162, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 163, i32 2), align 16, !dbg !863
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.163, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 164, i32 2), align 16, !dbg !864
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.164, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 165, i32 2), align 16, !dbg !865
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.165, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 166, i32 2), align 16, !dbg !866
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.166, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 167, i32 2), align 16, !dbg !867
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.167, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 168, i32 2), align 16, !dbg !868
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.168, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 169, i32 2), align 16, !dbg !869
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.169, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 170, i32 2), align 16, !dbg !870
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.170, i64 0, i64 0), i8** getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 171, i32 2), align 16, !dbg !871
  %call1 = tail call i64 @sysconf(i32 2) #6, !dbg !872
  %conv = sitofp i64 %call1 to double, !dbg !872
  %div = fdiv double 1.000000e+00, %conv, !dbg !872
  store double %div, double* @ticks_to_msec, align 8, !dbg !874
  ret void, !dbg !875
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

declare dso_local i64 @sysconf(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @timevar_push_1(i32 %timevar) local_unnamed_addr #4 !dbg !876 {
entry:
  %now = alloca %struct.timevar_time_def, align 8
  call void @llvm.dbg.value(metadata i32 %timevar, metadata !880, metadata !DIExpression()), !dbg !884
  %idxprom = zext i32 %timevar to i64, !dbg !885
  %arrayidx = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %idxprom, !dbg !885
  call void @llvm.dbg.value(metadata %struct.timevar_def* %arrayidx, metadata !881, metadata !DIExpression()), !dbg !884
  %0 = bitcast %struct.timevar_time_def* %now to i8*, !dbg !886
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !886
  %used = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %idxprom, i32 3, !dbg !887
  %bf.load = load i8, i8* %used, align 8, !dbg !888
  %bf.set = or i8 %bf.load, 2, !dbg !888
  store i8 %bf.set, i8* %used, align 8, !dbg !888
  %bf.clear2 = and i8 %bf.load, 1, !dbg !889
  %tobool = icmp eq i8 %bf.clear2, 0, !dbg !889
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !889

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i64 0, i64 0), i32 275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i64 0, i64 0)) #6, !dbg !889
  br label %cond.end, !dbg !889

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %now, metadata !883, metadata !DIExpression(DW_OP_deref)), !dbg !884
  call fastcc void @get_time(%struct.timevar_time_def* nonnull %now) #8, !dbg !890
  %1 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8, !dbg !891
  %tobool3 = icmp eq %struct.timevar_stack_def* %1, null, !dbg !891
  br i1 %tobool3, label %if.end, label %if.then, !dbg !893

if.then:                                          ; preds = %cond.end
  %timevar4 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %1, i64 0, i32 0, !dbg !894
  %2 = load %struct.timevar_def*, %struct.timevar_def** %timevar4, align 8, !dbg !894
  %elapsed = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %2, i64 0, i32 0, !dbg !895
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %now, metadata !883, metadata !DIExpression(DW_OP_deref)), !dbg !884
  call fastcc void @timevar_accumulate(%struct.timevar_time_def* %elapsed, %struct.timevar_time_def* nonnull @start_time, %struct.timevar_time_def* nonnull %now) #8, !dbg !896
  br label %if.end, !dbg !896

if.end:                                           ; preds = %cond.end, %if.then
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timevar_time_def* @start_time to i8*), i8* nonnull align 8 %0, i64 32, i1 false), !dbg !897
  %3 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @unused_stack_instances, align 8, !dbg !898
  %cmp = icmp eq %struct.timevar_stack_def* %3, null, !dbg !900
  br i1 %cmp, label %if.else, label %if.then5, !dbg !901

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.timevar_stack_def* %3, metadata !882, metadata !DIExpression()), !dbg !884
  %next = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %3, i64 0, i32 1, !dbg !902
  %4 = bitcast %struct.timevar_stack_def** %next to i64*, !dbg !902
  %5 = load i64, i64* %4, align 8, !dbg !902
  store i64 %5, i64* bitcast (%struct.timevar_stack_def** @unused_stack_instances to i64*), align 8, !dbg !904
  br label %if.end6, !dbg !905

if.else:                                          ; preds = %if.end
  %call = call i8* @xmalloc(i64 16) #6, !dbg !906
  %6 = bitcast i8* %call to %struct.timevar_stack_def*, !dbg !906
  call void @llvm.dbg.value(metadata %struct.timevar_stack_def* %6, metadata !882, metadata !DIExpression()), !dbg !884
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %context.0 = phi %struct.timevar_stack_def* [ %3, %if.then5 ], [ %6, %if.else ], !dbg !907
  call void @llvm.dbg.value(metadata %struct.timevar_stack_def* %context.0, metadata !882, metadata !DIExpression()), !dbg !884
  %timevar7 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %context.0, i64 0, i32 0, !dbg !908
  store %struct.timevar_def* %arrayidx, %struct.timevar_def** %timevar7, align 8, !dbg !909
  %7 = load i64, i64* bitcast (%struct.timevar_stack_def** @stack to i64*), align 8, !dbg !910
  %next8 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %context.0, i64 0, i32 1, !dbg !911
  %8 = bitcast %struct.timevar_stack_def** %next8 to i64*, !dbg !912
  store i64 %7, i64* %8, align 8, !dbg !912
  store %struct.timevar_stack_def* %context.0, %struct.timevar_stack_def** @stack, align 8, !dbg !913
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !914
  ret void, !dbg !914
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @get_time(%struct.timevar_time_def* %now) unnamed_addr #4 !dbg !915 {
entry:
  %tms = alloca %struct.tms, align 8
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %now, metadata !920, metadata !DIExpression()), !dbg !933
  %user = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %now, i64 0, i32 0, !dbg !934
  store double 0.000000e+00, double* %user, align 8, !dbg !935
  %sys = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %now, i64 0, i32 1, !dbg !936
  store double 0.000000e+00, double* %sys, align 8, !dbg !937
  %wall = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %now, i64 0, i32 2, !dbg !938
  store double 0.000000e+00, double* %wall, align 8, !dbg !939
  %0 = load i64, i64* @timevar_ggc_mem_total, align 8, !dbg !940
  %conv = trunc i64 %0 to i32, !dbg !940
  %ggc_mem = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %now, i64 0, i32 3, !dbg !941
  store i32 %conv, i32* %ggc_mem, align 8, !dbg !942
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !943
  %tobool = icmp eq i8 %1, 0, !dbg !943
  br i1 %tobool, label %return, label %if.end, !dbg !945

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.tms* %tms to i8*, !dbg !946
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !946
  call void @llvm.dbg.value(metadata %struct.tms* %tms, metadata !921, metadata !DIExpression(DW_OP_deref)), !dbg !947
  %call = call i64 @times(%struct.tms* nonnull %tms) #6, !dbg !948
  %conv1 = sitofp i64 %call to double, !dbg !948
  %3 = load double, double* @ticks_to_msec, align 8, !dbg !949
  %mul = fmul double %3, %conv1, !dbg !950
  store double %mul, double* %wall, align 8, !dbg !951
  %tms_utime = getelementptr inbounds %struct.tms, %struct.tms* %tms, i64 0, i32 0, !dbg !952
  %4 = load i64, i64* %tms_utime, align 8, !dbg !952
  %conv3 = sitofp i64 %4 to double, !dbg !953
  %mul4 = fmul double %3, %conv3, !dbg !954
  store double %mul4, double* %user, align 8, !dbg !955
  %tms_stime = getelementptr inbounds %struct.tms, %struct.tms* %tms, i64 0, i32 1, !dbg !956
  %5 = load i64, i64* %tms_stime, align 8, !dbg !956
  %conv6 = sitofp i64 %5 to double, !dbg !957
  %6 = load double, double* @ticks_to_msec, align 8, !dbg !958
  %mul7 = fmul double %6, %conv6, !dbg !959
  store double %mul7, double* %sys, align 8, !dbg !960
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !961
  br label %return, !dbg !962

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !962
}

; Function Attrs: nounwind uwtable
define internal fastcc void @timevar_accumulate(%struct.timevar_time_def* %timer, %struct.timevar_time_def* %start_time, %struct.timevar_time_def* %stop_time) unnamed_addr #4 !dbg !963 {
entry:
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %timer, metadata !967, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %start_time, metadata !968, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %stop_time, metadata !969, metadata !DIExpression()), !dbg !970
  %user = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %stop_time, i64 0, i32 0, !dbg !971
  %0 = load double, double* %user, align 8, !dbg !971
  %user1 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %start_time, i64 0, i32 0, !dbg !972
  %1 = load double, double* %user1, align 8, !dbg !972
  %sub = fsub double %0, %1, !dbg !973
  %user2 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %timer, i64 0, i32 0, !dbg !974
  %2 = load double, double* %user2, align 8, !dbg !975
  %add = fadd double %2, %sub, !dbg !975
  store double %add, double* %user2, align 8, !dbg !975
  %sys = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %stop_time, i64 0, i32 1, !dbg !976
  %3 = load double, double* %sys, align 8, !dbg !976
  %sys3 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %start_time, i64 0, i32 1, !dbg !977
  %4 = load double, double* %sys3, align 8, !dbg !977
  %sub4 = fsub double %3, %4, !dbg !978
  %sys5 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %timer, i64 0, i32 1, !dbg !979
  %5 = load double, double* %sys5, align 8, !dbg !980
  %add6 = fadd double %5, %sub4, !dbg !980
  store double %add6, double* %sys5, align 8, !dbg !980
  %wall = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %stop_time, i64 0, i32 2, !dbg !981
  %6 = load double, double* %wall, align 8, !dbg !981
  %wall7 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %start_time, i64 0, i32 2, !dbg !982
  %7 = load double, double* %wall7, align 8, !dbg !982
  %sub8 = fsub double %6, %7, !dbg !983
  %wall9 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %timer, i64 0, i32 2, !dbg !984
  %8 = load double, double* %wall9, align 8, !dbg !985
  %add10 = fadd double %8, %sub8, !dbg !985
  store double %add10, double* %wall9, align 8, !dbg !985
  %ggc_mem = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %stop_time, i64 0, i32 3, !dbg !986
  %9 = load i32, i32* %ggc_mem, align 8, !dbg !986
  %ggc_mem11 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %start_time, i64 0, i32 3, !dbg !987
  %10 = load i32, i32* %ggc_mem11, align 8, !dbg !987
  %sub12 = sub i32 %9, %10, !dbg !988
  %ggc_mem13 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %timer, i64 0, i32 3, !dbg !989
  %11 = load i32, i32* %ggc_mem13, align 8, !dbg !990
  %add14 = add i32 %11, %sub12, !dbg !990
  store i32 %add14, i32* %ggc_mem13, align 8, !dbg !990
  ret void, !dbg !991
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @timevar_pop_1(i32 %timevar) local_unnamed_addr #4 !dbg !992 {
entry:
  %now = alloca %struct.timevar_time_def, align 8
  call void @llvm.dbg.value(metadata i32 %timevar, metadata !994, metadata !DIExpression()), !dbg !997
  %0 = bitcast %struct.timevar_time_def* %now to i8*, !dbg !998
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !998
  %1 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8, !dbg !999
  call void @llvm.dbg.value(metadata %struct.timevar_stack_def* %1, metadata !996, metadata !DIExpression()), !dbg !997
  %idxprom = zext i32 %timevar to i64, !dbg !1000
  %arrayidx = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %idxprom, !dbg !1000
  %timevar1 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %1, i64 0, i32 0, !dbg !1000
  %2 = load %struct.timevar_def*, %struct.timevar_def** %timevar1, align 8, !dbg !1000
  %cmp = icmp eq %struct.timevar_def* %arrayidx, %2, !dbg !1000
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1000

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i64 0, i64 0), i32 317, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i64 0, i64 0)) #6, !dbg !1000
  br label %cond.end, !dbg !1000

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %now, metadata !995, metadata !DIExpression(DW_OP_deref)), !dbg !997
  call fastcc void @get_time(%struct.timevar_time_def* nonnull %now) #8, !dbg !1001
  %3 = load %struct.timevar_def*, %struct.timevar_def** %timevar1, align 8, !dbg !1002
  %elapsed = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %3, i64 0, i32 0, !dbg !1003
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %now, metadata !995, metadata !DIExpression(DW_OP_deref)), !dbg !997
  call fastcc void @timevar_accumulate(%struct.timevar_time_def* %elapsed, %struct.timevar_time_def* nonnull @start_time, %struct.timevar_time_def* nonnull %now) #8, !dbg !1004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timevar_time_def* @start_time to i8*), i8* nonnull align 8 %0, i64 32, i1 false), !dbg !1005
  %4 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8, !dbg !1006
  %next = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %4, i64 0, i32 1, !dbg !1007
  %5 = bitcast %struct.timevar_stack_def** %next to i64*, !dbg !1007
  %6 = load i64, i64* %5, align 8, !dbg !1007
  store i64 %6, i64* bitcast (%struct.timevar_stack_def** @stack to i64*), align 8, !dbg !1008
  %7 = load i64, i64* bitcast (%struct.timevar_stack_def** @unused_stack_instances to i64*), align 8, !dbg !1009
  %next3 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %1, i64 0, i32 1, !dbg !1010
  %8 = bitcast %struct.timevar_stack_def** %next3 to i64*, !dbg !1011
  store i64 %7, i64* %8, align 8, !dbg !1011
  store %struct.timevar_stack_def* %1, %struct.timevar_stack_def** @unused_stack_instances, align 8, !dbg !1012
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1013
  ret void, !dbg !1013
}

; Function Attrs: nounwind uwtable
define dso_local void @timevar_start(i32 %timevar) local_unnamed_addr #4 !dbg !1014 {
entry:
  call void @llvm.dbg.value(metadata i32 %timevar, metadata !1016, metadata !DIExpression()), !dbg !1018
  %idxprom = zext i32 %timevar to i64, !dbg !1019
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !1020
  %tobool = icmp eq i8 %0, 0, !dbg !1020
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !1022

if.end:                                           ; preds = %entry
  %used = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %idxprom, i32 3, !dbg !1023
  %bf.load = load i8, i8* %used, align 8, !dbg !1024
  %bf.set = or i8 %bf.load, 2, !dbg !1024
  store i8 %bf.set, i8* %used, align 8, !dbg !1024
  %bf.clear2 = and i8 %bf.load, 1, !dbg !1025
  %tobool3 = icmp eq i8 %bf.clear2, 0, !dbg !1025
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !1025

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i64 0, i64 0), i32 355, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i64 0, i64 0)) #6, !dbg !1025
  %bf.load5.pre = load i8, i8* %used, align 8, !dbg !1026
  br label %cond.end, !dbg !1025

cond.end:                                         ; preds = %if.end, %cond.true
  %bf.load5 = phi i8 [ %bf.set, %if.end ], [ %bf.load5.pre, %cond.true ], !dbg !1026
  %bf.set7 = or i8 %bf.load5, 1, !dbg !1026
  store i8 %bf.set7, i8* %used, align 8, !dbg !1026
  %start_time = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %idxprom, i32 1, !dbg !1027
  tail call fastcc void @get_time(%struct.timevar_time_def* nonnull %start_time) #8, !dbg !1028
  br label %cleanup.cont, !dbg !1029

cleanup.cont:                                     ; preds = %entry, %cond.end
  ret void, !dbg !1029
}

; Function Attrs: nounwind uwtable
define dso_local void @timevar_stop(i32 %timevar) local_unnamed_addr #4 !dbg !1030 {
entry:
  %now = alloca %struct.timevar_time_def, align 8
  call void @llvm.dbg.value(metadata i32 %timevar, metadata !1032, metadata !DIExpression()), !dbg !1035
  %idxprom = zext i32 %timevar to i64, !dbg !1036
  %0 = bitcast %struct.timevar_time_def* %now to i8*, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1037
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !1038
  %tobool = icmp eq i8 %1, 0, !dbg !1038
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1040

if.end:                                           ; preds = %entry
  %standalone = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %idxprom, i32 3, !dbg !1041
  %bf.load = load i8, i8* %standalone, align 8, !dbg !1041
  %bf.clear = and i8 %bf.load, 1, !dbg !1041
  %tobool1 = icmp eq i8 %bf.clear, 0, !dbg !1041
  br i1 %tobool1, label %cond.true, label %cond.end, !dbg !1041

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i64 0, i64 0), i32 374, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i64 0, i64 0)) #6, !dbg !1041
  br label %cond.end, !dbg !1041

cond.end:                                         ; preds = %if.end, %cond.true
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %now, metadata !1034, metadata !DIExpression(DW_OP_deref)), !dbg !1035
  call fastcc void @get_time(%struct.timevar_time_def* nonnull %now) #8, !dbg !1042
  %elapsed = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %idxprom, i32 0, !dbg !1043
  %start_time = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %idxprom, i32 1, !dbg !1044
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %now, metadata !1034, metadata !DIExpression(DW_OP_deref)), !dbg !1035
  call fastcc void @timevar_accumulate(%struct.timevar_time_def* nonnull %elapsed, %struct.timevar_time_def* nonnull %start_time, %struct.timevar_time_def* nonnull %now) #8, !dbg !1045
  br label %cleanup, !dbg !1046

cleanup:                                          ; preds = %entry, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1046
  ret void, !dbg !1046
}

; Function Attrs: nounwind uwtable
define dso_local void @timevar_print(%struct._IO_FILE* %fp) local_unnamed_addr #4 !dbg !1047 {
entry:
  %now = alloca %struct.timevar_time_def, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !1051, metadata !DIExpression()), !dbg !1061
  %0 = bitcast %struct.timevar_time_def* %now to i8*, !dbg !1062
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1062
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !1063
  %tobool = icmp eq i8 %1, 0, !dbg !1063
  br i1 %tobool, label %cleanup90, label %if.end, !dbg !1065

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct._IO_FILE* %fp, null, !dbg !1066
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1068
  %spec.select = select i1 %cmp, %struct._IO_FILE* %2, %struct._IO_FILE* %fp, !dbg !1069
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %spec.select, metadata !1051, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %now, metadata !1054, metadata !DIExpression(DW_OP_deref)), !dbg !1061
  call fastcc void @get_time(%struct.timevar_time_def* nonnull %now) #8, !dbg !1070
  %3 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8, !dbg !1071
  %tobool3 = icmp eq %struct.timevar_stack_def* %3, null, !dbg !1071
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1073

if.then4:                                         ; preds = %if.end
  %timevar = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %3, i64 0, i32 0, !dbg !1074
  %4 = load %struct.timevar_def*, %struct.timevar_def** %timevar, align 8, !dbg !1074
  %elapsed = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %4, i64 0, i32 0, !dbg !1075
  call void @llvm.dbg.value(metadata %struct.timevar_time_def* %now, metadata !1054, metadata !DIExpression(DW_OP_deref)), !dbg !1061
  call fastcc void @timevar_accumulate(%struct.timevar_time_def* %elapsed, %struct.timevar_time_def* nonnull @start_time, %struct.timevar_time_def* nonnull %now) #8, !dbg !1076
  br label %if.end5, !dbg !1076

if.end5:                                          ; preds = %if.end, %if.then4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timevar_time_def* @start_time to i8*), i8* nonnull align 8 %0, i64 32, i1 false), !dbg !1077
  %call = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.173, i64 0, i64 0), %struct._IO_FILE* %spec.select) #6, !dbg !1078
  call void @llvm.dbg.value(metadata i32 0, metadata !1052, metadata !DIExpression()), !dbg !1061
  br label %for.cond, !dbg !1079

for.cond:                                         ; preds = %cleanup, %if.end5
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %if.end5 ], !dbg !1080
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1052, metadata !DIExpression()), !dbg !1061
  %exitcond = icmp eq i64 %indvars.iv, 172, !dbg !1081
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1082

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata double 5.000000e-03, metadata !1059, metadata !DIExpression()), !dbg !1083
  %cmp7 = icmp eq i64 %indvars.iv, 1, !dbg !1084
  br i1 %cmp7, label %cleanup, label %if.end9, !dbg !1086

if.end9:                                          ; preds = %for.body
  %used = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %indvars.iv, i32 3, !dbg !1087
  %bf.load = load i8, i8* %used, align 8, !dbg !1087
  %bf.clear = and i8 %bf.load, 2, !dbg !1087
  %tobool10 = icmp eq i8 %bf.clear, 0, !dbg !1089
  br i1 %tobool10, label %cleanup, label %if.end12, !dbg !1090

if.end12:                                         ; preds = %if.end9
  %user = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %indvars.iv, i32 0, i32 0, !dbg !1091
  %5 = load double, double* %user, align 16, !dbg !1091
  %cmp14 = fcmp olt double %5, 5.000000e-03, !dbg !1093
  br i1 %cmp14, label %land.lhs.true, label %if.end24, !dbg !1094

land.lhs.true:                                    ; preds = %if.end12
  %sys = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %indvars.iv, i32 0, i32 1, !dbg !1095
  %6 = load double, double* %sys, align 8, !dbg !1095
  %cmp16 = fcmp olt double %6, 5.000000e-03, !dbg !1096
  br i1 %cmp16, label %land.lhs.true17, label %if.end24, !dbg !1097

land.lhs.true17:                                  ; preds = %land.lhs.true
  %wall = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %indvars.iv, i32 0, i32 2, !dbg !1098
  %7 = load double, double* %wall, align 16, !dbg !1098
  %cmp19 = fcmp olt double %7, 5.000000e-03, !dbg !1099
  br i1 %cmp19, label %land.lhs.true20, label %if.end24, !dbg !1100

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %ggc_mem = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %indvars.iv, i32 0, i32 3, !dbg !1101
  %8 = load i32, i32* %ggc_mem, align 8, !dbg !1101
  %cmp22 = icmp ult i32 %8, 1048576, !dbg !1102
  br i1 %cmp22, label %cleanup, label %if.end24, !dbg !1103

if.end24:                                         ; preds = %land.lhs.true20, %land.lhs.true17, %land.lhs.true, %if.end12
  %name = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %indvars.iv, i32 2, !dbg !1104
  %9 = load i8*, i8** %name, align 16, !dbg !1104
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %spec.select, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.174, i64 0, i64 0), i8* %9) #6, !dbg !1105
  %10 = load double, double* %user, align 16, !dbg !1106
  %11 = load double, double* getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 1, i32 0, i32 0), align 16, !dbg !1107
  %cmp29 = fcmp oeq double %11, 0.000000e+00, !dbg !1108
  br i1 %cmp29, label %cond.end, label %cond.false, !dbg !1109

cond.false:                                       ; preds = %if.end24
  %div = fdiv double %10, %11, !dbg !1110
  br label %cond.end, !dbg !1109

cond.end:                                         ; preds = %if.end24, %cond.false
  %cond = phi double [ %div, %cond.false ], [ 0.000000e+00, %if.end24 ], !dbg !1109
  %mul = fmul double %cond, 1.000000e+02, !dbg !1111
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %spec.select, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.175, i64 0, i64 0), double %10, double %mul) #6, !dbg !1112
  %sys35 = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %indvars.iv, i32 0, i32 1, !dbg !1113
  %12 = load double, double* %sys35, align 8, !dbg !1113
  %13 = load double, double* getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !1114
  %cmp37 = fcmp oeq double %13, 0.000000e+00, !dbg !1115
  br i1 %cmp37, label %cond.end44, label %cond.false39, !dbg !1116

cond.false39:                                     ; preds = %cond.end
  %div43 = fdiv double %12, %13, !dbg !1117
  br label %cond.end44, !dbg !1116

cond.end44:                                       ; preds = %cond.end, %cond.false39
  %cond45 = phi double [ %div43, %cond.false39 ], [ 0.000000e+00, %cond.end ], !dbg !1116
  %mul46 = fmul double %cond45, 1.000000e+02, !dbg !1118
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %spec.select, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.176, i64 0, i64 0), double %12, double %mul46) #6, !dbg !1119
  %wall49 = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %indvars.iv, i32 0, i32 2, !dbg !1120
  %14 = load double, double* %wall49, align 16, !dbg !1120
  %15 = load double, double* getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 1, i32 0, i32 2), align 16, !dbg !1121
  %cmp51 = fcmp oeq double %15, 0.000000e+00, !dbg !1122
  br i1 %cmp51, label %cond.end58, label %cond.false53, !dbg !1123

cond.false53:                                     ; preds = %cond.end44
  %div57 = fdiv double %14, %15, !dbg !1124
  br label %cond.end58, !dbg !1123

cond.end58:                                       ; preds = %cond.end44, %cond.false53
  %cond59 = phi double [ %div57, %cond.false53 ], [ 0.000000e+00, %cond.end44 ], !dbg !1123
  %mul60 = fmul double %cond59, 1.000000e+02, !dbg !1125
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %spec.select, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.177, i64 0, i64 0), double %14, double %mul60) #6, !dbg !1126
  %ggc_mem63 = getelementptr inbounds [172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 %indvars.iv, i32 0, i32 3, !dbg !1127
  %16 = load i32, i32* %ggc_mem63, align 8, !dbg !1127
  %shr = lshr i32 %16, 10, !dbg !1128
  %17 = load i32, i32* getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 1, i32 0, i32 3), align 8, !dbg !1129
  %cmp65 = icmp eq i32 %17, 0, !dbg !1130
  br i1 %cmp65, label %cond.end73, label %cond.false67, !dbg !1131

cond.false67:                                     ; preds = %cond.end58
  %conv = uitofp i32 %16 to float, !dbg !1132
  %conv71 = uitofp i32 %17 to float, !dbg !1133
  %div72 = fdiv float %conv, %conv71, !dbg !1134
  br label %cond.end73, !dbg !1131

cond.end73:                                       ; preds = %cond.end58, %cond.false67
  %cond74 = phi float [ %div72, %cond.false67 ], [ 0.000000e+00, %cond.end58 ], !dbg !1131
  %mul75 = fmul float %cond74, 1.000000e+02, !dbg !1135
  %conv76 = fpext float %mul75 to double, !dbg !1136
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %spec.select, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.178, i64 0, i64 0), i32 %shr, double %conv76) #6, !dbg !1137
  %call78 = call i32 @putc(i32 10, %struct._IO_FILE* %spec.select) #6, !dbg !1138
  br label %cleanup, !dbg !1139

cleanup:                                          ; preds = %if.end9, %land.lhs.true20, %for.body, %cond.end73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1140
  call void @llvm.dbg.value(metadata i32 undef, metadata !1052, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1061
  br label %for.cond, !dbg !1141, !llvm.loop !1142

for.end:                                          ; preds = %for.cond
  %call80 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.179, i64 0, i64 0), %struct._IO_FILE* %spec.select) #6, !dbg !1144
  %18 = load double, double* getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 1, i32 0, i32 0), align 16, !dbg !1145
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %spec.select, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.180, i64 0, i64 0), double %18) #6, !dbg !1146
  %19 = load double, double* getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !1147
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %spec.select, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.180, i64 0, i64 0), double %19) #6, !dbg !1148
  %20 = load double, double* getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 1, i32 0, i32 2), align 16, !dbg !1149
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %spec.select, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.181, i64 0, i64 0), double %20) #6, !dbg !1150
  %21 = load i32, i32* getelementptr inbounds ([172 x %struct.timevar_def], [172 x %struct.timevar_def]* @timevars, i64 0, i64 1, i32 0, i32 3), align 8, !dbg !1151
  %shr88 = lshr i32 %21, 10, !dbg !1152
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %spec.select, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.182, i64 0, i64 0), i32 %shr88) #6, !dbg !1153
  br label %cleanup90, !dbg !1154

cleanup90:                                        ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1154
  ret void, !dbg !1154
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @print_time(i8* %str, i64 %total) local_unnamed_addr #4 !dbg !1155 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !1159, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %total, metadata !1160, metadata !DIExpression()), !dbg !1162
  %call = tail call i64 @get_run_time() #6, !dbg !1163
  call void @llvm.dbg.value(metadata i64 %call, metadata !1161, metadata !DIExpression()), !dbg !1162
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1164
  %div = sdiv i64 %total, 1000000, !dbg !1165
  %rem = srem i64 %total, 1000000, !dbg !1166
  %cmp = icmp eq i64 %call, 0, !dbg !1167
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !1168

cond.false:                                       ; preds = %entry
  %conv = sitofp i64 %total to double, !dbg !1169
  %mul = fmul double %conv, 1.000000e+02, !dbg !1170
  %conv1 = sitofp i64 %call to double, !dbg !1171
  %div2 = fdiv double %mul, %conv1, !dbg !1172
  %add = fadd double %div2, 5.000000e-01, !dbg !1173
  %conv3 = fptosi double %add to i64, !dbg !1174
  br label %cond.end, !dbg !1168

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %conv3, %cond.false ], [ 0, %entry ], !dbg !1168
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.183, i64 0, i64 0), i8* %str, i64 %div, i64 %rem, i64 %cond) #6, !dbg !1175
  ret void, !dbg !1176
}

declare dso_local i64 @get_run_time() local_unnamed_addr #1

declare dso_local i64 @times(%struct.tms*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!234, !235, !236}
!llvm.ident = !{!237}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "timevar_enable", scope: !2, file: !3, line: 117, type: !184, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !182, globals: !215, nameTableKind: None)
!3 = !DIFile(filename: "timevar.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 74, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!9 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!98 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!99 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!100 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!101 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!102 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!103 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!104 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!105 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!106 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!107 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!108 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!109 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!110 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!111 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!112 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!113 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!114 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!115 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!116 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!117 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!118 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!119 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!120 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!121 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!122 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!123 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!124 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!125 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!126 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!127 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!128 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!129 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!130 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!131 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!132 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!133 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!134 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!135 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!136 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!137 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!138 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!139 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!140 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!141 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!142 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!143 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!144 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!145 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!146 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!147 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!148 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!149 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!150 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!151 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!152 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!153 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!154 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!155 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!156 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!157 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!158 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!159 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!160 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!161 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!162 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!163 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!164 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!165 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!166 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!167 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!168 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!169 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!170 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!171 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!172 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!173 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!174 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!175 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!176 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!177 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!178 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!179 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!180 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!181 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!182 = !{!183, !184, !185, !186, !189, !190, !192, !193, !7, !212, !213, !214}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!185 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!192 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timevar_stack_def", file: !3, line: 156, size: 128, elements: !195)
!195 = !{!196, !211}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "timevar", scope: !194, file: !3, line: 159, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timevar_def", file: !3, line: 132, size: 640, elements: !199)
!199 = !{!200, !207, !208, !209, !210}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !198, file: !3, line: 135, baseType: !201, size: 256)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timevar_time_def", file: !6, line: 53, size: 256, elements: !202)
!202 = !{!203, !204, !205, !206}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !201, file: !6, line: 56, baseType: !192, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !201, file: !6, line: 60, baseType: !192, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "wall", scope: !201, file: !6, line: 63, baseType: !192, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ggc_mem", scope: !201, file: !6, line: 66, baseType: !7, size: 32, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !198, file: !3, line: 139, baseType: !201, size: 256, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !3, line: 142, baseType: !190, size: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !198, file: !3, line: 146, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !198, file: !3, line: 150, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !3, line: 162, baseType: !193, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !6, line: 80, baseType: !5)
!213 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!214 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!215 = !{!216, !0, !218, !223, !228, !230, !232}
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "ticks_to_msec", scope: !2, file: !3, line: 105, type: !192, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "timevar_ggc_mem_total", scope: !2, file: !3, line: 121, type: !220, isLocal: false, isDefinition: true)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !221, line: 46, baseType: !222)
!221 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!222 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "timevars", scope: !2, file: !3, line: 167, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 110080, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 172)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "stack", scope: !2, file: !3, line: 170, type: !193, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "unused_stack_instances", scope: !2, file: !3, line: 174, type: !193, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "start_time", scope: !2, file: !3, line: 179, type: !201, isLocal: true, isDefinition: true)
!234 = !{i32 2, !"Dwarf Version", i32 4}
!235 = !{i32 2, !"Debug Info Version", i32 3}
!236 = !{i32 1, !"wchar_size", i32 4}
!237 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!238 = distinct !DISubprogram(name: "vprintf", scope: !239, file: !239, line: 39, type: !240, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !250)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!240 = !DISubroutineType(types: !241)
!241 = !{!185, !242, !243}
!242 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !245)
!245 = !{!246, !247, !248, !249}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !244, file: !3, baseType: !7, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !244, file: !3, baseType: !7, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !244, file: !3, baseType: !189, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !244, file: !3, baseType: !189, size: 64, offset: 128)
!250 = !{!251, !252}
!251 = !DILocalVariable(name: "__fmt", arg: 1, scope: !238, file: !239, line: 39, type: !242)
!252 = !DILocalVariable(name: "__arg", arg: 2, scope: !238, file: !239, line: 39, type: !243)
!253 = !DILocation(line: 0, scope: !238)
!254 = !DILocation(line: 41, column: 20, scope: !238)
!255 = !DILocation(line: 41, column: 10, scope: !238)
!256 = !DILocation(line: 41, column: 3, scope: !238)
!257 = distinct !DISubprogram(name: "getchar", scope: !239, file: !239, line: 47, type: !258, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{!185}
!260 = !{}
!261 = !DILocation(line: 49, column: 16, scope: !257)
!262 = !DILocation(line: 49, column: 10, scope: !257)
!263 = !DILocation(line: 49, column: 3, scope: !257)
!264 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !239, file: !239, line: 56, type: !265, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!265 = !DISubroutineType(types: !266)
!266 = !{!185, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !269, line: 7, baseType: !270)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !271, line: 49, size: 1728, elements: !272)
!271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !288, !290, !291, !292, !295, !297, !299, !303, !306, !308, !311, !314, !315, !316, !317, !318}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !270, file: !271, line: 51, baseType: !185, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !270, file: !271, line: 54, baseType: !187, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !270, file: !271, line: 55, baseType: !187, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !270, file: !271, line: 56, baseType: !187, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !270, file: !271, line: 57, baseType: !187, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !270, file: !271, line: 58, baseType: !187, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !270, file: !271, line: 59, baseType: !187, size: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !270, file: !271, line: 60, baseType: !187, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !270, file: !271, line: 61, baseType: !187, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !270, file: !271, line: 64, baseType: !187, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !270, file: !271, line: 65, baseType: !187, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !270, file: !271, line: 66, baseType: !187, size: 64, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !270, file: !271, line: 68, baseType: !286, size: 64, offset: 768)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !271, line: 36, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !270, file: !271, line: 70, baseType: !289, size: 64, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !270, file: !271, line: 72, baseType: !185, size: 32, offset: 896)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !270, file: !271, line: 73, baseType: !185, size: 32, offset: 928)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !270, file: !271, line: 74, baseType: !293, size: 64, offset: 960)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !294, line: 152, baseType: !214)
!294 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !270, file: !271, line: 77, baseType: !296, size: 16, offset: 1024)
!296 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !270, file: !271, line: 78, baseType: !298, size: 8, offset: 1040)
!298 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !270, file: !271, line: 79, baseType: !300, size: 8, offset: 1048)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 8, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 1)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !270, file: !271, line: 81, baseType: !304, size: 64, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !271, line: 43, baseType: null)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !270, file: !271, line: 89, baseType: !307, size: 64, offset: 1152)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !294, line: 153, baseType: !214)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !270, file: !271, line: 91, baseType: !309, size: 64, offset: 1216)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !271, line: 37, flags: DIFlagFwdDecl)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !270, file: !271, line: 92, baseType: !312, size: 64, offset: 1280)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !271, line: 38, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !270, file: !271, line: 93, baseType: !289, size: 64, offset: 1344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !270, file: !271, line: 94, baseType: !189, size: 64, offset: 1408)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !270, file: !271, line: 95, baseType: !220, size: 64, offset: 1472)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !270, file: !271, line: 96, baseType: !185, size: 32, offset: 1536)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !270, file: !271, line: 98, baseType: !319, size: 160, offset: 1568)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 160, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 20)
!322 = !{!323}
!323 = !DILocalVariable(name: "__fp", arg: 1, scope: !264, file: !239, line: 56, type: !267)
!324 = !DILocation(line: 0, scope: !264)
!325 = !DILocation(line: 58, column: 10, scope: !264)
!326 = !DILocation(line: 58, column: 3, scope: !264)
!327 = distinct !DISubprogram(name: "getc_unlocked", scope: !239, file: !239, line: 66, type: !265, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!328 = !{!329}
!329 = !DILocalVariable(name: "__fp", arg: 1, scope: !327, file: !239, line: 66, type: !267)
!330 = !DILocation(line: 0, scope: !327)
!331 = !DILocation(line: 68, column: 10, scope: !327)
!332 = !DILocation(line: 68, column: 3, scope: !327)
!333 = distinct !DISubprogram(name: "getchar_unlocked", scope: !239, file: !239, line: 73, type: !258, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!334 = !DILocation(line: 75, column: 10, scope: !333)
!335 = !DILocation(line: 75, column: 3, scope: !333)
!336 = distinct !DISubprogram(name: "putchar", scope: !239, file: !239, line: 82, type: !337, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{!185, !185}
!339 = !{!340}
!340 = !DILocalVariable(name: "__c", arg: 1, scope: !336, file: !239, line: 82, type: !185)
!341 = !DILocation(line: 0, scope: !336)
!342 = !DILocation(line: 84, column: 21, scope: !336)
!343 = !DILocation(line: 84, column: 10, scope: !336)
!344 = !DILocation(line: 84, column: 3, scope: !336)
!345 = distinct !DISubprogram(name: "fputc_unlocked", scope: !239, file: !239, line: 91, type: !346, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!185, !185, !267}
!348 = !{!349, !350}
!349 = !DILocalVariable(name: "__c", arg: 1, scope: !345, file: !239, line: 91, type: !185)
!350 = !DILocalVariable(name: "__stream", arg: 2, scope: !345, file: !239, line: 91, type: !267)
!351 = !DILocation(line: 0, scope: !345)
!352 = !DILocation(line: 93, column: 10, scope: !345)
!353 = !DILocation(line: 93, column: 3, scope: !345)
!354 = distinct !DISubprogram(name: "putc_unlocked", scope: !239, file: !239, line: 101, type: !346, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !355)
!355 = !{!356, !357}
!356 = !DILocalVariable(name: "__c", arg: 1, scope: !354, file: !239, line: 101, type: !185)
!357 = !DILocalVariable(name: "__stream", arg: 2, scope: !354, file: !239, line: 101, type: !267)
!358 = !DILocation(line: 0, scope: !354)
!359 = !DILocation(line: 103, column: 10, scope: !354)
!360 = !DILocation(line: 103, column: 3, scope: !354)
!361 = distinct !DISubprogram(name: "putchar_unlocked", scope: !239, file: !239, line: 108, type: !337, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!362 = !{!363}
!363 = !DILocalVariable(name: "__c", arg: 1, scope: !361, file: !239, line: 108, type: !185)
!364 = !DILocation(line: 0, scope: !361)
!365 = !DILocation(line: 110, column: 10, scope: !361)
!366 = !DILocation(line: 110, column: 3, scope: !361)
!367 = distinct !DISubprogram(name: "getline", scope: !239, file: !239, line: 118, type: !368, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !372)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !186, !371, !267}
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !294, line: 193, baseType: !214)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!372 = !{!373, !374, !375}
!373 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !367, file: !239, line: 118, type: !186)
!374 = !DILocalVariable(name: "__n", arg: 2, scope: !367, file: !239, line: 118, type: !371)
!375 = !DILocalVariable(name: "__stream", arg: 3, scope: !367, file: !239, line: 118, type: !267)
!376 = !DILocation(line: 0, scope: !367)
!377 = !DILocation(line: 120, column: 10, scope: !367)
!378 = !DILocation(line: 120, column: 3, scope: !367)
!379 = distinct !DISubprogram(name: "feof_unlocked", scope: !239, file: !239, line: 128, type: !265, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!380 = !{!381}
!381 = !DILocalVariable(name: "__stream", arg: 1, scope: !379, file: !239, line: 128, type: !267)
!382 = !DILocation(line: 0, scope: !379)
!383 = !DILocation(line: 130, column: 10, scope: !379)
!384 = !DILocation(line: 130, column: 3, scope: !379)
!385 = distinct !DISubprogram(name: "ferror_unlocked", scope: !239, file: !239, line: 135, type: !265, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !386)
!386 = !{!387}
!387 = !DILocalVariable(name: "__stream", arg: 1, scope: !385, file: !239, line: 135, type: !267)
!388 = !DILocation(line: 0, scope: !385)
!389 = !DILocation(line: 137, column: 10, scope: !385)
!390 = !DILocation(line: 137, column: 3, scope: !385)
!391 = distinct !DISubprogram(name: "tolower", scope: !392, file: !392, line: 207, type: !337, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !393)
!392 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!393 = !{!394}
!394 = !DILocalVariable(name: "__c", arg: 1, scope: !391, file: !392, line: 207, type: !185)
!395 = !DILocation(line: 0, scope: !391)
!396 = !DILocation(line: 209, column: 22, scope: !391)
!397 = !DILocation(line: 209, column: 39, scope: !391)
!398 = !DILocation(line: 209, column: 38, scope: !391)
!399 = !DILocation(line: 209, column: 37, scope: !391)
!400 = !DILocation(line: 209, column: 10, scope: !391)
!401 = !DILocation(line: 209, column: 3, scope: !391)
!402 = distinct !DISubprogram(name: "toupper", scope: !392, file: !392, line: 213, type: !337, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !403)
!403 = !{!404}
!404 = !DILocalVariable(name: "__c", arg: 1, scope: !402, file: !392, line: 213, type: !185)
!405 = !DILocation(line: 0, scope: !402)
!406 = !DILocation(line: 215, column: 22, scope: !402)
!407 = !DILocation(line: 215, column: 39, scope: !402)
!408 = !DILocation(line: 215, column: 38, scope: !402)
!409 = !DILocation(line: 215, column: 37, scope: !402)
!410 = !DILocation(line: 215, column: 10, scope: !402)
!411 = !DILocation(line: 215, column: 3, scope: !402)
!412 = distinct !DISubprogram(name: "atoi", scope: !413, file: !413, line: 361, type: !414, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!413 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!414 = !DISubroutineType(types: !415)
!415 = !{!185, !190}
!416 = !{!417}
!417 = !DILocalVariable(name: "__nptr", arg: 1, scope: !412, file: !413, line: 361, type: !190)
!418 = !DILocation(line: 0, scope: !412)
!419 = !DILocation(line: 363, column: 16, scope: !412)
!420 = !DILocation(line: 363, column: 10, scope: !412)
!421 = !DILocation(line: 363, column: 3, scope: !412)
!422 = distinct !DISubprogram(name: "atol", scope: !413, file: !413, line: 366, type: !423, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!214, !190}
!425 = !{!426}
!426 = !DILocalVariable(name: "__nptr", arg: 1, scope: !422, file: !413, line: 366, type: !190)
!427 = !DILocation(line: 0, scope: !422)
!428 = !DILocation(line: 368, column: 10, scope: !422)
!429 = !DILocation(line: 368, column: 3, scope: !422)
!430 = distinct !DISubprogram(name: "atoll", scope: !413, file: !413, line: 373, type: !431, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !434)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !190}
!433 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!434 = !{!435}
!435 = !DILocalVariable(name: "__nptr", arg: 1, scope: !430, file: !413, line: 373, type: !190)
!436 = !DILocation(line: 0, scope: !430)
!437 = !DILocation(line: 375, column: 10, scope: !430)
!438 = !DILocation(line: 375, column: 3, scope: !430)
!439 = distinct !DISubprogram(name: "bsearch", scope: !440, file: !440, line: 20, type: !441, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!440 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!441 = !DISubroutineType(types: !442)
!442 = !{!189, !443, !443, !220, !220, !445}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !413, line: 808, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!185, !443, !443}
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!450 = !DILocalVariable(name: "__key", arg: 1, scope: !439, file: !440, line: 20, type: !443)
!451 = !DILocalVariable(name: "__base", arg: 2, scope: !439, file: !440, line: 20, type: !443)
!452 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !439, file: !440, line: 20, type: !220)
!453 = !DILocalVariable(name: "__size", arg: 4, scope: !439, file: !440, line: 20, type: !220)
!454 = !DILocalVariable(name: "__compar", arg: 5, scope: !439, file: !440, line: 21, type: !445)
!455 = !DILocalVariable(name: "__l", scope: !439, file: !440, line: 23, type: !220)
!456 = !DILocalVariable(name: "__u", scope: !439, file: !440, line: 23, type: !220)
!457 = !DILocalVariable(name: "__idx", scope: !439, file: !440, line: 23, type: !220)
!458 = !DILocalVariable(name: "__p", scope: !439, file: !440, line: 24, type: !443)
!459 = !DILocalVariable(name: "__comparison", scope: !439, file: !440, line: 25, type: !185)
!460 = !DILocation(line: 0, scope: !439)
!461 = !DILocation(line: 29, column: 3, scope: !439)
!462 = !DILocation(line: 27, column: 7, scope: !439)
!463 = !DILocation(line: 29, column: 14, scope: !439)
!464 = !DILocation(line: 31, column: 20, scope: !465)
!465 = distinct !DILexicalBlock(scope: !439, file: !440, line: 30, column: 5)
!466 = !DILocation(line: 31, column: 27, scope: !465)
!467 = !DILocation(line: 32, column: 56, scope: !465)
!468 = !DILocation(line: 32, column: 47, scope: !465)
!469 = !DILocation(line: 33, column: 22, scope: !465)
!470 = !DILocation(line: 34, column: 24, scope: !471)
!471 = distinct !DILexicalBlock(scope: !465, file: !440, line: 34, column: 11)
!472 = !DILocation(line: 34, column: 11, scope: !465)
!473 = !DILocation(line: 36, column: 29, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !440, line: 36, column: 16)
!475 = !DILocation(line: 36, column: 16, scope: !471)
!476 = !DILocation(line: 37, column: 14, scope: !474)
!477 = distinct !{!477, !461, !478}
!478 = !DILocation(line: 40, column: 5, scope: !439)
!479 = !DILocation(line: 43, column: 1, scope: !439)
!480 = distinct !DISubprogram(name: "atof", scope: !481, file: !481, line: 25, type: !482, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!481 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!482 = !DISubroutineType(types: !483)
!483 = !{!192, !190}
!484 = !{!485}
!485 = !DILocalVariable(name: "__nptr", arg: 1, scope: !480, file: !481, line: 25, type: !190)
!486 = !DILocation(line: 0, scope: !480)
!487 = !DILocation(line: 27, column: 10, scope: !480)
!488 = !DILocation(line: 27, column: 3, scope: !480)
!489 = distinct !DISubprogram(name: "strtoimax", scope: !490, file: !490, line: 324, type: !491, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!490 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!491 = !DISubroutineType(types: !492)
!492 = !{!493, !242, !496, !185}
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !494, line: 101, baseType: !495)
!494 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !294, line: 72, baseType: !214)
!496 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !186)
!497 = !{!498, !499, !500}
!498 = !DILocalVariable(name: "nptr", arg: 1, scope: !489, file: !490, line: 324, type: !242)
!499 = !DILocalVariable(name: "endptr", arg: 2, scope: !489, file: !490, line: 324, type: !496)
!500 = !DILocalVariable(name: "base", arg: 3, scope: !489, file: !490, line: 324, type: !185)
!501 = !DILocation(line: 0, scope: !489)
!502 = !DILocation(line: 327, column: 10, scope: !489)
!503 = !DILocation(line: 327, column: 3, scope: !489)
!504 = distinct !DISubprogram(name: "strtoumax", scope: !490, file: !490, line: 336, type: !505, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !509)
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !242, !496, !185}
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !494, line: 102, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !294, line: 73, baseType: !222)
!509 = !{!510, !511, !512}
!510 = !DILocalVariable(name: "nptr", arg: 1, scope: !504, file: !490, line: 336, type: !242)
!511 = !DILocalVariable(name: "endptr", arg: 2, scope: !504, file: !490, line: 336, type: !496)
!512 = !DILocalVariable(name: "base", arg: 3, scope: !504, file: !490, line: 336, type: !185)
!513 = !DILocation(line: 0, scope: !504)
!514 = !DILocation(line: 339, column: 10, scope: !504)
!515 = !DILocation(line: 339, column: 3, scope: !504)
!516 = distinct !DISubprogram(name: "wcstoimax", scope: !490, file: !490, line: 348, type: !517, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !526)
!517 = !DISubroutineType(types: !518)
!518 = !{!493, !519, !523, !185}
!519 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !490, line: 34, baseType: !185)
!523 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!526 = !{!527, !528, !529}
!527 = !DILocalVariable(name: "nptr", arg: 1, scope: !516, file: !490, line: 348, type: !519)
!528 = !DILocalVariable(name: "endptr", arg: 2, scope: !516, file: !490, line: 348, type: !523)
!529 = !DILocalVariable(name: "base", arg: 3, scope: !516, file: !490, line: 348, type: !185)
!530 = !DILocation(line: 0, scope: !516)
!531 = !DILocation(line: 351, column: 10, scope: !516)
!532 = !DILocation(line: 351, column: 3, scope: !516)
!533 = distinct !DISubprogram(name: "wcstoumax", scope: !490, file: !490, line: 362, type: !534, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{!507, !519, !523, !185}
!536 = !{!537, !538, !539}
!537 = !DILocalVariable(name: "nptr", arg: 1, scope: !533, file: !490, line: 362, type: !519)
!538 = !DILocalVariable(name: "endptr", arg: 2, scope: !533, file: !490, line: 362, type: !523)
!539 = !DILocalVariable(name: "base", arg: 3, scope: !533, file: !490, line: 362, type: !185)
!540 = !DILocation(line: 0, scope: !533)
!541 = !DILocation(line: 365, column: 10, scope: !533)
!542 = !DILocation(line: 365, column: 3, scope: !533)
!543 = distinct !DISubprogram(name: "stat", scope: !544, file: !544, line: 453, type: !545, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !584)
!544 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!545 = !DISubroutineType(types: !546)
!546 = !{!185, !190, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !549, line: 46, size: 1152, elements: !550)
!549 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!550 = !{!551, !553, !555, !557, !559, !561, !563, !564, !565, !566, !568, !570, !578, !579, !580}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !548, file: !549, line: 48, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !294, line: 145, baseType: !222)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !548, file: !549, line: 53, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !294, line: 148, baseType: !222)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !548, file: !549, line: 61, baseType: !556, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !294, line: 151, baseType: !222)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !548, file: !549, line: 62, baseType: !558, size: 32, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !294, line: 150, baseType: !7)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !548, file: !549, line: 64, baseType: !560, size: 32, offset: 224)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !294, line: 146, baseType: !7)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !548, file: !549, line: 65, baseType: !562, size: 32, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !294, line: 147, baseType: !7)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !548, file: !549, line: 67, baseType: !185, size: 32, offset: 288)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !548, file: !549, line: 69, baseType: !552, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !548, file: !549, line: 74, baseType: !293, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !548, file: !549, line: 78, baseType: !567, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !294, line: 174, baseType: !214)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !548, file: !549, line: 80, baseType: !569, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !294, line: 179, baseType: !214)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !548, file: !549, line: 91, baseType: !571, size: 128, offset: 576)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !572, line: 10, size: 128, elements: !573)
!572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!573 = !{!574, !576}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !571, file: !572, line: 12, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !294, line: 160, baseType: !214)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !571, file: !572, line: 16, baseType: !577, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !294, line: 196, baseType: !214)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !548, file: !549, line: 92, baseType: !571, size: 128, offset: 704)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !548, file: !549, line: 93, baseType: !571, size: 128, offset: 832)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !548, file: !549, line: 106, baseType: !581, size: 192, offset: 960)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 192, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 3)
!584 = !{!585, !586}
!585 = !DILocalVariable(name: "__path", arg: 1, scope: !543, file: !544, line: 453, type: !190)
!586 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !543, file: !544, line: 453, type: !547)
!587 = !DILocation(line: 0, scope: !543)
!588 = !DILocation(line: 455, column: 10, scope: !543)
!589 = !DILocation(line: 455, column: 3, scope: !543)
!590 = distinct !DISubprogram(name: "lstat", scope: !544, file: !544, line: 460, type: !545, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !591)
!591 = !{!592, !593}
!592 = !DILocalVariable(name: "__path", arg: 1, scope: !590, file: !544, line: 460, type: !190)
!593 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !590, file: !544, line: 460, type: !547)
!594 = !DILocation(line: 0, scope: !590)
!595 = !DILocation(line: 462, column: 10, scope: !590)
!596 = !DILocation(line: 462, column: 3, scope: !590)
!597 = distinct !DISubprogram(name: "fstat", scope: !544, file: !544, line: 467, type: !598, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{!185, !185, !547}
!600 = !{!601, !602}
!601 = !DILocalVariable(name: "__fd", arg: 1, scope: !597, file: !544, line: 467, type: !185)
!602 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !597, file: !544, line: 467, type: !547)
!603 = !DILocation(line: 0, scope: !597)
!604 = !DILocation(line: 469, column: 10, scope: !597)
!605 = !DILocation(line: 469, column: 3, scope: !597)
!606 = distinct !DISubprogram(name: "fstatat", scope: !544, file: !544, line: 474, type: !607, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !609)
!607 = !DISubroutineType(types: !608)
!608 = !{!185, !185, !190, !547, !185}
!609 = !{!610, !611, !612, !613}
!610 = !DILocalVariable(name: "__fd", arg: 1, scope: !606, file: !544, line: 474, type: !185)
!611 = !DILocalVariable(name: "__filename", arg: 2, scope: !606, file: !544, line: 474, type: !190)
!612 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !606, file: !544, line: 474, type: !547)
!613 = !DILocalVariable(name: "__flag", arg: 4, scope: !606, file: !544, line: 474, type: !185)
!614 = !DILocation(line: 0, scope: !606)
!615 = !DILocation(line: 477, column: 10, scope: !606)
!616 = !DILocation(line: 477, column: 3, scope: !606)
!617 = distinct !DISubprogram(name: "mknod", scope: !544, file: !544, line: 483, type: !618, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !620)
!618 = !DISubroutineType(types: !619)
!619 = !{!185, !190, !558, !552}
!620 = !{!621, !622, !623}
!621 = !DILocalVariable(name: "__path", arg: 1, scope: !617, file: !544, line: 483, type: !190)
!622 = !DILocalVariable(name: "__mode", arg: 2, scope: !617, file: !544, line: 483, type: !558)
!623 = !DILocalVariable(name: "__dev", arg: 3, scope: !617, file: !544, line: 483, type: !552)
!624 = !DILocation(line: 0, scope: !617)
!625 = !DILocation(line: 485, column: 10, scope: !617)
!626 = !DILocation(line: 485, column: 3, scope: !617)
!627 = distinct !DISubprogram(name: "mknodat", scope: !544, file: !544, line: 491, type: !628, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{!185, !185, !190, !558, !552}
!630 = !{!631, !632, !633, !634}
!631 = !DILocalVariable(name: "__fd", arg: 1, scope: !627, file: !544, line: 491, type: !185)
!632 = !DILocalVariable(name: "__path", arg: 2, scope: !627, file: !544, line: 491, type: !190)
!633 = !DILocalVariable(name: "__mode", arg: 3, scope: !627, file: !544, line: 491, type: !558)
!634 = !DILocalVariable(name: "__dev", arg: 4, scope: !627, file: !544, line: 491, type: !552)
!635 = !DILocation(line: 0, scope: !627)
!636 = !DILocation(line: 494, column: 10, scope: !627)
!637 = !DILocation(line: 494, column: 3, scope: !627)
!638 = distinct !DISubprogram(name: "stat64", scope: !544, file: !544, line: 502, type: !639, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !661)
!639 = !DISubroutineType(types: !640)
!640 = !{!185, !190, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !549, line: 119, size: 1152, elements: !643)
!643 = !{!644, !645, !647, !648, !649, !650, !651, !652, !653, !654, !655, !657, !658, !659, !660}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !642, file: !549, line: 121, baseType: !552, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !642, file: !549, line: 123, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !294, line: 149, baseType: !222)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !642, file: !549, line: 124, baseType: !556, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !642, file: !549, line: 125, baseType: !558, size: 32, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !642, file: !549, line: 132, baseType: !560, size: 32, offset: 224)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !642, file: !549, line: 133, baseType: !562, size: 32, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !642, file: !549, line: 135, baseType: !185, size: 32, offset: 288)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !642, file: !549, line: 136, baseType: !552, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !642, file: !549, line: 137, baseType: !293, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !642, file: !549, line: 143, baseType: !567, size: 64, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !642, file: !549, line: 144, baseType: !656, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !294, line: 180, baseType: !214)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !642, file: !549, line: 152, baseType: !571, size: 128, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !642, file: !549, line: 153, baseType: !571, size: 128, offset: 704)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !642, file: !549, line: 154, baseType: !571, size: 128, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !642, file: !549, line: 164, baseType: !581, size: 192, offset: 960)
!661 = !{!662, !663}
!662 = !DILocalVariable(name: "__path", arg: 1, scope: !638, file: !544, line: 502, type: !190)
!663 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !638, file: !544, line: 502, type: !641)
!664 = !DILocation(line: 0, scope: !638)
!665 = !DILocation(line: 504, column: 10, scope: !638)
!666 = !DILocation(line: 504, column: 3, scope: !638)
!667 = distinct !DISubprogram(name: "lstat64", scope: !544, file: !544, line: 509, type: !639, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!668 = !{!669, !670}
!669 = !DILocalVariable(name: "__path", arg: 1, scope: !667, file: !544, line: 509, type: !190)
!670 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !667, file: !544, line: 509, type: !641)
!671 = !DILocation(line: 0, scope: !667)
!672 = !DILocation(line: 511, column: 10, scope: !667)
!673 = !DILocation(line: 511, column: 3, scope: !667)
!674 = distinct !DISubprogram(name: "fstat64", scope: !544, file: !544, line: 516, type: !675, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{!185, !185, !641}
!677 = !{!678, !679}
!678 = !DILocalVariable(name: "__fd", arg: 1, scope: !674, file: !544, line: 516, type: !185)
!679 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !674, file: !544, line: 516, type: !641)
!680 = !DILocation(line: 0, scope: !674)
!681 = !DILocation(line: 518, column: 10, scope: !674)
!682 = !DILocation(line: 518, column: 3, scope: !674)
!683 = distinct !DISubprogram(name: "fstatat64", scope: !544, file: !544, line: 523, type: !684, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!185, !185, !190, !641, !185}
!686 = !{!687, !688, !689, !690}
!687 = !DILocalVariable(name: "__fd", arg: 1, scope: !683, file: !544, line: 523, type: !185)
!688 = !DILocalVariable(name: "__filename", arg: 2, scope: !683, file: !544, line: 523, type: !190)
!689 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !683, file: !544, line: 523, type: !641)
!690 = !DILocalVariable(name: "__flag", arg: 4, scope: !683, file: !544, line: 523, type: !185)
!691 = !DILocation(line: 0, scope: !683)
!692 = !DILocation(line: 526, column: 10, scope: !683)
!693 = !DILocation(line: 526, column: 3, scope: !683)
!694 = distinct !DISubprogram(name: "timevar_init", scope: !3, file: !3, line: 236, type: !695, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!695 = !DISubroutineType(types: !696)
!696 = !{null}
!697 = !DILocation(line: 238, column: 18, scope: !694)
!698 = !DILocation(line: 241, column: 3, scope: !694)
!699 = !DILocation(line: 34, column: 1, scope: !700)
!700 = !DILexicalBlockFile(scope: !694, file: !701, discriminator: 0)
!701 = !DIFile(filename: "./timevar.def", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!702 = !DILocation(line: 37, column: 1, scope: !700)
!703 = !DILocation(line: 40, column: 1, scope: !700)
!704 = !DILocation(line: 42, column: 1, scope: !700)
!705 = !DILocation(line: 43, column: 1, scope: !700)
!706 = !DILocation(line: 44, column: 1, scope: !700)
!707 = !DILocation(line: 45, column: 1, scope: !700)
!708 = !DILocation(line: 46, column: 1, scope: !700)
!709 = !DILocation(line: 47, column: 1, scope: !700)
!710 = !DILocation(line: 48, column: 1, scope: !700)
!711 = !DILocation(line: 49, column: 1, scope: !700)
!712 = !DILocation(line: 50, column: 1, scope: !700)
!713 = !DILocation(line: 51, column: 1, scope: !700)
!714 = !DILocation(line: 52, column: 1, scope: !700)
!715 = !DILocation(line: 53, column: 1, scope: !700)
!716 = !DILocation(line: 54, column: 1, scope: !700)
!717 = !DILocation(line: 55, column: 1, scope: !700)
!718 = !DILocation(line: 56, column: 1, scope: !700)
!719 = !DILocation(line: 57, column: 1, scope: !700)
!720 = !DILocation(line: 58, column: 1, scope: !700)
!721 = !DILocation(line: 59, column: 1, scope: !700)
!722 = !DILocation(line: 61, column: 1, scope: !700)
!723 = !DILocation(line: 63, column: 1, scope: !700)
!724 = !DILocation(line: 64, column: 1, scope: !700)
!725 = !DILocation(line: 65, column: 1, scope: !700)
!726 = !DILocation(line: 67, column: 1, scope: !700)
!727 = !DILocation(line: 68, column: 1, scope: !700)
!728 = !DILocation(line: 71, column: 1, scope: !700)
!729 = !DILocation(line: 72, column: 1, scope: !700)
!730 = !DILocation(line: 73, column: 1, scope: !700)
!731 = !DILocation(line: 74, column: 1, scope: !700)
!732 = !DILocation(line: 75, column: 1, scope: !700)
!733 = !DILocation(line: 76, column: 1, scope: !700)
!734 = !DILocation(line: 77, column: 1, scope: !700)
!735 = !DILocation(line: 78, column: 1, scope: !700)
!736 = !DILocation(line: 79, column: 1, scope: !700)
!737 = !DILocation(line: 80, column: 1, scope: !700)
!738 = !DILocation(line: 82, column: 1, scope: !700)
!739 = !DILocation(line: 83, column: 1, scope: !700)
!740 = !DILocation(line: 84, column: 1, scope: !700)
!741 = !DILocation(line: 85, column: 1, scope: !700)
!742 = !DILocation(line: 87, column: 1, scope: !700)
!743 = !DILocation(line: 88, column: 1, scope: !700)
!744 = !DILocation(line: 89, column: 1, scope: !700)
!745 = !DILocation(line: 90, column: 1, scope: !700)
!746 = !DILocation(line: 91, column: 1, scope: !700)
!747 = !DILocation(line: 92, column: 1, scope: !700)
!748 = !DILocation(line: 93, column: 1, scope: !700)
!749 = !DILocation(line: 94, column: 1, scope: !700)
!750 = !DILocation(line: 95, column: 1, scope: !700)
!751 = !DILocation(line: 96, column: 1, scope: !700)
!752 = !DILocation(line: 97, column: 1, scope: !700)
!753 = !DILocation(line: 98, column: 1, scope: !700)
!754 = !DILocation(line: 99, column: 1, scope: !700)
!755 = !DILocation(line: 100, column: 1, scope: !700)
!756 = !DILocation(line: 101, column: 1, scope: !700)
!757 = !DILocation(line: 102, column: 1, scope: !700)
!758 = !DILocation(line: 103, column: 1, scope: !700)
!759 = !DILocation(line: 104, column: 1, scope: !700)
!760 = !DILocation(line: 105, column: 1, scope: !700)
!761 = !DILocation(line: 106, column: 1, scope: !700)
!762 = !DILocation(line: 107, column: 1, scope: !700)
!763 = !DILocation(line: 108, column: 1, scope: !700)
!764 = !DILocation(line: 109, column: 1, scope: !700)
!765 = !DILocation(line: 110, column: 1, scope: !700)
!766 = !DILocation(line: 111, column: 1, scope: !700)
!767 = !DILocation(line: 112, column: 1, scope: !700)
!768 = !DILocation(line: 113, column: 1, scope: !700)
!769 = !DILocation(line: 114, column: 1, scope: !700)
!770 = !DILocation(line: 115, column: 1, scope: !700)
!771 = !DILocation(line: 116, column: 1, scope: !700)
!772 = !DILocation(line: 117, column: 1, scope: !700)
!773 = !DILocation(line: 118, column: 1, scope: !700)
!774 = !DILocation(line: 119, column: 1, scope: !700)
!775 = !DILocation(line: 120, column: 1, scope: !700)
!776 = !DILocation(line: 121, column: 1, scope: !700)
!777 = !DILocation(line: 122, column: 1, scope: !700)
!778 = !DILocation(line: 123, column: 1, scope: !700)
!779 = !DILocation(line: 124, column: 1, scope: !700)
!780 = !DILocation(line: 125, column: 1, scope: !700)
!781 = !DILocation(line: 126, column: 1, scope: !700)
!782 = !DILocation(line: 127, column: 1, scope: !700)
!783 = !DILocation(line: 128, column: 1, scope: !700)
!784 = !DILocation(line: 129, column: 1, scope: !700)
!785 = !DILocation(line: 130, column: 1, scope: !700)
!786 = !DILocation(line: 131, column: 1, scope: !700)
!787 = !DILocation(line: 132, column: 1, scope: !700)
!788 = !DILocation(line: 133, column: 1, scope: !700)
!789 = !DILocation(line: 134, column: 1, scope: !700)
!790 = !DILocation(line: 135, column: 1, scope: !700)
!791 = !DILocation(line: 136, column: 1, scope: !700)
!792 = !DILocation(line: 137, column: 1, scope: !700)
!793 = !DILocation(line: 138, column: 1, scope: !700)
!794 = !DILocation(line: 139, column: 1, scope: !700)
!795 = !DILocation(line: 140, column: 1, scope: !700)
!796 = !DILocation(line: 141, column: 1, scope: !700)
!797 = !DILocation(line: 142, column: 1, scope: !700)
!798 = !DILocation(line: 143, column: 1, scope: !700)
!799 = !DILocation(line: 144, column: 1, scope: !700)
!800 = !DILocation(line: 145, column: 1, scope: !700)
!801 = !DILocation(line: 146, column: 1, scope: !700)
!802 = !DILocation(line: 147, column: 1, scope: !700)
!803 = !DILocation(line: 148, column: 1, scope: !700)
!804 = !DILocation(line: 149, column: 1, scope: !700)
!805 = !DILocation(line: 150, column: 1, scope: !700)
!806 = !DILocation(line: 151, column: 1, scope: !700)
!807 = !DILocation(line: 152, column: 1, scope: !700)
!808 = !DILocation(line: 153, column: 1, scope: !700)
!809 = !DILocation(line: 154, column: 1, scope: !700)
!810 = !DILocation(line: 155, column: 1, scope: !700)
!811 = !DILocation(line: 156, column: 1, scope: !700)
!812 = !DILocation(line: 157, column: 1, scope: !700)
!813 = !DILocation(line: 158, column: 1, scope: !700)
!814 = !DILocation(line: 159, column: 1, scope: !700)
!815 = !DILocation(line: 160, column: 1, scope: !700)
!816 = !DILocation(line: 161, column: 1, scope: !700)
!817 = !DILocation(line: 162, column: 1, scope: !700)
!818 = !DILocation(line: 163, column: 1, scope: !700)
!819 = !DILocation(line: 164, column: 1, scope: !700)
!820 = !DILocation(line: 165, column: 1, scope: !700)
!821 = !DILocation(line: 166, column: 1, scope: !700)
!822 = !DILocation(line: 167, column: 1, scope: !700)
!823 = !DILocation(line: 168, column: 1, scope: !700)
!824 = !DILocation(line: 169, column: 1, scope: !700)
!825 = !DILocation(line: 170, column: 1, scope: !700)
!826 = !DILocation(line: 171, column: 1, scope: !700)
!827 = !DILocation(line: 172, column: 1, scope: !700)
!828 = !DILocation(line: 173, column: 1, scope: !700)
!829 = !DILocation(line: 174, column: 1, scope: !700)
!830 = !DILocation(line: 175, column: 1, scope: !700)
!831 = !DILocation(line: 176, column: 1, scope: !700)
!832 = !DILocation(line: 177, column: 1, scope: !700)
!833 = !DILocation(line: 178, column: 1, scope: !700)
!834 = !DILocation(line: 179, column: 1, scope: !700)
!835 = !DILocation(line: 180, column: 1, scope: !700)
!836 = !DILocation(line: 181, column: 1, scope: !700)
!837 = !DILocation(line: 182, column: 1, scope: !700)
!838 = !DILocation(line: 183, column: 1, scope: !700)
!839 = !DILocation(line: 184, column: 1, scope: !700)
!840 = !DILocation(line: 185, column: 1, scope: !700)
!841 = !DILocation(line: 186, column: 1, scope: !700)
!842 = !DILocation(line: 187, column: 1, scope: !700)
!843 = !DILocation(line: 188, column: 1, scope: !700)
!844 = !DILocation(line: 189, column: 1, scope: !700)
!845 = !DILocation(line: 190, column: 1, scope: !700)
!846 = !DILocation(line: 191, column: 1, scope: !700)
!847 = !DILocation(line: 192, column: 1, scope: !700)
!848 = !DILocation(line: 193, column: 1, scope: !700)
!849 = !DILocation(line: 194, column: 1, scope: !700)
!850 = !DILocation(line: 195, column: 1, scope: !700)
!851 = !DILocation(line: 196, column: 1, scope: !700)
!852 = !DILocation(line: 197, column: 1, scope: !700)
!853 = !DILocation(line: 198, column: 1, scope: !700)
!854 = !DILocation(line: 199, column: 1, scope: !700)
!855 = !DILocation(line: 200, column: 1, scope: !700)
!856 = !DILocation(line: 201, column: 1, scope: !700)
!857 = !DILocation(line: 202, column: 1, scope: !700)
!858 = !DILocation(line: 203, column: 1, scope: !700)
!859 = !DILocation(line: 204, column: 1, scope: !700)
!860 = !DILocation(line: 205, column: 1, scope: !700)
!861 = !DILocation(line: 206, column: 1, scope: !700)
!862 = !DILocation(line: 207, column: 1, scope: !700)
!863 = !DILocation(line: 208, column: 1, scope: !700)
!864 = !DILocation(line: 209, column: 1, scope: !700)
!865 = !DILocation(line: 210, column: 1, scope: !700)
!866 = !DILocation(line: 211, column: 1, scope: !700)
!867 = !DILocation(line: 212, column: 1, scope: !700)
!868 = !DILocation(line: 213, column: 1, scope: !700)
!869 = !DILocation(line: 214, column: 1, scope: !700)
!870 = !DILocation(line: 215, column: 1, scope: !700)
!871 = !DILocation(line: 218, column: 1, scope: !700)
!872 = !DILocation(line: 250, column: 19, scope: !873)
!873 = !DILexicalBlockFile(scope: !694, file: !3, discriminator: 0)
!874 = !DILocation(line: 250, column: 17, scope: !873)
!875 = !DILocation(line: 255, column: 1, scope: !873)
!876 = distinct !DISubprogram(name: "timevar_push_1", scope: !3, file: !3, line: 265, type: !877, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !212}
!879 = !{!880, !881, !882, !883}
!880 = !DILocalVariable(name: "timevar", arg: 1, scope: !876, file: !3, line: 265, type: !212)
!881 = !DILocalVariable(name: "tv", scope: !876, file: !3, line: 267, type: !197)
!882 = !DILocalVariable(name: "context", scope: !876, file: !3, line: 268, type: !193)
!883 = !DILocalVariable(name: "now", scope: !876, file: !3, line: 269, type: !201)
!884 = !DILocation(line: 0, scope: !876)
!885 = !DILocation(line: 267, column: 29, scope: !876)
!886 = !DILocation(line: 269, column: 3, scope: !876)
!887 = !DILocation(line: 272, column: 7, scope: !876)
!888 = !DILocation(line: 272, column: 12, scope: !876)
!889 = !DILocation(line: 275, column: 3, scope: !876)
!890 = !DILocation(line: 278, column: 3, scope: !876)
!891 = !DILocation(line: 282, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !876, file: !3, line: 282, column: 7)
!893 = !DILocation(line: 282, column: 7, scope: !876)
!894 = !DILocation(line: 283, column: 33, scope: !892)
!895 = !DILocation(line: 283, column: 42, scope: !892)
!896 = !DILocation(line: 283, column: 5, scope: !892)
!897 = !DILocation(line: 287, column: 16, scope: !876)
!898 = !DILocation(line: 291, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !876, file: !3, line: 291, column: 7)
!900 = !DILocation(line: 291, column: 30, scope: !899)
!901 = !DILocation(line: 291, column: 7, scope: !876)
!902 = !DILocation(line: 294, column: 56, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !3, line: 292, column: 5)
!904 = !DILocation(line: 294, column: 30, scope: !903)
!905 = !DILocation(line: 295, column: 5, scope: !903)
!906 = !DILocation(line: 297, column: 15, scope: !899)
!907 = !DILocation(line: 0, scope: !899)
!908 = !DILocation(line: 300, column: 12, scope: !876)
!909 = !DILocation(line: 300, column: 20, scope: !876)
!910 = !DILocation(line: 301, column: 19, scope: !876)
!911 = !DILocation(line: 301, column: 12, scope: !876)
!912 = !DILocation(line: 301, column: 17, scope: !876)
!913 = !DILocation(line: 302, column: 9, scope: !876)
!914 = !DILocation(line: 303, column: 1, scope: !876)
!915 = distinct !DISubprogram(name: "get_time", scope: !3, file: !3, line: 191, type: !916, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !919)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!919 = !{!920, !921}
!920 = !DILocalVariable(name: "now", arg: 1, scope: !915, file: !3, line: 191, type: !918)
!921 = !DILocalVariable(name: "tms", scope: !922, file: !3, line: 203, type: !923)
!922 = distinct !DILexicalBlock(scope: !915, file: !3, line: 201, column: 3)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tms", file: !924, line: 32, size: 256, elements: !925)
!924 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/times.h", directory: "")
!925 = !{!926, !930, !931, !932}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tms_utime", scope: !923, file: !924, line: 34, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !928, line: 7, baseType: !929)
!928 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "")
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !294, line: 156, baseType: !214)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tms_stime", scope: !923, file: !924, line: 35, baseType: !927, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cutime", scope: !923, file: !924, line: 37, baseType: !927, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cstime", scope: !923, file: !924, line: 38, baseType: !927, size: 64, offset: 192)
!933 = !DILocation(line: 0, scope: !915)
!934 = !DILocation(line: 193, column: 8, scope: !915)
!935 = !DILocation(line: 193, column: 13, scope: !915)
!936 = !DILocation(line: 194, column: 8, scope: !915)
!937 = !DILocation(line: 194, column: 13, scope: !915)
!938 = !DILocation(line: 195, column: 8, scope: !915)
!939 = !DILocation(line: 195, column: 13, scope: !915)
!940 = !DILocation(line: 196, column: 18, scope: !915)
!941 = !DILocation(line: 196, column: 8, scope: !915)
!942 = !DILocation(line: 196, column: 16, scope: !915)
!943 = !DILocation(line: 198, column: 8, scope: !944)
!944 = distinct !DILexicalBlock(scope: !915, file: !3, line: 198, column: 7)
!945 = !DILocation(line: 198, column: 7, scope: !915)
!946 = !DILocation(line: 203, column: 5, scope: !922)
!947 = !DILocation(line: 0, scope: !922)
!948 = !DILocation(line: 204, column: 17, scope: !922)
!949 = !DILocation(line: 204, column: 33, scope: !922)
!950 = !DILocation(line: 204, column: 31, scope: !922)
!951 = !DILocation(line: 204, column: 15, scope: !922)
!952 = !DILocation(line: 205, column: 21, scope: !922)
!953 = !DILocation(line: 205, column: 17, scope: !922)
!954 = !DILocation(line: 205, column: 31, scope: !922)
!955 = !DILocation(line: 205, column: 15, scope: !922)
!956 = !DILocation(line: 206, column: 21, scope: !922)
!957 = !DILocation(line: 206, column: 17, scope: !922)
!958 = !DILocation(line: 206, column: 33, scope: !922)
!959 = !DILocation(line: 206, column: 31, scope: !922)
!960 = !DILocation(line: 206, column: 15, scope: !922)
!961 = !DILocation(line: 217, column: 3, scope: !915)
!962 = !DILocation(line: 218, column: 1, scope: !915)
!963 = distinct !DISubprogram(name: "timevar_accumulate", scope: !3, file: !3, line: 223, type: !964, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !918, !918, !918}
!966 = !{!967, !968, !969}
!967 = !DILocalVariable(name: "timer", arg: 1, scope: !963, file: !3, line: 223, type: !918)
!968 = !DILocalVariable(name: "start_time", arg: 2, scope: !963, file: !3, line: 224, type: !918)
!969 = !DILocalVariable(name: "stop_time", arg: 3, scope: !963, file: !3, line: 225, type: !918)
!970 = !DILocation(line: 0, scope: !963)
!971 = !DILocation(line: 227, column: 29, scope: !963)
!972 = !DILocation(line: 227, column: 48, scope: !963)
!973 = !DILocation(line: 227, column: 34, scope: !963)
!974 = !DILocation(line: 227, column: 10, scope: !963)
!975 = !DILocation(line: 227, column: 15, scope: !963)
!976 = !DILocation(line: 228, column: 28, scope: !963)
!977 = !DILocation(line: 228, column: 46, scope: !963)
!978 = !DILocation(line: 228, column: 32, scope: !963)
!979 = !DILocation(line: 228, column: 10, scope: !963)
!980 = !DILocation(line: 228, column: 14, scope: !963)
!981 = !DILocation(line: 229, column: 29, scope: !963)
!982 = !DILocation(line: 229, column: 48, scope: !963)
!983 = !DILocation(line: 229, column: 34, scope: !963)
!984 = !DILocation(line: 229, column: 10, scope: !963)
!985 = !DILocation(line: 229, column: 15, scope: !963)
!986 = !DILocation(line: 230, column: 32, scope: !963)
!987 = !DILocation(line: 230, column: 54, scope: !963)
!988 = !DILocation(line: 230, column: 40, scope: !963)
!989 = !DILocation(line: 230, column: 10, scope: !963)
!990 = !DILocation(line: 230, column: 18, scope: !963)
!991 = !DILocation(line: 231, column: 1, scope: !963)
!992 = distinct !DISubprogram(name: "timevar_pop_1", scope: !3, file: !3, line: 312, type: !877, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!993 = !{!994, !995, !996}
!994 = !DILocalVariable(name: "timevar", arg: 1, scope: !992, file: !3, line: 312, type: !212)
!995 = !DILocalVariable(name: "now", scope: !992, file: !3, line: 314, type: !201)
!996 = !DILocalVariable(name: "popped", scope: !992, file: !3, line: 315, type: !193)
!997 = !DILocation(line: 0, scope: !992)
!998 = !DILocation(line: 314, column: 3, scope: !992)
!999 = !DILocation(line: 315, column: 38, scope: !992)
!1000 = !DILocation(line: 317, column: 3, scope: !992)
!1001 = !DILocation(line: 320, column: 3, scope: !992)
!1002 = !DILocation(line: 323, column: 32, scope: !992)
!1003 = !DILocation(line: 323, column: 41, scope: !992)
!1004 = !DILocation(line: 323, column: 3, scope: !992)
!1005 = !DILocation(line: 327, column: 16, scope: !992)
!1006 = !DILocation(line: 330, column: 11, scope: !992)
!1007 = !DILocation(line: 330, column: 18, scope: !992)
!1008 = !DILocation(line: 330, column: 9, scope: !992)
!1009 = !DILocation(line: 334, column: 18, scope: !992)
!1010 = !DILocation(line: 334, column: 11, scope: !992)
!1011 = !DILocation(line: 334, column: 16, scope: !992)
!1012 = !DILocation(line: 335, column: 26, scope: !992)
!1013 = !DILocation(line: 336, column: 1, scope: !992)
!1014 = distinct !DISubprogram(name: "timevar_start", scope: !3, file: !3, line: 343, type: !877, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1015)
!1015 = !{!1016, !1017}
!1016 = !DILocalVariable(name: "timevar", arg: 1, scope: !1014, file: !3, line: 343, type: !212)
!1017 = !DILocalVariable(name: "tv", scope: !1014, file: !3, line: 345, type: !197)
!1018 = !DILocation(line: 0, scope: !1014)
!1019 = !DILocation(line: 345, column: 29, scope: !1014)
!1020 = !DILocation(line: 347, column: 8, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 347, column: 7)
!1022 = !DILocation(line: 347, column: 7, scope: !1014)
!1023 = !DILocation(line: 351, column: 7, scope: !1014)
!1024 = !DILocation(line: 351, column: 12, scope: !1014)
!1025 = !DILocation(line: 355, column: 3, scope: !1014)
!1026 = !DILocation(line: 356, column: 18, scope: !1014)
!1027 = !DILocation(line: 358, column: 18, scope: !1014)
!1028 = !DILocation(line: 358, column: 3, scope: !1014)
!1029 = !DILocation(line: 359, column: 1, scope: !1014)
!1030 = distinct !DISubprogram(name: "timevar_stop", scope: !3, file: !3, line: 365, type: !877, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DILocalVariable(name: "timevar", arg: 1, scope: !1030, file: !3, line: 365, type: !212)
!1033 = !DILocalVariable(name: "tv", scope: !1030, file: !3, line: 367, type: !197)
!1034 = !DILocalVariable(name: "now", scope: !1030, file: !3, line: 368, type: !201)
!1035 = !DILocation(line: 0, scope: !1030)
!1036 = !DILocation(line: 367, column: 29, scope: !1030)
!1037 = !DILocation(line: 368, column: 3, scope: !1030)
!1038 = !DILocation(line: 370, column: 8, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 370, column: 7)
!1040 = !DILocation(line: 370, column: 7, scope: !1030)
!1041 = !DILocation(line: 374, column: 3, scope: !1030)
!1042 = !DILocation(line: 376, column: 3, scope: !1030)
!1043 = !DILocation(line: 377, column: 28, scope: !1030)
!1044 = !DILocation(line: 377, column: 42, scope: !1030)
!1045 = !DILocation(line: 377, column: 3, scope: !1030)
!1046 = !DILocation(line: 378, column: 1, scope: !1030)
!1047 = distinct !DISubprogram(name: "timevar_print", scope: !3, file: !3, line: 385, type: !1048, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !267}
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1059}
!1051 = !DILocalVariable(name: "fp", arg: 1, scope: !1047, file: !3, line: 385, type: !267)
!1052 = !DILocalVariable(name: "id", scope: !1047, file: !3, line: 389, type: !7)
!1053 = !DILocalVariable(name: "total", scope: !1047, file: !3, line: 390, type: !918)
!1054 = !DILocalVariable(name: "now", scope: !1047, file: !3, line: 391, type: !201)
!1055 = !DILocalVariable(name: "tv", scope: !1056, file: !3, line: 416, type: !197)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 415, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 414, column: 3)
!1058 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 414, column: 3)
!1059 = !DILocalVariable(name: "tiny", scope: !1056, file: !3, line: 417, type: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!1061 = !DILocation(line: 0, scope: !1047)
!1062 = !DILocation(line: 391, column: 3, scope: !1047)
!1063 = !DILocation(line: 393, column: 8, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 393, column: 7)
!1065 = !DILocation(line: 393, column: 7, scope: !1047)
!1066 = !DILocation(line: 398, column: 10, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 398, column: 7)
!1068 = !DILocation(line: 399, column: 10, scope: !1067)
!1069 = !DILocation(line: 398, column: 7, scope: !1047)
!1070 = !DILocation(line: 402, column: 3, scope: !1047)
!1071 = !DILocation(line: 406, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 406, column: 7)
!1073 = !DILocation(line: 406, column: 7, scope: !1047)
!1074 = !DILocation(line: 407, column: 33, scope: !1072)
!1075 = !DILocation(line: 407, column: 42, scope: !1072)
!1076 = !DILocation(line: 407, column: 5, scope: !1072)
!1077 = !DILocation(line: 411, column: 16, scope: !1047)
!1078 = !DILocation(line: 413, column: 3, scope: !1047)
!1079 = !DILocation(line: 414, column: 8, scope: !1058)
!1080 = !DILocation(line: 0, scope: !1058)
!1081 = !DILocation(line: 414, column: 19, scope: !1057)
!1082 = !DILocation(line: 414, column: 3, scope: !1058)
!1083 = !DILocation(line: 0, scope: !1056)
!1084 = !DILocation(line: 421, column: 29, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 421, column: 11)
!1086 = !DILocation(line: 421, column: 11, scope: !1056)
!1087 = !DILocation(line: 425, column: 16, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 425, column: 11)
!1089 = !DILocation(line: 425, column: 12, scope: !1088)
!1090 = !DILocation(line: 425, column: 11, scope: !1056)
!1091 = !DILocation(line: 430, column: 23, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 430, column: 11)
!1093 = !DILocation(line: 430, column: 28, scope: !1092)
!1094 = !DILocation(line: 431, column: 4, scope: !1092)
!1095 = !DILocation(line: 431, column: 19, scope: !1092)
!1096 = !DILocation(line: 431, column: 23, scope: !1092)
!1097 = !DILocation(line: 432, column: 4, scope: !1092)
!1098 = !DILocation(line: 432, column: 19, scope: !1092)
!1099 = !DILocation(line: 432, column: 24, scope: !1092)
!1100 = !DILocation(line: 433, column: 4, scope: !1092)
!1101 = !DILocation(line: 433, column: 19, scope: !1092)
!1102 = !DILocation(line: 433, column: 27, scope: !1092)
!1103 = !DILocation(line: 430, column: 11, scope: !1056)
!1104 = !DILocation(line: 437, column: 35, scope: !1056)
!1105 = !DILocation(line: 437, column: 7, scope: !1056)
!1106 = !DILocation(line: 442, column: 21, scope: !1056)
!1107 = !DILocation(line: 443, column: 17, scope: !1056)
!1108 = !DILocation(line: 443, column: 22, scope: !1056)
!1109 = !DILocation(line: 443, column: 10, scope: !1056)
!1110 = !DILocation(line: 443, column: 50, scope: !1056)
!1111 = !DILocation(line: 443, column: 65, scope: !1056)
!1112 = !DILocation(line: 441, column: 7, scope: !1056)
!1113 = !DILocation(line: 449, column: 21, scope: !1056)
!1114 = !DILocation(line: 450, column: 17, scope: !1056)
!1115 = !DILocation(line: 450, column: 21, scope: !1056)
!1116 = !DILocation(line: 450, column: 10, scope: !1056)
!1117 = !DILocation(line: 450, column: 48, scope: !1056)
!1118 = !DILocation(line: 450, column: 62, scope: !1056)
!1119 = !DILocation(line: 448, column: 7, scope: !1056)
!1120 = !DILocation(line: 456, column: 21, scope: !1056)
!1121 = !DILocation(line: 457, column: 17, scope: !1056)
!1122 = !DILocation(line: 457, column: 22, scope: !1056)
!1123 = !DILocation(line: 457, column: 10, scope: !1056)
!1124 = !DILocation(line: 457, column: 50, scope: !1056)
!1125 = !DILocation(line: 457, column: 65, scope: !1056)
!1126 = !DILocation(line: 455, column: 7, scope: !1056)
!1127 = !DILocation(line: 462, column: 33, scope: !1056)
!1128 = !DILocation(line: 462, column: 41, scope: !1056)
!1129 = !DILocation(line: 463, column: 17, scope: !1056)
!1130 = !DILocation(line: 463, column: 25, scope: !1056)
!1131 = !DILocation(line: 463, column: 10, scope: !1056)
!1132 = !DILocation(line: 465, column: 5, scope: !1056)
!1133 = !DILocation(line: 465, column: 35, scope: !1056)
!1134 = !DILocation(line: 465, column: 33, scope: !1056)
!1135 = !DILocation(line: 465, column: 51, scope: !1056)
!1136 = !DILocation(line: 463, column: 9, scope: !1056)
!1137 = !DILocation(line: 461, column: 7, scope: !1056)
!1138 = !DILocation(line: 467, column: 7, scope: !1056)
!1139 = !DILocation(line: 468, column: 5, scope: !1057)
!1140 = !DILocation(line: 414, column: 50, scope: !1057)
!1141 = !DILocation(line: 414, column: 3, scope: !1057)
!1142 = distinct !{!1142, !1082, !1143}
!1143 = !DILocation(line: 468, column: 5, scope: !1058)
!1144 = !DILocation(line: 471, column: 3, scope: !1047)
!1145 = !DILocation(line: 473, column: 42, scope: !1047)
!1146 = !DILocation(line: 473, column: 3, scope: !1047)
!1147 = !DILocation(line: 476, column: 42, scope: !1047)
!1148 = !DILocation(line: 476, column: 3, scope: !1047)
!1149 = !DILocation(line: 479, column: 43, scope: !1047)
!1150 = !DILocation(line: 479, column: 3, scope: !1047)
!1151 = !DILocation(line: 481, column: 47, scope: !1047)
!1152 = !DILocation(line: 481, column: 55, scope: !1047)
!1153 = !DILocation(line: 481, column: 3, scope: !1047)
!1154 = !DILocation(line: 494, column: 1, scope: !1047)
!1155 = distinct !DISubprogram(name: "print_time", scope: !3, file: !3, line: 500, type: !1156, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1158)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !190, !214}
!1158 = !{!1159, !1160, !1161}
!1159 = !DILocalVariable(name: "str", arg: 1, scope: !1155, file: !3, line: 500, type: !190)
!1160 = !DILocalVariable(name: "total", arg: 2, scope: !1155, file: !3, line: 500, type: !214)
!1161 = !DILocalVariable(name: "all_time", scope: !1155, file: !3, line: 502, type: !214)
!1162 = !DILocation(line: 0, scope: !1155)
!1163 = !DILocation(line: 502, column: 19, scope: !1155)
!1164 = !DILocation(line: 503, column: 12, scope: !1155)
!1165 = !DILocation(line: 505, column: 16, scope: !1155)
!1166 = !DILocation(line: 505, column: 33, scope: !1155)
!1167 = !DILocation(line: 506, column: 14, scope: !1155)
!1168 = !DILocation(line: 506, column: 5, scope: !1155)
!1169 = !DILocation(line: 507, column: 25, scope: !1155)
!1170 = !DILocation(line: 507, column: 23, scope: !1155)
!1171 = !DILocation(line: 507, column: 43, scope: !1155)
!1172 = !DILocation(line: 507, column: 41, scope: !1155)
!1173 = !DILocation(line: 507, column: 62, scope: !1155)
!1174 = !DILocation(line: 507, column: 7, scope: !1155)
!1175 = !DILocation(line: 503, column: 3, scope: !1155)
!1176 = !DILocation(line: 508, column: 1, scope: !1155)
