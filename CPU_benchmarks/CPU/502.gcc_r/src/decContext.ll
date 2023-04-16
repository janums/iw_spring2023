; ModuleID = 'decContext.bc'
source_filename = "decContext.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@DECSTICKYTAB = dso_local local_unnamed_addr constant [10 x i8] c"\01\01\02\03\04\06\06\07\08\09", align 1, !dbg !0
@DECPOWERS = dso_local local_unnamed_addr constant [10 x i32] [i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000, i32 100000000, i32 1000000000], align 16, !dbg !34
@.str = private unnamed_addr constant [18 x i8] c"Conversion syntax\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Division by zero\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Division impossible\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Division undefined\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Inexact\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Insufficient storage\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Invalid context\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Invalid operation\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Clamped\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Rounded\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Subnormal\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Underflow\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"No status\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Multiple status\00", align 1
@mfcone = internal unnamed_addr constant i32 1, align 4, !dbg !47

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !55 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !68, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !69, metadata !DIExpression()), !dbg !70
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !71
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !72
  ret i32 %call, !dbg !73
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !74 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !78
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !79
  ret i32 %call, !dbg !80
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !81 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !87
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !88
  ret i32 %call, !dbg !89
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !90 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !95, metadata !DIExpression()), !dbg !96
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !97
  %conv = trunc i64 %call to i32, !dbg !98
  ret i32 %conv, !dbg !99
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !100 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !105, metadata !DIExpression()), !dbg !106
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !107
  ret i64 %call, !dbg !108
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !114, metadata !DIExpression()), !dbg !115
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !116
  ret i64 %call, !dbg !117
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !118 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !132, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i8* %__base, metadata !133, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !134, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64 %__size, metadata !135, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !136, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64 0, metadata !137, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !138, metadata !DIExpression()), !dbg !142
  br label %while.cond, !dbg !143

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !144
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !142
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !138, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !137, metadata !DIExpression()), !dbg !142
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !145
  br i1 %cmp, label %while.body, label %cleanup, !dbg !143

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !146
  %div = lshr i64 %add, 1, !dbg !148
  call void @llvm.dbg.value(metadata i64 %div, metadata !139, metadata !DIExpression()), !dbg !142
  %mul = mul i64 %div, %__size, !dbg !149
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !150
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !140, metadata !DIExpression()), !dbg !142
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !151
  call void @llvm.dbg.value(metadata i32 %call, metadata !141, metadata !DIExpression()), !dbg !142
  %cmp1 = icmp slt i32 %call, 0, !dbg !152
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !154

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !155
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !157

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !158
  call void @llvm.dbg.value(metadata i64 %add4, metadata !137, metadata !DIExpression()), !dbg !142
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !142
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !142
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !138, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !137, metadata !DIExpression()), !dbg !142
  br label %while.cond, !dbg !143, !llvm.loop !159

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !142
  ret i8* %retval.0, !dbg !161
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !162 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !168, metadata !DIExpression()), !dbg !169
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !170
  ret double %call, !dbg !171
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.decContext* @decContextClearStatus(%struct.decContext* %context, i32 %mask) local_unnamed_addr #2 !dbg !172 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !187, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 %mask, metadata !188, metadata !DIExpression()), !dbg !189
  %neg = xor i32 %mask, -1, !dbg !190
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !191
  %0 = load i32, i32* %status, align 4, !dbg !192
  %and = and i32 %0, %neg, !dbg !192
  store i32 %and, i32* %status, align 4, !dbg !192
  ret %struct.decContext* %context, !dbg !193
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decContext* @decContextDefault(%struct.decContext* %context, i32 %kind) local_unnamed_addr #2 !dbg !194 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !198, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 %kind, metadata !199, metadata !DIExpression()), !dbg !200
  %digits = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 0, !dbg !201
  store i32 9, i32* %digits, align 4, !dbg !202
  %emax = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 1, !dbg !203
  store i32 999999999, i32* %emax, align 4, !dbg !204
  %emin = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 2, !dbg !205
  store i32 -999999999, i32* %emin, align 4, !dbg !206
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 3, !dbg !207
  store i32 2, i32* %round, align 4, !dbg !208
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 4, !dbg !209
  store i32 8927, i32* %traps, align 4, !dbg !210
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !211
  store i32 0, i32* %status, align 4, !dbg !212
  %clamp = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 6, !dbg !213
  store i8 0, i8* %clamp, align 4, !dbg !214
  %0 = lshr i32 %kind, 5, !dbg !215
  %1 = shl i32 %kind, 27, !dbg !215
  %2 = or i32 %0, %1, !dbg !215
  switch i32 %2, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 4, label %sw.bb14
  ], !dbg !215

sw.bb:                                            ; preds = %entry
  store i32 7, i32* %digits, align 4, !dbg !216
  store i32 96, i32* %emax, align 4, !dbg !218
  store i32 -95, i32* %emin, align 4, !dbg !219
  store i32 3, i32* %round, align 4, !dbg !220
  store i32 0, i32* %traps, align 4, !dbg !221
  store i8 1, i8* %clamp, align 4, !dbg !222
  br label %sw.epilog, !dbg !223

sw.bb7:                                           ; preds = %entry
  store i32 16, i32* %digits, align 4, !dbg !224
  store i32 384, i32* %emax, align 4, !dbg !225
  store i32 -383, i32* %emin, align 4, !dbg !226
  store i32 3, i32* %round, align 4, !dbg !227
  store i32 0, i32* %traps, align 4, !dbg !228
  store i8 1, i8* %clamp, align 4, !dbg !229
  br label %sw.epilog, !dbg !230

sw.bb14:                                          ; preds = %entry
  store i32 34, i32* %digits, align 4, !dbg !231
  store i32 6144, i32* %emax, align 4, !dbg !232
  store i32 -6143, i32* %emin, align 4, !dbg !233
  store i32 3, i32* %round, align 4, !dbg !234
  store i32 0, i32* %traps, align 4, !dbg !235
  store i8 1, i8* %clamp, align 4, !dbg !236
  br label %sw.epilog, !dbg !237

sw.default:                                       ; preds = %entry
  %call = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 128) #6, !dbg !238
  br label %sw.epilog, !dbg !239

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb7, %sw.bb, %entry
  ret %struct.decContext* %context, !dbg !240
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 %status) local_unnamed_addr #2 !dbg !241 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !243, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 %status, metadata !244, metadata !DIExpression()), !dbg !245
  %status1 = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !246
  %0 = load i32, i32* %status1, align 4, !dbg !247
  %or = or i32 %0, %status, !dbg !247
  store i32 %or, i32* %status1, align 4, !dbg !247
  %traps = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 4, !dbg !248
  %1 = load i32, i32* %traps, align 4, !dbg !248
  %and = and i32 %1, %status, !dbg !250
  %tobool = icmp eq i32 %and, 0, !dbg !250
  br i1 %tobool, label %if.end, label %if.then, !dbg !251

if.then:                                          ; preds = %entry
  %call = tail call i32 @raise(i32 8) #5, !dbg !252
  br label %if.end, !dbg !252

if.end:                                           ; preds = %entry, %if.then
  ret %struct.decContext* %context, !dbg !253
}

