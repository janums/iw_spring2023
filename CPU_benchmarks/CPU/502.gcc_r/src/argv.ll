; ModuleID = 'argv.bc'
source_filename = "argv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0Aout of memory\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !35, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !36, metadata !DIExpression()), !dbg !37
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !38
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !39
  ret i32 %call, !dbg !40
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !41 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !44
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !45
  ret i32 %call, !dbg !46
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !47 {
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
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !108
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
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !114
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
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !117
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
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !126
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !135
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !142
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !148
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
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !160
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
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !180
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
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !190
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
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !202
  %conv = trunc i64 %call to i32, !dbg !203
  ret i32 %conv, !dbg !204
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !209, metadata !DIExpression()), !dbg !210
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !211
  ret i64 %call, !dbg !212
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !213 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !218, metadata !DIExpression()), !dbg !219
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !220
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
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !252
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
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !271
  ret double %call, !dbg !272
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8** @dupargv(i8** %argv) local_unnamed_addr #3 !dbg !273 {
entry:
  call void @llvm.dbg.value(metadata i8** %argv, metadata !277, metadata !DIExpression()), !dbg !284
  %cmp = icmp eq i8** %argv, null, !dbg !285
  br i1 %cmp, label %cleanup37, label %for.cond.preheader, !dbg !287

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !288

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv3 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next4, %for.cond ], !dbg !290
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !278, metadata !DIExpression()), !dbg !284
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 %indvars.iv3, !dbg !291
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !291
  %cmp1 = icmp eq i8* %0, null, !dbg !293
  %indvars.iv.next4 = add nuw i64 %indvars.iv3, 1, !dbg !284
  br i1 %cmp1, label %for.end, label %for.cond, !dbg !288, !llvm.loop !294

for.end:                                          ; preds = %for.cond
  %indvars.iv.next4.lcssa = phi i64 [ %indvars.iv.next4, %for.cond ], !dbg !284
  %conv = shl i64 %indvars.iv.next4.lcssa, 3, !dbg !296
  %mul = and i64 %conv, 34359738360, !dbg !296
  %call = tail call i8* @malloc(i64 %mul) #5, !dbg !297
  %1 = bitcast i8* %call to i8**, !dbg !298
  call void @llvm.dbg.value(metadata i8** %1, metadata !279, metadata !DIExpression()), !dbg !284
  %cmp2 = icmp eq i8* %call, null, !dbg !299
  br i1 %cmp2, label %cleanup37, label %for.cond6.preheader, !dbg !301

for.cond6.preheader:                              ; preds = %for.end
  br label %for.cond6, !dbg !302

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc32
  %indvars.iv = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next, %for.inc32 ], !dbg !303
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !278, metadata !DIExpression()), !dbg !284
  %arrayidx8 = getelementptr inbounds i8*, i8** %argv, i64 %indvars.iv, !dbg !304
  %2 = load i8*, i8** %arrayidx8, align 8, !dbg !304
  %cmp9 = icmp eq i8* %2, null, !dbg !305
  br i1 %cmp9, label %for.end34, label %for.body11, !dbg !302

for.body11:                                       ; preds = %for.cond6
  %call14 = tail call i64 @strlen(i8* nonnull %2) #5, !dbg !306
  %add16 = shl i64 %call14, 32, !dbg !307
  %sext = add i64 %add16, 4294967296, !dbg !307
  %conv17 = ashr exact i64 %sext, 32, !dbg !307
  %call18 = tail call i8* @malloc(i64 %conv17) #5, !dbg !308
  %arrayidx20 = getelementptr inbounds i8*, i8** %1, i64 %indvars.iv, !dbg !309
  store i8* %call18, i8** %arrayidx20, align 8, !dbg !310
  %cmp23 = icmp eq i8* %call18, null, !dbg !311
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !313

if.then25:                                        ; preds = %for.body11
  tail call void @freeargv(i8** nonnull %1) #6, !dbg !314
  br label %cleanup, !dbg !316

if.end26:                                         ; preds = %for.body11
  %3 = load i8*, i8** %arrayidx8, align 8, !dbg !317
  %call31 = tail call i8* @strcpy(i8* nonnull %call18, i8* %3) #5, !dbg !318
  br label %cleanup, !dbg !319

cleanup:                                          ; preds = %if.end26, %if.then25
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then25 ], [ true, %if.end26 ]
  br i1 %cleanup.dest.slot.0, label %for.inc32, label %cleanup37.loopexit

for.inc32:                                        ; preds = %cleanup
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !320
  call void @llvm.dbg.value(metadata i32 undef, metadata !278, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !284
  br label %for.cond6, !dbg !321, !llvm.loop !322

for.end34:                                        ; preds = %for.cond6
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond6 ], !dbg !303
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !278, metadata !DIExpression()), !dbg !284
  %arrayidx36 = getelementptr inbounds i8*, i8** %1, i64 %indvars.iv.lcssa, !dbg !324
  store i8* null, i8** %arrayidx36, align 8, !dbg !325
  br label %cleanup37, !dbg !326

cleanup37.loopexit:                               ; preds = %cleanup
  br label %cleanup37, !dbg !327

cleanup37:                                        ; preds = %cleanup37.loopexit, %for.end, %entry, %for.end34
  %retval.2 = phi i8** [ %1, %for.end34 ], [ null, %entry ], [ null, %for.end ], [ null, %cleanup37.loopexit ], !dbg !284
  ret i8** %retval.2, !dbg !327
}

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @freeargv(i8** %vector) local_unnamed_addr #3 !dbg !328 {
entry:
  call void @llvm.dbg.value(metadata i8** %vector, metadata !332, metadata !DIExpression()), !dbg !334
  %cmp = icmp eq i8** %vector, null, !dbg !335
  br i1 %cmp, label %if.end, label %for.cond.preheader, !dbg !337

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !338

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %scan.0 = phi i8** [ %incdec.ptr, %for.body ], [ %vector, %for.cond.preheader ], !dbg !341
  call void @llvm.dbg.value(metadata i8** %scan.0, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i8*, i8** %scan.0, align 8, !dbg !342
  %cmp1 = icmp eq i8* %0, null, !dbg !344
  br i1 %cmp1, label %for.end, label %for.body, !dbg !338

for.body:                                         ; preds = %for.cond
  tail call void @free(i8* nonnull %0) #5, !dbg !345
  %incdec.ptr = getelementptr inbounds i8*, i8** %scan.0, i64 1, !dbg !347
  call void @llvm.dbg.value(metadata i8** %incdec.ptr, metadata !333, metadata !DIExpression()), !dbg !334
  br label %for.cond, !dbg !348, !llvm.loop !349

for.end:                                          ; preds = %for.cond
  %1 = bitcast i8** %vector to i8*, !dbg !351
  tail call void @free(i8* nonnull %1) #5, !dbg !352
  br label %if.end, !dbg !353

if.end:                                           ; preds = %entry, %for.end
  ret void, !dbg !354
}

declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8** @buildargv(i8* %input) local_unnamed_addr #3 !dbg !355 {
entry:
  %input.addr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %input, metadata !359, metadata !DIExpression()), !dbg !369
  store i8* %input, i8** %input.addr, align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 0, metadata !363, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 0, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 0, metadata !365, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 0, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8** null, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8* %input, metadata !359, metadata !DIExpression()), !dbg !369
  %cmp = icmp eq i8* %input, null, !dbg !370
  br i1 %cmp, label %if.end96, label %if.then, !dbg !372

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %input, metadata !359, metadata !DIExpression()), !dbg !369
  %call = tail call i64 @strlen(i8* nonnull %input) #5, !dbg !373
  %add = add i64 %call, 1, !dbg !373
  %0 = alloca i8, i64 %add, align 16, !dbg !373
  call void @llvm.dbg.value(metadata i8* %0, metadata !361, metadata !DIExpression()), !dbg !369
  br label %do.body, !dbg !375

do.body:                                          ; preds = %if.end90, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end90 ], [ 0, %if.then ], !dbg !369
  %1 = phi i8* [ %4, %if.end90 ], [ null, %if.then ], !dbg !369
  %argv.0 = phi i8** [ %argv.2, %if.end90 ], [ null, %if.then ], !dbg !369
  %maxargc.0 = phi i32 [ %maxargc.2, %if.end90 ], [ 0, %if.then ], !dbg !369
  %bsquote.0 = phi i32 [ %bsquote.1.lcssa, %if.end90 ], [ 0, %if.then ], !dbg !376
  %dquote.0 = phi i32 [ %dquote.1.lcssa, %if.end90 ], [ 0, %if.then ], !dbg !377
  %squote.0 = phi i32 [ %squote.1.lcssa, %if.end90 ], [ 0, %if.then ], !dbg !378
  call void @llvm.dbg.value(metadata i32 %squote.0, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dquote.0, metadata !363, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %bsquote.0, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !365, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %maxargc.0, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.0, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8** %input.addr, metadata !359, metadata !DIExpression(DW_OP_deref)), !dbg !369
  call fastcc void @consume_whitespace(i8** nonnull %input.addr) #6, !dbg !379
  %cmp1 = icmp eq i32 %maxargc.0, 0, !dbg !381
  %sub = add nsw i32 %maxargc.0, -1, !dbg !383
  %2 = sext i32 %sub to i64, !dbg !384
  %cmp2 = icmp sge i64 %indvars.iv, %2, !dbg !384
  %or.cond = or i1 %cmp1, %cmp2, !dbg !385
  br i1 %or.cond, label %if.then3, label %if.end19, !dbg !385

if.then3:                                         ; preds = %do.body
  %cmp4 = icmp eq i8** %argv.0, null, !dbg !386
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !389

if.then5:                                         ; preds = %if.then3
  call void @llvm.dbg.value(metadata i32 8, metadata !366, metadata !DIExpression()), !dbg !369
  %call6 = call i8* @malloc(i64 64) #5, !dbg !390
  call void @llvm.dbg.value(metadata i8* %call6, metadata !368, metadata !DIExpression()), !dbg !369
  br label %if.end, !dbg !392

