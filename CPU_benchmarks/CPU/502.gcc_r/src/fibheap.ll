; ModuleID = 'fibheap.bc'
source_filename = "fibheap.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fibheap = type { i64, %struct.fibnode*, %struct.fibnode* }
%struct.fibnode = type { %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, i64, i8*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [33 x i8] c"Can't force minimum on fibheap.\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !43 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !48, metadata !DIExpression()), !dbg !49
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !50
  %conv = trunc i64 %call to i32, !dbg !51
  ret i32 %conv, !dbg !52
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !53 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !57, metadata !DIExpression()), !dbg !58
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !59
  ret i64 %call, !dbg !60
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !61 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !66, metadata !DIExpression()), !dbg !67
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !68
  ret i64 %call, !dbg !69
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !70 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !81, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i8* %__base, metadata !82, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !83, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i64 %__size, metadata !84, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !85, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i64 0, metadata !86, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !87, metadata !DIExpression()), !dbg !91
  br label %while.cond, !dbg !92

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !93
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !91
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !87, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !86, metadata !DIExpression()), !dbg !91
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !94
  br i1 %cmp, label %while.body, label %cleanup, !dbg !92

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !95
  %div = lshr i64 %add, 1, !dbg !97
  call void @llvm.dbg.value(metadata i64 %div, metadata !88, metadata !DIExpression()), !dbg !91
  %mul = mul i64 %div, %__size, !dbg !98
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !99
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !89, metadata !DIExpression()), !dbg !91
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !100
  call void @llvm.dbg.value(metadata i32 %call, metadata !90, metadata !DIExpression()), !dbg !91
  %cmp1 = icmp slt i32 %call, 0, !dbg !101
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !103

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !104
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !106

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !107
  call void @llvm.dbg.value(metadata i64 %add4, metadata !86, metadata !DIExpression()), !dbg !91
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !91
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !91
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !87, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !86, metadata !DIExpression()), !dbg !91
  br label %while.cond, !dbg !92, !llvm.loop !108

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !91
  ret i8* %retval.0, !dbg !110
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !111 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !117, metadata !DIExpression()), !dbg !118
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !119
  ret double %call, !dbg !120
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !121 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !137
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !138
  ret i32 %call, !dbg !139
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !140 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !143
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !144
  ret i32 %call, !dbg !145
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !146 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !205, metadata !DIExpression()), !dbg !206
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !207
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !207
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !207
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !207
  %cmp = icmp uge i8* %0, %1, !dbg !207
  %conv1 = zext i1 %cmp to i64, !dbg !207
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !207
  %tobool = icmp eq i64 %expval, 0, !dbg !207
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !207

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !207
  br label %cond.end, !dbg !207

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !207
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !207
  %2 = load i8, i8* %0, align 1, !dbg !207
  %conv3 = zext i8 %2 to i32, !dbg !207
  br label %cond.end, !dbg !207

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !207
  ret i32 %cond, !dbg !208
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #4

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !209 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !211, metadata !DIExpression()), !dbg !212
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !213
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !213
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !213
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !213
  %cmp = icmp uge i8* %0, %1, !dbg !213
  %conv1 = zext i1 %cmp to i64, !dbg !213
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !213
  %tobool = icmp eq i64 %expval, 0, !dbg !213
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !213

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !213
  br label %cond.end, !dbg !213

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !213
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !213
  %2 = load i8, i8* %0, align 1, !dbg !213
  %conv3 = zext i8 %2 to i32, !dbg !213
  br label %cond.end, !dbg !213

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !213
  ret i32 %cond, !dbg !214
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !215 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !216
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !216
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !216
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !216
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !216
  %cmp = icmp uge i8* %1, %2, !dbg !216
  %conv1 = zext i1 %cmp to i64, !dbg !216
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !216
  %tobool = icmp eq i64 %expval, 0, !dbg !216
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !216

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !216
  br label %cond.end, !dbg !216

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !216
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !216
  %3 = load i8, i8* %1, align 1, !dbg !216
  %conv3 = zext i8 %3 to i32, !dbg !216
  br label %cond.end, !dbg !216

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !216
  ret i32 %cond, !dbg !217
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !218 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !222, metadata !DIExpression()), !dbg !223
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !224
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !225
  ret i32 %call, !dbg !226
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !231, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !232, metadata !DIExpression()), !dbg !233
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !234
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !234
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !234
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !234
  %cmp = icmp uge i8* %0, %1, !dbg !234
  %conv1 = zext i1 %cmp to i64, !dbg !234
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !234
  %tobool = icmp eq i64 %expval, 0, !dbg !234
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !234

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !234
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !234
  br label %cond.end, !dbg !234

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !234
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !234
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !234
  store i8 %conv2, i8* %0, align 1, !dbg !234
  %conv6 = and i32 %__c, 255, !dbg !234
  br label %cond.end, !dbg !234

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !234
  ret i32 %cond, !dbg !235
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !236 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !238, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !239, metadata !DIExpression()), !dbg !240
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !241
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !241
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !241
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !241
  %cmp = icmp uge i8* %0, %1, !dbg !241
  %conv1 = zext i1 %cmp to i64, !dbg !241
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !241
  %tobool = icmp eq i64 %expval, 0, !dbg !241
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !241

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !241
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !241
  br label %cond.end, !dbg !241

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !241
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !241
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !241
  store i8 %conv2, i8* %0, align 1, !dbg !241
  %conv6 = and i32 %__c, 255, !dbg !241
  br label %cond.end, !dbg !241

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !241
  ret i32 %cond, !dbg !242
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !247
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !247
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !247
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !247
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !247
  %cmp = icmp uge i8* %1, %2, !dbg !247
  %conv1 = zext i1 %cmp to i64, !dbg !247
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !247
  %tobool = icmp eq i64 %expval, 0, !dbg !247
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !247

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !247
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !247
  br label %cond.end, !dbg !247

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !247
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !247
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !247
  store i8 %conv4, i8* %1, align 1, !dbg !247
  %conv6 = and i32 %__c, 255, !dbg !247
  br label %cond.end, !dbg !247

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !247
  ret i32 %cond, !dbg !248
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !249 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !255, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata i64* %__n, metadata !256, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !257, metadata !DIExpression()), !dbg !258
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !259
  ret i64 %call, !dbg !260
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !261 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !263, metadata !DIExpression()), !dbg !264
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !265
  %0 = load i32, i32* %_flags, align 8, !dbg !265
  %and = lshr i32 %0, 4, !dbg !265
  %and.lobit = and i32 %and, 1, !dbg !265
  ret i32 %and.lobit, !dbg !266
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !267 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !269, metadata !DIExpression()), !dbg !270
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !271
  %0 = load i32, i32* %_flags, align 8, !dbg !271
  %and = lshr i32 %0, 5, !dbg !271
  %and.lobit = and i32 %and, 1, !dbg !271
  ret i32 %and.lobit, !dbg !272
}

; Function Attrs: nounwind uwtable
define dso_local %struct.fibheap* @fibheap_new() local_unnamed_addr #5 !dbg !273 {
entry:
  %call = tail call i8* @xcalloc(i64 1, i64 24) #6, !dbg !276
  %0 = bitcast i8* %call to %struct.fibheap*, !dbg !277
  ret %struct.fibheap* %0, !dbg !278
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.fibnode* @fibheap_insert(%struct.fibheap* %heap, i64 %key, i8* %data) local_unnamed_addr #5 !dbg !279 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !283, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 %key, metadata !284, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i8* %data, metadata !285, metadata !DIExpression()), !dbg !287
  %call = tail call fastcc %struct.fibnode* @fibnode_new() #7, !dbg !288
  call void @llvm.dbg.value(metadata %struct.fibnode* %call, metadata !286, metadata !DIExpression()), !dbg !287
  %data1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %call, i64 0, i32 5, !dbg !289
  store i8* %data, i8** %data1, align 8, !dbg !290
  %key2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %call, i64 0, i32 4, !dbg !291
  store i64 %key, i64* %key2, align 8, !dbg !292
  tail call fastcc void @fibheap_ins_root(%struct.fibheap* %heap, %struct.fibnode* %call) #7, !dbg !293
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 1, !dbg !294
  %0 = load %struct.fibnode*, %struct.fibnode** %min, align 8, !dbg !294
  %cmp = icmp eq %struct.fibnode* %0, null, !dbg !296
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !297

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %key2, align 8, !dbg !298
  %key5 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i64 0, i32 4, !dbg !299
  %2 = load i64, i64* %key5, align 8, !dbg !299
  %cmp6 = icmp slt i64 %1, %2, !dbg !300
  br i1 %cmp6, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.fibnode* %call, %struct.fibnode** %min, align 8, !dbg !302
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %nodes = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 0, !dbg !304
  %3 = load i64, i64* %nodes, align 8, !dbg !305
  %inc = add i64 %3, 1, !dbg !305
  store i64 %inc, i64* %nodes, align 8, !dbg !305
  ret %struct.fibnode* %call, !dbg !306
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.fibnode* @fibnode_new() unnamed_addr #5 !dbg !307 {
entry:
  %call = tail call i8* @xcalloc(i64 1, i64 56) #6, !dbg !312
  %0 = bitcast i8* %call to %struct.fibnode*, !dbg !313
  call void @llvm.dbg.value(metadata %struct.fibnode* %0, metadata !311, metadata !DIExpression()), !dbg !314
  %left = getelementptr inbounds i8, i8* %call, i64 16, !dbg !315
  %1 = bitcast i8* %left to i8**, !dbg !316
  store i8* %call, i8** %1, align 8, !dbg !316
  %right = getelementptr inbounds i8, i8* %call, i64 24, !dbg !317
  %2 = bitcast i8* %right to i8**, !dbg !318
  store i8* %call, i8** %2, align 8, !dbg !318
  ret %struct.fibnode* %0, !dbg !319
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fibheap_ins_root(%struct.fibheap* %heap, %struct.fibnode* %node) unnamed_addr #5 !dbg !320 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !324, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata %struct.fibnode* %node, metadata !325, metadata !DIExpression()), !dbg !326
  %root = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 2, !dbg !327
  %0 = load %struct.fibnode*, %struct.fibnode** %root, align 8, !dbg !327
  %cmp = icmp eq %struct.fibnode* %0, null, !dbg !329
  br i1 %cmp, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %entry
  store %struct.fibnode* %node, %struct.fibnode** %root, align 8, !dbg !331
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 2, !dbg !333
  store %struct.fibnode* %node, %struct.fibnode** %left, align 8, !dbg !334
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 3, !dbg !335
  store %struct.fibnode* %node, %struct.fibnode** %right, align 8, !dbg !336
  br label %return, !dbg !337

if.end:                                           ; preds = %entry
  tail call fastcc void @fibnode_insert_after(%struct.fibnode* nonnull %0, %struct.fibnode* %node) #7, !dbg !338
  br label %return, !dbg !339

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !339
}

; Function Attrs: nounwind uwtable
define dso_local i8* @fibheap_min(%struct.fibheap* %heap) local_unnamed_addr #5 !dbg !340 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !344, metadata !DIExpression()), !dbg !345
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 1, !dbg !346
  %0 = load %struct.fibnode*, %struct.fibnode** %min, align 8, !dbg !346
  %cmp = icmp eq %struct.fibnode* %0, null, !dbg !348
  br i1 %cmp, label %return, label %if.end, !dbg !349

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i64 0, i32 5, !dbg !350
  %1 = load i8*, i8** %data, align 8, !dbg !350
  br label %return, !dbg !351

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %1, %if.end ], [ null, %entry ], !dbg !345
  ret i8* %retval.0, !dbg !352
}

; Function Attrs: nounwind uwtable
define dso_local i64 @fibheap_min_key(%struct.fibheap* %heap) local_unnamed_addr #5 !dbg !353 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !357, metadata !DIExpression()), !dbg !358
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 1, !dbg !359
  %0 = load %struct.fibnode*, %struct.fibnode** %min, align 8, !dbg !359
  %cmp = icmp eq %struct.fibnode* %0, null, !dbg !361
  br i1 %cmp, label %return, label %if.end, !dbg !362

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i64 0, i32 4, !dbg !363
  %1 = load i64, i64* %key, align 8, !dbg !363
  br label %return, !dbg !364

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %1, %if.end ], [ 0, %entry ], !dbg !358
  ret i64 %retval.0, !dbg !365
}

; Function Attrs: nounwind uwtable
define dso_local %struct.fibheap* @fibheap_union(%struct.fibheap* %heapa, %struct.fibheap* %heapb) local_unnamed_addr #5 !dbg !366 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heapa, metadata !370, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata %struct.fibheap* %heapb, metadata !371, metadata !DIExpression()), !dbg !375
  %root = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heapa, i64 0, i32 2, !dbg !376
  %0 = load %struct.fibnode*, %struct.fibnode** %root, align 8, !dbg !376
  call void @llvm.dbg.value(metadata %struct.fibnode* %0, metadata !372, metadata !DIExpression()), !dbg !375
  %cmp = icmp eq %struct.fibnode* %0, null, !dbg !378
  br i1 %cmp, label %if.then, label %if.end, !dbg !379

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.fibheap* %heapa to i8*, !dbg !380
  tail call void @free(i8* %1) #6, !dbg !382
  br label %cleanup, !dbg !383

