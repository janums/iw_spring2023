; ModuleID = 'splay-tree.bc'
source_filename = "splay-tree.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !61 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !66, metadata !DIExpression()), !dbg !67
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !68
  %conv = trunc i64 %call to i32, !dbg !69
  ret i32 %conv, !dbg !70
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !71 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !76, metadata !DIExpression()), !dbg !77
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !78
  ret i64 %call, !dbg !79
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !80 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !85, metadata !DIExpression()), !dbg !86
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !87
  ret i64 %call, !dbg !88
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !89 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !102, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %__base, metadata !103, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !104, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i64 %__size, metadata !105, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !106, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !108, metadata !DIExpression()), !dbg !112
  br label %while.cond, !dbg !113

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !114
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !112
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !107, metadata !DIExpression()), !dbg !112
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !115
  br i1 %cmp, label %while.body, label %cleanup, !dbg !113

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !116
  %div = lshr i64 %add, 1, !dbg !118
  call void @llvm.dbg.value(metadata i64 %div, metadata !109, metadata !DIExpression()), !dbg !112
  %mul = mul i64 %div, %__size, !dbg !119
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !120
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !110, metadata !DIExpression()), !dbg !112
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !121
  call void @llvm.dbg.value(metadata i32 %call, metadata !111, metadata !DIExpression()), !dbg !112
  %cmp1 = icmp slt i32 %call, 0, !dbg !122
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !124

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !125
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !127

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !128
  call void @llvm.dbg.value(metadata i64 %add4, metadata !107, metadata !DIExpression()), !dbg !112
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !112
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !112
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !107, metadata !DIExpression()), !dbg !112
  br label %while.cond, !dbg !113, !llvm.loop !129

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !112
  ret i8* %retval.0, !dbg !131
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !132 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !138, metadata !DIExpression()), !dbg !139
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !140
  ret double %call, !dbg !141
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !142 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !159
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !160
  ret i32 %call, !dbg !161
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !162 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !165
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !166
  ret i32 %call, !dbg !167
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !227, metadata !DIExpression()), !dbg !228
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !229
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !229
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !229
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !229
  %cmp = icmp uge i8* %0, %1, !dbg !229
  %conv1 = zext i1 %cmp to i64, !dbg !229
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !229
  %tobool = icmp eq i64 %expval, 0, !dbg !229
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !229

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !229
  br label %cond.end, !dbg !229

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !229
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !229
  %2 = load i8, i8* %0, align 1, !dbg !229
  %conv3 = zext i8 %2 to i32, !dbg !229
  br label %cond.end, !dbg !229

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !229
  ret i32 %cond, !dbg !230
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !231 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !233, metadata !DIExpression()), !dbg !234
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !235
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !235
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !235
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !235
  %cmp = icmp uge i8* %0, %1, !dbg !235
  %conv1 = zext i1 %cmp to i64, !dbg !235
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !235
  %tobool = icmp eq i64 %expval, 0, !dbg !235
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !235

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !235
  br label %cond.end, !dbg !235

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !235
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !235
  %2 = load i8, i8* %0, align 1, !dbg !235
  %conv3 = zext i8 %2 to i32, !dbg !235
  br label %cond.end, !dbg !235

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !235
  ret i32 %cond, !dbg !236
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !237 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !238
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !238
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !238
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !238
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !238
  %cmp = icmp uge i8* %1, %2, !dbg !238
  %conv1 = zext i1 %cmp to i64, !dbg !238
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !238
  %tobool = icmp eq i64 %expval, 0, !dbg !238
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !238

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !238
  br label %cond.end, !dbg !238

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !238
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !238
  %3 = load i8, i8* %1, align 1, !dbg !238
  %conv3 = zext i8 %3 to i32, !dbg !238
  br label %cond.end, !dbg !238

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !238
  ret i32 %cond, !dbg !239
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !240 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !246
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !247
  ret i32 %call, !dbg !248
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !249 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !253, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !254, metadata !DIExpression()), !dbg !255
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !256
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !256
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !256
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !256
  %cmp = icmp uge i8* %0, %1, !dbg !256
  %conv1 = zext i1 %cmp to i64, !dbg !256
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !256
  %tobool = icmp eq i64 %expval, 0, !dbg !256
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !256

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !256
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !256
  br label %cond.end, !dbg !256

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !256
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !256
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !256
  store i8 %conv2, i8* %0, align 1, !dbg !256
  %conv6 = and i32 %__c, 255, !dbg !256
  br label %cond.end, !dbg !256

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !256
  ret i32 %cond, !dbg !257
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !258 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !260, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !261, metadata !DIExpression()), !dbg !262
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !263
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !263
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !263
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !263
  %cmp = icmp uge i8* %0, %1, !dbg !263
  %conv1 = zext i1 %cmp to i64, !dbg !263
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !263
  %tobool = icmp eq i64 %expval, 0, !dbg !263
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !263

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !263
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !263
  br label %cond.end, !dbg !263

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !263
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !263
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !263
  store i8 %conv2, i8* %0, align 1, !dbg !263
  %conv6 = and i32 %__c, 255, !dbg !263
  br label %cond.end, !dbg !263

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !263
  ret i32 %cond, !dbg !264
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !265 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !269
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !269
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !269
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !269
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !269
  %cmp = icmp uge i8* %1, %2, !dbg !269
  %conv1 = zext i1 %cmp to i64, !dbg !269
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !269
  %tobool = icmp eq i64 %expval, 0, !dbg !269
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !269

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !269
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !269
  br label %cond.end, !dbg !269

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !269
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !269
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !269
  store i8 %conv4, i8* %1, align 1, !dbg !269
  %conv6 = and i32 %__c, 255, !dbg !269
  br label %cond.end, !dbg !269

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !269
  ret i32 %cond, !dbg !270
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !271 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !277, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64* %__n, metadata !278, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !279, metadata !DIExpression()), !dbg !280
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !281
  ret i64 %call, !dbg !282
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !283 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !285, metadata !DIExpression()), !dbg !286
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !287
  %0 = load i32, i32* %_flags, align 8, !dbg !287
  %and = lshr i32 %0, 4, !dbg !287
  %and.lobit = and i32 %and, 1, !dbg !287
  ret i32 %and.lobit, !dbg !288
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !289 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !291, metadata !DIExpression()), !dbg !292
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !293
  %0 = load i32, i32* %_flags, align 8, !dbg !293
  %and = lshr i32 %0, 5, !dbg !293
  %and.lobit = and i32 %and, 1, !dbg !293
  ret i32 %and.lobit, !dbg !294
}

; Function Attrs: nounwind uwtable
define dso_local %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* %compare_fn, void (i64)* %delete_key_fn, void (i64)* %delete_value_fn) local_unnamed_addr #3 !dbg !295 {
entry:
  call void @llvm.dbg.value(metadata i32 (i64, i64)* %compare_fn, metadata !299, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata void (i64)* %delete_key_fn, metadata !300, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata void (i64)* %delete_value_fn, metadata !301, metadata !DIExpression()), !dbg !302
  %call = tail call %struct.splay_tree_s* @splay_tree_new_with_allocator(i32 (i64, i64)* %compare_fn, void (i64)* %delete_key_fn, void (i64)* %delete_value_fn, i8* (i32, i8*)* nonnull @splay_tree_xmalloc_allocate, void (i8*, i8*)* nonnull @splay_tree_xmalloc_deallocate, i8* null) #6, !dbg !303
  ret %struct.splay_tree_s* %call, !dbg !304
}

; Function Attrs: nounwind uwtable
define dso_local %struct.splay_tree_s* @splay_tree_new_with_allocator(i32 (i64, i64)* %compare_fn, void (i64)* %delete_key_fn, void (i64)* %delete_value_fn, i8* (i32, i8*)* %allocate_fn, void (i8*, i8*)* %deallocate_fn, i8* %allocate_data) local_unnamed_addr #3 !dbg !305 {
entry:
  call void @llvm.dbg.value(metadata i32 (i64, i64)* %compare_fn, metadata !309, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata void (i64)* %delete_key_fn, metadata !310, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata void (i64)* %delete_value_fn, metadata !311, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i8* (i32, i8*)* %allocate_fn, metadata !312, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %deallocate_fn, metadata !313, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i8* %allocate_data, metadata !314, metadata !DIExpression()), !dbg !316
  %call = tail call i8* %allocate_fn(i32 56, i8* %allocate_data) #5, !dbg !317
  %0 = bitcast i8* %call to %struct.splay_tree_s*, !dbg !318
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %0, metadata !315, metadata !DIExpression()), !dbg !316
  %root = bitcast i8* %call to %struct.splay_tree_node_s**, !dbg !319
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %root, align 8, !dbg !320
  %comp = getelementptr inbounds i8, i8* %call, i64 8, !dbg !321
  %1 = bitcast i8* %comp to i32 (i64, i64)**, !dbg !321
  store i32 (i64, i64)* %compare_fn, i32 (i64, i64)** %1, align 8, !dbg !322
  %delete_key = getelementptr inbounds i8, i8* %call, i64 16, !dbg !323
  %2 = bitcast i8* %delete_key to void (i64)**, !dbg !323
  store void (i64)* %delete_key_fn, void (i64)** %2, align 8, !dbg !324
  %delete_value = getelementptr inbounds i8, i8* %call, i64 24, !dbg !325
  %3 = bitcast i8* %delete_value to void (i64)**, !dbg !325
  store void (i64)* %delete_value_fn, void (i64)** %3, align 8, !dbg !326
  %allocate = getelementptr inbounds i8, i8* %call, i64 32, !dbg !327
  %4 = bitcast i8* %allocate to i8* (i32, i8*)**, !dbg !327
  store i8* (i32, i8*)* %allocate_fn, i8* (i32, i8*)** %4, align 8, !dbg !328
  %deallocate = getelementptr inbounds i8, i8* %call, i64 40, !dbg !329
  %5 = bitcast i8* %deallocate to void (i8*, i8*)**, !dbg !329
  store void (i8*, i8*)* %deallocate_fn, void (i8*, i8*)** %5, align 8, !dbg !330
  %allocate_data1 = getelementptr inbounds i8, i8* %call, i64 48, !dbg !331
  %6 = bitcast i8* %allocate_data1 to i8**, !dbg !331
  store i8* %allocate_data, i8** %6, align 8, !dbg !332
  ret %struct.splay_tree_s* %0, !dbg !333
}

; Function Attrs: nounwind uwtable
define internal i8* @splay_tree_xmalloc_allocate(i32 %size, i8* %data) #3 !dbg !334 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !336, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i8* %data, metadata !337, metadata !DIExpression()), !dbg !338
  %conv = sext i32 %size to i64, !dbg !339
  %call = tail call i8* @xmalloc(i64 %conv) #5, !dbg !340
  ret i8* %call, !dbg !341
}

; Function Attrs: nounwind uwtable
define internal void @splay_tree_xmalloc_deallocate(i8* %object, i8* %data) #3 !dbg !342 {
entry:
  call void @llvm.dbg.value(metadata i8* %object, metadata !344, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i8* %data, metadata !345, metadata !DIExpression()), !dbg !346
  tail call void @free(i8* %object) #5, !dbg !347
  ret void, !dbg !348
}

; Function Attrs: nounwind uwtable
define dso_local void @splay_tree_delete(%struct.splay_tree_s* %sp) local_unnamed_addr #3 !dbg !349 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !353, metadata !DIExpression()), !dbg !354
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 0, !dbg !355
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !355
  tail call fastcc void @splay_tree_delete_helper(%struct.splay_tree_s* %sp, %struct.splay_tree_node_s* %0) #6, !dbg !356
  %deallocate = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 5, !dbg !357
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %deallocate, align 8, !dbg !357
  %2 = bitcast %struct.splay_tree_s* %sp to i8*, !dbg !358
  %allocate_data = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 6, !dbg !359
  %3 = load i8*, i8** %allocate_data, align 8, !dbg !359
  tail call void %1(i8* %2, i8* %3) #5, !dbg !360
  ret void, !dbg !361
}

; Function Attrs: nounwind uwtable
define internal fastcc void @splay_tree_delete_helper(%struct.splay_tree_s* %sp, %struct.splay_tree_node_s* %node) unnamed_addr #3 !dbg !362 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !366, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node, metadata !367, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* null, metadata !368, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* null, metadata !369, metadata !DIExpression()), !dbg !373
  %tobool = icmp eq %struct.splay_tree_node_s* %node, null, !dbg !374
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !376

if.end:                                           ; preds = %entry
  %delete_key = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 2, !dbg !377
  %0 = load void (i64)*, void (i64)** %delete_key, align 8, !dbg !377
  %tobool1 = icmp eq void (i64)* %0, null, !dbg !377
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !379

if.then2:                                         ; preds = %if.end
  %key = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %node, i64 0, i32 0, !dbg !377
  %1 = load i64, i64* %key, align 8, !dbg !377
  tail call void %0(i64 %1) #5, !dbg !377
  br label %if.end4, !dbg !377

if.end4:                                          ; preds = %if.end, %if.then2
  %delete_value = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 3, !dbg !380
  %2 = load void (i64)*, void (i64)** %delete_value, align 8, !dbg !380
  %tobool5 = icmp eq void (i64)* %2, null, !dbg !380
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !382

if.then6:                                         ; preds = %if.end4
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %node, i64 0, i32 1, !dbg !380
  %3 = load i64, i64* %value, align 8, !dbg !380
  tail call void %2(i64 %3) #5, !dbg !380
  br label %if.end8, !dbg !380

if.end8:                                          ; preds = %if.end4, %if.then6
  %key9 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %node, i64 0, i32 0, !dbg !383
  store i64 0, i64* %key9, align 8, !dbg !384
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node, metadata !368, metadata !DIExpression()), !dbg !373
  %deallocate = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 5, !dbg !385
  %allocate_data = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 6, !dbg !385
  br label %while.cond, !dbg !386

