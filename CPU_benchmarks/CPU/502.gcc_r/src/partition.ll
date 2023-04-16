; ModuleID = 'partition.bc'
source_filename = "partition.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, %struct.partition_elem*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !37 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !42, metadata !DIExpression()), !dbg !43
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !44
  %conv = trunc i64 %call to i32, !dbg !45
  ret i32 %conv, !dbg !46
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !52, metadata !DIExpression()), !dbg !53
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !54
  ret i64 %call, !dbg !55
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !56 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !61, metadata !DIExpression()), !dbg !62
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !63
  ret i64 %call, !dbg !64
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !79, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i8* %__base, metadata !80, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !81, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i64 %__size, metadata !82, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !83, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !85, metadata !DIExpression()), !dbg !89
  br label %while.cond, !dbg !90

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !91
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !89
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !85, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !84, metadata !DIExpression()), !dbg !89
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !92
  br i1 %cmp, label %while.body, label %cleanup, !dbg !90

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !93
  %div = lshr i64 %add, 1, !dbg !95
  call void @llvm.dbg.value(metadata i64 %div, metadata !86, metadata !DIExpression()), !dbg !89
  %mul = mul i64 %div, %__size, !dbg !96
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !97
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !87, metadata !DIExpression()), !dbg !89
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !98
  call void @llvm.dbg.value(metadata i32 %call, metadata !88, metadata !DIExpression()), !dbg !89
  %cmp1 = icmp slt i32 %call, 0, !dbg !99
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !101

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !102
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !104

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !105
  call void @llvm.dbg.value(metadata i64 %add4, metadata !84, metadata !DIExpression()), !dbg !89
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !89
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !89
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !85, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !84, metadata !DIExpression()), !dbg !89
  br label %while.cond, !dbg !90, !llvm.loop !106

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !89
  ret i8* %retval.0, !dbg !108
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !115, metadata !DIExpression()), !dbg !116
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !117
  ret double %call, !dbg !118
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !119 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !132, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !135
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !136
  ret i32 %call, !dbg !137
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !138 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !141
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !142
  ret i32 %call, !dbg !143
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !144 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !201, metadata !DIExpression()), !dbg !202
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !203
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !203
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !203
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !203
  %cmp = icmp uge i8* %0, %1, !dbg !203
  %conv1 = zext i1 %cmp to i64, !dbg !203
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !203
  %tobool = icmp eq i64 %expval, 0, !dbg !203
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !203

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !203
  br label %cond.end, !dbg !203

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !203
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !203
  %2 = load i8, i8* %0, align 1, !dbg !203
  %conv3 = zext i8 %2 to i32, !dbg !203
  br label %cond.end, !dbg !203

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !203
  ret i32 %cond, !dbg !204
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !207, metadata !DIExpression()), !dbg !208
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !209
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !209
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !209
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !209
  %cmp = icmp uge i8* %0, %1, !dbg !209
  %conv1 = zext i1 %cmp to i64, !dbg !209
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !209
  %tobool = icmp eq i64 %expval, 0, !dbg !209
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !209

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !209
  br label %cond.end, !dbg !209

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !209
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !209
  %2 = load i8, i8* %0, align 1, !dbg !209
  %conv3 = zext i8 %2 to i32, !dbg !209
  br label %cond.end, !dbg !209

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !209
  ret i32 %cond, !dbg !210
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !211 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !212
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !212
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !212
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !212
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !212
  %cmp = icmp uge i8* %1, %2, !dbg !212
  %conv1 = zext i1 %cmp to i64, !dbg !212
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !212
  %tobool = icmp eq i64 %expval, 0, !dbg !212
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !212

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !212
  br label %cond.end, !dbg !212

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !212
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !212
  %3 = load i8, i8* %1, align 1, !dbg !212
  %conv3 = zext i8 %3 to i32, !dbg !212
  br label %cond.end, !dbg !212

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !212
  ret i32 %cond, !dbg !213
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !214 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !220
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !221
  ret i32 %call, !dbg !222
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !223 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !227, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !228, metadata !DIExpression()), !dbg !229
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !230
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !230
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !230
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !230
  %cmp = icmp uge i8* %0, %1, !dbg !230
  %conv1 = zext i1 %cmp to i64, !dbg !230
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !230
  %tobool = icmp eq i64 %expval, 0, !dbg !230
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !230

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !230
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !230
  br label %cond.end, !dbg !230

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !230
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !230
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !230
  store i8 %conv2, i8* %0, align 1, !dbg !230
  %conv6 = and i32 %__c, 255, !dbg !230
  br label %cond.end, !dbg !230

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !230
  ret i32 %cond, !dbg !231
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !234, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !235, metadata !DIExpression()), !dbg !236
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !237
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !237
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !237
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !237
  %cmp = icmp uge i8* %0, %1, !dbg !237
  %conv1 = zext i1 %cmp to i64, !dbg !237
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !237
  %tobool = icmp eq i64 %expval, 0, !dbg !237
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !237

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !237
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !237
  br label %cond.end, !dbg !237

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !237
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !237
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !237
  store i8 %conv2, i8* %0, align 1, !dbg !237
  %conv6 = and i32 %__c, 255, !dbg !237
  br label %cond.end, !dbg !237

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !237
  ret i32 %cond, !dbg !238
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !239 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !243
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !243
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !243
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !243
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !243
  %cmp = icmp uge i8* %1, %2, !dbg !243
  %conv1 = zext i1 %cmp to i64, !dbg !243
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !243
  %tobool = icmp eq i64 %expval, 0, !dbg !243
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !243

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !243
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !243
  br label %cond.end, !dbg !243

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !243
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !243
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !243
  store i8 %conv4, i8* %1, align 1, !dbg !243
  %conv6 = and i32 %__c, 255, !dbg !243
  br label %cond.end, !dbg !243

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !243
  ret i32 %cond, !dbg !244
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !245 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !251, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64* %__n, metadata !252, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !253, metadata !DIExpression()), !dbg !254
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !255
  ret i64 %call, !dbg !256
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !257 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !259, metadata !DIExpression()), !dbg !260
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !261
  %0 = load i32, i32* %_flags, align 8, !dbg !261
  %and = lshr i32 %0, 4, !dbg !261
  %and.lobit = and i32 %and, 1, !dbg !261
  ret i32 %and.lobit, !dbg !262
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !263 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !265, metadata !DIExpression()), !dbg !266
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !267
  %0 = load i32, i32* %_flags, align 8, !dbg !267
  %and = lshr i32 %0, 5, !dbg !267
  %and.lobit = and i32 %and, 1, !dbg !267
  ret i32 %and.lobit, !dbg !268
}

