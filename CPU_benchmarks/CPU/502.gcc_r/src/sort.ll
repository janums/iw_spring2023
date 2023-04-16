; ModuleID = 'sort.bc'
source_filename = "sort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !60, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !61, metadata !DIExpression()), !dbg !62
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !63
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !64
  ret i32 %call, !dbg !65
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !66 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !69
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !70
  ret i32 %call, !dbg !71
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !72 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !132, metadata !DIExpression()), !dbg !133
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !134
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !134
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !134
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !134
  %cmp = icmp uge i8* %0, %1, !dbg !134
  %conv1 = zext i1 %cmp to i64, !dbg !134
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !134
  %tobool = icmp eq i64 %expval, 0, !dbg !134
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !134

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !134
  br label %cond.end, !dbg !134

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !134
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !134
  %2 = load i8, i8* %0, align 1, !dbg !134
  %conv3 = zext i8 %2 to i32, !dbg !134
  br label %cond.end, !dbg !134

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !134
  ret i32 %cond, !dbg !135
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !136 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !138, metadata !DIExpression()), !dbg !139
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !140
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !140
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !140
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !140
  %cmp = icmp uge i8* %0, %1, !dbg !140
  %conv1 = zext i1 %cmp to i64, !dbg !140
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !140
  %tobool = icmp eq i64 %expval, 0, !dbg !140
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !140

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !140
  br label %cond.end, !dbg !140

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !140
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !140
  %2 = load i8, i8* %0, align 1, !dbg !140
  %conv3 = zext i8 %2 to i32, !dbg !140
  br label %cond.end, !dbg !140

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !140
  ret i32 %cond, !dbg !141
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !142 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !143
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !143
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !143
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !143
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !143
  %cmp = icmp uge i8* %1, %2, !dbg !143
  %conv1 = zext i1 %cmp to i64, !dbg !143
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !143
  %tobool = icmp eq i64 %expval, 0, !dbg !143
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !143

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !143
  br label %cond.end, !dbg !143

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !143
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !143
  %3 = load i8, i8* %1, align 1, !dbg !143
  %conv3 = zext i8 %3 to i32, !dbg !143
  br label %cond.end, !dbg !143

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !143
  ret i32 %cond, !dbg !144
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !145 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !151
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !152
  ret i32 %call, !dbg !153
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !154 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !158, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !159, metadata !DIExpression()), !dbg !160
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !161
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !161
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !161
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !161
  %cmp = icmp uge i8* %0, %1, !dbg !161
  %conv1 = zext i1 %cmp to i64, !dbg !161
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !161
  %tobool = icmp eq i64 %expval, 0, !dbg !161
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !161

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !161
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !161
  br label %cond.end, !dbg !161

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !161
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !161
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !161
  store i8 %conv2, i8* %0, align 1, !dbg !161
  %conv6 = and i32 %__c, 255, !dbg !161
  br label %cond.end, !dbg !161

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !161
  ret i32 %cond, !dbg !162
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !163 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !165, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !166, metadata !DIExpression()), !dbg !167
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !168
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !168
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !168
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !168
  %cmp = icmp uge i8* %0, %1, !dbg !168
  %conv1 = zext i1 %cmp to i64, !dbg !168
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !168
  %tobool = icmp eq i64 %expval, 0, !dbg !168
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !168

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !168
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !168
  br label %cond.end, !dbg !168

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !168
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !168
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !168
  store i8 %conv2, i8* %0, align 1, !dbg !168
  %conv6 = and i32 %__c, 255, !dbg !168
  br label %cond.end, !dbg !168

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !168
  ret i32 %cond, !dbg !169
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !170 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !174
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !174
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !174
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !174
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !174
  %cmp = icmp uge i8* %1, %2, !dbg !174
  %conv1 = zext i1 %cmp to i64, !dbg !174
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !174
  %tobool = icmp eq i64 %expval, 0, !dbg !174
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !174

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !174
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !174
  br label %cond.end, !dbg !174

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !174
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !174
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !174
  store i8 %conv4, i8* %1, align 1, !dbg !174
  %conv6 = and i32 %__c, 255, !dbg !174
  br label %cond.end, !dbg !174

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !174
  ret i32 %cond, !dbg !175
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !176 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !182, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64* %__n, metadata !183, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !184, metadata !DIExpression()), !dbg !185
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !186
  ret i64 %call, !dbg !187
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !188 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !190, metadata !DIExpression()), !dbg !191
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !192
  %0 = load i32, i32* %_flags, align 8, !dbg !192
  %and = lshr i32 %0, 4, !dbg !192
  %and.lobit = and i32 %and, 1, !dbg !192
  ret i32 %and.lobit, !dbg !193
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !194 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !196, metadata !DIExpression()), !dbg !197
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !198
  %0 = load i32, i32* %_flags, align 8, !dbg !198
  %and = lshr i32 %0, 5, !dbg !198
  %and.lobit = and i32 %and, 1, !dbg !198
  ret i32 %and.lobit, !dbg !199
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !200 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !205, metadata !DIExpression()), !dbg !206
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !207
  %conv = trunc i64 %call to i32, !dbg !208
  ret i32 %conv, !dbg !209
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !210 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !214, metadata !DIExpression()), !dbg !215
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !216
  ret i64 %call, !dbg !217
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !218 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !223, metadata !DIExpression()), !dbg !224
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !225
  ret i64 %call, !dbg !226
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !238, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %__base, metadata !239, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !240, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 %__size, metadata !241, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !242, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 0, metadata !243, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !244, metadata !DIExpression()), !dbg !248
  br label %while.cond, !dbg !249

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !250
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !248
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !244, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !243, metadata !DIExpression()), !dbg !248
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !251
  br i1 %cmp, label %while.body, label %cleanup, !dbg !249

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !252
  %div = lshr i64 %add, 1, !dbg !254
  call void @llvm.dbg.value(metadata i64 %div, metadata !245, metadata !DIExpression()), !dbg !248
  %mul = mul i64 %div, %__size, !dbg !255
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !256
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !246, metadata !DIExpression()), !dbg !248
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !257
  call void @llvm.dbg.value(metadata i32 %call, metadata !247, metadata !DIExpression()), !dbg !248
  %cmp1 = icmp slt i32 %call, 0, !dbg !258
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !260

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !261
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !263

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !264
  call void @llvm.dbg.value(metadata i64 %add4, metadata !243, metadata !DIExpression()), !dbg !248
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !248
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !248
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !244, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !243, metadata !DIExpression()), !dbg !248
  br label %while.cond, !dbg !249, !llvm.loop !265

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !248
  ret i8* %retval.0, !dbg !267
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !268 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !274, metadata !DIExpression()), !dbg !275
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !276
  ret double %call, !dbg !277
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sort_pointers(i64 %n, i8** %pointers, i8** %work) local_unnamed_addr #5 !dbg !15 {
entry:
  %count = alloca [256 x i32], align 16
  %j = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %n, metadata !23, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8** %pointers, metadata !24, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8** %work, metadata !25, metadata !DIExpression()), !dbg !278
  %0 = bitcast [256 x i32]* %count to i8*, !dbg !279
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #7, !dbg !279
  call void @llvm.dbg.declare(metadata [256 x i32]* %count, metadata !26, metadata !DIExpression()), !dbg !280
  %1 = bitcast i64* %j to i8*, !dbg !281
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !281
  call void @llvm.dbg.value(metadata i64 0, metadata !32, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i64 0, metadata !33, metadata !DIExpression()), !dbg !278
  store i64 0, i64* %j, align 8, !dbg !282
  br label %for.end, !dbg !284