; Function Attrs: nounwind uwtable
define dso_local i32 @decContextGetRounding(%struct.decContext* %context) local_unnamed_addr #2 !dbg !254 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !258, metadata !DIExpression()), !dbg !259
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 3, !dbg !260
  %0 = load i32, i32* %round, align 4, !dbg !260
  ret i32 %0, !dbg !261
}

; Function Attrs: nounwind uwtable
define dso_local i32 @decContextGetStatus(%struct.decContext* %context) local_unnamed_addr #2 !dbg !262 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !266, metadata !DIExpression()), !dbg !267
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !268
  %0 = load i32, i32* %status, align 4, !dbg !268
  ret i32 %0, !dbg !269
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decContext* @decContextRestoreStatus(%struct.decContext* %context, i32 %newstatus, i32 %mask) local_unnamed_addr #2 !dbg !270 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !274, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %newstatus, metadata !275, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %mask, metadata !276, metadata !DIExpression()), !dbg !277
  %neg = xor i32 %mask, -1, !dbg !278
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !279
  %0 = load i32, i32* %status, align 4, !dbg !280
  %and = and i32 %0, %neg, !dbg !280
  %and1 = and i32 %mask, %newstatus, !dbg !281
  %or = or i32 %and, %and1, !dbg !282
  store i32 %or, i32* %status, align 4, !dbg !282
  ret %struct.decContext* %context, !dbg !283
}

; Function Attrs: nounwind uwtable
define dso_local i32 @decContextSaveStatus(%struct.decContext* %context, i32 %mask) local_unnamed_addr #2 !dbg !284 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !288, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 %mask, metadata !289, metadata !DIExpression()), !dbg !290
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !291
  %0 = load i32, i32* %status, align 4, !dbg !291
  %and = and i32 %0, %mask, !dbg !292
  ret i32 %and, !dbg !293
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decContext* @decContextSetRounding(%struct.decContext* %context, i32 %newround) local_unnamed_addr #2 !dbg !294 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !298, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 %newround, metadata !299, metadata !DIExpression()), !dbg !300
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 3, !dbg !301
  store i32 %newround, i32* %round, align 4, !dbg !302
  ret %struct.decContext* %context, !dbg !303
}

declare dso_local i32 @raise(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.decContext* @decContextSetStatusFromString(%struct.decContext* %context, i8* %string) local_unnamed_addr #2 !dbg !304 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !308, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %string, metadata !309, metadata !DIExpression()), !dbg !310
  %call = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #7, !dbg !311
  %cmp = icmp eq i32 %call, 0, !dbg !313
  br i1 %cmp, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 1) #6, !dbg !315
  br label %return, !dbg !316

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !317
  %cmp3 = icmp eq i32 %call2, 0, !dbg !319
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !320

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 2) #6, !dbg !321
  br label %return, !dbg !322

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !323
  %cmp8 = icmp eq i32 %call7, 0, !dbg !325
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !326

if.then9:                                         ; preds = %if.end6
  %call10 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 4) #6, !dbg !327
  br label %return, !dbg !328

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !329
  %cmp13 = icmp eq i32 %call12, 0, !dbg !331
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !332

if.then14:                                        ; preds = %if.end11
  %call15 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 8) #6, !dbg !333
  br label %return, !dbg !334

if.end16:                                         ; preds = %if.end11
  %call17 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !335
  %cmp18 = icmp eq i32 %call17, 0, !dbg !337
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !338

if.then19:                                        ; preds = %if.end16
  %call20 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 32) #6, !dbg !339
  br label %return, !dbg !340

if.end21:                                         ; preds = %if.end16
  %call22 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !341
  %cmp23 = icmp eq i32 %call22, 0, !dbg !343
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !344

if.then24:                                        ; preds = %if.end21
  %call25 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 16) #6, !dbg !345
  br label %return, !dbg !346

if.end26:                                         ; preds = %if.end21
  %call27 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !347
  %cmp28 = icmp eq i32 %call27, 0, !dbg !349
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !350

if.then29:                                        ; preds = %if.end26
  %call30 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 64) #6, !dbg !351
  br label %return, !dbg !352

if.end31:                                         ; preds = %if.end26
  %call32 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !353
  %cmp33 = icmp eq i32 %call32, 0, !dbg !355
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !356

if.then34:                                        ; preds = %if.end31
  %call35 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 128) #6, !dbg !357
  br label %return, !dbg !358

if.end36:                                         ; preds = %if.end31
  %call37 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !359
  %cmp38 = icmp eq i32 %call37, 0, !dbg !361
  br i1 %cmp38, label %if.then39, label %if.end41, !dbg !362

if.then39:                                        ; preds = %if.end36
  %call40 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 512) #6, !dbg !363
  br label %return, !dbg !364

if.end41:                                         ; preds = %if.end36
  %call42 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !365
  %cmp43 = icmp eq i32 %call42, 0, !dbg !367
  br i1 %cmp43, label %if.then44, label %if.end46, !dbg !368

if.then44:                                        ; preds = %if.end41
  %call45 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 1024) #6, !dbg !369
  br label %return, !dbg !370

if.end46:                                         ; preds = %if.end41
  %call47 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !371
  %cmp48 = icmp eq i32 %call47, 0, !dbg !373
  br i1 %cmp48, label %if.then49, label %if.end51, !dbg !374

if.then49:                                        ; preds = %if.end46
  %call50 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 2048) #6, !dbg !375
  br label %return, !dbg !376

if.end51:                                         ; preds = %if.end46
  %call52 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !377
  %cmp53 = icmp eq i32 %call52, 0, !dbg !379
  br i1 %cmp53, label %if.then54, label %if.end56, !dbg !380

if.then54:                                        ; preds = %if.end51
  %call55 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 4096) #6, !dbg !381
  br label %return, !dbg !382

if.end56:                                         ; preds = %if.end51
  %call57 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !383
  %cmp58 = icmp eq i32 %call57, 0, !dbg !385
  br i1 %cmp58, label %if.then59, label %if.end61, !dbg !386

if.then59:                                        ; preds = %if.end56
  %call60 = tail call %struct.decContext* @decContextSetStatus(%struct.decContext* %context, i32 8192) #6, !dbg !387
  br label %return, !dbg !388

if.end61:                                         ; preds = %if.end56
  %call62 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !389
  %cmp63 = icmp eq i32 %call62, 0, !dbg !391
  %context. = select i1 %cmp63, %struct.decContext* %context, %struct.decContext* null, !dbg !310
  br label %return, !dbg !310

return:                                           ; preds = %if.end61, %if.then59, %if.then54, %if.then49, %if.then44, %if.then39, %if.then34, %if.then29, %if.then24, %if.then19, %if.then14, %if.then9, %if.then4, %if.then
  %retval.0 = phi %struct.decContext* [ %call1, %if.then ], [ %call5, %if.then4 ], [ %call10, %if.then9 ], [ %call15, %if.then14 ], [ %call20, %if.then19 ], [ %call25, %if.then24 ], [ %call30, %if.then29 ], [ %call35, %if.then34 ], [ %call40, %if.then39 ], [ %call45, %if.then44 ], [ %call50, %if.then49 ], [ %call55, %if.then54 ], [ %call60, %if.then59 ], [ %context., %if.end61 ], !dbg !310
  ret %struct.decContext* %retval.0, !dbg !392
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local %struct.decContext* @decContextSetStatusFromStringQuiet(%struct.decContext* %context, i8* %string) local_unnamed_addr #2 !dbg !393 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !395, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata i8* %string, metadata !396, metadata !DIExpression()), !dbg !397
  %call = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #7, !dbg !398
  %cmp = icmp eq i32 %call, 0, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 1) #6, !dbg !402
  br label %return, !dbg !403

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !404
  %cmp3 = icmp eq i32 %call2, 0, !dbg !406
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !407

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 2) #6, !dbg !408
  br label %return, !dbg !409

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !410
  %cmp8 = icmp eq i32 %call7, 0, !dbg !412
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !413

