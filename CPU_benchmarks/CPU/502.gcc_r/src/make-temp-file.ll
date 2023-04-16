; ModuleID = 'make-temp-file.bc'
source_filename = "make-temp-file.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@memoized_tmpdir = internal unnamed_addr global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@vartmp = internal constant [9 x i8] c"/var/tmp\00", align 1, !dbg !16
@usrtmp = internal constant [9 x i8] c"/usr/tmp\00", align 1, !dbg !21
@tmp = internal constant [5 x i8] c"/tmp\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ccXXXXXX\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"Cannot create temporary file in %s: %s\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !32 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !46, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !49
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !50
  ret i32 %call, !dbg !51
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !52 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !55
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !56
  ret i32 %call, !dbg !57
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !58 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !121, metadata !DIExpression()), !dbg !122
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !123
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !123
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !123
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !123
  %cmp = icmp uge i8* %0, %1, !dbg !123
  %conv1 = zext i1 %cmp to i64, !dbg !123
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !123
  %tobool = icmp eq i64 %expval, 0, !dbg !123
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !123

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !123
  br label %cond.end, !dbg !123

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !123
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !123
  %2 = load i8, i8* %0, align 1, !dbg !123
  %conv3 = zext i8 %2 to i32, !dbg !123
  br label %cond.end, !dbg !123

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !123
  ret i32 %cond, !dbg !124
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !125 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !127, metadata !DIExpression()), !dbg !128
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !129
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !129
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !129
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !129
  %cmp = icmp uge i8* %0, %1, !dbg !129
  %conv1 = zext i1 %cmp to i64, !dbg !129
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !129
  %tobool = icmp eq i64 %expval, 0, !dbg !129
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !129

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !129
  br label %cond.end, !dbg !129

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !129
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !129
  %2 = load i8, i8* %0, align 1, !dbg !129
  %conv3 = zext i8 %2 to i32, !dbg !129
  br label %cond.end, !dbg !129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !129
  ret i32 %cond, !dbg !130
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !131 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !132
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !132
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !132
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !132
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !132
  %cmp = icmp uge i8* %1, %2, !dbg !132
  %conv1 = zext i1 %cmp to i64, !dbg !132
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !132
  %tobool = icmp eq i64 %expval, 0, !dbg !132
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !132

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !132
  br label %cond.end, !dbg !132

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !132
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !132
  %3 = load i8, i8* %1, align 1, !dbg !132
  %conv3 = zext i8 %3 to i32, !dbg !132
  br label %cond.end, !dbg !132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !132
  ret i32 %cond, !dbg !133
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !134 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !140
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !141
  ret i32 %call, !dbg !142
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !148, metadata !DIExpression()), !dbg !149
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !150
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !150
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !150
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !150
  %cmp = icmp uge i8* %0, %1, !dbg !150
  %conv1 = zext i1 %cmp to i64, !dbg !150
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !150
  %tobool = icmp eq i64 %expval, 0, !dbg !150
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !150

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !150
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !150
  br label %cond.end, !dbg !150

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !150
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !150
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !150
  store i8 %conv2, i8* %0, align 1, !dbg !150
  %conv6 = and i32 %__c, 255, !dbg !150
  br label %cond.end, !dbg !150

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !150
  ret i32 %cond, !dbg !151
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !152 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !154, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !155, metadata !DIExpression()), !dbg !156
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !157
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !157
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !157
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !157
  %cmp = icmp uge i8* %0, %1, !dbg !157
  %conv1 = zext i1 %cmp to i64, !dbg !157
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !157
  %tobool = icmp eq i64 %expval, 0, !dbg !157
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !157

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !157
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !157
  br label %cond.end, !dbg !157

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !157
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !157
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !157
  store i8 %conv2, i8* %0, align 1, !dbg !157
  %conv6 = and i32 %__c, 255, !dbg !157
  br label %cond.end, !dbg !157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !157
  ret i32 %cond, !dbg !158
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !159 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !163
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !163
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !163
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !163
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !163
  %cmp = icmp uge i8* %1, %2, !dbg !163
  %conv1 = zext i1 %cmp to i64, !dbg !163
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !163
  %tobool = icmp eq i64 %expval, 0, !dbg !163
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !163

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !163
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !163
  br label %cond.end, !dbg !163

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !163
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !163
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !163
  store i8 %conv4, i8* %1, align 1, !dbg !163
  %conv6 = and i32 %__c, 255, !dbg !163
  br label %cond.end, !dbg !163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !163
  ret i32 %cond, !dbg !164
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !165 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64* %__n, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !173, metadata !DIExpression()), !dbg !174
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !175
  ret i64 %call, !dbg !176
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !179, metadata !DIExpression()), !dbg !180
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !181
  %0 = load i32, i32* %_flags, align 8, !dbg !181
  %and = lshr i32 %0, 4, !dbg !181
  %and.lobit = and i32 %and, 1, !dbg !181
  ret i32 %and.lobit, !dbg !182
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !183 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !185, metadata !DIExpression()), !dbg !186
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !187
  %0 = load i32, i32* %_flags, align 8, !dbg !187
  %and = lshr i32 %0, 5, !dbg !187
  %and.lobit = and i32 %and, 1, !dbg !187
  ret i32 %and.lobit, !dbg !188
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !189 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !194, metadata !DIExpression()), !dbg !195
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !196
  %conv = trunc i64 %call to i32, !dbg !197
  ret i32 %conv, !dbg !198
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !199 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !203, metadata !DIExpression()), !dbg !204
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !205
  ret i64 %call, !dbg !206
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !207 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !212, metadata !DIExpression()), !dbg !213
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !214
  ret i64 %call, !dbg !215
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !227, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i8* %__base, metadata !228, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !229, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i64 %__size, metadata !230, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !231, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !233, metadata !DIExpression()), !dbg !237
  br label %while.cond, !dbg !238

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !239
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !237
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !233, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !232, metadata !DIExpression()), !dbg !237
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !240
  br i1 %cmp, label %while.body, label %cleanup, !dbg !238

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !241
  %div = lshr i64 %add, 1, !dbg !243
  call void @llvm.dbg.value(metadata i64 %div, metadata !234, metadata !DIExpression()), !dbg !237
  %mul = mul i64 %div, %__size, !dbg !244
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !245
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !235, metadata !DIExpression()), !dbg !237
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !246
  call void @llvm.dbg.value(metadata i32 %call, metadata !236, metadata !DIExpression()), !dbg !237
  %cmp1 = icmp slt i32 %call, 0, !dbg !247
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !249

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !250
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !252

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !253
  call void @llvm.dbg.value(metadata i64 %add4, metadata !232, metadata !DIExpression()), !dbg !237
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !237
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !237
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !233, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !232, metadata !DIExpression()), !dbg !237
  br label %while.cond, !dbg !238, !llvm.loop !254

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !237
  ret i8* %retval.0, !dbg !256
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !257 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !263, metadata !DIExpression()), !dbg !264
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !265
  ret double %call, !dbg !266
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @choose_tmpdir() local_unnamed_addr #3 !dbg !267 {
entry:
  %0 = load i8*, i8** @memoized_tmpdir, align 8, !dbg !276
  %tobool = icmp eq i8* %0, null, !dbg !276
  br i1 %tobool, label %if.then, label %if.end18, !dbg !277

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* null, metadata !271, metadata !DIExpression()), !dbg !278
  %call = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #5, !dbg !279
  %call1 = tail call fastcc i8* @try_dir(i8* %call, i8* null) #6, !dbg !280
  call void @llvm.dbg.value(metadata i8* %call1, metadata !271, metadata !DIExpression()), !dbg !278
  %call2 = tail call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !281
  %call3 = tail call fastcc i8* @try_dir(i8* %call2, i8* %call1) #6, !dbg !282
  call void @llvm.dbg.value(metadata i8* %call3, metadata !271, metadata !DIExpression()), !dbg !278
  %call4 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !283
  %call5 = tail call fastcc i8* @try_dir(i8* %call4, i8* %call3) #6, !dbg !284
  call void @llvm.dbg.value(metadata i8* %call5, metadata !271, metadata !DIExpression()), !dbg !278
  %call6 = tail call fastcc i8* @try_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %call5) #6, !dbg !285
  call void @llvm.dbg.value(metadata i8* %call6, metadata !271, metadata !DIExpression()), !dbg !278
  %call7 = tail call fastcc i8* @try_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @vartmp, i64 0, i64 0), i8* %call6) #6, !dbg !286
  call void @llvm.dbg.value(metadata i8* %call7, metadata !271, metadata !DIExpression()), !dbg !278
  %call8 = tail call fastcc i8* @try_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @usrtmp, i64 0, i64 0), i8* %call7) #6, !dbg !287
  call void @llvm.dbg.value(metadata i8* %call8, metadata !271, metadata !DIExpression()), !dbg !278
  %call9 = tail call fastcc i8* @try_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @tmp, i64 0, i64 0), i8* %call8) #6, !dbg !288
  call void @llvm.dbg.value(metadata i8* %call9, metadata !271, metadata !DIExpression()), !dbg !278
  %cmp = icmp eq i8* %call9, null, !dbg !289
  %spec.select = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %call9, !dbg !291
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !271, metadata !DIExpression()), !dbg !278
  %call11 = tail call i64 @strlen(i8* %spec.select) #5, !dbg !292
  %add = add i64 %call11, 2, !dbg !293
  %conv12 = and i64 %add, 4294967295, !dbg !293
  %call13 = tail call i8* @xmalloc(i64 %conv12) #5, !dbg !293
  call void @llvm.dbg.value(metadata i8* %call13, metadata !274, metadata !DIExpression()), !dbg !278
  %call14 = tail call i8* @strcpy(i8* %call13, i8* %spec.select) #5, !dbg !294
  %idxprom = and i64 %call11, 4294967295, !dbg !295
  %arrayidx = getelementptr inbounds i8, i8* %call13, i64 %idxprom, !dbg !295
  store i8 47, i8* %arrayidx, align 1, !dbg !296
  %add15 = add i64 %call11, 1, !dbg !297
  %idxprom16 = and i64 %add15, 4294967295, !dbg !298
  %arrayidx17 = getelementptr inbounds i8, i8* %call13, i64 %idxprom16, !dbg !298
  store i8 0, i8* %arrayidx17, align 1, !dbg !299
  store i8* %call13, i8** @memoized_tmpdir, align 8, !dbg !300
  br label %if.end18, !dbg !301

