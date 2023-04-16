; ModuleID = 'xmalloc.bc'
source_filename = "xmalloc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@name = internal unnamed_addr global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), align 8, !dbg !0
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0A%s%sout of memory allocating %lu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !35, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !36, metadata !DIExpression()), !dbg !37
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !38
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !39
  ret i32 %call, !dbg !40
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !41 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !44
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !45
  ret i32 %call, !dbg !46
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !109, metadata !DIExpression()), !dbg !110
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !111
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !111
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !111
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !111
  %cmp = icmp uge i8* %0, %1, !dbg !111
  %conv1 = zext i1 %cmp to i64, !dbg !111
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !111
  %tobool = icmp eq i64 %expval, 0, !dbg !111
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !111

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !111
  br label %cond.end, !dbg !111

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !111
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !111
  %2 = load i8, i8* %0, align 1, !dbg !111
  %conv3 = zext i8 %2 to i32, !dbg !111
  br label %cond.end, !dbg !111

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !111
  ret i32 %cond, !dbg !112
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !113 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !115, metadata !DIExpression()), !dbg !116
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !117
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !117
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !117
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !117
  %cmp = icmp uge i8* %0, %1, !dbg !117
  %conv1 = zext i1 %cmp to i64, !dbg !117
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !117
  %tobool = icmp eq i64 %expval, 0, !dbg !117
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !117

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !117
  br label %cond.end, !dbg !117

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !117
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !117
  %2 = load i8, i8* %0, align 1, !dbg !117
  %conv3 = zext i8 %2 to i32, !dbg !117
  br label %cond.end, !dbg !117

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !117
  ret i32 %cond, !dbg !118
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !119 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !120
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !120
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !120
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !120
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !120
  %cmp = icmp uge i8* %1, %2, !dbg !120
  %conv1 = zext i1 %cmp to i64, !dbg !120
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !120
  %tobool = icmp eq i64 %expval, 0, !dbg !120
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !120

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !120
  br label %cond.end, !dbg !120

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !120
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !120
  %3 = load i8, i8* %1, align 1, !dbg !120
  %conv3 = zext i8 %3 to i32, !dbg !120
  br label %cond.end, !dbg !120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !120
  ret i32 %cond, !dbg !121
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !122 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !128
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !129
  ret i32 %call, !dbg !130
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !131 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !135, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !136, metadata !DIExpression()), !dbg !137
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !138
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !138
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !138
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !138
  %cmp = icmp uge i8* %0, %1, !dbg !138
  %conv1 = zext i1 %cmp to i64, !dbg !138
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !138
  %tobool = icmp eq i64 %expval, 0, !dbg !138
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !138

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !138
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !138
  br label %cond.end, !dbg !138

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !138
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !138
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !138
  store i8 %conv2, i8* %0, align 1, !dbg !138
  %conv6 = and i32 %__c, 255, !dbg !138
  br label %cond.end, !dbg !138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !138
  ret i32 %cond, !dbg !139
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !140 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !142, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !143, metadata !DIExpression()), !dbg !144
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !145
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !145
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !145
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !145
  %cmp = icmp uge i8* %0, %1, !dbg !145
  %conv1 = zext i1 %cmp to i64, !dbg !145
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !145
  %tobool = icmp eq i64 %expval, 0, !dbg !145
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !145

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !145
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !145
  br label %cond.end, !dbg !145

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !145
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !145
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !145
  store i8 %conv2, i8* %0, align 1, !dbg !145
  %conv6 = and i32 %__c, 255, !dbg !145
  br label %cond.end, !dbg !145

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !145
  ret i32 %cond, !dbg !146
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !147 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !151
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !151
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !151
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !151
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !151
  %cmp = icmp uge i8* %1, %2, !dbg !151
  %conv1 = zext i1 %cmp to i64, !dbg !151
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !151
  %tobool = icmp eq i64 %expval, 0, !dbg !151
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !151

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !151
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !151
  br label %cond.end, !dbg !151

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !151
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !151
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !151
  store i8 %conv4, i8* %1, align 1, !dbg !151
  %conv6 = and i32 %__c, 255, !dbg !151
  br label %cond.end, !dbg !151

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !151
  ret i32 %cond, !dbg !152
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !153 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !159, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i64* %__n, metadata !160, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !161, metadata !DIExpression()), !dbg !162
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !163
  ret i64 %call, !dbg !164
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !165 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !167, metadata !DIExpression()), !dbg !168
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !169
  %0 = load i32, i32* %_flags, align 8, !dbg !169
  %and = lshr i32 %0, 4, !dbg !169
  %and.lobit = and i32 %and, 1, !dbg !169
  ret i32 %and.lobit, !dbg !170
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !171 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !173, metadata !DIExpression()), !dbg !174
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !175
  %0 = load i32, i32* %_flags, align 8, !dbg !175
  %and = lshr i32 %0, 5, !dbg !175
  %and.lobit = and i32 %and, 1, !dbg !175
  ret i32 %and.lobit, !dbg !176
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !182, metadata !DIExpression()), !dbg !183
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !184
  %conv = trunc i64 %call to i32, !dbg !185
  ret i32 %conv, !dbg !186
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !191, metadata !DIExpression()), !dbg !192
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !193
  ret i64 %call, !dbg !194
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !195 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !200, metadata !DIExpression()), !dbg !201
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !202
  ret i64 %call, !dbg !203
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !215, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i8* %__base, metadata !216, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !217, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %__size, metadata !218, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !221, metadata !DIExpression()), !dbg !225
  br label %while.cond, !dbg !226

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !227
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !225
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !220, metadata !DIExpression()), !dbg !225
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !228
  br i1 %cmp, label %while.body, label %cleanup, !dbg !226

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !229
  %div = lshr i64 %add, 1, !dbg !231
  call void @llvm.dbg.value(metadata i64 %div, metadata !222, metadata !DIExpression()), !dbg !225
  %mul = mul i64 %div, %__size, !dbg !232
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !233
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !223, metadata !DIExpression()), !dbg !225
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !234
  call void @llvm.dbg.value(metadata i32 %call, metadata !224, metadata !DIExpression()), !dbg !225
  %cmp1 = icmp slt i32 %call, 0, !dbg !235
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !237

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !238
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !240

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !241
  call void @llvm.dbg.value(metadata i64 %add4, metadata !220, metadata !DIExpression()), !dbg !225
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !225
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !225
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !220, metadata !DIExpression()), !dbg !225
  br label %while.cond, !dbg !226, !llvm.loop !242

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !225
  ret i8* %retval.0, !dbg !244
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !245 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !251, metadata !DIExpression()), !dbg !252
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !253
  ret double %call, !dbg !254
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @xmalloc_set_program_name(i8* %s) local_unnamed_addr #3 !dbg !255 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !259, metadata !DIExpression()), !dbg !260
  store i8* %s, i8** @name, align 8, !dbg !261
  ret void, !dbg !262
}

