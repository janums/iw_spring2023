; ModuleID = 'lrealpath.bc'
source_filename = "lrealpath.c"
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
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !17 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !31, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !34
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !35
  ret i32 %call, !dbg !36
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !37 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !40
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !41
  ret i32 %call, !dbg !42
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !43 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !106, metadata !DIExpression()), !dbg !107
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !108
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !108
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !108
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !108
  %cmp = icmp uge i8* %0, %1, !dbg !108
  %conv1 = zext i1 %cmp to i64, !dbg !108
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !108
  %tobool = icmp eq i64 %expval, 0, !dbg !108
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !108

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !108
  br label %cond.end, !dbg !108

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !108
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !108
  %2 = load i8, i8* %0, align 1, !dbg !108
  %conv3 = zext i8 %2 to i32, !dbg !108
  br label %cond.end, !dbg !108

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !108
  ret i32 %cond, !dbg !109
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !110 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !112, metadata !DIExpression()), !dbg !113
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !114
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !114
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !114
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !114
  %cmp = icmp uge i8* %0, %1, !dbg !114
  %conv1 = zext i1 %cmp to i64, !dbg !114
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !114
  %tobool = icmp eq i64 %expval, 0, !dbg !114
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !114

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !114
  br label %cond.end, !dbg !114

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !114
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !114
  %2 = load i8, i8* %0, align 1, !dbg !114
  %conv3 = zext i8 %2 to i32, !dbg !114
  br label %cond.end, !dbg !114

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !114
  ret i32 %cond, !dbg !115
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !116 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !117
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !117
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !117
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !117
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !117
  %cmp = icmp uge i8* %1, %2, !dbg !117
  %conv1 = zext i1 %cmp to i64, !dbg !117
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !117
  %tobool = icmp eq i64 %expval, 0, !dbg !117
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !117

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !117
  br label %cond.end, !dbg !117

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !117
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !117
  %3 = load i8, i8* %1, align 1, !dbg !117
  %conv3 = zext i8 %3 to i32, !dbg !117
  br label %cond.end, !dbg !117

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !117
  ret i32 %cond, !dbg !118
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !119 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !125
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !126
  ret i32 %call, !dbg !127
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !128 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !132, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !133, metadata !DIExpression()), !dbg !134
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !135
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !135
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !135
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !135
  %cmp = icmp uge i8* %0, %1, !dbg !135
  %conv1 = zext i1 %cmp to i64, !dbg !135
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !135
  %tobool = icmp eq i64 %expval, 0, !dbg !135
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !135

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !135
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !135
  br label %cond.end, !dbg !135

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !135
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !135
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !135
  store i8 %conv2, i8* %0, align 1, !dbg !135
  %conv6 = and i32 %__c, 255, !dbg !135
  br label %cond.end, !dbg !135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !135
  ret i32 %cond, !dbg !136
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !137 {
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !144 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !148
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !148
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !148
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !148
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !148
  %cmp = icmp uge i8* %1, %2, !dbg !148
  %conv1 = zext i1 %cmp to i64, !dbg !148
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !148
  %tobool = icmp eq i64 %expval, 0, !dbg !148
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !148

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !148
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !148
  br label %cond.end, !dbg !148

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !148
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !148
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !148
  store i8 %conv4, i8* %1, align 1, !dbg !148
  %conv6 = and i32 %__c, 255, !dbg !148
  br label %cond.end, !dbg !148

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !148
  ret i32 %cond, !dbg !149
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !150 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !156, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i64* %__n, metadata !157, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !158, metadata !DIExpression()), !dbg !159
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !160
  ret i64 %call, !dbg !161
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !162 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !164, metadata !DIExpression()), !dbg !165
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !166
  %0 = load i32, i32* %_flags, align 8, !dbg !166
  %and = lshr i32 %0, 4, !dbg !166
  %and.lobit = and i32 %and, 1, !dbg !166
  ret i32 %and.lobit, !dbg !167
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !170, metadata !DIExpression()), !dbg !171
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !172
  %0 = load i32, i32* %_flags, align 8, !dbg !172
  %and = lshr i32 %0, 5, !dbg !172
  %and.lobit = and i32 %and, 1, !dbg !172
  ret i32 %and.lobit, !dbg !173
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !179, metadata !DIExpression()), !dbg !180
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !181
  %conv = trunc i64 %call to i32, !dbg !182
  ret i32 %conv, !dbg !183
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !184 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !188, metadata !DIExpression()), !dbg !189
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !190
  ret i64 %call, !dbg !191
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !192 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !197, metadata !DIExpression()), !dbg !198
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !199
  ret i64 %call, !dbg !200
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !201 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !212, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i8* %__base, metadata !213, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !214, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i64 %__size, metadata !215, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !216, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i64 0, metadata !217, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !218, metadata !DIExpression()), !dbg !222
  br label %while.cond, !dbg !223

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !224
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !222
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !218, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !217, metadata !DIExpression()), !dbg !222
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !225
  br i1 %cmp, label %while.body, label %cleanup, !dbg !223

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !226
  %div = lshr i64 %add, 1, !dbg !228
  call void @llvm.dbg.value(metadata i64 %div, metadata !219, metadata !DIExpression()), !dbg !222
  %mul = mul i64 %div, %__size, !dbg !229
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !230
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !220, metadata !DIExpression()), !dbg !222
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !231
  call void @llvm.dbg.value(metadata i32 %call, metadata !221, metadata !DIExpression()), !dbg !222
  %cmp1 = icmp slt i32 %call, 0, !dbg !232
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !234

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !235
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !237

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !238
  call void @llvm.dbg.value(metadata i64 %add4, metadata !217, metadata !DIExpression()), !dbg !222
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !222
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !222
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !218, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !217, metadata !DIExpression()), !dbg !222
  br label %while.cond, !dbg !223, !llvm.loop !239

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !222
  ret i8* %retval.0, !dbg !241
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !242 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !248, metadata !DIExpression()), !dbg !249
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !250
  ret double %call, !dbg !251
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @lrealpath(i8* %filename) local_unnamed_addr #3 !dbg !252 {
entry:
  call void @llvm.dbg.value(metadata i8* %filename, metadata !256, metadata !DIExpression()), !dbg !257
  %call = tail call i8* @strdup(i8* %filename) #5, !dbg !258
  ret i8* %call, !dbg !259
}

