; ModuleID = 'alloca.bc'
source_filename = "alloca.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.hdr = type { %struct.anon }
%struct.anon = type { %union.hdr*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stack_dir = internal unnamed_addr global i32 0, align 4, !dbg !0
@last_alloca_header = internal unnamed_addr global %union.hdr* null, align 8, !dbg !44
@libiberty_optr = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !30
@libiberty_nptr = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !32
@libiberty_len = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !34
@find_stack_direction.addr = internal unnamed_addr global i8* null, align 8, !dbg !37

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !50 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !64, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !67
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !68
  ret i32 %call, !dbg !69
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !70 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !73
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !74
  ret i32 %call, !dbg !75
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !76 {
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

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !142 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !144, metadata !DIExpression()), !dbg !145
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !146
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !146
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !146
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !146
  %cmp = icmp uge i8* %0, %1, !dbg !146
  %conv1 = zext i1 %cmp to i64, !dbg !146
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !146
  %tobool = icmp eq i64 %expval, 0, !dbg !146
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !146

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !146
  br label %cond.end, !dbg !146

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !146
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !146
  %2 = load i8, i8* %0, align 1, !dbg !146
  %conv3 = zext i8 %2 to i32, !dbg !146
  br label %cond.end, !dbg !146

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !146
  ret i32 %cond, !dbg !147
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !148 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !149
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !149
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !149
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !149
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !149
  %cmp = icmp uge i8* %1, %2, !dbg !149
  %conv1 = zext i1 %cmp to i64, !dbg !149
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !149
  %tobool = icmp eq i64 %expval, 0, !dbg !149
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !149

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !149
  br label %cond.end, !dbg !149

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !149
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !149
  %3 = load i8, i8* %1, align 1, !dbg !149
  %conv3 = zext i8 %3 to i32, !dbg !149
  br label %cond.end, !dbg !149

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !149
  ret i32 %cond, !dbg !150
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !151 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !155, metadata !DIExpression()), !dbg !156
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !157
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !158
  ret i32 %call, !dbg !159
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !160 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !165, metadata !DIExpression()), !dbg !166
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !167
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !167
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !167
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !167
  %cmp = icmp uge i8* %0, %1, !dbg !167
  %conv1 = zext i1 %cmp to i64, !dbg !167
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !167
  %tobool = icmp eq i64 %expval, 0, !dbg !167
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !167

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !167
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !167
  br label %cond.end, !dbg !167

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !167
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !167
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !167
  store i8 %conv2, i8* %0, align 1, !dbg !167
  %conv6 = and i32 %__c, 255, !dbg !167
  br label %cond.end, !dbg !167

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !167
  ret i32 %cond, !dbg !168
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !171, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !172, metadata !DIExpression()), !dbg !173
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !174
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !174
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !174
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !174
  %cmp = icmp uge i8* %0, %1, !dbg !174
  %conv1 = zext i1 %cmp to i64, !dbg !174
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !174
  %tobool = icmp eq i64 %expval, 0, !dbg !174
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !174

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !174
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !174
  br label %cond.end, !dbg !174

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !174
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !174
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !174
  store i8 %conv2, i8* %0, align 1, !dbg !174
  %conv6 = and i32 %__c, 255, !dbg !174
  br label %cond.end, !dbg !174

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !174
  ret i32 %cond, !dbg !175
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !176 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !180
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !180
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !180
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !180
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !180
  %cmp = icmp uge i8* %1, %2, !dbg !180
  %conv1 = zext i1 %cmp to i64, !dbg !180
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !180
  %tobool = icmp eq i64 %expval, 0, !dbg !180
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !180

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !180
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !180
  br label %cond.end, !dbg !180

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !180
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !180
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !180
  store i8 %conv4, i8* %1, align 1, !dbg !180
  %conv6 = and i32 %__c, 255, !dbg !180
  br label %cond.end, !dbg !180

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !180
  ret i32 %cond, !dbg !181
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !182 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64* %__n, metadata !189, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !190, metadata !DIExpression()), !dbg !191
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !192
  ret i64 %call, !dbg !193
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !194 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !196, metadata !DIExpression()), !dbg !197
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !198
  %0 = load i32, i32* %_flags, align 8, !dbg !198
  %and = lshr i32 %0, 4, !dbg !198
  %and.lobit = and i32 %and, 1, !dbg !198
  ret i32 %and.lobit, !dbg !199
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !200 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !202, metadata !DIExpression()), !dbg !203
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !204
  %0 = load i32, i32* %_flags, align 8, !dbg !204
  %and = lshr i32 %0, 5, !dbg !204
  %and.lobit = and i32 %and, 1, !dbg !204
  ret i32 %and.lobit, !dbg !205
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !206 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !211, metadata !DIExpression()), !dbg !212
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !213
  %conv = trunc i64 %call to i32, !dbg !214
  ret i32 %conv, !dbg !215
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !220, metadata !DIExpression()), !dbg !221
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !222
  ret i64 %call, !dbg !223
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !224 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !229, metadata !DIExpression()), !dbg !230
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !231
  ret i64 %call, !dbg !232
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !233 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !244, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i8* %__base, metadata !245, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !246, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64 %__size, metadata !247, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !248, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !250, metadata !DIExpression()), !dbg !254
  br label %while.cond, !dbg !255

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !256
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !254
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !250, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !249, metadata !DIExpression()), !dbg !254
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !257
  br i1 %cmp, label %while.body, label %cleanup, !dbg !255

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !258
  %div = lshr i64 %add, 1, !dbg !260
  call void @llvm.dbg.value(metadata i64 %div, metadata !251, metadata !DIExpression()), !dbg !254
  %mul = mul i64 %div, %__size, !dbg !261
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !262
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !252, metadata !DIExpression()), !dbg !254
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !263
  call void @llvm.dbg.value(metadata i32 %call, metadata !253, metadata !DIExpression()), !dbg !254
  %cmp1 = icmp slt i32 %call, 0, !dbg !264
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !266

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !267
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !269

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !270
  call void @llvm.dbg.value(metadata i64 %add4, metadata !249, metadata !DIExpression()), !dbg !254
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !254
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !254
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !250, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !249, metadata !DIExpression()), !dbg !254
  br label %while.cond, !dbg !255, !llvm.loop !271

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !254
  ret i8* %retval.0, !dbg !273
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !274 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !280, metadata !DIExpression()), !dbg !281
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !282
  ret double %call, !dbg !283
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @C_alloca(i64 %size) local_unnamed_addr #4 !dbg !284 {
entry:
  %probe = alloca i8, align 1
  call void @llvm.dbg.value(metadata i64 %size, metadata !288, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %probe, metadata !289, metadata !DIExpression(DW_OP_deref)), !dbg !300
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %probe) #7, !dbg !301
  call void @llvm.dbg.value(metadata i8* %probe, metadata !290, metadata !DIExpression()), !dbg !300
  %0 = load i32, i32* @stack_dir, align 4, !dbg !302
  %cmp = icmp eq i32 %0, 0, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  tail call fastcc void @find_stack_direction() #8, !dbg !306
  br label %if.end, !dbg !306

