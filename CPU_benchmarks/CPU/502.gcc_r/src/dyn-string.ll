; ModuleID = 'dyn-string.bc'
source_filename = "dyn-string.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dyn_string = type { i32, i32, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !24 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !39, metadata !DIExpression()), !dbg !40
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !41
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !42
  ret i32 %call, !dbg !43
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !44 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !47
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !48
  ret i32 %call, !dbg !49
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !50 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !113, metadata !DIExpression()), !dbg !114
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !115
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !115
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !115
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !115
  %cmp = icmp uge i8* %0, %1, !dbg !115
  %conv1 = zext i1 %cmp to i64, !dbg !115
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !115
  %tobool = icmp eq i64 %expval, 0, !dbg !115
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !115

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !115
  br label %cond.end, !dbg !115

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !115
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !115
  %2 = load i8, i8* %0, align 1, !dbg !115
  %conv3 = zext i8 %2 to i32, !dbg !115
  br label %cond.end, !dbg !115

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !115
  ret i32 %cond, !dbg !116
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !117 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !119, metadata !DIExpression()), !dbg !120
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !121
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !121
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !121
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !121
  %cmp = icmp uge i8* %0, %1, !dbg !121
  %conv1 = zext i1 %cmp to i64, !dbg !121
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !121
  %tobool = icmp eq i64 %expval, 0, !dbg !121
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !121

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !121
  br label %cond.end, !dbg !121

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !121
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !121
  %2 = load i8, i8* %0, align 1, !dbg !121
  %conv3 = zext i8 %2 to i32, !dbg !121
  br label %cond.end, !dbg !121

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !121
  ret i32 %cond, !dbg !122
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !123 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !124
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !124
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !124
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !124
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !124
  %cmp = icmp uge i8* %1, %2, !dbg !124
  %conv1 = zext i1 %cmp to i64, !dbg !124
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !124
  %tobool = icmp eq i64 %expval, 0, !dbg !124
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !124

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !124
  br label %cond.end, !dbg !124

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !124
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !124
  %3 = load i8, i8* %1, align 1, !dbg !124
  %conv3 = zext i8 %3 to i32, !dbg !124
  br label %cond.end, !dbg !124

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !124
  ret i32 %cond, !dbg !125
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !126 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !132
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !133
  ret i32 %call, !dbg !134
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !135 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !139, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !140, metadata !DIExpression()), !dbg !141
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !142
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !142
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !142
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !142
  %cmp = icmp uge i8* %0, %1, !dbg !142
  %conv1 = zext i1 %cmp to i64, !dbg !142
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !142
  %tobool = icmp eq i64 %expval, 0, !dbg !142
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !142

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !142
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !142
  br label %cond.end, !dbg !142

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !142
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !142
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !142
  store i8 %conv2, i8* %0, align 1, !dbg !142
  %conv6 = and i32 %__c, 255, !dbg !142
  br label %cond.end, !dbg !142

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !142
  ret i32 %cond, !dbg !143
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !144 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !146, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !147, metadata !DIExpression()), !dbg !148
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !149
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !149
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !149
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !149
  %cmp = icmp uge i8* %0, %1, !dbg !149
  %conv1 = zext i1 %cmp to i64, !dbg !149
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !149
  %tobool = icmp eq i64 %expval, 0, !dbg !149
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !149

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !149
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !149
  br label %cond.end, !dbg !149

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !149
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !149
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !149
  store i8 %conv2, i8* %0, align 1, !dbg !149
  %conv6 = and i32 %__c, 255, !dbg !149
  br label %cond.end, !dbg !149

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !149
  ret i32 %cond, !dbg !150
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !151 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !155
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !155
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !155
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !155
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !155
  %cmp = icmp uge i8* %1, %2, !dbg !155
  %conv1 = zext i1 %cmp to i64, !dbg !155
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !155
  %tobool = icmp eq i64 %expval, 0, !dbg !155
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !155

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !155
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !155
  br label %cond.end, !dbg !155

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !155
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !155
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !155
  store i8 %conv4, i8* %1, align 1, !dbg !155
  %conv6 = and i32 %__c, 255, !dbg !155
  br label %cond.end, !dbg !155

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !155
  ret i32 %cond, !dbg !156
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !157 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !163, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i64* %__n, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !165, metadata !DIExpression()), !dbg !166
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !167
  ret i64 %call, !dbg !168
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !171, metadata !DIExpression()), !dbg !172
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !173
  %0 = load i32, i32* %_flags, align 8, !dbg !173
  %and = lshr i32 %0, 4, !dbg !173
  %and.lobit = and i32 %and, 1, !dbg !173
  ret i32 %and.lobit, !dbg !174
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !175 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !177, metadata !DIExpression()), !dbg !178
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !179
  %0 = load i32, i32* %_flags, align 8, !dbg !179
  %and = lshr i32 %0, 5, !dbg !179
  %and.lobit = and i32 %and, 1, !dbg !179
  ret i32 %and.lobit, !dbg !180
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !181 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !186, metadata !DIExpression()), !dbg !187
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !188
  %conv = trunc i64 %call to i32, !dbg !189
  ret i32 %conv, !dbg !190
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !191 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !195, metadata !DIExpression()), !dbg !196
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !197
  ret i64 %call, !dbg !198
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !199 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !204, metadata !DIExpression()), !dbg !205
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !206
  ret i64 %call, !dbg !207
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !208 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !219, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i8* %__base, metadata !220, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !221, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64 %__size, metadata !222, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !223, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !225, metadata !DIExpression()), !dbg !229
  br label %while.cond, !dbg !230

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !231
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !229
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !225, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !224, metadata !DIExpression()), !dbg !229
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !232
  br i1 %cmp, label %while.body, label %cleanup, !dbg !230

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !233
  %div = lshr i64 %add, 1, !dbg !235
  call void @llvm.dbg.value(metadata i64 %div, metadata !226, metadata !DIExpression()), !dbg !229
  %mul = mul i64 %div, %__size, !dbg !236
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !237
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !227, metadata !DIExpression()), !dbg !229
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !238
  call void @llvm.dbg.value(metadata i32 %call, metadata !228, metadata !DIExpression()), !dbg !229
  %cmp1 = icmp slt i32 %call, 0, !dbg !239
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !241

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !242
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !244

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !245
  call void @llvm.dbg.value(metadata i64 %add4, metadata !224, metadata !DIExpression()), !dbg !229
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !229
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !229
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !225, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !224, metadata !DIExpression()), !dbg !229
  br label %while.cond, !dbg !230, !llvm.loop !246

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !229
  ret i8* %retval.0, !dbg !248
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !249 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !255, metadata !DIExpression()), !dbg !256
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !257
  ret double %call, !dbg !258
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_init(%struct.dyn_string* %ds_struct_ptr, i32 %space) local_unnamed_addr #3 !dbg !259 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %ds_struct_ptr, metadata !263, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %space, metadata !264, metadata !DIExpression()), !dbg !265
  %cmp = icmp eq i32 %space, 0, !dbg !266
  %spec.select = select i1 %cmp, i32 1, i32 %space, !dbg !268
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !264, metadata !DIExpression()), !dbg !265
  %conv = sext i32 %spec.select to i64, !dbg !269
  %call = tail call i8* @xmalloc(i64 %conv) #5, !dbg !269
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds_struct_ptr, i64 0, i32 2, !dbg !270
  store i8* %call, i8** %s, align 8, !dbg !271
  %allocated = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds_struct_ptr, i64 0, i32 0, !dbg !272
  store i32 %spec.select, i32* %allocated, align 8, !dbg !273
  %length = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds_struct_ptr, i64 0, i32 1, !dbg !274
  store i32 0, i32* %length, align 4, !dbg !275
  store i8 0, i8* %call, align 1, !dbg !276
  ret i32 1, !dbg !277
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.dyn_string* @dyn_string_new(i32 %space) local_unnamed_addr #3 !dbg !278 {
entry:
  call void @llvm.dbg.value(metadata i32 %space, metadata !283, metadata !DIExpression()), !dbg !285
  %call = tail call i8* @xmalloc(i64 16) #5, !dbg !286
  %0 = bitcast i8* %call to %struct.dyn_string*, !dbg !286
  call void @llvm.dbg.value(metadata %struct.dyn_string* %0, metadata !284, metadata !DIExpression()), !dbg !285
  %call1 = tail call i32 @dyn_string_init(%struct.dyn_string* %0, i32 %space) #6, !dbg !287
  ret %struct.dyn_string* %0, !dbg !288
}

; Function Attrs: nounwind uwtable
define dso_local void @dyn_string_delete(%struct.dyn_string* %ds) local_unnamed_addr #3 !dbg !289 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %ds, metadata !293, metadata !DIExpression()), !dbg !294
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds, i64 0, i32 2, !dbg !295
  %0 = load i8*, i8** %s, align 8, !dbg !295
  tail call void @free(i8* %0) #5, !dbg !296
  %1 = bitcast %struct.dyn_string* %ds to i8*, !dbg !297
  tail call void @free(i8* %1) #5, !dbg !298
  ret void, !dbg !299
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @dyn_string_release(%struct.dyn_string* %ds) local_unnamed_addr #3 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %ds, metadata !304, metadata !DIExpression()), !dbg !306
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds, i64 0, i32 2, !dbg !307
  %0 = load i8*, i8** %s, align 8, !dbg !307
  call void @llvm.dbg.value(metadata i8* %0, metadata !305, metadata !DIExpression()), !dbg !306
  store i8* null, i8** %s, align 8, !dbg !308
  %1 = bitcast %struct.dyn_string* %ds to i8*, !dbg !309
  tail call void @free(i8* %1) #5, !dbg !310
  ret i8* %0, !dbg !311
}

