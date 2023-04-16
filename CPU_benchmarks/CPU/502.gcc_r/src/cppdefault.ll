; ModuleID = 'cppdefault.bc'
source_filename = "cppdefault.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.default_include = type { i8*, i8*, i8, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"/usr/include\00", align 1
@cpp_include_defaults = dso_local local_unnamed_addr constant [2 x %struct.default_include] [%struct.default_include { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* null, i8 0, i8 0, i8 1, i8 0 }, %struct.default_include zeroinitializer], align 16, !dbg !0
@cpp_GCC_INCLUDE_DIR = dso_local local_unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !16
@cpp_GCC_INCLUDE_DIR_len = dso_local local_unnamed_addr constant i64 0, align 8, !dbg !21
@cpp_PREFIX = dso_local local_unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !27
@cpp_PREFIX_len = dso_local local_unnamed_addr constant i64 1, align 8, !dbg !32
@cpp_EXEC_PREFIX = dso_local local_unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !34
@cpp_relocated.relocated = internal unnamed_addr global i32 -1, align 4, !dbg !36
@.str.1 = private unnamed_addr constant [16 x i8] c"GCC_EXEC_PREFIX\00", align 1
@gcc_exec_prefix = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !41

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !59 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !73, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !74, metadata !DIExpression()), !dbg !75
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !76
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !77
  ret i32 %call, !dbg !78
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !79 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !82
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !83
  ret i32 %call, !dbg !84
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !85 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !143, metadata !DIExpression()), !dbg !144
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !145
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !145
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !145
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !145
  %cmp = icmp uge i8* %0, %1, !dbg !145
  %conv1 = zext i1 %cmp to i64, !dbg !145
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !145
  %tobool = icmp eq i64 %expval, 0, !dbg !145
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !145

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !145
  br label %cond.end, !dbg !145

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !145
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !145
  %2 = load i8, i8* %0, align 1, !dbg !145
  %conv3 = zext i8 %2 to i32, !dbg !145
  br label %cond.end, !dbg !145

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !145
  ret i32 %cond, !dbg !146
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !147 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !149, metadata !DIExpression()), !dbg !150
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !151
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !151
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !151
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !151
  %cmp = icmp uge i8* %0, %1, !dbg !151
  %conv1 = zext i1 %cmp to i64, !dbg !151
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !151
  %tobool = icmp eq i64 %expval, 0, !dbg !151
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !151

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !151
  br label %cond.end, !dbg !151

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !151
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !151
  %2 = load i8, i8* %0, align 1, !dbg !151
  %conv3 = zext i8 %2 to i32, !dbg !151
  br label %cond.end, !dbg !151

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !151
  ret i32 %cond, !dbg !152
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !153 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !154
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !154
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !154
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !154
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !154
  %cmp = icmp uge i8* %1, %2, !dbg !154
  %conv1 = zext i1 %cmp to i64, !dbg !154
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !154
  %tobool = icmp eq i64 %expval, 0, !dbg !154
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !154

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !154
  br label %cond.end, !dbg !154

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !154
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !154
  %3 = load i8, i8* %1, align 1, !dbg !154
  %conv3 = zext i8 %3 to i32, !dbg !154
  br label %cond.end, !dbg !154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !154
  ret i32 %cond, !dbg !155
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !160, metadata !DIExpression()), !dbg !161
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !162
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !163
  ret i32 %call, !dbg !164
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !165 {
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

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !176, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !177, metadata !DIExpression()), !dbg !178
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !179
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !179
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !179
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !179
  %cmp = icmp uge i8* %0, %1, !dbg !179
  %conv1 = zext i1 %cmp to i64, !dbg !179
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !179
  %tobool = icmp eq i64 %expval, 0, !dbg !179
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !179

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !179
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !179
  br label %cond.end, !dbg !179

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !179
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !179
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !179
  store i8 %conv2, i8* %0, align 1, !dbg !179
  %conv6 = and i32 %__c, 255, !dbg !179
  br label %cond.end, !dbg !179

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !179
  ret i32 %cond, !dbg !180
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !181 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !185
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !185
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !185
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !185
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !185
  %cmp = icmp uge i8* %1, %2, !dbg !185
  %conv1 = zext i1 %cmp to i64, !dbg !185
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !185
  %tobool = icmp eq i64 %expval, 0, !dbg !185
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !185

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !185
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !185
  br label %cond.end, !dbg !185

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !185
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !185
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !185
  store i8 %conv4, i8* %1, align 1, !dbg !185
  %conv6 = and i32 %__c, 255, !dbg !185
  br label %cond.end, !dbg !185

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !185
  ret i32 %cond, !dbg !186
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !193, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i64* %__n, metadata !194, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !195, metadata !DIExpression()), !dbg !196
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !197
  ret i64 %call, !dbg !198
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !199 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !201, metadata !DIExpression()), !dbg !202
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !203
  %0 = load i32, i32* %_flags, align 8, !dbg !203
  %and = lshr i32 %0, 4, !dbg !203
  %and.lobit = and i32 %and, 1, !dbg !203
  ret i32 %and.lobit, !dbg !204
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !207, metadata !DIExpression()), !dbg !208
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !209
  %0 = load i32, i32* %_flags, align 8, !dbg !209
  %and = lshr i32 %0, 5, !dbg !209
  %and.lobit = and i32 %and, 1, !dbg !209
  ret i32 %and.lobit, !dbg !210
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !211 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !214, metadata !DIExpression()), !dbg !215
  %__c.off = add i32 %__c, 128, !dbg !216
  %0 = icmp ult i32 %__c.off, 384, !dbg !216
  br i1 %0, label %cond.true, label %cond.end, !dbg !216

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !217
  %1 = load i32*, i32** %call, align 8, !dbg !218
  %idxprom = sext i32 %__c to i64, !dbg !219
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !219
  %2 = load i32, i32* %arrayidx, align 4, !dbg !219
  br label %cond.end, !dbg !220

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !220
  ret i32 %cond, !dbg !221
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !222 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !224, metadata !DIExpression()), !dbg !225
  %__c.off = add i32 %__c, 128, !dbg !226
  %0 = icmp ult i32 %__c.off, 384, !dbg !226
  br i1 %0, label %cond.true, label %cond.end, !dbg !226

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !227
  %1 = load i32*, i32** %call, align 8, !dbg !228
  %idxprom = sext i32 %__c to i64, !dbg !229
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !229
  %2 = load i32, i32* %arrayidx, align 4, !dbg !229
  br label %cond.end, !dbg !230

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !230
  ret i32 %cond, !dbg !231
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !237, metadata !DIExpression()), !dbg !238
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !239
  %conv = trunc i64 %call to i32, !dbg !240
  ret i32 %conv, !dbg !241
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !242 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !246, metadata !DIExpression()), !dbg !247
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !248
  ret i64 %call, !dbg !249
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !250 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !255, metadata !DIExpression()), !dbg !256
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !257
  ret i64 %call, !dbg !258
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !259 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !270, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i8* %__base, metadata !271, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !272, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %__size, metadata !273, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !274, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 0, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !276, metadata !DIExpression()), !dbg !280
  br label %while.cond, !dbg !281

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !282
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !280
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !276, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !275, metadata !DIExpression()), !dbg !280
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !283
  br i1 %cmp, label %while.body, label %cleanup, !dbg !281

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !284
  %div = lshr i64 %add, 1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %div, metadata !277, metadata !DIExpression()), !dbg !280
  %mul = mul i64 %div, %__size, !dbg !287
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !288
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !278, metadata !DIExpression()), !dbg !280
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !289
  call void @llvm.dbg.value(metadata i32 %call, metadata !279, metadata !DIExpression()), !dbg !280
  %cmp1 = icmp slt i32 %call, 0, !dbg !290
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !292

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !293
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !295

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !296
  call void @llvm.dbg.value(metadata i64 %add4, metadata !275, metadata !DIExpression()), !dbg !280
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !280
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !280
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !276, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !275, metadata !DIExpression()), !dbg !280
  br label %while.cond, !dbg !281, !llvm.loop !297

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !280
  ret i8* %retval.0, !dbg !299
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !306, metadata !DIExpression()), !dbg !307
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !308
  ret double %call, !dbg !309
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !310 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !319, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !320, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 %base, metadata !321, metadata !DIExpression()), !dbg !322
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !323
  ret i64 %call, !dbg !324
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !325 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !331, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %base, metadata !333, metadata !DIExpression()), !dbg !334
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !335
  ret i64 %call, !dbg !336
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !337 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !348, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !349, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %base, metadata !350, metadata !DIExpression()), !dbg !351
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !352
  ret i64 %call, !dbg !353
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !354 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !358, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !359, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 %base, metadata !360, metadata !DIExpression()), !dbg !361
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !362
  ret i64 %call, !dbg !363
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !364 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !406, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !407, metadata !DIExpression()), !dbg !408
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !409
  ret i32 %call, !dbg !410
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !411 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !413, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !414, metadata !DIExpression()), !dbg !415
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !416
  ret i32 %call, !dbg !417
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !418 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !422, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !423, metadata !DIExpression()), !dbg !424
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !425
  ret i32 %call, !dbg !426
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !427 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !431, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !432, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !433, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !434, metadata !DIExpression()), !dbg !435
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !436
  ret i32 %call, !dbg !437
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !438 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !442, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !443, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !444, metadata !DIExpression()), !dbg !445
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !444, metadata !DIExpression(DW_OP_deref)), !dbg !445
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !446
  ret i32 %call, !dbg !447
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !448 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !452, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i8* %__path, metadata !453, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !454, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !455, metadata !DIExpression()), !dbg !456
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !455, metadata !DIExpression(DW_OP_deref)), !dbg !456
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !457
  ret i32 %call, !dbg !458
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !459 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !484, metadata !DIExpression()), !dbg !485
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !486
  ret i32 %call, !dbg !487
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !488 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !490, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !491, metadata !DIExpression()), !dbg !492
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !493
  ret i32 %call, !dbg !494
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !495 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !499, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !500, metadata !DIExpression()), !dbg !501
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !502
  ret i32 %call, !dbg !503
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !504 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !508, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !509, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !510, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !511, metadata !DIExpression()), !dbg !512
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !513
  ret i32 %call, !dbg !514
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cpp_relocated() local_unnamed_addr #3 !dbg !38 {
entry:
  %0 = load i32, i32* @cpp_relocated.relocated, align 4, !dbg !515
  %cmp = icmp eq i32 %0, -1, !dbg !517
  br i1 %cmp, label %do.body, label %if.end2, !dbg !518

