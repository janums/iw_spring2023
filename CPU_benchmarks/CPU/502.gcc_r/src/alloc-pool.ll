; ModuleID = 'alloc-pool.bc'
source_filename = "alloc-pool.c"
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
%struct.alloc_pool_def = type { i8*, i64, %struct.alloc_pool_list_def*, i8*, i64, i64, i64, i64, %struct.alloc_pool_list_def*, i64, i64 }
%struct.alloc_pool_list_def = type { %struct.alloc_pool_list_def* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"alloc-pool.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !54 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !68, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !69, metadata !DIExpression()), !dbg !70
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !71
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !72
  ret i32 %call, !dbg !73
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !74 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !77
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !78
  ret i32 %call, !dbg !79
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !80 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !136, metadata !DIExpression()), !dbg !137
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !138
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !138
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !138
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !138
  %cmp = icmp uge i8* %0, %1, !dbg !138
  %conv1 = zext i1 %cmp to i64, !dbg !138
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !138
  %tobool = icmp eq i64 %expval, 0, !dbg !138
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !138

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !138
  br label %cond.end, !dbg !138

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !138
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !138
  %2 = load i8, i8* %0, align 1, !dbg !138
  %conv3 = zext i8 %2 to i32, !dbg !138
  br label %cond.end, !dbg !138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !138
  ret i32 %cond, !dbg !139
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !140 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !142, metadata !DIExpression()), !dbg !143
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !144
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !144
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !144
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !144
  %cmp = icmp uge i8* %0, %1, !dbg !144
  %conv1 = zext i1 %cmp to i64, !dbg !144
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !144
  %tobool = icmp eq i64 %expval, 0, !dbg !144
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !144

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !144
  br label %cond.end, !dbg !144

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !144
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !144
  %2 = load i8, i8* %0, align 1, !dbg !144
  %conv3 = zext i8 %2 to i32, !dbg !144
  br label %cond.end, !dbg !144

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !144
  ret i32 %cond, !dbg !145
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !146 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !147
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !147
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !147
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !147
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !147
  %cmp = icmp uge i8* %1, %2, !dbg !147
  %conv1 = zext i1 %cmp to i64, !dbg !147
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !147
  %tobool = icmp eq i64 %expval, 0, !dbg !147
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !147

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !147
  br label %cond.end, !dbg !147

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !147
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !147
  %3 = load i8, i8* %1, align 1, !dbg !147
  %conv3 = zext i8 %3 to i32, !dbg !147
  br label %cond.end, !dbg !147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !147
  ret i32 %cond, !dbg !148
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !149 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !155
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !156
  ret i32 %call, !dbg !157
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !158 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !162, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !163, metadata !DIExpression()), !dbg !164
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !165
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !165
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !165
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !165
  %cmp = icmp uge i8* %0, %1, !dbg !165
  %conv1 = zext i1 %cmp to i64, !dbg !165
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !165
  %tobool = icmp eq i64 %expval, 0, !dbg !165
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !165

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !165
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !165
  br label %cond.end, !dbg !165

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !165
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !165
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !165
  store i8 %conv2, i8* %0, align 1, !dbg !165
  %conv6 = and i32 %__c, 255, !dbg !165
  br label %cond.end, !dbg !165

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !165
  ret i32 %cond, !dbg !166
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !167 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !169, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !170, metadata !DIExpression()), !dbg !171
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !172
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !172
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !172
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !172
  %cmp = icmp uge i8* %0, %1, !dbg !172
  %conv1 = zext i1 %cmp to i64, !dbg !172
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !172
  %tobool = icmp eq i64 %expval, 0, !dbg !172
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !172

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !172
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !172
  br label %cond.end, !dbg !172

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !172
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !172
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !172
  store i8 %conv2, i8* %0, align 1, !dbg !172
  %conv6 = and i32 %__c, 255, !dbg !172
  br label %cond.end, !dbg !172

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !172
  ret i32 %cond, !dbg !173
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !178
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !178
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !178
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !178
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !178
  %cmp = icmp uge i8* %1, %2, !dbg !178
  %conv1 = zext i1 %cmp to i64, !dbg !178
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !178
  %tobool = icmp eq i64 %expval, 0, !dbg !178
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !178

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !178
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !178
  br label %cond.end, !dbg !178

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !178
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !178
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !178
  store i8 %conv4, i8* %1, align 1, !dbg !178
  %conv6 = and i32 %__c, 255, !dbg !178
  br label %cond.end, !dbg !178

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !178
  ret i32 %cond, !dbg !179
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !180 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !186, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64* %__n, metadata !187, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !188, metadata !DIExpression()), !dbg !189
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !190
  ret i64 %call, !dbg !191
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !192 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !194, metadata !DIExpression()), !dbg !195
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !196
  %0 = load i32, i32* %_flags, align 8, !dbg !196
  %and = lshr i32 %0, 4, !dbg !196
  %and.lobit = and i32 %and, 1, !dbg !196
  ret i32 %and.lobit, !dbg !197
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !198 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !200, metadata !DIExpression()), !dbg !201
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !202
  %0 = load i32, i32* %_flags, align 8, !dbg !202
  %and = lshr i32 %0, 5, !dbg !202
  %and.lobit = and i32 %and, 1, !dbg !202
  ret i32 %and.lobit, !dbg !203
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !207, metadata !DIExpression()), !dbg !208
  %__c.off = add i32 %__c, 128, !dbg !209
  %0 = icmp ult i32 %__c.off, 384, !dbg !209
  br i1 %0, label %cond.true, label %cond.end, !dbg !209

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !210
  %1 = load i32*, i32** %call, align 8, !dbg !211
  %idxprom = sext i32 %__c to i64, !dbg !212
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !212
  %2 = load i32, i32* %arrayidx, align 4, !dbg !212
  br label %cond.end, !dbg !213

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !213
  ret i32 %cond, !dbg !214
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !217, metadata !DIExpression()), !dbg !218
  %__c.off = add i32 %__c, 128, !dbg !219
  %0 = icmp ult i32 %__c.off, 384, !dbg !219
  br i1 %0, label %cond.true, label %cond.end, !dbg !219

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !220
  %1 = load i32*, i32** %call, align 8, !dbg !221
  %idxprom = sext i32 %__c to i64, !dbg !222
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !222
  %2 = load i32, i32* %arrayidx, align 4, !dbg !222
  br label %cond.end, !dbg !223

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !223
  ret i32 %cond, !dbg !224
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !225 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !230, metadata !DIExpression()), !dbg !231
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !232
  %conv = trunc i64 %call to i32, !dbg !233
  ret i32 %conv, !dbg !234
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !235 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !239, metadata !DIExpression()), !dbg !240
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !241
  ret i64 %call, !dbg !242
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !248, metadata !DIExpression()), !dbg !249
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !250
  ret i64 %call, !dbg !251
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !252 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !263, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i8* %__base, metadata !264, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !265, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i64 %__size, metadata !266, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !267, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i64 0, metadata !268, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !269, metadata !DIExpression()), !dbg !273
  br label %while.cond, !dbg !274

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !275
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !273
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !269, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !268, metadata !DIExpression()), !dbg !273
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !276
  br i1 %cmp, label %while.body, label %cleanup, !dbg !274

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !277
  %div = lshr i64 %add, 1, !dbg !279
  call void @llvm.dbg.value(metadata i64 %div, metadata !270, metadata !DIExpression()), !dbg !273
  %mul = mul i64 %div, %__size, !dbg !280
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !281
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !271, metadata !DIExpression()), !dbg !273
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !282
  call void @llvm.dbg.value(metadata i32 %call, metadata !272, metadata !DIExpression()), !dbg !273
  %cmp1 = icmp slt i32 %call, 0, !dbg !283
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !285

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !286
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !288

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !289
  call void @llvm.dbg.value(metadata i64 %add4, metadata !268, metadata !DIExpression()), !dbg !273
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !273
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !273
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !269, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !268, metadata !DIExpression()), !dbg !273
  br label %while.cond, !dbg !274, !llvm.loop !290

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !273
  ret i8* %retval.0, !dbg !292
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !293 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !299, metadata !DIExpression()), !dbg !300
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !301
  ret double %call, !dbg !302
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !303 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !312, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !313, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 %base, metadata !314, metadata !DIExpression()), !dbg !315
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !316
  ret i64 %call, !dbg !317
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !318 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !324, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !325, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %base, metadata !326, metadata !DIExpression()), !dbg !327
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !328
  ret i64 %call, !dbg !329
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !330 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !341, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !342, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 %base, metadata !343, metadata !DIExpression()), !dbg !344
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !345
  ret i64 %call, !dbg !346
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !347 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !351, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !352, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 %base, metadata !353, metadata !DIExpression()), !dbg !354
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !355
  ret i64 %call, !dbg !356
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !357 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !399, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !400, metadata !DIExpression()), !dbg !401
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !402
  ret i32 %call, !dbg !403
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !404 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !406, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !407, metadata !DIExpression()), !dbg !408
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !409
  ret i32 %call, !dbg !410
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !411 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !415, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !416, metadata !DIExpression()), !dbg !417
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !418
  ret i32 %call, !dbg !419
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !420 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !424, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !425, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !426, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !427, metadata !DIExpression()), !dbg !428
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !429
  ret i32 %call, !dbg !430
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !431 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !435, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !436, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !437, metadata !DIExpression()), !dbg !438
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !437, metadata !DIExpression(DW_OP_deref)), !dbg !438
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !439
  ret i32 %call, !dbg !440
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !441 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !445, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i8* %__path, metadata !446, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !447, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !448, metadata !DIExpression()), !dbg !449
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !448, metadata !DIExpression(DW_OP_deref)), !dbg !449
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !450
  ret i32 %call, !dbg !451
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !452 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !476, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !477, metadata !DIExpression()), !dbg !478
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !479
  ret i32 %call, !dbg !480
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !481 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !484, metadata !DIExpression()), !dbg !485
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !486
  ret i32 %call, !dbg !487
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !488 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !492, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !493, metadata !DIExpression()), !dbg !494
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !495
  ret i32 %call, !dbg !496
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !497 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !501, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !502, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !503, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !504, metadata !DIExpression()), !dbg !505
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !506
  ret i32 %call, !dbg !507
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.alloc_pool_def* @create_alloc_pool(i8* %name, i64 %size, i64 %num) local_unnamed_addr #3 !dbg !508 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !513, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i64 %size, metadata !514, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i64 %num, metadata !515, metadata !DIExpression()), !dbg !518
  %tobool = icmp eq i8* %name, null, !dbg !519
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !519

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !519
  br label %cond.end, !dbg !519

