; ModuleID = 'hashtab.bc'
source_filename = "hashtab.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.prime_ent = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@htab_hash_pointer = dso_local local_unnamed_addr global i32 (i8*)* @hash_pointer, align 8, !dbg !0
@htab_eq_pointer = dso_local local_unnamed_addr global i32 (i8*, i8*)* @eq_pointer, align 8, !dbg !80
@prime_tab = internal unnamed_addr constant [30 x %struct.prime_ent] [%struct.prime_ent { i32 7, i32 613566757, i32 -1717986917, i32 2 }, %struct.prime_ent { i32 13, i32 991146300, i32 1952257863, i32 3 }, %struct.prime_ent { i32 31, i32 138547333, i32 444306962, i32 4 }, %struct.prime_ent { i32 61, i32 211227900, i32 363980280, i32 5 }, %struct.prime_ent { i32 127, i32 33818641, i32 103079216, i32 6 }, %struct.prime_ent { i32 251, i32 85557118, i32 120742053, i32 7 }, %struct.prime_ent { i32 509, i32 25314150, i32 42356680, i32 8 }, %struct.prime_ent { i32 1021, i32 12619885, i32 21074423, i32 9 }, %struct.prime_ent { i32 2039, i32 18957679, i32 23193246, i32 10 }, %struct.prime_ent { i32 4093, i32 3148034, i32 5249288, i32 11 }, %struct.prime_ent { i32 8191, i32 524353, i32 1573441, i32 12 }, %struct.prime_ent { i32 16381, i32 786577, i32 1311121, i32 13 }, %struct.prime_ent { i32 32749, i32 2491813, i32 2754278, i32 14 }, %struct.prime_ent { i32 65521, i32 983266, i32 1114402, i32 15 }, %struct.prime_ent { i32 131071, i32 32769, i32 98307, i32 16 }, %struct.prime_ent { i32 262139, i32 81922, i32 114692, i32 17 }, %struct.prime_ent { i32 524287, i32 8193, i32 24577, i32 18 }, %struct.prime_ent { i32 1048573, i32 12289, i32 20481, i32 19 }, %struct.prime_ent { i32 2097143, i32 18433, i32 22529, i32 20 }, %struct.prime_ent { i32 4194301, i32 3073, i32 5121, i32 21 }, %struct.prime_ent { i32 8388593, i32 7681, i32 8705, i32 22 }, %struct.prime_ent { i32 16777213, i32 769, i32 1281, i32 23 }, %struct.prime_ent { i32 33554393, i32 4993, i32 5249, i32 24 }, %struct.prime_ent { i32 67108859, i32 321, i32 449, i32 25 }, %struct.prime_ent { i32 134217689, i32 1249, i32 1313, i32 26 }, %struct.prime_ent { i32 268435399, i32 913, i32 945, i32 27 }, %struct.prime_ent { i32 536870909, i32 25, i32 41, i32 28 }, %struct.prime_ent { i32 1073741789, i32 141, i32 149, i32 29 }, %struct.prime_ent { i32 2147483647, i32 3, i32 7, i32 30 }, %struct.prime_ent { i32 -5, i32 6, i32 8, i32 31 }], align 16, !dbg !82
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [35 x i8] c"Cannot find prime bigger than %lu\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !98 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !103, metadata !DIExpression()), !dbg !104
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !105
  %conv = trunc i64 %call to i32, !dbg !106
  ret i32 %conv, !dbg !107
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !108 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !112, metadata !DIExpression()), !dbg !113
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !114
  ret i64 %call, !dbg !115
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !116 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !121, metadata !DIExpression()), !dbg !122
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !123
  ret i64 %call, !dbg !124
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !125 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !131, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i8* %__base, metadata !132, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !133, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 %__size, metadata !134, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !135, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !137, metadata !DIExpression()), !dbg !141
  br label %while.cond, !dbg !142

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !143
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !141
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !137, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !136, metadata !DIExpression()), !dbg !141
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !144
  br i1 %cmp, label %while.body, label %cleanup, !dbg !142

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !145
  %div = lshr i64 %add, 1, !dbg !147
  call void @llvm.dbg.value(metadata i64 %div, metadata !138, metadata !DIExpression()), !dbg !141
  %mul = mul i64 %div, %__size, !dbg !148
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !149
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !139, metadata !DIExpression()), !dbg !141
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !150
  call void @llvm.dbg.value(metadata i32 %call, metadata !140, metadata !DIExpression()), !dbg !141
  %cmp1 = icmp slt i32 %call, 0, !dbg !151
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !153

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !154
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !156

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !157
  call void @llvm.dbg.value(metadata i64 %add4, metadata !136, metadata !DIExpression()), !dbg !141
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !141
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !141
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !137, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !136, metadata !DIExpression()), !dbg !141
  br label %while.cond, !dbg !142, !llvm.loop !158

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !141
  ret i8* %retval.0, !dbg !160
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !166, metadata !DIExpression()), !dbg !167
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !168
  ret double %call, !dbg !169
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !170 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !183, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !186
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !187
  ret i32 %call, !dbg !188
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !189 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !193
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !194
  ret i32 %call, !dbg !195
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !196 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !255, metadata !DIExpression()), !dbg !256
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !257
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !257
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !257
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !257
  %cmp = icmp uge i8* %0, %1, !dbg !257
  %conv1 = zext i1 %cmp to i64, !dbg !257
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !257
  %tobool = icmp eq i64 %expval, 0, !dbg !257
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !257

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !257
  br label %cond.end, !dbg !257

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !257
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !257
  %2 = load i8, i8* %0, align 1, !dbg !257
  %conv3 = zext i8 %2 to i32, !dbg !257
  br label %cond.end, !dbg !257

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !257
  ret i32 %cond, !dbg !258
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !259 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !261, metadata !DIExpression()), !dbg !262
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !263
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !263
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !263
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !263
  %cmp = icmp uge i8* %0, %1, !dbg !263
  %conv1 = zext i1 %cmp to i64, !dbg !263
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !263
  %tobool = icmp eq i64 %expval, 0, !dbg !263
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !263

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !263
  br label %cond.end, !dbg !263

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !263
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !263
  %2 = load i8, i8* %0, align 1, !dbg !263
  %conv3 = zext i8 %2 to i32, !dbg !263
  br label %cond.end, !dbg !263

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !263
  ret i32 %cond, !dbg !264
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !265 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !266
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !266
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !266
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !266
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !266
  %cmp = icmp uge i8* %1, %2, !dbg !266
  %conv1 = zext i1 %cmp to i64, !dbg !266
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !266
  %tobool = icmp eq i64 %expval, 0, !dbg !266
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !266

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !266
  br label %cond.end, !dbg !266

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !266
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !266
  %3 = load i8, i8* %1, align 1, !dbg !266
  %conv3 = zext i8 %3 to i32, !dbg !266
  br label %cond.end, !dbg !266

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !266
  ret i32 %cond, !dbg !267
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !268 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !274
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !275
  ret i32 %call, !dbg !276
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !277 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !281, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !282, metadata !DIExpression()), !dbg !283
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !284
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !284
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !284
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !284
  %cmp = icmp uge i8* %0, %1, !dbg !284
  %conv1 = zext i1 %cmp to i64, !dbg !284
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !284
  %tobool = icmp eq i64 %expval, 0, !dbg !284
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !284

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !284
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !284
  br label %cond.end, !dbg !284

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !284
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !284
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !284
  store i8 %conv2, i8* %0, align 1, !dbg !284
  %conv6 = and i32 %__c, 255, !dbg !284
  br label %cond.end, !dbg !284

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !284
  ret i32 %cond, !dbg !285
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !286 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !288, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !289, metadata !DIExpression()), !dbg !290
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !291
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !291
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !291
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !291
  %cmp = icmp uge i8* %0, %1, !dbg !291
  %conv1 = zext i1 %cmp to i64, !dbg !291
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !291
  %tobool = icmp eq i64 %expval, 0, !dbg !291
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !291

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !291
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !291
  br label %cond.end, !dbg !291

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !291
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !291
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !291
  store i8 %conv2, i8* %0, align 1, !dbg !291
  %conv6 = and i32 %__c, 255, !dbg !291
  br label %cond.end, !dbg !291

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !291
  ret i32 %cond, !dbg !292
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !293 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !295, metadata !DIExpression()), !dbg !296
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !297
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !297
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !297
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !297
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !297
  %cmp = icmp uge i8* %1, %2, !dbg !297
  %conv1 = zext i1 %cmp to i64, !dbg !297
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !297
  %tobool = icmp eq i64 %expval, 0, !dbg !297
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !297

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !297
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !297
  br label %cond.end, !dbg !297

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !297
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !297
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !297
  store i8 %conv4, i8* %1, align 1, !dbg !297
  %conv6 = and i32 %__c, 255, !dbg !297
  br label %cond.end, !dbg !297

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !297
  ret i32 %cond, !dbg !298
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !299 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !305, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64* %__n, metadata !306, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !307, metadata !DIExpression()), !dbg !308
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !309
  ret i64 %call, !dbg !310
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !311 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !313, metadata !DIExpression()), !dbg !314
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !315
  %0 = load i32, i32* %_flags, align 8, !dbg !315
  %and = lshr i32 %0, 4, !dbg !315
  %and.lobit = and i32 %and, 1, !dbg !315
  ret i32 %and.lobit, !dbg !316
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !317 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !319, metadata !DIExpression()), !dbg !320
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !321
  %0 = load i32, i32* %_flags, align 8, !dbg !321
  %and = lshr i32 %0, 5, !dbg !321
  %and.lobit = and i32 %and, 1, !dbg !321
  ret i32 %and.lobit, !dbg !322
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !323 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !331, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %base, metadata !333, metadata !DIExpression()), !dbg !334
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !335
  ret i64 %call, !dbg !336
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !337 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !343, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !344, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i32 %base, metadata !345, metadata !DIExpression()), !dbg !346
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !347
  ret i64 %call, !dbg !348
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !349 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !360, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !361, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i32 %base, metadata !362, metadata !DIExpression()), !dbg !363
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !364
  ret i64 %call, !dbg !365
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !366 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !370, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !371, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i32 %base, metadata !372, metadata !DIExpression()), !dbg !373
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !374
  ret i64 %call, !dbg !375
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @hash_pointer(i8* %p) #3 !dbg !376 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = ptrtoint i8* %p to i64, !dbg !380
  %1 = lshr i64 %0, 3, !dbg !381
  %conv = trunc i64 %1 to i32, !dbg !382
  ret i32 %conv, !dbg !383
}

; Function Attrs: nounwind uwtable
define internal i32 @eq_pointer(i8* %p1, i8* %p2) #3 !dbg !384 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !386, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %p2, metadata !387, metadata !DIExpression()), !dbg !388
  %cmp = icmp eq i8* %p1, %p2, !dbg !389
  %conv = zext i1 %cmp to i32, !dbg !389
  ret i32 %conv, !dbg !390
}

; Function Attrs: nounwind uwtable
define dso_local i64 @htab_size(%struct.htab* %htab) local_unnamed_addr #3 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !395, metadata !DIExpression()), !dbg !396
  %size = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 4, !dbg !397
  %0 = load i64, i64* %size, align 8, !dbg !397
  ret i64 %0, !dbg !398
}

; Function Attrs: nounwind uwtable
define dso_local i64 @htab_elements(%struct.htab* %htab) local_unnamed_addr #3 !dbg !399 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !401, metadata !DIExpression()), !dbg !402
  %n_elements = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 5, !dbg !403
  %0 = load i64, i64* %n_elements, align 8, !dbg !403
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 6, !dbg !403
  %1 = load i64, i64* %n_deleted, align 8, !dbg !403
  %sub = sub i64 %0, %1, !dbg !403
  ret i64 %sub, !dbg !404
}

; Function Attrs: nounwind uwtable
define dso_local %struct.htab* @htab_create_alloc(i64 %size, i32 (i8*)* %hash_f, i32 (i8*, i8*)* %eq_f, void (i8*)* %del_f, i8* (i64, i64)* %alloc_f, void (i8*)* %free_f) local_unnamed_addr #3 !dbg !405 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !409, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 (i8*)* %hash_f, metadata !410, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %eq_f, metadata !411, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata void (i8*)* %del_f, metadata !412, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i8* (i64, i64)* %alloc_f, metadata !413, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata void (i8*)* %free_f, metadata !414, metadata !DIExpression()), !dbg !417
  %call = tail call fastcc i32 @higher_prime_index(i64 %size) #6, !dbg !418
  call void @llvm.dbg.value(metadata i32 %call, metadata !416, metadata !DIExpression()), !dbg !417
  %idxprom = zext i32 %call to i64, !dbg !419
  %prime = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom, i32 0, !dbg !420
  %0 = load i32, i32* %prime, align 16, !dbg !420
  %conv = zext i32 %0 to i64, !dbg !419
  call void @llvm.dbg.value(metadata i64 %conv, metadata !409, metadata !DIExpression()), !dbg !417
  %call1 = tail call i8* %alloc_f(i64 1, i64 112) #5, !dbg !421
  %1 = bitcast i8* %call1 to %struct.htab*, !dbg !422
  call void @llvm.dbg.value(metadata %struct.htab* %1, metadata !415, metadata !DIExpression()), !dbg !417
  %cmp = icmp eq i8* %call1, null, !dbg !423
  br i1 %cmp, label %cleanup, label %if.end, !dbg !425

if.end:                                           ; preds = %entry
  %call3 = tail call i8* %alloc_f(i64 %conv, i64 8) #5, !dbg !426
  %entries = getelementptr inbounds i8, i8* %call1, i64 24, !dbg !427
  %2 = bitcast i8* %entries to i8**, !dbg !428
  store i8* %call3, i8** %2, align 8, !dbg !428
  %cmp5 = icmp eq i8* %call3, null, !dbg !429
  br i1 %cmp5, label %if.then7, label %if.end12, !dbg !431

if.then7:                                         ; preds = %if.end
  %cmp8 = icmp eq void (i8*)* %free_f, null, !dbg !432
  br i1 %cmp8, label %cleanup, label %if.then10, !dbg !435

if.then10:                                        ; preds = %if.then7
  tail call void %free_f(i8* nonnull %call1) #5, !dbg !436
  br label %cleanup, !dbg !436

if.end12:                                         ; preds = %if.end
  %size13 = getelementptr inbounds i8, i8* %call1, i64 32, !dbg !437
  %3 = bitcast i8* %size13 to i64*, !dbg !437
  store i64 %conv, i64* %3, align 8, !dbg !438
  %size_prime_index14 = getelementptr inbounds i8, i8* %call1, i64 104, !dbg !439
  %4 = bitcast i8* %size_prime_index14 to i32*, !dbg !439
  store i32 %call, i32* %4, align 8, !dbg !440
  %hash_f15 = bitcast i8* %call1 to i32 (i8*)**, !dbg !441
  store i32 (i8*)* %hash_f, i32 (i8*)** %hash_f15, align 8, !dbg !442
  %eq_f16 = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !443
  %5 = bitcast i8* %eq_f16 to i32 (i8*, i8*)**, !dbg !443
  store i32 (i8*, i8*)* %eq_f, i32 (i8*, i8*)** %5, align 8, !dbg !444
  %del_f17 = getelementptr inbounds i8, i8* %call1, i64 16, !dbg !445
  %6 = bitcast i8* %del_f17 to void (i8*)**, !dbg !445
  store void (i8*)* %del_f, void (i8*)** %6, align 8, !dbg !446
  %alloc_f18 = getelementptr inbounds i8, i8* %call1, i64 64, !dbg !447
  %7 = bitcast i8* %alloc_f18 to i8* (i64, i64)**, !dbg !447
  store i8* (i64, i64)* %alloc_f, i8* (i64, i64)** %7, align 8, !dbg !448
  %free_f19 = getelementptr inbounds i8, i8* %call1, i64 72, !dbg !449
  %8 = bitcast i8* %free_f19 to void (i8*)**, !dbg !449
  store void (i8*)* %free_f, void (i8*)** %8, align 8, !dbg !450
  br label %cleanup, !dbg !451

cleanup:                                          ; preds = %if.then7, %if.then10, %entry, %if.end12
  %retval.0 = phi %struct.htab* [ %1, %if.end12 ], [ null, %entry ], [ null, %if.then10 ], [ null, %if.then7 ], !dbg !417
  ret %struct.htab* %retval.0, !dbg !452
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @higher_prime_index(i64 %n) unnamed_addr #3 !dbg !453 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !457, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 0, metadata !458, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 30, metadata !459, metadata !DIExpression()), !dbg !462
  br label %while.cond, !dbg !463

while.cond:                                       ; preds = %while.body, %entry
  %low.0 = phi i32 [ 0, %entry ], [ %low.1, %while.body ], !dbg !462
  %high.0 = phi i32 [ 30, %entry ], [ %high.1, %while.body ], !dbg !464
  call void @llvm.dbg.value(metadata i32 %high.0, metadata !459, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 %low.0, metadata !458, metadata !DIExpression()), !dbg !462
  %cmp = icmp eq i32 %high.0, %low.0, !dbg !465
  br i1 %cmp, label %while.end, label %while.body, !dbg !463

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %high.0, %low.0, !dbg !466
  %div = lshr i32 %sub, 1, !dbg !467
  %add = add i32 %low.0, %div, !dbg !468
  call void @llvm.dbg.value(metadata i32 %add, metadata !460, metadata !DIExpression()), !dbg !469
  %idxprom = zext i32 %add to i64, !dbg !470
  %prime = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom, i32 0, !dbg !472
  %0 = load i32, i32* %prime, align 16, !dbg !472
  %conv = zext i32 %0 to i64, !dbg !470
  %cmp1 = icmp ult i64 %conv, %n, !dbg !473
  %add3 = add i32 %add, 1, !dbg !474
  %low.1 = select i1 %cmp1, i32 %add3, i32 %low.0, !dbg !474
  %high.1 = select i1 %cmp1, i32 %high.0, i32 %add, !dbg !474
  call void @llvm.dbg.value(metadata i32 %high.1, metadata !459, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 %low.1, metadata !458, metadata !DIExpression()), !dbg !462
  br label %while.cond, !dbg !463, !llvm.loop !475

while.end:                                        ; preds = %while.cond
  %low.0.lcssa = phi i32 [ %low.0, %while.cond ], !dbg !462
  call void @llvm.dbg.value(metadata i32 %low.0.lcssa, metadata !458, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 %low.0.lcssa, metadata !458, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 %low.0.lcssa, metadata !458, metadata !DIExpression()), !dbg !462
  %idxprom4 = zext i32 %low.0.lcssa to i64, !dbg !477
  %prime6 = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom4, i32 0, !dbg !479
  %1 = load i32, i32* %prime6, align 16, !dbg !479
  %conv7 = zext i32 %1 to i64, !dbg !477
  %cmp8 = icmp ult i64 %conv7, %n, !dbg !480
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !481

if.then10:                                        ; preds = %while.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !482
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %n) #5, !dbg !484
  tail call void @abort() #5, !dbg !485
  br label %if.end11, !dbg !486

if.end11:                                         ; preds = %if.then10, %while.end
  ret i32 %low.0.lcssa, !dbg !487
}

; Function Attrs: nounwind uwtable
define dso_local %struct.htab* @htab_create_alloc_ex(i64 %size, i32 (i8*)* %hash_f, i32 (i8*, i8*)* %eq_f, void (i8*)* %del_f, i8* %alloc_arg, i8* (i8*, i64, i64)* %alloc_f, void (i8*, i8*)* %free_f) local_unnamed_addr #3 !dbg !488 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !492, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 (i8*)* %hash_f, metadata !493, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %eq_f, metadata !494, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata void (i8*)* %del_f, metadata !495, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i8* %alloc_arg, metadata !496, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i8* (i8*, i64, i64)* %alloc_f, metadata !497, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %free_f, metadata !498, metadata !DIExpression()), !dbg !501
  %call = tail call fastcc i32 @higher_prime_index(i64 %size) #6, !dbg !502
  call void @llvm.dbg.value(metadata i32 %call, metadata !500, metadata !DIExpression()), !dbg !501
  %idxprom = zext i32 %call to i64, !dbg !503
  %prime = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom, i32 0, !dbg !504
  %0 = load i32, i32* %prime, align 16, !dbg !504
  %conv = zext i32 %0 to i64, !dbg !503
  call void @llvm.dbg.value(metadata i64 %conv, metadata !492, metadata !DIExpression()), !dbg !501
  %call1 = tail call i8* %alloc_f(i8* %alloc_arg, i64 1, i64 112) #5, !dbg !505
  %1 = bitcast i8* %call1 to %struct.htab*, !dbg !506
  call void @llvm.dbg.value(metadata %struct.htab* %1, metadata !499, metadata !DIExpression()), !dbg !501
  %cmp = icmp eq i8* %call1, null, !dbg !507
  br i1 %cmp, label %cleanup, label %if.end, !dbg !509

if.end:                                           ; preds = %entry
  %call3 = tail call i8* %alloc_f(i8* %alloc_arg, i64 %conv, i64 8) #5, !dbg !510
  %entries = getelementptr inbounds i8, i8* %call1, i64 24, !dbg !511
  %2 = bitcast i8* %entries to i8**, !dbg !512
  store i8* %call3, i8** %2, align 8, !dbg !512
  %cmp5 = icmp eq i8* %call3, null, !dbg !513
  br i1 %cmp5, label %if.then7, label %if.end12, !dbg !515

if.then7:                                         ; preds = %if.end
  %cmp8 = icmp eq void (i8*, i8*)* %free_f, null, !dbg !516
  br i1 %cmp8, label %cleanup, label %if.then10, !dbg !519

if.then10:                                        ; preds = %if.then7
  tail call void %free_f(i8* %alloc_arg, i8* nonnull %call1) #5, !dbg !520
  br label %cleanup, !dbg !520

if.end12:                                         ; preds = %if.end
  %size13 = getelementptr inbounds i8, i8* %call1, i64 32, !dbg !521
  %3 = bitcast i8* %size13 to i64*, !dbg !521
  store i64 %conv, i64* %3, align 8, !dbg !522
  %size_prime_index14 = getelementptr inbounds i8, i8* %call1, i64 104, !dbg !523
  %4 = bitcast i8* %size_prime_index14 to i32*, !dbg !523
  store i32 %call, i32* %4, align 8, !dbg !524
  %hash_f15 = bitcast i8* %call1 to i32 (i8*)**, !dbg !525
  store i32 (i8*)* %hash_f, i32 (i8*)** %hash_f15, align 8, !dbg !526
  %eq_f16 = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !527
  %5 = bitcast i8* %eq_f16 to i32 (i8*, i8*)**, !dbg !527
  store i32 (i8*, i8*)* %eq_f, i32 (i8*, i8*)** %5, align 8, !dbg !528
  %del_f17 = getelementptr inbounds i8, i8* %call1, i64 16, !dbg !529
  %6 = bitcast i8* %del_f17 to void (i8*)**, !dbg !529
  store void (i8*)* %del_f, void (i8*)** %6, align 8, !dbg !530
  %alloc_arg18 = getelementptr inbounds i8, i8* %call1, i64 80, !dbg !531
  %7 = bitcast i8* %alloc_arg18 to i8**, !dbg !531
  store i8* %alloc_arg, i8** %7, align 8, !dbg !532
  %alloc_with_arg_f = getelementptr inbounds i8, i8* %call1, i64 88, !dbg !533
  %8 = bitcast i8* %alloc_with_arg_f to i8* (i8*, i64, i64)**, !dbg !533
  store i8* (i8*, i64, i64)* %alloc_f, i8* (i8*, i64, i64)** %8, align 8, !dbg !534
  %free_with_arg_f = getelementptr inbounds i8, i8* %call1, i64 96, !dbg !535
  %9 = bitcast i8* %free_with_arg_f to void (i8*, i8*)**, !dbg !535
  store void (i8*, i8*)* %free_f, void (i8*, i8*)** %9, align 8, !dbg !536
  br label %cleanup, !dbg !537

cleanup:                                          ; preds = %if.then7, %if.then10, %entry, %if.end12
  %retval.0 = phi %struct.htab* [ %1, %if.end12 ], [ null, %entry ], [ null, %if.then10 ], [ null, %if.then7 ], !dbg !501
  ret %struct.htab* %retval.0, !dbg !538
}

; Function Attrs: nounwind uwtable
define dso_local void @htab_set_functions_ex(%struct.htab* %htab, i32 (i8*)* %hash_f, i32 (i8*, i8*)* %eq_f, void (i8*)* %del_f, i8* %alloc_arg, i8* (i8*, i64, i64)* %alloc_f, void (i8*, i8*)* %free_f) local_unnamed_addr #3 !dbg !539 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !543, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i32 (i8*)* %hash_f, metadata !544, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %eq_f, metadata !545, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata void (i8*)* %del_f, metadata !546, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i8* %alloc_arg, metadata !547, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i8* (i8*, i64, i64)* %alloc_f, metadata !548, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %free_f, metadata !549, metadata !DIExpression()), !dbg !550
  %hash_f1 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 0, !dbg !551
  store i32 (i8*)* %hash_f, i32 (i8*)** %hash_f1, align 8, !dbg !552
  %eq_f2 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 1, !dbg !553
  store i32 (i8*, i8*)* %eq_f, i32 (i8*, i8*)** %eq_f2, align 8, !dbg !554
  %del_f3 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 2, !dbg !555
  store void (i8*)* %del_f, void (i8*)** %del_f3, align 8, !dbg !556
  %alloc_arg4 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 11, !dbg !557
  store i8* %alloc_arg, i8** %alloc_arg4, align 8, !dbg !558
  %alloc_with_arg_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 12, !dbg !559
  store i8* (i8*, i64, i64)* %alloc_f, i8* (i8*, i64, i64)** %alloc_with_arg_f, align 8, !dbg !560
  %free_with_arg_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 13, !dbg !561
  store void (i8*, i8*)* %free_f, void (i8*, i8*)** %free_with_arg_f, align 8, !dbg !562
  ret void, !dbg !563
}