if.end:                                           ; preds = %entry
  %root1 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heapb, i64 0, i32 2, !dbg !384
  %2 = load %struct.fibnode*, %struct.fibnode** %root1, align 8, !dbg !384
  call void @llvm.dbg.value(metadata %struct.fibnode* %2, metadata !373, metadata !DIExpression()), !dbg !375
  %cmp2 = icmp eq %struct.fibnode* %2, null, !dbg !386
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !387

if.then3:                                         ; preds = %if.end
  %3 = bitcast %struct.fibheap* %heapb to i8*, !dbg !388
  tail call void @free(i8* %3) #6, !dbg !390
  br label %cleanup, !dbg !391

if.end4:                                          ; preds = %if.end
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i64 0, i32 2, !dbg !392
  %4 = load %struct.fibnode*, %struct.fibnode** %left, align 8, !dbg !392
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %4, i64 0, i32 3, !dbg !393
  store %struct.fibnode* %2, %struct.fibnode** %right, align 8, !dbg !394
  %left5 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %2, i64 0, i32 2, !dbg !395
  %5 = load %struct.fibnode*, %struct.fibnode** %left5, align 8, !dbg !395
  %right6 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %5, i64 0, i32 3, !dbg !396
  store %struct.fibnode* %0, %struct.fibnode** %right6, align 8, !dbg !397
  %6 = bitcast %struct.fibnode** %left to i64*, !dbg !398
  %7 = load i64, i64* %6, align 8, !dbg !398
  %8 = bitcast %struct.fibnode** %left5 to i64*, !dbg !399
  %9 = load i64, i64* %8, align 8, !dbg !399
  store i64 %9, i64* %6, align 8, !dbg !400
  store i64 %7, i64* %8, align 8, !dbg !401
  %nodes = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heapb, i64 0, i32 0, !dbg !402
  %10 = load i64, i64* %nodes, align 8, !dbg !402
  %nodes11 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heapa, i64 0, i32 0, !dbg !403
  %11 = load i64, i64* %nodes11, align 8, !dbg !404
  %add = add i64 %11, %10, !dbg !404
  store i64 %add, i64* %nodes11, align 8, !dbg !404
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heapb, i64 0, i32 1, !dbg !405
  %12 = load %struct.fibnode*, %struct.fibnode** %min, align 8, !dbg !405
  %min12 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heapa, i64 0, i32 1, !dbg !407
  %13 = load %struct.fibnode*, %struct.fibnode** %min12, align 8, !dbg !407
  %call = tail call fastcc i32 @fibheap_compare(%struct.fibheap* %heapa, %struct.fibnode* %12, %struct.fibnode* %13) #7, !dbg !408
  %cmp13 = icmp slt i32 %call, 0, !dbg !409
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !410

if.then14:                                        ; preds = %if.end4
  %14 = bitcast %struct.fibnode** %min to i64*, !dbg !411
  %15 = load i64, i64* %14, align 8, !dbg !411
  %16 = bitcast %struct.fibnode** %min12 to i64*, !dbg !412
  store i64 %15, i64* %16, align 8, !dbg !412
  br label %if.end17, !dbg !413

if.end17:                                         ; preds = %if.then14, %if.end4
  %17 = bitcast %struct.fibheap* %heapb to i8*, !dbg !414
  tail call void @free(i8* %17) #6, !dbg !415
  br label %cleanup, !dbg !416

cleanup:                                          ; preds = %if.end17, %if.then3, %if.then
  %retval.0 = phi %struct.fibheap* [ %heapb, %if.then ], [ %heapa, %if.then3 ], [ %heapa, %if.end17 ], !dbg !375
  ret %struct.fibheap* %retval.0, !dbg !417
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @fibheap_compare(%struct.fibheap* %heap, %struct.fibnode* %a, %struct.fibnode* %b) unnamed_addr #0 !dbg !418 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !422, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata %struct.fibnode* %a, metadata !423, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata %struct.fibnode* %b, metadata !424, metadata !DIExpression()), !dbg !425
  %key = getelementptr inbounds %struct.fibnode, %struct.fibnode* %a, i64 0, i32 4, !dbg !426
  %0 = load i64, i64* %key, align 8, !dbg !426
  %key1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %b, i64 0, i32 4, !dbg !428
  %1 = load i64, i64* %key1, align 8, !dbg !428
  %cmp = icmp slt i64 %0, %1, !dbg !429
  br i1 %cmp, label %return, label %if.end, !dbg !430

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i64 %0, %1, !dbg !431
  %. = zext i1 %cmp4 to i32, !dbg !425
  br label %return, !dbg !425

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.end ], !dbg !425
  ret i32 %retval.0, !dbg !433
}

; Function Attrs: nounwind uwtable
define dso_local i8* @fibheap_extract_min(%struct.fibheap* %heap) local_unnamed_addr #5 !dbg !434 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !436, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i8* null, metadata !438, metadata !DIExpression()), !dbg !439
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 1, !dbg !440
  %0 = load %struct.fibnode*, %struct.fibnode** %min, align 8, !dbg !440
  %cmp = icmp eq %struct.fibnode* %0, null, !dbg !442
  br i1 %cmp, label %if.end, label %if.then, !dbg !443

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.fibnode* @fibheap_extr_min_node(%struct.fibheap* %heap) #7, !dbg !444
  call void @llvm.dbg.value(metadata %struct.fibnode* %call, metadata !437, metadata !DIExpression()), !dbg !439
  %data = getelementptr inbounds %struct.fibnode, %struct.fibnode* %call, i64 0, i32 5, !dbg !446
  %1 = load i8*, i8** %data, align 8, !dbg !446
  call void @llvm.dbg.value(metadata i8* %1, metadata !438, metadata !DIExpression()), !dbg !439
  %2 = bitcast %struct.fibnode* %call to i8*, !dbg !447
  tail call void @free(i8* %2) #6, !dbg !448
  br label %if.end, !dbg !449

if.end:                                           ; preds = %entry, %if.then
  %ret.0 = phi i8* [ %1, %if.then ], [ null, %entry ], !dbg !439
  call void @llvm.dbg.value(metadata i8* %ret.0, metadata !438, metadata !DIExpression()), !dbg !439
  ret i8* %ret.0, !dbg !450
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.fibnode* @fibheap_extr_min_node(%struct.fibheap* %heap) unnamed_addr #5 !dbg !451 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !455, metadata !DIExpression()), !dbg !460
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 1, !dbg !461
  %0 = load %struct.fibnode*, %struct.fibnode** %min, align 8, !dbg !461
  call void @llvm.dbg.value(metadata %struct.fibnode* %0, metadata !456, metadata !DIExpression()), !dbg !460
  %child = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i64 0, i32 1, !dbg !462
  %1 = load %struct.fibnode*, %struct.fibnode** %child, align 8, !dbg !462
  call void @llvm.dbg.value(metadata %struct.fibnode* %1, metadata !457, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata %struct.fibnode* null, metadata !459, metadata !DIExpression()), !dbg !460
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.body, %entry
  %x.0 = phi %struct.fibnode* [ %1, %entry ], [ %2, %for.body ], !dbg !465
  %orig.0 = phi %struct.fibnode* [ null, %entry ], [ %spec.select1, %for.body ], !dbg !465
  call void @llvm.dbg.value(metadata %struct.fibnode* %orig.0, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata %struct.fibnode* %x.0, metadata !457, metadata !DIExpression()), !dbg !460
  %cmp = icmp ne %struct.fibnode* %x.0, %orig.0, !dbg !466
  %cmp1 = icmp ne %struct.fibnode* %x.0, null, !dbg !468
  %spec.select = and i1 %cmp1, %cmp, !dbg !469
  br i1 %spec.select, label %for.body, label %for.end, !dbg !470

for.body:                                         ; preds = %for.cond
  %cmp2 = icmp eq %struct.fibnode* %orig.0, null, !dbg !471
  %spec.select1 = select i1 %cmp2, %struct.fibnode* %x.0, %struct.fibnode* %orig.0, !dbg !474
  call void @llvm.dbg.value(metadata %struct.fibnode* %spec.select1, metadata !459, metadata !DIExpression()), !dbg !460
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %x.0, i64 0, i32 3, !dbg !475
  %2 = load %struct.fibnode*, %struct.fibnode** %right, align 8, !dbg !475
  call void @llvm.dbg.value(metadata %struct.fibnode* %2, metadata !458, metadata !DIExpression()), !dbg !460
  %parent = getelementptr inbounds %struct.fibnode, %struct.fibnode* %x.0, i64 0, i32 0, !dbg !476
  store %struct.fibnode* null, %struct.fibnode** %parent, align 8, !dbg !477
  tail call fastcc void @fibheap_ins_root(%struct.fibheap* %heap, %struct.fibnode* nonnull %x.0) #7, !dbg !478
  call void @llvm.dbg.value(metadata %struct.fibnode* %2, metadata !457, metadata !DIExpression()), !dbg !460
  br label %for.cond, !dbg !479, !llvm.loop !480

for.end:                                          ; preds = %for.cond
  tail call fastcc void @fibheap_rem_root(%struct.fibheap* %heap, %struct.fibnode* %0) #7, !dbg !482
  %nodes = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 0, !dbg !483
  %3 = load i64, i64* %nodes, align 8, !dbg !484
  %dec = add i64 %3, -1, !dbg !484
  store i64 %dec, i64* %nodes, align 8, !dbg !484
  %cmp4 = icmp eq i64 %dec, 0, !dbg !485
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !487

if.then5:                                         ; preds = %for.end
  store %struct.fibnode* null, %struct.fibnode** %min, align 8, !dbg !488
  br label %if.end9, !dbg !489

if.else:                                          ; preds = %for.end
  %right7 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i64 0, i32 3, !dbg !490
  %4 = bitcast %struct.fibnode** %right7 to i64*, !dbg !490
  %5 = load i64, i64* %4, align 8, !dbg !490
  %6 = bitcast %struct.fibnode** %min to i64*, !dbg !492
  store i64 %5, i64* %6, align 8, !dbg !492
  tail call fastcc void @fibheap_consolidate(%struct.fibheap* %heap) #7, !dbg !493
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  ret %struct.fibnode* %0, !dbg !494
}

; Function Attrs: nounwind uwtable
define dso_local i8* @fibheap_replace_key_data(%struct.fibheap* %heap, %struct.fibnode* %node, i64 %key, i8* %data) local_unnamed_addr #5 !dbg !495 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !499, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata %struct.fibnode* %node, metadata !500, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i64 %key, metadata !501, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i8* %data, metadata !502, metadata !DIExpression()), !dbg !506
  %call = tail call fastcc i32 @fibheap_comp_data(%struct.fibheap* %heap, i64 %key, i8* %data, %struct.fibnode* %node) #7, !dbg !507
  %cmp = icmp sgt i32 %call, 0, !dbg !509
  br i1 %cmp, label %cleanup, label %if.end, !dbg !510

if.end:                                           ; preds = %entry
  %data1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 5, !dbg !511
  %0 = load i8*, i8** %data1, align 8, !dbg !511
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !506
  %key2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 4, !dbg !512
  %1 = load i64, i64* %key2, align 8, !dbg !512
  call void @llvm.dbg.value(metadata i64 %1, metadata !504, metadata !DIExpression()), !dbg !506
  store i8* %data, i8** %data1, align 8, !dbg !513
  store i64 %key, i64* %key2, align 8, !dbg !514
  %parent = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 0, !dbg !515
  %2 = load %struct.fibnode*, %struct.fibnode** %parent, align 8, !dbg !515
  call void @llvm.dbg.value(metadata %struct.fibnode* %2, metadata !505, metadata !DIExpression()), !dbg !506
  %cmp5 = icmp eq i64 %1, %key, !dbg !516
  %cmp6 = icmp ne i64 %1, -9223372036854775808, !dbg !518
  %or.cond = and i1 %cmp5, %cmp6, !dbg !519
  br i1 %or.cond, label %cleanup, label %if.end8, !dbg !519

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq %struct.fibnode* %2, null, !dbg !520
  br i1 %cmp9, label %if.end14, label %land.lhs.true10, !dbg !522

land.lhs.true10:                                  ; preds = %if.end8
  %call11 = tail call fastcc i32 @fibheap_compare(%struct.fibheap* %heap, %struct.fibnode* %node, %struct.fibnode* nonnull %2) #7, !dbg !523
  %cmp12 = icmp slt i32 %call11, 1, !dbg !524
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !525

if.then13:                                        ; preds = %land.lhs.true10
  tail call fastcc void @fibheap_cut(%struct.fibheap* %heap, %struct.fibnode* %node, %struct.fibnode* nonnull %2) #7, !dbg !526
  tail call fastcc void @fibheap_cascading_cut(%struct.fibheap* %heap, %struct.fibnode* nonnull %2) #7, !dbg !528
  br label %if.end14, !dbg !529

if.end14:                                         ; preds = %if.end8, %if.then13, %land.lhs.true10
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 1, !dbg !530
  %3 = load %struct.fibnode*, %struct.fibnode** %min, align 8, !dbg !530
  %call15 = tail call fastcc i32 @fibheap_compare(%struct.fibheap* %heap, %struct.fibnode* %node, %struct.fibnode* %3) #7, !dbg !532
  %cmp16 = icmp slt i32 %call15, 1, !dbg !533
  br i1 %cmp16, label %if.then17, label %cleanup, !dbg !534