cond.end:                                         ; preds = %entry, %cond.true
  %0 = icmp ugt i64 %size, 8, !dbg !520
  %spec.select = select i1 %0, i64 %size, i64 8, !dbg !520
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !514, metadata !DIExpression()), !dbg !518
  %add = add i64 %spec.select, 7, !dbg !521
  %shr = and i64 %add, -8, !dbg !521
  call void @llvm.dbg.value(metadata i64 %shr, metadata !514, metadata !DIExpression()), !dbg !518
  %tobool1 = icmp eq i64 %num, 0, !dbg !522
  br i1 %tobool1, label %cond.true2, label %cond.end4, !dbg !522

cond.true2:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !522
  br label %cond.end4, !dbg !522

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %call = tail call i8* @xmalloc(i64 88) #5, !dbg !523
  %1 = bitcast i8* %call to %struct.alloc_pool_def*, !dbg !523
  call void @llvm.dbg.value(metadata %struct.alloc_pool_def* %1, metadata !516, metadata !DIExpression()), !dbg !518
  %name6 = bitcast i8* %call to i8**, !dbg !524
  store i8* %name, i8** %name6, align 8, !dbg !525
  %elt_size = getelementptr inbounds i8, i8* %call, i64 80, !dbg !526
  %2 = bitcast i8* %elt_size to i64*, !dbg !526
  store i64 %shr, i64* %2, align 8, !dbg !527
  %elts_per_block = getelementptr inbounds i8, i8* %call, i64 8, !dbg !528
  %3 = bitcast i8* %elts_per_block to i64*, !dbg !528
  store i64 %num, i64* %3, align 8, !dbg !529
  call void @llvm.dbg.value(metadata i64 8, metadata !517, metadata !DIExpression()), !dbg !518
  %mul = mul i64 %shr, %num, !dbg !530
  %add7 = add i64 %mul, 8, !dbg !531
  %block_size = getelementptr inbounds i8, i8* %call, i64 72, !dbg !532
  %4 = bitcast i8* %block_size to i64*, !dbg !532
  store i64 %add7, i64* %4, align 8, !dbg !533
  %returned_free_list = getelementptr inbounds i8, i8* %call, i64 16, !dbg !534
  %5 = bitcast i8* %returned_free_list to %struct.alloc_pool_list_def**, !dbg !534
  store %struct.alloc_pool_list_def* null, %struct.alloc_pool_list_def** %5, align 8, !dbg !535
  %virgin_free_list = getelementptr inbounds i8, i8* %call, i64 24, !dbg !536
  %6 = bitcast i8* %virgin_free_list to i8**, !dbg !536
  store i8* null, i8** %6, align 8, !dbg !537
  %virgin_elts_remaining = getelementptr inbounds i8, i8* %call, i64 32, !dbg !538
  %7 = bitcast i8* %virgin_elts_remaining to i64*, !dbg !538
  store i64 0, i64* %7, align 8, !dbg !539
  %elts_allocated = getelementptr inbounds i8, i8* %call, i64 40, !dbg !540
  %8 = bitcast i8* %elts_allocated to i64*, !dbg !540
  store i64 0, i64* %8, align 8, !dbg !541
  %elts_free = getelementptr inbounds i8, i8* %call, i64 48, !dbg !542
  %9 = bitcast i8* %elts_free to i64*, !dbg !542
  store i64 0, i64* %9, align 8, !dbg !543
  %blocks_allocated = getelementptr inbounds i8, i8* %call, i64 56, !dbg !544
  %10 = bitcast i8* %blocks_allocated to i64*, !dbg !544
  store i64 0, i64* %10, align 8, !dbg !545
  %block_list = getelementptr inbounds i8, i8* %call, i64 64, !dbg !546
  %11 = bitcast i8* %block_list to %struct.alloc_pool_list_def**, !dbg !546
  store %struct.alloc_pool_list_def* null, %struct.alloc_pool_list_def** %11, align 8, !dbg !547
  ret %struct.alloc_pool_def* %1, !dbg !548
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @empty_alloc_pool(%struct.alloc_pool_def* %pool) local_unnamed_addr #3 !dbg !549 {
entry:
  call void @llvm.dbg.value(metadata %struct.alloc_pool_def* %pool, metadata !553, metadata !DIExpression()), !dbg !556
  %tobool = icmp eq %struct.alloc_pool_def* %pool, null, !dbg !557
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !557

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !557
  br label %cond.end, !dbg !557

cond.end:                                         ; preds = %entry, %cond.true
  %block_list = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 8, !dbg !558
  %0 = load %struct.alloc_pool_list_def*, %struct.alloc_pool_list_def** %block_list, align 8, !dbg !558
  call void @llvm.dbg.value(metadata %struct.alloc_pool_list_def* %0, metadata !554, metadata !DIExpression()), !dbg !556
  br label %for.cond, !dbg !560

for.cond:                                         ; preds = %for.body, %cond.end
  %.in = phi %struct.alloc_pool_list_def* [ %0, %cond.end ], [ %2, %for.body ]
  %block.0 = phi %struct.alloc_pool_list_def* [ %0, %cond.end ], [ %2, %for.body ], !dbg !561
  call void @llvm.dbg.value(metadata %struct.alloc_pool_list_def* %block.0, metadata !554, metadata !DIExpression()), !dbg !556
  %cmp = icmp eq %struct.alloc_pool_list_def* %block.0, null, !dbg !562
  br i1 %cmp, label %for.end, label %for.body, !dbg !564

for.body:                                         ; preds = %for.cond
  %1 = bitcast %struct.alloc_pool_list_def* %.in to i8*, !dbg !561
  %next = getelementptr inbounds %struct.alloc_pool_list_def, %struct.alloc_pool_list_def* %block.0, i64 0, i32 0, !dbg !565
  %2 = load %struct.alloc_pool_list_def*, %struct.alloc_pool_list_def** %next, align 8, !dbg !565
  call void @llvm.dbg.value(metadata %struct.alloc_pool_list_def* %2, metadata !555, metadata !DIExpression()), !dbg !556
  tail call void @free(i8* %1) #5, !dbg !567
  call void @llvm.dbg.value(metadata %struct.alloc_pool_list_def* %2, metadata !554, metadata !DIExpression()), !dbg !556
  br label %for.cond, !dbg !568, !llvm.loop !569