if.end:                                           ; preds = %if.then, %entry
  %1 = load %union.hdr*, %union.hdr** @last_alloca_header, align 8, !dbg !307
  call void @llvm.dbg.value(metadata %union.hdr* %1, metadata !291, metadata !DIExpression()), !dbg !308
  br label %for.cond, !dbg !309

for.cond:                                         ; preds = %if.then9, %if.end
  %.in = phi %union.hdr* [ %1, %if.end ], [ %5, %if.then9 ]
  %hp.0 = phi %union.hdr* [ %1, %if.end ], [ %5, %if.then9 ], !dbg !310
  call void @llvm.dbg.value(metadata %union.hdr* %hp.0, metadata !291, metadata !DIExpression()), !dbg !308
  %cmp1 = icmp eq %union.hdr* %hp.0, null, !dbg !311
  br i1 %cmp1, label %for.end, label %for.body, !dbg !312

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @stack_dir, align 4, !dbg !313
  %cmp2 = icmp sgt i32 %2, 0, !dbg !314
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false, !dbg !315

land.lhs.true:                                    ; preds = %for.body
  %deep = getelementptr inbounds %union.hdr, %union.hdr* %hp.0, i64 0, i32 0, i32 1, !dbg !316
  %3 = load i8*, i8** %deep, align 8, !dbg !316
  %cmp3 = icmp ugt i8* %3, %probe, !dbg !317
  br i1 %cmp3, label %if.then9, label %lor.lhs.false, !dbg !318

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %cmp4 = icmp slt i32 %2, 0, !dbg !319
  br i1 %cmp4, label %land.lhs.true5, label %for.end, !dbg !320

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %deep7 = getelementptr inbounds %union.hdr, %union.hdr* %hp.0, i64 0, i32 0, i32 1, !dbg !321
  %4 = load i8*, i8** %deep7, align 8, !dbg !321
  %cmp8 = icmp ult i8* %4, %probe, !dbg !322
  br i1 %cmp8, label %if.then9, label %for.end, !dbg !323