; Function Attrs: nounwind uwtable
define dso_local %struct.dyn_string* @dyn_string_resize(%struct.dyn_string* %ds, i32 %space) local_unnamed_addr #3 !dbg !312 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %ds, metadata !316, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i32 %space, metadata !317, metadata !DIExpression()), !dbg !319
  %allocated = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds, i64 0, i32 0, !dbg !320
  %0 = load i32, i32* %allocated, align 8, !dbg !320
  call void @llvm.dbg.value(metadata i32 %0, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i32 %space, metadata !317, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !319
  br label %while.cond, !dbg !321

while.cond:                                       ; preds = %while.body, %entry
  %new_allocated.0 = phi i32 [ %0, %entry ], [ %mul, %while.body ], !dbg !319
  call void @llvm.dbg.value(metadata i32 %new_allocated.0, metadata !318, metadata !DIExpression()), !dbg !319
  %cmp = icmp sgt i32 %new_allocated.0, %space, !dbg !322
  br i1 %cmp, label %while.end, label %while.body, !dbg !321

while.body:                                       ; preds = %while.cond
  %mul = shl nsw i32 %new_allocated.0, 1, !dbg !323
  call void @llvm.dbg.value(metadata i32 %mul, metadata !318, metadata !DIExpression()), !dbg !319
  br label %while.cond, !dbg !321, !llvm.loop !324

while.end:                                        ; preds = %while.cond
  %new_allocated.0.lcssa = phi i32 [ %new_allocated.0, %while.cond ], !dbg !319
  call void @llvm.dbg.value(metadata i32 %new_allocated.0.lcssa, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i32 %new_allocated.0.lcssa, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i32 %new_allocated.0.lcssa, metadata !318, metadata !DIExpression()), !dbg !319
  %cmp2 = icmp eq i32 %new_allocated.0.lcssa, %0, !dbg !326
  br i1 %cmp2, label %if.end, label %if.then, !dbg !328

if.then:                                          ; preds = %while.end
  store i32 %new_allocated.0.lcssa, i32* %allocated, align 8, !dbg !329
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds, i64 0, i32 2, !dbg !331
  %1 = load i8*, i8** %s, align 8, !dbg !331
  %conv = sext i32 %new_allocated.0.lcssa to i64, !dbg !331
  %call = tail call i8* @xrealloc(i8* %1, i64 %conv) #5, !dbg !331
  store i8* %call, i8** %s, align 8, !dbg !332
  br label %if.end, !dbg !333

if.end:                                           ; preds = %while.end, %if.then
  ret %struct.dyn_string* %ds, !dbg !334
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dyn_string_clear(%struct.dyn_string* %ds) local_unnamed_addr #3 !dbg !335 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %ds, metadata !337, metadata !DIExpression()), !dbg !338
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds, i64 0, i32 2, !dbg !339
  %0 = load i8*, i8** %s, align 8, !dbg !339
  store i8 0, i8* %0, align 1, !dbg !340
  %length = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds, i64 0, i32 1, !dbg !341
  store i32 0, i32* %length, align 4, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_copy(%struct.dyn_string* %dest, %struct.dyn_string* %src) local_unnamed_addr #3 !dbg !344 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !348, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata %struct.dyn_string* %src, metadata !349, metadata !DIExpression()), !dbg !350
  %cmp = icmp eq %struct.dyn_string* %dest, %src, !dbg !351
  br i1 %cmp, label %if.then, label %if.end, !dbg !353

if.then:                                          ; preds = %entry
  tail call void @abort() #5, !dbg !354
  br label %if.end, !dbg !354

if.end:                                           ; preds = %if.then, %entry
  %length = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %src, i64 0, i32 1, !dbg !355
  %0 = load i32, i32* %length, align 4, !dbg !355
  %call = tail call %struct.dyn_string* @dyn_string_resize(%struct.dyn_string* %dest, i32 %0) #6, !dbg !357
  %cmp1 = icmp eq %struct.dyn_string* %call, null, !dbg !358
  br i1 %cmp1, label %return, label %if.end3, !dbg !359

if.end3:                                          ; preds = %if.end
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 2, !dbg !360
  %1 = load i8*, i8** %s, align 8, !dbg !360
  %s4 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %src, i64 0, i32 2, !dbg !361
  %2 = load i8*, i8** %s4, align 8, !dbg !361
  %call5 = tail call i8* @strcpy(i8* %1, i8* %2) #5, !dbg !362
  %3 = load i32, i32* %length, align 4, !dbg !363
  %length7 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 1, !dbg !364
  store i32 %3, i32* %length7, align 4, !dbg !365
  br label %return, !dbg !366

return:                                           ; preds = %if.end, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %if.end ], !dbg !350
  ret i32 %retval.0, !dbg !367
}

declare dso_local void @abort() local_unnamed_addr #1

declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_copy_cstr(%struct.dyn_string* %dest, i8* %src) local_unnamed_addr #3 !dbg !368 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !372, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i8* %src, metadata !373, metadata !DIExpression()), !dbg !375
  %call = tail call i64 @strlen(i8* %src) #5, !dbg !376
  %conv = trunc i64 %call to i32, !dbg !376
  call void @llvm.dbg.value(metadata i32 %conv, metadata !374, metadata !DIExpression()), !dbg !375
  %call1 = tail call %struct.dyn_string* @dyn_string_resize(%struct.dyn_string* %dest, i32 %conv) #6, !dbg !377
  %cmp = icmp eq %struct.dyn_string* %call1, null, !dbg !379
  br i1 %cmp, label %cleanup, label %if.end, !dbg !380

if.end:                                           ; preds = %entry
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 2, !dbg !381
  %0 = load i8*, i8** %s, align 8, !dbg !381
  %call3 = tail call i8* @strcpy(i8* %0, i8* %src) #5, !dbg !382
  %length4 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 1, !dbg !383
  store i32 %conv, i32* %length4, align 4, !dbg !384
  br label %cleanup, !dbg !385

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !375
  ret i32 %retval.0, !dbg !386
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_prepend(%struct.dyn_string* %dest, %struct.dyn_string* %src) local_unnamed_addr #3 !dbg !387 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !389, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata %struct.dyn_string* %src, metadata !390, metadata !DIExpression()), !dbg !391
  %call = tail call i32 @dyn_string_insert(%struct.dyn_string* %dest, i32 0, %struct.dyn_string* %src) #6, !dbg !392
  ret i32 %call, !dbg !393
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_insert(%struct.dyn_string* %dest, i32 %pos, %struct.dyn_string* %src) local_unnamed_addr #3 !dbg !394 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 %pos, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata %struct.dyn_string* %src, metadata !400, metadata !DIExpression()), !dbg !402
  %cmp = icmp eq %struct.dyn_string* %src, %dest, !dbg !403
  br i1 %cmp, label %if.then, label %if.end, !dbg !405

if.then:                                          ; preds = %entry
  tail call void @abort() #5, !dbg !406
  br label %if.end, !dbg !406

if.end:                                           ; preds = %if.then, %entry
  %length = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 1, !dbg !407
  %0 = load i32, i32* %length, align 4, !dbg !407
  %length1 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %src, i64 0, i32 1, !dbg !409
  %1 = load i32, i32* %length1, align 4, !dbg !409
  %add = add nsw i32 %0, %1, !dbg !410
  %call = tail call %struct.dyn_string* @dyn_string_resize(%struct.dyn_string* %dest, i32 %add) #6, !dbg !411
  %cmp2 = icmp eq %struct.dyn_string* %call, null, !dbg !412
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !413

if.end4:                                          ; preds = %if.end
  %2 = load i32, i32* %length, align 4, !dbg !414
  call void @llvm.dbg.value(metadata i32 %2, metadata !401, metadata !DIExpression()), !dbg !402
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 2, !dbg !402
  %3 = sext i32 %2 to i64, !dbg !416
  %4 = sext i32 %pos to i64, !dbg !416
  br label %for.cond, !dbg !416

