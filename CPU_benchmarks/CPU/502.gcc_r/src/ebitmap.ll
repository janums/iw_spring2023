; ModuleID = 'ebitmap.bc'
source_filename = "ebitmap.c"
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
%struct.ebitmap_def = type { i32, %struct.simple_bitmap_def*, i32, i32, i64*, i64* }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.ebitmap_iterator = type { i64*, i32, i32, i32, i64, %struct.sbitmap_iterator }
%struct.sbitmap_iterator = type { i64*, i32, i32, i32, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [10 x i8] c"ebitmap.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"n_words = %d, set = {\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !42 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !55, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !56, metadata !DIExpression()), !dbg !57
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !58
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !59
  ret i32 %call, !dbg !60
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !61 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !64
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !65
  ret i32 %call, !dbg !66
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !67 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !127, metadata !DIExpression()), !dbg !128
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !129
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !129
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !129
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !129
  %cmp = icmp uge i8* %0, %1, !dbg !129
  %conv1 = zext i1 %cmp to i64, !dbg !129
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !129
  %tobool = icmp eq i64 %expval, 0, !dbg !129
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !129

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !129
  br label %cond.end, !dbg !129

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !129
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !129
  %2 = load i8, i8* %0, align 1, !dbg !129
  %conv3 = zext i8 %2 to i32, !dbg !129
  br label %cond.end, !dbg !129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !129
  ret i32 %cond, !dbg !130
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !131 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !133, metadata !DIExpression()), !dbg !134
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !135
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !135
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !135
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !135
  %cmp = icmp uge i8* %0, %1, !dbg !135
  %conv1 = zext i1 %cmp to i64, !dbg !135
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !135
  %tobool = icmp eq i64 %expval, 0, !dbg !135
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !135

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !135
  br label %cond.end, !dbg !135

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !135
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !135
  %2 = load i8, i8* %0, align 1, !dbg !135
  %conv3 = zext i8 %2 to i32, !dbg !135
  br label %cond.end, !dbg !135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !135
  ret i32 %cond, !dbg !136
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !137 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !138
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !138
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !138
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !138
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !138
  %cmp = icmp uge i8* %1, %2, !dbg !138
  %conv1 = zext i1 %cmp to i64, !dbg !138
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !138
  %tobool = icmp eq i64 %expval, 0, !dbg !138
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !138

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !138
  br label %cond.end, !dbg !138

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !138
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !138
  %3 = load i8, i8* %1, align 1, !dbg !138
  %conv3 = zext i8 %3 to i32, !dbg !138
  br label %cond.end, !dbg !138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !138
  ret i32 %cond, !dbg !139
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !140 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !144, metadata !DIExpression()), !dbg !145
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !146
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !147
  ret i32 %call, !dbg !148
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !149 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !153, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !154, metadata !DIExpression()), !dbg !155
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !156
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !156
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !156
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !156
  %cmp = icmp uge i8* %0, %1, !dbg !156
  %conv1 = zext i1 %cmp to i64, !dbg !156
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !156
  %tobool = icmp eq i64 %expval, 0, !dbg !156
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !156

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !156
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !156
  br label %cond.end, !dbg !156

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !156
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !156
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !156
  store i8 %conv2, i8* %0, align 1, !dbg !156
  %conv6 = and i32 %__c, 255, !dbg !156
  br label %cond.end, !dbg !156

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !156
  ret i32 %cond, !dbg !157
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !158 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !160, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !161, metadata !DIExpression()), !dbg !162
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !163
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !163
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !163
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !163
  %cmp = icmp uge i8* %0, %1, !dbg !163
  %conv1 = zext i1 %cmp to i64, !dbg !163
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !163
  %tobool = icmp eq i64 %expval, 0, !dbg !163
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !163

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !163
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !163
  br label %cond.end, !dbg !163

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !163
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !163
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !163
  store i8 %conv2, i8* %0, align 1, !dbg !163
  %conv6 = and i32 %__c, 255, !dbg !163
  br label %cond.end, !dbg !163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !163
  ret i32 %cond, !dbg !164
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !165 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !169
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !169
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !169
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !169
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !169
  %cmp = icmp uge i8* %1, %2, !dbg !169
  %conv1 = zext i1 %cmp to i64, !dbg !169
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !169
  %tobool = icmp eq i64 %expval, 0, !dbg !169
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !169

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !169
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !169
  br label %cond.end, !dbg !169

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !169
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !169
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !169
  store i8 %conv4, i8* %1, align 1, !dbg !169
  %conv6 = and i32 %__c, 255, !dbg !169
  br label %cond.end, !dbg !169

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !169
  ret i32 %cond, !dbg !170
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !171 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !177, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i64* %__n, metadata !178, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !179, metadata !DIExpression()), !dbg !180
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !181
  ret i64 %call, !dbg !182
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !183 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !185, metadata !DIExpression()), !dbg !186
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !187
  %0 = load i32, i32* %_flags, align 8, !dbg !187
  %and = lshr i32 %0, 4, !dbg !187
  %and.lobit = and i32 %and, 1, !dbg !187
  ret i32 %and.lobit, !dbg !188
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !189 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !191, metadata !DIExpression()), !dbg !192
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !193
  %0 = load i32, i32* %_flags, align 8, !dbg !193
  %and = lshr i32 %0, 5, !dbg !193
  %and.lobit = and i32 %and, 1, !dbg !193
  ret i32 %and.lobit, !dbg !194
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !195 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !198, metadata !DIExpression()), !dbg !199
  %__c.off = add i32 %__c, 128, !dbg !200
  %0 = icmp ult i32 %__c.off, 384, !dbg !200
  br i1 %0, label %cond.true, label %cond.end, !dbg !200

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !201
  %1 = load i32*, i32** %call, align 8, !dbg !202
  %idxprom = sext i32 %__c to i64, !dbg !203
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !203
  %2 = load i32, i32* %arrayidx, align 4, !dbg !203
  br label %cond.end, !dbg !204

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !204
  ret i32 %cond, !dbg !205
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !206 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !208, metadata !DIExpression()), !dbg !209
  %__c.off = add i32 %__c, 128, !dbg !210
  %0 = icmp ult i32 %__c.off, 384, !dbg !210
  br i1 %0, label %cond.true, label %cond.end, !dbg !210

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !211
  %1 = load i32*, i32** %call, align 8, !dbg !212
  %idxprom = sext i32 %__c to i64, !dbg !213
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !213
  %2 = load i32, i32* %arrayidx, align 4, !dbg !213
  br label %cond.end, !dbg !214

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !214
  ret i32 %cond, !dbg !215
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !221, metadata !DIExpression()), !dbg !222
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !223
  %conv = trunc i64 %call to i32, !dbg !224
  ret i32 %conv, !dbg !225
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !226 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !230, metadata !DIExpression()), !dbg !231
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !232
  ret i64 %call, !dbg !233
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !234 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !239, metadata !DIExpression()), !dbg !240
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !241
  ret i64 %call, !dbg !242
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !254, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i8* %__base, metadata !255, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !256, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %__size, metadata !257, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !258, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 0, metadata !259, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !260, metadata !DIExpression()), !dbg !264
  br label %while.cond, !dbg !265

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !266
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !264
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !260, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !259, metadata !DIExpression()), !dbg !264
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !267
  br i1 %cmp, label %while.body, label %cleanup, !dbg !265

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !268
  %div = lshr i64 %add, 1, !dbg !270
  call void @llvm.dbg.value(metadata i64 %div, metadata !261, metadata !DIExpression()), !dbg !264
  %mul = mul i64 %div, %__size, !dbg !271
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !272
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !262, metadata !DIExpression()), !dbg !264
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !273
  call void @llvm.dbg.value(metadata i32 %call, metadata !263, metadata !DIExpression()), !dbg !264
  %cmp1 = icmp slt i32 %call, 0, !dbg !274
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !276

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !277
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !279

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !280
  call void @llvm.dbg.value(metadata i64 %add4, metadata !259, metadata !DIExpression()), !dbg !264
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !264
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !264
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !260, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !259, metadata !DIExpression()), !dbg !264
  br label %while.cond, !dbg !265, !llvm.loop !281

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !264
  ret i8* %retval.0, !dbg !283
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !284 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !290, metadata !DIExpression()), !dbg !291
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !292
  ret double %call, !dbg !293
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !294 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !303, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !304, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i32 %base, metadata !305, metadata !DIExpression()), !dbg !306
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !307
  ret i64 %call, !dbg !308
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !309 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !315, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !316, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 %base, metadata !317, metadata !DIExpression()), !dbg !318
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !319
  ret i64 %call, !dbg !320
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !321 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !332, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !333, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %base, metadata !334, metadata !DIExpression()), !dbg !335
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !336
  ret i64 %call, !dbg !337
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !338 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !342, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !343, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %base, metadata !344, metadata !DIExpression()), !dbg !345
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !346
  ret i64 %call, !dbg !347
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !348 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !390, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !391, metadata !DIExpression()), !dbg !392
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !393
  ret i32 %call, !dbg !394
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !395 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !397, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !398, metadata !DIExpression()), !dbg !399
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !400
  ret i32 %call, !dbg !401
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !402 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !406, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !407, metadata !DIExpression()), !dbg !408
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !409
  ret i32 %call, !dbg !410
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !411 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !415, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !416, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !417, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !418, metadata !DIExpression()), !dbg !419
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !420
  ret i32 %call, !dbg !421
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !422 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !426, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !428, metadata !DIExpression()), !dbg !429
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !428, metadata !DIExpression(DW_OP_deref)), !dbg !429
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !430
  ret i32 %call, !dbg !431
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !432 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !436, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata i8* %__path, metadata !437, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !438, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !439, metadata !DIExpression()), !dbg !440
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !439, metadata !DIExpression(DW_OP_deref)), !dbg !440
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !441
  ret i32 %call, !dbg !442
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !443 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !467, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !468, metadata !DIExpression()), !dbg !469
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !470
  ret i32 %call, !dbg !471
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !472 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !474, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !475, metadata !DIExpression()), !dbg !476
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !477
  ret i32 %call, !dbg !478
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !479 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !484, metadata !DIExpression()), !dbg !485
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !486
  ret i32 %call, !dbg !487
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !488 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !492, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !493, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !494, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !495, metadata !DIExpression()), !dbg !496
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !497
  ret i32 %call, !dbg !498
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ebitmap_last_set_bit(%struct.ebitmap_def* %map) local_unnamed_addr #4 !dbg !499 {
entry:
  %i = alloca i32, align 4
  %ebi = alloca %struct.ebitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !504, metadata !DIExpression()), !dbg !527
  %0 = bitcast i32* %i to i8*, !dbg !528
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !528
  call void @llvm.dbg.value(metadata i32 0, metadata !505, metadata !DIExpression()), !dbg !527
  store i32 0, i32* %i, align 4, !dbg !529
  %1 = bitcast %struct.ebitmap_iterator* %ebi to i8*, !dbg !530
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #7, !dbg !530
  call void @llvm.dbg.value(metadata i8 0, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata %struct.ebitmap_iterator* %ebi, metadata !506, metadata !DIExpression(DW_OP_deref)), !dbg !527
  call fastcc void @ebitmap_iter_init(%struct.ebitmap_iterator* nonnull %ebi, %struct.ebitmap_def* %map, i32 0) #8, !dbg !531
  br label %for.cond, !dbg !531

for.cond:                                         ; preds = %for.inc, %entry
  %foundbit.0 = phi i8 [ 0, %entry ], [ 1, %for.inc ], !dbg !527
  call void @llvm.dbg.value(metadata i8 %foundbit.0, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32* %i, metadata !505, metadata !DIExpression(DW_OP_deref)), !dbg !527
  call void @llvm.dbg.value(metadata %struct.ebitmap_iterator* %ebi, metadata !506, metadata !DIExpression(DW_OP_deref)), !dbg !527
  %call = call fastcc zeroext i8 @ebitmap_iter_cond(%struct.ebitmap_iterator* nonnull %ebi, i32* nonnull %i) #8, !dbg !533
  %tobool = icmp eq i8 %call, 0, !dbg !531
  br i1 %tobool, label %for.end, label %for.inc, !dbg !531

for.inc:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8 1, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata %struct.ebitmap_iterator* %ebi, metadata !506, metadata !DIExpression(DW_OP_deref)), !dbg !527
  call fastcc void @ebitmap_iter_next(%struct.ebitmap_iterator* nonnull %ebi) #8, !dbg !533
  br label %for.cond, !dbg !533, !llvm.loop !535

for.end:                                          ; preds = %for.cond
  %foundbit.0.lcssa = phi i8 [ %foundbit.0, %for.cond ], !dbg !527
  call void @llvm.dbg.value(metadata i8 %foundbit.0.lcssa, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8 %foundbit.0.lcssa, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8 %foundbit.0.lcssa, metadata !526, metadata !DIExpression()), !dbg !527
  %tobool1 = icmp eq i8 %foundbit.0.lcssa, 0, !dbg !537
  %2 = load i32, i32* %i, align 4, !dbg !539
  call void @llvm.dbg.value(metadata i32 %2, metadata !505, metadata !DIExpression()), !dbg !527
  %retval.0 = select i1 %tobool1, i32 -1, i32 %2, !dbg !539
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #7, !dbg !540
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !540
  ret i32 %retval.0, !dbg !540
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ebitmap_iter_init(%struct.ebitmap_iterator* %i, %struct.ebitmap_def* %bmp, i32 %min) unnamed_addr #0 !dbg !541 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_iterator* %i, metadata !546, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %bmp, metadata !547, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 0, metadata !548, metadata !DIExpression()), !dbg !555
  %maskiter = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 5, !dbg !556
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %bmp, i64 0, i32 1, !dbg !557
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !557
  tail call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %maskiter, %struct.simple_bitmap_def* %0, i32 0) #8, !dbg !558
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %bmp, i64 0, i32 2, !dbg !559
  %1 = load i32, i32* %numwords, align 8, !dbg !559
  %size = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 2, !dbg !560
  store i32 %1, i32* %size, align 4, !dbg !561
  %cmp = icmp eq i32 %1, 0, !dbg !562
  br i1 %cmp, label %if.then, label %if.end, !dbg !564

if.then:                                          ; preds = %entry
  %ptr = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 0, !dbg !565
  store i64* null, i64** %ptr, align 8, !dbg !567
  %eltnum = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 1, !dbg !568
  store i32 0, i32* %eltnum, align 8, !dbg !569
  %bit_num = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 3, !dbg !570
  store i32 0, i32* %bit_num, align 8, !dbg !571
  %word = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 4, !dbg !572
  store i64 0, i64* %word, align 8, !dbg !573
  br label %if.end31, !dbg !574

if.end:                                           ; preds = %entry
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %bmp, i64 0, i32 4, !dbg !575
  %2 = bitcast i64** %elts to i64*, !dbg !575
  %3 = load i64, i64* %2, align 8, !dbg !575
  %4 = bitcast %struct.ebitmap_iterator* %i to i64*, !dbg !576
  store i64 %3, i64* %4, align 8, !dbg !576
  %bit_num3 = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 3, !dbg !577
  store i32 0, i32* %bit_num3, align 8, !dbg !578
  %eltnum4 = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 1, !dbg !579
  store i32 0, i32* %eltnum4, align 8, !dbg !580
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !581
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 1, !dbg !582
  %6 = load i32, i32* %n_bits, align 8, !dbg !582
  %cmp7 = icmp eq i32 %6, 0, !dbg !583
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !584

if.then8:                                         ; preds = %if.end
  %word9 = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 4, !dbg !585
  store i64 0, i64* %word9, align 8, !dbg !587
  br label %if.end31, !dbg !588

if.else:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 3, i64 0, !dbg !589
  %7 = load i64, i64* %arrayidx, align 8, !dbg !589
  %8 = and i64 %7, 1, !dbg !590
  %cmp14 = icmp eq i64 %8, 0, !dbg !590
  br i1 %cmp14, label %if.then15, label %if.else17, !dbg !591

if.then15:                                        ; preds = %if.else
  %word16 = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 4, !dbg !592
  store i64 0, i64* %word16, align 8, !dbg !593
  br label %if.end31, !dbg !594

if.else17:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !549, metadata !DIExpression()), !dbg !595
  %call = tail call i64 @sbitmap_popcount(%struct.simple_bitmap_def* %5, i64 0) #6, !dbg !596
  %conv20 = trunc i64 %call to i32, !dbg !596
  call void @llvm.dbg.value(metadata i32 %conv20, metadata !554, metadata !DIExpression()), !dbg !595
  %ptr21 = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 0, !dbg !597
  %9 = load i64*, i64** %ptr21, align 8, !dbg !597
  %idxprom22 = and i64 %call, 4294967295, !dbg !598
  %arrayidx23 = getelementptr inbounds i64, i64* %9, i64 %idxprom22, !dbg !598
  %10 = load i64, i64* %arrayidx23, align 8, !dbg !598
  %11 = load i32, i32* %bit_num3, align 8, !dbg !599
  %rem25 = and i32 %11, 63, !dbg !600
  %sh_prom26 = zext i32 %rem25 to i64, !dbg !601
  %shr27 = lshr i64 %10, %sh_prom26, !dbg !601
  %word28 = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 4, !dbg !602
  store i64 %shr27, i64* %word28, align 8, !dbg !603
  %add = add i32 %conv20, 1, !dbg !604
  store i32 %add, i32* %eltnum4, align 8, !dbg !605
  br label %if.end31

if.end31:                                         ; preds = %if.then15, %if.else17, %if.then, %if.then8
  ret void, !dbg !606
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ebitmap_iter_cond(%struct.ebitmap_iterator* %i, i32* %n) unnamed_addr #0 !dbg !607 {
entry:
  %ourn = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.ebitmap_iterator* %i, metadata !612, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i32* %n, metadata !613, metadata !DIExpression()), !dbg !615
  %0 = bitcast i32* %ourn to i8*, !dbg !616
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !616
  call void @llvm.dbg.value(metadata i32 0, metadata !614, metadata !DIExpression()), !dbg !615
  store i32 0, i32* %ourn, align 4, !dbg !617
  %size = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 2, !dbg !618
  %1 = load i32, i32* %size, align 4, !dbg !618
  %cmp = icmp eq i32 %1, 0, !dbg !620
  br i1 %cmp, label %cleanup, label %if.end, !dbg !621

if.end:                                           ; preds = %entry
  %word = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 4, !dbg !622
  %2 = load i64, i64* %word, align 8, !dbg !622
  %cmp1 = icmp eq i64 %2, 0, !dbg !624
  br i1 %cmp1, label %if.then2, label %if.end.if.end7_crit_edge, !dbg !625

if.end.if.end7_crit_edge:                         ; preds = %if.end
  %bit_num10.phi.trans.insert = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 3, !dbg !615
  %.pre.pre = load i32, i32* %bit_num10.phi.trans.insert, align 8, !dbg !615
  br label %if.end7, !dbg !625

if.then2:                                         ; preds = %if.end
  %maskiter = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 5, !dbg !626
  tail call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %maskiter) #8, !dbg !628
  call void @llvm.dbg.value(metadata i32* %ourn, metadata !614, metadata !DIExpression(DW_OP_deref)), !dbg !615
  %call = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %maskiter, i32* nonnull %ourn) #8, !dbg !629
  %tobool = icmp eq i8 %call, 0, !dbg !629
  br i1 %tobool, label %cleanup, label %if.end5, !dbg !631

if.end5:                                          ; preds = %if.then2
  %3 = load i32, i32* %ourn, align 4, !dbg !632
  call void @llvm.dbg.value(metadata i32 %3, metadata !614, metadata !DIExpression()), !dbg !615
  %mul = shl i32 %3, 6, !dbg !633
  %bit_num = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 3, !dbg !634
  store i32 %mul, i32* %bit_num, align 8, !dbg !635
  %ptr = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 0, !dbg !636
  %4 = load i64*, i64** %ptr, align 8, !dbg !636
  %eltnum = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 1, !dbg !637
  %5 = load i32, i32* %eltnum, align 8, !dbg !638
  %inc = add i32 %5, 1, !dbg !638
  store i32 %inc, i32* %eltnum, align 8, !dbg !638
  %idxprom = zext i32 %5 to i64, !dbg !639
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %idxprom, !dbg !639
  %6 = load i64, i64* %arrayidx, align 8, !dbg !639
  store i64 %6, i64* %word, align 8, !dbg !640
  br label %if.end7, !dbg !641

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end5
  %.pre = phi i32 [ %mul, %if.end5 ], [ %.pre.pre, %if.end.if.end7_crit_edge ], !dbg !615
  %7 = phi i64 [ %6, %if.end5 ], [ %2, %if.end.if.end7_crit_edge ]
  %bit_num10 = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 3, !dbg !615
  br label %for.cond, !dbg !642

for.cond:                                         ; preds = %for.body, %if.end7
  %8 = phi i32 [ %inc11, %for.body ], [ %.pre, %if.end7 ], !dbg !615
  %9 = phi i64 [ %shr, %for.body ], [ %7, %if.end7 ], !dbg !643
  %and = and i64 %9, 1, !dbg !646
  %cmp9 = icmp eq i64 %and, 0, !dbg !647
  br i1 %cmp9, label %for.body, label %for.end, !dbg !648

for.body:                                         ; preds = %for.cond
  %inc11 = add i32 %8, 1, !dbg !649
  store i32 %inc11, i32* %bit_num10, align 8, !dbg !649
  %shr = lshr i64 %9, 1, !dbg !650
  store i64 %shr, i64* %word, align 8, !dbg !650
  br label %for.cond, !dbg !651, !llvm.loop !652

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i32 [ %8, %for.cond ], !dbg !615
  store i32 %.lcssa, i32* %n, align 4, !dbg !654
  br label %cleanup, !dbg !655

cleanup:                                          ; preds = %if.then2, %entry, %for.end
  %retval.0 = phi i8 [ 1, %for.end ], [ 0, %entry ], [ 0, %if.then2 ], !dbg !615
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !656
  ret i8 %retval.0, !dbg !656
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ebitmap_iter_next(%struct.ebitmap_iterator* %i) unnamed_addr #0 !dbg !657 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_iterator* %i, metadata !661, metadata !DIExpression()), !dbg !662
  %word = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 4, !dbg !663
  %0 = load i64, i64* %word, align 8, !dbg !664
  %shr = lshr i64 %0, 1, !dbg !664
  store i64 %shr, i64* %word, align 8, !dbg !664
  %bit_num = getelementptr inbounds %struct.ebitmap_iterator, %struct.ebitmap_iterator* %i, i64 0, i32 3, !dbg !665
  %1 = load i32, i32* %bit_num, align 8, !dbg !666
  %inc = add i32 %1, 1, !dbg !666
  store i32 %inc, i32* %bit_num, align 8, !dbg !666
  ret void, !dbg !667
}

; Function Attrs: nounwind uwtable
define dso_local void @ebitmap_clear(%struct.ebitmap_def* %map) local_unnamed_addr #4 !dbg !668 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !672, metadata !DIExpression()), !dbg !673
  tail call fastcc void @ebitmap_array_clear(%struct.ebitmap_def* %map) #8, !dbg !674
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 1, !dbg !675
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !675
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %0) #6, !dbg !676
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !677
  %call = tail call %struct.simple_bitmap_def* @sbitmap_resize(%struct.simple_bitmap_def* %1, i32 1, i32 0) #6, !dbg !678
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !679
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 2, !dbg !680
  store i32 0, i32* %numwords, align 8, !dbg !681
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 5, !dbg !682
  store i64* null, i64** %cache, align 8, !dbg !683
  %cacheindex = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 3, !dbg !684
  store i32 0, i32* %cacheindex, align 4, !dbg !685
  ret void, !dbg !686
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ebitmap_array_clear(%struct.ebitmap_def* %map) unnamed_addr #0 !dbg !687 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !689, metadata !DIExpression()), !dbg !690
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !691
  %0 = load i64*, i64** %elts, align 8, !dbg !691
  %tobool = icmp eq i64* %0, null, !dbg !693
  br i1 %tobool, label %if.end, label %if.then, !dbg !694

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %0 to i8*, !dbg !694
  tail call void @free(i8* nonnull %1) #6, !dbg !695
  store i64* null, i64** %elts, align 8, !dbg !697
  br label %if.end, !dbg !698

if.end:                                           ; preds = %entry, %if.then
  %n_elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 0, !dbg !699
  store i32 0, i32* %n_elts, align 8, !dbg !700
  ret void, !dbg !701
}

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local %struct.simple_bitmap_def* @sbitmap_resize(%struct.simple_bitmap_def*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.ebitmap_def* @ebitmap_alloc(i32 %size) local_unnamed_addr #4 !dbg !702 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !706, metadata !DIExpression()), !dbg !708
  %call = tail call i8* @xmalloc(i64 40) #6, !dbg !709
  %0 = bitcast i8* %call to %struct.ebitmap_def*, !dbg !709
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %0, metadata !707, metadata !DIExpression()), !dbg !708
  %cmp = icmp eq i32 %size, 0, !dbg !710
  %spec.select = select i1 %cmp, i32 64, i32 %size, !dbg !712
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !706, metadata !DIExpression()), !dbg !708
  %sub = add i32 %spec.select, 63, !dbg !713
  %div = lshr i32 %sub, 6, !dbg !714
  tail call fastcc void @ebitmap_array_init(%struct.ebitmap_def* %0, i32 %div) #8, !dbg !715
  %call1 = tail call %struct.simple_bitmap_def* @sbitmap_alloc_with_popcount(i32 %spec.select) #6, !dbg !716
  %wordmask = getelementptr inbounds i8, i8* %call, i64 8, !dbg !717
  %1 = bitcast i8* %wordmask to %struct.simple_bitmap_def**, !dbg !717
  store %struct.simple_bitmap_def* %call1, %struct.simple_bitmap_def** %1, align 8, !dbg !718
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call1) #6, !dbg !719
  %numwords = getelementptr inbounds i8, i8* %call, i64 16, !dbg !720
  %2 = bitcast i8* %numwords to i32*, !dbg !720
  store i32 0, i32* %2, align 8, !dbg !721
  %cache = getelementptr inbounds i8, i8* %call, i64 32, !dbg !722
  %3 = bitcast i8* %cache to i64**, !dbg !722
  store i64* null, i64** %3, align 8, !dbg !723
  %cacheindex = getelementptr inbounds i8, i8* %call, i64 20, !dbg !724
  %4 = bitcast i8* %cacheindex to i32*, !dbg !724
  store i32 0, i32* %4, align 4, !dbg !725
  ret %struct.ebitmap_def* %0, !dbg !726
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ebitmap_array_init(%struct.ebitmap_def* %map, i32 %size) unnamed_addr #0 !dbg !727 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !731, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i32 %size, metadata !732, metadata !DIExpression()), !dbg !733
  %cmp = icmp eq i32 %size, 0, !dbg !734
  br i1 %cmp, label %if.else, label %if.then, !dbg !736

if.then:                                          ; preds = %entry
  %conv = zext i32 %size to i64, !dbg !737
  %mul = shl nuw nsw i64 %conv, 3, !dbg !737
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !737
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !739
  %0 = bitcast i64** %elts to i8**, !dbg !740
  store i8* %call, i8** %0, align 8, !dbg !740
  %n_elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 0, !dbg !741
  store i32 %size, i32* %n_elts, align 8, !dbg !742
  br label %if.end, !dbg !743

if.else:                                          ; preds = %entry
  %n_elts1 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 0, !dbg !744
  store i32 0, i32* %n_elts1, align 8, !dbg !746
  %elts2 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !747
  store i64* null, i64** %elts2, align 8, !dbg !748
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !749
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc_with_popcount(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ebitmap_clear_bit(%struct.ebitmap_def* %map, i32 %bit) local_unnamed_addr #4 !dbg !750 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !752, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32 %bit, metadata !753, metadata !DIExpression()), !dbg !760
  %div = lshr i32 %bit, 6, !dbg !761
  call void @llvm.dbg.value(metadata i32 %div, metadata !754, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32 0, metadata !755, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i8 0, metadata !758, metadata !DIExpression()), !dbg !760
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 2, !dbg !762
  %0 = load i32, i32* %numwords, align 8, !dbg !762
  %cmp = icmp eq i32 %0, 0, !dbg !764
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !765

if.end:                                           ; preds = %entry
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 1, !dbg !766
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !766
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i64 0, i32 1, !dbg !768
  %2 = load i32, i32* %n_bits, align 8, !dbg !768
  %cmp1 = icmp ult i32 %div, %2, !dbg !769
  br i1 %cmp1, label %lor.lhs.false, label %cleanup.cont, !dbg !770

lor.lhs.false:                                    ; preds = %if.end
  %div3 = lshr i32 %bit, 12, !dbg !771
  %idxprom = zext i32 %div3 to i64, !dbg !771
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i64 0, i32 3, i64 %idxprom, !dbg !771
  %3 = load i64, i64* %arrayidx, align 8, !dbg !771
  %rem = and i32 %div, 63, !dbg !771
  %sh_prom = zext i32 %rem to i64, !dbg !771
  %4 = shl i64 1, %sh_prom, !dbg !771
  %5 = and i64 %3, %4, !dbg !771
  %tobool = icmp eq i64 %5, 0, !dbg !771
  br i1 %tobool, label %cleanup.cont, label %if.end5, !dbg !772

if.end5:                                          ; preds = %lor.lhs.false
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 5, !dbg !773
  %6 = load i64*, i64** %cache, align 8, !dbg !773
  %cmp6 = icmp eq i64* %6, null, !dbg !775
  br i1 %cmp6, label %if.else, label %land.lhs.true, !dbg !776

land.lhs.true:                                    ; preds = %if.end5
  %cacheindex = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 3, !dbg !777
  %7 = load i32, i32* %cacheindex, align 4, !dbg !777
  %cmp7 = icmp eq i32 %7, %div, !dbg !778
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !779

if.then8:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i64* %6, metadata !759, metadata !DIExpression()), !dbg !760
  br label %if.end14, !dbg !780

if.else:                                          ; preds = %if.end5, %land.lhs.true
  %conv = zext i32 %div to i64, !dbg !781
  %call = tail call i64 @sbitmap_popcount(%struct.simple_bitmap_def* %1, i64 %conv) #6, !dbg !783
  %conv11 = trunc i64 %call to i32, !dbg !783
  call void @llvm.dbg.value(metadata i32 %conv11, metadata !755, metadata !DIExpression()), !dbg !760
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !784
  %8 = load i64*, i64** %elts, align 8, !dbg !784
  %idxprom12 = and i64 %call, 4294967295, !dbg !785
  %arrayidx13 = getelementptr inbounds i64, i64* %8, i64 %idxprom12, !dbg !785
  call void @llvm.dbg.value(metadata i64* %arrayidx13, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i8 1, metadata !758, metadata !DIExpression()), !dbg !760
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  %eltwordindex.0 = phi i32 [ 0, %if.then8 ], [ %conv11, %if.else ], !dbg !760
  %have_eltwordindex.0 = phi i8 [ 0, %if.then8 ], [ 1, %if.else ], !dbg !760
  %elt_ptr.0 = phi i64* [ %6, %if.then8 ], [ %arrayidx13, %if.else ], !dbg !786
  call void @llvm.dbg.value(metadata i64* %elt_ptr.0, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i8 %have_eltwordindex.0, metadata !758, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32 %eltwordindex.0, metadata !755, metadata !DIExpression()), !dbg !760
  %rem15 = and i32 %bit, 63, !dbg !787
  call void @llvm.dbg.value(metadata i32 %rem15, metadata !756, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i32 %rem15, metadata !757, metadata !DIExpression()), !dbg !760
  %sh_prom16 = zext i32 %rem15 to i64, !dbg !788
  %shl = shl i64 1, %sh_prom16, !dbg !788
  %neg = xor i64 %shl, -1, !dbg !789
  %9 = load i64, i64* %elt_ptr.0, align 8, !dbg !790
  %and17 = and i64 %9, %neg, !dbg !790
  store i64 %and17, i64* %elt_ptr.0, align 8, !dbg !790
  %cmp18 = icmp eq i64 %and17, 0, !dbg !791
  br i1 %cmp18, label %if.then20, label %cleanup.cont, !dbg !793

if.then20:                                        ; preds = %if.end14
  %tobool21 = icmp eq i8 %have_eltwordindex.0, 0, !dbg !794
  br i1 %tobool21, label %if.then22, label %if.end27, !dbg !797

if.then22:                                        ; preds = %if.then20
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !798
  %conv24 = zext i32 %div to i64, !dbg !799
  %call25 = tail call i64 @sbitmap_popcount(%struct.simple_bitmap_def* %10, i64 %conv24) #6, !dbg !800
  %conv26 = trunc i64 %call25 to i32, !dbg !800
  call void @llvm.dbg.value(metadata i32 %conv26, metadata !755, metadata !DIExpression()), !dbg !760
  br label %if.end27, !dbg !801

