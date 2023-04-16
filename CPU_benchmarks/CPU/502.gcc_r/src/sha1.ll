; ModuleID = 'sha1.bc'
source_filename = "sha1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.sha1_ctx = type { i32, i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@fillbuf = internal constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !30 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !45, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !46, metadata !DIExpression()), !dbg !47
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !48
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !49
  ret i32 %call, !dbg !50
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !51 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !55
  ret i32 %call, !dbg !56
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !57 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !117, metadata !DIExpression()), !dbg !118
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !119
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !119
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !119
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !119
  %cmp = icmp uge i8* %0, %1, !dbg !119
  %conv1 = zext i1 %cmp to i64, !dbg !119
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !119
  %tobool = icmp eq i64 %expval, 0, !dbg !119
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !119

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !119
  br label %cond.end, !dbg !119

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !119
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !119
  %2 = load i8, i8* %0, align 1, !dbg !119
  %conv3 = zext i8 %2 to i32, !dbg !119
  br label %cond.end, !dbg !119

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !119
  ret i32 %cond, !dbg !120
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !121 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !123, metadata !DIExpression()), !dbg !124
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !125
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !125
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !125
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !125
  %cmp = icmp uge i8* %0, %1, !dbg !125
  %conv1 = zext i1 %cmp to i64, !dbg !125
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !125
  %tobool = icmp eq i64 %expval, 0, !dbg !125
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !125

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !125
  br label %cond.end, !dbg !125

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !125
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !125
  %2 = load i8, i8* %0, align 1, !dbg !125
  %conv3 = zext i8 %2 to i32, !dbg !125
  br label %cond.end, !dbg !125

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !125
  ret i32 %cond, !dbg !126
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !127 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !128
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !128
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !128
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !128
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !128
  %cmp = icmp uge i8* %1, %2, !dbg !128
  %conv1 = zext i1 %cmp to i64, !dbg !128
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !128
  %tobool = icmp eq i64 %expval, 0, !dbg !128
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !128

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !128
  br label %cond.end, !dbg !128

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !128
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !128
  %3 = load i8, i8* %1, align 1, !dbg !128
  %conv3 = zext i8 %3 to i32, !dbg !128
  br label %cond.end, !dbg !128

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !128
  ret i32 %cond, !dbg !129
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !130 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !136
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !137
  ret i32 %call, !dbg !138
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !139 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !143, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !144, metadata !DIExpression()), !dbg !145
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !146
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !146
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !146
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !146
  %cmp = icmp uge i8* %0, %1, !dbg !146
  %conv1 = zext i1 %cmp to i64, !dbg !146
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !146
  %tobool = icmp eq i64 %expval, 0, !dbg !146
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !146

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !146
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !146
  br label %cond.end, !dbg !146

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !146
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !146
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !146
  store i8 %conv2, i8* %0, align 1, !dbg !146
  %conv6 = and i32 %__c, 255, !dbg !146
  br label %cond.end, !dbg !146

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !146
  ret i32 %cond, !dbg !147
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !148 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !150, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !151, metadata !DIExpression()), !dbg !152
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !153
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !153
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !153
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !153
  %cmp = icmp uge i8* %0, %1, !dbg !153
  %conv1 = zext i1 %cmp to i64, !dbg !153
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !153
  %tobool = icmp eq i64 %expval, 0, !dbg !153
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !153

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !153
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !153
  br label %cond.end, !dbg !153

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !153
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !153
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !153
  store i8 %conv2, i8* %0, align 1, !dbg !153
  %conv6 = and i32 %__c, 255, !dbg !153
  br label %cond.end, !dbg !153

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !153
  ret i32 %cond, !dbg !154
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !155 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !159
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !159
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !159
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !159
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !159
  %cmp = icmp uge i8* %1, %2, !dbg !159
  %conv1 = zext i1 %cmp to i64, !dbg !159
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !159
  %tobool = icmp eq i64 %expval, 0, !dbg !159
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !159

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !159
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !159
  br label %cond.end, !dbg !159

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !159
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !159
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !159
  store i8 %conv4, i8* %1, align 1, !dbg !159
  %conv6 = and i32 %__c, 255, !dbg !159
  br label %cond.end, !dbg !159

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !159
  ret i32 %cond, !dbg !160
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !168, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i64* %__n, metadata !169, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !170, metadata !DIExpression()), !dbg !171
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !172
  ret i64 %call, !dbg !173
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !176, metadata !DIExpression()), !dbg !177
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !178
  %0 = load i32, i32* %_flags, align 8, !dbg !178
  %and = lshr i32 %0, 4, !dbg !178
  %and.lobit = and i32 %and, 1, !dbg !178
  ret i32 %and.lobit, !dbg !179
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !180 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !182, metadata !DIExpression()), !dbg !183
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !184
  %0 = load i32, i32* %_flags, align 8, !dbg !184
  %and = lshr i32 %0, 5, !dbg !184
  %and.lobit = and i32 %and, 1, !dbg !184
  ret i32 %and.lobit, !dbg !185
}

; Function Attrs: nounwind uwtable
define dso_local void @sha1_init_ctx(%struct.sha1_ctx* %ctx) local_unnamed_addr #4 !dbg !186 {
entry:
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !207, metadata !DIExpression()), !dbg !208
  %A = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 0, !dbg !209
  store i32 1732584193, i32* %A, align 4, !dbg !210
  %B = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 1, !dbg !211
  store i32 -271733879, i32* %B, align 4, !dbg !212
  %C = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 2, !dbg !213
  store i32 -1732584194, i32* %C, align 4, !dbg !214
  %D = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 3, !dbg !215
  store i32 271733878, i32* %D, align 4, !dbg !216
  %E = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 4, !dbg !217
  store i32 -1009589776, i32* %E, align 4, !dbg !218
  %arrayidx = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 5, i64 1, !dbg !219
  store i32 0, i32* %arrayidx, align 4, !dbg !220
  %arrayidx2 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 5, i64 0, !dbg !221
  store i32 0, i32* %arrayidx2, align 4, !dbg !222
  %buflen = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 6, !dbg !223
  store i32 0, i32* %buflen, align 4, !dbg !224
  ret void, !dbg !225
}

; Function Attrs: nounwind uwtable
define dso_local i8* @sha1_read_ctx(%struct.sha1_ctx* %ctx, i8* %resbuf) local_unnamed_addr #4 !dbg !226 {
entry:
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !232, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i8* %resbuf, metadata !233, metadata !DIExpression()), !dbg !234
  %A = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 0, !dbg !235
  %0 = load i32, i32* %A, align 4, !dbg !235
  %or8 = call i32 @llvm.bswap.i32(i32 %0), !dbg !235
  %1 = bitcast i8* %resbuf to i32*, !dbg !236
  store i32 %or8, i32* %1, align 4, !dbg !237
  %B = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 1, !dbg !238
  %2 = load i32, i32* %B, align 4, !dbg !238
  %or20 = call i32 @llvm.bswap.i32(i32 %2), !dbg !238
  %arrayidx21 = getelementptr inbounds i8, i8* %resbuf, i64 4, !dbg !239
  %3 = bitcast i8* %arrayidx21 to i32*, !dbg !239
  store i32 %or20, i32* %3, align 4, !dbg !240
  %C = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 2, !dbg !241
  %4 = load i32, i32* %C, align 4, !dbg !241
  %or33 = call i32 @llvm.bswap.i32(i32 %4), !dbg !241
  %arrayidx34 = getelementptr inbounds i8, i8* %resbuf, i64 8, !dbg !242
  %5 = bitcast i8* %arrayidx34 to i32*, !dbg !242
  store i32 %or33, i32* %5, align 4, !dbg !243
  %D = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 3, !dbg !244
  %6 = load i32, i32* %D, align 4, !dbg !244
  %or46 = call i32 @llvm.bswap.i32(i32 %6), !dbg !244
  %arrayidx47 = getelementptr inbounds i8, i8* %resbuf, i64 12, !dbg !245
  %7 = bitcast i8* %arrayidx47 to i32*, !dbg !245
  store i32 %or46, i32* %7, align 4, !dbg !246
  %E = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 4, !dbg !247
  %8 = load i32, i32* %E, align 4, !dbg !247
  %or59 = call i32 @llvm.bswap.i32(i32 %8), !dbg !247
  %arrayidx60 = getelementptr inbounds i8, i8* %resbuf, i64 16, !dbg !248
  %9 = bitcast i8* %arrayidx60 to i32*, !dbg !248
  store i32 %or59, i32* %9, align 4, !dbg !249
  ret i8* %resbuf, !dbg !250
}

; Function Attrs: nounwind uwtable
define dso_local i8* @sha1_finish_ctx(%struct.sha1_ctx* %ctx, i8* %resbuf) local_unnamed_addr #4 !dbg !251 {
entry:
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !255, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i8* %resbuf, metadata !256, metadata !DIExpression()), !dbg !259
  %buflen = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 6, !dbg !260
  %0 = load i32, i32* %buflen, align 4, !dbg !260
  call void @llvm.dbg.value(metadata i32 %0, metadata !257, metadata !DIExpression()), !dbg !259
  %cmp = icmp ult i32 %0, 56, !dbg !261
  %cond = select i1 %cmp, i64 16, i64 32, !dbg !262
  call void @llvm.dbg.value(metadata i64 %cond, metadata !258, metadata !DIExpression()), !dbg !259
  %arrayidx = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 5, i64 0, !dbg !263
  %1 = load i32, i32* %arrayidx, align 4, !dbg !264
  %add = add i32 %1, %0, !dbg !264
  store i32 %add, i32* %arrayidx, align 4, !dbg !264
  %cmp3 = icmp ult i32 %add, %0, !dbg !265
  br i1 %cmp3, label %if.then, label %entry.if.end_crit_edge, !dbg !267

entry.if.end_crit_edge:                           ; preds = %entry
  %arrayidx8.phi.trans.insert = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 5, i64 1, !dbg !259
  %.pre = load i32, i32* %arrayidx8.phi.trans.insert, align 4, !dbg !268
  br label %if.end, !dbg !267

if.then:                                          ; preds = %entry
  %arrayidx6 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 5, i64 1, !dbg !269
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !270
  %inc = add i32 %2, 1, !dbg !270
  store i32 %inc, i32* %arrayidx6, align 4, !dbg !270
  br label %if.end, !dbg !270

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %3 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %inc, %if.then ], !dbg !268
  %shl = shl i32 %3, 3, !dbg !268
  %shr = lshr i32 %add, 29, !dbg !268
  %or = or i32 %shl, %shr, !dbg !268
  %shl11 = shl i32 %or, 24, !dbg !268
  %and = shl i32 %3, 11, !dbg !268
  %shl19 = and i32 %and, 16711680, !dbg !268
  %or20 = or i32 %shl11, %shl19, !dbg !268
  %4 = lshr i32 %3, 5, !dbg !268
  %and29 = and i32 %4, 65280, !dbg !268
  %or30 = or i32 %or20, %and29, !dbg !268
  %5 = lshr i32 %3, 21, !dbg !268
  %shr38 = and i32 %5, 255, !dbg !268
  %or39 = or i32 %or30, %shr38, !dbg !268
  %sub = add nsw i64 %cond, -2, !dbg !271
  %arrayidx40 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 7, i64 %sub, !dbg !272
  store i32 %or39, i32* %arrayidx40, align 4, !dbg !273
  %shl43 = shl i32 %add, 27, !dbg !274
  %shl47 = shl i32 %add, 11, !dbg !274
  %and48 = and i32 %shl47, 16711680, !dbg !274
  %or50 = or i32 %shl43, %and48, !dbg !274
  %6 = lshr i32 %add, 5, !dbg !274
  %and55 = and i32 %6, 65280, !dbg !274
  %or56 = or i32 %or50, %and55, !dbg !274
  %7 = lshr i32 %add, 21, !dbg !274
  %shr60 = and i32 %7, 255, !dbg !274
  %or61 = or i32 %or56, %shr60, !dbg !274
  %sub63 = add nsw i64 %cond, -1, !dbg !275
  %arrayidx64 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 7, i64 %sub63, !dbg !276
  store i32 %or61, i32* %arrayidx64, align 4, !dbg !277
  %arraydecay = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 7, i64 0, !dbg !278
  %8 = bitcast i32* %arraydecay to i8*, !dbg !278
  %idxprom = zext i32 %0 to i64, !dbg !278
  %arrayidx66 = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !278
  %sub67 = shl nuw nsw i64 %cond, 2, !dbg !279
  %mul = add nsw i64 %sub67, -8, !dbg !279
  %sub69 = sub nsw i64 %mul, %idxprom, !dbg !280
  %call = tail call i8* @memcpy(i8* nonnull %arrayidx66, i8* getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %sub69) #6, !dbg !281
  tail call void @sha1_process_block(i8* nonnull %8, i64 %sub67, %struct.sha1_ctx* %ctx) #7, !dbg !282
  %call73 = tail call i8* @sha1_read_ctx(%struct.sha1_ctx* %ctx, i8* %resbuf) #7, !dbg !283
  ret i8* %call73, !dbg !284
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sha1_process_block(i8* %buffer, i64 %len, %struct.sha1_ctx* %ctx) local_unnamed_addr #4 !dbg !285 {
entry:
  %x = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !291, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i64 %len, metadata !292, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !293, metadata !DIExpression()), !dbg !309
  %0 = bitcast i8* %buffer to i32*, !dbg !310
  call void @llvm.dbg.value(metadata i32* %0, metadata !294, metadata !DIExpression()), !dbg !309
  %div = lshr i64 %len, 2, !dbg !311
  call void @llvm.dbg.value(metadata i64 %div, metadata !295, metadata !DIExpression()), !dbg !309
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %div, !dbg !312
  call void @llvm.dbg.value(metadata i32* %add.ptr, metadata !296, metadata !DIExpression()), !dbg !309
  %1 = bitcast [16 x i32]* %x to i8*, !dbg !313
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #8, !dbg !313
  call void @llvm.dbg.declare(metadata [16 x i32]* %x, metadata !297, metadata !DIExpression()), !dbg !314
  %A = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 0, !dbg !315
  %2 = load i32, i32* %A, align 4, !dbg !315
  call void @llvm.dbg.value(metadata i32 %2, metadata !301, metadata !DIExpression()), !dbg !309
  %B = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 1, !dbg !316
  %3 = load i32, i32* %B, align 4, !dbg !316
  call void @llvm.dbg.value(metadata i32 %3, metadata !302, metadata !DIExpression()), !dbg !309
  %C = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 2, !dbg !317
  %4 = load i32, i32* %C, align 4, !dbg !317
  call void @llvm.dbg.value(metadata i32 %4, metadata !303, metadata !DIExpression()), !dbg !309
  %D = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 3, !dbg !318
  %5 = load i32, i32* %D, align 4, !dbg !318
  call void @llvm.dbg.value(metadata i32 %5, metadata !304, metadata !DIExpression()), !dbg !309
  %E = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 4, !dbg !319
  %6 = load i32, i32* %E, align 4, !dbg !319
  call void @llvm.dbg.value(metadata i32 %6, metadata !305, metadata !DIExpression()), !dbg !309
  %arrayidx = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 5, i64 0, !dbg !320
  %7 = load i32, i32* %arrayidx, align 4, !dbg !321
  %8 = trunc i64 %len to i32, !dbg !321
  %conv1 = add i32 %7, %8, !dbg !321
  store i32 %conv1, i32* %arrayidx, align 4, !dbg !321
  %conv4 = zext i32 %conv1 to i64, !dbg !322
  %cmp = icmp ult i64 %conv4, %len, !dbg !324
  br i1 %cmp, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %entry
  %arrayidx7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 5, i64 1, !dbg !326
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !327
  %inc = add i32 %9, 1, !dbg !327
  store i32 %inc, i32* %arrayidx7, align 4, !dbg !327
  br label %if.end, !dbg !327

if.end:                                           ; preds = %if.then, %entry
  %arrayidx26 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0, !dbg !328
  %arrayidx41 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1, !dbg !330
  %arrayidx58 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2, !dbg !332
  %arrayidx75 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3, !dbg !334
  %arrayidx92 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4, !dbg !336
  %arrayidx109 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5, !dbg !338
  %arrayidx126 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6, !dbg !340
  %arrayidx143 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7, !dbg !342
  %arrayidx160 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8, !dbg !344
  %arrayidx177 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9, !dbg !346
  %arrayidx194 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10, !dbg !348
  %arrayidx211 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11, !dbg !350
  %arrayidx228 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12, !dbg !352
  %arrayidx245 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13, !dbg !354
  %arrayidx262 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14, !dbg !356
  %arrayidx279 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15, !dbg !358
  br label %while.cond, !dbg !360

