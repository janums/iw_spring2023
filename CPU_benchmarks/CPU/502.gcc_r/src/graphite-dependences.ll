; ModuleID = 'graphite-dependences.bc'
source_filename = "graphite-dependences.c"
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !17 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !31, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !34
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #4, !dbg !35
  ret i32 %call, !dbg !36
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !37 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !40
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #4, !dbg !41
  ret i32 %call, !dbg !42
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !43 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !106, metadata !DIExpression()), !dbg !107
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !108
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !108
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !108
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !108
  %cmp = icmp uge i8* %0, %1, !dbg !108
  %conv1 = zext i1 %cmp to i64, !dbg !108
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !108
  %tobool = icmp eq i64 %expval, 0, !dbg !108
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !108

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #4, !dbg !108
  br label %cond.end, !dbg !108

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !108
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !108
  %2 = load i8, i8* %0, align 1, !dbg !108
  %conv3 = zext i8 %2 to i32, !dbg !108
  br label %cond.end, !dbg !108

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !108
  ret i32 %cond, !dbg !109
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !110 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !112, metadata !DIExpression()), !dbg !113
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !114
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !114
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !114
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !114
  %cmp = icmp uge i8* %0, %1, !dbg !114
  %conv1 = zext i1 %cmp to i64, !dbg !114
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !114
  %tobool = icmp eq i64 %expval, 0, !dbg !114
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !114

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #4, !dbg !114
  br label %cond.end, !dbg !114

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !114
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !114
  %2 = load i8, i8* %0, align 1, !dbg !114
  %conv3 = zext i8 %2 to i32, !dbg !114
  br label %cond.end, !dbg !114

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !114
  ret i32 %cond, !dbg !115
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !116 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !117
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !117
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !117
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !117
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !117
  %cmp = icmp uge i8* %1, %2, !dbg !117
  %conv1 = zext i1 %cmp to i64, !dbg !117
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !117
  %tobool = icmp eq i64 %expval, 0, !dbg !117
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !117

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #4, !dbg !117
  br label %cond.end, !dbg !117

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !117
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !117
  %3 = load i8, i8* %1, align 1, !dbg !117
  %conv3 = zext i8 %3 to i32, !dbg !117
  br label %cond.end, !dbg !117

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !117
  ret i32 %cond, !dbg !118
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !119 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !125
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #4, !dbg !126
  ret i32 %call, !dbg !127
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !128 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !132, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !133, metadata !DIExpression()), !dbg !134
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !135
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !135
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !135
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !135
  %cmp = icmp uge i8* %0, %1, !dbg !135
  %conv1 = zext i1 %cmp to i64, !dbg !135
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !135
  %tobool = icmp eq i64 %expval, 0, !dbg !135
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !135

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !135
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #4, !dbg !135
  br label %cond.end, !dbg !135

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !135
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !135
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !135
  store i8 %conv2, i8* %0, align 1, !dbg !135
  %conv6 = and i32 %__c, 255, !dbg !135
  br label %cond.end, !dbg !135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !135
  ret i32 %cond, !dbg !136
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !137 {
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !144 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !148
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !148
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !148
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !148
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !148
  %cmp = icmp uge i8* %1, %2, !dbg !148
  %conv1 = zext i1 %cmp to i64, !dbg !148
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !148
  %tobool = icmp eq i64 %expval, 0, !dbg !148
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !148

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !148
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #4, !dbg !148
  br label %cond.end, !dbg !148

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !148
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !148
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !148
  store i8 %conv4, i8* %1, align 1, !dbg !148
  %conv6 = and i32 %__c, 255, !dbg !148
  br label %cond.end, !dbg !148

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !148
  ret i32 %cond, !dbg !149
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !150 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !156, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i64* %__n, metadata !157, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !158, metadata !DIExpression()), !dbg !159
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #4, !dbg !160
  ret i64 %call, !dbg !161
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !162 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !164, metadata !DIExpression()), !dbg !165
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !166
  %0 = load i32, i32* %_flags, align 8, !dbg !166
  %and = lshr i32 %0, 4, !dbg !166
  %and.lobit = and i32 %and, 1, !dbg !166
  ret i32 %and.lobit, !dbg !167
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !170, metadata !DIExpression()), !dbg !171
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !172
  %0 = load i32, i32* %_flags, align 8, !dbg !172
  %and = lshr i32 %0, 5, !dbg !172
  %and.lobit = and i32 %and, 1, !dbg !172
  ret i32 %and.lobit, !dbg !173
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !177, metadata !DIExpression()), !dbg !178
  %__c.off = add i32 %__c, 128, !dbg !179
  %0 = icmp ult i32 %__c.off, 384, !dbg !179
  br i1 %0, label %cond.true, label %cond.end, !dbg !179

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #4, !dbg !180
  %1 = load i32*, i32** %call, align 8, !dbg !181
  %idxprom = sext i32 %__c to i64, !dbg !182
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !182
  %2 = load i32, i32* %arrayidx, align 4, !dbg !182
  br label %cond.end, !dbg !183

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !183
  ret i32 %cond, !dbg !184
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !185 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !187, metadata !DIExpression()), !dbg !188
  %__c.off = add i32 %__c, 128, !dbg !189
  %0 = icmp ult i32 %__c.off, 384, !dbg !189
  br i1 %0, label %cond.true, label %cond.end, !dbg !189

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #4, !dbg !190
  %1 = load i32*, i32** %call, align 8, !dbg !191
  %idxprom = sext i32 %__c to i64, !dbg !192
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !192
  %2 = load i32, i32* %arrayidx, align 4, !dbg !192
  br label %cond.end, !dbg !193

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !193
  ret i32 %cond, !dbg !194
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !195 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !200, metadata !DIExpression()), !dbg !201
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #4, !dbg !202
  %conv = trunc i64 %call to i32, !dbg !203
  ret i32 %conv, !dbg !204
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !209, metadata !DIExpression()), !dbg !210
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #4, !dbg !211
  ret i64 %call, !dbg !212
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !213 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !218, metadata !DIExpression()), !dbg !219
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #4, !dbg !220
  ret i64 %call, !dbg !221
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !222 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !233, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i8* %__base, metadata !234, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !235, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i64 %__size, metadata !236, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !237, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i64 0, metadata !238, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !239, metadata !DIExpression()), !dbg !243
  br label %while.cond, !dbg !244

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !245
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !243
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !239, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !238, metadata !DIExpression()), !dbg !243
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !246
  br i1 %cmp, label %while.body, label %cleanup, !dbg !244

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !247
  %div = lshr i64 %add, 1, !dbg !249
  call void @llvm.dbg.value(metadata i64 %div, metadata !240, metadata !DIExpression()), !dbg !243
  %mul = mul i64 %div, %__size, !dbg !250
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !251
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !241, metadata !DIExpression()), !dbg !243
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #4, !dbg !252
  call void @llvm.dbg.value(metadata i32 %call, metadata !242, metadata !DIExpression()), !dbg !243
  %cmp1 = icmp slt i32 %call, 0, !dbg !253
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !255

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !256
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !258

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !259
  call void @llvm.dbg.value(metadata i64 %add4, metadata !238, metadata !DIExpression()), !dbg !243
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !243
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !243
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !239, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !238, metadata !DIExpression()), !dbg !243
  br label %while.cond, !dbg !244, !llvm.loop !260

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !243
  ret i8* %retval.0, !dbg !262
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !263 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !269, metadata !DIExpression()), !dbg !270
  %call = tail call double @strtod(i8* %__nptr, i8** null) #4, !dbg !271
  ret double %call, !dbg !272
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !273 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %base, metadata !284, metadata !DIExpression()), !dbg !285
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #4, !dbg !286
  ret i64 %call, !dbg !287
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !288 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !294, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !295, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i32 %base, metadata !296, metadata !DIExpression()), !dbg !297
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #4, !dbg !298
  ret i64 %call, !dbg !299
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !311, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i32 %base, metadata !313, metadata !DIExpression()), !dbg !314
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #4, !dbg !315
  ret i64 %call, !dbg !316
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !317 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !321, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !322, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i32 %base, metadata !323, metadata !DIExpression()), !dbg !324
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #4, !dbg !325
  ret i64 %call, !dbg !326
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !327 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !370, metadata !DIExpression()), !dbg !371
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #4, !dbg !372
  ret i32 %call, !dbg !373
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !374 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !376, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !377, metadata !DIExpression()), !dbg !378
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #4, !dbg !379
  ret i32 %call, !dbg !380
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !381 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !385, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !386, metadata !DIExpression()), !dbg !387
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #4, !dbg !388
  ret i32 %call, !dbg !389
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !390 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !395, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !396, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !397, metadata !DIExpression()), !dbg !398
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #4, !dbg !399
  ret i32 %call, !dbg !400
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !401 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !405, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !406, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !407, metadata !DIExpression()), !dbg !408
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !407, metadata !DIExpression(DW_OP_deref)), !dbg !408
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #4, !dbg !409
  ret i32 %call, !dbg !410
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !411 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !415, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i8* %__path, metadata !416, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !417, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !418, metadata !DIExpression()), !dbg !419
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !418, metadata !DIExpression(DW_OP_deref)), !dbg !419
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #4, !dbg !420
  ret i32 %call, !dbg !421
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !422 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !446, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !447, metadata !DIExpression()), !dbg !448
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #4, !dbg !449
  ret i32 %call, !dbg !450
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !451 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !453, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !454, metadata !DIExpression()), !dbg !455
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #4, !dbg !456
  ret i32 %call, !dbg !457
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !458 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !462, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !463, metadata !DIExpression()), !dbg !464
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #4, !dbg !465
  ret i32 %call, !dbg !466
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !467 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !471, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !472, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !473, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !474, metadata !DIExpression()), !dbg !475
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #4, !dbg !476
  ret i32 %call, !dbg !477
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "graphite-dependences.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !6, !7, !10, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!17 = distinct !DISubprogram(name: "vprintf", scope: !18, file: !18, line: 39, type: !19, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!19 = !DISubroutineType(types: !20)
!20 = !{!6, !21, !22}
!21 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !24)
!24 = !{!25, !27, !28, !29}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !23, file: !1, baseType: !26, size: 32)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !23, file: !1, baseType: !26, size: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !23, file: !1, baseType: !10, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !23, file: !1, baseType: !10, size: 64, offset: 128)
!30 = !{!31, !32}
!31 = !DILocalVariable(name: "__fmt", arg: 1, scope: !17, file: !18, line: 39, type: !21)
!32 = !DILocalVariable(name: "__arg", arg: 2, scope: !17, file: !18, line: 39, type: !22)
!33 = !DILocation(line: 0, scope: !17)
!34 = !DILocation(line: 41, column: 20, scope: !17)
!35 = !DILocation(line: 41, column: 10, scope: !17)
!36 = !DILocation(line: 41, column: 3, scope: !17)
!37 = distinct !DISubprogram(name: "getchar", scope: !18, file: !18, line: 47, type: !38, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!6}
!40 = !DILocation(line: 49, column: 16, scope: !37)
!41 = !DILocation(line: 49, column: 10, scope: !37)
!42 = !DILocation(line: 49, column: 3, scope: !37)
!43 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !18, file: !18, line: 56, type: !44, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!44 = !DISubroutineType(types: !45)
!45 = !{!6, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !48, line: 7, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !50, line: 49, size: 1728, elements: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !69, !70, !71, !75, !77, !79, !83, !86, !88, !91, !94, !95, !96, !100, !101}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !49, file: !50, line: 51, baseType: !6, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !49, file: !50, line: 54, baseType: !8, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !49, file: !50, line: 55, baseType: !8, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !49, file: !50, line: 56, baseType: !8, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !49, file: !50, line: 57, baseType: !8, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !49, file: !50, line: 58, baseType: !8, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !49, file: !50, line: 59, baseType: !8, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !49, file: !50, line: 60, baseType: !8, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !49, file: !50, line: 61, baseType: !8, size: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !49, file: !50, line: 64, baseType: !8, size: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !49, file: !50, line: 65, baseType: !8, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !49, file: !50, line: 66, baseType: !8, size: 64, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !49, file: !50, line: 68, baseType: !65, size: 64, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !50, line: 36, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !49, file: !50, line: 70, baseType: !68, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !49, file: !50, line: 72, baseType: !6, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !49, file: !50, line: 73, baseType: !6, size: 32, offset: 928)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !49, file: !50, line: 74, baseType: !72, size: 64, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !73, line: 152, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!74 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !49, file: !50, line: 77, baseType: !76, size: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !49, file: !50, line: 78, baseType: !78, size: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !49, file: !50, line: 79, baseType: !80, size: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !49, file: !50, line: 81, baseType: !84, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !50, line: 43, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !49, file: !50, line: 89, baseType: !87, size: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 153, baseType: !74)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !49, file: !50, line: 91, baseType: !89, size: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !50, line: 37, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !49, file: !50, line: 92, baseType: !92, size: 64, offset: 1280)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !50, line: 38, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !49, file: !50, line: 93, baseType: !68, size: 64, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !49, file: !50, line: 94, baseType: !10, size: 64, offset: 1408)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !49, file: !50, line: 95, baseType: !97, size: 64, offset: 1472)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!99 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !49, file: !50, line: 96, baseType: !6, size: 32, offset: 1536)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !49, file: !50, line: 98, baseType: !102, size: 160, offset: 1568)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 20)
!105 = !{!106}
!106 = !DILocalVariable(name: "__fp", arg: 1, scope: !43, file: !18, line: 56, type: !46)
!107 = !DILocation(line: 0, scope: !43)
!108 = !DILocation(line: 58, column: 10, scope: !43)
!109 = !DILocation(line: 58, column: 3, scope: !43)
!110 = distinct !DISubprogram(name: "getc_unlocked", scope: !18, file: !18, line: 66, type: !44, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!111 = !{!112}
!112 = !DILocalVariable(name: "__fp", arg: 1, scope: !110, file: !18, line: 66, type: !46)
!113 = !DILocation(line: 0, scope: !110)
!114 = !DILocation(line: 68, column: 10, scope: !110)
!115 = !DILocation(line: 68, column: 3, scope: !110)
!116 = distinct !DISubprogram(name: "getchar_unlocked", scope: !18, file: !18, line: 73, type: !38, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!117 = !DILocation(line: 75, column: 10, scope: !116)
!118 = !DILocation(line: 75, column: 3, scope: !116)
!119 = distinct !DISubprogram(name: "putchar", scope: !18, file: !18, line: 82, type: !120, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!6, !6}
!122 = !{!123}
!123 = !DILocalVariable(name: "__c", arg: 1, scope: !119, file: !18, line: 82, type: !6)
!124 = !DILocation(line: 0, scope: !119)
!125 = !DILocation(line: 84, column: 21, scope: !119)
!126 = !DILocation(line: 84, column: 10, scope: !119)
!127 = !DILocation(line: 84, column: 3, scope: !119)
!128 = distinct !DISubprogram(name: "fputc_unlocked", scope: !18, file: !18, line: 91, type: !129, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{!6, !6, !46}
!131 = !{!132, !133}
!132 = !DILocalVariable(name: "__c", arg: 1, scope: !128, file: !18, line: 91, type: !6)
!133 = !DILocalVariable(name: "__stream", arg: 2, scope: !128, file: !18, line: 91, type: !46)
!134 = !DILocation(line: 0, scope: !128)
!135 = !DILocation(line: 93, column: 10, scope: !128)
!136 = !DILocation(line: 93, column: 3, scope: !128)
!137 = distinct !DISubprogram(name: "putc_unlocked", scope: !18, file: !18, line: 101, type: !129, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "__c", arg: 1, scope: !137, file: !18, line: 101, type: !6)
!140 = !DILocalVariable(name: "__stream", arg: 2, scope: !137, file: !18, line: 101, type: !46)
!141 = !DILocation(line: 0, scope: !137)
!142 = !DILocation(line: 103, column: 10, scope: !137)
!143 = !DILocation(line: 103, column: 3, scope: !137)
!144 = distinct !DISubprogram(name: "putchar_unlocked", scope: !18, file: !18, line: 108, type: !120, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146}
!146 = !DILocalVariable(name: "__c", arg: 1, scope: !144, file: !18, line: 108, type: !6)
!147 = !DILocation(line: 0, scope: !144)
!148 = !DILocation(line: 110, column: 10, scope: !144)
!149 = !DILocation(line: 110, column: 3, scope: !144)
!150 = distinct !DISubprogram(name: "getline", scope: !18, file: !18, line: 118, type: !151, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !7, !154, !46}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !73, line: 193, baseType: !74)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!155 = !{!156, !157, !158}
!156 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !150, file: !18, line: 118, type: !7)
!157 = !DILocalVariable(name: "__n", arg: 2, scope: !150, file: !18, line: 118, type: !154)
!158 = !DILocalVariable(name: "__stream", arg: 3, scope: !150, file: !18, line: 118, type: !46)
!159 = !DILocation(line: 0, scope: !150)
!160 = !DILocation(line: 120, column: 10, scope: !150)
!161 = !DILocation(line: 120, column: 3, scope: !150)
!162 = distinct !DISubprogram(name: "feof_unlocked", scope: !18, file: !18, line: 128, type: !44, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!163 = !{!164}
!164 = !DILocalVariable(name: "__stream", arg: 1, scope: !162, file: !18, line: 128, type: !46)
!165 = !DILocation(line: 0, scope: !162)
!166 = !DILocation(line: 130, column: 10, scope: !162)
!167 = !DILocation(line: 130, column: 3, scope: !162)
!168 = distinct !DISubprogram(name: "ferror_unlocked", scope: !18, file: !18, line: 135, type: !44, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "__stream", arg: 1, scope: !168, file: !18, line: 135, type: !46)
!171 = !DILocation(line: 0, scope: !168)
!172 = !DILocation(line: 137, column: 10, scope: !168)
!173 = !DILocation(line: 137, column: 3, scope: !168)
!174 = distinct !DISubprogram(name: "tolower", scope: !175, file: !175, line: 207, type: !120, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!175 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!176 = !{!177}
!177 = !DILocalVariable(name: "__c", arg: 1, scope: !174, file: !175, line: 207, type: !6)
!178 = !DILocation(line: 0, scope: !174)
!179 = !DILocation(line: 209, column: 22, scope: !174)
!180 = !DILocation(line: 209, column: 39, scope: !174)
!181 = !DILocation(line: 209, column: 38, scope: !174)
!182 = !DILocation(line: 209, column: 37, scope: !174)
!183 = !DILocation(line: 209, column: 10, scope: !174)
!184 = !DILocation(line: 209, column: 3, scope: !174)
!185 = distinct !DISubprogram(name: "toupper", scope: !175, file: !175, line: 213, type: !120, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!186 = !{!187}
!187 = !DILocalVariable(name: "__c", arg: 1, scope: !185, file: !175, line: 213, type: !6)
!188 = !DILocation(line: 0, scope: !185)
!189 = !DILocation(line: 215, column: 22, scope: !185)
!190 = !DILocation(line: 215, column: 39, scope: !185)
!191 = !DILocation(line: 215, column: 38, scope: !185)
!192 = !DILocation(line: 215, column: 37, scope: !185)
!193 = !DILocation(line: 215, column: 10, scope: !185)
!194 = !DILocation(line: 215, column: 3, scope: !185)
!195 = distinct !DISubprogram(name: "atoi", scope: !196, file: !196, line: 361, type: !197, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !199)
!196 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!197 = !DISubroutineType(types: !198)
!198 = !{!6, !11}
!199 = !{!200}
!200 = !DILocalVariable(name: "__nptr", arg: 1, scope: !195, file: !196, line: 361, type: !11)
!201 = !DILocation(line: 0, scope: !195)
!202 = !DILocation(line: 363, column: 16, scope: !195)
!203 = !DILocation(line: 363, column: 10, scope: !195)
!204 = !DILocation(line: 363, column: 3, scope: !195)
!205 = distinct !DISubprogram(name: "atol", scope: !196, file: !196, line: 366, type: !206, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!74, !11}
!208 = !{!209}
!209 = !DILocalVariable(name: "__nptr", arg: 1, scope: !205, file: !196, line: 366, type: !11)
!210 = !DILocation(line: 0, scope: !205)
!211 = !DILocation(line: 368, column: 10, scope: !205)
!212 = !DILocation(line: 368, column: 3, scope: !205)
!213 = distinct !DISubprogram(name: "atoll", scope: !196, file: !196, line: 373, type: !214, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!214 = !DISubroutineType(types: !215)
!215 = !{!216, !11}
!216 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!217 = !{!218}
!218 = !DILocalVariable(name: "__nptr", arg: 1, scope: !213, file: !196, line: 373, type: !11)
!219 = !DILocation(line: 0, scope: !213)
!220 = !DILocation(line: 375, column: 10, scope: !213)
!221 = !DILocation(line: 375, column: 3, scope: !213)
!222 = distinct !DISubprogram(name: "bsearch", scope: !223, file: !223, line: 20, type: !224, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!223 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!224 = !DISubroutineType(types: !225)
!225 = !{!10, !226, !226, !97, !97, !228}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !196, line: 808, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!6, !226, !226}
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!233 = !DILocalVariable(name: "__key", arg: 1, scope: !222, file: !223, line: 20, type: !226)
!234 = !DILocalVariable(name: "__base", arg: 2, scope: !222, file: !223, line: 20, type: !226)
!235 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !222, file: !223, line: 20, type: !97)
!236 = !DILocalVariable(name: "__size", arg: 4, scope: !222, file: !223, line: 20, type: !97)
!237 = !DILocalVariable(name: "__compar", arg: 5, scope: !222, file: !223, line: 21, type: !228)
!238 = !DILocalVariable(name: "__l", scope: !222, file: !223, line: 23, type: !97)
!239 = !DILocalVariable(name: "__u", scope: !222, file: !223, line: 23, type: !97)
!240 = !DILocalVariable(name: "__idx", scope: !222, file: !223, line: 23, type: !97)
!241 = !DILocalVariable(name: "__p", scope: !222, file: !223, line: 24, type: !226)
!242 = !DILocalVariable(name: "__comparison", scope: !222, file: !223, line: 25, type: !6)
!243 = !DILocation(line: 0, scope: !222)
!244 = !DILocation(line: 29, column: 3, scope: !222)
!245 = !DILocation(line: 27, column: 7, scope: !222)
!246 = !DILocation(line: 29, column: 14, scope: !222)
!247 = !DILocation(line: 31, column: 20, scope: !248)
!248 = distinct !DILexicalBlock(scope: !222, file: !223, line: 30, column: 5)
!249 = !DILocation(line: 31, column: 27, scope: !248)
!250 = !DILocation(line: 32, column: 56, scope: !248)
!251 = !DILocation(line: 32, column: 47, scope: !248)
!252 = !DILocation(line: 33, column: 22, scope: !248)
!253 = !DILocation(line: 34, column: 24, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !223, line: 34, column: 11)
!255 = !DILocation(line: 34, column: 11, scope: !248)
!256 = !DILocation(line: 36, column: 29, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !223, line: 36, column: 16)
!258 = !DILocation(line: 36, column: 16, scope: !254)
!259 = !DILocation(line: 37, column: 14, scope: !257)
!260 = distinct !{!260, !244, !261}
!261 = !DILocation(line: 40, column: 5, scope: !222)
!262 = !DILocation(line: 43, column: 1, scope: !222)
!263 = distinct !DISubprogram(name: "atof", scope: !264, file: !264, line: 25, type: !265, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !268)
!264 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !11}
!267 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!268 = !{!269}
!269 = !DILocalVariable(name: "__nptr", arg: 1, scope: !263, file: !264, line: 25, type: !11)
!270 = !DILocation(line: 0, scope: !263)
!271 = !DILocation(line: 27, column: 10, scope: !263)
!272 = !DILocation(line: 27, column: 3, scope: !263)
!273 = distinct !DISubprogram(name: "strtoimax", scope: !274, file: !274, line: 324, type: !275, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!274 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !21, !280, !6}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !278, line: 101, baseType: !279)
!278 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !73, line: 72, baseType: !74)
!280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !7)
!281 = !{!282, !283, !284}
!282 = !DILocalVariable(name: "nptr", arg: 1, scope: !273, file: !274, line: 324, type: !21)
!283 = !DILocalVariable(name: "endptr", arg: 2, scope: !273, file: !274, line: 324, type: !280)
!284 = !DILocalVariable(name: "base", arg: 3, scope: !273, file: !274, line: 324, type: !6)
!285 = !DILocation(line: 0, scope: !273)
!286 = !DILocation(line: 327, column: 10, scope: !273)
!287 = !DILocation(line: 327, column: 3, scope: !273)
!288 = distinct !DISubprogram(name: "strtoumax", scope: !274, file: !274, line: 336, type: !289, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !293)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !21, !280, !6}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !278, line: 102, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !73, line: 73, baseType: !99)
!293 = !{!294, !295, !296}
!294 = !DILocalVariable(name: "nptr", arg: 1, scope: !288, file: !274, line: 336, type: !21)
!295 = !DILocalVariable(name: "endptr", arg: 2, scope: !288, file: !274, line: 336, type: !280)
!296 = !DILocalVariable(name: "base", arg: 3, scope: !288, file: !274, line: 336, type: !6)
!297 = !DILocation(line: 0, scope: !288)
!298 = !DILocation(line: 339, column: 10, scope: !288)
!299 = !DILocation(line: 339, column: 3, scope: !288)
!300 = distinct !DISubprogram(name: "wcstoimax", scope: !274, file: !274, line: 348, type: !301, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!301 = !DISubroutineType(types: !302)
!302 = !{!277, !303, !307, !6}
!303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !274, line: 34, baseType: !6)
!307 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!310 = !{!311, !312, !313}
!311 = !DILocalVariable(name: "nptr", arg: 1, scope: !300, file: !274, line: 348, type: !303)
!312 = !DILocalVariable(name: "endptr", arg: 2, scope: !300, file: !274, line: 348, type: !307)
!313 = !DILocalVariable(name: "base", arg: 3, scope: !300, file: !274, line: 348, type: !6)
!314 = !DILocation(line: 0, scope: !300)
!315 = !DILocation(line: 351, column: 10, scope: !300)
!316 = !DILocation(line: 351, column: 3, scope: !300)
!317 = distinct !DISubprogram(name: "wcstoumax", scope: !274, file: !274, line: 362, type: !318, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{!291, !303, !307, !6}
!320 = !{!321, !322, !323}
!321 = !DILocalVariable(name: "nptr", arg: 1, scope: !317, file: !274, line: 362, type: !303)
!322 = !DILocalVariable(name: "endptr", arg: 2, scope: !317, file: !274, line: 362, type: !307)
!323 = !DILocalVariable(name: "base", arg: 3, scope: !317, file: !274, line: 362, type: !6)
!324 = !DILocation(line: 0, scope: !317)
!325 = !DILocation(line: 365, column: 10, scope: !317)
!326 = !DILocation(line: 365, column: 3, scope: !317)
!327 = distinct !DISubprogram(name: "stat", scope: !328, file: !328, line: 453, type: !329, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !368)
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!329 = !DISubroutineType(types: !330)
!330 = !{!6, !11, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !333, line: 46, size: 1152, elements: !334)
!333 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!334 = !{!335, !337, !339, !341, !343, !345, !347, !348, !349, !350, !352, !354, !362, !363, !364}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !332, file: !333, line: 48, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !73, line: 145, baseType: !99)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !332, file: !333, line: 53, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !73, line: 148, baseType: !99)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !332, file: !333, line: 61, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !73, line: 151, baseType: !99)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !332, file: !333, line: 62, baseType: !342, size: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !73, line: 150, baseType: !26)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !332, file: !333, line: 64, baseType: !344, size: 32, offset: 224)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !73, line: 146, baseType: !26)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !332, file: !333, line: 65, baseType: !346, size: 32, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !73, line: 147, baseType: !26)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !332, file: !333, line: 67, baseType: !6, size: 32, offset: 288)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !332, file: !333, line: 69, baseType: !336, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !332, file: !333, line: 74, baseType: !72, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !332, file: !333, line: 78, baseType: !351, size: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !73, line: 174, baseType: !74)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !332, file: !333, line: 80, baseType: !353, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !73, line: 179, baseType: !74)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !332, file: !333, line: 91, baseType: !355, size: 128, offset: 576)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !356, line: 10, size: 128, elements: !357)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!357 = !{!358, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !355, file: !356, line: 12, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !73, line: 160, baseType: !74)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !355, file: !356, line: 16, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !73, line: 196, baseType: !74)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !332, file: !333, line: 92, baseType: !355, size: 128, offset: 704)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !332, file: !333, line: 93, baseType: !355, size: 128, offset: 832)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !332, file: !333, line: 106, baseType: !365, size: 192, offset: 960)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 192, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 3)
!368 = !{!369, !370}
!369 = !DILocalVariable(name: "__path", arg: 1, scope: !327, file: !328, line: 453, type: !11)
!370 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !327, file: !328, line: 453, type: !331)
!371 = !DILocation(line: 0, scope: !327)
!372 = !DILocation(line: 455, column: 10, scope: !327)
!373 = !DILocation(line: 455, column: 3, scope: !327)
!374 = distinct !DISubprogram(name: "lstat", scope: !328, file: !328, line: 460, type: !329, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!375 = !{!376, !377}
!376 = !DILocalVariable(name: "__path", arg: 1, scope: !374, file: !328, line: 460, type: !11)
!377 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !374, file: !328, line: 460, type: !331)
!378 = !DILocation(line: 0, scope: !374)
!379 = !DILocation(line: 462, column: 10, scope: !374)
!380 = !DILocation(line: 462, column: 3, scope: !374)
!381 = distinct !DISubprogram(name: "fstat", scope: !328, file: !328, line: 467, type: !382, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!6, !6, !331}
!384 = !{!385, !386}
!385 = !DILocalVariable(name: "__fd", arg: 1, scope: !381, file: !328, line: 467, type: !6)
!386 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !381, file: !328, line: 467, type: !331)
!387 = !DILocation(line: 0, scope: !381)
!388 = !DILocation(line: 469, column: 10, scope: !381)
!389 = !DILocation(line: 469, column: 3, scope: !381)
!390 = distinct !DISubprogram(name: "fstatat", scope: !328, file: !328, line: 474, type: !391, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!6, !6, !11, !331, !6}
!393 = !{!394, !395, !396, !397}
!394 = !DILocalVariable(name: "__fd", arg: 1, scope: !390, file: !328, line: 474, type: !6)
!395 = !DILocalVariable(name: "__filename", arg: 2, scope: !390, file: !328, line: 474, type: !11)
!396 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !390, file: !328, line: 474, type: !331)
!397 = !DILocalVariable(name: "__flag", arg: 4, scope: !390, file: !328, line: 474, type: !6)
!398 = !DILocation(line: 0, scope: !390)
!399 = !DILocation(line: 477, column: 10, scope: !390)
!400 = !DILocation(line: 477, column: 3, scope: !390)
!401 = distinct !DISubprogram(name: "mknod", scope: !328, file: !328, line: 483, type: !402, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{!6, !11, !342, !336}
!404 = !{!405, !406, !407}
!405 = !DILocalVariable(name: "__path", arg: 1, scope: !401, file: !328, line: 483, type: !11)
!406 = !DILocalVariable(name: "__mode", arg: 2, scope: !401, file: !328, line: 483, type: !342)
!407 = !DILocalVariable(name: "__dev", arg: 3, scope: !401, file: !328, line: 483, type: !336)
!408 = !DILocation(line: 0, scope: !401)
!409 = !DILocation(line: 485, column: 10, scope: !401)
!410 = !DILocation(line: 485, column: 3, scope: !401)
!411 = distinct !DISubprogram(name: "mknodat", scope: !328, file: !328, line: 491, type: !412, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!6, !6, !11, !342, !336}
!414 = !{!415, !416, !417, !418}
!415 = !DILocalVariable(name: "__fd", arg: 1, scope: !411, file: !328, line: 491, type: !6)
!416 = !DILocalVariable(name: "__path", arg: 2, scope: !411, file: !328, line: 491, type: !11)
!417 = !DILocalVariable(name: "__mode", arg: 3, scope: !411, file: !328, line: 491, type: !342)
!418 = !DILocalVariable(name: "__dev", arg: 4, scope: !411, file: !328, line: 491, type: !336)
!419 = !DILocation(line: 0, scope: !411)
!420 = !DILocation(line: 494, column: 10, scope: !411)
!421 = !DILocation(line: 494, column: 3, scope: !411)
!422 = distinct !DISubprogram(name: "stat64", scope: !328, file: !328, line: 502, type: !423, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !445)
!423 = !DISubroutineType(types: !424)
!424 = !{!6, !11, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !333, line: 119, size: 1152, elements: !427)
!427 = !{!428, !429, !431, !432, !433, !434, !435, !436, !437, !438, !439, !441, !442, !443, !444}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !426, file: !333, line: 121, baseType: !336, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !426, file: !333, line: 123, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !73, line: 149, baseType: !99)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !426, file: !333, line: 124, baseType: !340, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !426, file: !333, line: 125, baseType: !342, size: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !426, file: !333, line: 132, baseType: !344, size: 32, offset: 224)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !426, file: !333, line: 133, baseType: !346, size: 32, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !426, file: !333, line: 135, baseType: !6, size: 32, offset: 288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !426, file: !333, line: 136, baseType: !336, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !426, file: !333, line: 137, baseType: !72, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !426, file: !333, line: 143, baseType: !351, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !426, file: !333, line: 144, baseType: !440, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !73, line: 180, baseType: !74)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !426, file: !333, line: 152, baseType: !355, size: 128, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !426, file: !333, line: 153, baseType: !355, size: 128, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !426, file: !333, line: 154, baseType: !355, size: 128, offset: 832)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !426, file: !333, line: 164, baseType: !365, size: 192, offset: 960)
!445 = !{!446, !447}
!446 = !DILocalVariable(name: "__path", arg: 1, scope: !422, file: !328, line: 502, type: !11)
!447 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !422, file: !328, line: 502, type: !425)
!448 = !DILocation(line: 0, scope: !422)
!449 = !DILocation(line: 504, column: 10, scope: !422)
!450 = !DILocation(line: 504, column: 3, scope: !422)
!451 = distinct !DISubprogram(name: "lstat64", scope: !328, file: !328, line: 509, type: !423, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !452)
!452 = !{!453, !454}
!453 = !DILocalVariable(name: "__path", arg: 1, scope: !451, file: !328, line: 509, type: !11)
!454 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !451, file: !328, line: 509, type: !425)
!455 = !DILocation(line: 0, scope: !451)
!456 = !DILocation(line: 511, column: 10, scope: !451)
!457 = !DILocation(line: 511, column: 3, scope: !451)
!458 = distinct !DISubprogram(name: "fstat64", scope: !328, file: !328, line: 516, type: !459, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!6, !6, !425}
!461 = !{!462, !463}
!462 = !DILocalVariable(name: "__fd", arg: 1, scope: !458, file: !328, line: 516, type: !6)
!463 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !458, file: !328, line: 516, type: !425)
!464 = !DILocation(line: 0, scope: !458)
!465 = !DILocation(line: 518, column: 10, scope: !458)
!466 = !DILocation(line: 518, column: 3, scope: !458)
!467 = distinct !DISubprogram(name: "fstatat64", scope: !328, file: !328, line: 523, type: !468, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!6, !6, !11, !425, !6}
!470 = !{!471, !472, !473, !474}
!471 = !DILocalVariable(name: "__fd", arg: 1, scope: !467, file: !328, line: 523, type: !6)
!472 = !DILocalVariable(name: "__filename", arg: 2, scope: !467, file: !328, line: 523, type: !11)
!473 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !467, file: !328, line: 523, type: !425)
!474 = !DILocalVariable(name: "__flag", arg: 4, scope: !467, file: !328, line: 523, type: !6)
!475 = !DILocation(line: 0, scope: !467)
!476 = !DILocation(line: 526, column: 10, scope: !467)
!477 = !DILocation(line: 526, column: 3, scope: !467)
