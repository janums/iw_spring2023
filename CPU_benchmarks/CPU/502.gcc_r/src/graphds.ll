; ModuleID = 'graphds.bc'
source_filename = "graphds.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.graph = type { i32, %struct.vertex*, %struct.htab* }
%struct.vertex = type { %struct.graph_edge*, %struct.graph_edge*, i32, i32, i8* }
%struct.graph_edge = type { i32, i32, %struct.graph_edge*, %struct.graph_edge*, i8* }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"%d (%d)\09<-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\09->\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"graphds.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !110 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !126
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !127
  ret i32 %call, !dbg !128
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !129 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !132
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !133
  ret i32 %call, !dbg !134
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !135 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !193, metadata !DIExpression()), !dbg !194
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !195
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !195
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !195
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !195
  %cmp = icmp uge i8* %0, %1, !dbg !195
  %conv1 = zext i1 %cmp to i64, !dbg !195
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !195
  %tobool = icmp eq i64 %expval, 0, !dbg !195
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !195

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !195
  br label %cond.end, !dbg !195

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !195
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !195
  %2 = load i8, i8* %0, align 1, !dbg !195
  %conv3 = zext i8 %2 to i32, !dbg !195
  br label %cond.end, !dbg !195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !195
  ret i32 %cond, !dbg !196
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !197 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !199, metadata !DIExpression()), !dbg !200
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !201
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !201
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !201
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !201
  %cmp = icmp uge i8* %0, %1, !dbg !201
  %conv1 = zext i1 %cmp to i64, !dbg !201
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !201
  %tobool = icmp eq i64 %expval, 0, !dbg !201
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !201

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !201
  br label %cond.end, !dbg !201

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !201
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !201
  %2 = load i8, i8* %0, align 1, !dbg !201
  %conv3 = zext i8 %2 to i32, !dbg !201
  br label %cond.end, !dbg !201

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !201
  ret i32 %cond, !dbg !202
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !203 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !204
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !204
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !204
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !204
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !204
  %cmp = icmp uge i8* %1, %2, !dbg !204
  %conv1 = zext i1 %cmp to i64, !dbg !204
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !204
  %tobool = icmp eq i64 %expval, 0, !dbg !204
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !204

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !204
  br label %cond.end, !dbg !204

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !204
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !204
  %3 = load i8, i8* %1, align 1, !dbg !204
  %conv3 = zext i8 %3 to i32, !dbg !204
  br label %cond.end, !dbg !204

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !204
  ret i32 %cond, !dbg !205
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !206 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !212
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !213
  ret i32 %call, !dbg !214
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !219, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !220, metadata !DIExpression()), !dbg !221
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !222
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !222
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !222
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !222
  %cmp = icmp uge i8* %0, %1, !dbg !222
  %conv1 = zext i1 %cmp to i64, !dbg !222
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !222
  %tobool = icmp eq i64 %expval, 0, !dbg !222
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !222

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !222
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !222
  br label %cond.end, !dbg !222

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !222
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !222
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !222
  store i8 %conv2, i8* %0, align 1, !dbg !222
  %conv6 = and i32 %__c, 255, !dbg !222
  br label %cond.end, !dbg !222

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !222
  ret i32 %cond, !dbg !223
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !224 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !226, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !227, metadata !DIExpression()), !dbg !228
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !229
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !229
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !229
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !229
  %cmp = icmp uge i8* %0, %1, !dbg !229
  %conv1 = zext i1 %cmp to i64, !dbg !229
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !229
  %tobool = icmp eq i64 %expval, 0, !dbg !229
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !229

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !229
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !229
  br label %cond.end, !dbg !229

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !229
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !229
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !229
  store i8 %conv2, i8* %0, align 1, !dbg !229
  %conv6 = and i32 %__c, 255, !dbg !229
  br label %cond.end, !dbg !229

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !229
  ret i32 %cond, !dbg !230
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !231 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !235
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !235
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !235
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !235
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !235
  %cmp = icmp uge i8* %1, %2, !dbg !235
  %conv1 = zext i1 %cmp to i64, !dbg !235
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !235
  %tobool = icmp eq i64 %expval, 0, !dbg !235
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !235

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !235
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !235
  br label %cond.end, !dbg !235

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !235
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !235
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !235
  store i8 %conv4, i8* %1, align 1, !dbg !235
  %conv6 = and i32 %__c, 255, !dbg !235
  br label %cond.end, !dbg !235

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !235
  ret i32 %cond, !dbg !236
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !237 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !243, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64* %__n, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !245, metadata !DIExpression()), !dbg !246
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !247
  ret i64 %call, !dbg !248
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !249 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !251, metadata !DIExpression()), !dbg !252
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !253
  %0 = load i32, i32* %_flags, align 8, !dbg !253
  %and = lshr i32 %0, 4, !dbg !253
  %and.lobit = and i32 %and, 1, !dbg !253
  ret i32 %and.lobit, !dbg !254
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !255 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !257, metadata !DIExpression()), !dbg !258
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !259
  %0 = load i32, i32* %_flags, align 8, !dbg !259
  %and = lshr i32 %0, 5, !dbg !259
  %and.lobit = and i32 %and, 1, !dbg !259
  ret i32 %and.lobit, !dbg !260
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !261 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !264, metadata !DIExpression()), !dbg !265
  %__c.off = add i32 %__c, 128, !dbg !266
  %0 = icmp ult i32 %__c.off, 384, !dbg !266
  br i1 %0, label %cond.true, label %cond.end, !dbg !266

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !267
  %1 = load i32*, i32** %call, align 8, !dbg !268
  %idxprom = sext i32 %__c to i64, !dbg !269
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !269
  %2 = load i32, i32* %arrayidx, align 4, !dbg !269
  br label %cond.end, !dbg !270

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !270
  ret i32 %cond, !dbg !271
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !272 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !274, metadata !DIExpression()), !dbg !275
  %__c.off = add i32 %__c, 128, !dbg !276
  %0 = icmp ult i32 %__c.off, 384, !dbg !276
  br i1 %0, label %cond.true, label %cond.end, !dbg !276

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !277
  %1 = load i32*, i32** %call, align 8, !dbg !278
  %idxprom = sext i32 %__c to i64, !dbg !279
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !279
  %2 = load i32, i32* %arrayidx, align 4, !dbg !279
  br label %cond.end, !dbg !280

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !280
  ret i32 %cond, !dbg !281
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !282 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !287, metadata !DIExpression()), !dbg !288
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !289
  %conv = trunc i64 %call to i32, !dbg !290
  ret i32 %conv, !dbg !291
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !292 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !296, metadata !DIExpression()), !dbg !297
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !298
  ret i64 %call, !dbg !299
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !305, metadata !DIExpression()), !dbg !306
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !307
  ret i64 %call, !dbg !308
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !309 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !315, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i8* %__base, metadata !316, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !317, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %__size, metadata !318, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !319, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !321, metadata !DIExpression()), !dbg !325
  br label %while.cond, !dbg !326

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !327
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !325
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !321, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !320, metadata !DIExpression()), !dbg !325
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !328
  br i1 %cmp, label %while.body, label %cleanup, !dbg !326

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !329
  %div = lshr i64 %add, 1, !dbg !331
  call void @llvm.dbg.value(metadata i64 %div, metadata !322, metadata !DIExpression()), !dbg !325
  %mul = mul i64 %div, %__size, !dbg !332
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !333
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !323, metadata !DIExpression()), !dbg !325
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !334
  call void @llvm.dbg.value(metadata i32 %call, metadata !324, metadata !DIExpression()), !dbg !325
  %cmp1 = icmp slt i32 %call, 0, !dbg !335
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !337

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !338
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !340

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !341
  call void @llvm.dbg.value(metadata i64 %add4, metadata !320, metadata !DIExpression()), !dbg !325
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !325
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !325
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !321, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !320, metadata !DIExpression()), !dbg !325
  br label %while.cond, !dbg !326, !llvm.loop !342

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !325
  ret i8* %retval.0, !dbg !344
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !345 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !351, metadata !DIExpression()), !dbg !352
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !353
  ret double %call, !dbg !354
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !355 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !364, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !365, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 %base, metadata !366, metadata !DIExpression()), !dbg !367
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !368
  ret i64 %call, !dbg !369
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !370 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !376, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !377, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i32 %base, metadata !378, metadata !DIExpression()), !dbg !379
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !380
  ret i64 %call, !dbg !381
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !382 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !393, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 %base, metadata !395, metadata !DIExpression()), !dbg !396
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !397
  ret i64 %call, !dbg !398
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !399 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !403, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !404, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata i32 %base, metadata !405, metadata !DIExpression()), !dbg !406
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !407
  ret i64 %call, !dbg !408
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !409 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !451, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !452, metadata !DIExpression()), !dbg !453
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !454
  ret i32 %call, !dbg !455
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !456 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !458, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !459, metadata !DIExpression()), !dbg !460
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !461
  ret i32 %call, !dbg !462
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !463 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !467, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !468, metadata !DIExpression()), !dbg !469
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !470
  ret i32 %call, !dbg !471
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !472 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !476, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !477, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !478, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !479, metadata !DIExpression()), !dbg !480
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !481
  ret i32 %call, !dbg !482
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !483 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !487, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !488, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !489, metadata !DIExpression()), !dbg !490
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !489, metadata !DIExpression(DW_OP_deref)), !dbg !490
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !491
  ret i32 %call, !dbg !492
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !493 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !497, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i8* %__path, metadata !498, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !499, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !500, metadata !DIExpression()), !dbg !501
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !500, metadata !DIExpression(DW_OP_deref)), !dbg !501
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !502
  ret i32 %call, !dbg !503
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !504 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !528, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !529, metadata !DIExpression()), !dbg !530
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !531
  ret i32 %call, !dbg !532
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !533 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !535, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !536, metadata !DIExpression()), !dbg !537
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !538
  ret i32 %call, !dbg !539
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !540 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !544, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !545, metadata !DIExpression()), !dbg !546
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !547
  ret i32 %call, !dbg !548
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !549 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !553, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !554, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !555, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !556, metadata !DIExpression()), !dbg !557
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !558
  ret i32 %call, !dbg !559
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_graph(%struct._IO_FILE* %f, %struct.graph* %g) local_unnamed_addr #4 !dbg !560 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !564, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata %struct.graph* %g, metadata !565, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 0, metadata !566, metadata !DIExpression()), !dbg !568
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 0, !dbg !569
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !572
  br label %for.cond, !dbg !575

for.cond:                                         ; preds = %for.inc29, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc29 ], [ 0, %entry ], !dbg !576
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !566, metadata !DIExpression()), !dbg !568
  %0 = load i32, i32* %n_vertices, align 8, !dbg !577
  %1 = sext i32 %0 to i64, !dbg !578
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !578
  br i1 %cmp, label %for.body, label %for.end30, !dbg !579

for.body:                                         ; preds = %for.cond
  %2 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !580
  %pred = getelementptr inbounds %struct.vertex, %struct.vertex* %2, i64 %indvars.iv, i32 0, !dbg !581
  %3 = load %struct.graph_edge*, %struct.graph_edge** %pred, align 8, !dbg !581
  %tobool = icmp eq %struct.graph_edge* %3, null, !dbg !582
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !583

land.lhs.true:                                    ; preds = %for.body
  %succ = getelementptr inbounds %struct.vertex, %struct.vertex* %2, i64 %indvars.iv, i32 1, !dbg !584
  %4 = load %struct.graph_edge*, %struct.graph_edge** %succ, align 8, !dbg !584
  %tobool4 = icmp eq %struct.graph_edge* %4, null, !dbg !585
  br i1 %tobool4, label %for.inc29, label %if.end, !dbg !586

if.end:                                           ; preds = %land.lhs.true, %for.body
  %component = getelementptr inbounds %struct.vertex, %struct.vertex* %2, i64 %indvars.iv, i32 2, !dbg !587
  %5 = load i32, i32* %component, align 8, !dbg !587
  %6 = trunc i64 %indvars.iv to i32, !dbg !588
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %5) #6, !dbg !588
  %7 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !589
  %pred11 = getelementptr inbounds %struct.vertex, %struct.vertex* %7, i64 %indvars.iv, i32 0, !dbg !591
  br label %for.cond12, !dbg !592

for.cond12:                                       ; preds = %for.body14, %if.end
  %e.0.in = phi %struct.graph_edge** [ %pred11, %if.end ], [ %pred_next, %for.body14 ]
  %e.0 = load %struct.graph_edge*, %struct.graph_edge** %e.0.in, align 8, !dbg !593
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0, metadata !567, metadata !DIExpression()), !dbg !568
  %tobool13 = icmp eq %struct.graph_edge* %e.0, null, !dbg !594
  br i1 %tobool13, label %for.end, label %for.body14, !dbg !594

for.body14:                                       ; preds = %for.cond12
  %src = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 0, !dbg !595
  %8 = load i32, i32* %src, align 8, !dbg !595
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %8) #6, !dbg !597
  %pred_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 2, !dbg !598
  br label %for.cond12, !dbg !599, !llvm.loop !600

for.end:                                          ; preds = %for.cond12
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !602
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !603
  %9 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !604
  %succ21 = getelementptr inbounds %struct.vertex, %struct.vertex* %9, i64 %indvars.iv, i32 1, !dbg !606
  br label %for.cond22, !dbg !607

for.cond22:                                       ; preds = %for.body24, %for.end
  %e.1.in = phi %struct.graph_edge** [ %succ21, %for.end ], [ %succ_next, %for.body24 ]
  %e.1 = load %struct.graph_edge*, %struct.graph_edge** %e.1.in, align 8, !dbg !608
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.1, metadata !567, metadata !DIExpression()), !dbg !568
  %tobool23 = icmp eq %struct.graph_edge* %e.1, null, !dbg !609
  br i1 %tobool23, label %for.end27, label %for.body24, !dbg !609

for.body24:                                       ; preds = %for.cond22
  %dest = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.1, i64 0, i32 1, !dbg !610
  %10 = load i32, i32* %dest, align 4, !dbg !610
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10) #6, !dbg !612
  %succ_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.1, i64 0, i32 3, !dbg !613
  br label %for.cond22, !dbg !614, !llvm.loop !615

for.end27:                                        ; preds = %for.cond22
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !617
  br label %for.inc29, !dbg !618

for.inc29:                                        ; preds = %land.lhs.true, %for.end27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !619
  call void @llvm.dbg.value(metadata i32 undef, metadata !566, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !568
  br label %for.cond, !dbg !620, !llvm.loop !621

for.end30:                                        ; preds = %for.cond
  ret void, !dbg !623
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.graph* @new_graph(i32 %n_vertices) local_unnamed_addr #4 !dbg !624 {
entry:
  call void @llvm.dbg.value(metadata i32 %n_vertices, metadata !628, metadata !DIExpression()), !dbg !630
  %call = tail call i8* @xmalloc(i64 24) #6, !dbg !631
  %0 = bitcast i8* %call to %struct.graph*, !dbg !631
  call void @llvm.dbg.value(metadata %struct.graph* %0, metadata !629, metadata !DIExpression()), !dbg !630
  %n_vertices1 = bitcast i8* %call to i32*, !dbg !632
  store i32 %n_vertices, i32* %n_vertices1, align 8, !dbg !633
  %conv = sext i32 %n_vertices to i64, !dbg !634
  %call2 = tail call i8* @xcalloc(i64 %conv, i64 32) #6, !dbg !634
  %vertices = getelementptr inbounds i8, i8* %call, i64 8, !dbg !635
  %1 = bitcast i8* %vertices to i8**, !dbg !636
  store i8* %call2, i8** %1, align 8, !dbg !636
  ret %struct.graph* %0, !dbg !637
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.graph_edge* @add_edge(%struct.graph* %g, i32 %f, i32 %t) local_unnamed_addr #4 !dbg !638 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %g, metadata !642, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i32 %f, metadata !643, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i32 %t, metadata !644, metadata !DIExpression()), !dbg !648
  %call = tail call i8* @xmalloc(i64 32) #6, !dbg !649
  %0 = bitcast i8* %call to %struct.graph_edge*, !dbg !649
  call void @llvm.dbg.value(metadata %struct.graph_edge* %0, metadata !645, metadata !DIExpression()), !dbg !648
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !650
  %1 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !650
  %idxprom = sext i32 %f to i64, !dbg !651
  call void @llvm.dbg.value(metadata %struct.vertex* undef, metadata !646, metadata !DIExpression()), !dbg !648
  %idxprom2 = sext i32 %t to i64, !dbg !652
  %arrayidx3 = getelementptr inbounds %struct.vertex, %struct.vertex* %1, i64 %idxprom2, !dbg !652
  call void @llvm.dbg.value(metadata %struct.vertex* %arrayidx3, metadata !647, metadata !DIExpression()), !dbg !648
  %src = bitcast i8* %call to i32*, !dbg !653
  store i32 %f, i32* %src, align 8, !dbg !654
  %dest = getelementptr inbounds i8, i8* %call, i64 4, !dbg !655
  %2 = bitcast i8* %dest to i32*, !dbg !655
  store i32 %t, i32* %2, align 4, !dbg !656
  %3 = bitcast %struct.vertex* %arrayidx3 to i64*, !dbg !657
  %4 = load i64, i64* %3, align 8, !dbg !657
  %pred_next = getelementptr inbounds i8, i8* %call, i64 8, !dbg !658
  %5 = bitcast i8* %pred_next to i64*, !dbg !659
  store i64 %4, i64* %5, align 8, !dbg !659
  %6 = bitcast %struct.vertex* %arrayidx3 to i8**, !dbg !660
  store i8* %call, i8** %6, align 8, !dbg !660
  %succ = getelementptr inbounds %struct.vertex, %struct.vertex* %1, i64 %idxprom, i32 1, !dbg !661
  %7 = bitcast %struct.graph_edge** %succ to i64*, !dbg !661
  %8 = load i64, i64* %7, align 8, !dbg !661
  %succ_next = getelementptr inbounds i8, i8* %call, i64 16, !dbg !662
  %9 = bitcast i8* %succ_next to i64*, !dbg !663
  store i64 %8, i64* %9, align 8, !dbg !663
  %10 = bitcast %struct.graph_edge** %succ to i8**, !dbg !664
  store i8* %call, i8** %10, align 8, !dbg !664
  ret %struct.graph_edge* %0, !dbg !665
}

; Function Attrs: nounwind uwtable
define dso_local void @identify_vertices(%struct.graph* %g, i32 %v, i32 %u) local_unnamed_addr #4 !dbg !666 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %g, metadata !670, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %v, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %u, metadata !672, metadata !DIExpression()), !dbg !677
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !678
  %0 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !678
  %idxprom = sext i32 %v to i64, !dbg !679
  call void @llvm.dbg.value(metadata %struct.vertex* %arrayidx, metadata !673, metadata !DIExpression()), !dbg !677
  %idxprom2 = sext i32 %u to i64, !dbg !680
  call void @llvm.dbg.value(metadata %struct.vertex* undef, metadata !674, metadata !DIExpression()), !dbg !677
  %succ = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom2, i32 1, !dbg !681
  %1 = load %struct.graph_edge*, %struct.graph_edge** %succ, align 8, !dbg !681
  call void @llvm.dbg.value(metadata %struct.graph_edge* %1, metadata !675, metadata !DIExpression()), !dbg !677
  %succ4 = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom, i32 1, !dbg !683
  %2 = bitcast %struct.graph_edge** %succ4 to i64*, !dbg !683
  br label %for.cond, !dbg !686

for.cond:                                         ; preds = %for.body, %entry
  %e.0 = phi %struct.graph_edge* [ %1, %entry ], [ %3, %for.body ], !dbg !687
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0, metadata !675, metadata !DIExpression()), !dbg !677
  %tobool = icmp eq %struct.graph_edge* %e.0, null, !dbg !688
  br i1 %tobool, label %for.end, label %for.body, !dbg !688

for.body:                                         ; preds = %for.cond
  %succ_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 3, !dbg !689
  %3 = load %struct.graph_edge*, %struct.graph_edge** %succ_next, align 8, !dbg !689
  call void @llvm.dbg.value(metadata %struct.graph_edge* %3, metadata !676, metadata !DIExpression()), !dbg !677
  %src = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 0, !dbg !690
  store i32 %v, i32* %src, align 8, !dbg !691
  %4 = load i64, i64* %2, align 8, !dbg !692
  %5 = bitcast %struct.graph_edge** %succ_next to i64*, !dbg !693
  store i64 %4, i64* %5, align 8, !dbg !693
  store %struct.graph_edge* %e.0, %struct.graph_edge** %succ4, align 8, !dbg !694
  call void @llvm.dbg.value(metadata %struct.graph_edge* %3, metadata !675, metadata !DIExpression()), !dbg !677
  br label %for.cond, !dbg !695, !llvm.loop !696

for.end:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom, !dbg !679
  store %struct.graph_edge* null, %struct.graph_edge** %succ, align 8, !dbg !698
  %pred = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom2, i32 0, !dbg !699
  %6 = load %struct.graph_edge*, %struct.graph_edge** %pred, align 8, !dbg !699
  call void @llvm.dbg.value(metadata %struct.graph_edge* %6, metadata !675, metadata !DIExpression()), !dbg !677
  %7 = bitcast %struct.vertex* %arrayidx to i64*, !dbg !701
  %pred13 = getelementptr inbounds %struct.vertex, %struct.vertex* %arrayidx, i64 0, i32 0, !dbg !701
  br label %for.cond8, !dbg !704

for.cond8:                                        ; preds = %for.body10, %for.end
  %e.1 = phi %struct.graph_edge* [ %6, %for.end ], [ %8, %for.body10 ], !dbg !705
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.1, metadata !675, metadata !DIExpression()), !dbg !677
  %tobool9 = icmp eq %struct.graph_edge* %e.1, null, !dbg !706
  br i1 %tobool9, label %for.end15, label %for.body10, !dbg !706

for.body10:                                       ; preds = %for.cond8
  %pred_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.1, i64 0, i32 2, !dbg !707
  %8 = load %struct.graph_edge*, %struct.graph_edge** %pred_next, align 8, !dbg !707
  call void @llvm.dbg.value(metadata %struct.graph_edge* %8, metadata !676, metadata !DIExpression()), !dbg !677
  %dest = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.1, i64 0, i32 1, !dbg !708
  store i32 %v, i32* %dest, align 4, !dbg !709
  %9 = load i64, i64* %7, align 8, !dbg !710
  %10 = bitcast %struct.graph_edge** %pred_next to i64*, !dbg !711
  store i64 %9, i64* %10, align 8, !dbg !711
  store %struct.graph_edge* %e.1, %struct.graph_edge** %pred13, align 8, !dbg !712
  call void @llvm.dbg.value(metadata %struct.graph_edge* %8, metadata !675, metadata !DIExpression()), !dbg !677
  br label %for.cond8, !dbg !713, !llvm.loop !714

for.end15:                                        ; preds = %for.cond8
  store %struct.graph_edge* null, %struct.graph_edge** %pred, align 8, !dbg !716
  ret void, !dbg !717
}

; Function Attrs: nounwind uwtable
define dso_local i32 @graphds_dfs(%struct.graph* %g, i32* %qs, i32 %nq, %struct.VEC_int_heap** %qt, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) local_unnamed_addr #4 !dbg !718 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %av = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.graph* %g, metadata !784, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32* %qs, metadata !785, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %nq, metadata !786, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %qt, metadata !787, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i8 %forward, metadata !788, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %subgraph, metadata !789, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 0, metadata !791, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 0, metadata !793, metadata !DIExpression()), !dbg !806
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 0, !dbg !807
  %0 = load i32, i32* %n_vertices, align 8, !dbg !807
  %conv = sext i32 %0 to i64, !dbg !807
  %mul = shl nsw i64 %conv, 3, !dbg !807
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !807
  %1 = bitcast i8* %call to %struct.graph_edge**, !dbg !807
  call void @llvm.dbg.value(metadata %struct.graph_edge** %1, metadata !796, metadata !DIExpression()), !dbg !806
  %2 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !808
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !808
  %3 = bitcast i32* %av to i8*, !dbg !809
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !809
  %tobool = icmp eq %struct.bitmap_head_def* %subgraph, null, !dbg !810
  br i1 %tobool, label %for.cond6.preheader, label %if.then, !dbg !812