while.cond.loopexit:                              ; preds = %while.cond11
  %pending.1.lcssa = phi %struct.splay_tree_node_s* [ %pending.1, %while.cond11 ], !dbg !387
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %pending.1.lcssa, metadata !368, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %pending.1.lcssa, metadata !368, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %pending.1.lcssa, metadata !368, metadata !DIExpression()), !dbg !373
  br label %while.cond, !dbg !386

while.cond:                                       ; preds = %while.cond.loopexit, %if.end8
  %pending.0 = phi %struct.splay_tree_node_s* [ %node, %if.end8 ], [ %pending.1.lcssa, %while.cond.loopexit ], !dbg !373
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %pending.0, metadata !368, metadata !DIExpression()), !dbg !373
  %tobool10 = icmp eq %struct.splay_tree_node_s* %pending.0, null, !dbg !386
  br i1 %tobool10, label %cleanup.cont.loopexit, label %while.cond11.preheader, !dbg !386

while.cond11.preheader:                           ; preds = %while.cond
  br label %while.cond11, !dbg !388

while.cond11:                                     ; preds = %while.cond11.preheader, %if.end53
  %pending.1 = phi %struct.splay_tree_node_s* [ %pending.3, %if.end53 ], [ null, %while.cond11.preheader ], !dbg !387
  %active.0 = phi %struct.splay_tree_node_s* [ %23, %if.end53 ], [ %pending.0, %while.cond11.preheader ], !dbg !387
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %active.0, metadata !369, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %pending.1, metadata !368, metadata !DIExpression()), !dbg !373
  %tobool12 = icmp eq %struct.splay_tree_node_s* %active.0, null, !dbg !388
  br i1 %tobool12, label %while.cond.loopexit, label %while.body13, !dbg !388, !llvm.loop !389

while.body13:                                     ; preds = %while.cond11
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %active.0, i64 0, i32 2, !dbg !391
  %4 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8, !dbg !391
  %tobool14 = icmp eq %struct.splay_tree_node_s* %4, null, !dbg !393
  br i1 %tobool14, label %if.end33, label %if.then15, !dbg !394

if.then15:                                        ; preds = %while.body13
  %5 = load void (i64)*, void (i64)** %delete_key, align 8, !dbg !395
  %tobool17 = icmp eq void (i64)* %5, null, !dbg !395
  br i1 %tobool17, label %if.end22, label %if.then18, !dbg !398

if.then18:                                        ; preds = %if.then15
  %key21 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %4, i64 0, i32 0, !dbg !395
  %6 = load i64, i64* %key21, align 8, !dbg !395
  tail call void %5(i64 %6) #5, !dbg !395
  br label %if.end22, !dbg !395

if.end22:                                         ; preds = %if.then15, %if.then18
  %7 = load void (i64)*, void (i64)** %delete_value, align 8, !dbg !399
  %tobool24 = icmp eq void (i64)* %7, null, !dbg !399
  br i1 %tobool24, label %if.end29, label %if.then25, !dbg !401

if.then25:                                        ; preds = %if.end22
  %8 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8, !dbg !399
  %value28 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %8, i64 0, i32 1, !dbg !399
  %9 = load i64, i64* %value28, align 8, !dbg !399
  tail call void %7(i64 %9) #5, !dbg !399
  br label %if.end29, !dbg !399

if.end29:                                         ; preds = %if.end22, %if.then25
  %10 = ptrtoint %struct.splay_tree_node_s* %pending.1 to i64, !dbg !402
  %11 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8, !dbg !403
  %key31 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %11, i64 0, i32 0, !dbg !404
  store i64 %10, i64* %key31, align 8, !dbg !405
  %12 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8, !dbg !406
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %12, metadata !368, metadata !DIExpression()), !dbg !373
  br label %if.end33, !dbg !407

if.end33:                                         ; preds = %while.body13, %if.end29
  %pending.2 = phi %struct.splay_tree_node_s* [ %12, %if.end29 ], [ %pending.1, %while.body13 ], !dbg !387
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %pending.2, metadata !368, metadata !DIExpression()), !dbg !373
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %active.0, i64 0, i32 3, !dbg !408
  %13 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8, !dbg !408
  %tobool34 = icmp eq %struct.splay_tree_node_s* %13, null, !dbg !410
  br i1 %tobool34, label %if.end53, label %if.then35, !dbg !411

if.then35:                                        ; preds = %if.end33
  %14 = load void (i64)*, void (i64)** %delete_key, align 8, !dbg !412
  %tobool37 = icmp eq void (i64)* %14, null, !dbg !412
  br i1 %tobool37, label %if.end42, label %if.then38, !dbg !415

if.then38:                                        ; preds = %if.then35
  %key41 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %13, i64 0, i32 0, !dbg !412
  %15 = load i64, i64* %key41, align 8, !dbg !412
  tail call void %14(i64 %15) #5, !dbg !412
  br label %if.end42, !dbg !412

if.end42:                                         ; preds = %if.then35, %if.then38
  %16 = load void (i64)*, void (i64)** %delete_value, align 8, !dbg !416
  %tobool44 = icmp eq void (i64)* %16, null, !dbg !416
  br i1 %tobool44, label %if.end49, label %if.then45, !dbg !418

if.then45:                                        ; preds = %if.end42
  %17 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8, !dbg !416
  %value48 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %17, i64 0, i32 1, !dbg !416
  %18 = load i64, i64* %value48, align 8, !dbg !416
  tail call void %16(i64 %18) #5, !dbg !416
  br label %if.end49, !dbg !416

if.end49:                                         ; preds = %if.end42, %if.then45
  %19 = ptrtoint %struct.splay_tree_node_s* %pending.2 to i64, !dbg !419
  %20 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8, !dbg !420
  %key51 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %20, i64 0, i32 0, !dbg !421
  store i64 %19, i64* %key51, align 8, !dbg !422
  %21 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8, !dbg !423
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %21, metadata !368, metadata !DIExpression()), !dbg !373
  br label %if.end53, !dbg !424

if.end53:                                         ; preds = %if.end33, %if.end49
  %pending.3 = phi %struct.splay_tree_node_s* [ %21, %if.end49 ], [ %pending.2, %if.end33 ], !dbg !385
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %pending.3, metadata !368, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %active.0, metadata !370, metadata !DIExpression()), !dbg !385
  %22 = bitcast %struct.splay_tree_node_s* %active.0 to %struct.splay_tree_node_s**, !dbg !425
  %23 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %22, align 8, !dbg !425
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %23, metadata !369, metadata !DIExpression()), !dbg !373
  %24 = load void (i8*, i8*)*, void (i8*, i8*)** %deallocate, align 8, !dbg !426
  %25 = bitcast %struct.splay_tree_node_s* %active.0 to i8*, !dbg !427
  %26 = load i8*, i8** %allocate_data, align 8, !dbg !428
  tail call void %24(i8* nonnull %25, i8* %26) #5, !dbg !429
  br label %while.cond11, !dbg !388, !llvm.loop !430

cleanup.cont.loopexit:                            ; preds = %while.cond
  br label %cleanup.cont, !dbg !432

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !432
}

; Function Attrs: nounwind uwtable
define dso_local %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %sp, i64 %key, i64 %value) local_unnamed_addr #3 !dbg !433 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !437, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 %key, metadata !438, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 %value, metadata !439, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 0, metadata !440, metadata !DIExpression()), !dbg !444
  tail call fastcc void @splay_tree_splay(%struct.splay_tree_s* %sp, i64 %key) #6, !dbg !445
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 0, !dbg !446
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !446
  %tobool = icmp eq %struct.splay_tree_node_s* %0, null, !dbg !448
  br i1 %tobool, label %if.end, label %if.then, !dbg !449

if.then:                                          ; preds = %entry
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 1, !dbg !450
  %1 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8, !dbg !450
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %0, i64 0, i32 0, !dbg !451
  %2 = load i64, i64* %key2, align 8, !dbg !451
  %call = tail call i32 %1(i64 %2, i64 %key) #5, !dbg !452
  call void @llvm.dbg.value(metadata i32 %call, metadata !440, metadata !DIExpression()), !dbg !444
  %.pre = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !453
  br label %if.end, !dbg !454

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct.splay_tree_node_s* [ %.pre, %if.then ], [ null, %entry ], !dbg !453
  %comparison.0 = phi i32 [ %call, %if.then ], [ 0, %entry ], !dbg !444
  call void @llvm.dbg.value(metadata i32 %comparison.0, metadata !440, metadata !DIExpression()), !dbg !444
  %tobool4 = icmp ne %struct.splay_tree_node_s* %3, null, !dbg !455
  %cmp = icmp eq i32 %comparison.0, 0, !dbg !456
  %or.cond = and i1 %tobool4, %cmp, !dbg !457
  br i1 %or.cond, label %if.then5, label %if.else, !dbg !457

if.then5:                                         ; preds = %if.end
  %delete_value = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 3, !dbg !458
  %4 = load void (i64)*, void (i64)** %delete_value, align 8, !dbg !458
  %tobool6 = icmp eq void (i64)* %4, null, !dbg !461
  br i1 %tobool6, label %if.end11, label %if.then7, !dbg !462

if.then7:                                         ; preds = %if.then5
  %value10 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %3, i64 0, i32 1, !dbg !463
  %5 = load i64, i64* %value10, align 8, !dbg !463
  tail call void %4(i64 %5) #5, !dbg !464
  %.pre2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !465
  br label %if.end11, !dbg !464

if.end11:                                         ; preds = %if.then5, %if.then7
  %6 = phi %struct.splay_tree_node_s* [ %3, %if.then5 ], [ %.pre2, %if.then7 ], !dbg !465
  %value13 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %6, i64 0, i32 1, !dbg !466
  store i64 %value, i64* %value13, align 8, !dbg !467
  %.pre3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !468
  br label %if.end41, !dbg !469

if.else:                                          ; preds = %if.end
  %allocate = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 4, !dbg !470
  %7 = load i8* (i32, i8*)*, i8* (i32, i8*)** %allocate, align 8, !dbg !470
  %allocate_data = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 6, !dbg !471
  %8 = load i8*, i8** %allocate_data, align 8, !dbg !471
  %call14 = tail call i8* %7(i32 32, i8* %8) #5, !dbg !472
  call void @llvm.dbg.value(metadata i8* %call14, metadata !441, metadata !DIExpression()), !dbg !473
  %key15 = bitcast i8* %call14 to i64*, !dbg !474
  store i64 %key, i64* %key15, align 8, !dbg !475
  %value16 = getelementptr inbounds i8, i8* %call14, i64 8, !dbg !476
  %9 = bitcast i8* %value16 to i64*, !dbg !476
  store i64 %value, i64* %9, align 8, !dbg !477
  %10 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !478
  %tobool18 = icmp eq %struct.splay_tree_node_s* %10, null, !dbg !480
  %11 = ptrtoint %struct.splay_tree_node_s* %10 to i64, !dbg !481
  br i1 %tobool18, label %if.then19, label %if.else20, !dbg !481

if.then19:                                        ; preds = %if.else
  %right = getelementptr inbounds i8, i8* %call14, i64 24, !dbg !482
  %12 = bitcast i8* %right to %struct.splay_tree_node_s**, !dbg !482
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %12, align 8, !dbg !483
  %left = getelementptr inbounds i8, i8* %call14, i64 16, !dbg !484
  %13 = bitcast i8* %left to %struct.splay_tree_node_s**, !dbg !484
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %13, align 8, !dbg !485
  br label %if.end39, !dbg !486

if.else20:                                        ; preds = %if.else
  %cmp21 = icmp slt i32 %comparison.0, 0, !dbg !487
  br i1 %cmp21, label %if.then22, label %if.else30, !dbg !489

if.then22:                                        ; preds = %if.else20
  %left24 = getelementptr inbounds i8, i8* %call14, i64 16, !dbg !490
  %14 = bitcast i8* %left24 to i64*, !dbg !492
  store i64 %11, i64* %14, align 8, !dbg !492
  %right26 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %10, i64 0, i32 3, !dbg !493
  %15 = bitcast %struct.splay_tree_node_s** %right26 to i64*, !dbg !493
  %16 = load i64, i64* %15, align 8, !dbg !493
  %right27 = getelementptr inbounds i8, i8* %call14, i64 24, !dbg !494
  %17 = bitcast i8* %right27 to i64*, !dbg !495
  store i64 %16, i64* %17, align 8, !dbg !495
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %right26, align 8, !dbg !496
  br label %if.end39, !dbg !497

if.else30:                                        ; preds = %if.else20
  %right32 = getelementptr inbounds i8, i8* %call14, i64 24, !dbg !498
  %18 = bitcast i8* %right32 to i64*, !dbg !500
  store i64 %11, i64* %18, align 8, !dbg !500
  %left34 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %10, i64 0, i32 2, !dbg !501
  %19 = bitcast %struct.splay_tree_node_s** %left34 to i64*, !dbg !501
  %20 = load i64, i64* %19, align 8, !dbg !501
  %left35 = getelementptr inbounds i8, i8* %call14, i64 16, !dbg !502
  %21 = bitcast i8* %left35 to i64*, !dbg !503
  store i64 %20, i64* %21, align 8, !dbg !503
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %left34, align 8, !dbg !504
  br label %if.end39

if.end39:                                         ; preds = %if.then22, %if.else30, %if.then19
  %22 = bitcast %struct.splay_tree_s* %sp to i8**, !dbg !505
  store i8* %call14, i8** %22, align 8, !dbg !505
  %23 = bitcast i8* %call14 to %struct.splay_tree_node_s*
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %if.end11
  %24 = phi %struct.splay_tree_node_s* [ %23, %if.end39 ], [ %.pre3, %if.end11 ], !dbg !468
  ret %struct.splay_tree_node_s* %24, !dbg !506
}

; Function Attrs: nounwind uwtable
define internal fastcc void @splay_tree_splay(%struct.splay_tree_s* %sp, i64 %key) unnamed_addr #3 !dbg !507 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !511, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i64 %key, metadata !512, metadata !DIExpression()), !dbg !518
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 0, !dbg !519
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !519
  %cmp = icmp eq %struct.splay_tree_node_s* %0, null, !dbg !521
  br i1 %cmp, label %do.end, label %do.body.preheader, !dbg !522