; Function Attrs: nounwind uwtable
define dso_local %struct.htab* @htab_create(i64 %size, i32 (i8*)* %hash_f, i32 (i8*, i8*)* %eq_f, void (i8*)* %del_f) local_unnamed_addr #3 !dbg !564 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !568, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i32 (i8*)* %hash_f, metadata !569, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %eq_f, metadata !570, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata void (i8*)* %del_f, metadata !571, metadata !DIExpression()), !dbg !572
  %call = tail call %struct.htab* @htab_create_alloc(i64 %size, i32 (i8*)* %hash_f, i32 (i8*, i8*)* %eq_f, void (i8*)* %del_f, i8* (i64, i64)* nonnull @xcalloc, void (i8*)* nonnull @free) #6, !dbg !573
  ret %struct.htab* %call, !dbg !574
}

declare dso_local i8* @xcalloc(i64, i64) #1

declare dso_local void @free(i8*) #1

; Function Attrs: nounwind uwtable
define dso_local %struct.htab* @htab_try_create(i64 %size, i32 (i8*)* %hash_f, i32 (i8*, i8*)* %eq_f, void (i8*)* %del_f) local_unnamed_addr #3 !dbg !575 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !577, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata i32 (i8*)* %hash_f, metadata !578, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %eq_f, metadata !579, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata void (i8*)* %del_f, metadata !580, metadata !DIExpression()), !dbg !581
  %call = tail call %struct.htab* @htab_create_alloc(i64 %size, i32 (i8*)* %hash_f, i32 (i8*, i8*)* %eq_f, void (i8*)* %del_f, i8* (i64, i64)* nonnull @calloc, void (i8*)* nonnull @free) #6, !dbg !582
  ret %struct.htab* %call, !dbg !583
}

declare dso_local i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local void @htab_delete(%struct.htab* %htab) local_unnamed_addr #3 !dbg !584 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !588, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64 undef, metadata !589, metadata !DIExpression()), !dbg !592
  %entries2 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 3, !dbg !593
  %0 = load i8**, i8*** %entries2, align 8, !dbg !593
  call void @llvm.dbg.value(metadata i8** %0, metadata !590, metadata !DIExpression()), !dbg !592
  %del_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 2, !dbg !594
  %1 = load void (i8*)*, void (i8*)** %del_f, align 8, !dbg !594
  %tobool = icmp eq void (i8*)* %1, null, !dbg !596
  br i1 %tobool, label %if.end14, label %if.then, !dbg !597

if.then:                                          ; preds = %entry
  %size1 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 4, !dbg !598
  %2 = load i64, i64* %size1, align 8, !dbg !598
  call void @llvm.dbg.value(metadata i64 %2, metadata !589, metadata !DIExpression()), !dbg !592
  %3 = trunc i64 %2 to i32, !dbg !599
  call void @llvm.dbg.value(metadata i32 %3, metadata !591, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !592
  br label %for.cond, !dbg !601

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0.in = phi i32 [ %3, %if.then ], [ %i.0, %for.inc ]
  %i.0 = add i32 %i.0.in, -1, !dbg !602
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !591, metadata !DIExpression()), !dbg !592
  %cmp = icmp sgt i32 %i.0, -1, !dbg !603
  br i1 %cmp, label %for.body, label %if.end14.loopexit, !dbg !605

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !606
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 %idxprom, !dbg !606
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !606
  %cmp4 = icmp eq i8* %4, null, !dbg !608
  br i1 %cmp4, label %for.inc, label %land.lhs.true, !dbg !609

land.lhs.true:                                    ; preds = %for.body
  %cmp8 = icmp eq i8* %4, inttoptr (i64 1 to i8*), !dbg !610
  br i1 %cmp8, label %for.inc, label %if.then10, !dbg !611

if.then10:                                        ; preds = %land.lhs.true
  %5 = load void (i8*)*, void (i8*)** %del_f, align 8, !dbg !612
  tail call void %5(i8* nonnull %4) #5, !dbg !613
  br label %for.inc, !dbg !613

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then10
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !591, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !592
  br label %for.cond, !dbg !614, !llvm.loop !615

if.end14.loopexit:                                ; preds = %for.cond
  br label %if.end14, !dbg !617

if.end14:                                         ; preds = %if.end14.loopexit, %entry
  %free_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 10, !dbg !617
  %6 = load void (i8*)*, void (i8*)** %free_f, align 8, !dbg !617
  %cmp15 = icmp eq void (i8*)* %6, null, !dbg !619
  br i1 %cmp15, label %if.else, label %if.then17, !dbg !620

if.then17:                                        ; preds = %if.end14
  %7 = bitcast i8** %0 to i8*, !dbg !621
  tail call void %6(i8* %7) #5, !dbg !623
  %8 = load void (i8*)*, void (i8*)** %free_f, align 8, !dbg !624
  %9 = bitcast %struct.htab* %htab to i8*, !dbg !625
  tail call void %8(i8* %9) #5, !dbg !626
  br label %if.end27, !dbg !627

if.else:                                          ; preds = %if.end14
  %free_with_arg_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 13, !dbg !628
  %10 = load void (i8*, i8*)*, void (i8*, i8*)** %free_with_arg_f, align 8, !dbg !628
  %cmp20 = icmp eq void (i8*, i8*)* %10, null, !dbg !630
  br i1 %cmp20, label %if.end27, label %if.then22, !dbg !631

if.then22:                                        ; preds = %if.else
  %alloc_arg = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 11, !dbg !632
  %11 = load i8*, i8** %alloc_arg, align 8, !dbg !632
  %12 = bitcast i8** %0 to i8*, !dbg !634
  tail call void %10(i8* %11, i8* %12) #5, !dbg !635
  %13 = load void (i8*, i8*)*, void (i8*, i8*)** %free_with_arg_f, align 8, !dbg !636
  %14 = load i8*, i8** %alloc_arg, align 8, !dbg !637
  %15 = bitcast %struct.htab* %htab to i8*, !dbg !638
  tail call void %13(i8* %14, i8* %15) #5, !dbg !639
  br label %if.end27, !dbg !640

if.end27:                                         ; preds = %if.else, %if.then22, %if.then17
  ret void, !dbg !641
}

; Function Attrs: nounwind uwtable
define dso_local void @htab_empty(%struct.htab* %htab) local_unnamed_addr #3 !dbg !642 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !644, metadata !DIExpression()), !dbg !652
  %size1 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 4, !dbg !653
  %0 = load i64, i64* %size1, align 8, !dbg !653
  call void @llvm.dbg.value(metadata i64 %0, metadata !645, metadata !DIExpression()), !dbg !652
  %entries2 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 3, !dbg !654
  %1 = load i8**, i8*** %entries2, align 8, !dbg !654
  call void @llvm.dbg.value(metadata i8** %1, metadata !646, metadata !DIExpression()), !dbg !652
  %del_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 2, !dbg !655
  %2 = load void (i8*)*, void (i8*)** %del_f, align 8, !dbg !655
  %tobool = icmp eq void (i8*)* %2, null, !dbg !657
  br i1 %tobool, label %if.end14, label %if.then, !dbg !658

if.then:                                          ; preds = %entry
  %3 = trunc i64 %0 to i32, !dbg !659
  call void @llvm.dbg.value(metadata i32 %3, metadata !647, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !652
  br label %for.cond, !dbg !661

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0.in = phi i32 [ %3, %if.then ], [ %i.0, %for.inc ]
  %i.0 = add i32 %i.0.in, -1, !dbg !662
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !647, metadata !DIExpression()), !dbg !652
  %cmp = icmp sgt i32 %i.0, -1, !dbg !663
  br i1 %cmp, label %for.body, label %if.end14.loopexit, !dbg !665

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !666
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom, !dbg !666
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !666
  %cmp4 = icmp eq i8* %4, null, !dbg !668
  br i1 %cmp4, label %for.inc, label %land.lhs.true, !dbg !669

land.lhs.true:                                    ; preds = %for.body
  %cmp8 = icmp eq i8* %4, inttoptr (i64 1 to i8*), !dbg !670
  br i1 %cmp8, label %for.inc, label %if.then10, !dbg !671

if.then10:                                        ; preds = %land.lhs.true
  %5 = load void (i8*)*, void (i8*)** %del_f, align 8, !dbg !672
  tail call void %5(i8* nonnull %4) #5, !dbg !673
  br label %for.inc, !dbg !673

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then10
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !647, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !652
  br label %for.cond, !dbg !674, !llvm.loop !675

if.end14.loopexit:                                ; preds = %for.cond
  br label %if.end14, !dbg !677

if.end14:                                         ; preds = %if.end14.loopexit, %entry
  %cmp15 = icmp ugt i64 %0, 131072, !dbg !677
  br i1 %cmp15, label %if.then17, label %if.else47, !dbg !678

if.then17:                                        ; preds = %if.end14
  %call = tail call fastcc i32 @higher_prime_index(i64 128) #6, !dbg !679
  call void @llvm.dbg.value(metadata i32 %call, metadata !648, metadata !DIExpression()), !dbg !680
  %idxprom18 = sext i32 %call to i64, !dbg !681
  %prime = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom18, i32 0, !dbg !682
  %6 = load i32, i32* %prime, align 16, !dbg !682
  call void @llvm.dbg.value(metadata i32 %6, metadata !651, metadata !DIExpression()), !dbg !680
  %free_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 10, !dbg !683
  %7 = load void (i8*)*, void (i8*)** %free_f, align 8, !dbg !683
  %cmp20 = icmp eq void (i8*)* %7, null, !dbg !685
  br i1 %cmp20, label %if.else, label %if.then22, !dbg !686

if.then22:                                        ; preds = %if.then17
  %8 = bitcast i8*** %entries2 to i8**, !dbg !687
  %9 = load i8*, i8** %8, align 8, !dbg !687
  tail call void %7(i8* %9) #5, !dbg !688
  br label %if.end31, !dbg !688

if.else:                                          ; preds = %if.then17
  %free_with_arg_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 13, !dbg !689
  %10 = load void (i8*, i8*)*, void (i8*, i8*)** %free_with_arg_f, align 8, !dbg !689
  %cmp25 = icmp eq void (i8*, i8*)* %10, null, !dbg !691
  br i1 %cmp25, label %if.end31, label %if.then27, !dbg !692

if.then27:                                        ; preds = %if.else
  %alloc_arg = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 11, !dbg !693
  %11 = load i8*, i8** %alloc_arg, align 8, !dbg !693
  %12 = bitcast i8*** %entries2 to i8**, !dbg !694
  %13 = load i8*, i8** %12, align 8, !dbg !694
  tail call void %10(i8* %11, i8* %13) #5, !dbg !695
  br label %if.end31, !dbg !695

if.end31:                                         ; preds = %if.else, %if.then27, %if.then22
  %alloc_with_arg_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 12, !dbg !696
  %14 = load i8* (i8*, i64, i64)*, i8* (i8*, i64, i64)** %alloc_with_arg_f, align 8, !dbg !696
  %cmp32 = icmp eq i8* (i8*, i64, i64)* %14, null, !dbg !698
  br i1 %cmp32, label %if.else40, label %if.then34, !dbg !699

if.then34:                                        ; preds = %if.end31
  %alloc_arg36 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 11, !dbg !700
  %15 = load i8*, i8** %alloc_arg36, align 8, !dbg !700
  %conv37 = sext i32 %6 to i64, !dbg !701
  %call38 = tail call i8* %14(i8* %15, i64 %conv37, i64 8) #5, !dbg !702
  %16 = bitcast i8*** %entries2 to i8**, !dbg !703
  store i8* %call38, i8** %16, align 8, !dbg !703
  br label %if.end44, !dbg !704

if.else40:                                        ; preds = %if.end31
  %alloc_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 9, !dbg !705
  %17 = load i8* (i64, i64)*, i8* (i64, i64)** %alloc_f, align 8, !dbg !705
  %conv41 = sext i32 %6 to i64, !dbg !706
  %call42 = tail call i8* %17(i64 %conv41, i64 8) #5, !dbg !707
  %18 = bitcast i8*** %entries2 to i8**, !dbg !708
  store i8* %call42, i8** %18, align 8, !dbg !708
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then34
  %conv45.pre-phi = phi i64 [ %conv41, %if.else40 ], [ %conv37, %if.then34 ], !dbg !709
  store i64 %conv45.pre-phi, i64* %size1, align 8, !dbg !710
  %size_prime_index = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 14, !dbg !711
  store i32 %call, i32* %size_prime_index, align 8, !dbg !712
  br label %if.end49, !dbg !713

if.else47:                                        ; preds = %if.end14
  %19 = bitcast i8** %1 to i8*, !dbg !714
  %mul = shl i64 %0, 3, !dbg !715
  %call48 = tail call i8* @memset(i8* %19, i32 0, i64 %mul) #5, !dbg !716
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.end44
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 6, !dbg !717
  store i64 0, i64* %n_deleted, align 8, !dbg !718
  %n_elements = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 5, !dbg !719
  store i64 0, i64* %n_elements, align 8, !dbg !720
  ret void, !dbg !721
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @htab_find_with_hash(%struct.htab* %htab, i8* %element, i32 %hash) local_unnamed_addr #3 !dbg !722 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !726, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8* %element, metadata !727, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i32 %hash, metadata !728, metadata !DIExpression()), !dbg !733
  %searches = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 7, !dbg !734
  %0 = load i32, i32* %searches, align 8, !dbg !735
  %inc = add i32 %0, 1, !dbg !735
  store i32 %inc, i32* %searches, align 8, !dbg !735
  %size2 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 4, !dbg !736
  %1 = load i64, i64* %size2, align 8, !dbg !736
  call void @llvm.dbg.value(metadata i64 %1, metadata !731, metadata !DIExpression()), !dbg !733
  %call = tail call fastcc i32 @htab_mod(i32 %hash, %struct.htab* %htab) #6, !dbg !737
  call void @llvm.dbg.value(metadata i32 %call, metadata !729, metadata !DIExpression()), !dbg !733
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 3, !dbg !738
  %2 = load i8**, i8*** %entries, align 8, !dbg !738
  %idxprom = zext i32 %call to i64, !dbg !739
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom, !dbg !739
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !739
  call void @llvm.dbg.value(metadata i8* %3, metadata !732, metadata !DIExpression()), !dbg !733
  %magicptr = ptrtoint i8* %3 to i64, !dbg !740
  switch i64 %magicptr, label %land.lhs.true [
    i64 0, label %cleanup
    i64 1, label %if.end
  ], !dbg !740

land.lhs.true:                                    ; preds = %entry
  %eq_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 1, !dbg !742
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %eq_f, align 8, !dbg !742
  %call4 = tail call i32 %4(i8* %3, i8* %element) #5, !dbg !743
  %tobool = icmp eq i32 %call4, 0, !dbg !743
  br i1 %tobool, label %if.end, label %cleanup, !dbg !744

if.end:                                           ; preds = %land.lhs.true, %entry
  %call5 = tail call fastcc i32 @htab_mod_m2(i32 %hash, %struct.htab* %htab) #6, !dbg !745
  call void @llvm.dbg.value(metadata i32 %call5, metadata !730, metadata !DIExpression()), !dbg !733
  %eq_f22 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 1, !dbg !746
  %collisions = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 8, !dbg !751
  %5 = trunc i64 %1 to i32, !dbg !751
  br label %for.cond, !dbg !752

for.cond:                                         ; preds = %if.end26, %if.end
  %index.0 = phi i32 [ %call, %if.end ], [ %index.1, %if.end26 ], !dbg !733
  call void @llvm.dbg.value(metadata i32 %index.0, metadata !729, metadata !DIExpression()), !dbg !733
  %6 = load i32, i32* %collisions, align 4, !dbg !753
  %inc6 = add i32 %6, 1, !dbg !753
  store i32 %inc6, i32* %collisions, align 4, !dbg !753
  %add = add i32 %index.0, %call5, !dbg !754
  call void @llvm.dbg.value(metadata i32 %add, metadata !729, metadata !DIExpression()), !dbg !733
  %conv = zext i32 %add to i64, !dbg !755
  %cmp7 = icmp ugt i64 %1, %conv, !dbg !757
  %conv11 = select i1 %cmp7, i32 0, i32 %5, !dbg !758
  %index.1 = sub i32 %add, %conv11, !dbg !758
  call void @llvm.dbg.value(metadata i32 %index.1, metadata !729, metadata !DIExpression()), !dbg !733
  %7 = load i8**, i8*** %entries, align 8, !dbg !759
  %idxprom14 = zext i32 %index.1 to i64, !dbg !760
  %arrayidx15 = getelementptr inbounds i8*, i8** %7, i64 %idxprom14, !dbg !760
  %8 = load i8*, i8** %arrayidx15, align 8, !dbg !760
  call void @llvm.dbg.value(metadata i8* %8, metadata !732, metadata !DIExpression()), !dbg !733
  %magicptr1 = ptrtoint i8* %8 to i64, !dbg !761
  switch i64 %magicptr1, label %land.lhs.true21 [
    i64 0, label %cleanup.loopexit
    i64 1, label %if.end26
  ], !dbg !761

land.lhs.true21:                                  ; preds = %for.cond
  %9 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %eq_f22, align 8, !dbg !746
  %call23 = tail call i32 %9(i8* %8, i8* %element) #5, !dbg !762
  %tobool24 = icmp eq i32 %call23, 0, !dbg !762
  br i1 %tobool24, label %if.end26, label %cleanup.loopexit, !dbg !763

if.end26:                                         ; preds = %land.lhs.true21, %for.cond
  br label %for.cond, !dbg !764, !llvm.loop !765

cleanup.loopexit:                                 ; preds = %for.cond, %land.lhs.true21
  %.lcssa = phi i8* [ %8, %for.cond ], [ %8, %land.lhs.true21 ], !dbg !760
  br label %cleanup, !dbg !768

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true, %entry
  %retval.0 = phi i8* [ %3, %entry ], [ %3, %land.lhs.true ], [ %.lcssa, %cleanup.loopexit ], !dbg !733
  ret i8* %retval.0, !dbg !768
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @htab_mod(i32 %hash, %struct.htab* %htab) unnamed_addr #0 !dbg !769 {
entry:
  call void @llvm.dbg.value(metadata i32 %hash, metadata !773, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !774, metadata !DIExpression()), !dbg !777
  %size_prime_index = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 14, !dbg !778
  %0 = load i32, i32* %size_prime_index, align 8, !dbg !778
  %idxprom = zext i32 %0 to i64, !dbg !779
  %prime = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom, i32 0, !dbg !780
  %1 = load i32, i32* %prime, align 16, !dbg !780
  %inv = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom, i32 1, !dbg !781
  %2 = load i32, i32* %inv, align 4, !dbg !781
  %shift = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom, i32 3, !dbg !782
  %3 = load i32, i32* %shift, align 4, !dbg !782
  %call = tail call fastcc i32 @htab_mod_1(i32 %hash, i32 %1, i32 %2, i32 %3) #6, !dbg !783
  ret i32 %call, !dbg !784
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @htab_mod_m2(i32 %hash, %struct.htab* %htab) unnamed_addr #0 !dbg !785 {
entry:
  call void @llvm.dbg.value(metadata i32 %hash, metadata !787, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !788, metadata !DIExpression()), !dbg !790
  %size_prime_index = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 14, !dbg !791
  %0 = load i32, i32* %size_prime_index, align 8, !dbg !791
  %idxprom = zext i32 %0 to i64, !dbg !792
  %prime = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom, i32 0, !dbg !793
  %1 = load i32, i32* %prime, align 16, !dbg !793
  %sub = add i32 %1, -2, !dbg !794
  %inv_m2 = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom, i32 2, !dbg !795
  %2 = load i32, i32* %inv_m2, align 8, !dbg !795
  %shift = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom, i32 3, !dbg !796
  %3 = load i32, i32* %shift, align 4, !dbg !796
  %call = tail call fastcc i32 @htab_mod_1(i32 %hash, i32 %sub, i32 %2, i32 %3) #6, !dbg !797
  %add = add i32 %call, 1, !dbg !798
  ret i32 %add, !dbg !799
}

; Function Attrs: nounwind uwtable
define dso_local i8* @htab_find(%struct.htab* %htab, i8* %element) local_unnamed_addr #3 !dbg !800 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !804, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i8* %element, metadata !805, metadata !DIExpression()), !dbg !806
  %hash_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 0, !dbg !807
  %0 = load i32 (i8*)*, i32 (i8*)** %hash_f, align 8, !dbg !807
  %call = tail call i32 %0(i8* %element) #5, !dbg !808
  %call1 = tail call i8* @htab_find_with_hash(%struct.htab* %htab, i8* %element, i32 %call) #6, !dbg !809
  ret i8* %call1, !dbg !810
}

; Function Attrs: nounwind uwtable
define dso_local i8** @htab_find_slot_with_hash(%struct.htab* %htab, i8* %element, i32 %hash, i32 %insert) local_unnamed_addr #3 !dbg !811 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !815, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata i8* %element, metadata !816, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata i32 %hash, metadata !817, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata i32 %insert, metadata !818, metadata !DIExpression()), !dbg !825
  %size2 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 4, !dbg !826
  %0 = load i64, i64* %size2, align 8, !dbg !826
  call void @llvm.dbg.value(metadata i64 %0, metadata !822, metadata !DIExpression()), !dbg !825
  %cmp = icmp eq i32 %insert, 1, !dbg !827
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !829

land.lhs.true:                                    ; preds = %entry
  %mul = mul i64 %0, 3, !dbg !830
  %n_elements = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 5, !dbg !831
  %1 = load i64, i64* %n_elements, align 8, !dbg !831
  %mul3 = shl i64 %1, 2, !dbg !832
  %cmp4 = icmp ugt i64 %mul, %mul3, !dbg !833
  br i1 %cmp4, label %if.end8, label %if.then, !dbg !834

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i32 @htab_expand(%struct.htab* %htab) #6, !dbg !835
  %cmp5 = icmp eq i32 %call, 0, !dbg !838
  br i1 %cmp5, label %cleanup, label %if.end, !dbg !839

if.end:                                           ; preds = %if.then
  %2 = load i64, i64* %size2, align 8, !dbg !840
  call void @llvm.dbg.value(metadata i64 %2, metadata !822, metadata !DIExpression()), !dbg !825
  br label %if.end8, !dbg !841

if.end8:                                          ; preds = %land.lhs.true, %if.end, %entry
  %size.0 = phi i64 [ %2, %if.end ], [ %0, %land.lhs.true ], [ %0, %entry ], !dbg !825
  call void @llvm.dbg.value(metadata i64 %size.0, metadata !822, metadata !DIExpression()), !dbg !825
  %call9 = tail call fastcc i32 @htab_mod(i32 %hash, %struct.htab* %htab) #6, !dbg !842
  call void @llvm.dbg.value(metadata i32 %call9, metadata !820, metadata !DIExpression()), !dbg !825
  %searches = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 7, !dbg !843
  %3 = load i32, i32* %searches, align 8, !dbg !844
  %inc = add i32 %3, 1, !dbg !844
  store i32 %inc, i32* %searches, align 8, !dbg !844
  call void @llvm.dbg.value(metadata i8** null, metadata !819, metadata !DIExpression()), !dbg !825
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 3, !dbg !845
  %4 = load i8**, i8*** %entries, align 8, !dbg !845
  %idxprom = zext i32 %call9 to i64, !dbg !846
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom, !dbg !846
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !846
  call void @llvm.dbg.value(metadata i8* %5, metadata !823, metadata !DIExpression()), !dbg !825
  %magicptr = ptrtoint i8* %5 to i64, !dbg !847
  switch i64 %magicptr, label %if.else17 [
    i64 0, label %empty_entry
    i64 1, label %if.then13
  ], !dbg !847

if.then13:                                        ; preds = %if.end8
  call void @llvm.dbg.value(metadata i8** %arrayidx, metadata !819, metadata !DIExpression()), !dbg !825
  br label %if.end25, !dbg !848

if.else17:                                        ; preds = %if.end8
  %eq_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 1, !dbg !851
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %eq_f, align 8, !dbg !851
  %call18 = tail call i32 %6(i8* %5, i8* %element) #5, !dbg !853
  %tobool = icmp eq i32 %call18, 0, !dbg !853
  br i1 %tobool, label %if.end25, label %if.then19, !dbg !854

if.then19:                                        ; preds = %if.else17
  %7 = load i8**, i8*** %entries, align 8, !dbg !855
  %arrayidx22 = getelementptr inbounds i8*, i8** %7, i64 %idxprom, !dbg !856
  br label %cleanup, !dbg !857

