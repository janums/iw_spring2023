; ModuleID = 'cc1-checksum.bc'
source_filename = "cc1-checksum.c"
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
@executable_checksum = dso_local local_unnamed_addr constant [16 x i8] c"\E7\A4\D1z\B5\1A2<\F8z\13 \A4W\DA2", align 16, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !24 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !39, metadata !DIExpression()), !dbg !40
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !41
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #4, !dbg !42
  ret i32 %call, !dbg !43
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !44 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !47
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #4, !dbg !48
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
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #4, !dbg !115
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
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #4, !dbg !121
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
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #4, !dbg !124
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
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #4, !dbg !133
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #4, !dbg !142
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #4, !dbg !149
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #4, !dbg !155
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
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #4, !dbg !167
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
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !181 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !184, metadata !DIExpression()), !dbg !185
  %__c.off = add i32 %__c, 128, !dbg !186
  %0 = icmp ult i32 %__c.off, 384, !dbg !186
  br i1 %0, label %cond.true, label %cond.end, !dbg !186

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #4, !dbg !187
  %1 = load i32*, i32** %call, align 8, !dbg !188
  %idxprom = sext i32 %__c to i64, !dbg !189
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !189
  %2 = load i32, i32* %arrayidx, align 4, !dbg !189
  br label %cond.end, !dbg !190

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !190
  ret i32 %cond, !dbg !191
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !192 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !194, metadata !DIExpression()), !dbg !195
  %__c.off = add i32 %__c, 128, !dbg !196
  %0 = icmp ult i32 %__c.off, 384, !dbg !196
  br i1 %0, label %cond.true, label %cond.end, !dbg !196

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #4, !dbg !197
  %1 = load i32*, i32** %call, align 8, !dbg !198
  %idxprom = sext i32 %__c to i64, !dbg !199
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !199
  %2 = load i32, i32* %arrayidx, align 4, !dbg !199
  br label %cond.end, !dbg !200

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !200
  ret i32 %cond, !dbg !201
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !202 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !207, metadata !DIExpression()), !dbg !208
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #4, !dbg !209
  %conv = trunc i64 %call to i32, !dbg !210
  ret i32 %conv, !dbg !211
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !212 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !216, metadata !DIExpression()), !dbg !217
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #4, !dbg !218
  ret i64 %call, !dbg !219
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !220 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !225, metadata !DIExpression()), !dbg !226
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #4, !dbg !227
  ret i64 %call, !dbg !228
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !229 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !240, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i8* %__base, metadata !241, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !242, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 %__size, metadata !243, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !244, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !246, metadata !DIExpression()), !dbg !250
  br label %while.cond, !dbg !251

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !252
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !250
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !246, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !245, metadata !DIExpression()), !dbg !250
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !253
  br i1 %cmp, label %while.body, label %cleanup, !dbg !251

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !254
  %div = lshr i64 %add, 1, !dbg !256
  call void @llvm.dbg.value(metadata i64 %div, metadata !247, metadata !DIExpression()), !dbg !250
  %mul = mul i64 %div, %__size, !dbg !257
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !258
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !248, metadata !DIExpression()), !dbg !250
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #4, !dbg !259
  call void @llvm.dbg.value(metadata i32 %call, metadata !249, metadata !DIExpression()), !dbg !250
  %cmp1 = icmp slt i32 %call, 0, !dbg !260
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !262

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !263
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !265

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !266
  call void @llvm.dbg.value(metadata i64 %add4, metadata !245, metadata !DIExpression()), !dbg !250
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !250
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !250
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !246, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !245, metadata !DIExpression()), !dbg !250
  br label %while.cond, !dbg !251, !llvm.loop !267

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !250
  ret i8* %retval.0, !dbg !269
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !270 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !276, metadata !DIExpression()), !dbg !277
  %call = tail call double @strtod(i8* %__nptr, i8** null) #4, !dbg !278
  ret double %call, !dbg !279
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !280 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !289, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !290, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %base, metadata !291, metadata !DIExpression()), !dbg !292
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #4, !dbg !293
  ret i64 %call, !dbg !294
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !295 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !301, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !302, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 %base, metadata !303, metadata !DIExpression()), !dbg !304
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #4, !dbg !305
  ret i64 %call, !dbg !306
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !307 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !318, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !319, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %base, metadata !320, metadata !DIExpression()), !dbg !321
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #4, !dbg !322
  ret i64 %call, !dbg !323
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !324 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !328, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !329, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 %base, metadata !330, metadata !DIExpression()), !dbg !331
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #4, !dbg !332
  ret i64 %call, !dbg !333
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !334 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !376, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !377, metadata !DIExpression()), !dbg !378
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #4, !dbg !379
  ret i32 %call, !dbg !380
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !381 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !383, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !384, metadata !DIExpression()), !dbg !385
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #4, !dbg !386
  ret i32 %call, !dbg !387
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !388 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !392, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !393, metadata !DIExpression()), !dbg !394
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #4, !dbg !395
  ret i32 %call, !dbg !396
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !397 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !401, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !402, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !403, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !404, metadata !DIExpression()), !dbg !405
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #4, !dbg !406
  ret i32 %call, !dbg !407
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !408 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !412, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !413, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !414, metadata !DIExpression()), !dbg !415
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !414, metadata !DIExpression(DW_OP_deref)), !dbg !415
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #4, !dbg !416
  ret i32 %call, !dbg !417
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !418 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !422, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i8* %__path, metadata !423, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !424, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !425, metadata !DIExpression()), !dbg !426
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !425, metadata !DIExpression(DW_OP_deref)), !dbg !426
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #4, !dbg !427
  ret i32 %call, !dbg !428
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !429 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !453, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !454, metadata !DIExpression()), !dbg !455
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #4, !dbg !456
  ret i32 %call, !dbg !457
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !458 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !460, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !461, metadata !DIExpression()), !dbg !462
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #4, !dbg !463
  ret i32 %call, !dbg !464
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !465 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !469, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !470, metadata !DIExpression()), !dbg !471
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #4, !dbg !472
  ret i32 %call, !dbg !473
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !474 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !478, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !479, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !480, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !481, metadata !DIExpression()), !dbg !482
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #4, !dbg !483
  ret i32 %call, !dbg !484
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "executable_checksum", scope: !2, file: !3, line: 3, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, nameTableKind: None)
!3 = !DIFile(filename: "cc1-checksum.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13}
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
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !18)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!18 = !{!19}
!19 = !DISubrange(count: 16)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!24 = distinct !DISubprogram(name: "vprintf", scope: !25, file: !25, line: 39, type: !26, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!26 = !DISubroutineType(types: !27)
!27 = !{!8, !28, !29}
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !31)
!31 = !{!32, !34, !35, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !30, file: !3, baseType: !33, size: 32)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !30, file: !3, baseType: !33, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !30, file: !3, baseType: !12, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !30, file: !3, baseType: !12, size: 64, offset: 128)
!37 = !{!38, !39}
!38 = !DILocalVariable(name: "__fmt", arg: 1, scope: !24, file: !25, line: 39, type: !28)
!39 = !DILocalVariable(name: "__arg", arg: 2, scope: !24, file: !25, line: 39, type: !29)
!40 = !DILocation(line: 0, scope: !24)
!41 = !DILocation(line: 41, column: 20, scope: !24)
!42 = !DILocation(line: 41, column: 10, scope: !24)
!43 = !DILocation(line: 41, column: 3, scope: !24)
!44 = distinct !DISubprogram(name: "getchar", scope: !25, file: !25, line: 47, type: !45, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!45 = !DISubroutineType(types: !46)
!46 = !{!8}
!47 = !DILocation(line: 49, column: 16, scope: !44)
!48 = !DILocation(line: 49, column: 10, scope: !44)
!49 = !DILocation(line: 49, column: 3, scope: !44)
!50 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !25, file: !25, line: 56, type: !51, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !112)
!51 = !DISubroutineType(types: !52)
!52 = !{!8, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !55, line: 7, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !76, !77, !78, !82, !84, !86, !90, !93, !95, !98, !101, !102, !103, !107, !108}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !56, file: !57, line: 51, baseType: !8, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !56, file: !57, line: 54, baseType: !10, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !56, file: !57, line: 55, baseType: !10, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !56, file: !57, line: 56, baseType: !10, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !56, file: !57, line: 57, baseType: !10, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !56, file: !57, line: 58, baseType: !10, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !56, file: !57, line: 59, baseType: !10, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !56, file: !57, line: 60, baseType: !10, size: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !56, file: !57, line: 61, baseType: !10, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !56, file: !57, line: 64, baseType: !10, size: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !56, file: !57, line: 65, baseType: !10, size: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !56, file: !57, line: 66, baseType: !10, size: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !56, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !57, line: 36, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !56, file: !57, line: 70, baseType: !75, size: 64, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !56, file: !57, line: 72, baseType: !8, size: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !56, file: !57, line: 73, baseType: !8, size: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !56, file: !57, line: 74, baseType: !79, size: 64, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !80, line: 152, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!81 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !56, file: !57, line: 77, baseType: !83, size: 16, offset: 1024)
!83 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !56, file: !57, line: 78, baseType: !85, size: 8, offset: 1040)
!85 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !56, file: !57, line: 79, baseType: !87, size: 8, offset: 1048)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !88)
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
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !56, file: !57, line: 94, baseType: !12, size: 64, offset: 1408)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !56, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 46, baseType: !106)
!105 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!106 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !56, file: !57, line: 96, baseType: !8, size: 32, offset: 1536)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !56, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 20)
!112 = !{!113}
!113 = !DILocalVariable(name: "__fp", arg: 1, scope: !50, file: !25, line: 56, type: !53)
!114 = !DILocation(line: 0, scope: !50)
!115 = !DILocation(line: 58, column: 10, scope: !50)
!116 = !DILocation(line: 58, column: 3, scope: !50)
!117 = distinct !DISubprogram(name: "getc_unlocked", scope: !25, file: !25, line: 66, type: !51, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!118 = !{!119}
!119 = !DILocalVariable(name: "__fp", arg: 1, scope: !117, file: !25, line: 66, type: !53)
!120 = !DILocation(line: 0, scope: !117)
!121 = !DILocation(line: 68, column: 10, scope: !117)
!122 = !DILocation(line: 68, column: 3, scope: !117)
!123 = distinct !DISubprogram(name: "getchar_unlocked", scope: !25, file: !25, line: 73, type: !45, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!124 = !DILocation(line: 75, column: 10, scope: !123)
!125 = !DILocation(line: 75, column: 3, scope: !123)
!126 = distinct !DISubprogram(name: "putchar", scope: !25, file: !25, line: 82, type: !127, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{!8, !8}
!129 = !{!130}
!130 = !DILocalVariable(name: "__c", arg: 1, scope: !126, file: !25, line: 82, type: !8)
!131 = !DILocation(line: 0, scope: !126)
!132 = !DILocation(line: 84, column: 21, scope: !126)
!133 = !DILocation(line: 84, column: 10, scope: !126)
!134 = !DILocation(line: 84, column: 3, scope: !126)
!135 = distinct !DISubprogram(name: "fputc_unlocked", scope: !25, file: !25, line: 91, type: !136, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!8, !8, !53}
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "__c", arg: 1, scope: !135, file: !25, line: 91, type: !8)
!140 = !DILocalVariable(name: "__stream", arg: 2, scope: !135, file: !25, line: 91, type: !53)
!141 = !DILocation(line: 0, scope: !135)
!142 = !DILocation(line: 93, column: 10, scope: !135)
!143 = !DILocation(line: 93, column: 3, scope: !135)
!144 = distinct !DISubprogram(name: "putc_unlocked", scope: !25, file: !25, line: 101, type: !136, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !145)
!145 = !{!146, !147}
!146 = !DILocalVariable(name: "__c", arg: 1, scope: !144, file: !25, line: 101, type: !8)
!147 = !DILocalVariable(name: "__stream", arg: 2, scope: !144, file: !25, line: 101, type: !53)
!148 = !DILocation(line: 0, scope: !144)
!149 = !DILocation(line: 103, column: 10, scope: !144)
!150 = !DILocation(line: 103, column: 3, scope: !144)
!151 = distinct !DISubprogram(name: "putchar_unlocked", scope: !25, file: !25, line: 108, type: !127, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!152 = !{!153}
!153 = !DILocalVariable(name: "__c", arg: 1, scope: !151, file: !25, line: 108, type: !8)
!154 = !DILocation(line: 0, scope: !151)
!155 = !DILocation(line: 110, column: 10, scope: !151)
!156 = !DILocation(line: 110, column: 3, scope: !151)
!157 = distinct !DISubprogram(name: "getline", scope: !25, file: !25, line: 118, type: !158, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !9, !161, !53}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !80, line: 193, baseType: !81)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!162 = !{!163, !164, !165}
!163 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !157, file: !25, line: 118, type: !9)
!164 = !DILocalVariable(name: "__n", arg: 2, scope: !157, file: !25, line: 118, type: !161)
!165 = !DILocalVariable(name: "__stream", arg: 3, scope: !157, file: !25, line: 118, type: !53)
!166 = !DILocation(line: 0, scope: !157)
!167 = !DILocation(line: 120, column: 10, scope: !157)
!168 = !DILocation(line: 120, column: 3, scope: !157)
!169 = distinct !DISubprogram(name: "feof_unlocked", scope: !25, file: !25, line: 128, type: !51, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!170 = !{!171}
!171 = !DILocalVariable(name: "__stream", arg: 1, scope: !169, file: !25, line: 128, type: !53)
!172 = !DILocation(line: 0, scope: !169)
!173 = !DILocation(line: 130, column: 10, scope: !169)
!174 = !DILocation(line: 130, column: 3, scope: !169)
!175 = distinct !DISubprogram(name: "ferror_unlocked", scope: !25, file: !25, line: 135, type: !51, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!176 = !{!177}
!177 = !DILocalVariable(name: "__stream", arg: 1, scope: !175, file: !25, line: 135, type: !53)
!178 = !DILocation(line: 0, scope: !175)
!179 = !DILocation(line: 137, column: 10, scope: !175)
!180 = !DILocation(line: 137, column: 3, scope: !175)
!181 = distinct !DISubprogram(name: "tolower", scope: !182, file: !182, line: 207, type: !127, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !183)
!182 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!183 = !{!184}
!184 = !DILocalVariable(name: "__c", arg: 1, scope: !181, file: !182, line: 207, type: !8)
!185 = !DILocation(line: 0, scope: !181)
!186 = !DILocation(line: 209, column: 22, scope: !181)
!187 = !DILocation(line: 209, column: 39, scope: !181)
!188 = !DILocation(line: 209, column: 38, scope: !181)
!189 = !DILocation(line: 209, column: 37, scope: !181)
!190 = !DILocation(line: 209, column: 10, scope: !181)
!191 = !DILocation(line: 209, column: 3, scope: !181)
!192 = distinct !DISubprogram(name: "toupper", scope: !182, file: !182, line: 213, type: !127, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!193 = !{!194}
!194 = !DILocalVariable(name: "__c", arg: 1, scope: !192, file: !182, line: 213, type: !8)
!195 = !DILocation(line: 0, scope: !192)
!196 = !DILocation(line: 215, column: 22, scope: !192)
!197 = !DILocation(line: 215, column: 39, scope: !192)
!198 = !DILocation(line: 215, column: 38, scope: !192)
!199 = !DILocation(line: 215, column: 37, scope: !192)
!200 = !DILocation(line: 215, column: 10, scope: !192)
!201 = !DILocation(line: 215, column: 3, scope: !192)
!202 = distinct !DISubprogram(name: "atoi", scope: !203, file: !203, line: 361, type: !204, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !206)
!203 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!204 = !DISubroutineType(types: !205)
!205 = !{!8, !13}
!206 = !{!207}
!207 = !DILocalVariable(name: "__nptr", arg: 1, scope: !202, file: !203, line: 361, type: !13)
!208 = !DILocation(line: 0, scope: !202)
!209 = !DILocation(line: 363, column: 16, scope: !202)
!210 = !DILocation(line: 363, column: 10, scope: !202)
!211 = !DILocation(line: 363, column: 3, scope: !202)
!212 = distinct !DISubprogram(name: "atol", scope: !203, file: !203, line: 366, type: !213, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !215)
!213 = !DISubroutineType(types: !214)
!214 = !{!81, !13}
!215 = !{!216}
!216 = !DILocalVariable(name: "__nptr", arg: 1, scope: !212, file: !203, line: 366, type: !13)
!217 = !DILocation(line: 0, scope: !212)
!218 = !DILocation(line: 368, column: 10, scope: !212)
!219 = !DILocation(line: 368, column: 3, scope: !212)
!220 = distinct !DISubprogram(name: "atoll", scope: !203, file: !203, line: 373, type: !221, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !224)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !13}
!223 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!224 = !{!225}
!225 = !DILocalVariable(name: "__nptr", arg: 1, scope: !220, file: !203, line: 373, type: !13)
!226 = !DILocation(line: 0, scope: !220)
!227 = !DILocation(line: 375, column: 10, scope: !220)
!228 = !DILocation(line: 375, column: 3, scope: !220)
!229 = distinct !DISubprogram(name: "bsearch", scope: !230, file: !230, line: 20, type: !231, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!231 = !DISubroutineType(types: !232)
!232 = !{!12, !233, !233, !104, !104, !235}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !203, line: 808, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!8, !233, !233}
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!240 = !DILocalVariable(name: "__key", arg: 1, scope: !229, file: !230, line: 20, type: !233)
!241 = !DILocalVariable(name: "__base", arg: 2, scope: !229, file: !230, line: 20, type: !233)
!242 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !229, file: !230, line: 20, type: !104)
!243 = !DILocalVariable(name: "__size", arg: 4, scope: !229, file: !230, line: 20, type: !104)
!244 = !DILocalVariable(name: "__compar", arg: 5, scope: !229, file: !230, line: 21, type: !235)
!245 = !DILocalVariable(name: "__l", scope: !229, file: !230, line: 23, type: !104)
!246 = !DILocalVariable(name: "__u", scope: !229, file: !230, line: 23, type: !104)
!247 = !DILocalVariable(name: "__idx", scope: !229, file: !230, line: 23, type: !104)
!248 = !DILocalVariable(name: "__p", scope: !229, file: !230, line: 24, type: !233)
!249 = !DILocalVariable(name: "__comparison", scope: !229, file: !230, line: 25, type: !8)
!250 = !DILocation(line: 0, scope: !229)
!251 = !DILocation(line: 29, column: 3, scope: !229)
!252 = !DILocation(line: 27, column: 7, scope: !229)
!253 = !DILocation(line: 29, column: 14, scope: !229)
!254 = !DILocation(line: 31, column: 20, scope: !255)
!255 = distinct !DILexicalBlock(scope: !229, file: !230, line: 30, column: 5)
!256 = !DILocation(line: 31, column: 27, scope: !255)
!257 = !DILocation(line: 32, column: 56, scope: !255)
!258 = !DILocation(line: 32, column: 47, scope: !255)
!259 = !DILocation(line: 33, column: 22, scope: !255)
!260 = !DILocation(line: 34, column: 24, scope: !261)
!261 = distinct !DILexicalBlock(scope: !255, file: !230, line: 34, column: 11)
!262 = !DILocation(line: 34, column: 11, scope: !255)
!263 = !DILocation(line: 36, column: 29, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !230, line: 36, column: 16)
!265 = !DILocation(line: 36, column: 16, scope: !261)
!266 = !DILocation(line: 37, column: 14, scope: !264)
!267 = distinct !{!267, !251, !268}
!268 = !DILocation(line: 40, column: 5, scope: !229)
!269 = !DILocation(line: 43, column: 1, scope: !229)
!270 = distinct !DISubprogram(name: "atof", scope: !271, file: !271, line: 25, type: !272, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !13}
!274 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!275 = !{!276}
!276 = !DILocalVariable(name: "__nptr", arg: 1, scope: !270, file: !271, line: 25, type: !13)
!277 = !DILocation(line: 0, scope: !270)
!278 = !DILocation(line: 27, column: 10, scope: !270)
!279 = !DILocation(line: 27, column: 3, scope: !270)
!280 = distinct !DISubprogram(name: "strtoimax", scope: !281, file: !281, line: 324, type: !282, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !288)
!281 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !28, !287, !8}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !285, line: 101, baseType: !286)
!285 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !80, line: 72, baseType: !81)
!287 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!288 = !{!289, !290, !291}
!289 = !DILocalVariable(name: "nptr", arg: 1, scope: !280, file: !281, line: 324, type: !28)
!290 = !DILocalVariable(name: "endptr", arg: 2, scope: !280, file: !281, line: 324, type: !287)
!291 = !DILocalVariable(name: "base", arg: 3, scope: !280, file: !281, line: 324, type: !8)
!292 = !DILocation(line: 0, scope: !280)
!293 = !DILocation(line: 327, column: 10, scope: !280)
!294 = !DILocation(line: 327, column: 3, scope: !280)
!295 = distinct !DISubprogram(name: "strtoumax", scope: !281, file: !281, line: 336, type: !296, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !300)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !28, !287, !8}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !285, line: 102, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !80, line: 73, baseType: !106)
!300 = !{!301, !302, !303}
!301 = !DILocalVariable(name: "nptr", arg: 1, scope: !295, file: !281, line: 336, type: !28)
!302 = !DILocalVariable(name: "endptr", arg: 2, scope: !295, file: !281, line: 336, type: !287)
!303 = !DILocalVariable(name: "base", arg: 3, scope: !295, file: !281, line: 336, type: !8)
!304 = !DILocation(line: 0, scope: !295)
!305 = !DILocation(line: 339, column: 10, scope: !295)
!306 = !DILocation(line: 339, column: 3, scope: !295)
!307 = distinct !DISubprogram(name: "wcstoimax", scope: !281, file: !281, line: 348, type: !308, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !317)
!308 = !DISubroutineType(types: !309)
!309 = !{!284, !310, !314, !8}
!310 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !281, line: 34, baseType: !8)
!314 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!317 = !{!318, !319, !320}
!318 = !DILocalVariable(name: "nptr", arg: 1, scope: !307, file: !281, line: 348, type: !310)
!319 = !DILocalVariable(name: "endptr", arg: 2, scope: !307, file: !281, line: 348, type: !314)
!320 = !DILocalVariable(name: "base", arg: 3, scope: !307, file: !281, line: 348, type: !8)
!321 = !DILocation(line: 0, scope: !307)
!322 = !DILocation(line: 351, column: 10, scope: !307)
!323 = !DILocation(line: 351, column: 3, scope: !307)
!324 = distinct !DISubprogram(name: "wcstoumax", scope: !281, file: !281, line: 362, type: !325, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{!298, !310, !314, !8}
!327 = !{!328, !329, !330}
!328 = !DILocalVariable(name: "nptr", arg: 1, scope: !324, file: !281, line: 362, type: !310)
!329 = !DILocalVariable(name: "endptr", arg: 2, scope: !324, file: !281, line: 362, type: !314)
!330 = !DILocalVariable(name: "base", arg: 3, scope: !324, file: !281, line: 362, type: !8)
!331 = !DILocation(line: 0, scope: !324)
!332 = !DILocation(line: 365, column: 10, scope: !324)
!333 = !DILocation(line: 365, column: 3, scope: !324)
!334 = distinct !DISubprogram(name: "stat", scope: !335, file: !335, line: 453, type: !336, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !375)
!335 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!336 = !DISubroutineType(types: !337)
!337 = !{!8, !13, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !340, line: 46, size: 1152, elements: !341)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!341 = !{!342, !344, !346, !348, !350, !352, !354, !355, !356, !357, !359, !361, !369, !370, !371}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !339, file: !340, line: 48, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !80, line: 145, baseType: !106)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !339, file: !340, line: 53, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !80, line: 148, baseType: !106)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !339, file: !340, line: 61, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !80, line: 151, baseType: !106)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !339, file: !340, line: 62, baseType: !349, size: 32, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !80, line: 150, baseType: !33)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !339, file: !340, line: 64, baseType: !351, size: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !80, line: 146, baseType: !33)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !339, file: !340, line: 65, baseType: !353, size: 32, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !80, line: 147, baseType: !33)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !339, file: !340, line: 67, baseType: !8, size: 32, offset: 288)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !339, file: !340, line: 69, baseType: !343, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !339, file: !340, line: 74, baseType: !79, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !339, file: !340, line: 78, baseType: !358, size: 64, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !80, line: 174, baseType: !81)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !339, file: !340, line: 80, baseType: !360, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !80, line: 179, baseType: !81)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !339, file: !340, line: 91, baseType: !362, size: 128, offset: 576)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !363, line: 10, size: 128, elements: !364)
!363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!364 = !{!365, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !362, file: !363, line: 12, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !80, line: 160, baseType: !81)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !362, file: !363, line: 16, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !80, line: 196, baseType: !81)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !339, file: !340, line: 92, baseType: !362, size: 128, offset: 704)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !339, file: !340, line: 93, baseType: !362, size: 128, offset: 832)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !339, file: !340, line: 106, baseType: !372, size: 192, offset: 960)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 192, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 3)
!375 = !{!376, !377}
!376 = !DILocalVariable(name: "__path", arg: 1, scope: !334, file: !335, line: 453, type: !13)
!377 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !334, file: !335, line: 453, type: !338)
!378 = !DILocation(line: 0, scope: !334)
!379 = !DILocation(line: 455, column: 10, scope: !334)
!380 = !DILocation(line: 455, column: 3, scope: !334)
!381 = distinct !DISubprogram(name: "lstat", scope: !335, file: !335, line: 460, type: !336, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!382 = !{!383, !384}
!383 = !DILocalVariable(name: "__path", arg: 1, scope: !381, file: !335, line: 460, type: !13)
!384 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !381, file: !335, line: 460, type: !338)
!385 = !DILocation(line: 0, scope: !381)
!386 = !DILocation(line: 462, column: 10, scope: !381)
!387 = !DILocation(line: 462, column: 3, scope: !381)
!388 = distinct !DISubprogram(name: "fstat", scope: !335, file: !335, line: 467, type: !389, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!8, !8, !338}
!391 = !{!392, !393}
!392 = !DILocalVariable(name: "__fd", arg: 1, scope: !388, file: !335, line: 467, type: !8)
!393 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !388, file: !335, line: 467, type: !338)
!394 = !DILocation(line: 0, scope: !388)
!395 = !DILocation(line: 469, column: 10, scope: !388)
!396 = !DILocation(line: 469, column: 3, scope: !388)
!397 = distinct !DISubprogram(name: "fstatat", scope: !335, file: !335, line: 474, type: !398, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{!8, !8, !13, !338, !8}
!400 = !{!401, !402, !403, !404}
!401 = !DILocalVariable(name: "__fd", arg: 1, scope: !397, file: !335, line: 474, type: !8)
!402 = !DILocalVariable(name: "__filename", arg: 2, scope: !397, file: !335, line: 474, type: !13)
!403 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !397, file: !335, line: 474, type: !338)
!404 = !DILocalVariable(name: "__flag", arg: 4, scope: !397, file: !335, line: 474, type: !8)
!405 = !DILocation(line: 0, scope: !397)
!406 = !DILocation(line: 477, column: 10, scope: !397)
!407 = !DILocation(line: 477, column: 3, scope: !397)
!408 = distinct !DISubprogram(name: "mknod", scope: !335, file: !335, line: 483, type: !409, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!8, !13, !349, !343}
!411 = !{!412, !413, !414}
!412 = !DILocalVariable(name: "__path", arg: 1, scope: !408, file: !335, line: 483, type: !13)
!413 = !DILocalVariable(name: "__mode", arg: 2, scope: !408, file: !335, line: 483, type: !349)
!414 = !DILocalVariable(name: "__dev", arg: 3, scope: !408, file: !335, line: 483, type: !343)
!415 = !DILocation(line: 0, scope: !408)
!416 = !DILocation(line: 485, column: 10, scope: !408)
!417 = !DILocation(line: 485, column: 3, scope: !408)
!418 = distinct !DISubprogram(name: "mknodat", scope: !335, file: !335, line: 491, type: !419, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!8, !8, !13, !349, !343}
!421 = !{!422, !423, !424, !425}
!422 = !DILocalVariable(name: "__fd", arg: 1, scope: !418, file: !335, line: 491, type: !8)
!423 = !DILocalVariable(name: "__path", arg: 2, scope: !418, file: !335, line: 491, type: !13)
!424 = !DILocalVariable(name: "__mode", arg: 3, scope: !418, file: !335, line: 491, type: !349)
!425 = !DILocalVariable(name: "__dev", arg: 4, scope: !418, file: !335, line: 491, type: !343)
!426 = !DILocation(line: 0, scope: !418)
!427 = !DILocation(line: 494, column: 10, scope: !418)
!428 = !DILocation(line: 494, column: 3, scope: !418)
!429 = distinct !DISubprogram(name: "stat64", scope: !335, file: !335, line: 502, type: !430, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!430 = !DISubroutineType(types: !431)
!431 = !{!8, !13, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !340, line: 119, size: 1152, elements: !434)
!434 = !{!435, !436, !438, !439, !440, !441, !442, !443, !444, !445, !446, !448, !449, !450, !451}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !433, file: !340, line: 121, baseType: !343, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !433, file: !340, line: 123, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !80, line: 149, baseType: !106)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !433, file: !340, line: 124, baseType: !347, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !433, file: !340, line: 125, baseType: !349, size: 32, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !433, file: !340, line: 132, baseType: !351, size: 32, offset: 224)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !433, file: !340, line: 133, baseType: !353, size: 32, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !433, file: !340, line: 135, baseType: !8, size: 32, offset: 288)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !433, file: !340, line: 136, baseType: !343, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !433, file: !340, line: 137, baseType: !79, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !433, file: !340, line: 143, baseType: !358, size: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !433, file: !340, line: 144, baseType: !447, size: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !80, line: 180, baseType: !81)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !433, file: !340, line: 152, baseType: !362, size: 128, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !433, file: !340, line: 153, baseType: !362, size: 128, offset: 704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !433, file: !340, line: 154, baseType: !362, size: 128, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !433, file: !340, line: 164, baseType: !372, size: 192, offset: 960)
!452 = !{!453, !454}
!453 = !DILocalVariable(name: "__path", arg: 1, scope: !429, file: !335, line: 502, type: !13)
!454 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !429, file: !335, line: 502, type: !432)
!455 = !DILocation(line: 0, scope: !429)
!456 = !DILocation(line: 504, column: 10, scope: !429)
!457 = !DILocation(line: 504, column: 3, scope: !429)
!458 = distinct !DISubprogram(name: "lstat64", scope: !335, file: !335, line: 509, type: !430, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !459)
!459 = !{!460, !461}
!460 = !DILocalVariable(name: "__path", arg: 1, scope: !458, file: !335, line: 509, type: !13)
!461 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !458, file: !335, line: 509, type: !432)
!462 = !DILocation(line: 0, scope: !458)
!463 = !DILocation(line: 511, column: 10, scope: !458)
!464 = !DILocation(line: 511, column: 3, scope: !458)
!465 = distinct !DISubprogram(name: "fstat64", scope: !335, file: !335, line: 516, type: !466, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{!8, !8, !432}
!468 = !{!469, !470}
!469 = !DILocalVariable(name: "__fd", arg: 1, scope: !465, file: !335, line: 516, type: !8)
!470 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !465, file: !335, line: 516, type: !432)
!471 = !DILocation(line: 0, scope: !465)
!472 = !DILocation(line: 518, column: 10, scope: !465)
!473 = !DILocation(line: 518, column: 3, scope: !465)
!474 = distinct !DISubprogram(name: "fstatat64", scope: !335, file: !335, line: 523, type: !475, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{!8, !8, !13, !432, !8}
!477 = !{!478, !479, !480, !481}
!478 = !DILocalVariable(name: "__fd", arg: 1, scope: !474, file: !335, line: 523, type: !8)
!479 = !DILocalVariable(name: "__filename", arg: 2, scope: !474, file: !335, line: 523, type: !13)
!480 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !474, file: !335, line: 523, type: !432)
!481 = !DILocalVariable(name: "__flag", arg: 4, scope: !474, file: !335, line: 523, type: !8)
!482 = !DILocation(line: 0, scope: !474)
!483 = !DILocation(line: 526, column: 10, scope: !474)
!484 = !DILocation(line: 526, column: 3, scope: !474)