if.end18:                                         ; preds = %entry, %if.then
  %1 = phi i8* [ %0, %entry ], [ %call13, %if.then ], !dbg !302
  ret i8* %1, !dbg !303
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @try_dir(i8* %dir, i8* %base) unnamed_addr #0 !dbg !304 {
entry:
  call void @llvm.dbg.value(metadata i8* %dir, metadata !308, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %base, metadata !309, metadata !DIExpression()), !dbg !310
  %cmp = icmp eq i8* %base, null, !dbg !311
  br i1 %cmp, label %if.end, label %return, !dbg !313

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %dir, null, !dbg !314
  br i1 %cmp1, label %if.end4, label %land.lhs.true, !dbg !316

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @access(i8* nonnull %dir, i32 7) #5, !dbg !317
  %cmp2 = icmp eq i32 %call, 0, !dbg !318
  br i1 %cmp2, label %return, label %if.end4, !dbg !319

if.end4:                                          ; preds = %if.end, %land.lhs.true
  br label %return, !dbg !320

return:                                           ; preds = %entry, %land.lhs.true, %if.end4
  %retval.0 = phi i8* [ null, %if.end4 ], [ %base, %entry ], [ %dir, %land.lhs.true ], !dbg !310
  ret i8* %retval.0, !dbg !321
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @make_temp_file(i8* %suffix) local_unnamed_addr #3 !dbg !322 {
entry:
  call void @llvm.dbg.value(metadata i8* %suffix, metadata !326, metadata !DIExpression()), !dbg !332
  %call = tail call i8* @choose_tmpdir() #6, !dbg !333
  call void @llvm.dbg.value(metadata i8* %call, metadata !327, metadata !DIExpression()), !dbg !332
  %cmp = icmp eq i8* %suffix, null, !dbg !334
  %spec.select = select i1 %cmp, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* %suffix, !dbg !336
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !326, metadata !DIExpression()), !dbg !332
  %call1 = tail call i64 @strlen(i8* %call) #5, !dbg !337
  %call2 = tail call i64 @strlen(i8* %spec.select) #5, !dbg !338
  %conv3 = trunc i64 %call2 to i32, !dbg !338
  call void @llvm.dbg.value(metadata i32 %conv3, metadata !330, metadata !DIExpression()), !dbg !332
  %sext = shl i64 %call1, 32, !dbg !339
  %conv4 = ashr exact i64 %sext, 32, !dbg !339
  %add = add nsw i64 %conv4, 8, !dbg !339
  %sext1 = shl i64 %call2, 32, !dbg !339
  %conv5 = ashr exact i64 %sext1, 32, !dbg !339
  %add6 = add nsw i64 %add, %conv5, !dbg !339
  %add7 = add nsw i64 %add6, 1, !dbg !339
  %call8 = tail call i8* @xmalloc(i64 %add7) #5, !dbg !339
  call void @llvm.dbg.value(metadata i8* %call8, metadata !328, metadata !DIExpression()), !dbg !332
  %call9 = tail call i8* @strcpy(i8* %call8, i8* %call) #5, !dbg !340
  %add.ptr = getelementptr inbounds i8, i8* %call8, i64 %conv4, !dbg !341
  %call10 = tail call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !342
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 8, !dbg !343
  %call14 = tail call i8* @strcpy(i8* nonnull %add.ptr13, i8* %spec.select) #5, !dbg !344
  %call15 = tail call i32 @mkstemps(i8* %call8, i32 %conv3) #5, !dbg !345
  call void @llvm.dbg.value(metadata i32 %call15, metadata !331, metadata !DIExpression()), !dbg !332
  %cmp16 = icmp eq i32 %call15, -1, !dbg !346
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !348