if.end25:                                         ; preds = %if.else17, %if.then13
  %first_deleted_slot.0 = phi i8** [ %arrayidx, %if.then13 ], [ null, %if.else17 ], !dbg !825
  call void @llvm.dbg.value(metadata i8** %first_deleted_slot.0, metadata !819, metadata !DIExpression()), !dbg !825
  %call26 = tail call fastcc i32 @htab_mod_m2(i32 %hash, %struct.htab* %htab) #6, !dbg !858
  call void @llvm.dbg.value(metadata i32 %call26, metadata !821, metadata !DIExpression()), !dbg !825
  %collisions = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 8, !dbg !859
  %8 = trunc i64 %size.0 to i32, !dbg !859
  %eq_f51 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 1, !dbg !863
  br label %for.cond, !dbg !867

for.cond:                                         ; preds = %if.end60, %if.end25
  %first_deleted_slot.1 = phi i8** [ %first_deleted_slot.0, %if.end25 ], [ %first_deleted_slot.3, %if.end60 ], !dbg !868
  %index.0 = phi i32 [ %call9, %if.end25 ], [ %index.1, %if.end60 ], !dbg !825
  call void @llvm.dbg.value(metadata i32 %index.0, metadata !820, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata i8** %first_deleted_slot.1, metadata !819, metadata !DIExpression()), !dbg !825
  %9 = load i32, i32* %collisions, align 4, !dbg !869
  %inc27 = add i32 %9, 1, !dbg !869
  store i32 %inc27, i32* %collisions, align 4, !dbg !869
  %add = add i32 %index.0, %call26, !dbg !870
  call void @llvm.dbg.value(metadata i32 %add, metadata !820, metadata !DIExpression()), !dbg !825
  %conv = zext i32 %add to i64, !dbg !871
  %cmp28 = icmp ugt i64 %size.0, %conv, !dbg !873
  %conv32 = select i1 %cmp28, i32 0, i32 %8, !dbg !874
  %index.1 = sub i32 %add, %conv32, !dbg !874
  call void @llvm.dbg.value(metadata i32 %index.1, metadata !820, metadata !DIExpression()), !dbg !825
  %10 = load i8**, i8*** %entries, align 8, !dbg !875
  %idxprom35 = zext i32 %index.1 to i64, !dbg !876
  %arrayidx36 = getelementptr inbounds i8*, i8** %10, i64 %idxprom35, !dbg !876
  %11 = load i8*, i8** %arrayidx36, align 8, !dbg !876
  call void @llvm.dbg.value(metadata i8* %11, metadata !823, metadata !DIExpression()), !dbg !825
  %magicptr1 = ptrtoint i8* %11 to i64, !dbg !877
  switch i64 %magicptr1, label %if.else50 [
    i64 0, label %empty_entry.loopexit
    i64 1, label %if.then43
  ], !dbg !877

if.then43:                                        ; preds = %for.cond
  %tobool44 = icmp eq i8** %first_deleted_slot.1, null, !dbg !878
  br i1 %tobool44, label %if.then45, label %if.end60, !dbg !881

if.then45:                                        ; preds = %if.then43
  call void @llvm.dbg.value(metadata i8** %arrayidx36, metadata !819, metadata !DIExpression()), !dbg !825
  br label %if.end60, !dbg !882

if.else50:                                        ; preds = %for.cond
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %eq_f51, align 8, !dbg !883
  %call52 = tail call i32 %12(i8* %11, i8* %element) #5, !dbg !884
  %tobool53 = icmp eq i32 %call52, 0, !dbg !884
  br i1 %tobool53, label %if.end60, label %if.then54, !dbg !885

if.then54:                                        ; preds = %if.else50
  %idxprom35.lcssa8 = phi i64 [ %idxprom35, %if.else50 ], !dbg !876
  %13 = load i8**, i8*** %entries, align 8, !dbg !886
  %arrayidx57 = getelementptr inbounds i8*, i8** %13, i64 %idxprom35.lcssa8, !dbg !887
  br label %cleanup, !dbg !888

if.end60:                                         ; preds = %if.else50, %if.then43, %if.then45
  %first_deleted_slot.3 = phi i8** [ %first_deleted_slot.1, %if.then43 ], [ %arrayidx36, %if.then45 ], [ %first_deleted_slot.1, %if.else50 ], !dbg !868
  call void @llvm.dbg.value(metadata i8** %first_deleted_slot.3, metadata !819, metadata !DIExpression()), !dbg !825
  br label %for.cond, !dbg !889, !llvm.loop !890

empty_entry.loopexit:                             ; preds = %for.cond
  %first_deleted_slot.1.lcssa = phi i8** [ %first_deleted_slot.1, %for.cond ], !dbg !868
  %index.1.lcssa = phi i32 [ %index.1, %for.cond ], !dbg !874
  %.lcssa = phi i8** [ %10, %for.cond ], !dbg !875
  call void @llvm.dbg.value(metadata i8** %first_deleted_slot.1.lcssa, metadata !819, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata i8** %first_deleted_slot.1.lcssa, metadata !819, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata i8** %first_deleted_slot.1.lcssa, metadata !819, metadata !DIExpression()), !dbg !825
  br label %empty_entry, !dbg !893

empty_entry:                                      ; preds = %empty_entry.loopexit, %if.end8
  %14 = phi i8** [ %4, %if.end8 ], [ %.lcssa, %empty_entry.loopexit ]
  %first_deleted_slot.4 = phi i8** [ null, %if.end8 ], [ %first_deleted_slot.1.lcssa, %empty_entry.loopexit ], !dbg !825
  %index.2 = phi i32 [ %call9, %if.end8 ], [ %index.1.lcssa, %empty_entry.loopexit ], !dbg !825
  call void @llvm.dbg.value(metadata i32 %index.2, metadata !820, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata i8** %first_deleted_slot.4, metadata !819, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.label(metadata !824), !dbg !895
  %cmp61 = icmp eq i32 %insert, 0, !dbg !893
  br i1 %cmp61, label %cleanup, label %if.end64, !dbg !896

if.end64:                                         ; preds = %empty_entry
  %tobool65 = icmp eq i8** %first_deleted_slot.4, null, !dbg !897
  br i1 %tobool65, label %if.end67, label %if.then66, !dbg !899

if.then66:                                        ; preds = %if.end64
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 6, !dbg !900
  %15 = load i64, i64* %n_deleted, align 8, !dbg !902
  %dec = add i64 %15, -1, !dbg !902
  store i64 %dec, i64* %n_deleted, align 8, !dbg !902
  store i8* null, i8** %first_deleted_slot.4, align 8, !dbg !903
  br label %cleanup, !dbg !904

if.end67:                                         ; preds = %if.end64
  %n_elements68 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 5, !dbg !905
  %16 = load i64, i64* %n_elements68, align 8, !dbg !906
  %inc69 = add i64 %16, 1, !dbg !906
  store i64 %inc69, i64* %n_elements68, align 8, !dbg !906
  %idxprom71 = zext i32 %index.2 to i64, !dbg !907
  %arrayidx72 = getelementptr inbounds i8*, i8** %14, i64 %idxprom71, !dbg !907
  br label %cleanup, !dbg !908

cleanup:                                          ; preds = %empty_entry, %if.then, %if.end67, %if.then66, %if.then54, %if.then19
  %retval.0 = phi i8** [ %first_deleted_slot.4, %if.then66 ], [ %arrayidx72, %if.end67 ], [ %arrayidx57, %if.then54 ], [ %arrayidx22, %if.then19 ], [ null, %if.then ], [ null, %empty_entry ], !dbg !825
  ret i8** %retval.0, !dbg !909
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @htab_expand(%struct.htab* %htab) unnamed_addr #3 !dbg !910 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !914, metadata !DIExpression()), !dbg !929
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 3, !dbg !930
  %0 = load i8**, i8*** %entries, align 8, !dbg !930
  call void @llvm.dbg.value(metadata i8** %0, metadata !915, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata i32 undef, metadata !922, metadata !DIExpression()), !dbg !929
  %size = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 4, !dbg !931
  %1 = load i64, i64* %size, align 8, !dbg !931
  call void @llvm.dbg.value(metadata i64 %1, metadata !920, metadata !DIExpression()), !dbg !929
  %add.ptr = getelementptr inbounds i8*, i8** %0, i64 %1, !dbg !932
  call void @llvm.dbg.value(metadata i8** %add.ptr, metadata !916, metadata !DIExpression()), !dbg !929
  %n_elements = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 5, !dbg !933
  %2 = load i64, i64* %n_elements, align 8, !dbg !933
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 6, !dbg !933
  %3 = load i64, i64* %n_deleted, align 8, !dbg !933
  %sub = sub i64 %2, %3, !dbg !933
  call void @llvm.dbg.value(metadata i64 %sub, metadata !921, metadata !DIExpression()), !dbg !929
  %mul = shl i64 %sub, 1, !dbg !934
  %cmp = icmp ugt i64 %mul, %1, !dbg !936
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !937

lor.lhs.false:                                    ; preds = %entry
  %size_prime_index = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 14, !dbg !938
  %4 = load i32, i32* %size_prime_index, align 8, !dbg !938
  call void @llvm.dbg.value(metadata i32 %4, metadata !922, metadata !DIExpression()), !dbg !929
  %mul1 = shl i64 %sub, 3, !dbg !939
  %cmp2 = icmp ult i64 %mul1, %1, !dbg !940
  %cmp3 = icmp ugt i64 %1, 32, !dbg !941
  %or.cond = and i1 %cmp2, %cmp3, !dbg !942
  br i1 %or.cond, label %if.then, label %if.end, !dbg !942

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call fastcc i32 @higher_prime_index(i64 %mul) #6, !dbg !943
  call void @llvm.dbg.value(metadata i32 %call, metadata !923, metadata !DIExpression()), !dbg !929
  %idxprom = zext i32 %call to i64, !dbg !945
  %prime = getelementptr inbounds [30 x %struct.prime_ent], [30 x %struct.prime_ent]* @prime_tab, i64 0, i64 %idxprom, i32 0, !dbg !946
  %5 = load i32, i32* %prime, align 16, !dbg !946
  %conv = zext i32 %5 to i64, !dbg !945
  call void @llvm.dbg.value(metadata i64 %conv, metadata !919, metadata !DIExpression()), !dbg !929
  br label %if.end, !dbg !947

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %nsize.0 = phi i64 [ %conv, %if.then ], [ %1, %lor.lhs.false ], !dbg !948
  %nindex.0 = phi i32 [ %call, %if.then ], [ %4, %lor.lhs.false ], !dbg !948
  call void @llvm.dbg.value(metadata i32 %nindex.0, metadata !923, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata i64 %nsize.0, metadata !919, metadata !DIExpression()), !dbg !929
  %alloc_with_arg_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 12, !dbg !949
  %6 = load i8* (i8*, i64, i64)*, i8* (i8*, i64, i64)** %alloc_with_arg_f, align 8, !dbg !949
  %cmp5 = icmp eq i8* (i8*, i64, i64)* %6, null, !dbg !951
  br i1 %cmp5, label %if.else10, label %if.then7, !dbg !952

if.then7:                                         ; preds = %if.end
  %alloc_arg = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 11, !dbg !953
  %7 = load i8*, i8** %alloc_arg, align 8, !dbg !953
  %call9 = tail call i8* %6(i8* %7, i64 %nsize.0, i64 8) #5, !dbg !954
  call void @llvm.dbg.value(metadata i8* %call9, metadata !918, metadata !DIExpression()), !dbg !929
  br label %if.end12, !dbg !955

if.else10:                                        ; preds = %if.end
  %alloc_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 9, !dbg !956
  %8 = load i8* (i64, i64)*, i8* (i64, i64)** %alloc_f, align 8, !dbg !956
  %call11 = tail call i8* %8(i64 %nsize.0, i64 8) #5, !dbg !957
  call void @llvm.dbg.value(metadata i8* %call11, metadata !918, metadata !DIExpression()), !dbg !929
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then7
  %nentries.0.in = phi i8* [ %call9, %if.then7 ], [ %call11, %if.else10 ]
  call void @llvm.dbg.value(metadata i8* %nentries.0.in, metadata !918, metadata !DIExpression()), !dbg !929
  %cmp13 = icmp eq i8* %nentries.0.in, null, !dbg !958
  br i1 %cmp13, label %cleanup, label %if.end16, !dbg !960

if.end16:                                         ; preds = %if.end12
  call void @llvm.dbg.value(metadata i8* %nentries.0.in, metadata !918, metadata !DIExpression()), !dbg !929
  %9 = bitcast i8*** %entries to i8**, !dbg !961
  store i8* %nentries.0.in, i8** %9, align 8, !dbg !961
  store i64 %nsize.0, i64* %size, align 8, !dbg !962
  %size_prime_index19 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 14, !dbg !963
  store i32 %nindex.0, i32* %size_prime_index19, align 8, !dbg !964
  %10 = load i64, i64* %n_deleted, align 8, !dbg !965
  %11 = load i64, i64* %n_elements, align 8, !dbg !966
  %sub22 = sub i64 %11, %10, !dbg !966
  store i64 %sub22, i64* %n_elements, align 8, !dbg !966
  store i64 0, i64* %n_deleted, align 8, !dbg !967
  call void @llvm.dbg.value(metadata i8** %0, metadata !917, metadata !DIExpression()), !dbg !929
  %hash_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 0, !dbg !968
  br label %do.body, !dbg !969

do.body:                                          ; preds = %if.end32, %if.end16
  %p.0 = phi i8** [ %0, %if.end16 ], [ %incdec.ptr, %if.end32 ], !dbg !929
  call void @llvm.dbg.value(metadata i8** %p.0, metadata !917, metadata !DIExpression()), !dbg !929
  %12 = load i8*, i8** %p.0, align 8, !dbg !970
  call void @llvm.dbg.value(metadata i8* %12, metadata !924, metadata !DIExpression()), !dbg !971
  %switch = icmp ult i8* %12, inttoptr (i64 2 to i8*), !dbg !972
  br i1 %switch, label %if.end32, label %if.then29, !dbg !972

if.then29:                                        ; preds = %do.body
  %13 = load i32 (i8*)*, i32 (i8*)** %hash_f, align 8, !dbg !973
  %call30 = tail call i32 %13(i8* %12) #5, !dbg !974
  %call31 = tail call fastcc i8** @find_empty_slot_for_expand(%struct.htab* %htab, i32 %call30) #6, !dbg !975
  call void @llvm.dbg.value(metadata i8** %call31, metadata !926, metadata !DIExpression()), !dbg !968
  store i8* %12, i8** %call31, align 8, !dbg !976
  br label %if.end32, !dbg !977

if.end32:                                         ; preds = %do.body, %if.then29
  %incdec.ptr = getelementptr inbounds i8*, i8** %p.0, i64 1, !dbg !978
  call void @llvm.dbg.value(metadata i8** %incdec.ptr, metadata !917, metadata !DIExpression()), !dbg !929
  %cmp33 = icmp ult i8** %incdec.ptr, %add.ptr, !dbg !979
  br i1 %cmp33, label %do.body, label %do.end, !dbg !980, !llvm.loop !981

do.end:                                           ; preds = %if.end32
  %free_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 10, !dbg !983
  %14 = load void (i8*)*, void (i8*)** %free_f, align 8, !dbg !983
  %cmp35 = icmp eq void (i8*)* %14, null, !dbg !985
  br i1 %cmp35, label %if.else39, label %if.then37, !dbg !986

if.then37:                                        ; preds = %do.end
  %15 = bitcast i8** %0 to i8*, !dbg !987
  tail call void %14(i8* %15) #5, !dbg !988
  br label %cleanup, !dbg !988

if.else39:                                        ; preds = %do.end
  %free_with_arg_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 13, !dbg !989
  %16 = load void (i8*, i8*)*, void (i8*, i8*)** %free_with_arg_f, align 8, !dbg !989
  %cmp40 = icmp eq void (i8*, i8*)* %16, null, !dbg !991
  br i1 %cmp40, label %cleanup, label %if.then42, !dbg !992

if.then42:                                        ; preds = %if.else39
  %alloc_arg44 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 11, !dbg !993
  %17 = load i8*, i8** %alloc_arg44, align 8, !dbg !993
  %18 = bitcast i8** %0 to i8*, !dbg !994
  tail call void %16(i8* %17, i8* %18) #5, !dbg !995
  br label %cleanup, !dbg !995

cleanup:                                          ; preds = %if.else39, %if.then37, %if.then42, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 1, %if.else39 ], [ 1, %if.then42 ], [ 1, %if.then37 ], !dbg !929
  ret i32 %retval.0, !dbg !996
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: nounwind uwtable
define dso_local i8** @htab_find_slot(%struct.htab* %htab, i8* %element, i32 %insert) local_unnamed_addr #3 !dbg !997 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !1001, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i8* %element, metadata !1002, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i32 %insert, metadata !1003, metadata !DIExpression()), !dbg !1004
  %hash_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 0, !dbg !1005
  %0 = load i32 (i8*)*, i32 (i8*)** %hash_f, align 8, !dbg !1005
  %call = tail call i32 %0(i8* %element) #5, !dbg !1006
  %call1 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %htab, i8* %element, i32 %call, i32 %insert) #6, !dbg !1007
  ret i8** %call1, !dbg !1008
}

; Function Attrs: nounwind uwtable
define dso_local void @htab_remove_elt(%struct.htab* %htab, i8* %element) local_unnamed_addr #3 !dbg !1009 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !1013, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i8* %element, metadata !1014, metadata !DIExpression()), !dbg !1015
  %hash_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 0, !dbg !1016
  %0 = load i32 (i8*)*, i32 (i8*)** %hash_f, align 8, !dbg !1016
  %call = tail call i32 %0(i8* %element) #5, !dbg !1017
  tail call void @htab_remove_elt_with_hash(%struct.htab* %htab, i8* %element, i32 %call) #6, !dbg !1018
  ret void, !dbg !1019
}

; Function Attrs: nounwind uwtable
define dso_local void @htab_remove_elt_with_hash(%struct.htab* %htab, i8* %element, i32 %hash) local_unnamed_addr #3 !dbg !1020 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !1024, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %element, metadata !1025, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 %hash, metadata !1026, metadata !DIExpression()), !dbg !1028
  %call = tail call i8** @htab_find_slot_with_hash(%struct.htab* %htab, i8* %element, i32 %hash, i32 0) #6, !dbg !1029
  call void @llvm.dbg.value(metadata i8** %call, metadata !1027, metadata !DIExpression()), !dbg !1028
  %0 = load i8*, i8** %call, align 8, !dbg !1030
  %cmp = icmp eq i8* %0, null, !dbg !1032
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !1033

if.end:                                           ; preds = %entry
  %del_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 2, !dbg !1034
  %1 = load void (i8*)*, void (i8*)** %del_f, align 8, !dbg !1034
  %tobool = icmp eq void (i8*)* %1, null, !dbg !1036
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !1037

if.then1:                                         ; preds = %if.end
  tail call void %1(i8* nonnull %0) #5, !dbg !1038
  br label %if.end3, !dbg !1038

if.end3:                                          ; preds = %if.end, %if.then1
  store i8* inttoptr (i64 1 to i8*), i8** %call, align 8, !dbg !1039
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 6, !dbg !1040
  %2 = load i64, i64* %n_deleted, align 8, !dbg !1041
  %inc = add i64 %2, 1, !dbg !1041
  store i64 %inc, i64* %n_deleted, align 8, !dbg !1041
  br label %cleanup.cont, !dbg !1042

cleanup.cont:                                     ; preds = %if.end3, %entry
  ret void, !dbg !1042
}

; Function Attrs: nounwind uwtable
define dso_local void @htab_clear_slot(%struct.htab* %htab, i8** %slot) local_unnamed_addr #3 !dbg !1043 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !1047, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1048, metadata !DIExpression()), !dbg !1049
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 3, !dbg !1050
  %0 = load i8**, i8*** %entries, align 8, !dbg !1050
  %cmp = icmp ugt i8** %0, %slot, !dbg !1052
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1053

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 4, !dbg !1054
  %1 = load i64, i64* %size, align 8, !dbg !1054
  %add.ptr = getelementptr inbounds i8*, i8** %0, i64 %1, !dbg !1055
  %cmp2 = icmp ugt i8** %add.ptr, %slot, !dbg !1056
  br i1 %cmp2, label %lor.lhs.false3, label %if.then, !dbg !1057

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %slot, align 8, !dbg !1058
  %cmp4 = icmp eq i8* %2, null, !dbg !1059
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !1060

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %cmp6 = icmp eq i8* %2, inttoptr (i64 1 to i8*), !dbg !1061
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1062

if.then:                                          ; preds = %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false3, %entry
  tail call void @abort() #5, !dbg !1063
  br label %if.end, !dbg !1063

if.end:                                           ; preds = %if.then, %lor.lhs.false5
  %del_f = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 2, !dbg !1064
  %3 = load void (i8*)*, void (i8*)** %del_f, align 8, !dbg !1064
  %tobool = icmp eq void (i8*)* %3, null, !dbg !1066
  br i1 %tobool, label %if.end9, label %if.then7, !dbg !1067

if.then7:                                         ; preds = %if.end
  %4 = load i8*, i8** %slot, align 8, !dbg !1068
  tail call void %3(i8* %4) #5, !dbg !1069
  br label %if.end9, !dbg !1069

if.end9:                                          ; preds = %if.end, %if.then7
  store i8* inttoptr (i64 1 to i8*), i8** %slot, align 8, !dbg !1070
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 6, !dbg !1071
  %5 = load i64, i64* %n_deleted, align 8, !dbg !1072
  %inc = add i64 %5, 1, !dbg !1072
  store i64 %inc, i64* %n_deleted, align 8, !dbg !1072
  ret void, !dbg !1073
}

declare dso_local void @abort() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @htab_traverse_noresize(%struct.htab* %htab, i32 (i8**, i8*)* %callback, i8* %info) local_unnamed_addr #3 !dbg !1074 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !1082, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 (i8**, i8*)* %callback, metadata !1083, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8* %info, metadata !1084, metadata !DIExpression()), !dbg !1089
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 3, !dbg !1090
  %0 = load i8**, i8*** %entries, align 8, !dbg !1090
  call void @llvm.dbg.value(metadata i8** %0, metadata !1085, metadata !DIExpression()), !dbg !1089
  %size = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 4, !dbg !1091
  %1 = load i64, i64* %size, align 8, !dbg !1091
  %add.ptr = getelementptr inbounds i8*, i8** %0, i64 %1, !dbg !1092
  call void @llvm.dbg.value(metadata i8** %add.ptr, metadata !1086, metadata !DIExpression()), !dbg !1089
  br label %do.body, !dbg !1093

do.body:                                          ; preds = %do.cond, %entry
  %slot.0 = phi i8** [ %0, %entry ], [ %incdec.ptr, %do.cond ], !dbg !1089
  call void @llvm.dbg.value(metadata i8** %slot.0, metadata !1085, metadata !DIExpression()), !dbg !1089
  %2 = bitcast i8** %slot.0 to i64*, !dbg !1094
  %3 = load i64, i64* %2, align 8, !dbg !1094
  %switch1 = icmp ult i64 %3, 2, !dbg !1095
  br i1 %switch1, label %if.end3, label %if.then, !dbg !1095

if.then:                                          ; preds = %do.body
  %call = tail call i32 %callback(i8** %slot.0, i8* %info) #5, !dbg !1097
  %tobool = icmp eq i32 %call, 0, !dbg !1097
  br i1 %tobool, label %cleanup, label %if.end3, !dbg !1099

if.end3:                                          ; preds = %if.then, %do.body
  br label %cleanup, !dbg !1100

cleanup:                                          ; preds = %if.then, %if.end3
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end3 ], [ false, %if.then ]
  br i1 %cleanup.dest.slot.0, label %do.cond, label %do.end

do.cond:                                          ; preds = %cleanup
  %incdec.ptr = getelementptr inbounds i8*, i8** %slot.0, i64 1, !dbg !1101
  call void @llvm.dbg.value(metadata i8** %incdec.ptr, metadata !1085, metadata !DIExpression()), !dbg !1089
  %cmp4 = icmp ult i8** %incdec.ptr, %add.ptr, !dbg !1102
  br i1 %cmp4, label %do.body, label %do.end, !dbg !1103, !llvm.loop !1104

do.end:                                           ; preds = %cleanup, %do.cond
  ret void, !dbg !1106
}

; Function Attrs: nounwind uwtable
define dso_local void @htab_traverse(%struct.htab* %htab, i32 (i8**, i8*)* %callback, i8* %info) local_unnamed_addr #3 !dbg !1107 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !1109, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 (i8**, i8*)* %callback, metadata !1110, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %info, metadata !1111, metadata !DIExpression()), !dbg !1113
  %size1 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 4, !dbg !1114
  %0 = load i64, i64* %size1, align 8, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %0, metadata !1112, metadata !DIExpression()), !dbg !1113
  %n_elements = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 5, !dbg !1115
  %1 = load i64, i64* %n_elements, align 8, !dbg !1115
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 6, !dbg !1115
  %2 = load i64, i64* %n_deleted, align 8, !dbg !1115
  %sub = sub i64 %1, %2, !dbg !1115
  %mul = shl i64 %sub, 3, !dbg !1117
  %cmp = icmp ult i64 %mul, %0, !dbg !1118
  %cmp2 = icmp ugt i64 %0, 32, !dbg !1119
  %or.cond = and i1 %cmp, %cmp2, !dbg !1120
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1120

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @htab_expand(%struct.htab* %htab) #6, !dbg !1121
  br label %if.end, !dbg !1121

if.end:                                           ; preds = %if.then, %entry
  tail call void @htab_traverse_noresize(%struct.htab* %htab, i32 (i8**, i8*)* %callback, i8* %info) #6, !dbg !1122
  ret void, !dbg !1123
}