if.else:                                          ; preds = %if.then3
  %mul7 = shl nsw i32 %maxargc.0, 1, !dbg !393
  call void @llvm.dbg.value(metadata i32 %mul7, metadata !366, metadata !DIExpression()), !dbg !369
  %conv8 = sext i32 %mul7 to i64, !dbg !395
  %mul9 = shl nsw i64 %conv8, 3, !dbg !396
  %call10 = call i8* @realloc(i8* %1, i64 %mul9) #5, !dbg !397
  call void @llvm.dbg.value(metadata i8* %call10, metadata !368, metadata !DIExpression()), !dbg !369
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %maxargc.1 = phi i32 [ 8, %if.then5 ], [ %mul7, %if.else ], !dbg !398
  %3 = phi i8* [ %call6, %if.then5 ], [ %call10, %if.else ], !dbg !398
  %nargv.0.in = phi i8* [ %call6, %if.then5 ], [ %call10, %if.else ]
  %nargv.0 = bitcast i8* %nargv.0.in to i8**, !dbg !398
  call void @llvm.dbg.value(metadata i8** %nargv.0, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %maxargc.1, metadata !366, metadata !DIExpression()), !dbg !369
  %cmp11 = icmp eq i8* %nargv.0.in, null, !dbg !399
  br i1 %cmp11, label %if.then13, label %if.end18, !dbg !401

if.then13:                                        ; preds = %if.end
  %argv.0.lcssa = phi i8** [ %argv.0, %if.end ], !dbg !369
  %cmp4.lcssa = phi i1 [ %cmp4, %if.end ], !dbg !386
  call void @llvm.dbg.value(metadata i8** %argv.0.lcssa, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.0.lcssa, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.0.lcssa, metadata !367, metadata !DIExpression()), !dbg !369
  br i1 %cmp4.lcssa, label %if.end96, label %if.then16, !dbg !402

if.then16:                                        ; preds = %if.then13
  call void @freeargv(i8** nonnull %argv.0.lcssa) #6, !dbg !404
  call void @llvm.dbg.value(metadata i8** null, metadata !367, metadata !DIExpression()), !dbg !369
  br label %if.end96, !dbg !407

if.end18:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8** %nargv.0, metadata !367, metadata !DIExpression()), !dbg !369
  %arrayidx = getelementptr inbounds i8*, i8** %nargv.0, i64 %indvars.iv, !dbg !408
  store i8* null, i8** %arrayidx, align 8, !dbg !409
  br label %if.end19, !dbg !410

if.end19:                                         ; preds = %do.body, %if.end18
  %4 = phi i8* [ %3, %if.end18 ], [ %1, %do.body ], !dbg !369
  %argv.2 = phi i8** [ %nargv.0, %if.end18 ], [ %argv.0, %do.body ], !dbg !369
  %maxargc.2 = phi i32 [ %maxargc.1, %if.end18 ], [ %maxargc.0, %do.body ], !dbg !369
  call void @llvm.dbg.value(metadata i32 %maxargc.2, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.2, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8* %0, metadata !360, metadata !DIExpression()), !dbg !369
  %.pre = load i8*, i8** %input.addr, align 8, !dbg !411
  br label %while.cond, !dbg !412

while.cond:                                       ; preds = %if.end79, %if.end19
  %5 = phi i8* [ %.pre, %if.end19 ], [ %incdec.ptr80, %if.end79 ], !dbg !411
  %bsquote.1 = phi i32 [ %bsquote.0, %if.end19 ], [ %bsquote.3, %if.end79 ], !dbg !369
  %dquote.1 = phi i32 [ %dquote.0, %if.end19 ], [ %dquote.8, %if.end79 ], !dbg !377
  %squote.1 = phi i32 [ %squote.0, %if.end19 ], [ %squote.7, %if.end79 ], !dbg !378
  %arg.0 = phi i8* [ %0, %if.end19 ], [ %arg.8, %if.end79 ], !dbg !413
  call void @llvm.dbg.value(metadata i8* %arg.0, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %squote.1, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dquote.1, metadata !363, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %bsquote.1, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !369
  %6 = load i8, i8* %5, align 1, !dbg !414
  %cmp21 = icmp eq i8 %6, 0, !dbg !415
  br i1 %cmp21, label %while.end, label %while.body, !dbg !412

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !369
  %idxprom24 = zext i8 %6 to i64, !dbg !416
  %arrayidx25 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom24, !dbg !416
  %7 = load i16, i16* %arrayidx25, align 2, !dbg !416
  %8 = and i16 %7, 64, !dbg !416
  %tobool = icmp eq i16 %8, 0, !dbg !416
  %9 = or i32 %squote.1, %dquote.1, !dbg !419
  %10 = or i32 %9, %bsquote.1, !dbg !419
  %11 = icmp ne i32 %10, 0, !dbg !419
  %12 = or i1 %11, %tobool, !dbg !419
  br i1 %12, label %if.else34, label %while.end, !dbg !419

if.else34:                                        ; preds = %while.body
  %tobool35 = icmp eq i32 %bsquote.1, 0, !dbg !420
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !369
  br i1 %tobool35, label %if.else37, label %if.then36, !dbg !423

if.then36:                                        ; preds = %if.else34
  call void @llvm.dbg.value(metadata i32 0, metadata !364, metadata !DIExpression()), !dbg !369
  %incdec.ptr = getelementptr inbounds i8, i8* %arg.0, i64 1, !dbg !424
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !360, metadata !DIExpression()), !dbg !369
  store i8 %6, i8* %arg.0, align 1, !dbg !426
  br label %if.end79, !dbg !427

if.else37:                                        ; preds = %if.else34
  %cmp39 = icmp eq i8 %6, 92, !dbg !428
  br i1 %cmp39, label %if.end79, label %if.else42, !dbg !430

if.else42:                                        ; preds = %if.else37
  %tobool43 = icmp eq i32 %squote.1, 0, !dbg !431
  br i1 %tobool43, label %if.else52, label %if.then44, !dbg !433

if.then44:                                        ; preds = %if.else42
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !369
  %cmp46 = icmp eq i8 %6, 39, !dbg !434
  br i1 %cmp46, label %if.end79, label %if.else49, !dbg !437

if.else49:                                        ; preds = %if.then44
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !369
  %incdec.ptr50 = getelementptr inbounds i8, i8* %arg.0, i64 1, !dbg !438
  call void @llvm.dbg.value(metadata i8* %incdec.ptr50, metadata !360, metadata !DIExpression()), !dbg !369
  store i8 %6, i8* %arg.0, align 1, !dbg !440
  br label %if.end79

if.else52:                                        ; preds = %if.else42
  %tobool53 = icmp eq i32 %dquote.1, 0, !dbg !441
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !369
  br i1 %tobool53, label %if.else62, label %if.then54, !dbg !443

if.then54:                                        ; preds = %if.else52
  %cmp56 = icmp eq i8 %6, 34, !dbg !444
  br i1 %cmp56, label %if.end79, label %if.else59, !dbg !447

if.else59:                                        ; preds = %if.then54
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !369
  %incdec.ptr60 = getelementptr inbounds i8, i8* %arg.0, i64 1, !dbg !448
  call void @llvm.dbg.value(metadata i8* %incdec.ptr60, metadata !360, metadata !DIExpression()), !dbg !369
  store i8 %6, i8* %arg.0, align 1, !dbg !450
  br label %if.end79

if.else62:                                        ; preds = %if.else52
  %cmp64 = icmp eq i8 %6, 39, !dbg !451
  br i1 %cmp64, label %if.end79, label %if.else67, !dbg !454

if.else67:                                        ; preds = %if.else62
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !369
  %cmp69 = icmp eq i8 %6, 34, !dbg !455
  br i1 %cmp69, label %if.end79, label %if.else72, !dbg !457

if.else72:                                        ; preds = %if.else67
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !369
  %incdec.ptr73 = getelementptr inbounds i8, i8* %arg.0, i64 1, !dbg !458
  call void @llvm.dbg.value(metadata i8* %incdec.ptr73, metadata !360, metadata !DIExpression()), !dbg !369
  store i8 %6, i8* %arg.0, align 1, !dbg !460
  br label %if.end79

if.end79:                                         ; preds = %if.else37, %if.then54, %if.else59, %if.else72, %if.else67, %if.else62, %if.else49, %if.then44, %if.then36
  %bsquote.3 = phi i32 [ 0, %if.then36 ], [ 1, %if.else37 ], [ 0, %if.then54 ], [ 0, %if.else59 ], [ 0, %if.else72 ], [ 0, %if.else67 ], [ 0, %if.else62 ], [ 0, %if.else49 ], [ 0, %if.then44 ], !dbg !461
  %dquote.8 = phi i32 [ %dquote.1, %if.then36 ], [ %dquote.1, %if.else37 ], [ 0, %if.then54 ], [ %dquote.1, %if.else59 ], [ 0, %if.else72 ], [ 1, %if.else67 ], [ 0, %if.else62 ], [ %dquote.1, %if.else49 ], [ %dquote.1, %if.then44 ], !dbg !377
  %squote.7 = phi i32 [ %squote.1, %if.then36 ], [ %squote.1, %if.else37 ], [ 0, %if.then54 ], [ 0, %if.else59 ], [ 0, %if.else72 ], [ 0, %if.else67 ], [ 1, %if.else62 ], [ %squote.1, %if.else49 ], [ 0, %if.then44 ], !dbg !378
  %arg.8 = phi i8* [ %incdec.ptr, %if.then36 ], [ %arg.0, %if.else37 ], [ %arg.0, %if.then54 ], [ %incdec.ptr60, %if.else59 ], [ %incdec.ptr73, %if.else72 ], [ %arg.0, %if.else67 ], [ %arg.0, %if.else62 ], [ %incdec.ptr50, %if.else49 ], [ %arg.0, %if.then44 ], !dbg !413
  call void @llvm.dbg.value(metadata i8* %arg.8, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %squote.7, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dquote.8, metadata !363, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %bsquote.3, metadata !364, metadata !DIExpression()), !dbg !369
  %13 = load i8*, i8** %input.addr, align 8, !dbg !462
  call void @llvm.dbg.value(metadata i8* %13, metadata !359, metadata !DIExpression()), !dbg !369
  %incdec.ptr80 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !462
  call void @llvm.dbg.value(metadata i8* %incdec.ptr80, metadata !359, metadata !DIExpression()), !dbg !369
  store i8* %incdec.ptr80, i8** %input.addr, align 8, !dbg !462
  br label %while.cond, !dbg !412, !llvm.loop !463

