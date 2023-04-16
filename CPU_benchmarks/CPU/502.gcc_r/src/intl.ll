; ModuleID = 'intl.bc'
source_filename = "intl.c"
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
@.str = private unnamed_addr constant [2 x i8] c"'\00", align 1
@open_quote = dso_local local_unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), align 8, !dbg !0
@close_quote = dso_local local_unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), align 8, !dbg !16
@locale_encoding = dso_local local_unnamed_addr global i8* null, align 8, !dbg !18
@locale_utf8 = dso_local local_unnamed_addr global i8 0, align 1, !dbg !20

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !26 {
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
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !49
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !50
  ret i32 %call, !dbg !51
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !52 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !115, metadata !DIExpression()), !dbg !116
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !117
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !117
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !117
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !117
  %cmp = icmp uge i8* %0, %1, !dbg !117
  %conv1 = zext i1 %cmp to i64, !dbg !117
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !117
  %tobool = icmp eq i64 %expval, 0, !dbg !117
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !117

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !117
  br label %cond.end, !dbg !117

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !117
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !117
  %2 = load i8, i8* %0, align 1, !dbg !117
  %conv3 = zext i8 %2 to i32, !dbg !117
  br label %cond.end, !dbg !117

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !117
  ret i32 %cond, !dbg !118
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !119 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !121, metadata !DIExpression()), !dbg !122
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !123
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !123
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !123
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !123
  %cmp = icmp uge i8* %0, %1, !dbg !123
  %conv1 = zext i1 %cmp to i64, !dbg !123
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !123
  %tobool = icmp eq i64 %expval, 0, !dbg !123
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !123

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !123
  br label %cond.end, !dbg !123

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !123
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !123
  %2 = load i8, i8* %0, align 1, !dbg !123
  %conv3 = zext i8 %2 to i32, !dbg !123
  br label %cond.end, !dbg !123

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !123
  ret i32 %cond, !dbg !124
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !125 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !126
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !126
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !126
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !126
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !126
  %cmp = icmp uge i8* %1, %2, !dbg !126
  %conv1 = zext i1 %cmp to i64, !dbg !126
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !126
  %tobool = icmp eq i64 %expval, 0, !dbg !126
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !126

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !126
  br label %cond.end, !dbg !126

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !126
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !126
  %3 = load i8, i8* %1, align 1, !dbg !126
  %conv3 = zext i8 %3 to i32, !dbg !126
  br label %cond.end, !dbg !126

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !126
  ret i32 %cond, !dbg !127
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !128 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !132, metadata !DIExpression()), !dbg !133
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !134
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !135
  ret i32 %call, !dbg !136
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !137 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !141, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !142, metadata !DIExpression()), !dbg !143
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !144
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !144
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !144
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !144
  %cmp = icmp uge i8* %0, %1, !dbg !144
  %conv1 = zext i1 %cmp to i64, !dbg !144
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !144
  %tobool = icmp eq i64 %expval, 0, !dbg !144
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !144

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !144
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !144
  br label %cond.end, !dbg !144

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !144
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !144
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !144
  store i8 %conv2, i8* %0, align 1, !dbg !144
  %conv6 = and i32 %__c, 255, !dbg !144
  br label %cond.end, !dbg !144

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !144
  ret i32 %cond, !dbg !145
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !146 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !148, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !149, metadata !DIExpression()), !dbg !150
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !151
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !151
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !151
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !151
  %cmp = icmp uge i8* %0, %1, !dbg !151
  %conv1 = zext i1 %cmp to i64, !dbg !151
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !151
  %tobool = icmp eq i64 %expval, 0, !dbg !151
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !151

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !151
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !151
  br label %cond.end, !dbg !151

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !151
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !151
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !151
  store i8 %conv2, i8* %0, align 1, !dbg !151
  %conv6 = and i32 %__c, 255, !dbg !151
  br label %cond.end, !dbg !151

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !151
  ret i32 %cond, !dbg !152
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !153 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !155, metadata !DIExpression()), !dbg !156
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !157
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !157
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !157
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !157
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !157
  %cmp = icmp uge i8* %1, %2, !dbg !157
  %conv1 = zext i1 %cmp to i64, !dbg !157
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !157
  %tobool = icmp eq i64 %expval, 0, !dbg !157
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !157

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !157
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !157
  br label %cond.end, !dbg !157

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !157
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !157
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !157
  store i8 %conv4, i8* %1, align 1, !dbg !157
  %conv6 = and i32 %__c, 255, !dbg !157
  br label %cond.end, !dbg !157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !157
  ret i32 %cond, !dbg !158
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !159 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !165, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i64* %__n, metadata !166, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !167, metadata !DIExpression()), !dbg !168
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !169
  ret i64 %call, !dbg !170
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !171 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !173, metadata !DIExpression()), !dbg !174
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !175
  %0 = load i32, i32* %_flags, align 8, !dbg !175
  %and = lshr i32 %0, 4, !dbg !175
  %and.lobit = and i32 %and, 1, !dbg !175
  ret i32 %and.lobit, !dbg !176
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !179, metadata !DIExpression()), !dbg !180
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !181
  %0 = load i32, i32* %_flags, align 8, !dbg !181
  %and = lshr i32 %0, 5, !dbg !181
  %and.lobit = and i32 %and, 1, !dbg !181
  ret i32 %and.lobit, !dbg !182
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !183 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !186, metadata !DIExpression()), !dbg !187
  %__c.off = add i32 %__c, 128, !dbg !188
  %0 = icmp ult i32 %__c.off, 384, !dbg !188
  br i1 %0, label %cond.true, label %cond.end, !dbg !188

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !189
  %1 = load i32*, i32** %call, align 8, !dbg !190
  %idxprom = sext i32 %__c to i64, !dbg !191
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !191
  %2 = load i32, i32* %arrayidx, align 4, !dbg !191
  br label %cond.end, !dbg !192

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !192
  ret i32 %cond, !dbg !193
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !194 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !196, metadata !DIExpression()), !dbg !197
  %__c.off = add i32 %__c, 128, !dbg !198
  %0 = icmp ult i32 %__c.off, 384, !dbg !198
  br i1 %0, label %cond.true, label %cond.end, !dbg !198

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !199
  %1 = load i32*, i32** %call, align 8, !dbg !200
  %idxprom = sext i32 %__c to i64, !dbg !201
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !201
  %2 = load i32, i32* %arrayidx, align 4, !dbg !201
  br label %cond.end, !dbg !202

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !202
  ret i32 %cond, !dbg !203
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !209, metadata !DIExpression()), !dbg !210
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !211
  %conv = trunc i64 %call to i32, !dbg !212
  ret i32 %conv, !dbg !213
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !214 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !218, metadata !DIExpression()), !dbg !219
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !220
  ret i64 %call, !dbg !221
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !222 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !227, metadata !DIExpression()), !dbg !228
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !229
  ret i64 %call, !dbg !230
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !231 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !242, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i8* %__base, metadata !243, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !244, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64 %__size, metadata !245, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !246, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !248, metadata !DIExpression()), !dbg !252
  br label %while.cond, !dbg !253

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !254
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !252
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !248, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !247, metadata !DIExpression()), !dbg !252
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !255
  br i1 %cmp, label %while.body, label %cleanup, !dbg !253

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !256
  %div = lshr i64 %add, 1, !dbg !258
  call void @llvm.dbg.value(metadata i64 %div, metadata !249, metadata !DIExpression()), !dbg !252
  %mul = mul i64 %div, %__size, !dbg !259
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !260
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !250, metadata !DIExpression()), !dbg !252
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !261
  call void @llvm.dbg.value(metadata i32 %call, metadata !251, metadata !DIExpression()), !dbg !252
  %cmp1 = icmp slt i32 %call, 0, !dbg !262
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !264

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !265
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !267

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !268
  call void @llvm.dbg.value(metadata i64 %add4, metadata !247, metadata !DIExpression()), !dbg !252
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !252
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !252
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !248, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !247, metadata !DIExpression()), !dbg !252
  br label %while.cond, !dbg !253, !llvm.loop !269

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !252
  ret i8* %retval.0, !dbg !271
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !272 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !278, metadata !DIExpression()), !dbg !279
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !280
  ret double %call, !dbg !281
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !282 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !291, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !292, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %base, metadata !293, metadata !DIExpression()), !dbg !294
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !295
  ret i64 %call, !dbg !296
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !297 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !303, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !304, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i32 %base, metadata !305, metadata !DIExpression()), !dbg !306
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !307
  ret i64 %call, !dbg !308
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !309 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !320, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !321, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %base, metadata !322, metadata !DIExpression()), !dbg !323
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !324
  ret i64 %call, !dbg !325
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !326 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !330, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !331, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i32 %base, metadata !332, metadata !DIExpression()), !dbg !333
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !334
  ret i64 %call, !dbg !335
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !336 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !378, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !379, metadata !DIExpression()), !dbg !380
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !381
  ret i32 %call, !dbg !382
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !383 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !385, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !386, metadata !DIExpression()), !dbg !387
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !388
  ret i32 %call, !dbg !389
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !390 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !395, metadata !DIExpression()), !dbg !396
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !397
  ret i32 %call, !dbg !398
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !399 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !403, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !404, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !405, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !406, metadata !DIExpression()), !dbg !407
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !408
  ret i32 %call, !dbg !409
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !410 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !414, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !415, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !416, metadata !DIExpression()), !dbg !417
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !416, metadata !DIExpression(DW_OP_deref)), !dbg !417
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !418
  ret i32 %call, !dbg !419
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !420 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !424, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i8* %__path, metadata !425, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !426, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !427, metadata !DIExpression()), !dbg !428
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !427, metadata !DIExpression(DW_OP_deref)), !dbg !428
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !429
  ret i32 %call, !dbg !430
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !431 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !455, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !456, metadata !DIExpression()), !dbg !457
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !458
  ret i32 %call, !dbg !459
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !460 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !462, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !463, metadata !DIExpression()), !dbg !464
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !465
  ret i32 %call, !dbg !466
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !467 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !471, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !472, metadata !DIExpression()), !dbg !473
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !474
  ret i32 %call, !dbg !475
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !476 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !480, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !481, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !482, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !483, metadata !DIExpression()), !dbg !484
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !485
  ret i32 %call, !dbg !486
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @fake_ngettext(i8* %singular, i8* %plural, i64 %n) local_unnamed_addr #3 !dbg !487 {
entry:
  call void @llvm.dbg.value(metadata i8* %singular, metadata !491, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8* %plural, metadata !492, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i64 %n, metadata !493, metadata !DIExpression()), !dbg !494
  %cmp = icmp eq i64 %n, 1, !dbg !495
  %singular.plural = select i1 %cmp, i8* %singular, i8* %plural, !dbg !494
  ret i8* %singular.plural, !dbg !497
}

