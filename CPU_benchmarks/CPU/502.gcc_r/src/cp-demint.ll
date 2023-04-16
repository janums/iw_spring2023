; ModuleID = 'cp-demint.bc'
source_filename = "cp-demint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.demangle_builtin_type_info = type { i8*, i32, i8*, i32, i32 }
%struct.demangle_operator_info = type { i8*, i8*, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.demangle_component = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i32 }
%struct.d_info = type { i8*, i8*, i32, i8*, %struct.demangle_component*, i32, i32, %struct.demangle_component**, i32, i32, i32, %struct.demangle_component*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cplus_demangle_builtin_types = external dso_local constant [32 x %struct.demangle_builtin_type_info], align 16
@cplus_demangle_operators = external dso_local constant [0 x %struct.demangle_operator_info], align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !194 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !199, metadata !DIExpression()), !dbg !200
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !201
  %conv = trunc i64 %call to i32, !dbg !202
  ret i32 %conv, !dbg !203
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !208, metadata !DIExpression()), !dbg !209
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !210
  ret i64 %call, !dbg !211
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !212 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !217, metadata !DIExpression()), !dbg !218
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !219
  ret i64 %call, !dbg !220
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !221 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i8* %__base, metadata !236, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !237, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i64 %__size, metadata !238, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !239, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i64 0, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !241, metadata !DIExpression()), !dbg !245
  br label %while.cond, !dbg !246

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !247
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !245
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !241, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !240, metadata !DIExpression()), !dbg !245
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !248
  br i1 %cmp, label %while.body, label %cleanup, !dbg !246

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !249
  %div = lshr i64 %add, 1, !dbg !251
  call void @llvm.dbg.value(metadata i64 %div, metadata !242, metadata !DIExpression()), !dbg !245
  %mul = mul i64 %div, %__size, !dbg !252
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !253
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !243, metadata !DIExpression()), !dbg !245
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !254
  call void @llvm.dbg.value(metadata i32 %call, metadata !244, metadata !DIExpression()), !dbg !245
  %cmp1 = icmp slt i32 %call, 0, !dbg !255
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !257

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !258
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !260

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !261
  call void @llvm.dbg.value(metadata i64 %add4, metadata !240, metadata !DIExpression()), !dbg !245
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !245
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !245
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !241, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !240, metadata !DIExpression()), !dbg !245
  br label %while.cond, !dbg !246, !llvm.loop !262

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !245
  ret i8* %retval.0, !dbg !264
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !265 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !271, metadata !DIExpression()), !dbg !272
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !273
  ret double %call, !dbg !274
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !275 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !288, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !291
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !292
  ret i32 %call, !dbg !293
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !294 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !298
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !299
  ret i32 %call, !dbg !300
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !301 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !360, metadata !DIExpression()), !dbg !361
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !362
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !362
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !362
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !362
  %cmp = icmp uge i8* %0, %1, !dbg !362
  %conv1 = zext i1 %cmp to i64, !dbg !362
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !362
  %tobool = icmp eq i64 %expval, 0, !dbg !362
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !362

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !362
  br label %cond.end, !dbg !362

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !362
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !362
  %2 = load i8, i8* %0, align 1, !dbg !362
  %conv3 = zext i8 %2 to i32, !dbg !362
  br label %cond.end, !dbg !362

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !362
  ret i32 %cond, !dbg !363
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !364 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !366, metadata !DIExpression()), !dbg !367
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !368
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !368
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !368
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !368
  %cmp = icmp uge i8* %0, %1, !dbg !368
  %conv1 = zext i1 %cmp to i64, !dbg !368
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !368
  %tobool = icmp eq i64 %expval, 0, !dbg !368
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !368

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !368
  br label %cond.end, !dbg !368

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !368
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !368
  %2 = load i8, i8* %0, align 1, !dbg !368
  %conv3 = zext i8 %2 to i32, !dbg !368
  br label %cond.end, !dbg !368

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !368
  ret i32 %cond, !dbg !369
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !370 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !371
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !371
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !371
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !371
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !371
  %cmp = icmp uge i8* %1, %2, !dbg !371
  %conv1 = zext i1 %cmp to i64, !dbg !371
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !371
  %tobool = icmp eq i64 %expval, 0, !dbg !371
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !371

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !371
  br label %cond.end, !dbg !371

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !371
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !371
  %3 = load i8, i8* %1, align 1, !dbg !371
  %conv3 = zext i8 %3 to i32, !dbg !371
  br label %cond.end, !dbg !371

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !371
  ret i32 %cond, !dbg !372
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !373 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !379
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !380
  ret i32 %call, !dbg !381
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !382 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !386, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !387, metadata !DIExpression()), !dbg !388
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !389
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !389
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !389
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !389
  %cmp = icmp uge i8* %0, %1, !dbg !389
  %conv1 = zext i1 %cmp to i64, !dbg !389
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !389
  %tobool = icmp eq i64 %expval, 0, !dbg !389
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !389

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !389
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !389
  br label %cond.end, !dbg !389

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !389
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !389
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !389
  store i8 %conv2, i8* %0, align 1, !dbg !389
  %conv6 = and i32 %__c, 255, !dbg !389
  br label %cond.end, !dbg !389

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !389
  ret i32 %cond, !dbg !390
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !393, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !394, metadata !DIExpression()), !dbg !395
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !396
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !396
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !396
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !396
  %cmp = icmp uge i8* %0, %1, !dbg !396
  %conv1 = zext i1 %cmp to i64, !dbg !396
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !396
  %tobool = icmp eq i64 %expval, 0, !dbg !396
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !396

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !396
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !396
  br label %cond.end, !dbg !396

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !396
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !396
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !396
  store i8 %conv2, i8* %0, align 1, !dbg !396
  %conv6 = and i32 %__c, 255, !dbg !396
  br label %cond.end, !dbg !396

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !396
  ret i32 %cond, !dbg !397
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !398 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !402
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !402
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !402
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !402
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !402
  %cmp = icmp uge i8* %1, %2, !dbg !402
  %conv1 = zext i1 %cmp to i64, !dbg !402
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !402
  %tobool = icmp eq i64 %expval, 0, !dbg !402
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !402

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !402
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !402
  br label %cond.end, !dbg !402

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !402
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !402
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !402
  store i8 %conv4, i8* %1, align 1, !dbg !402
  %conv6 = and i32 %__c, 255, !dbg !402
  br label %cond.end, !dbg !402

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !402
  ret i32 %cond, !dbg !403
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !404 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !410, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i64* %__n, metadata !411, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !412, metadata !DIExpression()), !dbg !413
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !414
  ret i64 %call, !dbg !415
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !416 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !418, metadata !DIExpression()), !dbg !419
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !420
  %0 = load i32, i32* %_flags, align 8, !dbg !420
  %and = lshr i32 %0, 4, !dbg !420
  %and.lobit = and i32 %and, 1, !dbg !420
  ret i32 %and.lobit, !dbg !421
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !422 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !424, metadata !DIExpression()), !dbg !425
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !426
  %0 = load i32, i32* %_flags, align 8, !dbg !426
  %and = lshr i32 %0, 5, !dbg !426
  %and.lobit = and i32 %and, 1, !dbg !426
  ret i32 %and.lobit, !dbg !427
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_fill_component(%struct.demangle_component* %p, i32 %type, %struct.demangle_component* %left, %struct.demangle_component* %right) local_unnamed_addr #4 !dbg !428 {
entry:
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p, metadata !432, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i32 %type, metadata !433, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata %struct.demangle_component* %left, metadata !434, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata %struct.demangle_component* %right, metadata !435, metadata !DIExpression()), !dbg !436
  %cmp = icmp eq %struct.demangle_component* %p, null, !dbg !437
  br i1 %cmp, label %return, label %if.end, !dbg !439