while.end:                                        ; preds = %while.cond, %while.body
  %bsquote.1.lcssa = phi i32 [ %bsquote.1, %while.cond ], [ %bsquote.1, %while.body ], !dbg !369
  %dquote.1.lcssa = phi i32 [ %dquote.1, %while.cond ], [ %dquote.1, %while.body ], !dbg !377
  %squote.1.lcssa = phi i32 [ %squote.1, %while.cond ], [ %squote.1, %while.body ], !dbg !378
  %arg.0.lcssa = phi i8* [ %arg.0, %while.cond ], [ %arg.0, %while.body ], !dbg !413
  call void @llvm.dbg.value(metadata i32 %bsquote.1.lcssa, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %bsquote.1.lcssa, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dquote.1.lcssa, metadata !363, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dquote.1.lcssa, metadata !363, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %squote.1.lcssa, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %squote.1.lcssa, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8* %arg.0.lcssa, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8* %arg.0.lcssa, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %bsquote.1.lcssa, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %bsquote.1.lcssa, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dquote.1.lcssa, metadata !363, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dquote.1.lcssa, metadata !363, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %squote.1.lcssa, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %squote.1.lcssa, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8* %arg.0.lcssa, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8* %arg.0.lcssa, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %bsquote.1.lcssa, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %bsquote.1.lcssa, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dquote.1.lcssa, metadata !363, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %dquote.1.lcssa, metadata !363, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %squote.1.lcssa, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %squote.1.lcssa, metadata !362, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8* %arg.0.lcssa, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8* %arg.0.lcssa, metadata !360, metadata !DIExpression()), !dbg !369
  store i8 0, i8* %arg.0.lcssa, align 1, !dbg !465
  %call82 = call i8* @strdup(i8* nonnull %0) #5, !dbg !466
  %arrayidx84 = getelementptr inbounds i8*, i8** %argv.2, i64 %indvars.iv, !dbg !467
  store i8* %call82, i8** %arrayidx84, align 8, !dbg !468
  %cmp87 = icmp eq i8* %call82, null, !dbg !469
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !471

if.then89:                                        ; preds = %while.end
  %argv.2.lcssa = phi i8** [ %argv.2, %while.end ], !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.2.lcssa, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.2.lcssa, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.2.lcssa, metadata !367, metadata !DIExpression()), !dbg !369
  call void @freeargv(i8** %argv.2.lcssa) #6, !dbg !472
  call void @llvm.dbg.value(metadata i8** null, metadata !367, metadata !DIExpression()), !dbg !369
  br label %if.end96, !dbg !474

if.end90:                                         ; preds = %while.end
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !475
  call void @llvm.dbg.value(metadata i32 undef, metadata !365, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !369
  %arrayidx92 = getelementptr inbounds i8*, i8** %argv.2, i64 %indvars.iv.next, !dbg !476
  store i8* null, i8** %arrayidx92, align 8, !dbg !477
  call void @llvm.dbg.value(metadata i8** %input.addr, metadata !359, metadata !DIExpression(DW_OP_deref)), !dbg !369
  call fastcc void @consume_whitespace(i8** nonnull %input.addr) #6, !dbg !478
  %14 = load i8*, i8** %input.addr, align 8, !dbg !479
  call void @llvm.dbg.value(metadata i8* %14, metadata !359, metadata !DIExpression()), !dbg !369
  %15 = load i8, i8* %14, align 1, !dbg !480
  %cmp94 = icmp eq i8 %15, 0, !dbg !481
  br i1 %cmp94, label %if.end96.loopexit, label %do.body, !dbg !482, !llvm.loop !483

if.end96.loopexit:                                ; preds = %if.end90
  %argv.2.lcssa13 = phi i8** [ %argv.2, %if.end90 ], !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.2.lcssa13, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.2.lcssa13, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.2.lcssa13, metadata !367, metadata !DIExpression()), !dbg !369
  br label %if.end96, !dbg !485

if.end96:                                         ; preds = %if.end96.loopexit, %if.then13, %entry, %if.then89, %if.then16
  %argv.4 = phi i8** [ null, %entry ], [ null, %if.then89 ], [ null, %if.then16 ], [ null, %if.then13 ], [ %argv.2.lcssa13, %if.end96.loopexit ], !dbg !369
  call void @llvm.dbg.value(metadata i8** %argv.4, metadata !367, metadata !DIExpression()), !dbg !369
  ret i8** %argv.4, !dbg !485
}

; Function Attrs: nounwind uwtable
define internal fastcc void @consume_whitespace(i8** %input) unnamed_addr #3 !dbg !486 {
entry:
  call void @llvm.dbg.value(metadata i8** %input, metadata !491, metadata !DIExpression()), !dbg !492
  %.pre = load i8*, i8** %input, align 8, !dbg !493
  br label %while.cond, !dbg !494

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i8* [ %incdec.ptr, %while.body ], [ %.pre, %entry ], !dbg !493
  %1 = load i8, i8* %0, align 1, !dbg !493
  %idxprom = zext i8 %1 to i64, !dbg !493
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !493
  %2 = load i16, i16* %arrayidx, align 2, !dbg !493
  %3 = and i16 %2, 64, !dbg !493
  %tobool = icmp eq i16 %3, 0, !dbg !494
  br i1 %tobool, label %while.end, label %while.body, !dbg !494

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !495
  store i8* %incdec.ptr, i8** %input, align 8, !dbg !495
  br label %while.cond, !dbg !494, !llvm.loop !497

while.end:                                        ; preds = %while.cond
  ret void, !dbg !499
}

declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

declare dso_local i8* @strdup(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @writeargv(i8** %argv, %struct._IO_FILE* %f) local_unnamed_addr #3 !dbg !500 {
entry:
  call void @llvm.dbg.value(metadata i8** %argv, metadata !504, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !505, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !512
  %cmp = icmp eq %struct._IO_FILE* %f, null, !dbg !513
  br i1 %cmp, label %cleanup42, label %while.cond.preheader, !dbg !515

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !516

while.cond:                                       ; preds = %while.cond.preheader, %cleanup38
  %status.0 = phi i32 [ %status.3, %cleanup38 ], [ 0, %while.cond.preheader ], !dbg !512
  %argv.addr.0 = phi i8** [ %argv.addr.1, %cleanup38 ], [ %argv, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i8** %argv.addr.0, metadata !504, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !506, metadata !DIExpression()), !dbg !512
  %0 = load i8*, i8** %argv.addr.0, align 8, !dbg !517
  %cmp1 = icmp eq i8* %0, null, !dbg !518
  br i1 %cmp1, label %cleanup42.loopexit, label %while.body, !dbg !516

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8* %0, metadata !507, metadata !DIExpression()), !dbg !519
  br label %while.cond2, !dbg !520

while.cond2:                                      ; preds = %cleanup, %while.body
  %status.1 = phi i32 [ %status.0, %while.body ], [ %status.2, %cleanup ], !dbg !512
  %arg.0 = phi i8* [ %0, %while.body ], [ %arg.1, %cleanup ], !dbg !521
  call void @llvm.dbg.value(metadata i8* %arg.0, metadata !507, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !506, metadata !DIExpression()), !dbg !512
  %1 = load i8, i8* %arg.0, align 1, !dbg !522
  %cmp3 = icmp eq i8 %1, 0, !dbg !523
  br i1 %cmp3, label %while.end, label %while.body5, !dbg !520

while.body5:                                      ; preds = %while.cond2
  call void @llvm.dbg.value(metadata i8 %1, metadata !509, metadata !DIExpression()), !dbg !524
  %idxprom = zext i8 %1 to i64, !dbg !525
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !525
  %2 = load i16, i16* %arrayidx, align 2, !dbg !525
  %3 = and i16 %2, 64, !dbg !525
  %tobool = icmp ne i16 %3, 0, !dbg !525
  %cmp10 = icmp eq i8 %1, 92, !dbg !527
  %or.cond = or i1 %tobool, %cmp10, !dbg !528
  %cmp14 = icmp eq i8 %1, 39, !dbg !529
  %or.cond1 = or i1 %or.cond, %cmp14, !dbg !528
  %cmp18 = icmp eq i8 %1, 34, !dbg !530
  %or.cond2 = or i1 %or.cond1, %cmp18, !dbg !528
  br i1 %or.cond2, label %if.then20, label %if.end25, !dbg !528

if.then20:                                        ; preds = %while.body5
  %call = tail call i32 @fputc(i32 92, %struct._IO_FILE* nonnull %f) #5, !dbg !531
  %cmp21 = icmp eq i32 %call, -1, !dbg !533
  br i1 %cmp21, label %cleanup, label %if.end25, !dbg !534

if.end25:                                         ; preds = %if.then20, %while.body5
  %conv26 = sext i8 %1 to i32, !dbg !535
  %call27 = tail call i32 @fputc(i32 %conv26, %struct._IO_FILE* nonnull %f) #5, !dbg !537
  %cmp28 = icmp eq i32 %call27, -1, !dbg !538
  %incdec.ptr = getelementptr inbounds i8, i8* %arg.0, i64 1, !dbg !539
  %spec.select = select i1 %cmp28, i32 6, i32 0, !dbg !540
  %spec.select3 = select i1 %cmp28, i32 1, i32 %status.1, !dbg !540
  %spec.select4 = select i1 %cmp28, i8* %arg.0, i8* %incdec.ptr, !dbg !540
  br label %cleanup, !dbg !540

cleanup:                                          ; preds = %if.end25, %if.then20
  %cleanup.dest.slot.0 = phi i32 [ 6, %if.then20 ], [ %spec.select, %if.end25 ]
  %status.2 = phi i32 [ 1, %if.then20 ], [ %spec.select3, %if.end25 ], !dbg !512
  %arg.1 = phi i8* [ %arg.0, %if.then20 ], [ %spec.select4, %if.end25 ], !dbg !519
  call void @llvm.dbg.value(metadata i8* %arg.1, metadata !507, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !506, metadata !DIExpression()), !dbg !512
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %while.cond2, label %cleanup38.loopexit, !llvm.loop !541

while.end:                                        ; preds = %while.cond2
  %status.1.lcssa = phi i32 [ %status.1, %while.cond2 ], !dbg !512
  call void @llvm.dbg.value(metadata i32 %status.1.lcssa, metadata !506, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %status.1.lcssa, metadata !506, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %status.1.lcssa, metadata !506, metadata !DIExpression()), !dbg !512
  %call32 = tail call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %f) #5, !dbg !543
  %cmp33 = icmp eq i32 %call32, -1, !dbg !545
  %incdec.ptr37 = getelementptr inbounds i8*, i8** %argv.addr.0, i64 1, !dbg !546
  %spec.select5 = select i1 %cmp33, i32 6, i32 0, !dbg !547
  %spec.select6 = select i1 %cmp33, i32 1, i32 %status.1.lcssa, !dbg !547
  %spec.select7 = select i1 %cmp33, i8** %argv.addr.0, i8** %incdec.ptr37, !dbg !547
  br label %cleanup38, !dbg !547

