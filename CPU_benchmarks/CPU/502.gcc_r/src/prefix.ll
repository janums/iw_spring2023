; ModuleID = 'prefix.bc'
source_filename = "prefix.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@std_prefix = internal unnamed_addr global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), align 8, !dbg !0
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_ROOT\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !20 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !34, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !37
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !38
  ret i32 %call, !dbg !39
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !40 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !43
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !44
  ret i32 %call, !dbg !45
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !46 {
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
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !180, metadata !DIExpression()), !dbg !181
  %__c.off = add i32 %__c, 128, !dbg !182
  %0 = icmp ult i32 %__c.off, 384, !dbg !182
  br i1 %0, label %cond.true, label %cond.end, !dbg !182

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !183
  %1 = load i32*, i32** %call, align 8, !dbg !184
  %idxprom = sext i32 %__c to i64, !dbg !185
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !185
  %2 = load i32, i32* %arrayidx, align 4, !dbg !185
  br label %cond.end, !dbg !186

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !186
  ret i32 %cond, !dbg !187
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !188 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !190, metadata !DIExpression()), !dbg !191
  %__c.off = add i32 %__c, 128, !dbg !192
  %0 = icmp ult i32 %__c.off, 384, !dbg !192
  br i1 %0, label %cond.true, label %cond.end, !dbg !192

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !193
  %1 = load i32*, i32** %call, align 8, !dbg !194
  %idxprom = sext i32 %__c to i64, !dbg !195
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !195
  %2 = load i32, i32* %arrayidx, align 4, !dbg !195
  br label %cond.end, !dbg !196

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !196
  ret i32 %cond, !dbg !197
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !198 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !203, metadata !DIExpression()), !dbg !204
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !205
  %conv = trunc i64 %call to i32, !dbg !206
  ret i32 %conv, !dbg !207
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !208 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !212, metadata !DIExpression()), !dbg !213
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !214
  ret i64 %call, !dbg !215
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !221, metadata !DIExpression()), !dbg !222
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !223
  ret i64 %call, !dbg !224
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !225 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i8* %__base, metadata !237, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !238, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 %__size, metadata !239, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !240, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !242, metadata !DIExpression()), !dbg !246
  br label %while.cond, !dbg !247

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !248
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !246
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !242, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !241, metadata !DIExpression()), !dbg !246
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !249
  br i1 %cmp, label %while.body, label %cleanup, !dbg !247

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !250
  %div = lshr i64 %add, 1, !dbg !252
  call void @llvm.dbg.value(metadata i64 %div, metadata !243, metadata !DIExpression()), !dbg !246
  %mul = mul i64 %div, %__size, !dbg !253
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !254
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !244, metadata !DIExpression()), !dbg !246
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !255
  call void @llvm.dbg.value(metadata i32 %call, metadata !245, metadata !DIExpression()), !dbg !246
  %cmp1 = icmp slt i32 %call, 0, !dbg !256
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !258

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !259
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !261

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !262
  call void @llvm.dbg.value(metadata i64 %add4, metadata !241, metadata !DIExpression()), !dbg !246
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !246
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !246
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !242, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !241, metadata !DIExpression()), !dbg !246
  br label %while.cond, !dbg !247, !llvm.loop !263

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !246
  ret i8* %retval.0, !dbg !265
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !266 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !272, metadata !DIExpression()), !dbg !273
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !274
  ret double %call, !dbg !275
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !276 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !285, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !286, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 %base, metadata !287, metadata !DIExpression()), !dbg !288
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !289
  ret i64 %call, !dbg !290
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !291 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !297, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !298, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 %base, metadata !299, metadata !DIExpression()), !dbg !300
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !301
  ret i64 %call, !dbg !302
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !303 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !314, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !315, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %base, metadata !316, metadata !DIExpression()), !dbg !317
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !318
  ret i64 %call, !dbg !319
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !320 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !324, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !325, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %base, metadata !326, metadata !DIExpression()), !dbg !327
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !328
  ret i64 %call, !dbg !329
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !330 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !372, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !373, metadata !DIExpression()), !dbg !374
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !375
  ret i32 %call, !dbg !376
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !377 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !380, metadata !DIExpression()), !dbg !381
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !382
  ret i32 %call, !dbg !383
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !384 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !388, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !389, metadata !DIExpression()), !dbg !390
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !391
  ret i32 %call, !dbg !392
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !393 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !397, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !398, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !399, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !400, metadata !DIExpression()), !dbg !401
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !402
  ret i32 %call, !dbg !403
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !404 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !408, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !409, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !410, metadata !DIExpression()), !dbg !411
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !410, metadata !DIExpression(DW_OP_deref)), !dbg !411
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !412
  ret i32 %call, !dbg !413
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !414 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !418, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i8* %__path, metadata !419, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !420, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !421, metadata !DIExpression()), !dbg !422
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !421, metadata !DIExpression(DW_OP_deref)), !dbg !422
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !423
  ret i32 %call, !dbg !424
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !425 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !449, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !450, metadata !DIExpression()), !dbg !451
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !452
  ret i32 %call, !dbg !453
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !454 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !456, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !457, metadata !DIExpression()), !dbg !458
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !459
  ret i32 %call, !dbg !460
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !461 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !465, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !466, metadata !DIExpression()), !dbg !467
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !468
  ret i32 %call, !dbg !469
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !470 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !474, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !475, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !476, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !477, metadata !DIExpression()), !dbg !478
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !479
  ret i32 %call, !dbg !480
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @update_path(i8* %path, i8* %key) local_unnamed_addr #3 !dbg !481 {
entry:
  call void @llvm.dbg.value(metadata i8* %path, metadata !485, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i8* %key, metadata !486, metadata !DIExpression()), !dbg !497
  %0 = load i8*, i8** @std_prefix, align 8, !dbg !498
  %call = tail call i64 @strlen(i8* %0) #5, !dbg !499
  %1 = load i8*, i8** @std_prefix, align 8, !dbg !500
  %sext = shl i64 %call, 32, !dbg !501
  %conv1 = ashr exact i64 %sext, 32, !dbg !501
  %call2 = tail call i32 @strncmp(i8* %path, i8* %1, i64 %conv1) #5, !dbg !502
  %tobool = icmp eq i32 %call2, 0, !dbg !502
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !503

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %path, i64 %conv1, !dbg !504
  %2 = load i8, i8* %arrayidx, align 1, !dbg !504
  %cmp = icmp eq i8 %2, 47, !dbg !504
  br i1 %cmp, label %land.lhs.true10, label %lor.lhs.false, !dbg !505

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp8 = icmp eq i8 %2, 0, !dbg !506
  %cmp11 = icmp ne i8* %key, null, !dbg !507
  %or.cond = and i1 %cmp8, %cmp11, !dbg !508
  br i1 %or.cond, label %if.then, label %if.else, !dbg !508

land.lhs.true10:                                  ; preds = %land.lhs.true
  %cmp11.old = icmp eq i8* %key, null, !dbg !507
  br i1 %cmp11.old, label %if.else, label %if.then, !dbg !509

if.then:                                          ; preds = %land.lhs.true10, %lor.lhs.false
  call void @llvm.dbg.value(metadata i8 0, metadata !491, metadata !DIExpression()), !dbg !510
  %3 = load i8, i8* %key, align 1, !dbg !511
  %cmp15 = icmp eq i8 %3, 36, !dbg !513
  br i1 %cmp15, label %if.end, label %if.then17, !dbg !514

if.then17:                                        ; preds = %if.then
  %call18 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %key, i8* null) #5, !dbg !515
  call void @llvm.dbg.value(metadata i8* %call18, metadata !486, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i8 1, metadata !491, metadata !DIExpression()), !dbg !510
  br label %if.end, !dbg !517

if.end:                                           ; preds = %if.then, %if.then17
  %free_key.0 = phi i1 [ true, %if.then17 ], [ false, %if.then ]
  %key.addr.0 = phi i8* [ %call18, %if.then17 ], [ %key, %if.then ]
  call void @llvm.dbg.value(metadata i8* %key.addr.0, metadata !486, metadata !DIExpression()), !dbg !497
  %call21 = tail call i8* (i8*, ...) @concat(i8* %key.addr.0, i8* %arrayidx, i8* null) #5, !dbg !518
  call void @llvm.dbg.value(metadata i8* %call21, metadata !487, metadata !DIExpression()), !dbg !497
  br i1 %free_key.0, label %if.then23, label %if.end24, !dbg !519

if.then23:                                        ; preds = %if.end
  tail call void @free(i8* %key.addr.0) #5, !dbg !520
  br label %if.end24, !dbg !520

if.end24:                                         ; preds = %if.then23, %if.end
  %call25 = tail call fastcc i8* @translate_name(i8* %call21) #6, !dbg !522
  call void @llvm.dbg.value(metadata i8* %call25, metadata !487, metadata !DIExpression()), !dbg !497
  br label %if.end27, !dbg !523