for.cond:                                         ; preds = %for.body, %if.end4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %3, %if.end4 ], !dbg !417
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !401, metadata !DIExpression()), !dbg !402
  %cmp6 = icmp slt i64 %indvars.iv, %4, !dbg !418
  %5 = load i8*, i8** %s, align 8, !dbg !402
  br i1 %cmp6, label %for.end, label %for.body, !dbg !420

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %indvars.iv, !dbg !421
  %6 = load i8, i8* %arrayidx, align 1, !dbg !421
  %7 = load i32, i32* %length1, align 4, !dbg !422
  %8 = sext i32 %7 to i64, !dbg !423
  %9 = add nsw i64 %indvars.iv, %8, !dbg !423
  %arrayidx11 = getelementptr inbounds i8, i8* %5, i64 %9, !dbg !424
  store i8 %6, i8* %arrayidx11, align 1, !dbg !425
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !426
  call void @llvm.dbg.value(metadata i32 undef, metadata !401, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !402
  br label %for.cond, !dbg !427, !llvm.loop !428

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i8* [ %5, %for.cond ], !dbg !402
  %idx.ext = sext i32 %pos to i64, !dbg !430
  %add.ptr = getelementptr inbounds i8, i8* %.lcssa, i64 %idx.ext, !dbg !430
  %s13 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %src, i64 0, i32 2, !dbg !431
  %10 = load i8*, i8** %s13, align 8, !dbg !431
  %11 = load i32, i32* %length1, align 4, !dbg !432
  %conv = sext i32 %11 to i64, !dbg !433
  %call15 = tail call i8* @strncpy(i8* %add.ptr, i8* %10, i64 %conv) #5, !dbg !434
  %12 = load i32, i32* %length1, align 4, !dbg !435
  %13 = load i32, i32* %length, align 4, !dbg !436
  %add18 = add nsw i32 %13, %12, !dbg !436
  store i32 %add18, i32* %length, align 4, !dbg !436
  br label %cleanup, !dbg !437

cleanup:                                          ; preds = %if.end, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.end ], !dbg !402
  ret i32 %retval.0, !dbg !438
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_prepend_cstr(%struct.dyn_string* %dest, i8* %src) local_unnamed_addr #3 !dbg !439 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !441, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i8* %src, metadata !442, metadata !DIExpression()), !dbg !443
  %call = tail call i32 @dyn_string_insert_cstr(%struct.dyn_string* %dest, i32 0, i8* %src) #6, !dbg !444
  ret i32 %call, !dbg !445
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_insert_cstr(%struct.dyn_string* %dest, i32 %pos, i8* %src) local_unnamed_addr #3 !dbg !446 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !450, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 %pos, metadata !451, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i8* %src, metadata !452, metadata !DIExpression()), !dbg !455
  %call = tail call i64 @strlen(i8* %src) #5, !dbg !456
  %conv = trunc i64 %call to i32, !dbg !456
  call void @llvm.dbg.value(metadata i32 %conv, metadata !454, metadata !DIExpression()), !dbg !455
  %length1 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 1, !dbg !457
  %0 = load i32, i32* %length1, align 4, !dbg !457
  %add = add nsw i32 %0, %conv, !dbg !459
  %call2 = tail call %struct.dyn_string* @dyn_string_resize(%struct.dyn_string* %dest, i32 %add) #6, !dbg !460
  %cmp = icmp eq %struct.dyn_string* %call2, null, !dbg !461
  br i1 %cmp, label %cleanup, label %if.end, !dbg !462

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %length1, align 4, !dbg !463
  call void @llvm.dbg.value(metadata i32 %1, metadata !453, metadata !DIExpression()), !dbg !455
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 2, !dbg !455
  %2 = sext i32 %1 to i64, !dbg !465
  %3 = sext i32 %pos to i64, !dbg !465
  %sext2 = shl i64 %call, 32, !dbg !465
  %4 = ashr exact i64 %sext2, 32, !dbg !465
  br label %for.cond, !dbg !465

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %2, %if.end ], !dbg !466
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !453, metadata !DIExpression()), !dbg !455
  %cmp5 = icmp slt i64 %indvars.iv, %3, !dbg !467
  %5 = load i8*, i8** %s, align 8, !dbg !455
  br i1 %cmp5, label %for.end, label %for.body, !dbg !469

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %indvars.iv, !dbg !470
  %6 = load i8, i8* %arrayidx, align 1, !dbg !470
  %7 = add nsw i64 %indvars.iv, %4, !dbg !471
  %arrayidx10 = getelementptr inbounds i8, i8* %5, i64 %7, !dbg !472
  store i8 %6, i8* %arrayidx10, align 1, !dbg !473
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !474
  call void @llvm.dbg.value(metadata i32 undef, metadata !453, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !455
  br label %for.cond, !dbg !475, !llvm.loop !476

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i8* [ %5, %for.cond ], !dbg !455
  %idx.ext = sext i32 %pos to i64, !dbg !478
  %add.ptr = getelementptr inbounds i8, i8* %.lcssa, i64 %idx.ext, !dbg !478
  %sext = shl i64 %call, 32, !dbg !479
  %conv12 = ashr exact i64 %sext, 32, !dbg !479
  %call13 = tail call i8* @strncpy(i8* %add.ptr, i8* %src, i64 %conv12) #5, !dbg !480
  %8 = load i32, i32* %length1, align 4, !dbg !481
  %add15 = add nsw i32 %8, %conv, !dbg !481
  store i32 %add15, i32* %length1, align 4, !dbg !481
  br label %cleanup, !dbg !482

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !455
  ret i32 %retval.0, !dbg !483
}

declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_insert_char(%struct.dyn_string* %dest, i32 %pos, i32 %c) local_unnamed_addr #3 !dbg !484 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !488, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata i32 %pos, metadata !489, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata i32 %c, metadata !490, metadata !DIExpression()), !dbg !492
  %length = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 1, !dbg !493
  %0 = load i32, i32* %length, align 4, !dbg !493
  %add = add nsw i32 %0, 1, !dbg !495
  %call = tail call %struct.dyn_string* @dyn_string_resize(%struct.dyn_string* %dest, i32 %add) #6, !dbg !496
  %cmp = icmp eq %struct.dyn_string* %call, null, !dbg !497
  br i1 %cmp, label %cleanup, label %if.end, !dbg !498

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %length, align 4, !dbg !499
  call void @llvm.dbg.value(metadata i32 %1, metadata !491, metadata !DIExpression()), !dbg !492
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 2, !dbg !501
  %2 = sext i32 %1 to i64, !dbg !503
  %3 = sext i32 %pos to i64, !dbg !503
  br label %for.cond, !dbg !503

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %2, %if.end ], !dbg !504
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !491, metadata !DIExpression()), !dbg !492
  %cmp2 = icmp slt i64 %indvars.iv, %3, !dbg !505
  br i1 %cmp2, label %for.end, label %for.body, !dbg !506

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s, align 8, !dbg !507
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %indvars.iv, !dbg !508
  %5 = load i8, i8* %arrayidx, align 1, !dbg !508
  %6 = add nsw i64 %indvars.iv, 1, !dbg !509
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 %6, !dbg !510
  store i8 %5, i8* %arrayidx6, align 1, !dbg !511
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !512
  call void @llvm.dbg.value(metadata i32 undef, metadata !491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !492
  br label %for.cond, !dbg !513, !llvm.loop !514

for.end:                                          ; preds = %for.cond
  %conv = trunc i32 %c to i8, !dbg !516
  %7 = load i8*, i8** %s, align 8, !dbg !517
  %idxprom8 = sext i32 %pos to i64, !dbg !518
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 %idxprom8, !dbg !518
  store i8 %conv, i8* %arrayidx9, align 1, !dbg !519
  %8 = load i32, i32* %length, align 4, !dbg !520
  %inc = add nsw i32 %8, 1, !dbg !520
  store i32 %inc, i32* %length, align 4, !dbg !520
  br label %cleanup, !dbg !521

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !492
  ret i32 %retval.0, !dbg !522
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_append(%struct.dyn_string* %dest, %struct.dyn_string* %s) local_unnamed_addr #3 !dbg !523 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !525, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata %struct.dyn_string* %s, metadata !526, metadata !DIExpression()), !dbg !527
  %length = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 1, !dbg !528
  %0 = load i32, i32* %length, align 4, !dbg !528
  %length1 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %s, i64 0, i32 1, !dbg !530
  %1 = load i32, i32* %length1, align 4, !dbg !530
  %add = add nsw i32 %0, %1, !dbg !531
  %call = tail call %struct.dyn_string* @dyn_string_resize(%struct.dyn_string* %dest, i32 %add) #6, !dbg !532
  %cmp = icmp eq %struct.dyn_string* %call, null, !dbg !533
  br i1 %cmp, label %return, label %if.end, !dbg !534

if.end:                                           ; preds = %entry
  %s2 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 2, !dbg !535
  %2 = load i8*, i8** %s2, align 8, !dbg !535
  %3 = load i32, i32* %length, align 4, !dbg !536
  %idx.ext = sext i32 %3 to i64, !dbg !537
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext, !dbg !537
  %s4 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %s, i64 0, i32 2, !dbg !538
  %4 = load i8*, i8** %s4, align 8, !dbg !538
  %call5 = tail call i8* @strcpy(i8* %add.ptr, i8* %4) #5, !dbg !539
  %5 = load i32, i32* %length1, align 4, !dbg !540
  %6 = load i32, i32* %length, align 4, !dbg !541
  %add8 = add nsw i32 %6, %5, !dbg !541
  store i32 %add8, i32* %length, align 4, !dbg !541
  br label %return, !dbg !542

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !527
  ret i32 %retval.0, !dbg !543
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_append_cstr(%struct.dyn_string* %dest, i8* %s) local_unnamed_addr #3 !dbg !544 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !546, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i8* %s, metadata !547, metadata !DIExpression()), !dbg !549
  %call = tail call i64 @strlen(i8* %s) #5, !dbg !550
  %conv = trunc i64 %call to i32, !dbg !550
  call void @llvm.dbg.value(metadata i32 %conv, metadata !548, metadata !DIExpression()), !dbg !549
  %length = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 1, !dbg !551
  %0 = load i32, i32* %length, align 4, !dbg !551
  %add = add nsw i32 %0, %conv, !dbg !553
  %call1 = tail call %struct.dyn_string* @dyn_string_resize(%struct.dyn_string* %dest, i32 %add) #6, !dbg !554
  %cmp = icmp eq %struct.dyn_string* %call1, null, !dbg !555
  br i1 %cmp, label %cleanup, label %if.end, !dbg !556

if.end:                                           ; preds = %entry
  %s3 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 2, !dbg !557
  %1 = load i8*, i8** %s3, align 8, !dbg !557
  %2 = load i32, i32* %length, align 4, !dbg !558
  %idx.ext = sext i32 %2 to i64, !dbg !559
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext, !dbg !559
  %call5 = tail call i8* @strcpy(i8* %add.ptr, i8* %s) #5, !dbg !560
  %3 = load i32, i32* %length, align 4, !dbg !561
  %add7 = add nsw i32 %3, %conv, !dbg !561
  store i32 %add7, i32* %length, align 4, !dbg !561
  br label %cleanup, !dbg !562

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !549
  ret i32 %retval.0, !dbg !563
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_append_char(%struct.dyn_string* %dest, i32 %c) local_unnamed_addr #3 !dbg !564 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !568, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i32 %c, metadata !569, metadata !DIExpression()), !dbg !570
  %length = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 1, !dbg !571
  %0 = load i32, i32* %length, align 4, !dbg !571
  %add = add nsw i32 %0, 1, !dbg !573
  %call = tail call %struct.dyn_string* @dyn_string_resize(%struct.dyn_string* %dest, i32 %add) #6, !dbg !574
  %cmp = icmp eq %struct.dyn_string* %call, null, !dbg !575
  br i1 %cmp, label %return, label %if.end, !dbg !576

if.end:                                           ; preds = %entry
  %conv = trunc i32 %c to i8, !dbg !577
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 2, !dbg !578
  %1 = load i8*, i8** %s, align 8, !dbg !578
  %2 = load i32, i32* %length, align 4, !dbg !579
  %idxprom = sext i32 %2 to i64, !dbg !580
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !580
  store i8 %conv, i8* %arrayidx, align 1, !dbg !581
  %3 = load i8*, i8** %s, align 8, !dbg !582
  %4 = load i32, i32* %length, align 4, !dbg !583
  %add4 = add nsw i32 %4, 1, !dbg !584
  %idxprom5 = sext i32 %add4 to i64, !dbg !585
  %arrayidx6 = getelementptr inbounds i8, i8* %3, i64 %idxprom5, !dbg !585
  store i8 0, i8* %arrayidx6, align 1, !dbg !586
  %5 = load i32, i32* %length, align 4, !dbg !587
  %inc = add nsw i32 %5, 1, !dbg !587
  store i32 %inc, i32* %length, align 4, !dbg !587
  br label %return, !dbg !588

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !570
  ret i32 %retval.0, !dbg !589
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_substring(%struct.dyn_string* %dest, %struct.dyn_string* %src, i32 %start, i32 %end) local_unnamed_addr #3 !dbg !590 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %dest, metadata !594, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata %struct.dyn_string* %src, metadata !595, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata i32 %start, metadata !596, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata i32 %end, metadata !597, metadata !DIExpression()), !dbg !600
  %sub = sub nsw i32 %end, %start, !dbg !601
  call void @llvm.dbg.value(metadata i32 %sub, metadata !599, metadata !DIExpression()), !dbg !600
  %cmp = icmp slt i32 %end, %start, !dbg !602
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !604

lor.lhs.false:                                    ; preds = %entry
  %length1 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %src, i64 0, i32 1, !dbg !605
  %0 = load i32, i32* %length1, align 4, !dbg !605
  %cmp2 = icmp slt i32 %0, %start, !dbg !606
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !607

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp5 = icmp slt i32 %0, %end, !dbg !608
  br i1 %cmp5, label %if.then, label %if.end, !dbg !609

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @abort() #5, !dbg !610
  br label %if.end, !dbg !610

if.end:                                           ; preds = %if.then, %lor.lhs.false3
  %call = tail call %struct.dyn_string* @dyn_string_resize(%struct.dyn_string* %dest, i32 %sub) #6, !dbg !611
  %cmp6 = icmp eq %struct.dyn_string* %call, null, !dbg !613
  br i1 %cmp6, label %cleanup, label %for.cond.preheader, !dbg !614

for.cond.preheader:                               ; preds = %if.end
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %src, i64 0, i32 2, !dbg !615
  %s10 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 2, !dbg !615
  %1 = sub i32 %end, %start, !dbg !618
  %2 = sext i32 %1 to i64, !dbg !618
  %3 = sext i32 %start to i64, !dbg !618
  br label %for.cond, !dbg !618

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %2, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !619
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !598, metadata !DIExpression()), !dbg !600
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !620
  call void @llvm.dbg.value(metadata i32 undef, metadata !598, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !600
  %cmp9 = icmp sgt i64 %indvars.iv, 0, !dbg !621
  br i1 %cmp9, label %for.body, label %for.end, !dbg !618

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s, align 8, !dbg !622
  %5 = add nsw i64 %indvars.iv.next, %3, !dbg !623
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !624
  %6 = load i8, i8* %arrayidx, align 1, !dbg !624
  %7 = load i8*, i8** %s10, align 8, !dbg !625
  %arrayidx12 = getelementptr inbounds i8, i8* %7, i64 %indvars.iv.next, !dbg !626
  store i8 %6, i8* %arrayidx12, align 1, !dbg !627
  br label %for.cond, !dbg !628, !llvm.loop !629

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %s10, align 8, !dbg !631
  %idxprom14 = sext i32 %sub to i64, !dbg !632
  %arrayidx15 = getelementptr inbounds i8, i8* %8, i64 %idxprom14, !dbg !632
  store i8 0, i8* %arrayidx15, align 1, !dbg !633
  %length16 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %dest, i64 0, i32 1, !dbg !634
  store i32 %sub, i32* %length16, align 4, !dbg !635
  br label %cleanup, !dbg !636

cleanup:                                          ; preds = %if.end, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.end ], !dbg !600
  ret i32 %retval.0, !dbg !637
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dyn_string_eq(%struct.dyn_string* %ds1, %struct.dyn_string* %ds2) local_unnamed_addr #3 !dbg !638 {
entry:
  call void @llvm.dbg.value(metadata %struct.dyn_string* %ds1, metadata !640, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata %struct.dyn_string* %ds2, metadata !641, metadata !DIExpression()), !dbg !642
  %length = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds1, i64 0, i32 1, !dbg !643
  %0 = load i32, i32* %length, align 4, !dbg !643
  %length1 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds2, i64 0, i32 1, !dbg !645
  %1 = load i32, i32* %length1, align 4, !dbg !645
  %cmp = icmp eq i32 %0, %1, !dbg !646
  br i1 %cmp, label %if.else, label %return, !dbg !647

