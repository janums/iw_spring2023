; ModuleID = 'strsignal.bc'
source_filename = "strsignal.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.signal_info = type { i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@signal_names = internal unnamed_addr global i8** null, align 8, !dbg !0
@num_signal_names = internal unnamed_addr global i32 0, align 4, !dbg !40
@strsigno.buf = internal global [32 x i8] zeroinitializer, align 16, !dbg !15
@.str = private unnamed_addr constant [10 x i8] c"Signal %d\00", align 1
@signal_table = internal unnamed_addr constant [34 x %struct.signal_info] [%struct.signal_info { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, %struct.signal_info { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0) }, %struct.signal_info { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct.signal_info { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0) }, %struct.signal_info { i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0) }, %struct.signal_info { i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0) }, %struct.signal_info { i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0) }, %struct.signal_info { i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0) }, %struct.signal_info { i32 9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0) }, %struct.signal_info { i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0) }, %struct.signal_info { i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0) }, %struct.signal_info { i32 31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0) }, %struct.signal_info { i32 13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0) }, %struct.signal_info { i32 14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0) }, %struct.signal_info { i32 15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0) }, %struct.signal_info { i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0) }, %struct.signal_info { i32 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0) }, %struct.signal_info { i32 17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0) }, %struct.signal_info { i32 17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0) }, %struct.signal_info { i32 30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0) }, %struct.signal_info { i32 28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0) }, %struct.signal_info { i32 23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0) }, %struct.signal_info { i32 29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0) }, %struct.signal_info { i32 29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0) }, %struct.signal_info { i32 19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0) }, %struct.signal_info { i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0) }, %struct.signal_info { i32 18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0) }, %struct.signal_info { i32 21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0) }, %struct.signal_info { i32 22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0) }, %struct.signal_info { i32 26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0) }, %struct.signal_info { i32 27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0) }, %struct.signal_info { i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0) }, %struct.signal_info { i32 25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0) }, %struct.signal_info zeroinitializer], align 16, !dbg !26
@.str.1 = private unnamed_addr constant [7 x i8] c"SIGHUP\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SIGINT\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SIGQUIT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SIGILL\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SIGTRAP\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SIGIOT\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"SIGABRT\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SIGFPE\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"SIGKILL\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"SIGBUS\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"SIGSEGV\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"SIGSYS\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"SIGPIPE\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"SIGALRM\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"SIGTERM\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"SIGUSR1\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"SIGUSR2\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"SIGCLD\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"SIGCHLD\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"SIGPWR\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"SIGWINCH\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"SIGURG\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"SIGIO\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"SIGPOLL\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"SIGSTOP\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"SIGTSTP\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"SIGCONT\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"SIGTTIN\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"SIGTTOU\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"SIGVTALRM\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"SIGPROF\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"SIGXCPU\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"SIGXFSZ\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !46 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !60, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !61, metadata !DIExpression()), !dbg !62
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !63
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #4, !dbg !64
  ret i32 %call, !dbg !65
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !66 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !69
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #4, !dbg !70
  ret i32 %call, !dbg !71
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !72 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !78
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #4, !dbg !79
  ret i32 %call, !dbg !80
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !81 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !86, metadata !DIExpression()), !dbg !87
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #4, !dbg !88
  %conv = trunc i64 %call to i32, !dbg !89
  ret i32 %conv, !dbg !90
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !91 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !96, metadata !DIExpression()), !dbg !97
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #4, !dbg !98
  ret i64 %call, !dbg !99
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !100 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !105, metadata !DIExpression()), !dbg !106
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #4, !dbg !107
  ret i64 %call, !dbg !108
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !123, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i8* %__base, metadata !124, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !125, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %__size, metadata !126, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !127, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !128, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !129, metadata !DIExpression()), !dbg !133
  br label %while.cond, !dbg !134

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !135
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !133
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !129, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !128, metadata !DIExpression()), !dbg !133
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !136
  br i1 %cmp, label %while.body, label %cleanup, !dbg !134

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !137
  %div = lshr i64 %add, 1, !dbg !139
  call void @llvm.dbg.value(metadata i64 %div, metadata !130, metadata !DIExpression()), !dbg !133
  %mul = mul i64 %div, %__size, !dbg !140
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !141
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !131, metadata !DIExpression()), !dbg !133
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #4, !dbg !142
  call void @llvm.dbg.value(metadata i32 %call, metadata !132, metadata !DIExpression()), !dbg !133
  %cmp1 = icmp slt i32 %call, 0, !dbg !143
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !145

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !146
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !148

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !149
  call void @llvm.dbg.value(metadata i64 %add4, metadata !128, metadata !DIExpression()), !dbg !133
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !133
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !133
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !129, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !128, metadata !DIExpression()), !dbg !133
  br label %while.cond, !dbg !134, !llvm.loop !150

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !133
  ret i8* %retval.0, !dbg !152
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !153 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !159, metadata !DIExpression()), !dbg !160
  %call = tail call double @strtod(i8* %__nptr, i8** null) #4, !dbg !161
  ret double %call, !dbg !162
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @signo_max() local_unnamed_addr #2 !dbg !163 {
entry:
  %0 = load i8**, i8*** @signal_names, align 8, !dbg !166
  %cmp = icmp eq i8** %0, null, !dbg !168
  br i1 %cmp, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %entry
  tail call fastcc void @init_signal_tables() #5, !dbg !170
  br label %if.end, !dbg !172

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @num_signal_names, align 4, !dbg !173
  %2 = icmp sgt i32 %1, 65, !dbg !173
  %cond = select i1 %2, i32 %1, i32 65, !dbg !173
  call void @llvm.dbg.value(metadata i32 %cond, metadata !165, metadata !DIExpression()), !dbg !174
  %sub = add nsw i32 %cond, -1, !dbg !175
  ret i32 %sub, !dbg !176
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_signal_tables() unnamed_addr #2 !dbg !177 {
entry:
  %0 = load i32, i32* @num_signal_names, align 4, !dbg !184
  %cmp = icmp eq i32 %0, 0, !dbg !186
  br i1 %cmp, label %for.cond.preheader, label %if.end5, !dbg !187

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !188

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi i32 [ %4, %for.inc ], [ 0, %for.cond.preheader ]
  %eip.0 = phi %struct.signal_info* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([34 x %struct.signal_info], [34 x %struct.signal_info]* @signal_table, i64 0, i64 0), %for.cond.preheader ], !dbg !191
  call void @llvm.dbg.value(metadata %struct.signal_info* %eip.0, metadata !181, metadata !DIExpression()), !dbg !192
  %name = getelementptr inbounds %struct.signal_info, %struct.signal_info* %eip.0, i64 0, i32 1, !dbg !193
  %2 = load i8*, i8** %name, align 8, !dbg !193
  %cmp1 = icmp eq i8* %2, null, !dbg !195
  br i1 %cmp1, label %if.end5.loopexit, label %for.body, !dbg !188