for.end:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 undef, metadata !32, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i32 undef, metadata !33, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i32 undef, metadata !33, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shl, DW_OP_stack_value)), !dbg !278
  store i64 283686952306183, i64* %j, align 8, !dbg !285
  call void @llvm.dbg.value(metadata i1 false, metadata !31, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i64 0, metadata !32, metadata !DIExpression()), !dbg !278
  %add.ptr19 = getelementptr inbounds [256 x i32], [256 x i32]* %count, i64 0, i64 1, !dbg !288
  %add.ptr22 = getelementptr inbounds [256 x i32], [256 x i32]* %count, i64 0, i64 256, !dbg !290
  br i1 false, label %for.end.split.us, label %for.end.for.end.split_crit_edge, !dbg !292

for.end.for.end.split_crit_edge:                  ; preds = %for.end
  br label %for.cond3, !dbg !292

for.end.split.us:                                 ; preds = %for.end
  br label %for.cond3.us, !dbg !292

for.cond3.us:                                     ; preds = %for.inc44.us, %for.end.split.us
  br i1 false, label %for.body6.us, label %for.end46.us-lcssa.us, !dbg !293

for.body6.us:                                     ; preds = %for.cond3.us
  br label %for.cond9.us, !dbg !294

for.cond9.us:                                     ; preds = %for.body12.us, %for.body6.us
  br i1 false, label %for.body12.us, label %for.end17.us, !dbg !296

for.end17.us:                                     ; preds = %for.cond9.us
  br label %for.cond20.us, !dbg !297

for.cond20.us:                                    ; preds = %for.body25.us, %for.end17.us
  br i1 false, label %for.body25.us, label %for.end29.us, !dbg !298

for.end29.us:                                     ; preds = %for.cond20.us
  br label %for.cond32.us, !dbg !299

