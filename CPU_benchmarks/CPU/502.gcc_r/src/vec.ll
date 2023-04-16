; ModuleID = 'vec.bc'
source_filename = "vec.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.VEC_void_p_heap = type { %struct.VEC_void_p_base }
%struct.VEC_void_p_base = type { i32, i32, [1 x i8*] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.vec_prefix = type { i32, i32, [1 x i8*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stack_vecs = internal global %struct.VEC_void_p_heap* null, align 8, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"vec.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !43 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !56, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !59
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !60
  ret i32 %call, !dbg !61
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !62 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !65
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !66
  ret i32 %call, !dbg !67
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !68 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !129, metadata !DIExpression()), !dbg !130
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !131
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !131
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !131
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !131
  %cmp = icmp uge i8* %0, %1, !dbg !131
  %conv1 = zext i1 %cmp to i64, !dbg !131
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !131
  %tobool = icmp eq i64 %expval, 0, !dbg !131
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !131

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !131
  br label %cond.end, !dbg !131

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !131
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !131
  %2 = load i8, i8* %0, align 1, !dbg !131
  %conv3 = zext i8 %2 to i32, !dbg !131
  br label %cond.end, !dbg !131

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !131
  ret i32 %cond, !dbg !132
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !133 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !135, metadata !DIExpression()), !dbg !136
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !137
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !137
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !137
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !137
  %cmp = icmp uge i8* %0, %1, !dbg !137
  %conv1 = zext i1 %cmp to i64, !dbg !137
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !137
  %tobool = icmp eq i64 %expval, 0, !dbg !137
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !137

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !137
  br label %cond.end, !dbg !137

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !137
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !137
  %2 = load i8, i8* %0, align 1, !dbg !137
  %conv3 = zext i8 %2 to i32, !dbg !137
  br label %cond.end, !dbg !137

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !137
  ret i32 %cond, !dbg !138
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !139 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !140
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !140
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !140
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !140
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !140
  %cmp = icmp uge i8* %1, %2, !dbg !140
  %conv1 = zext i1 %cmp to i64, !dbg !140
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !140
  %tobool = icmp eq i64 %expval, 0, !dbg !140
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !140

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !140
  br label %cond.end, !dbg !140

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !140
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !140
  %3 = load i8, i8* %1, align 1, !dbg !140
  %conv3 = zext i8 %3 to i32, !dbg !140
  br label %cond.end, !dbg !140

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !140
  ret i32 %cond, !dbg !141
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !142 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !148
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !149
  ret i32 %call, !dbg !150
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !151 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !156, metadata !DIExpression()), !dbg !157
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !158
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !158
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !158
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !158
  %cmp = icmp uge i8* %0, %1, !dbg !158
  %conv1 = zext i1 %cmp to i64, !dbg !158
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !158
  %tobool = icmp eq i64 %expval, 0, !dbg !158
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !158

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !158
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !158
  br label %cond.end, !dbg !158

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !158
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !158
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !158
  store i8 %conv2, i8* %0, align 1, !dbg !158
  %conv6 = and i32 %__c, 255, !dbg !158
  br label %cond.end, !dbg !158

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !158
  ret i32 %cond, !dbg !159
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !160 {
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !167 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !171
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !171
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !171
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !171
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !171
  %cmp = icmp uge i8* %1, %2, !dbg !171
  %conv1 = zext i1 %cmp to i64, !dbg !171
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !171
  %tobool = icmp eq i64 %expval, 0, !dbg !171
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !171

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !171
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !171
  br label %cond.end, !dbg !171

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !171
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !171
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !171
  store i8 %conv4, i8* %1, align 1, !dbg !171
  %conv6 = and i32 %__c, 255, !dbg !171
  br label %cond.end, !dbg !171

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !171
  ret i32 %cond, !dbg !172
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !179, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i64* %__n, metadata !180, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !181, metadata !DIExpression()), !dbg !182
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !183
  ret i64 %call, !dbg !184
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !185 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !187, metadata !DIExpression()), !dbg !188
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !189
  %0 = load i32, i32* %_flags, align 8, !dbg !189
  %and = lshr i32 %0, 4, !dbg !189
  %and.lobit = and i32 %and, 1, !dbg !189
  ret i32 %and.lobit, !dbg !190
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !191 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !193, metadata !DIExpression()), !dbg !194
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !195
  %0 = load i32, i32* %_flags, align 8, !dbg !195
  %and = lshr i32 %0, 5, !dbg !195
  %and.lobit = and i32 %and, 1, !dbg !195
  ret i32 %and.lobit, !dbg !196
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !197 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !200, metadata !DIExpression()), !dbg !201
  %__c.off = add i32 %__c, 128, !dbg !202
  %0 = icmp ult i32 %__c.off, 384, !dbg !202
  br i1 %0, label %cond.true, label %cond.end, !dbg !202

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !203
  %1 = load i32*, i32** %call, align 8, !dbg !204
  %idxprom = sext i32 %__c to i64, !dbg !205
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !205
  %2 = load i32, i32* %arrayidx, align 4, !dbg !205
  br label %cond.end, !dbg !206

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !206
  ret i32 %cond, !dbg !207
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !208 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !210, metadata !DIExpression()), !dbg !211
  %__c.off = add i32 %__c, 128, !dbg !212
  %0 = icmp ult i32 %__c.off, 384, !dbg !212
  br i1 %0, label %cond.true, label %cond.end, !dbg !212

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !213
  %1 = load i32*, i32** %call, align 8, !dbg !214
  %idxprom = sext i32 %__c to i64, !dbg !215
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !215
  %2 = load i32, i32* %arrayidx, align 4, !dbg !215
  br label %cond.end, !dbg !216

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !216
  ret i32 %cond, !dbg !217
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !218 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !223, metadata !DIExpression()), !dbg !224
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !225
  %conv = trunc i64 %call to i32, !dbg !226
  ret i32 %conv, !dbg !227
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !228 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !232, metadata !DIExpression()), !dbg !233
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !234
  ret i64 %call, !dbg !235
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !236 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !241, metadata !DIExpression()), !dbg !242
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !243
  ret i64 %call, !dbg !244
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !245 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !256, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8* %__base, metadata !257, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !258, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__size, metadata !259, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !260, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !262, metadata !DIExpression()), !dbg !266
  br label %while.cond, !dbg !267

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !268
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !266
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !262, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !261, metadata !DIExpression()), !dbg !266
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !269
  br i1 %cmp, label %while.body, label %cleanup, !dbg !267

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !270
  %div = lshr i64 %add, 1, !dbg !272
  call void @llvm.dbg.value(metadata i64 %div, metadata !263, metadata !DIExpression()), !dbg !266
  %mul = mul i64 %div, %__size, !dbg !273
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !274
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !264, metadata !DIExpression()), !dbg !266
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !275
  call void @llvm.dbg.value(metadata i32 %call, metadata !265, metadata !DIExpression()), !dbg !266
  %cmp1 = icmp slt i32 %call, 0, !dbg !276
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !278

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !279
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !281

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !282
  call void @llvm.dbg.value(metadata i64 %add4, metadata !261, metadata !DIExpression()), !dbg !266
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !266
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !266
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !262, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !261, metadata !DIExpression()), !dbg !266
  br label %while.cond, !dbg !267, !llvm.loop !283

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !266
  ret i8* %retval.0, !dbg !285
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !286 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !292, metadata !DIExpression()), !dbg !293
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !294
  ret double %call, !dbg !295
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !296 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !305, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !306, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %base, metadata !307, metadata !DIExpression()), !dbg !308
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !309
  ret i64 %call, !dbg !310
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !311 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !317, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !318, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i32 %base, metadata !319, metadata !DIExpression()), !dbg !320
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !321
  ret i64 %call, !dbg !322
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !323 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !334, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !335, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 %base, metadata !336, metadata !DIExpression()), !dbg !337
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !338
  ret i64 %call, !dbg !339
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !340 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !344, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !345, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 %base, metadata !346, metadata !DIExpression()), !dbg !347
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !348
  ret i64 %call, !dbg !349
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !350 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !392, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !393, metadata !DIExpression()), !dbg !394
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !395
  ret i32 %call, !dbg !396
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !397 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !399, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !400, metadata !DIExpression()), !dbg !401
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !402
  ret i32 %call, !dbg !403
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !404 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !408, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !409, metadata !DIExpression()), !dbg !410
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !411
  ret i32 %call, !dbg !412
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !413 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !417, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !418, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !419, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !420, metadata !DIExpression()), !dbg !421
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !422
  ret i32 %call, !dbg !423
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !424 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !428, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !429, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !430, metadata !DIExpression()), !dbg !431
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !430, metadata !DIExpression(DW_OP_deref)), !dbg !431
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !432
  ret i32 %call, !dbg !433
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !434 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !438, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %__path, metadata !439, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !440, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !441, metadata !DIExpression()), !dbg !442
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !441, metadata !DIExpression(DW_OP_deref)), !dbg !442
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !443
  ret i32 %call, !dbg !444
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !445 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !469, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !470, metadata !DIExpression()), !dbg !471
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !472
  ret i32 %call, !dbg !473
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !474 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !476, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !477, metadata !DIExpression()), !dbg !478
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !479
  ret i32 %call, !dbg !480
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !481 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !485, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !486, metadata !DIExpression()), !dbg !487
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !488
  ret i32 %call, !dbg !489
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !490 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !494, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !495, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !496, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !497, metadata !DIExpression()), !dbg !498
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !499
  ret i32 %call, !dbg !500
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_gc_p_reserve(i8* %vec, i32 %reserve) local_unnamed_addr #3 !dbg !501 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !505, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !506, metadata !DIExpression()), !dbg !507
  %call = tail call fastcc i8* @vec_gc_o_reserve_1(i8* %vec, i32 %reserve, i64 8, i64 8, i8 zeroext 0) #6, !dbg !508
  ret i8* %call, !dbg !509
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @vec_gc_o_reserve_1(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size, i8 zeroext %exact) unnamed_addr #3 !dbg !510 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !514, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !515, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i64 %vec_offset, metadata !516, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i64 %elt_size, metadata !517, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i8 %exact, metadata !518, metadata !DIExpression()), !dbg !521
  %0 = bitcast i8* %vec to %struct.vec_prefix*, !dbg !522
  call void @llvm.dbg.value(metadata %struct.vec_prefix* %0, metadata !519, metadata !DIExpression()), !dbg !521
  %call = tail call fastcc i32 @calculate_allocation(%struct.vec_prefix* %0, i32 %reserve, i8 zeroext %exact) #6, !dbg !523
  call void @llvm.dbg.value(metadata i32 %call, metadata !520, metadata !DIExpression()), !dbg !521
  %tobool = icmp eq i32 %call, 0, !dbg !524
  br i1 %tobool, label %if.then, label %if.end3, !dbg !526

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq i8* %vec, null, !dbg !527
  br i1 %tobool1, label %cleanup, label %if.then2, !dbg !530

if.then2:                                         ; preds = %if.then
  tail call void @ggc_free(i8* nonnull %vec) #5, !dbg !531
  br label %cleanup, !dbg !531

if.end3:                                          ; preds = %entry
  %conv = zext i32 %call to i64, !dbg !532
  %mul = mul i64 %conv, %elt_size, !dbg !533
  %add = add i64 %mul, %vec_offset, !dbg !534
  %call4 = tail call i8* @ggc_realloc_stat(i8* %vec, i64 %add) #5, !dbg !535
  call void @llvm.dbg.value(metadata i8* %call4, metadata !514, metadata !DIExpression()), !dbg !521
  %alloc5 = getelementptr inbounds i8, i8* %call4, i64 4, !dbg !536
  %1 = bitcast i8* %alloc5 to i32*, !dbg !536
  store i32 %call, i32* %1, align 4, !dbg !537
  %tobool6 = icmp eq i8* %vec, null, !dbg !538
  br i1 %tobool6, label %if.then7, label %cleanup, !dbg !540

