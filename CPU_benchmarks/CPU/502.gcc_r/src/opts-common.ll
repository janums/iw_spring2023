; ModuleID = 'opts-common.bc'
source_filename = "opts-common.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cl_option = type { i8*, i8*, i16, i8, i32, i32, i8*, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cl_options_count = external dso_local local_unnamed_addr constant i32, align 4
@cl_options = external dso_local local_unnamed_addr constant [0 x %struct.cl_option], align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !27 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !40, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !41, metadata !DIExpression()), !dbg !42
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !43
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !44
  ret i32 %call, !dbg !45
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !46 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !50
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !51
  ret i32 %call, !dbg !52
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !53 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !116, metadata !DIExpression()), !dbg !117
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !118
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !118
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !118
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !118
  %cmp = icmp uge i8* %0, %1, !dbg !118
  %conv1 = zext i1 %cmp to i64, !dbg !118
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !118
  %tobool = icmp eq i64 %expval, 0, !dbg !118
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !118

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !118
  br label %cond.end, !dbg !118

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !118
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !118
  %2 = load i8, i8* %0, align 1, !dbg !118
  %conv3 = zext i8 %2 to i32, !dbg !118
  br label %cond.end, !dbg !118

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !118
  ret i32 %cond, !dbg !119
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !120 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !122, metadata !DIExpression()), !dbg !123
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !124
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !124
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !124
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !124
  %cmp = icmp uge i8* %0, %1, !dbg !124
  %conv1 = zext i1 %cmp to i64, !dbg !124
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !124
  %tobool = icmp eq i64 %expval, 0, !dbg !124
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !124

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !124
  br label %cond.end, !dbg !124

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !124
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !124
  %2 = load i8, i8* %0, align 1, !dbg !124
  %conv3 = zext i8 %2 to i32, !dbg !124
  br label %cond.end, !dbg !124

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !124
  ret i32 %cond, !dbg !125
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !126 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !127
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !127
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !127
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !127
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !127
  %cmp = icmp uge i8* %1, %2, !dbg !127
  %conv1 = zext i1 %cmp to i64, !dbg !127
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !127
  %tobool = icmp eq i64 %expval, 0, !dbg !127
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !127

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !127
  br label %cond.end, !dbg !127

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !127
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !127
  %3 = load i8, i8* %1, align 1, !dbg !127
  %conv3 = zext i8 %3 to i32, !dbg !127
  br label %cond.end, !dbg !127

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !127
  ret i32 %cond, !dbg !128
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !129 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !135
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !136
  ret i32 %call, !dbg !137
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !138 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !142, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !143, metadata !DIExpression()), !dbg !144
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !145
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !145
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !145
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !145
  %cmp = icmp uge i8* %0, %1, !dbg !145
  %conv1 = zext i1 %cmp to i64, !dbg !145
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !145
  %tobool = icmp eq i64 %expval, 0, !dbg !145
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !145

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !145
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !145
  br label %cond.end, !dbg !145

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !145
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !145
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !145
  store i8 %conv2, i8* %0, align 1, !dbg !145
  %conv6 = and i32 %__c, 255, !dbg !145
  br label %cond.end, !dbg !145

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !145
  ret i32 %cond, !dbg !146
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !147 {
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !154 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !158
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !158
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !158
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !158
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !158
  %cmp = icmp uge i8* %1, %2, !dbg !158
  %conv1 = zext i1 %cmp to i64, !dbg !158
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !158
  %tobool = icmp eq i64 %expval, 0, !dbg !158
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !158

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !158
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !158
  br label %cond.end, !dbg !158

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !158
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !158
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !158
  store i8 %conv4, i8* %1, align 1, !dbg !158
  %conv6 = and i32 %__c, 255, !dbg !158
  br label %cond.end, !dbg !158

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !158
  ret i32 %cond, !dbg !159
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !160 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !166, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i64* %__n, metadata !167, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !168, metadata !DIExpression()), !dbg !169
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !170
  ret i64 %call, !dbg !171
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !172 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !174, metadata !DIExpression()), !dbg !175
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !176
  %0 = load i32, i32* %_flags, align 8, !dbg !176
  %and = lshr i32 %0, 4, !dbg !176
  %and.lobit = and i32 %and, 1, !dbg !176
  ret i32 %and.lobit, !dbg !177
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !178 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !180, metadata !DIExpression()), !dbg !181
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !182
  %0 = load i32, i32* %_flags, align 8, !dbg !182
  %and = lshr i32 %0, 5, !dbg !182
  %and.lobit = and i32 %and, 1, !dbg !182
  ret i32 %and.lobit, !dbg !183
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !184 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !187, metadata !DIExpression()), !dbg !188
  %__c.off = add i32 %__c, 128, !dbg !189
  %0 = icmp ult i32 %__c.off, 384, !dbg !189
  br i1 %0, label %cond.true, label %cond.end, !dbg !189

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !190
  %1 = load i32*, i32** %call, align 8, !dbg !191
  %idxprom = sext i32 %__c to i64, !dbg !192
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !192
  %2 = load i32, i32* %arrayidx, align 4, !dbg !192
  br label %cond.end, !dbg !193

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !193
  ret i32 %cond, !dbg !194
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !195 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !197, metadata !DIExpression()), !dbg !198
  %__c.off = add i32 %__c, 128, !dbg !199
  %0 = icmp ult i32 %__c.off, 384, !dbg !199
  br i1 %0, label %cond.true, label %cond.end, !dbg !199

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !200
  %1 = load i32*, i32** %call, align 8, !dbg !201
  %idxprom = sext i32 %__c to i64, !dbg !202
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !202
  %2 = load i32, i32* %arrayidx, align 4, !dbg !202
  br label %cond.end, !dbg !203

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !203
  ret i32 %cond, !dbg !204
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !210, metadata !DIExpression()), !dbg !211
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !212
  %conv = trunc i64 %call to i32, !dbg !213
  ret i32 %conv, !dbg !214
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !219, metadata !DIExpression()), !dbg !220
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !221
  ret i64 %call, !dbg !222
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !223 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !228, metadata !DIExpression()), !dbg !229
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !230
  ret i64 %call, !dbg !231
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !243, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i8* %__base, metadata !244, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !245, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 %__size, metadata !246, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !249, metadata !DIExpression()), !dbg !253
  br label %while.cond, !dbg !254

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !255
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !253
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !249, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !248, metadata !DIExpression()), !dbg !253
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !256
  br i1 %cmp, label %while.body, label %cleanup, !dbg !254

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !257
  %div = lshr i64 %add, 1, !dbg !259
  call void @llvm.dbg.value(metadata i64 %div, metadata !250, metadata !DIExpression()), !dbg !253
  %mul = mul i64 %div, %__size, !dbg !260
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !261
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !251, metadata !DIExpression()), !dbg !253
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !262
  call void @llvm.dbg.value(metadata i32 %call, metadata !252, metadata !DIExpression()), !dbg !253
  %cmp1 = icmp slt i32 %call, 0, !dbg !263
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !265

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !266
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !268

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !269
  call void @llvm.dbg.value(metadata i64 %add4, metadata !248, metadata !DIExpression()), !dbg !253
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !253
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !253
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !249, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !248, metadata !DIExpression()), !dbg !253
  br label %while.cond, !dbg !254, !llvm.loop !270

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !253
  ret i8* %retval.0, !dbg !272
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !273 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !279, metadata !DIExpression()), !dbg !280
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !281
  ret double %call, !dbg !282
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !283 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !292, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %base, metadata !294, metadata !DIExpression()), !dbg !295
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !296
  ret i64 %call, !dbg !297
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !298 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !304, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !305, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i32 %base, metadata !306, metadata !DIExpression()), !dbg !307
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !308
  ret i64 %call, !dbg !309
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !310 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !321, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !322, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i32 %base, metadata !323, metadata !DIExpression()), !dbg !324
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !325
  ret i64 %call, !dbg !326
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !327 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !331, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %base, metadata !333, metadata !DIExpression()), !dbg !334
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !335
  ret i64 %call, !dbg !336
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !337 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !380, metadata !DIExpression()), !dbg !381
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !382
  ret i32 %call, !dbg !383
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !384 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !386, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !387, metadata !DIExpression()), !dbg !388
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !389
  ret i32 %call, !dbg !390
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !395, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !396, metadata !DIExpression()), !dbg !397
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !398
  ret i32 %call, !dbg !399
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !400 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !404, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !405, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !406, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !407, metadata !DIExpression()), !dbg !408
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !409
  ret i32 %call, !dbg !410
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !411 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !415, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !416, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !417, metadata !DIExpression()), !dbg !418
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !417, metadata !DIExpression(DW_OP_deref)), !dbg !418
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !419
  ret i32 %call, !dbg !420
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !421 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !425, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8* %__path, metadata !426, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !428, metadata !DIExpression()), !dbg !429
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !428, metadata !DIExpression(DW_OP_deref)), !dbg !429
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !430
  ret i32 %call, !dbg !431
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !432 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !456, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !457, metadata !DIExpression()), !dbg !458
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !459
  ret i32 %call, !dbg !460
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !461 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !463, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !464, metadata !DIExpression()), !dbg !465
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !466
  ret i32 %call, !dbg !467
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !468 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !472, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !473, metadata !DIExpression()), !dbg !474
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !475
  ret i32 %call, !dbg !476
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !477 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !481, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !482, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !484, metadata !DIExpression()), !dbg !485
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !486
  ret i32 %call, !dbg !487
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @find_opt(i8* %input, i32 %lang_mask) local_unnamed_addr #3 !dbg !488 {
entry:
  call void @llvm.dbg.value(metadata i8* %input, metadata !492, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i32 %lang_mask, metadata !493, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 0, metadata !494, metadata !DIExpression()), !dbg !515
  %0 = load i32, i32* @cl_options_count, align 4, !dbg !516
  %conv = zext i32 %0 to i64, !dbg !516
  call void @llvm.dbg.value(metadata i64 %conv, metadata !495, metadata !DIExpression()), !dbg !515
  br label %while.cond, !dbg !517