if.else:                                          ; preds = %entry
  %s = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds1, i64 0, i32 2, !dbg !648
  %2 = load i8*, i8** %s, align 8, !dbg !648
  %s2 = getelementptr inbounds %struct.dyn_string, %struct.dyn_string* %ds2, i64 0, i32 2, !dbg !649
  %3 = load i8*, i8** %s2, align 8, !dbg !649
  %call = tail call i32 @strcmp(i8* %2, i8* %3) #5, !dbg !650
  %tobool = icmp eq i32 %call, 0, !dbg !651
  %lnot.ext = zext i1 %tobool to i32, !dbg !651
  br label %return, !dbg !652

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi i32 [ %lnot.ext, %if.else ], [ 0, %entry ], !dbg !653
  ret i32 %retval.0, !dbg !654
}

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

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
!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "dyn-string.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn_string", file: !15, line: 30, size: 128, elements: !16)
!15 = !DIFile(filename: "./include/dyn-string.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!16 = !{!17, !18, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !14, file: !15, line: 32, baseType: !6, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !14, file: !15, line: 33, baseType: !6, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !14, file: !15, line: 34, baseType: !8, size: 64, offset: 64)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!24 = distinct !DISubprogram(name: "vprintf", scope: !25, file: !25, line: 39, type: !26, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!26 = !DISubroutineType(types: !27)
!27 = !{!6, !28, !29}
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !31)
!31 = !{!32, !34, !35, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !30, file: !1, baseType: !33, size: 32)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !30, file: !1, baseType: !33, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !30, file: !1, baseType: !10, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !30, file: !1, baseType: !10, size: 64, offset: 128)
!37 = !{!38, !39}
!38 = !DILocalVariable(name: "__fmt", arg: 1, scope: !24, file: !25, line: 39, type: !28)
!39 = !DILocalVariable(name: "__arg", arg: 2, scope: !24, file: !25, line: 39, type: !29)
!40 = !DILocation(line: 0, scope: !24)
!41 = !DILocation(line: 41, column: 20, scope: !24)
!42 = !DILocation(line: 41, column: 10, scope: !24)
!43 = !DILocation(line: 41, column: 3, scope: !24)
!44 = distinct !DISubprogram(name: "getchar", scope: !25, file: !25, line: 47, type: !45, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{!6}
!47 = !DILocation(line: 49, column: 16, scope: !44)
!48 = !DILocation(line: 49, column: 10, scope: !44)
!49 = !DILocation(line: 49, column: 3, scope: !44)
!50 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !25, file: !25, line: 56, type: !51, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !112)
!51 = !DISubroutineType(types: !52)
!52 = !{!6, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !55, line: 7, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !76, !77, !78, !82, !84, !86, !90, !93, !95, !98, !101, !102, !103, !107, !108}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !56, file: !57, line: 51, baseType: !6, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !56, file: !57, line: 54, baseType: !8, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !56, file: !57, line: 55, baseType: !8, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !56, file: !57, line: 56, baseType: !8, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !56, file: !57, line: 57, baseType: !8, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !56, file: !57, line: 58, baseType: !8, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !56, file: !57, line: 59, baseType: !8, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !56, file: !57, line: 60, baseType: !8, size: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !56, file: !57, line: 61, baseType: !8, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !56, file: !57, line: 64, baseType: !8, size: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !56, file: !57, line: 65, baseType: !8, size: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !56, file: !57, line: 66, baseType: !8, size: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !56, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !57, line: 36, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !56, file: !57, line: 70, baseType: !75, size: 64, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !56, file: !57, line: 72, baseType: !6, size: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !56, file: !57, line: 73, baseType: !6, size: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !56, file: !57, line: 74, baseType: !79, size: 64, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !80, line: 152, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!81 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !56, file: !57, line: 77, baseType: !83, size: 16, offset: 1024)
!83 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !56, file: !57, line: 78, baseType: !85, size: 8, offset: 1040)
!85 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !56, file: !57, line: 79, baseType: !87, size: 8, offset: 1048)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !56, file: !57, line: 81, baseType: !91, size: 64, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !57, line: 43, baseType: null)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !56, file: !57, line: 89, baseType: !94, size: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !80, line: 153, baseType: !81)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !56, file: !57, line: 91, baseType: !96, size: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !57, line: 37, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !56, file: !57, line: 92, baseType: !99, size: 64, offset: 1280)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !57, line: 38, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !56, file: !57, line: 93, baseType: !75, size: 64, offset: 1344)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !56, file: !57, line: 94, baseType: !10, size: 64, offset: 1408)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !56, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 46, baseType: !106)
!105 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!106 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !56, file: !57, line: 96, baseType: !6, size: 32, offset: 1536)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !56, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 20)
!112 = !{!113}
!113 = !DILocalVariable(name: "__fp", arg: 1, scope: !50, file: !25, line: 56, type: !53)
!114 = !DILocation(line: 0, scope: !50)
!115 = !DILocation(line: 58, column: 10, scope: !50)
!116 = !DILocation(line: 58, column: 3, scope: !50)
!117 = distinct !DISubprogram(name: "getc_unlocked", scope: !25, file: !25, line: 66, type: !51, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!118 = !{!119}
!119 = !DILocalVariable(name: "__fp", arg: 1, scope: !117, file: !25, line: 66, type: !53)
!120 = !DILocation(line: 0, scope: !117)
!121 = !DILocation(line: 68, column: 10, scope: !117)
!122 = !DILocation(line: 68, column: 3, scope: !117)
!123 = distinct !DISubprogram(name: "getchar_unlocked", scope: !25, file: !25, line: 73, type: !45, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!124 = !DILocation(line: 75, column: 10, scope: !123)
!125 = !DILocation(line: 75, column: 3, scope: !123)
!126 = distinct !DISubprogram(name: "putchar", scope: !25, file: !25, line: 82, type: !127, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{!6, !6}
!129 = !{!130}
!130 = !DILocalVariable(name: "__c", arg: 1, scope: !126, file: !25, line: 82, type: !6)
!131 = !DILocation(line: 0, scope: !126)
!132 = !DILocation(line: 84, column: 21, scope: !126)
!133 = !DILocation(line: 84, column: 10, scope: !126)
!134 = !DILocation(line: 84, column: 3, scope: !126)
!135 = distinct !DISubprogram(name: "fputc_unlocked", scope: !25, file: !25, line: 91, type: !136, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!6, !6, !53}
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "__c", arg: 1, scope: !135, file: !25, line: 91, type: !6)
!140 = !DILocalVariable(name: "__stream", arg: 2, scope: !135, file: !25, line: 91, type: !53)
!141 = !DILocation(line: 0, scope: !135)
!142 = !DILocation(line: 93, column: 10, scope: !135)
!143 = !DILocation(line: 93, column: 3, scope: !135)
!144 = distinct !DISubprogram(name: "putc_unlocked", scope: !25, file: !25, line: 101, type: !136, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146, !147}
!146 = !DILocalVariable(name: "__c", arg: 1, scope: !144, file: !25, line: 101, type: !6)
!147 = !DILocalVariable(name: "__stream", arg: 2, scope: !144, file: !25, line: 101, type: !53)
!148 = !DILocation(line: 0, scope: !144)
!149 = !DILocation(line: 103, column: 10, scope: !144)
!150 = !DILocation(line: 103, column: 3, scope: !144)
!151 = distinct !DISubprogram(name: "putchar_unlocked", scope: !25, file: !25, line: 108, type: !127, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !152)
!152 = !{!153}
!153 = !DILocalVariable(name: "__c", arg: 1, scope: !151, file: !25, line: 108, type: !6)
!154 = !DILocation(line: 0, scope: !151)
!155 = !DILocation(line: 110, column: 10, scope: !151)
!156 = !DILocation(line: 110, column: 3, scope: !151)
!157 = distinct !DISubprogram(name: "getline", scope: !25, file: !25, line: 118, type: !158, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !7, !161, !53}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !80, line: 193, baseType: !81)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!162 = !{!163, !164, !165}
!163 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !157, file: !25, line: 118, type: !7)
!164 = !DILocalVariable(name: "__n", arg: 2, scope: !157, file: !25, line: 118, type: !161)
!165 = !DILocalVariable(name: "__stream", arg: 3, scope: !157, file: !25, line: 118, type: !53)
!166 = !DILocation(line: 0, scope: !157)
!167 = !DILocation(line: 120, column: 10, scope: !157)
!168 = !DILocation(line: 120, column: 3, scope: !157)
!169 = distinct !DISubprogram(name: "feof_unlocked", scope: !25, file: !25, line: 128, type: !51, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!170 = !{!171}
!171 = !DILocalVariable(name: "__stream", arg: 1, scope: !169, file: !25, line: 128, type: !53)
!172 = !DILocation(line: 0, scope: !169)
!173 = !DILocation(line: 130, column: 10, scope: !169)
!174 = !DILocation(line: 130, column: 3, scope: !169)
!175 = distinct !DISubprogram(name: "ferror_unlocked", scope: !25, file: !25, line: 135, type: !51, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!176 = !{!177}
!177 = !DILocalVariable(name: "__stream", arg: 1, scope: !175, file: !25, line: 135, type: !53)
!178 = !DILocation(line: 0, scope: !175)
!179 = !DILocation(line: 137, column: 10, scope: !175)
!180 = !DILocation(line: 137, column: 3, scope: !175)
!181 = distinct !DISubprogram(name: "atoi", scope: !182, file: !182, line: 361, type: !183, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!182 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!183 = !DISubroutineType(types: !184)
!184 = !{!6, !11}
!185 = !{!186}
!186 = !DILocalVariable(name: "__nptr", arg: 1, scope: !181, file: !182, line: 361, type: !11)
!187 = !DILocation(line: 0, scope: !181)
!188 = !DILocation(line: 363, column: 16, scope: !181)
!189 = !DILocation(line: 363, column: 10, scope: !181)
!190 = !DILocation(line: 363, column: 3, scope: !181)
!191 = distinct !DISubprogram(name: "atol", scope: !182, file: !182, line: 366, type: !192, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{!81, !11}
!194 = !{!195}
!195 = !DILocalVariable(name: "__nptr", arg: 1, scope: !191, file: !182, line: 366, type: !11)
!196 = !DILocation(line: 0, scope: !191)
!197 = !DILocation(line: 368, column: 10, scope: !191)
!198 = !DILocation(line: 368, column: 3, scope: !191)
!199 = distinct !DISubprogram(name: "atoll", scope: !182, file: !182, line: 373, type: !200, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !203)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !11}
!202 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!203 = !{!204}
!204 = !DILocalVariable(name: "__nptr", arg: 1, scope: !199, file: !182, line: 373, type: !11)
!205 = !DILocation(line: 0, scope: !199)
!206 = !DILocation(line: 375, column: 10, scope: !199)
!207 = !DILocation(line: 375, column: 3, scope: !199)
!208 = distinct !DISubprogram(name: "bsearch", scope: !209, file: !209, line: 20, type: !210, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!210 = !DISubroutineType(types: !211)
!211 = !{!10, !212, !212, !104, !104, !214}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !182, line: 808, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!6, !212, !212}
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!219 = !DILocalVariable(name: "__key", arg: 1, scope: !208, file: !209, line: 20, type: !212)
!220 = !DILocalVariable(name: "__base", arg: 2, scope: !208, file: !209, line: 20, type: !212)
!221 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !208, file: !209, line: 20, type: !104)
!222 = !DILocalVariable(name: "__size", arg: 4, scope: !208, file: !209, line: 20, type: !104)
!223 = !DILocalVariable(name: "__compar", arg: 5, scope: !208, file: !209, line: 21, type: !214)
!224 = !DILocalVariable(name: "__l", scope: !208, file: !209, line: 23, type: !104)
!225 = !DILocalVariable(name: "__u", scope: !208, file: !209, line: 23, type: !104)
!226 = !DILocalVariable(name: "__idx", scope: !208, file: !209, line: 23, type: !104)
!227 = !DILocalVariable(name: "__p", scope: !208, file: !209, line: 24, type: !212)
!228 = !DILocalVariable(name: "__comparison", scope: !208, file: !209, line: 25, type: !6)
!229 = !DILocation(line: 0, scope: !208)
!230 = !DILocation(line: 29, column: 3, scope: !208)
!231 = !DILocation(line: 27, column: 7, scope: !208)
!232 = !DILocation(line: 29, column: 14, scope: !208)
!233 = !DILocation(line: 31, column: 20, scope: !234)
!234 = distinct !DILexicalBlock(scope: !208, file: !209, line: 30, column: 5)
!235 = !DILocation(line: 31, column: 27, scope: !234)
!236 = !DILocation(line: 32, column: 56, scope: !234)
!237 = !DILocation(line: 32, column: 47, scope: !234)
!238 = !DILocation(line: 33, column: 22, scope: !234)
!239 = !DILocation(line: 34, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !234, file: !209, line: 34, column: 11)
!241 = !DILocation(line: 34, column: 11, scope: !234)
!242 = !DILocation(line: 36, column: 29, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !209, line: 36, column: 16)
!244 = !DILocation(line: 36, column: 16, scope: !240)
!245 = !DILocation(line: 37, column: 14, scope: !243)
!246 = distinct !{!246, !230, !247}
!247 = !DILocation(line: 40, column: 5, scope: !208)
!248 = !DILocation(line: 43, column: 1, scope: !208)
!249 = distinct !DISubprogram(name: "atof", scope: !250, file: !250, line: 25, type: !251, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !254)
!250 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !11}
!253 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!254 = !{!255}
!255 = !DILocalVariable(name: "__nptr", arg: 1, scope: !249, file: !250, line: 25, type: !11)
!256 = !DILocation(line: 0, scope: !249)
!257 = !DILocation(line: 27, column: 10, scope: !249)
!258 = !DILocation(line: 27, column: 3, scope: !249)
!259 = distinct !DISubprogram(name: "dyn_string_init", scope: !1, file: !1, line: 59, type: !260, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{!6, !13, !6}
!262 = !{!263, !264}
!263 = !DILocalVariable(name: "ds_struct_ptr", arg: 1, scope: !259, file: !1, line: 59, type: !13)
!264 = !DILocalVariable(name: "space", arg: 2, scope: !259, file: !1, line: 59, type: !6)
!265 = !DILocation(line: 0, scope: !259)
!266 = !DILocation(line: 62, column: 13, scope: !267)
!267 = distinct !DILexicalBlock(scope: !259, file: !1, line: 62, column: 7)
!268 = !DILocation(line: 62, column: 7, scope: !259)
!269 = !DILocation(line: 70, column: 22, scope: !259)
!270 = !DILocation(line: 70, column: 18, scope: !259)
!271 = !DILocation(line: 70, column: 20, scope: !259)
!272 = !DILocation(line: 72, column: 18, scope: !259)
!273 = !DILocation(line: 72, column: 28, scope: !259)
!274 = !DILocation(line: 73, column: 18, scope: !259)
!275 = !DILocation(line: 73, column: 25, scope: !259)
!276 = !DILocation(line: 74, column: 23, scope: !259)
!277 = !DILocation(line: 76, column: 3, scope: !259)
!278 = distinct !DISubprogram(name: "dyn_string_new", scope: !1, file: !1, line: 86, type: !279, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !282)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !6}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "dyn_string_t", file: !15, line: 35, baseType: !13)
!282 = !{!283, !284}
!283 = !DILocalVariable(name: "space", arg: 1, scope: !278, file: !1, line: 86, type: !6)
!284 = !DILocalVariable(name: "result", scope: !278, file: !1, line: 88, type: !281)
!285 = !DILocation(line: 0, scope: !278)
!286 = !DILocation(line: 99, column: 12, scope: !278)
!287 = !DILocation(line: 100, column: 3, scope: !278)
!288 = !DILocation(line: 102, column: 3, scope: !278)
!289 = distinct !DISubprogram(name: "dyn_string_delete", scope: !1, file: !1, line: 108, type: !290, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !281}
!292 = !{!293}
!293 = !DILocalVariable(name: "ds", arg: 1, scope: !289, file: !1, line: 108, type: !281)
!294 = !DILocation(line: 0, scope: !289)
!295 = !DILocation(line: 110, column: 13, scope: !289)
!296 = !DILocation(line: 110, column: 3, scope: !289)
!297 = !DILocation(line: 111, column: 9, scope: !289)
!298 = !DILocation(line: 111, column: 3, scope: !289)
!299 = !DILocation(line: 112, column: 1, scope: !289)
!300 = distinct !DISubprogram(name: "dyn_string_release", scope: !1, file: !1, line: 119, type: !301, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{!8, !281}
!303 = !{!304, !305}
!304 = !DILocalVariable(name: "ds", arg: 1, scope: !300, file: !1, line: 119, type: !281)
!305 = !DILocalVariable(name: "result", scope: !300, file: !1, line: 122, type: !8)
!306 = !DILocation(line: 0, scope: !300)
!307 = !DILocation(line: 122, column: 22, scope: !300)
!308 = !DILocation(line: 124, column: 9, scope: !300)
!309 = !DILocation(line: 126, column: 9, scope: !300)
!310 = !DILocation(line: 126, column: 3, scope: !300)
!311 = !DILocation(line: 128, column: 3, scope: !300)
!312 = distinct !DISubprogram(name: "dyn_string_resize", scope: !1, file: !1, line: 139, type: !313, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{!281, !281, !6}
!315 = !{!316, !317, !318}
!316 = !DILocalVariable(name: "ds", arg: 1, scope: !312, file: !1, line: 139, type: !281)
!317 = !DILocalVariable(name: "space", arg: 2, scope: !312, file: !1, line: 139, type: !6)
!318 = !DILocalVariable(name: "new_allocated", scope: !312, file: !1, line: 141, type: !6)
!319 = !DILocation(line: 0, scope: !312)
!320 = !DILocation(line: 141, column: 27, scope: !312)
!321 = !DILocation(line: 147, column: 3, scope: !312)
!322 = !DILocation(line: 147, column: 16, scope: !312)
!323 = !DILocation(line: 148, column: 19, scope: !312)
!324 = distinct !{!324, !321, !325}
!325 = !DILocation(line: 148, column: 22, scope: !312)
!326 = !DILocation(line: 150, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !312, file: !1, line: 150, column: 7)
!328 = !DILocation(line: 150, column: 7, scope: !312)
!329 = !DILocation(line: 152, column: 21, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !1, line: 151, column: 5)
!331 = !DILocation(line: 162, column: 15, scope: !330)
!332 = !DILocation(line: 162, column: 13, scope: !330)
!333 = !DILocation(line: 164, column: 5, scope: !330)
!334 = !DILocation(line: 166, column: 3, scope: !312)
!335 = distinct !DISubprogram(name: "dyn_string_clear", scope: !1, file: !1, line: 172, type: !290, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !336)
!336 = !{!337}
!337 = !DILocalVariable(name: "ds", arg: 1, scope: !335, file: !1, line: 172, type: !281)
!338 = !DILocation(line: 0, scope: !335)
!339 = !DILocation(line: 175, column: 7, scope: !335)
!340 = !DILocation(line: 175, column: 12, scope: !335)
!341 = !DILocation(line: 176, column: 7, scope: !335)
!342 = !DILocation(line: 176, column: 14, scope: !335)
!343 = !DILocation(line: 177, column: 1, scope: !335)
!344 = distinct !DISubprogram(name: "dyn_string_copy", scope: !1, file: !1, line: 184, type: !345, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!6, !281, !281}
!347 = !{!348, !349}
!348 = !DILocalVariable(name: "dest", arg: 1, scope: !344, file: !1, line: 184, type: !281)
!349 = !DILocalVariable(name: "src", arg: 2, scope: !344, file: !1, line: 184, type: !281)
!350 = !DILocation(line: 0, scope: !344)
!351 = !DILocation(line: 186, column: 12, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !1, line: 186, column: 7)
!353 = !DILocation(line: 186, column: 7, scope: !344)
!354 = !DILocation(line: 187, column: 5, scope: !352)
!355 = !DILocation(line: 190, column: 37, scope: !356)
!356 = distinct !DILexicalBlock(scope: !344, file: !1, line: 190, column: 7)
!357 = !DILocation(line: 190, column: 7, scope: !356)
!358 = !DILocation(line: 190, column: 45, scope: !356)
!359 = !DILocation(line: 190, column: 7, scope: !344)
!360 = !DILocation(line: 193, column: 17, scope: !344)
!361 = !DILocation(line: 193, column: 25, scope: !344)
!362 = !DILocation(line: 193, column: 3, scope: !344)
!363 = !DILocation(line: 195, column: 23, scope: !344)
!364 = !DILocation(line: 195, column: 9, scope: !344)
!365 = !DILocation(line: 195, column: 16, scope: !344)
!366 = !DILocation(line: 196, column: 3, scope: !344)
!367 = !DILocation(line: 197, column: 1, scope: !344)
!368 = distinct !DISubprogram(name: "dyn_string_copy_cstr", scope: !1, file: !1, line: 204, type: !369, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!6, !281, !11}
!371 = !{!372, !373, !374}
!372 = !DILocalVariable(name: "dest", arg: 1, scope: !368, file: !1, line: 204, type: !281)
!373 = !DILocalVariable(name: "src", arg: 2, scope: !368, file: !1, line: 204, type: !11)
!374 = !DILocalVariable(name: "length", scope: !368, file: !1, line: 206, type: !6)
!375 = !DILocation(line: 0, scope: !368)
!376 = !DILocation(line: 206, column: 16, scope: !368)
!377 = !DILocation(line: 208, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !368, file: !1, line: 208, column: 7)
!379 = !DILocation(line: 208, column: 40, scope: !378)
!380 = !DILocation(line: 208, column: 7, scope: !368)
!381 = !DILocation(line: 211, column: 17, scope: !368)
!382 = !DILocation(line: 211, column: 3, scope: !368)
!383 = !DILocation(line: 213, column: 9, scope: !368)
!384 = !DILocation(line: 213, column: 16, scope: !368)
!385 = !DILocation(line: 214, column: 3, scope: !368)
!386 = !DILocation(line: 215, column: 1, scope: !368)
!387 = distinct !DISubprogram(name: "dyn_string_prepend", scope: !1, file: !1, line: 223, type: !345, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !388)
!388 = !{!389, !390}
!389 = !DILocalVariable(name: "dest", arg: 1, scope: !387, file: !1, line: 223, type: !281)
!390 = !DILocalVariable(name: "src", arg: 2, scope: !387, file: !1, line: 223, type: !281)
!391 = !DILocation(line: 0, scope: !387)
!392 = !DILocation(line: 225, column: 10, scope: !387)
!393 = !DILocation(line: 225, column: 3, scope: !387)
!394 = distinct !DISubprogram(name: "dyn_string_insert", scope: !1, file: !1, line: 244, type: !395, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{!6, !281, !6, !281}
!397 = !{!398, !399, !400, !401}
!398 = !DILocalVariable(name: "dest", arg: 1, scope: !394, file: !1, line: 244, type: !281)
!399 = !DILocalVariable(name: "pos", arg: 2, scope: !394, file: !1, line: 244, type: !6)
!400 = !DILocalVariable(name: "src", arg: 3, scope: !394, file: !1, line: 244, type: !281)
!401 = !DILocalVariable(name: "i", scope: !394, file: !1, line: 246, type: !6)
!402 = !DILocation(line: 0, scope: !394)
!403 = !DILocation(line: 248, column: 11, scope: !404)
!404 = distinct !DILexicalBlock(scope: !394, file: !1, line: 248, column: 7)
!405 = !DILocation(line: 248, column: 7, scope: !394)
!406 = !DILocation(line: 249, column: 5, scope: !404)
!407 = !DILocation(line: 251, column: 38, scope: !408)
!408 = distinct !DILexicalBlock(scope: !394, file: !1, line: 251, column: 7)
!409 = !DILocation(line: 251, column: 52, scope: !408)
!410 = !DILocation(line: 251, column: 45, scope: !408)
!411 = !DILocation(line: 251, column: 7, scope: !408)
!412 = !DILocation(line: 251, column: 60, scope: !408)
!413 = !DILocation(line: 251, column: 7, scope: !394)
!414 = !DILocation(line: 254, column: 18, scope: !415)
!415 = distinct !DILexicalBlock(scope: !394, file: !1, line: 254, column: 3)
!416 = !DILocation(line: 254, column: 8, scope: !415)
!417 = !DILocation(line: 0, scope: !415)
!418 = !DILocation(line: 254, column: 28, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !1, line: 254, column: 3)
!420 = !DILocation(line: 254, column: 3, scope: !415)
!421 = !DILocation(line: 255, column: 32, scope: !419)
!422 = !DILocation(line: 255, column: 22, scope: !419)
!423 = !DILocation(line: 255, column: 15, scope: !419)
!424 = !DILocation(line: 255, column: 5, scope: !419)
!425 = !DILocation(line: 255, column: 30, scope: !419)
!426 = !DILocation(line: 254, column: 36, scope: !419)
!427 = !DILocation(line: 254, column: 3, scope: !419)
!428 = distinct !{!428, !420, !429}
!429 = !DILocation(line: 255, column: 41, scope: !415)
!430 = !DILocation(line: 257, column: 20, scope: !394)
!431 = !DILocation(line: 257, column: 32, scope: !394)
!432 = !DILocation(line: 257, column: 40, scope: !394)
!433 = !DILocation(line: 257, column: 35, scope: !394)
!434 = !DILocation(line: 257, column: 3, scope: !394)
!435 = !DILocation(line: 259, column: 24, scope: !394)
!436 = !DILocation(line: 259, column: 16, scope: !394)
!437 = !DILocation(line: 260, column: 3, scope: !394)
!438 = !DILocation(line: 261, column: 1, scope: !394)
!439 = distinct !DISubprogram(name: "dyn_string_prepend_cstr", scope: !1, file: !1, line: 233, type: !369, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !440)
!440 = !{!441, !442}
!441 = !DILocalVariable(name: "dest", arg: 1, scope: !439, file: !1, line: 233, type: !281)
!442 = !DILocalVariable(name: "src", arg: 2, scope: !439, file: !1, line: 233, type: !11)
!443 = !DILocation(line: 0, scope: !439)
!444 = !DILocation(line: 235, column: 10, scope: !439)
!445 = !DILocation(line: 235, column: 3, scope: !439)
!446 = distinct !DISubprogram(name: "dyn_string_insert_cstr", scope: !1, file: !1, line: 269, type: !447, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!6, !281, !6, !11}
!449 = !{!450, !451, !452, !453, !454}
!450 = !DILocalVariable(name: "dest", arg: 1, scope: !446, file: !1, line: 269, type: !281)
!451 = !DILocalVariable(name: "pos", arg: 2, scope: !446, file: !1, line: 269, type: !6)
!452 = !DILocalVariable(name: "src", arg: 3, scope: !446, file: !1, line: 269, type: !11)
!453 = !DILocalVariable(name: "i", scope: !446, file: !1, line: 271, type: !6)
!454 = !DILocalVariable(name: "length", scope: !446, file: !1, line: 272, type: !6)
!455 = !DILocation(line: 0, scope: !446)
!456 = !DILocation(line: 272, column: 16, scope: !446)
!457 = !DILocation(line: 274, column: 38, scope: !458)
!458 = distinct !DILexicalBlock(scope: !446, file: !1, line: 274, column: 7)
!459 = !DILocation(line: 274, column: 45, scope: !458)
!460 = !DILocation(line: 274, column: 7, scope: !458)
!461 = !DILocation(line: 274, column: 55, scope: !458)
!462 = !DILocation(line: 274, column: 7, scope: !446)
!463 = !DILocation(line: 277, column: 18, scope: !464)
!464 = distinct !DILexicalBlock(scope: !446, file: !1, line: 277, column: 3)
!465 = !DILocation(line: 277, column: 8, scope: !464)
!466 = !DILocation(line: 0, scope: !464)
!467 = !DILocation(line: 277, column: 28, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !1, line: 277, column: 3)
!469 = !DILocation(line: 277, column: 3, scope: !464)
!470 = !DILocation(line: 278, column: 27, scope: !468)
!471 = !DILocation(line: 278, column: 15, scope: !468)
!472 = !DILocation(line: 278, column: 5, scope: !468)
!473 = !DILocation(line: 278, column: 25, scope: !468)
!474 = !DILocation(line: 277, column: 36, scope: !468)
!475 = !DILocation(line: 277, column: 3, scope: !468)
!476 = distinct !{!476, !469, !477}
!477 = !DILocation(line: 278, column: 36, scope: !464)
!478 = !DILocation(line: 280, column: 20, scope: !446)
!479 = !DILocation(line: 280, column: 32, scope: !446)
!480 = !DILocation(line: 280, column: 3, scope: !446)
!481 = !DILocation(line: 282, column: 16, scope: !446)
!482 = !DILocation(line: 283, column: 3, scope: !446)
!483 = !DILocation(line: 284, column: 1, scope: !446)
!484 = distinct !DISubprogram(name: "dyn_string_insert_char", scope: !1, file: !1, line: 291, type: !485, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!6, !281, !6, !6}
!487 = !{!488, !489, !490, !491}
!488 = !DILocalVariable(name: "dest", arg: 1, scope: !484, file: !1, line: 291, type: !281)
!489 = !DILocalVariable(name: "pos", arg: 2, scope: !484, file: !1, line: 291, type: !6)
!490 = !DILocalVariable(name: "c", arg: 3, scope: !484, file: !1, line: 291, type: !6)
!491 = !DILocalVariable(name: "i", scope: !484, file: !1, line: 293, type: !6)
!492 = !DILocation(line: 0, scope: !484)
!493 = !DILocation(line: 295, column: 38, scope: !494)
!494 = distinct !DILexicalBlock(scope: !484, file: !1, line: 295, column: 7)
!495 = !DILocation(line: 295, column: 45, scope: !494)
!496 = !DILocation(line: 295, column: 7, scope: !494)
!497 = !DILocation(line: 295, column: 50, scope: !494)
!498 = !DILocation(line: 295, column: 7, scope: !484)
!499 = !DILocation(line: 298, column: 18, scope: !500)
!500 = distinct !DILexicalBlock(scope: !484, file: !1, line: 298, column: 3)
!501 = !DILocation(line: 0, scope: !502)
!502 = distinct !DILexicalBlock(scope: !500, file: !1, line: 298, column: 3)
!503 = !DILocation(line: 298, column: 8, scope: !500)
!504 = !DILocation(line: 0, scope: !500)
!505 = !DILocation(line: 298, column: 28, scope: !502)
!506 = !DILocation(line: 298, column: 3, scope: !500)
!507 = !DILocation(line: 299, column: 28, scope: !502)
!508 = !DILocation(line: 299, column: 22, scope: !502)
!509 = !DILocation(line: 299, column: 15, scope: !502)
!510 = !DILocation(line: 299, column: 5, scope: !502)
!511 = !DILocation(line: 299, column: 20, scope: !502)
!512 = !DILocation(line: 298, column: 36, scope: !502)
!513 = !DILocation(line: 298, column: 3, scope: !502)
!514 = distinct !{!514, !506, !515}
!515 = !DILocation(line: 299, column: 31, scope: !500)
!516 = !DILocation(line: 301, column: 18, scope: !484)
!517 = !DILocation(line: 301, column: 9, scope: !484)
!518 = !DILocation(line: 301, column: 3, scope: !484)
!519 = !DILocation(line: 301, column: 16, scope: !484)
!520 = !DILocation(line: 303, column: 3, scope: !484)
!521 = !DILocation(line: 304, column: 3, scope: !484)
!522 = !DILocation(line: 305, column: 1, scope: !484)
!523 = distinct !DISubprogram(name: "dyn_string_append", scope: !1, file: !1, line: 312, type: !345, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !524)
!524 = !{!525, !526}
!525 = !DILocalVariable(name: "dest", arg: 1, scope: !523, file: !1, line: 312, type: !281)
!526 = !DILocalVariable(name: "s", arg: 2, scope: !523, file: !1, line: 312, type: !281)
!527 = !DILocation(line: 0, scope: !523)
!528 = !DILocation(line: 314, column: 38, scope: !529)
!529 = distinct !DILexicalBlock(scope: !523, file: !1, line: 314, column: 7)
!530 = !DILocation(line: 314, column: 50, scope: !529)
!531 = !DILocation(line: 314, column: 45, scope: !529)
!532 = !DILocation(line: 314, column: 7, scope: !529)
!533 = !DILocation(line: 314, column: 58, scope: !529)
!534 = !DILocation(line: 314, column: 7, scope: !523)
!535 = !DILocation(line: 316, column: 17, scope: !523)
!536 = !DILocation(line: 316, column: 27, scope: !523)
!537 = !DILocation(line: 316, column: 19, scope: !523)
!538 = !DILocation(line: 316, column: 38, scope: !523)
!539 = !DILocation(line: 316, column: 3, scope: !523)
!540 = !DILocation(line: 317, column: 22, scope: !523)
!541 = !DILocation(line: 317, column: 16, scope: !523)
!542 = !DILocation(line: 318, column: 3, scope: !523)
!543 = !DILocation(line: 319, column: 1, scope: !523)
!544 = distinct !DISubprogram(name: "dyn_string_append_cstr", scope: !1, file: !1, line: 326, type: !369, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !545)
!545 = !{!546, !547, !548}
!546 = !DILocalVariable(name: "dest", arg: 1, scope: !544, file: !1, line: 326, type: !281)
!547 = !DILocalVariable(name: "s", arg: 2, scope: !544, file: !1, line: 326, type: !11)
!548 = !DILocalVariable(name: "len", scope: !544, file: !1, line: 328, type: !6)
!549 = !DILocation(line: 0, scope: !544)
!550 = !DILocation(line: 328, column: 13, scope: !544)
!551 = !DILocation(line: 332, column: 38, scope: !552)
!552 = distinct !DILexicalBlock(scope: !544, file: !1, line: 332, column: 7)
!553 = !DILocation(line: 332, column: 45, scope: !552)
!554 = !DILocation(line: 332, column: 7, scope: !552)
!555 = !DILocation(line: 332, column: 52, scope: !552)
!556 = !DILocation(line: 332, column: 7, scope: !544)
!557 = !DILocation(line: 334, column: 17, scope: !544)
!558 = !DILocation(line: 334, column: 27, scope: !544)
!559 = !DILocation(line: 334, column: 19, scope: !544)
!560 = !DILocation(line: 334, column: 3, scope: !544)
!561 = !DILocation(line: 335, column: 16, scope: !544)
!562 = !DILocation(line: 336, column: 3, scope: !544)
!563 = !DILocation(line: 337, column: 1, scope: !544)
!564 = distinct !DISubprogram(name: "dyn_string_append_char", scope: !1, file: !1, line: 343, type: !565, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!6, !281, !6}
!567 = !{!568, !569}
!568 = !DILocalVariable(name: "dest", arg: 1, scope: !564, file: !1, line: 343, type: !281)
!569 = !DILocalVariable(name: "c", arg: 2, scope: !564, file: !1, line: 343, type: !6)
!570 = !DILocation(line: 0, scope: !564)
!571 = !DILocation(line: 346, column: 38, scope: !572)
!572 = distinct !DILexicalBlock(scope: !564, file: !1, line: 346, column: 7)
!573 = !DILocation(line: 346, column: 45, scope: !572)
!574 = !DILocation(line: 346, column: 7, scope: !572)
!575 = !DILocation(line: 346, column: 50, scope: !572)
!576 = !DILocation(line: 346, column: 7, scope: !564)
!577 = !DILocation(line: 349, column: 27, scope: !564)
!578 = !DILocation(line: 349, column: 9, scope: !564)
!579 = !DILocation(line: 349, column: 17, scope: !564)
!580 = !DILocation(line: 349, column: 3, scope: !564)
!581 = !DILocation(line: 349, column: 25, scope: !564)
!582 = !DILocation(line: 351, column: 9, scope: !564)
!583 = !DILocation(line: 351, column: 17, scope: !564)
!584 = !DILocation(line: 351, column: 24, scope: !564)
!585 = !DILocation(line: 351, column: 3, scope: !564)
!586 = !DILocation(line: 351, column: 29, scope: !564)
!587 = !DILocation(line: 353, column: 3, scope: !564)
!588 = !DILocation(line: 354, column: 3, scope: !564)
!589 = !DILocation(line: 355, column: 1, scope: !564)
!590 = distinct !DISubprogram(name: "dyn_string_substring", scope: !1, file: !1, line: 364, type: !591, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{!6, !281, !281, !6, !6}
!593 = !{!594, !595, !596, !597, !598, !599}
!594 = !DILocalVariable(name: "dest", arg: 1, scope: !590, file: !1, line: 364, type: !281)
!595 = !DILocalVariable(name: "src", arg: 2, scope: !590, file: !1, line: 364, type: !281)
!596 = !DILocalVariable(name: "start", arg: 3, scope: !590, file: !1, line: 365, type: !6)
!597 = !DILocalVariable(name: "end", arg: 4, scope: !590, file: !1, line: 365, type: !6)
!598 = !DILocalVariable(name: "i", scope: !590, file: !1, line: 367, type: !6)
!599 = !DILocalVariable(name: "length", scope: !590, file: !1, line: 368, type: !6)
!600 = !DILocation(line: 0, scope: !590)
!601 = !DILocation(line: 368, column: 20, scope: !590)
!602 = !DILocation(line: 370, column: 13, scope: !603)
!603 = distinct !DILexicalBlock(scope: !590, file: !1, line: 370, column: 7)
!604 = !DILocation(line: 370, column: 19, scope: !603)
!605 = !DILocation(line: 370, column: 35, scope: !603)
!606 = !DILocation(line: 370, column: 28, scope: !603)
!607 = !DILocation(line: 370, column: 42, scope: !603)
!608 = !DILocation(line: 370, column: 49, scope: !603)
!609 = !DILocation(line: 370, column: 7, scope: !590)
!610 = !DILocation(line: 371, column: 5, scope: !603)
!611 = !DILocation(line: 374, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !590, file: !1, line: 374, column: 7)
!613 = !DILocation(line: 374, column: 40, scope: !612)
!614 = !DILocation(line: 374, column: 7, scope: !590)
!615 = !DILocation(line: 0, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 377, column: 3)
!617 = distinct !DILexicalBlock(scope: !590, file: !1, line: 377, column: 3)
!618 = !DILocation(line: 377, column: 3, scope: !617)
!619 = !DILocation(line: 0, scope: !617)
!620 = !DILocation(line: 377, column: 20, scope: !616)
!621 = !DILocation(line: 377, column: 24, scope: !616)
!622 = !DILocation(line: 378, column: 23, scope: !616)
!623 = !DILocation(line: 378, column: 31, scope: !616)
!624 = !DILocation(line: 378, column: 18, scope: !616)
!625 = !DILocation(line: 378, column: 11, scope: !616)
!626 = !DILocation(line: 378, column: 5, scope: !616)
!627 = !DILocation(line: 378, column: 16, scope: !616)
!628 = !DILocation(line: 377, column: 3, scope: !616)
!629 = distinct !{!629, !618, !630}
!630 = !DILocation(line: 378, column: 34, scope: !617)
!631 = !DILocation(line: 380, column: 9, scope: !590)
!632 = !DILocation(line: 380, column: 3, scope: !590)
!633 = !DILocation(line: 380, column: 19, scope: !590)
!634 = !DILocation(line: 382, column: 9, scope: !590)
!635 = !DILocation(line: 382, column: 16, scope: !590)
!636 = !DILocation(line: 384, column: 3, scope: !590)
!637 = !DILocation(line: 385, column: 1, scope: !590)
!638 = distinct !DISubprogram(name: "dyn_string_eq", scope: !1, file: !1, line: 390, type: !345, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !639)
!639 = !{!640, !641}
!640 = !DILocalVariable(name: "ds1", arg: 1, scope: !638, file: !1, line: 390, type: !281)
!641 = !DILocalVariable(name: "ds2", arg: 2, scope: !638, file: !1, line: 390, type: !281)
!642 = !DILocation(line: 0, scope: !638)
!643 = !DILocation(line: 393, column: 12, scope: !644)
!644 = distinct !DILexicalBlock(scope: !638, file: !1, line: 393, column: 7)
!645 = !DILocation(line: 393, column: 27, scope: !644)
!646 = !DILocation(line: 393, column: 19, scope: !644)
!647 = !DILocation(line: 393, column: 7, scope: !638)
!648 = !DILocation(line: 396, column: 26, scope: !644)
!649 = !DILocation(line: 396, column: 34, scope: !644)
!650 = !DILocation(line: 396, column: 13, scope: !644)
!651 = !DILocation(line: 396, column: 12, scope: !644)
!652 = !DILocation(line: 396, column: 5, scope: !644)
!653 = !DILocation(line: 0, scope: !644)
!654 = !DILocation(line: 397, column: 1, scope: !638)