cleanup38.loopexit:                               ; preds = %cleanup
  %cleanup.dest.slot.0.lcssa = phi i32 [ %cleanup.dest.slot.0, %cleanup ]
  %status.2.lcssa = phi i32 [ %status.2, %cleanup ], !dbg !512
  call void @llvm.dbg.value(metadata i32 %status.2.lcssa, metadata !506, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %status.2.lcssa, metadata !506, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %status.2.lcssa, metadata !506, metadata !DIExpression()), !dbg !512
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.loopexit, %while.end
  %cleanup.dest.slot.1 = phi i32 [ %spec.select5, %while.end ], [ %cleanup.dest.slot.0.lcssa, %cleanup38.loopexit ]
  %status.3 = phi i32 [ %spec.select6, %while.end ], [ %status.2.lcssa, %cleanup38.loopexit ], !dbg !512
  %argv.addr.1 = phi i8** [ %spec.select7, %while.end ], [ %argv.addr.0, %cleanup38.loopexit ]
  call void @llvm.dbg.value(metadata i8** %argv.addr.1, metadata !504, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !506, metadata !DIExpression()), !dbg !512
  %cond8 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond8, label %while.cond, label %cleanup42.loopexit

cleanup42.loopexit:                               ; preds = %cleanup38, %while.cond
  %retval.0.ph = phi i32 [ %status.0, %while.cond ], [ %status.3, %cleanup38 ]
  br label %cleanup42, !dbg !548

cleanup42:                                        ; preds = %cleanup42.loopexit, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %retval.0.ph, %cleanup42.loopexit ]
  ret i32 %retval.0, !dbg !548
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: nounwind uwtable
define dso_local void @expandargv(i32* %argcp, i8*** %argvp) local_unnamed_addr #3 !dbg !549 {
entry:
  call void @llvm.dbg.value(metadata i32* %argcp, metadata !555, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8*** %argvp, metadata !556, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 0, metadata !557, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 0, metadata !558, metadata !DIExpression()), !dbg !568
  %0 = bitcast i8*** %argvp to i8**, !dbg !569
  br label %while.cond, !dbg !570

while.cond:                                       ; preds = %cleanup, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.2, %cleanup ], !dbg !568
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !557, metadata !DIExpression()), !dbg !568
  %inc = add nsw i32 %i.0, 1, !dbg !571
  call void @llvm.dbg.value(metadata i32 %inc, metadata !557, metadata !DIExpression()), !dbg !568
  %1 = load i32, i32* %argcp, align 4, !dbg !572
  %cmp = icmp slt i32 %inc, %1, !dbg !573
  br i1 %cmp, label %while.body, label %while.end77, !dbg !570

while.body:                                       ; preds = %while.cond
  %2 = load i8**, i8*** %argvp, align 8, !dbg !574
  %idxprom = sext i32 %inc to i64, !dbg !575
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom, !dbg !575
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !575
  call void @llvm.dbg.value(metadata i8* %3, metadata !559, metadata !DIExpression()), !dbg !569
  %4 = load i8, i8* %3, align 1, !dbg !576
  %cmp2 = icmp eq i8 %4, 64, !dbg !578
  br i1 %cmp2, label %if.end, label %cleanup, !dbg !579, !llvm.loop !580

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i64 1, !dbg !582
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !559, metadata !DIExpression()), !dbg !569
  %call = tail call %struct._IO_FILE* @fopen(i8* nonnull %incdec.ptr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !583
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !561, metadata !DIExpression()), !dbg !569
  %tobool = icmp eq %struct._IO_FILE* %call, null, !dbg !584
  br i1 %tobool, label %cleanup, label %if.end5, !dbg !586, !llvm.loop !580

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @fseek(%struct._IO_FILE* nonnull %call, i64 0, i32 2) #5, !dbg !587
  %cmp7 = icmp eq i32 %call6, -1, !dbg !589
  br i1 %cmp7, label %error, label %if.end10, !dbg !590

if.end10:                                         ; preds = %if.end5
  %call11 = tail call i64 @ftell(%struct._IO_FILE* nonnull %call) #5, !dbg !591
  call void @llvm.dbg.value(metadata i64 %call11, metadata !562, metadata !DIExpression()), !dbg !569
  %cmp12 = icmp eq i64 %call11, -1, !dbg !592
  br i1 %cmp12, label %error, label %if.end15, !dbg !594

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @fseek(%struct._IO_FILE* nonnull %call, i64 0, i32 0) #5, !dbg !595
  %cmp17 = icmp eq i32 %call16, -1, !dbg !597
  br i1 %cmp17, label %error, label %if.end20, !dbg !598

if.end20:                                         ; preds = %if.end15
  %add = add i64 %call11, 1, !dbg !599
  %call21 = tail call i8* @xmalloc(i64 %add) #5, !dbg !600
  call void @llvm.dbg.value(metadata i8* %call21, metadata !564, metadata !DIExpression()), !dbg !569
  %call22 = tail call i64 @fread(i8* %call21, i64 1, i64 %call11, %struct._IO_FILE* nonnull %call) #5, !dbg !601
  call void @llvm.dbg.value(metadata i64 %call22, metadata !563, metadata !DIExpression()), !dbg !569
  %cmp23 = icmp eq i64 %call22, %call11, !dbg !602
  br i1 %cmp23, label %if.end28, label %land.lhs.true, !dbg !604

land.lhs.true:                                    ; preds = %if.end20
  %call25 = tail call i32 @ferror(%struct._IO_FILE* nonnull %call) #5, !dbg !605
  %tobool26 = icmp eq i32 %call25, 0, !dbg !605
  br i1 %tobool26, label %if.end28, label %error, !dbg !606

if.end28:                                         ; preds = %land.lhs.true, %if.end20
  %arrayidx29 = getelementptr inbounds i8, i8* %call21, i64 %call22, !dbg !607
  store i8 0, i8* %arrayidx29, align 1, !dbg !608
  %call30 = tail call fastcc i32 @only_whitespace(i8* %call21) #6, !dbg !609
  %tobool31 = icmp eq i32 %call30, 0, !dbg !609
  br i1 %tobool31, label %if.else, label %if.then32, !dbg !611

if.then32:                                        ; preds = %if.end28
  %call33 = tail call i8* @xmalloc(i64 8) #5, !dbg !612
  %5 = bitcast i8* %call33 to i8**, !dbg !614
  call void @llvm.dbg.value(metadata i8** %5, metadata !565, metadata !DIExpression()), !dbg !569
  store i8* null, i8** %5, align 8, !dbg !615
  br label %if.end36, !dbg !616

if.else:                                          ; preds = %if.end28
  %call35 = tail call i8** @buildargv(i8* %call21) #6, !dbg !617
  call void @llvm.dbg.value(metadata i8** %call35, metadata !565, metadata !DIExpression()), !dbg !569
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then32
  %file_argv.0 = phi i8** [ %5, %if.then32 ], [ %call35, %if.else ], !dbg !618
  call void @llvm.dbg.value(metadata i8** %file_argv.0, metadata !565, metadata !DIExpression()), !dbg !569
  %6 = load i8**, i8*** %argvp, align 8, !dbg !619
  %call39 = tail call i8** @dupargv(i8** %6) #6, !dbg !622
  store i8** %call39, i8*** %argvp, align 8, !dbg !623
  %tobool40 = icmp eq i8** %call39, null, !dbg !624
  br i1 %tobool40, label %if.then41, label %if.end44, !dbg !626

if.then41:                                        ; preds = %if.end36
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !627
  %call42 = tail call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* %7) #5, !dbg !629
  tail call void @xexit(i32 1) #5, !dbg !630
  br label %if.end44, !dbg !631

if.end44:                                         ; preds = %if.end36, %if.then41
  call void @llvm.dbg.value(metadata i64 0, metadata !566, metadata !DIExpression()), !dbg !569
  br label %while.cond45, !dbg !632

while.cond45:                                     ; preds = %while.body48, %if.end44
  %file_argc.0 = phi i64 [ 0, %if.end44 ], [ %inc49, %while.body48 ], !dbg !569
  call void @llvm.dbg.value(metadata i64 %file_argc.0, metadata !566, metadata !DIExpression()), !dbg !569
  %arrayidx46 = getelementptr inbounds i8*, i8** %file_argv.0, i64 %file_argc.0, !dbg !633
  %8 = load i8*, i8** %arrayidx46, align 8, !dbg !633
  %tobool47 = icmp eq i8* %8, null, !dbg !632
  br i1 %tobool47, label %while.end, label %while.body48, !dbg !632

while.body48:                                     ; preds = %while.cond45
  %inc49 = add i64 %file_argc.0, 1, !dbg !634
  call void @llvm.dbg.value(metadata i64 %inc49, metadata !566, metadata !DIExpression()), !dbg !569
  br label %while.cond45, !dbg !632, !llvm.loop !635