; Function Attrs: nounwind uwtable
define dso_local %struct.partition_def* @partition_new(i32 %num_elements) local_unnamed_addr #3 !dbg !269 {
entry:
  call void @llvm.dbg.value(metadata i32 %num_elements, metadata !273, metadata !DIExpression()), !dbg !276
  %sub = add nsw i32 %num_elements, -1, !dbg !277
  %conv = sext i32 %sub to i64, !dbg !278
  %mul = mul nsw i64 %conv, 24, !dbg !279
  %add = add nsw i64 %mul, 32, !dbg !280
  %call = tail call i8* @xmalloc(i64 %add) #5, !dbg !281
  call void @llvm.dbg.value(metadata %struct.partition_def* %3, metadata !275, metadata !DIExpression()), !dbg !276
  %num_elements1 = bitcast i8* %call to i32*, !dbg !282
  store i32 %num_elements, i32* %num_elements1, align 8, !dbg !283
  call void @llvm.dbg.value(metadata i32 0, metadata !274, metadata !DIExpression()), !dbg !276
  %elements = getelementptr inbounds i8, i8* %call, i64 8, !dbg !284
  %0 = bitcast i8* %elements to [1 x %struct.partition_elem]*, !dbg !284
  %1 = sext i32 %num_elements to i64, !dbg !288
  br label %for.cond, !dbg !288

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !289
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !274, metadata !DIExpression()), !dbg !276
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !290
  br i1 %cmp, label %for.body, label %for.end, !dbg !291

for.body:                                         ; preds = %for.cond
  %class_element = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %0, i64 0, i64 %indvars.iv, i32 0, !dbg !292
  %2 = trunc i64 %indvars.iv to i32, !dbg !293
  store i32 %2, i32* %class_element, align 8, !dbg !293
  %arrayidx5 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %0, i64 0, i64 %indvars.iv, !dbg !294
  %next = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %0, i64 0, i64 %indvars.iv, i32 1, !dbg !295
  store %struct.partition_elem* %arrayidx5, %struct.partition_elem** %next, align 8, !dbg !296
  %class_count = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %0, i64 0, i64 %indvars.iv, i32 2, !dbg !297
  store i32 1, i32* %class_count, align 8, !dbg !298
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !299
  call void @llvm.dbg.value(metadata i32 undef, metadata !274, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !276
  br label %for.cond, !dbg !300, !llvm.loop !301

for.end:                                          ; preds = %for.cond
  %3 = bitcast i8* %call to %struct.partition_def*, !dbg !303
  ret %struct.partition_def* %3, !dbg !304
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @partition_delete(%struct.partition_def* %part) local_unnamed_addr #3 !dbg !305 {
entry:
  call void @llvm.dbg.value(metadata %struct.partition_def* %part, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = bitcast %struct.partition_def* %part to i8*, !dbg !311
  tail call void @free(i8* %0) #5, !dbg !312
  ret void, !dbg !313
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @partition_union(%struct.partition_def* %part, i32 %elem1, i32 %elem2) local_unnamed_addr #3 !dbg !314 {
entry:
  call void @llvm.dbg.value(metadata %struct.partition_def* %part, metadata !318, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %elem1, metadata !319, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %elem2, metadata !320, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata %struct.partition_def* %part, metadata !321, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !330
  %idxprom = sext i32 %elem1 to i64, !dbg !331
  %class_element2 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom, i32 0, !dbg !332
  %0 = load i32, i32* %class_element2, align 8, !dbg !332
  call void @llvm.dbg.value(metadata i32 %0, metadata !326, metadata !DIExpression()), !dbg !330
  %idxprom3 = sext i32 %elem2 to i64, !dbg !333
  %class_element5 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom3, i32 0, !dbg !335
  %1 = load i32, i32* %class_element5, align 8, !dbg !335
  %cmp = icmp eq i32 %0, %1, !dbg !336
  br i1 %cmp, label %cleanup, label %if.end, !dbg !337

if.end:                                           ; preds = %entry
  %class_count = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom, i32 2, !dbg !338
  %2 = load i32, i32* %class_count, align 8, !dbg !338
  %class_count10 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom3, i32 2, !dbg !339
  %3 = load i32, i32* %class_count10, align 8, !dbg !339
  %cmp11 = icmp ult i32 %2, %3, !dbg !340
  br i1 %cmp11, label %if.then12, label %if.end16, !dbg !341

if.then12:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %elem1, metadata !327, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 %elem2, metadata !319, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %elem1, metadata !320, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i32 %1, metadata !326, metadata !DIExpression()), !dbg !330
  br label %if.end16, !dbg !343

if.end16:                                         ; preds = %if.then12, %if.end
  %idxprom19.pre-phi = phi i64 [ %idxprom, %if.then12 ], [ %idxprom3, %if.end ], !dbg !344
  %idxprom17.pre-phi = phi i64 [ %idxprom3, %if.then12 ], [ %idxprom, %if.end ], !dbg !345
  %class_element.0 = phi i32 [ %1, %if.then12 ], [ %0, %if.end ], !dbg !330
  call void @llvm.dbg.value(metadata i32 %class_element.0, metadata !326, metadata !DIExpression()), !dbg !330
  %arrayidx20 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom19.pre-phi, !dbg !344
  call void @llvm.dbg.value(metadata %struct.partition_elem* %arrayidx20, metadata !323, metadata !DIExpression()), !dbg !330
  %class_element21 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx20, i64 0, i32 0, !dbg !346
  %4 = load i32, i32* %class_element21, align 8, !dbg !346
  %idxprom22 = sext i32 %4 to i64, !dbg !347
  %class_count24 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom22, i32 2, !dbg !348
  %5 = load i32, i32* %class_count24, align 8, !dbg !348
  %idxprom25 = sext i32 %class_element.0 to i64, !dbg !349
  %class_count27 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom25, i32 2, !dbg !350
  %6 = load i32, i32* %class_count27, align 8, !dbg !351
  %add = add i32 %6, %5, !dbg !351
  store i32 %add, i32* %class_count27, align 8, !dbg !351
  store i32 %class_element.0, i32* %class_element21, align 8, !dbg !352
  %next = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom19.pre-phi, i32 1, !dbg !353
  br label %for.cond, !dbg !355

for.cond:                                         ; preds = %for.body, %if.end16
  %p.0.in = phi %struct.partition_elem** [ %next, %if.end16 ], [ %next31, %for.body ]
  %p.0 = load %struct.partition_elem*, %struct.partition_elem** %p.0.in, align 8, !dbg !356
  call void @llvm.dbg.value(metadata %struct.partition_elem* %p.0, metadata !324, metadata !DIExpression()), !dbg !330
  %cmp29 = icmp eq %struct.partition_elem* %p.0, %arrayidx20, !dbg !357
  br i1 %cmp29, label %for.end, label %for.body, !dbg !359

for.body:                                         ; preds = %for.cond
  %class_element30 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %p.0, i64 0, i32 0, !dbg !360
  store i32 %class_element.0, i32* %class_element30, align 8, !dbg !361
  %next31 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %p.0, i64 0, i32 1, !dbg !362
  br label %for.cond, !dbg !363, !llvm.loop !364

for.end:                                          ; preds = %for.cond
  %next32 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom17.pre-phi, i32 1, !dbg !366
  %7 = bitcast %struct.partition_elem** %next32 to i64*, !dbg !366
  %8 = load i64, i64* %7, align 8, !dbg !366
  %9 = bitcast %struct.partition_elem** %next to i64*, !dbg !367
  %10 = load i64, i64* %9, align 8, !dbg !367
  store i64 %10, i64* %7, align 8, !dbg !368
  store i64 %8, i64* %9, align 8, !dbg !369
  br label %cleanup, !dbg !370

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %class_element.0, %for.end ], [ %0, %entry ], !dbg !330
  ret i32 %retval.0, !dbg !371
}

