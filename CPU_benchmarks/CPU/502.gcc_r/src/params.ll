; ModuleID = 'params.bc'
source_filename = "params.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@compiler_params = common dso_local local_unnamed_addr global %struct.param_info* null, align 8, !dbg !0
@num_compiler_params = internal unnamed_addr global i64 0, align 8, !dbg !28
@.str = private unnamed_addr constant [9 x i8] c"params.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"minimum value of parameter %qs is %u\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"maximum value of parameter %qs is %u\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid parameter %qs\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !37 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !51, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !52, metadata !DIExpression()), !dbg !53
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !54
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !55
  ret i32 %call, !dbg !56
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !57 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !60
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !61
  ret i32 %call, !dbg !62
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !63 {
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
define dso_local void @add_params(%struct.param_info* %params, i64 %n) local_unnamed_addr #3 !dbg !495 {
entry:
  call void @llvm.dbg.value(metadata %struct.param_info* %params, metadata !501, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i64 %n, metadata !502, metadata !DIExpression()), !dbg !503
  %0 = load i8*, i8** bitcast (%struct.param_info** @compiler_params to i8**), align 8, !dbg !504
  %1 = load i64, i64* @num_compiler_params, align 8, !dbg !504
  %add = add i64 %1, %n, !dbg !504
  %mul = shl i64 %add, 5, !dbg !504
  %call = tail call i8* @xrealloc(i8* %0, i64 %mul) #5, !dbg !504
  store i8* %call, i8** bitcast (%struct.param_info** @compiler_params to i8**), align 8, !dbg !505
  %.cast = bitcast i8* %call to %struct.param_info*, !dbg !506
  %2 = load i64, i64* @num_compiler_params, align 8, !dbg !507
  %add.ptr = getelementptr inbounds %struct.param_info, %struct.param_info* %.cast, i64 %2, !dbg !508
  %3 = bitcast %struct.param_info* %add.ptr to i8*, !dbg !506
  %4 = bitcast %struct.param_info* %params to i8*, !dbg !509
  %mul1 = shl i64 %n, 5, !dbg !510
  %call2 = tail call i8* @memcpy(i8* %3, i8* %4, i64 %mul1) #5, !dbg !511
  %5 = load i64, i64* @num_compiler_params, align 8, !dbg !512
  %add3 = add i64 %5, %n, !dbg !512
  store i64 %add3, i64* @num_compiler_params, align 8, !dbg !512
  ret void, !dbg !513
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @set_param_value(i8* %name, i32 %value) local_unnamed_addr #3 !dbg !514 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !518, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i32 %value, metadata !519, metadata !DIExpression()), !dbg !521
  %cmp = icmp eq i32 %value, -1, !dbg !522
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !522

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !522
  br label %cond.end, !dbg !522

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i64 0, metadata !520, metadata !DIExpression()), !dbg !521
  br label %for.cond, !dbg !523

for.cond:                                         ; preds = %for.inc, %cond.end
  %i.0 = phi i64 [ 0, %cond.end ], [ %inc, %for.inc ], !dbg !525
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !520, metadata !DIExpression()), !dbg !521
  %0 = load i64, i64* @num_compiler_params, align 8, !dbg !526
  %cmp1 = icmp ult i64 %i.0, %0, !dbg !528
  br i1 %cmp1, label %for.body, label %for.end, !dbg !529

for.body:                                         ; preds = %for.cond
  %1 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !530
  %option = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 %i.0, i32 0, !dbg !532
  %2 = load i8*, i8** %option, align 8, !dbg !532
  %call = tail call i32 @strcmp(i8* %2, i8* %name) #5, !dbg !533
  %cmp2 = icmp eq i32 %call, 0, !dbg !534
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !535

if.then:                                          ; preds = %for.body
  %i.0.lcssa5 = phi i64 [ %i.0, %for.body ], !dbg !525
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa5, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa5, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa5, metadata !520, metadata !DIExpression()), !dbg !521
  %3 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !536
  %min_value = getelementptr inbounds %struct.param_info, %struct.param_info* %3, i64 %i.0.lcssa5, i32 3, !dbg !539
  %4 = load i32, i32* %min_value, align 8, !dbg !539
  %cmp4 = icmp sgt i32 %4, %value, !dbg !540
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !541

if.then5:                                         ; preds = %if.then
  %option7 = getelementptr inbounds %struct.param_info, %struct.param_info* %3, i64 %i.0.lcssa5, i32 0, !dbg !542
  %5 = load i8*, i8** %option7, align 8, !dbg !542
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %5, i32 %4) #5, !dbg !543
  br label %cleanup.cont, !dbg !543