; Function Attrs: nounwind uwtable
define dso_local double @htab_collisions(%struct.htab* %htab) local_unnamed_addr #3 !dbg !1124 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !1128, metadata !DIExpression()), !dbg !1129
  %searches = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 7, !dbg !1130
  %0 = load i32, i32* %searches, align 8, !dbg !1130
  %cmp = icmp eq i32 %0, 0, !dbg !1132
  br i1 %cmp, label %return, label %if.end, !dbg !1133

if.end:                                           ; preds = %entry
  %collisions = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 8, !dbg !1134
  %1 = load i32, i32* %collisions, align 4, !dbg !1134
  %conv = uitofp i32 %1 to double, !dbg !1135
  %conv2 = uitofp i32 %0 to double, !dbg !1136
  %div = fdiv double %conv, %conv2, !dbg !1137
  br label %return, !dbg !1138

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi double [ %div, %if.end ], [ 0.000000e+00, %entry ], !dbg !1129
  ret double %retval.0, !dbg !1139
}

; Function Attrs: nounwind uwtable
define dso_local i32 @htab_hash_string(i8* %p) local_unnamed_addr #3 !dbg !1140 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1142, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %p, metadata !1143, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 0, metadata !1144, metadata !DIExpression()), !dbg !1146
  br label %while.cond, !dbg !1147

while.cond:                                       ; preds = %while.body, %entry
  %str.0 = phi i8* [ %p, %entry ], [ %incdec.ptr, %while.body ], !dbg !1146
  %r.0 = phi i32 [ 0, %entry ], [ %sub, %while.body ], !dbg !1146
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !1144, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %str.0, metadata !1143, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %str.0, metadata !1143, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1146
  %0 = load i8, i8* %str.0, align 1, !dbg !1148
  call void @llvm.dbg.value(metadata i8 %0, metadata !1145, metadata !DIExpression()), !dbg !1146
  %cmp = icmp eq i8 %0, 0, !dbg !1149
  br i1 %cmp, label %while.end, label %while.body, !dbg !1147

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %str.0, i64 1, !dbg !1150
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1143, metadata !DIExpression()), !dbg !1146
  %mul = mul i32 %r.0, 67, !dbg !1151
  %conv2 = zext i8 %0 to i32, !dbg !1152
  %add = add i32 %mul, %conv2, !dbg !1153
  %sub = add i32 %add, -113, !dbg !1154
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1144, metadata !DIExpression()), !dbg !1146
  br label %while.cond, !dbg !1147, !llvm.loop !1155

while.end:                                        ; preds = %while.cond
  %r.0.lcssa = phi i32 [ %r.0, %while.cond ], !dbg !1146
  call void @llvm.dbg.value(metadata i32 %r.0.lcssa, metadata !1144, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %r.0.lcssa, metadata !1144, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %r.0.lcssa, metadata !1144, metadata !DIExpression()), !dbg !1146
  ret i32 %r.0.lcssa, !dbg !1157
}

; Function Attrs: nounwind uwtable
define dso_local i32 @iterative_hash(i8* %k_in, i64 %length, i32 %initval) local_unnamed_addr #3 !dbg !1158 {
entry:
  call void @llvm.dbg.value(metadata i8* %k_in, metadata !1162, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i64 %length, metadata !1163, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %initval, metadata !1164, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %k_in, metadata !1165, metadata !DIExpression()), !dbg !1170
  %conv = trunc i64 %length to i32, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 -1640531527, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 -1640531527, metadata !1166, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %initval, metadata !1168, metadata !DIExpression()), !dbg !1170
  %0 = ptrtoint i8* %k_in to i64, !dbg !1172
  %and = and i64 %0, 3, !dbg !1174
  %cmp = icmp eq i64 %and, 0, !dbg !1175
  br i1 %cmp, label %while.cond.preheader, label %while.cond42.preheader, !dbg !1176

while.cond42.preheader:                           ; preds = %entry
  br label %while.cond42, !dbg !1177

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !1178

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %a.0 = phi i32 [ %xor31, %while.body ], [ -1640531527, %while.cond.preheader ], !dbg !1170
  %k.0 = phi i8* [ %add.ptr40, %while.body ], [ %k_in, %while.cond.preheader ], !dbg !1170
  %b.0 = phi i32 [ %xor35, %while.body ], [ -1640531527, %while.cond.preheader ], !dbg !1170
  %c.0 = phi i32 [ %xor39, %while.body ], [ %initval, %while.cond.preheader ], !dbg !1170
  %len.0 = phi i32 [ %sub41, %while.body ], [ %conv, %while.cond.preheader ], !dbg !1170
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.0, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %k.0, metadata !1165, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.0, metadata !1166, metadata !DIExpression()), !dbg !1170
  %cmp2 = icmp ugt i32 %len.0, 11, !dbg !1179
  br i1 %cmp2, label %while.body, label %if.end.loopexit, !dbg !1178

while.body:                                       ; preds = %while.cond
  %1 = bitcast i8* %k.0 to i32*, !dbg !1180
  %2 = load i32, i32* %1, align 4, !dbg !1180
  %add = add i32 %a.0, %2, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %add, metadata !1166, metadata !DIExpression()), !dbg !1170
  %add.ptr4 = getelementptr inbounds i8, i8* %k.0, i64 4, !dbg !1183
  %3 = bitcast i8* %add.ptr4 to i32*, !dbg !1184
  %4 = load i32, i32* %3, align 4, !dbg !1184
  %add5 = add i32 %b.0, %4, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %add5, metadata !1167, metadata !DIExpression()), !dbg !1170
  %add.ptr6 = getelementptr inbounds i8, i8* %k.0, i64 8, !dbg !1186
  %5 = bitcast i8* %add.ptr6 to i32*, !dbg !1187
  %6 = load i32, i32* %5, align 4, !dbg !1187
  %add7 = add i32 %c.0, %6, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %add7, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub = sub i32 %add, %add5, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub8 = sub i32 %sub, %add7, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub8, metadata !1166, metadata !DIExpression()), !dbg !1170
  %shr = lshr i32 %add7, 13, !dbg !1189
  %xor = xor i32 %sub8, %shr, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub9 = sub i32 %add5, %add7, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub9, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub10 = sub i32 %sub9, %xor, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub10, metadata !1167, metadata !DIExpression()), !dbg !1170
  %shl = shl i32 %xor, 8, !dbg !1189
  %xor11 = xor i32 %sub10, %shl, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %xor11, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub12 = sub i32 %add7, %xor, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub12, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub13 = sub i32 %sub12, %xor11, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub13, metadata !1168, metadata !DIExpression()), !dbg !1170
  %shr14 = lshr i32 %xor11, 13, !dbg !1189
  %xor15 = xor i32 %sub13, %shr14, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %xor15, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub16 = sub i32 %xor, %xor11, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub16, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub17 = sub i32 %sub16, %xor15, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub17, metadata !1166, metadata !DIExpression()), !dbg !1170
  %shr18 = lshr i32 %xor15, 12, !dbg !1189
  %xor19 = xor i32 %sub17, %shr18, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %xor19, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub20 = sub i32 %xor11, %xor15, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub20, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub21 = sub i32 %sub20, %xor19, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub21, metadata !1167, metadata !DIExpression()), !dbg !1170
  %shl22 = shl i32 %xor19, 16, !dbg !1189
  %xor23 = xor i32 %sub21, %shl22, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %xor23, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub24 = sub i32 %xor15, %xor19, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub24, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub25 = sub i32 %sub24, %xor23, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub25, metadata !1168, metadata !DIExpression()), !dbg !1170
  %shr26 = lshr i32 %xor23, 5, !dbg !1189
  %xor27 = xor i32 %sub25, %shr26, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %xor27, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub28 = sub i32 %xor19, %xor23, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub28, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub29 = sub i32 %sub28, %xor27, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub29, metadata !1166, metadata !DIExpression()), !dbg !1170
  %shr30 = lshr i32 %xor27, 3, !dbg !1189
  %xor31 = xor i32 %sub29, %shr30, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %xor31, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub32 = sub i32 %xor23, %xor27, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub32, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub33 = sub i32 %sub32, %xor31, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub33, metadata !1167, metadata !DIExpression()), !dbg !1170
  %shl34 = shl i32 %xor31, 10, !dbg !1189
  %xor35 = xor i32 %sub33, %shl34, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %xor35, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub36 = sub i32 %xor27, %xor31, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub36, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub37 = sub i32 %sub36, %xor35, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %sub37, metadata !1168, metadata !DIExpression()), !dbg !1170
  %shr38 = lshr i32 %xor35, 15, !dbg !1189
  %xor39 = xor i32 %sub37, %shr38, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %xor39, metadata !1168, metadata !DIExpression()), !dbg !1170
  %add.ptr40 = getelementptr inbounds i8, i8* %k.0, i64 12, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %add.ptr40, metadata !1165, metadata !DIExpression()), !dbg !1170
  %sub41 = add i32 %len.0, -12, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %sub41, metadata !1169, metadata !DIExpression()), !dbg !1170
  br label %while.cond, !dbg !1178, !llvm.loop !1193

while.cond42:                                     ; preds = %while.cond42.preheader, %while.body45
  %a.1 = phi i32 [ %xor117, %while.body45 ], [ -1640531527, %while.cond42.preheader ], !dbg !1170
  %k.1 = phi i8* [ %add.ptr126, %while.body45 ], [ %k_in, %while.cond42.preheader ], !dbg !1170
  %b.1 = phi i32 [ %xor121, %while.body45 ], [ -1640531527, %while.cond42.preheader ], !dbg !1170
  %c.1 = phi i32 [ %xor125, %while.body45 ], [ %initval, %while.cond42.preheader ], !dbg !1170
  %len.1 = phi i32 [ %sub127, %while.body45 ], [ %conv, %while.cond42.preheader ], !dbg !1170
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.1, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.1, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %k.1, metadata !1165, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.1, metadata !1166, metadata !DIExpression()), !dbg !1170
  %cmp43 = icmp ugt i32 %len.1, 11, !dbg !1195
  br i1 %cmp43, label %while.body45, label %if.end.loopexit1, !dbg !1177

while.body45:                                     ; preds = %while.cond42
  %7 = load i8, i8* %k.1, align 1, !dbg !1196
  %conv46 = zext i8 %7 to i32, !dbg !1196
  %arrayidx47 = getelementptr inbounds i8, i8* %k.1, i64 1, !dbg !1198
  %8 = load i8, i8* %arrayidx47, align 1, !dbg !1198
  %conv48 = zext i8 %8 to i32, !dbg !1199
  %shl49 = shl nuw nsw i32 %conv48, 8, !dbg !1200
  %add50 = or i32 %shl49, %conv46, !dbg !1201
  %arrayidx51 = getelementptr inbounds i8, i8* %k.1, i64 2, !dbg !1202
  %9 = load i8, i8* %arrayidx51, align 1, !dbg !1202
  %conv52 = zext i8 %9 to i32, !dbg !1203
  %shl53 = shl nuw nsw i32 %conv52, 16, !dbg !1204
  %add54 = or i32 %add50, %shl53, !dbg !1205
  %arrayidx55 = getelementptr inbounds i8, i8* %k.1, i64 3, !dbg !1206
  %10 = load i8, i8* %arrayidx55, align 1, !dbg !1206
  %conv56 = zext i8 %10 to i32, !dbg !1207
  %shl57 = shl nuw i32 %conv56, 24, !dbg !1208
  %add58 = or i32 %add54, %shl57, !dbg !1209
  %add59 = add i32 %a.1, %add58, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %add59, metadata !1166, metadata !DIExpression()), !dbg !1170
  %arrayidx60 = getelementptr inbounds i8, i8* %k.1, i64 4, !dbg !1211
  %11 = load i8, i8* %arrayidx60, align 1, !dbg !1211
  %conv61 = zext i8 %11 to i32, !dbg !1211
  %arrayidx62 = getelementptr inbounds i8, i8* %k.1, i64 5, !dbg !1212
  %12 = load i8, i8* %arrayidx62, align 1, !dbg !1212
  %conv63 = zext i8 %12 to i32, !dbg !1213
  %shl64 = shl nuw nsw i32 %conv63, 8, !dbg !1214
  %add65 = or i32 %shl64, %conv61, !dbg !1215
  %arrayidx66 = getelementptr inbounds i8, i8* %k.1, i64 6, !dbg !1216
  %13 = load i8, i8* %arrayidx66, align 1, !dbg !1216
  %conv67 = zext i8 %13 to i32, !dbg !1217
  %shl68 = shl nuw nsw i32 %conv67, 16, !dbg !1218
  %add69 = or i32 %add65, %shl68, !dbg !1219
  %arrayidx70 = getelementptr inbounds i8, i8* %k.1, i64 7, !dbg !1220
  %14 = load i8, i8* %arrayidx70, align 1, !dbg !1220
  %conv71 = zext i8 %14 to i32, !dbg !1221
  %shl72 = shl nuw i32 %conv71, 24, !dbg !1222
  %add73 = or i32 %add69, %shl72, !dbg !1223
  %add74 = add i32 %b.1, %add73, !dbg !1224
  call void @llvm.dbg.value(metadata i32 %add74, metadata !1167, metadata !DIExpression()), !dbg !1170
  %arrayidx75 = getelementptr inbounds i8, i8* %k.1, i64 8, !dbg !1225
  %15 = load i8, i8* %arrayidx75, align 1, !dbg !1225
  %conv76 = zext i8 %15 to i32, !dbg !1225
  %arrayidx77 = getelementptr inbounds i8, i8* %k.1, i64 9, !dbg !1226
  %16 = load i8, i8* %arrayidx77, align 1, !dbg !1226
  %conv78 = zext i8 %16 to i32, !dbg !1227
  %shl79 = shl nuw nsw i32 %conv78, 8, !dbg !1228
  %add80 = or i32 %shl79, %conv76, !dbg !1229
  %arrayidx81 = getelementptr inbounds i8, i8* %k.1, i64 10, !dbg !1230
  %17 = load i8, i8* %arrayidx81, align 1, !dbg !1230
  %conv82 = zext i8 %17 to i32, !dbg !1231
  %shl83 = shl nuw nsw i32 %conv82, 16, !dbg !1232
  %add84 = or i32 %add80, %shl83, !dbg !1233
  %arrayidx85 = getelementptr inbounds i8, i8* %k.1, i64 11, !dbg !1234
  %18 = load i8, i8* %arrayidx85, align 1, !dbg !1234
  %conv86 = zext i8 %18 to i32, !dbg !1235
  %shl87 = shl nuw i32 %conv86, 24, !dbg !1236
  %add88 = or i32 %add84, %shl87, !dbg !1237
  %add89 = add i32 %c.1, %add88, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %add89, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub90 = sub i32 %add59, %add74, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub90, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub91 = sub i32 %sub90, %add89, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub91, metadata !1166, metadata !DIExpression()), !dbg !1170
  %shr92 = lshr i32 %add89, 13, !dbg !1239
  %xor93 = xor i32 %sub91, %shr92, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %xor93, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub94 = sub i32 %add74, %add89, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub94, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub95 = sub i32 %sub94, %xor93, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub95, metadata !1167, metadata !DIExpression()), !dbg !1170
  %shl96 = shl i32 %xor93, 8, !dbg !1239
  %xor97 = xor i32 %sub95, %shl96, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %xor97, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub98 = sub i32 %add89, %xor93, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub98, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub99 = sub i32 %sub98, %xor97, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub99, metadata !1168, metadata !DIExpression()), !dbg !1170
  %shr100 = lshr i32 %xor97, 13, !dbg !1239
  %xor101 = xor i32 %sub99, %shr100, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %xor101, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub102 = sub i32 %xor93, %xor97, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub102, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub103 = sub i32 %sub102, %xor101, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub103, metadata !1166, metadata !DIExpression()), !dbg !1170
  %shr104 = lshr i32 %xor101, 12, !dbg !1239
  %xor105 = xor i32 %sub103, %shr104, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %xor105, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub106 = sub i32 %xor97, %xor101, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub106, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub107 = sub i32 %sub106, %xor105, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub107, metadata !1167, metadata !DIExpression()), !dbg !1170
  %shl108 = shl i32 %xor105, 16, !dbg !1239
  %xor109 = xor i32 %sub107, %shl108, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %xor109, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub110 = sub i32 %xor101, %xor105, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub110, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub111 = sub i32 %sub110, %xor109, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub111, metadata !1168, metadata !DIExpression()), !dbg !1170
  %shr112 = lshr i32 %xor109, 5, !dbg !1239
  %xor113 = xor i32 %sub111, %shr112, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %xor113, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub114 = sub i32 %xor105, %xor109, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub114, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub115 = sub i32 %sub114, %xor113, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub115, metadata !1166, metadata !DIExpression()), !dbg !1170
  %shr116 = lshr i32 %xor113, 3, !dbg !1239
  %xor117 = xor i32 %sub115, %shr116, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %xor117, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub118 = sub i32 %xor109, %xor113, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub118, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub119 = sub i32 %sub118, %xor117, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub119, metadata !1167, metadata !DIExpression()), !dbg !1170
  %shl120 = shl i32 %xor117, 10, !dbg !1239
  %xor121 = xor i32 %sub119, %shl120, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %xor121, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub122 = sub i32 %xor113, %xor117, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub122, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub123 = sub i32 %sub122, %xor121, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %sub123, metadata !1168, metadata !DIExpression()), !dbg !1170
  %shr124 = lshr i32 %xor121, 15, !dbg !1239
  %xor125 = xor i32 %sub123, %shr124, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %xor125, metadata !1168, metadata !DIExpression()), !dbg !1170
  %add.ptr126 = getelementptr inbounds i8, i8* %k.1, i64 12, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %add.ptr126, metadata !1165, metadata !DIExpression()), !dbg !1170
  %sub127 = add i32 %len.1, -12, !dbg !1242
  call void @llvm.dbg.value(metadata i32 %sub127, metadata !1169, metadata !DIExpression()), !dbg !1170
  br label %while.cond42, !dbg !1177, !llvm.loop !1243

if.end.loopexit:                                  ; preds = %while.cond
  %a.0.lcssa = phi i32 [ %a.0, %while.cond ], !dbg !1170
  %k.0.lcssa = phi i8* [ %k.0, %while.cond ], !dbg !1170
  %b.0.lcssa = phi i32 [ %b.0, %while.cond ], !dbg !1170
  %c.0.lcssa = phi i32 [ %c.0, %while.cond ], !dbg !1170
  %len.0.lcssa = phi i32 [ %len.0, %while.cond ], !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.0.lcssa, metadata !1166, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %k.0.lcssa, metadata !1165, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.0.lcssa, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.0.lcssa, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %len.0.lcssa, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.0.lcssa, metadata !1166, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %k.0.lcssa, metadata !1165, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.0.lcssa, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.0.lcssa, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %len.0.lcssa, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.0.lcssa, metadata !1166, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %k.0.lcssa, metadata !1165, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.0.lcssa, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.0.lcssa, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %len.0.lcssa, metadata !1169, metadata !DIExpression()), !dbg !1170
  br label %if.end, !dbg !1245

if.end.loopexit1:                                 ; preds = %while.cond42
  %a.1.lcssa = phi i32 [ %a.1, %while.cond42 ], !dbg !1170
  %k.1.lcssa = phi i8* [ %k.1, %while.cond42 ], !dbg !1170
  %b.1.lcssa = phi i32 [ %b.1, %while.cond42 ], !dbg !1170
  %c.1.lcssa = phi i32 [ %c.1, %while.cond42 ], !dbg !1170
  %len.1.lcssa = phi i32 [ %len.1, %while.cond42 ], !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.1.lcssa, metadata !1166, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %k.1.lcssa, metadata !1165, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.1.lcssa, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.1.lcssa, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %len.1.lcssa, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.1.lcssa, metadata !1166, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %k.1.lcssa, metadata !1165, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.1.lcssa, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.1.lcssa, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %len.1.lcssa, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.1.lcssa, metadata !1166, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %k.1.lcssa, metadata !1165, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.1.lcssa, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.1.lcssa, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %len.1.lcssa, metadata !1169, metadata !DIExpression()), !dbg !1170
  br label %if.end, !dbg !1245

if.end:                                           ; preds = %if.end.loopexit1, %if.end.loopexit
  %a.2 = phi i32 [ %a.0.lcssa, %if.end.loopexit ], [ %a.1.lcssa, %if.end.loopexit1 ], !dbg !1246
  %k.2 = phi i8* [ %k.0.lcssa, %if.end.loopexit ], [ %k.1.lcssa, %if.end.loopexit1 ], !dbg !1247
  %b.2 = phi i32 [ %b.0.lcssa, %if.end.loopexit ], [ %b.1.lcssa, %if.end.loopexit1 ], !dbg !1248
  %c.2 = phi i32 [ %c.0.lcssa, %if.end.loopexit ], [ %c.1.lcssa, %if.end.loopexit1 ], !dbg !1249
  %len.2 = phi i32 [ %len.0.lcssa, %if.end.loopexit ], [ %len.1.lcssa, %if.end.loopexit1 ], !dbg !1250
  call void @llvm.dbg.value(metadata i32 %len.2, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.2, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.2, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %k.2, metadata !1165, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.2, metadata !1166, metadata !DIExpression()), !dbg !1170
  %conv131 = add i32 %c.2, %conv, !dbg !1245
  call void @llvm.dbg.value(metadata i32 %conv131, metadata !1168, metadata !DIExpression()), !dbg !1170
  switch i32 %len.2, label %sw.epilog [
    i32 11, label %sw.bb
    i32 10, label %sw.bb136
    i32 9, label %sw.bb141
    i32 8, label %sw.bb146
    i32 7, label %sw.bb151
    i32 6, label %sw.bb156
    i32 5, label %sw.bb161
    i32 4, label %sw.bb165
    i32 3, label %sw.bb170
    i32 2, label %sw.bb175
    i32 1, label %sw.bb180
  ], !dbg !1251

sw.bb:                                            ; preds = %if.end
  %arrayidx132 = getelementptr inbounds i8, i8* %k.2, i64 10, !dbg !1252
  %19 = load i8, i8* %arrayidx132, align 1, !dbg !1252
  %conv133 = zext i8 %19 to i32, !dbg !1254
  %shl134 = shl nuw i32 %conv133, 24, !dbg !1255
  %add135 = add i32 %conv131, %shl134, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %add135, metadata !1168, metadata !DIExpression()), !dbg !1170
  br label %sw.bb136, !dbg !1257

sw.bb136:                                         ; preds = %if.end, %sw.bb
  %c.3 = phi i32 [ %conv131, %if.end ], [ %add135, %sw.bb ], !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.3, metadata !1168, metadata !DIExpression()), !dbg !1170
  %arrayidx137 = getelementptr inbounds i8, i8* %k.2, i64 9, !dbg !1258
  %20 = load i8, i8* %arrayidx137, align 1, !dbg !1258
  %conv138 = zext i8 %20 to i32, !dbg !1259
  %shl139 = shl nuw nsw i32 %conv138, 16, !dbg !1260
  %add140 = add i32 %c.3, %shl139, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %add140, metadata !1168, metadata !DIExpression()), !dbg !1170
  br label %sw.bb141, !dbg !1262

sw.bb141:                                         ; preds = %if.end, %sw.bb136
  %c.4 = phi i32 [ %conv131, %if.end ], [ %add140, %sw.bb136 ], !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.4, metadata !1168, metadata !DIExpression()), !dbg !1170
  %arrayidx142 = getelementptr inbounds i8, i8* %k.2, i64 8, !dbg !1263
  %21 = load i8, i8* %arrayidx142, align 1, !dbg !1263
  %conv143 = zext i8 %21 to i32, !dbg !1264
  %shl144 = shl nuw nsw i32 %conv143, 8, !dbg !1265
  %add145 = add i32 %c.4, %shl144, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %add145, metadata !1168, metadata !DIExpression()), !dbg !1170
  br label %sw.bb146, !dbg !1267

sw.bb146:                                         ; preds = %if.end, %sw.bb141
  %c.5 = phi i32 [ %conv131, %if.end ], [ %add145, %sw.bb141 ], !dbg !1170
  call void @llvm.dbg.value(metadata i32 %c.5, metadata !1168, metadata !DIExpression()), !dbg !1170
  %arrayidx147 = getelementptr inbounds i8, i8* %k.2, i64 7, !dbg !1268
  %22 = load i8, i8* %arrayidx147, align 1, !dbg !1268
  %conv148 = zext i8 %22 to i32, !dbg !1269
  %shl149 = shl nuw i32 %conv148, 24, !dbg !1270
  %add150 = add i32 %b.2, %shl149, !dbg !1271
  call void @llvm.dbg.value(metadata i32 %add150, metadata !1167, metadata !DIExpression()), !dbg !1170
  br label %sw.bb151, !dbg !1272