if.then7:                                         ; preds = %if.end3
  %num = bitcast i8* %call4 to i32*, !dbg !541
  store i32 0, i32* %num, align 8, !dbg !542
  br label %cleanup, !dbg !543

cleanup:                                          ; preds = %if.end3, %if.then, %if.then7, %if.then2
  %retval.0 = phi i8* [ null, %if.then2 ], [ null, %if.then ], [ %call4, %if.then7 ], [ %call4, %if.end3 ], !dbg !521
  ret i8* %retval.0, !dbg !544
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_gc_p_reserve_exact(i8* %vec, i32 %reserve) local_unnamed_addr #3 !dbg !545 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !547, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !548, metadata !DIExpression()), !dbg !549
  %call = tail call fastcc i8* @vec_gc_o_reserve_1(i8* %vec, i32 %reserve, i64 8, i64 8, i8 zeroext 1) #6, !dbg !550
  ret i8* %call, !dbg !551
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_gc_o_reserve(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size) local_unnamed_addr #3 !dbg !552 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !556, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !557, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %vec_offset, metadata !558, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %elt_size, metadata !559, metadata !DIExpression()), !dbg !560
  %call = tail call fastcc i8* @vec_gc_o_reserve_1(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size, i8 zeroext 0) #6, !dbg !561
  ret i8* %call, !dbg !562
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_gc_o_reserve_exact(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size) local_unnamed_addr #3 !dbg !563 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !565, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !566, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i64 %vec_offset, metadata !567, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i64 %elt_size, metadata !568, metadata !DIExpression()), !dbg !569
  %call = tail call fastcc i8* @vec_gc_o_reserve_1(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size, i8 zeroext 1) #6, !dbg !570
  ret i8* %call, !dbg !571
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_heap_p_reserve(i8* %vec, i32 %reserve) local_unnamed_addr #3 !dbg !572 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !574, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !575, metadata !DIExpression()), !dbg !576
  %call = tail call fastcc i8* @vec_heap_o_reserve_1(i8* %vec, i32 %reserve, i64 8, i64 8, i8 zeroext 0) #6, !dbg !577
  ret i8* %call, !dbg !578
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @vec_heap_o_reserve_1(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size, i8 zeroext %exact) unnamed_addr #3 !dbg !579 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !581, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !582, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %vec_offset, metadata !583, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %elt_size, metadata !584, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i8 %exact, metadata !585, metadata !DIExpression()), !dbg !588
  %0 = bitcast i8* %vec to %struct.vec_prefix*, !dbg !589
  call void @llvm.dbg.value(metadata %struct.vec_prefix* %0, metadata !586, metadata !DIExpression()), !dbg !588
  %call = tail call fastcc i32 @calculate_allocation(%struct.vec_prefix* %0, i32 %reserve, i8 zeroext %exact) #6, !dbg !590
  call void @llvm.dbg.value(metadata i32 %call, metadata !587, metadata !DIExpression()), !dbg !588
  %tobool = icmp eq i32 %call, 0, !dbg !591
  br i1 %tobool, label %if.then, label %if.end3, !dbg !593

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq i8* %vec, null, !dbg !594
  br i1 %tobool1, label %cleanup, label %if.then2, !dbg !597

if.then2:                                         ; preds = %if.then
  tail call void @free(i8* nonnull %vec) #5, !dbg !598
  br label %cleanup, !dbg !598

if.end3:                                          ; preds = %entry
  %conv = zext i32 %call to i64, !dbg !599
  %mul = mul i64 %conv, %elt_size, !dbg !600
  %add = add i64 %mul, %vec_offset, !dbg !601
  %call4 = tail call i8* @xrealloc(i8* %vec, i64 %add) #5, !dbg !602
  call void @llvm.dbg.value(metadata i8* %call4, metadata !581, metadata !DIExpression()), !dbg !588
  %alloc5 = getelementptr inbounds i8, i8* %call4, i64 4, !dbg !603
  %1 = bitcast i8* %alloc5 to i32*, !dbg !603
  store i32 %call, i32* %1, align 4, !dbg !604
  %tobool6 = icmp eq i8* %vec, null, !dbg !605
  br i1 %tobool6, label %if.then7, label %cleanup, !dbg !607

if.then7:                                         ; preds = %if.end3
  %num = bitcast i8* %call4 to i32*, !dbg !608
  store i32 0, i32* %num, align 8, !dbg !609
  br label %cleanup, !dbg !610

cleanup:                                          ; preds = %if.end3, %if.then, %if.then7, %if.then2
  %retval.0 = phi i8* [ null, %if.then2 ], [ null, %if.then ], [ %call4, %if.then7 ], [ %call4, %if.end3 ], !dbg !588
  ret i8* %retval.0, !dbg !611
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_heap_p_reserve_exact(i8* %vec, i32 %reserve) local_unnamed_addr #3 !dbg !612 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !614, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !615, metadata !DIExpression()), !dbg !616
  %call = tail call fastcc i8* @vec_heap_o_reserve_1(i8* %vec, i32 %reserve, i64 8, i64 8, i8 zeroext 1) #6, !dbg !617
  ret i8* %call, !dbg !618
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_heap_o_reserve(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size) local_unnamed_addr #3 !dbg !619 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !621, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !622, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 %vec_offset, metadata !623, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 %elt_size, metadata !624, metadata !DIExpression()), !dbg !625
  %call = tail call fastcc i8* @vec_heap_o_reserve_1(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size, i8 zeroext 0) #6, !dbg !626
  ret i8* %call, !dbg !627
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_heap_o_reserve_exact(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size) local_unnamed_addr #3 !dbg !628 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !630, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !631, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64 %vec_offset, metadata !632, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64 %elt_size, metadata !633, metadata !DIExpression()), !dbg !634
  %call = tail call fastcc i8* @vec_heap_o_reserve_1(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size, i8 zeroext 1) #6, !dbg !635
  ret i8* %call, !dbg !636
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_stack_p_reserve_exact_1(i32 %alloc, i8* %space) local_unnamed_addr #3 !dbg !637 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc, metadata !641, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i8* %space, metadata !642, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i8* %space, metadata !643, metadata !DIExpression()), !dbg !644
  %call = tail call fastcc i8** @VEC_void_p_heap_safe_push(%struct.VEC_void_p_heap** nonnull @stack_vecs, i8* %space) #6, !dbg !645
  %num = bitcast i8* %space to i32*, !dbg !646
  store i32 0, i32* %num, align 8, !dbg !647
  %alloc1 = getelementptr inbounds i8, i8* %space, i64 4, !dbg !648
  %0 = bitcast i8* %alloc1 to i32*, !dbg !648
  store i32 %alloc, i32* %0, align 4, !dbg !649
  ret i8* %space, !dbg !650
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8** @VEC_void_p_heap_safe_push(%struct.VEC_void_p_heap** %vec_, i8* %obj_) unnamed_addr #0 !dbg !651 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_heap** @stack_vecs, metadata !657, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i8* %obj_, metadata !658, metadata !DIExpression()), !dbg !659
  %call = tail call fastcc i32 @VEC_void_p_heap_reserve(%struct.VEC_void_p_heap** nonnull @stack_vecs, i32 1) #6, !dbg !660
  %0 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** @stack_vecs, align 8, !dbg !660
  %tobool = icmp eq %struct.VEC_void_p_heap* %0, null, !dbg !660
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !660

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %0, i64 0, i32 0, !dbg !660
  br label %cond.end, !dbg !660

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_void_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !660
  %call1 = tail call fastcc i8** @VEC_void_p_base_quick_push(%struct.VEC_void_p_base* %cond, i8* %obj_) #6, !dbg !660
  ret i8** %call1, !dbg !660
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_stack_p_reserve(i8* %vec, i32 %reserve) local_unnamed_addr #3 !dbg !661 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !663, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !664, metadata !DIExpression()), !dbg !665
  %call = tail call fastcc i8* @vec_stack_o_reserve_1(i8* %vec, i32 %reserve, i64 8, i64 8, i8 zeroext 0) #6, !dbg !666
  ret i8* %call, !dbg !667
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @vec_stack_o_reserve_1(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size, i8 zeroext %exact) unnamed_addr #3 !dbg !668 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !670, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !671, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i64 %vec_offset, metadata !672, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i64 %elt_size, metadata !673, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i8 %exact, metadata !674, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i8 0, metadata !675, metadata !DIExpression()), !dbg !678
  %0 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** @stack_vecs, align 8, !dbg !679
  %base = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %0, i64 0, i32 0, !dbg !679
  %call = tail call fastcc i32 @VEC_void_p_base_length(%struct.VEC_void_p_base* %base) #6, !dbg !679
  call void @llvm.dbg.value(metadata i32 %call, metadata !676, metadata !DIExpression()), !dbg !678
  br label %for.cond, !dbg !681

for.cond:                                         ; preds = %for.inc, %entry
  %ix.0 = phi i32 [ %call, %entry ], [ %sub, %for.inc ], !dbg !682
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !676, metadata !DIExpression()), !dbg !678
  %cmp = icmp eq i32 %ix.0, 0, !dbg !683
  br i1 %cmp, label %for.end.loopexit, label %for.body, !dbg !685

for.body:                                         ; preds = %for.cond
  %1 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** @stack_vecs, align 8, !dbg !686
  %base3 = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %1, i64 0, i32 0, !dbg !686
  %sub = add i32 %ix.0, -1, !dbg !686
  %call7 = tail call fastcc i8* @VEC_void_p_base_index(%struct.VEC_void_p_base* %base3, i32 %sub) #6, !dbg !686
  %cmp8 = icmp eq i8* %call7, %vec, !dbg !689
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !690

if.then:                                          ; preds = %for.body
  %sub.lcssa = phi i32 [ %sub, %for.body ], !dbg !686
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !676, metadata !DIExpression()), !dbg !678
  %2 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** @stack_vecs, align 8, !dbg !691
  %base11 = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %2, i64 0, i32 0, !dbg !691
  %call16 = tail call fastcc i8* @VEC_void_p_base_unordered_remove(%struct.VEC_void_p_base* %base11, i32 %sub.lcssa) #6, !dbg !691
  call void @llvm.dbg.value(metadata i8 1, metadata !675, metadata !DIExpression()), !dbg !678
  br label %for.end, !dbg !693

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %sub, metadata !676, metadata !DIExpression()), !dbg !678
  br label %for.cond, !dbg !694, !llvm.loop !695

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !697

for.end:                                          ; preds = %for.end.loopexit, %if.then
  %found.0 = phi i1 [ true, %if.then ], [ false, %for.end.loopexit ]
  br i1 %found.0, label %if.end20, label %if.then18, !dbg !697

if.then18:                                        ; preds = %for.end
  %call19 = tail call fastcc i8* @vec_heap_o_reserve_1(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size, i8 zeroext %exact) #6, !dbg !698
  br label %cleanup, !dbg !701

if.end20:                                         ; preds = %for.end
  %num = bitcast i8* %vec to i32*, !dbg !702
  %3 = load i32, i32* %num, align 8, !dbg !702
  %add = add i32 %3, %reserve, !dbg !703
  call void @llvm.dbg.value(metadata i32 %add, metadata !671, metadata !DIExpression()), !dbg !678
  %call21 = tail call fastcc i8* @vec_heap_o_reserve_1(i8* null, i32 %add, i64 %vec_offset, i64 %elt_size, i8 zeroext %exact) #6, !dbg !704
  call void @llvm.dbg.value(metadata i8* %call21, metadata !677, metadata !DIExpression()), !dbg !678
  %tobool22 = icmp ne i8* %call21, null, !dbg !705
  %tobool23 = icmp ne i8* %vec, null, !dbg !707
  %or.cond = and i1 %tobool22, %tobool23, !dbg !708
  br i1 %or.cond, label %if.then24, label %cleanup, !dbg !708