if.then9:                                         ; preds = %land.lhs.true5, %land.lhs.true
  %next = getelementptr inbounds %union.hdr, %union.hdr* %hp.0, i64 0, i32 0, i32 0, !dbg !324
  %5 = load %union.hdr*, %union.hdr** %next, align 8, !dbg !324
  call void @llvm.dbg.value(metadata %union.hdr* %5, metadata !293, metadata !DIExpression()), !dbg !325
  %6 = bitcast %union.hdr* %hp.0 to i8*, !dbg !326
  call void @free(i8* nonnull %6) #6, !dbg !327
  call void @llvm.dbg.value(metadata %union.hdr* %5, metadata !291, metadata !DIExpression()), !dbg !308
  br label %for.cond, !dbg !328, !llvm.loop !329

for.end:                                          ; preds = %for.cond, %lor.lhs.false, %land.lhs.true5
  %.in.lcssa = phi %union.hdr* [ %.in, %for.cond ], [ %.in, %lor.lhs.false ], [ %.in, %land.lhs.true5 ]
  store %union.hdr* %.in.lcssa, %union.hdr** @last_alloca_header, align 8, !dbg !331
  %cmp12 = icmp eq i64 %size, 0, !dbg !332
  br i1 %cmp12, label %cleanup, label %if.end14, !dbg !334

if.end14:                                         ; preds = %for.end
  %add = add i64 %size, 16, !dbg !335
  %call = call i8* @xmalloc(i64 %add) #6, !dbg !335
  call void @llvm.dbg.value(metadata i8* %call, metadata !298, metadata !DIExpression()), !dbg !336
  %cmp15 = icmp eq i8* %call, null, !dbg !337
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !339

if.then16:                                        ; preds = %if.end14
  call void @abort() #6, !dbg !340
  br label %if.end17, !dbg !340

if.end17:                                         ; preds = %if.then16, %if.end14
  %7 = load i64, i64* bitcast (%union.hdr** @last_alloca_header to i64*), align 8, !dbg !341
  %8 = bitcast i8* %call to i64*, !dbg !342
  store i64 %7, i64* %8, align 8, !dbg !342
  %deep21 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !343
  %9 = bitcast i8* %deep21 to i8**, !dbg !343
  store i8* %probe, i8** %9, align 8, !dbg !344
  store i8* %call, i8** bitcast (%union.hdr** @last_alloca_header to i8**), align 8, !dbg !345
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 16, !dbg !346
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end17
  %retval.0 = phi i8* [ %add.ptr, %if.end17 ], [ null, %for.end ], !dbg !300
  call void @llvm.dbg.value(metadata i8* %probe, metadata !289, metadata !DIExpression(DW_OP_deref)), !dbg !300
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %probe) #7, !dbg !347
  ret i8* %retval.0, !dbg !347
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_stack_direction() unnamed_addr #4 !dbg !39 {
entry:
  %dummy = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %dummy, metadata !43, metadata !DIExpression(DW_OP_deref)), !dbg !348
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %dummy) #7, !dbg !349
  %0 = load i8*, i8** @find_stack_direction.addr, align 8, !dbg !350
  %cmp = icmp eq i8* %0, null, !dbg !352
  br i1 %cmp, label %if.then, label %if.else, !dbg !353

if.then:                                          ; preds = %entry
  store i8* %dummy, i8** @find_stack_direction.addr, align 8, !dbg !354
  call fastcc void @find_stack_direction() #8, !dbg !356
  br label %if.end4, !dbg !357