if.end27:                                         ; preds = %if.then20, %if.then22
  %eltwordindex.1 = phi i32 [ %eltwordindex.0, %if.then20 ], [ %conv26, %if.then22 ], !dbg !760
  call void @llvm.dbg.value(metadata i32 %eltwordindex.1, metadata !755, metadata !DIExpression()), !dbg !760
  %11 = load i64*, i64** %cache, align 8, !dbg !802
  %cmp29 = icmp eq i64* %11, null, !dbg !804
  br i1 %cmp29, label %if.end46, label %if.then31, !dbg !805

if.then31:                                        ; preds = %if.end27
  %cacheindex32 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 3, !dbg !806
  %12 = load i32, i32* %cacheindex32, align 4, !dbg !806
  %cmp33 = icmp eq i32 %12, %div, !dbg !809
  br i1 %cmp33, label %if.then35, label %if.else37, !dbg !810

if.then35:                                        ; preds = %if.then31
  store i64* null, i64** %cache, align 8, !dbg !811
  br label %if.end46, !dbg !812

if.else37:                                        ; preds = %if.then31
  %cmp39 = icmp ugt i32 %12, %div, !dbg !813
  br i1 %cmp39, label %if.then41, label %if.end46, !dbg !815

if.then41:                                        ; preds = %if.else37
  %add.ptr = getelementptr inbounds i64, i64* %11, i64 -1, !dbg !816
  store i64* %add.ptr, i64** %cache, align 8, !dbg !817
  br label %if.end46, !dbg !818

if.end46:                                         ; preds = %if.end27, %if.then35, %if.then41, %if.else37
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !819
  tail call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %13, i32 %div) #8, !dbg !820
  %elts48 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !821
  %14 = load i64*, i64** %elts48, align 8, !dbg !821
  %idxprom49 = zext i32 %eltwordindex.1 to i64, !dbg !822
  %arrayidx50 = getelementptr inbounds i64, i64* %14, i64 %idxprom49, !dbg !822
  %15 = bitcast i64* %arrayidx50 to i8*, !dbg !823
  %add = add i32 %eltwordindex.1, 1, !dbg !824
  %idxprom52 = zext i32 %add to i64, !dbg !825
  %arrayidx53 = getelementptr inbounds i64, i64* %14, i64 %idxprom52, !dbg !825
  %16 = bitcast i64* %arrayidx53 to i8*, !dbg !826
  %17 = load i32, i32* %numwords, align 8, !dbg !827
  %sub = sub i32 %17, %eltwordindex.1, !dbg !828
  %conv55 = zext i32 %sub to i64, !dbg !829
  %mul = shl nuw nsw i64 %conv55, 3, !dbg !830
  %call56 = tail call i8* @memmove(i8* %15, i8* %16, i64 %mul) #6, !dbg !831
  %18 = load i32, i32* %numwords, align 8, !dbg !832
  %dec = add i32 %18, -1, !dbg !832
  store i32 %dec, i32* %numwords, align 8, !dbg !832
  br label %cleanup.cont, !dbg !833

cleanup.cont:                                     ; preds = %lor.lhs.false, %if.end, %entry, %if.end46, %if.end14
  ret void, !dbg !834
}

declare dso_local i64 @sbitmap_popcount(%struct.simple_bitmap_def*, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !835 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !839, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !840, metadata !DIExpression()), !dbg !844
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !845
  %0 = load i8*, i8** %popcount, align 8, !dbg !845
  %tobool = icmp eq i8* %0, null, !dbg !846
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !847

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !848
  %.pre2 = zext i32 %.pre to i64, !dbg !849
  %.pre3 = shl i64 1, %.pre2, !dbg !849
  %.pre4 = lshr i32 %bitno, 6, !dbg !850
  %.pre5 = zext i32 %.pre4 to i64, !dbg !851
  br label %if.end7, !dbg !847

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !852
  %idxprom = zext i32 %div to i64, !dbg !852
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !852
  %1 = load i64, i64* %arrayidx, align 8, !dbg !852
  %rem = and i32 %bitno, 63, !dbg !852
  %sh_prom = zext i32 %rem to i64, !dbg !852
  %2 = shl i64 1, %sh_prom, !dbg !853
  %3 = and i64 %1, %2, !dbg !853
  %tobool1 = icmp eq i64 %3, 0, !dbg !853
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !855

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !856
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !857
  %dec = add i8 %4, -1, !dbg !857
  store i8 %dec, i8* %arrayidx6, align 1, !dbg !857
  br label %if.end7, !dbg !856

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !851
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !849
  %neg = xor i64 %shl.pre-phi, -1, !dbg !858
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !851
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !859
  %and14 = and i64 %5, %neg, !dbg !859
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !859
  ret void, !dbg !860
}

declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ebitmap_set_bit(%struct.ebitmap_def* %map, i32 %bit) local_unnamed_addr #4 !dbg !861 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !863, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i32 %bit, metadata !864, metadata !DIExpression()), !dbg !876
  %div = lshr i32 %bit, 6, !dbg !877
  call void @llvm.dbg.value(metadata i32 %div, metadata !865, metadata !DIExpression()), !dbg !876
  %rem = and i32 %bit, 63, !dbg !878
  call void @llvm.dbg.value(metadata i32 %rem, metadata !867, metadata !DIExpression()), !dbg !876
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 5, !dbg !879
  %0 = load i64*, i64** %cache, align 8, !dbg !879
  %tobool = icmp eq i64* %0, null, !dbg !881
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !882

land.lhs.true:                                    ; preds = %entry
  %cacheindex = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 3, !dbg !883
  %1 = load i32, i32* %cacheindex, align 4, !dbg !883
  %cmp = icmp eq i32 %1, %div, !dbg !884
  br i1 %cmp, label %if.then, label %if.end, !dbg !885

if.then:                                          ; preds = %land.lhs.true
  %sh_prom = zext i32 %rem to i64, !dbg !886
  %shl = shl i64 1, %sh_prom, !dbg !886
  %2 = load i64, i64* %0, align 8, !dbg !888
  %or = or i64 %2, %shl, !dbg !888
  store i64 %or, i64* %0, align 8, !dbg !888
  br label %cleanup.cont, !dbg !889

if.end:                                           ; preds = %entry, %land.lhs.true
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 1, !dbg !890
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !890
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i64 0, i32 1, !dbg !892
  %4 = load i32, i32* %n_bits, align 8, !dbg !892
  %cmp2 = icmp ult i32 %div, %4, !dbg !893
  br i1 %cmp2, label %if.end6, label %if.then3, !dbg !894

if.then3:                                         ; preds = %if.end
  %add = add nuw nsw i32 %div, 1, !dbg !895
  %call = tail call %struct.simple_bitmap_def* @sbitmap_resize(%struct.simple_bitmap_def* %3, i32 %add, i32 0) #6, !dbg !896
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !897
  br label %if.end6, !dbg !898

if.end6:                                          ; preds = %if.end, %if.then3
  %5 = phi %struct.simple_bitmap_def* [ %3, %if.end ], [ %call, %if.then3 ], !dbg !899
  %div8 = lshr i32 %bit, 12, !dbg !900
  %idxprom = zext i32 %div8 to i64, !dbg !900
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 3, i64 %idxprom, !dbg !900
  %6 = load i64, i64* %arrayidx, align 8, !dbg !900
  %rem9 = and i32 %div, 63, !dbg !900
  %sh_prom10 = zext i32 %rem9 to i64, !dbg !900
  %7 = shl i64 1, %sh_prom10, !dbg !900
  %8 = and i64 %6, %7, !dbg !900
  %tobool11 = icmp eq i64 %8, 0, !dbg !900
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !901

if.then12:                                        ; preds = %if.end6
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %5, i32 %div) #8, !dbg !902
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !903
  %conv = zext i32 %div to i64, !dbg !904
  %call15 = tail call i64 @sbitmap_popcount(%struct.simple_bitmap_def* %9, i64 %conv) #6, !dbg !905
  call void @llvm.dbg.value(metadata i64 %call15, metadata !868, metadata !DIExpression()), !dbg !906
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 2, !dbg !907
  %10 = load i32, i32* %numwords, align 8, !dbg !907
  %conv16 = zext i32 %10 to i64, !dbg !907
  %cmp17 = icmp ugt i64 %call15, %conv16, !dbg !907
  br i1 %cmp17, label %cond.true, label %cond.end, !dbg !907

cond.true:                                        ; preds = %if.then12
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !907
  %.pre = load i32, i32* %numwords, align 8, !dbg !908
  br label %cond.end, !dbg !907

cond.end:                                         ; preds = %if.then12, %cond.true
  %11 = phi i32 [ %10, %if.then12 ], [ %.pre, %cond.true ], !dbg !908
  call void @llvm.dbg.value(metadata i32 %11, metadata !871, metadata !DIExpression()), !dbg !906
  br label %for.cond, !dbg !909

for.cond:                                         ; preds = %for.body, %cond.end
  %i.0 = phi i32 [ %11, %cond.end ], [ %sub, %for.body ], !dbg !910
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !871, metadata !DIExpression()), !dbg !906
  %conv20 = zext i32 %i.0 to i64, !dbg !911
  %cmp21 = icmp ult i64 %call15, %conv20, !dbg !912
  br i1 %cmp21, label %for.body, label %for.end, !dbg !913

for.body:                                         ; preds = %for.cond
  %call23 = tail call fastcc i64* @ebitmap_array_grow_get(%struct.ebitmap_def* %map, i32 %i.0) #8, !dbg !914
  call void @llvm.dbg.value(metadata i64* %call23, metadata !872, metadata !DIExpression()), !dbg !915
  %sub = add i32 %i.0, -1, !dbg !916
  %call24 = tail call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %map, i32 %sub) #8, !dbg !917
  store i64 %call24, i64* %call23, align 8, !dbg !918
  call void @llvm.dbg.value(metadata i32 %sub, metadata !871, metadata !DIExpression()), !dbg !906
  br label %for.cond, !dbg !919, !llvm.loop !920

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %numwords, align 8, !dbg !922
  %inc = add i32 %12, 1, !dbg !922
  store i32 %inc, i32* %numwords, align 8, !dbg !922
  %conv26 = trunc i64 %call15 to i32, !dbg !923
  call void @llvm.dbg.value(metadata i32 %conv26, metadata !866, metadata !DIExpression()), !dbg !876
  tail call fastcc void @ebitmap_array_maybe_grow(%struct.ebitmap_def* %map, i32 %conv26) #8, !dbg !924
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !925
  %13 = load i64*, i64** %elts, align 8, !dbg !925
  %idxprom27 = and i64 %call15, 4294967295, !dbg !926
  %arrayidx28 = getelementptr inbounds i64, i64* %13, i64 %idxprom27, !dbg !926
  store i64 0, i64* %arrayidx28, align 8, !dbg !927
  br label %if.end33, !dbg !928

if.else:                                          ; preds = %if.end6
  %conv30 = zext i32 %div to i64, !dbg !929
  %call31 = tail call i64 @sbitmap_popcount(%struct.simple_bitmap_def* %5, i64 %conv30) #6, !dbg !931
  br label %if.end33

if.end33:                                         ; preds = %if.else, %for.end
  %eltwordindex.0 = phi i64 [ %call31, %if.else ], [ %call15, %for.end ], !dbg !899
  call void @llvm.dbg.value(metadata i32 %rem, metadata !867, metadata !DIExpression()), !dbg !876
  %sh_prom35 = zext i32 %rem to i64, !dbg !932
  %shl36 = shl i64 1, %sh_prom35, !dbg !932
  %elts37 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !933
  %14 = load i64*, i64** %elts37, align 8, !dbg !933
  %idxprom38 = and i64 %eltwordindex.0, 4294967295, !dbg !934
  %arrayidx39 = getelementptr inbounds i64, i64* %14, i64 %idxprom38, !dbg !934
  %15 = load i64, i64* %arrayidx39, align 8, !dbg !935
  %or40 = or i64 %15, %shl36, !dbg !935
  store i64 %or40, i64* %arrayidx39, align 8, !dbg !935
  %16 = load i64*, i64** %elts37, align 8, !dbg !936
  %arrayidx43 = getelementptr inbounds i64, i64* %16, i64 %idxprom38, !dbg !937
  store i64* %arrayidx43, i64** %cache, align 8, !dbg !938
  %cacheindex45 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 3, !dbg !939
  store i32 %div, i32* %cacheindex45, align 4, !dbg !940
  br label %cleanup.cont, !dbg !941

cleanup.cont:                                     ; preds = %if.then, %if.end33
  ret void, !dbg !941
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !942 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !944, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !945, metadata !DIExpression()), !dbg !949
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !950
  %0 = load i8*, i8** %popcount, align 8, !dbg !950
  %tobool = icmp eq i8* %0, null, !dbg !951
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !952

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !953
  %.pre2 = zext i32 %.pre to i64, !dbg !954
  %.pre3 = shl i64 1, %.pre2, !dbg !954
  %.pre4 = lshr i32 %bitno, 6, !dbg !955
  %.pre5 = zext i32 %.pre4 to i64, !dbg !956
  br label %if.end7, !dbg !952

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !957
  %idxprom = zext i32 %div to i64, !dbg !957
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !957
  %1 = load i64, i64* %arrayidx, align 8, !dbg !957
  %rem = and i32 %bitno, 63, !dbg !957
  %sh_prom = zext i32 %rem to i64, !dbg !957
  %2 = shl i64 1, %sh_prom, !dbg !958
  %3 = and i64 %1, %2, !dbg !958
  %tobool1 = icmp eq i64 %3, 0, !dbg !958
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !960

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !961
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !962
  %inc = add i8 %4, 1, !dbg !962
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !962
  br label %if.end7, !dbg !961

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !956
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !954
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !956
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !963
  %or = or i64 %5, %shl.pre-phi, !dbg !963
  store i64 %or, i64* %arrayidx13, align 8, !dbg !963
  ret void, !dbg !964
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64* @ebitmap_array_grow_get(%struct.ebitmap_def* %map, i32 %idx) unnamed_addr #0 !dbg !965 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !969, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 %idx, metadata !970, metadata !DIExpression()), !dbg !971
  %n_elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 0, !dbg !972
  %0 = load i32, i32* %n_elts, align 8, !dbg !972
  %cmp = icmp ugt i32 %0, %idx, !dbg !974
  br i1 %cmp, label %if.end, label %if.then, !dbg !975

if.then:                                          ; preds = %entry
  %add = add i32 %idx, 1, !dbg !976
  tail call fastcc void @ebitmap_array_grow(%struct.ebitmap_def* %map, i32 %add) #8, !dbg !977
  br label %if.end, !dbg !977

if.end:                                           ; preds = %entry, %if.then
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !978
  %1 = load i64*, i64** %elts, align 8, !dbg !978
  %idxprom = zext i32 %idx to i64, !dbg !979
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom, !dbg !979
  ret i64* %arrayidx, !dbg !980
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %map, i32 %idx) unnamed_addr #0 !dbg !981 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !985, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 %idx, metadata !986, metadata !DIExpression()), !dbg !987
  %n_elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 0, !dbg !988
  %0 = load i32, i32* %n_elts, align 8, !dbg !988
  %cmp = icmp ugt i32 %0, %idx, !dbg !988
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !988

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !988
  br label %cond.end, !dbg !988

cond.end:                                         ; preds = %entry, %cond.true
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !989
  %1 = load i64*, i64** %elts, align 8, !dbg !989
  %idxprom = zext i32 %idx to i64, !dbg !990
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom, !dbg !990
  %2 = load i64, i64* %arrayidx, align 8, !dbg !990
  ret i64 %2, !dbg !991
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ebitmap_array_maybe_grow(%struct.ebitmap_def* %map, i32 %size) unnamed_addr #0 !dbg !992 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !994, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 %size, metadata !995, metadata !DIExpression()), !dbg !996
  %n_elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 0, !dbg !997
  %0 = load i32, i32* %n_elts, align 8, !dbg !997
  %cmp = icmp ugt i32 %0, %size, !dbg !999
  br i1 %cmp, label %if.end, label %if.then, !dbg !1000

if.then:                                          ; preds = %entry
  %add = add i32 %size, 1, !dbg !1001
  tail call fastcc void @ebitmap_array_grow(%struct.ebitmap_def* %map, i32 %add) #8, !dbg !1002
  br label %if.end, !dbg !1002

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1003
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ebitmap_bit_p(%struct.ebitmap_def* %map, i32 %bit) local_unnamed_addr #4 !dbg !1004 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !1008, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata i32 %bit, metadata !1009, metadata !DIExpression()), !dbg !1012
  %div = lshr i32 %bit, 6, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %div, metadata !1010, metadata !DIExpression()), !dbg !1012
  %rem = and i32 %bit, 63, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1011, metadata !DIExpression()), !dbg !1012
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 2, !dbg !1015
  %0 = load i32, i32* %numwords, align 8, !dbg !1015
  %cmp = icmp eq i32 %0, 0, !dbg !1017
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1018

if.end:                                           ; preds = %entry
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 5, !dbg !1019
  %1 = load i64*, i64** %cache, align 8, !dbg !1019
  %tobool = icmp eq i64* %1, null, !dbg !1021
  br i1 %tobool, label %if.end4, label %land.lhs.true, !dbg !1022

land.lhs.true:                                    ; preds = %if.end
  %cacheindex = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 3, !dbg !1023
  %2 = load i32, i32* %cacheindex, align 4, !dbg !1023
  %cmp1 = icmp eq i32 %2, %div, !dbg !1024
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !1025

if.then2:                                         ; preds = %land.lhs.true
  %3 = load i64, i64* %1, align 8, !dbg !1026
  %sh_prom = zext i32 %rem to i64, !dbg !1027
  %shr = lshr i64 %3, %sh_prom, !dbg !1027
  %4 = trunc i64 %shr to i8, !dbg !1028
  %conv = and i8 %4, 1, !dbg !1028
  br label %cleanup, !dbg !1029

if.end4:                                          ; preds = %if.end, %land.lhs.true
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 1, !dbg !1030
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1030
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 1, !dbg !1032
  %6 = load i32, i32* %n_bits, align 8, !dbg !1032
  %cmp5 = icmp ult i32 %div, %6, !dbg !1033
  br i1 %cmp5, label %lor.lhs.false, label %cleanup, !dbg !1034

lor.lhs.false:                                    ; preds = %if.end4
  %div8 = lshr i32 %bit, 12, !dbg !1035
  %idxprom = zext i32 %div8 to i64, !dbg !1035
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 3, i64 %idxprom, !dbg !1035
  %7 = load i64, i64* %arrayidx, align 8, !dbg !1035
  %rem9 = and i32 %div, 63, !dbg !1035
  %sh_prom10 = zext i32 %rem9 to i64, !dbg !1035
  %8 = shl i64 1, %sh_prom10, !dbg !1035
  %9 = and i64 %7, %8, !dbg !1035
  %tobool13 = icmp eq i64 %9, 0, !dbg !1035
  br i1 %tobool13, label %cleanup, label %if.end15, !dbg !1036

if.end15:                                         ; preds = %lor.lhs.false
  %cacheindex16 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 3, !dbg !1037
  store i32 %div, i32* %cacheindex16, align 4, !dbg !1038
  %conv18 = zext i32 %div to i64, !dbg !1039
  %call = tail call i64 @sbitmap_popcount(%struct.simple_bitmap_def* %5, i64 %conv18) #6, !dbg !1040
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !1041
  %10 = load i64*, i64** %elts, align 8, !dbg !1041
  %idxprom20 = and i64 %call, 4294967295, !dbg !1042
  %arrayidx21 = getelementptr inbounds i64, i64* %10, i64 %idxprom20, !dbg !1042
  store i64* %arrayidx21, i64** %cache, align 8, !dbg !1043
  %11 = load i64, i64* %arrayidx21, align 8, !dbg !1044
  %sh_prom26 = zext i32 %rem to i64, !dbg !1045
  %shr27 = lshr i64 %11, %sh_prom26, !dbg !1045
  %12 = trunc i64 %shr27 to i8, !dbg !1046
  %conv29 = and i8 %12, 1, !dbg !1046
  br label %cleanup, !dbg !1047

cleanup:                                          ; preds = %lor.lhs.false, %if.end4, %entry, %if.end15, %if.then2
  %retval.0 = phi i8 [ %conv, %if.then2 ], [ %conv29, %if.end15 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end4 ], !dbg !1012
  ret i8 %retval.0, !dbg !1048
}

; Function Attrs: nounwind uwtable
define dso_local void @ebitmap_copy(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %src) local_unnamed_addr #4 !dbg !1049 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %dst, metadata !1053, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src, metadata !1054, metadata !DIExpression()), !dbg !1055
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 1, !dbg !1056
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1056
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 0, !dbg !1056
  %1 = load i8*, i8** %popcount, align 8, !dbg !1056
  tail call void @free(i8* %1) #6, !dbg !1056
  %2 = bitcast %struct.simple_bitmap_def** %wordmask to i8**, !dbg !1056
  %3 = load i8*, i8** %2, align 8, !dbg !1056
  tail call void @free(i8* %3) #6, !dbg !1056
  %wordmask2 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 1, !dbg !1057
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask2, align 8, !dbg !1057
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i64 0, i32 1, !dbg !1058
  %5 = load i32, i32* %n_bits, align 8, !dbg !1058
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc_with_popcount(i32 %5) #6, !dbg !1059
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1060
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask2, align 8, !dbg !1061
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %6) #6, !dbg !1062
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 2, !dbg !1063
  %7 = load i32, i32* %numwords, align 8, !dbg !1063
  tail call fastcc void @ebitmap_array_grow(%struct.ebitmap_def* %dst, i32 %7) #8, !dbg !1064
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 4, !dbg !1065
  %8 = bitcast i64** %elts to i8**, !dbg !1065
  %9 = load i8*, i8** %8, align 8, !dbg !1065
  %elts6 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 4, !dbg !1066
  %10 = bitcast i64** %elts6 to i8**, !dbg !1066
  %11 = load i8*, i8** %10, align 8, !dbg !1066
  %12 = load i32, i32* %numwords, align 8, !dbg !1067
  %conv = zext i32 %12 to i64, !dbg !1068
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1069
  %call8 = tail call i8* @memcpy(i8* %9, i8* %11, i64 %mul) #6, !dbg !1070
  %13 = load i32, i32* %numwords, align 8, !dbg !1071
  %numwords10 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 2, !dbg !1072
  store i32 %13, i32* %numwords10, align 8, !dbg !1073
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 5, !dbg !1074
  store i64* null, i64** %cache, align 8, !dbg !1075
  ret void, !dbg !1076
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ebitmap_array_grow(%struct.ebitmap_def* %map, i32 %newsize) unnamed_addr #0 !dbg !1077 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %map, metadata !1079, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i32 %newsize, metadata !1080, metadata !DIExpression()), !dbg !1081
  %n_elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 0, !dbg !1082
  %0 = load i32, i32* %n_elts, align 8, !dbg !1082
  %cmp = icmp ult i32 %0, %newsize, !dbg !1084
  br i1 %cmp, label %if.end, label %if.then, !dbg !1085

if.then:                                          ; preds = %entry
  store i32 %newsize, i32* %n_elts, align 8, !dbg !1086
  br label %return, !dbg !1088

if.end:                                           ; preds = %entry
  %div = lshr i32 %newsize, 2, !dbg !1089
  %add = add i32 %div, %newsize, !dbg !1090
  call void @llvm.dbg.value(metadata i32 %add, metadata !1080, metadata !DIExpression()), !dbg !1081
  store i32 %add, i32* %n_elts, align 8, !dbg !1091
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %map, i64 0, i32 4, !dbg !1092
  %1 = bitcast i64** %elts to i8**, !dbg !1092
  %2 = load i8*, i8** %1, align 8, !dbg !1092
  %conv = zext i32 %add to i64, !dbg !1092
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1092
  %call = tail call i8* @xrealloc(i8* %2, i64 %mul) #6, !dbg !1092
  store i8* %call, i8** %1, align 8, !dbg !1093
  br label %return, !dbg !1094

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1094
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_ebitmap(%struct._IO_FILE* %file, %struct.ebitmap_def* %bmap) local_unnamed_addr #4 !dbg !1095 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !1099, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %bmap, metadata !1100, metadata !DIExpression()), !dbg !1105
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %bmap, i64 0, i32 1, !dbg !1106
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1106
  %call = tail call i32 @sbitmap_last_set_bit(%struct.simple_bitmap_def* %0) #6, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %call, metadata !1103, metadata !DIExpression()), !dbg !1105
  %cmp = icmp eq i32 %call, -1, !dbg !1108
  %add = shl i32 %call, 6, !dbg !1110
  %mul = add i32 %add, 64, !dbg !1110
  %size.0 = select i1 %cmp, i32 0, i32 %mul, !dbg !1110
  call void @llvm.dbg.value(metadata i32 %size.0, metadata !1104, metadata !DIExpression()), !dbg !1105
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %bmap, i64 0, i32 2, !dbg !1111
  %1 = load i32, i32* %numwords, align 8, !dbg !1111
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %1) #6, !dbg !1112
  call void @llvm.dbg.value(metadata i32 30, metadata !1101, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i32 0, metadata !1102, metadata !DIExpression()), !dbg !1105
  br label %for.cond, !dbg !1113

for.cond:                                         ; preds = %for.inc, %entry
  %pos.0 = phi i32 [ 30, %entry ], [ %pos.2, %for.inc ], !dbg !1115
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1115
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1102, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !1101, metadata !DIExpression()), !dbg !1105
  %exitcond = icmp eq i32 %i.0, %size.0, !dbg !1116
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1118

for.body:                                         ; preds = %for.cond
  %call3 = tail call zeroext i8 @ebitmap_bit_p(%struct.ebitmap_def* %bmap, i32 %i.0) #8, !dbg !1119
  %tobool = icmp eq i8 %call3, 0, !dbg !1119
  br i1 %tobool, label %for.inc, label %if.then4, !dbg !1121

if.then4:                                         ; preds = %for.body
  %cmp5 = icmp ugt i32 %pos.0, 70, !dbg !1122
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !1125

if.then6:                                         ; preds = %if.then4
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1126
  call void @llvm.dbg.value(metadata i32 0, metadata !1101, metadata !DIExpression()), !dbg !1105
  br label %if.end8, !dbg !1128

if.end8:                                          ; preds = %if.then6, %if.then4
  %pos.1 = phi i32 [ 0, %if.then6 ], [ %pos.0, %if.then4 ], !dbg !1115
  call void @llvm.dbg.value(metadata i32 %pos.1, metadata !1101, metadata !DIExpression()), !dbg !1105
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %i.0) #6, !dbg !1129
  %add10 = add i32 %pos.1, %call9, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %add10, metadata !1101, metadata !DIExpression()), !dbg !1105
  br label %for.inc, !dbg !1131

for.inc:                                          ; preds = %for.body, %if.end8
  %pos.2 = phi i32 [ %add10, %if.end8 ], [ %pos.0, %for.body ], !dbg !1115
  call void @llvm.dbg.value(metadata i32 %pos.2, metadata !1101, metadata !DIExpression()), !dbg !1105
  %inc = add nuw i32 %i.0, 1, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1102, metadata !DIExpression()), !dbg !1105
  br label %for.cond, !dbg !1133, !llvm.loop !1134

for.end:                                          ; preds = %for.cond
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1136
  ret void, !dbg !1137
}

declare dso_local i32 @sbitmap_last_set_bit(%struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_ebitmap(%struct.ebitmap_def* %bmap) local_unnamed_addr #4 !dbg !1138 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %bmap, metadata !1140, metadata !DIExpression()), !dbg !1141
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1142
  tail call void @dump_ebitmap(%struct._IO_FILE* %0, %struct.ebitmap_def* %bmap) #8, !dbg !1143
  ret void, !dbg !1144
}

; Function Attrs: nounwind uwtable
define dso_local void @ebitmap_and_into(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %src) local_unnamed_addr #4 !dbg !1145 {
entry:
  %sbi = alloca %struct.sbitmap_iterator, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %dst, metadata !1147, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src, metadata !1148, metadata !DIExpression()), !dbg !1161
  %0 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !1162
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1162
  %1 = bitcast i32* %i to i8*, !dbg !1163
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !1163
  call void @llvm.dbg.value(metadata i32 0, metadata !1151, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 0, metadata !1152, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 0, metadata !1153, metadata !DIExpression()), !dbg !1161
  %cmp = icmp eq %struct.ebitmap_def* %dst, %src, !dbg !1164
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !1164

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 430, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1164
  br label %cond.end, !dbg !1164

cond.end:                                         ; preds = %entry, %cond.true
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 5, !dbg !1165
  store i64* null, i64** %cache, align 8, !dbg !1166
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 2, !dbg !1167
  %2 = load i32, i32* %numwords, align 8, !dbg !1167
  %cmp1 = icmp eq i32 %2, 0, !dbg !1169
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !1170

lor.lhs.false:                                    ; preds = %cond.end
  %numwords2 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 2, !dbg !1171
  %3 = load i32, i32* %numwords2, align 8, !dbg !1171
  %cmp3 = icmp eq i32 %3, 0, !dbg !1172
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1173

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  tail call void @ebitmap_clear(%struct.ebitmap_def* %dst) #8, !dbg !1174
  br label %cleanup, !dbg !1176

if.end:                                           ; preds = %lor.lhs.false
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 1, !dbg !1177
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1177
  %wordmask5 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 1, !dbg !1178
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask5, align 8, !dbg !1178
  tail call void @sbitmap_a_and_b(%struct.simple_bitmap_def* %4, %struct.simple_bitmap_def* %4, %struct.simple_bitmap_def* %5) #6, !dbg !1179
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1180
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1149, metadata !DIExpression(DW_OP_deref)), !dbg !1161
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %6, i32 0) #8, !dbg !1180
  br label %for.cond, !dbg !1180

for.cond:                                         ; preds = %for.inc, %if.end
  %srceltindex.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !1161
  %neweltindex.0 = phi i32 [ 0, %if.end ], [ %neweltindex.1, %for.inc ], !dbg !1161
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1151, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %srceltindex.0, metadata !1152, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %srceltindex.0, metadata !1153, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1149, metadata !DIExpression(DW_OP_deref)), !dbg !1161
  call void @llvm.dbg.value(metadata i32* %i, metadata !1150, metadata !DIExpression(DW_OP_deref)), !dbg !1161
  %call = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %i) #8, !dbg !1181
  %tobool = icmp eq i8 %call, 0, !dbg !1180
  br i1 %tobool, label %for.end, label %for.body, !dbg !1180

for.body:                                         ; preds = %for.cond
  %inc = add i32 %srceltindex.0, 1, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1153, metadata !DIExpression()), !dbg !1161
  %call7 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src, i32 %srceltindex.0) #8, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %call7, metadata !1154, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1152, metadata !DIExpression()), !dbg !1161
  %call9 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %dst, i32 %srceltindex.0) #8, !dbg !1185
  %and = and i64 %call7, %call9, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %and, metadata !1154, metadata !DIExpression()), !dbg !1184
  %cmp10 = icmp eq i64 %and, 0, !dbg !1187
  br i1 %cmp10, label %if.else, label %if.then11, !dbg !1188

if.then11:                                        ; preds = %for.body
  %inc12 = add i32 %neweltindex.0, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !1151, metadata !DIExpression()), !dbg !1161
  %call13 = call fastcc i64* @ebitmap_array_grow_get(%struct.ebitmap_def* %dst, i32 %neweltindex.0) #8, !dbg !1190
  call void @llvm.dbg.value(metadata i64* %call13, metadata !1158, metadata !DIExpression()), !dbg !1191
  store i64 %and, i64* %call13, align 8, !dbg !1192
  br label %for.inc, !dbg !1193

if.else:                                          ; preds = %for.body
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1194
  %8 = load i32, i32* %i, align 4, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %8, metadata !1150, metadata !DIExpression()), !dbg !1161
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %7, i32 %8) #8, !dbg !1196
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else
  %neweltindex.1 = phi i32 [ %inc12, %if.then11 ], [ %neweltindex.0, %if.else ], !dbg !1161
  call void @llvm.dbg.value(metadata i32 %neweltindex.1, metadata !1151, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1149, metadata !DIExpression(DW_OP_deref)), !dbg !1161
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #8, !dbg !1181
  br label %for.cond, !dbg !1181, !llvm.loop !1197

for.end:                                          ; preds = %for.cond
  %neweltindex.0.lcssa = phi i32 [ %neweltindex.0, %for.cond ], !dbg !1161
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1151, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1151, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1151, metadata !DIExpression()), !dbg !1161
  store i32 %neweltindex.0.lcssa, i32* %numwords2, align 8, !dbg !1199
  br label %cleanup, !dbg !1200

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !1200
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1200
  ret void, !dbg !1200
}