if.end:                                           ; preds = %entry
  switch i32 %type, label %return [
    i32 1, label %sw.epilog
    i32 2, label %sw.epilog
    i32 3, label %sw.epilog
    i32 4, label %sw.epilog
    i32 11, label %sw.epilog
    i32 29, label %sw.epilog
    i32 37, label %sw.epilog
    i32 38, label %sw.epilog
    i32 39, label %sw.epilog
    i32 42, label %sw.epilog
    i32 43, label %sw.epilog
    i32 47, label %sw.epilog
    i32 48, label %sw.epilog
    i32 49, label %sw.epilog
    i32 50, label %sw.epilog
    i32 51, label %sw.epilog
    i32 52, label %sw.epilog
    i32 53, label %sw.epilog
    i32 54, label %sw.epilog
    i32 9, label %sw.bb1
    i32 10, label %sw.bb1
    i32 12, label %sw.bb1
    i32 13, label %sw.bb1
    i32 14, label %sw.bb1
    i32 15, label %sw.bb1
    i32 16, label %sw.bb1
    i32 17, label %sw.bb1
    i32 18, label %sw.bb1
    i32 19, label %sw.bb1
    i32 20, label %sw.bb1
    i32 23, label %sw.bb1
    i32 24, label %sw.bb1
    i32 25, label %sw.bb1
    i32 26, label %sw.bb1
    i32 27, label %sw.bb1
    i32 28, label %sw.bb1
    i32 30, label %sw.bb1
    i32 31, label %sw.bb1
    i32 33, label %sw.bb1
    i32 34, label %sw.bb1
    i32 36, label %sw.bb1
    i32 46, label %sw.bb1
  ], !dbg !440

sw.bb1:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %cmp2 = icmp eq %struct.demangle_component* %right, null, !dbg !441
  br i1 %cmp2, label %sw.epilog, label %return, !dbg !444

sw.epilog:                                        ; preds = %sw.bb1, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %type5 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 0, !dbg !445
  store i32 %type, i32* %type5, align 8, !dbg !446
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, !dbg !447
  %left6 = bitcast %union.anon* %u to %struct.demangle_component**, !dbg !448
  store %struct.demangle_component* %left, %struct.demangle_component** %left6, align 8, !dbg !449
  %right9 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, i32 0, i32 1, !dbg !450
  %0 = bitcast i32* %right9 to %struct.demangle_component**, !dbg !450
  store %struct.demangle_component* %right, %struct.demangle_component** %0, align 8, !dbg !451
  br label %return, !dbg !452

return:                                           ; preds = %sw.bb1, %if.end, %entry, %sw.epilog
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %entry ], [ 0, %sw.bb1 ], [ 0, %if.end ], !dbg !436
  ret i32 %retval.0, !dbg !453
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_fill_builtin_type(%struct.demangle_component* %p, i8* %type_name) local_unnamed_addr #4 !dbg !454 {
entry:
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p, metadata !458, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i8* %type_name, metadata !459, metadata !DIExpression()), !dbg !462
  %cmp = icmp eq %struct.demangle_component* %p, null, !dbg !463
  %cmp1 = icmp eq i8* %type_name, null, !dbg !465
  %or.cond = or i1 %cmp, %cmp1, !dbg !466
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !466

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %type_name) #6, !dbg !467
  %conv = trunc i64 %call to i32, !dbg !467
  call void @llvm.dbg.value(metadata i32 %conv, metadata !460, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 0, metadata !461, metadata !DIExpression()), !dbg !462
  br label %for.cond, !dbg !468

for.cond:                                         ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ], !dbg !470
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !461, metadata !DIExpression()), !dbg !462
  %exitcond = icmp eq i64 %indvars.iv, 32, !dbg !471
  br i1 %exitcond, label %cleanup.loopexit, label %for.body, !dbg !473

for.body:                                         ; preds = %for.cond
  %len4 = getelementptr inbounds [32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 %indvars.iv, i32 1, !dbg !474
  %0 = load i32, i32* %len4, align 8, !dbg !474
  %cmp5 = icmp eq i32 %0, %conv, !dbg !477
  br i1 %cmp5, label %land.lhs.true, label %for.inc, !dbg !478

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds [32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 %indvars.iv, i32 0, !dbg !479
  %1 = load i8*, i8** %name, align 16, !dbg !479
  %call9 = tail call i32 @strcmp(i8* %type_name, i8* %1) #6, !dbg !480
  %cmp10 = icmp eq i32 %call9, 0, !dbg !481
  br i1 %cmp10, label %if.then12, label %for.inc, !dbg !482

if.then12:                                        ; preds = %land.lhs.true
  %indvars.iv.lcssa2 = phi i64 [ %indvars.iv, %land.lhs.true ], !dbg !470
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !461, metadata !DIExpression()), !dbg !462
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 0, !dbg !483
  store i32 35, i32* %type, align 8, !dbg !485
  %arrayidx14 = getelementptr inbounds [32 x %struct.demangle_builtin_type_info], [32 x %struct.demangle_builtin_type_info]* @cplus_demangle_builtin_types, i64 0, i64 %indvars.iv.lcssa2, !dbg !486
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, !dbg !487
  %type15 = bitcast %union.anon* %u to %struct.demangle_builtin_type_info**, !dbg !488
  store %struct.demangle_builtin_type_info* %arrayidx14, %struct.demangle_builtin_type_info** %type15, align 8, !dbg !489
  br label %cleanup, !dbg !490

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !491
  call void @llvm.dbg.value(metadata i32 undef, metadata !461, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !462
  br label %for.cond, !dbg !492, !llvm.loop !493

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !495

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %if.then12
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 0, %entry ], [ 0, %cleanup.loopexit ], !dbg !462
  ret i32 %retval.0, !dbg !495
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cplus_demangle_fill_operator(%struct.demangle_component* %p, i8* %opname, i32 %args) local_unnamed_addr #4 !dbg !496 {
entry:
  call void @llvm.dbg.value(metadata %struct.demangle_component* %p, metadata !500, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i8* %opname, metadata !501, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 %args, metadata !502, metadata !DIExpression()), !dbg !505
  %cmp = icmp eq %struct.demangle_component* %p, null, !dbg !506
  %cmp1 = icmp eq i8* %opname, null, !dbg !508
  %or.cond = or i1 %cmp, %cmp1, !dbg !509
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !509

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %opname) #6, !dbg !510
  %conv = trunc i64 %call to i32, !dbg !510
  call void @llvm.dbg.value(metadata i32 %conv, metadata !503, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 0, metadata !504, metadata !DIExpression()), !dbg !505
  br label %for.cond, !dbg !511

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !513
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !504, metadata !DIExpression()), !dbg !505
  %idxprom = zext i32 %i.0 to i64, !dbg !514
  %name = getelementptr inbounds [0 x %struct.demangle_operator_info], [0 x %struct.demangle_operator_info]* @cplus_demangle_operators, i64 0, i64 %idxprom, i32 1, !dbg !516
  %0 = load i8*, i8** %name, align 8, !dbg !516
  %cmp2 = icmp eq i8* %0, null, !dbg !517
  br i1 %cmp2, label %cleanup.loopexit, label %for.body, !dbg !518

for.body:                                         ; preds = %for.cond
  %len6 = getelementptr inbounds [0 x %struct.demangle_operator_info], [0 x %struct.demangle_operator_info]* @cplus_demangle_operators, i64 0, i64 %idxprom, i32 2, !dbg !519
  %1 = load i32, i32* %len6, align 8, !dbg !519
  %cmp7 = icmp eq i32 %1, %conv, !dbg !522
  br i1 %cmp7, label %land.lhs.true, label %for.inc, !dbg !523

land.lhs.true:                                    ; preds = %for.body
  %args11 = getelementptr inbounds [0 x %struct.demangle_operator_info], [0 x %struct.demangle_operator_info]* @cplus_demangle_operators, i64 0, i64 %idxprom, i32 3, !dbg !524
  %2 = load i32, i32* %args11, align 4, !dbg !524
  %cmp12 = icmp eq i32 %2, %args, !dbg !525
  br i1 %cmp12, label %land.lhs.true14, label %for.inc, !dbg !526

land.lhs.true14:                                  ; preds = %land.lhs.true
  %call18 = tail call i32 @strcmp(i8* %opname, i8* nonnull %0) #6, !dbg !527
  %cmp19 = icmp eq i32 %call18, 0, !dbg !528
  br i1 %cmp19, label %if.then21, label %for.inc, !dbg !529