sw.bb151:                                         ; preds = %if.end, %sw.bb146
  %b.3 = phi i32 [ %b.2, %if.end ], [ %add150, %sw.bb146 ], !dbg !1170
  %c.6 = phi i32 [ %conv131, %if.end ], [ %c.5, %sw.bb146 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %c.6, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.3, metadata !1167, metadata !DIExpression()), !dbg !1170
  %arrayidx152 = getelementptr inbounds i8, i8* %k.2, i64 6, !dbg !1273
  %23 = load i8, i8* %arrayidx152, align 1, !dbg !1273
  %conv153 = zext i8 %23 to i32, !dbg !1274
  %shl154 = shl nuw nsw i32 %conv153, 16, !dbg !1275
  %add155 = add i32 %b.3, %shl154, !dbg !1276
  call void @llvm.dbg.value(metadata i32 %add155, metadata !1167, metadata !DIExpression()), !dbg !1170
  br label %sw.bb156, !dbg !1277

sw.bb156:                                         ; preds = %if.end, %sw.bb151
  %b.4 = phi i32 [ %b.2, %if.end ], [ %add155, %sw.bb151 ], !dbg !1170
  %c.7 = phi i32 [ %conv131, %if.end ], [ %c.6, %sw.bb151 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %c.7, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.4, metadata !1167, metadata !DIExpression()), !dbg !1170
  %arrayidx157 = getelementptr inbounds i8, i8* %k.2, i64 5, !dbg !1278
  %24 = load i8, i8* %arrayidx157, align 1, !dbg !1278
  %conv158 = zext i8 %24 to i32, !dbg !1279
  %shl159 = shl nuw nsw i32 %conv158, 8, !dbg !1280
  %add160 = add i32 %b.4, %shl159, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %add160, metadata !1167, metadata !DIExpression()), !dbg !1170
  br label %sw.bb161, !dbg !1282

sw.bb161:                                         ; preds = %if.end, %sw.bb156
  %b.5 = phi i32 [ %b.2, %if.end ], [ %add160, %sw.bb156 ], !dbg !1170
  %c.8 = phi i32 [ %conv131, %if.end ], [ %c.7, %sw.bb156 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %c.8, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.5, metadata !1167, metadata !DIExpression()), !dbg !1170
  %arrayidx162 = getelementptr inbounds i8, i8* %k.2, i64 4, !dbg !1283
  %25 = load i8, i8* %arrayidx162, align 1, !dbg !1283
  %conv163 = zext i8 %25 to i32, !dbg !1283
  %add164 = add i32 %b.5, %conv163, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %add164, metadata !1167, metadata !DIExpression()), !dbg !1170
  br label %sw.bb165, !dbg !1285

sw.bb165:                                         ; preds = %if.end, %sw.bb161
  %b.6 = phi i32 [ %b.2, %if.end ], [ %add164, %sw.bb161 ], !dbg !1170
  %c.9 = phi i32 [ %conv131, %if.end ], [ %c.8, %sw.bb161 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %c.9, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.6, metadata !1167, metadata !DIExpression()), !dbg !1170
  %arrayidx166 = getelementptr inbounds i8, i8* %k.2, i64 3, !dbg !1286
  %26 = load i8, i8* %arrayidx166, align 1, !dbg !1286
  %conv167 = zext i8 %26 to i32, !dbg !1287
  %shl168 = shl nuw i32 %conv167, 24, !dbg !1288
  %add169 = add i32 %a.2, %shl168, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %add169, metadata !1166, metadata !DIExpression()), !dbg !1170
  br label %sw.bb170, !dbg !1290

sw.bb170:                                         ; preds = %if.end, %sw.bb165
  %a.3 = phi i32 [ %a.2, %if.end ], [ %add169, %sw.bb165 ], !dbg !1170
  %b.7 = phi i32 [ %b.2, %if.end ], [ %b.6, %sw.bb165 ], !dbg !1248
  %c.10 = phi i32 [ %conv131, %if.end ], [ %c.9, %sw.bb165 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %c.10, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.7, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.3, metadata !1166, metadata !DIExpression()), !dbg !1170
  %arrayidx171 = getelementptr inbounds i8, i8* %k.2, i64 2, !dbg !1291
  %27 = load i8, i8* %arrayidx171, align 1, !dbg !1291
  %conv172 = zext i8 %27 to i32, !dbg !1292
  %shl173 = shl nuw nsw i32 %conv172, 16, !dbg !1293
  %add174 = add i32 %a.3, %shl173, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %add174, metadata !1166, metadata !DIExpression()), !dbg !1170
  br label %sw.bb175, !dbg !1295

sw.bb175:                                         ; preds = %if.end, %sw.bb170
  %a.4 = phi i32 [ %a.2, %if.end ], [ %add174, %sw.bb170 ], !dbg !1170
  %b.8 = phi i32 [ %b.2, %if.end ], [ %b.7, %sw.bb170 ], !dbg !1248
  %c.11 = phi i32 [ %conv131, %if.end ], [ %c.10, %sw.bb170 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %c.11, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.8, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.4, metadata !1166, metadata !DIExpression()), !dbg !1170
  %arrayidx176 = getelementptr inbounds i8, i8* %k.2, i64 1, !dbg !1296
  %28 = load i8, i8* %arrayidx176, align 1, !dbg !1296
  %conv177 = zext i8 %28 to i32, !dbg !1297
  %shl178 = shl nuw nsw i32 %conv177, 8, !dbg !1298
  %add179 = add i32 %a.4, %shl178, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %add179, metadata !1166, metadata !DIExpression()), !dbg !1170
  br label %sw.bb180, !dbg !1300

sw.bb180:                                         ; preds = %if.end, %sw.bb175
  %a.5 = phi i32 [ %a.2, %if.end ], [ %add179, %sw.bb175 ], !dbg !1170
  %b.9 = phi i32 [ %b.2, %if.end ], [ %b.8, %sw.bb175 ], !dbg !1248
  %c.12 = phi i32 [ %conv131, %if.end ], [ %c.11, %sw.bb175 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %c.12, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.9, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.5, metadata !1166, metadata !DIExpression()), !dbg !1170
  %29 = load i8, i8* %k.2, align 1, !dbg !1301
  %conv182 = zext i8 %29 to i32, !dbg !1301
  %add183 = add i32 %a.5, %conv182, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %add183, metadata !1166, metadata !DIExpression()), !dbg !1170
  br label %sw.epilog, !dbg !1303

sw.epilog:                                        ; preds = %sw.bb180, %if.end
  %a.6 = phi i32 [ %a.2, %if.end ], [ %add183, %sw.bb180 ], !dbg !1170
  %b.10 = phi i32 [ %b.2, %if.end ], [ %b.9, %sw.bb180 ], !dbg !1248
  %c.13 = phi i32 [ %conv131, %if.end ], [ %c.12, %sw.bb180 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %c.13, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %b.10, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %a.6, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub184 = sub i32 %a.6, %b.10, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub184, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub185 = sub i32 %sub184, %c.13, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub185, metadata !1166, metadata !DIExpression()), !dbg !1170
  %shr186 = lshr i32 %c.13, 13, !dbg !1304
  %xor187 = xor i32 %sub185, %shr186, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %xor187, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub188 = sub i32 %b.10, %c.13, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub188, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub189 = sub i32 %sub188, %xor187, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub189, metadata !1167, metadata !DIExpression()), !dbg !1170
  %shl190 = shl i32 %xor187, 8, !dbg !1304
  %xor191 = xor i32 %sub189, %shl190, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %xor191, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub192 = sub i32 %c.13, %xor187, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub192, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub193 = sub i32 %sub192, %xor191, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub193, metadata !1168, metadata !DIExpression()), !dbg !1170
  %shr194 = lshr i32 %xor191, 13, !dbg !1304
  %xor195 = xor i32 %sub193, %shr194, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %xor195, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub196 = sub i32 %xor187, %xor191, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub196, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub197 = sub i32 %sub196, %xor195, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub197, metadata !1166, metadata !DIExpression()), !dbg !1170
  %shr198 = lshr i32 %xor195, 12, !dbg !1304
  %xor199 = xor i32 %sub197, %shr198, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %xor199, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub200 = sub i32 %xor191, %xor195, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub200, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub201 = sub i32 %sub200, %xor199, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub201, metadata !1167, metadata !DIExpression()), !dbg !1170
  %shl202 = shl i32 %xor199, 16, !dbg !1304
  %xor203 = xor i32 %sub201, %shl202, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %xor203, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub204 = sub i32 %xor195, %xor199, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub204, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub205 = sub i32 %sub204, %xor203, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub205, metadata !1168, metadata !DIExpression()), !dbg !1170
  %shr206 = lshr i32 %xor203, 5, !dbg !1304
  %xor207 = xor i32 %sub205, %shr206, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %xor207, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub208 = sub i32 %xor199, %xor203, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub208, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub209 = sub i32 %sub208, %xor207, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub209, metadata !1166, metadata !DIExpression()), !dbg !1170
  %shr210 = lshr i32 %xor207, 3, !dbg !1304
  %xor211 = xor i32 %sub209, %shr210, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %xor211, metadata !1166, metadata !DIExpression()), !dbg !1170
  %sub212 = sub i32 %xor203, %xor207, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub212, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub213 = sub i32 %sub212, %xor211, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub213, metadata !1167, metadata !DIExpression()), !dbg !1170
  %shl214 = shl i32 %xor211, 10, !dbg !1304
  %xor215 = xor i32 %sub213, %shl214, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %xor215, metadata !1167, metadata !DIExpression()), !dbg !1170
  %sub216 = sub i32 %xor207, %xor211, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub216, metadata !1168, metadata !DIExpression()), !dbg !1170
  %sub217 = sub i32 %sub216, %xor215, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %sub217, metadata !1168, metadata !DIExpression()), !dbg !1170
  %shr218 = lshr i32 %xor215, 15, !dbg !1304
  %xor219 = xor i32 %sub217, %shr218, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %xor219, metadata !1168, metadata !DIExpression()), !dbg !1170
  ret i32 %xor219, !dbg !1306
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @htab_mod_1(i32 %x, i32 %y, i32 %inv, i32 %shift) unnamed_addr #0 !dbg !1307 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !1311, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32 %y, metadata !1312, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32 %inv, metadata !1313, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32 %shift, metadata !1314, metadata !DIExpression()), !dbg !1315
  %rem = urem i32 %x, %y, !dbg !1316
  ret i32 %rem, !dbg !1317
}

; Function Attrs: nounwind uwtable
define internal fastcc i8** @find_empty_slot_for_expand(%struct.htab* %htab, i32 %hash) unnamed_addr #3 !dbg !1318 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab* %htab, metadata !1322, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %hash, metadata !1323, metadata !DIExpression()), !dbg !1328
  %call = tail call fastcc i32 @htab_mod(i32 %hash, %struct.htab* %htab) #6, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %call, metadata !1324, metadata !DIExpression()), !dbg !1328
  %size1 = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 4, !dbg !1330
  %0 = load i64, i64* %size1, align 8, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %0, metadata !1325, metadata !DIExpression()), !dbg !1328
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %htab, i64 0, i32 3, !dbg !1331
  %1 = load i8**, i8*** %entries, align 8, !dbg !1331
  %idx.ext = zext i32 %call to i64, !dbg !1332
  %add.ptr = getelementptr inbounds i8*, i8** %1, i64 %idx.ext, !dbg !1332
  call void @llvm.dbg.value(metadata i8** %add.ptr, metadata !1326, metadata !DIExpression()), !dbg !1328
  %2 = load i8*, i8** %add.ptr, align 8, !dbg !1333
  %cmp = icmp eq i8* %2, null, !dbg !1335
  br i1 %cmp, label %cleanup, label %if.else, !dbg !1336

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i8* %2, inttoptr (i64 1 to i8*), !dbg !1337
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1339

if.then3:                                         ; preds = %if.else
  tail call void @abort() #5, !dbg !1340
  br label %if.end4, !dbg !1340

if.end4:                                          ; preds = %if.else, %if.then3
  %call5 = tail call fastcc i32 @htab_mod_m2(i32 %hash, %struct.htab* %htab) #6, !dbg !1341
  call void @llvm.dbg.value(metadata i32 %call5, metadata !1327, metadata !DIExpression()), !dbg !1328
  %3 = trunc i64 %0 to i32, !dbg !1342
  br label %for.cond, !dbg !1346

for.cond:                                         ; preds = %if.end23, %if.end4
  %index.0 = phi i32 [ %call, %if.end4 ], [ %index.1, %if.end23 ], !dbg !1328
  call void @llvm.dbg.value(metadata i32 %index.0, metadata !1324, metadata !DIExpression()), !dbg !1328
  %add = add i32 %index.0, %call5, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %add, metadata !1324, metadata !DIExpression()), !dbg !1328
  %conv = zext i32 %add to i64, !dbg !1348
  %cmp6 = icmp ugt i64 %0, %conv, !dbg !1350
  %conv10 = select i1 %cmp6, i32 0, i32 %3, !dbg !1351
  %index.1 = sub i32 %add, %conv10, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %index.1, metadata !1324, metadata !DIExpression()), !dbg !1328
  %4 = load i8**, i8*** %entries, align 8, !dbg !1352
  %idx.ext13 = zext i32 %index.1 to i64, !dbg !1353
  %add.ptr14 = getelementptr inbounds i8*, i8** %4, i64 %idx.ext13, !dbg !1353
  call void @llvm.dbg.value(metadata i8** %add.ptr14, metadata !1326, metadata !DIExpression()), !dbg !1328
  %5 = load i8*, i8** %add.ptr14, align 8, !dbg !1354
  %cmp15 = icmp eq i8* %5, null, !dbg !1356
  br i1 %cmp15, label %cleanup.loopexit, label %if.else18, !dbg !1357

if.else18:                                        ; preds = %for.cond
  %cmp19 = icmp eq i8* %5, inttoptr (i64 1 to i8*), !dbg !1358
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !1360

if.then21:                                        ; preds = %if.else18
  tail call void @abort() #5, !dbg !1361
  br label %if.end23, !dbg !1361

if.end23:                                         ; preds = %if.else18, %if.then21
  br label %for.cond, !dbg !1362, !llvm.loop !1363