for.cond6.preheader:                              ; preds = %entry
  %vertices10 = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !813
  br label %for.cond6, !dbg !818

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !797, metadata !DIExpression(DW_OP_deref)), !dbg !806
  call void @llvm.dbg.value(metadata i32* %av, metadata !805, metadata !DIExpression(DW_OP_deref)), !dbg !806
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %subgraph, i32 0, i32* nonnull %av) #8, !dbg !819
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !822
  br label %for.cond, !dbg !819

for.cond:                                         ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !797, metadata !DIExpression(DW_OP_deref)), !dbg !806
  call void @llvm.dbg.value(metadata i32* %av, metadata !805, metadata !DIExpression(DW_OP_deref)), !dbg !806
  %call1 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %av) #8, !dbg !825
  %tobool2 = icmp eq i8 %call1, 0, !dbg !819
  br i1 %tobool2, label %if.end.loopexit2, label %for.body, !dbg !819

for.body:                                         ; preds = %for.cond
  %4 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !826
  %5 = load i32, i32* %av, align 4, !dbg !827
  call void @llvm.dbg.value(metadata i32 %5, metadata !805, metadata !DIExpression()), !dbg !806
  %idxprom = zext i32 %5 to i64, !dbg !828
  %component = getelementptr inbounds %struct.vertex, %struct.vertex* %4, i64 %idxprom, i32 2, !dbg !829
  store i32 -1, i32* %component, align 8, !dbg !830
  %6 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !831
  %7 = load i32, i32* %av, align 4, !dbg !832
  call void @llvm.dbg.value(metadata i32 %7, metadata !805, metadata !DIExpression()), !dbg !806
  %idxprom4 = zext i32 %7 to i64, !dbg !833
  %post = getelementptr inbounds %struct.vertex, %struct.vertex* %6, i64 %idxprom4, i32 3, !dbg !834
  store i32 -1, i32* %post, align 4, !dbg !835
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !797, metadata !DIExpression(DW_OP_deref)), !dbg !806
  call void @llvm.dbg.value(metadata i32* %av, metadata !805, metadata !DIExpression(DW_OP_deref)), !dbg !806
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %av) #8, !dbg !825
  br label %for.cond, !dbg !825, !llvm.loop !836

for.cond6:                                        ; preds = %for.cond6.preheader, %for.body9
  %indvars.iv15 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next16, %for.body9 ], !dbg !838
  call void @llvm.dbg.value(metadata i64 %indvars.iv15, metadata !790, metadata !DIExpression()), !dbg !806
  %8 = load i32, i32* %n_vertices, align 8, !dbg !839
  %9 = sext i32 %8 to i64, !dbg !840
  %cmp = icmp slt i64 %indvars.iv15, %9, !dbg !840
  br i1 %cmp, label %for.body9, label %if.end.loopexit, !dbg !818

for.body9:                                        ; preds = %for.cond6
  %10 = load %struct.vertex*, %struct.vertex** %vertices10, align 8, !dbg !841
  %component13 = getelementptr inbounds %struct.vertex, %struct.vertex* %10, i64 %indvars.iv15, i32 2, !dbg !842
  store i32 -1, i32* %component13, align 8, !dbg !843
  %11 = load %struct.vertex*, %struct.vertex** %vertices10, align 8, !dbg !844
  %post17 = getelementptr inbounds %struct.vertex, %struct.vertex* %11, i64 %indvars.iv15, i32 3, !dbg !845
  store i32 -1, i32* %post17, align 4, !dbg !846
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !847
  call void @llvm.dbg.value(metadata i32 undef, metadata !790, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !806
  br label %for.cond6, !dbg !848, !llvm.loop !849

if.end.loopexit:                                  ; preds = %for.cond6
  br label %if.end, !dbg !851

if.end.loopexit2:                                 ; preds = %for.cond
  br label %if.end, !dbg !851

if.end:                                           ; preds = %if.end.loopexit2, %if.end.loopexit
  call void @llvm.dbg.value(metadata i32 0, metadata !790, metadata !DIExpression()), !dbg !806
  %vertices26 = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !853
  %tobool55 = icmp eq %struct.VEC_int_heap** %qt, null, !dbg !857
  %12 = sext i32 %nq to i64, !dbg !851
  br label %for.cond20, !dbg !851

for.cond20:                                       ; preds = %for.inc82, %if.end
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc82 ], [ 0, %if.end ], !dbg !862
  %tick.0 = phi i32 [ %tick.2, %for.inc82 ], [ 0, %if.end ], !dbg !863
  %comp.0 = phi i32 [ %comp.1, %for.inc82 ], [ 0, %if.end ], !dbg !864
  call void @llvm.dbg.value(metadata i32 %comp.0, metadata !793, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %tick.0, metadata !791, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !790, metadata !DIExpression()), !dbg !806
  %cmp21 = icmp slt i64 %indvars.iv13, %12, !dbg !865
  br i1 %cmp21, label %for.body23, label %for.end84, !dbg !866

for.body23:                                       ; preds = %for.cond20
  %arrayidx25 = getelementptr inbounds i32, i32* %qs, i64 %indvars.iv13, !dbg !867
  %13 = load i32, i32* %arrayidx25, align 4, !dbg !867
  call void @llvm.dbg.value(metadata i32 %13, metadata !792, metadata !DIExpression()), !dbg !806
  %14 = load %struct.vertex*, %struct.vertex** %vertices26, align 8, !dbg !868
  %idxprom27 = sext i32 %13 to i64, !dbg !869
  %post29 = getelementptr inbounds %struct.vertex, %struct.vertex* %14, i64 %idxprom27, i32 3, !dbg !870
  %15 = load i32, i32* %post29, align 4, !dbg !870
  %cmp30 = icmp eq i32 %15, -1, !dbg !871
  br i1 %cmp30, label %if.end33, label %for.inc82, !dbg !872

if.end33:                                         ; preds = %for.body23
  %inc34 = add nsw i32 %comp.0, 1, !dbg !873
  call void @llvm.dbg.value(metadata i32 %inc34, metadata !793, metadata !DIExpression()), !dbg !806
  %component38 = getelementptr inbounds %struct.vertex, %struct.vertex* %14, i64 %idxprom27, i32 2, !dbg !874
  store i32 %comp.0, i32* %component38, align 8, !dbg !875
  %call39 = call fastcc %struct.graph_edge* @dfs_fst_edge(%struct.graph* %g, i32 %13, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) #8, !dbg !876
  call void @llvm.dbg.value(metadata %struct.graph_edge* %call39, metadata !795, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 0, metadata !794, metadata !DIExpression()), !dbg !806
  br i1 %tobool55, label %if.end33.split.us, label %if.end33.if.end33.split_crit_edge, !dbg !877

if.end33.if.end33.split_crit_edge:                ; preds = %if.end33
  br label %while.cond.outer, !dbg !877

if.end33.split.us:                                ; preds = %if.end33
  br label %while.cond.outer.us, !dbg !877

while.cond.outer.us:                              ; preds = %if.end66.us, %if.end33.split.us
  %tick.1.ph.us = phi i32 [ %inc59.us, %if.end66.us ], [ %tick.0, %if.end33.split.us ]
  %v.0.ph.us = phi i32 [ %call69.us, %if.end66.us ], [ %13, %if.end33.split.us ]
  %top.0.ph.us = phi i32 [ %dec.us, %if.end66.us ], [ 0, %if.end33.split.us ]
  %e.0.ph.us = phi %struct.graph_edge* [ %call70.us, %if.end66.us ], [ %call39, %if.end33.split.us ]
  %16 = sext i32 %top.0.ph.us to i64, !dbg !877
  br label %while.cond.us, !dbg !877

while.cond40.us:                                  ; preds = %while.cond.us, %if.end51.us
  %e.1.us = phi %struct.graph_edge* [ %e.0.us, %while.cond.us ], [ %call52.us, %if.end51.us ], !dbg !878
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.1.us, metadata !795, metadata !DIExpression()), !dbg !806
  %cond.us = icmp eq %struct.graph_edge* %e.1.us, null, !dbg !879
  br i1 %cond.us, label %if.then54.loopexit.us, label %while.body42.us, !dbg !879

while.body42.us:                                  ; preds = %while.cond40.us
  %17 = load %struct.vertex*, %struct.vertex** %vertices26, align 8, !dbg !880
  %call44.us = call fastcc i32 @dfs_edge_dest(%struct.graph_edge* nonnull %e.1.us, i8 zeroext %forward) #8, !dbg !883
  %idxprom45.us = sext i32 %call44.us to i64, !dbg !884
  %component47.us = getelementptr inbounds %struct.vertex, %struct.vertex* %17, i64 %idxprom45.us, i32 2, !dbg !885
  %18 = load i32, i32* %component47.us, align 8, !dbg !885
  %cmp48.us = icmp eq i32 %18, -1, !dbg !886
  br i1 %cmp48.us, label %while.end.us, label %if.end51.us, !dbg !887

if.end51.us:                                      ; preds = %while.body42.us
  %call52.us = call fastcc %struct.graph_edge* @dfs_next_edge(%struct.graph_edge* nonnull %e.1.us, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) #8, !dbg !888
  call void @llvm.dbg.value(metadata %struct.graph_edge* %call52.us, metadata !795, metadata !DIExpression()), !dbg !806
  br label %while.cond40.us, !dbg !879, !llvm.loop !889

while.end.us:                                     ; preds = %while.body42.us
  %e.1.us.lcssa19 = phi %struct.graph_edge* [ %e.1.us, %while.body42.us ], !dbg !878
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.1.us.lcssa19, metadata !795, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.1.us.lcssa19, metadata !795, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.1.us.lcssa19, metadata !795, metadata !DIExpression()), !dbg !806
  %indvars.iv.next12 = add i64 %indvars.iv11, 1, !dbg !891
  call void @llvm.dbg.value(metadata i32 undef, metadata !794, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !806
  %arrayidx74.us = getelementptr inbounds %struct.graph_edge*, %struct.graph_edge** %1, i64 %indvars.iv11, !dbg !892
  store %struct.graph_edge* %e.1.us.lcssa19, %struct.graph_edge** %arrayidx74.us, align 8, !dbg !893
  %call75.us = call fastcc i32 @dfs_edge_dest(%struct.graph_edge* nonnull %e.1.us.lcssa19, i8 zeroext %forward) #8, !dbg !894
  call void @llvm.dbg.value(metadata i32 %call75.us, metadata !792, metadata !DIExpression()), !dbg !806
  %call76.us = call fastcc %struct.graph_edge* @dfs_fst_edge(%struct.graph* %g, i32 %call75.us, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) #8, !dbg !895
  call void @llvm.dbg.value(metadata %struct.graph_edge* %call76.us, metadata !795, metadata !DIExpression()), !dbg !806
  %19 = load %struct.vertex*, %struct.vertex** %vertices26, align 8, !dbg !896
  %idxprom78.us = sext i32 %call75.us to i64, !dbg !897
  %component80.us = getelementptr inbounds %struct.vertex, %struct.vertex* %19, i64 %idxprom78.us, i32 2, !dbg !898
  store i32 %comp.0, i32* %component80.us, align 8, !dbg !899
  br label %while.cond.us, !dbg !877, !llvm.loop !900

if.end66.us:                                      ; preds = %if.then54.loopexit.us
  %dec.us = add nsw i32 %21, -1, !dbg !902
  call void @llvm.dbg.value(metadata i32 %dec.us, metadata !794, metadata !DIExpression()), !dbg !806
  %idxprom67.us = sext i32 %dec.us to i64, !dbg !903
  %arrayidx68.us = getelementptr inbounds %struct.graph_edge*, %struct.graph_edge** %1, i64 %idxprom67.us, !dbg !903
  %20 = load %struct.graph_edge*, %struct.graph_edge** %arrayidx68.us, align 8, !dbg !903
  call void @llvm.dbg.value(metadata %struct.graph_edge* %20, metadata !795, metadata !DIExpression()), !dbg !806
  %call69.us = call fastcc i32 @dfs_edge_src(%struct.graph_edge* %20, i8 zeroext %forward) #8, !dbg !904
  call void @llvm.dbg.value(metadata i32 %call69.us, metadata !792, metadata !DIExpression()), !dbg !806
  %call70.us = call fastcc %struct.graph_edge* @dfs_next_edge(%struct.graph_edge* %20, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) #8, !dbg !905
  call void @llvm.dbg.value(metadata %struct.graph_edge* %call70.us, metadata !795, metadata !DIExpression()), !dbg !806
  br label %while.cond.outer.us, !dbg !906, !llvm.loop !900

if.then54.loopexit.us:                            ; preds = %while.cond40.us
  %indvars.iv11.lcssa = phi i64 [ %indvars.iv11, %while.cond40.us ], !dbg !878
  %v.0.us.lcssa = phi i32 [ %v.0.us, %while.cond40.us ], !dbg !878
  call void @llvm.dbg.value(metadata i64 %indvars.iv11.lcssa, metadata !794, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %v.0.us.lcssa, metadata !792, metadata !DIExpression()), !dbg !806
  %21 = trunc i64 %indvars.iv11.lcssa to i32, !dbg !806
  call void @llvm.dbg.value(metadata i32 %v.0.us.lcssa, metadata !792, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %21, metadata !794, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %v.0.us.lcssa, metadata !792, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %21, metadata !794, metadata !DIExpression()), !dbg !806
  %inc59.us = add nsw i32 %tick.1.ph.us, 1, !dbg !907
  call void @llvm.dbg.value(metadata i32 %inc59.us, metadata !791, metadata !DIExpression()), !dbg !806
  %22 = load %struct.vertex*, %struct.vertex** %vertices26, align 8, !dbg !908
  %idxprom61.us = sext i32 %v.0.us.lcssa to i64, !dbg !909
  %post63.us = getelementptr inbounds %struct.vertex, %struct.vertex* %22, i64 %idxprom61.us, i32 3, !dbg !910
  store i32 %tick.1.ph.us, i32* %post63.us, align 4, !dbg !911
  %tobool64.us = icmp eq i32 %21, 0, !dbg !912
  br i1 %tobool64.us, label %for.inc82.loopexit.us-lcssa.us, label %if.end66.us, !dbg !914

while.cond.us:                                    ; preds = %while.end.us, %while.cond.outer.us
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %while.end.us ], [ %16, %while.cond.outer.us ], !dbg !878
  %v.0.us = phi i32 [ %call75.us, %while.end.us ], [ %v.0.ph.us, %while.cond.outer.us ], !dbg !878
  %e.0.us = phi %struct.graph_edge* [ %call76.us, %while.end.us ], [ %e.0.ph.us, %while.cond.outer.us ], !dbg !878
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0.us, metadata !795, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !794, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %v.0.us, metadata !792, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %tick.1.ph.us, metadata !791, metadata !DIExpression()), !dbg !806
  br label %while.cond40.us, !dbg !879

for.inc82.loopexit.us-lcssa.us:                   ; preds = %if.then54.loopexit.us
  %inc59.us.lcssa = phi i32 [ %inc59.us, %if.then54.loopexit.us ], !dbg !907
  br label %for.inc82.loopexit, !dbg !915

while.cond.outer:                                 ; preds = %if.end66, %if.end33.if.end33.split_crit_edge
  %tick.1.ph = phi i32 [ %inc59, %if.end66 ], [ %tick.0, %if.end33.if.end33.split_crit_edge ]
  %v.0.ph = phi i32 [ %call69, %if.end66 ], [ %13, %if.end33.if.end33.split_crit_edge ]
  %top.0.ph = phi i32 [ %dec, %if.end66 ], [ 0, %if.end33.if.end33.split_crit_edge ]
  %e.0.ph = phi %struct.graph_edge* [ %call70, %if.end66 ], [ %call39, %if.end33.if.end33.split_crit_edge ]
  %23 = sext i32 %top.0.ph to i64, !dbg !877
  br label %while.cond, !dbg !877

while.cond:                                       ; preds = %while.cond.outer, %while.end
  %indvars.iv = phi i64 [ %23, %while.cond.outer ], [ %indvars.iv.next, %while.end ], !dbg !878
  %v.0 = phi i32 [ %v.0.ph, %while.cond.outer ], [ %call75, %while.end ], !dbg !878
  %e.0 = phi %struct.graph_edge* [ %e.0.ph, %while.cond.outer ], [ %call76, %while.end ], !dbg !878
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0, metadata !795, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !794, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %v.0, metadata !792, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %tick.1.ph, metadata !791, metadata !DIExpression()), !dbg !806
  br label %while.cond40, !dbg !879

while.cond40:                                     ; preds = %if.end51, %while.cond
  %e.1 = phi %struct.graph_edge* [ %e.0, %while.cond ], [ %call52, %if.end51 ], !dbg !878
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.1, metadata !795, metadata !DIExpression()), !dbg !806
  %cond = icmp eq %struct.graph_edge* %e.1, null, !dbg !879
  br i1 %cond, label %if.then54.loopexit, label %while.body42, !dbg !879

while.body42:                                     ; preds = %while.cond40
  %24 = load %struct.vertex*, %struct.vertex** %vertices26, align 8, !dbg !880
  %call44 = call fastcc i32 @dfs_edge_dest(%struct.graph_edge* nonnull %e.1, i8 zeroext %forward) #8, !dbg !883
  %idxprom45 = sext i32 %call44 to i64, !dbg !884
  %component47 = getelementptr inbounds %struct.vertex, %struct.vertex* %24, i64 %idxprom45, i32 2, !dbg !885
  %25 = load i32, i32* %component47, align 8, !dbg !885
  %cmp48 = icmp eq i32 %25, -1, !dbg !886
  br i1 %cmp48, label %while.end, label %if.end51, !dbg !887

if.end51:                                         ; preds = %while.body42
  %call52 = call fastcc %struct.graph_edge* @dfs_next_edge(%struct.graph_edge* nonnull %e.1, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) #8, !dbg !888
  call void @llvm.dbg.value(metadata %struct.graph_edge* %call52, metadata !795, metadata !DIExpression()), !dbg !806
  br label %while.cond40, !dbg !879, !llvm.loop !889

while.end:                                        ; preds = %while.body42
  %e.1.lcssa17 = phi %struct.graph_edge* [ %e.1, %while.body42 ], !dbg !878
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.1.lcssa17, metadata !795, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.1.lcssa17, metadata !795, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.1.lcssa17, metadata !795, metadata !DIExpression()), !dbg !806
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !891
  call void @llvm.dbg.value(metadata i32 undef, metadata !794, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !806
  %arrayidx74 = getelementptr inbounds %struct.graph_edge*, %struct.graph_edge** %1, i64 %indvars.iv, !dbg !892
  store %struct.graph_edge* %e.1.lcssa17, %struct.graph_edge** %arrayidx74, align 8, !dbg !893
  %call75 = call fastcc i32 @dfs_edge_dest(%struct.graph_edge* nonnull %e.1.lcssa17, i8 zeroext %forward) #8, !dbg !894
  call void @llvm.dbg.value(metadata i32 %call75, metadata !792, metadata !DIExpression()), !dbg !806
  %call76 = call fastcc %struct.graph_edge* @dfs_fst_edge(%struct.graph* %g, i32 %call75, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) #8, !dbg !895
  call void @llvm.dbg.value(metadata %struct.graph_edge* %call76, metadata !795, metadata !DIExpression()), !dbg !806
  %26 = load %struct.vertex*, %struct.vertex** %vertices26, align 8, !dbg !896
  %idxprom78 = sext i32 %call75 to i64, !dbg !897
  %component80 = getelementptr inbounds %struct.vertex, %struct.vertex* %26, i64 %idxprom78, i32 2, !dbg !898
  store i32 %comp.0, i32* %component80, align 8, !dbg !899
  br label %while.cond, !dbg !877, !llvm.loop !900

if.then54.loopexit:                               ; preds = %while.cond40
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %while.cond40 ], !dbg !878
  %v.0.lcssa = phi i32 [ %v.0, %while.cond40 ], !dbg !878
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !794, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %v.0.lcssa, metadata !792, metadata !DIExpression()), !dbg !806
  %27 = trunc i64 %indvars.iv.lcssa to i32, !dbg !806
  call void @llvm.dbg.value(metadata i32 %v.0.lcssa, metadata !792, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %27, metadata !794, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %v.0.lcssa, metadata !792, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %27, metadata !794, metadata !DIExpression()), !dbg !806
  %call57 = call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull %qt, i32 %v.0.lcssa) #8, !dbg !916
  %inc59 = add nsw i32 %tick.1.ph, 1, !dbg !907
  call void @llvm.dbg.value(metadata i32 %inc59, metadata !791, metadata !DIExpression()), !dbg !806
  %28 = load %struct.vertex*, %struct.vertex** %vertices26, align 8, !dbg !908
  %idxprom61 = sext i32 %v.0.lcssa to i64, !dbg !909
  %post63 = getelementptr inbounds %struct.vertex, %struct.vertex* %28, i64 %idxprom61, i32 3, !dbg !910
  store i32 %tick.1.ph, i32* %post63, align 4, !dbg !911
  %tobool64 = icmp eq i32 %27, 0, !dbg !912
  br i1 %tobool64, label %for.inc82.loopexit.us-lcssa, label %if.end66, !dbg !914

if.end66:                                         ; preds = %if.then54.loopexit
  %dec = add nsw i32 %27, -1, !dbg !902
  call void @llvm.dbg.value(metadata i32 %dec, metadata !794, metadata !DIExpression()), !dbg !806
  %idxprom67 = sext i32 %dec to i64, !dbg !903
  %arrayidx68 = getelementptr inbounds %struct.graph_edge*, %struct.graph_edge** %1, i64 %idxprom67, !dbg !903
  %29 = load %struct.graph_edge*, %struct.graph_edge** %arrayidx68, align 8, !dbg !903
  call void @llvm.dbg.value(metadata %struct.graph_edge* %29, metadata !795, metadata !DIExpression()), !dbg !806
  %call69 = call fastcc i32 @dfs_edge_src(%struct.graph_edge* %29, i8 zeroext %forward) #8, !dbg !904
  call void @llvm.dbg.value(metadata i32 %call69, metadata !792, metadata !DIExpression()), !dbg !806
  %call70 = call fastcc %struct.graph_edge* @dfs_next_edge(%struct.graph_edge* %29, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) #8, !dbg !905
  call void @llvm.dbg.value(metadata %struct.graph_edge* %call70, metadata !795, metadata !DIExpression()), !dbg !806
  br label %while.cond.outer, !dbg !906, !llvm.loop !900

for.inc82.loopexit.us-lcssa:                      ; preds = %if.then54.loopexit
  %inc59.lcssa18 = phi i32 [ %inc59, %if.then54.loopexit ], !dbg !907
  br label %for.inc82.loopexit, !dbg !915

for.inc82.loopexit:                               ; preds = %for.inc82.loopexit.us-lcssa.us, %for.inc82.loopexit.us-lcssa
  %inc59.lcssa = phi i32 [ %inc59.lcssa18, %for.inc82.loopexit.us-lcssa ], [ %inc59.us.lcssa, %for.inc82.loopexit.us-lcssa.us ], !dbg !907
  br label %for.inc82, !dbg !915