if.then24:                                        ; preds = %if.end20
  %4 = load i32, i32* %num, align 8, !dbg !709
  %num26 = bitcast i8* %call21 to i32*, !dbg !711
  store i32 %4, i32* %num26, align 8, !dbg !712
  %vec27 = getelementptr inbounds i8, i8* %call21, i64 8, !dbg !713
  %vec28 = getelementptr inbounds i8, i8* %vec, i64 8, !dbg !714
  %5 = load i32, i32* %num, align 8, !dbg !715
  %conv = zext i32 %5 to i64, !dbg !716
  %mul = mul i64 %conv, %elt_size, !dbg !717
  %call31 = tail call i8* @memcpy(i8* nonnull %vec27, i8* nonnull %vec28, i64 %mul) #5, !dbg !718
  br label %cleanup, !dbg !719

cleanup:                                          ; preds = %if.end20, %if.then24, %if.then18
  %retval.0 = phi i8* [ %call19, %if.then18 ], [ %call21, %if.then24 ], [ %call21, %if.end20 ], !dbg !678
  ret i8* %retval.0, !dbg !720
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_stack_p_reserve_exact(i8* %vec, i32 %reserve) local_unnamed_addr #3 !dbg !721 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !723, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !724, metadata !DIExpression()), !dbg !725
  %call = tail call fastcc i8* @vec_stack_o_reserve_1(i8* %vec, i32 %reserve, i64 8, i64 8, i8 zeroext 1) #6, !dbg !726
  ret i8* %call, !dbg !727
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_stack_o_reserve(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size) local_unnamed_addr #3 !dbg !728 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !730, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !731, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i64 %vec_offset, metadata !732, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i64 %elt_size, metadata !733, metadata !DIExpression()), !dbg !734
  %call = tail call fastcc i8* @vec_stack_o_reserve_1(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size, i8 zeroext 0) #6, !dbg !735
  ret i8* %call, !dbg !736
}

; Function Attrs: nounwind uwtable
define dso_local i8* @vec_stack_o_reserve_exact(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size) local_unnamed_addr #3 !dbg !737 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !739, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !740, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i64 %vec_offset, metadata !741, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i64 %elt_size, metadata !742, metadata !DIExpression()), !dbg !743
  %call = tail call fastcc i8* @vec_stack_o_reserve_1(i8* %vec, i32 %reserve, i64 %vec_offset, i64 %elt_size, i8 zeroext 1) #6, !dbg !744
  ret i8* %call, !dbg !745
}

; Function Attrs: nounwind uwtable
define dso_local void @vec_stack_free(i8* %vec) local_unnamed_addr #3 !dbg !746 {
entry:
  call void @llvm.dbg.value(metadata i8* %vec, metadata !750, metadata !DIExpression()), !dbg !752
  %0 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** @stack_vecs, align 8, !dbg !753
  %base = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %0, i64 0, i32 0, !dbg !753
  %call = tail call fastcc i32 @VEC_void_p_base_length(%struct.VEC_void_p_base* %base) #6, !dbg !753
  call void @llvm.dbg.value(metadata i32 %call, metadata !751, metadata !DIExpression()), !dbg !752
  br label %for.cond, !dbg !755

for.cond:                                         ; preds = %for.inc, %entry
  %ix.0 = phi i32 [ %call, %entry ], [ %sub, %for.inc ], !dbg !756
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !751, metadata !DIExpression()), !dbg !752
  %cmp = icmp eq i32 %ix.0, 0, !dbg !757
  br i1 %cmp, label %for.end, label %for.body, !dbg !759

for.body:                                         ; preds = %for.cond
  %1 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** @stack_vecs, align 8, !dbg !760
  %base3 = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %1, i64 0, i32 0, !dbg !760
  %sub = add i32 %ix.0, -1, !dbg !760
  %call7 = tail call fastcc i8* @VEC_void_p_base_index(%struct.VEC_void_p_base* %base3, i32 %sub) #6, !dbg !760
  %cmp8 = icmp eq i8* %call7, %vec, !dbg !763
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !764

if.then:                                          ; preds = %for.body
  %sub.lcssa = phi i32 [ %sub, %for.body ], !dbg !760
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !751, metadata !DIExpression()), !dbg !752
  %2 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** @stack_vecs, align 8, !dbg !765
  %base11 = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %2, i64 0, i32 0, !dbg !765
  %call16 = tail call fastcc i8* @VEC_void_p_base_unordered_remove(%struct.VEC_void_p_base* %base11, i32 %sub.lcssa) #6, !dbg !765
  br label %cleanup.cont, !dbg !767

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %sub, metadata !751, metadata !DIExpression()), !dbg !752
  br label %for.cond, !dbg !768, !llvm.loop !769

for.end:                                          ; preds = %for.cond
  tail call void @free(i8* %vec) #5, !dbg !771
  br label %cleanup.cont, !dbg !772

cleanup.cont:                                     ; preds = %if.then, %for.end
  ret void, !dbg !772
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_void_p_base_length(%struct.VEC_void_p_base* %vec_) unnamed_addr #0 !dbg !773 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_base* %vec_, metadata !779, metadata !DIExpression()), !dbg !780
  %tobool = icmp eq %struct.VEC_void_p_base* %vec_, null, !dbg !781
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !781

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 0, !dbg !781
  %0 = load i32, i32* %num, align 8, !dbg !781
  br label %cond.end, !dbg !781

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !781
  ret i32 %cond, !dbg !781
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @VEC_void_p_base_index(%struct.VEC_void_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !782 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_base* %vec_, metadata !786, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !787, metadata !DIExpression()), !dbg !788
  br label %land.end, !dbg !789

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !789
  %arrayidx = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !789
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !789
  ret i8* %0, !dbg !789
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @VEC_void_p_base_unordered_remove(%struct.VEC_void_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !790 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_base* %vec_, metadata !795, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !796, metadata !DIExpression()), !dbg !799
  %idxprom = zext i32 %ix_ to i64, !dbg !800
  %arrayidx = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !800
  call void @llvm.dbg.value(metadata i8** %arrayidx, metadata !797, metadata !DIExpression()), !dbg !799
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !800
  call void @llvm.dbg.value(metadata i8* %0, metadata !798, metadata !DIExpression()), !dbg !799
  %num2 = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 0, !dbg !800
  %1 = load i32, i32* %num2, align 8, !dbg !800
  %dec = add i32 %1, -1, !dbg !800
  store i32 %dec, i32* %num2, align 8, !dbg !800
  %idxprom3 = zext i32 %dec to i64, !dbg !800
  %arrayidx4 = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 2, i64 %idxprom3, !dbg !800
  %2 = bitcast i8** %arrayidx4 to i64*, !dbg !800
  %3 = load i64, i64* %2, align 8, !dbg !800
  %4 = bitcast i8** %arrayidx to i64*, !dbg !800
  store i64 %3, i64* %4, align 8, !dbg !800
  ret i8* %0, !dbg !800
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_vec_loc_statistics() local_unnamed_addr #3 !dbg !801 {
entry:
  ret void, !dbg !804
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @calculate_allocation(%struct.vec_prefix* %pfx, i32 %reserve, i8 zeroext %exact) unnamed_addr #0 !dbg !805 {
entry:
  call void @llvm.dbg.value(metadata %struct.vec_prefix* %pfx, metadata !811, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i32 %reserve, metadata !812, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i8 %exact, metadata !813, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i32 0, metadata !814, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i32 0, metadata !815, metadata !DIExpression()), !dbg !816
  %cmp = icmp sgt i32 %reserve, -1, !dbg !817
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !817

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !817
  br label %cond.end, !dbg !817

cond.end:                                         ; preds = %entry, %cond.true
  %tobool = icmp eq %struct.vec_prefix* %pfx, null, !dbg !818
  br i1 %tobool, label %if.else, label %if.then, !dbg !820

if.then:                                          ; preds = %cond.end
  %alloc1 = getelementptr inbounds %struct.vec_prefix, %struct.vec_prefix* %pfx, i64 0, i32 1, !dbg !821
  %0 = load i32, i32* %alloc1, align 4, !dbg !821
  call void @llvm.dbg.value(metadata i32 %0, metadata !814, metadata !DIExpression()), !dbg !816
  %num2 = getelementptr inbounds %struct.vec_prefix, %struct.vec_prefix* %pfx, i64 0, i32 0, !dbg !823
  %1 = load i32, i32* %num2, align 8, !dbg !823
  call void @llvm.dbg.value(metadata i32 %1, metadata !815, metadata !DIExpression()), !dbg !816
  br label %if.end5, !dbg !824

if.else:                                          ; preds = %cond.end
  %tobool3 = icmp eq i32 %reserve, 0, !dbg !825
  br i1 %tobool3, label %cleanup, label %if.end5, !dbg !827

if.end5:                                          ; preds = %if.else, %if.then
  %alloc.0 = phi i32 [ %0, %if.then ], [ 0, %if.else ], !dbg !816
  %num.0 = phi i32 [ %1, %if.then ], [ 0, %if.else ], !dbg !816
  call void @llvm.dbg.value(metadata i32 %num.0, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i32 %alloc.0, metadata !814, metadata !DIExpression()), !dbg !816
  %sub = sub i32 %alloc.0, %num.0, !dbg !828
  %cmp6 = icmp ult i32 %sub, %reserve, !dbg !828
  br i1 %cmp6, label %cond.end9, label %cond.true7, !dbg !828

cond.true7:                                       ; preds = %if.end5
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !828
  br label %cond.end9, !dbg !828

cond.end9:                                        ; preds = %if.end5, %cond.true7
  %tobool11 = icmp eq i8 %exact, 0, !dbg !829
  br i1 %tobool11, label %if.else13, label %if.then12, !dbg !831

if.then12:                                        ; preds = %cond.end9
  %add = add i32 %num.0, %reserve, !dbg !832
  call void @llvm.dbg.value(metadata i32 %add, metadata !814, metadata !DIExpression()), !dbg !816
  br label %cleanup, !dbg !833

if.else13:                                        ; preds = %cond.end9
  %tobool14 = icmp eq i32 %alloc.0, 0, !dbg !834
  br i1 %tobool14, label %if.end22, label %if.else16, !dbg !837

if.else16:                                        ; preds = %if.else13
  %cmp17 = icmp ult i32 %alloc.0, 16, !dbg !838
  br i1 %cmp17, label %if.then18, label %if.else19, !dbg !840

if.then18:                                        ; preds = %if.else16
  %mul = shl i32 %alloc.0, 1, !dbg !841
  call void @llvm.dbg.value(metadata i32 %mul, metadata !814, metadata !DIExpression()), !dbg !816
  br label %if.end22, !dbg !842

if.else19:                                        ; preds = %if.else16
  %mul20 = mul i32 %alloc.0, 3, !dbg !843
  %div = lshr i32 %mul20, 1, !dbg !844
  call void @llvm.dbg.value(metadata i32 %div, metadata !814, metadata !DIExpression()), !dbg !816
  br label %if.end22

