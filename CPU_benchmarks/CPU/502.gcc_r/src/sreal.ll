; ModuleID = 'sreal.bc'
source_filename = "sreal.c"
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
%struct.sreal = type { i64, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"(%lu * 2^%d)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sreal.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !18 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !32, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !33, metadata !DIExpression()), !dbg !34
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !35
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !36
  ret i32 %call, !dbg !37
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !38 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !41
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !42
  ret i32 %call, !dbg !43
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !44 {
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
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !108
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
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !114
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
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !117
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
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !126
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !135
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !142
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !148
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
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !160
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
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !180
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
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !190
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
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !202
  %conv = trunc i64 %call to i32, !dbg !203
  ret i32 %conv, !dbg !204
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !209, metadata !DIExpression()), !dbg !210
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !211
  ret i64 %call, !dbg !212
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !213 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !218, metadata !DIExpression()), !dbg !219
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !220
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
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !252
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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !263 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !269, metadata !DIExpression()), !dbg !270
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !271
  ret double %call, !dbg !272
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !273 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %base, metadata !284, metadata !DIExpression()), !dbg !285
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !286
  ret i64 %call, !dbg !287
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !288 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !294, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !295, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i32 %base, metadata !296, metadata !DIExpression()), !dbg !297
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !298
  ret i64 %call, !dbg !299
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !311, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i32 %base, metadata !313, metadata !DIExpression()), !dbg !314
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !315
  ret i64 %call, !dbg !316
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !317 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !321, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !322, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i32 %base, metadata !323, metadata !DIExpression()), !dbg !324
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !325
  ret i64 %call, !dbg !326
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !327 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !370, metadata !DIExpression()), !dbg !371
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !372
  ret i32 %call, !dbg !373
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !374 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !376, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !377, metadata !DIExpression()), !dbg !378
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !379
  ret i32 %call, !dbg !380
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !381 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !385, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !386, metadata !DIExpression()), !dbg !387
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !388
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
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !399
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
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !409
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
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !420
  ret i32 %call, !dbg !421
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !422 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !446, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !447, metadata !DIExpression()), !dbg !448
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !449
  ret i32 %call, !dbg !450
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !451 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !453, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !454, metadata !DIExpression()), !dbg !455
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !456
  ret i32 %call, !dbg !457
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !458 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !462, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !463, metadata !DIExpression()), !dbg !464
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !465
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
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !476
  ret i32 %call, !dbg !477
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_sreal(%struct._IO_FILE* %file, %struct.sreal* %x) local_unnamed_addr #4 !dbg !478 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !489, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata %struct.sreal* %x, metadata !490, metadata !DIExpression()), !dbg !491
  %sig = getelementptr inbounds %struct.sreal, %struct.sreal* %x, i64 0, i32 0, !dbg !492
  %0 = load i64, i64* %sig, align 8, !dbg !492
  %exp = getelementptr inbounds %struct.sreal, %struct.sreal* %x, i64 0, i32 1, !dbg !493
  %1 = load i32, i32* %exp, align 8, !dbg !493
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %0, i32 %1) #6, !dbg !494
  ret void, !dbg !495
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.sreal* @sreal_init(%struct.sreal* %r, i64 %sig, i32 %exp) local_unnamed_addr #4 !dbg !496 {
entry:
  call void @llvm.dbg.value(metadata %struct.sreal* %r, metadata !500, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i64 %sig, metadata !501, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %exp, metadata !502, metadata !DIExpression()), !dbg !503
  %sig1 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !504
  store i64 %sig, i64* %sig1, align 8, !dbg !505
  %exp2 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 1, !dbg !506
  store i32 %exp, i32* %exp2, align 8, !dbg !507
  tail call fastcc void @normalize(%struct.sreal* %r) #7, !dbg !508
  ret %struct.sreal* %r, !dbg !509
}

; Function Attrs: nounwind uwtable
define internal fastcc void @normalize(%struct.sreal* %x) unnamed_addr #4 !dbg !510 {
entry:
  call void @llvm.dbg.value(metadata %struct.sreal* %x, metadata !514, metadata !DIExpression()), !dbg !520
  %sig = getelementptr inbounds %struct.sreal, %struct.sreal* %x, i64 0, i32 0, !dbg !521
  %0 = load i64, i64* %sig, align 8, !dbg !521
  %cmp = icmp eq i64 %0, 0, !dbg !522
  br i1 %cmp, label %if.then, label %if.else, !dbg !523

if.then:                                          ; preds = %entry
  %exp = getelementptr inbounds %struct.sreal, %struct.sreal* %x, i64 0, i32 1, !dbg !524
  store i32 -536870911, i32* %exp, align 8, !dbg !526
  br label %if.end46, !dbg !527

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i64 %0, 2147483648, !dbg !528
  br i1 %cmp2, label %do.body.preheader, label %if.else13, !dbg !529

do.body.preheader:                                ; preds = %if.else
  %exp5 = getelementptr inbounds %struct.sreal, %struct.sreal* %x, i64 0, i32 1, !dbg !530
  %exp5.promoted = load i32, i32* %exp5, align 8, !dbg !533
  br label %do.body, !dbg !534

do.body:                                          ; preds = %do.body.preheader, %do.body
  %dec2 = phi i32 [ %exp5.promoted, %do.body.preheader ], [ %dec, %do.body ], !dbg !535
  %shl1 = phi i64 [ %0, %do.body.preheader ], [ %shl, %do.body ], !dbg !535
  %shl = shl i64 %shl1, 1, !dbg !535
  %dec = add nsw i32 %dec2, -1, !dbg !533
  %cmp7 = icmp ult i64 %shl, 2147483648, !dbg !536
  br i1 %cmp7, label %do.body, label %do.end, !dbg !537, !llvm.loop !538

do.end:                                           ; preds = %do.body
  %dec2.lcssa = phi i32 [ %dec2, %do.body ], !dbg !535
  %shl.lcssa = phi i64 [ %shl, %do.body ], !dbg !535
  %dec.lcssa = phi i32 [ %dec, %do.body ], !dbg !533
  store i64 %shl.lcssa, i64* %sig, align 8, !dbg !535
  store i32 %dec.lcssa, i32* %exp5, align 8, !dbg !533
  %cmp9 = icmp slt i32 %dec2.lcssa, -536870910, !dbg !540
  br i1 %cmp9, label %if.then10, label %if.end46, !dbg !542

if.then10:                                        ; preds = %do.end
  store i32 -536870911, i32* %exp5, align 8, !dbg !543
  store i64 0, i64* %sig, align 8, !dbg !545
  br label %if.end46, !dbg !546

if.else13:                                        ; preds = %if.else
  %cmp15 = icmp ugt i64 %0, 4294967295, !dbg !547
  br i1 %cmp15, label %do.body17.preheader, label %if.end46, !dbg !548

do.body17.preheader:                              ; preds = %if.else13
  %exp20 = getelementptr inbounds %struct.sreal, %struct.sreal* %x, i64 0, i32 1, !dbg !549
  %exp20.promoted = load i32, i32* %exp20, align 8, !dbg !551
  br label %do.body17, !dbg !552

do.body17:                                        ; preds = %do.body17.preheader, %do.body17
  %inc3 = phi i32 [ %exp20.promoted, %do.body17.preheader ], [ %inc, %do.body17 ], !dbg !553
  %1 = phi i64 [ %0, %do.body17.preheader ], [ %shr, %do.body17 ], !dbg !554
  call void @llvm.dbg.value(metadata i32 undef, metadata !515, metadata !DIExpression()), !dbg !553
  %shr = lshr i64 %1, 1, !dbg !555
  %inc = add nsw i32 %inc3, 1, !dbg !551
  %cmp23 = icmp ugt i64 %1, 8589934591, !dbg !556
  br i1 %cmp23, label %do.body17, label %do.end25, !dbg !557, !llvm.loop !558