do.body.preheader:                                ; preds = %entry
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 1, !dbg !523
  br label %do.body, !dbg !524

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %do.body.preheader
  %1 = phi %struct.splay_tree_node_s* [ %.pre, %cleanup.do.body_crit_edge ], [ %0, %do.body.preheader ], !dbg !525
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %1, metadata !516, metadata !DIExpression()), !dbg !523
  %2 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8, !dbg !526
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %1, i64 0, i32 0, !dbg !527
  %3 = load i64, i64* %key2, align 8, !dbg !527
  %call = tail call i32 %2(i64 %key, i64 %3) #5, !dbg !528
  call void @llvm.dbg.value(metadata i32 %call, metadata !513, metadata !DIExpression()), !dbg !523
  %cmp3 = icmp eq i32 %call, 0, !dbg !529
  br i1 %cmp3, label %cleanup, label %if.end5, !dbg !524

if.end5:                                          ; preds = %do.body
  %cmp6 = icmp slt i32 %call, 0, !dbg !531
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !533

if.then7:                                         ; preds = %if.end5
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %1, i64 0, i32 2, !dbg !534
  br label %if.end8, !dbg !535

if.else:                                          ; preds = %if.end5
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %1, i64 0, i32 3, !dbg !536
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %c.0.in = phi %struct.splay_tree_node_s** [ %left, %if.then7 ], [ %right, %if.else ]
  %c.0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %c.0.in, align 8, !dbg !537
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %c.0, metadata !517, metadata !DIExpression()), !dbg !523
  %tobool = icmp eq %struct.splay_tree_node_s* %c.0, null, !dbg !538
  br i1 %tobool, label %cleanup, label %if.end10, !dbg !540

if.end10:                                         ; preds = %if.end8
  %4 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8, !dbg !541
  %key12 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %c.0, i64 0, i32 0, !dbg !542
  %5 = load i64, i64* %key12, align 8, !dbg !542
  %call13 = tail call i32 %4(i64 %key, i64 %5) #5, !dbg !543
  call void @llvm.dbg.value(metadata i32 %call13, metadata !515, metadata !DIExpression()), !dbg !523
  %cmp14 = icmp eq i32 %call13, 0, !dbg !544
  br i1 %cmp14, label %if.then23, label %lor.lhs.false, !dbg !546

lor.lhs.false:                                    ; preds = %if.end10
  %cmp15 = icmp slt i32 %call13, 0, !dbg !547
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false18, !dbg !548

land.lhs.true:                                    ; preds = %lor.lhs.false
  %left16 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %c.0, i64 0, i32 2, !dbg !549
  %6 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left16, align 8, !dbg !549
  %tobool17 = icmp eq %struct.splay_tree_node_s* %6, null, !dbg !550
  br i1 %tobool17, label %if.then23, label %lor.lhs.false18, !dbg !551

lor.lhs.false18:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %cmp19 = icmp sgt i32 %call13, 0, !dbg !552
  br i1 %cmp19, label %land.lhs.true20, label %if.end30, !dbg !553

land.lhs.true20:                                  ; preds = %lor.lhs.false18
  %right21 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %c.0, i64 0, i32 3, !dbg !554
  %7 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right21, align 8, !dbg !554
  %tobool22 = icmp eq %struct.splay_tree_node_s* %7, null, !dbg !555
  br i1 %tobool22, label %if.then23, label %if.end30, !dbg !556

if.then23:                                        ; preds = %land.lhs.true, %land.lhs.true20, %if.end10
  br i1 %cmp6, label %if.then25, label %if.else27, !dbg !557

if.then25:                                        ; preds = %if.then23
  tail call fastcc void @rotate_left(%struct.splay_tree_node_s** %root, %struct.splay_tree_node_s* %1, %struct.splay_tree_node_s* nonnull %c.0) #6, !dbg !559
  br label %cleanup, !dbg !559

if.else27:                                        ; preds = %if.then23
  tail call fastcc void @rotate_right(%struct.splay_tree_node_s** %root, %struct.splay_tree_node_s* %1, %struct.splay_tree_node_s* nonnull %c.0) #6, !dbg !561
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true20, %lor.lhs.false18
  %8 = and i32 %call, %call13, !dbg !562
  %9 = icmp slt i32 %8, 0, !dbg !562
  br i1 %9, label %if.then34, label %if.else39, !dbg !562

if.then34:                                        ; preds = %if.end30
  %left35 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %1, i64 0, i32 2, !dbg !564
  %left36 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %c.0, i64 0, i32 2, !dbg !566
  %10 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left36, align 8, !dbg !566
  tail call fastcc void @rotate_left(%struct.splay_tree_node_s** nonnull %left35, %struct.splay_tree_node_s* nonnull %c.0, %struct.splay_tree_node_s* %10) #6, !dbg !567
  %11 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left35, align 8, !dbg !568
  tail call fastcc void @rotate_left(%struct.splay_tree_node_s** %root, %struct.splay_tree_node_s* %1, %struct.splay_tree_node_s* %11) #6, !dbg !569
  br label %cleanup, !dbg !570

if.else39:                                        ; preds = %if.end30
  %cmp40 = icmp sgt i32 %call, 0, !dbg !571
  %or.cond1 = and i1 %cmp40, %cmp19, !dbg !573
  br i1 %or.cond1, label %if.then43, label %if.else48, !dbg !573

if.then43:                                        ; preds = %if.else39
  %right44 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %1, i64 0, i32 3, !dbg !574
  %right45 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %c.0, i64 0, i32 3, !dbg !576
  %12 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right45, align 8, !dbg !576
  tail call fastcc void @rotate_right(%struct.splay_tree_node_s** nonnull %right44, %struct.splay_tree_node_s* nonnull %c.0, %struct.splay_tree_node_s* %12) #6, !dbg !577
  %13 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right44, align 8, !dbg !578
  tail call fastcc void @rotate_right(%struct.splay_tree_node_s** %root, %struct.splay_tree_node_s* %1, %struct.splay_tree_node_s* %13) #6, !dbg !579
  br label %cleanup, !dbg !580

if.else48:                                        ; preds = %if.else39
  %or.cond2 = and i1 %cmp6, %cmp19, !dbg !581
  br i1 %or.cond2, label %if.then52, label %if.else57, !dbg !581

if.then52:                                        ; preds = %if.else48
  %left53 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %1, i64 0, i32 2, !dbg !583
  %right54 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %c.0, i64 0, i32 3, !dbg !585
  %14 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right54, align 8, !dbg !585
  tail call fastcc void @rotate_right(%struct.splay_tree_node_s** nonnull %left53, %struct.splay_tree_node_s* nonnull %c.0, %struct.splay_tree_node_s* %14) #6, !dbg !586
  %15 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left53, align 8, !dbg !587
  tail call fastcc void @rotate_left(%struct.splay_tree_node_s** %root, %struct.splay_tree_node_s* %1, %struct.splay_tree_node_s* %15) #6, !dbg !588
  br label %cleanup, !dbg !589

if.else57:                                        ; preds = %if.else48
  %or.cond3 = and i1 %cmp40, %cmp15, !dbg !590
  br i1 %or.cond3, label %if.then61, label %cleanup, !dbg !590

if.then61:                                        ; preds = %if.else57
  %right62 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %1, i64 0, i32 3, !dbg !592
  %left63 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %c.0, i64 0, i32 2, !dbg !594
  %16 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left63, align 8, !dbg !594
  tail call fastcc void @rotate_left(%struct.splay_tree_node_s** nonnull %right62, %struct.splay_tree_node_s* nonnull %c.0, %struct.splay_tree_node_s* %16) #6, !dbg !595
  %17 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right62, align 8, !dbg !596
  tail call fastcc void @rotate_right(%struct.splay_tree_node_s** %root, %struct.splay_tree_node_s* %1, %struct.splay_tree_node_s* %17) #6, !dbg !597
  br label %cleanup, !dbg !598

cleanup:                                          ; preds = %if.end8, %if.then34, %if.then52, %if.then61, %if.else57, %if.then43, %if.then25, %if.else27, %do.body
  %cleanup.dest.slot.0 = phi i1 [ false, %do.body ], [ false, %if.end8 ], [ false, %if.else27 ], [ false, %if.then25 ], [ true, %if.then43 ], [ true, %if.else57 ], [ true, %if.then61 ], [ true, %if.then52 ], [ true, %if.then34 ]
  br i1 %cleanup.dest.slot.0, label %cleanup.do.body_crit_edge, label %do.end.loopexit

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  %.pre = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !525
  br label %do.body

do.end.loopexit:                                  ; preds = %cleanup
  br label %do.end, !dbg !599

do.end:                                           ; preds = %do.end.loopexit, %entry
  ret void, !dbg !599
}

; Function Attrs: nounwind uwtable
define dso_local void @splay_tree_remove(%struct.splay_tree_s* %sp, i64 %key) local_unnamed_addr #3 !dbg !600 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !602, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.value(metadata i64 %key, metadata !603, metadata !DIExpression()), !dbg !608
  tail call fastcc void @splay_tree_splay(%struct.splay_tree_s* %sp, i64 %key) #6, !dbg !609
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 0, !dbg !610
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !610
  %tobool = icmp eq %struct.splay_tree_node_s* %0, null, !dbg !611
  br i1 %tobool, label %if.end24, label %land.lhs.true, !dbg !612

land.lhs.true:                                    ; preds = %entry
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 1, !dbg !613
  %1 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8, !dbg !613
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %0, i64 0, i32 0, !dbg !614
  %2 = load i64, i64* %key2, align 8, !dbg !614
  %call = tail call i32 %1(i64 %2, i64 %key) #5, !dbg !615
  %cmp = icmp eq i32 %call, 0, !dbg !616
  br i1 %cmp, label %if.then, label %if.end24, !dbg !617

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !618
  %left4 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %3, i64 0, i32 2, !dbg !619
  %4 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left4, align 8, !dbg !619
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %4, metadata !604, metadata !DIExpression()), !dbg !620
  %right6 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %3, i64 0, i32 3, !dbg !621
  %5 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right6, align 8, !dbg !621
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %5, metadata !607, metadata !DIExpression()), !dbg !620
  %delete_value = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 3, !dbg !622
  %6 = load void (i64)*, void (i64)** %delete_value, align 8, !dbg !622
  %tobool7 = icmp eq void (i64)* %6, null, !dbg !624
  br i1 %tobool7, label %if.then.if.end_crit_edge, label %if.then8, !dbg !625

if.then.if.end_crit_edge:                         ; preds = %if.then
  %7 = bitcast %struct.splay_tree_node_s* %3 to i8*, !dbg !625
  br label %if.end, !dbg !625

if.then8:                                         ; preds = %if.then
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %3, i64 0, i32 1, !dbg !626
  %8 = load i64, i64* %value, align 8, !dbg !626
  tail call void %6(i64 %8) #5, !dbg !627
  %.phi.trans.insert = bitcast %struct.splay_tree_s* %sp to i8**, !dbg !620
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !dbg !628
  br label %if.end, !dbg !627

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then8
  %9 = phi i8* [ %7, %if.then.if.end_crit_edge ], [ %.pre, %if.then8 ], !dbg !628
  %deallocate = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 5, !dbg !629
  %10 = load void (i8*, i8*)*, void (i8*, i8*)** %deallocate, align 8, !dbg !629
  %allocate_data = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 6, !dbg !630
  %11 = load i8*, i8** %allocate_data, align 8, !dbg !630
  tail call void %10(i8* %9, i8* %11) #5, !dbg !631
  %tobool12 = icmp eq %struct.splay_tree_node_s* %4, null, !dbg !632
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !634

if.then13:                                        ; preds = %if.end
  store %struct.splay_tree_node_s* %4, %struct.splay_tree_node_s** %root, align 8, !dbg !635
  %tobool15 = icmp eq %struct.splay_tree_node_s* %5, null, !dbg !637
  br i1 %tobool15, label %if.end24, label %while.cond.preheader, !dbg !639

while.cond.preheader:                             ; preds = %if.then13
  br label %while.cond, !dbg !640

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %left.0 = phi %struct.splay_tree_node_s* [ %12, %while.body ], [ %4, %while.cond.preheader ], !dbg !620
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %left.0, metadata !604, metadata !DIExpression()), !dbg !620
  %right17 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %left.0, i64 0, i32 3, !dbg !642
  %12 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right17, align 8, !dbg !642
  %tobool18 = icmp eq %struct.splay_tree_node_s* %12, null, !dbg !640
  br i1 %tobool18, label %while.end, label %while.body, !dbg !640

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %12, metadata !604, metadata !DIExpression()), !dbg !620
  br label %while.cond, !dbg !640, !llvm.loop !643

while.end:                                        ; preds = %while.cond
  %right17.lcssa = phi %struct.splay_tree_node_s** [ %right17, %while.cond ], !dbg !642
  store %struct.splay_tree_node_s* %5, %struct.splay_tree_node_s** %right17.lcssa, align 8, !dbg !645
  br label %if.end24, !dbg !646

if.else:                                          ; preds = %if.end
  store %struct.splay_tree_node_s* %5, %struct.splay_tree_node_s** %root, align 8, !dbg !647
  br label %if.end24

if.end24:                                         ; preds = %if.then13, %entry, %if.else, %while.end, %land.lhs.true
  ret void, !dbg !648
}

; Function Attrs: nounwind uwtable
define dso_local %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %sp, i64 %key) local_unnamed_addr #3 !dbg !649 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !653, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i64 %key, metadata !654, metadata !DIExpression()), !dbg !655
  tail call fastcc void @splay_tree_splay(%struct.splay_tree_s* %sp, i64 %key) #6, !dbg !656
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 0, !dbg !657
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !657
  %tobool = icmp eq %struct.splay_tree_node_s* %0, null, !dbg !659
  br i1 %tobool, label %return, label %land.lhs.true, !dbg !660