if.else:                                          ; preds = %land.lhs.true10, %entry, %lor.lhs.false
  %call26 = tail call i8* @xstrdup(i8* %path) #5, !dbg !524
  call void @llvm.dbg.value(metadata i8* %call26, metadata !487, metadata !DIExpression()), !dbg !497
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end24
  %result.0 = phi i8* [ %call26, %if.else ], [ %call25, %if.end24 ], !dbg !525
  call void @llvm.dbg.value(metadata i8* %result.0, metadata !487, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i8* %result.0, metadata !488, metadata !DIExpression()), !dbg !497
  br label %while.cond, !dbg !526

while.cond:                                       ; preds = %cleanup, %if.end27
  %p.0 = phi i8* [ %result.0, %if.end27 ], [ %p.2, %cleanup ], !dbg !497
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !488, metadata !DIExpression()), !dbg !497
  %call28 = tail call i8* @strchr(i8* %p.0, i32 46) #5, !dbg !527
  call void @llvm.dbg.value(metadata i8* %call28, metadata !488, metadata !DIExpression()), !dbg !497
  %cmp29 = icmp eq i8* %call28, null, !dbg !528
  br i1 %cmp29, label %cleanup, label %if.end32, !dbg !530

if.end32:                                         ; preds = %while.cond
  %arrayidx33 = getelementptr inbounds i8, i8* %call28, i64 1, !dbg !531
  %4 = load i8, i8* %arrayidx33, align 1, !dbg !531
  %cmp35 = icmp eq i8 %4, 46, !dbg !533
  br i1 %cmp35, label %land.lhs.true37, label %if.else108, !dbg !534

land.lhs.true37:                                  ; preds = %if.end32
  %arrayidx38 = getelementptr inbounds i8, i8* %call28, i64 2, !dbg !535
  %5 = load i8, i8* %arrayidx38, align 1, !dbg !535
  %cmp40 = icmp eq i8 %5, 47, !dbg !535
  %cmp43 = icmp ne i8* %call28, %result.0, !dbg !536
  %or.cond1 = and i1 %cmp40, %cmp43, !dbg !537
  br i1 %or.cond1, label %land.lhs.true45, label %if.else108, !dbg !537

land.lhs.true45:                                  ; preds = %land.lhs.true37
  %arrayidx46 = getelementptr inbounds i8, i8* %call28, i64 -1, !dbg !538
  %6 = load i8, i8* %arrayidx46, align 1, !dbg !538
  %cmp48 = icmp eq i8 %6, 47, !dbg !538
  br i1 %cmp48, label %if.then50, label %if.else108, !dbg !539

if.then50:                                        ; preds = %land.lhs.true45
  store i8 0, i8* %call28, align 1, !dbg !540
  %call51 = tail call i32 @access(i8* %result.0, i32 1) #5, !dbg !542
  %cmp52 = icmp eq i32 %call51, 0, !dbg !544
  br i1 %cmp52, label %if.then54, label %do.body.preheader, !dbg !545

do.body.preheader:                                ; preds = %if.then50
  br label %do.body, !dbg !546

if.then54:                                        ; preds = %if.then50
  store i8 46, i8* %call28, align 1, !dbg !548
  br label %cleanup, !dbg !550

do.body:                                          ; preds = %do.body.preheader, %land.rhs78
  %dest.0 = phi i8* [ %dest.2.lcssa, %land.rhs78 ], [ %call28, %do.body.preheader ], !dbg !551
  call void @llvm.dbg.value(metadata i8* %dest.0, metadata !496, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %dest.0, metadata !496, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !552
  br label %while.cond56, !dbg !553

while.cond56:                                     ; preds = %while.body62, %do.body
  %dest.0.pn = phi i8* [ %dest.0, %do.body ], [ %dest.1, %while.body62 ]
  %dest.1 = getelementptr inbounds i8, i8* %dest.0.pn, i64 -1, !dbg !555
  call void @llvm.dbg.value(metadata i8* %dest.1, metadata !496, metadata !DIExpression()), !dbg !552
  %cmp57 = icmp eq i8* %dest.1, %result.0, !dbg !556
  br i1 %cmp57, label %while.end, label %land.rhs, !dbg !557

land.rhs:                                         ; preds = %while.cond56
  %7 = load i8, i8* %dest.1, align 1, !dbg !558
  %cmp60 = icmp eq i8 %7, 47, !dbg !558
  br i1 %cmp60, label %while.body62, label %while.end, !dbg !553

while.body62:                                     ; preds = %land.rhs
  call void @llvm.dbg.value(metadata i8* %dest.1, metadata !496, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !552
  br label %while.cond56, !dbg !553, !llvm.loop !559

while.end:                                        ; preds = %while.cond56, %land.rhs
  %dest.1.lcssa = phi i8* [ %dest.1, %while.cond56 ], [ %dest.1, %land.rhs ], !dbg !555
  br label %while.cond64, !dbg !561

while.cond64:                                     ; preds = %while.body73, %while.end
  %dest.2 = phi i8* [ %dest.1.lcssa, %while.end ], [ %arrayidx68, %while.body73 ], !dbg !555
  call void @llvm.dbg.value(metadata i8* %dest.2, metadata !496, metadata !DIExpression()), !dbg !552
  %cmp65 = icmp eq i8* %dest.2, %result.0, !dbg !562
  br i1 %cmp65, label %do.cond, label %land.rhs67, !dbg !563

land.rhs67:                                       ; preds = %while.cond64
  %arrayidx68 = getelementptr inbounds i8, i8* %dest.2, i64 -1, !dbg !564
  %8 = load i8, i8* %arrayidx68, align 1, !dbg !564
  %cmp70 = icmp eq i8 %8, 47, !dbg !564
  br i1 %cmp70, label %do.cond, label %while.body73, !dbg !561

while.body73:                                     ; preds = %land.rhs67
  call void @llvm.dbg.value(metadata i8* %arrayidx68, metadata !496, metadata !DIExpression()), !dbg !552
  br label %while.cond64, !dbg !561, !llvm.loop !565

do.cond:                                          ; preds = %land.rhs67, %while.cond64
  %dest.2.lcssa = phi i8* [ %dest.2, %land.rhs67 ], [ %dest.2, %while.cond64 ], !dbg !555
  %cmp65.lcssa = phi i1 [ %cmp65, %land.rhs67 ], [ %cmp65, %while.cond64 ], !dbg !562
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa, metadata !496, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa, metadata !496, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa, metadata !496, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa, metadata !496, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa, metadata !496, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa, metadata !496, metadata !DIExpression()), !dbg !552
  br i1 %cmp65.lcssa, label %do.cond.do.end_crit_edge, label %land.rhs78, !dbg !567

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  %dest.2.lcssa.lcssa = phi i8* [ %dest.2.lcssa, %do.cond ], !dbg !555
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa.lcssa, metadata !496, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa.lcssa, metadata !496, metadata !DIExpression()), !dbg !552
  %.pre = load i8, i8* %result.0, align 1, !dbg !568
  br label %do.end, !dbg !567

land.rhs78:                                       ; preds = %do.cond
  %9 = load i8, i8* %dest.2.lcssa, align 1, !dbg !570
  %cmp80 = icmp eq i8 %9, 46, !dbg !571
  br i1 %cmp80, label %do.body, label %do.end.loopexit, !dbg !572, !llvm.loop !573

do.end.loopexit:                                  ; preds = %land.rhs78
  %.lcssa = phi i8 [ %9, %land.rhs78 ], !dbg !570
  %dest.2.lcssa.lcssa9 = phi i8* [ %dest.2.lcssa, %land.rhs78 ], !dbg !555
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa.lcssa9, metadata !496, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa.lcssa9, metadata !496, metadata !DIExpression()), !dbg !552
  br label %do.end, !dbg !575

do.end:                                           ; preds = %do.end.loopexit, %do.cond.do.end_crit_edge
  %dest.2.lcssa10 = phi i8* [ %dest.2.lcssa.lcssa, %do.cond.do.end_crit_edge ], [ %dest.2.lcssa.lcssa9, %do.end.loopexit ]
  %10 = phi i8 [ %.pre, %do.cond.do.end_crit_edge ], [ %.lcssa, %do.end.loopexit ], !dbg !568
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa10, metadata !496, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %dest.2.lcssa10, metadata !496, metadata !DIExpression()), !dbg !552
  %cmp84 = icmp eq i8 %10, 46, !dbg !575
  br i1 %cmp84, label %if.then90, label %lor.lhs.false86, !dbg !576

lor.lhs.false86:                                  ; preds = %do.end
  %cmp88 = icmp eq i8 %10, 47, !dbg !577
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !578

if.then90:                                        ; preds = %lor.lhs.false86, %do.end
  store i8 46, i8* %call28, align 1, !dbg !579
  br label %cleanup, !dbg !581

if.end91:                                         ; preds = %lor.lhs.false86
  %add.ptr = getelementptr inbounds i8, i8* %call28, i64 3, !dbg !582
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !494, metadata !DIExpression()), !dbg !552
  br label %while.cond92, !dbg !583