while.cond:                                       ; preds = %do.body, %if.end
  %b.0 = phi i32 [ %3, %if.end ], [ %add1998, %do.body ], !dbg !309
  %a.0 = phi i32 [ %2, %if.end ], [ %add1996, %do.body ], !dbg !309
  %c.0 = phi i32 [ %4, %if.end ], [ %add2000, %do.body ], !dbg !309
  %d.0 = phi i32 [ %5, %if.end ], [ %add2002, %do.body ], !dbg !309
  %words.0 = phi i32* [ %0, %if.end ], [ %words.1.lcssa, %do.body ], !dbg !361
  %e.0 = phi i32 [ %6, %if.end ], [ %add2004, %do.body ], !dbg !309
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !305, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32* %words.0, metadata !294, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32 %d.0, metadata !304, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !303, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32 %a.0, metadata !301, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32 %b.0, metadata !302, metadata !DIExpression()), !dbg !309
  %cmp8 = icmp ult i32* %words.0, %add.ptr, !dbg !362
  br i1 %cmp8, label %for.cond.preheader, label %while.end, !dbg !360

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !363

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !309
  %words.1 = phi i32* [ %words.0, %for.cond.preheader ], [ %incdec.ptr, %for.body ], !dbg !309
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !308, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i32* %words.1, metadata !294, metadata !DIExpression()), !dbg !309
  %exitcond = icmp eq i64 %indvars.iv, 16, !dbg !366
  br i1 %exitcond, label %do.body, label %for.body, !dbg !363

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %words.1, align 4, !dbg !368
  %or16 = call i32 @llvm.bswap.i32(i32 %10), !dbg !368
  %arrayidx17 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 %indvars.iv, !dbg !370
  store i32 %or16, i32* %arrayidx17, align 4, !dbg !371
  %incdec.ptr = getelementptr inbounds i32, i32* %words.1, i64 1, !dbg !372
  call void @llvm.dbg.value(metadata i32* %incdec.ptr, metadata !294, metadata !DIExpression()), !dbg !309
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !373
  call void @llvm.dbg.value(metadata i32 undef, metadata !308, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !365
  br label %for.cond, !dbg !374, !llvm.loop !375

do.body:                                          ; preds = %for.cond
  %words.1.lcssa = phi i32* [ %words.1, %for.cond ], !dbg !309
  call void @llvm.dbg.value(metadata i32* %words.1.lcssa, metadata !294, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32* %words.1.lcssa, metadata !294, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32* %words.1.lcssa, metadata !294, metadata !DIExpression()), !dbg !309
  %shl19 = shl i32 %a.0, 5, !dbg !377
  %shr20 = lshr i32 %a.0, 27, !dbg !377
  %or21 = or i32 %shl19, %shr20, !dbg !377
  %xor = xor i32 %c.0, %d.0, !dbg !377
  %and22 = and i32 %b.0, %xor, !dbg !377
  %xor23 = xor i32 %d.0, %and22, !dbg !377
  %add24 = add i32 %or21, %xor23, !dbg !377
  %add25 = add i32 %add24, 1518500249, !dbg !377
  %11 = load i32, i32* %arrayidx26, align 16, !dbg !377
  %add27 = add i32 %add25, %11, !dbg !377
  %add28 = add i32 %e.0, %add27, !dbg !377
  call void @llvm.dbg.value(metadata i32 %add28, metadata !305, metadata !DIExpression()), !dbg !309
  %shl29 = shl i32 %b.0, 30, !dbg !377
  %shr30 = lshr i32 %b.0, 2, !dbg !377
  %or31 = or i32 %shl29, %shr30, !dbg !377
  call void @llvm.dbg.value(metadata i32 %or31, metadata !302, metadata !DIExpression()), !dbg !309
  %shl33 = shl i32 %add28, 5, !dbg !378
  %shr34 = lshr i32 %add28, 27, !dbg !378
  %or35 = or i32 %shl33, %shr34, !dbg !378
  %xor36 = xor i32 %or31, %c.0, !dbg !378
  %and37 = and i32 %a.0, %xor36, !dbg !378
  %xor38 = xor i32 %c.0, %and37, !dbg !378
  %add39 = add i32 %or35, %xor38, !dbg !378
  %add40 = add i32 %add39, 1518500249, !dbg !378
  %12 = load i32, i32* %arrayidx41, align 4, !dbg !378
  %add42 = add i32 %add40, %12, !dbg !378
  %add43 = add i32 %d.0, %add42, !dbg !378
  call void @llvm.dbg.value(metadata i32 %add43, metadata !304, metadata !DIExpression()), !dbg !309
  %shl44 = shl i32 %a.0, 30, !dbg !378
  %shr45 = lshr i32 %a.0, 2, !dbg !378
  %or46 = or i32 %shl44, %shr45, !dbg !378
  call void @llvm.dbg.value(metadata i32 %or46, metadata !301, metadata !DIExpression()), !dbg !309
  %shl50 = shl i32 %add43, 5, !dbg !379
  %shr51 = lshr i32 %add43, 27, !dbg !379
  %or52 = or i32 %shl50, %shr51, !dbg !379
  %xor53 = xor i32 %or46, %or31, !dbg !379
  %and54 = and i32 %add28, %xor53, !dbg !379
  %xor55 = xor i32 %or31, %and54, !dbg !379
  %add56 = add i32 %or52, %xor55, !dbg !379
  %add57 = add i32 %add56, 1518500249, !dbg !379
  %13 = load i32, i32* %arrayidx58, align 8, !dbg !379
  %add59 = add i32 %add57, %13, !dbg !379
  %add60 = add i32 %c.0, %add59, !dbg !379
  call void @llvm.dbg.value(metadata i32 %add60, metadata !303, metadata !DIExpression()), !dbg !309
  %shl61 = shl i32 %add28, 30, !dbg !379
  %shr62 = lshr i32 %add28, 2, !dbg !379
  %or63 = or i32 %shl61, %shr62, !dbg !379
  call void @llvm.dbg.value(metadata i32 %or63, metadata !305, metadata !DIExpression()), !dbg !309
  %shl67 = shl i32 %add60, 5, !dbg !380
  %shr68 = lshr i32 %add60, 27, !dbg !380
  %or69 = or i32 %shl67, %shr68, !dbg !380
  %xor70 = xor i32 %or63, %or46, !dbg !380
  %and71 = and i32 %add43, %xor70, !dbg !380
  %xor72 = xor i32 %or46, %and71, !dbg !380
  %add73 = add i32 %or69, %xor72, !dbg !380
  %add74 = add i32 %add73, 1518500249, !dbg !380
  %14 = load i32, i32* %arrayidx75, align 4, !dbg !380
  %add76 = add i32 %add74, %14, !dbg !380
  %add77 = add i32 %or31, %add76, !dbg !380
  call void @llvm.dbg.value(metadata i32 %add77, metadata !302, metadata !DIExpression()), !dbg !309
  %shl78 = shl i32 %add43, 30, !dbg !380
  %shr79 = lshr i32 %add43, 2, !dbg !380
  %or80 = or i32 %shl78, %shr79, !dbg !380
  call void @llvm.dbg.value(metadata i32 %or80, metadata !304, metadata !DIExpression()), !dbg !309
  %shl84 = shl i32 %add77, 5, !dbg !381
  %shr85 = lshr i32 %add77, 27, !dbg !381
  %or86 = or i32 %shl84, %shr85, !dbg !381
  %xor87 = xor i32 %or80, %or63, !dbg !381
  %and88 = and i32 %add60, %xor87, !dbg !381
  %xor89 = xor i32 %or63, %and88, !dbg !381
  %add90 = add i32 %or86, %xor89, !dbg !381
  %add91 = add i32 %add90, 1518500249, !dbg !381
  %15 = load i32, i32* %arrayidx92, align 16, !dbg !381
  %add93 = add i32 %add91, %15, !dbg !381
  %add94 = add i32 %or46, %add93, !dbg !381
  call void @llvm.dbg.value(metadata i32 %add94, metadata !301, metadata !DIExpression()), !dbg !309
  %shl95 = shl i32 %add60, 30, !dbg !381
  %shr96 = lshr i32 %add60, 2, !dbg !381
  %or97 = or i32 %shl95, %shr96, !dbg !381
  call void @llvm.dbg.value(metadata i32 %or97, metadata !303, metadata !DIExpression()), !dbg !309
  %shl101 = shl i32 %add94, 5, !dbg !382
  %shr102 = lshr i32 %add94, 27, !dbg !382
  %or103 = or i32 %shl101, %shr102, !dbg !382
  %xor104 = xor i32 %or97, %or80, !dbg !382
  %and105 = and i32 %add77, %xor104, !dbg !382
  %xor106 = xor i32 %or80, %and105, !dbg !382
  %add107 = add i32 %or103, %xor106, !dbg !382
  %add108 = add i32 %add107, 1518500249, !dbg !382
  %16 = load i32, i32* %arrayidx109, align 4, !dbg !382
  %add110 = add i32 %add108, %16, !dbg !382
  %add111 = add i32 %or63, %add110, !dbg !382
  call void @llvm.dbg.value(metadata i32 %add111, metadata !305, metadata !DIExpression()), !dbg !309
  %shl112 = shl i32 %add77, 30, !dbg !382
  %shr113 = lshr i32 %add77, 2, !dbg !382
  %or114 = or i32 %shl112, %shr113, !dbg !382
  call void @llvm.dbg.value(metadata i32 %or114, metadata !302, metadata !DIExpression()), !dbg !309
  %shl118 = shl i32 %add111, 5, !dbg !383
  %shr119 = lshr i32 %add111, 27, !dbg !383
  %or120 = or i32 %shl118, %shr119, !dbg !383
  %xor121 = xor i32 %or114, %or97, !dbg !383
  %and122 = and i32 %add94, %xor121, !dbg !383
  %xor123 = xor i32 %or97, %and122, !dbg !383
  %add124 = add i32 %or120, %xor123, !dbg !383
  %add125 = add i32 %add124, 1518500249, !dbg !383
  %17 = load i32, i32* %arrayidx126, align 8, !dbg !383
  %add127 = add i32 %add125, %17, !dbg !383
  %add128 = add i32 %or80, %add127, !dbg !383
  call void @llvm.dbg.value(metadata i32 %add128, metadata !304, metadata !DIExpression()), !dbg !309
  %shl129 = shl i32 %add94, 30, !dbg !383
  %shr130 = lshr i32 %add94, 2, !dbg !383
  %or131 = or i32 %shl129, %shr130, !dbg !383
  call void @llvm.dbg.value(metadata i32 %or131, metadata !301, metadata !DIExpression()), !dbg !309
  %shl135 = shl i32 %add128, 5, !dbg !384
  %shr136 = lshr i32 %add128, 27, !dbg !384
  %or137 = or i32 %shl135, %shr136, !dbg !384
  %xor138 = xor i32 %or131, %or114, !dbg !384
  %and139 = and i32 %add111, %xor138, !dbg !384
  %xor140 = xor i32 %or114, %and139, !dbg !384
  %add141 = add i32 %or137, %xor140, !dbg !384
  %add142 = add i32 %add141, 1518500249, !dbg !384
  %18 = load i32, i32* %arrayidx143, align 4, !dbg !384
  %add144 = add i32 %add142, %18, !dbg !384
  %add145 = add i32 %or97, %add144, !dbg !384
  call void @llvm.dbg.value(metadata i32 %add145, metadata !303, metadata !DIExpression()), !dbg !309
  %shl146 = shl i32 %add111, 30, !dbg !384
  %shr147 = lshr i32 %add111, 2, !dbg !384
  %or148 = or i32 %shl146, %shr147, !dbg !384
  call void @llvm.dbg.value(metadata i32 %or148, metadata !305, metadata !DIExpression()), !dbg !309
  %shl152 = shl i32 %add145, 5, !dbg !385
  %shr153 = lshr i32 %add145, 27, !dbg !385
  %or154 = or i32 %shl152, %shr153, !dbg !385
  %xor155 = xor i32 %or148, %or131, !dbg !385
  %and156 = and i32 %add128, %xor155, !dbg !385
  %xor157 = xor i32 %or131, %and156, !dbg !385
  %add158 = add i32 %or154, %xor157, !dbg !385
  %add159 = add i32 %add158, 1518500249, !dbg !385
  %19 = load i32, i32* %arrayidx160, align 16, !dbg !385
  %add161 = add i32 %add159, %19, !dbg !385
  %add162 = add i32 %or114, %add161, !dbg !385
  call void @llvm.dbg.value(metadata i32 %add162, metadata !302, metadata !DIExpression()), !dbg !309
  %shl163 = shl i32 %add128, 30, !dbg !385
  %shr164 = lshr i32 %add128, 2, !dbg !385
  %or165 = or i32 %shl163, %shr164, !dbg !385
  call void @llvm.dbg.value(metadata i32 %or165, metadata !304, metadata !DIExpression()), !dbg !309
  %shl169 = shl i32 %add162, 5, !dbg !386
  %shr170 = lshr i32 %add162, 27, !dbg !386
  %or171 = or i32 %shl169, %shr170, !dbg !386
  %xor172 = xor i32 %or165, %or148, !dbg !386
  %and173 = and i32 %add145, %xor172, !dbg !386
  %xor174 = xor i32 %or148, %and173, !dbg !386
  %add175 = add i32 %or171, %xor174, !dbg !386
  %add176 = add i32 %add175, 1518500249, !dbg !386
  %20 = load i32, i32* %arrayidx177, align 4, !dbg !386
  %add178 = add i32 %add176, %20, !dbg !386
  %add179 = add i32 %or131, %add178, !dbg !386
  call void @llvm.dbg.value(metadata i32 %add179, metadata !301, metadata !DIExpression()), !dbg !309
  %shl180 = shl i32 %add145, 30, !dbg !386
  %shr181 = lshr i32 %add145, 2, !dbg !386
  %or182 = or i32 %shl180, %shr181, !dbg !386
  call void @llvm.dbg.value(metadata i32 %or182, metadata !303, metadata !DIExpression()), !dbg !309
  %shl186 = shl i32 %add179, 5, !dbg !387
  %shr187 = lshr i32 %add179, 27, !dbg !387
  %or188 = or i32 %shl186, %shr187, !dbg !387
  %xor189 = xor i32 %or182, %or165, !dbg !387
  %and190 = and i32 %add162, %xor189, !dbg !387
  %xor191 = xor i32 %or165, %and190, !dbg !387
  %add192 = add i32 %or188, %xor191, !dbg !387
  %add193 = add i32 %add192, 1518500249, !dbg !387
  %21 = load i32, i32* %arrayidx194, align 8, !dbg !387
  %add195 = add i32 %add193, %21, !dbg !387
  %add196 = add i32 %or148, %add195, !dbg !387
  call void @llvm.dbg.value(metadata i32 %add196, metadata !305, metadata !DIExpression()), !dbg !309
  %shl197 = shl i32 %add162, 30, !dbg !387
  %shr198 = lshr i32 %add162, 2, !dbg !387
  %or199 = or i32 %shl197, %shr198, !dbg !387
  call void @llvm.dbg.value(metadata i32 %or199, metadata !302, metadata !DIExpression()), !dbg !309
  %shl203 = shl i32 %add196, 5, !dbg !388
  %shr204 = lshr i32 %add196, 27, !dbg !388
  %or205 = or i32 %shl203, %shr204, !dbg !388
  %xor206 = xor i32 %or199, %or182, !dbg !388
  %and207 = and i32 %add179, %xor206, !dbg !388
  %xor208 = xor i32 %or182, %and207, !dbg !388
  %add209 = add i32 %or205, %xor208, !dbg !388
  %add210 = add i32 %add209, 1518500249, !dbg !388
  %22 = load i32, i32* %arrayidx211, align 4, !dbg !388
  %add212 = add i32 %add210, %22, !dbg !388
  %add213 = add i32 %or165, %add212, !dbg !388
  call void @llvm.dbg.value(metadata i32 %add213, metadata !304, metadata !DIExpression()), !dbg !309
  %shl214 = shl i32 %add179, 30, !dbg !388
  %shr215 = lshr i32 %add179, 2, !dbg !388
  %or216 = or i32 %shl214, %shr215, !dbg !388
  call void @llvm.dbg.value(metadata i32 %or216, metadata !301, metadata !DIExpression()), !dbg !309
  %shl220 = shl i32 %add213, 5, !dbg !389
  %shr221 = lshr i32 %add213, 27, !dbg !389
  %or222 = or i32 %shl220, %shr221, !dbg !389
  %xor223 = xor i32 %or216, %or199, !dbg !389
  %and224 = and i32 %add196, %xor223, !dbg !389
  %xor225 = xor i32 %or199, %and224, !dbg !389
  %add226 = add i32 %or222, %xor225, !dbg !389
  %add227 = add i32 %add226, 1518500249, !dbg !389
  %23 = load i32, i32* %arrayidx228, align 16, !dbg !389
  %add229 = add i32 %add227, %23, !dbg !389
  %add230 = add i32 %or182, %add229, !dbg !389
  call void @llvm.dbg.value(metadata i32 %add230, metadata !303, metadata !DIExpression()), !dbg !309
  %shl231 = shl i32 %add196, 30, !dbg !389
  %shr232 = lshr i32 %add196, 2, !dbg !389
  %or233 = or i32 %shl231, %shr232, !dbg !389
  call void @llvm.dbg.value(metadata i32 %or233, metadata !305, metadata !DIExpression()), !dbg !309
  %shl237 = shl i32 %add230, 5, !dbg !390
  %shr238 = lshr i32 %add230, 27, !dbg !390
  %or239 = or i32 %shl237, %shr238, !dbg !390
  %xor240 = xor i32 %or233, %or216, !dbg !390
  %and241 = and i32 %add213, %xor240, !dbg !390
  %xor242 = xor i32 %or216, %and241, !dbg !390
  %add243 = add i32 %or239, %xor242, !dbg !390
  %add244 = add i32 %add243, 1518500249, !dbg !390
  %24 = load i32, i32* %arrayidx245, align 4, !dbg !390
  %add246 = add i32 %add244, %24, !dbg !390
  %add247 = add i32 %or199, %add246, !dbg !390
  call void @llvm.dbg.value(metadata i32 %add247, metadata !302, metadata !DIExpression()), !dbg !309
  %shl248 = shl i32 %add213, 30, !dbg !390
  %shr249 = lshr i32 %add213, 2, !dbg !390
  %or250 = or i32 %shl248, %shr249, !dbg !390
  call void @llvm.dbg.value(metadata i32 %or250, metadata !304, metadata !DIExpression()), !dbg !309
  %shl254 = shl i32 %add247, 5, !dbg !391
  %shr255 = lshr i32 %add247, 27, !dbg !391
  %or256 = or i32 %shl254, %shr255, !dbg !391
  %xor257 = xor i32 %or250, %or233, !dbg !391
  %and258 = and i32 %add230, %xor257, !dbg !391
  %xor259 = xor i32 %or233, %and258, !dbg !391
  %add260 = add i32 %or256, %xor259, !dbg !391
  %add261 = add i32 %add260, 1518500249, !dbg !391
  %25 = load i32, i32* %arrayidx262, align 8, !dbg !391
  %add263 = add i32 %add261, %25, !dbg !391
  %add264 = add i32 %or216, %add263, !dbg !391
  call void @llvm.dbg.value(metadata i32 %add264, metadata !301, metadata !DIExpression()), !dbg !309
  %shl265 = shl i32 %add230, 30, !dbg !391
  %shr266 = lshr i32 %add230, 2, !dbg !391
  %or267 = or i32 %shl265, %shr266, !dbg !391
  call void @llvm.dbg.value(metadata i32 %or267, metadata !303, metadata !DIExpression()), !dbg !309
  %shl271 = shl i32 %add264, 5, !dbg !392
  %shr272 = lshr i32 %add264, 27, !dbg !392
  %or273 = or i32 %shl271, %shr272, !dbg !392
  %xor274 = xor i32 %or267, %or250, !dbg !392
  %and275 = and i32 %add247, %xor274, !dbg !392
  %xor276 = xor i32 %or250, %and275, !dbg !392
  %add277 = add i32 %or273, %xor276, !dbg !392
  %add278 = add i32 %add277, 1518500249, !dbg !392
  %26 = load i32, i32* %arrayidx279, align 4, !dbg !392
  %add280 = add i32 %add278, %26, !dbg !392
  %add281 = add i32 %or233, %add280, !dbg !392
  call void @llvm.dbg.value(metadata i32 %add281, metadata !305, metadata !DIExpression()), !dbg !309
  %shl282 = shl i32 %add247, 30, !dbg !392
  %shr283 = lshr i32 %add247, 2, !dbg !392
  %or284 = or i32 %shl282, %shr283, !dbg !392
  call void @llvm.dbg.value(metadata i32 %or284, metadata !302, metadata !DIExpression()), !dbg !309
  %shl288 = shl i32 %add281, 5, !dbg !393
  %shr289 = lshr i32 %add281, 27, !dbg !393
  %or290 = or i32 %shl288, %shr289, !dbg !393
  %xor291 = xor i32 %or284, %or267, !dbg !393
  %and292 = and i32 %add264, %xor291, !dbg !393
  %xor293 = xor i32 %or267, %and292, !dbg !393
  %add294 = add i32 %or290, %xor293, !dbg !393
  %add295 = add i32 %add294, 1518500249, !dbg !393
  %27 = load i32, i32* %arrayidx26, align 16, !dbg !393
  %28 = load i32, i32* %arrayidx58, align 8, !dbg !393
  %xor298 = xor i32 %27, %28, !dbg !393
  %29 = load i32, i32* %arrayidx160, align 16, !dbg !393
  %xor300 = xor i32 %xor298, %29, !dbg !393
  %xor302 = xor i32 %xor300, %24, !dbg !393
  call void @llvm.dbg.value(metadata i32 %xor302, metadata !306, metadata !DIExpression()), !dbg !365
  %shl303 = shl i32 %xor302, 1, !dbg !393
  %shr304 = lshr i32 %xor302, 31, !dbg !393
  %or305 = or i32 %shl303, %shr304, !dbg !393
  store i32 %or305, i32* %arrayidx26, align 16, !dbg !393
  %add307 = add i32 %add295, %or305, !dbg !393
  %add308 = add i32 %or250, %add307, !dbg !393
  call void @llvm.dbg.value(metadata i32 %add308, metadata !304, metadata !DIExpression()), !dbg !309
  %shl309 = shl i32 %add264, 30, !dbg !393
  %shr310 = lshr i32 %add264, 2, !dbg !393
  %or311 = or i32 %shl309, %shr310, !dbg !393
  call void @llvm.dbg.value(metadata i32 %or311, metadata !301, metadata !DIExpression()), !dbg !309
  %shl315 = shl i32 %add308, 5, !dbg !395
  %shr316 = lshr i32 %add308, 27, !dbg !395
  %or317 = or i32 %shl315, %shr316, !dbg !395
  %xor318 = xor i32 %or311, %or284, !dbg !395
  %and319 = and i32 %add281, %xor318, !dbg !395
  %xor320 = xor i32 %or284, %and319, !dbg !395
  %add321 = add i32 %or317, %xor320, !dbg !395
  %add322 = add i32 %add321, 1518500249, !dbg !395
  %30 = load i32, i32* %arrayidx41, align 4, !dbg !395
  %31 = load i32, i32* %arrayidx75, align 4, !dbg !395
  %xor325 = xor i32 %30, %31, !dbg !395
  %32 = load i32, i32* %arrayidx177, align 4, !dbg !395
  %xor327 = xor i32 %xor325, %32, !dbg !395
  %xor329 = xor i32 %xor327, %25, !dbg !395
  call void @llvm.dbg.value(metadata i32 %xor329, metadata !306, metadata !DIExpression()), !dbg !365
  %shl330 = shl i32 %xor329, 1, !dbg !395
  %shr331 = lshr i32 %xor329, 31, !dbg !395
  %or332 = or i32 %shl330, %shr331, !dbg !395
  store i32 %or332, i32* %arrayidx41, align 4, !dbg !395
  %add334 = add i32 %add322, %or332, !dbg !395
  %add335 = add i32 %or267, %add334, !dbg !395
  call void @llvm.dbg.value(metadata i32 %add335, metadata !303, metadata !DIExpression()), !dbg !309
  %shl336 = shl i32 %add281, 30, !dbg !395
  %shr337 = lshr i32 %add281, 2, !dbg !395
  %or338 = or i32 %shl336, %shr337, !dbg !395
  call void @llvm.dbg.value(metadata i32 %or338, metadata !305, metadata !DIExpression()), !dbg !309
  %shl342 = shl i32 %add335, 5, !dbg !397
  %shr343 = lshr i32 %add335, 27, !dbg !397
  %or344 = or i32 %shl342, %shr343, !dbg !397
  %xor345 = xor i32 %or338, %or311, !dbg !397
  %and346 = and i32 %add308, %xor345, !dbg !397
  %xor347 = xor i32 %or311, %and346, !dbg !397
  %add348 = add i32 %or344, %xor347, !dbg !397
  %add349 = add i32 %add348, 1518500249, !dbg !397
  %33 = load i32, i32* %arrayidx92, align 16, !dbg !397
  %xor352 = xor i32 %28, %33, !dbg !397
  %34 = load i32, i32* %arrayidx194, align 8, !dbg !397
  %xor354 = xor i32 %xor352, %34, !dbg !397
  %xor356 = xor i32 %xor354, %26, !dbg !397
  call void @llvm.dbg.value(metadata i32 %xor356, metadata !306, metadata !DIExpression()), !dbg !365
  %shl357 = shl i32 %xor356, 1, !dbg !397
  %shr358 = lshr i32 %xor356, 31, !dbg !397
  %or359 = or i32 %shl357, %shr358, !dbg !397
  store i32 %or359, i32* %arrayidx58, align 8, !dbg !397
  %add361 = add i32 %add349, %or359, !dbg !397
  %add362 = add i32 %or284, %add361, !dbg !397
  call void @llvm.dbg.value(metadata i32 %add362, metadata !302, metadata !DIExpression()), !dbg !309
  %shl363 = shl i32 %add308, 30, !dbg !397
  %shr364 = lshr i32 %add308, 2, !dbg !397
  %or365 = or i32 %shl363, %shr364, !dbg !397
  call void @llvm.dbg.value(metadata i32 %or365, metadata !304, metadata !DIExpression()), !dbg !309
  %shl369 = shl i32 %add362, 5, !dbg !399
  %shr370 = lshr i32 %add362, 27, !dbg !399
  %or371 = or i32 %shl369, %shr370, !dbg !399
  %xor372 = xor i32 %or365, %or338, !dbg !399
  %and373 = and i32 %add335, %xor372, !dbg !399
  %xor374 = xor i32 %or338, %and373, !dbg !399
  %add375 = add i32 %or371, %xor374, !dbg !399
  %add376 = add i32 %add375, 1518500249, !dbg !399
  %35 = load i32, i32* %arrayidx109, align 4, !dbg !399
  %xor379 = xor i32 %31, %35, !dbg !399
  %36 = load i32, i32* %arrayidx211, align 4, !dbg !399
  %xor381 = xor i32 %xor379, %36, !dbg !399
  %xor383 = xor i32 %xor381, %or305, !dbg !399
  call void @llvm.dbg.value(metadata i32 %xor383, metadata !306, metadata !DIExpression()), !dbg !365
  %shl384 = shl i32 %xor383, 1, !dbg !399
  %shr385 = lshr i32 %xor383, 31, !dbg !399
  %or386 = or i32 %shl384, %shr385, !dbg !399
  store i32 %or386, i32* %arrayidx75, align 4, !dbg !399
  %add388 = add i32 %add376, %or386, !dbg !399
  %add389 = add i32 %or311, %add388, !dbg !399
  call void @llvm.dbg.value(metadata i32 %add389, metadata !301, metadata !DIExpression()), !dbg !309
  %shl390 = shl i32 %add335, 30, !dbg !399
  %shr391 = lshr i32 %add335, 2, !dbg !399
  %or392 = or i32 %shl390, %shr391, !dbg !399
  call void @llvm.dbg.value(metadata i32 %or392, metadata !303, metadata !DIExpression()), !dbg !309
  %shl396 = shl i32 %add389, 5, !dbg !401
  %shr397 = lshr i32 %add389, 27, !dbg !401
  %or398 = or i32 %shl396, %shr397, !dbg !401
  %xor399 = xor i32 %add362, %or392, !dbg !401
  %xor400 = xor i32 %xor399, %or365, !dbg !401
  %add401 = add i32 %or398, %xor400, !dbg !401
  %add402 = add i32 %add401, 1859775393, !dbg !401
  %37 = load i32, i32* %arrayidx126, align 8, !dbg !401
  %xor405 = xor i32 %33, %37, !dbg !401
  %38 = load i32, i32* %arrayidx228, align 16, !dbg !401
  %xor407 = xor i32 %xor405, %38, !dbg !401
  %xor409 = xor i32 %xor407, %or332, !dbg !401
  call void @llvm.dbg.value(metadata i32 %xor409, metadata !306, metadata !DIExpression()), !dbg !365
  %shl410 = shl i32 %xor409, 1, !dbg !401
  %shr411 = lshr i32 %xor409, 31, !dbg !401
  %or412 = or i32 %shl410, %shr411, !dbg !401
  store i32 %or412, i32* %arrayidx92, align 16, !dbg !401
  %add414 = add i32 %add402, %or412, !dbg !401
  %add415 = add i32 %or338, %add414, !dbg !401
  call void @llvm.dbg.value(metadata i32 %add415, metadata !305, metadata !DIExpression()), !dbg !309
  %shl416 = shl i32 %add362, 30, !dbg !401
  %shr417 = lshr i32 %add362, 2, !dbg !401
  %or418 = or i32 %shl416, %shr417, !dbg !401
  call void @llvm.dbg.value(metadata i32 %or418, metadata !302, metadata !DIExpression()), !dbg !309
  %shl422 = shl i32 %add415, 5, !dbg !403
  %shr423 = lshr i32 %add415, 27, !dbg !403
  %or424 = or i32 %shl422, %shr423, !dbg !403
  %xor425 = xor i32 %add389, %or418, !dbg !403
  %xor426 = xor i32 %xor425, %or392, !dbg !403
  %add427 = add i32 %or424, %xor426, !dbg !403
  %add428 = add i32 %add427, 1859775393, !dbg !403
  %39 = load i32, i32* %arrayidx143, align 4, !dbg !403
  %xor431 = xor i32 %35, %39, !dbg !403
  %40 = load i32, i32* %arrayidx245, align 4, !dbg !403
  %xor433 = xor i32 %xor431, %40, !dbg !403
  %xor435 = xor i32 %xor433, %or359, !dbg !403
  call void @llvm.dbg.value(metadata i32 %xor435, metadata !306, metadata !DIExpression()), !dbg !365
  %shl436 = shl i32 %xor435, 1, !dbg !403
  %shr437 = lshr i32 %xor435, 31, !dbg !403
  %or438 = or i32 %shl436, %shr437, !dbg !403
  store i32 %or438, i32* %arrayidx109, align 4, !dbg !403
  %add440 = add i32 %add428, %or438, !dbg !403
  %add441 = add i32 %or365, %add440, !dbg !403
  call void @llvm.dbg.value(metadata i32 %add441, metadata !304, metadata !DIExpression()), !dbg !309
  %shl442 = shl i32 %add389, 30, !dbg !403
  %shr443 = lshr i32 %add389, 2, !dbg !403
  %or444 = or i32 %shl442, %shr443, !dbg !403
  call void @llvm.dbg.value(metadata i32 %or444, metadata !301, metadata !DIExpression()), !dbg !309
  %shl448 = shl i32 %add441, 5, !dbg !405
  %shr449 = lshr i32 %add441, 27, !dbg !405
  %or450 = or i32 %shl448, %shr449, !dbg !405
  %xor451 = xor i32 %add415, %or444, !dbg !405
  %xor452 = xor i32 %xor451, %or418, !dbg !405
  %add453 = add i32 %or450, %xor452, !dbg !405
  %add454 = add i32 %add453, 1859775393, !dbg !405
  %41 = load i32, i32* %arrayidx160, align 16, !dbg !405
  %xor457 = xor i32 %37, %41, !dbg !405
  %42 = load i32, i32* %arrayidx262, align 8, !dbg !405
  %xor459 = xor i32 %xor457, %42, !dbg !405
  %xor461 = xor i32 %xor459, %or386, !dbg !405
  call void @llvm.dbg.value(metadata i32 %xor461, metadata !306, metadata !DIExpression()), !dbg !365
  %shl462 = shl i32 %xor461, 1, !dbg !405
  %shr463 = lshr i32 %xor461, 31, !dbg !405
  %or464 = or i32 %shl462, %shr463, !dbg !405
  store i32 %or464, i32* %arrayidx126, align 8, !dbg !405
  %add466 = add i32 %add454, %or464, !dbg !405
  %add467 = add i32 %or392, %add466, !dbg !405
  call void @llvm.dbg.value(metadata i32 %add467, metadata !303, metadata !DIExpression()), !dbg !309
  %shl468 = shl i32 %add415, 30, !dbg !405
  %shr469 = lshr i32 %add415, 2, !dbg !405
  %or470 = or i32 %shl468, %shr469, !dbg !405
  call void @llvm.dbg.value(metadata i32 %or470, metadata !305, metadata !DIExpression()), !dbg !309
  %shl474 = shl i32 %add467, 5, !dbg !407
  %shr475 = lshr i32 %add467, 27, !dbg !407
  %or476 = or i32 %shl474, %shr475, !dbg !407
  %xor477 = xor i32 %add441, %or470, !dbg !407
  %xor478 = xor i32 %xor477, %or444, !dbg !407
  %add479 = add i32 %or476, %xor478, !dbg !407
  %add480 = add i32 %add479, 1859775393, !dbg !407
  %43 = load i32, i32* %arrayidx177, align 4, !dbg !407
  %xor483 = xor i32 %39, %43, !dbg !407
  %44 = load i32, i32* %arrayidx279, align 4, !dbg !407
  %xor485 = xor i32 %xor483, %44, !dbg !407
  %xor487 = xor i32 %xor485, %or412, !dbg !407
  call void @llvm.dbg.value(metadata i32 %xor487, metadata !306, metadata !DIExpression()), !dbg !365
  %shl488 = shl i32 %xor487, 1, !dbg !407
  %shr489 = lshr i32 %xor487, 31, !dbg !407
  %or490 = or i32 %shl488, %shr489, !dbg !407
  store i32 %or490, i32* %arrayidx143, align 4, !dbg !407
  %add492 = add i32 %add480, %or490, !dbg !407
  %add493 = add i32 %or418, %add492, !dbg !407
  call void @llvm.dbg.value(metadata i32 %add493, metadata !302, metadata !DIExpression()), !dbg !309
  %shl494 = shl i32 %add441, 30, !dbg !407
  %shr495 = lshr i32 %add441, 2, !dbg !407
  %or496 = or i32 %shl494, %shr495, !dbg !407
  call void @llvm.dbg.value(metadata i32 %or496, metadata !304, metadata !DIExpression()), !dbg !309
  %shl500 = shl i32 %add493, 5, !dbg !409
  %shr501 = lshr i32 %add493, 27, !dbg !409
  %or502 = or i32 %shl500, %shr501, !dbg !409
  %xor503 = xor i32 %add467, %or496, !dbg !409
  %xor504 = xor i32 %xor503, %or470, !dbg !409
  %add505 = add i32 %or502, %xor504, !dbg !409
  %add506 = add i32 %add505, 1859775393, !dbg !409
  %45 = load i32, i32* %arrayidx194, align 8, !dbg !409
  %xor509 = xor i32 %41, %45, !dbg !409
  %46 = load i32, i32* %arrayidx26, align 16, !dbg !409
  %xor511 = xor i32 %xor509, %46, !dbg !409
  %xor513 = xor i32 %xor511, %or438, !dbg !409
  call void @llvm.dbg.value(metadata i32 %xor513, metadata !306, metadata !DIExpression()), !dbg !365
  %shl514 = shl i32 %xor513, 1, !dbg !409
  %shr515 = lshr i32 %xor513, 31, !dbg !409
  %or516 = or i32 %shl514, %shr515, !dbg !409
  store i32 %or516, i32* %arrayidx160, align 16, !dbg !409
  %add518 = add i32 %add506, %or516, !dbg !409
  %add519 = add i32 %or444, %add518, !dbg !409
  call void @llvm.dbg.value(metadata i32 %add519, metadata !301, metadata !DIExpression()), !dbg !309
  %shl520 = shl i32 %add467, 30, !dbg !409
  %shr521 = lshr i32 %add467, 2, !dbg !409
  %or522 = or i32 %shl520, %shr521, !dbg !409
  call void @llvm.dbg.value(metadata i32 %or522, metadata !303, metadata !DIExpression()), !dbg !309
  %shl526 = shl i32 %add519, 5, !dbg !411
  %shr527 = lshr i32 %add519, 27, !dbg !411
  %or528 = or i32 %shl526, %shr527, !dbg !411
  %xor529 = xor i32 %add493, %or522, !dbg !411
  %xor530 = xor i32 %xor529, %or496, !dbg !411
  %add531 = add i32 %or528, %xor530, !dbg !411
  %add532 = add i32 %add531, 1859775393, !dbg !411
  %47 = load i32, i32* %arrayidx211, align 4, !dbg !411
  %xor535 = xor i32 %43, %47, !dbg !411
  %48 = load i32, i32* %arrayidx41, align 4, !dbg !411
  %xor537 = xor i32 %xor535, %48, !dbg !411
  %xor539 = xor i32 %xor537, %or464, !dbg !411
  call void @llvm.dbg.value(metadata i32 %xor539, metadata !306, metadata !DIExpression()), !dbg !365
  %shl540 = shl i32 %xor539, 1, !dbg !411
  %shr541 = lshr i32 %xor539, 31, !dbg !411
  %or542 = or i32 %shl540, %shr541, !dbg !411
  store i32 %or542, i32* %arrayidx177, align 4, !dbg !411
  %add544 = add i32 %add532, %or542, !dbg !411
  %add545 = add i32 %or470, %add544, !dbg !411
  call void @llvm.dbg.value(metadata i32 %add545, metadata !305, metadata !DIExpression()), !dbg !309
  %shl546 = shl i32 %add493, 30, !dbg !411
  %shr547 = lshr i32 %add493, 2, !dbg !411
  %or548 = or i32 %shl546, %shr547, !dbg !411
  call void @llvm.dbg.value(metadata i32 %or548, metadata !302, metadata !DIExpression()), !dbg !309
  %shl552 = shl i32 %add545, 5, !dbg !413
  %shr553 = lshr i32 %add545, 27, !dbg !413
  %or554 = or i32 %shl552, %shr553, !dbg !413
  %xor555 = xor i32 %add519, %or548, !dbg !413
  %xor556 = xor i32 %xor555, %or522, !dbg !413
  %add557 = add i32 %or554, %xor556, !dbg !413
  %add558 = add i32 %add557, 1859775393, !dbg !413
  %49 = load i32, i32* %arrayidx228, align 16, !dbg !413
  %xor561 = xor i32 %45, %49, !dbg !413
  %50 = load i32, i32* %arrayidx58, align 8, !dbg !413
  %xor563 = xor i32 %xor561, %50, !dbg !413
  %xor565 = xor i32 %xor563, %or490, !dbg !413
  call void @llvm.dbg.value(metadata i32 %xor565, metadata !306, metadata !DIExpression()), !dbg !365
  %shl566 = shl i32 %xor565, 1, !dbg !413
  %shr567 = lshr i32 %xor565, 31, !dbg !413
  %or568 = or i32 %shl566, %shr567, !dbg !413
  store i32 %or568, i32* %arrayidx194, align 8, !dbg !413
  %add570 = add i32 %add558, %or568, !dbg !413
  %add571 = add i32 %or496, %add570, !dbg !413
  call void @llvm.dbg.value(metadata i32 %add571, metadata !304, metadata !DIExpression()), !dbg !309
  %shl572 = shl i32 %add519, 30, !dbg !413
  %shr573 = lshr i32 %add519, 2, !dbg !413
  %or574 = or i32 %shl572, %shr573, !dbg !413
  call void @llvm.dbg.value(metadata i32 %or574, metadata !301, metadata !DIExpression()), !dbg !309
  %shl578 = shl i32 %add571, 5, !dbg !415
  %shr579 = lshr i32 %add571, 27, !dbg !415
  %or580 = or i32 %shl578, %shr579, !dbg !415
  %xor581 = xor i32 %add545, %or574, !dbg !415
  %xor582 = xor i32 %xor581, %or548, !dbg !415
  %add583 = add i32 %or580, %xor582, !dbg !415
  %add584 = add i32 %add583, 1859775393, !dbg !415
  %51 = load i32, i32* %arrayidx245, align 4, !dbg !415
  %xor587 = xor i32 %47, %51, !dbg !415
  %52 = load i32, i32* %arrayidx75, align 4, !dbg !415
  %xor589 = xor i32 %xor587, %52, !dbg !415
  %xor591 = xor i32 %xor589, %or516, !dbg !415
  call void @llvm.dbg.value(metadata i32 %xor591, metadata !306, metadata !DIExpression()), !dbg !365
  %shl592 = shl i32 %xor591, 1, !dbg !415
  %shr593 = lshr i32 %xor591, 31, !dbg !415
  %or594 = or i32 %shl592, %shr593, !dbg !415
  store i32 %or594, i32* %arrayidx211, align 4, !dbg !415
  %add596 = add i32 %add584, %or594, !dbg !415
  %add597 = add i32 %or522, %add596, !dbg !415
  call void @llvm.dbg.value(metadata i32 %add597, metadata !303, metadata !DIExpression()), !dbg !309
  %shl598 = shl i32 %add545, 30, !dbg !415
  %shr599 = lshr i32 %add545, 2, !dbg !415
  %or600 = or i32 %shl598, %shr599, !dbg !415
  call void @llvm.dbg.value(metadata i32 %or600, metadata !305, metadata !DIExpression()), !dbg !309
  %shl604 = shl i32 %add597, 5, !dbg !417
  %shr605 = lshr i32 %add597, 27, !dbg !417
  %or606 = or i32 %shl604, %shr605, !dbg !417
  %xor607 = xor i32 %add571, %or600, !dbg !417
  %xor608 = xor i32 %xor607, %or574, !dbg !417
  %add609 = add i32 %or606, %xor608, !dbg !417
  %add610 = add i32 %add609, 1859775393, !dbg !417
  %53 = load i32, i32* %arrayidx262, align 8, !dbg !417
  %xor613 = xor i32 %49, %53, !dbg !417
  %54 = load i32, i32* %arrayidx92, align 16, !dbg !417
  %xor615 = xor i32 %xor613, %54, !dbg !417
  %xor617 = xor i32 %xor615, %or542, !dbg !417
  call void @llvm.dbg.value(metadata i32 %xor617, metadata !306, metadata !DIExpression()), !dbg !365
  %shl618 = shl i32 %xor617, 1, !dbg !417
  %shr619 = lshr i32 %xor617, 31, !dbg !417
  %or620 = or i32 %shl618, %shr619, !dbg !417
  store i32 %or620, i32* %arrayidx228, align 16, !dbg !417
  %add622 = add i32 %add610, %or620, !dbg !417
  %add623 = add i32 %or548, %add622, !dbg !417
  call void @llvm.dbg.value(metadata i32 %add623, metadata !302, metadata !DIExpression()), !dbg !309
  %shl624 = shl i32 %add571, 30, !dbg !417
  %shr625 = lshr i32 %add571, 2, !dbg !417
  %or626 = or i32 %shl624, %shr625, !dbg !417
  call void @llvm.dbg.value(metadata i32 %or626, metadata !304, metadata !DIExpression()), !dbg !309
  %shl630 = shl i32 %add623, 5, !dbg !419
  %shr631 = lshr i32 %add623, 27, !dbg !419
  %or632 = or i32 %shl630, %shr631, !dbg !419
  %xor633 = xor i32 %add597, %or626, !dbg !419
  %xor634 = xor i32 %xor633, %or600, !dbg !419
  %add635 = add i32 %or632, %xor634, !dbg !419
  %add636 = add i32 %add635, 1859775393, !dbg !419
  %55 = load i32, i32* %arrayidx279, align 4, !dbg !419
  %xor639 = xor i32 %51, %55, !dbg !419
  %56 = load i32, i32* %arrayidx109, align 4, !dbg !419
  %xor641 = xor i32 %xor639, %56, !dbg !419
  %xor643 = xor i32 %xor641, %or568, !dbg !419
  call void @llvm.dbg.value(metadata i32 %xor643, metadata !306, metadata !DIExpression()), !dbg !365
  %shl644 = shl i32 %xor643, 1, !dbg !419
  %shr645 = lshr i32 %xor643, 31, !dbg !419
  %or646 = or i32 %shl644, %shr645, !dbg !419
  store i32 %or646, i32* %arrayidx245, align 4, !dbg !419
  %add648 = add i32 %add636, %or646, !dbg !419
  %add649 = add i32 %or574, %add648, !dbg !419
  call void @llvm.dbg.value(metadata i32 %add649, metadata !301, metadata !DIExpression()), !dbg !309
  %shl650 = shl i32 %add597, 30, !dbg !419
  %shr651 = lshr i32 %add597, 2, !dbg !419
  %or652 = or i32 %shl650, %shr651, !dbg !419
  call void @llvm.dbg.value(metadata i32 %or652, metadata !303, metadata !DIExpression()), !dbg !309
  %shl656 = shl i32 %add649, 5, !dbg !421
  %shr657 = lshr i32 %add649, 27, !dbg !421
  %or658 = or i32 %shl656, %shr657, !dbg !421
  %xor659 = xor i32 %add623, %or652, !dbg !421
  %xor660 = xor i32 %xor659, %or626, !dbg !421
  %add661 = add i32 %or658, %xor660, !dbg !421
  %add662 = add i32 %add661, 1859775393, !dbg !421
  %57 = load i32, i32* %arrayidx26, align 16, !dbg !421
  %xor665 = xor i32 %53, %57, !dbg !421
  %58 = load i32, i32* %arrayidx126, align 8, !dbg !421
  %xor667 = xor i32 %xor665, %58, !dbg !421
  %xor669 = xor i32 %xor667, %or594, !dbg !421
  call void @llvm.dbg.value(metadata i32 %xor669, metadata !306, metadata !DIExpression()), !dbg !365
  %shl670 = shl i32 %xor669, 1, !dbg !421
  %shr671 = lshr i32 %xor669, 31, !dbg !421
  %or672 = or i32 %shl670, %shr671, !dbg !421
  store i32 %or672, i32* %arrayidx262, align 8, !dbg !421
  %add674 = add i32 %add662, %or672, !dbg !421
  %add675 = add i32 %or600, %add674, !dbg !421
  call void @llvm.dbg.value(metadata i32 %add675, metadata !305, metadata !DIExpression()), !dbg !309
  %shl676 = shl i32 %add623, 30, !dbg !421
  %shr677 = lshr i32 %add623, 2, !dbg !421
  %or678 = or i32 %shl676, %shr677, !dbg !421
  call void @llvm.dbg.value(metadata i32 %or678, metadata !302, metadata !DIExpression()), !dbg !309
  %shl682 = shl i32 %add675, 5, !dbg !423
  %shr683 = lshr i32 %add675, 27, !dbg !423
  %or684 = or i32 %shl682, %shr683, !dbg !423
  %xor685 = xor i32 %add649, %or678, !dbg !423
  %xor686 = xor i32 %xor685, %or652, !dbg !423
  %add687 = add i32 %or684, %xor686, !dbg !423
  %add688 = add i32 %add687, 1859775393, !dbg !423
  %59 = load i32, i32* %arrayidx41, align 4, !dbg !423
  %xor691 = xor i32 %55, %59, !dbg !423
  %60 = load i32, i32* %arrayidx143, align 4, !dbg !423
  %xor693 = xor i32 %xor691, %60, !dbg !423
  %xor695 = xor i32 %xor693, %or620, !dbg !423
  call void @llvm.dbg.value(metadata i32 %xor695, metadata !306, metadata !DIExpression()), !dbg !365
  %shl696 = shl i32 %xor695, 1, !dbg !423
  %shr697 = lshr i32 %xor695, 31, !dbg !423
  %or698 = or i32 %shl696, %shr697, !dbg !423
  store i32 %or698, i32* %arrayidx279, align 4, !dbg !423
  %add700 = add i32 %add688, %or698, !dbg !423
  %add701 = add i32 %or626, %add700, !dbg !423
  call void @llvm.dbg.value(metadata i32 %add701, metadata !304, metadata !DIExpression()), !dbg !309
  %shl702 = shl i32 %add649, 30, !dbg !423
  %shr703 = lshr i32 %add649, 2, !dbg !423
  %or704 = or i32 %shl702, %shr703, !dbg !423
  call void @llvm.dbg.value(metadata i32 %or704, metadata !301, metadata !DIExpression()), !dbg !309
  %shl708 = shl i32 %add701, 5, !dbg !425
  %shr709 = lshr i32 %add701, 27, !dbg !425
  %or710 = or i32 %shl708, %shr709, !dbg !425
  %xor711 = xor i32 %add675, %or704, !dbg !425
  %xor712 = xor i32 %xor711, %or678, !dbg !425
  %add713 = add i32 %or710, %xor712, !dbg !425
  %add714 = add i32 %add713, 1859775393, !dbg !425
  %61 = load i32, i32* %arrayidx58, align 8, !dbg !425
  %xor717 = xor i32 %57, %61, !dbg !425
  %62 = load i32, i32* %arrayidx160, align 16, !dbg !425
  %xor719 = xor i32 %xor717, %62, !dbg !425
  %xor721 = xor i32 %xor719, %or646, !dbg !425
  call void @llvm.dbg.value(metadata i32 %xor721, metadata !306, metadata !DIExpression()), !dbg !365
  %shl722 = shl i32 %xor721, 1, !dbg !425
  %shr723 = lshr i32 %xor721, 31, !dbg !425
  %or724 = or i32 %shl722, %shr723, !dbg !425
  store i32 %or724, i32* %arrayidx26, align 16, !dbg !425
  %add726 = add i32 %add714, %or724, !dbg !425
  %add727 = add i32 %or652, %add726, !dbg !425
  call void @llvm.dbg.value(metadata i32 %add727, metadata !303, metadata !DIExpression()), !dbg !309
  %shl728 = shl i32 %add675, 30, !dbg !425
  %shr729 = lshr i32 %add675, 2, !dbg !425
  %or730 = or i32 %shl728, %shr729, !dbg !425
  call void @llvm.dbg.value(metadata i32 %or730, metadata !305, metadata !DIExpression()), !dbg !309
  %shl734 = shl i32 %add727, 5, !dbg !427
  %shr735 = lshr i32 %add727, 27, !dbg !427
  %or736 = or i32 %shl734, %shr735, !dbg !427
  %xor737 = xor i32 %add701, %or730, !dbg !427
  %xor738 = xor i32 %xor737, %or704, !dbg !427
  %add739 = add i32 %or736, %xor738, !dbg !427
  %add740 = add i32 %add739, 1859775393, !dbg !427
  %63 = load i32, i32* %arrayidx75, align 4, !dbg !427
  %xor743 = xor i32 %59, %63, !dbg !427
  %64 = load i32, i32* %arrayidx177, align 4, !dbg !427
  %xor745 = xor i32 %xor743, %64, !dbg !427
  %xor747 = xor i32 %xor745, %or672, !dbg !427
  call void @llvm.dbg.value(metadata i32 %xor747, metadata !306, metadata !DIExpression()), !dbg !365
  %shl748 = shl i32 %xor747, 1, !dbg !427
  %shr749 = lshr i32 %xor747, 31, !dbg !427
  %or750 = or i32 %shl748, %shr749, !dbg !427
  store i32 %or750, i32* %arrayidx41, align 4, !dbg !427
  %add752 = add i32 %add740, %or750, !dbg !427
  %add753 = add i32 %or678, %add752, !dbg !427
  call void @llvm.dbg.value(metadata i32 %add753, metadata !302, metadata !DIExpression()), !dbg !309
  %shl754 = shl i32 %add701, 30, !dbg !427
  %shr755 = lshr i32 %add701, 2, !dbg !427
  %or756 = or i32 %shl754, %shr755, !dbg !427
  call void @llvm.dbg.value(metadata i32 %or756, metadata !304, metadata !DIExpression()), !dbg !309
  %shl760 = shl i32 %add753, 5, !dbg !429
  %shr761 = lshr i32 %add753, 27, !dbg !429
  %or762 = or i32 %shl760, %shr761, !dbg !429
  %xor763 = xor i32 %add727, %or756, !dbg !429
  %xor764 = xor i32 %xor763, %or730, !dbg !429
  %add765 = add i32 %or762, %xor764, !dbg !429
  %add766 = add i32 %add765, 1859775393, !dbg !429
  %65 = load i32, i32* %arrayidx92, align 16, !dbg !429
  %xor769 = xor i32 %61, %65, !dbg !429
  %66 = load i32, i32* %arrayidx194, align 8, !dbg !429
  %xor771 = xor i32 %xor769, %66, !dbg !429
  %xor773 = xor i32 %xor771, %or698, !dbg !429
  call void @llvm.dbg.value(metadata i32 %xor773, metadata !306, metadata !DIExpression()), !dbg !365
  %shl774 = shl i32 %xor773, 1, !dbg !429
  %shr775 = lshr i32 %xor773, 31, !dbg !429
  %or776 = or i32 %shl774, %shr775, !dbg !429
  store i32 %or776, i32* %arrayidx58, align 8, !dbg !429
  %add778 = add i32 %add766, %or776, !dbg !429
  %add779 = add i32 %or704, %add778, !dbg !429
  call void @llvm.dbg.value(metadata i32 %add779, metadata !301, metadata !DIExpression()), !dbg !309
  %shl780 = shl i32 %add727, 30, !dbg !429
  %shr781 = lshr i32 %add727, 2, !dbg !429
  %or782 = or i32 %shl780, %shr781, !dbg !429
  call void @llvm.dbg.value(metadata i32 %or782, metadata !303, metadata !DIExpression()), !dbg !309
  %shl786 = shl i32 %add779, 5, !dbg !431
  %shr787 = lshr i32 %add779, 27, !dbg !431
  %or788 = or i32 %shl786, %shr787, !dbg !431
  %xor789 = xor i32 %add753, %or782, !dbg !431
  %xor790 = xor i32 %xor789, %or756, !dbg !431
  %add791 = add i32 %or788, %xor790, !dbg !431
  %add792 = add i32 %add791, 1859775393, !dbg !431
  %67 = load i32, i32* %arrayidx109, align 4, !dbg !431
  %xor795 = xor i32 %63, %67, !dbg !431
  %68 = load i32, i32* %arrayidx211, align 4, !dbg !431
  %xor797 = xor i32 %xor795, %68, !dbg !431
  %xor799 = xor i32 %xor797, %or724, !dbg !431
  call void @llvm.dbg.value(metadata i32 %xor799, metadata !306, metadata !DIExpression()), !dbg !365
  %shl800 = shl i32 %xor799, 1, !dbg !431
  %shr801 = lshr i32 %xor799, 31, !dbg !431
  %or802 = or i32 %shl800, %shr801, !dbg !431
  store i32 %or802, i32* %arrayidx75, align 4, !dbg !431
  %add804 = add i32 %add792, %or802, !dbg !431
  %add805 = add i32 %or730, %add804, !dbg !431
  call void @llvm.dbg.value(metadata i32 %add805, metadata !305, metadata !DIExpression()), !dbg !309
  %shl806 = shl i32 %add753, 30, !dbg !431
  %shr807 = lshr i32 %add753, 2, !dbg !431
  %or808 = or i32 %shl806, %shr807, !dbg !431
  call void @llvm.dbg.value(metadata i32 %or808, metadata !302, metadata !DIExpression()), !dbg !309
  %shl812 = shl i32 %add805, 5, !dbg !433
  %shr813 = lshr i32 %add805, 27, !dbg !433
  %or814 = or i32 %shl812, %shr813, !dbg !433
  %xor815 = xor i32 %add779, %or808, !dbg !433
  %xor816 = xor i32 %xor815, %or782, !dbg !433
  %add817 = add i32 %or814, %xor816, !dbg !433
  %add818 = add i32 %add817, 1859775393, !dbg !433
  %69 = load i32, i32* %arrayidx126, align 8, !dbg !433
  %xor821 = xor i32 %65, %69, !dbg !433
  %70 = load i32, i32* %arrayidx228, align 16, !dbg !433
  %xor823 = xor i32 %xor821, %70, !dbg !433
  %xor825 = xor i32 %xor823, %or750, !dbg !433
  call void @llvm.dbg.value(metadata i32 %xor825, metadata !306, metadata !DIExpression()), !dbg !365
  %shl826 = shl i32 %xor825, 1, !dbg !433
  %shr827 = lshr i32 %xor825, 31, !dbg !433
  %or828 = or i32 %shl826, %shr827, !dbg !433
  store i32 %or828, i32* %arrayidx92, align 16, !dbg !433
  %add830 = add i32 %add818, %or828, !dbg !433
  %add831 = add i32 %or756, %add830, !dbg !433
  call void @llvm.dbg.value(metadata i32 %add831, metadata !304, metadata !DIExpression()), !dbg !309
  %shl832 = shl i32 %add779, 30, !dbg !433
  %shr833 = lshr i32 %add779, 2, !dbg !433
  %or834 = or i32 %shl832, %shr833, !dbg !433
  call void @llvm.dbg.value(metadata i32 %or834, metadata !301, metadata !DIExpression()), !dbg !309
  %shl838 = shl i32 %add831, 5, !dbg !435
  %shr839 = lshr i32 %add831, 27, !dbg !435
  %or840 = or i32 %shl838, %shr839, !dbg !435
  %xor841 = xor i32 %add805, %or834, !dbg !435
  %xor842 = xor i32 %xor841, %or808, !dbg !435
  %add843 = add i32 %or840, %xor842, !dbg !435
  %add844 = add i32 %add843, 1859775393, !dbg !435
  %71 = load i32, i32* %arrayidx143, align 4, !dbg !435
  %xor847 = xor i32 %67, %71, !dbg !435
  %72 = load i32, i32* %arrayidx245, align 4, !dbg !435
  %xor849 = xor i32 %xor847, %72, !dbg !435
  %xor851 = xor i32 %xor849, %or776, !dbg !435
  call void @llvm.dbg.value(metadata i32 %xor851, metadata !306, metadata !DIExpression()), !dbg !365
  %shl852 = shl i32 %xor851, 1, !dbg !435
  %shr853 = lshr i32 %xor851, 31, !dbg !435
  %or854 = or i32 %shl852, %shr853, !dbg !435
  store i32 %or854, i32* %arrayidx109, align 4, !dbg !435
  %add856 = add i32 %add844, %or854, !dbg !435
  %add857 = add i32 %or782, %add856, !dbg !435
  call void @llvm.dbg.value(metadata i32 %add857, metadata !303, metadata !DIExpression()), !dbg !309
  %shl858 = shl i32 %add805, 30, !dbg !435
  %shr859 = lshr i32 %add805, 2, !dbg !435
  %or860 = or i32 %shl858, %shr859, !dbg !435
  call void @llvm.dbg.value(metadata i32 %or860, metadata !305, metadata !DIExpression()), !dbg !309
  %shl864 = shl i32 %add857, 5, !dbg !437
  %shr865 = lshr i32 %add857, 27, !dbg !437
  %or866 = or i32 %shl864, %shr865, !dbg !437
  %xor867 = xor i32 %add831, %or860, !dbg !437
  %xor868 = xor i32 %xor867, %or834, !dbg !437
  %add869 = add i32 %or866, %xor868, !dbg !437
  %add870 = add i32 %add869, 1859775393, !dbg !437
  %73 = load i32, i32* %arrayidx160, align 16, !dbg !437
  %xor873 = xor i32 %69, %73, !dbg !437
  %74 = load i32, i32* %arrayidx262, align 8, !dbg !437
  %xor875 = xor i32 %xor873, %74, !dbg !437
  %xor877 = xor i32 %xor875, %or802, !dbg !437
  call void @llvm.dbg.value(metadata i32 %xor877, metadata !306, metadata !DIExpression()), !dbg !365
  %shl878 = shl i32 %xor877, 1, !dbg !437
  %shr879 = lshr i32 %xor877, 31, !dbg !437
  %or880 = or i32 %shl878, %shr879, !dbg !437
  store i32 %or880, i32* %arrayidx126, align 8, !dbg !437
  %add882 = add i32 %add870, %or880, !dbg !437
  %add883 = add i32 %or808, %add882, !dbg !437
  call void @llvm.dbg.value(metadata i32 %add883, metadata !302, metadata !DIExpression()), !dbg !309
  %shl884 = shl i32 %add831, 30, !dbg !437
  %shr885 = lshr i32 %add831, 2, !dbg !437
  %or886 = or i32 %shl884, %shr885, !dbg !437
  call void @llvm.dbg.value(metadata i32 %or886, metadata !304, metadata !DIExpression()), !dbg !309
  %shl890 = shl i32 %add883, 5, !dbg !439
  %shr891 = lshr i32 %add883, 27, !dbg !439
  %or892 = or i32 %shl890, %shr891, !dbg !439
  %xor893 = xor i32 %add857, %or886, !dbg !439
  %xor894 = xor i32 %xor893, %or860, !dbg !439
  %add895 = add i32 %or892, %xor894, !dbg !439
  %add896 = add i32 %add895, 1859775393, !dbg !439
  %75 = load i32, i32* %arrayidx177, align 4, !dbg !439
  %xor899 = xor i32 %71, %75, !dbg !439
  %76 = load i32, i32* %arrayidx279, align 4, !dbg !439
  %xor901 = xor i32 %xor899, %76, !dbg !439
  %xor903 = xor i32 %xor901, %or828, !dbg !439
  call void @llvm.dbg.value(metadata i32 %xor903, metadata !306, metadata !DIExpression()), !dbg !365
  %shl904 = shl i32 %xor903, 1, !dbg !439
  %shr905 = lshr i32 %xor903, 31, !dbg !439
  %or906 = or i32 %shl904, %shr905, !dbg !439
  store i32 %or906, i32* %arrayidx143, align 4, !dbg !439
  %add908 = add i32 %add896, %or906, !dbg !439
  %add909 = add i32 %or834, %add908, !dbg !439
  call void @llvm.dbg.value(metadata i32 %add909, metadata !301, metadata !DIExpression()), !dbg !309
  %shl910 = shl i32 %add857, 30, !dbg !439
  %shr911 = lshr i32 %add857, 2, !dbg !439
  %or912 = or i32 %shl910, %shr911, !dbg !439
  call void @llvm.dbg.value(metadata i32 %or912, metadata !303, metadata !DIExpression()), !dbg !309
  %shl916 = shl i32 %add909, 5, !dbg !441
  %shr917 = lshr i32 %add909, 27, !dbg !441
  %or918 = or i32 %shl916, %shr917, !dbg !441
  %and919 = and i32 %add883, %or912, !dbg !441
  %or920 = or i32 %add883, %or912, !dbg !441
  %and921 = and i32 %or886, %or920, !dbg !441
  %or922 = or i32 %and919, %and921, !dbg !441
  %add923 = add i32 %or918, %or922, !dbg !441
  %add924 = add i32 %add923, -1894007588, !dbg !441
  %77 = load i32, i32* %arrayidx194, align 8, !dbg !441
  %xor927 = xor i32 %73, %77, !dbg !441
  %78 = load i32, i32* %arrayidx26, align 16, !dbg !441
  %xor929 = xor i32 %xor927, %78, !dbg !441
  %xor931 = xor i32 %xor929, %or854, !dbg !441
  call void @llvm.dbg.value(metadata i32 %xor931, metadata !306, metadata !DIExpression()), !dbg !365
  %shl932 = shl i32 %xor931, 1, !dbg !441
  %shr933 = lshr i32 %xor931, 31, !dbg !441
  %or934 = or i32 %shl932, %shr933, !dbg !441
  store i32 %or934, i32* %arrayidx160, align 16, !dbg !441
  %add936 = add i32 %add924, %or934, !dbg !441
  %add937 = add i32 %or860, %add936, !dbg !441
  call void @llvm.dbg.value(metadata i32 %add937, metadata !305, metadata !DIExpression()), !dbg !309
  %shl938 = shl i32 %add883, 30, !dbg !441
  %shr939 = lshr i32 %add883, 2, !dbg !441
  %or940 = or i32 %shl938, %shr939, !dbg !441
  call void @llvm.dbg.value(metadata i32 %or940, metadata !302, metadata !DIExpression()), !dbg !309
  %shl944 = shl i32 %add937, 5, !dbg !443
  %shr945 = lshr i32 %add937, 27, !dbg !443
  %or946 = or i32 %shl944, %shr945, !dbg !443
  %and947 = and i32 %add909, %or940, !dbg !443
  %or948 = or i32 %add909, %or940, !dbg !443
  %and949 = and i32 %or912, %or948, !dbg !443
  %or950 = or i32 %and947, %and949, !dbg !443
  %add951 = add i32 %or946, %or950, !dbg !443
  %add952 = add i32 %add951, -1894007588, !dbg !443
  %79 = load i32, i32* %arrayidx211, align 4, !dbg !443
  %xor955 = xor i32 %75, %79, !dbg !443
  %80 = load i32, i32* %arrayidx41, align 4, !dbg !443
  %xor957 = xor i32 %xor955, %80, !dbg !443
  %xor959 = xor i32 %xor957, %or880, !dbg !443
  call void @llvm.dbg.value(metadata i32 %xor959, metadata !306, metadata !DIExpression()), !dbg !365
  %shl960 = shl i32 %xor959, 1, !dbg !443
  %shr961 = lshr i32 %xor959, 31, !dbg !443
  %or962 = or i32 %shl960, %shr961, !dbg !443
  store i32 %or962, i32* %arrayidx177, align 4, !dbg !443
  %add964 = add i32 %add952, %or962, !dbg !443
  %add965 = add i32 %or886, %add964, !dbg !443
  call void @llvm.dbg.value(metadata i32 %add965, metadata !304, metadata !DIExpression()), !dbg !309
  %shl966 = shl i32 %add909, 30, !dbg !443
  %shr967 = lshr i32 %add909, 2, !dbg !443
  %or968 = or i32 %shl966, %shr967, !dbg !443
  call void @llvm.dbg.value(metadata i32 %or968, metadata !301, metadata !DIExpression()), !dbg !309
  %shl972 = shl i32 %add965, 5, !dbg !445
  %shr973 = lshr i32 %add965, 27, !dbg !445
  %or974 = or i32 %shl972, %shr973, !dbg !445
  %and975 = and i32 %add937, %or968, !dbg !445
  %or976 = or i32 %add937, %or968, !dbg !445
  %and977 = and i32 %or940, %or976, !dbg !445
  %or978 = or i32 %and975, %and977, !dbg !445
  %add979 = add i32 %or974, %or978, !dbg !445
  %add980 = add i32 %add979, -1894007588, !dbg !445
  %81 = load i32, i32* %arrayidx228, align 16, !dbg !445
  %xor983 = xor i32 %77, %81, !dbg !445
  %82 = load i32, i32* %arrayidx58, align 8, !dbg !445
  %xor985 = xor i32 %xor983, %82, !dbg !445
  %xor987 = xor i32 %xor985, %or906, !dbg !445
  call void @llvm.dbg.value(metadata i32 %xor987, metadata !306, metadata !DIExpression()), !dbg !365
  %shl988 = shl i32 %xor987, 1, !dbg !445
  %shr989 = lshr i32 %xor987, 31, !dbg !445
  %or990 = or i32 %shl988, %shr989, !dbg !445
  store i32 %or990, i32* %arrayidx194, align 8, !dbg !445
  %add992 = add i32 %add980, %or990, !dbg !445
  %add993 = add i32 %or912, %add992, !dbg !445
  call void @llvm.dbg.value(metadata i32 %add993, metadata !303, metadata !DIExpression()), !dbg !309
  %shl994 = shl i32 %add937, 30, !dbg !445
  %shr995 = lshr i32 %add937, 2, !dbg !445
  %or996 = or i32 %shl994, %shr995, !dbg !445
  call void @llvm.dbg.value(metadata i32 %or996, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1000 = shl i32 %add993, 5, !dbg !447
  %shr1001 = lshr i32 %add993, 27, !dbg !447
  %or1002 = or i32 %shl1000, %shr1001, !dbg !447
  %and1003 = and i32 %add965, %or996, !dbg !447
  %or1004 = or i32 %add965, %or996, !dbg !447
  %and1005 = and i32 %or968, %or1004, !dbg !447
  %or1006 = or i32 %and1003, %and1005, !dbg !447
  %add1007 = add i32 %or1002, %or1006, !dbg !447
  %add1008 = add i32 %add1007, -1894007588, !dbg !447
  %83 = load i32, i32* %arrayidx245, align 4, !dbg !447
  %xor1011 = xor i32 %79, %83, !dbg !447
  %84 = load i32, i32* %arrayidx75, align 4, !dbg !447
  %xor1013 = xor i32 %xor1011, %84, !dbg !447
  %xor1015 = xor i32 %xor1013, %or934, !dbg !447
  call void @llvm.dbg.value(metadata i32 %xor1015, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1016 = shl i32 %xor1015, 1, !dbg !447
  %shr1017 = lshr i32 %xor1015, 31, !dbg !447
  %or1018 = or i32 %shl1016, %shr1017, !dbg !447
  store i32 %or1018, i32* %arrayidx211, align 4, !dbg !447
  %add1020 = add i32 %add1008, %or1018, !dbg !447
  %add1021 = add i32 %or940, %add1020, !dbg !447
  call void @llvm.dbg.value(metadata i32 %add1021, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1022 = shl i32 %add965, 30, !dbg !447
  %shr1023 = lshr i32 %add965, 2, !dbg !447
  %or1024 = or i32 %shl1022, %shr1023, !dbg !447
  call void @llvm.dbg.value(metadata i32 %or1024, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1028 = shl i32 %add1021, 5, !dbg !449
  %shr1029 = lshr i32 %add1021, 27, !dbg !449
  %or1030 = or i32 %shl1028, %shr1029, !dbg !449
  %and1031 = and i32 %add993, %or1024, !dbg !449
  %or1032 = or i32 %add993, %or1024, !dbg !449
  %and1033 = and i32 %or996, %or1032, !dbg !449
  %or1034 = or i32 %and1031, %and1033, !dbg !449
  %add1035 = add i32 %or1030, %or1034, !dbg !449
  %add1036 = add i32 %add1035, -1894007588, !dbg !449
  %85 = load i32, i32* %arrayidx262, align 8, !dbg !449
  %xor1039 = xor i32 %81, %85, !dbg !449
  %86 = load i32, i32* %arrayidx92, align 16, !dbg !449
  %xor1041 = xor i32 %xor1039, %86, !dbg !449
  %xor1043 = xor i32 %xor1041, %or962, !dbg !449
  call void @llvm.dbg.value(metadata i32 %xor1043, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1044 = shl i32 %xor1043, 1, !dbg !449
  %shr1045 = lshr i32 %xor1043, 31, !dbg !449
  %or1046 = or i32 %shl1044, %shr1045, !dbg !449
  store i32 %or1046, i32* %arrayidx228, align 16, !dbg !449
  %add1048 = add i32 %add1036, %or1046, !dbg !449
  %add1049 = add i32 %or968, %add1048, !dbg !449
  call void @llvm.dbg.value(metadata i32 %add1049, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1050 = shl i32 %add993, 30, !dbg !449
  %shr1051 = lshr i32 %add993, 2, !dbg !449
  %or1052 = or i32 %shl1050, %shr1051, !dbg !449
  call void @llvm.dbg.value(metadata i32 %or1052, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1056 = shl i32 %add1049, 5, !dbg !451
  %shr1057 = lshr i32 %add1049, 27, !dbg !451
  %or1058 = or i32 %shl1056, %shr1057, !dbg !451
  %and1059 = and i32 %add1021, %or1052, !dbg !451
  %or1060 = or i32 %add1021, %or1052, !dbg !451
  %and1061 = and i32 %or1024, %or1060, !dbg !451
  %or1062 = or i32 %and1059, %and1061, !dbg !451
  %add1063 = add i32 %or1058, %or1062, !dbg !451
  %add1064 = add i32 %add1063, -1894007588, !dbg !451
  %87 = load i32, i32* %arrayidx279, align 4, !dbg !451
  %xor1067 = xor i32 %83, %87, !dbg !451
  %88 = load i32, i32* %arrayidx109, align 4, !dbg !451
  %xor1069 = xor i32 %xor1067, %88, !dbg !451
  %xor1071 = xor i32 %xor1069, %or990, !dbg !451
  call void @llvm.dbg.value(metadata i32 %xor1071, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1072 = shl i32 %xor1071, 1, !dbg !451
  %shr1073 = lshr i32 %xor1071, 31, !dbg !451
  %or1074 = or i32 %shl1072, %shr1073, !dbg !451
  store i32 %or1074, i32* %arrayidx245, align 4, !dbg !451
  %add1076 = add i32 %add1064, %or1074, !dbg !451
  %add1077 = add i32 %or996, %add1076, !dbg !451
  call void @llvm.dbg.value(metadata i32 %add1077, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1078 = shl i32 %add1021, 30, !dbg !451
  %shr1079 = lshr i32 %add1021, 2, !dbg !451
  %or1080 = or i32 %shl1078, %shr1079, !dbg !451
  call void @llvm.dbg.value(metadata i32 %or1080, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1084 = shl i32 %add1077, 5, !dbg !453
  %shr1085 = lshr i32 %add1077, 27, !dbg !453
  %or1086 = or i32 %shl1084, %shr1085, !dbg !453
  %and1087 = and i32 %add1049, %or1080, !dbg !453
  %or1088 = or i32 %add1049, %or1080, !dbg !453
  %and1089 = and i32 %or1052, %or1088, !dbg !453
  %or1090 = or i32 %and1087, %and1089, !dbg !453
  %add1091 = add i32 %or1086, %or1090, !dbg !453
  %add1092 = add i32 %add1091, -1894007588, !dbg !453
  %89 = load i32, i32* %arrayidx26, align 16, !dbg !453
  %xor1095 = xor i32 %85, %89, !dbg !453
  %90 = load i32, i32* %arrayidx126, align 8, !dbg !453
  %xor1097 = xor i32 %xor1095, %90, !dbg !453
  %xor1099 = xor i32 %xor1097, %or1018, !dbg !453
  call void @llvm.dbg.value(metadata i32 %xor1099, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1100 = shl i32 %xor1099, 1, !dbg !453
  %shr1101 = lshr i32 %xor1099, 31, !dbg !453
  %or1102 = or i32 %shl1100, %shr1101, !dbg !453
  store i32 %or1102, i32* %arrayidx262, align 8, !dbg !453
  %add1104 = add i32 %add1092, %or1102, !dbg !453
  %add1105 = add i32 %or1024, %add1104, !dbg !453
  call void @llvm.dbg.value(metadata i32 %add1105, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1106 = shl i32 %add1049, 30, !dbg !453
  %shr1107 = lshr i32 %add1049, 2, !dbg !453
  %or1108 = or i32 %shl1106, %shr1107, !dbg !453
  call void @llvm.dbg.value(metadata i32 %or1108, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1112 = shl i32 %add1105, 5, !dbg !455
  %shr1113 = lshr i32 %add1105, 27, !dbg !455
  %or1114 = or i32 %shl1112, %shr1113, !dbg !455
  %and1115 = and i32 %add1077, %or1108, !dbg !455
  %or1116 = or i32 %add1077, %or1108, !dbg !455
  %and1117 = and i32 %or1080, %or1116, !dbg !455
  %or1118 = or i32 %and1115, %and1117, !dbg !455
  %add1119 = add i32 %or1114, %or1118, !dbg !455
  %add1120 = add i32 %add1119, -1894007588, !dbg !455
  %91 = load i32, i32* %arrayidx41, align 4, !dbg !455
  %xor1123 = xor i32 %87, %91, !dbg !455
  %92 = load i32, i32* %arrayidx143, align 4, !dbg !455
  %xor1125 = xor i32 %xor1123, %92, !dbg !455
  %xor1127 = xor i32 %xor1125, %or1046, !dbg !455
  call void @llvm.dbg.value(metadata i32 %xor1127, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1128 = shl i32 %xor1127, 1, !dbg !455
  %shr1129 = lshr i32 %xor1127, 31, !dbg !455
  %or1130 = or i32 %shl1128, %shr1129, !dbg !455
  store i32 %or1130, i32* %arrayidx279, align 4, !dbg !455
  %add1132 = add i32 %add1120, %or1130, !dbg !455
  %add1133 = add i32 %or1052, %add1132, !dbg !455
  call void @llvm.dbg.value(metadata i32 %add1133, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1134 = shl i32 %add1077, 30, !dbg !455
  %shr1135 = lshr i32 %add1077, 2, !dbg !455
  %or1136 = or i32 %shl1134, %shr1135, !dbg !455
  call void @llvm.dbg.value(metadata i32 %or1136, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1140 = shl i32 %add1133, 5, !dbg !457
  %shr1141 = lshr i32 %add1133, 27, !dbg !457
  %or1142 = or i32 %shl1140, %shr1141, !dbg !457
  %and1143 = and i32 %add1105, %or1136, !dbg !457
  %or1144 = or i32 %add1105, %or1136, !dbg !457
  %and1145 = and i32 %or1108, %or1144, !dbg !457
  %or1146 = or i32 %and1143, %and1145, !dbg !457
  %add1147 = add i32 %or1142, %or1146, !dbg !457
  %add1148 = add i32 %add1147, -1894007588, !dbg !457
  %93 = load i32, i32* %arrayidx58, align 8, !dbg !457
  %xor1151 = xor i32 %89, %93, !dbg !457
  %94 = load i32, i32* %arrayidx160, align 16, !dbg !457
  %xor1153 = xor i32 %xor1151, %94, !dbg !457
  %xor1155 = xor i32 %xor1153, %or1074, !dbg !457
  call void @llvm.dbg.value(metadata i32 %xor1155, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1156 = shl i32 %xor1155, 1, !dbg !457
  %shr1157 = lshr i32 %xor1155, 31, !dbg !457
  %or1158 = or i32 %shl1156, %shr1157, !dbg !457
  store i32 %or1158, i32* %arrayidx26, align 16, !dbg !457
  %add1160 = add i32 %add1148, %or1158, !dbg !457
  %add1161 = add i32 %or1080, %add1160, !dbg !457
  call void @llvm.dbg.value(metadata i32 %add1161, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1162 = shl i32 %add1105, 30, !dbg !457
  %shr1163 = lshr i32 %add1105, 2, !dbg !457
  %or1164 = or i32 %shl1162, %shr1163, !dbg !457
  call void @llvm.dbg.value(metadata i32 %or1164, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1168 = shl i32 %add1161, 5, !dbg !459
  %shr1169 = lshr i32 %add1161, 27, !dbg !459
  %or1170 = or i32 %shl1168, %shr1169, !dbg !459
  %and1171 = and i32 %add1133, %or1164, !dbg !459
  %or1172 = or i32 %add1133, %or1164, !dbg !459
  %and1173 = and i32 %or1136, %or1172, !dbg !459
  %or1174 = or i32 %and1171, %and1173, !dbg !459
  %add1175 = add i32 %or1170, %or1174, !dbg !459
  %add1176 = add i32 %add1175, -1894007588, !dbg !459
  %95 = load i32, i32* %arrayidx75, align 4, !dbg !459
  %xor1179 = xor i32 %91, %95, !dbg !459
  %96 = load i32, i32* %arrayidx177, align 4, !dbg !459
  %xor1181 = xor i32 %xor1179, %96, !dbg !459
  %xor1183 = xor i32 %xor1181, %or1102, !dbg !459
  call void @llvm.dbg.value(metadata i32 %xor1183, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1184 = shl i32 %xor1183, 1, !dbg !459
  %shr1185 = lshr i32 %xor1183, 31, !dbg !459
  %or1186 = or i32 %shl1184, %shr1185, !dbg !459
  store i32 %or1186, i32* %arrayidx41, align 4, !dbg !459
  %add1188 = add i32 %add1176, %or1186, !dbg !459
  %add1189 = add i32 %or1108, %add1188, !dbg !459
  call void @llvm.dbg.value(metadata i32 %add1189, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1190 = shl i32 %add1133, 30, !dbg !459
  %shr1191 = lshr i32 %add1133, 2, !dbg !459
  %or1192 = or i32 %shl1190, %shr1191, !dbg !459
  call void @llvm.dbg.value(metadata i32 %or1192, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1196 = shl i32 %add1189, 5, !dbg !461
  %shr1197 = lshr i32 %add1189, 27, !dbg !461
  %or1198 = or i32 %shl1196, %shr1197, !dbg !461
  %and1199 = and i32 %add1161, %or1192, !dbg !461
  %or1200 = or i32 %add1161, %or1192, !dbg !461
  %and1201 = and i32 %or1164, %or1200, !dbg !461
  %or1202 = or i32 %and1199, %and1201, !dbg !461
  %add1203 = add i32 %or1198, %or1202, !dbg !461
  %add1204 = add i32 %add1203, -1894007588, !dbg !461
  %97 = load i32, i32* %arrayidx92, align 16, !dbg !461
  %xor1207 = xor i32 %93, %97, !dbg !461
  %98 = load i32, i32* %arrayidx194, align 8, !dbg !461
  %xor1209 = xor i32 %xor1207, %98, !dbg !461
  %xor1211 = xor i32 %xor1209, %or1130, !dbg !461
  call void @llvm.dbg.value(metadata i32 %xor1211, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1212 = shl i32 %xor1211, 1, !dbg !461
  %shr1213 = lshr i32 %xor1211, 31, !dbg !461
  %or1214 = or i32 %shl1212, %shr1213, !dbg !461
  store i32 %or1214, i32* %arrayidx58, align 8, !dbg !461
  %add1216 = add i32 %add1204, %or1214, !dbg !461
  %add1217 = add i32 %or1136, %add1216, !dbg !461
  call void @llvm.dbg.value(metadata i32 %add1217, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1218 = shl i32 %add1161, 30, !dbg !461
  %shr1219 = lshr i32 %add1161, 2, !dbg !461
  %or1220 = or i32 %shl1218, %shr1219, !dbg !461
  call void @llvm.dbg.value(metadata i32 %or1220, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1224 = shl i32 %add1217, 5, !dbg !463
  %shr1225 = lshr i32 %add1217, 27, !dbg !463
  %or1226 = or i32 %shl1224, %shr1225, !dbg !463
  %and1227 = and i32 %add1189, %or1220, !dbg !463
  %or1228 = or i32 %add1189, %or1220, !dbg !463
  %and1229 = and i32 %or1192, %or1228, !dbg !463
  %or1230 = or i32 %and1227, %and1229, !dbg !463
  %add1231 = add i32 %or1226, %or1230, !dbg !463
  %add1232 = add i32 %add1231, -1894007588, !dbg !463
  %99 = load i32, i32* %arrayidx109, align 4, !dbg !463
  %xor1235 = xor i32 %95, %99, !dbg !463
  %100 = load i32, i32* %arrayidx211, align 4, !dbg !463
  %xor1237 = xor i32 %xor1235, %100, !dbg !463
  %xor1239 = xor i32 %xor1237, %or1158, !dbg !463
  call void @llvm.dbg.value(metadata i32 %xor1239, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1240 = shl i32 %xor1239, 1, !dbg !463
  %shr1241 = lshr i32 %xor1239, 31, !dbg !463
  %or1242 = or i32 %shl1240, %shr1241, !dbg !463
  store i32 %or1242, i32* %arrayidx75, align 4, !dbg !463
  %add1244 = add i32 %add1232, %or1242, !dbg !463
  %add1245 = add i32 %or1164, %add1244, !dbg !463
  call void @llvm.dbg.value(metadata i32 %add1245, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1246 = shl i32 %add1189, 30, !dbg !463
  %shr1247 = lshr i32 %add1189, 2, !dbg !463
  %or1248 = or i32 %shl1246, %shr1247, !dbg !463
  call void @llvm.dbg.value(metadata i32 %or1248, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1252 = shl i32 %add1245, 5, !dbg !465
  %shr1253 = lshr i32 %add1245, 27, !dbg !465
  %or1254 = or i32 %shl1252, %shr1253, !dbg !465
  %and1255 = and i32 %add1217, %or1248, !dbg !465
  %or1256 = or i32 %add1217, %or1248, !dbg !465
  %and1257 = and i32 %or1220, %or1256, !dbg !465
  %or1258 = or i32 %and1255, %and1257, !dbg !465
  %add1259 = add i32 %or1254, %or1258, !dbg !465
  %add1260 = add i32 %add1259, -1894007588, !dbg !465
  %101 = load i32, i32* %arrayidx126, align 8, !dbg !465
  %xor1263 = xor i32 %97, %101, !dbg !465
  %102 = load i32, i32* %arrayidx228, align 16, !dbg !465
  %xor1265 = xor i32 %xor1263, %102, !dbg !465
  %xor1267 = xor i32 %xor1265, %or1186, !dbg !465
  call void @llvm.dbg.value(metadata i32 %xor1267, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1268 = shl i32 %xor1267, 1, !dbg !465
  %shr1269 = lshr i32 %xor1267, 31, !dbg !465
  %or1270 = or i32 %shl1268, %shr1269, !dbg !465
  store i32 %or1270, i32* %arrayidx92, align 16, !dbg !465
  %add1272 = add i32 %add1260, %or1270, !dbg !465
  %add1273 = add i32 %or1192, %add1272, !dbg !465
  call void @llvm.dbg.value(metadata i32 %add1273, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1274 = shl i32 %add1217, 30, !dbg !465
  %shr1275 = lshr i32 %add1217, 2, !dbg !465
  %or1276 = or i32 %shl1274, %shr1275, !dbg !465
  call void @llvm.dbg.value(metadata i32 %or1276, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1280 = shl i32 %add1273, 5, !dbg !467
  %shr1281 = lshr i32 %add1273, 27, !dbg !467
  %or1282 = or i32 %shl1280, %shr1281, !dbg !467
  %and1283 = and i32 %add1245, %or1276, !dbg !467
  %or1284 = or i32 %add1245, %or1276, !dbg !467
  %and1285 = and i32 %or1248, %or1284, !dbg !467
  %or1286 = or i32 %and1283, %and1285, !dbg !467
  %add1287 = add i32 %or1282, %or1286, !dbg !467
  %add1288 = add i32 %add1287, -1894007588, !dbg !467
  %103 = load i32, i32* %arrayidx143, align 4, !dbg !467
  %xor1291 = xor i32 %99, %103, !dbg !467
  %104 = load i32, i32* %arrayidx245, align 4, !dbg !467
  %xor1293 = xor i32 %xor1291, %104, !dbg !467
  %xor1295 = xor i32 %xor1293, %or1214, !dbg !467
  call void @llvm.dbg.value(metadata i32 %xor1295, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1296 = shl i32 %xor1295, 1, !dbg !467
  %shr1297 = lshr i32 %xor1295, 31, !dbg !467
  %or1298 = or i32 %shl1296, %shr1297, !dbg !467
  store i32 %or1298, i32* %arrayidx109, align 4, !dbg !467
  %add1300 = add i32 %add1288, %or1298, !dbg !467
  %add1301 = add i32 %or1220, %add1300, !dbg !467
  call void @llvm.dbg.value(metadata i32 %add1301, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1302 = shl i32 %add1245, 30, !dbg !467
  %shr1303 = lshr i32 %add1245, 2, !dbg !467
  %or1304 = or i32 %shl1302, %shr1303, !dbg !467
  call void @llvm.dbg.value(metadata i32 %or1304, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1308 = shl i32 %add1301, 5, !dbg !469
  %shr1309 = lshr i32 %add1301, 27, !dbg !469
  %or1310 = or i32 %shl1308, %shr1309, !dbg !469
  %and1311 = and i32 %add1273, %or1304, !dbg !469
  %or1312 = or i32 %add1273, %or1304, !dbg !469
  %and1313 = and i32 %or1276, %or1312, !dbg !469
  %or1314 = or i32 %and1311, %and1313, !dbg !469
  %add1315 = add i32 %or1310, %or1314, !dbg !469
  %add1316 = add i32 %add1315, -1894007588, !dbg !469
  %105 = load i32, i32* %arrayidx160, align 16, !dbg !469
  %xor1319 = xor i32 %101, %105, !dbg !469
  %106 = load i32, i32* %arrayidx262, align 8, !dbg !469
  %xor1321 = xor i32 %xor1319, %106, !dbg !469
  %xor1323 = xor i32 %xor1321, %or1242, !dbg !469
  call void @llvm.dbg.value(metadata i32 %xor1323, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1324 = shl i32 %xor1323, 1, !dbg !469
  %shr1325 = lshr i32 %xor1323, 31, !dbg !469
  %or1326 = or i32 %shl1324, %shr1325, !dbg !469
  store i32 %or1326, i32* %arrayidx126, align 8, !dbg !469
  %add1328 = add i32 %add1316, %or1326, !dbg !469
  %add1329 = add i32 %or1248, %add1328, !dbg !469
  call void @llvm.dbg.value(metadata i32 %add1329, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1330 = shl i32 %add1273, 30, !dbg !469
  %shr1331 = lshr i32 %add1273, 2, !dbg !469
  %or1332 = or i32 %shl1330, %shr1331, !dbg !469
  call void @llvm.dbg.value(metadata i32 %or1332, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1336 = shl i32 %add1329, 5, !dbg !471
  %shr1337 = lshr i32 %add1329, 27, !dbg !471
  %or1338 = or i32 %shl1336, %shr1337, !dbg !471
  %and1339 = and i32 %add1301, %or1332, !dbg !471
  %or1340 = or i32 %add1301, %or1332, !dbg !471
  %and1341 = and i32 %or1304, %or1340, !dbg !471
  %or1342 = or i32 %and1339, %and1341, !dbg !471
  %add1343 = add i32 %or1338, %or1342, !dbg !471
  %add1344 = add i32 %add1343, -1894007588, !dbg !471
  %107 = load i32, i32* %arrayidx177, align 4, !dbg !471
  %xor1347 = xor i32 %103, %107, !dbg !471
  %108 = load i32, i32* %arrayidx279, align 4, !dbg !471
  %xor1349 = xor i32 %xor1347, %108, !dbg !471
  %xor1351 = xor i32 %xor1349, %or1270, !dbg !471
  call void @llvm.dbg.value(metadata i32 %xor1351, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1352 = shl i32 %xor1351, 1, !dbg !471
  %shr1353 = lshr i32 %xor1351, 31, !dbg !471
  %or1354 = or i32 %shl1352, %shr1353, !dbg !471
  store i32 %or1354, i32* %arrayidx143, align 4, !dbg !471
  %add1356 = add i32 %add1344, %or1354, !dbg !471
  %add1357 = add i32 %or1276, %add1356, !dbg !471
  call void @llvm.dbg.value(metadata i32 %add1357, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1358 = shl i32 %add1301, 30, !dbg !471
  %shr1359 = lshr i32 %add1301, 2, !dbg !471
  %or1360 = or i32 %shl1358, %shr1359, !dbg !471
  call void @llvm.dbg.value(metadata i32 %or1360, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1364 = shl i32 %add1357, 5, !dbg !473
  %shr1365 = lshr i32 %add1357, 27, !dbg !473
  %or1366 = or i32 %shl1364, %shr1365, !dbg !473
  %and1367 = and i32 %add1329, %or1360, !dbg !473
  %or1368 = or i32 %add1329, %or1360, !dbg !473
  %and1369 = and i32 %or1332, %or1368, !dbg !473
  %or1370 = or i32 %and1367, %and1369, !dbg !473
  %add1371 = add i32 %or1366, %or1370, !dbg !473
  %add1372 = add i32 %add1371, -1894007588, !dbg !473
  %109 = load i32, i32* %arrayidx194, align 8, !dbg !473
  %xor1375 = xor i32 %105, %109, !dbg !473
  %110 = load i32, i32* %arrayidx26, align 16, !dbg !473
  %xor1377 = xor i32 %xor1375, %110, !dbg !473
  %xor1379 = xor i32 %xor1377, %or1298, !dbg !473
  call void @llvm.dbg.value(metadata i32 %xor1379, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1380 = shl i32 %xor1379, 1, !dbg !473
  %shr1381 = lshr i32 %xor1379, 31, !dbg !473
  %or1382 = or i32 %shl1380, %shr1381, !dbg !473
  store i32 %or1382, i32* %arrayidx160, align 16, !dbg !473
  %add1384 = add i32 %add1372, %or1382, !dbg !473
  %add1385 = add i32 %or1304, %add1384, !dbg !473
  call void @llvm.dbg.value(metadata i32 %add1385, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1386 = shl i32 %add1329, 30, !dbg !473
  %shr1387 = lshr i32 %add1329, 2, !dbg !473
  %or1388 = or i32 %shl1386, %shr1387, !dbg !473
  call void @llvm.dbg.value(metadata i32 %or1388, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1392 = shl i32 %add1385, 5, !dbg !475
  %shr1393 = lshr i32 %add1385, 27, !dbg !475
  %or1394 = or i32 %shl1392, %shr1393, !dbg !475
  %and1395 = and i32 %add1357, %or1388, !dbg !475
  %or1396 = or i32 %add1357, %or1388, !dbg !475
  %and1397 = and i32 %or1360, %or1396, !dbg !475
  %or1398 = or i32 %and1395, %and1397, !dbg !475
  %add1399 = add i32 %or1394, %or1398, !dbg !475
  %add1400 = add i32 %add1399, -1894007588, !dbg !475
  %111 = load i32, i32* %arrayidx211, align 4, !dbg !475
  %xor1403 = xor i32 %107, %111, !dbg !475
  %112 = load i32, i32* %arrayidx41, align 4, !dbg !475
  %xor1405 = xor i32 %xor1403, %112, !dbg !475
  %xor1407 = xor i32 %xor1405, %or1326, !dbg !475
  call void @llvm.dbg.value(metadata i32 %xor1407, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1408 = shl i32 %xor1407, 1, !dbg !475
  %shr1409 = lshr i32 %xor1407, 31, !dbg !475
  %or1410 = or i32 %shl1408, %shr1409, !dbg !475
  store i32 %or1410, i32* %arrayidx177, align 4, !dbg !475
  %add1412 = add i32 %add1400, %or1410, !dbg !475
  %add1413 = add i32 %or1332, %add1412, !dbg !475
  call void @llvm.dbg.value(metadata i32 %add1413, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1414 = shl i32 %add1357, 30, !dbg !475
  %shr1415 = lshr i32 %add1357, 2, !dbg !475
  %or1416 = or i32 %shl1414, %shr1415, !dbg !475
  call void @llvm.dbg.value(metadata i32 %or1416, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1420 = shl i32 %add1413, 5, !dbg !477
  %shr1421 = lshr i32 %add1413, 27, !dbg !477
  %or1422 = or i32 %shl1420, %shr1421, !dbg !477
  %and1423 = and i32 %add1385, %or1416, !dbg !477
  %or1424 = or i32 %add1385, %or1416, !dbg !477
  %and1425 = and i32 %or1388, %or1424, !dbg !477
  %or1426 = or i32 %and1423, %and1425, !dbg !477
  %add1427 = add i32 %or1422, %or1426, !dbg !477
  %add1428 = add i32 %add1427, -1894007588, !dbg !477
  %113 = load i32, i32* %arrayidx228, align 16, !dbg !477
  %xor1431 = xor i32 %109, %113, !dbg !477
  %114 = load i32, i32* %arrayidx58, align 8, !dbg !477
  %xor1433 = xor i32 %xor1431, %114, !dbg !477
  %xor1435 = xor i32 %xor1433, %or1354, !dbg !477
  call void @llvm.dbg.value(metadata i32 %xor1435, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1436 = shl i32 %xor1435, 1, !dbg !477
  %shr1437 = lshr i32 %xor1435, 31, !dbg !477
  %or1438 = or i32 %shl1436, %shr1437, !dbg !477
  store i32 %or1438, i32* %arrayidx194, align 8, !dbg !477
  %add1440 = add i32 %add1428, %or1438, !dbg !477
  %add1441 = add i32 %or1360, %add1440, !dbg !477
  call void @llvm.dbg.value(metadata i32 %add1441, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1442 = shl i32 %add1385, 30, !dbg !477
  %shr1443 = lshr i32 %add1385, 2, !dbg !477
  %or1444 = or i32 %shl1442, %shr1443, !dbg !477
  call void @llvm.dbg.value(metadata i32 %or1444, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1448 = shl i32 %add1441, 5, !dbg !479
  %shr1449 = lshr i32 %add1441, 27, !dbg !479
  %or1450 = or i32 %shl1448, %shr1449, !dbg !479
  %and1451 = and i32 %add1413, %or1444, !dbg !479
  %or1452 = or i32 %add1413, %or1444, !dbg !479
  %and1453 = and i32 %or1416, %or1452, !dbg !479
  %or1454 = or i32 %and1451, %and1453, !dbg !479
  %add1455 = add i32 %or1450, %or1454, !dbg !479
  %add1456 = add i32 %add1455, -1894007588, !dbg !479
  %115 = load i32, i32* %arrayidx245, align 4, !dbg !479
  %xor1459 = xor i32 %111, %115, !dbg !479
  %116 = load i32, i32* %arrayidx75, align 4, !dbg !479
  %xor1461 = xor i32 %xor1459, %116, !dbg !479
  %xor1463 = xor i32 %xor1461, %or1382, !dbg !479
  call void @llvm.dbg.value(metadata i32 %xor1463, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1464 = shl i32 %xor1463, 1, !dbg !479
  %shr1465 = lshr i32 %xor1463, 31, !dbg !479
  %or1466 = or i32 %shl1464, %shr1465, !dbg !479
  store i32 %or1466, i32* %arrayidx211, align 4, !dbg !479
  %add1468 = add i32 %add1456, %or1466, !dbg !479
  %add1469 = add i32 %or1388, %add1468, !dbg !479
  call void @llvm.dbg.value(metadata i32 %add1469, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1470 = shl i32 %add1413, 30, !dbg !479
  %shr1471 = lshr i32 %add1413, 2, !dbg !479
  %or1472 = or i32 %shl1470, %shr1471, !dbg !479
  call void @llvm.dbg.value(metadata i32 %or1472, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1476 = shl i32 %add1469, 5, !dbg !481
  %shr1477 = lshr i32 %add1469, 27, !dbg !481
  %or1478 = or i32 %shl1476, %shr1477, !dbg !481
  %xor1479 = xor i32 %add1441, %or1472, !dbg !481
  %xor1480 = xor i32 %xor1479, %or1444, !dbg !481
  %add1481 = add i32 %or1478, %xor1480, !dbg !481
  %add1482 = add i32 %add1481, -899497514, !dbg !481
  %117 = load i32, i32* %arrayidx262, align 8, !dbg !481
  %xor1485 = xor i32 %113, %117, !dbg !481
  %118 = load i32, i32* %arrayidx92, align 16, !dbg !481
  %xor1487 = xor i32 %xor1485, %118, !dbg !481
  %xor1489 = xor i32 %xor1487, %or1410, !dbg !481
  call void @llvm.dbg.value(metadata i32 %xor1489, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1490 = shl i32 %xor1489, 1, !dbg !481
  %shr1491 = lshr i32 %xor1489, 31, !dbg !481
  %or1492 = or i32 %shl1490, %shr1491, !dbg !481
  store i32 %or1492, i32* %arrayidx228, align 16, !dbg !481
  %add1494 = add i32 %add1482, %or1492, !dbg !481
  %add1495 = add i32 %or1416, %add1494, !dbg !481
  call void @llvm.dbg.value(metadata i32 %add1495, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1496 = shl i32 %add1441, 30, !dbg !481
  %shr1497 = lshr i32 %add1441, 2, !dbg !481
  %or1498 = or i32 %shl1496, %shr1497, !dbg !481
  call void @llvm.dbg.value(metadata i32 %or1498, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1502 = shl i32 %add1495, 5, !dbg !483
  %shr1503 = lshr i32 %add1495, 27, !dbg !483
  %or1504 = or i32 %shl1502, %shr1503, !dbg !483
  %xor1505 = xor i32 %add1469, %or1498, !dbg !483
  %xor1506 = xor i32 %xor1505, %or1472, !dbg !483
  %add1507 = add i32 %or1504, %xor1506, !dbg !483
  %add1508 = add i32 %add1507, -899497514, !dbg !483
  %119 = load i32, i32* %arrayidx279, align 4, !dbg !483
  %xor1511 = xor i32 %115, %119, !dbg !483
  %120 = load i32, i32* %arrayidx109, align 4, !dbg !483
  %xor1513 = xor i32 %xor1511, %120, !dbg !483
  %xor1515 = xor i32 %xor1513, %or1438, !dbg !483
  call void @llvm.dbg.value(metadata i32 %xor1515, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1516 = shl i32 %xor1515, 1, !dbg !483
  %shr1517 = lshr i32 %xor1515, 31, !dbg !483
  %or1518 = or i32 %shl1516, %shr1517, !dbg !483
  store i32 %or1518, i32* %arrayidx245, align 4, !dbg !483
  %add1520 = add i32 %add1508, %or1518, !dbg !483
  %add1521 = add i32 %or1444, %add1520, !dbg !483
  call void @llvm.dbg.value(metadata i32 %add1521, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1522 = shl i32 %add1469, 30, !dbg !483
  %shr1523 = lshr i32 %add1469, 2, !dbg !483
  %or1524 = or i32 %shl1522, %shr1523, !dbg !483
  call void @llvm.dbg.value(metadata i32 %or1524, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1528 = shl i32 %add1521, 5, !dbg !485
  %shr1529 = lshr i32 %add1521, 27, !dbg !485
  %or1530 = or i32 %shl1528, %shr1529, !dbg !485
  %xor1531 = xor i32 %add1495, %or1524, !dbg !485
  %xor1532 = xor i32 %xor1531, %or1498, !dbg !485
  %add1533 = add i32 %or1530, %xor1532, !dbg !485
  %add1534 = add i32 %add1533, -899497514, !dbg !485
  %121 = load i32, i32* %arrayidx26, align 16, !dbg !485
  %xor1537 = xor i32 %117, %121, !dbg !485
  %122 = load i32, i32* %arrayidx126, align 8, !dbg !485
  %xor1539 = xor i32 %xor1537, %122, !dbg !485
  %xor1541 = xor i32 %xor1539, %or1466, !dbg !485
  call void @llvm.dbg.value(metadata i32 %xor1541, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1542 = shl i32 %xor1541, 1, !dbg !485
  %shr1543 = lshr i32 %xor1541, 31, !dbg !485
  %or1544 = or i32 %shl1542, %shr1543, !dbg !485
  store i32 %or1544, i32* %arrayidx262, align 8, !dbg !485
  %add1546 = add i32 %add1534, %or1544, !dbg !485
  %add1547 = add i32 %or1472, %add1546, !dbg !485
  call void @llvm.dbg.value(metadata i32 %add1547, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1548 = shl i32 %add1495, 30, !dbg !485
  %shr1549 = lshr i32 %add1495, 2, !dbg !485
  %or1550 = or i32 %shl1548, %shr1549, !dbg !485
  call void @llvm.dbg.value(metadata i32 %or1550, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1554 = shl i32 %add1547, 5, !dbg !487
  %shr1555 = lshr i32 %add1547, 27, !dbg !487
  %or1556 = or i32 %shl1554, %shr1555, !dbg !487
  %xor1557 = xor i32 %add1521, %or1550, !dbg !487
  %xor1558 = xor i32 %xor1557, %or1524, !dbg !487
  %add1559 = add i32 %or1556, %xor1558, !dbg !487
  %add1560 = add i32 %add1559, -899497514, !dbg !487
  %123 = load i32, i32* %arrayidx41, align 4, !dbg !487
  %xor1563 = xor i32 %119, %123, !dbg !487
  %124 = load i32, i32* %arrayidx143, align 4, !dbg !487
  %xor1565 = xor i32 %xor1563, %124, !dbg !487
  %xor1567 = xor i32 %xor1565, %or1492, !dbg !487
  call void @llvm.dbg.value(metadata i32 %xor1567, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1568 = shl i32 %xor1567, 1, !dbg !487
  %shr1569 = lshr i32 %xor1567, 31, !dbg !487
  %or1570 = or i32 %shl1568, %shr1569, !dbg !487
  store i32 %or1570, i32* %arrayidx279, align 4, !dbg !487
  %add1572 = add i32 %add1560, %or1570, !dbg !487
  %add1573 = add i32 %or1498, %add1572, !dbg !487
  call void @llvm.dbg.value(metadata i32 %add1573, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1574 = shl i32 %add1521, 30, !dbg !487
  %shr1575 = lshr i32 %add1521, 2, !dbg !487
  %or1576 = or i32 %shl1574, %shr1575, !dbg !487
  call void @llvm.dbg.value(metadata i32 %or1576, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1580 = shl i32 %add1573, 5, !dbg !489
  %shr1581 = lshr i32 %add1573, 27, !dbg !489
  %or1582 = or i32 %shl1580, %shr1581, !dbg !489
  %xor1583 = xor i32 %add1547, %or1576, !dbg !489
  %xor1584 = xor i32 %xor1583, %or1550, !dbg !489
  %add1585 = add i32 %or1582, %xor1584, !dbg !489
  %add1586 = add i32 %add1585, -899497514, !dbg !489
  %125 = load i32, i32* %arrayidx58, align 8, !dbg !489
  %xor1589 = xor i32 %121, %125, !dbg !489
  %126 = load i32, i32* %arrayidx160, align 16, !dbg !489
  %xor1591 = xor i32 %xor1589, %126, !dbg !489
  %xor1593 = xor i32 %xor1591, %or1518, !dbg !489
  call void @llvm.dbg.value(metadata i32 %xor1593, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1594 = shl i32 %xor1593, 1, !dbg !489
  %shr1595 = lshr i32 %xor1593, 31, !dbg !489
  %or1596 = or i32 %shl1594, %shr1595, !dbg !489
  store i32 %or1596, i32* %arrayidx26, align 16, !dbg !489
  %add1598 = add i32 %add1586, %or1596, !dbg !489
  %add1599 = add i32 %or1524, %add1598, !dbg !489
  call void @llvm.dbg.value(metadata i32 %add1599, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1600 = shl i32 %add1547, 30, !dbg !489
  %shr1601 = lshr i32 %add1547, 2, !dbg !489
  %or1602 = or i32 %shl1600, %shr1601, !dbg !489
  call void @llvm.dbg.value(metadata i32 %or1602, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1606 = shl i32 %add1599, 5, !dbg !491
  %shr1607 = lshr i32 %add1599, 27, !dbg !491
  %or1608 = or i32 %shl1606, %shr1607, !dbg !491
  %xor1609 = xor i32 %add1573, %or1602, !dbg !491
  %xor1610 = xor i32 %xor1609, %or1576, !dbg !491
  %add1611 = add i32 %or1608, %xor1610, !dbg !491
  %add1612 = add i32 %add1611, -899497514, !dbg !491
  %127 = load i32, i32* %arrayidx75, align 4, !dbg !491
  %xor1615 = xor i32 %123, %127, !dbg !491
  %128 = load i32, i32* %arrayidx177, align 4, !dbg !491
  %xor1617 = xor i32 %xor1615, %128, !dbg !491
  %xor1619 = xor i32 %xor1617, %or1544, !dbg !491
  call void @llvm.dbg.value(metadata i32 %xor1619, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1620 = shl i32 %xor1619, 1, !dbg !491
  %shr1621 = lshr i32 %xor1619, 31, !dbg !491
  %or1622 = or i32 %shl1620, %shr1621, !dbg !491
  store i32 %or1622, i32* %arrayidx41, align 4, !dbg !491
  %add1624 = add i32 %add1612, %or1622, !dbg !491
  %add1625 = add i32 %or1550, %add1624, !dbg !491
  call void @llvm.dbg.value(metadata i32 %add1625, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1626 = shl i32 %add1573, 30, !dbg !491
  %shr1627 = lshr i32 %add1573, 2, !dbg !491
  %or1628 = or i32 %shl1626, %shr1627, !dbg !491
  call void @llvm.dbg.value(metadata i32 %or1628, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1632 = shl i32 %add1625, 5, !dbg !493
  %shr1633 = lshr i32 %add1625, 27, !dbg !493
  %or1634 = or i32 %shl1632, %shr1633, !dbg !493
  %xor1635 = xor i32 %add1599, %or1628, !dbg !493
  %xor1636 = xor i32 %xor1635, %or1602, !dbg !493
  %add1637 = add i32 %or1634, %xor1636, !dbg !493
  %add1638 = add i32 %add1637, -899497514, !dbg !493
  %129 = load i32, i32* %arrayidx92, align 16, !dbg !493
  %xor1641 = xor i32 %125, %129, !dbg !493
  %130 = load i32, i32* %arrayidx194, align 8, !dbg !493
  %xor1643 = xor i32 %xor1641, %130, !dbg !493
  %xor1645 = xor i32 %xor1643, %or1570, !dbg !493
  call void @llvm.dbg.value(metadata i32 %xor1645, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1646 = shl i32 %xor1645, 1, !dbg !493
  %shr1647 = lshr i32 %xor1645, 31, !dbg !493
  %or1648 = or i32 %shl1646, %shr1647, !dbg !493
  store i32 %or1648, i32* %arrayidx58, align 8, !dbg !493
  %add1650 = add i32 %add1638, %or1648, !dbg !493
  %add1651 = add i32 %or1576, %add1650, !dbg !493
  call void @llvm.dbg.value(metadata i32 %add1651, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1652 = shl i32 %add1599, 30, !dbg !493
  %shr1653 = lshr i32 %add1599, 2, !dbg !493
  %or1654 = or i32 %shl1652, %shr1653, !dbg !493
  call void @llvm.dbg.value(metadata i32 %or1654, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1658 = shl i32 %add1651, 5, !dbg !495
  %shr1659 = lshr i32 %add1651, 27, !dbg !495
  %or1660 = or i32 %shl1658, %shr1659, !dbg !495
  %xor1661 = xor i32 %add1625, %or1654, !dbg !495
  %xor1662 = xor i32 %xor1661, %or1628, !dbg !495
  %add1663 = add i32 %or1660, %xor1662, !dbg !495
  %add1664 = add i32 %add1663, -899497514, !dbg !495
  %131 = load i32, i32* %arrayidx109, align 4, !dbg !495
  %xor1667 = xor i32 %127, %131, !dbg !495
  %132 = load i32, i32* %arrayidx211, align 4, !dbg !495
  %xor1669 = xor i32 %xor1667, %132, !dbg !495
  %xor1671 = xor i32 %xor1669, %or1596, !dbg !495
  call void @llvm.dbg.value(metadata i32 %xor1671, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1672 = shl i32 %xor1671, 1, !dbg !495
  %shr1673 = lshr i32 %xor1671, 31, !dbg !495
  %or1674 = or i32 %shl1672, %shr1673, !dbg !495
  store i32 %or1674, i32* %arrayidx75, align 4, !dbg !495
  %add1676 = add i32 %add1664, %or1674, !dbg !495
  %add1677 = add i32 %or1602, %add1676, !dbg !495
  call void @llvm.dbg.value(metadata i32 %add1677, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1678 = shl i32 %add1625, 30, !dbg !495
  %shr1679 = lshr i32 %add1625, 2, !dbg !495
  %or1680 = or i32 %shl1678, %shr1679, !dbg !495
  call void @llvm.dbg.value(metadata i32 %or1680, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1684 = shl i32 %add1677, 5, !dbg !497
  %shr1685 = lshr i32 %add1677, 27, !dbg !497
  %or1686 = or i32 %shl1684, %shr1685, !dbg !497
  %xor1687 = xor i32 %add1651, %or1680, !dbg !497
  %xor1688 = xor i32 %xor1687, %or1654, !dbg !497
  %add1689 = add i32 %or1686, %xor1688, !dbg !497
  %add1690 = add i32 %add1689, -899497514, !dbg !497
  %133 = load i32, i32* %arrayidx126, align 8, !dbg !497
  %xor1693 = xor i32 %129, %133, !dbg !497
  %134 = load i32, i32* %arrayidx228, align 16, !dbg !497
  %xor1695 = xor i32 %xor1693, %134, !dbg !497
  %xor1697 = xor i32 %xor1695, %or1622, !dbg !497
  call void @llvm.dbg.value(metadata i32 %xor1697, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1698 = shl i32 %xor1697, 1, !dbg !497
  %shr1699 = lshr i32 %xor1697, 31, !dbg !497
  %or1700 = or i32 %shl1698, %shr1699, !dbg !497
  store i32 %or1700, i32* %arrayidx92, align 16, !dbg !497
  %add1702 = add i32 %add1690, %or1700, !dbg !497
  %add1703 = add i32 %or1628, %add1702, !dbg !497
  call void @llvm.dbg.value(metadata i32 %add1703, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1704 = shl i32 %add1651, 30, !dbg !497
  %shr1705 = lshr i32 %add1651, 2, !dbg !497
  %or1706 = or i32 %shl1704, %shr1705, !dbg !497
  call void @llvm.dbg.value(metadata i32 %or1706, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1710 = shl i32 %add1703, 5, !dbg !499
  %shr1711 = lshr i32 %add1703, 27, !dbg !499
  %or1712 = or i32 %shl1710, %shr1711, !dbg !499
  %xor1713 = xor i32 %add1677, %or1706, !dbg !499
  %xor1714 = xor i32 %xor1713, %or1680, !dbg !499
  %add1715 = add i32 %or1712, %xor1714, !dbg !499
  %add1716 = add i32 %add1715, -899497514, !dbg !499
  %135 = load i32, i32* %arrayidx143, align 4, !dbg !499
  %xor1719 = xor i32 %131, %135, !dbg !499
  %136 = load i32, i32* %arrayidx245, align 4, !dbg !499
  %xor1721 = xor i32 %xor1719, %136, !dbg !499
  %xor1723 = xor i32 %xor1721, %or1648, !dbg !499
  call void @llvm.dbg.value(metadata i32 %xor1723, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1724 = shl i32 %xor1723, 1, !dbg !499
  %shr1725 = lshr i32 %xor1723, 31, !dbg !499
  %or1726 = or i32 %shl1724, %shr1725, !dbg !499
  store i32 %or1726, i32* %arrayidx109, align 4, !dbg !499
  %add1728 = add i32 %add1716, %or1726, !dbg !499
  %add1729 = add i32 %or1654, %add1728, !dbg !499
  call void @llvm.dbg.value(metadata i32 %add1729, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1730 = shl i32 %add1677, 30, !dbg !499
  %shr1731 = lshr i32 %add1677, 2, !dbg !499
  %or1732 = or i32 %shl1730, %shr1731, !dbg !499
  call void @llvm.dbg.value(metadata i32 %or1732, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1736 = shl i32 %add1729, 5, !dbg !501
  %shr1737 = lshr i32 %add1729, 27, !dbg !501
  %or1738 = or i32 %shl1736, %shr1737, !dbg !501
  %xor1739 = xor i32 %add1703, %or1732, !dbg !501
  %xor1740 = xor i32 %xor1739, %or1706, !dbg !501
  %add1741 = add i32 %or1738, %xor1740, !dbg !501
  %add1742 = add i32 %add1741, -899497514, !dbg !501
  %137 = load i32, i32* %arrayidx160, align 16, !dbg !501
  %xor1745 = xor i32 %133, %137, !dbg !501
  %138 = load i32, i32* %arrayidx262, align 8, !dbg !501
  %xor1747 = xor i32 %xor1745, %138, !dbg !501
  %xor1749 = xor i32 %xor1747, %or1674, !dbg !501
  call void @llvm.dbg.value(metadata i32 %xor1749, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1750 = shl i32 %xor1749, 1, !dbg !501
  %shr1751 = lshr i32 %xor1749, 31, !dbg !501
  %or1752 = or i32 %shl1750, %shr1751, !dbg !501
  store i32 %or1752, i32* %arrayidx126, align 8, !dbg !501
  %add1754 = add i32 %add1742, %or1752, !dbg !501
  %add1755 = add i32 %or1680, %add1754, !dbg !501
  call void @llvm.dbg.value(metadata i32 %add1755, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1756 = shl i32 %add1703, 30, !dbg !501
  %shr1757 = lshr i32 %add1703, 2, !dbg !501
  %or1758 = or i32 %shl1756, %shr1757, !dbg !501
  call void @llvm.dbg.value(metadata i32 %or1758, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1762 = shl i32 %add1755, 5, !dbg !503
  %shr1763 = lshr i32 %add1755, 27, !dbg !503
  %or1764 = or i32 %shl1762, %shr1763, !dbg !503
  %xor1765 = xor i32 %add1729, %or1758, !dbg !503
  %xor1766 = xor i32 %xor1765, %or1732, !dbg !503
  %add1767 = add i32 %or1764, %xor1766, !dbg !503
  %add1768 = add i32 %add1767, -899497514, !dbg !503
  %139 = load i32, i32* %arrayidx177, align 4, !dbg !503
  %xor1771 = xor i32 %135, %139, !dbg !503
  %140 = load i32, i32* %arrayidx279, align 4, !dbg !503
  %xor1773 = xor i32 %xor1771, %140, !dbg !503
  %xor1775 = xor i32 %xor1773, %or1700, !dbg !503
  call void @llvm.dbg.value(metadata i32 %xor1775, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1776 = shl i32 %xor1775, 1, !dbg !503
  %shr1777 = lshr i32 %xor1775, 31, !dbg !503
  %or1778 = or i32 %shl1776, %shr1777, !dbg !503
  store i32 %or1778, i32* %arrayidx143, align 4, !dbg !503
  %add1780 = add i32 %add1768, %or1778, !dbg !503
  %add1781 = add i32 %or1706, %add1780, !dbg !503
  call void @llvm.dbg.value(metadata i32 %add1781, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1782 = shl i32 %add1729, 30, !dbg !503
  %shr1783 = lshr i32 %add1729, 2, !dbg !503
  %or1784 = or i32 %shl1782, %shr1783, !dbg !503
  call void @llvm.dbg.value(metadata i32 %or1784, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1788 = shl i32 %add1781, 5, !dbg !505
  %shr1789 = lshr i32 %add1781, 27, !dbg !505
  %or1790 = or i32 %shl1788, %shr1789, !dbg !505
  %xor1791 = xor i32 %add1755, %or1784, !dbg !505
  %xor1792 = xor i32 %xor1791, %or1758, !dbg !505
  %add1793 = add i32 %or1790, %xor1792, !dbg !505
  %add1794 = add i32 %add1793, -899497514, !dbg !505
  %141 = load i32, i32* %arrayidx194, align 8, !dbg !505
  %xor1797 = xor i32 %137, %141, !dbg !505
  %142 = load i32, i32* %arrayidx26, align 16, !dbg !505
  %xor1799 = xor i32 %xor1797, %142, !dbg !505
  %xor1801 = xor i32 %xor1799, %or1726, !dbg !505
  call void @llvm.dbg.value(metadata i32 %xor1801, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1802 = shl i32 %xor1801, 1, !dbg !505
  %shr1803 = lshr i32 %xor1801, 31, !dbg !505
  %or1804 = or i32 %shl1802, %shr1803, !dbg !505
  store i32 %or1804, i32* %arrayidx160, align 16, !dbg !505
  %add1806 = add i32 %add1794, %or1804, !dbg !505
  %add1807 = add i32 %or1732, %add1806, !dbg !505
  call void @llvm.dbg.value(metadata i32 %add1807, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1808 = shl i32 %add1755, 30, !dbg !505
  %shr1809 = lshr i32 %add1755, 2, !dbg !505
  %or1810 = or i32 %shl1808, %shr1809, !dbg !505
  call void @llvm.dbg.value(metadata i32 %or1810, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1814 = shl i32 %add1807, 5, !dbg !507
  %shr1815 = lshr i32 %add1807, 27, !dbg !507
  %or1816 = or i32 %shl1814, %shr1815, !dbg !507
  %xor1817 = xor i32 %add1781, %or1810, !dbg !507
  %xor1818 = xor i32 %xor1817, %or1784, !dbg !507
  %add1819 = add i32 %or1816, %xor1818, !dbg !507
  %add1820 = add i32 %add1819, -899497514, !dbg !507
  %143 = load i32, i32* %arrayidx211, align 4, !dbg !507
  %xor1823 = xor i32 %139, %143, !dbg !507
  %144 = load i32, i32* %arrayidx41, align 4, !dbg !507
  %xor1825 = xor i32 %xor1823, %144, !dbg !507
  %xor1827 = xor i32 %xor1825, %or1752, !dbg !507
  call void @llvm.dbg.value(metadata i32 %xor1827, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1828 = shl i32 %xor1827, 1, !dbg !507
  %shr1829 = lshr i32 %xor1827, 31, !dbg !507
  %or1830 = or i32 %shl1828, %shr1829, !dbg !507
  store i32 %or1830, i32* %arrayidx177, align 4, !dbg !507
  %add1832 = add i32 %add1820, %or1830, !dbg !507
  %add1833 = add i32 %or1758, %add1832, !dbg !507
  call void @llvm.dbg.value(metadata i32 %add1833, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1834 = shl i32 %add1781, 30, !dbg !507
  %shr1835 = lshr i32 %add1781, 2, !dbg !507
  %or1836 = or i32 %shl1834, %shr1835, !dbg !507
  call void @llvm.dbg.value(metadata i32 %or1836, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1840 = shl i32 %add1833, 5, !dbg !509
  %shr1841 = lshr i32 %add1833, 27, !dbg !509
  %or1842 = or i32 %shl1840, %shr1841, !dbg !509
  %xor1843 = xor i32 %add1807, %or1836, !dbg !509
  %xor1844 = xor i32 %xor1843, %or1810, !dbg !509
  %add1845 = add i32 %or1842, %xor1844, !dbg !509
  %add1846 = add i32 %add1845, -899497514, !dbg !509
  %145 = load i32, i32* %arrayidx228, align 16, !dbg !509
  %xor1849 = xor i32 %141, %145, !dbg !509
  %146 = load i32, i32* %arrayidx58, align 8, !dbg !509
  %xor1851 = xor i32 %xor1849, %146, !dbg !509
  %xor1853 = xor i32 %xor1851, %or1778, !dbg !509
  call void @llvm.dbg.value(metadata i32 %xor1853, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1854 = shl i32 %xor1853, 1, !dbg !509
  %shr1855 = lshr i32 %xor1853, 31, !dbg !509
  %or1856 = or i32 %shl1854, %shr1855, !dbg !509
  store i32 %or1856, i32* %arrayidx194, align 8, !dbg !509
  %add1858 = add i32 %add1846, %or1856, !dbg !509
  %add1859 = add i32 %or1784, %add1858, !dbg !509
  call void @llvm.dbg.value(metadata i32 %add1859, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1860 = shl i32 %add1807, 30, !dbg !509
  %shr1861 = lshr i32 %add1807, 2, !dbg !509
  %or1862 = or i32 %shl1860, %shr1861, !dbg !509
  call void @llvm.dbg.value(metadata i32 %or1862, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1866 = shl i32 %add1859, 5, !dbg !511
  %shr1867 = lshr i32 %add1859, 27, !dbg !511
  %or1868 = or i32 %shl1866, %shr1867, !dbg !511
  %xor1869 = xor i32 %add1833, %or1862, !dbg !511
  %xor1870 = xor i32 %xor1869, %or1836, !dbg !511
  %add1871 = add i32 %or1868, %xor1870, !dbg !511
  %add1872 = add i32 %add1871, -899497514, !dbg !511
  %147 = load i32, i32* %arrayidx245, align 4, !dbg !511
  %xor1875 = xor i32 %143, %147, !dbg !511
  %148 = load i32, i32* %arrayidx75, align 4, !dbg !511
  %xor1877 = xor i32 %xor1875, %148, !dbg !511
  %xor1879 = xor i32 %xor1877, %or1804, !dbg !511
  call void @llvm.dbg.value(metadata i32 %xor1879, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1880 = shl i32 %xor1879, 1, !dbg !511
  %shr1881 = lshr i32 %xor1879, 31, !dbg !511
  %or1882 = or i32 %shl1880, %shr1881, !dbg !511
  store i32 %or1882, i32* %arrayidx211, align 4, !dbg !511
  %add1884 = add i32 %add1872, %or1882, !dbg !511
  %add1885 = add i32 %or1810, %add1884, !dbg !511
  call void @llvm.dbg.value(metadata i32 %add1885, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1886 = shl i32 %add1833, 30, !dbg !511
  %shr1887 = lshr i32 %add1833, 2, !dbg !511
  %or1888 = or i32 %shl1886, %shr1887, !dbg !511
  call void @llvm.dbg.value(metadata i32 %or1888, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1892 = shl i32 %add1885, 5, !dbg !513
  %shr1893 = lshr i32 %add1885, 27, !dbg !513
  %or1894 = or i32 %shl1892, %shr1893, !dbg !513
  %xor1895 = xor i32 %add1859, %or1888, !dbg !513
  %xor1896 = xor i32 %xor1895, %or1862, !dbg !513
  %add1897 = add i32 %or1894, %xor1896, !dbg !513
  %add1898 = add i32 %add1897, -899497514, !dbg !513
  %149 = load i32, i32* %arrayidx262, align 8, !dbg !513
  %xor1901 = xor i32 %145, %149, !dbg !513
  %150 = load i32, i32* %arrayidx92, align 16, !dbg !513
  %xor1903 = xor i32 %xor1901, %150, !dbg !513
  %xor1905 = xor i32 %xor1903, %or1830, !dbg !513
  call void @llvm.dbg.value(metadata i32 %xor1905, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1906 = shl i32 %xor1905, 1, !dbg !513
  %shr1907 = lshr i32 %xor1905, 31, !dbg !513
  %or1908 = or i32 %shl1906, %shr1907, !dbg !513
  store i32 %or1908, i32* %arrayidx228, align 16, !dbg !513
  %add1910 = add i32 %add1898, %or1908, !dbg !513
  %add1911 = add i32 %or1836, %add1910, !dbg !513
  call void @llvm.dbg.value(metadata i32 %add1911, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1912 = shl i32 %add1859, 30, !dbg !513
  %shr1913 = lshr i32 %add1859, 2, !dbg !513
  %or1914 = or i32 %shl1912, %shr1913, !dbg !513
  call void @llvm.dbg.value(metadata i32 %or1914, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1918 = shl i32 %add1911, 5, !dbg !515
  %shr1919 = lshr i32 %add1911, 27, !dbg !515
  %or1920 = or i32 %shl1918, %shr1919, !dbg !515
  %xor1921 = xor i32 %add1885, %or1914, !dbg !515
  %xor1922 = xor i32 %xor1921, %or1888, !dbg !515
  %add1923 = add i32 %or1920, %xor1922, !dbg !515
  %add1924 = add i32 %add1923, -899497514, !dbg !515
  %151 = load i32, i32* %arrayidx279, align 4, !dbg !515
  %xor1927 = xor i32 %147, %151, !dbg !515
  %152 = load i32, i32* %arrayidx109, align 4, !dbg !515
  %xor1929 = xor i32 %xor1927, %152, !dbg !515
  %xor1931 = xor i32 %xor1929, %or1856, !dbg !515
  call void @llvm.dbg.value(metadata i32 %xor1931, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1932 = shl i32 %xor1931, 1, !dbg !515
  %shr1933 = lshr i32 %xor1931, 31, !dbg !515
  %or1934 = or i32 %shl1932, %shr1933, !dbg !515
  store i32 %or1934, i32* %arrayidx245, align 4, !dbg !515
  %add1936 = add i32 %add1924, %or1934, !dbg !515
  %add1937 = add i32 %or1862, %add1936, !dbg !515
  call void @llvm.dbg.value(metadata i32 %add1937, metadata !303, metadata !DIExpression()), !dbg !309
  %shl1938 = shl i32 %add1885, 30, !dbg !515
  %shr1939 = lshr i32 %add1885, 2, !dbg !515
  %or1940 = or i32 %shl1938, %shr1939, !dbg !515
  call void @llvm.dbg.value(metadata i32 %or1940, metadata !305, metadata !DIExpression()), !dbg !309
  %shl1944 = shl i32 %add1937, 5, !dbg !517
  %shr1945 = lshr i32 %add1937, 27, !dbg !517
  %or1946 = or i32 %shl1944, %shr1945, !dbg !517
  %xor1947 = xor i32 %add1911, %or1940, !dbg !517
  %xor1948 = xor i32 %xor1947, %or1914, !dbg !517
  %add1949 = add i32 %or1946, %xor1948, !dbg !517
  %add1950 = add i32 %add1949, -899497514, !dbg !517
  %153 = load i32, i32* %arrayidx26, align 16, !dbg !517
  %xor1953 = xor i32 %149, %153, !dbg !517
  %154 = load i32, i32* %arrayidx126, align 8, !dbg !517
  %xor1955 = xor i32 %xor1953, %154, !dbg !517
  %xor1957 = xor i32 %xor1955, %or1882, !dbg !517
  call void @llvm.dbg.value(metadata i32 %xor1957, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1958 = shl i32 %xor1957, 1, !dbg !517
  %shr1959 = lshr i32 %xor1957, 31, !dbg !517
  %or1960 = or i32 %shl1958, %shr1959, !dbg !517
  store i32 %or1960, i32* %arrayidx262, align 8, !dbg !517
  %add1962 = add i32 %add1950, %or1960, !dbg !517
  %add1963 = add i32 %or1888, %add1962, !dbg !517
  call void @llvm.dbg.value(metadata i32 %add1963, metadata !302, metadata !DIExpression()), !dbg !309
  %shl1964 = shl i32 %add1911, 30, !dbg !517
  %shr1965 = lshr i32 %add1911, 2, !dbg !517
  %or1966 = or i32 %shl1964, %shr1965, !dbg !517
  call void @llvm.dbg.value(metadata i32 %or1966, metadata !304, metadata !DIExpression()), !dbg !309
  %shl1970 = shl i32 %add1963, 5, !dbg !519
  %shr1971 = lshr i32 %add1963, 27, !dbg !519
  %or1972 = or i32 %shl1970, %shr1971, !dbg !519
  %xor1973 = xor i32 %add1937, %or1966, !dbg !519
  %xor1974 = xor i32 %xor1973, %or1940, !dbg !519
  %add1975 = add i32 %or1972, %xor1974, !dbg !519
  %add1976 = add i32 %add1975, -899497514, !dbg !519
  %155 = load i32, i32* %arrayidx41, align 4, !dbg !519
  %xor1979 = xor i32 %151, %155, !dbg !519
  %156 = load i32, i32* %arrayidx143, align 4, !dbg !519
  %xor1981 = xor i32 %xor1979, %156, !dbg !519
  %xor1983 = xor i32 %xor1981, %or1908, !dbg !519
  call void @llvm.dbg.value(metadata i32 %xor1983, metadata !306, metadata !DIExpression()), !dbg !365
  %shl1984 = shl i32 %xor1983, 1, !dbg !519
  %shr1985 = lshr i32 %xor1983, 31, !dbg !519
  %or1986 = or i32 %shl1984, %shr1985, !dbg !519
  store i32 %or1986, i32* %arrayidx279, align 4, !dbg !519
  %add1988 = add i32 %add1976, %or1986, !dbg !519
  %add1989 = add i32 %or1914, %add1988, !dbg !519
  call void @llvm.dbg.value(metadata i32 %add1989, metadata !301, metadata !DIExpression()), !dbg !309
  %shl1990 = shl i32 %add1937, 30, !dbg !519
  %shr1991 = lshr i32 %add1937, 2, !dbg !519
  %or1992 = or i32 %shl1990, %shr1991, !dbg !519
  call void @llvm.dbg.value(metadata i32 %or1992, metadata !303, metadata !DIExpression()), !dbg !309
  %157 = load i32, i32* %A, align 4, !dbg !521
  %add1996 = add i32 %157, %add1989, !dbg !521
  store i32 %add1996, i32* %A, align 4, !dbg !521
  call void @llvm.dbg.value(metadata i32 %add1996, metadata !301, metadata !DIExpression()), !dbg !309
  %158 = load i32, i32* %B, align 4, !dbg !522
  %add1998 = add i32 %158, %add1963, !dbg !522
  store i32 %add1998, i32* %B, align 4, !dbg !522
  call void @llvm.dbg.value(metadata i32 %add1998, metadata !302, metadata !DIExpression()), !dbg !309
  %159 = load i32, i32* %C, align 4, !dbg !523
  %add2000 = add i32 %159, %or1992, !dbg !523
  store i32 %add2000, i32* %C, align 4, !dbg !523
  call void @llvm.dbg.value(metadata i32 %add2000, metadata !303, metadata !DIExpression()), !dbg !309
  %160 = load i32, i32* %D, align 4, !dbg !524
  %add2002 = add i32 %160, %or1966, !dbg !524
  store i32 %add2002, i32* %D, align 4, !dbg !524
  call void @llvm.dbg.value(metadata i32 %add2002, metadata !304, metadata !DIExpression()), !dbg !309
  %161 = load i32, i32* %E, align 4, !dbg !525
  %add2004 = add i32 %161, %or1940, !dbg !525
  store i32 %add2004, i32* %E, align 4, !dbg !525
  call void @llvm.dbg.value(metadata i32 %add2004, metadata !305, metadata !DIExpression()), !dbg !309
  br label %while.cond, !dbg !360, !llvm.loop !526

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #8, !dbg !528
  ret void, !dbg !528
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @sha1_stream(%struct._IO_FILE* %stream, i8* %resblock) local_unnamed_addr #4 !dbg !529 {
entry:
  %ctx = alloca %struct.sha1_ctx, align 4
  %buffer = alloca [4168 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, metadata !533, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i8* %resblock, metadata !534, metadata !DIExpression()), !dbg !544
  %0 = bitcast %struct.sha1_ctx* %ctx to i8*, !dbg !545
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %0) #8, !dbg !545
  %1 = getelementptr inbounds [4168 x i8], [4168 x i8]* %buffer, i64 0, i64 0, !dbg !546
  call void @llvm.lifetime.start.p0i8(i64 4168, i8* nonnull %1) #8, !dbg !546
  call void @llvm.dbg.declare(metadata [4168 x i8]* %buffer, metadata !536, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !535, metadata !DIExpression(DW_OP_deref)), !dbg !544
  call void @sha1_init_ctx(%struct.sha1_ctx* nonnull %ctx) #7, !dbg !548
  br label %while.cond, !dbg !549

while.cond:                                       ; preds = %cleanup, %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !540, metadata !DIExpression()), !dbg !544
  br label %while.cond1, !dbg !550

while.cond1:                                      ; preds = %if.end8, %while.cond
  %sum.0 = phi i64 [ 0, %while.cond ], [ %add, %if.end8 ], !dbg !551
  call void @llvm.dbg.value(metadata i64 %sum.0, metadata !540, metadata !DIExpression()), !dbg !544
  %add.ptr = getelementptr inbounds [4168 x i8], [4168 x i8]* %buffer, i64 0, i64 %sum.0, !dbg !552
  %sub = sub i64 4096, %sum.0, !dbg !554
  %call = call i64 @fread(i8* nonnull %add.ptr, i64 1, i64 %sub, %struct._IO_FILE* %stream) #6, !dbg !555
  call void @llvm.dbg.value(metadata i64 %call, metadata !541, metadata !DIExpression()), !dbg !551
  %add = add i64 %sum.0, %call, !dbg !556
  call void @llvm.dbg.value(metadata i64 %add, metadata !540, metadata !DIExpression()), !dbg !544
  %cmp = icmp eq i64 %add, 4096, !dbg !557
  br i1 %cmp, label %while.end, label %if.end, !dbg !559

if.end:                                           ; preds = %while.cond1
  %cmp3 = icmp eq i64 %call, 0, !dbg !560
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !562

if.then4:                                         ; preds = %if.end
  %add.lcssa10 = phi i64 [ %add, %if.end ], !dbg !556
  %call5 = call i32 @ferror(%struct._IO_FILE* %stream) #6, !dbg !563
  %tobool = icmp eq i32 %call5, 0, !dbg !563
  %. = select i1 %tobool, i32 6, i32 1, !dbg !566
  br label %cleanup, !dbg !566

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @feof(%struct._IO_FILE* %stream) #6, !dbg !567
  %tobool10 = icmp eq i32 %call9, 0, !dbg !567
  br i1 %tobool10, label %while.cond1, label %cleanup.loopexit, !dbg !569, !llvm.loop !570

while.end:                                        ; preds = %while.cond1
  %add.lcssa = phi i64 [ %add, %while.cond1 ], !dbg !556
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !535, metadata !DIExpression(DW_OP_deref)), !dbg !544
  call void @sha1_process_block(i8* nonnull %1, i64 4096, %struct.sha1_ctx* nonnull %ctx) #7, !dbg !572
  br label %cleanup, !dbg !573

cleanup.loopexit:                                 ; preds = %if.end8
  %add.lcssa11 = phi i64 [ %add, %if.end8 ], !dbg !556
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then4, %while.end
  %add12 = phi i64 [ %add.lcssa, %while.end ], [ %add.lcssa10, %if.then4 ], [ %add.lcssa11, %cleanup.loopexit ]
  %cleanup.dest.slot.0 = phi i32 [ 0, %while.end ], [ %., %if.then4 ], [ 6, %cleanup.loopexit ]
  switch i32 %cleanup.dest.slot.0, label %cleanup19.loopexit [
    i32 0, label %while.cond
    i32 6, label %process_partial_block
  ], !llvm.loop !574

process_partial_block:                            ; preds = %cleanup
  %add12.lcssa13 = phi i64 [ %add12, %cleanup ]
  call void @llvm.dbg.label(metadata !543), !dbg !575
  %cmp14 = icmp eq i64 %add12.lcssa13, 0, !dbg !576
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !578

if.then15:                                        ; preds = %process_partial_block
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !535, metadata !DIExpression(DW_OP_deref)), !dbg !544
  call void @sha1_process_bytes(i8* nonnull %1, i64 %add12.lcssa13, %struct.sha1_ctx* nonnull %ctx) #7, !dbg !579
  br label %if.end17, !dbg !579

if.end17:                                         ; preds = %process_partial_block, %if.then15
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !535, metadata !DIExpression(DW_OP_deref)), !dbg !544
  %call18 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %ctx, i8* %resblock) #7, !dbg !580
  br label %cleanup19, !dbg !581

cleanup19.loopexit:                               ; preds = %cleanup
  br label %cleanup19, !dbg !582

cleanup19:                                        ; preds = %cleanup19.loopexit, %if.end17
  %retval.2 = phi i32 [ 0, %if.end17 ], [ 1, %cleanup19.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 4168, i8* nonnull %1) #8, !dbg !582
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %0) #8, !dbg !582
  ret i32 %retval.2, !dbg !582
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @ferror(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @feof(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local void @sha1_process_bytes(i8* %buffer, i64 %len, %struct.sha1_ctx* %ctx) local_unnamed_addr #4 !dbg !583 {
entry:
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !585, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %len, metadata !586, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !587, metadata !DIExpression()), !dbg !595
  %buflen = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 6, !dbg !596
  %0 = load i32, i32* %buflen, align 4, !dbg !596
  %cmp = icmp eq i32 %0, 0, !dbg !597
  br i1 %cmp, label %if.end31, label %if.then, !dbg !598

if.then:                                          ; preds = %entry
  %conv = zext i32 %0 to i64, !dbg !599
  call void @llvm.dbg.value(metadata i64 %conv, metadata !588, metadata !DIExpression()), !dbg !600
  %sub = sub nsw i64 128, %conv, !dbg !601
  %cmp2 = icmp ugt i64 %sub, %len, !dbg !602
  %cond = select i1 %cmp2, i64 %len, i64 %sub, !dbg !603
  call void @llvm.dbg.value(metadata i64 %cond, metadata !591, metadata !DIExpression()), !dbg !600
  %arraydecay = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 7, i64 0, !dbg !604
  %1 = bitcast i32* %arraydecay to i8*, !dbg !604
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %conv, !dbg !604
  %call = tail call i8* @memcpy(i8* nonnull %arrayidx, i8* %buffer, i64 %cond) #6, !dbg !605
  %2 = load i32, i32* %buflen, align 4, !dbg !606
  %3 = trunc i64 %cond to i32, !dbg !606
  %conv9 = add i32 %2, %3, !dbg !606
  store i32 %conv9, i32* %buflen, align 4, !dbg !606
  %cmp11 = icmp ugt i32 %conv9, 64, !dbg !607
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !609

if.then13:                                        ; preds = %if.then
  %and = and i32 %conv9, -64, !dbg !610
  %conv17 = zext i32 %and to i64, !dbg !612
  tail call void @sha1_process_block(i8* nonnull %1, i64 %conv17, %struct.sha1_ctx* %ctx) #7, !dbg !613
  %4 = load i32, i32* %buflen, align 4, !dbg !614
  %and19 = and i32 %4, 63, !dbg !614
  store i32 %and19, i32* %buflen, align 4, !dbg !614
  %add24 = add i64 %cond, %conv, !dbg !615
  %and25 = and i64 %add24, -64, !dbg !616
  %arrayidx26 = getelementptr inbounds i8, i8* %1, i64 %and25, !dbg !617
  %conv28 = zext i32 %and19 to i64, !dbg !618
  %call29 = tail call i8* @memcpy(i8* nonnull %1, i8* nonnull %arrayidx26, i64 %conv28) #6, !dbg !619
  br label %if.end, !dbg !620

if.end:                                           ; preds = %if.then13, %if.then
  %add.ptr = getelementptr inbounds i8, i8* %buffer, i64 %cond, !dbg !621
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !585, metadata !DIExpression()), !dbg !595
  %sub30 = sub i64 %len, %cond, !dbg !622
  call void @llvm.dbg.value(metadata i64 %sub30, metadata !586, metadata !DIExpression()), !dbg !595
  br label %if.end31, !dbg !623

if.end31:                                         ; preds = %entry, %if.end
  %len.addr.0 = phi i64 [ %sub30, %if.end ], [ %len, %entry ]
  %buffer.addr.0 = phi i8* [ %add.ptr, %if.end ], [ %buffer, %entry ]
  call void @llvm.dbg.value(metadata i8* %buffer.addr.0, metadata !585, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %len.addr.0, metadata !586, metadata !DIExpression()), !dbg !595
  %cmp32 = icmp ugt i64 %len.addr.0, 63, !dbg !624
  br i1 %cmp32, label %if.then34, label %if.end50, !dbg !626

if.then34:                                        ; preds = %if.end31
  %5 = ptrtoint i8* %buffer.addr.0 to i64, !dbg !627
  %rem = and i64 %5, 3, !dbg !627
  %cmp35 = icmp eq i64 %rem, 0, !dbg !627
  br i1 %cmp35, label %if.else, label %while.cond.preheader, !dbg !630

while.cond.preheader:                             ; preds = %if.then34
  %arraydecay41 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 7, i64 0, !dbg !631
  %6 = bitcast i32* %arraydecay41 to i8*, !dbg !631
  br label %while.cond, !dbg !633

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %len.addr.1 = phi i64 [ %sub44, %while.body ], [ %len.addr.0, %while.cond.preheader ], !dbg !595
  %buffer.addr.1 = phi i8* [ %add.ptr43, %while.body ], [ %buffer.addr.0, %while.cond.preheader ], !dbg !595
  call void @llvm.dbg.value(metadata i8* %buffer.addr.1, metadata !585, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %len.addr.1, metadata !586, metadata !DIExpression()), !dbg !595
  %cmp38 = icmp ugt i64 %len.addr.1, 64, !dbg !634
  br i1 %cmp38, label %while.body, label %if.end50.loopexit, !dbg !633

while.body:                                       ; preds = %while.cond
  %call42 = tail call i8* @memcpy(i8* nonnull %6, i8* %buffer.addr.1, i64 64) #6, !dbg !635
  tail call void @sha1_process_block(i8* %call42, i64 64, %struct.sha1_ctx* %ctx) #7, !dbg !636
  %add.ptr43 = getelementptr inbounds i8, i8* %buffer.addr.1, i64 64, !dbg !637
  call void @llvm.dbg.value(metadata i8* %add.ptr43, metadata !585, metadata !DIExpression()), !dbg !595
  %sub44 = add i64 %len.addr.1, -64, !dbg !638
  call void @llvm.dbg.value(metadata i64 %sub44, metadata !586, metadata !DIExpression()), !dbg !595
  br label %while.cond, !dbg !633, !llvm.loop !639

if.else:                                          ; preds = %if.then34
  %and45 = and i64 %len.addr.0, -64, !dbg !641
  tail call void @sha1_process_block(i8* %buffer.addr.0, i64 %and45, %struct.sha1_ctx* %ctx) #7, !dbg !643
  %add.ptr47 = getelementptr inbounds i8, i8* %buffer.addr.0, i64 %and45, !dbg !644
  call void @llvm.dbg.value(metadata i8* %add.ptr47, metadata !585, metadata !DIExpression()), !dbg !595
  %and48 = and i64 %len.addr.0, 63, !dbg !645
  call void @llvm.dbg.value(metadata i64 %and48, metadata !586, metadata !DIExpression()), !dbg !595
  br label %if.end50

if.end50.loopexit:                                ; preds = %while.cond
  %len.addr.1.lcssa = phi i64 [ %len.addr.1, %while.cond ], !dbg !595
  %buffer.addr.1.lcssa = phi i8* [ %buffer.addr.1, %while.cond ], !dbg !595
  call void @llvm.dbg.value(metadata i64 %len.addr.1.lcssa, metadata !586, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i8* %buffer.addr.1.lcssa, metadata !585, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %len.addr.1.lcssa, metadata !586, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i8* %buffer.addr.1.lcssa, metadata !585, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %len.addr.1.lcssa, metadata !586, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i8* %buffer.addr.1.lcssa, metadata !585, metadata !DIExpression()), !dbg !595
  br label %if.end50, !dbg !646

if.end50:                                         ; preds = %if.end50.loopexit, %if.else, %if.end31
  %len.addr.3 = phi i64 [ %len.addr.0, %if.end31 ], [ %and48, %if.else ], [ %len.addr.1.lcssa, %if.end50.loopexit ], !dbg !622
  %buffer.addr.3 = phi i8* [ %buffer.addr.0, %if.end31 ], [ %add.ptr47, %if.else ], [ %buffer.addr.1.lcssa, %if.end50.loopexit ], !dbg !647
  call void @llvm.dbg.value(metadata i8* %buffer.addr.3, metadata !585, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %len.addr.3, metadata !586, metadata !DIExpression()), !dbg !595
  %cmp51 = icmp eq i64 %len.addr.3, 0, !dbg !646
  br i1 %cmp51, label %if.end76, label %if.then53, !dbg !648

if.then53:                                        ; preds = %if.end50
  %7 = load i32, i32* %buflen, align 4, !dbg !649
  %conv56 = zext i32 %7 to i64, !dbg !650
  call void @llvm.dbg.value(metadata i64 %conv56, metadata !592, metadata !DIExpression()), !dbg !651
  %arraydecay58 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 7, i64 0, !dbg !652
  %8 = bitcast i32* %arraydecay58 to i8*, !dbg !652
  %arrayidx59 = getelementptr inbounds i8, i8* %8, i64 %conv56, !dbg !652
  %call60 = tail call i8* @memcpy(i8* nonnull %arrayidx59, i8* %buffer.addr.3, i64 %len.addr.3) #6, !dbg !653
  %add61 = add i64 %len.addr.3, %conv56, !dbg !654
  call void @llvm.dbg.value(metadata i64 %add61, metadata !592, metadata !DIExpression()), !dbg !651
  %cmp62 = icmp ugt i64 %add61, 63, !dbg !655
  br i1 %cmp62, label %if.then64, label %if.end73, !dbg !657

if.then64:                                        ; preds = %if.then53
  tail call void @sha1_process_block(i8* nonnull %8, i64 64, %struct.sha1_ctx* %ctx) #7, !dbg !658
  %sub67 = add i64 %add61, -64, !dbg !660
  call void @llvm.dbg.value(metadata i64 %sub67, metadata !592, metadata !DIExpression()), !dbg !651
  %arrayidx71 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %ctx, i64 0, i32 7, i64 16, !dbg !661
  %9 = bitcast i32* %arrayidx71 to i8*, !dbg !662
  %call72 = tail call i8* @memcpy(i8* nonnull %8, i8* nonnull %9, i64 %sub67) #6, !dbg !663
  br label %if.end73, !dbg !664

if.end73:                                         ; preds = %if.then64, %if.then53
  %left_over54.0 = phi i64 [ %sub67, %if.then64 ], [ %add61, %if.then53 ], !dbg !651
  call void @llvm.dbg.value(metadata i64 %left_over54.0, metadata !592, metadata !DIExpression()), !dbg !651
  %conv74 = trunc i64 %left_over54.0 to i32, !dbg !665
  store i32 %conv74, i32* %buflen, align 4, !dbg !666
  br label %if.end76, !dbg !667

if.end76:                                         ; preds = %if.end50, %if.end73
  ret void, !dbg !668
}

; Function Attrs: nounwind uwtable
define dso_local i8* @sha1_buffer(i8* %buffer, i64 %len, i8* %resblock) local_unnamed_addr #4 !dbg !669 {
entry:
  %ctx = alloca %struct.sha1_ctx, align 4
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !673, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i64 %len, metadata !674, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i8* %resblock, metadata !675, metadata !DIExpression()), !dbg !677
  %0 = bitcast %struct.sha1_ctx* %ctx to i8*, !dbg !678
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %0) #8, !dbg !678
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !676, metadata !DIExpression(DW_OP_deref)), !dbg !677
  call void @sha1_init_ctx(%struct.sha1_ctx* nonnull %ctx) #7, !dbg !679
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !676, metadata !DIExpression(DW_OP_deref)), !dbg !677
  call void @sha1_process_bytes(i8* %buffer, i64 %len, %struct.sha1_ctx* nonnull %ctx) #7, !dbg !680
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %ctx, metadata !676, metadata !DIExpression(DW_OP_deref)), !dbg !677
  %call = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %ctx, i8* %resblock) #7, !dbg !681
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %0) #8, !dbg !682
  ret i8* %call, !dbg !683
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fillbuf", scope: !2, file: !3, line: 51, type: !22, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !21, nameTableKind: None)
!3 = !DIFile(filename: "sha1.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !12, !14, !16, !19, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha1_uint32", file: !10, line: 55, baseType: !11)
!10 = !DIFile(filename: "./include/sha1.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 46, baseType: !18)
!17 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!21 = !{!0}
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !24)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!24 = !{!25}
!25 = !DISubrange(count: 64)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!30 = distinct !DISubprogram(name: "vprintf", scope: !31, file: !31, line: 39, type: !32, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !35, !36}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !38)
!38 = !{!39, !40, !41, !43}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !37, file: !3, baseType: !11, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !37, file: !3, baseType: !11, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !37, file: !3, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !37, file: !3, baseType: !42, size: 64, offset: 128)
!44 = !{!45, !46}
!45 = !DILocalVariable(name: "__fmt", arg: 1, scope: !30, file: !31, line: 39, type: !35)
!46 = !DILocalVariable(name: "__arg", arg: 2, scope: !30, file: !31, line: 39, type: !36)
!47 = !DILocation(line: 0, scope: !30)
!48 = !DILocation(line: 41, column: 20, scope: !30)
!49 = !DILocation(line: 41, column: 10, scope: !30)
!50 = !DILocation(line: 41, column: 3, scope: !30)
!51 = distinct !DISubprogram(name: "getchar", scope: !31, file: !31, line: 47, type: !52, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!52 = !DISubroutineType(types: !53)
!53 = !{!34}
!54 = !DILocation(line: 49, column: 16, scope: !51)
!55 = !DILocation(line: 49, column: 10, scope: !51)
!56 = !DILocation(line: 49, column: 3, scope: !51)
!57 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !31, file: !31, line: 56, type: !58, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!58 = !DISubroutineType(types: !59)
!59 = !{!34, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !81, !83, !84, !85, !89, !91, !93, !97, !100, !102, !105, !108, !109, !110, !111, !112}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !63, file: !64, line: 51, baseType: !34, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !63, file: !64, line: 54, baseType: !12, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !63, file: !64, line: 55, baseType: !12, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !63, file: !64, line: 56, baseType: !12, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !63, file: !64, line: 57, baseType: !12, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !63, file: !64, line: 58, baseType: !12, size: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !63, file: !64, line: 59, baseType: !12, size: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !63, file: !64, line: 60, baseType: !12, size: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !63, file: !64, line: 61, baseType: !12, size: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !63, file: !64, line: 64, baseType: !12, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !63, file: !64, line: 65, baseType: !12, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !63, file: !64, line: 66, baseType: !12, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !63, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !64, line: 36, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !63, file: !64, line: 70, baseType: !82, size: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !63, file: !64, line: 72, baseType: !34, size: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !63, file: !64, line: 73, baseType: !34, size: 32, offset: 928)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !63, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !87, line: 152, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!88 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !63, file: !64, line: 77, baseType: !90, size: 16, offset: 1024)
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !63, file: !64, line: 78, baseType: !92, size: 8, offset: 1040)
!92 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !63, file: !64, line: 79, baseType: !94, size: 8, offset: 1048)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !63, file: !64, line: 81, baseType: !98, size: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !64, line: 43, baseType: null)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !63, file: !64, line: 89, baseType: !101, size: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !87, line: 153, baseType: !88)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !63, file: !64, line: 91, baseType: !103, size: 64, offset: 1216)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !64, line: 37, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !63, file: !64, line: 92, baseType: !106, size: 64, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !64, line: 38, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !63, file: !64, line: 93, baseType: !82, size: 64, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !63, file: !64, line: 94, baseType: !42, size: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !63, file: !64, line: 95, baseType: !16, size: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !63, file: !64, line: 96, baseType: !34, size: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !63, file: !64, line: 98, baseType: !113, size: 160, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !{!117}
!117 = !DILocalVariable(name: "__fp", arg: 1, scope: !57, file: !31, line: 56, type: !60)
!118 = !DILocation(line: 0, scope: !57)
!119 = !DILocation(line: 58, column: 10, scope: !57)
!120 = !DILocation(line: 58, column: 3, scope: !57)
!121 = distinct !DISubprogram(name: "getc_unlocked", scope: !31, file: !31, line: 66, type: !58, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!122 = !{!123}
!123 = !DILocalVariable(name: "__fp", arg: 1, scope: !121, file: !31, line: 66, type: !60)
!124 = !DILocation(line: 0, scope: !121)
!125 = !DILocation(line: 68, column: 10, scope: !121)
!126 = !DILocation(line: 68, column: 3, scope: !121)
!127 = distinct !DISubprogram(name: "getchar_unlocked", scope: !31, file: !31, line: 73, type: !52, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!128 = !DILocation(line: 75, column: 10, scope: !127)
!129 = !DILocation(line: 75, column: 3, scope: !127)
!130 = distinct !DISubprogram(name: "putchar", scope: !31, file: !31, line: 82, type: !131, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!34, !34}
!133 = !{!134}
!134 = !DILocalVariable(name: "__c", arg: 1, scope: !130, file: !31, line: 82, type: !34)
!135 = !DILocation(line: 0, scope: !130)
!136 = !DILocation(line: 84, column: 21, scope: !130)
!137 = !DILocation(line: 84, column: 10, scope: !130)
!138 = !DILocation(line: 84, column: 3, scope: !130)
!139 = distinct !DISubprogram(name: "fputc_unlocked", scope: !31, file: !31, line: 91, type: !140, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{!34, !34, !60}
!142 = !{!143, !144}
!143 = !DILocalVariable(name: "__c", arg: 1, scope: !139, file: !31, line: 91, type: !34)
!144 = !DILocalVariable(name: "__stream", arg: 2, scope: !139, file: !31, line: 91, type: !60)
!145 = !DILocation(line: 0, scope: !139)
!146 = !DILocation(line: 93, column: 10, scope: !139)
!147 = !DILocation(line: 93, column: 3, scope: !139)
!148 = distinct !DISubprogram(name: "putc_unlocked", scope: !31, file: !31, line: 101, type: !140, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !149)
!149 = !{!150, !151}
!150 = !DILocalVariable(name: "__c", arg: 1, scope: !148, file: !31, line: 101, type: !34)
!151 = !DILocalVariable(name: "__stream", arg: 2, scope: !148, file: !31, line: 101, type: !60)
!152 = !DILocation(line: 0, scope: !148)
!153 = !DILocation(line: 103, column: 10, scope: !148)
!154 = !DILocation(line: 103, column: 3, scope: !148)
!155 = distinct !DISubprogram(name: "putchar_unlocked", scope: !31, file: !31, line: 108, type: !131, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !156)
!156 = !{!157}
!157 = !DILocalVariable(name: "__c", arg: 1, scope: !155, file: !31, line: 108, type: !34)
!158 = !DILocation(line: 0, scope: !155)
!159 = !DILocation(line: 110, column: 10, scope: !155)
!160 = !DILocation(line: 110, column: 3, scope: !155)
!161 = distinct !DISubprogram(name: "getline", scope: !31, file: !31, line: 118, type: !162, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !167)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !165, !166, !60}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !87, line: 193, baseType: !88)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!167 = !{!168, !169, !170}
!168 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !161, file: !31, line: 118, type: !165)
!169 = !DILocalVariable(name: "__n", arg: 2, scope: !161, file: !31, line: 118, type: !166)
!170 = !DILocalVariable(name: "__stream", arg: 3, scope: !161, file: !31, line: 118, type: !60)
!171 = !DILocation(line: 0, scope: !161)
!172 = !DILocation(line: 120, column: 10, scope: !161)
!173 = !DILocation(line: 120, column: 3, scope: !161)
!174 = distinct !DISubprogram(name: "feof_unlocked", scope: !31, file: !31, line: 128, type: !58, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !175)
!175 = !{!176}
!176 = !DILocalVariable(name: "__stream", arg: 1, scope: !174, file: !31, line: 128, type: !60)
!177 = !DILocation(line: 0, scope: !174)
!178 = !DILocation(line: 130, column: 10, scope: !174)
!179 = !DILocation(line: 130, column: 3, scope: !174)
!180 = distinct !DISubprogram(name: "ferror_unlocked", scope: !31, file: !31, line: 135, type: !58, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!181 = !{!182}
!182 = !DILocalVariable(name: "__stream", arg: 1, scope: !180, file: !31, line: 135, type: !60)
!183 = !DILocation(line: 0, scope: !180)
!184 = !DILocation(line: 137, column: 10, scope: !180)
!185 = !DILocation(line: 137, column: 3, scope: !180)
!186 = distinct !DISubprogram(name: "sha1_init_ctx", scope: !3, file: !3, line: 58, type: !187, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !206)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sha1_ctx", file: !10, line: 76, size: 1280, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !201, !202}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !190, file: !10, line: 78, baseType: !9, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !190, file: !10, line: 79, baseType: !9, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !190, file: !10, line: 80, baseType: !9, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !190, file: !10, line: 81, baseType: !9, size: 32, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !190, file: !10, line: 82, baseType: !9, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !190, file: !10, line: 84, baseType: !198, size: 64, offset: 160)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 2)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !190, file: !10, line: 85, baseType: !9, size: 32, offset: 224)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !190, file: !10, line: 86, baseType: !203, size: 1024, offset: 256)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 32)
!206 = !{!207}
!207 = !DILocalVariable(name: "ctx", arg: 1, scope: !186, file: !3, line: 58, type: !189)
!208 = !DILocation(line: 0, scope: !186)
!209 = !DILocation(line: 60, column: 8, scope: !186)
!210 = !DILocation(line: 60, column: 10, scope: !186)
!211 = !DILocation(line: 61, column: 8, scope: !186)
!212 = !DILocation(line: 61, column: 10, scope: !186)
!213 = !DILocation(line: 62, column: 8, scope: !186)
!214 = !DILocation(line: 62, column: 10, scope: !186)
!215 = !DILocation(line: 63, column: 8, scope: !186)
!216 = !DILocation(line: 63, column: 10, scope: !186)
!217 = !DILocation(line: 64, column: 8, scope: !186)
!218 = !DILocation(line: 64, column: 10, scope: !186)
!219 = !DILocation(line: 66, column: 19, scope: !186)
!220 = !DILocation(line: 66, column: 33, scope: !186)
!221 = !DILocation(line: 66, column: 3, scope: !186)
!222 = !DILocation(line: 66, column: 17, scope: !186)
!223 = !DILocation(line: 67, column: 8, scope: !186)
!224 = !DILocation(line: 67, column: 15, scope: !186)
!225 = !DILocation(line: 68, column: 1, scope: !186)
!226 = distinct !DISubprogram(name: "sha1_read_ctx", scope: !3, file: !3, line: 76, type: !227, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !231)
!227 = !DISubroutineType(types: !228)
!228 = !{!42, !229, !42}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!231 = !{!232, !233}
!232 = !DILocalVariable(name: "ctx", arg: 1, scope: !226, file: !3, line: 76, type: !229)
!233 = !DILocalVariable(name: "resbuf", arg: 2, scope: !226, file: !3, line: 76, type: !42)
!234 = !DILocation(line: 0, scope: !226)
!235 = !DILocation(line: 78, column: 33, scope: !226)
!236 = !DILocation(line: 78, column: 4, scope: !226)
!237 = !DILocation(line: 78, column: 31, scope: !226)
!238 = !DILocation(line: 79, column: 33, scope: !226)
!239 = !DILocation(line: 79, column: 3, scope: !226)
!240 = !DILocation(line: 79, column: 31, scope: !226)
!241 = !DILocation(line: 80, column: 33, scope: !226)
!242 = !DILocation(line: 80, column: 3, scope: !226)
!243 = !DILocation(line: 80, column: 31, scope: !226)
!244 = !DILocation(line: 81, column: 33, scope: !226)
!245 = !DILocation(line: 81, column: 3, scope: !226)
!246 = !DILocation(line: 81, column: 31, scope: !226)
!247 = !DILocation(line: 82, column: 33, scope: !226)
!248 = !DILocation(line: 82, column: 3, scope: !226)
!249 = !DILocation(line: 82, column: 31, scope: !226)
!250 = !DILocation(line: 84, column: 3, scope: !226)
!251 = distinct !DISubprogram(name: "sha1_finish_ctx", scope: !3, file: !3, line: 93, type: !252, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!42, !189, !42}
!254 = !{!255, !256, !257, !258}
!255 = !DILocalVariable(name: "ctx", arg: 1, scope: !251, file: !3, line: 93, type: !189)
!256 = !DILocalVariable(name: "resbuf", arg: 2, scope: !251, file: !3, line: 93, type: !42)
!257 = !DILocalVariable(name: "bytes", scope: !251, file: !3, line: 96, type: !9)
!258 = !DILocalVariable(name: "size", scope: !251, file: !3, line: 97, type: !16)
!259 = !DILocation(line: 0, scope: !251)
!260 = !DILocation(line: 96, column: 28, scope: !251)
!261 = !DILocation(line: 97, column: 24, scope: !251)
!262 = !DILocation(line: 97, column: 17, scope: !251)
!263 = !DILocation(line: 100, column: 3, scope: !251)
!264 = !DILocation(line: 100, column: 17, scope: !251)
!265 = !DILocation(line: 101, column: 21, scope: !266)
!266 = distinct !DILexicalBlock(scope: !251, file: !3, line: 101, column: 7)
!267 = !DILocation(line: 101, column: 7, scope: !251)
!268 = !DILocation(line: 105, column: 27, scope: !251)
!269 = !DILocation(line: 102, column: 7, scope: !266)
!270 = !DILocation(line: 102, column: 5, scope: !266)
!271 = !DILocation(line: 105, column: 20, scope: !251)
!272 = !DILocation(line: 105, column: 3, scope: !251)
!273 = !DILocation(line: 105, column: 25, scope: !251)
!274 = !DILocation(line: 106, column: 27, scope: !251)
!275 = !DILocation(line: 106, column: 20, scope: !251)
!276 = !DILocation(line: 106, column: 3, scope: !251)
!277 = !DILocation(line: 106, column: 25, scope: !251)
!278 = !DILocation(line: 108, column: 12, scope: !251)
!279 = !DILocation(line: 108, column: 63, scope: !251)
!280 = !DILocation(line: 108, column: 67, scope: !251)
!281 = !DILocation(line: 108, column: 3, scope: !251)
!282 = !DILocation(line: 111, column: 3, scope: !251)
!283 = !DILocation(line: 113, column: 10, scope: !251)
!284 = !DILocation(line: 113, column: 3, scope: !251)
!285 = distinct !DISubprogram(name: "sha1_process_block", scope: !3, file: !3, line: 287, type: !286, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288, !16, !189}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !301, !302, !303, !304, !305, !306, !308}
!291 = !DILocalVariable(name: "buffer", arg: 1, scope: !285, file: !3, line: 287, type: !288)
!292 = !DILocalVariable(name: "len", arg: 2, scope: !285, file: !3, line: 287, type: !16)
!293 = !DILocalVariable(name: "ctx", arg: 3, scope: !285, file: !3, line: 287, type: !189)
!294 = !DILocalVariable(name: "words", scope: !285, file: !3, line: 289, type: !19)
!295 = !DILocalVariable(name: "nwords", scope: !285, file: !3, line: 290, type: !16)
!296 = !DILocalVariable(name: "endp", scope: !285, file: !3, line: 291, type: !19)
!297 = !DILocalVariable(name: "x", scope: !285, file: !3, line: 292, type: !298)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 512, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 16)
!301 = !DILocalVariable(name: "a", scope: !285, file: !3, line: 293, type: !9)
!302 = !DILocalVariable(name: "b", scope: !285, file: !3, line: 294, type: !9)
!303 = !DILocalVariable(name: "c", scope: !285, file: !3, line: 295, type: !9)
!304 = !DILocalVariable(name: "d", scope: !285, file: !3, line: 296, type: !9)
!305 = !DILocalVariable(name: "e", scope: !285, file: !3, line: 297, type: !9)
!306 = !DILocalVariable(name: "tm", scope: !307, file: !3, line: 321, type: !9)
!307 = distinct !DILexicalBlock(scope: !285, file: !3, line: 320, column: 5)
!308 = !DILocalVariable(name: "t", scope: !307, file: !3, line: 322, type: !34)
!309 = !DILocation(line: 0, scope: !285)
!310 = !DILocation(line: 289, column: 30, scope: !285)
!311 = !DILocation(line: 290, column: 23, scope: !285)
!312 = !DILocation(line: 291, column: 35, scope: !285)
!313 = !DILocation(line: 292, column: 3, scope: !285)
!314 = !DILocation(line: 292, column: 15, scope: !285)
!315 = !DILocation(line: 293, column: 24, scope: !285)
!316 = !DILocation(line: 294, column: 24, scope: !285)
!317 = !DILocation(line: 295, column: 24, scope: !285)
!318 = !DILocation(line: 296, column: 24, scope: !285)
!319 = !DILocation(line: 297, column: 24, scope: !285)
!320 = !DILocation(line: 302, column: 3, scope: !285)
!321 = !DILocation(line: 302, column: 17, scope: !285)
!322 = !DILocation(line: 303, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !285, file: !3, line: 303, column: 7)
!324 = !DILocation(line: 303, column: 21, scope: !323)
!325 = !DILocation(line: 303, column: 7, scope: !285)
!326 = !DILocation(line: 304, column: 7, scope: !323)
!327 = !DILocation(line: 304, column: 5, scope: !323)
!328 = !DILocation(line: 0, scope: !329)
!329 = distinct !DILexicalBlock(scope: !307, file: !3, line: 329, column: 7)
!330 = !DILocation(line: 0, scope: !331)
!331 = distinct !DILexicalBlock(scope: !307, file: !3, line: 330, column: 7)
!332 = !DILocation(line: 0, scope: !333)
!333 = distinct !DILexicalBlock(scope: !307, file: !3, line: 331, column: 7)
!334 = !DILocation(line: 0, scope: !335)
!335 = distinct !DILexicalBlock(scope: !307, file: !3, line: 332, column: 7)
!336 = !DILocation(line: 0, scope: !337)
!337 = distinct !DILexicalBlock(scope: !307, file: !3, line: 333, column: 7)
!338 = !DILocation(line: 0, scope: !339)
!339 = distinct !DILexicalBlock(scope: !307, file: !3, line: 334, column: 7)
!340 = !DILocation(line: 0, scope: !341)
!341 = distinct !DILexicalBlock(scope: !307, file: !3, line: 335, column: 7)
!342 = !DILocation(line: 0, scope: !343)
!343 = distinct !DILexicalBlock(scope: !307, file: !3, line: 336, column: 7)
!344 = !DILocation(line: 0, scope: !345)
!345 = distinct !DILexicalBlock(scope: !307, file: !3, line: 337, column: 7)
!346 = !DILocation(line: 0, scope: !347)
!347 = distinct !DILexicalBlock(scope: !307, file: !3, line: 338, column: 7)
!348 = !DILocation(line: 0, scope: !349)
!349 = distinct !DILexicalBlock(scope: !307, file: !3, line: 339, column: 7)
!350 = !DILocation(line: 0, scope: !351)
!351 = distinct !DILexicalBlock(scope: !307, file: !3, line: 340, column: 7)
!352 = !DILocation(line: 0, scope: !353)
!353 = distinct !DILexicalBlock(scope: !307, file: !3, line: 341, column: 7)
!354 = !DILocation(line: 0, scope: !355)
!355 = distinct !DILexicalBlock(scope: !307, file: !3, line: 342, column: 7)
!356 = !DILocation(line: 0, scope: !357)
!357 = distinct !DILexicalBlock(scope: !307, file: !3, line: 343, column: 7)
!358 = !DILocation(line: 0, scope: !359)
!359 = distinct !DILexicalBlock(scope: !307, file: !3, line: 344, column: 7)
!360 = !DILocation(line: 319, column: 3, scope: !285)
!361 = !DILocation(line: 289, column: 22, scope: !285)
!362 = !DILocation(line: 319, column: 16, scope: !285)
!363 = !DILocation(line: 323, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !307, file: !3, line: 323, column: 7)
!365 = !DILocation(line: 0, scope: !307)
!366 = !DILocation(line: 323, column: 21, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !3, line: 323, column: 7)
!368 = !DILocation(line: 325, column: 11, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !3, line: 324, column: 2)
!370 = !DILocation(line: 325, column: 4, scope: !369)
!371 = !DILocation(line: 325, column: 9, scope: !369)
!372 = !DILocation(line: 326, column: 9, scope: !369)
!373 = !DILocation(line: 323, column: 28, scope: !367)
!374 = !DILocation(line: 323, column: 7, scope: !367)
!375 = distinct !{!375, !363, !376}
!376 = !DILocation(line: 327, column: 2, scope: !364)
!377 = !DILocation(line: 329, column: 7, scope: !329)
!378 = !DILocation(line: 330, column: 7, scope: !331)
!379 = !DILocation(line: 331, column: 7, scope: !333)
!380 = !DILocation(line: 332, column: 7, scope: !335)
!381 = !DILocation(line: 333, column: 7, scope: !337)
!382 = !DILocation(line: 334, column: 7, scope: !339)
!383 = !DILocation(line: 335, column: 7, scope: !341)
!384 = !DILocation(line: 336, column: 7, scope: !343)
!385 = !DILocation(line: 337, column: 7, scope: !345)
!386 = !DILocation(line: 338, column: 7, scope: !347)
!387 = !DILocation(line: 339, column: 7, scope: !349)
!388 = !DILocation(line: 340, column: 7, scope: !351)
!389 = !DILocation(line: 341, column: 7, scope: !353)
!390 = !DILocation(line: 342, column: 7, scope: !355)
!391 = !DILocation(line: 343, column: 7, scope: !357)
!392 = !DILocation(line: 344, column: 7, scope: !359)
!393 = !DILocation(line: 345, column: 7, scope: !394)
!394 = distinct !DILexicalBlock(scope: !307, file: !3, line: 345, column: 7)
!395 = !DILocation(line: 346, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !307, file: !3, line: 346, column: 7)
!397 = !DILocation(line: 347, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !307, file: !3, line: 347, column: 7)
!399 = !DILocation(line: 348, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !307, file: !3, line: 348, column: 7)
!401 = !DILocation(line: 349, column: 7, scope: !402)
!402 = distinct !DILexicalBlock(scope: !307, file: !3, line: 349, column: 7)
!403 = !DILocation(line: 350, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !307, file: !3, line: 350, column: 7)
!405 = !DILocation(line: 351, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !307, file: !3, line: 351, column: 7)
!407 = !DILocation(line: 352, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !307, file: !3, line: 352, column: 7)
!409 = !DILocation(line: 353, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !307, file: !3, line: 353, column: 7)
!411 = !DILocation(line: 354, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !307, file: !3, line: 354, column: 7)
!413 = !DILocation(line: 355, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !307, file: !3, line: 355, column: 7)
!415 = !DILocation(line: 356, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !307, file: !3, line: 356, column: 7)
!417 = !DILocation(line: 357, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !307, file: !3, line: 357, column: 7)
!419 = !DILocation(line: 358, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !307, file: !3, line: 358, column: 7)
!421 = !DILocation(line: 359, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !307, file: !3, line: 359, column: 7)
!423 = !DILocation(line: 360, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !307, file: !3, line: 360, column: 7)
!425 = !DILocation(line: 361, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !307, file: !3, line: 361, column: 7)
!427 = !DILocation(line: 362, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !307, file: !3, line: 362, column: 7)
!429 = !DILocation(line: 363, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !307, file: !3, line: 363, column: 7)
!431 = !DILocation(line: 364, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !307, file: !3, line: 364, column: 7)
!433 = !DILocation(line: 365, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !307, file: !3, line: 365, column: 7)
!435 = !DILocation(line: 366, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !307, file: !3, line: 366, column: 7)
!437 = !DILocation(line: 367, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !307, file: !3, line: 367, column: 7)
!439 = !DILocation(line: 368, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !307, file: !3, line: 368, column: 7)
!441 = !DILocation(line: 369, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !307, file: !3, line: 369, column: 7)
!443 = !DILocation(line: 370, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !307, file: !3, line: 370, column: 7)
!445 = !DILocation(line: 371, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !307, file: !3, line: 371, column: 7)
!447 = !DILocation(line: 372, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !307, file: !3, line: 372, column: 7)
!449 = !DILocation(line: 373, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !307, file: !3, line: 373, column: 7)
!451 = !DILocation(line: 374, column: 7, scope: !452)
!452 = distinct !DILexicalBlock(scope: !307, file: !3, line: 374, column: 7)
!453 = !DILocation(line: 375, column: 7, scope: !454)
!454 = distinct !DILexicalBlock(scope: !307, file: !3, line: 375, column: 7)
!455 = !DILocation(line: 376, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !307, file: !3, line: 376, column: 7)
!457 = !DILocation(line: 377, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !307, file: !3, line: 377, column: 7)
!459 = !DILocation(line: 378, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !307, file: !3, line: 378, column: 7)
!461 = !DILocation(line: 379, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !307, file: !3, line: 379, column: 7)
!463 = !DILocation(line: 380, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !307, file: !3, line: 380, column: 7)
!465 = !DILocation(line: 381, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !307, file: !3, line: 381, column: 7)
!467 = !DILocation(line: 382, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !307, file: !3, line: 382, column: 7)
!469 = !DILocation(line: 383, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !307, file: !3, line: 383, column: 7)
!471 = !DILocation(line: 384, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !307, file: !3, line: 384, column: 7)
!473 = !DILocation(line: 385, column: 7, scope: !474)
!474 = distinct !DILexicalBlock(scope: !307, file: !3, line: 385, column: 7)
!475 = !DILocation(line: 386, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !307, file: !3, line: 386, column: 7)
!477 = !DILocation(line: 387, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !307, file: !3, line: 387, column: 7)
!479 = !DILocation(line: 388, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !307, file: !3, line: 388, column: 7)
!481 = !DILocation(line: 389, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !307, file: !3, line: 389, column: 7)
!483 = !DILocation(line: 390, column: 7, scope: !484)
!484 = distinct !DILexicalBlock(scope: !307, file: !3, line: 390, column: 7)
!485 = !DILocation(line: 391, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !307, file: !3, line: 391, column: 7)
!487 = !DILocation(line: 392, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !307, file: !3, line: 392, column: 7)
!489 = !DILocation(line: 393, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !307, file: !3, line: 393, column: 7)
!491 = !DILocation(line: 394, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !307, file: !3, line: 394, column: 7)
!493 = !DILocation(line: 395, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !307, file: !3, line: 395, column: 7)
!495 = !DILocation(line: 396, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !307, file: !3, line: 396, column: 7)
!497 = !DILocation(line: 397, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !307, file: !3, line: 397, column: 7)
!499 = !DILocation(line: 398, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !307, file: !3, line: 398, column: 7)
!501 = !DILocation(line: 399, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !307, file: !3, line: 399, column: 7)
!503 = !DILocation(line: 400, column: 7, scope: !504)
!504 = distinct !DILexicalBlock(scope: !307, file: !3, line: 400, column: 7)
!505 = !DILocation(line: 401, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !307, file: !3, line: 401, column: 7)
!507 = !DILocation(line: 402, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !307, file: !3, line: 402, column: 7)
!509 = !DILocation(line: 403, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !307, file: !3, line: 403, column: 7)
!511 = !DILocation(line: 404, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !307, file: !3, line: 404, column: 7)
!513 = !DILocation(line: 405, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !307, file: !3, line: 405, column: 7)
!515 = !DILocation(line: 406, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !307, file: !3, line: 406, column: 7)
!517 = !DILocation(line: 407, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !307, file: !3, line: 407, column: 7)
!519 = !DILocation(line: 408, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !307, file: !3, line: 408, column: 7)
!521 = !DILocation(line: 410, column: 18, scope: !307)
!522 = !DILocation(line: 411, column: 18, scope: !307)
!523 = !DILocation(line: 412, column: 18, scope: !307)
!524 = !DILocation(line: 413, column: 18, scope: !307)
!525 = !DILocation(line: 414, column: 18, scope: !307)
!526 = distinct !{!526, !360, !527}
!527 = !DILocation(line: 415, column: 5, scope: !285)
!528 = !DILocation(line: 416, column: 1, scope: !285)
!529 = distinct !DISubprogram(name: "sha1_stream", scope: !3, file: !3, line: 120, type: !530, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{!34, !60, !42}
!532 = !{!533, !534, !535, !536, !540, !541, !543}
!533 = !DILocalVariable(name: "stream", arg: 1, scope: !529, file: !3, line: 120, type: !60)
!534 = !DILocalVariable(name: "resblock", arg: 2, scope: !529, file: !3, line: 120, type: !42)
!535 = !DILocalVariable(name: "ctx", scope: !529, file: !3, line: 122, type: !190)
!536 = !DILocalVariable(name: "buffer", scope: !529, file: !3, line: 123, type: !537)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 33344, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 4168)
!540 = !DILocalVariable(name: "sum", scope: !529, file: !3, line: 124, type: !16)
!541 = !DILocalVariable(name: "n", scope: !542, file: !3, line: 135, type: !16)
!542 = distinct !DILexicalBlock(scope: !529, file: !3, line: 131, column: 5)
!543 = !DILabel(scope: !529, name: "process_partial_block", file: !3, line: 171)
!544 = !DILocation(line: 0, scope: !529)
!545 = !DILocation(line: 122, column: 3, scope: !529)
!546 = !DILocation(line: 123, column: 3, scope: !529)
!547 = !DILocation(line: 123, column: 8, scope: !529)
!548 = !DILocation(line: 127, column: 3, scope: !529)
!549 = !DILocation(line: 130, column: 3, scope: !529)
!550 = !DILocation(line: 139, column: 7, scope: !542)
!551 = !DILocation(line: 0, scope: !542)
!552 = !DILocation(line: 141, column: 22, scope: !553)
!553 = distinct !DILexicalBlock(scope: !542, file: !3, line: 140, column: 2)
!554 = !DILocation(line: 141, column: 42, scope: !553)
!555 = !DILocation(line: 141, column: 8, scope: !553)
!556 = !DILocation(line: 143, column: 8, scope: !553)
!557 = !DILocation(line: 145, column: 12, scope: !558)
!558 = distinct !DILexicalBlock(scope: !553, file: !3, line: 145, column: 8)
!559 = !DILocation(line: 145, column: 8, scope: !553)
!560 = !DILocation(line: 148, column: 10, scope: !561)
!561 = distinct !DILexicalBlock(scope: !553, file: !3, line: 148, column: 8)
!562 = !DILocation(line: 148, column: 8, scope: !553)
!563 = !DILocation(line: 153, column: 12, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 153, column: 12)
!565 = distinct !DILexicalBlock(scope: !561, file: !3, line: 149, column: 6)
!566 = !DILocation(line: 0, scope: !565)
!567 = !DILocation(line: 161, column: 8, scope: !568)
!568 = distinct !DILexicalBlock(scope: !553, file: !3, line: 161, column: 8)
!569 = !DILocation(line: 161, column: 8, scope: !553)
!570 = distinct !{!570, !550, !571}
!571 = !DILocation(line: 163, column: 2, scope: !542)
!572 = !DILocation(line: 168, column: 7, scope: !542)
!573 = !DILocation(line: 169, column: 5, scope: !529)
!574 = distinct !{!574, !549, !573}
!575 = !DILocation(line: 171, column: 2, scope: !529)
!576 = !DILocation(line: 174, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !529, file: !3, line: 174, column: 7)
!578 = !DILocation(line: 174, column: 7, scope: !529)
!579 = !DILocation(line: 175, column: 5, scope: !577)
!580 = !DILocation(line: 178, column: 3, scope: !529)
!581 = !DILocation(line: 179, column: 3, scope: !529)
!582 = !DILocation(line: 180, column: 1, scope: !529)
!583 = distinct !DISubprogram(name: "sha1_process_bytes", scope: !3, file: !3, line: 202, type: !286, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !584)
!584 = !{!585, !586, !587, !588, !591, !592}
!585 = !DILocalVariable(name: "buffer", arg: 1, scope: !583, file: !3, line: 202, type: !288)
!586 = !DILocalVariable(name: "len", arg: 2, scope: !583, file: !3, line: 202, type: !16)
!587 = !DILocalVariable(name: "ctx", arg: 3, scope: !583, file: !3, line: 202, type: !189)
!588 = !DILocalVariable(name: "left_over", scope: !589, file: !3, line: 208, type: !16)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 207, column: 5)
!590 = distinct !DILexicalBlock(scope: !583, file: !3, line: 206, column: 7)
!591 = !DILocalVariable(name: "add", scope: !589, file: !3, line: 209, type: !16)
!592 = !DILocalVariable(name: "left_over", scope: !593, file: !3, line: 254, type: !16)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 253, column: 5)
!594 = distinct !DILexicalBlock(scope: !583, file: !3, line: 252, column: 7)
!595 = !DILocation(line: 0, scope: !583)
!596 = !DILocation(line: 206, column: 12, scope: !590)
!597 = !DILocation(line: 206, column: 19, scope: !590)
!598 = !DILocation(line: 206, column: 7, scope: !583)
!599 = !DILocation(line: 208, column: 26, scope: !589)
!600 = !DILocation(line: 0, scope: !589)
!601 = !DILocation(line: 209, column: 24, scope: !589)
!602 = !DILocation(line: 209, column: 36, scope: !589)
!603 = !DILocation(line: 209, column: 20, scope: !589)
!604 = !DILocation(line: 211, column: 16, scope: !589)
!605 = !DILocation(line: 211, column: 7, scope: !589)
!606 = !DILocation(line: 212, column: 19, scope: !589)
!607 = !DILocation(line: 214, column: 23, scope: !608)
!608 = distinct !DILexicalBlock(scope: !589, file: !3, line: 214, column: 11)
!609 = !DILocation(line: 214, column: 11, scope: !589)
!610 = !DILocation(line: 216, column: 49, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !3, line: 215, column: 2)
!612 = !DILocation(line: 216, column: 37, scope: !611)
!613 = !DILocation(line: 216, column: 4, scope: !611)
!614 = !DILocation(line: 218, column: 16, scope: !611)
!615 = !DILocation(line: 221, column: 40, scope: !611)
!616 = !DILocation(line: 221, column: 47, scope: !611)
!617 = !DILocation(line: 221, column: 6, scope: !611)
!618 = !DILocation(line: 222, column: 5, scope: !611)
!619 = !DILocation(line: 220, column: 4, scope: !611)
!620 = !DILocation(line: 223, column: 2, scope: !611)
!621 = !DILocation(line: 225, column: 38, scope: !589)
!622 = !DILocation(line: 226, column: 11, scope: !589)
!623 = !DILocation(line: 227, column: 5, scope: !589)
!624 = !DILocation(line: 230, column: 11, scope: !625)
!625 = distinct !DILexicalBlock(scope: !583, file: !3, line: 230, column: 7)
!626 = !DILocation(line: 230, column: 7, scope: !583)
!627 = !DILocation(line: 235, column: 11, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 235, column: 11)
!629 = distinct !DILexicalBlock(scope: !625, file: !3, line: 231, column: 5)
!630 = !DILocation(line: 235, column: 11, scope: !629)
!631 = !DILocation(line: 0, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !3, line: 237, column: 4)
!633 = !DILocation(line: 236, column: 2, scope: !628)
!634 = !DILocation(line: 236, column: 13, scope: !628)
!635 = !DILocation(line: 238, column: 26, scope: !632)
!636 = !DILocation(line: 238, column: 6, scope: !632)
!637 = !DILocation(line: 239, column: 37, scope: !632)
!638 = !DILocation(line: 240, column: 10, scope: !632)
!639 = distinct !{!639, !633, !640}
!640 = !DILocation(line: 241, column: 4, scope: !628)
!641 = !DILocation(line: 245, column: 36, scope: !642)
!642 = distinct !DILexicalBlock(scope: !628, file: !3, line: 244, column: 2)
!643 = !DILocation(line: 245, column: 4, scope: !642)
!644 = !DILocation(line: 246, column: 35, scope: !642)
!645 = !DILocation(line: 247, column: 8, scope: !642)
!646 = !DILocation(line: 252, column: 11, scope: !594)
!647 = !DILocation(line: 225, column: 14, scope: !589)
!648 = !DILocation(line: 252, column: 7, scope: !583)
!649 = !DILocation(line: 254, column: 31, scope: !593)
!650 = !DILocation(line: 254, column: 26, scope: !593)
!651 = !DILocation(line: 0, scope: !593)
!652 = !DILocation(line: 256, column: 16, scope: !593)
!653 = !DILocation(line: 256, column: 7, scope: !593)
!654 = !DILocation(line: 257, column: 17, scope: !593)
!655 = !DILocation(line: 258, column: 21, scope: !656)
!656 = distinct !DILexicalBlock(scope: !593, file: !3, line: 258, column: 11)
!657 = !DILocation(line: 258, column: 11, scope: !593)
!658 = !DILocation(line: 260, column: 4, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !3, line: 259, column: 2)
!660 = !DILocation(line: 261, column: 14, scope: !659)
!661 = !DILocation(line: 262, column: 26, scope: !659)
!662 = !DILocation(line: 262, column: 25, scope: !659)
!663 = !DILocation(line: 262, column: 4, scope: !659)
!664 = !DILocation(line: 263, column: 2, scope: !659)
!665 = !DILocation(line: 264, column: 21, scope: !593)
!666 = !DILocation(line: 264, column: 19, scope: !593)
!667 = !DILocation(line: 265, column: 5, scope: !593)
!668 = !DILocation(line: 266, column: 1, scope: !583)
!669 = distinct !DISubprogram(name: "sha1_buffer", scope: !3, file: !3, line: 187, type: !670, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !672)
!670 = !DISubroutineType(types: !671)
!671 = !{!42, !14, !16, !42}
!672 = !{!673, !674, !675, !676}
!673 = !DILocalVariable(name: "buffer", arg: 1, scope: !669, file: !3, line: 187, type: !14)
!674 = !DILocalVariable(name: "len", arg: 2, scope: !669, file: !3, line: 187, type: !16)
!675 = !DILocalVariable(name: "resblock", arg: 3, scope: !669, file: !3, line: 187, type: !42)
!676 = !DILocalVariable(name: "ctx", scope: !669, file: !3, line: 189, type: !190)
!677 = !DILocation(line: 0, scope: !669)
!678 = !DILocation(line: 189, column: 3, scope: !669)
!679 = !DILocation(line: 192, column: 3, scope: !669)
!680 = !DILocation(line: 195, column: 3, scope: !669)
!681 = !DILocation(line: 198, column: 10, scope: !669)
!682 = !DILocation(line: 199, column: 1, scope: !669)
!683 = !DILocation(line: 198, column: 3, scope: !669)