declare dso_local void @sbitmap_a_and_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* %i, %struct.simple_bitmap_def* %bmp, i32 %min) unnamed_addr #0 !dbg !1201 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !1209, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmp, metadata !1210, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i32 0, metadata !1211, metadata !DIExpression()), !dbg !1212
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !1213
  store i32 0, i32* %word_num, align 4, !dbg !1214
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !1215
  store i32 0, i32* %bit_num, align 8, !dbg !1216
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 2, !dbg !1217
  %0 = load i32, i32* %size, align 4, !dbg !1217
  %size1 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !1218
  store i32 %0, i32* %size1, align 8, !dbg !1219
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 3, i64 0, !dbg !1220
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !1221
  store i64* %arraydecay, i64** %ptr, align 8, !dbg !1222
  %cmp = icmp eq i32 %0, 0, !dbg !1223
  br i1 %cmp, label %if.then, label %if.else, !dbg !1225

if.then:                                          ; preds = %entry
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !1226
  store i64 0, i64* %word, align 8, !dbg !1227
  br label %if.end, !dbg !1228

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %arraydecay, align 8, !dbg !1229
  %word7 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !1230
  store i64 %1, i64* %word7, align 8, !dbg !1231
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1232
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* %i, i32* %n) unnamed_addr #0 !dbg !1233 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !1237, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i32* %n, metadata !1238, metadata !DIExpression()), !dbg !1239
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !1240
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !1243
  %size = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !1245
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !1243
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !1240
  %.pre = load i64, i64* %word, align 8, !dbg !1247
  br label %for.cond, !dbg !1248

for.cond:                                         ; preds = %if.end, %entry
  %0 = phi i64 [ %4, %if.end ], [ %.pre, %entry ], !dbg !1247
  %cmp = icmp eq i64 %0, 0, !dbg !1249
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !dbg !1250

for.cond6.preheader:                              ; preds = %for.cond
  %.lcssa4 = phi i64 [ %0, %for.cond ], !dbg !1247
  %.pre1 = load i32, i32* %bit_num, align 8, !dbg !1239
  br label %for.cond6, !dbg !1251

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %word_num, align 4, !dbg !1253
  %inc = add i32 %1, 1, !dbg !1253
  store i32 %inc, i32* %word_num, align 4, !dbg !1253
  %2 = load i32, i32* %size, align 8, !dbg !1254
  %cmp2 = icmp ult i32 %inc, %2, !dbg !1255
  br i1 %cmp2, label %if.end, label %return.loopexit, !dbg !1256

if.end:                                           ; preds = %for.body
  %mul = shl i32 %inc, 6, !dbg !1257
  store i32 %mul, i32* %bit_num, align 8, !dbg !1258
  %3 = load i64*, i64** %ptr, align 8, !dbg !1259
  %idxprom = zext i32 %inc to i64, !dbg !1260
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom, !dbg !1260
  %4 = load i64, i64* %arrayidx, align 8, !dbg !1260
  store i64 %4, i64* %word, align 8, !dbg !1261
  br label %for.cond, !dbg !1262, !llvm.loop !1263

for.cond6:                                        ; preds = %for.cond6.preheader, %for.body9
  %5 = phi i32 [ %.pre1, %for.cond6.preheader ], [ %inc11, %for.body9 ], !dbg !1239
  %6 = phi i64 [ %.lcssa4, %for.cond6.preheader ], [ %shr, %for.body9 ], !dbg !1265
  %and = and i64 %6, 1, !dbg !1267
  %cmp8 = icmp eq i64 %and, 0, !dbg !1268
  br i1 %cmp8, label %for.body9, label %for.end14, !dbg !1251

for.body9:                                        ; preds = %for.cond6
  %inc11 = add i32 %5, 1, !dbg !1269
  store i32 %inc11, i32* %bit_num, align 8, !dbg !1269
  %shr = lshr i64 %6, 1, !dbg !1270
  store i64 %shr, i64* %word, align 8, !dbg !1270
  br label %for.cond6, !dbg !1271, !llvm.loop !1272

for.end14:                                        ; preds = %for.cond6
  %.lcssa = phi i32 [ %5, %for.cond6 ], !dbg !1239
  store i32 %.lcssa, i32* %n, align 4, !dbg !1274
  br label %return, !dbg !1275

return.loopexit:                                  ; preds = %for.body
  br label %return, !dbg !1276

return:                                           ; preds = %return.loopexit, %for.end14
  %retval.0 = phi i8 [ 1, %for.end14 ], [ 0, %return.loopexit ], !dbg !1239
  ret i8 %retval.0, !dbg !1276
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* %i) unnamed_addr #0 !dbg !1277 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !1281, metadata !DIExpression()), !dbg !1282
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !1283
  %0 = load i64, i64* %word, align 8, !dbg !1284
  %shr = lshr i64 %0, 1, !dbg !1284
  store i64 %shr, i64* %word, align 8, !dbg !1284
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !1285
  %1 = load i32, i32* %bit_num, align 8, !dbg !1286
  %inc = add i32 %1, 1, !dbg !1286
  store i32 %inc, i32* %bit_num, align 8, !dbg !1286
  ret void, !dbg !1287
}

; Function Attrs: nounwind uwtable
define dso_local void @ebitmap_and(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %src1, %struct.ebitmap_def* %src2) local_unnamed_addr #4 !dbg !1288 {
entry:
  %sbi = alloca %struct.sbitmap_iterator, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %dst, metadata !1292, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src1, metadata !1293, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src2, metadata !1294, metadata !DIExpression()), !dbg !1311
  %0 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !1312
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1312
  %1 = bitcast i32* %i to i8*, !dbg !1313
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !1313
  call void @llvm.dbg.value(metadata i32 0, metadata !1297, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 0, metadata !1298, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 0, metadata !1299, metadata !DIExpression()), !dbg !1311
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 5, !dbg !1314
  store i64* null, i64** %cache, align 8, !dbg !1315
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src1, i64 0, i32 2, !dbg !1316
  %2 = load i32, i32* %numwords, align 8, !dbg !1316
  %cmp = icmp eq i32 %2, 0, !dbg !1318
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1319

lor.lhs.false:                                    ; preds = %entry
  %numwords1 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src2, i64 0, i32 2, !dbg !1320
  %3 = load i32, i32* %numwords1, align 8, !dbg !1320
  %cmp2 = icmp eq i32 %3, 0, !dbg !1321
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1322

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ebitmap_clear(%struct.ebitmap_def* %dst) #8, !dbg !1323
  br label %cleanup, !dbg !1325

if.end:                                           ; preds = %lor.lhs.false
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 1, !dbg !1326
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1326
  %wordmask3 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src1, i64 0, i32 1, !dbg !1327
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask3, align 8, !dbg !1327
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 1, !dbg !1327
  %6 = load i32, i32* %n_bits, align 8, !dbg !1327
  %wordmask4 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src2, i64 0, i32 1, !dbg !1327
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask4, align 8, !dbg !1327
  %n_bits5 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %7, i64 0, i32 1, !dbg !1327
  %8 = load i32, i32* %n_bits5, align 8, !dbg !1327
  %cmp6 = icmp ult i32 %6, %8, !dbg !1327
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !1327

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !1327

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1327

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %8, %cond.false ], !dbg !1327
  %call = tail call %struct.simple_bitmap_def* @sbitmap_resize(%struct.simple_bitmap_def* %4, i32 %cond, i32 0) #6, !dbg !1328
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1329
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask3, align 8, !dbg !1330
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask4, align 8, !dbg !1331
  tail call void @sbitmap_a_and_b(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %9, %struct.simple_bitmap_def* %10) #6, !dbg !1332
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1333
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1295, metadata !DIExpression(DW_OP_deref)), !dbg !1311
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %11, i32 0) #8, !dbg !1333
  br label %for.cond, !dbg !1333

for.cond:                                         ; preds = %for.inc, %cond.end
  %src1eltindex.0 = phi i32 [ 0, %cond.end ], [ %src1eltindex.2, %for.inc ], !dbg !1311
  %neweltindex.0 = phi i32 [ 0, %cond.end ], [ %neweltindex.2, %for.inc ], !dbg !1311
  %src2eltindex.0 = phi i32 [ 0, %cond.end ], [ %src2eltindex.2, %for.inc ], !dbg !1311
  call void @llvm.dbg.value(metadata i32 %src2eltindex.0, metadata !1299, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1297, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %src1eltindex.0, metadata !1298, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1295, metadata !DIExpression(DW_OP_deref)), !dbg !1311
  call void @llvm.dbg.value(metadata i32* %i, metadata !1296, metadata !DIExpression(DW_OP_deref)), !dbg !1311
  %call16 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %i) #8, !dbg !1334
  %tobool = icmp eq i8 %call16, 0, !dbg !1333
  br i1 %tobool, label %for.end, label %for.body, !dbg !1333

for.body:                                         ; preds = %for.cond
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask3, align 8, !dbg !1335
  %13 = load i32, i32* %i, align 4, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %13, metadata !1296, metadata !DIExpression()), !dbg !1311
  %div = lshr i32 %13, 6, !dbg !1335
  %idxprom = zext i32 %div to i64, !dbg !1335
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %12, i64 0, i32 3, i64 %idxprom, !dbg !1335
  %14 = load i64, i64* %arrayidx, align 8, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %13, metadata !1296, metadata !DIExpression()), !dbg !1311
  %rem = and i32 %13, 63, !dbg !1335
  %sh_prom = zext i32 %rem to i64, !dbg !1335
  %shr = lshr i64 %14, %sh_prom, !dbg !1335
  %15 = trunc i64 %shr to i8, !dbg !1335
  %conv = and i8 %15, 1, !dbg !1335
  call void @llvm.dbg.value(metadata i8 %conv, metadata !1300, metadata !DIExpression()), !dbg !1336
  %16 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask4, align 8, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %13, metadata !1296, metadata !DIExpression()), !dbg !1311
  %arrayidx22 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %16, i64 0, i32 3, i64 %idxprom, !dbg !1337
  %17 = load i64, i64* %arrayidx22, align 8, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %13, metadata !1296, metadata !DIExpression()), !dbg !1311
  %tobool29 = icmp ne i8 %conv, 0, !dbg !1338
  %18 = shl i64 1, %sh_prom, !dbg !1339
  %19 = and i64 %17, %18, !dbg !1339
  %tobool31 = icmp ne i64 %19, 0, !dbg !1339
  %or.cond = and i1 %tobool29, %tobool31, !dbg !1340
  br i1 %or.cond, label %if.then32, label %if.else44, !dbg !1340

if.then32:                                        ; preds = %for.body
  %inc = add i32 %src1eltindex.0, 1, !dbg !1341
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1298, metadata !DIExpression()), !dbg !1311
  %call33 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src1, i32 %src1eltindex.0) #8, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %call33, metadata !1305, metadata !DIExpression()), !dbg !1343
  %inc34 = add i32 %src2eltindex.0, 1, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %inc34, metadata !1299, metadata !DIExpression()), !dbg !1311
  %call35 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src2, i32 %src2eltindex.0) #8, !dbg !1345
  %and36 = and i64 %call33, %call35, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %and36, metadata !1305, metadata !DIExpression()), !dbg !1343
  %cmp37 = icmp eq i64 %and36, 0, !dbg !1347
  br i1 %cmp37, label %if.else, label %if.then39, !dbg !1348

if.then39:                                        ; preds = %if.then32
  %inc40 = add i32 %neweltindex.0, 1, !dbg !1349
  call void @llvm.dbg.value(metadata i32 %inc40, metadata !1297, metadata !DIExpression()), !dbg !1311
  %call41 = call fastcc i64* @ebitmap_array_grow_get(%struct.ebitmap_def* %dst, i32 %neweltindex.0) #8, !dbg !1350
  call void @llvm.dbg.value(metadata i64* %call41, metadata !1308, metadata !DIExpression()), !dbg !1351
  store i64 %and36, i64* %call41, align 8, !dbg !1352
  br label %for.inc, !dbg !1353

if.else:                                          ; preds = %if.then32
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1354
  %21 = load i32, i32* %i, align 4, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %21, metadata !1296, metadata !DIExpression()), !dbg !1311
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %20, i32 %21) #8, !dbg !1356
  br label %for.inc

if.else44:                                        ; preds = %for.body
  %22 = zext i8 %conv to i32, !dbg !1357
  %src1eltindex.1 = add i32 %src1eltindex.0, %22, !dbg !1357
  %23 = xor i8 %conv, 1, !dbg !1357
  %24 = zext i8 %23 to i32, !dbg !1357
  %src2eltindex.1 = add i32 %src2eltindex.0, %24, !dbg !1357
  br label %for.inc, !dbg !1357

for.inc:                                          ; preds = %if.else, %if.then39, %if.else44
  %src1eltindex.2 = phi i32 [ %inc, %if.else ], [ %inc, %if.then39 ], [ %src1eltindex.1, %if.else44 ], !dbg !1358
  %neweltindex.2 = phi i32 [ %neweltindex.0, %if.else ], [ %inc40, %if.then39 ], [ %neweltindex.0, %if.else44 ], !dbg !1311
  %src2eltindex.2 = phi i32 [ %inc34, %if.else ], [ %inc34, %if.then39 ], [ %src2eltindex.1, %if.else44 ], !dbg !1311
  call void @llvm.dbg.value(metadata i32 %src2eltindex.2, metadata !1299, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %neweltindex.2, metadata !1297, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %src1eltindex.2, metadata !1298, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1295, metadata !DIExpression(DW_OP_deref)), !dbg !1311
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #8, !dbg !1334
  br label %for.cond, !dbg !1334, !llvm.loop !1359

for.end:                                          ; preds = %for.cond
  %neweltindex.0.lcssa = phi i32 [ %neweltindex.0, %for.cond ], !dbg !1311
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1297, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1297, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1297, metadata !DIExpression()), !dbg !1311
  %numwords52 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 2, !dbg !1361
  store i32 %neweltindex.0.lcssa, i32* %numwords52, align 8, !dbg !1362
  br label %cleanup, !dbg !1363

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !1363
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1363
  ret void, !dbg !1363
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ebitmap_ior_into(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %src) local_unnamed_addr #4 !dbg !1364 {
entry:
  %sbi = alloca %struct.sbitmap_iterator, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %dst, metadata !1368, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src, metadata !1369, metadata !DIExpression()), !dbg !1389
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 1, !dbg !1390
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1390
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 1, !dbg !1391
  %1 = load i32, i32* %n_bits, align 8, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %1, metadata !1370, metadata !DIExpression()), !dbg !1389
  %wordmask1 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 1, !dbg !1392
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1392
  %n_bits2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i64 0, i32 1, !dbg !1393
  %3 = load i32, i32* %n_bits2, align 8, !dbg !1393
  call void @llvm.dbg.value(metadata i32 %3, metadata !1371, metadata !DIExpression()), !dbg !1389
  %4 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !1394
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1394
  %5 = bitcast i32* %i to i8*, !dbg !1395
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1395
  call void @llvm.dbg.value(metadata i32 0, metadata !1375, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 0, metadata !1376, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 0, metadata !1377, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 0, metadata !1378, metadata !DIExpression()), !dbg !1389
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 5, !dbg !1396
  store i64* null, i64** %cache, align 8, !dbg !1397
  %cmp = icmp eq %struct.ebitmap_def* %dst, %src, !dbg !1398
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1400

if.end:                                           ; preds = %entry
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 2, !dbg !1401
  %6 = load i32, i32* %numwords, align 8, !dbg !1401
  %cmp3 = icmp eq i32 %6, 0, !dbg !1403
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.else_crit_edge, !dbg !1404

if.end.if.else_crit_edge:                         ; preds = %if.end
  %numwords7.phi.trans.insert = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 2, !dbg !1405
  %.pre = load i32, i32* %numwords7.phi.trans.insert, align 8, !dbg !1407
  %phitmp = icmp eq i32 %.pre, 0, !dbg !1404
  br label %if.else, !dbg !1404

land.lhs.true:                                    ; preds = %if.end
  %numwords4 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 2, !dbg !1408
  %7 = load i32, i32* %numwords4, align 8, !dbg !1408
  %cmp5 = icmp eq i32 %7, 0, !dbg !1409
  br i1 %cmp5, label %if.else, label %if.then6, !dbg !1410

if.then6:                                         ; preds = %land.lhs.true
  tail call void @ebitmap_copy(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %src) #8, !dbg !1411
  br label %cleanup, !dbg !1413

if.else:                                          ; preds = %if.end.if.else_crit_edge, %land.lhs.true
  %8 = phi i1 [ %phitmp, %if.end.if.else_crit_edge ], [ true, %land.lhs.true ]
  %numwords7 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 2, !dbg !1407
  br i1 %8, label %cleanup, label %if.end11, !dbg !1414

if.end11:                                         ; preds = %if.else
  %cmp12 = icmp ugt i32 %3, %1, !dbg !1415
  %. = select i1 %cmp12, i32 %3, i32 %1, !dbg !1415
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %.) #6, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !1374, metadata !DIExpression()), !dbg !1389
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !1417
  %cmp13 = icmp eq i32 %3, %1, !dbg !1418
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1420
  br i1 %cmp13, label %if.then14, label %if.else17, !dbg !1421

if.then14:                                        ; preds = %if.end11
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1422
  tail call void @sbitmap_a_or_b(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %9, %struct.simple_bitmap_def* %10) #6, !dbg !1424
  br label %if.end37, !dbg !1425

if.else17:                                        ; preds = %if.end11
  %call24 = tail call %struct.simple_bitmap_def* @sbitmap_resize(%struct.simple_bitmap_def* %9, i32 %., i32 0) #6, !dbg !1426
  store %struct.simple_bitmap_def* %call24, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1428
  %cmp26 = icmp ult i32 %3, %1, !dbg !1429
  br i1 %cmp26, label %if.else31, label %if.then27, !dbg !1431

if.then27:                                        ; preds = %if.else17
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call24, i64 0, i32 2, !dbg !1432
  %11 = load i32, i32* %size, align 4, !dbg !1432
  tail call void @sbitmap_copy_n(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call24, i32 %11) #6, !dbg !1434
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1435
  tail call void @sbitmap_a_or_b(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %12) #6, !dbg !1436
  br label %if.end37, !dbg !1437

if.else31:                                        ; preds = %if.else17
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1438
  %size34 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %13, i64 0, i32 2, !dbg !1440
  %14 = load i32, i32* %size34, align 4, !dbg !1440
  tail call void @sbitmap_copy_n(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %13, i32 %14) #6, !dbg !1441
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1442
  tail call void @sbitmap_a_or_b(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %15) #6, !dbg !1443
  br label %if.end37

if.end37:                                         ; preds = %if.then27, %if.else31, %if.then14
  %16 = load i32, i32* %numwords7, align 8, !dbg !1444
  %17 = load i32, i32* %numwords, align 8, !dbg !1445
  %add = add i32 %16, %17, !dbg !1446
  call void @llvm.dbg.value(metadata i32 %add, metadata !1380, metadata !DIExpression()), !dbg !1389
  %conv = zext i32 %add to i64, !dbg !1447
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1447
  %call40 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !1447
  %18 = bitcast i8* %call40 to i64*, !dbg !1447
  call void @llvm.dbg.value(metadata i64* %18, metadata !1379, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1372, metadata !DIExpression(DW_OP_deref)), !dbg !1389
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %call, i32 0) #8, !dbg !1448
  br label %for.cond, !dbg !1448

for.cond:                                         ; preds = %for.inc, %if.end37
  %neweltindex.0 = phi i32 [ 0, %if.end37 ], [ %neweltindex.2, %for.inc ], !dbg !1389
  %dsteltindex.0 = phi i32 [ 0, %if.end37 ], [ %dsteltindex.2, %for.inc ], !dbg !1389
  %srceltindex.0 = phi i32 [ 0, %if.end37 ], [ %srceltindex.2, %for.inc ], !dbg !1389
  %changed.0 = phi i8 [ 0, %if.end37 ], [ %changed.3, %for.inc ], !dbg !1449
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !1378, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %srceltindex.0, metadata !1377, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %dsteltindex.0, metadata !1376, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1375, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1372, metadata !DIExpression(DW_OP_deref)), !dbg !1389
  call void @llvm.dbg.value(metadata i32* %i, metadata !1373, metadata !DIExpression(DW_OP_deref)), !dbg !1389
  %call41 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %i) #8, !dbg !1450
  %tobool = icmp eq i8 %call41, 0, !dbg !1448
  br i1 %tobool, label %for.end, label %for.body, !dbg !1448

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !dbg !1451
  call void @llvm.dbg.value(metadata i32 %19, metadata !1373, metadata !DIExpression()), !dbg !1389
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1452
  %n_bits43 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %20, i64 0, i32 1, !dbg !1453
  %21 = load i32, i32* %n_bits43, align 8, !dbg !1453
  %cmp44 = icmp ult i32 %19, %21, !dbg !1454
  br i1 %cmp44, label %land.rhs, label %land.end, !dbg !1455

land.rhs:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %19, metadata !1373, metadata !DIExpression()), !dbg !1389
  %div = lshr i32 %19, 6, !dbg !1456
  %idxprom = zext i32 %div to i64, !dbg !1456
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %20, i64 0, i32 3, i64 %idxprom, !dbg !1456
  %22 = load i64, i64* %arrayidx, align 8, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %19, metadata !1373, metadata !DIExpression()), !dbg !1389
  %rem = and i32 %19, 63, !dbg !1456
  %sh_prom = zext i32 %rem to i64, !dbg !1456
  %23 = shl i64 1, %sh_prom, !dbg !1455
  %24 = and i64 %22, %23, !dbg !1455
  %tobool47 = icmp ne i64 %24, 0, !dbg !1455
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %25 = phi i1 [ false, %for.body ], [ %tobool47, %land.rhs ], !dbg !1457
  call void @llvm.dbg.value(metadata i1 %25, metadata !1381, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 %19, metadata !1373, metadata !DIExpression()), !dbg !1389
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1458
  %n_bits50 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %26, i64 0, i32 1, !dbg !1459
  %27 = load i32, i32* %n_bits50, align 8, !dbg !1459
  %cmp51 = icmp ult i32 %19, %27, !dbg !1460
  br i1 %cmp51, label %land.rhs53, label %land.end64, !dbg !1461

land.rhs53:                                       ; preds = %land.end
  call void @llvm.dbg.value(metadata i32 %19, metadata !1373, metadata !DIExpression()), !dbg !1389
  %div56 = lshr i32 %19, 6, !dbg !1462
  %idxprom57 = zext i32 %div56 to i64, !dbg !1462
  %arrayidx58 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %26, i64 0, i32 3, i64 %idxprom57, !dbg !1462
  %28 = load i64, i64* %arrayidx58, align 8, !dbg !1462
  call void @llvm.dbg.value(metadata i32 %19, metadata !1373, metadata !DIExpression()), !dbg !1389
  %rem59 = and i32 %19, 63, !dbg !1462
  %sh_prom60 = zext i32 %rem59 to i64, !dbg !1462
  %29 = shl i64 1, %sh_prom60, !dbg !1461
  %30 = and i64 %28, %29, !dbg !1461
  %tobool63 = icmp ne i64 %30, 0, !dbg !1461
  br label %land.end64

land.end64:                                       ; preds = %land.rhs53, %land.end
  %31 = phi i1 [ false, %land.end ], [ %tobool63, %land.rhs53 ], !dbg !1457
  call void @llvm.dbg.value(metadata i1 %31, metadata !1385, metadata !DIExpression()), !dbg !1457
  %or.cond = and i1 %25, %31, !dbg !1463
  br i1 %or.cond, label %if.then72, label %if.else88, !dbg !1463

if.then72:                                        ; preds = %land.end64
  %inc = add i32 %srceltindex.0, 1, !dbg !1464
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1377, metadata !DIExpression()), !dbg !1389
  %call73 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src, i32 %srceltindex.0) #8, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %call73, metadata !1386, metadata !DIExpression()), !dbg !1466
  %call74 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %dst, i32 %dsteltindex.0) #8, !dbg !1467
  %or = or i64 %call73, %call74, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %or, metadata !1386, metadata !DIExpression()), !dbg !1466
  %tobool75 = icmp eq i8 %changed.0, 0, !dbg !1469
  br i1 %tobool75, label %if.then76, label %if.end83, !dbg !1471

if.then76:                                        ; preds = %if.then72
  %call77 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %dst, i32 %dsteltindex.0) #8, !dbg !1472
  %cmp78 = icmp ne i64 %or, %call77, !dbg !1473
  %conv79 = zext i1 %cmp78 to i8, !dbg !1473
  call void @llvm.dbg.value(metadata i8 %conv79, metadata !1378, metadata !DIExpression()), !dbg !1389
  br label %if.end83, !dbg !1474

if.end83:                                         ; preds = %if.then72, %if.then76
  %changed.1 = phi i8 [ %changed.0, %if.then72 ], [ %conv79, %if.then76 ], !dbg !1389
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !1378, metadata !DIExpression()), !dbg !1389
  %inc84 = add i32 %dsteltindex.0, 1, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %inc84, metadata !1376, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1375, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1389
  %idxprom86 = zext i32 %neweltindex.0 to i64, !dbg !1476
  %arrayidx87 = getelementptr inbounds i64, i64* %18, i64 %idxprom86, !dbg !1476
  store i64 %or, i64* %arrayidx87, align 8, !dbg !1477
  br label %for.inc, !dbg !1478

if.else88:                                        ; preds = %land.end64
  br i1 %25, label %if.then90, label %if.else96, !dbg !1479

if.then90:                                        ; preds = %if.else88
  %inc91 = add i32 %dsteltindex.0, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %inc91, metadata !1376, metadata !DIExpression()), !dbg !1389
  %call92 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %dst, i32 %dsteltindex.0) #8, !dbg !1483
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1375, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1389
  %idxprom94 = zext i32 %neweltindex.0 to i64, !dbg !1484
  %arrayidx95 = getelementptr inbounds i64, i64* %18, i64 %idxprom94, !dbg !1484
  store i64 %call92, i64* %arrayidx95, align 8, !dbg !1485
  br label %for.inc, !dbg !1486

if.else96:                                        ; preds = %if.else88
  %inc97 = add i32 %srceltindex.0, 1, !dbg !1487
  call void @llvm.dbg.value(metadata i32 %inc97, metadata !1377, metadata !DIExpression()), !dbg !1389
  %call98 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src, i32 %srceltindex.0) #8, !dbg !1489
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1375, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1389
  %idxprom100 = zext i32 %neweltindex.0 to i64, !dbg !1490
  %arrayidx101 = getelementptr inbounds i64, i64* %18, i64 %idxprom100, !dbg !1490
  store i64 %call98, i64* %arrayidx101, align 8, !dbg !1491
  %32 = load i32, i32* %i, align 4, !dbg !1492
  call void @llvm.dbg.value(metadata i32 %32, metadata !1373, metadata !DIExpression()), !dbg !1389
  %33 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1492
  %n_bits103 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %33, i64 0, i32 1, !dbg !1492
  %34 = load i32, i32* %n_bits103, align 8, !dbg !1492
  %cmp104 = icmp ult i32 %32, %34, !dbg !1492
  br i1 %cmp104, label %cond.end108, label %cond.true106, !dbg !1492

cond.true106:                                     ; preds = %if.else96
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 630, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1492
  %.pre3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1493
  %.pre4 = load i32, i32* %i, align 4, !dbg !1494
  br label %cond.end108, !dbg !1492

cond.end108:                                      ; preds = %if.else96, %cond.true106
  %35 = phi i32 [ %32, %if.else96 ], [ %.pre4, %cond.true106 ], !dbg !1494
  %36 = phi %struct.simple_bitmap_def* [ %33, %if.else96 ], [ %.pre3, %cond.true106 ], !dbg !1493
  call void @llvm.dbg.value(metadata i32 %35, metadata !1373, metadata !DIExpression()), !dbg !1389
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %36, i32 %35) #8, !dbg !1495
  %37 = or i8 %changed.0, 1, !dbg !1496
  call void @llvm.dbg.value(metadata i8 %37, metadata !1378, metadata !DIExpression()), !dbg !1389
  br label %for.inc

for.inc:                                          ; preds = %if.end83, %cond.end108, %if.then90
  %dsteltindex.2 = phi i32 [ %inc84, %if.end83 ], [ %inc91, %if.then90 ], [ %dsteltindex.0, %cond.end108 ], !dbg !1497
  %srceltindex.2 = phi i32 [ %inc, %if.end83 ], [ %srceltindex.0, %if.then90 ], [ %inc97, %cond.end108 ], !dbg !1389
  %changed.3 = phi i8 [ %changed.1, %if.end83 ], [ %changed.0, %if.then90 ], [ %37, %cond.end108 ], !dbg !1449
  %neweltindex.2 = add i32 %neweltindex.0, 1, !dbg !1497
  call void @llvm.dbg.value(metadata i8 %changed.3, metadata !1378, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %srceltindex.2, metadata !1377, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %dsteltindex.2, metadata !1376, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %neweltindex.2, metadata !1375, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1372, metadata !DIExpression(DW_OP_deref)), !dbg !1389
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #8, !dbg !1450
  br label %for.cond, !dbg !1450, !llvm.loop !1498

for.end:                                          ; preds = %for.cond
  %neweltindex.0.lcssa = phi i32 [ %neweltindex.0, %for.cond ], !dbg !1389
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond ], !dbg !1449
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1375, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1378, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1375, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1378, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1375, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1378, metadata !DIExpression()), !dbg !1389
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !1500
  %38 = load i8*, i8** %popcount, align 8, !dbg !1500
  call void @free(i8* %38) #6, !dbg !1500
  %39 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !1500
  call void @free(i8* %39) #6, !dbg !1500
  %tobool116 = icmp eq i8 %changed.0.lcssa, 0, !dbg !1501
  br i1 %tobool116, label %if.else120, label %if.then117, !dbg !1503

if.then117:                                       ; preds = %for.end
  store i32 %neweltindex.0.lcssa, i32* %numwords, align 8, !dbg !1504
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 4, !dbg !1506
  %40 = bitcast i64** %elts to i8**, !dbg !1506
  %41 = load i8*, i8** %40, align 8, !dbg !1506
  call void @free(i8* %41) #6, !dbg !1507
  store i8* %call40, i8** %40, align 8, !dbg !1508
  %n_elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 0, !dbg !1509
  store i32 %add, i32* %n_elts, align 8, !dbg !1510
  br label %cleanup, !dbg !1511

if.else120:                                       ; preds = %for.end
  call void @free(i8* %call40) #6, !dbg !1512
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %if.else120, %if.else, %entry, %if.then6
  %retval.0 = phi i8 [ 1, %if.then6 ], [ 0, %entry ], [ 0, %if.else ], [ 0, %if.else120 ], [ %changed.0.lcssa, %if.then117 ], !dbg !1389
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1513
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1513
  ret i8 %retval.0, !dbg !1513
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

declare dso_local void @sbitmap_a_or_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_copy_n(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ebitmap_ior(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %src1, %struct.ebitmap_def* %src2) local_unnamed_addr #4 !dbg !1514 {
entry:
  %sbi = alloca %struct.sbitmap_iterator, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %dst, metadata !1518, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src1, metadata !1519, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src2, metadata !1520, metadata !DIExpression()), !dbg !1542
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src1, i64 0, i32 1, !dbg !1543
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1543
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 1, !dbg !1544
  %1 = load i32, i32* %n_bits, align 8, !dbg !1544
  call void @llvm.dbg.value(metadata i32 %1, metadata !1521, metadata !DIExpression()), !dbg !1542
  %wordmask1 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src2, i64 0, i32 1, !dbg !1545
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1545
  %n_bits2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i64 0, i32 1, !dbg !1546
  %3 = load i32, i32* %n_bits2, align 8, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %3, metadata !1522, metadata !DIExpression()), !dbg !1542
  %4 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !1547
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1547
  %5 = bitcast i32* %i to i8*, !dbg !1548
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1548
  call void @llvm.dbg.value(metadata i32 0, metadata !1526, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 0, metadata !1527, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 0, metadata !1528, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 0, metadata !1529, metadata !DIExpression()), !dbg !1542
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 5, !dbg !1549
  store i64* null, i64** %cache, align 8, !dbg !1550
  %cmp = icmp ugt i32 %1, %3, !dbg !1551
  %. = select i1 %cmp, i32 %1, i32 %3, !dbg !1551
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc_with_popcount(i32 %.) #6, !dbg !1552
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !1525, metadata !DIExpression()), !dbg !1542
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !1553
  %cmp3 = icmp eq i32 %1, %3, !dbg !1554
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1556

if.then:                                          ; preds = %entry
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1557
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1559
  tail call void @sbitmap_a_or_b(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %6, %struct.simple_bitmap_def* %7) #6, !dbg !1560
  br label %if.end16, !dbg !1561

if.else:                                          ; preds = %entry
  %cmp6 = icmp ult i32 %1, %3, !dbg !1562
  br i1 %cmp6, label %if.else11, label %if.then7, !dbg !1565

if.then7:                                         ; preds = %if.else
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1566
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %8, i64 0, i32 2, !dbg !1568
  %9 = load i32, i32* %size, align 4, !dbg !1568
  tail call void @sbitmap_copy_n(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %8, i32 %9) #6, !dbg !1569
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1570
  tail call void @sbitmap_a_or_b(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %10) #6, !dbg !1571
  br label %if.end16, !dbg !1572