while.cond92:                                     ; preds = %while.body96, %if.end91
  %src.0 = phi i8* [ %add.ptr, %if.end91 ], [ %incdec.ptr97, %while.body96 ], !dbg !551
  call void @llvm.dbg.value(metadata i8* %src.0, metadata !494, metadata !DIExpression()), !dbg !552
  %11 = load i8, i8* %src.0, align 1, !dbg !584
  %cmp94 = icmp eq i8 %11, 47, !dbg !584
  br i1 %cmp94, label %while.body96, label %while.cond99.preheader, !dbg !583

while.cond99.preheader:                           ; preds = %while.cond92
  %src.0.lcssa = phi i8* [ %src.0, %while.cond92 ], !dbg !551
  %.lcssa11 = phi i8 [ %11, %while.cond92 ], !dbg !584
  call void @llvm.dbg.value(metadata i8* %src.0.lcssa, metadata !494, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %src.0.lcssa, metadata !494, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %src.0.lcssa, metadata !494, metadata !DIExpression()), !dbg !552
  br label %while.cond99, !dbg !585

while.body96:                                     ; preds = %while.cond92
  %incdec.ptr97 = getelementptr inbounds i8, i8* %src.0, i64 1, !dbg !586
  call void @llvm.dbg.value(metadata i8* %incdec.ptr97, metadata !494, metadata !DIExpression()), !dbg !552
  br label %while.cond92, !dbg !583, !llvm.loop !587

while.cond99:                                     ; preds = %while.cond99.while.cond99_crit_edge, %while.cond99.preheader
  %12 = phi i8 [ %.pre5, %while.cond99.while.cond99_crit_edge ], [ %.lcssa11, %while.cond99.preheader ], !dbg !589
  %src.1 = phi i8* [ %incdec.ptr100, %while.cond99.while.cond99_crit_edge ], [ %src.0.lcssa, %while.cond99.preheader ], !dbg !551
  %dest.3 = phi i8* [ %incdec.ptr101, %while.cond99.while.cond99_crit_edge ], [ %dest.2.lcssa10, %while.cond99.preheader ], !dbg !551
  call void @llvm.dbg.value(metadata i8* %dest.3, metadata !496, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %src.1, metadata !494, metadata !DIExpression()), !dbg !552
  %incdec.ptr100 = getelementptr inbounds i8, i8* %src.1, i64 1, !dbg !590
  call void @llvm.dbg.value(metadata i8* %incdec.ptr100, metadata !494, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %dest.3, metadata !496, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !552
  store i8 %12, i8* %dest.3, align 1, !dbg !591
  %cmp103 = icmp eq i8 %12, 0, !dbg !592
  br i1 %cmp103, label %cleanup.loopexit, label %while.cond99.while.cond99_crit_edge, !dbg !585, !llvm.loop !593

while.cond99.while.cond99_crit_edge:              ; preds = %while.cond99
  %incdec.ptr101 = getelementptr inbounds i8, i8* %dest.3, i64 1, !dbg !595
  call void @llvm.dbg.value(metadata i8* %incdec.ptr101, metadata !496, metadata !DIExpression()), !dbg !552
  %.pre5 = load i8, i8* %incdec.ptr100, align 1, !dbg !589
  br label %while.cond99, !dbg !585

if.else108:                                       ; preds = %land.lhs.true45, %land.lhs.true37, %if.end32
  call void @llvm.dbg.value(metadata i8* %arrayidx33, metadata !488, metadata !DIExpression()), !dbg !497
  br label %cleanup

cleanup.loopexit:                                 ; preds = %while.cond99
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.else108, %while.cond, %if.then90, %if.then54
  %p.2 = phi i8* [ %call28, %if.then54 ], [ %call28, %if.then90 ], [ null, %while.cond ], [ %arrayidx33, %if.else108 ], [ %dest.2.lcssa10, %cleanup.loopexit ], !dbg !552
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then54 ], [ false, %if.then90 ], [ false, %while.cond ], [ true, %if.else108 ], [ true, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !488, metadata !DIExpression()), !dbg !497
  br i1 %cleanup.dest.slot.0, label %while.cond, label %while.end112, !llvm.loop !596

while.end112:                                     ; preds = %cleanup
  ret i8* %result.0, !dbg !598
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local i8* @concat(i8*, ...) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @translate_name(i8* %name) unnamed_addr #3 !dbg !599 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !603, metadata !DIExpression()), !dbg !609
  br label %for.cond, !dbg !610

for.cond:                                         ; preds = %if.end32, %entry
  %name.addr.0 = phi i8* [ %name, %entry ], [ %call40, %if.end32 ]
  call void @llvm.dbg.value(metadata i8* %name.addr.0, metadata !603, metadata !DIExpression()), !dbg !609
  %0 = load i8, i8* %name.addr.0, align 1, !dbg !611
  call void @llvm.dbg.value(metadata i8 %0, metadata !604, metadata !DIExpression()), !dbg !609
  %cmp = icmp ne i8 %0, 64, !dbg !615
  %cmp3 = icmp ne i8 %0, 36, !dbg !617
  %or.cond = and i1 %cmp, %cmp3, !dbg !618
  br i1 %or.cond, label %for.end41, label %for.cond5.preheader, !dbg !618

for.cond5.preheader:                              ; preds = %for.cond
  br label %for.cond5, !dbg !619

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !621
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !608, metadata !DIExpression()), !dbg !609
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !622
  %arrayidx6 = getelementptr inbounds i8, i8* %name.addr.0, i64 %indvars.iv.next, !dbg !624
  %1 = load i8, i8* %arrayidx6, align 1, !dbg !624
  %cmp8 = icmp eq i8 %1, 0, !dbg !625
  %cmp14 = icmp eq i8 %1, 47, !dbg !626
  %or.cond2 = or i1 %cmp8, %cmp14, !dbg !627
  br i1 %or.cond2, label %for.end, label %for.inc, !dbg !627

for.inc:                                          ; preds = %for.cond5
  call void @llvm.dbg.value(metadata i32 undef, metadata !608, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !609
  br label %for.cond5, !dbg !628, !llvm.loop !629

for.end:                                          ; preds = %for.cond5
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond5 ], !dbg !621
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %for.cond5 ], !dbg !622
  %arrayidx6.lcssa = phi i8* [ %arrayidx6, %for.cond5 ], !dbg !624
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !608, metadata !DIExpression()), !dbg !609
  %2 = alloca i8, i64 %indvars.iv.next.lcssa, align 16, !dbg !631
  call void @llvm.dbg.value(metadata i8* %2, metadata !605, metadata !DIExpression()), !dbg !609
  %arrayidx18 = getelementptr inbounds i8, i8* %name.addr.0, i64 1, !dbg !632
  %conv19 = and i64 %indvars.iv.lcssa, 4294967295, !dbg !633
  %call = call i8* @strncpy(i8* nonnull %2, i8* nonnull %arrayidx18, i64 %conv19) #5, !dbg !634
  %arrayidx21 = getelementptr inbounds i8, i8* %2, i64 %conv19, !dbg !635
  store i8 0, i8* %arrayidx21, align 1, !dbg !636
  %cmp23 = icmp eq i8 %0, 64, !dbg !637
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !639

if.then25:                                        ; preds = %for.end
  %call26 = call fastcc i8* @get_key_value(i8* nonnull %2) #6, !dbg !640
  call void @llvm.dbg.value(metadata i8* %call26, metadata !607, metadata !DIExpression()), !dbg !609
  %cmp27 = icmp eq i8* %call26, null, !dbg !642
  %3 = load i8*, i8** @std_prefix, align 8, !dbg !644
  %spec.select = select i1 %cmp27, i8* %3, i8* %call26, !dbg !645
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !607, metadata !DIExpression()), !dbg !609
  br label %if.end32, !dbg !646

if.else:                                          ; preds = %for.end
  %call31 = call i8* @getenv(i8* nonnull %2) #5, !dbg !647
  call void @llvm.dbg.value(metadata i8* %call31, metadata !607, metadata !DIExpression()), !dbg !609
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then25
  %prefix.1 = phi i8* [ %spec.select, %if.then25 ], [ %call31, %if.else ], !dbg !648
  call void @llvm.dbg.value(metadata i8* %prefix.1, metadata !607, metadata !DIExpression()), !dbg !609
  %cmp33 = icmp eq i8* %prefix.1, null, !dbg !649
  %spec.select1 = select i1 %cmp33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %prefix.1, !dbg !651
  call void @llvm.dbg.value(metadata i8* %spec.select1, metadata !607, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i8* %name.addr.0, metadata !606, metadata !DIExpression()), !dbg !609
  %call40 = call i8* (i8*, ...) @concat(i8* %spec.select1, i8* nonnull %arrayidx6.lcssa, i8* null) #5, !dbg !652
  call void @llvm.dbg.value(metadata i8* %call40, metadata !603, metadata !DIExpression()), !dbg !609
  call void @free(i8* %name.addr.0) #5, !dbg !653
  br label %for.cond, !dbg !654, !llvm.loop !655

