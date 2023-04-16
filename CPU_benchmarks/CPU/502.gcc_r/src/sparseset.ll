; ModuleID = 'sparseset.bc'
source_filename = "sparseset.c"
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
%struct.sparseset_def = type { i32*, i32*, i32, i32, i32, i8, i8, [2 x i32] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [12 x i8] c"sparseset.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !35 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !48, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !49, metadata !DIExpression()), !dbg !50
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !51
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !52
  ret i32 %call, !dbg !53
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !54 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !57
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !58
  ret i32 %call, !dbg !59
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !60 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !123, metadata !DIExpression()), !dbg !124
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !125
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !125
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !125
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !125
  %cmp = icmp uge i8* %0, %1, !dbg !125
  %conv1 = zext i1 %cmp to i64, !dbg !125
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !125
  %tobool = icmp eq i64 %expval, 0, !dbg !125
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !125

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !125
  br label %cond.end, !dbg !125

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !125
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !125
  %2 = load i8, i8* %0, align 1, !dbg !125
  %conv3 = zext i8 %2 to i32, !dbg !125
  br label %cond.end, !dbg !125

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !125
  ret i32 %cond, !dbg !126
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !127 {
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !133 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !134
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !134
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !134
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !134
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !134
  %cmp = icmp uge i8* %1, %2, !dbg !134
  %conv1 = zext i1 %cmp to i64, !dbg !134
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !134
  %tobool = icmp eq i64 %expval, 0, !dbg !134
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !134

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !134
  br label %cond.end, !dbg !134

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !134
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !134
  %3 = load i8, i8* %1, align 1, !dbg !134
  %conv3 = zext i8 %3 to i32, !dbg !134
  br label %cond.end, !dbg !134

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !134
  ret i32 %cond, !dbg !135
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !136 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !142
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !143
  ret i32 %call, !dbg !144
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !145 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !149, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !150, metadata !DIExpression()), !dbg !151
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !152
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !152
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !152
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !152
  %cmp = icmp uge i8* %0, %1, !dbg !152
  %conv1 = zext i1 %cmp to i64, !dbg !152
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !152
  %tobool = icmp eq i64 %expval, 0, !dbg !152
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !152

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !152
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !152
  br label %cond.end, !dbg !152

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !152
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !152
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !152
  store i8 %conv2, i8* %0, align 1, !dbg !152
  %conv6 = and i32 %__c, 255, !dbg !152
  br label %cond.end, !dbg !152

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !152
  ret i32 %cond, !dbg !153
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !154 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !157, metadata !DIExpression()), !dbg !158
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !159
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !159
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !159
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !159
  %cmp = icmp uge i8* %0, %1, !dbg !159
  %conv1 = zext i1 %cmp to i64, !dbg !159
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !159
  %tobool = icmp eq i64 %expval, 0, !dbg !159
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !159

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !159
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !159
  br label %cond.end, !dbg !159

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !159
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !159
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !159
  store i8 %conv2, i8* %0, align 1, !dbg !159
  %conv6 = and i32 %__c, 255, !dbg !159
  br label %cond.end, !dbg !159

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !159
  ret i32 %cond, !dbg !160
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !165
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !165
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !165
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !165
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !165
  %cmp = icmp uge i8* %1, %2, !dbg !165
  %conv1 = zext i1 %cmp to i64, !dbg !165
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !165
  %tobool = icmp eq i64 %expval, 0, !dbg !165
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !165

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !165
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !165
  br label %cond.end, !dbg !165

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !165
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !165
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !165
  store i8 %conv4, i8* %1, align 1, !dbg !165
  %conv6 = and i32 %__c, 255, !dbg !165
  br label %cond.end, !dbg !165

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !165
  ret i32 %cond, !dbg !166
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !167 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !173, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i64* %__n, metadata !174, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !175, metadata !DIExpression()), !dbg !176
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !177
  ret i64 %call, !dbg !178
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !179 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !181, metadata !DIExpression()), !dbg !182
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !183
  %0 = load i32, i32* %_flags, align 8, !dbg !183
  %and = lshr i32 %0, 4, !dbg !183
  %and.lobit = and i32 %and, 1, !dbg !183
  ret i32 %and.lobit, !dbg !184
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !185 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !187, metadata !DIExpression()), !dbg !188
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !189
  %0 = load i32, i32* %_flags, align 8, !dbg !189
  %and = lshr i32 %0, 5, !dbg !189
  %and.lobit = and i32 %and, 1, !dbg !189
  ret i32 %and.lobit, !dbg !190
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !191 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !194, metadata !DIExpression()), !dbg !195
  %__c.off = add i32 %__c, 128, !dbg !196
  %0 = icmp ult i32 %__c.off, 384, !dbg !196
  br i1 %0, label %cond.true, label %cond.end, !dbg !196

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !197
  %1 = load i32*, i32** %call, align 8, !dbg !198
  %idxprom = sext i32 %__c to i64, !dbg !199
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !199
  %2 = load i32, i32* %arrayidx, align 4, !dbg !199
  br label %cond.end, !dbg !200

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !200
  ret i32 %cond, !dbg !201
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !202 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !204, metadata !DIExpression()), !dbg !205
  %__c.off = add i32 %__c, 128, !dbg !206
  %0 = icmp ult i32 %__c.off, 384, !dbg !206
  br i1 %0, label %cond.true, label %cond.end, !dbg !206

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !207
  %1 = load i32*, i32** %call, align 8, !dbg !208
  %idxprom = sext i32 %__c to i64, !dbg !209
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !209
  %2 = load i32, i32* %arrayidx, align 4, !dbg !209
  br label %cond.end, !dbg !210

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !210
  ret i32 %cond, !dbg !211
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !212 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !217, metadata !DIExpression()), !dbg !218
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !219
  %conv = trunc i64 %call to i32, !dbg !220
  ret i32 %conv, !dbg !221
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !222 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !226, metadata !DIExpression()), !dbg !227
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !228
  ret i64 %call, !dbg !229
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !230 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !235, metadata !DIExpression()), !dbg !236
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !237
  ret i64 %call, !dbg !238
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !239 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !250, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i8* %__base, metadata !251, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !252, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i64 %__size, metadata !253, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !254, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i64 0, metadata !255, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !256, metadata !DIExpression()), !dbg !260
  br label %while.cond, !dbg !261

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !262
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !260
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !256, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !255, metadata !DIExpression()), !dbg !260
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !263
  br i1 %cmp, label %while.body, label %cleanup, !dbg !261

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !264
  %div = lshr i64 %add, 1, !dbg !266
  call void @llvm.dbg.value(metadata i64 %div, metadata !257, metadata !DIExpression()), !dbg !260
  %mul = mul i64 %div, %__size, !dbg !267
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !268
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !258, metadata !DIExpression()), !dbg !260
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !269
  call void @llvm.dbg.value(metadata i32 %call, metadata !259, metadata !DIExpression()), !dbg !260
  %cmp1 = icmp slt i32 %call, 0, !dbg !270
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !272

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !273
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !275

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !276
  call void @llvm.dbg.value(metadata i64 %add4, metadata !255, metadata !DIExpression()), !dbg !260
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !260
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !260
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !256, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !255, metadata !DIExpression()), !dbg !260
  br label %while.cond, !dbg !261, !llvm.loop !277

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !260
  ret i8* %retval.0, !dbg !279
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !280 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !286, metadata !DIExpression()), !dbg !287
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !288
  ret double %call, !dbg !289
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !290 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !299, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !300, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata i32 %base, metadata !301, metadata !DIExpression()), !dbg !302
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !303
  ret i64 %call, !dbg !304
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !305 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !311, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i32 %base, metadata !313, metadata !DIExpression()), !dbg !314
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !315
  ret i64 %call, !dbg !316
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !317 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !328, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !329, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 %base, metadata !330, metadata !DIExpression()), !dbg !331
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !332
  ret i64 %call, !dbg !333
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !334 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !338, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !339, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i32 %base, metadata !340, metadata !DIExpression()), !dbg !341
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !342
  ret i64 %call, !dbg !343
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !344 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !386, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !387, metadata !DIExpression()), !dbg !388
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !389
  ret i32 %call, !dbg !390
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !393, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !394, metadata !DIExpression()), !dbg !395
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !396
  ret i32 %call, !dbg !397
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !398 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !402, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !403, metadata !DIExpression()), !dbg !404
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !405
  ret i32 %call, !dbg !406
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !407 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !411, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !412, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !413, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !414, metadata !DIExpression()), !dbg !415
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !416
  ret i32 %call, !dbg !417
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !418 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !422, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !423, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !424, metadata !DIExpression()), !dbg !425
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !424, metadata !DIExpression(DW_OP_deref)), !dbg !425
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !426
  ret i32 %call, !dbg !427
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !428 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !432, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i8* %__path, metadata !433, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !434, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !435, metadata !DIExpression()), !dbg !436
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !435, metadata !DIExpression(DW_OP_deref)), !dbg !436
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !437
  ret i32 %call, !dbg !438
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !439 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !463, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !464, metadata !DIExpression()), !dbg !465
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !466
  ret i32 %call, !dbg !467
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !468 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !470, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !471, metadata !DIExpression()), !dbg !472
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !473
  ret i32 %call, !dbg !474
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !475 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !479, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !480, metadata !DIExpression()), !dbg !481
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !482
  ret i32 %call, !dbg !483
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !484 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !488, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !489, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !490, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !491, metadata !DIExpression()), !dbg !492
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !493
  ret i32 %call, !dbg !494
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.sparseset_def* @sparseset_alloc(i32 %n_elms) local_unnamed_addr #3 !dbg !495 {
entry:
  call void @llvm.dbg.value(metadata i32 %n_elms, metadata !499, metadata !DIExpression()), !dbg !502
  %sub = shl i32 %n_elms, 3, !dbg !503
  %add = add i32 %sub, 32, !dbg !504
  call void @llvm.dbg.value(metadata i32 %add, metadata !500, metadata !DIExpression()), !dbg !502
  %conv3 = zext i32 %add to i64, !dbg !505
  %call = tail call i8* @xcalloc(i64 1, i64 %conv3) #5, !dbg !506
  %0 = bitcast i8* %call to %struct.sparseset_def*, !dbg !507
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %0, metadata !501, metadata !DIExpression()), !dbg !502
  %elms = getelementptr inbounds i8, i8* %call, i64 32, !dbg !508
  %1 = bitcast i8* %call to i8**, !dbg !509
  store i8* %elms, i8** %1, align 8, !dbg !509
  %2 = bitcast i8* %elms to [2 x i32]*, !dbg !510
  %idxprom = zext i32 %n_elms to i64, !dbg !511
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %idxprom, !dbg !511
  %sparse = getelementptr inbounds i8, i8* %call, i64 8, !dbg !512
  %3 = bitcast i8* %sparse to i32**, !dbg !512
  store i32* %arrayidx5, i32** %3, align 8, !dbg !513
  %size = getelementptr inbounds i8, i8* %call, i64 20, !dbg !514
  %4 = bitcast i8* %size to i32*, !dbg !514
  store i32 %n_elms, i32* %4, align 4, !dbg !515
  tail call fastcc void @sparseset_clear(%struct.sparseset_def* %0) #6, !dbg !516
  ret %struct.sparseset_def* %0, !dbg !517
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_clear(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !518 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !522, metadata !DIExpression()), !dbg !523
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !524
  store i32 0, i32* %members, align 8, !dbg !525
  %iterating = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 6, !dbg !526
  store i8 0, i8* %iterating, align 1, !dbg !527
  ret void, !dbg !528
}

; Function Attrs: nounwind uwtable
define dso_local void @sparseset_clear_bit(%struct.sparseset_def* %s, i32 %e) local_unnamed_addr #3 !dbg !529 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !533, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32 %e, metadata !534, metadata !DIExpression()), !dbg !540
  %call = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %s, i32 %e) #6, !dbg !541
  %tobool = icmp eq i8 %call, 0, !dbg !541
  br i1 %tobool, label %if.end12, label %if.then, !dbg !542