while.cond:                                       ; preds = %while.body, %entry
  %mx.0 = phi i64 [ %conv, %entry ], [ %div.mx.0, %while.body ], !dbg !515
  %mn.0 = phi i64 [ 0, %entry ], [ %mn.0.div, %while.body ], !dbg !518
  call void @llvm.dbg.value(metadata i64 %mn.0, metadata !494, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 %mx.0, metadata !495, metadata !DIExpression()), !dbg !515
  %sub = sub i64 %mx.0, %mn.0, !dbg !519
  %cmp = icmp ugt i64 %sub, 1, !dbg !520
  br i1 %cmp, label %while.body, label %while.end, !dbg !517

while.body:                                       ; preds = %while.cond
  %add = add i64 %mn.0, %mx.0, !dbg !521
  %div = lshr i64 %add, 1, !dbg !523
  call void @llvm.dbg.value(metadata i64 %div, metadata !496, metadata !DIExpression()), !dbg !515
  %opt_len2 = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %div, i32 3, !dbg !524
  %1 = load i8, i8* %opt_len2, align 2, !dbg !524
  %conv3 = zext i8 %1 to i64, !dbg !525
  call void @llvm.dbg.value(metadata i64 %conv3, metadata !497, metadata !DIExpression()), !dbg !515
  %opt_text = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %div, i32 0, !dbg !526
  %2 = load i8*, i8** %opt_text, align 8, !dbg !526
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !527
  %call = tail call i32 @strncmp(i8* %input, i8* nonnull %add.ptr, i64 %conv3) #5, !dbg !528
  call void @llvm.dbg.value(metadata i32 %call, metadata !499, metadata !DIExpression()), !dbg !515
  %cmp5 = icmp slt i32 %call, 0, !dbg !529
  %div.mx.0 = select i1 %cmp5, i64 %div, i64 %mx.0
  %mn.0.div = select i1 %cmp5, i64 %mn.0, i64 %div
  call void @llvm.dbg.value(metadata i64 %mn.0.div, metadata !494, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 %div.mx.0, metadata !495, metadata !DIExpression()), !dbg !515
  br label %while.cond, !dbg !517, !llvm.loop !531

while.end:                                        ; preds = %while.cond
  %mn.0.lcssa = phi i64 [ %mn.0, %while.cond ], !dbg !518
  call void @llvm.dbg.value(metadata i64 %mn.0.lcssa, metadata !494, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 %mn.0.lcssa, metadata !494, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 %mn.0.lcssa, metadata !494, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 %conv, metadata !498, metadata !DIExpression()), !dbg !515
  br label %do.body, !dbg !533

do.body:                                          ; preds = %do.cond, %while.end
  %mn.2 = phi i64 [ %mn.0.lcssa, %while.end ], [ %mn.3, %do.cond ], !dbg !515
  %match_wrong_lang.0 = phi i64 [ %conv, %while.end ], [ %match_wrong_lang.3, %do.cond ], !dbg !534
  %retval.0 = phi i64 [ undef, %while.end ], [ %retval.1, %do.cond ]
  call void @llvm.dbg.value(metadata i64 %match_wrong_lang.0, metadata !498, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 %mn.2, metadata !494, metadata !DIExpression()), !dbg !515
  %opt_text9 = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %mn.2, i32 0, !dbg !535
  %3 = load i8*, i8** %opt_text9, align 8, !dbg !535
  %add.ptr10 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !537
  %opt_len11 = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %mn.2, i32 3, !dbg !538
  %4 = load i8, i8* %opt_len11, align 2, !dbg !538
  %conv12 = zext i8 %4 to i64, !dbg !539
  %call13 = tail call i32 @strncmp(i8* %input, i8* nonnull %add.ptr10, i64 %conv12) #5, !dbg !540
  %tobool = icmp eq i32 %call13, 0, !dbg !540
  br i1 %tobool, label %land.lhs.true, label %if.end31, !dbg !541

land.lhs.true:                                    ; preds = %do.body
  %arrayidx15 = getelementptr inbounds i8, i8* %input, i64 %conv12, !dbg !542
  %5 = load i8, i8* %arrayidx15, align 1, !dbg !542
  %cmp17 = icmp eq i8 %5, 0, !dbg !543
  br i1 %cmp17, label %land.lhs.true.if.then20_crit_edge, label %lor.lhs.false, !dbg !544

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  %flags21.phi.trans.insert = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %mn.2, i32 5, !dbg !545
  %.pre = load i32, i32* %flags21.phi.trans.insert, align 8, !dbg !548
  br label %if.then20, !dbg !544

lor.lhs.false:                                    ; preds = %land.lhs.true
  %flags = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %mn.2, i32 5, !dbg !549
  %6 = load i32, i32* %flags, align 8, !dbg !549
  %and = and i32 %6, 33554432, !dbg !550
  %tobool19 = icmp eq i32 %and, 0, !dbg !550
  br i1 %tobool19, label %if.end31, label %if.then20, !dbg !551

if.then20:                                        ; preds = %land.lhs.true.if.then20_crit_edge, %lor.lhs.false
  %7 = phi i32 [ %.pre, %land.lhs.true.if.then20_crit_edge ], [ %6, %lor.lhs.false ], !dbg !548
  %and22 = and i32 %7, %lang_mask, !dbg !552
  %tobool23 = icmp eq i32 %and22, 0, !dbg !552
  br i1 %tobool23, label %if.end25, label %cleanup, !dbg !553

if.end25:                                         ; preds = %if.then20
  %cmp27 = icmp eq i64 %match_wrong_lang.0, %conv, !dbg !554
  %spec.select = select i1 %cmp27, i64 %mn.2, i64 %match_wrong_lang.0, !dbg !556
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !498, metadata !DIExpression()), !dbg !515
  br label %if.end31, !dbg !557

if.end31:                                         ; preds = %lor.lhs.false, %do.body, %if.end25
  %match_wrong_lang.2 = phi i64 [ %match_wrong_lang.0, %do.body ], [ %spec.select, %if.end25 ], [ %match_wrong_lang.0, %lor.lhs.false ], !dbg !515
  call void @llvm.dbg.value(metadata i64 %match_wrong_lang.2, metadata !498, metadata !DIExpression()), !dbg !515
  %back_chain = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %mn.2, i32 2, !dbg !558
  %8 = load i16, i16* %back_chain, align 8, !dbg !558
  %conv32 = zext i16 %8 to i64, !dbg !559
  call void @llvm.dbg.value(metadata i64 %conv32, metadata !494, metadata !DIExpression()), !dbg !515
  br label %cleanup, !dbg !560

cleanup:                                          ; preds = %if.then20, %if.end31
  %mn.3 = phi i64 [ %conv32, %if.end31 ], [ %mn.2, %if.then20 ], !dbg !515
  %match_wrong_lang.3 = phi i64 [ %match_wrong_lang.2, %if.end31 ], [ %match_wrong_lang.0, %if.then20 ], !dbg !534
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end31 ], [ false, %if.then20 ]
  %retval.1 = phi i64 [ %retval.0, %if.end31 ], [ %mn.2, %if.then20 ]
  call void @llvm.dbg.value(metadata i64 %match_wrong_lang.3, metadata !498, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 %mn.3, metadata !494, metadata !DIExpression()), !dbg !515
  br i1 %cleanup.dest.slot.0, label %do.cond, label %cleanup36

do.cond:                                          ; preds = %cleanup
  %cmp34 = icmp eq i64 %mn.3, %conv, !dbg !561
  br i1 %cmp34, label %cleanup36, label %do.body, !dbg !562, !llvm.loop !563

cleanup36:                                        ; preds = %do.cond, %cleanup
  %retval.2 = phi i64 [ %retval.1, %cleanup ], [ %match_wrong_lang.3, %do.cond ]
  ret i64 %retval.2, !dbg !565
}

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @prune_options(i32* %argcp, i8*** %argvp) local_unnamed_addr #3 !dbg !566 {
entry:
  call void @llvm.dbg.value(metadata i32* %argcp, metadata !571, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i8*** %argvp, metadata !572, metadata !DIExpression()), !dbg !607
  %0 = load i32, i32* %argcp, align 4, !dbg !608
  call void @llvm.dbg.value(metadata i32 %0, metadata !573, metadata !DIExpression()), !dbg !607
  %conv = sext i32 %0 to i64, !dbg !609
  %mul = shl nsw i64 %conv, 2, !dbg !609
  %call = tail call i8* @xmalloc(i64 %mul) #5, !dbg !609
  %1 = bitcast i8* %call to i32*, !dbg !609
  call void @llvm.dbg.value(metadata i32* %1, metadata !574, metadata !DIExpression()), !dbg !607
  %mul2 = shl nsw i64 %conv, 3, !dbg !610
  %call3 = tail call i8* @xmalloc(i64 %mul2) #5, !dbg !610
  call void @llvm.dbg.value(metadata i8** %13, metadata !575, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 0, metadata !578, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 1, metadata !576, metadata !DIExpression()), !dbg !607
  %2 = load i32, i32* @cl_options_count, align 4, !dbg !611
  %conv6 = zext i32 %2 to i64, !dbg !611
  %3 = sext i32 %0 to i64, !dbg !612
  br label %for.cond, !dbg !612

for.cond:                                         ; preds = %cleanup, %entry
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %cleanup ], [ 1, %entry ], !dbg !613
  %need_prune.0 = phi i32 [ %need_prune.1, %cleanup ], [ 0, %entry ], !dbg !613
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !576, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 %need_prune.0, metadata !578, metadata !DIExpression()), !dbg !607
  %cmp = icmp slt i64 %indvars.iv5, %3, !dbg !614
  br i1 %cmp, label %for.body, label %for.end, !dbg !615

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 1, metadata !581, metadata !DIExpression()), !dbg !616
  %4 = load i8**, i8*** %argvp, align 8, !dbg !617
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %indvars.iv5, !dbg !618
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !618
  call void @llvm.dbg.value(metadata i8* %5, metadata !585, metadata !DIExpression()), !dbg !616
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, !dbg !619
  %call5 = tail call i64 @find_opt(i8* nonnull %add.ptr, i32 -1) #6, !dbg !620
  call void @llvm.dbg.value(metadata i64 %call5, metadata !580, metadata !DIExpression()), !dbg !607
  %cmp7 = icmp eq i64 %call5, %conv6, !dbg !621
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !622

