; ModuleID = 'pointer-set.bc'
source_filename = "pointer-set.c"
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
%struct.pointer_set_t = type { i64, i64, i64, i8** }
%struct.pointer_map_t = type { i64, i64, i64, i8**, i8** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !39 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !53, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !54, metadata !DIExpression()), !dbg !55
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !56
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !57
  ret i32 %call, !dbg !58
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !59 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !62
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !63
  ret i32 %call, !dbg !64
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !125, metadata !DIExpression()), !dbg !126
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !127
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !127
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !127
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !127
  %cmp = icmp uge i8* %0, %1, !dbg !127
  %conv1 = zext i1 %cmp to i64, !dbg !127
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !127
  %tobool = icmp eq i64 %expval, 0, !dbg !127
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !127

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !127
  br label %cond.end, !dbg !127

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !127
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !127
  %2 = load i8, i8* %0, align 1, !dbg !127
  %conv3 = zext i8 %2 to i32, !dbg !127
  br label %cond.end, !dbg !127

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !127
  ret i32 %cond, !dbg !128
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !129 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !131, metadata !DIExpression()), !dbg !132
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !133
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !133
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !133
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !133
  %cmp = icmp uge i8* %0, %1, !dbg !133
  %conv1 = zext i1 %cmp to i64, !dbg !133
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !133
  %tobool = icmp eq i64 %expval, 0, !dbg !133
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !133

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !133
  br label %cond.end, !dbg !133

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !133
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !133
  %2 = load i8, i8* %0, align 1, !dbg !133
  %conv3 = zext i8 %2 to i32, !dbg !133
  br label %cond.end, !dbg !133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !133
  ret i32 %cond, !dbg !134
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !135 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !136
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !136
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !136
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !136
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !136
  %cmp = icmp uge i8* %1, %2, !dbg !136
  %conv1 = zext i1 %cmp to i64, !dbg !136
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !136
  %tobool = icmp eq i64 %expval, 0, !dbg !136
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !136

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !136
  br label %cond.end, !dbg !136

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !136
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !136
  %3 = load i8, i8* %1, align 1, !dbg !136
  %conv3 = zext i8 %3 to i32, !dbg !136
  br label %cond.end, !dbg !136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !136
  ret i32 %cond, !dbg !137
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !138 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !144
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !145
  ret i32 %call, !dbg !146
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !147 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !151, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !152, metadata !DIExpression()), !dbg !153
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !154
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !154
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !154
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !154
  %cmp = icmp uge i8* %0, %1, !dbg !154
  %conv1 = zext i1 %cmp to i64, !dbg !154
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !154
  %tobool = icmp eq i64 %expval, 0, !dbg !154
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !154

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !154
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !154
  br label %cond.end, !dbg !154

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !154
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !154
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !154
  store i8 %conv2, i8* %0, align 1, !dbg !154
  %conv6 = and i32 %__c, 255, !dbg !154
  br label %cond.end, !dbg !154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !154
  ret i32 %cond, !dbg !155
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !158, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !159, metadata !DIExpression()), !dbg !160
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !161
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !161
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !161
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !161
  %cmp = icmp uge i8* %0, %1, !dbg !161
  %conv1 = zext i1 %cmp to i64, !dbg !161
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !161
  %tobool = icmp eq i64 %expval, 0, !dbg !161
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !161

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !161
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !161
  br label %cond.end, !dbg !161

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !161
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !161
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !161
  store i8 %conv2, i8* %0, align 1, !dbg !161
  %conv6 = and i32 %__c, 255, !dbg !161
  br label %cond.end, !dbg !161

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !161
  ret i32 %cond, !dbg !162
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !163 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !167
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !167
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !167
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !167
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !167
  %cmp = icmp uge i8* %1, %2, !dbg !167
  %conv1 = zext i1 %cmp to i64, !dbg !167
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !167
  %tobool = icmp eq i64 %expval, 0, !dbg !167
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !167

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !167
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !167
  br label %cond.end, !dbg !167

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !167
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !167
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !167
  store i8 %conv4, i8* %1, align 1, !dbg !167
  %conv6 = and i32 %__c, 255, !dbg !167
  br label %cond.end, !dbg !167

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !167
  ret i32 %cond, !dbg !168
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !175, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i64* %__n, metadata !176, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !177, metadata !DIExpression()), !dbg !178
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !179
  ret i64 %call, !dbg !180
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !181 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !183, metadata !DIExpression()), !dbg !184
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !185
  %0 = load i32, i32* %_flags, align 8, !dbg !185
  %and = lshr i32 %0, 4, !dbg !185
  %and.lobit = and i32 %and, 1, !dbg !185
  ret i32 %and.lobit, !dbg !186
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !189, metadata !DIExpression()), !dbg !190
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !191
  %0 = load i32, i32* %_flags, align 8, !dbg !191
  %and = lshr i32 %0, 5, !dbg !191
  %and.lobit = and i32 %and, 1, !dbg !191
  ret i32 %and.lobit, !dbg !192
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !193 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !196, metadata !DIExpression()), !dbg !197
  %__c.off = add i32 %__c, 128, !dbg !198
  %0 = icmp ult i32 %__c.off, 384, !dbg !198
  br i1 %0, label %cond.true, label %cond.end, !dbg !198

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !199
  %1 = load i32*, i32** %call, align 8, !dbg !200
  %idxprom = sext i32 %__c to i64, !dbg !201
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !201
  %2 = load i32, i32* %arrayidx, align 4, !dbg !201
  br label %cond.end, !dbg !202

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !202
  ret i32 %cond, !dbg !203
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !206, metadata !DIExpression()), !dbg !207
  %__c.off = add i32 %__c, 128, !dbg !208
  %0 = icmp ult i32 %__c.off, 384, !dbg !208
  br i1 %0, label %cond.true, label %cond.end, !dbg !208

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !209
  %1 = load i32*, i32** %call, align 8, !dbg !210
  %idxprom = sext i32 %__c to i64, !dbg !211
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !211
  %2 = load i32, i32* %arrayidx, align 4, !dbg !211
  br label %cond.end, !dbg !212

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !212
  ret i32 %cond, !dbg !213
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !214 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !219, metadata !DIExpression()), !dbg !220
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !221
  %conv = trunc i64 %call to i32, !dbg !222
  ret i32 %conv, !dbg !223
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !224 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !228, metadata !DIExpression()), !dbg !229
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !230
  ret i64 %call, !dbg !231
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !237, metadata !DIExpression()), !dbg !238
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !239
  ret i64 %call, !dbg !240
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !241 {
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
define dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #3 !dbg !495 {
entry:
  %call = tail call i8* @xmalloc(i64 32) #5, !dbg !500
  %0 = bitcast i8* %call to %struct.pointer_set_t*, !dbg !500
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %0, metadata !499, metadata !DIExpression()), !dbg !501
  %n_elements = getelementptr inbounds i8, i8* %call, i64 16, !dbg !502
  %1 = bitcast i8* %n_elements to i64*, !dbg !502
  store i64 0, i64* %1, align 8, !dbg !503
  %log_slots = bitcast i8* %call to i64*, !dbg !504
  store i64 8, i64* %log_slots, align 8, !dbg !505
  %n_slots = getelementptr inbounds i8, i8* %call, i64 8, !dbg !506
  %2 = bitcast i8* %n_slots to i64*, !dbg !506
  store i64 256, i64* %2, align 8, !dbg !507
  %call3 = tail call i8* @xcalloc(i64 256, i64 8) #5, !dbg !508
  %slots = getelementptr inbounds i8, i8* %call, i64 24, !dbg !509
  %3 = bitcast i8* %slots to i8**, !dbg !510
  store i8* %call3, i8** %3, align 8, !dbg !510
  ret %struct.pointer_set_t* %0, !dbg !511
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pointer_set_destroy(%struct.pointer_set_t* %pset) local_unnamed_addr #3 !dbg !512 {
entry:
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %pset, metadata !516, metadata !DIExpression()), !dbg !517
  %slots = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 3, !dbg !518
  %0 = bitcast i8*** %slots to i8**, !dbg !518
  %1 = load i8*, i8** %0, align 8, !dbg !518
  tail call void @free(i8* %1) #5, !dbg !518
  %2 = bitcast %struct.pointer_set_t* %pset to i8*, !dbg !519
  tail call void @free(i8* %2) #5, !dbg !519
  ret void, !dbg !520
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @pointer_set_contains(%struct.pointer_set_t* %pset, i8* %p) local_unnamed_addr #3 !dbg !521 {
entry:
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %pset, metadata !527, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i8* %p, metadata !528, metadata !DIExpression()), !dbg !530
  %n_slots = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 1, !dbg !531
  %0 = load i64, i64* %n_slots, align 8, !dbg !531
  %log_slots = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 0, !dbg !532
  %1 = load i64, i64* %log_slots, align 8, !dbg !532
  %call = tail call fastcc i64 @hash1(i8* %p, i64 %0, i64 %1) #6, !dbg !533
  call void @llvm.dbg.value(metadata i64 %call, metadata !529, metadata !DIExpression()), !dbg !530
  %slots1 = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 3, !dbg !534
  %2 = load i8**, i8*** %slots1, align 8, !dbg !538
  br label %while.cond, !dbg !539

while.cond:                                       ; preds = %if.else5, %entry
  %n.0 = phi i64 [ %call, %entry ], [ %spec.select, %if.else5 ], !dbg !530
  call void @llvm.dbg.value(metadata i64 %n.0, metadata !529, metadata !DIExpression()), !dbg !530
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %n.0, !dbg !540
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !540
  %cmp = icmp eq i8* %3, %p, !dbg !541
  br i1 %cmp, label %cleanup, label %if.else, !dbg !542

if.else:                                          ; preds = %while.cond
  %cmp3 = icmp eq i8* %3, null, !dbg !543
  br i1 %cmp3, label %cleanup, label %if.else5, !dbg !544