do.body:                                          ; preds = %entry
  %call = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !519
  store i8* %call, i8** @gcc_exec_prefix, align 8, !dbg !519
  %tobool = icmp eq i8* %call, null, !dbg !522
  br i1 %tobool, label %if.else, label %if.then1, !dbg !524

if.then1:                                         ; preds = %do.body
  store i32 1, i32* @cpp_relocated.relocated, align 4, !dbg !525
  br label %if.end2, !dbg !526

if.else:                                          ; preds = %do.body
  store i32 0, i32* @cpp_relocated.relocated, align 4, !dbg !527
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.else, %entry
  %1 = phi i32 [ 1, %if.then1 ], [ 0, %if.else ], [ %0, %entry ], !dbg !528
  %conv = trunc i32 %1 to i8, !dbg !528
  ret i8 %conv, !dbg !529
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!55, !56, !57}
!llvm.ident = !{!58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpp_include_defaults", scope: !2, file: !3, line: 44, type: !43, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, nameTableKind: None)
!3 = !DIFile(filename: "cppdefault.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!15 = !{!0, !16, !21, !27, !32, !34, !36, !41}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "cpp_GCC_INCLUDE_DIR", scope: !2, file: !3, line: 108, type: !18, isLocal: false, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 1)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "cpp_GCC_INCLUDE_DIR_len", scope: !2, file: !3, line: 109, type: !23, isLocal: false, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 46, baseType: !26)
!25 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "cpp_PREFIX", scope: !2, file: !3, line: 114, type: !29, isLocal: false, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 16, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 2)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "cpp_PREFIX_len", scope: !2, file: !3, line: 115, type: !23, isLocal: false, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "cpp_EXEC_PREFIX", scope: !2, file: !3, line: 116, type: !29, isLocal: false, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "relocated", scope: !38, file: !3, line: 130, type: !8, isLocal: true, isDefinition: true)
!38 = distinct !DISubprogram(name: "cpp_relocated", scope: !3, file: !3, line: 128, type: !39, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!39 = !DISubroutineType(types: !40)
!40 = !{!7}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "gcc_exec_prefix", scope: !2, file: !3, line: 124, type: !13, isLocal: false, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 384, elements: !30)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_include", file: !46, line: 35, size: 192, elements: !47)
!46 = !DIFile(filename: "./cppdefault.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!47 = !{!48, !50, !51, !52, !53, !54}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !45, file: !46, line: 37, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !45, file: !46, line: 38, baseType: !49, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !45, file: !46, line: 40, baseType: !14, size: 8, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "cxx_aware", scope: !45, file: !46, line: 41, baseType: !14, size: 8, offset: 136)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "add_sysroot", scope: !45, file: !46, line: 44, baseType: !14, size: 8, offset: 144)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "multilib", scope: !45, file: !46, line: 46, baseType: !14, size: 8, offset: 152)
!55 = !{i32 2, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!59 = distinct !DISubprogram(name: "vprintf", scope: !60, file: !60, line: 39, type: !61, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!61 = !DISubroutineType(types: !62)
!62 = !{!8, !63, !64}
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !66)
!66 = !{!67, !69, !70, !71}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !65, file: !3, baseType: !68, size: 32)
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !65, file: !3, baseType: !68, size: 32, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !65, file: !3, baseType: !12, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !65, file: !3, baseType: !12, size: 64, offset: 128)
!72 = !{!73, !74}
!73 = !DILocalVariable(name: "__fmt", arg: 1, scope: !59, file: !60, line: 39, type: !63)
!74 = !DILocalVariable(name: "__arg", arg: 2, scope: !59, file: !60, line: 39, type: !64)
!75 = !DILocation(line: 0, scope: !59)
!76 = !DILocation(line: 41, column: 20, scope: !59)
!77 = !DILocation(line: 41, column: 10, scope: !59)
!78 = !DILocation(line: 41, column: 3, scope: !59)
!79 = distinct !DISubprogram(name: "getchar", scope: !60, file: !60, line: 47, type: !80, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!80 = !DISubroutineType(types: !81)
!81 = !{!8}
!82 = !DILocation(line: 49, column: 16, scope: !79)
!83 = !DILocation(line: 49, column: 10, scope: !79)
!84 = !DILocation(line: 49, column: 3, scope: !79)
!85 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !60, file: !60, line: 56, type: !86, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !142)
!86 = !DISubroutineType(types: !87)
!87 = !{!8, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !90, line: 7, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !92, line: 49, size: 1728, elements: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !109, !111, !112, !113, !117, !119, !121, !123, !126, !128, !131, !134, !135, !136, !137, !138}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !91, file: !92, line: 51, baseType: !8, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !91, file: !92, line: 54, baseType: !10, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !91, file: !92, line: 55, baseType: !10, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !91, file: !92, line: 56, baseType: !10, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !91, file: !92, line: 57, baseType: !10, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !91, file: !92, line: 58, baseType: !10, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !91, file: !92, line: 59, baseType: !10, size: 64, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !91, file: !92, line: 60, baseType: !10, size: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !91, file: !92, line: 61, baseType: !10, size: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !91, file: !92, line: 64, baseType: !10, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !91, file: !92, line: 65, baseType: !10, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !91, file: !92, line: 66, baseType: !10, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !91, file: !92, line: 68, baseType: !107, size: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !92, line: 36, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !91, file: !92, line: 70, baseType: !110, size: 64, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !91, file: !92, line: 72, baseType: !8, size: 32, offset: 896)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !91, file: !92, line: 73, baseType: !8, size: 32, offset: 928)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !91, file: !92, line: 74, baseType: !114, size: 64, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !115, line: 152, baseType: !116)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!116 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !91, file: !92, line: 77, baseType: !118, size: 16, offset: 1024)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !91, file: !92, line: 78, baseType: !120, size: 8, offset: 1040)
!120 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !91, file: !92, line: 79, baseType: !122, size: 8, offset: 1048)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !19)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !91, file: !92, line: 81, baseType: !124, size: 64, offset: 1088)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !92, line: 43, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !91, file: !92, line: 89, baseType: !127, size: 64, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !115, line: 153, baseType: !116)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !91, file: !92, line: 91, baseType: !129, size: 64, offset: 1216)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !92, line: 37, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !91, file: !92, line: 92, baseType: !132, size: 64, offset: 1280)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !92, line: 38, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !91, file: !92, line: 93, baseType: !110, size: 64, offset: 1344)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !91, file: !92, line: 94, baseType: !12, size: 64, offset: 1408)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !91, file: !92, line: 95, baseType: !24, size: 64, offset: 1472)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !91, file: !92, line: 96, baseType: !8, size: 32, offset: 1536)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !91, file: !92, line: 98, baseType: !139, size: 160, offset: 1568)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 20)
!142 = !{!143}
!143 = !DILocalVariable(name: "__fp", arg: 1, scope: !85, file: !60, line: 56, type: !88)
!144 = !DILocation(line: 0, scope: !85)
!145 = !DILocation(line: 58, column: 10, scope: !85)
!146 = !DILocation(line: 58, column: 3, scope: !85)
!147 = distinct !DISubprogram(name: "getc_unlocked", scope: !60, file: !60, line: 66, type: !86, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!148 = !{!149}
!149 = !DILocalVariable(name: "__fp", arg: 1, scope: !147, file: !60, line: 66, type: !88)
!150 = !DILocation(line: 0, scope: !147)
!151 = !DILocation(line: 68, column: 10, scope: !147)
!152 = !DILocation(line: 68, column: 3, scope: !147)
!153 = distinct !DISubprogram(name: "getchar_unlocked", scope: !60, file: !60, line: 73, type: !80, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!154 = !DILocation(line: 75, column: 10, scope: !153)
!155 = !DILocation(line: 75, column: 3, scope: !153)
!156 = distinct !DISubprogram(name: "putchar", scope: !60, file: !60, line: 82, type: !157, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{!8, !8}
!159 = !{!160}
!160 = !DILocalVariable(name: "__c", arg: 1, scope: !156, file: !60, line: 82, type: !8)
!161 = !DILocation(line: 0, scope: !156)
!162 = !DILocation(line: 84, column: 21, scope: !156)
!163 = !DILocation(line: 84, column: 10, scope: !156)
!164 = !DILocation(line: 84, column: 3, scope: !156)
!165 = distinct !DISubprogram(name: "fputc_unlocked", scope: !60, file: !60, line: 91, type: !166, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{!8, !8, !88}
!168 = !{!169, !170}
!169 = !DILocalVariable(name: "__c", arg: 1, scope: !165, file: !60, line: 91, type: !8)
!170 = !DILocalVariable(name: "__stream", arg: 2, scope: !165, file: !60, line: 91, type: !88)
!171 = !DILocation(line: 0, scope: !165)
!172 = !DILocation(line: 93, column: 10, scope: !165)
!173 = !DILocation(line: 93, column: 3, scope: !165)
!174 = distinct !DISubprogram(name: "putc_unlocked", scope: !60, file: !60, line: 101, type: !166, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !175)
!175 = !{!176, !177}
!176 = !DILocalVariable(name: "__c", arg: 1, scope: !174, file: !60, line: 101, type: !8)
!177 = !DILocalVariable(name: "__stream", arg: 2, scope: !174, file: !60, line: 101, type: !88)
!178 = !DILocation(line: 0, scope: !174)
!179 = !DILocation(line: 103, column: 10, scope: !174)
!180 = !DILocation(line: 103, column: 3, scope: !174)
!181 = distinct !DISubprogram(name: "putchar_unlocked", scope: !60, file: !60, line: 108, type: !157, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !182)
!182 = !{!183}
!183 = !DILocalVariable(name: "__c", arg: 1, scope: !181, file: !60, line: 108, type: !8)
!184 = !DILocation(line: 0, scope: !181)
!185 = !DILocation(line: 110, column: 10, scope: !181)
!186 = !DILocation(line: 110, column: 3, scope: !181)
!187 = distinct !DISubprogram(name: "getline", scope: !60, file: !60, line: 118, type: !188, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !9, !191, !88}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !115, line: 193, baseType: !116)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!192 = !{!193, !194, !195}
!193 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !187, file: !60, line: 118, type: !9)
!194 = !DILocalVariable(name: "__n", arg: 2, scope: !187, file: !60, line: 118, type: !191)
!195 = !DILocalVariable(name: "__stream", arg: 3, scope: !187, file: !60, line: 118, type: !88)
!196 = !DILocation(line: 0, scope: !187)
!197 = !DILocation(line: 120, column: 10, scope: !187)
!198 = !DILocation(line: 120, column: 3, scope: !187)
!199 = distinct !DISubprogram(name: "feof_unlocked", scope: !60, file: !60, line: 128, type: !86, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !200)
!200 = !{!201}
!201 = !DILocalVariable(name: "__stream", arg: 1, scope: !199, file: !60, line: 128, type: !88)
!202 = !DILocation(line: 0, scope: !199)
!203 = !DILocation(line: 130, column: 10, scope: !199)
!204 = !DILocation(line: 130, column: 3, scope: !199)
!205 = distinct !DISubprogram(name: "ferror_unlocked", scope: !60, file: !60, line: 135, type: !86, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !206)
!206 = !{!207}
!207 = !DILocalVariable(name: "__stream", arg: 1, scope: !205, file: !60, line: 135, type: !88)
!208 = !DILocation(line: 0, scope: !205)
!209 = !DILocation(line: 137, column: 10, scope: !205)
!210 = !DILocation(line: 137, column: 3, scope: !205)
!211 = distinct !DISubprogram(name: "tolower", scope: !212, file: !212, line: 207, type: !157, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!212 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!213 = !{!214}
!214 = !DILocalVariable(name: "__c", arg: 1, scope: !211, file: !212, line: 207, type: !8)
!215 = !DILocation(line: 0, scope: !211)
!216 = !DILocation(line: 209, column: 22, scope: !211)
!217 = !DILocation(line: 209, column: 39, scope: !211)
!218 = !DILocation(line: 209, column: 38, scope: !211)
!219 = !DILocation(line: 209, column: 37, scope: !211)
!220 = !DILocation(line: 209, column: 10, scope: !211)
!221 = !DILocation(line: 209, column: 3, scope: !211)
!222 = distinct !DISubprogram(name: "toupper", scope: !212, file: !212, line: 213, type: !157, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!223 = !{!224}
!224 = !DILocalVariable(name: "__c", arg: 1, scope: !222, file: !212, line: 213, type: !8)
!225 = !DILocation(line: 0, scope: !222)
!226 = !DILocation(line: 215, column: 22, scope: !222)
!227 = !DILocation(line: 215, column: 39, scope: !222)
!228 = !DILocation(line: 215, column: 38, scope: !222)
!229 = !DILocation(line: 215, column: 37, scope: !222)
!230 = !DILocation(line: 215, column: 10, scope: !222)
!231 = !DILocation(line: 215, column: 3, scope: !222)
!232 = distinct !DISubprogram(name: "atoi", scope: !233, file: !233, line: 361, type: !234, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!233 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!234 = !DISubroutineType(types: !235)
!235 = !{!8, !13}
!236 = !{!237}
!237 = !DILocalVariable(name: "__nptr", arg: 1, scope: !232, file: !233, line: 361, type: !13)
!238 = !DILocation(line: 0, scope: !232)
!239 = !DILocation(line: 363, column: 16, scope: !232)
!240 = !DILocation(line: 363, column: 10, scope: !232)
!241 = !DILocation(line: 363, column: 3, scope: !232)
!242 = distinct !DISubprogram(name: "atol", scope: !233, file: !233, line: 366, type: !243, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{!116, !13}
!245 = !{!246}
!246 = !DILocalVariable(name: "__nptr", arg: 1, scope: !242, file: !233, line: 366, type: !13)
!247 = !DILocation(line: 0, scope: !242)
!248 = !DILocation(line: 368, column: 10, scope: !242)
!249 = !DILocation(line: 368, column: 3, scope: !242)
!250 = distinct !DISubprogram(name: "atoll", scope: !233, file: !233, line: 373, type: !251, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !13}
!253 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!254 = !{!255}
!255 = !DILocalVariable(name: "__nptr", arg: 1, scope: !250, file: !233, line: 373, type: !13)
!256 = !DILocation(line: 0, scope: !250)
!257 = !DILocation(line: 375, column: 10, scope: !250)
!258 = !DILocation(line: 375, column: 3, scope: !250)
!259 = distinct !DISubprogram(name: "bsearch", scope: !260, file: !260, line: 20, type: !261, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !269)
!260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!261 = !DISubroutineType(types: !262)
!262 = !{!12, !263, !263, !24, !24, !265}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !233, line: 808, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!8, !263, !263}
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!270 = !DILocalVariable(name: "__key", arg: 1, scope: !259, file: !260, line: 20, type: !263)
!271 = !DILocalVariable(name: "__base", arg: 2, scope: !259, file: !260, line: 20, type: !263)
!272 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !259, file: !260, line: 20, type: !24)
!273 = !DILocalVariable(name: "__size", arg: 4, scope: !259, file: !260, line: 20, type: !24)
!274 = !DILocalVariable(name: "__compar", arg: 5, scope: !259, file: !260, line: 21, type: !265)
!275 = !DILocalVariable(name: "__l", scope: !259, file: !260, line: 23, type: !24)
!276 = !DILocalVariable(name: "__u", scope: !259, file: !260, line: 23, type: !24)
!277 = !DILocalVariable(name: "__idx", scope: !259, file: !260, line: 23, type: !24)
!278 = !DILocalVariable(name: "__p", scope: !259, file: !260, line: 24, type: !263)
!279 = !DILocalVariable(name: "__comparison", scope: !259, file: !260, line: 25, type: !8)
!280 = !DILocation(line: 0, scope: !259)
!281 = !DILocation(line: 29, column: 3, scope: !259)
!282 = !DILocation(line: 27, column: 7, scope: !259)
!283 = !DILocation(line: 29, column: 14, scope: !259)
!284 = !DILocation(line: 31, column: 20, scope: !285)
!285 = distinct !DILexicalBlock(scope: !259, file: !260, line: 30, column: 5)
!286 = !DILocation(line: 31, column: 27, scope: !285)
!287 = !DILocation(line: 32, column: 56, scope: !285)
!288 = !DILocation(line: 32, column: 47, scope: !285)
!289 = !DILocation(line: 33, column: 22, scope: !285)
!290 = !DILocation(line: 34, column: 24, scope: !291)
!291 = distinct !DILexicalBlock(scope: !285, file: !260, line: 34, column: 11)
!292 = !DILocation(line: 34, column: 11, scope: !285)
!293 = !DILocation(line: 36, column: 29, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !260, line: 36, column: 16)
!295 = !DILocation(line: 36, column: 16, scope: !291)
!296 = !DILocation(line: 37, column: 14, scope: !294)
!297 = distinct !{!297, !281, !298}
!298 = !DILocation(line: 40, column: 5, scope: !259)
!299 = !DILocation(line: 43, column: 1, scope: !259)
!300 = distinct !DISubprogram(name: "atof", scope: !301, file: !301, line: 25, type: !302, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !305)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !13}
!304 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!305 = !{!306}
!306 = !DILocalVariable(name: "__nptr", arg: 1, scope: !300, file: !301, line: 25, type: !13)
!307 = !DILocation(line: 0, scope: !300)
!308 = !DILocation(line: 27, column: 10, scope: !300)
!309 = !DILocation(line: 27, column: 3, scope: !300)
!310 = distinct !DISubprogram(name: "strtoimax", scope: !311, file: !311, line: 324, type: !312, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!311 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !63, !317, !8}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !315, line: 101, baseType: !316)
!315 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !115, line: 72, baseType: !116)
!317 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!318 = !{!319, !320, !321}
!319 = !DILocalVariable(name: "nptr", arg: 1, scope: !310, file: !311, line: 324, type: !63)
!320 = !DILocalVariable(name: "endptr", arg: 2, scope: !310, file: !311, line: 324, type: !317)
!321 = !DILocalVariable(name: "base", arg: 3, scope: !310, file: !311, line: 324, type: !8)
!322 = !DILocation(line: 0, scope: !310)
!323 = !DILocation(line: 327, column: 10, scope: !310)
!324 = !DILocation(line: 327, column: 3, scope: !310)
!325 = distinct !DISubprogram(name: "strtoumax", scope: !311, file: !311, line: 336, type: !326, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !330)
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !63, !317, !8}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !315, line: 102, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !115, line: 73, baseType: !26)
!330 = !{!331, !332, !333}
!331 = !DILocalVariable(name: "nptr", arg: 1, scope: !325, file: !311, line: 336, type: !63)
!332 = !DILocalVariable(name: "endptr", arg: 2, scope: !325, file: !311, line: 336, type: !317)
!333 = !DILocalVariable(name: "base", arg: 3, scope: !325, file: !311, line: 336, type: !8)
!334 = !DILocation(line: 0, scope: !325)
!335 = !DILocation(line: 339, column: 10, scope: !325)
!336 = !DILocation(line: 339, column: 3, scope: !325)
!337 = distinct !DISubprogram(name: "wcstoimax", scope: !311, file: !311, line: 348, type: !338, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!338 = !DISubroutineType(types: !339)
!339 = !{!314, !340, !344, !8}
!340 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !311, line: 34, baseType: !8)
!344 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!347 = !{!348, !349, !350}
!348 = !DILocalVariable(name: "nptr", arg: 1, scope: !337, file: !311, line: 348, type: !340)
!349 = !DILocalVariable(name: "endptr", arg: 2, scope: !337, file: !311, line: 348, type: !344)
!350 = !DILocalVariable(name: "base", arg: 3, scope: !337, file: !311, line: 348, type: !8)
!351 = !DILocation(line: 0, scope: !337)
!352 = !DILocation(line: 351, column: 10, scope: !337)
!353 = !DILocation(line: 351, column: 3, scope: !337)
!354 = distinct !DISubprogram(name: "wcstoumax", scope: !311, file: !311, line: 362, type: !355, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!328, !340, !344, !8}
!357 = !{!358, !359, !360}
!358 = !DILocalVariable(name: "nptr", arg: 1, scope: !354, file: !311, line: 362, type: !340)
!359 = !DILocalVariable(name: "endptr", arg: 2, scope: !354, file: !311, line: 362, type: !344)
!360 = !DILocalVariable(name: "base", arg: 3, scope: !354, file: !311, line: 362, type: !8)
!361 = !DILocation(line: 0, scope: !354)
!362 = !DILocation(line: 365, column: 10, scope: !354)
!363 = !DILocation(line: 365, column: 3, scope: !354)
!364 = distinct !DISubprogram(name: "stat", scope: !365, file: !365, line: 453, type: !366, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!366 = !DISubroutineType(types: !367)
!367 = !{!8, !13, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !370, line: 46, size: 1152, elements: !371)
!370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!371 = !{!372, !374, !376, !378, !380, !382, !384, !385, !386, !387, !389, !391, !399, !400, !401}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !369, file: !370, line: 48, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !115, line: 145, baseType: !26)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !369, file: !370, line: 53, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !115, line: 148, baseType: !26)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !369, file: !370, line: 61, baseType: !377, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !115, line: 151, baseType: !26)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !369, file: !370, line: 62, baseType: !379, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !115, line: 150, baseType: !68)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !369, file: !370, line: 64, baseType: !381, size: 32, offset: 224)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !115, line: 146, baseType: !68)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !369, file: !370, line: 65, baseType: !383, size: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !115, line: 147, baseType: !68)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !369, file: !370, line: 67, baseType: !8, size: 32, offset: 288)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !369, file: !370, line: 69, baseType: !373, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !369, file: !370, line: 74, baseType: !114, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !369, file: !370, line: 78, baseType: !388, size: 64, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !115, line: 174, baseType: !116)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !369, file: !370, line: 80, baseType: !390, size: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !115, line: 179, baseType: !116)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !369, file: !370, line: 91, baseType: !392, size: 128, offset: 576)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !393, line: 10, size: 128, elements: !394)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!394 = !{!395, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !392, file: !393, line: 12, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !115, line: 160, baseType: !116)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !392, file: !393, line: 16, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !115, line: 196, baseType: !116)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !369, file: !370, line: 92, baseType: !392, size: 128, offset: 704)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !369, file: !370, line: 93, baseType: !392, size: 128, offset: 832)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !369, file: !370, line: 106, baseType: !402, size: 192, offset: 960)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 192, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 3)
!405 = !{!406, !407}
!406 = !DILocalVariable(name: "__path", arg: 1, scope: !364, file: !365, line: 453, type: !13)
!407 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !364, file: !365, line: 453, type: !368)
!408 = !DILocation(line: 0, scope: !364)
!409 = !DILocation(line: 455, column: 10, scope: !364)
!410 = !DILocation(line: 455, column: 3, scope: !364)
!411 = distinct !DISubprogram(name: "lstat", scope: !365, file: !365, line: 460, type: !366, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!412 = !{!413, !414}
!413 = !DILocalVariable(name: "__path", arg: 1, scope: !411, file: !365, line: 460, type: !13)
!414 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !411, file: !365, line: 460, type: !368)
!415 = !DILocation(line: 0, scope: !411)
!416 = !DILocation(line: 462, column: 10, scope: !411)
!417 = !DILocation(line: 462, column: 3, scope: !411)
!418 = distinct !DISubprogram(name: "fstat", scope: !365, file: !365, line: 467, type: !419, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!8, !8, !368}
!421 = !{!422, !423}
!422 = !DILocalVariable(name: "__fd", arg: 1, scope: !418, file: !365, line: 467, type: !8)
!423 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !418, file: !365, line: 467, type: !368)
!424 = !DILocation(line: 0, scope: !418)
!425 = !DILocation(line: 469, column: 10, scope: !418)
!426 = !DILocation(line: 469, column: 3, scope: !418)
!427 = distinct !DISubprogram(name: "fstatat", scope: !365, file: !365, line: 474, type: !428, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!8, !8, !13, !368, !8}
!430 = !{!431, !432, !433, !434}
!431 = !DILocalVariable(name: "__fd", arg: 1, scope: !427, file: !365, line: 474, type: !8)
!432 = !DILocalVariable(name: "__filename", arg: 2, scope: !427, file: !365, line: 474, type: !13)
!433 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !427, file: !365, line: 474, type: !368)
!434 = !DILocalVariable(name: "__flag", arg: 4, scope: !427, file: !365, line: 474, type: !8)
!435 = !DILocation(line: 0, scope: !427)
!436 = !DILocation(line: 477, column: 10, scope: !427)
!437 = !DILocation(line: 477, column: 3, scope: !427)
!438 = distinct !DISubprogram(name: "mknod", scope: !365, file: !365, line: 483, type: !439, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!8, !13, !379, !373}
!441 = !{!442, !443, !444}
!442 = !DILocalVariable(name: "__path", arg: 1, scope: !438, file: !365, line: 483, type: !13)
!443 = !DILocalVariable(name: "__mode", arg: 2, scope: !438, file: !365, line: 483, type: !379)
!444 = !DILocalVariable(name: "__dev", arg: 3, scope: !438, file: !365, line: 483, type: !373)
!445 = !DILocation(line: 0, scope: !438)
!446 = !DILocation(line: 485, column: 10, scope: !438)
!447 = !DILocation(line: 485, column: 3, scope: !438)
!448 = distinct !DISubprogram(name: "mknodat", scope: !365, file: !365, line: 491, type: !449, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{!8, !8, !13, !379, !373}
!451 = !{!452, !453, !454, !455}
!452 = !DILocalVariable(name: "__fd", arg: 1, scope: !448, file: !365, line: 491, type: !8)
!453 = !DILocalVariable(name: "__path", arg: 2, scope: !448, file: !365, line: 491, type: !13)
!454 = !DILocalVariable(name: "__mode", arg: 3, scope: !448, file: !365, line: 491, type: !379)
!455 = !DILocalVariable(name: "__dev", arg: 4, scope: !448, file: !365, line: 491, type: !373)
!456 = !DILocation(line: 0, scope: !448)
!457 = !DILocation(line: 494, column: 10, scope: !448)
!458 = !DILocation(line: 494, column: 3, scope: !448)
!459 = distinct !DISubprogram(name: "stat64", scope: !365, file: !365, line: 502, type: !460, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!460 = !DISubroutineType(types: !461)
!461 = !{!8, !13, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !370, line: 119, size: 1152, elements: !464)
!464 = !{!465, !466, !468, !469, !470, !471, !472, !473, !474, !475, !476, !478, !479, !480, !481}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !463, file: !370, line: 121, baseType: !373, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !463, file: !370, line: 123, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !115, line: 149, baseType: !26)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !463, file: !370, line: 124, baseType: !377, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !463, file: !370, line: 125, baseType: !379, size: 32, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !463, file: !370, line: 132, baseType: !381, size: 32, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !463, file: !370, line: 133, baseType: !383, size: 32, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !463, file: !370, line: 135, baseType: !8, size: 32, offset: 288)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !463, file: !370, line: 136, baseType: !373, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !463, file: !370, line: 137, baseType: !114, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !463, file: !370, line: 143, baseType: !388, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !463, file: !370, line: 144, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !115, line: 180, baseType: !116)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !463, file: !370, line: 152, baseType: !392, size: 128, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !463, file: !370, line: 153, baseType: !392, size: 128, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !463, file: !370, line: 154, baseType: !392, size: 128, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !463, file: !370, line: 164, baseType: !402, size: 192, offset: 960)
!482 = !{!483, !484}
!483 = !DILocalVariable(name: "__path", arg: 1, scope: !459, file: !365, line: 502, type: !13)
!484 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !459, file: !365, line: 502, type: !462)
!485 = !DILocation(line: 0, scope: !459)
!486 = !DILocation(line: 504, column: 10, scope: !459)
!487 = !DILocation(line: 504, column: 3, scope: !459)
!488 = distinct !DISubprogram(name: "lstat64", scope: !365, file: !365, line: 509, type: !460, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !489)
!489 = !{!490, !491}
!490 = !DILocalVariable(name: "__path", arg: 1, scope: !488, file: !365, line: 509, type: !13)
!491 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !488, file: !365, line: 509, type: !462)
!492 = !DILocation(line: 0, scope: !488)
!493 = !DILocation(line: 511, column: 10, scope: !488)
!494 = !DILocation(line: 511, column: 3, scope: !488)
!495 = distinct !DISubprogram(name: "fstat64", scope: !365, file: !365, line: 516, type: !496, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!8, !8, !462}
!498 = !{!499, !500}
!499 = !DILocalVariable(name: "__fd", arg: 1, scope: !495, file: !365, line: 516, type: !8)
!500 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !495, file: !365, line: 516, type: !462)
!501 = !DILocation(line: 0, scope: !495)
!502 = !DILocation(line: 518, column: 10, scope: !495)
!503 = !DILocation(line: 518, column: 3, scope: !495)
!504 = distinct !DISubprogram(name: "fstatat64", scope: !365, file: !365, line: 523, type: !505, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{!8, !8, !13, !462, !8}
!507 = !{!508, !509, !510, !511}
!508 = !DILocalVariable(name: "__fd", arg: 1, scope: !504, file: !365, line: 523, type: !8)
!509 = !DILocalVariable(name: "__filename", arg: 2, scope: !504, file: !365, line: 523, type: !13)
!510 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !504, file: !365, line: 523, type: !462)
!511 = !DILocalVariable(name: "__flag", arg: 4, scope: !504, file: !365, line: 523, type: !8)
!512 = !DILocation(line: 0, scope: !504)
!513 = !DILocation(line: 526, column: 10, scope: !504)
!514 = !DILocation(line: 526, column: 3, scope: !504)
!515 = !DILocation(line: 133, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !38, file: !3, line: 133, column: 7)
!517 = !DILocation(line: 133, column: 17, scope: !516)
!518 = !DILocation(line: 133, column: 7, scope: !38)
!519 = !DILocation(line: 136, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 136, column: 7)
!521 = distinct !DILexicalBlock(scope: !516, file: !3, line: 134, column: 5)
!522 = !DILocation(line: 137, column: 11, scope: !523)
!523 = distinct !DILexicalBlock(scope: !521, file: !3, line: 137, column: 11)
!524 = !DILocation(line: 137, column: 11, scope: !521)
!525 = !DILocation(line: 138, column: 18, scope: !523)
!526 = !DILocation(line: 138, column: 8, scope: !523)
!527 = !DILocation(line: 140, column: 18, scope: !523)
!528 = !DILocation(line: 143, column: 10, scope: !38)
!529 = !DILocation(line: 143, column: 3, scope: !38)
