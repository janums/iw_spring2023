; ModuleID = 'spaces.bc'
source_filename = "spaces.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@spaces.buf = internal unnamed_addr global i8* null, align 8, !dbg !0
@spaces.maxsize = internal unnamed_addr global i32 0, align 4, !dbg !17

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !26 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !41, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !42, metadata !DIExpression()), !dbg !43
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !44
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !45
  ret i32 %call, !dbg !46
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !47 {
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
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !167, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64* %__n, metadata !168, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !169, metadata !DIExpression()), !dbg !170
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !171
  ret i64 %call, !dbg !172
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !175, metadata !DIExpression()), !dbg !176
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !177
  %0 = load i32, i32* %_flags, align 8, !dbg !177
  %and = lshr i32 %0, 4, !dbg !177
  %and.lobit = and i32 %and, 1, !dbg !177
  ret i32 %and.lobit, !dbg !178
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !179 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !181, metadata !DIExpression()), !dbg !182
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !183
  %0 = load i32, i32* %_flags, align 8, !dbg !183
  %and = lshr i32 %0, 5, !dbg !183
  %and.lobit = and i32 %and, 1, !dbg !183
  ret i32 %and.lobit, !dbg !184
}

; Function Attrs: nounwind uwtable
define dso_local i8* @spaces(i32 %count) local_unnamed_addr #3 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata i32 %count, metadata !20, metadata !DIExpression()), !dbg !185
  %0 = load i32, i32* @spaces.maxsize, align 4, !dbg !186
  %cmp = icmp slt i32 %0, %count, !dbg !188
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge, !dbg !189

entry.if.end8_crit_edge:                          ; preds = %entry
  %.pre2 = sext i32 %count to i64, !dbg !190
  br label %if.end8, !dbg !189

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @spaces.buf, align 8, !dbg !191
  %tobool = icmp eq i8* %1, null, !dbg !191
  br i1 %tobool, label %if.end, label %if.then1, !dbg !194

if.then1:                                         ; preds = %if.then
  tail call void @free(i8* nonnull %1) #5, !dbg !195
  br label %if.end, !dbg !197

if.end:                                           ; preds = %if.then, %if.then1
  %add = add nsw i32 %count, 1, !dbg !198
  %conv = sext i32 %add to i64, !dbg !199
  %call = tail call i8* @malloc(i64 %conv) #5, !dbg !200
  store i8* %call, i8** @spaces.buf, align 8, !dbg !201
  %cmp2 = icmp eq i8* %call, null, !dbg !202
  br i1 %cmp2, label %cleanup, label %if.end5, !dbg !204

if.end5:                                          ; preds = %if.end
  %idx.ext = sext i32 %count to i64, !dbg !205
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext, !dbg !205
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !21, metadata !DIExpression()), !dbg !185
  br label %for.cond, !dbg !207

for.cond:                                         ; preds = %for.body, %if.end5
  %2 = phi i8* [ %call, %if.end5 ], [ %.pre, %for.body ], !dbg !208
  %t.0 = phi i8* [ %add.ptr, %if.end5 ], [ %incdec.ptr, %for.body ], !dbg !210
  call void @llvm.dbg.value(metadata i8* %t.0, metadata !21, metadata !DIExpression()), !dbg !185
  %cmp6 = icmp eq i8* %t.0, %2, !dbg !211
  br i1 %cmp6, label %for.end, label %for.body, !dbg !212

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %t.0, i64 -1, !dbg !213
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !21, metadata !DIExpression()), !dbg !185
  store i8 32, i8* %incdec.ptr, align 1, !dbg !215
  %.pre = load i8*, i8** @spaces.buf, align 8, !dbg !208
  br label %for.cond, !dbg !216, !llvm.loop !217

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i8* [ %2, %for.cond ], !dbg !208
  store i32 %count, i32* @spaces.maxsize, align 4, !dbg !219
  %arrayidx = getelementptr inbounds i8, i8* %.lcssa, i64 %idx.ext, !dbg !220
  store i8 0, i8* %arrayidx, align 1, !dbg !221
  %.pre1 = load i32, i32* @spaces.maxsize, align 4, !dbg !222
  br label %if.end8, !dbg !223