if.else5:                                         ; preds = %if.else
  %inc = add i64 %n.0, 1, !dbg !545
  call void @llvm.dbg.value(metadata i64 %inc, metadata !529, metadata !DIExpression()), !dbg !530
  %4 = load i64, i64* %n_slots, align 8, !dbg !547
  %cmp7 = icmp eq i64 %inc, %4, !dbg !549
  %spec.select = select i1 %cmp7, i64 0, i64 %inc, !dbg !550
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !529, metadata !DIExpression()), !dbg !530
  br label %while.cond, !dbg !539, !llvm.loop !551

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i32 [ 1, %while.cond ], [ 0, %if.else ], !dbg !538
  ret i32 %retval.0, !dbg !553
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @hash1(i8* %p, i64 %max, i64 %logmax) unnamed_addr #0 !dbg !554 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !558, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 %max, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 %logmax, metadata !560, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 -7046029254386353130, metadata !561, metadata !DIExpression()), !dbg !564
  %sub = sub i64 64, %logmax, !dbg !565
  call void @llvm.dbg.value(metadata i64 %sub, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = ptrtoint i8* %p to i64, !dbg !566
  %mul = mul i64 %0, -7046029254386353130, !dbg !567
  %shr = lshr i64 %mul, %sub, !dbg !568
  %sub1 = add i64 %max, -1, !dbg !569
  %and = and i64 %shr, %sub1, !dbg !570
  ret i64 %and, !dbg !571
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pointer_set_insert(%struct.pointer_set_t* %pset, i8* %p) local_unnamed_addr #3 !dbg !572 {
entry:
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %pset, metadata !576, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i8* %p, metadata !577, metadata !DIExpression()), !dbg !589
  %n_elements = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 2, !dbg !590
  %0 = load i64, i64* %n_elements, align 8, !dbg !590
  %n_slots = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 1, !dbg !591
  %1 = load i64, i64* %n_slots, align 8, !dbg !591
  %div = lshr i64 %1, 2, !dbg !592
  %cmp = icmp ugt i64 %0, %div, !dbg !593
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !594

entry.if.end_crit_edge:                           ; preds = %entry
  %slots10.phi.trans.insert = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 3, !dbg !589
  %.pre = load i8**, i8*** %slots10.phi.trans.insert, align 8, !dbg !595
  %log_slots12.phi.trans.insert = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 0, !dbg !589
  %.pre1 = load i64, i64* %log_slots12.phi.trans.insert, align 8, !dbg !596
  br label %if.end, !dbg !594

if.then:                                          ; preds = %entry
  %log_slots = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 0, !dbg !597
  %2 = load i64, i64* %log_slots, align 8, !dbg !597
  %add = add i64 %2, 1, !dbg !598
  call void @llvm.dbg.value(metadata i64 %add, metadata !579, metadata !DIExpression()), !dbg !599
  %mul = shl i64 %1, 1, !dbg !600
  call void @llvm.dbg.value(metadata i64 %mul, metadata !582, metadata !DIExpression()), !dbg !599
  %call = tail call i8* @xcalloc(i64 %mul, i64 8) #5, !dbg !601
  %3 = bitcast i8* %call to i8**, !dbg !601
  call void @llvm.dbg.value(metadata i8** %3, metadata !583, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 0, metadata !584, metadata !DIExpression()), !dbg !599
  %slots = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 3, !dbg !599
  br label %for.cond, !dbg !602

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i64 [ 0, %if.then ], [ %inc, %for.body ], !dbg !603
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !584, metadata !DIExpression()), !dbg !599
  %4 = load i64, i64* %n_slots, align 8, !dbg !604
  %cmp3 = icmp ult i64 %i.0, %4, !dbg !605
  %5 = load i8**, i8*** %slots, align 8, !dbg !599
  br i1 %cmp3, label %for.body, label %for.end, !dbg !606

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %i.0, !dbg !607
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !607
  call void @llvm.dbg.value(metadata i8* %6, metadata !585, metadata !DIExpression()), !dbg !608
  %call4 = tail call fastcc i64 @insert_aux(i8* %6, i8** %3, i64 %mul, i64 %add) #6, !dbg !609
  call void @llvm.dbg.value(metadata i64 %call4, metadata !578, metadata !DIExpression()), !dbg !589
  %arrayidx5 = getelementptr inbounds i8*, i8** %3, i64 %call4, !dbg !610
  store i8* %6, i8** %arrayidx5, align 8, !dbg !611
  %inc = add i64 %i.0, 1, !dbg !612
  call void @llvm.dbg.value(metadata i64 %inc, metadata !584, metadata !DIExpression()), !dbg !599
  br label %for.cond, !dbg !613, !llvm.loop !614

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i8** [ %5, %for.cond ], !dbg !599
  %7 = bitcast i8** %.lcssa to i8*, !dbg !616
  tail call void @free(i8* %7) #5, !dbg !616
  store i64 %mul, i64* %n_slots, align 8, !dbg !617
  store i64 %add, i64* %log_slots, align 8, !dbg !618
  %8 = bitcast i8*** %slots to i8**, !dbg !619
  store i8* %call, i8** %8, align 8, !dbg !619
  br label %if.end, !dbg !620

if.end:                                           ; preds = %entry.if.end_crit_edge, %for.end
  %9 = phi i64 [ %.pre1, %entry.if.end_crit_edge ], [ %add, %for.end ], !dbg !596
  %10 = phi i64 [ %1, %entry.if.end_crit_edge ], [ %mul, %for.end ], !dbg !621
  %11 = phi i8** [ %.pre, %entry.if.end_crit_edge ], [ %3, %for.end ], !dbg !595
  %slots10 = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 3, !dbg !595
  %call13 = tail call fastcc i64 @insert_aux(i8* %p, i8** %11, i64 %10, i64 %9) #6, !dbg !622
  call void @llvm.dbg.value(metadata i64 %call13, metadata !578, metadata !DIExpression()), !dbg !589
  %12 = load i8**, i8*** %slots10, align 8, !dbg !623
  %arrayidx15 = getelementptr inbounds i8*, i8** %12, i64 %call13, !dbg !625
  %13 = load i8*, i8** %arrayidx15, align 8, !dbg !625
  %tobool = icmp eq i8* %13, null, !dbg !625
  br i1 %tobool, label %if.end17, label %cleanup, !dbg !626

if.end17:                                         ; preds = %if.end
  store i8* %p, i8** %arrayidx15, align 8, !dbg !627
  %14 = load i64, i64* %n_elements, align 8, !dbg !628
  %inc21 = add i64 %14, 1, !dbg !628
  store i64 %inc21, i64* %n_elements, align 8, !dbg !628
  br label %cleanup, !dbg !629

cleanup:                                          ; preds = %if.end, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ 1, %if.end ], !dbg !589
  ret i32 %retval.0, !dbg !630
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @insert_aux(i8* %p, i8** %slots, i64 %n_slots, i64 %log_slots) unnamed_addr #0 !dbg !631 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !635, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i8** %slots, metadata !636, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i64 %n_slots, metadata !637, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i64 %log_slots, metadata !638, metadata !DIExpression()), !dbg !640
  %call = tail call fastcc i64 @hash1(i8* %p, i64 %n_slots, i64 %log_slots) #6, !dbg !641
  call void @llvm.dbg.value(metadata i64 %call, metadata !639, metadata !DIExpression()), !dbg !640
  br label %while.cond, !dbg !642

while.cond:                                       ; preds = %if.else, %entry
  %n.0 = phi i64 [ %call, %entry ], [ %spec.select, %if.else ], !dbg !640
  call void @llvm.dbg.value(metadata i64 %n.0, metadata !639, metadata !DIExpression()), !dbg !640
  %arrayidx = getelementptr inbounds i8*, i8** %slots, i64 %n.0, !dbg !643
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !643
  %cmp = icmp eq i8* %0, %p, !dbg !646
  %cmp2 = icmp eq i8* %0, null, !dbg !647
  %or.cond = or i1 %cmp, %cmp2, !dbg !648
  br i1 %or.cond, label %if.then, label %if.else, !dbg !648

if.then:                                          ; preds = %while.cond
  %n.0.lcssa = phi i64 [ %n.0, %while.cond ], !dbg !640
  call void @llvm.dbg.value(metadata i64 %n.0.lcssa, metadata !639, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i64 %n.0.lcssa, metadata !639, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i64 %n.0.lcssa, metadata !639, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i64 %n.0.lcssa, metadata !639, metadata !DIExpression()), !dbg !640
  ret i64 %n.0.lcssa, !dbg !649

if.else:                                          ; preds = %while.cond
  %inc = add i64 %n.0, 1, !dbg !650
  call void @llvm.dbg.value(metadata i64 %inc, metadata !639, metadata !DIExpression()), !dbg !640
  %cmp3 = icmp eq i64 %inc, %n_slots, !dbg !652
  %spec.select = select i1 %cmp3, i64 0, i64 %inc, !dbg !654
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !639, metadata !DIExpression()), !dbg !640
  br label %while.cond, !dbg !642, !llvm.loop !655
}

; Function Attrs: nounwind uwtable
define dso_local void @pointer_set_traverse(%struct.pointer_set_t* %pset, i8 (i8*, i8*)* %fn, i8* %data) local_unnamed_addr #3 !dbg !657 {
entry:
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %pset, metadata !664, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i8 (i8*, i8*)* %fn, metadata !665, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i8* %data, metadata !666, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i64 0, metadata !667, metadata !DIExpression()), !dbg !668
  %slots1 = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 3, !dbg !669
  %n_slots = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %pset, i64 0, i32 1, !dbg !673
  br label %for.cond, !dbg !674

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], !dbg !675
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !667, metadata !DIExpression()), !dbg !668
  %0 = load i64, i64* %n_slots, align 8, !dbg !676
  %cmp = icmp ult i64 %i.0, %0, !dbg !677
  br i1 %cmp, label %for.body, label %for.end, !dbg !678