for.body:                                         ; preds = %for.cond
  %value = getelementptr inbounds %struct.signal_info, %struct.signal_info* %eip.0, i64 0, i32 0, !dbg !196
  %3 = load i32, i32* %value, align 8, !dbg !196
  %cmp2 = icmp slt i32 %3, %1, !dbg !199
  br i1 %cmp2, label %for.inc, label %if.then3, !dbg !200

if.then3:                                         ; preds = %for.body
  %add = add nsw i32 %3, 1, !dbg !201
  store i32 %add, i32* @num_signal_names, align 4, !dbg !203
  br label %for.inc, !dbg !204

for.inc:                                          ; preds = %for.body, %if.then3
  %4 = phi i32 [ %1, %for.body ], [ %add, %if.then3 ]
  %incdec.ptr = getelementptr inbounds %struct.signal_info, %struct.signal_info* %eip.0, i64 1, !dbg !205
  call void @llvm.dbg.value(metadata %struct.signal_info* %incdec.ptr, metadata !181, metadata !DIExpression()), !dbg !192
  br label %for.cond, !dbg !206, !llvm.loop !207

if.end5.loopexit:                                 ; preds = %for.cond
  %.lcssa = phi i32 [ %1, %for.cond ]
  br label %if.end5, !dbg !209

if.end5:                                          ; preds = %if.end5.loopexit, %entry
  %5 = phi i32 [ %.lcssa, %if.end5.loopexit ], [ %0, %entry ]
  %6 = load i8**, i8*** @signal_names, align 8, !dbg !209
  %cmp6 = icmp eq i8** %6, null, !dbg !211
  br i1 %cmp6, label %if.then7, label %if.end26, !dbg !212