for.end41:                                        ; preds = %for.cond
  %name.addr.0.lcssa = phi i8* [ %name.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata i8* %name.addr.0.lcssa, metadata !603, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i8* %name.addr.0.lcssa, metadata !603, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i8* %name.addr.0.lcssa, metadata !603, metadata !DIExpression()), !dbg !609
  ret i8* %name.addr.0.lcssa, !dbg !658
}

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #1

declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

declare dso_local i32 @access(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @set_std_prefix(i8* %prefix, i32 %len) local_unnamed_addr #3 !dbg !659 {
entry:
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !663, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i32 %len, metadata !664, metadata !DIExpression()), !dbg !665
  %call = tail call fastcc i8* @save_string(i8* %prefix, i32 %len) #6, !dbg !666
  store i8* %call, i8** @std_prefix, align 8, !dbg !667
  ret void, !dbg !668
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @save_string(i8* %s, i32 %len) unnamed_addr #3 !dbg !669 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !673, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %len, metadata !674, metadata !DIExpression()), !dbg !676
  %add = add nsw i32 %len, 1, !dbg !677
  %conv = sext i32 %add to i64, !dbg !677
  %call = tail call i8* @xmalloc(i64 %conv) #5, !dbg !677
  call void @llvm.dbg.value(metadata i8* %call, metadata !675, metadata !DIExpression()), !dbg !676
  %conv1 = sext i32 %len to i64, !dbg !678
  %call2 = tail call i8* @memcpy(i8* %call, i8* %s, i64 %conv1) #5, !dbg !679
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %conv1, !dbg !680
  store i8 0, i8* %arrayidx, align 1, !dbg !681
  ret i8* %call, !dbg !682
}

declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @get_key_value(i8* %key) unnamed_addr #3 !dbg !683 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !687, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8* null, metadata !688, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8* null, metadata !689, metadata !DIExpression()), !dbg !690
  %call = tail call i8* (i8*, ...) @concat(i8* %key, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* null) #5, !dbg !691
  call void @llvm.dbg.value(metadata i8* %call, metadata !689, metadata !DIExpression()), !dbg !690
  %call1 = tail call i8* @getenv(i8* %call) #5, !dbg !693
  call void @llvm.dbg.value(metadata i8* %call1, metadata !688, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8* %call, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8* %call1, metadata !688, metadata !DIExpression()), !dbg !690
  %cmp2 = icmp eq i8* %call1, null, !dbg !694
  %0 = load i8*, i8** @std_prefix, align 8, !dbg !696
  %spec.select = select i1 %cmp2, i8* %0, i8* %call1, !dbg !697
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !688, metadata !DIExpression()), !dbg !690
  %tobool = icmp eq i8* %call, null, !dbg !698
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !700

if.then5:                                         ; preds = %entry
  tail call void @free(i8* nonnull %call) #5, !dbg !701
  br label %if.end6, !dbg !701