if.then:                                          ; preds = %entry
  %sparse = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 1, !dbg !543
  %0 = load i32*, i32** %sparse, align 8, !dbg !543
  %idxprom = zext i32 %e to i64, !dbg !544
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !544
  %1 = load i32, i32* %arrayidx, align 4, !dbg !544
  call void @llvm.dbg.value(metadata i32 %1, metadata !535, metadata !DIExpression()), !dbg !545
  %iter1 = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !546
  %2 = load i32, i32* %iter1, align 8, !dbg !546
  call void @llvm.dbg.value(metadata i32 %2, metadata !538, metadata !DIExpression()), !dbg !545
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !547
  %3 = load i32, i32* %members, align 8, !dbg !547
  %sub = add i32 %3, -1, !dbg !548
  call void @llvm.dbg.value(metadata i32 %sub, metadata !539, metadata !DIExpression()), !dbg !545
  %iterating = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 6, !dbg !549
  %4 = load i8, i8* %iterating, align 1, !dbg !549
  %tobool2 = icmp ne i8 %4, 0, !dbg !551
  %cmp = icmp ule i32 %1, %2, !dbg !552
  %or.cond = and i1 %tobool2, %cmp, !dbg !553
  br i1 %or.cond, label %if.then4, label %if.end8, !dbg !553

if.then4:                                         ; preds = %if.then
  %cmp5 = icmp ult i32 %1, %2, !dbg !554
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !557

if.then7:                                         ; preds = %if.then4
  tail call fastcc void @sparseset_swap(%struct.sparseset_def* %s, i32 %1, i32 %2) #6, !dbg !558
  call void @llvm.dbg.value(metadata i32 %2, metadata !535, metadata !DIExpression()), !dbg !545
  br label %if.end, !dbg !560

if.end:                                           ; preds = %if.then7, %if.then4
  %idx.0 = phi i32 [ %2, %if.then7 ], [ %1, %if.then4 ], !dbg !545
  call void @llvm.dbg.value(metadata i32 %idx.0, metadata !535, metadata !DIExpression()), !dbg !545
  %iter_inc = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 5, !dbg !561
  store i8 0, i8* %iter_inc, align 4, !dbg !562
  br label %if.end8, !dbg !563

if.end8:                                          ; preds = %if.end, %if.then
  %idx.1 = phi i32 [ %idx.0, %if.end ], [ %1, %if.then ], !dbg !545
  call void @llvm.dbg.value(metadata i32 %idx.1, metadata !535, metadata !DIExpression()), !dbg !545
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !564
  %5 = load i32*, i32** %dense, align 8, !dbg !564
  %idxprom9 = zext i32 %sub to i64, !dbg !565
  %arrayidx10 = getelementptr inbounds i32, i32* %5, i64 %idxprom9, !dbg !565
  %6 = load i32, i32* %arrayidx10, align 4, !dbg !565
  tail call fastcc void @sparseset_insert_bit(%struct.sparseset_def* %s, i32 %6, i32 %idx.1) #6, !dbg !566
  store i32 %sub, i32* %members, align 8, !dbg !567
  br label %if.end12, !dbg !568

if.end12:                                         ; preds = %entry, %if.end8
  ret void, !dbg !569
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %s, i32 %e) unnamed_addr #0 !dbg !570 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !574, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata i32 %e, metadata !575, metadata !DIExpression()), !dbg !577
  %size = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 3, !dbg !578
  %0 = load i32, i32* %size, align 4, !dbg !578
  %cmp = icmp ugt i32 %0, %e, !dbg !578
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !578

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !578
  br label %cond.end, !dbg !578

cond.end:                                         ; preds = %entry, %cond.true
  %sparse = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 1, !dbg !579
  %1 = load i32*, i32** %sparse, align 8, !dbg !579
  %idxprom = zext i32 %e to i64, !dbg !580
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !580
  %2 = load i32, i32* %arrayidx, align 4, !dbg !580
  call void @llvm.dbg.value(metadata i32 %2, metadata !576, metadata !DIExpression()), !dbg !577
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !581
  %3 = load i32, i32* %members, align 8, !dbg !581
  %cmp1 = icmp ult i32 %2, %3, !dbg !582
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !583

land.rhs:                                         ; preds = %cond.end
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !584
  %4 = load i32*, i32** %dense, align 8, !dbg !584
  %idxprom2 = zext i32 %2 to i64, !dbg !585
  %arrayidx3 = getelementptr inbounds i32, i32* %4, i64 %idxprom2, !dbg !585
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !585
  %cmp4 = icmp eq i32 %5, %e, !dbg !586
  %phitmp = zext i1 %cmp4 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %6 = phi i8 [ 0, %cond.end ], [ %phitmp, %land.rhs ]
  ret i8 %6, !dbg !587
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_swap(%struct.sparseset_def* %s, i32 %idx1, i32 %idx2) unnamed_addr #0 !dbg !588 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !592, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %idx1, metadata !593, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %idx2, metadata !594, metadata !DIExpression()), !dbg !596
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !597
  %0 = load i32*, i32** %dense, align 8, !dbg !597
  %idxprom = zext i32 %idx2 to i64, !dbg !598
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !598
  %1 = load i32, i32* %arrayidx, align 4, !dbg !598
  call void @llvm.dbg.value(metadata i32 %1, metadata !595, metadata !DIExpression()), !dbg !596
  %idxprom2 = zext i32 %idx1 to i64, !dbg !599
  %arrayidx3 = getelementptr inbounds i32, i32* %0, i64 %idxprom2, !dbg !599
  %2 = load i32, i32* %arrayidx3, align 4, !dbg !599
  tail call fastcc void @sparseset_insert_bit(%struct.sparseset_def* %s, i32 %2, i32 %idx2) #6, !dbg !600
  tail call fastcc void @sparseset_insert_bit(%struct.sparseset_def* %s, i32 %1, i32 %idx1) #6, !dbg !601
  ret void, !dbg !602
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_insert_bit(%struct.sparseset_def* %s, i32 %e, i32 %idx) unnamed_addr #0 !dbg !603 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !605, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.value(metadata i32 %e, metadata !606, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.value(metadata i32 %idx, metadata !607, metadata !DIExpression()), !dbg !608
  %sparse = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 1, !dbg !609
  %0 = load i32*, i32** %sparse, align 8, !dbg !609
  %idxprom = zext i32 %e to i64, !dbg !610
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !610
  store i32 %idx, i32* %arrayidx, align 4, !dbg !611
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !612
  %1 = load i32*, i32** %dense, align 8, !dbg !612
  %idxprom1 = zext i32 %idx to i64, !dbg !613
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 %idxprom1, !dbg !613
  store i32 %e, i32* %arrayidx2, align 4, !dbg !614
  ret void, !dbg !615
}

; Function Attrs: nounwind uwtable
define dso_local void @sparseset_copy(%struct.sparseset_def* %d, %struct.sparseset_def* %s) local_unnamed_addr #3 !dbg !616 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %d, metadata !620, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !621, metadata !DIExpression()), !dbg !623
  %cmp = icmp eq %struct.sparseset_def* %d, %s, !dbg !624
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !626

if.end:                                           ; preds = %entry
  tail call fastcc void @sparseset_clear(%struct.sparseset_def* %d) #6, !dbg !627
  call void @llvm.dbg.value(metadata i32 0, metadata !622, metadata !DIExpression()), !dbg !623
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !628
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !628
  br label %for.cond, !dbg !631

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ], !dbg !632
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !622, metadata !DIExpression()), !dbg !623
  %0 = load i32, i32* %members, align 8, !dbg !633
  %1 = zext i32 %0 to i64, !dbg !634
  %cmp1 = icmp ult i64 %indvars.iv, %1, !dbg !634
  br i1 %cmp1, label %for.body, label %for.end, !dbg !635

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %dense, align 8, !dbg !636
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %indvars.iv, !dbg !637
  %3 = load i32, i32* %arrayidx, align 4, !dbg !637
  %4 = trunc i64 %indvars.iv to i32, !dbg !638
  tail call fastcc void @sparseset_insert_bit(%struct.sparseset_def* %d, i32 %3, i32 %4) #6, !dbg !638
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !639
  br label %for.cond, !dbg !640, !llvm.loop !641

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i32 [ %0, %for.cond ], !dbg !633
  %members3 = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %d, i64 0, i32 2, !dbg !643
  store i32 %.lcssa, i32* %members3, align 8, !dbg !644
  br label %cleanup.cont, !dbg !645

cleanup.cont:                                     ; preds = %for.end, %entry
  ret void, !dbg !645
}

; Function Attrs: nounwind uwtable
define dso_local void @sparseset_and(%struct.sparseset_def* %d, %struct.sparseset_def* %a, %struct.sparseset_def* %b) local_unnamed_addr #3 !dbg !646 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %d, metadata !650, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %a, metadata !651, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %b, metadata !652, metadata !DIExpression()), !dbg !660
  %cmp = icmp eq %struct.sparseset_def* %a, %b, !dbg !661
  br i1 %cmp, label %if.then, label %if.end3, !dbg !663

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq %struct.sparseset_def* %d, %a, !dbg !664
  br i1 %cmp1, label %cleanup.cont, label %if.then2, !dbg !667

if.then2:                                         ; preds = %if.then
  tail call void @sparseset_copy(%struct.sparseset_def* %d, %struct.sparseset_def* %a) #6, !dbg !668
  br label %cleanup.cont, !dbg !668

if.end3:                                          ; preds = %entry
  %cmp4 = icmp eq %struct.sparseset_def* %d, %a, !dbg !669
  %cmp5 = icmp eq %struct.sparseset_def* %d, %b, !dbg !670
  %or.cond = or i1 %cmp4, %cmp5, !dbg !671
  br i1 %or.cond, label %if.then6, label %if.else, !dbg !671

if.then6:                                         ; preds = %if.end3
  %b.a = select i1 %cmp4, %struct.sparseset_def* %b, %struct.sparseset_def* %a, !dbg !672
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %b.a, metadata !654, metadata !DIExpression()), !dbg !673
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %d) #6, !dbg !674
  br label %for.cond, !dbg !674

for.cond:                                         ; preds = %for.inc, %if.then6
  %e.0 = phi i32 [ undef, %if.then6 ], [ %e.1, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !653, metadata !DIExpression()), !dbg !660
  %call = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %d) #6, !dbg !676
  %tobool = icmp eq i8 %call, 0, !dbg !676
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !676

land.rhs:                                         ; preds = %for.cond
  %call8 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %d) #6, !dbg !676
  call void @llvm.dbg.value(metadata i32 %call8, metadata !653, metadata !DIExpression()), !dbg !660
  br label %land.end

land.end:                                         ; preds = %for.cond, %land.rhs
  %e.1 = phi i32 [ %call8, %land.rhs ], [ %e.0, %for.cond ]
  %0 = phi i1 [ true, %land.rhs ], [ false, %for.cond ], !dbg !678
  call void @llvm.dbg.value(metadata i32 %e.1, metadata !653, metadata !DIExpression()), !dbg !660
  br i1 %0, label %for.body, label %cleanup.cont.loopexit, !dbg !674

for.body:                                         ; preds = %land.end
  %call10 = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %b.a, i32 %e.1) #6, !dbg !679
  %tobool11 = icmp eq i8 %call10, 0, !dbg !679
  br i1 %tobool11, label %if.then12, label %for.inc, !dbg !681

if.then12:                                        ; preds = %for.body
  tail call void @sparseset_clear_bit(%struct.sparseset_def* %d, i32 %e.1) #6, !dbg !682
  br label %for.inc, !dbg !682

for.inc:                                          ; preds = %for.body, %if.then12
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %d) #6, !dbg !676
  br label %for.cond, !dbg !676, !llvm.loop !683

if.else:                                          ; preds = %if.end3
  %call14 = tail call fastcc i32 @sparseset_cardinality(%struct.sparseset_def* %a) #6, !dbg !685
  %call15 = tail call fastcc i32 @sparseset_cardinality(%struct.sparseset_def* %b) #6, !dbg !687
  %cmp16 = icmp ult i32 %call14, %call15, !dbg !688
  %a.b = select i1 %cmp16, %struct.sparseset_def* %a, %struct.sparseset_def* %b
  %b.a1 = select i1 %cmp16, %struct.sparseset_def* %b, %struct.sparseset_def* %a
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %b.a1, metadata !659, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %a.b, metadata !657, metadata !DIExpression()), !dbg !689
  tail call fastcc void @sparseset_clear(%struct.sparseset_def* %d) #6, !dbg !690
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %a.b) #6, !dbg !691
  br label %for.cond21, !dbg !691