if.then7:                                         ; preds = %if.end5
  %mul = shl i32 %5, 3, !dbg !213
  call void @llvm.dbg.value(metadata i32 %mul, metadata !183, metadata !DIExpression()), !dbg !192
  %conv9 = sext i32 %mul to i64, !dbg !215
  %call = tail call i8* @malloc(i64 %conv9) #4, !dbg !217
  store i8* %call, i8** bitcast (i8*** @signal_names to i8**), align 8, !dbg !218
  %cmp10 = icmp eq i8* %call, null, !dbg !219
  br i1 %cmp10, label %if.end26, label %if.then12, !dbg !220

if.then12:                                        ; preds = %if.then7
  %call14 = tail call i8* @memset(i8* nonnull %call, i32 0, i64 %conv9) #4, !dbg !221
  call void @llvm.dbg.value(metadata %struct.signal_info* getelementptr inbounds ([34 x %struct.signal_info], [34 x %struct.signal_info]* @signal_table, i64 0, i64 0), metadata !181, metadata !DIExpression()), !dbg !192
  br label %for.cond15, !dbg !223

for.cond15:                                       ; preds = %for.body19, %if.then12
  %eip.1 = phi %struct.signal_info* [ getelementptr inbounds ([34 x %struct.signal_info], [34 x %struct.signal_info]* @signal_table, i64 0, i64 0), %if.then12 ], [ %incdec.ptr23, %for.body19 ], !dbg !225
  call void @llvm.dbg.value(metadata %struct.signal_info* %eip.1, metadata !181, metadata !DIExpression()), !dbg !192
  %name16 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %eip.1, i64 0, i32 1, !dbg !226
  %7 = load i8*, i8** %name16, align 8, !dbg !226
  %cmp17 = icmp eq i8* %7, null, !dbg !228
  br i1 %cmp17, label %if.end26.loopexit, label %for.body19, !dbg !229

for.body19:                                       ; preds = %for.cond15
  %8 = ptrtoint i8* %7 to i64, !dbg !229
  %9 = load i8**, i8*** @signal_names, align 8, !dbg !230
  %value21 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %eip.1, i64 0, i32 0, !dbg !232
  %10 = load i32, i32* %value21, align 8, !dbg !232
  %idxprom = sext i32 %10 to i64, !dbg !230
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom, !dbg !230
  %11 = bitcast i8** %arrayidx to i64*, !dbg !233
  store i64 %8, i64* %11, align 8, !dbg !233
  %incdec.ptr23 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %eip.1, i64 1, !dbg !234
  call void @llvm.dbg.value(metadata %struct.signal_info* %incdec.ptr23, metadata !181, metadata !DIExpression()), !dbg !192
  br label %for.cond15, !dbg !235, !llvm.loop !236

if.end26.loopexit:                                ; preds = %for.cond15
  br label %if.end26, !dbg !238

if.end26:                                         ; preds = %if.end26.loopexit, %if.then7, %if.end5
  ret void, !dbg !238
}

; Function Attrs: nounwind uwtable
define dso_local i8* @strsigno(i32 %signo) local_unnamed_addr #2 !dbg !17 {
entry:
  call void @llvm.dbg.value(metadata i32 %signo, metadata !21, metadata !DIExpression()), !dbg !239
  %0 = load i8**, i8*** @signal_names, align 8, !dbg !240
  %cmp = icmp eq i8** %0, null, !dbg !242
  br i1 %cmp, label %if.then, label %if.end, !dbg !243

if.then:                                          ; preds = %entry
  tail call fastcc void @init_signal_tables() #5, !dbg !244
  br label %if.end, !dbg !246

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp slt i32 %signo, 0, !dbg !247
  %1 = load i32, i32* @num_signal_names, align 4, !dbg !249
  %cmp2 = icmp sle i32 %1, %signo, !dbg !250
  %or.cond = or i1 %cmp1, %cmp2, !dbg !251
  br i1 %or.cond, label %if.end12, label %if.else, !dbg !251

if.else:                                          ; preds = %if.end
  %2 = load i8**, i8*** @signal_names, align 8, !dbg !252
  %cmp4 = icmp eq i8** %2, null, !dbg !254
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !255