for.end:                                          ; preds = %for.cond
  %returned_free_list = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 2, !dbg !571
  store %struct.alloc_pool_list_def* null, %struct.alloc_pool_list_def** %returned_free_list, align 8, !dbg !572
  %virgin_free_list = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 3, !dbg !573
  store i8* null, i8** %virgin_free_list, align 8, !dbg !574
  %virgin_elts_remaining = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 4, !dbg !575
  store i64 0, i64* %virgin_elts_remaining, align 8, !dbg !576
  %elts_allocated = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 5, !dbg !577
  store i64 0, i64* %elts_allocated, align 8, !dbg !578
  %elts_free = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 6, !dbg !579
  store i64 0, i64* %elts_free, align 8, !dbg !580
  %blocks_allocated = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 7, !dbg !581
  store i64 0, i64* %blocks_allocated, align 8, !dbg !582
  store %struct.alloc_pool_list_def* null, %struct.alloc_pool_list_def** %block_list, align 8, !dbg !583
  ret void, !dbg !584
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @free_alloc_pool(%struct.alloc_pool_def* %pool) local_unnamed_addr #3 !dbg !585 {
entry:
  call void @llvm.dbg.value(metadata %struct.alloc_pool_def* %pool, metadata !587, metadata !DIExpression()), !dbg !588
  tail call void @empty_alloc_pool(%struct.alloc_pool_def* %pool) #6, !dbg !589
  %0 = bitcast %struct.alloc_pool_def* %pool to i8*, !dbg !590
  tail call void @free(i8* %0) #5, !dbg !591
  ret void, !dbg !592
}

; Function Attrs: nounwind uwtable
define dso_local void @free_alloc_pool_if_empty(%struct.alloc_pool_def** %pool) local_unnamed_addr #3 !dbg !593 {
entry:
  call void @llvm.dbg.value(metadata %struct.alloc_pool_def** %pool, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** %pool, align 8, !dbg !600
  %elts_free = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %0, i64 0, i32 6, !dbg !602
  %1 = load i64, i64* %elts_free, align 8, !dbg !602
  %elts_allocated = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %0, i64 0, i32 5, !dbg !603
  %2 = load i64, i64* %elts_allocated, align 8, !dbg !603
  %cmp = icmp eq i64 %1, %2, !dbg !604
  br i1 %cmp, label %if.then, label %if.end, !dbg !605

if.then:                                          ; preds = %entry
  tail call void @free_alloc_pool(%struct.alloc_pool_def* %0) #6, !dbg !606
  store %struct.alloc_pool_def* null, %struct.alloc_pool_def** %pool, align 8, !dbg !608
  br label %if.end, !dbg !609

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !610
}

; Function Attrs: nounwind uwtable
define dso_local i8* @pool_alloc(%struct.alloc_pool_def* %pool) local_unnamed_addr #3 !dbg !611 {
entry:
  call void @llvm.dbg.value(metadata %struct.alloc_pool_def* %pool, metadata !615, metadata !DIExpression()), !dbg !623
  %tobool = icmp eq %struct.alloc_pool_def* %pool, null, !dbg !624
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !624

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !624
  br label %cond.end, !dbg !624

cond.end:                                         ; preds = %entry, %cond.true
  %returned_free_list = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 2, !dbg !625
  %0 = load %struct.alloc_pool_list_def*, %struct.alloc_pool_list_def** %returned_free_list, align 8, !dbg !625
  %tobool1 = icmp eq %struct.alloc_pool_list_def* %0, null, !dbg !626
  br i1 %tobool1, label %if.then, label %if.end16, !dbg !627

if.then:                                          ; preds = %cond.end
  %virgin_elts_remaining = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 4, !dbg !628
  %1 = load i64, i64* %virgin_elts_remaining, align 8, !dbg !628
  %tobool2 = icmp eq i64 %1, 0, !dbg !629
  br i1 %tobool2, label %if.then3, label %if.then.if.end_crit_edge, !dbg !630

if.then.if.end_crit_edge:                         ; preds = %if.then
  %virgin_free_list10.phi.trans.insert = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 3, !dbg !631
  %.phi.trans.insert = bitcast i8** %virgin_free_list10.phi.trans.insert to %struct.alloc_pool_list_def**, !dbg !631
  %.pre = load %struct.alloc_pool_list_def*, %struct.alloc_pool_list_def** %.phi.trans.insert, align 8, !dbg !632
  br label %if.end, !dbg !630

if.then3:                                         ; preds = %if.then
  %block_size = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 9, !dbg !633
  %2 = load i64, i64* %block_size, align 8, !dbg !633
  %call = tail call i8* @xmalloc(i64 %2) #5, !dbg !633
  call void @llvm.dbg.value(metadata i8* %call, metadata !617, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i8* %call, metadata !620, metadata !DIExpression()), !dbg !634
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 8, !dbg !635
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !617, metadata !DIExpression()), !dbg !631
  %block_list = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 8, !dbg !636
  %3 = bitcast %struct.alloc_pool_list_def** %block_list to i64*, !dbg !636
  %4 = load i64, i64* %3, align 8, !dbg !636
  %5 = bitcast i8* %call to i64*, !dbg !637
  store i64 %4, i64* %5, align 8, !dbg !637
  %6 = bitcast %struct.alloc_pool_list_def** %block_list to i8**, !dbg !638
  store i8* %call, i8** %6, align 8, !dbg !638
  %virgin_free_list = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 3, !dbg !639
  store i8* %add.ptr, i8** %virgin_free_list, align 8, !dbg !640
  %elts_per_block = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 1, !dbg !641
  %7 = load i64, i64* %elts_per_block, align 8, !dbg !641
  store i64 %7, i64* %virgin_elts_remaining, align 8, !dbg !642
  %elts_allocated = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 5, !dbg !643
  %8 = load i64, i64* %elts_allocated, align 8, !dbg !644
  %add = add i64 %8, %7, !dbg !644
  store i64 %add, i64* %elts_allocated, align 8, !dbg !644
  %elts_free = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 6, !dbg !645
  %9 = load i64, i64* %elts_free, align 8, !dbg !646
  %add8 = add i64 %9, %7, !dbg !646
  store i64 %add8, i64* %elts_free, align 8, !dbg !646
  %blocks_allocated = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 7, !dbg !647
  %10 = load i64, i64* %blocks_allocated, align 8, !dbg !648
  %add9 = add i64 %10, 1, !dbg !648
  store i64 %add9, i64* %blocks_allocated, align 8, !dbg !648
  %11 = bitcast i8* %add.ptr to %struct.alloc_pool_list_def*, !dbg !649
  br label %if.end, !dbg !649

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then3
  %12 = phi %struct.alloc_pool_list_def* [ %.pre, %if.then.if.end_crit_edge ], [ %11, %if.then3 ], !dbg !632
  %virgin_free_list10 = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 3, !dbg !632
  call void @llvm.dbg.value(metadata %struct.alloc_pool_list_def* %12, metadata !616, metadata !DIExpression()), !dbg !623
  %next11 = getelementptr inbounds %struct.alloc_pool_list_def, %struct.alloc_pool_list_def* %12, i64 0, i32 0, !dbg !650
  store %struct.alloc_pool_list_def* null, %struct.alloc_pool_list_def** %next11, align 8, !dbg !651
  store %struct.alloc_pool_list_def* %12, %struct.alloc_pool_list_def** %returned_free_list, align 8, !dbg !652
  %elt_size = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 10, !dbg !653
  %13 = load i64, i64* %elt_size, align 8, !dbg !653
  %14 = load i8*, i8** %virgin_free_list10, align 8, !dbg !654
  %add.ptr14 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !654
  store i8* %add.ptr14, i8** %virgin_free_list10, align 8, !dbg !654
  %15 = load i64, i64* %virgin_elts_remaining, align 8, !dbg !655
  %dec = add i64 %15, -1, !dbg !655
  store i64 %dec, i64* %virgin_elts_remaining, align 8, !dbg !655
  br label %if.end16, !dbg !656

if.end16:                                         ; preds = %cond.end, %if.end
  %16 = phi %struct.alloc_pool_list_def* [ %0, %cond.end ], [ %12, %if.end ], !dbg !657
  call void @llvm.dbg.value(metadata %struct.alloc_pool_list_def* %16, metadata !616, metadata !DIExpression()), !dbg !623
  %17 = bitcast %struct.alloc_pool_list_def* %16 to i64*, !dbg !658
  %18 = load i64, i64* %17, align 8, !dbg !658
  %19 = bitcast %struct.alloc_pool_list_def** %returned_free_list to i64*, !dbg !659
  store i64 %18, i64* %19, align 8, !dbg !659
  %elts_free20 = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 6, !dbg !660
  %20 = load i64, i64* %elts_free20, align 8, !dbg !661
  %dec21 = add i64 %20, -1, !dbg !661
  store i64 %dec21, i64* %elts_free20, align 8, !dbg !661
  %21 = bitcast %struct.alloc_pool_list_def* %16 to i8*, !dbg !662
  ret i8* %21, !dbg !663
}