land.lhs.true:                                    ; preds = %for.body
  %6 = load i8, i8* %add.ptr, align 1, !dbg !623
  %cmp11 = icmp eq i8 %6, 87, !dbg !624
  br i1 %cmp11, label %land.lhs.true22, label %lor.lhs.false, !dbg !625

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp15 = icmp eq i8 %6, 102, !dbg !626
  br i1 %cmp15, label %land.lhs.true22, label %lor.lhs.false17, !dbg !627

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %cmp20 = icmp eq i8 %6, 109, !dbg !628
  br i1 %cmp20, label %land.lhs.true22, label %if.end, !dbg !629

land.lhs.true22:                                  ; preds = %lor.lhs.false17, %lor.lhs.false, %land.lhs.true
  %arrayidx23 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !630
  %7 = load i8, i8* %arrayidx23, align 1, !dbg !630
  %cmp25 = icmp eq i8 %7, 110, !dbg !631
  br i1 %cmp25, label %land.lhs.true27, label %if.end, !dbg !632

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %arrayidx28 = getelementptr inbounds i8, i8* %5, i64 3, !dbg !633
  %8 = load i8, i8* %arrayidx28, align 1, !dbg !633
  %cmp30 = icmp eq i8 %8, 111, !dbg !634
  br i1 %cmp30, label %land.lhs.true32, label %if.end, !dbg !635

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %arrayidx33 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !636
  %9 = load i8, i8* %arrayidx33, align 1, !dbg !636
  %cmp35 = icmp eq i8 %9, 45, !dbg !637
  br i1 %cmp35, label %if.then, label %if.end, !dbg !638

if.then:                                          ; preds = %land.lhs.true32
  %call37 = tail call i64 @strlen(i8* %5) #5, !dbg !639
  call void @llvm.dbg.value(metadata i64 %call37, metadata !589, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !640
  %add = add i64 %call37, -2, !dbg !641
  %call39 = tail call i8* @xmalloc(i64 %add) #5, !dbg !641
  call void @llvm.dbg.value(metadata i8* %call39, metadata !586, metadata !DIExpression()), !dbg !640
  store i8 45, i8* %call39, align 1, !dbg !642
  %10 = load i8, i8* %add.ptr, align 1, !dbg !643
  %arrayidx42 = getelementptr inbounds i8, i8* %call39, i64 1, !dbg !644
  store i8 %10, i8* %arrayidx42, align 1, !dbg !645
  %add.ptr43 = getelementptr inbounds i8, i8* %call39, i64 2, !dbg !646
  %add.ptr44 = getelementptr inbounds i8, i8* %5, i64 5, !dbg !647
  %add46 = add i64 %call37, -4, !dbg !648
  %call47 = tail call i8* @memcpy(i8* nonnull %add.ptr43, i8* nonnull %add.ptr44, i64 %add46) #5, !dbg !649
  call void @llvm.dbg.value(metadata i8* %call39, metadata !585, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata i32 0, metadata !581, metadata !DIExpression()), !dbg !616
  %call49 = tail call i64 @find_opt(i8* nonnull %arrayidx42, i32 -1) #6, !dbg !650
  call void @llvm.dbg.value(metadata i64 %call49, metadata !580, metadata !DIExpression()), !dbg !607
  tail call void @free(i8* %call39) #5, !dbg !651
  br label %if.end, !dbg !652

if.end:                                           ; preds = %if.then, %land.lhs.true32, %land.lhs.true27, %land.lhs.true22, %lor.lhs.false17, %for.body
  %opt_index.0 = phi i64 [ %call49, %if.then ], [ %conv6, %land.lhs.true32 ], [ %conv6, %land.lhs.true27 ], [ %conv6, %land.lhs.true22 ], [ %conv6, %lor.lhs.false17 ], [ %call5, %for.body ], !dbg !616
  %value.0 = phi i32 [ 0, %if.then ], [ 1, %land.lhs.true32 ], [ 1, %land.lhs.true27 ], [ 1, %land.lhs.true22 ], [ 1, %lor.lhs.false17 ], [ 1, %for.body ], !dbg !616
  call void @llvm.dbg.value(metadata i32 %value.0, metadata !581, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata i64 %opt_index.0, metadata !580, metadata !DIExpression()), !dbg !607
  %cmp51 = icmp eq i64 %opt_index.0, %conv6, !dbg !653
  br i1 %cmp51, label %cont, label %if.end56, !dbg !654

cont:                                             ; preds = %land.lhs.true65, %if.end61, %if.end56, %if.end
  call void @llvm.dbg.label(metadata !598), !dbg !655
  %arrayidx55 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv5, !dbg !656
  store i32 0, i32* %arrayidx55, align 4, !dbg !657
  br label %cleanup, !dbg !658

if.end56:                                         ; preds = %if.end
  %neg_index = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %opt_index.0, i32 4, !dbg !659
  %11 = load i32, i32* %neg_index, align 4, !dbg !659
  %cmp58 = icmp slt i32 %11, 0, !dbg !661
  br i1 %cmp58, label %cont, label %if.end61, !dbg !662

if.end61:                                         ; preds = %if.end56
  %flags = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %opt_index.0, i32 5, !dbg !663
  %12 = load i32, i32* %flags, align 8, !dbg !663
  %and = and i32 %12, 33554432, !dbg !665
  %tobool = icmp eq i32 %and, 0, !dbg !665
  br i1 %tobool, label %if.end63, label %cont, !dbg !666

if.end63:                                         ; preds = %if.end61
  %tobool64 = icmp eq i32 %value.0, 0, !dbg !667
  br i1 %tobool64, label %land.lhs.true65, label %if.end70, !dbg !669

land.lhs.true65:                                  ; preds = %if.end63
  %and67 = and i32 %12, 134217728, !dbg !670
  %tobool68 = icmp eq i32 %and67, 0, !dbg !670
  br i1 %tobool68, label %if.end70, label %cont, !dbg !671

if.end70:                                         ; preds = %land.lhs.true65, %if.end63
  %conv71 = trunc i64 %opt_index.0 to i32, !dbg !672
  %arrayidx73 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv5, !dbg !673
  store i32 %conv71, i32* %arrayidx73, align 4, !dbg !674
  %or = or i32 %need_prune.0, %conv71, !dbg !675
  call void @llvm.dbg.value(metadata i32 %or, metadata !578, metadata !DIExpression()), !dbg !607
  br label %cleanup, !dbg !676

cleanup:                                          ; preds = %if.end70, %cont
  %need_prune.1 = phi i32 [ %need_prune.0, %cont ], [ %or, %if.end70 ], !dbg !607
  call void @llvm.dbg.value(metadata i32 %need_prune.1, metadata !578, metadata !DIExpression()), !dbg !607
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !677
  call void @llvm.dbg.value(metadata i32 undef, metadata !576, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !607
  br label %for.cond, !dbg !678, !llvm.loop !679

for.end:                                          ; preds = %for.cond
  %need_prune.0.lcssa = phi i32 [ %need_prune.0, %for.cond ], !dbg !613
  call void @llvm.dbg.value(metadata i32 %need_prune.0.lcssa, metadata !578, metadata !DIExpression()), !dbg !607
  %13 = bitcast i8* %call3 to i8**, !dbg !610
  call void @llvm.dbg.value(metadata i32 %need_prune.0.lcssa, metadata !578, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 %need_prune.0.lcssa, metadata !578, metadata !DIExpression()), !dbg !607
  %tobool77 = icmp eq i32 %need_prune.0.lcssa, 0, !dbg !681
  br i1 %tobool77, label %done, label %if.end79, !dbg !683

if.end79:                                         ; preds = %for.end
  %14 = bitcast i8*** %argvp to i64**, !dbg !684
  %15 = load i64*, i64** %14, align 8, !dbg !684
  %16 = load i64, i64* %15, align 8, !dbg !685
  %17 = bitcast i8* %call3 to i64*, !dbg !686
  store i64 %16, i64* %17, align 8, !dbg !686
  call void @llvm.dbg.value(metadata i32 1, metadata !577, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 1, metadata !576, metadata !DIExpression()), !dbg !607
  %18 = add i32 %0, -1, !dbg !687
  %19 = sext i32 %0 to i64, !dbg !687
  br label %for.cond82, !dbg !687

for.cond82:                                       ; preds = %for.inc117, %if.end79
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc117 ], [ 1, %if.end79 ], !dbg !607
  %arg_count.0 = phi i32 [ %arg_count.1, %for.inc117 ], [ 1, %if.end79 ], !dbg !607
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !576, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 %arg_count.0, metadata !577, metadata !DIExpression()), !dbg !607
  %cmp83 = icmp slt i64 %indvars.iv, %19, !dbg !688
  br i1 %cmp83, label %for.body85, label %for.end119, !dbg !689

for.body85:                                       ; preds = %for.cond82
  %arrayidx87 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv, !dbg !690
  %20 = load i32, i32* %arrayidx87, align 4, !dbg !690
  call void @llvm.dbg.value(metadata i32 %20, metadata !594, metadata !DIExpression()), !dbg !691
  %tobool88 = icmp eq i32 %20, 0, !dbg !692
  br i1 %tobool88, label %keep, label %if.then89, !dbg !693

if.then89:                                        ; preds = %for.body85
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !590, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !691
  %wide.trip.count = zext i32 %18 to i64, !dbg !694
  br label %for.cond91, !dbg !697