for.cond32.us:                                    ; preds = %for.body35.us, %for.end29.us
  br i1 true, label %for.inc44.us, label %for.body35.us, !dbg !301

for.body35.us:                                    ; preds = %for.cond32.us
  br label %for.cond32.us, !dbg !302, !llvm.loop !304

for.inc44.us:                                     ; preds = %for.cond32.us
  br label %for.cond3.us, !dbg !306, !llvm.loop !307

for.body25.us:                                    ; preds = %for.cond20.us
  br label %for.cond20.us, !dbg !309, !llvm.loop !310

for.body12.us:                                    ; preds = %for.cond9.us
  br label %for.cond9.us, !dbg !312, !llvm.loop !314

for.end46.us-lcssa.us:                            ; preds = %for.cond3.us
  br label %for.end46, !dbg !316

for.cond3:                                        ; preds = %for.inc44, %for.end.for.end.split_crit_edge
  %i.1 = phi i64 [ 0, %for.end.for.end.split_crit_edge ], [ %inc45, %for.inc44 ], !dbg !317
  %work.addr.0 = phi i8** [ %work, %for.end.for.end.split_crit_edge ], [ %pointers.addr.0, %for.inc44 ]
  %pointers.addr.0 = phi i8** [ %pointers, %for.end.for.end.split_crit_edge ], [ %work.addr.0, %for.inc44 ]
  call void @llvm.dbg.value(metadata i8** %pointers.addr.0, metadata !24, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8** %work.addr.0, metadata !25, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !32, metadata !DIExpression()), !dbg !278
  %exitcond2 = icmp eq i64 %i.1, 8, !dbg !318
  br i1 %exitcond2, label %for.end46.us-lcssa, label %for.body6, !dbg !293

for.body6:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !33, metadata !DIExpression()), !dbg !278
  store i64 %i.1, i64* %j, align 8, !dbg !319
  %call = call i8* @memset(i8* nonnull %0, i32 0, i64 1024) #6, !dbg !321
  %2 = bitcast i8** %pointers.addr.0 to i8*, !dbg !322
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !33, metadata !DIExpression()), !dbg !278
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %i.1, !dbg !323
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !38, metadata !DIExpression()), !dbg !324
  %add.ptr7 = getelementptr inbounds i8*, i8** %pointers.addr.0, i64 %n, !dbg !325
  %3 = bitcast i8** %add.ptr7 to i8*, !dbg !326
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !33, metadata !DIExpression()), !dbg !278
  %add.ptr8 = getelementptr inbounds i8, i8* %3, i64 %i.1, !dbg !327
  call void @llvm.dbg.value(metadata i8* %add.ptr8, metadata !39, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !34, metadata !DIExpression()), !dbg !324
  br label %for.cond9, !dbg !294

for.cond9:                                        ; preds = %for.body12, %for.body6
  %digit.0 = phi i8* [ %add.ptr, %for.body6 ], [ %add.ptr16, %for.body12 ], !dbg !328
  call void @llvm.dbg.value(metadata i8* %digit.0, metadata !34, metadata !DIExpression()), !dbg !324
  %cmp10 = icmp ult i8* %digit.0, %add.ptr8, !dbg !329
  br i1 %cmp10, label %for.body12, label %for.end17, !dbg !296

for.body12:                                       ; preds = %for.cond9
  %4 = load i8, i8* %digit.0, align 1, !dbg !330
  %idxprom = zext i8 %4 to i64, !dbg !331
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* %count, i64 0, i64 %idxprom, !dbg !331
  %5 = load i32, i32* %arrayidx13, align 4, !dbg !332
  %inc14 = add i32 %5, 1, !dbg !332
  store i32 %inc14, i32* %arrayidx13, align 4, !dbg !332
  %add.ptr16 = getelementptr inbounds i8, i8* %digit.0, i64 8, !dbg !333
  call void @llvm.dbg.value(metadata i8* %add.ptr16, metadata !34, metadata !DIExpression()), !dbg !324
  br label %for.cond9, !dbg !312, !llvm.loop !314

for.end17:                                        ; preds = %for.cond9
  call void @llvm.dbg.value(metadata i32* %add.ptr19, metadata !40, metadata !DIExpression()), !dbg !324
  br label %for.cond20, !dbg !297

for.cond20:                                       ; preds = %for.body25, %for.end17
  %countp.0 = phi i32* [ %add.ptr19, %for.end17 ], [ %incdec.ptr, %for.body25 ], !dbg !288
  call void @llvm.dbg.value(metadata i32* %countp.0, metadata !40, metadata !DIExpression()), !dbg !324
  %cmp23 = icmp ult i32* %countp.0, %add.ptr22, !dbg !334
  br i1 %cmp23, label %for.body25, label %for.end29, !dbg !298