if.else:                                          ; preds = %if.then
  %max_value = getelementptr inbounds %struct.param_info, %struct.param_info* %3, i64 %i.0.lcssa5, i32 4, !dbg !544
  %6 = load i32, i32* %max_value, align 4, !dbg !544
  %cmp13 = icmp sgt i32 %6, %4, !dbg !546
  br i1 %cmp13, label %land.lhs.true, label %if.else22, !dbg !547

land.lhs.true:                                    ; preds = %if.else
  %cmp16 = icmp slt i32 %6, %value, !dbg !548
  br i1 %cmp16, label %if.then17, label %if.else22, !dbg !549

if.then17:                                        ; preds = %land.lhs.true
  %option19 = getelementptr inbounds %struct.param_info, %struct.param_info* %3, i64 %i.0.lcssa5, i32 0, !dbg !550
  %7 = load i8*, i8** %option19, align 8, !dbg !550
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %7, i32 %6) #5, !dbg !551
  br label %cleanup.cont, !dbg !551

if.else22:                                        ; preds = %land.lhs.true, %if.else
  %value24 = getelementptr inbounds %struct.param_info, %struct.param_info* %3, i64 %i.0.lcssa5, i32 1, !dbg !552
  store i32 %value, i32* %value24, align 8, !dbg !554
  %8 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !555
  %set = getelementptr inbounds %struct.param_info, %struct.param_info* %8, i64 %i.0.lcssa5, i32 2, !dbg !556
  store i8 1, i8* %set, align 4, !dbg !557
  br label %cleanup.cont

for.inc:                                          ; preds = %for.body
  %inc = add i64 %i.0, 1, !dbg !558
  call void @llvm.dbg.value(metadata i64 %inc, metadata !520, metadata !DIExpression()), !dbg !521
  br label %for.cond, !dbg !559, !llvm.loop !560

for.end:                                          ; preds = %for.cond
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %name) #5, !dbg !562
  br label %cleanup.cont, !dbg !563