for.inc82:                                        ; preds = %for.inc82.loopexit, %for.body23
  %tick.2 = phi i32 [ %tick.0, %for.body23 ], [ %inc59.lcssa, %for.inc82.loopexit ], !dbg !806
  %comp.1 = phi i32 [ %comp.0, %for.body23 ], [ %inc34, %for.inc82.loopexit ], !dbg !806
  call void @llvm.dbg.value(metadata i32 %comp.1, metadata !793, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %tick.2, metadata !791, metadata !DIExpression()), !dbg !806
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !915
  call void @llvm.dbg.value(metadata i32 undef, metadata !790, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !806
  br label %for.cond20, !dbg !917, !llvm.loop !918

for.end84:                                        ; preds = %for.cond20
  %comp.0.lcssa = phi i32 [ %comp.0, %for.cond20 ], !dbg !864
  call void @llvm.dbg.value(metadata i32 %comp.0.lcssa, metadata !793, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %comp.0.lcssa, metadata !793, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %comp.0.lcssa, metadata !793, metadata !DIExpression()), !dbg !806
  call void @free(i8* %call) #6, !dbg !920
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !921
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !921
  ret i32 %comp.0.lcssa, !dbg !922
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !923 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !932, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !933, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i32 0, metadata !934, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !935, metadata !DIExpression()), !dbg !936
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !937
  %1 = load i64, i64* %0, align 8, !dbg !937
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !938
  store i64 %1, i64* %2, align 8, !dbg !938
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !939
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !940
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !941
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !944
  br label %while.body, !dbg !944

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !945
  br i1 %tobool, label %if.then, label %if.end, !dbg !946

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !947
  br label %while.end, !dbg !949

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !950

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !944, !llvm.loop !951

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !953

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !953
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !955
  %7 = load i32, i32* %indx9, align 8, !dbg !955
  %cmp11 = icmp eq i32 %7, 0, !dbg !956
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !957

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !958
  %8 = load i32, i32* %indx14, align 8, !dbg !958
  %mul = shl i32 %8, 7, !dbg !959
  call void @llvm.dbg.value(metadata i32 %mul, metadata !934, metadata !DIExpression()), !dbg !936
  br label %if.end15, !dbg !960

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !934, metadata !DIExpression()), !dbg !936
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !961
  store i32 0, i32* %word_no, align 8, !dbg !962
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !963
  %9 = load i64, i64* %arrayidx, align 8, !dbg !963
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !964
  store i64 %9, i64* %bits21, align 8, !dbg !965
  %tobool23 = icmp eq i64 %9, 0, !dbg !966
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !966
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !967
  call void @llvm.dbg.value(metadata i32 %add, metadata !934, metadata !DIExpression()), !dbg !936
  store i32 %add, i32* %bit_no, align 4, !dbg !968
  ret void, !dbg !969
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !970 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !974, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !975, metadata !DIExpression()), !dbg !979
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !980
  %0 = load i64, i64* %bits, align 8, !dbg !980
  %tobool = icmp eq i64 %0, 0, !dbg !981
  br i1 %tobool, label %if.end, label %next_bit, !dbg !982

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !983
  br label %next_bit, !dbg !986

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !976), !dbg !987
  br label %while.cond, !dbg !986

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !988
  %and = and i64 %2, 1, !dbg !989
  %tobool2 = icmp eq i64 %and, 0, !dbg !990
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !986

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !991
  store i64 %shr, i64* %bits, align 8, !dbg !991
  %3 = load i32, i32* %bit_no, align 4, !dbg !993
  %add = add i32 %3, 1, !dbg !993
  store i32 %add, i32* %bit_no, align 4, !dbg !993
  %.pre = load i64, i64* %bits, align 8, !dbg !988
  br label %while.cond, !dbg !986, !llvm.loop !994

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !996
  %sub = add i32 %4, 63, !dbg !997
  %div = and i32 %sub, -64, !dbg !998
  store i32 %div, i32* %bit_no, align 4, !dbg !999
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !1000
  %5 = load i32, i32* %word_no, align 8, !dbg !1001
  %inc = add i32 %5, 1, !dbg !1001
  store i32 %inc, i32* %word_no, align 8, !dbg !1001
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !1002
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !1002
  br label %while.body6, !dbg !1003

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !1004

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !1005
  %cmp = icmp eq i32 %8, 2, !dbg !1006
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !1002
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !1004

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !983
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !983
  %10 = load i64, i64* %arrayidx, align 8, !dbg !983
  store i64 %10, i64* %bits, align 8, !dbg !1007
  %tobool14 = icmp eq i64 %10, 0, !dbg !1008
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !1010

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !1011
  %add17 = add i32 %11, 64, !dbg !1011
  store i32 %add17, i32* %bit_no, align 4, !dbg !1011
  %12 = load i32, i32* %word_no, align 8, !dbg !1012
  %inc19 = add i32 %12, 1, !dbg !1012
  store i32 %inc19, i32* %word_no, align 8, !dbg !1012
  br label %while.cond7, !dbg !1004, !llvm.loop !1013

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !1002
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !1015
  %14 = load i64, i64* %13, align 8, !dbg !1015
  store i64 %14, i64* %6, align 8, !dbg !1016
  %tobool24 = icmp eq i64 %14, 0, !dbg !1017
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !1019

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !1019
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !1020
  %16 = load i32, i32* %indx, align 8, !dbg !1020
  %mul28 = shl i32 %16, 7, !dbg !1021
  store i32 %mul28, i32* %bit_no, align 4, !dbg !1022
  store i32 0, i32* %word_no, align 8, !dbg !1023
  br label %while.body6, !dbg !1003, !llvm.loop !1024

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !1026

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !1026

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !979
  ret i8 %retval.0, !dbg !1026
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !1027 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !1031, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !1032, metadata !DIExpression()), !dbg !1033
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !1034
  %0 = load i64, i64* %bits, align 8, !dbg !1035
  %shr = lshr i64 %0, 1, !dbg !1035
  store i64 %shr, i64* %bits, align 8, !dbg !1035
  %1 = load i32, i32* %bit_no, align 4, !dbg !1036
  %add = add i32 %1, 1, !dbg !1036
  store i32 %add, i32* %bit_no, align 4, !dbg !1036
  ret void, !dbg !1037
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.graph_edge* @dfs_fst_edge(%struct.graph* %g, i32 %v, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) unnamed_addr #0 !dbg !1038 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %g, metadata !1042, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i32 %v, metadata !1043, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %forward, metadata !1044, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %subgraph, metadata !1045, metadata !DIExpression()), !dbg !1047
  %tobool = icmp eq i8 %forward, 0, !dbg !1048
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !1047
  %0 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !1047
  %idxprom = sext i32 %v to i64, !dbg !1047
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1048

cond.true:                                        ; preds = %entry
  %succ = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom, i32 1, !dbg !1049
  br label %cond.end, !dbg !1048

cond.false:                                       ; preds = %entry
  %pred = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom, i32 0, !dbg !1050
  br label %cond.end, !dbg !1048

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.graph_edge** [ %succ, %cond.true ], [ %pred, %cond.false ]
  %cond = load %struct.graph_edge*, %struct.graph_edge** %cond.in, align 8, !dbg !1048
  call void @llvm.dbg.value(metadata %struct.graph_edge* %cond, metadata !1046, metadata !DIExpression()), !dbg !1047
  %call = tail call fastcc %struct.graph_edge* @foll_in_subgraph(%struct.graph_edge* %cond, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) #8, !dbg !1051
  ret %struct.graph_edge* %call, !dbg !1052
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @dfs_edge_dest(%struct.graph_edge* %e, i8 zeroext %forward) unnamed_addr #0 !dbg !1053 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e, metadata !1057, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %forward, metadata !1058, metadata !DIExpression()), !dbg !1059
  %tobool = icmp eq i8 %forward, 0, !dbg !1060
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1060

cond.true:                                        ; preds = %entry
  %dest = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e, i64 0, i32 1, !dbg !1061
  br label %cond.end, !dbg !1060

cond.false:                                       ; preds = %entry
  %src = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e, i64 0, i32 0, !dbg !1062
  br label %cond.end, !dbg !1060

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32* [ %dest, %cond.true ], [ %src, %cond.false ]
  %cond = load i32, i32* %cond.in, align 4, !dbg !1060
  ret i32 %cond, !dbg !1063
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.graph_edge* @dfs_next_edge(%struct.graph_edge* %e, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) unnamed_addr #0 !dbg !1064 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e, metadata !1068, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata i8 %forward, metadata !1069, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %subgraph, metadata !1070, metadata !DIExpression()), !dbg !1071
  %tobool = icmp eq i8 %forward, 0, !dbg !1072
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1072

cond.true:                                        ; preds = %entry
  %succ_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e, i64 0, i32 3, !dbg !1073
  br label %cond.end, !dbg !1072

cond.false:                                       ; preds = %entry
  %pred_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e, i64 0, i32 2, !dbg !1074
  br label %cond.end, !dbg !1072

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.graph_edge** [ %succ_next, %cond.true ], [ %pred_next, %cond.false ]
  %cond = load %struct.graph_edge*, %struct.graph_edge** %cond.in, align 8, !dbg !1072
  %call = tail call fastcc %struct.graph_edge* @foll_in_subgraph(%struct.graph_edge* %cond, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) #8, !dbg !1075
  ret %struct.graph_edge* %call, !dbg !1076
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** %vec_, i32 %obj_) unnamed_addr #0 !dbg !1077 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !1082, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !1083, metadata !DIExpression()), !dbg !1084
  %call = tail call fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 1) #8, !dbg !1085
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !1085
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !1085
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1085

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !1085
  br label %cond.end, !dbg !1085

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !1085
  %call1 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond, i32 %obj_) #8, !dbg !1085
  ret i32* %call1, !dbg !1085
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @dfs_edge_src(%struct.graph_edge* %e, i8 zeroext %forward) unnamed_addr #0 !dbg !1086 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e, metadata !1088, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %forward, metadata !1089, metadata !DIExpression()), !dbg !1090
  %tobool = icmp eq i8 %forward, 0, !dbg !1091
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1091

cond.true:                                        ; preds = %entry
  %src = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e, i64 0, i32 0, !dbg !1092
  br label %cond.end, !dbg !1091

cond.false:                                       ; preds = %entry
  %dest = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e, i64 0, i32 1, !dbg !1093
  br label %cond.end, !dbg !1091

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32* [ %src, %cond.true ], [ %dest, %cond.false ]
  %cond = load i32, i32* %cond.in, align 4, !dbg !1091
  ret i32 %cond, !dbg !1094
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @graphds_scc(%struct.graph* %g, %struct.bitmap_head_def* %subgraph) local_unnamed_addr #4 !dbg !1095 {
entry:
  %postorder = alloca %struct.VEC_int_heap*, align 8
  %v = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.graph* %g, metadata !1099, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %subgraph, metadata !1100, metadata !DIExpression()), !dbg !1108
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 0, !dbg !1109
  %0 = load i32, i32* %n_vertices, align 8, !dbg !1109
  %conv = sext i32 %0 to i64, !dbg !1109
  %mul = shl nsw i64 %conv, 2, !dbg !1109
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !1109
  %1 = bitcast i8* %call to i32*, !dbg !1109
  call void @llvm.dbg.value(metadata i32* %1, metadata !1101, metadata !DIExpression()), !dbg !1108
  %2 = bitcast %struct.VEC_int_heap** %postorder to i8*, !dbg !1110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !1110
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* null, metadata !1102, metadata !DIExpression()), !dbg !1108
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %postorder, align 8, !dbg !1111
  %3 = bitcast i32* %v to i8*, !dbg !1112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1112
  %4 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !1113
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1113
  %tobool = icmp eq %struct.bitmap_head_def* %subgraph, null, !dbg !1114
  br i1 %tobool, label %for.cond3.preheader, label %if.then, !dbg !1116

for.cond3.preheader:                              ; preds = %entry
  br label %for.cond3, !dbg !1117

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1103, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32* %v, metadata !1106, metadata !DIExpression(DW_OP_deref)), !dbg !1108
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !1107, metadata !DIExpression(DW_OP_deref)), !dbg !1108
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %subgraph, i32 0, i32* nonnull %v) #8, !dbg !1120
  br label %for.cond, !dbg !1120

for.cond:                                         ; preds = %for.body, %if.then
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body ], [ 0, %if.then ], !dbg !1123
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !1103, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32* %v, metadata !1106, metadata !DIExpression(DW_OP_deref)), !dbg !1108
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !1107, metadata !DIExpression(DW_OP_deref)), !dbg !1108
  %call1 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %v) #8, !dbg !1124
  %tobool2 = icmp eq i8 %call1, 0, !dbg !1120
  br i1 %tobool2, label %if.end.loopexit, label %for.body, !dbg !1120

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %v, align 4, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %5, metadata !1106, metadata !DIExpression()), !dbg !1108
  %indvars.iv.next4 = add nuw i64 %indvars.iv3, 1, !dbg !1128
  call void @llvm.dbg.value(metadata i32 undef, metadata !1103, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1108
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %indvars.iv3, !dbg !1129
  store i32 %5, i32* %arrayidx, align 4, !dbg !1130
  call void @llvm.dbg.value(metadata i32* %v, metadata !1106, metadata !DIExpression(DW_OP_deref)), !dbg !1108
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !1107, metadata !DIExpression(DW_OP_deref)), !dbg !1108
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %v) #8, !dbg !1124
  br label %for.cond, !dbg !1124, !llvm.loop !1131

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body6
  %indvars.iv1 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next2, %for.body6 ], !dbg !1133
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !1104, metadata !DIExpression()), !dbg !1108
  %6 = load i32, i32* %n_vertices, align 8, !dbg !1134
  %7 = sext i32 %6 to i64, !dbg !1136
  %cmp = icmp slt i64 %indvars.iv1, %7, !dbg !1136
  br i1 %cmp, label %for.body6, label %for.end11, !dbg !1117

for.body6:                                        ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv1, !dbg !1137
  %8 = trunc i64 %indvars.iv1 to i32, !dbg !1138
  store i32 %8, i32* %arrayidx8, align 4, !dbg !1138
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !1139
  call void @llvm.dbg.value(metadata i32 undef, metadata !1104, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1108
  br label %for.cond3, !dbg !1140, !llvm.loop !1141

for.end11:                                        ; preds = %for.cond3
  %.lcssa = phi i32 [ %6, %for.cond3 ], !dbg !1134
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !1103, metadata !DIExpression()), !dbg !1108
  br label %if.end

if.end.loopexit:                                  ; preds = %for.cond
  %indvars.iv3.lcssa = phi i64 [ %indvars.iv3, %for.cond ], !dbg !1123
  call void @llvm.dbg.value(metadata i64 %indvars.iv3.lcssa, metadata !1103, metadata !DIExpression()), !dbg !1108
  %9 = trunc i64 %indvars.iv3.lcssa to i32, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %9, metadata !1103, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %9, metadata !1103, metadata !DIExpression()), !dbg !1108
  br label %if.end, !dbg !1143

if.end:                                           ; preds = %if.end.loopexit, %for.end11
  %nq.1 = phi i32 [ %.lcssa, %for.end11 ], [ %9, %if.end.loopexit ], !dbg !1144
  call void @llvm.dbg.value(metadata i32 %nq.1, metadata !1103, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %postorder, metadata !1102, metadata !DIExpression(DW_OP_deref)), !dbg !1108
  %call13 = call i32 @graphds_dfs(%struct.graph* %g, i32* %1, i32 %nq.1, %struct.VEC_int_heap** nonnull %postorder, i8 zeroext 0, %struct.bitmap_head_def* %subgraph) #8, !dbg !1143
  %10 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %postorder, align 8, !dbg !1145
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %10, metadata !1102, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %10, metadata !1102, metadata !DIExpression()), !dbg !1108
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %10, i64 0, i32 0, !dbg !1145
  %call15 = call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %base) #8, !dbg !1145
  %cmp16 = icmp eq i32 %call15, %nq.1, !dbg !1145
  br i1 %cmp16, label %cond.end20, label %cond.true18, !dbg !1145

cond.true18:                                      ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 299, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1145
  br label %cond.end20, !dbg !1145

cond.end20:                                       ; preds = %if.end, %cond.true18
  call void @llvm.dbg.value(metadata i32 0, metadata !1104, metadata !DIExpression()), !dbg !1108
  %11 = sext i32 %nq.1 to i64, !dbg !1146
  br label %for.cond22, !dbg !1146

for.cond22:                                       ; preds = %for.body25, %cond.end20
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body25 ], [ 0, %cond.end20 ], !dbg !1148
  %i.1 = phi i32 [ %inc37, %for.body25 ], [ 0, %cond.end20 ], !dbg !1148
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1104, metadata !DIExpression()), !dbg !1108
  %cmp23 = icmp slt i64 %indvars.iv, %11, !dbg !1149
  br i1 %cmp23, label %for.body25, label %for.end38, !dbg !1151

for.body25:                                       ; preds = %for.cond22
  %12 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %postorder, align 8, !dbg !1152
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %12, metadata !1102, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %12, metadata !1102, metadata !DIExpression()), !dbg !1108
  %base28 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %12, i64 0, i32 0, !dbg !1152
  %13 = xor i32 %i.1, -1, !dbg !1152
  %sub32 = add i32 %nq.1, %13, !dbg !1152
  %call33 = call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %base28, i32 %sub32) #8, !dbg !1152
  %arrayidx35 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv, !dbg !1153
  store i32 %call33, i32* %arrayidx35, align 4, !dbg !1154
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1155
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !1155
  call void @llvm.dbg.value(metadata i32 %inc37, metadata !1104, metadata !DIExpression()), !dbg !1108
  br label %for.cond22, !dbg !1156, !llvm.loop !1157

for.end38:                                        ; preds = %for.cond22
  %call39 = call i32 @graphds_dfs(%struct.graph* %g, i32* %1, i32 %nq.1, %struct.VEC_int_heap** null, i8 zeroext 1, %struct.bitmap_head_def* %subgraph) #8, !dbg !1159
  call void @llvm.dbg.value(metadata i32 %call39, metadata !1105, metadata !DIExpression()), !dbg !1108
  call void @free(i8* %call) #6, !dbg !1160
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %postorder, metadata !1102, metadata !DIExpression(DW_OP_deref)), !dbg !1108
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %postorder) #8, !dbg !1161
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !1162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !1162
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !1162
  ret i32 %call39, !dbg !1163
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %vec_) unnamed_addr #0 !dbg !1164 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !1170, metadata !DIExpression()), !dbg !1171
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !1172
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1172

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !1172
  %0 = load i32, i32* %num, align 4, !dbg !1172
  br label %cond.end, !dbg !1172

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !1172
  ret i32 %cond, !dbg !1172
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !1173 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !1177, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !1178, metadata !DIExpression()), !dbg !1179
  br label %land.end, !dbg !1180

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !1180
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !1180
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1180
  ret i32 %0, !dbg !1180
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !1181 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !1185, metadata !DIExpression()), !dbg !1186
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !1187
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !1187
  br i1 %tobool, label %if.end, label %if.then, !dbg !1189

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !1189
  tail call void @free(i8* nonnull %1) #6, !dbg !1187
  br label %if.end, !dbg !1187

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !1189
  ret void, !dbg !1189
}

; Function Attrs: nounwind uwtable
define dso_local void @for_each_edge(%struct.graph* %g, void (%struct.graph*, %struct.graph_edge*)* %callback) local_unnamed_addr #4 !dbg !1190 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %g, metadata !1198, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata void (%struct.graph*, %struct.graph_edge*)* %callback, metadata !1199, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 0, metadata !1201, metadata !DIExpression()), !dbg !1202
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 0, !dbg !1203
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !1206
  br label %for.cond, !dbg !1208

for.cond:                                         ; preds = %for.inc3, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc3 ], [ 0, %entry ], !dbg !1209
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1201, metadata !DIExpression()), !dbg !1202
  %0 = load i32, i32* %n_vertices, align 8, !dbg !1210
  %1 = sext i32 %0 to i64, !dbg !1211
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !1211
  br i1 %cmp, label %for.body, label %for.end4, !dbg !1212

for.body:                                         ; preds = %for.cond
  %2 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !1213
  %succ = getelementptr inbounds %struct.vertex, %struct.vertex* %2, i64 %indvars.iv, i32 1, !dbg !1214
  br label %for.cond1, !dbg !1215

for.cond1:                                        ; preds = %for.body2, %for.body
  %e.0.in = phi %struct.graph_edge** [ %succ, %for.body ], [ %succ_next, %for.body2 ]
  %e.0 = load %struct.graph_edge*, %struct.graph_edge** %e.0.in, align 8, !dbg !1206
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0, metadata !1200, metadata !DIExpression()), !dbg !1202
  %tobool = icmp eq %struct.graph_edge* %e.0, null, !dbg !1216
  br i1 %tobool, label %for.inc3, label %for.body2, !dbg !1216

for.body2:                                        ; preds = %for.cond1
  tail call void %callback(%struct.graph* %g, %struct.graph_edge* nonnull %e.0) #6, !dbg !1217
  %succ_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 3, !dbg !1219
  br label %for.cond1, !dbg !1220, !llvm.loop !1221

for.inc3:                                         ; preds = %for.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1223
  call void @llvm.dbg.value(metadata i32 undef, metadata !1201, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1202
  br label %for.cond, !dbg !1224, !llvm.loop !1225

for.end4:                                         ; preds = %for.cond
  ret void, !dbg !1227
}

; Function Attrs: nounwind uwtable
define dso_local void @free_graph(%struct.graph* %g) local_unnamed_addr #4 !dbg !1228 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %g, metadata !1232, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 0, metadata !1236, metadata !DIExpression()), !dbg !1237
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 0, !dbg !1238
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !1237
  br label %for.cond, !dbg !1241

for.cond:                                         ; preds = %for.inc3, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc3 ], [ 0, %entry ], !dbg !1242
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1236, metadata !DIExpression()), !dbg !1237
  %0 = load i32, i32* %n_vertices, align 8, !dbg !1243
  %1 = sext i32 %0 to i64, !dbg !1244
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !1244
  %2 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !1237
  br i1 %cmp, label %for.body, label %for.end4, !dbg !1245

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.vertex* undef, metadata !1235, metadata !DIExpression()), !dbg !1237
  %succ = getelementptr inbounds %struct.vertex, %struct.vertex* %2, i64 %indvars.iv, i32 1, !dbg !1246
  %3 = load %struct.graph_edge*, %struct.graph_edge** %succ, align 8, !dbg !1246
  call void @llvm.dbg.value(metadata %struct.graph_edge* %3, metadata !1233, metadata !DIExpression()), !dbg !1237
  br label %for.cond1, !dbg !1249

for.cond1:                                        ; preds = %for.body2, %for.body
  %.in = phi %struct.graph_edge* [ %3, %for.body ], [ %5, %for.body2 ]
  %e.0 = phi %struct.graph_edge* [ %3, %for.body ], [ %5, %for.body2 ], !dbg !1250
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0, metadata !1233, metadata !DIExpression()), !dbg !1237
  %tobool = icmp eq %struct.graph_edge* %e.0, null, !dbg !1251
  br i1 %tobool, label %for.inc3, label %for.body2, !dbg !1251

for.body2:                                        ; preds = %for.cond1
  %4 = bitcast %struct.graph_edge* %.in to i8*, !dbg !1250
  %succ_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 3, !dbg !1252
  %5 = load %struct.graph_edge*, %struct.graph_edge** %succ_next, align 8, !dbg !1252
  call void @llvm.dbg.value(metadata %struct.graph_edge* %5, metadata !1234, metadata !DIExpression()), !dbg !1237
  tail call void @free(i8* %4) #6, !dbg !1255
  call void @llvm.dbg.value(metadata %struct.graph_edge* %5, metadata !1233, metadata !DIExpression()), !dbg !1237
  br label %for.cond1, !dbg !1256, !llvm.loop !1257

for.inc3:                                         ; preds = %for.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i32 undef, metadata !1236, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1237
  br label %for.cond, !dbg !1260, !llvm.loop !1261

for.end4:                                         ; preds = %for.cond
  %.lcssa = phi %struct.vertex* [ %2, %for.cond ], !dbg !1237
  %6 = bitcast %struct.vertex* %.lcssa to i8*, !dbg !1263
  tail call void @free(i8* %6) #6, !dbg !1264
  %7 = bitcast %struct.graph* %g to i8*, !dbg !1265
  tail call void @free(i8* %7) #6, !dbg !1266
  ret void, !dbg !1267
}