if.else11:                                        ; preds = %if.else
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1573
  %size14 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %11, i64 0, i32 2, !dbg !1575
  %12 = load i32, i32* %size14, align 4, !dbg !1575
  tail call void @sbitmap_copy_n(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %11, i32 %12) #6, !dbg !1576
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1577
  tail call void @sbitmap_a_or_b(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %13) #6, !dbg !1578
  br label %if.end16

if.end16:                                         ; preds = %if.then7, %if.else11, %if.then
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src1, i64 0, i32 2, !dbg !1579
  %14 = load i32, i32* %numwords, align 8, !dbg !1579
  %numwords17 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src2, i64 0, i32 2, !dbg !1580
  %15 = load i32, i32* %numwords17, align 8, !dbg !1580
  %add = add i32 %14, %15, !dbg !1581
  call void @llvm.dbg.value(metadata i32 %add, metadata !1531, metadata !DIExpression()), !dbg !1542
  %conv = zext i32 %add to i64, !dbg !1582
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1582
  %call18 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !1582
  %16 = bitcast i8* %call18 to i64*, !dbg !1582
  call void @llvm.dbg.value(metadata i64* %16, metadata !1530, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1523, metadata !DIExpression(DW_OP_deref)), !dbg !1542
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %call, i32 0) #8, !dbg !1583
  %wordmask72 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 1, !dbg !1584
  br label %for.cond, !dbg !1583

for.cond:                                         ; preds = %for.inc, %if.end16
  %neweltindex.0 = phi i32 [ 0, %if.end16 ], [ %neweltindex.2, %for.inc ], !dbg !1542
  %src1eltindex.0 = phi i32 [ 0, %if.end16 ], [ %src1eltindex.2, %for.inc ], !dbg !1542
  %src2eltindex.0 = phi i32 [ 0, %if.end16 ], [ %src2eltindex.2, %for.inc ], !dbg !1542
  %changed.0 = phi i8 [ 0, %if.end16 ], [ %changed.2, %for.inc ], !dbg !1542
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !1529, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %src2eltindex.0, metadata !1528, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %src1eltindex.0, metadata !1527, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1526, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1523, metadata !DIExpression(DW_OP_deref)), !dbg !1542
  call void @llvm.dbg.value(metadata i32* %i, metadata !1524, metadata !DIExpression(DW_OP_deref)), !dbg !1542
  %call19 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %i) #8, !dbg !1585
  %tobool = icmp eq i8 %call19, 0, !dbg !1583
  br i1 %tobool, label %for.end, label %for.body, !dbg !1583

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %17, metadata !1524, metadata !DIExpression()), !dbg !1542
  %18 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1587
  %n_bits21 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %18, i64 0, i32 1, !dbg !1588
  %19 = load i32, i32* %n_bits21, align 8, !dbg !1588
  %cmp22 = icmp ult i32 %17, %19, !dbg !1589
  br i1 %cmp22, label %land.rhs, label %land.end, !dbg !1590

land.rhs:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %17, metadata !1524, metadata !DIExpression()), !dbg !1542
  %div = lshr i32 %17, 6, !dbg !1591
  %idxprom = zext i32 %div to i64, !dbg !1591
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %18, i64 0, i32 3, i64 %idxprom, !dbg !1591
  %20 = load i64, i64* %arrayidx, align 8, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %17, metadata !1524, metadata !DIExpression()), !dbg !1542
  %rem = and i32 %17, 63, !dbg !1591
  %sh_prom = zext i32 %rem to i64, !dbg !1591
  %21 = shl i64 1, %sh_prom, !dbg !1590
  %22 = and i64 %20, %21, !dbg !1590
  %tobool25 = icmp ne i64 %22, 0, !dbg !1590
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %23 = phi i1 [ false, %for.body ], [ %tobool25, %land.rhs ], !dbg !1592
  call void @llvm.dbg.value(metadata i1 %23, metadata !1532, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %17, metadata !1524, metadata !DIExpression()), !dbg !1542
  %24 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1593
  %n_bits28 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %24, i64 0, i32 1, !dbg !1594
  %25 = load i32, i32* %n_bits28, align 8, !dbg !1594
  %cmp29 = icmp ult i32 %17, %25, !dbg !1595
  br i1 %cmp29, label %land.rhs31, label %land.end42, !dbg !1596

land.rhs31:                                       ; preds = %land.end
  call void @llvm.dbg.value(metadata i32 %17, metadata !1524, metadata !DIExpression()), !dbg !1542
  %div34 = lshr i32 %17, 6, !dbg !1597
  %idxprom35 = zext i32 %div34 to i64, !dbg !1597
  %arrayidx36 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %24, i64 0, i32 3, i64 %idxprom35, !dbg !1597
  %26 = load i64, i64* %arrayidx36, align 8, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %17, metadata !1524, metadata !DIExpression()), !dbg !1542
  %rem37 = and i32 %17, 63, !dbg !1597
  %sh_prom38 = zext i32 %rem37 to i64, !dbg !1597
  %27 = shl i64 1, %sh_prom38, !dbg !1596
  %28 = and i64 %26, %27, !dbg !1596
  %tobool41 = icmp ne i64 %28, 0, !dbg !1596
  br label %land.end42

land.end42:                                       ; preds = %land.rhs31, %land.end
  %29 = phi i1 [ false, %land.end ], [ %tobool41, %land.rhs31 ], !dbg !1592
  call void @llvm.dbg.value(metadata i1 %29, metadata !1536, metadata !DIExpression()), !dbg !1592
  %or.cond = and i1 %23, %29, !dbg !1598
  br i1 %or.cond, label %if.then49, label %if.else56, !dbg !1598

if.then49:                                        ; preds = %land.end42
  %inc = add i32 %src1eltindex.0, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1527, metadata !DIExpression()), !dbg !1542
  %call50 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src1, i32 %src1eltindex.0) #8, !dbg !1602
  %inc51 = add i32 %src2eltindex.0, 1, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %inc51, metadata !1528, metadata !DIExpression()), !dbg !1542
  %call52 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src2, i32 %src2eltindex.0) #8, !dbg !1604
  %or = or i64 %call50, %call52, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %or, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1526, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1542
  %idxprom54 = zext i32 %neweltindex.0 to i64, !dbg !1606
  %arrayidx55 = getelementptr inbounds i64, i64* %16, i64 %idxprom54, !dbg !1606
  store i64 %or, i64* %arrayidx55, align 8, !dbg !1607
  br label %if.end71, !dbg !1608

if.else56:                                        ; preds = %land.end42
  br i1 %23, label %if.then58, label %if.else64, !dbg !1609

if.then58:                                        ; preds = %if.else56
  %inc59 = add i32 %src1eltindex.0, 1, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %inc59, metadata !1527, metadata !DIExpression()), !dbg !1542
  %call60 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src1, i32 %src1eltindex.0) #8, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %call60, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1526, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1542
  %idxprom62 = zext i32 %neweltindex.0 to i64, !dbg !1614
  %arrayidx63 = getelementptr inbounds i64, i64* %16, i64 %idxprom62, !dbg !1614
  store i64 %call60, i64* %arrayidx63, align 8, !dbg !1615
  br label %if.end71, !dbg !1616

if.else64:                                        ; preds = %if.else56
  %inc65 = add i32 %src2eltindex.0, 1, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %inc65, metadata !1528, metadata !DIExpression()), !dbg !1542
  %call66 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src2, i32 %src2eltindex.0) #8, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %call66, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1526, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1542
  %idxprom68 = zext i32 %neweltindex.0 to i64, !dbg !1620
  %arrayidx69 = getelementptr inbounds i64, i64* %16, i64 %idxprom68, !dbg !1620
  store i64 %call66, i64* %arrayidx69, align 8, !dbg !1621
  br label %if.end71

if.end71:                                         ; preds = %if.then58, %if.else64, %if.then49
  %src1eltindex.2 = phi i32 [ %inc, %if.then49 ], [ %inc59, %if.then58 ], [ %src1eltindex.0, %if.else64 ], !dbg !1622
  %src2eltindex.2 = phi i32 [ %inc51, %if.then49 ], [ %src2eltindex.0, %if.then58 ], [ %inc65, %if.else64 ], !dbg !1542
  %tmpword.1 = phi i64 [ %or, %if.then49 ], [ %call60, %if.then58 ], [ %call66, %if.else64 ], !dbg !1622
  %neweltindex.2 = add i32 %neweltindex.0, 1, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %tmpword.1, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %src2eltindex.2, metadata !1528, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %src1eltindex.2, metadata !1527, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %neweltindex.2, metadata !1526, metadata !DIExpression()), !dbg !1542
  %30 = load i32, i32* %i, align 4, !dbg !1623
  call void @llvm.dbg.value(metadata i32 %30, metadata !1524, metadata !DIExpression()), !dbg !1542
  %31 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask72, align 8, !dbg !1624
  %n_bits73 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %31, i64 0, i32 1, !dbg !1625
  %32 = load i32, i32* %n_bits73, align 8, !dbg !1625
  %cmp74 = icmp ult i32 %30, %32, !dbg !1626
  br i1 %cmp74, label %lor.lhs.false, label %for.inc, !dbg !1627

lor.lhs.false:                                    ; preds = %if.end71
  call void @llvm.dbg.value(metadata i32 %30, metadata !1524, metadata !DIExpression()), !dbg !1542
  %div78 = lshr i32 %30, 6, !dbg !1628
  %idxprom79 = zext i32 %div78 to i64, !dbg !1628
  %arrayidx80 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %31, i64 0, i32 3, i64 %idxprom79, !dbg !1628
  %33 = load i64, i64* %arrayidx80, align 8, !dbg !1628
  call void @llvm.dbg.value(metadata i32 %30, metadata !1524, metadata !DIExpression()), !dbg !1542
  %rem81 = and i32 %30, 63, !dbg !1628
  %sh_prom82 = zext i32 %rem81 to i64, !dbg !1628
  %34 = shl i64 1, %sh_prom82, !dbg !1628
  %35 = and i64 %33, %34, !dbg !1628
  %tobool85 = icmp eq i64 %35, 0, !dbg !1628
  br i1 %tobool85, label %for.inc, label %if.else87, !dbg !1629

if.else87:                                        ; preds = %lor.lhs.false
  %tobool88 = icmp eq i8 %changed.0, 0, !dbg !1630
  br i1 %tobool88, label %if.then89, label %for.inc, !dbg !1631

if.then89:                                        ; preds = %if.else87
  call void @llvm.dbg.value(metadata i32 %30, metadata !1524, metadata !DIExpression()), !dbg !1542
  %conv91 = zext i32 %30 to i64, !dbg !1632
  %call92 = call i64 @sbitmap_popcount(%struct.simple_bitmap_def* %31, i64 %conv91) #6, !dbg !1633
  %conv93 = trunc i64 %call92 to i32, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %conv93, metadata !1538, metadata !DIExpression()), !dbg !1634
  %call94 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %dst, i32 %conv93) #8, !dbg !1635
  %cmp95 = icmp ne i64 %call94, %tmpword.1, !dbg !1636
  %conv96 = zext i1 %cmp95 to i8, !dbg !1636
  call void @llvm.dbg.value(metadata i8 %conv96, metadata !1529, metadata !DIExpression()), !dbg !1542
  br label %for.inc, !dbg !1637

for.inc:                                          ; preds = %if.else87, %lor.lhs.false, %if.end71, %if.then89
  %changed.2 = phi i8 [ 1, %lor.lhs.false ], [ 1, %if.end71 ], [ %changed.0, %if.else87 ], [ %conv96, %if.then89 ], !dbg !1542
  call void @llvm.dbg.value(metadata i8 %changed.2, metadata !1529, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1523, metadata !DIExpression(DW_OP_deref)), !dbg !1542
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #8, !dbg !1585
  br label %for.cond, !dbg !1585, !llvm.loop !1638

for.end:                                          ; preds = %for.cond
  %neweltindex.0.lcssa = phi i32 [ %neweltindex.0, %for.cond ], !dbg !1542
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond ], !dbg !1542
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1526, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1529, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1526, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1529, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1526, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1529, metadata !DIExpression()), !dbg !1542
  %tobool102 = icmp eq i8 %changed.0.lcssa, 0, !dbg !1640
  br i1 %tobool102, label %if.else109, label %if.then103, !dbg !1642

if.then103:                                       ; preds = %for.end
  %36 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask72, align 8, !dbg !1643
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %36, i64 0, i32 0, !dbg !1643
  %37 = load i8*, i8** %popcount, align 8, !dbg !1643
  call void @free(i8* %37) #6, !dbg !1643
  %38 = bitcast %struct.simple_bitmap_def** %wordmask72 to i8**, !dbg !1643
  %39 = load i8*, i8** %38, align 8, !dbg !1643
  call void @free(i8* %39) #6, !dbg !1643
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %wordmask72, align 8, !dbg !1645
  %numwords107 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 2, !dbg !1646
  store i32 %neweltindex.0.lcssa, i32* %numwords107, align 8, !dbg !1647
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 4, !dbg !1648
  %40 = bitcast i64** %elts to i8**, !dbg !1648
  %41 = load i8*, i8** %40, align 8, !dbg !1648
  call void @free(i8* %41) #6, !dbg !1649
  store i8* %call18, i8** %40, align 8, !dbg !1650
  %n_elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 0, !dbg !1651
  store i32 %add, i32* %n_elts, align 8, !dbg !1652
  br label %if.end111, !dbg !1653

if.else109:                                       ; preds = %for.end
  %popcount110 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !1654
  %42 = load i8*, i8** %popcount110, align 8, !dbg !1654
  call void @free(i8* %42) #6, !dbg !1654
  %43 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !1654
  call void @free(i8* %43) #6, !dbg !1654
  call void @free(i8* %call18) #6, !dbg !1656
  br label %if.end111

if.end111:                                        ; preds = %if.else109, %if.then103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1657
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1657
  ret i8 %changed.0.lcssa, !dbg !1658
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ebitmap_and_compl_into(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %src) local_unnamed_addr #4 !dbg !1659 {
entry:
  %i = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %dst, metadata !1661, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src, metadata !1662, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1679
  %0 = bitcast i32* %i to i8*, !dbg !1680
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !1680
  call void @llvm.dbg.value(metadata i32 0, metadata !1665, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 0, metadata !1666, metadata !DIExpression()), !dbg !1679
  %1 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !1681
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !1681
  %cmp = icmp eq %struct.ebitmap_def* %dst, %src, !dbg !1682
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !1682

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 805, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1682
  br label %cond.end, !dbg !1682

cond.end:                                         ; preds = %entry, %cond.true
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 5, !dbg !1683
  store i64* null, i64** %cache, align 8, !dbg !1684
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 2, !dbg !1685
  %2 = load i32, i32* %numwords, align 8, !dbg !1685
  %cmp1 = icmp eq i32 %2, 0, !dbg !1687
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !1688

if.end:                                           ; preds = %cond.end
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 1, !dbg !1689
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1689
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1667, metadata !DIExpression(DW_OP_deref)), !dbg !1679
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %3, i32 0) #8, !dbg !1689
  %wordmask2 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 1, !dbg !1690
  br label %for.cond, !dbg !1689

for.cond:                                         ; preds = %for.inc, %if.end
  %dsteltindex.0 = phi i32 [ 0, %if.end ], [ %dsteltindex.1, %for.inc ], !dbg !1679
  %neweltindex.0 = phi i32 [ 0, %if.end ], [ %neweltindex.2, %for.inc ], !dbg !1679
  %changed.0 = phi i8 [ 0, %if.end ], [ %changed.2, %for.inc ], !dbg !1691
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !1663, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1665, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %dsteltindex.0, metadata !1666, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32* %i, metadata !1664, metadata !DIExpression(DW_OP_deref)), !dbg !1679
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1667, metadata !DIExpression(DW_OP_deref)), !dbg !1679
  %call = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %i) #8, !dbg !1692
  %tobool = icmp eq i8 %call, 0, !dbg !1689
  br i1 %tobool, label %for.end, label %for.body, !dbg !1689

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %4, metadata !1664, metadata !DIExpression()), !dbg !1679
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask2, align 8, !dbg !1694
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 1, !dbg !1695
  %6 = load i32, i32* %n_bits, align 8, !dbg !1695
  %cmp3 = icmp ult i32 %4, %6, !dbg !1696
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !1697

land.rhs:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %4, metadata !1664, metadata !DIExpression()), !dbg !1679
  %div = lshr i32 %4, 6, !dbg !1698
  %idxprom = zext i32 %div to i64, !dbg !1698
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 3, i64 %idxprom, !dbg !1698
  %7 = load i64, i64* %arrayidx, align 8, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %4, metadata !1664, metadata !DIExpression()), !dbg !1679
  %rem = and i32 %4, 63, !dbg !1698
  %sh_prom = zext i32 %rem to i64, !dbg !1698
  %8 = shl i64 1, %sh_prom, !dbg !1697
  %9 = and i64 %7, %8, !dbg !1697
  %tobool5 = icmp ne i64 %9, 0, !dbg !1697
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %10 = phi i1 [ false, %for.body ], [ %tobool5, %land.rhs ], !dbg !1690
  call void @llvm.dbg.value(metadata i1 %10, metadata !1668, metadata !DIExpression()), !dbg !1690
  br i1 %10, label %if.then7, label %if.else30, !dbg !1699

if.then7:                                         ; preds = %land.end
  call void @llvm.dbg.value(metadata i32 %4, metadata !1664, metadata !DIExpression()), !dbg !1679
  %conv9 = zext i32 %4 to i64, !dbg !1700
  %call10 = call i64 @sbitmap_popcount(%struct.simple_bitmap_def* %5, i64 %conv9) #6, !dbg !1701
  %conv11 = trunc i64 %call10 to i32, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %conv11, metadata !1672, metadata !DIExpression()), !dbg !1702
  %call12 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %dst, i32 %dsteltindex.0) #8, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %call12, metadata !1675, metadata !DIExpression()), !dbg !1702
  %call13 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src, i32 %conv11) #8, !dbg !1704
  %neg = xor i64 %call13, -1, !dbg !1705
  %and14 = and i64 %call12, %neg, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %and14, metadata !1675, metadata !DIExpression()), !dbg !1702
  %tobool15 = icmp eq i8 %changed.0, 0, !dbg !1707
  br i1 %tobool15, label %if.then16, label %if.end22, !dbg !1709

if.then16:                                        ; preds = %if.then7
  %call17 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %dst, i32 %dsteltindex.0) #8, !dbg !1710
  %cmp18 = icmp ne i64 %call17, %and14, !dbg !1711
  %conv19 = zext i1 %cmp18 to i8, !dbg !1711
  call void @llvm.dbg.value(metadata i8 %conv19, metadata !1663, metadata !DIExpression()), !dbg !1679
  br label %if.end22, !dbg !1712

if.end22:                                         ; preds = %if.then7, %if.then16
  %changed.1 = phi i8 [ %changed.0, %if.then7 ], [ %conv19, %if.then16 ], !dbg !1679
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !1663, metadata !DIExpression()), !dbg !1679
  %inc = add i32 %dsteltindex.0, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1666, metadata !DIExpression()), !dbg !1679
  %cmp23 = icmp eq i64 %and14, 0, !dbg !1714
  br i1 %cmp23, label %if.else, label %if.then25, !dbg !1715

if.then25:                                        ; preds = %if.end22
  %inc26 = add i32 %neweltindex.0, 1, !dbg !1716
  call void @llvm.dbg.value(metadata i32 %inc26, metadata !1665, metadata !DIExpression()), !dbg !1679
  %call27 = call fastcc i64* @ebitmap_array_grow_get(%struct.ebitmap_def* %dst, i32 %neweltindex.0) #8, !dbg !1717
  call void @llvm.dbg.value(metadata i64* %call27, metadata !1676, metadata !DIExpression()), !dbg !1718
  store i64 %and14, i64* %call27, align 8, !dbg !1719
  br label %for.inc, !dbg !1720

if.else:                                          ; preds = %if.end22
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1721
  %12 = load i32, i32* %i, align 4, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %12, metadata !1664, metadata !DIExpression()), !dbg !1679
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %11, i32 %12) #8, !dbg !1723
  br label %for.inc

if.else30:                                        ; preds = %land.end
  %inc31 = add i32 %dsteltindex.0, 1, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %inc31, metadata !1666, metadata !DIExpression()), !dbg !1679
  %inc32 = add i32 %neweltindex.0, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i32 %inc32, metadata !1665, metadata !DIExpression()), !dbg !1679
  br label %for.inc

for.inc:                                          ; preds = %if.else30, %if.else, %if.then25
  %dsteltindex.1 = phi i32 [ %inc31, %if.else30 ], [ %inc, %if.else ], [ %inc, %if.then25 ], !dbg !1727
  %neweltindex.2 = phi i32 [ %inc32, %if.else30 ], [ %neweltindex.0, %if.else ], [ %inc26, %if.then25 ], !dbg !1727
  %changed.2 = phi i8 [ %changed.0, %if.else30 ], [ %changed.1, %if.else ], [ %changed.1, %if.then25 ], !dbg !1691
  call void @llvm.dbg.value(metadata i8 %changed.2, metadata !1663, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %neweltindex.2, metadata !1665, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %dsteltindex.1, metadata !1666, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1667, metadata !DIExpression(DW_OP_deref)), !dbg !1679
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #8, !dbg !1692
  br label %for.cond, !dbg !1692, !llvm.loop !1728

for.end:                                          ; preds = %for.cond
  %neweltindex.0.lcssa = phi i32 [ %neweltindex.0, %for.cond ], !dbg !1679
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond ], !dbg !1691
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1665, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1663, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1665, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1663, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1665, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1663, metadata !DIExpression()), !dbg !1679
  %numwords34 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 2, !dbg !1730
  store i32 %neweltindex.0.lcssa, i32* %numwords34, align 8, !dbg !1731
  br label %cleanup, !dbg !1732

cleanup:                                          ; preds = %cond.end, %for.end
  %retval.0 = phi i8 [ %changed.0.lcssa, %for.end ], [ 0, %cond.end ], !dbg !1679
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !1733
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !1733
  ret i8 %retval.0, !dbg !1733
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ebitmap_and_compl(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %src1, %struct.ebitmap_def* %src2) local_unnamed_addr #4 !dbg !1734 {
entry:
  %sbi = alloca %struct.sbitmap_iterator, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %dst, metadata !1736, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src1, metadata !1737, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src2, metadata !1738, metadata !DIExpression()), !dbg !1760
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src1, i64 0, i32 1, !dbg !1761
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1761
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 1, !dbg !1762
  %1 = load i32, i32* %n_bits, align 8, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %1, metadata !1739, metadata !DIExpression()), !dbg !1760
  %2 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !1763
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !1763
  %3 = bitcast i32* %i to i8*, !dbg !1764
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1764
  call void @llvm.dbg.value(metadata i32 0, metadata !1743, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 0, metadata !1744, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 0, metadata !1745, metadata !DIExpression()), !dbg !1760
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 5, !dbg !1765
  store i64* null, i64** %cache, align 8, !dbg !1766
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc_with_popcount(i32 %1) #6, !dbg !1767
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !1742, metadata !DIExpression()), !dbg !1760
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !1768
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1769
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %4) #6, !dbg !1770
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src1, i64 0, i32 2, !dbg !1771
  %5 = load i32, i32* %numwords, align 8, !dbg !1771
  call void @llvm.dbg.value(metadata i32 %5, metadata !1747, metadata !DIExpression()), !dbg !1760
  %conv = zext i32 %5 to i64, !dbg !1772
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1772
  %call2 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !1772
  %6 = bitcast i8* %call2 to i64*, !dbg !1772
  call void @llvm.dbg.value(metadata i64* %6, metadata !1746, metadata !DIExpression()), !dbg !1760
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1773
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1740, metadata !DIExpression(DW_OP_deref)), !dbg !1760
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %7, i32 0) #8, !dbg !1773
  %wordmask5 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src2, i64 0, i32 1, !dbg !1774
  %wordmask33 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 1, !dbg !1775
  br label %for.cond, !dbg !1773

for.cond:                                         ; preds = %for.inc, %entry
  %neweltindex.0 = phi i32 [ 0, %entry ], [ %neweltindex.2, %for.inc ], !dbg !1760
  %src1eltindex.0 = phi i32 [ 0, %entry ], [ %src1eltindex.1, %for.inc ], !dbg !1760
  %changed.0 = phi i8 [ 0, %entry ], [ %changed.2, %for.inc ], !dbg !1760
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !1745, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 %src1eltindex.0, metadata !1744, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 %neweltindex.0, metadata !1743, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1740, metadata !DIExpression(DW_OP_deref)), !dbg !1760
  call void @llvm.dbg.value(metadata i32* %i, metadata !1741, metadata !DIExpression(DW_OP_deref)), !dbg !1760
  %call4 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %i) #8, !dbg !1776
  %tobool = icmp eq i8 %call4, 0, !dbg !1773
  br i1 %tobool, label %for.end, label %for.body, !dbg !1773

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %8, metadata !1741, metadata !DIExpression()), !dbg !1760
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask5, align 8, !dbg !1778
  %n_bits6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %9, i64 0, i32 1, !dbg !1779
  %10 = load i32, i32* %n_bits6, align 8, !dbg !1779
  %cmp = icmp ult i32 %8, %10, !dbg !1780
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1781

land.rhs:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %8, metadata !1741, metadata !DIExpression()), !dbg !1760
  %div = lshr i32 %8, 6, !dbg !1782
  %idxprom = zext i32 %div to i64, !dbg !1782
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !1782
  %11 = load i64, i64* %arrayidx, align 8, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %8, metadata !1741, metadata !DIExpression()), !dbg !1760
  %rem = and i32 %8, 63, !dbg !1782
  %sh_prom = zext i32 %rem to i64, !dbg !1782
  %12 = shl i64 1, %sh_prom, !dbg !1781
  %13 = and i64 %11, %12, !dbg !1781
  %tobool9 = icmp ne i64 %13, 0, !dbg !1781
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %14 = phi i1 [ false, %for.body ], [ %tobool9, %land.rhs ], !dbg !1774
  call void @llvm.dbg.value(metadata i1 %14, metadata !1748, metadata !DIExpression()), !dbg !1774
  br i1 %14, label %if.then, label %if.else24, !dbg !1783

if.then:                                          ; preds = %land.end
  call void @llvm.dbg.value(metadata i32 %8, metadata !1741, metadata !DIExpression()), !dbg !1760
  %conv13 = zext i32 %8 to i64, !dbg !1784
  %call14 = call i64 @sbitmap_popcount(%struct.simple_bitmap_def* %9, i64 %conv13) #6, !dbg !1785
  %conv15 = trunc i64 %call14 to i32, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %conv15, metadata !1753, metadata !DIExpression()), !dbg !1786
  %inc = add i32 %src1eltindex.0, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1744, metadata !DIExpression()), !dbg !1760
  %call16 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src1, i32 %src1eltindex.0) #8, !dbg !1788
  %call17 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src2, i32 %conv15) #8, !dbg !1789
  %neg = xor i64 %call17, -1, !dbg !1790
  %and18 = and i64 %call16, %neg, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %and18, metadata !1752, metadata !DIExpression()), !dbg !1774
  %tobool19 = icmp eq i64 %and18, 0, !dbg !1792
  br i1 %tobool19, label %if.else, label %if.then20, !dbg !1794

if.then20:                                        ; preds = %if.then
  %inc21 = add i32 %neweltindex.0, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !1743, metadata !DIExpression()), !dbg !1760
  %idxprom22 = zext i32 %neweltindex.0 to i64, !dbg !1797
  %arrayidx23 = getelementptr inbounds i64, i64* %6, i64 %idxprom22, !dbg !1797
  store i64 %and18, i64* %arrayidx23, align 8, !dbg !1798
  br label %if.end32, !dbg !1799

if.else:                                          ; preds = %if.then
  %15 = load i32, i32* %i, align 4, !dbg !1800
  call void @llvm.dbg.value(metadata i32 %15, metadata !1741, metadata !DIExpression()), !dbg !1760
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call, i32 %15) #8, !dbg !1801
  br label %if.end32

if.else24:                                        ; preds = %land.end
  %inc25 = add i32 %src1eltindex.0, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !1744, metadata !DIExpression()), !dbg !1760
  %call26 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %src1, i32 %src1eltindex.0) #8, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %call26, metadata !1752, metadata !DIExpression()), !dbg !1774
  %cmp27 = icmp eq i64 %call26, 0, !dbg !1805
  br i1 %cmp27, label %cond.true, label %cond.end, !dbg !1805

cond.true:                                        ; preds = %if.else24
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 917, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1805
  br label %cond.end, !dbg !1805

cond.end:                                         ; preds = %if.else24, %cond.true
  %inc29 = add i32 %neweltindex.0, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %inc29, metadata !1743, metadata !DIExpression()), !dbg !1760
  %idxprom30 = zext i32 %neweltindex.0 to i64, !dbg !1807
  %arrayidx31 = getelementptr inbounds i64, i64* %6, i64 %idxprom30, !dbg !1807
  store i64 %call26, i64* %arrayidx31, align 8, !dbg !1808
  br label %if.end32

if.end32:                                         ; preds = %if.then20, %if.else, %cond.end
  %neweltindex.2 = phi i32 [ %inc29, %cond.end ], [ %inc21, %if.then20 ], [ %neweltindex.0, %if.else ], !dbg !1809
  %src1eltindex.1 = phi i32 [ %inc25, %cond.end ], [ %inc, %if.then20 ], [ %inc, %if.else ], !dbg !1809
  %tmpword.0 = phi i64 [ %call26, %cond.end ], [ %and18, %if.then20 ], [ 0, %if.else ], !dbg !1809
  call void @llvm.dbg.value(metadata i64 %tmpword.0, metadata !1752, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %src1eltindex.1, metadata !1744, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 %neweltindex.2, metadata !1743, metadata !DIExpression()), !dbg !1760
  %16 = load i32, i32* %i, align 4, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %16, metadata !1741, metadata !DIExpression()), !dbg !1760
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask33, align 8, !dbg !1811
  %n_bits34 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %17, i64 0, i32 1, !dbg !1812
  %18 = load i32, i32* %n_bits34, align 8, !dbg !1812
  %cmp35 = icmp ult i32 %16, %18, !dbg !1813
  br i1 %cmp35, label %lor.lhs.false, label %for.inc, !dbg !1814

lor.lhs.false:                                    ; preds = %if.end32
  call void @llvm.dbg.value(metadata i32 %16, metadata !1741, metadata !DIExpression()), !dbg !1760
  %div39 = lshr i32 %16, 6, !dbg !1815
  %idxprom40 = zext i32 %div39 to i64, !dbg !1815
  %arrayidx41 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %17, i64 0, i32 3, i64 %idxprom40, !dbg !1815
  %19 = load i64, i64* %arrayidx41, align 8, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %16, metadata !1741, metadata !DIExpression()), !dbg !1760
  %rem42 = and i32 %16, 63, !dbg !1815
  %sh_prom43 = zext i32 %rem42 to i64, !dbg !1815
  %20 = shl i64 1, %sh_prom43, !dbg !1815
  %21 = and i64 %19, %20, !dbg !1815
  %tobool46 = icmp eq i64 %21, 0, !dbg !1815
  br i1 %tobool46, label %for.inc, label %if.else48, !dbg !1816

if.else48:                                        ; preds = %lor.lhs.false
  %tobool49 = icmp eq i8 %changed.0, 0, !dbg !1817
  br i1 %tobool49, label %if.then50, label %for.inc, !dbg !1818

if.then50:                                        ; preds = %if.else48
  call void @llvm.dbg.value(metadata i32 %16, metadata !1741, metadata !DIExpression()), !dbg !1760
  %conv52 = zext i32 %16 to i64, !dbg !1819
  %call53 = call i64 @sbitmap_popcount(%struct.simple_bitmap_def* %17, i64 %conv52) #6, !dbg !1820
  %conv54 = trunc i64 %call53 to i32, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %conv54, metadata !1756, metadata !DIExpression()), !dbg !1821
  %call55 = call fastcc i64 @ebitmap_array_get(%struct.ebitmap_def* %dst, i32 %conv54) #8, !dbg !1822
  %cmp56 = icmp ne i64 %call55, %tmpword.0, !dbg !1823
  %conv57 = zext i1 %cmp56 to i8, !dbg !1823
  call void @llvm.dbg.value(metadata i8 %conv57, metadata !1745, metadata !DIExpression()), !dbg !1760
  br label %for.inc, !dbg !1824

for.inc:                                          ; preds = %if.else48, %lor.lhs.false, %if.end32, %if.then50
  %changed.2 = phi i8 [ 1, %lor.lhs.false ], [ 1, %if.end32 ], [ %changed.0, %if.else48 ], [ %conv57, %if.then50 ], !dbg !1760
  call void @llvm.dbg.value(metadata i8 %changed.2, metadata !1745, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !1740, metadata !DIExpression(DW_OP_deref)), !dbg !1760
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #8, !dbg !1776
  br label %for.cond, !dbg !1776, !llvm.loop !1825