if.then18:                                        ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !349
  %call19 = tail call i32* @__errno_location() #5, !dbg !351
  %1 = load i32, i32* %call19, align 4, !dbg !351
  %call20 = tail call i8* @strerror(i32 %1) #5, !dbg !352
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %call, i8* %call20) #5, !dbg !353
  tail call void @abort() #5, !dbg !354
  br label %if.end22, !dbg !355

if.end22:                                         ; preds = %if.then18, %entry
  %call23 = tail call i32 @close(i32 %call15) #5, !dbg !356
  %tobool = icmp eq i32 %call23, 0, !dbg !356
  br i1 %tobool, label %if.end25, label %if.then24, !dbg !358

if.then24:                                        ; preds = %if.end22
  tail call void @abort() #5, !dbg !359
  br label %if.end25, !dbg !359

if.end25:                                         ; preds = %if.end22, %if.then24
  ret i8* %call8, !dbg !360
}

declare dso_local i32 @mkstemps(i8*, i32) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local i8* @strerror(i32) local_unnamed_addr #1

declare dso_local i32* @__errno_location() local_unnamed_addr #1

declare dso_local void @abort() local_unnamed_addr #1

declare dso_local i32 @close(i32) local_unnamed_addr #1

declare dso_local i32 @access(i8*, i32) local_unnamed_addr #1

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
!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "memoized_tmpdir", scope: !2, file: !3, line: 91, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, nameTableKind: None)
!3 = !DIFile(filename: "make-temp-file.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!15 = !{!0, !16, !21, !23}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "vartmp", scope: !2, file: !3, line: 86, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 72, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 9)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "usrtmp", scope: !2, file: !3, line: 84, type: !18, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !3, line: 83, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 40, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 5)
!28 = !{i32 2, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!32 = distinct !DISubprogram(name: "vprintf", scope: !33, file: !33, line: 39, type: !34, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !45)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!34 = !DISubroutineType(types: !35)
!35 = !{!8, !36, !37}
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !39)
!39 = !{!40, !42, !43, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !38, file: !3, baseType: !41, size: 32)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !38, file: !3, baseType: !41, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !38, file: !3, baseType: !12, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !38, file: !3, baseType: !12, size: 64, offset: 128)
!45 = !{!46, !47}
!46 = !DILocalVariable(name: "__fmt", arg: 1, scope: !32, file: !33, line: 39, type: !36)
!47 = !DILocalVariable(name: "__arg", arg: 2, scope: !32, file: !33, line: 39, type: !37)
!48 = !DILocation(line: 0, scope: !32)
!49 = !DILocation(line: 41, column: 20, scope: !32)
!50 = !DILocation(line: 41, column: 10, scope: !32)
!51 = !DILocation(line: 41, column: 3, scope: !32)
!52 = distinct !DISubprogram(name: "getchar", scope: !33, file: !33, line: 47, type: !53, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!53 = !DISubroutineType(types: !54)
!54 = !{!8}
!55 = !DILocation(line: 49, column: 16, scope: !52)
!56 = !DILocation(line: 49, column: 10, scope: !52)
!57 = !DILocation(line: 49, column: 3, scope: !52)
!58 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !33, file: !33, line: 56, type: !59, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!59 = !DISubroutineType(types: !60)
!60 = !{!8, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !82, !84, !85, !86, !90, !92, !94, !98, !101, !103, !106, !109, !110, !111, !115, !116}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 51, baseType: !8, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 54, baseType: !10, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 55, baseType: !10, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 56, baseType: !10, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 57, baseType: !10, size: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 58, baseType: !10, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 59, baseType: !10, size: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 60, baseType: !10, size: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 61, baseType: !10, size: 64, offset: 512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 64, baseType: !10, size: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 65, baseType: !10, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 66, baseType: !10, size: 64, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 36, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 70, baseType: !83, size: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 72, baseType: !8, size: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 73, baseType: !8, size: 32, offset: 928)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !88, line: 152, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!89 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 77, baseType: !91, size: 16, offset: 1024)
!91 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !64, file: !65, line: 78, baseType: !93, size: 8, offset: 1040)
!93 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !64, file: !65, line: 79, baseType: !95, size: 8, offset: 1048)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 1)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !64, file: !65, line: 81, baseType: !99, size: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !65, line: 43, baseType: null)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !65, line: 89, baseType: !102, size: 64, offset: 1152)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !88, line: 153, baseType: !89)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !64, file: !65, line: 91, baseType: !104, size: 64, offset: 1216)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !65, line: 37, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !64, file: !65, line: 92, baseType: !107, size: 64, offset: 1280)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !65, line: 38, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !64, file: !65, line: 93, baseType: !83, size: 64, offset: 1344)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !64, file: !65, line: 94, baseType: !12, size: 64, offset: 1408)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 95, baseType: !112, size: 64, offset: 1472)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !114)
!113 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 96, baseType: !8, size: 32, offset: 1536)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 98, baseType: !117, size: 160, offset: 1568)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 20)
!120 = !{!121}
!121 = !DILocalVariable(name: "__fp", arg: 1, scope: !58, file: !33, line: 56, type: !61)
!122 = !DILocation(line: 0, scope: !58)
!123 = !DILocation(line: 58, column: 10, scope: !58)
!124 = !DILocation(line: 58, column: 3, scope: !58)
!125 = distinct !DISubprogram(name: "getc_unlocked", scope: !33, file: !33, line: 66, type: !59, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !126)
!126 = !{!127}
!127 = !DILocalVariable(name: "__fp", arg: 1, scope: !125, file: !33, line: 66, type: !61)
!128 = !DILocation(line: 0, scope: !125)
!129 = !DILocation(line: 68, column: 10, scope: !125)
!130 = !DILocation(line: 68, column: 3, scope: !125)
!131 = distinct !DISubprogram(name: "getchar_unlocked", scope: !33, file: !33, line: 73, type: !53, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!132 = !DILocation(line: 75, column: 10, scope: !131)
!133 = !DILocation(line: 75, column: 3, scope: !131)
!134 = distinct !DISubprogram(name: "putchar", scope: !33, file: !33, line: 82, type: !135, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{!8, !8}
!137 = !{!138}
!138 = !DILocalVariable(name: "__c", arg: 1, scope: !134, file: !33, line: 82, type: !8)
!139 = !DILocation(line: 0, scope: !134)
!140 = !DILocation(line: 84, column: 21, scope: !134)
!141 = !DILocation(line: 84, column: 10, scope: !134)
!142 = !DILocation(line: 84, column: 3, scope: !134)
!143 = distinct !DISubprogram(name: "fputc_unlocked", scope: !33, file: !33, line: 91, type: !144, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{!8, !8, !61}
!146 = !{!147, !148}
!147 = !DILocalVariable(name: "__c", arg: 1, scope: !143, file: !33, line: 91, type: !8)
!148 = !DILocalVariable(name: "__stream", arg: 2, scope: !143, file: !33, line: 91, type: !61)
!149 = !DILocation(line: 0, scope: !143)
!150 = !DILocation(line: 93, column: 10, scope: !143)
!151 = !DILocation(line: 93, column: 3, scope: !143)
!152 = distinct !DISubprogram(name: "putc_unlocked", scope: !33, file: !33, line: 101, type: !144, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!153 = !{!154, !155}
!154 = !DILocalVariable(name: "__c", arg: 1, scope: !152, file: !33, line: 101, type: !8)
!155 = !DILocalVariable(name: "__stream", arg: 2, scope: !152, file: !33, line: 101, type: !61)
!156 = !DILocation(line: 0, scope: !152)
!157 = !DILocation(line: 103, column: 10, scope: !152)
!158 = !DILocation(line: 103, column: 3, scope: !152)
!159 = distinct !DISubprogram(name: "putchar_unlocked", scope: !33, file: !33, line: 108, type: !135, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!160 = !{!161}
!161 = !DILocalVariable(name: "__c", arg: 1, scope: !159, file: !33, line: 108, type: !8)
!162 = !DILocation(line: 0, scope: !159)
!163 = !DILocation(line: 110, column: 10, scope: !159)
!164 = !DILocation(line: 110, column: 3, scope: !159)
!165 = distinct !DISubprogram(name: "getline", scope: !33, file: !33, line: 118, type: !166, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!166 = !DISubroutineType(types: !167)
!167 = !{!168, !9, !169, !61}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !88, line: 193, baseType: !89)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!170 = !{!171, !172, !173}
!171 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !165, file: !33, line: 118, type: !9)
!172 = !DILocalVariable(name: "__n", arg: 2, scope: !165, file: !33, line: 118, type: !169)
!173 = !DILocalVariable(name: "__stream", arg: 3, scope: !165, file: !33, line: 118, type: !61)
!174 = !DILocation(line: 0, scope: !165)
!175 = !DILocation(line: 120, column: 10, scope: !165)
!176 = !DILocation(line: 120, column: 3, scope: !165)
!177 = distinct !DISubprogram(name: "feof_unlocked", scope: !33, file: !33, line: 128, type: !59, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!178 = !{!179}
!179 = !DILocalVariable(name: "__stream", arg: 1, scope: !177, file: !33, line: 128, type: !61)
!180 = !DILocation(line: 0, scope: !177)
!181 = !DILocation(line: 130, column: 10, scope: !177)
!182 = !DILocation(line: 130, column: 3, scope: !177)
!183 = distinct !DISubprogram(name: "ferror_unlocked", scope: !33, file: !33, line: 135, type: !59, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!184 = !{!185}
!185 = !DILocalVariable(name: "__stream", arg: 1, scope: !183, file: !33, line: 135, type: !61)
!186 = !DILocation(line: 0, scope: !183)
!187 = !DILocation(line: 137, column: 10, scope: !183)
!188 = !DILocation(line: 137, column: 3, scope: !183)
!189 = distinct !DISubprogram(name: "atoi", scope: !190, file: !190, line: 361, type: !191, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!190 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!191 = !DISubroutineType(types: !192)
!192 = !{!8, !13}
!193 = !{!194}
!194 = !DILocalVariable(name: "__nptr", arg: 1, scope: !189, file: !190, line: 361, type: !13)
!195 = !DILocation(line: 0, scope: !189)
!196 = !DILocation(line: 363, column: 16, scope: !189)
!197 = !DILocation(line: 363, column: 10, scope: !189)
!198 = !DILocation(line: 363, column: 3, scope: !189)
!199 = distinct !DISubprogram(name: "atol", scope: !190, file: !190, line: 366, type: !200, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{!89, !13}
!202 = !{!203}
!203 = !DILocalVariable(name: "__nptr", arg: 1, scope: !199, file: !190, line: 366, type: !13)
!204 = !DILocation(line: 0, scope: !199)
!205 = !DILocation(line: 368, column: 10, scope: !199)
!206 = !DILocation(line: 368, column: 3, scope: !199)
!207 = distinct !DISubprogram(name: "atoll", scope: !190, file: !190, line: 373, type: !208, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !211)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !13}
!210 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!211 = !{!212}
!212 = !DILocalVariable(name: "__nptr", arg: 1, scope: !207, file: !190, line: 373, type: !13)
!213 = !DILocation(line: 0, scope: !207)
!214 = !DILocation(line: 375, column: 10, scope: !207)
!215 = !DILocation(line: 375, column: 3, scope: !207)
!216 = distinct !DISubprogram(name: "bsearch", scope: !217, file: !217, line: 20, type: !218, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!218 = !DISubroutineType(types: !219)
!219 = !{!12, !220, !220, !112, !112, !222}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !190, line: 808, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!8, !220, !220}
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!227 = !DILocalVariable(name: "__key", arg: 1, scope: !216, file: !217, line: 20, type: !220)
!228 = !DILocalVariable(name: "__base", arg: 2, scope: !216, file: !217, line: 20, type: !220)
!229 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !216, file: !217, line: 20, type: !112)
!230 = !DILocalVariable(name: "__size", arg: 4, scope: !216, file: !217, line: 20, type: !112)
!231 = !DILocalVariable(name: "__compar", arg: 5, scope: !216, file: !217, line: 21, type: !222)
!232 = !DILocalVariable(name: "__l", scope: !216, file: !217, line: 23, type: !112)
!233 = !DILocalVariable(name: "__u", scope: !216, file: !217, line: 23, type: !112)
!234 = !DILocalVariable(name: "__idx", scope: !216, file: !217, line: 23, type: !112)
!235 = !DILocalVariable(name: "__p", scope: !216, file: !217, line: 24, type: !220)
!236 = !DILocalVariable(name: "__comparison", scope: !216, file: !217, line: 25, type: !8)
!237 = !DILocation(line: 0, scope: !216)
!238 = !DILocation(line: 29, column: 3, scope: !216)
!239 = !DILocation(line: 27, column: 7, scope: !216)
!240 = !DILocation(line: 29, column: 14, scope: !216)
!241 = !DILocation(line: 31, column: 20, scope: !242)
!242 = distinct !DILexicalBlock(scope: !216, file: !217, line: 30, column: 5)
!243 = !DILocation(line: 31, column: 27, scope: !242)
!244 = !DILocation(line: 32, column: 56, scope: !242)
!245 = !DILocation(line: 32, column: 47, scope: !242)
!246 = !DILocation(line: 33, column: 22, scope: !242)
!247 = !DILocation(line: 34, column: 24, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !217, line: 34, column: 11)
!249 = !DILocation(line: 34, column: 11, scope: !242)
!250 = !DILocation(line: 36, column: 29, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !217, line: 36, column: 16)
!252 = !DILocation(line: 36, column: 16, scope: !248)
!253 = !DILocation(line: 37, column: 14, scope: !251)
!254 = distinct !{!254, !238, !255}
!255 = !DILocation(line: 40, column: 5, scope: !216)
!256 = !DILocation(line: 43, column: 1, scope: !216)
!257 = distinct !DISubprogram(name: "atof", scope: !258, file: !258, line: 25, type: !259, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !13}
!261 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!262 = !{!263}
!263 = !DILocalVariable(name: "__nptr", arg: 1, scope: !257, file: !258, line: 25, type: !13)
!264 = !DILocation(line: 0, scope: !257)
!265 = !DILocation(line: 27, column: 10, scope: !257)
!266 = !DILocation(line: 27, column: 3, scope: !257)
!267 = distinct !DISubprogram(name: "choose_tmpdir", scope: !3, file: !3, line: 105, type: !268, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !270)
!268 = !DISubroutineType(types: !269)
!269 = !{!10}
!270 = !{!271, !274, !275}
!271 = !DILocalVariable(name: "base", scope: !272, file: !3, line: 110, type: !13)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 108, column: 5)
!273 = distinct !DILexicalBlock(scope: !267, file: !3, line: 107, column: 7)
!274 = !DILocalVariable(name: "tmpdir", scope: !272, file: !3, line: 111, type: !10)
!275 = !DILocalVariable(name: "len", scope: !272, file: !3, line: 112, type: !41)
!276 = !DILocation(line: 107, column: 8, scope: !273)
!277 = !DILocation(line: 107, column: 7, scope: !267)
!278 = !DILocation(line: 0, scope: !272)
!279 = !DILocation(line: 118, column: 23, scope: !272)
!280 = !DILocation(line: 118, column: 14, scope: !272)
!281 = !DILocation(line: 119, column: 23, scope: !272)
!282 = !DILocation(line: 119, column: 14, scope: !272)
!283 = !DILocation(line: 120, column: 23, scope: !272)
!284 = !DILocation(line: 120, column: 14, scope: !272)
!285 = !DILocation(line: 124, column: 14, scope: !272)
!286 = !DILocation(line: 128, column: 14, scope: !272)
!287 = !DILocation(line: 129, column: 14, scope: !272)
!288 = !DILocation(line: 130, column: 14, scope: !272)
!289 = !DILocation(line: 133, column: 16, scope: !290)
!290 = distinct !DILexicalBlock(scope: !272, file: !3, line: 133, column: 11)
!291 = !DILocation(line: 133, column: 11, scope: !272)
!292 = !DILocation(line: 137, column: 13, scope: !272)
!293 = !DILocation(line: 138, column: 16, scope: !272)
!294 = !DILocation(line: 139, column: 7, scope: !272)
!295 = !DILocation(line: 140, column: 7, scope: !272)
!296 = !DILocation(line: 140, column: 19, scope: !272)
!297 = !DILocation(line: 141, column: 17, scope: !272)
!298 = !DILocation(line: 141, column: 7, scope: !272)
!299 = !DILocation(line: 141, column: 21, scope: !272)
!300 = !DILocation(line: 142, column: 23, scope: !272)
!301 = !DILocation(line: 161, column: 5, scope: !272)
!302 = !DILocation(line: 163, column: 10, scope: !267)
!303 = !DILocation(line: 163, column: 3, scope: !267)
!304 = distinct !DISubprogram(name: "try_dir", scope: !3, file: !3, line: 73, type: !305, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{!13, !13, !13}
!307 = !{!308, !309}
!308 = !DILocalVariable(name: "dir", arg: 1, scope: !304, file: !3, line: 73, type: !13)
!309 = !DILocalVariable(name: "base", arg: 2, scope: !304, file: !3, line: 73, type: !13)
!310 = !DILocation(line: 0, scope: !304)
!311 = !DILocation(line: 75, column: 12, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !3, line: 75, column: 7)
!313 = !DILocation(line: 75, column: 7, scope: !304)
!314 = !DILocation(line: 77, column: 11, scope: !315)
!315 = distinct !DILexicalBlock(scope: !304, file: !3, line: 77, column: 7)
!316 = !DILocation(line: 78, column: 7, scope: !315)
!317 = !DILocation(line: 78, column: 10, scope: !315)
!318 = !DILocation(line: 78, column: 43, scope: !315)
!319 = !DILocation(line: 77, column: 7, scope: !304)
!320 = !DILocation(line: 80, column: 3, scope: !304)
!321 = !DILocation(line: 81, column: 1, scope: !304)
!322 = distinct !DISubprogram(name: "make_temp_file", scope: !3, file: !3, line: 179, type: !323, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{!10, !13}
!325 = !{!326, !327, !328, !329, !330, !331}
!326 = !DILocalVariable(name: "suffix", arg: 1, scope: !322, file: !3, line: 179, type: !13)
!327 = !DILocalVariable(name: "base", scope: !322, file: !3, line: 181, type: !13)
!328 = !DILocalVariable(name: "temp_filename", scope: !322, file: !3, line: 182, type: !10)
!329 = !DILocalVariable(name: "base_len", scope: !322, file: !3, line: 183, type: !8)
!330 = !DILocalVariable(name: "suffix_len", scope: !322, file: !3, line: 183, type: !8)
!331 = !DILocalVariable(name: "fd", scope: !322, file: !3, line: 184, type: !8)
!332 = !DILocation(line: 0, scope: !322)
!333 = !DILocation(line: 181, column: 22, scope: !322)
!334 = !DILocation(line: 186, column: 14, scope: !335)
!335 = distinct !DILexicalBlock(scope: !322, file: !3, line: 186, column: 7)
!336 = !DILocation(line: 186, column: 7, scope: !322)
!337 = !DILocation(line: 189, column: 14, scope: !322)
!338 = !DILocation(line: 190, column: 16, scope: !322)
!339 = !DILocation(line: 192, column: 19, scope: !322)
!340 = !DILocation(line: 195, column: 3, scope: !322)
!341 = !DILocation(line: 196, column: 25, scope: !322)
!342 = !DILocation(line: 196, column: 3, scope: !322)
!343 = !DILocation(line: 197, column: 36, scope: !322)
!344 = !DILocation(line: 197, column: 3, scope: !322)
!345 = !DILocation(line: 199, column: 8, scope: !322)
!346 = !DILocation(line: 201, column: 10, scope: !347)
!347 = distinct !DILexicalBlock(scope: !322, file: !3, line: 201, column: 7)
!348 = !DILocation(line: 201, column: 7, scope: !322)
!349 = !DILocation(line: 203, column: 16, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !3, line: 202, column: 5)
!351 = !DILocation(line: 204, column: 25, scope: !350)
!352 = !DILocation(line: 204, column: 15, scope: !350)
!353 = !DILocation(line: 203, column: 7, scope: !350)
!354 = !DILocation(line: 205, column: 7, scope: !350)
!355 = !DILocation(line: 206, column: 5, scope: !350)
!356 = !DILocation(line: 208, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !322, file: !3, line: 208, column: 7)
!358 = !DILocation(line: 208, column: 7, scope: !322)
!359 = !DILocation(line: 209, column: 5, scope: !357)
!360 = !DILocation(line: 210, column: 3, scope: !322)