if.then21:                                        ; preds = %land.lhs.true14
  %idxprom.lcssa3 = phi i64 [ %idxprom, %land.lhs.true14 ], !dbg !514
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !504, metadata !DIExpression()), !dbg !505
  %type = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 0, !dbg !530
  store i32 44, i32* %type, align 8, !dbg !532
  %arrayidx23 = getelementptr inbounds [0 x %struct.demangle_operator_info], [0 x %struct.demangle_operator_info]* @cplus_demangle_operators, i64 0, i64 %idxprom.lcssa3, !dbg !533
  %u = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %p, i64 0, i32 1, !dbg !534
  %op = bitcast %union.anon* %u to %struct.demangle_operator_info**, !dbg !535
  store %struct.demangle_operator_info* %arrayidx23, %struct.demangle_operator_info** %op, align 8, !dbg !536
  br label %cleanup, !dbg !537

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true14
  %inc = add i32 %i.0, 1, !dbg !538
  call void @llvm.dbg.value(metadata i32 %inc, metadata !504, metadata !DIExpression()), !dbg !505
  br label %for.cond, !dbg !539, !llvm.loop !540

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !542

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %if.then21
  %retval.0 = phi i32 [ 1, %if.then21 ], [ 0, %entry ], [ 0, %cleanup.loopexit ], !dbg !505
  ret i32 %retval.0, !dbg !542
}

; Function Attrs: nounwind uwtable
define dso_local %struct.demangle_component* @cplus_demangle_v3_components(i8* %mangled, i32 %options, i8** %mem) local_unnamed_addr #4 !dbg !543 {
entry:
  %di = alloca %struct.d_info, align 8
  call void @llvm.dbg.value(metadata i8* %mangled, metadata !548, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i32 %options, metadata !549, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i8** %mem, metadata !550, metadata !DIExpression()), !dbg !570
  %0 = bitcast %struct.d_info* %di to i8*, !dbg !571
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #7, !dbg !571
  %call = tail call i64 @strlen(i8* %mangled) #6, !dbg !572
  call void @llvm.dbg.value(metadata i64 %call, metadata !551, metadata !DIExpression()), !dbg !570
  %1 = load i8, i8* %mangled, align 1, !dbg !573
  %cmp = icmp eq i8 %1, 95, !dbg !575
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !576

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8, i8* %mangled, i64 1, !dbg !577
  %2 = load i8, i8* %arrayidx2, align 1, !dbg !577
  %cmp4 = icmp eq i8 %2, 90, !dbg !578
  br i1 %cmp4, label %if.end9, label %if.else, !dbg !579

if.else:                                          ; preds = %land.lhs.true, %entry
  %and = and i32 %options, 16, !dbg !580
  %cmp6 = icmp eq i32 %and, 0, !dbg !583
  br i1 %cmp6, label %cleanup, label %if.end9, !dbg !584

if.end9:                                          ; preds = %if.else, %land.lhs.true
  %type.0 = phi i32 [ 0, %land.lhs.true ], [ 1, %if.else ], !dbg !585
  call void @llvm.dbg.value(metadata i32 %type.0, metadata !552, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !553, metadata !DIExpression(DW_OP_deref)), !dbg !570
  call void @cplus_demangle_init_info(i8* %mangled, i32 %options, i64 %call, %struct.d_info* nonnull %di) #6, !dbg !586
  %num_comps = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 6, !dbg !587
  %3 = load i32, i32* %num_comps, align 4, !dbg !587
  %conv10 = sext i32 %3 to i64, !dbg !588
  %mul = mul nsw i64 %conv10, 24, !dbg !589
  %call11 = call i8* @malloc(i64 %mul) #6, !dbg !590
  %comps = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 4, !dbg !591
  %4 = bitcast %struct.demangle_component** %comps to i8**, !dbg !592
  store i8* %call11, i8** %4, align 8, !dbg !592
  %num_subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 9, !dbg !593
  %5 = load i32, i32* %num_subs, align 4, !dbg !593
  %conv12 = sext i32 %5 to i64, !dbg !594
  %mul13 = shl nsw i64 %conv12, 3, !dbg !595
  %call14 = call i8* @malloc(i64 %mul13) #6, !dbg !596
  %subs = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 7, !dbg !597
  %6 = bitcast %struct.demangle_component*** %subs to i8**, !dbg !598
  store i8* %call14, i8** %6, align 8, !dbg !598
  %7 = load %struct.demangle_component*, %struct.demangle_component** %comps, align 8, !dbg !599
  %cmp16 = icmp eq %struct.demangle_component* %7, null, !dbg !601
  %8 = bitcast i8* %call14 to %struct.demangle_component**, !dbg !602
  %9 = bitcast %struct.demangle_component* %7 to i8*, !dbg !602
  br i1 %cmp16, label %if.then21, label %lor.lhs.false, !dbg !602

lor.lhs.false:                                    ; preds = %if.end9
  %cmp19 = icmp eq i8* %call14, null, !dbg !603
  br i1 %cmp19, label %if.then21, label %if.end34, !dbg !604

if.then21:                                        ; preds = %lor.lhs.false, %if.end9
  br i1 %cmp16, label %if.end27, label %if.then25, !dbg !605

if.then25:                                        ; preds = %if.then21
  call void @free(i8* nonnull %9) #6, !dbg !607
  %.pre = load %struct.demangle_component**, %struct.demangle_component*** %subs, align 8, !dbg !609
  %10 = bitcast %struct.demangle_component** %.pre to i8*, !dbg !607
  br label %if.end27, !dbg !607

if.end27:                                         ; preds = %if.then21, %if.then25
  %11 = phi i8* [ %call14, %if.then21 ], [ %10, %if.then25 ]
  %12 = phi %struct.demangle_component** [ %8, %if.then21 ], [ %.pre, %if.then25 ], !dbg !609
  %cmp29 = icmp eq %struct.demangle_component** %12, null, !dbg !611
  br i1 %cmp29, label %cleanup, label %if.then31, !dbg !612

if.then31:                                        ; preds = %if.end27
  call void @free(i8* %11) #6, !dbg !613
  br label %cleanup, !dbg !613

if.end34:                                         ; preds = %lor.lhs.false
  %tobool = icmp eq i32 %type.0, 0, !dbg !614
  br i1 %tobool, label %if.then35, label %if.else37, !dbg !616

if.then35:                                        ; preds = %if.end34
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !553, metadata !DIExpression(DW_OP_deref)), !dbg !570
  %call36 = call %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info* nonnull %di, i32 1) #6, !dbg !617
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call36, metadata !569, metadata !DIExpression()), !dbg !570
  br label %if.end39, !dbg !618

if.else37:                                        ; preds = %if.end34
  call void @llvm.dbg.value(metadata %struct.d_info* %di, metadata !553, metadata !DIExpression(DW_OP_deref)), !dbg !570
  %call38 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* nonnull %di) #6, !dbg !619
  call void @llvm.dbg.value(metadata %struct.demangle_component* %call38, metadata !569, metadata !DIExpression()), !dbg !570
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then35
  %dc.0 = phi %struct.demangle_component* [ %call38, %if.else37 ], [ %call36, %if.then35 ], !dbg !620
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.0, metadata !569, metadata !DIExpression()), !dbg !570
  %and40 = and i32 %options, 1, !dbg !621
  %cmp41 = icmp eq i32 %and40, 0, !dbg !623
  br i1 %cmp41, label %if.end48, label %land.lhs.true43, !dbg !624

land.lhs.true43:                                  ; preds = %if.end39
  %n = getelementptr inbounds %struct.d_info, %struct.d_info* %di, i64 0, i32 3, !dbg !625
  %13 = load i8*, i8** %n, align 8, !dbg !625
  %14 = load i8, i8* %13, align 1, !dbg !625
  %cmp45 = icmp eq i8 %14, 0, !dbg !626
  %spec.select = select i1 %cmp45, %struct.demangle_component* %dc.0, %struct.demangle_component* null, !dbg !627
  br label %if.end48, !dbg !627

