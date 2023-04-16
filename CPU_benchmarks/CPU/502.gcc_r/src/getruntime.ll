; ModuleID = 'getruntime.bc'
source_filename = "getruntime.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !29, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !30, metadata !DIExpression()), !dbg !31
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !32
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !33
  ret i32 %call, !dbg !34
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !35 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !38
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !39
  ret i32 %call, !dbg !40
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !41 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !105, metadata !DIExpression()), !dbg !106
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !107
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !107
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !107
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !107
  %cmp = icmp uge i8* %0, %1, !dbg !107
  %conv1 = zext i1 %cmp to i64, !dbg !107
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !107
  %tobool = icmp eq i64 %expval, 0, !dbg !107
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !107

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !107
  br label %cond.end, !dbg !107

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !107
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !107
  %2 = load i8, i8* %0, align 1, !dbg !107
  %conv3 = zext i8 %2 to i32, !dbg !107
  br label %cond.end, !dbg !107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !107
  ret i32 %cond, !dbg !108
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !111, metadata !DIExpression()), !dbg !112
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !113
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !113
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !113
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !113
  %cmp = icmp uge i8* %0, %1, !dbg !113
  %conv1 = zext i1 %cmp to i64, !dbg !113
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !113
  %tobool = icmp eq i64 %expval, 0, !dbg !113
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !113

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !113
  br label %cond.end, !dbg !113

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !113
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !113
  %2 = load i8, i8* %0, align 1, !dbg !113
  %conv3 = zext i8 %2 to i32, !dbg !113
  br label %cond.end, !dbg !113

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !113
  ret i32 %cond, !dbg !114
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !115 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !116
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !116
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !116
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !116
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !116
  %cmp = icmp uge i8* %1, %2, !dbg !116
  %conv1 = zext i1 %cmp to i64, !dbg !116
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !116
  %tobool = icmp eq i64 %expval, 0, !dbg !116
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !116

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !116
  br label %cond.end, !dbg !116

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !116
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !116
  %3 = load i8, i8* %1, align 1, !dbg !116
  %conv3 = zext i8 %3 to i32, !dbg !116
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !116
  ret i32 %cond, !dbg !117
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !118 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !124
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !125
  ret i32 %call, !dbg !126
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !127 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !132, metadata !DIExpression()), !dbg !133
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !134
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !134
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !134
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !134
  %cmp = icmp uge i8* %0, %1, !dbg !134
  %conv1 = zext i1 %cmp to i64, !dbg !134
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !134
  %tobool = icmp eq i64 %expval, 0, !dbg !134
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !134

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !134
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !134
  br label %cond.end, !dbg !134

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !134
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !134
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !134
  store i8 %conv2, i8* %0, align 1, !dbg !134
  %conv6 = and i32 %__c, 255, !dbg !134
  br label %cond.end, !dbg !134

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !134
  ret i32 %cond, !dbg !135
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !136 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !138, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !139, metadata !DIExpression()), !dbg !140
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !141
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !141
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !141
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !141
  %cmp = icmp uge i8* %0, %1, !dbg !141
  %conv1 = zext i1 %cmp to i64, !dbg !141
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !141
  %tobool = icmp eq i64 %expval, 0, !dbg !141
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !141

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !141
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !141
  br label %cond.end, !dbg !141

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !141
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !141
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !141
  store i8 %conv2, i8* %0, align 1, !dbg !141
  %conv6 = and i32 %__c, 255, !dbg !141
  br label %cond.end, !dbg !141

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !141
  ret i32 %cond, !dbg !142
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !147
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !147
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !147
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !147
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !147
  %cmp = icmp uge i8* %1, %2, !dbg !147
  %conv1 = zext i1 %cmp to i64, !dbg !147
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !147
  %tobool = icmp eq i64 %expval, 0, !dbg !147
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !147

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !147
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !147
  br label %cond.end, !dbg !147

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !147
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !147
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !147
  store i8 %conv4, i8* %1, align 1, !dbg !147
  %conv6 = and i32 %__c, 255, !dbg !147
  br label %cond.end, !dbg !147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !147
  ret i32 %cond, !dbg !148
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !149 {
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

; Function Attrs: nounwind uwtable
define dso_local i64 @get_run_time() local_unnamed_addr #3 !dbg !174 {
entry:
  %rusage = alloca %struct.rusage, align 8
  %0 = bitcast %struct.rusage* %rusage to i8*, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #7, !dbg !262
  call void @llvm.dbg.value(metadata %struct.rusage* %rusage, metadata !178, metadata !DIExpression(DW_OP_deref)), !dbg !263
  %call = call i32 @getrusage(i32 0, %struct.rusage* nonnull %rusage) #6, !dbg !264
  %tv_sec = getelementptr inbounds %struct.rusage, %struct.rusage* %rusage, i64 0, i32 0, i32 0, !dbg !265
  %1 = load i64, i64* %tv_sec, align 8, !dbg !265
  %mul = mul nsw i64 %1, 1000000, !dbg !266
  %tv_usec = getelementptr inbounds %struct.rusage, %struct.rusage* %rusage, i64 0, i32 0, i32 1, !dbg !267
  %2 = load i64, i64* %tv_usec, align 8, !dbg !267
  %add = add nsw i64 %mul, %2, !dbg !268
  %tv_sec2 = getelementptr inbounds %struct.rusage, %struct.rusage* %rusage, i64 0, i32 1, i32 0, !dbg !269
  %3 = load i64, i64* %tv_sec2, align 8, !dbg !269
  %mul3 = mul nsw i64 %3, 1000000, !dbg !270
  %add4 = add nsw i64 %add, %mul3, !dbg !271
  %tv_usec6 = getelementptr inbounds %struct.rusage, %struct.rusage* %rusage, i64 0, i32 1, i32 1, !dbg !272
  %4 = load i64, i64* %tv_usec6, align 8, !dbg !272
  %add7 = add nsw i64 %add4, %4, !dbg !273
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #7, !dbg !274
  ret i64 %add7, !dbg !275
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local i32 @getrusage(i32, %struct.rusage*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "getruntime.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!10 = distinct !DISubprogram(name: "vprintf", scope: !11, file: !11, line: 39, type: !12, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !19}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !21)
!21 = !{!22, !24, !25, !27}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !20, file: !1, baseType: !23, size: 32)
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !20, file: !1, baseType: !23, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !20, file: !1, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !20, file: !1, baseType: !26, size: 64, offset: 128)
!28 = !{!29, !30}
!29 = !DILocalVariable(name: "__fmt", arg: 1, scope: !10, file: !11, line: 39, type: !15)
!30 = !DILocalVariable(name: "__arg", arg: 2, scope: !10, file: !11, line: 39, type: !19)
!31 = !DILocation(line: 0, scope: !10)
!32 = !DILocation(line: 41, column: 20, scope: !10)
!33 = !DILocation(line: 41, column: 10, scope: !10)
!34 = !DILocation(line: 41, column: 3, scope: !10)
!35 = distinct !DISubprogram(name: "getchar", scope: !11, file: !11, line: 47, type: !36, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{!14}
!38 = !DILocation(line: 49, column: 16, scope: !35)
!39 = !DILocation(line: 49, column: 10, scope: !35)
!40 = !DILocation(line: 49, column: 3, scope: !35)
!41 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !11, file: !11, line: 56, type: !42, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!42 = !DISubroutineType(types: !43)
!43 = !{!14, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 7, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !66, !68, !69, !70, !74, !76, !78, !82, !85, !87, !90, !93, !94, !95, !99, !100}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 51, baseType: !14, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 54, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 55, baseType: !52, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 56, baseType: !52, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 57, baseType: !52, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 58, baseType: !52, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 59, baseType: !52, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 60, baseType: !52, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 61, baseType: !52, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 64, baseType: !52, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 65, baseType: !52, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 66, baseType: !52, size: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 68, baseType: !64, size: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 36, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 70, baseType: !67, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 72, baseType: !14, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 73, baseType: !14, size: 32, offset: 928)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 74, baseType: !71, size: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !72, line: 152, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!73 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 77, baseType: !75, size: 16, offset: 1024)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 78, baseType: !77, size: 8, offset: 1040)
!77 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 79, baseType: !79, size: 8, offset: 1048)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 81, baseType: !83, size: 64, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 43, baseType: null)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 89, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !72, line: 153, baseType: !73)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !47, file: !48, line: 91, baseType: !88, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !48, line: 37, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !47, file: !48, line: 92, baseType: !91, size: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !48, line: 38, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !47, file: !48, line: 93, baseType: !67, size: 64, offset: 1344)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !47, file: !48, line: 94, baseType: !26, size: 64, offset: 1408)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 95, baseType: !96, size: 64, offset: 1472)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 96, baseType: !14, size: 32, offset: 1536)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 98, baseType: !101, size: 160, offset: 1568)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 20)
!104 = !{!105}
!105 = !DILocalVariable(name: "__fp", arg: 1, scope: !41, file: !11, line: 56, type: !44)
!106 = !DILocation(line: 0, scope: !41)
!107 = !DILocation(line: 58, column: 10, scope: !41)
!108 = !DILocation(line: 58, column: 3, scope: !41)
!109 = distinct !DISubprogram(name: "getc_unlocked", scope: !11, file: !11, line: 66, type: !42, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!110 = !{!111}
!111 = !DILocalVariable(name: "__fp", arg: 1, scope: !109, file: !11, line: 66, type: !44)
!112 = !DILocation(line: 0, scope: !109)
!113 = !DILocation(line: 68, column: 10, scope: !109)
!114 = !DILocation(line: 68, column: 3, scope: !109)
!115 = distinct !DISubprogram(name: "getchar_unlocked", scope: !11, file: !11, line: 73, type: !36, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!116 = !DILocation(line: 75, column: 10, scope: !115)
!117 = !DILocation(line: 75, column: 3, scope: !115)
!118 = distinct !DISubprogram(name: "putchar", scope: !11, file: !11, line: 82, type: !119, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{!14, !14}
!121 = !{!122}
!122 = !DILocalVariable(name: "__c", arg: 1, scope: !118, file: !11, line: 82, type: !14)
!123 = !DILocation(line: 0, scope: !118)
!124 = !DILocation(line: 84, column: 21, scope: !118)
!125 = !DILocation(line: 84, column: 10, scope: !118)
!126 = !DILocation(line: 84, column: 3, scope: !118)
!127 = distinct !DISubprogram(name: "fputc_unlocked", scope: !11, file: !11, line: 91, type: !128, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{!14, !14, !44}
!130 = !{!131, !132}
!131 = !DILocalVariable(name: "__c", arg: 1, scope: !127, file: !11, line: 91, type: !14)
!132 = !DILocalVariable(name: "__stream", arg: 2, scope: !127, file: !11, line: 91, type: !44)
!133 = !DILocation(line: 0, scope: !127)
!134 = !DILocation(line: 93, column: 10, scope: !127)
!135 = !DILocation(line: 93, column: 3, scope: !127)
!136 = distinct !DISubprogram(name: "putc_unlocked", scope: !11, file: !11, line: 101, type: !128, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138, !139}
!138 = !DILocalVariable(name: "__c", arg: 1, scope: !136, file: !11, line: 101, type: !14)
!139 = !DILocalVariable(name: "__stream", arg: 2, scope: !136, file: !11, line: 101, type: !44)
!140 = !DILocation(line: 0, scope: !136)
!141 = !DILocation(line: 103, column: 10, scope: !136)
!142 = !DILocation(line: 103, column: 3, scope: !136)
!143 = distinct !DISubprogram(name: "putchar_unlocked", scope: !11, file: !11, line: 108, type: !119, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!145}
!145 = !DILocalVariable(name: "__c", arg: 1, scope: !143, file: !11, line: 108, type: !14)
!146 = !DILocation(line: 0, scope: !143)
!147 = !DILocation(line: 110, column: 10, scope: !143)
!148 = !DILocation(line: 110, column: 3, scope: !143)
!149 = distinct !DISubprogram(name: "getline", scope: !11, file: !11, line: 118, type: !150, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !153, !154, !44}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !72, line: 193, baseType: !73)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!155 = !{!156, !157, !158}
!156 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !149, file: !11, line: 118, type: !153)
!157 = !DILocalVariable(name: "__n", arg: 2, scope: !149, file: !11, line: 118, type: !154)
!158 = !DILocalVariable(name: "__stream", arg: 3, scope: !149, file: !11, line: 118, type: !44)
!159 = !DILocation(line: 0, scope: !149)
!160 = !DILocation(line: 120, column: 10, scope: !149)
!161 = !DILocation(line: 120, column: 3, scope: !149)
!162 = distinct !DISubprogram(name: "feof_unlocked", scope: !11, file: !11, line: 128, type: !42, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!163 = !{!164}
!164 = !DILocalVariable(name: "__stream", arg: 1, scope: !162, file: !11, line: 128, type: !44)
!165 = !DILocation(line: 0, scope: !162)
!166 = !DILocation(line: 130, column: 10, scope: !162)
!167 = !DILocation(line: 130, column: 3, scope: !162)
!168 = distinct !DISubprogram(name: "ferror_unlocked", scope: !11, file: !11, line: 135, type: !42, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "__stream", arg: 1, scope: !168, file: !11, line: 135, type: !44)
!171 = !DILocation(line: 0, scope: !168)
!172 = !DILocation(line: 137, column: 10, scope: !168)
!173 = !DILocation(line: 137, column: 3, scope: !168)
!174 = distinct !DISubprogram(name: "get_run_time", scope: !1, file: !1, line: 102, type: !175, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{!73}
!177 = !{!178}
!178 = !DILocalVariable(name: "rusage", scope: !174, file: !1, line: 105, type: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !180, line: 33, size: 1152, elements: !181)
!180 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_rusage.h", directory: "")
!181 = !{!182, !190, !191, !197, !202, !207, !212, !217, !222, !227, !232, !237, !242, !247, !252, !257}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !179, file: !180, line: 36, baseType: !183, size: 128)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !184, line: 8, size: 128, elements: !185)
!184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!185 = !{!186, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !183, file: !184, line: 10, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !72, line: 160, baseType: !73)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !183, file: !184, line: 11, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !72, line: 162, baseType: !73)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !179, file: !180, line: 38, baseType: !183, size: 128, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 40, baseType: !192, size: 64, offset: 256)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 40, size: 64, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !192, file: !180, line: 42, baseType: !73, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_maxrss_word", scope: !192, file: !180, line: 43, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !72, line: 196, baseType: !73)
!197 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 47, baseType: !198, size: 64, offset: 320)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 47, size: 64, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !198, file: !180, line: 49, baseType: !73, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_ixrss_word", scope: !198, file: !180, line: 50, baseType: !196, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 53, baseType: !203, size: 64, offset: 384)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 53, size: 64, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !203, file: !180, line: 55, baseType: !73, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_idrss_word", scope: !203, file: !180, line: 56, baseType: !196, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 59, baseType: !208, size: 64, offset: 448)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 59, size: 64, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !208, file: !180, line: 61, baseType: !73, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_isrss_word", scope: !208, file: !180, line: 62, baseType: !196, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 66, baseType: !213, size: 64, offset: 512)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 66, size: 64, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !213, file: !180, line: 68, baseType: !73, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_minflt_word", scope: !213, file: !180, line: 69, baseType: !196, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 72, baseType: !218, size: 64, offset: 576)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 72, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !218, file: !180, line: 74, baseType: !73, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_majflt_word", scope: !218, file: !180, line: 75, baseType: !196, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 78, baseType: !223, size: 64, offset: 640)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 78, size: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !223, file: !180, line: 80, baseType: !73, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nswap_word", scope: !223, file: !180, line: 81, baseType: !196, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 85, baseType: !228, size: 64, offset: 704)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 85, size: 64, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !228, file: !180, line: 87, baseType: !73, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_inblock_word", scope: !228, file: !180, line: 88, baseType: !196, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 91, baseType: !233, size: 64, offset: 768)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 91, size: 64, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !233, file: !180, line: 93, baseType: !73, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_oublock_word", scope: !233, file: !180, line: 94, baseType: !196, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 97, baseType: !238, size: 64, offset: 832)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 97, size: 64, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !238, file: !180, line: 99, baseType: !73, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_msgsnd_word", scope: !238, file: !180, line: 100, baseType: !196, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 103, baseType: !243, size: 64, offset: 896)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 103, size: 64, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !243, file: !180, line: 105, baseType: !73, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_msgrcv_word", scope: !243, file: !180, line: 106, baseType: !196, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 109, baseType: !248, size: 64, offset: 960)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 109, size: 64, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !248, file: !180, line: 111, baseType: !73, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nsignals_word", scope: !248, file: !180, line: 112, baseType: !196, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 117, baseType: !253, size: 64, offset: 1024)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 117, size: 64, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !253, file: !180, line: 119, baseType: !73, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nvcsw_word", scope: !253, file: !180, line: 120, baseType: !196, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 124, baseType: !258, size: 64, offset: 1088)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 124, size: 64, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !258, file: !180, line: 126, baseType: !73, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nivcsw_word", scope: !258, file: !180, line: 127, baseType: !196, size: 64)
!262 = !DILocation(line: 105, column: 3, scope: !174)
!263 = !DILocation(line: 0, scope: !174)
!264 = !DILocation(line: 107, column: 3, scope: !174)
!265 = !DILocation(line: 108, column: 27, scope: !174)
!266 = !DILocation(line: 108, column: 34, scope: !174)
!267 = !DILocation(line: 108, column: 62, scope: !174)
!268 = !DILocation(line: 108, column: 44, scope: !174)
!269 = !DILocation(line: 109, column: 22, scope: !174)
!270 = !DILocation(line: 109, column: 29, scope: !174)
!271 = !DILocation(line: 109, column: 4, scope: !174)
!272 = !DILocation(line: 109, column: 57, scope: !174)
!273 = !DILocation(line: 109, column: 39, scope: !174)
!274 = !DILocation(line: 125, column: 1, scope: !174)
!275 = !DILocation(line: 108, column: 3, scope: !174)