do.end25:                                         ; preds = %do.body17
  %inc3.lcssa = phi i32 [ %inc3, %do.body17 ], !dbg !553
  %.lcssa = phi i64 [ %1, %do.body17 ], !dbg !554
  %shr.lcssa = phi i64 [ %shr, %do.body17 ], !dbg !555
  %inc.lcssa = phi i32 [ %inc, %do.body17 ], !dbg !551
  store i32 %inc.lcssa, i32* %exp20, align 8, !dbg !551
  %conv = and i64 %.lcssa, 1, !dbg !560
  call void @llvm.dbg.value(metadata i64 %conv, metadata !515, metadata !DIExpression()), !dbg !553
  %add = add nuw i64 %shr.lcssa, %conv, !dbg !561
  store i64 %add, i64* %sig, align 8, !dbg !561
  %cmp29 = icmp ugt i64 %add, 4294967295, !dbg !562
  br i1 %cmp29, label %if.then31, label %if.end36, !dbg !564

if.then31:                                        ; preds = %do.end25
  %shr33 = lshr i64 %add, 1, !dbg !565
  store i64 %shr33, i64* %sig, align 8, !dbg !565
  %inc35 = add nsw i32 %inc3.lcssa, 2, !dbg !567
  store i32 %inc35, i32* %exp20, align 8, !dbg !567
  br label %if.end36, !dbg !568

if.end36:                                         ; preds = %if.then31, %do.end25
  %2 = phi i32 [ %inc35, %if.then31 ], [ %inc.lcssa, %do.end25 ], !dbg !569
  %cmp38 = icmp sgt i32 %2, 536870911, !dbg !571
  br i1 %cmp38, label %if.then40, label %if.end46, !dbg !572

if.then40:                                        ; preds = %if.end36
  store i32 536870911, i32* %exp20, align 8, !dbg !573
  store i64 4294967295, i64* %sig, align 8, !dbg !575
  br label %if.end46, !dbg !576

if.end46:                                         ; preds = %if.then10, %do.end, %if.end36, %if.then40, %if.else13, %if.then
  ret void, !dbg !577
}

; Function Attrs: nounwind uwtable
define dso_local i64 @sreal_to_int(%struct.sreal* %r) local_unnamed_addr #4 !dbg !578 {
entry:
  call void @llvm.dbg.value(metadata %struct.sreal* %r, metadata !582, metadata !DIExpression()), !dbg !583
  %exp = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 1, !dbg !584
  %0 = load i32, i32* %exp, align 8, !dbg !584
  %cmp = icmp slt i32 %0, -31, !dbg !586
  br i1 %cmp, label %return, label %if.end, !dbg !587

if.end:                                           ; preds = %entry
  %cmp2 = icmp sgt i32 %0, 31, !dbg !588
  br i1 %cmp2, label %return, label %if.end4, !dbg !590

if.end4:                                          ; preds = %if.end
  %cmp6 = icmp sgt i32 %0, 0, !dbg !591
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !593

if.then7:                                         ; preds = %if.end4
  %sig = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !594
  %1 = load i64, i64* %sig, align 8, !dbg !594
  %sh_prom = zext i32 %0 to i64, !dbg !595
  %shl = shl i64 %1, %sh_prom, !dbg !595
  br label %return, !dbg !596

if.end9:                                          ; preds = %if.end4
  %cmp11 = icmp slt i32 %0, 0, !dbg !597
  %sig13 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !583
  %2 = load i64, i64* %sig13, align 8, !dbg !583
  br i1 %cmp11, label %if.then12, label %return, !dbg !599

if.then12:                                        ; preds = %if.end9
  %sub = sub nsw i32 0, %0, !dbg !600
  %sh_prom15 = zext i32 %sub to i64, !dbg !601
  %shr = lshr i64 %2, %sh_prom15, !dbg !601
  br label %return, !dbg !602

return:                                           ; preds = %if.end9, %if.end, %entry, %if.then12, %if.then7
  %retval.0 = phi i64 [ %shl, %if.then7 ], [ %shr, %if.then12 ], [ 0, %entry ], [ 9223372036854775807, %if.end ], [ %2, %if.end9 ], !dbg !583
  ret i64 %retval.0, !dbg !603
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sreal_compare(%struct.sreal* %a, %struct.sreal* %b) local_unnamed_addr #4 !dbg !604 {
entry:
  call void @llvm.dbg.value(metadata %struct.sreal* %a, metadata !608, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata %struct.sreal* %b, metadata !609, metadata !DIExpression()), !dbg !610
  %exp = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 1, !dbg !611
  %0 = load i32, i32* %exp, align 8, !dbg !611
  %exp1 = getelementptr inbounds %struct.sreal, %struct.sreal* %b, i64 0, i32 1, !dbg !613
  %1 = load i32, i32* %exp1, align 8, !dbg !613
  %cmp = icmp sgt i32 %0, %1, !dbg !614
  br i1 %cmp, label %return, label %if.end, !dbg !615

if.end:                                           ; preds = %entry
  %cmp4 = icmp slt i32 %0, %1, !dbg !616
  br i1 %cmp4, label %return, label %if.end6, !dbg !618

if.end6:                                          ; preds = %if.end
  %sig = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 0, !dbg !619
  %2 = load i64, i64* %sig, align 8, !dbg !619
  %sig7 = getelementptr inbounds %struct.sreal, %struct.sreal* %b, i64 0, i32 0, !dbg !621
  %3 = load i64, i64* %sig7, align 8, !dbg !621
  %cmp8 = icmp ugt i64 %2, %3, !dbg !622
  br i1 %cmp8, label %return, label %if.end10, !dbg !623

if.end10:                                         ; preds = %if.end6
  %cmp13 = icmp ult i64 %2, %3, !dbg !624
  %. = sext i1 %cmp13 to i32, !dbg !610
  br label %return, !dbg !610

return:                                           ; preds = %if.end10, %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ -1, %if.end ], [ 1, %if.end6 ], [ %., %if.end10 ], !dbg !610
  ret i32 %retval.0, !dbg !626
}

; Function Attrs: nounwind uwtable
define dso_local %struct.sreal* @sreal_add(%struct.sreal* %r, %struct.sreal* %a, %struct.sreal* %b) local_unnamed_addr #4 !dbg !627 {
entry:
  %tmp = alloca %struct.sreal, align 8
  call void @llvm.dbg.value(metadata %struct.sreal* %r, metadata !631, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata %struct.sreal* %a, metadata !632, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata %struct.sreal* %b, metadata !633, metadata !DIExpression()), !dbg !640
  %0 = bitcast %struct.sreal* %tmp to i8*, !dbg !641
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !641
  %call = tail call i32 @sreal_compare(%struct.sreal* %a, %struct.sreal* %b) #7, !dbg !642
  %cmp = icmp slt i32 %call, 0, !dbg !643
  %spec.select = select i1 %cmp, %struct.sreal* %a, %struct.sreal* %b, !dbg !644
  %spec.select1 = select i1 %cmp, %struct.sreal* %b, %struct.sreal* %a, !dbg !644
  call void @llvm.dbg.value(metadata %struct.sreal* %spec.select1, metadata !632, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata %struct.sreal* %spec.select, metadata !633, metadata !DIExpression()), !dbg !640
  %exp = getelementptr inbounds %struct.sreal, %struct.sreal* %spec.select1, i64 0, i32 1, !dbg !645
  %1 = load i32, i32* %exp, align 8, !dbg !645
  %exp1 = getelementptr inbounds %struct.sreal, %struct.sreal* %spec.select, i64 0, i32 1, !dbg !646
  %2 = load i32, i32* %exp1, align 8, !dbg !646
  %sub = sub nsw i32 %1, %2, !dbg !647
  call void @llvm.dbg.value(metadata i32 %sub, metadata !634, metadata !DIExpression()), !dbg !640
  %exp3 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 1, !dbg !648
  store i32 %1, i32* %exp3, align 8, !dbg !649
  %cmp4 = icmp sgt i32 %sub, 32, !dbg !650
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !652