while.end:                                        ; preds = %while.cond45
  %file_argc.0.lcssa = phi i64 [ %file_argc.0, %while.cond45 ], !dbg !569
  call void @llvm.dbg.value(metadata i64 %file_argc.0.lcssa, metadata !566, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i64 %file_argc.0.lcssa, metadata !566, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i64 %file_argc.0.lcssa, metadata !566, metadata !DIExpression()), !dbg !569
  %9 = load i8*, i8** %0, align 8, !dbg !637
  %10 = load i32, i32* %argcp, align 4, !dbg !638
  %conv50 = sext i32 %10 to i64, !dbg !638
  %add51 = add i64 %file_argc.0.lcssa, %conv50, !dbg !639
  %add52 = shl i64 %add51, 3, !dbg !640
  %mul53 = add i64 %add52, 8, !dbg !640
  %call54 = tail call i8* @xrealloc(i8* %9, i64 %mul53) #5, !dbg !641
  store i8* %call54, i8** %0, align 8, !dbg !642
  %.cast = bitcast i8* %call54 to i8**, !dbg !643
  %add.ptr = getelementptr inbounds i8*, i8** %.cast, i64 %idxprom, !dbg !644
  %add.ptr55 = getelementptr inbounds i8*, i8** %add.ptr, i64 %file_argc.0.lcssa, !dbg !645
  %11 = bitcast i8** %add.ptr55 to i8*, !dbg !643
  %add.ptr57 = getelementptr inbounds i8, i8* %call54, i64 8, !dbg !646
  %12 = bitcast i8* %add.ptr57 to i8**, !dbg !646
  %add.ptr58 = getelementptr inbounds i8*, i8** %12, i64 %idxprom, !dbg !647
  %13 = bitcast i8** %add.ptr58 to i8*, !dbg !648
  %14 = load i32, i32* %argcp, align 4, !dbg !649
  %sub = sub nsw i32 %14, %inc, !dbg !650
  %conv59 = sext i32 %sub to i64, !dbg !651
  %mul60 = shl nsw i64 %conv59, 3, !dbg !652
  %call61 = tail call i8* @memmove(i8* %11, i8* nonnull %13, i64 %mul60) #5, !dbg !653
  %15 = load i8**, i8*** %argvp, align 8, !dbg !654
  %add.ptr63 = getelementptr inbounds i8*, i8** %15, i64 %idxprom, !dbg !655
  %16 = bitcast i8** %add.ptr63 to i8*, !dbg !654
  %17 = bitcast i8** %file_argv.0 to i8*, !dbg !656
  %mul64 = shl i64 %file_argc.0.lcssa, 3, !dbg !657
  %call65 = tail call i8* @memcpy(i8* %16, i8* %17, i64 %mul64) #5, !dbg !658
  %18 = load i32, i32* %argcp, align 4, !dbg !659
  %19 = trunc i64 %file_argc.0.lcssa to i32, !dbg !659
  %20 = add i32 %19, -1, !dbg !659
  %conv69 = add i32 %18, %20, !dbg !659
  store i32 %conv69, i32* %argcp, align 4, !dbg !659
  tail call void @free(i8* %17) #5, !dbg !660
  tail call void @free(i8* %call21) #5, !dbg !661
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !557, metadata !DIExpression()), !dbg !568
  br label %error, !dbg !662

error:                                            ; preds = %land.lhs.true, %if.end15, %if.end10, %if.end5, %while.end
  %i.1 = phi i32 [ %i.0, %while.end ], [ %inc, %if.end5 ], [ %inc, %if.end10 ], [ %inc, %if.end15 ], [ %inc, %land.lhs.true ], !dbg !568
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !557, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.label(metadata !567), !dbg !663
  %call70 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call) #5, !dbg !664
  br label %cleanup, !dbg !581

cleanup:                                          ; preds = %if.end, %while.body, %error
  %i.2 = phi i32 [ %i.1, %error ], [ %inc, %while.body ], [ %inc, %if.end ], !dbg !571
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !557, metadata !DIExpression()), !dbg !568
  br label %while.cond

while.end77:                                      ; preds = %while.cond
  ret void, !dbg !665
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) local_unnamed_addr #1

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) local_unnamed_addr #1