cleanup.loopexit:                                 ; preds = %for.cond
  %add.ptr14.lcssa = phi i8** [ %add.ptr14, %for.cond ], !dbg !1353
  br label %cleanup, !dbg !1366

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8** [ %add.ptr, %entry ], [ %add.ptr14.lcssa, %cleanup.loopexit ], !dbg !1328
  ret i8** %retval.0, !dbg !1366
}

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
!llvm.module.flags = !{!94, !95, !96}
!llvm.ident = !{!97}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "htab_hash_pointer", scope: !2, file: !3, line: 86, type: !26, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !79, nameTableKind: None)
!3 = !DIFile(filename: "hashtab.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insert_option", file: !6, line: 147, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "NO_INSERT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "INSERT", value: 1, isUnsigned: true)
!11 = !{!12, !13, !16, !17, !19, !20, !21, !44, !72, !73, !46, !75, !30, !76}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !6, line: 144, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !6, line: 100, size: 896, elements: !24)
!24 = !{!25, !33, !38, !43, !45, !49, !50, !51, !52, !53, !58, !60, !61, !66, !71}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !23, file: !6, line: 102, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !6, line: 52, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !6, line: 47, baseType: !7)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !23, file: !6, line: 105, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !6, line: 59, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!12, !31, !31}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !23, file: !6, line: 108, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !6, line: 63, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !16}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !23, file: !6, line: 111, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !23, file: !6, line: 114, baseType: !46, size: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !23, file: !6, line: 117, baseType: !46, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !23, file: !6, line: 120, baseType: !46, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !23, file: !6, line: 124, baseType: !7, size: 32, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !23, file: !6, line: 128, baseType: !7, size: 32, offset: 480)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !23, file: !6, line: 131, baseType: !54, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !6, line: 75, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!16, !46, !46}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !23, file: !6, line: 132, baseType: !59, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !6, line: 78, baseType: !40)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !23, file: !6, line: 135, baseType: !16, size: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !23, file: !6, line: 136, baseType: !62, size: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !6, line: 82, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!16, !16, !46, !46}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !23, file: !6, line: 137, baseType: !67, size: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !6, line: 83, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !16, !16}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !23, file: !6, line: 141, baseType: !7, size: 32, offset: 832)
!72 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !77, line: 87, baseType: !78)
!77 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!78 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!79 = !{!0, !80, !82}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "htab_eq_pointer", scope: !2, file: !3, line: 87, type: !34, isLocal: false, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "prime_tab", scope: !2, file: !3, line: 139, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 3840, elements: !92)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prime_ent", file: !3, line: 131, size: 128, elements: !87)
!87 = !{!88, !89, !90, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !86, file: !3, line: 133, baseType: !30, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "inv", scope: !86, file: !3, line: 134, baseType: !30, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "inv_m2", scope: !86, file: !3, line: 135, baseType: !30, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !86, file: !3, line: 136, baseType: !30, size: 32, offset: 96)
!92 = !{!93}
!93 = !DISubrange(count: 30)
!94 = !{i32 2, !"Dwarf Version", i32 4}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 4}
!97 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!98 = distinct !DISubprogram(name: "atoi", scope: !99, file: !99, line: 361, type: !100, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!99 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!100 = !DISubroutineType(types: !101)
!101 = !{!12, !17}
!102 = !{!103}
!103 = !DILocalVariable(name: "__nptr", arg: 1, scope: !98, file: !99, line: 361, type: !17)
!104 = !DILocation(line: 0, scope: !98)
!105 = !DILocation(line: 363, column: 16, scope: !98)
!106 = !DILocation(line: 363, column: 10, scope: !98)
!107 = !DILocation(line: 363, column: 3, scope: !98)
!108 = distinct !DISubprogram(name: "atol", scope: !99, file: !99, line: 366, type: !109, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{!78, !17}
!111 = !{!112}
!112 = !DILocalVariable(name: "__nptr", arg: 1, scope: !108, file: !99, line: 366, type: !17)
!113 = !DILocation(line: 0, scope: !108)
!114 = !DILocation(line: 368, column: 10, scope: !108)
!115 = !DILocation(line: 368, column: 3, scope: !108)
!116 = distinct !DISubprogram(name: "atoll", scope: !99, file: !99, line: 373, type: !117, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !17}
!119 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!120 = !{!121}
!121 = !DILocalVariable(name: "__nptr", arg: 1, scope: !116, file: !99, line: 373, type: !17)
!122 = !DILocation(line: 0, scope: !116)
!123 = !DILocation(line: 375, column: 10, scope: !116)
!124 = !DILocation(line: 375, column: 3, scope: !116)
!125 = distinct !DISubprogram(name: "bsearch", scope: !126, file: !126, line: 20, type: !127, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!127 = !DISubroutineType(types: !128)
!128 = !{!16, !31, !31, !46, !46, !129}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !99, line: 808, baseType: !35)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!131 = !DILocalVariable(name: "__key", arg: 1, scope: !125, file: !126, line: 20, type: !31)
!132 = !DILocalVariable(name: "__base", arg: 2, scope: !125, file: !126, line: 20, type: !31)
!133 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !125, file: !126, line: 20, type: !46)
!134 = !DILocalVariable(name: "__size", arg: 4, scope: !125, file: !126, line: 20, type: !46)
!135 = !DILocalVariable(name: "__compar", arg: 5, scope: !125, file: !126, line: 21, type: !129)
!136 = !DILocalVariable(name: "__l", scope: !125, file: !126, line: 23, type: !46)
!137 = !DILocalVariable(name: "__u", scope: !125, file: !126, line: 23, type: !46)
!138 = !DILocalVariable(name: "__idx", scope: !125, file: !126, line: 23, type: !46)
!139 = !DILocalVariable(name: "__p", scope: !125, file: !126, line: 24, type: !31)
!140 = !DILocalVariable(name: "__comparison", scope: !125, file: !126, line: 25, type: !12)
!141 = !DILocation(line: 0, scope: !125)
!142 = !DILocation(line: 29, column: 3, scope: !125)
!143 = !DILocation(line: 27, column: 7, scope: !125)
!144 = !DILocation(line: 29, column: 14, scope: !125)
!145 = !DILocation(line: 31, column: 20, scope: !146)
!146 = distinct !DILexicalBlock(scope: !125, file: !126, line: 30, column: 5)
!147 = !DILocation(line: 31, column: 27, scope: !146)
!148 = !DILocation(line: 32, column: 56, scope: !146)
!149 = !DILocation(line: 32, column: 47, scope: !146)
!150 = !DILocation(line: 33, column: 22, scope: !146)
!151 = !DILocation(line: 34, column: 24, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !126, line: 34, column: 11)
!153 = !DILocation(line: 34, column: 11, scope: !146)
!154 = !DILocation(line: 36, column: 29, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !126, line: 36, column: 16)
!156 = !DILocation(line: 36, column: 16, scope: !152)
!157 = !DILocation(line: 37, column: 14, scope: !155)
!158 = distinct !{!158, !142, !159}
!159 = !DILocation(line: 40, column: 5, scope: !125)
!160 = !DILocation(line: 43, column: 1, scope: !125)
!161 = distinct !DISubprogram(name: "atof", scope: !162, file: !162, line: 25, type: !163, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !165)
!162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!163 = !DISubroutineType(types: !164)
!164 = !{!72, !17}
!165 = !{!166}
!166 = !DILocalVariable(name: "__nptr", arg: 1, scope: !161, file: !162, line: 25, type: !17)
!167 = !DILocation(line: 0, scope: !161)
!168 = !DILocation(line: 27, column: 10, scope: !161)
!169 = !DILocation(line: 27, column: 3, scope: !161)
!170 = distinct !DISubprogram(name: "vprintf", scope: !171, file: !171, line: 39, type: !172, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !182)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!172 = !DISubroutineType(types: !173)
!173 = !{!12, !174, !175}
!174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 28, size: 192, elements: !177)
!177 = !{!178, !179, !180, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !176, file: !3, line: 28, baseType: !7, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !176, file: !3, line: 28, baseType: !7, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !176, file: !3, line: 28, baseType: !16, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !176, file: !3, line: 28, baseType: !16, size: 64, offset: 128)
!182 = !{!183, !184}
!183 = !DILocalVariable(name: "__fmt", arg: 1, scope: !170, file: !171, line: 39, type: !174)
!184 = !DILocalVariable(name: "__arg", arg: 2, scope: !170, file: !171, line: 39, type: !175)
!185 = !DILocation(line: 0, scope: !170)
!186 = !DILocation(line: 41, column: 20, scope: !170)
!187 = !DILocation(line: 41, column: 10, scope: !170)
!188 = !DILocation(line: 41, column: 3, scope: !170)
!189 = distinct !DISubprogram(name: "getchar", scope: !171, file: !171, line: 47, type: !190, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!12}
!192 = !{}
!193 = !DILocation(line: 49, column: 16, scope: !189)
!194 = !DILocation(line: 49, column: 10, scope: !189)
!195 = !DILocation(line: 49, column: 3, scope: !189)
!196 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !171, file: !171, line: 56, type: !197, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!197 = !DISubroutineType(types: !198)
!198 = !{!12, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !201, line: 7, baseType: !202)
!201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !203, line: 49, size: 1728, elements: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !220, !222, !223, !224, !227, !229, !231, !235, !238, !240, !243, !246, !247, !248, !249, !250}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !202, file: !203, line: 51, baseType: !12, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !202, file: !203, line: 54, baseType: !14, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !202, file: !203, line: 55, baseType: !14, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !202, file: !203, line: 56, baseType: !14, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !202, file: !203, line: 57, baseType: !14, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !202, file: !203, line: 58, baseType: !14, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !202, file: !203, line: 59, baseType: !14, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !202, file: !203, line: 60, baseType: !14, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !202, file: !203, line: 61, baseType: !14, size: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !202, file: !203, line: 64, baseType: !14, size: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !202, file: !203, line: 65, baseType: !14, size: 64, offset: 640)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !202, file: !203, line: 66, baseType: !14, size: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !202, file: !203, line: 68, baseType: !218, size: 64, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !203, line: 36, flags: DIFlagFwdDecl)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !202, file: !203, line: 70, baseType: !221, size: 64, offset: 832)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !202, file: !203, line: 72, baseType: !12, size: 32, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !202, file: !203, line: 73, baseType: !12, size: 32, offset: 928)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !202, file: !203, line: 74, baseType: !225, size: 64, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !226, line: 152, baseType: !78)
!226 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !202, file: !203, line: 77, baseType: !228, size: 16, offset: 1024)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !202, file: !203, line: 78, baseType: !230, size: 8, offset: 1040)
!230 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !202, file: !203, line: 79, baseType: !232, size: 8, offset: 1048)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 1)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !202, file: !203, line: 81, baseType: !236, size: 64, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !203, line: 43, baseType: null)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !202, file: !203, line: 89, baseType: !239, size: 64, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !226, line: 153, baseType: !78)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !202, file: !203, line: 91, baseType: !241, size: 64, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !203, line: 37, flags: DIFlagFwdDecl)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !202, file: !203, line: 92, baseType: !244, size: 64, offset: 1280)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !203, line: 38, flags: DIFlagFwdDecl)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !202, file: !203, line: 93, baseType: !221, size: 64, offset: 1344)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !202, file: !203, line: 94, baseType: !16, size: 64, offset: 1408)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !202, file: !203, line: 95, baseType: !46, size: 64, offset: 1472)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !202, file: !203, line: 96, baseType: !12, size: 32, offset: 1536)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !202, file: !203, line: 98, baseType: !251, size: 160, offset: 1568)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 20)
!254 = !{!255}
!255 = !DILocalVariable(name: "__fp", arg: 1, scope: !196, file: !171, line: 56, type: !199)
!256 = !DILocation(line: 0, scope: !196)
!257 = !DILocation(line: 58, column: 10, scope: !196)
!258 = !DILocation(line: 58, column: 3, scope: !196)
!259 = distinct !DISubprogram(name: "getc_unlocked", scope: !171, file: !171, line: 66, type: !197, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!260 = !{!261}
!261 = !DILocalVariable(name: "__fp", arg: 1, scope: !259, file: !171, line: 66, type: !199)
!262 = !DILocation(line: 0, scope: !259)
!263 = !DILocation(line: 68, column: 10, scope: !259)
!264 = !DILocation(line: 68, column: 3, scope: !259)
!265 = distinct !DISubprogram(name: "getchar_unlocked", scope: !171, file: !171, line: 73, type: !190, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!266 = !DILocation(line: 75, column: 10, scope: !265)
!267 = !DILocation(line: 75, column: 3, scope: !265)
!268 = distinct !DISubprogram(name: "putchar", scope: !171, file: !171, line: 82, type: !269, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !271)
!269 = !DISubroutineType(types: !270)
!270 = !{!12, !12}
!271 = !{!272}
!272 = !DILocalVariable(name: "__c", arg: 1, scope: !268, file: !171, line: 82, type: !12)
!273 = !DILocation(line: 0, scope: !268)
!274 = !DILocation(line: 84, column: 21, scope: !268)
!275 = !DILocation(line: 84, column: 10, scope: !268)
!276 = !DILocation(line: 84, column: 3, scope: !268)
!277 = distinct !DISubprogram(name: "fputc_unlocked", scope: !171, file: !171, line: 91, type: !278, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !280)
!278 = !DISubroutineType(types: !279)
!279 = !{!12, !12, !199}
!280 = !{!281, !282}
!281 = !DILocalVariable(name: "__c", arg: 1, scope: !277, file: !171, line: 91, type: !12)
!282 = !DILocalVariable(name: "__stream", arg: 2, scope: !277, file: !171, line: 91, type: !199)
!283 = !DILocation(line: 0, scope: !277)
!284 = !DILocation(line: 93, column: 10, scope: !277)
!285 = !DILocation(line: 93, column: 3, scope: !277)
!286 = distinct !DISubprogram(name: "putc_unlocked", scope: !171, file: !171, line: 101, type: !278, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!287 = !{!288, !289}
!288 = !DILocalVariable(name: "__c", arg: 1, scope: !286, file: !171, line: 101, type: !12)
!289 = !DILocalVariable(name: "__stream", arg: 2, scope: !286, file: !171, line: 101, type: !199)
!290 = !DILocation(line: 0, scope: !286)
!291 = !DILocation(line: 103, column: 10, scope: !286)
!292 = !DILocation(line: 103, column: 3, scope: !286)
!293 = distinct !DISubprogram(name: "putchar_unlocked", scope: !171, file: !171, line: 108, type: !269, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!294 = !{!295}
!295 = !DILocalVariable(name: "__c", arg: 1, scope: !293, file: !171, line: 108, type: !12)
!296 = !DILocation(line: 0, scope: !293)
!297 = !DILocation(line: 110, column: 10, scope: !293)
!298 = !DILocation(line: 110, column: 3, scope: !293)
!299 = distinct !DISubprogram(name: "getline", scope: !171, file: !171, line: 118, type: !300, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !13, !303, !199}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !226, line: 193, baseType: !78)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!304 = !{!305, !306, !307}
!305 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !299, file: !171, line: 118, type: !13)
!306 = !DILocalVariable(name: "__n", arg: 2, scope: !299, file: !171, line: 118, type: !303)
!307 = !DILocalVariable(name: "__stream", arg: 3, scope: !299, file: !171, line: 118, type: !199)
!308 = !DILocation(line: 0, scope: !299)
!309 = !DILocation(line: 120, column: 10, scope: !299)
!310 = !DILocation(line: 120, column: 3, scope: !299)
!311 = distinct !DISubprogram(name: "feof_unlocked", scope: !171, file: !171, line: 128, type: !197, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313}
!313 = !DILocalVariable(name: "__stream", arg: 1, scope: !311, file: !171, line: 128, type: !199)
!314 = !DILocation(line: 0, scope: !311)
!315 = !DILocation(line: 130, column: 10, scope: !311)
!316 = !DILocation(line: 130, column: 3, scope: !311)
!317 = distinct !DISubprogram(name: "ferror_unlocked", scope: !171, file: !171, line: 135, type: !197, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!318 = !{!319}
!319 = !DILocalVariable(name: "__stream", arg: 1, scope: !317, file: !171, line: 135, type: !199)
!320 = !DILocation(line: 0, scope: !317)
!321 = !DILocation(line: 137, column: 10, scope: !317)
!322 = !DILocation(line: 137, column: 3, scope: !317)
!323 = distinct !DISubprogram(name: "strtoimax", scope: !324, file: !324, line: 324, type: !325, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !330)
!324 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !174, !329, !12}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !77, line: 101, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !226, line: 72, baseType: !78)
!329 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!330 = !{!331, !332, !333}
!331 = !DILocalVariable(name: "nptr", arg: 1, scope: !323, file: !324, line: 324, type: !174)
!332 = !DILocalVariable(name: "endptr", arg: 2, scope: !323, file: !324, line: 324, type: !329)
!333 = !DILocalVariable(name: "base", arg: 3, scope: !323, file: !324, line: 324, type: !12)
!334 = !DILocation(line: 0, scope: !323)
!335 = !DILocation(line: 327, column: 10, scope: !323)
!336 = !DILocation(line: 327, column: 3, scope: !323)
!337 = distinct !DISubprogram(name: "strtoumax", scope: !324, file: !324, line: 336, type: !338, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!338 = !DISubroutineType(types: !339)
!339 = !{!340, !174, !329, !12}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !77, line: 102, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !226, line: 73, baseType: !48)
!342 = !{!343, !344, !345}
!343 = !DILocalVariable(name: "nptr", arg: 1, scope: !337, file: !324, line: 336, type: !174)
!344 = !DILocalVariable(name: "endptr", arg: 2, scope: !337, file: !324, line: 336, type: !329)
!345 = !DILocalVariable(name: "base", arg: 3, scope: !337, file: !324, line: 336, type: !12)
!346 = !DILocation(line: 0, scope: !337)
!347 = !DILocation(line: 339, column: 10, scope: !337)
!348 = !DILocation(line: 339, column: 3, scope: !337)
!349 = distinct !DISubprogram(name: "wcstoimax", scope: !324, file: !324, line: 348, type: !350, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!350 = !DISubroutineType(types: !351)
!351 = !{!327, !352, !356, !12}
!352 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !324, line: 34, baseType: !12)
!356 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!359 = !{!360, !361, !362}
!360 = !DILocalVariable(name: "nptr", arg: 1, scope: !349, file: !324, line: 348, type: !352)
!361 = !DILocalVariable(name: "endptr", arg: 2, scope: !349, file: !324, line: 348, type: !356)
!362 = !DILocalVariable(name: "base", arg: 3, scope: !349, file: !324, line: 348, type: !12)
!363 = !DILocation(line: 0, scope: !349)
!364 = !DILocation(line: 351, column: 10, scope: !349)
!365 = !DILocation(line: 351, column: 3, scope: !349)
!366 = distinct !DISubprogram(name: "wcstoumax", scope: !324, file: !324, line: 362, type: !367, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !369)
!367 = !DISubroutineType(types: !368)
!368 = !{!340, !352, !356, !12}
!369 = !{!370, !371, !372}
!370 = !DILocalVariable(name: "nptr", arg: 1, scope: !366, file: !324, line: 362, type: !352)
!371 = !DILocalVariable(name: "endptr", arg: 2, scope: !366, file: !324, line: 362, type: !356)
!372 = !DILocalVariable(name: "base", arg: 3, scope: !366, file: !324, line: 362, type: !12)
!373 = !DILocation(line: 0, scope: !366)
!374 = !DILocation(line: 365, column: 10, scope: !366)
!375 = !DILocation(line: 365, column: 3, scope: !366)
!376 = distinct !DISubprogram(name: "hash_pointer", scope: !3, file: !3, line: 204, type: !28, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !377)
!377 = !{!378}
!378 = !DILocalVariable(name: "p", arg: 1, scope: !376, file: !3, line: 204, type: !31)
!379 = !DILocation(line: 0, scope: !376)
!380 = !DILocation(line: 206, column: 23, scope: !376)
!381 = !DILocation(line: 206, column: 35, scope: !376)
!382 = !DILocation(line: 206, column: 10, scope: !376)
!383 = !DILocation(line: 206, column: 3, scope: !376)
!384 = distinct !DISubprogram(name: "eq_pointer", scope: !3, file: !3, line: 212, type: !36, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "p1", arg: 1, scope: !384, file: !3, line: 212, type: !31)
!387 = !DILocalVariable(name: "p2", arg: 2, scope: !384, file: !3, line: 212, type: !31)
!388 = !DILocation(line: 0, scope: !384)
!389 = !DILocation(line: 214, column: 13, scope: !384)
!390 = !DILocation(line: 214, column: 3, scope: !384)
!391 = distinct !DISubprogram(name: "htab_size", scope: !3, file: !3, line: 228, type: !392, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!46, !21}
!394 = !{!395}
!395 = !DILocalVariable(name: "htab", arg: 1, scope: !391, file: !3, line: 228, type: !21)
!396 = !DILocation(line: 0, scope: !391)
!397 = !DILocation(line: 230, column: 10, scope: !391)
!398 = !DILocation(line: 230, column: 3, scope: !391)
!399 = distinct !DISubprogram(name: "htab_elements", scope: !3, file: !3, line: 238, type: !392, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !400)
!400 = !{!401}
!401 = !DILocalVariable(name: "htab", arg: 1, scope: !399, file: !3, line: 238, type: !21)
!402 = !DILocation(line: 0, scope: !399)
!403 = !DILocation(line: 240, column: 10, scope: !399)
!404 = !DILocation(line: 240, column: 3, scope: !399)
!405 = distinct !DISubprogram(name: "htab_create_alloc", scope: !3, file: !3, line: 295, type: !406, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!21, !46, !26, !34, !39, !54, !59}
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416}
!409 = !DILocalVariable(name: "size", arg: 1, scope: !405, file: !3, line: 295, type: !46)
!410 = !DILocalVariable(name: "hash_f", arg: 2, scope: !405, file: !3, line: 295, type: !26)
!411 = !DILocalVariable(name: "eq_f", arg: 3, scope: !405, file: !3, line: 295, type: !34)
!412 = !DILocalVariable(name: "del_f", arg: 4, scope: !405, file: !3, line: 296, type: !39)
!413 = !DILocalVariable(name: "alloc_f", arg: 5, scope: !405, file: !3, line: 296, type: !54)
!414 = !DILocalVariable(name: "free_f", arg: 6, scope: !405, file: !3, line: 296, type: !59)
!415 = !DILocalVariable(name: "result", scope: !405, file: !3, line: 298, type: !21)
!416 = !DILocalVariable(name: "size_prime_index", scope: !405, file: !3, line: 299, type: !7)
!417 = !DILocation(line: 0, scope: !405)
!418 = !DILocation(line: 301, column: 22, scope: !405)
!419 = !DILocation(line: 302, column: 10, scope: !405)
!420 = !DILocation(line: 302, column: 38, scope: !405)
!421 = !DILocation(line: 304, column: 21, scope: !405)
!422 = !DILocation(line: 304, column: 12, scope: !405)
!423 = !DILocation(line: 305, column: 14, scope: !424)
!424 = distinct !DILexicalBlock(scope: !405, file: !3, line: 305, column: 7)
!425 = !DILocation(line: 305, column: 7, scope: !405)
!426 = !DILocation(line: 307, column: 29, scope: !405)
!427 = !DILocation(line: 307, column: 11, scope: !405)
!428 = !DILocation(line: 307, column: 19, scope: !405)
!429 = !DILocation(line: 308, column: 23, scope: !430)
!430 = distinct !DILexicalBlock(scope: !405, file: !3, line: 308, column: 7)
!431 = !DILocation(line: 308, column: 7, scope: !405)
!432 = !DILocation(line: 310, column: 18, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !3, line: 310, column: 11)
!434 = distinct !DILexicalBlock(scope: !430, file: !3, line: 309, column: 5)
!435 = !DILocation(line: 310, column: 11, scope: !434)
!436 = !DILocation(line: 311, column: 2, scope: !433)
!437 = !DILocation(line: 314, column: 11, scope: !405)
!438 = !DILocation(line: 314, column: 16, scope: !405)
!439 = !DILocation(line: 315, column: 11, scope: !405)
!440 = !DILocation(line: 315, column: 28, scope: !405)
!441 = !DILocation(line: 316, column: 11, scope: !405)
!442 = !DILocation(line: 316, column: 18, scope: !405)
!443 = !DILocation(line: 317, column: 11, scope: !405)
!444 = !DILocation(line: 317, column: 16, scope: !405)
!445 = !DILocation(line: 318, column: 11, scope: !405)
!446 = !DILocation(line: 318, column: 17, scope: !405)
!447 = !DILocation(line: 319, column: 11, scope: !405)
!448 = !DILocation(line: 319, column: 19, scope: !405)
!449 = !DILocation(line: 320, column: 11, scope: !405)
!450 = !DILocation(line: 320, column: 18, scope: !405)
!451 = !DILocation(line: 321, column: 3, scope: !405)
!452 = !DILocation(line: 322, column: 1, scope: !405)
!453 = distinct !DISubprogram(name: "higher_prime_index", scope: !3, file: !3, line: 177, type: !454, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!7, !48}
!456 = !{!457, !458, !459, !460}
!457 = !DILocalVariable(name: "n", arg: 1, scope: !453, file: !3, line: 177, type: !48)
!458 = !DILocalVariable(name: "low", scope: !453, file: !3, line: 179, type: !7)
!459 = !DILocalVariable(name: "high", scope: !453, file: !3, line: 180, type: !7)
!460 = !DILocalVariable(name: "mid", scope: !461, file: !3, line: 184, type: !7)
!461 = distinct !DILexicalBlock(scope: !453, file: !3, line: 183, column: 5)
!462 = !DILocation(line: 0, scope: !453)
!463 = !DILocation(line: 182, column: 3, scope: !453)
!464 = !DILocation(line: 180, column: 16, scope: !453)
!465 = !DILocation(line: 182, column: 14, scope: !453)
!466 = !DILocation(line: 184, column: 38, scope: !461)
!467 = !DILocation(line: 184, column: 45, scope: !461)
!468 = !DILocation(line: 184, column: 30, scope: !461)
!469 = !DILocation(line: 0, scope: !461)
!470 = !DILocation(line: 185, column: 15, scope: !471)
!471 = distinct !DILexicalBlock(scope: !461, file: !3, line: 185, column: 11)
!472 = !DILocation(line: 185, column: 30, scope: !471)
!473 = !DILocation(line: 185, column: 13, scope: !471)
!474 = !DILocation(line: 185, column: 11, scope: !461)
!475 = distinct !{!475, !463, !476}
!476 = !DILocation(line: 189, column: 5, scope: !453)
!477 = !DILocation(line: 192, column: 11, scope: !478)
!478 = distinct !DILexicalBlock(scope: !453, file: !3, line: 192, column: 7)
!479 = !DILocation(line: 192, column: 26, scope: !478)
!480 = !DILocation(line: 192, column: 9, scope: !478)
!481 = !DILocation(line: 192, column: 7, scope: !453)
!482 = !DILocation(line: 194, column: 16, scope: !483)
!483 = distinct !DILexicalBlock(scope: !478, file: !3, line: 193, column: 5)
!484 = !DILocation(line: 194, column: 7, scope: !483)
!485 = !DILocation(line: 195, column: 7, scope: !483)
!486 = !DILocation(line: 196, column: 5, scope: !483)
!487 = !DILocation(line: 198, column: 3, scope: !453)
!488 = distinct !DISubprogram(name: "htab_create_alloc_ex", scope: !3, file: !3, line: 328, type: !489, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{!21, !46, !26, !34, !39, !16, !62, !67}
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500}
!492 = !DILocalVariable(name: "size", arg: 1, scope: !488, file: !3, line: 328, type: !46)
!493 = !DILocalVariable(name: "hash_f", arg: 2, scope: !488, file: !3, line: 328, type: !26)
!494 = !DILocalVariable(name: "eq_f", arg: 3, scope: !488, file: !3, line: 328, type: !34)
!495 = !DILocalVariable(name: "del_f", arg: 4, scope: !488, file: !3, line: 329, type: !39)
!496 = !DILocalVariable(name: "alloc_arg", arg: 5, scope: !488, file: !3, line: 329, type: !16)
!497 = !DILocalVariable(name: "alloc_f", arg: 6, scope: !488, file: !3, line: 330, type: !62)
!498 = !DILocalVariable(name: "free_f", arg: 7, scope: !488, file: !3, line: 331, type: !67)
!499 = !DILocalVariable(name: "result", scope: !488, file: !3, line: 333, type: !21)
!500 = !DILocalVariable(name: "size_prime_index", scope: !488, file: !3, line: 334, type: !7)
!501 = !DILocation(line: 0, scope: !488)
!502 = !DILocation(line: 336, column: 22, scope: !488)
!503 = !DILocation(line: 337, column: 10, scope: !488)
!504 = !DILocation(line: 337, column: 38, scope: !488)
!505 = !DILocation(line: 339, column: 21, scope: !488)
!506 = !DILocation(line: 339, column: 12, scope: !488)
!507 = !DILocation(line: 340, column: 14, scope: !508)
!508 = distinct !DILexicalBlock(scope: !488, file: !3, line: 340, column: 7)
!509 = !DILocation(line: 340, column: 7, scope: !488)
!510 = !DILocation(line: 342, column: 29, scope: !488)
!511 = !DILocation(line: 342, column: 11, scope: !488)
!512 = !DILocation(line: 342, column: 19, scope: !488)
!513 = !DILocation(line: 343, column: 23, scope: !514)
!514 = distinct !DILexicalBlock(scope: !488, file: !3, line: 343, column: 7)
!515 = !DILocation(line: 343, column: 7, scope: !488)
!516 = !DILocation(line: 345, column: 18, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 345, column: 11)
!518 = distinct !DILexicalBlock(scope: !514, file: !3, line: 344, column: 5)
!519 = !DILocation(line: 345, column: 11, scope: !518)
!520 = !DILocation(line: 346, column: 2, scope: !517)
!521 = !DILocation(line: 349, column: 11, scope: !488)
!522 = !DILocation(line: 349, column: 16, scope: !488)
!523 = !DILocation(line: 350, column: 11, scope: !488)
!524 = !DILocation(line: 350, column: 28, scope: !488)
!525 = !DILocation(line: 351, column: 11, scope: !488)
!526 = !DILocation(line: 351, column: 18, scope: !488)
!527 = !DILocation(line: 352, column: 11, scope: !488)
!528 = !DILocation(line: 352, column: 16, scope: !488)
!529 = !DILocation(line: 353, column: 11, scope: !488)
!530 = !DILocation(line: 353, column: 17, scope: !488)
!531 = !DILocation(line: 354, column: 11, scope: !488)
!532 = !DILocation(line: 354, column: 21, scope: !488)
!533 = !DILocation(line: 355, column: 11, scope: !488)
!534 = !DILocation(line: 355, column: 28, scope: !488)
!535 = !DILocation(line: 356, column: 11, scope: !488)
!536 = !DILocation(line: 356, column: 27, scope: !488)
!537 = !DILocation(line: 357, column: 3, scope: !488)
!538 = !DILocation(line: 358, column: 1, scope: !488)
!539 = distinct !DISubprogram(name: "htab_set_functions_ex", scope: !3, file: !3, line: 363, type: !540, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !21, !26, !34, !39, !16, !62, !67}
!542 = !{!543, !544, !545, !546, !547, !548, !549}
!543 = !DILocalVariable(name: "htab", arg: 1, scope: !539, file: !3, line: 363, type: !21)
!544 = !DILocalVariable(name: "hash_f", arg: 2, scope: !539, file: !3, line: 363, type: !26)
!545 = !DILocalVariable(name: "eq_f", arg: 3, scope: !539, file: !3, line: 363, type: !34)
!546 = !DILocalVariable(name: "del_f", arg: 4, scope: !539, file: !3, line: 364, type: !39)
!547 = !DILocalVariable(name: "alloc_arg", arg: 5, scope: !539, file: !3, line: 364, type: !16)
!548 = !DILocalVariable(name: "alloc_f", arg: 6, scope: !539, file: !3, line: 365, type: !62)
!549 = !DILocalVariable(name: "free_f", arg: 7, scope: !539, file: !3, line: 365, type: !67)
!550 = !DILocation(line: 0, scope: !539)
!551 = !DILocation(line: 367, column: 9, scope: !539)
!552 = !DILocation(line: 367, column: 16, scope: !539)
!553 = !DILocation(line: 368, column: 9, scope: !539)
!554 = !DILocation(line: 368, column: 14, scope: !539)
!555 = !DILocation(line: 369, column: 9, scope: !539)
!556 = !DILocation(line: 369, column: 15, scope: !539)
!557 = !DILocation(line: 370, column: 9, scope: !539)
!558 = !DILocation(line: 370, column: 19, scope: !539)
!559 = !DILocation(line: 371, column: 9, scope: !539)
!560 = !DILocation(line: 371, column: 26, scope: !539)
!561 = !DILocation(line: 372, column: 9, scope: !539)
!562 = !DILocation(line: 372, column: 25, scope: !539)
!563 = !DILocation(line: 373, column: 1, scope: !539)
!564 = distinct !DISubprogram(name: "htab_create", scope: !3, file: !3, line: 379, type: !565, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!21, !46, !26, !34, !39}
!567 = !{!568, !569, !570, !571}
!568 = !DILocalVariable(name: "size", arg: 1, scope: !564, file: !3, line: 379, type: !46)
!569 = !DILocalVariable(name: "hash_f", arg: 2, scope: !564, file: !3, line: 379, type: !26)
!570 = !DILocalVariable(name: "eq_f", arg: 3, scope: !564, file: !3, line: 379, type: !34)
!571 = !DILocalVariable(name: "del_f", arg: 4, scope: !564, file: !3, line: 379, type: !39)
!572 = !DILocation(line: 0, scope: !564)
!573 = !DILocation(line: 381, column: 10, scope: !564)
!574 = !DILocation(line: 381, column: 3, scope: !564)
!575 = distinct !DISubprogram(name: "htab_try_create", scope: !3, file: !3, line: 385, type: !565, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!576 = !{!577, !578, !579, !580}
!577 = !DILocalVariable(name: "size", arg: 1, scope: !575, file: !3, line: 385, type: !46)
!578 = !DILocalVariable(name: "hash_f", arg: 2, scope: !575, file: !3, line: 385, type: !26)
!579 = !DILocalVariable(name: "eq_f", arg: 3, scope: !575, file: !3, line: 385, type: !34)
!580 = !DILocalVariable(name: "del_f", arg: 4, scope: !575, file: !3, line: 385, type: !39)
!581 = !DILocation(line: 0, scope: !575)
!582 = !DILocation(line: 387, column: 10, scope: !575)
!583 = !DILocation(line: 387, column: 3, scope: !575)
!584 = distinct !DISubprogram(name: "htab_delete", scope: !3, file: !3, line: 394, type: !585, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !21}
!587 = !{!588, !589, !590, !591}
!588 = !DILocalVariable(name: "htab", arg: 1, scope: !584, file: !3, line: 394, type: !21)
!589 = !DILocalVariable(name: "size", scope: !584, file: !3, line: 396, type: !46)
!590 = !DILocalVariable(name: "entries", scope: !584, file: !3, line: 397, type: !44)
!591 = !DILocalVariable(name: "i", scope: !584, file: !3, line: 398, type: !12)
!592 = !DILocation(line: 0, scope: !584)
!593 = !DILocation(line: 397, column: 24, scope: !584)
!594 = !DILocation(line: 400, column: 13, scope: !595)
!595 = distinct !DILexicalBlock(scope: !584, file: !3, line: 400, column: 7)
!596 = !DILocation(line: 400, column: 7, scope: !595)
!597 = !DILocation(line: 400, column: 7, scope: !584)
!598 = !DILocation(line: 396, column: 17, scope: !584)
!599 = !DILocation(line: 401, column: 14, scope: !600)
!600 = distinct !DILexicalBlock(scope: !595, file: !3, line: 401, column: 5)
!601 = !DILocation(line: 401, column: 10, scope: !600)
!602 = !DILocation(line: 0, scope: !600)
!603 = !DILocation(line: 401, column: 26, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !3, line: 401, column: 5)
!605 = !DILocation(line: 401, column: 5, scope: !600)
!606 = !DILocation(line: 402, column: 11, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !3, line: 402, column: 11)
!608 = !DILocation(line: 402, column: 22, scope: !607)
!609 = !DILocation(line: 402, column: 42, scope: !607)
!610 = !DILocation(line: 402, column: 56, scope: !607)
!611 = !DILocation(line: 402, column: 11, scope: !604)
!612 = !DILocation(line: 403, column: 10, scope: !607)
!613 = !DILocation(line: 403, column: 2, scope: !607)
!614 = !DILocation(line: 401, column: 5, scope: !604)
!615 = distinct !{!615, !605, !616}
!616 = !DILocation(line: 403, column: 28, scope: !600)
!617 = !DILocation(line: 405, column: 13, scope: !618)
!618 = distinct !DILexicalBlock(scope: !584, file: !3, line: 405, column: 7)
!619 = !DILocation(line: 405, column: 20, scope: !618)
!620 = !DILocation(line: 405, column: 7, scope: !584)
!621 = !DILocation(line: 407, column: 24, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !3, line: 406, column: 5)
!623 = !DILocation(line: 407, column: 7, scope: !622)
!624 = !DILocation(line: 408, column: 15, scope: !622)
!625 = !DILocation(line: 408, column: 24, scope: !622)
!626 = !DILocation(line: 408, column: 7, scope: !622)
!627 = !DILocation(line: 409, column: 5, scope: !622)
!628 = !DILocation(line: 410, column: 18, scope: !629)
!629 = distinct !DILexicalBlock(scope: !618, file: !3, line: 410, column: 12)
!630 = !DILocation(line: 410, column: 34, scope: !629)
!631 = !DILocation(line: 410, column: 12, scope: !618)
!632 = !DILocation(line: 412, column: 39, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !3, line: 411, column: 5)
!634 = !DILocation(line: 412, column: 50, scope: !633)
!635 = !DILocation(line: 412, column: 7, scope: !633)
!636 = !DILocation(line: 413, column: 15, scope: !633)
!637 = !DILocation(line: 413, column: 39, scope: !633)
!638 = !DILocation(line: 413, column: 50, scope: !633)
!639 = !DILocation(line: 413, column: 7, scope: !633)
!640 = !DILocation(line: 414, column: 5, scope: !633)
!641 = !DILocation(line: 415, column: 1, scope: !584)
!642 = distinct !DISubprogram(name: "htab_empty", scope: !3, file: !3, line: 420, type: !585, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!643 = !{!644, !645, !646, !647, !648, !651}
!644 = !DILocalVariable(name: "htab", arg: 1, scope: !642, file: !3, line: 420, type: !21)
!645 = !DILocalVariable(name: "size", scope: !642, file: !3, line: 422, type: !46)
!646 = !DILocalVariable(name: "entries", scope: !642, file: !3, line: 423, type: !44)
!647 = !DILocalVariable(name: "i", scope: !642, file: !3, line: 424, type: !12)
!648 = !DILocalVariable(name: "nindex", scope: !649, file: !3, line: 434, type: !12)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 433, column: 5)
!650 = distinct !DILexicalBlock(scope: !642, file: !3, line: 432, column: 7)
!651 = !DILocalVariable(name: "nsize", scope: !649, file: !3, line: 435, type: !12)
!652 = !DILocation(line: 0, scope: !642)
!653 = !DILocation(line: 422, column: 17, scope: !642)
!654 = !DILocation(line: 423, column: 24, scope: !642)
!655 = !DILocation(line: 426, column: 13, scope: !656)
!656 = distinct !DILexicalBlock(scope: !642, file: !3, line: 426, column: 7)
!657 = !DILocation(line: 426, column: 7, scope: !656)
!658 = !DILocation(line: 426, column: 7, scope: !642)
!659 = !DILocation(line: 427, column: 14, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !3, line: 427, column: 5)
!661 = !DILocation(line: 427, column: 10, scope: !660)
!662 = !DILocation(line: 0, scope: !660)
!663 = !DILocation(line: 427, column: 26, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !3, line: 427, column: 5)
!665 = !DILocation(line: 427, column: 5, scope: !660)
!666 = !DILocation(line: 428, column: 11, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 428, column: 11)
!668 = !DILocation(line: 428, column: 22, scope: !667)
!669 = !DILocation(line: 428, column: 42, scope: !667)
!670 = !DILocation(line: 428, column: 56, scope: !667)
!671 = !DILocation(line: 428, column: 11, scope: !664)
!672 = !DILocation(line: 429, column: 10, scope: !667)
!673 = !DILocation(line: 429, column: 2, scope: !667)
!674 = !DILocation(line: 427, column: 5, scope: !664)
!675 = distinct !{!675, !665, !676}
!676 = !DILocation(line: 429, column: 28, scope: !660)
!677 = !DILocation(line: 432, column: 12, scope: !650)
!678 = !DILocation(line: 432, column: 7, scope: !642)
!679 = !DILocation(line: 434, column: 20, scope: !649)
!680 = !DILocation(line: 0, scope: !649)
!681 = !DILocation(line: 435, column: 19, scope: !649)
!682 = !DILocation(line: 435, column: 37, scope: !649)
!683 = !DILocation(line: 437, column: 17, scope: !684)
!684 = distinct !DILexicalBlock(scope: !649, file: !3, line: 437, column: 11)
!685 = !DILocation(line: 437, column: 24, scope: !684)
!686 = !DILocation(line: 437, column: 11, scope: !649)
!687 = !DILocation(line: 438, column: 25, scope: !684)
!688 = !DILocation(line: 438, column: 2, scope: !684)
!689 = !DILocation(line: 439, column: 22, scope: !690)
!690 = distinct !DILexicalBlock(scope: !684, file: !3, line: 439, column: 16)
!691 = !DILocation(line: 439, column: 38, scope: !690)
!692 = !DILocation(line: 439, column: 16, scope: !684)
!693 = !DILocation(line: 440, column: 34, scope: !690)
!694 = !DILocation(line: 440, column: 51, scope: !690)
!695 = !DILocation(line: 440, column: 2, scope: !690)
!696 = !DILocation(line: 441, column: 17, scope: !697)
!697 = distinct !DILexicalBlock(scope: !649, file: !3, line: 441, column: 11)
!698 = !DILocation(line: 441, column: 34, scope: !697)
!699 = !DILocation(line: 441, column: 11, scope: !649)
!700 = !DILocation(line: 442, column: 59, scope: !697)
!701 = !DILocation(line: 442, column: 70, scope: !697)
!702 = !DILocation(line: 442, column: 26, scope: !697)
!703 = !DILocation(line: 442, column: 16, scope: !697)
!704 = !DILocation(line: 442, column: 2, scope: !697)
!705 = !DILocation(line: 445, column: 34, scope: !697)
!706 = !DILocation(line: 445, column: 44, scope: !697)
!707 = !DILocation(line: 445, column: 26, scope: !697)
!708 = !DILocation(line: 445, column: 16, scope: !697)
!709 = !DILocation(line: 446, column: 19, scope: !649)
!710 = !DILocation(line: 446, column: 17, scope: !649)
!711 = !DILocation(line: 447, column: 12, scope: !649)
!712 = !DILocation(line: 447, column: 29, scope: !649)
!713 = !DILocation(line: 448, column: 5, scope: !649)
!714 = !DILocation(line: 450, column: 13, scope: !650)
!715 = !DILocation(line: 450, column: 30, scope: !650)
!716 = !DILocation(line: 450, column: 5, scope: !650)
!717 = !DILocation(line: 451, column: 9, scope: !642)
!718 = !DILocation(line: 451, column: 19, scope: !642)
!719 = !DILocation(line: 452, column: 9, scope: !642)
!720 = !DILocation(line: 452, column: 20, scope: !642)
!721 = !DILocation(line: 453, column: 1, scope: !642)
!722 = distinct !DISubprogram(name: "htab_find_with_hash", scope: !3, file: !3, line: 567, type: !723, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!16, !21, !31, !30}
!725 = !{!726, !727, !728, !729, !730, !731, !732}
!726 = !DILocalVariable(name: "htab", arg: 1, scope: !722, file: !3, line: 567, type: !21)
!727 = !DILocalVariable(name: "element", arg: 2, scope: !722, file: !3, line: 567, type: !31)
!728 = !DILocalVariable(name: "hash", arg: 3, scope: !722, file: !3, line: 567, type: !30)
!729 = !DILocalVariable(name: "index", scope: !722, file: !3, line: 569, type: !30)
!730 = !DILocalVariable(name: "hash2", scope: !722, file: !3, line: 569, type: !30)
!731 = !DILocalVariable(name: "size", scope: !722, file: !3, line: 570, type: !46)
!732 = !DILocalVariable(name: "entry", scope: !722, file: !3, line: 571, type: !16)
!733 = !DILocation(line: 0, scope: !722)
!734 = !DILocation(line: 573, column: 9, scope: !722)
!735 = !DILocation(line: 573, column: 17, scope: !722)
!736 = !DILocation(line: 574, column: 10, scope: !722)
!737 = !DILocation(line: 575, column: 11, scope: !722)
!738 = !DILocation(line: 577, column: 17, scope: !722)
!739 = !DILocation(line: 577, column: 11, scope: !722)
!740 = !DILocation(line: 579, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !722, file: !3, line: 578, column: 7)
!742 = !DILocation(line: 579, column: 50, scope: !741)
!743 = !DILocation(line: 579, column: 42, scope: !741)
!744 = !DILocation(line: 578, column: 7, scope: !722)
!745 = !DILocation(line: 582, column: 11, scope: !722)
!746 = !DILocation(line: 592, column: 47, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 591, column: 11)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 584, column: 5)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 583, column: 3)
!750 = distinct !DILexicalBlock(scope: !722, file: !3, line: 583, column: 3)
!751 = !DILocation(line: 0, scope: !748)
!752 = !DILocation(line: 583, column: 3, scope: !722)
!753 = !DILocation(line: 585, column: 23, scope: !748)
!754 = !DILocation(line: 586, column: 13, scope: !748)
!755 = !DILocation(line: 587, column: 11, scope: !756)
!756 = distinct !DILexicalBlock(scope: !748, file: !3, line: 587, column: 11)
!757 = !DILocation(line: 587, column: 17, scope: !756)
!758 = !DILocation(line: 587, column: 11, scope: !748)
!759 = !DILocation(line: 590, column: 21, scope: !748)
!760 = !DILocation(line: 590, column: 15, scope: !748)
!761 = !DILocation(line: 592, column: 4, scope: !747)
!762 = !DILocation(line: 592, column: 39, scope: !747)
!763 = !DILocation(line: 591, column: 11, scope: !748)
!764 = !DILocation(line: 583, column: 3, scope: !749)
!765 = distinct !{!765, !766, !767}
!766 = !DILocation(line: 583, column: 3, scope: !750)
!767 = !DILocation(line: 594, column: 5, scope: !750)
!768 = !DILocation(line: 595, column: 1, scope: !722)
!769 = distinct !DISubprogram(name: "htab_mod", scope: !3, file: !3, line: 274, type: !770, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!30, !30, !21}
!772 = !{!773, !774, !775}
!773 = !DILocalVariable(name: "hash", arg: 1, scope: !769, file: !3, line: 274, type: !30)
!774 = !DILocalVariable(name: "htab", arg: 2, scope: !769, file: !3, line: 274, type: !21)
!775 = !DILocalVariable(name: "p", scope: !769, file: !3, line: 276, type: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!777 = !DILocation(line: 0, scope: !769)
!778 = !DILocation(line: 276, column: 48, scope: !769)
!779 = !DILocation(line: 276, column: 32, scope: !769)
!780 = !DILocation(line: 277, column: 31, scope: !769)
!781 = !DILocation(line: 277, column: 41, scope: !769)
!782 = !DILocation(line: 277, column: 49, scope: !769)
!783 = !DILocation(line: 277, column: 10, scope: !769)
!784 = !DILocation(line: 277, column: 3, scope: !769)
!785 = distinct !DISubprogram(name: "htab_mod_m2", scope: !3, file: !3, line: 283, type: !770, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !786)
!786 = !{!787, !788, !789}
!787 = !DILocalVariable(name: "hash", arg: 1, scope: !785, file: !3, line: 283, type: !30)
!788 = !DILocalVariable(name: "htab", arg: 2, scope: !785, file: !3, line: 283, type: !21)
!789 = !DILocalVariable(name: "p", scope: !785, file: !3, line: 285, type: !776)
!790 = !DILocation(line: 0, scope: !785)
!791 = !DILocation(line: 285, column: 48, scope: !785)
!792 = !DILocation(line: 285, column: 32, scope: !785)
!793 = !DILocation(line: 286, column: 35, scope: !785)
!794 = !DILocation(line: 286, column: 41, scope: !785)
!795 = !DILocation(line: 286, column: 49, scope: !785)
!796 = !DILocation(line: 286, column: 60, scope: !785)
!797 = !DILocation(line: 286, column: 14, scope: !785)
!798 = !DILocation(line: 286, column: 12, scope: !785)
!799 = !DILocation(line: 286, column: 3, scope: !785)
!800 = distinct !DISubprogram(name: "htab_find", scope: !3, file: !3, line: 601, type: !801, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!16, !21, !31}
!803 = !{!804, !805}
!804 = !DILocalVariable(name: "htab", arg: 1, scope: !800, file: !3, line: 601, type: !21)
!805 = !DILocalVariable(name: "element", arg: 2, scope: !800, file: !3, line: 601, type: !31)
!806 = !DILocation(line: 0, scope: !800)
!807 = !DILocation(line: 603, column: 54, scope: !800)
!808 = !DILocation(line: 603, column: 46, scope: !800)
!809 = !DILocation(line: 603, column: 10, scope: !800)
!810 = !DILocation(line: 603, column: 3, scope: !800)
!811 = distinct !DISubprogram(name: "htab_find_slot_with_hash", scope: !3, file: !3, line: 615, type: !812, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!44, !21, !31, !30, !5}
!814 = !{!815, !816, !817, !818, !819, !820, !821, !822, !823, !824}
!815 = !DILocalVariable(name: "htab", arg: 1, scope: !811, file: !3, line: 615, type: !21)
!816 = !DILocalVariable(name: "element", arg: 2, scope: !811, file: !3, line: 615, type: !31)
!817 = !DILocalVariable(name: "hash", arg: 3, scope: !811, file: !3, line: 616, type: !30)
!818 = !DILocalVariable(name: "insert", arg: 4, scope: !811, file: !3, line: 616, type: !5)
!819 = !DILocalVariable(name: "first_deleted_slot", scope: !811, file: !3, line: 618, type: !44)
!820 = !DILocalVariable(name: "index", scope: !811, file: !3, line: 619, type: !30)
!821 = !DILocalVariable(name: "hash2", scope: !811, file: !3, line: 619, type: !30)
!822 = !DILocalVariable(name: "size", scope: !811, file: !3, line: 620, type: !46)
!823 = !DILocalVariable(name: "entry", scope: !811, file: !3, line: 621, type: !16)
!824 = !DILabel(scope: !811, name: "empty_entry", file: !3, line: 664)
!825 = !DILocation(line: 0, scope: !811)
!826 = !DILocation(line: 623, column: 10, scope: !811)
!827 = !DILocation(line: 624, column: 14, scope: !828)
!828 = distinct !DILexicalBlock(scope: !811, file: !3, line: 624, column: 7)
!829 = !DILocation(line: 624, column: 24, scope: !828)
!830 = !DILocation(line: 624, column: 32, scope: !828)
!831 = !DILocation(line: 624, column: 45, scope: !828)
!832 = !DILocation(line: 624, column: 56, scope: !828)
!833 = !DILocation(line: 624, column: 36, scope: !828)
!834 = !DILocation(line: 624, column: 7, scope: !811)
!835 = !DILocation(line: 626, column: 11, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 626, column: 11)
!837 = distinct !DILexicalBlock(scope: !828, file: !3, line: 625, column: 5)
!838 = !DILocation(line: 626, column: 30, scope: !836)
!839 = !DILocation(line: 626, column: 11, scope: !837)
!840 = !DILocation(line: 628, column: 14, scope: !837)
!841 = !DILocation(line: 629, column: 5, scope: !837)
!842 = !DILocation(line: 631, column: 11, scope: !811)
!843 = !DILocation(line: 633, column: 9, scope: !811)
!844 = !DILocation(line: 633, column: 17, scope: !811)
!845 = !DILocation(line: 636, column: 17, scope: !811)
!846 = !DILocation(line: 636, column: 11, scope: !811)
!847 = !DILocation(line: 637, column: 7, scope: !811)
!848 = !DILocation(line: 640, column: 5, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 639, column: 12)
!850 = distinct !DILexicalBlock(scope: !811, file: !3, line: 637, column: 7)
!851 = !DILocation(line: 641, column: 20, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !3, line: 641, column: 12)
!853 = !DILocation(line: 641, column: 12, scope: !852)
!854 = !DILocation(line: 641, column: 12, scope: !849)
!855 = !DILocation(line: 642, column: 19, scope: !852)
!856 = !DILocation(line: 642, column: 13, scope: !852)
!857 = !DILocation(line: 642, column: 5, scope: !852)
!858 = !DILocation(line: 644, column: 11, scope: !811)
!859 = !DILocation(line: 0, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 646, column: 5)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 645, column: 3)
!862 = distinct !DILexicalBlock(scope: !811, file: !3, line: 645, column: 3)
!863 = !DILocation(line: 0, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 660, column: 16)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 655, column: 16)
!866 = distinct !DILexicalBlock(scope: !860, file: !3, line: 653, column: 11)
!867 = !DILocation(line: 645, column: 3, scope: !811)
!868 = !DILocation(line: 640, column: 24, scope: !849)
!869 = !DILocation(line: 647, column: 23, scope: !860)
!870 = !DILocation(line: 648, column: 13, scope: !860)
!871 = !DILocation(line: 649, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !860, file: !3, line: 649, column: 11)
!873 = !DILocation(line: 649, column: 17, scope: !872)
!874 = !DILocation(line: 649, column: 11, scope: !860)
!875 = !DILocation(line: 652, column: 21, scope: !860)
!876 = !DILocation(line: 652, column: 15, scope: !860)
!877 = !DILocation(line: 653, column: 11, scope: !860)
!878 = !DILocation(line: 657, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 657, column: 8)
!880 = distinct !DILexicalBlock(scope: !865, file: !3, line: 656, column: 2)
!881 = !DILocation(line: 657, column: 8, scope: !880)
!882 = !DILocation(line: 658, column: 6, scope: !879)
!883 = !DILocation(line: 660, column: 24, scope: !864)
!884 = !DILocation(line: 660, column: 16, scope: !864)
!885 = !DILocation(line: 660, column: 16, scope: !865)
!886 = !DILocation(line: 661, column: 16, scope: !864)
!887 = !DILocation(line: 661, column: 10, scope: !864)
!888 = !DILocation(line: 661, column: 2, scope: !864)
!889 = !DILocation(line: 645, column: 3, scope: !861)
!890 = distinct !{!890, !891, !892}
!891 = !DILocation(line: 645, column: 3, scope: !862)
!892 = !DILocation(line: 662, column: 5, scope: !862)
!893 = !DILocation(line: 665, column: 14, scope: !894)
!894 = distinct !DILexicalBlock(scope: !811, file: !3, line: 665, column: 7)
!895 = !DILocation(line: 664, column: 2, scope: !811)
!896 = !DILocation(line: 665, column: 7, scope: !811)
!897 = !DILocation(line: 668, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !811, file: !3, line: 668, column: 7)
!899 = !DILocation(line: 668, column: 7, scope: !811)
!900 = !DILocation(line: 670, column: 13, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 669, column: 5)
!902 = !DILocation(line: 670, column: 22, scope: !901)
!903 = !DILocation(line: 671, column: 27, scope: !901)
!904 = !DILocation(line: 672, column: 7, scope: !901)
!905 = !DILocation(line: 675, column: 9, scope: !811)
!906 = !DILocation(line: 675, column: 19, scope: !811)
!907 = !DILocation(line: 676, column: 11, scope: !811)
!908 = !DILocation(line: 676, column: 3, scope: !811)
!909 = !DILocation(line: 677, column: 1, scope: !811)
!910 = distinct !DISubprogram(name: "htab_expand", scope: !3, file: !3, line: 499, type: !911, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{!12, !21}
!913 = !{!914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !926}
!914 = !DILocalVariable(name: "htab", arg: 1, scope: !910, file: !3, line: 499, type: !21)
!915 = !DILocalVariable(name: "oentries", scope: !910, file: !3, line: 501, type: !44)
!916 = !DILocalVariable(name: "olimit", scope: !910, file: !3, line: 502, type: !44)
!917 = !DILocalVariable(name: "p", scope: !910, file: !3, line: 503, type: !44)
!918 = !DILocalVariable(name: "nentries", scope: !910, file: !3, line: 504, type: !44)
!919 = !DILocalVariable(name: "nsize", scope: !910, file: !3, line: 505, type: !46)
!920 = !DILocalVariable(name: "osize", scope: !910, file: !3, line: 505, type: !46)
!921 = !DILocalVariable(name: "elts", scope: !910, file: !3, line: 505, type: !46)
!922 = !DILocalVariable(name: "oindex", scope: !910, file: !3, line: 506, type: !7)
!923 = !DILocalVariable(name: "nindex", scope: !910, file: !3, line: 506, type: !7)
!924 = !DILocalVariable(name: "x", scope: !925, file: !3, line: 543, type: !16)
!925 = distinct !DILexicalBlock(scope: !910, file: !3, line: 542, column: 5)
!926 = !DILocalVariable(name: "q", scope: !927, file: !3, line: 547, type: !44)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 546, column: 2)
!928 = distinct !DILexicalBlock(scope: !925, file: !3, line: 545, column: 11)
!929 = !DILocation(line: 0, scope: !910)
!930 = !DILocation(line: 508, column: 20, scope: !910)
!931 = !DILocation(line: 510, column: 17, scope: !910)
!932 = !DILocation(line: 511, column: 21, scope: !910)
!933 = !DILocation(line: 512, column: 10, scope: !910)
!934 = !DILocation(line: 516, column: 12, scope: !935)
!935 = distinct !DILexicalBlock(scope: !910, file: !3, line: 516, column: 7)
!936 = !DILocation(line: 516, column: 16, scope: !935)
!937 = !DILocation(line: 516, column: 24, scope: !935)
!938 = !DILocation(line: 509, column: 18, scope: !910)
!939 = !DILocation(line: 516, column: 33, scope: !935)
!940 = !DILocation(line: 516, column: 37, scope: !935)
!941 = !DILocation(line: 516, column: 54, scope: !935)
!942 = !DILocation(line: 516, column: 45, scope: !935)
!943 = !DILocation(line: 518, column: 16, scope: !944)
!944 = distinct !DILexicalBlock(scope: !935, file: !3, line: 517, column: 5)
!945 = !DILocation(line: 519, column: 15, scope: !944)
!946 = !DILocation(line: 519, column: 33, scope: !944)
!947 = !DILocation(line: 520, column: 5, scope: !944)
!948 = !DILocation(line: 0, scope: !935)
!949 = !DILocation(line: 527, column: 13, scope: !950)
!950 = distinct !DILexicalBlock(scope: !910, file: !3, line: 527, column: 7)
!951 = !DILocation(line: 527, column: 30, scope: !950)
!952 = !DILocation(line: 527, column: 7, scope: !910)
!953 = !DILocation(line: 528, column: 57, scope: !950)
!954 = !DILocation(line: 528, column: 24, scope: !950)
!955 = !DILocation(line: 528, column: 5, scope: !950)
!956 = !DILocation(line: 531, column: 32, scope: !950)
!957 = !DILocation(line: 531, column: 24, scope: !950)
!958 = !DILocation(line: 532, column: 16, scope: !959)
!959 = distinct !DILexicalBlock(scope: !910, file: !3, line: 532, column: 7)
!960 = !DILocation(line: 532, column: 7, scope: !910)
!961 = !DILocation(line: 534, column: 17, scope: !910)
!962 = !DILocation(line: 535, column: 14, scope: !910)
!963 = !DILocation(line: 536, column: 9, scope: !910)
!964 = !DILocation(line: 536, column: 26, scope: !910)
!965 = !DILocation(line: 537, column: 29, scope: !910)
!966 = !DILocation(line: 537, column: 20, scope: !910)
!967 = !DILocation(line: 538, column: 19, scope: !910)
!968 = !DILocation(line: 0, scope: !927)
!969 = !DILocation(line: 541, column: 3, scope: !910)
!970 = !DILocation(line: 543, column: 15, scope: !925)
!971 = !DILocation(line: 0, scope: !925)
!972 = !DILocation(line: 545, column: 33, scope: !928)
!973 = !DILocation(line: 547, column: 55, scope: !927)
!974 = !DILocation(line: 547, column: 47, scope: !927)
!975 = !DILocation(line: 547, column: 13, scope: !927)
!976 = !DILocation(line: 549, column: 7, scope: !927)
!977 = !DILocation(line: 550, column: 2, scope: !927)
!978 = !DILocation(line: 552, column: 8, scope: !925)
!979 = !DILocation(line: 554, column: 12, scope: !910)
!980 = !DILocation(line: 553, column: 5, scope: !925)
!981 = distinct !{!981, !969, !982}
!982 = !DILocation(line: 554, column: 20, scope: !910)
!983 = !DILocation(line: 556, column: 13, scope: !984)
!984 = distinct !DILexicalBlock(scope: !910, file: !3, line: 556, column: 7)
!985 = !DILocation(line: 556, column: 20, scope: !984)
!986 = !DILocation(line: 556, column: 7, scope: !910)
!987 = !DILocation(line: 557, column: 22, scope: !984)
!988 = !DILocation(line: 557, column: 5, scope: !984)
!989 = !DILocation(line: 558, column: 18, scope: !990)
!990 = distinct !DILexicalBlock(scope: !984, file: !3, line: 558, column: 12)
!991 = !DILocation(line: 558, column: 34, scope: !990)
!992 = !DILocation(line: 558, column: 12, scope: !984)
!993 = !DILocation(line: 559, column: 37, scope: !990)
!994 = !DILocation(line: 559, column: 48, scope: !990)
!995 = !DILocation(line: 559, column: 5, scope: !990)
!996 = !DILocation(line: 561, column: 1, scope: !910)
!997 = distinct !DISubprogram(name: "htab_find_slot", scope: !3, file: !3, line: 683, type: !998, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1000)
!998 = !DISubroutineType(types: !999)
!999 = !{!44, !21, !31, !5}
!1000 = !{!1001, !1002, !1003}
!1001 = !DILocalVariable(name: "htab", arg: 1, scope: !997, file: !3, line: 683, type: !21)
!1002 = !DILocalVariable(name: "element", arg: 2, scope: !997, file: !3, line: 683, type: !31)
!1003 = !DILocalVariable(name: "insert", arg: 3, scope: !997, file: !3, line: 683, type: !5)
!1004 = !DILocation(line: 0, scope: !997)
!1005 = !DILocation(line: 685, column: 59, scope: !997)
!1006 = !DILocation(line: 685, column: 51, scope: !997)
!1007 = !DILocation(line: 685, column: 10, scope: !997)
!1008 = !DILocation(line: 685, column: 3, scope: !997)
!1009 = distinct !DISubprogram(name: "htab_remove_elt", scope: !3, file: !3, line: 694, type: !1010, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !21, !16}
!1012 = !{!1013, !1014}
!1013 = !DILocalVariable(name: "htab", arg: 1, scope: !1009, file: !3, line: 694, type: !21)
!1014 = !DILocalVariable(name: "element", arg: 2, scope: !1009, file: !3, line: 694, type: !16)
!1015 = !DILocation(line: 0, scope: !1009)
!1016 = !DILocation(line: 696, column: 53, scope: !1009)
!1017 = !DILocation(line: 696, column: 45, scope: !1009)
!1018 = !DILocation(line: 696, column: 3, scope: !1009)
!1019 = !DILocation(line: 697, column: 1, scope: !1009)
!1020 = distinct !DISubprogram(name: "htab_remove_elt_with_hash", scope: !3, file: !3, line: 705, type: !1021, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1023)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !21, !16, !30}
!1023 = !{!1024, !1025, !1026, !1027}
!1024 = !DILocalVariable(name: "htab", arg: 1, scope: !1020, file: !3, line: 705, type: !21)
!1025 = !DILocalVariable(name: "element", arg: 2, scope: !1020, file: !3, line: 705, type: !16)
!1026 = !DILocalVariable(name: "hash", arg: 3, scope: !1020, file: !3, line: 705, type: !30)
!1027 = !DILocalVariable(name: "slot", scope: !1020, file: !3, line: 707, type: !44)
!1028 = !DILocation(line: 0, scope: !1020)
!1029 = !DILocation(line: 709, column: 10, scope: !1020)
!1030 = !DILocation(line: 710, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 710, column: 7)
!1032 = !DILocation(line: 710, column: 13, scope: !1031)
!1033 = !DILocation(line: 710, column: 7, scope: !1020)
!1034 = !DILocation(line: 713, column: 13, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 713, column: 7)
!1036 = !DILocation(line: 713, column: 7, scope: !1035)
!1037 = !DILocation(line: 713, column: 7, scope: !1020)
!1038 = !DILocation(line: 714, column: 5, scope: !1035)
!1039 = !DILocation(line: 716, column: 9, scope: !1020)
!1040 = !DILocation(line: 717, column: 9, scope: !1020)
!1041 = !DILocation(line: 717, column: 18, scope: !1020)
!1042 = !DILocation(line: 718, column: 1, scope: !1020)
!1043 = distinct !DISubprogram(name: "htab_clear_slot", scope: !3, file: !3, line: 725, type: !1044, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !21, !44}
!1046 = !{!1047, !1048}
!1047 = !DILocalVariable(name: "htab", arg: 1, scope: !1043, file: !3, line: 725, type: !21)
!1048 = !DILocalVariable(name: "slot", arg: 2, scope: !1043, file: !3, line: 725, type: !44)
!1049 = !DILocation(line: 0, scope: !1043)
!1050 = !DILocation(line: 727, column: 20, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 727, column: 7)
!1052 = !DILocation(line: 727, column: 12, scope: !1051)
!1053 = !DILocation(line: 727, column: 28, scope: !1051)
!1054 = !DILocation(line: 727, column: 55, scope: !1051)
!1055 = !DILocation(line: 727, column: 53, scope: !1051)
!1056 = !DILocation(line: 727, column: 36, scope: !1051)
!1057 = !DILocation(line: 728, column: 7, scope: !1051)
!1058 = !DILocation(line: 728, column: 10, scope: !1051)
!1059 = !DILocation(line: 728, column: 16, scope: !1051)
!1060 = !DILocation(line: 728, column: 36, scope: !1051)
!1061 = !DILocation(line: 728, column: 45, scope: !1051)
!1062 = !DILocation(line: 727, column: 7, scope: !1043)
!1063 = !DILocation(line: 729, column: 5, scope: !1051)
!1064 = !DILocation(line: 731, column: 13, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 731, column: 7)
!1066 = !DILocation(line: 731, column: 7, scope: !1065)
!1067 = !DILocation(line: 731, column: 7, scope: !1043)
!1068 = !DILocation(line: 732, column: 21, scope: !1065)
!1069 = !DILocation(line: 732, column: 5, scope: !1065)
!1070 = !DILocation(line: 734, column: 9, scope: !1043)
!1071 = !DILocation(line: 735, column: 9, scope: !1043)
!1072 = !DILocation(line: 735, column: 18, scope: !1043)
!1073 = !DILocation(line: 736, column: 1, scope: !1043)
!1074 = distinct !DISubprogram(name: "htab_traverse_noresize", scope: !3, file: !3, line: 744, type: !1075, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1081)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !21, !1077, !16}
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_trav", file: !6, line: 69, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!12, !44, !16}
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087}
!1082 = !DILocalVariable(name: "htab", arg: 1, scope: !1074, file: !3, line: 744, type: !21)
!1083 = !DILocalVariable(name: "callback", arg: 2, scope: !1074, file: !3, line: 744, type: !1077)
!1084 = !DILocalVariable(name: "info", arg: 3, scope: !1074, file: !3, line: 744, type: !16)
!1085 = !DILocalVariable(name: "slot", scope: !1074, file: !3, line: 746, type: !44)
!1086 = !DILocalVariable(name: "limit", scope: !1074, file: !3, line: 747, type: !44)
!1087 = !DILocalVariable(name: "x", scope: !1088, file: !3, line: 754, type: !16)
!1088 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 753, column: 5)
!1089 = !DILocation(line: 0, scope: !1074)
!1090 = !DILocation(line: 749, column: 16, scope: !1074)
!1091 = !DILocation(line: 750, column: 18, scope: !1074)
!1092 = !DILocation(line: 750, column: 16, scope: !1074)
!1093 = !DILocation(line: 752, column: 3, scope: !1074)
!1094 = !DILocation(line: 754, column: 15, scope: !1088)
!1095 = !DILocation(line: 756, column: 33, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 756, column: 11)
!1097 = !DILocation(line: 757, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 757, column: 6)
!1099 = !DILocation(line: 757, column: 6, scope: !1096)
!1100 = !DILocation(line: 759, column: 5, scope: !1074)
!1101 = !DILocation(line: 760, column: 10, scope: !1074)
!1102 = !DILocation(line: 760, column: 17, scope: !1074)
!1103 = !DILocation(line: 759, column: 5, scope: !1088)
!1104 = distinct !{!1104, !1093, !1105}
!1105 = !DILocation(line: 760, column: 24, scope: !1074)
!1106 = !DILocation(line: 761, column: 1, scope: !1074)
!1107 = distinct !DISubprogram(name: "htab_traverse", scope: !3, file: !3, line: 767, type: !1075, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1108)
!1108 = !{!1109, !1110, !1111, !1112}
!1109 = !DILocalVariable(name: "htab", arg: 1, scope: !1107, file: !3, line: 767, type: !21)
!1110 = !DILocalVariable(name: "callback", arg: 2, scope: !1107, file: !3, line: 767, type: !1077)
!1111 = !DILocalVariable(name: "info", arg: 3, scope: !1107, file: !3, line: 767, type: !16)
!1112 = !DILocalVariable(name: "size", scope: !1107, file: !3, line: 769, type: !46)
!1113 = !DILocation(line: 0, scope: !1107)
!1114 = !DILocation(line: 769, column: 17, scope: !1107)
!1115 = !DILocation(line: 770, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 770, column: 7)
!1117 = !DILocation(line: 770, column: 28, scope: !1116)
!1118 = !DILocation(line: 770, column: 32, scope: !1116)
!1119 = !DILocation(line: 770, column: 47, scope: !1116)
!1120 = !DILocation(line: 770, column: 39, scope: !1116)
!1121 = !DILocation(line: 771, column: 5, scope: !1116)
!1122 = !DILocation(line: 773, column: 3, scope: !1107)
!1123 = !DILocation(line: 774, column: 1, scope: !1107)
!1124 = distinct !DISubprogram(name: "htab_collisions", scope: !3, file: !3, line: 780, type: !1125, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!72, !21}
!1127 = !{!1128}
!1128 = !DILocalVariable(name: "htab", arg: 1, scope: !1124, file: !3, line: 780, type: !21)
!1129 = !DILocation(line: 0, scope: !1124)
!1130 = !DILocation(line: 782, column: 13, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 782, column: 7)
!1132 = !DILocation(line: 782, column: 22, scope: !1131)
!1133 = !DILocation(line: 782, column: 7, scope: !1124)
!1134 = !DILocation(line: 785, column: 25, scope: !1124)
!1135 = !DILocation(line: 785, column: 10, scope: !1124)
!1136 = !DILocation(line: 785, column: 38, scope: !1124)
!1137 = !DILocation(line: 785, column: 36, scope: !1124)
!1138 = !DILocation(line: 785, column: 3, scope: !1124)
!1139 = !DILocation(line: 786, column: 1, scope: !1124)
!1140 = distinct !DISubprogram(name: "htab_hash_string", scope: !3, file: !3, line: 814, type: !28, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1141)
!1141 = !{!1142, !1143, !1144, !1145}
!1142 = !DILocalVariable(name: "p", arg: 1, scope: !1140, file: !3, line: 814, type: !31)
!1143 = !DILocalVariable(name: "str", scope: !1140, file: !3, line: 816, type: !73)
!1144 = !DILocalVariable(name: "r", scope: !1140, file: !3, line: 817, type: !30)
!1145 = !DILocalVariable(name: "c", scope: !1140, file: !3, line: 818, type: !20)
!1146 = !DILocation(line: 0, scope: !1140)
!1147 = !DILocation(line: 820, column: 3, scope: !1140)
!1148 = !DILocation(line: 820, column: 15, scope: !1140)
!1149 = !DILocation(line: 820, column: 23, scope: !1140)
!1150 = !DILocation(line: 820, column: 19, scope: !1140)
!1151 = !DILocation(line: 821, column: 11, scope: !1140)
!1152 = !DILocation(line: 821, column: 18, scope: !1140)
!1153 = !DILocation(line: 821, column: 16, scope: !1140)
!1154 = !DILocation(line: 821, column: 20, scope: !1140)
!1155 = distinct !{!1155, !1147, !1156}
!1156 = !DILocation(line: 821, column: 22, scope: !1140)
!1157 = !DILocation(line: 823, column: 3, scope: !1140)
!1158 = distinct !DISubprogram(name: "iterative_hash", scope: !3, file: !3, line: 904, type: !1159, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1161)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!30, !31, !46, !30}
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1162 = !DILocalVariable(name: "k_in", arg: 1, scope: !1158, file: !3, line: 904, type: !31)
!1163 = !DILocalVariable(name: "length", arg: 2, scope: !1158, file: !3, line: 905, type: !46)
!1164 = !DILocalVariable(name: "initval", arg: 3, scope: !1158, file: !3, line: 906, type: !30)
!1165 = !DILocalVariable(name: "k", scope: !1158, file: !3, line: 909, type: !73)
!1166 = !DILocalVariable(name: "a", scope: !1158, file: !3, line: 910, type: !30)
!1167 = !DILocalVariable(name: "b", scope: !1158, file: !3, line: 910, type: !30)
!1168 = !DILocalVariable(name: "c", scope: !1158, file: !3, line: 910, type: !30)
!1169 = !DILocalVariable(name: "len", scope: !1158, file: !3, line: 910, type: !30)
!1170 = !DILocation(line: 0, scope: !1158)
!1171 = !DILocation(line: 913, column: 9, scope: !1158)
!1172 = !DILocation(line: 922, column: 36, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 922, column: 7)
!1174 = !DILocation(line: 922, column: 46, scope: !1173)
!1175 = !DILocation(line: 922, column: 50, scope: !1173)
!1176 = !DILocation(line: 922, column: 7, scope: !1158)
!1177 = !DILocation(line: 933, column: 5, scope: !1173)
!1178 = !DILocation(line: 923, column: 5, scope: !1173)
!1179 = !DILocation(line: 923, column: 16, scope: !1173)
!1180 = !DILocation(line: 925, column: 7, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 924, column: 7)
!1182 = !DILocation(line: 925, column: 4, scope: !1181)
!1183 = !DILocation(line: 926, column: 23, scope: !1181)
!1184 = !DILocation(line: 926, column: 7, scope: !1181)
!1185 = !DILocation(line: 926, column: 4, scope: !1181)
!1186 = !DILocation(line: 927, column: 23, scope: !1181)
!1187 = !DILocation(line: 927, column: 7, scope: !1181)
!1188 = !DILocation(line: 927, column: 4, scope: !1181)
!1189 = !DILocation(line: 928, column: 2, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 928, column: 2)
!1191 = !DILocation(line: 929, column: 4, scope: !1181)
!1192 = !DILocation(line: 929, column: 15, scope: !1181)
!1193 = distinct !{!1193, !1178, !1194}
!1194 = !DILocation(line: 930, column: 7, scope: !1173)
!1195 = !DILocation(line: 933, column: 16, scope: !1173)
!1196 = !DILocation(line: 935, column: 8, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 934, column: 7)
!1198 = !DILocation(line: 935, column: 26, scope: !1197)
!1199 = !DILocation(line: 935, column: 15, scope: !1197)
!1200 = !DILocation(line: 935, column: 30, scope: !1197)
!1201 = !DILocation(line: 935, column: 13, scope: !1197)
!1202 = !DILocation(line: 935, column: 48, scope: !1197)
!1203 = !DILocation(line: 935, column: 37, scope: !1197)
!1204 = !DILocation(line: 935, column: 52, scope: !1197)
!1205 = !DILocation(line: 935, column: 35, scope: !1197)
!1206 = !DILocation(line: 935, column: 71, scope: !1197)
!1207 = !DILocation(line: 935, column: 60, scope: !1197)
!1208 = !DILocation(line: 935, column: 75, scope: !1197)
!1209 = !DILocation(line: 935, column: 58, scope: !1197)
!1210 = !DILocation(line: 935, column: 4, scope: !1197)
!1211 = !DILocation(line: 936, column: 8, scope: !1197)
!1212 = !DILocation(line: 936, column: 26, scope: !1197)
!1213 = !DILocation(line: 936, column: 15, scope: !1197)
!1214 = !DILocation(line: 936, column: 30, scope: !1197)
!1215 = !DILocation(line: 936, column: 13, scope: !1197)
!1216 = !DILocation(line: 936, column: 48, scope: !1197)
!1217 = !DILocation(line: 936, column: 37, scope: !1197)
!1218 = !DILocation(line: 936, column: 52, scope: !1197)
!1219 = !DILocation(line: 936, column: 35, scope: !1197)
!1220 = !DILocation(line: 936, column: 71, scope: !1197)
!1221 = !DILocation(line: 936, column: 60, scope: !1197)
!1222 = !DILocation(line: 936, column: 75, scope: !1197)
!1223 = !DILocation(line: 936, column: 58, scope: !1197)
!1224 = !DILocation(line: 936, column: 4, scope: !1197)
!1225 = !DILocation(line: 937, column: 8, scope: !1197)
!1226 = !DILocation(line: 937, column: 26, scope: !1197)
!1227 = !DILocation(line: 937, column: 15, scope: !1197)
!1228 = !DILocation(line: 937, column: 30, scope: !1197)
!1229 = !DILocation(line: 937, column: 13, scope: !1197)
!1230 = !DILocation(line: 937, column: 48, scope: !1197)
!1231 = !DILocation(line: 937, column: 37, scope: !1197)
!1232 = !DILocation(line: 937, column: 53, scope: !1197)
!1233 = !DILocation(line: 937, column: 35, scope: !1197)
!1234 = !DILocation(line: 937, column: 71, scope: !1197)
!1235 = !DILocation(line: 937, column: 60, scope: !1197)
!1236 = !DILocation(line: 937, column: 76, scope: !1197)
!1237 = !DILocation(line: 937, column: 58, scope: !1197)
!1238 = !DILocation(line: 937, column: 4, scope: !1197)
!1239 = !DILocation(line: 938, column: 2, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 938, column: 2)
!1241 = !DILocation(line: 939, column: 4, scope: !1197)
!1242 = !DILocation(line: 939, column: 15, scope: !1197)
!1243 = distinct !{!1243, !1177, !1244}
!1244 = !DILocation(line: 940, column: 7, scope: !1173)
!1245 = !DILocation(line: 943, column: 5, scope: !1158)
!1246 = !DILocation(line: 914, column: 5, scope: !1158)
!1247 = !DILocation(line: 909, column: 33, scope: !1158)
!1248 = !DILocation(line: 914, column: 9, scope: !1158)
!1249 = !DILocation(line: 915, column: 5, scope: !1158)
!1250 = !DILocation(line: 913, column: 7, scope: !1158)
!1251 = !DILocation(line: 944, column: 3, scope: !1158)
!1252 = !DILocation(line: 946, column: 29, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 945, column: 5)
!1254 = !DILocation(line: 946, column: 18, scope: !1253)
!1255 = !DILocation(line: 946, column: 34, scope: !1253)
!1256 = !DILocation(line: 946, column: 15, scope: !1253)
!1257 = !DILocation(line: 946, column: 14, scope: !1253)
!1258 = !DILocation(line: 947, column: 29, scope: !1253)
!1259 = !DILocation(line: 947, column: 18, scope: !1253)
!1260 = !DILocation(line: 947, column: 33, scope: !1253)
!1261 = !DILocation(line: 947, column: 15, scope: !1253)
!1262 = !DILocation(line: 947, column: 14, scope: !1253)
!1263 = !DILocation(line: 948, column: 29, scope: !1253)
!1264 = !DILocation(line: 948, column: 18, scope: !1253)
!1265 = !DILocation(line: 948, column: 33, scope: !1253)
!1266 = !DILocation(line: 948, column: 15, scope: !1253)
!1267 = !DILocation(line: 948, column: 14, scope: !1253)
!1268 = !DILocation(line: 950, column: 29, scope: !1253)
!1269 = !DILocation(line: 950, column: 18, scope: !1253)
!1270 = !DILocation(line: 950, column: 33, scope: !1253)
!1271 = !DILocation(line: 950, column: 15, scope: !1253)
!1272 = !DILocation(line: 950, column: 14, scope: !1253)
!1273 = !DILocation(line: 951, column: 29, scope: !1253)
!1274 = !DILocation(line: 951, column: 18, scope: !1253)
!1275 = !DILocation(line: 951, column: 33, scope: !1253)
!1276 = !DILocation(line: 951, column: 15, scope: !1253)
!1277 = !DILocation(line: 951, column: 14, scope: !1253)
!1278 = !DILocation(line: 952, column: 29, scope: !1253)
!1279 = !DILocation(line: 952, column: 18, scope: !1253)
!1280 = !DILocation(line: 952, column: 33, scope: !1253)
!1281 = !DILocation(line: 952, column: 15, scope: !1253)
!1282 = !DILocation(line: 952, column: 14, scope: !1253)
!1283 = !DILocation(line: 953, column: 17, scope: !1253)
!1284 = !DILocation(line: 953, column: 15, scope: !1253)
!1285 = !DILocation(line: 953, column: 14, scope: !1253)
!1286 = !DILocation(line: 954, column: 29, scope: !1253)
!1287 = !DILocation(line: 954, column: 18, scope: !1253)
!1288 = !DILocation(line: 954, column: 33, scope: !1253)
!1289 = !DILocation(line: 954, column: 15, scope: !1253)
!1290 = !DILocation(line: 954, column: 14, scope: !1253)
!1291 = !DILocation(line: 955, column: 29, scope: !1253)
!1292 = !DILocation(line: 955, column: 18, scope: !1253)
!1293 = !DILocation(line: 955, column: 33, scope: !1253)
!1294 = !DILocation(line: 955, column: 15, scope: !1253)
!1295 = !DILocation(line: 955, column: 14, scope: !1253)
!1296 = !DILocation(line: 956, column: 29, scope: !1253)
!1297 = !DILocation(line: 956, column: 18, scope: !1253)
!1298 = !DILocation(line: 956, column: 33, scope: !1253)
!1299 = !DILocation(line: 956, column: 15, scope: !1253)
!1300 = !DILocation(line: 956, column: 14, scope: !1253)
!1301 = !DILocation(line: 957, column: 17, scope: !1253)
!1302 = !DILocation(line: 957, column: 15, scope: !1253)
!1303 = !DILocation(line: 959, column: 5, scope: !1253)
!1304 = !DILocation(line: 960, column: 3, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 960, column: 3)
!1306 = !DILocation(line: 962, column: 3, scope: !1158)
!1307 = distinct !DISubprogram(name: "htab_mod_1", scope: !3, file: !3, line: 246, type: !1308, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1310)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!30, !30, !30, !30, !12}
!1310 = !{!1311, !1312, !1313, !1314}
!1311 = !DILocalVariable(name: "x", arg: 1, scope: !1307, file: !3, line: 246, type: !30)
!1312 = !DILocalVariable(name: "y", arg: 2, scope: !1307, file: !3, line: 246, type: !30)
!1313 = !DILocalVariable(name: "inv", arg: 3, scope: !1307, file: !3, line: 246, type: !30)
!1314 = !DILocalVariable(name: "shift", arg: 4, scope: !1307, file: !3, line: 246, type: !12)
!1315 = !DILocation(line: 0, scope: !1307)
!1316 = !DILocation(line: 268, column: 12, scope: !1307)
!1317 = !DILocation(line: 268, column: 3, scope: !1307)
!1318 = distinct !DISubprogram(name: "find_empty_slot_for_expand", scope: !3, file: !3, line: 463, type: !1319, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1321)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!44, !21, !30}
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327}
!1322 = !DILocalVariable(name: "htab", arg: 1, scope: !1318, file: !3, line: 463, type: !21)
!1323 = !DILocalVariable(name: "hash", arg: 2, scope: !1318, file: !3, line: 463, type: !30)
!1324 = !DILocalVariable(name: "index", scope: !1318, file: !3, line: 465, type: !30)
!1325 = !DILocalVariable(name: "size", scope: !1318, file: !3, line: 466, type: !46)
!1326 = !DILocalVariable(name: "slot", scope: !1318, file: !3, line: 467, type: !44)
!1327 = !DILocalVariable(name: "hash2", scope: !1318, file: !3, line: 468, type: !30)
!1328 = !DILocation(line: 0, scope: !1318)
!1329 = !DILocation(line: 465, column: 21, scope: !1318)
!1330 = !DILocation(line: 466, column: 17, scope: !1318)
!1331 = !DILocation(line: 467, column: 21, scope: !1318)
!1332 = !DILocation(line: 467, column: 29, scope: !1318)
!1333 = !DILocation(line: 470, column: 7, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 470, column: 7)
!1335 = !DILocation(line: 470, column: 13, scope: !1334)
!1336 = !DILocation(line: 470, column: 7, scope: !1318)
!1337 = !DILocation(line: 472, column: 18, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 472, column: 12)
!1339 = !DILocation(line: 472, column: 12, scope: !1334)
!1340 = !DILocation(line: 473, column: 5, scope: !1338)
!1341 = !DILocation(line: 475, column: 11, scope: !1318)
!1342 = !DILocation(line: 0, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 477, column: 5)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 476, column: 3)
!1345 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 476, column: 3)
!1346 = !DILocation(line: 476, column: 3, scope: !1318)
!1347 = !DILocation(line: 478, column: 13, scope: !1343)
!1348 = !DILocation(line: 479, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 479, column: 11)
!1350 = !DILocation(line: 479, column: 17, scope: !1349)
!1351 = !DILocation(line: 479, column: 11, scope: !1343)
!1352 = !DILocation(line: 482, column: 20, scope: !1343)
!1353 = !DILocation(line: 482, column: 28, scope: !1343)
!1354 = !DILocation(line: 483, column: 11, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 483, column: 11)
!1356 = !DILocation(line: 483, column: 17, scope: !1355)
!1357 = !DILocation(line: 483, column: 11, scope: !1343)
!1358 = !DILocation(line: 485, column: 22, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 485, column: 16)
!1360 = !DILocation(line: 485, column: 16, scope: !1355)
!1361 = !DILocation(line: 486, column: 2, scope: !1359)
!1362 = !DILocation(line: 476, column: 3, scope: !1344)
!1363 = distinct !{!1363, !1364, !1365}
!1364 = !DILocation(line: 476, column: 3, scope: !1345)
!1365 = !DILocation(line: 487, column: 5, scope: !1345)
!1366 = !DILocation(line: 488, column: 1, scope: !1318)