land.lhs.true:                                    ; preds = %entry
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 1, !dbg !661
  %1 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8, !dbg !661
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %0, i64 0, i32 0, !dbg !662
  %2 = load i64, i64* %key2, align 8, !dbg !662
  %call = tail call i32 %1(i64 %2, i64 %key) #5, !dbg !663
  %cmp = icmp eq i32 %call, 0, !dbg !664
  br i1 %cmp, label %if.then, label %return, !dbg !665

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !666
  br label %return, !dbg !667

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.splay_tree_node_s* [ %3, %if.then ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !668
  ret %struct.splay_tree_node_s* %retval.0, !dbg !669
}

; Function Attrs: nounwind uwtable
define dso_local %struct.splay_tree_node_s* @splay_tree_max(%struct.splay_tree_s* %sp) local_unnamed_addr #3 !dbg !670 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !674, metadata !DIExpression()), !dbg !676
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 0, !dbg !677
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !677
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %0, metadata !675, metadata !DIExpression()), !dbg !676
  %tobool = icmp eq %struct.splay_tree_node_s* %0, null, !dbg !678
  br i1 %tobool, label %cleanup, label %while.cond.preheader, !dbg !680

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !681

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %n.0 = phi %struct.splay_tree_node_s* [ %1, %while.body ], [ %0, %while.cond.preheader ], !dbg !676
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n.0, metadata !675, metadata !DIExpression()), !dbg !676
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %n.0, i64 0, i32 3, !dbg !682
  %1 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8, !dbg !682
  %tobool1 = icmp eq %struct.splay_tree_node_s* %1, null, !dbg !681
  br i1 %tobool1, label %cleanup.loopexit, label %while.body, !dbg !681

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %1, metadata !675, metadata !DIExpression()), !dbg !676
  br label %while.cond, !dbg !681, !llvm.loop !683

cleanup.loopexit:                                 ; preds = %while.cond
  %n.0.lcssa = phi %struct.splay_tree_node_s* [ %n.0, %while.cond ], !dbg !676
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n.0.lcssa, metadata !675, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n.0.lcssa, metadata !675, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n.0.lcssa, metadata !675, metadata !DIExpression()), !dbg !676
  br label %cleanup, !dbg !685

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi %struct.splay_tree_node_s* [ null, %entry ], [ %n.0.lcssa, %cleanup.loopexit ], !dbg !676
  ret %struct.splay_tree_node_s* %retval.0, !dbg !685
}

; Function Attrs: nounwind uwtable
define dso_local %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s* %sp) local_unnamed_addr #3 !dbg !686 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !688, metadata !DIExpression()), !dbg !690
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 0, !dbg !691
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !691
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %0, metadata !689, metadata !DIExpression()), !dbg !690
  %tobool = icmp eq %struct.splay_tree_node_s* %0, null, !dbg !692
  br i1 %tobool, label %cleanup, label %while.cond.preheader, !dbg !694

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !695

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %n.0 = phi %struct.splay_tree_node_s* [ %1, %while.body ], [ %0, %while.cond.preheader ], !dbg !690
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n.0, metadata !689, metadata !DIExpression()), !dbg !690
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %n.0, i64 0, i32 2, !dbg !696
  %1 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8, !dbg !696
  %tobool1 = icmp eq %struct.splay_tree_node_s* %1, null, !dbg !695
  br i1 %tobool1, label %cleanup.loopexit, label %while.body, !dbg !695

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %1, metadata !689, metadata !DIExpression()), !dbg !690
  br label %while.cond, !dbg !695, !llvm.loop !697

cleanup.loopexit:                                 ; preds = %while.cond
  %n.0.lcssa = phi %struct.splay_tree_node_s* [ %n.0, %while.cond ], !dbg !690
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n.0.lcssa, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n.0.lcssa, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n.0.lcssa, metadata !689, metadata !DIExpression()), !dbg !690
  br label %cleanup, !dbg !699

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi %struct.splay_tree_node_s* [ null, %entry ], [ %n.0.lcssa, %cleanup.loopexit ], !dbg !690
  ret %struct.splay_tree_node_s* %retval.0, !dbg !699
}

; Function Attrs: nounwind uwtable
define dso_local %struct.splay_tree_node_s* @splay_tree_predecessor(%struct.splay_tree_s* %sp, i64 %key) local_unnamed_addr #3 !dbg !700 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !702, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i64 %key, metadata !703, metadata !DIExpression()), !dbg !706
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 0, !dbg !707
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !707
  %tobool = icmp eq %struct.splay_tree_node_s* %0, null, !dbg !709
  br i1 %tobool, label %cleanup, label %if.end, !dbg !710

if.end:                                           ; preds = %entry
  tail call fastcc void @splay_tree_splay(%struct.splay_tree_s* %sp, i64 %key) #6, !dbg !711
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 1, !dbg !712
  %1 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8, !dbg !712
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !713
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %2, i64 0, i32 0, !dbg !714
  %3 = load i64, i64* %key2, align 8, !dbg !714
  %call = tail call i32 %1(i64 %3, i64 %key) #5, !dbg !715
  call void @llvm.dbg.value(metadata i32 %call, metadata !704, metadata !DIExpression()), !dbg !706
  %cmp = icmp slt i32 %call, 0, !dbg !716
  %4 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !706
  br i1 %cmp, label %cleanup, label %if.end5, !dbg !718

if.end5:                                          ; preds = %if.end
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %4, i64 0, i32 2, !dbg !719
  %5 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8, !dbg !719
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %5, metadata !705, metadata !DIExpression()), !dbg !706
  %tobool7 = icmp eq %struct.splay_tree_node_s* %5, null, !dbg !720
  br i1 %tobool7, label %cleanup, label %while.cond.preheader, !dbg !722

while.cond.preheader:                             ; preds = %if.end5
  br label %while.cond, !dbg !723

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %node.0 = phi %struct.splay_tree_node_s* [ %6, %while.body ], [ %5, %while.cond.preheader ], !dbg !706
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node.0, metadata !705, metadata !DIExpression()), !dbg !706
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %node.0, i64 0, i32 3, !dbg !724
  %6 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8, !dbg !724
  %tobool9 = icmp eq %struct.splay_tree_node_s* %6, null, !dbg !723
  br i1 %tobool9, label %cleanup.loopexit, label %while.body, !dbg !723

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %6, metadata !705, metadata !DIExpression()), !dbg !706
  br label %while.cond, !dbg !723, !llvm.loop !725

cleanup.loopexit:                                 ; preds = %while.cond
  %node.0.lcssa = phi %struct.splay_tree_node_s* [ %node.0, %while.cond ], !dbg !706
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node.0.lcssa, metadata !705, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node.0.lcssa, metadata !705, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node.0.lcssa, metadata !705, metadata !DIExpression()), !dbg !706
  br label %cleanup, !dbg !727

cleanup:                                          ; preds = %cleanup.loopexit, %if.end5, %entry, %if.end
  %retval.0 = phi %struct.splay_tree_node_s* [ null, %entry ], [ %4, %if.end ], [ null, %if.end5 ], [ %node.0.lcssa, %cleanup.loopexit ], !dbg !706
  ret %struct.splay_tree_node_s* %retval.0, !dbg !727
}

; Function Attrs: nounwind uwtable
define dso_local %struct.splay_tree_node_s* @splay_tree_successor(%struct.splay_tree_s* %sp, i64 %key) local_unnamed_addr #3 !dbg !728 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !730, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i64 %key, metadata !731, metadata !DIExpression()), !dbg !734
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 0, !dbg !735
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !735
  %tobool = icmp eq %struct.splay_tree_node_s* %0, null, !dbg !737
  br i1 %tobool, label %cleanup, label %if.end, !dbg !738

if.end:                                           ; preds = %entry
  tail call fastcc void @splay_tree_splay(%struct.splay_tree_s* %sp, i64 %key) #6, !dbg !739
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 1, !dbg !740
  %1 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8, !dbg !740
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !741
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %2, i64 0, i32 0, !dbg !742
  %3 = load i64, i64* %key2, align 8, !dbg !742
  %call = tail call i32 %1(i64 %3, i64 %key) #5, !dbg !743
  call void @llvm.dbg.value(metadata i32 %call, metadata !732, metadata !DIExpression()), !dbg !734
  %cmp = icmp sgt i32 %call, 0, !dbg !744
  %4 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !734
  br i1 %cmp, label %cleanup, label %if.end5, !dbg !746

if.end5:                                          ; preds = %if.end
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %4, i64 0, i32 3, !dbg !747
  %5 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8, !dbg !747
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %5, metadata !733, metadata !DIExpression()), !dbg !734
  %tobool7 = icmp eq %struct.splay_tree_node_s* %5, null, !dbg !748
  br i1 %tobool7, label %cleanup, label %while.cond.preheader, !dbg !750

while.cond.preheader:                             ; preds = %if.end5
  br label %while.cond, !dbg !751

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %node.0 = phi %struct.splay_tree_node_s* [ %6, %while.body ], [ %5, %while.cond.preheader ], !dbg !734
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node.0, metadata !733, metadata !DIExpression()), !dbg !734
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %node.0, i64 0, i32 2, !dbg !752
  %6 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8, !dbg !752
  %tobool9 = icmp eq %struct.splay_tree_node_s* %6, null, !dbg !751
  br i1 %tobool9, label %cleanup.loopexit, label %while.body, !dbg !751

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %6, metadata !733, metadata !DIExpression()), !dbg !734
  br label %while.cond, !dbg !751, !llvm.loop !753

cleanup.loopexit:                                 ; preds = %while.cond
  %node.0.lcssa = phi %struct.splay_tree_node_s* [ %node.0, %while.cond ], !dbg !734
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node.0.lcssa, metadata !733, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node.0.lcssa, metadata !733, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node.0.lcssa, metadata !733, metadata !DIExpression()), !dbg !734
  br label %cleanup, !dbg !755

cleanup:                                          ; preds = %cleanup.loopexit, %if.end5, %entry, %if.end
  %retval.0 = phi %struct.splay_tree_node_s* [ null, %entry ], [ %4, %if.end ], [ null, %if.end5 ], [ %node.0.lcssa, %cleanup.loopexit ], !dbg !734
  ret %struct.splay_tree_node_s* %retval.0, !dbg !755
}

; Function Attrs: nounwind uwtable
define dso_local i32 @splay_tree_foreach(%struct.splay_tree_s* %sp, i32 (%struct.splay_tree_node_s*, i8*)* %fn, i8* %data) local_unnamed_addr #3 !dbg !756 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !764, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i32 (%struct.splay_tree_node_s*, i8*)* %fn, metadata !765, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i8* %data, metadata !766, metadata !DIExpression()), !dbg !767
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %sp, i64 0, i32 0, !dbg !768
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8, !dbg !768
  %call = tail call fastcc i32 @splay_tree_foreach_helper(%struct.splay_tree_s* %sp, %struct.splay_tree_node_s* %0, i32 (%struct.splay_tree_node_s*, i8*)* %fn, i8* %data) #6, !dbg !769
  ret i32 %call, !dbg !770
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @splay_tree_foreach_helper(%struct.splay_tree_s* %sp, %struct.splay_tree_node_s* %node, i32 (%struct.splay_tree_node_s*, i8*)* %fn, i8* %data) unnamed_addr #3 !dbg !771 {
entry:
  br label %tailrecurse, !dbg !780

tailrecurse:                                      ; preds = %if.end7, %entry
  %node.tr = phi %struct.splay_tree_node_s* [ %node, %entry ], [ %1, %if.end7 ]
  call void @llvm.dbg.value(metadata %struct.splay_tree_s* %sp, metadata !775, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %node.tr, metadata !776, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 (%struct.splay_tree_node_s*, i8*)* %fn, metadata !777, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %data, metadata !778, metadata !DIExpression()), !dbg !781
  %tobool = icmp eq %struct.splay_tree_node_s* %node.tr, null, !dbg !782
  br i1 %tobool, label %cleanup, label %if.end, !dbg !784

if.end:                                           ; preds = %tailrecurse
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %node.tr, i64 0, i32 2, !dbg !785
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8, !dbg !785
  %call = tail call fastcc i32 @splay_tree_foreach_helper(%struct.splay_tree_s* %sp, %struct.splay_tree_node_s* %0, i32 (%struct.splay_tree_node_s*, i8*)* %fn, i8* %data) #6, !dbg !786
  call void @llvm.dbg.value(metadata i32 %call, metadata !779, metadata !DIExpression()), !dbg !781
  %tobool1 = icmp eq i32 %call, 0, !dbg !787
  br i1 %tobool1, label %if.end3, label %cleanup, !dbg !789

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 %fn(%struct.splay_tree_node_s* nonnull %node.tr, i8* %data) #5, !dbg !790
  call void @llvm.dbg.value(metadata i32 %call4, metadata !779, metadata !DIExpression()), !dbg !781
  %tobool5 = icmp eq i32 %call4, 0, !dbg !791
  br i1 %tobool5, label %if.end7, label %cleanup, !dbg !793

if.end7:                                          ; preds = %if.end3
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %node.tr, i64 0, i32 3, !dbg !794
  %1 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8, !dbg !794
  br label %tailrecurse, !dbg !780

cleanup:                                          ; preds = %if.end3, %if.end, %tailrecurse
  %retval.0 = phi i32 [ 0, %tailrecurse ], [ %call, %if.end ], [ %call4, %if.end3 ], !dbg !781
  ret i32 %retval.0, !dbg !795
}

; Function Attrs: nounwind uwtable
define dso_local i32 @splay_tree_compare_ints(i64 %k1, i64 %k2) local_unnamed_addr #3 !dbg !796 {
entry:
  call void @llvm.dbg.value(metadata i64 %k1, metadata !798, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 %k2, metadata !799, metadata !DIExpression()), !dbg !800
  %conv = trunc i64 %k1 to i32, !dbg !801
  %conv1 = trunc i64 %k2 to i32, !dbg !803
  %cmp = icmp slt i32 %conv, %conv1, !dbg !804
  %cmp5 = icmp sgt i32 %conv, %conv1, !dbg !805
  %. = zext i1 %cmp5 to i32, !dbg !805
  %retval.0 = select i1 %cmp, i32 -1, i32 %., !dbg !805
  ret i32 %retval.0, !dbg !806
}