if.end8:                                          ; preds = %entry.if.end8_crit_edge, %for.end
  %idx.ext11.pre-phi = phi i64 [ %.pre2, %entry.if.end8_crit_edge ], [ %idx.ext, %for.end ], !dbg !190
  %3 = phi i32 [ %0, %entry.if.end8_crit_edge ], [ %.pre1, %for.end ], !dbg !222
  %4 = load i8*, i8** @spaces.buf, align 8, !dbg !224
  %idx.ext9 = sext i32 %3 to i64, !dbg !225
  %add.ptr10 = getelementptr inbounds i8, i8* %4, i64 %idx.ext9, !dbg !225
  %idx.neg = sub nsw i64 0, %idx.ext11.pre-phi, !dbg !190
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr10, i64 %idx.neg, !dbg !190
  br label %cleanup, !dbg !226

cleanup:                                          ; preds = %if.end, %if.end8
  %retval.0 = phi i8* [ %add.ptr12, %if.end8 ], [ null, %if.end ], !dbg !185
  ret i8* %retval.0, !dbg !227
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buf", scope: !2, file: !3, line: 51, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "spaces", scope: !3, file: !3, line: 48, type: !4, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !19)
!3 = !DIFile(filename: "spaces.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !12, globals: !16, nameTableKind: None)
!11 = !{}
!12 = !{!13, !14, !15, !6}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!16 = !{!0, !17}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "maxsize", scope: !2, file: !3, line: 52, type: !9, isLocal: true, isDefinition: true)
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "count", arg: 1, scope: !2, file: !3, line: 48, type: !9)
!21 = !DILocalVariable(name: "t", scope: !2, file: !3, line: 50, type: !15)
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!26 = distinct !DISubprogram(name: "vprintf", scope: !27, file: !27, line: 39, type: !28, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !40)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!28 = !DISubroutineType(types: !29)
!29 = !{!9, !30, !31}
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !33)
!33 = !{!34, !36, !37, !39}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !32, file: !3, baseType: !35, size: 32)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !32, file: !3, baseType: !35, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !32, file: !3, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !32, file: !3, baseType: !38, size: 64, offset: 128)
!40 = !{!41, !42}
!41 = !DILocalVariable(name: "__fmt", arg: 1, scope: !26, file: !27, line: 39, type: !30)
!42 = !DILocalVariable(name: "__arg", arg: 2, scope: !26, file: !27, line: 39, type: !31)
!43 = !DILocation(line: 0, scope: !26)
!44 = !DILocation(line: 41, column: 20, scope: !26)
!45 = !DILocation(line: 41, column: 10, scope: !26)
!46 = !DILocation(line: 41, column: 3, scope: !26)
!47 = distinct !DISubprogram(name: "getchar", scope: !27, file: !27, line: 47, type: !48, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !11)
!48 = !DISubroutineType(types: !49)
!49 = !{!9}
!50 = !DILocation(line: 49, column: 16, scope: !47)
!51 = !DILocation(line: 49, column: 10, scope: !47)
!52 = !DILocation(line: 49, column: 3, scope: !47)
!53 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !27, file: !27, line: 56, type: !54, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !115)
!54 = !DISubroutineType(types: !55)
!55 = !{!9, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !58, line: 7, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 49, size: 1728, elements: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !77, !79, !80, !81, !85, !87, !89, !93, !96, !98, !101, !104, !105, !106, !110, !111}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !59, file: !60, line: 51, baseType: !9, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !59, file: !60, line: 54, baseType: !15, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !59, file: !60, line: 55, baseType: !15, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !59, file: !60, line: 56, baseType: !15, size: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !59, file: !60, line: 57, baseType: !15, size: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !59, file: !60, line: 58, baseType: !15, size: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !59, file: !60, line: 59, baseType: !15, size: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !59, file: !60, line: 60, baseType: !15, size: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !59, file: !60, line: 61, baseType: !15, size: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !59, file: !60, line: 64, baseType: !15, size: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !59, file: !60, line: 65, baseType: !15, size: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !59, file: !60, line: 66, baseType: !15, size: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !59, file: !60, line: 68, baseType: !75, size: 64, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !60, line: 36, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !59, file: !60, line: 70, baseType: !78, size: 64, offset: 832)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !59, file: !60, line: 72, baseType: !9, size: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !59, file: !60, line: 73, baseType: !9, size: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !59, file: !60, line: 74, baseType: !82, size: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !83, line: 152, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !59, file: !60, line: 77, baseType: !86, size: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !59, file: !60, line: 78, baseType: !88, size: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !59, file: !60, line: 79, baseType: !90, size: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !91)
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
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !59, file: !60, line: 94, baseType: !38, size: 64, offset: 1408)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !59, file: !60, line: 95, baseType: !107, size: 64, offset: 1472)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 46, baseType: !109)
!108 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!109 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !59, file: !60, line: 96, baseType: !9, size: 32, offset: 1536)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !59, file: !60, line: 98, baseType: !112, size: 160, offset: 1568)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 20)
!115 = !{!116}
!116 = !DILocalVariable(name: "__fp", arg: 1, scope: !53, file: !27, line: 56, type: !56)
!117 = !DILocation(line: 0, scope: !53)
!118 = !DILocation(line: 58, column: 10, scope: !53)
!119 = !DILocation(line: 58, column: 3, scope: !53)
!120 = distinct !DISubprogram(name: "getc_unlocked", scope: !27, file: !27, line: 66, type: !54, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !121)
!121 = !{!122}
!122 = !DILocalVariable(name: "__fp", arg: 1, scope: !120, file: !27, line: 66, type: !56)
!123 = !DILocation(line: 0, scope: !120)
!124 = !DILocation(line: 68, column: 10, scope: !120)
!125 = !DILocation(line: 68, column: 3, scope: !120)
!126 = distinct !DISubprogram(name: "getchar_unlocked", scope: !27, file: !27, line: 73, type: !48, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !11)
!127 = !DILocation(line: 75, column: 10, scope: !126)
!128 = !DILocation(line: 75, column: 3, scope: !126)
!129 = distinct !DISubprogram(name: "putchar", scope: !27, file: !27, line: 82, type: !130, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{!9, !9}
!132 = !{!133}
!133 = !DILocalVariable(name: "__c", arg: 1, scope: !129, file: !27, line: 82, type: !9)
!134 = !DILocation(line: 0, scope: !129)
!135 = !DILocation(line: 84, column: 21, scope: !129)
!136 = !DILocation(line: 84, column: 10, scope: !129)
!137 = !DILocation(line: 84, column: 3, scope: !129)
!138 = distinct !DISubprogram(name: "fputc_unlocked", scope: !27, file: !27, line: 91, type: !139, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!9, !9, !56}
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "__c", arg: 1, scope: !138, file: !27, line: 91, type: !9)
!143 = !DILocalVariable(name: "__stream", arg: 2, scope: !138, file: !27, line: 91, type: !56)
!144 = !DILocation(line: 0, scope: !138)
!145 = !DILocation(line: 93, column: 10, scope: !138)
!146 = !DILocation(line: 93, column: 3, scope: !138)
!147 = distinct !DISubprogram(name: "putc_unlocked", scope: !27, file: !27, line: 101, type: !139, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !148)
!148 = !{!149, !150}
!149 = !DILocalVariable(name: "__c", arg: 1, scope: !147, file: !27, line: 101, type: !9)
!150 = !DILocalVariable(name: "__stream", arg: 2, scope: !147, file: !27, line: 101, type: !56)
!151 = !DILocation(line: 0, scope: !147)
!152 = !DILocation(line: 103, column: 10, scope: !147)
!153 = !DILocation(line: 103, column: 3, scope: !147)
!154 = distinct !DISubprogram(name: "putchar_unlocked", scope: !27, file: !27, line: 108, type: !130, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !155)
!155 = !{!156}
!156 = !DILocalVariable(name: "__c", arg: 1, scope: !154, file: !27, line: 108, type: !9)
!157 = !DILocation(line: 0, scope: !154)
!158 = !DILocation(line: 110, column: 10, scope: !154)
!159 = !DILocation(line: 110, column: 3, scope: !154)
!160 = distinct !DISubprogram(name: "getline", scope: !27, file: !27, line: 118, type: !161, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !166)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !164, !165, !56}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !83, line: 193, baseType: !84)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!166 = !{!167, !168, !169}
!167 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !160, file: !27, line: 118, type: !164)
!168 = !DILocalVariable(name: "__n", arg: 2, scope: !160, file: !27, line: 118, type: !165)
!169 = !DILocalVariable(name: "__stream", arg: 3, scope: !160, file: !27, line: 118, type: !56)
!170 = !DILocation(line: 0, scope: !160)
!171 = !DILocation(line: 120, column: 10, scope: !160)
!172 = !DILocation(line: 120, column: 3, scope: !160)
!173 = distinct !DISubprogram(name: "feof_unlocked", scope: !27, file: !27, line: 128, type: !54, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !174)
!174 = !{!175}
!175 = !DILocalVariable(name: "__stream", arg: 1, scope: !173, file: !27, line: 128, type: !56)
!176 = !DILocation(line: 0, scope: !173)
!177 = !DILocation(line: 130, column: 10, scope: !173)
!178 = !DILocation(line: 130, column: 3, scope: !173)
!179 = distinct !DISubprogram(name: "ferror_unlocked", scope: !27, file: !27, line: 135, type: !54, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !180)
!180 = !{!181}
!181 = !DILocalVariable(name: "__stream", arg: 1, scope: !179, file: !27, line: 135, type: !56)
!182 = !DILocation(line: 0, scope: !179)
!183 = !DILocation(line: 137, column: 10, scope: !179)
!184 = !DILocation(line: 137, column: 3, scope: !179)
!185 = !DILocation(line: 0, scope: !2)
!186 = !DILocation(line: 54, column: 15, scope: !187)
!187 = distinct !DILexicalBlock(scope: !2, file: !3, line: 54, column: 7)
!188 = !DILocation(line: 54, column: 13, scope: !187)
!189 = !DILocation(line: 54, column: 7, scope: !2)
!190 = !DILocation(line: 70, column: 40, scope: !2)
!191 = !DILocation(line: 56, column: 11, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 56, column: 11)
!193 = distinct !DILexicalBlock(scope: !187, file: !3, line: 55, column: 5)
!194 = !DILocation(line: 56, column: 11, scope: !193)
!195 = !DILocation(line: 58, column: 4, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !3, line: 57, column: 2)
!197 = !DILocation(line: 59, column: 2, scope: !196)
!198 = !DILocation(line: 60, column: 36, scope: !193)
!199 = !DILocation(line: 60, column: 30, scope: !193)
!200 = !DILocation(line: 60, column: 22, scope: !193)
!201 = !DILocation(line: 60, column: 11, scope: !193)
!202 = !DILocation(line: 61, column: 15, scope: !203)
!203 = distinct !DILexicalBlock(scope: !193, file: !3, line: 61, column: 11)
!204 = !DILocation(line: 61, column: 11, scope: !193)
!205 = !DILocation(line: 63, column: 20, scope: !206)
!206 = distinct !DILexicalBlock(scope: !193, file: !3, line: 63, column: 7)
!207 = !DILocation(line: 63, column: 12, scope: !206)
!208 = !DILocation(line: 63, column: 35, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !3, line: 63, column: 7)
!210 = !DILocation(line: 0, scope: !206)
!211 = !DILocation(line: 63, column: 32, scope: !209)
!212 = !DILocation(line: 63, column: 7, scope: !206)
!213 = !DILocation(line: 65, column: 5, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !3, line: 64, column: 2)
!215 = !DILocation(line: 65, column: 9, scope: !214)
!216 = !DILocation(line: 63, column: 7, scope: !209)
!217 = distinct !{!217, !212, !218}
!218 = !DILocation(line: 66, column: 2, scope: !206)
!219 = !DILocation(line: 67, column: 15, scope: !193)
!220 = !DILocation(line: 68, column: 7, scope: !193)
!221 = !DILocation(line: 68, column: 18, scope: !193)
!222 = !DILocation(line: 70, column: 32, scope: !2)
!223 = !DILocation(line: 69, column: 5, scope: !193)
!224 = !DILocation(line: 70, column: 26, scope: !2)
!225 = !DILocation(line: 70, column: 30, scope: !2)
!226 = !DILocation(line: 70, column: 3, scope: !2)
!227 = !DILocation(line: 71, column: 1, scope: !2)