if.then17:                                        ; preds = %if.end14
  store %struct.fibnode* %node, %struct.fibnode** %min, align 8, !dbg !535
  br label %cleanup, !dbg !536

cleanup:                                          ; preds = %if.end14, %if.then17, %if.end, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %0, %if.end ], [ %0, %if.then17 ], [ %0, %if.end14 ], !dbg !506
  ret i8* %retval.0, !dbg !537
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @fibheap_comp_data(%struct.fibheap* %heap, i64 %key, i8* %data, %struct.fibnode* %b) unnamed_addr #0 !dbg !538 {
entry:
  %a = alloca %struct.fibnode, align 8
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !542, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %key, metadata !543, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i8* %data, metadata !544, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata %struct.fibnode* %b, metadata !545, metadata !DIExpression()), !dbg !547
  %0 = bitcast %struct.fibnode* %a to i8*, !dbg !548
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8, !dbg !548
  %key1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %a, i64 0, i32 4, !dbg !549
  store i64 %key, i64* %key1, align 8, !dbg !550
  %data2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %a, i64 0, i32 5, !dbg !551
  store i8* %data, i8** %data2, align 8, !dbg !552
  call void @llvm.dbg.value(metadata %struct.fibnode* %a, metadata !546, metadata !DIExpression(DW_OP_deref)), !dbg !547
  %call = call fastcc i32 @fibheap_compare(%struct.fibheap* %heap, %struct.fibnode* nonnull %a, %struct.fibnode* %b) #7, !dbg !553
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8, !dbg !554
  ret i32 %call, !dbg !555
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fibheap_cut(%struct.fibheap* %heap, %struct.fibnode* %node, %struct.fibnode* %parent) unnamed_addr #5 !dbg !556 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !560, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata %struct.fibnode* %node, metadata !561, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata %struct.fibnode* %parent, metadata !562, metadata !DIExpression()), !dbg !563
  %call = tail call fastcc %struct.fibnode* @fibnode_remove(%struct.fibnode* %node) #7, !dbg !564
  %degree = getelementptr inbounds %struct.fibnode, %struct.fibnode* %parent, i64 0, i32 6, !dbg !565
  %bf.load = load i32, i32* %degree, align 8, !dbg !566
  %dec = add i32 %bf.load, 2147483647, !dbg !566
  %bf.value = and i32 %dec, 2147483647, !dbg !566
  %bf.clear2 = and i32 %bf.load, -2147483648, !dbg !566
  %bf.set = or i32 %bf.clear2, %bf.value, !dbg !566
  store i32 %bf.set, i32* %degree, align 8, !dbg !566
  tail call fastcc void @fibheap_ins_root(%struct.fibheap* %heap, %struct.fibnode* %node) #7, !dbg !567
  %parent3 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 0, !dbg !568
  store %struct.fibnode* null, %struct.fibnode** %parent3, align 8, !dbg !569
  %mark = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 6, !dbg !570
  %bf.load4 = load i32, i32* %mark, align 8, !dbg !571
  %bf.clear5 = and i32 %bf.load4, 2147483647, !dbg !571
  store i32 %bf.clear5, i32* %mark, align 8, !dbg !571
  ret void, !dbg !572
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fibheap_cascading_cut(%struct.fibheap* %heap, %struct.fibnode* %y) unnamed_addr #5 !dbg !573 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !575, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata %struct.fibnode* %y, metadata !576, metadata !DIExpression()), !dbg !578
  br label %while.cond, !dbg !579

while.cond:                                       ; preds = %if.else, %entry
  %y.addr.0 = phi %struct.fibnode* [ %y, %entry ], [ %0, %if.else ]
  call void @llvm.dbg.value(metadata %struct.fibnode* %y.addr.0, metadata !576, metadata !DIExpression()), !dbg !578
  %parent = getelementptr inbounds %struct.fibnode, %struct.fibnode* %y.addr.0, i64 0, i32 0, !dbg !580
  %0 = load %struct.fibnode*, %struct.fibnode** %parent, align 8, !dbg !580
  call void @llvm.dbg.value(metadata %struct.fibnode* %0, metadata !577, metadata !DIExpression()), !dbg !578
  %cmp = icmp eq %struct.fibnode* %0, null, !dbg !581
  br i1 %cmp, label %cleanup.cont.loopexit, label %while.body, !dbg !579

while.body:                                       ; preds = %while.cond
  %mark = getelementptr inbounds %struct.fibnode, %struct.fibnode* %y.addr.0, i64 0, i32 6, !dbg !582
  %bf.load = load i32, i32* %mark, align 8, !dbg !582
  %cmp1 = icmp sgt i32 %bf.load, -1, !dbg !585
  br i1 %cmp1, label %if.then, label %if.else, !dbg !586

if.then:                                          ; preds = %while.body
  %mark.lcssa = phi i32* [ %mark, %while.body ], !dbg !582
  %bf.load.lcssa = phi i32 [ %bf.load, %while.body ], !dbg !582
  call void @llvm.dbg.value(metadata %struct.fibnode* %y.addr.0, metadata !576, metadata !DIExpression()), !dbg !578
  %bf.set = or i32 %bf.load.lcssa, -2147483648, !dbg !587
  store i32 %bf.set, i32* %mark.lcssa, align 8, !dbg !587
  br label %cleanup.cont, !dbg !589

if.else:                                          ; preds = %while.body
  tail call fastcc void @fibheap_cut(%struct.fibheap* %heap, %struct.fibnode* %y.addr.0, %struct.fibnode* nonnull %0) #7, !dbg !590
  call void @llvm.dbg.value(metadata %struct.fibnode* %0, metadata !576, metadata !DIExpression()), !dbg !578
  br label %while.cond, !dbg !579, !llvm.loop !592

cleanup.cont.loopexit:                            ; preds = %while.cond
  br label %cleanup.cont, !dbg !594

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.then
  ret void, !dbg !594
}

; Function Attrs: nounwind uwtable
define dso_local i8* @fibheap_replace_data(%struct.fibheap* %heap, %struct.fibnode* %node, i8* %data) local_unnamed_addr #5 !dbg !595 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !599, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata %struct.fibnode* %node, metadata !600, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i8* %data, metadata !601, metadata !DIExpression()), !dbg !602
  %key = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 4, !dbg !603
  %0 = load i64, i64* %key, align 8, !dbg !603
  %call = tail call i8* @fibheap_replace_key_data(%struct.fibheap* %heap, %struct.fibnode* %node, i64 %0, i8* %data) #7, !dbg !604
  ret i8* %call, !dbg !605
}

; Function Attrs: nounwind uwtable
define dso_local i64 @fibheap_replace_key(%struct.fibheap* %heap, %struct.fibnode* %node, i64 %key) local_unnamed_addr #5 !dbg !606 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !610, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata %struct.fibnode* %node, metadata !611, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i64 %key, metadata !612, metadata !DIExpression()), !dbg !614
  %key1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 4, !dbg !615
  %0 = load i64, i64* %key1, align 8, !dbg !615
  %data = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 5, !dbg !616
  %1 = load i8*, i8** %data, align 8, !dbg !616
  %call = tail call i8* @fibheap_replace_key_data(%struct.fibheap* %heap, %struct.fibnode* %node, i64 %key, i8* %1) #7, !dbg !617
  %sext = shl i64 %0, 32, !dbg !618
  %conv2 = ashr exact i64 %sext, 32, !dbg !618
  ret i64 %conv2, !dbg !619
}

; Function Attrs: nounwind uwtable
define dso_local i8* @fibheap_delete_node(%struct.fibheap* %heap, %struct.fibnode* %node) local_unnamed_addr #5 !dbg !620 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !624, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata %struct.fibnode* %node, metadata !625, metadata !DIExpression()), !dbg !627
  %data = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 5, !dbg !628
  %0 = load i8*, i8** %data, align 8, !dbg !628
  call void @llvm.dbg.value(metadata i8* %0, metadata !626, metadata !DIExpression()), !dbg !627
  %call = tail call i64 @fibheap_replace_key(%struct.fibheap* %heap, %struct.fibnode* %node, i64 -9223372036854775808) #7, !dbg !629
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 1, !dbg !630
  %1 = load %struct.fibnode*, %struct.fibnode** %min, align 8, !dbg !630
  %cmp = icmp eq %struct.fibnode* %1, %node, !dbg !632
  br i1 %cmp, label %if.end, label %if.then, !dbg !633

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !634
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #6, !dbg !636
  tail call void @abort() #6, !dbg !637
  br label %if.end, !dbg !638

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i8* @fibheap_extract_min(%struct.fibheap* %heap) #7, !dbg !639
  ret i8* %0, !dbg !640
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fibheap_delete(%struct.fibheap* %heap) local_unnamed_addr #5 !dbg !641 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !645, metadata !DIExpression()), !dbg !646
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 1, !dbg !646
  br label %while.cond, !dbg !647

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.fibnode*, %struct.fibnode** %min, align 8, !dbg !648
  %cmp = icmp eq %struct.fibnode* %0, null, !dbg !649
  br i1 %cmp, label %while.end, label %while.body, !dbg !647

while.body:                                       ; preds = %while.cond
  %call = tail call fastcc %struct.fibnode* @fibheap_extr_min_node(%struct.fibheap* %heap) #7, !dbg !650
  %1 = bitcast %struct.fibnode* %call to i8*, !dbg !650
  tail call void @free(i8* %1) #6, !dbg !651
  br label %while.cond, !dbg !647, !llvm.loop !652

while.end:                                        ; preds = %while.cond
  %2 = bitcast %struct.fibheap* %heap to i8*, !dbg !654
  tail call void @free(i8* %2) #6, !dbg !655
  ret void, !dbg !656
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fibheap_empty(%struct.fibheap* %heap) local_unnamed_addr #5 !dbg !657 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !661, metadata !DIExpression()), !dbg !662
  %nodes = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 0, !dbg !663
  %0 = load i64, i64* %nodes, align 8, !dbg !663
  %cmp = icmp eq i64 %0, 0, !dbg !664
  %conv = zext i1 %cmp to i32, !dbg !664
  ret i32 %conv, !dbg !665
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fibheap_rem_root(%struct.fibheap* %heap, %struct.fibnode* %node) unnamed_addr #5 !dbg !666 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !668, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata %struct.fibnode* %node, metadata !669, metadata !DIExpression()), !dbg !670
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 2, !dbg !671
  %0 = load %struct.fibnode*, %struct.fibnode** %left, align 8, !dbg !671
  %cmp = icmp eq %struct.fibnode* %0, %node, !dbg !673
  br i1 %cmp, label %if.then, label %if.else, !dbg !674

if.then:                                          ; preds = %entry
  %root = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 2, !dbg !675
  store %struct.fibnode* null, %struct.fibnode** %root, align 8, !dbg !676
  br label %if.end, !dbg !677

if.else:                                          ; preds = %entry
  %call = tail call fastcc %struct.fibnode* @fibnode_remove(%struct.fibnode* %node) #7, !dbg !678
  %root1 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 2, !dbg !679
  store %struct.fibnode* %call, %struct.fibnode** %root1, align 8, !dbg !680
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !681
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fibheap_consolidate(%struct.fibheap* %heap) unnamed_addr #5 !dbg !682 {
entry:
  %a = alloca [65 x %struct.fibnode*], align 16
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !684, metadata !DIExpression()), !dbg !700
  %0 = bitcast [65 x %struct.fibnode*]* %a to i8*, !dbg !701
  call void @llvm.lifetime.start.p0i8(i64 520, i8* nonnull %0) #8, !dbg !701
  call void @llvm.dbg.declare(metadata [65 x %struct.fibnode*]* %a, metadata !685, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata i32 65, metadata !694, metadata !DIExpression()), !dbg !700
  %call = call i8* @memset(i8* nonnull %0, i32 0, i64 520) #6, !dbg !703
  %root = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 2, !dbg !700
  br label %while.cond, !dbg !704

while.cond:                                       ; preds = %while.end, %entry
  %1 = load %struct.fibnode*, %struct.fibnode** %root, align 8, !dbg !705
  call void @llvm.dbg.value(metadata %struct.fibnode* %1, metadata !689, metadata !DIExpression()), !dbg !700
  %cmp = icmp eq %struct.fibnode* %1, null, !dbg !706
  br i1 %cmp, label %while.end15, label %while.body, !dbg !704

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.fibnode* %1, metadata !691, metadata !DIExpression()), !dbg !700
  call fastcc void @fibheap_rem_root(%struct.fibheap* %heap, %struct.fibnode* nonnull %1) #7, !dbg !707
  %degree = getelementptr inbounds %struct.fibnode, %struct.fibnode* %1, i64 0, i32 6, !dbg !708
  %bf.load = load i32, i32* %degree, align 8, !dbg !708
  call void @llvm.dbg.value(metadata i32 %bf.load, metadata !693, metadata !DIExpression(DW_OP_constu, 2147483647, DW_OP_and, DW_OP_stack_value)), !dbg !700
  %2 = and i32 %bf.load, 2147483647, !dbg !709
  %3 = zext i32 %2 to i64, !dbg !709
  br label %while.cond2, !dbg !709