declare dso_local i8* @strdup(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "lrealpath.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !6, !7, !10, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!17 = distinct !DISubprogram(name: "vprintf", scope: !18, file: !18, line: 39, type: !19, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!19 = !DISubroutineType(types: !20)
!20 = !{!6, !21, !22}
!21 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !24)
!24 = !{!25, !27, !28, !29}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !23, file: !1, baseType: !26, size: 32)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !23, file: !1, baseType: !26, size: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !23, file: !1, baseType: !10, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !23, file: !1, baseType: !10, size: 64, offset: 128)
!30 = !{!31, !32}
!31 = !DILocalVariable(name: "__fmt", arg: 1, scope: !17, file: !18, line: 39, type: !21)
!32 = !DILocalVariable(name: "__arg", arg: 2, scope: !17, file: !18, line: 39, type: !22)
!33 = !DILocation(line: 0, scope: !17)
!34 = !DILocation(line: 41, column: 20, scope: !17)
!35 = !DILocation(line: 41, column: 10, scope: !17)
!36 = !DILocation(line: 41, column: 3, scope: !17)
!37 = distinct !DISubprogram(name: "getchar", scope: !18, file: !18, line: 47, type: !38, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!6}
!40 = !DILocation(line: 49, column: 16, scope: !37)
!41 = !DILocation(line: 49, column: 10, scope: !37)
!42 = !DILocation(line: 49, column: 3, scope: !37)
!43 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !18, file: !18, line: 56, type: !44, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!44 = !DISubroutineType(types: !45)
!45 = !{!6, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !48, line: 7, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !50, line: 49, size: 1728, elements: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !69, !70, !71, !75, !77, !79, !83, !86, !88, !91, !94, !95, !96, !100, !101}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !49, file: !50, line: 51, baseType: !6, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !49, file: !50, line: 54, baseType: !8, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !49, file: !50, line: 55, baseType: !8, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !49, file: !50, line: 56, baseType: !8, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !49, file: !50, line: 57, baseType: !8, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !49, file: !50, line: 58, baseType: !8, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !49, file: !50, line: 59, baseType: !8, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !49, file: !50, line: 60, baseType: !8, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !49, file: !50, line: 61, baseType: !8, size: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !49, file: !50, line: 64, baseType: !8, size: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !49, file: !50, line: 65, baseType: !8, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !49, file: !50, line: 66, baseType: !8, size: 64, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !49, file: !50, line: 68, baseType: !65, size: 64, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !50, line: 36, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !49, file: !50, line: 70, baseType: !68, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !49, file: !50, line: 72, baseType: !6, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !49, file: !50, line: 73, baseType: !6, size: 32, offset: 928)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !49, file: !50, line: 74, baseType: !72, size: 64, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !73, line: 152, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!74 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !49, file: !50, line: 77, baseType: !76, size: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !49, file: !50, line: 78, baseType: !78, size: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !49, file: !50, line: 79, baseType: !80, size: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !49, file: !50, line: 81, baseType: !84, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !50, line: 43, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !49, file: !50, line: 89, baseType: !87, size: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 153, baseType: !74)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !49, file: !50, line: 91, baseType: !89, size: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !50, line: 37, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !49, file: !50, line: 92, baseType: !92, size: 64, offset: 1280)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !50, line: 38, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !49, file: !50, line: 93, baseType: !68, size: 64, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !49, file: !50, line: 94, baseType: !10, size: 64, offset: 1408)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !49, file: !50, line: 95, baseType: !97, size: 64, offset: 1472)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!99 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !49, file: !50, line: 96, baseType: !6, size: 32, offset: 1536)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !49, file: !50, line: 98, baseType: !102, size: 160, offset: 1568)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 20)
!105 = !{!106}
!106 = !DILocalVariable(name: "__fp", arg: 1, scope: !43, file: !18, line: 56, type: !46)
!107 = !DILocation(line: 0, scope: !43)
!108 = !DILocation(line: 58, column: 10, scope: !43)
!109 = !DILocation(line: 58, column: 3, scope: !43)
!110 = distinct !DISubprogram(name: "getc_unlocked", scope: !18, file: !18, line: 66, type: !44, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!111 = !{!112}
!112 = !DILocalVariable(name: "__fp", arg: 1, scope: !110, file: !18, line: 66, type: !46)
!113 = !DILocation(line: 0, scope: !110)
!114 = !DILocation(line: 68, column: 10, scope: !110)
!115 = !DILocation(line: 68, column: 3, scope: !110)
!116 = distinct !DISubprogram(name: "getchar_unlocked", scope: !18, file: !18, line: 73, type: !38, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!117 = !DILocation(line: 75, column: 10, scope: !116)
!118 = !DILocation(line: 75, column: 3, scope: !116)
!119 = distinct !DISubprogram(name: "putchar", scope: !18, file: !18, line: 82, type: !120, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!6, !6}
!122 = !{!123}
!123 = !DILocalVariable(name: "__c", arg: 1, scope: !119, file: !18, line: 82, type: !6)
!124 = !DILocation(line: 0, scope: !119)
!125 = !DILocation(line: 84, column: 21, scope: !119)
!126 = !DILocation(line: 84, column: 10, scope: !119)
!127 = !DILocation(line: 84, column: 3, scope: !119)
!128 = distinct !DISubprogram(name: "fputc_unlocked", scope: !18, file: !18, line: 91, type: !129, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{!6, !6, !46}
!131 = !{!132, !133}
!132 = !DILocalVariable(name: "__c", arg: 1, scope: !128, file: !18, line: 91, type: !6)
!133 = !DILocalVariable(name: "__stream", arg: 2, scope: !128, file: !18, line: 91, type: !46)
!134 = !DILocation(line: 0, scope: !128)
!135 = !DILocation(line: 93, column: 10, scope: !128)
!136 = !DILocation(line: 93, column: 3, scope: !128)
!137 = distinct !DISubprogram(name: "putc_unlocked", scope: !18, file: !18, line: 101, type: !129, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "__c", arg: 1, scope: !137, file: !18, line: 101, type: !6)
!140 = !DILocalVariable(name: "__stream", arg: 2, scope: !137, file: !18, line: 101, type: !46)
!141 = !DILocation(line: 0, scope: !137)
!142 = !DILocation(line: 103, column: 10, scope: !137)
!143 = !DILocation(line: 103, column: 3, scope: !137)
!144 = distinct !DISubprogram(name: "putchar_unlocked", scope: !18, file: !18, line: 108, type: !120, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146}
!146 = !DILocalVariable(name: "__c", arg: 1, scope: !144, file: !18, line: 108, type: !6)
!147 = !DILocation(line: 0, scope: !144)
!148 = !DILocation(line: 110, column: 10, scope: !144)
!149 = !DILocation(line: 110, column: 3, scope: !144)
!150 = distinct !DISubprogram(name: "getline", scope: !18, file: !18, line: 118, type: !151, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !7, !154, !46}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !73, line: 193, baseType: !74)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!155 = !{!156, !157, !158}
!156 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !150, file: !18, line: 118, type: !7)
!157 = !DILocalVariable(name: "__n", arg: 2, scope: !150, file: !18, line: 118, type: !154)
!158 = !DILocalVariable(name: "__stream", arg: 3, scope: !150, file: !18, line: 118, type: !46)
!159 = !DILocation(line: 0, scope: !150)
!160 = !DILocation(line: 120, column: 10, scope: !150)
!161 = !DILocation(line: 120, column: 3, scope: !150)
!162 = distinct !DISubprogram(name: "feof_unlocked", scope: !18, file: !18, line: 128, type: !44, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!163 = !{!164}
!164 = !DILocalVariable(name: "__stream", arg: 1, scope: !162, file: !18, line: 128, type: !46)
!165 = !DILocation(line: 0, scope: !162)
!166 = !DILocation(line: 130, column: 10, scope: !162)
!167 = !DILocation(line: 130, column: 3, scope: !162)
!168 = distinct !DISubprogram(name: "ferror_unlocked", scope: !18, file: !18, line: 135, type: !44, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "__stream", arg: 1, scope: !168, file: !18, line: 135, type: !46)
!171 = !DILocation(line: 0, scope: !168)
!172 = !DILocation(line: 137, column: 10, scope: !168)
!173 = !DILocation(line: 137, column: 3, scope: !168)
!174 = distinct !DISubprogram(name: "atoi", scope: !175, file: !175, line: 361, type: !176, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !178)
!175 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!176 = !DISubroutineType(types: !177)
!177 = !{!6, !11}
!178 = !{!179}
!179 = !DILocalVariable(name: "__nptr", arg: 1, scope: !174, file: !175, line: 361, type: !11)
!180 = !DILocation(line: 0, scope: !174)
!181 = !DILocation(line: 363, column: 16, scope: !174)
!182 = !DILocation(line: 363, column: 10, scope: !174)
!183 = !DILocation(line: 363, column: 3, scope: !174)
!184 = distinct !DISubprogram(name: "atol", scope: !175, file: !175, line: 366, type: !185, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{!74, !11}
!187 = !{!188}
!188 = !DILocalVariable(name: "__nptr", arg: 1, scope: !184, file: !175, line: 366, type: !11)
!189 = !DILocation(line: 0, scope: !184)
!190 = !DILocation(line: 368, column: 10, scope: !184)
!191 = !DILocation(line: 368, column: 3, scope: !184)
!192 = distinct !DISubprogram(name: "atoll", scope: !175, file: !175, line: 373, type: !193, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !196)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !11}
!195 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!196 = !{!197}
!197 = !DILocalVariable(name: "__nptr", arg: 1, scope: !192, file: !175, line: 373, type: !11)
!198 = !DILocation(line: 0, scope: !192)
!199 = !DILocation(line: 375, column: 10, scope: !192)
!200 = !DILocation(line: 375, column: 3, scope: !192)
!201 = distinct !DISubprogram(name: "bsearch", scope: !202, file: !202, line: 20, type: !203, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !211)
!202 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!203 = !DISubroutineType(types: !204)
!204 = !{!10, !205, !205, !97, !97, !207}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !175, line: 808, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!6, !205, !205}
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!212 = !DILocalVariable(name: "__key", arg: 1, scope: !201, file: !202, line: 20, type: !205)
!213 = !DILocalVariable(name: "__base", arg: 2, scope: !201, file: !202, line: 20, type: !205)
!214 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !201, file: !202, line: 20, type: !97)
!215 = !DILocalVariable(name: "__size", arg: 4, scope: !201, file: !202, line: 20, type: !97)
!216 = !DILocalVariable(name: "__compar", arg: 5, scope: !201, file: !202, line: 21, type: !207)
!217 = !DILocalVariable(name: "__l", scope: !201, file: !202, line: 23, type: !97)
!218 = !DILocalVariable(name: "__u", scope: !201, file: !202, line: 23, type: !97)
!219 = !DILocalVariable(name: "__idx", scope: !201, file: !202, line: 23, type: !97)
!220 = !DILocalVariable(name: "__p", scope: !201, file: !202, line: 24, type: !205)
!221 = !DILocalVariable(name: "__comparison", scope: !201, file: !202, line: 25, type: !6)
!222 = !DILocation(line: 0, scope: !201)
!223 = !DILocation(line: 29, column: 3, scope: !201)
!224 = !DILocation(line: 27, column: 7, scope: !201)
!225 = !DILocation(line: 29, column: 14, scope: !201)
!226 = !DILocation(line: 31, column: 20, scope: !227)
!227 = distinct !DILexicalBlock(scope: !201, file: !202, line: 30, column: 5)
!228 = !DILocation(line: 31, column: 27, scope: !227)
!229 = !DILocation(line: 32, column: 56, scope: !227)
!230 = !DILocation(line: 32, column: 47, scope: !227)
!231 = !DILocation(line: 33, column: 22, scope: !227)
!232 = !DILocation(line: 34, column: 24, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !202, line: 34, column: 11)
!234 = !DILocation(line: 34, column: 11, scope: !227)
!235 = !DILocation(line: 36, column: 29, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !202, line: 36, column: 16)
!237 = !DILocation(line: 36, column: 16, scope: !233)
!238 = !DILocation(line: 37, column: 14, scope: !236)
!239 = distinct !{!239, !223, !240}
!240 = !DILocation(line: 40, column: 5, scope: !201)
!241 = !DILocation(line: 43, column: 1, scope: !201)
!242 = distinct !DISubprogram(name: "atof", scope: !243, file: !243, line: 25, type: !244, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !247)
!243 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!244 = !DISubroutineType(types: !245)
!245 = !{!246, !11}
!246 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!247 = !{!248}
!248 = !DILocalVariable(name: "__nptr", arg: 1, scope: !242, file: !243, line: 25, type: !11)
!249 = !DILocation(line: 0, scope: !242)
!250 = !DILocation(line: 27, column: 10, scope: !242)
!251 = !DILocation(line: 27, column: 3, scope: !242)
!252 = distinct !DISubprogram(name: "lrealpath", scope: !1, file: !1, line: 76, type: !253, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!8, !11}
!255 = !{!256}
!256 = !DILocalVariable(name: "filename", arg: 1, scope: !252, file: !1, line: 76, type: !11)
!257 = !DILocation(line: 0, scope: !252)
!258 = !DILocation(line: 158, column: 10, scope: !252)
!259 = !DILocation(line: 158, column: 3, scope: !252)
