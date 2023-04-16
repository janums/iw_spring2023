; ModuleID = 'xatexit.bc'
source_filename = "xatexit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.xatexit = type { %struct.xatexit*, i32, [32 x void ()*] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@_xexit_cleanup = external dso_local local_unnamed_addr global void ()*, align 8
@xatexit_head = internal unnamed_addr global %struct.xatexit* @xatexit_first, align 8, !dbg !0
@xatexit_first = internal global %struct.xatexit zeroinitializer, align 8, !dbg !23

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !46, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !49
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !50
  ret i32 %call, !dbg !51
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !52 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !55
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !56
  ret i32 %call, !dbg !57
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !58 {
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

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !126 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !128, metadata !DIExpression()), !dbg !129
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !130
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !130
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !130
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !130
  %cmp = icmp uge i8* %0, %1, !dbg !130
  %conv1 = zext i1 %cmp to i64, !dbg !130
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !130
  %tobool = icmp eq i64 %expval, 0, !dbg !130
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !130

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !130
  br label %cond.end, !dbg !130

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !130
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !130
  %2 = load i8, i8* %0, align 1, !dbg !130
  %conv3 = zext i8 %2 to i32, !dbg !130
  br label %cond.end, !dbg !130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !130
  ret i32 %cond, !dbg !131
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !132 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !133
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !133
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !133
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !133
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !133
  %cmp = icmp uge i8* %1, %2, !dbg !133
  %conv1 = zext i1 %cmp to i64, !dbg !133
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !133
  %tobool = icmp eq i64 %expval, 0, !dbg !133
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !133

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !133
  br label %cond.end, !dbg !133

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !133
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !133
  %3 = load i8, i8* %1, align 1, !dbg !133
  %conv3 = zext i8 %3 to i32, !dbg !133
  br label %cond.end, !dbg !133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !133
  ret i32 %cond, !dbg !134
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !135 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !141
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !142
  ret i32 %call, !dbg !143
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !144 {
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

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !153 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !156, metadata !DIExpression()), !dbg !157
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !158
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !158
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !158
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !158
  %cmp = icmp uge i8* %0, %1, !dbg !158
  %conv1 = zext i1 %cmp to i64, !dbg !158
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !158
  %tobool = icmp eq i64 %expval, 0, !dbg !158
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !158

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !158
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !158
  br label %cond.end, !dbg !158

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !158
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !158
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !158
  store i8 %conv2, i8* %0, align 1, !dbg !158
  %conv6 = and i32 %__c, 255, !dbg !158
  br label %cond.end, !dbg !158

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !158
  ret i32 %cond, !dbg !159
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !160 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !164
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !164
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !164
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !164
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !164
  %cmp = icmp uge i8* %1, %2, !dbg !164
  %conv1 = zext i1 %cmp to i64, !dbg !164
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !164
  %tobool = icmp eq i64 %expval, 0, !dbg !164
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !164

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !164
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !164
  br label %cond.end, !dbg !164

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !164
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !164
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !164
  store i8 %conv4, i8* %1, align 1, !dbg !164
  %conv6 = and i32 %__c, 255, !dbg !164
  br label %cond.end, !dbg !164

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !164
  ret i32 %cond, !dbg !165
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !166 {
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

; Function Attrs: nounwind uwtable
define dso_local i32 @xatexit(void ()* %fn) local_unnamed_addr #3 !dbg !191 {
entry:
  call void @llvm.dbg.value(metadata void ()* %fn, metadata !195, metadata !DIExpression()), !dbg !197
  %0 = load void ()*, void ()** @_xexit_cleanup, align 8, !dbg !198
  %tobool = icmp eq void ()* %0, null, !dbg !198
  br i1 %tobool, label %if.then, label %if.end, !dbg !200

if.then:                                          ; preds = %entry
  store void ()* @xatexit_cleanup, void ()** @_xexit_cleanup, align 8, !dbg !201
  br label %if.end, !dbg !202

if.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.xatexit*, %struct.xatexit** @xatexit_head, align 8, !dbg !203
  call void @llvm.dbg.value(metadata %struct.xatexit* %1, metadata !196, metadata !DIExpression()), !dbg !197
  %ind = getelementptr inbounds %struct.xatexit, %struct.xatexit* %1, i64 0, i32 1, !dbg !204
  %2 = load i32, i32* %ind, align 8, !dbg !204
  %cmp = icmp sgt i32 %2, 31, !dbg !206
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !207

if.then1:                                         ; preds = %if.end
  %call = tail call i8* @malloc(i64 272) #5, !dbg !208
  call void @llvm.dbg.value(metadata i8* %call, metadata !196, metadata !DIExpression()), !dbg !197
  %cmp2 = icmp eq i8* %call, null, !dbg !211
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !212

if.end4:                                          ; preds = %if.then1
  %3 = bitcast i8* %call to %struct.xatexit*, !dbg !213
  call void @llvm.dbg.value(metadata %struct.xatexit* %3, metadata !196, metadata !DIExpression()), !dbg !197
  %ind5 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !214
  %4 = bitcast i8* %ind5 to i32*, !dbg !214
  store i32 0, i32* %4, align 8, !dbg !215
  %5 = load i64, i64* bitcast (%struct.xatexit** @xatexit_head to i64*), align 8, !dbg !216
  %6 = bitcast i8* %call to i64*, !dbg !217
  store i64 %5, i64* %6, align 8, !dbg !217
  store i8* %call, i8** bitcast (%struct.xatexit** @xatexit_head to i8**), align 8, !dbg !218
  br label %if.end6, !dbg !219

if.end6:                                          ; preds = %if.end4, %if.end
  %7 = phi i32 [ 0, %if.end4 ], [ %2, %if.end ], !dbg !220
  %p.0 = phi %struct.xatexit* [ %3, %if.end4 ], [ %1, %if.end ], !dbg !197
  call void @llvm.dbg.value(metadata %struct.xatexit* %p.0, metadata !196, metadata !DIExpression()), !dbg !197
  %ind7 = getelementptr inbounds %struct.xatexit, %struct.xatexit* %p.0, i64 0, i32 1, !dbg !221
  %inc = add nsw i32 %7, 1, !dbg !220
  store i32 %inc, i32* %ind7, align 8, !dbg !220
  %idxprom = sext i32 %7 to i64, !dbg !222
  %arrayidx = getelementptr inbounds %struct.xatexit, %struct.xatexit* %p.0, i64 0, i32 2, i64 %idxprom, !dbg !222
  store void ()* %fn, void ()** %arrayidx, align 8, !dbg !223
  br label %cleanup, !dbg !224

cleanup:                                          ; preds = %if.then1, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -1, %if.then1 ], !dbg !197
  ret i32 %retval.0, !dbg !225
}