if.then9:                                         ; preds = %if.end6
  %call10 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 4) #6, !dbg !414
  br label %return, !dbg !415

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !416
  %cmp13 = icmp eq i32 %call12, 0, !dbg !418
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !419

if.then14:                                        ; preds = %if.end11
  %call15 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 8) #6, !dbg !420
  br label %return, !dbg !421

if.end16:                                         ; preds = %if.end11
  %call17 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !422
  %cmp18 = icmp eq i32 %call17, 0, !dbg !424
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !425

if.then19:                                        ; preds = %if.end16
  %call20 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 32) #6, !dbg !426
  br label %return, !dbg !427

if.end21:                                         ; preds = %if.end16
  %call22 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !428
  %cmp23 = icmp eq i32 %call22, 0, !dbg !430
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !431

if.then24:                                        ; preds = %if.end21
  %call25 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 16) #6, !dbg !432
  br label %return, !dbg !433

if.end26:                                         ; preds = %if.end21
  %call27 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !434
  %cmp28 = icmp eq i32 %call27, 0, !dbg !436
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !437

if.then29:                                        ; preds = %if.end26
  %call30 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 64) #6, !dbg !438
  br label %return, !dbg !439

if.end31:                                         ; preds = %if.end26
  %call32 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !440
  %cmp33 = icmp eq i32 %call32, 0, !dbg !442
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !443

if.then34:                                        ; preds = %if.end31
  %call35 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 128) #6, !dbg !444
  br label %return, !dbg !445

if.end36:                                         ; preds = %if.end31
  %call37 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !446
  %cmp38 = icmp eq i32 %call37, 0, !dbg !448
  br i1 %cmp38, label %if.then39, label %if.end41, !dbg !449

if.then39:                                        ; preds = %if.end36
  %call40 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 512) #6, !dbg !450
  br label %return, !dbg !451

if.end41:                                         ; preds = %if.end36
  %call42 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !452
  %cmp43 = icmp eq i32 %call42, 0, !dbg !454
  br i1 %cmp43, label %if.then44, label %if.end46, !dbg !455

if.then44:                                        ; preds = %if.end41
  %call45 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 1024) #6, !dbg !456
  br label %return, !dbg !457

if.end46:                                         ; preds = %if.end41
  %call47 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !458
  %cmp48 = icmp eq i32 %call47, 0, !dbg !460
  br i1 %cmp48, label %if.then49, label %if.end51, !dbg !461

if.then49:                                        ; preds = %if.end46
  %call50 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 2048) #6, !dbg !462
  br label %return, !dbg !463

if.end51:                                         ; preds = %if.end46
  %call52 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !464
  %cmp53 = icmp eq i32 %call52, 0, !dbg !466
  br i1 %cmp53, label %if.then54, label %if.end56, !dbg !467

if.then54:                                        ; preds = %if.end51
  %call55 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 4096) #6, !dbg !468
  br label %return, !dbg !469

if.end56:                                         ; preds = %if.end51
  %call57 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !470
  %cmp58 = icmp eq i32 %call57, 0, !dbg !472
  br i1 %cmp58, label %if.then59, label %if.end61, !dbg !473

if.then59:                                        ; preds = %if.end56
  %call60 = tail call %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 8192) #6, !dbg !474
  br label %return, !dbg !475

if.end61:                                         ; preds = %if.end56
  %call62 = tail call i32 @strcmp(i8* %string, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !476
  %cmp63 = icmp eq i32 %call62, 0, !dbg !478
  %context. = select i1 %cmp63, %struct.decContext* %context, %struct.decContext* null, !dbg !397
  br label %return, !dbg !397

return:                                           ; preds = %if.end61, %if.then59, %if.then54, %if.then49, %if.then44, %if.then39, %if.then34, %if.then29, %if.then24, %if.then19, %if.then14, %if.then9, %if.then4, %if.then
  %retval.0 = phi %struct.decContext* [ %call1, %if.then ], [ %call5, %if.then4 ], [ %call10, %if.then9 ], [ %call15, %if.then14 ], [ %call20, %if.then19 ], [ %call25, %if.then24 ], [ %call30, %if.then29 ], [ %call35, %if.then34 ], [ %call40, %if.then39 ], [ %call45, %if.then44 ], [ %call50, %if.then49 ], [ %call55, %if.then54 ], [ %call60, %if.then59 ], [ %context., %if.end61 ], !dbg !397
  ret %struct.decContext* %retval.0, !dbg !479
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decContext* @decContextSetStatusQuiet(%struct.decContext* %context, i32 %status) local_unnamed_addr #2 !dbg !480 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !482, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 %status, metadata !483, metadata !DIExpression()), !dbg !484
  %status1 = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !485
  %0 = load i32, i32* %status1, align 4, !dbg !486
  %or = or i32 %0, %status, !dbg !486
  store i32 %or, i32* %status1, align 4, !dbg !486
  ret %struct.decContext* %context, !dbg !487
}

; Function Attrs: nounwind uwtable
define dso_local i8* @decContextStatusToString(%struct.decContext* %context) local_unnamed_addr #2 !dbg !488 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !494, metadata !DIExpression()), !dbg !496
  %status1 = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !497
  %0 = load i32, i32* %status1, align 4, !dbg !497
  call void @llvm.dbg.value(metadata i32 %0, metadata !495, metadata !DIExpression()), !dbg !496
  switch i32 %0, label %if.end40 [
    i32 128, label %cleanup
    i32 2, label %if.then3
    i32 512, label %if.then6
    i32 8192, label %if.then9
    i32 32, label %if.then12
    i32 4, label %if.then15
    i32 8, label %if.then18
    i32 2048, label %if.then21
    i32 1024, label %if.then24
    i32 4096, label %if.then27
    i32 1, label %if.then30
    i32 16, label %if.then33
    i32 64, label %if.then36
    i32 0, label %if.then39
  ], !dbg !498

if.then3:                                         ; preds = %entry
  br label %cleanup, !dbg !499

if.then6:                                         ; preds = %entry
  br label %cleanup, !dbg !501

if.then9:                                         ; preds = %entry
  br label %cleanup, !dbg !503

if.then12:                                        ; preds = %entry
  br label %cleanup, !dbg !505

if.then15:                                        ; preds = %entry
  br label %cleanup, !dbg !507

if.then18:                                        ; preds = %entry
  br label %cleanup, !dbg !509

if.then21:                                        ; preds = %entry
  br label %cleanup, !dbg !511

if.then24:                                        ; preds = %entry
  br label %cleanup, !dbg !513

if.then27:                                        ; preds = %entry
  br label %cleanup, !dbg !515

if.then30:                                        ; preds = %entry
  br label %cleanup, !dbg !517

if.then33:                                        ; preds = %entry
  br label %cleanup, !dbg !519

if.then36:                                        ; preds = %entry
  br label %cleanup, !dbg !521