for.cond21:                                       ; preds = %for.inc36, %if.else
  %e.2 = phi i32 [ undef, %if.else ], [ %e.3, %for.inc36 ]
  call void @llvm.dbg.value(metadata i32 %e.2, metadata !653, metadata !DIExpression()), !dbg !660
  %call22 = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %a.b) #6, !dbg !693
  %tobool24 = icmp eq i8 %call22, 0, !dbg !693
  br i1 %tobool24, label %land.end30, label %land.rhs25, !dbg !693

land.rhs25:                                       ; preds = %for.cond21
  %call26 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %a.b) #6, !dbg !693
  call void @llvm.dbg.value(metadata i32 %call26, metadata !653, metadata !DIExpression()), !dbg !660
  br label %land.end30

land.end30:                                       ; preds = %for.cond21, %land.rhs25
  %e.3 = phi i32 [ %call26, %land.rhs25 ], [ %e.2, %for.cond21 ]
  %1 = phi i1 [ true, %land.rhs25 ], [ false, %for.cond21 ], !dbg !695
  call void @llvm.dbg.value(metadata i32 %e.3, metadata !653, metadata !DIExpression()), !dbg !660
  br i1 %1, label %for.body31, label %cleanup.cont.loopexit2, !dbg !691

for.body31:                                       ; preds = %land.end30
  %call32 = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %b.a1, i32 %e.3) #6, !dbg !696
  %tobool33 = icmp eq i8 %call32, 0, !dbg !696
  br i1 %tobool33, label %for.inc36, label %if.then34, !dbg !698

if.then34:                                        ; preds = %for.body31
  tail call fastcc void @sparseset_set_bit(%struct.sparseset_def* %d, i32 %e.3) #6, !dbg !699
  br label %for.inc36, !dbg !699

for.inc36:                                        ; preds = %for.body31, %if.then34
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %a.b) #6, !dbg !693
  br label %for.cond21, !dbg !693, !llvm.loop !700

cleanup.cont.loopexit:                            ; preds = %land.end
  br label %cleanup.cont, !dbg !702

cleanup.cont.loopexit2:                           ; preds = %land.end30
  br label %cleanup.cont, !dbg !702

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit2, %cleanup.cont.loopexit, %if.then, %if.then2
  ret void, !dbg !702
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_iter_init(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !703 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !705, metadata !DIExpression()), !dbg !706
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !707
  store i32 0, i32* %iter, align 8, !dbg !708
  %iter_inc = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 5, !dbg !709
  store i8 1, i8* %iter_inc, align 4, !dbg !710
  %iterating = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 6, !dbg !711
  store i8 1, i8* %iterating, align 1, !dbg !712
  ret void, !dbg !713
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !714 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !718, metadata !DIExpression()), !dbg !719
  %iterating = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 6, !dbg !720
  %0 = load i8, i8* %iterating, align 1, !dbg !720
  %tobool = icmp eq i8 %0, 0, !dbg !722
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !723

land.lhs.true:                                    ; preds = %entry
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !724
  %1 = load i32, i32* %iter, align 8, !dbg !724
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !725
  %2 = load i32, i32* %members, align 8, !dbg !725
  %cmp = icmp ult i32 %1, %2, !dbg !726
  br i1 %cmp, label %return, label %if.else, !dbg !727

if.else:                                          ; preds = %entry, %land.lhs.true
  store i8 0, i8* %iterating, align 1, !dbg !728
  br label %return, !dbg !729

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true ], !dbg !730
  ret i8 %retval.0, !dbg !731
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !732 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !736, metadata !DIExpression()), !dbg !737
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !738
  %0 = load i32*, i32** %dense, align 8, !dbg !738
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !739
  %1 = load i32, i32* %iter, align 8, !dbg !739
  %idxprom = zext i32 %1 to i64, !dbg !740
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !740
  %2 = load i32, i32* %arrayidx, align 4, !dbg !740
  ret i32 %2, !dbg !741
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_iter_next(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !742 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !744, metadata !DIExpression()), !dbg !745
  %iter_inc = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 5, !dbg !746
  %0 = load i8, i8* %iter_inc, align 4, !dbg !746
  %conv = zext i8 %0 to i32, !dbg !747
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !748
  %1 = load i32, i32* %iter, align 8, !dbg !749
  %add = add i32 %1, %conv, !dbg !749
  store i32 %add, i32* %iter, align 8, !dbg !749
  store i8 1, i8* %iter_inc, align 4, !dbg !750
  ret void, !dbg !751
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @sparseset_cardinality(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !752 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !754, metadata !DIExpression()), !dbg !755
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !756
  %0 = load i32, i32* %members, align 8, !dbg !756
  ret i32 %0, !dbg !757
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_set_bit(%struct.sparseset_def* %s, i32 %e) unnamed_addr #0 !dbg !758 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !760, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i32 %e, metadata !761, metadata !DIExpression()), !dbg !762
  %call = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %s, i32 %e) #6, !dbg !763
  %tobool = icmp eq i8 %call, 0, !dbg !763
  br i1 %tobool, label %if.then, label %if.end, !dbg !765

if.then:                                          ; preds = %entry
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !766
  %0 = load i32, i32* %members, align 8, !dbg !767
  %inc = add i32 %0, 1, !dbg !767
  store i32 %inc, i32* %members, align 8, !dbg !767
  tail call fastcc void @sparseset_insert_bit(%struct.sparseset_def* %s, i32 %e, i32 %0) #6, !dbg !768
  br label %if.end, !dbg !768

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !769
}

; Function Attrs: nounwind uwtable
define dso_local void @sparseset_and_compl(%struct.sparseset_def* %d, %struct.sparseset_def* %a, %struct.sparseset_def* %b) local_unnamed_addr #3 !dbg !770 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %d, metadata !772, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %a, metadata !773, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %b, metadata !774, metadata !DIExpression()), !dbg !776
  %cmp = icmp eq %struct.sparseset_def* %a, %b, !dbg !777
  br i1 %cmp, label %if.then, label %if.end, !dbg !779

if.then:                                          ; preds = %entry
  tail call fastcc void @sparseset_clear(%struct.sparseset_def* %d) #6, !dbg !780
  br label %cleanup.cont, !dbg !782

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.sparseset_def* %d, %b, !dbg !783
  br i1 %cmp1, label %cond.true, label %cond.end, !dbg !783

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !783
  br label %cond.end, !dbg !783

cond.end:                                         ; preds = %if.end, %cond.true
  %cmp2 = icmp eq %struct.sparseset_def* %d, %a, !dbg !784
  br i1 %cmp2, label %if.then3, label %if.else28, !dbg !786

if.then3:                                         ; preds = %cond.end
  %call = tail call fastcc i32 @sparseset_cardinality(%struct.sparseset_def* %a) #6, !dbg !787
  %call4 = tail call fastcc i32 @sparseset_cardinality(%struct.sparseset_def* %b) #6, !dbg !790
  %cmp5 = icmp ult i32 %call, %call4, !dbg !791
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !792

if.then6:                                         ; preds = %if.then3
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %a) #6, !dbg !793
  br label %for.cond, !dbg !793

for.cond:                                         ; preds = %for.inc, %if.then6
  %e.0 = phi i32 [ undef, %if.then6 ], [ %e.1, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !775, metadata !DIExpression()), !dbg !776
  %call7 = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %a) #6, !dbg !796
  %tobool = icmp eq i8 %call7, 0, !dbg !796
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !796

land.rhs:                                         ; preds = %for.cond
  %call8 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %a) #6, !dbg !796
  call void @llvm.dbg.value(metadata i32 %call8, metadata !775, metadata !DIExpression()), !dbg !776
  br label %land.end

land.end:                                         ; preds = %for.cond, %land.rhs
  %e.1 = phi i32 [ %call8, %land.rhs ], [ %e.0, %for.cond ]
  %0 = phi i1 [ true, %land.rhs ], [ false, %for.cond ], !dbg !798
  call void @llvm.dbg.value(metadata i32 %e.1, metadata !775, metadata !DIExpression()), !dbg !776
  br i1 %0, label %for.body, label %cleanup.cont.loopexit, !dbg !793

for.body:                                         ; preds = %land.end
  %call10 = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %b, i32 %e.1) #6, !dbg !799
  %tobool11 = icmp eq i8 %call10, 0, !dbg !799
  br i1 %tobool11, label %for.inc, label %if.then12, !dbg !801

if.then12:                                        ; preds = %for.body
  tail call void @sparseset_clear_bit(%struct.sparseset_def* %a, i32 %e.1) #6, !dbg !802
  br label %for.inc, !dbg !802

for.inc:                                          ; preds = %for.body, %if.then12
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %a) #6, !dbg !796
  br label %for.cond, !dbg !796, !llvm.loop !803

if.else:                                          ; preds = %if.then3
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %b) #6, !dbg !805
  br label %for.cond14, !dbg !805

for.cond14:                                       ; preds = %for.body24, %if.else
  %e.2 = phi i32 [ undef, %if.else ], [ %e.3, %for.body24 ]
  call void @llvm.dbg.value(metadata i32 %e.2, metadata !775, metadata !DIExpression()), !dbg !776
  %call15 = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %b) #6, !dbg !808
  %tobool17 = icmp eq i8 %call15, 0, !dbg !808
  br i1 %tobool17, label %land.end23, label %land.rhs18, !dbg !808

land.rhs18:                                       ; preds = %for.cond14
  %call19 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %b) #6, !dbg !808
  call void @llvm.dbg.value(metadata i32 %call19, metadata !775, metadata !DIExpression()), !dbg !776
  br label %land.end23

land.end23:                                       ; preds = %for.cond14, %land.rhs18
  %e.3 = phi i32 [ %call19, %land.rhs18 ], [ %e.2, %for.cond14 ]
  %1 = phi i1 [ true, %land.rhs18 ], [ false, %for.cond14 ], !dbg !810
  call void @llvm.dbg.value(metadata i32 %e.3, metadata !775, metadata !DIExpression()), !dbg !776
  br i1 %1, label %for.body24, label %cleanup.cont.loopexit1, !dbg !805

for.body24:                                       ; preds = %land.end23
  tail call void @sparseset_clear_bit(%struct.sparseset_def* %a, i32 %e.3) #6, !dbg !811
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %b) #6, !dbg !808
  br label %for.cond14, !dbg !808, !llvm.loop !812

if.else28:                                        ; preds = %cond.end
  tail call fastcc void @sparseset_clear(%struct.sparseset_def* %d) #6, !dbg !814
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %a) #6, !dbg !816
  br label %for.cond29, !dbg !816

for.cond29:                                       ; preds = %for.inc44, %if.else28
  %e.4 = phi i32 [ undef, %if.else28 ], [ %e.5, %for.inc44 ]
  call void @llvm.dbg.value(metadata i32 %e.4, metadata !775, metadata !DIExpression()), !dbg !776
  %call30 = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %a) #6, !dbg !818
  %tobool32 = icmp eq i8 %call30, 0, !dbg !818
  br i1 %tobool32, label %land.end38, label %land.rhs33, !dbg !818

land.rhs33:                                       ; preds = %for.cond29
  %call34 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %a) #6, !dbg !818
  call void @llvm.dbg.value(metadata i32 %call34, metadata !775, metadata !DIExpression()), !dbg !776
  br label %land.end38

land.end38:                                       ; preds = %for.cond29, %land.rhs33
  %e.5 = phi i32 [ %call34, %land.rhs33 ], [ %e.4, %for.cond29 ]
  %2 = phi i1 [ true, %land.rhs33 ], [ false, %for.cond29 ], !dbg !820
  call void @llvm.dbg.value(metadata i32 %e.5, metadata !775, metadata !DIExpression()), !dbg !776
  br i1 %2, label %for.body39, label %cleanup.cont.loopexit2, !dbg !816

for.body39:                                       ; preds = %land.end38
  %call40 = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %b, i32 %e.5) #6, !dbg !821
  %tobool41 = icmp eq i8 %call40, 0, !dbg !821
  br i1 %tobool41, label %if.then42, label %for.inc44, !dbg !823

if.then42:                                        ; preds = %for.body39
  tail call fastcc void @sparseset_set_bit(%struct.sparseset_def* %d, i32 %e.5) #6, !dbg !824
  br label %for.inc44, !dbg !824