lor.lhs.false5:                                   ; preds = %if.else
  %idxprom = sext i32 %signo to i64, !dbg !256
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom, !dbg !256
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !256
  %cmp6 = icmp eq i8* %3, null, !dbg !257
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !258

if.then7:                                         ; preds = %lor.lhs.false5, %if.else
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @strsigno.buf, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %signo) #4, !dbg !259
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @strsigno.buf, i64 0, i64 0), metadata !22, metadata !DIExpression()), !dbg !239
  br label %if.end12, !dbg !261

if.else8:                                         ; preds = %lor.lhs.false5
  call void @llvm.dbg.value(metadata i8* %3, metadata !22, metadata !DIExpression()), !dbg !239
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.else8, %if.end
  %name.1 = phi i8* [ null, %if.end ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @strsigno.buf, i64 0, i64 0), %if.then7 ], [ %3, %if.else8 ], !dbg !262
  call void @llvm.dbg.value(metadata i8* %name.1, metadata !22, metadata !DIExpression()), !dbg !239
  ret i8* %name.1, !dbg !263
}

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @strtosigno(i8* %name) local_unnamed_addr #2 !dbg !264 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !266, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()), !dbg !268
  %cmp = icmp eq i8* %name, null, !dbg !269
  br i1 %cmp, label %if.end13, label %if.then, !dbg !271

if.then:                                          ; preds = %entry
  %0 = load i8**, i8*** @signal_names, align 8, !dbg !272
  %cmp1 = icmp eq i8** %0, null, !dbg !275
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !276

if.then2:                                         ; preds = %if.then
  tail call fastcc void @init_signal_tables() #5, !dbg !277
  br label %if.end, !dbg !279

if.end:                                           ; preds = %if.then2, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()), !dbg !268
  br label %for.cond, !dbg !280

for.cond:                                         ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ], !dbg !282
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !267, metadata !DIExpression()), !dbg !268
  %1 = load i32, i32* @num_signal_names, align 4, !dbg !283
  %2 = sext i32 %1 to i64, !dbg !285
  %cmp3 = icmp slt i64 %indvars.iv, %2, !dbg !285
  br i1 %cmp3, label %for.body, label %for.end.loopexit, !dbg !286

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** @signal_names, align 8, !dbg !287
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %indvars.iv, !dbg !287
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !287
  %cmp4 = icmp eq i8* %4, null, !dbg !290
  br i1 %cmp4, label %for.inc, label %land.lhs.true, !dbg !291

land.lhs.true:                                    ; preds = %for.body
  %call = tail call i32 @strcmp(i8* nonnull %name, i8* nonnull %4) #4, !dbg !292
  %cmp7 = icmp eq i32 %call, 0, !dbg !293
  br i1 %cmp7, label %land.lhs.true.for.end_crit_edge, label %for.inc, !dbg !294

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  %indvars.iv.lcssa5 = phi i64 [ %indvars.iv, %land.lhs.true ], !dbg !282
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa5, metadata !267, metadata !DIExpression()), !dbg !268
  %.pre = load i32, i32* @num_signal_names, align 4, !dbg !295
  br label %for.end, !dbg !294

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !297
  call void @llvm.dbg.value(metadata i32 undef, metadata !267, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !268
  br label %for.cond, !dbg !298, !llvm.loop !299

for.end.loopexit:                                 ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ], !dbg !282
  %.lcssa = phi i32 [ %1, %for.cond ], !dbg !283
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !267, metadata !DIExpression()), !dbg !268
  br label %for.end, !dbg !301

for.end:                                          ; preds = %for.end.loopexit, %land.lhs.true.for.end_crit_edge
  %indvars.iv6 = phi i64 [ %indvars.iv.lcssa5, %land.lhs.true.for.end_crit_edge ], [ %indvars.iv.lcssa, %for.end.loopexit ]
  %5 = phi i32 [ %.pre, %land.lhs.true.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !295
  %signo.03 = trunc i64 %indvars.iv6 to i32, !dbg !268
  call void @llvm.dbg.value(metadata i32 %signo.03, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i32 %signo.03, metadata !267, metadata !DIExpression()), !dbg !268
  %cmp10 = icmp eq i32 %5, %signo.03, !dbg !301
  %spec.select = select i1 %cmp10, i32 0, i32 %signo.03, !dbg !302
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !267, metadata !DIExpression()), !dbg !268
  br label %if.end13, !dbg !303