for.body:                                         ; preds = %for.cond
  %1 = load i8**, i8*** %slots1, align 8, !dbg !679
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %i.0, !dbg !680
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !680
  %tobool = icmp eq i8* %2, null, !dbg !680
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !681

land.lhs.true:                                    ; preds = %for.body
  %call = tail call zeroext i8 %fn(i8* nonnull %2, i8* %data) #5, !dbg !682
  %tobool3 = icmp eq i8 %call, 0, !dbg !682
  br i1 %tobool3, label %for.end, label %for.inc, !dbg !683

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %inc = add i64 %i.0, 1, !dbg !684
  call void @llvm.dbg.value(metadata i64 %inc, metadata !667, metadata !DIExpression()), !dbg !668
  br label %for.cond, !dbg !685, !llvm.loop !686

for.end:                                          ; preds = %land.lhs.true, %for.cond
  ret void, !dbg !688
}

; Function Attrs: nounwind uwtable
define dso_local %struct.pointer_map_t* @pointer_map_create() local_unnamed_addr #3 !dbg !689 {
entry:
  %call = tail call i8* @xmalloc(i64 40) #5, !dbg !694
  %0 = bitcast i8* %call to %struct.pointer_map_t*, !dbg !694
  call void @llvm.dbg.value(metadata %struct.pointer_map_t* %0, metadata !693, metadata !DIExpression()), !dbg !695
  %n_elements = getelementptr inbounds i8, i8* %call, i64 16, !dbg !696
  %1 = bitcast i8* %n_elements to i64*, !dbg !696
  store i64 0, i64* %1, align 8, !dbg !697
  %log_slots = bitcast i8* %call to i64*, !dbg !698
  store i64 8, i64* %log_slots, align 8, !dbg !699
  %n_slots = getelementptr inbounds i8, i8* %call, i64 8, !dbg !700
  %2 = bitcast i8* %n_slots to i64*, !dbg !700
  store i64 256, i64* %2, align 8, !dbg !701
  %call3 = tail call i8* @xcalloc(i64 256, i64 8) #5, !dbg !702
  %keys = getelementptr inbounds i8, i8* %call, i64 24, !dbg !703
  %3 = bitcast i8* %keys to i8**, !dbg !704
  store i8* %call3, i8** %3, align 8, !dbg !704
  %4 = load i64, i64* %2, align 8, !dbg !705
  %call5 = tail call i8* @xcalloc(i64 %4, i64 8) #5, !dbg !705
  %values = getelementptr inbounds i8, i8* %call, i64 32, !dbg !706
  %5 = bitcast i8* %values to i8**, !dbg !707
  store i8* %call5, i8** %5, align 8, !dbg !707
  ret %struct.pointer_map_t* %0, !dbg !708
}

; Function Attrs: nounwind uwtable
define dso_local void @pointer_map_destroy(%struct.pointer_map_t* %pmap) local_unnamed_addr #3 !dbg !709 {
entry:
  call void @llvm.dbg.value(metadata %struct.pointer_map_t* %pmap, metadata !713, metadata !DIExpression()), !dbg !714
  %keys = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 3, !dbg !715
  %0 = bitcast i8*** %keys to i8**, !dbg !715
  %1 = load i8*, i8** %0, align 8, !dbg !715
  tail call void @free(i8* %1) #5, !dbg !715
  %values = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 4, !dbg !716
  %2 = bitcast i8*** %values to i8**, !dbg !716
  %3 = load i8*, i8** %2, align 8, !dbg !716
  tail call void @free(i8* %3) #5, !dbg !716
  %4 = bitcast %struct.pointer_map_t* %pmap to i8*, !dbg !717
  tail call void @free(i8* %4) #5, !dbg !717
  ret void, !dbg !718
}

; Function Attrs: nounwind uwtable
define dso_local i8** @pointer_map_contains(%struct.pointer_map_t* %pmap, i8* %p) local_unnamed_addr #3 !dbg !719 {
entry:
  call void @llvm.dbg.value(metadata %struct.pointer_map_t* %pmap, metadata !725, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i8* %p, metadata !726, metadata !DIExpression()), !dbg !728
  %n_slots = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 1, !dbg !729
  %0 = load i64, i64* %n_slots, align 8, !dbg !729
  %log_slots = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 0, !dbg !730
  %1 = load i64, i64* %log_slots, align 8, !dbg !730
  %call = tail call fastcc i64 @hash1(i8* %p, i64 %0, i64 %1) #6, !dbg !731
  call void @llvm.dbg.value(metadata i64 %call, metadata !727, metadata !DIExpression()), !dbg !728
  %keys = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 3, !dbg !732
  %2 = load i8**, i8*** %keys, align 8, !dbg !732
  br label %while.cond, !dbg !735

while.cond:                                       ; preds = %if.else6, %entry
  %n.0 = phi i64 [ %call, %entry ], [ %spec.select, %if.else6 ], !dbg !728
  call void @llvm.dbg.value(metadata i64 %n.0, metadata !727, metadata !DIExpression()), !dbg !728
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %n.0, !dbg !736
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !736
  %cmp = icmp eq i8* %3, %p, !dbg !737
  br i1 %cmp, label %if.then, label %if.else, !dbg !738

if.then:                                          ; preds = %while.cond
  %n.0.lcssa = phi i64 [ %n.0, %while.cond ], !dbg !728
  call void @llvm.dbg.value(metadata i64 %n.0.lcssa, metadata !727, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i64 %n.0.lcssa, metadata !727, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i64 %n.0.lcssa, metadata !727, metadata !DIExpression()), !dbg !728
  %values = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 4, !dbg !739
  %4 = load i8**, i8*** %values, align 8, !dbg !739
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 %n.0.lcssa, !dbg !740
  br label %cleanup, !dbg !741

if.else:                                          ; preds = %while.cond
  %cmp4 = icmp eq i8* %3, null, !dbg !742
  br i1 %cmp4, label %cleanup.loopexit, label %if.else6, !dbg !744

if.else6:                                         ; preds = %if.else
  %inc = add i64 %n.0, 1, !dbg !745
  call void @llvm.dbg.value(metadata i64 %inc, metadata !727, metadata !DIExpression()), !dbg !728
  %5 = load i64, i64* %n_slots, align 8, !dbg !747
  %cmp8 = icmp eq i64 %inc, %5, !dbg !749
  %spec.select = select i1 %cmp8, i64 0, i64 %inc, !dbg !750
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !727, metadata !DIExpression()), !dbg !728
  br label %while.cond, !dbg !735, !llvm.loop !751

cleanup.loopexit:                                 ; preds = %if.else
  br label %cleanup, !dbg !753

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i8** [ %arrayidx1, %if.then ], [ null, %cleanup.loopexit ], !dbg !732
  ret i8** %retval.0, !dbg !753
}

; Function Attrs: nounwind uwtable
define dso_local i8** @pointer_map_insert(%struct.pointer_map_t* %pmap, i8* %p) local_unnamed_addr #3 !dbg !754 {
entry:
  call void @llvm.dbg.value(metadata %struct.pointer_map_t* %pmap, metadata !758, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i8* %p, metadata !759, metadata !DIExpression()), !dbg !773
  %n_elements = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 2, !dbg !774
  %0 = load i64, i64* %n_elements, align 8, !dbg !774
  %n_slots = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 1, !dbg !775
  %1 = load i64, i64* %n_slots, align 8, !dbg !775
  %div = lshr i64 %1, 2, !dbg !776
  %cmp = icmp ugt i64 %0, %div, !dbg !777
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge, !dbg !778

entry.if.end18_crit_edge:                         ; preds = %entry
  %keys19.phi.trans.insert = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 3, !dbg !773
  %.pre = load i8**, i8*** %keys19.phi.trans.insert, align 8, !dbg !779
  %log_slots21.phi.trans.insert = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 0, !dbg !773
  %.pre1 = load i64, i64* %log_slots21.phi.trans.insert, align 8, !dbg !780
  br label %if.end18, !dbg !778

if.then:                                          ; preds = %entry
  %log_slots = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 0, !dbg !781
  %2 = load i64, i64* %log_slots, align 8, !dbg !781
  %add = add i64 %2, 1, !dbg !782
  call void @llvm.dbg.value(metadata i64 %add, metadata !761, metadata !DIExpression()), !dbg !783
  %mul = shl i64 %1, 1, !dbg !784
  call void @llvm.dbg.value(metadata i64 %mul, metadata !764, metadata !DIExpression()), !dbg !783
  %call = tail call i8* @xcalloc(i64 %mul, i64 8) #5, !dbg !785
  %3 = bitcast i8* %call to i8**, !dbg !785
  call void @llvm.dbg.value(metadata i8** %3, metadata !765, metadata !DIExpression()), !dbg !783
  %call2 = tail call i8* @xcalloc(i64 %mul, i64 8) #5, !dbg !786
  %4 = bitcast i8* %call2 to i8**, !dbg !786
  call void @llvm.dbg.value(metadata i8** %4, metadata !766, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i64 0, metadata !767, metadata !DIExpression()), !dbg !783
  %keys = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 3, !dbg !783
  %values = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 4, !dbg !787
  br label %for.cond, !dbg !788

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i64 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !789
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !767, metadata !DIExpression()), !dbg !783
  %5 = load i64, i64* %n_slots, align 8, !dbg !790
  %cmp4 = icmp ult i64 %i.0, %5, !dbg !791
  %6 = load i8**, i8*** %keys, align 8, !dbg !783
  br i1 %cmp4, label %for.body, label %for.end, !dbg !792

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %i.0, !dbg !793
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !793
  %tobool = icmp eq i8* %7, null, !dbg !793
  br i1 %tobool, label %for.inc, label %if.then5, !dbg !794