for.inc44:                                        ; preds = %for.body39, %if.then42
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %a) #6, !dbg !818
  br label %for.cond29, !dbg !818, !llvm.loop !825

cleanup.cont.loopexit:                            ; preds = %land.end
  br label %cleanup.cont, !dbg !827

cleanup.cont.loopexit1:                           ; preds = %land.end23
  br label %cleanup.cont, !dbg !827

cleanup.cont.loopexit2:                           ; preds = %land.end38
  br label %cleanup.cont, !dbg !827

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit2, %cleanup.cont.loopexit1, %cleanup.cont.loopexit, %if.then
  ret void, !dbg !827
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sparseset_ior(%struct.sparseset_def* %d, %struct.sparseset_def* %a, %struct.sparseset_def* %b) local_unnamed_addr #3 !dbg !828 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %d, metadata !830, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %a, metadata !831, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %b, metadata !832, metadata !DIExpression()), !dbg !834
  %cmp = icmp eq %struct.sparseset_def* %a, %b, !dbg !835
  br i1 %cmp, label %if.then, label %if.else, !dbg !837

if.then:                                          ; preds = %entry
  tail call void @sparseset_copy(%struct.sparseset_def* %d, %struct.sparseset_def* %a) #6, !dbg !838
  br label %if.end23, !dbg !838

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq %struct.sparseset_def* %d, %b, !dbg !839
  br i1 %cmp1, label %if.then2, label %if.else5, !dbg !841

if.then2:                                         ; preds = %if.else
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %a) #6, !dbg !842
  br label %for.cond, !dbg !842

for.cond:                                         ; preds = %for.body, %if.then2
  %e.0 = phi i32 [ undef, %if.then2 ], [ %e.1, %for.body ]
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !833, metadata !DIExpression()), !dbg !834
  %call = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %a) #6, !dbg !845
  %tobool = icmp eq i8 %call, 0, !dbg !845
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !845

land.rhs:                                         ; preds = %for.cond
  %call3 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %a) #6, !dbg !845
  call void @llvm.dbg.value(metadata i32 %call3, metadata !833, metadata !DIExpression()), !dbg !834
  br label %land.end

land.end:                                         ; preds = %for.cond, %land.rhs
  %e.1 = phi i32 [ %call3, %land.rhs ], [ %e.0, %for.cond ]
  %0 = phi i1 [ true, %land.rhs ], [ false, %for.cond ], !dbg !847
  call void @llvm.dbg.value(metadata i32 %e.1, metadata !833, metadata !DIExpression()), !dbg !834
  br i1 %0, label %for.body, label %if.end23.loopexit, !dbg !842

for.body:                                         ; preds = %land.end
  tail call fastcc void @sparseset_set_bit(%struct.sparseset_def* %b, i32 %e.1) #6, !dbg !848
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %a) #6, !dbg !845
  br label %for.cond, !dbg !845, !llvm.loop !849

if.else5:                                         ; preds = %if.else
  %cmp6 = icmp eq %struct.sparseset_def* %d, %a, !dbg !851
  br i1 %cmp6, label %if.end, label %if.then8, !dbg !854

if.then8:                                         ; preds = %if.else5
  tail call void @sparseset_copy(%struct.sparseset_def* %d, %struct.sparseset_def* %a) #6, !dbg !855
  br label %if.end, !dbg !855

if.end:                                           ; preds = %if.else5, %if.then8
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %b) #6, !dbg !856
  br label %for.cond9, !dbg !856

for.cond9:                                        ; preds = %for.body19, %if.end
  %e.2 = phi i32 [ undef, %if.end ], [ %e.3, %for.body19 ]
  call void @llvm.dbg.value(metadata i32 %e.2, metadata !833, metadata !DIExpression()), !dbg !834
  %call10 = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %b) #6, !dbg !858
  %tobool12 = icmp eq i8 %call10, 0, !dbg !858
  br i1 %tobool12, label %land.end18, label %land.rhs13, !dbg !858

land.rhs13:                                       ; preds = %for.cond9
  %call14 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %b) #6, !dbg !858
  call void @llvm.dbg.value(metadata i32 %call14, metadata !833, metadata !DIExpression()), !dbg !834
  br label %land.end18

land.end18:                                       ; preds = %for.cond9, %land.rhs13
  %e.3 = phi i32 [ %call14, %land.rhs13 ], [ %e.2, %for.cond9 ]
  %1 = phi i1 [ true, %land.rhs13 ], [ false, %for.cond9 ], !dbg !860
  call void @llvm.dbg.value(metadata i32 %e.3, metadata !833, metadata !DIExpression()), !dbg !834
  br i1 %1, label %for.body19, label %if.end23.loopexit1, !dbg !856

for.body19:                                       ; preds = %land.end18
  tail call fastcc void @sparseset_set_bit(%struct.sparseset_def* %d, i32 %e.3) #6, !dbg !861
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %b) #6, !dbg !858
  br label %for.cond9, !dbg !858, !llvm.loop !862

if.end23.loopexit:                                ; preds = %land.end
  br label %if.end23, !dbg !864

if.end23.loopexit1:                               ; preds = %land.end18
  br label %if.end23, !dbg !864

if.end23:                                         ; preds = %if.end23.loopexit1, %if.end23.loopexit, %if.then
  ret void, !dbg !864
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sparseset_equal_p(%struct.sparseset_def* %a, %struct.sparseset_def* %b) local_unnamed_addr #3 !dbg !865 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %a, metadata !869, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %b, metadata !870, metadata !DIExpression()), !dbg !872
  %cmp = icmp eq %struct.sparseset_def* %a, %b, !dbg !873
  br i1 %cmp, label %cleanup, label %if.end, !dbg !875

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @sparseset_cardinality(%struct.sparseset_def* %a) #6, !dbg !876
  %call1 = tail call fastcc i32 @sparseset_cardinality(%struct.sparseset_def* %b) #6, !dbg !878
  %cmp2 = icmp eq i32 %call, %call1, !dbg !879
  br i1 %cmp2, label %if.end4, label %cleanup, !dbg !880

if.end4:                                          ; preds = %if.end
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %a) #6, !dbg !881
  br label %for.cond, !dbg !881

for.cond:                                         ; preds = %for.inc, %if.end4
  %e.0 = phi i32 [ undef, %if.end4 ], [ %e.1, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !871, metadata !DIExpression()), !dbg !872
  %call5 = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %a) #6, !dbg !883
  %tobool = icmp eq i8 %call5, 0, !dbg !883
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !883

land.rhs:                                         ; preds = %for.cond
  %call6 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %a) #6, !dbg !883
  call void @llvm.dbg.value(metadata i32 %call6, metadata !871, metadata !DIExpression()), !dbg !872
  br label %land.end

land.end:                                         ; preds = %for.cond, %land.rhs
  %e.1 = phi i32 [ %call6, %land.rhs ], [ %e.0, %for.cond ]
  %0 = phi i1 [ true, %land.rhs ], [ false, %for.cond ], !dbg !885
  call void @llvm.dbg.value(metadata i32 %e.1, metadata !871, metadata !DIExpression()), !dbg !872
  br i1 %0, label %for.body, label %cleanup.loopexit, !dbg !881

for.body:                                         ; preds = %land.end
  %call8 = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %b, i32 %e.1) #6, !dbg !886
  %tobool9 = icmp eq i8 %call8, 0, !dbg !886
  br i1 %tobool9, label %cleanup.loopexit, label %for.inc, !dbg !888

for.inc:                                          ; preds = %for.body
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %a) #6, !dbg !883
  br label %for.cond, !dbg !883, !llvm.loop !889