; Function Attrs: nounwind uwtable
define dso_local void @pool_free(%struct.alloc_pool_def* %pool, i8* %ptr) local_unnamed_addr #3 !dbg !664 {
entry:
  call void @llvm.dbg.value(metadata %struct.alloc_pool_def* %pool, metadata !668, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !669, metadata !DIExpression()), !dbg !671
  %tobool = icmp eq i8* %ptr, null, !dbg !672
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !672

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 331, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !672
  br label %cond.end, !dbg !672

cond.end:                                         ; preds = %entry, %cond.true
  %elts_free = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 6, !dbg !673
  %0 = load i64, i64* %elts_free, align 8, !dbg !673
  %elts_allocated = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 5, !dbg !673
  %1 = load i64, i64* %elts_allocated, align 8, !dbg !673
  %cmp = icmp ult i64 %0, %1, !dbg !673
  br i1 %cmp, label %cond.end3, label %cond.true1, !dbg !673

cond.true1:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !673
  br label %cond.end3, !dbg !673

cond.end3:                                        ; preds = %cond.end, %cond.true1
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !670, metadata !DIExpression()), !dbg !671
  %returned_free_list = getelementptr inbounds %struct.alloc_pool_def, %struct.alloc_pool_def* %pool, i64 0, i32 2, !dbg !674
  %2 = bitcast %struct.alloc_pool_list_def** %returned_free_list to i64*, !dbg !674
  %3 = load i64, i64* %2, align 8, !dbg !674
  %4 = bitcast i8* %ptr to i64*, !dbg !675
  store i64 %3, i64* %4, align 8, !dbg !675
  %5 = bitcast %struct.alloc_pool_list_def** %returned_free_list to i8**, !dbg !676
  store i8* %ptr, i8** %5, align 8, !dbg !676
  %6 = load i64, i64* %elts_free, align 8, !dbg !677
  %inc = add i64 %6, 1, !dbg !677
  store i64 %inc, i64* %elts_free, align 8, !dbg !677
  ret void, !dbg !678
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_alloc_pool_statistics() local_unnamed_addr #3 !dbg !679 {
entry:
  ret void, !dbg !682
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
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "alloc-pool.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !6, !7, !10, !11, !13, !8, !23, !36}
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
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_def", file: !15, line: 32, size: 704, elements: !16)
!15 = !DIFile(filename: "./alloc-pool.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!16 = !{!17, !18, !22, !28, !29, !30, !31, !32, !33, !34, !35}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !15, line: 34, baseType: !11, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "elts_per_block", scope: !14, file: !15, line: 38, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "returned_free_list", scope: !14, file: !15, line: 41, baseType: !23, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool_list", file: !15, line: 30, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_list_def", file: !15, line: 26, size: 64, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !15, line: 28, baseType: !24, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_free_list", scope: !14, file: !15, line: 45, baseType: !8, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_elts_remaining", scope: !14, file: !15, line: 49, baseType: !19, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "elts_allocated", scope: !14, file: !15, line: 51, baseType: !19, size: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "elts_free", scope: !14, file: !15, line: 52, baseType: !19, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_allocated", scope: !14, file: !15, line: 53, baseType: !19, size: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "block_list", scope: !14, file: !15, line: 54, baseType: !23, size: 64, offset: 512)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !14, file: !15, line: 55, baseType: !19, size: 64, offset: 576)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !14, file: !15, line: 56, baseType: !19, size: 64, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocation_object", file: !1, line: 49, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocation_object_def", file: !1, line: 30, size: 64, elements: !39)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !38, file: !1, line: 48, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !38, file: !1, line: 37, size: 64, elements: !42)
!42 = !{!43, !47, !48}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !1, line: 40, baseType: !44, size: 8)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "align_p", scope: !41, file: !1, line: 46, baseType: !8, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "align_i", scope: !41, file: !1, line: 47, baseType: !49, size: 64)
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !{i32 2, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!54 = distinct !DISubprogram(name: "vprintf", scope: !55, file: !55, line: 39, type: !56, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!56 = !DISubroutineType(types: !57)
!57 = !{!6, !58, !59}
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !61)
!61 = !{!62, !64, !65, !66}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !60, file: !1, baseType: !63, size: 32)
!63 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !60, file: !1, baseType: !63, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !60, file: !1, baseType: !10, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !60, file: !1, baseType: !10, size: 64, offset: 128)
!67 = !{!68, !69}
!68 = !DILocalVariable(name: "__fmt", arg: 1, scope: !54, file: !55, line: 39, type: !58)
!69 = !DILocalVariable(name: "__arg", arg: 2, scope: !54, file: !55, line: 39, type: !59)
!70 = !DILocation(line: 0, scope: !54)
!71 = !DILocation(line: 41, column: 20, scope: !54)
!72 = !DILocation(line: 41, column: 10, scope: !54)
!73 = !DILocation(line: 41, column: 3, scope: !54)
!74 = distinct !DISubprogram(name: "getchar", scope: !55, file: !55, line: 47, type: !75, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!75 = !DISubroutineType(types: !76)
!76 = !{!6}
!77 = !DILocation(line: 49, column: 16, scope: !74)
!78 = !DILocation(line: 49, column: 10, scope: !74)
!79 = !DILocation(line: 49, column: 3, scope: !74)
!80 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !55, file: !55, line: 56, type: !81, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !135)
!81 = !DISubroutineType(types: !82)
!82 = !{!6, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !85, line: 7, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !87, line: 49, size: 1728, elements: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !104, !106, !107, !108, !111, !113, !115, !116, !119, !121, !124, !127, !128, !129, !130, !131}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !86, file: !87, line: 51, baseType: !6, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !86, file: !87, line: 54, baseType: !8, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !86, file: !87, line: 55, baseType: !8, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !86, file: !87, line: 56, baseType: !8, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !86, file: !87, line: 57, baseType: !8, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !86, file: !87, line: 58, baseType: !8, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !86, file: !87, line: 59, baseType: !8, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !86, file: !87, line: 60, baseType: !8, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !86, file: !87, line: 61, baseType: !8, size: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !86, file: !87, line: 64, baseType: !8, size: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !86, file: !87, line: 65, baseType: !8, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !86, file: !87, line: 66, baseType: !8, size: 64, offset: 704)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !86, file: !87, line: 68, baseType: !102, size: 64, offset: 768)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !87, line: 36, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !86, file: !87, line: 70, baseType: !105, size: 64, offset: 832)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !86, file: !87, line: 72, baseType: !6, size: 32, offset: 896)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !86, file: !87, line: 73, baseType: !6, size: 32, offset: 928)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !86, file: !87, line: 74, baseType: !109, size: 64, offset: 960)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !110, line: 152, baseType: !49)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !86, file: !87, line: 77, baseType: !112, size: 16, offset: 1024)
!112 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !86, file: !87, line: 78, baseType: !114, size: 8, offset: 1040)
!114 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !86, file: !87, line: 79, baseType: !44, size: 8, offset: 1048)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !86, file: !87, line: 81, baseType: !117, size: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !87, line: 43, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !86, file: !87, line: 89, baseType: !120, size: 64, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !110, line: 153, baseType: !49)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !86, file: !87, line: 91, baseType: !122, size: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !87, line: 37, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !86, file: !87, line: 92, baseType: !125, size: 64, offset: 1280)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !87, line: 38, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !86, file: !87, line: 93, baseType: !105, size: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !86, file: !87, line: 94, baseType: !10, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !86, file: !87, line: 95, baseType: !19, size: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !86, file: !87, line: 96, baseType: !6, size: 32, offset: 1536)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !86, file: !87, line: 98, baseType: !132, size: 160, offset: 1568)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 20)
!135 = !{!136}
!136 = !DILocalVariable(name: "__fp", arg: 1, scope: !80, file: !55, line: 56, type: !83)
!137 = !DILocation(line: 0, scope: !80)
!138 = !DILocation(line: 58, column: 10, scope: !80)
!139 = !DILocation(line: 58, column: 3, scope: !80)
!140 = distinct !DISubprogram(name: "getc_unlocked", scope: !55, file: !55, line: 66, type: !81, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!141 = !{!142}
!142 = !DILocalVariable(name: "__fp", arg: 1, scope: !140, file: !55, line: 66, type: !83)
!143 = !DILocation(line: 0, scope: !140)
!144 = !DILocation(line: 68, column: 10, scope: !140)
!145 = !DILocation(line: 68, column: 3, scope: !140)
!146 = distinct !DISubprogram(name: "getchar_unlocked", scope: !55, file: !55, line: 73, type: !75, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!147 = !DILocation(line: 75, column: 10, scope: !146)
!148 = !DILocation(line: 75, column: 3, scope: !146)
!149 = distinct !DISubprogram(name: "putchar", scope: !55, file: !55, line: 82, type: !150, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{!6, !6}
!152 = !{!153}
!153 = !DILocalVariable(name: "__c", arg: 1, scope: !149, file: !55, line: 82, type: !6)
!154 = !DILocation(line: 0, scope: !149)
!155 = !DILocation(line: 84, column: 21, scope: !149)
!156 = !DILocation(line: 84, column: 10, scope: !149)
!157 = !DILocation(line: 84, column: 3, scope: !149)
!158 = distinct !DISubprogram(name: "fputc_unlocked", scope: !55, file: !55, line: 91, type: !159, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{!6, !6, !83}
!161 = !{!162, !163}
!162 = !DILocalVariable(name: "__c", arg: 1, scope: !158, file: !55, line: 91, type: !6)
!163 = !DILocalVariable(name: "__stream", arg: 2, scope: !158, file: !55, line: 91, type: !83)
!164 = !DILocation(line: 0, scope: !158)
!165 = !DILocation(line: 93, column: 10, scope: !158)
!166 = !DILocation(line: 93, column: 3, scope: !158)
!167 = distinct !DISubprogram(name: "putc_unlocked", scope: !55, file: !55, line: 101, type: !159, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!168 = !{!169, !170}
!169 = !DILocalVariable(name: "__c", arg: 1, scope: !167, file: !55, line: 101, type: !6)
!170 = !DILocalVariable(name: "__stream", arg: 2, scope: !167, file: !55, line: 101, type: !83)
!171 = !DILocation(line: 0, scope: !167)
!172 = !DILocation(line: 103, column: 10, scope: !167)
!173 = !DILocation(line: 103, column: 3, scope: !167)
!174 = distinct !DISubprogram(name: "putchar_unlocked", scope: !55, file: !55, line: 108, type: !150, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !175)
!175 = !{!176}
!176 = !DILocalVariable(name: "__c", arg: 1, scope: !174, file: !55, line: 108, type: !6)
!177 = !DILocation(line: 0, scope: !174)
!178 = !DILocation(line: 110, column: 10, scope: !174)
!179 = !DILocation(line: 110, column: 3, scope: !174)
!180 = distinct !DISubprogram(name: "getline", scope: !55, file: !55, line: 118, type: !181, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !7, !184, !83}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !110, line: 193, baseType: !49)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!185 = !{!186, !187, !188}
!186 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !180, file: !55, line: 118, type: !7)
!187 = !DILocalVariable(name: "__n", arg: 2, scope: !180, file: !55, line: 118, type: !184)
!188 = !DILocalVariable(name: "__stream", arg: 3, scope: !180, file: !55, line: 118, type: !83)
!189 = !DILocation(line: 0, scope: !180)
!190 = !DILocation(line: 120, column: 10, scope: !180)
!191 = !DILocation(line: 120, column: 3, scope: !180)
!192 = distinct !DISubprogram(name: "feof_unlocked", scope: !55, file: !55, line: 128, type: !81, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !193)
!193 = !{!194}
!194 = !DILocalVariable(name: "__stream", arg: 1, scope: !192, file: !55, line: 128, type: !83)
!195 = !DILocation(line: 0, scope: !192)
!196 = !DILocation(line: 130, column: 10, scope: !192)
!197 = !DILocation(line: 130, column: 3, scope: !192)
!198 = distinct !DISubprogram(name: "ferror_unlocked", scope: !55, file: !55, line: 135, type: !81, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !199)
!199 = !{!200}
!200 = !DILocalVariable(name: "__stream", arg: 1, scope: !198, file: !55, line: 135, type: !83)
!201 = !DILocation(line: 0, scope: !198)
!202 = !DILocation(line: 137, column: 10, scope: !198)
!203 = !DILocation(line: 137, column: 3, scope: !198)
!204 = distinct !DISubprogram(name: "tolower", scope: !205, file: !205, line: 207, type: !150, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !206)
!205 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!206 = !{!207}
!207 = !DILocalVariable(name: "__c", arg: 1, scope: !204, file: !205, line: 207, type: !6)
!208 = !DILocation(line: 0, scope: !204)
!209 = !DILocation(line: 209, column: 22, scope: !204)
!210 = !DILocation(line: 209, column: 39, scope: !204)
!211 = !DILocation(line: 209, column: 38, scope: !204)
!212 = !DILocation(line: 209, column: 37, scope: !204)
!213 = !DILocation(line: 209, column: 10, scope: !204)
!214 = !DILocation(line: 209, column: 3, scope: !204)
!215 = distinct !DISubprogram(name: "toupper", scope: !205, file: !205, line: 213, type: !150, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!216 = !{!217}
!217 = !DILocalVariable(name: "__c", arg: 1, scope: !215, file: !205, line: 213, type: !6)
!218 = !DILocation(line: 0, scope: !215)
!219 = !DILocation(line: 215, column: 22, scope: !215)
!220 = !DILocation(line: 215, column: 39, scope: !215)
!221 = !DILocation(line: 215, column: 38, scope: !215)
!222 = !DILocation(line: 215, column: 37, scope: !215)
!223 = !DILocation(line: 215, column: 10, scope: !215)
!224 = !DILocation(line: 215, column: 3, scope: !215)
!225 = distinct !DISubprogram(name: "atoi", scope: !226, file: !226, line: 361, type: !227, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !229)
!226 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!227 = !DISubroutineType(types: !228)
!228 = !{!6, !11}
!229 = !{!230}
!230 = !DILocalVariable(name: "__nptr", arg: 1, scope: !225, file: !226, line: 361, type: !11)
!231 = !DILocation(line: 0, scope: !225)
!232 = !DILocation(line: 363, column: 16, scope: !225)
!233 = !DILocation(line: 363, column: 10, scope: !225)
!234 = !DILocation(line: 363, column: 3, scope: !225)
!235 = distinct !DISubprogram(name: "atol", scope: !226, file: !226, line: 366, type: !236, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!49, !11}
!238 = !{!239}
!239 = !DILocalVariable(name: "__nptr", arg: 1, scope: !235, file: !226, line: 366, type: !11)
!240 = !DILocation(line: 0, scope: !235)
!241 = !DILocation(line: 368, column: 10, scope: !235)
!242 = !DILocation(line: 368, column: 3, scope: !235)
!243 = distinct !DISubprogram(name: "atoll", scope: !226, file: !226, line: 373, type: !244, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !247)
!244 = !DISubroutineType(types: !245)
!245 = !{!246, !11}
!246 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!247 = !{!248}
!248 = !DILocalVariable(name: "__nptr", arg: 1, scope: !243, file: !226, line: 373, type: !11)
!249 = !DILocation(line: 0, scope: !243)
!250 = !DILocation(line: 375, column: 10, scope: !243)
!251 = !DILocation(line: 375, column: 3, scope: !243)
!252 = distinct !DISubprogram(name: "bsearch", scope: !253, file: !253, line: 20, type: !254, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !262)
!253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!254 = !DISubroutineType(types: !255)
!255 = !{!10, !256, !256, !19, !19, !258}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !226, line: 808, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!6, !256, !256}
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!263 = !DILocalVariable(name: "__key", arg: 1, scope: !252, file: !253, line: 20, type: !256)
!264 = !DILocalVariable(name: "__base", arg: 2, scope: !252, file: !253, line: 20, type: !256)
!265 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !252, file: !253, line: 20, type: !19)
!266 = !DILocalVariable(name: "__size", arg: 4, scope: !252, file: !253, line: 20, type: !19)
!267 = !DILocalVariable(name: "__compar", arg: 5, scope: !252, file: !253, line: 21, type: !258)
!268 = !DILocalVariable(name: "__l", scope: !252, file: !253, line: 23, type: !19)
!269 = !DILocalVariable(name: "__u", scope: !252, file: !253, line: 23, type: !19)
!270 = !DILocalVariable(name: "__idx", scope: !252, file: !253, line: 23, type: !19)
!271 = !DILocalVariable(name: "__p", scope: !252, file: !253, line: 24, type: !256)
!272 = !DILocalVariable(name: "__comparison", scope: !252, file: !253, line: 25, type: !6)
!273 = !DILocation(line: 0, scope: !252)
!274 = !DILocation(line: 29, column: 3, scope: !252)
!275 = !DILocation(line: 27, column: 7, scope: !252)
!276 = !DILocation(line: 29, column: 14, scope: !252)
!277 = !DILocation(line: 31, column: 20, scope: !278)
!278 = distinct !DILexicalBlock(scope: !252, file: !253, line: 30, column: 5)
!279 = !DILocation(line: 31, column: 27, scope: !278)
!280 = !DILocation(line: 32, column: 56, scope: !278)
!281 = !DILocation(line: 32, column: 47, scope: !278)
!282 = !DILocation(line: 33, column: 22, scope: !278)
!283 = !DILocation(line: 34, column: 24, scope: !284)
!284 = distinct !DILexicalBlock(scope: !278, file: !253, line: 34, column: 11)
!285 = !DILocation(line: 34, column: 11, scope: !278)
!286 = !DILocation(line: 36, column: 29, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !253, line: 36, column: 16)
!288 = !DILocation(line: 36, column: 16, scope: !284)
!289 = !DILocation(line: 37, column: 14, scope: !287)
!290 = distinct !{!290, !274, !291}
!291 = !DILocation(line: 40, column: 5, scope: !252)
!292 = !DILocation(line: 43, column: 1, scope: !252)
!293 = distinct !DISubprogram(name: "atof", scope: !294, file: !294, line: 25, type: !295, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!294 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !11}
!297 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!298 = !{!299}
!299 = !DILocalVariable(name: "__nptr", arg: 1, scope: !293, file: !294, line: 25, type: !11)
!300 = !DILocation(line: 0, scope: !293)
!301 = !DILocation(line: 27, column: 10, scope: !293)
!302 = !DILocation(line: 27, column: 3, scope: !293)
!303 = distinct !DISubprogram(name: "strtoimax", scope: !304, file: !304, line: 324, type: !305, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!304 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !58, !310, !6}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !308, line: 101, baseType: !309)
!308 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !110, line: 72, baseType: !49)
!310 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !7)
!311 = !{!312, !313, !314}
!312 = !DILocalVariable(name: "nptr", arg: 1, scope: !303, file: !304, line: 324, type: !58)
!313 = !DILocalVariable(name: "endptr", arg: 2, scope: !303, file: !304, line: 324, type: !310)
!314 = !DILocalVariable(name: "base", arg: 3, scope: !303, file: !304, line: 324, type: !6)
!315 = !DILocation(line: 0, scope: !303)
!316 = !DILocation(line: 327, column: 10, scope: !303)
!317 = !DILocation(line: 327, column: 3, scope: !303)
!318 = distinct !DISubprogram(name: "strtoumax", scope: !304, file: !304, line: 336, type: !319, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !323)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !58, !310, !6}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !308, line: 102, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !110, line: 73, baseType: !21)
!323 = !{!324, !325, !326}
!324 = !DILocalVariable(name: "nptr", arg: 1, scope: !318, file: !304, line: 336, type: !58)
!325 = !DILocalVariable(name: "endptr", arg: 2, scope: !318, file: !304, line: 336, type: !310)
!326 = !DILocalVariable(name: "base", arg: 3, scope: !318, file: !304, line: 336, type: !6)
!327 = !DILocation(line: 0, scope: !318)
!328 = !DILocation(line: 339, column: 10, scope: !318)
!329 = !DILocation(line: 339, column: 3, scope: !318)
!330 = distinct !DISubprogram(name: "wcstoimax", scope: !304, file: !304, line: 348, type: !331, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !340)
!331 = !DISubroutineType(types: !332)
!332 = !{!307, !333, !337, !6}
!333 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !304, line: 34, baseType: !6)
!337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!340 = !{!341, !342, !343}
!341 = !DILocalVariable(name: "nptr", arg: 1, scope: !330, file: !304, line: 348, type: !333)
!342 = !DILocalVariable(name: "endptr", arg: 2, scope: !330, file: !304, line: 348, type: !337)
!343 = !DILocalVariable(name: "base", arg: 3, scope: !330, file: !304, line: 348, type: !6)
!344 = !DILocation(line: 0, scope: !330)
!345 = !DILocation(line: 351, column: 10, scope: !330)
!346 = !DILocation(line: 351, column: 3, scope: !330)
!347 = distinct !DISubprogram(name: "wcstoumax", scope: !304, file: !304, line: 362, type: !348, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!321, !333, !337, !6}
!350 = !{!351, !352, !353}
!351 = !DILocalVariable(name: "nptr", arg: 1, scope: !347, file: !304, line: 362, type: !333)
!352 = !DILocalVariable(name: "endptr", arg: 2, scope: !347, file: !304, line: 362, type: !337)
!353 = !DILocalVariable(name: "base", arg: 3, scope: !347, file: !304, line: 362, type: !6)
!354 = !DILocation(line: 0, scope: !347)
!355 = !DILocation(line: 365, column: 10, scope: !347)
!356 = !DILocation(line: 365, column: 3, scope: !347)
!357 = distinct !DISubprogram(name: "stat", scope: !358, file: !358, line: 453, type: !359, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !398)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!359 = !DISubroutineType(types: !360)
!360 = !{!6, !11, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !363, line: 46, size: 1152, elements: !364)
!363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!364 = !{!365, !367, !369, !371, !373, !375, !377, !378, !379, !380, !382, !384, !392, !393, !394}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !362, file: !363, line: 48, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !110, line: 145, baseType: !21)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !362, file: !363, line: 53, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !110, line: 148, baseType: !21)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !362, file: !363, line: 61, baseType: !370, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !110, line: 151, baseType: !21)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !362, file: !363, line: 62, baseType: !372, size: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !110, line: 150, baseType: !63)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !362, file: !363, line: 64, baseType: !374, size: 32, offset: 224)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !110, line: 146, baseType: !63)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !362, file: !363, line: 65, baseType: !376, size: 32, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !110, line: 147, baseType: !63)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !362, file: !363, line: 67, baseType: !6, size: 32, offset: 288)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !362, file: !363, line: 69, baseType: !366, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !362, file: !363, line: 74, baseType: !109, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !362, file: !363, line: 78, baseType: !381, size: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !110, line: 174, baseType: !49)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !362, file: !363, line: 80, baseType: !383, size: 64, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !110, line: 179, baseType: !49)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !362, file: !363, line: 91, baseType: !385, size: 128, offset: 576)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !386, line: 10, size: 128, elements: !387)
!386 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!387 = !{!388, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !385, file: !386, line: 12, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !110, line: 160, baseType: !49)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !385, file: !386, line: 16, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !110, line: 196, baseType: !49)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !362, file: !363, line: 92, baseType: !385, size: 128, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !362, file: !363, line: 93, baseType: !385, size: 128, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !362, file: !363, line: 106, baseType: !395, size: 192, offset: 960)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 192, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 3)
!398 = !{!399, !400}
!399 = !DILocalVariable(name: "__path", arg: 1, scope: !357, file: !358, line: 453, type: !11)
!400 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !357, file: !358, line: 453, type: !361)
!401 = !DILocation(line: 0, scope: !357)
!402 = !DILocation(line: 455, column: 10, scope: !357)
!403 = !DILocation(line: 455, column: 3, scope: !357)
!404 = distinct !DISubprogram(name: "lstat", scope: !358, file: !358, line: 460, type: !359, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !405)
!405 = !{!406, !407}
!406 = !DILocalVariable(name: "__path", arg: 1, scope: !404, file: !358, line: 460, type: !11)
!407 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !404, file: !358, line: 460, type: !361)
!408 = !DILocation(line: 0, scope: !404)
!409 = !DILocation(line: 462, column: 10, scope: !404)
!410 = !DILocation(line: 462, column: 3, scope: !404)
!411 = distinct !DISubprogram(name: "fstat", scope: !358, file: !358, line: 467, type: !412, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!6, !6, !361}
!414 = !{!415, !416}
!415 = !DILocalVariable(name: "__fd", arg: 1, scope: !411, file: !358, line: 467, type: !6)
!416 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !411, file: !358, line: 467, type: !361)
!417 = !DILocation(line: 0, scope: !411)
!418 = !DILocation(line: 469, column: 10, scope: !411)
!419 = !DILocation(line: 469, column: 3, scope: !411)
!420 = distinct !DISubprogram(name: "fstatat", scope: !358, file: !358, line: 474, type: !421, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!6, !6, !11, !361, !6}
!423 = !{!424, !425, !426, !427}
!424 = !DILocalVariable(name: "__fd", arg: 1, scope: !420, file: !358, line: 474, type: !6)
!425 = !DILocalVariable(name: "__filename", arg: 2, scope: !420, file: !358, line: 474, type: !11)
!426 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !420, file: !358, line: 474, type: !361)
!427 = !DILocalVariable(name: "__flag", arg: 4, scope: !420, file: !358, line: 474, type: !6)
!428 = !DILocation(line: 0, scope: !420)
!429 = !DILocation(line: 477, column: 10, scope: !420)
!430 = !DILocation(line: 477, column: 3, scope: !420)
!431 = distinct !DISubprogram(name: "mknod", scope: !358, file: !358, line: 483, type: !432, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!6, !11, !372, !366}
!434 = !{!435, !436, !437}
!435 = !DILocalVariable(name: "__path", arg: 1, scope: !431, file: !358, line: 483, type: !11)
!436 = !DILocalVariable(name: "__mode", arg: 2, scope: !431, file: !358, line: 483, type: !372)
!437 = !DILocalVariable(name: "__dev", arg: 3, scope: !431, file: !358, line: 483, type: !366)
!438 = !DILocation(line: 0, scope: !431)
!439 = !DILocation(line: 485, column: 10, scope: !431)
!440 = !DILocation(line: 485, column: 3, scope: !431)
!441 = distinct !DISubprogram(name: "mknodat", scope: !358, file: !358, line: 491, type: !442, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!6, !6, !11, !372, !366}
!444 = !{!445, !446, !447, !448}
!445 = !DILocalVariable(name: "__fd", arg: 1, scope: !441, file: !358, line: 491, type: !6)
!446 = !DILocalVariable(name: "__path", arg: 2, scope: !441, file: !358, line: 491, type: !11)
!447 = !DILocalVariable(name: "__mode", arg: 3, scope: !441, file: !358, line: 491, type: !372)
!448 = !DILocalVariable(name: "__dev", arg: 4, scope: !441, file: !358, line: 491, type: !366)
!449 = !DILocation(line: 0, scope: !441)
!450 = !DILocation(line: 494, column: 10, scope: !441)
!451 = !DILocation(line: 494, column: 3, scope: !441)
!452 = distinct !DISubprogram(name: "stat64", scope: !358, file: !358, line: 502, type: !453, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !475)
!453 = !DISubroutineType(types: !454)
!454 = !{!6, !11, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !363, line: 119, size: 1152, elements: !457)
!457 = !{!458, !459, !461, !462, !463, !464, !465, !466, !467, !468, !469, !471, !472, !473, !474}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !456, file: !363, line: 121, baseType: !366, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !456, file: !363, line: 123, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !110, line: 149, baseType: !21)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !456, file: !363, line: 124, baseType: !370, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !456, file: !363, line: 125, baseType: !372, size: 32, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !456, file: !363, line: 132, baseType: !374, size: 32, offset: 224)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !456, file: !363, line: 133, baseType: !376, size: 32, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !456, file: !363, line: 135, baseType: !6, size: 32, offset: 288)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !456, file: !363, line: 136, baseType: !366, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !456, file: !363, line: 137, baseType: !109, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !456, file: !363, line: 143, baseType: !381, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !456, file: !363, line: 144, baseType: !470, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !110, line: 180, baseType: !49)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !456, file: !363, line: 152, baseType: !385, size: 128, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !456, file: !363, line: 153, baseType: !385, size: 128, offset: 704)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !456, file: !363, line: 154, baseType: !385, size: 128, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !456, file: !363, line: 164, baseType: !395, size: 192, offset: 960)
!475 = !{!476, !477}
!476 = !DILocalVariable(name: "__path", arg: 1, scope: !452, file: !358, line: 502, type: !11)
!477 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !452, file: !358, line: 502, type: !455)
!478 = !DILocation(line: 0, scope: !452)
!479 = !DILocation(line: 504, column: 10, scope: !452)
!480 = !DILocation(line: 504, column: 3, scope: !452)
!481 = distinct !DISubprogram(name: "lstat64", scope: !358, file: !358, line: 509, type: !453, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !482)
!482 = !{!483, !484}
!483 = !DILocalVariable(name: "__path", arg: 1, scope: !481, file: !358, line: 509, type: !11)
!484 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !481, file: !358, line: 509, type: !455)
!485 = !DILocation(line: 0, scope: !481)
!486 = !DILocation(line: 511, column: 10, scope: !481)
!487 = !DILocation(line: 511, column: 3, scope: !481)
!488 = distinct !DISubprogram(name: "fstat64", scope: !358, file: !358, line: 516, type: !489, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{!6, !6, !455}
!491 = !{!492, !493}
!492 = !DILocalVariable(name: "__fd", arg: 1, scope: !488, file: !358, line: 516, type: !6)
!493 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !488, file: !358, line: 516, type: !455)
!494 = !DILocation(line: 0, scope: !488)
!495 = !DILocation(line: 518, column: 10, scope: !488)
!496 = !DILocation(line: 518, column: 3, scope: !488)
!497 = distinct !DISubprogram(name: "fstatat64", scope: !358, file: !358, line: 523, type: !498, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!6, !6, !11, !455, !6}
!500 = !{!501, !502, !503, !504}
!501 = !DILocalVariable(name: "__fd", arg: 1, scope: !497, file: !358, line: 523, type: !6)
!502 = !DILocalVariable(name: "__filename", arg: 2, scope: !497, file: !358, line: 523, type: !11)
!503 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !497, file: !358, line: 523, type: !455)
!504 = !DILocalVariable(name: "__flag", arg: 4, scope: !497, file: !358, line: 523, type: !6)
!505 = !DILocation(line: 0, scope: !497)
!506 = !DILocation(line: 526, column: 10, scope: !497)
!507 = !DILocation(line: 526, column: 3, scope: !497)
!508 = distinct !DISubprogram(name: "create_alloc_pool", scope: !1, file: !1, line: 132, type: !509, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !512)
!509 = !DISubroutineType(types: !510)
!510 = !{!511, !11, !19, !19}
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool", file: !15, line: 58, baseType: !13)
!512 = !{!513, !514, !515, !516, !517}
!513 = !DILocalVariable(name: "name", arg: 1, scope: !508, file: !1, line: 132, type: !11)
!514 = !DILocalVariable(name: "size", arg: 2, scope: !508, file: !1, line: 132, type: !19)
!515 = !DILocalVariable(name: "num", arg: 3, scope: !508, file: !1, line: 132, type: !19)
!516 = !DILocalVariable(name: "pool", scope: !508, file: !1, line: 134, type: !511)
!517 = !DILocalVariable(name: "header_size", scope: !508, file: !1, line: 135, type: !19)
!518 = !DILocation(line: 0, scope: !508)
!519 = !DILocation(line: 140, column: 3, scope: !508)
!520 = !DILocation(line: 143, column: 7, scope: !508)
!521 = !DILocation(line: 147, column: 10, scope: !508)
!522 = !DILocation(line: 155, column: 3, scope: !508)
!523 = !DILocation(line: 158, column: 10, scope: !508)
!524 = !DILocation(line: 161, column: 9, scope: !508)
!525 = !DILocation(line: 161, column: 14, scope: !508)
!526 = !DILocation(line: 167, column: 9, scope: !508)
!527 = !DILocation(line: 167, column: 18, scope: !508)
!528 = !DILocation(line: 168, column: 9, scope: !508)
!529 = !DILocation(line: 168, column: 24, scope: !508)
!530 = !DILocation(line: 173, column: 28, scope: !508)
!531 = !DILocation(line: 173, column: 35, scope: !508)
!532 = !DILocation(line: 173, column: 9, scope: !508)
!533 = !DILocation(line: 173, column: 20, scope: !508)
!534 = !DILocation(line: 174, column: 9, scope: !508)
!535 = !DILocation(line: 174, column: 28, scope: !508)
!536 = !DILocation(line: 175, column: 9, scope: !508)
!537 = !DILocation(line: 175, column: 26, scope: !508)
!538 = !DILocation(line: 176, column: 9, scope: !508)
!539 = !DILocation(line: 176, column: 31, scope: !508)
!540 = !DILocation(line: 177, column: 9, scope: !508)
!541 = !DILocation(line: 177, column: 24, scope: !508)
!542 = !DILocation(line: 178, column: 9, scope: !508)
!543 = !DILocation(line: 178, column: 19, scope: !508)
!544 = !DILocation(line: 179, column: 9, scope: !508)
!545 = !DILocation(line: 179, column: 26, scope: !508)
!546 = !DILocation(line: 180, column: 9, scope: !508)
!547 = !DILocation(line: 180, column: 20, scope: !508)
!548 = !DILocation(line: 192, column: 3, scope: !508)
!549 = distinct !DISubprogram(name: "empty_alloc_pool", scope: !1, file: !1, line: 197, type: !550, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !511}
!552 = !{!553, !554, !555}
!553 = !DILocalVariable(name: "pool", arg: 1, scope: !549, file: !1, line: 197, type: !511)
!554 = !DILocalVariable(name: "block", scope: !549, file: !1, line: 199, type: !23)
!555 = !DILocalVariable(name: "next_block", scope: !549, file: !1, line: 199, type: !23)
!556 = !DILocation(line: 0, scope: !549)
!557 = !DILocation(line: 204, column: 3, scope: !549)
!558 = !DILocation(line: 207, column: 22, scope: !559)
!559 = distinct !DILexicalBlock(scope: !549, file: !1, line: 207, column: 3)
!560 = !DILocation(line: 207, column: 8, scope: !559)
!561 = !DILocation(line: 0, scope: !559)
!562 = !DILocation(line: 207, column: 40, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !1, line: 207, column: 3)
!564 = !DILocation(line: 207, column: 3, scope: !559)
!565 = !DILocation(line: 209, column: 27, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !1, line: 208, column: 5)
!567 = !DILocation(line: 210, column: 7, scope: !566)
!568 = !DILocation(line: 207, column: 3, scope: !563)
!569 = distinct !{!569, !564, !570}
!570 = !DILocation(line: 211, column: 5, scope: !559)
!571 = !DILocation(line: 216, column: 9, scope: !549)
!572 = !DILocation(line: 216, column: 28, scope: !549)
!573 = !DILocation(line: 217, column: 9, scope: !549)
!574 = !DILocation(line: 217, column: 26, scope: !549)
!575 = !DILocation(line: 218, column: 9, scope: !549)
!576 = !DILocation(line: 218, column: 31, scope: !549)
!577 = !DILocation(line: 219, column: 9, scope: !549)
!578 = !DILocation(line: 219, column: 24, scope: !549)
!579 = !DILocation(line: 220, column: 9, scope: !549)
!580 = !DILocation(line: 220, column: 19, scope: !549)
!581 = !DILocation(line: 221, column: 9, scope: !549)
!582 = !DILocation(line: 221, column: 26, scope: !549)
!583 = !DILocation(line: 222, column: 20, scope: !549)
!584 = !DILocation(line: 223, column: 1, scope: !549)
!585 = distinct !DISubprogram(name: "free_alloc_pool", scope: !1, file: !1, line: 227, type: !550, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !586)
!586 = !{!587}
!587 = !DILocalVariable(name: "pool", arg: 1, scope: !585, file: !1, line: 227, type: !511)
!588 = !DILocation(line: 0, scope: !585)
!589 = !DILocation(line: 230, column: 3, scope: !585)
!590 = !DILocation(line: 235, column: 9, scope: !585)
!591 = !DILocation(line: 235, column: 3, scope: !585)
!592 = !DILocation(line: 236, column: 1, scope: !585)
!593 = distinct !DISubprogram(name: "free_alloc_pool_if_empty", scope: !1, file: !1, line: 240, type: !594, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !597)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!597 = !{!598}
!598 = !DILocalVariable(name: "pool", arg: 1, scope: !593, file: !1, line: 240, type: !596)
!599 = !DILocation(line: 0, scope: !593)
!600 = !DILocation(line: 242, column: 8, scope: !601)
!601 = distinct !DILexicalBlock(scope: !593, file: !1, line: 242, column: 7)
!602 = !DILocation(line: 242, column: 16, scope: !601)
!603 = !DILocation(line: 242, column: 38, scope: !601)
!604 = !DILocation(line: 242, column: 26, scope: !601)
!605 = !DILocation(line: 242, column: 7, scope: !593)
!606 = !DILocation(line: 244, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !601, file: !1, line: 243, column: 5)
!608 = !DILocation(line: 245, column: 13, scope: !607)
!609 = !DILocation(line: 246, column: 5, scope: !607)
!610 = !DILocation(line: 247, column: 1, scope: !593)
!611 = distinct !DISubprogram(name: "pool_alloc", scope: !1, file: !1, line: 251, type: !612, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{!10, !511}
!614 = !{!615, !616, !617, !620}
!615 = !DILocalVariable(name: "pool", arg: 1, scope: !611, file: !1, line: 251, type: !511)
!616 = !DILocalVariable(name: "header", scope: !611, file: !1, line: 253, type: !23)
!617 = !DILocalVariable(name: "block", scope: !618, file: !1, line: 268, type: !8)
!618 = distinct !DILexicalBlock(scope: !619, file: !1, line: 267, column: 5)
!619 = distinct !DILexicalBlock(scope: !611, file: !1, line: 266, column: 7)
!620 = !DILocalVariable(name: "block_header", scope: !621, file: !1, line: 271, type: !23)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 270, column: 2)
!622 = distinct !DILexicalBlock(scope: !618, file: !1, line: 269, column: 11)
!623 = !DILocation(line: 0, scope: !611)
!624 = !DILocation(line: 263, column: 3, scope: !611)
!625 = !DILocation(line: 266, column: 14, scope: !619)
!626 = !DILocation(line: 266, column: 8, scope: !619)
!627 = !DILocation(line: 266, column: 7, scope: !611)
!628 = !DILocation(line: 269, column: 18, scope: !622)
!629 = !DILocation(line: 269, column: 12, scope: !622)
!630 = !DILocation(line: 269, column: 11, scope: !618)
!631 = !DILocation(line: 0, scope: !618)
!632 = !DILocation(line: 296, column: 21, scope: !618)
!633 = !DILocation(line: 274, column: 12, scope: !621)
!634 = !DILocation(line: 0, scope: !621)
!635 = !DILocation(line: 276, column: 10, scope: !621)
!636 = !DILocation(line: 279, column: 31, scope: !621)
!637 = !DILocation(line: 279, column: 23, scope: !621)
!638 = !DILocation(line: 280, column: 21, scope: !621)
!639 = !DILocation(line: 283, column: 10, scope: !621)
!640 = !DILocation(line: 283, column: 27, scope: !621)
!641 = !DILocation(line: 284, column: 40, scope: !621)
!642 = !DILocation(line: 284, column: 32, scope: !621)
!643 = !DILocation(line: 288, column: 10, scope: !621)
!644 = !DILocation(line: 288, column: 25, scope: !621)
!645 = !DILocation(line: 289, column: 10, scope: !621)
!646 = !DILocation(line: 289, column: 20, scope: !621)
!647 = !DILocation(line: 290, column: 10, scope: !621)
!648 = !DILocation(line: 290, column: 27, scope: !621)
!649 = !DILocation(line: 291, column: 2, scope: !621)
!650 = !DILocation(line: 298, column: 15, scope: !618)
!651 = !DILocation(line: 298, column: 20, scope: !618)
!652 = !DILocation(line: 303, column: 32, scope: !618)
!653 = !DILocation(line: 304, column: 39, scope: !618)
!654 = !DILocation(line: 304, column: 30, scope: !618)
!655 = !DILocation(line: 305, column: 34, scope: !618)
!656 = !DILocation(line: 307, column: 5, scope: !618)
!657 = !DILocation(line: 310, column: 18, scope: !611)
!658 = !DILocation(line: 311, column: 38, scope: !611)
!659 = !DILocation(line: 311, column: 28, scope: !611)
!660 = !DILocation(line: 312, column: 9, scope: !611)
!661 = !DILocation(line: 312, column: 18, scope: !611)
!662 = !DILocation(line: 319, column: 11, scope: !611)
!663 = !DILocation(line: 319, column: 3, scope: !611)
!664 = distinct !DISubprogram(name: "pool_free", scope: !1, file: !1, line: 324, type: !665, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !511, !10}
!667 = !{!668, !669, !670}
!668 = !DILocalVariable(name: "pool", arg: 1, scope: !664, file: !1, line: 324, type: !511)
!669 = !DILocalVariable(name: "ptr", arg: 2, scope: !664, file: !1, line: 324, type: !10)
!670 = !DILocalVariable(name: "header", scope: !664, file: !1, line: 326, type: !23)
!671 = !DILocation(line: 0, scope: !664)
!672 = !DILocation(line: 331, column: 3, scope: !664)
!673 = !DILocation(line: 343, column: 3, scope: !664)
!674 = !DILocation(line: 347, column: 24, scope: !664)
!675 = !DILocation(line: 347, column: 16, scope: !664)
!676 = !DILocation(line: 348, column: 28, scope: !664)
!677 = !DILocation(line: 349, column: 18, scope: !664)
!678 = !DILocation(line: 355, column: 1, scope: !664)
!679 = distinct !DISubprogram(name: "dump_alloc_pool_statistics", scope: !1, file: !1, line: 389, type: !680, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!680 = !DISubroutineType(types: !681)
!681 = !{null}
!682 = !DILocation(line: 407, column: 1, scope: !679)