; Function Attrs: nounwind uwtable
define dso_local i32 @splay_tree_compare_pointers(i64 %k1, i64 %k2) local_unnamed_addr #3 !dbg !807 {
entry:
  call void @llvm.dbg.value(metadata i64 %k1, metadata !809, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %k2, metadata !810, metadata !DIExpression()), !dbg !811
  %0 = inttoptr i64 %k1 to i8*, !dbg !812
  %1 = inttoptr i64 %k2 to i8*, !dbg !814
  %cmp = icmp ult i8* %0, %1, !dbg !815
  %cmp1 = icmp ugt i8* %0, %1, !dbg !816
  %. = zext i1 %cmp1 to i32, !dbg !816
  %retval.0 = select i1 %cmp, i32 -1, i32 %., !dbg !816
  ret i32 %retval.0, !dbg !817
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rotate_left(%struct.splay_tree_node_s** %pp, %struct.splay_tree_node_s* %p, %struct.splay_tree_node_s* %n) unnamed_addr #0 !dbg !818 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s** %pp, metadata !823, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %p, metadata !824, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n, metadata !825, metadata !DIExpression()), !dbg !827
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %n, i64 0, i32 3, !dbg !828
  %0 = bitcast %struct.splay_tree_node_s** %right to i64*, !dbg !828
  %1 = load i64, i64* %0, align 8, !dbg !828
  store %struct.splay_tree_node_s* %p, %struct.splay_tree_node_s** %right, align 8, !dbg !829
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %p, i64 0, i32 2, !dbg !830
  %2 = bitcast %struct.splay_tree_node_s** %left to i64*, !dbg !831
  store i64 %1, i64* %2, align 8, !dbg !831
  store %struct.splay_tree_node_s* %n, %struct.splay_tree_node_s** %pp, align 8, !dbg !832
  ret void, !dbg !833
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rotate_right(%struct.splay_tree_node_s** %pp, %struct.splay_tree_node_s* %p, %struct.splay_tree_node_s* %n) unnamed_addr #0 !dbg !834 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s** %pp, metadata !836, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %p, metadata !837, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n, metadata !838, metadata !DIExpression()), !dbg !840
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %n, i64 0, i32 2, !dbg !841
  %0 = bitcast %struct.splay_tree_node_s** %left to i64*, !dbg !841
  %1 = load i64, i64* %0, align 8, !dbg !841
  store %struct.splay_tree_node_s* %p, %struct.splay_tree_node_s** %left, align 8, !dbg !842
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %p, i64 0, i32 3, !dbg !843
  %2 = bitcast %struct.splay_tree_node_s** %right to i64*, !dbg !844
  store i64 %1, i64* %2, align 8, !dbg !844
  store %struct.splay_tree_node_s* %n, %struct.splay_tree_node_s** %pp, align 8, !dbg !845
  ret void, !dbg !846
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "splay-tree.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !8, !9, !11, !12, !13, !6, !19, !24}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree", file: !14, line: 128, baseType: !15)
!14 = !DIFile(filename: "./include/splay-tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_s", file: !14, line: 109, size: 448, elements: !17)
!17 = !{!18, !31, !36, !41, !46, !51, !56}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !16, file: !14, line: 111, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_node", file: !14, line: 66, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_node_s", file: !14, line: 96, size: 256, elements: !22)
!22 = !{!23, !27, !29, !30}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !21, file: !14, line: 98, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_key", file: !14, line: 62, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "libi_uhostptr_t", file: !14, line: 41, baseType: !26)
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !21, file: !14, line: 101, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_value", file: !14, line: 63, baseType: !25)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !21, file: !14, line: 104, baseType: !19, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !21, file: !14, line: 105, baseType: !19, size: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !16, file: !14, line: 114, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_compare_fn", file: !14, line: 70, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!4, !24, !24}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "delete_key", scope: !16, file: !14, line: 117, baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_key_fn", file: !14, line: 74, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !24}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "delete_value", scope: !16, file: !14, line: 120, baseType: !42, size: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_value_fn", file: !14, line: 78, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !28}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !16, file: !14, line: 123, baseType: !47, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_allocate_fn", file: !14, line: 87, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!8, !4, !8}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate", scope: !16, file: !14, line: 124, baseType: !52, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_deallocate_fn", file: !14, line: 93, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !8, !8}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_data", scope: !16, file: !14, line: 125, baseType: !8, size: 64, offset: 384)
!57 = !{i32 2, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!61 = distinct !DISubprogram(name: "atoi", scope: !62, file: !62, line: 361, type: !63, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!62 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!63 = !DISubroutineType(types: !64)
!64 = !{!4, !9}
!65 = !{!66}
!66 = !DILocalVariable(name: "__nptr", arg: 1, scope: !61, file: !62, line: 361, type: !9)
!67 = !DILocation(line: 0, scope: !61)
!68 = !DILocation(line: 363, column: 16, scope: !61)
!69 = !DILocation(line: 363, column: 10, scope: !61)
!70 = !DILocation(line: 363, column: 3, scope: !61)
!71 = distinct !DISubprogram(name: "atol", scope: !62, file: !62, line: 366, type: !72, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !75)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !9}
!74 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!75 = !{!76}
!76 = !DILocalVariable(name: "__nptr", arg: 1, scope: !71, file: !62, line: 366, type: !9)
!77 = !DILocation(line: 0, scope: !71)
!78 = !DILocation(line: 368, column: 10, scope: !71)
!79 = !DILocation(line: 368, column: 3, scope: !71)
!80 = distinct !DISubprogram(name: "atoll", scope: !62, file: !62, line: 373, type: !81, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !84)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !9}
!83 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!84 = !{!85}
!85 = !DILocalVariable(name: "__nptr", arg: 1, scope: !80, file: !62, line: 373, type: !9)
!86 = !DILocation(line: 0, scope: !80)
!87 = !DILocation(line: 375, column: 10, scope: !80)
!88 = !DILocation(line: 375, column: 3, scope: !80)
!89 = distinct !DISubprogram(name: "bsearch", scope: !90, file: !90, line: 20, type: !91, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!91 = !DISubroutineType(types: !92)
!92 = !{!8, !93, !93, !95, !95, !97}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 46, baseType: !26)
!96 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !62, line: 808, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!4, !93, !93}
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!102 = !DILocalVariable(name: "__key", arg: 1, scope: !89, file: !90, line: 20, type: !93)
!103 = !DILocalVariable(name: "__base", arg: 2, scope: !89, file: !90, line: 20, type: !93)
!104 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !89, file: !90, line: 20, type: !95)
!105 = !DILocalVariable(name: "__size", arg: 4, scope: !89, file: !90, line: 20, type: !95)
!106 = !DILocalVariable(name: "__compar", arg: 5, scope: !89, file: !90, line: 21, type: !97)
!107 = !DILocalVariable(name: "__l", scope: !89, file: !90, line: 23, type: !95)
!108 = !DILocalVariable(name: "__u", scope: !89, file: !90, line: 23, type: !95)
!109 = !DILocalVariable(name: "__idx", scope: !89, file: !90, line: 23, type: !95)
!110 = !DILocalVariable(name: "__p", scope: !89, file: !90, line: 24, type: !93)
!111 = !DILocalVariable(name: "__comparison", scope: !89, file: !90, line: 25, type: !4)
!112 = !DILocation(line: 0, scope: !89)
!113 = !DILocation(line: 29, column: 3, scope: !89)
!114 = !DILocation(line: 27, column: 7, scope: !89)
!115 = !DILocation(line: 29, column: 14, scope: !89)
!116 = !DILocation(line: 31, column: 20, scope: !117)
!117 = distinct !DILexicalBlock(scope: !89, file: !90, line: 30, column: 5)
!118 = !DILocation(line: 31, column: 27, scope: !117)
!119 = !DILocation(line: 32, column: 56, scope: !117)
!120 = !DILocation(line: 32, column: 47, scope: !117)
!121 = !DILocation(line: 33, column: 22, scope: !117)
!122 = !DILocation(line: 34, column: 24, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !90, line: 34, column: 11)
!124 = !DILocation(line: 34, column: 11, scope: !117)
!125 = !DILocation(line: 36, column: 29, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !90, line: 36, column: 16)
!127 = !DILocation(line: 36, column: 16, scope: !123)
!128 = !DILocation(line: 37, column: 14, scope: !126)
!129 = distinct !{!129, !113, !130}
!130 = !DILocation(line: 40, column: 5, scope: !89)
!131 = !DILocation(line: 43, column: 1, scope: !89)
!132 = distinct !DISubprogram(name: "atof", scope: !133, file: !133, line: 25, type: !134, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !9}
!136 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!137 = !{!138}
!138 = !DILocalVariable(name: "__nptr", arg: 1, scope: !132, file: !133, line: 25, type: !9)
!139 = !DILocation(line: 0, scope: !132)
!140 = !DILocation(line: 27, column: 10, scope: !132)
!141 = !DILocation(line: 27, column: 3, scope: !132)
!142 = distinct !DISubprogram(name: "vprintf", scope: !143, file: !143, line: 39, type: !144, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!144 = !DISubroutineType(types: !145)
!145 = !{!4, !146, !147}
!146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 28, size: 192, elements: !149)
!149 = !{!150, !152, !153, !154}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !148, file: !1, line: 28, baseType: !151, size: 32)
!151 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !148, file: !1, line: 28, baseType: !151, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !148, file: !1, line: 28, baseType: !8, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !148, file: !1, line: 28, baseType: !8, size: 64, offset: 128)
!155 = !{!156, !157}
!156 = !DILocalVariable(name: "__fmt", arg: 1, scope: !142, file: !143, line: 39, type: !146)
!157 = !DILocalVariable(name: "__arg", arg: 2, scope: !142, file: !143, line: 39, type: !147)
!158 = !DILocation(line: 0, scope: !142)
!159 = !DILocation(line: 41, column: 20, scope: !142)
!160 = !DILocation(line: 41, column: 10, scope: !142)
!161 = !DILocation(line: 41, column: 3, scope: !142)
!162 = distinct !DISubprogram(name: "getchar", scope: !143, file: !143, line: 47, type: !163, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!163 = !DISubroutineType(types: !164)
!164 = !{!4}
!165 = !DILocation(line: 49, column: 16, scope: !162)
!166 = !DILocation(line: 49, column: 10, scope: !162)
!167 = !DILocation(line: 49, column: 3, scope: !162)
!168 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !143, file: !143, line: 56, type: !169, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !226)
!169 = !DISubroutineType(types: !170)
!170 = !{!4, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !176)
!175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !192, !194, !195, !196, !199, !201, !203, !207, !210, !212, !215, !218, !219, !220, !221, !222}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !174, file: !175, line: 51, baseType: !4, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !174, file: !175, line: 54, baseType: !6, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !174, file: !175, line: 55, baseType: !6, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !174, file: !175, line: 56, baseType: !6, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !174, file: !175, line: 57, baseType: !6, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !174, file: !175, line: 58, baseType: !6, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !174, file: !175, line: 59, baseType: !6, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !174, file: !175, line: 60, baseType: !6, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !174, file: !175, line: 61, baseType: !6, size: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !174, file: !175, line: 64, baseType: !6, size: 64, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !174, file: !175, line: 65, baseType: !6, size: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !174, file: !175, line: 66, baseType: !6, size: 64, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !174, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !175, line: 36, flags: DIFlagFwdDecl)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !174, file: !175, line: 70, baseType: !193, size: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !174, file: !175, line: 72, baseType: !4, size: 32, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !174, file: !175, line: 73, baseType: !4, size: 32, offset: 928)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !174, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !198, line: 152, baseType: !74)
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !174, file: !175, line: 77, baseType: !200, size: 16, offset: 1024)
!200 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !174, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!202 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !174, file: !175, line: 79, baseType: !204, size: 8, offset: 1048)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 1)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !174, file: !175, line: 81, baseType: !208, size: 64, offset: 1088)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !175, line: 43, baseType: null)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !174, file: !175, line: 89, baseType: !211, size: 64, offset: 1152)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !198, line: 153, baseType: !74)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !174, file: !175, line: 91, baseType: !213, size: 64, offset: 1216)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !175, line: 37, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !174, file: !175, line: 92, baseType: !216, size: 64, offset: 1280)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !175, line: 38, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !174, file: !175, line: 93, baseType: !193, size: 64, offset: 1344)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !174, file: !175, line: 94, baseType: !8, size: 64, offset: 1408)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !174, file: !175, line: 95, baseType: !95, size: 64, offset: 1472)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !174, file: !175, line: 96, baseType: !4, size: 32, offset: 1536)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !174, file: !175, line: 98, baseType: !223, size: 160, offset: 1568)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 20)
!226 = !{!227}
!227 = !DILocalVariable(name: "__fp", arg: 1, scope: !168, file: !143, line: 56, type: !171)
!228 = !DILocation(line: 0, scope: !168)
!229 = !DILocation(line: 58, column: 10, scope: !168)
!230 = !DILocation(line: 58, column: 3, scope: !168)
!231 = distinct !DISubprogram(name: "getc_unlocked", scope: !143, file: !143, line: 66, type: !169, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!232 = !{!233}
!233 = !DILocalVariable(name: "__fp", arg: 1, scope: !231, file: !143, line: 66, type: !171)
!234 = !DILocation(line: 0, scope: !231)
!235 = !DILocation(line: 68, column: 10, scope: !231)
!236 = !DILocation(line: 68, column: 3, scope: !231)
!237 = distinct !DISubprogram(name: "getchar_unlocked", scope: !143, file: !143, line: 73, type: !163, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!238 = !DILocation(line: 75, column: 10, scope: !237)
!239 = !DILocation(line: 75, column: 3, scope: !237)
!240 = distinct !DISubprogram(name: "putchar", scope: !143, file: !143, line: 82, type: !241, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{!4, !4}
!243 = !{!244}
!244 = !DILocalVariable(name: "__c", arg: 1, scope: !240, file: !143, line: 82, type: !4)
!245 = !DILocation(line: 0, scope: !240)
!246 = !DILocation(line: 84, column: 21, scope: !240)
!247 = !DILocation(line: 84, column: 10, scope: !240)
!248 = !DILocation(line: 84, column: 3, scope: !240)
!249 = distinct !DISubprogram(name: "fputc_unlocked", scope: !143, file: !143, line: 91, type: !250, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{!4, !4, !171}
!252 = !{!253, !254}
!253 = !DILocalVariable(name: "__c", arg: 1, scope: !249, file: !143, line: 91, type: !4)
!254 = !DILocalVariable(name: "__stream", arg: 2, scope: !249, file: !143, line: 91, type: !171)
!255 = !DILocation(line: 0, scope: !249)
!256 = !DILocation(line: 93, column: 10, scope: !249)
!257 = !DILocation(line: 93, column: 3, scope: !249)
!258 = distinct !DISubprogram(name: "putc_unlocked", scope: !143, file: !143, line: 101, type: !250, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !259)
!259 = !{!260, !261}
!260 = !DILocalVariable(name: "__c", arg: 1, scope: !258, file: !143, line: 101, type: !4)
!261 = !DILocalVariable(name: "__stream", arg: 2, scope: !258, file: !143, line: 101, type: !171)
!262 = !DILocation(line: 0, scope: !258)
!263 = !DILocation(line: 103, column: 10, scope: !258)
!264 = !DILocation(line: 103, column: 3, scope: !258)
!265 = distinct !DISubprogram(name: "putchar_unlocked", scope: !143, file: !143, line: 108, type: !241, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !266)
!266 = !{!267}
!267 = !DILocalVariable(name: "__c", arg: 1, scope: !265, file: !143, line: 108, type: !4)
!268 = !DILocation(line: 0, scope: !265)
!269 = !DILocation(line: 110, column: 10, scope: !265)
!270 = !DILocation(line: 110, column: 3, scope: !265)
!271 = distinct !DISubprogram(name: "getline", scope: !143, file: !143, line: 118, type: !272, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !276)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !5, !275, !171}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !198, line: 193, baseType: !74)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!276 = !{!277, !278, !279}
!277 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !271, file: !143, line: 118, type: !5)
!278 = !DILocalVariable(name: "__n", arg: 2, scope: !271, file: !143, line: 118, type: !275)
!279 = !DILocalVariable(name: "__stream", arg: 3, scope: !271, file: !143, line: 118, type: !171)
!280 = !DILocation(line: 0, scope: !271)
!281 = !DILocation(line: 120, column: 10, scope: !271)
!282 = !DILocation(line: 120, column: 3, scope: !271)
!283 = distinct !DISubprogram(name: "feof_unlocked", scope: !143, file: !143, line: 128, type: !169, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !284)
!284 = !{!285}
!285 = !DILocalVariable(name: "__stream", arg: 1, scope: !283, file: !143, line: 128, type: !171)
!286 = !DILocation(line: 0, scope: !283)
!287 = !DILocation(line: 130, column: 10, scope: !283)
!288 = !DILocation(line: 130, column: 3, scope: !283)
!289 = distinct !DISubprogram(name: "ferror_unlocked", scope: !143, file: !143, line: 135, type: !169, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !290)
!290 = !{!291}
!291 = !DILocalVariable(name: "__stream", arg: 1, scope: !289, file: !143, line: 135, type: !171)
!292 = !DILocation(line: 0, scope: !289)
!293 = !DILocation(line: 137, column: 10, scope: !289)
!294 = !DILocation(line: 137, column: 3, scope: !289)
!295 = distinct !DISubprogram(name: "splay_tree_new", scope: !1, file: !1, line: 246, type: !296, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!13, !32, !37, !42}
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "compare_fn", arg: 1, scope: !295, file: !1, line: 246, type: !32)
!300 = !DILocalVariable(name: "delete_key_fn", arg: 2, scope: !295, file: !1, line: 247, type: !37)
!301 = !DILocalVariable(name: "delete_value_fn", arg: 3, scope: !295, file: !1, line: 248, type: !42)
!302 = !DILocation(line: 0, scope: !295)
!303 = !DILocation(line: 250, column: 11, scope: !295)
!304 = !DILocation(line: 250, column: 3, scope: !295)
!305 = distinct !DISubprogram(name: "splay_tree_new_with_allocator", scope: !1, file: !1, line: 261, type: !306, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!13, !32, !37, !42, !47, !52, !8}
!308 = !{!309, !310, !311, !312, !313, !314, !315}
!309 = !DILocalVariable(name: "compare_fn", arg: 1, scope: !305, file: !1, line: 261, type: !32)
!310 = !DILocalVariable(name: "delete_key_fn", arg: 2, scope: !305, file: !1, line: 262, type: !37)
!311 = !DILocalVariable(name: "delete_value_fn", arg: 3, scope: !305, file: !1, line: 263, type: !42)
!312 = !DILocalVariable(name: "allocate_fn", arg: 4, scope: !305, file: !1, line: 264, type: !47)
!313 = !DILocalVariable(name: "deallocate_fn", arg: 5, scope: !305, file: !1, line: 265, type: !52)
!314 = !DILocalVariable(name: "allocate_data", arg: 6, scope: !305, file: !1, line: 266, type: !8)
!315 = !DILocalVariable(name: "sp", scope: !305, file: !1, line: 268, type: !13)
!316 = !DILocation(line: 0, scope: !305)
!317 = !DILocation(line: 268, column: 32, scope: !305)
!318 = !DILocation(line: 268, column: 19, scope: !305)
!319 = !DILocation(line: 270, column: 7, scope: !305)
!320 = !DILocation(line: 270, column: 12, scope: !305)
!321 = !DILocation(line: 271, column: 7, scope: !305)
!322 = !DILocation(line: 271, column: 12, scope: !305)
!323 = !DILocation(line: 272, column: 7, scope: !305)
!324 = !DILocation(line: 272, column: 18, scope: !305)
!325 = !DILocation(line: 273, column: 7, scope: !305)
!326 = !DILocation(line: 273, column: 20, scope: !305)
!327 = !DILocation(line: 274, column: 7, scope: !305)
!328 = !DILocation(line: 274, column: 16, scope: !305)
!329 = !DILocation(line: 275, column: 7, scope: !305)
!330 = !DILocation(line: 275, column: 18, scope: !305)
!331 = !DILocation(line: 276, column: 7, scope: !305)
!332 = !DILocation(line: 276, column: 21, scope: !305)
!333 = !DILocation(line: 278, column: 3, scope: !305)
!334 = distinct !DISubprogram(name: "splay_tree_xmalloc_allocate", scope: !1, file: !1, line: 228, type: !49, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !335)
!335 = !{!336, !337}
!336 = !DILocalVariable(name: "size", arg: 1, scope: !334, file: !1, line: 228, type: !4)
!337 = !DILocalVariable(name: "data", arg: 2, scope: !334, file: !1, line: 228, type: !8)
!338 = !DILocation(line: 0, scope: !334)
!339 = !DILocation(line: 230, column: 28, scope: !334)
!340 = !DILocation(line: 230, column: 19, scope: !334)
!341 = !DILocation(line: 230, column: 3, scope: !334)
!342 = distinct !DISubprogram(name: "splay_tree_xmalloc_deallocate", scope: !1, file: !1, line: 234, type: !54, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !343)
!343 = !{!344, !345}
!344 = !DILocalVariable(name: "object", arg: 1, scope: !342, file: !1, line: 234, type: !8)
!345 = !DILocalVariable(name: "data", arg: 2, scope: !342, file: !1, line: 234, type: !8)
!346 = !DILocation(line: 0, scope: !342)
!347 = !DILocation(line: 236, column: 3, scope: !342)
!348 = !DILocation(line: 237, column: 1, scope: !342)
!349 = distinct !DISubprogram(name: "splay_tree_delete", scope: !1, file: !1, line: 284, type: !350, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !13}
!352 = !{!353}
!353 = !DILocalVariable(name: "sp", arg: 1, scope: !349, file: !1, line: 284, type: !13)
!354 = !DILocation(line: 0, scope: !349)
!355 = !DILocation(line: 286, column: 37, scope: !349)
!356 = !DILocation(line: 286, column: 3, scope: !349)
!357 = !DILocation(line: 287, column: 9, scope: !349)
!358 = !DILocation(line: 287, column: 22, scope: !349)
!359 = !DILocation(line: 287, column: 38, scope: !349)
!360 = !DILocation(line: 287, column: 3, scope: !349)
!361 = !DILocation(line: 288, column: 1, scope: !349)
!362 = distinct !DISubprogram(name: "splay_tree_delete_helper", scope: !1, file: !1, line: 52, type: !363, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !13, !19}
!365 = !{!366, !367, !368, !369, !370}
!366 = !DILocalVariable(name: "sp", arg: 1, scope: !362, file: !1, line: 52, type: !13)
!367 = !DILocalVariable(name: "node", arg: 2, scope: !362, file: !1, line: 52, type: !19)
!368 = !DILocalVariable(name: "pending", scope: !362, file: !1, line: 54, type: !19)
!369 = !DILocalVariable(name: "active", scope: !362, file: !1, line: 55, type: !19)
!370 = !DILocalVariable(name: "temp", scope: !371, file: !1, line: 80, type: !19)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 79, column: 2)
!372 = distinct !DILexicalBlock(scope: !362, file: !1, line: 75, column: 5)
!373 = !DILocation(line: 0, scope: !362)
!374 = !DILocation(line: 57, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !362, file: !1, line: 57, column: 7)
!376 = !DILocation(line: 57, column: 7, scope: !362)
!377 = !DILocation(line: 63, column: 3, scope: !378)
!378 = distinct !DILexicalBlock(scope: !362, file: !1, line: 63, column: 3)
!379 = !DILocation(line: 63, column: 3, scope: !362)
!380 = !DILocation(line: 64, column: 3, scope: !381)
!381 = distinct !DILexicalBlock(scope: !362, file: !1, line: 64, column: 3)
!382 = !DILocation(line: 64, column: 3, scope: !362)
!383 = !DILocation(line: 67, column: 9, scope: !362)
!384 = !DILocation(line: 67, column: 13, scope: !362)
!385 = !DILocation(line: 0, scope: !371)
!386 = !DILocation(line: 74, column: 3, scope: !362)
!387 = !DILocation(line: 0, scope: !372)
!388 = !DILocation(line: 78, column: 7, scope: !372)
!389 = distinct !{!389, !386, !390}
!390 = !DILocation(line: 104, column: 5, scope: !362)
!391 = !DILocation(line: 85, column: 16, scope: !392)
!392 = distinct !DILexicalBlock(scope: !371, file: !1, line: 85, column: 8)
!393 = !DILocation(line: 85, column: 8, scope: !392)
!394 = !DILocation(line: 85, column: 8, scope: !371)
!395 = !DILocation(line: 87, column: 8, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 87, column: 8)
!397 = distinct !DILexicalBlock(scope: !392, file: !1, line: 86, column: 6)
!398 = !DILocation(line: 87, column: 8, scope: !397)
!399 = !DILocation(line: 88, column: 8, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !1, line: 88, column: 8)
!401 = !DILocation(line: 88, column: 8, scope: !397)
!402 = !DILocation(line: 89, column: 28, scope: !397)
!403 = !DILocation(line: 89, column: 16, scope: !397)
!404 = !DILocation(line: 89, column: 22, scope: !397)
!405 = !DILocation(line: 89, column: 26, scope: !397)
!406 = !DILocation(line: 90, column: 44, scope: !397)
!407 = !DILocation(line: 91, column: 6, scope: !397)
!408 = !DILocation(line: 92, column: 16, scope: !409)
!409 = distinct !DILexicalBlock(scope: !371, file: !1, line: 92, column: 8)
!410 = !DILocation(line: 92, column: 8, scope: !409)
!411 = !DILocation(line: 92, column: 8, scope: !371)
!412 = !DILocation(line: 94, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 94, column: 8)
!414 = distinct !DILexicalBlock(scope: !409, file: !1, line: 93, column: 6)
!415 = !DILocation(line: 94, column: 8, scope: !414)
!416 = !DILocation(line: 95, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !1, line: 95, column: 8)
!418 = !DILocation(line: 95, column: 8, scope: !414)
!419 = !DILocation(line: 96, column: 29, scope: !414)
!420 = !DILocation(line: 96, column: 16, scope: !414)
!421 = !DILocation(line: 96, column: 23, scope: !414)
!422 = !DILocation(line: 96, column: 27, scope: !414)
!423 = !DILocation(line: 97, column: 44, scope: !414)
!424 = !DILocation(line: 98, column: 6, scope: !414)
!425 = !DILocation(line: 101, column: 37, scope: !371)
!426 = !DILocation(line: 102, column: 10, scope: !371)
!427 = !DILocation(line: 102, column: 23, scope: !371)
!428 = !DILocation(line: 102, column: 41, scope: !371)
!429 = !DILocation(line: 102, column: 4, scope: !371)
!430 = distinct !{!430, !388, !431}
!431 = !DILocation(line: 103, column: 2, scope: !372)
!432 = !DILocation(line: 107, column: 1, scope: !362)
!433 = distinct !DISubprogram(name: "splay_tree_insert", scope: !1, file: !1, line: 295, type: !434, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!19, !13, !24, !28}
!436 = !{!437, !438, !439, !440, !441}
!437 = !DILocalVariable(name: "sp", arg: 1, scope: !433, file: !1, line: 295, type: !13)
!438 = !DILocalVariable(name: "key", arg: 2, scope: !433, file: !1, line: 295, type: !24)
!439 = !DILocalVariable(name: "value", arg: 3, scope: !433, file: !1, line: 295, type: !28)
!440 = !DILocalVariable(name: "comparison", scope: !433, file: !1, line: 297, type: !4)
!441 = !DILocalVariable(name: "node", scope: !442, file: !1, line: 315, type: !19)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 313, column: 5)
!443 = distinct !DILexicalBlock(scope: !433, file: !1, line: 304, column: 7)
!444 = !DILocation(line: 0, scope: !433)
!445 = !DILocation(line: 299, column: 3, scope: !433)
!446 = !DILocation(line: 301, column: 11, scope: !447)
!447 = distinct !DILexicalBlock(scope: !433, file: !1, line: 301, column: 7)
!448 = !DILocation(line: 301, column: 7, scope: !447)
!449 = !DILocation(line: 301, column: 7, scope: !433)
!450 = !DILocation(line: 302, column: 24, scope: !447)
!451 = !DILocation(line: 302, column: 40, scope: !447)
!452 = !DILocation(line: 302, column: 18, scope: !447)
!453 = !DILocation(line: 304, column: 11, scope: !443)
!454 = !DILocation(line: 302, column: 5, scope: !447)
!455 = !DILocation(line: 304, column: 7, scope: !443)
!456 = !DILocation(line: 304, column: 30, scope: !443)
!457 = !DILocation(line: 304, column: 16, scope: !443)
!458 = !DILocation(line: 308, column: 15, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !1, line: 308, column: 11)
!460 = distinct !DILexicalBlock(scope: !443, file: !1, line: 305, column: 5)
!461 = !DILocation(line: 308, column: 11, scope: !459)
!462 = !DILocation(line: 308, column: 11, scope: !460)
!463 = !DILocation(line: 309, column: 32, scope: !459)
!464 = !DILocation(line: 309, column: 2, scope: !459)
!465 = !DILocation(line: 310, column: 11, scope: !460)
!466 = !DILocation(line: 310, column: 17, scope: !460)
!467 = !DILocation(line: 310, column: 23, scope: !460)
!468 = !DILocation(line: 341, column: 14, scope: !433)
!469 = !DILocation(line: 311, column: 5, scope: !460)
!470 = !DILocation(line: 318, column: 21, scope: !442)
!471 = !DILocation(line: 319, column: 36, scope: !442)
!472 = !DILocation(line: 318, column: 15, scope: !442)
!473 = !DILocation(line: 0, scope: !442)
!474 = !DILocation(line: 320, column: 13, scope: !442)
!475 = !DILocation(line: 320, column: 17, scope: !442)
!476 = !DILocation(line: 321, column: 13, scope: !442)
!477 = !DILocation(line: 321, column: 19, scope: !442)
!478 = !DILocation(line: 323, column: 16, scope: !479)
!479 = distinct !DILexicalBlock(scope: !442, file: !1, line: 323, column: 11)
!480 = !DILocation(line: 323, column: 12, scope: !479)
!481 = !DILocation(line: 323, column: 11, scope: !442)
!482 = !DILocation(line: 324, column: 21, scope: !479)
!483 = !DILocation(line: 324, column: 27, scope: !479)
!484 = !DILocation(line: 324, column: 8, scope: !479)
!485 = !DILocation(line: 324, column: 13, scope: !479)
!486 = !DILocation(line: 324, column: 2, scope: !479)
!487 = !DILocation(line: 325, column: 27, scope: !488)
!488 = distinct !DILexicalBlock(scope: !479, file: !1, line: 325, column: 16)
!489 = !DILocation(line: 325, column: 16, scope: !479)
!490 = !DILocation(line: 327, column: 10, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !1, line: 326, column: 2)
!492 = !DILocation(line: 327, column: 15, scope: !491)
!493 = !DILocation(line: 328, column: 30, scope: !491)
!494 = !DILocation(line: 328, column: 10, scope: !491)
!495 = !DILocation(line: 328, column: 16, scope: !491)
!496 = !DILocation(line: 329, column: 22, scope: !491)
!497 = !DILocation(line: 330, column: 2, scope: !491)
!498 = !DILocation(line: 333, column: 10, scope: !499)
!499 = distinct !DILexicalBlock(scope: !488, file: !1, line: 332, column: 2)
!500 = !DILocation(line: 333, column: 16, scope: !499)
!501 = !DILocation(line: 334, column: 30, scope: !499)
!502 = !DILocation(line: 334, column: 10, scope: !499)
!503 = !DILocation(line: 334, column: 15, scope: !499)
!504 = !DILocation(line: 335, column: 22, scope: !499)
!505 = !DILocation(line: 338, column: 16, scope: !442)
!506 = !DILocation(line: 341, column: 3, scope: !433)
!507 = distinct !DISubprogram(name: "splay_tree_splay", scope: !1, file: !1, line: 138, type: !508, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !13, !24}
!510 = !{!511, !512, !513, !515, !516, !517}
!511 = !DILocalVariable(name: "sp", arg: 1, scope: !507, file: !1, line: 138, type: !13)
!512 = !DILocalVariable(name: "key", arg: 2, scope: !507, file: !1, line: 138, type: !24)
!513 = !DILocalVariable(name: "cmp1", scope: !514, file: !1, line: 144, type: !4)
!514 = distinct !DILexicalBlock(scope: !507, file: !1, line: 143, column: 6)
!515 = !DILocalVariable(name: "cmp2", scope: !514, file: !1, line: 144, type: !4)
!516 = !DILocalVariable(name: "n", scope: !514, file: !1, line: 145, type: !19)
!517 = !DILocalVariable(name: "c", scope: !514, file: !1, line: 145, type: !19)
!518 = !DILocation(line: 0, scope: !507)
!519 = !DILocation(line: 140, column: 11, scope: !520)
!520 = distinct !DILexicalBlock(scope: !507, file: !1, line: 140, column: 7)
!521 = !DILocation(line: 140, column: 16, scope: !520)
!522 = !DILocation(line: 140, column: 7, scope: !507)
!523 = !DILocation(line: 0, scope: !514)
!524 = !DILocation(line: 151, column: 9, scope: !514)
!525 = !DILocation(line: 147, column: 13, scope: !514)
!526 = !DILocation(line: 148, column: 18, scope: !514)
!527 = !DILocation(line: 148, column: 33, scope: !514)
!528 = !DILocation(line: 148, column: 12, scope: !514)
!529 = !DILocation(line: 151, column: 14, scope: !530)
!530 = distinct !DILexicalBlock(scope: !514, file: !1, line: 151, column: 9)
!531 = !DILocation(line: 155, column: 14, scope: !532)
!532 = distinct !DILexicalBlock(scope: !514, file: !1, line: 155, column: 9)
!533 = !DILocation(line: 155, column: 9, scope: !514)
!534 = !DILocation(line: 156, column: 14, scope: !532)
!535 = !DILocation(line: 156, column: 7, scope: !532)
!536 = !DILocation(line: 158, column: 14, scope: !532)
!537 = !DILocation(line: 0, scope: !532)
!538 = !DILocation(line: 159, column: 10, scope: !539)
!539 = distinct !DILexicalBlock(scope: !514, file: !1, line: 159, column: 9)
!540 = !DILocation(line: 159, column: 9, scope: !514)
!541 = !DILocation(line: 164, column: 18, scope: !514)
!542 = !DILocation(line: 164, column: 33, scope: !514)
!543 = !DILocation(line: 164, column: 12, scope: !514)
!544 = !DILocation(line: 165, column: 14, scope: !545)
!545 = distinct !DILexicalBlock(scope: !514, file: !1, line: 165, column: 9)
!546 = !DILocation(line: 166, column: 9, scope: !545)
!547 = !DILocation(line: 166, column: 18, scope: !545)
!548 = !DILocation(line: 166, column: 22, scope: !545)
!549 = !DILocation(line: 166, column: 29, scope: !545)
!550 = !DILocation(line: 166, column: 26, scope: !545)
!551 = !DILocation(line: 167, column: 9, scope: !545)
!552 = !DILocation(line: 167, column: 18, scope: !545)
!553 = !DILocation(line: 167, column: 22, scope: !545)
!554 = !DILocation(line: 167, column: 29, scope: !545)
!555 = !DILocation(line: 167, column: 26, scope: !545)
!556 = !DILocation(line: 165, column: 9, scope: !514)
!557 = !DILocation(line: 169, column: 6, scope: !558)
!558 = distinct !DILexicalBlock(scope: !545, file: !1, line: 168, column: 7)
!559 = !DILocation(line: 170, column: 4, scope: !560)
!560 = distinct !DILexicalBlock(scope: !558, file: !1, line: 169, column: 6)
!561 = !DILocation(line: 172, column: 4, scope: !560)
!562 = !DILocation(line: 177, column: 18, scope: !563)
!563 = distinct !DILexicalBlock(scope: !514, file: !1, line: 177, column: 9)
!564 = !DILocation(line: 179, column: 19, scope: !565)
!565 = distinct !DILexicalBlock(scope: !563, file: !1, line: 178, column: 7)
!566 = !DILocation(line: 179, column: 31, scope: !565)
!567 = !DILocation(line: 179, column: 2, scope: !565)
!568 = !DILocation(line: 180, column: 32, scope: !565)
!569 = !DILocation(line: 180, column: 2, scope: !565)
!570 = !DILocation(line: 181, column: 7, scope: !565)
!571 = !DILocation(line: 182, column: 19, scope: !572)
!572 = distinct !DILexicalBlock(scope: !563, file: !1, line: 182, column: 14)
!573 = !DILocation(line: 182, column: 23, scope: !572)
!574 = !DILocation(line: 184, column: 20, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !1, line: 183, column: 7)
!576 = !DILocation(line: 184, column: 33, scope: !575)
!577 = !DILocation(line: 184, column: 2, scope: !575)
!578 = !DILocation(line: 185, column: 33, scope: !575)
!579 = !DILocation(line: 185, column: 2, scope: !575)
!580 = !DILocation(line: 186, column: 7, scope: !575)
!581 = !DILocation(line: 187, column: 23, scope: !582)
!582 = distinct !DILexicalBlock(scope: !572, file: !1, line: 187, column: 14)
!583 = !DILocation(line: 189, column: 20, scope: !584)
!584 = distinct !DILexicalBlock(scope: !582, file: !1, line: 188, column: 7)
!585 = !DILocation(line: 189, column: 32, scope: !584)
!586 = !DILocation(line: 189, column: 2, scope: !584)
!587 = !DILocation(line: 190, column: 32, scope: !584)
!588 = !DILocation(line: 190, column: 2, scope: !584)
!589 = !DILocation(line: 191, column: 7, scope: !584)
!590 = !DILocation(line: 192, column: 23, scope: !591)
!591 = distinct !DILexicalBlock(scope: !582, file: !1, line: 192, column: 14)
!592 = !DILocation(line: 194, column: 19, scope: !593)
!593 = distinct !DILexicalBlock(scope: !591, file: !1, line: 193, column: 7)
!594 = !DILocation(line: 194, column: 32, scope: !593)
!595 = !DILocation(line: 194, column: 2, scope: !593)
!596 = !DILocation(line: 195, column: 33, scope: !593)
!597 = !DILocation(line: 195, column: 2, scope: !593)
!598 = !DILocation(line: 196, column: 7, scope: !593)
!599 = !DILocation(line: 198, column: 1, scope: !507)
!600 = distinct !DISubprogram(name: "splay_tree_remove", scope: !1, file: !1, line: 347, type: !508, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !601)
!601 = !{!602, !603, !604, !607}
!602 = !DILocalVariable(name: "sp", arg: 1, scope: !600, file: !1, line: 347, type: !13)
!603 = !DILocalVariable(name: "key", arg: 2, scope: !600, file: !1, line: 347, type: !24)
!604 = !DILocalVariable(name: "left", scope: !605, file: !1, line: 353, type: !19)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 352, column: 5)
!606 = distinct !DILexicalBlock(scope: !600, file: !1, line: 351, column: 7)
!607 = !DILocalVariable(name: "right", scope: !605, file: !1, line: 353, type: !19)
!608 = !DILocation(line: 0, scope: !600)
!609 = !DILocation(line: 349, column: 3, scope: !600)
!610 = !DILocation(line: 351, column: 11, scope: !606)
!611 = !DILocation(line: 351, column: 7, scope: !606)
!612 = !DILocation(line: 351, column: 16, scope: !606)
!613 = !DILocation(line: 351, column: 25, scope: !606)
!614 = !DILocation(line: 351, column: 42, scope: !606)
!615 = !DILocation(line: 351, column: 19, scope: !606)
!616 = !DILocation(line: 351, column: 52, scope: !606)
!617 = !DILocation(line: 351, column: 7, scope: !600)
!618 = !DILocation(line: 355, column: 18, scope: !605)
!619 = !DILocation(line: 355, column: 24, scope: !605)
!620 = !DILocation(line: 0, scope: !605)
!621 = !DILocation(line: 356, column: 25, scope: !605)
!622 = !DILocation(line: 359, column: 15, scope: !623)
!623 = distinct !DILexicalBlock(scope: !605, file: !1, line: 359, column: 11)
!624 = !DILocation(line: 359, column: 11, scope: !623)
!625 = !DILocation(line: 359, column: 11, scope: !605)
!626 = !DILocation(line: 360, column: 33, scope: !623)
!627 = !DILocation(line: 360, column: 2, scope: !623)
!628 = !DILocation(line: 361, column: 30, scope: !605)
!629 = !DILocation(line: 361, column: 13, scope: !605)
!630 = !DILocation(line: 361, column: 40, scope: !605)
!631 = !DILocation(line: 361, column: 7, scope: !605)
!632 = !DILocation(line: 365, column: 11, scope: !633)
!633 = distinct !DILexicalBlock(scope: !605, file: !1, line: 365, column: 11)
!634 = !DILocation(line: 365, column: 11, scope: !605)
!635 = !DILocation(line: 367, column: 13, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !1, line: 366, column: 2)
!637 = !DILocation(line: 371, column: 8, scope: !638)
!638 = distinct !DILexicalBlock(scope: !636, file: !1, line: 371, column: 8)
!639 = !DILocation(line: 371, column: 8, scope: !636)
!640 = !DILocation(line: 373, column: 8, scope: !641)
!641 = distinct !DILexicalBlock(scope: !638, file: !1, line: 372, column: 6)
!642 = !DILocation(line: 373, column: 21, scope: !641)
!643 = distinct !{!643, !640, !644}
!644 = !DILocation(line: 374, column: 16, scope: !641)
!645 = !DILocation(line: 375, column: 20, scope: !641)
!646 = !DILocation(line: 376, column: 6, scope: !641)
!647 = !DILocation(line: 379, column: 11, scope: !633)
!648 = !DILocation(line: 381, column: 1, scope: !600)
!649 = distinct !DISubprogram(name: "splay_tree_lookup", scope: !1, file: !1, line: 387, type: !650, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{!19, !13, !24}
!652 = !{!653, !654}
!653 = !DILocalVariable(name: "sp", arg: 1, scope: !649, file: !1, line: 387, type: !13)
!654 = !DILocalVariable(name: "key", arg: 2, scope: !649, file: !1, line: 387, type: !24)
!655 = !DILocation(line: 0, scope: !649)
!656 = !DILocation(line: 389, column: 3, scope: !649)
!657 = !DILocation(line: 391, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !649, file: !1, line: 391, column: 7)
!659 = !DILocation(line: 391, column: 7, scope: !658)
!660 = !DILocation(line: 391, column: 16, scope: !658)
!661 = !DILocation(line: 391, column: 25, scope: !658)
!662 = !DILocation(line: 391, column: 41, scope: !658)
!663 = !DILocation(line: 391, column: 19, scope: !658)
!664 = !DILocation(line: 391, column: 51, scope: !658)
!665 = !DILocation(line: 391, column: 7, scope: !649)
!666 = !DILocation(line: 392, column: 16, scope: !658)
!667 = !DILocation(line: 392, column: 5, scope: !658)
!668 = !DILocation(line: 0, scope: !658)
!669 = !DILocation(line: 395, column: 1, scope: !649)
!670 = distinct !DISubprogram(name: "splay_tree_max", scope: !1, file: !1, line: 400, type: !671, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{!19, !13}
!673 = !{!674, !675}
!674 = !DILocalVariable(name: "sp", arg: 1, scope: !670, file: !1, line: 400, type: !13)
!675 = !DILocalVariable(name: "n", scope: !670, file: !1, line: 402, type: !19)
!676 = !DILocation(line: 0, scope: !670)
!677 = !DILocation(line: 402, column: 27, scope: !670)
!678 = !DILocation(line: 404, column: 8, scope: !679)
!679 = distinct !DILexicalBlock(scope: !670, file: !1, line: 404, column: 7)
!680 = !DILocation(line: 404, column: 7, scope: !670)
!681 = !DILocation(line: 407, column: 3, scope: !670)
!682 = !DILocation(line: 407, column: 13, scope: !670)
!683 = distinct !{!683, !681, !684}
!684 = !DILocation(line: 408, column: 12, scope: !670)
!685 = !DILocation(line: 411, column: 1, scope: !670)
!686 = distinct !DISubprogram(name: "splay_tree_min", scope: !1, file: !1, line: 416, type: !671, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !687)
!687 = !{!688, !689}
!688 = !DILocalVariable(name: "sp", arg: 1, scope: !686, file: !1, line: 416, type: !13)
!689 = !DILocalVariable(name: "n", scope: !686, file: !1, line: 418, type: !19)
!690 = !DILocation(line: 0, scope: !686)
!691 = !DILocation(line: 418, column: 27, scope: !686)
!692 = !DILocation(line: 420, column: 8, scope: !693)
!693 = distinct !DILexicalBlock(scope: !686, file: !1, line: 420, column: 7)
!694 = !DILocation(line: 420, column: 7, scope: !686)
!695 = !DILocation(line: 423, column: 3, scope: !686)
!696 = !DILocation(line: 423, column: 13, scope: !686)
!697 = distinct !{!697, !695, !698}
!698 = !DILocation(line: 424, column: 12, scope: !686)
!699 = !DILocation(line: 427, column: 1, scope: !686)
!700 = distinct !DISubprogram(name: "splay_tree_predecessor", scope: !1, file: !1, line: 433, type: !650, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !701)
!701 = !{!702, !703, !704, !705}
!702 = !DILocalVariable(name: "sp", arg: 1, scope: !700, file: !1, line: 433, type: !13)
!703 = !DILocalVariable(name: "key", arg: 2, scope: !700, file: !1, line: 433, type: !24)
!704 = !DILocalVariable(name: "comparison", scope: !700, file: !1, line: 435, type: !4)
!705 = !DILocalVariable(name: "node", scope: !700, file: !1, line: 436, type: !19)
!706 = !DILocation(line: 0, scope: !700)
!707 = !DILocation(line: 439, column: 12, scope: !708)
!708 = distinct !DILexicalBlock(scope: !700, file: !1, line: 439, column: 7)
!709 = !DILocation(line: 439, column: 8, scope: !708)
!710 = !DILocation(line: 439, column: 7, scope: !700)
!711 = !DILocation(line: 444, column: 3, scope: !700)
!712 = !DILocation(line: 445, column: 22, scope: !700)
!713 = !DILocation(line: 445, column: 32, scope: !700)
!714 = !DILocation(line: 445, column: 38, scope: !700)
!715 = !DILocation(line: 445, column: 16, scope: !700)
!716 = !DILocation(line: 448, column: 18, scope: !717)
!717 = distinct !DILexicalBlock(scope: !700, file: !1, line: 448, column: 7)
!718 = !DILocation(line: 448, column: 7, scope: !700)
!719 = !DILocation(line: 452, column: 20, scope: !700)
!720 = !DILocation(line: 453, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !700, file: !1, line: 453, column: 7)
!722 = !DILocation(line: 453, column: 7, scope: !700)
!723 = !DILocation(line: 454, column: 5, scope: !721)
!724 = !DILocation(line: 454, column: 18, scope: !721)
!725 = distinct !{!725, !723, !726}
!726 = !DILocation(line: 455, column: 20, scope: !721)
!727 = !DILocation(line: 458, column: 1, scope: !700)
!728 = distinct !DISubprogram(name: "splay_tree_successor", scope: !1, file: !1, line: 464, type: !650, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !729)
!729 = !{!730, !731, !732, !733}
!730 = !DILocalVariable(name: "sp", arg: 1, scope: !728, file: !1, line: 464, type: !13)
!731 = !DILocalVariable(name: "key", arg: 2, scope: !728, file: !1, line: 464, type: !24)
!732 = !DILocalVariable(name: "comparison", scope: !728, file: !1, line: 466, type: !4)
!733 = !DILocalVariable(name: "node", scope: !728, file: !1, line: 467, type: !19)
!734 = !DILocation(line: 0, scope: !728)
!735 = !DILocation(line: 470, column: 12, scope: !736)
!736 = distinct !DILexicalBlock(scope: !728, file: !1, line: 470, column: 7)
!737 = !DILocation(line: 470, column: 8, scope: !736)
!738 = !DILocation(line: 470, column: 7, scope: !728)
!739 = !DILocation(line: 475, column: 3, scope: !728)
!740 = !DILocation(line: 476, column: 22, scope: !728)
!741 = !DILocation(line: 476, column: 32, scope: !728)
!742 = !DILocation(line: 476, column: 38, scope: !728)
!743 = !DILocation(line: 476, column: 16, scope: !728)
!744 = !DILocation(line: 479, column: 18, scope: !745)
!745 = distinct !DILexicalBlock(scope: !728, file: !1, line: 479, column: 7)
!746 = !DILocation(line: 479, column: 7, scope: !728)
!747 = !DILocation(line: 483, column: 20, scope: !728)
!748 = !DILocation(line: 484, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !728, file: !1, line: 484, column: 7)
!750 = !DILocation(line: 484, column: 7, scope: !728)
!751 = !DILocation(line: 485, column: 5, scope: !749)
!752 = !DILocation(line: 485, column: 18, scope: !749)
!753 = distinct !{!753, !751, !754}
!754 = !DILocation(line: 486, column: 20, scope: !749)
!755 = !DILocation(line: 489, column: 1, scope: !728)
!756 = distinct !DISubprogram(name: "splay_tree_foreach", scope: !1, file: !1, line: 497, type: !757, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !763)
!757 = !DISubroutineType(types: !758)
!758 = !{!4, !13, !759, !8}
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_foreach_fn", file: !14, line: 81, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!4, !19, !8}
!763 = !{!764, !765, !766}
!764 = !DILocalVariable(name: "sp", arg: 1, scope: !756, file: !1, line: 497, type: !13)
!765 = !DILocalVariable(name: "fn", arg: 2, scope: !756, file: !1, line: 497, type: !759)
!766 = !DILocalVariable(name: "data", arg: 3, scope: !756, file: !1, line: 497, type: !8)
!767 = !DILocation(line: 0, scope: !756)
!768 = !DILocation(line: 499, column: 45, scope: !756)
!769 = !DILocation(line: 499, column: 10, scope: !756)
!770 = !DILocation(line: 499, column: 3, scope: !756)
!771 = distinct !DISubprogram(name: "splay_tree_foreach_helper", scope: !1, file: !1, line: 206, type: !772, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!4, !13, !19, !759, !8}
!774 = !{!775, !776, !777, !778, !779}
!775 = !DILocalVariable(name: "sp", arg: 1, scope: !771, file: !1, line: 206, type: !13)
!776 = !DILocalVariable(name: "node", arg: 2, scope: !771, file: !1, line: 206, type: !19)
!777 = !DILocalVariable(name: "fn", arg: 3, scope: !771, file: !1, line: 207, type: !759)
!778 = !DILocalVariable(name: "data", arg: 4, scope: !771, file: !1, line: 207, type: !8)
!779 = !DILocalVariable(name: "val", scope: !771, file: !1, line: 209, type: !4)
!780 = !DILocation(line: 222, column: 10, scope: !771)
!781 = !DILocation(line: 0, scope: !771)
!782 = !DILocation(line: 211, column: 8, scope: !783)
!783 = distinct !DILexicalBlock(scope: !771, file: !1, line: 211, column: 7)
!784 = !DILocation(line: 211, column: 7, scope: !771)
!785 = !DILocation(line: 214, column: 46, scope: !771)
!786 = !DILocation(line: 214, column: 9, scope: !771)
!787 = !DILocation(line: 215, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !771, file: !1, line: 215, column: 7)
!789 = !DILocation(line: 215, column: 7, scope: !771)
!790 = !DILocation(line: 218, column: 9, scope: !771)
!791 = !DILocation(line: 219, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !771, file: !1, line: 219, column: 7)
!793 = !DILocation(line: 219, column: 7, scope: !771)
!794 = !DILocation(line: 222, column: 47, scope: !771)
!795 = !DILocation(line: 223, column: 1, scope: !771)
!796 = distinct !DISubprogram(name: "splay_tree_compare_ints", scope: !1, file: !1, line: 505, type: !34, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !797)
!797 = !{!798, !799}
!798 = !DILocalVariable(name: "k1", arg: 1, scope: !796, file: !1, line: 505, type: !24)
!799 = !DILocalVariable(name: "k2", arg: 2, scope: !796, file: !1, line: 505, type: !24)
!800 = !DILocation(line: 0, scope: !796)
!801 = !DILocation(line: 507, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !796, file: !1, line: 507, column: 7)
!803 = !DILocation(line: 507, column: 18, scope: !802)
!804 = !DILocation(line: 507, column: 16, scope: !802)
!805 = !DILocation(line: 507, column: 7, scope: !796)
!806 = !DILocation(line: 513, column: 1, scope: !796)
!807 = distinct !DISubprogram(name: "splay_tree_compare_pointers", scope: !1, file: !1, line: 518, type: !34, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !808)
!808 = !{!809, !810}
!809 = !DILocalVariable(name: "k1", arg: 1, scope: !807, file: !1, line: 518, type: !24)
!810 = !DILocalVariable(name: "k2", arg: 2, scope: !807, file: !1, line: 518, type: !24)
!811 = !DILocation(line: 0, scope: !807)
!812 = !DILocation(line: 520, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !807, file: !1, line: 520, column: 7)
!814 = !DILocation(line: 520, column: 20, scope: !813)
!815 = !DILocation(line: 520, column: 18, scope: !813)
!816 = !DILocation(line: 520, column: 7, scope: !807)
!817 = !DILocation(line: 526, column: 1, scope: !807)
!818 = distinct !DISubprogram(name: "rotate_left", scope: !1, file: !1, line: 113, type: !819, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !822)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !821, !19, !19}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!822 = !{!823, !824, !825, !826}
!823 = !DILocalVariable(name: "pp", arg: 1, scope: !818, file: !1, line: 113, type: !821)
!824 = !DILocalVariable(name: "p", arg: 2, scope: !818, file: !1, line: 113, type: !19)
!825 = !DILocalVariable(name: "n", arg: 3, scope: !818, file: !1, line: 113, type: !19)
!826 = !DILocalVariable(name: "tmp", scope: !818, file: !1, line: 115, type: !19)
!827 = !DILocation(line: 0, scope: !818)
!828 = !DILocation(line: 116, column: 12, scope: !818)
!829 = !DILocation(line: 117, column: 12, scope: !818)
!830 = !DILocation(line: 118, column: 6, scope: !818)
!831 = !DILocation(line: 118, column: 11, scope: !818)
!832 = !DILocation(line: 119, column: 7, scope: !818)
!833 = !DILocation(line: 120, column: 1, scope: !818)
!834 = distinct !DISubprogram(name: "rotate_right", scope: !1, file: !1, line: 126, type: !819, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !835)
!835 = !{!836, !837, !838, !839}
!836 = !DILocalVariable(name: "pp", arg: 1, scope: !834, file: !1, line: 126, type: !821)
!837 = !DILocalVariable(name: "p", arg: 2, scope: !834, file: !1, line: 126, type: !19)
!838 = !DILocalVariable(name: "n", arg: 3, scope: !834, file: !1, line: 126, type: !19)
!839 = !DILocalVariable(name: "tmp", scope: !834, file: !1, line: 128, type: !19)
!840 = !DILocation(line: 0, scope: !834)
!841 = !DILocation(line: 129, column: 12, scope: !834)
!842 = !DILocation(line: 130, column: 11, scope: !834)
!843 = !DILocation(line: 131, column: 6, scope: !834)
!844 = !DILocation(line: 131, column: 12, scope: !834)
!845 = !DILocation(line: 132, column: 7, scope: !834)
!846 = !DILocation(line: 133, column: 1, scope: !834)