if.end13:                                         ; preds = %entry, %for.end
  %signo.2 = phi i32 [ %spec.select, %for.end ], [ 0, %entry ], !dbg !268
  call void @llvm.dbg.value(metadata i32 %signo.2, metadata !267, metadata !DIExpression()), !dbg !268
  ret i32 %signo.2, !dbg !304
}

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "signal_names", scope: !2, file: !3, line: 233, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, nameTableKind: None)
!3 = !DIFile(filename: "strsignal.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !10, !11, !13}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!14 = !{!15, !0, !26, !38, !40}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "buf", scope: !17, file: !3, line: 477, type: !23, isLocal: true, isDefinition: true)
!17 = distinct !DISubprogram(name: "strsigno", scope: !3, file: !3, line: 474, type: !18, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{!11, !6}
!20 = !{!21, !22}
!21 = !DILocalVariable(name: "signo", arg: 1, scope: !17, file: !3, line: 474, type: !6)
!22 = !DILocalVariable(name: "name", scope: !17, file: !3, line: 476, type: !11)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 32)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "signal_table", scope: !2, file: !3, line: 83, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 4352, elements: !36)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_info", file: !3, line: 68, size: 128, elements: !31)
!31 = !{!32, !34}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !30, file: !3, line: 70, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !3, line: 71, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!36 = !{!37}
!37 = !DISubrange(count: 34)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "sys_nsig", scope: !2, file: !3, line: 255, type: !6, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "num_signal_names", scope: !2, file: !3, line: 234, type: !6, isLocal: true, isDefinition: true)
!42 = !{i32 2, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!46 = distinct !DISubprogram(name: "vprintf", scope: !47, file: !47, line: 39, type: !48, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !59)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!48 = !DISubroutineType(types: !49)
!49 = !{!6, !50, !51}
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !53)
!53 = !{!54, !56, !57, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !52, file: !3, baseType: !55, size: 32)
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !52, file: !3, baseType: !55, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !52, file: !3, baseType: !10, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !52, file: !3, baseType: !10, size: 64, offset: 128)
!59 = !{!60, !61}
!60 = !DILocalVariable(name: "__fmt", arg: 1, scope: !46, file: !47, line: 39, type: !50)
!61 = !DILocalVariable(name: "__arg", arg: 2, scope: !46, file: !47, line: 39, type: !51)
!62 = !DILocation(line: 0, scope: !46)
!63 = !DILocation(line: 41, column: 20, scope: !46)
!64 = !DILocation(line: 41, column: 10, scope: !46)
!65 = !DILocation(line: 41, column: 3, scope: !46)
!66 = distinct !DISubprogram(name: "getchar", scope: !47, file: !47, line: 47, type: !67, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!67 = !DISubroutineType(types: !68)
!68 = !{!6}
!69 = !DILocation(line: 49, column: 16, scope: !66)
!70 = !DILocation(line: 49, column: 10, scope: !66)
!71 = !DILocation(line: 49, column: 3, scope: !66)
!72 = distinct !DISubprogram(name: "putchar", scope: !47, file: !47, line: 82, type: !73, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{!6, !6}
!75 = !{!76}
!76 = !DILocalVariable(name: "__c", arg: 1, scope: !72, file: !47, line: 82, type: !6)
!77 = !DILocation(line: 0, scope: !72)
!78 = !DILocation(line: 84, column: 21, scope: !72)
!79 = !DILocation(line: 84, column: 10, scope: !72)
!80 = !DILocation(line: 84, column: 3, scope: !72)
!81 = distinct !DISubprogram(name: "atoi", scope: !82, file: !82, line: 361, type: !83, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!82 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!83 = !DISubroutineType(types: !84)
!84 = !{!6, !11}
!85 = !{!86}
!86 = !DILocalVariable(name: "__nptr", arg: 1, scope: !81, file: !82, line: 361, type: !11)
!87 = !DILocation(line: 0, scope: !81)
!88 = !DILocation(line: 363, column: 16, scope: !81)
!89 = !DILocation(line: 363, column: 10, scope: !81)
!90 = !DILocation(line: 363, column: 3, scope: !81)
!91 = distinct !DISubprogram(name: "atol", scope: !82, file: !82, line: 366, type: !92, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !95)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !11}
!94 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!95 = !{!96}
!96 = !DILocalVariable(name: "__nptr", arg: 1, scope: !91, file: !82, line: 366, type: !11)
!97 = !DILocation(line: 0, scope: !91)
!98 = !DILocation(line: 368, column: 10, scope: !91)
!99 = !DILocation(line: 368, column: 3, scope: !91)
!100 = distinct !DISubprogram(name: "atoll", scope: !82, file: !82, line: 373, type: !101, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !104)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !11}
!103 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!104 = !{!105}
!105 = !DILocalVariable(name: "__nptr", arg: 1, scope: !100, file: !82, line: 373, type: !11)
!106 = !DILocation(line: 0, scope: !100)
!107 = !DILocation(line: 375, column: 10, scope: !100)
!108 = !DILocation(line: 375, column: 3, scope: !100)
!109 = distinct !DISubprogram(name: "bsearch", scope: !110, file: !110, line: 20, type: !111, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!111 = !DISubroutineType(types: !112)
!112 = !{!10, !113, !113, !115, !115, !118}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 46, baseType: !117)
!116 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!117 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !82, line: 808, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!6, !113, !113}
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!123 = !DILocalVariable(name: "__key", arg: 1, scope: !109, file: !110, line: 20, type: !113)
!124 = !DILocalVariable(name: "__base", arg: 2, scope: !109, file: !110, line: 20, type: !113)
!125 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !109, file: !110, line: 20, type: !115)
!126 = !DILocalVariable(name: "__size", arg: 4, scope: !109, file: !110, line: 20, type: !115)
!127 = !DILocalVariable(name: "__compar", arg: 5, scope: !109, file: !110, line: 21, type: !118)
!128 = !DILocalVariable(name: "__l", scope: !109, file: !110, line: 23, type: !115)
!129 = !DILocalVariable(name: "__u", scope: !109, file: !110, line: 23, type: !115)
!130 = !DILocalVariable(name: "__idx", scope: !109, file: !110, line: 23, type: !115)
!131 = !DILocalVariable(name: "__p", scope: !109, file: !110, line: 24, type: !113)
!132 = !DILocalVariable(name: "__comparison", scope: !109, file: !110, line: 25, type: !6)
!133 = !DILocation(line: 0, scope: !109)
!134 = !DILocation(line: 29, column: 3, scope: !109)
!135 = !DILocation(line: 27, column: 7, scope: !109)
!136 = !DILocation(line: 29, column: 14, scope: !109)
!137 = !DILocation(line: 31, column: 20, scope: !138)
!138 = distinct !DILexicalBlock(scope: !109, file: !110, line: 30, column: 5)
!139 = !DILocation(line: 31, column: 27, scope: !138)
!140 = !DILocation(line: 32, column: 56, scope: !138)
!141 = !DILocation(line: 32, column: 47, scope: !138)
!142 = !DILocation(line: 33, column: 22, scope: !138)
!143 = !DILocation(line: 34, column: 24, scope: !144)
!144 = distinct !DILexicalBlock(scope: !138, file: !110, line: 34, column: 11)
!145 = !DILocation(line: 34, column: 11, scope: !138)
!146 = !DILocation(line: 36, column: 29, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !110, line: 36, column: 16)
!148 = !DILocation(line: 36, column: 16, scope: !144)
!149 = !DILocation(line: 37, column: 14, scope: !147)
!150 = distinct !{!150, !134, !151}
!151 = !DILocation(line: 40, column: 5, scope: !109)
!152 = !DILocation(line: 43, column: 1, scope: !109)
!153 = distinct !DISubprogram(name: "atof", scope: !154, file: !154, line: 25, type: !155, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!155 = !DISubroutineType(types: !156)
!156 = !{!157, !11}
!157 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!158 = !{!159}
!159 = !DILocalVariable(name: "__nptr", arg: 1, scope: !153, file: !154, line: 25, type: !11)
!160 = !DILocation(line: 0, scope: !153)
!161 = !DILocation(line: 27, column: 10, scope: !153)
!162 = !DILocation(line: 27, column: 3, scope: !153)
!163 = distinct !DISubprogram(name: "signo_max", scope: !3, file: !3, line: 373, type: !67, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !164)
!164 = !{!165}
!165 = !DILocalVariable(name: "maxsize", scope: !163, file: !3, line: 375, type: !6)
!166 = !DILocation(line: 377, column: 7, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !3, line: 377, column: 7)
!168 = !DILocation(line: 377, column: 20, scope: !167)
!169 = !DILocation(line: 377, column: 7, scope: !163)
!170 = !DILocation(line: 379, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !3, line: 378, column: 5)
!172 = !DILocation(line: 380, column: 5, scope: !171)
!173 = !DILocation(line: 381, column: 13, scope: !163)
!174 = !DILocation(line: 0, scope: !163)
!175 = !DILocation(line: 382, column: 19, scope: !163)
!176 = !DILocation(line: 382, column: 3, scope: !163)
!177 = distinct !DISubprogram(name: "init_signal_tables", scope: !3, file: !3, line: 292, type: !178, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{null}
!180 = !{!181, !183}
!181 = !DILocalVariable(name: "eip", scope: !177, file: !3, line: 294, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!183 = !DILocalVariable(name: "nbytes", scope: !177, file: !3, line: 295, type: !6)
!184 = !DILocation(line: 300, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !3, line: 300, column: 7)
!186 = !DILocation(line: 300, column: 24, scope: !185)
!187 = !DILocation(line: 300, column: 7, scope: !177)
!188 = !DILocation(line: 302, column: 7, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 302, column: 7)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 301, column: 5)
!191 = !DILocation(line: 0, scope: !189)
!192 = !DILocation(line: 0, scope: !177)
!193 = !DILocation(line: 302, column: 39, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !3, line: 302, column: 7)
!195 = !DILocation(line: 302, column: 44, scope: !194)
!196 = !DILocation(line: 304, column: 15, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 304, column: 8)
!198 = distinct !DILexicalBlock(scope: !194, file: !3, line: 303, column: 2)
!199 = !DILocation(line: 304, column: 21, scope: !197)
!200 = !DILocation(line: 304, column: 8, scope: !198)
!201 = !DILocation(line: 306, column: 40, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !3, line: 305, column: 6)
!203 = !DILocation(line: 306, column: 25, scope: !202)
!204 = !DILocation(line: 307, column: 6, scope: !202)
!205 = !DILocation(line: 302, column: 56, scope: !194)
!206 = !DILocation(line: 302, column: 7, scope: !194)
!207 = distinct !{!207, !188, !208}
!208 = !DILocation(line: 308, column: 2, scope: !189)
!209 = !DILocation(line: 314, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !177, file: !3, line: 314, column: 7)
!211 = !DILocation(line: 314, column: 20, scope: !210)
!212 = !DILocation(line: 314, column: 7, scope: !177)
!213 = !DILocation(line: 316, column: 33, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !3, line: 315, column: 5)
!215 = !DILocation(line: 317, column: 51, scope: !216)
!216 = distinct !DILexicalBlock(scope: !214, file: !3, line: 317, column: 11)
!217 = !DILocation(line: 317, column: 43, scope: !216)
!218 = !DILocation(line: 317, column: 25, scope: !216)
!219 = !DILocation(line: 317, column: 60, scope: !216)
!220 = !DILocation(line: 317, column: 11, scope: !214)
!221 = !DILocation(line: 319, column: 4, scope: !222)
!222 = distinct !DILexicalBlock(scope: !216, file: !3, line: 318, column: 2)
!223 = !DILocation(line: 320, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !222, file: !3, line: 320, column: 4)
!225 = !DILocation(line: 0, scope: !224)
!226 = !DILocation(line: 320, column: 36, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !3, line: 320, column: 4)
!228 = !DILocation(line: 320, column: 41, scope: !227)
!229 = !DILocation(line: 320, column: 4, scope: !224)
!230 = !DILocation(line: 322, column: 8, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 321, column: 6)
!232 = !DILocation(line: 322, column: 28, scope: !231)
!233 = !DILocation(line: 322, column: 35, scope: !231)
!234 = !DILocation(line: 320, column: 53, scope: !227)
!235 = !DILocation(line: 320, column: 4, scope: !227)
!236 = distinct !{!236, !229, !237}
!237 = !DILocation(line: 323, column: 6, scope: !224)
!238 = !DILocation(line: 348, column: 1, scope: !177)
!239 = !DILocation(line: 0, scope: !17)
!240 = !DILocation(line: 479, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !17, file: !3, line: 479, column: 7)
!242 = !DILocation(line: 479, column: 20, scope: !241)
!243 = !DILocation(line: 479, column: 7, scope: !17)
!244 = !DILocation(line: 481, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 480, column: 5)
!246 = !DILocation(line: 482, column: 5, scope: !245)
!247 = !DILocation(line: 484, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !17, file: !3, line: 484, column: 7)
!249 = !DILocation(line: 484, column: 32, scope: !248)
!250 = !DILocation(line: 484, column: 29, scope: !248)
!251 = !DILocation(line: 484, column: 19, scope: !248)
!252 = !DILocation(line: 489, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 489, column: 12)
!254 = !DILocation(line: 489, column: 26, scope: !253)
!255 = !DILocation(line: 489, column: 35, scope: !253)
!256 = !DILocation(line: 489, column: 39, scope: !253)
!257 = !DILocation(line: 489, column: 59, scope: !253)
!258 = !DILocation(line: 489, column: 12, scope: !248)
!259 = !DILocation(line: 492, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !253, file: !3, line: 490, column: 5)
!261 = !DILocation(line: 494, column: 5, scope: !260)
!262 = !DILocation(line: 0, scope: !248)
!263 = !DILocation(line: 501, column: 3, scope: !17)
!264 = distinct !DISubprogram(name: "strtosigno", scope: !3, file: !3, line: 517, type: !83, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !265)
!265 = !{!266, !267}
!266 = !DILocalVariable(name: "name", arg: 1, scope: !264, file: !3, line: 517, type: !11)
!267 = !DILocalVariable(name: "signo", scope: !264, file: !3, line: 519, type: !6)
!268 = !DILocation(line: 0, scope: !264)
!269 = !DILocation(line: 521, column: 12, scope: !270)
!270 = distinct !DILexicalBlock(scope: !264, file: !3, line: 521, column: 7)
!271 = !DILocation(line: 521, column: 7, scope: !264)
!272 = !DILocation(line: 523, column: 11, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 523, column: 11)
!274 = distinct !DILexicalBlock(scope: !270, file: !3, line: 522, column: 5)
!275 = !DILocation(line: 523, column: 24, scope: !273)
!276 = !DILocation(line: 523, column: 11, scope: !274)
!277 = !DILocation(line: 525, column: 4, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !3, line: 524, column: 2)
!279 = !DILocation(line: 526, column: 2, scope: !278)
!280 = !DILocation(line: 527, column: 12, scope: !281)
!281 = distinct !DILexicalBlock(scope: !274, file: !3, line: 527, column: 7)
!282 = !DILocation(line: 0, scope: !281)
!283 = !DILocation(line: 527, column: 31, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !3, line: 527, column: 7)
!285 = !DILocation(line: 527, column: 29, scope: !284)
!286 = !DILocation(line: 527, column: 7, scope: !281)
!287 = !DILocation(line: 529, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 529, column: 8)
!289 = distinct !DILexicalBlock(scope: !284, file: !3, line: 528, column: 2)
!290 = !DILocation(line: 529, column: 29, scope: !288)
!291 = !DILocation(line: 529, column: 38, scope: !288)
!292 = !DILocation(line: 530, column: 9, scope: !288)
!293 = !DILocation(line: 530, column: 44, scope: !288)
!294 = !DILocation(line: 529, column: 8, scope: !289)
!295 = !DILocation(line: 535, column: 20, scope: !296)
!296 = distinct !DILexicalBlock(scope: !274, file: !3, line: 535, column: 11)
!297 = !DILocation(line: 527, column: 54, scope: !284)
!298 = !DILocation(line: 527, column: 7, scope: !284)
!299 = distinct !{!299, !286, !300}
!300 = !DILocation(line: 534, column: 2, scope: !281)
!301 = !DILocation(line: 535, column: 17, scope: !296)
!302 = !DILocation(line: 535, column: 11, scope: !274)
!303 = !DILocation(line: 539, column: 5, scope: !274)
!304 = !DILocation(line: 540, column: 3, scope: !264)