if.end48:                                         ; preds = %if.end39, %land.lhs.true43
  %dc.1 = phi %struct.demangle_component* [ %dc.0, %if.end39 ], [ %spec.select, %land.lhs.true43 ], !dbg !570
  call void @llvm.dbg.value(metadata %struct.demangle_component* %dc.1, metadata !569, metadata !DIExpression()), !dbg !570
  %15 = load i8*, i8** %6, align 8, !dbg !628
  call void @free(i8* %15) #6, !dbg !629
  %cmp50 = icmp eq %struct.demangle_component* %dc.1, null, !dbg !630
  %16 = load i8*, i8** %4, align 8, !dbg !632
  br i1 %cmp50, label %if.else54, label %if.then52, !dbg !633

if.then52:                                        ; preds = %if.end48
  store i8* %16, i8** %mem, align 8, !dbg !634
  br label %cleanup, !dbg !635

if.else54:                                        ; preds = %if.end48
  call void @free(i8* %16) #6, !dbg !636
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then52, %if.else54, %if.then31, %if.else
  %retval.0 = phi %struct.demangle_component* [ null, %if.else ], [ null, %if.then31 ], [ null, %if.end27 ], [ null, %if.else54 ], [ %dc.1, %if.then52 ], !dbg !570
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #7, !dbg !637
  ret %struct.demangle_component* %retval.0, !dbg !637
}