if.then5:                                         ; preds = %entry
  %sig = getelementptr inbounds %struct.sreal, %struct.sreal* %spec.select1, i64 0, i32 0, !dbg !653
  %3 = load i64, i64* %sig, align 8, !dbg !653
  %sig6 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !655
  store i64 %3, i64* %sig6, align 8, !dbg !656
  br label %cleanup, !dbg !657

if.end7:                                          ; preds = %entry
  %cmp8 = icmp eq i32 %sub, 0, !dbg !658
  br i1 %cmp8, label %if.end10, label %if.else, !dbg !660

if.else:                                          ; preds = %if.end7
  call void @llvm.dbg.value(metadata %struct.sreal* %tmp, metadata !635, metadata !DIExpression(DW_OP_deref)), !dbg !640
  call fastcc void @copy(%struct.sreal* nonnull %tmp, %struct.sreal* %spec.select) #7, !dbg !661
  call void @llvm.dbg.value(metadata %struct.sreal* %tmp, metadata !635, metadata !DIExpression(DW_OP_deref)), !dbg !640
  call fastcc void @shift_right(%struct.sreal* nonnull %tmp, i32 %sub) #7, !dbg !663
  call void @llvm.dbg.value(metadata %struct.sreal* %tmp, metadata !636, metadata !DIExpression()), !dbg !640
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %if.else
  %bb.0 = phi %struct.sreal* [ %tmp, %if.else ], [ %spec.select, %if.end7 ], !dbg !664
  call void @llvm.dbg.value(metadata %struct.sreal* %bb.0, metadata !636, metadata !DIExpression()), !dbg !640
  %sig11 = getelementptr inbounds %struct.sreal, %struct.sreal* %spec.select1, i64 0, i32 0, !dbg !665
  %4 = load i64, i64* %sig11, align 8, !dbg !665
  %sig12 = getelementptr inbounds %struct.sreal, %struct.sreal* %bb.0, i64 0, i32 0, !dbg !666
  %5 = load i64, i64* %sig12, align 8, !dbg !666
  %add = add i64 %4, %5, !dbg !667
  %sig13 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !668
  store i64 %add, i64* %sig13, align 8, !dbg !669
  call fastcc void @normalize(%struct.sreal* %r) #7, !dbg !670
  br label %cleanup, !dbg !671

cleanup:                                          ; preds = %if.end10, %if.then5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !672
  ret %struct.sreal* %r, !dbg !672
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @copy(%struct.sreal* %r, %struct.sreal* %a) unnamed_addr #0 !dbg !673 {
entry:
  call void @llvm.dbg.value(metadata %struct.sreal* %r, metadata !677, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata %struct.sreal* %a, metadata !678, metadata !DIExpression()), !dbg !679
  %sig = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 0, !dbg !680
  %0 = load i64, i64* %sig, align 8, !dbg !680
  %sig1 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !681
  store i64 %0, i64* %sig1, align 8, !dbg !682
  %exp = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 1, !dbg !683
  %1 = load i32, i32* %exp, align 8, !dbg !683
  %exp2 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 1, !dbg !684
  store i32 %1, i32* %exp2, align 8, !dbg !685
  ret void, !dbg !686
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @shift_right(%struct.sreal* %x, i32 %s) unnamed_addr #0 !dbg !687 {
entry:
  call void @llvm.dbg.value(metadata %struct.sreal* %x, metadata !691, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i32 %s, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp = icmp sgt i32 %s, 0, !dbg !694
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !694

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !694
  br label %cond.end, !dbg !694

cond.end:                                         ; preds = %entry, %cond.true
  %cmp1 = icmp slt i32 %s, 33, !dbg !695
  br i1 %cmp1, label %cond.end4, label %cond.true2, !dbg !695

cond.true2:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !695
  br label %cond.end4, !dbg !695

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %exp = getelementptr inbounds %struct.sreal, %struct.sreal* %x, i64 0, i32 1, !dbg !696
  %0 = load i32, i32* %exp, align 8, !dbg !696
  %add = add nsw i32 %0, %s, !dbg !696
  %cmp6 = icmp slt i32 %add, 536870912, !dbg !696
  br i1 %cmp6, label %cond.end9, label %cond.true7, !dbg !696

cond.true7:                                       ; preds = %cond.end4
  tail call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !696
  %.pre = load i32, i32* %exp, align 8, !dbg !697
  %.pre1 = add nsw i32 %.pre, %s, !dbg !697
  br label %cond.end9, !dbg !696

cond.end9:                                        ; preds = %cond.end4, %cond.true7
  %add12.pre-phi = phi i32 [ %add, %cond.end4 ], [ %.pre1, %cond.true7 ], !dbg !697
  store i32 %add12.pre-phi, i32* %exp, align 8, !dbg !697
  %sub = add nsw i32 %s, -1, !dbg !698
  %sh_prom = zext i32 %sub to i64, !dbg !699
  %shl = shl i64 1, %sh_prom, !dbg !699
  %sig = getelementptr inbounds %struct.sreal, %struct.sreal* %x, i64 0, i32 0, !dbg !700
  %1 = load i64, i64* %sig, align 8, !dbg !701
  %add13 = add i64 %1, %shl, !dbg !701
  %sh_prom15 = zext i32 %s to i64, !dbg !702
  %shr = lshr i64 %add13, %sh_prom15, !dbg !702
  store i64 %shr, i64* %sig, align 8, !dbg !702
  ret void, !dbg !703
}

; Function Attrs: nounwind uwtable
define dso_local %struct.sreal* @sreal_sub(%struct.sreal* %r, %struct.sreal* %a, %struct.sreal* %b) local_unnamed_addr #4 !dbg !704 {
entry:
  %tmp = alloca %struct.sreal, align 8
  call void @llvm.dbg.value(metadata %struct.sreal* %r, metadata !706, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata %struct.sreal* %a, metadata !707, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata %struct.sreal* %b, metadata !708, metadata !DIExpression()), !dbg !712
  %0 = bitcast %struct.sreal* %tmp to i8*, !dbg !713
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !713
  %call = tail call i32 @sreal_compare(%struct.sreal* %a, %struct.sreal* %b) #7, !dbg !714
  %cmp = icmp sgt i32 %call, -1, !dbg !714
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !714

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !714
  br label %cond.end, !dbg !714

cond.end:                                         ; preds = %entry, %cond.true
  %exp = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 1, !dbg !715
  %1 = load i32, i32* %exp, align 8, !dbg !715
  %exp1 = getelementptr inbounds %struct.sreal, %struct.sreal* %b, i64 0, i32 1, !dbg !716
  %2 = load i32, i32* %exp1, align 8, !dbg !716
  %sub = sub nsw i32 %1, %2, !dbg !717
  call void @llvm.dbg.value(metadata i32 %sub, metadata !709, metadata !DIExpression()), !dbg !712
  %exp3 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 1, !dbg !718
  store i32 %1, i32* %exp3, align 8, !dbg !719
  %cmp4 = icmp sgt i32 %sub, 32, !dbg !720
  br i1 %cmp4, label %if.then, label %if.end, !dbg !722

if.then:                                          ; preds = %cond.end
  %sig = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 0, !dbg !723
  %3 = load i64, i64* %sig, align 8, !dbg !723
  %sig5 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !725
  store i64 %3, i64* %sig5, align 8, !dbg !726
  br label %cleanup, !dbg !727