; Function Attrs: nounwind uwtable
define dso_local void @partition_print(%struct.partition_def* %part, %struct._IO_FILE* %fp) local_unnamed_addr #3 !dbg !372 {
entry:
  call void @llvm.dbg.value(metadata %struct.partition_def* %part, metadata !376, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !377, metadata !DIExpression()), !dbg !390
  %num_elements1 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 0, !dbg !391
  %0 = load i32, i32* %num_elements1, align 8, !dbg !391
  call void @llvm.dbg.value(metadata i32 %0, metadata !379, metadata !DIExpression()), !dbg !390
  %arraydecay = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 0, !dbg !392
  call void @llvm.dbg.value(metadata %struct.partition_elem* %arraydecay, metadata !380, metadata !DIExpression()), !dbg !390
  %conv = sext i32 %0 to i64, !dbg !393
  %call = tail call i8* @xmalloc(i64 %conv) #5, !dbg !394
  call void @llvm.dbg.value(metadata i8* %call, metadata !378, metadata !DIExpression()), !dbg !390
  %call4 = tail call i8* @memset(i8* %call, i32 0, i64 %conv) #5, !dbg !395
  %mul = shl nsw i64 %conv, 2, !dbg !396
  %call6 = tail call i8* @xmalloc(i64 %mul) #5, !dbg !397
  %1 = bitcast i8* %call6 to i32*, !dbg !398
  call void @llvm.dbg.value(metadata i32* %1, metadata !381, metadata !DIExpression()), !dbg !390
  %call7 = tail call i32 @fputc(i32 91, %struct._IO_FILE* %fp) #5, !dbg !399
  call void @llvm.dbg.value(metadata i32 0, metadata !382, metadata !DIExpression()), !dbg !390
  %sub.ptr.rhs.cast = ptrtoint %struct.partition_elem* %arraydecay to i64, !dbg !400
  %2 = sext i32 %0 to i64, !dbg !404
  br label %for.cond, !dbg !404

for.cond:                                         ; preds = %for.inc39, %entry
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc39 ], [ 0, %entry ], !dbg !405
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !382, metadata !DIExpression()), !dbg !390
  %cmp = icmp slt i64 %indvars.iv3, %2, !dbg !406
  br i1 %cmp, label %for.body, label %for.end41, !dbg !407

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %indvars.iv3, !dbg !408
  %3 = load i8, i8* %arrayidx, align 1, !dbg !408
  %tobool = icmp eq i8 %3, 0, !dbg !408
  br i1 %tobool, label %if.then, label %for.inc39, !dbg !409

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !383, metadata !DIExpression()), !dbg !410
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %indvars.iv3, i32 0, !dbg !411
  %4 = load i32, i32* %class_element, align 8, !dbg !411
  %idxprom11 = sext i32 %4 to i64, !dbg !412
  %class_count = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom11, i32 2, !dbg !413
  %5 = load i32, i32* %class_count, align 8, !dbg !413
  call void @llvm.dbg.value(metadata i32 %5, metadata !388, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i32 0, metadata !389, metadata !DIExpression()), !dbg !410
  %6 = sext i32 %5 to i64, !dbg !414
  br label %for.cond13, !dbg !414

for.cond13:                                       ; preds = %for.body16, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ 0, %if.then ], !dbg !410
  %c.0.in = phi i64 [ %sub.ptr.div, %for.body16 ], [ %indvars.iv3, %if.then ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !389, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i32 undef, metadata !383, metadata !DIExpression()), !dbg !410
  %cmp14 = icmp slt i64 %indvars.iv, %6, !dbg !415
  br i1 %cmp14, label %for.body16, label %for.end, !dbg !416