if.then5:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i8* %7, metadata !768, metadata !DIExpression()), !dbg !787
  %call8 = tail call fastcc i64 @insert_aux(i8* nonnull %7, i8** %3, i64 %mul, i64 %add) #6, !dbg !795
  call void @llvm.dbg.value(metadata i64 %call8, metadata !760, metadata !DIExpression()), !dbg !773
  %arrayidx9 = getelementptr inbounds i8*, i8** %3, i64 %call8, !dbg !796
  store i8* %7, i8** %arrayidx9, align 8, !dbg !797
  %8 = load i8**, i8*** %values, align 8, !dbg !798
  %arrayidx10 = getelementptr inbounds i8*, i8** %8, i64 %i.0, !dbg !799
  %9 = bitcast i8** %arrayidx10 to i64*, !dbg !799
  %10 = load i64, i64* %9, align 8, !dbg !799
  %arrayidx11 = getelementptr inbounds i8*, i8** %4, i64 %call8, !dbg !800
  %11 = bitcast i8** %arrayidx11 to i64*, !dbg !801
  store i64 %10, i64* %11, align 8, !dbg !801
  br label %for.inc, !dbg !802

for.inc:                                          ; preds = %for.body, %if.then5
  %inc = add i64 %i.0, 1, !dbg !803
  call void @llvm.dbg.value(metadata i64 %inc, metadata !767, metadata !DIExpression()), !dbg !783
  br label %for.cond, !dbg !804, !llvm.loop !805

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i8** [ %6, %for.cond ], !dbg !783
  %12 = bitcast i8** %.lcssa to i8*, !dbg !807
  tail call void @free(i8* %12) #5, !dbg !807
  %13 = bitcast i8*** %values to i8**, !dbg !808
  %14 = load i8*, i8** %13, align 8, !dbg !808
  tail call void @free(i8* %14) #5, !dbg !808
  store i64 %mul, i64* %n_slots, align 8, !dbg !809
  store i64 %add, i64* %log_slots, align 8, !dbg !810
  %15 = bitcast i8*** %keys to i8**, !dbg !811
  store i8* %call, i8** %15, align 8, !dbg !811
  store i8* %call2, i8** %13, align 8, !dbg !812
  br label %if.end18, !dbg !813

if.end18:                                         ; preds = %entry.if.end18_crit_edge, %for.end
  %16 = phi i64 [ %.pre1, %entry.if.end18_crit_edge ], [ %add, %for.end ], !dbg !780
  %17 = phi i64 [ %1, %entry.if.end18_crit_edge ], [ %mul, %for.end ], !dbg !814
  %18 = phi i8** [ %.pre, %entry.if.end18_crit_edge ], [ %3, %for.end ], !dbg !779
  %keys19 = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 3, !dbg !779
  %call22 = tail call fastcc i64 @insert_aux(i8* %p, i8** %18, i64 %17, i64 %16) #6, !dbg !815
  call void @llvm.dbg.value(metadata i64 %call22, metadata !760, metadata !DIExpression()), !dbg !773
  %19 = load i8**, i8*** %keys19, align 8, !dbg !816
  %arrayidx24 = getelementptr inbounds i8*, i8** %19, i64 %call22, !dbg !818
  %20 = load i8*, i8** %arrayidx24, align 8, !dbg !818
  %tobool25 = icmp eq i8* %20, null, !dbg !818
  br i1 %tobool25, label %if.then26, label %if.end31, !dbg !819

if.then26:                                        ; preds = %if.end18
  %21 = load i64, i64* %n_elements, align 8, !dbg !820
  %inc28 = add i64 %21, 1, !dbg !820
  store i64 %inc28, i64* %n_elements, align 8, !dbg !820
  store i8* %p, i8** %arrayidx24, align 8, !dbg !822
  br label %if.end31, !dbg !823

if.end31:                                         ; preds = %if.end18, %if.then26
  %values32 = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 4, !dbg !824
  %22 = load i8**, i8*** %values32, align 8, !dbg !824
  %arrayidx33 = getelementptr inbounds i8*, i8** %22, i64 %call22, !dbg !825
  ret i8** %arrayidx33, !dbg !826
}

; Function Attrs: nounwind uwtable
define dso_local void @pointer_map_traverse(%struct.pointer_map_t* %pmap, i8 (i8*, i8**, i8*)* %fn, i8* %data) local_unnamed_addr #3 !dbg !827 {
entry:
  call void @llvm.dbg.value(metadata %struct.pointer_map_t* %pmap, metadata !834, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8 (i8*, i8**, i8*)* %fn, metadata !835, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8* %data, metadata !836, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i64 0, metadata !837, metadata !DIExpression()), !dbg !838
  %keys1 = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 3, !dbg !839
  %n_slots = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 1, !dbg !843
  %values = getelementptr inbounds %struct.pointer_map_t, %struct.pointer_map_t* %pmap, i64 0, i32 4, !dbg !844
  br label %for.cond, !dbg !845

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], !dbg !846
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !837, metadata !DIExpression()), !dbg !838
  %0 = load i64, i64* %n_slots, align 8, !dbg !847
  %cmp = icmp ult i64 %i.0, %0, !dbg !848
  br i1 %cmp, label %for.body, label %for.end, !dbg !849

for.body:                                         ; preds = %for.cond
  %1 = load i8**, i8*** %keys1, align 8, !dbg !850
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %i.0, !dbg !851
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !851
  %tobool = icmp eq i8* %2, null, !dbg !851
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !852

land.lhs.true:                                    ; preds = %for.body
  %3 = load i8**, i8*** %values, align 8, !dbg !853
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %i.0, !dbg !854
  %call = tail call zeroext i8 %fn(i8* nonnull %2, i8** %arrayidx3, i8* %data) #5, !dbg !855
  %tobool4 = icmp eq i8 %call, 0, !dbg !855
  br i1 %tobool4, label %for.end, label %for.inc, !dbg !856

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %inc = add i64 %i.0, 1, !dbg !857
  call void @llvm.dbg.value(metadata i64 %inc, metadata !837, metadata !DIExpression()), !dbg !838
  br label %for.cond, !dbg !858, !llvm.loop !859