if.then39:                                        ; preds = %entry
  br label %cleanup, !dbg !523

if.end40:                                         ; preds = %entry
  br label %cleanup, !dbg !525

cleanup:                                          ; preds = %entry, %if.end40, %if.then39, %if.then36, %if.then33, %if.then30, %if.then27, %if.then24, %if.then21, %if.then18, %if.then15, %if.then12, %if.then9, %if.then6, %if.then3
  %retval.0 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %if.then3 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %if.then6 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %if.then9 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %if.then12 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %if.then15 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %if.then18 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), %if.then21 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %if.then24 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %if.then27 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %if.then30 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %if.then33 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %if.then36 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %if.then39 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), %if.end40 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), %entry ], !dbg !496
  ret i8* %retval.0, !dbg !526
}

; Function Attrs: nounwind uwtable
define dso_local i32 @decContextTestEndian(i8 zeroext %quiet) local_unnamed_addr #2 !dbg !527 {
entry:
  call void @llvm.dbg.value(metadata i8 %quiet, metadata !531, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 0, metadata !532, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 1, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 1, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 0, metadata !532, metadata !DIExpression()), !dbg !534
  ret i32 0, !dbg !535
}

; Function Attrs: nounwind uwtable
define dso_local i32 @decContextTestSavedStatus(i32 %oldstatus, i32 %mask) local_unnamed_addr #2 !dbg !536 {
entry:
  call void @llvm.dbg.value(metadata i32 %oldstatus, metadata !540, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i32 %mask, metadata !541, metadata !DIExpression()), !dbg !542
  %and = and i32 %oldstatus, %mask, !dbg !543
  %cmp = icmp ne i32 %and, 0, !dbg !544
  %conv = zext i1 %cmp to i32, !dbg !544
  ret i32 %conv, !dbg !545
}