if.end6:                                          ; preds = %entry, %if.then5
  ret i8* %spec.select, !dbg !702
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

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
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "std_prefix", scope: !2, file: !3, line: 77, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, nameTableKind: None)
!3 = !DIFile(filename: "prefix.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!15 = !{!0}
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!20 = distinct !DISubprogram(name: "vprintf", scope: !21, file: !21, line: 39, type: !22, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!22 = !DISubroutineType(types: !23)
!23 = !{!8, !24, !25}
!24 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !27)
!27 = !{!28, !30, !31, !32}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !26, file: !3, baseType: !29, size: 32)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !26, file: !3, baseType: !29, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !26, file: !3, baseType: !12, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !26, file: !3, baseType: !12, size: 64, offset: 128)
!33 = !{!34, !35}
!34 = !DILocalVariable(name: "__fmt", arg: 1, scope: !20, file: !21, line: 39, type: !24)
!35 = !DILocalVariable(name: "__arg", arg: 2, scope: !20, file: !21, line: 39, type: !25)
!36 = !DILocation(line: 0, scope: !20)
!37 = !DILocation(line: 41, column: 20, scope: !20)
!38 = !DILocation(line: 41, column: 10, scope: !20)
!39 = !DILocation(line: 41, column: 3, scope: !20)
!40 = distinct !DISubprogram(name: "getchar", scope: !21, file: !21, line: 47, type: !41, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!41 = !DISubroutineType(types: !42)
!42 = !{!8}
!43 = !DILocation(line: 49, column: 16, scope: !40)
!44 = !DILocation(line: 49, column: 10, scope: !40)
!45 = !DILocation(line: 49, column: 3, scope: !40)
!46 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !21, file: !21, line: 56, type: !47, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !108)
!47 = !DISubroutineType(types: !48)
!48 = !{!8, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !51, line: 7, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !70, !72, !73, !74, !78, !80, !82, !86, !89, !91, !94, !97, !98, !99, !103, !104}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !53, line: 51, baseType: !8, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !52, file: !53, line: 54, baseType: !10, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !52, file: !53, line: 55, baseType: !10, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !52, file: !53, line: 56, baseType: !10, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !52, file: !53, line: 57, baseType: !10, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !52, file: !53, line: 58, baseType: !10, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !52, file: !53, line: 59, baseType: !10, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !52, file: !53, line: 60, baseType: !10, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !52, file: !53, line: 61, baseType: !10, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !52, file: !53, line: 64, baseType: !10, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !52, file: !53, line: 65, baseType: !10, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !52, file: !53, line: 66, baseType: !10, size: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !52, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !53, line: 36, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !52, file: !53, line: 70, baseType: !71, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !52, file: !53, line: 72, baseType: !8, size: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !52, file: !53, line: 73, baseType: !8, size: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !52, file: !53, line: 74, baseType: !75, size: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !76, line: 152, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !52, file: !53, line: 77, baseType: !79, size: 16, offset: 1024)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !52, file: !53, line: 78, baseType: !81, size: 8, offset: 1040)
!81 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !52, file: !53, line: 79, baseType: !83, size: 8, offset: 1048)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !52, file: !53, line: 81, baseType: !87, size: 64, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !53, line: 43, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !53, line: 89, baseType: !90, size: 64, offset: 1152)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !76, line: 153, baseType: !77)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !52, file: !53, line: 91, baseType: !92, size: 64, offset: 1216)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !53, line: 37, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !52, file: !53, line: 92, baseType: !95, size: 64, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !53, line: 38, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !52, file: !53, line: 93, baseType: !71, size: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !52, file: !53, line: 94, baseType: !12, size: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 46, baseType: !102)
!101 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!102 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 96, baseType: !8, size: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !{!109}
!109 = !DILocalVariable(name: "__fp", arg: 1, scope: !46, file: !21, line: 56, type: !49)
!110 = !DILocation(line: 0, scope: !46)
!111 = !DILocation(line: 58, column: 10, scope: !46)
!112 = !DILocation(line: 58, column: 3, scope: !46)
!113 = distinct !DISubprogram(name: "getc_unlocked", scope: !21, file: !21, line: 66, type: !47, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!114 = !{!115}
!115 = !DILocalVariable(name: "__fp", arg: 1, scope: !113, file: !21, line: 66, type: !49)
!116 = !DILocation(line: 0, scope: !113)
!117 = !DILocation(line: 68, column: 10, scope: !113)
!118 = !DILocation(line: 68, column: 3, scope: !113)
!119 = distinct !DISubprogram(name: "getchar_unlocked", scope: !21, file: !21, line: 73, type: !41, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!120 = !DILocation(line: 75, column: 10, scope: !119)
!121 = !DILocation(line: 75, column: 3, scope: !119)
!122 = distinct !DISubprogram(name: "putchar", scope: !21, file: !21, line: 82, type: !123, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!8, !8}
!125 = !{!126}
!126 = !DILocalVariable(name: "__c", arg: 1, scope: !122, file: !21, line: 82, type: !8)
!127 = !DILocation(line: 0, scope: !122)
!128 = !DILocation(line: 84, column: 21, scope: !122)
!129 = !DILocation(line: 84, column: 10, scope: !122)
!130 = !DILocation(line: 84, column: 3, scope: !122)
!131 = distinct !DISubprogram(name: "fputc_unlocked", scope: !21, file: !21, line: 91, type: !132, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!8, !8, !49}
!134 = !{!135, !136}
!135 = !DILocalVariable(name: "__c", arg: 1, scope: !131, file: !21, line: 91, type: !8)
!136 = !DILocalVariable(name: "__stream", arg: 2, scope: !131, file: !21, line: 91, type: !49)
!137 = !DILocation(line: 0, scope: !131)
!138 = !DILocation(line: 93, column: 10, scope: !131)
!139 = !DILocation(line: 93, column: 3, scope: !131)
!140 = distinct !DISubprogram(name: "putc_unlocked", scope: !21, file: !21, line: 101, type: !132, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "__c", arg: 1, scope: !140, file: !21, line: 101, type: !8)
!143 = !DILocalVariable(name: "__stream", arg: 2, scope: !140, file: !21, line: 101, type: !49)
!144 = !DILocation(line: 0, scope: !140)
!145 = !DILocation(line: 103, column: 10, scope: !140)
!146 = !DILocation(line: 103, column: 3, scope: !140)
!147 = distinct !DISubprogram(name: "putchar_unlocked", scope: !21, file: !21, line: 108, type: !123, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!148 = !{!149}
!149 = !DILocalVariable(name: "__c", arg: 1, scope: !147, file: !21, line: 108, type: !8)
!150 = !DILocation(line: 0, scope: !147)
!151 = !DILocation(line: 110, column: 10, scope: !147)
!152 = !DILocation(line: 110, column: 3, scope: !147)
!153 = distinct !DISubprogram(name: "getline", scope: !21, file: !21, line: 118, type: !154, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !9, !157, !49}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !76, line: 193, baseType: !77)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!158 = !{!159, !160, !161}
!159 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !153, file: !21, line: 118, type: !9)
!160 = !DILocalVariable(name: "__n", arg: 2, scope: !153, file: !21, line: 118, type: !157)
!161 = !DILocalVariable(name: "__stream", arg: 3, scope: !153, file: !21, line: 118, type: !49)
!162 = !DILocation(line: 0, scope: !153)
!163 = !DILocation(line: 120, column: 10, scope: !153)
!164 = !DILocation(line: 120, column: 3, scope: !153)
!165 = distinct !DISubprogram(name: "feof_unlocked", scope: !21, file: !21, line: 128, type: !47, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !166)
!166 = !{!167}
!167 = !DILocalVariable(name: "__stream", arg: 1, scope: !165, file: !21, line: 128, type: !49)
!168 = !DILocation(line: 0, scope: !165)
!169 = !DILocation(line: 130, column: 10, scope: !165)
!170 = !DILocation(line: 130, column: 3, scope: !165)
!171 = distinct !DISubprogram(name: "ferror_unlocked", scope: !21, file: !21, line: 135, type: !47, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!172 = !{!173}
!173 = !DILocalVariable(name: "__stream", arg: 1, scope: !171, file: !21, line: 135, type: !49)
!174 = !DILocation(line: 0, scope: !171)
!175 = !DILocation(line: 137, column: 10, scope: !171)
!176 = !DILocation(line: 137, column: 3, scope: !171)
!177 = distinct !DISubprogram(name: "tolower", scope: !178, file: !178, line: 207, type: !123, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !179)
!178 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!179 = !{!180}
!180 = !DILocalVariable(name: "__c", arg: 1, scope: !177, file: !178, line: 207, type: !8)
!181 = !DILocation(line: 0, scope: !177)
!182 = !DILocation(line: 209, column: 22, scope: !177)
!183 = !DILocation(line: 209, column: 39, scope: !177)
!184 = !DILocation(line: 209, column: 38, scope: !177)
!185 = !DILocation(line: 209, column: 37, scope: !177)
!186 = !DILocation(line: 209, column: 10, scope: !177)
!187 = !DILocation(line: 209, column: 3, scope: !177)
!188 = distinct !DISubprogram(name: "toupper", scope: !178, file: !178, line: 213, type: !123, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!189 = !{!190}
!190 = !DILocalVariable(name: "__c", arg: 1, scope: !188, file: !178, line: 213, type: !8)
!191 = !DILocation(line: 0, scope: !188)
!192 = !DILocation(line: 215, column: 22, scope: !188)
!193 = !DILocation(line: 215, column: 39, scope: !188)
!194 = !DILocation(line: 215, column: 38, scope: !188)
!195 = !DILocation(line: 215, column: 37, scope: !188)
!196 = !DILocation(line: 215, column: 10, scope: !188)
!197 = !DILocation(line: 215, column: 3, scope: !188)
!198 = distinct !DISubprogram(name: "atoi", scope: !199, file: !199, line: 361, type: !200, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!199 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!200 = !DISubroutineType(types: !201)
!201 = !{!8, !13}
!202 = !{!203}
!203 = !DILocalVariable(name: "__nptr", arg: 1, scope: !198, file: !199, line: 361, type: !13)
!204 = !DILocation(line: 0, scope: !198)
!205 = !DILocation(line: 363, column: 16, scope: !198)
!206 = !DILocation(line: 363, column: 10, scope: !198)
!207 = !DILocation(line: 363, column: 3, scope: !198)
!208 = distinct !DISubprogram(name: "atol", scope: !199, file: !199, line: 366, type: !209, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{!77, !13}
!211 = !{!212}
!212 = !DILocalVariable(name: "__nptr", arg: 1, scope: !208, file: !199, line: 366, type: !13)
!213 = !DILocation(line: 0, scope: !208)
!214 = !DILocation(line: 368, column: 10, scope: !208)
!215 = !DILocation(line: 368, column: 3, scope: !208)
!216 = distinct !DISubprogram(name: "atoll", scope: !199, file: !199, line: 373, type: !217, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !13}
!219 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!220 = !{!221}
!221 = !DILocalVariable(name: "__nptr", arg: 1, scope: !216, file: !199, line: 373, type: !13)
!222 = !DILocation(line: 0, scope: !216)
!223 = !DILocation(line: 375, column: 10, scope: !216)
!224 = !DILocation(line: 375, column: 3, scope: !216)
!225 = distinct !DISubprogram(name: "bsearch", scope: !226, file: !226, line: 20, type: !227, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!226 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!227 = !DISubroutineType(types: !228)
!228 = !{!12, !229, !229, !100, !100, !231}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !199, line: 808, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!8, !229, !229}
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!236 = !DILocalVariable(name: "__key", arg: 1, scope: !225, file: !226, line: 20, type: !229)
!237 = !DILocalVariable(name: "__base", arg: 2, scope: !225, file: !226, line: 20, type: !229)
!238 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !225, file: !226, line: 20, type: !100)
!239 = !DILocalVariable(name: "__size", arg: 4, scope: !225, file: !226, line: 20, type: !100)
!240 = !DILocalVariable(name: "__compar", arg: 5, scope: !225, file: !226, line: 21, type: !231)
!241 = !DILocalVariable(name: "__l", scope: !225, file: !226, line: 23, type: !100)
!242 = !DILocalVariable(name: "__u", scope: !225, file: !226, line: 23, type: !100)
!243 = !DILocalVariable(name: "__idx", scope: !225, file: !226, line: 23, type: !100)
!244 = !DILocalVariable(name: "__p", scope: !225, file: !226, line: 24, type: !229)
!245 = !DILocalVariable(name: "__comparison", scope: !225, file: !226, line: 25, type: !8)
!246 = !DILocation(line: 0, scope: !225)
!247 = !DILocation(line: 29, column: 3, scope: !225)
!248 = !DILocation(line: 27, column: 7, scope: !225)
!249 = !DILocation(line: 29, column: 14, scope: !225)
!250 = !DILocation(line: 31, column: 20, scope: !251)
!251 = distinct !DILexicalBlock(scope: !225, file: !226, line: 30, column: 5)
!252 = !DILocation(line: 31, column: 27, scope: !251)
!253 = !DILocation(line: 32, column: 56, scope: !251)
!254 = !DILocation(line: 32, column: 47, scope: !251)
!255 = !DILocation(line: 33, column: 22, scope: !251)
!256 = !DILocation(line: 34, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !251, file: !226, line: 34, column: 11)
!258 = !DILocation(line: 34, column: 11, scope: !251)
!259 = !DILocation(line: 36, column: 29, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !226, line: 36, column: 16)
!261 = !DILocation(line: 36, column: 16, scope: !257)
!262 = !DILocation(line: 37, column: 14, scope: !260)
!263 = distinct !{!263, !247, !264}
!264 = !DILocation(line: 40, column: 5, scope: !225)
!265 = !DILocation(line: 43, column: 1, scope: !225)
!266 = distinct !DISubprogram(name: "atof", scope: !267, file: !267, line: 25, type: !268, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !271)
!267 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !13}
!270 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!271 = !{!272}
!272 = !DILocalVariable(name: "__nptr", arg: 1, scope: !266, file: !267, line: 25, type: !13)
!273 = !DILocation(line: 0, scope: !266)
!274 = !DILocation(line: 27, column: 10, scope: !266)
!275 = !DILocation(line: 27, column: 3, scope: !266)
!276 = distinct !DISubprogram(name: "strtoimax", scope: !277, file: !277, line: 324, type: !278, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !284)
!277 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!278 = !DISubroutineType(types: !279)
!279 = !{!280, !24, !283, !8}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !281, line: 101, baseType: !282)
!281 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !76, line: 72, baseType: !77)
!283 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!284 = !{!285, !286, !287}
!285 = !DILocalVariable(name: "nptr", arg: 1, scope: !276, file: !277, line: 324, type: !24)
!286 = !DILocalVariable(name: "endptr", arg: 2, scope: !276, file: !277, line: 324, type: !283)
!287 = !DILocalVariable(name: "base", arg: 3, scope: !276, file: !277, line: 324, type: !8)
!288 = !DILocation(line: 0, scope: !276)
!289 = !DILocation(line: 327, column: 10, scope: !276)
!290 = !DILocation(line: 327, column: 3, scope: !276)
!291 = distinct !DISubprogram(name: "strtoumax", scope: !277, file: !277, line: 336, type: !292, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !296)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !24, !283, !8}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !281, line: 102, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !76, line: 73, baseType: !102)
!296 = !{!297, !298, !299}
!297 = !DILocalVariable(name: "nptr", arg: 1, scope: !291, file: !277, line: 336, type: !24)
!298 = !DILocalVariable(name: "endptr", arg: 2, scope: !291, file: !277, line: 336, type: !283)
!299 = !DILocalVariable(name: "base", arg: 3, scope: !291, file: !277, line: 336, type: !8)
!300 = !DILocation(line: 0, scope: !291)
!301 = !DILocation(line: 339, column: 10, scope: !291)
!302 = !DILocation(line: 339, column: 3, scope: !291)
!303 = distinct !DISubprogram(name: "wcstoimax", scope: !277, file: !277, line: 348, type: !304, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!304 = !DISubroutineType(types: !305)
!305 = !{!280, !306, !310, !8}
!306 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !277, line: 34, baseType: !8)
!310 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!313 = !{!314, !315, !316}
!314 = !DILocalVariable(name: "nptr", arg: 1, scope: !303, file: !277, line: 348, type: !306)
!315 = !DILocalVariable(name: "endptr", arg: 2, scope: !303, file: !277, line: 348, type: !310)
!316 = !DILocalVariable(name: "base", arg: 3, scope: !303, file: !277, line: 348, type: !8)
!317 = !DILocation(line: 0, scope: !303)
!318 = !DILocation(line: 351, column: 10, scope: !303)
!319 = !DILocation(line: 351, column: 3, scope: !303)
!320 = distinct !DISubprogram(name: "wcstoumax", scope: !277, file: !277, line: 362, type: !321, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{!294, !306, !310, !8}
!323 = !{!324, !325, !326}
!324 = !DILocalVariable(name: "nptr", arg: 1, scope: !320, file: !277, line: 362, type: !306)
!325 = !DILocalVariable(name: "endptr", arg: 2, scope: !320, file: !277, line: 362, type: !310)
!326 = !DILocalVariable(name: "base", arg: 3, scope: !320, file: !277, line: 362, type: !8)
!327 = !DILocation(line: 0, scope: !320)
!328 = !DILocation(line: 365, column: 10, scope: !320)
!329 = !DILocation(line: 365, column: 3, scope: !320)
!330 = distinct !DISubprogram(name: "stat", scope: !331, file: !331, line: 453, type: !332, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!332 = !DISubroutineType(types: !333)
!333 = !{!8, !13, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !336, line: 46, size: 1152, elements: !337)
!336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!337 = !{!338, !340, !342, !344, !346, !348, !350, !351, !352, !353, !355, !357, !365, !366, !367}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !335, file: !336, line: 48, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !76, line: 145, baseType: !102)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !335, file: !336, line: 53, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !76, line: 148, baseType: !102)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !335, file: !336, line: 61, baseType: !343, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !76, line: 151, baseType: !102)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !335, file: !336, line: 62, baseType: !345, size: 32, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !76, line: 150, baseType: !29)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !335, file: !336, line: 64, baseType: !347, size: 32, offset: 224)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !76, line: 146, baseType: !29)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !335, file: !336, line: 65, baseType: !349, size: 32, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !76, line: 147, baseType: !29)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !335, file: !336, line: 67, baseType: !8, size: 32, offset: 288)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !335, file: !336, line: 69, baseType: !339, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !335, file: !336, line: 74, baseType: !75, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !335, file: !336, line: 78, baseType: !354, size: 64, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !76, line: 174, baseType: !77)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !335, file: !336, line: 80, baseType: !356, size: 64, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !76, line: 179, baseType: !77)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !335, file: !336, line: 91, baseType: !358, size: 128, offset: 576)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !359, line: 10, size: 128, elements: !360)
!359 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!360 = !{!361, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !358, file: !359, line: 12, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !76, line: 160, baseType: !77)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !358, file: !359, line: 16, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !76, line: 196, baseType: !77)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !335, file: !336, line: 92, baseType: !358, size: 128, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !335, file: !336, line: 93, baseType: !358, size: 128, offset: 832)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !335, file: !336, line: 106, baseType: !368, size: 192, offset: 960)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 192, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 3)
!371 = !{!372, !373}
!372 = !DILocalVariable(name: "__path", arg: 1, scope: !330, file: !331, line: 453, type: !13)
!373 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !330, file: !331, line: 453, type: !334)
!374 = !DILocation(line: 0, scope: !330)
!375 = !DILocation(line: 455, column: 10, scope: !330)
!376 = !DILocation(line: 455, column: 3, scope: !330)
!377 = distinct !DISubprogram(name: "lstat", scope: !331, file: !331, line: 460, type: !332, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!378 = !{!379, !380}
!379 = !DILocalVariable(name: "__path", arg: 1, scope: !377, file: !331, line: 460, type: !13)
!380 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !377, file: !331, line: 460, type: !334)
!381 = !DILocation(line: 0, scope: !377)
!382 = !DILocation(line: 462, column: 10, scope: !377)
!383 = !DILocation(line: 462, column: 3, scope: !377)
!384 = distinct !DISubprogram(name: "fstat", scope: !331, file: !331, line: 467, type: !385, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!8, !8, !334}
!387 = !{!388, !389}
!388 = !DILocalVariable(name: "__fd", arg: 1, scope: !384, file: !331, line: 467, type: !8)
!389 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !384, file: !331, line: 467, type: !334)
!390 = !DILocation(line: 0, scope: !384)
!391 = !DILocation(line: 469, column: 10, scope: !384)
!392 = !DILocation(line: 469, column: 3, scope: !384)
!393 = distinct !DISubprogram(name: "fstatat", scope: !331, file: !331, line: 474, type: !394, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{!8, !8, !13, !334, !8}
!396 = !{!397, !398, !399, !400}
!397 = !DILocalVariable(name: "__fd", arg: 1, scope: !393, file: !331, line: 474, type: !8)
!398 = !DILocalVariable(name: "__filename", arg: 2, scope: !393, file: !331, line: 474, type: !13)
!399 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !393, file: !331, line: 474, type: !334)
!400 = !DILocalVariable(name: "__flag", arg: 4, scope: !393, file: !331, line: 474, type: !8)
!401 = !DILocation(line: 0, scope: !393)
!402 = !DILocation(line: 477, column: 10, scope: !393)
!403 = !DILocation(line: 477, column: 3, scope: !393)
!404 = distinct !DISubprogram(name: "mknod", scope: !331, file: !331, line: 483, type: !405, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!8, !13, !345, !339}
!407 = !{!408, !409, !410}
!408 = !DILocalVariable(name: "__path", arg: 1, scope: !404, file: !331, line: 483, type: !13)
!409 = !DILocalVariable(name: "__mode", arg: 2, scope: !404, file: !331, line: 483, type: !345)
!410 = !DILocalVariable(name: "__dev", arg: 3, scope: !404, file: !331, line: 483, type: !339)
!411 = !DILocation(line: 0, scope: !404)
!412 = !DILocation(line: 485, column: 10, scope: !404)
!413 = !DILocation(line: 485, column: 3, scope: !404)
!414 = distinct !DISubprogram(name: "mknodat", scope: !331, file: !331, line: 491, type: !415, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{!8, !8, !13, !345, !339}
!417 = !{!418, !419, !420, !421}
!418 = !DILocalVariable(name: "__fd", arg: 1, scope: !414, file: !331, line: 491, type: !8)
!419 = !DILocalVariable(name: "__path", arg: 2, scope: !414, file: !331, line: 491, type: !13)
!420 = !DILocalVariable(name: "__mode", arg: 3, scope: !414, file: !331, line: 491, type: !345)
!421 = !DILocalVariable(name: "__dev", arg: 4, scope: !414, file: !331, line: 491, type: !339)
!422 = !DILocation(line: 0, scope: !414)
!423 = !DILocation(line: 494, column: 10, scope: !414)
!424 = !DILocation(line: 494, column: 3, scope: !414)
!425 = distinct !DISubprogram(name: "stat64", scope: !331, file: !331, line: 502, type: !426, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !448)
!426 = !DISubroutineType(types: !427)
!427 = !{!8, !13, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !336, line: 119, size: 1152, elements: !430)
!430 = !{!431, !432, !434, !435, !436, !437, !438, !439, !440, !441, !442, !444, !445, !446, !447}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !429, file: !336, line: 121, baseType: !339, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !429, file: !336, line: 123, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !76, line: 149, baseType: !102)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !429, file: !336, line: 124, baseType: !343, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !429, file: !336, line: 125, baseType: !345, size: 32, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !429, file: !336, line: 132, baseType: !347, size: 32, offset: 224)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !429, file: !336, line: 133, baseType: !349, size: 32, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !429, file: !336, line: 135, baseType: !8, size: 32, offset: 288)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !429, file: !336, line: 136, baseType: !339, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !429, file: !336, line: 137, baseType: !75, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !429, file: !336, line: 143, baseType: !354, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !429, file: !336, line: 144, baseType: !443, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !76, line: 180, baseType: !77)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !429, file: !336, line: 152, baseType: !358, size: 128, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !429, file: !336, line: 153, baseType: !358, size: 128, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !429, file: !336, line: 154, baseType: !358, size: 128, offset: 832)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !429, file: !336, line: 164, baseType: !368, size: 192, offset: 960)
!448 = !{!449, !450}
!449 = !DILocalVariable(name: "__path", arg: 1, scope: !425, file: !331, line: 502, type: !13)
!450 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !425, file: !331, line: 502, type: !428)
!451 = !DILocation(line: 0, scope: !425)
!452 = !DILocation(line: 504, column: 10, scope: !425)
!453 = !DILocation(line: 504, column: 3, scope: !425)
!454 = distinct !DISubprogram(name: "lstat64", scope: !331, file: !331, line: 509, type: !426, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!455 = !{!456, !457}
!456 = !DILocalVariable(name: "__path", arg: 1, scope: !454, file: !331, line: 509, type: !13)
!457 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !454, file: !331, line: 509, type: !428)
!458 = !DILocation(line: 0, scope: !454)
!459 = !DILocation(line: 511, column: 10, scope: !454)
!460 = !DILocation(line: 511, column: 3, scope: !454)
!461 = distinct !DISubprogram(name: "fstat64", scope: !331, file: !331, line: 516, type: !462, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{!8, !8, !428}
!464 = !{!465, !466}
!465 = !DILocalVariable(name: "__fd", arg: 1, scope: !461, file: !331, line: 516, type: !8)
!466 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !461, file: !331, line: 516, type: !428)
!467 = !DILocation(line: 0, scope: !461)
!468 = !DILocation(line: 518, column: 10, scope: !461)
!469 = !DILocation(line: 518, column: 3, scope: !461)
!470 = distinct !DISubprogram(name: "fstatat64", scope: !331, file: !331, line: 523, type: !471, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!8, !8, !13, !428, !8}
!473 = !{!474, !475, !476, !477}
!474 = !DILocalVariable(name: "__fd", arg: 1, scope: !470, file: !331, line: 523, type: !8)
!475 = !DILocalVariable(name: "__filename", arg: 2, scope: !470, file: !331, line: 523, type: !13)
!476 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !470, file: !331, line: 523, type: !428)
!477 = !DILocalVariable(name: "__flag", arg: 4, scope: !470, file: !331, line: 523, type: !8)
!478 = !DILocation(line: 0, scope: !470)
!479 = !DILocation(line: 526, column: 10, scope: !470)
!480 = !DILocation(line: 526, column: 3, scope: !470)
!481 = distinct !DISubprogram(name: "update_path", scope: !3, file: !3, line: 250, type: !482, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!10, !13, !13}
!484 = !{!485, !486, !487, !488, !489, !491, !494, !496}
!485 = !DILocalVariable(name: "path", arg: 1, scope: !481, file: !3, line: 250, type: !13)
!486 = !DILocalVariable(name: "key", arg: 2, scope: !481, file: !3, line: 250, type: !13)
!487 = !DILocalVariable(name: "result", scope: !481, file: !3, line: 252, type: !10)
!488 = !DILocalVariable(name: "p", scope: !481, file: !3, line: 252, type: !10)
!489 = !DILocalVariable(name: "len", scope: !481, file: !3, line: 253, type: !490)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!491 = !DILocalVariable(name: "free_key", scope: !492, file: !3, line: 260, type: !7)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 259, column: 5)
!493 = distinct !DILexicalBlock(scope: !481, file: !3, line: 255, column: 7)
!494 = !DILocalVariable(name: "src", scope: !495, file: !3, line: 283, type: !10)
!495 = distinct !DILexicalBlock(scope: !481, file: !3, line: 282, column: 5)
!496 = !DILocalVariable(name: "dest", scope: !495, file: !3, line: 283, type: !10)
!497 = !DILocation(line: 0, scope: !481)
!498 = !DILocation(line: 253, column: 27, scope: !481)
!499 = !DILocation(line: 253, column: 19, scope: !481)
!500 = !DILocation(line: 255, column: 24, scope: !493)
!501 = !DILocation(line: 255, column: 36, scope: !493)
!502 = !DILocation(line: 255, column: 9, scope: !493)
!503 = !DILocation(line: 256, column: 7, scope: !493)
!504 = !DILocation(line: 256, column: 11, scope: !493)
!505 = !DILocation(line: 257, column: 11, scope: !493)
!506 = !DILocation(line: 257, column: 24, scope: !493)
!507 = !DILocation(line: 258, column: 14, scope: !493)
!508 = !DILocation(line: 258, column: 7, scope: !493)
!509 = !DILocation(line: 255, column: 7, scope: !481)
!510 = !DILocation(line: 0, scope: !492)
!511 = !DILocation(line: 262, column: 11, scope: !512)
!512 = distinct !DILexicalBlock(scope: !492, file: !3, line: 262, column: 11)
!513 = !DILocation(line: 262, column: 18, scope: !512)
!514 = !DILocation(line: 262, column: 11, scope: !492)
!515 = !DILocation(line: 264, column: 10, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !3, line: 263, column: 2)
!517 = !DILocation(line: 266, column: 2, scope: !516)
!518 = !DILocation(line: 268, column: 16, scope: !492)
!519 = !DILocation(line: 269, column: 11, scope: !492)
!520 = !DILocation(line: 270, column: 2, scope: !521)
!521 = distinct !DILexicalBlock(scope: !492, file: !3, line: 269, column: 11)
!522 = !DILocation(line: 271, column: 16, scope: !492)
!523 = !DILocation(line: 272, column: 5, scope: !492)
!524 = !DILocation(line: 274, column: 14, scope: !493)
!525 = !DILocation(line: 0, scope: !493)
!526 = !DILocation(line: 281, column: 3, scope: !481)
!527 = !DILocation(line: 285, column: 11, scope: !495)
!528 = !DILocation(line: 286, column: 13, scope: !529)
!529 = distinct !DILexicalBlock(scope: !495, file: !3, line: 286, column: 11)
!530 = !DILocation(line: 286, column: 11, scope: !495)
!531 = !DILocation(line: 289, column: 11, scope: !532)
!532 = distinct !DILexicalBlock(scope: !495, file: !3, line: 289, column: 11)
!533 = !DILocation(line: 289, column: 16, scope: !532)
!534 = !DILocation(line: 290, column: 4, scope: !532)
!535 = !DILocation(line: 290, column: 7, scope: !532)
!536 = !DILocation(line: 291, column: 10, scope: !532)
!537 = !DILocation(line: 291, column: 4, scope: !532)
!538 = !DILocation(line: 291, column: 23, scope: !532)
!539 = !DILocation(line: 289, column: 11, scope: !495)
!540 = !DILocation(line: 293, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !532, file: !3, line: 292, column: 2)
!542 = !DILocation(line: 294, column: 32, scope: !543)
!543 = distinct !DILexicalBlock(scope: !541, file: !3, line: 294, column: 8)
!544 = !DILocation(line: 294, column: 54, scope: !543)
!545 = !DILocation(line: 294, column: 8, scope: !541)
!546 = !DILocation(line: 305, column: 8, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !3, line: 300, column: 6)
!548 = !DILocation(line: 296, column: 11, scope: !549)
!549 = distinct !DILexicalBlock(scope: !543, file: !3, line: 295, column: 6)
!550 = !DILocation(line: 297, column: 8, scope: !549)
!551 = !DILocation(line: 0, scope: !547)
!552 = !DILocation(line: 0, scope: !495)
!553 = !DILocation(line: 308, column: 5, scope: !554)
!554 = distinct !DILexicalBlock(scope: !547, file: !3, line: 306, column: 3)
!555 = !DILocation(line: 0, scope: !554)
!556 = !DILocation(line: 308, column: 17, scope: !554)
!557 = !DILocation(line: 308, column: 27, scope: !554)
!558 = !DILocation(line: 308, column: 30, scope: !554)
!559 = distinct !{!559, !553, !560}
!560 = !DILocation(line: 309, column: 9, scope: !554)
!561 = !DILocation(line: 310, column: 5, scope: !554)
!562 = !DILocation(line: 310, column: 17, scope: !554)
!563 = !DILocation(line: 310, column: 27, scope: !554)
!564 = !DILocation(line: 310, column: 31, scope: !554)
!565 = distinct !{!565, !561, !566}
!566 = !DILocation(line: 311, column: 9, scope: !554)
!567 = !DILocation(line: 313, column: 30, scope: !547)
!568 = !DILocation(line: 316, column: 12, scope: !569)
!569 = distinct !DILexicalBlock(scope: !547, file: !3, line: 316, column: 12)
!570 = !DILocation(line: 313, column: 33, scope: !547)
!571 = !DILocation(line: 313, column: 39, scope: !547)
!572 = !DILocation(line: 312, column: 3, scope: !554)
!573 = distinct !{!573, !546, !574}
!574 = !DILocation(line: 313, column: 45, scope: !547)
!575 = !DILocation(line: 316, column: 18, scope: !569)
!576 = !DILocation(line: 316, column: 25, scope: !569)
!577 = !DILocation(line: 316, column: 28, scope: !569)
!578 = !DILocation(line: 316, column: 12, scope: !547)
!579 = !DILocation(line: 318, column: 8, scope: !580)
!580 = distinct !DILexicalBlock(scope: !569, file: !3, line: 317, column: 3)
!581 = !DILocation(line: 319, column: 5, scope: !580)
!582 = !DILocation(line: 321, column: 16, scope: !547)
!583 = !DILocation(line: 322, column: 8, scope: !547)
!584 = !DILocation(line: 322, column: 15, scope: !547)
!585 = !DILocation(line: 325, column: 8, scope: !547)
!586 = !DILocation(line: 323, column: 3, scope: !547)
!587 = distinct !{!587, !583, !588}
!588 = !DILocation(line: 323, column: 5, scope: !547)
!589 = !DILocation(line: 325, column: 26, scope: !547)
!590 = !DILocation(line: 325, column: 30, scope: !547)
!591 = !DILocation(line: 325, column: 24, scope: !547)
!592 = !DILocation(line: 325, column: 34, scope: !547)
!593 = distinct !{!593, !585, !594}
!594 = !DILocation(line: 326, column: 3, scope: !547)
!595 = !DILocation(line: 325, column: 21, scope: !547)
!596 = distinct !{!596, !526, !597}
!597 = !DILocation(line: 331, column: 5, scope: !481)
!598 = !DILocation(line: 349, column: 3, scope: !481)
!599 = distinct !DISubprogram(name: "translate_name", scope: !3, file: !3, line: 186, type: !600, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!10, !10}
!602 = !{!603, !604, !605, !606, !607, !608}
!603 = !DILocalVariable(name: "name", arg: 1, scope: !599, file: !3, line: 186, type: !10)
!604 = !DILocalVariable(name: "code", scope: !599, file: !3, line: 188, type: !11)
!605 = !DILocalVariable(name: "key", scope: !599, file: !3, line: 189, type: !10)
!606 = !DILocalVariable(name: "old_name", scope: !599, file: !3, line: 189, type: !10)
!607 = !DILocalVariable(name: "prefix", scope: !599, file: !3, line: 190, type: !13)
!608 = !DILocalVariable(name: "keylen", scope: !599, file: !3, line: 191, type: !8)
!609 = !DILocation(line: 0, scope: !599)
!610 = !DILocation(line: 193, column: 3, scope: !599)
!611 = !DILocation(line: 195, column: 14, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 194, column: 5)
!613 = distinct !DILexicalBlock(scope: !614, file: !3, line: 193, column: 3)
!614 = distinct !DILexicalBlock(scope: !599, file: !3, line: 193, column: 3)
!615 = !DILocation(line: 196, column: 16, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !3, line: 196, column: 11)
!617 = !DILocation(line: 196, column: 31, scope: !616)
!618 = !DILocation(line: 196, column: 23, scope: !616)
!619 = !DILocation(line: 199, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !612, file: !3, line: 199, column: 7)
!621 = !DILocation(line: 0, scope: !620)
!622 = !DILocation(line: 200, column: 18, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !3, line: 199, column: 7)
!624 = !DILocation(line: 200, column: 6, scope: !623)
!625 = !DILocation(line: 200, column: 23, scope: !623)
!626 = !DILocation(line: 200, column: 32, scope: !623)
!627 = !DILocation(line: 200, column: 28, scope: !623)
!628 = !DILocation(line: 199, column: 7, scope: !623)
!629 = distinct !{!629, !619, !630}
!630 = !DILocation(line: 202, column: 2, scope: !620)
!631 = !DILocation(line: 204, column: 22, scope: !612)
!632 = !DILocation(line: 205, column: 22, scope: !612)
!633 = !DILocation(line: 205, column: 31, scope: !612)
!634 = !DILocation(line: 205, column: 7, scope: !612)
!635 = !DILocation(line: 206, column: 7, scope: !612)
!636 = !DILocation(line: 206, column: 19, scope: !612)
!637 = !DILocation(line: 208, column: 16, scope: !638)
!638 = distinct !DILexicalBlock(scope: !612, file: !3, line: 208, column: 11)
!639 = !DILocation(line: 208, column: 11, scope: !612)
!640 = !DILocation(line: 210, column: 13, scope: !641)
!641 = distinct !DILexicalBlock(scope: !638, file: !3, line: 209, column: 2)
!642 = !DILocation(line: 211, column: 15, scope: !643)
!643 = distinct !DILexicalBlock(scope: !641, file: !3, line: 211, column: 8)
!644 = !DILocation(line: 212, column: 15, scope: !643)
!645 = !DILocation(line: 211, column: 8, scope: !641)
!646 = !DILocation(line: 213, column: 2, scope: !641)
!647 = !DILocation(line: 215, column: 11, scope: !638)
!648 = !DILocation(line: 0, scope: !638)
!649 = !DILocation(line: 217, column: 18, scope: !650)
!650 = distinct !DILexicalBlock(scope: !612, file: !3, line: 217, column: 11)
!651 = !DILocation(line: 217, column: 11, scope: !612)
!652 = !DILocation(line: 226, column: 14, scope: !612)
!653 = !DILocation(line: 227, column: 7, scope: !612)
!654 = !DILocation(line: 193, column: 3, scope: !613)
!655 = distinct !{!655, !656, !657}
!656 = !DILocation(line: 193, column: 3, scope: !614)
!657 = !DILocation(line: 228, column: 5, scope: !614)
!658 = !DILocation(line: 230, column: 3, scope: !599)
!659 = distinct !DISubprogram(name: "set_std_prefix", scope: !3, file: !3, line: 354, type: !660, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !13, !8}
!662 = !{!663, !664}
!663 = !DILocalVariable(name: "prefix", arg: 1, scope: !659, file: !3, line: 354, type: !13)
!664 = !DILocalVariable(name: "len", arg: 2, scope: !659, file: !3, line: 354, type: !8)
!665 = !DILocation(line: 0, scope: !659)
!666 = !DILocation(line: 356, column: 16, scope: !659)
!667 = !DILocation(line: 356, column: 14, scope: !659)
!668 = !DILocation(line: 357, column: 1, scope: !659)
!669 = distinct !DISubprogram(name: "save_string", scope: !3, file: !3, line: 116, type: !670, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !672)
!670 = !DISubroutineType(types: !671)
!671 = !{!10, !13, !8}
!672 = !{!673, !674, !675}
!673 = !DILocalVariable(name: "s", arg: 1, scope: !669, file: !3, line: 116, type: !13)
!674 = !DILocalVariable(name: "len", arg: 2, scope: !669, file: !3, line: 116, type: !8)
!675 = !DILocalVariable(name: "result", scope: !669, file: !3, line: 118, type: !10)
!676 = !DILocation(line: 0, scope: !669)
!677 = !DILocation(line: 118, column: 18, scope: !669)
!678 = !DILocation(line: 120, column: 22, scope: !669)
!679 = !DILocation(line: 120, column: 3, scope: !669)
!680 = !DILocation(line: 121, column: 3, scope: !669)
!681 = !DILocation(line: 121, column: 15, scope: !669)
!682 = !DILocation(line: 122, column: 3, scope: !669)
!683 = distinct !DISubprogram(name: "get_key_value", scope: !3, file: !3, line: 92, type: !684, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!13, !10}
!686 = !{!687, !688, !689}
!687 = !DILocalVariable(name: "key", arg: 1, scope: !683, file: !3, line: 92, type: !10)
!688 = !DILocalVariable(name: "prefix", scope: !683, file: !3, line: 94, type: !13)
!689 = !DILocalVariable(name: "temp", scope: !683, file: !3, line: 95, type: !10)
!690 = !DILocation(line: 0, scope: !683)
!691 = !DILocation(line: 102, column: 29, scope: !692)
!692 = distinct !DILexicalBlock(scope: !683, file: !3, line: 101, column: 7)
!693 = !DILocation(line: 102, column: 14, scope: !692)
!694 = !DILocation(line: 104, column: 14, scope: !695)
!695 = distinct !DILexicalBlock(scope: !683, file: !3, line: 104, column: 7)
!696 = !DILocation(line: 105, column: 14, scope: !695)
!697 = !DILocation(line: 104, column: 7, scope: !683)
!698 = !DILocation(line: 107, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !683, file: !3, line: 107, column: 7)
!700 = !DILocation(line: 107, column: 7, scope: !683)
!701 = !DILocation(line: 108, column: 5, scope: !699)
!702 = !DILocation(line: 110, column: 3, scope: !683)