for.cond91:                                       ; preds = %for.inc104, %if.then89
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc104 ], [ %indvars.iv, %if.then89 ]
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !698
  call void @llvm.dbg.value(metadata i32 undef, metadata !590, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !691
  %21 = trunc i64 %indvars.iv.next4 to i32, !dbg !699
  %exitcond = icmp eq i64 %indvars.iv3, %wide.trip.count, !dbg !694
  br i1 %exitcond, label %if.end107, label %for.body94, !dbg !699

for.body94:                                       ; preds = %for.cond91
  %arrayidx96 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4, !dbg !700
  %22 = load i32, i32* %arrayidx96, align 4, !dbg !700
  call void @llvm.dbg.value(metadata i32 %22, metadata !595, metadata !DIExpression()), !dbg !702
  %tobool97 = icmp eq i32 %22, 0, !dbg !703
  br i1 %tobool97, label %for.inc104, label %land.lhs.true98, !dbg !705

land.lhs.true98:                                  ; preds = %for.body94
  %call99 = tail call fastcc zeroext i8 @cancel_option(i32 %20, i32 %22, i32 %22) #6, !dbg !706
  %tobool101 = icmp eq i8 %call99, 0, !dbg !706
  br i1 %tobool101, label %for.inc104, label %if.end107, !dbg !707

for.inc104:                                       ; preds = %land.lhs.true98, %for.body94
  call void @llvm.dbg.value(metadata i32 undef, metadata !590, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !691
  br label %for.cond91, !dbg !708, !llvm.loop !709

if.end107:                                        ; preds = %for.cond91, %land.lhs.true98
  %.lcssa = phi i32 [ %21, %for.cond91 ], [ %21, %land.lhs.true98 ], !dbg !699
  %cmp108 = icmp eq i32 %0, %.lcssa, !dbg !711
  br i1 %cmp108, label %keep, label %for.inc117, !dbg !712

keep:                                             ; preds = %for.body85, %if.end107
  call void @llvm.dbg.label(metadata !601), !dbg !713
  %23 = load i8**, i8*** %argvp, align 8, !dbg !714
  %arrayidx112 = getelementptr inbounds i8*, i8** %23, i64 %indvars.iv, !dbg !715
  %24 = bitcast i8** %arrayidx112 to i64*, !dbg !715
  %25 = load i64, i64* %24, align 8, !dbg !715
  %idxprom113 = sext i32 %arg_count.0 to i64, !dbg !716
  %arrayidx114 = getelementptr inbounds i8*, i8** %13, i64 %idxprom113, !dbg !716
  %26 = bitcast i8** %arrayidx114 to i64*, !dbg !717
  store i64 %25, i64* %26, align 8, !dbg !717
  %inc115 = add nsw i32 %arg_count.0, 1, !dbg !718
  call void @llvm.dbg.value(metadata i32 %inc115, metadata !577, metadata !DIExpression()), !dbg !607
  br label %for.inc117, !dbg !719

for.inc117:                                       ; preds = %if.end107, %keep
  %arg_count.1 = phi i32 [ %inc115, %keep ], [ %arg_count.0, %if.end107 ], !dbg !607
  call void @llvm.dbg.value(metadata i32 %arg_count.1, metadata !577, metadata !DIExpression()), !dbg !607
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !720
  call void @llvm.dbg.value(metadata i32 undef, metadata !576, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !607
  br label %for.cond82, !dbg !721, !llvm.loop !722

for.end119:                                       ; preds = %for.cond82
  %arg_count.0.lcssa = phi i32 [ %arg_count.0, %for.cond82 ], !dbg !607
  call void @llvm.dbg.value(metadata i32 %arg_count.0.lcssa, metadata !577, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 %arg_count.0.lcssa, metadata !577, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 %arg_count.0.lcssa, metadata !577, metadata !DIExpression()), !dbg !607
  %cmp120 = icmp eq i32 %arg_count.0.lcssa, %0, !dbg !724
  br i1 %cmp120, label %done, label %if.then122, !dbg !725

if.then122:                                       ; preds = %for.end119
  store i32 %arg_count.0.lcssa, i32* %argcp, align 4, !dbg !726
  %27 = bitcast i8*** %argvp to i8**, !dbg !728
  store i8* %call3, i8** %27, align 8, !dbg !728
  br label %if.end124, !dbg !729

done:                                             ; preds = %for.end119, %for.end
  call void @llvm.dbg.label(metadata !604), !dbg !730
  tail call void @free(i8* %call3) #5, !dbg !731
  br label %if.end124

if.end124:                                        ; preds = %done, %if.then122
  tail call void @free(i8* %call) #5, !dbg !732
  ret void, !dbg !733
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cancel_option(i32 %opt_idx, i32 %next_opt_idx, i32 %orig_next_opt_idx) unnamed_addr #3 !dbg !734 {
entry:
  br label %tailrecurse, !dbg !741

tailrecurse:                                      ; preds = %if.then5, %entry
  %next_opt_idx.tr = phi i32 [ %next_opt_idx, %entry ], [ %0, %if.then5 ]
  call void @llvm.dbg.value(metadata i32 %opt_idx, metadata !738, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 %next_opt_idx.tr, metadata !739, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 %orig_next_opt_idx, metadata !740, metadata !DIExpression()), !dbg !743
  %idxprom = sext i32 %next_opt_idx.tr to i64, !dbg !744
  %neg_index = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %idxprom, i32 4, !dbg !746
  %0 = load i32, i32* %neg_index, align 4, !dbg !746
  %cmp = icmp eq i32 %0, %opt_idx, !dbg !747
  br i1 %cmp, label %return, label %if.end, !dbg !748

if.end:                                           ; preds = %tailrecurse
  %cmp4 = icmp eq i32 %0, %orig_next_opt_idx, !dbg !749
  br i1 %cmp4, label %return, label %if.then5, !dbg !750

if.then5:                                         ; preds = %if.end
  br label %tailrecurse, !dbg !741

return:                                           ; preds = %if.end, %tailrecurse
  %retval.0 = phi i8 [ 1, %tailrecurse ], [ 0, %if.end ], !dbg !743
  ret i8 %retval.0, !dbg !751
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
!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !12, nameTableKind: None)
!1 = !DIFile(filename: "opts-common.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cl_var_type", file: !4, line: 25, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./opts.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "CLVC_BOOLEAN", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "CLVC_EQUAL", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "CLVC_BIT_CLEAR", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "CLVC_BIT_SET", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "CLVC_STRING", value: 4, isUnsigned: true)
!12 = !{!13, !14, !15, !16, !19, !20, !22, !17}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!27 = distinct !DISubprogram(name: "vprintf", scope: !28, file: !28, line: 39, type: !29, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!29 = !DISubroutineType(types: !30)
!30 = !{!15, !31, !32}
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !34)
!34 = !{!35, !36, !37, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !33, file: !1, baseType: !5, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !33, file: !1, baseType: !5, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !33, file: !1, baseType: !19, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !33, file: !1, baseType: !19, size: 64, offset: 128)
!39 = !{!40, !41}
!40 = !DILocalVariable(name: "__fmt", arg: 1, scope: !27, file: !28, line: 39, type: !31)
!41 = !DILocalVariable(name: "__arg", arg: 2, scope: !27, file: !28, line: 39, type: !32)
!42 = !DILocation(line: 0, scope: !27)
!43 = !DILocation(line: 41, column: 20, scope: !27)
!44 = !DILocation(line: 41, column: 10, scope: !27)
!45 = !DILocation(line: 41, column: 3, scope: !27)
!46 = distinct !DISubprogram(name: "getchar", scope: !28, file: !28, line: 47, type: !47, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{!15}
!49 = !{}
!50 = !DILocation(line: 49, column: 16, scope: !46)
!51 = !DILocation(line: 49, column: 10, scope: !46)
!52 = !DILocation(line: 49, column: 3, scope: !46)
!53 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !28, file: !28, line: 56, type: !54, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!54 = !DISubroutineType(types: !55)
!55 = !{!15, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !58, line: 7, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 49, size: 1728, elements: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !77, !79, !80, !81, !85, !87, !89, !93, !96, !98, !101, !104, !105, !106, !110, !111}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !59, file: !60, line: 51, baseType: !15, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !59, file: !60, line: 54, baseType: !17, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !59, file: !60, line: 55, baseType: !17, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !59, file: !60, line: 56, baseType: !17, size: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !59, file: !60, line: 57, baseType: !17, size: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !59, file: !60, line: 58, baseType: !17, size: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !59, file: !60, line: 59, baseType: !17, size: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !59, file: !60, line: 60, baseType: !17, size: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !59, file: !60, line: 61, baseType: !17, size: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !59, file: !60, line: 64, baseType: !17, size: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !59, file: !60, line: 65, baseType: !17, size: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !59, file: !60, line: 66, baseType: !17, size: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !59, file: !60, line: 68, baseType: !75, size: 64, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !60, line: 36, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !59, file: !60, line: 70, baseType: !78, size: 64, offset: 832)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !59, file: !60, line: 72, baseType: !15, size: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !59, file: !60, line: 73, baseType: !15, size: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !59, file: !60, line: 74, baseType: !82, size: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !83, line: 152, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !59, file: !60, line: 77, baseType: !86, size: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !59, file: !60, line: 78, baseType: !88, size: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !59, file: !60, line: 79, baseType: !90, size: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !59, file: !60, line: 81, baseType: !94, size: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !60, line: 43, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !59, file: !60, line: 89, baseType: !97, size: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !83, line: 153, baseType: !84)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !59, file: !60, line: 91, baseType: !99, size: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !60, line: 37, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !59, file: !60, line: 92, baseType: !102, size: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !60, line: 38, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !59, file: !60, line: 93, baseType: !78, size: 64, offset: 1344)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !59, file: !60, line: 94, baseType: !19, size: 64, offset: 1408)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !59, file: !60, line: 95, baseType: !107, size: 64, offset: 1472)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 46, baseType: !109)
!108 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!109 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !59, file: !60, line: 96, baseType: !15, size: 32, offset: 1536)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !59, file: !60, line: 98, baseType: !112, size: 160, offset: 1568)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 20)
!115 = !{!116}
!116 = !DILocalVariable(name: "__fp", arg: 1, scope: !53, file: !28, line: 56, type: !56)
!117 = !DILocation(line: 0, scope: !53)
!118 = !DILocation(line: 58, column: 10, scope: !53)
!119 = !DILocation(line: 58, column: 3, scope: !53)
!120 = distinct !DISubprogram(name: "getc_unlocked", scope: !28, file: !28, line: 66, type: !54, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!121 = !{!122}
!122 = !DILocalVariable(name: "__fp", arg: 1, scope: !120, file: !28, line: 66, type: !56)
!123 = !DILocation(line: 0, scope: !120)
!124 = !DILocation(line: 68, column: 10, scope: !120)
!125 = !DILocation(line: 68, column: 3, scope: !120)
!126 = distinct !DISubprogram(name: "getchar_unlocked", scope: !28, file: !28, line: 73, type: !47, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!127 = !DILocation(line: 75, column: 10, scope: !126)
!128 = !DILocation(line: 75, column: 3, scope: !126)
!129 = distinct !DISubprogram(name: "putchar", scope: !28, file: !28, line: 82, type: !130, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{!15, !15}
!132 = !{!133}
!133 = !DILocalVariable(name: "__c", arg: 1, scope: !129, file: !28, line: 82, type: !15)
!134 = !DILocation(line: 0, scope: !129)
!135 = !DILocation(line: 84, column: 21, scope: !129)
!136 = !DILocation(line: 84, column: 10, scope: !129)
!137 = !DILocation(line: 84, column: 3, scope: !129)
!138 = distinct !DISubprogram(name: "fputc_unlocked", scope: !28, file: !28, line: 91, type: !139, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!15, !15, !56}
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "__c", arg: 1, scope: !138, file: !28, line: 91, type: !15)
!143 = !DILocalVariable(name: "__stream", arg: 2, scope: !138, file: !28, line: 91, type: !56)
!144 = !DILocation(line: 0, scope: !138)
!145 = !DILocation(line: 93, column: 10, scope: !138)
!146 = !DILocation(line: 93, column: 3, scope: !138)
!147 = distinct !DISubprogram(name: "putc_unlocked", scope: !28, file: !28, line: 101, type: !139, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!148 = !{!149, !150}
!149 = !DILocalVariable(name: "__c", arg: 1, scope: !147, file: !28, line: 101, type: !15)
!150 = !DILocalVariable(name: "__stream", arg: 2, scope: !147, file: !28, line: 101, type: !56)
!151 = !DILocation(line: 0, scope: !147)
!152 = !DILocation(line: 103, column: 10, scope: !147)
!153 = !DILocation(line: 103, column: 3, scope: !147)
!154 = distinct !DISubprogram(name: "putchar_unlocked", scope: !28, file: !28, line: 108, type: !130, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!155 = !{!156}
!156 = !DILocalVariable(name: "__c", arg: 1, scope: !154, file: !28, line: 108, type: !15)
!157 = !DILocation(line: 0, scope: !154)
!158 = !DILocation(line: 110, column: 10, scope: !154)
!159 = !DILocation(line: 110, column: 3, scope: !154)
!160 = distinct !DISubprogram(name: "getline", scope: !28, file: !28, line: 118, type: !161, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !165)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !16, !164, !56}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !83, line: 193, baseType: !84)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!165 = !{!166, !167, !168}
!166 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !160, file: !28, line: 118, type: !16)
!167 = !DILocalVariable(name: "__n", arg: 2, scope: !160, file: !28, line: 118, type: !164)
!168 = !DILocalVariable(name: "__stream", arg: 3, scope: !160, file: !28, line: 118, type: !56)
!169 = !DILocation(line: 0, scope: !160)
!170 = !DILocation(line: 120, column: 10, scope: !160)
!171 = !DILocation(line: 120, column: 3, scope: !160)
!172 = distinct !DISubprogram(name: "feof_unlocked", scope: !28, file: !28, line: 128, type: !54, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !173)
!173 = !{!174}
!174 = !DILocalVariable(name: "__stream", arg: 1, scope: !172, file: !28, line: 128, type: !56)
!175 = !DILocation(line: 0, scope: !172)
!176 = !DILocation(line: 130, column: 10, scope: !172)
!177 = !DILocation(line: 130, column: 3, scope: !172)
!178 = distinct !DISubprogram(name: "ferror_unlocked", scope: !28, file: !28, line: 135, type: !54, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !179)
!179 = !{!180}
!180 = !DILocalVariable(name: "__stream", arg: 1, scope: !178, file: !28, line: 135, type: !56)
!181 = !DILocation(line: 0, scope: !178)
!182 = !DILocation(line: 137, column: 10, scope: !178)
!183 = !DILocation(line: 137, column: 3, scope: !178)
!184 = distinct !DISubprogram(name: "tolower", scope: !185, file: !185, line: 207, type: !130, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!185 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!186 = !{!187}
!187 = !DILocalVariable(name: "__c", arg: 1, scope: !184, file: !185, line: 207, type: !15)
!188 = !DILocation(line: 0, scope: !184)
!189 = !DILocation(line: 209, column: 22, scope: !184)
!190 = !DILocation(line: 209, column: 39, scope: !184)
!191 = !DILocation(line: 209, column: 38, scope: !184)
!192 = !DILocation(line: 209, column: 37, scope: !184)
!193 = !DILocation(line: 209, column: 10, scope: !184)
!194 = !DILocation(line: 209, column: 3, scope: !184)
!195 = distinct !DISubprogram(name: "toupper", scope: !185, file: !185, line: 213, type: !130, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !196)
!196 = !{!197}
!197 = !DILocalVariable(name: "__c", arg: 1, scope: !195, file: !185, line: 213, type: !15)
!198 = !DILocation(line: 0, scope: !195)
!199 = !DILocation(line: 215, column: 22, scope: !195)
!200 = !DILocation(line: 215, column: 39, scope: !195)
!201 = !DILocation(line: 215, column: 38, scope: !195)
!202 = !DILocation(line: 215, column: 37, scope: !195)
!203 = !DILocation(line: 215, column: 10, scope: !195)
!204 = !DILocation(line: 215, column: 3, scope: !195)
!205 = distinct !DISubprogram(name: "atoi", scope: !206, file: !206, line: 361, type: !207, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !209)
!206 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!207 = !DISubroutineType(types: !208)
!208 = !{!15, !20}
!209 = !{!210}
!210 = !DILocalVariable(name: "__nptr", arg: 1, scope: !205, file: !206, line: 361, type: !20)
!211 = !DILocation(line: 0, scope: !205)
!212 = !DILocation(line: 363, column: 16, scope: !205)
!213 = !DILocation(line: 363, column: 10, scope: !205)
!214 = !DILocation(line: 363, column: 3, scope: !205)
!215 = distinct !DISubprogram(name: "atol", scope: !206, file: !206, line: 366, type: !216, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!84, !20}
!218 = !{!219}
!219 = !DILocalVariable(name: "__nptr", arg: 1, scope: !215, file: !206, line: 366, type: !20)
!220 = !DILocation(line: 0, scope: !215)
!221 = !DILocation(line: 368, column: 10, scope: !215)
!222 = !DILocation(line: 368, column: 3, scope: !215)
!223 = distinct !DISubprogram(name: "atoll", scope: !206, file: !206, line: 373, type: !224, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !227)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !20}
!226 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!227 = !{!228}
!228 = !DILocalVariable(name: "__nptr", arg: 1, scope: !223, file: !206, line: 373, type: !20)
!229 = !DILocation(line: 0, scope: !223)
!230 = !DILocation(line: 375, column: 10, scope: !223)
!231 = !DILocation(line: 375, column: 3, scope: !223)
!232 = distinct !DISubprogram(name: "bsearch", scope: !233, file: !233, line: 20, type: !234, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !242)
!233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!234 = !DISubroutineType(types: !235)
!235 = !{!19, !236, !236, !107, !107, !238}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !206, line: 808, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!15, !236, !236}
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!243 = !DILocalVariable(name: "__key", arg: 1, scope: !232, file: !233, line: 20, type: !236)
!244 = !DILocalVariable(name: "__base", arg: 2, scope: !232, file: !233, line: 20, type: !236)
!245 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !232, file: !233, line: 20, type: !107)
!246 = !DILocalVariable(name: "__size", arg: 4, scope: !232, file: !233, line: 20, type: !107)
!247 = !DILocalVariable(name: "__compar", arg: 5, scope: !232, file: !233, line: 21, type: !238)
!248 = !DILocalVariable(name: "__l", scope: !232, file: !233, line: 23, type: !107)
!249 = !DILocalVariable(name: "__u", scope: !232, file: !233, line: 23, type: !107)
!250 = !DILocalVariable(name: "__idx", scope: !232, file: !233, line: 23, type: !107)
!251 = !DILocalVariable(name: "__p", scope: !232, file: !233, line: 24, type: !236)
!252 = !DILocalVariable(name: "__comparison", scope: !232, file: !233, line: 25, type: !15)
!253 = !DILocation(line: 0, scope: !232)
!254 = !DILocation(line: 29, column: 3, scope: !232)
!255 = !DILocation(line: 27, column: 7, scope: !232)
!256 = !DILocation(line: 29, column: 14, scope: !232)
!257 = !DILocation(line: 31, column: 20, scope: !258)
!258 = distinct !DILexicalBlock(scope: !232, file: !233, line: 30, column: 5)
!259 = !DILocation(line: 31, column: 27, scope: !258)
!260 = !DILocation(line: 32, column: 56, scope: !258)
!261 = !DILocation(line: 32, column: 47, scope: !258)
!262 = !DILocation(line: 33, column: 22, scope: !258)
!263 = !DILocation(line: 34, column: 24, scope: !264)
!264 = distinct !DILexicalBlock(scope: !258, file: !233, line: 34, column: 11)
!265 = !DILocation(line: 34, column: 11, scope: !258)
!266 = !DILocation(line: 36, column: 29, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !233, line: 36, column: 16)
!268 = !DILocation(line: 36, column: 16, scope: !264)
!269 = !DILocation(line: 37, column: 14, scope: !267)
!270 = distinct !{!270, !254, !271}
!271 = !DILocation(line: 40, column: 5, scope: !232)
!272 = !DILocation(line: 43, column: 1, scope: !232)
!273 = distinct !DISubprogram(name: "atof", scope: !274, file: !274, line: 25, type: !275, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !278)
!274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !20}
!277 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!278 = !{!279}
!279 = !DILocalVariable(name: "__nptr", arg: 1, scope: !273, file: !274, line: 25, type: !20)
!280 = !DILocation(line: 0, scope: !273)
!281 = !DILocation(line: 27, column: 10, scope: !273)
!282 = !DILocation(line: 27, column: 3, scope: !273)
!283 = distinct !DISubprogram(name: "strtoimax", scope: !284, file: !284, line: 324, type: !285, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !291)
!284 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !31, !290, !15}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !288, line: 101, baseType: !289)
!288 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !83, line: 72, baseType: !84)
!290 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!291 = !{!292, !293, !294}
!292 = !DILocalVariable(name: "nptr", arg: 1, scope: !283, file: !284, line: 324, type: !31)
!293 = !DILocalVariable(name: "endptr", arg: 2, scope: !283, file: !284, line: 324, type: !290)
!294 = !DILocalVariable(name: "base", arg: 3, scope: !283, file: !284, line: 324, type: !15)
!295 = !DILocation(line: 0, scope: !283)
!296 = !DILocation(line: 327, column: 10, scope: !283)
!297 = !DILocation(line: 327, column: 3, scope: !283)
!298 = distinct !DISubprogram(name: "strtoumax", scope: !284, file: !284, line: 336, type: !299, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !303)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !31, !290, !15}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !288, line: 102, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !83, line: 73, baseType: !109)
!303 = !{!304, !305, !306}
!304 = !DILocalVariable(name: "nptr", arg: 1, scope: !298, file: !284, line: 336, type: !31)
!305 = !DILocalVariable(name: "endptr", arg: 2, scope: !298, file: !284, line: 336, type: !290)
!306 = !DILocalVariable(name: "base", arg: 3, scope: !298, file: !284, line: 336, type: !15)
!307 = !DILocation(line: 0, scope: !298)
!308 = !DILocation(line: 339, column: 10, scope: !298)
!309 = !DILocation(line: 339, column: 3, scope: !298)
!310 = distinct !DISubprogram(name: "wcstoimax", scope: !284, file: !284, line: 348, type: !311, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !320)
!311 = !DISubroutineType(types: !312)
!312 = !{!287, !313, !317, !15}
!313 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !284, line: 34, baseType: !15)
!317 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!320 = !{!321, !322, !323}
!321 = !DILocalVariable(name: "nptr", arg: 1, scope: !310, file: !284, line: 348, type: !313)
!322 = !DILocalVariable(name: "endptr", arg: 2, scope: !310, file: !284, line: 348, type: !317)
!323 = !DILocalVariable(name: "base", arg: 3, scope: !310, file: !284, line: 348, type: !15)
!324 = !DILocation(line: 0, scope: !310)
!325 = !DILocation(line: 351, column: 10, scope: !310)
!326 = !DILocation(line: 351, column: 3, scope: !310)
!327 = distinct !DISubprogram(name: "wcstoumax", scope: !284, file: !284, line: 362, type: !328, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !330)
!328 = !DISubroutineType(types: !329)
!329 = !{!301, !313, !317, !15}
!330 = !{!331, !332, !333}
!331 = !DILocalVariable(name: "nptr", arg: 1, scope: !327, file: !284, line: 362, type: !313)
!332 = !DILocalVariable(name: "endptr", arg: 2, scope: !327, file: !284, line: 362, type: !317)
!333 = !DILocalVariable(name: "base", arg: 3, scope: !327, file: !284, line: 362, type: !15)
!334 = !DILocation(line: 0, scope: !327)
!335 = !DILocation(line: 365, column: 10, scope: !327)
!336 = !DILocation(line: 365, column: 3, scope: !327)
!337 = distinct !DISubprogram(name: "stat", scope: !338, file: !338, line: 453, type: !339, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !378)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!339 = !DISubroutineType(types: !340)
!340 = !{!15, !20, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !343, line: 46, size: 1152, elements: !344)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!344 = !{!345, !347, !349, !351, !353, !355, !357, !358, !359, !360, !362, !364, !372, !373, !374}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !342, file: !343, line: 48, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !83, line: 145, baseType: !109)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !342, file: !343, line: 53, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !83, line: 148, baseType: !109)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !342, file: !343, line: 61, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !83, line: 151, baseType: !109)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !342, file: !343, line: 62, baseType: !352, size: 32, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !83, line: 150, baseType: !5)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !342, file: !343, line: 64, baseType: !354, size: 32, offset: 224)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !83, line: 146, baseType: !5)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !342, file: !343, line: 65, baseType: !356, size: 32, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !83, line: 147, baseType: !5)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !342, file: !343, line: 67, baseType: !15, size: 32, offset: 288)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !342, file: !343, line: 69, baseType: !346, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !342, file: !343, line: 74, baseType: !82, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !342, file: !343, line: 78, baseType: !361, size: 64, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !83, line: 174, baseType: !84)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !342, file: !343, line: 80, baseType: !363, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !83, line: 179, baseType: !84)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !342, file: !343, line: 91, baseType: !365, size: 128, offset: 576)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !366, line: 10, size: 128, elements: !367)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!367 = !{!368, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !365, file: !366, line: 12, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !83, line: 160, baseType: !84)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !365, file: !366, line: 16, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !83, line: 196, baseType: !84)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !342, file: !343, line: 92, baseType: !365, size: 128, offset: 704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !342, file: !343, line: 93, baseType: !365, size: 128, offset: 832)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !342, file: !343, line: 106, baseType: !375, size: 192, offset: 960)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 192, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 3)
!378 = !{!379, !380}
!379 = !DILocalVariable(name: "__path", arg: 1, scope: !337, file: !338, line: 453, type: !20)
!380 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !337, file: !338, line: 453, type: !341)
!381 = !DILocation(line: 0, scope: !337)
!382 = !DILocation(line: 455, column: 10, scope: !337)
!383 = !DILocation(line: 455, column: 3, scope: !337)
!384 = distinct !DISubprogram(name: "lstat", scope: !338, file: !338, line: 460, type: !339, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !385)
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "__path", arg: 1, scope: !384, file: !338, line: 460, type: !20)
!387 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !384, file: !338, line: 460, type: !341)
!388 = !DILocation(line: 0, scope: !384)
!389 = !DILocation(line: 462, column: 10, scope: !384)
!390 = !DILocation(line: 462, column: 3, scope: !384)
!391 = distinct !DISubprogram(name: "fstat", scope: !338, file: !338, line: 467, type: !392, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!15, !15, !341}
!394 = !{!395, !396}
!395 = !DILocalVariable(name: "__fd", arg: 1, scope: !391, file: !338, line: 467, type: !15)
!396 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !391, file: !338, line: 467, type: !341)
!397 = !DILocation(line: 0, scope: !391)
!398 = !DILocation(line: 469, column: 10, scope: !391)
!399 = !DILocation(line: 469, column: 3, scope: !391)
!400 = distinct !DISubprogram(name: "fstatat", scope: !338, file: !338, line: 474, type: !401, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{!15, !15, !20, !341, !15}
!403 = !{!404, !405, !406, !407}
!404 = !DILocalVariable(name: "__fd", arg: 1, scope: !400, file: !338, line: 474, type: !15)
!405 = !DILocalVariable(name: "__filename", arg: 2, scope: !400, file: !338, line: 474, type: !20)
!406 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !400, file: !338, line: 474, type: !341)
!407 = !DILocalVariable(name: "__flag", arg: 4, scope: !400, file: !338, line: 474, type: !15)
!408 = !DILocation(line: 0, scope: !400)
!409 = !DILocation(line: 477, column: 10, scope: !400)
!410 = !DILocation(line: 477, column: 3, scope: !400)
!411 = distinct !DISubprogram(name: "mknod", scope: !338, file: !338, line: 483, type: !412, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!15, !20, !352, !346}
!414 = !{!415, !416, !417}
!415 = !DILocalVariable(name: "__path", arg: 1, scope: !411, file: !338, line: 483, type: !20)
!416 = !DILocalVariable(name: "__mode", arg: 2, scope: !411, file: !338, line: 483, type: !352)
!417 = !DILocalVariable(name: "__dev", arg: 3, scope: !411, file: !338, line: 483, type: !346)
!418 = !DILocation(line: 0, scope: !411)
!419 = !DILocation(line: 485, column: 10, scope: !411)
!420 = !DILocation(line: 485, column: 3, scope: !411)
!421 = distinct !DISubprogram(name: "mknodat", scope: !338, file: !338, line: 491, type: !422, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{!15, !15, !20, !352, !346}
!424 = !{!425, !426, !427, !428}
!425 = !DILocalVariable(name: "__fd", arg: 1, scope: !421, file: !338, line: 491, type: !15)
!426 = !DILocalVariable(name: "__path", arg: 2, scope: !421, file: !338, line: 491, type: !20)
!427 = !DILocalVariable(name: "__mode", arg: 3, scope: !421, file: !338, line: 491, type: !352)
!428 = !DILocalVariable(name: "__dev", arg: 4, scope: !421, file: !338, line: 491, type: !346)
!429 = !DILocation(line: 0, scope: !421)
!430 = !DILocation(line: 494, column: 10, scope: !421)
!431 = !DILocation(line: 494, column: 3, scope: !421)
!432 = distinct !DISubprogram(name: "stat64", scope: !338, file: !338, line: 502, type: !433, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !455)
!433 = !DISubroutineType(types: !434)
!434 = !{!15, !20, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !343, line: 119, size: 1152, elements: !437)
!437 = !{!438, !439, !441, !442, !443, !444, !445, !446, !447, !448, !449, !451, !452, !453, !454}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !436, file: !343, line: 121, baseType: !346, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !436, file: !343, line: 123, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !83, line: 149, baseType: !109)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !436, file: !343, line: 124, baseType: !350, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !436, file: !343, line: 125, baseType: !352, size: 32, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !436, file: !343, line: 132, baseType: !354, size: 32, offset: 224)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !436, file: !343, line: 133, baseType: !356, size: 32, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !436, file: !343, line: 135, baseType: !15, size: 32, offset: 288)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !436, file: !343, line: 136, baseType: !346, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !436, file: !343, line: 137, baseType: !82, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !436, file: !343, line: 143, baseType: !361, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !436, file: !343, line: 144, baseType: !450, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !83, line: 180, baseType: !84)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !436, file: !343, line: 152, baseType: !365, size: 128, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !436, file: !343, line: 153, baseType: !365, size: 128, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !436, file: !343, line: 154, baseType: !365, size: 128, offset: 832)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !436, file: !343, line: 164, baseType: !375, size: 192, offset: 960)
!455 = !{!456, !457}
!456 = !DILocalVariable(name: "__path", arg: 1, scope: !432, file: !338, line: 502, type: !20)
!457 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !432, file: !338, line: 502, type: !435)
!458 = !DILocation(line: 0, scope: !432)
!459 = !DILocation(line: 504, column: 10, scope: !432)
!460 = !DILocation(line: 504, column: 3, scope: !432)
!461 = distinct !DISubprogram(name: "lstat64", scope: !338, file: !338, line: 509, type: !433, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !462)
!462 = !{!463, !464}
!463 = !DILocalVariable(name: "__path", arg: 1, scope: !461, file: !338, line: 509, type: !20)
!464 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !461, file: !338, line: 509, type: !435)
!465 = !DILocation(line: 0, scope: !461)
!466 = !DILocation(line: 511, column: 10, scope: !461)
!467 = !DILocation(line: 511, column: 3, scope: !461)
!468 = distinct !DISubprogram(name: "fstat64", scope: !338, file: !338, line: 516, type: !469, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{!15, !15, !435}
!471 = !{!472, !473}
!472 = !DILocalVariable(name: "__fd", arg: 1, scope: !468, file: !338, line: 516, type: !15)
!473 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !468, file: !338, line: 516, type: !435)
!474 = !DILocation(line: 0, scope: !468)
!475 = !DILocation(line: 518, column: 10, scope: !468)
!476 = !DILocation(line: 518, column: 3, scope: !468)
!477 = distinct !DISubprogram(name: "fstatat64", scope: !338, file: !338, line: 523, type: !478, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!15, !15, !20, !435, !15}
!480 = !{!481, !482, !483, !484}
!481 = !DILocalVariable(name: "__fd", arg: 1, scope: !477, file: !338, line: 523, type: !15)
!482 = !DILocalVariable(name: "__filename", arg: 2, scope: !477, file: !338, line: 523, type: !20)
!483 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !477, file: !338, line: 523, type: !435)
!484 = !DILocalVariable(name: "__flag", arg: 4, scope: !477, file: !338, line: 523, type: !15)
!485 = !DILocation(line: 0, scope: !477)
!486 = !DILocation(line: 526, column: 10, scope: !477)
!487 = !DILocation(line: 526, column: 3, scope: !477)
!488 = distinct !DISubprogram(name: "find_opt", scope: !1, file: !1, line: 51, type: !489, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{!107, !20, !15}
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500}
!492 = !DILocalVariable(name: "input", arg: 1, scope: !488, file: !1, line: 51, type: !20)
!493 = !DILocalVariable(name: "lang_mask", arg: 2, scope: !488, file: !1, line: 51, type: !15)
!494 = !DILocalVariable(name: "mn", scope: !488, file: !1, line: 53, type: !107)
!495 = !DILocalVariable(name: "mx", scope: !488, file: !1, line: 53, type: !107)
!496 = !DILocalVariable(name: "md", scope: !488, file: !1, line: 53, type: !107)
!497 = !DILocalVariable(name: "opt_len", scope: !488, file: !1, line: 53, type: !107)
!498 = !DILocalVariable(name: "match_wrong_lang", scope: !488, file: !1, line: 54, type: !107)
!499 = !DILocalVariable(name: "comp", scope: !488, file: !1, line: 55, type: !15)
!500 = !DILocalVariable(name: "opt", scope: !501, file: !1, line: 83, type: !502)
!501 = distinct !DILexicalBlock(scope: !488, file: !1, line: 82, column: 5)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_option", file: !4, line: 43, size: 384, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "opt_text", scope: !504, file: !4, line: 45, baseType: !20, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "help", scope: !504, file: !4, line: 46, baseType: !20, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "back_chain", scope: !504, file: !4, line: 47, baseType: !86, size: 16, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "opt_len", scope: !504, file: !4, line: 48, baseType: !14, size: 8, offset: 144)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "neg_index", scope: !504, file: !4, line: 49, baseType: !15, size: 32, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !4, line: 50, baseType: !5, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var", scope: !504, file: !4, line: 51, baseType: !19, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "var_type", scope: !504, file: !4, line: 52, baseType: !3, size: 32, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "var_value", scope: !504, file: !4, line: 53, baseType: !15, size: 32, offset: 352)
!515 = !DILocation(line: 0, scope: !488)
!516 = !DILocation(line: 58, column: 8, scope: !488)
!517 = !DILocation(line: 62, column: 3, scope: !488)
!518 = !DILocation(line: 57, column: 6, scope: !488)
!519 = !DILocation(line: 62, column: 13, scope: !488)
!520 = !DILocation(line: 62, column: 18, scope: !488)
!521 = !DILocation(line: 64, column: 16, scope: !522)
!522 = distinct !DILexicalBlock(scope: !488, file: !1, line: 63, column: 5)
!523 = !DILocation(line: 64, column: 22, scope: !522)
!524 = !DILocation(line: 65, column: 32, scope: !522)
!525 = !DILocation(line: 65, column: 17, scope: !522)
!526 = !DILocation(line: 66, column: 45, scope: !522)
!527 = !DILocation(line: 66, column: 54, scope: !522)
!528 = !DILocation(line: 66, column: 14, scope: !522)
!529 = !DILocation(line: 68, column: 16, scope: !530)
!530 = distinct !DILexicalBlock(scope: !522, file: !1, line: 68, column: 11)
!531 = distinct !{!531, !517, !532}
!532 = !DILocation(line: 72, column: 5, scope: !488)
!533 = !DILocation(line: 81, column: 3, scope: !488)
!534 = !DILocation(line: 76, column: 20, scope: !488)
!535 = !DILocation(line: 87, column: 33, scope: !536)
!536 = distinct !DILexicalBlock(scope: !501, file: !1, line: 87, column: 11)
!537 = !DILocation(line: 87, column: 42, scope: !536)
!538 = !DILocation(line: 87, column: 52, scope: !536)
!539 = !DILocation(line: 87, column: 47, scope: !536)
!540 = !DILocation(line: 87, column: 12, scope: !536)
!541 = !DILocation(line: 88, column: 4, scope: !536)
!542 = !DILocation(line: 88, column: 8, scope: !536)
!543 = !DILocation(line: 88, column: 28, scope: !536)
!544 = !DILocation(line: 88, column: 36, scope: !536)
!545 = !DILocation(line: 0, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 91, column: 8)
!547 = distinct !DILexicalBlock(scope: !536, file: !1, line: 89, column: 2)
!548 = !DILocation(line: 91, column: 13, scope: !546)
!549 = !DILocation(line: 88, column: 45, scope: !536)
!550 = !DILocation(line: 88, column: 51, scope: !536)
!551 = !DILocation(line: 87, column: 11, scope: !501)
!552 = !DILocation(line: 91, column: 19, scope: !546)
!553 = !DILocation(line: 91, column: 8, scope: !547)
!554 = !DILocation(line: 96, column: 25, scope: !555)
!555 = distinct !DILexicalBlock(scope: !547, file: !1, line: 96, column: 8)
!556 = !DILocation(line: 96, column: 8, scope: !547)
!557 = !DILocation(line: 98, column: 2, scope: !547)
!558 = !DILocation(line: 102, column: 17, scope: !501)
!559 = !DILocation(line: 102, column: 12, scope: !501)
!560 = !DILocation(line: 103, column: 5, scope: !488)
!561 = !DILocation(line: 104, column: 13, scope: !488)
!562 = !DILocation(line: 103, column: 5, scope: !501)
!563 = distinct !{!563, !533, !564}
!564 = !DILocation(line: 104, column: 32, scope: !488)
!565 = !DILocation(line: 108, column: 1, scope: !488)
!566 = distinct !DISubprogram(name: "prune_options", scope: !1, file: !1, line: 131, type: !567, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !570)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !22, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !585, !586, !589, !590, !594, !595, !598, !601, !604}
!571 = !DILocalVariable(name: "argcp", arg: 1, scope: !566, file: !1, line: 131, type: !22)
!572 = !DILocalVariable(name: "argvp", arg: 2, scope: !566, file: !1, line: 131, type: !569)
!573 = !DILocalVariable(name: "argc", scope: !566, file: !1, line: 133, type: !15)
!574 = !DILocalVariable(name: "options", scope: !566, file: !1, line: 134, type: !22)
!575 = !DILocalVariable(name: "argv", scope: !566, file: !1, line: 135, type: !16)
!576 = !DILocalVariable(name: "i", scope: !566, file: !1, line: 136, type: !15)
!577 = !DILocalVariable(name: "arg_count", scope: !566, file: !1, line: 136, type: !15)
!578 = !DILocalVariable(name: "need_prune", scope: !566, file: !1, line: 136, type: !15)
!579 = !DILocalVariable(name: "option", scope: !566, file: !1, line: 137, type: !502)
!580 = !DILocalVariable(name: "opt_index", scope: !566, file: !1, line: 138, type: !107)
!581 = !DILocalVariable(name: "value", scope: !582, file: !1, line: 143, type: !15)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 142, column: 5)
!583 = distinct !DILexicalBlock(scope: !584, file: !1, line: 141, column: 3)
!584 = distinct !DILexicalBlock(scope: !566, file: !1, line: 141, column: 3)
!585 = !DILocalVariable(name: "opt", scope: !582, file: !1, line: 144, type: !20)
!586 = !DILocalVariable(name: "dup", scope: !587, file: !1, line: 151, type: !17)
!587 = distinct !DILexicalBlock(scope: !588, file: !1, line: 150, column: 2)
!588 = distinct !DILexicalBlock(scope: !582, file: !1, line: 147, column: 11)
!589 = !DILocalVariable(name: "len", scope: !587, file: !1, line: 154, type: !107)
!590 = !DILocalVariable(name: "j", scope: !591, file: !1, line: 198, type: !15)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 197, column: 5)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 196, column: 3)
!593 = distinct !DILexicalBlock(scope: !566, file: !1, line: 196, column: 3)
!594 = !DILocalVariable(name: "opt_idx", scope: !591, file: !1, line: 198, type: !15)
!595 = !DILocalVariable(name: "next_opt_idx", scope: !596, file: !1, line: 203, type: !15)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 202, column: 2)
!597 = distinct !DILexicalBlock(scope: !591, file: !1, line: 201, column: 11)
!598 = !DILabel(scope: !599, name: "cont", file: !1, line: 168)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 167, column: 2)
!600 = distinct !DILexicalBlock(scope: !582, file: !1, line: 166, column: 11)
!601 = !DILabel(scope: !602, name: "keep", file: !1, line: 218)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 217, column: 2)
!603 = distinct !DILexicalBlock(scope: !591, file: !1, line: 216, column: 11)
!604 = !DILabel(scope: !605, name: "done", file: !1, line: 231)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 230, column: 5)
!606 = distinct !DILexicalBlock(scope: !566, file: !1, line: 224, column: 7)
!607 = !DILocation(line: 0, scope: !566)
!608 = !DILocation(line: 133, column: 14, scope: !566)
!609 = !DILocation(line: 134, column: 18, scope: !566)
!610 = !DILocation(line: 135, column: 17, scope: !566)
!611 = !DILocation(line: 0, scope: !588)
!612 = !DILocation(line: 141, column: 8, scope: !584)
!613 = !DILocation(line: 136, column: 21, scope: !566)
!614 = !DILocation(line: 141, column: 17, scope: !583)
!615 = !DILocation(line: 141, column: 3, scope: !584)
!616 = !DILocation(line: 0, scope: !582)
!617 = !DILocation(line: 144, column: 26, scope: !582)
!618 = !DILocation(line: 144, column: 25, scope: !582)
!619 = !DILocation(line: 146, column: 33, scope: !582)
!620 = !DILocation(line: 146, column: 19, scope: !582)
!621 = !DILocation(line: 147, column: 21, scope: !588)
!622 = !DILocation(line: 148, column: 4, scope: !588)
!623 = !DILocation(line: 148, column: 8, scope: !588)
!624 = !DILocation(line: 148, column: 15, scope: !588)
!625 = !DILocation(line: 148, column: 22, scope: !588)
!626 = !DILocation(line: 148, column: 32, scope: !588)
!627 = !DILocation(line: 148, column: 39, scope: !588)
!628 = !DILocation(line: 148, column: 49, scope: !588)
!629 = !DILocation(line: 149, column: 4, scope: !588)
!630 = !DILocation(line: 149, column: 7, scope: !588)
!631 = !DILocation(line: 149, column: 14, scope: !588)
!632 = !DILocation(line: 149, column: 21, scope: !588)
!633 = !DILocation(line: 149, column: 24, scope: !588)
!634 = !DILocation(line: 149, column: 31, scope: !588)
!635 = !DILocation(line: 149, column: 38, scope: !588)
!636 = !DILocation(line: 149, column: 41, scope: !588)
!637 = !DILocation(line: 149, column: 48, scope: !588)
!638 = !DILocation(line: 147, column: 11, scope: !582)
!639 = !DILocation(line: 154, column: 17, scope: !587)
!640 = !DILocation(line: 0, scope: !587)
!641 = !DILocation(line: 156, column: 10, scope: !587)
!642 = !DILocation(line: 157, column: 11, scope: !587)
!643 = !DILocation(line: 158, column: 13, scope: !587)
!644 = !DILocation(line: 158, column: 4, scope: !587)
!645 = !DILocation(line: 158, column: 11, scope: !587)
!646 = !DILocation(line: 159, column: 16, scope: !587)
!647 = !DILocation(line: 159, column: 25, scope: !587)
!648 = !DILocation(line: 159, column: 38, scope: !587)
!649 = !DILocation(line: 159, column: 4, scope: !587)
!650 = !DILocation(line: 162, column: 16, scope: !587)
!651 = !DILocation(line: 163, column: 4, scope: !587)
!652 = !DILocation(line: 164, column: 2, scope: !587)
!653 = !DILocation(line: 166, column: 21, scope: !600)
!654 = !DILocation(line: 166, column: 11, scope: !582)
!655 = !DILocation(line: 168, column: 1, scope: !599)
!656 = !DILocation(line: 169, column: 4, scope: !599)
!657 = !DILocation(line: 169, column: 16, scope: !599)
!658 = !DILocation(line: 170, column: 4, scope: !599)
!659 = !DILocation(line: 174, column: 19, scope: !660)
!660 = distinct !DILexicalBlock(scope: !582, file: !1, line: 174, column: 11)
!661 = !DILocation(line: 174, column: 29, scope: !660)
!662 = !DILocation(line: 174, column: 11, scope: !582)
!663 = !DILocation(line: 178, column: 20, scope: !664)
!664 = distinct !DILexicalBlock(scope: !582, file: !1, line: 178, column: 11)
!665 = !DILocation(line: 178, column: 26, scope: !664)
!666 = !DILocation(line: 178, column: 11, scope: !582)
!667 = !DILocation(line: 183, column: 12, scope: !668)
!668 = distinct !DILexicalBlock(scope: !582, file: !1, line: 183, column: 11)
!669 = !DILocation(line: 183, column: 18, scope: !668)
!670 = !DILocation(line: 183, column: 36, scope: !668)
!671 = !DILocation(line: 183, column: 11, scope: !582)
!672 = !DILocation(line: 186, column: 21, scope: !582)
!673 = !DILocation(line: 186, column: 7, scope: !582)
!674 = !DILocation(line: 186, column: 19, scope: !582)
!675 = !DILocation(line: 187, column: 18, scope: !582)
!676 = !DILocation(line: 188, column: 5, scope: !583)
!677 = !DILocation(line: 141, column: 26, scope: !583)
!678 = !DILocation(line: 141, column: 3, scope: !583)
!679 = distinct !{!679, !615, !680}
!680 = !DILocation(line: 188, column: 5, scope: !584)
!681 = !DILocation(line: 190, column: 8, scope: !682)
!682 = distinct !DILexicalBlock(scope: !566, file: !1, line: 190, column: 7)
!683 = !DILocation(line: 190, column: 7, scope: !566)
!684 = !DILocation(line: 194, column: 15, scope: !566)
!685 = !DILocation(line: 194, column: 14, scope: !566)
!686 = !DILocation(line: 194, column: 12, scope: !566)
!687 = !DILocation(line: 196, column: 8, scope: !593)
!688 = !DILocation(line: 196, column: 17, scope: !592)
!689 = !DILocation(line: 196, column: 3, scope: !593)
!690 = !DILocation(line: 200, column: 17, scope: !591)
!691 = !DILocation(line: 0, scope: !591)
!692 = !DILocation(line: 201, column: 11, scope: !597)
!693 = !DILocation(line: 201, column: 11, scope: !591)
!694 = !DILocation(line: 204, column: 22, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !1, line: 204, column: 4)
!696 = distinct !DILexicalBlock(scope: !596, file: !1, line: 204, column: 4)
!697 = !DILocation(line: 204, column: 9, scope: !696)
!698 = !DILocation(line: 0, scope: !696)
!699 = !DILocation(line: 204, column: 4, scope: !696)
!700 = !DILocation(line: 206, column: 23, scope: !701)
!701 = distinct !DILexicalBlock(scope: !695, file: !1, line: 205, column: 6)
!702 = !DILocation(line: 0, scope: !596)
!703 = !DILocation(line: 207, column: 12, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 207, column: 12)
!705 = !DILocation(line: 208, column: 5, scope: !704)
!706 = !DILocation(line: 208, column: 8, scope: !704)
!707 = !DILocation(line: 207, column: 12, scope: !701)
!708 = !DILocation(line: 204, column: 4, scope: !695)
!709 = distinct !{!709, !699, !710}
!710 = !DILocation(line: 211, column: 6, scope: !696)
!711 = !DILocation(line: 216, column: 13, scope: !603)
!712 = !DILocation(line: 216, column: 11, scope: !591)
!713 = !DILocation(line: 218, column: 1, scope: !602)
!714 = !DILocation(line: 219, column: 24, scope: !602)
!715 = !DILocation(line: 219, column: 23, scope: !602)
!716 = !DILocation(line: 219, column: 4, scope: !602)
!717 = !DILocation(line: 219, column: 21, scope: !602)
!718 = !DILocation(line: 220, column: 13, scope: !602)
!719 = !DILocation(line: 221, column: 2, scope: !602)
!720 = !DILocation(line: 196, column: 26, scope: !592)
!721 = !DILocation(line: 196, column: 3, scope: !592)
!722 = distinct !{!722, !689, !723}
!723 = !DILocation(line: 222, column: 5, scope: !593)
!724 = !DILocation(line: 224, column: 17, scope: !606)
!725 = !DILocation(line: 224, column: 7, scope: !566)
!726 = !DILocation(line: 226, column: 14, scope: !727)
!727 = distinct !DILexicalBlock(scope: !606, file: !1, line: 225, column: 5)
!728 = !DILocation(line: 227, column: 14, scope: !727)
!729 = !DILocation(line: 228, column: 5, scope: !727)
!730 = !DILocation(line: 231, column: 1, scope: !605)
!731 = !DILocation(line: 232, column: 7, scope: !605)
!732 = !DILocation(line: 235, column: 3, scope: !566)
!733 = !DILocation(line: 236, column: 1, scope: !566)
!734 = distinct !DISubprogram(name: "cancel_option", scope: !1, file: !1, line: 114, type: !735, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!14, !15, !15, !15}
!737 = !{!738, !739, !740}
!738 = !DILocalVariable(name: "opt_idx", arg: 1, scope: !734, file: !1, line: 114, type: !15)
!739 = !DILocalVariable(name: "next_opt_idx", arg: 2, scope: !734, file: !1, line: 114, type: !15)
!740 = !DILocalVariable(name: "orig_next_opt_idx", arg: 3, scope: !734, file: !1, line: 114, type: !15)
!741 = !DILocation(line: 122, column: 12, scope: !742)
!742 = distinct !DILexicalBlock(scope: !734, file: !1, line: 121, column: 7)
!743 = !DILocation(line: 0, scope: !734)
!744 = !DILocation(line: 118, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !734, file: !1, line: 118, column: 7)
!746 = !DILocation(line: 118, column: 33, scope: !745)
!747 = !DILocation(line: 118, column: 43, scope: !745)
!748 = !DILocation(line: 118, column: 7, scope: !734)
!749 = !DILocation(line: 121, column: 43, scope: !742)
!750 = !DILocation(line: 121, column: 7, scope: !734)
!751 = !DILocation(line: 126, column: 1, scope: !734)