; Function Attrs: nounwind uwtable
define dso_local void @graphds_domtree(%struct.graph* %g, i32 %entry1, i32* %parent, i32* %son, i32* %brother) local_unnamed_addr #4 !dbg !1268 {
entry:
  %entry.addr = alloca i32, align 4
  %postorder = alloca %struct.VEC_int_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.graph* %g, metadata !1272, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %entry1, metadata !1273, metadata !DIExpression()), !dbg !1285
  store i32 %entry1, i32* %entry.addr, align 4
  call void @llvm.dbg.value(metadata i32* %parent, metadata !1274, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32* %son, metadata !1275, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32* %brother, metadata !1276, metadata !DIExpression()), !dbg !1285
  %0 = bitcast %struct.VEC_int_heap** %postorder to i8*, !dbg !1286
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !1286
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* null, metadata !1277, metadata !DIExpression()), !dbg !1285
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %postorder, align 8, !dbg !1287
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 0, !dbg !1288
  %1 = load i32, i32* %n_vertices, align 8, !dbg !1288
  %conv = sext i32 %1 to i64, !dbg !1288
  %call = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !1288
  call void @llvm.dbg.value(metadata i32* %4, metadata !1278, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 1, metadata !1279, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 1, metadata !1283, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 0, metadata !1280, metadata !DIExpression()), !dbg !1285
  br label %for.cond, !dbg !1289

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body ], [ 0, %entry ], !dbg !1291
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !1280, metadata !DIExpression()), !dbg !1285
  %2 = load i32, i32* %n_vertices, align 8, !dbg !1292
  %3 = sext i32 %2 to i64, !dbg !1294
  %cmp = icmp slt i64 %indvars.iv1, %3, !dbg !1294
  br i1 %cmp, label %for.body, label %for.end, !dbg !1295

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i32, i32* %parent, i64 %indvars.iv1, !dbg !1296
  store i32 -1, i32* %arrayidx, align 4, !dbg !1298
  %arrayidx5 = getelementptr inbounds i32, i32* %son, i64 %indvars.iv1, !dbg !1299
  store i32 -1, i32* %arrayidx5, align 4, !dbg !1300
  %arrayidx7 = getelementptr inbounds i32, i32* %brother, i64 %indvars.iv1, !dbg !1301
  store i32 -1, i32* %arrayidx7, align 4, !dbg !1302
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !1303
  call void @llvm.dbg.value(metadata i32 undef, metadata !1280, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1285
  br label %for.cond, !dbg !1304, !llvm.loop !1305

for.end:                                          ; preds = %for.cond
  %4 = bitcast i8* %call to i32*, !dbg !1288
  call void @llvm.dbg.value(metadata i32* %entry.addr, metadata !1273, metadata !DIExpression(DW_OP_deref)), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %postorder, metadata !1277, metadata !DIExpression(DW_OP_deref)), !dbg !1285
  %call8 = call i32 @graphds_dfs(%struct.graph* %g, i32* nonnull %entry.addr, i32 1, %struct.VEC_int_heap** nonnull %postorder, i8 zeroext 1, %struct.bitmap_head_def* null) #8, !dbg !1307
  %5 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %postorder, align 8, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %5, metadata !1277, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %5, metadata !1277, metadata !DIExpression()), !dbg !1285
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %5, i64 0, i32 0, !dbg !1308
  %call9 = call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %base) #8, !dbg !1308
  %6 = load i32, i32* %n_vertices, align 8, !dbg !1308
  %cmp11 = icmp eq i32 %call9, %6, !dbg !1308
  br i1 %cmp11, label %cond.end15, label %cond.true13, !dbg !1308

cond.true13:                                      ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 435, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1308
  %.pre = load i32, i32* %n_vertices, align 8, !dbg !1309
  br label %cond.end15, !dbg !1308

cond.end15:                                       ; preds = %for.end, %cond.true13
  %7 = phi i32 [ %call9, %for.end ], [ %.pre, %cond.true13 ], !dbg !1309
  %8 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %postorder, align 8, !dbg !1309
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %8, metadata !1277, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %8, metadata !1277, metadata !DIExpression()), !dbg !1285
  %base19 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %8, i64 0, i32 0, !dbg !1309
  %sub = add nsw i32 %7, -1, !dbg !1309
  %call24 = call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %base19, i32 %sub) #8, !dbg !1309
  %9 = load i32, i32* %entry.addr, align 4, !dbg !1309
  call void @llvm.dbg.value(metadata i32 %9, metadata !1273, metadata !DIExpression()), !dbg !1285
  %cmp25 = icmp eq i32 %call24, %9, !dbg !1309
  br i1 %cmp25, label %cond.end29, label %cond.true27, !dbg !1309

cond.true27:                                      ; preds = %cond.end15
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 436, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1309
  br label %cond.end29, !dbg !1309

cond.end29:                                       ; preds = %cond.end15, %cond.true27
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !1310
  br label %while.cond, !dbg !1316

while.cond.loopexit:                              ; preds = %for.cond34
  %mark.1.lcssa = phi i32 [ %mark.1, %for.cond34 ], !dbg !1317
  %changed.1.lcssa = phi i8 [ %changed.1, %for.cond34 ], !dbg !1318
  call void @llvm.dbg.value(metadata i32 %mark.1.lcssa, metadata !1279, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !1283, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %mark.1.lcssa, metadata !1279, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !1283, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %mark.1.lcssa, metadata !1279, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !1283, metadata !DIExpression()), !dbg !1285
  br label %while.cond, !dbg !1316

while.cond:                                       ; preds = %while.cond.loopexit, %cond.end29
  %mark.0 = phi i32 [ 1, %cond.end29 ], [ %mark.1.lcssa, %while.cond.loopexit ], !dbg !1317
  %changed.0 = phi i8 [ 1, %cond.end29 ], [ %changed.1.lcssa, %while.cond.loopexit ], !dbg !1285
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !1283, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %mark.0, metadata !1279, metadata !DIExpression()), !dbg !1285
  %tobool31 = icmp eq i8 %changed.0, 0, !dbg !1316
  br i1 %tobool31, label %while.end, label %while.body, !dbg !1316

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8 0, metadata !1283, metadata !DIExpression()), !dbg !1285
  %10 = load i32, i32* %n_vertices, align 8, !dbg !1319
  %sub33 = add nsw i32 %10, -2, !dbg !1320
  call void @llvm.dbg.value(metadata i32 %sub33, metadata !1280, metadata !DIExpression()), !dbg !1285
  br label %for.cond34, !dbg !1321

for.cond34:                                       ; preds = %for.inc70, %while.body
  %mark.1 = phi i32 [ %mark.0, %while.body ], [ %mark.2.lcssa, %for.inc70 ], !dbg !1317
  %i.1 = phi i32 [ %sub33, %while.body ], [ %dec, %for.inc70 ], !dbg !1322
  %changed.1 = phi i8 [ 0, %while.body ], [ %changed.2, %for.inc70 ], !dbg !1318
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !1283, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !1280, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %mark.1, metadata !1279, metadata !DIExpression()), !dbg !1285
  %cmp35 = icmp sgt i32 %i.1, -1, !dbg !1323
  br i1 %cmp35, label %for.body37, label %while.cond.loopexit, !dbg !1324, !llvm.loop !1325

for.body37:                                       ; preds = %for.cond34
  %11 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %postorder, align 8, !dbg !1327
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %11, metadata !1277, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %11, metadata !1277, metadata !DIExpression()), !dbg !1285
  %base40 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %11, i64 0, i32 0, !dbg !1327
  %call44 = call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %base40, i32 %i.1) #8, !dbg !1327
  call void @llvm.dbg.value(metadata i32 %call44, metadata !1281, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 -1, metadata !1282, metadata !DIExpression()), !dbg !1285
  %12 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !1328
  %idxprom45 = sext i32 %call44 to i64, !dbg !1329
  %pred = getelementptr inbounds %struct.vertex, %struct.vertex* %12, i64 %idxprom45, i32 0, !dbg !1330
  br label %for.cond47, !dbg !1331

for.cond47:                                       ; preds = %for.inc60, %for.body37
  %mark.2 = phi i32 [ %mark.1, %for.body37 ], [ %mark.3, %for.inc60 ], !dbg !1317
  %idom.0 = phi i32 [ -1, %for.body37 ], [ %idom.1, %for.inc60 ], !dbg !1332
  %e.0.in = phi %struct.graph_edge** [ %pred, %for.body37 ], [ %pred_next, %for.inc60 ]
  %e.0 = load %struct.graph_edge*, %struct.graph_edge** %e.0.in, align 8, !dbg !1310
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0, metadata !1284, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %idom.0, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %mark.2, metadata !1279, metadata !DIExpression()), !dbg !1285
  %tobool48 = icmp eq %struct.graph_edge* %e.0, null, !dbg !1333
  br i1 %tobool48, label %for.end61, label %for.body49, !dbg !1333

for.body49:                                       ; preds = %for.cond47
  %src = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 0, !dbg !1334
  %13 = load i32, i32* %src, align 8, !dbg !1334
  %14 = load i32, i32* %entry.addr, align 4, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %14, metadata !1273, metadata !DIExpression()), !dbg !1285
  %cmp50 = icmp eq i32 %13, %14, !dbg !1339
  br i1 %cmp50, label %if.end, label %land.lhs.true, !dbg !1340

land.lhs.true:                                    ; preds = %for.body49
  %idxprom53 = sext i32 %13 to i64, !dbg !1341
  %arrayidx54 = getelementptr inbounds i32, i32* %parent, i64 %idxprom53, !dbg !1341
  %15 = load i32, i32* %arrayidx54, align 4, !dbg !1341
  %cmp55 = icmp eq i32 %15, -1, !dbg !1342
  br i1 %cmp55, label %for.inc60, label %if.end, !dbg !1343

if.end:                                           ; preds = %for.body49, %land.lhs.true
  %inc58 = add nsw i32 %mark.2, 1, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %inc58, metadata !1279, metadata !DIExpression()), !dbg !1285
  %call59 = call fastcc i32 @tree_nca(i32 %idom.0, i32 %13, i32* %parent, i32* %4, i32 %mark.2) #8, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %call59, metadata !1282, metadata !DIExpression()), !dbg !1285
  br label %for.inc60, !dbg !1346

for.inc60:                                        ; preds = %land.lhs.true, %if.end
  %mark.3 = phi i32 [ %inc58, %if.end ], [ %mark.2, %land.lhs.true ], !dbg !1285
  %idom.1 = phi i32 [ %call59, %if.end ], [ %idom.0, %land.lhs.true ], !dbg !1347
  call void @llvm.dbg.value(metadata i32 %idom.1, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %mark.3, metadata !1279, metadata !DIExpression()), !dbg !1285
  %pred_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 2, !dbg !1348
  br label %for.cond47, !dbg !1349, !llvm.loop !1350

for.end61:                                        ; preds = %for.cond47
  %mark.2.lcssa = phi i32 [ %mark.2, %for.cond47 ], !dbg !1317
  %idom.0.lcssa = phi i32 [ %idom.0, %for.cond47 ], !dbg !1332
  call void @llvm.dbg.value(metadata i32 %mark.2.lcssa, metadata !1279, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %idom.0.lcssa, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %mark.2.lcssa, metadata !1279, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %idom.0.lcssa, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %mark.2.lcssa, metadata !1279, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %idom.0.lcssa, metadata !1282, metadata !DIExpression()), !dbg !1285
  %arrayidx63 = getelementptr inbounds i32, i32* %parent, i64 %idxprom45, !dbg !1352
  %16 = load i32, i32* %arrayidx63, align 4, !dbg !1352
  %cmp64 = icmp eq i32 %idom.0.lcssa, %16, !dbg !1354
  br i1 %cmp64, label %for.inc70, label %if.then66, !dbg !1355

if.then66:                                        ; preds = %for.end61
  store i32 %idom.0.lcssa, i32* %arrayidx63, align 4, !dbg !1356
  call void @llvm.dbg.value(metadata i8 1, metadata !1283, metadata !DIExpression()), !dbg !1285
  br label %for.inc70, !dbg !1358

for.inc70:                                        ; preds = %for.end61, %if.then66
  %changed.2 = phi i8 [ 1, %if.then66 ], [ %changed.1, %for.end61 ], !dbg !1318
  call void @llvm.dbg.value(metadata i8 %changed.2, metadata !1283, metadata !DIExpression()), !dbg !1285
  %dec = add nsw i32 %i.1, -1, !dbg !1359
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1280, metadata !DIExpression()), !dbg !1285
  br label %for.cond34, !dbg !1360, !llvm.loop !1361

while.end:                                        ; preds = %while.cond
  call void @free(i8* %call) #6, !dbg !1363
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %postorder, metadata !1277, metadata !DIExpression(DW_OP_deref)), !dbg !1285
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %postorder) #8, !dbg !1364
  call void @llvm.dbg.value(metadata i32 0, metadata !1280, metadata !DIExpression()), !dbg !1285
  br label %for.cond72, !dbg !1365

for.cond72:                                       ; preds = %for.inc93, %while.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc93 ], [ 0, %while.end ], !dbg !1367
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1280, metadata !DIExpression()), !dbg !1285
  %17 = load i32, i32* %n_vertices, align 8, !dbg !1368
  %18 = sext i32 %17 to i64, !dbg !1370
  %cmp74 = icmp slt i64 %indvars.iv, %18, !dbg !1370
  br i1 %cmp74, label %for.body76, label %for.end95, !dbg !1371

for.body76:                                       ; preds = %for.cond72
  %arrayidx78 = getelementptr inbounds i32, i32* %parent, i64 %indvars.iv, !dbg !1372
  %19 = load i32, i32* %arrayidx78, align 4, !dbg !1372
  %cmp79 = icmp eq i32 %19, -1, !dbg !1374
  br i1 %cmp79, label %for.inc93, label %if.then81, !dbg !1375

if.then81:                                        ; preds = %for.body76
  %idxprom84 = sext i32 %19 to i64, !dbg !1376
  %arrayidx85 = getelementptr inbounds i32, i32* %son, i64 %idxprom84, !dbg !1376
  %20 = load i32, i32* %arrayidx85, align 4, !dbg !1376
  %arrayidx87 = getelementptr inbounds i32, i32* %brother, i64 %indvars.iv, !dbg !1378
  store i32 %20, i32* %arrayidx87, align 4, !dbg !1379
  %21 = load i32, i32* %arrayidx78, align 4, !dbg !1380
  %idxprom90 = sext i32 %21 to i64, !dbg !1381
  %arrayidx91 = getelementptr inbounds i32, i32* %son, i64 %idxprom90, !dbg !1381
  %22 = trunc i64 %indvars.iv to i32, !dbg !1382
  store i32 %22, i32* %arrayidx91, align 4, !dbg !1382
  br label %for.inc93, !dbg !1383

for.inc93:                                        ; preds = %for.body76, %if.then81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1384
  call void @llvm.dbg.value(metadata i32 undef, metadata !1280, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1285
  br label %for.cond72, !dbg !1385, !llvm.loop !1386

for.end95:                                        ; preds = %for.cond72
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !1388
  ret void, !dbg !1388
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tree_nca(i32 %x, i32 %y, i32* %parent, i32* %marks, i32 %mark) unnamed_addr #4 !dbg !1389 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !1393, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %y, metadata !1394, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32* %parent, metadata !1395, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32* %marks, metadata !1396, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %mark, metadata !1397, metadata !DIExpression()), !dbg !1398
  %cmp = icmp eq i32 %x, -1, !dbg !1399
  %cmp1 = icmp eq i32 %x, %y, !dbg !1401
  %or.cond = or i1 %cmp, %cmp1, !dbg !1402
  br i1 %or.cond, label %return, label %if.end, !dbg !1402

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %x to i64, !dbg !1403
  %arrayidx = getelementptr inbounds i32, i32* %marks, i64 %idxprom, !dbg !1403
  store i32 %mark, i32* %arrayidx, align 4, !dbg !1404
  %idxprom2 = sext i32 %y to i64, !dbg !1405
  %arrayidx3 = getelementptr inbounds i32, i32* %marks, i64 %idxprom2, !dbg !1405
  store i32 %mark, i32* %arrayidx3, align 4, !dbg !1406
  br label %while.body, !dbg !1407

while.body:                                       ; preds = %if.end, %if.end25
  %y.addr.0 = phi i32 [ %y, %if.end ], [ %2, %if.end25 ]
  %x.addr.0 = phi i32 [ %x, %if.end ], [ %0, %if.end25 ]
  call void @llvm.dbg.value(metadata i32 %x.addr.0, metadata !1393, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %y.addr.0, metadata !1394, metadata !DIExpression()), !dbg !1398
  %idxprom4 = sext i32 %x.addr.0 to i64, !dbg !1408
  %arrayidx5 = getelementptr inbounds i32, i32* %parent, i64 %idxprom4, !dbg !1408
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !1408
  call void @llvm.dbg.value(metadata i32 %0, metadata !1393, metadata !DIExpression()), !dbg !1398
  %cmp6 = icmp eq i32 %0, -1, !dbg !1410
  br i1 %cmp6, label %while.end, label %if.end8, !dbg !1412

if.end8:                                          ; preds = %while.body
  %idxprom9 = sext i32 %0 to i64, !dbg !1413
  %arrayidx10 = getelementptr inbounds i32, i32* %marks, i64 %idxprom9, !dbg !1413
  %1 = load i32, i32* %arrayidx10, align 4, !dbg !1413
  %cmp11 = icmp eq i32 %1, %mark, !dbg !1415
  br i1 %cmp11, label %return.loopexit2, label %if.end13, !dbg !1416

if.end13:                                         ; preds = %if.end8
  store i32 %mark, i32* %arrayidx10, align 4, !dbg !1417
  %idxprom16 = sext i32 %y.addr.0 to i64, !dbg !1418
  %arrayidx17 = getelementptr inbounds i32, i32* %parent, i64 %idxprom16, !dbg !1418
  %2 = load i32, i32* %arrayidx17, align 4, !dbg !1418
  call void @llvm.dbg.value(metadata i32 %2, metadata !1394, metadata !DIExpression()), !dbg !1398
  %cmp18 = icmp eq i32 %2, -1, !dbg !1419
  br i1 %cmp18, label %while.end, label %if.end20, !dbg !1421

if.end20:                                         ; preds = %if.end13
  %idxprom21 = sext i32 %2 to i64, !dbg !1422
  %arrayidx22 = getelementptr inbounds i32, i32* %marks, i64 %idxprom21, !dbg !1422
  %3 = load i32, i32* %arrayidx22, align 4, !dbg !1422
  %cmp23 = icmp eq i32 %3, %mark, !dbg !1424
  br i1 %cmp23, label %return.loopexit2, label %if.end25, !dbg !1425

if.end25:                                         ; preds = %if.end20
  store i32 %mark, i32* %arrayidx22, align 4, !dbg !1426
  br label %while.body, !dbg !1407, !llvm.loop !1427

while.end:                                        ; preds = %if.end13, %while.body
  %.lcssa = phi i32 [ %0, %if.end13 ], [ %0, %while.body ], !dbg !1408
  %cmp6.lcssa = phi i1 [ %cmp6, %if.end13 ], [ %cmp6, %while.body ], !dbg !1410
  %y.addr.1 = phi i32 [ %y.addr.0, %while.body ], [ -1, %if.end13 ]
  call void @llvm.dbg.value(metadata i32 %y.addr.1, metadata !1394, metadata !DIExpression()), !dbg !1398
  br i1 %cmp6.lcssa, label %if.then29, label %if.else, !dbg !1429

if.then29:                                        ; preds = %while.end
  br label %for.cond, !dbg !1430

for.cond:                                         ; preds = %for.inc, %if.then29
  %idxprom30.pn.in = phi i32 [ %y.addr.1, %if.then29 ], [ %y.addr.2, %for.inc ]
  %idxprom30.pn = sext i32 %idxprom30.pn.in to i64, !dbg !1434
  %y.addr.2.in = getelementptr inbounds i32, i32* %parent, i64 %idxprom30.pn, !dbg !1434
  %y.addr.2 = load i32, i32* %y.addr.2.in, align 4, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %y.addr.2, metadata !1394, metadata !DIExpression()), !dbg !1398
  %idxprom32 = sext i32 %y.addr.2 to i64, !dbg !1435
  %arrayidx33 = getelementptr inbounds i32, i32* %marks, i64 %idxprom32, !dbg !1435
  %4 = load i32, i32* %arrayidx33, align 4, !dbg !1435
  %cmp34 = icmp eq i32 %4, %mark, !dbg !1437
  br i1 %cmp34, label %return.loopexit, label %for.inc, !dbg !1438

for.inc:                                          ; preds = %for.cond
  br label %for.cond, !dbg !1439, !llvm.loop !1440

if.else:                                          ; preds = %while.end
  br label %for.cond39, !dbg !1442

for.cond39:                                       ; preds = %for.inc44, %if.else
  %idxprom37.pn.in = phi i32 [ %.lcssa, %if.else ], [ %x.addr.1, %for.inc44 ]
  %idxprom37.pn = sext i32 %idxprom37.pn.in to i64, !dbg !1445
  %x.addr.1.in = getelementptr inbounds i32, i32* %parent, i64 %idxprom37.pn, !dbg !1445
  %x.addr.1 = load i32, i32* %x.addr.1.in, align 4, !dbg !1445
  call void @llvm.dbg.value(metadata i32 %x.addr.1, metadata !1393, metadata !DIExpression()), !dbg !1398
  %idxprom40 = sext i32 %x.addr.1 to i64, !dbg !1446
  %arrayidx41 = getelementptr inbounds i32, i32* %marks, i64 %idxprom40, !dbg !1446
  %5 = load i32, i32* %arrayidx41, align 4, !dbg !1446
  %cmp42 = icmp eq i32 %5, %mark, !dbg !1448
  br i1 %cmp42, label %return.loopexit1, label %for.inc44, !dbg !1449

for.inc44:                                        ; preds = %for.cond39
  br label %for.cond39, !dbg !1450, !llvm.loop !1451

return.loopexit:                                  ; preds = %for.cond
  %y.addr.2.lcssa = phi i32 [ %y.addr.2, %for.cond ], !dbg !1434
  br label %return, !dbg !1453

return.loopexit1:                                 ; preds = %for.cond39
  %x.addr.1.lcssa = phi i32 [ %x.addr.1, %for.cond39 ], !dbg !1445
  br label %return, !dbg !1453

return.loopexit2:                                 ; preds = %if.end8, %if.end20
  %retval.0.ph = phi i32 [ %2, %if.end20 ], [ %0, %if.end8 ]
  br label %return, !dbg !1453

return:                                           ; preds = %return.loopexit2, %return.loopexit1, %return.loopexit, %entry
  %retval.0 = phi i32 [ %y, %entry ], [ %y.addr.2.lcssa, %return.loopexit ], [ %x.addr.1.lcssa, %return.loopexit1 ], [ %retval.0.ph, %return.loopexit2 ], !dbg !1398
  ret i32 %retval.0, !dbg !1453
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.graph_edge* @foll_in_subgraph(%struct.graph_edge* %e, i8 zeroext %forward, %struct.bitmap_head_def* %subgraph) unnamed_addr #0 !dbg !1454 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e, metadata !1456, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8 %forward, metadata !1457, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %subgraph, metadata !1458, metadata !DIExpression()), !dbg !1460
  %tobool = icmp eq %struct.bitmap_head_def* %subgraph, null, !dbg !1461
  br i1 %tobool, label %cleanup, label %while.cond.preheader, !dbg !1463

while.cond.preheader:                             ; preds = %entry
  %tobool6 = icmp eq i8 %forward, 0, !dbg !1464
  br i1 %tobool6, label %while.cond.preheader.split.us, label %while.cond.preheader.while.cond.preheader.split_crit_edge, !dbg !1466

while.cond.preheader.while.cond.preheader.split_crit_edge: ; preds = %while.cond.preheader
  br label %while.cond, !dbg !1466

while.cond.preheader.split.us:                    ; preds = %while.cond.preheader
  br label %while.cond.us, !dbg !1466

while.cond.us:                                    ; preds = %if.end5.us, %while.cond.preheader.split.us
  %e.addr.0.us = phi %struct.graph_edge* [ %cond.us, %if.end5.us ], [ %e, %while.cond.preheader.split.us ]
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.us, metadata !1456, metadata !DIExpression()), !dbg !1460
  %tobool1.us = icmp eq %struct.graph_edge* %e.addr.0.us, null, !dbg !1466
  br i1 %tobool1.us, label %cleanup.loopexit.us-lcssa.us, label %while.body.us, !dbg !1466