for.end:                                          ; preds = %land.lhs.true, %for.cond
  ret void, !dbg !861
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
!llvm.module.flags = !{!35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "pointer-set.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !6, !7, !10, !11, !13, !17, !23, !26, !34, !19}
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
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !1, line: 31, size: 256, elements: !15)
!15 = !{!16, !20, !21, !22}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "log_slots", scope: !14, file: !1, line: 33, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 46, baseType: !19)
!18 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "n_slots", scope: !14, file: !1, line: 34, baseType: !17, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !14, file: !1, line: 35, baseType: !17, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !14, file: !1, line: 37, baseType: !23, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1, line: 191, size: 320, elements: !28)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "log_slots", scope: !27, file: !1, line: 193, baseType: !17, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "n_slots", scope: !27, file: !1, line: 194, baseType: !17, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !27, file: !1, line: 195, baseType: !17, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !27, file: !1, line: 197, baseType: !23, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !27, file: !1, line: 198, baseType: !34, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!35 = !{i32 2, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!39 = distinct !DISubprogram(name: "vprintf", scope: !40, file: !40, line: 39, type: !41, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!41 = !DISubroutineType(types: !42)
!42 = !{!6, !43, !44}
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !46)
!46 = !{!47, !49, !50, !51}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !45, file: !1, baseType: !48, size: 32)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !45, file: !1, baseType: !48, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !45, file: !1, baseType: !10, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !45, file: !1, baseType: !10, size: 64, offset: 128)
!52 = !{!53, !54}
!53 = !DILocalVariable(name: "__fmt", arg: 1, scope: !39, file: !40, line: 39, type: !43)
!54 = !DILocalVariable(name: "__arg", arg: 2, scope: !39, file: !40, line: 39, type: !44)
!55 = !DILocation(line: 0, scope: !39)
!56 = !DILocation(line: 41, column: 20, scope: !39)
!57 = !DILocation(line: 41, column: 10, scope: !39)
!58 = !DILocation(line: 41, column: 3, scope: !39)
!59 = distinct !DISubprogram(name: "getchar", scope: !40, file: !40, line: 47, type: !60, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!60 = !DISubroutineType(types: !61)
!61 = !{!6}
!62 = !DILocation(line: 49, column: 16, scope: !59)
!63 = !DILocation(line: 49, column: 10, scope: !59)
!64 = !DILocation(line: 49, column: 3, scope: !59)
!65 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !40, file: !40, line: 56, type: !66, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !124)
!66 = !DISubroutineType(types: !67)
!67 = !{!6, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !70, line: 7, baseType: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 49, size: 1728, elements: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !89, !91, !92, !93, !97, !99, !101, !105, !108, !110, !113, !116, !117, !118, !119, !120}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !71, file: !72, line: 51, baseType: !6, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !71, file: !72, line: 54, baseType: !8, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !71, file: !72, line: 55, baseType: !8, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !71, file: !72, line: 56, baseType: !8, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !71, file: !72, line: 57, baseType: !8, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !71, file: !72, line: 58, baseType: !8, size: 64, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !71, file: !72, line: 59, baseType: !8, size: 64, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !71, file: !72, line: 60, baseType: !8, size: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !71, file: !72, line: 61, baseType: !8, size: 64, offset: 512)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !71, file: !72, line: 64, baseType: !8, size: 64, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !71, file: !72, line: 65, baseType: !8, size: 64, offset: 640)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !71, file: !72, line: 66, baseType: !8, size: 64, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !71, file: !72, line: 68, baseType: !87, size: 64, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !72, line: 36, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !71, file: !72, line: 70, baseType: !90, size: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !71, file: !72, line: 72, baseType: !6, size: 32, offset: 896)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !71, file: !72, line: 73, baseType: !6, size: 32, offset: 928)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !71, file: !72, line: 74, baseType: !94, size: 64, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !95, line: 152, baseType: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!96 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !71, file: !72, line: 77, baseType: !98, size: 16, offset: 1024)
!98 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !71, file: !72, line: 78, baseType: !100, size: 8, offset: 1040)
!100 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !71, file: !72, line: 79, baseType: !102, size: 8, offset: 1048)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 1)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !71, file: !72, line: 81, baseType: !106, size: 64, offset: 1088)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !72, line: 43, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !71, file: !72, line: 89, baseType: !109, size: 64, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !95, line: 153, baseType: !96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !71, file: !72, line: 91, baseType: !111, size: 64, offset: 1216)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !72, line: 37, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !71, file: !72, line: 92, baseType: !114, size: 64, offset: 1280)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !72, line: 38, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !71, file: !72, line: 93, baseType: !90, size: 64, offset: 1344)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !71, file: !72, line: 94, baseType: !10, size: 64, offset: 1408)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !71, file: !72, line: 95, baseType: !17, size: 64, offset: 1472)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !71, file: !72, line: 96, baseType: !6, size: 32, offset: 1536)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !71, file: !72, line: 98, baseType: !121, size: 160, offset: 1568)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 20)
!124 = !{!125}
!125 = !DILocalVariable(name: "__fp", arg: 1, scope: !65, file: !40, line: 56, type: !68)
!126 = !DILocation(line: 0, scope: !65)
!127 = !DILocation(line: 58, column: 10, scope: !65)
!128 = !DILocation(line: 58, column: 3, scope: !65)
!129 = distinct !DISubprogram(name: "getc_unlocked", scope: !40, file: !40, line: 66, type: !66, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!130 = !{!131}
!131 = !DILocalVariable(name: "__fp", arg: 1, scope: !129, file: !40, line: 66, type: !68)
!132 = !DILocation(line: 0, scope: !129)
!133 = !DILocation(line: 68, column: 10, scope: !129)
!134 = !DILocation(line: 68, column: 3, scope: !129)
!135 = distinct !DISubprogram(name: "getchar_unlocked", scope: !40, file: !40, line: 73, type: !60, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!136 = !DILocation(line: 75, column: 10, scope: !135)
!137 = !DILocation(line: 75, column: 3, scope: !135)
!138 = distinct !DISubprogram(name: "putchar", scope: !40, file: !40, line: 82, type: !139, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!6, !6}
!141 = !{!142}
!142 = !DILocalVariable(name: "__c", arg: 1, scope: !138, file: !40, line: 82, type: !6)
!143 = !DILocation(line: 0, scope: !138)
!144 = !DILocation(line: 84, column: 21, scope: !138)
!145 = !DILocation(line: 84, column: 10, scope: !138)
!146 = !DILocation(line: 84, column: 3, scope: !138)
!147 = distinct !DISubprogram(name: "fputc_unlocked", scope: !40, file: !40, line: 91, type: !148, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!148 = !DISubroutineType(types: !149)
!149 = !{!6, !6, !68}
!150 = !{!151, !152}
!151 = !DILocalVariable(name: "__c", arg: 1, scope: !147, file: !40, line: 91, type: !6)
!152 = !DILocalVariable(name: "__stream", arg: 2, scope: !147, file: !40, line: 91, type: !68)
!153 = !DILocation(line: 0, scope: !147)
!154 = !DILocation(line: 93, column: 10, scope: !147)
!155 = !DILocation(line: 93, column: 3, scope: !147)
!156 = distinct !DISubprogram(name: "putc_unlocked", scope: !40, file: !40, line: 101, type: !148, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !157)
!157 = !{!158, !159}
!158 = !DILocalVariable(name: "__c", arg: 1, scope: !156, file: !40, line: 101, type: !6)
!159 = !DILocalVariable(name: "__stream", arg: 2, scope: !156, file: !40, line: 101, type: !68)
!160 = !DILocation(line: 0, scope: !156)
!161 = !DILocation(line: 103, column: 10, scope: !156)
!162 = !DILocation(line: 103, column: 3, scope: !156)
!163 = distinct !DISubprogram(name: "putchar_unlocked", scope: !40, file: !40, line: 108, type: !139, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!164 = !{!165}
!165 = !DILocalVariable(name: "__c", arg: 1, scope: !163, file: !40, line: 108, type: !6)
!166 = !DILocation(line: 0, scope: !163)
!167 = !DILocation(line: 110, column: 10, scope: !163)
!168 = !DILocation(line: 110, column: 3, scope: !163)
!169 = distinct !DISubprogram(name: "getline", scope: !40, file: !40, line: 118, type: !170, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !174)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !7, !173, !68}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !95, line: 193, baseType: !96)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!174 = !{!175, !176, !177}
!175 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !169, file: !40, line: 118, type: !7)
!176 = !DILocalVariable(name: "__n", arg: 2, scope: !169, file: !40, line: 118, type: !173)
!177 = !DILocalVariable(name: "__stream", arg: 3, scope: !169, file: !40, line: 118, type: !68)
!178 = !DILocation(line: 0, scope: !169)
!179 = !DILocation(line: 120, column: 10, scope: !169)
!180 = !DILocation(line: 120, column: 3, scope: !169)
!181 = distinct !DISubprogram(name: "feof_unlocked", scope: !40, file: !40, line: 128, type: !66, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !182)
!182 = !{!183}
!183 = !DILocalVariable(name: "__stream", arg: 1, scope: !181, file: !40, line: 128, type: !68)
!184 = !DILocation(line: 0, scope: !181)
!185 = !DILocation(line: 130, column: 10, scope: !181)
!186 = !DILocation(line: 130, column: 3, scope: !181)
!187 = distinct !DISubprogram(name: "ferror_unlocked", scope: !40, file: !40, line: 135, type: !66, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !188)
!188 = !{!189}
!189 = !DILocalVariable(name: "__stream", arg: 1, scope: !187, file: !40, line: 135, type: !68)
!190 = !DILocation(line: 0, scope: !187)
!191 = !DILocation(line: 137, column: 10, scope: !187)
!192 = !DILocation(line: 137, column: 3, scope: !187)
!193 = distinct !DISubprogram(name: "tolower", scope: !194, file: !194, line: 207, type: !139, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !195)
!194 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!195 = !{!196}
!196 = !DILocalVariable(name: "__c", arg: 1, scope: !193, file: !194, line: 207, type: !6)
!197 = !DILocation(line: 0, scope: !193)
!198 = !DILocation(line: 209, column: 22, scope: !193)
!199 = !DILocation(line: 209, column: 39, scope: !193)
!200 = !DILocation(line: 209, column: 38, scope: !193)
!201 = !DILocation(line: 209, column: 37, scope: !193)
!202 = !DILocation(line: 209, column: 10, scope: !193)
!203 = !DILocation(line: 209, column: 3, scope: !193)
!204 = distinct !DISubprogram(name: "toupper", scope: !194, file: !194, line: 213, type: !139, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !205)
!205 = !{!206}
!206 = !DILocalVariable(name: "__c", arg: 1, scope: !204, file: !194, line: 213, type: !6)
!207 = !DILocation(line: 0, scope: !204)
!208 = !DILocation(line: 215, column: 22, scope: !204)
!209 = !DILocation(line: 215, column: 39, scope: !204)
!210 = !DILocation(line: 215, column: 38, scope: !204)
!211 = !DILocation(line: 215, column: 37, scope: !204)
!212 = !DILocation(line: 215, column: 10, scope: !204)
!213 = !DILocation(line: 215, column: 3, scope: !204)
!214 = distinct !DISubprogram(name: "atoi", scope: !215, file: !215, line: 361, type: !216, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!215 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!216 = !DISubroutineType(types: !217)
!217 = !{!6, !11}
!218 = !{!219}
!219 = !DILocalVariable(name: "__nptr", arg: 1, scope: !214, file: !215, line: 361, type: !11)
!220 = !DILocation(line: 0, scope: !214)
!221 = !DILocation(line: 363, column: 16, scope: !214)
!222 = !DILocation(line: 363, column: 10, scope: !214)
!223 = !DILocation(line: 363, column: 3, scope: !214)
!224 = distinct !DISubprogram(name: "atol", scope: !215, file: !215, line: 366, type: !225, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{!96, !11}
!227 = !{!228}
!228 = !DILocalVariable(name: "__nptr", arg: 1, scope: !224, file: !215, line: 366, type: !11)
!229 = !DILocation(line: 0, scope: !224)
!230 = !DILocation(line: 368, column: 10, scope: !224)
!231 = !DILocation(line: 368, column: 3, scope: !224)
!232 = distinct !DISubprogram(name: "atoll", scope: !215, file: !215, line: 373, type: !233, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !236)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !11}
!235 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!236 = !{!237}
!237 = !DILocalVariable(name: "__nptr", arg: 1, scope: !232, file: !215, line: 373, type: !11)
!238 = !DILocation(line: 0, scope: !232)
!239 = !DILocation(line: 375, column: 10, scope: !232)
!240 = !DILocation(line: 375, column: 3, scope: !232)
!241 = distinct !DISubprogram(name: "bsearch", scope: !242, file: !242, line: 20, type: !243, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !249)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!243 = !DISubroutineType(types: !244)
!244 = !{!10, !24, !24, !17, !17, !245}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !215, line: 808, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!6, !24, !24}
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!250 = !DILocalVariable(name: "__key", arg: 1, scope: !241, file: !242, line: 20, type: !24)
!251 = !DILocalVariable(name: "__base", arg: 2, scope: !241, file: !242, line: 20, type: !24)
!252 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !241, file: !242, line: 20, type: !17)
!253 = !DILocalVariable(name: "__size", arg: 4, scope: !241, file: !242, line: 20, type: !17)
!254 = !DILocalVariable(name: "__compar", arg: 5, scope: !241, file: !242, line: 21, type: !245)
!255 = !DILocalVariable(name: "__l", scope: !241, file: !242, line: 23, type: !17)
!256 = !DILocalVariable(name: "__u", scope: !241, file: !242, line: 23, type: !17)
!257 = !DILocalVariable(name: "__idx", scope: !241, file: !242, line: 23, type: !17)
!258 = !DILocalVariable(name: "__p", scope: !241, file: !242, line: 24, type: !24)
!259 = !DILocalVariable(name: "__comparison", scope: !241, file: !242, line: 25, type: !6)
!260 = !DILocation(line: 0, scope: !241)
!261 = !DILocation(line: 29, column: 3, scope: !241)
!262 = !DILocation(line: 27, column: 7, scope: !241)
!263 = !DILocation(line: 29, column: 14, scope: !241)
!264 = !DILocation(line: 31, column: 20, scope: !265)
!265 = distinct !DILexicalBlock(scope: !241, file: !242, line: 30, column: 5)
!266 = !DILocation(line: 31, column: 27, scope: !265)
!267 = !DILocation(line: 32, column: 56, scope: !265)
!268 = !DILocation(line: 32, column: 47, scope: !265)
!269 = !DILocation(line: 33, column: 22, scope: !265)
!270 = !DILocation(line: 34, column: 24, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !242, line: 34, column: 11)
!272 = !DILocation(line: 34, column: 11, scope: !265)
!273 = !DILocation(line: 36, column: 29, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !242, line: 36, column: 16)
!275 = !DILocation(line: 36, column: 16, scope: !271)
!276 = !DILocation(line: 37, column: 14, scope: !274)
!277 = distinct !{!277, !261, !278}
!278 = !DILocation(line: 40, column: 5, scope: !241)
!279 = !DILocation(line: 43, column: 1, scope: !241)
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
!293 = !{!294, !43, !297, !6}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !295, line: 101, baseType: !296)
!295 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !95, line: 72, baseType: !96)
!297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !7)
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "nptr", arg: 1, scope: !290, file: !291, line: 324, type: !43)
!300 = !DILocalVariable(name: "endptr", arg: 2, scope: !290, file: !291, line: 324, type: !297)
!301 = !DILocalVariable(name: "base", arg: 3, scope: !290, file: !291, line: 324, type: !6)
!302 = !DILocation(line: 0, scope: !290)
!303 = !DILocation(line: 327, column: 10, scope: !290)
!304 = !DILocation(line: 327, column: 3, scope: !290)
!305 = distinct !DISubprogram(name: "strtoumax", scope: !291, file: !291, line: 336, type: !306, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !43, !297, !6}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !295, line: 102, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !95, line: 73, baseType: !19)
!310 = !{!311, !312, !313}
!311 = !DILocalVariable(name: "nptr", arg: 1, scope: !305, file: !291, line: 336, type: !43)
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
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !95, line: 145, baseType: !19)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !349, file: !350, line: 53, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !95, line: 148, baseType: !19)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !349, file: !350, line: 61, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !95, line: 151, baseType: !19)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !349, file: !350, line: 62, baseType: !359, size: 32, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !95, line: 150, baseType: !48)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !349, file: !350, line: 64, baseType: !361, size: 32, offset: 224)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !95, line: 146, baseType: !48)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !349, file: !350, line: 65, baseType: !363, size: 32, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !95, line: 147, baseType: !48)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !349, file: !350, line: 67, baseType: !6, size: 32, offset: 288)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !349, file: !350, line: 69, baseType: !353, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !349, file: !350, line: 74, baseType: !94, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !349, file: !350, line: 78, baseType: !368, size: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !95, line: 174, baseType: !96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !349, file: !350, line: 80, baseType: !370, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !95, line: 179, baseType: !96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !349, file: !350, line: 91, baseType: !372, size: 128, offset: 576)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !373, line: 10, size: 128, elements: !374)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!374 = !{!375, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !372, file: !373, line: 12, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !95, line: 160, baseType: !96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !372, file: !373, line: 16, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !95, line: 196, baseType: !96)
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
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !95, line: 149, baseType: !19)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !443, file: !350, line: 124, baseType: !357, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !443, file: !350, line: 125, baseType: !359, size: 32, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !443, file: !350, line: 132, baseType: !361, size: 32, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !443, file: !350, line: 133, baseType: !363, size: 32, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !443, file: !350, line: 135, baseType: !6, size: 32, offset: 288)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !443, file: !350, line: 136, baseType: !353, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !443, file: !350, line: 137, baseType: !94, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !443, file: !350, line: 143, baseType: !368, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !443, file: !350, line: 144, baseType: !457, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !95, line: 180, baseType: !96)
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
!495 = distinct !DISubprogram(name: "pointer_set_create", scope: !1, file: !1, line: 72, type: !496, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!13}
!498 = !{!499}
!499 = !DILocalVariable(name: "result", scope: !495, file: !1, line: 74, type: !13)
!500 = !DILocation(line: 74, column: 34, scope: !495)
!501 = !DILocation(line: 0, scope: !495)
!502 = !DILocation(line: 76, column: 11, scope: !495)
!503 = !DILocation(line: 76, column: 22, scope: !495)
!504 = !DILocation(line: 77, column: 11, scope: !495)
!505 = !DILocation(line: 77, column: 21, scope: !495)
!506 = !DILocation(line: 78, column: 11, scope: !495)
!507 = !DILocation(line: 78, column: 19, scope: !495)
!508 = !DILocation(line: 80, column: 19, scope: !495)
!509 = !DILocation(line: 80, column: 11, scope: !495)
!510 = !DILocation(line: 80, column: 17, scope: !495)
!511 = !DILocation(line: 81, column: 3, scope: !495)
!512 = distinct !DISubprogram(name: "pointer_set_destroy", scope: !1, file: !1, line: 86, type: !513, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !13}
!515 = !{!516}
!516 = !DILocalVariable(name: "pset", arg: 1, scope: !512, file: !1, line: 86, type: !13)
!517 = !DILocation(line: 0, scope: !512)
!518 = !DILocation(line: 88, column: 3, scope: !512)
!519 = !DILocation(line: 89, column: 3, scope: !512)
!520 = !DILocation(line: 90, column: 1, scope: !512)
!521 = distinct !DISubprogram(name: "pointer_set_contains", scope: !1, file: !1, line: 96, type: !522, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !526)
!522 = !DISubroutineType(types: !523)
!523 = !{!6, !524, !24}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!526 = !{!527, !528, !529}
!527 = !DILocalVariable(name: "pset", arg: 1, scope: !521, file: !1, line: 96, type: !524)
!528 = !DILocalVariable(name: "p", arg: 2, scope: !521, file: !1, line: 96, type: !24)
!529 = !DILocalVariable(name: "n", scope: !521, file: !1, line: 98, type: !17)
!530 = !DILocation(line: 0, scope: !521)
!531 = !DILocation(line: 98, column: 30, scope: !521)
!532 = !DILocation(line: 98, column: 45, scope: !521)
!533 = !DILocation(line: 98, column: 14, scope: !521)
!534 = !DILocation(line: 104, column: 22, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 104, column: 16)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 102, column: 11)
!537 = distinct !DILexicalBlock(scope: !521, file: !1, line: 101, column: 5)
!538 = !DILocation(line: 0, scope: !536)
!539 = !DILocation(line: 100, column: 3, scope: !521)
!540 = !DILocation(line: 102, column: 11, scope: !536)
!541 = !DILocation(line: 102, column: 26, scope: !536)
!542 = !DILocation(line: 102, column: 11, scope: !537)
!543 = !DILocation(line: 104, column: 31, scope: !535)
!544 = !DILocation(line: 104, column: 16, scope: !536)
!545 = !DILocation(line: 108, column: 10, scope: !546)
!546 = distinct !DILexicalBlock(scope: !535, file: !1, line: 107, column: 8)
!547 = !DILocation(line: 109, column: 25, scope: !548)
!548 = distinct !DILexicalBlock(scope: !546, file: !1, line: 109, column: 14)
!549 = !DILocation(line: 109, column: 16, scope: !548)
!550 = !DILocation(line: 109, column: 14, scope: !546)
!551 = distinct !{!551, !539, !552}
!552 = !DILocation(line: 112, column: 5, scope: !521)
!553 = !DILocation(line: 113, column: 1, scope: !521)
!554 = distinct !DISubprogram(name: "hash1", scope: !1, file: !1, line: 55, type: !555, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{!17, !24, !19, !19}
!557 = !{!558, !559, !560, !561, !563}
!558 = !DILocalVariable(name: "p", arg: 1, scope: !554, file: !1, line: 55, type: !24)
!559 = !DILocalVariable(name: "max", arg: 2, scope: !554, file: !1, line: 55, type: !19)
!560 = !DILocalVariable(name: "logmax", arg: 3, scope: !554, file: !1, line: 55, type: !19)
!561 = !DILocalVariable(name: "A", scope: !554, file: !1, line: 60, type: !562)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!563 = !DILocalVariable(name: "shift", scope: !554, file: !1, line: 65, type: !562)
!564 = !DILocation(line: 0, scope: !554)
!565 = !DILocation(line: 65, column: 50, scope: !554)
!566 = !DILocation(line: 67, column: 16, scope: !554)
!567 = !DILocation(line: 67, column: 14, scope: !554)
!568 = !DILocation(line: 67, column: 35, scope: !554)
!569 = !DILocation(line: 67, column: 52, scope: !554)
!570 = !DILocation(line: 67, column: 45, scope: !554)
!571 = !DILocation(line: 67, column: 3, scope: !554)
!572 = distinct !DISubprogram(name: "pointer_set_insert", scope: !1, file: !1, line: 137, type: !573, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !575)
!573 = !DISubroutineType(types: !574)
!574 = !{!6, !13, !24}
!575 = !{!576, !577, !578, !579, !582, !583, !584, !585}
!576 = !DILocalVariable(name: "pset", arg: 1, scope: !572, file: !1, line: 137, type: !13)
!577 = !DILocalVariable(name: "p", arg: 2, scope: !572, file: !1, line: 137, type: !24)
!578 = !DILocalVariable(name: "n", scope: !572, file: !1, line: 139, type: !17)
!579 = !DILocalVariable(name: "new_log_slots", scope: !580, file: !1, line: 145, type: !17)
!580 = distinct !DILexicalBlock(scope: !581, file: !1, line: 144, column: 5)
!581 = distinct !DILexicalBlock(scope: !572, file: !1, line: 143, column: 7)
!582 = !DILocalVariable(name: "new_n_slots", scope: !580, file: !1, line: 146, type: !17)
!583 = !DILocalVariable(name: "new_slots", scope: !580, file: !1, line: 147, type: !23)
!584 = !DILocalVariable(name: "i", scope: !580, file: !1, line: 148, type: !17)
!585 = !DILocalVariable(name: "value", scope: !586, file: !1, line: 152, type: !24)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 151, column: 9)
!587 = distinct !DILexicalBlock(scope: !588, file: !1, line: 150, column: 7)
!588 = distinct !DILexicalBlock(scope: !580, file: !1, line: 150, column: 7)
!589 = !DILocation(line: 0, scope: !572)
!590 = !DILocation(line: 143, column: 13, scope: !581)
!591 = !DILocation(line: 143, column: 32, scope: !581)
!592 = !DILocation(line: 143, column: 40, scope: !581)
!593 = !DILocation(line: 143, column: 24, scope: !581)
!594 = !DILocation(line: 143, column: 7, scope: !572)
!595 = !DILocation(line: 163, column: 28, scope: !572)
!596 = !DILocation(line: 163, column: 56, scope: !572)
!597 = !DILocation(line: 145, column: 36, scope: !580)
!598 = !DILocation(line: 145, column: 46, scope: !580)
!599 = !DILocation(line: 0, scope: !580)
!600 = !DILocation(line: 146, column: 42, scope: !580)
!601 = !DILocation(line: 147, column: 32, scope: !580)
!602 = !DILocation(line: 150, column: 12, scope: !588)
!603 = !DILocation(line: 0, scope: !588)
!604 = !DILocation(line: 150, column: 29, scope: !587)
!605 = !DILocation(line: 150, column: 21, scope: !587)
!606 = !DILocation(line: 150, column: 7, scope: !588)
!607 = !DILocation(line: 152, column: 24, scope: !586)
!608 = !DILocation(line: 0, scope: !586)
!609 = !DILocation(line: 153, column: 8, scope: !586)
!610 = !DILocation(line: 154, column: 4, scope: !586)
!611 = !DILocation(line: 154, column: 17, scope: !586)
!612 = !DILocation(line: 150, column: 38, scope: !587)
!613 = !DILocation(line: 150, column: 7, scope: !587)
!614 = distinct !{!614, !606, !615}
!615 = !DILocation(line: 155, column: 2, scope: !588)
!616 = !DILocation(line: 157, column: 7, scope: !580)
!617 = !DILocation(line: 158, column: 21, scope: !580)
!618 = !DILocation(line: 159, column: 23, scope: !580)
!619 = !DILocation(line: 160, column: 19, scope: !580)
!620 = !DILocation(line: 161, column: 5, scope: !580)
!621 = !DILocation(line: 163, column: 41, scope: !572)
!622 = !DILocation(line: 163, column: 7, scope: !572)
!623 = !DILocation(line: 164, column: 13, scope: !624)
!624 = distinct !DILexicalBlock(scope: !572, file: !1, line: 164, column: 7)
!625 = !DILocation(line: 164, column: 7, scope: !624)
!626 = !DILocation(line: 164, column: 7, scope: !572)
!627 = !DILocation(line: 167, column: 18, scope: !572)
!628 = !DILocation(line: 168, column: 3, scope: !572)
!629 = !DILocation(line: 169, column: 3, scope: !572)
!630 = !DILocation(line: 170, column: 1, scope: !572)
!631 = distinct !DISubprogram(name: "insert_aux", scope: !1, file: !1, line: 118, type: !632, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !634)
!632 = !DISubroutineType(types: !633)
!633 = !{!17, !24, !23, !17, !17}
!634 = !{!635, !636, !637, !638, !639}
!635 = !DILocalVariable(name: "p", arg: 1, scope: !631, file: !1, line: 118, type: !24)
!636 = !DILocalVariable(name: "slots", arg: 2, scope: !631, file: !1, line: 118, type: !23)
!637 = !DILocalVariable(name: "n_slots", arg: 3, scope: !631, file: !1, line: 118, type: !17)
!638 = !DILocalVariable(name: "log_slots", arg: 4, scope: !631, file: !1, line: 118, type: !17)
!639 = !DILocalVariable(name: "n", scope: !631, file: !1, line: 120, type: !17)
!640 = !DILocation(line: 0, scope: !631)
!641 = !DILocation(line: 120, column: 14, scope: !631)
!642 = !DILocation(line: 121, column: 3, scope: !631)
!643 = !DILocation(line: 123, column: 11, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 123, column: 11)
!645 = distinct !DILexicalBlock(scope: !631, file: !1, line: 122, column: 5)
!646 = !DILocation(line: 123, column: 20, scope: !644)
!647 = !DILocation(line: 123, column: 37, scope: !644)
!648 = !DILocation(line: 123, column: 25, scope: !644)
!649 = !DILocation(line: 124, column: 2, scope: !644)
!650 = !DILocation(line: 127, column: 4, scope: !651)
!651 = distinct !DILexicalBlock(scope: !644, file: !1, line: 126, column: 2)
!652 = !DILocation(line: 128, column: 10, scope: !653)
!653 = distinct !DILexicalBlock(scope: !651, file: !1, line: 128, column: 8)
!654 = !DILocation(line: 128, column: 8, scope: !651)
!655 = distinct !{!655, !642, !656}
!656 = !DILocation(line: 131, column: 5, scope: !631)
!657 = distinct !DISubprogram(name: "pointer_set_traverse", scope: !1, file: !1, line: 175, type: !658, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !663)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !524, !660, !10}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!5, !24, !10}
!663 = !{!664, !665, !666, !667}
!664 = !DILocalVariable(name: "pset", arg: 1, scope: !657, file: !1, line: 175, type: !524)
!665 = !DILocalVariable(name: "fn", arg: 2, scope: !657, file: !1, line: 176, type: !660)
!666 = !DILocalVariable(name: "data", arg: 3, scope: !657, file: !1, line: 176, type: !10)
!667 = !DILocalVariable(name: "i", scope: !657, file: !1, line: 178, type: !17)
!668 = !DILocation(line: 0, scope: !657)
!669 = !DILocation(line: 180, column: 38, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 180, column: 9)
!671 = distinct !DILexicalBlock(scope: !672, file: !1, line: 179, column: 3)
!672 = distinct !DILexicalBlock(scope: !657, file: !1, line: 179, column: 3)
!673 = !DILocation(line: 0, scope: !671)
!674 = !DILocation(line: 179, column: 8, scope: !672)
!675 = !DILocation(line: 0, scope: !672)
!676 = !DILocation(line: 179, column: 25, scope: !671)
!677 = !DILocation(line: 179, column: 17, scope: !671)
!678 = !DILocation(line: 179, column: 3, scope: !672)
!679 = !DILocation(line: 180, column: 15, scope: !670)
!680 = !DILocation(line: 180, column: 9, scope: !670)
!681 = !DILocation(line: 180, column: 24, scope: !670)
!682 = !DILocation(line: 180, column: 28, scope: !670)
!683 = !DILocation(line: 180, column: 9, scope: !671)
!684 = !DILocation(line: 179, column: 34, scope: !671)
!685 = !DILocation(line: 179, column: 3, scope: !671)
!686 = distinct !{!686, !678, !687}
!687 = !DILocation(line: 181, column: 7, scope: !672)
!688 = !DILocation(line: 182, column: 1, scope: !657)
!689 = distinct !DISubprogram(name: "pointer_map_create", scope: !1, file: !1, line: 203, type: !690, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!26}
!692 = !{!693}
!693 = !DILocalVariable(name: "result", scope: !689, file: !1, line: 205, type: !26)
!694 = !DILocation(line: 205, column: 34, scope: !689)
!695 = !DILocation(line: 0, scope: !689)
!696 = !DILocation(line: 207, column: 11, scope: !689)
!697 = !DILocation(line: 207, column: 22, scope: !689)
!698 = !DILocation(line: 208, column: 11, scope: !689)
!699 = !DILocation(line: 208, column: 21, scope: !689)
!700 = !DILocation(line: 209, column: 11, scope: !689)
!701 = !DILocation(line: 209, column: 19, scope: !689)
!702 = !DILocation(line: 211, column: 18, scope: !689)
!703 = !DILocation(line: 211, column: 11, scope: !689)
!704 = !DILocation(line: 211, column: 16, scope: !689)
!705 = !DILocation(line: 212, column: 20, scope: !689)
!706 = !DILocation(line: 212, column: 11, scope: !689)
!707 = !DILocation(line: 212, column: 18, scope: !689)
!708 = !DILocation(line: 213, column: 3, scope: !689)
!709 = distinct !DISubprogram(name: "pointer_map_destroy", scope: !1, file: !1, line: 217, type: !710, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !712)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !26}
!712 = !{!713}
!713 = !DILocalVariable(name: "pmap", arg: 1, scope: !709, file: !1, line: 217, type: !26)
!714 = !DILocation(line: 0, scope: !709)
!715 = !DILocation(line: 219, column: 3, scope: !709)
!716 = !DILocation(line: 220, column: 3, scope: !709)
!717 = !DILocation(line: 221, column: 3, scope: !709)
!718 = !DILocation(line: 222, column: 1, scope: !709)
!719 = distinct !DISubprogram(name: "pointer_map_contains", scope: !1, file: !1, line: 229, type: !720, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !724)
!720 = !DISubroutineType(types: !721)
!721 = !{!34, !722, !24}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!724 = !{!725, !726, !727}
!725 = !DILocalVariable(name: "pmap", arg: 1, scope: !719, file: !1, line: 229, type: !722)
!726 = !DILocalVariable(name: "p", arg: 2, scope: !719, file: !1, line: 229, type: !24)
!727 = !DILocalVariable(name: "n", scope: !719, file: !1, line: 231, type: !17)
!728 = !DILocation(line: 0, scope: !719)
!729 = !DILocation(line: 231, column: 30, scope: !719)
!730 = !DILocation(line: 231, column: 45, scope: !719)
!731 = !DILocation(line: 231, column: 14, scope: !719)
!732 = !DILocation(line: 0, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !1, line: 235, column: 11)
!734 = distinct !DILexicalBlock(scope: !719, file: !1, line: 234, column: 5)
!735 = !DILocation(line: 233, column: 3, scope: !719)
!736 = !DILocation(line: 235, column: 11, scope: !733)
!737 = !DILocation(line: 235, column: 25, scope: !733)
!738 = !DILocation(line: 235, column: 11, scope: !734)
!739 = !DILocation(line: 236, column: 16, scope: !733)
!740 = !DILocation(line: 236, column: 10, scope: !733)
!741 = !DILocation(line: 236, column: 2, scope: !733)
!742 = !DILocation(line: 237, column: 30, scope: !743)
!743 = distinct !DILexicalBlock(scope: !733, file: !1, line: 237, column: 16)
!744 = !DILocation(line: 237, column: 16, scope: !733)
!745 = !DILocation(line: 241, column: 10, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !1, line: 240, column: 8)
!747 = !DILocation(line: 242, column: 25, scope: !748)
!748 = distinct !DILexicalBlock(scope: !746, file: !1, line: 242, column: 14)
!749 = !DILocation(line: 242, column: 16, scope: !748)
!750 = !DILocation(line: 242, column: 14, scope: !746)
!751 = distinct !{!751, !735, !752}
!752 = !DILocation(line: 245, column: 5, scope: !719)
!753 = !DILocation(line: 246, column: 1, scope: !719)
!754 = distinct !DISubprogram(name: "pointer_map_insert", scope: !1, file: !1, line: 251, type: !755, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!34, !26, !24}
!757 = !{!758, !759, !760, !761, !764, !765, !766, !767, !768}
!758 = !DILocalVariable(name: "pmap", arg: 1, scope: !754, file: !1, line: 251, type: !26)
!759 = !DILocalVariable(name: "p", arg: 2, scope: !754, file: !1, line: 251, type: !24)
!760 = !DILocalVariable(name: "n", scope: !754, file: !1, line: 253, type: !17)
!761 = !DILocalVariable(name: "new_log_slots", scope: !762, file: !1, line: 259, type: !17)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 258, column: 5)
!763 = distinct !DILexicalBlock(scope: !754, file: !1, line: 257, column: 7)
!764 = !DILocalVariable(name: "new_n_slots", scope: !762, file: !1, line: 260, type: !17)
!765 = !DILocalVariable(name: "new_keys", scope: !762, file: !1, line: 261, type: !23)
!766 = !DILocalVariable(name: "new_values", scope: !762, file: !1, line: 262, type: !34)
!767 = !DILocalVariable(name: "i", scope: !762, file: !1, line: 263, type: !17)
!768 = !DILocalVariable(name: "key", scope: !769, file: !1, line: 268, type: !24)
!769 = distinct !DILexicalBlock(scope: !770, file: !1, line: 267, column: 4)
!770 = distinct !DILexicalBlock(scope: !771, file: !1, line: 266, column: 6)
!771 = distinct !DILexicalBlock(scope: !772, file: !1, line: 265, column: 7)
!772 = distinct !DILexicalBlock(scope: !762, file: !1, line: 265, column: 7)
!773 = !DILocation(line: 0, scope: !754)
!774 = !DILocation(line: 257, column: 13, scope: !763)
!775 = !DILocation(line: 257, column: 32, scope: !763)
!776 = !DILocation(line: 257, column: 40, scope: !763)
!777 = !DILocation(line: 257, column: 24, scope: !763)
!778 = !DILocation(line: 257, column: 7, scope: !754)
!779 = !DILocation(line: 282, column: 28, scope: !754)
!780 = !DILocation(line: 282, column: 55, scope: !754)
!781 = !DILocation(line: 259, column: 36, scope: !762)
!782 = !DILocation(line: 259, column: 46, scope: !762)
!783 = !DILocation(line: 0, scope: !762)
!784 = !DILocation(line: 260, column: 42, scope: !762)
!785 = !DILocation(line: 261, column: 31, scope: !762)
!786 = !DILocation(line: 262, column: 27, scope: !762)
!787 = !DILocation(line: 0, scope: !769)
!788 = !DILocation(line: 265, column: 12, scope: !772)
!789 = !DILocation(line: 0, scope: !772)
!790 = !DILocation(line: 265, column: 29, scope: !771)
!791 = !DILocation(line: 265, column: 21, scope: !771)
!792 = !DILocation(line: 265, column: 7, scope: !772)
!793 = !DILocation(line: 266, column: 6, scope: !770)
!794 = !DILocation(line: 266, column: 6, scope: !771)
!795 = !DILocation(line: 269, column: 10, scope: !769)
!796 = !DILocation(line: 270, column: 6, scope: !769)
!797 = !DILocation(line: 270, column: 18, scope: !769)
!798 = !DILocation(line: 271, column: 28, scope: !769)
!799 = !DILocation(line: 271, column: 22, scope: !769)
!800 = !DILocation(line: 271, column: 6, scope: !769)
!801 = !DILocation(line: 271, column: 20, scope: !769)
!802 = !DILocation(line: 272, column: 4, scope: !769)
!803 = !DILocation(line: 265, column: 38, scope: !771)
!804 = !DILocation(line: 265, column: 7, scope: !771)
!805 = distinct !{!805, !792, !806}
!806 = !DILocation(line: 272, column: 4, scope: !772)
!807 = !DILocation(line: 274, column: 7, scope: !762)
!808 = !DILocation(line: 275, column: 7, scope: !762)
!809 = !DILocation(line: 276, column: 21, scope: !762)
!810 = !DILocation(line: 277, column: 23, scope: !762)
!811 = !DILocation(line: 278, column: 18, scope: !762)
!812 = !DILocation(line: 279, column: 20, scope: !762)
!813 = !DILocation(line: 280, column: 5, scope: !762)
!814 = !DILocation(line: 282, column: 40, scope: !754)
!815 = !DILocation(line: 282, column: 7, scope: !754)
!816 = !DILocation(line: 283, column: 14, scope: !817)
!817 = distinct !DILexicalBlock(scope: !754, file: !1, line: 283, column: 7)
!818 = !DILocation(line: 283, column: 8, scope: !817)
!819 = !DILocation(line: 283, column: 7, scope: !754)
!820 = !DILocation(line: 285, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !1, line: 284, column: 5)
!822 = !DILocation(line: 286, column: 21, scope: !821)
!823 = !DILocation(line: 287, column: 5, scope: !821)
!824 = !DILocation(line: 289, column: 17, scope: !754)
!825 = !DILocation(line: 289, column: 11, scope: !754)
!826 = !DILocation(line: 289, column: 3, scope: !754)
!827 = distinct !DISubprogram(name: "pointer_map_traverse", scope: !1, file: !1, line: 296, type: !828, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !833)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !722, !830, !10}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!5, !24, !34, !10}
!833 = !{!834, !835, !836, !837}
!834 = !DILocalVariable(name: "pmap", arg: 1, scope: !827, file: !1, line: 296, type: !722)
!835 = !DILocalVariable(name: "fn", arg: 2, scope: !827, file: !1, line: 297, type: !830)
!836 = !DILocalVariable(name: "data", arg: 3, scope: !827, file: !1, line: 297, type: !10)
!837 = !DILocalVariable(name: "i", scope: !827, file: !1, line: 299, type: !17)
!838 = !DILocation(line: 0, scope: !827)
!839 = !DILocation(line: 301, column: 37, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 301, column: 9)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 300, column: 3)
!842 = distinct !DILexicalBlock(scope: !827, file: !1, line: 300, column: 3)
!843 = !DILocation(line: 0, scope: !841)
!844 = !DILocation(line: 0, scope: !840)
!845 = !DILocation(line: 300, column: 8, scope: !842)
!846 = !DILocation(line: 0, scope: !842)
!847 = !DILocation(line: 300, column: 25, scope: !841)
!848 = !DILocation(line: 300, column: 17, scope: !841)
!849 = !DILocation(line: 300, column: 3, scope: !842)
!850 = !DILocation(line: 301, column: 15, scope: !840)
!851 = !DILocation(line: 301, column: 9, scope: !840)
!852 = !DILocation(line: 301, column: 23, scope: !840)
!853 = !DILocation(line: 301, column: 53, scope: !840)
!854 = !DILocation(line: 301, column: 47, scope: !840)
!855 = !DILocation(line: 301, column: 27, scope: !840)
!856 = !DILocation(line: 301, column: 9, scope: !841)
!857 = !DILocation(line: 300, column: 34, scope: !841)
!858 = !DILocation(line: 300, column: 3, scope: !841)
!859 = distinct !{!859, !849, !860}
!860 = !DILocation(line: 302, column: 7, scope: !842)
!861 = !DILocation(line: 303, column: 1, scope: !827)