while.cond2:                                      ; preds = %while.body5, %while.body
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %while.body5 ], [ %3, %while.body ], !dbg !710
  %x.0 = phi %struct.fibnode* [ %spec.select, %while.body5 ], [ %1, %while.body ], !dbg !710
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !693, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata %struct.fibnode* %x.0, metadata !691, metadata !DIExpression()), !dbg !700
  %arrayidx = getelementptr inbounds [65 x %struct.fibnode*], [65 x %struct.fibnode*]* %a, i64 0, i64 %indvars.iv2, !dbg !711
  %4 = load %struct.fibnode*, %struct.fibnode** %arrayidx, align 8, !dbg !711
  %cmp3 = icmp eq %struct.fibnode* %4, null, !dbg !712
  br i1 %cmp3, label %while.end, label %while.body5, !dbg !709

while.body5:                                      ; preds = %while.cond2
  call void @llvm.dbg.value(metadata %struct.fibnode* %4, metadata !690, metadata !DIExpression()), !dbg !700
  %call8 = call fastcc i32 @fibheap_compare(%struct.fibheap* %heap, %struct.fibnode* %x.0, %struct.fibnode* nonnull %4) #7, !dbg !713
  %cmp9 = icmp sgt i32 %call8, 0, !dbg !714
  %spec.select = select i1 %cmp9, %struct.fibnode* %4, %struct.fibnode* %x.0, !dbg !715
  %spec.select1 = select i1 %cmp9, %struct.fibnode* %x.0, %struct.fibnode* %4, !dbg !715
  call void @llvm.dbg.value(metadata %struct.fibnode* %spec.select1, metadata !690, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata %struct.fibnode* %spec.select, metadata !691, metadata !DIExpression()), !dbg !700
  call fastcc void @fibheap_link(%struct.fibheap* %heap, %struct.fibnode* %spec.select1, %struct.fibnode* %spec.select) #7, !dbg !716
  store %struct.fibnode* null, %struct.fibnode** %arrayidx, align 8, !dbg !717
  %indvars.iv.next3 = add nuw i64 %indvars.iv2, 1, !dbg !718
  call void @llvm.dbg.value(metadata i32 undef, metadata !693, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !700
  br label %while.cond2, !dbg !709, !llvm.loop !719

while.end:                                        ; preds = %while.cond2
  %x.0.lcssa = phi %struct.fibnode* [ %x.0, %while.cond2 ], !dbg !710
  %arrayidx.lcssa = phi %struct.fibnode** [ %arrayidx, %while.cond2 ], !dbg !711
  call void @llvm.dbg.value(metadata %struct.fibnode* %x.0.lcssa, metadata !691, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata %struct.fibnode* %x.0.lcssa, metadata !691, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata %struct.fibnode* %x.0.lcssa, metadata !691, metadata !DIExpression()), !dbg !700
  store %struct.fibnode* %x.0.lcssa, %struct.fibnode** %arrayidx.lcssa, align 8, !dbg !721
  br label %while.cond, !dbg !704, !llvm.loop !722

while.end15:                                      ; preds = %while.cond
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %heap, i64 0, i32 1, !dbg !724
  store %struct.fibnode* null, %struct.fibnode** %min, align 8, !dbg !725
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !700
  %5 = bitcast %struct.fibnode** %min to i64*, !dbg !726
  br label %for.cond, !dbg !732

for.cond:                                         ; preds = %for.inc, %while.end15
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %while.end15 ], !dbg !733
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !692, metadata !DIExpression()), !dbg !700
  %exitcond = icmp eq i64 %indvars.iv, 65, !dbg !734
  br i1 %exitcond, label %for.end, label %for.body, !dbg !735

for.body:                                         ; preds = %for.cond
  %arrayidx19 = getelementptr inbounds [65 x %struct.fibnode*], [65 x %struct.fibnode*]* %a, i64 0, i64 %indvars.iv, !dbg !736
  %6 = load %struct.fibnode*, %struct.fibnode** %arrayidx19, align 8, !dbg !736
  %cmp20 = icmp eq %struct.fibnode* %6, null, !dbg !737
  br i1 %cmp20, label %for.inc, label %if.then22, !dbg !738

if.then22:                                        ; preds = %for.body
  call fastcc void @fibheap_ins_root(%struct.fibheap* %heap, %struct.fibnode* nonnull %6) #7, !dbg !739
  %7 = load %struct.fibnode*, %struct.fibnode** %min, align 8, !dbg !740
  %cmp26 = icmp eq %struct.fibnode* %7, null, !dbg !741
  br i1 %cmp26, label %if.then34, label %lor.lhs.false, !dbg !742

lor.lhs.false:                                    ; preds = %if.then22
  %8 = load %struct.fibnode*, %struct.fibnode** %arrayidx19, align 8, !dbg !743
  %call31 = call fastcc i32 @fibheap_compare(%struct.fibheap* %heap, %struct.fibnode* %8, %struct.fibnode* nonnull %7) #7, !dbg !744
  %cmp32 = icmp slt i32 %call31, 0, !dbg !745
  br i1 %cmp32, label %if.then34, label %for.inc, !dbg !746

if.then34:                                        ; preds = %lor.lhs.false, %if.then22
  %9 = bitcast %struct.fibnode** %arrayidx19 to i64*, !dbg !747
  %10 = load i64, i64* %9, align 8, !dbg !747
  store i64 %10, i64* %5, align 8, !dbg !748
  br label %for.inc, !dbg !749

for.inc:                                          ; preds = %for.body, %if.then34, %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !750
  call void @llvm.dbg.value(metadata i32 undef, metadata !692, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !700
  br label %for.cond, !dbg !751, !llvm.loop !752

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 520, i8* nonnull %0) #8, !dbg !754
  ret void, !dbg !754
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.fibnode* @fibnode_remove(%struct.fibnode* %node) unnamed_addr #5 !dbg !755 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibnode* %node, metadata !759, metadata !DIExpression()), !dbg !761
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 2, !dbg !762
  %0 = load %struct.fibnode*, %struct.fibnode** %left, align 8, !dbg !762
  %cmp = icmp eq %struct.fibnode* %0, %node, !dbg !764
  %1 = ptrtoint %struct.fibnode* %0 to i64, !dbg !765
  br i1 %cmp, label %if.end, label %if.else, !dbg !765

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.fibnode* %0, metadata !760, metadata !DIExpression()), !dbg !761
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %ret.0 = phi %struct.fibnode* [ %0, %if.else ], [ null, %entry ], !dbg !766
  call void @llvm.dbg.value(metadata %struct.fibnode* %ret.0, metadata !760, metadata !DIExpression()), !dbg !761
  %parent = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 0, !dbg !767
  %2 = load %struct.fibnode*, %struct.fibnode** %parent, align 8, !dbg !767
  %cmp2 = icmp eq %struct.fibnode* %2, null, !dbg !769
  br i1 %cmp2, label %if.end8, label %land.lhs.true, !dbg !770

land.lhs.true:                                    ; preds = %if.end
  %child = getelementptr inbounds %struct.fibnode, %struct.fibnode* %2, i64 0, i32 1, !dbg !771
  %3 = load %struct.fibnode*, %struct.fibnode** %child, align 8, !dbg !771
  %cmp4 = icmp eq %struct.fibnode* %3, %node, !dbg !772
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !773

if.then5:                                         ; preds = %land.lhs.true
  store %struct.fibnode* %ret.0, %struct.fibnode** %child, align 8, !dbg !774
  %.phi.trans.insert = bitcast %struct.fibnode** %left to i64*, !dbg !761
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !775
  br label %if.end8, !dbg !776

if.end8:                                          ; preds = %if.end, %if.then5, %land.lhs.true
  %4 = phi i64 [ %1, %if.end ], [ %.pre, %if.then5 ], [ %1, %land.lhs.true ], !dbg !775
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 3, !dbg !777
  %5 = load %struct.fibnode*, %struct.fibnode** %right, align 8, !dbg !777
  %left10 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %5, i64 0, i32 2, !dbg !778
  %6 = bitcast %struct.fibnode** %left10 to i64*, !dbg !779
  store i64 %4, i64* %6, align 8, !dbg !779
  %7 = bitcast %struct.fibnode** %right to i64*, !dbg !780
  %8 = load i64, i64* %7, align 8, !dbg !780
  %9 = load %struct.fibnode*, %struct.fibnode** %left, align 8, !dbg !781
  %right13 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %9, i64 0, i32 3, !dbg !782
  %10 = bitcast %struct.fibnode** %right13 to i64*, !dbg !783
  store i64 %8, i64* %10, align 8, !dbg !783
  store %struct.fibnode* null, %struct.fibnode** %parent, align 8, !dbg !784
  store %struct.fibnode* %node, %struct.fibnode** %left, align 8, !dbg !785
  store %struct.fibnode* %node, %struct.fibnode** %right, align 8, !dbg !786
  ret %struct.fibnode* %ret.0, !dbg !787
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fibheap_link(%struct.fibheap* %heap, %struct.fibnode* %node, %struct.fibnode* %parent) unnamed_addr #5 !dbg !788 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !790, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata %struct.fibnode* %node, metadata !791, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata %struct.fibnode* %parent, metadata !792, metadata !DIExpression()), !dbg !793
  %child = getelementptr inbounds %struct.fibnode, %struct.fibnode* %parent, i64 0, i32 1, !dbg !794
  %0 = load %struct.fibnode*, %struct.fibnode** %child, align 8, !dbg !794
  %cmp = icmp eq %struct.fibnode* %0, null, !dbg !796
  br i1 %cmp, label %if.then, label %if.else, !dbg !797

if.then:                                          ; preds = %entry
  store %struct.fibnode* %node, %struct.fibnode** %child, align 8, !dbg !798
  br label %if.end, !dbg !799

if.else:                                          ; preds = %entry
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i64 0, i32 2, !dbg !800
  %1 = load %struct.fibnode*, %struct.fibnode** %left, align 8, !dbg !800
  tail call fastcc void @fibnode_insert_after(%struct.fibnode* %1, %struct.fibnode* %node) #7, !dbg !800
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %parent3 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 0, !dbg !801
  store %struct.fibnode* %parent, %struct.fibnode** %parent3, align 8, !dbg !802
  %degree = getelementptr inbounds %struct.fibnode, %struct.fibnode* %parent, i64 0, i32 6, !dbg !803
  %bf.load = load i32, i32* %degree, align 8, !dbg !804
  %inc = add i32 %bf.load, 1, !dbg !804
  %bf.value = and i32 %inc, 2147483647, !dbg !804
  %bf.clear5 = and i32 %bf.load, -2147483648, !dbg !804
  %bf.set = or i32 %bf.clear5, %bf.value, !dbg !804
  store i32 %bf.set, i32* %degree, align 8, !dbg !804
  %mark = getelementptr inbounds %struct.fibnode, %struct.fibnode* %node, i64 0, i32 6, !dbg !805
  %bf.load6 = load i32, i32* %mark, align 8, !dbg !806
  %bf.clear7 = and i32 %bf.load6, 2147483647, !dbg !806
  store i32 %bf.clear7, i32* %mark, align 8, !dbg !806
  ret void, !dbg !807
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fibnode_insert_after(%struct.fibnode* %a, %struct.fibnode* %b) unnamed_addr #5 !dbg !808 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibnode* %a, metadata !812, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata %struct.fibnode* %b, metadata !813, metadata !DIExpression()), !dbg !814
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %a, i64 0, i32 3, !dbg !815
  %0 = load %struct.fibnode*, %struct.fibnode** %right, align 8, !dbg !815
  %cmp = icmp eq %struct.fibnode* %0, %a, !dbg !817
  br i1 %cmp, label %if.then, label %if.else, !dbg !818

if.then:                                          ; preds = %entry
  store %struct.fibnode* %b, %struct.fibnode** %right, align 8, !dbg !819
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %a, i64 0, i32 2, !dbg !821
  store %struct.fibnode* %b, %struct.fibnode** %left, align 8, !dbg !822
  %right2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %b, i64 0, i32 3, !dbg !823
  store %struct.fibnode* %a, %struct.fibnode** %right2, align 8, !dbg !824
  %left3 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %b, i64 0, i32 2, !dbg !825
  store %struct.fibnode* %a, %struct.fibnode** %left3, align 8, !dbg !826
  br label %if.end, !dbg !827