; Function Attrs: nounwind uwtable
define dso_local i8* @get_spaces(i8* %str) local_unnamed_addr #3 !dbg !498 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !502, metadata !DIExpression()), !dbg !505
  %call = tail call i64 @strlen(i8* %str) #5, !dbg !506
  call void @llvm.dbg.value(metadata i64 %call, metadata !503, metadata !DIExpression()), !dbg !505
  %add = add i64 %call, 1, !dbg !507
  %call1 = tail call i8* @xmalloc(i64 %add) #5, !dbg !507
  call void @llvm.dbg.value(metadata i8* %call1, metadata !504, metadata !DIExpression()), !dbg !505
  %call2 = tail call i8* @memset(i8* %call1, i32 32, i64 %call) #5, !dbg !508
  %arrayidx = getelementptr inbounds i8, i8* %call1, i64 %call, !dbg !509
  store i8 0, i8* %arrayidx, align 1, !dbg !510
  ret i8* %call1, !dbg !511
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "open_quote", scope: !2, file: !3, line: 33, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, nameTableKind: None)
!3 = !DIFile(filename: "intl.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!15 = !{!0, !16, !18, !20}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "close_quote", scope: !2, file: !3, line: 36, type: !13, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "locale_encoding", scope: !2, file: !3, line: 39, type: !13, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "locale_utf8", scope: !2, file: !3, line: 42, type: !7, isLocal: false, isDefinition: true)
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!26 = distinct !DISubprogram(name: "vprintf", scope: !27, file: !27, line: 39, type: !28, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!28 = !DISubroutineType(types: !29)
!29 = !{!8, !30, !31}
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !33)
!33 = !{!34, !36, !37, !38}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !32, file: !3, baseType: !35, size: 32)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !32, file: !3, baseType: !35, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !32, file: !3, baseType: !12, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !32, file: !3, baseType: !12, size: 64, offset: 128)
!39 = !{!40, !41}
!40 = !DILocalVariable(name: "__fmt", arg: 1, scope: !26, file: !27, line: 39, type: !30)
!41 = !DILocalVariable(name: "__arg", arg: 2, scope: !26, file: !27, line: 39, type: !31)
!42 = !DILocation(line: 0, scope: !26)
!43 = !DILocation(line: 41, column: 20, scope: !26)
!44 = !DILocation(line: 41, column: 10, scope: !26)
!45 = !DILocation(line: 41, column: 3, scope: !26)
!46 = distinct !DISubprogram(name: "getchar", scope: !27, file: !27, line: 47, type: !47, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!47 = !DISubroutineType(types: !48)
!48 = !{!8}
!49 = !DILocation(line: 49, column: 16, scope: !46)
!50 = !DILocation(line: 49, column: 10, scope: !46)
!51 = !DILocation(line: 49, column: 3, scope: !46)
!52 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !27, file: !27, line: 56, type: !53, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!53 = !DISubroutineType(types: !54)
!54 = !{!8, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !57, line: 7, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !76, !78, !79, !80, !84, !86, !88, !92, !95, !97, !100, !103, !104, !105, !109, !110}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !58, file: !59, line: 51, baseType: !8, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !58, file: !59, line: 54, baseType: !10, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !58, file: !59, line: 55, baseType: !10, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !58, file: !59, line: 56, baseType: !10, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !58, file: !59, line: 57, baseType: !10, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !58, file: !59, line: 58, baseType: !10, size: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !58, file: !59, line: 59, baseType: !10, size: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !58, file: !59, line: 60, baseType: !10, size: 64, offset: 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !58, file: !59, line: 61, baseType: !10, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !58, file: !59, line: 64, baseType: !10, size: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !58, file: !59, line: 65, baseType: !10, size: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !58, file: !59, line: 66, baseType: !10, size: 64, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !58, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !59, line: 36, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !58, file: !59, line: 70, baseType: !77, size: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !58, file: !59, line: 72, baseType: !8, size: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !58, file: !59, line: 73, baseType: !8, size: 32, offset: 928)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !58, file: !59, line: 74, baseType: !81, size: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !82, line: 152, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!83 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !58, file: !59, line: 77, baseType: !85, size: 16, offset: 1024)
!85 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !58, file: !59, line: 78, baseType: !87, size: 8, offset: 1040)
!87 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !58, file: !59, line: 79, baseType: !89, size: 8, offset: 1048)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 1)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !58, file: !59, line: 81, baseType: !93, size: 64, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !59, line: 43, baseType: null)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !58, file: !59, line: 89, baseType: !96, size: 64, offset: 1152)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !82, line: 153, baseType: !83)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !58, file: !59, line: 91, baseType: !98, size: 64, offset: 1216)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !59, line: 37, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !58, file: !59, line: 92, baseType: !101, size: 64, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !59, line: 38, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !58, file: !59, line: 93, baseType: !77, size: 64, offset: 1344)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !58, file: !59, line: 94, baseType: !12, size: 64, offset: 1408)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !58, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 46, baseType: !108)
!107 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!108 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !58, file: !59, line: 96, baseType: !8, size: 32, offset: 1536)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !58, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 20)
!114 = !{!115}
!115 = !DILocalVariable(name: "__fp", arg: 1, scope: !52, file: !27, line: 56, type: !55)
!116 = !DILocation(line: 0, scope: !52)
!117 = !DILocation(line: 58, column: 10, scope: !52)
!118 = !DILocation(line: 58, column: 3, scope: !52)
!119 = distinct !DISubprogram(name: "getc_unlocked", scope: !27, file: !27, line: 66, type: !53, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!120 = !{!121}
!121 = !DILocalVariable(name: "__fp", arg: 1, scope: !119, file: !27, line: 66, type: !55)
!122 = !DILocation(line: 0, scope: !119)
!123 = !DILocation(line: 68, column: 10, scope: !119)
!124 = !DILocation(line: 68, column: 3, scope: !119)
!125 = distinct !DISubprogram(name: "getchar_unlocked", scope: !27, file: !27, line: 73, type: !47, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!126 = !DILocation(line: 75, column: 10, scope: !125)
!127 = !DILocation(line: 75, column: 3, scope: !125)
!128 = distinct !DISubprogram(name: "putchar", scope: !27, file: !27, line: 82, type: !129, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{!8, !8}
!131 = !{!132}
!132 = !DILocalVariable(name: "__c", arg: 1, scope: !128, file: !27, line: 82, type: !8)
!133 = !DILocation(line: 0, scope: !128)
!134 = !DILocation(line: 84, column: 21, scope: !128)
!135 = !DILocation(line: 84, column: 10, scope: !128)
!136 = !DILocation(line: 84, column: 3, scope: !128)
!137 = distinct !DISubprogram(name: "fputc_unlocked", scope: !27, file: !27, line: 91, type: !138, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!8, !8, !55}
!140 = !{!141, !142}
!141 = !DILocalVariable(name: "__c", arg: 1, scope: !137, file: !27, line: 91, type: !8)
!142 = !DILocalVariable(name: "__stream", arg: 2, scope: !137, file: !27, line: 91, type: !55)
!143 = !DILocation(line: 0, scope: !137)
!144 = !DILocation(line: 93, column: 10, scope: !137)
!145 = !DILocation(line: 93, column: 3, scope: !137)
!146 = distinct !DISubprogram(name: "putc_unlocked", scope: !27, file: !27, line: 101, type: !138, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !147)
!147 = !{!148, !149}
!148 = !DILocalVariable(name: "__c", arg: 1, scope: !146, file: !27, line: 101, type: !8)
!149 = !DILocalVariable(name: "__stream", arg: 2, scope: !146, file: !27, line: 101, type: !55)
!150 = !DILocation(line: 0, scope: !146)
!151 = !DILocation(line: 103, column: 10, scope: !146)
!152 = !DILocation(line: 103, column: 3, scope: !146)
!153 = distinct !DISubprogram(name: "putchar_unlocked", scope: !27, file: !27, line: 108, type: !129, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!154 = !{!155}
!155 = !DILocalVariable(name: "__c", arg: 1, scope: !153, file: !27, line: 108, type: !8)
!156 = !DILocation(line: 0, scope: !153)
!157 = !DILocation(line: 110, column: 10, scope: !153)
!158 = !DILocation(line: 110, column: 3, scope: !153)
!159 = distinct !DISubprogram(name: "getline", scope: !27, file: !27, line: 118, type: !160, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !164)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !9, !163, !55}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !82, line: 193, baseType: !83)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!164 = !{!165, !166, !167}
!165 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !159, file: !27, line: 118, type: !9)
!166 = !DILocalVariable(name: "__n", arg: 2, scope: !159, file: !27, line: 118, type: !163)
!167 = !DILocalVariable(name: "__stream", arg: 3, scope: !159, file: !27, line: 118, type: !55)
!168 = !DILocation(line: 0, scope: !159)
!169 = !DILocation(line: 120, column: 10, scope: !159)
!170 = !DILocation(line: 120, column: 3, scope: !159)
!171 = distinct !DISubprogram(name: "feof_unlocked", scope: !27, file: !27, line: 128, type: !53, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!172 = !{!173}
!173 = !DILocalVariable(name: "__stream", arg: 1, scope: !171, file: !27, line: 128, type: !55)
!174 = !DILocation(line: 0, scope: !171)
!175 = !DILocation(line: 130, column: 10, scope: !171)
!176 = !DILocation(line: 130, column: 3, scope: !171)
!177 = distinct !DISubprogram(name: "ferror_unlocked", scope: !27, file: !27, line: 135, type: !53, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!178 = !{!179}
!179 = !DILocalVariable(name: "__stream", arg: 1, scope: !177, file: !27, line: 135, type: !55)
!180 = !DILocation(line: 0, scope: !177)
!181 = !DILocation(line: 137, column: 10, scope: !177)
!182 = !DILocation(line: 137, column: 3, scope: !177)
!183 = distinct !DISubprogram(name: "tolower", scope: !184, file: !184, line: 207, type: !129, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!184 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!185 = !{!186}
!186 = !DILocalVariable(name: "__c", arg: 1, scope: !183, file: !184, line: 207, type: !8)
!187 = !DILocation(line: 0, scope: !183)
!188 = !DILocation(line: 209, column: 22, scope: !183)
!189 = !DILocation(line: 209, column: 39, scope: !183)
!190 = !DILocation(line: 209, column: 38, scope: !183)
!191 = !DILocation(line: 209, column: 37, scope: !183)
!192 = !DILocation(line: 209, column: 10, scope: !183)
!193 = !DILocation(line: 209, column: 3, scope: !183)
!194 = distinct !DISubprogram(name: "toupper", scope: !184, file: !184, line: 213, type: !129, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!195 = !{!196}
!196 = !DILocalVariable(name: "__c", arg: 1, scope: !194, file: !184, line: 213, type: !8)
!197 = !DILocation(line: 0, scope: !194)
!198 = !DILocation(line: 215, column: 22, scope: !194)
!199 = !DILocation(line: 215, column: 39, scope: !194)
!200 = !DILocation(line: 215, column: 38, scope: !194)
!201 = !DILocation(line: 215, column: 37, scope: !194)
!202 = !DILocation(line: 215, column: 10, scope: !194)
!203 = !DILocation(line: 215, column: 3, scope: !194)
!204 = distinct !DISubprogram(name: "atoi", scope: !205, file: !205, line: 361, type: !206, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!205 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!206 = !DISubroutineType(types: !207)
!207 = !{!8, !13}
!208 = !{!209}
!209 = !DILocalVariable(name: "__nptr", arg: 1, scope: !204, file: !205, line: 361, type: !13)
!210 = !DILocation(line: 0, scope: !204)
!211 = !DILocation(line: 363, column: 16, scope: !204)
!212 = !DILocation(line: 363, column: 10, scope: !204)
!213 = !DILocation(line: 363, column: 3, scope: !204)
!214 = distinct !DISubprogram(name: "atol", scope: !205, file: !205, line: 366, type: !215, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!83, !13}
!217 = !{!218}
!218 = !DILocalVariable(name: "__nptr", arg: 1, scope: !214, file: !205, line: 366, type: !13)
!219 = !DILocation(line: 0, scope: !214)
!220 = !DILocation(line: 368, column: 10, scope: !214)
!221 = !DILocation(line: 368, column: 3, scope: !214)
!222 = distinct !DISubprogram(name: "atoll", scope: !205, file: !205, line: 373, type: !223, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !13}
!225 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!226 = !{!227}
!227 = !DILocalVariable(name: "__nptr", arg: 1, scope: !222, file: !205, line: 373, type: !13)
!228 = !DILocation(line: 0, scope: !222)
!229 = !DILocation(line: 375, column: 10, scope: !222)
!230 = !DILocation(line: 375, column: 3, scope: !222)
!231 = distinct !DISubprogram(name: "bsearch", scope: !232, file: !232, line: 20, type: !233, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !241)
!232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!233 = !DISubroutineType(types: !234)
!234 = !{!12, !235, !235, !106, !106, !237}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !205, line: 808, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!8, !235, !235}
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!242 = !DILocalVariable(name: "__key", arg: 1, scope: !231, file: !232, line: 20, type: !235)
!243 = !DILocalVariable(name: "__base", arg: 2, scope: !231, file: !232, line: 20, type: !235)
!244 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !231, file: !232, line: 20, type: !106)
!245 = !DILocalVariable(name: "__size", arg: 4, scope: !231, file: !232, line: 20, type: !106)
!246 = !DILocalVariable(name: "__compar", arg: 5, scope: !231, file: !232, line: 21, type: !237)
!247 = !DILocalVariable(name: "__l", scope: !231, file: !232, line: 23, type: !106)
!248 = !DILocalVariable(name: "__u", scope: !231, file: !232, line: 23, type: !106)
!249 = !DILocalVariable(name: "__idx", scope: !231, file: !232, line: 23, type: !106)
!250 = !DILocalVariable(name: "__p", scope: !231, file: !232, line: 24, type: !235)
!251 = !DILocalVariable(name: "__comparison", scope: !231, file: !232, line: 25, type: !8)
!252 = !DILocation(line: 0, scope: !231)
!253 = !DILocation(line: 29, column: 3, scope: !231)
!254 = !DILocation(line: 27, column: 7, scope: !231)
!255 = !DILocation(line: 29, column: 14, scope: !231)
!256 = !DILocation(line: 31, column: 20, scope: !257)
!257 = distinct !DILexicalBlock(scope: !231, file: !232, line: 30, column: 5)
!258 = !DILocation(line: 31, column: 27, scope: !257)
!259 = !DILocation(line: 32, column: 56, scope: !257)
!260 = !DILocation(line: 32, column: 47, scope: !257)
!261 = !DILocation(line: 33, column: 22, scope: !257)
!262 = !DILocation(line: 34, column: 24, scope: !263)
!263 = distinct !DILexicalBlock(scope: !257, file: !232, line: 34, column: 11)
!264 = !DILocation(line: 34, column: 11, scope: !257)
!265 = !DILocation(line: 36, column: 29, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !232, line: 36, column: 16)
!267 = !DILocation(line: 36, column: 16, scope: !263)
!268 = !DILocation(line: 37, column: 14, scope: !266)
!269 = distinct !{!269, !253, !270}
!270 = !DILocation(line: 40, column: 5, scope: !231)
!271 = !DILocation(line: 43, column: 1, scope: !231)
!272 = distinct !DISubprogram(name: "atof", scope: !273, file: !273, line: 25, type: !274, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!274 = !DISubroutineType(types: !275)
!275 = !{!276, !13}
!276 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!277 = !{!278}
!278 = !DILocalVariable(name: "__nptr", arg: 1, scope: !272, file: !273, line: 25, type: !13)
!279 = !DILocation(line: 0, scope: !272)
!280 = !DILocation(line: 27, column: 10, scope: !272)
!281 = !DILocation(line: 27, column: 3, scope: !272)
!282 = distinct !DISubprogram(name: "strtoimax", scope: !283, file: !283, line: 324, type: !284, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!283 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !30, !289, !8}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !287, line: 101, baseType: !288)
!287 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !82, line: 72, baseType: !83)
!289 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!290 = !{!291, !292, !293}
!291 = !DILocalVariable(name: "nptr", arg: 1, scope: !282, file: !283, line: 324, type: !30)
!292 = !DILocalVariable(name: "endptr", arg: 2, scope: !282, file: !283, line: 324, type: !289)
!293 = !DILocalVariable(name: "base", arg: 3, scope: !282, file: !283, line: 324, type: !8)
!294 = !DILocation(line: 0, scope: !282)
!295 = !DILocation(line: 327, column: 10, scope: !282)
!296 = !DILocation(line: 327, column: 3, scope: !282)
!297 = distinct !DISubprogram(name: "strtoumax", scope: !283, file: !283, line: 336, type: !298, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !302)
!298 = !DISubroutineType(types: !299)
!299 = !{!300, !30, !289, !8}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !287, line: 102, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !82, line: 73, baseType: !108)
!302 = !{!303, !304, !305}
!303 = !DILocalVariable(name: "nptr", arg: 1, scope: !297, file: !283, line: 336, type: !30)
!304 = !DILocalVariable(name: "endptr", arg: 2, scope: !297, file: !283, line: 336, type: !289)
!305 = !DILocalVariable(name: "base", arg: 3, scope: !297, file: !283, line: 336, type: !8)
!306 = !DILocation(line: 0, scope: !297)
!307 = !DILocation(line: 339, column: 10, scope: !297)
!308 = !DILocation(line: 339, column: 3, scope: !297)
!309 = distinct !DISubprogram(name: "wcstoimax", scope: !283, file: !283, line: 348, type: !310, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!310 = !DISubroutineType(types: !311)
!311 = !{!286, !312, !316, !8}
!312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !283, line: 34, baseType: !8)
!316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!319 = !{!320, !321, !322}
!320 = !DILocalVariable(name: "nptr", arg: 1, scope: !309, file: !283, line: 348, type: !312)
!321 = !DILocalVariable(name: "endptr", arg: 2, scope: !309, file: !283, line: 348, type: !316)
!322 = !DILocalVariable(name: "base", arg: 3, scope: !309, file: !283, line: 348, type: !8)
!323 = !DILocation(line: 0, scope: !309)
!324 = !DILocation(line: 351, column: 10, scope: !309)
!325 = !DILocation(line: 351, column: 3, scope: !309)
!326 = distinct !DISubprogram(name: "wcstoumax", scope: !283, file: !283, line: 362, type: !327, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !329)
!327 = !DISubroutineType(types: !328)
!328 = !{!300, !312, !316, !8}
!329 = !{!330, !331, !332}
!330 = !DILocalVariable(name: "nptr", arg: 1, scope: !326, file: !283, line: 362, type: !312)
!331 = !DILocalVariable(name: "endptr", arg: 2, scope: !326, file: !283, line: 362, type: !316)
!332 = !DILocalVariable(name: "base", arg: 3, scope: !326, file: !283, line: 362, type: !8)
!333 = !DILocation(line: 0, scope: !326)
!334 = !DILocation(line: 365, column: 10, scope: !326)
!335 = !DILocation(line: 365, column: 3, scope: !326)
!336 = distinct !DISubprogram(name: "stat", scope: !337, file: !337, line: 453, type: !338, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !377)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!338 = !DISubroutineType(types: !339)
!339 = !{!8, !13, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !342, line: 46, size: 1152, elements: !343)
!342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!343 = !{!344, !346, !348, !350, !352, !354, !356, !357, !358, !359, !361, !363, !371, !372, !373}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !341, file: !342, line: 48, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !82, line: 145, baseType: !108)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !341, file: !342, line: 53, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !82, line: 148, baseType: !108)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !341, file: !342, line: 61, baseType: !349, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !82, line: 151, baseType: !108)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !341, file: !342, line: 62, baseType: !351, size: 32, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !82, line: 150, baseType: !35)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !341, file: !342, line: 64, baseType: !353, size: 32, offset: 224)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !82, line: 146, baseType: !35)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !341, file: !342, line: 65, baseType: !355, size: 32, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !82, line: 147, baseType: !35)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !341, file: !342, line: 67, baseType: !8, size: 32, offset: 288)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !341, file: !342, line: 69, baseType: !345, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !341, file: !342, line: 74, baseType: !81, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !341, file: !342, line: 78, baseType: !360, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !82, line: 174, baseType: !83)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !341, file: !342, line: 80, baseType: !362, size: 64, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !82, line: 179, baseType: !83)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !341, file: !342, line: 91, baseType: !364, size: 128, offset: 576)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !365, line: 10, size: 128, elements: !366)
!365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !364, file: !365, line: 12, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !82, line: 160, baseType: !83)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !364, file: !365, line: 16, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !82, line: 196, baseType: !83)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !341, file: !342, line: 92, baseType: !364, size: 128, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !341, file: !342, line: 93, baseType: !364, size: 128, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !341, file: !342, line: 106, baseType: !374, size: 192, offset: 960)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 192, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 3)
!377 = !{!378, !379}
!378 = !DILocalVariable(name: "__path", arg: 1, scope: !336, file: !337, line: 453, type: !13)
!379 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !336, file: !337, line: 453, type: !340)
!380 = !DILocation(line: 0, scope: !336)
!381 = !DILocation(line: 455, column: 10, scope: !336)
!382 = !DILocation(line: 455, column: 3, scope: !336)
!383 = distinct !DISubprogram(name: "lstat", scope: !337, file: !337, line: 460, type: !338, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!384 = !{!385, !386}
!385 = !DILocalVariable(name: "__path", arg: 1, scope: !383, file: !337, line: 460, type: !13)
!386 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !383, file: !337, line: 460, type: !340)
!387 = !DILocation(line: 0, scope: !383)
!388 = !DILocation(line: 462, column: 10, scope: !383)
!389 = !DILocation(line: 462, column: 3, scope: !383)
!390 = distinct !DISubprogram(name: "fstat", scope: !337, file: !337, line: 467, type: !391, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!8, !8, !340}
!393 = !{!394, !395}
!394 = !DILocalVariable(name: "__fd", arg: 1, scope: !390, file: !337, line: 467, type: !8)
!395 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !390, file: !337, line: 467, type: !340)
!396 = !DILocation(line: 0, scope: !390)
!397 = !DILocation(line: 469, column: 10, scope: !390)
!398 = !DILocation(line: 469, column: 3, scope: !390)
!399 = distinct !DISubprogram(name: "fstatat", scope: !337, file: !337, line: 474, type: !400, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!8, !8, !13, !340, !8}
!402 = !{!403, !404, !405, !406}
!403 = !DILocalVariable(name: "__fd", arg: 1, scope: !399, file: !337, line: 474, type: !8)
!404 = !DILocalVariable(name: "__filename", arg: 2, scope: !399, file: !337, line: 474, type: !13)
!405 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !399, file: !337, line: 474, type: !340)
!406 = !DILocalVariable(name: "__flag", arg: 4, scope: !399, file: !337, line: 474, type: !8)
!407 = !DILocation(line: 0, scope: !399)
!408 = !DILocation(line: 477, column: 10, scope: !399)
!409 = !DILocation(line: 477, column: 3, scope: !399)
!410 = distinct !DISubprogram(name: "mknod", scope: !337, file: !337, line: 483, type: !411, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{!8, !13, !351, !345}
!413 = !{!414, !415, !416}
!414 = !DILocalVariable(name: "__path", arg: 1, scope: !410, file: !337, line: 483, type: !13)
!415 = !DILocalVariable(name: "__mode", arg: 2, scope: !410, file: !337, line: 483, type: !351)
!416 = !DILocalVariable(name: "__dev", arg: 3, scope: !410, file: !337, line: 483, type: !345)
!417 = !DILocation(line: 0, scope: !410)
!418 = !DILocation(line: 485, column: 10, scope: !410)
!419 = !DILocation(line: 485, column: 3, scope: !410)
!420 = distinct !DISubprogram(name: "mknodat", scope: !337, file: !337, line: 491, type: !421, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!8, !8, !13, !351, !345}
!423 = !{!424, !425, !426, !427}
!424 = !DILocalVariable(name: "__fd", arg: 1, scope: !420, file: !337, line: 491, type: !8)
!425 = !DILocalVariable(name: "__path", arg: 2, scope: !420, file: !337, line: 491, type: !13)
!426 = !DILocalVariable(name: "__mode", arg: 3, scope: !420, file: !337, line: 491, type: !351)
!427 = !DILocalVariable(name: "__dev", arg: 4, scope: !420, file: !337, line: 491, type: !345)
!428 = !DILocation(line: 0, scope: !420)
!429 = !DILocation(line: 494, column: 10, scope: !420)
!430 = !DILocation(line: 494, column: 3, scope: !420)
!431 = distinct !DISubprogram(name: "stat64", scope: !337, file: !337, line: 502, type: !432, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !454)
!432 = !DISubroutineType(types: !433)
!433 = !{!8, !13, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !342, line: 119, size: 1152, elements: !436)
!436 = !{!437, !438, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450, !451, !452, !453}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !435, file: !342, line: 121, baseType: !345, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !435, file: !342, line: 123, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !82, line: 149, baseType: !108)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !435, file: !342, line: 124, baseType: !349, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !435, file: !342, line: 125, baseType: !351, size: 32, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !435, file: !342, line: 132, baseType: !353, size: 32, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !435, file: !342, line: 133, baseType: !355, size: 32, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !435, file: !342, line: 135, baseType: !8, size: 32, offset: 288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !435, file: !342, line: 136, baseType: !345, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !435, file: !342, line: 137, baseType: !81, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !435, file: !342, line: 143, baseType: !360, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !435, file: !342, line: 144, baseType: !449, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !82, line: 180, baseType: !83)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !435, file: !342, line: 152, baseType: !364, size: 128, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !435, file: !342, line: 153, baseType: !364, size: 128, offset: 704)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !435, file: !342, line: 154, baseType: !364, size: 128, offset: 832)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !435, file: !342, line: 164, baseType: !374, size: 192, offset: 960)
!454 = !{!455, !456}
!455 = !DILocalVariable(name: "__path", arg: 1, scope: !431, file: !337, line: 502, type: !13)
!456 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !431, file: !337, line: 502, type: !434)
!457 = !DILocation(line: 0, scope: !431)
!458 = !DILocation(line: 504, column: 10, scope: !431)
!459 = !DILocation(line: 504, column: 3, scope: !431)
!460 = distinct !DISubprogram(name: "lstat64", scope: !337, file: !337, line: 509, type: !432, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !461)
!461 = !{!462, !463}
!462 = !DILocalVariable(name: "__path", arg: 1, scope: !460, file: !337, line: 509, type: !13)
!463 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !460, file: !337, line: 509, type: !434)
!464 = !DILocation(line: 0, scope: !460)
!465 = !DILocation(line: 511, column: 10, scope: !460)
!466 = !DILocation(line: 511, column: 3, scope: !460)
!467 = distinct !DISubprogram(name: "fstat64", scope: !337, file: !337, line: 516, type: !468, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!8, !8, !434}
!470 = !{!471, !472}
!471 = !DILocalVariable(name: "__fd", arg: 1, scope: !467, file: !337, line: 516, type: !8)
!472 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !467, file: !337, line: 516, type: !434)
!473 = !DILocation(line: 0, scope: !467)
!474 = !DILocation(line: 518, column: 10, scope: !467)
!475 = !DILocation(line: 518, column: 3, scope: !467)
!476 = distinct !DISubprogram(name: "fstatat64", scope: !337, file: !337, line: 523, type: !477, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!8, !8, !13, !434, !8}
!479 = !{!480, !481, !482, !483}
!480 = !DILocalVariable(name: "__fd", arg: 1, scope: !476, file: !337, line: 523, type: !8)
!481 = !DILocalVariable(name: "__filename", arg: 2, scope: !476, file: !337, line: 523, type: !13)
!482 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !476, file: !337, line: 523, type: !434)
!483 = !DILocalVariable(name: "__flag", arg: 4, scope: !476, file: !337, line: 523, type: !8)
!484 = !DILocation(line: 0, scope: !476)
!485 = !DILocation(line: 526, column: 10, scope: !476)
!486 = !DILocation(line: 526, column: 3, scope: !476)
!487 = distinct !DISubprogram(name: "fake_ngettext", scope: !3, file: !3, line: 128, type: !488, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!13, !13, !13, !108}
!490 = !{!491, !492, !493}
!491 = !DILocalVariable(name: "singular", arg: 1, scope: !487, file: !3, line: 128, type: !13)
!492 = !DILocalVariable(name: "plural", arg: 2, scope: !487, file: !3, line: 128, type: !13)
!493 = !DILocalVariable(name: "n", arg: 3, scope: !487, file: !3, line: 128, type: !108)
!494 = !DILocation(line: 0, scope: !487)
!495 = !DILocation(line: 130, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !487, file: !3, line: 130, column: 7)
!497 = !DILocation(line: 134, column: 1, scope: !487)
!498 = distinct !DISubprogram(name: "get_spaces", scope: !3, file: !3, line: 143, type: !499, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{!10, !13}
!501 = !{!502, !503, !504}
!502 = !DILocalVariable(name: "str", arg: 1, scope: !498, file: !3, line: 143, type: !13)
!503 = !DILocalVariable(name: "len", scope: !498, file: !3, line: 145, type: !106)
!504 = !DILocalVariable(name: "spaces", scope: !498, file: !3, line: 146, type: !10)
!505 = !DILocation(line: 0, scope: !498)
!506 = !DILocation(line: 145, column: 17, scope: !498)
!507 = !DILocation(line: 146, column: 19, scope: !498)
!508 = !DILocation(line: 147, column: 4, scope: !498)
!509 = !DILocation(line: 148, column: 4, scope: !498)
!510 = !DILocation(line: 148, column: 16, scope: !498)
!511 = !DILocation(line: 149, column: 4, scope: !498)