for.end:                                          ; preds = %for.cond
  %neweltindex.0.lcssa = phi i32 [ %neweltindex.0, %for.cond ], !dbg !1760
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond ], !dbg !1760
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1743, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1745, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1743, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1745, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 %neweltindex.0.lcssa, metadata !1743, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1745, metadata !DIExpression()), !dbg !1760
  %tobool62 = icmp eq i8 %changed.0.lcssa, 0, !dbg !1827
  br i1 %tobool62, label %if.else69, label %if.then63, !dbg !1829

if.then63:                                        ; preds = %for.end
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask33, align 8, !dbg !1830
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %22, i64 0, i32 0, !dbg !1830
  %23 = load i8*, i8** %popcount, align 8, !dbg !1830
  call void @free(i8* %23) #6, !dbg !1830
  %24 = bitcast %struct.simple_bitmap_def** %wordmask33 to i8**, !dbg !1830
  %25 = load i8*, i8** %24, align 8, !dbg !1830
  call void @free(i8* %25) #6, !dbg !1830
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %wordmask33, align 8, !dbg !1832
  %numwords67 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 2, !dbg !1833
  store i32 %neweltindex.0.lcssa, i32* %numwords67, align 8, !dbg !1834
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 4, !dbg !1835
  %26 = bitcast i64** %elts to i8**, !dbg !1835
  %27 = load i8*, i8** %26, align 8, !dbg !1835
  call void @free(i8* %27) #6, !dbg !1836
  store i8* %call2, i8** %26, align 8, !dbg !1837
  %n_elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 0, !dbg !1838
  store i32 %5, i32* %n_elts, align 8, !dbg !1839
  br label %if.end70, !dbg !1840

if.else69:                                        ; preds = %for.end
  %28 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !1841
  call void @free(i8* %28) #6, !dbg !1843
  call void @free(i8* %call2) #6, !dbg !1844
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1845
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !1845
  ret i8 %changed.0.lcssa, !dbg !1846
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ebitmap_ior_and_compl(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %a, %struct.ebitmap_def* %b, %struct.ebitmap_def* %c) local_unnamed_addr #4 !dbg !1847 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %dst, metadata !1851, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %a, metadata !1852, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %b, metadata !1853, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %c, metadata !1854, metadata !DIExpression()), !dbg !1857
  %call = tail call %struct.ebitmap_def* @ebitmap_alloc(i32 1) #8, !dbg !1858
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %call, metadata !1856, metadata !DIExpression()), !dbg !1857
  %cache = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 5, !dbg !1859
  store i64* null, i64** %cache, align 8, !dbg !1860
  %call1 = tail call zeroext i8 @ebitmap_and_compl(%struct.ebitmap_def* %call, %struct.ebitmap_def* %b, %struct.ebitmap_def* %c) #8, !dbg !1861
  %call2 = tail call zeroext i8 @ebitmap_ior(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %a, %struct.ebitmap_def* %call) #8, !dbg !1862
  call void @llvm.dbg.value(metadata i8 %call2, metadata !1855, metadata !DIExpression()), !dbg !1857
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %call, i64 0, i32 4, !dbg !1863
  %0 = bitcast i64** %elts to i8**, !dbg !1863
  %1 = load i8*, i8** %0, align 8, !dbg !1863
  tail call void @free(i8* %1) #6, !dbg !1863
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %call, i64 0, i32 1, !dbg !1863
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1863
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i64 0, i32 0, !dbg !1863
  %3 = load i8*, i8** %popcount, align 8, !dbg !1863
  tail call void @free(i8* %3) #6, !dbg !1863
  %4 = bitcast %struct.simple_bitmap_def** %wordmask to i8**, !dbg !1863
  %5 = load i8*, i8** %4, align 8, !dbg !1863
  tail call void @free(i8* %5) #6, !dbg !1863
  %6 = bitcast %struct.ebitmap_def* %call to i8*, !dbg !1863
  tail call void @free(i8* %6) #6, !dbg !1863
  ret i8 %call2, !dbg !1864
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ebitmap_equal_p(%struct.ebitmap_def* %dst, %struct.ebitmap_def* %src) local_unnamed_addr #4 !dbg !1865 {
entry:
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %dst, metadata !1867, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata %struct.ebitmap_def* %src, metadata !1868, metadata !DIExpression()), !dbg !1870
  %wordmask = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 1, !dbg !1871
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1871
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 2, !dbg !1871
  %1 = load i32, i32* %size, align 4, !dbg !1871
  %wordmask1 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 1, !dbg !1871
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1871
  %size2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i64 0, i32 2, !dbg !1871
  %3 = load i32, i32* %size2, align 4, !dbg !1871
  %cmp = icmp ult i32 %1, %3, !dbg !1871
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1871

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1871

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1871

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %3, %cond.false ], !dbg !1871
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1869, metadata !DIExpression()), !dbg !1870
  %numwords = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 2, !dbg !1872
  %4 = load i32, i32* %numwords, align 8, !dbg !1872
  %numwords7 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 2, !dbg !1874
  %5 = load i32, i32* %numwords7, align 8, !dbg !1874
  %cmp8 = icmp eq i32 %4, %5, !dbg !1875
  br i1 %cmp8, label %if.end, label %cleanup, !dbg !1876

if.end:                                           ; preds = %cond.end
  %cmp11 = icmp eq i32 %cond, %1, !dbg !1877
  br i1 %cmp11, label %land.lhs.true, label %if.else, !dbg !1879

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @sbitmap_equal(%struct.simple_bitmap_def* %0, %struct.simple_bitmap_def* %2) #6, !dbg !1880
  %tobool = icmp eq i32 %call, 0, !dbg !1880
  br i1 %tobool, label %cleanup, label %land.lhs.true.if.else_crit_edge, !dbg !1881

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask1, align 8, !dbg !1882
  %size16.phi.trans.insert = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %.pre, i64 0, i32 2, !dbg !1884
  %.pre3 = load i32, i32* %size16.phi.trans.insert, align 4, !dbg !1885
  br label %if.else, !dbg !1881

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end
  %6 = phi i32 [ %.pre3, %land.lhs.true.if.else_crit_edge ], [ %3, %if.end ], !dbg !1885
  %7 = phi %struct.simple_bitmap_def* [ %.pre, %land.lhs.true.if.else_crit_edge ], [ %2, %if.end ], !dbg !1882
  %cmp17 = icmp eq i32 %cond, %6, !dbg !1886
  br i1 %cmp17, label %land.lhs.true18, label %if.end25, !dbg !1887

land.lhs.true18:                                  ; preds = %if.else
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %wordmask, align 8, !dbg !1888
  %call21 = tail call i32 @sbitmap_equal(%struct.simple_bitmap_def* %7, %struct.simple_bitmap_def* %8) #6, !dbg !1889
  %tobool22 = icmp eq i32 %call21, 0, !dbg !1889
  br i1 %tobool22, label %cleanup, label %if.end25, !dbg !1890

if.end25:                                         ; preds = %land.lhs.true18, %if.else
  %elts = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %dst, i64 0, i32 4, !dbg !1891
  %9 = bitcast i64** %elts to i8**, !dbg !1891
  %10 = load i8*, i8** %9, align 8, !dbg !1891
  %elts26 = getelementptr inbounds %struct.ebitmap_def, %struct.ebitmap_def* %src, i64 0, i32 4, !dbg !1892
  %11 = bitcast i64** %elts26 to i8**, !dbg !1892
  %12 = load i8*, i8** %11, align 8, !dbg !1892
  %13 = load i32, i32* %numwords, align 8, !dbg !1893
  %conv = zext i32 %13 to i64, !dbg !1894
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1895
  %call28 = tail call i32 @memcmp(i8* %10, i8* %12, i64 %mul) #6, !dbg !1896
  %cmp29 = icmp eq i32 %call28, 0, !dbg !1897
  %conv31 = zext i1 %cmp29 to i8, !dbg !1896
  br label %cleanup, !dbg !1898

cleanup:                                          ; preds = %land.lhs.true, %land.lhs.true18, %cond.end, %if.end25
  %retval.0 = phi i8 [ %conv31, %if.end25 ], [ 0, %cond.end ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true18 ], !dbg !1870
  ret i8 %retval.0, !dbg !1899
}