for.body16:                                       ; preds = %for.cond13
  %c.0 = trunc i64 %c.0.in to i32, !dbg !410
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !383, metadata !DIExpression()), !dbg !410
  %arrayidx18 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv, !dbg !417
  store i32 %c.0, i32* %arrayidx18, align 4, !dbg !418
  %sext = shl i64 %c.0.in, 32, !dbg !419
  %idxprom19 = ashr exact i64 %sext, 32, !dbg !419
  %arrayidx20 = getelementptr inbounds i8, i8* %call, i64 %idxprom19, !dbg !419
  store i8 1, i8* %arrayidx20, align 1, !dbg !420
  %next = getelementptr inbounds %struct.partition_def, %struct.partition_def* %part, i64 0, i32 1, i64 %idxprom19, i32 1, !dbg !421
  %7 = bitcast %struct.partition_elem** %next to i64*, !dbg !421
  %8 = load i64, i64* %7, align 8, !dbg !421
  %sub.ptr.sub = sub i64 %8, %sub.ptr.rhs.cast, !dbg !422
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24, !dbg !422
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !423
  call void @llvm.dbg.value(metadata i32 undef, metadata !389, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !410
  br label %for.cond13, !dbg !424, !llvm.loop !425

for.end:                                          ; preds = %for.cond13
  %conv24 = sext i32 %5 to i64, !dbg !427
  tail call void @spec_qsort(i8* %call6, i64 %conv24, i64 4, i32 (i8*, i8*)* nonnull @elem_compare) #5, !dbg !428
  %call25 = tail call i32 @fputc(i32 40, %struct._IO_FILE* %fp) #5, !dbg !429
  call void @llvm.dbg.value(metadata i32 0, metadata !389, metadata !DIExpression()), !dbg !410
  %9 = sext i32 %5 to i64, !dbg !430
  br label %for.cond26, !dbg !430

for.cond26:                                       ; preds = %for.body29, %for.end
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body29 ], [ 0, %for.end ], !dbg !432
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !389, metadata !DIExpression()), !dbg !410
  %cmp27 = icmp slt i64 %indvars.iv1, %9, !dbg !433
  br i1 %cmp27, label %for.body29, label %for.end37, !dbg !435