if.end:                                           ; preds = %cond.end
  %cmp6 = icmp eq i32 %sub, 0, !dbg !728
  br i1 %cmp6, label %if.end8, label %if.else, !dbg !730

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.sreal* %tmp, metadata !710, metadata !DIExpression(DW_OP_deref)), !dbg !712
  call fastcc void @copy(%struct.sreal* nonnull %tmp, %struct.sreal* %b) #7, !dbg !731
  call void @llvm.dbg.value(metadata %struct.sreal* %tmp, metadata !710, metadata !DIExpression(DW_OP_deref)), !dbg !712
  call fastcc void @shift_right(%struct.sreal* nonnull %tmp, i32 %sub) #7, !dbg !733
  call void @llvm.dbg.value(metadata %struct.sreal* %tmp, metadata !711, metadata !DIExpression()), !dbg !712
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.else
  %bb.0 = phi %struct.sreal* [ %tmp, %if.else ], [ %b, %if.end ], !dbg !734
  call void @llvm.dbg.value(metadata %struct.sreal* %bb.0, metadata !711, metadata !DIExpression()), !dbg !712
  %sig9 = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 0, !dbg !735
  %4 = load i64, i64* %sig9, align 8, !dbg !735
  %sig10 = getelementptr inbounds %struct.sreal, %struct.sreal* %bb.0, i64 0, i32 0, !dbg !736
  %5 = load i64, i64* %sig10, align 8, !dbg !736
  %sub11 = sub i64 %4, %5, !dbg !737
  %sig12 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !738
  store i64 %sub11, i64* %sig12, align 8, !dbg !739
  call fastcc void @normalize(%struct.sreal* %r) #7, !dbg !740
  br label %cleanup, !dbg !741

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !742
  ret %struct.sreal* %r, !dbg !742
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.sreal* @sreal_mul(%struct.sreal* %r, %struct.sreal* %a, %struct.sreal* %b) local_unnamed_addr #4 !dbg !743 {
entry:
  call void @llvm.dbg.value(metadata %struct.sreal* %r, metadata !745, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata %struct.sreal* %a, metadata !746, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata %struct.sreal* %b, metadata !747, metadata !DIExpression()), !dbg !748
  %sig = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 0, !dbg !749
  %0 = load i64, i64* %sig, align 8, !dbg !749
  %cmp = icmp ult i64 %0, 2147483648, !dbg !751
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !752

lor.lhs.false:                                    ; preds = %entry
  %sig1 = getelementptr inbounds %struct.sreal, %struct.sreal* %b, i64 0, i32 0, !dbg !753
  %1 = load i64, i64* %sig1, align 8, !dbg !753
  %cmp2 = icmp ult i64 %1, 2147483648, !dbg !754
  br i1 %cmp2, label %if.then, label %if.else, !dbg !755

if.then:                                          ; preds = %lor.lhs.false, %entry
  %sig3 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !756
  store i64 0, i64* %sig3, align 8, !dbg !758
  %exp = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 1, !dbg !759
  store i32 -536870911, i32* %exp, align 8, !dbg !760
  br label %if.end, !dbg !761

if.else:                                          ; preds = %lor.lhs.false
  %mul = mul i64 %0, %1, !dbg !762
  %sig6 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !764
  store i64 %mul, i64* %sig6, align 8, !dbg !765
  %exp7 = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 1, !dbg !766
  %2 = load i32, i32* %exp7, align 8, !dbg !766
  %exp8 = getelementptr inbounds %struct.sreal, %struct.sreal* %b, i64 0, i32 1, !dbg !767
  %3 = load i32, i32* %exp8, align 8, !dbg !767
  %add = add nsw i32 %2, %3, !dbg !768
  %exp9 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 1, !dbg !769
  store i32 %add, i32* %exp9, align 8, !dbg !770
  tail call fastcc void @normalize(%struct.sreal* %r) #7, !dbg !771
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.sreal* %r, !dbg !772
}

; Function Attrs: nounwind uwtable
define dso_local %struct.sreal* @sreal_div(%struct.sreal* %r, %struct.sreal* %a, %struct.sreal* %b) local_unnamed_addr #4 !dbg !773 {
entry:
  call void @llvm.dbg.value(metadata %struct.sreal* %r, metadata !775, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata %struct.sreal* %a, metadata !776, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata %struct.sreal* %b, metadata !777, metadata !DIExpression()), !dbg !778
  %sig = getelementptr inbounds %struct.sreal, %struct.sreal* %b, i64 0, i32 0, !dbg !779
  %0 = load i64, i64* %sig, align 8, !dbg !779
  %cmp = icmp eq i64 %0, 0, !dbg !779
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !779

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 537, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !779
  %.pre = load i64, i64* %sig, align 8, !dbg !780
  br label %cond.end, !dbg !779