declare dso_local i32 @sbitmap_equal(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "ebitmap.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !6, !7, !10, !11, !13, !18, !30, !36}
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
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap_def", file: !15, line: 28, size: 320, elements: !16)
!15 = !DIFile(filename: "./ebitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!16 = !{!17, !19, !33, !34, !35, !37}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "n_elts", scope: !14, file: !15, line: 30, baseType: !18, size: 32)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "wordmask", scope: !14, file: !15, line: 31, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !21, line: 45, baseType: !22)
!21 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !21, line: 39, size: 192, elements: !24)
!24 = !{!25, !26, !27, !28}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !23, file: !21, line: 41, baseType: !4, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !23, file: !21, line: 42, baseType: !18, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !23, file: !21, line: 43, baseType: !18, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !23, file: !21, line: 44, baseType: !29, size: 64, offset: 128)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !31)
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !{!32}
!32 = !DISubrange(count: 1)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "numwords", scope: !14, file: !15, line: 33, baseType: !18, size: 32, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cacheindex", scope: !14, file: !15, line: 34, baseType: !18, size: 32, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !14, file: !15, line: 35, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !14, file: !15, line: 36, baseType: !36, size: 64, offset: 256)
!38 = !{i32 2, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!42 = distinct !DISubprogram(name: "vprintf", scope: !43, file: !43, line: 39, type: !44, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!44 = !DISubroutineType(types: !45)
!45 = !{!6, !46, !47}
!46 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !49)
!49 = !{!50, !51, !52, !53}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !48, file: !1, baseType: !18, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !48, file: !1, baseType: !18, size: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !48, file: !1, baseType: !10, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !48, file: !1, baseType: !10, size: 64, offset: 128)
!54 = !{!55, !56}
!55 = !DILocalVariable(name: "__fmt", arg: 1, scope: !42, file: !43, line: 39, type: !46)
!56 = !DILocalVariable(name: "__arg", arg: 2, scope: !42, file: !43, line: 39, type: !47)
!57 = !DILocation(line: 0, scope: !42)
!58 = !DILocation(line: 41, column: 20, scope: !42)
!59 = !DILocation(line: 41, column: 10, scope: !42)
!60 = !DILocation(line: 41, column: 3, scope: !42)
!61 = distinct !DISubprogram(name: "getchar", scope: !43, file: !43, line: 47, type: !62, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!62 = !DISubroutineType(types: !63)
!63 = !{!6}
!64 = !DILocation(line: 49, column: 16, scope: !61)
!65 = !DILocation(line: 49, column: 10, scope: !61)
!66 = !DILocation(line: 49, column: 3, scope: !61)
!67 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !43, file: !43, line: 56, type: !68, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!68 = !DISubroutineType(types: !69)
!69 = !{!6, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !91, !93, !94, !95, !99, !101, !103, !105, !108, !110, !113, !116, !117, !118, !121, !122}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !73, file: !74, line: 51, baseType: !6, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !73, file: !74, line: 54, baseType: !8, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !73, file: !74, line: 55, baseType: !8, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !73, file: !74, line: 56, baseType: !8, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !73, file: !74, line: 57, baseType: !8, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !73, file: !74, line: 58, baseType: !8, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !73, file: !74, line: 59, baseType: !8, size: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !73, file: !74, line: 60, baseType: !8, size: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !73, file: !74, line: 61, baseType: !8, size: 64, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !73, file: !74, line: 64, baseType: !8, size: 64, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !73, file: !74, line: 65, baseType: !8, size: 64, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !73, file: !74, line: 66, baseType: !8, size: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !73, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !74, line: 36, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !73, file: !74, line: 70, baseType: !92, size: 64, offset: 832)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !73, file: !74, line: 72, baseType: !6, size: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !73, file: !74, line: 73, baseType: !6, size: 32, offset: 928)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !73, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !97, line: 152, baseType: !98)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!98 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !73, file: !74, line: 77, baseType: !100, size: 16, offset: 1024)
!100 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !73, file: !74, line: 78, baseType: !102, size: 8, offset: 1040)
!102 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !73, file: !74, line: 79, baseType: !104, size: 8, offset: 1048)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !31)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !73, file: !74, line: 81, baseType: !106, size: 64, offset: 1088)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !74, line: 43, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !73, file: !74, line: 89, baseType: !109, size: 64, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !97, line: 153, baseType: !98)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !73, file: !74, line: 91, baseType: !111, size: 64, offset: 1216)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !74, line: 37, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !73, file: !74, line: 92, baseType: !114, size: 64, offset: 1280)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !74, line: 38, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !73, file: !74, line: 93, baseType: !92, size: 64, offset: 1344)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !73, file: !74, line: 94, baseType: !10, size: 64, offset: 1408)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !73, file: !74, line: 95, baseType: !119, size: 64, offset: 1472)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !30)
!120 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !73, file: !74, line: 96, baseType: !6, size: 32, offset: 1536)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !73, file: !74, line: 98, baseType: !123, size: 160, offset: 1568)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 20)
!126 = !{!127}
!127 = !DILocalVariable(name: "__fp", arg: 1, scope: !67, file: !43, line: 56, type: !70)
!128 = !DILocation(line: 0, scope: !67)
!129 = !DILocation(line: 58, column: 10, scope: !67)
!130 = !DILocation(line: 58, column: 3, scope: !67)
!131 = distinct !DISubprogram(name: "getc_unlocked", scope: !43, file: !43, line: 66, type: !68, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !132)
!132 = !{!133}
!133 = !DILocalVariable(name: "__fp", arg: 1, scope: !131, file: !43, line: 66, type: !70)
!134 = !DILocation(line: 0, scope: !131)
!135 = !DILocation(line: 68, column: 10, scope: !131)
!136 = !DILocation(line: 68, column: 3, scope: !131)
!137 = distinct !DISubprogram(name: "getchar_unlocked", scope: !43, file: !43, line: 73, type: !62, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!138 = !DILocation(line: 75, column: 10, scope: !137)
!139 = !DILocation(line: 75, column: 3, scope: !137)
!140 = distinct !DISubprogram(name: "putchar", scope: !43, file: !43, line: 82, type: !141, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!6, !6}
!143 = !{!144}
!144 = !DILocalVariable(name: "__c", arg: 1, scope: !140, file: !43, line: 82, type: !6)
!145 = !DILocation(line: 0, scope: !140)
!146 = !DILocation(line: 84, column: 21, scope: !140)
!147 = !DILocation(line: 84, column: 10, scope: !140)
!148 = !DILocation(line: 84, column: 3, scope: !140)
!149 = distinct !DISubprogram(name: "fputc_unlocked", scope: !43, file: !43, line: 91, type: !150, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{!6, !6, !70}
!152 = !{!153, !154}
!153 = !DILocalVariable(name: "__c", arg: 1, scope: !149, file: !43, line: 91, type: !6)
!154 = !DILocalVariable(name: "__stream", arg: 2, scope: !149, file: !43, line: 91, type: !70)
!155 = !DILocation(line: 0, scope: !149)
!156 = !DILocation(line: 93, column: 10, scope: !149)
!157 = !DILocation(line: 93, column: 3, scope: !149)
!158 = distinct !DISubprogram(name: "putc_unlocked", scope: !43, file: !43, line: 101, type: !150, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !159)
!159 = !{!160, !161}
!160 = !DILocalVariable(name: "__c", arg: 1, scope: !158, file: !43, line: 101, type: !6)
!161 = !DILocalVariable(name: "__stream", arg: 2, scope: !158, file: !43, line: 101, type: !70)
!162 = !DILocation(line: 0, scope: !158)
!163 = !DILocation(line: 103, column: 10, scope: !158)
!164 = !DILocation(line: 103, column: 3, scope: !158)
!165 = distinct !DISubprogram(name: "putchar_unlocked", scope: !43, file: !43, line: 108, type: !141, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !166)
!166 = !{!167}
!167 = !DILocalVariable(name: "__c", arg: 1, scope: !165, file: !43, line: 108, type: !6)
!168 = !DILocation(line: 0, scope: !165)
!169 = !DILocation(line: 110, column: 10, scope: !165)
!170 = !DILocation(line: 110, column: 3, scope: !165)
!171 = distinct !DISubprogram(name: "getline", scope: !43, file: !43, line: 118, type: !172, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!172 = !DISubroutineType(types: !173)
!173 = !{!174, !7, !175, !70}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !97, line: 193, baseType: !98)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!176 = !{!177, !178, !179}
!177 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !171, file: !43, line: 118, type: !7)
!178 = !DILocalVariable(name: "__n", arg: 2, scope: !171, file: !43, line: 118, type: !175)
!179 = !DILocalVariable(name: "__stream", arg: 3, scope: !171, file: !43, line: 118, type: !70)
!180 = !DILocation(line: 0, scope: !171)
!181 = !DILocation(line: 120, column: 10, scope: !171)
!182 = !DILocation(line: 120, column: 3, scope: !171)
!183 = distinct !DISubprogram(name: "feof_unlocked", scope: !43, file: !43, line: 128, type: !68, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !184)
!184 = !{!185}
!185 = !DILocalVariable(name: "__stream", arg: 1, scope: !183, file: !43, line: 128, type: !70)
!186 = !DILocation(line: 0, scope: !183)
!187 = !DILocation(line: 130, column: 10, scope: !183)
!188 = !DILocation(line: 130, column: 3, scope: !183)
!189 = distinct !DISubprogram(name: "ferror_unlocked", scope: !43, file: !43, line: 135, type: !68, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!190 = !{!191}
!191 = !DILocalVariable(name: "__stream", arg: 1, scope: !189, file: !43, line: 135, type: !70)
!192 = !DILocation(line: 0, scope: !189)
!193 = !DILocation(line: 137, column: 10, scope: !189)
!194 = !DILocation(line: 137, column: 3, scope: !189)
!195 = distinct !DISubprogram(name: "tolower", scope: !196, file: !196, line: 207, type: !141, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !197)
!196 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!197 = !{!198}
!198 = !DILocalVariable(name: "__c", arg: 1, scope: !195, file: !196, line: 207, type: !6)
!199 = !DILocation(line: 0, scope: !195)
!200 = !DILocation(line: 209, column: 22, scope: !195)
!201 = !DILocation(line: 209, column: 39, scope: !195)
!202 = !DILocation(line: 209, column: 38, scope: !195)
!203 = !DILocation(line: 209, column: 37, scope: !195)
!204 = !DILocation(line: 209, column: 10, scope: !195)
!205 = !DILocation(line: 209, column: 3, scope: !195)
!206 = distinct !DISubprogram(name: "toupper", scope: !196, file: !196, line: 213, type: !141, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !207)
!207 = !{!208}
!208 = !DILocalVariable(name: "__c", arg: 1, scope: !206, file: !196, line: 213, type: !6)
!209 = !DILocation(line: 0, scope: !206)
!210 = !DILocation(line: 215, column: 22, scope: !206)
!211 = !DILocation(line: 215, column: 39, scope: !206)
!212 = !DILocation(line: 215, column: 38, scope: !206)
!213 = !DILocation(line: 215, column: 37, scope: !206)
!214 = !DILocation(line: 215, column: 10, scope: !206)
!215 = !DILocation(line: 215, column: 3, scope: !206)
!216 = distinct !DISubprogram(name: "atoi", scope: !217, file: !217, line: 361, type: !218, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !220)
!217 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!218 = !DISubroutineType(types: !219)
!219 = !{!6, !11}
!220 = !{!221}
!221 = !DILocalVariable(name: "__nptr", arg: 1, scope: !216, file: !217, line: 361, type: !11)
!222 = !DILocation(line: 0, scope: !216)
!223 = !DILocation(line: 363, column: 16, scope: !216)
!224 = !DILocation(line: 363, column: 10, scope: !216)
!225 = !DILocation(line: 363, column: 3, scope: !216)
!226 = distinct !DISubprogram(name: "atol", scope: !217, file: !217, line: 366, type: !227, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{!98, !11}
!229 = !{!230}
!230 = !DILocalVariable(name: "__nptr", arg: 1, scope: !226, file: !217, line: 366, type: !11)
!231 = !DILocation(line: 0, scope: !226)
!232 = !DILocation(line: 368, column: 10, scope: !226)
!233 = !DILocation(line: 368, column: 3, scope: !226)
!234 = distinct !DISubprogram(name: "atoll", scope: !217, file: !217, line: 373, type: !235, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !238)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !11}
!237 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!238 = !{!239}
!239 = !DILocalVariable(name: "__nptr", arg: 1, scope: !234, file: !217, line: 373, type: !11)
!240 = !DILocation(line: 0, scope: !234)
!241 = !DILocation(line: 375, column: 10, scope: !234)
!242 = !DILocation(line: 375, column: 3, scope: !234)
!243 = distinct !DISubprogram(name: "bsearch", scope: !244, file: !244, line: 20, type: !245, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !253)
!244 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!245 = !DISubroutineType(types: !246)
!246 = !{!10, !247, !247, !119, !119, !249}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !217, line: 808, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!6, !247, !247}
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!254 = !DILocalVariable(name: "__key", arg: 1, scope: !243, file: !244, line: 20, type: !247)
!255 = !DILocalVariable(name: "__base", arg: 2, scope: !243, file: !244, line: 20, type: !247)
!256 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !243, file: !244, line: 20, type: !119)
!257 = !DILocalVariable(name: "__size", arg: 4, scope: !243, file: !244, line: 20, type: !119)
!258 = !DILocalVariable(name: "__compar", arg: 5, scope: !243, file: !244, line: 21, type: !249)
!259 = !DILocalVariable(name: "__l", scope: !243, file: !244, line: 23, type: !119)
!260 = !DILocalVariable(name: "__u", scope: !243, file: !244, line: 23, type: !119)
!261 = !DILocalVariable(name: "__idx", scope: !243, file: !244, line: 23, type: !119)
!262 = !DILocalVariable(name: "__p", scope: !243, file: !244, line: 24, type: !247)
!263 = !DILocalVariable(name: "__comparison", scope: !243, file: !244, line: 25, type: !6)
!264 = !DILocation(line: 0, scope: !243)
!265 = !DILocation(line: 29, column: 3, scope: !243)
!266 = !DILocation(line: 27, column: 7, scope: !243)
!267 = !DILocation(line: 29, column: 14, scope: !243)
!268 = !DILocation(line: 31, column: 20, scope: !269)
!269 = distinct !DILexicalBlock(scope: !243, file: !244, line: 30, column: 5)
!270 = !DILocation(line: 31, column: 27, scope: !269)
!271 = !DILocation(line: 32, column: 56, scope: !269)
!272 = !DILocation(line: 32, column: 47, scope: !269)
!273 = !DILocation(line: 33, column: 22, scope: !269)
!274 = !DILocation(line: 34, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !269, file: !244, line: 34, column: 11)
!276 = !DILocation(line: 34, column: 11, scope: !269)
!277 = !DILocation(line: 36, column: 29, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !244, line: 36, column: 16)
!279 = !DILocation(line: 36, column: 16, scope: !275)
!280 = !DILocation(line: 37, column: 14, scope: !278)
!281 = distinct !{!281, !265, !282}
!282 = !DILocation(line: 40, column: 5, scope: !243)
!283 = !DILocation(line: 43, column: 1, scope: !243)
!284 = distinct !DISubprogram(name: "atof", scope: !285, file: !285, line: 25, type: !286, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !289)
!285 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !11}
!288 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!289 = !{!290}
!290 = !DILocalVariable(name: "__nptr", arg: 1, scope: !284, file: !285, line: 25, type: !11)
!291 = !DILocation(line: 0, scope: !284)
!292 = !DILocation(line: 27, column: 10, scope: !284)
!293 = !DILocation(line: 27, column: 3, scope: !284)
!294 = distinct !DISubprogram(name: "strtoimax", scope: !295, file: !295, line: 324, type: !296, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !302)
!295 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !46, !301, !6}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !299, line: 101, baseType: !300)
!299 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !97, line: 72, baseType: !98)
!301 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !7)
!302 = !{!303, !304, !305}
!303 = !DILocalVariable(name: "nptr", arg: 1, scope: !294, file: !295, line: 324, type: !46)
!304 = !DILocalVariable(name: "endptr", arg: 2, scope: !294, file: !295, line: 324, type: !301)
!305 = !DILocalVariable(name: "base", arg: 3, scope: !294, file: !295, line: 324, type: !6)
!306 = !DILocation(line: 0, scope: !294)
!307 = !DILocation(line: 327, column: 10, scope: !294)
!308 = !DILocation(line: 327, column: 3, scope: !294)
!309 = distinct !DISubprogram(name: "strtoumax", scope: !295, file: !295, line: 336, type: !310, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !314)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !46, !301, !6}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !299, line: 102, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !97, line: 73, baseType: !30)
!314 = !{!315, !316, !317}
!315 = !DILocalVariable(name: "nptr", arg: 1, scope: !309, file: !295, line: 336, type: !46)
!316 = !DILocalVariable(name: "endptr", arg: 2, scope: !309, file: !295, line: 336, type: !301)
!317 = !DILocalVariable(name: "base", arg: 3, scope: !309, file: !295, line: 336, type: !6)
!318 = !DILocation(line: 0, scope: !309)
!319 = !DILocation(line: 339, column: 10, scope: !309)
!320 = !DILocation(line: 339, column: 3, scope: !309)
!321 = distinct !DISubprogram(name: "wcstoimax", scope: !295, file: !295, line: 348, type: !322, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !331)
!322 = !DISubroutineType(types: !323)
!323 = !{!298, !324, !328, !6}
!324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !295, line: 34, baseType: !6)
!328 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!331 = !{!332, !333, !334}
!332 = !DILocalVariable(name: "nptr", arg: 1, scope: !321, file: !295, line: 348, type: !324)
!333 = !DILocalVariable(name: "endptr", arg: 2, scope: !321, file: !295, line: 348, type: !328)
!334 = !DILocalVariable(name: "base", arg: 3, scope: !321, file: !295, line: 348, type: !6)
!335 = !DILocation(line: 0, scope: !321)
!336 = !DILocation(line: 351, column: 10, scope: !321)
!337 = !DILocation(line: 351, column: 3, scope: !321)
!338 = distinct !DISubprogram(name: "wcstoumax", scope: !295, file: !295, line: 362, type: !339, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{!312, !324, !328, !6}
!341 = !{!342, !343, !344}
!342 = !DILocalVariable(name: "nptr", arg: 1, scope: !338, file: !295, line: 362, type: !324)
!343 = !DILocalVariable(name: "endptr", arg: 2, scope: !338, file: !295, line: 362, type: !328)
!344 = !DILocalVariable(name: "base", arg: 3, scope: !338, file: !295, line: 362, type: !6)
!345 = !DILocation(line: 0, scope: !338)
!346 = !DILocation(line: 365, column: 10, scope: !338)
!347 = !DILocation(line: 365, column: 3, scope: !338)
!348 = distinct !DISubprogram(name: "stat", scope: !349, file: !349, line: 453, type: !350, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !389)
!349 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!350 = !DISubroutineType(types: !351)
!351 = !{!6, !11, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !354, line: 46, size: 1152, elements: !355)
!354 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!355 = !{!356, !358, !360, !362, !364, !366, !368, !369, !370, !371, !373, !375, !383, !384, !385}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !353, file: !354, line: 48, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !97, line: 145, baseType: !30)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !353, file: !354, line: 53, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !97, line: 148, baseType: !30)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !353, file: !354, line: 61, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !97, line: 151, baseType: !30)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !353, file: !354, line: 62, baseType: !363, size: 32, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !97, line: 150, baseType: !18)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !353, file: !354, line: 64, baseType: !365, size: 32, offset: 224)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !97, line: 146, baseType: !18)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !353, file: !354, line: 65, baseType: !367, size: 32, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !97, line: 147, baseType: !18)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !353, file: !354, line: 67, baseType: !6, size: 32, offset: 288)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !353, file: !354, line: 69, baseType: !357, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !353, file: !354, line: 74, baseType: !96, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !353, file: !354, line: 78, baseType: !372, size: 64, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !97, line: 174, baseType: !98)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !353, file: !354, line: 80, baseType: !374, size: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !97, line: 179, baseType: !98)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !353, file: !354, line: 91, baseType: !376, size: 128, offset: 576)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !377, line: 10, size: 128, elements: !378)
!377 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!378 = !{!379, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !376, file: !377, line: 12, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !97, line: 160, baseType: !98)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !376, file: !377, line: 16, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !97, line: 196, baseType: !98)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !353, file: !354, line: 92, baseType: !376, size: 128, offset: 704)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !353, file: !354, line: 93, baseType: !376, size: 128, offset: 832)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !353, file: !354, line: 106, baseType: !386, size: 192, offset: 960)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 192, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 3)
!389 = !{!390, !391}
!390 = !DILocalVariable(name: "__path", arg: 1, scope: !348, file: !349, line: 453, type: !11)
!391 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !348, file: !349, line: 453, type: !352)
!392 = !DILocation(line: 0, scope: !348)
!393 = !DILocation(line: 455, column: 10, scope: !348)
!394 = !DILocation(line: 455, column: 3, scope: !348)
!395 = distinct !DISubprogram(name: "lstat", scope: !349, file: !349, line: 460, type: !350, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !396)
!396 = !{!397, !398}
!397 = !DILocalVariable(name: "__path", arg: 1, scope: !395, file: !349, line: 460, type: !11)
!398 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !395, file: !349, line: 460, type: !352)
!399 = !DILocation(line: 0, scope: !395)
!400 = !DILocation(line: 462, column: 10, scope: !395)
!401 = !DILocation(line: 462, column: 3, scope: !395)
!402 = distinct !DISubprogram(name: "fstat", scope: !349, file: !349, line: 467, type: !403, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!6, !6, !352}
!405 = !{!406, !407}
!406 = !DILocalVariable(name: "__fd", arg: 1, scope: !402, file: !349, line: 467, type: !6)
!407 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !402, file: !349, line: 467, type: !352)
!408 = !DILocation(line: 0, scope: !402)
!409 = !DILocation(line: 469, column: 10, scope: !402)
!410 = !DILocation(line: 469, column: 3, scope: !402)
!411 = distinct !DISubprogram(name: "fstatat", scope: !349, file: !349, line: 474, type: !412, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!6, !6, !11, !352, !6}
!414 = !{!415, !416, !417, !418}
!415 = !DILocalVariable(name: "__fd", arg: 1, scope: !411, file: !349, line: 474, type: !6)
!416 = !DILocalVariable(name: "__filename", arg: 2, scope: !411, file: !349, line: 474, type: !11)
!417 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !411, file: !349, line: 474, type: !352)
!418 = !DILocalVariable(name: "__flag", arg: 4, scope: !411, file: !349, line: 474, type: !6)
!419 = !DILocation(line: 0, scope: !411)
!420 = !DILocation(line: 477, column: 10, scope: !411)
!421 = !DILocation(line: 477, column: 3, scope: !411)
!422 = distinct !DISubprogram(name: "mknod", scope: !349, file: !349, line: 483, type: !423, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!6, !11, !363, !357}
!425 = !{!426, !427, !428}
!426 = !DILocalVariable(name: "__path", arg: 1, scope: !422, file: !349, line: 483, type: !11)
!427 = !DILocalVariable(name: "__mode", arg: 2, scope: !422, file: !349, line: 483, type: !363)
!428 = !DILocalVariable(name: "__dev", arg: 3, scope: !422, file: !349, line: 483, type: !357)
!429 = !DILocation(line: 0, scope: !422)
!430 = !DILocation(line: 485, column: 10, scope: !422)
!431 = !DILocation(line: 485, column: 3, scope: !422)
!432 = distinct !DISubprogram(name: "mknodat", scope: !349, file: !349, line: 491, type: !433, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{!6, !6, !11, !363, !357}
!435 = !{!436, !437, !438, !439}
!436 = !DILocalVariable(name: "__fd", arg: 1, scope: !432, file: !349, line: 491, type: !6)
!437 = !DILocalVariable(name: "__path", arg: 2, scope: !432, file: !349, line: 491, type: !11)
!438 = !DILocalVariable(name: "__mode", arg: 3, scope: !432, file: !349, line: 491, type: !363)
!439 = !DILocalVariable(name: "__dev", arg: 4, scope: !432, file: !349, line: 491, type: !357)
!440 = !DILocation(line: 0, scope: !432)
!441 = !DILocation(line: 494, column: 10, scope: !432)
!442 = !DILocation(line: 494, column: 3, scope: !432)
!443 = distinct !DISubprogram(name: "stat64", scope: !349, file: !349, line: 502, type: !444, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !466)
!444 = !DISubroutineType(types: !445)
!445 = !{!6, !11, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !354, line: 119, size: 1152, elements: !448)
!448 = !{!449, !450, !452, !453, !454, !455, !456, !457, !458, !459, !460, !462, !463, !464, !465}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !447, file: !354, line: 121, baseType: !357, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !447, file: !354, line: 123, baseType: !451, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !97, line: 149, baseType: !30)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !447, file: !354, line: 124, baseType: !361, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !447, file: !354, line: 125, baseType: !363, size: 32, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !447, file: !354, line: 132, baseType: !365, size: 32, offset: 224)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !447, file: !354, line: 133, baseType: !367, size: 32, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !447, file: !354, line: 135, baseType: !6, size: 32, offset: 288)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !447, file: !354, line: 136, baseType: !357, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !447, file: !354, line: 137, baseType: !96, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !447, file: !354, line: 143, baseType: !372, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !447, file: !354, line: 144, baseType: !461, size: 64, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !97, line: 180, baseType: !98)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !447, file: !354, line: 152, baseType: !376, size: 128, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !447, file: !354, line: 153, baseType: !376, size: 128, offset: 704)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !447, file: !354, line: 154, baseType: !376, size: 128, offset: 832)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !447, file: !354, line: 164, baseType: !386, size: 192, offset: 960)
!466 = !{!467, !468}
!467 = !DILocalVariable(name: "__path", arg: 1, scope: !443, file: !349, line: 502, type: !11)
!468 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !443, file: !349, line: 502, type: !446)
!469 = !DILocation(line: 0, scope: !443)
!470 = !DILocation(line: 504, column: 10, scope: !443)
!471 = !DILocation(line: 504, column: 3, scope: !443)
!472 = distinct !DISubprogram(name: "lstat64", scope: !349, file: !349, line: 509, type: !444, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !473)
!473 = !{!474, !475}
!474 = !DILocalVariable(name: "__path", arg: 1, scope: !472, file: !349, line: 509, type: !11)
!475 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !472, file: !349, line: 509, type: !446)
!476 = !DILocation(line: 0, scope: !472)
!477 = !DILocation(line: 511, column: 10, scope: !472)
!478 = !DILocation(line: 511, column: 3, scope: !472)
!479 = distinct !DISubprogram(name: "fstat64", scope: !349, file: !349, line: 516, type: !480, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !482)
!480 = !DISubroutineType(types: !481)
!481 = !{!6, !6, !446}
!482 = !{!483, !484}
!483 = !DILocalVariable(name: "__fd", arg: 1, scope: !479, file: !349, line: 516, type: !6)
!484 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !479, file: !349, line: 516, type: !446)
!485 = !DILocation(line: 0, scope: !479)
!486 = !DILocation(line: 518, column: 10, scope: !479)
!487 = !DILocation(line: 518, column: 3, scope: !479)
!488 = distinct !DISubprogram(name: "fstatat64", scope: !349, file: !349, line: 523, type: !489, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{!6, !6, !11, !446, !6}
!491 = !{!492, !493, !494, !495}
!492 = !DILocalVariable(name: "__fd", arg: 1, scope: !488, file: !349, line: 523, type: !6)
!493 = !DILocalVariable(name: "__filename", arg: 2, scope: !488, file: !349, line: 523, type: !11)
!494 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !488, file: !349, line: 523, type: !446)
!495 = !DILocalVariable(name: "__flag", arg: 4, scope: !488, file: !349, line: 523, type: !6)
!496 = !DILocation(line: 0, scope: !488)
!497 = !DILocation(line: 526, column: 10, scope: !488)
!498 = !DILocation(line: 526, column: 3, scope: !488)
!499 = distinct !DISubprogram(name: "ebitmap_last_set_bit", scope: !1, file: !1, line: 86, type: !500, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !503)
!500 = !DISubroutineType(types: !501)
!501 = !{!6, !502}
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "ebitmap", file: !15, line: 37, baseType: !13)
!503 = !{!504, !505, !506, !526}
!504 = !DILocalVariable(name: "map", arg: 1, scope: !499, file: !1, line: 86, type: !502)
!505 = !DILocalVariable(name: "i", scope: !499, file: !1, line: 88, type: !18)
!506 = !DILocalVariable(name: "ebi", scope: !499, file: !1, line: 89, type: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "ebitmap_iterator", file: !15, line: 88, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 70, size: 512, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !508, file: !15, line: 72, baseType: !36, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "eltnum", scope: !508, file: !15, line: 75, baseType: !18, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !508, file: !15, line: 78, baseType: !18, size: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "bit_num", scope: !508, file: !15, line: 81, baseType: !18, size: 32, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !508, file: !15, line: 84, baseType: !30, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "maskiter", scope: !508, file: !15, line: 87, baseType: !516, size: 256, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap_iterator", file: !21, line: 111, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 96, size: 256, elements: !518)
!518 = !{!519, !522, !523, !524, !525}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !517, file: !21, line: 98, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !517, file: !21, line: 101, baseType: !18, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "word_num", scope: !517, file: !21, line: 104, baseType: !18, size: 32, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "bit_num", scope: !517, file: !21, line: 107, baseType: !18, size: 32, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !517, file: !21, line: 110, baseType: !30, size: 64, offset: 192)
!526 = !DILocalVariable(name: "foundbit", scope: !499, file: !1, line: 90, type: !5)
!527 = !DILocation(line: 0, scope: !499)
!528 = !DILocation(line: 88, column: 3, scope: !499)
!529 = !DILocation(line: 88, column: 16, scope: !499)
!530 = !DILocation(line: 89, column: 3, scope: !499)
!531 = !DILocation(line: 95, column: 3, scope: !532)
!532 = distinct !DILexicalBlock(scope: !499, file: !1, line: 95, column: 3)
!533 = !DILocation(line: 95, column: 3, scope: !534)
!534 = distinct !DILexicalBlock(scope: !532, file: !1, line: 95, column: 3)
!535 = distinct !{!535, !531, !536}
!536 = !DILocation(line: 98, column: 5, scope: !532)
!537 = !DILocation(line: 101, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !499, file: !1, line: 101, column: 7)
!539 = !DILocation(line: 101, column: 7, scope: !499)
!540 = !DILocation(line: 104, column: 1, scope: !499)
!541 = distinct !DISubprogram(name: "ebitmap_iter_init", scope: !15, file: !15, line: 91, type: !542, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !545)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !544, !502, !18}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!545 = !{!546, !547, !548, !549, !554}
!546 = !DILocalVariable(name: "i", arg: 1, scope: !541, file: !15, line: 91, type: !544)
!547 = !DILocalVariable(name: "bmp", arg: 2, scope: !541, file: !15, line: 91, type: !502)
!548 = !DILocalVariable(name: "min", arg: 3, scope: !541, file: !15, line: 91, type: !18)
!549 = !DILocalVariable(name: "wordindex", scope: !550, file: !15, line: 118, type: !18)
!550 = distinct !DILexicalBlock(scope: !551, file: !15, line: 117, column: 2)
!551 = distinct !DILexicalBlock(scope: !552, file: !15, line: 114, column: 11)
!552 = distinct !DILexicalBlock(scope: !553, file: !15, line: 113, column: 5)
!553 = distinct !DILexicalBlock(scope: !541, file: !15, line: 108, column: 7)
!554 = !DILocalVariable(name: "count", scope: !550, file: !15, line: 119, type: !18)
!555 = !DILocation(line: 0, scope: !541)
!556 = !DILocation(line: 93, column: 26, scope: !541)
!557 = !DILocation(line: 93, column: 41, scope: !541)
!558 = !DILocation(line: 93, column: 3, scope: !541)
!559 = !DILocation(line: 95, column: 18, scope: !541)
!560 = !DILocation(line: 95, column: 6, scope: !541)
!561 = !DILocation(line: 95, column: 11, scope: !541)
!562 = !DILocation(line: 96, column: 15, scope: !563)
!563 = distinct !DILexicalBlock(scope: !541, file: !15, line: 96, column: 7)
!564 = !DILocation(line: 96, column: 7, scope: !541)
!565 = !DILocation(line: 98, column: 10, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !15, line: 97, column: 5)
!567 = !DILocation(line: 98, column: 14, scope: !566)
!568 = !DILocation(line: 99, column: 10, scope: !566)
!569 = !DILocation(line: 99, column: 17, scope: !566)
!570 = !DILocation(line: 100, column: 10, scope: !566)
!571 = !DILocation(line: 100, column: 18, scope: !566)
!572 = !DILocation(line: 101, column: 10, scope: !566)
!573 = !DILocation(line: 101, column: 15, scope: !566)
!574 = !DILocation(line: 102, column: 7, scope: !566)
!575 = !DILocation(line: 104, column: 17, scope: !541)
!576 = !DILocation(line: 104, column: 10, scope: !541)
!577 = !DILocation(line: 105, column: 6, scope: !541)
!578 = !DILocation(line: 105, column: 14, scope: !541)
!579 = !DILocation(line: 106, column: 6, scope: !541)
!580 = !DILocation(line: 106, column: 13, scope: !541)
!581 = !DILocation(line: 108, column: 40, scope: !553)
!582 = !DILocation(line: 108, column: 50, scope: !553)
!583 = !DILocation(line: 108, column: 32, scope: !553)
!584 = !DILocation(line: 108, column: 7, scope: !541)
!585 = !DILocation(line: 110, column: 10, scope: !586)
!586 = distinct !DILexicalBlock(scope: !553, file: !15, line: 109, column: 5)
!587 = !DILocation(line: 110, column: 15, scope: !586)
!588 = !DILocation(line: 111, column: 5, scope: !586)
!589 = !DILocation(line: 114, column: 11, scope: !551)
!590 = !DILocation(line: 114, column: 60, scope: !551)
!591 = !DILocation(line: 114, column: 11, scope: !552)
!592 = !DILocation(line: 115, column: 5, scope: !551)
!593 = !DILocation(line: 115, column: 10, scope: !551)
!594 = !DILocation(line: 115, column: 2, scope: !551)
!595 = !DILocation(line: 0, scope: !550)
!596 = !DILocation(line: 119, column: 25, scope: !550)
!597 = !DILocation(line: 120, column: 17, scope: !550)
!598 = !DILocation(line: 120, column: 14, scope: !550)
!599 = !DILocation(line: 120, column: 35, scope: !550)
!600 = !DILocation(line: 120, column: 43, scope: !550)
!601 = !DILocation(line: 120, column: 28, scope: !550)
!602 = !DILocation(line: 120, column: 7, scope: !550)
!603 = !DILocation(line: 120, column: 12, scope: !550)
!604 = !DILocation(line: 121, column: 22, scope: !550)
!605 = !DILocation(line: 121, column: 14, scope: !550)
!606 = !DILocation(line: 124, column: 1, scope: !541)
!607 = distinct !DISubprogram(name: "ebitmap_iter_cond", scope: !15, file: !15, line: 127, type: !608, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !611)
!608 = !DISubroutineType(types: !609)
!609 = !{!5, !544, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!611 = !{!612, !613, !614}
!612 = !DILocalVariable(name: "i", arg: 1, scope: !607, file: !15, line: 127, type: !544)
!613 = !DILocalVariable(name: "n", arg: 2, scope: !607, file: !15, line: 127, type: !610)
!614 = !DILocalVariable(name: "ourn", scope: !607, file: !15, line: 129, type: !18)
!615 = !DILocation(line: 0, scope: !607)
!616 = !DILocation(line: 129, column: 3, scope: !607)
!617 = !DILocation(line: 129, column: 16, scope: !607)
!618 = !DILocation(line: 131, column: 10, scope: !619)
!619 = distinct !DILexicalBlock(scope: !607, file: !15, line: 131, column: 7)
!620 = !DILocation(line: 131, column: 15, scope: !619)
!621 = !DILocation(line: 131, column: 7, scope: !607)
!622 = !DILocation(line: 134, column: 10, scope: !623)
!623 = distinct !DILexicalBlock(scope: !607, file: !15, line: 134, column: 7)
!624 = !DILocation(line: 134, column: 15, scope: !623)
!625 = !DILocation(line: 134, column: 7, scope: !607)
!626 = !DILocation(line: 136, column: 30, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !15, line: 135, column: 5)
!628 = !DILocation(line: 136, column: 7, scope: !627)
!629 = !DILocation(line: 137, column: 12, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !15, line: 137, column: 11)
!631 = !DILocation(line: 137, column: 11, scope: !627)
!632 = !DILocation(line: 139, column: 20, scope: !627)
!633 = !DILocation(line: 139, column: 25, scope: !627)
!634 = !DILocation(line: 139, column: 10, scope: !627)
!635 = !DILocation(line: 139, column: 18, scope: !627)
!636 = !DILocation(line: 140, column: 20, scope: !627)
!637 = !DILocation(line: 140, column: 27, scope: !627)
!638 = !DILocation(line: 140, column: 33, scope: !627)
!639 = !DILocation(line: 140, column: 17, scope: !627)
!640 = !DILocation(line: 140, column: 15, scope: !627)
!641 = !DILocation(line: 141, column: 5, scope: !627)
!642 = !DILocation(line: 145, column: 3, scope: !607)
!643 = !DILocation(line: 145, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !15, line: 145, column: 3)
!645 = distinct !DILexicalBlock(scope: !607, file: !15, line: 145, column: 3)
!646 = !DILocation(line: 145, column: 19, scope: !644)
!647 = !DILocation(line: 145, column: 24, scope: !644)
!648 = !DILocation(line: 145, column: 3, scope: !645)
!649 = !DILocation(line: 146, column: 15, scope: !644)
!650 = !DILocation(line: 145, column: 38, scope: !644)
!651 = !DILocation(line: 145, column: 3, scope: !644)
!652 = distinct !{!652, !648, !653}
!653 = !DILocation(line: 146, column: 15, scope: !645)
!654 = !DILocation(line: 148, column: 6, scope: !607)
!655 = !DILocation(line: 149, column: 3, scope: !607)
!656 = !DILocation(line: 150, column: 1, scope: !607)
!657 = distinct !DISubprogram(name: "ebitmap_iter_next", scope: !15, file: !15, line: 153, type: !658, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !544}
!660 = !{!661}
!661 = !DILocalVariable(name: "i", arg: 1, scope: !657, file: !15, line: 153, type: !544)
!662 = !DILocation(line: 0, scope: !657)
!663 = !DILocation(line: 155, column: 6, scope: !657)
!664 = !DILocation(line: 155, column: 11, scope: !657)
!665 = !DILocation(line: 156, column: 6, scope: !657)
!666 = !DILocation(line: 156, column: 13, scope: !657)
!667 = !DILocation(line: 157, column: 1, scope: !657)
!668 = distinct !DISubprogram(name: "ebitmap_clear", scope: !1, file: !1, line: 190, type: !669, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !502}
!671 = !{!672}
!672 = !DILocalVariable(name: "map", arg: 1, scope: !668, file: !1, line: 190, type: !502)
!673 = !DILocation(line: 0, scope: !668)
!674 = !DILocation(line: 192, column: 3, scope: !668)
!675 = !DILocation(line: 193, column: 22, scope: !668)
!676 = !DILocation(line: 193, column: 3, scope: !668)
!677 = !DILocation(line: 194, column: 40, scope: !668)
!678 = !DILocation(line: 194, column: 19, scope: !668)
!679 = !DILocation(line: 194, column: 17, scope: !668)
!680 = !DILocation(line: 195, column: 8, scope: !668)
!681 = !DILocation(line: 195, column: 17, scope: !668)
!682 = !DILocation(line: 196, column: 8, scope: !668)
!683 = !DILocation(line: 196, column: 14, scope: !668)
!684 = !DILocation(line: 197, column: 8, scope: !668)
!685 = !DILocation(line: 197, column: 19, scope: !668)
!686 = !DILocation(line: 198, column: 1, scope: !668)
!687 = distinct !DISubprogram(name: "ebitmap_array_clear", scope: !1, file: !1, line: 177, type: !669, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !688)
!688 = !{!689}
!689 = !DILocalVariable(name: "map", arg: 1, scope: !687, file: !1, line: 177, type: !502)
!690 = !DILocation(line: 0, scope: !687)
!691 = !DILocation(line: 179, column: 12, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !1, line: 179, column: 7)
!693 = !DILocation(line: 179, column: 7, scope: !692)
!694 = !DILocation(line: 179, column: 7, scope: !687)
!695 = !DILocation(line: 181, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !1, line: 180, column: 5)
!697 = !DILocation(line: 182, column: 17, scope: !696)
!698 = !DILocation(line: 183, column: 5, scope: !696)
!699 = !DILocation(line: 184, column: 8, scope: !687)
!700 = !DILocation(line: 184, column: 15, scope: !687)
!701 = !DILocation(line: 185, column: 1, scope: !687)
!702 = distinct !DISubprogram(name: "ebitmap_alloc", scope: !1, file: !1, line: 203, type: !703, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{!502, !18}
!705 = !{!706, !707}
!706 = !DILocalVariable(name: "size", arg: 1, scope: !702, file: !1, line: 203, type: !18)
!707 = !DILocalVariable(name: "ret", scope: !702, file: !1, line: 205, type: !502)
!708 = !DILocation(line: 0, scope: !702)
!709 = !DILocation(line: 205, column: 17, scope: !702)
!710 = !DILocation(line: 206, column: 12, scope: !711)
!711 = distinct !DILexicalBlock(scope: !702, file: !1, line: 206, column: 7)
!712 = !DILocation(line: 206, column: 7, scope: !702)
!713 = !DILocation(line: 208, column: 53, scope: !702)
!714 = !DILocation(line: 208, column: 58, scope: !702)
!715 = !DILocation(line: 208, column: 3, scope: !702)
!716 = !DILocation(line: 209, column: 19, scope: !702)
!717 = !DILocation(line: 209, column: 8, scope: !702)
!718 = !DILocation(line: 209, column: 17, scope: !702)
!719 = !DILocation(line: 210, column: 3, scope: !702)
!720 = !DILocation(line: 211, column: 8, scope: !702)
!721 = !DILocation(line: 211, column: 17, scope: !702)
!722 = !DILocation(line: 212, column: 8, scope: !702)
!723 = !DILocation(line: 212, column: 14, scope: !702)
!724 = !DILocation(line: 213, column: 8, scope: !702)
!725 = !DILocation(line: 213, column: 19, scope: !702)
!726 = !DILocation(line: 215, column: 3, scope: !702)
!727 = distinct !DISubprogram(name: "ebitmap_array_init", scope: !1, file: !1, line: 160, type: !728, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !502, !18}
!730 = !{!731, !732}
!731 = !DILocalVariable(name: "map", arg: 1, scope: !727, file: !1, line: 160, type: !502)
!732 = !DILocalVariable(name: "size", arg: 2, scope: !727, file: !1, line: 160, type: !18)
!733 = !DILocation(line: 0, scope: !727)
!734 = !DILocation(line: 162, column: 12, scope: !735)
!735 = distinct !DILexicalBlock(scope: !727, file: !1, line: 162, column: 7)
!736 = !DILocation(line: 162, column: 7, scope: !727)
!737 = !DILocation(line: 164, column: 19, scope: !738)
!738 = distinct !DILexicalBlock(scope: !735, file: !1, line: 163, column: 5)
!739 = !DILocation(line: 164, column: 12, scope: !738)
!740 = !DILocation(line: 164, column: 17, scope: !738)
!741 = !DILocation(line: 165, column: 12, scope: !738)
!742 = !DILocation(line: 165, column: 19, scope: !738)
!743 = !DILocation(line: 166, column: 5, scope: !738)
!744 = !DILocation(line: 169, column: 12, scope: !745)
!745 = distinct !DILexicalBlock(scope: !735, file: !1, line: 168, column: 5)
!746 = !DILocation(line: 169, column: 19, scope: !745)
!747 = !DILocation(line: 170, column: 12, scope: !745)
!748 = !DILocation(line: 170, column: 17, scope: !745)
!749 = !DILocation(line: 172, column: 1, scope: !727)
!750 = distinct !DISubprogram(name: "ebitmap_clear_bit", scope: !1, file: !1, line: 221, type: !728, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759}
!752 = !DILocalVariable(name: "map", arg: 1, scope: !750, file: !1, line: 221, type: !502)
!753 = !DILocalVariable(name: "bit", arg: 2, scope: !750, file: !1, line: 221, type: !18)
!754 = !DILocalVariable(name: "wordindex", scope: !750, file: !1, line: 223, type: !18)
!755 = !DILocalVariable(name: "eltwordindex", scope: !750, file: !1, line: 224, type: !18)
!756 = !DILocalVariable(name: "bitindex", scope: !750, file: !1, line: 225, type: !18)
!757 = !DILocalVariable(name: "shift", scope: !750, file: !1, line: 225, type: !18)
!758 = !DILocalVariable(name: "have_eltwordindex", scope: !750, file: !1, line: 226, type: !5)
!759 = !DILocalVariable(name: "elt_ptr", scope: !750, file: !1, line: 227, type: !36)
!760 = !DILocation(line: 0, scope: !750)
!761 = !DILocation(line: 223, column: 32, scope: !750)
!762 = !DILocation(line: 230, column: 12, scope: !763)
!763 = distinct !DILexicalBlock(scope: !750, file: !1, line: 230, column: 7)
!764 = !DILocation(line: 230, column: 21, scope: !763)
!765 = !DILocation(line: 230, column: 7, scope: !750)
!766 = !DILocation(line: 233, column: 25, scope: !767)
!767 = distinct !DILexicalBlock(scope: !750, file: !1, line: 233, column: 7)
!768 = !DILocation(line: 233, column: 35, scope: !767)
!769 = !DILocation(line: 233, column: 17, scope: !767)
!770 = !DILocation(line: 234, column: 7, scope: !767)
!771 = !DILocation(line: 234, column: 11, scope: !767)
!772 = !DILocation(line: 233, column: 7, scope: !750)
!773 = !DILocation(line: 237, column: 12, scope: !774)
!774 = distinct !DILexicalBlock(scope: !750, file: !1, line: 237, column: 7)
!775 = !DILocation(line: 237, column: 18, scope: !774)
!776 = !DILocation(line: 237, column: 26, scope: !774)
!777 = !DILocation(line: 237, column: 34, scope: !774)
!778 = !DILocation(line: 237, column: 45, scope: !774)
!779 = !DILocation(line: 237, column: 7, scope: !750)
!780 = !DILocation(line: 238, column: 5, scope: !774)
!781 = !DILocation(line: 241, column: 55, scope: !782)
!782 = distinct !DILexicalBlock(scope: !774, file: !1, line: 240, column: 5)
!783 = !DILocation(line: 241, column: 22, scope: !782)
!784 = !DILocation(line: 242, column: 23, scope: !782)
!785 = !DILocation(line: 242, column: 18, scope: !782)
!786 = !DILocation(line: 0, scope: !774)
!787 = !DILocation(line: 246, column: 18, scope: !750)
!788 = !DILocation(line: 249, column: 41, scope: !750)
!789 = !DILocation(line: 249, column: 17, scope: !750)
!790 = !DILocation(line: 249, column: 14, scope: !750)
!791 = !DILocation(line: 252, column: 18, scope: !792)
!792 = distinct !DILexicalBlock(scope: !750, file: !1, line: 252, column: 7)
!793 = !DILocation(line: 252, column: 7, scope: !750)
!794 = !DILocation(line: 254, column: 12, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !1, line: 254, column: 11)
!796 = distinct !DILexicalBlock(scope: !792, file: !1, line: 253, column: 5)
!797 = !DILocation(line: 254, column: 11, scope: !796)
!798 = !DILocation(line: 255, column: 40, scope: !795)
!799 = !DILocation(line: 255, column: 50, scope: !795)
!800 = !DILocation(line: 255, column: 17, scope: !795)
!801 = !DILocation(line: 255, column: 2, scope: !795)
!802 = !DILocation(line: 257, column: 16, scope: !803)
!803 = distinct !DILexicalBlock(scope: !796, file: !1, line: 257, column: 11)
!804 = !DILocation(line: 257, column: 22, scope: !803)
!805 = !DILocation(line: 257, column: 11, scope: !796)
!806 = !DILocation(line: 259, column: 20, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 259, column: 15)
!808 = distinct !DILexicalBlock(scope: !803, file: !1, line: 258, column: 9)
!809 = !DILocation(line: 259, column: 31, scope: !807)
!810 = !DILocation(line: 259, column: 15, scope: !808)
!811 = !DILocation(line: 260, column: 24, scope: !807)
!812 = !DILocation(line: 260, column: 13, scope: !807)
!813 = !DILocation(line: 261, column: 36, scope: !814)
!814 = distinct !DILexicalBlock(scope: !807, file: !1, line: 261, column: 20)
!815 = !DILocation(line: 261, column: 20, scope: !807)
!816 = !DILocation(line: 262, column: 37, scope: !814)
!817 = !DILocation(line: 262, column: 24, scope: !814)
!818 = !DILocation(line: 262, column: 13, scope: !814)
!819 = !DILocation(line: 265, column: 23, scope: !796)
!820 = !DILocation(line: 265, column: 7, scope: !796)
!821 = !DILocation(line: 267, column: 21, scope: !796)
!822 = !DILocation(line: 267, column: 16, scope: !796)
!823 = !DILocation(line: 267, column: 15, scope: !796)
!824 = !DILocation(line: 267, column: 65, scope: !796)
!825 = !DILocation(line: 267, column: 42, scope: !796)
!826 = !DILocation(line: 267, column: 41, scope: !796)
!827 = !DILocation(line: 268, column: 42, scope: !796)
!828 = !DILocation(line: 268, column: 51, scope: !796)
!829 = !DILocation(line: 268, column: 36, scope: !796)
!830 = !DILocation(line: 268, column: 34, scope: !796)
!831 = !DILocation(line: 267, column: 7, scope: !796)
!832 = !DILocation(line: 269, column: 20, scope: !796)
!833 = !DILocation(line: 270, column: 5, scope: !796)
!834 = !DILocation(line: 271, column: 1, scope: !750)
!835 = distinct !DISubprogram(name: "RESET_BIT", scope: !21, file: !21, line: 82, type: !836, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !20, !18}
!838 = !{!839, !840, !841}
!839 = !DILocalVariable(name: "map", arg: 1, scope: !835, file: !21, line: 82, type: !20)
!840 = !DILocalVariable(name: "bitno", arg: 2, scope: !835, file: !21, line: 82, type: !18)
!841 = !DILocalVariable(name: "oldbit", scope: !842, file: !21, line: 86, type: !5)
!842 = distinct !DILexicalBlock(scope: !843, file: !21, line: 85, column: 5)
!843 = distinct !DILexicalBlock(scope: !835, file: !21, line: 84, column: 7)
!844 = !DILocation(line: 0, scope: !835)
!845 = !DILocation(line: 84, column: 12, scope: !843)
!846 = !DILocation(line: 84, column: 7, scope: !843)
!847 = !DILocation(line: 84, column: 7, scope: !835)
!848 = !DILocation(line: 92, column: 42, scope: !835)
!849 = !DILocation(line: 92, column: 31, scope: !835)
!850 = !DILocation(line: 91, column: 19, scope: !835)
!851 = !DILocation(line: 91, column: 3, scope: !835)
!852 = !DILocation(line: 87, column: 16, scope: !842)
!853 = !DILocation(line: 88, column: 11, scope: !854)
!854 = distinct !DILexicalBlock(scope: !842, file: !21, line: 88, column: 11)
!855 = !DILocation(line: 88, column: 11, scope: !842)
!856 = !DILocation(line: 89, column: 2, scope: !854)
!857 = !DILocation(line: 89, column: 41, scope: !854)
!858 = !DILocation(line: 92, column: 8, scope: !835)
!859 = !DILocation(line: 92, column: 5, scope: !835)
!860 = !DILocation(line: 93, column: 1, scope: !835)
!861 = distinct !DISubprogram(name: "ebitmap_set_bit", scope: !1, file: !1, line: 276, type: !728, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !862)
!862 = !{!863, !864, !865, !866, !867, !868, !871, !872}
!863 = !DILocalVariable(name: "map", arg: 1, scope: !861, file: !1, line: 276, type: !502)
!864 = !DILocalVariable(name: "bit", arg: 2, scope: !861, file: !1, line: 276, type: !18)
!865 = !DILocalVariable(name: "wordindex", scope: !861, file: !1, line: 278, type: !18)
!866 = !DILocalVariable(name: "eltwordindex", scope: !861, file: !1, line: 279, type: !18)
!867 = !DILocalVariable(name: "bitindex", scope: !861, file: !1, line: 280, type: !18)
!868 = !DILocalVariable(name: "count", scope: !869, file: !1, line: 297, type: !30)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 296, column: 5)
!870 = distinct !DILexicalBlock(scope: !861, file: !1, line: 295, column: 7)
!871 = !DILocalVariable(name: "i", scope: !869, file: !1, line: 298, type: !18)
!872 = !DILocalVariable(name: "newelt", scope: !873, file: !1, line: 306, type: !36)
!873 = distinct !DILexicalBlock(scope: !874, file: !1, line: 305, column: 2)
!874 = distinct !DILexicalBlock(scope: !875, file: !1, line: 304, column: 7)
!875 = distinct !DILexicalBlock(scope: !869, file: !1, line: 304, column: 7)
!876 = !DILocation(line: 0, scope: !861)
!877 = !DILocation(line: 278, column: 32, scope: !861)
!878 = !DILocation(line: 280, column: 33, scope: !861)
!879 = !DILocation(line: 283, column: 12, scope: !880)
!880 = distinct !DILexicalBlock(scope: !861, file: !1, line: 283, column: 7)
!881 = !DILocation(line: 283, column: 7, scope: !880)
!882 = !DILocation(line: 283, column: 18, scope: !880)
!883 = !DILocation(line: 283, column: 26, scope: !880)
!884 = !DILocation(line: 283, column: 37, scope: !880)
!885 = !DILocation(line: 283, column: 7, scope: !861)
!886 = !DILocation(line: 285, column: 44, scope: !887)
!887 = distinct !DILexicalBlock(scope: !880, file: !1, line: 284, column: 5)
!888 = !DILocation(line: 285, column: 21, scope: !887)
!889 = !DILocation(line: 286, column: 7, scope: !887)
!890 = !DILocation(line: 290, column: 25, scope: !891)
!891 = distinct !DILexicalBlock(scope: !861, file: !1, line: 290, column: 7)
!892 = !DILocation(line: 290, column: 35, scope: !891)
!893 = !DILocation(line: 290, column: 17, scope: !891)
!894 = !DILocation(line: 290, column: 7, scope: !861)
!895 = !DILocation(line: 291, column: 62, scope: !891)
!896 = !DILocation(line: 291, column: 21, scope: !891)
!897 = !DILocation(line: 291, column: 19, scope: !891)
!898 = !DILocation(line: 291, column: 5, scope: !891)
!899 = !DILocation(line: 0, scope: !870)
!900 = !DILocation(line: 295, column: 8, scope: !870)
!901 = !DILocation(line: 295, column: 7, scope: !861)
!902 = !DILocation(line: 300, column: 7, scope: !869)
!903 = !DILocation(line: 301, column: 38, scope: !869)
!904 = !DILocation(line: 301, column: 48, scope: !869)
!905 = !DILocation(line: 301, column: 15, scope: !869)
!906 = !DILocation(line: 0, scope: !869)
!907 = !DILocation(line: 302, column: 7, scope: !869)
!908 = !DILocation(line: 304, column: 21, scope: !875)
!909 = !DILocation(line: 304, column: 12, scope: !875)
!910 = !DILocation(line: 0, scope: !875)
!911 = !DILocation(line: 304, column: 31, scope: !874)
!912 = !DILocation(line: 304, column: 33, scope: !874)
!913 = !DILocation(line: 304, column: 7, scope: !875)
!914 = !DILocation(line: 307, column: 13, scope: !873)
!915 = !DILocation(line: 0, scope: !873)
!916 = !DILocation(line: 308, column: 40, scope: !873)
!917 = !DILocation(line: 308, column: 14, scope: !873)
!918 = !DILocation(line: 308, column: 12, scope: !873)
!919 = !DILocation(line: 304, column: 7, scope: !874)
!920 = distinct !{!920, !913, !921}
!921 = !DILocation(line: 309, column: 2, scope: !875)
!922 = !DILocation(line: 310, column: 20, scope: !869)
!923 = !DILocation(line: 311, column: 22, scope: !869)
!924 = !DILocation(line: 312, column: 7, scope: !869)
!925 = !DILocation(line: 313, column: 12, scope: !869)
!926 = !DILocation(line: 313, column: 7, scope: !869)
!927 = !DILocation(line: 313, column: 31, scope: !869)
!928 = !DILocation(line: 314, column: 5, scope: !869)
!929 = !DILocation(line: 317, column: 55, scope: !930)
!930 = distinct !DILexicalBlock(scope: !870, file: !1, line: 316, column: 5)
!931 = !DILocation(line: 317, column: 22, scope: !930)
!932 = !DILocation(line: 323, column: 50, scope: !861)
!933 = !DILocation(line: 323, column: 8, scope: !861)
!934 = !DILocation(line: 323, column: 3, scope: !861)
!935 = !DILocation(line: 323, column: 27, scope: !861)
!936 = !DILocation(line: 324, column: 22, scope: !861)
!937 = !DILocation(line: 324, column: 17, scope: !861)
!938 = !DILocation(line: 324, column: 14, scope: !861)
!939 = !DILocation(line: 325, column: 8, scope: !861)
!940 = !DILocation(line: 325, column: 19, scope: !861)
!941 = !DILocation(line: 326, column: 1, scope: !861)
!942 = distinct !DISubprogram(name: "SET_BIT", scope: !21, file: !21, line: 63, type: !836, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !943)
!943 = !{!944, !945, !946}
!944 = !DILocalVariable(name: "map", arg: 1, scope: !942, file: !21, line: 63, type: !20)
!945 = !DILocalVariable(name: "bitno", arg: 2, scope: !942, file: !21, line: 63, type: !18)
!946 = !DILocalVariable(name: "oldbit", scope: !947, file: !21, line: 67, type: !5)
!947 = distinct !DILexicalBlock(scope: !948, file: !21, line: 66, column: 5)
!948 = distinct !DILexicalBlock(scope: !942, file: !21, line: 65, column: 7)
!949 = !DILocation(line: 0, scope: !942)
!950 = !DILocation(line: 65, column: 12, scope: !948)
!951 = !DILocation(line: 65, column: 7, scope: !948)
!952 = !DILocation(line: 65, column: 7, scope: !942)
!953 = !DILocation(line: 73, column: 40, scope: !942)
!954 = !DILocation(line: 73, column: 29, scope: !942)
!955 = !DILocation(line: 72, column: 19, scope: !942)
!956 = !DILocation(line: 72, column: 3, scope: !942)
!957 = !DILocation(line: 68, column: 16, scope: !947)
!958 = !DILocation(line: 69, column: 12, scope: !959)
!959 = distinct !DILexicalBlock(scope: !947, file: !21, line: 69, column: 11)
!960 = !DILocation(line: 69, column: 11, scope: !947)
!961 = !DILocation(line: 70, column: 2, scope: !959)
!962 = !DILocation(line: 70, column: 41, scope: !959)
!963 = !DILocation(line: 73, column: 5, scope: !942)
!964 = !DILocation(line: 74, column: 1, scope: !942)
!965 = distinct !DISubprogram(name: "ebitmap_array_grow_get", scope: !1, file: !1, line: 149, type: !966, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!36, !502, !18}
!968 = !{!969, !970}
!969 = !DILocalVariable(name: "map", arg: 1, scope: !965, file: !1, line: 149, type: !502)
!970 = !DILocalVariable(name: "idx", arg: 2, scope: !965, file: !1, line: 149, type: !18)
!971 = !DILocation(line: 0, scope: !965)
!972 = !DILocation(line: 151, column: 19, scope: !973)
!973 = distinct !DILexicalBlock(scope: !965, file: !1, line: 151, column: 7)
!974 = !DILocation(line: 151, column: 11, scope: !973)
!975 = !DILocation(line: 151, column: 7, scope: !965)
!976 = !DILocation(line: 152, column: 34, scope: !973)
!977 = !DILocation(line: 152, column: 5, scope: !973)
!978 = !DILocation(line: 153, column: 16, scope: !965)
!979 = !DILocation(line: 153, column: 11, scope: !965)
!980 = !DILocation(line: 153, column: 3, scope: !965)
!981 = distinct !DISubprogram(name: "ebitmap_array_get", scope: !1, file: !1, line: 138, type: !982, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !984)
!982 = !DISubroutineType(types: !983)
!983 = !{!30, !502, !18}
!984 = !{!985, !986}
!985 = !DILocalVariable(name: "map", arg: 1, scope: !981, file: !1, line: 138, type: !502)
!986 = !DILocalVariable(name: "idx", arg: 2, scope: !981, file: !1, line: 138, type: !18)
!987 = !DILocation(line: 0, scope: !981)
!988 = !DILocation(line: 140, column: 3, scope: !981)
!989 = !DILocation(line: 141, column: 15, scope: !981)
!990 = !DILocation(line: 141, column: 10, scope: !981)
!991 = !DILocation(line: 141, column: 3, scope: !981)
!992 = distinct !DISubprogram(name: "ebitmap_array_maybe_grow", scope: !1, file: !1, line: 129, type: !728, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !993)
!993 = !{!994, !995}
!994 = !DILocalVariable(name: "map", arg: 1, scope: !992, file: !1, line: 129, type: !502)
!995 = !DILocalVariable(name: "size", arg: 2, scope: !992, file: !1, line: 129, type: !18)
!996 = !DILocation(line: 0, scope: !992)
!997 = !DILocation(line: 131, column: 20, scope: !998)
!998 = distinct !DILexicalBlock(scope: !992, file: !1, line: 131, column: 7)
!999 = !DILocation(line: 131, column: 12, scope: !998)
!1000 = !DILocation(line: 131, column: 7, scope: !992)
!1001 = !DILocation(line: 132, column: 35, scope: !998)
!1002 = !DILocation(line: 132, column: 5, scope: !998)
!1003 = !DILocation(line: 133, column: 1, scope: !992)
!1004 = distinct !DISubprogram(name: "ebitmap_bit_p", scope: !1, file: !1, line: 332, type: !1005, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!5, !502, !18}
!1007 = !{!1008, !1009, !1010, !1011}
!1008 = !DILocalVariable(name: "map", arg: 1, scope: !1004, file: !1, line: 332, type: !502)
!1009 = !DILocalVariable(name: "bit", arg: 2, scope: !1004, file: !1, line: 332, type: !18)
!1010 = !DILocalVariable(name: "wordindex", scope: !1004, file: !1, line: 334, type: !18)
!1011 = !DILocalVariable(name: "bitindex", scope: !1004, file: !1, line: 335, type: !18)
!1012 = !DILocation(line: 0, scope: !1004)
!1013 = !DILocation(line: 334, column: 32, scope: !1004)
!1014 = !DILocation(line: 335, column: 30, scope: !1004)
!1015 = !DILocation(line: 338, column: 12, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 338, column: 7)
!1017 = !DILocation(line: 338, column: 21, scope: !1016)
!1018 = !DILocation(line: 338, column: 7, scope: !1004)
!1019 = !DILocation(line: 341, column: 12, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 341, column: 7)
!1021 = !DILocation(line: 341, column: 7, scope: !1020)
!1022 = !DILocation(line: 341, column: 18, scope: !1020)
!1023 = !DILocation(line: 341, column: 26, scope: !1020)
!1024 = !DILocation(line: 341, column: 37, scope: !1020)
!1025 = !DILocation(line: 341, column: 7, scope: !1004)
!1026 = !DILocation(line: 342, column: 14, scope: !1020)
!1027 = !DILocation(line: 342, column: 27, scope: !1020)
!1028 = !DILocation(line: 342, column: 12, scope: !1020)
!1029 = !DILocation(line: 342, column: 5, scope: !1020)
!1030 = !DILocation(line: 347, column: 25, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 347, column: 7)
!1032 = !DILocation(line: 347, column: 35, scope: !1031)
!1033 = !DILocation(line: 347, column: 17, scope: !1031)
!1034 = !DILocation(line: 348, column: 7, scope: !1031)
!1035 = !DILocation(line: 348, column: 11, scope: !1031)
!1036 = !DILocation(line: 347, column: 7, scope: !1004)
!1037 = !DILocation(line: 352, column: 8, scope: !1004)
!1038 = !DILocation(line: 352, column: 19, scope: !1004)
!1039 = !DILocation(line: 353, column: 48, scope: !1004)
!1040 = !DILocation(line: 353, column: 15, scope: !1004)
!1041 = !DILocation(line: 354, column: 22, scope: !1004)
!1042 = !DILocation(line: 354, column: 17, scope: !1004)
!1043 = !DILocation(line: 354, column: 14, scope: !1004)
!1044 = !DILocation(line: 356, column: 11, scope: !1004)
!1045 = !DILocation(line: 356, column: 32, scope: !1004)
!1046 = !DILocation(line: 356, column: 10, scope: !1004)
!1047 = !DILocation(line: 356, column: 3, scope: !1004)
!1048 = !DILocation(line: 357, column: 1, scope: !1004)
!1049 = distinct !DISubprogram(name: "ebitmap_copy", scope: !1, file: !1, line: 362, type: !1050, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !502, !502}
!1052 = !{!1053, !1054}
!1053 = !DILocalVariable(name: "dst", arg: 1, scope: !1049, file: !1, line: 362, type: !502)
!1054 = !DILocalVariable(name: "src", arg: 2, scope: !1049, file: !1, line: 362, type: !502)
!1055 = !DILocation(line: 0, scope: !1049)
!1056 = !DILocation(line: 365, column: 3, scope: !1049)
!1057 = !DILocation(line: 366, column: 53, scope: !1049)
!1058 = !DILocation(line: 366, column: 63, scope: !1049)
!1059 = !DILocation(line: 366, column: 19, scope: !1049)
!1060 = !DILocation(line: 366, column: 17, scope: !1049)
!1061 = !DILocation(line: 367, column: 37, scope: !1049)
!1062 = !DILocation(line: 367, column: 3, scope: !1049)
!1063 = !DILocation(line: 371, column: 33, scope: !1049)
!1064 = !DILocation(line: 371, column: 3, scope: !1049)
!1065 = !DILocation(line: 372, column: 16, scope: !1049)
!1066 = !DILocation(line: 372, column: 27, scope: !1049)
!1067 = !DILocation(line: 373, column: 9, scope: !1049)
!1068 = !DILocation(line: 373, column: 4, scope: !1049)
!1069 = !DILocation(line: 373, column: 18, scope: !1049)
!1070 = !DILocation(line: 372, column: 3, scope: !1049)
!1071 = !DILocation(line: 374, column: 24, scope: !1049)
!1072 = !DILocation(line: 374, column: 8, scope: !1049)
!1073 = !DILocation(line: 374, column: 17, scope: !1049)
!1074 = !DILocation(line: 375, column: 8, scope: !1049)
!1075 = !DILocation(line: 375, column: 14, scope: !1049)
!1076 = !DILocation(line: 376, column: 1, scope: !1049)
!1077 = distinct !DISubprogram(name: "ebitmap_array_grow", scope: !1, file: !1, line: 110, type: !728, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1078)
!1078 = !{!1079, !1080}
!1079 = !DILocalVariable(name: "map", arg: 1, scope: !1077, file: !1, line: 110, type: !502)
!1080 = !DILocalVariable(name: "newsize", arg: 2, scope: !1077, file: !1, line: 110, type: !18)
!1081 = !DILocation(line: 0, scope: !1077)
!1082 = !DILocation(line: 112, column: 23, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 112, column: 7)
!1084 = !DILocation(line: 112, column: 15, scope: !1083)
!1085 = !DILocation(line: 112, column: 7, scope: !1077)
!1086 = !DILocation(line: 114, column: 19, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 113, column: 5)
!1088 = !DILocation(line: 115, column: 7, scope: !1087)
!1089 = !DILocation(line: 118, column: 22, scope: !1077)
!1090 = !DILocation(line: 118, column: 11, scope: !1077)
!1091 = !DILocation(line: 120, column: 15, scope: !1077)
!1092 = !DILocation(line: 121, column: 15, scope: !1077)
!1093 = !DILocation(line: 121, column: 13, scope: !1077)
!1094 = !DILocation(line: 122, column: 1, scope: !1077)
!1095 = distinct !DISubprogram(name: "dump_ebitmap", scope: !1, file: !1, line: 381, type: !1096, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !70, !502}
!1098 = !{!1099, !1100, !1101, !1102, !1103, !1104}
!1099 = !DILocalVariable(name: "file", arg: 1, scope: !1095, file: !1, line: 381, type: !70)
!1100 = !DILocalVariable(name: "bmap", arg: 2, scope: !1095, file: !1, line: 381, type: !502)
!1101 = !DILocalVariable(name: "pos", scope: !1095, file: !1, line: 383, type: !18)
!1102 = !DILocalVariable(name: "i", scope: !1095, file: !1, line: 384, type: !18)
!1103 = !DILocalVariable(name: "res", scope: !1095, file: !1, line: 385, type: !6)
!1104 = !DILocalVariable(name: "size", scope: !1095, file: !1, line: 386, type: !18)
!1105 = !DILocation(line: 0, scope: !1095)
!1106 = !DILocation(line: 388, column: 37, scope: !1095)
!1107 = !DILocation(line: 388, column: 9, scope: !1095)
!1108 = !DILocation(line: 389, column: 11, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 389, column: 7)
!1110 = !DILocation(line: 389, column: 7, scope: !1095)
!1111 = !DILocation(line: 394, column: 49, scope: !1095)
!1112 = !DILocation(line: 394, column: 3, scope: !1095)
!1113 = !DILocation(line: 396, column: 8, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 396, column: 3)
!1115 = !DILocation(line: 0, scope: !1114)
!1116 = !DILocation(line: 396, column: 27, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 396, column: 3)
!1118 = !DILocation(line: 396, column: 3, scope: !1114)
!1119 = !DILocation(line: 397, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 397, column: 9)
!1121 = !DILocation(line: 397, column: 9, scope: !1117)
!1122 = !DILocation(line: 399, column: 10, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 399, column: 6)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 398, column: 7)
!1125 = !DILocation(line: 399, column: 6, scope: !1124)
!1126 = !DILocation(line: 401, column: 6, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 400, column: 4)
!1128 = !DILocation(line: 403, column: 4, scope: !1127)
!1129 = !DILocation(line: 405, column: 9, scope: !1124)
!1130 = !DILocation(line: 405, column: 6, scope: !1124)
!1131 = !DILocation(line: 406, column: 7, scope: !1124)
!1132 = !DILocation(line: 396, column: 36, scope: !1117)
!1133 = !DILocation(line: 396, column: 3, scope: !1117)
!1134 = distinct !{!1134, !1118, !1135}
!1135 = !DILocation(line: 406, column: 7, scope: !1114)
!1136 = !DILocation(line: 408, column: 3, scope: !1095)
!1137 = !DILocation(line: 409, column: 1, scope: !1095)
!1138 = distinct !DISubprogram(name: "debug_ebitmap", scope: !1, file: !1, line: 414, type: !669, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1139)
!1139 = !{!1140}
!1140 = !DILocalVariable(name: "bmap", arg: 1, scope: !1138, file: !1, line: 414, type: !502)
!1141 = !DILocation(line: 0, scope: !1138)
!1142 = !DILocation(line: 416, column: 17, scope: !1138)
!1143 = !DILocation(line: 416, column: 3, scope: !1138)
!1144 = !DILocation(line: 417, column: 1, scope: !1138)
!1145 = distinct !DISubprogram(name: "ebitmap_and_into", scope: !1, file: !1, line: 422, type: !1050, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1158}
!1147 = !DILocalVariable(name: "dst", arg: 1, scope: !1145, file: !1, line: 422, type: !502)
!1148 = !DILocalVariable(name: "src", arg: 2, scope: !1145, file: !1, line: 422, type: !502)
!1149 = !DILocalVariable(name: "sbi", scope: !1145, file: !1, line: 424, type: !516)
!1150 = !DILocalVariable(name: "i", scope: !1145, file: !1, line: 425, type: !18)
!1151 = !DILocalVariable(name: "neweltindex", scope: !1145, file: !1, line: 426, type: !18)
!1152 = !DILocalVariable(name: "dsteltindex", scope: !1145, file: !1, line: 427, type: !18)
!1153 = !DILocalVariable(name: "srceltindex", scope: !1145, file: !1, line: 428, type: !18)
!1154 = !DILocalVariable(name: "tmpword", scope: !1155, file: !1, line: 447, type: !30)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 446, column: 5)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 445, column: 3)
!1157 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 445, column: 3)
!1158 = !DILocalVariable(name: "dstplace", scope: !1159, file: !1, line: 451, type: !36)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 450, column: 2)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 449, column: 11)
!1161 = !DILocation(line: 0, scope: !1145)
!1162 = !DILocation(line: 424, column: 3, scope: !1145)
!1163 = !DILocation(line: 425, column: 3, scope: !1145)
!1164 = !DILocation(line: 430, column: 3, scope: !1145)
!1165 = !DILocation(line: 432, column: 8, scope: !1145)
!1166 = !DILocation(line: 432, column: 14, scope: !1145)
!1167 = !DILocation(line: 435, column: 12, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 435, column: 7)
!1169 = !DILocation(line: 435, column: 21, scope: !1168)
!1170 = !DILocation(line: 435, column: 26, scope: !1168)
!1171 = !DILocation(line: 435, column: 34, scope: !1168)
!1172 = !DILocation(line: 435, column: 43, scope: !1168)
!1173 = !DILocation(line: 435, column: 7, scope: !1145)
!1174 = !DILocation(line: 437, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 436, column: 5)
!1176 = !DILocation(line: 438, column: 7, scope: !1175)
!1177 = !DILocation(line: 443, column: 25, scope: !1145)
!1178 = !DILocation(line: 443, column: 55, scope: !1145)
!1179 = !DILocation(line: 443, column: 3, scope: !1145)
!1180 = !DILocation(line: 445, column: 3, scope: !1157)
!1181 = !DILocation(line: 445, column: 3, scope: !1156)
!1182 = !DILocation(line: 447, column: 69, scope: !1155)
!1183 = !DILocation(line: 447, column: 34, scope: !1155)
!1184 = !DILocation(line: 0, scope: !1155)
!1185 = !DILocation(line: 448, column: 18, scope: !1155)
!1186 = !DILocation(line: 448, column: 15, scope: !1155)
!1187 = !DILocation(line: 449, column: 19, scope: !1160)
!1188 = !DILocation(line: 449, column: 11, scope: !1155)
!1189 = !DILocation(line: 452, column: 55, scope: !1159)
!1190 = !DILocation(line: 452, column: 15, scope: !1159)
!1191 = !DILocation(line: 0, scope: !1159)
!1192 = !DILocation(line: 453, column: 14, scope: !1159)
!1193 = !DILocation(line: 454, column: 2, scope: !1159)
!1194 = !DILocation(line: 456, column: 18, scope: !1160)
!1195 = !DILocation(line: 456, column: 28, scope: !1160)
!1196 = !DILocation(line: 456, column: 2, scope: !1160)
!1197 = distinct !{!1197, !1180, !1198}
!1198 = !DILocation(line: 457, column: 5, scope: !1157)
!1199 = !DILocation(line: 470, column: 17, scope: !1145)
!1200 = !DILocation(line: 471, column: 1, scope: !1145)
!1201 = distinct !DISubprogram(name: "sbitmap_iter_init", scope: !21, file: !21, line: 117, type: !1202, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1208)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{null, !1204, !1205, !18}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_sbitmap", file: !21, line: 46, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!1208 = !{!1209, !1210, !1211}
!1209 = !DILocalVariable(name: "i", arg: 1, scope: !1201, file: !21, line: 117, type: !1204)
!1210 = !DILocalVariable(name: "bmp", arg: 2, scope: !1201, file: !21, line: 117, type: !1205)
!1211 = !DILocalVariable(name: "min", arg: 3, scope: !1201, file: !21, line: 117, type: !18)
!1212 = !DILocation(line: 0, scope: !1201)
!1213 = !DILocation(line: 119, column: 6, scope: !1201)
!1214 = !DILocation(line: 119, column: 15, scope: !1201)
!1215 = !DILocation(line: 120, column: 6, scope: !1201)
!1216 = !DILocation(line: 120, column: 14, scope: !1201)
!1217 = !DILocation(line: 121, column: 18, scope: !1201)
!1218 = !DILocation(line: 121, column: 6, scope: !1201)
!1219 = !DILocation(line: 121, column: 11, scope: !1201)
!1220 = !DILocation(line: 122, column: 12, scope: !1201)
!1221 = !DILocation(line: 122, column: 6, scope: !1201)
!1222 = !DILocation(line: 122, column: 10, scope: !1201)
!1223 = !DILocation(line: 124, column: 19, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1201, file: !21, line: 124, column: 7)
!1225 = !DILocation(line: 124, column: 7, scope: !1201)
!1226 = !DILocation(line: 125, column: 8, scope: !1224)
!1227 = !DILocation(line: 125, column: 13, scope: !1224)
!1228 = !DILocation(line: 125, column: 5, scope: !1224)
!1229 = !DILocation(line: 127, column: 16, scope: !1224)
!1230 = !DILocation(line: 127, column: 8, scope: !1224)
!1231 = !DILocation(line: 127, column: 13, scope: !1224)
!1232 = !DILocation(line: 129, column: 1, scope: !1201)
!1233 = distinct !DISubprogram(name: "sbitmap_iter_cond", scope: !21, file: !21, line: 136, type: !1234, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!5, !1204, !610}
!1236 = !{!1237, !1238}
!1237 = !DILocalVariable(name: "i", arg: 1, scope: !1233, file: !21, line: 136, type: !1204)
!1238 = !DILocalVariable(name: "n", arg: 2, scope: !1233, file: !21, line: 136, type: !610)
!1239 = !DILocation(line: 0, scope: !1233)
!1240 = !DILocation(line: 0, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !21, line: 139, column: 3)
!1242 = distinct !DILexicalBlock(scope: !1233, file: !21, line: 139, column: 3)
!1243 = !DILocation(line: 0, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !21, line: 140, column: 5)
!1245 = !DILocation(line: 0, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1244, file: !21, line: 144, column: 11)
!1247 = !DILocation(line: 139, column: 13, scope: !1241)
!1248 = !DILocation(line: 139, column: 3, scope: !1233)
!1249 = !DILocation(line: 139, column: 18, scope: !1241)
!1250 = !DILocation(line: 139, column: 3, scope: !1242)
!1251 = !DILocation(line: 151, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1233, file: !21, line: 151, column: 3)
!1253 = !DILocation(line: 141, column: 18, scope: !1244)
!1254 = !DILocation(line: 144, column: 29, scope: !1246)
!1255 = !DILocation(line: 144, column: 23, scope: !1246)
!1256 = !DILocation(line: 144, column: 11, scope: !1244)
!1257 = !DILocation(line: 147, column: 32, scope: !1244)
!1258 = !DILocation(line: 147, column: 18, scope: !1244)
!1259 = !DILocation(line: 139, column: 37, scope: !1241)
!1260 = !DILocation(line: 139, column: 34, scope: !1241)
!1261 = !DILocation(line: 139, column: 32, scope: !1241)
!1262 = !DILocation(line: 139, column: 3, scope: !1241)
!1263 = distinct !{!1263, !1250, !1264}
!1264 = !DILocation(line: 148, column: 5, scope: !1242)
!1265 = !DILocation(line: 151, column: 14, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1252, file: !21, line: 151, column: 3)
!1267 = !DILocation(line: 151, column: 19, scope: !1266)
!1268 = !DILocation(line: 151, column: 24, scope: !1266)
!1269 = !DILocation(line: 152, column: 15, scope: !1266)
!1270 = !DILocation(line: 151, column: 38, scope: !1266)
!1271 = !DILocation(line: 151, column: 3, scope: !1266)
!1272 = distinct !{!1272, !1251, !1273}
!1273 = !DILocation(line: 152, column: 15, scope: !1252)
!1274 = !DILocation(line: 154, column: 6, scope: !1233)
!1275 = !DILocation(line: 156, column: 3, scope: !1233)
!1276 = !DILocation(line: 157, column: 1, scope: !1233)
!1277 = distinct !DISubprogram(name: "sbitmap_iter_next", scope: !21, file: !21, line: 162, type: !1278, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !1204}
!1280 = !{!1281}
!1281 = !DILocalVariable(name: "i", arg: 1, scope: !1277, file: !21, line: 162, type: !1204)
!1282 = !DILocation(line: 0, scope: !1277)
!1283 = !DILocation(line: 164, column: 6, scope: !1277)
!1284 = !DILocation(line: 164, column: 11, scope: !1277)
!1285 = !DILocation(line: 165, column: 6, scope: !1277)
!1286 = !DILocation(line: 165, column: 13, scope: !1277)
!1287 = !DILocation(line: 166, column: 1, scope: !1277)
!1288 = distinct !DISubprogram(name: "ebitmap_and", scope: !1, file: !1, line: 476, type: !1289, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !502, !502, !502}
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1304, !1305, !1308}
!1292 = !DILocalVariable(name: "dst", arg: 1, scope: !1288, file: !1, line: 476, type: !502)
!1293 = !DILocalVariable(name: "src1", arg: 2, scope: !1288, file: !1, line: 476, type: !502)
!1294 = !DILocalVariable(name: "src2", arg: 3, scope: !1288, file: !1, line: 476, type: !502)
!1295 = !DILocalVariable(name: "sbi", scope: !1288, file: !1, line: 478, type: !516)
!1296 = !DILocalVariable(name: "i", scope: !1288, file: !1, line: 479, type: !18)
!1297 = !DILocalVariable(name: "neweltindex", scope: !1288, file: !1, line: 480, type: !18)
!1298 = !DILocalVariable(name: "src1eltindex", scope: !1288, file: !1, line: 481, type: !18)
!1299 = !DILocalVariable(name: "src2eltindex", scope: !1288, file: !1, line: 482, type: !18)
!1300 = !DILocalVariable(name: "src1hasword", scope: !1301, file: !1, line: 499, type: !5)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 498, column: 5)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !1, line: 497, column: 3)
!1303 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 497, column: 3)
!1304 = !DILocalVariable(name: "src2hasword", scope: !1301, file: !1, line: 499, type: !5)
!1305 = !DILocalVariable(name: "tmpword", scope: !1306, file: !1, line: 506, type: !30)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 505, column: 2)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 504, column: 11)
!1308 = !DILocalVariable(name: "dstplace", scope: !1309, file: !1, line: 510, type: !36)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 509, column: 6)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 508, column: 8)
!1311 = !DILocation(line: 0, scope: !1288)
!1312 = !DILocation(line: 478, column: 3, scope: !1288)
!1313 = !DILocation(line: 479, column: 3, scope: !1288)
!1314 = !DILocation(line: 484, column: 8, scope: !1288)
!1315 = !DILocation(line: 484, column: 14, scope: !1288)
!1316 = !DILocation(line: 485, column: 13, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 485, column: 7)
!1318 = !DILocation(line: 485, column: 22, scope: !1317)
!1319 = !DILocation(line: 485, column: 27, scope: !1317)
!1320 = !DILocation(line: 485, column: 36, scope: !1317)
!1321 = !DILocation(line: 485, column: 45, scope: !1317)
!1322 = !DILocation(line: 485, column: 7, scope: !1288)
!1323 = !DILocation(line: 487, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 486, column: 5)
!1325 = !DILocation(line: 488, column: 7, scope: !1324)
!1326 = !DILocation(line: 492, column: 28, scope: !1288)
!1327 = !DILocation(line: 493, column: 9, scope: !1288)
!1328 = !DILocation(line: 492, column: 7, scope: !1288)
!1329 = !DILocation(line: 492, column: 5, scope: !1288)
!1330 = !DILocation(line: 495, column: 41, scope: !1288)
!1331 = !DILocation(line: 495, column: 57, scope: !1288)
!1332 = !DILocation(line: 495, column: 3, scope: !1288)
!1333 = !DILocation(line: 497, column: 3, scope: !1303)
!1334 = !DILocation(line: 497, column: 3, scope: !1302)
!1335 = !DILocation(line: 501, column: 21, scope: !1301)
!1336 = !DILocation(line: 0, scope: !1301)
!1337 = !DILocation(line: 502, column: 21, scope: !1301)
!1338 = !DILocation(line: 504, column: 11, scope: !1307)
!1339 = !DILocation(line: 504, column: 26, scope: !1307)
!1340 = !DILocation(line: 504, column: 23, scope: !1307)
!1341 = !DILocation(line: 506, column: 68, scope: !1306)
!1342 = !DILocation(line: 506, column: 31, scope: !1306)
!1343 = !DILocation(line: 0, scope: !1306)
!1344 = !DILocation(line: 507, column: 52, scope: !1306)
!1345 = !DILocation(line: 507, column: 15, scope: !1306)
!1346 = !DILocation(line: 507, column: 12, scope: !1306)
!1347 = !DILocation(line: 508, column: 16, scope: !1310)
!1348 = !DILocation(line: 508, column: 8, scope: !1306)
!1349 = !DILocation(line: 511, column: 59, scope: !1309)
!1350 = !DILocation(line: 511, column: 19, scope: !1309)
!1351 = !DILocation(line: 0, scope: !1309)
!1352 = !DILocation(line: 512, column: 18, scope: !1309)
!1353 = !DILocation(line: 513, column: 6, scope: !1309)
!1354 = !DILocation(line: 515, column: 22, scope: !1310)
!1355 = !DILocation(line: 515, column: 32, scope: !1310)
!1356 = !DILocation(line: 515, column: 6, scope: !1310)
!1357 = !DILocation(line: 517, column: 16, scope: !1307)
!1358 = !DILocation(line: 0, scope: !1307)
!1359 = distinct !{!1359, !1333, !1360}
!1360 = !DILocation(line: 521, column: 5, scope: !1303)
!1361 = !DILocation(line: 542, column: 8, scope: !1288)
!1362 = !DILocation(line: 542, column: 17, scope: !1288)
!1363 = !DILocation(line: 543, column: 1, scope: !1288)
!1364 = distinct !DISubprogram(name: "ebitmap_ior_into", scope: !1, file: !1, line: 549, type: !1365, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!5, !502, !502}
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1385, !1386}
!1368 = !DILocalVariable(name: "dst", arg: 1, scope: !1364, file: !1, line: 549, type: !502)
!1369 = !DILocalVariable(name: "src", arg: 2, scope: !1364, file: !1, line: 549, type: !502)
!1370 = !DILocalVariable(name: "dstsize", scope: !1364, file: !1, line: 551, type: !18)
!1371 = !DILocalVariable(name: "srcsize", scope: !1364, file: !1, line: 552, type: !18)
!1372 = !DILocalVariable(name: "sbi", scope: !1364, file: !1, line: 553, type: !516)
!1373 = !DILocalVariable(name: "i", scope: !1364, file: !1, line: 554, type: !18)
!1374 = !DILocalVariable(name: "tempmask", scope: !1364, file: !1, line: 555, type: !20)
!1375 = !DILocalVariable(name: "neweltindex", scope: !1364, file: !1, line: 556, type: !18)
!1376 = !DILocalVariable(name: "dsteltindex", scope: !1364, file: !1, line: 557, type: !18)
!1377 = !DILocalVariable(name: "srceltindex", scope: !1364, file: !1, line: 558, type: !18)
!1378 = !DILocalVariable(name: "changed", scope: !1364, file: !1, line: 559, type: !5)
!1379 = !DILocalVariable(name: "newarray", scope: !1364, file: !1, line: 560, type: !36)
!1380 = !DILocalVariable(name: "newarraysize", scope: !1364, file: !1, line: 561, type: !18)
!1381 = !DILocalVariable(name: "dsthasword", scope: !1382, file: !1, line: 607, type: !5)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 606, column: 5)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 605, column: 3)
!1384 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 605, column: 3)
!1385 = !DILocalVariable(name: "srchasword", scope: !1382, file: !1, line: 607, type: !5)
!1386 = !DILocalVariable(name: "tmpword", scope: !1387, file: !1, line: 616, type: !30)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 615, column: 2)
!1388 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 614, column: 11)
!1389 = !DILocation(line: 0, scope: !1364)
!1390 = !DILocation(line: 551, column: 31, scope: !1364)
!1391 = !DILocation(line: 551, column: 41, scope: !1364)
!1392 = !DILocation(line: 552, column: 31, scope: !1364)
!1393 = !DILocation(line: 552, column: 41, scope: !1364)
!1394 = !DILocation(line: 553, column: 3, scope: !1364)
!1395 = !DILocation(line: 554, column: 3, scope: !1364)
!1396 = !DILocation(line: 567, column: 8, scope: !1364)
!1397 = !DILocation(line: 567, column: 14, scope: !1364)
!1398 = !DILocation(line: 568, column: 11, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 568, column: 7)
!1400 = !DILocation(line: 568, column: 7, scope: !1364)
!1401 = !DILocation(line: 571, column: 12, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 571, column: 7)
!1403 = !DILocation(line: 571, column: 21, scope: !1402)
!1404 = !DILocation(line: 571, column: 26, scope: !1402)
!1405 = !DILocation(line: 0, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 576, column: 12)
!1407 = !DILocation(line: 576, column: 17, scope: !1406)
!1408 = !DILocation(line: 571, column: 34, scope: !1402)
!1409 = !DILocation(line: 571, column: 43, scope: !1402)
!1410 = !DILocation(line: 571, column: 7, scope: !1364)
!1411 = !DILocation(line: 573, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 572, column: 5)
!1413 = !DILocation(line: 574, column: 7, scope: !1412)
!1414 = !DILocation(line: 576, column: 12, scope: !1402)
!1415 = !DILocation(line: 581, column: 29, scope: !1364)
!1416 = !DILocation(line: 581, column: 14, scope: !1364)
!1417 = !DILocation(line: 582, column: 3, scope: !1364)
!1418 = !DILocation(line: 583, column: 15, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 583, column: 7)
!1420 = !DILocation(line: 0, scope: !1419)
!1421 = !DILocation(line: 583, column: 7, scope: !1364)
!1422 = !DILocation(line: 585, column: 53, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 584, column: 5)
!1424 = !DILocation(line: 585, column: 7, scope: !1423)
!1425 = !DILocation(line: 586, column: 5, scope: !1423)
!1426 = !DILocation(line: 589, column: 23, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 588, column: 5)
!1428 = !DILocation(line: 589, column: 21, scope: !1427)
!1429 = !DILocation(line: 591, column: 19, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1427, file: !1, line: 591, column: 11)
!1431 = !DILocation(line: 591, column: 11, scope: !1427)
!1432 = !DILocation(line: 593, column: 60, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 592, column: 2)
!1434 = !DILocation(line: 593, column: 4, scope: !1433)
!1435 = !DILocation(line: 594, column: 45, scope: !1433)
!1436 = !DILocation(line: 594, column: 4, scope: !1433)
!1437 = !DILocation(line: 595, column: 2, scope: !1433)
!1438 = !DILocation(line: 598, column: 35, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 597, column: 2)
!1440 = !DILocation(line: 598, column: 60, scope: !1439)
!1441 = !DILocation(line: 598, column: 4, scope: !1439)
!1442 = !DILocation(line: 599, column: 45, scope: !1439)
!1443 = !DILocation(line: 599, column: 4, scope: !1439)
!1444 = !DILocation(line: 602, column: 23, scope: !1364)
!1445 = !DILocation(line: 602, column: 39, scope: !1364)
!1446 = !DILocation(line: 602, column: 32, scope: !1364)
!1447 = !DILocation(line: 603, column: 14, scope: !1364)
!1448 = !DILocation(line: 605, column: 3, scope: !1384)
!1449 = !DILocation(line: 559, column: 8, scope: !1364)
!1450 = !DILocation(line: 605, column: 3, scope: !1383)
!1451 = !DILocation(line: 609, column: 21, scope: !1382)
!1452 = !DILocation(line: 609, column: 30, scope: !1382)
!1453 = !DILocation(line: 609, column: 40, scope: !1382)
!1454 = !DILocation(line: 609, column: 23, scope: !1382)
!1455 = !DILocation(line: 610, column: 7, scope: !1382)
!1456 = !DILocation(line: 610, column: 10, scope: !1382)
!1457 = !DILocation(line: 0, scope: !1382)
!1458 = !DILocation(line: 611, column: 30, scope: !1382)
!1459 = !DILocation(line: 611, column: 40, scope: !1382)
!1460 = !DILocation(line: 611, column: 23, scope: !1382)
!1461 = !DILocation(line: 612, column: 7, scope: !1382)
!1462 = !DILocation(line: 612, column: 10, scope: !1382)
!1463 = !DILocation(line: 614, column: 22, scope: !1388)
!1464 = !DILocation(line: 616, column: 66, scope: !1387)
!1465 = !DILocation(line: 616, column: 31, scope: !1387)
!1466 = !DILocation(line: 0, scope: !1387)
!1467 = !DILocation(line: 617, column: 15, scope: !1387)
!1468 = !DILocation(line: 617, column: 12, scope: !1387)
!1469 = !DILocation(line: 618, column: 9, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1387, file: !1, line: 618, column: 8)
!1471 = !DILocation(line: 618, column: 8, scope: !1387)
!1472 = !DILocation(line: 619, column: 28, scope: !1470)
!1473 = !DILocation(line: 619, column: 25, scope: !1470)
!1474 = !DILocation(line: 619, column: 6, scope: !1470)
!1475 = !DILocation(line: 620, column: 15, scope: !1387)
!1476 = !DILocation(line: 621, column: 4, scope: !1387)
!1477 = !DILocation(line: 621, column: 28, scope: !1387)
!1478 = !DILocation(line: 622, column: 2, scope: !1387)
!1479 = !DILocation(line: 623, column: 16, scope: !1388)
!1480 = !DILocation(line: 625, column: 66, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 624, column: 2)
!1482 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 623, column: 16)
!1483 = !DILocation(line: 625, column: 31, scope: !1481)
!1484 = !DILocation(line: 625, column: 4, scope: !1481)
!1485 = !DILocation(line: 625, column: 29, scope: !1481)
!1486 = !DILocation(line: 626, column: 2, scope: !1481)
!1487 = !DILocation(line: 629, column: 66, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 628, column: 2)
!1489 = !DILocation(line: 629, column: 31, scope: !1488)
!1490 = !DILocation(line: 629, column: 4, scope: !1488)
!1491 = !DILocation(line: 629, column: 29, scope: !1488)
!1492 = !DILocation(line: 630, column: 4, scope: !1488)
!1493 = !DILocation(line: 631, column: 18, scope: !1488)
!1494 = !DILocation(line: 631, column: 28, scope: !1488)
!1495 = !DILocation(line: 631, column: 4, scope: !1488)
!1496 = !DILocation(line: 632, column: 12, scope: !1488)
!1497 = !DILocation(line: 0, scope: !1388)
!1498 = distinct !{!1498, !1448, !1499}
!1499 = !DILocation(line: 634, column: 5, scope: !1384)
!1500 = !DILocation(line: 636, column: 3, scope: !1364)
!1501 = !DILocation(line: 637, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 637, column: 7)
!1503 = !DILocation(line: 637, column: 7, scope: !1364)
!1504 = !DILocation(line: 639, column: 21, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 638, column: 5)
!1506 = !DILocation(line: 640, column: 18, scope: !1505)
!1507 = !DILocation(line: 640, column: 7, scope: !1505)
!1508 = !DILocation(line: 641, column: 17, scope: !1505)
!1509 = !DILocation(line: 642, column: 12, scope: !1505)
!1510 = !DILocation(line: 642, column: 19, scope: !1505)
!1511 = !DILocation(line: 643, column: 5, scope: !1505)
!1512 = !DILocation(line: 645, column: 5, scope: !1502)
!1513 = !DILocation(line: 667, column: 1, scope: !1364)
!1514 = distinct !DISubprogram(name: "ebitmap_ior", scope: !1, file: !1, line: 673, type: !1515, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!5, !502, !502, !502}
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1536, !1537, !1538}
!1518 = !DILocalVariable(name: "dst", arg: 1, scope: !1514, file: !1, line: 673, type: !502)
!1519 = !DILocalVariable(name: "src1", arg: 2, scope: !1514, file: !1, line: 673, type: !502)
!1520 = !DILocalVariable(name: "src2", arg: 3, scope: !1514, file: !1, line: 673, type: !502)
!1521 = !DILocalVariable(name: "src1size", scope: !1514, file: !1, line: 675, type: !18)
!1522 = !DILocalVariable(name: "src2size", scope: !1514, file: !1, line: 676, type: !18)
!1523 = !DILocalVariable(name: "sbi", scope: !1514, file: !1, line: 677, type: !516)
!1524 = !DILocalVariable(name: "i", scope: !1514, file: !1, line: 678, type: !18)
!1525 = !DILocalVariable(name: "tempmask", scope: !1514, file: !1, line: 679, type: !20)
!1526 = !DILocalVariable(name: "neweltindex", scope: !1514, file: !1, line: 680, type: !18)
!1527 = !DILocalVariable(name: "src1eltindex", scope: !1514, file: !1, line: 681, type: !18)
!1528 = !DILocalVariable(name: "src2eltindex", scope: !1514, file: !1, line: 682, type: !18)
!1529 = !DILocalVariable(name: "changed", scope: !1514, file: !1, line: 683, type: !5)
!1530 = !DILocalVariable(name: "newarray", scope: !1514, file: !1, line: 684, type: !36)
!1531 = !DILocalVariable(name: "newarraysize", scope: !1514, file: !1, line: 685, type: !18)
!1532 = !DILocalVariable(name: "src1hasword", scope: !1533, file: !1, line: 716, type: !5)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 715, column: 5)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 714, column: 3)
!1535 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 714, column: 3)
!1536 = !DILocalVariable(name: "src2hasword", scope: !1533, file: !1, line: 716, type: !5)
!1537 = !DILocalVariable(name: "tmpword", scope: !1533, file: !1, line: 717, type: !30)
!1538 = !DILocalVariable(name: "count", scope: !1539, file: !1, line: 746, type: !18)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 745, column: 2)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 744, column: 16)
!1541 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 740, column: 11)
!1542 = !DILocation(line: 0, scope: !1514)
!1543 = !DILocation(line: 675, column: 33, scope: !1514)
!1544 = !DILocation(line: 675, column: 43, scope: !1514)
!1545 = !DILocation(line: 676, column: 33, scope: !1514)
!1546 = !DILocation(line: 676, column: 43, scope: !1514)
!1547 = !DILocation(line: 677, column: 3, scope: !1514)
!1548 = !DILocation(line: 678, column: 3, scope: !1514)
!1549 = !DILocation(line: 691, column: 8, scope: !1514)
!1550 = !DILocation(line: 691, column: 14, scope: !1514)
!1551 = !DILocation(line: 692, column: 43, scope: !1514)
!1552 = !DILocation(line: 692, column: 14, scope: !1514)
!1553 = !DILocation(line: 693, column: 3, scope: !1514)
!1554 = !DILocation(line: 694, column: 16, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 694, column: 7)
!1556 = !DILocation(line: 694, column: 7, scope: !1514)
!1557 = !DILocation(line: 696, column: 39, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 695, column: 5)
!1559 = !DILocation(line: 696, column: 55, scope: !1558)
!1560 = !DILocation(line: 696, column: 7, scope: !1558)
!1561 = !DILocation(line: 697, column: 5, scope: !1558)
!1562 = !DILocation(line: 700, column: 20, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !1, line: 700, column: 11)
!1564 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 699, column: 5)
!1565 = !DILocation(line: 700, column: 11, scope: !1564)
!1566 = !DILocation(line: 702, column: 36, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 701, column: 2)
!1568 = !DILocation(line: 702, column: 62, scope: !1567)
!1569 = !DILocation(line: 702, column: 4, scope: !1567)
!1570 = !DILocation(line: 703, column: 46, scope: !1567)
!1571 = !DILocation(line: 703, column: 4, scope: !1567)
!1572 = !DILocation(line: 704, column: 2, scope: !1567)
!1573 = !DILocation(line: 707, column: 36, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 706, column: 2)
!1575 = !DILocation(line: 707, column: 62, scope: !1574)
!1576 = !DILocation(line: 707, column: 4, scope: !1574)
!1577 = !DILocation(line: 708, column: 46, scope: !1574)
!1578 = !DILocation(line: 708, column: 4, scope: !1574)
!1579 = !DILocation(line: 711, column: 24, scope: !1514)
!1580 = !DILocation(line: 711, column: 41, scope: !1514)
!1581 = !DILocation(line: 711, column: 33, scope: !1514)
!1582 = !DILocation(line: 712, column: 14, scope: !1514)
!1583 = !DILocation(line: 714, column: 3, scope: !1535)
!1584 = !DILocation(line: 0, scope: !1541)
!1585 = !DILocation(line: 714, column: 3, scope: !1534)
!1586 = !DILocation(line: 718, column: 22, scope: !1533)
!1587 = !DILocation(line: 718, column: 32, scope: !1533)
!1588 = !DILocation(line: 718, column: 42, scope: !1533)
!1589 = !DILocation(line: 718, column: 24, scope: !1533)
!1590 = !DILocation(line: 719, column: 7, scope: !1533)
!1591 = !DILocation(line: 719, column: 10, scope: !1533)
!1592 = !DILocation(line: 0, scope: !1533)
!1593 = !DILocation(line: 720, column: 32, scope: !1533)
!1594 = !DILocation(line: 720, column: 42, scope: !1533)
!1595 = !DILocation(line: 720, column: 24, scope: !1533)
!1596 = !DILocation(line: 721, column: 7, scope: !1533)
!1597 = !DILocation(line: 721, column: 10, scope: !1533)
!1598 = !DILocation(line: 723, column: 23, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 723, column: 11)
!1600 = !DILocation(line: 725, column: 52, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 724, column: 2)
!1602 = !DILocation(line: 725, column: 15, scope: !1601)
!1603 = !DILocation(line: 726, column: 47, scope: !1601)
!1604 = !DILocation(line: 726, column: 10, scope: !1601)
!1605 = !DILocation(line: 726, column: 8, scope: !1601)
!1606 = !DILocation(line: 727, column: 4, scope: !1601)
!1607 = !DILocation(line: 727, column: 28, scope: !1601)
!1608 = !DILocation(line: 728, column: 2, scope: !1601)
!1609 = !DILocation(line: 729, column: 16, scope: !1599)
!1610 = !DILocation(line: 731, column: 51, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 730, column: 2)
!1612 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 729, column: 16)
!1613 = !DILocation(line: 731, column: 14, scope: !1611)
!1614 = !DILocation(line: 732, column: 4, scope: !1611)
!1615 = !DILocation(line: 732, column: 29, scope: !1611)
!1616 = !DILocation(line: 733, column: 2, scope: !1611)
!1617 = !DILocation(line: 736, column: 51, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 735, column: 2)
!1619 = !DILocation(line: 736, column: 14, scope: !1618)
!1620 = !DILocation(line: 737, column: 4, scope: !1618)
!1621 = !DILocation(line: 737, column: 29, scope: !1618)
!1622 = !DILocation(line: 0, scope: !1599)
!1623 = !DILocation(line: 740, column: 11, scope: !1541)
!1624 = !DILocation(line: 740, column: 21, scope: !1541)
!1625 = !DILocation(line: 740, column: 31, scope: !1541)
!1626 = !DILocation(line: 740, column: 13, scope: !1541)
!1627 = !DILocation(line: 740, column: 38, scope: !1541)
!1628 = !DILocation(line: 740, column: 42, scope: !1541)
!1629 = !DILocation(line: 740, column: 11, scope: !1533)
!1630 = !DILocation(line: 744, column: 17, scope: !1540)
!1631 = !DILocation(line: 744, column: 16, scope: !1541)
!1632 = !DILocation(line: 746, column: 58, scope: !1539)
!1633 = !DILocation(line: 746, column: 25, scope: !1539)
!1634 = !DILocation(line: 0, scope: !1539)
!1635 = !DILocation(line: 747, column: 15, scope: !1539)
!1636 = !DILocation(line: 747, column: 46, scope: !1539)
!1637 = !DILocation(line: 748, column: 2, scope: !1539)
!1638 = distinct !{!1638, !1583, !1639}
!1639 = !DILocation(line: 749, column: 5, scope: !1535)
!1640 = !DILocation(line: 751, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 751, column: 7)
!1642 = !DILocation(line: 751, column: 7, scope: !1514)
!1643 = !DILocation(line: 753, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !1, line: 752, column: 5)
!1645 = !DILocation(line: 754, column: 21, scope: !1644)
!1646 = !DILocation(line: 755, column: 12, scope: !1644)
!1647 = !DILocation(line: 755, column: 21, scope: !1644)
!1648 = !DILocation(line: 756, column: 18, scope: !1644)
!1649 = !DILocation(line: 756, column: 7, scope: !1644)
!1650 = !DILocation(line: 757, column: 17, scope: !1644)
!1651 = !DILocation(line: 758, column: 12, scope: !1644)
!1652 = !DILocation(line: 758, column: 19, scope: !1644)
!1653 = !DILocation(line: 759, column: 5, scope: !1644)
!1654 = !DILocation(line: 762, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1641, file: !1, line: 761, column: 5)
!1656 = !DILocation(line: 763, column: 7, scope: !1655)
!1657 = !DILocation(line: 787, column: 1, scope: !1514)
!1658 = !DILocation(line: 786, column: 3, scope: !1514)
!1659 = distinct !DISubprogram(name: "ebitmap_and_compl_into", scope: !1, file: !1, line: 793, type: !1365, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1672, !1675, !1676}
!1661 = !DILocalVariable(name: "dst", arg: 1, scope: !1659, file: !1, line: 793, type: !502)
!1662 = !DILocalVariable(name: "src", arg: 2, scope: !1659, file: !1, line: 793, type: !502)
!1663 = !DILocalVariable(name: "changed", scope: !1659, file: !1, line: 795, type: !5)
!1664 = !DILocalVariable(name: "i", scope: !1659, file: !1, line: 796, type: !18)
!1665 = !DILocalVariable(name: "neweltindex", scope: !1659, file: !1, line: 797, type: !18)
!1666 = !DILocalVariable(name: "dsteltindex", scope: !1659, file: !1, line: 798, type: !18)
!1667 = !DILocalVariable(name: "sbi", scope: !1659, file: !1, line: 799, type: !516)
!1668 = !DILocalVariable(name: "srchasword", scope: !1669, file: !1, line: 812, type: !5)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !1, line: 811, column: 5)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !1, line: 810, column: 3)
!1671 = distinct !DILexicalBlock(scope: !1659, file: !1, line: 810, column: 3)
!1672 = !DILocalVariable(name: "srccount", scope: !1673, file: !1, line: 819, type: !18)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !1, line: 818, column: 2)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 817, column: 11)
!1675 = !DILocalVariable(name: "tmpword", scope: !1673, file: !1, line: 820, type: !30)
!1676 = !DILocalVariable(name: "dstplace", scope: !1677, file: !1, line: 827, type: !36)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 826, column: 6)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 825, column: 8)
!1679 = !DILocation(line: 0, scope: !1659)
!1680 = !DILocation(line: 796, column: 3, scope: !1659)
!1681 = !DILocation(line: 799, column: 3, scope: !1659)
!1682 = !DILocation(line: 805, column: 3, scope: !1659)
!1683 = !DILocation(line: 806, column: 8, scope: !1659)
!1684 = !DILocation(line: 806, column: 14, scope: !1659)
!1685 = !DILocation(line: 807, column: 12, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1659, file: !1, line: 807, column: 7)
!1687 = !DILocation(line: 807, column: 21, scope: !1686)
!1688 = !DILocation(line: 807, column: 7, scope: !1659)
!1689 = !DILocation(line: 810, column: 3, scope: !1671)
!1690 = !DILocation(line: 0, scope: !1669)
!1691 = !DILocation(line: 795, column: 8, scope: !1659)
!1692 = !DILocation(line: 810, column: 3, scope: !1670)
!1693 = !DILocation(line: 814, column: 21, scope: !1669)
!1694 = !DILocation(line: 814, column: 30, scope: !1669)
!1695 = !DILocation(line: 814, column: 40, scope: !1669)
!1696 = !DILocation(line: 814, column: 23, scope: !1669)
!1697 = !DILocation(line: 815, column: 7, scope: !1669)
!1698 = !DILocation(line: 815, column: 10, scope: !1669)
!1699 = !DILocation(line: 817, column: 11, scope: !1669)
!1700 = !DILocation(line: 819, column: 61, scope: !1673)
!1701 = !DILocation(line: 819, column: 28, scope: !1673)
!1702 = !DILocation(line: 0, scope: !1673)
!1703 = !DILocation(line: 820, column: 31, scope: !1673)
!1704 = !DILocation(line: 821, column: 17, scope: !1673)
!1705 = !DILocation(line: 821, column: 15, scope: !1673)
!1706 = !DILocation(line: 821, column: 12, scope: !1673)
!1707 = !DILocation(line: 822, column: 9, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 822, column: 8)
!1709 = !DILocation(line: 822, column: 8, scope: !1673)
!1710 = !DILocation(line: 823, column: 17, scope: !1708)
!1711 = !DILocation(line: 823, column: 54, scope: !1708)
!1712 = !DILocation(line: 823, column: 6, scope: !1708)
!1713 = !DILocation(line: 824, column: 15, scope: !1673)
!1714 = !DILocation(line: 825, column: 16, scope: !1678)
!1715 = !DILocation(line: 825, column: 8, scope: !1673)
!1716 = !DILocation(line: 828, column: 59, scope: !1677)
!1717 = !DILocation(line: 828, column: 19, scope: !1677)
!1718 = !DILocation(line: 0, scope: !1677)
!1719 = !DILocation(line: 829, column: 18, scope: !1677)
!1720 = !DILocation(line: 830, column: 6, scope: !1677)
!1721 = !DILocation(line: 832, column: 22, scope: !1678)
!1722 = !DILocation(line: 832, column: 32, scope: !1678)
!1723 = !DILocation(line: 832, column: 6, scope: !1678)
!1724 = !DILocation(line: 836, column: 15, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1674, file: !1, line: 835, column: 2)
!1726 = !DILocation(line: 837, column: 15, scope: !1725)
!1727 = !DILocation(line: 0, scope: !1674)
!1728 = distinct !{!1728, !1689, !1729}
!1729 = !DILocation(line: 839, column: 5, scope: !1671)
!1730 = !DILocation(line: 862, column: 8, scope: !1659)
!1731 = !DILocation(line: 862, column: 17, scope: !1659)
!1732 = !DILocation(line: 865, column: 3, scope: !1659)
!1733 = !DILocation(line: 866, column: 1, scope: !1659)
!1734 = distinct !DISubprogram(name: "ebitmap_and_compl", scope: !1, file: !1, line: 872, type: !1515, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1735)
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1752, !1753, !1756}
!1736 = !DILocalVariable(name: "dst", arg: 1, scope: !1734, file: !1, line: 872, type: !502)
!1737 = !DILocalVariable(name: "src1", arg: 2, scope: !1734, file: !1, line: 872, type: !502)
!1738 = !DILocalVariable(name: "src2", arg: 3, scope: !1734, file: !1, line: 872, type: !502)
!1739 = !DILocalVariable(name: "src1size", scope: !1734, file: !1, line: 874, type: !18)
!1740 = !DILocalVariable(name: "sbi", scope: !1734, file: !1, line: 875, type: !516)
!1741 = !DILocalVariable(name: "i", scope: !1734, file: !1, line: 876, type: !18)
!1742 = !DILocalVariable(name: "tempmask", scope: !1734, file: !1, line: 877, type: !20)
!1743 = !DILocalVariable(name: "neweltindex", scope: !1734, file: !1, line: 878, type: !18)
!1744 = !DILocalVariable(name: "src1eltindex", scope: !1734, file: !1, line: 879, type: !18)
!1745 = !DILocalVariable(name: "changed", scope: !1734, file: !1, line: 880, type: !5)
!1746 = !DILocalVariable(name: "newarray", scope: !1734, file: !1, line: 881, type: !36)
!1747 = !DILocalVariable(name: "newarraysize", scope: !1734, file: !1, line: 882, type: !18)
!1748 = !DILocalVariable(name: "src2hasword", scope: !1749, file: !1, line: 895, type: !5)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !1, line: 894, column: 5)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !1, line: 893, column: 3)
!1751 = distinct !DILexicalBlock(scope: !1734, file: !1, line: 893, column: 3)
!1752 = !DILocalVariable(name: "tmpword", scope: !1749, file: !1, line: 896, type: !30)
!1753 = !DILocalVariable(name: "src2count", scope: !1754, file: !1, line: 903, type: !18)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !1, line: 902, column: 2)
!1755 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 901, column: 11)
!1756 = !DILocalVariable(name: "count", scope: !1757, file: !1, line: 927, type: !18)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !1, line: 926, column: 2)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 925, column: 16)
!1759 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 921, column: 11)
!1760 = !DILocation(line: 0, scope: !1734)
!1761 = !DILocation(line: 874, column: 33, scope: !1734)
!1762 = !DILocation(line: 874, column: 43, scope: !1734)
!1763 = !DILocation(line: 875, column: 3, scope: !1734)
!1764 = !DILocation(line: 876, column: 3, scope: !1734)
!1765 = !DILocation(line: 885, column: 8, scope: !1734)
!1766 = !DILocation(line: 885, column: 14, scope: !1734)
!1767 = !DILocation(line: 886, column: 14, scope: !1734)
!1768 = !DILocation(line: 887, column: 3, scope: !1734)
!1769 = !DILocation(line: 888, column: 33, scope: !1734)
!1770 = !DILocation(line: 888, column: 3, scope: !1734)
!1771 = !DILocation(line: 890, column: 24, scope: !1734)
!1772 = !DILocation(line: 891, column: 14, scope: !1734)
!1773 = !DILocation(line: 893, column: 3, scope: !1751)
!1774 = !DILocation(line: 0, scope: !1749)
!1775 = !DILocation(line: 0, scope: !1759)
!1776 = !DILocation(line: 893, column: 3, scope: !1750)
!1777 = !DILocation(line: 898, column: 22, scope: !1749)
!1778 = !DILocation(line: 898, column: 32, scope: !1749)
!1779 = !DILocation(line: 898, column: 42, scope: !1749)
!1780 = !DILocation(line: 898, column: 24, scope: !1749)
!1781 = !DILocation(line: 899, column: 8, scope: !1749)
!1782 = !DILocation(line: 899, column: 11, scope: !1749)
!1783 = !DILocation(line: 901, column: 11, scope: !1749)
!1784 = !DILocation(line: 903, column: 63, scope: !1754)
!1785 = !DILocation(line: 903, column: 29, scope: !1754)
!1786 = !DILocation(line: 0, scope: !1754)
!1787 = !DILocation(line: 904, column: 51, scope: !1754)
!1788 = !DILocation(line: 904, column: 14, scope: !1754)
!1789 = !DILocation(line: 905, column: 18, scope: !1754)
!1790 = !DILocation(line: 905, column: 16, scope: !1754)
!1791 = !DILocation(line: 905, column: 14, scope: !1754)
!1792 = !DILocation(line: 906, column: 8, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1754, file: !1, line: 906, column: 8)
!1794 = !DILocation(line: 906, column: 8, scope: !1754)
!1795 = !DILocation(line: 908, column: 28, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1793, file: !1, line: 907, column: 6)
!1797 = !DILocation(line: 908, column: 8, scope: !1796)
!1798 = !DILocation(line: 908, column: 32, scope: !1796)
!1799 = !DILocation(line: 909, column: 6, scope: !1796)
!1800 = !DILocation(line: 911, column: 27, scope: !1793)
!1801 = !DILocation(line: 911, column: 6, scope: !1793)
!1802 = !DILocation(line: 916, column: 51, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1755, file: !1, line: 915, column: 2)
!1804 = !DILocation(line: 916, column: 14, scope: !1803)
!1805 = !DILocation(line: 917, column: 4, scope: !1803)
!1806 = !DILocation(line: 918, column: 24, scope: !1803)
!1807 = !DILocation(line: 918, column: 4, scope: !1803)
!1808 = !DILocation(line: 918, column: 28, scope: !1803)
!1809 = !DILocation(line: 0, scope: !1755)
!1810 = !DILocation(line: 921, column: 11, scope: !1759)
!1811 = !DILocation(line: 921, column: 21, scope: !1759)
!1812 = !DILocation(line: 921, column: 31, scope: !1759)
!1813 = !DILocation(line: 921, column: 13, scope: !1759)
!1814 = !DILocation(line: 921, column: 38, scope: !1759)
!1815 = !DILocation(line: 921, column: 42, scope: !1759)
!1816 = !DILocation(line: 921, column: 11, scope: !1749)
!1817 = !DILocation(line: 925, column: 17, scope: !1758)
!1818 = !DILocation(line: 925, column: 16, scope: !1759)
!1819 = !DILocation(line: 927, column: 58, scope: !1757)
!1820 = !DILocation(line: 927, column: 25, scope: !1757)
!1821 = !DILocation(line: 0, scope: !1757)
!1822 = !DILocation(line: 928, column: 15, scope: !1757)
!1823 = !DILocation(line: 928, column: 46, scope: !1757)
!1824 = !DILocation(line: 929, column: 2, scope: !1757)
!1825 = distinct !{!1825, !1773, !1826}
!1826 = !DILocation(line: 930, column: 5, scope: !1751)
!1827 = !DILocation(line: 931, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1734, file: !1, line: 931, column: 7)
!1829 = !DILocation(line: 931, column: 7, scope: !1734)
!1830 = !DILocation(line: 933, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !1, line: 932, column: 5)
!1832 = !DILocation(line: 934, column: 21, scope: !1831)
!1833 = !DILocation(line: 935, column: 12, scope: !1831)
!1834 = !DILocation(line: 935, column: 21, scope: !1831)
!1835 = !DILocation(line: 936, column: 18, scope: !1831)
!1836 = !DILocation(line: 936, column: 7, scope: !1831)
!1837 = !DILocation(line: 937, column: 17, scope: !1831)
!1838 = !DILocation(line: 938, column: 12, scope: !1831)
!1839 = !DILocation(line: 938, column: 19, scope: !1831)
!1840 = !DILocation(line: 939, column: 5, scope: !1831)
!1841 = !DILocation(line: 942, column: 13, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1828, file: !1, line: 941, column: 5)
!1843 = !DILocation(line: 942, column: 7, scope: !1842)
!1844 = !DILocation(line: 943, column: 7, scope: !1842)
!1845 = !DILocation(line: 964, column: 1, scope: !1734)
!1846 = !DILocation(line: 963, column: 3, scope: !1734)
!1847 = distinct !DISubprogram(name: "ebitmap_ior_and_compl", scope: !1, file: !1, line: 969, type: !1848, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!5, !502, !502, !502, !502}
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856}
!1851 = !DILocalVariable(name: "dst", arg: 1, scope: !1847, file: !1, line: 969, type: !502)
!1852 = !DILocalVariable(name: "a", arg: 2, scope: !1847, file: !1, line: 969, type: !502)
!1853 = !DILocalVariable(name: "b", arg: 3, scope: !1847, file: !1, line: 969, type: !502)
!1854 = !DILocalVariable(name: "c", arg: 4, scope: !1847, file: !1, line: 969, type: !502)
!1855 = !DILocalVariable(name: "changed", scope: !1847, file: !1, line: 971, type: !5)
!1856 = !DILocalVariable(name: "temp", scope: !1847, file: !1, line: 972, type: !502)
!1857 = !DILocation(line: 0, scope: !1847)
!1858 = !DILocation(line: 972, column: 18, scope: !1847)
!1859 = !DILocation(line: 978, column: 8, scope: !1847)
!1860 = !DILocation(line: 978, column: 14, scope: !1847)
!1861 = !DILocation(line: 979, column: 3, scope: !1847)
!1862 = !DILocation(line: 980, column: 13, scope: !1847)
!1863 = !DILocation(line: 995, column: 3, scope: !1847)
!1864 = !DILocation(line: 997, column: 3, scope: !1847)
!1865 = distinct !DISubprogram(name: "ebitmap_equal_p", scope: !1, file: !1, line: 1003, type: !1365, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1866)
!1866 = !{!1867, !1868, !1869}
!1867 = !DILocalVariable(name: "dst", arg: 1, scope: !1865, file: !1, line: 1003, type: !502)
!1868 = !DILocalVariable(name: "src", arg: 2, scope: !1865, file: !1, line: 1003, type: !502)
!1869 = !DILocalVariable(name: "which", scope: !1865, file: !1, line: 1005, type: !18)
!1870 = !DILocation(line: 0, scope: !1865)
!1871 = !DILocation(line: 1005, column: 24, scope: !1865)
!1872 = !DILocation(line: 1007, column: 12, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1865, file: !1, line: 1007, column: 7)
!1874 = !DILocation(line: 1007, column: 29, scope: !1873)
!1875 = !DILocation(line: 1007, column: 21, scope: !1873)
!1876 = !DILocation(line: 1007, column: 7, scope: !1865)
!1877 = !DILocation(line: 1013, column: 13, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1865, file: !1, line: 1013, column: 7)
!1879 = !DILocation(line: 1014, column: 7, scope: !1878)
!1880 = !DILocation(line: 1014, column: 11, scope: !1878)
!1881 = !DILocation(line: 1013, column: 7, scope: !1865)
!1882 = !DILocation(line: 1016, column: 26, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 1016, column: 12)
!1884 = !DILocation(line: 0, scope: !1883)
!1885 = !DILocation(line: 1016, column: 36, scope: !1883)
!1886 = !DILocation(line: 1016, column: 18, scope: !1883)
!1887 = !DILocation(line: 1017, column: 5, scope: !1883)
!1888 = !DILocation(line: 1017, column: 44, scope: !1883)
!1889 = !DILocation(line: 1017, column: 9, scope: !1883)
!1890 = !DILocation(line: 1016, column: 12, scope: !1878)
!1891 = !DILocation(line: 1020, column: 23, scope: !1865)
!1892 = !DILocation(line: 1020, column: 34, scope: !1865)
!1893 = !DILocation(line: 1021, column: 9, scope: !1865)
!1894 = !DILocation(line: 1021, column: 4, scope: !1865)
!1895 = !DILocation(line: 1021, column: 18, scope: !1865)
!1896 = !DILocation(line: 1020, column: 10, scope: !1865)
!1897 = !DILocation(line: 1021, column: 47, scope: !1865)
!1898 = !DILocation(line: 1020, column: 3, scope: !1865)
!1899 = !DILocation(line: 1023, column: 1, scope: !1865)