if.end22:                                         ; preds = %if.else13, %if.then18, %if.else19
  %alloc.2 = phi i32 [ 4, %if.else13 ], [ %mul, %if.then18 ], [ %div, %if.else19 ], !dbg !845
  call void @llvm.dbg.value(metadata i32 %alloc.2, metadata !814, metadata !DIExpression()), !dbg !816
  %add23 = add i32 %num.0, %reserve, !dbg !846
  %cmp24 = icmp ult i32 %alloc.2, %add23, !dbg !848
  %spec.select = select i1 %cmp24, i32 %add23, i32 %alloc.2, !dbg !849
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !814, metadata !DIExpression()), !dbg !816
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12, %if.end22
  %retval.0 = phi i32 [ 0, %if.else ], [ %add, %if.then12 ], [ %spec.select, %if.end22 ], !dbg !816
  ret i32 %retval.0, !dbg !850
}

declare dso_local void @ggc_free(i8*) local_unnamed_addr #1

declare dso_local i8* @ggc_realloc_stat(i8*, i64) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_void_p_heap_reserve(%struct.VEC_void_p_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !851 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_heap** @stack_vecs, metadata !855, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i32 1, metadata !856, metadata !DIExpression()), !dbg !858
  %0 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** @stack_vecs, align 8, !dbg !859
  %tobool = icmp eq %struct.VEC_void_p_heap* %0, null, !dbg !859
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !859

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %0, i64 0, i32 0, !dbg !859
  br label %cond.end, !dbg !859

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_void_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !859
  %call = tail call fastcc i32 @VEC_void_p_base_space(%struct.VEC_void_p_base* %cond, i32 1) #6, !dbg !859
  %tobool1 = icmp eq i32 %call, 0, !dbg !859
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !859
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !857, metadata !DIExpression()), !dbg !858
  br i1 %tobool1, label %if.then, label %if.end, !dbg !859

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_void_p_heap** @stack_vecs to i8**), align 8, !dbg !860
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %1, i32 1) #6, !dbg !860
  store i8* %call3, i8** bitcast (%struct.VEC_void_p_heap** @stack_vecs to i8**), align 8, !dbg !860
  br label %if.end, !dbg !860

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !859
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8** @VEC_void_p_base_quick_push(%struct.VEC_void_p_base* %vec_, i8* %obj_) unnamed_addr #0 !dbg !862 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_base* %vec_, metadata !866, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata i8* %obj_, metadata !867, metadata !DIExpression()), !dbg !869
  %num1 = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 0, !dbg !870
  %0 = load i32, i32* %num1, align 8, !dbg !870
  %inc = add i32 %0, 1, !dbg !870
  store i32 %inc, i32* %num1, align 8, !dbg !870
  %idxprom = zext i32 %0 to i64, !dbg !870
  %arrayidx = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !870
  call void @llvm.dbg.value(metadata i8** %arrayidx, metadata !868, metadata !DIExpression()), !dbg !869
  store i8* %obj_, i8** %arrayidx, align 8, !dbg !870
  ret i8** %arrayidx, !dbg !870
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_void_p_base_space(%struct.VEC_void_p_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !871 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_base* %vec_, metadata !875, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i32 1, metadata !876, metadata !DIExpression()), !dbg !877
  %tobool = icmp eq %struct.VEC_void_p_base* %vec_, null, !dbg !878
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !878

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 1, !dbg !878
  %0 = load i32, i32* %alloc, align 4, !dbg !878
  %num = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 0, !dbg !878
  %1 = load i32, i32* %num, align 8, !dbg !878
  %cmp1 = icmp ne i32 %0, %1, !dbg !878
  %phitmp = zext i1 %cmp1 to i32, !dbg !878
  br label %cond.end, !dbg !878

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !878

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !878
}

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
!llvm.module.flags = !{!39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "stack_vecs", scope: !2, file: !3, line: 389, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !38, nameTableKind: None)
!3 = !DIFile(filename: "vec.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13, !15, !19, !25}
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
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vec_prefix", file: !3, line: 36, size: 128, elements: !17)
!17 = !{!18, !20, !21}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !16, file: !3, line: 38, baseType: !19, size: 32)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !16, file: !3, line: 39, baseType: !19, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !16, file: !3, line: 40, baseType: !22, size: 64, offset: 64)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 1)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_heap", file: !3, line: 387, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_heap", file: !3, line: 387, size: 128, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !27, file: !3, line: 387, baseType: !30, size: 128)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_base", file: !3, line: 386, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_base", file: !3, line: 386, size: 128, elements: !32)
!32 = !{!33, !34, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !31, file: !3, line: 386, baseType: !19, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !31, file: !3, line: 386, baseType: !19, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !31, file: !3, line: 386, baseType: !36, size: 64, offset: 64)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !23)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "void_p", file: !3, line: 385, baseType: !12)
!38 = !{!0}
!39 = !{i32 2, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!43 = distinct !DISubprogram(name: "vprintf", scope: !44, file: !44, line: 39, type: !45, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !55)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!45 = !DISubroutineType(types: !46)
!46 = !{!8, !47, !48}
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !49, file: !3, baseType: !19, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !49, file: !3, baseType: !19, size: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !49, file: !3, baseType: !12, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !49, file: !3, baseType: !12, size: 64, offset: 128)
!55 = !{!56, !57}
!56 = !DILocalVariable(name: "__fmt", arg: 1, scope: !43, file: !44, line: 39, type: !47)
!57 = !DILocalVariable(name: "__arg", arg: 2, scope: !43, file: !44, line: 39, type: !48)
!58 = !DILocation(line: 0, scope: !43)
!59 = !DILocation(line: 41, column: 20, scope: !43)
!60 = !DILocation(line: 41, column: 10, scope: !43)
!61 = !DILocation(line: 41, column: 3, scope: !43)
!62 = distinct !DISubprogram(name: "getchar", scope: !44, file: !44, line: 47, type: !63, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!63 = !DISubroutineType(types: !64)
!64 = !{!8}
!65 = !DILocation(line: 49, column: 16, scope: !62)
!66 = !DILocation(line: 49, column: 10, scope: !62)
!67 = !DILocation(line: 49, column: 3, scope: !62)
!68 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !44, file: !44, line: 56, type: !69, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !128)
!69 = !DISubroutineType(types: !70)
!70 = !{!8, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !92, !94, !95, !96, !100, !102, !104, !106, !109, !111, !114, !117, !118, !119, !123, !124}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 51, baseType: !8, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 54, baseType: !10, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 55, baseType: !10, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 56, baseType: !10, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 57, baseType: !10, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 58, baseType: !10, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 59, baseType: !10, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 60, baseType: !10, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 61, baseType: !10, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 64, baseType: !10, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 65, baseType: !10, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 66, baseType: !10, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 36, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 70, baseType: !93, size: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 72, baseType: !8, size: 32, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 73, baseType: !8, size: 32, offset: 928)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !98, line: 152, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!99 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 77, baseType: !101, size: 16, offset: 1024)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!103 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !23)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 43, baseType: null)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !98, line: 153, baseType: !99)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !74, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !75, line: 37, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !74, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !75, line: 38, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !74, file: !75, line: 93, baseType: !93, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !74, file: !75, line: 94, baseType: !12, size: 64, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 95, baseType: !120, size: 64, offset: 1472)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 46, baseType: !122)
!121 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!122 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 96, baseType: !8, size: 32, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 20)
!128 = !{!129}
!129 = !DILocalVariable(name: "__fp", arg: 1, scope: !68, file: !44, line: 56, type: !71)
!130 = !DILocation(line: 0, scope: !68)
!131 = !DILocation(line: 58, column: 10, scope: !68)
!132 = !DILocation(line: 58, column: 3, scope: !68)
!133 = distinct !DISubprogram(name: "getc_unlocked", scope: !44, file: !44, line: 66, type: !69, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!134 = !{!135}
!135 = !DILocalVariable(name: "__fp", arg: 1, scope: !133, file: !44, line: 66, type: !71)
!136 = !DILocation(line: 0, scope: !133)
!137 = !DILocation(line: 68, column: 10, scope: !133)
!138 = !DILocation(line: 68, column: 3, scope: !133)
!139 = distinct !DISubprogram(name: "getchar_unlocked", scope: !44, file: !44, line: 73, type: !63, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!140 = !DILocation(line: 75, column: 10, scope: !139)
!141 = !DILocation(line: 75, column: 3, scope: !139)
!142 = distinct !DISubprogram(name: "putchar", scope: !44, file: !44, line: 82, type: !143, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{!8, !8}
!145 = !{!146}
!146 = !DILocalVariable(name: "__c", arg: 1, scope: !142, file: !44, line: 82, type: !8)
!147 = !DILocation(line: 0, scope: !142)
!148 = !DILocation(line: 84, column: 21, scope: !142)
!149 = !DILocation(line: 84, column: 10, scope: !142)
!150 = !DILocation(line: 84, column: 3, scope: !142)
!151 = distinct !DISubprogram(name: "fputc_unlocked", scope: !44, file: !44, line: 91, type: !152, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!8, !8, !71}
!154 = !{!155, !156}
!155 = !DILocalVariable(name: "__c", arg: 1, scope: !151, file: !44, line: 91, type: !8)
!156 = !DILocalVariable(name: "__stream", arg: 2, scope: !151, file: !44, line: 91, type: !71)
!157 = !DILocation(line: 0, scope: !151)
!158 = !DILocation(line: 93, column: 10, scope: !151)
!159 = !DILocation(line: 93, column: 3, scope: !151)
!160 = distinct !DISubprogram(name: "putc_unlocked", scope: !44, file: !44, line: 101, type: !152, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !161)
!161 = !{!162, !163}
!162 = !DILocalVariable(name: "__c", arg: 1, scope: !160, file: !44, line: 101, type: !8)
!163 = !DILocalVariable(name: "__stream", arg: 2, scope: !160, file: !44, line: 101, type: !71)
!164 = !DILocation(line: 0, scope: !160)
!165 = !DILocation(line: 103, column: 10, scope: !160)
!166 = !DILocation(line: 103, column: 3, scope: !160)
!167 = distinct !DISubprogram(name: "putchar_unlocked", scope: !44, file: !44, line: 108, type: !143, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!168 = !{!169}
!169 = !DILocalVariable(name: "__c", arg: 1, scope: !167, file: !44, line: 108, type: !8)
!170 = !DILocation(line: 0, scope: !167)
!171 = !DILocation(line: 110, column: 10, scope: !167)
!172 = !DILocation(line: 110, column: 3, scope: !167)
!173 = distinct !DISubprogram(name: "getline", scope: !44, file: !44, line: 118, type: !174, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !9, !177, !71}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !98, line: 193, baseType: !99)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!178 = !{!179, !180, !181}
!179 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !173, file: !44, line: 118, type: !9)
!180 = !DILocalVariable(name: "__n", arg: 2, scope: !173, file: !44, line: 118, type: !177)
!181 = !DILocalVariable(name: "__stream", arg: 3, scope: !173, file: !44, line: 118, type: !71)
!182 = !DILocation(line: 0, scope: !173)
!183 = !DILocation(line: 120, column: 10, scope: !173)
!184 = !DILocation(line: 120, column: 3, scope: !173)
!185 = distinct !DISubprogram(name: "feof_unlocked", scope: !44, file: !44, line: 128, type: !69, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!186 = !{!187}
!187 = !DILocalVariable(name: "__stream", arg: 1, scope: !185, file: !44, line: 128, type: !71)
!188 = !DILocation(line: 0, scope: !185)
!189 = !DILocation(line: 130, column: 10, scope: !185)
!190 = !DILocation(line: 130, column: 3, scope: !185)
!191 = distinct !DISubprogram(name: "ferror_unlocked", scope: !44, file: !44, line: 135, type: !69, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!192 = !{!193}
!193 = !DILocalVariable(name: "__stream", arg: 1, scope: !191, file: !44, line: 135, type: !71)
!194 = !DILocation(line: 0, scope: !191)
!195 = !DILocation(line: 137, column: 10, scope: !191)
!196 = !DILocation(line: 137, column: 3, scope: !191)
!197 = distinct !DISubprogram(name: "tolower", scope: !198, file: !198, line: 207, type: !143, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!198 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!199 = !{!200}
!200 = !DILocalVariable(name: "__c", arg: 1, scope: !197, file: !198, line: 207, type: !8)
!201 = !DILocation(line: 0, scope: !197)
!202 = !DILocation(line: 209, column: 22, scope: !197)
!203 = !DILocation(line: 209, column: 39, scope: !197)
!204 = !DILocation(line: 209, column: 38, scope: !197)
!205 = !DILocation(line: 209, column: 37, scope: !197)
!206 = !DILocation(line: 209, column: 10, scope: !197)
!207 = !DILocation(line: 209, column: 3, scope: !197)
!208 = distinct !DISubprogram(name: "toupper", scope: !198, file: !198, line: 213, type: !143, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!209 = !{!210}
!210 = !DILocalVariable(name: "__c", arg: 1, scope: !208, file: !198, line: 213, type: !8)
!211 = !DILocation(line: 0, scope: !208)
!212 = !DILocation(line: 215, column: 22, scope: !208)
!213 = !DILocation(line: 215, column: 39, scope: !208)
!214 = !DILocation(line: 215, column: 38, scope: !208)
!215 = !DILocation(line: 215, column: 37, scope: !208)
!216 = !DILocation(line: 215, column: 10, scope: !208)
!217 = !DILocation(line: 215, column: 3, scope: !208)
!218 = distinct !DISubprogram(name: "atoi", scope: !219, file: !219, line: 361, type: !220, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!219 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!220 = !DISubroutineType(types: !221)
!221 = !{!8, !13}
!222 = !{!223}
!223 = !DILocalVariable(name: "__nptr", arg: 1, scope: !218, file: !219, line: 361, type: !13)
!224 = !DILocation(line: 0, scope: !218)
!225 = !DILocation(line: 363, column: 16, scope: !218)
!226 = !DILocation(line: 363, column: 10, scope: !218)
!227 = !DILocation(line: 363, column: 3, scope: !218)
!228 = distinct !DISubprogram(name: "atol", scope: !219, file: !219, line: 366, type: !229, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!99, !13}
!231 = !{!232}
!232 = !DILocalVariable(name: "__nptr", arg: 1, scope: !228, file: !219, line: 366, type: !13)
!233 = !DILocation(line: 0, scope: !228)
!234 = !DILocation(line: 368, column: 10, scope: !228)
!235 = !DILocation(line: 368, column: 3, scope: !228)
!236 = distinct !DISubprogram(name: "atoll", scope: !219, file: !219, line: 373, type: !237, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !13}
!239 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!240 = !{!241}
!241 = !DILocalVariable(name: "__nptr", arg: 1, scope: !236, file: !219, line: 373, type: !13)
!242 = !DILocation(line: 0, scope: !236)
!243 = !DILocation(line: 375, column: 10, scope: !236)
!244 = !DILocation(line: 375, column: 3, scope: !236)
!245 = distinct !DISubprogram(name: "bsearch", scope: !246, file: !246, line: 20, type: !247, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!246 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!247 = !DISubroutineType(types: !248)
!248 = !{!12, !249, !249, !120, !120, !251}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !219, line: 808, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!8, !249, !249}
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!256 = !DILocalVariable(name: "__key", arg: 1, scope: !245, file: !246, line: 20, type: !249)
!257 = !DILocalVariable(name: "__base", arg: 2, scope: !245, file: !246, line: 20, type: !249)
!258 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !245, file: !246, line: 20, type: !120)
!259 = !DILocalVariable(name: "__size", arg: 4, scope: !245, file: !246, line: 20, type: !120)
!260 = !DILocalVariable(name: "__compar", arg: 5, scope: !245, file: !246, line: 21, type: !251)
!261 = !DILocalVariable(name: "__l", scope: !245, file: !246, line: 23, type: !120)
!262 = !DILocalVariable(name: "__u", scope: !245, file: !246, line: 23, type: !120)
!263 = !DILocalVariable(name: "__idx", scope: !245, file: !246, line: 23, type: !120)
!264 = !DILocalVariable(name: "__p", scope: !245, file: !246, line: 24, type: !249)
!265 = !DILocalVariable(name: "__comparison", scope: !245, file: !246, line: 25, type: !8)
!266 = !DILocation(line: 0, scope: !245)
!267 = !DILocation(line: 29, column: 3, scope: !245)
!268 = !DILocation(line: 27, column: 7, scope: !245)
!269 = !DILocation(line: 29, column: 14, scope: !245)
!270 = !DILocation(line: 31, column: 20, scope: !271)
!271 = distinct !DILexicalBlock(scope: !245, file: !246, line: 30, column: 5)
!272 = !DILocation(line: 31, column: 27, scope: !271)
!273 = !DILocation(line: 32, column: 56, scope: !271)
!274 = !DILocation(line: 32, column: 47, scope: !271)
!275 = !DILocation(line: 33, column: 22, scope: !271)
!276 = !DILocation(line: 34, column: 24, scope: !277)
!277 = distinct !DILexicalBlock(scope: !271, file: !246, line: 34, column: 11)
!278 = !DILocation(line: 34, column: 11, scope: !271)
!279 = !DILocation(line: 36, column: 29, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !246, line: 36, column: 16)
!281 = !DILocation(line: 36, column: 16, scope: !277)
!282 = !DILocation(line: 37, column: 14, scope: !280)
!283 = distinct !{!283, !267, !284}
!284 = !DILocation(line: 40, column: 5, scope: !245)
!285 = !DILocation(line: 43, column: 1, scope: !245)
!286 = distinct !DISubprogram(name: "atof", scope: !287, file: !287, line: 25, type: !288, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !13}
!290 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!291 = !{!292}
!292 = !DILocalVariable(name: "__nptr", arg: 1, scope: !286, file: !287, line: 25, type: !13)
!293 = !DILocation(line: 0, scope: !286)
!294 = !DILocation(line: 27, column: 10, scope: !286)
!295 = !DILocation(line: 27, column: 3, scope: !286)
!296 = distinct !DISubprogram(name: "strtoimax", scope: !297, file: !297, line: 324, type: !298, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!297 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!298 = !DISubroutineType(types: !299)
!299 = !{!300, !47, !303, !8}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !301, line: 101, baseType: !302)
!301 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !98, line: 72, baseType: !99)
!303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!304 = !{!305, !306, !307}
!305 = !DILocalVariable(name: "nptr", arg: 1, scope: !296, file: !297, line: 324, type: !47)
!306 = !DILocalVariable(name: "endptr", arg: 2, scope: !296, file: !297, line: 324, type: !303)
!307 = !DILocalVariable(name: "base", arg: 3, scope: !296, file: !297, line: 324, type: !8)
!308 = !DILocation(line: 0, scope: !296)
!309 = !DILocation(line: 327, column: 10, scope: !296)
!310 = !DILocation(line: 327, column: 3, scope: !296)
!311 = distinct !DISubprogram(name: "strtoumax", scope: !297, file: !297, line: 336, type: !312, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !316)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !47, !303, !8}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !301, line: 102, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !98, line: 73, baseType: !122)
!316 = !{!317, !318, !319}
!317 = !DILocalVariable(name: "nptr", arg: 1, scope: !311, file: !297, line: 336, type: !47)
!318 = !DILocalVariable(name: "endptr", arg: 2, scope: !311, file: !297, line: 336, type: !303)
!319 = !DILocalVariable(name: "base", arg: 3, scope: !311, file: !297, line: 336, type: !8)
!320 = !DILocation(line: 0, scope: !311)
!321 = !DILocation(line: 339, column: 10, scope: !311)
!322 = !DILocation(line: 339, column: 3, scope: !311)
!323 = distinct !DISubprogram(name: "wcstoimax", scope: !297, file: !297, line: 348, type: !324, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!324 = !DISubroutineType(types: !325)
!325 = !{!300, !326, !330, !8}
!326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !297, line: 34, baseType: !8)
!330 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!333 = !{!334, !335, !336}
!334 = !DILocalVariable(name: "nptr", arg: 1, scope: !323, file: !297, line: 348, type: !326)
!335 = !DILocalVariable(name: "endptr", arg: 2, scope: !323, file: !297, line: 348, type: !330)
!336 = !DILocalVariable(name: "base", arg: 3, scope: !323, file: !297, line: 348, type: !8)
!337 = !DILocation(line: 0, scope: !323)
!338 = !DILocation(line: 351, column: 10, scope: !323)
!339 = !DILocation(line: 351, column: 3, scope: !323)
!340 = distinct !DISubprogram(name: "wcstoumax", scope: !297, file: !297, line: 362, type: !341, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !343)
!341 = !DISubroutineType(types: !342)
!342 = !{!314, !326, !330, !8}
!343 = !{!344, !345, !346}
!344 = !DILocalVariable(name: "nptr", arg: 1, scope: !340, file: !297, line: 362, type: !326)
!345 = !DILocalVariable(name: "endptr", arg: 2, scope: !340, file: !297, line: 362, type: !330)
!346 = !DILocalVariable(name: "base", arg: 3, scope: !340, file: !297, line: 362, type: !8)
!347 = !DILocation(line: 0, scope: !340)
!348 = !DILocation(line: 365, column: 10, scope: !340)
!349 = !DILocation(line: 365, column: 3, scope: !340)
!350 = distinct !DISubprogram(name: "stat", scope: !351, file: !351, line: 453, type: !352, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!351 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!352 = !DISubroutineType(types: !353)
!353 = !{!8, !13, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !356, line: 46, size: 1152, elements: !357)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!357 = !{!358, !360, !362, !364, !366, !368, !370, !371, !372, !373, !375, !377, !385, !386, !387}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !355, file: !356, line: 48, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !98, line: 145, baseType: !122)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !355, file: !356, line: 53, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !98, line: 148, baseType: !122)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !355, file: !356, line: 61, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !98, line: 151, baseType: !122)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !355, file: !356, line: 62, baseType: !365, size: 32, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !98, line: 150, baseType: !19)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !355, file: !356, line: 64, baseType: !367, size: 32, offset: 224)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !98, line: 146, baseType: !19)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !355, file: !356, line: 65, baseType: !369, size: 32, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !98, line: 147, baseType: !19)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !355, file: !356, line: 67, baseType: !8, size: 32, offset: 288)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !355, file: !356, line: 69, baseType: !359, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !355, file: !356, line: 74, baseType: !97, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !355, file: !356, line: 78, baseType: !374, size: 64, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !98, line: 174, baseType: !99)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !355, file: !356, line: 80, baseType: !376, size: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !98, line: 179, baseType: !99)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !355, file: !356, line: 91, baseType: !378, size: 128, offset: 576)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !379, line: 10, size: 128, elements: !380)
!379 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !378, file: !379, line: 12, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !98, line: 160, baseType: !99)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !378, file: !379, line: 16, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !98, line: 196, baseType: !99)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !355, file: !356, line: 92, baseType: !378, size: 128, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !355, file: !356, line: 93, baseType: !378, size: 128, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !355, file: !356, line: 106, baseType: !388, size: 192, offset: 960)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 192, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 3)
!391 = !{!392, !393}
!392 = !DILocalVariable(name: "__path", arg: 1, scope: !350, file: !351, line: 453, type: !13)
!393 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !350, file: !351, line: 453, type: !354)
!394 = !DILocation(line: 0, scope: !350)
!395 = !DILocation(line: 455, column: 10, scope: !350)
!396 = !DILocation(line: 455, column: 3, scope: !350)
!397 = distinct !DISubprogram(name: "lstat", scope: !351, file: !351, line: 460, type: !352, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !398)
!398 = !{!399, !400}
!399 = !DILocalVariable(name: "__path", arg: 1, scope: !397, file: !351, line: 460, type: !13)
!400 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !397, file: !351, line: 460, type: !354)
!401 = !DILocation(line: 0, scope: !397)
!402 = !DILocation(line: 462, column: 10, scope: !397)
!403 = !DILocation(line: 462, column: 3, scope: !397)
!404 = distinct !DISubprogram(name: "fstat", scope: !351, file: !351, line: 467, type: !405, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!8, !8, !354}
!407 = !{!408, !409}
!408 = !DILocalVariable(name: "__fd", arg: 1, scope: !404, file: !351, line: 467, type: !8)
!409 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !404, file: !351, line: 467, type: !354)
!410 = !DILocation(line: 0, scope: !404)
!411 = !DILocation(line: 469, column: 10, scope: !404)
!412 = !DILocation(line: 469, column: 3, scope: !404)
!413 = distinct !DISubprogram(name: "fstatat", scope: !351, file: !351, line: 474, type: !414, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{!8, !8, !13, !354, !8}
!416 = !{!417, !418, !419, !420}
!417 = !DILocalVariable(name: "__fd", arg: 1, scope: !413, file: !351, line: 474, type: !8)
!418 = !DILocalVariable(name: "__filename", arg: 2, scope: !413, file: !351, line: 474, type: !13)
!419 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !413, file: !351, line: 474, type: !354)
!420 = !DILocalVariable(name: "__flag", arg: 4, scope: !413, file: !351, line: 474, type: !8)
!421 = !DILocation(line: 0, scope: !413)
!422 = !DILocation(line: 477, column: 10, scope: !413)
!423 = !DILocation(line: 477, column: 3, scope: !413)
!424 = distinct !DISubprogram(name: "mknod", scope: !351, file: !351, line: 483, type: !425, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!8, !13, !365, !359}
!427 = !{!428, !429, !430}
!428 = !DILocalVariable(name: "__path", arg: 1, scope: !424, file: !351, line: 483, type: !13)
!429 = !DILocalVariable(name: "__mode", arg: 2, scope: !424, file: !351, line: 483, type: !365)
!430 = !DILocalVariable(name: "__dev", arg: 3, scope: !424, file: !351, line: 483, type: !359)
!431 = !DILocation(line: 0, scope: !424)
!432 = !DILocation(line: 485, column: 10, scope: !424)
!433 = !DILocation(line: 485, column: 3, scope: !424)
!434 = distinct !DISubprogram(name: "mknodat", scope: !351, file: !351, line: 491, type: !435, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!8, !8, !13, !365, !359}
!437 = !{!438, !439, !440, !441}
!438 = !DILocalVariable(name: "__fd", arg: 1, scope: !434, file: !351, line: 491, type: !8)
!439 = !DILocalVariable(name: "__path", arg: 2, scope: !434, file: !351, line: 491, type: !13)
!440 = !DILocalVariable(name: "__mode", arg: 3, scope: !434, file: !351, line: 491, type: !365)
!441 = !DILocalVariable(name: "__dev", arg: 4, scope: !434, file: !351, line: 491, type: !359)
!442 = !DILocation(line: 0, scope: !434)
!443 = !DILocation(line: 494, column: 10, scope: !434)
!444 = !DILocation(line: 494, column: 3, scope: !434)
!445 = distinct !DISubprogram(name: "stat64", scope: !351, file: !351, line: 502, type: !446, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!446 = !DISubroutineType(types: !447)
!447 = !{!8, !13, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !356, line: 119, size: 1152, elements: !450)
!450 = !{!451, !452, !454, !455, !456, !457, !458, !459, !460, !461, !462, !464, !465, !466, !467}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !449, file: !356, line: 121, baseType: !359, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !449, file: !356, line: 123, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !98, line: 149, baseType: !122)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !449, file: !356, line: 124, baseType: !363, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !449, file: !356, line: 125, baseType: !365, size: 32, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !449, file: !356, line: 132, baseType: !367, size: 32, offset: 224)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !449, file: !356, line: 133, baseType: !369, size: 32, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !449, file: !356, line: 135, baseType: !8, size: 32, offset: 288)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !449, file: !356, line: 136, baseType: !359, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !449, file: !356, line: 137, baseType: !97, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !449, file: !356, line: 143, baseType: !374, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !449, file: !356, line: 144, baseType: !463, size: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !98, line: 180, baseType: !99)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !449, file: !356, line: 152, baseType: !378, size: 128, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !449, file: !356, line: 153, baseType: !378, size: 128, offset: 704)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !449, file: !356, line: 154, baseType: !378, size: 128, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !449, file: !356, line: 164, baseType: !388, size: 192, offset: 960)
!468 = !{!469, !470}
!469 = !DILocalVariable(name: "__path", arg: 1, scope: !445, file: !351, line: 502, type: !13)
!470 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !445, file: !351, line: 502, type: !448)
!471 = !DILocation(line: 0, scope: !445)
!472 = !DILocation(line: 504, column: 10, scope: !445)
!473 = !DILocation(line: 504, column: 3, scope: !445)
!474 = distinct !DISubprogram(name: "lstat64", scope: !351, file: !351, line: 509, type: !446, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!475 = !{!476, !477}
!476 = !DILocalVariable(name: "__path", arg: 1, scope: !474, file: !351, line: 509, type: !13)
!477 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !474, file: !351, line: 509, type: !448)
!478 = !DILocation(line: 0, scope: !474)
!479 = !DILocation(line: 511, column: 10, scope: !474)
!480 = !DILocation(line: 511, column: 3, scope: !474)
!481 = distinct !DISubprogram(name: "fstat64", scope: !351, file: !351, line: 516, type: !482, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!8, !8, !448}
!484 = !{!485, !486}
!485 = !DILocalVariable(name: "__fd", arg: 1, scope: !481, file: !351, line: 516, type: !8)
!486 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !481, file: !351, line: 516, type: !448)
!487 = !DILocation(line: 0, scope: !481)
!488 = !DILocation(line: 518, column: 10, scope: !481)
!489 = !DILocation(line: 518, column: 3, scope: !481)
!490 = distinct !DISubprogram(name: "fstatat64", scope: !351, file: !351, line: 523, type: !491, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!8, !8, !13, !448, !8}
!493 = !{!494, !495, !496, !497}
!494 = !DILocalVariable(name: "__fd", arg: 1, scope: !490, file: !351, line: 523, type: !8)
!495 = !DILocalVariable(name: "__filename", arg: 2, scope: !490, file: !351, line: 523, type: !13)
!496 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !490, file: !351, line: 523, type: !448)
!497 = !DILocalVariable(name: "__flag", arg: 4, scope: !490, file: !351, line: 523, type: !8)
!498 = !DILocation(line: 0, scope: !490)
!499 = !DILocation(line: 526, column: 10, scope: !490)
!500 = !DILocation(line: 526, column: 3, scope: !490)
!501 = distinct !DISubprogram(name: "vec_gc_p_reserve", scope: !3, file: !3, line: 253, type: !502, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!12, !12, !8}
!504 = !{!505, !506}
!505 = !DILocalVariable(name: "vec", arg: 1, scope: !501, file: !3, line: 253, type: !12)
!506 = !DILocalVariable(name: "reserve", arg: 2, scope: !501, file: !3, line: 253, type: !8)
!507 = !DILocation(line: 0, scope: !501)
!508 = !DILocation(line: 255, column: 10, scope: !501)
!509 = !DILocation(line: 255, column: 3, scope: !501)
!510 = distinct !DISubprogram(name: "vec_gc_o_reserve_1", scope: !3, file: !3, line: 226, type: !511, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!12, !12, !8, !120, !120, !7}
!513 = !{!514, !515, !516, !517, !518, !519, !520}
!514 = !DILocalVariable(name: "vec", arg: 1, scope: !510, file: !3, line: 226, type: !12)
!515 = !DILocalVariable(name: "reserve", arg: 2, scope: !510, file: !3, line: 226, type: !8)
!516 = !DILocalVariable(name: "vec_offset", arg: 3, scope: !510, file: !3, line: 226, type: !120)
!517 = !DILocalVariable(name: "elt_size", arg: 4, scope: !510, file: !3, line: 226, type: !120)
!518 = !DILocalVariable(name: "exact", arg: 5, scope: !510, file: !3, line: 227, type: !7)
!519 = !DILocalVariable(name: "pfx", scope: !510, file: !3, line: 229, type: !15)
!520 = !DILocalVariable(name: "alloc", scope: !510, file: !3, line: 230, type: !19)
!521 = !DILocation(line: 0, scope: !510)
!522 = !DILocation(line: 229, column: 28, scope: !510)
!523 = !DILocation(line: 230, column: 20, scope: !510)
!524 = !DILocation(line: 232, column: 8, scope: !525)
!525 = distinct !DILexicalBlock(scope: !510, file: !3, line: 232, column: 7)
!526 = !DILocation(line: 232, column: 7, scope: !510)
!527 = !DILocation(line: 234, column: 11, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 234, column: 11)
!529 = distinct !DILexicalBlock(scope: !525, file: !3, line: 233, column: 5)
!530 = !DILocation(line: 234, column: 11, scope: !529)
!531 = !DILocation(line: 235, column: 9, scope: !528)
!532 = !DILocation(line: 239, column: 45, scope: !510)
!533 = !DILocation(line: 239, column: 51, scope: !510)
!534 = !DILocation(line: 239, column: 43, scope: !510)
!535 = !DILocation(line: 239, column: 9, scope: !510)
!536 = !DILocation(line: 240, column: 31, scope: !510)
!537 = !DILocation(line: 240, column: 37, scope: !510)
!538 = !DILocation(line: 241, column: 8, scope: !539)
!539 = distinct !DILexicalBlock(scope: !510, file: !3, line: 241, column: 7)
!540 = !DILocation(line: 241, column: 7, scope: !510)
!541 = !DILocation(line: 242, column: 33, scope: !539)
!542 = !DILocation(line: 242, column: 37, scope: !539)
!543 = !DILocation(line: 242, column: 5, scope: !539)
!544 = !DILocation(line: 245, column: 1, scope: !510)
!545 = distinct !DISubprogram(name: "vec_gc_p_reserve_exact", scope: !3, file: !3, line: 267, type: !502, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !546)
!546 = !{!547, !548}
!547 = !DILocalVariable(name: "vec", arg: 1, scope: !545, file: !3, line: 267, type: !12)
!548 = !DILocalVariable(name: "reserve", arg: 2, scope: !545, file: !3, line: 267, type: !8)
!549 = !DILocation(line: 0, scope: !545)
!550 = !DILocation(line: 269, column: 10, scope: !545)
!551 = !DILocation(line: 269, column: 3, scope: !545)
!552 = distinct !DISubprogram(name: "vec_gc_o_reserve", scope: !3, file: !3, line: 280, type: !553, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!12, !12, !8, !120, !120}
!555 = !{!556, !557, !558, !559}
!556 = !DILocalVariable(name: "vec", arg: 1, scope: !552, file: !3, line: 280, type: !12)
!557 = !DILocalVariable(name: "reserve", arg: 2, scope: !552, file: !3, line: 280, type: !8)
!558 = !DILocalVariable(name: "vec_offset", arg: 3, scope: !552, file: !3, line: 280, type: !120)
!559 = !DILocalVariable(name: "elt_size", arg: 4, scope: !552, file: !3, line: 280, type: !120)
!560 = !DILocation(line: 0, scope: !552)
!561 = !DILocation(line: 283, column: 10, scope: !552)
!562 = !DILocation(line: 283, column: 3, scope: !552)
!563 = distinct !DISubprogram(name: "vec_gc_o_reserve_exact", scope: !3, file: !3, line: 292, type: !553, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!564 = !{!565, !566, !567, !568}
!565 = !DILocalVariable(name: "vec", arg: 1, scope: !563, file: !3, line: 292, type: !12)
!566 = !DILocalVariable(name: "reserve", arg: 2, scope: !563, file: !3, line: 292, type: !8)
!567 = !DILocalVariable(name: "vec_offset", arg: 3, scope: !563, file: !3, line: 292, type: !120)
!568 = !DILocalVariable(name: "elt_size", arg: 4, scope: !563, file: !3, line: 293, type: !120)
!569 = !DILocation(line: 0, scope: !563)
!570 = !DILocation(line: 295, column: 10, scope: !563)
!571 = !DILocation(line: 295, column: 3, scope: !563)
!572 = distinct !DISubprogram(name: "vec_heap_p_reserve", scope: !3, file: !3, line: 336, type: !502, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !573)
!573 = !{!574, !575}
!574 = !DILocalVariable(name: "vec", arg: 1, scope: !572, file: !3, line: 336, type: !12)
!575 = !DILocalVariable(name: "reserve", arg: 2, scope: !572, file: !3, line: 336, type: !8)
!576 = !DILocation(line: 0, scope: !572)
!577 = !DILocation(line: 338, column: 10, scope: !572)
!578 = !DILocation(line: 338, column: 3, scope: !572)
!579 = distinct !DISubprogram(name: "vec_heap_o_reserve_1", scope: !3, file: !3, line: 302, type: !511, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587}
!581 = !DILocalVariable(name: "vec", arg: 1, scope: !579, file: !3, line: 302, type: !12)
!582 = !DILocalVariable(name: "reserve", arg: 2, scope: !579, file: !3, line: 302, type: !8)
!583 = !DILocalVariable(name: "vec_offset", arg: 3, scope: !579, file: !3, line: 302, type: !120)
!584 = !DILocalVariable(name: "elt_size", arg: 4, scope: !579, file: !3, line: 303, type: !120)
!585 = !DILocalVariable(name: "exact", arg: 5, scope: !579, file: !3, line: 303, type: !7)
!586 = !DILocalVariable(name: "pfx", scope: !579, file: !3, line: 305, type: !15)
!587 = !DILocalVariable(name: "alloc", scope: !579, file: !3, line: 306, type: !19)
!588 = !DILocation(line: 0, scope: !579)
!589 = !DILocation(line: 305, column: 28, scope: !579)
!590 = !DILocation(line: 306, column: 20, scope: !579)
!591 = !DILocation(line: 308, column: 8, scope: !592)
!592 = distinct !DILexicalBlock(scope: !579, file: !3, line: 308, column: 7)
!593 = !DILocation(line: 308, column: 7, scope: !579)
!594 = !DILocation(line: 310, column: 11, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !3, line: 310, column: 11)
!596 = distinct !DILexicalBlock(scope: !592, file: !3, line: 309, column: 5)
!597 = !DILocation(line: 310, column: 11, scope: !596)
!598 = !DILocation(line: 311, column: 9, scope: !595)
!599 = !DILocation(line: 320, column: 37, scope: !579)
!600 = !DILocation(line: 320, column: 43, scope: !579)
!601 = !DILocation(line: 320, column: 35, scope: !579)
!602 = !DILocation(line: 320, column: 9, scope: !579)
!603 = !DILocation(line: 321, column: 31, scope: !579)
!604 = !DILocation(line: 321, column: 37, scope: !579)
!605 = !DILocation(line: 322, column: 8, scope: !606)
!606 = distinct !DILexicalBlock(scope: !579, file: !3, line: 322, column: 7)
!607 = !DILocation(line: 322, column: 7, scope: !579)
!608 = !DILocation(line: 323, column: 33, scope: !606)
!609 = !DILocation(line: 323, column: 37, scope: !606)
!610 = !DILocation(line: 323, column: 5, scope: !606)
!611 = !DILocation(line: 331, column: 1, scope: !579)
!612 = distinct !DISubprogram(name: "vec_heap_p_reserve_exact", scope: !3, file: !3, line: 347, type: !502, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!613 = !{!614, !615}
!614 = !DILocalVariable(name: "vec", arg: 1, scope: !612, file: !3, line: 347, type: !12)
!615 = !DILocalVariable(name: "reserve", arg: 2, scope: !612, file: !3, line: 347, type: !8)
!616 = !DILocation(line: 0, scope: !612)
!617 = !DILocation(line: 349, column: 10, scope: !612)
!618 = !DILocation(line: 349, column: 3, scope: !612)
!619 = distinct !DISubprogram(name: "vec_heap_o_reserve", scope: !3, file: !3, line: 358, type: !553, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !620)
!620 = !{!621, !622, !623, !624}
!621 = !DILocalVariable(name: "vec", arg: 1, scope: !619, file: !3, line: 358, type: !12)
!622 = !DILocalVariable(name: "reserve", arg: 2, scope: !619, file: !3, line: 358, type: !8)
!623 = !DILocalVariable(name: "vec_offset", arg: 3, scope: !619, file: !3, line: 358, type: !120)
!624 = !DILocalVariable(name: "elt_size", arg: 4, scope: !619, file: !3, line: 358, type: !120)
!625 = !DILocation(line: 0, scope: !619)
!626 = !DILocation(line: 361, column: 10, scope: !619)
!627 = !DILocation(line: 361, column: 3, scope: !619)
!628 = distinct !DISubprogram(name: "vec_heap_o_reserve_exact", scope: !3, file: !3, line: 368, type: !553, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !629)
!629 = !{!630, !631, !632, !633}
!630 = !DILocalVariable(name: "vec", arg: 1, scope: !628, file: !3, line: 368, type: !12)
!631 = !DILocalVariable(name: "reserve", arg: 2, scope: !628, file: !3, line: 368, type: !8)
!632 = !DILocalVariable(name: "vec_offset", arg: 3, scope: !628, file: !3, line: 368, type: !120)
!633 = !DILocalVariable(name: "elt_size", arg: 4, scope: !628, file: !3, line: 369, type: !120)
!634 = !DILocation(line: 0, scope: !628)
!635 = !DILocation(line: 371, column: 10, scope: !628)
!636 = !DILocation(line: 371, column: 3, scope: !628)
!637 = distinct !DISubprogram(name: "vec_stack_p_reserve_exact_1", scope: !3, file: !3, line: 396, type: !638, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{!12, !8, !12}
!640 = !{!641, !642, !643}
!641 = !DILocalVariable(name: "alloc", arg: 1, scope: !637, file: !3, line: 396, type: !8)
!642 = !DILocalVariable(name: "space", arg: 2, scope: !637, file: !3, line: 396, type: !12)
!643 = !DILocalVariable(name: "pfx", scope: !637, file: !3, line: 398, type: !15)
!644 = !DILocation(line: 0, scope: !637)
!645 = !DILocation(line: 400, column: 3, scope: !637)
!646 = !DILocation(line: 402, column: 8, scope: !637)
!647 = !DILocation(line: 402, column: 12, scope: !637)
!648 = !DILocation(line: 403, column: 8, scope: !637)
!649 = !DILocation(line: 403, column: 14, scope: !637)
!650 = !DILocation(line: 405, column: 3, scope: !637)
!651 = distinct !DISubprogram(name: "VEC_void_p_heap_safe_push", scope: !3, file: !3, line: 387, type: !652, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !656)
!652 = !DISubroutineType(types: !653)
!653 = !{!654, !655, !37}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!656 = !{!657, !658}
!657 = !DILocalVariable(name: "vec_", arg: 1, scope: !651, file: !3, line: 387, type: !655)
!658 = !DILocalVariable(name: "obj_", arg: 2, scope: !651, file: !3, line: 387, type: !37)
!659 = !DILocation(line: 0, scope: !651)
!660 = !DILocation(line: 387, column: 1, scope: !651)
!661 = distinct !DISubprogram(name: "vec_stack_p_reserve", scope: !3, file: !3, line: 455, type: !502, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !662)
!662 = !{!663, !664}
!663 = !DILocalVariable(name: "vec", arg: 1, scope: !661, file: !3, line: 455, type: !12)
!664 = !DILocalVariable(name: "reserve", arg: 2, scope: !661, file: !3, line: 455, type: !8)
!665 = !DILocation(line: 0, scope: !661)
!666 = !DILocation(line: 457, column: 10, scope: !661)
!667 = !DILocation(line: 457, column: 3, scope: !661)
!668 = distinct !DISubprogram(name: "vec_stack_o_reserve_1", scope: !3, file: !3, line: 413, type: !511, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677}
!670 = !DILocalVariable(name: "vec", arg: 1, scope: !668, file: !3, line: 413, type: !12)
!671 = !DILocalVariable(name: "reserve", arg: 2, scope: !668, file: !3, line: 413, type: !8)
!672 = !DILocalVariable(name: "vec_offset", arg: 3, scope: !668, file: !3, line: 413, type: !120)
!673 = !DILocalVariable(name: "elt_size", arg: 4, scope: !668, file: !3, line: 414, type: !120)
!674 = !DILocalVariable(name: "exact", arg: 5, scope: !668, file: !3, line: 414, type: !7)
!675 = !DILocalVariable(name: "found", scope: !668, file: !3, line: 416, type: !7)
!676 = !DILocalVariable(name: "ix", scope: !668, file: !3, line: 417, type: !19)
!677 = !DILocalVariable(name: "newvec", scope: !668, file: !3, line: 418, type: !12)
!678 = !DILocation(line: 0, scope: !668)
!679 = !DILocation(line: 421, column: 13, scope: !680)
!680 = distinct !DILexicalBlock(scope: !668, file: !3, line: 421, column: 3)
!681 = !DILocation(line: 421, column: 8, scope: !680)
!682 = !DILocation(line: 0, scope: !680)
!683 = !DILocation(line: 421, column: 49, scope: !684)
!684 = distinct !DILexicalBlock(scope: !680, file: !3, line: 421, column: 3)
!685 = !DILocation(line: 421, column: 3, scope: !680)
!686 = !DILocation(line: 423, column: 11, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 423, column: 11)
!688 = distinct !DILexicalBlock(scope: !684, file: !3, line: 422, column: 5)
!689 = !DILocation(line: 423, column: 50, scope: !687)
!690 = !DILocation(line: 423, column: 11, scope: !688)
!691 = !DILocation(line: 425, column: 4, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !3, line: 424, column: 2)
!693 = !DILocation(line: 427, column: 4, scope: !692)
!694 = !DILocation(line: 421, column: 3, scope: !684)
!695 = distinct !{!695, !685, !696}
!696 = !DILocation(line: 429, column: 5, scope: !680)
!697 = !DILocation(line: 431, column: 7, scope: !668)
!698 = !DILocation(line: 434, column: 14, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 432, column: 5)
!700 = distinct !DILexicalBlock(scope: !668, file: !3, line: 431, column: 7)
!701 = !DILocation(line: 434, column: 7, scope: !699)
!702 = !DILocation(line: 439, column: 43, scope: !668)
!703 = !DILocation(line: 439, column: 11, scope: !668)
!704 = !DILocation(line: 440, column: 12, scope: !668)
!705 = !DILocation(line: 442, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !668, file: !3, line: 442, column: 7)
!707 = !DILocation(line: 442, column: 17, scope: !706)
!708 = !DILocation(line: 442, column: 14, scope: !706)
!709 = !DILocation(line: 444, column: 74, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !3, line: 443, column: 5)
!711 = !DILocation(line: 444, column: 39, scope: !710)
!712 = !DILocation(line: 444, column: 43, scope: !710)
!713 = !DILocation(line: 445, column: 47, scope: !710)
!714 = !DILocation(line: 446, column: 37, scope: !710)
!715 = !DILocation(line: 447, column: 37, scope: !710)
!716 = !DILocation(line: 447, column: 8, scope: !710)
!717 = !DILocation(line: 447, column: 41, scope: !710)
!718 = !DILocation(line: 445, column: 7, scope: !710)
!719 = !DILocation(line: 448, column: 5, scope: !710)
!720 = !DILocation(line: 450, column: 1, scope: !668)
!721 = distinct !DISubprogram(name: "vec_stack_p_reserve_exact", scope: !3, file: !3, line: 466, type: !502, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !722)
!722 = !{!723, !724}
!723 = !DILocalVariable(name: "vec", arg: 1, scope: !721, file: !3, line: 466, type: !12)
!724 = !DILocalVariable(name: "reserve", arg: 2, scope: !721, file: !3, line: 466, type: !8)
!725 = !DILocation(line: 0, scope: !721)
!726 = !DILocation(line: 468, column: 10, scope: !721)
!727 = !DILocation(line: 468, column: 3, scope: !721)
!728 = distinct !DISubprogram(name: "vec_stack_o_reserve", scope: !3, file: !3, line: 477, type: !553, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !729)
!729 = !{!730, !731, !732, !733}
!730 = !DILocalVariable(name: "vec", arg: 1, scope: !728, file: !3, line: 477, type: !12)
!731 = !DILocalVariable(name: "reserve", arg: 2, scope: !728, file: !3, line: 477, type: !8)
!732 = !DILocalVariable(name: "vec_offset", arg: 3, scope: !728, file: !3, line: 477, type: !120)
!733 = !DILocalVariable(name: "elt_size", arg: 4, scope: !728, file: !3, line: 478, type: !120)
!734 = !DILocation(line: 0, scope: !728)
!735 = !DILocation(line: 480, column: 10, scope: !728)
!736 = !DILocation(line: 480, column: 3, scope: !728)
!737 = distinct !DISubprogram(name: "vec_stack_o_reserve_exact", scope: !3, file: !3, line: 487, type: !553, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !738)
!738 = !{!739, !740, !741, !742}
!739 = !DILocalVariable(name: "vec", arg: 1, scope: !737, file: !3, line: 487, type: !12)
!740 = !DILocalVariable(name: "reserve", arg: 2, scope: !737, file: !3, line: 487, type: !8)
!741 = !DILocalVariable(name: "vec_offset", arg: 3, scope: !737, file: !3, line: 487, type: !120)
!742 = !DILocalVariable(name: "elt_size", arg: 4, scope: !737, file: !3, line: 488, type: !120)
!743 = !DILocation(line: 0, scope: !737)
!744 = !DILocation(line: 490, column: 10, scope: !737)
!745 = !DILocation(line: 490, column: 3, scope: !737)
!746 = distinct !DISubprogram(name: "vec_stack_free", scope: !3, file: !3, line: 498, type: !747, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !12}
!749 = !{!750, !751}
!750 = !DILocalVariable(name: "vec", arg: 1, scope: !746, file: !3, line: 498, type: !12)
!751 = !DILocalVariable(name: "ix", scope: !746, file: !3, line: 500, type: !19)
!752 = !DILocation(line: 0, scope: !746)
!753 = !DILocation(line: 502, column: 13, scope: !754)
!754 = distinct !DILexicalBlock(scope: !746, file: !3, line: 502, column: 3)
!755 = !DILocation(line: 502, column: 8, scope: !754)
!756 = !DILocation(line: 0, scope: !754)
!757 = !DILocation(line: 502, column: 49, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !3, line: 502, column: 3)
!759 = !DILocation(line: 502, column: 3, scope: !754)
!760 = !DILocation(line: 504, column: 11, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 504, column: 11)
!762 = distinct !DILexicalBlock(scope: !758, file: !3, line: 503, column: 5)
!763 = !DILocation(line: 504, column: 50, scope: !761)
!764 = !DILocation(line: 504, column: 11, scope: !762)
!765 = !DILocation(line: 506, column: 4, scope: !766)
!766 = distinct !DILexicalBlock(scope: !761, file: !3, line: 505, column: 2)
!767 = !DILocation(line: 507, column: 4, scope: !766)
!768 = !DILocation(line: 502, column: 3, scope: !758)
!769 = distinct !{!769, !759, !770}
!770 = !DILocation(line: 509, column: 5, scope: !754)
!771 = !DILocation(line: 513, column: 3, scope: !746)
!772 = !DILocation(line: 514, column: 1, scope: !746)
!773 = distinct !DISubprogram(name: "VEC_void_p_base_length", scope: !3, file: !3, line: 386, type: !774, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!774 = !DISubroutineType(types: !775)
!775 = !{!19, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!778 = !{!779}
!779 = !DILocalVariable(name: "vec_", arg: 1, scope: !773, file: !3, line: 386, type: !776)
!780 = !DILocation(line: 0, scope: !773)
!781 = !DILocation(line: 386, column: 1, scope: !773)
!782 = distinct !DISubprogram(name: "VEC_void_p_base_index", scope: !3, file: !3, line: 386, type: !783, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !785)
!783 = !DISubroutineType(types: !784)
!784 = !{!37, !776, !19}
!785 = !{!786, !787}
!786 = !DILocalVariable(name: "vec_", arg: 1, scope: !782, file: !3, line: 386, type: !776)
!787 = !DILocalVariable(name: "ix_", arg: 2, scope: !782, file: !3, line: 386, type: !19)
!788 = !DILocation(line: 0, scope: !782)
!789 = !DILocation(line: 386, column: 1, scope: !782)
!790 = distinct !DISubprogram(name: "VEC_void_p_base_unordered_remove", scope: !3, file: !3, line: 386, type: !791, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !794)
!791 = !DISubroutineType(types: !792)
!792 = !{!37, !793, !19}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!794 = !{!795, !796, !797, !798}
!795 = !DILocalVariable(name: "vec_", arg: 1, scope: !790, file: !3, line: 386, type: !793)
!796 = !DILocalVariable(name: "ix_", arg: 2, scope: !790, file: !3, line: 386, type: !19)
!797 = !DILocalVariable(name: "slot_", scope: !790, file: !3, line: 386, type: !654)
!798 = !DILocalVariable(name: "obj_", scope: !790, file: !3, line: 386, type: !37)
!799 = !DILocation(line: 0, scope: !790)
!800 = !DILocation(line: 386, column: 1, scope: !790)
!801 = distinct !DISubprogram(name: "dump_vec_loc_statistics", scope: !3, file: !3, line: 559, type: !802, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!802 = !DISubroutineType(types: !803)
!803 = !{null}
!804 = !DILocation(line: 607, column: 1, scope: !801)
!805 = distinct !DISubprogram(name: "calculate_allocation", scope: !3, file: !3, line: 177, type: !806, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !810)
!806 = !DISubroutineType(types: !807)
!807 = !{!19, !808, !8, !7}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!810 = !{!811, !812, !813, !814, !815}
!811 = !DILocalVariable(name: "pfx", arg: 1, scope: !805, file: !3, line: 177, type: !808)
!812 = !DILocalVariable(name: "reserve", arg: 2, scope: !805, file: !3, line: 177, type: !8)
!813 = !DILocalVariable(name: "exact", arg: 3, scope: !805, file: !3, line: 177, type: !7)
!814 = !DILocalVariable(name: "alloc", scope: !805, file: !3, line: 179, type: !19)
!815 = !DILocalVariable(name: "num", scope: !805, file: !3, line: 180, type: !19)
!816 = !DILocation(line: 0, scope: !805)
!817 = !DILocation(line: 182, column: 3, scope: !805)
!818 = !DILocation(line: 184, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !805, file: !3, line: 184, column: 7)
!820 = !DILocation(line: 184, column: 7, scope: !805)
!821 = !DILocation(line: 186, column: 20, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !3, line: 185, column: 5)
!823 = !DILocation(line: 187, column: 18, scope: !822)
!824 = !DILocation(line: 188, column: 5, scope: !822)
!825 = !DILocation(line: 189, column: 13, scope: !826)
!826 = distinct !DILexicalBlock(scope: !819, file: !3, line: 189, column: 12)
!827 = !DILocation(line: 189, column: 12, scope: !819)
!828 = !DILocation(line: 195, column: 3, scope: !805)
!829 = !DILocation(line: 197, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !805, file: !3, line: 197, column: 7)
!831 = !DILocation(line: 197, column: 7, scope: !805)
!832 = !DILocation(line: 199, column: 17, scope: !830)
!833 = !DILocation(line: 199, column: 5, scope: !830)
!834 = !DILocation(line: 203, column: 12, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 203, column: 11)
!836 = distinct !DILexicalBlock(scope: !830, file: !3, line: 201, column: 5)
!837 = !DILocation(line: 203, column: 11, scope: !836)
!838 = !DILocation(line: 205, column: 22, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !3, line: 205, column: 16)
!840 = !DILocation(line: 205, column: 16, scope: !835)
!841 = !DILocation(line: 207, column: 16, scope: !839)
!842 = !DILocation(line: 207, column: 2, scope: !839)
!843 = !DILocation(line: 210, column: 17, scope: !839)
!844 = !DILocation(line: 210, column: 21, scope: !839)
!845 = !DILocation(line: 0, scope: !835)
!846 = !DILocation(line: 213, column: 23, scope: !847)
!847 = distinct !DILexicalBlock(scope: !836, file: !3, line: 213, column: 11)
!848 = !DILocation(line: 213, column: 17, scope: !847)
!849 = !DILocation(line: 213, column: 11, scope: !836)
!850 = !DILocation(line: 217, column: 1, scope: !805)
!851 = distinct !DISubprogram(name: "VEC_void_p_heap_reserve", scope: !3, file: !3, line: 387, type: !852, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{!8, !655, !8}
!854 = !{!855, !856, !857}
!855 = !DILocalVariable(name: "vec_", arg: 1, scope: !851, file: !3, line: 387, type: !655)
!856 = !DILocalVariable(name: "alloc_", arg: 2, scope: !851, file: !3, line: 387, type: !8)
!857 = !DILocalVariable(name: "extend", scope: !851, file: !3, line: 387, type: !8)
!858 = !DILocation(line: 0, scope: !851)
!859 = !DILocation(line: 387, column: 1, scope: !851)
!860 = !DILocation(line: 387, column: 1, scope: !861)
!861 = distinct !DILexicalBlock(scope: !851, file: !3, line: 387, column: 1)
!862 = distinct !DISubprogram(name: "VEC_void_p_base_quick_push", scope: !3, file: !3, line: 386, type: !863, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!654, !793, !37}
!865 = !{!866, !867, !868}
!866 = !DILocalVariable(name: "vec_", arg: 1, scope: !862, file: !3, line: 386, type: !793)
!867 = !DILocalVariable(name: "obj_", arg: 2, scope: !862, file: !3, line: 386, type: !37)
!868 = !DILocalVariable(name: "slot_", scope: !862, file: !3, line: 386, type: !654)
!869 = !DILocation(line: 0, scope: !862)
!870 = !DILocation(line: 386, column: 1, scope: !862)
!871 = distinct !DISubprogram(name: "VEC_void_p_base_space", scope: !3, file: !3, line: 386, type: !872, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !874)
!872 = !DISubroutineType(types: !873)
!873 = !{!8, !793, !8}
!874 = !{!875, !876}
!875 = !DILocalVariable(name: "vec_", arg: 1, scope: !871, file: !3, line: 386, type: !793)
!876 = !DILocalVariable(name: "alloc_", arg: 2, scope: !871, file: !3, line: 386, type: !8)
!877 = !DILocation(line: 0, scope: !871)
!878 = !DILocation(line: 386, column: 1, scope: !871)