for.body29:                                       ; preds = %for.cond26
  %cmp30 = icmp eq i64 %indvars.iv1, 0, !dbg !436
  %cond = select i1 %cmp30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), !dbg !437
  %arrayidx33 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv1, !dbg !438
  %10 = load i32, i32* %arrayidx33, align 4, !dbg !438
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* %cond, i32 %10) #5, !dbg !439
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !440
  call void @llvm.dbg.value(metadata i32 undef, metadata !389, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !410
  br label %for.cond26, !dbg !441, !llvm.loop !442

for.end37:                                        ; preds = %for.cond26
  %call38 = tail call i32 @fputc(i32 41, %struct._IO_FILE* %fp) #5, !dbg !444
  br label %for.inc39, !dbg !445

for.inc39:                                        ; preds = %for.body, %for.end37
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !446
  call void @llvm.dbg.value(metadata i32 undef, metadata !382, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !390
  br label %for.cond, !dbg !447, !llvm.loop !448

for.end41:                                        ; preds = %for.cond
  %call42 = tail call i32 @fputc(i32 93, %struct._IO_FILE* %fp) #5, !dbg !450
  tail call void @free(i8* %call6) #5, !dbg !451
  tail call void @free(i8* %call) #5, !dbg !452
  ret void, !dbg !453
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @spec_qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @elem_compare(i8* %elem1, i8* %elem2) #3 !dbg !454 {
entry:
  call void @llvm.dbg.value(metadata i8* %elem1, metadata !456, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i8* %elem2, metadata !457, metadata !DIExpression()), !dbg !460
  %0 = bitcast i8* %elem1 to i32*, !dbg !461
  %1 = load i32, i32* %0, align 4, !dbg !462
  call void @llvm.dbg.value(metadata i32 %1, metadata !458, metadata !DIExpression()), !dbg !460
  %2 = bitcast i8* %elem2 to i32*, !dbg !463
  %3 = load i32, i32* %2, align 4, !dbg !464
  call void @llvm.dbg.value(metadata i32 %3, metadata !459, metadata !DIExpression()), !dbg !460
  %cmp = icmp slt i32 %1, %3, !dbg !465
  %cmp1 = icmp sgt i32 %1, %3, !dbg !467
  %. = zext i1 %cmp1 to i32, !dbg !467
  %retval.0 = select i1 %cmp, i32 -1, i32 %., !dbg !467
  ret i32 %retval.0, !dbg !468
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "partition.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !8, !9, !11, !12, !13, !6, !30, !31}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "partition", file: !14, line: 65, baseType: !15)
!14 = !DIFile(filename: "./include/partition.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_def", file: !14, line: 59, size: 256, elements: !17)
!17 = !{!18, !19}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "num_elements", scope: !16, file: !14, line: 62, baseType: !4, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !16, file: !14, line: 64, baseType: !20, size: 192, offset: 64)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !28)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_elem", file: !14, line: 46, size: 192, elements: !22)
!22 = !{!23, !24, !26}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "class_element", scope: !21, file: !14, line: 50, baseType: !4, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !14, line: 53, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "class_count", scope: !21, file: !14, line: 56, baseType: !27, size: 32, offset: 128)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !{!29}
!29 = !DISubrange(count: 1)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!33 = !{i32 2, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!37 = distinct !DISubprogram(name: "atoi", scope: !38, file: !38, line: 361, type: !39, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !41)
!38 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!39 = !DISubroutineType(types: !40)
!40 = !{!4, !9}
!41 = !{!42}
!42 = !DILocalVariable(name: "__nptr", arg: 1, scope: !37, file: !38, line: 361, type: !9)
!43 = !DILocation(line: 0, scope: !37)
!44 = !DILocation(line: 363, column: 16, scope: !37)
!45 = !DILocation(line: 363, column: 10, scope: !37)
!46 = !DILocation(line: 363, column: 3, scope: !37)
!47 = distinct !DISubprogram(name: "atol", scope: !38, file: !38, line: 366, type: !48, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !9}
!50 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!51 = !{!52}
!52 = !DILocalVariable(name: "__nptr", arg: 1, scope: !47, file: !38, line: 366, type: !9)
!53 = !DILocation(line: 0, scope: !47)
!54 = !DILocation(line: 368, column: 10, scope: !47)
!55 = !DILocation(line: 368, column: 3, scope: !47)
!56 = distinct !DISubprogram(name: "atoll", scope: !38, file: !38, line: 373, type: !57, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !9}
!59 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!60 = !{!61}
!61 = !DILocalVariable(name: "__nptr", arg: 1, scope: !56, file: !38, line: 373, type: !9)
!62 = !DILocation(line: 0, scope: !56)
!63 = !DILocation(line: 375, column: 10, scope: !56)
!64 = !DILocation(line: 375, column: 3, scope: !56)
!65 = distinct !DISubprogram(name: "bsearch", scope: !66, file: !66, line: 20, type: !67, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!67 = !DISubroutineType(types: !68)
!68 = !{!8, !69, !69, !71, !71, !74}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !38, line: 808, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!4, !69, !69}
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!79 = !DILocalVariable(name: "__key", arg: 1, scope: !65, file: !66, line: 20, type: !69)
!80 = !DILocalVariable(name: "__base", arg: 2, scope: !65, file: !66, line: 20, type: !69)
!81 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !65, file: !66, line: 20, type: !71)
!82 = !DILocalVariable(name: "__size", arg: 4, scope: !65, file: !66, line: 20, type: !71)
!83 = !DILocalVariable(name: "__compar", arg: 5, scope: !65, file: !66, line: 21, type: !74)
!84 = !DILocalVariable(name: "__l", scope: !65, file: !66, line: 23, type: !71)
!85 = !DILocalVariable(name: "__u", scope: !65, file: !66, line: 23, type: !71)
!86 = !DILocalVariable(name: "__idx", scope: !65, file: !66, line: 23, type: !71)
!87 = !DILocalVariable(name: "__p", scope: !65, file: !66, line: 24, type: !69)
!88 = !DILocalVariable(name: "__comparison", scope: !65, file: !66, line: 25, type: !4)
!89 = !DILocation(line: 0, scope: !65)
!90 = !DILocation(line: 29, column: 3, scope: !65)
!91 = !DILocation(line: 27, column: 7, scope: !65)
!92 = !DILocation(line: 29, column: 14, scope: !65)
!93 = !DILocation(line: 31, column: 20, scope: !94)
!94 = distinct !DILexicalBlock(scope: !65, file: !66, line: 30, column: 5)
!95 = !DILocation(line: 31, column: 27, scope: !94)
!96 = !DILocation(line: 32, column: 56, scope: !94)
!97 = !DILocation(line: 32, column: 47, scope: !94)
!98 = !DILocation(line: 33, column: 22, scope: !94)
!99 = !DILocation(line: 34, column: 24, scope: !100)
!100 = distinct !DILexicalBlock(scope: !94, file: !66, line: 34, column: 11)
!101 = !DILocation(line: 34, column: 11, scope: !94)
!102 = !DILocation(line: 36, column: 29, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !66, line: 36, column: 16)
!104 = !DILocation(line: 36, column: 16, scope: !100)
!105 = !DILocation(line: 37, column: 14, scope: !103)
!106 = distinct !{!106, !90, !107}
!107 = !DILocation(line: 40, column: 5, scope: !65)
!108 = !DILocation(line: 43, column: 1, scope: !65)
!109 = distinct !DISubprogram(name: "atof", scope: !110, file: !110, line: 25, type: !111, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !9}
!113 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!114 = !{!115}
!115 = !DILocalVariable(name: "__nptr", arg: 1, scope: !109, file: !110, line: 25, type: !9)
!116 = !DILocation(line: 0, scope: !109)
!117 = !DILocation(line: 27, column: 10, scope: !109)
!118 = !DILocation(line: 27, column: 3, scope: !109)
!119 = distinct !DISubprogram(name: "vprintf", scope: !120, file: !120, line: 39, type: !121, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!121 = !DISubroutineType(types: !122)
!122 = !{!4, !123, !124}
!123 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 28, size: 192, elements: !126)
!126 = !{!127, !128, !129, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !125, file: !1, line: 28, baseType: !27, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !125, file: !1, line: 28, baseType: !27, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !125, file: !1, line: 28, baseType: !8, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !125, file: !1, line: 28, baseType: !8, size: 64, offset: 128)
!131 = !{!132, !133}
!132 = !DILocalVariable(name: "__fmt", arg: 1, scope: !119, file: !120, line: 39, type: !123)
!133 = !DILocalVariable(name: "__arg", arg: 2, scope: !119, file: !120, line: 39, type: !124)
!134 = !DILocation(line: 0, scope: !119)
!135 = !DILocation(line: 41, column: 20, scope: !119)
!136 = !DILocation(line: 41, column: 10, scope: !119)
!137 = !DILocation(line: 41, column: 3, scope: !119)
!138 = distinct !DISubprogram(name: "getchar", scope: !120, file: !120, line: 47, type: !139, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!139 = !DISubroutineType(types: !140)
!140 = !{!4}
!141 = !DILocation(line: 49, column: 16, scope: !138)
!142 = !DILocation(line: 49, column: 10, scope: !138)
!143 = !DILocation(line: 49, column: 3, scope: !138)
!144 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !120, file: !120, line: 56, type: !145, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!145 = !DISubroutineType(types: !146)
!146 = !{!4, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !149, line: 7, baseType: !150)
!149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !151, line: 49, size: 1728, elements: !152)
!151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !168, !170, !171, !172, !175, !177, !179, !181, !184, !186, !189, !192, !193, !194, !195, !196}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !150, file: !151, line: 51, baseType: !4, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !150, file: !151, line: 54, baseType: !6, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !150, file: !151, line: 55, baseType: !6, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !150, file: !151, line: 56, baseType: !6, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !150, file: !151, line: 57, baseType: !6, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !150, file: !151, line: 58, baseType: !6, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !150, file: !151, line: 59, baseType: !6, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !150, file: !151, line: 60, baseType: !6, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !150, file: !151, line: 61, baseType: !6, size: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !150, file: !151, line: 64, baseType: !6, size: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !150, file: !151, line: 65, baseType: !6, size: 64, offset: 640)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !150, file: !151, line: 66, baseType: !6, size: 64, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !150, file: !151, line: 68, baseType: !166, size: 64, offset: 768)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !151, line: 36, flags: DIFlagFwdDecl)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !150, file: !151, line: 70, baseType: !169, size: 64, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !150, file: !151, line: 72, baseType: !4, size: 32, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !150, file: !151, line: 73, baseType: !4, size: 32, offset: 928)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !150, file: !151, line: 74, baseType: !173, size: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !174, line: 152, baseType: !50)
!174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !150, file: !151, line: 77, baseType: !176, size: 16, offset: 1024)
!176 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !150, file: !151, line: 78, baseType: !178, size: 8, offset: 1040)
!178 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !150, file: !151, line: 79, baseType: !180, size: 8, offset: 1048)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !28)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !150, file: !151, line: 81, baseType: !182, size: 64, offset: 1088)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !151, line: 43, baseType: null)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !150, file: !151, line: 89, baseType: !185, size: 64, offset: 1152)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !174, line: 153, baseType: !50)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !150, file: !151, line: 91, baseType: !187, size: 64, offset: 1216)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !151, line: 37, flags: DIFlagFwdDecl)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !150, file: !151, line: 92, baseType: !190, size: 64, offset: 1280)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !151, line: 38, flags: DIFlagFwdDecl)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !150, file: !151, line: 93, baseType: !169, size: 64, offset: 1344)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !150, file: !151, line: 94, baseType: !8, size: 64, offset: 1408)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !150, file: !151, line: 95, baseType: !71, size: 64, offset: 1472)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !150, file: !151, line: 96, baseType: !4, size: 32, offset: 1536)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !150, file: !151, line: 98, baseType: !197, size: 160, offset: 1568)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 20)
!200 = !{!201}
!201 = !DILocalVariable(name: "__fp", arg: 1, scope: !144, file: !120, line: 56, type: !147)
!202 = !DILocation(line: 0, scope: !144)
!203 = !DILocation(line: 58, column: 10, scope: !144)
!204 = !DILocation(line: 58, column: 3, scope: !144)
!205 = distinct !DISubprogram(name: "getc_unlocked", scope: !120, file: !120, line: 66, type: !145, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !206)
!206 = !{!207}
!207 = !DILocalVariable(name: "__fp", arg: 1, scope: !205, file: !120, line: 66, type: !147)
!208 = !DILocation(line: 0, scope: !205)
!209 = !DILocation(line: 68, column: 10, scope: !205)
!210 = !DILocation(line: 68, column: 3, scope: !205)
!211 = distinct !DISubprogram(name: "getchar_unlocked", scope: !120, file: !120, line: 73, type: !139, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!212 = !DILocation(line: 75, column: 10, scope: !211)
!213 = !DILocation(line: 75, column: 3, scope: !211)
!214 = distinct !DISubprogram(name: "putchar", scope: !120, file: !120, line: 82, type: !215, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!4, !4}
!217 = !{!218}
!218 = !DILocalVariable(name: "__c", arg: 1, scope: !214, file: !120, line: 82, type: !4)
!219 = !DILocation(line: 0, scope: !214)
!220 = !DILocation(line: 84, column: 21, scope: !214)
!221 = !DILocation(line: 84, column: 10, scope: !214)
!222 = !DILocation(line: 84, column: 3, scope: !214)
!223 = distinct !DISubprogram(name: "fputc_unlocked", scope: !120, file: !120, line: 91, type: !224, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{!4, !4, !147}
!226 = !{!227, !228}
!227 = !DILocalVariable(name: "__c", arg: 1, scope: !223, file: !120, line: 91, type: !4)
!228 = !DILocalVariable(name: "__stream", arg: 2, scope: !223, file: !120, line: 91, type: !147)
!229 = !DILocation(line: 0, scope: !223)
!230 = !DILocation(line: 93, column: 10, scope: !223)
!231 = !DILocation(line: 93, column: 3, scope: !223)
!232 = distinct !DISubprogram(name: "putc_unlocked", scope: !120, file: !120, line: 101, type: !224, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!233 = !{!234, !235}
!234 = !DILocalVariable(name: "__c", arg: 1, scope: !232, file: !120, line: 101, type: !4)
!235 = !DILocalVariable(name: "__stream", arg: 2, scope: !232, file: !120, line: 101, type: !147)
!236 = !DILocation(line: 0, scope: !232)
!237 = !DILocation(line: 103, column: 10, scope: !232)
!238 = !DILocation(line: 103, column: 3, scope: !232)
!239 = distinct !DISubprogram(name: "putchar_unlocked", scope: !120, file: !120, line: 108, type: !215, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!240 = !{!241}
!241 = !DILocalVariable(name: "__c", arg: 1, scope: !239, file: !120, line: 108, type: !4)
!242 = !DILocation(line: 0, scope: !239)
!243 = !DILocation(line: 110, column: 10, scope: !239)
!244 = !DILocation(line: 110, column: 3, scope: !239)
!245 = distinct !DISubprogram(name: "getline", scope: !120, file: !120, line: 118, type: !246, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !250)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !5, !249, !147}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !174, line: 193, baseType: !50)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!250 = !{!251, !252, !253}
!251 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !245, file: !120, line: 118, type: !5)
!252 = !DILocalVariable(name: "__n", arg: 2, scope: !245, file: !120, line: 118, type: !249)
!253 = !DILocalVariable(name: "__stream", arg: 3, scope: !245, file: !120, line: 118, type: !147)
!254 = !DILocation(line: 0, scope: !245)
!255 = !DILocation(line: 120, column: 10, scope: !245)
!256 = !DILocation(line: 120, column: 3, scope: !245)
!257 = distinct !DISubprogram(name: "feof_unlocked", scope: !120, file: !120, line: 128, type: !145, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !258)
!258 = !{!259}
!259 = !DILocalVariable(name: "__stream", arg: 1, scope: !257, file: !120, line: 128, type: !147)
!260 = !DILocation(line: 0, scope: !257)
!261 = !DILocation(line: 130, column: 10, scope: !257)
!262 = !DILocation(line: 130, column: 3, scope: !257)
!263 = distinct !DISubprogram(name: "ferror_unlocked", scope: !120, file: !120, line: 135, type: !145, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !264)
!264 = !{!265}
!265 = !DILocalVariable(name: "__stream", arg: 1, scope: !263, file: !120, line: 135, type: !147)
!266 = !DILocation(line: 0, scope: !263)
!267 = !DILocation(line: 137, column: 10, scope: !263)
!268 = !DILocation(line: 137, column: 3, scope: !263)
!269 = distinct !DISubprogram(name: "partition_new", scope: !1, file: !1, line: 43, type: !270, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{!13, !4}
!272 = !{!273, !274, !275}
!273 = !DILocalVariable(name: "num_elements", arg: 1, scope: !269, file: !1, line: 43, type: !4)
!274 = !DILocalVariable(name: "e", scope: !269, file: !1, line: 45, type: !4)
!275 = !DILocalVariable(name: "part", scope: !269, file: !1, line: 47, type: !13)
!276 = !DILocation(line: 0, scope: !269)
!277 = !DILocation(line: 49, column: 21, scope: !269)
!278 = !DILocation(line: 49, column: 7, scope: !269)
!279 = !DILocation(line: 49, column: 26, scope: !269)
!280 = !DILocation(line: 48, column: 44, scope: !269)
!281 = !DILocation(line: 48, column: 5, scope: !269)
!282 = !DILocation(line: 50, column: 9, scope: !269)
!283 = !DILocation(line: 50, column: 22, scope: !269)
!284 = !DILocation(line: 0, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !1, line: 52, column: 5)
!286 = distinct !DILexicalBlock(scope: !287, file: !1, line: 51, column: 3)
!287 = distinct !DILexicalBlock(scope: !269, file: !1, line: 51, column: 3)
!288 = !DILocation(line: 51, column: 8, scope: !287)
!289 = !DILocation(line: 0, scope: !287)
!290 = !DILocation(line: 51, column: 17, scope: !286)
!291 = !DILocation(line: 51, column: 3, scope: !287)
!292 = !DILocation(line: 53, column: 25, scope: !285)
!293 = !DILocation(line: 53, column: 39, scope: !285)
!294 = !DILocation(line: 54, column: 34, scope: !285)
!295 = !DILocation(line: 54, column: 25, scope: !285)
!296 = !DILocation(line: 54, column: 30, scope: !285)
!297 = !DILocation(line: 55, column: 25, scope: !285)
!298 = !DILocation(line: 55, column: 37, scope: !285)
!299 = !DILocation(line: 51, column: 33, scope: !286)
!300 = !DILocation(line: 51, column: 3, scope: !286)
!301 = distinct !{!301, !291, !302}
!302 = !DILocation(line: 56, column: 5, scope: !287)
!303 = !DILocation(line: 47, column: 20, scope: !269)
!304 = !DILocation(line: 58, column: 3, scope: !269)
!305 = distinct !DISubprogram(name: "partition_delete", scope: !1, file: !1, line: 64, type: !306, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !13}
!308 = !{!309}
!309 = !DILocalVariable(name: "part", arg: 1, scope: !305, file: !1, line: 64, type: !13)
!310 = !DILocation(line: 0, scope: !305)
!311 = !DILocation(line: 66, column: 9, scope: !305)
!312 = !DILocation(line: 66, column: 3, scope: !305)
!313 = !DILocation(line: 67, column: 1, scope: !305)
!314 = distinct !DISubprogram(name: "partition_union", scope: !1, file: !1, line: 75, type: !315, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{!4, !13, !4, !4}
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!318 = !DILocalVariable(name: "part", arg: 1, scope: !314, file: !1, line: 75, type: !13)
!319 = !DILocalVariable(name: "elem1", arg: 2, scope: !314, file: !1, line: 75, type: !4)
!320 = !DILocalVariable(name: "elem2", arg: 3, scope: !314, file: !1, line: 75, type: !4)
!321 = !DILocalVariable(name: "elements", scope: !314, file: !1, line: 77, type: !25)
!322 = !DILocalVariable(name: "e1", scope: !314, file: !1, line: 78, type: !25)
!323 = !DILocalVariable(name: "e2", scope: !314, file: !1, line: 79, type: !25)
!324 = !DILocalVariable(name: "p", scope: !314, file: !1, line: 80, type: !25)
!325 = !DILocalVariable(name: "old_next", scope: !314, file: !1, line: 81, type: !25)
!326 = !DILocalVariable(name: "class_element", scope: !314, file: !1, line: 83, type: !4)
!327 = !DILocalVariable(name: "temp", scope: !328, file: !1, line: 93, type: !4)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 92, column: 5)
!329 = distinct !DILexicalBlock(scope: !314, file: !1, line: 91, column: 7)
!330 = !DILocation(line: 0, scope: !314)
!331 = !DILocation(line: 83, column: 23, scope: !314)
!332 = !DILocation(line: 83, column: 39, scope: !314)
!333 = !DILocation(line: 86, column: 24, scope: !334)
!334 = distinct !DILexicalBlock(scope: !314, file: !1, line: 86, column: 7)
!335 = !DILocation(line: 86, column: 40, scope: !334)
!336 = !DILocation(line: 86, column: 21, scope: !334)
!337 = !DILocation(line: 86, column: 7, scope: !314)
!338 = !DILocation(line: 91, column: 23, scope: !329)
!339 = !DILocation(line: 91, column: 53, scope: !329)
!340 = !DILocation(line: 91, column: 35, scope: !329)
!341 = !DILocation(line: 91, column: 7, scope: !314)
!342 = !DILocation(line: 0, scope: !328)
!343 = !DILocation(line: 97, column: 5, scope: !328)
!344 = !DILocation(line: 100, column: 10, scope: !314)
!345 = !DILocation(line: 99, column: 10, scope: !314)
!346 = !DILocation(line: 104, column: 21, scope: !314)
!347 = !DILocation(line: 104, column: 8, scope: !314)
!348 = !DILocation(line: 104, column: 36, scope: !314)
!349 = !DILocation(line: 103, column: 3, scope: !314)
!350 = !DILocation(line: 103, column: 27, scope: !314)
!351 = !DILocation(line: 104, column: 5, scope: !314)
!352 = !DILocation(line: 107, column: 21, scope: !314)
!353 = !DILocation(line: 108, column: 16, scope: !354)
!354 = distinct !DILexicalBlock(scope: !314, file: !1, line: 108, column: 3)
!355 = !DILocation(line: 108, column: 8, scope: !354)
!356 = !DILocation(line: 0, scope: !354)
!357 = !DILocation(line: 108, column: 24, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !1, line: 108, column: 3)
!359 = !DILocation(line: 108, column: 3, scope: !354)
!360 = !DILocation(line: 109, column: 8, scope: !358)
!361 = !DILocation(line: 109, column: 22, scope: !358)
!362 = !DILocation(line: 108, column: 38, scope: !358)
!363 = !DILocation(line: 108, column: 3, scope: !358)
!364 = distinct !{!364, !359, !365}
!365 = !DILocation(line: 109, column: 24, scope: !354)
!366 = !DILocation(line: 113, column: 18, scope: !314)
!367 = !DILocation(line: 114, column: 18, scope: !314)
!368 = !DILocation(line: 114, column: 12, scope: !314)
!369 = !DILocation(line: 115, column: 12, scope: !314)
!370 = !DILocation(line: 117, column: 3, scope: !314)
!371 = !DILocation(line: 118, column: 1, scope: !314)
!372 = distinct !DISubprogram(name: "partition_print", scope: !1, file: !1, line: 140, type: !373, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !13, !147}
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !388, !389}
!376 = !DILocalVariable(name: "part", arg: 1, scope: !372, file: !1, line: 140, type: !13)
!377 = !DILocalVariable(name: "fp", arg: 2, scope: !372, file: !1, line: 140, type: !147)
!378 = !DILocalVariable(name: "done", scope: !372, file: !1, line: 142, type: !6)
!379 = !DILocalVariable(name: "num_elements", scope: !372, file: !1, line: 143, type: !4)
!380 = !DILocalVariable(name: "elements", scope: !372, file: !1, line: 144, type: !25)
!381 = !DILocalVariable(name: "class_elements", scope: !372, file: !1, line: 145, type: !30)
!382 = !DILocalVariable(name: "e", scope: !372, file: !1, line: 146, type: !4)
!383 = !DILocalVariable(name: "c", scope: !384, file: !1, line: 160, type: !4)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 159, column: 7)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 158, column: 9)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 156, column: 3)
!387 = distinct !DILexicalBlock(scope: !372, file: !1, line: 156, column: 3)
!388 = !DILocalVariable(name: "count", scope: !384, file: !1, line: 161, type: !4)
!389 = !DILocalVariable(name: "i", scope: !384, file: !1, line: 162, type: !4)
!390 = !DILocation(line: 0, scope: !372)
!391 = !DILocation(line: 143, column: 28, scope: !372)
!392 = !DILocation(line: 144, column: 37, scope: !372)
!393 = !DILocation(line: 149, column: 28, scope: !372)
!394 = !DILocation(line: 149, column: 19, scope: !372)
!395 = !DILocation(line: 150, column: 3, scope: !372)
!396 = !DILocation(line: 153, column: 50, scope: !372)
!397 = !DILocation(line: 153, column: 28, scope: !372)
!398 = !DILocation(line: 153, column: 20, scope: !372)
!399 = !DILocation(line: 155, column: 3, scope: !372)
!400 = !DILocation(line: 0, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 165, column: 30)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 165, column: 2)
!403 = distinct !DILexicalBlock(scope: !384, file: !1, line: 165, column: 2)
!404 = !DILocation(line: 156, column: 8, scope: !387)
!405 = !DILocation(line: 0, scope: !387)
!406 = !DILocation(line: 156, column: 17, scope: !386)
!407 = !DILocation(line: 156, column: 3, scope: !387)
!408 = !DILocation(line: 158, column: 11, scope: !385)
!409 = !DILocation(line: 158, column: 9, scope: !386)
!410 = !DILocation(line: 0, scope: !384)
!411 = !DILocation(line: 161, column: 35, scope: !384)
!412 = !DILocation(line: 161, column: 14, scope: !384)
!413 = !DILocation(line: 161, column: 50, scope: !384)
!414 = !DILocation(line: 165, column: 7, scope: !403)
!415 = !DILocation(line: 165, column: 16, scope: !402)
!416 = !DILocation(line: 165, column: 2, scope: !403)
!417 = !DILocation(line: 166, column: 4, scope: !401)
!418 = !DILocation(line: 166, column: 22, scope: !401)
!419 = !DILocation(line: 167, column: 4, scope: !401)
!420 = !DILocation(line: 167, column: 12, scope: !401)
!421 = !DILocation(line: 168, column: 20, scope: !401)
!422 = !DILocation(line: 168, column: 25, scope: !401)
!423 = !DILocation(line: 165, column: 25, scope: !402)
!424 = !DILocation(line: 165, column: 2, scope: !402)
!425 = distinct !{!425, !416, !426}
!426 = !DILocation(line: 169, column: 2, scope: !403)
!427 = !DILocation(line: 172, column: 39, scope: !384)
!428 = !DILocation(line: 172, column: 2, scope: !384)
!429 = !DILocation(line: 177, column: 2, scope: !384)
!430 = !DILocation(line: 178, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !384, file: !1, line: 178, column: 2)
!432 = !DILocation(line: 0, scope: !431)
!433 = !DILocation(line: 178, column: 16, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !1, line: 178, column: 2)
!435 = !DILocation(line: 178, column: 2, scope: !431)
!436 = !DILocation(line: 179, column: 19, scope: !434)
!437 = !DILocation(line: 179, column: 17, scope: !434)
!438 = !DILocation(line: 179, column: 40, scope: !434)
!439 = !DILocation(line: 179, column: 4, scope: !434)
!440 = !DILocation(line: 178, column: 25, scope: !434)
!441 = !DILocation(line: 178, column: 2, scope: !434)
!442 = distinct !{!442, !435, !443}
!443 = !DILocation(line: 179, column: 57, scope: !431)
!444 = !DILocation(line: 180, column: 2, scope: !384)
!445 = !DILocation(line: 181, column: 7, scope: !384)
!446 = !DILocation(line: 156, column: 33, scope: !386)
!447 = !DILocation(line: 156, column: 3, scope: !386)
!448 = distinct !{!448, !407, !449}
!449 = !DILocation(line: 181, column: 7, scope: !387)
!450 = !DILocation(line: 182, column: 3, scope: !372)
!451 = !DILocation(line: 184, column: 3, scope: !372)
!452 = !DILocation(line: 185, column: 3, scope: !372)
!453 = !DILocation(line: 186, column: 1, scope: !372)
!454 = distinct !DISubprogram(name: "elem_compare", scope: !1, file: !1, line: 124, type: !76, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !455)
!455 = !{!456, !457, !458, !459}
!456 = !DILocalVariable(name: "elem1", arg: 1, scope: !454, file: !1, line: 124, type: !69)
!457 = !DILocalVariable(name: "elem2", arg: 2, scope: !454, file: !1, line: 124, type: !69)
!458 = !DILocalVariable(name: "e1", scope: !454, file: !1, line: 126, type: !4)
!459 = !DILocalVariable(name: "e2", scope: !454, file: !1, line: 127, type: !4)
!460 = !DILocation(line: 0, scope: !454)
!461 = !DILocation(line: 126, column: 14, scope: !454)
!462 = !DILocation(line: 126, column: 12, scope: !454)
!463 = !DILocation(line: 127, column: 14, scope: !454)
!464 = !DILocation(line: 127, column: 12, scope: !454)
!465 = !DILocation(line: 128, column: 10, scope: !466)
!466 = distinct !DILexicalBlock(scope: !454, file: !1, line: 128, column: 7)
!467 = !DILocation(line: 128, column: 7, scope: !454)
!468 = !DILocation(line: 134, column: 1, scope: !454)