cleanup.cont:                                     ; preds = %for.end, %if.then17, %if.else22, %if.then5
  ret void, !dbg !563
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @get_num_compiler_params() local_unnamed_addr #3 !dbg !564 {
entry:
  %0 = load i64, i64* @num_compiler_params, align 8, !dbg !567
  ret i64 %0, !dbg !568
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "compiler_params", scope: !2, file: !3, line: 32, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !27, nameTableKind: None)
!3 = !DIFile(filename: "params.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "param_info", file: !17, line: 61, baseType: !18)
!17 = !DIFile(filename: "./params.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "param_info", file: !17, line: 42, size: 256, elements: !19)
!19 = !{!20, !22, !23, !24, !25, !26}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !18, file: !17, line: 46, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !18, file: !17, line: 48, baseType: !8, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !18, file: !17, line: 51, baseType: !7, size: 8, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !18, file: !17, line: 54, baseType: !8, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !18, file: !17, line: 57, baseType: !8, size: 32, offset: 160)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "help", scope: !18, file: !17, line: 60, baseType: !21, size: 64, offset: 192)
!27 = !{!0, !28}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "num_compiler_params", scope: !2, file: !3, line: 35, type: !30, isLocal: true, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !{i32 2, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!37 = distinct !DISubprogram(name: "vprintf", scope: !38, file: !38, line: 39, type: !39, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!39 = !DISubroutineType(types: !40)
!40 = !{!8, !41, !42}
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !44)
!44 = !{!45, !47, !48, !49}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !43, file: !3, baseType: !46, size: 32)
!46 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !43, file: !3, baseType: !46, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !43, file: !3, baseType: !12, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !43, file: !3, baseType: !12, size: 64, offset: 128)
!50 = !{!51, !52}
!51 = !DILocalVariable(name: "__fmt", arg: 1, scope: !37, file: !38, line: 39, type: !41)
!52 = !DILocalVariable(name: "__arg", arg: 2, scope: !37, file: !38, line: 39, type: !42)
!53 = !DILocation(line: 0, scope: !37)
!54 = !DILocation(line: 41, column: 20, scope: !37)
!55 = !DILocation(line: 41, column: 10, scope: !37)
!56 = !DILocation(line: 41, column: 3, scope: !37)
!57 = distinct !DISubprogram(name: "getchar", scope: !38, file: !38, line: 47, type: !58, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!58 = !DISubroutineType(types: !59)
!59 = !{!8}
!60 = !DILocation(line: 49, column: 16, scope: !57)
!61 = !DILocation(line: 49, column: 10, scope: !57)
!62 = !DILocation(line: 49, column: 3, scope: !57)
!63 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !38, file: !38, line: 56, type: !64, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!64 = !DISubroutineType(types: !65)
!65 = !{!8, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !68, line: 7, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !70, line: 49, size: 1728, elements: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !87, !89, !90, !91, !95, !97, !99, !103, !106, !108, !111, !114, !115, !116, !117, !118}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !69, file: !70, line: 51, baseType: !8, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !69, file: !70, line: 54, baseType: !10, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !69, file: !70, line: 55, baseType: !10, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !69, file: !70, line: 56, baseType: !10, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !69, file: !70, line: 57, baseType: !10, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !69, file: !70, line: 58, baseType: !10, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !69, file: !70, line: 59, baseType: !10, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !69, file: !70, line: 60, baseType: !10, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !69, file: !70, line: 61, baseType: !10, size: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !69, file: !70, line: 64, baseType: !10, size: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !69, file: !70, line: 65, baseType: !10, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !69, file: !70, line: 66, baseType: !10, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !69, file: !70, line: 68, baseType: !85, size: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !70, line: 36, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !69, file: !70, line: 70, baseType: !88, size: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !69, file: !70, line: 72, baseType: !8, size: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !69, file: !70, line: 73, baseType: !8, size: 32, offset: 928)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !69, file: !70, line: 74, baseType: !92, size: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !93, line: 152, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!94 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !69, file: !70, line: 77, baseType: !96, size: 16, offset: 1024)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !69, file: !70, line: 78, baseType: !98, size: 8, offset: 1040)
!98 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !69, file: !70, line: 79, baseType: !100, size: 8, offset: 1048)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 1)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !69, file: !70, line: 81, baseType: !104, size: 64, offset: 1088)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !70, line: 43, baseType: null)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !69, file: !70, line: 89, baseType: !107, size: 64, offset: 1152)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !93, line: 153, baseType: !94)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !69, file: !70, line: 91, baseType: !109, size: 64, offset: 1216)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !70, line: 37, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !69, file: !70, line: 92, baseType: !112, size: 64, offset: 1280)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !70, line: 38, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !69, file: !70, line: 93, baseType: !88, size: 64, offset: 1344)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !69, file: !70, line: 94, baseType: !12, size: 64, offset: 1408)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !69, file: !70, line: 95, baseType: !30, size: 64, offset: 1472)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !69, file: !70, line: 96, baseType: !8, size: 32, offset: 1536)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !69, file: !70, line: 98, baseType: !119, size: 160, offset: 1568)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 20)
!122 = !{!123}
!123 = !DILocalVariable(name: "__fp", arg: 1, scope: !63, file: !38, line: 56, type: !66)
!124 = !DILocation(line: 0, scope: !63)
!125 = !DILocation(line: 58, column: 10, scope: !63)
!126 = !DILocation(line: 58, column: 3, scope: !63)
!127 = distinct !DISubprogram(name: "getc_unlocked", scope: !38, file: !38, line: 66, type: !64, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !128)
!128 = !{!129}
!129 = !DILocalVariable(name: "__fp", arg: 1, scope: !127, file: !38, line: 66, type: !66)
!130 = !DILocation(line: 0, scope: !127)
!131 = !DILocation(line: 68, column: 10, scope: !127)
!132 = !DILocation(line: 68, column: 3, scope: !127)
!133 = distinct !DISubprogram(name: "getchar_unlocked", scope: !38, file: !38, line: 73, type: !58, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!134 = !DILocation(line: 75, column: 10, scope: !133)
!135 = !DILocation(line: 75, column: 3, scope: !133)
!136 = distinct !DISubprogram(name: "putchar", scope: !38, file: !38, line: 82, type: !137, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{!8, !8}
!139 = !{!140}
!140 = !DILocalVariable(name: "__c", arg: 1, scope: !136, file: !38, line: 82, type: !8)
!141 = !DILocation(line: 0, scope: !136)
!142 = !DILocation(line: 84, column: 21, scope: !136)
!143 = !DILocation(line: 84, column: 10, scope: !136)
!144 = !DILocation(line: 84, column: 3, scope: !136)
!145 = distinct !DISubprogram(name: "fputc_unlocked", scope: !38, file: !38, line: 91, type: !146, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!146 = !DISubroutineType(types: !147)
!147 = !{!8, !8, !66}
!148 = !{!149, !150}
!149 = !DILocalVariable(name: "__c", arg: 1, scope: !145, file: !38, line: 91, type: !8)
!150 = !DILocalVariable(name: "__stream", arg: 2, scope: !145, file: !38, line: 91, type: !66)
!151 = !DILocation(line: 0, scope: !145)
!152 = !DILocation(line: 93, column: 10, scope: !145)
!153 = !DILocation(line: 93, column: 3, scope: !145)
!154 = distinct !DISubprogram(name: "putc_unlocked", scope: !38, file: !38, line: 101, type: !146, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !155)
!155 = !{!156, !157}
!156 = !DILocalVariable(name: "__c", arg: 1, scope: !154, file: !38, line: 101, type: !8)
!157 = !DILocalVariable(name: "__stream", arg: 2, scope: !154, file: !38, line: 101, type: !66)
!158 = !DILocation(line: 0, scope: !154)
!159 = !DILocation(line: 103, column: 10, scope: !154)
!160 = !DILocation(line: 103, column: 3, scope: !154)
!161 = distinct !DISubprogram(name: "putchar_unlocked", scope: !38, file: !38, line: 108, type: !137, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!162 = !{!163}
!163 = !DILocalVariable(name: "__c", arg: 1, scope: !161, file: !38, line: 108, type: !8)
!164 = !DILocation(line: 0, scope: !161)
!165 = !DILocation(line: 110, column: 10, scope: !161)
!166 = !DILocation(line: 110, column: 3, scope: !161)
!167 = distinct !DISubprogram(name: "getline", scope: !38, file: !38, line: 118, type: !168, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !9, !171, !66}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !93, line: 193, baseType: !94)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!172 = !{!173, !174, !175}
!173 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !167, file: !38, line: 118, type: !9)
!174 = !DILocalVariable(name: "__n", arg: 2, scope: !167, file: !38, line: 118, type: !171)
!175 = !DILocalVariable(name: "__stream", arg: 3, scope: !167, file: !38, line: 118, type: !66)
!176 = !DILocation(line: 0, scope: !167)
!177 = !DILocation(line: 120, column: 10, scope: !167)
!178 = !DILocation(line: 120, column: 3, scope: !167)
!179 = distinct !DISubprogram(name: "feof_unlocked", scope: !38, file: !38, line: 128, type: !64, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!180 = !{!181}
!181 = !DILocalVariable(name: "__stream", arg: 1, scope: !179, file: !38, line: 128, type: !66)
!182 = !DILocation(line: 0, scope: !179)
!183 = !DILocation(line: 130, column: 10, scope: !179)
!184 = !DILocation(line: 130, column: 3, scope: !179)
!185 = distinct !DISubprogram(name: "ferror_unlocked", scope: !38, file: !38, line: 135, type: !64, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!186 = !{!187}
!187 = !DILocalVariable(name: "__stream", arg: 1, scope: !185, file: !38, line: 135, type: !66)
!188 = !DILocation(line: 0, scope: !185)
!189 = !DILocation(line: 137, column: 10, scope: !185)
!190 = !DILocation(line: 137, column: 3, scope: !185)
!191 = distinct !DISubprogram(name: "tolower", scope: !192, file: !192, line: 207, type: !137, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!192 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!193 = !{!194}
!194 = !DILocalVariable(name: "__c", arg: 1, scope: !191, file: !192, line: 207, type: !8)
!195 = !DILocation(line: 0, scope: !191)
!196 = !DILocation(line: 209, column: 22, scope: !191)
!197 = !DILocation(line: 209, column: 39, scope: !191)
!198 = !DILocation(line: 209, column: 38, scope: !191)
!199 = !DILocation(line: 209, column: 37, scope: !191)
!200 = !DILocation(line: 209, column: 10, scope: !191)
!201 = !DILocation(line: 209, column: 3, scope: !191)
!202 = distinct !DISubprogram(name: "toupper", scope: !192, file: !192, line: 213, type: !137, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!203 = !{!204}
!204 = !DILocalVariable(name: "__c", arg: 1, scope: !202, file: !192, line: 213, type: !8)
!205 = !DILocation(line: 0, scope: !202)
!206 = !DILocation(line: 215, column: 22, scope: !202)
!207 = !DILocation(line: 215, column: 39, scope: !202)
!208 = !DILocation(line: 215, column: 38, scope: !202)
!209 = !DILocation(line: 215, column: 37, scope: !202)
!210 = !DILocation(line: 215, column: 10, scope: !202)
!211 = !DILocation(line: 215, column: 3, scope: !202)
!212 = distinct !DISubprogram(name: "atoi", scope: !213, file: !213, line: 361, type: !214, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !216)
!213 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!214 = !DISubroutineType(types: !215)
!215 = !{!8, !13}
!216 = !{!217}
!217 = !DILocalVariable(name: "__nptr", arg: 1, scope: !212, file: !213, line: 361, type: !13)
!218 = !DILocation(line: 0, scope: !212)
!219 = !DILocation(line: 363, column: 16, scope: !212)
!220 = !DILocation(line: 363, column: 10, scope: !212)
!221 = !DILocation(line: 363, column: 3, scope: !212)
!222 = distinct !DISubprogram(name: "atol", scope: !213, file: !213, line: 366, type: !223, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!94, !13}
!225 = !{!226}
!226 = !DILocalVariable(name: "__nptr", arg: 1, scope: !222, file: !213, line: 366, type: !13)
!227 = !DILocation(line: 0, scope: !222)
!228 = !DILocation(line: 368, column: 10, scope: !222)
!229 = !DILocation(line: 368, column: 3, scope: !222)
!230 = distinct !DISubprogram(name: "atoll", scope: !213, file: !213, line: 373, type: !231, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !234)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !13}
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !{!235}
!235 = !DILocalVariable(name: "__nptr", arg: 1, scope: !230, file: !213, line: 373, type: !13)
!236 = !DILocation(line: 0, scope: !230)
!237 = !DILocation(line: 375, column: 10, scope: !230)
!238 = !DILocation(line: 375, column: 3, scope: !230)
!239 = distinct !DISubprogram(name: "bsearch", scope: !240, file: !240, line: 20, type: !241, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!241 = !DISubroutineType(types: !242)
!242 = !{!12, !243, !243, !30, !30, !245}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !213, line: 808, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!8, !243, !243}
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!250 = !DILocalVariable(name: "__key", arg: 1, scope: !239, file: !240, line: 20, type: !243)
!251 = !DILocalVariable(name: "__base", arg: 2, scope: !239, file: !240, line: 20, type: !243)
!252 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !239, file: !240, line: 20, type: !30)
!253 = !DILocalVariable(name: "__size", arg: 4, scope: !239, file: !240, line: 20, type: !30)
!254 = !DILocalVariable(name: "__compar", arg: 5, scope: !239, file: !240, line: 21, type: !245)
!255 = !DILocalVariable(name: "__l", scope: !239, file: !240, line: 23, type: !30)
!256 = !DILocalVariable(name: "__u", scope: !239, file: !240, line: 23, type: !30)
!257 = !DILocalVariable(name: "__idx", scope: !239, file: !240, line: 23, type: !30)
!258 = !DILocalVariable(name: "__p", scope: !239, file: !240, line: 24, type: !243)
!259 = !DILocalVariable(name: "__comparison", scope: !239, file: !240, line: 25, type: !8)
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
!280 = distinct !DISubprogram(name: "atof", scope: !281, file: !281, line: 25, type: !282, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !13}
!284 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!285 = !{!286}
!286 = !DILocalVariable(name: "__nptr", arg: 1, scope: !280, file: !281, line: 25, type: !13)
!287 = !DILocation(line: 0, scope: !280)
!288 = !DILocation(line: 27, column: 10, scope: !280)
!289 = !DILocation(line: 27, column: 3, scope: !280)
!290 = distinct !DISubprogram(name: "strtoimax", scope: !291, file: !291, line: 324, type: !292, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!291 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !41, !297, !8}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !295, line: 101, baseType: !296)
!295 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !93, line: 72, baseType: !94)
!297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "nptr", arg: 1, scope: !290, file: !291, line: 324, type: !41)
!300 = !DILocalVariable(name: "endptr", arg: 2, scope: !290, file: !291, line: 324, type: !297)
!301 = !DILocalVariable(name: "base", arg: 3, scope: !290, file: !291, line: 324, type: !8)
!302 = !DILocation(line: 0, scope: !290)
!303 = !DILocation(line: 327, column: 10, scope: !290)
!304 = !DILocation(line: 327, column: 3, scope: !290)
!305 = distinct !DISubprogram(name: "strtoumax", scope: !291, file: !291, line: 336, type: !306, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !310)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !41, !297, !8}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !295, line: 102, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !93, line: 73, baseType: !32)
!310 = !{!311, !312, !313}
!311 = !DILocalVariable(name: "nptr", arg: 1, scope: !305, file: !291, line: 336, type: !41)
!312 = !DILocalVariable(name: "endptr", arg: 2, scope: !305, file: !291, line: 336, type: !297)
!313 = !DILocalVariable(name: "base", arg: 3, scope: !305, file: !291, line: 336, type: !8)
!314 = !DILocation(line: 0, scope: !305)
!315 = !DILocation(line: 339, column: 10, scope: !305)
!316 = !DILocation(line: 339, column: 3, scope: !305)
!317 = distinct !DISubprogram(name: "wcstoimax", scope: !291, file: !291, line: 348, type: !318, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!318 = !DISubroutineType(types: !319)
!319 = !{!294, !320, !324, !8}
!320 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !291, line: 34, baseType: !8)
!324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!327 = !{!328, !329, !330}
!328 = !DILocalVariable(name: "nptr", arg: 1, scope: !317, file: !291, line: 348, type: !320)
!329 = !DILocalVariable(name: "endptr", arg: 2, scope: !317, file: !291, line: 348, type: !324)
!330 = !DILocalVariable(name: "base", arg: 3, scope: !317, file: !291, line: 348, type: !8)
!331 = !DILocation(line: 0, scope: !317)
!332 = !DILocation(line: 351, column: 10, scope: !317)
!333 = !DILocation(line: 351, column: 3, scope: !317)
!334 = distinct !DISubprogram(name: "wcstoumax", scope: !291, file: !291, line: 362, type: !335, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!308, !320, !324, !8}
!337 = !{!338, !339, !340}
!338 = !DILocalVariable(name: "nptr", arg: 1, scope: !334, file: !291, line: 362, type: !320)
!339 = !DILocalVariable(name: "endptr", arg: 2, scope: !334, file: !291, line: 362, type: !324)
!340 = !DILocalVariable(name: "base", arg: 3, scope: !334, file: !291, line: 362, type: !8)
!341 = !DILocation(line: 0, scope: !334)
!342 = !DILocation(line: 365, column: 10, scope: !334)
!343 = !DILocation(line: 365, column: 3, scope: !334)
!344 = distinct !DISubprogram(name: "stat", scope: !345, file: !345, line: 453, type: !346, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!346 = !DISubroutineType(types: !347)
!347 = !{!8, !13, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !350, line: 46, size: 1152, elements: !351)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!351 = !{!352, !354, !356, !358, !360, !362, !364, !365, !366, !367, !369, !371, !379, !380, !381}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !349, file: !350, line: 48, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !93, line: 145, baseType: !32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !349, file: !350, line: 53, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !93, line: 148, baseType: !32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !349, file: !350, line: 61, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !93, line: 151, baseType: !32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !349, file: !350, line: 62, baseType: !359, size: 32, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !93, line: 150, baseType: !46)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !349, file: !350, line: 64, baseType: !361, size: 32, offset: 224)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !93, line: 146, baseType: !46)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !349, file: !350, line: 65, baseType: !363, size: 32, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !93, line: 147, baseType: !46)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !349, file: !350, line: 67, baseType: !8, size: 32, offset: 288)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !349, file: !350, line: 69, baseType: !353, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !349, file: !350, line: 74, baseType: !92, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !349, file: !350, line: 78, baseType: !368, size: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !93, line: 174, baseType: !94)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !349, file: !350, line: 80, baseType: !370, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !93, line: 179, baseType: !94)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !349, file: !350, line: 91, baseType: !372, size: 128, offset: 576)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !373, line: 10, size: 128, elements: !374)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!374 = !{!375, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !372, file: !373, line: 12, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !93, line: 160, baseType: !94)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !372, file: !373, line: 16, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !93, line: 196, baseType: !94)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !349, file: !350, line: 92, baseType: !372, size: 128, offset: 704)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !349, file: !350, line: 93, baseType: !372, size: 128, offset: 832)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !349, file: !350, line: 106, baseType: !382, size: 192, offset: 960)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 192, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 3)
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "__path", arg: 1, scope: !344, file: !345, line: 453, type: !13)
!387 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !344, file: !345, line: 453, type: !348)
!388 = !DILocation(line: 0, scope: !344)
!389 = !DILocation(line: 455, column: 10, scope: !344)
!390 = !DILocation(line: 455, column: 3, scope: !344)
!391 = distinct !DISubprogram(name: "lstat", scope: !345, file: !345, line: 460, type: !346, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "__path", arg: 1, scope: !391, file: !345, line: 460, type: !13)
!394 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !391, file: !345, line: 460, type: !348)
!395 = !DILocation(line: 0, scope: !391)
!396 = !DILocation(line: 462, column: 10, scope: !391)
!397 = !DILocation(line: 462, column: 3, scope: !391)
!398 = distinct !DISubprogram(name: "fstat", scope: !345, file: !345, line: 467, type: !399, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!8, !8, !348}
!401 = !{!402, !403}
!402 = !DILocalVariable(name: "__fd", arg: 1, scope: !398, file: !345, line: 467, type: !8)
!403 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !398, file: !345, line: 467, type: !348)
!404 = !DILocation(line: 0, scope: !398)
!405 = !DILocation(line: 469, column: 10, scope: !398)
!406 = !DILocation(line: 469, column: 3, scope: !398)
!407 = distinct !DISubprogram(name: "fstatat", scope: !345, file: !345, line: 474, type: !408, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!8, !8, !13, !348, !8}
!410 = !{!411, !412, !413, !414}
!411 = !DILocalVariable(name: "__fd", arg: 1, scope: !407, file: !345, line: 474, type: !8)
!412 = !DILocalVariable(name: "__filename", arg: 2, scope: !407, file: !345, line: 474, type: !13)
!413 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !407, file: !345, line: 474, type: !348)
!414 = !DILocalVariable(name: "__flag", arg: 4, scope: !407, file: !345, line: 474, type: !8)
!415 = !DILocation(line: 0, scope: !407)
!416 = !DILocation(line: 477, column: 10, scope: !407)
!417 = !DILocation(line: 477, column: 3, scope: !407)
!418 = distinct !DISubprogram(name: "mknod", scope: !345, file: !345, line: 483, type: !419, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!8, !13, !359, !353}
!421 = !{!422, !423, !424}
!422 = !DILocalVariable(name: "__path", arg: 1, scope: !418, file: !345, line: 483, type: !13)
!423 = !DILocalVariable(name: "__mode", arg: 2, scope: !418, file: !345, line: 483, type: !359)
!424 = !DILocalVariable(name: "__dev", arg: 3, scope: !418, file: !345, line: 483, type: !353)
!425 = !DILocation(line: 0, scope: !418)
!426 = !DILocation(line: 485, column: 10, scope: !418)
!427 = !DILocation(line: 485, column: 3, scope: !418)
!428 = distinct !DISubprogram(name: "mknodat", scope: !345, file: !345, line: 491, type: !429, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!8, !8, !13, !359, !353}
!431 = !{!432, !433, !434, !435}
!432 = !DILocalVariable(name: "__fd", arg: 1, scope: !428, file: !345, line: 491, type: !8)
!433 = !DILocalVariable(name: "__path", arg: 2, scope: !428, file: !345, line: 491, type: !13)
!434 = !DILocalVariable(name: "__mode", arg: 3, scope: !428, file: !345, line: 491, type: !359)
!435 = !DILocalVariable(name: "__dev", arg: 4, scope: !428, file: !345, line: 491, type: !353)
!436 = !DILocation(line: 0, scope: !428)
!437 = !DILocation(line: 494, column: 10, scope: !428)
!438 = !DILocation(line: 494, column: 3, scope: !428)
!439 = distinct !DISubprogram(name: "stat64", scope: !345, file: !345, line: 502, type: !440, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!440 = !DISubroutineType(types: !441)
!441 = !{!8, !13, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !350, line: 119, size: 1152, elements: !444)
!444 = !{!445, !446, !448, !449, !450, !451, !452, !453, !454, !455, !456, !458, !459, !460, !461}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !443, file: !350, line: 121, baseType: !353, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !443, file: !350, line: 123, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !93, line: 149, baseType: !32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !443, file: !350, line: 124, baseType: !357, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !443, file: !350, line: 125, baseType: !359, size: 32, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !443, file: !350, line: 132, baseType: !361, size: 32, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !443, file: !350, line: 133, baseType: !363, size: 32, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !443, file: !350, line: 135, baseType: !8, size: 32, offset: 288)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !443, file: !350, line: 136, baseType: !353, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !443, file: !350, line: 137, baseType: !92, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !443, file: !350, line: 143, baseType: !368, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !443, file: !350, line: 144, baseType: !457, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !93, line: 180, baseType: !94)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !443, file: !350, line: 152, baseType: !372, size: 128, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !443, file: !350, line: 153, baseType: !372, size: 128, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !443, file: !350, line: 154, baseType: !372, size: 128, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !443, file: !350, line: 164, baseType: !382, size: 192, offset: 960)
!462 = !{!463, !464}
!463 = !DILocalVariable(name: "__path", arg: 1, scope: !439, file: !345, line: 502, type: !13)
!464 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !439, file: !345, line: 502, type: !442)
!465 = !DILocation(line: 0, scope: !439)
!466 = !DILocation(line: 504, column: 10, scope: !439)
!467 = !DILocation(line: 504, column: 3, scope: !439)
!468 = distinct !DISubprogram(name: "lstat64", scope: !345, file: !345, line: 509, type: !440, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !469)
!469 = !{!470, !471}
!470 = !DILocalVariable(name: "__path", arg: 1, scope: !468, file: !345, line: 509, type: !13)
!471 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !468, file: !345, line: 509, type: !442)
!472 = !DILocation(line: 0, scope: !468)
!473 = !DILocation(line: 511, column: 10, scope: !468)
!474 = !DILocation(line: 511, column: 3, scope: !468)
!475 = distinct !DISubprogram(name: "fstat64", scope: !345, file: !345, line: 516, type: !476, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{!8, !8, !442}
!478 = !{!479, !480}
!479 = !DILocalVariable(name: "__fd", arg: 1, scope: !475, file: !345, line: 516, type: !8)
!480 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !475, file: !345, line: 516, type: !442)
!481 = !DILocation(line: 0, scope: !475)
!482 = !DILocation(line: 518, column: 10, scope: !475)
!483 = !DILocation(line: 518, column: 3, scope: !475)
!484 = distinct !DISubprogram(name: "fstatat64", scope: !345, file: !345, line: 523, type: !485, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!8, !8, !13, !442, !8}
!487 = !{!488, !489, !490, !491}
!488 = !DILocalVariable(name: "__fd", arg: 1, scope: !484, file: !345, line: 523, type: !8)
!489 = !DILocalVariable(name: "__filename", arg: 2, scope: !484, file: !345, line: 523, type: !13)
!490 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !484, file: !345, line: 523, type: !442)
!491 = !DILocalVariable(name: "__flag", arg: 4, scope: !484, file: !345, line: 523, type: !8)
!492 = !DILocation(line: 0, scope: !484)
!493 = !DILocation(line: 526, column: 10, scope: !484)
!494 = !DILocation(line: 526, column: 3, scope: !484)
!495 = distinct !DISubprogram(name: "add_params", scope: !3, file: !3, line: 40, type: !496, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !500)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !498, !30}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!500 = !{!501, !502}
!501 = !DILocalVariable(name: "params", arg: 1, scope: !495, file: !3, line: 40, type: !498)
!502 = !DILocalVariable(name: "n", arg: 2, scope: !495, file: !3, line: 40, type: !30)
!503 = !DILocation(line: 0, scope: !495)
!504 = !DILocation(line: 43, column: 21, scope: !495)
!505 = !DILocation(line: 43, column: 19, scope: !495)
!506 = !DILocation(line: 46, column: 11, scope: !495)
!507 = !DILocation(line: 46, column: 29, scope: !495)
!508 = !DILocation(line: 46, column: 27, scope: !495)
!509 = !DILocation(line: 47, column: 4, scope: !495)
!510 = !DILocation(line: 48, column: 6, scope: !495)
!511 = !DILocation(line: 46, column: 3, scope: !495)
!512 = !DILocation(line: 50, column: 23, scope: !495)
!513 = !DILocation(line: 51, column: 1, scope: !495)
!514 = distinct !DISubprogram(name: "set_param_value", scope: !3, file: !3, line: 56, type: !515, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !13, !8}
!517 = !{!518, !519, !520}
!518 = !DILocalVariable(name: "name", arg: 1, scope: !514, file: !3, line: 56, type: !13)
!519 = !DILocalVariable(name: "value", arg: 2, scope: !514, file: !3, line: 56, type: !8)
!520 = !DILocalVariable(name: "i", scope: !514, file: !3, line: 58, type: !30)
!521 = !DILocation(line: 0, scope: !514)
!522 = !DILocation(line: 61, column: 3, scope: !514)
!523 = !DILocation(line: 64, column: 8, scope: !524)
!524 = distinct !DILexicalBlock(scope: !514, file: !3, line: 64, column: 3)
!525 = !DILocation(line: 0, scope: !524)
!526 = !DILocation(line: 64, column: 19, scope: !527)
!527 = distinct !DILexicalBlock(scope: !524, file: !3, line: 64, column: 3)
!528 = !DILocation(line: 64, column: 17, scope: !527)
!529 = !DILocation(line: 64, column: 3, scope: !524)
!530 = !DILocation(line: 65, column: 17, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !3, line: 65, column: 9)
!532 = !DILocation(line: 65, column: 36, scope: !531)
!533 = !DILocation(line: 65, column: 9, scope: !531)
!534 = !DILocation(line: 65, column: 50, scope: !531)
!535 = !DILocation(line: 65, column: 9, scope: !527)
!536 = !DILocation(line: 67, column: 14, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 67, column: 6)
!538 = distinct !DILexicalBlock(scope: !531, file: !3, line: 66, column: 7)
!539 = !DILocation(line: 67, column: 33, scope: !537)
!540 = !DILocation(line: 67, column: 12, scope: !537)
!541 = !DILocation(line: 67, column: 6, scope: !538)
!542 = !DILocation(line: 69, column: 23, scope: !537)
!543 = !DILocation(line: 68, column: 4, scope: !537)
!544 = !DILocation(line: 71, column: 30, scope: !545)
!545 = distinct !DILexicalBlock(scope: !537, file: !3, line: 71, column: 11)
!546 = !DILocation(line: 71, column: 40, scope: !545)
!547 = !DILocation(line: 72, column: 4, scope: !545)
!548 = !DILocation(line: 72, column: 13, scope: !545)
!549 = !DILocation(line: 71, column: 11, scope: !537)
!550 = !DILocation(line: 74, column: 23, scope: !545)
!551 = !DILocation(line: 73, column: 4, scope: !545)
!552 = !DILocation(line: 78, column: 25, scope: !553)
!553 = distinct !DILexicalBlock(scope: !545, file: !3, line: 77, column: 4)
!554 = !DILocation(line: 78, column: 31, scope: !553)
!555 = !DILocation(line: 79, column: 6, scope: !553)
!556 = !DILocation(line: 79, column: 25, scope: !553)
!557 = !DILocation(line: 79, column: 29, scope: !553)
!558 = !DILocation(line: 64, column: 40, scope: !527)
!559 = !DILocation(line: 64, column: 3, scope: !527)
!560 = distinct !{!560, !529, !561}
!561 = !DILocation(line: 82, column: 7, scope: !524)
!562 = !DILocation(line: 85, column: 3, scope: !514)
!563 = !DILocation(line: 86, column: 1, scope: !514)
!564 = distinct !DISubprogram(name: "get_num_compiler_params", scope: !3, file: !3, line: 92, type: !565, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!565 = !DISubroutineType(types: !566)
!566 = !{!30}
!567 = !DILocation(line: 94, column: 10, scope: !564)
!568 = !DILocation(line: 94, column: 3, scope: !564)