; Function Attrs: nounwind uwtable
define dso_local i32 @decContextTestStatus(%struct.decContext* %context, i32 %mask) local_unnamed_addr #2 !dbg !546 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !548, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i32 %mask, metadata !549, metadata !DIExpression()), !dbg !550
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !551
  %0 = load i32, i32* %status, align 4, !dbg !551
  %and = and i32 %0, %mask, !dbg !552
  %cmp = icmp ne i32 %and, 0, !dbg !553
  %conv = zext i1 %cmp to i32, !dbg !553
  ret i32 %conv, !dbg !554
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decContext* @decContextZeroStatus(%struct.decContext* %context) local_unnamed_addr #2 !dbg !555 {
entry:
  call void @llvm.dbg.value(metadata %struct.decContext* %context, metadata !559, metadata !DIExpression()), !dbg !560
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %context, i64 0, i32 5, !dbg !561
  store i32 0, i32* %status, align 4, !dbg !562
  ret %struct.decContext* %context, !dbg !563
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "DECSTICKYTAB", scope: !2, file: !3, line: 49, type: !50, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !33, nameTableKind: None)
!3 = !DIFile(filename: "decContext.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rounding", file: !6, line: 69, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./decContext.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "DEC_ROUND_CEILING", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DEC_ROUND_UP", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DEC_ROUND_HALF_UP", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "DEC_ROUND_HALF_EVEN", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "DEC_ROUND_HALF_DOWN", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "DEC_ROUND_DOWN", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "DEC_ROUND_FLOOR", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "DEC_ROUND_05UP", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "DEC_ROUND_MAX", value: 8, isUnsigned: true)
!18 = !{!19, !20, !23, !24, !26, !30}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 26, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 42, baseType: !7)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !31, line: 26, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !29, line: 41, baseType: !19)
!33 = !{!0, !34, !40, !47}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "DECPOWERS", scope: !2, file: !3, line: 54, type: !36, isLocal: false, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 320, elements: !38)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!38 = !{!39}
!39 = !DISubrange(count: 10)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "mfctop", scope: !2, file: !3, line: 43, type: !42, isLocal: true, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !27, line: 24, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !29, line: 38, baseType: !46)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "mfcone", scope: !2, file: !3, line: 42, type: !49, isLocal: true, isDefinition: true)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 80, elements: !38)
!51 = !{i32 2, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!55 = distinct !DISubprogram(name: "vprintf", scope: !56, file: !56, line: 39, type: !57, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !67)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!57 = !DISubroutineType(types: !58)
!58 = !{!19, !59, !60}
!59 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !62)
!62 = !{!63, !64, !65, !66}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !61, file: !3, baseType: !7, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !61, file: !3, baseType: !7, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !61, file: !3, baseType: !23, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !61, file: !3, baseType: !23, size: 64, offset: 128)
!67 = !{!68, !69}
!68 = !DILocalVariable(name: "__fmt", arg: 1, scope: !55, file: !56, line: 39, type: !59)
!69 = !DILocalVariable(name: "__arg", arg: 2, scope: !55, file: !56, line: 39, type: !60)
!70 = !DILocation(line: 0, scope: !55)
!71 = !DILocation(line: 41, column: 20, scope: !55)
!72 = !DILocation(line: 41, column: 10, scope: !55)
!73 = !DILocation(line: 41, column: 3, scope: !55)
!74 = distinct !DISubprogram(name: "getchar", scope: !56, file: !56, line: 47, type: !75, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!75 = !DISubroutineType(types: !76)
!76 = !{!19}
!77 = !{}
!78 = !DILocation(line: 49, column: 16, scope: !74)
!79 = !DILocation(line: 49, column: 10, scope: !74)
!80 = !DILocation(line: 49, column: 3, scope: !74)
!81 = distinct !DISubprogram(name: "putchar", scope: !56, file: !56, line: 82, type: !82, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{!19, !19}
!84 = !{!85}
!85 = !DILocalVariable(name: "__c", arg: 1, scope: !81, file: !56, line: 82, type: !19)
!86 = !DILocation(line: 0, scope: !81)
!87 = !DILocation(line: 84, column: 21, scope: !81)
!88 = !DILocation(line: 84, column: 10, scope: !81)
!89 = !DILocation(line: 84, column: 3, scope: !81)
!90 = distinct !DISubprogram(name: "atoi", scope: !91, file: !91, line: 361, type: !92, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !94)
!91 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!92 = !DISubroutineType(types: !93)
!93 = !{!19, !24}
!94 = !{!95}
!95 = !DILocalVariable(name: "__nptr", arg: 1, scope: !90, file: !91, line: 361, type: !24)
!96 = !DILocation(line: 0, scope: !90)
!97 = !DILocation(line: 363, column: 16, scope: !90)
!98 = !DILocation(line: 363, column: 10, scope: !90)
!99 = !DILocation(line: 363, column: 3, scope: !90)
!100 = distinct !DISubprogram(name: "atol", scope: !91, file: !91, line: 366, type: !101, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !104)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !24}
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !{!105}
!105 = !DILocalVariable(name: "__nptr", arg: 1, scope: !100, file: !91, line: 366, type: !24)
!106 = !DILocation(line: 0, scope: !100)
!107 = !DILocation(line: 368, column: 10, scope: !100)
!108 = !DILocation(line: 368, column: 3, scope: !100)
!109 = distinct !DISubprogram(name: "atoll", scope: !91, file: !91, line: 373, type: !110, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !24}
!112 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!113 = !{!114}
!114 = !DILocalVariable(name: "__nptr", arg: 1, scope: !109, file: !91, line: 373, type: !24)
!115 = !DILocation(line: 0, scope: !109)
!116 = !DILocation(line: 375, column: 10, scope: !109)
!117 = !DILocation(line: 375, column: 3, scope: !109)
!118 = distinct !DISubprogram(name: "bsearch", scope: !119, file: !119, line: 20, type: !120, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !131)
!119 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!120 = !DISubroutineType(types: !121)
!121 = !{!23, !122, !122, !124, !124, !127}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 46, baseType: !126)
!125 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!126 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !91, line: 808, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!19, !122, !122}
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!132 = !DILocalVariable(name: "__key", arg: 1, scope: !118, file: !119, line: 20, type: !122)
!133 = !DILocalVariable(name: "__base", arg: 2, scope: !118, file: !119, line: 20, type: !122)
!134 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !118, file: !119, line: 20, type: !124)
!135 = !DILocalVariable(name: "__size", arg: 4, scope: !118, file: !119, line: 20, type: !124)
!136 = !DILocalVariable(name: "__compar", arg: 5, scope: !118, file: !119, line: 21, type: !127)
!137 = !DILocalVariable(name: "__l", scope: !118, file: !119, line: 23, type: !124)
!138 = !DILocalVariable(name: "__u", scope: !118, file: !119, line: 23, type: !124)
!139 = !DILocalVariable(name: "__idx", scope: !118, file: !119, line: 23, type: !124)
!140 = !DILocalVariable(name: "__p", scope: !118, file: !119, line: 24, type: !122)
!141 = !DILocalVariable(name: "__comparison", scope: !118, file: !119, line: 25, type: !19)
!142 = !DILocation(line: 0, scope: !118)
!143 = !DILocation(line: 29, column: 3, scope: !118)
!144 = !DILocation(line: 27, column: 7, scope: !118)
!145 = !DILocation(line: 29, column: 14, scope: !118)
!146 = !DILocation(line: 31, column: 20, scope: !147)
!147 = distinct !DILexicalBlock(scope: !118, file: !119, line: 30, column: 5)
!148 = !DILocation(line: 31, column: 27, scope: !147)
!149 = !DILocation(line: 32, column: 56, scope: !147)
!150 = !DILocation(line: 32, column: 47, scope: !147)
!151 = !DILocation(line: 33, column: 22, scope: !147)
!152 = !DILocation(line: 34, column: 24, scope: !153)
!153 = distinct !DILexicalBlock(scope: !147, file: !119, line: 34, column: 11)
!154 = !DILocation(line: 34, column: 11, scope: !147)
!155 = !DILocation(line: 36, column: 29, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !119, line: 36, column: 16)
!157 = !DILocation(line: 36, column: 16, scope: !153)
!158 = !DILocation(line: 37, column: 14, scope: !156)
!159 = distinct !{!159, !143, !160}
!160 = !DILocation(line: 40, column: 5, scope: !118)
!161 = !DILocation(line: 43, column: 1, scope: !118)
!162 = distinct !DISubprogram(name: "atof", scope: !163, file: !163, line: 25, type: !164, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !167)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !24}
!166 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!167 = !{!168}
!168 = !DILocalVariable(name: "__nptr", arg: 1, scope: !162, file: !163, line: 25, type: !24)
!169 = !DILocation(line: 0, scope: !162)
!170 = !DILocation(line: 27, column: 10, scope: !162)
!171 = !DILocation(line: 27, column: 3, scope: !162)
!172 = distinct !DISubprogram(name: "decContextClearStatus", scope: !3, file: !3, line: 67, type: !173, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !175, !26}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "decContext", file: !6, line: 93, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 82, size: 224, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !177, file: !6, line: 83, baseType: !30, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !177, file: !6, line: 84, baseType: !30, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !177, file: !6, line: 85, baseType: !30, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "round", scope: !177, file: !6, line: 86, baseType: !5, size: 32, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !177, file: !6, line: 87, baseType: !26, size: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !177, file: !6, line: 88, baseType: !26, size: 32, offset: 160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "clamp", scope: !177, file: !6, line: 89, baseType: !44, size: 8, offset: 192)
!186 = !{!187, !188}
!187 = !DILocalVariable(name: "context", arg: 1, scope: !172, file: !3, line: 67, type: !175)
!188 = !DILocalVariable(name: "mask", arg: 2, scope: !172, file: !3, line: 67, type: !26)
!189 = !DILocation(line: 0, scope: !172)
!190 = !DILocation(line: 68, column: 20, scope: !172)
!191 = !DILocation(line: 68, column: 12, scope: !172)
!192 = !DILocation(line: 68, column: 18, scope: !172)
!193 = !DILocation(line: 69, column: 3, scope: !172)
!194 = distinct !DISubprogram(name: "decContextDefault", scope: !3, file: !3, line: 85, type: !195, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{!175, !175, !30}
!197 = !{!198, !199}
!198 = !DILocalVariable(name: "context", arg: 1, scope: !194, file: !3, line: 85, type: !175)
!199 = !DILocalVariable(name: "kind", arg: 2, scope: !194, file: !3, line: 85, type: !30)
!200 = !DILocation(line: 0, scope: !194)
!201 = !DILocation(line: 87, column: 12, scope: !194)
!202 = !DILocation(line: 87, column: 18, scope: !194)
!203 = !DILocation(line: 88, column: 12, scope: !194)
!204 = !DILocation(line: 88, column: 16, scope: !194)
!205 = !DILocation(line: 89, column: 12, scope: !194)
!206 = !DILocation(line: 89, column: 16, scope: !194)
!207 = !DILocation(line: 90, column: 12, scope: !194)
!208 = !DILocation(line: 90, column: 17, scope: !194)
!209 = !DILocation(line: 91, column: 12, scope: !194)
!210 = !DILocation(line: 91, column: 17, scope: !194)
!211 = !DILocation(line: 92, column: 12, scope: !194)
!212 = !DILocation(line: 92, column: 18, scope: !194)
!213 = !DILocation(line: 93, column: 12, scope: !194)
!214 = !DILocation(line: 93, column: 17, scope: !194)
!215 = !DILocation(line: 97, column: 3, scope: !194)
!216 = !DILocation(line: 102, column: 22, scope: !217)
!217 = distinct !DILexicalBlock(scope: !194, file: !3, line: 97, column: 17)
!218 = !DILocation(line: 103, column: 20, scope: !217)
!219 = !DILocation(line: 104, column: 20, scope: !217)
!220 = !DILocation(line: 105, column: 21, scope: !217)
!221 = !DILocation(line: 106, column: 21, scope: !217)
!222 = !DILocation(line: 107, column: 21, scope: !217)
!223 = !DILocation(line: 111, column: 7, scope: !217)
!224 = !DILocation(line: 113, column: 22, scope: !217)
!225 = !DILocation(line: 114, column: 20, scope: !217)
!226 = !DILocation(line: 115, column: 20, scope: !217)
!227 = !DILocation(line: 116, column: 21, scope: !217)
!228 = !DILocation(line: 117, column: 21, scope: !217)
!229 = !DILocation(line: 118, column: 21, scope: !217)
!230 = !DILocation(line: 122, column: 7, scope: !217)
!231 = !DILocation(line: 124, column: 22, scope: !217)
!232 = !DILocation(line: 125, column: 20, scope: !217)
!233 = !DILocation(line: 126, column: 20, scope: !217)
!234 = !DILocation(line: 127, column: 21, scope: !217)
!235 = !DILocation(line: 128, column: 21, scope: !217)
!236 = !DILocation(line: 129, column: 21, scope: !217)
!237 = !DILocation(line: 133, column: 7, scope: !217)
!238 = !DILocation(line: 137, column: 7, scope: !217)
!239 = !DILocation(line: 138, column: 5, scope: !217)
!240 = !DILocation(line: 140, column: 3, scope: !194)
!241 = distinct !DISubprogram(name: "decContextSetStatus", scope: !3, file: !3, line: 224, type: !173, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !242)
!242 = !{!243, !244}
!243 = !DILocalVariable(name: "context", arg: 1, scope: !241, file: !3, line: 224, type: !175)
!244 = !DILocalVariable(name: "status", arg: 2, scope: !241, file: !3, line: 224, type: !26)
!245 = !DILocation(line: 0, scope: !241)
!246 = !DILocation(line: 225, column: 12, scope: !241)
!247 = !DILocation(line: 225, column: 18, scope: !241)
!248 = !DILocation(line: 226, column: 25, scope: !249)
!249 = distinct !DILexicalBlock(scope: !241, file: !3, line: 226, column: 7)
!250 = !DILocation(line: 226, column: 14, scope: !249)
!251 = !DILocation(line: 226, column: 7, scope: !241)
!252 = !DILocation(line: 226, column: 32, scope: !249)
!253 = !DILocation(line: 227, column: 3, scope: !241)
!254 = distinct !DISubprogram(name: "decContextGetRounding", scope: !3, file: !3, line: 150, type: !255, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{!5, !175}
!257 = !{!258}
!258 = !DILocalVariable(name: "context", arg: 1, scope: !254, file: !3, line: 150, type: !175)
!259 = !DILocation(line: 0, scope: !254)
!260 = !DILocation(line: 151, column: 19, scope: !254)
!261 = !DILocation(line: 151, column: 3, scope: !254)
!262 = distinct !DISubprogram(name: "decContextGetStatus", scope: !3, file: !3, line: 162, type: !263, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!26, !175}
!265 = !{!266}
!266 = !DILocalVariable(name: "context", arg: 1, scope: !262, file: !3, line: 162, type: !175)
!267 = !DILocation(line: 0, scope: !262)
!268 = !DILocation(line: 163, column: 19, scope: !262)
!269 = !DILocation(line: 163, column: 3, scope: !262)
!270 = distinct !DISubprogram(name: "decContextRestoreStatus", scope: !3, file: !3, line: 178, type: !271, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{!175, !175, !26, !26}
!273 = !{!274, !275, !276}
!274 = !DILocalVariable(name: "context", arg: 1, scope: !270, file: !3, line: 178, type: !175)
!275 = !DILocalVariable(name: "newstatus", arg: 2, scope: !270, file: !3, line: 179, type: !26)
!276 = !DILocalVariable(name: "mask", arg: 3, scope: !270, file: !3, line: 179, type: !26)
!277 = !DILocation(line: 0, scope: !270)
!278 = !DILocation(line: 180, column: 20, scope: !270)
!279 = !DILocation(line: 180, column: 12, scope: !270)
!280 = !DILocation(line: 180, column: 18, scope: !270)
!281 = !DILocation(line: 181, column: 25, scope: !270)
!282 = !DILocation(line: 181, column: 18, scope: !270)
!283 = !DILocation(line: 182, column: 3, scope: !270)
!284 = distinct !DISubprogram(name: "decContextSaveStatus", scope: !3, file: !3, line: 195, type: !285, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!26, !175, !26}
!287 = !{!288, !289}
!288 = !DILocalVariable(name: "context", arg: 1, scope: !284, file: !3, line: 195, type: !175)
!289 = !DILocalVariable(name: "mask", arg: 2, scope: !284, file: !3, line: 195, type: !26)
!290 = !DILocation(line: 0, scope: !284)
!291 = !DILocation(line: 196, column: 19, scope: !284)
!292 = !DILocation(line: 196, column: 25, scope: !284)
!293 = !DILocation(line: 196, column: 3, scope: !284)
!294 = distinct !DISubprogram(name: "decContextSetRounding", scope: !3, file: !3, line: 208, type: !295, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{!175, !175, !5}
!297 = !{!298, !299}
!298 = !DILocalVariable(name: "context", arg: 1, scope: !294, file: !3, line: 208, type: !175)
!299 = !DILocalVariable(name: "newround", arg: 2, scope: !294, file: !3, line: 209, type: !5)
!300 = !DILocation(line: 0, scope: !294)
!301 = !DILocation(line: 210, column: 12, scope: !294)
!302 = !DILocation(line: 210, column: 17, scope: !294)
!303 = !DILocation(line: 211, column: 3, scope: !294)
!304 = distinct !DISubprogram(name: "decContextSetStatusFromString", scope: !3, file: !3, line: 243, type: !305, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{!175, !175, !24}
!307 = !{!308, !309}
!308 = !DILocalVariable(name: "context", arg: 1, scope: !304, file: !3, line: 243, type: !175)
!309 = !DILocalVariable(name: "string", arg: 2, scope: !304, file: !3, line: 244, type: !24)
!310 = !DILocation(line: 0, scope: !304)
!311 = !DILocation(line: 245, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !3, line: 245, column: 7)
!313 = !DILocation(line: 245, column: 39, scope: !312)
!314 = !DILocation(line: 245, column: 7, scope: !304)
!315 = !DILocation(line: 246, column: 12, scope: !312)
!316 = !DILocation(line: 246, column: 5, scope: !312)
!317 = !DILocation(line: 247, column: 7, scope: !318)
!318 = distinct !DILexicalBlock(scope: !304, file: !3, line: 247, column: 7)
!319 = !DILocation(line: 247, column: 39, scope: !318)
!320 = !DILocation(line: 247, column: 7, scope: !304)
!321 = !DILocation(line: 248, column: 12, scope: !318)
!322 = !DILocation(line: 248, column: 5, scope: !318)
!323 = !DILocation(line: 249, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !304, file: !3, line: 249, column: 7)
!325 = !DILocation(line: 249, column: 39, scope: !324)
!326 = !DILocation(line: 249, column: 7, scope: !304)
!327 = !DILocation(line: 250, column: 12, scope: !324)
!328 = !DILocation(line: 250, column: 5, scope: !324)
!329 = !DILocation(line: 251, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !304, file: !3, line: 251, column: 7)
!331 = !DILocation(line: 251, column: 39, scope: !330)
!332 = !DILocation(line: 251, column: 7, scope: !304)
!333 = !DILocation(line: 252, column: 12, scope: !330)
!334 = !DILocation(line: 252, column: 5, scope: !330)
!335 = !DILocation(line: 253, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !304, file: !3, line: 253, column: 7)
!337 = !DILocation(line: 253, column: 39, scope: !336)
!338 = !DILocation(line: 253, column: 7, scope: !304)
!339 = !DILocation(line: 254, column: 12, scope: !336)
!340 = !DILocation(line: 254, column: 5, scope: !336)
!341 = !DILocation(line: 255, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !304, file: !3, line: 255, column: 7)
!343 = !DILocation(line: 255, column: 39, scope: !342)
!344 = !DILocation(line: 255, column: 7, scope: !304)
!345 = !DILocation(line: 256, column: 12, scope: !342)
!346 = !DILocation(line: 256, column: 5, scope: !342)
!347 = !DILocation(line: 257, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !304, file: !3, line: 257, column: 7)
!349 = !DILocation(line: 257, column: 39, scope: !348)
!350 = !DILocation(line: 257, column: 7, scope: !304)
!351 = !DILocation(line: 258, column: 12, scope: !348)
!352 = !DILocation(line: 258, column: 5, scope: !348)
!353 = !DILocation(line: 259, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !304, file: !3, line: 259, column: 7)
!355 = !DILocation(line: 259, column: 39, scope: !354)
!356 = !DILocation(line: 259, column: 7, scope: !304)
!357 = !DILocation(line: 260, column: 12, scope: !354)
!358 = !DILocation(line: 260, column: 5, scope: !354)
!359 = !DILocation(line: 265, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !304, file: !3, line: 265, column: 7)
!361 = !DILocation(line: 265, column: 39, scope: !360)
!362 = !DILocation(line: 265, column: 7, scope: !304)
!363 = !DILocation(line: 266, column: 12, scope: !360)
!364 = !DILocation(line: 266, column: 5, scope: !360)
!365 = !DILocation(line: 267, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !304, file: !3, line: 267, column: 7)
!367 = !DILocation(line: 267, column: 39, scope: !366)
!368 = !DILocation(line: 267, column: 7, scope: !304)
!369 = !DILocation(line: 268, column: 12, scope: !366)
!370 = !DILocation(line: 268, column: 5, scope: !366)
!371 = !DILocation(line: 269, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !304, file: !3, line: 269, column: 7)
!373 = !DILocation(line: 269, column: 39, scope: !372)
!374 = !DILocation(line: 269, column: 7, scope: !304)
!375 = !DILocation(line: 270, column: 12, scope: !372)
!376 = !DILocation(line: 270, column: 5, scope: !372)
!377 = !DILocation(line: 271, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !304, file: !3, line: 271, column: 7)
!379 = !DILocation(line: 271, column: 39, scope: !378)
!380 = !DILocation(line: 271, column: 7, scope: !304)
!381 = !DILocation(line: 272, column: 12, scope: !378)
!382 = !DILocation(line: 272, column: 5, scope: !378)
!383 = !DILocation(line: 273, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !304, file: !3, line: 273, column: 7)
!385 = !DILocation(line: 273, column: 39, scope: !384)
!386 = !DILocation(line: 273, column: 7, scope: !304)
!387 = !DILocation(line: 274, column: 12, scope: !384)
!388 = !DILocation(line: 274, column: 5, scope: !384)
!389 = !DILocation(line: 275, column: 7, scope: !390)
!390 = distinct !DILexicalBlock(scope: !304, file: !3, line: 275, column: 7)
!391 = !DILocation(line: 275, column: 39, scope: !390)
!392 = !DILocation(line: 278, column: 3, scope: !304)
!393 = distinct !DISubprogram(name: "decContextSetStatusFromStringQuiet", scope: !3, file: !3, line: 294, type: !305, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !394)
!394 = !{!395, !396}
!395 = !DILocalVariable(name: "context", arg: 1, scope: !393, file: !3, line: 294, type: !175)
!396 = !DILocalVariable(name: "string", arg: 2, scope: !393, file: !3, line: 295, type: !24)
!397 = !DILocation(line: 0, scope: !393)
!398 = !DILocation(line: 296, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !393, file: !3, line: 296, column: 7)
!400 = !DILocation(line: 296, column: 39, scope: !399)
!401 = !DILocation(line: 296, column: 7, scope: !393)
!402 = !DILocation(line: 297, column: 12, scope: !399)
!403 = !DILocation(line: 297, column: 5, scope: !399)
!404 = !DILocation(line: 298, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !393, file: !3, line: 298, column: 7)
!406 = !DILocation(line: 298, column: 39, scope: !405)
!407 = !DILocation(line: 298, column: 7, scope: !393)
!408 = !DILocation(line: 299, column: 12, scope: !405)
!409 = !DILocation(line: 299, column: 5, scope: !405)
!410 = !DILocation(line: 300, column: 7, scope: !411)
!411 = distinct !DILexicalBlock(scope: !393, file: !3, line: 300, column: 7)
!412 = !DILocation(line: 300, column: 39, scope: !411)
!413 = !DILocation(line: 300, column: 7, scope: !393)
!414 = !DILocation(line: 301, column: 12, scope: !411)
!415 = !DILocation(line: 301, column: 5, scope: !411)
!416 = !DILocation(line: 302, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !393, file: !3, line: 302, column: 7)
!418 = !DILocation(line: 302, column: 39, scope: !417)
!419 = !DILocation(line: 302, column: 7, scope: !393)
!420 = !DILocation(line: 303, column: 12, scope: !417)
!421 = !DILocation(line: 303, column: 5, scope: !417)
!422 = !DILocation(line: 304, column: 7, scope: !423)
!423 = distinct !DILexicalBlock(scope: !393, file: !3, line: 304, column: 7)
!424 = !DILocation(line: 304, column: 39, scope: !423)
!425 = !DILocation(line: 304, column: 7, scope: !393)
!426 = !DILocation(line: 305, column: 12, scope: !423)
!427 = !DILocation(line: 305, column: 5, scope: !423)
!428 = !DILocation(line: 306, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !393, file: !3, line: 306, column: 7)
!430 = !DILocation(line: 306, column: 39, scope: !429)
!431 = !DILocation(line: 306, column: 7, scope: !393)
!432 = !DILocation(line: 307, column: 12, scope: !429)
!433 = !DILocation(line: 307, column: 5, scope: !429)
!434 = !DILocation(line: 308, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !393, file: !3, line: 308, column: 7)
!436 = !DILocation(line: 308, column: 39, scope: !435)
!437 = !DILocation(line: 308, column: 7, scope: !393)
!438 = !DILocation(line: 309, column: 12, scope: !435)
!439 = !DILocation(line: 309, column: 5, scope: !435)
!440 = !DILocation(line: 310, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !393, file: !3, line: 310, column: 7)
!442 = !DILocation(line: 310, column: 39, scope: !441)
!443 = !DILocation(line: 310, column: 7, scope: !393)
!444 = !DILocation(line: 311, column: 12, scope: !441)
!445 = !DILocation(line: 311, column: 5, scope: !441)
!446 = !DILocation(line: 316, column: 7, scope: !447)
!447 = distinct !DILexicalBlock(scope: !393, file: !3, line: 316, column: 7)
!448 = !DILocation(line: 316, column: 39, scope: !447)
!449 = !DILocation(line: 316, column: 7, scope: !393)
!450 = !DILocation(line: 317, column: 12, scope: !447)
!451 = !DILocation(line: 317, column: 5, scope: !447)
!452 = !DILocation(line: 318, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !393, file: !3, line: 318, column: 7)
!454 = !DILocation(line: 318, column: 39, scope: !453)
!455 = !DILocation(line: 318, column: 7, scope: !393)
!456 = !DILocation(line: 319, column: 12, scope: !453)
!457 = !DILocation(line: 319, column: 5, scope: !453)
!458 = !DILocation(line: 320, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !393, file: !3, line: 320, column: 7)
!460 = !DILocation(line: 320, column: 39, scope: !459)
!461 = !DILocation(line: 320, column: 7, scope: !393)
!462 = !DILocation(line: 321, column: 12, scope: !459)
!463 = !DILocation(line: 321, column: 5, scope: !459)
!464 = !DILocation(line: 322, column: 7, scope: !465)
!465 = distinct !DILexicalBlock(scope: !393, file: !3, line: 322, column: 7)
!466 = !DILocation(line: 322, column: 39, scope: !465)
!467 = !DILocation(line: 322, column: 7, scope: !393)
!468 = !DILocation(line: 323, column: 12, scope: !465)
!469 = !DILocation(line: 323, column: 5, scope: !465)
!470 = !DILocation(line: 324, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !393, file: !3, line: 324, column: 7)
!472 = !DILocation(line: 324, column: 39, scope: !471)
!473 = !DILocation(line: 324, column: 7, scope: !393)
!474 = !DILocation(line: 325, column: 12, scope: !471)
!475 = !DILocation(line: 325, column: 5, scope: !471)
!476 = !DILocation(line: 326, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !393, file: !3, line: 326, column: 7)
!478 = !DILocation(line: 326, column: 39, scope: !477)
!479 = !DILocation(line: 329, column: 3, scope: !393)
!480 = distinct !DISubprogram(name: "decContextSetStatusQuiet", scope: !3, file: !3, line: 340, type: !173, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!481 = !{!482, !483}
!482 = !DILocalVariable(name: "context", arg: 1, scope: !480, file: !3, line: 340, type: !175)
!483 = !DILocalVariable(name: "status", arg: 2, scope: !480, file: !3, line: 340, type: !26)
!484 = !DILocation(line: 0, scope: !480)
!485 = !DILocation(line: 341, column: 12, scope: !480)
!486 = !DILocation(line: 341, column: 18, scope: !480)
!487 = !DILocation(line: 342, column: 3, scope: !480)
!488 = distinct !DISubprogram(name: "decContextStatusToString", scope: !3, file: !3, line: 352, type: !489, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !493)
!489 = !DISubroutineType(types: !490)
!490 = !{!24, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!493 = !{!494, !495}
!494 = !DILocalVariable(name: "context", arg: 1, scope: !488, file: !3, line: 352, type: !491)
!495 = !DILocalVariable(name: "status", scope: !488, file: !3, line: 353, type: !30)
!496 = !DILocation(line: 0, scope: !488)
!497 = !DILocation(line: 353, column: 23, scope: !488)
!498 = !DILocation(line: 357, column: 7, scope: !488)
!499 = !DILocation(line: 358, column: 42, scope: !500)
!500 = distinct !DILexicalBlock(scope: !488, file: !3, line: 358, column: 7)
!501 = !DILocation(line: 359, column: 37, scope: !502)
!502 = distinct !DILexicalBlock(scope: !488, file: !3, line: 359, column: 7)
!503 = !DILocation(line: 360, column: 38, scope: !504)
!504 = distinct !DILexicalBlock(scope: !488, file: !3, line: 360, column: 7)
!505 = !DILocation(line: 361, column: 36, scope: !506)
!506 = distinct !DILexicalBlock(scope: !488, file: !3, line: 361, column: 7)
!507 = !DILocation(line: 363, column: 42, scope: !508)
!508 = distinct !DILexicalBlock(scope: !488, file: !3, line: 363, column: 7)
!509 = !DILocation(line: 364, column: 42, scope: !510)
!510 = distinct !DILexicalBlock(scope: !488, file: !3, line: 364, column: 7)
!511 = !DILocation(line: 365, column: 36, scope: !512)
!512 = distinct !DILexicalBlock(scope: !488, file: !3, line: 365, column: 7)
!513 = !DILocation(line: 366, column: 36, scope: !514)
!514 = distinct !DILexicalBlock(scope: !488, file: !3, line: 366, column: 7)
!515 = !DILocation(line: 367, column: 38, scope: !516)
!516 = distinct !DILexicalBlock(scope: !488, file: !3, line: 367, column: 7)
!517 = !DILocation(line: 368, column: 42, scope: !518)
!518 = distinct !DILexicalBlock(scope: !488, file: !3, line: 368, column: 7)
!519 = !DILocation(line: 369, column: 42, scope: !520)
!520 = distinct !DILexicalBlock(scope: !488, file: !3, line: 369, column: 7)
!521 = !DILocation(line: 370, column: 42, scope: !522)
!522 = distinct !DILexicalBlock(scope: !488, file: !3, line: 370, column: 7)
!523 = !DILocation(line: 374, column: 28, scope: !524)
!524 = distinct !DILexicalBlock(scope: !488, file: !3, line: 374, column: 7)
!525 = !DILocation(line: 375, column: 3, scope: !488)
!526 = !DILocation(line: 376, column: 3, scope: !488)
!527 = distinct !DISubprogram(name: "decContextTestEndian", scope: !3, file: !3, line: 390, type: !528, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!30, !44}
!530 = !{!531, !532, !533}
!531 = !DILocalVariable(name: "quiet", arg: 1, scope: !527, file: !3, line: 390, type: !44)
!532 = !DILocalVariable(name: "res", scope: !527, file: !3, line: 391, type: !30)
!533 = !DILocalVariable(name: "dle", scope: !527, file: !3, line: 392, type: !26)
!534 = !DILocation(line: 0, scope: !527)
!535 = !DILocation(line: 407, column: 3, scope: !527)
!536 = distinct !DISubprogram(name: "decContextTestSavedStatus", scope: !3, file: !3, line: 420, type: !537, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!26, !26, !26}
!539 = !{!540, !541}
!540 = !DILocalVariable(name: "oldstatus", arg: 1, scope: !536, file: !3, line: 420, type: !26)
!541 = !DILocalVariable(name: "mask", arg: 2, scope: !536, file: !3, line: 420, type: !26)
!542 = !DILocation(line: 0, scope: !536)
!543 = !DILocation(line: 421, column: 20, scope: !536)
!544 = !DILocation(line: 421, column: 26, scope: !536)
!545 = !DILocation(line: 421, column: 3, scope: !536)
!546 = distinct !DISubprogram(name: "decContextTestStatus", scope: !3, file: !3, line: 434, type: !285, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!547 = !{!548, !549}
!548 = !DILocalVariable(name: "context", arg: 1, scope: !546, file: !3, line: 434, type: !175)
!549 = !DILocalVariable(name: "mask", arg: 2, scope: !546, file: !3, line: 434, type: !26)
!550 = !DILocation(line: 0, scope: !546)
!551 = !DILocation(line: 435, column: 20, scope: !546)
!552 = !DILocation(line: 435, column: 26, scope: !546)
!553 = !DILocation(line: 435, column: 32, scope: !546)
!554 = !DILocation(line: 435, column: 3, scope: !546)
!555 = distinct !DISubprogram(name: "decContextZeroStatus", scope: !3, file: !3, line: 446, type: !556, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!175, !175}
!558 = !{!559}
!559 = !DILocalVariable(name: "context", arg: 1, scope: !555, file: !3, line: 446, type: !175)
!560 = !DILocation(line: 0, scope: !555)
!561 = !DILocation(line: 447, column: 12, scope: !555)
!562 = !DILocation(line: 447, column: 18, scope: !555)
!563 = !DILocation(line: 448, column: 3, scope: !555)