for.body25:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds i32, i32* %countp.0, i64 -1, !dbg !335
  %6 = load i32, i32* %arrayidx26, align 4, !dbg !335
  %7 = load i32, i32* %countp.0, align 4, !dbg !336
  %add27 = add i32 %7, %6, !dbg !336
  store i32 %add27, i32* %countp.0, align 4, !dbg !336
  %incdec.ptr = getelementptr inbounds i32, i32* %countp.0, i64 1, !dbg !337
  call void @llvm.dbg.value(metadata i32* %incdec.ptr, metadata !40, metadata !DIExpression()), !dbg !324
  br label %for.cond20, !dbg !309, !llvm.loop !310

for.end29:                                        ; preds = %for.cond20
  call void @llvm.dbg.value(metadata i8** %add.ptr7, metadata !42, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !324
  br label %for.cond32, !dbg !299

for.cond32:                                       ; preds = %for.body35, %for.end29
  %add.ptr30.pn = phi i8** [ %add.ptr7, %for.end29 ], [ %pointerp.0, %for.body35 ]
  %pointerp.0 = getelementptr inbounds i8*, i8** %add.ptr30.pn, i64 -1, !dbg !338
  call void @llvm.dbg.value(metadata i8** %pointerp.0, metadata !42, metadata !DIExpression()), !dbg !324
  %cmp33 = icmp ult i8** %pointerp.0, %pointers.addr.0, !dbg !339
  br i1 %cmp33, label %for.inc44, label %for.body35, !dbg !301

for.body35:                                       ; preds = %for.cond32
  %8 = bitcast i8** %pointerp.0 to i64*, !dbg !340
  %9 = load i64, i64* %8, align 8, !dbg !340
  %10 = bitcast i8** %pointerp.0 to i8*, !dbg !341
  %11 = load i64, i64* %j, align 8, !dbg !342
  call void @llvm.dbg.value(metadata i64 %11, metadata !33, metadata !DIExpression()), !dbg !278
  %arrayidx36 = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !341
  %12 = load i8, i8* %arrayidx36, align 1, !dbg !341
  %idxprom37 = zext i8 %12 to i64, !dbg !343
  %arrayidx38 = getelementptr inbounds [256 x i32], [256 x i32]* %count, i64 0, i64 %idxprom37, !dbg !343
  %13 = load i32, i32* %arrayidx38, align 4, !dbg !344
  %dec = add i32 %13, -1, !dbg !344
  store i32 %dec, i32* %arrayidx38, align 4, !dbg !344
  %idxprom39 = zext i32 %dec to i64, !dbg !345
  %arrayidx40 = getelementptr inbounds i8*, i8** %work.addr.0, i64 %idxprom39, !dbg !345
  %14 = bitcast i8** %arrayidx40 to i64*, !dbg !346
  store i64 %9, i64* %14, align 8, !dbg !346
  call void @llvm.dbg.value(metadata i8** %pointerp.0, metadata !42, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !324
  br label %for.cond32, !dbg !302, !llvm.loop !304

for.inc44:                                        ; preds = %for.cond32
  call void @llvm.dbg.value(metadata i8** %pointers.addr.0, metadata !42, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i8** %work.addr.0, metadata !24, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8** %pointers.addr.0, metadata !25, metadata !DIExpression()), !dbg !278
  %inc45 = add nuw nsw i64 %i.1, 1, !dbg !347
  call void @llvm.dbg.value(metadata i64 %inc45, metadata !32, metadata !DIExpression()), !dbg !278
  br label %for.cond3, !dbg !306, !llvm.loop !307

for.end46.us-lcssa:                               ; preds = %for.cond3
  br label %for.end46, !dbg !316

for.end46:                                        ; preds = %for.end46.us-lcssa.us, %for.end46.us-lcssa
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !316
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #7, !dbg !316
  ret void, !dbg !316
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "sort.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !6, !7, !10, !11, !8, !13}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit_t", scope: !15, file: !1, line: 52, baseType: !5)
!15 = distinct !DISubprogram(name: "sort_pointers", scope: !1, file: !1, line: 47, type: !16, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !21, !21}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!22 = !{!23, !24, !25, !26, !31, !32, !33, !34, !38, !39, !40, !42}
!23 = !DILocalVariable(name: "n", arg: 1, scope: !15, file: !1, line: 47, type: !18)
!24 = !DILocalVariable(name: "pointers", arg: 2, scope: !15, file: !1, line: 47, type: !21)
!25 = !DILocalVariable(name: "work", arg: 3, scope: !15, file: !1, line: 47, type: !21)
!26 = !DILocalVariable(name: "count", scope: !15, file: !1, line: 59, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8192, elements: !29)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30}
!30 = !DISubrange(count: 256)
!31 = !DILocalVariable(name: "big_endian_p", scope: !15, file: !1, line: 61, type: !6)
!32 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 62, type: !18)
!33 = !DILocalVariable(name: "j", scope: !15, file: !1, line: 63, type: !18)
!34 = !DILocalVariable(name: "digit", scope: !35, file: !1, line: 85, type: !13)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 84, column: 5)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 83, column: 3)
!37 = distinct !DILexicalBlock(scope: !15, file: !1, line: 83, column: 3)
!38 = !DILocalVariable(name: "bias", scope: !35, file: !1, line: 86, type: !13)
!39 = !DILocalVariable(name: "top", scope: !35, file: !1, line: 87, type: !13)
!40 = !DILocalVariable(name: "countp", scope: !35, file: !1, line: 88, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!42 = !DILocalVariable(name: "pointerp", scope: !35, file: !1, line: 89, type: !21)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!47 = distinct !DISubprogram(name: "vprintf", scope: !48, file: !48, line: 39, type: !49, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!49 = !DISubroutineType(types: !50)
!50 = !{!6, !51, !52}
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !53, file: !1, baseType: !28, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !53, file: !1, baseType: !28, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !53, file: !1, baseType: !10, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !53, file: !1, baseType: !10, size: 64, offset: 128)
!59 = !{!60, !61}
!60 = !DILocalVariable(name: "__fmt", arg: 1, scope: !47, file: !48, line: 39, type: !51)
!61 = !DILocalVariable(name: "__arg", arg: 2, scope: !47, file: !48, line: 39, type: !52)
!62 = !DILocation(line: 0, scope: !47)
!63 = !DILocation(line: 41, column: 20, scope: !47)
!64 = !DILocation(line: 41, column: 10, scope: !47)
!65 = !DILocation(line: 41, column: 3, scope: !47)
!66 = distinct !DISubprogram(name: "getchar", scope: !48, file: !48, line: 47, type: !67, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!67 = !DISubroutineType(types: !68)
!68 = !{!6}
!69 = !DILocation(line: 49, column: 16, scope: !66)
!70 = !DILocation(line: 49, column: 10, scope: !66)
!71 = !DILocation(line: 49, column: 3, scope: !66)
!72 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !48, file: !48, line: 56, type: !73, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!73 = !DISubroutineType(types: !74)
!74 = !{!6, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !77, line: 7, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !79, line: 49, size: 1728, elements: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !96, !98, !99, !100, !104, !106, !108, !112, !115, !117, !120, !123, !124, !125, !126, !127}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !78, file: !79, line: 51, baseType: !6, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !78, file: !79, line: 54, baseType: !8, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !78, file: !79, line: 55, baseType: !8, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !78, file: !79, line: 56, baseType: !8, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !78, file: !79, line: 57, baseType: !8, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !78, file: !79, line: 58, baseType: !8, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !78, file: !79, line: 59, baseType: !8, size: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !78, file: !79, line: 60, baseType: !8, size: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !78, file: !79, line: 61, baseType: !8, size: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !78, file: !79, line: 64, baseType: !8, size: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !78, file: !79, line: 65, baseType: !8, size: 64, offset: 640)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !78, file: !79, line: 66, baseType: !8, size: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !78, file: !79, line: 68, baseType: !94, size: 64, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !79, line: 36, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !78, file: !79, line: 70, baseType: !97, size: 64, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !78, file: !79, line: 72, baseType: !6, size: 32, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !78, file: !79, line: 73, baseType: !6, size: 32, offset: 928)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !78, file: !79, line: 74, baseType: !101, size: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !102, line: 152, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !78, file: !79, line: 77, baseType: !105, size: 16, offset: 1024)
!105 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !78, file: !79, line: 78, baseType: !107, size: 8, offset: 1040)
!107 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !78, file: !79, line: 79, baseType: !109, size: 8, offset: 1048)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 1)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !78, file: !79, line: 81, baseType: !113, size: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !79, line: 43, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !78, file: !79, line: 89, baseType: !116, size: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !102, line: 153, baseType: !103)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !78, file: !79, line: 91, baseType: !118, size: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !79, line: 37, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !78, file: !79, line: 92, baseType: !121, size: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !79, line: 38, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !78, file: !79, line: 93, baseType: !97, size: 64, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !78, file: !79, line: 94, baseType: !10, size: 64, offset: 1408)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !78, file: !79, line: 95, baseType: !18, size: 64, offset: 1472)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !78, file: !79, line: 96, baseType: !6, size: 32, offset: 1536)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !78, file: !79, line: 98, baseType: !128, size: 160, offset: 1568)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 20)
!131 = !{!132}
!132 = !DILocalVariable(name: "__fp", arg: 1, scope: !72, file: !48, line: 56, type: !75)
!133 = !DILocation(line: 0, scope: !72)
!134 = !DILocation(line: 58, column: 10, scope: !72)
!135 = !DILocation(line: 58, column: 3, scope: !72)
!136 = distinct !DISubprogram(name: "getc_unlocked", scope: !48, file: !48, line: 66, type: !73, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138}
!138 = !DILocalVariable(name: "__fp", arg: 1, scope: !136, file: !48, line: 66, type: !75)
!139 = !DILocation(line: 0, scope: !136)
!140 = !DILocation(line: 68, column: 10, scope: !136)
!141 = !DILocation(line: 68, column: 3, scope: !136)
!142 = distinct !DISubprogram(name: "getchar_unlocked", scope: !48, file: !48, line: 73, type: !67, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!143 = !DILocation(line: 75, column: 10, scope: !142)
!144 = !DILocation(line: 75, column: 3, scope: !142)
!145 = distinct !DISubprogram(name: "putchar", scope: !48, file: !48, line: 82, type: !146, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!146 = !DISubroutineType(types: !147)
!147 = !{!6, !6}
!148 = !{!149}
!149 = !DILocalVariable(name: "__c", arg: 1, scope: !145, file: !48, line: 82, type: !6)
!150 = !DILocation(line: 0, scope: !145)
!151 = !DILocation(line: 84, column: 21, scope: !145)
!152 = !DILocation(line: 84, column: 10, scope: !145)
!153 = !DILocation(line: 84, column: 3, scope: !145)
!154 = distinct !DISubprogram(name: "fputc_unlocked", scope: !48, file: !48, line: 91, type: !155, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{!6, !6, !75}
!157 = !{!158, !159}
!158 = !DILocalVariable(name: "__c", arg: 1, scope: !154, file: !48, line: 91, type: !6)
!159 = !DILocalVariable(name: "__stream", arg: 2, scope: !154, file: !48, line: 91, type: !75)
!160 = !DILocation(line: 0, scope: !154)
!161 = !DILocation(line: 93, column: 10, scope: !154)
!162 = !DILocation(line: 93, column: 3, scope: !154)
!163 = distinct !DISubprogram(name: "putc_unlocked", scope: !48, file: !48, line: 101, type: !155, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!164 = !{!165, !166}
!165 = !DILocalVariable(name: "__c", arg: 1, scope: !163, file: !48, line: 101, type: !6)
!166 = !DILocalVariable(name: "__stream", arg: 2, scope: !163, file: !48, line: 101, type: !75)
!167 = !DILocation(line: 0, scope: !163)
!168 = !DILocation(line: 103, column: 10, scope: !163)
!169 = !DILocation(line: 103, column: 3, scope: !163)
!170 = distinct !DISubprogram(name: "putchar_unlocked", scope: !48, file: !48, line: 108, type: !146, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !171)
!171 = !{!172}
!172 = !DILocalVariable(name: "__c", arg: 1, scope: !170, file: !48, line: 108, type: !6)
!173 = !DILocation(line: 0, scope: !170)
!174 = !DILocation(line: 110, column: 10, scope: !170)
!175 = !DILocation(line: 110, column: 3, scope: !170)
!176 = distinct !DISubprogram(name: "getline", scope: !48, file: !48, line: 118, type: !177, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !181)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !7, !180, !75}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !102, line: 193, baseType: !103)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!181 = !{!182, !183, !184}
!182 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !176, file: !48, line: 118, type: !7)
!183 = !DILocalVariable(name: "__n", arg: 2, scope: !176, file: !48, line: 118, type: !180)
!184 = !DILocalVariable(name: "__stream", arg: 3, scope: !176, file: !48, line: 118, type: !75)
!185 = !DILocation(line: 0, scope: !176)
!186 = !DILocation(line: 120, column: 10, scope: !176)
!187 = !DILocation(line: 120, column: 3, scope: !176)
!188 = distinct !DISubprogram(name: "feof_unlocked", scope: !48, file: !48, line: 128, type: !73, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !189)
!189 = !{!190}
!190 = !DILocalVariable(name: "__stream", arg: 1, scope: !188, file: !48, line: 128, type: !75)
!191 = !DILocation(line: 0, scope: !188)
!192 = !DILocation(line: 130, column: 10, scope: !188)
!193 = !DILocation(line: 130, column: 3, scope: !188)
!194 = distinct !DISubprogram(name: "ferror_unlocked", scope: !48, file: !48, line: 135, type: !73, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !195)
!195 = !{!196}
!196 = !DILocalVariable(name: "__stream", arg: 1, scope: !194, file: !48, line: 135, type: !75)
!197 = !DILocation(line: 0, scope: !194)
!198 = !DILocation(line: 137, column: 10, scope: !194)
!199 = !DILocation(line: 137, column: 3, scope: !194)
!200 = distinct !DISubprogram(name: "atoi", scope: !201, file: !201, line: 361, type: !202, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !204)
!201 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!202 = !DISubroutineType(types: !203)
!203 = !{!6, !11}
!204 = !{!205}
!205 = !DILocalVariable(name: "__nptr", arg: 1, scope: !200, file: !201, line: 361, type: !11)
!206 = !DILocation(line: 0, scope: !200)
!207 = !DILocation(line: 363, column: 16, scope: !200)
!208 = !DILocation(line: 363, column: 10, scope: !200)
!209 = !DILocation(line: 363, column: 3, scope: !200)
!210 = distinct !DISubprogram(name: "atol", scope: !201, file: !201, line: 366, type: !211, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{!103, !11}
!213 = !{!214}
!214 = !DILocalVariable(name: "__nptr", arg: 1, scope: !210, file: !201, line: 366, type: !11)
!215 = !DILocation(line: 0, scope: !210)
!216 = !DILocation(line: 368, column: 10, scope: !210)
!217 = !DILocation(line: 368, column: 3, scope: !210)
!218 = distinct !DISubprogram(name: "atoll", scope: !201, file: !201, line: 373, type: !219, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !222)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !11}
!221 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!222 = !{!223}
!223 = !DILocalVariable(name: "__nptr", arg: 1, scope: !218, file: !201, line: 373, type: !11)
!224 = !DILocation(line: 0, scope: !218)
!225 = !DILocation(line: 375, column: 10, scope: !218)
!226 = !DILocation(line: 375, column: 3, scope: !218)
!227 = distinct !DISubprogram(name: "bsearch", scope: !228, file: !228, line: 20, type: !229, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!228 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!229 = !DISubroutineType(types: !230)
!230 = !{!10, !231, !231, !18, !18, !233}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !201, line: 808, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!6, !231, !231}
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!238 = !DILocalVariable(name: "__key", arg: 1, scope: !227, file: !228, line: 20, type: !231)
!239 = !DILocalVariable(name: "__base", arg: 2, scope: !227, file: !228, line: 20, type: !231)
!240 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !227, file: !228, line: 20, type: !18)
!241 = !DILocalVariable(name: "__size", arg: 4, scope: !227, file: !228, line: 20, type: !18)
!242 = !DILocalVariable(name: "__compar", arg: 5, scope: !227, file: !228, line: 21, type: !233)
!243 = !DILocalVariable(name: "__l", scope: !227, file: !228, line: 23, type: !18)
!244 = !DILocalVariable(name: "__u", scope: !227, file: !228, line: 23, type: !18)
!245 = !DILocalVariable(name: "__idx", scope: !227, file: !228, line: 23, type: !18)
!246 = !DILocalVariable(name: "__p", scope: !227, file: !228, line: 24, type: !231)
!247 = !DILocalVariable(name: "__comparison", scope: !227, file: !228, line: 25, type: !6)
!248 = !DILocation(line: 0, scope: !227)
!249 = !DILocation(line: 29, column: 3, scope: !227)
!250 = !DILocation(line: 27, column: 7, scope: !227)
!251 = !DILocation(line: 29, column: 14, scope: !227)
!252 = !DILocation(line: 31, column: 20, scope: !253)
!253 = distinct !DILexicalBlock(scope: !227, file: !228, line: 30, column: 5)
!254 = !DILocation(line: 31, column: 27, scope: !253)
!255 = !DILocation(line: 32, column: 56, scope: !253)
!256 = !DILocation(line: 32, column: 47, scope: !253)
!257 = !DILocation(line: 33, column: 22, scope: !253)
!258 = !DILocation(line: 34, column: 24, scope: !259)
!259 = distinct !DILexicalBlock(scope: !253, file: !228, line: 34, column: 11)
!260 = !DILocation(line: 34, column: 11, scope: !253)
!261 = !DILocation(line: 36, column: 29, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !228, line: 36, column: 16)
!263 = !DILocation(line: 36, column: 16, scope: !259)
!264 = !DILocation(line: 37, column: 14, scope: !262)
!265 = distinct !{!265, !249, !266}
!266 = !DILocation(line: 40, column: 5, scope: !227)
!267 = !DILocation(line: 43, column: 1, scope: !227)
!268 = distinct !DISubprogram(name: "atof", scope: !269, file: !269, line: 25, type: !270, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !11}
!272 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!273 = !{!274}
!274 = !DILocalVariable(name: "__nptr", arg: 1, scope: !268, file: !269, line: 25, type: !11)
!275 = !DILocation(line: 0, scope: !268)
!276 = !DILocation(line: 27, column: 10, scope: !268)
!277 = !DILocation(line: 27, column: 3, scope: !268)
!278 = !DILocation(line: 0, scope: !15)
!279 = !DILocation(line: 59, column: 3, scope: !15)
!280 = !DILocation(line: 59, column: 16, scope: !15)
!281 = !DILocation(line: 63, column: 3, scope: !15)
!282 = !DILocation(line: 74, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !15, file: !1, line: 74, column: 3)
!284 = !DILocation(line: 74, column: 8, scope: !283)
!285 = !DILocation(line: 77, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !1, line: 75, column: 5)
!287 = distinct !DILexicalBlock(scope: !283, file: !1, line: 74, column: 3)
!288 = !DILocation(line: 0, scope: !289)
!289 = distinct !DILexicalBlock(scope: !35, file: !1, line: 118, column: 7)
!290 = !DILocation(line: 0, scope: !291)
!291 = distinct !DILexicalBlock(scope: !289, file: !1, line: 118, column: 7)
!292 = !DILocation(line: 83, column: 8, scope: !37)
!293 = !DILocation(line: 83, column: 3, scope: !37)
!294 = !DILocation(line: 111, column: 12, scope: !295)
!295 = distinct !DILexicalBlock(scope: !35, file: !1, line: 111, column: 7)
!296 = !DILocation(line: 111, column: 7, scope: !295)
!297 = !DILocation(line: 118, column: 12, scope: !289)
!298 = !DILocation(line: 118, column: 7, scope: !289)
!299 = !DILocation(line: 122, column: 12, scope: !300)
!300 = distinct !DILexicalBlock(scope: !35, file: !1, line: 122, column: 7)
!301 = !DILocation(line: 122, column: 7, scope: !300)
!302 = !DILocation(line: 122, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !1, line: 122, column: 7)
!304 = distinct !{!304, !301, !305}
!305 = !DILocation(line: 123, column: 46, scope: !300)
!306 = !DILocation(line: 83, column: 3, scope: !36)
!307 = distinct !{!307, !293, !308}
!308 = !DILocation(line: 130, column: 5, scope: !37)
!309 = !DILocation(line: 118, column: 7, scope: !291)
!310 = distinct !{!310, !298, !311}
!311 = !DILocation(line: 119, column: 22, scope: !289)
!312 = !DILocation(line: 111, column: 7, scope: !313)
!313 = distinct !DILexicalBlock(scope: !295, file: !1, line: 111, column: 7)
!314 = distinct !{!314, !296, !315}
!315 = !DILocation(line: 114, column: 16, scope: !295)
!316 = !DILocation(line: 131, column: 1, scope: !15)
!317 = !DILocation(line: 0, scope: !37)
!318 = !DILocation(line: 83, column: 17, scope: !36)
!319 = !DILocation(line: 0, scope: !320)
!320 = distinct !DILexicalBlock(scope: !35, file: !1, line: 93, column: 11)
!321 = !DILocation(line: 100, column: 7, scope: !35)
!322 = !DILocation(line: 105, column: 15, scope: !35)
!323 = !DILocation(line: 105, column: 37, scope: !35)
!324 = !DILocation(line: 0, scope: !35)
!325 = !DILocation(line: 106, column: 36, scope: !35)
!326 = !DILocation(line: 106, column: 14, scope: !35)
!327 = !DILocation(line: 106, column: 42, scope: !35)
!328 = !DILocation(line: 0, scope: !295)
!329 = !DILocation(line: 112, column: 11, scope: !313)
!330 = !DILocation(line: 114, column: 10, scope: !313)
!331 = !DILocation(line: 114, column: 4, scope: !313)
!332 = !DILocation(line: 114, column: 2, scope: !313)
!333 = !DILocation(line: 113, column: 11, scope: !313)
!334 = !DILocation(line: 118, column: 39, scope: !291)
!335 = !DILocation(line: 119, column: 13, scope: !291)
!336 = !DILocation(line: 119, column: 10, scope: !291)
!337 = !DILocation(line: 118, column: 60, scope: !291)
!338 = !DILocation(line: 0, scope: !300)
!339 = !DILocation(line: 122, column: 50, scope: !303)
!340 = !DILocation(line: 123, column: 45, scope: !303)
!341 = !DILocation(line: 123, column: 15, scope: !303)
!342 = !DILocation(line: 123, column: 38, scope: !303)
!343 = !DILocation(line: 123, column: 9, scope: !303)
!344 = !DILocation(line: 123, column: 7, scope: !303)
!345 = !DILocation(line: 123, column: 2, scope: !303)
!346 = !DILocation(line: 123, column: 43, scope: !303)
!347 = !DILocation(line: 83, column: 55, scope: !36)