declare dso_local void @cplus_demangle_init_info(i8*, i32, i64, %struct.d_info*) local_unnamed_addr #1

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info*, i32) local_unnamed_addr #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!190, !191, !192}
!llvm.ident = !{!193}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !96, nameTableKind: None)
!1 = !DIFile(filename: "cp-demint.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !73, !78, !83}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "demangle_component_type", file: !4, line: 207, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/demangle.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!7 = !DIEnumerator(name: "DEMANGLE_COMPONENT_NAME", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "DEMANGLE_COMPONENT_QUAL_NAME", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "DEMANGLE_COMPONENT_LOCAL_NAME", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TYPED_NAME", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TEMPLATE", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TEMPLATE_PARAM", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "DEMANGLE_COMPONENT_FUNCTION_PARAM", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CTOR", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "DEMANGLE_COMPONENT_DTOR", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VTABLE", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VTT", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TYPEINFO", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TYPEINFO_NAME", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TYPEINFO_FN", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "DEMANGLE_COMPONENT_THUNK", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VIRTUAL_THUNK", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "DEMANGLE_COMPONENT_COVARIANT_THUNK", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "DEMANGLE_COMPONENT_JAVA_CLASS", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "DEMANGLE_COMPONENT_GUARD", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "DEMANGLE_COMPONENT_REFTEMP", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "DEMANGLE_COMPONENT_HIDDEN_ALIAS", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "DEMANGLE_COMPONENT_SUB_STD", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "DEMANGLE_COMPONENT_RESTRICT", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VOLATILE", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CONST", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "DEMANGLE_COMPONENT_RESTRICT_THIS", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VOLATILE_THIS", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CONST_THIS", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "DEMANGLE_COMPONENT_POINTER", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "DEMANGLE_COMPONENT_REFERENCE", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "DEMANGLE_COMPONENT_RVALUE_REFERENCE", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "DEMANGLE_COMPONENT_COMPLEX", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "DEMANGLE_COMPONENT_IMAGINARY", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "DEMANGLE_COMPONENT_BUILTIN_TYPE", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VENDOR_TYPE", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "DEMANGLE_COMPONENT_FUNCTION_TYPE", value: 37, isUnsigned: true)
!45 = !DIEnumerator(name: "DEMANGLE_COMPONENT_ARRAY_TYPE", value: 38, isUnsigned: true)
!46 = !DIEnumerator(name: "DEMANGLE_COMPONENT_PTRMEM_TYPE", value: 39, isUnsigned: true)
!47 = !DIEnumerator(name: "DEMANGLE_COMPONENT_FIXED_TYPE", value: 40, isUnsigned: true)
!48 = !DIEnumerator(name: "DEMANGLE_COMPONENT_VECTOR_TYPE", value: 41, isUnsigned: true)
!49 = !DIEnumerator(name: "DEMANGLE_COMPONENT_ARGLIST", value: 42, isUnsigned: true)
!50 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TEMPLATE_ARGLIST", value: 43, isUnsigned: true)
!51 = !DIEnumerator(name: "DEMANGLE_COMPONENT_OPERATOR", value: 44, isUnsigned: true)
!52 = !DIEnumerator(name: "DEMANGLE_COMPONENT_EXTENDED_OPERATOR", value: 45, isUnsigned: true)
!53 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CAST", value: 46, isUnsigned: true)
!54 = !DIEnumerator(name: "DEMANGLE_COMPONENT_UNARY", value: 47, isUnsigned: true)
!55 = !DIEnumerator(name: "DEMANGLE_COMPONENT_BINARY", value: 48, isUnsigned: true)
!56 = !DIEnumerator(name: "DEMANGLE_COMPONENT_BINARY_ARGS", value: 49, isUnsigned: true)
!57 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TRINARY", value: 50, isUnsigned: true)
!58 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TRINARY_ARG1", value: 51, isUnsigned: true)
!59 = !DIEnumerator(name: "DEMANGLE_COMPONENT_TRINARY_ARG2", value: 52, isUnsigned: true)
!60 = !DIEnumerator(name: "DEMANGLE_COMPONENT_LITERAL", value: 53, isUnsigned: true)
!61 = !DIEnumerator(name: "DEMANGLE_COMPONENT_LITERAL_NEG", value: 54, isUnsigned: true)
!62 = !DIEnumerator(name: "DEMANGLE_COMPONENT_JAVA_RESOURCE", value: 55, isUnsigned: true)
!63 = !DIEnumerator(name: "DEMANGLE_COMPONENT_COMPOUND_NAME", value: 56, isUnsigned: true)
!64 = !DIEnumerator(name: "DEMANGLE_COMPONENT_CHARACTER", value: 57, isUnsigned: true)
!65 = !DIEnumerator(name: "DEMANGLE_COMPONENT_NUMBER", value: 58, isUnsigned: true)
!66 = !DIEnumerator(name: "DEMANGLE_COMPONENT_DECLTYPE", value: 59, isUnsigned: true)
!67 = !DIEnumerator(name: "DEMANGLE_COMPONENT_GLOBAL_CONSTRUCTORS", value: 60, isUnsigned: true)
!68 = !DIEnumerator(name: "DEMANGLE_COMPONENT_GLOBAL_DESTRUCTORS", value: 61, isUnsigned: true)
!69 = !DIEnumerator(name: "DEMANGLE_COMPONENT_LAMBDA", value: 62, isUnsigned: true)
!70 = !DIEnumerator(name: "DEMANGLE_COMPONENT_DEFAULT_ARG", value: 63, isUnsigned: true)
!71 = !DIEnumerator(name: "DEMANGLE_COMPONENT_UNNAMED_TYPE", value: 64, isUnsigned: true)
!72 = !DIEnumerator(name: "DEMANGLE_COMPONENT_PACK_EXPANSION", value: 65, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gnu_v3_ctor_kinds", file: !4, line: 166, baseType: !5, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "gnu_v3_complete_object_ctor", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "gnu_v3_base_object_ctor", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "gnu_v3_complete_object_allocating_ctor", value: 3, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gnu_v3_dtor_kinds", file: !4, line: 180, baseType: !5, size: 32, elements: !79)
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "gnu_v3_deleting_dtor", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "gnu_v3_complete_object_dtor", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "gnu_v3_base_object_dtor", value: 3, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "d_builtin_type_print", file: !84, line: 50, baseType: !5, size: 32, elements: !85)
!84 = !DIFile(filename: "./cp-demangle.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!86 = !DIEnumerator(name: "D_PRINT_DEFAULT", value: 0, isUnsigned: true)
!87 = !DIEnumerator(name: "D_PRINT_INT", value: 1, isUnsigned: true)
!88 = !DIEnumerator(name: "D_PRINT_UNSIGNED", value: 2, isUnsigned: true)
!89 = !DIEnumerator(name: "D_PRINT_LONG", value: 3, isUnsigned: true)
!90 = !DIEnumerator(name: "D_PRINT_UNSIGNED_LONG", value: 4, isUnsigned: true)
!91 = !DIEnumerator(name: "D_PRINT_LONG_LONG", value: 5, isUnsigned: true)
!92 = !DIEnumerator(name: "D_PRINT_UNSIGNED_LONG_LONG", value: 6, isUnsigned: true)
!93 = !DIEnumerator(name: "D_PRINT_BOOL", value: 7, isUnsigned: true)
!94 = !DIEnumerator(name: "D_PRINT_FLOAT", value: 8, isUnsigned: true)
!95 = !DIEnumerator(name: "D_PRINT_VOID", value: 9, isUnsigned: true)
!96 = !{!97, !98, !101, !102, !104, !105, !106, !189}
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "demangle_component", file: !4, line: 412, size: 192, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !4, line: 415, baseType: !3, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !107, file: !4, line: 519, baseType: !111, size: 128, offset: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !107, file: !4, line: 417, size: 128, elements: !112)
!112 = !{!113, !118, !130, !135, !142, !147, !152, !165, !170, !175, !179, !184}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "s_name", scope: !111, file: !4, line: 426, baseType: !114, size: 128)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 420, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !114, file: !4, line: 424, baseType: !102, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !114, file: !4, line: 425, baseType: !97, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "s_operator", scope: !111, file: !4, line: 433, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 429, size: 64, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !119, file: !4, line: 432, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "demangle_operator_info", file: !84, line: 36, size: 192, elements: !125)
!125 = !{!126, !127, !128, !129}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !124, file: !84, line: 39, baseType: !102, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !84, line: 41, baseType: !102, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !124, file: !84, line: 43, baseType: !97, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !124, file: !84, line: 45, baseType: !97, size: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "s_extended_operator", scope: !111, file: !4, line: 442, baseType: !131, size: 128)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 436, size: 128, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !131, file: !4, line: 439, baseType: !97, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !4, line: 441, baseType: !106, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "s_fixed", scope: !111, file: !4, line: 453, baseType: !136, size: 128)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 445, size: 128, elements: !137)
!137 = !{!138, !139, !141}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !136, file: !4, line: 448, baseType: !106, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "accum", scope: !136, file: !4, line: 450, baseType: !140, size: 16, offset: 64)
!140 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sat", scope: !136, file: !4, line: 452, baseType: !140, size: 16, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "s_ctor", scope: !111, file: !4, line: 462, baseType: !143, size: 128)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 456, size: 128, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !143, file: !4, line: 459, baseType: !73, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !4, line: 461, baseType: !106, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "s_dtor", scope: !111, file: !4, line: 471, baseType: !148, size: 128)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 465, size: 128, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !148, file: !4, line: 468, baseType: !78, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !4, line: 470, baseType: !106, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "s_builtin", scope: !111, file: !4, line: 478, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 474, size: 64, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !4, line: 477, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "demangle_builtin_type_info", file: !84, line: 76, size: 256, elements: !159)
!159 = !{!160, !161, !162, !163, !164}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !84, line: 79, baseType: !102, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !158, file: !84, line: 81, baseType: !97, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "java_name", scope: !158, file: !84, line: 83, baseType: !102, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "java_len", scope: !158, file: !84, line: 85, baseType: !97, size: 32, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !158, file: !84, line: 87, baseType: !83, size: 32, offset: 224)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "s_string", scope: !111, file: !4, line: 487, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 481, size: 128, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !166, file: !4, line: 484, baseType: !102, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !166, file: !4, line: 486, baseType: !97, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "s_number", scope: !111, file: !4, line: 494, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 490, size: 64, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !171, file: !4, line: 493, baseType: !174, size: 64)
!174 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "s_character", scope: !111, file: !4, line: 500, baseType: !176, size: 32)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 497, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "character", scope: !176, file: !4, line: 499, baseType: !97, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "s_binary", scope: !111, file: !4, line: 509, baseType: !180, size: 128)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 503, size: 128, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !180, file: !4, line: 506, baseType: !106, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !180, file: !4, line: 508, baseType: !106, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "s_unary_num", scope: !111, file: !4, line: 517, baseType: !185, size: 128)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !4, line: 511, size: 128, elements: !186)
!186 = !{!187, !188}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !185, file: !4, line: 514, baseType: !106, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !185, file: !4, line: 516, baseType: !97, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!190 = !{i32 2, !"Dwarf Version", i32 4}
!191 = !{i32 2, !"Debug Info Version", i32 3}
!192 = !{i32 1, !"wchar_size", i32 4}
!193 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!194 = distinct !DISubprogram(name: "atoi", scope: !195, file: !195, line: 361, type: !196, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !198)
!195 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!196 = !DISubroutineType(types: !197)
!197 = !{!97, !102}
!198 = !{!199}
!199 = !DILocalVariable(name: "__nptr", arg: 1, scope: !194, file: !195, line: 361, type: !102)
!200 = !DILocation(line: 0, scope: !194)
!201 = !DILocation(line: 363, column: 16, scope: !194)
!202 = !DILocation(line: 363, column: 10, scope: !194)
!203 = !DILocation(line: 363, column: 3, scope: !194)
!204 = distinct !DISubprogram(name: "atol", scope: !195, file: !195, line: 366, type: !205, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{!174, !102}
!207 = !{!208}
!208 = !DILocalVariable(name: "__nptr", arg: 1, scope: !204, file: !195, line: 366, type: !102)
!209 = !DILocation(line: 0, scope: !204)
!210 = !DILocation(line: 368, column: 10, scope: !204)
!211 = !DILocation(line: 368, column: 3, scope: !204)
!212 = distinct !DISubprogram(name: "atoll", scope: !195, file: !195, line: 373, type: !213, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !102}
!215 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!216 = !{!217}
!217 = !DILocalVariable(name: "__nptr", arg: 1, scope: !212, file: !195, line: 373, type: !102)
!218 = !DILocation(line: 0, scope: !212)
!219 = !DILocation(line: 375, column: 10, scope: !212)
!220 = !DILocation(line: 375, column: 3, scope: !212)
!221 = distinct !DISubprogram(name: "bsearch", scope: !222, file: !222, line: 20, type: !223, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !234)
!222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!223 = !DISubroutineType(types: !224)
!224 = !{!101, !225, !225, !227, !227, !230}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !228, line: 46, baseType: !229)
!228 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!229 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !195, line: 808, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!97, !225, !225}
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244}
!235 = !DILocalVariable(name: "__key", arg: 1, scope: !221, file: !222, line: 20, type: !225)
!236 = !DILocalVariable(name: "__base", arg: 2, scope: !221, file: !222, line: 20, type: !225)
!237 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !221, file: !222, line: 20, type: !227)
!238 = !DILocalVariable(name: "__size", arg: 4, scope: !221, file: !222, line: 20, type: !227)
!239 = !DILocalVariable(name: "__compar", arg: 5, scope: !221, file: !222, line: 21, type: !230)
!240 = !DILocalVariable(name: "__l", scope: !221, file: !222, line: 23, type: !227)
!241 = !DILocalVariable(name: "__u", scope: !221, file: !222, line: 23, type: !227)
!242 = !DILocalVariable(name: "__idx", scope: !221, file: !222, line: 23, type: !227)
!243 = !DILocalVariable(name: "__p", scope: !221, file: !222, line: 24, type: !225)
!244 = !DILocalVariable(name: "__comparison", scope: !221, file: !222, line: 25, type: !97)
!245 = !DILocation(line: 0, scope: !221)
!246 = !DILocation(line: 29, column: 3, scope: !221)
!247 = !DILocation(line: 27, column: 7, scope: !221)
!248 = !DILocation(line: 29, column: 14, scope: !221)
!249 = !DILocation(line: 31, column: 20, scope: !250)
!250 = distinct !DILexicalBlock(scope: !221, file: !222, line: 30, column: 5)
!251 = !DILocation(line: 31, column: 27, scope: !250)
!252 = !DILocation(line: 32, column: 56, scope: !250)
!253 = !DILocation(line: 32, column: 47, scope: !250)
!254 = !DILocation(line: 33, column: 22, scope: !250)
!255 = !DILocation(line: 34, column: 24, scope: !256)
!256 = distinct !DILexicalBlock(scope: !250, file: !222, line: 34, column: 11)
!257 = !DILocation(line: 34, column: 11, scope: !250)
!258 = !DILocation(line: 36, column: 29, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !222, line: 36, column: 16)
!260 = !DILocation(line: 36, column: 16, scope: !256)
!261 = !DILocation(line: 37, column: 14, scope: !259)
!262 = distinct !{!262, !246, !263}
!263 = !DILocation(line: 40, column: 5, scope: !221)
!264 = !DILocation(line: 43, column: 1, scope: !221)
!265 = distinct !DISubprogram(name: "atof", scope: !266, file: !266, line: 25, type: !267, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !270)
!266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !102}
!269 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!270 = !{!271}
!271 = !DILocalVariable(name: "__nptr", arg: 1, scope: !265, file: !266, line: 25, type: !102)
!272 = !DILocation(line: 0, scope: !265)
!273 = !DILocation(line: 27, column: 10, scope: !265)
!274 = !DILocation(line: 27, column: 3, scope: !265)
!275 = distinct !DISubprogram(name: "vprintf", scope: !276, file: !276, line: 39, type: !277, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !287)
!276 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!277 = !DISubroutineType(types: !278)
!278 = !{!97, !279, !280}
!279 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 28, size: 192, elements: !282)
!282 = !{!283, !284, !285, !286}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !281, file: !1, line: 28, baseType: !5, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !281, file: !1, line: 28, baseType: !5, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !281, file: !1, line: 28, baseType: !101, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !281, file: !1, line: 28, baseType: !101, size: 64, offset: 128)
!287 = !{!288, !289}
!288 = !DILocalVariable(name: "__fmt", arg: 1, scope: !275, file: !276, line: 39, type: !279)
!289 = !DILocalVariable(name: "__arg", arg: 2, scope: !275, file: !276, line: 39, type: !280)
!290 = !DILocation(line: 0, scope: !275)
!291 = !DILocation(line: 41, column: 20, scope: !275)
!292 = !DILocation(line: 41, column: 10, scope: !275)
!293 = !DILocation(line: 41, column: 3, scope: !275)
!294 = distinct !DISubprogram(name: "getchar", scope: !276, file: !276, line: 47, type: !295, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{!97}
!297 = !{}
!298 = !DILocation(line: 49, column: 16, scope: !294)
!299 = !DILocation(line: 49, column: 10, scope: !294)
!300 = !DILocation(line: 49, column: 3, scope: !294)
!301 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !276, file: !276, line: 56, type: !302, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !359)
!302 = !DISubroutineType(types: !303)
!303 = !{!97, !304}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !306, line: 7, baseType: !307)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !308, line: 49, size: 1728, elements: !309)
!308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !325, !327, !328, !329, !332, !334, !336, !340, !343, !345, !348, !351, !352, !353, !354, !355}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !307, file: !308, line: 51, baseType: !97, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !307, file: !308, line: 54, baseType: !99, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !307, file: !308, line: 55, baseType: !99, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !307, file: !308, line: 56, baseType: !99, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !307, file: !308, line: 57, baseType: !99, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !307, file: !308, line: 58, baseType: !99, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !307, file: !308, line: 59, baseType: !99, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !307, file: !308, line: 60, baseType: !99, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !307, file: !308, line: 61, baseType: !99, size: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !307, file: !308, line: 64, baseType: !99, size: 64, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !307, file: !308, line: 65, baseType: !99, size: 64, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !307, file: !308, line: 66, baseType: !99, size: 64, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !307, file: !308, line: 68, baseType: !323, size: 64, offset: 768)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !308, line: 36, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !307, file: !308, line: 70, baseType: !326, size: 64, offset: 832)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !307, file: !308, line: 72, baseType: !97, size: 32, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !307, file: !308, line: 73, baseType: !97, size: 32, offset: 928)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !307, file: !308, line: 74, baseType: !330, size: 64, offset: 960)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !331, line: 152, baseType: !174)
!331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !307, file: !308, line: 77, baseType: !333, size: 16, offset: 1024)
!333 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !307, file: !308, line: 78, baseType: !335, size: 8, offset: 1040)
!335 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !307, file: !308, line: 79, baseType: !337, size: 8, offset: 1048)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 8, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 1)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !307, file: !308, line: 81, baseType: !341, size: 64, offset: 1088)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !308, line: 43, baseType: null)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !307, file: !308, line: 89, baseType: !344, size: 64, offset: 1152)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !331, line: 153, baseType: !174)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !307, file: !308, line: 91, baseType: !346, size: 64, offset: 1216)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !308, line: 37, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !307, file: !308, line: 92, baseType: !349, size: 64, offset: 1280)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !308, line: 38, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !307, file: !308, line: 93, baseType: !326, size: 64, offset: 1344)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !307, file: !308, line: 94, baseType: !101, size: 64, offset: 1408)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !307, file: !308, line: 95, baseType: !227, size: 64, offset: 1472)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !307, file: !308, line: 96, baseType: !97, size: 32, offset: 1536)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !307, file: !308, line: 98, baseType: !356, size: 160, offset: 1568)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 160, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 20)
!359 = !{!360}
!360 = !DILocalVariable(name: "__fp", arg: 1, scope: !301, file: !276, line: 56, type: !304)
!361 = !DILocation(line: 0, scope: !301)
!362 = !DILocation(line: 58, column: 10, scope: !301)
!363 = !DILocation(line: 58, column: 3, scope: !301)
!364 = distinct !DISubprogram(name: "getc_unlocked", scope: !276, file: !276, line: 66, type: !302, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!365 = !{!366}
!366 = !DILocalVariable(name: "__fp", arg: 1, scope: !364, file: !276, line: 66, type: !304)
!367 = !DILocation(line: 0, scope: !364)
!368 = !DILocation(line: 68, column: 10, scope: !364)
!369 = !DILocation(line: 68, column: 3, scope: !364)
!370 = distinct !DISubprogram(name: "getchar_unlocked", scope: !276, file: !276, line: 73, type: !295, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !297)
!371 = !DILocation(line: 75, column: 10, scope: !370)
!372 = !DILocation(line: 75, column: 3, scope: !370)
!373 = distinct !DISubprogram(name: "putchar", scope: !276, file: !276, line: 82, type: !374, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{!97, !97}
!376 = !{!377}
!377 = !DILocalVariable(name: "__c", arg: 1, scope: !373, file: !276, line: 82, type: !97)
!378 = !DILocation(line: 0, scope: !373)
!379 = !DILocation(line: 84, column: 21, scope: !373)
!380 = !DILocation(line: 84, column: 10, scope: !373)
!381 = !DILocation(line: 84, column: 3, scope: !373)
!382 = distinct !DISubprogram(name: "fputc_unlocked", scope: !276, file: !276, line: 91, type: !383, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!97, !97, !304}
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "__c", arg: 1, scope: !382, file: !276, line: 91, type: !97)
!387 = !DILocalVariable(name: "__stream", arg: 2, scope: !382, file: !276, line: 91, type: !304)
!388 = !DILocation(line: 0, scope: !382)
!389 = !DILocation(line: 93, column: 10, scope: !382)
!390 = !DILocation(line: 93, column: 3, scope: !382)
!391 = distinct !DISubprogram(name: "putc_unlocked", scope: !276, file: !276, line: 101, type: !383, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !392)
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "__c", arg: 1, scope: !391, file: !276, line: 101, type: !97)
!394 = !DILocalVariable(name: "__stream", arg: 2, scope: !391, file: !276, line: 101, type: !304)
!395 = !DILocation(line: 0, scope: !391)
!396 = !DILocation(line: 103, column: 10, scope: !391)
!397 = !DILocation(line: 103, column: 3, scope: !391)
!398 = distinct !DISubprogram(name: "putchar_unlocked", scope: !276, file: !276, line: 108, type: !374, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !399)
!399 = !{!400}
!400 = !DILocalVariable(name: "__c", arg: 1, scope: !398, file: !276, line: 108, type: !97)
!401 = !DILocation(line: 0, scope: !398)
!402 = !DILocation(line: 110, column: 10, scope: !398)
!403 = !DILocation(line: 110, column: 3, scope: !398)
!404 = distinct !DISubprogram(name: "getline", scope: !276, file: !276, line: 118, type: !405, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !409)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !98, !408, !304}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !331, line: 193, baseType: !174)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!409 = !{!410, !411, !412}
!410 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !404, file: !276, line: 118, type: !98)
!411 = !DILocalVariable(name: "__n", arg: 2, scope: !404, file: !276, line: 118, type: !408)
!412 = !DILocalVariable(name: "__stream", arg: 3, scope: !404, file: !276, line: 118, type: !304)
!413 = !DILocation(line: 0, scope: !404)
!414 = !DILocation(line: 120, column: 10, scope: !404)
!415 = !DILocation(line: 120, column: 3, scope: !404)
!416 = distinct !DISubprogram(name: "feof_unlocked", scope: !276, file: !276, line: 128, type: !302, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !417)
!417 = !{!418}
!418 = !DILocalVariable(name: "__stream", arg: 1, scope: !416, file: !276, line: 128, type: !304)
!419 = !DILocation(line: 0, scope: !416)
!420 = !DILocation(line: 130, column: 10, scope: !416)
!421 = !DILocation(line: 130, column: 3, scope: !416)
!422 = distinct !DISubprogram(name: "ferror_unlocked", scope: !276, file: !276, line: 135, type: !302, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !423)
!423 = !{!424}
!424 = !DILocalVariable(name: "__stream", arg: 1, scope: !422, file: !276, line: 135, type: !304)
!425 = !DILocation(line: 0, scope: !422)
!426 = !DILocation(line: 137, column: 10, scope: !422)
!427 = !DILocation(line: 137, column: 3, scope: !422)
!428 = distinct !DISubprogram(name: "cplus_demangle_fill_component", scope: !1, file: !1, line: 59, type: !429, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!97, !106, !3, !106, !106}
!431 = !{!432, !433, !434, !435}
!432 = !DILocalVariable(name: "p", arg: 1, scope: !428, file: !1, line: 59, type: !106)
!433 = !DILocalVariable(name: "type", arg: 2, scope: !428, file: !1, line: 60, type: !3)
!434 = !DILocalVariable(name: "left", arg: 3, scope: !428, file: !1, line: 61, type: !106)
!435 = !DILocalVariable(name: "right", arg: 4, scope: !428, file: !1, line: 62, type: !106)
!436 = !DILocation(line: 0, scope: !428)
!437 = !DILocation(line: 64, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !428, file: !1, line: 64, column: 7)
!439 = !DILocation(line: 64, column: 7, scope: !428)
!440 = !DILocation(line: 66, column: 3, scope: !428)
!441 = !DILocation(line: 113, column: 17, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 113, column: 11)
!443 = distinct !DILexicalBlock(scope: !428, file: !1, line: 67, column: 5)
!444 = !DILocation(line: 113, column: 11, scope: !443)
!445 = !DILocation(line: 122, column: 6, scope: !428)
!446 = !DILocation(line: 122, column: 11, scope: !428)
!447 = !DILocation(line: 123, column: 6, scope: !428)
!448 = !DILocation(line: 123, column: 17, scope: !428)
!449 = !DILocation(line: 123, column: 22, scope: !428)
!450 = !DILocation(line: 124, column: 17, scope: !428)
!451 = !DILocation(line: 124, column: 23, scope: !428)
!452 = !DILocation(line: 126, column: 3, scope: !428)
!453 = !DILocation(line: 127, column: 1, scope: !428)
!454 = distinct !DISubprogram(name: "cplus_demangle_fill_builtin_type", scope: !1, file: !1, line: 132, type: !455, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!97, !106, !102}
!457 = !{!458, !459, !460, !461}
!458 = !DILocalVariable(name: "p", arg: 1, scope: !454, file: !1, line: 132, type: !106)
!459 = !DILocalVariable(name: "type_name", arg: 2, scope: !454, file: !1, line: 133, type: !102)
!460 = !DILocalVariable(name: "len", scope: !454, file: !1, line: 135, type: !97)
!461 = !DILocalVariable(name: "i", scope: !454, file: !1, line: 136, type: !5)
!462 = !DILocation(line: 0, scope: !454)
!463 = !DILocation(line: 138, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !454, file: !1, line: 138, column: 7)
!465 = !DILocation(line: 138, column: 30, scope: !464)
!466 = !DILocation(line: 138, column: 17, scope: !464)
!467 = !DILocation(line: 140, column: 9, scope: !454)
!468 = !DILocation(line: 141, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !454, file: !1, line: 141, column: 3)
!470 = !DILocation(line: 0, scope: !469)
!471 = !DILocation(line: 141, column: 17, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !1, line: 141, column: 3)
!473 = !DILocation(line: 141, column: 3, scope: !469)
!474 = !DILocation(line: 143, column: 50, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 143, column: 11)
!476 = distinct !DILexicalBlock(scope: !472, file: !1, line: 142, column: 5)
!477 = !DILocation(line: 143, column: 15, scope: !475)
!478 = !DILocation(line: 144, column: 4, scope: !475)
!479 = !DILocation(line: 144, column: 58, scope: !475)
!480 = !DILocation(line: 144, column: 7, scope: !475)
!481 = !DILocation(line: 144, column: 64, scope: !475)
!482 = !DILocation(line: 143, column: 11, scope: !476)
!483 = !DILocation(line: 146, column: 7, scope: !484)
!484 = distinct !DILexicalBlock(scope: !475, file: !1, line: 145, column: 2)
!485 = !DILocation(line: 146, column: 12, scope: !484)
!486 = !DILocation(line: 147, column: 27, scope: !484)
!487 = !DILocation(line: 147, column: 7, scope: !484)
!488 = !DILocation(line: 147, column: 19, scope: !484)
!489 = !DILocation(line: 147, column: 24, scope: !484)
!490 = !DILocation(line: 148, column: 4, scope: !484)
!491 = !DILocation(line: 141, column: 41, scope: !472)
!492 = !DILocation(line: 141, column: 3, scope: !472)
!493 = distinct !{!493, !473, !494}
!494 = !DILocation(line: 150, column: 5, scope: !469)
!495 = !DILocation(line: 152, column: 1, scope: !454)
!496 = distinct !DISubprogram(name: "cplus_demangle_fill_operator", scope: !1, file: !1, line: 157, type: !497, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!97, !106, !102, !97}
!499 = !{!500, !501, !502, !503, !504}
!500 = !DILocalVariable(name: "p", arg: 1, scope: !496, file: !1, line: 157, type: !106)
!501 = !DILocalVariable(name: "opname", arg: 2, scope: !496, file: !1, line: 158, type: !102)
!502 = !DILocalVariable(name: "args", arg: 3, scope: !496, file: !1, line: 158, type: !97)
!503 = !DILocalVariable(name: "len", scope: !496, file: !1, line: 160, type: !97)
!504 = !DILocalVariable(name: "i", scope: !496, file: !1, line: 161, type: !5)
!505 = !DILocation(line: 0, scope: !496)
!506 = !DILocation(line: 163, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !496, file: !1, line: 163, column: 7)
!508 = !DILocation(line: 163, column: 27, scope: !507)
!509 = !DILocation(line: 163, column: 17, scope: !507)
!510 = !DILocation(line: 165, column: 9, scope: !496)
!511 = !DILocation(line: 166, column: 8, scope: !512)
!512 = distinct !DILexicalBlock(scope: !496, file: !1, line: 166, column: 3)
!513 = !DILocation(line: 0, scope: !512)
!514 = !DILocation(line: 166, column: 15, scope: !515)
!515 = distinct !DILexicalBlock(scope: !512, file: !1, line: 166, column: 3)
!516 = !DILocation(line: 166, column: 43, scope: !515)
!517 = !DILocation(line: 166, column: 48, scope: !515)
!518 = !DILocation(line: 166, column: 3, scope: !512)
!519 = !DILocation(line: 168, column: 46, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 168, column: 11)
!521 = distinct !DILexicalBlock(scope: !515, file: !1, line: 167, column: 5)
!522 = !DILocation(line: 168, column: 15, scope: !520)
!523 = !DILocation(line: 169, column: 4, scope: !520)
!524 = !DILocation(line: 169, column: 43, scope: !520)
!525 = !DILocation(line: 169, column: 12, scope: !520)
!526 = !DILocation(line: 170, column: 4, scope: !520)
!527 = !DILocation(line: 170, column: 7, scope: !520)
!528 = !DILocation(line: 170, column: 57, scope: !520)
!529 = !DILocation(line: 168, column: 11, scope: !521)
!530 = !DILocation(line: 172, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !520, file: !1, line: 171, column: 2)
!532 = !DILocation(line: 172, column: 12, scope: !531)
!533 = !DILocation(line: 173, column: 26, scope: !531)
!534 = !DILocation(line: 173, column: 7, scope: !531)
!535 = !DILocation(line: 173, column: 20, scope: !531)
!536 = !DILocation(line: 173, column: 23, scope: !531)
!537 = !DILocation(line: 174, column: 4, scope: !531)
!538 = !DILocation(line: 166, column: 57, scope: !515)
!539 = !DILocation(line: 166, column: 3, scope: !515)
!540 = distinct !{!540, !518, !541}
!541 = !DILocation(line: 176, column: 5, scope: !512)
!542 = !DILocation(line: 178, column: 1, scope: !496)
!543 = distinct !DISubprogram(name: "cplus_demangle_v3_components", scope: !1, file: !1, line: 183, type: !544, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !547)
!544 = !DISubroutineType(types: !545)
!545 = !{!106, !102, !97, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!547 = !{!548, !549, !550, !551, !552, !553, !569}
!548 = !DILocalVariable(name: "mangled", arg: 1, scope: !543, file: !1, line: 183, type: !102)
!549 = !DILocalVariable(name: "options", arg: 2, scope: !543, file: !1, line: 183, type: !97)
!550 = !DILocalVariable(name: "mem", arg: 3, scope: !543, file: !1, line: 183, type: !546)
!551 = !DILocalVariable(name: "len", scope: !543, file: !1, line: 185, type: !227)
!552 = !DILocalVariable(name: "type", scope: !543, file: !1, line: 186, type: !97)
!553 = !DILocalVariable(name: "di", scope: !543, file: !1, line: 187, type: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "d_info", file: !84, line: 92, size: 704, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !554, file: !84, line: 95, baseType: !102, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !554, file: !84, line: 97, baseType: !102, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !554, file: !84, line: 99, baseType: !97, size: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !554, file: !84, line: 101, baseType: !102, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "comps", scope: !554, file: !84, line: 103, baseType: !106, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next_comp", scope: !554, file: !84, line: 105, baseType: !97, size: 32, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "num_comps", scope: !554, file: !84, line: 107, baseType: !97, size: 32, offset: 352)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !554, file: !84, line: 109, baseType: !189, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next_sub", scope: !554, file: !84, line: 111, baseType: !97, size: 32, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "num_subs", scope: !554, file: !84, line: 113, baseType: !97, size: 32, offset: 480)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "did_subs", scope: !554, file: !84, line: 117, baseType: !97, size: 32, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "last_name", scope: !554, file: !84, line: 119, baseType: !106, size: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "expansion", scope: !554, file: !84, line: 123, baseType: !97, size: 32, offset: 640)
!569 = !DILocalVariable(name: "dc", scope: !543, file: !1, line: 188, type: !106)
!570 = !DILocation(line: 0, scope: !543)
!571 = !DILocation(line: 187, column: 3, scope: !543)
!572 = !DILocation(line: 190, column: 9, scope: !543)
!573 = !DILocation(line: 192, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !543, file: !1, line: 192, column: 7)
!575 = !DILocation(line: 192, column: 18, scope: !574)
!576 = !DILocation(line: 192, column: 25, scope: !574)
!577 = !DILocation(line: 192, column: 28, scope: !574)
!578 = !DILocation(line: 192, column: 39, scope: !574)
!579 = !DILocation(line: 192, column: 7, scope: !543)
!580 = !DILocation(line: 196, column: 20, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 196, column: 11)
!582 = distinct !DILexicalBlock(scope: !574, file: !1, line: 195, column: 5)
!583 = !DILocation(line: 196, column: 34, scope: !581)
!584 = !DILocation(line: 196, column: 11, scope: !582)
!585 = !DILocation(line: 0, scope: !574)
!586 = !DILocation(line: 201, column: 3, scope: !543)
!587 = !DILocation(line: 204, column: 19, scope: !543)
!588 = !DILocation(line: 204, column: 16, scope: !543)
!589 = !DILocation(line: 204, column: 29, scope: !543)
!590 = !DILocation(line: 204, column: 8, scope: !543)
!591 = !DILocation(line: 203, column: 6, scope: !543)
!592 = !DILocation(line: 203, column: 12, scope: !543)
!593 = !DILocation(line: 206, column: 18, scope: !543)
!594 = !DILocation(line: 206, column: 15, scope: !543)
!595 = !DILocation(line: 206, column: 27, scope: !543)
!596 = !DILocation(line: 206, column: 7, scope: !543)
!597 = !DILocation(line: 205, column: 6, scope: !543)
!598 = !DILocation(line: 205, column: 11, scope: !543)
!599 = !DILocation(line: 207, column: 10, scope: !600)
!600 = distinct !DILexicalBlock(scope: !543, file: !1, line: 207, column: 7)
!601 = !DILocation(line: 207, column: 16, scope: !600)
!602 = !DILocation(line: 207, column: 24, scope: !600)
!603 = !DILocation(line: 207, column: 35, scope: !600)
!604 = !DILocation(line: 207, column: 7, scope: !543)
!605 = !DILocation(line: 209, column: 11, scope: !606)
!606 = distinct !DILexicalBlock(scope: !600, file: !1, line: 208, column: 5)
!607 = !DILocation(line: 210, column: 2, scope: !608)
!608 = distinct !DILexicalBlock(scope: !606, file: !1, line: 209, column: 11)
!609 = !DILocation(line: 211, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !1, line: 211, column: 11)
!611 = !DILocation(line: 211, column: 19, scope: !610)
!612 = !DILocation(line: 211, column: 11, scope: !606)
!613 = !DILocation(line: 212, column: 2, scope: !610)
!614 = !DILocation(line: 216, column: 9, scope: !615)
!615 = distinct !DILexicalBlock(scope: !543, file: !1, line: 216, column: 7)
!616 = !DILocation(line: 216, column: 7, scope: !543)
!617 = !DILocation(line: 217, column: 10, scope: !615)
!618 = !DILocation(line: 217, column: 5, scope: !615)
!619 = !DILocation(line: 219, column: 10, scope: !615)
!620 = !DILocation(line: 0, scope: !615)
!621 = !DILocation(line: 223, column: 16, scope: !622)
!622 = distinct !DILexicalBlock(scope: !543, file: !1, line: 223, column: 7)
!623 = !DILocation(line: 223, column: 31, scope: !622)
!624 = !DILocation(line: 223, column: 36, scope: !622)
!625 = !DILocation(line: 223, column: 39, scope: !622)
!626 = !DILocation(line: 223, column: 57, scope: !622)
!627 = !DILocation(line: 223, column: 7, scope: !543)
!628 = !DILocation(line: 226, column: 12, scope: !543)
!629 = !DILocation(line: 226, column: 3, scope: !543)
!630 = !DILocation(line: 228, column: 10, scope: !631)
!631 = distinct !DILexicalBlock(scope: !543, file: !1, line: 228, column: 7)
!632 = !DILocation(line: 0, scope: !631)
!633 = !DILocation(line: 228, column: 7, scope: !543)
!634 = !DILocation(line: 229, column: 10, scope: !631)
!635 = !DILocation(line: 229, column: 5, scope: !631)
!636 = !DILocation(line: 231, column: 5, scope: !631)
!637 = !DILocation(line: 234, column: 1, scope: !543)