while.body.us:                                    ; preds = %while.cond.us
  %call.us = tail call fastcc i32 @dfs_edge_dest(%struct.graph_edge* nonnull %e.addr.0.us, i8 zeroext 0) #8, !dbg !1467
  call void @llvm.dbg.value(metadata i32 %call.us, metadata !1459, metadata !DIExpression()), !dbg !1460
  %call2.us = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %subgraph, i32 %call.us) #6, !dbg !1468
  %tobool3.us = icmp eq i32 %call2.us, 0, !dbg !1468
  br i1 %tobool3.us, label %if.end5.us, label %cleanup.loopexit.us-lcssa.us, !dbg !1470

if.end5.us:                                       ; preds = %while.body.us
  %pred_next.us = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.addr.0.us, i64 0, i32 2, !dbg !1471
  %cond.us = load %struct.graph_edge*, %struct.graph_edge** %pred_next.us, align 8, !dbg !1472
  call void @llvm.dbg.value(metadata %struct.graph_edge* %cond.us, metadata !1456, metadata !DIExpression()), !dbg !1460
  br label %while.cond.us, !dbg !1466, !llvm.loop !1473

cleanup.loopexit.us-lcssa.us:                     ; preds = %while.body.us, %while.cond.us
  %e.addr.0.us.lcssa = phi %struct.graph_edge* [ %e.addr.0.us, %while.body.us ], [ %e.addr.0.us, %while.cond.us ]
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.us.lcssa, metadata !1456, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.us.lcssa, metadata !1456, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.us.lcssa, metadata !1456, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.us.lcssa, metadata !1456, metadata !DIExpression()), !dbg !1460
  br label %cleanup.loopexit, !dbg !1475

while.cond:                                       ; preds = %while.cond.preheader.while.cond.preheader.split_crit_edge, %if.end5
  %e.addr.0 = phi %struct.graph_edge* [ %cond, %if.end5 ], [ %e, %while.cond.preheader.while.cond.preheader.split_crit_edge ]
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0, metadata !1456, metadata !DIExpression()), !dbg !1460
  %tobool1 = icmp eq %struct.graph_edge* %e.addr.0, null, !dbg !1466
  br i1 %tobool1, label %cleanup.loopexit.us-lcssa, label %while.body, !dbg !1466

while.body:                                       ; preds = %while.cond
  %call = tail call fastcc i32 @dfs_edge_dest(%struct.graph_edge* nonnull %e.addr.0, i8 zeroext %forward) #8, !dbg !1467
  call void @llvm.dbg.value(metadata i32 %call, metadata !1459, metadata !DIExpression()), !dbg !1460
  %call2 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %subgraph, i32 %call) #6, !dbg !1468
  %tobool3 = icmp eq i32 %call2, 0, !dbg !1468
  br i1 %tobool3, label %if.end5, label %cleanup.loopexit.us-lcssa, !dbg !1470

if.end5:                                          ; preds = %while.body
  %succ_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.addr.0, i64 0, i32 3, !dbg !1476
  %cond = load %struct.graph_edge*, %struct.graph_edge** %succ_next, align 8, !dbg !1472
  call void @llvm.dbg.value(metadata %struct.graph_edge* %cond, metadata !1456, metadata !DIExpression()), !dbg !1460
  br label %while.cond, !dbg !1466, !llvm.loop !1473

cleanup.loopexit.us-lcssa:                        ; preds = %while.body, %while.cond
  %e.addr.0.lcssa2 = phi %struct.graph_edge* [ %e.addr.0, %while.body ], [ %e.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.lcssa2, metadata !1456, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.lcssa2, metadata !1456, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.lcssa2, metadata !1456, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.lcssa2, metadata !1456, metadata !DIExpression()), !dbg !1460
  br label %cleanup.loopexit, !dbg !1475

cleanup.loopexit:                                 ; preds = %cleanup.loopexit.us-lcssa.us, %cleanup.loopexit.us-lcssa
  %e.addr.0.lcssa = phi %struct.graph_edge* [ %e.addr.0.lcssa2, %cleanup.loopexit.us-lcssa ], [ %e.addr.0.us.lcssa, %cleanup.loopexit.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.lcssa, metadata !1456, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.addr.0.lcssa, metadata !1456, metadata !DIExpression()), !dbg !1460
  br label %cleanup, !dbg !1475

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi %struct.graph_edge* [ %e, %entry ], [ %e.addr.0.lcssa, %cleanup.loopexit ], !dbg !1460
  ret %struct.graph_edge* %retval.0, !dbg !1475
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !1477 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !1481, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()), !dbg !1484
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !1485
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !1485
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1485

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !1485
  br label %cond.end, !dbg !1485

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !1485
  %call = tail call fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %cond, i32 1) #8, !dbg !1485
  %tobool1 = icmp eq i32 %call, 0, !dbg !1485
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !1485
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !1483, metadata !DIExpression()), !dbg !1484
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1485

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_int_heap** %vec_ to i8**, !dbg !1486
  %2 = load i8*, i8** %1, align 8, !dbg !1486
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %2, i32 1, i64 8, i64 4) #6, !dbg !1486
  store i8* %call3, i8** %1, align 8, !dbg !1486
  br label %if.end, !dbg !1486

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !1485
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !1488 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !1493, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !1494, metadata !DIExpression()), !dbg !1496
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !1497
  %0 = load i32, i32* %num1, align 4, !dbg !1497
  %inc = add i32 %0, 1, !dbg !1497
  store i32 %inc, i32* %num1, align 4, !dbg !1497
  %idxprom = zext i32 %0 to i64, !dbg !1497
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !1497
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !1495, metadata !DIExpression()), !dbg !1496
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !1497
  ret i32* %arrayidx, !dbg !1497
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !1498 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !1502, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32 1, metadata !1503, metadata !DIExpression()), !dbg !1504
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !1505
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1505

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 1, !dbg !1505
  %0 = load i32, i32* %alloc, align 4, !dbg !1505
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !1505
  %1 = load i32, i32* %num, align 4, !dbg !1505
  %cmp1 = icmp ne i32 %0, %1, !dbg !1505
  %phitmp = zext i1 %cmp1 to i32, !dbg !1505
  br label %cond.end, !dbg !1505

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1505

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !1505
}