if.else:                                          ; preds = %entry
  %1 = ptrtoint %struct.fibnode* %0 to i64, !dbg !818
  %right5 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %b, i64 0, i32 3, !dbg !828
  %2 = bitcast %struct.fibnode** %right5 to i64*, !dbg !830
  store i64 %1, i64* %2, align 8, !dbg !830
  %3 = load %struct.fibnode*, %struct.fibnode** %right, align 8, !dbg !831
  %left7 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %3, i64 0, i32 2, !dbg !832
  store %struct.fibnode* %b, %struct.fibnode** %left7, align 8, !dbg !833
  store %struct.fibnode* %b, %struct.fibnode** %right, align 8, !dbg !834
  %left9 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %b, i64 0, i32 2, !dbg !835
  store %struct.fibnode* %a, %struct.fibnode** %left9, align 8, !dbg !836
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !837
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!39, !40, !41}
!llvm.ident = !{!42}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "fibheap.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !8, !9, !11, !12, !13, !38}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheap_t", file: !14, line: 57, baseType: !15)
!14 = !DIFile(filename: "./include/fibheap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibheap", file: !14, line: 52, size: 192, elements: !17)
!17 = !{!18, !22, !37}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !16, file: !14, line: 54, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !16, file: !14, line: 55, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibnode", file: !14, line: 59, size: 448, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !33, !34, !36}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !24, file: !14, line: 61, baseType: !23, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !24, file: !14, line: 62, baseType: !23, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !24, file: !14, line: 63, baseType: !23, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !24, file: !14, line: 64, baseType: !23, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !24, file: !14, line: 65, baseType: !31, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheapkey_t", file: !14, line: 50, baseType: !32)
!32 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !24, file: !14, line: 66, baseType: !8, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "degree", scope: !24, file: !14, line: 71, baseType: !35, size: 31, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !24, file: !14, line: 72, baseType: !35, size: 1, offset: 415, flags: DIFlagBitField, extraData: i64 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !16, file: !14, line: 56, baseType: !23, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibnode_t", file: !14, line: 74, baseType: !23)
!39 = !{i32 2, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!43 = distinct !DISubprogram(name: "atoi", scope: !44, file: !44, line: 361, type: !45, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!44 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!45 = !DISubroutineType(types: !46)
!46 = !{!4, !9}
!47 = !{!48}
!48 = !DILocalVariable(name: "__nptr", arg: 1, scope: !43, file: !44, line: 361, type: !9)
!49 = !DILocation(line: 0, scope: !43)
!50 = !DILocation(line: 363, column: 16, scope: !43)
!51 = !DILocation(line: 363, column: 10, scope: !43)
!52 = !DILocation(line: 363, column: 3, scope: !43)
!53 = distinct !DISubprogram(name: "atol", scope: !44, file: !44, line: 366, type: !54, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!32, !9}
!56 = !{!57}
!57 = !DILocalVariable(name: "__nptr", arg: 1, scope: !53, file: !44, line: 366, type: !9)
!58 = !DILocation(line: 0, scope: !53)
!59 = !DILocation(line: 368, column: 10, scope: !53)
!60 = !DILocation(line: 368, column: 3, scope: !53)
!61 = distinct !DISubprogram(name: "atoll", scope: !44, file: !44, line: 373, type: !62, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !9}
!64 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!65 = !{!66}
!66 = !DILocalVariable(name: "__nptr", arg: 1, scope: !61, file: !44, line: 373, type: !9)
!67 = !DILocation(line: 0, scope: !61)
!68 = !DILocation(line: 375, column: 10, scope: !61)
!69 = !DILocation(line: 375, column: 3, scope: !61)
!70 = distinct !DISubprogram(name: "bsearch", scope: !71, file: !71, line: 20, type: !72, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !80)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!72 = !DISubroutineType(types: !73)
!73 = !{!8, !74, !74, !19, !19, !76}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !44, line: 808, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!4, !74, !74}
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!81 = !DILocalVariable(name: "__key", arg: 1, scope: !70, file: !71, line: 20, type: !74)
!82 = !DILocalVariable(name: "__base", arg: 2, scope: !70, file: !71, line: 20, type: !74)
!83 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !70, file: !71, line: 20, type: !19)
!84 = !DILocalVariable(name: "__size", arg: 4, scope: !70, file: !71, line: 20, type: !19)
!85 = !DILocalVariable(name: "__compar", arg: 5, scope: !70, file: !71, line: 21, type: !76)
!86 = !DILocalVariable(name: "__l", scope: !70, file: !71, line: 23, type: !19)
!87 = !DILocalVariable(name: "__u", scope: !70, file: !71, line: 23, type: !19)
!88 = !DILocalVariable(name: "__idx", scope: !70, file: !71, line: 23, type: !19)
!89 = !DILocalVariable(name: "__p", scope: !70, file: !71, line: 24, type: !74)
!90 = !DILocalVariable(name: "__comparison", scope: !70, file: !71, line: 25, type: !4)
!91 = !DILocation(line: 0, scope: !70)
!92 = !DILocation(line: 29, column: 3, scope: !70)
!93 = !DILocation(line: 27, column: 7, scope: !70)
!94 = !DILocation(line: 29, column: 14, scope: !70)
!95 = !DILocation(line: 31, column: 20, scope: !96)
!96 = distinct !DILexicalBlock(scope: !70, file: !71, line: 30, column: 5)
!97 = !DILocation(line: 31, column: 27, scope: !96)
!98 = !DILocation(line: 32, column: 56, scope: !96)
!99 = !DILocation(line: 32, column: 47, scope: !96)
!100 = !DILocation(line: 33, column: 22, scope: !96)
!101 = !DILocation(line: 34, column: 24, scope: !102)
!102 = distinct !DILexicalBlock(scope: !96, file: !71, line: 34, column: 11)
!103 = !DILocation(line: 34, column: 11, scope: !96)
!104 = !DILocation(line: 36, column: 29, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !71, line: 36, column: 16)
!106 = !DILocation(line: 36, column: 16, scope: !102)
!107 = !DILocation(line: 37, column: 14, scope: !105)
!108 = distinct !{!108, !92, !109}
!109 = !DILocation(line: 40, column: 5, scope: !70)
!110 = !DILocation(line: 43, column: 1, scope: !70)
!111 = distinct !DISubprogram(name: "atof", scope: !112, file: !112, line: 25, type: !113, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !9}
!115 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!116 = !{!117}
!117 = !DILocalVariable(name: "__nptr", arg: 1, scope: !111, file: !112, line: 25, type: !9)
!118 = !DILocation(line: 0, scope: !111)
!119 = !DILocation(line: 27, column: 10, scope: !111)
!120 = !DILocation(line: 27, column: 3, scope: !111)
!121 = distinct !DISubprogram(name: "vprintf", scope: !122, file: !122, line: 39, type: !123, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !133)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!123 = !DISubroutineType(types: !124)
!124 = !{!4, !125, !126}
!125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 28, size: 192, elements: !128)
!128 = !{!129, !130, !131, !132}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !127, file: !1, line: 28, baseType: !35, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !127, file: !1, line: 28, baseType: !35, size: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !127, file: !1, line: 28, baseType: !8, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !127, file: !1, line: 28, baseType: !8, size: 64, offset: 128)
!133 = !{!134, !135}
!134 = !DILocalVariable(name: "__fmt", arg: 1, scope: !121, file: !122, line: 39, type: !125)
!135 = !DILocalVariable(name: "__arg", arg: 2, scope: !121, file: !122, line: 39, type: !126)
!136 = !DILocation(line: 0, scope: !121)
!137 = !DILocation(line: 41, column: 20, scope: !121)
!138 = !DILocation(line: 41, column: 10, scope: !121)
!139 = !DILocation(line: 41, column: 3, scope: !121)
!140 = distinct !DISubprogram(name: "getchar", scope: !122, file: !122, line: 47, type: !141, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!141 = !DISubroutineType(types: !142)
!142 = !{!4}
!143 = !DILocation(line: 49, column: 16, scope: !140)
!144 = !DILocation(line: 49, column: 10, scope: !140)
!145 = !DILocation(line: 49, column: 3, scope: !140)
!146 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !122, file: !122, line: 56, type: !147, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !204)
!147 = !DISubroutineType(types: !148)
!148 = !{!4, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !152)
!151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !170, !172, !173, !174, !177, !179, !181, !185, !188, !190, !193, !196, !197, !198, !199, !200}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !152, file: !153, line: 51, baseType: !4, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !152, file: !153, line: 54, baseType: !6, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !152, file: !153, line: 55, baseType: !6, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !152, file: !153, line: 56, baseType: !6, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !152, file: !153, line: 57, baseType: !6, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !152, file: !153, line: 58, baseType: !6, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !152, file: !153, line: 59, baseType: !6, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !152, file: !153, line: 60, baseType: !6, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !152, file: !153, line: 61, baseType: !6, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !152, file: !153, line: 64, baseType: !6, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !152, file: !153, line: 65, baseType: !6, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !152, file: !153, line: 66, baseType: !6, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !152, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 36, flags: DIFlagFwdDecl)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !152, file: !153, line: 70, baseType: !171, size: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !152, file: !153, line: 72, baseType: !4, size: 32, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !152, file: !153, line: 73, baseType: !4, size: 32, offset: 928)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !152, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !176, line: 152, baseType: !32)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !152, file: !153, line: 77, baseType: !178, size: 16, offset: 1024)
!178 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !152, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!180 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !152, file: !153, line: 79, baseType: !182, size: 8, offset: 1048)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 1)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !152, file: !153, line: 81, baseType: !186, size: 64, offset: 1088)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !153, line: 43, baseType: null)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !152, file: !153, line: 89, baseType: !189, size: 64, offset: 1152)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !176, line: 153, baseType: !32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !152, file: !153, line: 91, baseType: !191, size: 64, offset: 1216)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !153, line: 37, flags: DIFlagFwdDecl)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !152, file: !153, line: 92, baseType: !194, size: 64, offset: 1280)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !153, line: 38, flags: DIFlagFwdDecl)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !152, file: !153, line: 93, baseType: !171, size: 64, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !152, file: !153, line: 94, baseType: !8, size: 64, offset: 1408)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !152, file: !153, line: 95, baseType: !19, size: 64, offset: 1472)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !152, file: !153, line: 96, baseType: !4, size: 32, offset: 1536)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !152, file: !153, line: 98, baseType: !201, size: 160, offset: 1568)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 20)
!204 = !{!205}
!205 = !DILocalVariable(name: "__fp", arg: 1, scope: !146, file: !122, line: 56, type: !149)
!206 = !DILocation(line: 0, scope: !146)
!207 = !DILocation(line: 58, column: 10, scope: !146)
!208 = !DILocation(line: 58, column: 3, scope: !146)
!209 = distinct !DISubprogram(name: "getc_unlocked", scope: !122, file: !122, line: 66, type: !147, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !210)
!210 = !{!211}
!211 = !DILocalVariable(name: "__fp", arg: 1, scope: !209, file: !122, line: 66, type: !149)
!212 = !DILocation(line: 0, scope: !209)
!213 = !DILocation(line: 68, column: 10, scope: !209)
!214 = !DILocation(line: 68, column: 3, scope: !209)
!215 = distinct !DISubprogram(name: "getchar_unlocked", scope: !122, file: !122, line: 73, type: !141, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!216 = !DILocation(line: 75, column: 10, scope: !215)
!217 = !DILocation(line: 75, column: 3, scope: !215)
!218 = distinct !DISubprogram(name: "putchar", scope: !122, file: !122, line: 82, type: !219, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{!4, !4}
!221 = !{!222}
!222 = !DILocalVariable(name: "__c", arg: 1, scope: !218, file: !122, line: 82, type: !4)
!223 = !DILocation(line: 0, scope: !218)
!224 = !DILocation(line: 84, column: 21, scope: !218)
!225 = !DILocation(line: 84, column: 10, scope: !218)
!226 = !DILocation(line: 84, column: 3, scope: !218)
!227 = distinct !DISubprogram(name: "fputc_unlocked", scope: !122, file: !122, line: 91, type: !228, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!4, !4, !149}
!230 = !{!231, !232}
!231 = !DILocalVariable(name: "__c", arg: 1, scope: !227, file: !122, line: 91, type: !4)
!232 = !DILocalVariable(name: "__stream", arg: 2, scope: !227, file: !122, line: 91, type: !149)
!233 = !DILocation(line: 0, scope: !227)
!234 = !DILocation(line: 93, column: 10, scope: !227)
!235 = !DILocation(line: 93, column: 3, scope: !227)
!236 = distinct !DISubprogram(name: "putc_unlocked", scope: !122, file: !122, line: 101, type: !228, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!237 = !{!238, !239}
!238 = !DILocalVariable(name: "__c", arg: 1, scope: !236, file: !122, line: 101, type: !4)
!239 = !DILocalVariable(name: "__stream", arg: 2, scope: !236, file: !122, line: 101, type: !149)
!240 = !DILocation(line: 0, scope: !236)
!241 = !DILocation(line: 103, column: 10, scope: !236)
!242 = !DILocation(line: 103, column: 3, scope: !236)
!243 = distinct !DISubprogram(name: "putchar_unlocked", scope: !122, file: !122, line: 108, type: !219, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !244)
!244 = !{!245}
!245 = !DILocalVariable(name: "__c", arg: 1, scope: !243, file: !122, line: 108, type: !4)
!246 = !DILocation(line: 0, scope: !243)
!247 = !DILocation(line: 110, column: 10, scope: !243)
!248 = !DILocation(line: 110, column: 3, scope: !243)
!249 = distinct !DISubprogram(name: "getline", scope: !122, file: !122, line: 118, type: !250, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !254)
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !5, !253, !149}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !176, line: 193, baseType: !32)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!254 = !{!255, !256, !257}
!255 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !249, file: !122, line: 118, type: !5)
!256 = !DILocalVariable(name: "__n", arg: 2, scope: !249, file: !122, line: 118, type: !253)
!257 = !DILocalVariable(name: "__stream", arg: 3, scope: !249, file: !122, line: 118, type: !149)
!258 = !DILocation(line: 0, scope: !249)
!259 = !DILocation(line: 120, column: 10, scope: !249)
!260 = !DILocation(line: 120, column: 3, scope: !249)
!261 = distinct !DISubprogram(name: "feof_unlocked", scope: !122, file: !122, line: 128, type: !147, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !262)
!262 = !{!263}
!263 = !DILocalVariable(name: "__stream", arg: 1, scope: !261, file: !122, line: 128, type: !149)
!264 = !DILocation(line: 0, scope: !261)
!265 = !DILocation(line: 130, column: 10, scope: !261)
!266 = !DILocation(line: 130, column: 3, scope: !261)
!267 = distinct !DISubprogram(name: "ferror_unlocked", scope: !122, file: !122, line: 135, type: !147, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !268)
!268 = !{!269}
!269 = !DILocalVariable(name: "__stream", arg: 1, scope: !267, file: !122, line: 135, type: !149)
!270 = !DILocation(line: 0, scope: !267)
!271 = !DILocation(line: 137, column: 10, scope: !267)
!272 = !DILocation(line: 137, column: 3, scope: !267)
!273 = distinct !DISubprogram(name: "fibheap_new", scope: !1, file: !1, line: 57, type: !274, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!274 = !DISubroutineType(types: !275)
!275 = !{!13}
!276 = !DILocation(line: 59, column: 22, scope: !273)
!277 = !DILocation(line: 59, column: 10, scope: !273)
!278 = !DILocation(line: 59, column: 3, scope: !273)
!279 = distinct !DISubprogram(name: "fibheap_insert", scope: !1, file: !1, line: 98, type: !280, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!38, !13, !31, !8}
!282 = !{!283, !284, !285, !286}
!283 = !DILocalVariable(name: "heap", arg: 1, scope: !279, file: !1, line: 98, type: !13)
!284 = !DILocalVariable(name: "key", arg: 2, scope: !279, file: !1, line: 98, type: !31)
!285 = !DILocalVariable(name: "data", arg: 3, scope: !279, file: !1, line: 98, type: !8)
!286 = !DILocalVariable(name: "node", scope: !279, file: !1, line: 100, type: !38)
!287 = !DILocation(line: 0, scope: !279)
!288 = !DILocation(line: 103, column: 10, scope: !279)
!289 = !DILocation(line: 106, column: 9, scope: !279)
!290 = !DILocation(line: 106, column: 14, scope: !279)
!291 = !DILocation(line: 107, column: 9, scope: !279)
!292 = !DILocation(line: 107, column: 13, scope: !279)
!293 = !DILocation(line: 110, column: 3, scope: !279)
!294 = !DILocation(line: 114, column: 13, scope: !295)
!295 = distinct !DILexicalBlock(scope: !279, file: !1, line: 114, column: 7)
!296 = !DILocation(line: 114, column: 17, scope: !295)
!297 = !DILocation(line: 114, column: 25, scope: !295)
!298 = !DILocation(line: 114, column: 34, scope: !295)
!299 = !DILocation(line: 114, column: 51, scope: !295)
!300 = !DILocation(line: 114, column: 38, scope: !295)
!301 = !DILocation(line: 114, column: 7, scope: !279)
!302 = !DILocation(line: 115, column: 15, scope: !295)
!303 = !DILocation(line: 115, column: 5, scope: !295)
!304 = !DILocation(line: 117, column: 9, scope: !279)
!305 = !DILocation(line: 117, column: 14, scope: !279)
!306 = !DILocation(line: 119, column: 3, scope: !279)
!307 = distinct !DISubprogram(name: "fibnode_new", scope: !1, file: !1, line: 64, type: !308, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!308 = !DISubroutineType(types: !309)
!309 = !{!38}
!310 = !{!311}
!311 = !DILocalVariable(name: "node", scope: !307, file: !1, line: 66, type: !38)
!312 = !DILocation(line: 68, column: 22, scope: !307)
!313 = !DILocation(line: 68, column: 10, scope: !307)
!314 = !DILocation(line: 0, scope: !307)
!315 = !DILocation(line: 69, column: 9, scope: !307)
!316 = !DILocation(line: 69, column: 14, scope: !307)
!317 = !DILocation(line: 70, column: 9, scope: !307)
!318 = !DILocation(line: 70, column: 15, scope: !307)
!319 = !DILocation(line: 72, column: 3, scope: !307)
!320 = distinct !DISubprogram(name: "fibheap_ins_root", scope: !1, file: !1, line: 327, type: !321, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !13, !38}
!323 = !{!324, !325}
!324 = !DILocalVariable(name: "heap", arg: 1, scope: !320, file: !1, line: 327, type: !13)
!325 = !DILocalVariable(name: "node", arg: 2, scope: !320, file: !1, line: 327, type: !38)
!326 = !DILocation(line: 0, scope: !320)
!327 = !DILocation(line: 331, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !320, file: !1, line: 331, column: 7)
!329 = !DILocation(line: 331, column: 18, scope: !328)
!330 = !DILocation(line: 331, column: 7, scope: !320)
!331 = !DILocation(line: 333, column: 18, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !1, line: 332, column: 5)
!333 = !DILocation(line: 334, column: 13, scope: !332)
!334 = !DILocation(line: 334, column: 18, scope: !332)
!335 = !DILocation(line: 335, column: 13, scope: !332)
!336 = !DILocation(line: 335, column: 19, scope: !332)
!337 = !DILocation(line: 336, column: 7, scope: !332)
!338 = !DILocation(line: 341, column: 3, scope: !320)
!339 = !DILocation(line: 342, column: 1, scope: !320)
!340 = distinct !DISubprogram(name: "fibheap_min", scope: !1, file: !1, line: 124, type: !341, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !343)
!341 = !DISubroutineType(types: !342)
!342 = !{!8, !13}
!343 = !{!344}
!344 = !DILocalVariable(name: "heap", arg: 1, scope: !340, file: !1, line: 124, type: !13)
!345 = !DILocation(line: 0, scope: !340)
!346 = !DILocation(line: 127, column: 13, scope: !347)
!347 = distinct !DILexicalBlock(scope: !340, file: !1, line: 127, column: 7)
!348 = !DILocation(line: 127, column: 17, scope: !347)
!349 = !DILocation(line: 127, column: 7, scope: !340)
!350 = !DILocation(line: 129, column: 21, scope: !340)
!351 = !DILocation(line: 129, column: 3, scope: !340)
!352 = !DILocation(line: 130, column: 1, scope: !340)
!353 = distinct !DISubprogram(name: "fibheap_min_key", scope: !1, file: !1, line: 134, type: !354, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!31, !13}
!356 = !{!357}
!357 = !DILocalVariable(name: "heap", arg: 1, scope: !353, file: !1, line: 134, type: !13)
!358 = !DILocation(line: 0, scope: !353)
!359 = !DILocation(line: 137, column: 13, scope: !360)
!360 = distinct !DILexicalBlock(scope: !353, file: !1, line: 137, column: 7)
!361 = !DILocation(line: 137, column: 17, scope: !360)
!362 = !DILocation(line: 137, column: 7, scope: !353)
!363 = !DILocation(line: 139, column: 21, scope: !353)
!364 = !DILocation(line: 139, column: 3, scope: !353)
!365 = !DILocation(line: 140, column: 1, scope: !353)
!366 = distinct !DISubprogram(name: "fibheap_union", scope: !1, file: !1, line: 144, type: !367, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !369)
!367 = !DISubroutineType(types: !368)
!368 = !{!13, !13, !13}
!369 = !{!370, !371, !372, !373, !374}
!370 = !DILocalVariable(name: "heapa", arg: 1, scope: !366, file: !1, line: 144, type: !13)
!371 = !DILocalVariable(name: "heapb", arg: 2, scope: !366, file: !1, line: 144, type: !13)
!372 = !DILocalVariable(name: "a_root", scope: !366, file: !1, line: 146, type: !38)
!373 = !DILocalVariable(name: "b_root", scope: !366, file: !1, line: 146, type: !38)
!374 = !DILocalVariable(name: "temp", scope: !366, file: !1, line: 146, type: !38)
!375 = !DILocation(line: 0, scope: !366)
!376 = !DILocation(line: 149, column: 24, scope: !377)
!377 = distinct !DILexicalBlock(scope: !366, file: !1, line: 149, column: 7)
!378 = !DILocation(line: 149, column: 30, scope: !377)
!379 = !DILocation(line: 149, column: 7, scope: !366)
!380 = !DILocation(line: 151, column: 13, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 150, column: 5)
!382 = !DILocation(line: 151, column: 7, scope: !381)
!383 = !DILocation(line: 152, column: 7, scope: !381)
!384 = !DILocation(line: 154, column: 24, scope: !385)
!385 = distinct !DILexicalBlock(scope: !366, file: !1, line: 154, column: 7)
!386 = !DILocation(line: 154, column: 30, scope: !385)
!387 = !DILocation(line: 154, column: 7, scope: !366)
!388 = !DILocation(line: 156, column: 13, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !1, line: 155, column: 5)
!390 = !DILocation(line: 156, column: 7, scope: !389)
!391 = !DILocation(line: 157, column: 7, scope: !389)
!392 = !DILocation(line: 161, column: 11, scope: !366)
!393 = !DILocation(line: 161, column: 17, scope: !366)
!394 = !DILocation(line: 161, column: 23, scope: !366)
!395 = !DILocation(line: 162, column: 11, scope: !366)
!396 = !DILocation(line: 162, column: 17, scope: !366)
!397 = !DILocation(line: 162, column: 23, scope: !366)
!398 = !DILocation(line: 163, column: 18, scope: !366)
!399 = !DILocation(line: 164, column: 26, scope: !366)
!400 = !DILocation(line: 164, column: 16, scope: !366)
!401 = !DILocation(line: 165, column: 16, scope: !366)
!402 = !DILocation(line: 166, column: 26, scope: !366)
!403 = !DILocation(line: 166, column: 10, scope: !366)
!404 = !DILocation(line: 166, column: 16, scope: !366)
!405 = !DILocation(line: 169, column: 38, scope: !406)
!406 = distinct !DILexicalBlock(scope: !366, file: !1, line: 169, column: 7)
!407 = !DILocation(line: 169, column: 50, scope: !406)
!408 = !DILocation(line: 169, column: 7, scope: !406)
!409 = !DILocation(line: 169, column: 55, scope: !406)
!410 = !DILocation(line: 169, column: 7, scope: !366)
!411 = !DILocation(line: 170, column: 25, scope: !406)
!412 = !DILocation(line: 170, column: 16, scope: !406)
!413 = !DILocation(line: 170, column: 5, scope: !406)
!414 = !DILocation(line: 172, column: 9, scope: !366)
!415 = !DILocation(line: 172, column: 3, scope: !366)
!416 = !DILocation(line: 173, column: 3, scope: !366)
!417 = !DILocation(line: 174, column: 1, scope: !366)
!418 = distinct !DISubprogram(name: "fibheap_compare", scope: !1, file: !1, line: 76, type: !419, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!4, !13, !38, !38}
!421 = !{!422, !423, !424}
!422 = !DILocalVariable(name: "heap", arg: 1, scope: !418, file: !1, line: 76, type: !13)
!423 = !DILocalVariable(name: "a", arg: 2, scope: !418, file: !1, line: 76, type: !38)
!424 = !DILocalVariable(name: "b", arg: 3, scope: !418, file: !1, line: 76, type: !38)
!425 = !DILocation(line: 0, scope: !418)
!426 = !DILocation(line: 78, column: 10, scope: !427)
!427 = distinct !DILexicalBlock(scope: !418, file: !1, line: 78, column: 7)
!428 = !DILocation(line: 78, column: 19, scope: !427)
!429 = !DILocation(line: 78, column: 14, scope: !427)
!430 = !DILocation(line: 78, column: 7, scope: !418)
!431 = !DILocation(line: 80, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !418, file: !1, line: 80, column: 7)
!433 = !DILocation(line: 83, column: 1, scope: !418)
!434 = distinct !DISubprogram(name: "fibheap_extract_min", scope: !1, file: !1, line: 178, type: !341, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !435)
!435 = !{!436, !437, !438}
!436 = !DILocalVariable(name: "heap", arg: 1, scope: !434, file: !1, line: 178, type: !13)
!437 = !DILocalVariable(name: "z", scope: !434, file: !1, line: 180, type: !38)
!438 = !DILocalVariable(name: "ret", scope: !434, file: !1, line: 181, type: !8)
!439 = !DILocation(line: 0, scope: !434)
!440 = !DILocation(line: 184, column: 13, scope: !441)
!441 = distinct !DILexicalBlock(scope: !434, file: !1, line: 184, column: 7)
!442 = !DILocation(line: 184, column: 17, scope: !441)
!443 = !DILocation(line: 184, column: 7, scope: !434)
!444 = !DILocation(line: 188, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !1, line: 185, column: 5)
!446 = !DILocation(line: 189, column: 16, scope: !445)
!447 = !DILocation(line: 190, column: 13, scope: !445)
!448 = !DILocation(line: 190, column: 7, scope: !445)
!449 = !DILocation(line: 191, column: 5, scope: !445)
!450 = !DILocation(line: 193, column: 3, scope: !434)
!451 = distinct !DISubprogram(name: "fibheap_extr_min_node", scope: !1, file: !1, line: 291, type: !452, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!38, !13}
!454 = !{!455, !456, !457, !458, !459}
!455 = !DILocalVariable(name: "heap", arg: 1, scope: !451, file: !1, line: 291, type: !13)
!456 = !DILocalVariable(name: "ret", scope: !451, file: !1, line: 293, type: !38)
!457 = !DILocalVariable(name: "x", scope: !451, file: !1, line: 294, type: !38)
!458 = !DILocalVariable(name: "y", scope: !451, file: !1, line: 294, type: !38)
!459 = !DILocalVariable(name: "orig", scope: !451, file: !1, line: 294, type: !38)
!460 = !DILocation(line: 0, scope: !451)
!461 = !DILocation(line: 293, column: 25, scope: !451)
!462 = !DILocation(line: 298, column: 17, scope: !463)
!463 = distinct !DILexicalBlock(scope: !451, file: !1, line: 298, column: 3)
!464 = !DILocation(line: 298, column: 8, scope: !463)
!465 = !DILocation(line: 0, scope: !463)
!466 = !DILocation(line: 298, column: 39, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !1, line: 298, column: 3)
!468 = !DILocation(line: 298, column: 52, scope: !467)
!469 = !DILocation(line: 298, column: 47, scope: !467)
!470 = !DILocation(line: 298, column: 3, scope: !463)
!471 = !DILocation(line: 300, column: 16, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 300, column: 11)
!473 = distinct !DILexicalBlock(scope: !467, file: !1, line: 299, column: 5)
!474 = !DILocation(line: 300, column: 11, scope: !473)
!475 = !DILocation(line: 302, column: 14, scope: !473)
!476 = !DILocation(line: 303, column: 10, scope: !473)
!477 = !DILocation(line: 303, column: 17, scope: !473)
!478 = !DILocation(line: 304, column: 7, scope: !473)
!479 = !DILocation(line: 298, column: 3, scope: !467)
!480 = distinct !{!480, !470, !481}
!481 = !DILocation(line: 305, column: 5, scope: !463)
!482 = !DILocation(line: 308, column: 3, scope: !451)
!483 = !DILocation(line: 309, column: 9, scope: !451)
!484 = !DILocation(line: 309, column: 14, scope: !451)
!485 = !DILocation(line: 312, column: 19, scope: !486)
!486 = distinct !DILexicalBlock(scope: !451, file: !1, line: 312, column: 7)
!487 = !DILocation(line: 312, column: 7, scope: !451)
!488 = !DILocation(line: 313, column: 15, scope: !486)
!489 = !DILocation(line: 313, column: 5, scope: !486)
!490 = !DILocation(line: 318, column: 24, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !1, line: 315, column: 5)
!492 = !DILocation(line: 318, column: 17, scope: !491)
!493 = !DILocation(line: 319, column: 7, scope: !491)
!494 = !DILocation(line: 322, column: 3, scope: !451)
!495 = distinct !DISubprogram(name: "fibheap_replace_key_data", scope: !1, file: !1, line: 198, type: !496, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!8, !13, !38, !31, !8}
!498 = !{!499, !500, !501, !502, !503, !504, !505}
!499 = !DILocalVariable(name: "heap", arg: 1, scope: !495, file: !1, line: 198, type: !13)
!500 = !DILocalVariable(name: "node", arg: 2, scope: !495, file: !1, line: 198, type: !38)
!501 = !DILocalVariable(name: "key", arg: 3, scope: !495, file: !1, line: 199, type: !31)
!502 = !DILocalVariable(name: "data", arg: 4, scope: !495, file: !1, line: 199, type: !8)
!503 = !DILocalVariable(name: "odata", scope: !495, file: !1, line: 201, type: !8)
!504 = !DILocalVariable(name: "okey", scope: !495, file: !1, line: 202, type: !31)
!505 = !DILocalVariable(name: "y", scope: !495, file: !1, line: 203, type: !38)
!506 = !DILocation(line: 0, scope: !495)
!507 = !DILocation(line: 208, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !495, file: !1, line: 208, column: 7)
!509 = !DILocation(line: 208, column: 49, scope: !508)
!510 = !DILocation(line: 208, column: 7, scope: !495)
!511 = !DILocation(line: 211, column: 17, scope: !495)
!512 = !DILocation(line: 212, column: 16, scope: !495)
!513 = !DILocation(line: 213, column: 14, scope: !495)
!514 = !DILocation(line: 214, column: 13, scope: !495)
!515 = !DILocation(line: 215, column: 13, scope: !495)
!516 = !DILocation(line: 220, column: 12, scope: !517)
!517 = distinct !DILexicalBlock(scope: !495, file: !1, line: 220, column: 7)
!518 = !DILocation(line: 220, column: 27, scope: !517)
!519 = !DILocation(line: 220, column: 19, scope: !517)
!520 = !DILocation(line: 226, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !495, file: !1, line: 226, column: 7)
!522 = !DILocation(line: 226, column: 17, scope: !521)
!523 = !DILocation(line: 226, column: 20, scope: !521)
!524 = !DILocation(line: 226, column: 52, scope: !521)
!525 = !DILocation(line: 226, column: 7, scope: !495)
!526 = !DILocation(line: 228, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !521, file: !1, line: 227, column: 5)
!528 = !DILocation(line: 229, column: 7, scope: !527)
!529 = !DILocation(line: 230, column: 5, scope: !527)
!530 = !DILocation(line: 232, column: 42, scope: !531)
!531 = distinct !DILexicalBlock(scope: !495, file: !1, line: 232, column: 7)
!532 = !DILocation(line: 232, column: 7, scope: !531)
!533 = !DILocation(line: 232, column: 47, scope: !531)
!534 = !DILocation(line: 232, column: 7, scope: !495)
!535 = !DILocation(line: 233, column: 15, scope: !531)
!536 = !DILocation(line: 233, column: 5, scope: !531)
!537 = !DILocation(line: 236, column: 1, scope: !495)
!538 = distinct !DISubprogram(name: "fibheap_comp_data", scope: !1, file: !1, line: 86, type: !539, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{!4, !13, !31, !8, !38}
!541 = !{!542, !543, !544, !545, !546}
!542 = !DILocalVariable(name: "heap", arg: 1, scope: !538, file: !1, line: 86, type: !13)
!543 = !DILocalVariable(name: "key", arg: 2, scope: !538, file: !1, line: 86, type: !31)
!544 = !DILocalVariable(name: "data", arg: 3, scope: !538, file: !1, line: 86, type: !8)
!545 = !DILocalVariable(name: "b", arg: 4, scope: !538, file: !1, line: 86, type: !38)
!546 = !DILocalVariable(name: "a", scope: !538, file: !1, line: 88, type: !24)
!547 = !DILocation(line: 0, scope: !538)
!548 = !DILocation(line: 88, column: 3, scope: !538)
!549 = !DILocation(line: 90, column: 5, scope: !538)
!550 = !DILocation(line: 90, column: 9, scope: !538)
!551 = !DILocation(line: 91, column: 5, scope: !538)
!552 = !DILocation(line: 91, column: 10, scope: !538)
!553 = !DILocation(line: 93, column: 10, scope: !538)
!554 = !DILocation(line: 94, column: 1, scope: !538)
!555 = !DILocation(line: 93, column: 3, scope: !538)
!556 = distinct !DISubprogram(name: "fibheap_cut", scope: !1, file: !1, line: 417, type: !557, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !13, !38, !38}
!559 = !{!560, !561, !562}
!560 = !DILocalVariable(name: "heap", arg: 1, scope: !556, file: !1, line: 417, type: !13)
!561 = !DILocalVariable(name: "node", arg: 2, scope: !556, file: !1, line: 417, type: !38)
!562 = !DILocalVariable(name: "parent", arg: 3, scope: !556, file: !1, line: 417, type: !38)
!563 = !DILocation(line: 0, scope: !556)
!564 = !DILocation(line: 419, column: 3, scope: !556)
!565 = !DILocation(line: 420, column: 11, scope: !556)
!566 = !DILocation(line: 420, column: 17, scope: !556)
!567 = !DILocation(line: 421, column: 3, scope: !556)
!568 = !DILocation(line: 422, column: 9, scope: !556)
!569 = !DILocation(line: 422, column: 16, scope: !556)
!570 = !DILocation(line: 423, column: 9, scope: !556)
!571 = !DILocation(line: 423, column: 14, scope: !556)
!572 = !DILocation(line: 424, column: 1, scope: !556)
!573 = distinct !DISubprogram(name: "fibheap_cascading_cut", scope: !1, file: !1, line: 427, type: !321, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !574)
!574 = !{!575, !576, !577}
!575 = !DILocalVariable(name: "heap", arg: 1, scope: !573, file: !1, line: 427, type: !13)
!576 = !DILocalVariable(name: "y", arg: 2, scope: !573, file: !1, line: 427, type: !38)
!577 = !DILocalVariable(name: "z", scope: !573, file: !1, line: 429, type: !38)
!578 = !DILocation(line: 0, scope: !573)
!579 = !DILocation(line: 431, column: 3, scope: !573)
!580 = !DILocation(line: 431, column: 18, scope: !573)
!581 = !DILocation(line: 431, column: 26, scope: !573)
!582 = !DILocation(line: 433, column: 14, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !1, line: 433, column: 11)
!584 = distinct !DILexicalBlock(scope: !573, file: !1, line: 432, column: 5)
!585 = !DILocation(line: 433, column: 19, scope: !583)
!586 = !DILocation(line: 433, column: 11, scope: !584)
!587 = !DILocation(line: 435, column: 12, scope: !588)
!588 = distinct !DILexicalBlock(scope: !583, file: !1, line: 434, column: 2)
!589 = !DILocation(line: 436, column: 4, scope: !588)
!590 = !DILocation(line: 440, column: 4, scope: !591)
!591 = distinct !DILexicalBlock(scope: !583, file: !1, line: 439, column: 2)
!592 = distinct !{!592, !579, !593}
!593 = !DILocation(line: 443, column: 5, scope: !573)
!594 = !DILocation(line: 444, column: 1, scope: !573)
!595 = distinct !DISubprogram(name: "fibheap_replace_data", scope: !1, file: !1, line: 240, type: !596, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!8, !13, !38, !8}
!598 = !{!599, !600, !601}
!599 = !DILocalVariable(name: "heap", arg: 1, scope: !595, file: !1, line: 240, type: !13)
!600 = !DILocalVariable(name: "node", arg: 2, scope: !595, file: !1, line: 240, type: !38)
!601 = !DILocalVariable(name: "data", arg: 3, scope: !595, file: !1, line: 240, type: !8)
!602 = !DILocation(line: 0, scope: !595)
!603 = !DILocation(line: 242, column: 54, scope: !595)
!604 = !DILocation(line: 242, column: 10, scope: !595)
!605 = !DILocation(line: 242, column: 3, scope: !595)
!606 = distinct !DISubprogram(name: "fibheap_replace_key", scope: !1, file: !1, line: 247, type: !607, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !609)
!607 = !DISubroutineType(types: !608)
!608 = !{!31, !13, !38, !31}
!609 = !{!610, !611, !612, !613}
!610 = !DILocalVariable(name: "heap", arg: 1, scope: !606, file: !1, line: 247, type: !13)
!611 = !DILocalVariable(name: "node", arg: 2, scope: !606, file: !1, line: 247, type: !38)
!612 = !DILocalVariable(name: "key", arg: 3, scope: !606, file: !1, line: 247, type: !31)
!613 = !DILocalVariable(name: "okey", scope: !606, file: !1, line: 249, type: !4)
!614 = !DILocation(line: 0, scope: !606)
!615 = !DILocation(line: 249, column: 20, scope: !606)
!616 = !DILocation(line: 250, column: 52, scope: !606)
!617 = !DILocation(line: 250, column: 3, scope: !606)
!618 = !DILocation(line: 251, column: 10, scope: !606)
!619 = !DILocation(line: 251, column: 3, scope: !606)
!620 = distinct !DISubprogram(name: "fibheap_delete_node", scope: !1, file: !1, line: 256, type: !621, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!8, !13, !38}
!623 = !{!624, !625, !626}
!624 = !DILocalVariable(name: "heap", arg: 1, scope: !620, file: !1, line: 256, type: !13)
!625 = !DILocalVariable(name: "node", arg: 2, scope: !620, file: !1, line: 256, type: !38)
!626 = !DILocalVariable(name: "ret", scope: !620, file: !1, line: 258, type: !8)
!627 = !DILocation(line: 0, scope: !620)
!628 = !DILocation(line: 258, column: 21, scope: !620)
!629 = !DILocation(line: 261, column: 3, scope: !620)
!630 = !DILocation(line: 262, column: 21, scope: !631)
!631 = distinct !DILexicalBlock(scope: !620, file: !1, line: 262, column: 7)
!632 = !DILocation(line: 262, column: 12, scope: !631)
!633 = !DILocation(line: 262, column: 7, scope: !620)
!634 = !DILocation(line: 264, column: 16, scope: !635)
!635 = distinct !DILexicalBlock(scope: !631, file: !1, line: 263, column: 5)
!636 = !DILocation(line: 264, column: 7, scope: !635)
!637 = !DILocation(line: 265, column: 7, scope: !635)
!638 = !DILocation(line: 266, column: 5, scope: !635)
!639 = !DILocation(line: 267, column: 3, scope: !620)
!640 = !DILocation(line: 269, column: 3, scope: !620)
!641 = distinct !DISubprogram(name: "fibheap_delete", scope: !1, file: !1, line: 274, type: !642, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !13}
!644 = !{!645}
!645 = !DILocalVariable(name: "heap", arg: 1, scope: !641, file: !1, line: 274, type: !13)
!646 = !DILocation(line: 0, scope: !641)
!647 = !DILocation(line: 276, column: 3, scope: !641)
!648 = !DILocation(line: 276, column: 16, scope: !641)
!649 = !DILocation(line: 276, column: 20, scope: !641)
!650 = !DILocation(line: 277, column: 11, scope: !641)
!651 = !DILocation(line: 277, column: 5, scope: !641)
!652 = distinct !{!652, !647, !653}
!653 = !DILocation(line: 277, column: 39, scope: !641)
!654 = !DILocation(line: 279, column: 9, scope: !641)
!655 = !DILocation(line: 279, column: 3, scope: !641)
!656 = !DILocation(line: 280, column: 1, scope: !641)
!657 = distinct !DISubprogram(name: "fibheap_empty", scope: !1, file: !1, line: 284, type: !658, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{!4, !13}
!660 = !{!661}
!661 = !DILocalVariable(name: "heap", arg: 1, scope: !657, file: !1, line: 284, type: !13)
!662 = !DILocation(line: 0, scope: !657)
!663 = !DILocation(line: 286, column: 16, scope: !657)
!664 = !DILocation(line: 286, column: 22, scope: !657)
!665 = !DILocation(line: 286, column: 3, scope: !657)
!666 = distinct !DISubprogram(name: "fibheap_rem_root", scope: !1, file: !1, line: 346, type: !321, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !667)
!667 = !{!668, !669}
!668 = !DILocalVariable(name: "heap", arg: 1, scope: !666, file: !1, line: 346, type: !13)
!669 = !DILocalVariable(name: "node", arg: 2, scope: !666, file: !1, line: 346, type: !38)
!670 = !DILocation(line: 0, scope: !666)
!671 = !DILocation(line: 348, column: 13, scope: !672)
!672 = distinct !DILexicalBlock(scope: !666, file: !1, line: 348, column: 7)
!673 = !DILocation(line: 348, column: 18, scope: !672)
!674 = !DILocation(line: 348, column: 7, scope: !666)
!675 = !DILocation(line: 349, column: 11, scope: !672)
!676 = !DILocation(line: 349, column: 16, scope: !672)
!677 = !DILocation(line: 349, column: 5, scope: !672)
!678 = !DILocation(line: 351, column: 18, scope: !672)
!679 = !DILocation(line: 351, column: 11, scope: !672)
!680 = !DILocation(line: 351, column: 16, scope: !672)
!681 = !DILocation(line: 352, column: 1, scope: !666)
!682 = distinct !DISubprogram(name: "fibheap_consolidate", scope: !1, file: !1, line: 356, type: !642, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !683)
!683 = !{!684, !685, !689, !690, !691, !692, !693, !694, !695}
!684 = !DILocalVariable(name: "heap", arg: 1, scope: !682, file: !1, line: 356, type: !13)
!685 = !DILocalVariable(name: "a", scope: !682, file: !1, line: 358, type: !686)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 4160, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 65)
!689 = !DILocalVariable(name: "w", scope: !682, file: !1, line: 359, type: !38)
!690 = !DILocalVariable(name: "y", scope: !682, file: !1, line: 360, type: !38)
!691 = !DILocalVariable(name: "x", scope: !682, file: !1, line: 361, type: !38)
!692 = !DILocalVariable(name: "i", scope: !682, file: !1, line: 362, type: !4)
!693 = !DILocalVariable(name: "d", scope: !682, file: !1, line: 363, type: !4)
!694 = !DILocalVariable(name: "D", scope: !682, file: !1, line: 364, type: !4)
!695 = !DILocalVariable(name: "temp", scope: !696, file: !1, line: 380, type: !38)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 379, column: 6)
!697 = distinct !DILexicalBlock(scope: !698, file: !1, line: 378, column: 8)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 376, column: 2)
!699 = distinct !DILexicalBlock(scope: !682, file: !1, line: 371, column: 5)
!700 = !DILocation(line: 0, scope: !682)
!701 = !DILocation(line: 358, column: 3, scope: !682)
!702 = !DILocation(line: 358, column: 13, scope: !682)
!703 = !DILocation(line: 368, column: 3, scope: !682)
!704 = !DILocation(line: 370, column: 3, scope: !682)
!705 = !DILocation(line: 370, column: 21, scope: !682)
!706 = !DILocation(line: 370, column: 27, scope: !682)
!707 = !DILocation(line: 373, column: 7, scope: !699)
!708 = !DILocation(line: 374, column: 14, scope: !699)
!709 = !DILocation(line: 375, column: 7, scope: !699)
!710 = !DILocation(line: 0, scope: !699)
!711 = !DILocation(line: 375, column: 14, scope: !699)
!712 = !DILocation(line: 375, column: 19, scope: !699)
!713 = !DILocation(line: 378, column: 8, scope: !697)
!714 = !DILocation(line: 378, column: 37, scope: !697)
!715 = !DILocation(line: 378, column: 8, scope: !698)
!716 = !DILocation(line: 385, column: 4, scope: !698)
!717 = !DILocation(line: 386, column: 9, scope: !698)
!718 = !DILocation(line: 387, column: 5, scope: !698)
!719 = distinct !{!719, !709, !720}
!720 = !DILocation(line: 388, column: 2, scope: !699)
!721 = !DILocation(line: 389, column: 12, scope: !699)
!722 = distinct !{!722, !704, !723}
!723 = !DILocation(line: 390, column: 5, scope: !682)
!724 = !DILocation(line: 391, column: 9, scope: !682)
!725 = !DILocation(line: 391, column: 13, scope: !682)
!726 = !DILocation(line: 0, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !1, line: 396, column: 6)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 394, column: 7)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 393, column: 9)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 392, column: 3)
!731 = distinct !DILexicalBlock(scope: !682, file: !1, line: 392, column: 3)
!732 = !DILocation(line: 392, column: 8, scope: !731)
!733 = !DILocation(line: 0, scope: !731)
!734 = !DILocation(line: 392, column: 17, scope: !730)
!735 = !DILocation(line: 392, column: 3, scope: !731)
!736 = !DILocation(line: 393, column: 9, scope: !729)
!737 = !DILocation(line: 393, column: 14, scope: !729)
!738 = !DILocation(line: 393, column: 9, scope: !730)
!739 = !DILocation(line: 395, column: 2, scope: !728)
!740 = !DILocation(line: 396, column: 12, scope: !727)
!741 = !DILocation(line: 396, column: 16, scope: !727)
!742 = !DILocation(line: 396, column: 24, scope: !727)
!743 = !DILocation(line: 396, column: 50, scope: !727)
!744 = !DILocation(line: 396, column: 27, scope: !727)
!745 = !DILocation(line: 396, column: 67, scope: !727)
!746 = !DILocation(line: 396, column: 6, scope: !728)
!747 = !DILocation(line: 397, column: 16, scope: !727)
!748 = !DILocation(line: 397, column: 14, scope: !727)
!749 = !DILocation(line: 397, column: 4, scope: !727)
!750 = !DILocation(line: 392, column: 23, scope: !730)
!751 = !DILocation(line: 392, column: 3, scope: !730)
!752 = distinct !{!752, !735, !753}
!753 = !DILocation(line: 398, column: 7, scope: !731)
!754 = !DILocation(line: 399, column: 1, scope: !682)
!755 = distinct !DISubprogram(name: "fibnode_remove", scope: !1, file: !1, line: 466, type: !756, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{!38, !38}
!758 = !{!759, !760}
!759 = !DILocalVariable(name: "node", arg: 1, scope: !755, file: !1, line: 466, type: !38)
!760 = !DILocalVariable(name: "ret", scope: !755, file: !1, line: 468, type: !38)
!761 = !DILocation(line: 0, scope: !755)
!762 = !DILocation(line: 470, column: 21, scope: !763)
!763 = distinct !DILexicalBlock(scope: !755, file: !1, line: 470, column: 7)
!764 = !DILocation(line: 470, column: 12, scope: !763)
!765 = !DILocation(line: 470, column: 7, scope: !755)
!766 = !DILocation(line: 0, scope: !763)
!767 = !DILocation(line: 475, column: 13, scope: !768)
!768 = distinct !DILexicalBlock(scope: !755, file: !1, line: 475, column: 7)
!769 = !DILocation(line: 475, column: 20, scope: !768)
!770 = !DILocation(line: 475, column: 28, scope: !768)
!771 = !DILocation(line: 475, column: 45, scope: !768)
!772 = !DILocation(line: 475, column: 51, scope: !768)
!773 = !DILocation(line: 475, column: 7, scope: !755)
!774 = !DILocation(line: 476, column: 25, scope: !768)
!775 = !DILocation(line: 478, column: 29, scope: !755)
!776 = !DILocation(line: 476, column: 5, scope: !768)
!777 = !DILocation(line: 478, column: 9, scope: !755)
!778 = !DILocation(line: 478, column: 16, scope: !755)
!779 = !DILocation(line: 478, column: 21, scope: !755)
!780 = !DILocation(line: 479, column: 29, scope: !755)
!781 = !DILocation(line: 479, column: 9, scope: !755)
!782 = !DILocation(line: 479, column: 15, scope: !755)
!783 = !DILocation(line: 479, column: 21, scope: !755)
!784 = !DILocation(line: 481, column: 16, scope: !755)
!785 = !DILocation(line: 482, column: 14, scope: !755)
!786 = !DILocation(line: 483, column: 15, scope: !755)
!787 = !DILocation(line: 485, column: 3, scope: !755)
!788 = distinct !DISubprogram(name: "fibheap_link", scope: !1, file: !1, line: 403, type: !557, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !789)
!789 = !{!790, !791, !792}
!790 = !DILocalVariable(name: "heap", arg: 1, scope: !788, file: !1, line: 403, type: !13)
!791 = !DILocalVariable(name: "node", arg: 2, scope: !788, file: !1, line: 404, type: !38)
!792 = !DILocalVariable(name: "parent", arg: 3, scope: !788, file: !1, line: 404, type: !38)
!793 = !DILocation(line: 0, scope: !788)
!794 = !DILocation(line: 406, column: 15, scope: !795)
!795 = distinct !DILexicalBlock(scope: !788, file: !1, line: 406, column: 7)
!796 = !DILocation(line: 406, column: 21, scope: !795)
!797 = !DILocation(line: 406, column: 7, scope: !788)
!798 = !DILocation(line: 407, column: 19, scope: !795)
!799 = !DILocation(line: 407, column: 5, scope: !795)
!800 = !DILocation(line: 409, column: 5, scope: !795)
!801 = !DILocation(line: 410, column: 9, scope: !788)
!802 = !DILocation(line: 410, column: 16, scope: !788)
!803 = !DILocation(line: 411, column: 11, scope: !788)
!804 = !DILocation(line: 411, column: 17, scope: !788)
!805 = !DILocation(line: 412, column: 9, scope: !788)
!806 = !DILocation(line: 412, column: 14, scope: !788)
!807 = !DILocation(line: 413, column: 1, scope: !788)
!808 = distinct !DISubprogram(name: "fibnode_insert_after", scope: !1, file: !1, line: 447, type: !809, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !38, !38}
!811 = !{!812, !813}
!812 = !DILocalVariable(name: "a", arg: 1, scope: !808, file: !1, line: 447, type: !38)
!813 = !DILocalVariable(name: "b", arg: 2, scope: !808, file: !1, line: 447, type: !38)
!814 = !DILocation(line: 0, scope: !808)
!815 = !DILocation(line: 449, column: 15, scope: !816)
!816 = distinct !DILexicalBlock(scope: !808, file: !1, line: 449, column: 7)
!817 = !DILocation(line: 449, column: 9, scope: !816)
!818 = !DILocation(line: 449, column: 7, scope: !808)
!819 = !DILocation(line: 451, column: 16, scope: !820)
!820 = distinct !DILexicalBlock(scope: !816, file: !1, line: 450, column: 5)
!821 = !DILocation(line: 452, column: 10, scope: !820)
!822 = !DILocation(line: 452, column: 15, scope: !820)
!823 = !DILocation(line: 453, column: 10, scope: !820)
!824 = !DILocation(line: 453, column: 16, scope: !820)
!825 = !DILocation(line: 454, column: 10, scope: !820)
!826 = !DILocation(line: 454, column: 15, scope: !820)
!827 = !DILocation(line: 455, column: 5, scope: !820)
!828 = !DILocation(line: 458, column: 10, scope: !829)
!829 = distinct !DILexicalBlock(scope: !816, file: !1, line: 457, column: 5)
!830 = !DILocation(line: 458, column: 16, scope: !829)
!831 = !DILocation(line: 459, column: 10, scope: !829)
!832 = !DILocation(line: 459, column: 17, scope: !829)
!833 = !DILocation(line: 459, column: 22, scope: !829)
!834 = !DILocation(line: 460, column: 16, scope: !829)
!835 = !DILocation(line: 461, column: 10, scope: !829)
!836 = !DILocation(line: 461, column: 15, scope: !829)
!837 = !DILocation(line: 463, column: 1, scope: !808)