cond.end:                                         ; preds = %entry, %cond.true
  %1 = phi i64 [ %0, %entry ], [ %.pre, %cond.true ], !dbg !780
  %sig1 = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 0, !dbg !781
  %2 = load i64, i64* %sig1, align 8, !dbg !781
  %shl = shl i64 %2, 32, !dbg !782
  %div = udiv i64 %shl, %1, !dbg !783
  %sig3 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 0, !dbg !784
  store i64 %div, i64* %sig3, align 8, !dbg !785
  %exp = getelementptr inbounds %struct.sreal, %struct.sreal* %a, i64 0, i32 1, !dbg !786
  %3 = load i32, i32* %exp, align 8, !dbg !786
  %exp4 = getelementptr inbounds %struct.sreal, %struct.sreal* %b, i64 0, i32 1, !dbg !787
  %4 = load i32, i32* %exp4, align 8, !dbg !787
  %sub = sub nsw i32 %3, %4, !dbg !788
  %sub5 = add nsw i32 %sub, -32, !dbg !789
  %exp6 = getelementptr inbounds %struct.sreal, %struct.sreal* %r, i64 0, i32 1, !dbg !790
  store i32 %sub5, i32* %exp6, align 8, !dbg !791
  tail call fastcc void @normalize(%struct.sreal* %r) #7, !dbg !792
  ret %struct.sreal* %r, !dbg !793
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "sreal.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!18 = distinct !DISubprogram(name: "vprintf", scope: !19, file: !19, line: 39, type: !20, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!20 = !DISubroutineType(types: !21)
!21 = !{!6, !22, !23}
!22 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !25)
!25 = !{!26, !28, !29, !30}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !24, file: !1, baseType: !27, size: 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !24, file: !1, baseType: !27, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !24, file: !1, baseType: !10, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !24, file: !1, baseType: !10, size: 64, offset: 128)
!31 = !{!32, !33}
!32 = !DILocalVariable(name: "__fmt", arg: 1, scope: !18, file: !19, line: 39, type: !22)
!33 = !DILocalVariable(name: "__arg", arg: 2, scope: !18, file: !19, line: 39, type: !23)
!34 = !DILocation(line: 0, scope: !18)
!35 = !DILocation(line: 41, column: 20, scope: !18)
!36 = !DILocation(line: 41, column: 10, scope: !18)
!37 = !DILocation(line: 41, column: 3, scope: !18)
!38 = distinct !DISubprogram(name: "getchar", scope: !19, file: !19, line: 47, type: !39, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{!6}
!41 = !DILocation(line: 49, column: 16, scope: !38)
!42 = !DILocation(line: 49, column: 10, scope: !38)
!43 = !DILocation(line: 49, column: 3, scope: !38)
!44 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !19, file: !19, line: 56, type: !45, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!45 = !DISubroutineType(types: !46)
!46 = !{!6, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !49, line: 7, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !68, !70, !71, !72, !76, !78, !80, !84, !87, !89, !92, !95, !96, !97, !100, !101}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !50, file: !51, line: 51, baseType: !6, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !50, file: !51, line: 54, baseType: !8, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !50, file: !51, line: 55, baseType: !8, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !50, file: !51, line: 56, baseType: !8, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !50, file: !51, line: 57, baseType: !8, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !50, file: !51, line: 58, baseType: !8, size: 64, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !50, file: !51, line: 59, baseType: !8, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !50, file: !51, line: 60, baseType: !8, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !50, file: !51, line: 61, baseType: !8, size: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !50, file: !51, line: 64, baseType: !8, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !50, file: !51, line: 65, baseType: !8, size: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !50, file: !51, line: 66, baseType: !8, size: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !50, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !51, line: 36, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !50, file: !51, line: 70, baseType: !69, size: 64, offset: 832)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !50, file: !51, line: 72, baseType: !6, size: 32, offset: 896)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !50, file: !51, line: 73, baseType: !6, size: 32, offset: 928)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !50, file: !51, line: 74, baseType: !73, size: 64, offset: 960)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !74, line: 152, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!75 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !50, file: !51, line: 77, baseType: !77, size: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !50, file: !51, line: 78, baseType: !79, size: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !50, file: !51, line: 79, baseType: !81, size: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !50, file: !51, line: 81, baseType: !85, size: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !51, line: 43, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !50, file: !51, line: 89, baseType: !88, size: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !74, line: 153, baseType: !75)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !50, file: !51, line: 91, baseType: !90, size: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !51, line: 37, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !50, file: !51, line: 92, baseType: !93, size: 64, offset: 1280)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !51, line: 38, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !50, file: !51, line: 93, baseType: !69, size: 64, offset: 1344)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !50, file: !51, line: 94, baseType: !10, size: 64, offset: 1408)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !50, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 46, baseType: !13)
!99 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !50, file: !51, line: 96, baseType: !6, size: 32, offset: 1536)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !50, file: !51, line: 98, baseType: !102, size: 160, offset: 1568)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 20)
!105 = !{!106}
!106 = !DILocalVariable(name: "__fp", arg: 1, scope: !44, file: !19, line: 56, type: !47)
!107 = !DILocation(line: 0, scope: !44)
!108 = !DILocation(line: 58, column: 10, scope: !44)
!109 = !DILocation(line: 58, column: 3, scope: !44)
!110 = distinct !DISubprogram(name: "getc_unlocked", scope: !19, file: !19, line: 66, type: !45, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!111 = !{!112}
!112 = !DILocalVariable(name: "__fp", arg: 1, scope: !110, file: !19, line: 66, type: !47)
!113 = !DILocation(line: 0, scope: !110)
!114 = !DILocation(line: 68, column: 10, scope: !110)
!115 = !DILocation(line: 68, column: 3, scope: !110)
!116 = distinct !DISubprogram(name: "getchar_unlocked", scope: !19, file: !19, line: 73, type: !39, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!117 = !DILocation(line: 75, column: 10, scope: !116)
!118 = !DILocation(line: 75, column: 3, scope: !116)
!119 = distinct !DISubprogram(name: "putchar", scope: !19, file: !19, line: 82, type: !120, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!6, !6}
!122 = !{!123}
!123 = !DILocalVariable(name: "__c", arg: 1, scope: !119, file: !19, line: 82, type: !6)
!124 = !DILocation(line: 0, scope: !119)
!125 = !DILocation(line: 84, column: 21, scope: !119)
!126 = !DILocation(line: 84, column: 10, scope: !119)
!127 = !DILocation(line: 84, column: 3, scope: !119)
!128 = distinct !DISubprogram(name: "fputc_unlocked", scope: !19, file: !19, line: 91, type: !129, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{!6, !6, !47}
!131 = !{!132, !133}
!132 = !DILocalVariable(name: "__c", arg: 1, scope: !128, file: !19, line: 91, type: !6)
!133 = !DILocalVariable(name: "__stream", arg: 2, scope: !128, file: !19, line: 91, type: !47)
!134 = !DILocation(line: 0, scope: !128)
!135 = !DILocation(line: 93, column: 10, scope: !128)
!136 = !DILocation(line: 93, column: 3, scope: !128)
!137 = distinct !DISubprogram(name: "putc_unlocked", scope: !19, file: !19, line: 101, type: !129, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "__c", arg: 1, scope: !137, file: !19, line: 101, type: !6)
!140 = !DILocalVariable(name: "__stream", arg: 2, scope: !137, file: !19, line: 101, type: !47)
!141 = !DILocation(line: 0, scope: !137)
!142 = !DILocation(line: 103, column: 10, scope: !137)
!143 = !DILocation(line: 103, column: 3, scope: !137)
!144 = distinct !DISubprogram(name: "putchar_unlocked", scope: !19, file: !19, line: 108, type: !120, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146}
!146 = !DILocalVariable(name: "__c", arg: 1, scope: !144, file: !19, line: 108, type: !6)
!147 = !DILocation(line: 0, scope: !144)
!148 = !DILocation(line: 110, column: 10, scope: !144)
!149 = !DILocation(line: 110, column: 3, scope: !144)
!150 = distinct !DISubprogram(name: "getline", scope: !19, file: !19, line: 118, type: !151, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !7, !154, !47}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !74, line: 193, baseType: !75)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!155 = !{!156, !157, !158}
!156 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !150, file: !19, line: 118, type: !7)
!157 = !DILocalVariable(name: "__n", arg: 2, scope: !150, file: !19, line: 118, type: !154)
!158 = !DILocalVariable(name: "__stream", arg: 3, scope: !150, file: !19, line: 118, type: !47)
!159 = !DILocation(line: 0, scope: !150)
!160 = !DILocation(line: 120, column: 10, scope: !150)
!161 = !DILocation(line: 120, column: 3, scope: !150)
!162 = distinct !DISubprogram(name: "feof_unlocked", scope: !19, file: !19, line: 128, type: !45, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!163 = !{!164}
!164 = !DILocalVariable(name: "__stream", arg: 1, scope: !162, file: !19, line: 128, type: !47)
!165 = !DILocation(line: 0, scope: !162)
!166 = !DILocation(line: 130, column: 10, scope: !162)
!167 = !DILocation(line: 130, column: 3, scope: !162)
!168 = distinct !DISubprogram(name: "ferror_unlocked", scope: !19, file: !19, line: 135, type: !45, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "__stream", arg: 1, scope: !168, file: !19, line: 135, type: !47)
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
!207 = !{!75, !11}
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
!225 = !{!10, !226, !226, !98, !98, !228}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !196, line: 808, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!6, !226, !226}
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!233 = !DILocalVariable(name: "__key", arg: 1, scope: !222, file: !223, line: 20, type: !226)
!234 = !DILocalVariable(name: "__base", arg: 2, scope: !222, file: !223, line: 20, type: !226)
!235 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !222, file: !223, line: 20, type: !98)
!236 = !DILocalVariable(name: "__size", arg: 4, scope: !222, file: !223, line: 20, type: !98)
!237 = !DILocalVariable(name: "__compar", arg: 5, scope: !222, file: !223, line: 21, type: !228)
!238 = !DILocalVariable(name: "__l", scope: !222, file: !223, line: 23, type: !98)
!239 = !DILocalVariable(name: "__u", scope: !222, file: !223, line: 23, type: !98)
!240 = !DILocalVariable(name: "__idx", scope: !222, file: !223, line: 23, type: !98)
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
!276 = !{!277, !22, !280, !6}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !278, line: 101, baseType: !279)
!278 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !74, line: 72, baseType: !75)
!280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !7)
!281 = !{!282, !283, !284}
!282 = !DILocalVariable(name: "nptr", arg: 1, scope: !273, file: !274, line: 324, type: !22)
!283 = !DILocalVariable(name: "endptr", arg: 2, scope: !273, file: !274, line: 324, type: !280)
!284 = !DILocalVariable(name: "base", arg: 3, scope: !273, file: !274, line: 324, type: !6)
!285 = !DILocation(line: 0, scope: !273)
!286 = !DILocation(line: 327, column: 10, scope: !273)
!287 = !DILocation(line: 327, column: 3, scope: !273)
!288 = distinct !DISubprogram(name: "strtoumax", scope: !274, file: !274, line: 336, type: !289, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !293)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !22, !280, !6}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !278, line: 102, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !74, line: 73, baseType: !13)
!293 = !{!294, !295, !296}
!294 = !DILocalVariable(name: "nptr", arg: 1, scope: !288, file: !274, line: 336, type: !22)
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
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !74, line: 145, baseType: !13)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !332, file: !333, line: 53, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !74, line: 148, baseType: !13)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !332, file: !333, line: 61, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !74, line: 151, baseType: !13)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !332, file: !333, line: 62, baseType: !342, size: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !74, line: 150, baseType: !27)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !332, file: !333, line: 64, baseType: !344, size: 32, offset: 224)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !74, line: 146, baseType: !27)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !332, file: !333, line: 65, baseType: !346, size: 32, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !74, line: 147, baseType: !27)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !332, file: !333, line: 67, baseType: !6, size: 32, offset: 288)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !332, file: !333, line: 69, baseType: !336, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !332, file: !333, line: 74, baseType: !73, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !332, file: !333, line: 78, baseType: !351, size: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !74, line: 174, baseType: !75)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !332, file: !333, line: 80, baseType: !353, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !74, line: 179, baseType: !75)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !332, file: !333, line: 91, baseType: !355, size: 128, offset: 576)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !356, line: 10, size: 128, elements: !357)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!357 = !{!358, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !355, file: !356, line: 12, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !74, line: 160, baseType: !75)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !355, file: !356, line: 16, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !74, line: 196, baseType: !75)
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
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !74, line: 149, baseType: !13)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !426, file: !333, line: 124, baseType: !340, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !426, file: !333, line: 125, baseType: !342, size: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !426, file: !333, line: 132, baseType: !344, size: 32, offset: 224)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !426, file: !333, line: 133, baseType: !346, size: 32, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !426, file: !333, line: 135, baseType: !6, size: 32, offset: 288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !426, file: !333, line: 136, baseType: !336, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !426, file: !333, line: 137, baseType: !73, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !426, file: !333, line: 143, baseType: !351, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !426, file: !333, line: 144, baseType: !440, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !74, line: 180, baseType: !75)
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
!478 = distinct !DISubprogram(name: "dump_sreal", scope: !1, file: !1, line: 65, type: !479, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !488)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !47, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "sreal", file: !483, line: 53, baseType: !484)
!483 = !DIFile(filename: "./sreal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sreal", file: !483, line: 44, size: 128, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !484, file: !483, line: 50, baseType: !13, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !484, file: !483, line: 52, baseType: !6, size: 32, offset: 64)
!488 = !{!489, !490}
!489 = !DILocalVariable(name: "file", arg: 1, scope: !478, file: !1, line: 65, type: !47)
!490 = !DILocalVariable(name: "x", arg: 2, scope: !478, file: !1, line: 65, type: !481)
!491 = !DILocation(line: 0, scope: !478)
!492 = !DILocation(line: 72, column: 66, scope: !478)
!493 = !DILocation(line: 72, column: 74, scope: !478)
!494 = !DILocation(line: 72, column: 3, scope: !478)
!495 = !DILocation(line: 74, column: 1, scope: !478)
!496 = distinct !DISubprogram(name: "sreal_init", scope: !1, file: !1, line: 270, type: !497, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!481, !481, !13, !6}
!499 = !{!500, !501, !502}
!500 = !DILocalVariable(name: "r", arg: 1, scope: !496, file: !1, line: 270, type: !481)
!501 = !DILocalVariable(name: "sig", arg: 2, scope: !496, file: !1, line: 270, type: !13)
!502 = !DILocalVariable(name: "exp", arg: 3, scope: !496, file: !1, line: 270, type: !6)
!503 = !DILocation(line: 0, scope: !496)
!504 = !DILocation(line: 277, column: 6, scope: !496)
!505 = !DILocation(line: 277, column: 10, scope: !496)
!506 = !DILocation(line: 278, column: 6, scope: !496)
!507 = !DILocation(line: 278, column: 10, scope: !496)
!508 = !DILocation(line: 280, column: 3, scope: !496)
!509 = !DILocation(line: 281, column: 3, scope: !496)
!510 = distinct !DISubprogram(name: "normalize", scope: !1, file: !1, line: 134, type: !511, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !481}
!513 = !{!514, !515}
!514 = !DILocalVariable(name: "x", arg: 1, scope: !510, file: !1, line: 134, type: !481)
!515 = !DILocalVariable(name: "last_bit", scope: !516, file: !1, line: 240, type: !6)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 239, column: 5)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 238, column: 12)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 222, column: 12)
!519 = distinct !DILexicalBlock(scope: !510, file: !1, line: 218, column: 7)
!520 = !DILocation(line: 0, scope: !510)
!521 = !DILocation(line: 218, column: 10, scope: !519)
!522 = !DILocation(line: 218, column: 14, scope: !519)
!523 = !DILocation(line: 218, column: 7, scope: !510)
!524 = !DILocation(line: 220, column: 10, scope: !525)
!525 = distinct !DILexicalBlock(scope: !519, file: !1, line: 219, column: 5)
!526 = !DILocation(line: 220, column: 14, scope: !525)
!527 = !DILocation(line: 221, column: 5, scope: !525)
!528 = !DILocation(line: 222, column: 19, scope: !518)
!529 = !DILocation(line: 222, column: 12, scope: !519)
!530 = !DILocation(line: 0, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 225, column: 2)
!532 = distinct !DILexicalBlock(scope: !518, file: !1, line: 223, column: 5)
!533 = !DILocation(line: 227, column: 10, scope: !531)
!534 = !DILocation(line: 224, column: 7, scope: !532)
!535 = !DILocation(line: 226, column: 11, scope: !531)
!536 = !DILocation(line: 229, column: 21, scope: !532)
!537 = !DILocation(line: 228, column: 2, scope: !531)
!538 = distinct !{!538, !534, !539}
!539 = !DILocation(line: 229, column: 36, scope: !532)
!540 = !DILocation(line: 232, column: 18, scope: !541)
!541 = distinct !DILexicalBlock(scope: !532, file: !1, line: 232, column: 11)
!542 = !DILocation(line: 232, column: 11, scope: !532)
!543 = !DILocation(line: 234, column: 11, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !1, line: 233, column: 2)
!545 = !DILocation(line: 235, column: 11, scope: !544)
!546 = !DILocation(line: 236, column: 2, scope: !544)
!547 = !DILocation(line: 238, column: 19, scope: !517)
!548 = !DILocation(line: 238, column: 12, scope: !518)
!549 = !DILocation(line: 0, scope: !550)
!550 = distinct !DILexicalBlock(scope: !516, file: !1, line: 242, column: 2)
!551 = !DILocation(line: 245, column: 10, scope: !550)
!552 = !DILocation(line: 241, column: 7, scope: !516)
!553 = !DILocation(line: 0, scope: !516)
!554 = !DILocation(line: 243, column: 18, scope: !550)
!555 = !DILocation(line: 244, column: 11, scope: !550)
!556 = !DILocation(line: 247, column: 21, scope: !516)
!557 = !DILocation(line: 246, column: 2, scope: !550)
!558 = distinct !{!558, !552, !559}
!559 = !DILocation(line: 247, column: 36, scope: !516)
!560 = !DILocation(line: 243, column: 15, scope: !550)
!561 = !DILocation(line: 250, column: 14, scope: !516)
!562 = !DILocation(line: 251, column: 18, scope: !563)
!563 = distinct !DILexicalBlock(scope: !516, file: !1, line: 251, column: 11)
!564 = !DILocation(line: 251, column: 11, scope: !516)
!565 = !DILocation(line: 253, column: 11, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !1, line: 252, column: 2)
!567 = !DILocation(line: 254, column: 10, scope: !566)
!568 = !DILocation(line: 255, column: 2, scope: !566)
!569 = !DILocation(line: 258, column: 14, scope: !570)
!570 = distinct !DILexicalBlock(scope: !516, file: !1, line: 258, column: 11)
!571 = !DILocation(line: 258, column: 18, scope: !570)
!572 = !DILocation(line: 258, column: 11, scope: !516)
!573 = !DILocation(line: 260, column: 11, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !1, line: 259, column: 2)
!575 = !DILocation(line: 261, column: 11, scope: !574)
!576 = !DILocation(line: 262, column: 2, scope: !574)
!577 = !DILocation(line: 265, column: 1, scope: !510)
!578 = distinct !DISubprogram(name: "sreal_to_int", scope: !1, file: !1, line: 287, type: !579, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{!75, !481}
!581 = !{!582}
!582 = !DILocalVariable(name: "r", arg: 1, scope: !578, file: !1, line: 287, type: !481)
!583 = !DILocation(line: 0, scope: !578)
!584 = !DILocation(line: 296, column: 10, scope: !585)
!585 = distinct !DILexicalBlock(scope: !578, file: !1, line: 296, column: 7)
!586 = !DILocation(line: 296, column: 14, scope: !585)
!587 = !DILocation(line: 296, column: 7, scope: !578)
!588 = !DILocation(line: 298, column: 14, scope: !589)
!589 = distinct !DILexicalBlock(scope: !578, file: !1, line: 298, column: 7)
!590 = !DILocation(line: 298, column: 7, scope: !578)
!591 = !DILocation(line: 300, column: 14, scope: !592)
!592 = distinct !DILexicalBlock(scope: !578, file: !1, line: 300, column: 7)
!593 = !DILocation(line: 300, column: 7, scope: !578)
!594 = !DILocation(line: 301, column: 15, scope: !592)
!595 = !DILocation(line: 301, column: 19, scope: !592)
!596 = !DILocation(line: 301, column: 5, scope: !592)
!597 = !DILocation(line: 302, column: 14, scope: !598)
!598 = distinct !DILexicalBlock(scope: !578, file: !1, line: 302, column: 7)
!599 = !DILocation(line: 302, column: 7, scope: !578)
!600 = !DILocation(line: 303, column: 22, scope: !598)
!601 = !DILocation(line: 303, column: 19, scope: !598)
!602 = !DILocation(line: 303, column: 5, scope: !598)
!603 = !DILocation(line: 306, column: 1, scope: !578)
!604 = distinct !DISubprogram(name: "sreal_compare", scope: !1, file: !1, line: 311, type: !605, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{!6, !481, !481}
!607 = !{!608, !609}
!608 = !DILocalVariable(name: "a", arg: 1, scope: !604, file: !1, line: 311, type: !481)
!609 = !DILocalVariable(name: "b", arg: 2, scope: !604, file: !1, line: 311, type: !481)
!610 = !DILocation(line: 0, scope: !604)
!611 = !DILocation(line: 313, column: 10, scope: !612)
!612 = distinct !DILexicalBlock(scope: !604, file: !1, line: 313, column: 7)
!613 = !DILocation(line: 313, column: 19, scope: !612)
!614 = !DILocation(line: 313, column: 14, scope: !612)
!615 = !DILocation(line: 313, column: 7, scope: !604)
!616 = !DILocation(line: 315, column: 14, scope: !617)
!617 = distinct !DILexicalBlock(scope: !604, file: !1, line: 315, column: 7)
!618 = !DILocation(line: 315, column: 7, scope: !604)
!619 = !DILocation(line: 327, column: 10, scope: !620)
!620 = distinct !DILexicalBlock(scope: !604, file: !1, line: 327, column: 7)
!621 = !DILocation(line: 327, column: 19, scope: !620)
!622 = !DILocation(line: 327, column: 14, scope: !620)
!623 = !DILocation(line: 327, column: 7, scope: !604)
!624 = !DILocation(line: 329, column: 14, scope: !625)
!625 = distinct !DILexicalBlock(scope: !604, file: !1, line: 329, column: 7)
!626 = !DILocation(line: 333, column: 1, scope: !604)
!627 = distinct !DISubprogram(name: "sreal_add", scope: !1, file: !1, line: 338, type: !628, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{!481, !481, !481, !481}
!630 = !{!631, !632, !633, !634, !635, !636, !637}
!631 = !DILocalVariable(name: "r", arg: 1, scope: !627, file: !1, line: 338, type: !481)
!632 = !DILocalVariable(name: "a", arg: 2, scope: !627, file: !1, line: 338, type: !481)
!633 = !DILocalVariable(name: "b", arg: 3, scope: !627, file: !1, line: 338, type: !481)
!634 = !DILocalVariable(name: "dexp", scope: !627, file: !1, line: 340, type: !6)
!635 = !DILocalVariable(name: "tmp", scope: !627, file: !1, line: 341, type: !482)
!636 = !DILocalVariable(name: "bb", scope: !627, file: !1, line: 342, type: !481)
!637 = !DILocalVariable(name: "swap", scope: !638, file: !1, line: 346, type: !481)
!638 = distinct !DILexicalBlock(scope: !639, file: !1, line: 345, column: 5)
!639 = distinct !DILexicalBlock(scope: !627, file: !1, line: 344, column: 7)
!640 = !DILocation(line: 0, scope: !627)
!641 = !DILocation(line: 341, column: 3, scope: !627)
!642 = !DILocation(line: 344, column: 7, scope: !639)
!643 = !DILocation(line: 344, column: 28, scope: !639)
!644 = !DILocation(line: 344, column: 7, scope: !627)
!645 = !DILocation(line: 352, column: 13, scope: !627)
!646 = !DILocation(line: 352, column: 22, scope: !627)
!647 = !DILocation(line: 352, column: 17, scope: !627)
!648 = !DILocation(line: 353, column: 6, scope: !627)
!649 = !DILocation(line: 353, column: 10, scope: !627)
!650 = !DILocation(line: 354, column: 12, scope: !651)
!651 = distinct !DILexicalBlock(scope: !627, file: !1, line: 354, column: 7)
!652 = !DILocation(line: 354, column: 7, scope: !627)
!653 = !DILocation(line: 360, column: 19, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !1, line: 355, column: 5)
!655 = !DILocation(line: 360, column: 10, scope: !654)
!656 = !DILocation(line: 360, column: 14, scope: !654)
!657 = !DILocation(line: 362, column: 7, scope: !654)
!658 = !DILocation(line: 365, column: 12, scope: !659)
!659 = distinct !DILexicalBlock(scope: !627, file: !1, line: 365, column: 7)
!660 = !DILocation(line: 365, column: 7, scope: !627)
!661 = !DILocation(line: 369, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !1, line: 368, column: 5)
!663 = !DILocation(line: 370, column: 7, scope: !662)
!664 = !DILocation(line: 0, scope: !659)
!665 = !DILocation(line: 383, column: 15, scope: !627)
!666 = !DILocation(line: 383, column: 25, scope: !627)
!667 = !DILocation(line: 383, column: 19, scope: !627)
!668 = !DILocation(line: 383, column: 6, scope: !627)
!669 = !DILocation(line: 383, column: 10, scope: !627)
!670 = !DILocation(line: 385, column: 3, scope: !627)
!671 = !DILocation(line: 386, column: 3, scope: !627)
!672 = !DILocation(line: 387, column: 1, scope: !627)
!673 = distinct !DISubprogram(name: "copy", scope: !1, file: !1, line: 79, type: !674, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !676)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !481, !481}
!676 = !{!677, !678}
!677 = !DILocalVariable(name: "r", arg: 1, scope: !673, file: !1, line: 79, type: !481)
!678 = !DILocalVariable(name: "a", arg: 2, scope: !673, file: !1, line: 79, type: !481)
!679 = !DILocation(line: 0, scope: !673)
!680 = !DILocation(line: 85, column: 15, scope: !673)
!681 = !DILocation(line: 85, column: 6, scope: !673)
!682 = !DILocation(line: 85, column: 10, scope: !673)
!683 = !DILocation(line: 87, column: 15, scope: !673)
!684 = !DILocation(line: 87, column: 6, scope: !673)
!685 = !DILocation(line: 87, column: 10, scope: !673)
!686 = !DILocation(line: 88, column: 1, scope: !673)
!687 = distinct !DISubprogram(name: "shift_right", scope: !1, file: !1, line: 94, type: !688, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !481, !6}
!690 = !{!691, !692}
!691 = !DILocalVariable(name: "x", arg: 1, scope: !687, file: !1, line: 94, type: !481)
!692 = !DILocalVariable(name: "s", arg: 2, scope: !687, file: !1, line: 94, type: !6)
!693 = !DILocation(line: 0, scope: !687)
!694 = !DILocation(line: 96, column: 3, scope: !687)
!695 = !DILocation(line: 97, column: 3, scope: !687)
!696 = !DILocation(line: 101, column: 3, scope: !687)
!697 = !DILocation(line: 103, column: 10, scope: !687)
!698 = !DILocation(line: 126, column: 28, scope: !687)
!699 = !DILocation(line: 126, column: 22, scope: !687)
!700 = !DILocation(line: 126, column: 6, scope: !687)
!701 = !DILocation(line: 126, column: 10, scope: !687)
!702 = !DILocation(line: 127, column: 10, scope: !687)
!703 = !DILocation(line: 129, column: 1, scope: !687)
!704 = distinct !DISubprogram(name: "sreal_sub", scope: !1, file: !1, line: 392, type: !628, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !705)
!705 = !{!706, !707, !708, !709, !710, !711}
!706 = !DILocalVariable(name: "r", arg: 1, scope: !704, file: !1, line: 392, type: !481)
!707 = !DILocalVariable(name: "a", arg: 2, scope: !704, file: !1, line: 392, type: !481)
!708 = !DILocalVariable(name: "b", arg: 3, scope: !704, file: !1, line: 392, type: !481)
!709 = !DILocalVariable(name: "dexp", scope: !704, file: !1, line: 394, type: !6)
!710 = !DILocalVariable(name: "tmp", scope: !704, file: !1, line: 395, type: !482)
!711 = !DILocalVariable(name: "bb", scope: !704, file: !1, line: 396, type: !481)
!712 = !DILocation(line: 0, scope: !704)
!713 = !DILocation(line: 395, column: 3, scope: !704)
!714 = !DILocation(line: 398, column: 3, scope: !704)
!715 = !DILocation(line: 400, column: 13, scope: !704)
!716 = !DILocation(line: 400, column: 22, scope: !704)
!717 = !DILocation(line: 400, column: 17, scope: !704)
!718 = !DILocation(line: 401, column: 6, scope: !704)
!719 = !DILocation(line: 401, column: 10, scope: !704)
!720 = !DILocation(line: 402, column: 12, scope: !721)
!721 = distinct !DILexicalBlock(scope: !704, file: !1, line: 402, column: 7)
!722 = !DILocation(line: 402, column: 7, scope: !704)
!723 = !DILocation(line: 408, column: 19, scope: !724)
!724 = distinct !DILexicalBlock(scope: !721, file: !1, line: 403, column: 5)
!725 = !DILocation(line: 408, column: 10, scope: !724)
!726 = !DILocation(line: 408, column: 14, scope: !724)
!727 = !DILocation(line: 410, column: 7, scope: !724)
!728 = !DILocation(line: 412, column: 12, scope: !729)
!729 = distinct !DILexicalBlock(scope: !704, file: !1, line: 412, column: 7)
!730 = !DILocation(line: 412, column: 7, scope: !704)
!731 = !DILocation(line: 416, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !1, line: 415, column: 5)
!733 = !DILocation(line: 417, column: 7, scope: !732)
!734 = !DILocation(line: 0, scope: !729)
!735 = !DILocation(line: 433, column: 15, scope: !704)
!736 = !DILocation(line: 433, column: 25, scope: !704)
!737 = !DILocation(line: 433, column: 19, scope: !704)
!738 = !DILocation(line: 433, column: 6, scope: !704)
!739 = !DILocation(line: 433, column: 10, scope: !704)
!740 = !DILocation(line: 435, column: 3, scope: !704)
!741 = !DILocation(line: 436, column: 3, scope: !704)
!742 = !DILocation(line: 437, column: 1, scope: !704)
!743 = distinct !DISubprogram(name: "sreal_mul", scope: !1, file: !1, line: 442, type: !628, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !744)
!744 = !{!745, !746, !747}
!745 = !DILocalVariable(name: "r", arg: 1, scope: !743, file: !1, line: 442, type: !481)
!746 = !DILocalVariable(name: "a", arg: 2, scope: !743, file: !1, line: 442, type: !481)
!747 = !DILocalVariable(name: "b", arg: 3, scope: !743, file: !1, line: 442, type: !481)
!748 = !DILocation(line: 0, scope: !743)
!749 = !DILocation(line: 480, column: 10, scope: !750)
!750 = distinct !DILexicalBlock(scope: !743, file: !1, line: 480, column: 7)
!751 = !DILocation(line: 480, column: 14, scope: !750)
!752 = !DILocation(line: 480, column: 30, scope: !750)
!753 = !DILocation(line: 480, column: 36, scope: !750)
!754 = !DILocation(line: 480, column: 40, scope: !750)
!755 = !DILocation(line: 480, column: 7, scope: !743)
!756 = !DILocation(line: 482, column: 10, scope: !757)
!757 = distinct !DILexicalBlock(scope: !750, file: !1, line: 481, column: 5)
!758 = !DILocation(line: 482, column: 14, scope: !757)
!759 = !DILocation(line: 483, column: 10, scope: !757)
!760 = !DILocation(line: 483, column: 14, scope: !757)
!761 = !DILocation(line: 484, column: 5, scope: !757)
!762 = !DILocation(line: 487, column: 23, scope: !763)
!763 = distinct !DILexicalBlock(scope: !750, file: !1, line: 486, column: 5)
!764 = !DILocation(line: 487, column: 10, scope: !763)
!765 = !DILocation(line: 487, column: 14, scope: !763)
!766 = !DILocation(line: 488, column: 19, scope: !763)
!767 = !DILocation(line: 488, column: 28, scope: !763)
!768 = !DILocation(line: 488, column: 23, scope: !763)
!769 = !DILocation(line: 488, column: 10, scope: !763)
!770 = !DILocation(line: 488, column: 14, scope: !763)
!771 = !DILocation(line: 489, column: 7, scope: !763)
!772 = !DILocation(line: 492, column: 3, scope: !743)
!773 = distinct !DISubprogram(name: "sreal_div", scope: !1, file: !1, line: 498, type: !628, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !774)
!774 = !{!775, !776, !777}
!775 = !DILocalVariable(name: "r", arg: 1, scope: !773, file: !1, line: 498, type: !481)
!776 = !DILocalVariable(name: "a", arg: 2, scope: !773, file: !1, line: 498, type: !481)
!777 = !DILocalVariable(name: "b", arg: 3, scope: !773, file: !1, line: 498, type: !481)
!778 = !DILocation(line: 0, scope: !773)
!779 = !DILocation(line: 537, column: 3, scope: !773)
!780 = !DILocation(line: 538, column: 45, scope: !773)
!781 = !DILocation(line: 538, column: 16, scope: !773)
!782 = !DILocation(line: 538, column: 20, scope: !773)
!783 = !DILocation(line: 538, column: 40, scope: !773)
!784 = !DILocation(line: 538, column: 6, scope: !773)
!785 = !DILocation(line: 538, column: 10, scope: !773)
!786 = !DILocation(line: 539, column: 15, scope: !773)
!787 = !DILocation(line: 539, column: 24, scope: !773)
!788 = !DILocation(line: 539, column: 19, scope: !773)
!789 = !DILocation(line: 539, column: 28, scope: !773)
!790 = !DILocation(line: 539, column: 6, scope: !773)
!791 = !DILocation(line: 539, column: 10, scope: !773)
!792 = !DILocation(line: 540, column: 3, scope: !773)
!793 = !DILocation(line: 542, column: 3, scope: !773)