cleanup.loopexit:                                 ; preds = %land.end, %for.body
  %retval.0.ph = phi i8 [ 1, %land.end ], [ 0, %for.body ]
  br label %cleanup, !dbg !891

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ 0, %if.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !872
  ret i8 %retval.0, !dbg !891
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
!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "sparseset.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !6, !7, !10, !11, !13}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "sparseset", file: !14, line: 41, baseType: !15)
!14 = !DIFile(filename: "./sparseset.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sparseset_def", file: !14, line: 31, size: 320, elements: !17)
!17 = !{!18, !21, !22, !23, !24, !25, !26, !27}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "dense", scope: !16, file: !14, line: 33, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "sparse", scope: !16, file: !14, line: 34, baseType: !19, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !16, file: !14, line: 35, baseType: !20, size: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !16, file: !14, line: 36, baseType: !20, size: 32, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !16, file: !14, line: 37, baseType: !20, size: 32, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "iter_inc", scope: !16, file: !14, line: 38, baseType: !5, size: 8, offset: 224)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "iterating", scope: !16, file: !14, line: 39, baseType: !5, size: 8, offset: 232)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !16, file: !14, line: 40, baseType: !28, size: 64, offset: 256)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 2)
!31 = !{i32 2, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!35 = distinct !DISubprogram(name: "vprintf", scope: !36, file: !36, line: 39, type: !37, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!37 = !DISubroutineType(types: !38)
!38 = !{!6, !39, !40}
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !42)
!42 = !{!43, !44, !45, !46}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !41, file: !1, baseType: !20, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !41, file: !1, baseType: !20, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !41, file: !1, baseType: !10, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !41, file: !1, baseType: !10, size: 64, offset: 128)
!47 = !{!48, !49}
!48 = !DILocalVariable(name: "__fmt", arg: 1, scope: !35, file: !36, line: 39, type: !39)
!49 = !DILocalVariable(name: "__arg", arg: 2, scope: !35, file: !36, line: 39, type: !40)
!50 = !DILocation(line: 0, scope: !35)
!51 = !DILocation(line: 41, column: 20, scope: !35)
!52 = !DILocation(line: 41, column: 10, scope: !35)
!53 = !DILocation(line: 41, column: 3, scope: !35)
!54 = distinct !DISubprogram(name: "getchar", scope: !36, file: !36, line: 47, type: !55, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!6}
!57 = !DILocation(line: 49, column: 16, scope: !54)
!58 = !DILocation(line: 49, column: 10, scope: !54)
!59 = !DILocation(line: 49, column: 3, scope: !54)
!60 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !36, file: !36, line: 56, type: !61, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!61 = !DISubroutineType(types: !62)
!62 = !{!6, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !65, line: 7, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !67, line: 49, size: 1728, elements: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !84, !86, !87, !88, !92, !94, !96, !100, !103, !105, !108, !111, !112, !113, !117, !118}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !66, file: !67, line: 51, baseType: !6, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !66, file: !67, line: 54, baseType: !8, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !66, file: !67, line: 55, baseType: !8, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !66, file: !67, line: 56, baseType: !8, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !66, file: !67, line: 57, baseType: !8, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !66, file: !67, line: 58, baseType: !8, size: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !66, file: !67, line: 59, baseType: !8, size: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !66, file: !67, line: 60, baseType: !8, size: 64, offset: 448)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !66, file: !67, line: 61, baseType: !8, size: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !66, file: !67, line: 64, baseType: !8, size: 64, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !66, file: !67, line: 65, baseType: !8, size: 64, offset: 640)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !66, file: !67, line: 66, baseType: !8, size: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !66, file: !67, line: 68, baseType: !82, size: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !67, line: 36, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !66, file: !67, line: 70, baseType: !85, size: 64, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !66, file: !67, line: 72, baseType: !6, size: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !66, file: !67, line: 73, baseType: !6, size: 32, offset: 928)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !66, file: !67, line: 74, baseType: !89, size: 64, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !90, line: 152, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !66, file: !67, line: 77, baseType: !93, size: 16, offset: 1024)
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !66, file: !67, line: 78, baseType: !95, size: 8, offset: 1040)
!95 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !66, file: !67, line: 79, baseType: !97, size: 8, offset: 1048)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 1)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !66, file: !67, line: 81, baseType: !101, size: 64, offset: 1088)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !67, line: 43, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !66, file: !67, line: 89, baseType: !104, size: 64, offset: 1152)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !90, line: 153, baseType: !91)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !66, file: !67, line: 91, baseType: !106, size: 64, offset: 1216)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !67, line: 37, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !66, file: !67, line: 92, baseType: !109, size: 64, offset: 1280)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !67, line: 38, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !66, file: !67, line: 93, baseType: !85, size: 64, offset: 1344)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !66, file: !67, line: 94, baseType: !10, size: 64, offset: 1408)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !66, file: !67, line: 95, baseType: !114, size: 64, offset: 1472)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 46, baseType: !116)
!115 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!116 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !66, file: !67, line: 96, baseType: !6, size: 32, offset: 1536)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !66, file: !67, line: 98, baseType: !119, size: 160, offset: 1568)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 20)
!122 = !{!123}
!123 = !DILocalVariable(name: "__fp", arg: 1, scope: !60, file: !36, line: 56, type: !63)
!124 = !DILocation(line: 0, scope: !60)
!125 = !DILocation(line: 58, column: 10, scope: !60)
!126 = !DILocation(line: 58, column: 3, scope: !60)
!127 = distinct !DISubprogram(name: "getc_unlocked", scope: !36, file: !36, line: 66, type: !61, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!128 = !{!129}
!129 = !DILocalVariable(name: "__fp", arg: 1, scope: !127, file: !36, line: 66, type: !63)
!130 = !DILocation(line: 0, scope: !127)
!131 = !DILocation(line: 68, column: 10, scope: !127)
!132 = !DILocation(line: 68, column: 3, scope: !127)
!133 = distinct !DISubprogram(name: "getchar_unlocked", scope: !36, file: !36, line: 73, type: !55, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!134 = !DILocation(line: 75, column: 10, scope: !133)
!135 = !DILocation(line: 75, column: 3, scope: !133)
!136 = distinct !DISubprogram(name: "putchar", scope: !36, file: !36, line: 82, type: !137, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{!6, !6}
!139 = !{!140}
!140 = !DILocalVariable(name: "__c", arg: 1, scope: !136, file: !36, line: 82, type: !6)
!141 = !DILocation(line: 0, scope: !136)
!142 = !DILocation(line: 84, column: 21, scope: !136)
!143 = !DILocation(line: 84, column: 10, scope: !136)
!144 = !DILocation(line: 84, column: 3, scope: !136)
!145 = distinct !DISubprogram(name: "fputc_unlocked", scope: !36, file: !36, line: 91, type: !146, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!146 = !DISubroutineType(types: !147)
!147 = !{!6, !6, !63}
!148 = !{!149, !150}
!149 = !DILocalVariable(name: "__c", arg: 1, scope: !145, file: !36, line: 91, type: !6)
!150 = !DILocalVariable(name: "__stream", arg: 2, scope: !145, file: !36, line: 91, type: !63)
!151 = !DILocation(line: 0, scope: !145)
!152 = !DILocation(line: 93, column: 10, scope: !145)
!153 = !DILocation(line: 93, column: 3, scope: !145)
!154 = distinct !DISubprogram(name: "putc_unlocked", scope: !36, file: !36, line: 101, type: !146, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!155 = !{!156, !157}
!156 = !DILocalVariable(name: "__c", arg: 1, scope: !154, file: !36, line: 101, type: !6)
!157 = !DILocalVariable(name: "__stream", arg: 2, scope: !154, file: !36, line: 101, type: !63)
!158 = !DILocation(line: 0, scope: !154)
!159 = !DILocation(line: 103, column: 10, scope: !154)
!160 = !DILocation(line: 103, column: 3, scope: !154)
!161 = distinct !DISubprogram(name: "putchar_unlocked", scope: !36, file: !36, line: 108, type: !137, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!162 = !{!163}
!163 = !DILocalVariable(name: "__c", arg: 1, scope: !161, file: !36, line: 108, type: !6)
!164 = !DILocation(line: 0, scope: !161)
!165 = !DILocation(line: 110, column: 10, scope: !161)
!166 = !DILocation(line: 110, column: 3, scope: !161)
!167 = distinct !DISubprogram(name: "getline", scope: !36, file: !36, line: 118, type: !168, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !172)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !7, !171, !63}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !90, line: 193, baseType: !91)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!172 = !{!173, !174, !175}
!173 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !167, file: !36, line: 118, type: !7)
!174 = !DILocalVariable(name: "__n", arg: 2, scope: !167, file: !36, line: 118, type: !171)
!175 = !DILocalVariable(name: "__stream", arg: 3, scope: !167, file: !36, line: 118, type: !63)
!176 = !DILocation(line: 0, scope: !167)
!177 = !DILocation(line: 120, column: 10, scope: !167)
!178 = !DILocation(line: 120, column: 3, scope: !167)
!179 = distinct !DISubprogram(name: "feof_unlocked", scope: !36, file: !36, line: 128, type: !61, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !180)
!180 = !{!181}
!181 = !DILocalVariable(name: "__stream", arg: 1, scope: !179, file: !36, line: 128, type: !63)
!182 = !DILocation(line: 0, scope: !179)
!183 = !DILocation(line: 130, column: 10, scope: !179)
!184 = !DILocation(line: 130, column: 3, scope: !179)
!185 = distinct !DISubprogram(name: "ferror_unlocked", scope: !36, file: !36, line: 135, type: !61, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!186 = !{!187}
!187 = !DILocalVariable(name: "__stream", arg: 1, scope: !185, file: !36, line: 135, type: !63)
!188 = !DILocation(line: 0, scope: !185)
!189 = !DILocation(line: 137, column: 10, scope: !185)
!190 = !DILocation(line: 137, column: 3, scope: !185)
!191 = distinct !DISubprogram(name: "tolower", scope: !192, file: !192, line: 207, type: !137, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !193)
!192 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!193 = !{!194}
!194 = !DILocalVariable(name: "__c", arg: 1, scope: !191, file: !192, line: 207, type: !6)
!195 = !DILocation(line: 0, scope: !191)
!196 = !DILocation(line: 209, column: 22, scope: !191)
!197 = !DILocation(line: 209, column: 39, scope: !191)
!198 = !DILocation(line: 209, column: 38, scope: !191)
!199 = !DILocation(line: 209, column: 37, scope: !191)
!200 = !DILocation(line: 209, column: 10, scope: !191)
!201 = !DILocation(line: 209, column: 3, scope: !191)
!202 = distinct !DISubprogram(name: "toupper", scope: !192, file: !192, line: 213, type: !137, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !203)
!203 = !{!204}
!204 = !DILocalVariable(name: "__c", arg: 1, scope: !202, file: !192, line: 213, type: !6)
!205 = !DILocation(line: 0, scope: !202)
!206 = !DILocation(line: 215, column: 22, scope: !202)
!207 = !DILocation(line: 215, column: 39, scope: !202)
!208 = !DILocation(line: 215, column: 38, scope: !202)
!209 = !DILocation(line: 215, column: 37, scope: !202)
!210 = !DILocation(line: 215, column: 10, scope: !202)
!211 = !DILocation(line: 215, column: 3, scope: !202)
!212 = distinct !DISubprogram(name: "atoi", scope: !213, file: !213, line: 361, type: !214, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!213 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!214 = !DISubroutineType(types: !215)
!215 = !{!6, !11}
!216 = !{!217}
!217 = !DILocalVariable(name: "__nptr", arg: 1, scope: !212, file: !213, line: 361, type: !11)
!218 = !DILocation(line: 0, scope: !212)
!219 = !DILocation(line: 363, column: 16, scope: !212)
!220 = !DILocation(line: 363, column: 10, scope: !212)
!221 = !DILocation(line: 363, column: 3, scope: !212)
!222 = distinct !DISubprogram(name: "atol", scope: !213, file: !213, line: 366, type: !223, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!91, !11}
!225 = !{!226}
!226 = !DILocalVariable(name: "__nptr", arg: 1, scope: !222, file: !213, line: 366, type: !11)
!227 = !DILocation(line: 0, scope: !222)
!228 = !DILocation(line: 368, column: 10, scope: !222)
!229 = !DILocation(line: 368, column: 3, scope: !222)
!230 = distinct !DISubprogram(name: "atoll", scope: !213, file: !213, line: 373, type: !231, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !234)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !11}
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !{!235}
!235 = !DILocalVariable(name: "__nptr", arg: 1, scope: !230, file: !213, line: 373, type: !11)
!236 = !DILocation(line: 0, scope: !230)
!237 = !DILocation(line: 375, column: 10, scope: !230)
!238 = !DILocation(line: 375, column: 3, scope: !230)
!239 = distinct !DISubprogram(name: "bsearch", scope: !240, file: !240, line: 20, type: !241, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !249)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!241 = !DISubroutineType(types: !242)
!242 = !{!10, !243, !243, !114, !114, !245}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !213, line: 808, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!6, !243, !243}
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!250 = !DILocalVariable(name: "__key", arg: 1, scope: !239, file: !240, line: 20, type: !243)
!251 = !DILocalVariable(name: "__base", arg: 2, scope: !239, file: !240, line: 20, type: !243)
!252 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !239, file: !240, line: 20, type: !114)
!253 = !DILocalVariable(name: "__size", arg: 4, scope: !239, file: !240, line: 20, type: !114)
!254 = !DILocalVariable(name: "__compar", arg: 5, scope: !239, file: !240, line: 21, type: !245)
!255 = !DILocalVariable(name: "__l", scope: !239, file: !240, line: 23, type: !114)
!256 = !DILocalVariable(name: "__u", scope: !239, file: !240, line: 23, type: !114)
!257 = !DILocalVariable(name: "__idx", scope: !239, file: !240, line: 23, type: !114)
!258 = !DILocalVariable(name: "__p", scope: !239, file: !240, line: 24, type: !243)
!259 = !DILocalVariable(name: "__comparison", scope: !239, file: !240, line: 25, type: !6)
!260 = !DILocation(line: 0, scope: !239)
!261 = !DILocation(line: 29, column: 3, scope: !239)
!262 = !DILocation(line: 27, column: 7, scope: !239)
!263 = !DILocation(line: 29, column: 14, scope: !239)
!264 = !DILocation(line: 31, column: 20, scope: !265)
!265 = distinct !DILexicalBlock(scope: !239, file: !240, line: 30, column: 5)
!266 = !DILocation(line: 31, column: 27, scope: !265)
!267 = !DILocation(line: 32, column: 56, scope: !265)
!268 = !DILocation(line: 32, column: 47, scope: !265)
!269 = !DILocation(line: 33, column: 22, scope: !265)
!270 = !DILocation(line: 34, column: 24, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !240, line: 34, column: 11)
!272 = !DILocation(line: 34, column: 11, scope: !265)
!273 = !DILocation(line: 36, column: 29, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !240, line: 36, column: 16)
!275 = !DILocation(line: 36, column: 16, scope: !271)
!276 = !DILocation(line: 37, column: 14, scope: !274)
!277 = distinct !{!277, !261, !278}
!278 = !DILocation(line: 40, column: 5, scope: !239)
!279 = !DILocation(line: 43, column: 1, scope: !239)
!280 = distinct !DISubprogram(name: "atof", scope: !281, file: !281, line: 25, type: !282, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !285)
!281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !11}
!284 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!285 = !{!286}
!286 = !DILocalVariable(name: "__nptr", arg: 1, scope: !280, file: !281, line: 25, type: !11)
!287 = !DILocation(line: 0, scope: !280)
!288 = !DILocation(line: 27, column: 10, scope: !280)
!289 = !DILocation(line: 27, column: 3, scope: !280)
!290 = distinct !DISubprogram(name: "strtoimax", scope: !291, file: !291, line: 324, type: !292, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!291 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !39, !297, !6}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !295, line: 101, baseType: !296)
!295 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !90, line: 72, baseType: !91)
!297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !7)
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "nptr", arg: 1, scope: !290, file: !291, line: 324, type: !39)
!300 = !DILocalVariable(name: "endptr", arg: 2, scope: !290, file: !291, line: 324, type: !297)
!301 = !DILocalVariable(name: "base", arg: 3, scope: !290, file: !291, line: 324, type: !6)
!302 = !DILocation(line: 0, scope: !290)
!303 = !DILocation(line: 327, column: 10, scope: !290)
!304 = !DILocation(line: 327, column: 3, scope: !290)
!305 = distinct !DISubprogram(name: "strtoumax", scope: !291, file: !291, line: 336, type: !306, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !39, !297, !6}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !295, line: 102, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !90, line: 73, baseType: !116)
!310 = !{!311, !312, !313}
!311 = !DILocalVariable(name: "nptr", arg: 1, scope: !305, file: !291, line: 336, type: !39)
!312 = !DILocalVariable(name: "endptr", arg: 2, scope: !305, file: !291, line: 336, type: !297)
!313 = !DILocalVariable(name: "base", arg: 3, scope: !305, file: !291, line: 336, type: !6)
!314 = !DILocation(line: 0, scope: !305)
!315 = !DILocation(line: 339, column: 10, scope: !305)
!316 = !DILocation(line: 339, column: 3, scope: !305)
!317 = distinct !DISubprogram(name: "wcstoimax", scope: !291, file: !291, line: 348, type: !318, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !327)
!318 = !DISubroutineType(types: !319)
!319 = !{!294, !320, !324, !6}
!320 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !291, line: 34, baseType: !6)
!324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!327 = !{!328, !329, !330}
!328 = !DILocalVariable(name: "nptr", arg: 1, scope: !317, file: !291, line: 348, type: !320)
!329 = !DILocalVariable(name: "endptr", arg: 2, scope: !317, file: !291, line: 348, type: !324)
!330 = !DILocalVariable(name: "base", arg: 3, scope: !317, file: !291, line: 348, type: !6)
!331 = !DILocation(line: 0, scope: !317)
!332 = !DILocation(line: 351, column: 10, scope: !317)
!333 = !DILocation(line: 351, column: 3, scope: !317)
!334 = distinct !DISubprogram(name: "wcstoumax", scope: !291, file: !291, line: 362, type: !335, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!308, !320, !324, !6}
!337 = !{!338, !339, !340}
!338 = !DILocalVariable(name: "nptr", arg: 1, scope: !334, file: !291, line: 362, type: !320)
!339 = !DILocalVariable(name: "endptr", arg: 2, scope: !334, file: !291, line: 362, type: !324)
!340 = !DILocalVariable(name: "base", arg: 3, scope: !334, file: !291, line: 362, type: !6)
!341 = !DILocation(line: 0, scope: !334)
!342 = !DILocation(line: 365, column: 10, scope: !334)
!343 = !DILocation(line: 365, column: 3, scope: !334)
!344 = distinct !DISubprogram(name: "stat", scope: !345, file: !345, line: 453, type: !346, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !385)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!346 = !DISubroutineType(types: !347)
!347 = !{!6, !11, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !350, line: 46, size: 1152, elements: !351)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!351 = !{!352, !354, !356, !358, !360, !362, !364, !365, !366, !367, !369, !371, !379, !380, !381}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !349, file: !350, line: 48, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !90, line: 145, baseType: !116)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !349, file: !350, line: 53, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !90, line: 148, baseType: !116)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !349, file: !350, line: 61, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !90, line: 151, baseType: !116)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !349, file: !350, line: 62, baseType: !359, size: 32, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !90, line: 150, baseType: !20)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !349, file: !350, line: 64, baseType: !361, size: 32, offset: 224)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !90, line: 146, baseType: !20)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !349, file: !350, line: 65, baseType: !363, size: 32, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !90, line: 147, baseType: !20)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !349, file: !350, line: 67, baseType: !6, size: 32, offset: 288)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !349, file: !350, line: 69, baseType: !353, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !349, file: !350, line: 74, baseType: !89, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !349, file: !350, line: 78, baseType: !368, size: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !90, line: 174, baseType: !91)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !349, file: !350, line: 80, baseType: !370, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !90, line: 179, baseType: !91)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !349, file: !350, line: 91, baseType: !372, size: 128, offset: 576)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !373, line: 10, size: 128, elements: !374)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!374 = !{!375, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !372, file: !373, line: 12, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !90, line: 160, baseType: !91)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !372, file: !373, line: 16, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !90, line: 196, baseType: !91)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !349, file: !350, line: 92, baseType: !372, size: 128, offset: 704)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !349, file: !350, line: 93, baseType: !372, size: 128, offset: 832)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !349, file: !350, line: 106, baseType: !382, size: 192, offset: 960)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 192, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 3)
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "__path", arg: 1, scope: !344, file: !345, line: 453, type: !11)
!387 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !344, file: !345, line: 453, type: !348)
!388 = !DILocation(line: 0, scope: !344)
!389 = !DILocation(line: 455, column: 10, scope: !344)
!390 = !DILocation(line: 455, column: 3, scope: !344)
!391 = distinct !DISubprogram(name: "lstat", scope: !345, file: !345, line: 460, type: !346, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !392)
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "__path", arg: 1, scope: !391, file: !345, line: 460, type: !11)
!394 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !391, file: !345, line: 460, type: !348)
!395 = !DILocation(line: 0, scope: !391)
!396 = !DILocation(line: 462, column: 10, scope: !391)
!397 = !DILocation(line: 462, column: 3, scope: !391)
!398 = distinct !DISubprogram(name: "fstat", scope: !345, file: !345, line: 467, type: !399, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!6, !6, !348}
!401 = !{!402, !403}
!402 = !DILocalVariable(name: "__fd", arg: 1, scope: !398, file: !345, line: 467, type: !6)
!403 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !398, file: !345, line: 467, type: !348)
!404 = !DILocation(line: 0, scope: !398)
!405 = !DILocation(line: 469, column: 10, scope: !398)
!406 = !DILocation(line: 469, column: 3, scope: !398)
!407 = distinct !DISubprogram(name: "fstatat", scope: !345, file: !345, line: 474, type: !408, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!6, !6, !11, !348, !6}
!410 = !{!411, !412, !413, !414}
!411 = !DILocalVariable(name: "__fd", arg: 1, scope: !407, file: !345, line: 474, type: !6)
!412 = !DILocalVariable(name: "__filename", arg: 2, scope: !407, file: !345, line: 474, type: !11)
!413 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !407, file: !345, line: 474, type: !348)
!414 = !DILocalVariable(name: "__flag", arg: 4, scope: !407, file: !345, line: 474, type: !6)
!415 = !DILocation(line: 0, scope: !407)
!416 = !DILocation(line: 477, column: 10, scope: !407)
!417 = !DILocation(line: 477, column: 3, scope: !407)
!418 = distinct !DISubprogram(name: "mknod", scope: !345, file: !345, line: 483, type: !419, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!6, !11, !359, !353}
!421 = !{!422, !423, !424}
!422 = !DILocalVariable(name: "__path", arg: 1, scope: !418, file: !345, line: 483, type: !11)
!423 = !DILocalVariable(name: "__mode", arg: 2, scope: !418, file: !345, line: 483, type: !359)
!424 = !DILocalVariable(name: "__dev", arg: 3, scope: !418, file: !345, line: 483, type: !353)
!425 = !DILocation(line: 0, scope: !418)
!426 = !DILocation(line: 485, column: 10, scope: !418)
!427 = !DILocation(line: 485, column: 3, scope: !418)
!428 = distinct !DISubprogram(name: "mknodat", scope: !345, file: !345, line: 491, type: !429, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!6, !6, !11, !359, !353}
!431 = !{!432, !433, !434, !435}
!432 = !DILocalVariable(name: "__fd", arg: 1, scope: !428, file: !345, line: 491, type: !6)
!433 = !DILocalVariable(name: "__path", arg: 2, scope: !428, file: !345, line: 491, type: !11)
!434 = !DILocalVariable(name: "__mode", arg: 3, scope: !428, file: !345, line: 491, type: !359)
!435 = !DILocalVariable(name: "__dev", arg: 4, scope: !428, file: !345, line: 491, type: !353)
!436 = !DILocation(line: 0, scope: !428)
!437 = !DILocation(line: 494, column: 10, scope: !428)
!438 = !DILocation(line: 494, column: 3, scope: !428)
!439 = distinct !DISubprogram(name: "stat64", scope: !345, file: !345, line: 502, type: !440, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !462)
!440 = !DISubroutineType(types: !441)
!441 = !{!6, !11, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !350, line: 119, size: 1152, elements: !444)
!444 = !{!445, !446, !448, !449, !450, !451, !452, !453, !454, !455, !456, !458, !459, !460, !461}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !443, file: !350, line: 121, baseType: !353, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !443, file: !350, line: 123, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !90, line: 149, baseType: !116)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !443, file: !350, line: 124, baseType: !357, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !443, file: !350, line: 125, baseType: !359, size: 32, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !443, file: !350, line: 132, baseType: !361, size: 32, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !443, file: !350, line: 133, baseType: !363, size: 32, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !443, file: !350, line: 135, baseType: !6, size: 32, offset: 288)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !443, file: !350, line: 136, baseType: !353, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !443, file: !350, line: 137, baseType: !89, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !443, file: !350, line: 143, baseType: !368, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !443, file: !350, line: 144, baseType: !457, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !90, line: 180, baseType: !91)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !443, file: !350, line: 152, baseType: !372, size: 128, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !443, file: !350, line: 153, baseType: !372, size: 128, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !443, file: !350, line: 154, baseType: !372, size: 128, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !443, file: !350, line: 164, baseType: !382, size: 192, offset: 960)
!462 = !{!463, !464}
!463 = !DILocalVariable(name: "__path", arg: 1, scope: !439, file: !345, line: 502, type: !11)
!464 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !439, file: !345, line: 502, type: !442)
!465 = !DILocation(line: 0, scope: !439)
!466 = !DILocation(line: 504, column: 10, scope: !439)
!467 = !DILocation(line: 504, column: 3, scope: !439)
!468 = distinct !DISubprogram(name: "lstat64", scope: !345, file: !345, line: 509, type: !440, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !469)
!469 = !{!470, !471}
!470 = !DILocalVariable(name: "__path", arg: 1, scope: !468, file: !345, line: 509, type: !11)
!471 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !468, file: !345, line: 509, type: !442)
!472 = !DILocation(line: 0, scope: !468)
!473 = !DILocation(line: 511, column: 10, scope: !468)
!474 = !DILocation(line: 511, column: 3, scope: !468)
!475 = distinct !DISubprogram(name: "fstat64", scope: !345, file: !345, line: 516, type: !476, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{!6, !6, !442}
!478 = !{!479, !480}
!479 = !DILocalVariable(name: "__fd", arg: 1, scope: !475, file: !345, line: 516, type: !6)
!480 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !475, file: !345, line: 516, type: !442)
!481 = !DILocation(line: 0, scope: !475)
!482 = !DILocation(line: 518, column: 10, scope: !475)
!483 = !DILocation(line: 518, column: 3, scope: !475)
!484 = distinct !DISubprogram(name: "fstatat64", scope: !345, file: !345, line: 523, type: !485, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!6, !6, !11, !442, !6}
!487 = !{!488, !489, !490, !491}
!488 = !DILocalVariable(name: "__fd", arg: 1, scope: !484, file: !345, line: 523, type: !6)
!489 = !DILocalVariable(name: "__filename", arg: 2, scope: !484, file: !345, line: 523, type: !11)
!490 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !484, file: !345, line: 523, type: !442)
!491 = !DILocalVariable(name: "__flag", arg: 4, scope: !484, file: !345, line: 523, type: !6)
!492 = !DILocation(line: 0, scope: !484)
!493 = !DILocation(line: 526, column: 10, scope: !484)
!494 = !DILocation(line: 526, column: 3, scope: !484)
!495 = distinct !DISubprogram(name: "sparseset_alloc", scope: !1, file: !1, line: 28, type: !496, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!13, !20}
!498 = !{!499, !500, !501}
!499 = !DILocalVariable(name: "n_elms", arg: 1, scope: !495, file: !1, line: 28, type: !20)
!500 = !DILocalVariable(name: "n_bytes", scope: !495, file: !1, line: 30, type: !20)
!501 = !DILocalVariable(name: "set", scope: !495, file: !1, line: 38, type: !13)
!502 = !DILocation(line: 0, scope: !495)
!503 = !DILocation(line: 31, column: 21, scope: !495)
!504 = !DILocation(line: 31, column: 5, scope: !495)
!505 = !DILocation(line: 38, column: 43, scope: !495)
!506 = !DILocation(line: 38, column: 31, scope: !495)
!507 = !DILocation(line: 38, column: 19, scope: !495)
!508 = !DILocation(line: 39, column: 23, scope: !495)
!509 = !DILocation(line: 39, column: 14, scope: !495)
!510 = !DILocation(line: 40, column: 24, scope: !495)
!511 = !DILocation(line: 40, column: 19, scope: !495)
!512 = !DILocation(line: 40, column: 8, scope: !495)
!513 = !DILocation(line: 40, column: 15, scope: !495)
!514 = !DILocation(line: 41, column: 8, scope: !495)
!515 = !DILocation(line: 41, column: 13, scope: !495)
!516 = !DILocation(line: 42, column: 3, scope: !495)
!517 = !DILocation(line: 43, column: 3, scope: !495)
!518 = distinct !DISubprogram(name: "sparseset_clear", scope: !14, file: !14, line: 56, type: !519, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !13}
!521 = !{!522}
!522 = !DILocalVariable(name: "s", arg: 1, scope: !518, file: !14, line: 56, type: !13)
!523 = !DILocation(line: 0, scope: !518)
!524 = !DILocation(line: 58, column: 6, scope: !518)
!525 = !DILocation(line: 58, column: 14, scope: !518)
!526 = !DILocation(line: 59, column: 6, scope: !518)
!527 = !DILocation(line: 59, column: 16, scope: !518)
!528 = !DILocation(line: 60, column: 1, scope: !518)
!529 = distinct !DISubprogram(name: "sparseset_clear_bit", scope: !1, file: !1, line: 61, type: !530, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !13, !20}
!532 = !{!533, !534, !535, !538, !539}
!533 = !DILocalVariable(name: "s", arg: 1, scope: !529, file: !1, line: 61, type: !13)
!534 = !DILocalVariable(name: "e", arg: 2, scope: !529, file: !1, line: 61, type: !20)
!535 = !DILocalVariable(name: "idx", scope: !536, file: !1, line: 65, type: !20)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 64, column: 5)
!537 = distinct !DILexicalBlock(scope: !529, file: !1, line: 63, column: 7)
!538 = !DILocalVariable(name: "iter", scope: !536, file: !1, line: 66, type: !20)
!539 = !DILocalVariable(name: "mem", scope: !536, file: !1, line: 67, type: !20)
!540 = !DILocation(line: 0, scope: !529)
!541 = !DILocation(line: 63, column: 7, scope: !537)
!542 = !DILocation(line: 63, column: 7, scope: !529)
!543 = !DILocation(line: 65, column: 35, scope: !536)
!544 = !DILocation(line: 65, column: 32, scope: !536)
!545 = !DILocation(line: 0, scope: !536)
!546 = !DILocation(line: 66, column: 36, scope: !536)
!547 = !DILocation(line: 67, column: 35, scope: !536)
!548 = !DILocation(line: 67, column: 43, scope: !536)
!549 = !DILocation(line: 74, column: 14, scope: !550)
!550 = distinct !DILexicalBlock(scope: !536, file: !1, line: 74, column: 11)
!551 = !DILocation(line: 74, column: 11, scope: !550)
!552 = !DILocation(line: 74, column: 31, scope: !550)
!553 = !DILocation(line: 74, column: 24, scope: !550)
!554 = !DILocation(line: 76, column: 12, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 76, column: 8)
!556 = distinct !DILexicalBlock(scope: !550, file: !1, line: 75, column: 2)
!557 = !DILocation(line: 76, column: 8, scope: !556)
!558 = !DILocation(line: 78, column: 8, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !1, line: 77, column: 6)
!560 = !DILocation(line: 80, column: 6, scope: !559)
!561 = !DILocation(line: 81, column: 7, scope: !556)
!562 = !DILocation(line: 81, column: 16, scope: !556)
!563 = !DILocation(line: 82, column: 2, scope: !556)
!564 = !DILocation(line: 87, column: 35, scope: !536)
!565 = !DILocation(line: 87, column: 32, scope: !536)
!566 = !DILocation(line: 87, column: 7, scope: !536)
!567 = !DILocation(line: 88, column: 18, scope: !536)
!568 = !DILocation(line: 89, column: 5, scope: !536)
!569 = !DILocation(line: 90, column: 1, scope: !529)
!570 = distinct !DISubprogram(name: "sparseset_bit_p", scope: !14, file: !14, line: 81, type: !571, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!5, !13, !20}
!573 = !{!574, !575, !576}
!574 = !DILocalVariable(name: "s", arg: 1, scope: !570, file: !14, line: 81, type: !13)
!575 = !DILocalVariable(name: "e", arg: 2, scope: !570, file: !14, line: 81, type: !20)
!576 = !DILocalVariable(name: "idx", scope: !570, file: !14, line: 83, type: !20)
!577 = !DILocation(line: 0, scope: !570)
!578 = !DILocation(line: 85, column: 3, scope: !570)
!579 = !DILocation(line: 87, column: 12, scope: !570)
!580 = !DILocation(line: 87, column: 9, scope: !570)
!581 = !DILocation(line: 89, column: 19, scope: !570)
!582 = !DILocation(line: 89, column: 14, scope: !570)
!583 = !DILocation(line: 89, column: 27, scope: !570)
!584 = !DILocation(line: 89, column: 33, scope: !570)
!585 = !DILocation(line: 89, column: 30, scope: !570)
!586 = !DILocation(line: 89, column: 44, scope: !570)
!587 = !DILocation(line: 89, column: 3, scope: !570)
!588 = distinct !DISubprogram(name: "sparseset_swap", scope: !1, file: !1, line: 50, type: !589, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !13, !20, !20}
!591 = !{!592, !593, !594, !595}
!592 = !DILocalVariable(name: "s", arg: 1, scope: !588, file: !1, line: 50, type: !13)
!593 = !DILocalVariable(name: "idx1", arg: 2, scope: !588, file: !1, line: 50, type: !20)
!594 = !DILocalVariable(name: "idx2", arg: 3, scope: !588, file: !1, line: 50, type: !20)
!595 = !DILocalVariable(name: "tmp", scope: !588, file: !1, line: 52, type: !20)
!596 = !DILocation(line: 0, scope: !588)
!597 = !DILocation(line: 52, column: 31, scope: !588)
!598 = !DILocation(line: 52, column: 28, scope: !588)
!599 = !DILocation(line: 53, column: 28, scope: !588)
!600 = !DILocation(line: 53, column: 3, scope: !588)
!601 = !DILocation(line: 54, column: 3, scope: !588)
!602 = !DILocation(line: 55, column: 1, scope: !588)
!603 = distinct !DISubprogram(name: "sparseset_insert_bit", scope: !14, file: !14, line: 96, type: !589, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !604)
!604 = !{!605, !606, !607}
!605 = !DILocalVariable(name: "s", arg: 1, scope: !603, file: !14, line: 96, type: !13)
!606 = !DILocalVariable(name: "e", arg: 2, scope: !603, file: !14, line: 96, type: !20)
!607 = !DILocalVariable(name: "idx", arg: 3, scope: !603, file: !14, line: 96, type: !20)
!608 = !DILocation(line: 0, scope: !603)
!609 = !DILocation(line: 98, column: 6, scope: !603)
!610 = !DILocation(line: 98, column: 3, scope: !603)
!611 = !DILocation(line: 98, column: 16, scope: !603)
!612 = !DILocation(line: 99, column: 6, scope: !603)
!613 = !DILocation(line: 99, column: 3, scope: !603)
!614 = !DILocation(line: 99, column: 17, scope: !603)
!615 = !DILocation(line: 100, column: 1, scope: !603)
!616 = distinct !DISubprogram(name: "sparseset_copy", scope: !1, file: !1, line: 96, type: !617, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !13, !13}
!619 = !{!620, !621, !622}
!620 = !DILocalVariable(name: "d", arg: 1, scope: !616, file: !1, line: 96, type: !13)
!621 = !DILocalVariable(name: "s", arg: 2, scope: !616, file: !1, line: 96, type: !13)
!622 = !DILocalVariable(name: "i", scope: !616, file: !1, line: 98, type: !20)
!623 = !DILocation(line: 0, scope: !616)
!624 = !DILocation(line: 100, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !616, file: !1, line: 100, column: 7)
!626 = !DILocation(line: 100, column: 7, scope: !616)
!627 = !DILocation(line: 103, column: 3, scope: !616)
!628 = !DILocation(line: 0, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !1, line: 104, column: 3)
!630 = distinct !DILexicalBlock(scope: !616, file: !1, line: 104, column: 3)
!631 = !DILocation(line: 104, column: 8, scope: !630)
!632 = !DILocation(line: 0, scope: !630)
!633 = !DILocation(line: 104, column: 22, scope: !629)
!634 = !DILocation(line: 104, column: 17, scope: !629)
!635 = !DILocation(line: 104, column: 3, scope: !630)
!636 = !DILocation(line: 105, column: 33, scope: !629)
!637 = !DILocation(line: 105, column: 30, scope: !629)
!638 = !DILocation(line: 105, column: 5, scope: !629)
!639 = !DILocation(line: 104, column: 32, scope: !629)
!640 = !DILocation(line: 104, column: 3, scope: !629)
!641 = distinct !{!641, !635, !642}
!642 = !DILocation(line: 105, column: 44, scope: !630)
!643 = !DILocation(line: 106, column: 6, scope: !616)
!644 = !DILocation(line: 106, column: 14, scope: !616)
!645 = !DILocation(line: 107, column: 1, scope: !616)
!646 = distinct !DISubprogram(name: "sparseset_and", scope: !1, file: !1, line: 113, type: !647, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !13, !13, !13}
!649 = !{!650, !651, !652, !653, !654, !657, !659}
!650 = !DILocalVariable(name: "d", arg: 1, scope: !646, file: !1, line: 113, type: !13)
!651 = !DILocalVariable(name: "a", arg: 2, scope: !646, file: !1, line: 113, type: !13)
!652 = !DILocalVariable(name: "b", arg: 3, scope: !646, file: !1, line: 113, type: !13)
!653 = !DILocalVariable(name: "e", scope: !646, file: !1, line: 115, type: !20)
!654 = !DILocalVariable(name: "s", scope: !655, file: !1, line: 126, type: !13)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 125, column: 5)
!656 = distinct !DILexicalBlock(scope: !646, file: !1, line: 124, column: 7)
!657 = !DILocalVariable(name: "sml", scope: !658, file: !1, line: 134, type: !13)
!658 = distinct !DILexicalBlock(scope: !656, file: !1, line: 133, column: 5)
!659 = !DILocalVariable(name: "lrg", scope: !658, file: !1, line: 134, type: !13)
!660 = !DILocation(line: 0, scope: !646)
!661 = !DILocation(line: 117, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !646, file: !1, line: 117, column: 7)
!663 = !DILocation(line: 117, column: 7, scope: !646)
!664 = !DILocation(line: 119, column: 13, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !1, line: 119, column: 11)
!666 = distinct !DILexicalBlock(scope: !662, file: !1, line: 118, column: 5)
!667 = !DILocation(line: 119, column: 11, scope: !666)
!668 = !DILocation(line: 120, column: 2, scope: !665)
!669 = !DILocation(line: 124, column: 9, scope: !656)
!670 = !DILocation(line: 124, column: 19, scope: !656)
!671 = !DILocation(line: 124, column: 14, scope: !656)
!672 = !DILocation(line: 126, column: 21, scope: !655)
!673 = !DILocation(line: 0, scope: !655)
!674 = !DILocation(line: 128, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !655, file: !1, line: 128, column: 7)
!676 = !DILocation(line: 128, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !675, file: !1, line: 128, column: 7)
!678 = !DILocation(line: 0, scope: !677)
!679 = !DILocation(line: 129, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !1, line: 129, column: 6)
!681 = !DILocation(line: 129, column: 6, scope: !677)
!682 = !DILocation(line: 130, column: 4, scope: !680)
!683 = distinct !{!683, !674, !684}
!684 = !DILocation(line: 130, column: 29, scope: !675)
!685 = !DILocation(line: 136, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !658, file: !1, line: 136, column: 11)
!687 = !DILocation(line: 136, column: 39, scope: !686)
!688 = !DILocation(line: 136, column: 37, scope: !686)
!689 = !DILocation(line: 0, scope: !658)
!690 = !DILocation(line: 147, column: 7, scope: !658)
!691 = !DILocation(line: 148, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !658, file: !1, line: 148, column: 7)
!693 = !DILocation(line: 148, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !692, file: !1, line: 148, column: 7)
!695 = !DILocation(line: 0, scope: !694)
!696 = !DILocation(line: 149, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !1, line: 149, column: 6)
!698 = !DILocation(line: 149, column: 6, scope: !694)
!699 = !DILocation(line: 150, column: 4, scope: !697)
!700 = distinct !{!700, !691, !701}
!701 = !DILocation(line: 150, column: 27, scope: !692)
!702 = !DILocation(line: 152, column: 1, scope: !646)
!703 = distinct !DISubprogram(name: "sparseset_iter_init", scope: !14, file: !14, line: 126, type: !519, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !704)
!704 = !{!705}
!705 = !DILocalVariable(name: "s", arg: 1, scope: !703, file: !14, line: 126, type: !13)
!706 = !DILocation(line: 0, scope: !703)
!707 = !DILocation(line: 128, column: 6, scope: !703)
!708 = !DILocation(line: 128, column: 11, scope: !703)
!709 = !DILocation(line: 129, column: 6, scope: !703)
!710 = !DILocation(line: 129, column: 15, scope: !703)
!711 = !DILocation(line: 130, column: 6, scope: !703)
!712 = !DILocation(line: 130, column: 16, scope: !703)
!713 = !DILocation(line: 131, column: 1, scope: !703)
!714 = distinct !DISubprogram(name: "sparseset_iter_p", scope: !14, file: !14, line: 134, type: !715, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!5, !13}
!717 = !{!718}
!718 = !DILocalVariable(name: "s", arg: 1, scope: !714, file: !14, line: 134, type: !13)
!719 = !DILocation(line: 0, scope: !714)
!720 = !DILocation(line: 136, column: 10, scope: !721)
!721 = distinct !DILexicalBlock(scope: !714, file: !14, line: 136, column: 7)
!722 = !DILocation(line: 136, column: 7, scope: !721)
!723 = !DILocation(line: 136, column: 20, scope: !721)
!724 = !DILocation(line: 136, column: 26, scope: !721)
!725 = !DILocation(line: 136, column: 36, scope: !721)
!726 = !DILocation(line: 136, column: 31, scope: !721)
!727 = !DILocation(line: 136, column: 7, scope: !714)
!728 = !DILocation(line: 139, column: 25, scope: !721)
!729 = !DILocation(line: 139, column: 5, scope: !721)
!730 = !DILocation(line: 0, scope: !721)
!731 = !DILocation(line: 140, column: 1, scope: !714)
!732 = distinct !DISubprogram(name: "sparseset_iter_elm", scope: !14, file: !14, line: 143, type: !733, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{!20, !13}
!735 = !{!736}
!736 = !DILocalVariable(name: "s", arg: 1, scope: !732, file: !14, line: 143, type: !13)
!737 = !DILocation(line: 0, scope: !732)
!738 = !DILocation(line: 145, column: 13, scope: !732)
!739 = !DILocation(line: 145, column: 22, scope: !732)
!740 = !DILocation(line: 145, column: 10, scope: !732)
!741 = !DILocation(line: 145, column: 3, scope: !732)
!742 = distinct !DISubprogram(name: "sparseset_iter_next", scope: !14, file: !14, line: 149, type: !519, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !743)
!743 = !{!744}
!744 = !DILocalVariable(name: "s", arg: 1, scope: !742, file: !14, line: 149, type: !13)
!745 = !DILocation(line: 0, scope: !742)
!746 = !DILocation(line: 151, column: 17, scope: !742)
!747 = !DILocation(line: 151, column: 14, scope: !742)
!748 = !DILocation(line: 151, column: 6, scope: !742)
!749 = !DILocation(line: 151, column: 11, scope: !742)
!750 = !DILocation(line: 152, column: 15, scope: !742)
!751 = !DILocation(line: 153, column: 1, scope: !742)
!752 = distinct !DISubprogram(name: "sparseset_cardinality", scope: !14, file: !14, line: 65, type: !733, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !753)
!753 = !{!754}
!754 = !DILocalVariable(name: "s", arg: 1, scope: !752, file: !14, line: 65, type: !13)
!755 = !DILocation(line: 0, scope: !752)
!756 = !DILocation(line: 67, column: 13, scope: !752)
!757 = !DILocation(line: 67, column: 3, scope: !752)
!758 = distinct !DISubprogram(name: "sparseset_set_bit", scope: !14, file: !14, line: 106, type: !530, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !759)
!759 = !{!760, !761}
!760 = !DILocalVariable(name: "s", arg: 1, scope: !758, file: !14, line: 106, type: !13)
!761 = !DILocalVariable(name: "e", arg: 2, scope: !758, file: !14, line: 106, type: !20)
!762 = !DILocation(line: 0, scope: !758)
!763 = !DILocation(line: 108, column: 8, scope: !764)
!764 = distinct !DILexicalBlock(scope: !758, file: !14, line: 108, column: 7)
!765 = !DILocation(line: 108, column: 7, scope: !758)
!766 = !DILocation(line: 109, column: 36, scope: !764)
!767 = !DILocation(line: 109, column: 43, scope: !764)
!768 = !DILocation(line: 109, column: 5, scope: !764)
!769 = !DILocation(line: 110, column: 1, scope: !758)
!770 = distinct !DISubprogram(name: "sparseset_and_compl", scope: !1, file: !1, line: 158, type: !647, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !771)
!771 = !{!772, !773, !774, !775}
!772 = !DILocalVariable(name: "d", arg: 1, scope: !770, file: !1, line: 158, type: !13)
!773 = !DILocalVariable(name: "a", arg: 2, scope: !770, file: !1, line: 158, type: !13)
!774 = !DILocalVariable(name: "b", arg: 3, scope: !770, file: !1, line: 158, type: !13)
!775 = !DILocalVariable(name: "e", scope: !770, file: !1, line: 160, type: !20)
!776 = !DILocation(line: 0, scope: !770)
!777 = !DILocation(line: 162, column: 9, scope: !778)
!778 = distinct !DILexicalBlock(scope: !770, file: !1, line: 162, column: 7)
!779 = !DILocation(line: 162, column: 7, scope: !770)
!780 = !DILocation(line: 164, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !778, file: !1, line: 163, column: 5)
!782 = !DILocation(line: 165, column: 7, scope: !781)
!783 = !DILocation(line: 168, column: 3, scope: !770)
!784 = !DILocation(line: 170, column: 9, scope: !785)
!785 = distinct !DILexicalBlock(scope: !770, file: !1, line: 170, column: 7)
!786 = !DILocation(line: 170, column: 7, scope: !770)
!787 = !DILocation(line: 172, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !1, line: 172, column: 11)
!789 = distinct !DILexicalBlock(scope: !785, file: !1, line: 171, column: 5)
!790 = !DILocation(line: 172, column: 39, scope: !788)
!791 = !DILocation(line: 172, column: 37, scope: !788)
!792 = !DILocation(line: 172, column: 11, scope: !789)
!793 = !DILocation(line: 174, column: 4, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !1, line: 174, column: 4)
!795 = distinct !DILexicalBlock(scope: !788, file: !1, line: 173, column: 2)
!796 = !DILocation(line: 174, column: 4, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !1, line: 174, column: 4)
!798 = !DILocation(line: 0, scope: !797)
!799 = !DILocation(line: 175, column: 10, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !1, line: 175, column: 10)
!801 = !DILocation(line: 175, column: 10, scope: !797)
!802 = !DILocation(line: 176, column: 8, scope: !800)
!803 = distinct !{!803, !793, !804}
!804 = !DILocation(line: 176, column: 33, scope: !794)
!805 = !DILocation(line: 180, column: 4, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !1, line: 180, column: 4)
!807 = distinct !DILexicalBlock(scope: !788, file: !1, line: 179, column: 2)
!808 = !DILocation(line: 180, column: 4, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !1, line: 180, column: 4)
!810 = !DILocation(line: 0, scope: !809)
!811 = !DILocation(line: 181, column: 6, scope: !809)
!812 = distinct !{!812, !805, !813}
!813 = !DILocation(line: 181, column: 31, scope: !806)
!814 = !DILocation(line: 186, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !785, file: !1, line: 185, column: 5)
!816 = !DILocation(line: 187, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !815, file: !1, line: 187, column: 7)
!818 = !DILocation(line: 187, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !817, file: !1, line: 187, column: 7)
!820 = !DILocation(line: 0, scope: !819)
!821 = !DILocation(line: 188, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !1, line: 188, column: 6)
!823 = !DILocation(line: 188, column: 6, scope: !819)
!824 = !DILocation(line: 189, column: 4, scope: !822)
!825 = distinct !{!825, !816, !826}
!826 = !DILocation(line: 189, column: 27, scope: !817)
!827 = !DILocation(line: 191, column: 1, scope: !770)
!828 = distinct !DISubprogram(name: "sparseset_ior", scope: !1, file: !1, line: 197, type: !647, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !829)
!829 = !{!830, !831, !832, !833}
!830 = !DILocalVariable(name: "d", arg: 1, scope: !828, file: !1, line: 197, type: !13)
!831 = !DILocalVariable(name: "a", arg: 2, scope: !828, file: !1, line: 197, type: !13)
!832 = !DILocalVariable(name: "b", arg: 3, scope: !828, file: !1, line: 197, type: !13)
!833 = !DILocalVariable(name: "e", scope: !828, file: !1, line: 199, type: !20)
!834 = !DILocation(line: 0, scope: !828)
!835 = !DILocation(line: 201, column: 9, scope: !836)
!836 = distinct !DILexicalBlock(scope: !828, file: !1, line: 201, column: 7)
!837 = !DILocation(line: 201, column: 7, scope: !828)
!838 = !DILocation(line: 202, column: 5, scope: !836)
!839 = !DILocation(line: 203, column: 14, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !1, line: 203, column: 12)
!841 = !DILocation(line: 203, column: 12, scope: !836)
!842 = !DILocation(line: 205, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !1, line: 205, column: 7)
!844 = distinct !DILexicalBlock(scope: !840, file: !1, line: 204, column: 5)
!845 = !DILocation(line: 205, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !1, line: 205, column: 7)
!847 = !DILocation(line: 0, scope: !846)
!848 = !DILocation(line: 206, column: 2, scope: !846)
!849 = distinct !{!849, !842, !850}
!850 = !DILocation(line: 206, column: 25, scope: !843)
!851 = !DILocation(line: 210, column: 13, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !1, line: 210, column: 11)
!853 = distinct !DILexicalBlock(scope: !840, file: !1, line: 209, column: 5)
!854 = !DILocation(line: 210, column: 11, scope: !853)
!855 = !DILocation(line: 211, column: 9, scope: !852)
!856 = !DILocation(line: 212, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !1, line: 212, column: 7)
!858 = !DILocation(line: 212, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !857, file: !1, line: 212, column: 7)
!860 = !DILocation(line: 0, scope: !859)
!861 = !DILocation(line: 213, column: 2, scope: !859)
!862 = distinct !{!862, !856, !863}
!863 = !DILocation(line: 213, column: 25, scope: !857)
!864 = !DILocation(line: 215, column: 1, scope: !828)
!865 = distinct !DISubprogram(name: "sparseset_equal_p", scope: !1, file: !1, line: 221, type: !866, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{!5, !13, !13}
!868 = !{!869, !870, !871}
!869 = !DILocalVariable(name: "a", arg: 1, scope: !865, file: !1, line: 221, type: !13)
!870 = !DILocalVariable(name: "b", arg: 2, scope: !865, file: !1, line: 221, type: !13)
!871 = !DILocalVariable(name: "e", scope: !865, file: !1, line: 223, type: !20)
!872 = !DILocation(line: 0, scope: !865)
!873 = !DILocation(line: 225, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !865, file: !1, line: 225, column: 7)
!875 = !DILocation(line: 225, column: 7, scope: !865)
!876 = !DILocation(line: 228, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !865, file: !1, line: 228, column: 7)
!878 = !DILocation(line: 228, column: 36, scope: !877)
!879 = !DILocation(line: 228, column: 33, scope: !877)
!880 = !DILocation(line: 228, column: 7, scope: !865)
!881 = !DILocation(line: 231, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !865, file: !1, line: 231, column: 3)
!883 = !DILocation(line: 231, column: 3, scope: !884)
!884 = distinct !DILexicalBlock(scope: !882, file: !1, line: 231, column: 3)
!885 = !DILocation(line: 0, scope: !884)
!886 = !DILocation(line: 232, column: 10, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !1, line: 232, column: 9)
!888 = !DILocation(line: 232, column: 9, scope: !884)
!889 = distinct !{!889, !881, !890}
!890 = !DILocation(line: 233, column: 14, scope: !882)
!891 = !DILocation(line: 236, column: 1, scope: !865)