; Function Attrs: nounwind uwtable
define dso_local void @xmalloc_failed(i64 %size) local_unnamed_addr #3 !dbg !263 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !269
  %1 = load i8*, i8** @name, align 8, !dbg !270
  %2 = load i8, i8* %1, align 1, !dbg !271
  %tobool = icmp eq i8 %2, 0, !dbg !271
  %cond = select i1 %tobool, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), !dbg !271
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %1, i8* %cond, i64 %size) #5, !dbg !272
  tail call void @xexit(i32 1) #5, !dbg !273
  ret void, !dbg !274
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local void @xexit(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @xmalloc(i64 %size) local_unnamed_addr #3 !dbg !275 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !279, metadata !DIExpression()), !dbg !281
  %cmp = icmp eq i64 %size, 0, !dbg !282
  %spec.select = select i1 %cmp, i64 1, i64 %size, !dbg !284
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !279, metadata !DIExpression()), !dbg !281
  %call = tail call i8* @malloc(i64 %spec.select) #5, !dbg !285
  call void @llvm.dbg.value(metadata i8* %call, metadata !280, metadata !DIExpression()), !dbg !281
  %tobool = icmp eq i8* %call, null, !dbg !286
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !288

if.then1:                                         ; preds = %entry
  tail call void @xmalloc_failed(i64 %spec.select) #6, !dbg !289
  br label %if.end2, !dbg !289