declare dso_local i8* @vec_heap_o_reserve(i8*, i32, i64, i64) local_unnamed_addr #1

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
!llvm.module.flags = !{!106, !107, !108}
!llvm.ident = !{!109}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "graphds.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !6, !7, !10, !11, !13, !19, !23, !89, !90, !47, !91}
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
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "graph", file: !15, line: 45, size: 192, elements: !16)
!15 = !DIFile(filename: "./graphds.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!16 = !{!17, !18, !35}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "n_vertices", scope: !14, file: !15, line: 47, baseType: !6, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vertices", scope: !14, file: !15, line: 48, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vertex", file: !15, line: 33, size: 256, elements: !21)
!21 = !{!22, !31, !32, !33, !34}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !20, file: !15, line: 35, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "graph_edge", file: !15, line: 23, size: 256, elements: !25)
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !24, file: !15, line: 25, baseType: !6, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !24, file: !15, line: 25, baseType: !6, size: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "pred_next", scope: !24, file: !15, line: 26, baseType: !23, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "succ_next", scope: !24, file: !15, line: 26, baseType: !23, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !24, file: !15, line: 28, baseType: !10, size: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "succ", scope: !20, file: !15, line: 35, baseType: !23, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !20, file: !15, line: 37, baseType: !6, size: 32, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !20, file: !15, line: 39, baseType: !6, size: 32, offset: 160)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !15, line: 40, baseType: !10, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !14, file: !15, line: 50, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !37, line: 144, baseType: !38)
!37 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !37, line: 100, size: 896, elements: !40)
!40 = !{!41, !50, !55, !60, !62, !66, !67, !68, !69, !70, !75, !77, !78, !83, !88}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !39, file: !37, line: 102, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !37, line: 52, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !48}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !37, line: 47, baseType: !47)
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !39, file: !37, line: 105, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !37, line: 59, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!6, !48, !48}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !39, file: !37, line: 108, baseType: !56, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !37, line: 63, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !10}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !39, file: !37, line: 111, baseType: !61, size: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !39, file: !37, line: 114, baseType: !63, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 46, baseType: !65)
!64 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !39, file: !37, line: 117, baseType: !63, size: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !39, file: !37, line: 120, baseType: !63, size: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !39, file: !37, line: 124, baseType: !47, size: 32, offset: 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !39, file: !37, line: 128, baseType: !47, size: 32, offset: 480)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !39, file: !37, line: 131, baseType: !71, size: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !37, line: 75, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!10, !63, !63}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !39, file: !37, line: 132, baseType: !76, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !37, line: 78, baseType: !57)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !39, file: !37, line: 135, baseType: !10, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !39, file: !37, line: 136, baseType: !79, size: 64, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !37, line: 82, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!10, !10, !63, !63}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !39, file: !37, line: 137, baseType: !84, size: 64, offset: 768)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !37, line: 83, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !10, !10}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !39, file: !37, line: 141, baseType: !47, size: 32, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !93, line: 32, baseType: !94)
!93 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !93, line: 32, size: 96, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !94, file: !93, line: 32, baseType: !97, size: 96)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !93, line: 31, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !93, line: 31, size: 96, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !98, file: !93, line: 31, baseType: !47, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !98, file: !93, line: 31, baseType: !47, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !98, file: !93, line: 31, baseType: !103, size: 32, offset: 64)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 1)
!106 = !{i32 2, !"Dwarf Version", i32 4}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!110 = distinct !DISubprogram(name: "vprintf", scope: !111, file: !111, line: 39, type: !112, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!112 = !DISubroutineType(types: !113)
!113 = !{!6, !114, !115}
!114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !117)
!117 = !{!118, !119, !120, !121}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !116, file: !1, baseType: !47, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !116, file: !1, baseType: !47, size: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !116, file: !1, baseType: !10, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !116, file: !1, baseType: !10, size: 64, offset: 128)
!122 = !{!123, !124}
!123 = !DILocalVariable(name: "__fmt", arg: 1, scope: !110, file: !111, line: 39, type: !114)
!124 = !DILocalVariable(name: "__arg", arg: 2, scope: !110, file: !111, line: 39, type: !115)
!125 = !DILocation(line: 0, scope: !110)
!126 = !DILocation(line: 41, column: 20, scope: !110)
!127 = !DILocation(line: 41, column: 10, scope: !110)
!128 = !DILocation(line: 41, column: 3, scope: !110)
!129 = distinct !DISubprogram(name: "getchar", scope: !111, file: !111, line: 47, type: !130, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!130 = !DISubroutineType(types: !131)
!131 = !{!6}
!132 = !DILocation(line: 49, column: 16, scope: !129)
!133 = !DILocation(line: 49, column: 10, scope: !129)
!134 = !DILocation(line: 49, column: 3, scope: !129)
!135 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !111, file: !111, line: 56, type: !136, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !192)
!136 = !DISubroutineType(types: !137)
!137 = !{!6, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !140, line: 7, baseType: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !142, line: 49, size: 1728, elements: !143)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !159, !161, !162, !163, !167, !169, !171, !173, !176, !178, !181, !184, !185, !186, !187, !188}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !141, file: !142, line: 51, baseType: !6, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !141, file: !142, line: 54, baseType: !8, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !141, file: !142, line: 55, baseType: !8, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !141, file: !142, line: 56, baseType: !8, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !141, file: !142, line: 57, baseType: !8, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !141, file: !142, line: 58, baseType: !8, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !141, file: !142, line: 59, baseType: !8, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !141, file: !142, line: 60, baseType: !8, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !141, file: !142, line: 61, baseType: !8, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !141, file: !142, line: 64, baseType: !8, size: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !141, file: !142, line: 65, baseType: !8, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !141, file: !142, line: 66, baseType: !8, size: 64, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !141, file: !142, line: 68, baseType: !157, size: 64, offset: 768)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !142, line: 36, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !141, file: !142, line: 70, baseType: !160, size: 64, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !141, file: !142, line: 72, baseType: !6, size: 32, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !141, file: !142, line: 73, baseType: !6, size: 32, offset: 928)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !141, file: !142, line: 74, baseType: !164, size: 64, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !165, line: 152, baseType: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!166 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !141, file: !142, line: 77, baseType: !168, size: 16, offset: 1024)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !141, file: !142, line: 78, baseType: !170, size: 8, offset: 1040)
!170 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !141, file: !142, line: 79, baseType: !172, size: 8, offset: 1048)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !104)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !141, file: !142, line: 81, baseType: !174, size: 64, offset: 1088)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !142, line: 43, baseType: null)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !141, file: !142, line: 89, baseType: !177, size: 64, offset: 1152)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !165, line: 153, baseType: !166)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !141, file: !142, line: 91, baseType: !179, size: 64, offset: 1216)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !142, line: 37, flags: DIFlagFwdDecl)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !141, file: !142, line: 92, baseType: !182, size: 64, offset: 1280)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !142, line: 38, flags: DIFlagFwdDecl)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !141, file: !142, line: 93, baseType: !160, size: 64, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !141, file: !142, line: 94, baseType: !10, size: 64, offset: 1408)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !141, file: !142, line: 95, baseType: !63, size: 64, offset: 1472)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !141, file: !142, line: 96, baseType: !6, size: 32, offset: 1536)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !141, file: !142, line: 98, baseType: !189, size: 160, offset: 1568)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 20)
!192 = !{!193}
!193 = !DILocalVariable(name: "__fp", arg: 1, scope: !135, file: !111, line: 56, type: !138)
!194 = !DILocation(line: 0, scope: !135)
!195 = !DILocation(line: 58, column: 10, scope: !135)
!196 = !DILocation(line: 58, column: 3, scope: !135)
!197 = distinct !DISubprogram(name: "getc_unlocked", scope: !111, file: !111, line: 66, type: !136, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !198)
!198 = !{!199}
!199 = !DILocalVariable(name: "__fp", arg: 1, scope: !197, file: !111, line: 66, type: !138)
!200 = !DILocation(line: 0, scope: !197)
!201 = !DILocation(line: 68, column: 10, scope: !197)
!202 = !DILocation(line: 68, column: 3, scope: !197)
!203 = distinct !DISubprogram(name: "getchar_unlocked", scope: !111, file: !111, line: 73, type: !130, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!204 = !DILocation(line: 75, column: 10, scope: !203)
!205 = !DILocation(line: 75, column: 3, scope: !203)
!206 = distinct !DISubprogram(name: "putchar", scope: !111, file: !111, line: 82, type: !207, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{!6, !6}
!209 = !{!210}
!210 = !DILocalVariable(name: "__c", arg: 1, scope: !206, file: !111, line: 82, type: !6)
!211 = !DILocation(line: 0, scope: !206)
!212 = !DILocation(line: 84, column: 21, scope: !206)
!213 = !DILocation(line: 84, column: 10, scope: !206)
!214 = !DILocation(line: 84, column: 3, scope: !206)
!215 = distinct !DISubprogram(name: "fputc_unlocked", scope: !111, file: !111, line: 91, type: !216, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!6, !6, !138}
!218 = !{!219, !220}
!219 = !DILocalVariable(name: "__c", arg: 1, scope: !215, file: !111, line: 91, type: !6)
!220 = !DILocalVariable(name: "__stream", arg: 2, scope: !215, file: !111, line: 91, type: !138)
!221 = !DILocation(line: 0, scope: !215)
!222 = !DILocation(line: 93, column: 10, scope: !215)
!223 = !DILocation(line: 93, column: 3, scope: !215)
!224 = distinct !DISubprogram(name: "putc_unlocked", scope: !111, file: !111, line: 101, type: !216, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!225 = !{!226, !227}
!226 = !DILocalVariable(name: "__c", arg: 1, scope: !224, file: !111, line: 101, type: !6)
!227 = !DILocalVariable(name: "__stream", arg: 2, scope: !224, file: !111, line: 101, type: !138)
!228 = !DILocation(line: 0, scope: !224)
!229 = !DILocation(line: 103, column: 10, scope: !224)
!230 = !DILocation(line: 103, column: 3, scope: !224)
!231 = distinct !DISubprogram(name: "putchar_unlocked", scope: !111, file: !111, line: 108, type: !207, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!232 = !{!233}
!233 = !DILocalVariable(name: "__c", arg: 1, scope: !231, file: !111, line: 108, type: !6)
!234 = !DILocation(line: 0, scope: !231)
!235 = !DILocation(line: 110, column: 10, scope: !231)
!236 = !DILocation(line: 110, column: 3, scope: !231)
!237 = distinct !DISubprogram(name: "getline", scope: !111, file: !111, line: 118, type: !238, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !242)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !7, !241, !138}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !165, line: 193, baseType: !166)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!242 = !{!243, !244, !245}
!243 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !237, file: !111, line: 118, type: !7)
!244 = !DILocalVariable(name: "__n", arg: 2, scope: !237, file: !111, line: 118, type: !241)
!245 = !DILocalVariable(name: "__stream", arg: 3, scope: !237, file: !111, line: 118, type: !138)
!246 = !DILocation(line: 0, scope: !237)
!247 = !DILocation(line: 120, column: 10, scope: !237)
!248 = !DILocation(line: 120, column: 3, scope: !237)
!249 = distinct !DISubprogram(name: "feof_unlocked", scope: !111, file: !111, line: 128, type: !136, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !250)
!250 = !{!251}
!251 = !DILocalVariable(name: "__stream", arg: 1, scope: !249, file: !111, line: 128, type: !138)
!252 = !DILocation(line: 0, scope: !249)
!253 = !DILocation(line: 130, column: 10, scope: !249)
!254 = !DILocation(line: 130, column: 3, scope: !249)
!255 = distinct !DISubprogram(name: "ferror_unlocked", scope: !111, file: !111, line: 135, type: !136, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !256)
!256 = !{!257}
!257 = !DILocalVariable(name: "__stream", arg: 1, scope: !255, file: !111, line: 135, type: !138)
!258 = !DILocation(line: 0, scope: !255)
!259 = !DILocation(line: 137, column: 10, scope: !255)
!260 = !DILocation(line: 137, column: 3, scope: !255)
!261 = distinct !DISubprogram(name: "tolower", scope: !262, file: !262, line: 207, type: !207, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !263)
!262 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!263 = !{!264}
!264 = !DILocalVariable(name: "__c", arg: 1, scope: !261, file: !262, line: 207, type: !6)
!265 = !DILocation(line: 0, scope: !261)
!266 = !DILocation(line: 209, column: 22, scope: !261)
!267 = !DILocation(line: 209, column: 39, scope: !261)
!268 = !DILocation(line: 209, column: 38, scope: !261)
!269 = !DILocation(line: 209, column: 37, scope: !261)
!270 = !DILocation(line: 209, column: 10, scope: !261)
!271 = !DILocation(line: 209, column: 3, scope: !261)
!272 = distinct !DISubprogram(name: "toupper", scope: !262, file: !262, line: 213, type: !207, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!273 = !{!274}
!274 = !DILocalVariable(name: "__c", arg: 1, scope: !272, file: !262, line: 213, type: !6)
!275 = !DILocation(line: 0, scope: !272)
!276 = !DILocation(line: 215, column: 22, scope: !272)
!277 = !DILocation(line: 215, column: 39, scope: !272)
!278 = !DILocation(line: 215, column: 38, scope: !272)
!279 = !DILocation(line: 215, column: 37, scope: !272)
!280 = !DILocation(line: 215, column: 10, scope: !272)
!281 = !DILocation(line: 215, column: 3, scope: !272)
!282 = distinct !DISubprogram(name: "atoi", scope: !283, file: !283, line: 361, type: !284, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !286)
!283 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!284 = !DISubroutineType(types: !285)
!285 = !{!6, !11}
!286 = !{!287}
!287 = !DILocalVariable(name: "__nptr", arg: 1, scope: !282, file: !283, line: 361, type: !11)
!288 = !DILocation(line: 0, scope: !282)
!289 = !DILocation(line: 363, column: 16, scope: !282)
!290 = !DILocation(line: 363, column: 10, scope: !282)
!291 = !DILocation(line: 363, column: 3, scope: !282)
!292 = distinct !DISubprogram(name: "atol", scope: !283, file: !283, line: 366, type: !293, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!166, !11}
!295 = !{!296}
!296 = !DILocalVariable(name: "__nptr", arg: 1, scope: !292, file: !283, line: 366, type: !11)
!297 = !DILocation(line: 0, scope: !292)
!298 = !DILocation(line: 368, column: 10, scope: !292)
!299 = !DILocation(line: 368, column: 3, scope: !292)
!300 = distinct !DISubprogram(name: "atoll", scope: !283, file: !283, line: 373, type: !301, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !304)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !11}
!303 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!304 = !{!305}
!305 = !DILocalVariable(name: "__nptr", arg: 1, scope: !300, file: !283, line: 373, type: !11)
!306 = !DILocation(line: 0, scope: !300)
!307 = !DILocation(line: 375, column: 10, scope: !300)
!308 = !DILocation(line: 375, column: 3, scope: !300)
!309 = distinct !DISubprogram(name: "bsearch", scope: !310, file: !310, line: 20, type: !311, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !314)
!310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!311 = !DISubroutineType(types: !312)
!312 = !{!10, !48, !48, !63, !63, !313}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !283, line: 808, baseType: !52)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!315 = !DILocalVariable(name: "__key", arg: 1, scope: !309, file: !310, line: 20, type: !48)
!316 = !DILocalVariable(name: "__base", arg: 2, scope: !309, file: !310, line: 20, type: !48)
!317 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !309, file: !310, line: 20, type: !63)
!318 = !DILocalVariable(name: "__size", arg: 4, scope: !309, file: !310, line: 20, type: !63)
!319 = !DILocalVariable(name: "__compar", arg: 5, scope: !309, file: !310, line: 21, type: !313)
!320 = !DILocalVariable(name: "__l", scope: !309, file: !310, line: 23, type: !63)
!321 = !DILocalVariable(name: "__u", scope: !309, file: !310, line: 23, type: !63)
!322 = !DILocalVariable(name: "__idx", scope: !309, file: !310, line: 23, type: !63)
!323 = !DILocalVariable(name: "__p", scope: !309, file: !310, line: 24, type: !48)
!324 = !DILocalVariable(name: "__comparison", scope: !309, file: !310, line: 25, type: !6)
!325 = !DILocation(line: 0, scope: !309)
!326 = !DILocation(line: 29, column: 3, scope: !309)
!327 = !DILocation(line: 27, column: 7, scope: !309)
!328 = !DILocation(line: 29, column: 14, scope: !309)
!329 = !DILocation(line: 31, column: 20, scope: !330)
!330 = distinct !DILexicalBlock(scope: !309, file: !310, line: 30, column: 5)
!331 = !DILocation(line: 31, column: 27, scope: !330)
!332 = !DILocation(line: 32, column: 56, scope: !330)
!333 = !DILocation(line: 32, column: 47, scope: !330)
!334 = !DILocation(line: 33, column: 22, scope: !330)
!335 = !DILocation(line: 34, column: 24, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !310, line: 34, column: 11)
!337 = !DILocation(line: 34, column: 11, scope: !330)
!338 = !DILocation(line: 36, column: 29, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !310, line: 36, column: 16)
!340 = !DILocation(line: 36, column: 16, scope: !336)
!341 = !DILocation(line: 37, column: 14, scope: !339)
!342 = distinct !{!342, !326, !343}
!343 = !DILocation(line: 40, column: 5, scope: !309)
!344 = !DILocation(line: 43, column: 1, scope: !309)
!345 = distinct !DISubprogram(name: "atof", scope: !346, file: !346, line: 25, type: !347, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !350)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !11}
!349 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!350 = !{!351}
!351 = !DILocalVariable(name: "__nptr", arg: 1, scope: !345, file: !346, line: 25, type: !11)
!352 = !DILocation(line: 0, scope: !345)
!353 = !DILocation(line: 27, column: 10, scope: !345)
!354 = !DILocation(line: 27, column: 3, scope: !345)
!355 = distinct !DISubprogram(name: "strtoimax", scope: !356, file: !356, line: 324, type: !357, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !363)
!356 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!357 = !DISubroutineType(types: !358)
!358 = !{!359, !114, !362, !6}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !360, line: 101, baseType: !361)
!360 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !165, line: 72, baseType: !166)
!362 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !7)
!363 = !{!364, !365, !366}
!364 = !DILocalVariable(name: "nptr", arg: 1, scope: !355, file: !356, line: 324, type: !114)
!365 = !DILocalVariable(name: "endptr", arg: 2, scope: !355, file: !356, line: 324, type: !362)
!366 = !DILocalVariable(name: "base", arg: 3, scope: !355, file: !356, line: 324, type: !6)
!367 = !DILocation(line: 0, scope: !355)
!368 = !DILocation(line: 327, column: 10, scope: !355)
!369 = !DILocation(line: 327, column: 3, scope: !355)
!370 = distinct !DISubprogram(name: "strtoumax", scope: !356, file: !356, line: 336, type: !371, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!371 = !DISubroutineType(types: !372)
!372 = !{!373, !114, !362, !6}
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !360, line: 102, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !165, line: 73, baseType: !65)
!375 = !{!376, !377, !378}
!376 = !DILocalVariable(name: "nptr", arg: 1, scope: !370, file: !356, line: 336, type: !114)
!377 = !DILocalVariable(name: "endptr", arg: 2, scope: !370, file: !356, line: 336, type: !362)
!378 = !DILocalVariable(name: "base", arg: 3, scope: !370, file: !356, line: 336, type: !6)
!379 = !DILocation(line: 0, scope: !370)
!380 = !DILocation(line: 339, column: 10, scope: !370)
!381 = !DILocation(line: 339, column: 3, scope: !370)
!382 = distinct !DISubprogram(name: "wcstoimax", scope: !356, file: !356, line: 348, type: !383, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !392)
!383 = !DISubroutineType(types: !384)
!384 = !{!359, !385, !389, !6}
!385 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !356, line: 34, baseType: !6)
!389 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!392 = !{!393, !394, !395}
!393 = !DILocalVariable(name: "nptr", arg: 1, scope: !382, file: !356, line: 348, type: !385)
!394 = !DILocalVariable(name: "endptr", arg: 2, scope: !382, file: !356, line: 348, type: !389)
!395 = !DILocalVariable(name: "base", arg: 3, scope: !382, file: !356, line: 348, type: !6)
!396 = !DILocation(line: 0, scope: !382)
!397 = !DILocation(line: 351, column: 10, scope: !382)
!398 = !DILocation(line: 351, column: 3, scope: !382)
!399 = distinct !DISubprogram(name: "wcstoumax", scope: !356, file: !356, line: 362, type: !400, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!373, !385, !389, !6}
!402 = !{!403, !404, !405}
!403 = !DILocalVariable(name: "nptr", arg: 1, scope: !399, file: !356, line: 362, type: !385)
!404 = !DILocalVariable(name: "endptr", arg: 2, scope: !399, file: !356, line: 362, type: !389)
!405 = !DILocalVariable(name: "base", arg: 3, scope: !399, file: !356, line: 362, type: !6)
!406 = !DILocation(line: 0, scope: !399)
!407 = !DILocation(line: 365, column: 10, scope: !399)
!408 = !DILocation(line: 365, column: 3, scope: !399)
!409 = distinct !DISubprogram(name: "stat", scope: !410, file: !410, line: 453, type: !411, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !450)
!410 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!411 = !DISubroutineType(types: !412)
!412 = !{!6, !11, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !415, line: 46, size: 1152, elements: !416)
!415 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!416 = !{!417, !419, !421, !423, !425, !427, !429, !430, !431, !432, !434, !436, !444, !445, !446}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !414, file: !415, line: 48, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !165, line: 145, baseType: !65)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !414, file: !415, line: 53, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !165, line: 148, baseType: !65)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !414, file: !415, line: 61, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !165, line: 151, baseType: !65)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !414, file: !415, line: 62, baseType: !424, size: 32, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !165, line: 150, baseType: !47)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !414, file: !415, line: 64, baseType: !426, size: 32, offset: 224)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !165, line: 146, baseType: !47)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !414, file: !415, line: 65, baseType: !428, size: 32, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !165, line: 147, baseType: !47)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !414, file: !415, line: 67, baseType: !6, size: 32, offset: 288)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !414, file: !415, line: 69, baseType: !418, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !414, file: !415, line: 74, baseType: !164, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !414, file: !415, line: 78, baseType: !433, size: 64, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !165, line: 174, baseType: !166)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !414, file: !415, line: 80, baseType: !435, size: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !165, line: 179, baseType: !166)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !414, file: !415, line: 91, baseType: !437, size: 128, offset: 576)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !438, line: 10, size: 128, elements: !439)
!438 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!439 = !{!440, !442}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !437, file: !438, line: 12, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !165, line: 160, baseType: !166)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !437, file: !438, line: 16, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !165, line: 196, baseType: !166)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !414, file: !415, line: 92, baseType: !437, size: 128, offset: 704)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !414, file: !415, line: 93, baseType: !437, size: 128, offset: 832)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !414, file: !415, line: 106, baseType: !447, size: 192, offset: 960)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 192, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 3)
!450 = !{!451, !452}
!451 = !DILocalVariable(name: "__path", arg: 1, scope: !409, file: !410, line: 453, type: !11)
!452 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !409, file: !410, line: 453, type: !413)
!453 = !DILocation(line: 0, scope: !409)
!454 = !DILocation(line: 455, column: 10, scope: !409)
!455 = !DILocation(line: 455, column: 3, scope: !409)
!456 = distinct !DISubprogram(name: "lstat", scope: !410, file: !410, line: 460, type: !411, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !457)
!457 = !{!458, !459}
!458 = !DILocalVariable(name: "__path", arg: 1, scope: !456, file: !410, line: 460, type: !11)
!459 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !456, file: !410, line: 460, type: !413)
!460 = !DILocation(line: 0, scope: !456)
!461 = !DILocation(line: 462, column: 10, scope: !456)
!462 = !DILocation(line: 462, column: 3, scope: !456)
!463 = distinct !DISubprogram(name: "fstat", scope: !410, file: !410, line: 467, type: !464, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{!6, !6, !413}
!466 = !{!467, !468}
!467 = !DILocalVariable(name: "__fd", arg: 1, scope: !463, file: !410, line: 467, type: !6)
!468 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !463, file: !410, line: 467, type: !413)
!469 = !DILocation(line: 0, scope: !463)
!470 = !DILocation(line: 469, column: 10, scope: !463)
!471 = !DILocation(line: 469, column: 3, scope: !463)
!472 = distinct !DISubprogram(name: "fstatat", scope: !410, file: !410, line: 474, type: !473, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!6, !6, !11, !413, !6}
!475 = !{!476, !477, !478, !479}
!476 = !DILocalVariable(name: "__fd", arg: 1, scope: !472, file: !410, line: 474, type: !6)
!477 = !DILocalVariable(name: "__filename", arg: 2, scope: !472, file: !410, line: 474, type: !11)
!478 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !472, file: !410, line: 474, type: !413)
!479 = !DILocalVariable(name: "__flag", arg: 4, scope: !472, file: !410, line: 474, type: !6)
!480 = !DILocation(line: 0, scope: !472)
!481 = !DILocation(line: 477, column: 10, scope: !472)
!482 = !DILocation(line: 477, column: 3, scope: !472)
!483 = distinct !DISubprogram(name: "mknod", scope: !410, file: !410, line: 483, type: !484, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!6, !11, !424, !418}
!486 = !{!487, !488, !489}
!487 = !DILocalVariable(name: "__path", arg: 1, scope: !483, file: !410, line: 483, type: !11)
!488 = !DILocalVariable(name: "__mode", arg: 2, scope: !483, file: !410, line: 483, type: !424)
!489 = !DILocalVariable(name: "__dev", arg: 3, scope: !483, file: !410, line: 483, type: !418)
!490 = !DILocation(line: 0, scope: !483)
!491 = !DILocation(line: 485, column: 10, scope: !483)
!492 = !DILocation(line: 485, column: 3, scope: !483)
!493 = distinct !DISubprogram(name: "mknodat", scope: !410, file: !410, line: 491, type: !494, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!6, !6, !11, !424, !418}
!496 = !{!497, !498, !499, !500}
!497 = !DILocalVariable(name: "__fd", arg: 1, scope: !493, file: !410, line: 491, type: !6)
!498 = !DILocalVariable(name: "__path", arg: 2, scope: !493, file: !410, line: 491, type: !11)
!499 = !DILocalVariable(name: "__mode", arg: 3, scope: !493, file: !410, line: 491, type: !424)
!500 = !DILocalVariable(name: "__dev", arg: 4, scope: !493, file: !410, line: 491, type: !418)
!501 = !DILocation(line: 0, scope: !493)
!502 = !DILocation(line: 494, column: 10, scope: !493)
!503 = !DILocation(line: 494, column: 3, scope: !493)
!504 = distinct !DISubprogram(name: "stat64", scope: !410, file: !410, line: 502, type: !505, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !527)
!505 = !DISubroutineType(types: !506)
!506 = !{!6, !11, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !415, line: 119, size: 1152, elements: !509)
!509 = !{!510, !511, !513, !514, !515, !516, !517, !518, !519, !520, !521, !523, !524, !525, !526}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !508, file: !415, line: 121, baseType: !418, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !508, file: !415, line: 123, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !165, line: 149, baseType: !65)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !508, file: !415, line: 124, baseType: !422, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !508, file: !415, line: 125, baseType: !424, size: 32, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !508, file: !415, line: 132, baseType: !426, size: 32, offset: 224)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !508, file: !415, line: 133, baseType: !428, size: 32, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !508, file: !415, line: 135, baseType: !6, size: 32, offset: 288)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !508, file: !415, line: 136, baseType: !418, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !508, file: !415, line: 137, baseType: !164, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !508, file: !415, line: 143, baseType: !433, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !508, file: !415, line: 144, baseType: !522, size: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !165, line: 180, baseType: !166)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !508, file: !415, line: 152, baseType: !437, size: 128, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !508, file: !415, line: 153, baseType: !437, size: 128, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !508, file: !415, line: 154, baseType: !437, size: 128, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !508, file: !415, line: 164, baseType: !447, size: 192, offset: 960)
!527 = !{!528, !529}
!528 = !DILocalVariable(name: "__path", arg: 1, scope: !504, file: !410, line: 502, type: !11)
!529 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !504, file: !410, line: 502, type: !507)
!530 = !DILocation(line: 0, scope: !504)
!531 = !DILocation(line: 504, column: 10, scope: !504)
!532 = !DILocation(line: 504, column: 3, scope: !504)
!533 = distinct !DISubprogram(name: "lstat64", scope: !410, file: !410, line: 509, type: !505, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !534)
!534 = !{!535, !536}
!535 = !DILocalVariable(name: "__path", arg: 1, scope: !533, file: !410, line: 509, type: !11)
!536 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !533, file: !410, line: 509, type: !507)
!537 = !DILocation(line: 0, scope: !533)
!538 = !DILocation(line: 511, column: 10, scope: !533)
!539 = !DILocation(line: 511, column: 3, scope: !533)
!540 = distinct !DISubprogram(name: "fstat64", scope: !410, file: !410, line: 516, type: !541, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!6, !6, !507}
!543 = !{!544, !545}
!544 = !DILocalVariable(name: "__fd", arg: 1, scope: !540, file: !410, line: 516, type: !6)
!545 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !540, file: !410, line: 516, type: !507)
!546 = !DILocation(line: 0, scope: !540)
!547 = !DILocation(line: 518, column: 10, scope: !540)
!548 = !DILocation(line: 518, column: 3, scope: !540)
!549 = distinct !DISubprogram(name: "fstatat64", scope: !410, file: !410, line: 523, type: !550, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!6, !6, !11, !507, !6}
!552 = !{!553, !554, !555, !556}
!553 = !DILocalVariable(name: "__fd", arg: 1, scope: !549, file: !410, line: 523, type: !6)
!554 = !DILocalVariable(name: "__filename", arg: 2, scope: !549, file: !410, line: 523, type: !11)
!555 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !549, file: !410, line: 523, type: !507)
!556 = !DILocalVariable(name: "__flag", arg: 4, scope: !549, file: !410, line: 523, type: !6)
!557 = !DILocation(line: 0, scope: !549)
!558 = !DILocation(line: 526, column: 10, scope: !549)
!559 = !DILocation(line: 526, column: 3, scope: !549)
!560 = distinct !DISubprogram(name: "dump_graph", scope: !1, file: !1, line: 33, type: !561, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !563)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !138, !13}
!563 = !{!564, !565, !566, !567}
!564 = !DILocalVariable(name: "f", arg: 1, scope: !560, file: !1, line: 33, type: !138)
!565 = !DILocalVariable(name: "g", arg: 2, scope: !560, file: !1, line: 33, type: !13)
!566 = !DILocalVariable(name: "i", scope: !560, file: !1, line: 35, type: !6)
!567 = !DILocalVariable(name: "e", scope: !560, file: !1, line: 36, type: !23)
!568 = !DILocation(line: 0, scope: !560)
!569 = !DILocation(line: 0, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !1, line: 38, column: 3)
!571 = distinct !DILexicalBlock(scope: !560, file: !1, line: 38, column: 3)
!572 = !DILocation(line: 0, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 40, column: 11)
!574 = distinct !DILexicalBlock(scope: !570, file: !1, line: 39, column: 5)
!575 = !DILocation(line: 38, column: 8, scope: !571)
!576 = !DILocation(line: 0, scope: !571)
!577 = !DILocation(line: 38, column: 22, scope: !570)
!578 = !DILocation(line: 38, column: 17, scope: !570)
!579 = !DILocation(line: 38, column: 3, scope: !571)
!580 = !DILocation(line: 40, column: 15, scope: !573)
!581 = !DILocation(line: 40, column: 27, scope: !573)
!582 = !DILocation(line: 40, column: 12, scope: !573)
!583 = !DILocation(line: 41, column: 4, scope: !573)
!584 = !DILocation(line: 41, column: 23, scope: !573)
!585 = !DILocation(line: 41, column: 8, scope: !573)
!586 = !DILocation(line: 40, column: 11, scope: !574)
!587 = !DILocation(line: 44, column: 52, scope: !574)
!588 = !DILocation(line: 44, column: 7, scope: !574)
!589 = !DILocation(line: 45, column: 19, scope: !590)
!590 = distinct !DILexicalBlock(scope: !574, file: !1, line: 45, column: 7)
!591 = !DILocation(line: 45, column: 31, scope: !590)
!592 = !DILocation(line: 45, column: 12, scope: !590)
!593 = !DILocation(line: 0, scope: !590)
!594 = !DILocation(line: 45, column: 7, scope: !590)
!595 = !DILocation(line: 46, column: 24, scope: !596)
!596 = distinct !DILexicalBlock(scope: !590, file: !1, line: 45, column: 7)
!597 = !DILocation(line: 46, column: 2, scope: !596)
!598 = !DILocation(line: 45, column: 47, scope: !596)
!599 = !DILocation(line: 45, column: 7, scope: !596)
!600 = distinct !{!600, !594, !601}
!601 = !DILocation(line: 46, column: 27, scope: !590)
!602 = !DILocation(line: 47, column: 7, scope: !574)
!603 = !DILocation(line: 49, column: 7, scope: !574)
!604 = !DILocation(line: 50, column: 19, scope: !605)
!605 = distinct !DILexicalBlock(scope: !574, file: !1, line: 50, column: 7)
!606 = !DILocation(line: 50, column: 31, scope: !605)
!607 = !DILocation(line: 50, column: 12, scope: !605)
!608 = !DILocation(line: 0, scope: !605)
!609 = !DILocation(line: 50, column: 7, scope: !605)
!610 = !DILocation(line: 51, column: 24, scope: !611)
!611 = distinct !DILexicalBlock(scope: !605, file: !1, line: 50, column: 7)
!612 = !DILocation(line: 51, column: 2, scope: !611)
!613 = !DILocation(line: 50, column: 47, scope: !611)
!614 = !DILocation(line: 50, column: 7, scope: !611)
!615 = distinct !{!615, !609, !616}
!616 = !DILocation(line: 51, column: 28, scope: !605)
!617 = !DILocation(line: 52, column: 7, scope: !574)
!618 = !DILocation(line: 53, column: 5, scope: !574)
!619 = !DILocation(line: 38, column: 35, scope: !570)
!620 = !DILocation(line: 38, column: 3, scope: !570)
!621 = distinct !{!621, !579, !622}
!622 = !DILocation(line: 53, column: 5, scope: !571)
!623 = !DILocation(line: 54, column: 1, scope: !560)
!624 = distinct !DISubprogram(name: "new_graph", scope: !1, file: !1, line: 59, type: !625, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{!13, !6}
!627 = !{!628, !629}
!628 = !DILocalVariable(name: "n_vertices", arg: 1, scope: !624, file: !1, line: 59, type: !6)
!629 = !DILocalVariable(name: "g", scope: !624, file: !1, line: 61, type: !13)
!630 = !DILocation(line: 0, scope: !624)
!631 = !DILocation(line: 61, column: 21, scope: !624)
!632 = !DILocation(line: 63, column: 6, scope: !624)
!633 = !DILocation(line: 63, column: 17, scope: !624)
!634 = !DILocation(line: 64, column: 17, scope: !624)
!635 = !DILocation(line: 64, column: 6, scope: !624)
!636 = !DILocation(line: 64, column: 15, scope: !624)
!637 = !DILocation(line: 66, column: 3, scope: !624)
!638 = distinct !DISubprogram(name: "add_edge", scope: !1, file: !1, line: 72, type: !639, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{!23, !13, !6, !6}
!641 = !{!642, !643, !644, !645, !646, !647}
!642 = !DILocalVariable(name: "g", arg: 1, scope: !638, file: !1, line: 72, type: !13)
!643 = !DILocalVariable(name: "f", arg: 2, scope: !638, file: !1, line: 72, type: !6)
!644 = !DILocalVariable(name: "t", arg: 3, scope: !638, file: !1, line: 72, type: !6)
!645 = !DILocalVariable(name: "e", scope: !638, file: !1, line: 74, type: !23)
!646 = !DILocalVariable(name: "vf", scope: !638, file: !1, line: 75, type: !19)
!647 = !DILocalVariable(name: "vt", scope: !638, file: !1, line: 75, type: !19)
!648 = !DILocation(line: 0, scope: !638)
!649 = !DILocation(line: 74, column: 26, scope: !638)
!650 = !DILocation(line: 75, column: 27, scope: !638)
!651 = !DILocation(line: 75, column: 24, scope: !638)
!652 = !DILocation(line: 75, column: 47, scope: !638)
!653 = !DILocation(line: 78, column: 6, scope: !638)
!654 = !DILocation(line: 78, column: 10, scope: !638)
!655 = !DILocation(line: 79, column: 6, scope: !638)
!656 = !DILocation(line: 79, column: 11, scope: !638)
!657 = !DILocation(line: 81, column: 22, scope: !638)
!658 = !DILocation(line: 81, column: 6, scope: !638)
!659 = !DILocation(line: 81, column: 16, scope: !638)
!660 = !DILocation(line: 82, column: 12, scope: !638)
!661 = !DILocation(line: 84, column: 22, scope: !638)
!662 = !DILocation(line: 84, column: 6, scope: !638)
!663 = !DILocation(line: 84, column: 16, scope: !638)
!664 = !DILocation(line: 85, column: 12, scope: !638)
!665 = !DILocation(line: 87, column: 3, scope: !638)
!666 = distinct !DISubprogram(name: "identify_vertices", scope: !1, file: !1, line: 93, type: !667, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !13, !6, !6}
!669 = !{!670, !671, !672, !673, !674, !675, !676}
!670 = !DILocalVariable(name: "g", arg: 1, scope: !666, file: !1, line: 93, type: !13)
!671 = !DILocalVariable(name: "v", arg: 2, scope: !666, file: !1, line: 93, type: !6)
!672 = !DILocalVariable(name: "u", arg: 3, scope: !666, file: !1, line: 93, type: !6)
!673 = !DILocalVariable(name: "vv", scope: !666, file: !1, line: 95, type: !19)
!674 = !DILocalVariable(name: "uu", scope: !666, file: !1, line: 96, type: !19)
!675 = !DILocalVariable(name: "e", scope: !666, file: !1, line: 97, type: !23)
!676 = !DILocalVariable(name: "next", scope: !666, file: !1, line: 97, type: !23)
!677 = !DILocation(line: 0, scope: !666)
!678 = !DILocation(line: 95, column: 27, scope: !666)
!679 = !DILocation(line: 95, column: 24, scope: !666)
!680 = !DILocation(line: 96, column: 24, scope: !666)
!681 = !DILocation(line: 99, column: 16, scope: !682)
!682 = distinct !DILexicalBlock(scope: !666, file: !1, line: 99, column: 3)
!683 = !DILocation(line: 0, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !1, line: 100, column: 5)
!685 = distinct !DILexicalBlock(scope: !682, file: !1, line: 99, column: 3)
!686 = !DILocation(line: 99, column: 8, scope: !682)
!687 = !DILocation(line: 0, scope: !682)
!688 = !DILocation(line: 99, column: 3, scope: !682)
!689 = !DILocation(line: 101, column: 17, scope: !684)
!690 = !DILocation(line: 103, column: 10, scope: !684)
!691 = !DILocation(line: 103, column: 14, scope: !684)
!692 = !DILocation(line: 104, column: 26, scope: !684)
!693 = !DILocation(line: 104, column: 20, scope: !684)
!694 = !DILocation(line: 105, column: 16, scope: !684)
!695 = !DILocation(line: 99, column: 3, scope: !685)
!696 = distinct !{!696, !688, !697}
!697 = !DILocation(line: 106, column: 5, scope: !682)
!698 = !DILocation(line: 107, column: 12, scope: !666)
!699 = !DILocation(line: 109, column: 16, scope: !700)
!700 = distinct !DILexicalBlock(scope: !666, file: !1, line: 109, column: 3)
!701 = !DILocation(line: 0, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !1, line: 110, column: 5)
!703 = distinct !DILexicalBlock(scope: !700, file: !1, line: 109, column: 3)
!704 = !DILocation(line: 109, column: 8, scope: !700)
!705 = !DILocation(line: 0, scope: !700)
!706 = !DILocation(line: 109, column: 3, scope: !700)
!707 = !DILocation(line: 111, column: 17, scope: !702)
!708 = !DILocation(line: 113, column: 10, scope: !702)
!709 = !DILocation(line: 113, column: 15, scope: !702)
!710 = !DILocation(line: 114, column: 26, scope: !702)
!711 = !DILocation(line: 114, column: 20, scope: !702)
!712 = !DILocation(line: 115, column: 16, scope: !702)
!713 = !DILocation(line: 109, column: 3, scope: !703)
!714 = distinct !{!714, !706, !715}
!715 = !DILocation(line: 116, column: 5, scope: !700)
!716 = !DILocation(line: 117, column: 12, scope: !666)
!717 = !DILocation(line: 118, column: 1, scope: !666)
!718 = distinct !DISubprogram(name: "graphds_dfs", scope: !1, file: !1, line: 190, type: !719, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !783)
!719 = !DISubroutineType(types: !720)
!720 = !{!6, !13, !90, !6, !721, !5, !722}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !723, line: 47, baseType: !724)
!723 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !726, line: 75, size: 256, elements: !727)
!726 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!727 = !{!728, !742, !743, !744}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !725, file: !726, line: 76, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !726, line: 68, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !726, line: 63, size: 320, elements: !732)
!732 = !{!733, !735, !736, !737}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !726, line: 64, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !731, file: !726, line: 65, baseType: !734, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !731, file: !726, line: 66, baseType: !47, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !731, file: !726, line: 67, baseType: !738, size: 128, offset: 192)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 128, elements: !740)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !726, line: 29, baseType: !65)
!740 = !{!741}
!741 = !DISubrange(count: 2)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !725, file: !726, line: 77, baseType: !729, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !725, file: !726, line: 78, baseType: !47, size: 32, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !725, file: !726, line: 79, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !726, line: 49, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !726, line: 45, size: 832, elements: !748)
!748 = !{!749, !750, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !747, file: !726, line: 46, baseType: !734, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !747, file: !726, line: 47, baseType: !724, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !747, file: !726, line: 48, baseType: !752, size: 704, offset: 128)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !753, line: 164, size: 704, elements: !754)
!753 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!754 = !{!755, !756, !766, !767, !768, !769, !770, !771, !775, !779, !780, !781, !782}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !752, file: !753, line: 166, baseType: !166, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !752, file: !753, line: 167, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !753, line: 157, size: 192, elements: !759)
!759 = !{!760, !761, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !758, file: !753, line: 159, baseType: !8, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !758, file: !753, line: 160, baseType: !757, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !758, file: !753, line: 161, baseType: !763, size: 32, offset: 128)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 4)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !752, file: !753, line: 168, baseType: !8, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !752, file: !753, line: 169, baseType: !8, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !752, file: !753, line: 170, baseType: !8, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !752, file: !753, line: 171, baseType: !166, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !752, file: !753, line: 172, baseType: !6, size: 32, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !752, file: !753, line: 176, baseType: !772, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!757, !10, !166}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !752, file: !753, line: 177, baseType: !776, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !10, !757}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !752, file: !753, line: 178, baseType: !10, size: 64, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !752, file: !753, line: 179, baseType: !47, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !752, file: !753, line: 180, baseType: !47, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !752, file: !753, line: 184, baseType: !47, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !805}
!784 = !DILocalVariable(name: "g", arg: 1, scope: !718, file: !1, line: 190, type: !13)
!785 = !DILocalVariable(name: "qs", arg: 2, scope: !718, file: !1, line: 190, type: !90)
!786 = !DILocalVariable(name: "nq", arg: 3, scope: !718, file: !1, line: 190, type: !6)
!787 = !DILocalVariable(name: "qt", arg: 4, scope: !718, file: !1, line: 190, type: !721)
!788 = !DILocalVariable(name: "forward", arg: 5, scope: !718, file: !1, line: 191, type: !5)
!789 = !DILocalVariable(name: "subgraph", arg: 6, scope: !718, file: !1, line: 191, type: !722)
!790 = !DILocalVariable(name: "i", scope: !718, file: !1, line: 193, type: !6)
!791 = !DILocalVariable(name: "tick", scope: !718, file: !1, line: 193, type: !6)
!792 = !DILocalVariable(name: "v", scope: !718, file: !1, line: 193, type: !6)
!793 = !DILocalVariable(name: "comp", scope: !718, file: !1, line: 193, type: !6)
!794 = !DILocalVariable(name: "top", scope: !718, file: !1, line: 193, type: !6)
!795 = !DILocalVariable(name: "e", scope: !718, file: !1, line: 194, type: !23)
!796 = !DILocalVariable(name: "stack", scope: !718, file: !1, line: 195, type: !89)
!797 = !DILocalVariable(name: "bi", scope: !718, file: !1, line: 196, type: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !726, line: 218, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 203, size: 256, elements: !800)
!800 = !{!801, !802, !803, !804}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !799, file: !726, line: 206, baseType: !729, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !799, file: !726, line: 209, baseType: !729, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !799, file: !726, line: 212, baseType: !47, size: 32, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !799, file: !726, line: 217, baseType: !739, size: 64, offset: 192)
!805 = !DILocalVariable(name: "av", scope: !718, file: !1, line: 197, type: !47)
!806 = !DILocation(line: 0, scope: !718)
!807 = !DILocation(line: 195, column: 31, scope: !718)
!808 = !DILocation(line: 196, column: 3, scope: !718)
!809 = !DILocation(line: 197, column: 3, scope: !718)
!810 = !DILocation(line: 199, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !718, file: !1, line: 199, column: 7)
!812 = !DILocation(line: 199, column: 7, scope: !718)
!813 = !DILocation(line: 0, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 210, column: 2)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 209, column: 7)
!816 = distinct !DILexicalBlock(scope: !817, file: !1, line: 209, column: 7)
!817 = distinct !DILexicalBlock(scope: !811, file: !1, line: 208, column: 5)
!818 = !DILocation(line: 209, column: 7, scope: !816)
!819 = !DILocation(line: 201, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 201, column: 7)
!821 = distinct !DILexicalBlock(scope: !811, file: !1, line: 200, column: 5)
!822 = !DILocation(line: 0, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 202, column: 2)
!824 = distinct !DILexicalBlock(scope: !820, file: !1, line: 201, column: 7)
!825 = !DILocation(line: 201, column: 7, scope: !824)
!826 = !DILocation(line: 203, column: 7, scope: !823)
!827 = !DILocation(line: 203, column: 16, scope: !823)
!828 = !DILocation(line: 203, column: 4, scope: !823)
!829 = !DILocation(line: 203, column: 20, scope: !823)
!830 = !DILocation(line: 203, column: 30, scope: !823)
!831 = !DILocation(line: 204, column: 7, scope: !823)
!832 = !DILocation(line: 204, column: 16, scope: !823)
!833 = !DILocation(line: 204, column: 4, scope: !823)
!834 = !DILocation(line: 204, column: 20, scope: !823)
!835 = !DILocation(line: 204, column: 25, scope: !823)
!836 = distinct !{!836, !819, !837}
!837 = !DILocation(line: 205, column: 2, scope: !820)
!838 = !DILocation(line: 0, scope: !816)
!839 = !DILocation(line: 209, column: 26, scope: !815)
!840 = !DILocation(line: 209, column: 21, scope: !815)
!841 = !DILocation(line: 211, column: 7, scope: !814)
!842 = !DILocation(line: 211, column: 19, scope: !814)
!843 = !DILocation(line: 211, column: 29, scope: !814)
!844 = !DILocation(line: 212, column: 7, scope: !814)
!845 = !DILocation(line: 212, column: 19, scope: !814)
!846 = !DILocation(line: 212, column: 24, scope: !814)
!847 = !DILocation(line: 209, column: 39, scope: !815)
!848 = !DILocation(line: 209, column: 7, scope: !815)
!849 = distinct !{!849, !818, !850}
!850 = !DILocation(line: 213, column: 2, scope: !816)
!851 = !DILocation(line: 216, column: 8, scope: !852)
!852 = distinct !DILexicalBlock(scope: !718, file: !1, line: 216, column: 3)
!853 = !DILocation(line: 0, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !1, line: 219, column: 11)
!855 = distinct !DILexicalBlock(scope: !856, file: !1, line: 217, column: 5)
!856 = distinct !DILexicalBlock(scope: !852, file: !1, line: 216, column: 3)
!857 = !DILocation(line: 0, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 238, column: 12)
!859 = distinct !DILexicalBlock(scope: !860, file: !1, line: 237, column: 6)
!860 = distinct !DILexicalBlock(scope: !861, file: !1, line: 236, column: 8)
!861 = distinct !DILexicalBlock(scope: !855, file: !1, line: 227, column: 2)
!862 = !DILocation(line: 0, scope: !852)
!863 = !DILocation(line: 193, column: 10, scope: !718)
!864 = !DILocation(line: 193, column: 23, scope: !718)
!865 = !DILocation(line: 216, column: 17, scope: !856)
!866 = !DILocation(line: 216, column: 3, scope: !852)
!867 = !DILocation(line: 218, column: 11, scope: !855)
!868 = !DILocation(line: 219, column: 14, scope: !854)
!869 = !DILocation(line: 219, column: 11, scope: !854)
!870 = !DILocation(line: 219, column: 26, scope: !854)
!871 = !DILocation(line: 219, column: 31, scope: !854)
!872 = !DILocation(line: 219, column: 11, scope: !855)
!873 = !DILocation(line: 222, column: 38, scope: !855)
!874 = !DILocation(line: 222, column: 22, scope: !855)
!875 = !DILocation(line: 222, column: 32, scope: !855)
!876 = !DILocation(line: 223, column: 11, scope: !855)
!877 = !DILocation(line: 226, column: 7, scope: !855)
!878 = !DILocation(line: 0, scope: !855)
!879 = !DILocation(line: 228, column: 4, scope: !861)
!880 = !DILocation(line: 230, column: 15, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !1, line: 230, column: 12)
!882 = distinct !DILexicalBlock(scope: !861, file: !1, line: 229, column: 6)
!883 = !DILocation(line: 230, column: 24, scope: !881)
!884 = !DILocation(line: 230, column: 12, scope: !881)
!885 = !DILocation(line: 230, column: 52, scope: !881)
!886 = !DILocation(line: 231, column: 5, scope: !881)
!887 = !DILocation(line: 230, column: 12, scope: !882)
!888 = !DILocation(line: 233, column: 12, scope: !882)
!889 = distinct !{!889, !879, !890}
!890 = !DILocation(line: 234, column: 6, scope: !861)
!891 = !DILocation(line: 251, column: 13, scope: !861)
!892 = !DILocation(line: 251, column: 4, scope: !861)
!893 = !DILocation(line: 251, column: 17, scope: !861)
!894 = !DILocation(line: 252, column: 8, scope: !861)
!895 = !DILocation(line: 253, column: 8, scope: !861)
!896 = !DILocation(line: 254, column: 7, scope: !861)
!897 = !DILocation(line: 254, column: 4, scope: !861)
!898 = !DILocation(line: 254, column: 19, scope: !861)
!899 = !DILocation(line: 254, column: 29, scope: !861)
!900 = distinct !{!900, !877, !901}
!901 = !DILocation(line: 255, column: 2, scope: !855)
!902 = !DILocation(line: 245, column: 18, scope: !859)
!903 = !DILocation(line: 245, column: 12, scope: !859)
!904 = !DILocation(line: 246, column: 12, scope: !859)
!905 = !DILocation(line: 247, column: 12, scope: !859)
!906 = !DILocation(line: 248, column: 8, scope: !859)
!907 = !DILocation(line: 240, column: 34, scope: !859)
!908 = !DILocation(line: 240, column: 11, scope: !859)
!909 = !DILocation(line: 240, column: 8, scope: !859)
!910 = !DILocation(line: 240, column: 23, scope: !859)
!911 = !DILocation(line: 240, column: 28, scope: !859)
!912 = !DILocation(line: 242, column: 13, scope: !913)
!913 = distinct !DILexicalBlock(scope: !859, file: !1, line: 242, column: 12)
!914 = !DILocation(line: 242, column: 12, scope: !859)
!915 = !DILocation(line: 216, column: 24, scope: !856)
!916 = !DILocation(line: 239, column: 3, scope: !858)
!917 = !DILocation(line: 216, column: 3, scope: !856)
!918 = distinct !{!918, !866, !919}
!919 = !DILocation(line: 256, column: 5, scope: !852)
!920 = !DILocation(line: 258, column: 3, scope: !718)
!921 = !DILocation(line: 261, column: 1, scope: !718)
!922 = !DILocation(line: 260, column: 3, scope: !718)
!923 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !726, file: !726, line: 224, type: !924, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !931)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !926, !927, !47, !930}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !723, line: 48, baseType: !928)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!931 = !{!932, !933, !934, !935}
!932 = !DILocalVariable(name: "bi", arg: 1, scope: !923, file: !726, line: 224, type: !926)
!933 = !DILocalVariable(name: "map", arg: 2, scope: !923, file: !726, line: 224, type: !927)
!934 = !DILocalVariable(name: "start_bit", arg: 3, scope: !923, file: !726, line: 225, type: !47)
!935 = !DILocalVariable(name: "bit_no", arg: 4, scope: !923, file: !726, line: 225, type: !930)
!936 = !DILocation(line: 0, scope: !923)
!937 = !DILocation(line: 227, column: 19, scope: !923)
!938 = !DILocation(line: 227, column: 12, scope: !923)
!939 = !DILocation(line: 228, column: 7, scope: !923)
!940 = !DILocation(line: 228, column: 12, scope: !923)
!941 = !DILocation(line: 0, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !726, line: 233, column: 11)
!943 = distinct !DILexicalBlock(scope: !923, file: !726, line: 232, column: 5)
!944 = !DILocation(line: 231, column: 3, scope: !923)
!945 = !DILocation(line: 233, column: 12, scope: !942)
!946 = !DILocation(line: 233, column: 11, scope: !943)
!947 = !DILocation(line: 235, column: 13, scope: !948)
!948 = distinct !DILexicalBlock(scope: !942, file: !726, line: 234, column: 2)
!949 = !DILocation(line: 236, column: 4, scope: !948)
!950 = !DILocation(line: 239, column: 11, scope: !943)
!951 = distinct !{!951, !944, !952}
!952 = !DILocation(line: 242, column: 5, scope: !923)
!953 = !DILocation(line: 245, column: 11, scope: !954)
!954 = distinct !DILexicalBlock(scope: !923, file: !726, line: 245, column: 7)
!955 = !DILocation(line: 245, column: 17, scope: !954)
!956 = !DILocation(line: 245, column: 22, scope: !954)
!957 = !DILocation(line: 245, column: 7, scope: !923)
!958 = !DILocation(line: 246, column: 27, scope: !954)
!959 = !DILocation(line: 246, column: 32, scope: !954)
!960 = !DILocation(line: 246, column: 5, scope: !954)
!961 = !DILocation(line: 249, column: 7, scope: !923)
!962 = !DILocation(line: 249, column: 15, scope: !923)
!963 = !DILocation(line: 250, column: 14, scope: !923)
!964 = !DILocation(line: 251, column: 7, scope: !923)
!965 = !DILocation(line: 251, column: 12, scope: !923)
!966 = !DILocation(line: 257, column: 16, scope: !923)
!967 = !DILocation(line: 257, column: 13, scope: !923)
!968 = !DILocation(line: 259, column: 11, scope: !923)
!969 = !DILocation(line: 260, column: 1, scope: !923)
!970 = distinct !DISubprogram(name: "bmp_iter_set", scope: !726, file: !726, line: 393, type: !971, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{!5, !926, !930}
!973 = !{!974, !975, !976}
!974 = !DILocalVariable(name: "bi", arg: 1, scope: !970, file: !726, line: 393, type: !926)
!975 = !DILocalVariable(name: "bit_no", arg: 2, scope: !970, file: !726, line: 393, type: !930)
!976 = !DILabel(scope: !977, name: "next_bit", file: !726, line: 398)
!977 = distinct !DILexicalBlock(scope: !978, file: !726, line: 397, column: 5)
!978 = distinct !DILexicalBlock(scope: !970, file: !726, line: 396, column: 7)
!979 = !DILocation(line: 0, scope: !970)
!980 = !DILocation(line: 396, column: 11, scope: !978)
!981 = !DILocation(line: 396, column: 7, scope: !978)
!982 = !DILocation(line: 396, column: 7, scope: !970)
!983 = !DILocation(line: 419, column: 15, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !726, line: 418, column: 2)
!985 = distinct !DILexicalBlock(scope: !970, file: !726, line: 415, column: 5)
!986 = !DILocation(line: 399, column: 7, scope: !977)
!987 = !DILocation(line: 398, column: 5, scope: !977)
!988 = !DILocation(line: 399, column: 20, scope: !977)
!989 = !DILocation(line: 399, column: 25, scope: !977)
!990 = !DILocation(line: 399, column: 14, scope: !977)
!991 = !DILocation(line: 401, column: 13, scope: !992)
!992 = distinct !DILexicalBlock(scope: !977, file: !726, line: 400, column: 2)
!993 = !DILocation(line: 402, column: 12, scope: !992)
!994 = distinct !{!994, !986, !995}
!995 = !DILocation(line: 403, column: 2, scope: !977)
!996 = !DILocation(line: 410, column: 15, scope: !970)
!997 = !DILocation(line: 410, column: 42, scope: !970)
!998 = !DILocation(line: 411, column: 26, scope: !970)
!999 = !DILocation(line: 410, column: 11, scope: !970)
!1000 = !DILocation(line: 412, column: 7, scope: !970)
!1001 = !DILocation(line: 412, column: 14, scope: !970)
!1002 = !DILocation(line: 0, scope: !985)
!1003 = !DILocation(line: 414, column: 3, scope: !970)
!1004 = !DILocation(line: 417, column: 7, scope: !985)
!1005 = !DILocation(line: 417, column: 18, scope: !985)
!1006 = !DILocation(line: 417, column: 26, scope: !985)
!1007 = !DILocation(line: 419, column: 13, scope: !984)
!1008 = !DILocation(line: 420, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !984, file: !726, line: 420, column: 8)
!1010 = !DILocation(line: 420, column: 8, scope: !984)
!1011 = !DILocation(line: 422, column: 12, scope: !984)
!1012 = !DILocation(line: 423, column: 15, scope: !984)
!1013 = distinct !{!1013, !1004, !1014}
!1014 = !DILocation(line: 424, column: 2, scope: !985)
!1015 = !DILocation(line: 427, column: 28, scope: !985)
!1016 = !DILocation(line: 427, column: 16, scope: !985)
!1017 = !DILocation(line: 428, column: 12, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !985, file: !726, line: 428, column: 11)
!1019 = !DILocation(line: 428, column: 11, scope: !985)
!1020 = !DILocation(line: 430, column: 27, scope: !985)
!1021 = !DILocation(line: 430, column: 32, scope: !985)
!1022 = !DILocation(line: 430, column: 15, scope: !985)
!1023 = !DILocation(line: 431, column: 19, scope: !985)
!1024 = distinct !{!1024, !1003, !1025}
!1025 = !DILocation(line: 432, column: 5, scope: !970)
!1026 = !DILocation(line: 433, column: 1, scope: !970)
!1027 = distinct !DISubprogram(name: "bmp_iter_next", scope: !726, file: !726, line: 382, type: !1028, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !926, !930}
!1030 = !{!1031, !1032}
!1031 = !DILocalVariable(name: "bi", arg: 1, scope: !1027, file: !726, line: 382, type: !926)
!1032 = !DILocalVariable(name: "bit_no", arg: 2, scope: !1027, file: !726, line: 382, type: !930)
!1033 = !DILocation(line: 0, scope: !1027)
!1034 = !DILocation(line: 384, column: 7, scope: !1027)
!1035 = !DILocation(line: 384, column: 12, scope: !1027)
!1036 = !DILocation(line: 385, column: 11, scope: !1027)
!1037 = !DILocation(line: 386, column: 1, scope: !1027)
!1038 = distinct !DISubprogram(name: "dfs_fst_edge", scope: !1, file: !1, line: 165, type: !1039, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!23, !13, !6, !5, !722}
!1041 = !{!1042, !1043, !1044, !1045, !1046}
!1042 = !DILocalVariable(name: "g", arg: 1, scope: !1038, file: !1, line: 165, type: !13)
!1043 = !DILocalVariable(name: "v", arg: 2, scope: !1038, file: !1, line: 165, type: !6)
!1044 = !DILocalVariable(name: "forward", arg: 3, scope: !1038, file: !1, line: 165, type: !5)
!1045 = !DILocalVariable(name: "subgraph", arg: 4, scope: !1038, file: !1, line: 165, type: !722)
!1046 = !DILocalVariable(name: "e", scope: !1038, file: !1, line: 167, type: !23)
!1047 = !DILocation(line: 0, scope: !1038)
!1048 = !DILocation(line: 169, column: 8, scope: !1038)
!1049 = !DILocation(line: 169, column: 33, scope: !1038)
!1050 = !DILocation(line: 169, column: 55, scope: !1038)
!1051 = !DILocation(line: 170, column: 10, scope: !1038)
!1052 = !DILocation(line: 170, column: 3, scope: !1038)
!1053 = distinct !DISubprogram(name: "dfs_edge_dest", scope: !1, file: !1, line: 133, type: !1054, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!6, !23, !5}
!1056 = !{!1057, !1058}
!1057 = !DILocalVariable(name: "e", arg: 1, scope: !1053, file: !1, line: 133, type: !23)
!1058 = !DILocalVariable(name: "forward", arg: 2, scope: !1053, file: !1, line: 133, type: !5)
!1059 = !DILocation(line: 0, scope: !1053)
!1060 = !DILocation(line: 135, column: 10, scope: !1053)
!1061 = !DILocation(line: 135, column: 23, scope: !1053)
!1062 = !DILocation(line: 135, column: 33, scope: !1053)
!1063 = !DILocation(line: 135, column: 3, scope: !1053)
!1064 = distinct !DISubprogram(name: "dfs_next_edge", scope: !1, file: !1, line: 177, type: !1065, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!23, !23, !5, !722}
!1067 = !{!1068, !1069, !1070}
!1068 = !DILocalVariable(name: "e", arg: 1, scope: !1064, file: !1, line: 177, type: !23)
!1069 = !DILocalVariable(name: "forward", arg: 2, scope: !1064, file: !1, line: 177, type: !5)
!1070 = !DILocalVariable(name: "subgraph", arg: 3, scope: !1064, file: !1, line: 177, type: !722)
!1071 = !DILocation(line: 0, scope: !1064)
!1072 = !DILocation(line: 179, column: 28, scope: !1064)
!1073 = !DILocation(line: 179, column: 41, scope: !1064)
!1074 = !DILocation(line: 179, column: 56, scope: !1064)
!1075 = !DILocation(line: 179, column: 10, scope: !1064)
!1076 = !DILocation(line: 179, column: 3, scope: !1064)
!1077 = distinct !DISubprogram(name: "VEC_int_heap_safe_push", scope: !93, file: !93, line: 32, type: !1078, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1081)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!90, !721, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1081 = !{!1082, !1083}
!1082 = !DILocalVariable(name: "vec_", arg: 1, scope: !1077, file: !93, line: 32, type: !721)
!1083 = !DILocalVariable(name: "obj_", arg: 2, scope: !1077, file: !93, line: 32, type: !1080)
!1084 = !DILocation(line: 0, scope: !1077)
!1085 = !DILocation(line: 32, column: 1, scope: !1077)
!1086 = distinct !DISubprogram(name: "dfs_edge_src", scope: !1, file: !1, line: 124, type: !1054, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1087)
!1087 = !{!1088, !1089}
!1088 = !DILocalVariable(name: "e", arg: 1, scope: !1086, file: !1, line: 124, type: !23)
!1089 = !DILocalVariable(name: "forward", arg: 2, scope: !1086, file: !1, line: 124, type: !5)
!1090 = !DILocation(line: 0, scope: !1086)
!1091 = !DILocation(line: 126, column: 10, scope: !1086)
!1092 = !DILocation(line: 126, column: 23, scope: !1086)
!1093 = !DILocation(line: 126, column: 32, scope: !1086)
!1094 = !DILocation(line: 126, column: 3, scope: !1086)
!1095 = distinct !DISubprogram(name: "graphds_scc", scope: !1, file: !1, line: 275, type: !1096, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!6, !13, !722}
!1098 = !{!1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107}
!1099 = !DILocalVariable(name: "g", arg: 1, scope: !1095, file: !1, line: 275, type: !13)
!1100 = !DILocalVariable(name: "subgraph", arg: 2, scope: !1095, file: !1, line: 275, type: !722)
!1101 = !DILocalVariable(name: "queue", scope: !1095, file: !1, line: 277, type: !90)
!1102 = !DILocalVariable(name: "postorder", scope: !1095, file: !1, line: 278, type: !91)
!1103 = !DILocalVariable(name: "nq", scope: !1095, file: !1, line: 279, type: !6)
!1104 = !DILocalVariable(name: "i", scope: !1095, file: !1, line: 279, type: !6)
!1105 = !DILocalVariable(name: "comp", scope: !1095, file: !1, line: 279, type: !6)
!1106 = !DILocalVariable(name: "v", scope: !1095, file: !1, line: 280, type: !47)
!1107 = !DILocalVariable(name: "bi", scope: !1095, file: !1, line: 281, type: !798)
!1108 = !DILocation(line: 0, scope: !1095)
!1109 = !DILocation(line: 277, column: 16, scope: !1095)
!1110 = !DILocation(line: 278, column: 3, scope: !1095)
!1111 = !DILocation(line: 278, column: 20, scope: !1095)
!1112 = !DILocation(line: 280, column: 3, scope: !1095)
!1113 = !DILocation(line: 281, column: 3, scope: !1095)
!1114 = !DILocation(line: 283, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 283, column: 7)
!1116 = !DILocation(line: 283, column: 7, scope: !1095)
!1117 = !DILocation(line: 293, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 293, column: 7)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 292, column: 5)
!1120 = !DILocation(line: 286, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 286, column: 7)
!1122 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 284, column: 5)
!1123 = !DILocation(line: 0, scope: !1122)
!1124 = !DILocation(line: 286, column: 7, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 286, column: 7)
!1126 = !DILocation(line: 288, column: 18, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 287, column: 2)
!1128 = !DILocation(line: 288, column: 12, scope: !1127)
!1129 = !DILocation(line: 288, column: 4, scope: !1127)
!1130 = !DILocation(line: 288, column: 16, scope: !1127)
!1131 = distinct !{!1131, !1120, !1132}
!1132 = !DILocation(line: 289, column: 2, scope: !1121)
!1133 = !DILocation(line: 0, scope: !1118)
!1134 = !DILocation(line: 293, column: 26, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 293, column: 7)
!1136 = !DILocation(line: 293, column: 21, scope: !1135)
!1137 = !DILocation(line: 294, column: 2, scope: !1135)
!1138 = !DILocation(line: 294, column: 11, scope: !1135)
!1139 = !DILocation(line: 293, column: 39, scope: !1135)
!1140 = !DILocation(line: 293, column: 7, scope: !1135)
!1141 = distinct !{!1141, !1117, !1142}
!1142 = !DILocation(line: 294, column: 13, scope: !1118)
!1143 = !DILocation(line: 298, column: 3, scope: !1095)
!1144 = !DILocation(line: 0, scope: !1115)
!1145 = !DILocation(line: 299, column: 3, scope: !1095)
!1146 = !DILocation(line: 301, column: 8, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 301, column: 3)
!1148 = !DILocation(line: 0, scope: !1147)
!1149 = !DILocation(line: 301, column: 17, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 301, column: 3)
!1151 = !DILocation(line: 301, column: 3, scope: !1147)
!1152 = !DILocation(line: 302, column: 16, scope: !1150)
!1153 = !DILocation(line: 302, column: 5, scope: !1150)
!1154 = !DILocation(line: 302, column: 14, scope: !1150)
!1155 = !DILocation(line: 301, column: 24, scope: !1150)
!1156 = !DILocation(line: 301, column: 3, scope: !1150)
!1157 = distinct !{!1157, !1151, !1158}
!1158 = !DILocation(line: 302, column: 16, scope: !1147)
!1159 = !DILocation(line: 303, column: 10, scope: !1095)
!1160 = !DILocation(line: 305, column: 3, scope: !1095)
!1161 = !DILocation(line: 306, column: 3, scope: !1095)
!1162 = !DILocation(line: 309, column: 1, scope: !1095)
!1163 = !DILocation(line: 308, column: 3, scope: !1095)
!1164 = distinct !DISubprogram(name: "VEC_int_base_length", scope: !93, file: !93, line: 31, type: !1165, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1169)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!47, !1167}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!1169 = !{!1170}
!1170 = !DILocalVariable(name: "vec_", arg: 1, scope: !1164, file: !93, line: 31, type: !1167)
!1171 = !DILocation(line: 0, scope: !1164)
!1172 = !DILocation(line: 31, column: 1, scope: !1164)
!1173 = distinct !DISubprogram(name: "VEC_int_base_index", scope: !93, file: !93, line: 31, type: !1174, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!6, !1167, !47}
!1176 = !{!1177, !1178}
!1177 = !DILocalVariable(name: "vec_", arg: 1, scope: !1173, file: !93, line: 31, type: !1167)
!1178 = !DILocalVariable(name: "ix_", arg: 2, scope: !1173, file: !93, line: 31, type: !47)
!1179 = !DILocation(line: 0, scope: !1173)
!1180 = !DILocation(line: 31, column: 1, scope: !1173)
!1181 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !93, file: !93, line: 32, type: !1182, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !721}
!1184 = !{!1185}
!1185 = !DILocalVariable(name: "vec_", arg: 1, scope: !1181, file: !93, line: 32, type: !721)
!1186 = !DILocation(line: 0, scope: !1181)
!1187 = !DILocation(line: 32, column: 1, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1181, file: !93, line: 32, column: 1)
!1189 = !DILocation(line: 32, column: 1, scope: !1181)
!1190 = distinct !DISubprogram(name: "for_each_edge", scope: !1, file: !1, line: 314, type: !1191, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1197)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !13, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "graphds_edge_callback", file: !15, line: 61, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !13, !23}
!1197 = !{!1198, !1199, !1200, !1201}
!1198 = !DILocalVariable(name: "g", arg: 1, scope: !1190, file: !1, line: 314, type: !13)
!1199 = !DILocalVariable(name: "callback", arg: 2, scope: !1190, file: !1, line: 314, type: !1193)
!1200 = !DILocalVariable(name: "e", scope: !1190, file: !1, line: 316, type: !23)
!1201 = !DILocalVariable(name: "i", scope: !1190, file: !1, line: 317, type: !6)
!1202 = !DILocation(line: 0, scope: !1190)
!1203 = !DILocation(line: 0, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 319, column: 3)
!1205 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 319, column: 3)
!1206 = !DILocation(line: 0, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 320, column: 5)
!1208 = !DILocation(line: 319, column: 8, scope: !1205)
!1209 = !DILocation(line: 0, scope: !1205)
!1210 = !DILocation(line: 319, column: 22, scope: !1204)
!1211 = !DILocation(line: 319, column: 17, scope: !1204)
!1212 = !DILocation(line: 319, column: 3, scope: !1205)
!1213 = !DILocation(line: 320, column: 17, scope: !1207)
!1214 = !DILocation(line: 320, column: 29, scope: !1207)
!1215 = !DILocation(line: 320, column: 10, scope: !1207)
!1216 = !DILocation(line: 320, column: 5, scope: !1207)
!1217 = !DILocation(line: 321, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 320, column: 5)
!1219 = !DILocation(line: 320, column: 45, scope: !1218)
!1220 = !DILocation(line: 320, column: 5, scope: !1218)
!1221 = distinct !{!1221, !1216, !1222}
!1222 = !DILocation(line: 321, column: 21, scope: !1207)
!1223 = !DILocation(line: 319, column: 35, scope: !1204)
!1224 = !DILocation(line: 319, column: 3, scope: !1204)
!1225 = distinct !{!1225, !1212, !1226}
!1226 = !DILocation(line: 321, column: 21, scope: !1205)
!1227 = !DILocation(line: 322, column: 1, scope: !1190)
!1228 = distinct !DISubprogram(name: "free_graph", scope: !1, file: !1, line: 327, type: !1229, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1231)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !13}
!1231 = !{!1232, !1233, !1234, !1235, !1236}
!1232 = !DILocalVariable(name: "g", arg: 1, scope: !1228, file: !1, line: 327, type: !13)
!1233 = !DILocalVariable(name: "e", scope: !1228, file: !1, line: 329, type: !23)
!1234 = !DILocalVariable(name: "n", scope: !1228, file: !1, line: 329, type: !23)
!1235 = !DILocalVariable(name: "v", scope: !1228, file: !1, line: 330, type: !19)
!1236 = !DILocalVariable(name: "i", scope: !1228, file: !1, line: 331, type: !6)
!1237 = !DILocation(line: 0, scope: !1228)
!1238 = !DILocation(line: 0, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 333, column: 3)
!1240 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 333, column: 3)
!1241 = !DILocation(line: 333, column: 8, scope: !1240)
!1242 = !DILocation(line: 0, scope: !1240)
!1243 = !DILocation(line: 333, column: 22, scope: !1239)
!1244 = !DILocation(line: 333, column: 17, scope: !1239)
!1245 = !DILocation(line: 333, column: 3, scope: !1240)
!1246 = !DILocation(line: 336, column: 19, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 336, column: 7)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 334, column: 5)
!1249 = !DILocation(line: 336, column: 12, scope: !1247)
!1250 = !DILocation(line: 0, scope: !1247)
!1251 = !DILocation(line: 336, column: 7, scope: !1247)
!1252 = !DILocation(line: 338, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 337, column: 2)
!1254 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 336, column: 7)
!1255 = !DILocation(line: 339, column: 4, scope: !1253)
!1256 = !DILocation(line: 336, column: 7, scope: !1254)
!1257 = distinct !{!1257, !1251, !1258}
!1258 = !DILocation(line: 340, column: 2, scope: !1247)
!1259 = !DILocation(line: 333, column: 35, scope: !1239)
!1260 = !DILocation(line: 333, column: 3, scope: !1239)
!1261 = distinct !{!1261, !1245, !1262}
!1262 = !DILocation(line: 341, column: 5, scope: !1240)
!1263 = !DILocation(line: 342, column: 9, scope: !1228)
!1264 = !DILocation(line: 342, column: 3, scope: !1228)
!1265 = !DILocation(line: 343, column: 9, scope: !1228)
!1266 = !DILocation(line: 343, column: 3, scope: !1228)
!1267 = !DILocation(line: 344, column: 1, scope: !1228)
!1268 = distinct !DISubprogram(name: "graphds_domtree", scope: !1, file: !1, line: 401, type: !1269, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !13, !6, !90, !90, !90}
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284}
!1272 = !DILocalVariable(name: "g", arg: 1, scope: !1268, file: !1, line: 401, type: !13)
!1273 = !DILocalVariable(name: "entry", arg: 2, scope: !1268, file: !1, line: 401, type: !6)
!1274 = !DILocalVariable(name: "parent", arg: 3, scope: !1268, file: !1, line: 402, type: !90)
!1275 = !DILocalVariable(name: "son", arg: 4, scope: !1268, file: !1, line: 402, type: !90)
!1276 = !DILocalVariable(name: "brother", arg: 5, scope: !1268, file: !1, line: 402, type: !90)
!1277 = !DILocalVariable(name: "postorder", scope: !1268, file: !1, line: 404, type: !91)
!1278 = !DILocalVariable(name: "marks", scope: !1268, file: !1, line: 405, type: !90)
!1279 = !DILocalVariable(name: "mark", scope: !1268, file: !1, line: 406, type: !6)
!1280 = !DILocalVariable(name: "i", scope: !1268, file: !1, line: 406, type: !6)
!1281 = !DILocalVariable(name: "v", scope: !1268, file: !1, line: 406, type: !6)
!1282 = !DILocalVariable(name: "idom", scope: !1268, file: !1, line: 406, type: !6)
!1283 = !DILocalVariable(name: "changed", scope: !1268, file: !1, line: 407, type: !5)
!1284 = !DILocalVariable(name: "e", scope: !1268, file: !1, line: 408, type: !23)
!1285 = !DILocation(line: 0, scope: !1268)
!1286 = !DILocation(line: 404, column: 3, scope: !1268)
!1287 = !DILocation(line: 404, column: 20, scope: !1268)
!1288 = !DILocation(line: 405, column: 16, scope: !1268)
!1289 = !DILocation(line: 428, column: 8, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 428, column: 3)
!1291 = !DILocation(line: 0, scope: !1290)
!1292 = !DILocation(line: 428, column: 22, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 428, column: 3)
!1294 = !DILocation(line: 428, column: 17, scope: !1293)
!1295 = !DILocation(line: 428, column: 3, scope: !1290)
!1296 = !DILocation(line: 430, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 429, column: 5)
!1298 = !DILocation(line: 430, column: 17, scope: !1297)
!1299 = !DILocation(line: 431, column: 7, scope: !1297)
!1300 = !DILocation(line: 431, column: 14, scope: !1297)
!1301 = !DILocation(line: 432, column: 7, scope: !1297)
!1302 = !DILocation(line: 432, column: 18, scope: !1297)
!1303 = !DILocation(line: 428, column: 35, scope: !1293)
!1304 = !DILocation(line: 428, column: 3, scope: !1293)
!1305 = distinct !{!1305, !1295, !1306}
!1306 = !DILocation(line: 433, column: 5, scope: !1290)
!1307 = !DILocation(line: 434, column: 3, scope: !1268)
!1308 = !DILocation(line: 435, column: 3, scope: !1268)
!1309 = !DILocation(line: 436, column: 3, scope: !1268)
!1310 = !DILocation(line: 0, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 446, column: 4)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 443, column: 2)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 442, column: 7)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 442, column: 7)
!1315 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 439, column: 5)
!1316 = !DILocation(line: 438, column: 3, scope: !1268)
!1317 = !DILocation(line: 406, column: 7, scope: !1268)
!1318 = !DILocation(line: 0, scope: !1315)
!1319 = !DILocation(line: 442, column: 19, scope: !1314)
!1320 = !DILocation(line: 442, column: 30, scope: !1314)
!1321 = !DILocation(line: 442, column: 12, scope: !1314)
!1322 = !DILocation(line: 0, scope: !1314)
!1323 = !DILocation(line: 442, column: 37, scope: !1313)
!1324 = !DILocation(line: 442, column: 7, scope: !1314)
!1325 = distinct !{!1325, !1316, !1326}
!1326 = !DILocation(line: 461, column: 5, scope: !1268)
!1327 = !DILocation(line: 444, column: 8, scope: !1312)
!1328 = !DILocation(line: 446, column: 16, scope: !1311)
!1329 = !DILocation(line: 446, column: 13, scope: !1311)
!1330 = !DILocation(line: 446, column: 28, scope: !1311)
!1331 = !DILocation(line: 446, column: 9, scope: !1311)
!1332 = !DILocation(line: 445, column: 9, scope: !1312)
!1333 = !DILocation(line: 446, column: 4, scope: !1311)
!1334 = !DILocation(line: 448, column: 15, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 448, column: 12)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 447, column: 6)
!1337 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 446, column: 4)
!1338 = !DILocation(line: 448, column: 22, scope: !1335)
!1339 = !DILocation(line: 448, column: 19, scope: !1335)
!1340 = !DILocation(line: 449, column: 5, scope: !1335)
!1341 = !DILocation(line: 449, column: 8, scope: !1335)
!1342 = !DILocation(line: 449, column: 23, scope: !1335)
!1343 = !DILocation(line: 448, column: 12, scope: !1336)
!1344 = !DILocation(line: 452, column: 58, scope: !1336)
!1345 = !DILocation(line: 452, column: 15, scope: !1336)
!1346 = !DILocation(line: 453, column: 6, scope: !1336)
!1347 = !DILocation(line: 0, scope: !1312)
!1348 = !DILocation(line: 446, column: 44, scope: !1337)
!1349 = !DILocation(line: 446, column: 4, scope: !1337)
!1350 = distinct !{!1350, !1333, !1351}
!1351 = !DILocation(line: 453, column: 6, scope: !1311)
!1352 = !DILocation(line: 455, column: 16, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 455, column: 8)
!1354 = !DILocation(line: 455, column: 13, scope: !1353)
!1355 = !DILocation(line: 455, column: 8, scope: !1312)
!1356 = !DILocation(line: 457, column: 18, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 456, column: 6)
!1358 = !DILocation(line: 459, column: 6, scope: !1357)
!1359 = !DILocation(line: 442, column: 44, scope: !1313)
!1360 = !DILocation(line: 442, column: 7, scope: !1313)
!1361 = distinct !{!1361, !1324, !1362}
!1362 = !DILocation(line: 460, column: 2, scope: !1314)
!1363 = !DILocation(line: 463, column: 3, scope: !1268)
!1364 = !DILocation(line: 464, column: 3, scope: !1268)
!1365 = !DILocation(line: 466, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 466, column: 3)
!1367 = !DILocation(line: 0, scope: !1366)
!1368 = !DILocation(line: 466, column: 22, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 466, column: 3)
!1370 = !DILocation(line: 466, column: 17, scope: !1369)
!1371 = !DILocation(line: 466, column: 3, scope: !1366)
!1372 = !DILocation(line: 467, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 467, column: 9)
!1374 = !DILocation(line: 467, column: 19, scope: !1373)
!1375 = !DILocation(line: 467, column: 9, scope: !1369)
!1376 = !DILocation(line: 469, column: 15, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 468, column: 7)
!1378 = !DILocation(line: 469, column: 2, scope: !1377)
!1379 = !DILocation(line: 469, column: 13, scope: !1377)
!1380 = !DILocation(line: 470, column: 6, scope: !1377)
!1381 = !DILocation(line: 470, column: 2, scope: !1377)
!1382 = !DILocation(line: 470, column: 17, scope: !1377)
!1383 = !DILocation(line: 471, column: 7, scope: !1377)
!1384 = !DILocation(line: 466, column: 35, scope: !1369)
!1385 = !DILocation(line: 466, column: 3, scope: !1369)
!1386 = distinct !{!1386, !1371, !1387}
!1387 = !DILocation(line: 471, column: 7, scope: !1366)
!1388 = !DILocation(line: 472, column: 1, scope: !1268)
!1389 = distinct !DISubprogram(name: "tree_nca", scope: !1, file: !1, line: 351, type: !1390, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!6, !6, !6, !90, !90, !6}
!1392 = !{!1393, !1394, !1395, !1396, !1397}
!1393 = !DILocalVariable(name: "x", arg: 1, scope: !1389, file: !1, line: 351, type: !6)
!1394 = !DILocalVariable(name: "y", arg: 2, scope: !1389, file: !1, line: 351, type: !6)
!1395 = !DILocalVariable(name: "parent", arg: 3, scope: !1389, file: !1, line: 351, type: !90)
!1396 = !DILocalVariable(name: "marks", arg: 4, scope: !1389, file: !1, line: 351, type: !90)
!1397 = !DILocalVariable(name: "mark", arg: 5, scope: !1389, file: !1, line: 351, type: !6)
!1398 = !DILocation(line: 0, scope: !1389)
!1399 = !DILocation(line: 353, column: 9, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 353, column: 7)
!1401 = !DILocation(line: 353, column: 20, scope: !1400)
!1402 = !DILocation(line: 353, column: 15, scope: !1400)
!1403 = !DILocation(line: 358, column: 3, scope: !1389)
!1404 = !DILocation(line: 358, column: 12, scope: !1389)
!1405 = !DILocation(line: 359, column: 3, scope: !1389)
!1406 = !DILocation(line: 359, column: 12, scope: !1389)
!1407 = !DILocation(line: 361, column: 3, scope: !1389)
!1408 = !DILocation(line: 363, column: 11, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 362, column: 5)
!1410 = !DILocation(line: 364, column: 13, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 364, column: 11)
!1412 = !DILocation(line: 364, column: 11, scope: !1409)
!1413 = !DILocation(line: 366, column: 11, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 366, column: 11)
!1415 = !DILocation(line: 366, column: 20, scope: !1414)
!1416 = !DILocation(line: 366, column: 11, scope: !1409)
!1417 = !DILocation(line: 368, column: 16, scope: !1409)
!1418 = !DILocation(line: 370, column: 11, scope: !1409)
!1419 = !DILocation(line: 371, column: 13, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 371, column: 11)
!1421 = !DILocation(line: 371, column: 11, scope: !1409)
!1422 = !DILocation(line: 373, column: 11, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 373, column: 11)
!1424 = !DILocation(line: 373, column: 20, scope: !1423)
!1425 = !DILocation(line: 373, column: 11, scope: !1409)
!1426 = !DILocation(line: 375, column: 16, scope: !1409)
!1427 = distinct !{!1427, !1407, !1428}
!1428 = !DILocation(line: 376, column: 5, scope: !1389)
!1429 = !DILocation(line: 381, column: 7, scope: !1389)
!1430 = !DILocation(line: 383, column: 12, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 383, column: 7)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 382, column: 5)
!1433 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 381, column: 7)
!1434 = !DILocation(line: 0, scope: !1431)
!1435 = !DILocation(line: 383, column: 27, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 383, column: 7)
!1437 = !DILocation(line: 383, column: 36, scope: !1436)
!1438 = !DILocation(line: 383, column: 7, scope: !1431)
!1439 = !DILocation(line: 383, column: 7, scope: !1436)
!1440 = distinct !{!1440, !1438, !1441}
!1441 = !DILocation(line: 384, column: 2, scope: !1431)
!1442 = !DILocation(line: 390, column: 12, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 390, column: 7)
!1444 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 389, column: 5)
!1445 = !DILocation(line: 0, scope: !1443)
!1446 = !DILocation(line: 390, column: 27, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 390, column: 7)
!1448 = !DILocation(line: 390, column: 36, scope: !1447)
!1449 = !DILocation(line: 390, column: 7, scope: !1443)
!1450 = !DILocation(line: 390, column: 7, scope: !1447)
!1451 = distinct !{!1451, !1449, !1452}
!1452 = !DILocation(line: 391, column: 2, scope: !1443)
!1453 = !DILocation(line: 395, column: 1, scope: !1389)
!1454 = distinct !DISubprogram(name: "foll_in_subgraph", scope: !1, file: !1, line: 142, type: !1065, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1455)
!1455 = !{!1456, !1457, !1458, !1459}
!1456 = !DILocalVariable(name: "e", arg: 1, scope: !1454, file: !1, line: 142, type: !23)
!1457 = !DILocalVariable(name: "forward", arg: 2, scope: !1454, file: !1, line: 142, type: !5)
!1458 = !DILocalVariable(name: "subgraph", arg: 3, scope: !1454, file: !1, line: 142, type: !722)
!1459 = !DILocalVariable(name: "d", scope: !1454, file: !1, line: 144, type: !6)
!1460 = !DILocation(line: 0, scope: !1454)
!1461 = !DILocation(line: 146, column: 8, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 146, column: 7)
!1463 = !DILocation(line: 146, column: 7, scope: !1454)
!1464 = !DILocation(line: 0, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 150, column: 5)
!1466 = !DILocation(line: 149, column: 3, scope: !1454)
!1467 = !DILocation(line: 151, column: 11, scope: !1465)
!1468 = !DILocation(line: 152, column: 11, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 152, column: 11)
!1470 = !DILocation(line: 152, column: 11, scope: !1465)
!1471 = !DILocation(line: 155, column: 39, scope: !1465)
!1472 = !DILocation(line: 155, column: 11, scope: !1465)
!1473 = distinct !{!1473, !1466, !1474}
!1474 = !DILocation(line: 156, column: 5, scope: !1454)
!1475 = !DILocation(line: 159, column: 1, scope: !1454)
!1476 = !DILocation(line: 155, column: 24, scope: !1465)
!1477 = distinct !DISubprogram(name: "VEC_int_heap_reserve", scope: !93, file: !93, line: 32, type: !1478, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!6, !721, !6}
!1480 = !{!1481, !1482, !1483}
!1481 = !DILocalVariable(name: "vec_", arg: 1, scope: !1477, file: !93, line: 32, type: !721)
!1482 = !DILocalVariable(name: "alloc_", arg: 2, scope: !1477, file: !93, line: 32, type: !6)
!1483 = !DILocalVariable(name: "extend", scope: !1477, file: !93, line: 32, type: !6)
!1484 = !DILocation(line: 0, scope: !1477)
!1485 = !DILocation(line: 32, column: 1, scope: !1477)
!1486 = !DILocation(line: 32, column: 1, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1477, file: !93, line: 32, column: 1)
!1488 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !93, file: !93, line: 31, type: !1489, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1492)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!90, !1491, !6}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1492 = !{!1493, !1494, !1495}
!1493 = !DILocalVariable(name: "vec_", arg: 1, scope: !1488, file: !93, line: 31, type: !1491)
!1494 = !DILocalVariable(name: "obj_", arg: 2, scope: !1488, file: !93, line: 31, type: !6)
!1495 = !DILocalVariable(name: "slot_", scope: !1488, file: !93, line: 31, type: !90)
!1496 = !DILocation(line: 0, scope: !1488)
!1497 = !DILocation(line: 31, column: 1, scope: !1488)
!1498 = distinct !DISubprogram(name: "VEC_int_base_space", scope: !93, file: !93, line: 31, type: !1499, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1501)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!6, !1491, !6}
!1501 = !{!1502, !1503}
!1502 = !DILocalVariable(name: "vec_", arg: 1, scope: !1498, file: !93, line: 31, type: !1491)
!1503 = !DILocalVariable(name: "alloc_", arg: 2, scope: !1498, file: !93, line: 31, type: !6)
!1504 = !DILocation(line: 0, scope: !1498)
!1505 = !DILocation(line: 31, column: 1, scope: !1498)