; Function Attrs: nounwind uwtable
define internal void @xatexit_cleanup() #3 !dbg !226 {
entry:
  br label %for.cond, !dbg !230

for.cond:                                         ; preds = %for.inc, %entry
  %p.0.in = phi %struct.xatexit** [ @xatexit_head, %entry ], [ %next, %for.inc ]
  %p.0 = load %struct.xatexit*, %struct.xatexit** %p.0.in, align 8, !dbg !232
  call void @llvm.dbg.value(metadata %struct.xatexit* %p.0, metadata !228, metadata !DIExpression()), !dbg !233
  %tobool = icmp eq %struct.xatexit* %p.0, null, !dbg !234
  br i1 %tobool, label %for.end3, label %for.body, !dbg !234

for.body:                                         ; preds = %for.cond
  %ind = getelementptr inbounds %struct.xatexit, %struct.xatexit* %p.0, i64 0, i32 1, !dbg !235
  %0 = load i32, i32* %ind, align 8, !dbg !235
  call void @llvm.dbg.value(metadata i32 %0, metadata !229, metadata !DIExpression()), !dbg !233
  %1 = sext i32 %0 to i64, !dbg !238
  br label %for.cond1, !dbg !238

for.cond1:                                        ; preds = %for.body2, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body2 ], [ %1, %for.body ], !dbg !239
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !229, metadata !DIExpression()), !dbg !233
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !240
  call void @llvm.dbg.value(metadata i32 undef, metadata !229, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !233
  %cmp = icmp sgt i64 %indvars.iv, 0, !dbg !242
  br i1 %cmp, label %for.body2, label %for.inc, !dbg !243

for.body2:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds %struct.xatexit, %struct.xatexit* %p.0, i64 0, i32 2, i64 %indvars.iv.next, !dbg !244
  %2 = load void ()*, void ()** %arrayidx, align 8, !dbg !244
  tail call void %2() #5, !dbg !245
  br label %for.cond1, !dbg !246, !llvm.loop !247

for.inc:                                          ; preds = %for.cond1
  %next = getelementptr inbounds %struct.xatexit, %struct.xatexit* %p.0, i64 0, i32 0, !dbg !249
  br label %for.cond, !dbg !250, !llvm.loop !251

for.end3:                                         ; preds = %for.cond
  ret void, !dbg !253
}

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xatexit_head", scope: !2, file: !3, line: 61, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !22, nameTableKind: None)
!3 = !DIFile(filename: "xatexit.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !21}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xatexit", file: !3, line: 50, size: 2176, elements: !10)
!10 = !{!11, !12, !14}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !9, file: !3, line: 51, baseType: !8, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !9, file: !3, line: 52, baseType: !13, size: 32, offset: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "fns", scope: !9, file: !3, line: 53, baseType: !15, size: 2048, offset: 128)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, elements: !19)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !{!20}
!20 = !DISubrange(count: 32)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !{!0, !23}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "xatexit_first", scope: !2, file: !3, line: 58, type: !9, isLocal: true, isDefinition: true)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!29 = distinct !DISubprogram(name: "vprintf", scope: !30, file: !30, line: 39, type: !31, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !45)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!31 = !DISubroutineType(types: !32)
!32 = !{!13, !33, !37}
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !39)
!39 = !{!40, !42, !43, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !38, file: !3, baseType: !41, size: 32)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !38, file: !3, baseType: !41, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !38, file: !3, baseType: !21, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !38, file: !3, baseType: !21, size: 64, offset: 128)
!45 = !{!46, !47}
!46 = !DILocalVariable(name: "__fmt", arg: 1, scope: !29, file: !30, line: 39, type: !33)
!47 = !DILocalVariable(name: "__arg", arg: 2, scope: !29, file: !30, line: 39, type: !37)
!48 = !DILocation(line: 0, scope: !29)
!49 = !DILocation(line: 41, column: 20, scope: !29)
!50 = !DILocation(line: 41, column: 10, scope: !29)
!51 = !DILocation(line: 41, column: 3, scope: !29)
!52 = distinct !DISubprogram(name: "getchar", scope: !30, file: !30, line: 47, type: !53, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!53 = !DISubroutineType(types: !54)
!54 = !{!13}
!55 = !DILocation(line: 49, column: 16, scope: !52)
!56 = !DILocation(line: 49, column: 10, scope: !52)
!57 = !DILocation(line: 49, column: 3, scope: !52)
!58 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !30, file: !30, line: 56, type: !59, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !121)
!59 = !DISubroutineType(types: !60)
!60 = !{!13, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!66 = !{!67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !83, !85, !86, !87, !91, !93, !95, !99, !102, !104, !107, !110, !111, !112, !116, !117}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 51, baseType: !13, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 54, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 55, baseType: !69, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 56, baseType: !69, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 57, baseType: !69, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 58, baseType: !69, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 59, baseType: !69, size: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 60, baseType: !69, size: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 61, baseType: !69, size: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 64, baseType: !69, size: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 65, baseType: !69, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 66, baseType: !69, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 68, baseType: !81, size: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 36, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 70, baseType: !84, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 72, baseType: !13, size: 32, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 73, baseType: !13, size: 32, offset: 928)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 74, baseType: !88, size: 64, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !89, line: 152, baseType: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!90 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 77, baseType: !92, size: 16, offset: 1024)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !64, file: !65, line: 78, baseType: !94, size: 8, offset: 1040)
!94 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !64, file: !65, line: 79, baseType: !96, size: 8, offset: 1048)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 1)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !64, file: !65, line: 81, baseType: !100, size: 64, offset: 1088)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !65, line: 43, baseType: null)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !65, line: 89, baseType: !103, size: 64, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !89, line: 153, baseType: !90)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !64, file: !65, line: 91, baseType: !105, size: 64, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !65, line: 37, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !64, file: !65, line: 92, baseType: !108, size: 64, offset: 1280)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !65, line: 38, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !64, file: !65, line: 93, baseType: !84, size: 64, offset: 1344)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !64, file: !65, line: 94, baseType: !21, size: 64, offset: 1408)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 95, baseType: !113, size: 64, offset: 1472)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 46, baseType: !115)
!114 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!115 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 96, baseType: !13, size: 32, offset: 1536)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 98, baseType: !118, size: 160, offset: 1568)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 20)
!121 = !{!122}
!122 = !DILocalVariable(name: "__fp", arg: 1, scope: !58, file: !30, line: 56, type: !61)
!123 = !DILocation(line: 0, scope: !58)
!124 = !DILocation(line: 58, column: 10, scope: !58)
!125 = !DILocation(line: 58, column: 3, scope: !58)
!126 = distinct !DISubprogram(name: "getc_unlocked", scope: !30, file: !30, line: 66, type: !59, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !127)
!127 = !{!128}
!128 = !DILocalVariable(name: "__fp", arg: 1, scope: !126, file: !30, line: 66, type: !61)
!129 = !DILocation(line: 0, scope: !126)
!130 = !DILocation(line: 68, column: 10, scope: !126)
!131 = !DILocation(line: 68, column: 3, scope: !126)
!132 = distinct !DISubprogram(name: "getchar_unlocked", scope: !30, file: !30, line: 73, type: !53, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!133 = !DILocation(line: 75, column: 10, scope: !132)
!134 = !DILocation(line: 75, column: 3, scope: !132)
!135 = distinct !DISubprogram(name: "putchar", scope: !30, file: !30, line: 82, type: !136, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!13, !13}
!138 = !{!139}
!139 = !DILocalVariable(name: "__c", arg: 1, scope: !135, file: !30, line: 82, type: !13)
!140 = !DILocation(line: 0, scope: !135)
!141 = !DILocation(line: 84, column: 21, scope: !135)
!142 = !DILocation(line: 84, column: 10, scope: !135)
!143 = !DILocation(line: 84, column: 3, scope: !135)
!144 = distinct !DISubprogram(name: "fputc_unlocked", scope: !30, file: !30, line: 91, type: !145, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !147)
!145 = !DISubroutineType(types: !146)
!146 = !{!13, !13, !61}
!147 = !{!148, !149}
!148 = !DILocalVariable(name: "__c", arg: 1, scope: !144, file: !30, line: 91, type: !13)
!149 = !DILocalVariable(name: "__stream", arg: 2, scope: !144, file: !30, line: 91, type: !61)
!150 = !DILocation(line: 0, scope: !144)
!151 = !DILocation(line: 93, column: 10, scope: !144)
!152 = !DILocation(line: 93, column: 3, scope: !144)
!153 = distinct !DISubprogram(name: "putc_unlocked", scope: !30, file: !30, line: 101, type: !145, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!154 = !{!155, !156}
!155 = !DILocalVariable(name: "__c", arg: 1, scope: !153, file: !30, line: 101, type: !13)
!156 = !DILocalVariable(name: "__stream", arg: 2, scope: !153, file: !30, line: 101, type: !61)
!157 = !DILocation(line: 0, scope: !153)
!158 = !DILocation(line: 103, column: 10, scope: !153)
!159 = !DILocation(line: 103, column: 3, scope: !153)
!160 = distinct !DISubprogram(name: "putchar_unlocked", scope: !30, file: !30, line: 108, type: !136, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !161)
!161 = !{!162}
!162 = !DILocalVariable(name: "__c", arg: 1, scope: !160, file: !30, line: 108, type: !13)
!163 = !DILocation(line: 0, scope: !160)
!164 = !DILocation(line: 110, column: 10, scope: !160)
!165 = !DILocation(line: 110, column: 3, scope: !160)
!166 = distinct !DISubprogram(name: "getline", scope: !30, file: !30, line: 118, type: !167, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !170, !171, !61}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !89, line: 193, baseType: !90)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!172 = !{!173, !174, !175}
!173 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !166, file: !30, line: 118, type: !170)
!174 = !DILocalVariable(name: "__n", arg: 2, scope: !166, file: !30, line: 118, type: !171)
!175 = !DILocalVariable(name: "__stream", arg: 3, scope: !166, file: !30, line: 118, type: !61)
!176 = !DILocation(line: 0, scope: !166)
!177 = !DILocation(line: 120, column: 10, scope: !166)
!178 = !DILocation(line: 120, column: 3, scope: !166)
!179 = distinct !DISubprogram(name: "feof_unlocked", scope: !30, file: !30, line: 128, type: !59, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!180 = !{!181}
!181 = !DILocalVariable(name: "__stream", arg: 1, scope: !179, file: !30, line: 128, type: !61)
!182 = !DILocation(line: 0, scope: !179)
!183 = !DILocation(line: 130, column: 10, scope: !179)
!184 = !DILocation(line: 130, column: 3, scope: !179)
!185 = distinct !DISubprogram(name: "ferror_unlocked", scope: !30, file: !30, line: 135, type: !59, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!186 = !{!187}
!187 = !DILocalVariable(name: "__stream", arg: 1, scope: !185, file: !30, line: 135, type: !61)
!188 = !DILocation(line: 0, scope: !185)
!189 = !DILocation(line: 137, column: 10, scope: !185)
!190 = !DILocation(line: 137, column: 3, scope: !185)
!191 = distinct !DISubprogram(name: "xatexit", scope: !3, file: !3, line: 67, type: !192, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{!13, !16}
!194 = !{!195, !196}
!195 = !DILocalVariable(name: "fn", arg: 1, scope: !191, file: !3, line: 67, type: !16)
!196 = !DILocalVariable(name: "p", scope: !191, file: !3, line: 69, type: !8)
!197 = !DILocation(line: 0, scope: !191)
!198 = !DILocation(line: 72, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !191, file: !3, line: 72, column: 7)
!200 = !DILocation(line: 72, column: 7, scope: !191)
!201 = !DILocation(line: 73, column: 20, scope: !199)
!202 = !DILocation(line: 73, column: 5, scope: !199)
!203 = !DILocation(line: 75, column: 7, scope: !191)
!204 = !DILocation(line: 76, column: 10, scope: !205)
!205 = distinct !DILexicalBlock(scope: !191, file: !3, line: 76, column: 7)
!206 = !DILocation(line: 76, column: 14, scope: !205)
!207 = !DILocation(line: 76, column: 7, scope: !191)
!208 = !DILocation(line: 78, column: 35, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 78, column: 11)
!210 = distinct !DILexicalBlock(scope: !205, file: !3, line: 77, column: 5)
!211 = !DILocation(line: 78, column: 55, scope: !209)
!212 = !DILocation(line: 78, column: 11, scope: !210)
!213 = !DILocation(line: 78, column: 16, scope: !209)
!214 = !DILocation(line: 80, column: 10, scope: !210)
!215 = !DILocation(line: 80, column: 14, scope: !210)
!216 = !DILocation(line: 81, column: 17, scope: !210)
!217 = !DILocation(line: 81, column: 15, scope: !210)
!218 = !DILocation(line: 82, column: 20, scope: !210)
!219 = !DILocation(line: 83, column: 5, scope: !210)
!220 = !DILocation(line: 84, column: 16, scope: !191)
!221 = !DILocation(line: 84, column: 13, scope: !191)
!222 = !DILocation(line: 84, column: 3, scope: !191)
!223 = !DILocation(line: 84, column: 20, scope: !191)
!224 = !DILocation(line: 85, column: 3, scope: !191)
!225 = !DILocation(line: 86, column: 1, scope: !191)
!226 = distinct !DISubprogram(name: "xatexit_cleanup", scope: !3, file: !3, line: 91, type: !17, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !227)
!227 = !{!228, !229}
!228 = !DILocalVariable(name: "p", scope: !226, file: !3, line: 93, type: !8)
!229 = !DILocalVariable(name: "n", scope: !226, file: !3, line: 94, type: !13)
!230 = !DILocation(line: 96, column: 8, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !3, line: 96, column: 3)
!232 = !DILocation(line: 0, scope: !231)
!233 = !DILocation(line: 0, scope: !226)
!234 = !DILocation(line: 96, column: 3, scope: !231)
!235 = !DILocation(line: 97, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 97, column: 5)
!237 = distinct !DILexicalBlock(scope: !231, file: !3, line: 96, column: 3)
!238 = !DILocation(line: 97, column: 10, scope: !236)
!239 = !DILocation(line: 0, scope: !236)
!240 = !DILocation(line: 97, column: 22, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !3, line: 97, column: 5)
!242 = !DILocation(line: 97, column: 26, scope: !241)
!243 = !DILocation(line: 97, column: 5, scope: !236)
!244 = !DILocation(line: 98, column: 9, scope: !241)
!245 = !DILocation(line: 98, column: 7, scope: !241)
!246 = !DILocation(line: 97, column: 5, scope: !241)
!247 = distinct !{!247, !243, !248}
!248 = !DILocation(line: 98, column: 21, scope: !236)
!249 = !DILocation(line: 96, column: 36, scope: !237)
!250 = !DILocation(line: 96, column: 3, scope: !237)
!251 = distinct !{!251, !234, !252}
!252 = !DILocation(line: 98, column: 21, scope: !231)
!253 = !DILocation(line: 99, column: 1, scope: !226)