if.end2:                                          ; preds = %entry, %if.then1
  ret i8* %call, !dbg !290
}

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @xcalloc(i64 %nelem, i64 %elsize) local_unnamed_addr #3 !dbg !291 {
entry:
  call void @llvm.dbg.value(metadata i64 %nelem, metadata !295, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %elsize, metadata !296, metadata !DIExpression()), !dbg !298
  %cmp = icmp eq i64 %nelem, 0, !dbg !299
  %cmp1 = icmp eq i64 %elsize, 0, !dbg !301
  %or.cond = or i1 %cmp, %cmp1, !dbg !302
  %elsize.addr.0 = select i1 %or.cond, i64 1, i64 %elsize, !dbg !302
  %nelem.addr.0 = select i1 %or.cond, i64 1, i64 %nelem, !dbg !302
  call void @llvm.dbg.value(metadata i64 %nelem.addr.0, metadata !295, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %elsize.addr.0, metadata !296, metadata !DIExpression()), !dbg !298
  %call = tail call i8* @calloc(i64 %nelem.addr.0, i64 %elsize.addr.0) #5, !dbg !303
  call void @llvm.dbg.value(metadata i8* %call, metadata !297, metadata !DIExpression()), !dbg !298
  %tobool = icmp eq i8* %call, null, !dbg !304
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !306

if.then2:                                         ; preds = %entry
  %mul = mul i64 %nelem.addr.0, %elsize.addr.0, !dbg !307
  tail call void @xmalloc_failed(i64 %mul) #6, !dbg !308
  br label %if.end3, !dbg !308

if.end3:                                          ; preds = %entry, %if.then2
  ret i8* %call, !dbg !309
}

declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @xrealloc(i8* %oldmem, i64 %size) local_unnamed_addr #3 !dbg !310 {
entry:
  call void @llvm.dbg.value(metadata i8* %oldmem, metadata !314, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i64 %size, metadata !315, metadata !DIExpression()), !dbg !317
  %cmp = icmp eq i64 %size, 0, !dbg !318
  %spec.select = select i1 %cmp, i64 1, i64 %size, !dbg !320
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !315, metadata !DIExpression()), !dbg !317
  %tobool = icmp eq i8* %oldmem, null, !dbg !321
  br i1 %tobool, label %if.then1, label %if.else, !dbg !323

if.then1:                                         ; preds = %entry
  %call = tail call i8* @malloc(i64 %spec.select) #5, !dbg !324
  call void @llvm.dbg.value(metadata i8* %call, metadata !316, metadata !DIExpression()), !dbg !317
  br label %if.end3, !dbg !325

if.else:                                          ; preds = %entry
  %call2 = tail call i8* @realloc(i8* nonnull %oldmem, i64 %spec.select) #5, !dbg !326
  call void @llvm.dbg.value(metadata i8* %call2, metadata !316, metadata !DIExpression()), !dbg !317
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %newmem.0 = phi i8* [ %call2, %if.else ], [ %call, %if.then1 ], !dbg !327
  call void @llvm.dbg.value(metadata i8* %newmem.0, metadata !316, metadata !DIExpression()), !dbg !317
  %tobool4 = icmp eq i8* %newmem.0, null, !dbg !328
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !330

if.then5:                                         ; preds = %if.end3
  tail call void @xmalloc_failed(i64 %spec.select) #6, !dbg !331
  br label %if.end6, !dbg !331

if.end6:                                          ; preds = %if.end3, %if.then5
  ret i8* %newmem.0, !dbg !332
}

declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

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
!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "name", scope: !2, file: !3, line: 97, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !16, nameTableKind: None)
!3 = !DIFile(filename: "xmalloc.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13, !15}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !{!0}
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!21 = distinct !DISubprogram(name: "vprintf", scope: !22, file: !22, line: 39, type: !23, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !34)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!23 = !DISubroutineType(types: !24)
!24 = !{!8, !25, !26}
!25 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !28)
!28 = !{!29, !31, !32, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !27, file: !3, baseType: !30, size: 32)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !27, file: !3, baseType: !30, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !27, file: !3, baseType: !12, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !27, file: !3, baseType: !12, size: 64, offset: 128)
!34 = !{!35, !36}
!35 = !DILocalVariable(name: "__fmt", arg: 1, scope: !21, file: !22, line: 39, type: !25)
!36 = !DILocalVariable(name: "__arg", arg: 2, scope: !21, file: !22, line: 39, type: !26)
!37 = !DILocation(line: 0, scope: !21)
!38 = !DILocation(line: 41, column: 20, scope: !21)
!39 = !DILocation(line: 41, column: 10, scope: !21)
!40 = !DILocation(line: 41, column: 3, scope: !21)
!41 = distinct !DISubprogram(name: "getchar", scope: !22, file: !22, line: 47, type: !42, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!42 = !DISubroutineType(types: !43)
!43 = !{!8}
!44 = !DILocation(line: 49, column: 16, scope: !41)
!45 = !DILocation(line: 49, column: 10, scope: !41)
!46 = !DILocation(line: 49, column: 3, scope: !41)
!47 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !22, file: !22, line: 56, type: !48, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !108)
!48 = !DISubroutineType(types: !49)
!49 = !{!8, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !52, line: 7, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !71, !73, !74, !75, !79, !81, !83, !87, !90, !92, !95, !98, !99, !100, !103, !104}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 51, baseType: !8, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 54, baseType: !10, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !53, file: !54, line: 55, baseType: !10, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !53, file: !54, line: 56, baseType: !10, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !53, file: !54, line: 57, baseType: !10, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !53, file: !54, line: 58, baseType: !10, size: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !53, file: !54, line: 59, baseType: !10, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !53, file: !54, line: 60, baseType: !10, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !53, file: !54, line: 61, baseType: !10, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !53, file: !54, line: 64, baseType: !10, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !53, file: !54, line: 65, baseType: !10, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !53, file: !54, line: 66, baseType: !10, size: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !53, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !54, line: 36, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !53, file: !54, line: 70, baseType: !72, size: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !53, file: !54, line: 72, baseType: !8, size: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !53, file: !54, line: 73, baseType: !8, size: 32, offset: 928)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !53, file: !54, line: 74, baseType: !76, size: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !77, line: 152, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!78 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 77, baseType: !80, size: 16, offset: 1024)
!80 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 78, baseType: !82, size: 8, offset: 1040)
!82 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 79, baseType: !84, size: 8, offset: 1048)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 81, baseType: !88, size: 64, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 43, baseType: null)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 89, baseType: !91, size: 64, offset: 1152)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !77, line: 153, baseType: !78)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !53, file: !54, line: 91, baseType: !93, size: 64, offset: 1216)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !54, line: 37, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !53, file: !54, line: 92, baseType: !96, size: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !54, line: 38, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !53, file: !54, line: 93, baseType: !72, size: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !53, file: !54, line: 94, baseType: !12, size: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !15)
!102 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 96, baseType: !8, size: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 98, baseType: !105, size: 160, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !{!109}
!109 = !DILocalVariable(name: "__fp", arg: 1, scope: !47, file: !22, line: 56, type: !50)
!110 = !DILocation(line: 0, scope: !47)
!111 = !DILocation(line: 58, column: 10, scope: !47)
!112 = !DILocation(line: 58, column: 3, scope: !47)
!113 = distinct !DISubprogram(name: "getc_unlocked", scope: !22, file: !22, line: 66, type: !48, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!114 = !{!115}
!115 = !DILocalVariable(name: "__fp", arg: 1, scope: !113, file: !22, line: 66, type: !50)
!116 = !DILocation(line: 0, scope: !113)
!117 = !DILocation(line: 68, column: 10, scope: !113)
!118 = !DILocation(line: 68, column: 3, scope: !113)
!119 = distinct !DISubprogram(name: "getchar_unlocked", scope: !22, file: !22, line: 73, type: !42, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!120 = !DILocation(line: 75, column: 10, scope: !119)
!121 = !DILocation(line: 75, column: 3, scope: !119)
!122 = distinct !DISubprogram(name: "putchar", scope: !22, file: !22, line: 82, type: !123, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!8, !8}
!125 = !{!126}
!126 = !DILocalVariable(name: "__c", arg: 1, scope: !122, file: !22, line: 82, type: !8)
!127 = !DILocation(line: 0, scope: !122)
!128 = !DILocation(line: 84, column: 21, scope: !122)
!129 = !DILocation(line: 84, column: 10, scope: !122)
!130 = !DILocation(line: 84, column: 3, scope: !122)
!131 = distinct !DISubprogram(name: "fputc_unlocked", scope: !22, file: !22, line: 91, type: !132, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!8, !8, !50}
!134 = !{!135, !136}
!135 = !DILocalVariable(name: "__c", arg: 1, scope: !131, file: !22, line: 91, type: !8)
!136 = !DILocalVariable(name: "__stream", arg: 2, scope: !131, file: !22, line: 91, type: !50)
!137 = !DILocation(line: 0, scope: !131)
!138 = !DILocation(line: 93, column: 10, scope: !131)
!139 = !DILocation(line: 93, column: 3, scope: !131)
!140 = distinct !DISubprogram(name: "putc_unlocked", scope: !22, file: !22, line: 101, type: !132, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "__c", arg: 1, scope: !140, file: !22, line: 101, type: !8)
!143 = !DILocalVariable(name: "__stream", arg: 2, scope: !140, file: !22, line: 101, type: !50)
!144 = !DILocation(line: 0, scope: !140)
!145 = !DILocation(line: 103, column: 10, scope: !140)
!146 = !DILocation(line: 103, column: 3, scope: !140)
!147 = distinct !DISubprogram(name: "putchar_unlocked", scope: !22, file: !22, line: 108, type: !123, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!148 = !{!149}
!149 = !DILocalVariable(name: "__c", arg: 1, scope: !147, file: !22, line: 108, type: !8)
!150 = !DILocation(line: 0, scope: !147)
!151 = !DILocation(line: 110, column: 10, scope: !147)
!152 = !DILocation(line: 110, column: 3, scope: !147)
!153 = distinct !DISubprogram(name: "getline", scope: !22, file: !22, line: 118, type: !154, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !9, !157, !50}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !77, line: 193, baseType: !78)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!158 = !{!159, !160, !161}
!159 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !153, file: !22, line: 118, type: !9)
!160 = !DILocalVariable(name: "__n", arg: 2, scope: !153, file: !22, line: 118, type: !157)
!161 = !DILocalVariable(name: "__stream", arg: 3, scope: !153, file: !22, line: 118, type: !50)
!162 = !DILocation(line: 0, scope: !153)
!163 = !DILocation(line: 120, column: 10, scope: !153)
!164 = !DILocation(line: 120, column: 3, scope: !153)
!165 = distinct !DISubprogram(name: "feof_unlocked", scope: !22, file: !22, line: 128, type: !48, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !166)
!166 = !{!167}
!167 = !DILocalVariable(name: "__stream", arg: 1, scope: !165, file: !22, line: 128, type: !50)
!168 = !DILocation(line: 0, scope: !165)
!169 = !DILocation(line: 130, column: 10, scope: !165)
!170 = !DILocation(line: 130, column: 3, scope: !165)
!171 = distinct !DISubprogram(name: "ferror_unlocked", scope: !22, file: !22, line: 135, type: !48, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!172 = !{!173}
!173 = !DILocalVariable(name: "__stream", arg: 1, scope: !171, file: !22, line: 135, type: !50)
!174 = !DILocation(line: 0, scope: !171)
!175 = !DILocation(line: 137, column: 10, scope: !171)
!176 = !DILocation(line: 137, column: 3, scope: !171)
!177 = distinct !DISubprogram(name: "atoi", scope: !178, file: !178, line: 361, type: !179, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!178 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!179 = !DISubroutineType(types: !180)
!180 = !{!8, !13}
!181 = !{!182}
!182 = !DILocalVariable(name: "__nptr", arg: 1, scope: !177, file: !178, line: 361, type: !13)
!183 = !DILocation(line: 0, scope: !177)
!184 = !DILocation(line: 363, column: 16, scope: !177)
!185 = !DILocation(line: 363, column: 10, scope: !177)
!186 = !DILocation(line: 363, column: 3, scope: !177)
!187 = distinct !DISubprogram(name: "atol", scope: !178, file: !178, line: 366, type: !188, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{!78, !13}
!190 = !{!191}
!191 = !DILocalVariable(name: "__nptr", arg: 1, scope: !187, file: !178, line: 366, type: !13)
!192 = !DILocation(line: 0, scope: !187)
!193 = !DILocation(line: 368, column: 10, scope: !187)
!194 = !DILocation(line: 368, column: 3, scope: !187)
!195 = distinct !DISubprogram(name: "atoll", scope: !178, file: !178, line: 373, type: !196, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !13}
!198 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!199 = !{!200}
!200 = !DILocalVariable(name: "__nptr", arg: 1, scope: !195, file: !178, line: 373, type: !13)
!201 = !DILocation(line: 0, scope: !195)
!202 = !DILocation(line: 375, column: 10, scope: !195)
!203 = !DILocation(line: 375, column: 3, scope: !195)
!204 = distinct !DISubprogram(name: "bsearch", scope: !205, file: !205, line: 20, type: !206, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!206 = !DISubroutineType(types: !207)
!207 = !{!12, !208, !208, !101, !101, !210}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !178, line: 808, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!8, !208, !208}
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!215 = !DILocalVariable(name: "__key", arg: 1, scope: !204, file: !205, line: 20, type: !208)
!216 = !DILocalVariable(name: "__base", arg: 2, scope: !204, file: !205, line: 20, type: !208)
!217 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !204, file: !205, line: 20, type: !101)
!218 = !DILocalVariable(name: "__size", arg: 4, scope: !204, file: !205, line: 20, type: !101)
!219 = !DILocalVariable(name: "__compar", arg: 5, scope: !204, file: !205, line: 21, type: !210)
!220 = !DILocalVariable(name: "__l", scope: !204, file: !205, line: 23, type: !101)
!221 = !DILocalVariable(name: "__u", scope: !204, file: !205, line: 23, type: !101)
!222 = !DILocalVariable(name: "__idx", scope: !204, file: !205, line: 23, type: !101)
!223 = !DILocalVariable(name: "__p", scope: !204, file: !205, line: 24, type: !208)
!224 = !DILocalVariable(name: "__comparison", scope: !204, file: !205, line: 25, type: !8)
!225 = !DILocation(line: 0, scope: !204)
!226 = !DILocation(line: 29, column: 3, scope: !204)
!227 = !DILocation(line: 27, column: 7, scope: !204)
!228 = !DILocation(line: 29, column: 14, scope: !204)
!229 = !DILocation(line: 31, column: 20, scope: !230)
!230 = distinct !DILexicalBlock(scope: !204, file: !205, line: 30, column: 5)
!231 = !DILocation(line: 31, column: 27, scope: !230)
!232 = !DILocation(line: 32, column: 56, scope: !230)
!233 = !DILocation(line: 32, column: 47, scope: !230)
!234 = !DILocation(line: 33, column: 22, scope: !230)
!235 = !DILocation(line: 34, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !230, file: !205, line: 34, column: 11)
!237 = !DILocation(line: 34, column: 11, scope: !230)
!238 = !DILocation(line: 36, column: 29, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !205, line: 36, column: 16)
!240 = !DILocation(line: 36, column: 16, scope: !236)
!241 = !DILocation(line: 37, column: 14, scope: !239)
!242 = distinct !{!242, !226, !243}
!243 = !DILocation(line: 40, column: 5, scope: !204)
!244 = !DILocation(line: 43, column: 1, scope: !204)
!245 = distinct !DISubprogram(name: "atof", scope: !246, file: !246, line: 25, type: !247, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !250)
!246 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !13}
!249 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!250 = !{!251}
!251 = !DILocalVariable(name: "__nptr", arg: 1, scope: !245, file: !246, line: 25, type: !13)
!252 = !DILocation(line: 0, scope: !245)
!253 = !DILocation(line: 27, column: 10, scope: !245)
!254 = !DILocation(line: 27, column: 3, scope: !245)
!255 = distinct !DISubprogram(name: "xmalloc_set_program_name", scope: !3, file: !3, line: 106, type: !256, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !13}
!258 = !{!259}
!259 = !DILocalVariable(name: "s", arg: 1, scope: !255, file: !3, line: 106, type: !13)
!260 = !DILocation(line: 0, scope: !255)
!261 = !DILocation(line: 108, column: 8, scope: !255)
!262 = !DILocation(line: 114, column: 1, scope: !255)
!263 = distinct !DISubprogram(name: "xmalloc_failed", scope: !3, file: !3, line: 117, type: !264, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !101}
!266 = !{!267}
!267 = !DILocalVariable(name: "size", arg: 1, scope: !263, file: !3, line: 117, type: !101)
!268 = !DILocation(line: 0, scope: !263)
!269 = !DILocation(line: 132, column: 12, scope: !263)
!270 = !DILocation(line: 134, column: 5, scope: !263)
!271 = !DILocation(line: 134, column: 11, scope: !263)
!272 = !DILocation(line: 132, column: 3, scope: !263)
!273 = !DILocation(line: 137, column: 3, scope: !263)
!274 = !DILocation(line: 138, column: 1, scope: !263)
!275 = distinct !DISubprogram(name: "xmalloc", scope: !3, file: !3, line: 141, type: !276, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{!12, !101}
!278 = !{!279, !280}
!279 = !DILocalVariable(name: "size", arg: 1, scope: !275, file: !3, line: 141, type: !101)
!280 = !DILocalVariable(name: "newmem", scope: !275, file: !3, line: 143, type: !12)
!281 = !DILocation(line: 0, scope: !275)
!282 = !DILocation(line: 145, column: 12, scope: !283)
!283 = distinct !DILexicalBlock(scope: !275, file: !3, line: 145, column: 7)
!284 = !DILocation(line: 145, column: 7, scope: !275)
!285 = !DILocation(line: 147, column: 12, scope: !275)
!286 = !DILocation(line: 148, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !275, file: !3, line: 148, column: 7)
!288 = !DILocation(line: 148, column: 7, scope: !275)
!289 = !DILocation(line: 149, column: 5, scope: !287)
!290 = !DILocation(line: 151, column: 3, scope: !275)
!291 = distinct !DISubprogram(name: "xcalloc", scope: !3, file: !3, line: 155, type: !292, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{!12, !101, !101}
!294 = !{!295, !296, !297}
!295 = !DILocalVariable(name: "nelem", arg: 1, scope: !291, file: !3, line: 155, type: !101)
!296 = !DILocalVariable(name: "elsize", arg: 2, scope: !291, file: !3, line: 155, type: !101)
!297 = !DILocalVariable(name: "newmem", scope: !291, file: !3, line: 157, type: !12)
!298 = !DILocation(line: 0, scope: !291)
!299 = !DILocation(line: 159, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !291, file: !3, line: 159, column: 7)
!301 = !DILocation(line: 159, column: 28, scope: !300)
!302 = !DILocation(line: 159, column: 18, scope: !300)
!303 = !DILocation(line: 162, column: 12, scope: !291)
!304 = !DILocation(line: 163, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !291, file: !3, line: 163, column: 7)
!306 = !DILocation(line: 163, column: 7, scope: !291)
!307 = !DILocation(line: 164, column: 27, scope: !305)
!308 = !DILocation(line: 164, column: 5, scope: !305)
!309 = !DILocation(line: 166, column: 3, scope: !291)
!310 = distinct !DISubprogram(name: "xrealloc", scope: !3, file: !3, line: 170, type: !311, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{!12, !12, !101}
!313 = !{!314, !315, !316}
!314 = !DILocalVariable(name: "oldmem", arg: 1, scope: !310, file: !3, line: 170, type: !12)
!315 = !DILocalVariable(name: "size", arg: 2, scope: !310, file: !3, line: 170, type: !101)
!316 = !DILocalVariable(name: "newmem", scope: !310, file: !3, line: 172, type: !12)
!317 = !DILocation(line: 0, scope: !310)
!318 = !DILocation(line: 174, column: 12, scope: !319)
!319 = distinct !DILexicalBlock(scope: !310, file: !3, line: 174, column: 7)
!320 = !DILocation(line: 174, column: 7, scope: !310)
!321 = !DILocation(line: 176, column: 8, scope: !322)
!322 = distinct !DILexicalBlock(scope: !310, file: !3, line: 176, column: 7)
!323 = !DILocation(line: 176, column: 7, scope: !310)
!324 = !DILocation(line: 177, column: 14, scope: !322)
!325 = !DILocation(line: 177, column: 5, scope: !322)
!326 = !DILocation(line: 179, column: 14, scope: !322)
!327 = !DILocation(line: 0, scope: !322)
!328 = !DILocation(line: 180, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !310, file: !3, line: 180, column: 7)
!330 = !DILocation(line: 180, column: 7, scope: !310)
!331 = !DILocation(line: 181, column: 5, scope: !329)
!332 = !DILocation(line: 183, column: 3, scope: !310)