declare dso_local i64 @ftell(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i32 @ferror(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @only_whitespace(i8* %input) unnamed_addr #3 !dbg !666 {
entry:
  call void @llvm.dbg.value(metadata i8* %input, metadata !668, metadata !DIExpression()), !dbg !669
  br label %while.cond, !dbg !670

while.cond:                                       ; preds = %while.body, %entry
  %input.addr.0 = phi i8* [ %input, %entry ], [ %incdec.ptr, %while.body ]
  call void @llvm.dbg.value(metadata i8* %input.addr.0, metadata !668, metadata !DIExpression()), !dbg !669
  %0 = load i8, i8* %input.addr.0, align 1, !dbg !671
  %cmp = icmp eq i8 %0, 0, !dbg !672
  br i1 %cmp, label %while.end, label %land.rhs, !dbg !673

land.rhs:                                         ; preds = %while.cond
  %idxprom = zext i8 %0 to i64, !dbg !674
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !674
  %1 = load i16, i16* %arrayidx, align 2, !dbg !674
  %2 = and i16 %1, 64, !dbg !674
  %tobool = icmp eq i16 %2, 0, !dbg !673
  br i1 %tobool, label %while.end, label %while.body, !dbg !670

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %input.addr.0, i64 1, !dbg !675
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !668, metadata !DIExpression()), !dbg !669
  br label %while.cond, !dbg !670, !llvm.loop !676

while.end:                                        ; preds = %land.rhs, %while.cond
  %cmp.lcssa = phi i1 [ %cmp, %land.rhs ], [ %cmp, %while.cond ], !dbg !672
  call void @llvm.dbg.value(metadata i8* %input.addr.0, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8* %input.addr.0, metadata !668, metadata !DIExpression()), !dbg !669
  %conv7 = zext i1 %cmp.lcssa to i32, !dbg !677
  ret i32 %conv7, !dbg !678
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @xexit(i32) local_unnamed_addr #1

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local i32 @fclose(%struct._IO_FILE*) local_unnamed_addr #1

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
!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "argv.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !6, !7, !10, !11, !8, !13, !14}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 46, baseType: !16)
!15 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!21 = distinct !DISubprogram(name: "vprintf", scope: !22, file: !22, line: 39, type: !23, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!23 = !DISubroutineType(types: !24)
!24 = !{!6, !25, !26}
!25 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !28)
!28 = !{!29, !31, !32, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !27, file: !1, baseType: !30, size: 32)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !27, file: !1, baseType: !30, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !27, file: !1, baseType: !10, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !27, file: !1, baseType: !10, size: 64, offset: 128)
!34 = !{!35, !36}
!35 = !DILocalVariable(name: "__fmt", arg: 1, scope: !21, file: !22, line: 39, type: !25)
!36 = !DILocalVariable(name: "__arg", arg: 2, scope: !21, file: !22, line: 39, type: !26)
!37 = !DILocation(line: 0, scope: !21)
!38 = !DILocation(line: 41, column: 20, scope: !21)
!39 = !DILocation(line: 41, column: 10, scope: !21)
!40 = !DILocation(line: 41, column: 3, scope: !21)
!41 = distinct !DISubprogram(name: "getchar", scope: !22, file: !22, line: 47, type: !42, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!6}
!44 = !DILocation(line: 49, column: 16, scope: !41)
!45 = !DILocation(line: 49, column: 10, scope: !41)
!46 = !DILocation(line: 49, column: 3, scope: !41)
!47 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !22, file: !22, line: 56, type: !48, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!48 = !DISubroutineType(types: !49)
!49 = !{!6, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !52, line: 7, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !71, !73, !74, !75, !79, !80, !82, !86, !89, !91, !94, !97, !98, !99, !100, !101}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 51, baseType: !6, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 54, baseType: !8, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !53, file: !54, line: 55, baseType: !8, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !53, file: !54, line: 56, baseType: !8, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !53, file: !54, line: 57, baseType: !8, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !53, file: !54, line: 58, baseType: !8, size: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !53, file: !54, line: 59, baseType: !8, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !53, file: !54, line: 60, baseType: !8, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !53, file: !54, line: 61, baseType: !8, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !53, file: !54, line: 64, baseType: !8, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !53, file: !54, line: 65, baseType: !8, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !53, file: !54, line: 66, baseType: !8, size: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !53, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !54, line: 36, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !53, file: !54, line: 70, baseType: !72, size: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !53, file: !54, line: 72, baseType: !6, size: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !53, file: !54, line: 73, baseType: !6, size: 32, offset: 928)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !53, file: !54, line: 74, baseType: !76, size: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !77, line: 152, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!78 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 77, baseType: !13, size: 16, offset: 1024)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 78, baseType: !81, size: 8, offset: 1040)
!81 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 79, baseType: !83, size: 8, offset: 1048)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 81, baseType: !87, size: 64, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 43, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 89, baseType: !90, size: 64, offset: 1152)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !77, line: 153, baseType: !78)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !53, file: !54, line: 91, baseType: !92, size: 64, offset: 1216)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !54, line: 37, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !53, file: !54, line: 92, baseType: !95, size: 64, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !54, line: 38, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !53, file: !54, line: 93, baseType: !72, size: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !53, file: !54, line: 94, baseType: !10, size: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 95, baseType: !14, size: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 96, baseType: !6, size: 32, offset: 1536)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 98, baseType: !102, size: 160, offset: 1568)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 20)
!105 = !{!106}
!106 = !DILocalVariable(name: "__fp", arg: 1, scope: !47, file: !22, line: 56, type: !50)
!107 = !DILocation(line: 0, scope: !47)
!108 = !DILocation(line: 58, column: 10, scope: !47)
!109 = !DILocation(line: 58, column: 3, scope: !47)
!110 = distinct !DISubprogram(name: "getc_unlocked", scope: !22, file: !22, line: 66, type: !48, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!111 = !{!112}
!112 = !DILocalVariable(name: "__fp", arg: 1, scope: !110, file: !22, line: 66, type: !50)
!113 = !DILocation(line: 0, scope: !110)
!114 = !DILocation(line: 68, column: 10, scope: !110)
!115 = !DILocation(line: 68, column: 3, scope: !110)
!116 = distinct !DISubprogram(name: "getchar_unlocked", scope: !22, file: !22, line: 73, type: !42, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!117 = !DILocation(line: 75, column: 10, scope: !116)
!118 = !DILocation(line: 75, column: 3, scope: !116)
!119 = distinct !DISubprogram(name: "putchar", scope: !22, file: !22, line: 82, type: !120, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!6, !6}
!122 = !{!123}
!123 = !DILocalVariable(name: "__c", arg: 1, scope: !119, file: !22, line: 82, type: !6)
!124 = !DILocation(line: 0, scope: !119)
!125 = !DILocation(line: 84, column: 21, scope: !119)
!126 = !DILocation(line: 84, column: 10, scope: !119)
!127 = !DILocation(line: 84, column: 3, scope: !119)
!128 = distinct !DISubprogram(name: "fputc_unlocked", scope: !22, file: !22, line: 91, type: !129, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{!6, !6, !50}
!131 = !{!132, !133}
!132 = !DILocalVariable(name: "__c", arg: 1, scope: !128, file: !22, line: 91, type: !6)
!133 = !DILocalVariable(name: "__stream", arg: 2, scope: !128, file: !22, line: 91, type: !50)
!134 = !DILocation(line: 0, scope: !128)
!135 = !DILocation(line: 93, column: 10, scope: !128)
!136 = !DILocation(line: 93, column: 3, scope: !128)
!137 = distinct !DISubprogram(name: "putc_unlocked", scope: !22, file: !22, line: 101, type: !129, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "__c", arg: 1, scope: !137, file: !22, line: 101, type: !6)
!140 = !DILocalVariable(name: "__stream", arg: 2, scope: !137, file: !22, line: 101, type: !50)
!141 = !DILocation(line: 0, scope: !137)
!142 = !DILocation(line: 103, column: 10, scope: !137)
!143 = !DILocation(line: 103, column: 3, scope: !137)
!144 = distinct !DISubprogram(name: "putchar_unlocked", scope: !22, file: !22, line: 108, type: !120, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146}
!146 = !DILocalVariable(name: "__c", arg: 1, scope: !144, file: !22, line: 108, type: !6)
!147 = !DILocation(line: 0, scope: !144)
!148 = !DILocation(line: 110, column: 10, scope: !144)
!149 = !DILocation(line: 110, column: 3, scope: !144)
!150 = distinct !DISubprogram(name: "getline", scope: !22, file: !22, line: 118, type: !151, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !7, !154, !50}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !77, line: 193, baseType: !78)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!155 = !{!156, !157, !158}
!156 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !150, file: !22, line: 118, type: !7)
!157 = !DILocalVariable(name: "__n", arg: 2, scope: !150, file: !22, line: 118, type: !154)
!158 = !DILocalVariable(name: "__stream", arg: 3, scope: !150, file: !22, line: 118, type: !50)
!159 = !DILocation(line: 0, scope: !150)
!160 = !DILocation(line: 120, column: 10, scope: !150)
!161 = !DILocation(line: 120, column: 3, scope: !150)
!162 = distinct !DISubprogram(name: "feof_unlocked", scope: !22, file: !22, line: 128, type: !48, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!163 = !{!164}
!164 = !DILocalVariable(name: "__stream", arg: 1, scope: !162, file: !22, line: 128, type: !50)
!165 = !DILocation(line: 0, scope: !162)
!166 = !DILocation(line: 130, column: 10, scope: !162)
!167 = !DILocation(line: 130, column: 3, scope: !162)
!168 = distinct !DISubprogram(name: "ferror_unlocked", scope: !22, file: !22, line: 135, type: !48, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "__stream", arg: 1, scope: !168, file: !22, line: 135, type: !50)
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
!207 = !{!78, !11}
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
!225 = !{!10, !226, !226, !14, !14, !228}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !196, line: 808, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!6, !226, !226}
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!233 = !DILocalVariable(name: "__key", arg: 1, scope: !222, file: !223, line: 20, type: !226)
!234 = !DILocalVariable(name: "__base", arg: 2, scope: !222, file: !223, line: 20, type: !226)
!235 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !222, file: !223, line: 20, type: !14)
!236 = !DILocalVariable(name: "__size", arg: 4, scope: !222, file: !223, line: 20, type: !14)
!237 = !DILocalVariable(name: "__compar", arg: 5, scope: !222, file: !223, line: 21, type: !228)
!238 = !DILocalVariable(name: "__l", scope: !222, file: !223, line: 23, type: !14)
!239 = !DILocalVariable(name: "__u", scope: !222, file: !223, line: 23, type: !14)
!240 = !DILocalVariable(name: "__idx", scope: !222, file: !223, line: 23, type: !14)
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
!273 = distinct !DISubprogram(name: "dupargv", scope: !1, file: !1, line: 65, type: !274, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !276)
!274 = !DISubroutineType(types: !275)
!275 = !{!7, !7}
!276 = !{!277, !278, !279, !280}
!277 = !DILocalVariable(name: "argv", arg: 1, scope: !273, file: !1, line: 65, type: !7)
!278 = !DILocalVariable(name: "argc", scope: !273, file: !1, line: 67, type: !6)
!279 = !DILocalVariable(name: "copy", scope: !273, file: !1, line: 68, type: !7)
!280 = !DILocalVariable(name: "len", scope: !281, file: !1, line: 82, type: !6)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 81, column: 5)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 80, column: 3)
!283 = distinct !DILexicalBlock(scope: !273, file: !1, line: 80, column: 3)
!284 = !DILocation(line: 0, scope: !273)
!285 = !DILocation(line: 70, column: 12, scope: !286)
!286 = distinct !DILexicalBlock(scope: !273, file: !1, line: 70, column: 7)
!287 = !DILocation(line: 70, column: 7, scope: !273)
!288 = !DILocation(line: 74, column: 3, scope: !289)
!289 = distinct !DILexicalBlock(scope: !273, file: !1, line: 74, column: 3)
!290 = !DILocation(line: 0, scope: !289)
!291 = !DILocation(line: 74, column: 18, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !1, line: 74, column: 3)
!293 = !DILocation(line: 74, column: 29, scope: !292)
!294 = distinct !{!294, !288, !295}
!295 = !DILocation(line: 74, column: 45, scope: !289)
!296 = !DILocation(line: 75, column: 39, scope: !273)
!297 = !DILocation(line: 75, column: 20, scope: !273)
!298 = !DILocation(line: 75, column: 10, scope: !273)
!299 = !DILocation(line: 76, column: 12, scope: !300)
!300 = distinct !DILexicalBlock(scope: !273, file: !1, line: 76, column: 7)
!301 = !DILocation(line: 76, column: 7, scope: !273)
!302 = !DILocation(line: 80, column: 3, scope: !283)
!303 = !DILocation(line: 0, scope: !283)
!304 = !DILocation(line: 80, column: 18, scope: !282)
!305 = !DILocation(line: 80, column: 29, scope: !282)
!306 = !DILocation(line: 82, column: 17, scope: !281)
!307 = !DILocation(line: 83, column: 37, scope: !281)
!308 = !DILocation(line: 83, column: 29, scope: !281)
!309 = !DILocation(line: 83, column: 7, scope: !281)
!310 = !DILocation(line: 83, column: 18, scope: !281)
!311 = !DILocation(line: 84, column: 22, scope: !312)
!312 = distinct !DILexicalBlock(scope: !281, file: !1, line: 84, column: 11)
!313 = !DILocation(line: 84, column: 11, scope: !281)
!314 = !DILocation(line: 86, column: 4, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !1, line: 85, column: 2)
!316 = !DILocation(line: 87, column: 4, scope: !315)
!317 = !DILocation(line: 89, column: 27, scope: !281)
!318 = !DILocation(line: 89, column: 7, scope: !281)
!319 = !DILocation(line: 90, column: 5, scope: !282)
!320 = !DILocation(line: 80, column: 42, scope: !282)
!321 = !DILocation(line: 80, column: 3, scope: !282)
!322 = distinct !{!322, !302, !323}
!323 = !DILocation(line: 90, column: 5, scope: !283)
!324 = !DILocation(line: 91, column: 3, scope: !273)
!325 = !DILocation(line: 91, column: 14, scope: !273)
!326 = !DILocation(line: 92, column: 3, scope: !273)
!327 = !DILocation(line: 93, column: 1, scope: !273)
!328 = distinct !DISubprogram(name: "freeargv", scope: !1, file: !1, line: 108, type: !329, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !7}
!331 = !{!332, !333}
!332 = !DILocalVariable(name: "vector", arg: 1, scope: !328, file: !1, line: 108, type: !7)
!333 = !DILocalVariable(name: "scan", scope: !328, file: !1, line: 110, type: !7)
!334 = !DILocation(line: 0, scope: !328)
!335 = !DILocation(line: 112, column: 14, scope: !336)
!336 = distinct !DILexicalBlock(scope: !328, file: !1, line: 112, column: 7)
!337 = !DILocation(line: 112, column: 7, scope: !328)
!338 = !DILocation(line: 114, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 114, column: 7)
!340 = distinct !DILexicalBlock(scope: !336, file: !1, line: 113, column: 5)
!341 = !DILocation(line: 0, scope: !339)
!342 = !DILocation(line: 114, column: 27, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !1, line: 114, column: 7)
!344 = !DILocation(line: 114, column: 33, scope: !343)
!345 = !DILocation(line: 116, column: 4, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !1, line: 115, column: 2)
!347 = !DILocation(line: 114, column: 46, scope: !343)
!348 = !DILocation(line: 114, column: 7, scope: !343)
!349 = distinct !{!349, !338, !350}
!350 = !DILocation(line: 117, column: 2, scope: !339)
!351 = !DILocation(line: 118, column: 13, scope: !340)
!352 = !DILocation(line: 118, column: 7, scope: !340)
!353 = !DILocation(line: 119, column: 5, scope: !340)
!354 = !DILocation(line: 120, column: 1, scope: !328)
!355 = distinct !DISubprogram(name: "buildargv", scope: !1, file: !1, line: 180, type: !356, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{!7, !11}
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!359 = !DILocalVariable(name: "input", arg: 1, scope: !355, file: !1, line: 180, type: !11)
!360 = !DILocalVariable(name: "arg", scope: !355, file: !1, line: 182, type: !8)
!361 = !DILocalVariable(name: "copybuf", scope: !355, file: !1, line: 183, type: !8)
!362 = !DILocalVariable(name: "squote", scope: !355, file: !1, line: 184, type: !6)
!363 = !DILocalVariable(name: "dquote", scope: !355, file: !1, line: 185, type: !6)
!364 = !DILocalVariable(name: "bsquote", scope: !355, file: !1, line: 186, type: !6)
!365 = !DILocalVariable(name: "argc", scope: !355, file: !1, line: 187, type: !6)
!366 = !DILocalVariable(name: "maxargc", scope: !355, file: !1, line: 188, type: !6)
!367 = !DILocalVariable(name: "argv", scope: !355, file: !1, line: 189, type: !7)
!368 = !DILocalVariable(name: "nargv", scope: !355, file: !1, line: 190, type: !7)
!369 = !DILocation(line: 0, scope: !355)
!370 = !DILocation(line: 192, column: 13, scope: !371)
!371 = distinct !DILexicalBlock(scope: !355, file: !1, line: 192, column: 7)
!372 = !DILocation(line: 192, column: 7, scope: !355)
!373 = !DILocation(line: 194, column: 26, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !1, line: 193, column: 5)
!375 = !DILocation(line: 197, column: 7, scope: !374)
!376 = !DILocation(line: 186, column: 7, scope: !355)
!377 = !DILocation(line: 185, column: 7, scope: !355)
!378 = !DILocation(line: 184, column: 7, scope: !355)
!379 = !DILocation(line: 200, column: 4, scope: !380)
!380 = distinct !DILexicalBlock(scope: !374, file: !1, line: 198, column: 2)
!381 = !DILocation(line: 202, column: 17, scope: !382)
!382 = distinct !DILexicalBlock(scope: !380, file: !1, line: 202, column: 8)
!383 = !DILocation(line: 202, column: 44, scope: !382)
!384 = !DILocation(line: 202, column: 32, scope: !382)
!385 = !DILocation(line: 202, column: 23, scope: !382)
!386 = !DILocation(line: 205, column: 17, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 205, column: 12)
!388 = distinct !DILexicalBlock(scope: !382, file: !1, line: 203, column: 6)
!389 = !DILocation(line: 205, column: 12, scope: !388)
!390 = !DILocation(line: 208, column: 23, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !1, line: 206, column: 3)
!392 = !DILocation(line: 209, column: 3, scope: !391)
!393 = !DILocation(line: 212, column: 13, scope: !394)
!394 = distinct !DILexicalBlock(scope: !387, file: !1, line: 211, column: 3)
!395 = !DILocation(line: 213, column: 38, scope: !394)
!396 = !DILocation(line: 213, column: 46, scope: !394)
!397 = !DILocation(line: 213, column: 23, scope: !394)
!398 = !DILocation(line: 0, scope: !387)
!399 = !DILocation(line: 215, column: 18, scope: !400)
!400 = distinct !DILexicalBlock(scope: !388, file: !1, line: 215, column: 12)
!401 = !DILocation(line: 215, column: 12, scope: !388)
!402 = !DILocation(line: 217, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !1, line: 216, column: 3)
!404 = !DILocation(line: 219, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 218, column: 7)
!406 = distinct !DILexicalBlock(scope: !403, file: !1, line: 217, column: 9)
!407 = !DILocation(line: 221, column: 7, scope: !405)
!408 = !DILocation(line: 225, column: 8, scope: !388)
!409 = !DILocation(line: 225, column: 19, scope: !388)
!410 = !DILocation(line: 226, column: 6, scope: !388)
!411 = !DILocation(line: 229, column: 12, scope: !380)
!412 = !DILocation(line: 229, column: 4, scope: !380)
!413 = !DILocation(line: 0, scope: !380)
!414 = !DILocation(line: 229, column: 11, scope: !380)
!415 = !DILocation(line: 229, column: 18, scope: !380)
!416 = !DILocation(line: 231, column: 12, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 231, column: 12)
!418 = distinct !DILexicalBlock(scope: !380, file: !1, line: 230, column: 6)
!419 = !DILocation(line: 231, column: 29, scope: !417)
!420 = !DILocation(line: 237, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 237, column: 9)
!422 = distinct !DILexicalBlock(scope: !417, file: !1, line: 236, column: 3)
!423 = !DILocation(line: 237, column: 9, scope: !422)
!424 = !DILocation(line: 240, column: 13, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !1, line: 238, column: 7)
!426 = !DILocation(line: 240, column: 16, scope: !425)
!427 = !DILocation(line: 241, column: 7, scope: !425)
!428 = !DILocation(line: 242, column: 21, scope: !429)
!429 = distinct !DILexicalBlock(scope: !421, file: !1, line: 242, column: 14)
!430 = !DILocation(line: 242, column: 14, scope: !421)
!431 = !DILocation(line: 246, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !1, line: 246, column: 14)
!433 = !DILocation(line: 246, column: 14, scope: !429)
!434 = !DILocation(line: 248, column: 20, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 248, column: 13)
!436 = distinct !DILexicalBlock(scope: !432, file: !1, line: 247, column: 7)
!437 = !DILocation(line: 248, column: 13, scope: !436)
!438 = !DILocation(line: 254, column: 10, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !1, line: 253, column: 4)
!440 = !DILocation(line: 254, column: 13, scope: !439)
!441 = !DILocation(line: 257, column: 14, scope: !442)
!442 = distinct !DILexicalBlock(scope: !432, file: !1, line: 257, column: 14)
!443 = !DILocation(line: 257, column: 14, scope: !432)
!444 = !DILocation(line: 259, column: 20, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 259, column: 13)
!446 = distinct !DILexicalBlock(scope: !442, file: !1, line: 258, column: 7)
!447 = !DILocation(line: 259, column: 13, scope: !446)
!448 = !DILocation(line: 265, column: 10, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !1, line: 264, column: 4)
!450 = !DILocation(line: 265, column: 13, scope: !449)
!451 = !DILocation(line: 270, column: 20, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 270, column: 13)
!453 = distinct !DILexicalBlock(scope: !442, file: !1, line: 269, column: 7)
!454 = !DILocation(line: 270, column: 13, scope: !453)
!455 = !DILocation(line: 274, column: 25, scope: !456)
!456 = distinct !DILexicalBlock(scope: !452, file: !1, line: 274, column: 18)
!457 = !DILocation(line: 274, column: 18, scope: !452)
!458 = !DILocation(line: 280, column: 10, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !1, line: 279, column: 4)
!460 = !DILocation(line: 280, column: 13, scope: !459)
!461 = !DILocation(line: 0, scope: !421)
!462 = !DILocation(line: 283, column: 10, scope: !422)
!463 = distinct !{!463, !412, !464}
!464 = !DILocation(line: 285, column: 6, scope: !380)
!465 = !DILocation(line: 286, column: 9, scope: !380)
!466 = !DILocation(line: 287, column: 17, scope: !380)
!467 = !DILocation(line: 287, column: 4, scope: !380)
!468 = !DILocation(line: 287, column: 15, scope: !380)
!469 = !DILocation(line: 288, column: 19, scope: !470)
!470 = distinct !DILexicalBlock(scope: !380, file: !1, line: 288, column: 8)
!471 = !DILocation(line: 288, column: 8, scope: !380)
!472 = !DILocation(line: 290, column: 8, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !1, line: 289, column: 6)
!474 = !DILocation(line: 292, column: 8, scope: !473)
!475 = !DILocation(line: 294, column: 8, scope: !380)
!476 = !DILocation(line: 295, column: 4, scope: !380)
!477 = !DILocation(line: 295, column: 15, scope: !380)
!478 = !DILocation(line: 297, column: 4, scope: !380)
!479 = !DILocation(line: 299, column: 15, scope: !374)
!480 = !DILocation(line: 299, column: 14, scope: !374)
!481 = !DILocation(line: 299, column: 21, scope: !374)
!482 = !DILocation(line: 298, column: 2, scope: !380)
!483 = distinct !{!483, !375, !484}
!484 = !DILocation(line: 299, column: 27, scope: !374)
!485 = !DILocation(line: 301, column: 3, scope: !355)
!486 = distinct !DISubprogram(name: "consume_whitespace", scope: !1, file: !1, line: 123, type: !487, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !490)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!490 = !{!491}
!491 = !DILocalVariable(name: "input", arg: 1, scope: !486, file: !1, line: 123, type: !489)
!492 = !DILocation(line: 0, scope: !486)
!493 = !DILocation(line: 125, column: 10, scope: !486)
!494 = !DILocation(line: 125, column: 3, scope: !486)
!495 = !DILocation(line: 127, column: 15, scope: !496)
!496 = distinct !DILexicalBlock(scope: !486, file: !1, line: 126, column: 5)
!497 = distinct !{!497, !494, !498}
!498 = !DILocation(line: 128, column: 5, scope: !486)
!499 = !DILocation(line: 129, column: 1, scope: !486)
!500 = distinct !DISubprogram(name: "writeargv", scope: !1, file: !1, line: 317, type: !501, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!6, !7, !50}
!503 = !{!504, !505, !506, !507, !509, !511}
!504 = !DILocalVariable(name: "argv", arg: 1, scope: !500, file: !1, line: 317, type: !7)
!505 = !DILocalVariable(name: "f", arg: 2, scope: !500, file: !1, line: 317, type: !50)
!506 = !DILocalVariable(name: "status", scope: !500, file: !1, line: 319, type: !6)
!507 = !DILocalVariable(name: "arg", scope: !508, file: !1, line: 326, type: !11)
!508 = distinct !DILexicalBlock(scope: !500, file: !1, line: 325, column: 5)
!509 = !DILocalVariable(name: "c", scope: !510, file: !1, line: 330, type: !9)
!510 = distinct !DILexicalBlock(scope: !508, file: !1, line: 329, column: 9)
!511 = !DILabel(scope: !500, name: "done", file: !1, line: 355)
!512 = !DILocation(line: 0, scope: !500)
!513 = !DILocation(line: 321, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !500, file: !1, line: 321, column: 7)
!515 = !DILocation(line: 321, column: 7, scope: !500)
!516 = !DILocation(line: 324, column: 3, scope: !500)
!517 = !DILocation(line: 324, column: 10, scope: !500)
!518 = !DILocation(line: 324, column: 16, scope: !500)
!519 = !DILocation(line: 0, scope: !508)
!520 = !DILocation(line: 328, column: 7, scope: !508)
!521 = !DILocation(line: 326, column: 19, scope: !508)
!522 = !DILocation(line: 328, column: 14, scope: !508)
!523 = !DILocation(line: 328, column: 19, scope: !508)
!524 = !DILocation(line: 0, scope: !510)
!525 = !DILocation(line: 332, column: 15, scope: !526)
!526 = distinct !DILexicalBlock(scope: !510, file: !1, line: 332, column: 15)
!527 = !DILocation(line: 332, column: 31, scope: !526)
!528 = !DILocation(line: 332, column: 26, scope: !526)
!529 = !DILocation(line: 332, column: 44, scope: !526)
!530 = !DILocation(line: 332, column: 57, scope: !526)
!531 = !DILocation(line: 333, column: 24, scope: !532)
!532 = distinct !DILexicalBlock(scope: !526, file: !1, line: 333, column: 17)
!533 = !DILocation(line: 333, column: 21, scope: !532)
!534 = !DILocation(line: 333, column: 17, scope: !526)
!535 = !DILocation(line: 339, column: 29, scope: !536)
!536 = distinct !DILexicalBlock(scope: !510, file: !1, line: 339, column: 15)
!537 = !DILocation(line: 339, column: 22, scope: !536)
!538 = !DILocation(line: 339, column: 19, scope: !536)
!539 = !DILocation(line: 344, column: 14, scope: !510)
!540 = !DILocation(line: 339, column: 15, scope: !510)
!541 = distinct !{!541, !520, !542}
!542 = !DILocation(line: 345, column: 9, scope: !508)
!543 = !DILocation(line: 347, column: 18, scope: !544)
!544 = distinct !DILexicalBlock(scope: !508, file: !1, line: 347, column: 11)
!545 = !DILocation(line: 347, column: 15, scope: !544)
!546 = !DILocation(line: 352, column: 11, scope: !508)
!547 = !DILocation(line: 347, column: 11, scope: !508)
!548 = !DILocation(line: 357, column: 1, scope: !500)
!549 = distinct !DISubprogram(name: "expandargv", scope: !1, file: !1, line: 383, type: !550, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !554)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552, !553}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!554 = !{!555, !556, !557, !558, !559, !561, !562, !563, !564, !565, !566, !567}
!555 = !DILocalVariable(name: "argcp", arg: 1, scope: !549, file: !1, line: 383, type: !552)
!556 = !DILocalVariable(name: "argvp", arg: 2, scope: !549, file: !1, line: 383, type: !553)
!557 = !DILocalVariable(name: "i", scope: !549, file: !1, line: 386, type: !6)
!558 = !DILocalVariable(name: "argv_dynamic", scope: !549, file: !1, line: 388, type: !6)
!559 = !DILocalVariable(name: "filename", scope: !560, file: !1, line: 394, type: !11)
!560 = distinct !DILexicalBlock(scope: !549, file: !1, line: 392, column: 5)
!561 = !DILocalVariable(name: "f", scope: !560, file: !1, line: 396, type: !50)
!562 = !DILocalVariable(name: "pos", scope: !560, file: !1, line: 399, type: !78)
!563 = !DILocalVariable(name: "len", scope: !560, file: !1, line: 402, type: !14)
!564 = !DILocalVariable(name: "buffer", scope: !560, file: !1, line: 405, type: !8)
!565 = !DILocalVariable(name: "file_argv", scope: !560, file: !1, line: 408, type: !7)
!566 = !DILocalVariable(name: "file_argc", scope: !560, file: !1, line: 410, type: !14)
!567 = !DILabel(scope: !560, name: "error", file: !1, line: 480)
!568 = !DILocation(line: 0, scope: !549)
!569 = !DILocation(line: 0, scope: !560)
!570 = !DILocation(line: 391, column: 3, scope: !549)
!571 = !DILocation(line: 391, column: 10, scope: !549)
!572 = !DILocation(line: 391, column: 16, scope: !549)
!573 = !DILocation(line: 391, column: 14, scope: !549)
!574 = !DILocation(line: 412, column: 19, scope: !560)
!575 = !DILocation(line: 412, column: 18, scope: !560)
!576 = !DILocation(line: 413, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !560, file: !1, line: 413, column: 11)
!578 = !DILocation(line: 413, column: 23, scope: !577)
!579 = !DILocation(line: 413, column: 11, scope: !560)
!580 = distinct !{!580, !570, !581}
!581 = !DILocation(line: 483, column: 5, scope: !549)
!582 = !DILocation(line: 416, column: 18, scope: !560)
!583 = !DILocation(line: 416, column: 11, scope: !560)
!584 = !DILocation(line: 417, column: 12, scope: !585)
!585 = distinct !DILexicalBlock(scope: !560, file: !1, line: 417, column: 11)
!586 = !DILocation(line: 417, column: 11, scope: !560)
!587 = !DILocation(line: 419, column: 11, scope: !588)
!588 = distinct !DILexicalBlock(scope: !560, file: !1, line: 419, column: 11)
!589 = !DILocation(line: 419, column: 35, scope: !588)
!590 = !DILocation(line: 419, column: 11, scope: !560)
!591 = !DILocation(line: 421, column: 13, scope: !560)
!592 = !DILocation(line: 422, column: 15, scope: !593)
!593 = distinct !DILexicalBlock(scope: !560, file: !1, line: 422, column: 11)
!594 = !DILocation(line: 422, column: 11, scope: !560)
!595 = !DILocation(line: 424, column: 11, scope: !596)
!596 = distinct !DILexicalBlock(scope: !560, file: !1, line: 424, column: 11)
!597 = !DILocation(line: 424, column: 35, scope: !596)
!598 = !DILocation(line: 424, column: 11, scope: !560)
!599 = !DILocation(line: 426, column: 54, scope: !560)
!600 = !DILocation(line: 426, column: 25, scope: !560)
!601 = !DILocation(line: 427, column: 13, scope: !560)
!602 = !DILocation(line: 428, column: 15, scope: !603)
!603 = distinct !DILexicalBlock(scope: !560, file: !1, line: 428, column: 11)
!604 = !DILocation(line: 432, column: 4, scope: !603)
!605 = !DILocation(line: 432, column: 7, scope: !603)
!606 = !DILocation(line: 428, column: 11, scope: !560)
!607 = !DILocation(line: 435, column: 7, scope: !560)
!608 = !DILocation(line: 435, column: 19, scope: !560)
!609 = !DILocation(line: 439, column: 11, scope: !610)
!610 = distinct !DILexicalBlock(scope: !560, file: !1, line: 439, column: 11)
!611 = !DILocation(line: 439, column: 11, scope: !560)
!612 = !DILocation(line: 441, column: 26, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !1, line: 440, column: 2)
!614 = !DILocation(line: 441, column: 16, scope: !613)
!615 = !DILocation(line: 442, column: 17, scope: !613)
!616 = !DILocation(line: 443, column: 2, scope: !613)
!617 = !DILocation(line: 446, column: 14, scope: !610)
!618 = !DILocation(line: 0, scope: !610)
!619 = !DILocation(line: 450, column: 22, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 449, column: 2)
!621 = distinct !DILexicalBlock(scope: !560, file: !1, line: 448, column: 11)
!622 = !DILocation(line: 450, column: 13, scope: !620)
!623 = !DILocation(line: 450, column: 11, scope: !620)
!624 = !DILocation(line: 451, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !620, file: !1, line: 451, column: 8)
!626 = !DILocation(line: 451, column: 8, scope: !620)
!627 = !DILocation(line: 453, column: 36, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !1, line: 452, column: 6)
!629 = !DILocation(line: 453, column: 8, scope: !628)
!630 = !DILocation(line: 454, column: 8, scope: !628)
!631 = !DILocation(line: 455, column: 6, scope: !628)
!632 = !DILocation(line: 459, column: 7, scope: !560)
!633 = !DILocation(line: 459, column: 14, scope: !560)
!634 = !DILocation(line: 460, column: 2, scope: !560)
!635 = distinct !{!635, !632, !636}
!636 = !DILocation(line: 460, column: 4, scope: !560)
!637 = !DILocation(line: 464, column: 13, scope: !560)
!638 = !DILocation(line: 465, column: 7, scope: !560)
!639 = !DILocation(line: 465, column: 14, scope: !560)
!640 = !DILocation(line: 465, column: 31, scope: !560)
!641 = !DILocation(line: 464, column: 3, scope: !560)
!642 = !DILocation(line: 463, column: 14, scope: !560)
!643 = !DILocation(line: 466, column: 16, scope: !560)
!644 = !DILocation(line: 466, column: 23, scope: !560)
!645 = !DILocation(line: 466, column: 27, scope: !560)
!646 = !DILocation(line: 466, column: 47, scope: !560)
!647 = !DILocation(line: 466, column: 51, scope: !560)
!648 = !DILocation(line: 466, column: 40, scope: !560)
!649 = !DILocation(line: 467, column: 10, scope: !560)
!650 = !DILocation(line: 467, column: 17, scope: !560)
!651 = !DILocation(line: 467, column: 9, scope: !560)
!652 = !DILocation(line: 467, column: 22, scope: !560)
!653 = !DILocation(line: 466, column: 7, scope: !560)
!654 = !DILocation(line: 468, column: 15, scope: !560)
!655 = !DILocation(line: 468, column: 22, scope: !560)
!656 = !DILocation(line: 468, column: 27, scope: !560)
!657 = !DILocation(line: 468, column: 48, scope: !560)
!658 = !DILocation(line: 468, column: 7, scope: !560)
!659 = !DILocation(line: 471, column: 14, scope: !560)
!660 = !DILocation(line: 475, column: 7, scope: !560)
!661 = !DILocation(line: 476, column: 7, scope: !560)
!662 = !DILocation(line: 479, column: 7, scope: !560)
!663 = !DILocation(line: 480, column: 5, scope: !560)
!664 = !DILocation(line: 482, column: 7, scope: !560)
!665 = !DILocation(line: 484, column: 1, scope: !549)
!666 = distinct !DISubprogram(name: "only_whitespace", scope: !1, file: !1, line: 132, type: !197, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !667)
!667 = !{!668}
!668 = !DILocalVariable(name: "input", arg: 1, scope: !666, file: !1, line: 132, type: !11)
!669 = !DILocation(line: 0, scope: !666)
!670 = !DILocation(line: 134, column: 3, scope: !666)
!671 = !DILocation(line: 134, column: 10, scope: !666)
!672 = !DILocation(line: 134, column: 17, scope: !666)
!673 = !DILocation(line: 134, column: 24, scope: !666)
!674 = !DILocation(line: 134, column: 27, scope: !666)
!675 = !DILocation(line: 135, column: 10, scope: !666)
!676 = distinct !{!676, !670, !675}
!677 = !DILocation(line: 137, column: 18, scope: !666)
!678 = !DILocation(line: 137, column: 3, scope: !666)