if.else:                                          ; preds = %entry
  %cmp1 = icmp ugt i8* %dummy, %0, !dbg !358
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !361

if.then2:                                         ; preds = %if.else
  store i32 1, i32* @stack_dir, align 4, !dbg !362
  br label %if.end4, !dbg !363

if.else3:                                         ; preds = %if.else
  store i32 -1, i32* @stack_dir, align 4, !dbg !364
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else3, %if.then
  call void @llvm.dbg.value(metadata i8* %dummy, metadata !43, metadata !DIExpression(DW_OP_deref)), !dbg !348
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %dummy) #7, !dbg !365
  ret void, !dbg !365
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local void @abort() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "stack_dir", scope: !2, file: !3, line: 102, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !29, nameTableKind: None)
!3 = !DIFile(filename: "alloca.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13, !10, !15}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "header", file: !3, line: 148, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hdr", file: !3, line: 140, size: 128, elements: !18)
!18 = !{!19, !23}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !17, file: !3, line: 142, baseType: !20, size: 64)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 8)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !17, file: !3, line: 147, baseType: !24, size: 128)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 143, size: 128, elements: !25)
!25 = !{!26, !28}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !24, file: !3, line: 145, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "deep", scope: !24, file: !3, line: 146, baseType: !10, size: 64, offset: 64)
!29 = !{!30, !32, !34, !0, !37, !44}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "libiberty_optr", scope: !2, file: !3, line: 63, type: !13, isLocal: false, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "libiberty_nptr", scope: !2, file: !3, line: 64, type: !10, isLocal: false, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "libiberty_len", scope: !2, file: !3, line: 65, type: !36, isLocal: false, isDefinition: true)
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "addr", scope: !39, file: !3, line: 108, type: !10, isLocal: true, isDefinition: true)
!39 = distinct !DISubprogram(name: "find_stack_direction", scope: !3, file: !3, line: 106, type: !40, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{null}
!42 = !{!43}
!43 = !DILocalVariable(name: "dummy", scope: !39, file: !3, line: 109, type: !11)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "last_alloca_header", scope: !2, file: !3, line: 150, type: !15, isLocal: true, isDefinition: true)
!46 = !{i32 2, !"Dwarf Version", i32 4}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 4}
!49 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!50 = distinct !DISubprogram(name: "vprintf", scope: !51, file: !51, line: 39, type: !52, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!52 = !DISubroutineType(types: !53)
!53 = !{!8, !54, !55}
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !57)
!57 = !{!58, !60, !61, !62}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !56, file: !3, baseType: !59, size: 32)
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !56, file: !3, baseType: !59, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !56, file: !3, baseType: !12, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !56, file: !3, baseType: !12, size: 64, offset: 128)
!63 = !{!64, !65}
!64 = !DILocalVariable(name: "__fmt", arg: 1, scope: !50, file: !51, line: 39, type: !54)
!65 = !DILocalVariable(name: "__arg", arg: 2, scope: !50, file: !51, line: 39, type: !55)
!66 = !DILocation(line: 0, scope: !50)
!67 = !DILocation(line: 41, column: 20, scope: !50)
!68 = !DILocation(line: 41, column: 10, scope: !50)
!69 = !DILocation(line: 41, column: 3, scope: !50)
!70 = distinct !DISubprogram(name: "getchar", scope: !51, file: !51, line: 47, type: !71, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!71 = !DISubroutineType(types: !72)
!72 = !{!8}
!73 = !DILocation(line: 49, column: 16, scope: !70)
!74 = !DILocation(line: 49, column: 10, scope: !70)
!75 = !DILocation(line: 49, column: 3, scope: !70)
!76 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !51, file: !51, line: 56, type: !77, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!77 = !DISubroutineType(types: !78)
!78 = !{!8, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !81, line: 7, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !100, !102, !103, !104, !108, !110, !112, !116, !119, !121, !124, !127, !128, !129, !132, !133}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !82, file: !83, line: 51, baseType: !8, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !82, file: !83, line: 54, baseType: !10, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !82, file: !83, line: 55, baseType: !10, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !82, file: !83, line: 56, baseType: !10, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !82, file: !83, line: 57, baseType: !10, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !82, file: !83, line: 58, baseType: !10, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !82, file: !83, line: 59, baseType: !10, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !82, file: !83, line: 60, baseType: !10, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !82, file: !83, line: 61, baseType: !10, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !82, file: !83, line: 64, baseType: !10, size: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !82, file: !83, line: 65, baseType: !10, size: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !82, file: !83, line: 66, baseType: !10, size: 64, offset: 704)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !82, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !83, line: 36, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !82, file: !83, line: 70, baseType: !101, size: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !82, file: !83, line: 72, baseType: !8, size: 32, offset: 896)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !82, file: !83, line: 73, baseType: !8, size: 32, offset: 928)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !82, file: !83, line: 74, baseType: !105, size: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !106, line: 152, baseType: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!107 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !82, file: !83, line: 77, baseType: !109, size: 16, offset: 1024)
!109 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !82, file: !83, line: 78, baseType: !111, size: 8, offset: 1040)
!111 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !82, file: !83, line: 79, baseType: !113, size: 8, offset: 1048)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 1)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !82, file: !83, line: 81, baseType: !117, size: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !83, line: 43, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !82, file: !83, line: 89, baseType: !120, size: 64, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !106, line: 153, baseType: !107)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !82, file: !83, line: 91, baseType: !122, size: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !83, line: 37, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !82, file: !83, line: 92, baseType: !125, size: 64, offset: 1280)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !83, line: 38, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !82, file: !83, line: 93, baseType: !101, size: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !82, file: !83, line: 94, baseType: !12, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !82, file: !83, line: 95, baseType: !130, size: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 46, baseType: !36)
!131 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !82, file: !83, line: 96, baseType: !8, size: 32, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !82, file: !83, line: 98, baseType: !134, size: 160, offset: 1568)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 20)
!137 = !{!138}
!138 = !DILocalVariable(name: "__fp", arg: 1, scope: !76, file: !51, line: 56, type: !79)
!139 = !DILocation(line: 0, scope: !76)
!140 = !DILocation(line: 58, column: 10, scope: !76)
!141 = !DILocation(line: 58, column: 3, scope: !76)
!142 = distinct !DISubprogram(name: "getc_unlocked", scope: !51, file: !51, line: 66, type: !77, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!143 = !{!144}
!144 = !DILocalVariable(name: "__fp", arg: 1, scope: !142, file: !51, line: 66, type: !79)
!145 = !DILocation(line: 0, scope: !142)
!146 = !DILocation(line: 68, column: 10, scope: !142)
!147 = !DILocation(line: 68, column: 3, scope: !142)
!148 = distinct !DISubprogram(name: "getchar_unlocked", scope: !51, file: !51, line: 73, type: !71, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!149 = !DILocation(line: 75, column: 10, scope: !148)
!150 = !DILocation(line: 75, column: 3, scope: !148)
!151 = distinct !DISubprogram(name: "putchar", scope: !51, file: !51, line: 82, type: !152, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!8, !8}
!154 = !{!155}
!155 = !DILocalVariable(name: "__c", arg: 1, scope: !151, file: !51, line: 82, type: !8)
!156 = !DILocation(line: 0, scope: !151)
!157 = !DILocation(line: 84, column: 21, scope: !151)
!158 = !DILocation(line: 84, column: 10, scope: !151)
!159 = !DILocation(line: 84, column: 3, scope: !151)
!160 = distinct !DISubprogram(name: "fputc_unlocked", scope: !51, file: !51, line: 91, type: !161, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{!8, !8, !79}
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "__c", arg: 1, scope: !160, file: !51, line: 91, type: !8)
!165 = !DILocalVariable(name: "__stream", arg: 2, scope: !160, file: !51, line: 91, type: !79)
!166 = !DILocation(line: 0, scope: !160)
!167 = !DILocation(line: 93, column: 10, scope: !160)
!168 = !DILocation(line: 93, column: 3, scope: !160)
!169 = distinct !DISubprogram(name: "putc_unlocked", scope: !51, file: !51, line: 101, type: !161, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!170 = !{!171, !172}
!171 = !DILocalVariable(name: "__c", arg: 1, scope: !169, file: !51, line: 101, type: !8)
!172 = !DILocalVariable(name: "__stream", arg: 2, scope: !169, file: !51, line: 101, type: !79)
!173 = !DILocation(line: 0, scope: !169)
!174 = !DILocation(line: 103, column: 10, scope: !169)
!175 = !DILocation(line: 103, column: 3, scope: !169)
!176 = distinct !DISubprogram(name: "putchar_unlocked", scope: !51, file: !51, line: 108, type: !152, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!177 = !{!178}
!178 = !DILocalVariable(name: "__c", arg: 1, scope: !176, file: !51, line: 108, type: !8)
!179 = !DILocation(line: 0, scope: !176)
!180 = !DILocation(line: 110, column: 10, scope: !176)
!181 = !DILocation(line: 110, column: 3, scope: !176)
!182 = distinct !DISubprogram(name: "getline", scope: !51, file: !51, line: 118, type: !183, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!183 = !DISubroutineType(types: !184)
!184 = !{!185, !9, !186, !79}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !106, line: 193, baseType: !107)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!187 = !{!188, !189, !190}
!188 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !182, file: !51, line: 118, type: !9)
!189 = !DILocalVariable(name: "__n", arg: 2, scope: !182, file: !51, line: 118, type: !186)
!190 = !DILocalVariable(name: "__stream", arg: 3, scope: !182, file: !51, line: 118, type: !79)
!191 = !DILocation(line: 0, scope: !182)
!192 = !DILocation(line: 120, column: 10, scope: !182)
!193 = !DILocation(line: 120, column: 3, scope: !182)
!194 = distinct !DISubprogram(name: "feof_unlocked", scope: !51, file: !51, line: 128, type: !77, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!195 = !{!196}
!196 = !DILocalVariable(name: "__stream", arg: 1, scope: !194, file: !51, line: 128, type: !79)
!197 = !DILocation(line: 0, scope: !194)
!198 = !DILocation(line: 130, column: 10, scope: !194)
!199 = !DILocation(line: 130, column: 3, scope: !194)
!200 = distinct !DISubprogram(name: "ferror_unlocked", scope: !51, file: !51, line: 135, type: !77, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!201 = !{!202}
!202 = !DILocalVariable(name: "__stream", arg: 1, scope: !200, file: !51, line: 135, type: !79)
!203 = !DILocation(line: 0, scope: !200)
!204 = !DILocation(line: 137, column: 10, scope: !200)
!205 = !DILocation(line: 137, column: 3, scope: !200)
!206 = distinct !DISubprogram(name: "atoi", scope: !207, file: !207, line: 361, type: !208, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!207 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!208 = !DISubroutineType(types: !209)
!209 = !{!8, !13}
!210 = !{!211}
!211 = !DILocalVariable(name: "__nptr", arg: 1, scope: !206, file: !207, line: 361, type: !13)
!212 = !DILocation(line: 0, scope: !206)
!213 = !DILocation(line: 363, column: 16, scope: !206)
!214 = !DILocation(line: 363, column: 10, scope: !206)
!215 = !DILocation(line: 363, column: 3, scope: !206)
!216 = distinct !DISubprogram(name: "atol", scope: !207, file: !207, line: 366, type: !217, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{!107, !13}
!219 = !{!220}
!220 = !DILocalVariable(name: "__nptr", arg: 1, scope: !216, file: !207, line: 366, type: !13)
!221 = !DILocation(line: 0, scope: !216)
!222 = !DILocation(line: 368, column: 10, scope: !216)
!223 = !DILocation(line: 368, column: 3, scope: !216)
!224 = distinct !DISubprogram(name: "atoll", scope: !207, file: !207, line: 373, type: !225, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !13}
!227 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!228 = !{!229}
!229 = !DILocalVariable(name: "__nptr", arg: 1, scope: !224, file: !207, line: 373, type: !13)
!230 = !DILocation(line: 0, scope: !224)
!231 = !DILocation(line: 375, column: 10, scope: !224)
!232 = !DILocation(line: 375, column: 3, scope: !224)
!233 = distinct !DISubprogram(name: "bsearch", scope: !234, file: !234, line: 20, type: !235, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !243)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!235 = !DISubroutineType(types: !236)
!236 = !{!12, !237, !237, !130, !130, !239}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !207, line: 808, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!8, !237, !237}
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253}
!244 = !DILocalVariable(name: "__key", arg: 1, scope: !233, file: !234, line: 20, type: !237)
!245 = !DILocalVariable(name: "__base", arg: 2, scope: !233, file: !234, line: 20, type: !237)
!246 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !233, file: !234, line: 20, type: !130)
!247 = !DILocalVariable(name: "__size", arg: 4, scope: !233, file: !234, line: 20, type: !130)
!248 = !DILocalVariable(name: "__compar", arg: 5, scope: !233, file: !234, line: 21, type: !239)
!249 = !DILocalVariable(name: "__l", scope: !233, file: !234, line: 23, type: !130)
!250 = !DILocalVariable(name: "__u", scope: !233, file: !234, line: 23, type: !130)
!251 = !DILocalVariable(name: "__idx", scope: !233, file: !234, line: 23, type: !130)
!252 = !DILocalVariable(name: "__p", scope: !233, file: !234, line: 24, type: !237)
!253 = !DILocalVariable(name: "__comparison", scope: !233, file: !234, line: 25, type: !8)
!254 = !DILocation(line: 0, scope: !233)
!255 = !DILocation(line: 29, column: 3, scope: !233)
!256 = !DILocation(line: 27, column: 7, scope: !233)
!257 = !DILocation(line: 29, column: 14, scope: !233)
!258 = !DILocation(line: 31, column: 20, scope: !259)
!259 = distinct !DILexicalBlock(scope: !233, file: !234, line: 30, column: 5)
!260 = !DILocation(line: 31, column: 27, scope: !259)
!261 = !DILocation(line: 32, column: 56, scope: !259)
!262 = !DILocation(line: 32, column: 47, scope: !259)
!263 = !DILocation(line: 33, column: 22, scope: !259)
!264 = !DILocation(line: 34, column: 24, scope: !265)
!265 = distinct !DILexicalBlock(scope: !259, file: !234, line: 34, column: 11)
!266 = !DILocation(line: 34, column: 11, scope: !259)
!267 = !DILocation(line: 36, column: 29, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !234, line: 36, column: 16)
!269 = !DILocation(line: 36, column: 16, scope: !265)
!270 = !DILocation(line: 37, column: 14, scope: !268)
!271 = distinct !{!271, !255, !272}
!272 = !DILocation(line: 40, column: 5, scope: !233)
!273 = !DILocation(line: 43, column: 1, scope: !233)
!274 = distinct !DISubprogram(name: "atof", scope: !275, file: !275, line: 25, type: !276, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !13}
!278 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!279 = !{!280}
!280 = !DILocalVariable(name: "__nptr", arg: 1, scope: !274, file: !275, line: 25, type: !13)
!281 = !DILocation(line: 0, scope: !274)
!282 = !DILocation(line: 27, column: 10, scope: !274)
!283 = !DILocation(line: 27, column: 3, scope: !274)
!284 = distinct !DISubprogram(name: "C_alloca", scope: !3, file: !3, line: 162, type: !285, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!12, !130}
!287 = !{!288, !289, !290, !291, !293, !298}
!288 = !DILocalVariable(name: "size", arg: 1, scope: !284, file: !3, line: 162, type: !130)
!289 = !DILocalVariable(name: "probe", scope: !284, file: !3, line: 164, type: !11)
!290 = !DILocalVariable(name: "depth", scope: !284, file: !3, line: 165, type: !10)
!291 = !DILocalVariable(name: "hp", scope: !292, file: !3, line: 176, type: !15)
!292 = distinct !DILexicalBlock(scope: !284, file: !3, line: 175, column: 3)
!293 = !DILocalVariable(name: "np", scope: !294, file: !3, line: 182, type: !15)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 181, column: 2)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 179, column: 11)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 178, column: 5)
!297 = distinct !DILexicalBlock(scope: !292, file: !3, line: 178, column: 5)
!298 = !DILocalVariable(name: "new_storage", scope: !299, file: !3, line: 200, type: !12)
!299 = distinct !DILexicalBlock(scope: !284, file: !3, line: 199, column: 3)
!300 = !DILocation(line: 0, scope: !284)
!301 = !DILocation(line: 164, column: 3, scope: !284)
!302 = !DILocation(line: 168, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !284, file: !3, line: 168, column: 7)
!304 = !DILocation(line: 168, column: 17, scope: !303)
!305 = !DILocation(line: 168, column: 7, scope: !284)
!306 = !DILocation(line: 169, column: 5, scope: !303)
!307 = !DILocation(line: 178, column: 15, scope: !297)
!308 = !DILocation(line: 0, scope: !292)
!309 = !DILocation(line: 178, column: 10, scope: !297)
!310 = !DILocation(line: 0, scope: !297)
!311 = !DILocation(line: 178, column: 38, scope: !296)
!312 = !DILocation(line: 178, column: 5, scope: !297)
!313 = !DILocation(line: 179, column: 12, scope: !295)
!314 = !DILocation(line: 179, column: 22, scope: !295)
!315 = !DILocation(line: 179, column: 26, scope: !295)
!316 = !DILocation(line: 179, column: 35, scope: !295)
!317 = !DILocation(line: 179, column: 40, scope: !295)
!318 = !DILocation(line: 180, column: 4, scope: !295)
!319 = !DILocation(line: 180, column: 18, scope: !295)
!320 = !DILocation(line: 180, column: 22, scope: !295)
!321 = !DILocation(line: 180, column: 31, scope: !295)
!322 = !DILocation(line: 180, column: 36, scope: !295)
!323 = !DILocation(line: 179, column: 11, scope: !296)
!324 = !DILocation(line: 182, column: 32, scope: !294)
!325 = !DILocation(line: 0, scope: !294)
!326 = !DILocation(line: 184, column: 10, scope: !294)
!327 = !DILocation(line: 184, column: 4, scope: !294)
!328 = !DILocation(line: 178, column: 5, scope: !296)
!329 = distinct !{!329, !312, !330}
!330 = !DILocation(line: 189, column: 2, scope: !297)
!331 = !DILocation(line: 191, column: 24, scope: !292)
!332 = !DILocation(line: 194, column: 12, scope: !333)
!333 = distinct !DILexicalBlock(scope: !284, file: !3, line: 194, column: 7)
!334 = !DILocation(line: 194, column: 7, scope: !284)
!335 = !DILocation(line: 200, column: 34, scope: !299)
!336 = !DILocation(line: 0, scope: !299)
!337 = !DILocation(line: 203, column: 21, scope: !338)
!338 = distinct !DILexicalBlock(scope: !299, file: !3, line: 203, column: 9)
!339 = !DILocation(line: 203, column: 9, scope: !299)
!340 = !DILocation(line: 204, column: 7, scope: !338)
!341 = !DILocation(line: 206, column: 40, scope: !299)
!342 = !DILocation(line: 206, column: 38, scope: !299)
!343 = !DILocation(line: 207, column: 33, scope: !299)
!344 = !DILocation(line: 207, column: 38, scope: !299)
!345 = !DILocation(line: 209, column: 24, scope: !299)
!346 = !DILocation(line: 213, column: 40, scope: !299)
!347 = !DILocation(line: 215, column: 1, scope: !284)
!348 = !DILocation(line: 0, scope: !39)
!349 = !DILocation(line: 109, column: 3, scope: !39)
!350 = !DILocation(line: 111, column: 7, scope: !351)
!351 = distinct !DILexicalBlock(scope: !39, file: !3, line: 111, column: 7)
!352 = !DILocation(line: 111, column: 12, scope: !351)
!353 = !DILocation(line: 111, column: 7, scope: !39)
!354 = !DILocation(line: 113, column: 12, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !3, line: 112, column: 5)
!356 = !DILocation(line: 115, column: 7, scope: !355)
!357 = !DILocation(line: 116, column: 5, scope: !355)
!358 = !DILocation(line: 120, column: 36, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 120, column: 11)
!360 = distinct !DILexicalBlock(scope: !351, file: !3, line: 118, column: 5)
!361 = !DILocation(line: 120, column: 11, scope: !360)
!362 = !DILocation(line: 121, column: 12, scope: !359)
!363 = !DILocation(line: 121, column: 2, scope: !359)
!364 = !DILocation(line: 123, column: 12, scope: !359)
!365 = !DILocation(line: 125, column: 1, scope: !39)
